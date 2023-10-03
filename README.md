<!-- ![hitsz-logo](docs/hitsz-logo.jpg) -->
<!-- ![pre-2023_leaderboard](docs/pre-2023_leaderboard.png) -->

# MoOS

[English](./README.md) | [中文](./README_zh.md)

## Overview

MoOS is a simple kernel designed to run on the RISC-V processor architecture, primarily implemented in Rust. The project is still under development. During the preliminary phase, our main goal was to provide a platform for team members to learn about OS architecture and the Rust language, hence the branch being named `naive-os`. This kernel is made up of modular components commonly found in operating systems, such as memory management, task scheduling, and filesystems.

MoOS has not adopted a stackless asynchronous architecture. While it's a focus for many teams this year, stackless coroutines are still a novelty in OS kernel development. 

The preliminary phase documentation can be viewed [here](./MoOS-初赛文档.pdf).

## Basic Modules

MoOS's basic modules primarily concern booting:

- `main.rs`: The system's entry point, responsible for initializing various parts of the OS and then launching user program execution.
- `config.rs`: Defines global constants, such as user stack size, kernel stack size, kernel heap size, and the end address of memory.
- `sbi.rs`: A Rust SBI wrapper allowing the MoOS kernel to interact with the underlying hardware.
- `timer.rs`: Provides timer-related functionalities.
- `entry.asm`: The assembly language entry point of the system, sets the initial stack pointer and then jumps to the `rust_main` function.
<!-- - `lang_items.rs`: Offers some Rust language items, e.g., panic handling function. -->

## Functional Modules

The functional modules of MoOS primarily consist of process management, memory management, and filesystem management:

- `task/`: This is the process management module, handling functionalities related to process creation, destruction, scheduling, interruption, and awakening.
- `mm/`: This is the memory management module, overseeing virtual and physical memory, including memory allocation, page table management, and address conversion.
- `fs/`: This is the filesystem module, implementing a virtual filesystem with a unified interface, managing its cache for efficient and accurate interaction with devices.

We also offer additional modules, such as `sync/` and `trap/`:

- `sync/`: Contains synchronization primitives, like atomic operations and mutexes.
- `trap/`: Handles hardware traps, such as clock interrupts and system calls.

## User Programs

We provide a basic user program, the `shell`. It can receive user commands and interact with the kernel via system calls to execute respective operations.

- `syscall.rs`: Implements the MoOS system calls following Unix standards, offering a series of standard interfaces like file operations, process control, signal handling, etc. It serves as a bridge between the kernel and user programs.

Additionally, MoOS includes other modules like `console.rs` (handling console input/output) and `boards/qemu.rs` (for QEMU virtual machine hardware configuration and initialization).

## Development Status

MoOS is currently experimental, with much room for further development and performance improvement. Our initial work serves as a foundational framework for subsequent optimizations and further system call implementations.

## Code Repository

The preliminary phase code can be found on the GitLab repository's `naive-os` branch, which is the current default branch.

```sh
git clone https://gitlab.eduxiji.net/202318123101332/OSKernel2023-MoOS.git
cd OSKernel2023-MoOS
git checkout naive-os
```

## Development and Running Environment

Hardware Requirement: QEMU emulator version 7.0.0

## References

During development, we referenced and adapted code from rCore-Tutorial, mainly for process and memory management. We borrowed content related to vfs from the rcore-fs repository, making necessary modifications and completing the required file structures and methods independently.
