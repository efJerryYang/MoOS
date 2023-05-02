use crate::fs::vfs::INode;
use alloc::string::String;
pub use context::ProcessContext;
use core::arch::global_asm;
use hashbrown::HashMap;
pub mod context;
pub mod cpu;
pub mod proc;

use crate::mm::{MemorySet, PhysPageNum};
use crate::UPSafeCell;
use alloc::{sync::Arc, vec, vec::Vec};
use lazy_static::lazy_static;

use self::cpu::mycpu;

global_asm!(include_str!("switch.S"));
extern "C" {
    fn __switch(current: *mut ProcessContext, next: *mut ProcessContext);
}

lazy_static! {
    pub static ref task_list: UPSafeCell<Vec<PCB>> = unsafe { UPSafeCell::new(Vec::new()) };
}

lazy_static! {
    // pub static
}

#[derive(Copy, Clone, PartialEq)]
pub enum ProcessState {
    READY,
    RUNNING,
    ZOMBIE,
    KILLED,
    EMPTY,
}
pub struct OpenFile {
    pub offset: usize,
    pub status_flags: u32,
    pub inode: Arc<dyn INode>,
}

pub struct GlobalOpenFileTable {
    table: Vec<OpenFile>,
}

pub struct FileDescriptor {
    pub open_file: Arc<OpenFile>,
    pub readable: bool,
    pub writable: bool,
}

pub struct GlobalInodeTable {
    table: Vec<Arc<dyn INode>>,
}

pub struct GlobalDentryCache {
    table: HashMap<String, Arc<dyn INode>>,
}

pub struct PCB {
    pub pid: usize,
    pub state: ProcessState,
    pub context: ProcessContext,
    pub trapframe_ppn: PhysPageNum,
    pub memory_set: MemorySet,
    pub parent: usize,
    pub exit_code: isize,
    pub fd_manager: Arc<Vec<FileDescriptor>>,
}

impl PCB {
    pub fn new() -> Self {
        PCB {
            pid: 0,
            state: ProcessState::READY,
            context: ProcessContext::new(),
            trapframe_ppn: 0.into(),
            memory_set: MemorySet::new_bare(),
            parent: 0xffffffff,
            exit_code: 0,
            fd_manager: Arc::new(Vec::new()),
        }
    }
}

pub fn myproc() -> &'static mut PCB {
    &mut task_list.exclusive_access()[mycpu().proc_idx]
}
