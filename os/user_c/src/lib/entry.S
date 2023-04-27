.section .text.entry
.global _start

_start:
	mv a0,sp
	tail entry_main