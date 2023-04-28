
use core::{arch::global_asm};
pub use context::ProcessContext;
pub mod context;
pub mod proc;
pub mod cpu;
use alloc::{vec,vec::Vec, sync::Arc};
use crate::mm::{PhysPageNum,MemorySet};
use lazy_static::lazy_static;
use crate::UPSafeCell;

global_asm!(include_str!("switch.S"));
extern "C"{
	fn __switch(current:*mut ProcessContext,next:*mut ProcessContext);
}

lazy_static!{
	pub static ref task_list:UPSafeCell<Vec<PCB>>=unsafe{UPSafeCell::new(Vec::new())};
}

#[derive(Copy, Clone, PartialEq)]
pub enum ProcessState {
    READY,
    RUNNING,
    ZOMBIE,
	KILLED,
	EMPTY,
}
pub struct PCB{
	pub pid:usize,
	pub state:ProcessState,
	pub context:ProcessContext,
	pub trapframe_ppn: PhysPageNum,
	pub memory_set: MemorySet,
	pub parent: usize,
	pub exit_code:isize,
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
		}
	}
}

