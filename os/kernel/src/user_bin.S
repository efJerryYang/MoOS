	.align 3
	.section .data
	.globl _app_num
_app_num:
	.quad 7
	.quad init_start
	.quad shell_start
	.quad getpid_start
	.quad getppid_start
	.quad write_start
	.quad gettimeofday_start
	.quad sleep_start
	.quad sleep_end

	.globl _app_names
_app_names:
	.string "init"
	.string "shell"
	.string "getpid"
	.string "getppid"
	.string "write"
	.string "gettimeofday"
	.string "sleep"

	.section .data
	.global init_start
	.global init_end
	.align 3
init_start:
	.incbin "../user_c/build/init"
init_end:

	.section .data
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

