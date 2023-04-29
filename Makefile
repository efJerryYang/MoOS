run:
	cd os/user_c;make build
	cd os/kernel;make userbin
	cd os/kernel;make run

all:
	cp -r os/kernel/cargo-judge os/kernel/.cargo
	cd os/user_c;make build
	cd os/kernel;make binary
	cp os/kernel/target/riscv64gc-unknown-none-elf/release/os.bin kernel-qemu
	cp bootloader/rustsbi-qemu.bin sbi-qemu

qemu: all
	qemu-system-riscv64 \
    -machine virt \
    -nographic \
	-m 128\
    -bios sbi-qemu \
    -device loader,file=kernel-qemu,addr=0x80200000