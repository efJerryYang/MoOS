	.section .data
	.globl userbin_start
	.globl userbin_end
userbin_start:
	.incbin "../user_c/build/main"
userbin_end: