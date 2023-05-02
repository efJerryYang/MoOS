//! File and filesystem-related syscalls

use crate::{
    mm::translated_byte_buffer,
    sbi::console_getchar,
    task::{cpu::mycpu, task_list, myproc},
};

const FD_STDOUT: usize = 1;
const FD_STDIN: usize = 0;

// int openat(int dirfd,const char *path, int flags)
pub fn sys_openat(dirfd: isize, path: &str, flags: isize) -> isize {
    let task  = myproc();
    0
}
// int close(int fd)
pub fn sys_close(fd: isize) -> isize {
    0
}
/// write buf of length `len`  to a file with `fd`
pub fn sys_write(fd: usize, buf: *const u8, len: usize) -> isize {
    match fd {
        FD_STDOUT => {
            let buffers = translated_byte_buffer(
                task_list.exclusive_access()[mycpu().proc_idx]
                    .memory_set
                    .token(),
                buf,
                len,
            );
            for buffer in buffers {
                let str = core::str::from_utf8(buffer).unwrap();
                print!("{}", str);
            }
            len as isize
        }
        _ => {
            panic!("Unsupported fd in sys_write!");
        }
    }
}
pub fn sys_read(fd: usize, buf: *mut u8, len: usize) -> isize {
    match fd {
        FD_STDIN => {
            let mut buffers = translated_byte_buffer(
                task_list.exclusive_access()[mycpu().proc_idx]
                    .memory_set
                    .token(),
                buf,
                1,
            );
            buffers[0][0] = console_getchar() as u8;
            return 0;
        }
        _ => {
            panic!("Unsupported fd in sys_read!");
        }
    }
}
