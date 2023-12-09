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
PROVIDE(saberWWDGHandler = nullHandler); 
PROVIDE(saberTAMP_STAMPHandler = nullHandler); 
PROVIDE(saberRTC_WKUPHandler = nullHandler); 
PROVIDE(saberFLASHHandler = nullHandler); 
PROVIDE(saberRCCHandler = nullHandler); 
PROVIDE(saberEXTI0Handler = nullHandler); 
PROVIDE(saberEXTI1Handler = nullHandler); 
PROVIDE(saberEXTI2Handler = nullHandler); 
PROVIDE(saberEXTI3Handler = nullHandler); 
PROVIDE(saberEXTI4Handler = nullHandler); 
PROVIDE(saberDMA1_Stream0Handler = nullHandler); 
PROVIDE(saberDMA1_Stream1Handler = nullHandler); 
PROVIDE(saberDMA1_Stream2Handler = nullHandler); 
PROVIDE(saberDMA1_Stream3Handler = nullHandler); 
PROVIDE(saberDMA1_Stream4Handler = nullHandler); 
PROVIDE(saberDMA1_Stream5Handler = nullHandler); 
PROVIDE(saberDMA1_Stream6Handler = nullHandler); 
PROVIDE(saberADCHandler = nullHandler); 
PROVIDE(saberCAN1_TXHandler = nullHandler); 
PROVIDE(saberCAN1_RX0Handler = nullHandler); 
PROVIDE(saberCAN1_RX1Handler = nullHandler); 
PROVIDE(saberCAN1_SCEHandler = nullHandler); 
PROVIDE(saberEXTI9_5Handler = nullHandler); 
PROVIDE(saberTIM1_BRK_TIM9Handler = nullHandler); 
PROVIDE(saberTIM1_UP_TIM10Handler = nullHandler); 
PROVIDE(saberTIM1_TRG_COM_TIM11Handler = nullHandler); 
PROVIDE(saberTIM1_CCHandler = nullHandler); 
PROVIDE(saberTIM2Handler = nullHandler); 
PROVIDE(saberTIM3Handler = nullHandler); 
PROVIDE(saberTIM4Handler = nullHandler); 
PROVIDE(saberI2C1_EVHandler = nullHandler); 
PROVIDE(saberI2C1_ERHandler = nullHandler); 
PROVIDE(saberI2C2_EVHandler = nullHandler); 
PROVIDE(saberI2C2_ERHandler = nullHandler); 
PROVIDE(saberSPI1Handler = nullHandler); 
PROVIDE(saberSPI2Handler = nullHandler); 
PROVIDE(saberUSART1Handler = nullHandler); 
PROVIDE(saberUSART2Handler = nullHandler); 
PROVIDE(saberUSART3Handler = nullHandler); 
PROVIDE(saberEXTI15_10Handler = nullHandler); 
PROVIDE(saberRTC_AlarmHandler = nullHandler); 
PROVIDE(saberOTG_FS_WKUPHandler = nullHandler); 
PROVIDE(saberTIM8_BRK_TIM12Handler = nullHandler); 
PROVIDE(saberTIM8_UP_TIM13Handler = nullHandler); 
PROVIDE(saberTIM8_TRG_COM_TIM14Handler = nullHandler); 
PROVIDE(saberTIM8_CCHandler = nullHandler); 
PROVIDE(saberDMA1_Stream7Handler = nullHandler); 
PROVIDE(saberFMCHandler = nullHandler); 
PROVIDE(saberTIM5Handler = nullHandler); 
PROVIDE(saberSPI3Handler = nullHandler); 
PROVIDE(saberUART4Handler = nullHandler); 
PROVIDE(saberUART5Handler = nullHandler); 
PROVIDE(saberTIM6_DACHandler = nullHandler); 
PROVIDE(saberTIM7Handler = nullHandler); 
PROVIDE(saberDMA2_Stream0Handler = nullHandler); 
PROVIDE(saberDMA2_Stream1Handler = nullHandler); 
PROVIDE(saberDMA2_Stream2Handler = nullHandler); 
PROVIDE(saberDMA2_Stream3Handler = nullHandler); 
PROVIDE(saberDMA2_Stream4Handler = nullHandler); 
PROVIDE(saberETHHandler = nullHandler); 
PROVIDE(saberETH_WKUPHandler = nullHandler); 
PROVIDE(saberCAN2_TXHandler = nullHandler); 
PROVIDE(saberCAN2_RX0Handler = nullHandler); 
PROVIDE(saberCAN2_RX1Handler = nullHandler); 
PROVIDE(saberCAN2_SCEHandler = nullHandler); 
PROVIDE(saberOTG_FSHandler = nullHandler); 
PROVIDE(saberDMA2_Stream5Handler = nullHandler); 
PROVIDE(saberDMA2_Stream6Handler = nullHandler); 
PROVIDE(saberDMA2_Stream7Handler = nullHandler); 
PROVIDE(saberUSART6Handler = nullHandler); 
PROVIDE(saberI2C3_EVHandler = nullHandler); 
PROVIDE(saberI2C3_ERHandler = nullHandler); 
PROVIDE(saberDCMIHandler = nullHandler); 
PROVIDE(saberFPUHandler = nullHandler); 
PROVIDE(saberUART7Handler = nullHandler); 
PROVIDE(saberUART8Handler = nullHandler); 
PROVIDE(saberSPI4Handler = nullHandler); 
PROVIDE(saberLCD_TFTHandler = nullHandler); 
PROVIDE(saberLCD_TFT_1Handler = nullHandler); 

/* Weak Handler for main and premain */
PROVIDE(premain = nullHandler);
PROVIDE(main = blockingHandler);

/* Will auto match any unmatched handlers with nullHandler. */
/* This allows for things to be a lot more flexible... */

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
