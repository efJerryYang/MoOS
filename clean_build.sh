#!/bin/bash

cd testsuits-for-oskernel/riscv-syscalls-testing/user/

rm -rf build/
rm -rf asm/ bin/ libulib.a
rm -rf CMakeCache.txt CMakeFiles/ cmake_install.cmake riscv64/ riscv32/

echo 'Done."
