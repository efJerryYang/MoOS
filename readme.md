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

```C

int read(int fd, char* buf, int len);//STDIN only
int write(int fd, const char* buf, int len);//STDOUT only
int exit(int code);
int waitpid(int pid,int* stauts,int options);//options not implemented
int getpid(void);
int getppid(void);
int sched_yield(void);
int fork(void);
int execve(char* path,char** argv,char** env);//env not implemented
int gettimeofday(*timespec ts,int ts);
int nanosleep(const *timespec req,*timespec rem);//rem not implemented
```

## yet to do:

### File system

```c
#define SYS_openat 56
#define SYS_close 57
#define SYS_getdents64 61 ?
#define SYS_read 63
#define SYS_write 64
#define SYS_mkdirat 34 ?
#define SYS_fstat 80
```

### Process

```c
#define SYS_clone 220
```

### Memory

```c
#define SYS_brk 214
#define SYS_munmap 215
#define SYS_mmap 222
```
