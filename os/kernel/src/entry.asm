# os/src/entry.asm
    .section .text.entry
    .globl _start
_start:
	#stacktop- id*64KB

    la sp, boot_stack_top
	# slli a0,a0,16
	# sub sp,sp,a0
    call rust_main

    .section .bss.stack
    .globl boot_stack
boot_stack:
    .space 4096 * 32
    .globl boot_stack_top
boot_stack_top: