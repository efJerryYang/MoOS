run:
	cd os;make all
all:
	cd os;make judge
	cp os/kernel/target/riscv64gc-unknown-none-elf/release/os.bin kernel-qemu
	cp bootloader/rustsbi-qemu.bin sbi-qemu