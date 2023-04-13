#![no_std]
#![no_main]
#![feature(panic_info_message)]
#![feature(alloc_error_handler)]

extern crate alloc;

use lazy_static::*;
use riscv::register::mcause::Trap;
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

pub mod syscall;
pub mod trap;
use alloc::{vec,vec::Vec};
use core::{arch::global_asm,arch::asm, str::Bytes, borrow::BorrowMut};
use crate::{sbi::{console_putchar, console_getchar, shutdown}, console::print, mm::{KERNEL_SPACE, MemorySet, translated_byte_buffer}, trap::{trap_handler, trap_return}, task::TASKMANAGER, config::{TRAMPOLINE, KERNEL_STACK_SIZE, USER_STACK_SIZE}};
use config::{TRAPFRAME};
use xmas_elf::ElfFile;
use trap::TrapContext;
use crate::mm::memory_set::{MapArea,MapType,MapPermission};
use crate::mm::VirtAddr;

global_asm!(include_str!("entry.asm"));

unsafe fn load_elf(elf_file:&ElfFile){

	let mut inner=TASKMANAGER.exclusive_access();
	let task=&mut inner.task_list[0];
	
	// let user_pagetable=&mut task.memory_set;
	let (user_pagetable,user_stack,entry)= MemorySet::from_elf(elf_file);
	println!("entry:{:#x}",entry);
	KERNEL_SPACE.exclusive_access().insert_framed_area((TRAMPOLINE-KERNEL_STACK_SIZE).into(), (TRAMPOLINE).into(), MapPermission::R|MapPermission::W);
	task.trapframe_ppn=user_pagetable.translate(VirtAddr::from(TRAPFRAME).into()).unwrap().ppn();
	
	task.memory_set=user_pagetable;
	*task.trapframe_ppn.get_mut()=TrapContext::app_init_context(entry, user_stack-8,KERNEL_SPACE.exclusive_access().token(),TRAMPOLINE, trap_handler as usize);

	drop(inner);
	trap_return();
}

#[no_mangle]
unsafe fn load_user_file(){
	let userbin=include_bytes!("../../user_c/build/main");
	// let userbin=include_bytes!("../../../testsuits-for-oskernel/riscv-syscalls-testing/user/build/riscv64/write");
	let elf_file=ElfFile::new(userbin).unwrap();
	load_elf(&elf_file);
}

#[no_mangle]
pub fn rust_main() -> !{
	clear_bss();
	println!("-----------NAIVE-OS-----------");

	trap::init();
	mm::init();
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

