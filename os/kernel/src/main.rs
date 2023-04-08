#![no_std]
#![no_main]

mod lang_items;
mod sbi;
mod console;

use core::{arch::global_asm, str::Bytes};
use crate::{sbi::{console_putchar, console_getchar, shutdown}, console::print};
use xmas_elf::ElfFile;

global_asm!(include_str!("entry.asm"));

unsafe fn test_userbin(){
	let userbin=include_bytes!("../../user_c/build/main");

	// for y in 0..600{
	// 	for x in 0..16{
	// 		print!("{:02x} ",userbin[y*16+x]);
	// 	}
	// 	print!("\n")
	// }
	// let mut buffer=Vec::new();
	let elf_file=ElfFile::new(userbin).unwrap();
	print!("getting:");
	let x=elf_file.find_section_by_name(".text").unwrap().offset();
	print!("offset:{:#x}\n",x);

	// print!("\n");
	// let pointer = userbin_start as usize as *mut u8;
	// let endpos=userbin_end as usize as *mut u8;

	// while pointer!=endpos{
	// 	print!("{:02x} ",*(pointer));
	// 	pointer.add(1);
	// }
	// for y in 0..600{
	// 	for x in 0..16{
	// 		print!("{:02x} ",*(pointer.add(16*y+x)));
	// 	}
	// 	print!("\n")
	// }
	print!("\n");
}

#[no_mangle]
pub fn rust_main() -> !{
	clear_bss();
	println!("Shell Started!");
    loop{
		let c:char;
		c=console_getchar() as u8 as char;
		if c as u8 == 13{
			unsafe{
				test_userbin();
			}
			// print!("\nHello! This is fake shell speaking.\n");
		}else{
			print!("{}",c);
		}
	}
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

