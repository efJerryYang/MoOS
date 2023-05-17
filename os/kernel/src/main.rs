#![no_std]
#![no_main]
#![feature(panic_info_message)]
#![feature(alloc_error_handler)]

extern crate alloc;

use lazy_static::lazy_static;
use spin::mutex::SpinMutex;
use sync::UPSafeCell;

#[path = "boards/qemu.rs"]
mod board;

#[macro_use]
extern crate bitflags;
#[macro_use]
mod console;
mod config;
mod lang_items;
mod sbi;
mod sync;
mod mm;
mod task;
mod fs;

pub mod syscall;
pub mod trap;
pub mod timer;
use alloc::{vec,vec::Vec, sync::Arc, boxed::Box};
use task::{cpu::mycpu, proc::schedule};
use core::{arch::global_asm,arch::asm, str::Bytes, borrow::{BorrowMut, Borrow}, slice::{self, SliceIndex}, cell::{RefCell, Ref}, sync::atomic::{AtomicUsize, Ordering, AtomicBool, AtomicU8}};
use crate::{sbi::{console_putchar, console_getchar, shutdown}, console::print, mm::{KERNEL_SPACE, MemorySet, translated_byte_buffer}, trap::{trap_handler, trap_return}, config::{TRAMPOLINE, KERNEL_STACK_SIZE, USER_STACK_SIZE}, task::{task_list, PCB, ProcessContext}, timer::{set_next_trigger, get_time}};
use config::{TRAPFRAME};
use xmas_elf::ElfFile;
use trap::TrapFrame;
use crate::mm::memory_set::{MapArea,MapType,MapPermission};
use crate::mm::VirtAddr;

use riscv::register::{
    mtvec::TrapMode,
    scause::{self, Exception, Interrupt, Trap},
    sie, stval, stvec, mhartid,
};


global_asm!(include_str!("entry.asm"));
global_asm!(include_str!("user_bin.S"));

unsafe fn crate_task_from_elf(userbin:&[u8]){
	// let userbin=include_bytes!("../../../testsuits-for-oskernel/riscv-syscalls-testing/user/build/riscv64/write");
	let elf_file=ElfFile::new(userbin).unwrap();
	let inner=task_list.exclusive_access();
	let idx=inner.len();
	inner.push(PCB::new());
	let task=&mut inner[idx];
	
	// let user_pagetable=&mut task.memory_set;
	let (user_pagetable,user_stack,entry)= MemorySet::from_elf(&elf_file);
	println!("entry:{:#x}",entry);
	KERNEL_SPACE.exclusive_access().insert_framed_area(
		(TRAMPOLINE-KERNEL_STACK_SIZE*(idx+1)).into(),
		(TRAMPOLINE-KERNEL_STACK_SIZE*idx).into(), 
		MapPermission::R|MapPermission::W
	);
	//trapframe
	task.trapframe_ppn=user_pagetable.translate(VirtAddr::from(TRAPFRAME).into()).unwrap().ppn();
	
	task.memory_set=user_pagetable;
	*task.trapframe_ppn.get_mut()=TrapFrame::app_init_context(entry, user_stack-8,KERNEL_SPACE.exclusive_access().token(),TRAMPOLINE-KERNEL_STACK_SIZE*idx, trap_handler as usize);
	task.context.sp=TRAMPOLINE-KERNEL_STACK_SIZE*idx;
	task.context.ra=trap_return as usize;
	drop(inner);
}

#[no_mangle]
unsafe fn load_user_file(){
	extern "C" {fn init_start();fn init_end();}
	crate_task_from_elf(slice::from_raw_parts(init_start as *const u8, init_end as usize-init_start as usize));
	// crate_task_from_elf(include_bytes!("../../../testsuits-for-oskernel/riscv-syscalls-testing/user/build/riscv64/getpid"));
	// crate_task_from_elf(include_bytes!("../../../testsuits-for-oskernel/riscv-syscalls-testing/user/build/riscv64/getppid"));
	mycpu().proc_idx=0;
	schedule();
}

// lazy_static!{
// 	pub static ref HART_CC:UPSafeCell<usize>=unsafe{UPSafeCell::new(0)};
// }
static LOCK:AtomicU8=AtomicU8::new(0);

#[no_mangle]
pub fn rust_main() -> !{
	clear_bss();
	while(!LOCK.compare_exchange(0,1,Ordering::SeqCst,Ordering::SeqCst).is_ok()){}
	// println!("-----------NAIVE-OS-----------");
	println!("");
	println!("     _   _           ____   ______");
	println!("    / | / |        / __  \\/ _____/");
	println!("   /  |/  | ____  / /  / / /__");
	println!("  / /| /| |/ __ \\/ /  / /\\___ \\");
	println!(" / / |/ | / /_/ / /__/ /____/ /");
	println!("/_/     |_\\____/\\_____/______/");
	println!("");
	trap::init();
	mm::init();
	// unsafe {sie::set_stimer();}
	// set_next_trigger();
	unsafe{
		load_user_file();
	}
	println!("unreachable part.");
	loop{}
}

#[inline(always)]
fn clear_bss() {
    extern "C" {
        fn sbss();
        fn ebss();
    }
    unsafe {
        core::slice::from_raw_parts_mut(sbss as usize as *mut u8, ebss as usize - sbss as usize)
            .fill(0);
    }
}

