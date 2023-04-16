use core::{cell::RefMut, borrow::BorrowMut};

use alloc::task;

use super::{cpu::mycpu, task_list, PCB, ProcessState, __switch, ProcessContext};

// pub fn myproc()->&'static mut PCB{
// 	&mut task_list.exclusive_access()[mycpu().proc_idx]
// }

pub unsafe fn sched(){
	let mut p=&mut task_list.exclusive_access()[mycpu().proc_idx];
	p.state=ProcessState::READY;
	unsafe{
		__switch(&mut p.context as *mut ProcessContext, &mut mycpu().context as *mut ProcessContext);
	}
}

pub unsafe fn schedule(){
	let mut tasks=task_list.exclusive_access();
	let mut cpu=mycpu();
	while true{
		for idx in 0..tasks.len(){
			let mut pcb=&mut tasks[idx] ;
			if(pcb.state == ProcessState::READY){
				pcb.state=ProcessState::RUNNING;
				cpu.proc_idx=idx;
				unsafe{
					let ts=&mut cpu.context as *mut ProcessContext;
					__switch(
						ts,
						&mut pcb.context as *mut ProcessContext
					);
				}
			}
		}
	}
}