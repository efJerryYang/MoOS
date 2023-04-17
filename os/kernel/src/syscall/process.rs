//! App management syscalls

use core::{borrow::BorrowMut, fmt::Error, panic::PanicInfo};

use alloc::{sync::Arc, boxed::Box, task, string::{String, ToString}, slice};
use xmas_elf::ElfFile;

use crate::{task::{pidcc, PCB, task_list, proc::{sched, schedule, fork, exec_from_elf, kill}, cpu::mycpu, ProcessState}, sync::UPSafeCell, mm::{translated_byte_buffer, page_table::translate_str}};

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
	return fork() as isize;
}

// static 

pub unsafe fn sys_exec(buf:*mut u8)->isize{
	let path=translate_str(task_list.exclusive_access()[mycpu().proc_idx].memory_set.token(), buf);
	extern "C"{
		fn shell_start();fn shell_end();
		fn getpid_start();fn getpid_end();
		fn getppid_start();fn getppid_end();
		fn write_start();fn write_end();
	}
	let elf_file=match(path.as_str()){
		"shell"=>ElfFile::new(slice::from_raw_parts(shell_start as *const u8, shell_end as usize - shell_start as usize)),
		"getpid"=>ElfFile::new(slice::from_raw_parts(getpid_start as *const u8, getpid_end as usize - getpid_start as usize)),
		"getppid"=>ElfFile::new(slice::from_raw_parts(getppid_start as *const u8, getppid_end as usize - getppid_start as usize)),
		"write"=>ElfFile::new(slice::from_raw_parts(write_start as *const u8, write_end as usize - write_start as usize)),
		_ => {
			println!("exec {} failed.",path);
			kill();
			ElfFile::new(&[0,0])
		}
	};
	// include_bytes!(path.as_bytes());
	// let elf_file=ElfFile::new(include_bytes!("../../../../testsuits-for-oskernel/riscv-syscalls-testing/user/build/riscv64/getpid"));
	match elf_file{
		Ok(elf)=>exec_from_elf(&elf),
		Err(e)=>1,
	}
	// return exec_from_elf(&elf) as isize;
}
pub unsafe fn sys_yield()->isize{
	task_list.exclusive_access()[mycpu().proc_idx].state=ProcessState::READY;
	sched();
	0
}