#![no_std]
#![no_main]
#![feature(panic_info_message)]
#![feature(alloc_error_handler)]
#![allow(unused)]

extern crate alloc;

use alloc::collections::VecDeque;
use async_task::Runnable;
use lazy_static::lazy_static;
use spin::Mutex;
use spin::mutex::SpinMutex;
use sync::UPSafeCell;
use xmas_elf::header::sanity_check;

#[path = "boards/qemu.rs"]
mod board;

#[macro_use]
extern crate bitflags;
#[macro_use]
mod console;
mod config;
mod fs;
mod lang_items;
mod mm;
mod sbi;
mod sync;
mod task;

pub mod syscall;
pub mod timer;
pub mod trap;
use crate::mm::memory_set::{MapArea, MapPermission, MapType};
use crate::mm::VirtAddr;
use crate::{
    config::{KERNEL_STACK_SIZE, TRAMPOLINE, USER_STACK_SIZE},
    console::print,
    mm::{translated_byte_buffer, MemorySet, KERNEL_SPACE},
    sbi::{console_getchar, console_putchar, shutdown},
    task::{task_list, ProcessContext, PCB},
    timer::{get_time, set_next_trigger},
    trap::{trap_handler, trap_return},
};
use alloc::{boxed::Box, sync::Arc, vec, vec::Vec};
use config::TRAPFRAME;
use core::future::Future;
use core::pin::Pin;
use core::task::{Context, Poll};
use core::{
    arch::asm,
    arch::global_asm,
    borrow::{Borrow, BorrowMut},
    cell::{Ref, RefCell},
    slice::{self, SliceIndex},
    str::Bytes,
    sync::atomic::{AtomicBool, AtomicU8, AtomicUsize, Ordering},
};
use task::{cpu::mycpu, proc::schedule};
use trap::TrapFrame;
use xmas_elf::ElfFile;

use riscv::register::{
    mhartid,
    mtvec::TrapMode,
    scause::{self, Exception, Interrupt, Trap},
    sie, stval, stvec,
};

global_asm!(include_str!("entry.asm"));
global_asm!(include_str!("user_bin.S"));

unsafe fn crate_task_from_elf(userbin: &[u8]) {
    // let userbin=include_bytes!("../../../testsuits-for-oskernel/riscv-syscalls-testing/user/build/riscv64/write");
    let elf_file = ElfFile::new(userbin).unwrap();
    let inner = task_list.exclusive_access();
    let idx = inner.len();
    inner.push(PCB::new());
    let task = &mut inner[idx];

    // let user_pagetable=&mut task.memory_set;
    let (user_pagetable, user_stack, entry) = MemorySet::from_elf(&elf_file);
    println!("entry:{:#x}", entry);
    KERNEL_SPACE.exclusive_access().insert_framed_area(
        (TRAMPOLINE - KERNEL_STACK_SIZE * (idx + 1)).into(),
        (TRAMPOLINE - KERNEL_STACK_SIZE * idx).into(),
        MapPermission::R | MapPermission::W,
    );
    //trapframe
    task.trapframe_ppn = user_pagetable
        .translate(VirtAddr::from(TRAPFRAME).into())
        .unwrap()
        .ppn();

    task.memory_set = user_pagetable;
    *task.trapframe_ppn.get_mut() = TrapFrame::app_init_context(
        entry,
        user_stack - 8,
        KERNEL_SPACE.exclusive_access().token(),
        TRAMPOLINE - KERNEL_STACK_SIZE * idx,
        trap_handler as usize,
    );
    task.context.sp = TRAMPOLINE - KERNEL_STACK_SIZE * idx;
    task.context.ra = trap_return as usize;
    drop(inner);
}

#[no_mangle]
unsafe fn load_user_file() {
    extern "C" {
        fn init_start();
        fn init_end();
    }
    crate_task_from_elf(slice::from_raw_parts(
        init_start as *const u8,
        init_end as usize - init_start as usize,
    ));
    mycpu().proc_idx = 0;
    schedule();
}

static LOCK: AtomicU8 = AtomicU8::new(0);


async fn say_world() -> usize {
    println!("hello world");
	return 233;
}

struct Test{

}

impl Future for Test{
	type Output = usize;
	fn poll(self: Pin<&mut Self>, _cx: &mut Context<'_>) -> Poll<Self::Output> {
		println!("hello");
		_cx.waker().wake_by_ref();
		Poll::Pending
	}
}

struct TaskQueue{
	qs:Arc<Mutex<VecDeque<Runnable>>>
}

impl TaskQueue{
	pub fn new()-> Self{
		Self{
			qs:Arc::new(Mutex::new(VecDeque::new()))
		}
	}
	pub fn push(&self,runnable:Runnable){
		self.qs.lock().push_back(runnable);
	}
	pub fn fetch(&self)->Runnable{
		self.qs.lock().pop_front().unwrap()
	}
}

lazy_static!{
	static ref TASK_QUEUE:TaskQueue=TaskQueue::new();
}

fn async_test()-> !{
	println!("Hello async!");

	let scheduler = |runnable|{println!("pushing.");TASK_QUEUE.push(runnable);println!("push done.");};
	let (r,t)= async_task::spawn(Test{}, scheduler);
	let waker=r.waker();
	r.schedule();
	for i in 0..10{
		let x=TASK_QUEUE.fetch();
		x.run();
	}
	println!("entering loop.");
	loop{}
	
}

#[no_mangle]
pub fn rust_main() -> ! {
    clear_bss();
    while (!LOCK
        .compare_exchange(0, 1, Ordering::SeqCst, Ordering::SeqCst)
        .is_ok())
		{}
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
	async_test();
    // unsafe {sie::set_stimer();}
    // set_next_trigger();
    unsafe {
        load_user_file();
    }
    println!("unreachable part.");
    loop {}
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
