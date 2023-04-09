# Dependencies
	sudo apt install g++-11-riscv64-linux-gnu
This is for user programs compiling.
# Run on QEMU:
	cd os
	make all

### HINTS:
Only bulid kernel and run:

	make run
Only compile user programs:

	make user