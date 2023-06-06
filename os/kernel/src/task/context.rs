//! Implementation of [`TrapFrame`]

use riscv::register::sstatus::{self, Sstatus, SPP};

#[repr(C)]
#[derive(Clone, Copy)]
pub struct ProcessContext {
    pub ra: usize,
    pub sp: usize,
    pub s: [usize; 12],
}

impl ProcessContext {
    pub fn new() -> Self {
        return ProcessContext {
            ra: 0,
            sp: 0,
            s: [0; 12],
        };
    }
}
