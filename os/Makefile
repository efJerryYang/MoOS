run: user userbin build
	cd kernel;make run
userbin:
	cd kernel;make userbin
build:
	cd kernel;make build
binary:
	cd kernel;make binary
asm:
	cd kernel;make asm
debug:
	cd kernel;make debug
gdb:
	cd kernel;make gdb
user:
	cd user_c;make build

all: user run

judge: user build binary

clean:
	cd kernel;cargo clean