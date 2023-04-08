#![no_std]
#![no_main]

mod lang_items;
mod sbi;
mod console;

use core::{arch::global_asm};
use crate::sbi::{console_putchar, console_getchar, shutdown};

global_asm!(include_str!("entry.asm"));


#[no_mangle]
pub fn rust_main() -> !{
	clear_bss();
	println!("Shell Started!");
    loop{
		let c:char;
		c=console_getchar() as u8 as char;
		if c as u8 == 13{
			print!("\n");
			print!("Hello! This is fake shell speaking.");
			print!("\n");
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