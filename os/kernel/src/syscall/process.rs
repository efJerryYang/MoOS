//! App management syscalls

use core::borrow::BorrowMut;

use alloc::{sync::Arc, boxed::Box, task};

use crate::{task::{pidcc, PCB, task_list, proc::{sched, schedule}, cpu::mycpu, ProcessState}, sync::UPSafeCell};

/// task exits and submit an exit code
pub unsafe fn sys_exit(exit_code: i32) -> !{
	task_list.exclusive_access()[mycpu().proc_idx].state=ProcessState::ZOMBIE;
    println!("[kernel] process {} exited with code {}",mycpu().proc_idx, exit_code);
	sched();
	println!("exit unreachable part.");
	loop{}
	// panic!("[kernel]Application exited with code {}",exit_code);
}

pub unsafe fn sys_getpid()->isize{
	mycpu().proc_idx as isize
}

pub unsafe fn sys_fork()->isize{
	let newpid = {pidcc+1};
	pidcc+=1;
	let mut x=task_list.exclusive_access();
	let mut pcb=PCB::new();
	pcb.pid=newpid;
	x.push(pcb);
	return newpid as isize;
}

pub unsafe fn sys_yield()->isize{
	task_list.exclusive_access()[mycpu().proc_idx].state=ProcessState::READY;
	sched();
	0
}