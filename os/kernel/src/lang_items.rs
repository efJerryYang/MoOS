use core::panic::PanicInfo;

use crate::print;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
	print!("panic!");
    loop {}
}