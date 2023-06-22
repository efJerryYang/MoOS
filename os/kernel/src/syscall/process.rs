//! App management syscalls

use core::{clone, future::Future, pin::Pin, task::{Context, Poll}};

use alloc::{
    boxed::Box,
    slice,
    string::{String, ToString},
    sync::Arc,
    task,
    vec::Vec,
};
use lazy_static::lazy_static;
use xmas_elf::ElfFile;

use crate::{
    mm::{page_table::translate_str, translated_byte_buffer, MemorySet},
    sync::UPSafeCell,
    syscall::translate,
    task::{
        cpu::mycpu,
        myproc,
        proc::{clone, exec_from_elf, kill, sched, schedule},
        task_list, ProcessState, PCB,
    },
};

use super::raw_ptr::{UserPtr, Out};

/// task exits and submit an exit code
pub unsafe fn sys_exit(exit_code: i32)->isize{
    let proc = &mut task_list.exclusive_access()[mycpu().proc_idx];
    proc.state = ProcessState::ZOMBIE;
    proc.exit_code = exit_code as isize;
    for child in task_list.exclusive_access() {
        if (child.parent == proc.pid) {
            child.parent = 0;
        }
    }
	0
    // println!("[kernel] process {} exited with code {}",mycpu().proc_idx, exit_code);
    // sched();
}

pub unsafe fn sys_getpid(proc_idx:usize) -> isize {
    proc_idx as isize
}
pub unsafe fn sys_getppid() -> isize {
    task_list.exclusive_access()[mycpu().proc_idx].parent as isize
}

pub unsafe fn sys_clone(pid:usize,stack: usize) -> isize {
    return clone(pid,stack) as isize;
}

lazy_static! {
    ///All of app's name
    static ref APP_NAMES: Vec<&'static str> = unsafe{
        extern "C" {
            fn _app_num();
            fn _app_names();
        }
        let num_app = (_app_num as usize as *const usize).read_volatile();
        let mut start = _app_names as usize as *const u8;
        let mut v = Vec::new();
        for _ in 0..num_app {
            let mut end = start;
            while end.read_volatile() != b'\0' {
                end = end.add(1);
            }
            let slice = core::slice::from_raw_parts(start, end as usize - start as usize);
            let str = core::str::from_utf8(slice).unwrap();
            v.push(str);
            start = end.add(1);
        }
        v
    };
}

fn get_location(id: usize) -> (usize, usize) {
    extern "C" {
        fn _app_num();
    }
    unsafe {
        let start = (_app_num as usize as *const usize)
            .add(id + 1)
            .read_volatile();
        let end = (_app_num as usize as *const usize)
            .add(id + 2)
            .read_volatile();
        (start, end)
    }
}

pub unsafe fn sys_exec(buf: *mut u8, argv: usize) -> isize {
    let path = translate_str(
        task_list.exclusive_access()[mycpu().proc_idx]
            .memory_set
            .token(),
        buf,
    );
    extern "C" {
        fn _app_num();
    }
    let num = (_app_num as usize as *const usize).read_volatile();
    let range = ((0..num).find(|&i| APP_NAMES[i] == path).map(get_location));
    if (range == None) {
        println!("{} : not found.", path);
        sys_exit(-1);
        return 1;
    }

    let (start, end) = range.unwrap();

    let elf_file: Result<ElfFile, &str> =
        ElfFile::new(slice::from_raw_parts(start as *const u8, end - start));
    match elf_file {
        Ok(elf) => exec_from_elf(&elf, argv),
        Err(e) => 1,
    }
}

pub unsafe fn sys_yield() -> isize {
    myproc().state = ProcessState::READY;
    sched();
    0
}

struct YieldFuture(bool);

impl Future for YieldFuture {
    type Output = ();

    fn poll(mut self: Pin<&mut Self>, cx: &mut Context) -> Poll<Self::Output> {
        if self.0 {
            return Poll::Ready(());
        }
        self.0 = true;
        cx.waker().wake_by_ref();
        Poll::Pending
    }
}


pub async fn async_yield(){
	YieldFuture(false).await
}

pub async unsafe fn sys_waitpid(pid: isize, status:UserPtr<isize,Out>, options: usize) -> isize {
	
    let nowpid = mycpu().proc_idx;
    if (pid == -1) {
        loop {
            let mut p = 0xffffffff;
            for x in task_list.exclusive_access() {
                if (x.state == ProcessState::ZOMBIE && x.parent == nowpid) {
                    p = x.pid;
                    break;
                }
            }
            if (p == 0xffffffff) {
				async_yield().await;
            } else {
                if (status.as_usize() as usize != 0) {
					let status=status.raw_ptr_mut();
                    *status = (task_list.exclusive_access()[p].exit_code << 8) | (0);
                }
                task_list.exclusive_access()[p].state = ProcessState::KILLED;
                task_list.exclusive_access()[p].memory_set = MemorySet::new_bare();
                return p as isize;
            }
        }
    } else {
        let x = &mut task_list.exclusive_access()[pid as usize];
        if (x.parent != nowpid || (x.state == ProcessState::KILLED)) {
            return -1;
        } else {
            while (x.state != ProcessState::ZOMBIE) {
				async_yield().await;
                // sys_yield();
            }
            if (status.as_usize() as usize != 0) {
				let status=status.raw_ptr_mut();
                *status = (x.exit_code << 8) | (0);
            }
            x.state = ProcessState::KILLED;
            x.memory_set = MemorySet::new_bare();
            return pid as isize;
        }
    }
}
