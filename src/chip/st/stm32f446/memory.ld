MEMORY
{
    RAM (rwx)   : ORIGIN = 0x20000000, LENGTH = 128K
    FLASH (rx)  : ORIGIN = 0x08000000, LENGTH = 512K
}

/* Enter on the Reset Handler */
ENTRY(saberResetHandler);

/* Links to the default Chip Reset Handler */
PROVIDE(saberResetHandler = chipResetHandler);
PROVIDE(saberSysTickHandler = chipSysTickHandler); 
/* This provide weak linking to empty handlers, which can be overridden */
PROVIDE(saberNmiHandler = blockingHandler);
PROVIDE(saberHardFaultHandler = blockingHandler);
PROVIDE(saberMemoryManagementFaultHandler = blockingHandler);
PROVIDE(saberBusFaultHandler = blockingHandler);
PROVIDE(saberUsageFaultHandler = blockingHandler);
PROVIDE(saberSvCallHandler = nullHandler);
PROVIDE(saberDebugMonitorHandler = nullHandler);
PROVIDE(saberPendSVHandler = nullHandler);

/* Weak Handler for main and premain */
PROVIDE(premain = nullHandler);
PROVIDE(main = blockingHandler);

SECTIONS {
    .text : {
        . = ALIGN(4);
        KEEP(*(.vector_table));
        *(.text)
        *(.text*)
        . = ALIGN(4);
    } > FLASH

    .rodata : {
        . = ALIGN(4);
        *(.rodata)
        *(.rodata*)
        . = ALIGN(4);
    } > FLASH

    .ARM.exidx : {
        __exidx_start = .;
        . = ALIGN(4);
        *(.ARM.exidx*)
        . = ALIGN(4);
        __exidx_end = .;
    } > FLASH

    .data : {
        __saber_data_start = .;
        *(.data)
        *(.data*)
        . = ALIGN(4);
        __saber_data_end = .;
    } > RAM AT> FLASH

    .bss (NOLOAD) : {
        __saber_bss_start = .;
        *(.bss*)
        . = ALIGN(4);
        __saber_bss_end = .;
    } > RAM

  __saber_data_load_addr = LOADADDR(.data);
}

PROVIDE(stackEnd = ORIGIN(RAM) + LENGTH(RAM));
