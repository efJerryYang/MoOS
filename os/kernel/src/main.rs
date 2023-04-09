#![no_std]
#![no_main]
#![feature(panic_info_message)]

#[macro_use]
mod console;
mod lang_items;
mod sbi;

pub mod syscall;
pub mod trap;

use core::{arch::global_asm,arch::asm, str::Bytes};
use crate::{sbi::{console_putchar, console_getchar, shutdown}, console::print};
use xmas_elf::ElfFile;
use trap::TrapContext;

global_asm!(include_str!("entry.asm"));
global_asm!(include_str!("user_bin.S"));

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



#[no_mangle]
unsafe fn test_userbin(){
	let userbin=include_bytes!("../../user_c/build/main");
	let elf_file=ElfFile::new(userbin).unwrap();

	let text=elf_file.find_section_by_name(".text").unwrap();
	let data=elf_file.find_section_by_name(".data").unwrap();
	let bss=elf_file.find_section_by_name(".bss").unwrap();

	let copylist=[text,data];
	for sec in copylist{
		let src=core::slice::from_raw_parts((userbin as *const u8).add(sec.offset() as usize) , sec.size() as usize);
		let dst=core::slice::from_raw_parts_mut(sec.address() as *mut u8, sec.size() as usize);
		dst.copy_from_slice(src);
	}
	
	(bss.address() as usize..bss.address() as usize+bss.size() as usize).for_each(|a| {
		(a as *mut u8).write_volatile(0)
    });
	
	println!("");
	println!("entry:{:#x}",elf_file.header.pt2.entry_point());
	
	extern "C" {
		fn __restore(cx_addr: usize);
    }
	// println!("userstack:{:#x}",USER_STACK.get_sp());
	
	
	asm!("fence.i");
	__restore(KERNEL_STACK.push_context(TrapContext::app_init_context(
		elf_file.header.pt2.entry_point() as usize,
		0x80700000
		// USER_STACK.get_sp()
	)) as *const _ as usize);

}

#[no_mangle]
pub fn rust_main() -> !{
	clear_bss();
	print!( "          _____                    _____                    _____                    _____                    _____                   _______                   _____          \n");
	print!( "         /\\    \\                  /\\    \\                  /\\    \\                  /\\    \\                  /\\    \\                 /::\\    \\                 /\\    \\         \n");
	print!( "        /::\\____\\                /::\\    \\                /::\\    \\                /::\\____\\                /::\\    \\               /::::\\    \\               /::\\    \\        \n");
	print!( "       /::::|   |               /::::\\    \\               \\:::\\    \\              /:::/    /               /::::\\    \\             /::::::\\    \\             /::::\\    \\       \n");
	print!( "      /:::::|   |              /::::::\\    \\               \\:::\\    \\            /:::/    /               /::::::\\    \\           /::::::::\\    \\           /::::::\\    \\      \n");
	print!( "     /::::::|   |             /:::/\\:::\\    \\               \\:::\\    \\          /:::/    /               /:::/\\:::\\    \\         /:::/~~\\:::\\    \\         /:::/\\:::\\    \\     \n");
	print!( "    /:::/|::|   |            /:::/__\\:::\\    \\               \\:::\\    \\        /:::/____/               /:::/__\\:::\\    \\       /:::/    \\:::\\    \\       /:::/__\\:::\\    \\    \n");
	print!( "   /:::/ |::|   |           /::::\\   \\:::\\    \\              /::::\\    \\       |::|    |               /::::\\   \\:::\\    \\     /:::/    / \\:::\\    \\      \\:::\\   \\:::\\    \\   \n");
	print!( "  /:::/  |::|   | _____    /::::::\\   \\:::\\    \\    ____    /::::::\\    \\      |::|    |     _____    /::::::\\   \\:::\\    \\   /:::/____/   \\:::\\____\\   ___\\:::\\   \\:::\\    \\  \n");
	print!( " /:::/   |::|   |/\\    \\  /:::/\\:::\\   \\:::\\    \\  /\\   \\  /:::/\\:::\\    \\     |::|    |    /\\    \\  /:::/\\:::\\   \\:::\\    \\ |:::|    |     |:::|    | /\\   \\:::\\   \\:::\\    \\ \n");
	print!( "/:: /    |::|   /::\\____\\/:::/  \\:::\\   \\:::\\____\\/::\\   \\/:::/  \\:::\\____\\    |::|    |   /::\\____\\/:::/__\\:::\\   \\:::\\____\\|:::|____|     |:::|    |/::\\   \\:::\\   \\:::\\____\\\n");
	print!( "\\::/    /|::|  /:::/    /\\::/    \\:::\\  /:::/    /\\:::\\  /:::/    \\::/    /    |::|    |  /:::/    /\\:::\\   \\:::\\   \\::/    / \\:::\\    \\   /:::/    / \\:::\\   \\:::\\   \\::/    /\n");
	print!( " \\/____/ |::| /:::/    /  \\/____/ \\:::\\/:::/    /  \\:::\\/:::/    / \\/____/     |::|    | /:::/    /  \\:::\\   \\:::\\   \\/____/   \\:::\\    \\ /:::/    /   \\:::\\   \\:::\\   \\/____/ \n");
	print!( "         |::|/:::/    /            \\::::::/    /    \\::::::/    /              |::|____|/:::/    /    \\:::\\   \\:::\\    \\        \\:::\\    /:::/    /     \\:::\\   \\:::\\    \\     \n");
	print!( "         |::::::/    /              \\::::/    /      \\::::/____/               |:::::::::::/    /      \\:::\\   \\:::\\____\\        \\:::\\__/:::/    /       \\:::\\   \\:::\\____\\    \n");
	print!( "         |:::::/    /               /:::/    /        \\:::\\    \\               \\::::::::::/____/        \\:::\\   \\::/    /         \\::::::::/    /         \\:::\\  /:::/    /    \n");
	print!( "         |::::/    /               /:::/    /          \\:::\\    \\               ~~~~~~~~~~               \\:::\\   \\/____/           \\::::::/    /           \\:::\\/:::/    /     \n");
	print!( "         /:::/    /               /:::/    /            \\:::\\    \\                                        \\:::\\    \\                \\::::/    /             \\::::::/    /      \n");
	print!( "        /:::/    /               /:::/    /              \\:::\\____\\                                        \\:::\\____\\                \\::/____/               \\::::/    /       \n");
	print!( "        \\::/    /                \\::/    /                \\::/    /                                         \\::/    /                 ~~                      \\::/    /        \n");
	print!( "         \\/____/                  \\/____/                  \\/____/                                           \\/____/                                           \\/____/         \n");
	
	trap::init();
	unsafe{
		test_userbin();
	}
	println!("unreachable part.");
	loop{}
}

fn clear_bss() {
    extern "C" {
        fn sbss();
        fn ebss();
    }
    (sbss as usize..ebss as usize).for_each(|a| {
        unsafe { (a as *mut u8).write_volatile(0) }
    });
}

