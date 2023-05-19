#!/bin/bash

cd ../testsuits-for-oskernel/riscv-syscalls-testing/user/

rm -rf build/
rm -rf asm/ bin/ libulib.a
rm -rf CMakeCache.txt CMakeFiles/ cmake_install.cmake riscv64/ riscv32/

cmake -DARCH=riscv64 . && make

mkdir ../../../os/testbin
mkdir ../../../os/testbin/mnt
touch ../../../os/testbin/mnt/test_mount

cp -a riscv64/* ../../../os/testbin/
cp -a src/oscomp/*.txt ../../../os/testbin/

echo "Done."