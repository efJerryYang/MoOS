//! Constants used in rCore for qemu

pub const CLOCK_FREQ: usize = 12500000;

pub const MMIO: &[(usize, usize)] = &[
    (0x10001000, 0x1000), // VIRT_TEST/RTC  in virt machine
];
