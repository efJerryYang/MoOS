//! App management syscalls

/// task exits and submit an exit code
pub fn sys_exit(exit_code: i32) -> isize {
    println!("[kernel] Application exited with code {}", exit_code);
	0
}
