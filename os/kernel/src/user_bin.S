	.section .text
	.global init_start
	.global init_end
	.align 3
init_start:
	.incbin "../user_c/build/init"
init_end:

	.global shell_start
	.global shell_end
	.align 3
shell_start:
	.incbin "../user_c/build/shell"
shell_end:

	.global getpid_start
	.global getpid_end
	.align 3
getpid_start:
	.incbin "../../testsuits-for-oskernel/riscv-syscalls-testing/user/riscv64/getpid"
getpid_end:

	.global getppid_start
	.global getppid_end
	.align 3
getppid_start:
	.incbin "../../testsuits-for-oskernel/riscv-syscalls-testing/user/riscv64/getppid"
getppid_end:

	.global write_start
	.global write_end
	.align 3
write_start:
	.incbin "../../testsuits-for-oskernel/riscv-syscalls-testing/user/riscv64/write"
write_end:

	.global gettimeofday_start
	.global gettimeofday_end
	.align 3
gettimeofday_start:
	.incbin "../../testsuits-for-oskernel/riscv-syscalls-testing/user/riscv64/gettimeofday"
gettimeofday_end:

	.global sleep_start
	.global sleep_end
	.align 3
sleep_start:
	.incbin "../../testsuits-for-oskernel/riscv-syscalls-testing/user/riscv64/sleep"
sleep_end:

