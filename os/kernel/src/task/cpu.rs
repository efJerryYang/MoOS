use core::borrow::BorrowMut;
use core::cell::RefMut;

use lazy_static::lazy_static;
use alloc::{vec::Vec, vec};

use crate::{mm::MemorySet, sync::UPSafeCell};

use super::{ProcessContext, PCB};

pub struct CPU{
	pub context:ProcessContext,
	pub proc_idx:usize,
}

impl CPU {
	pub fn new()->Self{
		CPU{context:ProcessContext::new(),proc_idx:0}
	}
}

lazy_static!{
	pub static ref CPUS:UPSafeCell<CPU>=unsafe{UPSafeCell::new(CPU::new())};
	//  =[CPU{context:ProcessContext { ra: 0, sp: 0, s: [0;12] },proc:PCB { pid: 0, state: super::ProcessState::READY, trapframe_ppn: 0.into(), memory_set: MemorySet::new_bare() }};8];
}

pub fn mycpu()->&'static mut CPU{
	CPUS.exclusive_access()
}
