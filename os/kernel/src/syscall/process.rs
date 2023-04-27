//! App management syscalls

use core::{borrow::BorrowMut, fmt::Error, panic::PanicInfo, ptr::read_volatile};

use alloc::{sync::Arc, boxed::Box, task, string::{String, ToString}, slice, vec::Vec};
use lazy_static::lazy_static;
use xmas_elf::ElfFile;

use crate::{task::{pidcc, PCB, task_list, proc::{sched, schedule, fork, exec_from_elf, kill}, cpu::mycpu, ProcessState}, sync::UPSafeCell, mm::{translated_byte_buffer, page_table::translate_str}, syscall::translate};

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

lazy_static! {
    ///All of app's name
	static ref APP_NAMES: Vec<&'static str> = unsafe{
		extern "C" {
			fn _app_num();
            fn _app_names();
        }
		let num_app = (_app_num as usize as *const usize).read_volatile();
        let mut start = _app_names as usize as *const u8;
        let mut v = Vec::new();
		for _ in 0..num_app {
			let mut end = start;
			while end.read_volatile() != b'\0' {
				end = end.add(1);
			}
			let slice = core::slice::from_raw_parts(start, end as usize - start as usize);
			let str = core::str::from_utf8(slice).unwrap();
			v.push(str);
			start = end.add(1);
		}
        v
    };
}

fn get_location(id:usize)->(usize,usize){
	extern "C"{
		fn _app_num();
	}
	unsafe{
		let start=(_app_num as usize as *const usize).add(id+1).read_volatile();
		let end=(_app_num as usize as *const usize).add(id+2).read_volatile();
		(start,end)
	}
}

pub unsafe fn sys_exec(buf:*mut u8,mut argv:usize)->isize{

	// if(argv !=0){
	// 	let i: usize=0;
	// 	loop{
	// 		let x=translate(argv) as *mut usize;
	// 		println!("real:{:#x}",translate(argv));
	// 		println!("value:{:#x}",*x);
	// 		if *x==0 {break;}
	// 		let str=*x as *mut u8;
	// 		let ans=translate_str(task_list.exclusive_access()[mycpu().proc_idx].memory_set.token(),str);
	// 		println!("{}\n",ans);
	// 		argv+=8;
	// 	}
	// }
	let path=translate_str(task_list.exclusive_access()[mycpu().proc_idx].memory_set.token(), buf);
	extern "C"{
		fn _app_num();
	}
	let num=(_app_num as usize as *const usize).read_volatile();
	let range=
		((0..num).find(|&i|APP_NAMES[i]==path).map(get_location));
	if(range==None) {
		println!("can not find {}.",path);
		kill();
		return 1;
	}

	let (start,end)=range.unwrap();

	let elf_file: Result<ElfFile, &str>=ElfFile::new(slice::from_raw_parts(start as *const u8, end-start));	match elf_file{
		Ok(elf)=>exec_from_elf(&elf,argv),
		Err(e)=>1,
	}
}
pub unsafe fn sys_yield()->isize{
	task_list.exclusive_access()[mycpu().proc_idx].state=ProcessState::READY;
	sched();
	0
}