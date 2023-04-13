
use alloc::{vec,vec::Vec};
use crate::mm::{MemorySet,PhysAddr,PhysPageNum};
pub use crate::trap::TrapContext;
use lazy_static::*;
use crate::UPSafeCell;

pub struct TaskManager{
	pub magic: usize,
	pub task_list:Vec<TaskControlBlock>
}

pub struct TaskControlBlock{
	pub tsak_id:usize,
	pub trapframe_ppn: PhysPageNum,
	pub memory_set: MemorySet,
}

impl TaskManager {
	pub fn init()-> Self{
		return Self { magic:233,task_list: Vec::new() };
	}
	pub fn init2()-> Self{
		return Self { magic: 333, task_list: Vec::new() };
	}
}

lazy_static!{
	pub static ref TASKMANAGER: UPSafeCell<TaskManager> = unsafe{
		UPSafeCell::new(TaskManager{magic:233,task_list: vec![
			TaskControlBlock{tsak_id: 0,trapframe_ppn: 0.into(),memory_set: MemorySet::new_bare()}
			]
		})
	};
}