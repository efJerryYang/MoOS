//! File and filesystem-related syscalls

use crate::{sbi::console_getchar, mm::translated_byte_buffer, task::TASKMANAGER};

const FD_STDOUT: usize = 1;
const FD_STDIN: usize = 0;

/// write buf of length `len`  to a file with `fd`
pub fn sys_write(fd: usize, buf: *const u8, len: usize) -> isize {
    match fd {
        FD_STDOUT => {
            // let slice = unsafe { core::slice::from_raw_parts(buf, len) };
			let buffers=translated_byte_buffer(TASKMANAGER.exclusive_access().task_list[0].memory_set.token(), buf, len);
			for buffer in buffers{
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
			unsafe{
				let mut buffers=translated_byte_buffer(TASKMANAGER.exclusive_access().task_list[0].memory_set.token(), buf, 1);
				buffers[0][0]=console_getchar() as u8;
			}
			return 0;
        }
        _ => {
            panic!("Unsupported fd in sys_read!");
        }
    }
}