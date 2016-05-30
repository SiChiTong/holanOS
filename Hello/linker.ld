ENTRY(_start)
 
SECTIONS
{
    /* Starts at LOADER_ADDR. */
    /* 0x10000 for qemu emulation, change to 0x8000 for real device */
    . = 0x10000;
    __start = .;
    __text_start = .;
    .text :
    {
        KEEP(*(.text.boot))
        *(.text)
    }
}
