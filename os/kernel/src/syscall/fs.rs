//! File and filesystem-related syscalls

use crate::sbi::console_getchar;

const FD_STDOUT: usize = 1;
const FD_STDIN: usize = 0;

/// write buf of length `len`  to a file with `fd`
pub fn sys_write(fd: usize, buf: *const u8, len: usize) -> isize {
    match fd {
        FD_STDOUT => {
            let slice = unsafe { core::slice::from_raw_parts(buf, len) };
            let str = core::str::from_utf8(slice).unwrap();
            print!("{}", str);
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
			unsafe{
				*buf=console_getchar() as u8;
			}
			return 0;
            // let slice = unsafe { core::slice::from_raw_parts(buf, len) };
            // let str = core::str::from_utf8(slice).unwrap();
            // print!("{}", str);
            // len as isize
        }
        _ => {
            panic!("Unsupported fd in sys_read!");
        }
    }
}