//! App management syscalls

use core::borrow::BorrowMut;

use alloc::{sync::Arc, boxed::Box};

use crate::{task::{pidcc, PCB, task_list, proc::sched}, sync::UPSafeCell};

/// task exits and submit an exit code
pub fn sys_exit(exit_code: i32) -> ! {
    // println!("[kernel] Application exited with code {}", exit_code);
	panic!("[kernel]Application exited with code {}",exit_code);
}

pub unsafe fn sys_fork()->usize{
	let newpid = {pidcc+1};
	pidcc+=1;
	let mut x=task_list.exclusive_access();
	let mut pcb=PCB::new();
	pcb.pid=newpid;
	x.push(pcb);
	return newpid;
}

pub unsafe fn sys_yield()->isize{
	sched();
	0
}