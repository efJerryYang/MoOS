//! Implementation of syscalls
//!
//! The single entry point to all system calls, [`syscall()`], is called
//! whenever userspace wishes to perform a system call using the `ecall`
//! instruction. In this case, the processor raises an 'Environment call from
//! U-mode' exception, which is handled as one of the cases in
//! [`crate::trap::trap_handler`].
//!
//! For clarity, each single syscall is implemented as its own function, named
//! `sys_` then the name of the syscall. You can find functions like this in
//! submodules, and you should also implement syscalls this way.

const SYSCALL_GETCWD: usize = 17;
const SYSCALL_READ: usize = 63;
const SYSCALL_WRITE: usize = 64;
const SYSCALL_EXIT: usize = 93;
const SYSCALL_SCHED_YIELD: usize = 124;
const SYSCALL_GETPID: usize = 172;
const SYSCALL_GETPPID: usize = 173;

mod fs;
mod process;

use fs::*;
use process::*;


/// handle syscall exception with `syscall_id` and other arguments
pub unsafe fn syscall(syscall_id: usize, args: [usize; 3]) -> isize {
    match syscall_id {
        SYSCALL_WRITE => sys_write(args[0], args[1] as *const u8, args[2]),
        SYSCALL_EXIT => sys_exit(args[0] as i32),
		SYSCALL_READ => sys_read(args[0], args[1] as *mut u8, args[2]),
		SYSCALL_SCHED_YIELD=> sys_yield(),
		SYSCALL_GETPID => 233,
		SYSCALL_GETPPID => 2333,
        _ => panic!("Unsupported syscall_id: {}", syscall_id),
    }
}
