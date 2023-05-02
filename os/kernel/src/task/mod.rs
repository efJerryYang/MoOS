
use core::{arch::global_asm};
use crate::fs::vfs::INode;
use alloc::string::String;
use hashbrown::HashMap;

pub use context::ProcessContext;
pub mod context;
pub mod proc;
pub mod cpu;
use alloc::{vec,vec::Vec, sync::Arc};
use spin::Mutex;
use crate::mm::{PhysPageNum,MemorySet};
use lazy_static::lazy_static;
use self::cpu::mycpu;

use crate::UPSafeCell;

global_asm!(include_str!("switch.S"));
extern "C"{
	fn __switch(current:*mut ProcessContext,next:*mut ProcessContext);
}

lazy_static!{
	pub static ref task_list:UPSafeCell<Vec<PCB>>=unsafe{UPSafeCell::new(Vec::new())};
}
lazy_static! {
    pub static ref global_dentry_cache: GlobalDentryCache = GlobalDentryCache {
         table: Arc::new(Mutex::new(HashMap::new())),
    };
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
    pub table: Arc<Mutex<HashMap<String, Arc<dyn INode>>>>,
}

impl GlobalDentryCache {
	pub fn get(&self, path: &str) -> Option<Arc<dyn INode>> {
		let mut table = self.table.lock();
		match table.get(path) {
			Some(inode) => Some(inode.clone()),
			None => None,
		}
	}
	pub fn insert(&self, path: String, inode: Arc<dyn INode>) -> Arc<dyn INode>{
		let mut table = self.table.lock();
		let old_path = path.clone();
		table.insert(path, inode);
		table.get(&old_path).unwrap().clone()
	}
}

pub struct PCB{
	pub pid:usize,
	pub state:ProcessState,
	pub context:ProcessContext,
	pub trapframe_ppn: PhysPageNum,
	pub memory_set: MemorySet,
	pub parent: usize,
	pub exit_code:isize,
	pub otime:usize,
	pub utime:usize,
	pub ktime:usize,
    pub fd_manager: Arc<Mutex<Vec<FileDescriptor>>>,

}

impl PCB{
	pub fn new()->Self{
		PCB{
			pid: 0,
			state:ProcessState::READY,
			context:ProcessContext::new(),
			trapframe_ppn: 0.into(),
			memory_set: MemorySet::new_bare(),
			parent: 0xffffffff,
			exit_code:0,
			utime:0,
			otime:0,
			ktime:0,
			fd_manager: Arc::new(Mutex::new(Vec::new())),
		}
	}
}

pub fn myproc() -> &'static mut PCB {
    &mut task_list.exclusive_access()[mycpu().proc_idx]
}

