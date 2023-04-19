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
int getpid(void);
int getppid(void);
int sched_yield(void);
int fork(void);
int exec(char* path);
int gettimeofday(*timespec ts,int ts);
int nanosleep(const *timespec req,*timespec rem);
```
## yet to do:
- file system