# MoOS

[English](./README.md) | [中文](./README_zh.md)

---

![hitsz-logo](docs/hitsz-logo.jpg)

![pre-2023_leaderboard](docs/pre-2023_leaderboard.png)

## 概述

MoOS 是一个在 RISC-V 处理器架构上运行的简单内核，主要由 Rust 语言实现。项目目前仍处于开发阶段，初赛期间的开发旨在为团队成员提供一个学习操作系统架构和 Rust 语言的渠道，故所在分支命名为 naive-os。该内核由一系列通用操作系统的模块化组件构成，如内存管理、任务调度和文件系统等。

MoOS 并未采用无栈异步架构，虽然它是今年许多队伍的重点，但无栈协程在操作系统内核开发上尚未广泛应用，仍属于新颖尝试。

初赛阶段文档可从 [MoOS-初赛文档](./MoOS-初赛文档.pdf) 查看。

## 基础模块

MoOS 的基础模块包括以下几个部分，主要为启动相关：

- `main.rs`: 系统的入口点，负责初始化操作系统中的各个部分，然后开始用户程序的执行。
- `config.rs`: 定义了一些全局常量，如用户栈大小、内核栈大小、内核堆大小和内存末尾地址等，为内核的运行提供配置。
- `sbi.rs`: MoOS 的内核能与底层硬件进行交互的 Rust SBI 的封装。
- `timer.rs`: 提供定时器相关的功能。
- `entry.asm`: 系统的汇编语言入口点，设置了初始的栈指针，然后跳转到 rust_main 函数。
<!-- - `lang_items.rs`: 提供了 Rust 的一些语言项，例如 panic 处理函数。 -->

## 功能模块

MoOS 的功能模块则主要包括以如下三部分，即进程管理、内存管理和文件系统管理：

- `task/`: 这是进程管理模块，负责创建、销毁、调度、中断、唤醒等进程相关的功能。
- `mm/`: 这是内存管理模块，负责虚拟内存和物理内存的管理，包括内存分配、页表管理以及地址转换。
- `fs/`: 这是文件系统模块，实现了一个虚拟文件系统，能够通过各级抽象统一调用接口，自管理缓存实现内存与外设的高速准确交互。

我们也提供另外的模块为上述内容提供基础，包括 `sync/` 和 `trap/` 模块。

- `sync/`: 包含同步原语，如原子操作和互斥体。
- `trap/`: 负责处理硬件陷阱，如时钟中断和系统调用。

## 用户态程序

我们提供了基本的用户态程序，即 `shell`。它可以接收用户的命令，并通过系统调用与内核交互，执行相应的操作。

- `syscall.rs`: 实现了 MoOS 的系统调用，遵循 Unix 规范，提供了一系列标准的接口，如文件操作、进程控制、信号处理等，它是内核与用户态程序之间的桥梁。

此外，MoOS 还包含了一些其他的模块，如 `console.rs` (负责控制台输入/输出)，以及 `boards/qemu.rs` (针对 QEMU 虚拟机的硬件配置和初始化代码)。

## 开发状态

目前 MoOS 还处于实验阶段，尚存在大量的开发和性能提升空间。我们的前期工作将作为一个基础框架，支持后续的优化和系统调用的进一步实现。

## 代码仓库

初赛阶段的代码在 GitLab 仓库的 `naive-os` 分支可见，当前为默认分支。

```sh
git clone https://gitlab.eduxiji.net/202318123101332/OSKernel2023-MoOS.git
cd OSKernel2023-MoOS
git checkout naive-os
```

## 开发及运行环境

硬件环境: QEMU emulator version 7.0.0

## 参考资料

开发过程中，我们引用和借鉴了 rCore-Tutorial 相关代码，以实现进程管理和内存管理相关部分；我们引用了 rcore-fs 仓库的 vfs 相关内容并根据我们的需要进行了修改，并独立完成实际所需文件结构和方法的编写。

<!-- # Dependencies

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
int clone(int flag,void* stack);
int execve(char* path,char** argv,char** env);//env not implemented
int gettimeofday(*timespec ts,int ts);
int nanosleep(const *timespec req,*timespec rem);//rem not implemented
```

## passed tests
```C
	"getpid",
	"getppid",
	"write",
	"gettimeofday",
	"sleep",
	"wait",
	"waitpid",
	"exit",
	"execve",
	"test_echo",
	"fork",
	"times",
	"yield",
	"clone",
	"yield",
```

# yet to do:

### File system

```c
#define SYS_openat 56
#define SYS_close 57
#define SYS_getcwd 17
#define SYS_getdents64 61 ?
#define SYS_read 63
#define SYS_write 64
#define SYS_mkdirat 34 ?
#define SYS_fstat 80
```

### Process

```c
```

### Memory

```c
#define SYS_brk 214
#define SYS_munmap 215
#define SYS_mmap 222
```

### Tests
``` C
	"times",
	...
``` -->
