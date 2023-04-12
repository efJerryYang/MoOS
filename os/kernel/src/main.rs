#![no_std]
#![no_main]
#![feature(panic_info_message)]
#![feature(alloc_error_handler)]

extern crate alloc;

#[path = "boards/qemu.rs"]
mod board;

#[macro_use]
extern crate bitflags;
#[macro_use]
mod console;
mod config;
mod lang_items;
mod sbi;
mod sync;
mod mm;

pub mod syscall;
pub mod trap;

use core::{arch::global_asm,arch::asm, str::Bytes};
use crate::{sbi::{console_putchar, console_getchar, shutdown}, console::print};
use xmas_elf::ElfFile;
use trap::TrapContext;

global_asm!(include_str!("entry.asm"));

const USER_STACK_SIZE: usize = 4096 * 2;
const KERNEL_STACK_SIZE: usize = 4096 * 2;

#[repr(align(4096))]
struct KernelStack {
    data: [u8; KERNEL_STACK_SIZE],
}

#[repr(align(4096))]
struct UserStack {
    data: [u8; USER_STACK_SIZE],
}

static KERNEL_STACK: KernelStack = KernelStack {
    data: [0; KERNEL_STACK_SIZE],
};
static USER_STACK: UserStack = UserStack {
    data: [0; USER_STACK_SIZE],
};

impl KernelStack {
    fn get_sp(&self) -> usize {
        self.data.as_ptr() as usize + KERNEL_STACK_SIZE
    }
    pub fn push_context(&self, cx: TrapContext) -> &'static mut TrapContext {
        let cx_ptr = (self.get_sp() - core::mem::size_of::<TrapContext>()) as *mut TrapContext;
        unsafe {
            *cx_ptr = cx;
        }
        unsafe { cx_ptr.as_mut().unwrap() }
    }
}

impl UserStack {
    fn get_sp(&self) -> usize {
        self.data.as_ptr() as usize + USER_STACK_SIZE
    }
}



unsafe fn load_elf(elf_file:&ElfFile,userbin:&[u8]){
	let phc = elf_file.header.pt2.ph_count();
	for i in 0 .. phc{
		let program_header=elf_file.program_header(i).unwrap();
		println!("LOAD:{}",program_header.get_type().unwrap()==xmas_elf::program::Type::Load);
		println!("memsize:{},offset:{:#x},vaddr:{:#x},paddr:{:#x},endaddr:{:#x}",
			program_header.mem_size(),
			program_header.offset(),
			program_header.virtual_addr(),
			program_header.physical_addr(),
			program_header.physical_addr()+program_header.mem_size()
		);
		if program_header.get_type().unwrap()==xmas_elf::program::Type::Load {
			let src=core::slice::from_raw_parts((userbin.as_ptr()).add(program_header.offset() as usize) , program_header.mem_size() as usize);
			let dst=core::slice::from_raw_parts_mut(program_header.physical_addr() as *mut u8, program_header.mem_size() as usize);
			dst.copy_from_slice(src);
		}
	}
}

#[no_mangle]
unsafe fn load_user_file(){
	let userbin=include_bytes!("../../user_c/build/main");
	let elf_file=ElfFile::new(userbin).unwrap();
	load_elf(&elf_file,userbin);
	
	let bss=elf_file.find_section_by_name(".bss").unwrap();
	(bss.address() as usize..bss.address() as usize+bss.size() as usize).for_each(|a| {
		(a as *mut u8).write_volatile(0)
    });
	
	println!("");
	println!("entry:{:#x}",elf_file.header.pt2.entry_point());
	
	println!("userstack:{:#x}",USER_STACK.get_sp());
	
	asm!("fence.i");
	extern "C" {
		fn __restore(cx_addr: usize);
    }
	__restore(KERNEL_STACK.push_context(TrapContext::app_init_context(
		elf_file.header.pt2.entry_point() as usize,
		USER_STACK.get_sp()
	)) as *const _ as usize);

}

#[no_mangle]
pub fn rust_main() -> !{
	clear_bss();
	println!("-----------NAIVE-OS-----------");

	trap::init();
	mm::init();
	unsafe{
		load_user_file();
	}
	println!("unreachable part.");
	loop{}
}

#[inline(always)]
fn clear_bss() {
    extern "C" {
        fn sbss();
        fn ebss();
    }
    unsafe {
        core::slice::from_raw_parts_mut(sbss as usize as *mut u8, ebss as usize - sbss as usize)
            .fill(0);
    }
}

