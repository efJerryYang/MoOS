//! File and filesystem-related syscalls

use alloc::{format, string::ToString, sync::Arc, vec::Vec};

use crate::{
    fs::{
        file::{OpenFlags, RegFileINode},
        vfs::{INode, Timespec},
    },
    mm::translated_byte_buffer,
    sbi::console_getchar,
    task::{
        cpu::mycpu, global_dentry_cache, global_open_file_table, myproc, task_list, FdManager,
        FileDescriptor, OpenFile,
    },
};
const FD_STDOUT: usize = 1;
const FD_STDIN: usize = 0;

// int getcwd(char *buf, size_t size);
pub fn sys_getcwd(buf: *mut u8, size: usize) -> isize {
    let task = myproc();
    let cwd = task.cwd.clone();
    let cwd_str = cwd.as_str();

    // 确保缓冲区足够大
    if size < cwd_str.len() + 1 {
        return -1;
    }

    // 将当前工作目录字符串复制到用户提供的缓冲区
    let mut buffers = translated_byte_buffer(task.memory_set.token(), buf, cwd_str.len() + 1);
    for (i, byte) in cwd_str.as_bytes().iter().enumerate() {
        buffers[0][i] = *byte;
    }
    // 添加空终止符
    buffers[0][cwd_str.len()] = 0;

    // 返回字符串长度（包括空终止符）
    (cwd_str.len() + 1) as isize
}
// int openat(int dirfd,const char *path, int flags)
pub fn sys_openat(dirfd: isize, path: &str, flags: isize) -> isize {
    let task = myproc();
    let mut fd_manager = &mut task.fd_manager.lock();

    println!("openat: dirfd: {}, path: {}, flags: {}", dirfd, path, flags);
    let start_dir_path;
    let rel_path;
    if path.starts_with("/") {
        start_dir_path = "/".to_string();
        rel_path = path.strip_prefix("/").unwrap_or(path).to_string();
    } else {
        start_dir_path = task.cwd.clone();
        rel_path = if path.starts_with("./") {
            path.strip_prefix("./").unwrap().to_string()
        } else {
            path.to_string()
        };
    }
    println!(
        "openat: start_dir_path: {}, rel_path: {}",
        start_dir_path, rel_path
    );

    let abs_path = format!("{}{}", start_dir_path, rel_path);
    let fd;
    let inode = match global_dentry_cache.get(&abs_path) {
        Some(inode) => {
            let open_file = Arc::new(OpenFile {
                offset: 0,
                status_flags: flags as u32,
                inode: inode.clone(),
            });

            let file_descriptor = FileDescriptor {
                open_file: open_file.clone(),
                readable: flags as u32 & OpenFlags::RDONLY.bits() != 0,
                writable: flags as u32 & OpenFlags::WRONLY.bits() != 0,
            };

            for (i, fd_ref) in fd_manager.fd_array.iter().enumerate() {
                if Arc::ptr_eq(&fd_ref.open_file.inode, &inode) {
                    fd_manager.fd_array[i] = file_descriptor;
                    return i as isize;
                }
            }
            fd = fd_manager.insert(file_descriptor);
            inode.clone()
        }
        None => {
            // create a new file in fs
            let new_inode = Arc::new(RegFileINode {
                // Initialize the new inode with the required fields
                readable: true,
                writable: true,
                dir: start_dir_path.clone(),
                name: rel_path.clone(),
                atime: Timespec::default(),
                mtime: Timespec::default(),
                ctime: Timespec::default(),
                flags: OpenFlags::new(flags as u32),
                file: Vec::new(),
            });
            global_dentry_cache.insert(&abs_path, new_inode.clone());

            // add open file to global open file table
            let open_file = Arc::new(OpenFile {
                offset: 0,
                status_flags: flags as u32,
                inode: new_inode.clone(),
            });
            global_open_file_table.insert(open_file.clone());

            // update fd manager
            let file_descriptor = FileDescriptor {
                open_file: open_file.clone(),
                readable: flags as u32 & OpenFlags::RDONLY.bits() != 0,
                writable: flags as u32 & OpenFlags::WRONLY.bits() != 0,
            };
            fd = fd_manager.len();
            fd_manager.insert(file_descriptor);
            new_inode
        }
    };

    // let open_file = Arc::new(OpenFile {
    //     offset: 0,
    //     status_flags: flags as u32,
    //     inode,
    // });

    // let file_descriptor = FileDescriptor {
    //     open_file,
    //     readable: flags as u32 & OpenFlags::RDONLY.bits() != 0,
    //     writable: flags as u32 & OpenFlags::WRONLY.bits() != 0,
    // };

    // let fd = fd_manager.len();
    // fd_manager.insert(file_descriptor);
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
    let fd_manager = task.fd_manager.lock();

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
        other => {
            if other >= fd_manager.len() {
                return -1;
            }
            let file_descriptor = &fd_manager.fd_array[other];
            if !file_descriptor.writable {
                return -1;
            }

            let mut open_file = file_descriptor.open_file.clone();
            let inode = open_file.inode.clone();
            let mut buf_iter = 0;
            let buffers = translated_byte_buffer(task.memory_set.token(), buf, len);

            for buffer in buffers {
                for byte in buffer {
                    // TODO: inode.file.push(*byte);
                    buf_iter += 1;
                }
            }
            // open_file.offset += buf_iter;
            buf_iter as isize
        }
    }
}

pub fn sys_read(fd: usize, buf: *mut u8, len: usize) -> isize {
    let task = myproc();
    let fd_manager = task.fd_manager.lock();

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
        other => {
            if other >= fd_manager.len() {
                return -1;
            }
            let file_descriptor = &fd_manager.fd_array[other];
            if !file_descriptor.readable {
                return -1;
            }

            let mut open_file = file_descriptor.open_file.clone();
            let inode = open_file.inode.clone();
            let mut read_bytes = 0;
            let mut buf_iter = 0;

            if open_file.offset >= inode.file_size() as usize {
                return 0;
            }

            let mut buffers = translated_byte_buffer(task.memory_set.token(), buf, len);
            for buffer in buffers {
                for byte in buffer {
                    if open_file.offset + buf_iter < inode.file_size() as usize {
                        *byte = 111; // TODO: inode.file_data().clone()[open_file.offset + buf_iter];
                        buf_iter += 1;
                        read_bytes += 1;
                    } else {
                        break;
                    }
                }
            }
            read_bytes as isize
        }
    }
}
