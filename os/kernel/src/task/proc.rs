use core::{cell::RefMut, borrow::BorrowMut, future::Ready, task::Context};

use alloc::task;
use riscv::register::mcause::Trap;
use xmas_elf::ElfFile;

use crate::{mm::{MemorySet, memory_set::{self, KERNEL_SPACE, MapPermission}, VirtAddr}, trap::{TrapFrame, trap_return, trap_handler}, config::{TRAPFRAME, TRAMPOLINE, KERNEL_STACK_SIZE}};

use super::{cpu::mycpu, task_list, PCB, ProcessState, __switch, ProcessContext, pidcc};

// pub fn myproc()->&'static mut PCB{
// 	&mut task_list.exclusive_access()[mycpu().proc_idx]
// }

pub unsafe fn fork()->usize{
	let tasks=task_list.exclusive_access();
	let pid=tasks.len();
	tasks.push(PCB::new());
	// let mut newproc=&mut tasks[pid];
	// let mut nowproc=&mut tasks[mycpu().proc_idx];
	let nowpid=mycpu().proc_idx;
	tasks[pid].memory_set=MemorySet::from_existed_user(&tasks[nowpid].memory_set);
	tasks[pid].trapframe_ppn=tasks[pid].memory_set.translate(VirtAddr::from(TRAPFRAME).into()).unwrap().ppn();
	*(tasks[pid].trapframe_ppn.get_mut() as *mut TrapFrame)=*(tasks[nowpid].trapframe_ppn.get_mut() as *mut TrapFrame);
	(*(tasks[pid].trapframe_ppn.get_mut() as *mut TrapFrame)).x[10]=0;
	(*(tasks[pid].trapframe_ppn.get_mut() as *mut TrapFrame)).kernel_sp=TRAMPOLINE-KERNEL_STACK_SIZE*pid;
	KERNEL_SPACE.exclusive_access().insert_framed_area(
		(TRAMPOLINE-KERNEL_STACK_SIZE*(pid+1)).into(),
		(TRAMPOLINE-KERNEL_STACK_SIZE*pid).into(), 
		MapPermission::R|MapPermission::W
	);

	tasks[pid].context=tasks[nowpid].context;
	tasks[pid].context.ra=trap_return as usize;
	tasks[pid].context.sp=TRAMPOLINE-KERNEL_STACK_SIZE*pid;
	tasks[pid].state=ProcessState::READY;
	tasks[pid].pid=pid;
	return pid;
}

pub unsafe fn exec_from_elf(elf_file:&ElfFile)->isize{
	let (user_pagetable,user_stack,entry)= MemorySet::from_elf(&elf_file);
	let nowpid=mycpu().proc_idx;
	let mut nowproc=&mut task_list.exclusive_access()[nowpid];
	nowproc.trapframe_ppn=user_pagetable.translate(VirtAddr::from(TRAPFRAME).into()).unwrap().ppn();
	println!("entry:{:#x}",entry);
	*(nowproc.trapframe_ppn.get_mut() as *mut TrapFrame)=TrapFrame::app_init_context(
		entry,
		user_stack-8, 
		KERNEL_SPACE.exclusive_access().token(),
		TRAMPOLINE-KERNEL_STACK_SIZE*nowpid, 
		trap_handler as usize
	);
	nowproc.memory_set=user_pagetable;
	0
}

pub unsafe fn kill(){
	task_list.exclusive_access()[mycpu().proc_idx].state=ProcessState::ZOMBIE;
	sched();
}

pub unsafe fn sched(){
	let p=&mut task_list.exclusive_access()[mycpu().proc_idx];
	__switch(&mut p.context as *mut ProcessContext, &mut mycpu().context as *mut ProcessContext);
}

pub unsafe fn schedule(){
	let tasks=task_list.exclusive_access();
	let mut cpu=mycpu();
	loop{
		let mut idx=0;
		loop{
			let mut pcb=&mut tasks[idx] ;
			if(pcb.state == ProcessState::READY){
				pcb.state=ProcessState::RUNNING;
				cpu.proc_idx=idx;
				// println!("entering {}.",idx);
				__switch(
					&mut cpu.context as *mut ProcessContext,
					&mut pcb.context as *mut ProcessContext
				);
			}
			idx+=1;
			if(idx>=task_list.exclusive_access().len()){break;}
		}
	}
}