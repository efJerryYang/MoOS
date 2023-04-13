OUTPUT_ARCH(riscv)
ENTRY(_start)

BASE_ADDRESS = 0x1000;
SECTIONS
{
    . = BASE_ADDRESS;
    .text : { 
        *(.text.entry)
        *(.text .text.*)
    }

    .bss : { 
        *(.bss .bss.*)
        *(.sbss .sbss.*)
    }

    .data : { 
        *(.data .rodata) 
        *(.sdata .sdata.*)
    }
    /DISCARD/ : {
        *(.eh_frame)
        *(.debug*)
    }
}