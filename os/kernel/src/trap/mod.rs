//! Trap handling functionality
//!
//! For rCore, we have a single trap entry point, namely `__alltraps`. At
//! initialization in [`init()`], we set the `stvec` CSR to point to it.
//!
//! All traps go through `__alltraps`, which is defined in `trap.S`. The
//! assembly language code does just enough work restore the kernel space
//! context, ensuring that Rust code safely runs, and transfers control to
//! [`trap_handler()`].
//!
//! It then calls different functionality based on what exactly the exception
//! was. For example, timer interrupts trigger task preemption, and syscalls go
//! to [`syscall()`].

mod context;

use crate::{syscall::syscall, console::print, config::TRAPFRAME, task::{task_list, cpu::mycpu, proc::kill}};
use core::arch::global_asm;
use riscv::register::{
    mtvec::TrapMode,
    scause::{self, Exception, Trap},
    stval, stvec,
};
use core::arch::asm;
use crate::config::TRAMPOLINE;

global_asm!(include_str!("trampoline.S"));

/// initialize CSR `stvec` as the entry of `__alltraps`
pub fn init() {
    unsafe {
        stvec::write(TRAMPOLINE, TrapMode::Direct);
    }
}

#[no_mangle]
/// handle an interrupt, exception, or system call from user space
pub unsafe fn trap_handler() -> ! {
	let scause = scause::read(); // get trap cause
    let stval = stval::read(); // get extra value
	// println!("USER TRAP: stval={:#x},pc={:#x}",stval,cx.sepc);
    match scause.cause() {
		Trap::Exception(Exception::UserEnvCall) => {
			let mut cx:&mut TrapFrame=task_list.exclusive_access()[mycpu().proc_idx].trapframe_ppn.get_mut();
			cx.sepc += 4;
            let result = syscall(cx.x[17], [cx.x[10], cx.x[11], cx.x[12]]) as usize;
			cx=task_list.exclusive_access()[mycpu().proc_idx].trapframe_ppn.get_mut();
			cx.x[10]=result;
        }
        Trap::Exception(Exception::StoreFault) | Trap::Exception(Exception::StorePageFault) |Trap::Exception(Exception::LoadFault)|Trap::Exception(Exception::LoadPageFault) => {
			let cx:&mut TrapFrame=task_list.exclusive_access()[mycpu().proc_idx].trapframe_ppn.get_mut();
			println!("USER TRAP: stval={:#x},pc={:#x}",stval,cx.sepc);
            println!("[kernel] PageFault in application, kernel killed it.");
			kill();
			// panic!();
        }
        Trap::Exception(Exception::IllegalInstruction) => {
            println!("[kernel] IllegalInstruction in application, kernel killed it.");
        }
        _ => {
            panic!(
                "Unsupported trap {:?}, stval = {:#x}!",
                scause.cause(),
                stval
            );
        }
    }
	trap_return();
}

#[no_mangle]
pub unsafe fn trap_return() -> ! {
    let trapframe_ptr = TRAPFRAME;
    let user_satp = task_list.exclusive_access_const()[mycpu().proc_idx].memory_set.token();
    extern "C" {
        fn __alltraps();
        fn __restore();
    }
    let restore_va = __restore as usize - __alltraps as usize + TRAMPOLINE;
	// println!("{:#x}",inner.task_list[0].trap_context.sepc);
	asm!(
		"fence.i",
		"jr {restore_va}",             // jump to new addr of __restore asm function
		restore_va = in(reg) restore_va,
		in("a0") trapframe_ptr,      // a0 = virt addr of Trap Context
		in("a1") user_satp,        // a1 = phy addr of usr page table
		options(noreturn)
	);
}


pub use context::TrapFrame;
