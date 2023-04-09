	.section .text
	.globl call_userbin
call_userbin:
	# mv sp,a0
	addi sp,sp,-16;
	sd ra,0(sp)
	sd s0,8(sp)

	mv ra,a1
	sret

nuclear:
	j nuclear

	# ld s0,8(sp)
	# ld ra,0(sp)
	
	# ret
