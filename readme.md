# Dependencies
	sudo apt install g++-11-riscv64-linux-gnu
This is for user program compiling.
# Run on QEMU:
	cd os
	make all

### HINTS:
Bulid kernel and run:

	make run
Compile user programs:

	make user

# Progress:
## supported system calls:

	read(int fd, char* buf, int len);
	write(int fd, const char* buf, int len);
## yet to do:
- process management
- virtual memory
- file system