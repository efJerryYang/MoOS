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
``` C
int read(int fd, char* buf, int len);
int write(int fd, const char* buf, int len);
int exit(int code);
//
int brk(int len);//grow len and return the break point.
```
## yet to do:
- process management
- file system