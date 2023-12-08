const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    ///  STM32F446
    pub const STM32F446 = struct {
        pub const properties = struct {
            pub const @"cpu.endian" = "little";
            pub const @"cpu.mpuPresent" = "false";
            pub const @"cpu.revision" = "r1p0";
            pub const @"cpu.name" = "CM4";
            pub const @"cpu.nvicPrioBits" = "3";
            pub const @"cpu.vendorSystickConfig" = "false";
            pub const @"cpu.fpuPresent" = "false";
        };

        pub const VectorTable = extern struct {
            const Handler = micro.interrupt.Handler;
            const unhandled = micro.interrupt.unhandled;

            initial_stack_pointer: u32,
            Reset: Handler = unhandled,
            NMI: Handler = unhandled,
            HardFault: Handler = unhandled,
            MemManageFault: Handler = unhandled,
            BusFault: Handler = unhandled,
            UsageFault: Handler = unhandled,
            reserved5: [4]u32 = undefined,
            SVCall: Handler = unhandled,
            reserved10: [2]u32 = undefined,
            PendSV: Handler = unhandled,
            SysTick: Handler = unhandled,
            ///  Window Watchdog interrupt
            WWDG: Handler = unhandled,
            reserved15: [1]u32 = undefined,
            ///  Tamper and TimeStamp interrupts through the EXTI line
            TAMP_STAMP: Handler = unhandled,
            ///  RTC Wakeup interrupt through the EXTI line
            RTC_WKUP: Handler = unhandled,
            ///  Flash global interrupt
            FLASH: Handler = unhandled,
            ///  RCC global interrupt
            RCC: Handler = unhandled,
            ///  EXTI Line0 interrupt
            EXTI0: Handler = unhandled,
            ///  EXTI Line1 interrupt
            EXTI1: Handler = unhandled,
            ///  EXTI Line2 interrupt
            EXTI2: Handler = unhandled,
            ///  EXTI Line3 interrupt
            EXTI3: Handler = unhandled,
            ///  EXTI Line4 interrupt
            EXTI4: Handler = unhandled,
            ///  DMA1 Stream0 global interrupt
            DMA1_Stream0: Handler = unhandled,
            ///  DMA1 Stream1 global interrupt
            DMA1_Stream1: Handler = unhandled,
            ///  DMA1 Stream2 global interrupt
            DMA1_Stream2: Handler = unhandled,
            ///  DMA1 Stream3 global interrupt
            DMA1_Stream3: Handler = unhandled,
            ///  DMA1 Stream4 global interrupt
            DMA1_Stream4: Handler = unhandled,
            ///  DMA1 Stream5 global interrupt
            DMA1_Stream5: Handler = unhandled,
            ///  DMA1 Stream6 global interrupt
            DMA1_Stream6: Handler = unhandled,
            ///  ADC1 global interrupt
            ADC: Handler = unhandled,
            ///  CAN1 TX interrupts
            CAN1_TX: Handler = unhandled,
            ///  CAN1 RX0 interrupts
            CAN1_RX0: Handler = unhandled,
            ///  CAN1 RX1 interrupts
            CAN1_RX1: Handler = unhandled,
            ///  CAN1 SCE interrupt
            CAN1_SCE: Handler = unhandled,
            ///  EXTI Line[9:5] interrupts
            EXTI9_5: Handler = unhandled,
            ///  TIM1 Break interrupt and TIM9 global interrupt
            TIM1_BRK_TIM9: Handler = unhandled,
            ///  TIM1 Update interrupt and TIM10 global interrupt
            TIM1_UP_TIM10: Handler = unhandled,
            ///  TIM1 Trigger and Commutation interrupts and TIM11 global interrupt
            TIM1_TRG_COM_TIM11: Handler = unhandled,
            ///  TIM1 Capture Compare interrupt
            TIM1_CC: Handler = unhandled,
            ///  TIM2 global interrupt
            TIM2: Handler = unhandled,
            ///  TIM3 global interrupt
            TIM3: Handler = unhandled,
            ///  TIM4 global interrupt
            TIM4: Handler = unhandled,
            ///  I2C1 event interrupt
            I2C1_EV: Handler = unhandled,
            ///  I2C1 error interrupt
            I2C1_ER: Handler = unhandled,
            ///  I2C2 event interrupt
            I2C2_EV: Handler = unhandled,
            ///  I2C2 error interrupt
            I2C2_ER: Handler = unhandled,
            ///  SPI1 global interrupt
            SPI1: Handler = unhandled,
            ///  SPI2 global interrupt
            SPI2: Handler = unhandled,
            ///  USART1 global interrupt
            USART1: Handler = unhandled,
            ///  USART2 global interrupt
            USART2: Handler = unhandled,
            ///  USART3 global interrupt
            USART3: Handler = unhandled,
            ///  EXTI Line[15:10] interrupts
            EXTI15_10: Handler = unhandled,
            ///  RTC Alarms (A and B) through EXTI line interrupt
            RTC_Alarm: Handler = unhandled,
            ///  USB On-The-Go FS Wakeup through EXTI line interrupt
            OTG_FS_WKUP: Handler = unhandled,
            ///  TIM8 Break interrupt and TIM12 global interrupt
            TIM8_BRK_TIM12: Handler = unhandled,
            ///  TIM8 Update interrupt and TIM13 global interrupt
            TIM8_UP_TIM13: Handler = unhandled,
            ///  TIM8 Trigger and Commutation interrupts and TIM14 global interrupt
            TIM8_TRG_COM_TIM14: Handler = unhandled,
            ///  TIM8 Capture Compare interrupt
            TIM8_CC: Handler = unhandled,
            ///  DMA1 Stream7 global interrupt
            DMA1_Stream7: Handler = unhandled,
            ///  FMC global interrupt
            FMC: Handler = unhandled,
            reserved63: [1]u32 = undefined,
            ///  TIM5 global interrupt
            TIM5: Handler = unhandled,
            ///  SPI3 global interrupt
            SPI3: Handler = unhandled,
            ///  UART4 global interrupt
            UART4: Handler = unhandled,
            ///  UART5 global interrupt
            UART5: Handler = unhandled,
            ///  TIM6 global interrupt, DAC1 and DAC2 underrun error interrupt
            TIM6_DAC: Handler = unhandled,
            ///  TIM7 global interrupt
            TIM7: Handler = unhandled,
            ///  DMA2 Stream0 global interrupt
            DMA2_Stream0: Handler = unhandled,
            ///  DMA2 Stream1 global interrupt
            DMA2_Stream1: Handler = unhandled,
            ///  DMA2 Stream2 global interrupt
            DMA2_Stream2: Handler = unhandled,
            ///  DMA2 Stream3 global interrupt
            DMA2_Stream3: Handler = unhandled,
            ///  DMA2 Stream4 global interrupt
            DMA2_Stream4: Handler = unhandled,
            ///  Ethernet global interrupt
            ETH: Handler = unhandled,
            ///  Ethernet Wakeup through EXTI line interrupt
            ETH_WKUP: Handler = unhandled,
            ///  CAN2 TX interrupts
            CAN2_TX: Handler = unhandled,
            ///  CAN2 RX0 interrupts
            CAN2_RX0: Handler = unhandled,
            ///  CAN2 RX1 interrupts
            CAN2_RX1: Handler = unhandled,
            ///  CAN2 SCE interrupt
            CAN2_SCE: Handler = unhandled,
            ///  USB On The Go FS global interrupt
            OTG_FS: Handler = unhandled,
            ///  DMA2 Stream5 global interrupt
            DMA2_Stream5: Handler = unhandled,
            ///  DMA2 Stream6 global interrupt
            DMA2_Stream6: Handler = unhandled,
            ///  DMA2 Stream7 global interrupt
            DMA2_Stream7: Handler = unhandled,
            ///  USART6 global interrupt
            USART6: Handler = unhandled,
            ///  I2C3 event interrupt
            I2C3_EV: Handler = unhandled,
            ///  I2C3 error interrupt
            I2C3_ER: Handler = unhandled,
            reserved88: [4]u32 = undefined,
            ///  DCMI global interrupt
            DCMI: Handler = unhandled,
            reserved93: [2]u32 = undefined,
            ///  Floating point unit interrupt
            FPU: Handler = unhandled,
            ///  UART 7 global interrupt
            UART7: Handler = unhandled,
            ///  UART 8 global interrupt
            UART8: Handler = unhandled,
            ///  SPI 4 global interrupt
            SPI4: Handler = unhandled,
            reserved99: [3]u32 = undefined,
            ///  LTDC global interrupt
            LCD_TFT: Handler = unhandled,
            ///  LTDC global error interrupt
            LCD_TFT_1: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  General purpose timers
            pub const TIM2: *volatile types.peripherals.TIM2 = @ptrFromInt(0x40000000);
            ///  General purpose timers
            pub const TIM3: *volatile types.peripherals.TIM3 = @ptrFromInt(0x40000400);
            ///  General purpose timers
            pub const TIM4: *volatile types.peripherals.TIM3 = @ptrFromInt(0x40000800);
            ///  General-purpose-timers
            pub const TIM5: *volatile types.peripherals.TIM5 = @ptrFromInt(0x40000c00);
            ///  Basic timers
            pub const TIM6: *volatile types.peripherals.TIM6 = @ptrFromInt(0x40001000);
            ///  Basic timers
            pub const TIM7: *volatile types.peripherals.TIM6 = @ptrFromInt(0x40001400);
            ///  General purpose timers
            pub const TIM12: *volatile types.peripherals.TIM9 = @ptrFromInt(0x40001800);
            ///  General-purpose-timers
            pub const TIM13: *volatile types.peripherals.TIM10 = @ptrFromInt(0x40001c00);
            ///  General-purpose-timers
            pub const TIM14: *volatile types.peripherals.TIM10 = @ptrFromInt(0x40002000);
            ///  Real-time clock
            pub const RTC: *volatile types.peripherals.RTC = @ptrFromInt(0x40002800);
            ///  Window watchdog
            pub const WWDG: *volatile types.peripherals.WWDG = @ptrFromInt(0x40002c00);
            ///  Independent watchdog
            pub const IWDG: *volatile types.peripherals.IWDG = @ptrFromInt(0x40003000);
            ///  Serial peripheral interface
            pub const SPI2: *volatile types.peripherals.SPI1 = @ptrFromInt(0x40003800);
            ///  Serial peripheral interface
            pub const SPI3: *volatile types.peripherals.SPI1 = @ptrFromInt(0x40003c00);
            ///  Receiver Interface
            pub const SPDIF_RX: *volatile types.peripherals.SPDIF_RX = @ptrFromInt(0x40004000);
            ///  Universal synchronous asynchronous receiver transmitter
            pub const USART2: *volatile types.peripherals.USART6 = @ptrFromInt(0x40004400);
            ///  Universal synchronous asynchronous receiver transmitter
            pub const USART3: *volatile types.peripherals.USART6 = @ptrFromInt(0x40004800);
            ///  Universal synchronous asynchronous receiver transmitter
            pub const UART4: *volatile types.peripherals.UART4 = @ptrFromInt(0x40004c00);
            ///  Universal synchronous asynchronous receiver transmitter
            pub const UART5: *volatile types.peripherals.UART4 = @ptrFromInt(0x40005000);
            ///  Inter-integrated circuit
            pub const I2C1: *volatile types.peripherals.I2C3 = @ptrFromInt(0x40005400);
            ///  Inter-integrated circuit
            pub const I2C2: *volatile types.peripherals.I2C3 = @ptrFromInt(0x40005800);
            ///  Inter-integrated circuit
            pub const I2C3: *volatile types.peripherals.I2C3 = @ptrFromInt(0x40005c00);
            ///  Controller area network
            pub const CAN1: *volatile types.peripherals.CAN1 = @ptrFromInt(0x40006400);
            ///  Controller area network
            pub const CAN2: *volatile types.peripherals.CAN1 = @ptrFromInt(0x40006800);
            ///  HDMI-CEC controller
            pub const HDMI_CEC: *volatile types.peripherals.HDMI_CEC = @ptrFromInt(0x40006c00);
            ///  Power control
            pub const PWR: *volatile types.peripherals.PWR = @ptrFromInt(0x40007000);
            ///  Digital-to-analog converter
            pub const DAC: *volatile types.peripherals.DAC = @ptrFromInt(0x40007400);
            ///  Advanced-timers
            pub const TIM1: *volatile types.peripherals.TIM1 = @ptrFromInt(0x40010000);
            ///  Advanced-timers
            pub const TIM8: *volatile types.peripherals.TIM1 = @ptrFromInt(0x40010400);
            ///  Universal synchronous asynchronous receiver transmitter
            pub const USART1: *volatile types.peripherals.USART6 = @ptrFromInt(0x40011000);
            ///  Universal synchronous asynchronous receiver transmitter
            pub const USART6: *volatile types.peripherals.USART6 = @ptrFromInt(0x40011400);
            ///  Analog-to-digital converter
            pub const ADC1: *volatile types.peripherals.ADC1 = @ptrFromInt(0x40012000);
            ///  Analog-to-digital converter
            pub const ADC2: *volatile types.peripherals.ADC1 = @ptrFromInt(0x40012100);
            ///  Analog-to-digital converter
            pub const ADC3: *volatile types.peripherals.ADC1 = @ptrFromInt(0x40012200);
            ///  Common ADC registers
            pub const C_ADC: *volatile types.peripherals.C_ADC = @ptrFromInt(0x40012300);
            ///  SDMMC
            pub const SDMMC: *volatile types.peripherals.SDMMC = @ptrFromInt(0x40012c00);
            ///  Serial peripheral interface
            pub const SPI1: *volatile types.peripherals.SPI1 = @ptrFromInt(0x40013000);
            ///  Serial peripheral interface
            pub const SPI4: *volatile types.peripherals.SPI1 = @ptrFromInt(0x40013400);
            ///  System configuration controller
            pub const SYSCFG: *volatile types.peripherals.SYSCFG = @ptrFromInt(0x40013800);
            ///  External interrupt/event controller
            pub const EXTI: *volatile types.peripherals.EXTI = @ptrFromInt(0x40013c00);
            ///  General purpose timers
            pub const TIM9: *volatile types.peripherals.TIM9 = @ptrFromInt(0x40014000);
            ///  General-purpose-timers
            pub const TIM10: *volatile types.peripherals.TIM10 = @ptrFromInt(0x40014400);
            ///  General-purpose-timers
            pub const TIM11: *volatile types.peripherals.TIM11 = @ptrFromInt(0x40014800);
            ///  Serial audio interface
            pub const SAI1: *volatile types.peripherals.SAI1 = @ptrFromInt(0x40015800);
            ///  Serial audio interface
            pub const SAI2: *volatile types.peripherals.SAI1 = @ptrFromInt(0x40015c00);
            ///  General-purpose I/Os
            pub const GPIOA: *volatile types.peripherals.GPIOA = @ptrFromInt(0x40020000);
            ///  General-purpose I/Os
            pub const GPIOB: *volatile types.peripherals.GPIOB = @ptrFromInt(0x40020400);
            ///  General-purpose I/Os
            pub const GPIOC: *volatile types.peripherals.GPIOH = @ptrFromInt(0x40020800);
            ///  General-purpose I/Os
            pub const GPIOD: *volatile types.peripherals.GPIOH = @ptrFromInt(0x40020c00);
            ///  General-purpose I/Os
            pub const GPIOE: *volatile types.peripherals.GPIOH = @ptrFromInt(0x40021000);
            ///  General-purpose I/Os
            pub const GPIOF: *volatile types.peripherals.GPIOH = @ptrFromInt(0x40021400);
            ///  General-purpose I/Os
            pub const GPIOG: *volatile types.peripherals.GPIOH = @ptrFromInt(0x40021800);
            ///  General-purpose I/Os
            pub const GPIOH: *volatile types.peripherals.GPIOH = @ptrFromInt(0x40021c00);
            ///  Cryptographic processor
            pub const CRC: *volatile types.peripherals.CRC = @ptrFromInt(0x40023000);
            ///  Reset and clock control
            pub const RCC: *volatile types.peripherals.RCC = @ptrFromInt(0x40023800);
            ///  FLASH
            pub const FLASH: *volatile types.peripherals.FLASH = @ptrFromInt(0x40023c00);
            ///  DMA controller
            pub const DMA1: *volatile types.peripherals.DMA2 = @ptrFromInt(0x40026000);
            ///  DMA controller
            pub const DMA2: *volatile types.peripherals.DMA2 = @ptrFromInt(0x40026400);
            ///  USB on the go high speed
            pub const OTG_HS_GLOBAL: *volatile types.peripherals.OTG_HS_GLOBAL = @ptrFromInt(0x40040000);
            ///  USB on the go high speed
            pub const OTG_HS_HOST: *volatile types.peripherals.OTG_HS_HOST = @ptrFromInt(0x40040400);
            ///  USB on the go high speed
            pub const OTG_HS_DEVICE: *volatile types.peripherals.OTG_HS_DEVICE = @ptrFromInt(0x40040800);
            ///  USB on the go high speed
            pub const OTG_HS_PWRCLK: *volatile types.peripherals.OTG_HS_PWRCLK = @ptrFromInt(0x40040e00);
            ///  USB on the go full speed
            pub const OTG_FS_GLOBAL: *volatile types.peripherals.OTG_FS_GLOBAL = @ptrFromInt(0x50000000);
            ///  USB on the go full speed
            pub const OTG_FS_HOST: *volatile types.peripherals.OTG_FS_HOST = @ptrFromInt(0x50000400);
            ///  USB on the go full speed
            pub const OTG_FS_DEVICE: *volatile types.peripherals.OTG_FS_DEVICE = @ptrFromInt(0x50000800);
            ///  USB on the go full speed
            pub const OTG_FS_PWRCLK: *volatile types.peripherals.OTG_FS_PWRCLK = @ptrFromInt(0x50000e00);
            ///  Digital camera interface
            pub const DCMI: *volatile types.peripherals.DCMI = @ptrFromInt(0x50050000);
            ///  Flexible memory controller
            pub const FMC: *volatile types.peripherals.FMC = @ptrFromInt(0xa0000000);
            ///  QuadSPI interface
            pub const QUADSPI: *volatile types.peripherals.QUADSPI = @ptrFromInt(0xa0001000);
            ///  System control block ACTLR
            pub const SCB_ACTRL: *volatile types.peripherals.SCB_ACTRL = @ptrFromInt(0xe000e008);
            ///  SysTick timer
            pub const STK: *volatile types.peripherals.STK = @ptrFromInt(0xe000e010);
            ///  Nested Vectored Interrupt Controller
            pub const NVIC: *volatile types.peripherals.NVIC = @ptrFromInt(0xe000e100);
            ///  System control block
            pub const SCB: *volatile types.peripherals.SCB = @ptrFromInt(0xe000ed00);
            ///  Floating point unit CPACR
            pub const FPU_CPACR: *volatile types.peripherals.FPU_CPACR = @ptrFromInt(0xe000ed88);
            ///  Memory protection unit
            pub const MPU: *volatile types.peripherals.MPU = @ptrFromInt(0xe000ed90);
            ///  Nested vectored interrupt controller
            pub const NVIC_STIR: *volatile types.peripherals.NVIC_STIR = @ptrFromInt(0xe000ef00);
            ///  Floting point unit
            pub const FPU: *volatile types.peripherals.FPU = @ptrFromInt(0xe000ef34);
            ///  Debug support
            pub const DBG: *volatile types.peripherals.DBG = @ptrFromInt(0xe0042000);
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Digital camera interface
        pub const DCMI = extern struct {
            ///  control register 1
            CR: mmio.Mmio(packed struct(u32) {
                ///  Capture enable
                CAPTURE: u1,
                ///  Capture mode
                CM: u1,
                ///  Crop feature
                CROP: u1,
                ///  JPEG format
                JPEG: u1,
                ///  Embedded synchronization select
                ESS: u1,
                ///  Pixel clock polarity
                PCKPOL: u1,
                ///  Horizontal synchronization polarity
                HSPOL: u1,
                ///  Vertical synchronization polarity
                VSPOL: u1,
                ///  Frame capture rate control
                FCRC: u2,
                ///  Extended data mode
                EDM: u2,
                reserved14: u2,
                ///  DCMI enable
                ENABLE: u1,
                reserved16: u1,
                ///  Byte Select mode
                BSM: u2,
                ///  Odd/Even Byte Select
                OEBS: u1,
                ///  Line Select mode
                LSM: u1,
                ///  Odd/Even Line Select
                OELS: u1,
                padding: u11,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  HSYNC
                HSYNC: u1,
                ///  VSYNC
                VSYNC: u1,
                ///  FIFO not empty
                FNE: u1,
                padding: u29,
            }),
            ///  raw interrupt status register
            RIS: mmio.Mmio(packed struct(u32) {
                ///  Capture complete raw interrupt status
                FRAME_RIS: u1,
                ///  Overrun raw interrupt status
                OVR_RIS: u1,
                ///  Synchronization error raw interrupt status
                ERR_RIS: u1,
                ///  VSYNC raw interrupt status
                VSYNC_RIS: u1,
                ///  Line raw interrupt status
                LINE_RIS: u1,
                padding: u27,
            }),
            ///  interrupt enable register
            IER: mmio.Mmio(packed struct(u32) {
                ///  Capture complete interrupt enable
                FRAME_IE: u1,
                ///  Overrun interrupt enable
                OVR_IE: u1,
                ///  Synchronization error interrupt enable
                ERR_IE: u1,
                ///  VSYNC interrupt enable
                VSYNC_IE: u1,
                ///  Line interrupt enable
                LINE_IE: u1,
                padding: u27,
            }),
            ///  masked interrupt status register
            MIS: mmio.Mmio(packed struct(u32) {
                ///  Capture complete masked interrupt status
                FRAME_MIS: u1,
                ///  Overrun masked interrupt status
                OVR_MIS: u1,
                ///  Synchronization error masked interrupt status
                ERR_MIS: u1,
                ///  VSYNC masked interrupt status
                VSYNC_MIS: u1,
                ///  Line masked interrupt status
                LINE_MIS: u1,
                padding: u27,
            }),
            ///  interrupt clear register
            ICR: mmio.Mmio(packed struct(u32) {
                ///  Capture complete interrupt status clear
                FRAME_ISC: u1,
                ///  Overrun interrupt status clear
                OVR_ISC: u1,
                ///  Synchronization error interrupt status clear
                ERR_ISC: u1,
                ///  Vertical synch interrupt status clear
                VSYNC_ISC: u1,
                ///  line interrupt status clear
                LINE_ISC: u1,
                padding: u27,
            }),
            ///  embedded synchronization code register
            ESCR: mmio.Mmio(packed struct(u32) {
                ///  Frame start delimiter code
                FSC: u8,
                ///  Line start delimiter code
                LSC: u8,
                ///  Line end delimiter code
                LEC: u8,
                ///  Frame end delimiter code
                FEC: u8,
            }),
            ///  embedded synchronization unmask register
            ESUR: mmio.Mmio(packed struct(u32) {
                ///  Frame start delimiter unmask
                FSU: u8,
                ///  Line start delimiter unmask
                LSU: u8,
                ///  Line end delimiter unmask
                LEU: u8,
                ///  Frame end delimiter unmask
                FEU: u8,
            }),
            ///  crop window start
            CWSTRT: mmio.Mmio(packed struct(u32) {
                ///  Horizontal offset count
                HOFFCNT: u14,
                reserved16: u2,
                ///  Vertical start line count
                VST: u13,
                padding: u3,
            }),
            ///  crop window size
            CWSIZE: mmio.Mmio(packed struct(u32) {
                ///  Capture count
                CAPCNT: u14,
                reserved16: u2,
                ///  Vertical line count
                VLINE: u14,
                padding: u2,
            }),
            ///  data register
            DR: mmio.Mmio(packed struct(u32) {
                ///  Data byte 0
                Byte0: u8,
                ///  Data byte 1
                Byte1: u8,
                ///  Data byte 2
                Byte2: u8,
                ///  Data byte 3
                Byte3: u8,
            }),
        };

        ///  Flexible memory controller
        pub const FMC = extern struct {
            ///  SRAM/NOR-Flash chip-select control register 1
            BCR1: mmio.Mmio(packed struct(u32) {
                ///  MBKEN
                MBKEN: u1,
                ///  MUXEN
                MUXEN: u1,
                ///  MTYP
                MTYP: u2,
                ///  MWID
                MWID: u2,
                ///  FACCEN
                FACCEN: u1,
                reserved8: u1,
                ///  BURSTEN
                BURSTEN: u1,
                ///  WAITPOL
                WAITPOL: u1,
                reserved11: u1,
                ///  WAITCFG
                WAITCFG: u1,
                ///  WREN
                WREN: u1,
                ///  WAITEN
                WAITEN: u1,
                ///  EXTMOD
                EXTMOD: u1,
                ///  ASYNCWAIT
                ASYNCWAIT: u1,
                reserved19: u3,
                ///  CBURSTRW
                CBURSTRW: u1,
                ///  CCLKEN
                CCLKEN: u1,
                padding: u11,
            }),
            ///  SRAM/NOR-Flash chip-select timing register 1
            BTR1: mmio.Mmio(packed struct(u32) {
                ///  ADDSET
                ADDSET: u4,
                ///  ADDHLD
                ADDHLD: u4,
                ///  DATAST
                DATAST: u8,
                ///  BUSTURN
                BUSTURN: u4,
                ///  CLKDIV
                CLKDIV: u4,
                ///  DATLAT
                DATLAT: u4,
                ///  ACCMOD
                ACCMOD: u2,
                padding: u2,
            }),
            ///  SRAM/NOR-Flash chip-select control register 2
            BCR2: mmio.Mmio(packed struct(u32) {
                ///  MBKEN
                MBKEN: u1,
                ///  MUXEN
                MUXEN: u1,
                ///  MTYP
                MTYP: u2,
                ///  MWID
                MWID: u2,
                ///  FACCEN
                FACCEN: u1,
                reserved8: u1,
                ///  BURSTEN
                BURSTEN: u1,
                ///  WAITPOL
                WAITPOL: u1,
                ///  WRAPMOD
                WRAPMOD: u1,
                ///  WAITCFG
                WAITCFG: u1,
                ///  WREN
                WREN: u1,
                ///  WAITEN
                WAITEN: u1,
                ///  EXTMOD
                EXTMOD: u1,
                ///  ASYNCWAIT
                ASYNCWAIT: u1,
                reserved19: u3,
                ///  CBURSTRW
                CBURSTRW: u1,
                padding: u12,
            }),
            ///  SRAM/NOR-Flash chip-select timing register 2
            BTR2: mmio.Mmio(packed struct(u32) {
                ///  ADDSET
                ADDSET: u4,
                ///  ADDHLD
                ADDHLD: u4,
                ///  DATAST
                DATAST: u8,
                ///  BUSTURN
                BUSTURN: u4,
                ///  CLKDIV
                CLKDIV: u4,
                ///  DATLAT
                DATLAT: u4,
                ///  ACCMOD
                ACCMOD: u2,
                padding: u2,
            }),
            ///  SRAM/NOR-Flash chip-select control register 3
            BCR3: mmio.Mmio(packed struct(u32) {
                ///  MBKEN
                MBKEN: u1,
                ///  MUXEN
                MUXEN: u1,
                ///  MTYP
                MTYP: u2,
                ///  MWID
                MWID: u2,
                ///  FACCEN
                FACCEN: u1,
                reserved8: u1,
                ///  BURSTEN
                BURSTEN: u1,
                ///  WAITPOL
                WAITPOL: u1,
                ///  WRAPMOD
                WRAPMOD: u1,
                ///  WAITCFG
                WAITCFG: u1,
                ///  WREN
                WREN: u1,
                ///  WAITEN
                WAITEN: u1,
                ///  EXTMOD
                EXTMOD: u1,
                ///  ASYNCWAIT
                ASYNCWAIT: u1,
                reserved19: u3,
                ///  CBURSTRW
                CBURSTRW: u1,
                padding: u12,
            }),
            ///  SRAM/NOR-Flash chip-select timing register 3
            BTR3: mmio.Mmio(packed struct(u32) {
                ///  ADDSET
                ADDSET: u4,
                ///  ADDHLD
                ADDHLD: u4,
                ///  DATAST
                DATAST: u8,
                ///  BUSTURN
                BUSTURN: u4,
                ///  CLKDIV
                CLKDIV: u4,
                ///  DATLAT
                DATLAT: u4,
                ///  ACCMOD
                ACCMOD: u2,
                padding: u2,
            }),
            ///  SRAM/NOR-Flash chip-select control register 4
            BCR4: mmio.Mmio(packed struct(u32) {
                ///  MBKEN
                MBKEN: u1,
                ///  MUXEN
                MUXEN: u1,
                ///  MTYP
                MTYP: u2,
                ///  MWID
                MWID: u2,
                ///  FACCEN
                FACCEN: u1,
                reserved8: u1,
                ///  BURSTEN
                BURSTEN: u1,
                ///  WAITPOL
                WAITPOL: u1,
                ///  WRAPMOD
                WRAPMOD: u1,
                ///  WAITCFG
                WAITCFG: u1,
                ///  WREN
                WREN: u1,
                ///  WAITEN
                WAITEN: u1,
                ///  EXTMOD
                EXTMOD: u1,
                ///  ASYNCWAIT
                ASYNCWAIT: u1,
                reserved19: u3,
                ///  CBURSTRW
                CBURSTRW: u1,
                padding: u12,
            }),
            ///  SRAM/NOR-Flash chip-select timing register 4
            BTR4: mmio.Mmio(packed struct(u32) {
                ///  ADDSET
                ADDSET: u4,
                ///  ADDHLD
                ADDHLD: u4,
                ///  DATAST
                DATAST: u8,
                ///  BUSTURN
                BUSTURN: u4,
                ///  CLKDIV
                CLKDIV: u4,
                ///  DATLAT
                DATLAT: u4,
                ///  ACCMOD
                ACCMOD: u2,
                padding: u2,
            }),
            reserved96: [64]u8,
            ///  PC Card/NAND Flash control register 2
            PCR2: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  PWAITEN
                PWAITEN: u1,
                ///  PBKEN
                PBKEN: u1,
                ///  PTYP
                PTYP: u1,
                ///  PWID
                PWID: u2,
                ///  ECCEN
                ECCEN: u1,
                reserved9: u2,
                ///  TCLR
                TCLR: u4,
                ///  TAR
                TAR: u4,
                ///  ECCPS
                ECCPS: u3,
                padding: u12,
            }),
            ///  FIFO status and interrupt register 2
            SR2: mmio.Mmio(packed struct(u32) {
                ///  IRS
                IRS: u1,
                ///  ILS
                ILS: u1,
                ///  IFS
                IFS: u1,
                ///  IREN
                IREN: u1,
                ///  ILEN
                ILEN: u1,
                ///  IFEN
                IFEN: u1,
                ///  FEMPT
                FEMPT: u1,
                padding: u25,
            }),
            ///  Common memory space timing register 2
            PMEM2: mmio.Mmio(packed struct(u32) {
                ///  MEMSETx
                MEMSETx: u8,
                ///  MEMWAITx
                MEMWAITx: u8,
                ///  MEMHOLDx
                MEMHOLDx: u8,
                ///  MEMHIZx
                MEMHIZx: u8,
            }),
            ///  Attribute memory space timing register 2
            PATT2: mmio.Mmio(packed struct(u32) {
                ///  ATTSETx
                ATTSETx: u8,
                ///  ATTWAITx
                ATTWAITx: u8,
                ///  ATTHOLDx
                ATTHOLDx: u8,
                ///  ATTHIZx
                ATTHIZx: u8,
            }),
            reserved116: [4]u8,
            ///  ECC result register 2
            ECCR2: mmio.Mmio(packed struct(u32) {
                ///  ECCx
                ECCx: u32,
            }),
            reserved128: [8]u8,
            ///  PC Card/NAND Flash control register 3
            PCR3: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  PWAITEN
                PWAITEN: u1,
                ///  PBKEN
                PBKEN: u1,
                ///  PTYP
                PTYP: u1,
                ///  PWID
                PWID: u2,
                ///  ECCEN
                ECCEN: u1,
                reserved9: u2,
                ///  TCLR
                TCLR: u4,
                ///  TAR
                TAR: u4,
                ///  ECCPS
                ECCPS: u3,
                padding: u12,
            }),
            ///  FIFO status and interrupt register 3
            SR3: mmio.Mmio(packed struct(u32) {
                ///  IRS
                IRS: u1,
                ///  ILS
                ILS: u1,
                ///  IFS
                IFS: u1,
                ///  IREN
                IREN: u1,
                ///  ILEN
                ILEN: u1,
                ///  IFEN
                IFEN: u1,
                ///  FEMPT
                FEMPT: u1,
                padding: u25,
            }),
            ///  Common memory space timing register 3
            PMEM3: mmio.Mmio(packed struct(u32) {
                ///  MEMSETx
                MEMSETx: u8,
                ///  MEMWAITx
                MEMWAITx: u8,
                ///  MEMHOLDx
                MEMHOLDx: u8,
                ///  MEMHIZx
                MEMHIZx: u8,
            }),
            ///  Attribute memory space timing register 3
            PATT3: mmio.Mmio(packed struct(u32) {
                ///  ATTSETx
                ATTSETx: u8,
                ///  ATTWAITx
                ATTWAITx: u8,
                ///  ATTHOLDx
                ATTHOLDx: u8,
                ///  ATTHIZx
                ATTHIZx: u8,
            }),
            reserved148: [4]u8,
            ///  ECC result register 3
            ECCR3: mmio.Mmio(packed struct(u32) {
                ///  ECCx
                ECCx: u32,
            }),
            reserved160: [8]u8,
            ///  PC Card/NAND Flash control register 4
            PCR4: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  PWAITEN
                PWAITEN: u1,
                ///  PBKEN
                PBKEN: u1,
                ///  PTYP
                PTYP: u1,
                ///  PWID
                PWID: u2,
                ///  ECCEN
                ECCEN: u1,
                reserved9: u2,
                ///  TCLR
                TCLR: u4,
                ///  TAR
                TAR: u4,
                ///  ECCPS
                ECCPS: u3,
                padding: u12,
            }),
            ///  FIFO status and interrupt register 4
            SR4: mmio.Mmio(packed struct(u32) {
                ///  IRS
                IRS: u1,
                ///  ILS
                ILS: u1,
                ///  IFS
                IFS: u1,
                ///  IREN
                IREN: u1,
                ///  ILEN
                ILEN: u1,
                ///  IFEN
                IFEN: u1,
                ///  FEMPT
                FEMPT: u1,
                padding: u25,
            }),
            ///  Common memory space timing register 4
            PMEM4: mmio.Mmio(packed struct(u32) {
                ///  MEMSETx
                MEMSETx: u8,
                ///  MEMWAITx
                MEMWAITx: u8,
                ///  MEMHOLDx
                MEMHOLDx: u8,
                ///  MEMHIZx
                MEMHIZx: u8,
            }),
            ///  Attribute memory space timing register 4
            PATT4: mmio.Mmio(packed struct(u32) {
                ///  ATTSETx
                ATTSETx: u8,
                ///  ATTWAITx
                ATTWAITx: u8,
                ///  ATTHOLDx
                ATTHOLDx: u8,
                ///  ATTHIZx
                ATTHIZx: u8,
            }),
            ///  I/O space timing register 4
            PIO4: mmio.Mmio(packed struct(u32) {
                ///  IOSETx
                IOSETx: u8,
                ///  IOWAITx
                IOWAITx: u8,
                ///  IOHOLDx
                IOHOLDx: u8,
                ///  IOHIZx
                IOHIZx: u8,
            }),
            reserved260: [80]u8,
            ///  SRAM/NOR-Flash write timing registers 1
            BWTR1: mmio.Mmio(packed struct(u32) {
                ///  ADDSET
                ADDSET: u4,
                ///  ADDHLD
                ADDHLD: u4,
                ///  DATAST
                DATAST: u8,
                reserved20: u4,
                ///  CLKDIV
                CLKDIV: u4,
                ///  DATLAT
                DATLAT: u4,
                ///  ACCMOD
                ACCMOD: u2,
                padding: u2,
            }),
            reserved268: [4]u8,
            ///  SRAM/NOR-Flash write timing registers 2
            BWTR2: mmio.Mmio(packed struct(u32) {
                ///  ADDSET
                ADDSET: u4,
                ///  ADDHLD
                ADDHLD: u4,
                ///  DATAST
                DATAST: u8,
                reserved20: u4,
                ///  CLKDIV
                CLKDIV: u4,
                ///  DATLAT
                DATLAT: u4,
                ///  ACCMOD
                ACCMOD: u2,
                padding: u2,
            }),
            reserved276: [4]u8,
            ///  SRAM/NOR-Flash write timing registers 3
            BWTR3: mmio.Mmio(packed struct(u32) {
                ///  ADDSET
                ADDSET: u4,
                ///  ADDHLD
                ADDHLD: u4,
                ///  DATAST
                DATAST: u8,
                reserved20: u4,
                ///  CLKDIV
                CLKDIV: u4,
                ///  DATLAT
                DATLAT: u4,
                ///  ACCMOD
                ACCMOD: u2,
                padding: u2,
            }),
            reserved284: [4]u8,
            ///  SRAM/NOR-Flash write timing registers 4
            BWTR4: mmio.Mmio(packed struct(u32) {
                ///  ADDSET
                ADDSET: u4,
                ///  ADDHLD
                ADDHLD: u4,
                ///  DATAST
                DATAST: u8,
                reserved20: u4,
                ///  CLKDIV
                CLKDIV: u4,
                ///  DATLAT
                DATLAT: u4,
                ///  ACCMOD
                ACCMOD: u2,
                padding: u2,
            }),
            reserved320: [32]u8,
            ///  SDRAM Control Register 1
            SDCR1: mmio.Mmio(packed struct(u32) {
                ///  Number of column address bits
                NC: u2,
                ///  Number of row address bits
                NR: u2,
                ///  Memory data bus width
                MWID: u2,
                ///  Number of internal banks
                NB: u1,
                ///  CAS latency
                CAS: u2,
                ///  Write protection
                WP: u1,
                ///  SDRAM clock configuration
                SDCLK: u2,
                ///  Burst read
                RBURST: u1,
                ///  Read pipe
                RPIPE: u2,
                padding: u17,
            }),
            ///  SDRAM Control Register 2
            SDCR2: mmio.Mmio(packed struct(u32) {
                ///  Number of column address bits
                NC: u2,
                ///  Number of row address bits
                NR: u2,
                ///  Memory data bus width
                MWID: u2,
                ///  Number of internal banks
                NB: u1,
                ///  CAS latency
                CAS: u2,
                ///  Write protection
                WP: u1,
                ///  SDRAM clock configuration
                SDCLK: u2,
                ///  Burst read
                RBURST: u1,
                ///  Read pipe
                RPIPE: u2,
                padding: u17,
            }),
            ///  SDRAM Timing register 1
            SDTR1: mmio.Mmio(packed struct(u32) {
                ///  Load Mode Register to Active
                TMRD: u4,
                ///  Exit self-refresh delay
                TXSR: u4,
                ///  Self refresh time
                TRAS: u4,
                ///  Row cycle delay
                TRC: u4,
                ///  Recovery delay
                TWR: u4,
                ///  Row precharge delay
                TRP: u4,
                ///  Row to column delay
                TRCD: u4,
                padding: u4,
            }),
            ///  SDRAM Timing register 2
            SDTR2: mmio.Mmio(packed struct(u32) {
                ///  Load Mode Register to Active
                TMRD: u4,
                ///  Exit self-refresh delay
                TXSR: u4,
                ///  Self refresh time
                TRAS: u4,
                ///  Row cycle delay
                TRC: u4,
                ///  Recovery delay
                TWR: u4,
                ///  Row precharge delay
                TRP: u4,
                ///  Row to column delay
                TRCD: u4,
                padding: u4,
            }),
            ///  SDRAM Command Mode register
            SDCMR: mmio.Mmio(packed struct(u32) {
                ///  Command mode
                MODE: u3,
                ///  Command target bank 2
                CTB2: u1,
                ///  Command target bank 1
                CTB1: u1,
                ///  Number of Auto-refresh
                NRFS: u4,
                ///  Mode Register definition
                MRD: u13,
                padding: u10,
            }),
            ///  SDRAM Refresh Timer register
            SDRTR: mmio.Mmio(packed struct(u32) {
                ///  Clear Refresh error flag
                CRE: u1,
                ///  Refresh Timer Count
                COUNT: u13,
                ///  RES Interrupt Enable
                REIE: u1,
                padding: u17,
            }),
            ///  SDRAM Status register
            SDSR: mmio.Mmio(packed struct(u32) {
                ///  Refresh error flag
                RE: u1,
                ///  Status Mode for Bank 1
                MODES1: u2,
                ///  Status Mode for Bank 2
                MODES2: u2,
                ///  Busy status
                BUSY: u1,
                padding: u26,
            }),
        };

        ///  Debug support
        pub const DBG = extern struct {
            ///  IDCODE
            DBGMCU_IDCODE: mmio.Mmio(packed struct(u32) {
                ///  DEV_ID
                DEV_ID: u12,
                reserved16: u4,
                ///  REV_ID
                REV_ID: u16,
            }),
            ///  Control Register
            DBGMCU_CR: mmio.Mmio(packed struct(u32) {
                ///  DBG_SLEEP
                DBG_SLEEP: u1,
                ///  DBG_STOP
                DBG_STOP: u1,
                ///  DBG_STANDBY
                DBG_STANDBY: u1,
                reserved5: u2,
                ///  TRACE_IOEN
                TRACE_IOEN: u1,
                ///  TRACE_MODE
                TRACE_MODE: u2,
                padding: u24,
            }),
            ///  Debug MCU APB1 Freeze registe
            DBGMCU_APB1_FZ: mmio.Mmio(packed struct(u32) {
                ///  DBG_TIM2_STOP
                DBG_TIM2_STOP: u1,
                ///  DBG_TIM3 _STOP
                DBG_TIM3_STOP: u1,
                ///  DBG_TIM4_STOP
                DBG_TIM4_STOP: u1,
                ///  DBG_TIM5_STOP
                DBG_TIM5_STOP: u1,
                ///  DBG_TIM6_STOP
                DBG_TIM6_STOP: u1,
                ///  DBG_TIM7_STOP
                DBG_TIM7_STOP: u1,
                ///  DBG_TIM12_STOP
                DBG_TIM12_STOP: u1,
                ///  DBG_TIM13_STOP
                DBG_TIM13_STOP: u1,
                ///  DBG_TIM14_STOP
                DBG_TIM14_STOP: u1,
                reserved10: u1,
                ///  RTC stopped when Core is halted
                DBG_RTC_STOP: u1,
                ///  DBG_WWDG_STOP
                DBG_WWDG_STOP: u1,
                ///  DBG_IWDEG_STOP
                DBG_IWDEG_STOP: u1,
                reserved21: u8,
                ///  DBG_J2C1_SMBUS_TIMEOUT
                DBG_J2C1_SMBUS_TIMEOUT: u1,
                ///  DBG_J2C2_SMBUS_TIMEOUT
                DBG_J2C2_SMBUS_TIMEOUT: u1,
                ///  DBG_J2C3SMBUS_TIMEOUT
                DBG_J2C3SMBUS_TIMEOUT: u1,
                ///  SMBUS timeout mode stopped when Core is halted
                DBG_I2CFMP_SMBUS_TIMEOUT: u1,
                ///  DBG_CAN1_STOP
                DBG_CAN1_STOP: u1,
                ///  DBG_CAN2_STOP
                DBG_CAN2_STOP: u1,
                padding: u5,
            }),
            ///  Debug MCU APB2 Freeze registe
            DBGMCU_APB2_FZ: mmio.Mmio(packed struct(u32) {
                ///  TIM1 counter stopped when core is halted
                DBG_TIM1_STOP: u1,
                ///  TIM8 counter stopped when core is halted
                DBG_TIM8_STOP: u1,
                reserved16: u14,
                ///  TIM9 counter stopped when core is halted
                DBG_TIM9_STOP: u1,
                ///  TIM10 counter stopped when core is halted
                DBG_TIM10_STOP: u1,
                ///  TIM11 counter stopped when core is halted
                DBG_TIM11_STOP: u1,
                padding: u13,
            }),
        };

        ///  DMA controller
        pub const DMA2 = extern struct {
            ///  low interrupt status register
            LISR: mmio.Mmio(packed struct(u32) {
                ///  Stream x FIFO error interrupt flag (x=3..0)
                FEIF0: u1,
                reserved2: u1,
                ///  Stream x direct mode error interrupt flag (x=3..0)
                DMEIF0: u1,
                ///  Stream x transfer error interrupt flag (x=3..0)
                TEIF0: u1,
                ///  Stream x half transfer interrupt flag (x=3..0)
                HTIF0: u1,
                ///  Stream x transfer complete interrupt flag (x = 3..0)
                TCIF0: u1,
                ///  Stream x FIFO error interrupt flag (x=3..0)
                FEIF1: u1,
                reserved8: u1,
                ///  Stream x direct mode error interrupt flag (x=3..0)
                DMEIF1: u1,
                ///  Stream x transfer error interrupt flag (x=3..0)
                TEIF1: u1,
                ///  Stream x half transfer interrupt flag (x=3..0)
                HTIF1: u1,
                ///  Stream x transfer complete interrupt flag (x = 3..0)
                TCIF1: u1,
                reserved16: u4,
                ///  Stream x FIFO error interrupt flag (x=3..0)
                FEIF2: u1,
                reserved18: u1,
                ///  Stream x direct mode error interrupt flag (x=3..0)
                DMEIF2: u1,
                ///  Stream x transfer error interrupt flag (x=3..0)
                TEIF2: u1,
                ///  Stream x half transfer interrupt flag (x=3..0)
                HTIF2: u1,
                ///  Stream x transfer complete interrupt flag (x = 3..0)
                TCIF2: u1,
                ///  Stream x FIFO error interrupt flag (x=3..0)
                FEIF3: u1,
                reserved24: u1,
                ///  Stream x direct mode error interrupt flag (x=3..0)
                DMEIF3: u1,
                ///  Stream x transfer error interrupt flag (x=3..0)
                TEIF3: u1,
                ///  Stream x half transfer interrupt flag (x=3..0)
                HTIF3: u1,
                ///  Stream x transfer complete interrupt flag (x = 3..0)
                TCIF3: u1,
                padding: u4,
            }),
            ///  high interrupt status register
            HISR: mmio.Mmio(packed struct(u32) {
                ///  Stream x FIFO error interrupt flag (x=7..4)
                FEIF4: u1,
                reserved2: u1,
                ///  Stream x direct mode error interrupt flag (x=7..4)
                DMEIF4: u1,
                ///  Stream x transfer error interrupt flag (x=7..4)
                TEIF4: u1,
                ///  Stream x half transfer interrupt flag (x=7..4)
                HTIF4: u1,
                ///  Stream x transfer complete interrupt flag (x=7..4)
                TCIF4: u1,
                ///  Stream x FIFO error interrupt flag (x=7..4)
                FEIF5: u1,
                reserved8: u1,
                ///  Stream x direct mode error interrupt flag (x=7..4)
                DMEIF5: u1,
                ///  Stream x transfer error interrupt flag (x=7..4)
                TEIF5: u1,
                ///  Stream x half transfer interrupt flag (x=7..4)
                HTIF5: u1,
                ///  Stream x transfer complete interrupt flag (x=7..4)
                TCIF5: u1,
                reserved16: u4,
                ///  Stream x FIFO error interrupt flag (x=7..4)
                FEIF6: u1,
                reserved18: u1,
                ///  Stream x direct mode error interrupt flag (x=7..4)
                DMEIF6: u1,
                ///  Stream x transfer error interrupt flag (x=7..4)
                TEIF6: u1,
                ///  Stream x half transfer interrupt flag (x=7..4)
                HTIF6: u1,
                ///  Stream x transfer complete interrupt flag (x=7..4)
                TCIF6: u1,
                ///  Stream x FIFO error interrupt flag (x=7..4)
                FEIF7: u1,
                reserved24: u1,
                ///  Stream x direct mode error interrupt flag (x=7..4)
                DMEIF7: u1,
                ///  Stream x transfer error interrupt flag (x=7..4)
                TEIF7: u1,
                ///  Stream x half transfer interrupt flag (x=7..4)
                HTIF7: u1,
                ///  Stream x transfer complete interrupt flag (x=7..4)
                TCIF7: u1,
                padding: u4,
            }),
            ///  low interrupt flag clear register
            LIFCR: mmio.Mmio(packed struct(u32) {
                ///  Stream x clear FIFO error interrupt flag (x = 3..0)
                CFEIF0: u1,
                reserved2: u1,
                ///  Stream x clear direct mode error interrupt flag (x = 3..0)
                CDMEIF0: u1,
                ///  Stream x clear transfer error interrupt flag (x = 3..0)
                CTEIF0: u1,
                ///  Stream x clear half transfer interrupt flag (x = 3..0)
                CHTIF0: u1,
                ///  Stream x clear transfer complete interrupt flag (x = 3..0)
                CTCIF0: u1,
                ///  Stream x clear FIFO error interrupt flag (x = 3..0)
                CFEIF1: u1,
                reserved8: u1,
                ///  Stream x clear direct mode error interrupt flag (x = 3..0)
                CDMEIF1: u1,
                ///  Stream x clear transfer error interrupt flag (x = 3..0)
                CTEIF1: u1,
                ///  Stream x clear half transfer interrupt flag (x = 3..0)
                CHTIF1: u1,
                ///  Stream x clear transfer complete interrupt flag (x = 3..0)
                CTCIF1: u1,
                reserved16: u4,
                ///  Stream x clear FIFO error interrupt flag (x = 3..0)
                CFEIF2: u1,
                reserved18: u1,
                ///  Stream x clear direct mode error interrupt flag (x = 3..0)
                CDMEIF2: u1,
                ///  Stream x clear transfer error interrupt flag (x = 3..0)
                CTEIF2: u1,
                ///  Stream x clear half transfer interrupt flag (x = 3..0)
                CHTIF2: u1,
                ///  Stream x clear transfer complete interrupt flag (x = 3..0)
                CTCIF2: u1,
                ///  Stream x clear FIFO error interrupt flag (x = 3..0)
                CFEIF3: u1,
                reserved24: u1,
                ///  Stream x clear direct mode error interrupt flag (x = 3..0)
                CDMEIF3: u1,
                ///  Stream x clear transfer error interrupt flag (x = 3..0)
                CTEIF3: u1,
                ///  Stream x clear half transfer interrupt flag (x = 3..0)
                CHTIF3: u1,
                ///  Stream x clear transfer complete interrupt flag (x = 3..0)
                CTCIF3: u1,
                padding: u4,
            }),
            ///  high interrupt flag clear register
            HIFCR: mmio.Mmio(packed struct(u32) {
                ///  Stream x clear FIFO error interrupt flag (x = 7..4)
                CFEIF4: u1,
                reserved2: u1,
                ///  Stream x clear direct mode error interrupt flag (x = 7..4)
                CDMEIF4: u1,
                ///  Stream x clear transfer error interrupt flag (x = 7..4)
                CTEIF4: u1,
                ///  Stream x clear half transfer interrupt flag (x = 7..4)
                CHTIF4: u1,
                ///  Stream x clear transfer complete interrupt flag (x = 7..4)
                CTCIF4: u1,
                ///  Stream x clear FIFO error interrupt flag (x = 7..4)
                CFEIF5: u1,
                reserved8: u1,
                ///  Stream x clear direct mode error interrupt flag (x = 7..4)
                CDMEIF5: u1,
                ///  Stream x clear transfer error interrupt flag (x = 7..4)
                CTEIF5: u1,
                ///  Stream x clear half transfer interrupt flag (x = 7..4)
                CHTIF5: u1,
                ///  Stream x clear transfer complete interrupt flag (x = 7..4)
                CTCIF5: u1,
                reserved16: u4,
                ///  Stream x clear FIFO error interrupt flag (x = 7..4)
                CFEIF6: u1,
                reserved18: u1,
                ///  Stream x clear direct mode error interrupt flag (x = 7..4)
                CDMEIF6: u1,
                ///  Stream x clear transfer error interrupt flag (x = 7..4)
                CTEIF6: u1,
                ///  Stream x clear half transfer interrupt flag (x = 7..4)
                CHTIF6: u1,
                ///  Stream x clear transfer complete interrupt flag (x = 7..4)
                CTCIF6: u1,
                ///  Stream x clear FIFO error interrupt flag (x = 7..4)
                CFEIF7: u1,
                reserved24: u1,
                ///  Stream x clear direct mode error interrupt flag (x = 7..4)
                CDMEIF7: u1,
                ///  Stream x clear transfer error interrupt flag (x = 7..4)
                CTEIF7: u1,
                ///  Stream x clear half transfer interrupt flag (x = 7..4)
                CHTIF7: u1,
                ///  Stream x clear transfer complete interrupt flag (x = 7..4)
                CTCIF7: u1,
                padding: u4,
            }),
            ///  stream x configuration register
            S0CR: mmio.Mmio(packed struct(u32) {
                ///  Stream enable / flag stream ready when read low
                EN: u1,
                ///  Direct mode error interrupt enable
                DMEIE: u1,
                ///  Transfer error interrupt enable
                TEIE: u1,
                ///  Half transfer interrupt enable
                HTIE: u1,
                ///  Transfer complete interrupt enable
                TCIE: u1,
                ///  Peripheral flow controller
                PFCTRL: u1,
                ///  Data transfer direction
                DIR: u2,
                ///  Circular mode
                CIRC: u1,
                ///  Peripheral increment mode
                PINC: u1,
                ///  Memory increment mode
                MINC: u1,
                ///  Peripheral data size
                PSIZE: u2,
                ///  Memory data size
                MSIZE: u2,
                ///  Peripheral increment offset size
                PINCOS: u1,
                ///  Priority level
                PL: u2,
                ///  Double buffer mode
                DBM: u1,
                ///  Current target (only in double buffer mode)
                CT: u1,
                reserved21: u1,
                ///  Peripheral burst transfer configuration
                PBURST: u2,
                ///  Memory burst transfer configuration
                MBURST: u2,
                ///  Channel selection
                CHSEL: u3,
                padding: u4,
            }),
            ///  stream x number of data register
            S0NDTR: mmio.Mmio(packed struct(u32) {
                ///  Number of data items to transfer
                NDT: u16,
                padding: u16,
            }),
            ///  stream x peripheral address register
            S0PAR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral address
                PA: u32,
            }),
            ///  stream x memory 0 address register
            S0M0AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 address
                M0A: u32,
            }),
            ///  stream x memory 1 address register
            S0M1AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 address (used in case of Double buffer mode)
                M1A: u32,
            }),
            ///  stream x FIFO control register
            S0FCR: mmio.Mmio(packed struct(u32) {
                ///  FIFO threshold selection
                FTH: u2,
                ///  Direct mode disable
                DMDIS: u1,
                ///  FIFO status
                FS: u3,
                reserved7: u1,
                ///  FIFO error interrupt enable
                FEIE: u1,
                padding: u24,
            }),
            ///  stream x configuration register
            S1CR: mmio.Mmio(packed struct(u32) {
                ///  Stream enable / flag stream ready when read low
                EN: u1,
                ///  Direct mode error interrupt enable
                DMEIE: u1,
                ///  Transfer error interrupt enable
                TEIE: u1,
                ///  Half transfer interrupt enable
                HTIE: u1,
                ///  Transfer complete interrupt enable
                TCIE: u1,
                ///  Peripheral flow controller
                PFCTRL: u1,
                ///  Data transfer direction
                DIR: u2,
                ///  Circular mode
                CIRC: u1,
                ///  Peripheral increment mode
                PINC: u1,
                ///  Memory increment mode
                MINC: u1,
                ///  Peripheral data size
                PSIZE: u2,
                ///  Memory data size
                MSIZE: u2,
                ///  Peripheral increment offset size
                PINCOS: u1,
                ///  Priority level
                PL: u2,
                ///  Double buffer mode
                DBM: u1,
                ///  Current target (only in double buffer mode)
                CT: u1,
                ///  ACK
                ACK: u1,
                ///  Peripheral burst transfer configuration
                PBURST: u2,
                ///  Memory burst transfer configuration
                MBURST: u2,
                ///  Channel selection
                CHSEL: u3,
                padding: u4,
            }),
            ///  stream x number of data register
            S1NDTR: mmio.Mmio(packed struct(u32) {
                ///  Number of data items to transfer
                NDT: u16,
                padding: u16,
            }),
            ///  stream x peripheral address register
            S1PAR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral address
                PA: u32,
            }),
            ///  stream x memory 0 address register
            S1M0AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 address
                M0A: u32,
            }),
            ///  stream x memory 1 address register
            S1M1AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 address (used in case of Double buffer mode)
                M1A: u32,
            }),
            ///  stream x FIFO control register
            S1FCR: mmio.Mmio(packed struct(u32) {
                ///  FIFO threshold selection
                FTH: u2,
                ///  Direct mode disable
                DMDIS: u1,
                ///  FIFO status
                FS: u3,
                reserved7: u1,
                ///  FIFO error interrupt enable
                FEIE: u1,
                padding: u24,
            }),
            ///  stream x configuration register
            S2CR: mmio.Mmio(packed struct(u32) {
                ///  Stream enable / flag stream ready when read low
                EN: u1,
                ///  Direct mode error interrupt enable
                DMEIE: u1,
                ///  Transfer error interrupt enable
                TEIE: u1,
                ///  Half transfer interrupt enable
                HTIE: u1,
                ///  Transfer complete interrupt enable
                TCIE: u1,
                ///  Peripheral flow controller
                PFCTRL: u1,
                ///  Data transfer direction
                DIR: u2,
                ///  Circular mode
                CIRC: u1,
                ///  Peripheral increment mode
                PINC: u1,
                ///  Memory increment mode
                MINC: u1,
                ///  Peripheral data size
                PSIZE: u2,
                ///  Memory data size
                MSIZE: u2,
                ///  Peripheral increment offset size
                PINCOS: u1,
                ///  Priority level
                PL: u2,
                ///  Double buffer mode
                DBM: u1,
                ///  Current target (only in double buffer mode)
                CT: u1,
                ///  ACK
                ACK: u1,
                ///  Peripheral burst transfer configuration
                PBURST: u2,
                ///  Memory burst transfer configuration
                MBURST: u2,
                ///  Channel selection
                CHSEL: u3,
                padding: u4,
            }),
            ///  stream x number of data register
            S2NDTR: mmio.Mmio(packed struct(u32) {
                ///  Number of data items to transfer
                NDT: u16,
                padding: u16,
            }),
            ///  stream x peripheral address register
            S2PAR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral address
                PA: u32,
            }),
            ///  stream x memory 0 address register
            S2M0AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 address
                M0A: u32,
            }),
            ///  stream x memory 1 address register
            S2M1AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 address (used in case of Double buffer mode)
                M1A: u32,
            }),
            ///  stream x FIFO control register
            S2FCR: mmio.Mmio(packed struct(u32) {
                ///  FIFO threshold selection
                FTH: u2,
                ///  Direct mode disable
                DMDIS: u1,
                ///  FIFO status
                FS: u3,
                reserved7: u1,
                ///  FIFO error interrupt enable
                FEIE: u1,
                padding: u24,
            }),
            ///  stream x configuration register
            S3CR: mmio.Mmio(packed struct(u32) {
                ///  Stream enable / flag stream ready when read low
                EN: u1,
                ///  Direct mode error interrupt enable
                DMEIE: u1,
                ///  Transfer error interrupt enable
                TEIE: u1,
                ///  Half transfer interrupt enable
                HTIE: u1,
                ///  Transfer complete interrupt enable
                TCIE: u1,
                ///  Peripheral flow controller
                PFCTRL: u1,
                ///  Data transfer direction
                DIR: u2,
                ///  Circular mode
                CIRC: u1,
                ///  Peripheral increment mode
                PINC: u1,
                ///  Memory increment mode
                MINC: u1,
                ///  Peripheral data size
                PSIZE: u2,
                ///  Memory data size
                MSIZE: u2,
                ///  Peripheral increment offset size
                PINCOS: u1,
                ///  Priority level
                PL: u2,
                ///  Double buffer mode
                DBM: u1,
                ///  Current target (only in double buffer mode)
                CT: u1,
                ///  ACK
                ACK: u1,
                ///  Peripheral burst transfer configuration
                PBURST: u2,
                ///  Memory burst transfer configuration
                MBURST: u2,
                ///  Channel selection
                CHSEL: u3,
                padding: u4,
            }),
            ///  stream x number of data register
            S3NDTR: mmio.Mmio(packed struct(u32) {
                ///  Number of data items to transfer
                NDT: u16,
                padding: u16,
            }),
            ///  stream x peripheral address register
            S3PAR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral address
                PA: u32,
            }),
            ///  stream x memory 0 address register
            S3M0AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 address
                M0A: u32,
            }),
            ///  stream x memory 1 address register
            S3M1AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 address (used in case of Double buffer mode)
                M1A: u32,
            }),
            ///  stream x FIFO control register
            S3FCR: mmio.Mmio(packed struct(u32) {
                ///  FIFO threshold selection
                FTH: u2,
                ///  Direct mode disable
                DMDIS: u1,
                ///  FIFO status
                FS: u3,
                reserved7: u1,
                ///  FIFO error interrupt enable
                FEIE: u1,
                padding: u24,
            }),
            ///  stream x configuration register
            S4CR: mmio.Mmio(packed struct(u32) {
                ///  Stream enable / flag stream ready when read low
                EN: u1,
                ///  Direct mode error interrupt enable
                DMEIE: u1,
                ///  Transfer error interrupt enable
                TEIE: u1,
                ///  Half transfer interrupt enable
                HTIE: u1,
                ///  Transfer complete interrupt enable
                TCIE: u1,
                ///  Peripheral flow controller
                PFCTRL: u1,
                ///  Data transfer direction
                DIR: u2,
                ///  Circular mode
                CIRC: u1,
                ///  Peripheral increment mode
                PINC: u1,
                ///  Memory increment mode
                MINC: u1,
                ///  Peripheral data size
                PSIZE: u2,
                ///  Memory data size
                MSIZE: u2,
                ///  Peripheral increment offset size
                PINCOS: u1,
                ///  Priority level
                PL: u2,
                ///  Double buffer mode
                DBM: u1,
                ///  Current target (only in double buffer mode)
                CT: u1,
                ///  ACK
                ACK: u1,
                ///  Peripheral burst transfer configuration
                PBURST: u2,
                ///  Memory burst transfer configuration
                MBURST: u2,
                ///  Channel selection
                CHSEL: u3,
                padding: u4,
            }),
            ///  stream x number of data register
            S4NDTR: mmio.Mmio(packed struct(u32) {
                ///  Number of data items to transfer
                NDT: u16,
                padding: u16,
            }),
            ///  stream x peripheral address register
            S4PAR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral address
                PA: u32,
            }),
            ///  stream x memory 0 address register
            S4M0AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 address
                M0A: u32,
            }),
            ///  stream x memory 1 address register
            S4M1AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 address (used in case of Double buffer mode)
                M1A: u32,
            }),
            ///  stream x FIFO control register
            S4FCR: mmio.Mmio(packed struct(u32) {
                ///  FIFO threshold selection
                FTH: u2,
                ///  Direct mode disable
                DMDIS: u1,
                ///  FIFO status
                FS: u3,
                reserved7: u1,
                ///  FIFO error interrupt enable
                FEIE: u1,
                padding: u24,
            }),
            ///  stream x configuration register
            S5CR: mmio.Mmio(packed struct(u32) {
                ///  Stream enable / flag stream ready when read low
                EN: u1,
                ///  Direct mode error interrupt enable
                DMEIE: u1,
                ///  Transfer error interrupt enable
                TEIE: u1,
                ///  Half transfer interrupt enable
                HTIE: u1,
                ///  Transfer complete interrupt enable
                TCIE: u1,
                ///  Peripheral flow controller
                PFCTRL: u1,
                ///  Data transfer direction
                DIR: u2,
                ///  Circular mode
                CIRC: u1,
                ///  Peripheral increment mode
                PINC: u1,
                ///  Memory increment mode
                MINC: u1,
                ///  Peripheral data size
                PSIZE: u2,
                ///  Memory data size
                MSIZE: u2,
                ///  Peripheral increment offset size
                PINCOS: u1,
                ///  Priority level
                PL: u2,
                ///  Double buffer mode
                DBM: u1,
                ///  Current target (only in double buffer mode)
                CT: u1,
                ///  ACK
                ACK: u1,
                ///  Peripheral burst transfer configuration
                PBURST: u2,
                ///  Memory burst transfer configuration
                MBURST: u2,
                ///  Channel selection
                CHSEL: u3,
                padding: u4,
            }),
            ///  stream x number of data register
            S5NDTR: mmio.Mmio(packed struct(u32) {
                ///  Number of data items to transfer
                NDT: u16,
                padding: u16,
            }),
            ///  stream x peripheral address register
            S5PAR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral address
                PA: u32,
            }),
            ///  stream x memory 0 address register
            S5M0AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 address
                M0A: u32,
            }),
            ///  stream x memory 1 address register
            S5M1AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 address (used in case of Double buffer mode)
                M1A: u32,
            }),
            ///  stream x FIFO control register
            S5FCR: mmio.Mmio(packed struct(u32) {
                ///  FIFO threshold selection
                FTH: u2,
                ///  Direct mode disable
                DMDIS: u1,
                ///  FIFO status
                FS: u3,
                reserved7: u1,
                ///  FIFO error interrupt enable
                FEIE: u1,
                padding: u24,
            }),
            ///  stream x configuration register
            S6CR: mmio.Mmio(packed struct(u32) {
                ///  Stream enable / flag stream ready when read low
                EN: u1,
                ///  Direct mode error interrupt enable
                DMEIE: u1,
                ///  Transfer error interrupt enable
                TEIE: u1,
                ///  Half transfer interrupt enable
                HTIE: u1,
                ///  Transfer complete interrupt enable
                TCIE: u1,
                ///  Peripheral flow controller
                PFCTRL: u1,
                ///  Data transfer direction
                DIR: u2,
                ///  Circular mode
                CIRC: u1,
                ///  Peripheral increment mode
                PINC: u1,
                ///  Memory increment mode
                MINC: u1,
                ///  Peripheral data size
                PSIZE: u2,
                ///  Memory data size
                MSIZE: u2,
                ///  Peripheral increment offset size
                PINCOS: u1,
                ///  Priority level
                PL: u2,
                ///  Double buffer mode
                DBM: u1,
                ///  Current target (only in double buffer mode)
                CT: u1,
                ///  ACK
                ACK: u1,
                ///  Peripheral burst transfer configuration
                PBURST: u2,
                ///  Memory burst transfer configuration
                MBURST: u2,
                ///  Channel selection
                CHSEL: u3,
                padding: u4,
            }),
            ///  stream x number of data register
            S6NDTR: mmio.Mmio(packed struct(u32) {
                ///  Number of data items to transfer
                NDT: u16,
                padding: u16,
            }),
            ///  stream x peripheral address register
            S6PAR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral address
                PA: u32,
            }),
            ///  stream x memory 0 address register
            S6M0AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 address
                M0A: u32,
            }),
            ///  stream x memory 1 address register
            S6M1AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 address (used in case of Double buffer mode)
                M1A: u32,
            }),
            ///  stream x FIFO control register
            S6FCR: mmio.Mmio(packed struct(u32) {
                ///  FIFO threshold selection
                FTH: u2,
                ///  Direct mode disable
                DMDIS: u1,
                ///  FIFO status
                FS: u3,
                reserved7: u1,
                ///  FIFO error interrupt enable
                FEIE: u1,
                padding: u24,
            }),
            ///  stream x configuration register
            S7CR: mmio.Mmio(packed struct(u32) {
                ///  Stream enable / flag stream ready when read low
                EN: u1,
                ///  Direct mode error interrupt enable
                DMEIE: u1,
                ///  Transfer error interrupt enable
                TEIE: u1,
                ///  Half transfer interrupt enable
                HTIE: u1,
                ///  Transfer complete interrupt enable
                TCIE: u1,
                ///  Peripheral flow controller
                PFCTRL: u1,
                ///  Data transfer direction
                DIR: u2,
                ///  Circular mode
                CIRC: u1,
                ///  Peripheral increment mode
                PINC: u1,
                ///  Memory increment mode
                MINC: u1,
                ///  Peripheral data size
                PSIZE: u2,
                ///  Memory data size
                MSIZE: u2,
                ///  Peripheral increment offset size
                PINCOS: u1,
                ///  Priority level
                PL: u2,
                ///  Double buffer mode
                DBM: u1,
                ///  Current target (only in double buffer mode)
                CT: u1,
                ///  ACK
                ACK: u1,
                ///  Peripheral burst transfer configuration
                PBURST: u2,
                ///  Memory burst transfer configuration
                MBURST: u2,
                ///  Channel selection
                CHSEL: u3,
                padding: u4,
            }),
            ///  stream x number of data register
            S7NDTR: mmio.Mmio(packed struct(u32) {
                ///  Number of data items to transfer
                NDT: u16,
                padding: u16,
            }),
            ///  stream x peripheral address register
            S7PAR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral address
                PA: u32,
            }),
            ///  stream x memory 0 address register
            S7M0AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 0 address
                M0A: u32,
            }),
            ///  stream x memory 1 address register
            S7M1AR: mmio.Mmio(packed struct(u32) {
                ///  Memory 1 address (used in case of Double buffer mode)
                M1A: u32,
            }),
            ///  stream x FIFO control register
            S7FCR: mmio.Mmio(packed struct(u32) {
                ///  FIFO threshold selection
                FTH: u2,
                ///  Direct mode disable
                DMDIS: u1,
                ///  FIFO status
                FS: u3,
                reserved7: u1,
                ///  FIFO error interrupt enable
                FEIE: u1,
                padding: u24,
            }),
        };

        ///  System control block ACTLR
        pub const SCB_ACTRL = extern struct {
            ///  Auxiliary control register
            ACTRL: mmio.Mmio(packed struct(u32) {
                ///  DISMCYCINT
                DISMCYCINT: u1,
                ///  DISDEFWBUF
                DISDEFWBUF: u1,
                ///  DISFOLD
                DISFOLD: u1,
                reserved8: u5,
                ///  DISFPCA
                DISFPCA: u1,
                ///  DISOOFP
                DISOOFP: u1,
                padding: u22,
            }),
        };

        ///  Reset and clock control
        pub const RCC = extern struct {
            ///  clock control register
            CR: mmio.Mmio(packed struct(u32) {
                ///  Internal high-speed clock enable
                HSION: u1,
                ///  Internal high-speed clock ready flag
                HSIRDY: u1,
                reserved3: u1,
                ///  Internal high-speed clock trimming
                HSITRIM: u5,
                ///  Internal high-speed clock calibration
                HSICAL: u8,
                ///  HSE clock enable
                HSEON: u1,
                ///  HSE clock ready flag
                HSERDY: u1,
                ///  HSE clock bypass
                HSEBYP: u1,
                ///  Clock security system enable
                CSSON: u1,
                reserved24: u4,
                ///  Main PLL (PLL) enable
                PLLON: u1,
                ///  Main PLL (PLL) clock ready flag
                PLLRDY: u1,
                ///  PLLI2S enable
                PLLI2SON: u1,
                ///  PLLI2S clock ready flag
                PLLI2SRDY: u1,
                padding: u4,
            }),
            ///  PLL configuration register
            PLLCFGR: mmio.Mmio(packed struct(u32) {
                ///  Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
                PLLM0: u1,
                ///  Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
                PLLM1: u1,
                ///  Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
                PLLM2: u1,
                ///  Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
                PLLM3: u1,
                ///  Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
                PLLM4: u1,
                ///  Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
                PLLM5: u1,
                ///  Main PLL (PLL) multiplication factor for VCO
                PLLN0: u1,
                ///  Main PLL (PLL) multiplication factor for VCO
                PLLN1: u1,
                ///  Main PLL (PLL) multiplication factor for VCO
                PLLN2: u1,
                ///  Main PLL (PLL) multiplication factor for VCO
                PLLN3: u1,
                ///  Main PLL (PLL) multiplication factor for VCO
                PLLN4: u1,
                ///  Main PLL (PLL) multiplication factor for VCO
                PLLN5: u1,
                ///  Main PLL (PLL) multiplication factor for VCO
                PLLN6: u1,
                ///  Main PLL (PLL) multiplication factor for VCO
                PLLN7: u1,
                ///  Main PLL (PLL) multiplication factor for VCO
                PLLN8: u1,
                reserved16: u1,
                ///  Main PLL (PLL) division factor for main system clock
                PLLP0: u1,
                ///  Main PLL (PLL) division factor for main system clock
                PLLP1: u1,
                reserved22: u4,
                ///  Main PLL(PLL) and audio PLL (PLLI2S) entry clock source
                PLLSRC: u1,
                reserved24: u1,
                ///  Main PLL (PLL) division factor for USB OTG FS, SDIO and random number generator clocks
                PLLQ0: u1,
                ///  Main PLL (PLL) division factor for USB OTG FS, SDIO and random number generator clocks
                PLLQ1: u1,
                ///  Main PLL (PLL) division factor for USB OTG FS, SDIO and random number generator clocks
                PLLQ2: u1,
                ///  Main PLL (PLL) division factor for USB OTG FS, SDIO and random number generator clocks
                PLLQ3: u1,
                padding: u4,
            }),
            ///  clock configuration register
            CFGR: mmio.Mmio(packed struct(u32) {
                ///  System clock switch
                SW0: u1,
                ///  System clock switch
                SW1: u1,
                ///  System clock switch status
                SWS0: u1,
                ///  System clock switch status
                SWS1: u1,
                ///  AHB prescaler
                HPRE: u4,
                reserved10: u2,
                ///  APB Low speed prescaler (APB1)
                PPRE1: u3,
                ///  APB high-speed prescaler (APB2)
                PPRE2: u3,
                ///  HSE division factor for RTC clock
                RTCPRE: u5,
                ///  Microcontroller clock output 1
                MCO1: u2,
                ///  I2S clock selection
                I2SSRC: u1,
                ///  MCO1 prescaler
                MCO1PRE: u3,
                ///  MCO2 prescaler
                MCO2PRE: u3,
                ///  Microcontroller clock output 2
                MCO2: u2,
            }),
            ///  clock interrupt register
            CIR: mmio.Mmio(packed struct(u32) {
                ///  LSI ready interrupt flag
                LSIRDYF: u1,
                ///  LSE ready interrupt flag
                LSERDYF: u1,
                ///  HSI ready interrupt flag
                HSIRDYF: u1,
                ///  HSE ready interrupt flag
                HSERDYF: u1,
                ///  Main PLL (PLL) ready interrupt flag
                PLLRDYF: u1,
                ///  PLLI2S ready interrupt flag
                PLLI2SRDYF: u1,
                ///  PLLSAI ready interrupt flag
                PLLSAIRDYF: u1,
                ///  Clock security system interrupt flag
                CSSF: u1,
                ///  LSI ready interrupt enable
                LSIRDYIE: u1,
                ///  LSE ready interrupt enable
                LSERDYIE: u1,
                ///  HSI ready interrupt enable
                HSIRDYIE: u1,
                ///  HSE ready interrupt enable
                HSERDYIE: u1,
                ///  Main PLL (PLL) ready interrupt enable
                PLLRDYIE: u1,
                ///  PLLI2S ready interrupt enable
                PLLI2SRDYIE: u1,
                ///  PLLSAI Ready Interrupt Enable
                PLLSAIRDYIE: u1,
                reserved16: u1,
                ///  LSI ready interrupt clear
                LSIRDYC: u1,
                ///  LSE ready interrupt clear
                LSERDYC: u1,
                ///  HSI ready interrupt clear
                HSIRDYC: u1,
                ///  HSE ready interrupt clear
                HSERDYC: u1,
                ///  Main PLL(PLL) ready interrupt clear
                PLLRDYC: u1,
                ///  PLLI2S ready interrupt clear
                PLLI2SRDYC: u1,
                ///  PLLSAI Ready Interrupt Clear
                PLLSAIRDYC: u1,
                ///  Clock security system interrupt clear
                CSSC: u1,
                padding: u8,
            }),
            ///  AHB1 peripheral reset register
            AHB1RSTR: mmio.Mmio(packed struct(u32) {
                ///  IO port A reset
                GPIOARST: u1,
                ///  IO port B reset
                GPIOBRST: u1,
                ///  IO port C reset
                GPIOCRST: u1,
                ///  IO port D reset
                GPIODRST: u1,
                ///  IO port E reset
                GPIOERST: u1,
                ///  IO port F reset
                GPIOFRST: u1,
                ///  IO port G reset
                GPIOGRST: u1,
                ///  IO port H reset
                GPIOHRST: u1,
                reserved12: u4,
                ///  CRC reset
                CRCRST: u1,
                reserved21: u8,
                ///  DMA2 reset
                DMA1RST: u1,
                ///  DMA2 reset
                DMA2RST: u1,
                reserved29: u6,
                ///  USB OTG HS module reset
                OTGHSRST: u1,
                padding: u2,
            }),
            ///  AHB2 peripheral reset register
            AHB2RSTR: mmio.Mmio(packed struct(u32) {
                ///  Camera interface reset
                DCMIRST: u1,
                reserved7: u6,
                ///  USB OTG FS module reset
                OTGFSRST: u1,
                padding: u24,
            }),
            ///  AHB3 peripheral reset register
            AHB3RSTR: mmio.Mmio(packed struct(u32) {
                ///  Flexible memory controller module reset
                FMCRST: u1,
                ///  QUADSPI module reset
                QSPIRST: u1,
                padding: u30,
            }),
            reserved32: [4]u8,
            ///  APB1 peripheral reset register
            APB1RSTR: mmio.Mmio(packed struct(u32) {
                ///  TIM2 reset
                TIM2RST: u1,
                ///  TIM3 reset
                TIM3RST: u1,
                ///  TIM4 reset
                TIM4RST: u1,
                ///  TIM5 reset
                TIM5RST: u1,
                ///  TIM6 reset
                TIM6RST: u1,
                ///  TIM7 reset
                TIM7RST: u1,
                ///  TIM12 reset
                TIM12RST: u1,
                ///  TIM13 reset
                TIM13RST: u1,
                ///  TIM14 reset
                TIM14RST: u1,
                reserved11: u2,
                ///  Window watchdog reset
                WWDGRST: u1,
                reserved14: u2,
                ///  SPI 2 reset
                SPI2RST: u1,
                ///  SPI 3 reset
                SPI3RST: u1,
                ///  SPDIF-IN reset
                SPDIFRST: u1,
                ///  USART 2 reset
                UART2RST: u1,
                ///  USART 3 reset
                UART3RST: u1,
                ///  USART 4 reset
                UART4RST: u1,
                ///  USART 5 reset
                UART5RST: u1,
                ///  I2C 1 reset
                I2C1RST: u1,
                ///  I2C 2 reset
                I2C2RST: u1,
                ///  I2C3 reset
                I2C3RST: u1,
                ///  I2CFMP1 reset
                I2CFMP1RST: u1,
                ///  CAN1 reset
                CAN1RST: u1,
                ///  CAN2 reset
                CAN2RST: u1,
                reserved28: u1,
                ///  Power interface reset
                PWRRST: u1,
                ///  DAC reset
                DACRST: u1,
                padding: u2,
            }),
            ///  APB2 peripheral reset register
            APB2RSTR: mmio.Mmio(packed struct(u32) {
                ///  TIM1 reset
                TIM1RST: u1,
                ///  TIM8 reset
                TIM8RST: u1,
                reserved4: u2,
                ///  USART1 reset
                USART1RST: u1,
                ///  USART6 reset
                USART6RST: u1,
                reserved8: u2,
                ///  ADC interface reset (common to all ADCs)
                ADCRST: u1,
                reserved11: u2,
                ///  SDIO reset
                SDIORST: u1,
                ///  SPI 1 reset
                SPI1RST: u1,
                ///  SPI4 reset
                SPI4RST: u1,
                ///  System configuration controller reset
                SYSCFGRST: u1,
                reserved16: u1,
                ///  TIM9 reset
                TIM9RST: u1,
                ///  TIM10 reset
                TIM10RST: u1,
                ///  TIM11 reset
                TIM11RST: u1,
                reserved22: u3,
                ///  SAI1 reset
                SAI1RST: u1,
                ///  SAI2 reset
                SAI2RST: u1,
                padding: u8,
            }),
            reserved48: [8]u8,
            ///  AHB1 peripheral clock register
            AHB1ENR: mmio.Mmio(packed struct(u32) {
                ///  IO port A clock enable
                GPIOAEN: u1,
                ///  IO port B clock enable
                GPIOBEN: u1,
                ///  IO port C clock enable
                GPIOCEN: u1,
                ///  IO port D clock enable
                GPIODEN: u1,
                ///  IO port E clock enable
                GPIOEEN: u1,
                ///  IO port F clock enable
                GPIOFEN: u1,
                ///  IO port G clock enable
                GPIOGEN: u1,
                ///  IO port H clock enable
                GPIOHEN: u1,
                reserved12: u4,
                ///  CRC clock enable
                CRCEN: u1,
                reserved18: u5,
                ///  Backup SRAM interface clock enable
                BKPSRAMEN: u1,
                reserved21: u2,
                ///  DMA1 clock enable
                DMA1EN: u1,
                ///  DMA2 clock enable
                DMA2EN: u1,
                reserved29: u6,
                ///  USB OTG HS clock enable
                OTGHSEN: u1,
                ///  USB OTG HSULPI clock enable
                OTGHSULPIEN: u1,
                padding: u1,
            }),
            ///  AHB2 peripheral clock enable register
            AHB2ENR: mmio.Mmio(packed struct(u32) {
                ///  Camera interface enable
                DCMIEN: u1,
                reserved7: u6,
                ///  USB OTG FS clock enable
                OTGFSEN: u1,
                padding: u24,
            }),
            ///  AHB3 peripheral clock enable register
            AHB3ENR: mmio.Mmio(packed struct(u32) {
                ///  Flexible memory controller module clock enable
                FMCEN: u1,
                ///  QUADSPI memory controller module clock enable
                QSPIEN: u1,
                padding: u30,
            }),
            reserved64: [4]u8,
            ///  APB1 peripheral clock enable register
            APB1ENR: mmio.Mmio(packed struct(u32) {
                ///  TIM2 clock enable
                TIM2EN: u1,
                ///  TIM3 clock enable
                TIM3EN: u1,
                ///  TIM4 clock enable
                TIM4EN: u1,
                ///  TIM5 clock enable
                TIM5EN: u1,
                ///  TIM6 clock enable
                TIM6EN: u1,
                ///  TIM7 clock enable
                TIM7EN: u1,
                ///  TIM12 clock enable
                TIM12EN: u1,
                ///  TIM13 clock enable
                TIM13EN: u1,
                ///  TIM14 clock enable
                TIM14EN: u1,
                reserved11: u2,
                ///  Window watchdog clock enable
                WWDGEN: u1,
                reserved14: u2,
                ///  SPI2 clock enable
                SPI2EN: u1,
                ///  SPI3 clock enable
                SPI3EN: u1,
                ///  SPDIF-IN clock enable
                SPDIFEN: u1,
                ///  USART 2 clock enable
                USART2EN: u1,
                ///  USART3 clock enable
                USART3EN: u1,
                ///  UART4 clock enable
                UART4EN: u1,
                ///  UART5 clock enable
                UART5EN: u1,
                ///  I2C1 clock enable
                I2C1EN: u1,
                ///  I2C2 clock enable
                I2C2EN: u1,
                ///  I2C3 clock enable
                I2C3EN: u1,
                ///  I2CFMP1 clock enable
                I2CFMP1EN: u1,
                ///  CAN 1 clock enable
                CAN1EN: u1,
                ///  CAN 2 clock enable
                CAN2EN: u1,
                ///  CEC interface clock enable
                CEC: u1,
                ///  Power interface clock enable
                PWREN: u1,
                ///  DAC interface clock enable
                DACEN: u1,
                padding: u2,
            }),
            ///  APB2 peripheral clock enable register
            APB2ENR: mmio.Mmio(packed struct(u32) {
                ///  TIM1 clock enable
                TIM1EN: u1,
                ///  TIM8 clock enable
                TIM8EN: u1,
                reserved4: u2,
                ///  USART1 clock enable
                USART1EN: u1,
                ///  USART6 clock enable
                USART6EN: u1,
                reserved8: u2,
                ///  ADC1 clock enable
                ADC1EN: u1,
                ///  ADC2 clock enable
                ADC2EN: u1,
                ///  ADC3 clock enable
                ADC3EN: u1,
                ///  SDIO clock enable
                SDIOEN: u1,
                ///  SPI1 clock enable
                SPI1EN: u1,
                ///  SPI4 clock enable
                SPI4ENR: u1,
                ///  System configuration controller clock enable
                SYSCFGEN: u1,
                reserved16: u1,
                ///  TIM9 clock enable
                TIM9EN: u1,
                ///  TIM10 clock enable
                TIM10EN: u1,
                ///  TIM11 clock enable
                TIM11EN: u1,
                reserved22: u3,
                ///  SAI1 clock enable
                SAI1EN: u1,
                ///  SAI2 clock enable
                SAI2EN: u1,
                padding: u8,
            }),
            reserved80: [8]u8,
            ///  AHB1 peripheral clock enable in low power mode register
            AHB1LPENR: mmio.Mmio(packed struct(u32) {
                ///  IO port A clock enable during sleep mode
                GPIOALPEN: u1,
                ///  IO port B clock enable during Sleep mode
                GPIOBLPEN: u1,
                ///  IO port C clock enable during Sleep mode
                GPIOCLPEN: u1,
                ///  IO port D clock enable during Sleep mode
                GPIODLPEN: u1,
                ///  IO port E clock enable during Sleep mode
                GPIOELPEN: u1,
                ///  IO port F clock enable during Sleep mode
                GPIOFLPEN: u1,
                ///  IO port G clock enable during Sleep mode
                GPIOGLPEN: u1,
                ///  IO port H clock enable during Sleep mode
                GPIOHLPEN: u1,
                reserved12: u4,
                ///  CRC clock enable during Sleep mode
                CRCLPEN: u1,
                reserved15: u2,
                ///  Flash interface clock enable during Sleep mode
                FLITFLPEN: u1,
                ///  SRAM 1interface clock enable during Sleep mode
                SRAM1LPEN: u1,
                ///  SRAM 2 interface clock enable during Sleep mode
                SRAM2LPEN: u1,
                ///  Backup SRAM interface clock enable during Sleep mode
                BKPSRAMLPEN: u1,
                reserved21: u2,
                ///  DMA1 clock enable during Sleep mode
                DMA1LPEN: u1,
                ///  DMA2 clock enable during Sleep mode
                DMA2LPEN: u1,
                reserved29: u6,
                ///  USB OTG HS clock enable during Sleep mode
                OTGHSLPEN: u1,
                ///  USB OTG HS ULPI clock enable during Sleep mode
                OTGHSULPILPEN: u1,
                padding: u1,
            }),
            ///  AHB2 peripheral clock enable in low power mode register
            AHB2LPENR: mmio.Mmio(packed struct(u32) {
                ///  Camera interface enable during Sleep mode
                DCMILPEN: u1,
                reserved7: u6,
                ///  USB OTG FS clock enable during Sleep mode
                OTGFSLPEN: u1,
                padding: u24,
            }),
            ///  AHB3 peripheral clock enable in low power mode register
            AHB3LPENR: mmio.Mmio(packed struct(u32) {
                ///  Flexible memory controller module clock enable during Sleep mode
                FMCLPEN: u1,
                ///  QUADSPI memory controller module clock enable during Sleep mode
                QSPILPEN: u1,
                padding: u30,
            }),
            reserved96: [4]u8,
            ///  APB1 peripheral clock enable in low power mode register
            APB1LPENR: mmio.Mmio(packed struct(u32) {
                ///  TIM2 clock enable during Sleep mode
                TIM2LPEN: u1,
                ///  TIM3 clock enable during Sleep mode
                TIM3LPEN: u1,
                ///  TIM4 clock enable during Sleep mode
                TIM4LPEN: u1,
                ///  TIM5 clock enable during Sleep mode
                TIM5LPEN: u1,
                ///  TIM6 clock enable during Sleep mode
                TIM6LPEN: u1,
                ///  TIM7 clock enable during Sleep mode
                TIM7LPEN: u1,
                ///  TIM12 clock enable during Sleep mode
                TIM12LPEN: u1,
                ///  TIM13 clock enable during Sleep mode
                TIM13LPEN: u1,
                ///  TIM14 clock enable during Sleep mode
                TIM14LPEN: u1,
                reserved11: u2,
                ///  Window watchdog clock enable during Sleep mode
                WWDGLPEN: u1,
                reserved14: u2,
                ///  SPI2 clock enable during Sleep mode
                SPI2LPEN: u1,
                ///  SPI3 clock enable during Sleep mode
                SPI3LPEN: u1,
                ///  SPDIF clock enable during Sleep mode
                SPDIFLPEN: u1,
                ///  USART2 clock enable during Sleep mode
                USART2LPEN: u1,
                ///  USART3 clock enable during Sleep mode
                USART3LPEN: u1,
                ///  UART4 clock enable during Sleep mode
                UART4LPEN: u1,
                ///  UART5 clock enable during Sleep mode
                UART5LPEN: u1,
                ///  I2C1 clock enable during Sleep mode
                I2C1LPEN: u1,
                ///  I2C2 clock enable during Sleep mode
                I2C2LPEN: u1,
                ///  I2C3 clock enable during Sleep mode
                I2C3LPEN: u1,
                ///  I2CFMP1 clock enable during Sleep mode
                I2CFMP1LPEN: u1,
                ///  CAN 1 clock enable during Sleep mode
                CAN1LPEN: u1,
                ///  CAN 2 clock enable during Sleep mode
                CAN2LPEN: u1,
                ///  CEC clock enable during Sleep mode
                CECLPEN: u1,
                ///  Power interface clock enable during Sleep mode
                PWRLPEN: u1,
                ///  DAC interface clock enable during Sleep mode
                DACLPEN: u1,
                padding: u2,
            }),
            ///  APB2 peripheral clock enabled in low power mode register
            APB2LPENR: mmio.Mmio(packed struct(u32) {
                ///  TIM1 clock enable during Sleep mode
                TIM1LPEN: u1,
                ///  TIM8 clock enable during Sleep mode
                TIM8LPEN: u1,
                reserved4: u2,
                ///  USART1 clock enable during Sleep mode
                USART1LPEN: u1,
                ///  USART6 clock enable during Sleep mode
                USART6LPEN: u1,
                reserved8: u2,
                ///  ADC1 clock enable during Sleep mode
                ADC1LPEN: u1,
                ///  ADC2 clock enable during Sleep mode
                ADC2LPEN: u1,
                ///  ADC 3 clock enable during Sleep mode
                ADC3LPEN: u1,
                ///  SDIO clock enable during Sleep mode
                SDIOLPEN: u1,
                ///  SPI 1 clock enable during Sleep mode
                SPI1LPEN: u1,
                ///  SPI 4 clock enable during Sleep mode
                SPI4LPEN: u1,
                ///  System configuration controller clock enable during Sleep mode
                SYSCFGLPEN: u1,
                reserved16: u1,
                ///  TIM9 clock enable during sleep mode
                TIM9LPEN: u1,
                ///  TIM10 clock enable during Sleep mode
                TIM10LPEN: u1,
                ///  TIM11 clock enable during Sleep mode
                TIM11LPEN: u1,
                reserved22: u3,
                ///  SAI1 clock enable
                SAI1LPEN: u1,
                ///  SAI2 clock enable
                SAI2LPEN: u1,
                padding: u8,
            }),
            reserved112: [8]u8,
            ///  Backup domain control register
            BDCR: mmio.Mmio(packed struct(u32) {
                ///  External low-speed oscillator enable
                LSEON: u1,
                ///  External low-speed oscillator ready
                LSERDY: u1,
                ///  External low-speed oscillator bypass
                LSEBYP: u1,
                ///  External low-speed oscillator mode
                LSEMOD: u1,
                reserved8: u4,
                ///  RTC clock source selection
                RTCSEL: u2,
                reserved15: u5,
                ///  RTC clock enable
                RTCEN: u1,
                ///  Backup domain software reset
                BDRST: u1,
                padding: u15,
            }),
            ///  clock control & status register
            CSR: mmio.Mmio(packed struct(u32) {
                ///  Internal low-speed oscillator enable
                LSION: u1,
                ///  Internal low-speed oscillator ready
                LSIRDY: u1,
                reserved24: u22,
                ///  Remove reset flag
                RMVF: u1,
                ///  BOR reset flag
                BORRSTF: u1,
                ///  PIN reset flag
                PADRSTF: u1,
                ///  POR/PDR reset flag
                PORRSTF: u1,
                ///  Software reset flag
                SFTRSTF: u1,
                ///  Independent watchdog reset flag
                WDGRSTF: u1,
                ///  Window watchdog reset flag
                WWDGRSTF: u1,
                ///  Low-power reset flag
                LPWRRSTF: u1,
            }),
            reserved128: [8]u8,
            ///  spread spectrum clock generation register
            SSCGR: mmio.Mmio(packed struct(u32) {
                ///  Modulation period
                MODPER: u13,
                ///  Incrementation step
                INCSTEP: u15,
                reserved30: u2,
                ///  Spread Select
                SPREADSEL: u1,
                ///  Spread spectrum modulation enable
                SSCGEN: u1,
            }),
            ///  PLLI2S configuration register
            PLLI2SCFGR: mmio.Mmio(packed struct(u32) {
                ///  Division factor for audio PLL (PLLI2S) input clock
                PLLI2SM: u6,
                ///  PLLI2S multiplication factor for VCO
                PLLI2SN: u9,
                reserved16: u1,
                ///  PLLI2S division factor for SPDIF-IN clock
                PLLI2SP: u2,
                reserved24: u6,
                ///  PLLI2S division factor for SAI1 clock
                PLLI2SQ: u4,
                ///  PLLI2S division factor for I2S clocks
                PLLI2SR: u3,
                padding: u1,
            }),
            ///  PLL configuration register
            PLLSAICFGR: mmio.Mmio(packed struct(u32) {
                ///  Division factor for audio PLLSAI input clock
                PLLSAIM: u6,
                ///  PLLSAI division factor for VCO
                PLLSAIN: u9,
                reserved16: u1,
                ///  PLLSAI division factor for 48 MHz clock
                PLLSAIP: u2,
                reserved24: u6,
                ///  PLLSAI division factor for SAIs clock
                PLLSAIQ: u4,
                padding: u4,
            }),
            ///  Dedicated Clock Configuration Register
            DCKCFGR: mmio.Mmio(packed struct(u32) {
                ///  PLLI2S division factor for SAIs clock
                PLLI2SDIVQ: u5,
                reserved8: u3,
                ///  PLLSAI division factor for SAIs clock
                PLLSAIDIVQ: u5,
                reserved20: u7,
                ///  SAI1 clock source selection
                SAI1SRC: u2,
                ///  SAI2 clock source selection
                SAI2SRC: u2,
                ///  Timers clocks prescalers selection
                TIMPRE: u1,
                ///  I2S APB1 clock source selection
                I2S1SRC: u2,
                ///  I2S APB2 clock source selection
                I2S2SRC: u2,
                padding: u3,
            }),
            ///  clocks gated enable register
            CKGATENR: mmio.Mmio(packed struct(u32) {
                ///  AHB to APB1 Bridge clock enable
                AHB2APB1_CKEN: u1,
                ///  AHB to APB2 Bridge clock enable
                AHB2APB2_CKEN: u1,
                ///  Cortex M4 ETM clock enable
                CM4DBG_CKEN: u1,
                ///  Spare clock enable
                SPARE_CKEN: u1,
                ///  SRQAM controller clock enable
                SRAM_CKEN: u1,
                ///  Flash Interface clock enable
                FLITF_CKEN: u1,
                ///  RCC clock enable
                RCC_CKEN: u1,
                padding: u25,
            }),
            ///  dedicated clocks configuration register 2
            DCKCFGR2: mmio.Mmio(packed struct(u32) {
                reserved22: u22,
                ///  I2C4 kernel clock source selection
                FMPI2C1SEL: u2,
                reserved26: u2,
                ///  HDMI CEC clock source selection
                CECSEL: u1,
                ///  SDIO/USBFS/HS clock selection
                CK48MSEL: u1,
                ///  SDIO clock selection
                SDIOSEL: u1,
                ///  SPDIF clock selection
                SPDIFSEL: u1,
                padding: u2,
            }),
        };

        ///  General-purpose I/Os
        pub const GPIOH = extern struct {
            ///  GPIO port mode register
            MODER: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (y = 0..15)
                MODER0: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER1: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER2: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER3: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER4: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER5: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER6: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER7: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER8: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER9: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER10: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER11: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER12: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER13: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER14: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER15: u2,
            }),
            ///  GPIO port output type register
            OTYPER: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (y = 0..15)
                OT0: u1,
                ///  Port x configuration bits (y = 0..15)
                OT1: u1,
                ///  Port x configuration bits (y = 0..15)
                OT2: u1,
                ///  Port x configuration bits (y = 0..15)
                OT3: u1,
                ///  Port x configuration bits (y = 0..15)
                OT4: u1,
                ///  Port x configuration bits (y = 0..15)
                OT5: u1,
                ///  Port x configuration bits (y = 0..15)
                OT6: u1,
                ///  Port x configuration bits (y = 0..15)
                OT7: u1,
                ///  Port x configuration bits (y = 0..15)
                OT8: u1,
                ///  Port x configuration bits (y = 0..15)
                OT9: u1,
                ///  Port x configuration bits (y = 0..15)
                OT10: u1,
                ///  Port x configuration bits (y = 0..15)
                OT11: u1,
                ///  Port x configuration bits (y = 0..15)
                OT12: u1,
                ///  Port x configuration bits (y = 0..15)
                OT13: u1,
                ///  Port x configuration bits (y = 0..15)
                OT14: u1,
                ///  Port x configuration bits (y = 0..15)
                OT15: u1,
                padding: u16,
            }),
            ///  GPIO port output speed register
            OSPEEDR: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR0: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR1: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR2: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR3: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR4: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR5: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR6: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR7: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR8: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR9: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR10: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR11: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR12: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR13: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR14: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR15: u2,
            }),
            ///  GPIO port pull-up/pull-down register
            PUPDR: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (y = 0..15)
                PUPDR0: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR1: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR2: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR3: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR4: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR5: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR6: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR7: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR8: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR9: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR10: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR11: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR12: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR13: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR14: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR15: u2,
            }),
            ///  GPIO port input data register
            IDR: mmio.Mmio(packed struct(u32) {
                ///  Port input data (y = 0..15)
                IDR0: u1,
                ///  Port input data (y = 0..15)
                IDR1: u1,
                ///  Port input data (y = 0..15)
                IDR2: u1,
                ///  Port input data (y = 0..15)
                IDR3: u1,
                ///  Port input data (y = 0..15)
                IDR4: u1,
                ///  Port input data (y = 0..15)
                IDR5: u1,
                ///  Port input data (y = 0..15)
                IDR6: u1,
                ///  Port input data (y = 0..15)
                IDR7: u1,
                ///  Port input data (y = 0..15)
                IDR8: u1,
                ///  Port input data (y = 0..15)
                IDR9: u1,
                ///  Port input data (y = 0..15)
                IDR10: u1,
                ///  Port input data (y = 0..15)
                IDR11: u1,
                ///  Port input data (y = 0..15)
                IDR12: u1,
                ///  Port input data (y = 0..15)
                IDR13: u1,
                ///  Port input data (y = 0..15)
                IDR14: u1,
                ///  Port input data (y = 0..15)
                IDR15: u1,
                padding: u16,
            }),
            ///  GPIO port output data register
            ODR: mmio.Mmio(packed struct(u32) {
                ///  Port output data (y = 0..15)
                ODR0: u1,
                ///  Port output data (y = 0..15)
                ODR1: u1,
                ///  Port output data (y = 0..15)
                ODR2: u1,
                ///  Port output data (y = 0..15)
                ODR3: u1,
                ///  Port output data (y = 0..15)
                ODR4: u1,
                ///  Port output data (y = 0..15)
                ODR5: u1,
                ///  Port output data (y = 0..15)
                ODR6: u1,
                ///  Port output data (y = 0..15)
                ODR7: u1,
                ///  Port output data (y = 0..15)
                ODR8: u1,
                ///  Port output data (y = 0..15)
                ODR9: u1,
                ///  Port output data (y = 0..15)
                ODR10: u1,
                ///  Port output data (y = 0..15)
                ODR11: u1,
                ///  Port output data (y = 0..15)
                ODR12: u1,
                ///  Port output data (y = 0..15)
                ODR13: u1,
                ///  Port output data (y = 0..15)
                ODR14: u1,
                ///  Port output data (y = 0..15)
                ODR15: u1,
                padding: u16,
            }),
            ///  GPIO port bit set/reset register
            BSRR: mmio.Mmio(packed struct(u32) {
                ///  Port x set bit y (y= 0..15)
                BS0: u1,
                ///  Port x set bit y (y= 0..15)
                BS1: u1,
                ///  Port x set bit y (y= 0..15)
                BS2: u1,
                ///  Port x set bit y (y= 0..15)
                BS3: u1,
                ///  Port x set bit y (y= 0..15)
                BS4: u1,
                ///  Port x set bit y (y= 0..15)
                BS5: u1,
                ///  Port x set bit y (y= 0..15)
                BS6: u1,
                ///  Port x set bit y (y= 0..15)
                BS7: u1,
                ///  Port x set bit y (y= 0..15)
                BS8: u1,
                ///  Port x set bit y (y= 0..15)
                BS9: u1,
                ///  Port x set bit y (y= 0..15)
                BS10: u1,
                ///  Port x set bit y (y= 0..15)
                BS11: u1,
                ///  Port x set bit y (y= 0..15)
                BS12: u1,
                ///  Port x set bit y (y= 0..15)
                BS13: u1,
                ///  Port x set bit y (y= 0..15)
                BS14: u1,
                ///  Port x set bit y (y= 0..15)
                BS15: u1,
                ///  Port x set bit y (y= 0..15)
                BR0: u1,
                ///  Port x reset bit y (y = 0..15)
                BR1: u1,
                ///  Port x reset bit y (y = 0..15)
                BR2: u1,
                ///  Port x reset bit y (y = 0..15)
                BR3: u1,
                ///  Port x reset bit y (y = 0..15)
                BR4: u1,
                ///  Port x reset bit y (y = 0..15)
                BR5: u1,
                ///  Port x reset bit y (y = 0..15)
                BR6: u1,
                ///  Port x reset bit y (y = 0..15)
                BR7: u1,
                ///  Port x reset bit y (y = 0..15)
                BR8: u1,
                ///  Port x reset bit y (y = 0..15)
                BR9: u1,
                ///  Port x reset bit y (y = 0..15)
                BR10: u1,
                ///  Port x reset bit y (y = 0..15)
                BR11: u1,
                ///  Port x reset bit y (y = 0..15)
                BR12: u1,
                ///  Port x reset bit y (y = 0..15)
                BR13: u1,
                ///  Port x reset bit y (y = 0..15)
                BR14: u1,
                ///  Port x reset bit y (y = 0..15)
                BR15: u1,
            }),
            ///  GPIO port configuration lock register
            LCKR: mmio.Mmio(packed struct(u32) {
                ///  Port x lock bit y (y= 0..15)
                LCK0: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK1: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK2: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK3: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK4: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK5: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK6: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK7: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK8: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK9: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK10: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK11: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK12: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK13: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK14: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK15: u1,
                ///  Port x lock bit y (y= 0..15)
                LCKK: u1,
                padding: u15,
            }),
            ///  GPIO alternate function low register
            AFRL: mmio.Mmio(packed struct(u32) {
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL0: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL1: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL2: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL3: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL4: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL5: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL6: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL7: u4,
            }),
            ///  GPIO alternate function high register
            AFRH: mmio.Mmio(packed struct(u32) {
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH8: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH9: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH10: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH11: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH12: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH13: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH14: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH15: u4,
            }),
        };

        ///  Floating point unit CPACR
        pub const FPU_CPACR = extern struct {
            ///  Coprocessor access control register
            CPACR: mmio.Mmio(packed struct(u32) {
                reserved20: u20,
                ///  CP
                CP: u4,
                padding: u8,
            }),
        };

        ///  Nested vectored interrupt controller
        pub const NVIC_STIR = extern struct {
            ///  Software trigger interrupt register
            STIR: mmio.Mmio(packed struct(u32) {
                ///  Software generated interrupt ID
                INTID: u9,
                padding: u23,
            }),
        };

        ///  System control block
        pub const SCB = extern struct {
            ///  CPUID base register
            CPUID: mmio.Mmio(packed struct(u32) {
                ///  Revision number
                Revision: u4,
                ///  Part number of the processor
                PartNo: u12,
                ///  Reads as 0xF
                Constant: u4,
                ///  Variant number
                Variant: u4,
                ///  Implementer code
                Implementer: u8,
            }),
            ///  Interrupt control and state register
            ICSR: mmio.Mmio(packed struct(u32) {
                ///  Active vector
                VECTACTIVE: u9,
                reserved11: u2,
                ///  Return to base level
                RETTOBASE: u1,
                ///  Pending vector
                VECTPENDING: u7,
                reserved22: u3,
                ///  Interrupt pending flag
                ISRPENDING: u1,
                reserved25: u2,
                ///  SysTick exception clear-pending bit
                PENDSTCLR: u1,
                ///  SysTick exception set-pending bit
                PENDSTSET: u1,
                ///  PendSV clear-pending bit
                PENDSVCLR: u1,
                ///  PendSV set-pending bit
                PENDSVSET: u1,
                reserved31: u2,
                ///  NMI set-pending bit.
                NMIPENDSET: u1,
            }),
            ///  Vector table offset register
            VTOR: mmio.Mmio(packed struct(u32) {
                reserved9: u9,
                ///  Vector table base offset field
                TBLOFF: u21,
                padding: u2,
            }),
            ///  Application interrupt and reset control register
            AIRCR: mmio.Mmio(packed struct(u32) {
                ///  VECTRESET
                VECTRESET: u1,
                ///  VECTCLRACTIVE
                VECTCLRACTIVE: u1,
                ///  SYSRESETREQ
                SYSRESETREQ: u1,
                reserved8: u5,
                ///  PRIGROUP
                PRIGROUP: u3,
                reserved15: u4,
                ///  ENDIANESS
                ENDIANESS: u1,
                ///  Register key
                VECTKEYSTAT: u16,
            }),
            ///  System control register
            SCR: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  SLEEPONEXIT
                SLEEPONEXIT: u1,
                ///  SLEEPDEEP
                SLEEPDEEP: u1,
                reserved4: u1,
                ///  Send Event on Pending bit
                SEVEONPEND: u1,
                padding: u27,
            }),
            ///  Configuration and control register
            CCR: mmio.Mmio(packed struct(u32) {
                ///  Configures how the processor enters Thread mode
                NONBASETHRDENA: u1,
                ///  USERSETMPEND
                USERSETMPEND: u1,
                reserved3: u1,
                ///  UNALIGN_ TRP
                UNALIGN__TRP: u1,
                ///  DIV_0_TRP
                DIV_0_TRP: u1,
                reserved8: u3,
                ///  BFHFNMIGN
                BFHFNMIGN: u1,
                ///  STKALIGN
                STKALIGN: u1,
                padding: u22,
            }),
            ///  System handler priority registers
            SHPR1: mmio.Mmio(packed struct(u32) {
                ///  Priority of system handler 4
                PRI_4: u8,
                ///  Priority of system handler 5
                PRI_5: u8,
                ///  Priority of system handler 6
                PRI_6: u8,
                padding: u8,
            }),
            ///  System handler priority registers
            SHPR2: mmio.Mmio(packed struct(u32) {
                reserved24: u24,
                ///  Priority of system handler 11
                PRI_11: u8,
            }),
            ///  System handler priority registers
            SHPR3: mmio.Mmio(packed struct(u32) {
                reserved16: u16,
                ///  Priority of system handler 14
                PRI_14: u8,
                ///  Priority of system handler 15
                PRI_15: u8,
            }),
            ///  System handler control and state register
            SHCRS: mmio.Mmio(packed struct(u32) {
                ///  Memory management fault exception active bit
                MEMFAULTACT: u1,
                ///  Bus fault exception active bit
                BUSFAULTACT: u1,
                reserved3: u1,
                ///  Usage fault exception active bit
                USGFAULTACT: u1,
                reserved7: u3,
                ///  SVC call active bit
                SVCALLACT: u1,
                ///  Debug monitor active bit
                MONITORACT: u1,
                reserved10: u1,
                ///  PendSV exception active bit
                PENDSVACT: u1,
                ///  SysTick exception active bit
                SYSTICKACT: u1,
                ///  Usage fault exception pending bit
                USGFAULTPENDED: u1,
                ///  Memory management fault exception pending bit
                MEMFAULTPENDED: u1,
                ///  Bus fault exception pending bit
                BUSFAULTPENDED: u1,
                ///  SVC call pending bit
                SVCALLPENDED: u1,
                ///  Memory management fault enable bit
                MEMFAULTENA: u1,
                ///  Bus fault enable bit
                BUSFAULTENA: u1,
                ///  Usage fault enable bit
                USGFAULTENA: u1,
                padding: u13,
            }),
            ///  Configurable fault status register
            CFSR_UFSR_BFSR_MMFSR: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Instruction access violation flag
                IACCVIOL: u1,
                reserved3: u1,
                ///  Memory manager fault on unstacking for a return from exception
                MUNSTKERR: u1,
                ///  Memory manager fault on stacking for exception entry.
                MSTKERR: u1,
                ///  MLSPERR
                MLSPERR: u1,
                reserved7: u1,
                ///  Memory Management Fault Address Register (MMAR) valid flag
                MMARVALID: u1,
                ///  Instruction bus error
                IBUSERR: u1,
                ///  Precise data bus error
                PRECISERR: u1,
                ///  Imprecise data bus error
                IMPRECISERR: u1,
                ///  Bus fault on unstacking for a return from exception
                UNSTKERR: u1,
                ///  Bus fault on stacking for exception entry
                STKERR: u1,
                ///  Bus fault on floating-point lazy state preservation
                LSPERR: u1,
                reserved15: u1,
                ///  Bus Fault Address Register (BFAR) valid flag
                BFARVALID: u1,
                ///  Undefined instruction usage fault
                UNDEFINSTR: u1,
                ///  Invalid state usage fault
                INVSTATE: u1,
                ///  Invalid PC load usage fault
                INVPC: u1,
                ///  No coprocessor usage fault.
                NOCP: u1,
                reserved24: u4,
                ///  Unaligned access usage fault
                UNALIGNED: u1,
                ///  Divide by zero usage fault
                DIVBYZERO: u1,
                padding: u6,
            }),
            ///  Hard fault status register
            HFSR: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Vector table hard fault
                VECTTBL: u1,
                reserved30: u28,
                ///  Forced hard fault
                FORCED: u1,
                ///  Reserved for Debug use
                DEBUG_VT: u1,
            }),
            reserved52: [4]u8,
            ///  Memory management fault address register
            MMFAR: mmio.Mmio(packed struct(u32) {
                ///  Memory management fault address
                MMFAR: u32,
            }),
            ///  Bus fault address register
            BFAR: mmio.Mmio(packed struct(u32) {
                ///  Bus fault address
                BFAR: u32,
            }),
            ///  Auxiliary fault status register
            AFSR: mmio.Mmio(packed struct(u32) {
                ///  Implementation defined
                IMPDEF: u32,
            }),
        };

        ///  SysTick timer
        pub const STK = extern struct {
            ///  SysTick control and status register
            CTRL: mmio.Mmio(packed struct(u32) {
                ///  Counter enable
                ENABLE: u1,
                ///  SysTick exception request enable
                TICKINT: u1,
                ///  Clock source selection
                CLKSOURCE: u1,
                reserved16: u13,
                ///  COUNTFLAG
                COUNTFLAG: u1,
                padding: u15,
            }),
            ///  SysTick reload value register
            LOAD: mmio.Mmio(packed struct(u32) {
                ///  RELOAD value
                RELOAD: u24,
                padding: u8,
            }),
            ///  SysTick current value register
            VAL: mmio.Mmio(packed struct(u32) {
                ///  Current counter value
                CURRENT: u24,
                padding: u8,
            }),
            ///  SysTick calibration value register
            CALIB: mmio.Mmio(packed struct(u32) {
                ///  Calibration value
                TENMS: u24,
                reserved30: u6,
                ///  SKEW flag: Indicates whether the TENMS value is exact
                SKEW: u1,
                ///  NOREF flag. Reads as zero
                NOREF: u1,
            }),
        };

        ///  Memory protection unit
        pub const MPU = extern struct {
            ///  MPU type register
            MPU_TYPER: mmio.Mmio(packed struct(u32) {
                ///  Separate flag
                SEPARATE: u1,
                reserved8: u7,
                ///  Number of MPU data regions
                DREGION: u8,
                ///  Number of MPU instruction regions
                IREGION: u8,
                padding: u8,
            }),
            ///  MPU control register
            MPU_CTRL: mmio.Mmio(packed struct(u32) {
                ///  Enables the MPU
                ENABLE: u1,
                ///  Enables the operation of MPU during hard fault
                HFNMIENA: u1,
                ///  Enable priviliged software access to default memory map
                PRIVDEFENA: u1,
                padding: u29,
            }),
            ///  MPU region number register
            MPU_RNR: mmio.Mmio(packed struct(u32) {
                ///  MPU region
                REGION: u8,
                padding: u24,
            }),
            ///  MPU region base address register
            MPU_RBAR: mmio.Mmio(packed struct(u32) {
                ///  MPU region field
                REGION: u4,
                ///  MPU region number valid
                VALID: u1,
                ///  Region base address field
                ADDR: u27,
            }),
            ///  MPU region attribute and size register
            MPU_RASR: mmio.Mmio(packed struct(u32) {
                ///  Region enable bit.
                ENABLE: u1,
                ///  Size of the MPU protection region
                SIZE: u5,
                reserved8: u2,
                ///  Subregion disable bits
                SRD: u8,
                ///  memory attribute
                B: u1,
                ///  memory attribute
                C: u1,
                ///  Shareable memory attribute
                S: u1,
                ///  memory attribute
                TEX: u3,
                reserved24: u2,
                ///  Access permission
                AP: u3,
                reserved28: u1,
                ///  Instruction access disable bit
                XN: u1,
                padding: u3,
            }),
        };

        ///  General-purpose I/Os
        pub const GPIOB = extern struct {
            ///  GPIO port mode register
            MODER: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (y = 0..15)
                MODER0: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER1: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER2: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER3: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER4: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER5: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER6: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER7: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER8: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER9: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER10: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER11: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER12: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER13: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER14: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER15: u2,
            }),
            ///  GPIO port output type register
            OTYPER: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (y = 0..15)
                OT0: u1,
                ///  Port x configuration bits (y = 0..15)
                OT1: u1,
                ///  Port x configuration bits (y = 0..15)
                OT2: u1,
                ///  Port x configuration bits (y = 0..15)
                OT3: u1,
                ///  Port x configuration bits (y = 0..15)
                OT4: u1,
                ///  Port x configuration bits (y = 0..15)
                OT5: u1,
                ///  Port x configuration bits (y = 0..15)
                OT6: u1,
                ///  Port x configuration bits (y = 0..15)
                OT7: u1,
                ///  Port x configuration bits (y = 0..15)
                OT8: u1,
                ///  Port x configuration bits (y = 0..15)
                OT9: u1,
                ///  Port x configuration bits (y = 0..15)
                OT10: u1,
                ///  Port x configuration bits (y = 0..15)
                OT11: u1,
                ///  Port x configuration bits (y = 0..15)
                OT12: u1,
                ///  Port x configuration bits (y = 0..15)
                OT13: u1,
                ///  Port x configuration bits (y = 0..15)
                OT14: u1,
                ///  Port x configuration bits (y = 0..15)
                OT15: u1,
                padding: u16,
            }),
            ///  GPIO port output speed register
            OSPEEDR: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR0: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR1: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR2: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR3: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR4: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR5: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR6: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR7: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR8: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR9: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR10: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR11: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR12: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR13: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR14: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR15: u2,
            }),
            ///  GPIO port pull-up/pull-down register
            PUPDR: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (y = 0..15)
                PUPDR0: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR1: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR2: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR3: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR4: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR5: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR6: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR7: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR8: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR9: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR10: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR11: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR12: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR13: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR14: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR15: u2,
            }),
            ///  GPIO port input data register
            IDR: mmio.Mmio(packed struct(u32) {
                ///  Port input data (y = 0..15)
                IDR0: u1,
                ///  Port input data (y = 0..15)
                IDR1: u1,
                ///  Port input data (y = 0..15)
                IDR2: u1,
                ///  Port input data (y = 0..15)
                IDR3: u1,
                ///  Port input data (y = 0..15)
                IDR4: u1,
                ///  Port input data (y = 0..15)
                IDR5: u1,
                ///  Port input data (y = 0..15)
                IDR6: u1,
                ///  Port input data (y = 0..15)
                IDR7: u1,
                ///  Port input data (y = 0..15)
                IDR8: u1,
                ///  Port input data (y = 0..15)
                IDR9: u1,
                ///  Port input data (y = 0..15)
                IDR10: u1,
                ///  Port input data (y = 0..15)
                IDR11: u1,
                ///  Port input data (y = 0..15)
                IDR12: u1,
                ///  Port input data (y = 0..15)
                IDR13: u1,
                ///  Port input data (y = 0..15)
                IDR14: u1,
                ///  Port input data (y = 0..15)
                IDR15: u1,
                padding: u16,
            }),
            ///  GPIO port output data register
            ODR: mmio.Mmio(packed struct(u32) {
                ///  Port output data (y = 0..15)
                ODR0: u1,
                ///  Port output data (y = 0..15)
                ODR1: u1,
                ///  Port output data (y = 0..15)
                ODR2: u1,
                ///  Port output data (y = 0..15)
                ODR3: u1,
                ///  Port output data (y = 0..15)
                ODR4: u1,
                ///  Port output data (y = 0..15)
                ODR5: u1,
                ///  Port output data (y = 0..15)
                ODR6: u1,
                ///  Port output data (y = 0..15)
                ODR7: u1,
                ///  Port output data (y = 0..15)
                ODR8: u1,
                ///  Port output data (y = 0..15)
                ODR9: u1,
                ///  Port output data (y = 0..15)
                ODR10: u1,
                ///  Port output data (y = 0..15)
                ODR11: u1,
                ///  Port output data (y = 0..15)
                ODR12: u1,
                ///  Port output data (y = 0..15)
                ODR13: u1,
                ///  Port output data (y = 0..15)
                ODR14: u1,
                ///  Port output data (y = 0..15)
                ODR15: u1,
                padding: u16,
            }),
            ///  GPIO port bit set/reset register
            BSRR: mmio.Mmio(packed struct(u32) {
                ///  Port x set bit y (y= 0..15)
                BS0: u1,
                ///  Port x set bit y (y= 0..15)
                BS1: u1,
                ///  Port x set bit y (y= 0..15)
                BS2: u1,
                ///  Port x set bit y (y= 0..15)
                BS3: u1,
                ///  Port x set bit y (y= 0..15)
                BS4: u1,
                ///  Port x set bit y (y= 0..15)
                BS5: u1,
                ///  Port x set bit y (y= 0..15)
                BS6: u1,
                ///  Port x set bit y (y= 0..15)
                BS7: u1,
                ///  Port x set bit y (y= 0..15)
                BS8: u1,
                ///  Port x set bit y (y= 0..15)
                BS9: u1,
                ///  Port x set bit y (y= 0..15)
                BS10: u1,
                ///  Port x set bit y (y= 0..15)
                BS11: u1,
                ///  Port x set bit y (y= 0..15)
                BS12: u1,
                ///  Port x set bit y (y= 0..15)
                BS13: u1,
                ///  Port x set bit y (y= 0..15)
                BS14: u1,
                ///  Port x set bit y (y= 0..15)
                BS15: u1,
                ///  Port x set bit y (y= 0..15)
                BR0: u1,
                ///  Port x reset bit y (y = 0..15)
                BR1: u1,
                ///  Port x reset bit y (y = 0..15)
                BR2: u1,
                ///  Port x reset bit y (y = 0..15)
                BR3: u1,
                ///  Port x reset bit y (y = 0..15)
                BR4: u1,
                ///  Port x reset bit y (y = 0..15)
                BR5: u1,
                ///  Port x reset bit y (y = 0..15)
                BR6: u1,
                ///  Port x reset bit y (y = 0..15)
                BR7: u1,
                ///  Port x reset bit y (y = 0..15)
                BR8: u1,
                ///  Port x reset bit y (y = 0..15)
                BR9: u1,
                ///  Port x reset bit y (y = 0..15)
                BR10: u1,
                ///  Port x reset bit y (y = 0..15)
                BR11: u1,
                ///  Port x reset bit y (y = 0..15)
                BR12: u1,
                ///  Port x reset bit y (y = 0..15)
                BR13: u1,
                ///  Port x reset bit y (y = 0..15)
                BR14: u1,
                ///  Port x reset bit y (y = 0..15)
                BR15: u1,
            }),
            ///  GPIO port configuration lock register
            LCKR: mmio.Mmio(packed struct(u32) {
                ///  Port x lock bit y (y= 0..15)
                LCK0: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK1: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK2: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK3: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK4: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK5: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK6: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK7: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK8: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK9: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK10: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK11: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK12: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK13: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK14: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK15: u1,
                ///  Port x lock bit y (y= 0..15)
                LCKK: u1,
                padding: u15,
            }),
            ///  GPIO alternate function low register
            AFRL: mmio.Mmio(packed struct(u32) {
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL0: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL1: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL2: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL3: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL4: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL5: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL6: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL7: u4,
            }),
            ///  GPIO alternate function high register
            AFRH: mmio.Mmio(packed struct(u32) {
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH8: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH9: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH10: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH11: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH12: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH13: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH14: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH15: u4,
            }),
        };

        ///  General-purpose I/Os
        pub const GPIOA = extern struct {
            ///  GPIO port mode register
            MODER: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (y = 0..15)
                MODER0: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER1: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER2: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER3: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER4: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER5: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER6: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER7: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER8: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER9: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER10: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER11: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER12: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER13: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER14: u2,
                ///  Port x configuration bits (y = 0..15)
                MODER15: u2,
            }),
            ///  GPIO port output type register
            OTYPER: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (y = 0..15)
                OT0: u1,
                ///  Port x configuration bits (y = 0..15)
                OT1: u1,
                ///  Port x configuration bits (y = 0..15)
                OT2: u1,
                ///  Port x configuration bits (y = 0..15)
                OT3: u1,
                ///  Port x configuration bits (y = 0..15)
                OT4: u1,
                ///  Port x configuration bits (y = 0..15)
                OT5: u1,
                ///  Port x configuration bits (y = 0..15)
                OT6: u1,
                ///  Port x configuration bits (y = 0..15)
                OT7: u1,
                ///  Port x configuration bits (y = 0..15)
                OT8: u1,
                ///  Port x configuration bits (y = 0..15)
                OT9: u1,
                ///  Port x configuration bits (y = 0..15)
                OT10: u1,
                ///  Port x configuration bits (y = 0..15)
                OT11: u1,
                ///  Port x configuration bits (y = 0..15)
                OT12: u1,
                ///  Port x configuration bits (y = 0..15)
                OT13: u1,
                ///  Port x configuration bits (y = 0..15)
                OT14: u1,
                ///  Port x configuration bits (y = 0..15)
                OT15: u1,
                padding: u16,
            }),
            ///  GPIO port output speed register
            OSPEEDR: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR0: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR1: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR2: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR3: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR4: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR5: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR6: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR7: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR8: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR9: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR10: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR11: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR12: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR13: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR14: u2,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR15: u2,
            }),
            ///  GPIO port pull-up/pull-down register
            PUPDR: mmio.Mmio(packed struct(u32) {
                ///  Port x configuration bits (y = 0..15)
                PUPDR0: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR1: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR2: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR3: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR4: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR5: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR6: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR7: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR8: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR9: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR10: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR11: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR12: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR13: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR14: u2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR15: u2,
            }),
            ///  GPIO port input data register
            IDR: mmio.Mmio(packed struct(u32) {
                ///  Port input data (y = 0..15)
                IDR0: u1,
                ///  Port input data (y = 0..15)
                IDR1: u1,
                ///  Port input data (y = 0..15)
                IDR2: u1,
                ///  Port input data (y = 0..15)
                IDR3: u1,
                ///  Port input data (y = 0..15)
                IDR4: u1,
                ///  Port input data (y = 0..15)
                IDR5: u1,
                ///  Port input data (y = 0..15)
                IDR6: u1,
                ///  Port input data (y = 0..15)
                IDR7: u1,
                ///  Port input data (y = 0..15)
                IDR8: u1,
                ///  Port input data (y = 0..15)
                IDR9: u1,
                ///  Port input data (y = 0..15)
                IDR10: u1,
                ///  Port input data (y = 0..15)
                IDR11: u1,
                ///  Port input data (y = 0..15)
                IDR12: u1,
                ///  Port input data (y = 0..15)
                IDR13: u1,
                ///  Port input data (y = 0..15)
                IDR14: u1,
                ///  Port input data (y = 0..15)
                IDR15: u1,
                padding: u16,
            }),
            ///  GPIO port output data register
            ODR: mmio.Mmio(packed struct(u32) {
                ///  Port output data (y = 0..15)
                ODR0: u1,
                ///  Port output data (y = 0..15)
                ODR1: u1,
                ///  Port output data (y = 0..15)
                ODR2: u1,
                ///  Port output data (y = 0..15)
                ODR3: u1,
                ///  Port output data (y = 0..15)
                ODR4: u1,
                ///  Port output data (y = 0..15)
                ODR5: u1,
                ///  Port output data (y = 0..15)
                ODR6: u1,
                ///  Port output data (y = 0..15)
                ODR7: u1,
                ///  Port output data (y = 0..15)
                ODR8: u1,
                ///  Port output data (y = 0..15)
                ODR9: u1,
                ///  Port output data (y = 0..15)
                ODR10: u1,
                ///  Port output data (y = 0..15)
                ODR11: u1,
                ///  Port output data (y = 0..15)
                ODR12: u1,
                ///  Port output data (y = 0..15)
                ODR13: u1,
                ///  Port output data (y = 0..15)
                ODR14: u1,
                ///  Port output data (y = 0..15)
                ODR15: u1,
                padding: u16,
            }),
            ///  GPIO port bit set/reset register
            BSRR: mmio.Mmio(packed struct(u32) {
                ///  Port x set bit y (y= 0..15)
                BS0: u1,
                ///  Port x set bit y (y= 0..15)
                BS1: u1,
                ///  Port x set bit y (y= 0..15)
                BS2: u1,
                ///  Port x set bit y (y= 0..15)
                BS3: u1,
                ///  Port x set bit y (y= 0..15)
                BS4: u1,
                ///  Port x set bit y (y= 0..15)
                BS5: u1,
                ///  Port x set bit y (y= 0..15)
                BS6: u1,
                ///  Port x set bit y (y= 0..15)
                BS7: u1,
                ///  Port x set bit y (y= 0..15)
                BS8: u1,
                ///  Port x set bit y (y= 0..15)
                BS9: u1,
                ///  Port x set bit y (y= 0..15)
                BS10: u1,
                ///  Port x set bit y (y= 0..15)
                BS11: u1,
                ///  Port x set bit y (y= 0..15)
                BS12: u1,
                ///  Port x set bit y (y= 0..15)
                BS13: u1,
                ///  Port x set bit y (y= 0..15)
                BS14: u1,
                ///  Port x set bit y (y= 0..15)
                BS15: u1,
                ///  Port x set bit y (y= 0..15)
                BR0: u1,
                ///  Port x reset bit y (y = 0..15)
                BR1: u1,
                ///  Port x reset bit y (y = 0..15)
                BR2: u1,
                ///  Port x reset bit y (y = 0..15)
                BR3: u1,
                ///  Port x reset bit y (y = 0..15)
                BR4: u1,
                ///  Port x reset bit y (y = 0..15)
                BR5: u1,
                ///  Port x reset bit y (y = 0..15)
                BR6: u1,
                ///  Port x reset bit y (y = 0..15)
                BR7: u1,
                ///  Port x reset bit y (y = 0..15)
                BR8: u1,
                ///  Port x reset bit y (y = 0..15)
                BR9: u1,
                ///  Port x reset bit y (y = 0..15)
                BR10: u1,
                ///  Port x reset bit y (y = 0..15)
                BR11: u1,
                ///  Port x reset bit y (y = 0..15)
                BR12: u1,
                ///  Port x reset bit y (y = 0..15)
                BR13: u1,
                ///  Port x reset bit y (y = 0..15)
                BR14: u1,
                ///  Port x reset bit y (y = 0..15)
                BR15: u1,
            }),
            ///  GPIO port configuration lock register
            LCKR: mmio.Mmio(packed struct(u32) {
                ///  Port x lock bit y (y= 0..15)
                LCK0: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK1: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK2: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK3: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK4: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK5: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK6: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK7: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK8: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK9: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK10: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK11: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK12: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK13: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK14: u1,
                ///  Port x lock bit y (y= 0..15)
                LCK15: u1,
                ///  Port x lock bit y (y= 0..15)
                LCKK: u1,
                padding: u15,
            }),
            ///  GPIO alternate function low register
            AFRL: mmio.Mmio(packed struct(u32) {
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL0: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL1: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL2: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL3: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL4: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL5: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL6: u4,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL7: u4,
            }),
            ///  GPIO alternate function high register
            AFRH: mmio.Mmio(packed struct(u32) {
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH8: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH9: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH10: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH11: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH12: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH13: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH14: u4,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH15: u4,
            }),
        };

        ///  System configuration controller
        pub const SYSCFG = extern struct {
            ///  memory remap register
            MEMRM: mmio.Mmio(packed struct(u32) {
                ///  Memory mapping selection
                MEM_MODE: u3,
                reserved8: u5,
                ///  Flash bank mode selection
                FB_MODE: u1,
                reserved10: u1,
                ///  FMC memory mapping swap
                SWP_FMC: u2,
                padding: u20,
            }),
            ///  peripheral mode configuration register
            PMC: mmio.Mmio(packed struct(u32) {
                reserved16: u16,
                ///  ADC1DC2
                ADC1DC2: u1,
                ///  ADC2DC2
                ADC2DC2: u1,
                ///  ADC3DC2
                ADC3DC2: u1,
                reserved23: u4,
                ///  Ethernet PHY interface selection
                MII_RMII_SEL: u1,
                padding: u8,
            }),
            ///  external interrupt configuration register 1
            EXTICR1: mmio.Mmio(packed struct(u32) {
                ///  EXTI x configuration (x = 0 to 3)
                EXTI0: u4,
                ///  EXTI x configuration (x = 0 to 3)
                EXTI1: u4,
                ///  EXTI x configuration (x = 0 to 3)
                EXTI2: u4,
                ///  EXTI x configuration (x = 0 to 3)
                EXTI3: u4,
                padding: u16,
            }),
            ///  external interrupt configuration register 2
            EXTICR2: mmio.Mmio(packed struct(u32) {
                ///  EXTI x configuration (x = 4 to 7)
                EXTI4: u4,
                ///  EXTI x configuration (x = 4 to 7)
                EXTI5: u4,
                ///  EXTI x configuration (x = 4 to 7)
                EXTI6: u4,
                ///  EXTI x configuration (x = 4 to 7)
                EXTI7: u4,
                padding: u16,
            }),
            ///  external interrupt configuration register 3
            EXTICR3: mmio.Mmio(packed struct(u32) {
                ///  EXTI x configuration (x = 8 to 11)
                EXTI8: u4,
                ///  EXTI x configuration (x = 8 to 11)
                EXTI9: u4,
                ///  EXTI10
                EXTI10: u4,
                ///  EXTI x configuration (x = 8 to 11)
                EXTI11: u4,
                padding: u16,
            }),
            ///  external interrupt configuration register 4
            EXTICR4: mmio.Mmio(packed struct(u32) {
                ///  EXTI x configuration (x = 12 to 15)
                EXTI12: u4,
                ///  EXTI x configuration (x = 12 to 15)
                EXTI13: u4,
                ///  EXTI x configuration (x = 12 to 15)
                EXTI14: u4,
                ///  EXTI x configuration (x = 12 to 15)
                EXTI15: u4,
                padding: u16,
            }),
            reserved32: [8]u8,
            ///  Compensation cell control register
            CMPCR: mmio.Mmio(packed struct(u32) {
                ///  Compensation cell power-down
                CMP_PD: u1,
                reserved8: u7,
                ///  READY
                READY: u1,
                padding: u23,
            }),
        };

        ///  Serial peripheral interface
        pub const SPI1 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) {
                ///  Clock phase
                CPHA: u1,
                ///  Clock polarity
                CPOL: u1,
                ///  Master selection
                MSTR: u1,
                ///  Baud rate control
                BR: u3,
                ///  SPI enable
                SPE: u1,
                ///  Frame format
                LSBFIRST: u1,
                ///  Internal slave select
                SSI: u1,
                ///  Software slave management
                SSM: u1,
                ///  Receive only
                RXONLY: u1,
                ///  Data frame format
                DFF: u1,
                ///  CRC transfer next
                CRCNEXT: u1,
                ///  Hardware CRC calculation enable
                CRCEN: u1,
                ///  Output enable in bidirectional mode
                BIDIOE: u1,
                ///  Bidirectional data mode enable
                BIDIMODE: u1,
                padding: u16,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) {
                ///  Rx buffer DMA enable
                RXDMAEN: u1,
                ///  Tx buffer DMA enable
                TXDMAEN: u1,
                ///  SS output enable
                SSOE: u1,
                reserved4: u1,
                ///  Frame format
                FRF: u1,
                ///  Error interrupt enable
                ERRIE: u1,
                ///  RX buffer not empty interrupt enable
                RXNEIE: u1,
                ///  Tx buffer empty interrupt enable
                TXEIE: u1,
                padding: u24,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Receive buffer not empty
                RXNE: u1,
                ///  Transmit buffer empty
                TXE: u1,
                ///  Channel side
                CHSIDE: u1,
                ///  Underrun flag
                UDR: u1,
                ///  CRC error flag
                CRCERR: u1,
                ///  Mode fault
                MODF: u1,
                ///  Overrun flag
                OVR: u1,
                ///  Busy flag
                BSY: u1,
                ///  TI frame format error
                TIFRFE: u1,
                padding: u23,
            }),
            ///  data register
            DR: mmio.Mmio(packed struct(u32) {
                ///  Data register
                DR: u16,
                padding: u16,
            }),
            ///  CRC polynomial register
            CRCPR: mmio.Mmio(packed struct(u32) {
                ///  CRC polynomial register
                CRCPOLY: u16,
                padding: u16,
            }),
            ///  RX CRC register
            RXCRCR: mmio.Mmio(packed struct(u32) {
                ///  Rx CRC register
                RxCRC: u16,
                padding: u16,
            }),
            ///  TX CRC register
            TXCRCR: mmio.Mmio(packed struct(u32) {
                ///  Tx CRC register
                TxCRC: u16,
                padding: u16,
            }),
            ///  I2S configuration register
            I2SCFGR: mmio.Mmio(packed struct(u32) {
                ///  Channel length (number of bits per audio channel)
                CHLEN: u1,
                ///  Data length to be transferred
                DATLEN: u2,
                ///  Steady state clock polarity
                CKPOL: u1,
                ///  I2S standard selection
                I2SSTD: u2,
                reserved7: u1,
                ///  PCM frame synchronization
                PCMSYNC: u1,
                ///  I2S configuration mode
                I2SCFG: u2,
                ///  I2S Enable
                I2SE: u1,
                ///  I2S mode selection
                I2SMOD: u1,
                padding: u20,
            }),
            ///  I2S prescaler register
            I2SPR: mmio.Mmio(packed struct(u32) {
                ///  I2S Linear prescaler
                I2SDIV: u8,
                ///  Odd factor for the prescaler
                ODD: u1,
                ///  Master clock output enable
                MCKOE: u1,
                padding: u22,
            }),
        };

        ///  Floting point unit
        pub const FPU = extern struct {
            ///  Floating-point context control register
            FPCCR: mmio.Mmio(packed struct(u32) {
                ///  LSPACT
                LSPACT: u1,
                ///  USER
                USER: u1,
                reserved3: u1,
                ///  THREAD
                THREAD: u1,
                ///  HFRDY
                HFRDY: u1,
                ///  MMRDY
                MMRDY: u1,
                ///  BFRDY
                BFRDY: u1,
                reserved8: u1,
                ///  MONRDY
                MONRDY: u1,
                reserved30: u21,
                ///  LSPEN
                LSPEN: u1,
                ///  ASPEN
                ASPEN: u1,
            }),
            ///  Floating-point context address register
            FPCAR: mmio.Mmio(packed struct(u32) {
                reserved3: u3,
                ///  Location of unpopulated floating-point
                ADDRESS: u29,
            }),
            ///  Floating-point status control register
            FPSCR: mmio.Mmio(packed struct(u32) {
                ///  Invalid operation cumulative exception bit
                IOC: u1,
                ///  Division by zero cumulative exception bit.
                DZC: u1,
                ///  Overflow cumulative exception bit
                OFC: u1,
                ///  Underflow cumulative exception bit
                UFC: u1,
                ///  Inexact cumulative exception bit
                IXC: u1,
                reserved7: u2,
                ///  Input denormal cumulative exception bit.
                IDC: u1,
                reserved22: u14,
                ///  Rounding Mode control field
                RMode: u2,
                ///  Flush-to-zero mode control bit:
                FZ: u1,
                ///  Default NaN mode control bit
                DN: u1,
                ///  Alternative half-precision control bit
                AHP: u1,
                reserved28: u1,
                ///  Overflow condition code flag
                V: u1,
                ///  Carry condition code flag
                C: u1,
                ///  Zero condition code flag
                Z: u1,
                ///  Negative condition code flag
                N: u1,
            }),
        };

        ///  HDMI-CEC controller
        pub const HDMI_CEC = extern struct {
            ///  CEC control register
            CEC_CR: mmio.Mmio(packed struct(u32) {
                ///  CEC Enable
                CECEN: u1,
                ///  Tx Start Of Message
                TXSOM: u1,
                ///  Tx End Of Message
                TXEOM: u1,
                padding: u29,
            }),
            ///  CEC configuration register
            CEC_CFGR: mmio.Mmio(packed struct(u32) {
                ///  Signal Free Time
                SFT: u3,
                ///  Rx-Tolerance
                RXTOL: u1,
                ///  Rx-Stop on Bit Rising Error
                BRESTP: u1,
                ///  Generate Error-Bit on Bit Rising Error
                BREGEN: u1,
                ///  Generate Error-Bit on Long Bit Period Error
                LBPEGEN: u1,
                ///  Avoid Error-Bit Generation in Broadcast
                BRDNOGEN: u1,
                ///  SFT Option Bit
                SFTOP: u1,
                reserved16: u7,
                ///  Own addresses configuration
                OAR: u15,
                ///  Listen mode
                LSTN: u1,
            }),
            ///  CEC Tx data register
            CEC_TXDR: mmio.Mmio(packed struct(u32) {
                ///  Tx Data register
                TXD: u8,
                padding: u24,
            }),
            ///  CEC Rx Data Register
            CEC_RXDR: mmio.Mmio(packed struct(u32) {
                ///  Rx Data register
                RXD: u8,
                padding: u24,
            }),
            ///  CEC Interrupt and Status Register
            CEC_ISR: mmio.Mmio(packed struct(u32) {
                ///  Rx-Byte Received
                RXBR: u1,
                ///  End Of Reception
                RXEND: u1,
                ///  Rx-Overrun
                RXOVR: u1,
                ///  Rx-Bit Rising Error
                BRE: u1,
                ///  Rx-Short Bit Period Error
                SBPE: u1,
                ///  Rx-Long Bit Period Error
                LBPE: u1,
                ///  Rx-Missing Acknowledge
                RXACKE: u1,
                ///  Arbitration Lost
                ARBLST: u1,
                ///  Tx-Byte Request
                TXBR: u1,
                ///  End of Transmission
                TXEND: u1,
                ///  Tx-Buffer Underrun
                TXUDR: u1,
                ///  Tx-Error
                TXERR: u1,
                ///  Tx-Missing Acknowledge Error
                TXACKE: u1,
                padding: u19,
            }),
            ///  CEC interrupt enable register
            CEC_IER: mmio.Mmio(packed struct(u32) {
                ///  Rx-Byte Received Interrupt Enable
                RXBRIE: u1,
                ///  End Of Reception Interrupt Enable
                RXENDIE: u1,
                ///  Rx-Buffer Overrun Interrupt Enable
                RXOVRIE: u1,
                ///  Bit Rising Error Interrupt Enable
                BREIE: u1,
                ///  Short Bit Period Error Interrupt Enable
                SBPEIE: u1,
                ///  Long Bit Period Error Interrupt Enable
                LBPEIE: u1,
                ///  Rx-Missing Acknowledge Error Interrupt Enable
                RXACKIE: u1,
                ///  Arbitration Lost Interrupt Enable
                ARBLSTIE: u1,
                ///  Tx-Byte Request Interrupt Enable
                TXBRIE: u1,
                ///  Tx-End Of Message Interrupt Enable
                TXENDIE: u1,
                ///  Tx-Underrun Interrupt Enable
                TXUDRIE: u1,
                ///  Tx-Error Interrupt Enable
                TXERRIE: u1,
                ///  Tx-Missing Acknowledge Error Interrupt Enable
                TXACKIE: u1,
                padding: u19,
            }),
        };

        ///  SDMMC
        pub const SDMMC = extern struct {
            ///  SDMMC power control register
            SDMMC_POWER: mmio.Mmio(packed struct(u32) {
                ///  SDMMC state control bits. These bits can only be written when the SDMMC is not in the power-on state (PWRCTRL?11). These bits are used to define the functional state of the SDMMC signals: Any further write will be ignored, PWRCTRL value will keep 11.
                PWRCTRL: u2,
                ///  Voltage switch sequence start. This bit is used to start the timing critical section of the voltage switch sequence:
                VSWITCH: u1,
                ///  Voltage switch procedure enable. This bit can only be written by firmware when CPSM is disabled (CPSMEN = 0). This bit is used to stop the SDMMC_CK after the voltage switch command response:
                VSWITCHEN: u1,
                ///  Data and command direction signals polarity selection. This bit can only be written when the SDMMC is in the power-off state (PWRCTRL = 00).
                DIRPOL: u1,
                padding: u27,
            }),
            ///  The SDMMC_CLKCR register controls the SDMMC_CK output clock, the SDMMC_RX_CLK receive clock, and the bus width.
            SDMMC_CLKCR: mmio.Mmio(packed struct(u32) {
                ///  Clock divide factor This bit can only be written when the CPSM and DPSM are not active (CPSMACT = 0 and DPSMACT = 0). This field defines the divide factor between the input clock (SDMMCCLK) and the output clock (SDMMC_CK): SDMMC_CK frequency = SDMMCCLK / [2 * CLKDIV]. 0xx: etc.. xxx: etc..
                CLKDIV: u10,
                reserved12: u2,
                ///  Power saving configuration bit This bit can only be written when the CPSM and DPSM are not active (CPSMACT = 0 and DPSMACT = 0) For power saving, the SDMMC_CK clock output can be disabled when the bus is idle by setting PWRSAV:
                PWRSAV: u1,
                reserved14: u1,
                ///  Wide bus mode enable bit This bit can only be written when the CPSM and DPSM are not active (CPSMACT = 0 and DPSMACT = 0)
                WIDBUS: u2,
                ///  SDMMC_CK dephasing selection bit for data and Command. This bit can only be written when the CPSM and DPSM are not active (CPSMACT = 0 and DPSMACT = 0). When clock division = 1 (CLKDIV = 0), this bit has no effect. Data and Command change on SDMMC_CK falling edge. When clock division &gt;1 (CLKDIV &gt; 0) &amp; DDR = 0: - SDMMC_CK edge occurs on SDMMCCLK rising edge. When clock division >1 (CLKDIV > 0) & DDR = 1: - Data changed on the SDMMCCLK falling edge succeeding a SDMMC_CK edge. - SDMMC_CK edge occurs on SDMMCCLK rising edge. - Data changed on the SDMMC_CK falling edge succeeding a SDMMC_CK edge. - SDMMC_CK edge occurs on SDMMCCLK rising edge.
                NEGEDGE: u1,
                ///  Hardware flow control enable This bit can only be written when the CPSM and DPSM are not active (CPSMACT = 0 and DPSMACT = 0) When Hardware flow control is enabled, the meaning of the TXFIFOE and RXFIFOF flags change, please see SDMMC status register definition in Section56.8.11.
                HWFC_EN: u1,
                ///  Data rate signaling selection This bit can only be written when the CPSM and DPSM are not active (CPSMACT = 0 and DPSMACT = 0) DDR rate shall only be selected with 4-bit or 8-bit wide bus mode. (WIDBUS &gt; 00). DDR = 1 has no effect when WIDBUS = 00 (1-bit wide bus). DDR rate shall only be selected with clock division &gt;1. (CLKDIV &gt; 0)
                DDR: u1,
                ///  Bus speed mode selection between DS, HS, SDR12, SDR25 and SDR50, DDR50, SDR104. This bit can only be written when the CPSM and DPSM are not active (CPSMACT = 0 and DPSMACT = 0)
                BUSSPEED: u1,
                ///  Receive clock selection. These bits can only be written when the CPSM and DPSM are not active (CPSMACT = 0 and DPSMACT = 0)
                SELCLKRX: u2,
                padding: u10,
            }),
            ///  The SDMMC_ARGR register contains a 32-bit command argument, which is sent to a card as part of a command message.
            SDMMC_ARGR: mmio.Mmio(packed struct(u32) {
                ///  Command argument. These bits can only be written by firmware when CPSM is disabled (CPSMEN = 0). Command argument sent to a card as part of a command message. If a command contains an argument, it must be loaded into this register before writing a command to the command register.
                CMDARG: u32,
            }),
            ///  The SDMMC_CMDR register contains the command index and command type bits. The command index is sent to a card as part of a command message. The command type bits control the command path state machine (CPSM).
            SDMMC_CMDR: mmio.Mmio(packed struct(u32) {
                ///  Command index. This bit can only be written by firmware when CPSM is disabled (CPSMEN = 0). The command index is sent to the card as part of a command message.
                CMDINDEX: u6,
                ///  The CPSM treats the command as a data transfer command, stops the interrupt period, and signals DataEnable to the DPSM This bit can only be written by firmware when CPSM is disabled (CPSMEN = 0). If this bit is set, the CPSM issues an end of interrupt period and issues DataEnable signal to the DPSM when the command is sent.
                CMDTRANS: u1,
                ///  The CPSM treats the command as a Stop Transmission command and signals Abort to the DPSM. This bit can only be written by firmware when CPSM is disabled (CPSMEN = 0). If this bit is set, the CPSM issues the Abort signal to the DPSM when the command is sent.
                CMDSTOP: u1,
                ///  Wait for response bits. This bit can only be written by firmware when CPSM is disabled (CPSMEN = 0). They are used to configure whether the CPSM is to wait for a response, and if yes, which kind of response.
                WAITRESP: u2,
                ///  CPSM waits for interrupt request. If this bit is set, the CPSM disables command timeout and waits for an card interrupt request (Response). If this bit is cleared in the CPSM Wait state, will cause the abort of the interrupt mode.
                WAITINT: u1,
                ///  CPSM Waits for end of data transfer (CmdPend internal signal) from DPSM. This bit when set, the CPSM waits for the end of data transfer trigger before it starts sending a command. WAITPEND is only taken into account when DTMODE = MMC stream data transfer, WIDBUS = 1-bit wide bus mode, DPSMACT = 1 and DTDIR = from host to card.
                WAITPEND: u1,
                ///  Command path state machine (CPSM) Enable bit This bit is written 1 by firmware, and cleared by hardware when the CPSM enters the Idle state. If this bit is set, the CPSM is enabled. When DTEN = 1, no command will be transfered nor boot procedure will be started. CPSMEN is cleared to 0.
                CPSMEN: u1,
                ///  Hold new data block transmission and reception in the DPSM. If this bit is set, the DPSM will not move from the Wait_S state to the Send state or from the Wait_R state to the Receive state.
                DTHOLD: u1,
                ///  Select the boot mode procedure to be used. This bit can only be written by firmware when CPSM is disabled (CPSMEN = 0)
                BOOTMODE: u1,
                ///  Enable boot mode procedure.
                BOOTEN: u1,
                ///  The CPSM treats the command as a Suspend or Resume command and signals interrupt period start/end. This bit can only be written by firmware when CPSM is disabled (CPSMEN = 0). CMDSUSPEND = 1 and CMDTRANS = 0 Suspend command, start interrupt period when response bit BS=0. CMDSUSPEND = 1 and CMDTRANS = 1 Resume command with data, end interrupt period when response bit DF=1.
                CMDSUSPEND: u1,
                padding: u15,
            }),
            ///  The SDMMC_RESP1/2/3/4R registers contain the status of a card, which is part of the received response.
            SDMMC_RESP1R: mmio.Mmio(packed struct(u32) {
                ///  see Table404.
                CARDSTATUS1: u32,
            }),
            ///  The SDMMC_RESP1/2/3/4R registers contain the status of a card, which is part of the received response.
            SDMMC_RESP2R: mmio.Mmio(packed struct(u32) {
                ///  see Table404.
                CARDSTATUS2: u32,
            }),
            ///  The SDMMC_RESP1/2/3/4R registers contain the status of a card, which is part of the received response.
            SDMMC_RESP3R: mmio.Mmio(packed struct(u32) {
                ///  see Table404.
                CARDSTATUS3: u32,
            }),
            ///  The SDMMC_RESP1/2/3/4R registers contain the status of a card, which is part of the received response.
            SDMMC_RESP4R: mmio.Mmio(packed struct(u32) {
                ///  see Table404.
                CARDSTATUS4: u32,
            }),
            reserved36: [4]u8,
            ///  The SDMMC_DTIMER register contains the data timeout period, in card bus clock periods. A counter loads the value from the SDMMC_DTIMER register, and starts decrementing when the data path state machine (DPSM) enters the Wait_R or Busy state. If the timer reaches 0 while the DPSM is in either of these states, the timeout status flag is set.
            SDMMC_DTIMER: mmio.Mmio(packed struct(u32) {
                ///  Data and R1b busy timeout period This bit can only be written when the CPSM and DPSM are not active (CPSMACT = 0 and DPSMACT = 0). Data and R1b busy timeout period expressed in card bus clock periods.
                DATATIME: u32,
            }),
            ///  The SDMMC_DLENR register contains the number of data bytes to be transferred. The value is loaded into the data counter when data transfer starts.
            SDMMC_DLENR: mmio.Mmio(packed struct(u32) {
                ///  Data length value This register can only be written by firmware when DPSM is inactive (DPSMACT = 0). Number of data bytes to be transferred. When DDR = 1 DATALENGTH is truncated to a multiple of 2. (The last odd byte is not transfered) When DATALENGTH = 0 no data will be transfered, when requested by a CPSMEN and CMDTRANS = 1 also no command will be transfered. DTEN and CPSMEN are cleared to 0.
                DATALENGTH: u25,
                padding: u7,
            }),
            ///  The SDMMC_DCTRL register control the data path state machine (DPSM).
            SDMMC_DCTRL: mmio.Mmio(packed struct(u32) {
                ///  Data transfer enable bit This bit can only be written by firmware when DPSM is inactive (DPSMACT = 0). This bit is cleared by Hardware when data transfer completes. This bit shall only be used to transfer data when no associated data transfer command is used, i.e. shall not be used with SD or eMMC cards.
                DTEN: u1,
                ///  Data transfer direction selection This bit can only be written by firmware when DPSM is inactive (DPSMACT = 0).
                DTDIR: u1,
                ///  Data transfer mode selection. This bit can only be written by firmware when DPSM is inactive (DPSMACT = 0).
                DTMODE: u2,
                ///  Data block size This bit can only be written by firmware when DPSM is inactive (DPSMACT = 0). Define the data block length when the block data transfer mode is selected: When DATALENGTH is not a multiple of DBLOCKSIZE, the transfered data is truncated at a multiple of DBLOCKSIZE. (Any remain data will not be transfered.) When DDR = 1, DBLOCKSIZE = 0000 shall not be used. (No data will be transfered)
                DBLOCKSIZE: u4,
                ///  Read wait start. If this bit is set, read wait operation starts.
                RWSTART: u1,
                ///  Read wait stop This bit is written by firmware and auto cleared by hardware when the DPSM moves from the READ_WAIT state to the WAIT_R or IDLE state.
                RWSTOP: u1,
                ///  Read wait mode. This bit can only be written by firmware when DPSM is inactive (DPSMACT = 0).
                RWMOD: u1,
                ///  SD I/O interrupt enable functions This bit can only be written by firmware when DPSM is inactive (DPSMACT = 0). If this bit is set, the DPSM enables the SD I/O card specific interrupt operation.
                SDIOEN: u1,
                ///  Enable the reception of the boot acknowledgment. This bit can only be written by firmware when DPSM is inactive (DPSMACT = 0).
                BOOTACKEN: u1,
                ///  FIFO reset, will flush any remaining data. This bit can only be written by firmware when IDMAEN= 0 and DPSM is active (DPSMACT = 1). This bit will only take effect when a transfer error or transfer hold occurs.
                FIFORST: u1,
                padding: u18,
            }),
            ///  The SDMMC_DCNTR register loads the value from the data length register (see SDMMC_DLENR) when the DPSM moves from the Idle state to the Wait_R or Wait_S state. As data is transferred, the counter decrements the value until it reaches 0. The DPSM then moves to the Idle state and when there has been no error, the data status end flag (DATAEND) is set.
            SDMMC_DCNTR: mmio.Mmio(packed struct(u32) {
                ///  Data count value When read, the number of remaining data bytes to be transferred is returned. Write has no effect.
                DATACOUNT: u27,
                padding: u5,
            }),
            ///  The SDMMC_STAR register is a read-only register. It contains two types of flag:Static flags (bits [29,21,11:0]): these bits remain asserted until they are cleared by writing to the SDMMC interrupt Clear register (see SDMMC_ICR)Dynamic flags (bits [20:12]): these bits change state depending on the state of the underlying logic (for example, FIFO full and empty flags are asserted and de-asserted as data while written to the FIFO)
            SDMMC_STAR: mmio.Mmio(packed struct(u32) {
                ///  Command response received (CRC check failed). Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                CCRCFAIL: u1,
                ///  Data block sent/received (CRC check failed). Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                DCRCFAIL: u1,
                ///  Command response timeout. Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR. The Command Timeout period has a fixed value of 64 SDMMC_CK clock periods.
                CTIMEOUT: u1,
                ///  Data timeout. Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                DTIMEOUT: u1,
                ///  Transmit FIFO underrun error or IDMA read transfer error. Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                TXUNDERR: u1,
                ///  Received FIFO overrun error or IDMA write transfer error. Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                RXOVERR: u1,
                ///  Command response received (CRC check passed, or no CRC). Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                CMDREND: u1,
                ///  Command sent (no response required). Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                CMDSENT: u1,
                ///  Data transfer ended correctly. (data counter, DATACOUNT is zero and no errors occur). Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                DATAEND: u1,
                ///  Data transfer Hold. Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                DHOLD: u1,
                ///  Data block sent/received. (CRC check passed) and DPSM moves to the READWAIT state. Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                DBCKEND: u1,
                ///  Data transfer aborted by CMD12. Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                DABORT: u1,
                ///  Data path state machine active, i.e. not in Idle state. This is a hardware status flag only, does not generate an interrupt.
                DPSMACT: u1,
                ///  Command path state machine active, i.e. not in Idle state. This is a hardware status flag only, does not generate an interrupt.
                CPSMACT: u1,
                ///  Transmit FIFO half empty At least half the number of words can be written into the FIFO. This bit is cleared when the FIFO becomes half+1 full.
                TXFIFOHE: u1,
                ///  Receive FIFO half full There are at least half the number of words in the FIFO. This bit is cleared when the FIFO becomes half+1 empty.
                RXFIFOHF: u1,
                ///  Transmit FIFO full This is a hardware status flag only, does not generate an interrupt. This bit is cleared when one FIFO location becomes empty.
                TXFIFOF: u1,
                ///  Receive FIFO full This bit is cleared when one FIFO location becomes empty.
                RXFIFOF: u1,
                ///  Transmit FIFO empty This bit is cleared when one FIFO location becomes full.
                TXFIFOE: u1,
                ///  Receive FIFO empty This is a hardware status flag only, does not generate an interrupt. This bit is cleared when one FIFO location becomes full.
                RXFIFOE: u1,
                ///  Inverted value of SDMMC_D0 line (Busy), sampled at the end of a CMD response and a second time 2 SDMMC_CK cycles after the CMD response. This bit is reset to not busy when the SDMMCD0 line changes from busy to not busy. This bit does not signal busy due to data transfer. This is a hardware status flag only, it does not generate an interrupt.
                BUSYD0: u1,
                ///  end of SDMMC_D0 Busy following a CMD response detected. This indicates only end of busy following a CMD response. This bit does not signal busy due to data transfer. Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                BUSYD0END: u1,
                ///  SDIO interrupt received. Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                SDIOIT: u1,
                ///  Boot acknowledgment received (boot acknowledgment check fail). Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                ACKFAIL: u1,
                ///  Boot acknowledgment timeout. Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                ACKTIMEOUT: u1,
                ///  Voltage switch critical timing section completion. Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                VSWEND: u1,
                ///  SDMMC_CK stopped in Voltage switch procedure. Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                CKSTOP: u1,
                ///  IDMA transfer error. Interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                IDMATE: u1,
                ///  IDMA buffer transfer complete. interrupt flag is cleared by writing corresponding interrupt clear bit in SDMMC_ICR.
                IDMABTC: u1,
                padding: u3,
            }),
            ///  The SDMMC_ICR register is a write-only register. Writing a bit with 1 clears the corresponding bit in the SDMMC_STAR status register.
            SDMMC_ICR: mmio.Mmio(packed struct(u32) {
                ///  CCRCFAIL flag clear bit Set by software to clear the CCRCFAIL flag.
                CCRCFAILC: u1,
                ///  DCRCFAIL flag clear bit Set by software to clear the DCRCFAIL flag.
                DCRCFAILC: u1,
                ///  CTIMEOUT flag clear bit Set by software to clear the CTIMEOUT flag.
                CTIMEOUTC: u1,
                ///  DTIMEOUT flag clear bit Set by software to clear the DTIMEOUT flag.
                DTIMEOUTC: u1,
                ///  TXUNDERR flag clear bit Set by software to clear TXUNDERR flag.
                TXUNDERRC: u1,
                ///  RXOVERR flag clear bit Set by software to clear the RXOVERR flag.
                RXOVERRC: u1,
                ///  CMDREND flag clear bit Set by software to clear the CMDREND flag.
                CMDRENDC: u1,
                ///  CMDSENT flag clear bit Set by software to clear the CMDSENT flag.
                CMDSENTC: u1,
                ///  DATAEND flag clear bit Set by software to clear the DATAEND flag.
                DATAENDC: u1,
                ///  DHOLD flag clear bit Set by software to clear the DHOLD flag.
                DHOLDC: u1,
                ///  DBCKEND flag clear bit Set by software to clear the DBCKEND flag.
                DBCKENDC: u1,
                ///  DABORT flag clear bit Set by software to clear the DABORT flag.
                DABORTC: u1,
                reserved21: u9,
                ///  BUSYD0END flag clear bit Set by software to clear the BUSYD0END flag.
                BUSYD0ENDC: u1,
                ///  SDIOIT flag clear bit Set by software to clear the SDIOIT flag.
                SDIOITC: u1,
                ///  ACKFAIL flag clear bit Set by software to clear the ACKFAIL flag.
                ACKFAILC: u1,
                ///  ACKTIMEOUT flag clear bit Set by software to clear the ACKTIMEOUT flag.
                ACKTIMEOUTC: u1,
                ///  VSWEND flag clear bit Set by software to clear the VSWEND flag.
                VSWENDC: u1,
                ///  CKSTOP flag clear bit Set by software to clear the CKSTOP flag.
                CKSTOPC: u1,
                ///  IDMA transfer error clear bit Set by software to clear the IDMATE flag.
                IDMATEC: u1,
                ///  IDMA buffer transfer complete clear bit Set by software to clear the IDMABTC flag.
                IDMABTCC: u1,
                padding: u3,
            }),
            ///  The interrupt mask register determines which status flags generate an interrupt request by setting the corresponding bit to 1.
            SDMMC_MASKR: mmio.Mmio(packed struct(u32) {
                ///  Command CRC fail interrupt enable Set and cleared by software to enable/disable interrupt caused by command CRC failure.
                CCRCFAILIE: u1,
                ///  Data CRC fail interrupt enable Set and cleared by software to enable/disable interrupt caused by data CRC failure.
                DCRCFAILIE: u1,
                ///  Command timeout interrupt enable Set and cleared by software to enable/disable interrupt caused by command timeout.
                CTIMEOUTIE: u1,
                ///  Data timeout interrupt enable Set and cleared by software to enable/disable interrupt caused by data timeout.
                DTIMEOUTIE: u1,
                ///  Tx FIFO underrun error interrupt enable Set and cleared by software to enable/disable interrupt caused by Tx FIFO underrun error.
                TXUNDERRIE: u1,
                ///  Rx FIFO overrun error interrupt enable Set and cleared by software to enable/disable interrupt caused by Rx FIFO overrun error.
                RXOVERRIE: u1,
                ///  Command response received interrupt enable Set and cleared by software to enable/disable interrupt caused by receiving command response.
                CMDRENDIE: u1,
                ///  Command sent interrupt enable Set and cleared by software to enable/disable interrupt caused by sending command.
                CMDSENTIE: u1,
                ///  Data end interrupt enable Set and cleared by software to enable/disable interrupt caused by data end.
                DATAENDIE: u1,
                ///  Data hold interrupt enable Set and cleared by software to enable/disable the interrupt generated when sending new data is hold in the DPSM Wait_S state.
                DHOLDIE: u1,
                ///  Data block end interrupt enable Set and cleared by software to enable/disable interrupt caused by data block end.
                DBCKENDIE: u1,
                ///  Data transfer aborted interrupt enable Set and cleared by software to enable/disable interrupt caused by a data transfer being aborted.
                DABORTIE: u1,
                reserved14: u2,
                ///  Tx FIFO half empty interrupt enable Set and cleared by software to enable/disable interrupt caused by Tx FIFO half empty.
                TXFIFOHEIE: u1,
                ///  Rx FIFO half full interrupt enable Set and cleared by software to enable/disable interrupt caused by Rx FIFO half full.
                RXFIFOHFIE: u1,
                reserved17: u1,
                ///  Rx FIFO full interrupt enable Set and cleared by software to enable/disable interrupt caused by Rx FIFO full.
                RXFIFOFIE: u1,
                ///  Tx FIFO empty interrupt enable Set and cleared by software to enable/disable interrupt caused by Tx FIFO empty.
                TXFIFOEIE: u1,
                reserved21: u2,
                ///  BUSYD0END interrupt enable Set and cleared by software to enable/disable the interrupt generated when SDMMC_D0 signal changes from busy to NOT busy following a CMD response.
                BUSYD0ENDIE: u1,
                ///  SDIO mode interrupt received interrupt enable Set and cleared by software to enable/disable the interrupt generated when receiving the SDIO mode interrupt.
                SDIOITIE: u1,
                ///  Acknowledgment Fail interrupt enable Set and cleared by software to enable/disable interrupt caused by acknowledgment Fail.
                ACKFAILIE: u1,
                ///  Acknowledgment timeout interrupt enable Set and cleared by software to enable/disable interrupt caused by acknowledgment timeout.
                ACKTIMEOUTIE: u1,
                ///  Voltage switch critical timing section completion interrupt enable Set and cleared by software to enable/disable the interrupt generated when voltage switch critical timing section completion.
                VSWENDIE: u1,
                ///  Voltage Switch clock stopped interrupt enable Set and cleared by software to enable/disable interrupt caused by Voltage Switch clock stopped.
                CKSTOPIE: u1,
                reserved28: u1,
                ///  IDMA buffer transfer complete interrupt enable Set and cleared by software to enable/disable the interrupt generated when the IDMA has transferred all data belonging to a memory buffer.
                IDMABTCIE: u1,
                padding: u3,
            }),
            ///  The SDMMC_ACKTIMER register contains the acknowledgment timeout period, in SDMMC_CK bus clock periods. A counter loads the value from the SDMMC_ACKTIMER register, and starts decrementing when the data path state machine (DPSM) enters the Wait_Ack state. If the timer reaches 0 while the DPSM is in this states, the acknowledgment timeout status flag is set.
            SDMMC_ACKTIMER: mmio.Mmio(packed struct(u32) {
                ///  Boot acknowledgment timeout period This bit can only be written by firmware when CPSM is disabled (CPSMEN = 0). Boot acknowledgment timeout period expressed in card bus clock periods.
                ACKTIME: u25,
                padding: u7,
            }),
            reserved80: [12]u8,
            ///  The receive and transmit FIFOs can be read or written as 32-bit wide registers. The FIFOs contain 32 entries on 32 sequential addresses. This allows the CPU to use its load and store multiple operands to read from/write to the FIFO.
            SDMMC_IDMACTRLR: mmio.Mmio(packed struct(u32) {
                ///  IDMA enable This bit can only be written by firmware when DPSM is inactive (DPSMACT = 0).
                IDMAEN: u1,
                ///  Buffer mode selection. This bit can only be written by firmware when DPSM is inactive (DPSMACT = 0).
                IDMABMODE: u1,
                ///  Double buffer mode active buffer indication This bit can only be written by firmware when DPSM is inactive (DPSMACT = 0). When IDMA is enabled this bit is toggled by hardware.
                IDMABACT: u1,
                padding: u29,
            }),
            ///  The SDMMC_IDMABSIZER register contains the buffers size when in double buffer configuration.
            SDMMC_IDMABSIZER: mmio.Mmio(packed struct(u32) {
                reserved5: u5,
                ///  Number of transfers per buffer. This 8-bit value shall be multiplied by 8 to get the size of the buffer in 32-bit words and by 32 to get the size of the buffer in bytes. Example: IDMABNDT = 0x01: buffer size = 8 words = 32 bytes. These bits can only be written by firmware when DPSM is inactive (DPSMACT = 0).
                IDMABNDT: u8,
                padding: u19,
            }),
            ///  The SDMMC_IDMABASE0R register contains the memory buffer base address in single buffer configuration and the buffer 0 base address in double buffer configuration.
            SDMMC_IDMABASE0R: mmio.Mmio(packed struct(u32) {
                ///  Buffer 0 memory base address bits [31:2], shall be word aligned (bit [1:0] are always 0 and read only). This register can be written by firmware when DPSM is inactive (DPSMACT = 0), and can dynamically be written by firmware when DPSM active (DPSMACT = 1) and memory buffer 0 is inactive (IDMABACT = 1).
                IDMABASE0: u32,
            }),
            ///  The SDMMC_IDMABASE1R register contains the double buffer configuration second buffer memory base address.
            SDMMC_IDMABASE1R: mmio.Mmio(packed struct(u32) {
                ///  Buffer 1 memory base address, shall be word aligned (bit [1:0] are always 0 and read only). This register can be written by firmware when DPSM is inactive (DPSMACT = 0), and can dynamically be written by firmware when DPSM active (DPSMACT = 1) and memory buffer 1 is inactive (IDMABACT = 0).
                IDMABASE1: u32,
            }),
            ///  The SDMMC_RESPCMDR register contains the command index field of the last command response received. If the command response transmission does not contain the command index field (long or OCR response), the RESPCMD field is unknown, although it must contain 111111b (the value of the reserved field from the response).
            SDMMC_RESPCMDR: mmio.Mmio(packed struct(u32) {
                ///  Response command index Read-only bit field. Contains the command index of the last command response received.
                RESPCMD: u6,
                padding: u26,
            }),
            reserved128: [28]u8,
            ///  The receive and transmit FIFOs can be only read or written as word (32-bit) wide registers. The FIFOs contain 16 entries on sequential addresses. This allows the CPU to use its load and store multiple operands to read from/write to the FIFO.When accessing SDMMC_FIFOR with half word or byte access an AHB bus fault is generated.
            SDMMC_FIFOR: mmio.Mmio(packed struct(u32) {
                ///  Receive and transmit FIFO data This register can only be read or written by firmware when the DPSM is active (DPSMACT=1). The FIFO data occupies 16 entries of 32-bit words.
                FIFODATA: u32,
            }),
            reserved1012: [880]u8,
            ///  SDMMC IP version register
            SDMMC_VER: mmio.Mmio(packed struct(u32) {
                ///  IP minor revision number.
                MINREV: u4,
                ///  IP major revision number.
                MAJREV: u4,
                padding: u24,
            }),
            ///  SDMMC IP identification register
            SDMMC_ID: mmio.Mmio(packed struct(u32) {
                ///  SDMMC IP identification.
                IP_ID: u32,
            }),
        };

        ///  Analog-to-digital converter
        pub const ADC1 = extern struct {
            ///  status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Analog watchdog flag
                AWD: u1,
                ///  Regular channel end of conversion
                EOC: u1,
                ///  Injected channel end of conversion
                JEOC: u1,
                ///  Injected channel start flag
                JSTRT: u1,
                ///  Regular channel start flag
                STRT: u1,
                ///  Overrun
                OVR: u1,
                padding: u26,
            }),
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) {
                ///  Analog watchdog channel select bits
                AWDCH: u5,
                ///  Interrupt enable for EOC
                EOCIE: u1,
                ///  Analog watchdog interrupt enable
                AWDIE: u1,
                ///  Interrupt enable for injected channels
                JEOCIE: u1,
                ///  Scan mode
                SCAN: u1,
                ///  Enable the watchdog on a single channel in scan mode
                AWDSGL: u1,
                ///  Automatic injected group conversion
                JAUTO: u1,
                ///  Discontinuous mode on regular channels
                DISCEN: u1,
                ///  Discontinuous mode on injected channels
                JDISCEN: u1,
                ///  Discontinuous mode channel count
                DISCNUM: u3,
                reserved22: u6,
                ///  Analog watchdog enable on injected channels
                JAWDEN: u1,
                ///  Analog watchdog enable on regular channels
                AWDEN: u1,
                ///  Resolution
                RES: u2,
                ///  Overrun interrupt enable
                OVRIE: u1,
                padding: u5,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) {
                ///  A/D Converter ON / OFF
                ADON: u1,
                ///  Continuous conversion
                CONT: u1,
                reserved8: u6,
                ///  Direct memory access mode (for single ADC mode)
                DMA: u1,
                ///  DMA disable selection (for single ADC mode)
                DDS: u1,
                ///  End of conversion selection
                EOCS: u1,
                ///  Data alignment
                ALIGN: u1,
                reserved16: u4,
                ///  External event select for injected group
                JEXTSEL: u4,
                ///  External trigger enable for injected channels
                JEXTEN: u2,
                ///  Start conversion of injected channels
                JSWSTART: u1,
                reserved24: u1,
                ///  External event select for regular group
                EXTSEL: u4,
                ///  External trigger enable for regular channels
                EXTEN: u2,
                ///  Start conversion of regular channels
                SWSTART: u1,
                padding: u1,
            }),
            ///  sample time register 1
            SMPR1: mmio.Mmio(packed struct(u32) {
                ///  Sample time bits
                SMPx_x: u32,
            }),
            ///  sample time register 2
            SMPR2: mmio.Mmio(packed struct(u32) {
                ///  Sample time bits
                SMPx_x: u32,
            }),
            ///  injected channel data offset register x
            JOFR1: mmio.Mmio(packed struct(u32) {
                ///  Data offset for injected channel x
                JOFFSET1: u12,
                padding: u20,
            }),
            ///  injected channel data offset register x
            JOFR2: mmio.Mmio(packed struct(u32) {
                ///  Data offset for injected channel x
                JOFFSET2: u12,
                padding: u20,
            }),
            ///  injected channel data offset register x
            JOFR3: mmio.Mmio(packed struct(u32) {
                ///  Data offset for injected channel x
                JOFFSET3: u12,
                padding: u20,
            }),
            ///  injected channel data offset register x
            JOFR4: mmio.Mmio(packed struct(u32) {
                ///  Data offset for injected channel x
                JOFFSET4: u12,
                padding: u20,
            }),
            ///  watchdog higher threshold register
            HTR: mmio.Mmio(packed struct(u32) {
                ///  Analog watchdog higher threshold
                HT: u12,
                padding: u20,
            }),
            ///  watchdog lower threshold register
            LTR: mmio.Mmio(packed struct(u32) {
                ///  Analog watchdog lower threshold
                LT: u12,
                padding: u20,
            }),
            ///  regular sequence register 1
            SQR1: mmio.Mmio(packed struct(u32) {
                ///  13th conversion in regular sequence
                SQ13: u5,
                ///  14th conversion in regular sequence
                SQ14: u5,
                ///  15th conversion in regular sequence
                SQ15: u5,
                ///  16th conversion in regular sequence
                SQ16: u5,
                ///  Regular channel sequence length
                L: u4,
                padding: u8,
            }),
            ///  regular sequence register 2
            SQR2: mmio.Mmio(packed struct(u32) {
                ///  7th conversion in regular sequence
                SQ7: u5,
                ///  8th conversion in regular sequence
                SQ8: u5,
                ///  9th conversion in regular sequence
                SQ9: u5,
                ///  10th conversion in regular sequence
                SQ10: u5,
                ///  11th conversion in regular sequence
                SQ11: u5,
                ///  12th conversion in regular sequence
                SQ12: u5,
                padding: u2,
            }),
            ///  regular sequence register 3
            SQR3: mmio.Mmio(packed struct(u32) {
                ///  1st conversion in regular sequence
                SQ1: u5,
                ///  2nd conversion in regular sequence
                SQ2: u5,
                ///  3rd conversion in regular sequence
                SQ3: u5,
                ///  4th conversion in regular sequence
                SQ4: u5,
                ///  5th conversion in regular sequence
                SQ5: u5,
                ///  6th conversion in regular sequence
                SQ6: u5,
                padding: u2,
            }),
            ///  injected sequence register
            JSQR: mmio.Mmio(packed struct(u32) {
                ///  1st conversion in injected sequence
                JSQ1: u5,
                ///  2nd conversion in injected sequence
                JSQ2: u5,
                ///  3rd conversion in injected sequence
                JSQ3: u5,
                ///  4th conversion in injected sequence
                JSQ4: u5,
                ///  Injected sequence length
                JL: u2,
                padding: u10,
            }),
            ///  injected data register x
            JDR1: mmio.Mmio(packed struct(u32) {
                ///  Injected data
                JDATA: u16,
                padding: u16,
            }),
            ///  injected data register x
            JDR2: mmio.Mmio(packed struct(u32) {
                ///  Injected data
                JDATA: u16,
                padding: u16,
            }),
            ///  injected data register x
            JDR3: mmio.Mmio(packed struct(u32) {
                ///  Injected data
                JDATA: u16,
                padding: u16,
            }),
            ///  injected data register x
            JDR4: mmio.Mmio(packed struct(u32) {
                ///  Injected data
                JDATA: u16,
                padding: u16,
            }),
            ///  regular data register
            DR: mmio.Mmio(packed struct(u32) {
                ///  Regular data
                DATA: u16,
                padding: u16,
            }),
        };

        ///  Receiver Interface
        pub const SPDIF_RX = extern struct {
            ///  Control register
            CR: mmio.Mmio(packed struct(u32) {
                ///  Peripheral Block Enable
                SPDIFEN: u2,
                ///  Receiver DMA ENable for data flow
                RXDMAEN: u1,
                ///  STerEO Mode
                RXSTEO: u1,
                ///  RX Data format
                DRFMT: u2,
                ///  Mask Parity error bit
                PMSK: u1,
                ///  Mask of Validity bit
                VMSK: u1,
                ///  Mask of channel status and user bits
                CUMSK: u1,
                ///  Mask of Preamble Type bits
                PTMSK: u1,
                ///  Control Buffer DMA ENable for control flow
                CBDMAEN: u1,
                ///  Channel Selection
                CHSEL: u1,
                ///  Maximum allowed re-tries during synchronization phase
                NBTR: u2,
                ///  Wait For Activity
                WFA: u1,
                reserved16: u1,
                ///  input selection
                INSEL: u3,
                padding: u13,
            }),
            ///  Interrupt mask register
            IMR: mmio.Mmio(packed struct(u32) {
                ///  RXNE interrupt enable
                RXNEIE: u1,
                ///  Control Buffer Ready Interrupt Enable
                CSRNEIE: u1,
                ///  Parity error interrupt enable
                PERRIE: u1,
                ///  Overrun error Interrupt Enable
                OVRIE: u1,
                ///  Synchronization Block Detected Interrupt Enable
                SBLKIE: u1,
                ///  Synchronization Done
                SYNCDIE: u1,
                ///  Serial Interface Error Interrupt Enable
                IFEIE: u1,
                padding: u25,
            }),
            ///  Status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Read data register not empty
                RXNE: u1,
                ///  Control Buffer register is not empty
                CSRNE: u1,
                ///  Parity error
                PERR: u1,
                ///  Overrun error
                OVR: u1,
                ///  Synchronization Block Detected
                SBD: u1,
                ///  Synchronization Done
                SYNCD: u1,
                ///  Framing error
                FERR: u1,
                ///  Synchronization error
                SERR: u1,
                ///  Time-out error
                TERR: u1,
                reserved16: u7,
                ///  Duration of 5 symbols counted with SPDIF_CLK
                WIDTH5: u15,
                padding: u1,
            }),
            ///  Interrupt Flag Clear register
            IFCR: mmio.Mmio(packed struct(u32) {
                reserved2: u2,
                ///  Clears the Parity error flag
                PERRCF: u1,
                ///  Clears the Overrun error flag
                OVRCF: u1,
                ///  Clears the Synchronization Block Detected flag
                SBDCF: u1,
                ///  Clears the Synchronization Done flag
                SYNCDCF: u1,
                padding: u26,
            }),
            ///  Data input register
            DR: mmio.Mmio(packed struct(u32) {
                ///  Parity Error bit
                DR: u24,
                ///  Parity Error bit
                PE: u1,
                ///  Validity bit
                V: u1,
                ///  User bit
                U: u1,
                ///  Channel Status bit
                C: u1,
                ///  Preamble Type
                PT: u2,
                padding: u2,
            }),
            ///  Channel Status register
            CSR: mmio.Mmio(packed struct(u32) {
                ///  User data information
                USR: u16,
                ///  Channel A status information
                CS: u8,
                ///  Start Of Block
                SOB: u1,
                padding: u7,
            }),
            ///  Debug Information register
            DIR: mmio.Mmio(packed struct(u32) {
                ///  Threshold HIGH
                THI: u13,
                reserved16: u3,
                ///  Threshold LOW
                TLO: u13,
                padding: u3,
            }),
        };

        ///  QuadSPI interface
        pub const QUADSPI = extern struct {
            ///  control register
            CR: mmio.Mmio(packed struct(u32) {
                ///  Enable
                EN: u1,
                ///  Abort request
                ABORT: u1,
                ///  DMA enable
                DMAEN: u1,
                ///  Timeout counter enable
                TCEN: u1,
                ///  Sample shift
                SSHIFT: u1,
                reserved6: u1,
                ///  Dual-flash mode
                DFM: u1,
                ///  FLASH memory selection
                FSEL: u1,
                ///  IFO threshold level
                FTHRES: u5,
                reserved16: u3,
                ///  Transfer error interrupt enable
                TEIE: u1,
                ///  Transfer complete interrupt enable
                TCIE: u1,
                ///  FIFO threshold interrupt enable
                FTIE: u1,
                ///  Status match interrupt enable
                SMIE: u1,
                ///  TimeOut interrupt enable
                TOIE: u1,
                reserved22: u1,
                ///  Automatic poll mode stop
                APMS: u1,
                ///  Polling match mode
                PMM: u1,
                ///  Clock prescaler
                PRESCALER: u8,
            }),
            ///  device configuration register
            DCR: mmio.Mmio(packed struct(u32) {
                ///  Mode 0 / mode 3
                CKMODE: u1,
                reserved8: u7,
                ///  Chip select high time
                CSHT: u3,
                reserved16: u5,
                ///  FLASH memory size
                FSIZE: u5,
                padding: u11,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Transfer error flag
                TEF: u1,
                ///  Transfer complete flag
                TCF: u1,
                ///  FIFO threshold flag
                FTF: u1,
                ///  Status match flag
                SMF: u1,
                ///  Timeout flag
                TOF: u1,
                ///  Busy
                BUSY: u1,
                reserved8: u2,
                ///  FIFO level
                FLEVEL: u7,
                padding: u17,
            }),
            ///  flag clear register
            FCR: mmio.Mmio(packed struct(u32) {
                ///  Clear transfer error flag
                CTEF: u1,
                ///  Clear transfer complete flag
                CTCF: u1,
                reserved3: u1,
                ///  Clear status match flag
                CSMF: u1,
                ///  Clear timeout flag
                CTOF: u1,
                padding: u27,
            }),
            ///  data length register
            DLR: mmio.Mmio(packed struct(u32) {
                ///  Data length
                DL: u32,
            }),
            ///  communication configuration register
            CCR: mmio.Mmio(packed struct(u32) {
                ///  Instruction
                INSTRUCTION: u8,
                ///  Instruction mode
                IMODE: u2,
                ///  Address mode
                ADMODE: u2,
                ///  Address size
                ADSIZE: u2,
                ///  Alternate bytes mode
                ABMODE: u2,
                ///  Alternate bytes size
                ABSIZE: u2,
                ///  Number of dummy cycles
                DCYC: u5,
                reserved24: u1,
                ///  Data mode
                DMODE: u2,
                ///  Functional mode
                FMODE: u2,
                ///  Send instruction only once mode
                SIOO: u1,
                reserved30: u1,
                ///  DDR hold half cycle
                DHHC: u1,
                ///  Double data rate mode
                DDRM: u1,
            }),
            ///  address register
            AR: mmio.Mmio(packed struct(u32) {
                ///  Address
                ADDRESS: u32,
            }),
            ///  ABR
            ABR: mmio.Mmio(packed struct(u32) {
                ///  ALTERNATE
                ALTERNATE: u32,
            }),
            ///  data register
            DR: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  polling status mask register
            PSMKR: mmio.Mmio(packed struct(u32) {
                ///  Status mask
                MASK: u32,
            }),
            ///  polling status match register
            PSMAR: mmio.Mmio(packed struct(u32) {
                ///  Status match
                MATCH: u32,
            }),
            ///  polling interval register
            PIR: mmio.Mmio(packed struct(u32) {
                ///  Polling interval
                INTERVAL: u16,
                padding: u16,
            }),
            ///  low-power timeout register
            LPTR: mmio.Mmio(packed struct(u32) {
                ///  Timeout period
                TIMEOUT: u16,
                padding: u16,
            }),
        };

        ///  Universal synchronous asynchronous receiver transmitter
        pub const USART6 = extern struct {
            ///  Status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Parity error
                PE: u1,
                ///  Framing error
                FE: u1,
                ///  Noise detected flag
                NF: u1,
                ///  Overrun error
                ORE: u1,
                ///  IDLE line detected
                IDLE: u1,
                ///  Read data register not empty
                RXNE: u1,
                ///  Transmission complete
                TC: u1,
                ///  Transmit data register empty
                TXE: u1,
                ///  LIN break detection flag
                LBD: u1,
                ///  CTS flag
                CTS: u1,
                padding: u22,
            }),
            ///  Data register
            DR: mmio.Mmio(packed struct(u32) {
                ///  Data value
                DR: u9,
                padding: u23,
            }),
            ///  Baud rate register
            BRR: mmio.Mmio(packed struct(u32) {
                ///  fraction of USARTDIV
                DIV_Fraction: u4,
                ///  mantissa of USARTDIV
                DIV_Mantissa: u12,
                padding: u16,
            }),
            ///  Control register 1
            CR1: mmio.Mmio(packed struct(u32) {
                ///  Send break
                SBK: u1,
                ///  Receiver wakeup
                RWU: u1,
                ///  Receiver enable
                RE: u1,
                ///  Transmitter enable
                TE: u1,
                ///  IDLE interrupt enable
                IDLEIE: u1,
                ///  RXNE interrupt enable
                RXNEIE: u1,
                ///  Transmission complete interrupt enable
                TCIE: u1,
                ///  TXE interrupt enable
                TXEIE: u1,
                ///  PE interrupt enable
                PEIE: u1,
                ///  Parity selection
                PS: u1,
                ///  Parity control enable
                PCE: u1,
                ///  Wakeup method
                WAKE: u1,
                ///  Word length
                M: u1,
                ///  USART enable
                UE: u1,
                reserved15: u1,
                ///  Oversampling mode
                OVER8: u1,
                padding: u16,
            }),
            ///  Control register 2
            CR2: mmio.Mmio(packed struct(u32) {
                ///  Address of the USART node
                ADD: u4,
                reserved5: u1,
                ///  lin break detection length
                LBDL: u1,
                ///  LIN break detection interrupt enable
                LBDIE: u1,
                reserved8: u1,
                ///  Last bit clock pulse
                LBCL: u1,
                ///  Clock phase
                CPHA: u1,
                ///  Clock polarity
                CPOL: u1,
                ///  Clock enable
                CLKEN: u1,
                ///  STOP bits
                STOP: u2,
                ///  LIN mode enable
                LINEN: u1,
                padding: u17,
            }),
            ///  Control register 3
            CR3: mmio.Mmio(packed struct(u32) {
                ///  Error interrupt enable
                EIE: u1,
                ///  IrDA mode enable
                IREN: u1,
                ///  IrDA low-power
                IRLP: u1,
                ///  Half-duplex selection
                HDSEL: u1,
                ///  Smartcard NACK enable
                NACK: u1,
                ///  Smartcard mode enable
                SCEN: u1,
                ///  DMA enable receiver
                DMAR: u1,
                ///  DMA enable transmitter
                DMAT: u1,
                ///  RTS enable
                RTSE: u1,
                ///  CTS enable
                CTSE: u1,
                ///  CTS interrupt enable
                CTSIE: u1,
                ///  One sample bit method enable
                ONEBIT: u1,
                padding: u20,
            }),
            ///  Guard time and prescaler register
            GTPR: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value
                PSC: u8,
                ///  Guard time value
                GT: u8,
                padding: u16,
            }),
        };

        ///  Power control
        pub const PWR = extern struct {
            ///  power control register
            CR: mmio.Mmio(packed struct(u32) {
                ///  Low-power deep sleep
                LPDS: u1,
                ///  Power down deepsleep
                PDDS: u1,
                ///  Clear wakeup flag
                CWUF: u1,
                ///  Clear standby flag
                CSBF: u1,
                ///  Power voltage detector enable
                PVDE: u1,
                ///  PVD level selection
                PLS: u3,
                ///  Disable backup domain write protection
                DBP: u1,
                ///  Flash power down in Stop mode
                FPDS: u1,
                ///  Low-Power Regulator Low Voltage in deepsleep
                LPLVDS: u1,
                ///  Main regulator low voltage in deepsleep mode
                MRLVDS: u1,
                reserved13: u1,
                ///  ADCDC1
                ADCDC1: u1,
                ///  Regulator voltage scaling output selection
                VOS: u2,
                ///  Over-drive enable
                ODEN: u1,
                ///  Over-drive switching enabled
                ODSWEN: u1,
                ///  Under-drive enable in stop mode
                UDEN: u2,
                ///  Flash Memory Stop while System Run
                FMSSR: u1,
                ///  Flash Interface Stop while System Run
                FISSR: u1,
                padding: u10,
            }),
            ///  power control/status register
            CSR: mmio.Mmio(packed struct(u32) {
                ///  Wakeup flag
                WUF: u1,
                ///  Standby flag
                SBF: u1,
                ///  PVD output
                PVDO: u1,
                ///  Backup regulator ready
                BRR: u1,
                reserved7: u3,
                ///  Enable WKUP2 pin
                EWUP2: u1,
                ///  Enable WKUP pin
                EWUP: u1,
                ///  Backup regulator enable
                BRE: u1,
                reserved14: u4,
                ///  Regulator voltage scaling output selection ready bit
                VOSRDY: u1,
                reserved16: u1,
                ///  Over-drive mode ready
                ODRDY: u1,
                ///  Over-drive mode switching ready
                ODSWRDY: u1,
                ///  Under-drive ready flag
                UDRDY: u2,
                padding: u12,
            }),
        };

        ///  USB on the go full speed
        pub const OTG_FS_DEVICE = extern struct {
            ///  OTG_FS device configuration register (OTG_FS_DCFG)
            FS_DCFG: mmio.Mmio(packed struct(u32) {
                ///  Device speed
                DSPD: u2,
                ///  Non-zero-length status OUT handshake
                NZLSOHSK: u1,
                reserved4: u1,
                ///  Device address
                DAD: u7,
                ///  Periodic frame interval
                PFIVL: u2,
                padding: u19,
            }),
            ///  OTG_FS device control register (OTG_FS_DCTL)
            FS_DCTL: mmio.Mmio(packed struct(u32) {
                ///  Remote wakeup signaling
                RWUSIG: u1,
                ///  Soft disconnect
                SDIS: u1,
                ///  Global IN NAK status
                GINSTS: u1,
                ///  Global OUT NAK status
                GONSTS: u1,
                ///  Test control
                TCTL: u3,
                ///  Set global IN NAK
                SGINAK: u1,
                ///  Clear global IN NAK
                CGINAK: u1,
                ///  Set global OUT NAK
                SGONAK: u1,
                ///  Clear global OUT NAK
                CGONAK: u1,
                ///  Power-on programming done
                POPRGDNE: u1,
                padding: u20,
            }),
            ///  OTG_FS device status register (OTG_FS_DSTS)
            FS_DSTS: mmio.Mmio(packed struct(u32) {
                ///  Suspend status
                SUSPSTS: u1,
                ///  Enumerated speed
                ENUMSPD: u2,
                ///  Erratic error
                EERR: u1,
                reserved8: u4,
                ///  Frame number of the received SOF
                FNSOF: u14,
                padding: u10,
            }),
            reserved16: [4]u8,
            ///  OTG_FS device IN endpoint common interrupt mask register (OTG_FS_DIEPMSK)
            FS_DIEPMSK: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt mask
                XFRCM: u1,
                ///  Endpoint disabled interrupt mask
                EPDM: u1,
                reserved3: u1,
                ///  Timeout condition mask (Non-isochronous endpoints)
                TOM: u1,
                ///  IN token received when TxFIFO empty mask
                ITTXFEMSK: u1,
                ///  IN token received with EP mismatch mask
                INEPNMM: u1,
                ///  IN endpoint NAK effective mask
                INEPNEM: u1,
                padding: u25,
            }),
            ///  OTG_FS device OUT endpoint common interrupt mask register (OTG_FS_DOEPMSK)
            FS_DOEPMSK: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt mask
                XFRCM: u1,
                ///  Endpoint disabled interrupt mask
                EPDM: u1,
                reserved3: u1,
                ///  SETUP phase done mask
                STUPM: u1,
                ///  OUT token received when endpoint disabled mask
                OTEPDM: u1,
                padding: u27,
            }),
            ///  OTG_FS device all endpoints interrupt register (OTG_FS_DAINT)
            FS_DAINT: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint interrupt bits
                IEPINT: u16,
                ///  OUT endpoint interrupt bits
                OEPINT: u16,
            }),
            ///  OTG_FS all endpoints interrupt mask register (OTG_FS_DAINTMSK)
            FS_DAINTMSK: mmio.Mmio(packed struct(u32) {
                ///  IN EP interrupt mask bits
                IEPM: u16,
                ///  OUT endpoint interrupt bits
                OEPINT: u16,
            }),
            reserved40: [8]u8,
            ///  OTG_FS device VBUS discharge time register
            DVBUSDIS: mmio.Mmio(packed struct(u32) {
                ///  Device VBUS discharge time
                VBUSDT: u16,
                padding: u16,
            }),
            ///  OTG_FS device VBUS pulsing time register
            DVBUSPULSE: mmio.Mmio(packed struct(u32) {
                ///  Device VBUS pulsing time
                DVBUSP: u12,
                padding: u20,
            }),
            reserved52: [4]u8,
            ///  OTG_FS device IN endpoint FIFO empty interrupt mask register
            DIEPEMPMSK: mmio.Mmio(packed struct(u32) {
                ///  IN EP Tx FIFO empty interrupt mask bits
                INEPTXFEM: u16,
                padding: u16,
            }),
            reserved256: [200]u8,
            ///  OTG_FS device control IN endpoint 0 control register (OTG_FS_DIEPCTL0)
            FS_DIEPCTL0: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u2,
                reserved15: u13,
                ///  USB active endpoint
                USBAEP: u1,
                reserved17: u1,
                ///  NAK status
                NAKSTS: u1,
                ///  Endpoint type
                EPTYP: u2,
                reserved21: u1,
                ///  STALL handshake
                STALL: u1,
                ///  TxFIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                reserved30: u2,
                ///  Endpoint disable
                EPDIS: u1,
                ///  Endpoint enable
                EPENA: u1,
            }),
            reserved264: [4]u8,
            ///  device endpoint-x interrupt register
            DIEPINT0: mmio.Mmio(packed struct(u32) {
                ///  XFRC
                XFRC: u1,
                ///  EPDISD
                EPDISD: u1,
                reserved3: u1,
                ///  TOC
                TOC: u1,
                ///  ITTXFE
                ITTXFE: u1,
                reserved6: u1,
                ///  INEPNE
                INEPNE: u1,
                ///  TXFE
                TXFE: u1,
                padding: u24,
            }),
            reserved272: [4]u8,
            ///  device endpoint-0 transfer size register
            DIEPTSIZ0: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u7,
                reserved19: u12,
                ///  Packet count
                PKTCNT: u2,
                padding: u11,
            }),
            reserved280: [4]u8,
            ///  OTG_FS device IN endpoint transmit FIFO status register
            DTXFSTS0: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space available
                INEPTFSAV: u16,
                padding: u16,
            }),
            reserved288: [4]u8,
            ///  OTG device endpoint-1 control register
            DIEPCTL1: mmio.Mmio(packed struct(u32) {
                ///  MPSIZ
                MPSIZ: u11,
                reserved15: u4,
                ///  USBAEP
                USBAEP: u1,
                ///  EONUM/DPID
                EONUM_DPID: u1,
                ///  NAKSTS
                NAKSTS: u1,
                ///  EPTYP
                EPTYP: u2,
                reserved21: u1,
                ///  Stall
                Stall: u1,
                ///  TXFNUM
                TXFNUM: u4,
                ///  CNAK
                CNAK: u1,
                ///  SNAK
                SNAK: u1,
                ///  SD0PID/SEVNFRM
                SD0PID_SEVNFRM: u1,
                ///  SODDFRM/SD1PID
                SODDFRM_SD1PID: u1,
                ///  EPDIS
                EPDIS: u1,
                ///  EPENA
                EPENA: u1,
            }),
            reserved296: [4]u8,
            ///  device endpoint-1 interrupt register
            DIEPINT1: mmio.Mmio(packed struct(u32) {
                ///  XFRC
                XFRC: u1,
                ///  EPDISD
                EPDISD: u1,
                reserved3: u1,
                ///  TOC
                TOC: u1,
                ///  ITTXFE
                ITTXFE: u1,
                reserved6: u1,
                ///  INEPNE
                INEPNE: u1,
                ///  TXFE
                TXFE: u1,
                padding: u24,
            }),
            reserved304: [4]u8,
            ///  device endpoint-1 transfer size register
            DIEPTSIZ1: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Multi count
                MCNT: u2,
                padding: u1,
            }),
            reserved312: [4]u8,
            ///  OTG_FS device IN endpoint transmit FIFO status register
            DTXFSTS1: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space available
                INEPTFSAV: u16,
                padding: u16,
            }),
            reserved320: [4]u8,
            ///  OTG device endpoint-2 control register
            DIEPCTL2: mmio.Mmio(packed struct(u32) {
                ///  MPSIZ
                MPSIZ: u11,
                reserved15: u4,
                ///  USBAEP
                USBAEP: u1,
                ///  EONUM/DPID
                EONUM_DPID: u1,
                ///  NAKSTS
                NAKSTS: u1,
                ///  EPTYP
                EPTYP: u2,
                reserved21: u1,
                ///  Stall
                Stall: u1,
                ///  TXFNUM
                TXFNUM: u4,
                ///  CNAK
                CNAK: u1,
                ///  SNAK
                SNAK: u1,
                ///  SD0PID/SEVNFRM
                SD0PID_SEVNFRM: u1,
                ///  SODDFRM
                SODDFRM: u1,
                ///  EPDIS
                EPDIS: u1,
                ///  EPENA
                EPENA: u1,
            }),
            reserved328: [4]u8,
            ///  device endpoint-2 interrupt register
            DIEPINT2: mmio.Mmio(packed struct(u32) {
                ///  XFRC
                XFRC: u1,
                ///  EPDISD
                EPDISD: u1,
                reserved3: u1,
                ///  TOC
                TOC: u1,
                ///  ITTXFE
                ITTXFE: u1,
                reserved6: u1,
                ///  INEPNE
                INEPNE: u1,
                ///  TXFE
                TXFE: u1,
                padding: u24,
            }),
            reserved336: [4]u8,
            ///  device endpoint-2 transfer size register
            DIEPTSIZ2: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Multi count
                MCNT: u2,
                padding: u1,
            }),
            reserved344: [4]u8,
            ///  OTG_FS device IN endpoint transmit FIFO status register
            DTXFSTS2: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space available
                INEPTFSAV: u16,
                padding: u16,
            }),
            reserved352: [4]u8,
            ///  OTG device endpoint-3 control register
            DIEPCTL3: mmio.Mmio(packed struct(u32) {
                ///  MPSIZ
                MPSIZ: u11,
                reserved15: u4,
                ///  USBAEP
                USBAEP: u1,
                ///  EONUM/DPID
                EONUM_DPID: u1,
                ///  NAKSTS
                NAKSTS: u1,
                ///  EPTYP
                EPTYP: u2,
                reserved21: u1,
                ///  Stall
                Stall: u1,
                ///  TXFNUM
                TXFNUM: u4,
                ///  CNAK
                CNAK: u1,
                ///  SNAK
                SNAK: u1,
                ///  SD0PID/SEVNFRM
                SD0PID_SEVNFRM: u1,
                ///  SODDFRM
                SODDFRM: u1,
                ///  EPDIS
                EPDIS: u1,
                ///  EPENA
                EPENA: u1,
            }),
            reserved360: [4]u8,
            ///  device endpoint-3 interrupt register
            DIEPINT3: mmio.Mmio(packed struct(u32) {
                ///  XFRC
                XFRC: u1,
                ///  EPDISD
                EPDISD: u1,
                reserved3: u1,
                ///  TOC
                TOC: u1,
                ///  ITTXFE
                ITTXFE: u1,
                reserved6: u1,
                ///  INEPNE
                INEPNE: u1,
                ///  TXFE
                TXFE: u1,
                padding: u24,
            }),
            reserved368: [4]u8,
            ///  device endpoint-3 transfer size register
            DIEPTSIZ3: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Multi count
                MCNT: u2,
                padding: u1,
            }),
            reserved376: [4]u8,
            ///  OTG_FS device IN endpoint transmit FIFO status register
            DTXFSTS3: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space available
                INEPTFSAV: u16,
                padding: u16,
            }),
            reserved768: [388]u8,
            ///  device endpoint-0 control register
            DOEPCTL0: mmio.Mmio(packed struct(u32) {
                ///  MPSIZ
                MPSIZ: u2,
                reserved15: u13,
                ///  USBAEP
                USBAEP: u1,
                reserved17: u1,
                ///  NAKSTS
                NAKSTS: u1,
                ///  EPTYP
                EPTYP: u2,
                ///  SNPM
                SNPM: u1,
                ///  Stall
                Stall: u1,
                reserved26: u4,
                ///  CNAK
                CNAK: u1,
                ///  SNAK
                SNAK: u1,
                reserved30: u2,
                ///  EPDIS
                EPDIS: u1,
                ///  EPENA
                EPENA: u1,
            }),
            reserved776: [4]u8,
            ///  device endpoint-0 interrupt register
            DOEPINT0: mmio.Mmio(packed struct(u32) {
                ///  XFRC
                XFRC: u1,
                ///  EPDISD
                EPDISD: u1,
                reserved3: u1,
                ///  STUP
                STUP: u1,
                ///  OTEPDIS
                OTEPDIS: u1,
                reserved6: u1,
                ///  B2BSTUP
                B2BSTUP: u1,
                padding: u25,
            }),
            reserved784: [4]u8,
            ///  device OUT endpoint-0 transfer size register
            DOEPTSIZ0: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u7,
                reserved19: u12,
                ///  Packet count
                PKTCNT: u1,
                reserved29: u9,
                ///  SETUP packet count
                STUPCNT: u2,
                padding: u1,
            }),
            reserved800: [12]u8,
            ///  device endpoint-1 control register
            DOEPCTL1: mmio.Mmio(packed struct(u32) {
                ///  MPSIZ
                MPSIZ: u11,
                reserved15: u4,
                ///  USBAEP
                USBAEP: u1,
                ///  EONUM/DPID
                EONUM_DPID: u1,
                ///  NAKSTS
                NAKSTS: u1,
                ///  EPTYP
                EPTYP: u2,
                ///  SNPM
                SNPM: u1,
                ///  Stall
                Stall: u1,
                reserved26: u4,
                ///  CNAK
                CNAK: u1,
                ///  SNAK
                SNAK: u1,
                ///  SD0PID/SEVNFRM
                SD0PID_SEVNFRM: u1,
                ///  SODDFRM
                SODDFRM: u1,
                ///  EPDIS
                EPDIS: u1,
                ///  EPENA
                EPENA: u1,
            }),
            reserved808: [4]u8,
            ///  device endpoint-1 interrupt register
            DOEPINT1: mmio.Mmio(packed struct(u32) {
                ///  XFRC
                XFRC: u1,
                ///  EPDISD
                EPDISD: u1,
                reserved3: u1,
                ///  STUP
                STUP: u1,
                ///  OTEPDIS
                OTEPDIS: u1,
                reserved6: u1,
                ///  B2BSTUP
                B2BSTUP: u1,
                padding: u25,
            }),
            reserved816: [4]u8,
            ///  device OUT endpoint-1 transfer size register
            DOEPTSIZ1: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Received data PID/SETUP packet count
                RXDPID_STUPCNT: u2,
                padding: u1,
            }),
            reserved832: [12]u8,
            ///  device endpoint-2 control register
            DOEPCTL2: mmio.Mmio(packed struct(u32) {
                ///  MPSIZ
                MPSIZ: u11,
                reserved15: u4,
                ///  USBAEP
                USBAEP: u1,
                ///  EONUM/DPID
                EONUM_DPID: u1,
                ///  NAKSTS
                NAKSTS: u1,
                ///  EPTYP
                EPTYP: u2,
                ///  SNPM
                SNPM: u1,
                ///  Stall
                Stall: u1,
                reserved26: u4,
                ///  CNAK
                CNAK: u1,
                ///  SNAK
                SNAK: u1,
                ///  SD0PID/SEVNFRM
                SD0PID_SEVNFRM: u1,
                ///  SODDFRM
                SODDFRM: u1,
                ///  EPDIS
                EPDIS: u1,
                ///  EPENA
                EPENA: u1,
            }),
            reserved840: [4]u8,
            ///  device endpoint-2 interrupt register
            DOEPINT2: mmio.Mmio(packed struct(u32) {
                ///  XFRC
                XFRC: u1,
                ///  EPDISD
                EPDISD: u1,
                reserved3: u1,
                ///  STUP
                STUP: u1,
                ///  OTEPDIS
                OTEPDIS: u1,
                reserved6: u1,
                ///  B2BSTUP
                B2BSTUP: u1,
                padding: u25,
            }),
            reserved848: [4]u8,
            ///  device OUT endpoint-2 transfer size register
            DOEPTSIZ2: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Received data PID/SETUP packet count
                RXDPID_STUPCNT: u2,
                padding: u1,
            }),
            reserved864: [12]u8,
            ///  device endpoint-3 control register
            DOEPCTL3: mmio.Mmio(packed struct(u32) {
                ///  MPSIZ
                MPSIZ: u11,
                reserved15: u4,
                ///  USBAEP
                USBAEP: u1,
                ///  EONUM/DPID
                EONUM_DPID: u1,
                ///  NAKSTS
                NAKSTS: u1,
                ///  EPTYP
                EPTYP: u2,
                ///  SNPM
                SNPM: u1,
                ///  Stall
                Stall: u1,
                reserved26: u4,
                ///  CNAK
                CNAK: u1,
                ///  SNAK
                SNAK: u1,
                ///  SD0PID/SEVNFRM
                SD0PID_SEVNFRM: u1,
                ///  SODDFRM
                SODDFRM: u1,
                ///  EPDIS
                EPDIS: u1,
                ///  EPENA
                EPENA: u1,
            }),
            reserved872: [4]u8,
            ///  device endpoint-3 interrupt register
            DOEPINT3: mmio.Mmio(packed struct(u32) {
                ///  XFRC
                XFRC: u1,
                ///  EPDISD
                EPDISD: u1,
                reserved3: u1,
                ///  STUP
                STUP: u1,
                ///  OTEPDIS
                OTEPDIS: u1,
                reserved6: u1,
                ///  B2BSTUP
                B2BSTUP: u1,
                padding: u25,
            }),
            reserved880: [4]u8,
            ///  device OUT endpoint-3 transfer size register
            DOEPTSIZ3: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Received data PID/SETUP packet count
                RXDPID_STUPCNT: u2,
                padding: u1,
            }),
        };

        ///  Serial audio interface
        pub const SAI1 = extern struct {
            ///  Global configuration register
            GCR: mmio.Mmio(packed struct(u32) {
                ///  Synchronization inputs
                SYNCIN: u2,
                reserved4: u2,
                ///  Synchronization outputs
                SYNCOUT: u2,
                padding: u26,
            }),
            ///  AConfiguration register 1
            ACR1: mmio.Mmio(packed struct(u32) {
                ///  Audio block mode
                MODE: u2,
                ///  Protocol configuration
                PRTCFG: u2,
                reserved5: u1,
                ///  Data size
                DS: u3,
                ///  Least significant bit first
                LSBFIRST: u1,
                ///  Clock strobing edge
                CKSTR: u1,
                ///  Synchronization enable
                SYNCEN: u2,
                ///  Mono mode
                MONO: u1,
                ///  Output drive
                OutDri: u1,
                reserved16: u2,
                ///  Audio block A enable
                SAIAEN: u1,
                ///  DMA enable
                DMAEN: u1,
                reserved19: u1,
                ///  No divider
                NODIV: u1,
                ///  Master clock divider
                MCJDIV: u4,
                padding: u8,
            }),
            ///  AConfiguration register 2
            ACR2: mmio.Mmio(packed struct(u32) {
                ///  FIFO threshold
                FTH: u3,
                ///  FIFO flush
                FFLUS: u1,
                ///  Tristate management on data line
                TRIS: u1,
                ///  Mute
                MUTE: u1,
                ///  Mute value
                MUTEVAL: u1,
                ///  Mute counter
                MUTECN: u6,
                ///  Complement bit
                CPL: u1,
                ///  Companding mode
                COMP: u2,
                padding: u16,
            }),
            ///  AFRCR
            AFRCR: mmio.Mmio(packed struct(u32) {
                ///  Frame length
                FRL: u8,
                ///  Frame synchronization active level length
                FSALL: u7,
                reserved16: u1,
                ///  Frame synchronization definition
                FSDEF: u1,
                ///  Frame synchronization polarity
                FSPOL: u1,
                ///  Frame synchronization offset
                FSOFF: u1,
                padding: u13,
            }),
            ///  ASlot register
            ASLOTR: mmio.Mmio(packed struct(u32) {
                ///  First bit offset
                FBOFF: u5,
                reserved6: u1,
                ///  Slot size
                SLOTSZ: u2,
                ///  Number of slots in an audio frame
                NBSLOT: u4,
                reserved16: u4,
                ///  Slot enable
                SLOTEN: u16,
            }),
            ///  AInterrupt mask register2
            AIM: mmio.Mmio(packed struct(u32) {
                ///  Overrun/underrun interrupt enable
                OVRUDRIE: u1,
                ///  Mute detection interrupt enable
                MUTEDET: u1,
                ///  Wrong clock configuration interrupt enable
                WCKCFG: u1,
                ///  FIFO request interrupt enable
                FREQIE: u1,
                ///  Codec not ready interrupt enable
                CNRDYIE: u1,
                ///  Anticipated frame synchronization detection interrupt enable
                AFSDETIE: u1,
                ///  Late frame synchronization detection interrupt enable
                LFSDET: u1,
                padding: u25,
            }),
            ///  AStatus register
            ASR: mmio.Mmio(packed struct(u32) {
                ///  Overrun / underrun
                OVRUDR: u1,
                ///  Mute detection
                MUTEDET: u1,
                ///  Wrong clock configuration flag. This bit is read only.
                WCKCFG: u1,
                ///  FIFO request
                FREQ: u1,
                ///  Codec not ready
                CNRDY: u1,
                ///  Anticipated frame synchronization detection
                AFSDET: u1,
                ///  Late frame synchronization detection
                LFSDET: u1,
                reserved16: u9,
                ///  FIFO level threshold
                FLVL: u3,
                padding: u13,
            }),
            ///  AClear flag register
            ACLRFR: mmio.Mmio(packed struct(u32) {
                ///  Clear overrun / underrun
                OVRUDR: u1,
                ///  Mute detection flag
                MUTEDET: u1,
                ///  Clear wrong clock configuration flag
                WCKCFG: u1,
                reserved4: u1,
                ///  Clear codec not ready flag
                CNRDY: u1,
                ///  Clear anticipated frame synchronization detection flag.
                CAFSDET: u1,
                ///  Clear late frame synchronization detection flag
                LFSDET: u1,
                padding: u25,
            }),
            ///  AData register
            ADR: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
            ///  BConfiguration register 1
            BCR1: mmio.Mmio(packed struct(u32) {
                ///  Audio block mode
                MODE: u2,
                ///  Protocol configuration
                PRTCFG: u2,
                reserved5: u1,
                ///  Data size
                DS: u3,
                ///  Least significant bit first
                LSBFIRST: u1,
                ///  Clock strobing edge
                CKSTR: u1,
                ///  Synchronization enable
                SYNCEN: u2,
                ///  Mono mode
                MONO: u1,
                ///  Output drive
                OutDri: u1,
                reserved16: u2,
                ///  Audio block B enable
                SAIBEN: u1,
                ///  DMA enable
                DMAEN: u1,
                reserved19: u1,
                ///  No divider
                NODIV: u1,
                ///  Master clock divider
                MCJDIV: u4,
                padding: u8,
            }),
            ///  BConfiguration register 2
            BCR2: mmio.Mmio(packed struct(u32) {
                ///  FIFO threshold
                FTH: u3,
                ///  FIFO flush
                FFLUS: u1,
                ///  Tristate management on data line
                TRIS: u1,
                ///  Mute
                MUTE: u1,
                ///  Mute value
                MUTEVAL: u1,
                ///  Mute counter
                MUTECN: u6,
                ///  Complement bit
                CPL: u1,
                ///  Companding mode
                COMP: u2,
                padding: u16,
            }),
            ///  BFRCR
            BFRCR: mmio.Mmio(packed struct(u32) {
                ///  Frame length
                FRL: u8,
                ///  Frame synchronization active level length
                FSALL: u7,
                reserved16: u1,
                ///  Frame synchronization definition
                FSDEF: u1,
                ///  Frame synchronization polarity
                FSPOL: u1,
                ///  Frame synchronization offset
                FSOFF: u1,
                padding: u13,
            }),
            ///  BSlot register
            BSLOTR: mmio.Mmio(packed struct(u32) {
                ///  First bit offset
                FBOFF: u5,
                reserved6: u1,
                ///  Slot size
                SLOTSZ: u2,
                ///  Number of slots in an audio frame
                NBSLOT: u4,
                reserved16: u4,
                ///  Slot enable
                SLOTEN: u16,
            }),
            ///  BInterrupt mask register2
            BIM: mmio.Mmio(packed struct(u32) {
                ///  Overrun/underrun interrupt enable
                OVRUDRIE: u1,
                ///  Mute detection interrupt enable
                MUTEDET: u1,
                ///  Wrong clock configuration interrupt enable
                WCKCFG: u1,
                ///  FIFO request interrupt enable
                FREQIE: u1,
                ///  Codec not ready interrupt enable
                CNRDYIE: u1,
                ///  Anticipated frame synchronization detection interrupt enable
                AFSDETIE: u1,
                ///  Late frame synchronization detection interrupt enable
                LFSDETIE: u1,
                padding: u25,
            }),
            ///  BStatus register
            BSR: mmio.Mmio(packed struct(u32) {
                ///  Overrun / underrun
                OVRUDR: u1,
                ///  Mute detection
                MUTEDET: u1,
                ///  Wrong clock configuration flag
                WCKCFG: u1,
                ///  FIFO request
                FREQ: u1,
                ///  Codec not ready
                CNRDY: u1,
                ///  Anticipated frame synchronization detection
                AFSDET: u1,
                ///  Late frame synchronization detection
                LFSDET: u1,
                reserved16: u9,
                ///  FIFO level threshold
                FLVL: u3,
                padding: u13,
            }),
            ///  BClear flag register
            BCLRFR: mmio.Mmio(packed struct(u32) {
                ///  Clear overrun / underrun
                OVRUDR: u1,
                ///  Mute detection flag
                MUTEDET: u1,
                ///  Clear wrong clock configuration flag
                WCKCFG: u1,
                reserved4: u1,
                ///  Clear codec not ready flag
                CNRDY: u1,
                ///  Clear anticipated frame synchronization detection flag
                CAFSDET: u1,
                ///  Clear late frame synchronization detection flag
                LFSDET: u1,
                padding: u25,
            }),
            ///  BData register
            BDR: mmio.Mmio(packed struct(u32) {
                ///  Data
                DATA: u32,
            }),
        };

        ///  Digital-to-analog converter
        pub const DAC = extern struct {
            ///  control register
            CR: mmio.Mmio(packed struct(u32) {
                ///  DAC channel1 enable
                EN1: u1,
                ///  DAC channel1 output buffer disable
                BOFF1: u1,
                ///  DAC channel1 trigger enable
                TEN1: u1,
                ///  DAC channel1 trigger selection
                TSEL1: u3,
                ///  DAC channel1 noise/triangle wave generation enable
                WAVE1: u2,
                ///  DAC channel1 mask/amplitude selector
                MAMP1: u4,
                ///  DAC channel1 DMA enable
                DMAEN1: u1,
                ///  DAC channel1 DMA Underrun Interrupt enable
                DMAUDRIE1: u1,
                reserved16: u2,
                ///  DAC channel2 enable
                EN2: u1,
                ///  DAC channel2 output buffer disable
                BOFF2: u1,
                ///  DAC channel2 trigger enable
                TEN2: u1,
                ///  DAC channel2 trigger selection
                TSEL2: u3,
                ///  DAC channel2 noise/triangle wave generation enable
                WAVE2: u2,
                ///  DAC channel2 mask/amplitude selector
                MAMP2: u4,
                ///  DAC channel2 DMA enable
                DMAEN2: u1,
                ///  DAC channel2 DMA underrun interrupt enable
                DMAUDRIE2: u1,
                padding: u2,
            }),
            ///  software trigger register
            SWTRIGR: mmio.Mmio(packed struct(u32) {
                ///  DAC channel1 software trigger
                SWTRIG1: u1,
                ///  DAC channel2 software trigger
                SWTRIG2: u1,
                padding: u30,
            }),
            ///  channel1 12-bit right-aligned data holding register
            DHR12R1: mmio.Mmio(packed struct(u32) {
                ///  DAC channel1 12-bit right-aligned data
                DACC1DHR: u12,
                padding: u20,
            }),
            ///  channel1 12-bit left aligned data holding register
            DHR12L1: mmio.Mmio(packed struct(u32) {
                reserved4: u4,
                ///  DAC channel1 12-bit left-aligned data
                DACC1DHR: u12,
                padding: u16,
            }),
            ///  channel1 8-bit right aligned data holding register
            DHR8R1: mmio.Mmio(packed struct(u32) {
                ///  DAC channel1 8-bit right-aligned data
                DACC1DHR: u8,
                padding: u24,
            }),
            ///  channel2 12-bit right aligned data holding register
            DHR12R2: mmio.Mmio(packed struct(u32) {
                ///  DAC channel2 12-bit right-aligned data
                DACC2DHR: u12,
                padding: u20,
            }),
            ///  channel2 12-bit left aligned data holding register
            DHR12L2: mmio.Mmio(packed struct(u32) {
                reserved4: u4,
                ///  DAC channel2 12-bit left-aligned data
                DACC2DHR: u12,
                padding: u16,
            }),
            ///  channel2 8-bit right-aligned data holding register
            DHR8R2: mmio.Mmio(packed struct(u32) {
                ///  DAC channel2 8-bit right-aligned data
                DACC2DHR: u8,
                padding: u24,
            }),
            ///  Dual DAC 12-bit right-aligned data holding register
            DHR12RD: mmio.Mmio(packed struct(u32) {
                ///  DAC channel1 12-bit right-aligned data
                DACC1DHR: u12,
                reserved16: u4,
                ///  DAC channel2 12-bit right-aligned data
                DACC2DHR: u12,
                padding: u4,
            }),
            ///  DUAL DAC 12-bit left aligned data holding register
            DHR12LD: mmio.Mmio(packed struct(u32) {
                reserved4: u4,
                ///  DAC channel1 12-bit left-aligned data
                DACC1DHR: u12,
                reserved20: u4,
                ///  DAC channel2 12-bit left-aligned data
                DACC2DHR: u12,
            }),
            ///  DUAL DAC 8-bit right aligned data holding register
            DHR8RD: mmio.Mmio(packed struct(u32) {
                ///  DAC channel1 8-bit right-aligned data
                DACC1DHR: u8,
                ///  DAC channel2 8-bit right-aligned data
                DACC2DHR: u8,
                padding: u16,
            }),
            ///  channel1 data output register
            DOR1: mmio.Mmio(packed struct(u32) {
                ///  DAC channel1 data output
                DACC1DOR: u12,
                padding: u20,
            }),
            ///  channel2 data output register
            DOR2: mmio.Mmio(packed struct(u32) {
                ///  DAC channel2 data output
                DACC2DOR: u12,
                padding: u20,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) {
                reserved13: u13,
                ///  DAC channel1 DMA underrun flag
                DMAUDR1: u1,
                reserved29: u15,
                ///  DAC channel2 DMA underrun flag
                DMAUDR2: u1,
                padding: u2,
            }),
        };

        ///  Inter-integrated circuit
        pub const I2C3 = extern struct {
            ///  Control register 1
            CR1: mmio.Mmio(packed struct(u32) {
                ///  Peripheral enable
                PE: u1,
                ///  SMBus mode
                SMBUS: u1,
                reserved3: u1,
                ///  SMBus type
                SMBTYPE: u1,
                ///  ARP enable
                ENARP: u1,
                ///  PEC enable
                ENPEC: u1,
                ///  General call enable
                ENGC: u1,
                ///  Clock stretching disable (Slave mode)
                NOSTRETCH: u1,
                ///  Start generation
                START: u1,
                ///  Stop generation
                STOP: u1,
                ///  Acknowledge enable
                ACK: u1,
                ///  Acknowledge/PEC Position (for data reception)
                POS: u1,
                ///  Packet error checking
                PEC: u1,
                ///  SMBus alert
                ALERT: u1,
                reserved15: u1,
                ///  Software reset
                SWRST: u1,
                padding: u16,
            }),
            ///  Control register 2
            CR2: mmio.Mmio(packed struct(u32) {
                ///  Peripheral clock frequency
                FREQ: u6,
                reserved8: u2,
                ///  Error interrupt enable
                ITERREN: u1,
                ///  Event interrupt enable
                ITEVTEN: u1,
                ///  Buffer interrupt enable
                ITBUFEN: u1,
                ///  DMA requests enable
                DMAEN: u1,
                ///  DMA last transfer
                LAST: u1,
                padding: u19,
            }),
            ///  Own address register 1
            OAR1: mmio.Mmio(packed struct(u32) {
                ///  Interface address
                ADD0: u1,
                ///  Interface address
                ADD7: u7,
                ///  Interface address
                ADD10: u2,
                reserved15: u5,
                ///  Addressing mode (slave mode)
                ADDMODE: u1,
                padding: u16,
            }),
            ///  Own address register 2
            OAR2: mmio.Mmio(packed struct(u32) {
                ///  Dual addressing mode enable
                ENDUAL: u1,
                ///  Interface address
                ADD2: u7,
                padding: u24,
            }),
            ///  Data register
            DR: mmio.Mmio(packed struct(u32) {
                ///  8-bit data register
                DR: u8,
                padding: u24,
            }),
            ///  Status register 1
            SR1: mmio.Mmio(packed struct(u32) {
                ///  Start bit (Master mode)
                SB: u1,
                ///  Address sent (master mode)/matched (slave mode)
                ADDR: u1,
                ///  Byte transfer finished
                BTF: u1,
                ///  10-bit header sent (Master mode)
                ADD10: u1,
                ///  Stop detection (slave mode)
                STOPF: u1,
                reserved6: u1,
                ///  Data register not empty (receivers)
                RxNE: u1,
                ///  Data register empty (transmitters)
                TxE: u1,
                ///  Bus error
                BERR: u1,
                ///  Arbitration lost (master mode)
                ARLO: u1,
                ///  Acknowledge failure
                AF: u1,
                ///  Overrun/Underrun
                OVR: u1,
                ///  PEC Error in reception
                PECERR: u1,
                reserved14: u1,
                ///  Timeout or Tlow error
                TIMEOUT: u1,
                ///  SMBus alert
                SMBALERT: u1,
                padding: u16,
            }),
            ///  Status register 2
            SR2: mmio.Mmio(packed struct(u32) {
                ///  Master/slave
                MSL: u1,
                ///  Bus busy
                BUSY: u1,
                ///  Transmitter/receiver
                TRA: u1,
                reserved4: u1,
                ///  General call address (Slave mode)
                GENCALL: u1,
                ///  SMBus device default address (Slave mode)
                SMBDEFAULT: u1,
                ///  SMBus host header (Slave mode)
                SMBHOST: u1,
                ///  Dual flag (Slave mode)
                DUALF: u1,
                ///  acket error checking register
                PEC: u8,
                padding: u16,
            }),
            ///  Clock control register
            CCR: mmio.Mmio(packed struct(u32) {
                ///  Clock control register in Fast/Standard mode (Master mode)
                CCR: u12,
                reserved14: u2,
                ///  Fast mode duty cycle
                DUTY: u1,
                ///  I2C master mode selection
                F_S: u1,
                padding: u16,
            }),
            ///  TRISE register
            TRISE: mmio.Mmio(packed struct(u32) {
                ///  Maximum rise time in Fast/Standard mode (Master mode)
                TRISE: u6,
                padding: u26,
            }),
            ///  I2C FLTR register
            FLTR: mmio.Mmio(packed struct(u32) {
                ///  Digital noise filter
                DNF: u4,
                ///  Analog noise filter OFF
                ANOFF: u1,
                padding: u27,
            }),
        };

        ///  USB on the go high speed
        pub const OTG_HS_PWRCLK = extern struct {
            ///  Power and clock gating control register
            OTG_HS_PCGCR: mmio.Mmio(packed struct(u32) {
                ///  Stop PHY clock
                STPPCLK: u1,
                ///  Gate HCLK
                GATEHCLK: u1,
                reserved4: u2,
                ///  PHY suspended
                PHYSUSP: u1,
                padding: u27,
            }),
        };

        ///  USB on the go high speed
        pub const OTG_HS_DEVICE = extern struct {
            ///  OTG_HS device configuration register
            OTG_HS_DCFG: mmio.Mmio(packed struct(u32) {
                ///  Device speed
                DSPD: u2,
                ///  Nonzero-length status OUT handshake
                NZLSOHSK: u1,
                reserved4: u1,
                ///  Device address
                DAD: u7,
                ///  Periodic (micro)frame interval
                PFIVL: u2,
                reserved24: u11,
                ///  Periodic scheduling interval
                PERSCHIVL: u2,
                padding: u6,
            }),
            ///  OTG_HS device control register
            OTG_HS_DCTL: mmio.Mmio(packed struct(u32) {
                ///  Remote wakeup signaling
                RWUSIG: u1,
                ///  Soft disconnect
                SDIS: u1,
                ///  Global IN NAK status
                GINSTS: u1,
                ///  Global OUT NAK status
                GONSTS: u1,
                ///  Test control
                TCTL: u3,
                ///  Set global IN NAK
                SGINAK: u1,
                ///  Clear global IN NAK
                CGINAK: u1,
                ///  Set global OUT NAK
                SGONAK: u1,
                ///  Clear global OUT NAK
                CGONAK: u1,
                ///  Power-on programming done
                POPRGDNE: u1,
                padding: u20,
            }),
            ///  OTG_HS device status register
            OTG_HS_DSTS: mmio.Mmio(packed struct(u32) {
                ///  Suspend status
                SUSPSTS: u1,
                ///  Enumerated speed
                ENUMSPD: u2,
                ///  Erratic error
                EERR: u1,
                reserved8: u4,
                ///  Frame number of the received SOF
                FNSOF: u14,
                padding: u10,
            }),
            reserved16: [4]u8,
            ///  OTG_HS device IN endpoint common interrupt mask register
            OTG_HS_DIEPMSK: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt mask
                XFRCM: u1,
                ///  Endpoint disabled interrupt mask
                EPDM: u1,
                reserved3: u1,
                ///  Timeout condition mask (nonisochronous endpoints)
                TOM: u1,
                ///  IN token received when TxFIFO empty mask
                ITTXFEMSK: u1,
                ///  IN token received with EP mismatch mask
                INEPNMM: u1,
                ///  IN endpoint NAK effective mask
                INEPNEM: u1,
                reserved8: u1,
                ///  FIFO underrun mask
                TXFURM: u1,
                ///  BNA interrupt mask
                BIM: u1,
                padding: u22,
            }),
            ///  OTG_HS device OUT endpoint common interrupt mask register
            OTG_HS_DOEPMSK: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt mask
                XFRCM: u1,
                ///  Endpoint disabled interrupt mask
                EPDM: u1,
                reserved3: u1,
                ///  SETUP phase done mask
                STUPM: u1,
                ///  OUT token received when endpoint disabled mask
                OTEPDM: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets received mask
                B2BSTUP: u1,
                reserved8: u1,
                ///  OUT packet error mask
                OPEM: u1,
                ///  BNA interrupt mask
                BOIM: u1,
                padding: u22,
            }),
            ///  OTG_HS device all endpoints interrupt register
            OTG_HS_DAINT: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint interrupt bits
                IEPINT: u16,
                ///  OUT endpoint interrupt bits
                OEPINT: u16,
            }),
            ///  OTG_HS all endpoints interrupt mask register
            OTG_HS_DAINTMSK: mmio.Mmio(packed struct(u32) {
                ///  IN EP interrupt mask bits
                IEPM: u16,
                ///  OUT EP interrupt mask bits
                OEPM: u16,
            }),
            reserved40: [8]u8,
            ///  OTG_HS device VBUS discharge time register
            OTG_HS_DVBUSDIS: mmio.Mmio(packed struct(u32) {
                ///  Device VBUS discharge time
                VBUSDT: u16,
                padding: u16,
            }),
            ///  OTG_HS device VBUS pulsing time register
            OTG_HS_DVBUSPULSE: mmio.Mmio(packed struct(u32) {
                ///  Device VBUS pulsing time
                DVBUSP: u12,
                padding: u20,
            }),
            ///  OTG_HS Device threshold control register
            OTG_HS_DTHRCTL: mmio.Mmio(packed struct(u32) {
                ///  Nonisochronous IN endpoints threshold enable
                NONISOTHREN: u1,
                ///  ISO IN endpoint threshold enable
                ISOTHREN: u1,
                ///  Transmit threshold length
                TXTHRLEN: u9,
                reserved16: u5,
                ///  Receive threshold enable
                RXTHREN: u1,
                ///  Receive threshold length
                RXTHRLEN: u9,
                reserved27: u1,
                ///  Arbiter parking enable
                ARPEN: u1,
                padding: u4,
            }),
            ///  OTG_HS device IN endpoint FIFO empty interrupt mask register
            OTG_HS_DIEPEMPMSK: mmio.Mmio(packed struct(u32) {
                ///  IN EP Tx FIFO empty interrupt mask bits
                INEPTXFEM: u16,
                padding: u16,
            }),
            ///  OTG_HS device each endpoint interrupt register
            OTG_HS_DEACHINT: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  IN endpoint 1interrupt bit
                IEP1INT: u1,
                reserved17: u15,
                ///  OUT endpoint 1 interrupt bit
                OEP1INT: u1,
                padding: u14,
            }),
            ///  OTG_HS device each endpoint interrupt register mask
            OTG_HS_DEACHINTMSK: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  IN Endpoint 1 interrupt mask bit
                IEP1INTM: u1,
                reserved17: u15,
                ///  OUT Endpoint 1 interrupt mask bit
                OEP1INTM: u1,
                padding: u14,
            }),
            ///  OTG_HS device each in endpoint-1 interrupt register
            OTG_HS_DIEPEACHMSK1: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt mask
                XFRCM: u1,
                ///  Endpoint disabled interrupt mask
                EPDM: u1,
                reserved3: u1,
                ///  Timeout condition mask (nonisochronous endpoints)
                TOM: u1,
                ///  IN token received when TxFIFO empty mask
                ITTXFEMSK: u1,
                ///  IN token received with EP mismatch mask
                INEPNMM: u1,
                ///  IN endpoint NAK effective mask
                INEPNEM: u1,
                reserved8: u1,
                ///  FIFO underrun mask
                TXFURM: u1,
                ///  BNA interrupt mask
                BIM: u1,
                reserved13: u3,
                ///  NAK interrupt mask
                NAKM: u1,
                padding: u18,
            }),
            reserved128: [60]u8,
            ///  OTG_HS device each OUT endpoint-1 interrupt register
            OTG_HS_DOEPEACHMSK1: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt mask
                XFRCM: u1,
                ///  Endpoint disabled interrupt mask
                EPDM: u1,
                reserved3: u1,
                ///  Timeout condition mask
                TOM: u1,
                ///  IN token received when TxFIFO empty mask
                ITTXFEMSK: u1,
                ///  IN token received with EP mismatch mask
                INEPNMM: u1,
                ///  IN endpoint NAK effective mask
                INEPNEM: u1,
                reserved8: u1,
                ///  OUT packet error mask
                TXFURM: u1,
                ///  BNA interrupt mask
                BIM: u1,
                reserved12: u2,
                ///  Bubble error interrupt mask
                BERRM: u1,
                ///  NAK interrupt mask
                NAKM: u1,
                ///  NYET interrupt mask
                NYETM: u1,
                padding: u17,
            }),
            reserved256: [124]u8,
            ///  OTG device endpoint-0 control register
            OTG_HS_DIEPCTL0: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                reserved15: u4,
                ///  USB active endpoint
                USBAEP: u1,
                ///  Even/odd frame
                EONUM_DPID: u1,
                ///  NAK status
                NAKSTS: u1,
                ///  Endpoint type
                EPTYP: u2,
                reserved21: u1,
                ///  STALL handshake
                Stall: u1,
                ///  TxFIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  Set DATA0 PID
                SD0PID_SEVNFRM: u1,
                ///  Set odd frame
                SODDFRM: u1,
                ///  Endpoint disable
                EPDIS: u1,
                ///  Endpoint enable
                EPENA: u1,
            }),
            reserved264: [4]u8,
            ///  OTG device endpoint-0 interrupt register
            OTG_HS_DIEPINT0: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  Timeout condition
                TOC: u1,
                ///  IN token received when TxFIFO is empty
                ITTXFE: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                INEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                ///  Transmit Fifo Underrun
                TXFIFOUDRN: u1,
                ///  Buffer not available interrupt
                BNA: u1,
                reserved11: u1,
                ///  Packet dropped status
                PKTDRPSTS: u1,
                ///  Babble error interrupt
                BERR: u1,
                ///  NAK interrupt
                NAK: u1,
                padding: u18,
            }),
            reserved272: [4]u8,
            ///  OTG_HS device IN endpoint 0 transfer size register
            OTG_HS_DIEPTSIZ0: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u7,
                reserved19: u12,
                ///  Packet count
                PKTCNT: u2,
                padding: u11,
            }),
            ///  OTG_HS device endpoint-1 DMA address register
            OTG_HS_DIEPDMA1: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            ///  OTG_HS device IN endpoint transmit FIFO status register
            OTG_HS_DTXFSTS0: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space avail
                INEPTFSAV: u16,
                padding: u16,
            }),
            reserved288: [4]u8,
            ///  OTG device endpoint-1 control register
            OTG_HS_DIEPCTL1: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                reserved15: u4,
                ///  USB active endpoint
                USBAEP: u1,
                ///  Even/odd frame
                EONUM_DPID: u1,
                ///  NAK status
                NAKSTS: u1,
                ///  Endpoint type
                EPTYP: u2,
                reserved21: u1,
                ///  STALL handshake
                Stall: u1,
                ///  TxFIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  Set DATA0 PID
                SD0PID_SEVNFRM: u1,
                ///  Set odd frame
                SODDFRM: u1,
                ///  Endpoint disable
                EPDIS: u1,
                ///  Endpoint enable
                EPENA: u1,
            }),
            reserved296: [4]u8,
            ///  OTG device endpoint-1 interrupt register
            OTG_HS_DIEPINT1: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  Timeout condition
                TOC: u1,
                ///  IN token received when TxFIFO is empty
                ITTXFE: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                INEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                ///  Transmit Fifo Underrun
                TXFIFOUDRN: u1,
                ///  Buffer not available interrupt
                BNA: u1,
                reserved11: u1,
                ///  Packet dropped status
                PKTDRPSTS: u1,
                ///  Babble error interrupt
                BERR: u1,
                ///  NAK interrupt
                NAK: u1,
                padding: u18,
            }),
            reserved304: [4]u8,
            ///  OTG_HS device endpoint transfer size register
            OTG_HS_DIEPTSIZ1: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Multi count
                MCNT: u2,
                padding: u1,
            }),
            ///  OTG_HS device endpoint-2 DMA address register
            OTG_HS_DIEPDMA2: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            ///  OTG_HS device IN endpoint transmit FIFO status register
            OTG_HS_DTXFSTS1: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space avail
                INEPTFSAV: u16,
                padding: u16,
            }),
            reserved320: [4]u8,
            ///  OTG device endpoint-2 control register
            OTG_HS_DIEPCTL2: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                reserved15: u4,
                ///  USB active endpoint
                USBAEP: u1,
                ///  Even/odd frame
                EONUM_DPID: u1,
                ///  NAK status
                NAKSTS: u1,
                ///  Endpoint type
                EPTYP: u2,
                reserved21: u1,
                ///  STALL handshake
                Stall: u1,
                ///  TxFIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  Set DATA0 PID
                SD0PID_SEVNFRM: u1,
                ///  Set odd frame
                SODDFRM: u1,
                ///  Endpoint disable
                EPDIS: u1,
                ///  Endpoint enable
                EPENA: u1,
            }),
            reserved328: [4]u8,
            ///  OTG device endpoint-2 interrupt register
            OTG_HS_DIEPINT2: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  Timeout condition
                TOC: u1,
                ///  IN token received when TxFIFO is empty
                ITTXFE: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                INEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                ///  Transmit Fifo Underrun
                TXFIFOUDRN: u1,
                ///  Buffer not available interrupt
                BNA: u1,
                reserved11: u1,
                ///  Packet dropped status
                PKTDRPSTS: u1,
                ///  Babble error interrupt
                BERR: u1,
                ///  NAK interrupt
                NAK: u1,
                padding: u18,
            }),
            reserved336: [4]u8,
            ///  OTG_HS device endpoint transfer size register
            OTG_HS_DIEPTSIZ2: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Multi count
                MCNT: u2,
                padding: u1,
            }),
            ///  OTG_HS device endpoint-3 DMA address register
            OTG_HS_DIEPDMA3: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            ///  OTG_HS device IN endpoint transmit FIFO status register
            OTG_HS_DTXFSTS2: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space avail
                INEPTFSAV: u16,
                padding: u16,
            }),
            reserved352: [4]u8,
            ///  OTG device endpoint-3 control register
            OTG_HS_DIEPCTL3: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                reserved15: u4,
                ///  USB active endpoint
                USBAEP: u1,
                ///  Even/odd frame
                EONUM_DPID: u1,
                ///  NAK status
                NAKSTS: u1,
                ///  Endpoint type
                EPTYP: u2,
                reserved21: u1,
                ///  STALL handshake
                Stall: u1,
                ///  TxFIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  Set DATA0 PID
                SD0PID_SEVNFRM: u1,
                ///  Set odd frame
                SODDFRM: u1,
                ///  Endpoint disable
                EPDIS: u1,
                ///  Endpoint enable
                EPENA: u1,
            }),
            reserved360: [4]u8,
            ///  OTG device endpoint-3 interrupt register
            OTG_HS_DIEPINT3: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  Timeout condition
                TOC: u1,
                ///  IN token received when TxFIFO is empty
                ITTXFE: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                INEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                ///  Transmit Fifo Underrun
                TXFIFOUDRN: u1,
                ///  Buffer not available interrupt
                BNA: u1,
                reserved11: u1,
                ///  Packet dropped status
                PKTDRPSTS: u1,
                ///  Babble error interrupt
                BERR: u1,
                ///  NAK interrupt
                NAK: u1,
                padding: u18,
            }),
            reserved368: [4]u8,
            ///  OTG_HS device endpoint transfer size register
            OTG_HS_DIEPTSIZ3: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Multi count
                MCNT: u2,
                padding: u1,
            }),
            ///  OTG_HS device endpoint-4 DMA address register
            OTG_HS_DIEPDMA4: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            ///  OTG_HS device IN endpoint transmit FIFO status register
            OTG_HS_DTXFSTS3: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space avail
                INEPTFSAV: u16,
                padding: u16,
            }),
            reserved384: [4]u8,
            ///  OTG device endpoint-4 control register
            OTG_HS_DIEPCTL4: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                reserved15: u4,
                ///  USB active endpoint
                USBAEP: u1,
                ///  Even/odd frame
                EONUM_DPID: u1,
                ///  NAK status
                NAKSTS: u1,
                ///  Endpoint type
                EPTYP: u2,
                reserved21: u1,
                ///  STALL handshake
                Stall: u1,
                ///  TxFIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  Set DATA0 PID
                SD0PID_SEVNFRM: u1,
                ///  Set odd frame
                SODDFRM: u1,
                ///  Endpoint disable
                EPDIS: u1,
                ///  Endpoint enable
                EPENA: u1,
            }),
            reserved392: [4]u8,
            ///  OTG device endpoint-4 interrupt register
            OTG_HS_DIEPINT4: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  Timeout condition
                TOC: u1,
                ///  IN token received when TxFIFO is empty
                ITTXFE: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                INEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                ///  Transmit Fifo Underrun
                TXFIFOUDRN: u1,
                ///  Buffer not available interrupt
                BNA: u1,
                reserved11: u1,
                ///  Packet dropped status
                PKTDRPSTS: u1,
                ///  Babble error interrupt
                BERR: u1,
                ///  NAK interrupt
                NAK: u1,
                padding: u18,
            }),
            reserved400: [4]u8,
            ///  OTG_HS device endpoint transfer size register
            OTG_HS_DIEPTSIZ4: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Multi count
                MCNT: u2,
                padding: u1,
            }),
            ///  OTG_HS device endpoint-5 DMA address register
            OTG_HS_DIEPDMA5: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            ///  OTG_HS device IN endpoint transmit FIFO status register
            OTG_HS_DTXFSTS4: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space avail
                INEPTFSAV: u16,
                padding: u16,
            }),
            reserved416: [4]u8,
            ///  OTG device endpoint-5 control register
            OTG_HS_DIEPCTL5: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                reserved15: u4,
                ///  USB active endpoint
                USBAEP: u1,
                ///  Even/odd frame
                EONUM_DPID: u1,
                ///  NAK status
                NAKSTS: u1,
                ///  Endpoint type
                EPTYP: u2,
                reserved21: u1,
                ///  STALL handshake
                Stall: u1,
                ///  TxFIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  Set DATA0 PID
                SD0PID_SEVNFRM: u1,
                ///  Set odd frame
                SODDFRM: u1,
                ///  Endpoint disable
                EPDIS: u1,
                ///  Endpoint enable
                EPENA: u1,
            }),
            reserved424: [4]u8,
            ///  OTG device endpoint-5 interrupt register
            OTG_HS_DIEPINT5: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  Timeout condition
                TOC: u1,
                ///  IN token received when TxFIFO is empty
                ITTXFE: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                INEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                ///  Transmit Fifo Underrun
                TXFIFOUDRN: u1,
                ///  Buffer not available interrupt
                BNA: u1,
                reserved11: u1,
                ///  Packet dropped status
                PKTDRPSTS: u1,
                ///  Babble error interrupt
                BERR: u1,
                ///  NAK interrupt
                NAK: u1,
                padding: u18,
            }),
            reserved432: [4]u8,
            ///  OTG_HS device endpoint transfer size register
            OTG_HS_DIEPTSIZ5: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Multi count
                MCNT: u2,
                padding: u1,
            }),
            reserved440: [4]u8,
            ///  OTG_HS device IN endpoint transmit FIFO status register
            OTG_HS_DTXFSTS5: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint TxFIFO space avail
                INEPTFSAV: u16,
                padding: u16,
            }),
            reserved448: [4]u8,
            ///  OTG device endpoint-6 control register
            OTG_HS_DIEPCTL6: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                reserved15: u4,
                ///  USB active endpoint
                USBAEP: u1,
                ///  Even/odd frame
                EONUM_DPID: u1,
                ///  NAK status
                NAKSTS: u1,
                ///  Endpoint type
                EPTYP: u2,
                reserved21: u1,
                ///  STALL handshake
                Stall: u1,
                ///  TxFIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  Set DATA0 PID
                SD0PID_SEVNFRM: u1,
                ///  Set odd frame
                SODDFRM: u1,
                ///  Endpoint disable
                EPDIS: u1,
                ///  Endpoint enable
                EPENA: u1,
            }),
            reserved456: [4]u8,
            ///  OTG device endpoint-6 interrupt register
            OTG_HS_DIEPINT6: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  Timeout condition
                TOC: u1,
                ///  IN token received when TxFIFO is empty
                ITTXFE: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                INEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                ///  Transmit Fifo Underrun
                TXFIFOUDRN: u1,
                ///  Buffer not available interrupt
                BNA: u1,
                reserved11: u1,
                ///  Packet dropped status
                PKTDRPSTS: u1,
                ///  Babble error interrupt
                BERR: u1,
                ///  NAK interrupt
                NAK: u1,
                padding: u18,
            }),
            reserved480: [20]u8,
            ///  OTG device endpoint-7 control register
            OTG_HS_DIEPCTL7: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                reserved15: u4,
                ///  USB active endpoint
                USBAEP: u1,
                ///  Even/odd frame
                EONUM_DPID: u1,
                ///  NAK status
                NAKSTS: u1,
                ///  Endpoint type
                EPTYP: u2,
                reserved21: u1,
                ///  STALL handshake
                Stall: u1,
                ///  TxFIFO number
                TXFNUM: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  Set DATA0 PID
                SD0PID_SEVNFRM: u1,
                ///  Set odd frame
                SODDFRM: u1,
                ///  Endpoint disable
                EPDIS: u1,
                ///  Endpoint enable
                EPENA: u1,
            }),
            reserved488: [4]u8,
            ///  OTG device endpoint-7 interrupt register
            OTG_HS_DIEPINT7: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  Timeout condition
                TOC: u1,
                ///  IN token received when TxFIFO is empty
                ITTXFE: u1,
                reserved6: u1,
                ///  IN endpoint NAK effective
                INEPNE: u1,
                ///  Transmit FIFO empty
                TXFE: u1,
                ///  Transmit Fifo Underrun
                TXFIFOUDRN: u1,
                ///  Buffer not available interrupt
                BNA: u1,
                reserved11: u1,
                ///  Packet dropped status
                PKTDRPSTS: u1,
                ///  Babble error interrupt
                BERR: u1,
                ///  NAK interrupt
                NAK: u1,
                padding: u18,
            }),
            reserved768: [276]u8,
            ///  OTG_HS device control OUT endpoint 0 control register
            OTG_HS_DOEPCTL0: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u2,
                reserved15: u13,
                ///  USB active endpoint
                USBAEP: u1,
                reserved17: u1,
                ///  NAK status
                NAKSTS: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Snoop mode
                SNPM: u1,
                ///  STALL handshake
                Stall: u1,
                reserved26: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                reserved30: u2,
                ///  Endpoint disable
                EPDIS: u1,
                ///  Endpoint enable
                EPENA: u1,
            }),
            reserved776: [4]u8,
            ///  OTG_HS device endpoint-0 interrupt register
            OTG_HS_DOEPINT0: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  SETUP phase done
                STUP: u1,
                ///  OUT token received when endpoint disabled
                OTEPDIS: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets received
                B2BSTUP: u1,
                reserved14: u7,
                ///  NYET interrupt
                NYET: u1,
                padding: u17,
            }),
            reserved784: [4]u8,
            ///  OTG_HS device endpoint-1 transfer size register
            OTG_HS_DOEPTSIZ0: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u7,
                reserved19: u12,
                ///  Packet count
                PKTCNT: u1,
                reserved29: u9,
                ///  SETUP packet count
                STUPCNT: u2,
                padding: u1,
            }),
            reserved800: [12]u8,
            ///  OTG device endpoint-1 control register
            OTG_HS_DOEPCTL1: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                reserved15: u4,
                ///  USB active endpoint
                USBAEP: u1,
                ///  Even odd frame/Endpoint data PID
                EONUM_DPID: u1,
                ///  NAK status
                NAKSTS: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Snoop mode
                SNPM: u1,
                ///  STALL handshake
                Stall: u1,
                reserved26: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  Set DATA0 PID/Set even frame
                SD0PID_SEVNFRM: u1,
                ///  Set odd frame
                SODDFRM: u1,
                ///  Endpoint disable
                EPDIS: u1,
                ///  Endpoint enable
                EPENA: u1,
            }),
            reserved808: [4]u8,
            ///  OTG_HS device endpoint-1 interrupt register
            OTG_HS_DOEPINT1: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  SETUP phase done
                STUP: u1,
                ///  OUT token received when endpoint disabled
                OTEPDIS: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets received
                B2BSTUP: u1,
                reserved14: u7,
                ///  NYET interrupt
                NYET: u1,
                padding: u17,
            }),
            reserved816: [4]u8,
            ///  OTG_HS device endpoint-2 transfer size register
            OTG_HS_DOEPTSIZ1: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Received data PID/SETUP packet count
                RXDPID_STUPCNT: u2,
                padding: u1,
            }),
            reserved832: [12]u8,
            ///  OTG device endpoint-2 control register
            OTG_HS_DOEPCTL2: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                reserved15: u4,
                ///  USB active endpoint
                USBAEP: u1,
                ///  Even odd frame/Endpoint data PID
                EONUM_DPID: u1,
                ///  NAK status
                NAKSTS: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Snoop mode
                SNPM: u1,
                ///  STALL handshake
                Stall: u1,
                reserved26: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  Set DATA0 PID/Set even frame
                SD0PID_SEVNFRM: u1,
                ///  Set odd frame
                SODDFRM: u1,
                ///  Endpoint disable
                EPDIS: u1,
                ///  Endpoint enable
                EPENA: u1,
            }),
            reserved840: [4]u8,
            ///  OTG_HS device endpoint-2 interrupt register
            OTG_HS_DOEPINT2: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  SETUP phase done
                STUP: u1,
                ///  OUT token received when endpoint disabled
                OTEPDIS: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets received
                B2BSTUP: u1,
                reserved14: u7,
                ///  NYET interrupt
                NYET: u1,
                padding: u17,
            }),
            reserved848: [4]u8,
            ///  OTG_HS device endpoint-3 transfer size register
            OTG_HS_DOEPTSIZ2: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Received data PID/SETUP packet count
                RXDPID_STUPCNT: u2,
                padding: u1,
            }),
            reserved864: [12]u8,
            ///  OTG device endpoint-3 control register
            OTG_HS_DOEPCTL3: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                reserved15: u4,
                ///  USB active endpoint
                USBAEP: u1,
                ///  Even odd frame/Endpoint data PID
                EONUM_DPID: u1,
                ///  NAK status
                NAKSTS: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Snoop mode
                SNPM: u1,
                ///  STALL handshake
                Stall: u1,
                reserved26: u4,
                ///  Clear NAK
                CNAK: u1,
                ///  Set NAK
                SNAK: u1,
                ///  Set DATA0 PID/Set even frame
                SD0PID_SEVNFRM: u1,
                ///  Set odd frame
                SODDFRM: u1,
                ///  Endpoint disable
                EPDIS: u1,
                ///  Endpoint enable
                EPENA: u1,
            }),
            reserved872: [4]u8,
            ///  OTG_HS device endpoint-3 interrupt register
            OTG_HS_DOEPINT3: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  SETUP phase done
                STUP: u1,
                ///  OUT token received when endpoint disabled
                OTEPDIS: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets received
                B2BSTUP: u1,
                reserved14: u7,
                ///  NYET interrupt
                NYET: u1,
                padding: u17,
            }),
            reserved880: [4]u8,
            ///  OTG_HS device endpoint-4 transfer size register
            OTG_HS_DOEPTSIZ3: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Received data PID/SETUP packet count
                RXDPID_STUPCNT: u2,
                padding: u1,
            }),
            reserved904: [20]u8,
            ///  OTG_HS device endpoint-4 interrupt register
            OTG_HS_DOEPINT4: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  SETUP phase done
                STUP: u1,
                ///  OUT token received when endpoint disabled
                OTEPDIS: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets received
                B2BSTUP: u1,
                reserved14: u7,
                ///  NYET interrupt
                NYET: u1,
                padding: u17,
            }),
            reserved912: [4]u8,
            ///  OTG_HS device endpoint-5 transfer size register
            OTG_HS_DOEPTSIZ4: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Received data PID/SETUP packet count
                RXDPID_STUPCNT: u2,
                padding: u1,
            }),
            reserved936: [20]u8,
            ///  OTG_HS device endpoint-5 interrupt register
            OTG_HS_DOEPINT5: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  SETUP phase done
                STUP: u1,
                ///  OUT token received when endpoint disabled
                OTEPDIS: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets received
                B2BSTUP: u1,
                reserved14: u7,
                ///  NYET interrupt
                NYET: u1,
                padding: u17,
            }),
            reserved968: [28]u8,
            ///  OTG_HS device endpoint-6 interrupt register
            OTG_HS_DOEPINT6: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  SETUP phase done
                STUP: u1,
                ///  OUT token received when endpoint disabled
                OTEPDIS: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets received
                B2BSTUP: u1,
                reserved14: u7,
                ///  NYET interrupt
                NYET: u1,
                padding: u17,
            }),
            reserved1000: [28]u8,
            ///  OTG_HS device endpoint-7 interrupt register
            OTG_HS_DOEPINT7: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed interrupt
                XFRC: u1,
                ///  Endpoint disabled interrupt
                EPDISD: u1,
                reserved3: u1,
                ///  SETUP phase done
                STUP: u1,
                ///  OUT token received when endpoint disabled
                OTEPDIS: u1,
                reserved6: u1,
                ///  Back-to-back SETUP packets received
                B2BSTUP: u1,
                reserved14: u7,
                ///  NYET interrupt
                NYET: u1,
                padding: u17,
            }),
        };

        ///  Independent watchdog
        pub const IWDG = extern struct {
            ///  Key register
            KR: mmio.Mmio(packed struct(u32) {
                ///  Key value (write only, read 0000h)
                KEY: u16,
                padding: u16,
            }),
            ///  Prescaler register
            PR: mmio.Mmio(packed struct(u32) {
                ///  Prescaler divider
                PR: u3,
                padding: u29,
            }),
            ///  Reload register
            RLR: mmio.Mmio(packed struct(u32) {
                ///  Watchdog counter reload value
                RL: u12,
                padding: u20,
            }),
            ///  Status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Watchdog prescaler value update
                PVU: u1,
                ///  Watchdog counter reload value update
                RVU: u1,
                padding: u30,
            }),
        };

        ///  Window watchdog
        pub const WWDG = extern struct {
            ///  Control register
            CR: mmio.Mmio(packed struct(u32) {
                ///  7-bit counter (MSB to LSB)
                T: u7,
                ///  Activation bit
                WDGA: u1,
                padding: u24,
            }),
            ///  Configuration register
            CFR: mmio.Mmio(packed struct(u32) {
                ///  7-bit window value
                W: u7,
                ///  Timer base
                WDGTB0: u1,
                ///  Timer base
                WDGTB1: u1,
                ///  Early wakeup interrupt
                EWI: u1,
                padding: u22,
            }),
            ///  Status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Early wakeup interrupt flag
                EWIF: u1,
                padding: u31,
            }),
        };

        ///  Real-time clock
        pub const RTC = extern struct {
            ///  time register
            TR: mmio.Mmio(packed struct(u32) {
                ///  Second units in BCD format
                SU: u4,
                ///  Second tens in BCD format
                ST: u3,
                reserved8: u1,
                ///  Minute units in BCD format
                MNU: u4,
                ///  Minute tens in BCD format
                MNT: u3,
                reserved16: u1,
                ///  Hour units in BCD format
                HU: u4,
                ///  Hour tens in BCD format
                HT: u2,
                ///  AM/PM notation
                PM: u1,
                padding: u9,
            }),
            ///  date register
            DR: mmio.Mmio(packed struct(u32) {
                ///  Date units in BCD format
                DU: u4,
                ///  Date tens in BCD format
                DT: u2,
                reserved8: u2,
                ///  Month units in BCD format
                MU: u4,
                ///  Month tens in BCD format
                MT: u1,
                ///  Week day units
                WDU: u3,
                ///  Year units in BCD format
                YU: u4,
                ///  Year tens in BCD format
                YT: u4,
                padding: u8,
            }),
            ///  control register
            CR: mmio.Mmio(packed struct(u32) {
                ///  Wakeup clock selection
                WCKSEL: u3,
                ///  Time-stamp event active edge
                TSEDGE: u1,
                ///  Reference clock detection enable (50 or 60 Hz)
                REFCKON: u1,
                reserved6: u1,
                ///  Hour format
                FMT: u1,
                ///  Coarse digital calibration enable
                DCE: u1,
                ///  Alarm A enable
                ALRAE: u1,
                ///  Alarm B enable
                ALRBE: u1,
                ///  Wakeup timer enable
                WUTE: u1,
                ///  Time stamp enable
                TSE: u1,
                ///  Alarm A interrupt enable
                ALRAIE: u1,
                ///  Alarm B interrupt enable
                ALRBIE: u1,
                ///  Wakeup timer interrupt enable
                WUTIE: u1,
                ///  Time-stamp interrupt enable
                TSIE: u1,
                ///  Add 1 hour (summer time change)
                ADD1H: u1,
                ///  Subtract 1 hour (winter time change)
                SUB1H: u1,
                ///  Backup
                BKP: u1,
                reserved20: u1,
                ///  Output polarity
                POL: u1,
                ///  Output selection
                OSEL: u2,
                ///  Calibration output enable
                COE: u1,
                padding: u8,
            }),
            ///  initialization and status register
            ISR: mmio.Mmio(packed struct(u32) {
                ///  Alarm A write flag
                ALRAWF: u1,
                ///  Alarm B write flag
                ALRBWF: u1,
                ///  Wakeup timer write flag
                WUTWF: u1,
                ///  Shift operation pending
                SHPF: u1,
                ///  Initialization status flag
                INITS: u1,
                ///  Registers synchronization flag
                RSF: u1,
                ///  Initialization flag
                INITF: u1,
                ///  Initialization mode
                INIT: u1,
                ///  Alarm A flag
                ALRAF: u1,
                ///  Alarm B flag
                ALRBF: u1,
                ///  Wakeup timer flag
                WUTF: u1,
                ///  Time-stamp flag
                TSF: u1,
                ///  Time-stamp overflow flag
                TSOVF: u1,
                ///  Tamper detection flag
                TAMP1F: u1,
                ///  TAMPER2 detection flag
                TAMP2F: u1,
                reserved16: u1,
                ///  Recalibration pending Flag
                RECALPF: u1,
                padding: u15,
            }),
            ///  prescaler register
            PRER: mmio.Mmio(packed struct(u32) {
                ///  Synchronous prescaler factor
                PREDIV_S: u15,
                reserved16: u1,
                ///  Asynchronous prescaler factor
                PREDIV_A: u7,
                padding: u9,
            }),
            ///  wakeup timer register
            WUTR: mmio.Mmio(packed struct(u32) {
                ///  Wakeup auto-reload value bits
                WUT: u16,
                padding: u16,
            }),
            ///  calibration register
            CALIBR: mmio.Mmio(packed struct(u32) {
                ///  Digital calibration
                DC: u5,
                reserved7: u2,
                ///  Digital calibration sign
                DCS: u1,
                padding: u24,
            }),
            ///  alarm A register
            ALRMAR: mmio.Mmio(packed struct(u32) {
                ///  Second units in BCD format
                SU: u4,
                ///  Second tens in BCD format
                ST: u3,
                ///  Alarm A seconds mask
                MSK1: u1,
                ///  Minute units in BCD format
                MNU: u4,
                ///  Minute tens in BCD format
                MNT: u3,
                ///  Alarm A minutes mask
                MSK2: u1,
                ///  Hour units in BCD format
                HU: u4,
                ///  Hour tens in BCD format
                HT: u2,
                ///  AM/PM notation
                PM: u1,
                ///  Alarm A hours mask
                MSK3: u1,
                ///  Date units or day in BCD format
                DU: u4,
                ///  Date tens in BCD format
                DT: u2,
                ///  Week day selection
                WDSEL: u1,
                ///  Alarm A date mask
                MSK4: u1,
            }),
            ///  alarm B register
            ALRMBR: mmio.Mmio(packed struct(u32) {
                ///  Second units in BCD format
                SU: u4,
                ///  Second tens in BCD format
                ST: u3,
                ///  Alarm B seconds mask
                MSK1: u1,
                ///  Minute units in BCD format
                MNU: u4,
                ///  Minute tens in BCD format
                MNT: u3,
                ///  Alarm B minutes mask
                MSK2: u1,
                ///  Hour units in BCD format
                HU: u4,
                ///  Hour tens in BCD format
                HT: u2,
                ///  AM/PM notation
                PM: u1,
                ///  Alarm B hours mask
                MSK3: u1,
                ///  Date units or day in BCD format
                DU: u4,
                ///  Date tens in BCD format
                DT: u2,
                ///  Week day selection
                WDSEL: u1,
                ///  Alarm B date mask
                MSK4: u1,
            }),
            ///  write protection register
            WPR: mmio.Mmio(packed struct(u32) {
                ///  Write protection key
                KEY: u8,
                padding: u24,
            }),
            ///  sub second register
            SSR: mmio.Mmio(packed struct(u32) {
                ///  Sub second value
                SS: u16,
                padding: u16,
            }),
            ///  shift control register
            SHIFTR: mmio.Mmio(packed struct(u32) {
                ///  Subtract a fraction of a second
                SUBFS: u15,
                reserved31: u16,
                ///  Add one second
                ADD1S: u1,
            }),
            ///  time stamp time register
            TSTR: mmio.Mmio(packed struct(u32) {
                ///  Tamper 1 detection enable
                TAMP1E: u1,
                ///  Active level for tamper 1
                TAMP1TRG: u1,
                ///  Tamper interrupt enable
                TAMPIE: u1,
                reserved16: u13,
                ///  TAMPER1 mapping
                TAMP1INSEL: u1,
                ///  TIMESTAMP mapping
                TSINSEL: u1,
                ///  AFO_ALARM output type
                ALARMOUTTYPE: u1,
                padding: u13,
            }),
            ///  time stamp date register
            TSDR: mmio.Mmio(packed struct(u32) {
                ///  Date units in BCD format
                DU: u4,
                ///  Date tens in BCD format
                DT: u2,
                reserved8: u2,
                ///  Month units in BCD format
                MU: u4,
                ///  Month tens in BCD format
                MT: u1,
                ///  Week day units
                WDU: u3,
                padding: u16,
            }),
            ///  timestamp sub second register
            TSSSR: mmio.Mmio(packed struct(u32) {
                ///  Sub second value
                SS: u16,
                padding: u16,
            }),
            ///  calibration register
            CALR: mmio.Mmio(packed struct(u32) {
                ///  Calibration minus
                CALM: u9,
                reserved13: u4,
                ///  Use a 16-second calibration cycle period
                CALW16: u1,
                ///  Use an 8-second calibration cycle period
                CALW8: u1,
                ///  Increase frequency of RTC by 488.5 ppm
                CALP: u1,
                padding: u16,
            }),
            ///  tamper and alternate function configuration register
            TAFCR: mmio.Mmio(packed struct(u32) {
                ///  Tamper 1 detection enable
                TAMP1E: u1,
                ///  Active level for tamper 1
                TAMP1TRG: u1,
                ///  Tamper interrupt enable
                TAMPIE: u1,
                ///  Tamper 2 detection enable
                TAMP2E: u1,
                ///  Active level for tamper 2
                TAMP2TRG: u1,
                reserved7: u2,
                ///  Activate timestamp on tamper detection event
                TAMPTS: u1,
                ///  Tamper sampling frequency
                TAMPFREQ: u3,
                ///  Tamper filter count
                TAMPFLT: u2,
                ///  Tamper precharge duration
                TAMPPRCH: u2,
                ///  TAMPER pull-up disable
                TAMPPUDIS: u1,
                ///  TAMPER1 mapping
                TAMP1INSEL: u1,
                ///  TIMESTAMP mapping
                TSINSEL: u1,
                ///  AFO_ALARM output type
                ALARMOUTTYPE: u1,
                padding: u13,
            }),
            ///  alarm A sub second register
            ALRMASSR: mmio.Mmio(packed struct(u32) {
                ///  Sub seconds value
                SS: u15,
                reserved24: u9,
                ///  Mask the most-significant bits starting at this bit
                MASKSS: u4,
                padding: u4,
            }),
            ///  alarm B sub second register
            ALRMBSSR: mmio.Mmio(packed struct(u32) {
                ///  Sub seconds value
                SS: u15,
                reserved24: u9,
                ///  Mask the most-significant bits starting at this bit
                MASKSS: u4,
                padding: u4,
            }),
            reserved80: [4]u8,
            ///  backup register
            BKP0R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP1R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP2R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP3R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP4R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP5R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP6R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP7R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP8R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP9R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP10R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP11R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP12R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP13R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP14R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP15R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP16R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP17R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP18R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
            ///  backup register
            BKP19R: mmio.Mmio(packed struct(u32) {
                ///  BKP
                BKP: u32,
            }),
        };

        ///  Universal synchronous asynchronous receiver transmitter
        pub const UART4 = extern struct {
            ///  Status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Parity error
                PE: u1,
                ///  Framing error
                FE: u1,
                ///  Noise detected flag
                NF: u1,
                ///  Overrun error
                ORE: u1,
                ///  IDLE line detected
                IDLE: u1,
                ///  Read data register not empty
                RXNE: u1,
                ///  Transmission complete
                TC: u1,
                ///  Transmit data register empty
                TXE: u1,
                ///  LIN break detection flag
                LBD: u1,
                padding: u23,
            }),
            ///  Data register
            DR: mmio.Mmio(packed struct(u32) {
                ///  Data value
                DR: u9,
                padding: u23,
            }),
            ///  Baud rate register
            BRR: mmio.Mmio(packed struct(u32) {
                ///  fraction of USARTDIV
                DIV_Fraction: u4,
                ///  mantissa of USARTDIV
                DIV_Mantissa: u12,
                padding: u16,
            }),
            ///  Control register 1
            CR1: mmio.Mmio(packed struct(u32) {
                ///  Send break
                SBK: u1,
                ///  Receiver wakeup
                RWU: u1,
                ///  Receiver enable
                RE: u1,
                ///  Transmitter enable
                TE: u1,
                ///  IDLE interrupt enable
                IDLEIE: u1,
                ///  RXNE interrupt enable
                RXNEIE: u1,
                ///  Transmission complete interrupt enable
                TCIE: u1,
                ///  TXE interrupt enable
                TXEIE: u1,
                ///  PE interrupt enable
                PEIE: u1,
                ///  Parity selection
                PS: u1,
                ///  Parity control enable
                PCE: u1,
                ///  Wakeup method
                WAKE: u1,
                ///  Word length
                M: u1,
                ///  USART enable
                UE: u1,
                reserved15: u1,
                ///  Oversampling mode
                OVER8: u1,
                padding: u16,
            }),
            ///  Control register 2
            CR2: mmio.Mmio(packed struct(u32) {
                ///  Address of the USART node
                ADD: u4,
                reserved5: u1,
                ///  lin break detection length
                LBDL: u1,
                ///  LIN break detection interrupt enable
                LBDIE: u1,
                reserved12: u5,
                ///  STOP bits
                STOP: u2,
                ///  LIN mode enable
                LINEN: u1,
                padding: u17,
            }),
            ///  Control register 3
            CR3: mmio.Mmio(packed struct(u32) {
                ///  Error interrupt enable
                EIE: u1,
                ///  IrDA mode enable
                IREN: u1,
                ///  IrDA low-power
                IRLP: u1,
                ///  Half-duplex selection
                HDSEL: u1,
                reserved6: u2,
                ///  DMA enable receiver
                DMAR: u1,
                ///  DMA enable transmitter
                DMAT: u1,
                reserved11: u3,
                ///  One sample bit method enable
                ONEBIT: u1,
                padding: u20,
            }),
        };

        ///  USB on the go high speed
        pub const OTG_HS_HOST = extern struct {
            ///  OTG_HS host configuration register
            OTG_HS_HCFG: mmio.Mmio(packed struct(u32) {
                ///  FS/LS PHY clock select
                FSLSPCS: u2,
                ///  FS- and LS-only support
                FSLSS: u1,
                padding: u29,
            }),
            ///  OTG_HS Host frame interval register
            OTG_HS_HFIR: mmio.Mmio(packed struct(u32) {
                ///  Frame interval
                FRIVL: u16,
                padding: u16,
            }),
            ///  OTG_HS host frame number/frame time remaining register
            OTG_HS_HFNUM: mmio.Mmio(packed struct(u32) {
                ///  Frame number
                FRNUM: u16,
                ///  Frame time remaining
                FTREM: u16,
            }),
            reserved16: [4]u8,
            ///  OTG_HS_Host periodic transmit FIFO/queue status register
            OTG_HS_HPTXSTS: mmio.Mmio(packed struct(u32) {
                ///  Periodic transmit data FIFO space available
                PTXFSAVL: u16,
                ///  Periodic transmit request queue space available
                PTXQSAV: u8,
                ///  Top of the periodic transmit request queue
                PTXQTOP: u8,
            }),
            ///  OTG_HS Host all channels interrupt register
            OTG_HS_HAINT: mmio.Mmio(packed struct(u32) {
                ///  Channel interrupts
                HAINT: u16,
                padding: u16,
            }),
            ///  OTG_HS host all channels interrupt mask register
            OTG_HS_HAINTMSK: mmio.Mmio(packed struct(u32) {
                ///  Channel interrupt mask
                HAINTM: u16,
                padding: u16,
            }),
            reserved64: [36]u8,
            ///  OTG_HS host port control and status register
            OTG_HS_HPRT: mmio.Mmio(packed struct(u32) {
                ///  Port connect status
                PCSTS: u1,
                ///  Port connect detected
                PCDET: u1,
                ///  Port enable
                PENA: u1,
                ///  Port enable/disable change
                PENCHNG: u1,
                ///  Port overcurrent active
                POCA: u1,
                ///  Port overcurrent change
                POCCHNG: u1,
                ///  Port resume
                PRES: u1,
                ///  Port suspend
                PSUSP: u1,
                ///  Port reset
                PRST: u1,
                reserved10: u1,
                ///  Port line status
                PLSTS: u2,
                ///  Port power
                PPWR: u1,
                ///  Port test control
                PTCTL: u4,
                ///  Port speed
                PSPD: u2,
                padding: u13,
            }),
            reserved256: [188]u8,
            ///  OTG_HS host channel-0 characteristics register
            OTG_HS_HCCHAR0: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multi Count (MC) / Error Count (EC)
                MC: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            ///  OTG_HS host channel-0 split control register
            OTG_HS_HCSPLT0: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PRTADDR: u7,
                ///  Hub address
                HUBADDR: u7,
                ///  XACTPOS
                XACTPOS: u2,
                ///  Do complete split
                COMPLSPLT: u1,
                reserved31: u14,
                ///  Split enable
                SPLITEN: u1,
            }),
            ///  OTG_HS host channel-11 interrupt register
            OTG_HS_HCINT0: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  Response received interrupt
                NYET: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-11 interrupt mask register
            OTG_HS_HCINTMSK0: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-11 transfer size register
            OTG_HS_HCTSIZ0: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            ///  OTG_HS host channel-0 DMA address register
            OTG_HS_HCDMA0: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved288: [8]u8,
            ///  OTG_HS host channel-1 characteristics register
            OTG_HS_HCCHAR1: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multi Count (MC) / Error Count (EC)
                MC: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            ///  OTG_HS host channel-1 split control register
            OTG_HS_HCSPLT1: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PRTADDR: u7,
                ///  Hub address
                HUBADDR: u7,
                ///  XACTPOS
                XACTPOS: u2,
                ///  Do complete split
                COMPLSPLT: u1,
                reserved31: u14,
                ///  Split enable
                SPLITEN: u1,
            }),
            ///  OTG_HS host channel-1 interrupt register
            OTG_HS_HCINT1: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  Response received interrupt
                NYET: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-1 interrupt mask register
            OTG_HS_HCINTMSK1: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-1 transfer size register
            OTG_HS_HCTSIZ1: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            ///  OTG_HS host channel-1 DMA address register
            OTG_HS_HCDMA1: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved320: [8]u8,
            ///  OTG_HS host channel-2 characteristics register
            OTG_HS_HCCHAR2: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multi Count (MC) / Error Count (EC)
                MC: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            ///  OTG_HS host channel-2 split control register
            OTG_HS_HCSPLT2: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PRTADDR: u7,
                ///  Hub address
                HUBADDR: u7,
                ///  XACTPOS
                XACTPOS: u2,
                ///  Do complete split
                COMPLSPLT: u1,
                reserved31: u14,
                ///  Split enable
                SPLITEN: u1,
            }),
            ///  OTG_HS host channel-2 interrupt register
            OTG_HS_HCINT2: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  Response received interrupt
                NYET: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-2 interrupt mask register
            OTG_HS_HCINTMSK2: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-2 transfer size register
            OTG_HS_HCTSIZ2: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            ///  OTG_HS host channel-2 DMA address register
            OTG_HS_HCDMA2: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved352: [8]u8,
            ///  OTG_HS host channel-3 characteristics register
            OTG_HS_HCCHAR3: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multi Count (MC) / Error Count (EC)
                MC: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            ///  OTG_HS host channel-3 split control register
            OTG_HS_HCSPLT3: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PRTADDR: u7,
                ///  Hub address
                HUBADDR: u7,
                ///  XACTPOS
                XACTPOS: u2,
                ///  Do complete split
                COMPLSPLT: u1,
                reserved31: u14,
                ///  Split enable
                SPLITEN: u1,
            }),
            ///  OTG_HS host channel-3 interrupt register
            OTG_HS_HCINT3: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  Response received interrupt
                NYET: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-3 interrupt mask register
            OTG_HS_HCINTMSK3: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-3 transfer size register
            OTG_HS_HCTSIZ3: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            ///  OTG_HS host channel-3 DMA address register
            OTG_HS_HCDMA3: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved384: [8]u8,
            ///  OTG_HS host channel-4 characteristics register
            OTG_HS_HCCHAR4: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multi Count (MC) / Error Count (EC)
                MC: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            ///  OTG_HS host channel-4 split control register
            OTG_HS_HCSPLT4: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PRTADDR: u7,
                ///  Hub address
                HUBADDR: u7,
                ///  XACTPOS
                XACTPOS: u2,
                ///  Do complete split
                COMPLSPLT: u1,
                reserved31: u14,
                ///  Split enable
                SPLITEN: u1,
            }),
            ///  OTG_HS host channel-4 interrupt register
            OTG_HS_HCINT4: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  Response received interrupt
                NYET: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-4 interrupt mask register
            OTG_HS_HCINTMSK4: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-4 transfer size register
            OTG_HS_HCTSIZ4: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            ///  OTG_HS host channel-4 DMA address register
            OTG_HS_HCDMA4: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved416: [8]u8,
            ///  OTG_HS host channel-5 characteristics register
            OTG_HS_HCCHAR5: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multi Count (MC) / Error Count (EC)
                MC: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            ///  OTG_HS host channel-5 split control register
            OTG_HS_HCSPLT5: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PRTADDR: u7,
                ///  Hub address
                HUBADDR: u7,
                ///  XACTPOS
                XACTPOS: u2,
                ///  Do complete split
                COMPLSPLT: u1,
                reserved31: u14,
                ///  Split enable
                SPLITEN: u1,
            }),
            ///  OTG_HS host channel-5 interrupt register
            OTG_HS_HCINT5: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  Response received interrupt
                NYET: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-5 interrupt mask register
            OTG_HS_HCINTMSK5: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-5 transfer size register
            OTG_HS_HCTSIZ5: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            ///  OTG_HS host channel-5 DMA address register
            OTG_HS_HCDMA5: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved448: [8]u8,
            ///  OTG_HS host channel-6 characteristics register
            OTG_HS_HCCHAR6: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multi Count (MC) / Error Count (EC)
                MC: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            ///  OTG_HS host channel-6 split control register
            OTG_HS_HCSPLT6: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PRTADDR: u7,
                ///  Hub address
                HUBADDR: u7,
                ///  XACTPOS
                XACTPOS: u2,
                ///  Do complete split
                COMPLSPLT: u1,
                reserved31: u14,
                ///  Split enable
                SPLITEN: u1,
            }),
            ///  OTG_HS host channel-6 interrupt register
            OTG_HS_HCINT6: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  Response received interrupt
                NYET: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-6 interrupt mask register
            OTG_HS_HCINTMSK6: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-6 transfer size register
            OTG_HS_HCTSIZ6: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            ///  OTG_HS host channel-6 DMA address register
            OTG_HS_HCDMA6: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved480: [8]u8,
            ///  OTG_HS host channel-7 characteristics register
            OTG_HS_HCCHAR7: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multi Count (MC) / Error Count (EC)
                MC: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            ///  OTG_HS host channel-7 split control register
            OTG_HS_HCSPLT7: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PRTADDR: u7,
                ///  Hub address
                HUBADDR: u7,
                ///  XACTPOS
                XACTPOS: u2,
                ///  Do complete split
                COMPLSPLT: u1,
                reserved31: u14,
                ///  Split enable
                SPLITEN: u1,
            }),
            ///  OTG_HS host channel-7 interrupt register
            OTG_HS_HCINT7: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  Response received interrupt
                NYET: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-7 interrupt mask register
            OTG_HS_HCINTMSK7: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-7 transfer size register
            OTG_HS_HCTSIZ7: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            ///  OTG_HS host channel-7 DMA address register
            OTG_HS_HCDMA7: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved512: [8]u8,
            ///  OTG_HS host channel-8 characteristics register
            OTG_HS_HCCHAR8: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multi Count (MC) / Error Count (EC)
                MC: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            ///  OTG_HS host channel-8 split control register
            OTG_HS_HCSPLT8: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PRTADDR: u7,
                ///  Hub address
                HUBADDR: u7,
                ///  XACTPOS
                XACTPOS: u2,
                ///  Do complete split
                COMPLSPLT: u1,
                reserved31: u14,
                ///  Split enable
                SPLITEN: u1,
            }),
            ///  OTG_HS host channel-8 interrupt register
            OTG_HS_HCINT8: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  Response received interrupt
                NYET: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-8 interrupt mask register
            OTG_HS_HCINTMSK8: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-8 transfer size register
            OTG_HS_HCTSIZ8: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            ///  OTG_HS host channel-8 DMA address register
            OTG_HS_HCDMA8: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved544: [8]u8,
            ///  OTG_HS host channel-9 characteristics register
            OTG_HS_HCCHAR9: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multi Count (MC) / Error Count (EC)
                MC: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            ///  OTG_HS host channel-9 split control register
            OTG_HS_HCSPLT9: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PRTADDR: u7,
                ///  Hub address
                HUBADDR: u7,
                ///  XACTPOS
                XACTPOS: u2,
                ///  Do complete split
                COMPLSPLT: u1,
                reserved31: u14,
                ///  Split enable
                SPLITEN: u1,
            }),
            ///  OTG_HS host channel-9 interrupt register
            OTG_HS_HCINT9: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  Response received interrupt
                NYET: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-9 interrupt mask register
            OTG_HS_HCINTMSK9: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-9 transfer size register
            OTG_HS_HCTSIZ9: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            ///  OTG_HS host channel-9 DMA address register
            OTG_HS_HCDMA9: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved576: [8]u8,
            ///  OTG_HS host channel-10 characteristics register
            OTG_HS_HCCHAR10: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multi Count (MC) / Error Count (EC)
                MC: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            ///  OTG_HS host channel-10 split control register
            OTG_HS_HCSPLT10: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PRTADDR: u7,
                ///  Hub address
                HUBADDR: u7,
                ///  XACTPOS
                XACTPOS: u2,
                ///  Do complete split
                COMPLSPLT: u1,
                reserved31: u14,
                ///  Split enable
                SPLITEN: u1,
            }),
            ///  OTG_HS host channel-10 interrupt register
            OTG_HS_HCINT10: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  Response received interrupt
                NYET: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-10 interrupt mask register
            OTG_HS_HCINTMSK10: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-10 transfer size register
            OTG_HS_HCTSIZ10: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            ///  OTG_HS host channel-10 DMA address register
            OTG_HS_HCDMA10: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
            reserved608: [8]u8,
            ///  OTG_HS host channel-11 characteristics register
            OTG_HS_HCCHAR11: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multi Count (MC) / Error Count (EC)
                MC: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            ///  OTG_HS host channel-11 split control register
            OTG_HS_HCSPLT11: mmio.Mmio(packed struct(u32) {
                ///  Port address
                PRTADDR: u7,
                ///  Hub address
                HUBADDR: u7,
                ///  XACTPOS
                XACTPOS: u2,
                ///  Do complete split
                COMPLSPLT: u1,
                reserved31: u14,
                ///  Split enable
                SPLITEN: u1,
            }),
            ///  OTG_HS host channel-11 interrupt register
            OTG_HS_HCINT11: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                ///  Response received interrupt
                NYET: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-11 interrupt mask register
            OTG_HS_HCINTMSK11: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                ///  AHB error
                AHBERR: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_HS host channel-11 transfer size register
            OTG_HS_HCTSIZ11: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            ///  OTG_HS host channel-11 DMA address register
            OTG_HS_HCDMA11: mmio.Mmio(packed struct(u32) {
                ///  DMA address
                DMAADDR: u32,
            }),
        };

        ///  Common ADC registers
        pub const C_ADC = extern struct {
            ///  ADC Common status register
            CSR: mmio.Mmio(packed struct(u32) {
                ///  Analog watchdog flag of ADC 1
                AWD1: u1,
                ///  End of conversion of ADC 1
                EOC1: u1,
                ///  Injected channel end of conversion of ADC 1
                JEOC1: u1,
                ///  Injected channel Start flag of ADC 1
                JSTRT1: u1,
                ///  Regular channel Start flag of ADC 1
                STRT1: u1,
                ///  Overrun flag of ADC 1
                OVR1: u1,
                reserved8: u2,
                ///  Analog watchdog flag of ADC 2
                AWD2: u1,
                ///  End of conversion of ADC 2
                EOC2: u1,
                ///  Injected channel end of conversion of ADC 2
                JEOC2: u1,
                ///  Injected channel Start flag of ADC 2
                JSTRT2: u1,
                ///  Regular channel Start flag of ADC 2
                STRT2: u1,
                ///  Overrun flag of ADC 2
                OVR2: u1,
                reserved16: u2,
                ///  Analog watchdog flag of ADC 3
                AWD3: u1,
                ///  End of conversion of ADC 3
                EOC3: u1,
                ///  Injected channel end of conversion of ADC 3
                JEOC3: u1,
                ///  Injected channel Start flag of ADC 3
                JSTRT3: u1,
                ///  Regular channel Start flag of ADC 3
                STRT3: u1,
                ///  Overrun flag of ADC3
                OVR3: u1,
                padding: u10,
            }),
            ///  ADC common control register
            CCR: mmio.Mmio(packed struct(u32) {
                ///  Multi ADC mode selection
                MULT: u5,
                reserved8: u3,
                ///  Delay between 2 sampling phases
                DELAY: u4,
                reserved13: u1,
                ///  DMA disable selection for multi-ADC mode
                DDS: u1,
                ///  Direct memory access mode for multi ADC mode
                DMA: u2,
                ///  ADC prescaler
                ADCPRE: u2,
                reserved22: u4,
                ///  VBAT enable
                VBATE: u1,
                ///  Temperature sensor and VREFINT enable
                TSVREFE: u1,
                padding: u8,
            }),
            ///  ADC common regular data register for dual and triple modes
            CDR: mmio.Mmio(packed struct(u32) {
                ///  1st data item of a pair of regular conversions
                DATA1: u16,
                ///  2nd data item of a pair of regular conversions
                DATA2: u16,
            }),
        };

        ///  Advanced-timers
        pub const TIM1 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) {
                ///  Counter enable
                CEN: u1,
                ///  Update disable
                UDIS: u1,
                ///  Update request source
                URS: u1,
                ///  One-pulse mode
                OPM: u1,
                ///  Direction
                DIR: u1,
                ///  Center-aligned mode selection
                CMS: u2,
                ///  Auto-reload preload enable
                ARPE: u1,
                ///  Clock division
                CKD: u2,
                padding: u22,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) {
                ///  Capture/compare preloaded control
                CCPC: u1,
                reserved2: u1,
                ///  Capture/compare control update selection
                CCUS: u1,
                ///  Capture/compare DMA selection
                CCDS: u1,
                ///  Master mode selection
                MMS: u3,
                ///  TI1 selection
                TI1S: u1,
                ///  Output Idle state 1
                OIS1: u1,
                ///  Output Idle state 1
                OIS1N: u1,
                ///  Output Idle state 2
                OIS2: u1,
                ///  Output Idle state 2
                OIS2N: u1,
                ///  Output Idle state 3
                OIS3: u1,
                ///  Output Idle state 3
                OIS3N: u1,
                ///  Output Idle state 4
                OIS4: u1,
                padding: u17,
            }),
            ///  slave mode control register
            SMCR: mmio.Mmio(packed struct(u32) {
                ///  Slave mode selection
                SMS: u3,
                reserved4: u1,
                ///  Trigger selection
                TS: u3,
                ///  Master/Slave mode
                MSM: u1,
                ///  External trigger filter
                ETF: u4,
                ///  External trigger prescaler
                ETPS: u2,
                ///  External clock enable
                ECE: u1,
                ///  External trigger polarity
                ETP: u1,
                padding: u16,
            }),
            ///  DMA/Interrupt enable register
            DIER: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt enable
                UIE: u1,
                ///  Capture/Compare 1 interrupt enable
                CC1IE: u1,
                ///  Capture/Compare 2 interrupt enable
                CC2IE: u1,
                ///  Capture/Compare 3 interrupt enable
                CC3IE: u1,
                ///  Capture/Compare 4 interrupt enable
                CC4IE: u1,
                ///  COM interrupt enable
                COMIE: u1,
                ///  Trigger interrupt enable
                TIE: u1,
                ///  Break interrupt enable
                BIE: u1,
                ///  Update DMA request enable
                UDE: u1,
                ///  Capture/Compare 1 DMA request enable
                CC1DE: u1,
                ///  Capture/Compare 2 DMA request enable
                CC2DE: u1,
                ///  Capture/Compare 3 DMA request enable
                CC3DE: u1,
                ///  Capture/Compare 4 DMA request enable
                CC4DE: u1,
                ///  COM DMA request enable
                COMDE: u1,
                ///  Trigger DMA request enable
                TDE: u1,
                padding: u17,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt flag
                UIF: u1,
                ///  Capture/compare 1 interrupt flag
                CC1IF: u1,
                ///  Capture/Compare 2 interrupt flag
                CC2IF: u1,
                ///  Capture/Compare 3 interrupt flag
                CC3IF: u1,
                ///  Capture/Compare 4 interrupt flag
                CC4IF: u1,
                ///  COM interrupt flag
                COMIF: u1,
                ///  Trigger interrupt flag
                TIF: u1,
                ///  Break interrupt flag
                BIF: u1,
                reserved9: u1,
                ///  Capture/Compare 1 overcapture flag
                CC1OF: u1,
                ///  Capture/compare 2 overcapture flag
                CC2OF: u1,
                ///  Capture/Compare 3 overcapture flag
                CC3OF: u1,
                ///  Capture/Compare 4 overcapture flag
                CC4OF: u1,
                padding: u19,
            }),
            ///  event generation register
            EGR: mmio.Mmio(packed struct(u32) {
                ///  Update generation
                UG: u1,
                ///  Capture/compare 1 generation
                CC1G: u1,
                ///  Capture/compare 2 generation
                CC2G: u1,
                ///  Capture/compare 3 generation
                CC3G: u1,
                ///  Capture/compare 4 generation
                CC4G: u1,
                ///  Capture/Compare control update generation
                COMG: u1,
                ///  Trigger generation
                TG: u1,
                ///  Break generation
                BG: u1,
                padding: u24,
            }),
            ///  capture/compare mode register 1 (output mode)
            CCMR1_Output: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 selection
                CC1S: u2,
                ///  Output Compare 1 fast enable
                OC1FE: u1,
                ///  Output Compare 1 preload enable
                OC1PE: u1,
                ///  Output Compare 1 mode
                OC1M: u3,
                ///  Output Compare 1 clear enable
                OC1CE: u1,
                ///  Capture/Compare 2 selection
                CC2S: u2,
                ///  Output Compare 2 fast enable
                OC2FE: u1,
                ///  Output Compare 2 preload enable
                OC2PE: u1,
                ///  Output Compare 2 mode
                OC2M: u3,
                ///  Output Compare 2 clear enable
                OC2CE: u1,
                padding: u16,
            }),
            ///  capture/compare mode register 2 (output mode)
            CCMR2_Output: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 3 selection
                CC3S: u2,
                ///  Output compare 3 fast enable
                OC3FE: u1,
                ///  Output compare 3 preload enable
                OC3PE: u1,
                ///  Output compare 3 mode
                OC3M: u3,
                ///  Output compare 3 clear enable
                OC3CE: u1,
                ///  Capture/Compare 4 selection
                CC4S: u2,
                ///  Output compare 4 fast enable
                OC4FE: u1,
                ///  Output compare 4 preload enable
                OC4PE: u1,
                ///  Output compare 4 mode
                OC4M: u3,
                ///  Output compare 4 clear enable
                OC4CE: u1,
                padding: u16,
            }),
            ///  capture/compare enable register
            CCER: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 output enable
                CC1E: u1,
                ///  Capture/Compare 1 output Polarity
                CC1P: u1,
                ///  Capture/Compare 1 complementary output enable
                CC1NE: u1,
                ///  Capture/Compare 1 output Polarity
                CC1NP: u1,
                ///  Capture/Compare 2 output enable
                CC2E: u1,
                ///  Capture/Compare 2 output Polarity
                CC2P: u1,
                ///  Capture/Compare 2 complementary output enable
                CC2NE: u1,
                ///  Capture/Compare 2 output Polarity
                CC2NP: u1,
                ///  Capture/Compare 3 output enable
                CC3E: u1,
                ///  Capture/Compare 3 output Polarity
                CC3P: u1,
                ///  Capture/Compare 3 complementary output enable
                CC3NE: u1,
                ///  Capture/Compare 3 output Polarity
                CC3NP: u1,
                ///  Capture/Compare 4 output enable
                CC4E: u1,
                ///  Capture/Compare 3 output Polarity
                CC4P: u1,
                padding: u18,
            }),
            ///  counter
            CNT: mmio.Mmio(packed struct(u32) {
                ///  counter value
                CNT: u16,
                padding: u16,
            }),
            ///  prescaler
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value
                PSC: u16,
                padding: u16,
            }),
            ///  auto-reload register
            ARR: mmio.Mmio(packed struct(u32) {
                ///  Auto-reload value
                ARR: u16,
                padding: u16,
            }),
            ///  repetition counter register
            RCR: mmio.Mmio(packed struct(u32) {
                ///  Repetition counter value
                REP: u8,
                padding: u24,
            }),
            ///  capture/compare register 1
            CCR1: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 value
                CCR1: u16,
                padding: u16,
            }),
            ///  capture/compare register 2
            CCR2: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 2 value
                CCR2: u16,
                padding: u16,
            }),
            ///  capture/compare register 3
            CCR3: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare value
                CCR3: u16,
                padding: u16,
            }),
            ///  capture/compare register 4
            CCR4: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare value
                CCR4: u16,
                padding: u16,
            }),
            ///  break and dead-time register
            BDTR: mmio.Mmio(packed struct(u32) {
                ///  Dead-time generator setup
                DTG: u8,
                ///  Lock configuration
                LOCK: u2,
                ///  Off-state selection for Idle mode
                OSSI: u1,
                ///  Off-state selection for Run mode
                OSSR: u1,
                ///  Break enable
                BKE: u1,
                ///  Break polarity
                BKP: u1,
                ///  Automatic output enable
                AOE: u1,
                ///  Main output enable
                MOE: u1,
                padding: u16,
            }),
            ///  DMA control register
            DCR: mmio.Mmio(packed struct(u32) {
                ///  DMA base address
                DBA: u5,
                reserved8: u3,
                ///  DMA burst length
                DBL: u5,
                padding: u19,
            }),
            ///  DMA address for full transfer
            DMAR: mmio.Mmio(packed struct(u32) {
                ///  DMA register for burst accesses
                DMAB: u16,
                padding: u16,
            }),
        };

        ///  USB on the go high speed
        pub const OTG_HS_GLOBAL = extern struct {
            ///  OTG_HS control and status register
            OTG_HS_GOTGCTL: mmio.Mmio(packed struct(u32) {
                ///  Session request success
                SRQSCS: u1,
                ///  Session request
                SRQ: u1,
                reserved8: u6,
                ///  Host negotiation success
                HNGSCS: u1,
                ///  HNP request
                HNPRQ: u1,
                ///  Host set HNP enable
                HSHNPEN: u1,
                ///  Device HNP enabled
                DHNPEN: u1,
                reserved16: u4,
                ///  Connector ID status
                CIDSTS: u1,
                ///  Long/short debounce time
                DBCT: u1,
                ///  A-session valid
                ASVLD: u1,
                ///  B-session valid
                BSVLD: u1,
                padding: u12,
            }),
            ///  OTG_HS interrupt register
            OTG_HS_GOTGINT: mmio.Mmio(packed struct(u32) {
                reserved2: u2,
                ///  Session end detected
                SEDET: u1,
                reserved8: u5,
                ///  Session request success status change
                SRSSCHG: u1,
                ///  Host negotiation success status change
                HNSSCHG: u1,
                reserved17: u7,
                ///  Host negotiation detected
                HNGDET: u1,
                ///  A-device timeout change
                ADTOCHG: u1,
                ///  Debounce done
                DBCDNE: u1,
                padding: u12,
            }),
            ///  OTG_HS AHB configuration register
            OTG_HS_GAHBCFG: mmio.Mmio(packed struct(u32) {
                ///  Global interrupt mask
                GINT: u1,
                ///  Burst length/type
                HBSTLEN: u4,
                ///  DMA enable
                DMAEN: u1,
                reserved7: u1,
                ///  TxFIFO empty level
                TXFELVL: u1,
                ///  Periodic TxFIFO empty level
                PTXFELVL: u1,
                padding: u23,
            }),
            ///  OTG_HS USB configuration register
            OTG_HS_GUSBCFG: mmio.Mmio(packed struct(u32) {
                ///  FS timeout calibration
                TOCAL: u3,
                reserved6: u3,
                ///  USB 2.0 high-speed ULPI PHY or USB 1.1 full-speed serial transceiver select
                PHYSEL: u1,
                reserved8: u1,
                ///  SRP-capable
                SRPCAP: u1,
                ///  HNP-capable
                HNPCAP: u1,
                ///  USB turnaround time
                TRDT: u4,
                reserved15: u1,
                ///  PHY Low-power clock select
                PHYLPCS: u1,
                reserved17: u1,
                ///  ULPI FS/LS select
                ULPIFSLS: u1,
                ///  ULPI Auto-resume
                ULPIAR: u1,
                ///  ULPI Clock SuspendM
                ULPICSM: u1,
                ///  ULPI External VBUS Drive
                ULPIEVBUSD: u1,
                ///  ULPI external VBUS indicator
                ULPIEVBUSI: u1,
                ///  TermSel DLine pulsing selection
                TSDPS: u1,
                ///  Indicator complement
                PCCI: u1,
                ///  Indicator pass through
                PTCI: u1,
                ///  ULPI interface protect disable
                ULPIIPD: u1,
                reserved29: u3,
                ///  Forced host mode
                FHMOD: u1,
                ///  Forced peripheral mode
                FDMOD: u1,
                ///  Corrupt Tx packet
                CTXPKT: u1,
            }),
            ///  OTG_HS reset register
            OTG_HS_GRSTCTL: mmio.Mmio(packed struct(u32) {
                ///  Core soft reset
                CSRST: u1,
                ///  HCLK soft reset
                HSRST: u1,
                ///  Host frame counter reset
                FCRST: u1,
                reserved4: u1,
                ///  RxFIFO flush
                RXFFLSH: u1,
                ///  TxFIFO flush
                TXFFLSH: u1,
                ///  TxFIFO number
                TXFNUM: u5,
                reserved30: u19,
                ///  DMA request signal
                DMAREQ: u1,
                ///  AHB master idle
                AHBIDL: u1,
            }),
            ///  OTG_HS core interrupt register
            OTG_HS_GINTSTS: mmio.Mmio(packed struct(u32) {
                ///  Current mode of operation
                CMOD: u1,
                ///  Mode mismatch interrupt
                MMIS: u1,
                ///  OTG interrupt
                OTGINT: u1,
                ///  Start of frame
                SOF: u1,
                ///  RxFIFO nonempty
                RXFLVL: u1,
                ///  Nonperiodic TxFIFO empty
                NPTXFE: u1,
                ///  Global IN nonperiodic NAK effective
                GINAKEFF: u1,
                ///  Global OUT NAK effective
                BOUTNAKEFF: u1,
                reserved10: u2,
                ///  Early suspend
                ESUSP: u1,
                ///  USB suspend
                USBSUSP: u1,
                ///  USB reset
                USBRST: u1,
                ///  Enumeration done
                ENUMDNE: u1,
                ///  Isochronous OUT packet dropped interrupt
                ISOODRP: u1,
                ///  End of periodic frame interrupt
                EOPF: u1,
                reserved18: u2,
                ///  IN endpoint interrupt
                IEPINT: u1,
                ///  OUT endpoint interrupt
                OEPINT: u1,
                ///  Incomplete isochronous IN transfer
                IISOIXFR: u1,
                ///  Incomplete periodic transfer
                PXFR_INCOMPISOOUT: u1,
                ///  Data fetch suspended
                DATAFSUSP: u1,
                reserved24: u1,
                ///  Host port interrupt
                HPRTINT: u1,
                ///  Host channels interrupt
                HCINT: u1,
                ///  Periodic TxFIFO empty
                PTXFE: u1,
                reserved28: u1,
                ///  Connector ID status change
                CIDSCHG: u1,
                ///  Disconnect detected interrupt
                DISCINT: u1,
                ///  Session request/new session detected interrupt
                SRQINT: u1,
                ///  Resume/remote wakeup detected interrupt
                WKUINT: u1,
            }),
            ///  OTG_HS interrupt mask register
            OTG_HS_GINTMSK: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Mode mismatch interrupt mask
                MMISM: u1,
                ///  OTG interrupt mask
                OTGINT: u1,
                ///  Start of frame mask
                SOFM: u1,
                ///  Receive FIFO nonempty mask
                RXFLVLM: u1,
                ///  Nonperiodic TxFIFO empty mask
                NPTXFEM: u1,
                ///  Global nonperiodic IN NAK effective mask
                GINAKEFFM: u1,
                ///  Global OUT NAK effective mask
                GONAKEFFM: u1,
                reserved10: u2,
                ///  Early suspend mask
                ESUSPM: u1,
                ///  USB suspend mask
                USBSUSPM: u1,
                ///  USB reset mask
                USBRST: u1,
                ///  Enumeration done mask
                ENUMDNEM: u1,
                ///  Isochronous OUT packet dropped interrupt mask
                ISOODRPM: u1,
                ///  End of periodic frame interrupt mask
                EOPFM: u1,
                reserved17: u1,
                ///  Endpoint mismatch interrupt mask
                EPMISM: u1,
                ///  IN endpoints interrupt mask
                IEPINT: u1,
                ///  OUT endpoints interrupt mask
                OEPINT: u1,
                ///  Incomplete isochronous IN transfer mask
                IISOIXFRM: u1,
                ///  Incomplete periodic transfer mask
                PXFRM_IISOOXFRM: u1,
                ///  Data fetch suspended mask
                FSUSPM: u1,
                reserved24: u1,
                ///  Host port interrupt mask
                PRTIM: u1,
                ///  Host channels interrupt mask
                HCIM: u1,
                ///  Periodic TxFIFO empty mask
                PTXFEM: u1,
                reserved28: u1,
                ///  Connector ID status change mask
                CIDSCHGM: u1,
                ///  Disconnect detected interrupt mask
                DISCINT: u1,
                ///  Session request/new session detected interrupt mask
                SRQIM: u1,
                ///  Resume/remote wakeup detected interrupt mask
                WUIM: u1,
            }),
            ///  OTG_HS Receive status debug read register (host mode)
            OTG_HS_GRXSTSR_Host: mmio.Mmio(packed struct(u32) {
                ///  Channel number
                CHNUM: u4,
                ///  Byte count
                BCNT: u11,
                ///  Data PID
                DPID: u2,
                ///  Packet status
                PKTSTS: u4,
                padding: u11,
            }),
            ///  OTG_HS status read and pop register (host mode)
            OTG_HS_GRXSTSP_Host: mmio.Mmio(packed struct(u32) {
                ///  Channel number
                CHNUM: u4,
                ///  Byte count
                BCNT: u11,
                ///  Data PID
                DPID: u2,
                ///  Packet status
                PKTSTS: u4,
                padding: u11,
            }),
            ///  OTG_HS Receive FIFO size register
            OTG_HS_GRXFSIZ: mmio.Mmio(packed struct(u32) {
                ///  RxFIFO depth
                RXFD: u16,
                padding: u16,
            }),
            ///  OTG_HS nonperiodic transmit FIFO size register (host mode)
            OTG_HS_GNPTXFSIZ_Host: mmio.Mmio(packed struct(u32) {
                ///  Nonperiodic transmit RAM start address
                NPTXFSA: u16,
                ///  Nonperiodic TxFIFO depth
                NPTXFD: u16,
            }),
            ///  OTG_HS nonperiodic transmit FIFO/queue status register
            OTG_HS_GNPTXSTS: mmio.Mmio(packed struct(u32) {
                ///  Nonperiodic TxFIFO space available
                NPTXFSAV: u16,
                ///  Nonperiodic transmit request queue space available
                NPTQXSAV: u8,
                ///  Top of the nonperiodic transmit request queue
                NPTXQTOP: u7,
                padding: u1,
            }),
            reserved56: [8]u8,
            ///  OTG_HS general core configuration register
            OTG_HS_GCCFG: mmio.Mmio(packed struct(u32) {
                reserved16: u16,
                ///  Power down
                PWRDWN: u1,
                ///  Enable I2C bus connection for the external I2C PHY interface
                I2CPADEN: u1,
                ///  Enable the VBUS sensing device
                VBUSASEN: u1,
                ///  Enable the VBUS sensing device
                VBUSBSEN: u1,
                ///  SOF output enable
                SOFOUTEN: u1,
                ///  VBUS sensing disable option
                NOVBUSSENS: u1,
                padding: u10,
            }),
            ///  OTG_HS core ID register
            OTG_HS_CID: mmio.Mmio(packed struct(u32) {
                ///  Product ID field
                PRODUCT_ID: u32,
            }),
            reserved256: [192]u8,
            ///  OTG_HS Host periodic transmit FIFO size register
            OTG_HS_HPTXFSIZ: mmio.Mmio(packed struct(u32) {
                ///  Host periodic TxFIFO start address
                PTXSA: u16,
                ///  Host periodic TxFIFO depth
                PTXFD: u16,
            }),
            ///  OTG_HS device IN endpoint transmit FIFO size register
            OTG_HS_DIEPTXF1: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFOx transmit RAM start address
                INEPTXSA: u16,
                ///  IN endpoint TxFIFO depth
                INEPTXFD: u16,
            }),
            ///  OTG_HS device IN endpoint transmit FIFO size register
            OTG_HS_DIEPTXF2: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFOx transmit RAM start address
                INEPTXSA: u16,
                ///  IN endpoint TxFIFO depth
                INEPTXFD: u16,
            }),
            reserved284: [16]u8,
            ///  OTG_HS device IN endpoint transmit FIFO size register
            OTG_HS_DIEPTXF3: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFOx transmit RAM start address
                INEPTXSA: u16,
                ///  IN endpoint TxFIFO depth
                INEPTXFD: u16,
            }),
            ///  OTG_HS device IN endpoint transmit FIFO size register
            OTG_HS_DIEPTXF4: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFOx transmit RAM start address
                INEPTXSA: u16,
                ///  IN endpoint TxFIFO depth
                INEPTXFD: u16,
            }),
            ///  OTG_HS device IN endpoint transmit FIFO size register
            OTG_HS_DIEPTXF5: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFOx transmit RAM start address
                INEPTXSA: u16,
                ///  IN endpoint TxFIFO depth
                INEPTXFD: u16,
            }),
            ///  OTG_HS device IN endpoint transmit FIFO size register
            OTG_HS_DIEPTXF6: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFOx transmit RAM start address
                INEPTXSA: u16,
                ///  IN endpoint TxFIFO depth
                INEPTXFD: u16,
            }),
            ///  OTG_HS device IN endpoint transmit FIFO size register
            OTG_HS_DIEPTXF7: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFOx transmit RAM start address
                INEPTXSA: u16,
                ///  IN endpoint TxFIFO depth
                INEPTXFD: u16,
            }),
        };

        ///  General purpose timers
        pub const TIM2 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) {
                ///  Counter enable
                CEN: u1,
                ///  Update disable
                UDIS: u1,
                ///  Update request source
                URS: u1,
                ///  One-pulse mode
                OPM: u1,
                ///  Direction
                DIR: u1,
                ///  Center-aligned mode selection
                CMS: u2,
                ///  Auto-reload preload enable
                ARPE: u1,
                ///  Clock division
                CKD: u2,
                padding: u22,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) {
                reserved3: u3,
                ///  Capture/compare DMA selection
                CCDS: u1,
                ///  Master mode selection
                MMS: u3,
                ///  TI1 selection
                TI1S: u1,
                padding: u24,
            }),
            ///  slave mode control register
            SMCR: mmio.Mmio(packed struct(u32) {
                ///  Slave mode selection
                SMS: u3,
                reserved4: u1,
                ///  Trigger selection
                TS: u3,
                ///  Master/Slave mode
                MSM: u1,
                ///  External trigger filter
                ETF: u4,
                ///  External trigger prescaler
                ETPS: u2,
                ///  External clock enable
                ECE: u1,
                ///  External trigger polarity
                ETP: u1,
                padding: u16,
            }),
            ///  DMA/Interrupt enable register
            DIER: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt enable
                UIE: u1,
                ///  Capture/Compare 1 interrupt enable
                CC1IE: u1,
                ///  Capture/Compare 2 interrupt enable
                CC2IE: u1,
                ///  Capture/Compare 3 interrupt enable
                CC3IE: u1,
                ///  Capture/Compare 4 interrupt enable
                CC4IE: u1,
                reserved6: u1,
                ///  Trigger interrupt enable
                TIE: u1,
                reserved8: u1,
                ///  Update DMA request enable
                UDE: u1,
                ///  Capture/Compare 1 DMA request enable
                CC1DE: u1,
                ///  Capture/Compare 2 DMA request enable
                CC2DE: u1,
                ///  Capture/Compare 3 DMA request enable
                CC3DE: u1,
                ///  Capture/Compare 4 DMA request enable
                CC4DE: u1,
                reserved14: u1,
                ///  Trigger DMA request enable
                TDE: u1,
                padding: u17,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt flag
                UIF: u1,
                ///  Capture/compare 1 interrupt flag
                CC1IF: u1,
                ///  Capture/Compare 2 interrupt flag
                CC2IF: u1,
                ///  Capture/Compare 3 interrupt flag
                CC3IF: u1,
                ///  Capture/Compare 4 interrupt flag
                CC4IF: u1,
                reserved6: u1,
                ///  Trigger interrupt flag
                TIF: u1,
                reserved9: u2,
                ///  Capture/Compare 1 overcapture flag
                CC1OF: u1,
                ///  Capture/compare 2 overcapture flag
                CC2OF: u1,
                ///  Capture/Compare 3 overcapture flag
                CC3OF: u1,
                ///  Capture/Compare 4 overcapture flag
                CC4OF: u1,
                padding: u19,
            }),
            ///  event generation register
            EGR: mmio.Mmio(packed struct(u32) {
                ///  Update generation
                UG: u1,
                ///  Capture/compare 1 generation
                CC1G: u1,
                ///  Capture/compare 2 generation
                CC2G: u1,
                ///  Capture/compare 3 generation
                CC3G: u1,
                ///  Capture/compare 4 generation
                CC4G: u1,
                reserved6: u1,
                ///  Trigger generation
                TG: u1,
                padding: u25,
            }),
            ///  capture/compare mode register 1 (output mode)
            CCMR1_Output: mmio.Mmio(packed struct(u32) {
                ///  CC1S
                CC1S: u2,
                ///  OC1FE
                OC1FE: u1,
                ///  OC1PE
                OC1PE: u1,
                ///  OC1M
                OC1M: u3,
                ///  OC1CE
                OC1CE: u1,
                ///  CC2S
                CC2S: u2,
                ///  OC2FE
                OC2FE: u1,
                ///  OC2PE
                OC2PE: u1,
                ///  OC2M
                OC2M: u3,
                ///  OC2CE
                OC2CE: u1,
                padding: u16,
            }),
            ///  capture/compare mode register 2 (output mode)
            CCMR2_Output: mmio.Mmio(packed struct(u32) {
                ///  CC3S
                CC3S: u2,
                ///  OC3FE
                OC3FE: u1,
                ///  OC3PE
                OC3PE: u1,
                ///  OC3M
                OC3M: u3,
                ///  OC3CE
                OC3CE: u1,
                ///  CC4S
                CC4S: u2,
                ///  OC4FE
                OC4FE: u1,
                ///  OC4PE
                OC4PE: u1,
                ///  OC4M
                OC4M: u3,
                ///  O24CE
                O24CE: u1,
                padding: u16,
            }),
            ///  capture/compare enable register
            CCER: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 output enable
                CC1E: u1,
                ///  Capture/Compare 1 output Polarity
                CC1P: u1,
                reserved3: u1,
                ///  Capture/Compare 1 output Polarity
                CC1NP: u1,
                ///  Capture/Compare 2 output enable
                CC2E: u1,
                ///  Capture/Compare 2 output Polarity
                CC2P: u1,
                reserved7: u1,
                ///  Capture/Compare 2 output Polarity
                CC2NP: u1,
                ///  Capture/Compare 3 output enable
                CC3E: u1,
                ///  Capture/Compare 3 output Polarity
                CC3P: u1,
                reserved11: u1,
                ///  Capture/Compare 3 output Polarity
                CC3NP: u1,
                ///  Capture/Compare 4 output enable
                CC4E: u1,
                ///  Capture/Compare 3 output Polarity
                CC4P: u1,
                reserved15: u1,
                ///  Capture/Compare 4 output Polarity
                CC4NP: u1,
                padding: u16,
            }),
            ///  counter
            CNT: mmio.Mmio(packed struct(u32) {
                ///  Low counter value
                CNT_L: u16,
                ///  High counter value
                CNT_H: u16,
            }),
            ///  prescaler
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value
                PSC: u16,
                padding: u16,
            }),
            ///  auto-reload register
            ARR: mmio.Mmio(packed struct(u32) {
                ///  Low Auto-reload value
                ARR_L: u16,
                ///  High Auto-reload value
                ARR_H: u16,
            }),
            reserved52: [4]u8,
            ///  capture/compare register 1
            CCR1: mmio.Mmio(packed struct(u32) {
                ///  Low Capture/Compare 1 value
                CCR1_L: u16,
                ///  High Capture/Compare 1 value
                CCR1_H: u16,
            }),
            ///  capture/compare register 2
            CCR2: mmio.Mmio(packed struct(u32) {
                ///  Low Capture/Compare 2 value
                CCR2_L: u16,
                ///  High Capture/Compare 2 value
                CCR2_H: u16,
            }),
            ///  capture/compare register 3
            CCR3: mmio.Mmio(packed struct(u32) {
                ///  Low Capture/Compare value
                CCR3_L: u16,
                ///  High Capture/Compare value
                CCR3_H: u16,
            }),
            ///  capture/compare register 4
            CCR4: mmio.Mmio(packed struct(u32) {
                ///  Low Capture/Compare value
                CCR4_L: u16,
                ///  High Capture/Compare value
                CCR4_H: u16,
            }),
            reserved72: [4]u8,
            ///  DMA control register
            DCR: mmio.Mmio(packed struct(u32) {
                ///  DMA base address
                DBA: u5,
                reserved8: u3,
                ///  DMA burst length
                DBL: u5,
                padding: u19,
            }),
            ///  DMA address for full transfer
            DMAR: mmio.Mmio(packed struct(u32) {
                ///  DMA register for burst accesses
                DMAB: u16,
                padding: u16,
            }),
            ///  TIM5 option register
            OR: mmio.Mmio(packed struct(u32) {
                reserved10: u10,
                ///  Timer Input 4 remap
                ITR1_RMP: u2,
                padding: u20,
            }),
        };

        ///  General purpose timers
        pub const TIM3 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) {
                ///  Counter enable
                CEN: u1,
                ///  Update disable
                UDIS: u1,
                ///  Update request source
                URS: u1,
                ///  One-pulse mode
                OPM: u1,
                ///  Direction
                DIR: u1,
                ///  Center-aligned mode selection
                CMS: u2,
                ///  Auto-reload preload enable
                ARPE: u1,
                ///  Clock division
                CKD: u2,
                padding: u22,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) {
                reserved3: u3,
                ///  Capture/compare DMA selection
                CCDS: u1,
                ///  Master mode selection
                MMS: u3,
                ///  TI1 selection
                TI1S: u1,
                padding: u24,
            }),
            ///  slave mode control register
            SMCR: mmio.Mmio(packed struct(u32) {
                ///  Slave mode selection
                SMS: u3,
                reserved4: u1,
                ///  Trigger selection
                TS: u3,
                ///  Master/Slave mode
                MSM: u1,
                ///  External trigger filter
                ETF: u4,
                ///  External trigger prescaler
                ETPS: u2,
                ///  External clock enable
                ECE: u1,
                ///  External trigger polarity
                ETP: u1,
                padding: u16,
            }),
            ///  DMA/Interrupt enable register
            DIER: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt enable
                UIE: u1,
                ///  Capture/Compare 1 interrupt enable
                CC1IE: u1,
                ///  Capture/Compare 2 interrupt enable
                CC2IE: u1,
                ///  Capture/Compare 3 interrupt enable
                CC3IE: u1,
                ///  Capture/Compare 4 interrupt enable
                CC4IE: u1,
                reserved6: u1,
                ///  Trigger interrupt enable
                TIE: u1,
                reserved8: u1,
                ///  Update DMA request enable
                UDE: u1,
                ///  Capture/Compare 1 DMA request enable
                CC1DE: u1,
                ///  Capture/Compare 2 DMA request enable
                CC2DE: u1,
                ///  Capture/Compare 3 DMA request enable
                CC3DE: u1,
                ///  Capture/Compare 4 DMA request enable
                CC4DE: u1,
                reserved14: u1,
                ///  Trigger DMA request enable
                TDE: u1,
                padding: u17,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt flag
                UIF: u1,
                ///  Capture/compare 1 interrupt flag
                CC1IF: u1,
                ///  Capture/Compare 2 interrupt flag
                CC2IF: u1,
                ///  Capture/Compare 3 interrupt flag
                CC3IF: u1,
                ///  Capture/Compare 4 interrupt flag
                CC4IF: u1,
                reserved6: u1,
                ///  Trigger interrupt flag
                TIF: u1,
                reserved9: u2,
                ///  Capture/Compare 1 overcapture flag
                CC1OF: u1,
                ///  Capture/compare 2 overcapture flag
                CC2OF: u1,
                ///  Capture/Compare 3 overcapture flag
                CC3OF: u1,
                ///  Capture/Compare 4 overcapture flag
                CC4OF: u1,
                padding: u19,
            }),
            ///  event generation register
            EGR: mmio.Mmio(packed struct(u32) {
                ///  Update generation
                UG: u1,
                ///  Capture/compare 1 generation
                CC1G: u1,
                ///  Capture/compare 2 generation
                CC2G: u1,
                ///  Capture/compare 3 generation
                CC3G: u1,
                ///  Capture/compare 4 generation
                CC4G: u1,
                reserved6: u1,
                ///  Trigger generation
                TG: u1,
                padding: u25,
            }),
            ///  capture/compare mode register 1 (output mode)
            CCMR1_Output: mmio.Mmio(packed struct(u32) {
                ///  CC1S
                CC1S: u2,
                ///  OC1FE
                OC1FE: u1,
                ///  OC1PE
                OC1PE: u1,
                ///  OC1M
                OC1M: u3,
                ///  OC1CE
                OC1CE: u1,
                ///  CC2S
                CC2S: u2,
                ///  OC2FE
                OC2FE: u1,
                ///  OC2PE
                OC2PE: u1,
                ///  OC2M
                OC2M: u3,
                ///  OC2CE
                OC2CE: u1,
                padding: u16,
            }),
            ///  capture/compare mode register 2 (output mode)
            CCMR2_Output: mmio.Mmio(packed struct(u32) {
                ///  CC3S
                CC3S: u2,
                ///  OC3FE
                OC3FE: u1,
                ///  OC3PE
                OC3PE: u1,
                ///  OC3M
                OC3M: u3,
                ///  OC3CE
                OC3CE: u1,
                ///  CC4S
                CC4S: u2,
                ///  OC4FE
                OC4FE: u1,
                ///  OC4PE
                OC4PE: u1,
                ///  OC4M
                OC4M: u3,
                ///  O24CE
                O24CE: u1,
                padding: u16,
            }),
            ///  capture/compare enable register
            CCER: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 output enable
                CC1E: u1,
                ///  Capture/Compare 1 output Polarity
                CC1P: u1,
                reserved3: u1,
                ///  Capture/Compare 1 output Polarity
                CC1NP: u1,
                ///  Capture/Compare 2 output enable
                CC2E: u1,
                ///  Capture/Compare 2 output Polarity
                CC2P: u1,
                reserved7: u1,
                ///  Capture/Compare 2 output Polarity
                CC2NP: u1,
                ///  Capture/Compare 3 output enable
                CC3E: u1,
                ///  Capture/Compare 3 output Polarity
                CC3P: u1,
                reserved11: u1,
                ///  Capture/Compare 3 output Polarity
                CC3NP: u1,
                ///  Capture/Compare 4 output enable
                CC4E: u1,
                ///  Capture/Compare 3 output Polarity
                CC4P: u1,
                reserved15: u1,
                ///  Capture/Compare 4 output Polarity
                CC4NP: u1,
                padding: u16,
            }),
            ///  counter
            CNT: mmio.Mmio(packed struct(u32) {
                ///  Low counter value
                CNT_L: u16,
                ///  High counter value
                CNT_H: u16,
            }),
            ///  prescaler
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value
                PSC: u16,
                padding: u16,
            }),
            ///  auto-reload register
            ARR: mmio.Mmio(packed struct(u32) {
                ///  Low Auto-reload value
                ARR_L: u16,
                ///  High Auto-reload value
                ARR_H: u16,
            }),
            reserved52: [4]u8,
            ///  capture/compare register 1
            CCR1: mmio.Mmio(packed struct(u32) {
                ///  Low Capture/Compare 1 value
                CCR1_L: u16,
                ///  High Capture/Compare 1 value
                CCR1_H: u16,
            }),
            ///  capture/compare register 2
            CCR2: mmio.Mmio(packed struct(u32) {
                ///  Low Capture/Compare 2 value
                CCR2_L: u16,
                ///  High Capture/Compare 2 value
                CCR2_H: u16,
            }),
            ///  capture/compare register 3
            CCR3: mmio.Mmio(packed struct(u32) {
                ///  Low Capture/Compare value
                CCR3_L: u16,
                ///  High Capture/Compare value
                CCR3_H: u16,
            }),
            ///  capture/compare register 4
            CCR4: mmio.Mmio(packed struct(u32) {
                ///  Low Capture/Compare value
                CCR4_L: u16,
                ///  High Capture/Compare value
                CCR4_H: u16,
            }),
            reserved72: [4]u8,
            ///  DMA control register
            DCR: mmio.Mmio(packed struct(u32) {
                ///  DMA base address
                DBA: u5,
                reserved8: u3,
                ///  DMA burst length
                DBL: u5,
                padding: u19,
            }),
            ///  DMA address for full transfer
            DMAR: mmio.Mmio(packed struct(u32) {
                ///  DMA register for burst accesses
                DMAB: u16,
                padding: u16,
            }),
        };

        ///  External interrupt/event controller
        pub const EXTI = extern struct {
            ///  Interrupt mask register (EXTI_IMR)
            IMR: mmio.Mmio(packed struct(u32) {
                ///  Interrupt Mask on line 0
                MR0: u1,
                ///  Interrupt Mask on line 1
                MR1: u1,
                ///  Interrupt Mask on line 2
                MR2: u1,
                ///  Interrupt Mask on line 3
                MR3: u1,
                ///  Interrupt Mask on line 4
                MR4: u1,
                ///  Interrupt Mask on line 5
                MR5: u1,
                ///  Interrupt Mask on line 6
                MR6: u1,
                ///  Interrupt Mask on line 7
                MR7: u1,
                ///  Interrupt Mask on line 8
                MR8: u1,
                ///  Interrupt Mask on line 9
                MR9: u1,
                ///  Interrupt Mask on line 10
                MR10: u1,
                ///  Interrupt Mask on line 11
                MR11: u1,
                ///  Interrupt Mask on line 12
                MR12: u1,
                ///  Interrupt Mask on line 13
                MR13: u1,
                ///  Interrupt Mask on line 14
                MR14: u1,
                ///  Interrupt Mask on line 15
                MR15: u1,
                ///  Interrupt Mask on line 16
                MR16: u1,
                ///  Interrupt Mask on line 17
                MR17: u1,
                ///  Interrupt Mask on line 18
                MR18: u1,
                ///  Interrupt Mask on line 19
                MR19: u1,
                ///  Interrupt Mask on line 20
                MR20: u1,
                ///  Interrupt Mask on line 21
                MR21: u1,
                ///  Interrupt Mask on line 22
                MR22: u1,
                padding: u9,
            }),
            ///  Event mask register (EXTI_EMR)
            EMR: mmio.Mmio(packed struct(u32) {
                ///  Event Mask on line 0
                MR0: u1,
                ///  Event Mask on line 1
                MR1: u1,
                ///  Event Mask on line 2
                MR2: u1,
                ///  Event Mask on line 3
                MR3: u1,
                ///  Event Mask on line 4
                MR4: u1,
                ///  Event Mask on line 5
                MR5: u1,
                ///  Event Mask on line 6
                MR6: u1,
                ///  Event Mask on line 7
                MR7: u1,
                ///  Event Mask on line 8
                MR8: u1,
                ///  Event Mask on line 9
                MR9: u1,
                ///  Event Mask on line 10
                MR10: u1,
                ///  Event Mask on line 11
                MR11: u1,
                ///  Event Mask on line 12
                MR12: u1,
                ///  Event Mask on line 13
                MR13: u1,
                ///  Event Mask on line 14
                MR14: u1,
                ///  Event Mask on line 15
                MR15: u1,
                ///  Event Mask on line 16
                MR16: u1,
                ///  Event Mask on line 17
                MR17: u1,
                ///  Event Mask on line 18
                MR18: u1,
                ///  Event Mask on line 19
                MR19: u1,
                ///  Event Mask on line 20
                MR20: u1,
                ///  Event Mask on line 21
                MR21: u1,
                ///  Event Mask on line 22
                MR22: u1,
                padding: u9,
            }),
            ///  Rising Trigger selection register (EXTI_RTSR)
            RTSR: mmio.Mmio(packed struct(u32) {
                ///  Rising trigger event configuration of line 0
                TR0: u1,
                ///  Rising trigger event configuration of line 1
                TR1: u1,
                ///  Rising trigger event configuration of line 2
                TR2: u1,
                ///  Rising trigger event configuration of line 3
                TR3: u1,
                ///  Rising trigger event configuration of line 4
                TR4: u1,
                ///  Rising trigger event configuration of line 5
                TR5: u1,
                ///  Rising trigger event configuration of line 6
                TR6: u1,
                ///  Rising trigger event configuration of line 7
                TR7: u1,
                ///  Rising trigger event configuration of line 8
                TR8: u1,
                ///  Rising trigger event configuration of line 9
                TR9: u1,
                ///  Rising trigger event configuration of line 10
                TR10: u1,
                ///  Rising trigger event configuration of line 11
                TR11: u1,
                ///  Rising trigger event configuration of line 12
                TR12: u1,
                ///  Rising trigger event configuration of line 13
                TR13: u1,
                ///  Rising trigger event configuration of line 14
                TR14: u1,
                ///  Rising trigger event configuration of line 15
                TR15: u1,
                ///  Rising trigger event configuration of line 16
                TR16: u1,
                ///  Rising trigger event configuration of line 17
                TR17: u1,
                ///  Rising trigger event configuration of line 18
                TR18: u1,
                ///  Rising trigger event configuration of line 19
                TR19: u1,
                ///  Rising trigger event configuration of line 20
                TR20: u1,
                ///  Rising trigger event configuration of line 21
                TR21: u1,
                ///  Rising trigger event configuration of line 22
                TR22: u1,
                padding: u9,
            }),
            ///  Falling Trigger selection register (EXTI_FTSR)
            FTSR: mmio.Mmio(packed struct(u32) {
                ///  Falling trigger event configuration of line 0
                TR0: u1,
                ///  Falling trigger event configuration of line 1
                TR1: u1,
                ///  Falling trigger event configuration of line 2
                TR2: u1,
                ///  Falling trigger event configuration of line 3
                TR3: u1,
                ///  Falling trigger event configuration of line 4
                TR4: u1,
                ///  Falling trigger event configuration of line 5
                TR5: u1,
                ///  Falling trigger event configuration of line 6
                TR6: u1,
                ///  Falling trigger event configuration of line 7
                TR7: u1,
                ///  Falling trigger event configuration of line 8
                TR8: u1,
                ///  Falling trigger event configuration of line 9
                TR9: u1,
                ///  Falling trigger event configuration of line 10
                TR10: u1,
                ///  Falling trigger event configuration of line 11
                TR11: u1,
                ///  Falling trigger event configuration of line 12
                TR12: u1,
                ///  Falling trigger event configuration of line 13
                TR13: u1,
                ///  Falling trigger event configuration of line 14
                TR14: u1,
                ///  Falling trigger event configuration of line 15
                TR15: u1,
                ///  Falling trigger event configuration of line 16
                TR16: u1,
                ///  Falling trigger event configuration of line 17
                TR17: u1,
                ///  Falling trigger event configuration of line 18
                TR18: u1,
                ///  Falling trigger event configuration of line 19
                TR19: u1,
                ///  Falling trigger event configuration of line 20
                TR20: u1,
                ///  Falling trigger event configuration of line 21
                TR21: u1,
                ///  Falling trigger event configuration of line 22
                TR22: u1,
                padding: u9,
            }),
            ///  Software interrupt event register (EXTI_SWIER)
            SWIER: mmio.Mmio(packed struct(u32) {
                ///  Software Interrupt on line 0
                SWIER0: u1,
                ///  Software Interrupt on line 1
                SWIER1: u1,
                ///  Software Interrupt on line 2
                SWIER2: u1,
                ///  Software Interrupt on line 3
                SWIER3: u1,
                ///  Software Interrupt on line 4
                SWIER4: u1,
                ///  Software Interrupt on line 5
                SWIER5: u1,
                ///  Software Interrupt on line 6
                SWIER6: u1,
                ///  Software Interrupt on line 7
                SWIER7: u1,
                ///  Software Interrupt on line 8
                SWIER8: u1,
                ///  Software Interrupt on line 9
                SWIER9: u1,
                ///  Software Interrupt on line 10
                SWIER10: u1,
                ///  Software Interrupt on line 11
                SWIER11: u1,
                ///  Software Interrupt on line 12
                SWIER12: u1,
                ///  Software Interrupt on line 13
                SWIER13: u1,
                ///  Software Interrupt on line 14
                SWIER14: u1,
                ///  Software Interrupt on line 15
                SWIER15: u1,
                ///  Software Interrupt on line 16
                SWIER16: u1,
                ///  Software Interrupt on line 17
                SWIER17: u1,
                ///  Software Interrupt on line 18
                SWIER18: u1,
                ///  Software Interrupt on line 19
                SWIER19: u1,
                ///  Software Interrupt on line 20
                SWIER20: u1,
                ///  Software Interrupt on line 21
                SWIER21: u1,
                ///  Software Interrupt on line 22
                SWIER22: u1,
                padding: u9,
            }),
            ///  Pending register (EXTI_PR)
            PR: mmio.Mmio(packed struct(u32) {
                ///  Pending bit 0
                PR0: u1,
                ///  Pending bit 1
                PR1: u1,
                ///  Pending bit 2
                PR2: u1,
                ///  Pending bit 3
                PR3: u1,
                ///  Pending bit 4
                PR4: u1,
                ///  Pending bit 5
                PR5: u1,
                ///  Pending bit 6
                PR6: u1,
                ///  Pending bit 7
                PR7: u1,
                ///  Pending bit 8
                PR8: u1,
                ///  Pending bit 9
                PR9: u1,
                ///  Pending bit 10
                PR10: u1,
                ///  Pending bit 11
                PR11: u1,
                ///  Pending bit 12
                PR12: u1,
                ///  Pending bit 13
                PR13: u1,
                ///  Pending bit 14
                PR14: u1,
                ///  Pending bit 15
                PR15: u1,
                ///  Pending bit 16
                PR16: u1,
                ///  Pending bit 17
                PR17: u1,
                ///  Pending bit 18
                PR18: u1,
                ///  Pending bit 19
                PR19: u1,
                ///  Pending bit 20
                PR20: u1,
                ///  Pending bit 21
                PR21: u1,
                ///  Pending bit 22
                PR22: u1,
                padding: u9,
            }),
        };

        ///  General-purpose-timers
        pub const TIM5 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) {
                ///  Counter enable
                CEN: u1,
                ///  Update disable
                UDIS: u1,
                ///  Update request source
                URS: u1,
                ///  One-pulse mode
                OPM: u1,
                ///  Direction
                DIR: u1,
                ///  Center-aligned mode selection
                CMS: u2,
                ///  Auto-reload preload enable
                ARPE: u1,
                ///  Clock division
                CKD: u2,
                padding: u22,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) {
                reserved3: u3,
                ///  Capture/compare DMA selection
                CCDS: u1,
                ///  Master mode selection
                MMS: u3,
                ///  TI1 selection
                TI1S: u1,
                padding: u24,
            }),
            ///  slave mode control register
            SMCR: mmio.Mmio(packed struct(u32) {
                ///  Slave mode selection
                SMS: u3,
                reserved4: u1,
                ///  Trigger selection
                TS: u3,
                ///  Master/Slave mode
                MSM: u1,
                ///  External trigger filter
                ETF: u4,
                ///  External trigger prescaler
                ETPS: u2,
                ///  External clock enable
                ECE: u1,
                ///  External trigger polarity
                ETP: u1,
                padding: u16,
            }),
            ///  DMA/Interrupt enable register
            DIER: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt enable
                UIE: u1,
                ///  Capture/Compare 1 interrupt enable
                CC1IE: u1,
                ///  Capture/Compare 2 interrupt enable
                CC2IE: u1,
                ///  Capture/Compare 3 interrupt enable
                CC3IE: u1,
                ///  Capture/Compare 4 interrupt enable
                CC4IE: u1,
                reserved6: u1,
                ///  Trigger interrupt enable
                TIE: u1,
                reserved8: u1,
                ///  Update DMA request enable
                UDE: u1,
                ///  Capture/Compare 1 DMA request enable
                CC1DE: u1,
                ///  Capture/Compare 2 DMA request enable
                CC2DE: u1,
                ///  Capture/Compare 3 DMA request enable
                CC3DE: u1,
                ///  Capture/Compare 4 DMA request enable
                CC4DE: u1,
                reserved14: u1,
                ///  Trigger DMA request enable
                TDE: u1,
                padding: u17,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt flag
                UIF: u1,
                ///  Capture/compare 1 interrupt flag
                CC1IF: u1,
                ///  Capture/Compare 2 interrupt flag
                CC2IF: u1,
                ///  Capture/Compare 3 interrupt flag
                CC3IF: u1,
                ///  Capture/Compare 4 interrupt flag
                CC4IF: u1,
                reserved6: u1,
                ///  Trigger interrupt flag
                TIF: u1,
                reserved9: u2,
                ///  Capture/Compare 1 overcapture flag
                CC1OF: u1,
                ///  Capture/compare 2 overcapture flag
                CC2OF: u1,
                ///  Capture/Compare 3 overcapture flag
                CC3OF: u1,
                ///  Capture/Compare 4 overcapture flag
                CC4OF: u1,
                padding: u19,
            }),
            ///  event generation register
            EGR: mmio.Mmio(packed struct(u32) {
                ///  Update generation
                UG: u1,
                ///  Capture/compare 1 generation
                CC1G: u1,
                ///  Capture/compare 2 generation
                CC2G: u1,
                ///  Capture/compare 3 generation
                CC3G: u1,
                ///  Capture/compare 4 generation
                CC4G: u1,
                reserved6: u1,
                ///  Trigger generation
                TG: u1,
                padding: u25,
            }),
            ///  capture/compare mode register 1 (output mode)
            CCMR1_Output: mmio.Mmio(packed struct(u32) {
                ///  CC1S
                CC1S: u2,
                ///  OC1FE
                OC1FE: u1,
                ///  OC1PE
                OC1PE: u1,
                ///  OC1M
                OC1M: u3,
                ///  OC1CE
                OC1CE: u1,
                ///  CC2S
                CC2S: u2,
                ///  OC2FE
                OC2FE: u1,
                ///  OC2PE
                OC2PE: u1,
                ///  OC2M
                OC2M: u3,
                ///  OC2CE
                OC2CE: u1,
                padding: u16,
            }),
            ///  capture/compare mode register 2 (output mode)
            CCMR2_Output: mmio.Mmio(packed struct(u32) {
                ///  CC3S
                CC3S: u2,
                ///  OC3FE
                OC3FE: u1,
                ///  OC3PE
                OC3PE: u1,
                ///  OC3M
                OC3M: u3,
                ///  OC3CE
                OC3CE: u1,
                ///  CC4S
                CC4S: u2,
                ///  OC4FE
                OC4FE: u1,
                ///  OC4PE
                OC4PE: u1,
                ///  OC4M
                OC4M: u3,
                ///  O24CE
                O24CE: u1,
                padding: u16,
            }),
            ///  capture/compare enable register
            CCER: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 output enable
                CC1E: u1,
                ///  Capture/Compare 1 output Polarity
                CC1P: u1,
                reserved3: u1,
                ///  Capture/Compare 1 output Polarity
                CC1NP: u1,
                ///  Capture/Compare 2 output enable
                CC2E: u1,
                ///  Capture/Compare 2 output Polarity
                CC2P: u1,
                reserved7: u1,
                ///  Capture/Compare 2 output Polarity
                CC2NP: u1,
                ///  Capture/Compare 3 output enable
                CC3E: u1,
                ///  Capture/Compare 3 output Polarity
                CC3P: u1,
                reserved11: u1,
                ///  Capture/Compare 3 output Polarity
                CC3NP: u1,
                ///  Capture/Compare 4 output enable
                CC4E: u1,
                ///  Capture/Compare 3 output Polarity
                CC4P: u1,
                reserved15: u1,
                ///  Capture/Compare 4 output Polarity
                CC4NP: u1,
                padding: u16,
            }),
            ///  counter
            CNT: mmio.Mmio(packed struct(u32) {
                ///  Low counter value
                CNT_L: u16,
                ///  High counter value
                CNT_H: u16,
            }),
            ///  prescaler
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value
                PSC: u16,
                padding: u16,
            }),
            ///  auto-reload register
            ARR: mmio.Mmio(packed struct(u32) {
                ///  Low Auto-reload value
                ARR_L: u16,
                ///  High Auto-reload value
                ARR_H: u16,
            }),
            reserved52: [4]u8,
            ///  capture/compare register 1
            CCR1: mmio.Mmio(packed struct(u32) {
                ///  Low Capture/Compare 1 value
                CCR1_L: u16,
                ///  High Capture/Compare 1 value
                CCR1_H: u16,
            }),
            ///  capture/compare register 2
            CCR2: mmio.Mmio(packed struct(u32) {
                ///  Low Capture/Compare 2 value
                CCR2_L: u16,
                ///  High Capture/Compare 2 value
                CCR2_H: u16,
            }),
            ///  capture/compare register 3
            CCR3: mmio.Mmio(packed struct(u32) {
                ///  Low Capture/Compare value
                CCR3_L: u16,
                ///  High Capture/Compare value
                CCR3_H: u16,
            }),
            ///  capture/compare register 4
            CCR4: mmio.Mmio(packed struct(u32) {
                ///  Low Capture/Compare value
                CCR4_L: u16,
                ///  High Capture/Compare value
                CCR4_H: u16,
            }),
            reserved72: [4]u8,
            ///  DMA control register
            DCR: mmio.Mmio(packed struct(u32) {
                ///  DMA base address
                DBA: u5,
                reserved8: u3,
                ///  DMA burst length
                DBL: u5,
                padding: u19,
            }),
            ///  DMA address for full transfer
            DMAR: mmio.Mmio(packed struct(u32) {
                ///  DMA register for burst accesses
                DMAB: u16,
                padding: u16,
            }),
            ///  TIM5 option register
            OR: mmio.Mmio(packed struct(u32) {
                reserved6: u6,
                ///  Timer Input 4 remap
                IT4_RMP: u2,
                padding: u24,
            }),
        };

        ///  General purpose timers
        pub const TIM9 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) {
                ///  Counter enable
                CEN: u1,
                ///  Update disable
                UDIS: u1,
                ///  Update request source
                URS: u1,
                ///  One-pulse mode
                OPM: u1,
                reserved7: u3,
                ///  Auto-reload preload enable
                ARPE: u1,
                ///  Clock division
                CKD: u2,
                padding: u22,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) {
                reserved4: u4,
                ///  Master mode selection
                MMS: u3,
                padding: u25,
            }),
            ///  slave mode control register
            SMCR: mmio.Mmio(packed struct(u32) {
                ///  Slave mode selection
                SMS: u3,
                reserved4: u1,
                ///  Trigger selection
                TS: u3,
                ///  Master/Slave mode
                MSM: u1,
                padding: u24,
            }),
            ///  DMA/Interrupt enable register
            DIER: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt enable
                UIE: u1,
                ///  Capture/Compare 1 interrupt enable
                CC1IE: u1,
                ///  Capture/Compare 2 interrupt enable
                CC2IE: u1,
                reserved6: u3,
                ///  Trigger interrupt enable
                TIE: u1,
                padding: u25,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt flag
                UIF: u1,
                ///  Capture/compare 1 interrupt flag
                CC1IF: u1,
                ///  Capture/Compare 2 interrupt flag
                CC2IF: u1,
                reserved6: u3,
                ///  Trigger interrupt flag
                TIF: u1,
                reserved9: u2,
                ///  Capture/Compare 1 overcapture flag
                CC1OF: u1,
                ///  Capture/compare 2 overcapture flag
                CC2OF: u1,
                padding: u21,
            }),
            ///  event generation register
            EGR: mmio.Mmio(packed struct(u32) {
                ///  Update generation
                UG: u1,
                ///  Capture/compare 1 generation
                CC1G: u1,
                ///  Capture/compare 2 generation
                CC2G: u1,
                reserved6: u3,
                ///  Trigger generation
                TG: u1,
                padding: u25,
            }),
            ///  capture/compare mode register 1 (output mode)
            CCMR1_Output: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 selection
                CC1S: u2,
                ///  Output Compare 1 fast enable
                OC1FE: u1,
                ///  Output Compare 1 preload enable
                OC1PE: u1,
                ///  Output Compare 1 mode
                OC1M: u3,
                reserved8: u1,
                ///  Capture/Compare 2 selection
                CC2S: u2,
                ///  Output Compare 2 fast enable
                OC2FE: u1,
                ///  Output Compare 2 preload enable
                OC2PE: u1,
                ///  Output Compare 2 mode
                OC2M: u3,
                padding: u17,
            }),
            reserved32: [4]u8,
            ///  capture/compare enable register
            CCER: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 output enable
                CC1E: u1,
                ///  Capture/Compare 1 output Polarity
                CC1P: u1,
                reserved3: u1,
                ///  Capture/Compare 1 output Polarity
                CC1NP: u1,
                ///  Capture/Compare 2 output enable
                CC2E: u1,
                ///  Capture/Compare 2 output Polarity
                CC2P: u1,
                reserved7: u1,
                ///  Capture/Compare 2 output Polarity
                CC2NP: u1,
                padding: u24,
            }),
            ///  counter
            CNT: mmio.Mmio(packed struct(u32) {
                ///  counter value
                CNT: u16,
                padding: u16,
            }),
            ///  prescaler
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value
                PSC: u16,
                padding: u16,
            }),
            ///  auto-reload register
            ARR: mmio.Mmio(packed struct(u32) {
                ///  Auto-reload value
                ARR: u16,
                padding: u16,
            }),
            reserved52: [4]u8,
            ///  capture/compare register 1
            CCR1: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 value
                CCR1: u16,
                padding: u16,
            }),
            ///  capture/compare register 2
            CCR2: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 2 value
                CCR2: u16,
                padding: u16,
            }),
        };

        ///  FLASH
        pub const FLASH = extern struct {
            ///  Flash access control register
            ACR: mmio.Mmio(packed struct(u32) {
                ///  Latency
                LATENCY: u3,
                reserved8: u5,
                ///  Prefetch enable
                PRFTEN: u1,
                ///  Instruction cache enable
                ICEN: u1,
                ///  Data cache enable
                DCEN: u1,
                ///  Instruction cache reset
                ICRST: u1,
                ///  Data cache reset
                DCRST: u1,
                padding: u19,
            }),
            ///  Flash key register
            KEYR: mmio.Mmio(packed struct(u32) {
                ///  FPEC key
                KEY: u32,
            }),
            ///  Flash option key register
            OPTKEYR: mmio.Mmio(packed struct(u32) {
                ///  Option byte key
                OPTKEY: u32,
            }),
            ///  Status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  End of operation
                EOP: u1,
                ///  Operation error
                OPERR: u1,
                reserved4: u2,
                ///  Write protection error
                WRPERR: u1,
                ///  Programming alignment error
                PGAERR: u1,
                ///  Programming parallelism error
                PGPERR: u1,
                ///  Programming sequence error
                PGSERR: u1,
                ///  Read Protection Error
                RDERR: u1,
                reserved16: u7,
                ///  Busy
                BSY: u1,
                padding: u15,
            }),
            ///  Control register
            CR: mmio.Mmio(packed struct(u32) {
                ///  Programming
                PG: u1,
                ///  Sector Erase
                SER: u1,
                ///  Mass Erase of sectors 0 to 11
                MER: u1,
                ///  Sector number
                SNB: u4,
                reserved8: u1,
                ///  Program size
                PSIZE: u2,
                reserved16: u6,
                ///  Start
                STRT: u1,
                reserved24: u7,
                ///  End of operation interrupt enable
                EOPIE: u1,
                ///  Error interrupt enable
                ERRIE: u1,
                reserved31: u5,
                ///  Lock
                LOCK: u1,
            }),
            ///  Flash option control register
            OPTCR: mmio.Mmio(packed struct(u32) {
                ///  Option lock
                OPTLOCK: u1,
                ///  Option start
                OPTSTRT: u1,
                ///  BOR reset Level
                BOR_LEV: u2,
                reserved5: u1,
                ///  WDG_SW User option bytes
                WDG_SW: u1,
                ///  nRST_STOP User option bytes
                nRST_STOP: u1,
                ///  nRST_STDBY User option bytes
                nRST_STDBY: u1,
                ///  Read protect
                RDP: u8,
                ///  Not write protect
                nWRP: u8,
                reserved31: u7,
                ///  Selection of Protection Mode of nWPRi bits
                SPRMOD: u1,
            }),
        };

        ///  General-purpose-timers
        pub const TIM10 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) {
                ///  Counter enable
                CEN: u1,
                ///  Update disable
                UDIS: u1,
                ///  Update request source
                URS: u1,
                reserved7: u4,
                ///  Auto-reload preload enable
                ARPE: u1,
                ///  Clock division
                CKD: u2,
                padding: u22,
            }),
            reserved12: [8]u8,
            ///  DMA/Interrupt enable register
            DIER: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt enable
                UIE: u1,
                ///  Capture/Compare 1 interrupt enable
                CC1IE: u1,
                padding: u30,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt flag
                UIF: u1,
                ///  Capture/compare 1 interrupt flag
                CC1IF: u1,
                reserved9: u7,
                ///  Capture/Compare 1 overcapture flag
                CC1OF: u1,
                padding: u22,
            }),
            ///  event generation register
            EGR: mmio.Mmio(packed struct(u32) {
                ///  Update generation
                UG: u1,
                ///  Capture/compare 1 generation
                CC1G: u1,
                padding: u30,
            }),
            ///  capture/compare mode register 1 (output mode)
            CCMR1_Output: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 selection
                CC1S: u2,
                ///  Output Compare 1 fast enable
                OC1FE: u1,
                ///  Output Compare 1 preload enable
                OC1PE: u1,
                ///  Output Compare 1 mode
                OC1M: u3,
                padding: u25,
            }),
            reserved32: [4]u8,
            ///  capture/compare enable register
            CCER: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 output enable
                CC1E: u1,
                ///  Capture/Compare 1 output Polarity
                CC1P: u1,
                reserved3: u1,
                ///  Capture/Compare 1 output Polarity
                CC1NP: u1,
                padding: u28,
            }),
            ///  counter
            CNT: mmio.Mmio(packed struct(u32) {
                ///  counter value
                CNT: u16,
                padding: u16,
            }),
            ///  prescaler
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value
                PSC: u16,
                padding: u16,
            }),
            ///  auto-reload register
            ARR: mmio.Mmio(packed struct(u32) {
                ///  Auto-reload value
                ARR: u16,
                padding: u16,
            }),
            reserved52: [4]u8,
            ///  capture/compare register 1
            CCR1: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 value
                CCR1: u16,
                padding: u16,
            }),
        };

        ///  Nested Vectored Interrupt Controller
        pub const NVIC = extern struct {
            ///  Interrupt Set-Enable Register
            ISER0: mmio.Mmio(packed struct(u32) {
                ///  SETENA
                SETENA: u32,
            }),
            ///  Interrupt Set-Enable Register
            ISER1: mmio.Mmio(packed struct(u32) {
                ///  SETENA
                SETENA: u32,
            }),
            ///  Interrupt Set-Enable Register
            ISER2: mmio.Mmio(packed struct(u32) {
                ///  SETENA
                SETENA: u32,
            }),
            reserved128: [116]u8,
            ///  Interrupt Clear-Enable Register
            ICER0: mmio.Mmio(packed struct(u32) {
                ///  CLRENA
                CLRENA: u32,
            }),
            ///  Interrupt Clear-Enable Register
            ICER1: mmio.Mmio(packed struct(u32) {
                ///  CLRENA
                CLRENA: u32,
            }),
            ///  Interrupt Clear-Enable Register
            ICER2: mmio.Mmio(packed struct(u32) {
                ///  CLRENA
                CLRENA: u32,
            }),
            reserved256: [116]u8,
            ///  Interrupt Set-Pending Register
            ISPR0: mmio.Mmio(packed struct(u32) {
                ///  SETPEND
                SETPEND: u32,
            }),
            ///  Interrupt Set-Pending Register
            ISPR1: mmio.Mmio(packed struct(u32) {
                ///  SETPEND
                SETPEND: u32,
            }),
            ///  Interrupt Set-Pending Register
            ISPR2: mmio.Mmio(packed struct(u32) {
                ///  SETPEND
                SETPEND: u32,
            }),
            reserved384: [116]u8,
            ///  Interrupt Clear-Pending Register
            ICPR0: mmio.Mmio(packed struct(u32) {
                ///  CLRPEND
                CLRPEND: u32,
            }),
            ///  Interrupt Clear-Pending Register
            ICPR1: mmio.Mmio(packed struct(u32) {
                ///  CLRPEND
                CLRPEND: u32,
            }),
            ///  Interrupt Clear-Pending Register
            ICPR2: mmio.Mmio(packed struct(u32) {
                ///  CLRPEND
                CLRPEND: u32,
            }),
            reserved512: [116]u8,
            ///  Interrupt Active Bit Register
            IABR0: mmio.Mmio(packed struct(u32) {
                ///  ACTIVE
                ACTIVE: u32,
            }),
            ///  Interrupt Active Bit Register
            IABR1: mmio.Mmio(packed struct(u32) {
                ///  ACTIVE
                ACTIVE: u32,
            }),
            ///  Interrupt Active Bit Register
            IABR2: mmio.Mmio(packed struct(u32) {
                ///  ACTIVE
                ACTIVE: u32,
            }),
            reserved768: [244]u8,
            ///  Interrupt Priority Register
            IPR0: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR1: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR2: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR3: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR4: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR5: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR6: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR7: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR8: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR9: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR10: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR11: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR12: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR13: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR14: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR15: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR16: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR17: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR18: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR19: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
            ///  Interrupt Priority Register
            IPR20: mmio.Mmio(packed struct(u32) {
                ///  IPR_N0
                IPR_N0: u8,
                ///  IPR_N1
                IPR_N1: u8,
                ///  IPR_N2
                IPR_N2: u8,
                ///  IPR_N3
                IPR_N3: u8,
            }),
        };

        ///  USB on the go full speed
        pub const OTG_FS_PWRCLK = extern struct {
            ///  OTG_FS power and clock gating control register (OTG_FS_PCGCCTL)
            FS_PCGCCTL: mmio.Mmio(packed struct(u32) {
                ///  Stop PHY clock
                STPPCLK: u1,
                ///  Gate HCLK
                GATEHCLK: u1,
                reserved4: u2,
                ///  PHY Suspended
                PHYSUSP: u1,
                padding: u27,
            }),
        };

        ///  General-purpose-timers
        pub const TIM11 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) {
                ///  Counter enable
                CEN: u1,
                ///  Update disable
                UDIS: u1,
                ///  Update request source
                URS: u1,
                reserved7: u4,
                ///  Auto-reload preload enable
                ARPE: u1,
                ///  Clock division
                CKD: u2,
                padding: u22,
            }),
            reserved12: [8]u8,
            ///  DMA/Interrupt enable register
            DIER: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt enable
                UIE: u1,
                ///  Capture/Compare 1 interrupt enable
                CC1IE: u1,
                padding: u30,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt flag
                UIF: u1,
                ///  Capture/compare 1 interrupt flag
                CC1IF: u1,
                reserved9: u7,
                ///  Capture/Compare 1 overcapture flag
                CC1OF: u1,
                padding: u22,
            }),
            ///  event generation register
            EGR: mmio.Mmio(packed struct(u32) {
                ///  Update generation
                UG: u1,
                ///  Capture/compare 1 generation
                CC1G: u1,
                padding: u30,
            }),
            ///  capture/compare mode register 1 (output mode)
            CCMR1_Output: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 selection
                CC1S: u2,
                ///  Output Compare 1 fast enable
                OC1FE: u1,
                ///  Output Compare 1 preload enable
                OC1PE: u1,
                ///  Output Compare 1 mode
                OC1M: u3,
                padding: u25,
            }),
            reserved32: [4]u8,
            ///  capture/compare enable register
            CCER: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 output enable
                CC1E: u1,
                ///  Capture/Compare 1 output Polarity
                CC1P: u1,
                reserved3: u1,
                ///  Capture/Compare 1 output Polarity
                CC1NP: u1,
                padding: u28,
            }),
            ///  counter
            CNT: mmio.Mmio(packed struct(u32) {
                ///  counter value
                CNT: u16,
                padding: u16,
            }),
            ///  prescaler
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value
                PSC: u16,
                padding: u16,
            }),
            ///  auto-reload register
            ARR: mmio.Mmio(packed struct(u32) {
                ///  Auto-reload value
                ARR: u16,
                padding: u16,
            }),
            reserved52: [4]u8,
            ///  capture/compare register 1
            CCR1: mmio.Mmio(packed struct(u32) {
                ///  Capture/Compare 1 value
                CCR1: u16,
                padding: u16,
            }),
            reserved80: [24]u8,
            ///  option register
            OR: mmio.Mmio(packed struct(u32) {
                ///  Input 1 remapping capability
                RMP: u2,
                padding: u30,
            }),
        };

        ///  Basic timers
        pub const TIM6 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) {
                ///  Counter enable
                CEN: u1,
                ///  Update disable
                UDIS: u1,
                ///  Update request source
                URS: u1,
                ///  One-pulse mode
                OPM: u1,
                reserved7: u3,
                ///  Auto-reload preload enable
                ARPE: u1,
                padding: u24,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) {
                reserved4: u4,
                ///  Master mode selection
                MMS: u3,
                padding: u25,
            }),
            reserved12: [4]u8,
            ///  DMA/Interrupt enable register
            DIER: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt enable
                UIE: u1,
                reserved8: u7,
                ///  Update DMA request enable
                UDE: u1,
                padding: u23,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) {
                ///  Update interrupt flag
                UIF: u1,
                padding: u31,
            }),
            ///  event generation register
            EGR: mmio.Mmio(packed struct(u32) {
                ///  Update generation
                UG: u1,
                padding: u31,
            }),
            reserved36: [12]u8,
            ///  counter
            CNT: mmio.Mmio(packed struct(u32) {
                ///  Low counter value
                CNT: u16,
                padding: u16,
            }),
            ///  prescaler
            PSC: mmio.Mmio(packed struct(u32) {
                ///  Prescaler value
                PSC: u16,
                padding: u16,
            }),
            ///  auto-reload register
            ARR: mmio.Mmio(packed struct(u32) {
                ///  Low Auto-reload value
                ARR: u16,
                padding: u16,
            }),
        };

        ///  Controller area network
        pub const CAN1 = extern struct {
            ///  master control register
            MCR: mmio.Mmio(packed struct(u32) {
                ///  INRQ
                INRQ: u1,
                ///  SLEEP
                SLEEP: u1,
                ///  TXFP
                TXFP: u1,
                ///  RFLM
                RFLM: u1,
                ///  NART
                NART: u1,
                ///  AWUM
                AWUM: u1,
                ///  ABOM
                ABOM: u1,
                ///  TTCM
                TTCM: u1,
                reserved15: u7,
                ///  RESET
                RESET: u1,
                ///  DBF
                DBF: u1,
                padding: u15,
            }),
            ///  master status register
            MSR: mmio.Mmio(packed struct(u32) {
                ///  INAK
                INAK: u1,
                ///  SLAK
                SLAK: u1,
                ///  ERRI
                ERRI: u1,
                ///  WKUI
                WKUI: u1,
                ///  SLAKI
                SLAKI: u1,
                reserved8: u3,
                ///  TXM
                TXM: u1,
                ///  RXM
                RXM: u1,
                ///  SAMP
                SAMP: u1,
                ///  RX
                RX: u1,
                padding: u20,
            }),
            ///  transmit status register
            TSR: mmio.Mmio(packed struct(u32) {
                ///  RQCP0
                RQCP0: u1,
                ///  TXOK0
                TXOK0: u1,
                ///  ALST0
                ALST0: u1,
                ///  TERR0
                TERR0: u1,
                reserved7: u3,
                ///  ABRQ0
                ABRQ0: u1,
                ///  RQCP1
                RQCP1: u1,
                ///  TXOK1
                TXOK1: u1,
                ///  ALST1
                ALST1: u1,
                ///  TERR1
                TERR1: u1,
                reserved15: u3,
                ///  ABRQ1
                ABRQ1: u1,
                ///  RQCP2
                RQCP2: u1,
                ///  TXOK2
                TXOK2: u1,
                ///  ALST2
                ALST2: u1,
                ///  TERR2
                TERR2: u1,
                reserved23: u3,
                ///  ABRQ2
                ABRQ2: u1,
                ///  CODE
                CODE: u2,
                ///  Lowest priority flag for mailbox 0
                TME0: u1,
                ///  Lowest priority flag for mailbox 1
                TME1: u1,
                ///  Lowest priority flag for mailbox 2
                TME2: u1,
                ///  Lowest priority flag for mailbox 0
                LOW0: u1,
                ///  Lowest priority flag for mailbox 1
                LOW1: u1,
                ///  Lowest priority flag for mailbox 2
                LOW2: u1,
            }),
            ///  receive FIFO 0 register
            RF0R: mmio.Mmio(packed struct(u32) {
                ///  FMP0
                FMP0: u2,
                reserved3: u1,
                ///  FULL0
                FULL0: u1,
                ///  FOVR0
                FOVR0: u1,
                ///  RFOM0
                RFOM0: u1,
                padding: u26,
            }),
            ///  receive FIFO 1 register
            RF1R: mmio.Mmio(packed struct(u32) {
                ///  FMP1
                FMP1: u2,
                reserved3: u1,
                ///  FULL1
                FULL1: u1,
                ///  FOVR1
                FOVR1: u1,
                ///  RFOM1
                RFOM1: u1,
                padding: u26,
            }),
            ///  interrupt enable register
            IER: mmio.Mmio(packed struct(u32) {
                ///  TMEIE
                TMEIE: u1,
                ///  FMPIE0
                FMPIE0: u1,
                ///  FFIE0
                FFIE0: u1,
                ///  FOVIE0
                FOVIE0: u1,
                ///  FMPIE1
                FMPIE1: u1,
                ///  FFIE1
                FFIE1: u1,
                ///  FOVIE1
                FOVIE1: u1,
                reserved8: u1,
                ///  EWGIE
                EWGIE: u1,
                ///  EPVIE
                EPVIE: u1,
                ///  BOFIE
                BOFIE: u1,
                ///  LECIE
                LECIE: u1,
                reserved15: u3,
                ///  ERRIE
                ERRIE: u1,
                ///  WKUIE
                WKUIE: u1,
                ///  SLKIE
                SLKIE: u1,
                padding: u14,
            }),
            ///  interrupt enable register
            ESR: mmio.Mmio(packed struct(u32) {
                ///  EWGF
                EWGF: u1,
                ///  EPVF
                EPVF: u1,
                ///  BOFF
                BOFF: u1,
                reserved4: u1,
                ///  LEC
                LEC: u3,
                reserved16: u9,
                ///  TEC
                TEC: u8,
                ///  REC
                REC: u8,
            }),
            ///  bit timing register
            BTR: mmio.Mmio(packed struct(u32) {
                ///  BRP
                BRP: u10,
                reserved16: u6,
                ///  TS1
                TS1: u4,
                ///  TS2
                TS2: u3,
                reserved24: u1,
                ///  SJW
                SJW: u2,
                reserved30: u4,
                ///  LBKM
                LBKM: u1,
                ///  SILM
                SILM: u1,
            }),
            reserved384: [352]u8,
            ///  TX mailbox identifier register
            TI0R: mmio.Mmio(packed struct(u32) {
                ///  TXRQ
                TXRQ: u1,
                ///  RTR
                RTR: u1,
                ///  IDE
                IDE: u1,
                ///  EXID
                EXID: u18,
                ///  STID
                STID: u11,
            }),
            ///  mailbox data length control and time stamp register
            TDT0R: mmio.Mmio(packed struct(u32) {
                ///  DLC
                DLC: u4,
                reserved8: u4,
                ///  TGT
                TGT: u1,
                reserved16: u7,
                ///  TIME
                TIME: u16,
            }),
            ///  mailbox data low register
            TDL0R: mmio.Mmio(packed struct(u32) {
                ///  DATA0
                DATA0: u8,
                ///  DATA1
                DATA1: u8,
                ///  DATA2
                DATA2: u8,
                ///  DATA3
                DATA3: u8,
            }),
            ///  mailbox data high register
            TDH0R: mmio.Mmio(packed struct(u32) {
                ///  DATA4
                DATA4: u8,
                ///  DATA5
                DATA5: u8,
                ///  DATA6
                DATA6: u8,
                ///  DATA7
                DATA7: u8,
            }),
            ///  mailbox identifier register
            TI1R: mmio.Mmio(packed struct(u32) {
                ///  TXRQ
                TXRQ: u1,
                ///  RTR
                RTR: u1,
                ///  IDE
                IDE: u1,
                ///  EXID
                EXID: u18,
                ///  STID
                STID: u11,
            }),
            ///  mailbox data length control and time stamp register
            TDT1R: mmio.Mmio(packed struct(u32) {
                ///  DLC
                DLC: u4,
                reserved8: u4,
                ///  TGT
                TGT: u1,
                reserved16: u7,
                ///  TIME
                TIME: u16,
            }),
            ///  mailbox data low register
            TDL1R: mmio.Mmio(packed struct(u32) {
                ///  DATA0
                DATA0: u8,
                ///  DATA1
                DATA1: u8,
                ///  DATA2
                DATA2: u8,
                ///  DATA3
                DATA3: u8,
            }),
            ///  mailbox data high register
            TDH1R: mmio.Mmio(packed struct(u32) {
                ///  DATA4
                DATA4: u8,
                ///  DATA5
                DATA5: u8,
                ///  DATA6
                DATA6: u8,
                ///  DATA7
                DATA7: u8,
            }),
            ///  mailbox identifier register
            TI2R: mmio.Mmio(packed struct(u32) {
                ///  TXRQ
                TXRQ: u1,
                ///  RTR
                RTR: u1,
                ///  IDE
                IDE: u1,
                ///  EXID
                EXID: u18,
                ///  STID
                STID: u11,
            }),
            ///  mailbox data length control and time stamp register
            TDT2R: mmio.Mmio(packed struct(u32) {
                ///  DLC
                DLC: u4,
                reserved8: u4,
                ///  TGT
                TGT: u1,
                reserved16: u7,
                ///  TIME
                TIME: u16,
            }),
            ///  mailbox data low register
            TDL2R: mmio.Mmio(packed struct(u32) {
                ///  DATA0
                DATA0: u8,
                ///  DATA1
                DATA1: u8,
                ///  DATA2
                DATA2: u8,
                ///  DATA3
                DATA3: u8,
            }),
            ///  mailbox data high register
            TDH2R: mmio.Mmio(packed struct(u32) {
                ///  DATA4
                DATA4: u8,
                ///  DATA5
                DATA5: u8,
                ///  DATA6
                DATA6: u8,
                ///  DATA7
                DATA7: u8,
            }),
            ///  receive FIFO mailbox identifier register
            RI0R: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  RTR
                RTR: u1,
                ///  IDE
                IDE: u1,
                ///  EXID
                EXID: u18,
                ///  STID
                STID: u11,
            }),
            ///  mailbox data high register
            RDT0R: mmio.Mmio(packed struct(u32) {
                ///  DLC
                DLC: u4,
                reserved8: u4,
                ///  FMI
                FMI: u8,
                ///  TIME
                TIME: u16,
            }),
            ///  mailbox data high register
            RDL0R: mmio.Mmio(packed struct(u32) {
                ///  DATA0
                DATA0: u8,
                ///  DATA1
                DATA1: u8,
                ///  DATA2
                DATA2: u8,
                ///  DATA3
                DATA3: u8,
            }),
            ///  receive FIFO mailbox data high register
            RDH0R: mmio.Mmio(packed struct(u32) {
                ///  DATA4
                DATA4: u8,
                ///  DATA5
                DATA5: u8,
                ///  DATA6
                DATA6: u8,
                ///  DATA7
                DATA7: u8,
            }),
            ///  mailbox data high register
            RI1R: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  RTR
                RTR: u1,
                ///  IDE
                IDE: u1,
                ///  EXID
                EXID: u18,
                ///  STID
                STID: u11,
            }),
            ///  mailbox data high register
            RDT1R: mmio.Mmio(packed struct(u32) {
                ///  DLC
                DLC: u4,
                reserved8: u4,
                ///  FMI
                FMI: u8,
                ///  TIME
                TIME: u16,
            }),
            ///  mailbox data high register
            RDL1R: mmio.Mmio(packed struct(u32) {
                ///  DATA0
                DATA0: u8,
                ///  DATA1
                DATA1: u8,
                ///  DATA2
                DATA2: u8,
                ///  DATA3
                DATA3: u8,
            }),
            ///  mailbox data high register
            RDH1R: mmio.Mmio(packed struct(u32) {
                ///  DATA4
                DATA4: u8,
                ///  DATA5
                DATA5: u8,
                ///  DATA6
                DATA6: u8,
                ///  DATA7
                DATA7: u8,
            }),
            reserved512: [48]u8,
            ///  filter master register
            FMR: mmio.Mmio(packed struct(u32) {
                ///  FINIT
                FINIT: u1,
                reserved8: u7,
                ///  CAN2SB
                CAN2SB: u6,
                padding: u18,
            }),
            ///  filter mode register
            FM1R: mmio.Mmio(packed struct(u32) {
                ///  Filter mode
                FBM0: u1,
                ///  Filter mode
                FBM1: u1,
                ///  Filter mode
                FBM2: u1,
                ///  Filter mode
                FBM3: u1,
                ///  Filter mode
                FBM4: u1,
                ///  Filter mode
                FBM5: u1,
                ///  Filter mode
                FBM6: u1,
                ///  Filter mode
                FBM7: u1,
                ///  Filter mode
                FBM8: u1,
                ///  Filter mode
                FBM9: u1,
                ///  Filter mode
                FBM10: u1,
                ///  Filter mode
                FBM11: u1,
                ///  Filter mode
                FBM12: u1,
                ///  Filter mode
                FBM13: u1,
                ///  Filter mode
                FBM14: u1,
                ///  Filter mode
                FBM15: u1,
                ///  Filter mode
                FBM16: u1,
                ///  Filter mode
                FBM17: u1,
                ///  Filter mode
                FBM18: u1,
                ///  Filter mode
                FBM19: u1,
                ///  Filter mode
                FBM20: u1,
                ///  Filter mode
                FBM21: u1,
                ///  Filter mode
                FBM22: u1,
                ///  Filter mode
                FBM23: u1,
                ///  Filter mode
                FBM24: u1,
                ///  Filter mode
                FBM25: u1,
                ///  Filter mode
                FBM26: u1,
                ///  Filter mode
                FBM27: u1,
                padding: u4,
            }),
            reserved524: [4]u8,
            ///  filter scale register
            FS1R: mmio.Mmio(packed struct(u32) {
                ///  Filter scale configuration
                FSC0: u1,
                ///  Filter scale configuration
                FSC1: u1,
                ///  Filter scale configuration
                FSC2: u1,
                ///  Filter scale configuration
                FSC3: u1,
                ///  Filter scale configuration
                FSC4: u1,
                ///  Filter scale configuration
                FSC5: u1,
                ///  Filter scale configuration
                FSC6: u1,
                ///  Filter scale configuration
                FSC7: u1,
                ///  Filter scale configuration
                FSC8: u1,
                ///  Filter scale configuration
                FSC9: u1,
                ///  Filter scale configuration
                FSC10: u1,
                ///  Filter scale configuration
                FSC11: u1,
                ///  Filter scale configuration
                FSC12: u1,
                ///  Filter scale configuration
                FSC13: u1,
                ///  Filter scale configuration
                FSC14: u1,
                ///  Filter scale configuration
                FSC15: u1,
                ///  Filter scale configuration
                FSC16: u1,
                ///  Filter scale configuration
                FSC17: u1,
                ///  Filter scale configuration
                FSC18: u1,
                ///  Filter scale configuration
                FSC19: u1,
                ///  Filter scale configuration
                FSC20: u1,
                ///  Filter scale configuration
                FSC21: u1,
                ///  Filter scale configuration
                FSC22: u1,
                ///  Filter scale configuration
                FSC23: u1,
                ///  Filter scale configuration
                FSC24: u1,
                ///  Filter scale configuration
                FSC25: u1,
                ///  Filter scale configuration
                FSC26: u1,
                ///  Filter scale configuration
                FSC27: u1,
                padding: u4,
            }),
            reserved532: [4]u8,
            ///  filter FIFO assignment register
            FFA1R: mmio.Mmio(packed struct(u32) {
                ///  Filter FIFO assignment for filter 0
                FFA0: u1,
                ///  Filter FIFO assignment for filter 1
                FFA1: u1,
                ///  Filter FIFO assignment for filter 2
                FFA2: u1,
                ///  Filter FIFO assignment for filter 3
                FFA3: u1,
                ///  Filter FIFO assignment for filter 4
                FFA4: u1,
                ///  Filter FIFO assignment for filter 5
                FFA5: u1,
                ///  Filter FIFO assignment for filter 6
                FFA6: u1,
                ///  Filter FIFO assignment for filter 7
                FFA7: u1,
                ///  Filter FIFO assignment for filter 8
                FFA8: u1,
                ///  Filter FIFO assignment for filter 9
                FFA9: u1,
                ///  Filter FIFO assignment for filter 10
                FFA10: u1,
                ///  Filter FIFO assignment for filter 11
                FFA11: u1,
                ///  Filter FIFO assignment for filter 12
                FFA12: u1,
                ///  Filter FIFO assignment for filter 13
                FFA13: u1,
                ///  Filter FIFO assignment for filter 14
                FFA14: u1,
                ///  Filter FIFO assignment for filter 15
                FFA15: u1,
                ///  Filter FIFO assignment for filter 16
                FFA16: u1,
                ///  Filter FIFO assignment for filter 17
                FFA17: u1,
                ///  Filter FIFO assignment for filter 18
                FFA18: u1,
                ///  Filter FIFO assignment for filter 19
                FFA19: u1,
                ///  Filter FIFO assignment for filter 20
                FFA20: u1,
                ///  Filter FIFO assignment for filter 21
                FFA21: u1,
                ///  Filter FIFO assignment for filter 22
                FFA22: u1,
                ///  Filter FIFO assignment for filter 23
                FFA23: u1,
                ///  Filter FIFO assignment for filter 24
                FFA24: u1,
                ///  Filter FIFO assignment for filter 25
                FFA25: u1,
                ///  Filter FIFO assignment for filter 26
                FFA26: u1,
                ///  Filter FIFO assignment for filter 27
                FFA27: u1,
                padding: u4,
            }),
            reserved540: [4]u8,
            ///  filter activation register
            FA1R: mmio.Mmio(packed struct(u32) {
                ///  Filter active
                FACT0: u1,
                ///  Filter active
                FACT1: u1,
                ///  Filter active
                FACT2: u1,
                ///  Filter active
                FACT3: u1,
                ///  Filter active
                FACT4: u1,
                ///  Filter active
                FACT5: u1,
                ///  Filter active
                FACT6: u1,
                ///  Filter active
                FACT7: u1,
                ///  Filter active
                FACT8: u1,
                ///  Filter active
                FACT9: u1,
                ///  Filter active
                FACT10: u1,
                ///  Filter active
                FACT11: u1,
                ///  Filter active
                FACT12: u1,
                ///  Filter active
                FACT13: u1,
                ///  Filter active
                FACT14: u1,
                ///  Filter active
                FACT15: u1,
                ///  Filter active
                FACT16: u1,
                ///  Filter active
                FACT17: u1,
                ///  Filter active
                FACT18: u1,
                ///  Filter active
                FACT19: u1,
                ///  Filter active
                FACT20: u1,
                ///  Filter active
                FACT21: u1,
                ///  Filter active
                FACT22: u1,
                ///  Filter active
                FACT23: u1,
                ///  Filter active
                FACT24: u1,
                ///  Filter active
                FACT25: u1,
                ///  Filter active
                FACT26: u1,
                ///  Filter active
                FACT27: u1,
                padding: u4,
            }),
            reserved576: [32]u8,
            ///  Filter bank 0 register 1
            F0R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 0 register 2
            F0R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 1 register 1
            F1R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 1 register 2
            F1R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 2 register 1
            F2R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 2 register 2
            F2R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 3 register 1
            F3R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 3 register 2
            F3R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 4 register 1
            F4R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 4 register 2
            F4R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 5 register 1
            F5R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 5 register 2
            F5R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 6 register 1
            F6R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 6 register 2
            F6R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 7 register 1
            F7R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 7 register 2
            F7R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 8 register 1
            F8R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 8 register 2
            F8R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 9 register 1
            F9R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 9 register 2
            F9R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 10 register 1
            F10R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 10 register 2
            F10R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 11 register 1
            F11R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 11 register 2
            F11R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 4 register 1
            F12R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 12 register 2
            F12R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 13 register 1
            F13R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 13 register 2
            F13R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 14 register 1
            F14R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 14 register 2
            F14R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 15 register 1
            F15R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 15 register 2
            F15R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 16 register 1
            F16R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 16 register 2
            F16R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 17 register 1
            F17R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 17 register 2
            F17R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 18 register 1
            F18R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 18 register 2
            F18R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 19 register 1
            F19R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 19 register 2
            F19R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 20 register 1
            F20R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 20 register 2
            F20R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 21 register 1
            F21R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 21 register 2
            F21R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 22 register 1
            F22R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 22 register 2
            F22R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 23 register 1
            F23R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 23 register 2
            F23R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 24 register 1
            F24R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 24 register 2
            F24R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 25 register 1
            F25R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 25 register 2
            F25R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 26 register 1
            F26R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 26 register 2
            F26R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 27 register 1
            F27R1: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
            ///  Filter bank 27 register 2
            F27R2: mmio.Mmio(packed struct(u32) {
                ///  Filter bits
                FB0: u1,
                ///  Filter bits
                FB1: u1,
                ///  Filter bits
                FB2: u1,
                ///  Filter bits
                FB3: u1,
                ///  Filter bits
                FB4: u1,
                ///  Filter bits
                FB5: u1,
                ///  Filter bits
                FB6: u1,
                ///  Filter bits
                FB7: u1,
                ///  Filter bits
                FB8: u1,
                ///  Filter bits
                FB9: u1,
                ///  Filter bits
                FB10: u1,
                ///  Filter bits
                FB11: u1,
                ///  Filter bits
                FB12: u1,
                ///  Filter bits
                FB13: u1,
                ///  Filter bits
                FB14: u1,
                ///  Filter bits
                FB15: u1,
                ///  Filter bits
                FB16: u1,
                ///  Filter bits
                FB17: u1,
                ///  Filter bits
                FB18: u1,
                ///  Filter bits
                FB19: u1,
                ///  Filter bits
                FB20: u1,
                ///  Filter bits
                FB21: u1,
                ///  Filter bits
                FB22: u1,
                ///  Filter bits
                FB23: u1,
                ///  Filter bits
                FB24: u1,
                ///  Filter bits
                FB25: u1,
                ///  Filter bits
                FB26: u1,
                ///  Filter bits
                FB27: u1,
                ///  Filter bits
                FB28: u1,
                ///  Filter bits
                FB29: u1,
                ///  Filter bits
                FB30: u1,
                ///  Filter bits
                FB31: u1,
            }),
        };

        ///  Cryptographic processor
        pub const CRC = extern struct {
            ///  Data register
            DR: mmio.Mmio(packed struct(u32) {
                ///  Data Register
                DR: u32,
            }),
            ///  Independent Data register
            IDR: mmio.Mmio(packed struct(u32) {
                ///  Independent Data register
                IDR: u8,
                padding: u24,
            }),
            ///  Control register
            CR: mmio.Mmio(packed struct(u32) {
                ///  Control regidter
                CR: u1,
                padding: u31,
            }),
        };

        ///  USB on the go full speed
        pub const OTG_FS_GLOBAL = extern struct {
            ///  OTG_FS control and status register (OTG_FS_GOTGCTL)
            FS_GOTGCTL: mmio.Mmio(packed struct(u32) {
                ///  Session request success
                SRQSCS: u1,
                ///  Session request
                SRQ: u1,
                reserved8: u6,
                ///  Host negotiation success
                HNGSCS: u1,
                ///  HNP request
                HNPRQ: u1,
                ///  Host set HNP enable
                HSHNPEN: u1,
                ///  Device HNP enabled
                DHNPEN: u1,
                reserved16: u4,
                ///  Connector ID status
                CIDSTS: u1,
                ///  Long/short debounce time
                DBCT: u1,
                ///  A-session valid
                ASVLD: u1,
                ///  B-session valid
                BSVLD: u1,
                padding: u12,
            }),
            ///  OTG_FS interrupt register (OTG_FS_GOTGINT)
            FS_GOTGINT: mmio.Mmio(packed struct(u32) {
                reserved2: u2,
                ///  Session end detected
                SEDET: u1,
                reserved8: u5,
                ///  Session request success status change
                SRSSCHG: u1,
                ///  Host negotiation success status change
                HNSSCHG: u1,
                reserved17: u7,
                ///  Host negotiation detected
                HNGDET: u1,
                ///  A-device timeout change
                ADTOCHG: u1,
                ///  Debounce done
                DBCDNE: u1,
                padding: u12,
            }),
            ///  OTG_FS AHB configuration register (OTG_FS_GAHBCFG)
            FS_GAHBCFG: mmio.Mmio(packed struct(u32) {
                ///  Global interrupt mask
                GINT: u1,
                reserved7: u6,
                ///  TxFIFO empty level
                TXFELVL: u1,
                ///  Periodic TxFIFO empty level
                PTXFELVL: u1,
                padding: u23,
            }),
            ///  OTG_FS USB configuration register (OTG_FS_GUSBCFG)
            FS_GUSBCFG: mmio.Mmio(packed struct(u32) {
                ///  FS timeout calibration
                TOCAL: u3,
                reserved6: u3,
                ///  Full Speed serial transceiver select
                PHYSEL: u1,
                reserved8: u1,
                ///  SRP-capable
                SRPCAP: u1,
                ///  HNP-capable
                HNPCAP: u1,
                ///  USB turnaround time
                TRDT: u4,
                reserved29: u15,
                ///  Force host mode
                FHMOD: u1,
                ///  Force device mode
                FDMOD: u1,
                ///  Corrupt Tx packet
                CTXPKT: u1,
            }),
            ///  OTG_FS reset register (OTG_FS_GRSTCTL)
            FS_GRSTCTL: mmio.Mmio(packed struct(u32) {
                ///  Core soft reset
                CSRST: u1,
                ///  HCLK soft reset
                HSRST: u1,
                ///  Host frame counter reset
                FCRST: u1,
                reserved4: u1,
                ///  RxFIFO flush
                RXFFLSH: u1,
                ///  TxFIFO flush
                TXFFLSH: u1,
                ///  TxFIFO number
                TXFNUM: u5,
                reserved31: u20,
                ///  AHB master idle
                AHBIDL: u1,
            }),
            ///  OTG_FS core interrupt register (OTG_FS_GINTSTS)
            FS_GINTSTS: mmio.Mmio(packed struct(u32) {
                ///  Current mode of operation
                CMOD: u1,
                ///  Mode mismatch interrupt
                MMIS: u1,
                ///  OTG interrupt
                OTGINT: u1,
                ///  Start of frame
                SOF: u1,
                ///  RxFIFO non-empty
                RXFLVL: u1,
                ///  Non-periodic TxFIFO empty
                NPTXFE: u1,
                ///  Global IN non-periodic NAK effective
                GINAKEFF: u1,
                ///  Global OUT NAK effective
                GOUTNAKEFF: u1,
                reserved10: u2,
                ///  Early suspend
                ESUSP: u1,
                ///  USB suspend
                USBSUSP: u1,
                ///  USB reset
                USBRST: u1,
                ///  Enumeration done
                ENUMDNE: u1,
                ///  Isochronous OUT packet dropped interrupt
                ISOODRP: u1,
                ///  End of periodic frame interrupt
                EOPF: u1,
                reserved18: u2,
                ///  IN endpoint interrupt
                IEPINT: u1,
                ///  OUT endpoint interrupt
                OEPINT: u1,
                ///  Incomplete isochronous IN transfer
                IISOIXFR: u1,
                ///  Incomplete periodic transfer(Host mode)/Incomplete isochronous OUT transfer(Device mode)
                IPXFR_INCOMPISOOUT: u1,
                reserved24: u2,
                ///  Host port interrupt
                HPRTINT: u1,
                ///  Host channels interrupt
                HCINT: u1,
                ///  Periodic TxFIFO empty
                PTXFE: u1,
                reserved28: u1,
                ///  Connector ID status change
                CIDSCHG: u1,
                ///  Disconnect detected interrupt
                DISCINT: u1,
                ///  Session request/new session detected interrupt
                SRQINT: u1,
                ///  Resume/remote wakeup detected interrupt
                WKUPINT: u1,
            }),
            ///  OTG_FS interrupt mask register (OTG_FS_GINTMSK)
            FS_GINTMSK: mmio.Mmio(packed struct(u32) {
                reserved1: u1,
                ///  Mode mismatch interrupt mask
                MMISM: u1,
                ///  OTG interrupt mask
                OTGINT: u1,
                ///  Start of frame mask
                SOFM: u1,
                ///  Receive FIFO non-empty mask
                RXFLVLM: u1,
                ///  Non-periodic TxFIFO empty mask
                NPTXFEM: u1,
                ///  Global non-periodic IN NAK effective mask
                GINAKEFFM: u1,
                ///  Global OUT NAK effective mask
                GONAKEFFM: u1,
                reserved10: u2,
                ///  Early suspend mask
                ESUSPM: u1,
                ///  USB suspend mask
                USBSUSPM: u1,
                ///  USB reset mask
                USBRST: u1,
                ///  Enumeration done mask
                ENUMDNEM: u1,
                ///  Isochronous OUT packet dropped interrupt mask
                ISOODRPM: u1,
                ///  End of periodic frame interrupt mask
                EOPFM: u1,
                reserved17: u1,
                ///  Endpoint mismatch interrupt mask
                EPMISM: u1,
                ///  IN endpoints interrupt mask
                IEPINT: u1,
                ///  OUT endpoints interrupt mask
                OEPINT: u1,
                ///  Incomplete isochronous IN transfer mask
                IISOIXFRM: u1,
                ///  Incomplete periodic transfer mask(Host mode)/Incomplete isochronous OUT transfer mask(Device mode)
                IPXFRM_IISOOXFRM: u1,
                reserved24: u2,
                ///  Host port interrupt mask
                PRTIM: u1,
                ///  Host channels interrupt mask
                HCIM: u1,
                ///  Periodic TxFIFO empty mask
                PTXFEM: u1,
                reserved28: u1,
                ///  Connector ID status change mask
                CIDSCHGM: u1,
                ///  Disconnect detected interrupt mask
                DISCINT: u1,
                ///  Session request/new session detected interrupt mask
                SRQIM: u1,
                ///  Resume/remote wakeup detected interrupt mask
                WUIM: u1,
            }),
            ///  OTG_FS Receive status debug read(Device mode)
            FS_GRXSTSR_Device: mmio.Mmio(packed struct(u32) {
                ///  Endpoint number
                EPNUM: u4,
                ///  Byte count
                BCNT: u11,
                ///  Data PID
                DPID: u2,
                ///  Packet status
                PKTSTS: u4,
                ///  Frame number
                FRMNUM: u4,
                padding: u7,
            }),
            reserved36: [4]u8,
            ///  OTG_FS Receive FIFO size register (OTG_FS_GRXFSIZ)
            FS_GRXFSIZ: mmio.Mmio(packed struct(u32) {
                ///  RxFIFO depth
                RXFD: u16,
                padding: u16,
            }),
            ///  OTG_FS non-periodic transmit FIFO size register (Device mode)
            FS_GNPTXFSIZ_Device: mmio.Mmio(packed struct(u32) {
                ///  Endpoint 0 transmit RAM start address
                TX0FSA: u16,
                ///  Endpoint 0 TxFIFO depth
                TX0FD: u16,
            }),
            ///  OTG_FS non-periodic transmit FIFO/queue status register (OTG_FS_GNPTXSTS)
            FS_GNPTXSTS: mmio.Mmio(packed struct(u32) {
                ///  Non-periodic TxFIFO space available
                NPTXFSAV: u16,
                ///  Non-periodic transmit request queue space available
                NPTQXSAV: u8,
                ///  Top of the non-periodic transmit request queue
                NPTXQTOP: u7,
                padding: u1,
            }),
            reserved56: [8]u8,
            ///  OTG_FS general core configuration register (OTG_FS_GCCFG)
            FS_GCCFG: mmio.Mmio(packed struct(u32) {
                reserved16: u16,
                ///  Power down
                PWRDWN: u1,
                reserved18: u1,
                ///  Enable the VBUS sensing device
                VBUSASEN: u1,
                ///  Enable the VBUS sensing device
                VBUSBSEN: u1,
                ///  SOF output enable
                SOFOUTEN: u1,
                padding: u11,
            }),
            ///  core ID register
            FS_CID: mmio.Mmio(packed struct(u32) {
                ///  Product ID field
                PRODUCT_ID: u32,
            }),
            reserved256: [192]u8,
            ///  OTG_FS Host periodic transmit FIFO size register (OTG_FS_HPTXFSIZ)
            FS_HPTXFSIZ: mmio.Mmio(packed struct(u32) {
                ///  Host periodic TxFIFO start address
                PTXSA: u16,
                ///  Host periodic TxFIFO depth
                PTXFSIZ: u16,
            }),
            ///  OTG_FS device IN endpoint transmit FIFO size register (OTG_FS_DIEPTXF2)
            FS_DIEPTXF1: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFO2 transmit RAM start address
                INEPTXSA: u16,
                ///  IN endpoint TxFIFO depth
                INEPTXFD: u16,
            }),
            ///  OTG_FS device IN endpoint transmit FIFO size register (OTG_FS_DIEPTXF3)
            FS_DIEPTXF2: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFO3 transmit RAM start address
                INEPTXSA: u16,
                ///  IN endpoint TxFIFO depth
                INEPTXFD: u16,
            }),
            ///  OTG_FS device IN endpoint transmit FIFO size register (OTG_FS_DIEPTXF4)
            FS_DIEPTXF3: mmio.Mmio(packed struct(u32) {
                ///  IN endpoint FIFO4 transmit RAM start address
                INEPTXSA: u16,
                ///  IN endpoint TxFIFO depth
                INEPTXFD: u16,
            }),
        };

        ///  USB on the go full speed
        pub const OTG_FS_HOST = extern struct {
            ///  OTG_FS host configuration register (OTG_FS_HCFG)
            FS_HCFG: mmio.Mmio(packed struct(u32) {
                ///  FS/LS PHY clock select
                FSLSPCS: u2,
                ///  FS- and LS-only support
                FSLSS: u1,
                padding: u29,
            }),
            ///  OTG_FS Host frame interval register
            HFIR: mmio.Mmio(packed struct(u32) {
                ///  Frame interval
                FRIVL: u16,
                padding: u16,
            }),
            ///  OTG_FS host frame number/frame time remaining register (OTG_FS_HFNUM)
            FS_HFNUM: mmio.Mmio(packed struct(u32) {
                ///  Frame number
                FRNUM: u16,
                ///  Frame time remaining
                FTREM: u16,
            }),
            reserved16: [4]u8,
            ///  OTG_FS_Host periodic transmit FIFO/queue status register (OTG_FS_HPTXSTS)
            FS_HPTXSTS: mmio.Mmio(packed struct(u32) {
                ///  Periodic transmit data FIFO space available
                PTXFSAVL: u16,
                ///  Periodic transmit request queue space available
                PTXQSAV: u8,
                ///  Top of the periodic transmit request queue
                PTXQTOP: u8,
            }),
            ///  OTG_FS Host all channels interrupt register
            HAINT: mmio.Mmio(packed struct(u32) {
                ///  Channel interrupts
                HAINT: u16,
                padding: u16,
            }),
            ///  OTG_FS host all channels interrupt mask register
            HAINTMSK: mmio.Mmio(packed struct(u32) {
                ///  Channel interrupt mask
                HAINTM: u16,
                padding: u16,
            }),
            reserved64: [36]u8,
            ///  OTG_FS host port control and status register (OTG_FS_HPRT)
            FS_HPRT: mmio.Mmio(packed struct(u32) {
                ///  Port connect status
                PCSTS: u1,
                ///  Port connect detected
                PCDET: u1,
                ///  Port enable
                PENA: u1,
                ///  Port enable/disable change
                PENCHNG: u1,
                ///  Port overcurrent active
                POCA: u1,
                ///  Port overcurrent change
                POCCHNG: u1,
                ///  Port resume
                PRES: u1,
                ///  Port suspend
                PSUSP: u1,
                ///  Port reset
                PRST: u1,
                reserved10: u1,
                ///  Port line status
                PLSTS: u2,
                ///  Port power
                PPWR: u1,
                ///  Port test control
                PTCTL: u4,
                ///  Port speed
                PSPD: u2,
                padding: u13,
            }),
            reserved256: [188]u8,
            ///  OTG_FS host channel-0 characteristics register (OTG_FS_HCCHAR0)
            FS_HCCHAR0: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multicount
                MCNT: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            reserved264: [4]u8,
            ///  OTG_FS host channel-0 interrupt register (OTG_FS_HCINT0)
            FS_HCINT0: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-0 mask register (OTG_FS_HCINTMSK0)
            FS_HCINTMSK0: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                reserved3: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-0 transfer size register
            FS_HCTSIZ0: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            reserved288: [12]u8,
            ///  OTG_FS host channel-1 characteristics register (OTG_FS_HCCHAR1)
            FS_HCCHAR1: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multicount
                MCNT: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            reserved296: [4]u8,
            ///  OTG_FS host channel-1 interrupt register (OTG_FS_HCINT1)
            FS_HCINT1: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-1 mask register (OTG_FS_HCINTMSK1)
            FS_HCINTMSK1: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                reserved3: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-1 transfer size register
            FS_HCTSIZ1: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            reserved320: [12]u8,
            ///  OTG_FS host channel-2 characteristics register (OTG_FS_HCCHAR2)
            FS_HCCHAR2: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multicount
                MCNT: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            reserved328: [4]u8,
            ///  OTG_FS host channel-2 interrupt register (OTG_FS_HCINT2)
            FS_HCINT2: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-2 mask register (OTG_FS_HCINTMSK2)
            FS_HCINTMSK2: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                reserved3: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-2 transfer size register
            FS_HCTSIZ2: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            reserved352: [12]u8,
            ///  OTG_FS host channel-3 characteristics register (OTG_FS_HCCHAR3)
            FS_HCCHAR3: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multicount
                MCNT: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            reserved360: [4]u8,
            ///  OTG_FS host channel-3 interrupt register (OTG_FS_HCINT3)
            FS_HCINT3: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-3 mask register (OTG_FS_HCINTMSK3)
            FS_HCINTMSK3: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                reserved3: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-3 transfer size register
            FS_HCTSIZ3: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            reserved384: [12]u8,
            ///  OTG_FS host channel-4 characteristics register (OTG_FS_HCCHAR4)
            FS_HCCHAR4: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multicount
                MCNT: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            reserved392: [4]u8,
            ///  OTG_FS host channel-4 interrupt register (OTG_FS_HCINT4)
            FS_HCINT4: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-4 mask register (OTG_FS_HCINTMSK4)
            FS_HCINTMSK4: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                reserved3: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-x transfer size register
            FS_HCTSIZ4: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            reserved416: [12]u8,
            ///  OTG_FS host channel-5 characteristics register (OTG_FS_HCCHAR5)
            FS_HCCHAR5: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multicount
                MCNT: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            reserved424: [4]u8,
            ///  OTG_FS host channel-5 interrupt register (OTG_FS_HCINT5)
            FS_HCINT5: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-5 mask register (OTG_FS_HCINTMSK5)
            FS_HCINTMSK5: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                reserved3: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-5 transfer size register
            FS_HCTSIZ5: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            reserved448: [12]u8,
            ///  OTG_FS host channel-6 characteristics register (OTG_FS_HCCHAR6)
            FS_HCCHAR6: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multicount
                MCNT: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            reserved456: [4]u8,
            ///  OTG_FS host channel-6 interrupt register (OTG_FS_HCINT6)
            FS_HCINT6: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-6 mask register (OTG_FS_HCINTMSK6)
            FS_HCINTMSK6: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                reserved3: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-6 transfer size register
            FS_HCTSIZ6: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
            reserved480: [12]u8,
            ///  OTG_FS host channel-7 characteristics register (OTG_FS_HCCHAR7)
            FS_HCCHAR7: mmio.Mmio(packed struct(u32) {
                ///  Maximum packet size
                MPSIZ: u11,
                ///  Endpoint number
                EPNUM: u4,
                ///  Endpoint direction
                EPDIR: u1,
                reserved17: u1,
                ///  Low-speed device
                LSDEV: u1,
                ///  Endpoint type
                EPTYP: u2,
                ///  Multicount
                MCNT: u2,
                ///  Device address
                DAD: u7,
                ///  Odd frame
                ODDFRM: u1,
                ///  Channel disable
                CHDIS: u1,
                ///  Channel enable
                CHENA: u1,
            }),
            reserved488: [4]u8,
            ///  OTG_FS host channel-7 interrupt register (OTG_FS_HCINT7)
            FS_HCINT7: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed
                XFRC: u1,
                ///  Channel halted
                CHH: u1,
                reserved3: u1,
                ///  STALL response received interrupt
                STALL: u1,
                ///  NAK response received interrupt
                NAK: u1,
                ///  ACK response received/transmitted interrupt
                ACK: u1,
                reserved7: u1,
                ///  Transaction error
                TXERR: u1,
                ///  Babble error
                BBERR: u1,
                ///  Frame overrun
                FRMOR: u1,
                ///  Data toggle error
                DTERR: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-7 mask register (OTG_FS_HCINTMSK7)
            FS_HCINTMSK7: mmio.Mmio(packed struct(u32) {
                ///  Transfer completed mask
                XFRCM: u1,
                ///  Channel halted mask
                CHHM: u1,
                reserved3: u1,
                ///  STALL response received interrupt mask
                STALLM: u1,
                ///  NAK response received interrupt mask
                NAKM: u1,
                ///  ACK response received/transmitted interrupt mask
                ACKM: u1,
                ///  response received interrupt mask
                NYET: u1,
                ///  Transaction error mask
                TXERRM: u1,
                ///  Babble error mask
                BBERRM: u1,
                ///  Frame overrun mask
                FRMORM: u1,
                ///  Data toggle error mask
                DTERRM: u1,
                padding: u21,
            }),
            ///  OTG_FS host channel-7 transfer size register
            FS_HCTSIZ7: mmio.Mmio(packed struct(u32) {
                ///  Transfer size
                XFRSIZ: u19,
                ///  Packet count
                PKTCNT: u10,
                ///  Data PID
                DPID: u2,
                padding: u1,
            }),
        };
    };
};
