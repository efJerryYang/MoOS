use core::{cell::RefMut, borrow::BorrowMut, future::Ready, task::Context, ptr::slice_from_raw_parts};

use alloc::{task, vec::Vec};
use riscv::register::mcause::Trap;
use xmas_elf::ElfFile;

use crate::{mm::{MemorySet, memory_set::{self, KERNEL_SPACE, MapPermission}, VirtAddr, translated_byte_buffer, page_table::{translate_str, PageTable}}, trap::{TrapFrame, trap_return, trap_handler}, config::{TRAPFRAME, TRAMPOLINE, KERNEL_STACK_SIZE}, syscall::translate};

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

pub unsafe fn exec_from_elf(elf_file:&ElfFile,argv:usize)->isize{
	let (user_pagetable,mut user_stack,entry)= MemorySet::from_elf(&elf_file);
	let nowpid=mycpu().proc_idx;
	let mut nowproc=&mut task_list.exclusive_access()[nowpid];
	nowproc.trapframe_ppn=user_pagetable.translate(VirtAddr::from(TRAPFRAME).into()).unwrap().ppn();

	// println!("[new proc]");
	// println!("entry:{:#x}",entry);

	let mut user_stack_kernel: usize=PageTable::from_token(user_pagetable.token()).translate_va(VirtAddr::from(user_stack-8)).unwrap().get_mut() as *mut u8 as usize+8;
	
	let mut argc =0;
	let mut pos:Vec<usize>=Vec::new();
	if(argv!=0){
		loop{
			let argv_i_ptr=*(translate(argv+argc*8) as *mut usize);
			if(argv_i_ptr==0) {break;}
			let argv_i=argv_i_ptr as *mut u8;
			let mut s=translate_str(nowproc.memory_set.token(), argv_i);
			s.push(0 as char);
			let src=s.as_bytes();
			user_stack_kernel-=s.len();
			user_stack-=s.len();

			let dst=core::slice::from_raw_parts_mut((user_stack_kernel) as *mut u8, s.len());
			dst.copy_from_slice(src);
			pos.push(user_stack);
			argc+=1;
			// println!("argv:{}",s);
		}
	}
	// println!("argc:{:#x}",argc);

	for i in 0..argc{
		user_stack_kernel-=8;
		user_stack-=8;
		*(user_stack_kernel as *mut usize)=pos[argc-i-1];
	}

	user_stack_kernel-=8;
	user_stack-=8;
	*(user_stack_kernel as *mut usize)=argc;

	*(nowproc.trapframe_ppn.get_mut() as *mut TrapFrame)=TrapFrame::app_init_context(
		entry,
		user_stack, 
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