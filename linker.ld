MEMORY {
    ROM(rx): ORIGIN = 0x08000000, LENGTH = 2M
    RAM1(rwx):ORIGIN = 0x20020000, LENGTH = 368k
    RAM2(rwx):ORIGIN = 0x2007c000, LENGTH = 16k
}

SECTIONS{
    .text : {
        . = .+4;
        *(ivt)
        *(.text)
        *(.bss)
        *(.data)
    } > ROM
}
