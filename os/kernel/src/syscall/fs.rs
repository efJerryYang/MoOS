//! File and filesystem-related syscalls

use alloc::{string::ToString, sync::Arc, vec::Vec};

use crate::{
    fs::{
        file::{OpenFlags, RegFileINode},
        vfs::Timespec,
    },
    mm::translated_byte_buffer,
    sbi::console_getchar,
    task::{cpu::mycpu, global_dentry_cache, myproc, task_list, FileDescriptor, OpenFile},
};
const FD_STDOUT: usize = 1;
const FD_STDIN: usize = 0;

// int openat(int dirfd,const char *path, int flags)
pub fn sys_openat(dirfd: isize, path: &str, flags: isize) -> isize {
    let task = myproc();
    let mut fd_manager = &mut task.fd_manager.lock();

    let inode = match global_dentry_cache.get(path) {
        Some(inode) => inode.clone(),
        None => {
            if flags as u32 & OpenFlags::CREATE.bits() != 0 {
                let new_inode = Arc::new(RegFileINode {
                    // Initialize the new inode with the required fields
                    readable: true,
                    writable: true,
                    dir: "/".to_string(),
                    name: path.to_string(),
                    atime: Timespec::default(),
                    mtime: Timespec::default(),
                    ctime: Timespec::default(),
                    flags: OpenFlags::new(flags as u32),
                    file: Vec::new(),
                });
                global_dentry_cache.insert(path.to_string(), new_inode.clone())
            } else {
                return 1;
            }
        }
    };

    let open_file = Arc::new(OpenFile {
        offset: 0,
        status_flags: flags as u32,
        inode,
    });

    let file_descriptor = FileDescriptor {
        open_file,
        readable: flags as u32 & OpenFlags::RDONLY.bits() != 0,
        writable: flags as u32 & OpenFlags::WRONLY.bits() != 0,
    };

    let fd = fd_manager.len();
    fd_manager.push(file_descriptor);
    fd as isize
}

// int close(int fd)
pub fn sys_close(fd: isize) -> isize {
    let task = myproc();
    let mut fd_manager = &mut task.fd_manager.lock();
    if fd as usize >= fd_manager.len() {
        return -1;
    }
    fd_manager.remove(fd as usize);
    0
}

/// write buf of length `len`  to a file with `fd`
pub fn sys_write(fd: usize, buf: *const u8, len: usize) -> isize {
    let task = myproc();
    let mut fd_manager = &mut task.fd_manager.lock();

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
    let task = myproc();
    let mut fd_manager = &mut task.fd_manager.lock();
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
