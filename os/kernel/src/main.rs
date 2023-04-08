#![no_std]
#![no_main]

mod lang_items;
mod sbi;
mod console;

use core::{arch::global_asm, str::Bytes};
use crate::sbi::{console_putchar, console_getchar, shutdown};

global_asm!(include_str!("entry.asm"));
global_asm!(include_str!("user_bin.S"));


unsafe fn test_userbin(){
	extern "C"{
		fn userbin_start();
	}
	print!("\n");
	let pointer = userbin_start as usize as *const u8;
	for y in 0..600{
		for x in 0..16{
			print!("{:02x} ",*(pointer.add(y*16+x)));
		}
		print!("\n")
	}
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
			// print!("\n");
			// print!("Hello! This is fake shell speaking.");
			// print!("\n");
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

