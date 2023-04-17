use core::{cell::RefMut, borrow::BorrowMut, future::Ready};

use alloc::task;
use riscv::register::mcause::Trap;

use crate::{mm::{MemorySet, memory_set::{self, KERNEL_SPACE, MapPermission}, VirtAddr}, trap::{TrapFrame, trap_return}, config::{TRAPFRAME, TRAMPOLINE, KERNEL_STACK_SIZE}};

use super::{cpu::mycpu, task_list, PCB, ProcessState, __switch, ProcessContext, pidcc};

// pub fn myproc()->&'static mut PCB{
// 	&mut task_list.exclusive_access()[mycpu().proc_idx]
// }

pub unsafe fn fork()->usize{
	let mut tasks=task_list.exclusive_access();
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
		for idx in 0..tasks.len(){
			let mut pcb=&mut tasks[idx] ;
			if(pcb.state == ProcessState::READY){
				pcb.state=ProcessState::RUNNING;
				cpu.proc_idx=idx;
				println!("entering {}.",idx);
				__switch(
					&mut cpu.context as *mut ProcessContext,
					&mut pcb.context as *mut ProcessContext
				);
			}
		}
	}
}