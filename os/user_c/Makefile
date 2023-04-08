
clean:
	rm -rf build
build:clean
	mkdir build
	riscv64-linux-gnu-g++-11 src/main.cc -o build/main.o -c
	riscv64-linux-gnu-ld build/main.o -o build/main -T src/linker.ld -nostdlib

	# riscv64-linux-gnu-objcopy --strip-all build/main -O build/main.bin
	riscv64-linux-gnu-objdump -D build/main > build/main.asm