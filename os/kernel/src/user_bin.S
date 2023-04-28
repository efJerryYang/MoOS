	.align 3
	.section .data
	.globl _app_num
_app_num:
	.quad 11
	.quad init_start
	.quad shell_start
	.quad forktest_start
	.quad argtest_start
	.quad getpid_start
	.quad getppid_start
	.quad write_start
	.quad gettimeofday_start
	.quad sleep_start
	.quad wait_start
	.quad busybox_start
	.quad busybox_end

	.globl _app_names
_app_names:
	.string "init"
	.string "shell"
	.string "forktest"
	.string "argtest"
	.string "getpid"
	.string "getppid"
	.string "write"
	.string "gettimeofday"
	.string "sleep"
	.string "wait"
	.string "busybox"

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

	.section .data
	.global forktest_start
	.global forktest_end
	.align 3
forktest_start:
	.incbin "../user_c/build/forktest"
forktest_end:

	.section .data
	.global argtest_start
	.global argtest_end
	.align 3
argtest_start:
	.incbin "../user_c/build/argtest"
argtest_end:

	.global getpid_start
	.global getpid_end
	.align 3
getpid_start:
	.incbin "../../testsuits-for-oskernel/riscv-syscalls-testing/user/build/riscv64/getpid"
getpid_end:

	.global getppid_start
	.global getppid_end
	.align 3
getppid_start:
	.incbin "../../testsuits-for-oskernel/riscv-syscalls-testing/user/build/riscv64/getppid"
getppid_end:

	.global write_start
	.global write_end
	.align 3
write_start:
	.incbin "../../testsuits-for-oskernel/riscv-syscalls-testing/user/build/riscv64/write"
write_end:

	.global gettimeofday_start
	.global gettimeofday_end
	.align 3
gettimeofday_start:
	.incbin "../../testsuits-for-oskernel/riscv-syscalls-testing/user/build/riscv64/gettimeofday"
gettimeofday_end:

	.global sleep_start
	.global sleep_end
	.align 3
sleep_start:
	.incbin "../../testsuits-for-oskernel/riscv-syscalls-testing/user/build/riscv64/sleep"
sleep_end:

	.global wait_start
	.global wait_end
	.align 3
wait_start:
	.incbin "../../testsuits-for-oskernel/riscv-syscalls-testing/user/build/riscv64/wait"
wait_end:

	.global busybox_start
	.global busybox_end
	.align 3
busybox_start:
	.incbin "../../testsuits-for-oskernel/riscv-syscalls-testing/user/build/riscv64/busybox"
busybox_end:

