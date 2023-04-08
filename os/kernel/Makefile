TARGET := riscv64gc-unknown-none-elf
MODE := release
APP_DIR := 
TARGET_DIR := target/$(TARGET)/$(MODE)
APPS := $(wildcard $(APP_DIR)/*.rs)
# ELFS := $(patsubst $(APP_DIR)/%.rs, $(TARGET_DIR)/%, $(APPS))
ELF := $(TARGET_DIR)/os
# BINS := $(patsubst $(APP_DIR)/%.rs, $(TARGET_DIR)/%.bin, $(APPS))
BINS := $(patsubst $(APP_DIR)/%.rs, $(TARGET_DIR)/%.bin, $(APPS))

OBJDUMP := rust-objdump --arch-name=riscv64
OBJCOPY := rust-objcopy --binary-architecture=riscv64

binary:
	$(OBJCOPY)  $(ELF) --strip-all -O binary $(patsubst $(TARGET_DIR)/%, $(TARGET_DIR)/%.bin, $(ELF))
	# $(OBJDUMP) -D $(ELF) > $(TARGET_DIR)/os.asm

build: binary
	cargo build --release

run: build binary
	qemu-system-riscv64 \
    -machine virt \
    -nographic \
    -bios ../../bootloader/rustsbi-qemu.bin \
    -device loader,file=$(TARGET_DIR)/os.bin,addr=0x80200000

