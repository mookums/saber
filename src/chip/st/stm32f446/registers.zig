//Generated for Saber using the Hilt Parser!

const MMIO = @import("mmio").MMIO;

pub const device_name = "STM32F446";
pub const device_revision = "1.1";
pub const device_description = "STM32F446";

pub const cpu = struct {
    pub const name = "CM4";
    pub const revision = "r1p0";
    pub const endian = "little";
    pub const mpu_present = false;
    pub const fpu_present = false;
    pub const vendor_systick_config = false;
    pub const nvic_prio_bits = 3;
};

/// Digital camera interface
pub const DCMI = struct {

const base_address = 0x50050000;
/// CR
const CR_val = packed struct {
/// CAPTURE [0:0]
/// Capture enable
CAPTURE: u1 = 0,
/// CM [1:1]
/// Capture mode
CM: u1 = 0,
/// CROP [2:2]
/// Crop feature
CROP: u1 = 0,
/// JPEG [3:3]
/// JPEG format
JPEG: u1 = 0,
/// ESS [4:4]
/// Embedded synchronization
ESS: u1 = 0,
/// PCKPOL [5:5]
/// Pixel clock polarity
PCKPOL: u1 = 0,
/// HSPOL [6:6]
/// Horizontal synchronization
HSPOL: u1 = 0,
/// VSPOL [7:7]
/// Vertical synchronization
VSPOL: u1 = 0,
/// FCRC [8:9]
/// Frame capture rate control
FCRC: u2 = 0,
/// EDM [10:11]
/// Extended data mode
EDM: u2 = 0,
/// unused [12:13]
_unused12: u2 = 0,
/// ENABLE [14:14]
/// DCMI enable
ENABLE: u1 = 0,
/// unused [15:15]
_unused15: u1 = 0,
/// BSM [16:17]
/// Byte Select mode
BSM: u2 = 0,
/// OEBS [18:18]
/// Odd/Even Byte Select
OEBS: u1 = 0,
/// LSM [19:19]
/// Line Select mode
LSM: u1 = 0,
/// OELS [20:20]
/// Odd/Even Line Select
OELS: u1 = 0,
/// unused [21:31]
_unused21: u3 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR = MMIO(CR_val).init(base_address + 0x0);

/// SR
const SR_val = packed struct {
/// HSYNC [0:0]
/// HSYNC
HSYNC: u1 = 0,
/// VSYNC [1:1]
/// VSYNC
VSYNC: u1 = 0,
/// FNE [2:2]
/// FIFO not empty
FNE: u1 = 0,
/// unused [3:31]
_unused3: u5 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x4);

/// RIS
const RIS_val = packed struct {
/// FRAME_RIS [0:0]
/// Capture complete raw interrupt
FRAME_RIS: u1 = 0,
/// OVR_RIS [1:1]
/// Overrun raw interrupt
OVR_RIS: u1 = 0,
/// ERR_RIS [2:2]
/// Synchronization error raw interrupt
ERR_RIS: u1 = 0,
/// VSYNC_RIS [3:3]
/// VSYNC raw interrupt status
VSYNC_RIS: u1 = 0,
/// LINE_RIS [4:4]
/// Line raw interrupt status
LINE_RIS: u1 = 0,
/// unused [5:31]
_unused5: u3 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// raw interrupt status register
pub const RIS = MMIO(RIS_val).init(base_address + 0x8);

/// IER
const IER_val = packed struct {
/// FRAME_IE [0:0]
/// Capture complete interrupt
FRAME_IE: u1 = 0,
/// OVR_IE [1:1]
/// Overrun interrupt enable
OVR_IE: u1 = 0,
/// ERR_IE [2:2]
/// Synchronization error interrupt
ERR_IE: u1 = 0,
/// VSYNC_IE [3:3]
/// VSYNC interrupt enable
VSYNC_IE: u1 = 0,
/// LINE_IE [4:4]
/// Line interrupt enable
LINE_IE: u1 = 0,
/// unused [5:31]
_unused5: u3 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// interrupt enable register
pub const IER = MMIO(IER_val).init(base_address + 0xc);

/// MIS
const MIS_val = packed struct {
/// FRAME_MIS [0:0]
/// Capture complete masked interrupt
FRAME_MIS: u1 = 0,
/// OVR_MIS [1:1]
/// Overrun masked interrupt
OVR_MIS: u1 = 0,
/// ERR_MIS [2:2]
/// Synchronization error masked interrupt
ERR_MIS: u1 = 0,
/// VSYNC_MIS [3:3]
/// VSYNC masked interrupt
VSYNC_MIS: u1 = 0,
/// LINE_MIS [4:4]
/// Line masked interrupt
LINE_MIS: u1 = 0,
/// unused [5:31]
_unused5: u3 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// masked interrupt status
pub const MIS = MMIO(MIS_val).init(base_address + 0x10);

/// ICR
const ICR_val = packed struct {
/// FRAME_ISC [0:0]
/// Capture complete interrupt status
FRAME_ISC: u1 = 0,
/// OVR_ISC [1:1]
/// Overrun interrupt status
OVR_ISC: u1 = 0,
/// ERR_ISC [2:2]
/// Synchronization error interrupt status
ERR_ISC: u1 = 0,
/// VSYNC_ISC [3:3]
/// Vertical synch interrupt status
VSYNC_ISC: u1 = 0,
/// LINE_ISC [4:4]
/// line interrupt status
LINE_ISC: u1 = 0,
/// unused [5:31]
_unused5: u3 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// interrupt clear register
pub const ICR = MMIO(ICR_val).init(base_address + 0x14);

/// ESCR
const ESCR_val = packed struct {
/// FSC [0:7]
/// Frame start delimiter code
FSC: u8 = 0,
/// LSC [8:15]
/// Line start delimiter code
LSC: u8 = 0,
/// LEC [16:23]
/// Line end delimiter code
LEC: u8 = 0,
/// FEC [24:31]
/// Frame end delimiter code
FEC: u8 = 0,
};
/// embedded synchronization code
pub const ESCR = MMIO(ESCR_val).init(base_address + 0x18);

/// ESUR
const ESUR_val = packed struct {
/// FSU [0:7]
/// Frame start delimiter
FSU: u8 = 0,
/// LSU [8:15]
/// Line start delimiter
LSU: u8 = 0,
/// LEU [16:23]
/// Line end delimiter unmask
LEU: u8 = 0,
/// FEU [24:31]
/// Frame end delimiter unmask
FEU: u8 = 0,
};
/// embedded synchronization unmask
pub const ESUR = MMIO(ESUR_val).init(base_address + 0x1c);

/// CWSTRT
const CWSTRT_val = packed struct {
/// HOFFCNT [0:13]
/// Horizontal offset count
HOFFCNT: u14 = 0,
/// unused [14:15]
_unused14: u2 = 0,
/// VST [16:28]
/// Vertical start line count
VST: u13 = 0,
/// unused [29:31]
_unused29: u3 = 0,
};
/// crop window start
pub const CWSTRT = MMIO(CWSTRT_val).init(base_address + 0x20);

/// CWSIZE
const CWSIZE_val = packed struct {
/// CAPCNT [0:13]
/// Capture count
CAPCNT: u14 = 0,
/// unused [14:15]
_unused14: u2 = 0,
/// VLINE [16:29]
/// Vertical line count
VLINE: u14 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// crop window size
pub const CWSIZE = MMIO(CWSIZE_val).init(base_address + 0x24);

/// DR
const DR_val = packed struct {
/// Byte0 [0:7]
/// Data byte 0
Byte0: u8 = 0,
/// Byte1 [8:15]
/// Data byte 1
Byte1: u8 = 0,
/// Byte2 [16:23]
/// Data byte 2
Byte2: u8 = 0,
/// Byte3 [24:31]
/// Data byte 3
Byte3: u8 = 0,
};
/// data register
pub const DR = MMIO(DR_val).init(base_address + 0x28);
};

/// Flexible memory controller
pub const FMC = struct {

const base_address = 0xa0000000;
/// BCR1
const BCR1_val = packed struct {
/// MBKEN [0:0]
/// MBKEN
MBKEN: u1 = 0,
/// MUXEN [1:1]
/// MUXEN
MUXEN: u1 = 0,
/// MTYP [2:3]
/// MTYP
MTYP: u2 = 0,
/// MWID [4:5]
/// MWID
MWID: u2 = 1,
/// FACCEN [6:6]
/// FACCEN
FACCEN: u1 = 1,
/// unused [7:7]
_unused7: u1 = 1,
/// BURSTEN [8:8]
/// BURSTEN
BURSTEN: u1 = 0,
/// WAITPOL [9:9]
/// WAITPOL
WAITPOL: u1 = 0,
/// unused [10:10]
_unused10: u1 = 0,
/// WAITCFG [11:11]
/// WAITCFG
WAITCFG: u1 = 0,
/// WREN [12:12]
/// WREN
WREN: u1 = 1,
/// WAITEN [13:13]
/// WAITEN
WAITEN: u1 = 1,
/// EXTMOD [14:14]
/// EXTMOD
EXTMOD: u1 = 0,
/// ASYNCWAIT [15:15]
/// ASYNCWAIT
ASYNCWAIT: u1 = 0,
/// unused [16:18]
_unused16: u3 = 0,
/// CBURSTRW [19:19]
/// CBURSTRW
CBURSTRW: u1 = 0,
/// CCLKEN [20:20]
/// CCLKEN
CCLKEN: u1 = 0,
/// unused [21:31]
_unused21: u3 = 0,
_unused24: u8 = 0,
};
/// SRAM/NOR-Flash chip-select control register
pub const BCR1 = MMIO(BCR1_val).init(base_address + 0x0);

/// BTR1
const BTR1_val = packed struct {
/// ADDSET [0:3]
/// ADDSET
ADDSET: u4 = 15,
/// ADDHLD [4:7]
/// ADDHLD
ADDHLD: u4 = 15,
/// DATAST [8:15]
/// DATAST
DATAST: u8 = 255,
/// BUSTURN [16:19]
/// BUSTURN
BUSTURN: u4 = 15,
/// CLKDIV [20:23]
/// CLKDIV
CLKDIV: u4 = 15,
/// DATLAT [24:27]
/// DATLAT
DATLAT: u4 = 15,
/// ACCMOD [28:29]
/// ACCMOD
ACCMOD: u2 = 3,
/// unused [30:31]
_unused30: u2 = 3,
};
/// SRAM/NOR-Flash chip-select timing register
pub const BTR1 = MMIO(BTR1_val).init(base_address + 0x4);

/// BCR2
const BCR2_val = packed struct {
/// MBKEN [0:0]
/// MBKEN
MBKEN: u1 = 0,
/// MUXEN [1:1]
/// MUXEN
MUXEN: u1 = 0,
/// MTYP [2:3]
/// MTYP
MTYP: u2 = 0,
/// MWID [4:5]
/// MWID
MWID: u2 = 1,
/// FACCEN [6:6]
/// FACCEN
FACCEN: u1 = 1,
/// unused [7:7]
_unused7: u1 = 1,
/// BURSTEN [8:8]
/// BURSTEN
BURSTEN: u1 = 0,
/// WAITPOL [9:9]
/// WAITPOL
WAITPOL: u1 = 0,
/// WRAPMOD [10:10]
/// WRAPMOD
WRAPMOD: u1 = 0,
/// WAITCFG [11:11]
/// WAITCFG
WAITCFG: u1 = 0,
/// WREN [12:12]
/// WREN
WREN: u1 = 1,
/// WAITEN [13:13]
/// WAITEN
WAITEN: u1 = 1,
/// EXTMOD [14:14]
/// EXTMOD
EXTMOD: u1 = 0,
/// ASYNCWAIT [15:15]
/// ASYNCWAIT
ASYNCWAIT: u1 = 0,
/// unused [16:18]
_unused16: u3 = 0,
/// CBURSTRW [19:19]
/// CBURSTRW
CBURSTRW: u1 = 0,
/// unused [20:31]
_unused20: u4 = 0,
_unused24: u8 = 0,
};
/// SRAM/NOR-Flash chip-select control register
pub const BCR2 = MMIO(BCR2_val).init(base_address + 0x8);

/// BTR2
const BTR2_val = packed struct {
/// ADDSET [0:3]
/// ADDSET
ADDSET: u4 = 15,
/// ADDHLD [4:7]
/// ADDHLD
ADDHLD: u4 = 15,
/// DATAST [8:15]
/// DATAST
DATAST: u8 = 255,
/// BUSTURN [16:19]
/// BUSTURN
BUSTURN: u4 = 15,
/// CLKDIV [20:23]
/// CLKDIV
CLKDIV: u4 = 15,
/// DATLAT [24:27]
/// DATLAT
DATLAT: u4 = 15,
/// ACCMOD [28:29]
/// ACCMOD
ACCMOD: u2 = 3,
/// unused [30:31]
_unused30: u2 = 3,
};
/// SRAM/NOR-Flash chip-select timing register
pub const BTR2 = MMIO(BTR2_val).init(base_address + 0xc);

/// BCR3
const BCR3_val = packed struct {
/// MBKEN [0:0]
/// MBKEN
MBKEN: u1 = 0,
/// MUXEN [1:1]
/// MUXEN
MUXEN: u1 = 0,
/// MTYP [2:3]
/// MTYP
MTYP: u2 = 0,
/// MWID [4:5]
/// MWID
MWID: u2 = 1,
/// FACCEN [6:6]
/// FACCEN
FACCEN: u1 = 1,
/// unused [7:7]
_unused7: u1 = 1,
/// BURSTEN [8:8]
/// BURSTEN
BURSTEN: u1 = 0,
/// WAITPOL [9:9]
/// WAITPOL
WAITPOL: u1 = 0,
/// WRAPMOD [10:10]
/// WRAPMOD
WRAPMOD: u1 = 0,
/// WAITCFG [11:11]
/// WAITCFG
WAITCFG: u1 = 0,
/// WREN [12:12]
/// WREN
WREN: u1 = 1,
/// WAITEN [13:13]
/// WAITEN
WAITEN: u1 = 1,
/// EXTMOD [14:14]
/// EXTMOD
EXTMOD: u1 = 0,
/// ASYNCWAIT [15:15]
/// ASYNCWAIT
ASYNCWAIT: u1 = 0,
/// unused [16:18]
_unused16: u3 = 0,
/// CBURSTRW [19:19]
/// CBURSTRW
CBURSTRW: u1 = 0,
/// unused [20:31]
_unused20: u4 = 0,
_unused24: u8 = 0,
};
/// SRAM/NOR-Flash chip-select control register
pub const BCR3 = MMIO(BCR3_val).init(base_address + 0x10);

/// BTR3
const BTR3_val = packed struct {
/// ADDSET [0:3]
/// ADDSET
ADDSET: u4 = 15,
/// ADDHLD [4:7]
/// ADDHLD
ADDHLD: u4 = 15,
/// DATAST [8:15]
/// DATAST
DATAST: u8 = 255,
/// BUSTURN [16:19]
/// BUSTURN
BUSTURN: u4 = 15,
/// CLKDIV [20:23]
/// CLKDIV
CLKDIV: u4 = 15,
/// DATLAT [24:27]
/// DATLAT
DATLAT: u4 = 15,
/// ACCMOD [28:29]
/// ACCMOD
ACCMOD: u2 = 3,
/// unused [30:31]
_unused30: u2 = 3,
};
/// SRAM/NOR-Flash chip-select timing register
pub const BTR3 = MMIO(BTR3_val).init(base_address + 0x14);

/// BCR4
const BCR4_val = packed struct {
/// MBKEN [0:0]
/// MBKEN
MBKEN: u1 = 0,
/// MUXEN [1:1]
/// MUXEN
MUXEN: u1 = 0,
/// MTYP [2:3]
/// MTYP
MTYP: u2 = 0,
/// MWID [4:5]
/// MWID
MWID: u2 = 1,
/// FACCEN [6:6]
/// FACCEN
FACCEN: u1 = 1,
/// unused [7:7]
_unused7: u1 = 1,
/// BURSTEN [8:8]
/// BURSTEN
BURSTEN: u1 = 0,
/// WAITPOL [9:9]
/// WAITPOL
WAITPOL: u1 = 0,
/// WRAPMOD [10:10]
/// WRAPMOD
WRAPMOD: u1 = 0,
/// WAITCFG [11:11]
/// WAITCFG
WAITCFG: u1 = 0,
/// WREN [12:12]
/// WREN
WREN: u1 = 1,
/// WAITEN [13:13]
/// WAITEN
WAITEN: u1 = 1,
/// EXTMOD [14:14]
/// EXTMOD
EXTMOD: u1 = 0,
/// ASYNCWAIT [15:15]
/// ASYNCWAIT
ASYNCWAIT: u1 = 0,
/// unused [16:18]
_unused16: u3 = 0,
/// CBURSTRW [19:19]
/// CBURSTRW
CBURSTRW: u1 = 0,
/// unused [20:31]
_unused20: u4 = 0,
_unused24: u8 = 0,
};
/// SRAM/NOR-Flash chip-select control register
pub const BCR4 = MMIO(BCR4_val).init(base_address + 0x18);

/// BTR4
const BTR4_val = packed struct {
/// ADDSET [0:3]
/// ADDSET
ADDSET: u4 = 15,
/// ADDHLD [4:7]
/// ADDHLD
ADDHLD: u4 = 15,
/// DATAST [8:15]
/// DATAST
DATAST: u8 = 255,
/// BUSTURN [16:19]
/// BUSTURN
BUSTURN: u4 = 15,
/// CLKDIV [20:23]
/// CLKDIV
CLKDIV: u4 = 15,
/// DATLAT [24:27]
/// DATLAT
DATLAT: u4 = 15,
/// ACCMOD [28:29]
/// ACCMOD
ACCMOD: u2 = 3,
/// unused [30:31]
_unused30: u2 = 3,
};
/// SRAM/NOR-Flash chip-select timing register
pub const BTR4 = MMIO(BTR4_val).init(base_address + 0x1c);

/// PCR2
const PCR2_val = packed struct {
/// unused [0:0]
_unused0: u1 = 0,
/// PWAITEN [1:1]
/// PWAITEN
PWAITEN: u1 = 0,
/// PBKEN [2:2]
/// PBKEN
PBKEN: u1 = 0,
/// PTYP [3:3]
/// PTYP
PTYP: u1 = 1,
/// PWID [4:5]
/// PWID
PWID: u2 = 1,
/// ECCEN [6:6]
/// ECCEN
ECCEN: u1 = 0,
/// unused [7:8]
_unused7: u1 = 0,
_unused8: u1 = 0,
/// TCLR [9:12]
/// TCLR
TCLR: u4 = 0,
/// TAR [13:16]
/// TAR
TAR: u4 = 0,
/// ECCPS [17:19]
/// ECCPS
ECCPS: u3 = 0,
/// unused [20:31]
_unused20: u4 = 0,
_unused24: u8 = 0,
};
/// PC Card/NAND Flash control register
pub const PCR2 = MMIO(PCR2_val).init(base_address + 0x60);

/// SR2
const SR2_val = packed struct {
/// IRS [0:0]
/// IRS
IRS: u1 = 0,
/// ILS [1:1]
/// ILS
ILS: u1 = 0,
/// IFS [2:2]
/// IFS
IFS: u1 = 0,
/// IREN [3:3]
/// IREN
IREN: u1 = 0,
/// ILEN [4:4]
/// ILEN
ILEN: u1 = 0,
/// IFEN [5:5]
/// IFEN
IFEN: u1 = 0,
/// FEMPT [6:6]
/// FEMPT
FEMPT: u1 = 1,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// FIFO status and interrupt register
pub const SR2 = MMIO(SR2_val).init(base_address + 0x64);

/// PMEM2
const PMEM2_val = packed struct {
/// MEMSETx [0:7]
/// MEMSETx
MEMSETx: u8 = 252,
/// MEMWAITx [8:15]
/// MEMWAITx
MEMWAITx: u8 = 252,
/// MEMHOLDx [16:23]
/// MEMHOLDx
MEMHOLDx: u8 = 252,
/// MEMHIZx [24:31]
/// MEMHIZx
MEMHIZx: u8 = 252,
};
/// Common memory space timing register
pub const PMEM2 = MMIO(PMEM2_val).init(base_address + 0x68);

/// PATT2
const PATT2_val = packed struct {
/// ATTSETx [0:7]
/// ATTSETx
ATTSETx: u8 = 252,
/// ATTWAITx [8:15]
/// ATTWAITx
ATTWAITx: u8 = 252,
/// ATTHOLDx [16:23]
/// ATTHOLDx
ATTHOLDx: u8 = 252,
/// ATTHIZx [24:31]
/// ATTHIZx
ATTHIZx: u8 = 252,
};
/// Attribute memory space timing register
pub const PATT2 = MMIO(PATT2_val).init(base_address + 0x6c);

/// ECCR2
const ECCR2_val = packed struct {
/// ECCx [0:31]
/// ECCx
ECCx: u32 = 0,
};
/// ECC result register 2
pub const ECCR2 = MMIO(ECCR2_val).init(base_address + 0x74);

/// PCR3
const PCR3_val = packed struct {
/// unused [0:0]
_unused0: u1 = 0,
/// PWAITEN [1:1]
/// PWAITEN
PWAITEN: u1 = 0,
/// PBKEN [2:2]
/// PBKEN
PBKEN: u1 = 0,
/// PTYP [3:3]
/// PTYP
PTYP: u1 = 1,
/// PWID [4:5]
/// PWID
PWID: u2 = 1,
/// ECCEN [6:6]
/// ECCEN
ECCEN: u1 = 0,
/// unused [7:8]
_unused7: u1 = 0,
_unused8: u1 = 0,
/// TCLR [9:12]
/// TCLR
TCLR: u4 = 0,
/// TAR [13:16]
/// TAR
TAR: u4 = 0,
/// ECCPS [17:19]
/// ECCPS
ECCPS: u3 = 0,
/// unused [20:31]
_unused20: u4 = 0,
_unused24: u8 = 0,
};
/// PC Card/NAND Flash control register
pub const PCR3 = MMIO(PCR3_val).init(base_address + 0x80);

/// SR3
const SR3_val = packed struct {
/// IRS [0:0]
/// IRS
IRS: u1 = 0,
/// ILS [1:1]
/// ILS
ILS: u1 = 0,
/// IFS [2:2]
/// IFS
IFS: u1 = 0,
/// IREN [3:3]
/// IREN
IREN: u1 = 0,
/// ILEN [4:4]
/// ILEN
ILEN: u1 = 0,
/// IFEN [5:5]
/// IFEN
IFEN: u1 = 0,
/// FEMPT [6:6]
/// FEMPT
FEMPT: u1 = 1,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// FIFO status and interrupt register
pub const SR3 = MMIO(SR3_val).init(base_address + 0x84);

/// PMEM3
const PMEM3_val = packed struct {
/// MEMSETx [0:7]
/// MEMSETx
MEMSETx: u8 = 252,
/// MEMWAITx [8:15]
/// MEMWAITx
MEMWAITx: u8 = 252,
/// MEMHOLDx [16:23]
/// MEMHOLDx
MEMHOLDx: u8 = 252,
/// MEMHIZx [24:31]
/// MEMHIZx
MEMHIZx: u8 = 252,
};
/// Common memory space timing register
pub const PMEM3 = MMIO(PMEM3_val).init(base_address + 0x88);

/// PATT3
const PATT3_val = packed struct {
/// ATTSETx [0:7]
/// ATTSETx
ATTSETx: u8 = 252,
/// ATTWAITx [8:15]
/// ATTWAITx
ATTWAITx: u8 = 252,
/// ATTHOLDx [16:23]
/// ATTHOLDx
ATTHOLDx: u8 = 252,
/// ATTHIZx [24:31]
/// ATTHIZx
ATTHIZx: u8 = 252,
};
/// Attribute memory space timing register
pub const PATT3 = MMIO(PATT3_val).init(base_address + 0x8c);

/// ECCR3
const ECCR3_val = packed struct {
/// ECCx [0:31]
/// ECCx
ECCx: u32 = 0,
};
/// ECC result register 3
pub const ECCR3 = MMIO(ECCR3_val).init(base_address + 0x94);

/// PCR4
const PCR4_val = packed struct {
/// unused [0:0]
_unused0: u1 = 0,
/// PWAITEN [1:1]
/// PWAITEN
PWAITEN: u1 = 0,
/// PBKEN [2:2]
/// PBKEN
PBKEN: u1 = 0,
/// PTYP [3:3]
/// PTYP
PTYP: u1 = 1,
/// PWID [4:5]
/// PWID
PWID: u2 = 1,
/// ECCEN [6:6]
/// ECCEN
ECCEN: u1 = 0,
/// unused [7:8]
_unused7: u1 = 0,
_unused8: u1 = 0,
/// TCLR [9:12]
/// TCLR
TCLR: u4 = 0,
/// TAR [13:16]
/// TAR
TAR: u4 = 0,
/// ECCPS [17:19]
/// ECCPS
ECCPS: u3 = 0,
/// unused [20:31]
_unused20: u4 = 0,
_unused24: u8 = 0,
};
/// PC Card/NAND Flash control register
pub const PCR4 = MMIO(PCR4_val).init(base_address + 0xa0);

/// SR4
const SR4_val = packed struct {
/// IRS [0:0]
/// IRS
IRS: u1 = 0,
/// ILS [1:1]
/// ILS
ILS: u1 = 0,
/// IFS [2:2]
/// IFS
IFS: u1 = 0,
/// IREN [3:3]
/// IREN
IREN: u1 = 0,
/// ILEN [4:4]
/// ILEN
ILEN: u1 = 0,
/// IFEN [5:5]
/// IFEN
IFEN: u1 = 0,
/// FEMPT [6:6]
/// FEMPT
FEMPT: u1 = 1,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// FIFO status and interrupt register
pub const SR4 = MMIO(SR4_val).init(base_address + 0xa4);

/// PMEM4
const PMEM4_val = packed struct {
/// MEMSETx [0:7]
/// MEMSETx
MEMSETx: u8 = 252,
/// MEMWAITx [8:15]
/// MEMWAITx
MEMWAITx: u8 = 252,
/// MEMHOLDx [16:23]
/// MEMHOLDx
MEMHOLDx: u8 = 252,
/// MEMHIZx [24:31]
/// MEMHIZx
MEMHIZx: u8 = 252,
};
/// Common memory space timing register
pub const PMEM4 = MMIO(PMEM4_val).init(base_address + 0xa8);

/// PATT4
const PATT4_val = packed struct {
/// ATTSETx [0:7]
/// ATTSETx
ATTSETx: u8 = 252,
/// ATTWAITx [8:15]
/// ATTWAITx
ATTWAITx: u8 = 252,
/// ATTHOLDx [16:23]
/// ATTHOLDx
ATTHOLDx: u8 = 252,
/// ATTHIZx [24:31]
/// ATTHIZx
ATTHIZx: u8 = 252,
};
/// Attribute memory space timing register
pub const PATT4 = MMIO(PATT4_val).init(base_address + 0xac);

/// PIO4
const PIO4_val = packed struct {
/// IOSETx [0:7]
/// IOSETx
IOSETx: u8 = 252,
/// IOWAITx [8:15]
/// IOWAITx
IOWAITx: u8 = 252,
/// IOHOLDx [16:23]
/// IOHOLDx
IOHOLDx: u8 = 252,
/// IOHIZx [24:31]
/// IOHIZx
IOHIZx: u8 = 252,
};
/// I/O space timing register 4
pub const PIO4 = MMIO(PIO4_val).init(base_address + 0xb0);

/// BWTR1
const BWTR1_val = packed struct {
/// ADDSET [0:3]
/// ADDSET
ADDSET: u4 = 15,
/// ADDHLD [4:7]
/// ADDHLD
ADDHLD: u4 = 15,
/// DATAST [8:15]
/// DATAST
DATAST: u8 = 255,
/// unused [16:19]
_unused16: u4 = 15,
/// CLKDIV [20:23]
/// CLKDIV
CLKDIV: u4 = 15,
/// DATLAT [24:27]
/// DATLAT
DATLAT: u4 = 15,
/// ACCMOD [28:29]
/// ACCMOD
ACCMOD: u2 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// SRAM/NOR-Flash write timing registers
pub const BWTR1 = MMIO(BWTR1_val).init(base_address + 0x104);

/// BWTR2
const BWTR2_val = packed struct {
/// ADDSET [0:3]
/// ADDSET
ADDSET: u4 = 15,
/// ADDHLD [4:7]
/// ADDHLD
ADDHLD: u4 = 15,
/// DATAST [8:15]
/// DATAST
DATAST: u8 = 255,
/// unused [16:19]
_unused16: u4 = 15,
/// CLKDIV [20:23]
/// CLKDIV
CLKDIV: u4 = 15,
/// DATLAT [24:27]
/// DATLAT
DATLAT: u4 = 15,
/// ACCMOD [28:29]
/// ACCMOD
ACCMOD: u2 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// SRAM/NOR-Flash write timing registers
pub const BWTR2 = MMIO(BWTR2_val).init(base_address + 0x10c);

/// BWTR3
const BWTR3_val = packed struct {
/// ADDSET [0:3]
/// ADDSET
ADDSET: u4 = 15,
/// ADDHLD [4:7]
/// ADDHLD
ADDHLD: u4 = 15,
/// DATAST [8:15]
/// DATAST
DATAST: u8 = 255,
/// unused [16:19]
_unused16: u4 = 15,
/// CLKDIV [20:23]
/// CLKDIV
CLKDIV: u4 = 15,
/// DATLAT [24:27]
/// DATLAT
DATLAT: u4 = 15,
/// ACCMOD [28:29]
/// ACCMOD
ACCMOD: u2 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// SRAM/NOR-Flash write timing registers
pub const BWTR3 = MMIO(BWTR3_val).init(base_address + 0x114);

/// BWTR4
const BWTR4_val = packed struct {
/// ADDSET [0:3]
/// ADDSET
ADDSET: u4 = 15,
/// ADDHLD [4:7]
/// ADDHLD
ADDHLD: u4 = 15,
/// DATAST [8:15]
/// DATAST
DATAST: u8 = 255,
/// unused [16:19]
_unused16: u4 = 15,
/// CLKDIV [20:23]
/// CLKDIV
CLKDIV: u4 = 15,
/// DATLAT [24:27]
/// DATLAT
DATLAT: u4 = 15,
/// ACCMOD [28:29]
/// ACCMOD
ACCMOD: u2 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// SRAM/NOR-Flash write timing registers
pub const BWTR4 = MMIO(BWTR4_val).init(base_address + 0x11c);

/// SDCR1
const SDCR1_val = packed struct {
/// NC [0:1]
/// Number of column address
NC: u2 = 0,
/// NR [2:3]
/// Number of row address bits
NR: u2 = 0,
/// MWID [4:5]
/// Memory data bus width
MWID: u2 = 1,
/// NB [6:6]
/// Number of internal banks
NB: u1 = 1,
/// CAS [7:8]
/// CAS latency
CAS: u2 = 1,
/// WP [9:9]
/// Write protection
WP: u1 = 1,
/// SDCLK [10:11]
/// SDRAM clock configuration
SDCLK: u2 = 0,
/// RBURST [12:12]
/// Burst read
RBURST: u1 = 0,
/// RPIPE [13:14]
/// Read pipe
RPIPE: u2 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// SDRAM Control Register 1
pub const SDCR1 = MMIO(SDCR1_val).init(base_address + 0x140);

/// SDCR2
const SDCR2_val = packed struct {
/// NC [0:1]
/// Number of column address
NC: u2 = 0,
/// NR [2:3]
/// Number of row address bits
NR: u2 = 0,
/// MWID [4:5]
/// Memory data bus width
MWID: u2 = 1,
/// NB [6:6]
/// Number of internal banks
NB: u1 = 1,
/// CAS [7:8]
/// CAS latency
CAS: u2 = 1,
/// WP [9:9]
/// Write protection
WP: u1 = 1,
/// SDCLK [10:11]
/// SDRAM clock configuration
SDCLK: u2 = 0,
/// RBURST [12:12]
/// Burst read
RBURST: u1 = 0,
/// RPIPE [13:14]
/// Read pipe
RPIPE: u2 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// SDRAM Control Register 2
pub const SDCR2 = MMIO(SDCR2_val).init(base_address + 0x144);

/// SDTR1
const SDTR1_val = packed struct {
/// TMRD [0:3]
/// Load Mode Register to
TMRD: u4 = 15,
/// TXSR [4:7]
/// Exit self-refresh delay
TXSR: u4 = 15,
/// TRAS [8:11]
/// Self refresh time
TRAS: u4 = 15,
/// TRC [12:15]
/// Row cycle delay
TRC: u4 = 15,
/// TWR [16:19]
/// Recovery delay
TWR: u4 = 15,
/// TRP [20:23]
/// Row precharge delay
TRP: u4 = 15,
/// TRCD [24:27]
/// Row to column delay
TRCD: u4 = 15,
/// unused [28:31]
_unused28: u4 = 0,
};
/// SDRAM Timing register 1
pub const SDTR1 = MMIO(SDTR1_val).init(base_address + 0x148);

/// SDTR2
const SDTR2_val = packed struct {
/// TMRD [0:3]
/// Load Mode Register to
TMRD: u4 = 15,
/// TXSR [4:7]
/// Exit self-refresh delay
TXSR: u4 = 15,
/// TRAS [8:11]
/// Self refresh time
TRAS: u4 = 15,
/// TRC [12:15]
/// Row cycle delay
TRC: u4 = 15,
/// TWR [16:19]
/// Recovery delay
TWR: u4 = 15,
/// TRP [20:23]
/// Row precharge delay
TRP: u4 = 15,
/// TRCD [24:27]
/// Row to column delay
TRCD: u4 = 15,
/// unused [28:31]
_unused28: u4 = 0,
};
/// SDRAM Timing register 2
pub const SDTR2 = MMIO(SDTR2_val).init(base_address + 0x14c);

/// SDCMR
const SDCMR_val = packed struct {
/// MODE [0:2]
/// Command mode
MODE: u3 = 0,
/// CTB2 [3:3]
/// Command target bank 2
CTB2: u1 = 0,
/// CTB1 [4:4]
/// Command target bank 1
CTB1: u1 = 0,
/// NRFS [5:8]
/// Number of Auto-refresh
NRFS: u4 = 0,
/// MRD [9:21]
/// Mode Register definition
MRD: u13 = 0,
/// unused [22:31]
_unused22: u2 = 0,
_unused24: u8 = 0,
};
/// SDRAM Command Mode register
pub const SDCMR = MMIO(SDCMR_val).init(base_address + 0x150);

/// SDRTR
const SDRTR_val = packed struct {
/// CRE [0:0]
/// Clear Refresh error flag
CRE: u1 = 0,
/// COUNT [1:13]
/// Refresh Timer Count
COUNT: u13 = 0,
/// REIE [14:14]
/// RES Interrupt Enable
REIE: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// SDRAM Refresh Timer register
pub const SDRTR = MMIO(SDRTR_val).init(base_address + 0x154);

/// SDSR
const SDSR_val = packed struct {
/// RE [0:0]
/// Refresh error flag
RE: u1 = 0,
/// MODES1 [1:2]
/// Status Mode for Bank 1
MODES1: u2 = 0,
/// MODES2 [3:4]
/// Status Mode for Bank 2
MODES2: u2 = 0,
/// BUSY [5:5]
/// Busy status
BUSY: u1 = 0,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// SDRAM Status register
pub const SDSR = MMIO(SDSR_val).init(base_address + 0x158);
};

/// Debug support
pub const DBG = struct {

const base_address = 0xe0042000;
/// DBGMCU_IDCODE
const DBGMCU_IDCODE_val = packed struct {
/// DEV_ID [0:11]
/// DEV_ID
DEV_ID: u12 = 1041,
/// unused [12:15]
_unused12: u4 = 6,
/// REV_ID [16:31]
/// REV_ID
REV_ID: u16 = 4096,
};
/// IDCODE
pub const DBGMCU_IDCODE = MMIO(DBGMCU_IDCODE_val).init(base_address + 0x0);

/// DBGMCU_CR
const DBGMCU_CR_val = packed struct {
/// DBG_SLEEP [0:0]
/// DBG_SLEEP
DBG_SLEEP: u1 = 0,
/// DBG_STOP [1:1]
/// DBG_STOP
DBG_STOP: u1 = 0,
/// DBG_STANDBY [2:2]
/// DBG_STANDBY
DBG_STANDBY: u1 = 0,
/// unused [3:4]
_unused3: u2 = 0,
/// TRACE_IOEN [5:5]
/// TRACE_IOEN
TRACE_IOEN: u1 = 0,
/// TRACE_MODE [6:7]
/// TRACE_MODE
TRACE_MODE: u2 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control Register
pub const DBGMCU_CR = MMIO(DBGMCU_CR_val).init(base_address + 0x4);

/// DBGMCU_APB1_FZ
const DBGMCU_APB1_FZ_val = packed struct {
/// DBG_TIM2_STOP [0:0]
/// DBG_TIM2_STOP
DBG_TIM2_STOP: u1 = 0,
/// DBG_TIM3_STOP [1:1]
/// DBG_TIM3 _STOP
DBG_TIM3_STOP: u1 = 0,
/// DBG_TIM4_STOP [2:2]
/// DBG_TIM4_STOP
DBG_TIM4_STOP: u1 = 0,
/// DBG_TIM5_STOP [3:3]
/// DBG_TIM5_STOP
DBG_TIM5_STOP: u1 = 0,
/// DBG_TIM6_STOP [4:4]
/// DBG_TIM6_STOP
DBG_TIM6_STOP: u1 = 0,
/// DBG_TIM7_STOP [5:5]
/// DBG_TIM7_STOP
DBG_TIM7_STOP: u1 = 0,
/// DBG_TIM12_STOP [6:6]
/// DBG_TIM12_STOP
DBG_TIM12_STOP: u1 = 0,
/// DBG_TIM13_STOP [7:7]
/// DBG_TIM13_STOP
DBG_TIM13_STOP: u1 = 0,
/// DBG_TIM14_STOP [8:8]
/// DBG_TIM14_STOP
DBG_TIM14_STOP: u1 = 0,
/// unused [9:9]
_unused9: u1 = 0,
/// DBG_RTC_STOP [10:10]
/// RTC stopped when Core is
DBG_RTC_STOP: u1 = 0,
/// DBG_WWDG_STOP [11:11]
/// DBG_WWDG_STOP
DBG_WWDG_STOP: u1 = 0,
/// DBG_IWDEG_STOP [12:12]
/// DBG_IWDEG_STOP
DBG_IWDEG_STOP: u1 = 0,
/// unused [13:20]
_unused13: u3 = 0,
_unused16: u5 = 0,
/// DBG_J2C1_SMBUS_TIMEOUT [21:21]
/// DBG_J2C1_SMBUS_TIMEOUT
DBG_J2C1_SMBUS_TIMEOUT: u1 = 0,
/// DBG_J2C2_SMBUS_TIMEOUT [22:22]
/// DBG_J2C2_SMBUS_TIMEOUT
DBG_J2C2_SMBUS_TIMEOUT: u1 = 0,
/// DBG_J2C3SMBUS_TIMEOUT [23:23]
/// DBG_J2C3SMBUS_TIMEOUT
DBG_J2C3SMBUS_TIMEOUT: u1 = 0,
/// DBG_I2CFMP_SMBUS_TIMEOUT [24:24]
/// SMBUS timeout mode stopped when Core is
DBG_I2CFMP_SMBUS_TIMEOUT: u1 = 0,
/// DBG_CAN1_STOP [25:25]
/// DBG_CAN1_STOP
DBG_CAN1_STOP: u1 = 0,
/// DBG_CAN2_STOP [26:26]
/// DBG_CAN2_STOP
DBG_CAN2_STOP: u1 = 0,
/// unused [27:31]
_unused27: u5 = 0,
};
/// Debug MCU APB1 Freeze registe
pub const DBGMCU_APB1_FZ = MMIO(DBGMCU_APB1_FZ_val).init(base_address + 0x8);

/// DBGMCU_APB2_FZ
const DBGMCU_APB2_FZ_val = packed struct {
/// DBG_TIM1_STOP [0:0]
/// TIM1 counter stopped when core is
DBG_TIM1_STOP: u1 = 0,
/// DBG_TIM8_STOP [1:1]
/// TIM8 counter stopped when core is
DBG_TIM8_STOP: u1 = 0,
/// unused [2:15]
_unused2: u6 = 0,
_unused8: u8 = 0,
/// DBG_TIM9_STOP [16:16]
/// TIM9 counter stopped when core is
DBG_TIM9_STOP: u1 = 0,
/// DBG_TIM10_STOP [17:17]
/// TIM10 counter stopped when core is
DBG_TIM10_STOP: u1 = 0,
/// DBG_TIM11_STOP [18:18]
/// TIM11 counter stopped when core is
DBG_TIM11_STOP: u1 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// Debug MCU APB2 Freeze registe
pub const DBGMCU_APB2_FZ = MMIO(DBGMCU_APB2_FZ_val).init(base_address + 0xc);
};

/// DMA controller
pub const DMA2 = struct {

const base_address = 0x40026400;
/// LISR
const LISR_val = packed struct {
/// FEIF0 [0:0]
/// Stream x FIFO error interrupt flag
FEIF0: u1 = 0,
/// unused [1:1]
_unused1: u1 = 0,
/// DMEIF0 [2:2]
/// Stream x direct mode error interrupt
DMEIF0: u1 = 0,
/// TEIF0 [3:3]
/// Stream x transfer error interrupt flag
TEIF0: u1 = 0,
/// HTIF0 [4:4]
/// Stream x half transfer interrupt flag
HTIF0: u1 = 0,
/// TCIF0 [5:5]
/// Stream x transfer complete interrupt
TCIF0: u1 = 0,
/// FEIF1 [6:6]
/// Stream x FIFO error interrupt flag
FEIF1: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// DMEIF1 [8:8]
/// Stream x direct mode error interrupt
DMEIF1: u1 = 0,
/// TEIF1 [9:9]
/// Stream x transfer error interrupt flag
TEIF1: u1 = 0,
/// HTIF1 [10:10]
/// Stream x half transfer interrupt flag
HTIF1: u1 = 0,
/// TCIF1 [11:11]
/// Stream x transfer complete interrupt
TCIF1: u1 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// FEIF2 [16:16]
/// Stream x FIFO error interrupt flag
FEIF2: u1 = 0,
/// unused [17:17]
_unused17: u1 = 0,
/// DMEIF2 [18:18]
/// Stream x direct mode error interrupt
DMEIF2: u1 = 0,
/// TEIF2 [19:19]
/// Stream x transfer error interrupt flag
TEIF2: u1 = 0,
/// HTIF2 [20:20]
/// Stream x half transfer interrupt flag
HTIF2: u1 = 0,
/// TCIF2 [21:21]
/// Stream x transfer complete interrupt
TCIF2: u1 = 0,
/// FEIF3 [22:22]
/// Stream x FIFO error interrupt flag
FEIF3: u1 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// DMEIF3 [24:24]
/// Stream x direct mode error interrupt
DMEIF3: u1 = 0,
/// TEIF3 [25:25]
/// Stream x transfer error interrupt flag
TEIF3: u1 = 0,
/// HTIF3 [26:26]
/// Stream x half transfer interrupt flag
HTIF3: u1 = 0,
/// TCIF3 [27:27]
/// Stream x transfer complete interrupt
TCIF3: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// low interrupt status register
pub const LISR = MMIO(LISR_val).init(base_address + 0x0);

/// HISR
const HISR_val = packed struct {
/// FEIF4 [0:0]
/// Stream x FIFO error interrupt flag
FEIF4: u1 = 0,
/// unused [1:1]
_unused1: u1 = 0,
/// DMEIF4 [2:2]
/// Stream x direct mode error interrupt
DMEIF4: u1 = 0,
/// TEIF4 [3:3]
/// Stream x transfer error interrupt flag
TEIF4: u1 = 0,
/// HTIF4 [4:4]
/// Stream x half transfer interrupt flag
HTIF4: u1 = 0,
/// TCIF4 [5:5]
/// Stream x transfer complete interrupt
TCIF4: u1 = 0,
/// FEIF5 [6:6]
/// Stream x FIFO error interrupt flag
FEIF5: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// DMEIF5 [8:8]
/// Stream x direct mode error interrupt
DMEIF5: u1 = 0,
/// TEIF5 [9:9]
/// Stream x transfer error interrupt flag
TEIF5: u1 = 0,
/// HTIF5 [10:10]
/// Stream x half transfer interrupt flag
HTIF5: u1 = 0,
/// TCIF5 [11:11]
/// Stream x transfer complete interrupt
TCIF5: u1 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// FEIF6 [16:16]
/// Stream x FIFO error interrupt flag
FEIF6: u1 = 0,
/// unused [17:17]
_unused17: u1 = 0,
/// DMEIF6 [18:18]
/// Stream x direct mode error interrupt
DMEIF6: u1 = 0,
/// TEIF6 [19:19]
/// Stream x transfer error interrupt flag
TEIF6: u1 = 0,
/// HTIF6 [20:20]
/// Stream x half transfer interrupt flag
HTIF6: u1 = 0,
/// TCIF6 [21:21]
/// Stream x transfer complete interrupt
TCIF6: u1 = 0,
/// FEIF7 [22:22]
/// Stream x FIFO error interrupt flag
FEIF7: u1 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// DMEIF7 [24:24]
/// Stream x direct mode error interrupt
DMEIF7: u1 = 0,
/// TEIF7 [25:25]
/// Stream x transfer error interrupt flag
TEIF7: u1 = 0,
/// HTIF7 [26:26]
/// Stream x half transfer interrupt flag
HTIF7: u1 = 0,
/// TCIF7 [27:27]
/// Stream x transfer complete interrupt
TCIF7: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// high interrupt status register
pub const HISR = MMIO(HISR_val).init(base_address + 0x4);

/// LIFCR
const LIFCR_val = packed struct {
/// CFEIF0 [0:0]
/// Stream x clear FIFO error interrupt flag
CFEIF0: u1 = 0,
/// unused [1:1]
_unused1: u1 = 0,
/// CDMEIF0 [2:2]
/// Stream x clear direct mode error
CDMEIF0: u1 = 0,
/// CTEIF0 [3:3]
/// Stream x clear transfer error interrupt
CTEIF0: u1 = 0,
/// CHTIF0 [4:4]
/// Stream x clear half transfer interrupt
CHTIF0: u1 = 0,
/// CTCIF0 [5:5]
/// Stream x clear transfer complete
CTCIF0: u1 = 0,
/// CFEIF1 [6:6]
/// Stream x clear FIFO error interrupt flag
CFEIF1: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// CDMEIF1 [8:8]
/// Stream x clear direct mode error
CDMEIF1: u1 = 0,
/// CTEIF1 [9:9]
/// Stream x clear transfer error interrupt
CTEIF1: u1 = 0,
/// CHTIF1 [10:10]
/// Stream x clear half transfer interrupt
CHTIF1: u1 = 0,
/// CTCIF1 [11:11]
/// Stream x clear transfer complete
CTCIF1: u1 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// CFEIF2 [16:16]
/// Stream x clear FIFO error interrupt flag
CFEIF2: u1 = 0,
/// unused [17:17]
_unused17: u1 = 0,
/// CDMEIF2 [18:18]
/// Stream x clear direct mode error
CDMEIF2: u1 = 0,
/// CTEIF2 [19:19]
/// Stream x clear transfer error interrupt
CTEIF2: u1 = 0,
/// CHTIF2 [20:20]
/// Stream x clear half transfer interrupt
CHTIF2: u1 = 0,
/// CTCIF2 [21:21]
/// Stream x clear transfer complete
CTCIF2: u1 = 0,
/// CFEIF3 [22:22]
/// Stream x clear FIFO error interrupt flag
CFEIF3: u1 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// CDMEIF3 [24:24]
/// Stream x clear direct mode error
CDMEIF3: u1 = 0,
/// CTEIF3 [25:25]
/// Stream x clear transfer error interrupt
CTEIF3: u1 = 0,
/// CHTIF3 [26:26]
/// Stream x clear half transfer interrupt
CHTIF3: u1 = 0,
/// CTCIF3 [27:27]
/// Stream x clear transfer complete
CTCIF3: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// low interrupt flag clear
pub const LIFCR = MMIO(LIFCR_val).init(base_address + 0x8);

/// HIFCR
const HIFCR_val = packed struct {
/// CFEIF4 [0:0]
/// Stream x clear FIFO error interrupt flag
CFEIF4: u1 = 0,
/// unused [1:1]
_unused1: u1 = 0,
/// CDMEIF4 [2:2]
/// Stream x clear direct mode error
CDMEIF4: u1 = 0,
/// CTEIF4 [3:3]
/// Stream x clear transfer error interrupt
CTEIF4: u1 = 0,
/// CHTIF4 [4:4]
/// Stream x clear half transfer interrupt
CHTIF4: u1 = 0,
/// CTCIF4 [5:5]
/// Stream x clear transfer complete
CTCIF4: u1 = 0,
/// CFEIF5 [6:6]
/// Stream x clear FIFO error interrupt flag
CFEIF5: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// CDMEIF5 [8:8]
/// Stream x clear direct mode error
CDMEIF5: u1 = 0,
/// CTEIF5 [9:9]
/// Stream x clear transfer error interrupt
CTEIF5: u1 = 0,
/// CHTIF5 [10:10]
/// Stream x clear half transfer interrupt
CHTIF5: u1 = 0,
/// CTCIF5 [11:11]
/// Stream x clear transfer complete
CTCIF5: u1 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// CFEIF6 [16:16]
/// Stream x clear FIFO error interrupt flag
CFEIF6: u1 = 0,
/// unused [17:17]
_unused17: u1 = 0,
/// CDMEIF6 [18:18]
/// Stream x clear direct mode error
CDMEIF6: u1 = 0,
/// CTEIF6 [19:19]
/// Stream x clear transfer error interrupt
CTEIF6: u1 = 0,
/// CHTIF6 [20:20]
/// Stream x clear half transfer interrupt
CHTIF6: u1 = 0,
/// CTCIF6 [21:21]
/// Stream x clear transfer complete
CTCIF6: u1 = 0,
/// CFEIF7 [22:22]
/// Stream x clear FIFO error interrupt flag
CFEIF7: u1 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// CDMEIF7 [24:24]
/// Stream x clear direct mode error
CDMEIF7: u1 = 0,
/// CTEIF7 [25:25]
/// Stream x clear transfer error interrupt
CTEIF7: u1 = 0,
/// CHTIF7 [26:26]
/// Stream x clear half transfer interrupt
CHTIF7: u1 = 0,
/// CTCIF7 [27:27]
/// Stream x clear transfer complete
CTCIF7: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// high interrupt flag clear
pub const HIFCR = MMIO(HIFCR_val).init(base_address + 0xc);

/// S0CR
const S0CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// unused [20:20]
_unused20: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S0CR = MMIO(S0CR_val).init(base_address + 0x10);

/// S0NDTR
const S0NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S0NDTR = MMIO(S0NDTR_val).init(base_address + 0x14);

/// S0PAR
const S0PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S0PAR = MMIO(S0PAR_val).init(base_address + 0x18);

/// S0M0AR
const S0M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S0M0AR = MMIO(S0M0AR_val).init(base_address + 0x1c);

/// S0M1AR
const S0M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S0M1AR = MMIO(S0M1AR_val).init(base_address + 0x20);

/// S0FCR
const S0FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S0FCR = MMIO(S0FCR_val).init(base_address + 0x24);

/// S1CR
const S1CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// ACK [20:20]
/// ACK
ACK: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S1CR = MMIO(S1CR_val).init(base_address + 0x28);

/// S1NDTR
const S1NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S1NDTR = MMIO(S1NDTR_val).init(base_address + 0x2c);

/// S1PAR
const S1PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S1PAR = MMIO(S1PAR_val).init(base_address + 0x30);

/// S1M0AR
const S1M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S1M0AR = MMIO(S1M0AR_val).init(base_address + 0x34);

/// S1M1AR
const S1M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S1M1AR = MMIO(S1M1AR_val).init(base_address + 0x38);

/// S1FCR
const S1FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S1FCR = MMIO(S1FCR_val).init(base_address + 0x3c);

/// S2CR
const S2CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// ACK [20:20]
/// ACK
ACK: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S2CR = MMIO(S2CR_val).init(base_address + 0x40);

/// S2NDTR
const S2NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S2NDTR = MMIO(S2NDTR_val).init(base_address + 0x44);

/// S2PAR
const S2PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S2PAR = MMIO(S2PAR_val).init(base_address + 0x48);

/// S2M0AR
const S2M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S2M0AR = MMIO(S2M0AR_val).init(base_address + 0x4c);

/// S2M1AR
const S2M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S2M1AR = MMIO(S2M1AR_val).init(base_address + 0x50);

/// S2FCR
const S2FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S2FCR = MMIO(S2FCR_val).init(base_address + 0x54);

/// S3CR
const S3CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// ACK [20:20]
/// ACK
ACK: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S3CR = MMIO(S3CR_val).init(base_address + 0x58);

/// S3NDTR
const S3NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S3NDTR = MMIO(S3NDTR_val).init(base_address + 0x5c);

/// S3PAR
const S3PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S3PAR = MMIO(S3PAR_val).init(base_address + 0x60);

/// S3M0AR
const S3M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S3M0AR = MMIO(S3M0AR_val).init(base_address + 0x64);

/// S3M1AR
const S3M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S3M1AR = MMIO(S3M1AR_val).init(base_address + 0x68);

/// S3FCR
const S3FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S3FCR = MMIO(S3FCR_val).init(base_address + 0x6c);

/// S4CR
const S4CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// ACK [20:20]
/// ACK
ACK: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S4CR = MMIO(S4CR_val).init(base_address + 0x70);

/// S4NDTR
const S4NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S4NDTR = MMIO(S4NDTR_val).init(base_address + 0x74);

/// S4PAR
const S4PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S4PAR = MMIO(S4PAR_val).init(base_address + 0x78);

/// S4M0AR
const S4M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S4M0AR = MMIO(S4M0AR_val).init(base_address + 0x7c);

/// S4M1AR
const S4M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S4M1AR = MMIO(S4M1AR_val).init(base_address + 0x80);

/// S4FCR
const S4FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S4FCR = MMIO(S4FCR_val).init(base_address + 0x84);

/// S5CR
const S5CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// ACK [20:20]
/// ACK
ACK: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S5CR = MMIO(S5CR_val).init(base_address + 0x88);

/// S5NDTR
const S5NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S5NDTR = MMIO(S5NDTR_val).init(base_address + 0x8c);

/// S5PAR
const S5PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S5PAR = MMIO(S5PAR_val).init(base_address + 0x90);

/// S5M0AR
const S5M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S5M0AR = MMIO(S5M0AR_val).init(base_address + 0x94);

/// S5M1AR
const S5M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S5M1AR = MMIO(S5M1AR_val).init(base_address + 0x98);

/// S5FCR
const S5FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S5FCR = MMIO(S5FCR_val).init(base_address + 0x9c);

/// S6CR
const S6CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// ACK [20:20]
/// ACK
ACK: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S6CR = MMIO(S6CR_val).init(base_address + 0xa0);

/// S6NDTR
const S6NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S6NDTR = MMIO(S6NDTR_val).init(base_address + 0xa4);

/// S6PAR
const S6PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S6PAR = MMIO(S6PAR_val).init(base_address + 0xa8);

/// S6M0AR
const S6M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S6M0AR = MMIO(S6M0AR_val).init(base_address + 0xac);

/// S6M1AR
const S6M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S6M1AR = MMIO(S6M1AR_val).init(base_address + 0xb0);

/// S6FCR
const S6FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S6FCR = MMIO(S6FCR_val).init(base_address + 0xb4);

/// S7CR
const S7CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// ACK [20:20]
/// ACK
ACK: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S7CR = MMIO(S7CR_val).init(base_address + 0xb8);

/// S7NDTR
const S7NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S7NDTR = MMIO(S7NDTR_val).init(base_address + 0xbc);

/// S7PAR
const S7PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S7PAR = MMIO(S7PAR_val).init(base_address + 0xc0);

/// S7M0AR
const S7M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S7M0AR = MMIO(S7M0AR_val).init(base_address + 0xc4);

/// S7M1AR
const S7M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S7M1AR = MMIO(S7M1AR_val).init(base_address + 0xc8);

/// S7FCR
const S7FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S7FCR = MMIO(S7FCR_val).init(base_address + 0xcc);
};

/// DMA controller
pub const DMA1 = struct {

const base_address = 0x40026000;
/// LISR
const LISR_val = packed struct {
/// FEIF0 [0:0]
/// Stream x FIFO error interrupt flag
FEIF0: u1 = 0,
/// unused [1:1]
_unused1: u1 = 0,
/// DMEIF0 [2:2]
/// Stream x direct mode error interrupt
DMEIF0: u1 = 0,
/// TEIF0 [3:3]
/// Stream x transfer error interrupt flag
TEIF0: u1 = 0,
/// HTIF0 [4:4]
/// Stream x half transfer interrupt flag
HTIF0: u1 = 0,
/// TCIF0 [5:5]
/// Stream x transfer complete interrupt
TCIF0: u1 = 0,
/// FEIF1 [6:6]
/// Stream x FIFO error interrupt flag
FEIF1: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// DMEIF1 [8:8]
/// Stream x direct mode error interrupt
DMEIF1: u1 = 0,
/// TEIF1 [9:9]
/// Stream x transfer error interrupt flag
TEIF1: u1 = 0,
/// HTIF1 [10:10]
/// Stream x half transfer interrupt flag
HTIF1: u1 = 0,
/// TCIF1 [11:11]
/// Stream x transfer complete interrupt
TCIF1: u1 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// FEIF2 [16:16]
/// Stream x FIFO error interrupt flag
FEIF2: u1 = 0,
/// unused [17:17]
_unused17: u1 = 0,
/// DMEIF2 [18:18]
/// Stream x direct mode error interrupt
DMEIF2: u1 = 0,
/// TEIF2 [19:19]
/// Stream x transfer error interrupt flag
TEIF2: u1 = 0,
/// HTIF2 [20:20]
/// Stream x half transfer interrupt flag
HTIF2: u1 = 0,
/// TCIF2 [21:21]
/// Stream x transfer complete interrupt
TCIF2: u1 = 0,
/// FEIF3 [22:22]
/// Stream x FIFO error interrupt flag
FEIF3: u1 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// DMEIF3 [24:24]
/// Stream x direct mode error interrupt
DMEIF3: u1 = 0,
/// TEIF3 [25:25]
/// Stream x transfer error interrupt flag
TEIF3: u1 = 0,
/// HTIF3 [26:26]
/// Stream x half transfer interrupt flag
HTIF3: u1 = 0,
/// TCIF3 [27:27]
/// Stream x transfer complete interrupt
TCIF3: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// low interrupt status register
pub const LISR = MMIO(LISR_val).init(base_address + 0x0);

/// HISR
const HISR_val = packed struct {
/// FEIF4 [0:0]
/// Stream x FIFO error interrupt flag
FEIF4: u1 = 0,
/// unused [1:1]
_unused1: u1 = 0,
/// DMEIF4 [2:2]
/// Stream x direct mode error interrupt
DMEIF4: u1 = 0,
/// TEIF4 [3:3]
/// Stream x transfer error interrupt flag
TEIF4: u1 = 0,
/// HTIF4 [4:4]
/// Stream x half transfer interrupt flag
HTIF4: u1 = 0,
/// TCIF4 [5:5]
/// Stream x transfer complete interrupt
TCIF4: u1 = 0,
/// FEIF5 [6:6]
/// Stream x FIFO error interrupt flag
FEIF5: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// DMEIF5 [8:8]
/// Stream x direct mode error interrupt
DMEIF5: u1 = 0,
/// TEIF5 [9:9]
/// Stream x transfer error interrupt flag
TEIF5: u1 = 0,
/// HTIF5 [10:10]
/// Stream x half transfer interrupt flag
HTIF5: u1 = 0,
/// TCIF5 [11:11]
/// Stream x transfer complete interrupt
TCIF5: u1 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// FEIF6 [16:16]
/// Stream x FIFO error interrupt flag
FEIF6: u1 = 0,
/// unused [17:17]
_unused17: u1 = 0,
/// DMEIF6 [18:18]
/// Stream x direct mode error interrupt
DMEIF6: u1 = 0,
/// TEIF6 [19:19]
/// Stream x transfer error interrupt flag
TEIF6: u1 = 0,
/// HTIF6 [20:20]
/// Stream x half transfer interrupt flag
HTIF6: u1 = 0,
/// TCIF6 [21:21]
/// Stream x transfer complete interrupt
TCIF6: u1 = 0,
/// FEIF7 [22:22]
/// Stream x FIFO error interrupt flag
FEIF7: u1 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// DMEIF7 [24:24]
/// Stream x direct mode error interrupt
DMEIF7: u1 = 0,
/// TEIF7 [25:25]
/// Stream x transfer error interrupt flag
TEIF7: u1 = 0,
/// HTIF7 [26:26]
/// Stream x half transfer interrupt flag
HTIF7: u1 = 0,
/// TCIF7 [27:27]
/// Stream x transfer complete interrupt
TCIF7: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// high interrupt status register
pub const HISR = MMIO(HISR_val).init(base_address + 0x4);

/// LIFCR
const LIFCR_val = packed struct {
/// CFEIF0 [0:0]
/// Stream x clear FIFO error interrupt flag
CFEIF0: u1 = 0,
/// unused [1:1]
_unused1: u1 = 0,
/// CDMEIF0 [2:2]
/// Stream x clear direct mode error
CDMEIF0: u1 = 0,
/// CTEIF0 [3:3]
/// Stream x clear transfer error interrupt
CTEIF0: u1 = 0,
/// CHTIF0 [4:4]
/// Stream x clear half transfer interrupt
CHTIF0: u1 = 0,
/// CTCIF0 [5:5]
/// Stream x clear transfer complete
CTCIF0: u1 = 0,
/// CFEIF1 [6:6]
/// Stream x clear FIFO error interrupt flag
CFEIF1: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// CDMEIF1 [8:8]
/// Stream x clear direct mode error
CDMEIF1: u1 = 0,
/// CTEIF1 [9:9]
/// Stream x clear transfer error interrupt
CTEIF1: u1 = 0,
/// CHTIF1 [10:10]
/// Stream x clear half transfer interrupt
CHTIF1: u1 = 0,
/// CTCIF1 [11:11]
/// Stream x clear transfer complete
CTCIF1: u1 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// CFEIF2 [16:16]
/// Stream x clear FIFO error interrupt flag
CFEIF2: u1 = 0,
/// unused [17:17]
_unused17: u1 = 0,
/// CDMEIF2 [18:18]
/// Stream x clear direct mode error
CDMEIF2: u1 = 0,
/// CTEIF2 [19:19]
/// Stream x clear transfer error interrupt
CTEIF2: u1 = 0,
/// CHTIF2 [20:20]
/// Stream x clear half transfer interrupt
CHTIF2: u1 = 0,
/// CTCIF2 [21:21]
/// Stream x clear transfer complete
CTCIF2: u1 = 0,
/// CFEIF3 [22:22]
/// Stream x clear FIFO error interrupt flag
CFEIF3: u1 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// CDMEIF3 [24:24]
/// Stream x clear direct mode error
CDMEIF3: u1 = 0,
/// CTEIF3 [25:25]
/// Stream x clear transfer error interrupt
CTEIF3: u1 = 0,
/// CHTIF3 [26:26]
/// Stream x clear half transfer interrupt
CHTIF3: u1 = 0,
/// CTCIF3 [27:27]
/// Stream x clear transfer complete
CTCIF3: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// low interrupt flag clear
pub const LIFCR = MMIO(LIFCR_val).init(base_address + 0x8);

/// HIFCR
const HIFCR_val = packed struct {
/// CFEIF4 [0:0]
/// Stream x clear FIFO error interrupt flag
CFEIF4: u1 = 0,
/// unused [1:1]
_unused1: u1 = 0,
/// CDMEIF4 [2:2]
/// Stream x clear direct mode error
CDMEIF4: u1 = 0,
/// CTEIF4 [3:3]
/// Stream x clear transfer error interrupt
CTEIF4: u1 = 0,
/// CHTIF4 [4:4]
/// Stream x clear half transfer interrupt
CHTIF4: u1 = 0,
/// CTCIF4 [5:5]
/// Stream x clear transfer complete
CTCIF4: u1 = 0,
/// CFEIF5 [6:6]
/// Stream x clear FIFO error interrupt flag
CFEIF5: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// CDMEIF5 [8:8]
/// Stream x clear direct mode error
CDMEIF5: u1 = 0,
/// CTEIF5 [9:9]
/// Stream x clear transfer error interrupt
CTEIF5: u1 = 0,
/// CHTIF5 [10:10]
/// Stream x clear half transfer interrupt
CHTIF5: u1 = 0,
/// CTCIF5 [11:11]
/// Stream x clear transfer complete
CTCIF5: u1 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// CFEIF6 [16:16]
/// Stream x clear FIFO error interrupt flag
CFEIF6: u1 = 0,
/// unused [17:17]
_unused17: u1 = 0,
/// CDMEIF6 [18:18]
/// Stream x clear direct mode error
CDMEIF6: u1 = 0,
/// CTEIF6 [19:19]
/// Stream x clear transfer error interrupt
CTEIF6: u1 = 0,
/// CHTIF6 [20:20]
/// Stream x clear half transfer interrupt
CHTIF6: u1 = 0,
/// CTCIF6 [21:21]
/// Stream x clear transfer complete
CTCIF6: u1 = 0,
/// CFEIF7 [22:22]
/// Stream x clear FIFO error interrupt flag
CFEIF7: u1 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// CDMEIF7 [24:24]
/// Stream x clear direct mode error
CDMEIF7: u1 = 0,
/// CTEIF7 [25:25]
/// Stream x clear transfer error interrupt
CTEIF7: u1 = 0,
/// CHTIF7 [26:26]
/// Stream x clear half transfer interrupt
CHTIF7: u1 = 0,
/// CTCIF7 [27:27]
/// Stream x clear transfer complete
CTCIF7: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// high interrupt flag clear
pub const HIFCR = MMIO(HIFCR_val).init(base_address + 0xc);

/// S0CR
const S0CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// unused [20:20]
_unused20: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S0CR = MMIO(S0CR_val).init(base_address + 0x10);

/// S0NDTR
const S0NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S0NDTR = MMIO(S0NDTR_val).init(base_address + 0x14);

/// S0PAR
const S0PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S0PAR = MMIO(S0PAR_val).init(base_address + 0x18);

/// S0M0AR
const S0M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S0M0AR = MMIO(S0M0AR_val).init(base_address + 0x1c);

/// S0M1AR
const S0M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S0M1AR = MMIO(S0M1AR_val).init(base_address + 0x20);

/// S0FCR
const S0FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S0FCR = MMIO(S0FCR_val).init(base_address + 0x24);

/// S1CR
const S1CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// ACK [20:20]
/// ACK
ACK: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S1CR = MMIO(S1CR_val).init(base_address + 0x28);

/// S1NDTR
const S1NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S1NDTR = MMIO(S1NDTR_val).init(base_address + 0x2c);

/// S1PAR
const S1PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S1PAR = MMIO(S1PAR_val).init(base_address + 0x30);

/// S1M0AR
const S1M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S1M0AR = MMIO(S1M0AR_val).init(base_address + 0x34);

/// S1M1AR
const S1M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S1M1AR = MMIO(S1M1AR_val).init(base_address + 0x38);

/// S1FCR
const S1FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S1FCR = MMIO(S1FCR_val).init(base_address + 0x3c);

/// S2CR
const S2CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// ACK [20:20]
/// ACK
ACK: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S2CR = MMIO(S2CR_val).init(base_address + 0x40);

/// S2NDTR
const S2NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S2NDTR = MMIO(S2NDTR_val).init(base_address + 0x44);

/// S2PAR
const S2PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S2PAR = MMIO(S2PAR_val).init(base_address + 0x48);

/// S2M0AR
const S2M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S2M0AR = MMIO(S2M0AR_val).init(base_address + 0x4c);

/// S2M1AR
const S2M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S2M1AR = MMIO(S2M1AR_val).init(base_address + 0x50);

/// S2FCR
const S2FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S2FCR = MMIO(S2FCR_val).init(base_address + 0x54);

/// S3CR
const S3CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// ACK [20:20]
/// ACK
ACK: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S3CR = MMIO(S3CR_val).init(base_address + 0x58);

/// S3NDTR
const S3NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S3NDTR = MMIO(S3NDTR_val).init(base_address + 0x5c);

/// S3PAR
const S3PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S3PAR = MMIO(S3PAR_val).init(base_address + 0x60);

/// S3M0AR
const S3M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S3M0AR = MMIO(S3M0AR_val).init(base_address + 0x64);

/// S3M1AR
const S3M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S3M1AR = MMIO(S3M1AR_val).init(base_address + 0x68);

/// S3FCR
const S3FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S3FCR = MMIO(S3FCR_val).init(base_address + 0x6c);

/// S4CR
const S4CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// ACK [20:20]
/// ACK
ACK: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S4CR = MMIO(S4CR_val).init(base_address + 0x70);

/// S4NDTR
const S4NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S4NDTR = MMIO(S4NDTR_val).init(base_address + 0x74);

/// S4PAR
const S4PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S4PAR = MMIO(S4PAR_val).init(base_address + 0x78);

/// S4M0AR
const S4M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S4M0AR = MMIO(S4M0AR_val).init(base_address + 0x7c);

/// S4M1AR
const S4M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S4M1AR = MMIO(S4M1AR_val).init(base_address + 0x80);

/// S4FCR
const S4FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S4FCR = MMIO(S4FCR_val).init(base_address + 0x84);

/// S5CR
const S5CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// ACK [20:20]
/// ACK
ACK: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S5CR = MMIO(S5CR_val).init(base_address + 0x88);

/// S5NDTR
const S5NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S5NDTR = MMIO(S5NDTR_val).init(base_address + 0x8c);

/// S5PAR
const S5PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S5PAR = MMIO(S5PAR_val).init(base_address + 0x90);

/// S5M0AR
const S5M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S5M0AR = MMIO(S5M0AR_val).init(base_address + 0x94);

/// S5M1AR
const S5M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S5M1AR = MMIO(S5M1AR_val).init(base_address + 0x98);

/// S5FCR
const S5FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S5FCR = MMIO(S5FCR_val).init(base_address + 0x9c);

/// S6CR
const S6CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// ACK [20:20]
/// ACK
ACK: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S6CR = MMIO(S6CR_val).init(base_address + 0xa0);

/// S6NDTR
const S6NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S6NDTR = MMIO(S6NDTR_val).init(base_address + 0xa4);

/// S6PAR
const S6PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S6PAR = MMIO(S6PAR_val).init(base_address + 0xa8);

/// S6M0AR
const S6M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S6M0AR = MMIO(S6M0AR_val).init(base_address + 0xac);

/// S6M1AR
const S6M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S6M1AR = MMIO(S6M1AR_val).init(base_address + 0xb0);

/// S6FCR
const S6FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S6FCR = MMIO(S6FCR_val).init(base_address + 0xb4);

/// S7CR
const S7CR_val = packed struct {
/// EN [0:0]
/// Stream enable / flag stream ready when
EN: u1 = 0,
/// DMEIE [1:1]
/// Direct mode error interrupt
DMEIE: u1 = 0,
/// TEIE [2:2]
/// Transfer error interrupt
TEIE: u1 = 0,
/// HTIE [3:3]
/// Half transfer interrupt
HTIE: u1 = 0,
/// TCIE [4:4]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// PFCTRL [5:5]
/// Peripheral flow controller
PFCTRL: u1 = 0,
/// DIR [6:7]
/// Data transfer direction
DIR: u2 = 0,
/// CIRC [8:8]
/// Circular mode
CIRC: u1 = 0,
/// PINC [9:9]
/// Peripheral increment mode
PINC: u1 = 0,
/// MINC [10:10]
/// Memory increment mode
MINC: u1 = 0,
/// PSIZE [11:12]
/// Peripheral data size
PSIZE: u2 = 0,
/// MSIZE [13:14]
/// Memory data size
MSIZE: u2 = 0,
/// PINCOS [15:15]
/// Peripheral increment offset
PINCOS: u1 = 0,
/// PL [16:17]
/// Priority level
PL: u2 = 0,
/// DBM [18:18]
/// Double buffer mode
DBM: u1 = 0,
/// CT [19:19]
/// Current target (only in double buffer
CT: u1 = 0,
/// ACK [20:20]
/// ACK
ACK: u1 = 0,
/// PBURST [21:22]
/// Peripheral burst transfer
PBURST: u2 = 0,
/// MBURST [23:24]
/// Memory burst transfer
MBURST: u2 = 0,
/// CHSEL [25:27]
/// Channel selection
CHSEL: u3 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// stream x configuration
pub const S7CR = MMIO(S7CR_val).init(base_address + 0xb8);

/// S7NDTR
const S7NDTR_val = packed struct {
/// NDT [0:15]
/// Number of data items to
NDT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x number of data
pub const S7NDTR = MMIO(S7NDTR_val).init(base_address + 0xbc);

/// S7PAR
const S7PAR_val = packed struct {
/// PA [0:31]
/// Peripheral address
PA: u32 = 0,
};
/// stream x peripheral address
pub const S7PAR = MMIO(S7PAR_val).init(base_address + 0xc0);

/// S7M0AR
const S7M0AR_val = packed struct {
/// M0A [0:31]
/// Memory 0 address
M0A: u32 = 0,
};
/// stream x memory 0 address
pub const S7M0AR = MMIO(S7M0AR_val).init(base_address + 0xc4);

/// S7M1AR
const S7M1AR_val = packed struct {
/// M1A [0:31]
/// Memory 1 address (used in case of Double
M1A: u32 = 0,
};
/// stream x memory 1 address
pub const S7M1AR = MMIO(S7M1AR_val).init(base_address + 0xc8);

/// S7FCR
const S7FCR_val = packed struct {
/// FTH [0:1]
/// FIFO threshold selection
FTH: u2 = 1,
/// DMDIS [2:2]
/// Direct mode disable
DMDIS: u1 = 0,
/// FS [3:5]
/// FIFO status
FS: u3 = 4,
/// unused [6:6]
_unused6: u1 = 0,
/// FEIE [7:7]
/// FIFO error interrupt
FEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// stream x FIFO control register
pub const S7FCR = MMIO(S7FCR_val).init(base_address + 0xcc);
};

/// Reset and clock control
pub const RCC = struct {

const base_address = 0x40023800;
/// CR
const CR_val = packed struct {
/// HSION [0:0]
/// Internal high-speed clock
HSION: u1 = 1,
/// HSIRDY [1:1]
/// Internal high-speed clock ready
HSIRDY: u1 = 1,
/// unused [2:2]
_unused2: u1 = 0,
/// HSITRIM [3:7]
/// Internal high-speed clock
HSITRIM: u5 = 16,
/// HSICAL [8:15]
/// Internal high-speed clock
HSICAL: u8 = 0,
/// HSEON [16:16]
/// HSE clock enable
HSEON: u1 = 0,
/// HSERDY [17:17]
/// HSE clock ready flag
HSERDY: u1 = 0,
/// HSEBYP [18:18]
/// HSE clock bypass
HSEBYP: u1 = 0,
/// CSSON [19:19]
/// Clock security system
CSSON: u1 = 0,
/// unused [20:23]
_unused20: u4 = 0,
/// PLLON [24:24]
/// Main PLL (PLL) enable
PLLON: u1 = 0,
/// PLLRDY [25:25]
/// Main PLL (PLL) clock ready
PLLRDY: u1 = 0,
/// PLLI2SON [26:26]
/// PLLI2S enable
PLLI2SON: u1 = 0,
/// PLLI2SRDY [27:27]
/// PLLI2S clock ready flag
PLLI2SRDY: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// clock control register
pub const CR = MMIO(CR_val).init(base_address + 0x0);

/// PLLCFGR
const PLLCFGR_val = packed struct {
/// PLLM0 [0:0]
/// Division factor for the main PLL (PLL)
PLLM0: u1 = 0,
/// PLLM1 [1:1]
/// Division factor for the main PLL (PLL)
PLLM1: u1 = 0,
/// PLLM2 [2:2]
/// Division factor for the main PLL (PLL)
PLLM2: u1 = 0,
/// PLLM3 [3:3]
/// Division factor for the main PLL (PLL)
PLLM3: u1 = 0,
/// PLLM4 [4:4]
/// Division factor for the main PLL (PLL)
PLLM4: u1 = 1,
/// PLLM5 [5:5]
/// Division factor for the main PLL (PLL)
PLLM5: u1 = 0,
/// PLLN0 [6:6]
/// Main PLL (PLL) multiplication factor for
PLLN0: u1 = 0,
/// PLLN1 [7:7]
/// Main PLL (PLL) multiplication factor for
PLLN1: u1 = 0,
/// PLLN2 [8:8]
/// Main PLL (PLL) multiplication factor for
PLLN2: u1 = 0,
/// PLLN3 [9:9]
/// Main PLL (PLL) multiplication factor for
PLLN3: u1 = 0,
/// PLLN4 [10:10]
/// Main PLL (PLL) multiplication factor for
PLLN4: u1 = 0,
/// PLLN5 [11:11]
/// Main PLL (PLL) multiplication factor for
PLLN5: u1 = 0,
/// PLLN6 [12:12]
/// Main PLL (PLL) multiplication factor for
PLLN6: u1 = 1,
/// PLLN7 [13:13]
/// Main PLL (PLL) multiplication factor for
PLLN7: u1 = 1,
/// PLLN8 [14:14]
/// Main PLL (PLL) multiplication factor for
PLLN8: u1 = 0,
/// unused [15:15]
_unused15: u1 = 0,
/// PLLP0 [16:16]
/// Main PLL (PLL) division factor for main
PLLP0: u1 = 0,
/// PLLP1 [17:17]
/// Main PLL (PLL) division factor for main
PLLP1: u1 = 0,
/// unused [18:21]
_unused18: u4 = 0,
/// PLLSRC [22:22]
/// Main PLL(PLL) and audio PLL (PLLI2S)
PLLSRC: u1 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// PLLQ0 [24:24]
/// Main PLL (PLL) division factor for USB
PLLQ0: u1 = 0,
/// PLLQ1 [25:25]
/// Main PLL (PLL) division factor for USB
PLLQ1: u1 = 0,
/// PLLQ2 [26:26]
/// Main PLL (PLL) division factor for USB
PLLQ2: u1 = 1,
/// PLLQ3 [27:27]
/// Main PLL (PLL) division factor for USB
PLLQ3: u1 = 0,
/// unused [28:31]
_unused28: u4 = 2,
};
/// PLL configuration register
pub const PLLCFGR = MMIO(PLLCFGR_val).init(base_address + 0x4);

/// CFGR
const CFGR_val = packed struct {
/// SW0 [0:0]
/// System clock switch
SW0: u1 = 0,
/// SW1 [1:1]
/// System clock switch
SW1: u1 = 0,
/// SWS0 [2:2]
/// System clock switch status
SWS0: u1 = 0,
/// SWS1 [3:3]
/// System clock switch status
SWS1: u1 = 0,
/// HPRE [4:7]
/// AHB prescaler
HPRE: u4 = 0,
/// unused [8:9]
_unused8: u2 = 0,
/// PPRE1 [10:12]
/// APB Low speed prescaler
PPRE1: u3 = 0,
/// PPRE2 [13:15]
/// APB high-speed prescaler
PPRE2: u3 = 0,
/// RTCPRE [16:20]
/// HSE division factor for RTC
RTCPRE: u5 = 0,
/// MCO1 [21:22]
/// Microcontroller clock output
MCO1: u2 = 0,
/// I2SSRC [23:23]
/// I2S clock selection
I2SSRC: u1 = 0,
/// MCO1PRE [24:26]
/// MCO1 prescaler
MCO1PRE: u3 = 0,
/// MCO2PRE [27:29]
/// MCO2 prescaler
MCO2PRE: u3 = 0,
/// MCO2 [30:31]
/// Microcontroller clock output
MCO2: u2 = 0,
};
/// clock configuration register
pub const CFGR = MMIO(CFGR_val).init(base_address + 0x8);

/// CIR
const CIR_val = packed struct {
/// LSIRDYF [0:0]
/// LSI ready interrupt flag
LSIRDYF: u1 = 0,
/// LSERDYF [1:1]
/// LSE ready interrupt flag
LSERDYF: u1 = 0,
/// HSIRDYF [2:2]
/// HSI ready interrupt flag
HSIRDYF: u1 = 0,
/// HSERDYF [3:3]
/// HSE ready interrupt flag
HSERDYF: u1 = 0,
/// PLLRDYF [4:4]
/// Main PLL (PLL) ready interrupt
PLLRDYF: u1 = 0,
/// PLLI2SRDYF [5:5]
/// PLLI2S ready interrupt
PLLI2SRDYF: u1 = 0,
/// PLLSAIRDYF [6:6]
/// PLLSAI ready interrupt
PLLSAIRDYF: u1 = 0,
/// CSSF [7:7]
/// Clock security system interrupt
CSSF: u1 = 0,
/// LSIRDYIE [8:8]
/// LSI ready interrupt enable
LSIRDYIE: u1 = 0,
/// LSERDYIE [9:9]
/// LSE ready interrupt enable
LSERDYIE: u1 = 0,
/// HSIRDYIE [10:10]
/// HSI ready interrupt enable
HSIRDYIE: u1 = 0,
/// HSERDYIE [11:11]
/// HSE ready interrupt enable
HSERDYIE: u1 = 0,
/// PLLRDYIE [12:12]
/// Main PLL (PLL) ready interrupt
PLLRDYIE: u1 = 0,
/// PLLI2SRDYIE [13:13]
/// PLLI2S ready interrupt
PLLI2SRDYIE: u1 = 0,
/// PLLSAIRDYIE [14:14]
/// PLLSAI Ready Interrupt
PLLSAIRDYIE: u1 = 0,
/// unused [15:15]
_unused15: u1 = 0,
/// LSIRDYC [16:16]
/// LSI ready interrupt clear
LSIRDYC: u1 = 0,
/// LSERDYC [17:17]
/// LSE ready interrupt clear
LSERDYC: u1 = 0,
/// HSIRDYC [18:18]
/// HSI ready interrupt clear
HSIRDYC: u1 = 0,
/// HSERDYC [19:19]
/// HSE ready interrupt clear
HSERDYC: u1 = 0,
/// PLLRDYC [20:20]
/// Main PLL(PLL) ready interrupt
PLLRDYC: u1 = 0,
/// PLLI2SRDYC [21:21]
/// PLLI2S ready interrupt
PLLI2SRDYC: u1 = 0,
/// PLLSAIRDYC [22:22]
/// PLLSAI Ready Interrupt
PLLSAIRDYC: u1 = 0,
/// CSSC [23:23]
/// Clock security system interrupt
CSSC: u1 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// clock interrupt register
pub const CIR = MMIO(CIR_val).init(base_address + 0xc);

/// AHB1RSTR
const AHB1RSTR_val = packed struct {
/// GPIOARST [0:0]
/// IO port A reset
GPIOARST: u1 = 0,
/// GPIOBRST [1:1]
/// IO port B reset
GPIOBRST: u1 = 0,
/// GPIOCRST [2:2]
/// IO port C reset
GPIOCRST: u1 = 0,
/// GPIODRST [3:3]
/// IO port D reset
GPIODRST: u1 = 0,
/// GPIOERST [4:4]
/// IO port E reset
GPIOERST: u1 = 0,
/// GPIOFRST [5:5]
/// IO port F reset
GPIOFRST: u1 = 0,
/// GPIOGRST [6:6]
/// IO port G reset
GPIOGRST: u1 = 0,
/// GPIOHRST [7:7]
/// IO port H reset
GPIOHRST: u1 = 0,
/// unused [8:11]
_unused8: u4 = 0,
/// CRCRST [12:12]
/// CRC reset
CRCRST: u1 = 0,
/// unused [13:20]
_unused13: u3 = 0,
_unused16: u5 = 0,
/// DMA1RST [21:21]
/// DMA2 reset
DMA1RST: u1 = 0,
/// DMA2RST [22:22]
/// DMA2 reset
DMA2RST: u1 = 0,
/// unused [23:28]
_unused23: u1 = 0,
_unused24: u5 = 0,
/// OTGHSRST [29:29]
/// USB OTG HS module reset
OTGHSRST: u1 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// AHB1 peripheral reset register
pub const AHB1RSTR = MMIO(AHB1RSTR_val).init(base_address + 0x10);

/// AHB2RSTR
const AHB2RSTR_val = packed struct {
/// DCMIRST [0:0]
/// Camera interface reset
DCMIRST: u1 = 0,
/// unused [1:6]
_unused1: u6 = 0,
/// OTGFSRST [7:7]
/// USB OTG FS module reset
OTGFSRST: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// AHB2 peripheral reset register
pub const AHB2RSTR = MMIO(AHB2RSTR_val).init(base_address + 0x14);

/// AHB3RSTR
const AHB3RSTR_val = packed struct {
/// FMCRST [0:0]
/// Flexible memory controller module
FMCRST: u1 = 0,
/// QSPIRST [1:1]
/// QUADSPI module reset
QSPIRST: u1 = 0,
/// unused [2:31]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// AHB3 peripheral reset register
pub const AHB3RSTR = MMIO(AHB3RSTR_val).init(base_address + 0x18);

/// APB1RSTR
const APB1RSTR_val = packed struct {
/// TIM2RST [0:0]
/// TIM2 reset
TIM2RST: u1 = 0,
/// TIM3RST [1:1]
/// TIM3 reset
TIM3RST: u1 = 0,
/// TIM4RST [2:2]
/// TIM4 reset
TIM4RST: u1 = 0,
/// TIM5RST [3:3]
/// TIM5 reset
TIM5RST: u1 = 0,
/// TIM6RST [4:4]
/// TIM6 reset
TIM6RST: u1 = 0,
/// TIM7RST [5:5]
/// TIM7 reset
TIM7RST: u1 = 0,
/// TIM12RST [6:6]
/// TIM12 reset
TIM12RST: u1 = 0,
/// TIM13RST [7:7]
/// TIM13 reset
TIM13RST: u1 = 0,
/// TIM14RST [8:8]
/// TIM14 reset
TIM14RST: u1 = 0,
/// unused [9:10]
_unused9: u2 = 0,
/// WWDGRST [11:11]
/// Window watchdog reset
WWDGRST: u1 = 0,
/// unused [12:13]
_unused12: u2 = 0,
/// SPI2RST [14:14]
/// SPI 2 reset
SPI2RST: u1 = 0,
/// SPI3RST [15:15]
/// SPI 3 reset
SPI3RST: u1 = 0,
/// SPDIFRST [16:16]
/// SPDIF-IN reset
SPDIFRST: u1 = 0,
/// UART2RST [17:17]
/// USART 2 reset
UART2RST: u1 = 0,
/// UART3RST [18:18]
/// USART 3 reset
UART3RST: u1 = 0,
/// UART4RST [19:19]
/// USART 4 reset
UART4RST: u1 = 0,
/// UART5RST [20:20]
/// USART 5 reset
UART5RST: u1 = 0,
/// I2C1RST [21:21]
/// I2C 1 reset
I2C1RST: u1 = 0,
/// I2C2RST [22:22]
/// I2C 2 reset
I2C2RST: u1 = 0,
/// I2C3RST [23:23]
/// I2C3 reset
I2C3RST: u1 = 0,
/// I2CFMP1RST [24:24]
/// I2CFMP1 reset
I2CFMP1RST: u1 = 0,
/// CAN1RST [25:25]
/// CAN1 reset
CAN1RST: u1 = 0,
/// CAN2RST [26:26]
/// CAN2 reset
CAN2RST: u1 = 0,
/// unused [27:27]
_unused27: u1 = 0,
/// PWRRST [28:28]
/// Power interface reset
PWRRST: u1 = 0,
/// DACRST [29:29]
/// DAC reset
DACRST: u1 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// APB1 peripheral reset register
pub const APB1RSTR = MMIO(APB1RSTR_val).init(base_address + 0x20);

/// APB2RSTR
const APB2RSTR_val = packed struct {
/// TIM1RST [0:0]
/// TIM1 reset
TIM1RST: u1 = 0,
/// TIM8RST [1:1]
/// TIM8 reset
TIM8RST: u1 = 0,
/// unused [2:3]
_unused2: u2 = 0,
/// USART1RST [4:4]
/// USART1 reset
USART1RST: u1 = 0,
/// USART6RST [5:5]
/// USART6 reset
USART6RST: u1 = 0,
/// unused [6:7]
_unused6: u2 = 0,
/// ADCRST [8:8]
/// ADC interface reset (common to all
ADCRST: u1 = 0,
/// unused [9:10]
_unused9: u2 = 0,
/// SDIORST [11:11]
/// SDIO reset
SDIORST: u1 = 0,
/// SPI1RST [12:12]
/// SPI 1 reset
SPI1RST: u1 = 0,
/// SPI4RST [13:13]
/// SPI4 reset
SPI4RST: u1 = 0,
/// SYSCFGRST [14:14]
/// System configuration controller
SYSCFGRST: u1 = 0,
/// unused [15:15]
_unused15: u1 = 0,
/// TIM9RST [16:16]
/// TIM9 reset
TIM9RST: u1 = 0,
/// TIM10RST [17:17]
/// TIM10 reset
TIM10RST: u1 = 0,
/// TIM11RST [18:18]
/// TIM11 reset
TIM11RST: u1 = 0,
/// unused [19:21]
_unused19: u3 = 0,
/// SAI1RST [22:22]
/// SAI1 reset
SAI1RST: u1 = 0,
/// SAI2RST [23:23]
/// SAI2 reset
SAI2RST: u1 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// APB2 peripheral reset register
pub const APB2RSTR = MMIO(APB2RSTR_val).init(base_address + 0x24);

/// AHB1ENR
const AHB1ENR_val = packed struct {
/// GPIOAEN [0:0]
/// IO port A clock enable
GPIOAEN: u1 = 0,
/// GPIOBEN [1:1]
/// IO port B clock enable
GPIOBEN: u1 = 0,
/// GPIOCEN [2:2]
/// IO port C clock enable
GPIOCEN: u1 = 0,
/// GPIODEN [3:3]
/// IO port D clock enable
GPIODEN: u1 = 0,
/// GPIOEEN [4:4]
/// IO port E clock enable
GPIOEEN: u1 = 0,
/// GPIOFEN [5:5]
/// IO port F clock enable
GPIOFEN: u1 = 0,
/// GPIOGEN [6:6]
/// IO port G clock enable
GPIOGEN: u1 = 0,
/// GPIOHEN [7:7]
/// IO port H clock enable
GPIOHEN: u1 = 0,
/// unused [8:11]
_unused8: u4 = 0,
/// CRCEN [12:12]
/// CRC clock enable
CRCEN: u1 = 0,
/// unused [13:17]
_unused13: u3 = 0,
_unused16: u2 = 0,
/// BKPSRAMEN [18:18]
/// Backup SRAM interface clock
BKPSRAMEN: u1 = 0,
/// unused [19:20]
_unused19: u2 = 2,
/// DMA1EN [21:21]
/// DMA1 clock enable
DMA1EN: u1 = 0,
/// DMA2EN [22:22]
/// DMA2 clock enable
DMA2EN: u1 = 0,
/// unused [23:28]
_unused23: u1 = 0,
_unused24: u5 = 0,
/// OTGHSEN [29:29]
/// USB OTG HS clock enable
OTGHSEN: u1 = 0,
/// OTGHSULPIEN [30:30]
/// USB OTG HSULPI clock
OTGHSULPIEN: u1 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// AHB1 peripheral clock register
pub const AHB1ENR = MMIO(AHB1ENR_val).init(base_address + 0x30);

/// AHB2ENR
const AHB2ENR_val = packed struct {
/// DCMIEN [0:0]
/// Camera interface enable
DCMIEN: u1 = 0,
/// unused [1:6]
_unused1: u6 = 0,
/// OTGFSEN [7:7]
/// USB OTG FS clock enable
OTGFSEN: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// AHB2 peripheral clock enable
pub const AHB2ENR = MMIO(AHB2ENR_val).init(base_address + 0x34);

/// AHB3ENR
const AHB3ENR_val = packed struct {
/// FMCEN [0:0]
/// Flexible memory controller module clock
FMCEN: u1 = 0,
/// QSPIEN [1:1]
/// QUADSPI memory controller module clock
QSPIEN: u1 = 0,
/// unused [2:31]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// AHB3 peripheral clock enable
pub const AHB3ENR = MMIO(AHB3ENR_val).init(base_address + 0x38);

/// APB1ENR
const APB1ENR_val = packed struct {
/// TIM2EN [0:0]
/// TIM2 clock enable
TIM2EN: u1 = 0,
/// TIM3EN [1:1]
/// TIM3 clock enable
TIM3EN: u1 = 0,
/// TIM4EN [2:2]
/// TIM4 clock enable
TIM4EN: u1 = 0,
/// TIM5EN [3:3]
/// TIM5 clock enable
TIM5EN: u1 = 0,
/// TIM6EN [4:4]
/// TIM6 clock enable
TIM6EN: u1 = 0,
/// TIM7EN [5:5]
/// TIM7 clock enable
TIM7EN: u1 = 0,
/// TIM12EN [6:6]
/// TIM12 clock enable
TIM12EN: u1 = 0,
/// TIM13EN [7:7]
/// TIM13 clock enable
TIM13EN: u1 = 0,
/// TIM14EN [8:8]
/// TIM14 clock enable
TIM14EN: u1 = 0,
/// unused [9:10]
_unused9: u2 = 0,
/// WWDGEN [11:11]
/// Window watchdog clock
WWDGEN: u1 = 0,
/// unused [12:13]
_unused12: u2 = 0,
/// SPI2EN [14:14]
/// SPI2 clock enable
SPI2EN: u1 = 0,
/// SPI3EN [15:15]
/// SPI3 clock enable
SPI3EN: u1 = 0,
/// SPDIFEN [16:16]
/// SPDIF-IN clock enable
SPDIFEN: u1 = 0,
/// USART2EN [17:17]
/// USART 2 clock enable
USART2EN: u1 = 0,
/// USART3EN [18:18]
/// USART3 clock enable
USART3EN: u1 = 0,
/// UART4EN [19:19]
/// UART4 clock enable
UART4EN: u1 = 0,
/// UART5EN [20:20]
/// UART5 clock enable
UART5EN: u1 = 0,
/// I2C1EN [21:21]
/// I2C1 clock enable
I2C1EN: u1 = 0,
/// I2C2EN [22:22]
/// I2C2 clock enable
I2C2EN: u1 = 0,
/// I2C3EN [23:23]
/// I2C3 clock enable
I2C3EN: u1 = 0,
/// I2CFMP1EN [24:24]
/// I2CFMP1 clock enable
I2CFMP1EN: u1 = 0,
/// CAN1EN [25:25]
/// CAN 1 clock enable
CAN1EN: u1 = 0,
/// CAN2EN [26:26]
/// CAN 2 clock enable
CAN2EN: u1 = 0,
/// CEC [27:27]
/// CEC interface clock enable
CEC: u1 = 0,
/// PWREN [28:28]
/// Power interface clock
PWREN: u1 = 0,
/// DACEN [29:29]
/// DAC interface clock enable
DACEN: u1 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// APB1 peripheral clock enable
pub const APB1ENR = MMIO(APB1ENR_val).init(base_address + 0x40);

/// APB2ENR
const APB2ENR_val = packed struct {
/// TIM1EN [0:0]
/// TIM1 clock enable
TIM1EN: u1 = 0,
/// TIM8EN [1:1]
/// TIM8 clock enable
TIM8EN: u1 = 0,
/// unused [2:3]
_unused2: u2 = 0,
/// USART1EN [4:4]
/// USART1 clock enable
USART1EN: u1 = 0,
/// USART6EN [5:5]
/// USART6 clock enable
USART6EN: u1 = 0,
/// unused [6:7]
_unused6: u2 = 0,
/// ADC1EN [8:8]
/// ADC1 clock enable
ADC1EN: u1 = 0,
/// ADC2EN [9:9]
/// ADC2 clock enable
ADC2EN: u1 = 0,
/// ADC3EN [10:10]
/// ADC3 clock enable
ADC3EN: u1 = 0,
/// SDIOEN [11:11]
/// SDIO clock enable
SDIOEN: u1 = 0,
/// SPI1EN [12:12]
/// SPI1 clock enable
SPI1EN: u1 = 0,
/// SPI4ENR [13:13]
/// SPI4 clock enable
SPI4ENR: u1 = 0,
/// SYSCFGEN [14:14]
/// System configuration controller clock
SYSCFGEN: u1 = 0,
/// unused [15:15]
_unused15: u1 = 0,
/// TIM9EN [16:16]
/// TIM9 clock enable
TIM9EN: u1 = 0,
/// TIM10EN [17:17]
/// TIM10 clock enable
TIM10EN: u1 = 0,
/// TIM11EN [18:18]
/// TIM11 clock enable
TIM11EN: u1 = 0,
/// unused [19:21]
_unused19: u3 = 0,
/// SAI1EN [22:22]
/// SAI1 clock enable
SAI1EN: u1 = 0,
/// SAI2EN [23:23]
/// SAI2 clock enable
SAI2EN: u1 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// APB2 peripheral clock enable
pub const APB2ENR = MMIO(APB2ENR_val).init(base_address + 0x44);

/// AHB1LPENR
const AHB1LPENR_val = packed struct {
/// GPIOALPEN [0:0]
/// IO port A clock enable during sleep
GPIOALPEN: u1 = 1,
/// GPIOBLPEN [1:1]
/// IO port B clock enable during Sleep
GPIOBLPEN: u1 = 1,
/// GPIOCLPEN [2:2]
/// IO port C clock enable during Sleep
GPIOCLPEN: u1 = 1,
/// GPIODLPEN [3:3]
/// IO port D clock enable during Sleep
GPIODLPEN: u1 = 1,
/// GPIOELPEN [4:4]
/// IO port E clock enable during Sleep
GPIOELPEN: u1 = 1,
/// GPIOFLPEN [5:5]
/// IO port F clock enable during Sleep
GPIOFLPEN: u1 = 1,
/// GPIOGLPEN [6:6]
/// IO port G clock enable during Sleep
GPIOGLPEN: u1 = 1,
/// GPIOHLPEN [7:7]
/// IO port H clock enable during Sleep
GPIOHLPEN: u1 = 1,
/// unused [8:11]
_unused8: u4 = 1,
/// CRCLPEN [12:12]
/// CRC clock enable during Sleep
CRCLPEN: u1 = 1,
/// unused [13:14]
_unused13: u2 = 0,
/// FLITFLPEN [15:15]
/// Flash interface clock enable during
FLITFLPEN: u1 = 1,
/// SRAM1LPEN [16:16]
/// SRAM 1interface clock enable during
SRAM1LPEN: u1 = 1,
/// SRAM2LPEN [17:17]
/// SRAM 2 interface clock enable during
SRAM2LPEN: u1 = 1,
/// BKPSRAMLPEN [18:18]
/// Backup SRAM interface clock enable
BKPSRAMLPEN: u1 = 1,
/// unused [19:20]
_unused19: u2 = 0,
/// DMA1LPEN [21:21]
/// DMA1 clock enable during Sleep
DMA1LPEN: u1 = 1,
/// DMA2LPEN [22:22]
/// DMA2 clock enable during Sleep
DMA2LPEN: u1 = 1,
/// unused [23:28]
_unused23: u1 = 0,
_unused24: u5 = 30,
/// OTGHSLPEN [29:29]
/// USB OTG HS clock enable during Sleep
OTGHSLPEN: u1 = 1,
/// OTGHSULPILPEN [30:30]
/// USB OTG HS ULPI clock enable during
OTGHSULPILPEN: u1 = 1,
/// unused [31:31]
_unused31: u1 = 0,
};
/// AHB1 peripheral clock enable in low power
pub const AHB1LPENR = MMIO(AHB1LPENR_val).init(base_address + 0x50);

/// AHB2LPENR
const AHB2LPENR_val = packed struct {
/// DCMILPEN [0:0]
/// Camera interface enable during Sleep
DCMILPEN: u1 = 1,
/// unused [1:6]
_unused1: u6 = 56,
/// OTGFSLPEN [7:7]
/// USB OTG FS clock enable during Sleep
OTGFSLPEN: u1 = 1,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// AHB2 peripheral clock enable in low power
pub const AHB2LPENR = MMIO(AHB2LPENR_val).init(base_address + 0x54);

/// AHB3LPENR
const AHB3LPENR_val = packed struct {
/// FMCLPEN [0:0]
/// Flexible memory controller module clock
FMCLPEN: u1 = 1,
/// QSPILPEN [1:1]
/// QUADSPI memory controller module clock
QSPILPEN: u1 = 0,
/// unused [2:31]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// AHB3 peripheral clock enable in low power
pub const AHB3LPENR = MMIO(AHB3LPENR_val).init(base_address + 0x58);

/// APB1LPENR
const APB1LPENR_val = packed struct {
/// TIM2LPEN [0:0]
/// TIM2 clock enable during Sleep
TIM2LPEN: u1 = 1,
/// TIM3LPEN [1:1]
/// TIM3 clock enable during Sleep
TIM3LPEN: u1 = 1,
/// TIM4LPEN [2:2]
/// TIM4 clock enable during Sleep
TIM4LPEN: u1 = 1,
/// TIM5LPEN [3:3]
/// TIM5 clock enable during Sleep
TIM5LPEN: u1 = 1,
/// TIM6LPEN [4:4]
/// TIM6 clock enable during Sleep
TIM6LPEN: u1 = 1,
/// TIM7LPEN [5:5]
/// TIM7 clock enable during Sleep
TIM7LPEN: u1 = 1,
/// TIM12LPEN [6:6]
/// TIM12 clock enable during Sleep
TIM12LPEN: u1 = 1,
/// TIM13LPEN [7:7]
/// TIM13 clock enable during Sleep
TIM13LPEN: u1 = 1,
/// TIM14LPEN [8:8]
/// TIM14 clock enable during Sleep
TIM14LPEN: u1 = 1,
/// unused [9:10]
_unused9: u2 = 0,
/// WWDGLPEN [11:11]
/// Window watchdog clock enable during
WWDGLPEN: u1 = 1,
/// unused [12:13]
_unused12: u2 = 0,
/// SPI2LPEN [14:14]
/// SPI2 clock enable during Sleep
SPI2LPEN: u1 = 1,
/// SPI3LPEN [15:15]
/// SPI3 clock enable during Sleep
SPI3LPEN: u1 = 1,
/// SPDIFLPEN [16:16]
/// SPDIF clock enable during Sleep
SPDIFLPEN: u1 = 0,
/// USART2LPEN [17:17]
/// USART2 clock enable during Sleep
USART2LPEN: u1 = 1,
/// USART3LPEN [18:18]
/// USART3 clock enable during Sleep
USART3LPEN: u1 = 1,
/// UART4LPEN [19:19]
/// UART4 clock enable during Sleep
UART4LPEN: u1 = 1,
/// UART5LPEN [20:20]
/// UART5 clock enable during Sleep
UART5LPEN: u1 = 1,
/// I2C1LPEN [21:21]
/// I2C1 clock enable during Sleep
I2C1LPEN: u1 = 1,
/// I2C2LPEN [22:22]
/// I2C2 clock enable during Sleep
I2C2LPEN: u1 = 1,
/// I2C3LPEN [23:23]
/// I2C3 clock enable during Sleep
I2C3LPEN: u1 = 1,
/// I2CFMP1LPEN [24:24]
/// I2CFMP1 clock enable during Sleep
I2CFMP1LPEN: u1 = 0,
/// CAN1LPEN [25:25]
/// CAN 1 clock enable during Sleep
CAN1LPEN: u1 = 1,
/// CAN2LPEN [26:26]
/// CAN 2 clock enable during Sleep
CAN2LPEN: u1 = 1,
/// CECLPEN [27:27]
/// CEC clock enable during Sleep
CECLPEN: u1 = 0,
/// PWRLPEN [28:28]
/// Power interface clock enable during
PWRLPEN: u1 = 1,
/// DACLPEN [29:29]
/// DAC interface clock enable during Sleep
DACLPEN: u1 = 1,
/// unused [30:31]
_unused30: u2 = 0,
};
/// APB1 peripheral clock enable in low power
pub const APB1LPENR = MMIO(APB1LPENR_val).init(base_address + 0x60);

/// APB2LPENR
const APB2LPENR_val = packed struct {
/// TIM1LPEN [0:0]
/// TIM1 clock enable during Sleep
TIM1LPEN: u1 = 1,
/// TIM8LPEN [1:1]
/// TIM8 clock enable during Sleep
TIM8LPEN: u1 = 1,
/// unused [2:3]
_unused2: u2 = 0,
/// USART1LPEN [4:4]
/// USART1 clock enable during Sleep
USART1LPEN: u1 = 1,
/// USART6LPEN [5:5]
/// USART6 clock enable during Sleep
USART6LPEN: u1 = 1,
/// unused [6:7]
_unused6: u2 = 0,
/// ADC1LPEN [8:8]
/// ADC1 clock enable during Sleep
ADC1LPEN: u1 = 1,
/// ADC2LPEN [9:9]
/// ADC2 clock enable during Sleep
ADC2LPEN: u1 = 1,
/// ADC3LPEN [10:10]
/// ADC 3 clock enable during Sleep
ADC3LPEN: u1 = 1,
/// SDIOLPEN [11:11]
/// SDIO clock enable during Sleep
SDIOLPEN: u1 = 1,
/// SPI1LPEN [12:12]
/// SPI 1 clock enable during Sleep
SPI1LPEN: u1 = 1,
/// SPI4LPEN [13:13]
/// SPI 4 clock enable during Sleep
SPI4LPEN: u1 = 0,
/// SYSCFGLPEN [14:14]
/// System configuration controller clock
SYSCFGLPEN: u1 = 1,
/// unused [15:15]
_unused15: u1 = 0,
/// TIM9LPEN [16:16]
/// TIM9 clock enable during sleep
TIM9LPEN: u1 = 1,
/// TIM10LPEN [17:17]
/// TIM10 clock enable during Sleep
TIM10LPEN: u1 = 1,
/// TIM11LPEN [18:18]
/// TIM11 clock enable during Sleep
TIM11LPEN: u1 = 1,
/// unused [19:21]
_unused19: u3 = 0,
/// SAI1LPEN [22:22]
/// SAI1 clock enable
SAI1LPEN: u1 = 0,
/// SAI2LPEN [23:23]
/// SAI2 clock enable
SAI2LPEN: u1 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// APB2 peripheral clock enabled in low power
pub const APB2LPENR = MMIO(APB2LPENR_val).init(base_address + 0x64);

/// BDCR
const BDCR_val = packed struct {
/// LSEON [0:0]
/// External low-speed oscillator
LSEON: u1 = 0,
/// LSERDY [1:1]
/// External low-speed oscillator
LSERDY: u1 = 0,
/// LSEBYP [2:2]
/// External low-speed oscillator
LSEBYP: u1 = 0,
/// LSEMOD [3:3]
/// External low-speed oscillator
LSEMOD: u1 = 0,
/// unused [4:7]
_unused4: u4 = 0,
/// RTCSEL [8:9]
/// RTC clock source selection
RTCSEL: u2 = 0,
/// unused [10:14]
_unused10: u5 = 0,
/// RTCEN [15:15]
/// RTC clock enable
RTCEN: u1 = 0,
/// BDRST [16:16]
/// Backup domain software
BDRST: u1 = 0,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// Backup domain control register
pub const BDCR = MMIO(BDCR_val).init(base_address + 0x70);

/// CSR
const CSR_val = packed struct {
/// LSION [0:0]
/// Internal low-speed oscillator
LSION: u1 = 0,
/// LSIRDY [1:1]
/// Internal low-speed oscillator
LSIRDY: u1 = 0,
/// unused [2:23]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
/// RMVF [24:24]
/// Remove reset flag
RMVF: u1 = 0,
/// BORRSTF [25:25]
/// BOR reset flag
BORRSTF: u1 = 1,
/// PADRSTF [26:26]
/// PIN reset flag
PADRSTF: u1 = 1,
/// PORRSTF [27:27]
/// POR/PDR reset flag
PORRSTF: u1 = 1,
/// SFTRSTF [28:28]
/// Software reset flag
SFTRSTF: u1 = 0,
/// WDGRSTF [29:29]
/// Independent watchdog reset
WDGRSTF: u1 = 0,
/// WWDGRSTF [30:30]
/// Window watchdog reset flag
WWDGRSTF: u1 = 0,
/// LPWRRSTF [31:31]
/// Low-power reset flag
LPWRRSTF: u1 = 0,
};
/// clock control &amp; status
pub const CSR = MMIO(CSR_val).init(base_address + 0x74);

/// SSCGR
const SSCGR_val = packed struct {
/// MODPER [0:12]
/// Modulation period
MODPER: u13 = 0,
/// INCSTEP [13:27]
/// Incrementation step
INCSTEP: u15 = 0,
/// unused [28:29]
_unused28: u2 = 0,
/// SPREADSEL [30:30]
/// Spread Select
SPREADSEL: u1 = 0,
/// SSCGEN [31:31]
/// Spread spectrum modulation
SSCGEN: u1 = 0,
};
/// spread spectrum clock generation
pub const SSCGR = MMIO(SSCGR_val).init(base_address + 0x80);

/// PLLI2SCFGR
const PLLI2SCFGR_val = packed struct {
/// PLLI2SM [0:5]
/// Division factor for audio PLL (PLLI2S)
PLLI2SM: u6 = 0,
/// PLLI2SN [6:14]
/// PLLI2S multiplication factor for
PLLI2SN: u9 = 192,
/// unused [15:15]
_unused15: u1 = 0,
/// PLLI2SP [16:17]
/// PLLI2S division factor for SPDIF-IN
PLLI2SP: u2 = 0,
/// unused [18:23]
_unused18: u6 = 0,
/// PLLI2SQ [24:27]
/// PLLI2S division factor for SAI1
PLLI2SQ: u4 = 0,
/// PLLI2SR [28:30]
/// PLLI2S division factor for I2S
PLLI2SR: u3 = 2,
/// unused [31:31]
_unused31: u1 = 0,
};
/// PLLI2S configuration register
pub const PLLI2SCFGR = MMIO(PLLI2SCFGR_val).init(base_address + 0x84);

/// PLLSAICFGR
const PLLSAICFGR_val = packed struct {
/// PLLSAIM [0:5]
/// Division factor for audio PLLSAI input
PLLSAIM: u6 = 0,
/// PLLSAIN [6:14]
/// PLLSAI division factor for
PLLSAIN: u9 = 192,
/// unused [15:15]
_unused15: u1 = 0,
/// PLLSAIP [16:17]
/// PLLSAI division factor for 48 MHz
PLLSAIP: u2 = 0,
/// unused [18:23]
_unused18: u6 = 0,
/// PLLSAIQ [24:27]
/// PLLSAI division factor for SAIs
PLLSAIQ: u4 = 4,
/// unused [28:31]
_unused28: u4 = 2,
};
/// PLL configuration register
pub const PLLSAICFGR = MMIO(PLLSAICFGR_val).init(base_address + 0x88);

/// DCKCFGR
const DCKCFGR_val = packed struct {
/// PLLI2SDIVQ [0:4]
/// PLLI2S division factor for SAIs
PLLI2SDIVQ: u5 = 0,
/// unused [5:7]
_unused5: u3 = 0,
/// PLLSAIDIVQ [8:12]
/// PLLSAI division factor for SAIs
PLLSAIDIVQ: u5 = 0,
/// unused [13:19]
_unused13: u3 = 0,
_unused16: u4 = 0,
/// SAI1SRC [20:21]
/// SAI1 clock source
SAI1SRC: u2 = 0,
/// SAI2SRC [22:23]
/// SAI2 clock source
SAI2SRC: u2 = 0,
/// TIMPRE [24:24]
/// Timers clocks prescalers
TIMPRE: u1 = 0,
/// I2S1SRC [25:26]
/// I2S APB1 clock source
I2S1SRC: u2 = 0,
/// I2S2SRC [27:28]
/// I2S APB2 clock source
I2S2SRC: u2 = 0,
/// unused [29:31]
_unused29: u3 = 0,
};
/// Dedicated Clock Configuration
pub const DCKCFGR = MMIO(DCKCFGR_val).init(base_address + 0x8c);

/// CKGATENR
const CKGATENR_val = packed struct {
/// AHB2APB1_CKEN [0:0]
/// AHB to APB1 Bridge clock
AHB2APB1_CKEN: u1 = 0,
/// AHB2APB2_CKEN [1:1]
/// AHB to APB2 Bridge clock
AHB2APB2_CKEN: u1 = 0,
/// CM4DBG_CKEN [2:2]
/// Cortex M4 ETM clock enable
CM4DBG_CKEN: u1 = 0,
/// SPARE_CKEN [3:3]
/// Spare clock enable
SPARE_CKEN: u1 = 0,
/// SRAM_CKEN [4:4]
/// SRQAM controller clock
SRAM_CKEN: u1 = 0,
/// FLITF_CKEN [5:5]
/// Flash Interface clock
FLITF_CKEN: u1 = 0,
/// RCC_CKEN [6:6]
/// RCC clock enable
RCC_CKEN: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// clocks gated enable register
pub const CKGATENR = MMIO(CKGATENR_val).init(base_address + 0x90);

/// DCKCFGR2
const DCKCFGR2_val = packed struct {
/// unused [0:21]
_unused0: u8 = 0,
_unused8: u8 = 0,
_unused16: u6 = 0,
/// FMPI2C1SEL [22:23]
/// I2C4 kernel clock source
FMPI2C1SEL: u2 = 0,
/// unused [24:25]
_unused24: u2 = 0,
/// CECSEL [26:26]
/// HDMI CEC clock source
CECSEL: u1 = 0,
/// CK48MSEL [27:27]
/// SDIO/USBFS/HS clock
CK48MSEL: u1 = 0,
/// SDIOSEL [28:28]
/// SDIO clock selection
SDIOSEL: u1 = 0,
/// SPDIFSEL [29:29]
/// SPDIF clock selection
SPDIFSEL: u1 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// dedicated clocks configuration register
pub const DCKCFGR2 = MMIO(DCKCFGR2_val).init(base_address + 0x94);
};

/// General-purpose I/Os
pub const GPIOH = struct {

const base_address = 0x40021c00;
/// MODER
const MODER_val = packed struct {
/// MODER0 [0:1]
/// Port x configuration bits (y =
MODER0: u2 = 0,
/// MODER1 [2:3]
/// Port x configuration bits (y =
MODER1: u2 = 0,
/// MODER2 [4:5]
/// Port x configuration bits (y =
MODER2: u2 = 0,
/// MODER3 [6:7]
/// Port x configuration bits (y =
MODER3: u2 = 0,
/// MODER4 [8:9]
/// Port x configuration bits (y =
MODER4: u2 = 0,
/// MODER5 [10:11]
/// Port x configuration bits (y =
MODER5: u2 = 0,
/// MODER6 [12:13]
/// Port x configuration bits (y =
MODER6: u2 = 0,
/// MODER7 [14:15]
/// Port x configuration bits (y =
MODER7: u2 = 0,
/// MODER8 [16:17]
/// Port x configuration bits (y =
MODER8: u2 = 0,
/// MODER9 [18:19]
/// Port x configuration bits (y =
MODER9: u2 = 0,
/// MODER10 [20:21]
/// Port x configuration bits (y =
MODER10: u2 = 0,
/// MODER11 [22:23]
/// Port x configuration bits (y =
MODER11: u2 = 0,
/// MODER12 [24:25]
/// Port x configuration bits (y =
MODER12: u2 = 0,
/// MODER13 [26:27]
/// Port x configuration bits (y =
MODER13: u2 = 0,
/// MODER14 [28:29]
/// Port x configuration bits (y =
MODER14: u2 = 0,
/// MODER15 [30:31]
/// Port x configuration bits (y =
MODER15: u2 = 0,
};
/// GPIO port mode register
pub const MODER = MMIO(MODER_val).init(base_address + 0x0);

/// OTYPER
const OTYPER_val = packed struct {
/// OT0 [0:0]
/// Port x configuration bits (y =
OT0: u1 = 0,
/// OT1 [1:1]
/// Port x configuration bits (y =
OT1: u1 = 0,
/// OT2 [2:2]
/// Port x configuration bits (y =
OT2: u1 = 0,
/// OT3 [3:3]
/// Port x configuration bits (y =
OT3: u1 = 0,
/// OT4 [4:4]
/// Port x configuration bits (y =
OT4: u1 = 0,
/// OT5 [5:5]
/// Port x configuration bits (y =
OT5: u1 = 0,
/// OT6 [6:6]
/// Port x configuration bits (y =
OT6: u1 = 0,
/// OT7 [7:7]
/// Port x configuration bits (y =
OT7: u1 = 0,
/// OT8 [8:8]
/// Port x configuration bits (y =
OT8: u1 = 0,
/// OT9 [9:9]
/// Port x configuration bits (y =
OT9: u1 = 0,
/// OT10 [10:10]
/// Port x configuration bits (y =
OT10: u1 = 0,
/// OT11 [11:11]
/// Port x configuration bits (y =
OT11: u1 = 0,
/// OT12 [12:12]
/// Port x configuration bits (y =
OT12: u1 = 0,
/// OT13 [13:13]
/// Port x configuration bits (y =
OT13: u1 = 0,
/// OT14 [14:14]
/// Port x configuration bits (y =
OT14: u1 = 0,
/// OT15 [15:15]
/// Port x configuration bits (y =
OT15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output type register
pub const OTYPER = MMIO(OTYPER_val).init(base_address + 0x4);

/// OSPEEDR
const OSPEEDR_val = packed struct {
/// OSPEEDR0 [0:1]
/// Port x configuration bits (y =
OSPEEDR0: u2 = 0,
/// OSPEEDR1 [2:3]
/// Port x configuration bits (y =
OSPEEDR1: u2 = 0,
/// OSPEEDR2 [4:5]
/// Port x configuration bits (y =
OSPEEDR2: u2 = 0,
/// OSPEEDR3 [6:7]
/// Port x configuration bits (y =
OSPEEDR3: u2 = 0,
/// OSPEEDR4 [8:9]
/// Port x configuration bits (y =
OSPEEDR4: u2 = 0,
/// OSPEEDR5 [10:11]
/// Port x configuration bits (y =
OSPEEDR5: u2 = 0,
/// OSPEEDR6 [12:13]
/// Port x configuration bits (y =
OSPEEDR6: u2 = 0,
/// OSPEEDR7 [14:15]
/// Port x configuration bits (y =
OSPEEDR7: u2 = 0,
/// OSPEEDR8 [16:17]
/// Port x configuration bits (y =
OSPEEDR8: u2 = 0,
/// OSPEEDR9 [18:19]
/// Port x configuration bits (y =
OSPEEDR9: u2 = 0,
/// OSPEEDR10 [20:21]
/// Port x configuration bits (y =
OSPEEDR10: u2 = 0,
/// OSPEEDR11 [22:23]
/// Port x configuration bits (y =
OSPEEDR11: u2 = 0,
/// OSPEEDR12 [24:25]
/// Port x configuration bits (y =
OSPEEDR12: u2 = 0,
/// OSPEEDR13 [26:27]
/// Port x configuration bits (y =
OSPEEDR13: u2 = 0,
/// OSPEEDR14 [28:29]
/// Port x configuration bits (y =
OSPEEDR14: u2 = 0,
/// OSPEEDR15 [30:31]
/// Port x configuration bits (y =
OSPEEDR15: u2 = 0,
};
/// GPIO port output speed
pub const OSPEEDR = MMIO(OSPEEDR_val).init(base_address + 0x8);

/// PUPDR
const PUPDR_val = packed struct {
/// PUPDR0 [0:1]
/// Port x configuration bits (y =
PUPDR0: u2 = 0,
/// PUPDR1 [2:3]
/// Port x configuration bits (y =
PUPDR1: u2 = 0,
/// PUPDR2 [4:5]
/// Port x configuration bits (y =
PUPDR2: u2 = 0,
/// PUPDR3 [6:7]
/// Port x configuration bits (y =
PUPDR3: u2 = 0,
/// PUPDR4 [8:9]
/// Port x configuration bits (y =
PUPDR4: u2 = 0,
/// PUPDR5 [10:11]
/// Port x configuration bits (y =
PUPDR5: u2 = 0,
/// PUPDR6 [12:13]
/// Port x configuration bits (y =
PUPDR6: u2 = 0,
/// PUPDR7 [14:15]
/// Port x configuration bits (y =
PUPDR7: u2 = 0,
/// PUPDR8 [16:17]
/// Port x configuration bits (y =
PUPDR8: u2 = 0,
/// PUPDR9 [18:19]
/// Port x configuration bits (y =
PUPDR9: u2 = 0,
/// PUPDR10 [20:21]
/// Port x configuration bits (y =
PUPDR10: u2 = 0,
/// PUPDR11 [22:23]
/// Port x configuration bits (y =
PUPDR11: u2 = 0,
/// PUPDR12 [24:25]
/// Port x configuration bits (y =
PUPDR12: u2 = 0,
/// PUPDR13 [26:27]
/// Port x configuration bits (y =
PUPDR13: u2 = 0,
/// PUPDR14 [28:29]
/// Port x configuration bits (y =
PUPDR14: u2 = 0,
/// PUPDR15 [30:31]
/// Port x configuration bits (y =
PUPDR15: u2 = 0,
};
/// GPIO port pull-up/pull-down
pub const PUPDR = MMIO(PUPDR_val).init(base_address + 0xc);

/// IDR
const IDR_val = packed struct {
/// IDR0 [0:0]
/// Port input data (y =
IDR0: u1 = 0,
/// IDR1 [1:1]
/// Port input data (y =
IDR1: u1 = 0,
/// IDR2 [2:2]
/// Port input data (y =
IDR2: u1 = 0,
/// IDR3 [3:3]
/// Port input data (y =
IDR3: u1 = 0,
/// IDR4 [4:4]
/// Port input data (y =
IDR4: u1 = 0,
/// IDR5 [5:5]
/// Port input data (y =
IDR5: u1 = 0,
/// IDR6 [6:6]
/// Port input data (y =
IDR6: u1 = 0,
/// IDR7 [7:7]
/// Port input data (y =
IDR7: u1 = 0,
/// IDR8 [8:8]
/// Port input data (y =
IDR8: u1 = 0,
/// IDR9 [9:9]
/// Port input data (y =
IDR9: u1 = 0,
/// IDR10 [10:10]
/// Port input data (y =
IDR10: u1 = 0,
/// IDR11 [11:11]
/// Port input data (y =
IDR11: u1 = 0,
/// IDR12 [12:12]
/// Port input data (y =
IDR12: u1 = 0,
/// IDR13 [13:13]
/// Port input data (y =
IDR13: u1 = 0,
/// IDR14 [14:14]
/// Port input data (y =
IDR14: u1 = 0,
/// IDR15 [15:15]
/// Port input data (y =
IDR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port input data register
pub const IDR = MMIO(IDR_val).init(base_address + 0x10);

/// ODR
const ODR_val = packed struct {
/// ODR0 [0:0]
/// Port output data (y =
ODR0: u1 = 0,
/// ODR1 [1:1]
/// Port output data (y =
ODR1: u1 = 0,
/// ODR2 [2:2]
/// Port output data (y =
ODR2: u1 = 0,
/// ODR3 [3:3]
/// Port output data (y =
ODR3: u1 = 0,
/// ODR4 [4:4]
/// Port output data (y =
ODR4: u1 = 0,
/// ODR5 [5:5]
/// Port output data (y =
ODR5: u1 = 0,
/// ODR6 [6:6]
/// Port output data (y =
ODR6: u1 = 0,
/// ODR7 [7:7]
/// Port output data (y =
ODR7: u1 = 0,
/// ODR8 [8:8]
/// Port output data (y =
ODR8: u1 = 0,
/// ODR9 [9:9]
/// Port output data (y =
ODR9: u1 = 0,
/// ODR10 [10:10]
/// Port output data (y =
ODR10: u1 = 0,
/// ODR11 [11:11]
/// Port output data (y =
ODR11: u1 = 0,
/// ODR12 [12:12]
/// Port output data (y =
ODR12: u1 = 0,
/// ODR13 [13:13]
/// Port output data (y =
ODR13: u1 = 0,
/// ODR14 [14:14]
/// Port output data (y =
ODR14: u1 = 0,
/// ODR15 [15:15]
/// Port output data (y =
ODR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output data register
pub const ODR = MMIO(ODR_val).init(base_address + 0x14);

/// BSRR
const BSRR_val = packed struct {
/// BS0 [0:0]
/// Port x set bit y (y=
BS0: u1 = 0,
/// BS1 [1:1]
/// Port x set bit y (y=
BS1: u1 = 0,
/// BS2 [2:2]
/// Port x set bit y (y=
BS2: u1 = 0,
/// BS3 [3:3]
/// Port x set bit y (y=
BS3: u1 = 0,
/// BS4 [4:4]
/// Port x set bit y (y=
BS4: u1 = 0,
/// BS5 [5:5]
/// Port x set bit y (y=
BS5: u1 = 0,
/// BS6 [6:6]
/// Port x set bit y (y=
BS6: u1 = 0,
/// BS7 [7:7]
/// Port x set bit y (y=
BS7: u1 = 0,
/// BS8 [8:8]
/// Port x set bit y (y=
BS8: u1 = 0,
/// BS9 [9:9]
/// Port x set bit y (y=
BS9: u1 = 0,
/// BS10 [10:10]
/// Port x set bit y (y=
BS10: u1 = 0,
/// BS11 [11:11]
/// Port x set bit y (y=
BS11: u1 = 0,
/// BS12 [12:12]
/// Port x set bit y (y=
BS12: u1 = 0,
/// BS13 [13:13]
/// Port x set bit y (y=
BS13: u1 = 0,
/// BS14 [14:14]
/// Port x set bit y (y=
BS14: u1 = 0,
/// BS15 [15:15]
/// Port x set bit y (y=
BS15: u1 = 0,
/// BR0 [16:16]
/// Port x set bit y (y=
BR0: u1 = 0,
/// BR1 [17:17]
/// Port x reset bit y (y =
BR1: u1 = 0,
/// BR2 [18:18]
/// Port x reset bit y (y =
BR2: u1 = 0,
/// BR3 [19:19]
/// Port x reset bit y (y =
BR3: u1 = 0,
/// BR4 [20:20]
/// Port x reset bit y (y =
BR4: u1 = 0,
/// BR5 [21:21]
/// Port x reset bit y (y =
BR5: u1 = 0,
/// BR6 [22:22]
/// Port x reset bit y (y =
BR6: u1 = 0,
/// BR7 [23:23]
/// Port x reset bit y (y =
BR7: u1 = 0,
/// BR8 [24:24]
/// Port x reset bit y (y =
BR8: u1 = 0,
/// BR9 [25:25]
/// Port x reset bit y (y =
BR9: u1 = 0,
/// BR10 [26:26]
/// Port x reset bit y (y =
BR10: u1 = 0,
/// BR11 [27:27]
/// Port x reset bit y (y =
BR11: u1 = 0,
/// BR12 [28:28]
/// Port x reset bit y (y =
BR12: u1 = 0,
/// BR13 [29:29]
/// Port x reset bit y (y =
BR13: u1 = 0,
/// BR14 [30:30]
/// Port x reset bit y (y =
BR14: u1 = 0,
/// BR15 [31:31]
/// Port x reset bit y (y =
BR15: u1 = 0,
};
/// GPIO port bit set/reset
pub const BSRR = MMIO(BSRR_val).init(base_address + 0x18);

/// LCKR
const LCKR_val = packed struct {
/// LCK0 [0:0]
/// Port x lock bit y (y=
LCK0: u1 = 0,
/// LCK1 [1:1]
/// Port x lock bit y (y=
LCK1: u1 = 0,
/// LCK2 [2:2]
/// Port x lock bit y (y=
LCK2: u1 = 0,
/// LCK3 [3:3]
/// Port x lock bit y (y=
LCK3: u1 = 0,
/// LCK4 [4:4]
/// Port x lock bit y (y=
LCK4: u1 = 0,
/// LCK5 [5:5]
/// Port x lock bit y (y=
LCK5: u1 = 0,
/// LCK6 [6:6]
/// Port x lock bit y (y=
LCK6: u1 = 0,
/// LCK7 [7:7]
/// Port x lock bit y (y=
LCK7: u1 = 0,
/// LCK8 [8:8]
/// Port x lock bit y (y=
LCK8: u1 = 0,
/// LCK9 [9:9]
/// Port x lock bit y (y=
LCK9: u1 = 0,
/// LCK10 [10:10]
/// Port x lock bit y (y=
LCK10: u1 = 0,
/// LCK11 [11:11]
/// Port x lock bit y (y=
LCK11: u1 = 0,
/// LCK12 [12:12]
/// Port x lock bit y (y=
LCK12: u1 = 0,
/// LCK13 [13:13]
/// Port x lock bit y (y=
LCK13: u1 = 0,
/// LCK14 [14:14]
/// Port x lock bit y (y=
LCK14: u1 = 0,
/// LCK15 [15:15]
/// Port x lock bit y (y=
LCK15: u1 = 0,
/// LCKK [16:16]
/// Port x lock bit y (y=
LCKK: u1 = 0,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// GPIO port configuration lock
pub const LCKR = MMIO(LCKR_val).init(base_address + 0x1c);

/// AFRL
const AFRL_val = packed struct {
/// AFRL0 [0:3]
/// Alternate function selection for port x
AFRL0: u4 = 0,
/// AFRL1 [4:7]
/// Alternate function selection for port x
AFRL1: u4 = 0,
/// AFRL2 [8:11]
/// Alternate function selection for port x
AFRL2: u4 = 0,
/// AFRL3 [12:15]
/// Alternate function selection for port x
AFRL3: u4 = 0,
/// AFRL4 [16:19]
/// Alternate function selection for port x
AFRL4: u4 = 0,
/// AFRL5 [20:23]
/// Alternate function selection for port x
AFRL5: u4 = 0,
/// AFRL6 [24:27]
/// Alternate function selection for port x
AFRL6: u4 = 0,
/// AFRL7 [28:31]
/// Alternate function selection for port x
AFRL7: u4 = 0,
};
/// GPIO alternate function low
pub const AFRL = MMIO(AFRL_val).init(base_address + 0x20);

/// AFRH
const AFRH_val = packed struct {
/// AFRH8 [0:3]
/// Alternate function selection for port x
AFRH8: u4 = 0,
/// AFRH9 [4:7]
/// Alternate function selection for port x
AFRH9: u4 = 0,
/// AFRH10 [8:11]
/// Alternate function selection for port x
AFRH10: u4 = 0,
/// AFRH11 [12:15]
/// Alternate function selection for port x
AFRH11: u4 = 0,
/// AFRH12 [16:19]
/// Alternate function selection for port x
AFRH12: u4 = 0,
/// AFRH13 [20:23]
/// Alternate function selection for port x
AFRH13: u4 = 0,
/// AFRH14 [24:27]
/// Alternate function selection for port x
AFRH14: u4 = 0,
/// AFRH15 [28:31]
/// Alternate function selection for port x
AFRH15: u4 = 0,
};
/// GPIO alternate function high
pub const AFRH = MMIO(AFRH_val).init(base_address + 0x24);
};

/// General-purpose I/Os
pub const GPIOG = struct {

const base_address = 0x40021800;
/// MODER
const MODER_val = packed struct {
/// MODER0 [0:1]
/// Port x configuration bits (y =
MODER0: u2 = 0,
/// MODER1 [2:3]
/// Port x configuration bits (y =
MODER1: u2 = 0,
/// MODER2 [4:5]
/// Port x configuration bits (y =
MODER2: u2 = 0,
/// MODER3 [6:7]
/// Port x configuration bits (y =
MODER3: u2 = 0,
/// MODER4 [8:9]
/// Port x configuration bits (y =
MODER4: u2 = 0,
/// MODER5 [10:11]
/// Port x configuration bits (y =
MODER5: u2 = 0,
/// MODER6 [12:13]
/// Port x configuration bits (y =
MODER6: u2 = 0,
/// MODER7 [14:15]
/// Port x configuration bits (y =
MODER7: u2 = 0,
/// MODER8 [16:17]
/// Port x configuration bits (y =
MODER8: u2 = 0,
/// MODER9 [18:19]
/// Port x configuration bits (y =
MODER9: u2 = 0,
/// MODER10 [20:21]
/// Port x configuration bits (y =
MODER10: u2 = 0,
/// MODER11 [22:23]
/// Port x configuration bits (y =
MODER11: u2 = 0,
/// MODER12 [24:25]
/// Port x configuration bits (y =
MODER12: u2 = 0,
/// MODER13 [26:27]
/// Port x configuration bits (y =
MODER13: u2 = 0,
/// MODER14 [28:29]
/// Port x configuration bits (y =
MODER14: u2 = 0,
/// MODER15 [30:31]
/// Port x configuration bits (y =
MODER15: u2 = 0,
};
/// GPIO port mode register
pub const MODER = MMIO(MODER_val).init(base_address + 0x0);

/// OTYPER
const OTYPER_val = packed struct {
/// OT0 [0:0]
/// Port x configuration bits (y =
OT0: u1 = 0,
/// OT1 [1:1]
/// Port x configuration bits (y =
OT1: u1 = 0,
/// OT2 [2:2]
/// Port x configuration bits (y =
OT2: u1 = 0,
/// OT3 [3:3]
/// Port x configuration bits (y =
OT3: u1 = 0,
/// OT4 [4:4]
/// Port x configuration bits (y =
OT4: u1 = 0,
/// OT5 [5:5]
/// Port x configuration bits (y =
OT5: u1 = 0,
/// OT6 [6:6]
/// Port x configuration bits (y =
OT6: u1 = 0,
/// OT7 [7:7]
/// Port x configuration bits (y =
OT7: u1 = 0,
/// OT8 [8:8]
/// Port x configuration bits (y =
OT8: u1 = 0,
/// OT9 [9:9]
/// Port x configuration bits (y =
OT9: u1 = 0,
/// OT10 [10:10]
/// Port x configuration bits (y =
OT10: u1 = 0,
/// OT11 [11:11]
/// Port x configuration bits (y =
OT11: u1 = 0,
/// OT12 [12:12]
/// Port x configuration bits (y =
OT12: u1 = 0,
/// OT13 [13:13]
/// Port x configuration bits (y =
OT13: u1 = 0,
/// OT14 [14:14]
/// Port x configuration bits (y =
OT14: u1 = 0,
/// OT15 [15:15]
/// Port x configuration bits (y =
OT15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output type register
pub const OTYPER = MMIO(OTYPER_val).init(base_address + 0x4);

/// OSPEEDR
const OSPEEDR_val = packed struct {
/// OSPEEDR0 [0:1]
/// Port x configuration bits (y =
OSPEEDR0: u2 = 0,
/// OSPEEDR1 [2:3]
/// Port x configuration bits (y =
OSPEEDR1: u2 = 0,
/// OSPEEDR2 [4:5]
/// Port x configuration bits (y =
OSPEEDR2: u2 = 0,
/// OSPEEDR3 [6:7]
/// Port x configuration bits (y =
OSPEEDR3: u2 = 0,
/// OSPEEDR4 [8:9]
/// Port x configuration bits (y =
OSPEEDR4: u2 = 0,
/// OSPEEDR5 [10:11]
/// Port x configuration bits (y =
OSPEEDR5: u2 = 0,
/// OSPEEDR6 [12:13]
/// Port x configuration bits (y =
OSPEEDR6: u2 = 0,
/// OSPEEDR7 [14:15]
/// Port x configuration bits (y =
OSPEEDR7: u2 = 0,
/// OSPEEDR8 [16:17]
/// Port x configuration bits (y =
OSPEEDR8: u2 = 0,
/// OSPEEDR9 [18:19]
/// Port x configuration bits (y =
OSPEEDR9: u2 = 0,
/// OSPEEDR10 [20:21]
/// Port x configuration bits (y =
OSPEEDR10: u2 = 0,
/// OSPEEDR11 [22:23]
/// Port x configuration bits (y =
OSPEEDR11: u2 = 0,
/// OSPEEDR12 [24:25]
/// Port x configuration bits (y =
OSPEEDR12: u2 = 0,
/// OSPEEDR13 [26:27]
/// Port x configuration bits (y =
OSPEEDR13: u2 = 0,
/// OSPEEDR14 [28:29]
/// Port x configuration bits (y =
OSPEEDR14: u2 = 0,
/// OSPEEDR15 [30:31]
/// Port x configuration bits (y =
OSPEEDR15: u2 = 0,
};
/// GPIO port output speed
pub const OSPEEDR = MMIO(OSPEEDR_val).init(base_address + 0x8);

/// PUPDR
const PUPDR_val = packed struct {
/// PUPDR0 [0:1]
/// Port x configuration bits (y =
PUPDR0: u2 = 0,
/// PUPDR1 [2:3]
/// Port x configuration bits (y =
PUPDR1: u2 = 0,
/// PUPDR2 [4:5]
/// Port x configuration bits (y =
PUPDR2: u2 = 0,
/// PUPDR3 [6:7]
/// Port x configuration bits (y =
PUPDR3: u2 = 0,
/// PUPDR4 [8:9]
/// Port x configuration bits (y =
PUPDR4: u2 = 0,
/// PUPDR5 [10:11]
/// Port x configuration bits (y =
PUPDR5: u2 = 0,
/// PUPDR6 [12:13]
/// Port x configuration bits (y =
PUPDR6: u2 = 0,
/// PUPDR7 [14:15]
/// Port x configuration bits (y =
PUPDR7: u2 = 0,
/// PUPDR8 [16:17]
/// Port x configuration bits (y =
PUPDR8: u2 = 0,
/// PUPDR9 [18:19]
/// Port x configuration bits (y =
PUPDR9: u2 = 0,
/// PUPDR10 [20:21]
/// Port x configuration bits (y =
PUPDR10: u2 = 0,
/// PUPDR11 [22:23]
/// Port x configuration bits (y =
PUPDR11: u2 = 0,
/// PUPDR12 [24:25]
/// Port x configuration bits (y =
PUPDR12: u2 = 0,
/// PUPDR13 [26:27]
/// Port x configuration bits (y =
PUPDR13: u2 = 0,
/// PUPDR14 [28:29]
/// Port x configuration bits (y =
PUPDR14: u2 = 0,
/// PUPDR15 [30:31]
/// Port x configuration bits (y =
PUPDR15: u2 = 0,
};
/// GPIO port pull-up/pull-down
pub const PUPDR = MMIO(PUPDR_val).init(base_address + 0xc);

/// IDR
const IDR_val = packed struct {
/// IDR0 [0:0]
/// Port input data (y =
IDR0: u1 = 0,
/// IDR1 [1:1]
/// Port input data (y =
IDR1: u1 = 0,
/// IDR2 [2:2]
/// Port input data (y =
IDR2: u1 = 0,
/// IDR3 [3:3]
/// Port input data (y =
IDR3: u1 = 0,
/// IDR4 [4:4]
/// Port input data (y =
IDR4: u1 = 0,
/// IDR5 [5:5]
/// Port input data (y =
IDR5: u1 = 0,
/// IDR6 [6:6]
/// Port input data (y =
IDR6: u1 = 0,
/// IDR7 [7:7]
/// Port input data (y =
IDR7: u1 = 0,
/// IDR8 [8:8]
/// Port input data (y =
IDR8: u1 = 0,
/// IDR9 [9:9]
/// Port input data (y =
IDR9: u1 = 0,
/// IDR10 [10:10]
/// Port input data (y =
IDR10: u1 = 0,
/// IDR11 [11:11]
/// Port input data (y =
IDR11: u1 = 0,
/// IDR12 [12:12]
/// Port input data (y =
IDR12: u1 = 0,
/// IDR13 [13:13]
/// Port input data (y =
IDR13: u1 = 0,
/// IDR14 [14:14]
/// Port input data (y =
IDR14: u1 = 0,
/// IDR15 [15:15]
/// Port input data (y =
IDR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port input data register
pub const IDR = MMIO(IDR_val).init(base_address + 0x10);

/// ODR
const ODR_val = packed struct {
/// ODR0 [0:0]
/// Port output data (y =
ODR0: u1 = 0,
/// ODR1 [1:1]
/// Port output data (y =
ODR1: u1 = 0,
/// ODR2 [2:2]
/// Port output data (y =
ODR2: u1 = 0,
/// ODR3 [3:3]
/// Port output data (y =
ODR3: u1 = 0,
/// ODR4 [4:4]
/// Port output data (y =
ODR4: u1 = 0,
/// ODR5 [5:5]
/// Port output data (y =
ODR5: u1 = 0,
/// ODR6 [6:6]
/// Port output data (y =
ODR6: u1 = 0,
/// ODR7 [7:7]
/// Port output data (y =
ODR7: u1 = 0,
/// ODR8 [8:8]
/// Port output data (y =
ODR8: u1 = 0,
/// ODR9 [9:9]
/// Port output data (y =
ODR9: u1 = 0,
/// ODR10 [10:10]
/// Port output data (y =
ODR10: u1 = 0,
/// ODR11 [11:11]
/// Port output data (y =
ODR11: u1 = 0,
/// ODR12 [12:12]
/// Port output data (y =
ODR12: u1 = 0,
/// ODR13 [13:13]
/// Port output data (y =
ODR13: u1 = 0,
/// ODR14 [14:14]
/// Port output data (y =
ODR14: u1 = 0,
/// ODR15 [15:15]
/// Port output data (y =
ODR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output data register
pub const ODR = MMIO(ODR_val).init(base_address + 0x14);

/// BSRR
const BSRR_val = packed struct {
/// BS0 [0:0]
/// Port x set bit y (y=
BS0: u1 = 0,
/// BS1 [1:1]
/// Port x set bit y (y=
BS1: u1 = 0,
/// BS2 [2:2]
/// Port x set bit y (y=
BS2: u1 = 0,
/// BS3 [3:3]
/// Port x set bit y (y=
BS3: u1 = 0,
/// BS4 [4:4]
/// Port x set bit y (y=
BS4: u1 = 0,
/// BS5 [5:5]
/// Port x set bit y (y=
BS5: u1 = 0,
/// BS6 [6:6]
/// Port x set bit y (y=
BS6: u1 = 0,
/// BS7 [7:7]
/// Port x set bit y (y=
BS7: u1 = 0,
/// BS8 [8:8]
/// Port x set bit y (y=
BS8: u1 = 0,
/// BS9 [9:9]
/// Port x set bit y (y=
BS9: u1 = 0,
/// BS10 [10:10]
/// Port x set bit y (y=
BS10: u1 = 0,
/// BS11 [11:11]
/// Port x set bit y (y=
BS11: u1 = 0,
/// BS12 [12:12]
/// Port x set bit y (y=
BS12: u1 = 0,
/// BS13 [13:13]
/// Port x set bit y (y=
BS13: u1 = 0,
/// BS14 [14:14]
/// Port x set bit y (y=
BS14: u1 = 0,
/// BS15 [15:15]
/// Port x set bit y (y=
BS15: u1 = 0,
/// BR0 [16:16]
/// Port x set bit y (y=
BR0: u1 = 0,
/// BR1 [17:17]
/// Port x reset bit y (y =
BR1: u1 = 0,
/// BR2 [18:18]
/// Port x reset bit y (y =
BR2: u1 = 0,
/// BR3 [19:19]
/// Port x reset bit y (y =
BR3: u1 = 0,
/// BR4 [20:20]
/// Port x reset bit y (y =
BR4: u1 = 0,
/// BR5 [21:21]
/// Port x reset bit y (y =
BR5: u1 = 0,
/// BR6 [22:22]
/// Port x reset bit y (y =
BR6: u1 = 0,
/// BR7 [23:23]
/// Port x reset bit y (y =
BR7: u1 = 0,
/// BR8 [24:24]
/// Port x reset bit y (y =
BR8: u1 = 0,
/// BR9 [25:25]
/// Port x reset bit y (y =
BR9: u1 = 0,
/// BR10 [26:26]
/// Port x reset bit y (y =
BR10: u1 = 0,
/// BR11 [27:27]
/// Port x reset bit y (y =
BR11: u1 = 0,
/// BR12 [28:28]
/// Port x reset bit y (y =
BR12: u1 = 0,
/// BR13 [29:29]
/// Port x reset bit y (y =
BR13: u1 = 0,
/// BR14 [30:30]
/// Port x reset bit y (y =
BR14: u1 = 0,
/// BR15 [31:31]
/// Port x reset bit y (y =
BR15: u1 = 0,
};
/// GPIO port bit set/reset
pub const BSRR = MMIO(BSRR_val).init(base_address + 0x18);

/// LCKR
const LCKR_val = packed struct {
/// LCK0 [0:0]
/// Port x lock bit y (y=
LCK0: u1 = 0,
/// LCK1 [1:1]
/// Port x lock bit y (y=
LCK1: u1 = 0,
/// LCK2 [2:2]
/// Port x lock bit y (y=
LCK2: u1 = 0,
/// LCK3 [3:3]
/// Port x lock bit y (y=
LCK3: u1 = 0,
/// LCK4 [4:4]
/// Port x lock bit y (y=
LCK4: u1 = 0,
/// LCK5 [5:5]
/// Port x lock bit y (y=
LCK5: u1 = 0,
/// LCK6 [6:6]
/// Port x lock bit y (y=
LCK6: u1 = 0,
/// LCK7 [7:7]
/// Port x lock bit y (y=
LCK7: u1 = 0,
/// LCK8 [8:8]
/// Port x lock bit y (y=
LCK8: u1 = 0,
/// LCK9 [9:9]
/// Port x lock bit y (y=
LCK9: u1 = 0,
/// LCK10 [10:10]
/// Port x lock bit y (y=
LCK10: u1 = 0,
/// LCK11 [11:11]
/// Port x lock bit y (y=
LCK11: u1 = 0,
/// LCK12 [12:12]
/// Port x lock bit y (y=
LCK12: u1 = 0,
/// LCK13 [13:13]
/// Port x lock bit y (y=
LCK13: u1 = 0,
/// LCK14 [14:14]
/// Port x lock bit y (y=
LCK14: u1 = 0,
/// LCK15 [15:15]
/// Port x lock bit y (y=
LCK15: u1 = 0,
/// LCKK [16:16]
/// Port x lock bit y (y=
LCKK: u1 = 0,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// GPIO port configuration lock
pub const LCKR = MMIO(LCKR_val).init(base_address + 0x1c);

/// AFRL
const AFRL_val = packed struct {
/// AFRL0 [0:3]
/// Alternate function selection for port x
AFRL0: u4 = 0,
/// AFRL1 [4:7]
/// Alternate function selection for port x
AFRL1: u4 = 0,
/// AFRL2 [8:11]
/// Alternate function selection for port x
AFRL2: u4 = 0,
/// AFRL3 [12:15]
/// Alternate function selection for port x
AFRL3: u4 = 0,
/// AFRL4 [16:19]
/// Alternate function selection for port x
AFRL4: u4 = 0,
/// AFRL5 [20:23]
/// Alternate function selection for port x
AFRL5: u4 = 0,
/// AFRL6 [24:27]
/// Alternate function selection for port x
AFRL6: u4 = 0,
/// AFRL7 [28:31]
/// Alternate function selection for port x
AFRL7: u4 = 0,
};
/// GPIO alternate function low
pub const AFRL = MMIO(AFRL_val).init(base_address + 0x20);

/// AFRH
const AFRH_val = packed struct {
/// AFRH8 [0:3]
/// Alternate function selection for port x
AFRH8: u4 = 0,
/// AFRH9 [4:7]
/// Alternate function selection for port x
AFRH9: u4 = 0,
/// AFRH10 [8:11]
/// Alternate function selection for port x
AFRH10: u4 = 0,
/// AFRH11 [12:15]
/// Alternate function selection for port x
AFRH11: u4 = 0,
/// AFRH12 [16:19]
/// Alternate function selection for port x
AFRH12: u4 = 0,
/// AFRH13 [20:23]
/// Alternate function selection for port x
AFRH13: u4 = 0,
/// AFRH14 [24:27]
/// Alternate function selection for port x
AFRH14: u4 = 0,
/// AFRH15 [28:31]
/// Alternate function selection for port x
AFRH15: u4 = 0,
};
/// GPIO alternate function high
pub const AFRH = MMIO(AFRH_val).init(base_address + 0x24);
};

/// General-purpose I/Os
pub const GPIOF = struct {

const base_address = 0x40021400;
/// MODER
const MODER_val = packed struct {
/// MODER0 [0:1]
/// Port x configuration bits (y =
MODER0: u2 = 0,
/// MODER1 [2:3]
/// Port x configuration bits (y =
MODER1: u2 = 0,
/// MODER2 [4:5]
/// Port x configuration bits (y =
MODER2: u2 = 0,
/// MODER3 [6:7]
/// Port x configuration bits (y =
MODER3: u2 = 0,
/// MODER4 [8:9]
/// Port x configuration bits (y =
MODER4: u2 = 0,
/// MODER5 [10:11]
/// Port x configuration bits (y =
MODER5: u2 = 0,
/// MODER6 [12:13]
/// Port x configuration bits (y =
MODER6: u2 = 0,
/// MODER7 [14:15]
/// Port x configuration bits (y =
MODER7: u2 = 0,
/// MODER8 [16:17]
/// Port x configuration bits (y =
MODER8: u2 = 0,
/// MODER9 [18:19]
/// Port x configuration bits (y =
MODER9: u2 = 0,
/// MODER10 [20:21]
/// Port x configuration bits (y =
MODER10: u2 = 0,
/// MODER11 [22:23]
/// Port x configuration bits (y =
MODER11: u2 = 0,
/// MODER12 [24:25]
/// Port x configuration bits (y =
MODER12: u2 = 0,
/// MODER13 [26:27]
/// Port x configuration bits (y =
MODER13: u2 = 0,
/// MODER14 [28:29]
/// Port x configuration bits (y =
MODER14: u2 = 0,
/// MODER15 [30:31]
/// Port x configuration bits (y =
MODER15: u2 = 0,
};
/// GPIO port mode register
pub const MODER = MMIO(MODER_val).init(base_address + 0x0);

/// OTYPER
const OTYPER_val = packed struct {
/// OT0 [0:0]
/// Port x configuration bits (y =
OT0: u1 = 0,
/// OT1 [1:1]
/// Port x configuration bits (y =
OT1: u1 = 0,
/// OT2 [2:2]
/// Port x configuration bits (y =
OT2: u1 = 0,
/// OT3 [3:3]
/// Port x configuration bits (y =
OT3: u1 = 0,
/// OT4 [4:4]
/// Port x configuration bits (y =
OT4: u1 = 0,
/// OT5 [5:5]
/// Port x configuration bits (y =
OT5: u1 = 0,
/// OT6 [6:6]
/// Port x configuration bits (y =
OT6: u1 = 0,
/// OT7 [7:7]
/// Port x configuration bits (y =
OT7: u1 = 0,
/// OT8 [8:8]
/// Port x configuration bits (y =
OT8: u1 = 0,
/// OT9 [9:9]
/// Port x configuration bits (y =
OT9: u1 = 0,
/// OT10 [10:10]
/// Port x configuration bits (y =
OT10: u1 = 0,
/// OT11 [11:11]
/// Port x configuration bits (y =
OT11: u1 = 0,
/// OT12 [12:12]
/// Port x configuration bits (y =
OT12: u1 = 0,
/// OT13 [13:13]
/// Port x configuration bits (y =
OT13: u1 = 0,
/// OT14 [14:14]
/// Port x configuration bits (y =
OT14: u1 = 0,
/// OT15 [15:15]
/// Port x configuration bits (y =
OT15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output type register
pub const OTYPER = MMIO(OTYPER_val).init(base_address + 0x4);

/// OSPEEDR
const OSPEEDR_val = packed struct {
/// OSPEEDR0 [0:1]
/// Port x configuration bits (y =
OSPEEDR0: u2 = 0,
/// OSPEEDR1 [2:3]
/// Port x configuration bits (y =
OSPEEDR1: u2 = 0,
/// OSPEEDR2 [4:5]
/// Port x configuration bits (y =
OSPEEDR2: u2 = 0,
/// OSPEEDR3 [6:7]
/// Port x configuration bits (y =
OSPEEDR3: u2 = 0,
/// OSPEEDR4 [8:9]
/// Port x configuration bits (y =
OSPEEDR4: u2 = 0,
/// OSPEEDR5 [10:11]
/// Port x configuration bits (y =
OSPEEDR5: u2 = 0,
/// OSPEEDR6 [12:13]
/// Port x configuration bits (y =
OSPEEDR6: u2 = 0,
/// OSPEEDR7 [14:15]
/// Port x configuration bits (y =
OSPEEDR7: u2 = 0,
/// OSPEEDR8 [16:17]
/// Port x configuration bits (y =
OSPEEDR8: u2 = 0,
/// OSPEEDR9 [18:19]
/// Port x configuration bits (y =
OSPEEDR9: u2 = 0,
/// OSPEEDR10 [20:21]
/// Port x configuration bits (y =
OSPEEDR10: u2 = 0,
/// OSPEEDR11 [22:23]
/// Port x configuration bits (y =
OSPEEDR11: u2 = 0,
/// OSPEEDR12 [24:25]
/// Port x configuration bits (y =
OSPEEDR12: u2 = 0,
/// OSPEEDR13 [26:27]
/// Port x configuration bits (y =
OSPEEDR13: u2 = 0,
/// OSPEEDR14 [28:29]
/// Port x configuration bits (y =
OSPEEDR14: u2 = 0,
/// OSPEEDR15 [30:31]
/// Port x configuration bits (y =
OSPEEDR15: u2 = 0,
};
/// GPIO port output speed
pub const OSPEEDR = MMIO(OSPEEDR_val).init(base_address + 0x8);

/// PUPDR
const PUPDR_val = packed struct {
/// PUPDR0 [0:1]
/// Port x configuration bits (y =
PUPDR0: u2 = 0,
/// PUPDR1 [2:3]
/// Port x configuration bits (y =
PUPDR1: u2 = 0,
/// PUPDR2 [4:5]
/// Port x configuration bits (y =
PUPDR2: u2 = 0,
/// PUPDR3 [6:7]
/// Port x configuration bits (y =
PUPDR3: u2 = 0,
/// PUPDR4 [8:9]
/// Port x configuration bits (y =
PUPDR4: u2 = 0,
/// PUPDR5 [10:11]
/// Port x configuration bits (y =
PUPDR5: u2 = 0,
/// PUPDR6 [12:13]
/// Port x configuration bits (y =
PUPDR6: u2 = 0,
/// PUPDR7 [14:15]
/// Port x configuration bits (y =
PUPDR7: u2 = 0,
/// PUPDR8 [16:17]
/// Port x configuration bits (y =
PUPDR8: u2 = 0,
/// PUPDR9 [18:19]
/// Port x configuration bits (y =
PUPDR9: u2 = 0,
/// PUPDR10 [20:21]
/// Port x configuration bits (y =
PUPDR10: u2 = 0,
/// PUPDR11 [22:23]
/// Port x configuration bits (y =
PUPDR11: u2 = 0,
/// PUPDR12 [24:25]
/// Port x configuration bits (y =
PUPDR12: u2 = 0,
/// PUPDR13 [26:27]
/// Port x configuration bits (y =
PUPDR13: u2 = 0,
/// PUPDR14 [28:29]
/// Port x configuration bits (y =
PUPDR14: u2 = 0,
/// PUPDR15 [30:31]
/// Port x configuration bits (y =
PUPDR15: u2 = 0,
};
/// GPIO port pull-up/pull-down
pub const PUPDR = MMIO(PUPDR_val).init(base_address + 0xc);

/// IDR
const IDR_val = packed struct {
/// IDR0 [0:0]
/// Port input data (y =
IDR0: u1 = 0,
/// IDR1 [1:1]
/// Port input data (y =
IDR1: u1 = 0,
/// IDR2 [2:2]
/// Port input data (y =
IDR2: u1 = 0,
/// IDR3 [3:3]
/// Port input data (y =
IDR3: u1 = 0,
/// IDR4 [4:4]
/// Port input data (y =
IDR4: u1 = 0,
/// IDR5 [5:5]
/// Port input data (y =
IDR5: u1 = 0,
/// IDR6 [6:6]
/// Port input data (y =
IDR6: u1 = 0,
/// IDR7 [7:7]
/// Port input data (y =
IDR7: u1 = 0,
/// IDR8 [8:8]
/// Port input data (y =
IDR8: u1 = 0,
/// IDR9 [9:9]
/// Port input data (y =
IDR9: u1 = 0,
/// IDR10 [10:10]
/// Port input data (y =
IDR10: u1 = 0,
/// IDR11 [11:11]
/// Port input data (y =
IDR11: u1 = 0,
/// IDR12 [12:12]
/// Port input data (y =
IDR12: u1 = 0,
/// IDR13 [13:13]
/// Port input data (y =
IDR13: u1 = 0,
/// IDR14 [14:14]
/// Port input data (y =
IDR14: u1 = 0,
/// IDR15 [15:15]
/// Port input data (y =
IDR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port input data register
pub const IDR = MMIO(IDR_val).init(base_address + 0x10);

/// ODR
const ODR_val = packed struct {
/// ODR0 [0:0]
/// Port output data (y =
ODR0: u1 = 0,
/// ODR1 [1:1]
/// Port output data (y =
ODR1: u1 = 0,
/// ODR2 [2:2]
/// Port output data (y =
ODR2: u1 = 0,
/// ODR3 [3:3]
/// Port output data (y =
ODR3: u1 = 0,
/// ODR4 [4:4]
/// Port output data (y =
ODR4: u1 = 0,
/// ODR5 [5:5]
/// Port output data (y =
ODR5: u1 = 0,
/// ODR6 [6:6]
/// Port output data (y =
ODR6: u1 = 0,
/// ODR7 [7:7]
/// Port output data (y =
ODR7: u1 = 0,
/// ODR8 [8:8]
/// Port output data (y =
ODR8: u1 = 0,
/// ODR9 [9:9]
/// Port output data (y =
ODR9: u1 = 0,
/// ODR10 [10:10]
/// Port output data (y =
ODR10: u1 = 0,
/// ODR11 [11:11]
/// Port output data (y =
ODR11: u1 = 0,
/// ODR12 [12:12]
/// Port output data (y =
ODR12: u1 = 0,
/// ODR13 [13:13]
/// Port output data (y =
ODR13: u1 = 0,
/// ODR14 [14:14]
/// Port output data (y =
ODR14: u1 = 0,
/// ODR15 [15:15]
/// Port output data (y =
ODR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output data register
pub const ODR = MMIO(ODR_val).init(base_address + 0x14);

/// BSRR
const BSRR_val = packed struct {
/// BS0 [0:0]
/// Port x set bit y (y=
BS0: u1 = 0,
/// BS1 [1:1]
/// Port x set bit y (y=
BS1: u1 = 0,
/// BS2 [2:2]
/// Port x set bit y (y=
BS2: u1 = 0,
/// BS3 [3:3]
/// Port x set bit y (y=
BS3: u1 = 0,
/// BS4 [4:4]
/// Port x set bit y (y=
BS4: u1 = 0,
/// BS5 [5:5]
/// Port x set bit y (y=
BS5: u1 = 0,
/// BS6 [6:6]
/// Port x set bit y (y=
BS6: u1 = 0,
/// BS7 [7:7]
/// Port x set bit y (y=
BS7: u1 = 0,
/// BS8 [8:8]
/// Port x set bit y (y=
BS8: u1 = 0,
/// BS9 [9:9]
/// Port x set bit y (y=
BS9: u1 = 0,
/// BS10 [10:10]
/// Port x set bit y (y=
BS10: u1 = 0,
/// BS11 [11:11]
/// Port x set bit y (y=
BS11: u1 = 0,
/// BS12 [12:12]
/// Port x set bit y (y=
BS12: u1 = 0,
/// BS13 [13:13]
/// Port x set bit y (y=
BS13: u1 = 0,
/// BS14 [14:14]
/// Port x set bit y (y=
BS14: u1 = 0,
/// BS15 [15:15]
/// Port x set bit y (y=
BS15: u1 = 0,
/// BR0 [16:16]
/// Port x set bit y (y=
BR0: u1 = 0,
/// BR1 [17:17]
/// Port x reset bit y (y =
BR1: u1 = 0,
/// BR2 [18:18]
/// Port x reset bit y (y =
BR2: u1 = 0,
/// BR3 [19:19]
/// Port x reset bit y (y =
BR3: u1 = 0,
/// BR4 [20:20]
/// Port x reset bit y (y =
BR4: u1 = 0,
/// BR5 [21:21]
/// Port x reset bit y (y =
BR5: u1 = 0,
/// BR6 [22:22]
/// Port x reset bit y (y =
BR6: u1 = 0,
/// BR7 [23:23]
/// Port x reset bit y (y =
BR7: u1 = 0,
/// BR8 [24:24]
/// Port x reset bit y (y =
BR8: u1 = 0,
/// BR9 [25:25]
/// Port x reset bit y (y =
BR9: u1 = 0,
/// BR10 [26:26]
/// Port x reset bit y (y =
BR10: u1 = 0,
/// BR11 [27:27]
/// Port x reset bit y (y =
BR11: u1 = 0,
/// BR12 [28:28]
/// Port x reset bit y (y =
BR12: u1 = 0,
/// BR13 [29:29]
/// Port x reset bit y (y =
BR13: u1 = 0,
/// BR14 [30:30]
/// Port x reset bit y (y =
BR14: u1 = 0,
/// BR15 [31:31]
/// Port x reset bit y (y =
BR15: u1 = 0,
};
/// GPIO port bit set/reset
pub const BSRR = MMIO(BSRR_val).init(base_address + 0x18);

/// LCKR
const LCKR_val = packed struct {
/// LCK0 [0:0]
/// Port x lock bit y (y=
LCK0: u1 = 0,
/// LCK1 [1:1]
/// Port x lock bit y (y=
LCK1: u1 = 0,
/// LCK2 [2:2]
/// Port x lock bit y (y=
LCK2: u1 = 0,
/// LCK3 [3:3]
/// Port x lock bit y (y=
LCK3: u1 = 0,
/// LCK4 [4:4]
/// Port x lock bit y (y=
LCK4: u1 = 0,
/// LCK5 [5:5]
/// Port x lock bit y (y=
LCK5: u1 = 0,
/// LCK6 [6:6]
/// Port x lock bit y (y=
LCK6: u1 = 0,
/// LCK7 [7:7]
/// Port x lock bit y (y=
LCK7: u1 = 0,
/// LCK8 [8:8]
/// Port x lock bit y (y=
LCK8: u1 = 0,
/// LCK9 [9:9]
/// Port x lock bit y (y=
LCK9: u1 = 0,
/// LCK10 [10:10]
/// Port x lock bit y (y=
LCK10: u1 = 0,
/// LCK11 [11:11]
/// Port x lock bit y (y=
LCK11: u1 = 0,
/// LCK12 [12:12]
/// Port x lock bit y (y=
LCK12: u1 = 0,
/// LCK13 [13:13]
/// Port x lock bit y (y=
LCK13: u1 = 0,
/// LCK14 [14:14]
/// Port x lock bit y (y=
LCK14: u1 = 0,
/// LCK15 [15:15]
/// Port x lock bit y (y=
LCK15: u1 = 0,
/// LCKK [16:16]
/// Port x lock bit y (y=
LCKK: u1 = 0,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// GPIO port configuration lock
pub const LCKR = MMIO(LCKR_val).init(base_address + 0x1c);

/// AFRL
const AFRL_val = packed struct {
/// AFRL0 [0:3]
/// Alternate function selection for port x
AFRL0: u4 = 0,
/// AFRL1 [4:7]
/// Alternate function selection for port x
AFRL1: u4 = 0,
/// AFRL2 [8:11]
/// Alternate function selection for port x
AFRL2: u4 = 0,
/// AFRL3 [12:15]
/// Alternate function selection for port x
AFRL3: u4 = 0,
/// AFRL4 [16:19]
/// Alternate function selection for port x
AFRL4: u4 = 0,
/// AFRL5 [20:23]
/// Alternate function selection for port x
AFRL5: u4 = 0,
/// AFRL6 [24:27]
/// Alternate function selection for port x
AFRL6: u4 = 0,
/// AFRL7 [28:31]
/// Alternate function selection for port x
AFRL7: u4 = 0,
};
/// GPIO alternate function low
pub const AFRL = MMIO(AFRL_val).init(base_address + 0x20);

/// AFRH
const AFRH_val = packed struct {
/// AFRH8 [0:3]
/// Alternate function selection for port x
AFRH8: u4 = 0,
/// AFRH9 [4:7]
/// Alternate function selection for port x
AFRH9: u4 = 0,
/// AFRH10 [8:11]
/// Alternate function selection for port x
AFRH10: u4 = 0,
/// AFRH11 [12:15]
/// Alternate function selection for port x
AFRH11: u4 = 0,
/// AFRH12 [16:19]
/// Alternate function selection for port x
AFRH12: u4 = 0,
/// AFRH13 [20:23]
/// Alternate function selection for port x
AFRH13: u4 = 0,
/// AFRH14 [24:27]
/// Alternate function selection for port x
AFRH14: u4 = 0,
/// AFRH15 [28:31]
/// Alternate function selection for port x
AFRH15: u4 = 0,
};
/// GPIO alternate function high
pub const AFRH = MMIO(AFRH_val).init(base_address + 0x24);
};

/// General-purpose I/Os
pub const GPIOE = struct {

const base_address = 0x40021000;
/// MODER
const MODER_val = packed struct {
/// MODER0 [0:1]
/// Port x configuration bits (y =
MODER0: u2 = 0,
/// MODER1 [2:3]
/// Port x configuration bits (y =
MODER1: u2 = 0,
/// MODER2 [4:5]
/// Port x configuration bits (y =
MODER2: u2 = 0,
/// MODER3 [6:7]
/// Port x configuration bits (y =
MODER3: u2 = 0,
/// MODER4 [8:9]
/// Port x configuration bits (y =
MODER4: u2 = 0,
/// MODER5 [10:11]
/// Port x configuration bits (y =
MODER5: u2 = 0,
/// MODER6 [12:13]
/// Port x configuration bits (y =
MODER6: u2 = 0,
/// MODER7 [14:15]
/// Port x configuration bits (y =
MODER7: u2 = 0,
/// MODER8 [16:17]
/// Port x configuration bits (y =
MODER8: u2 = 0,
/// MODER9 [18:19]
/// Port x configuration bits (y =
MODER9: u2 = 0,
/// MODER10 [20:21]
/// Port x configuration bits (y =
MODER10: u2 = 0,
/// MODER11 [22:23]
/// Port x configuration bits (y =
MODER11: u2 = 0,
/// MODER12 [24:25]
/// Port x configuration bits (y =
MODER12: u2 = 0,
/// MODER13 [26:27]
/// Port x configuration bits (y =
MODER13: u2 = 0,
/// MODER14 [28:29]
/// Port x configuration bits (y =
MODER14: u2 = 0,
/// MODER15 [30:31]
/// Port x configuration bits (y =
MODER15: u2 = 0,
};
/// GPIO port mode register
pub const MODER = MMIO(MODER_val).init(base_address + 0x0);

/// OTYPER
const OTYPER_val = packed struct {
/// OT0 [0:0]
/// Port x configuration bits (y =
OT0: u1 = 0,
/// OT1 [1:1]
/// Port x configuration bits (y =
OT1: u1 = 0,
/// OT2 [2:2]
/// Port x configuration bits (y =
OT2: u1 = 0,
/// OT3 [3:3]
/// Port x configuration bits (y =
OT3: u1 = 0,
/// OT4 [4:4]
/// Port x configuration bits (y =
OT4: u1 = 0,
/// OT5 [5:5]
/// Port x configuration bits (y =
OT5: u1 = 0,
/// OT6 [6:6]
/// Port x configuration bits (y =
OT6: u1 = 0,
/// OT7 [7:7]
/// Port x configuration bits (y =
OT7: u1 = 0,
/// OT8 [8:8]
/// Port x configuration bits (y =
OT8: u1 = 0,
/// OT9 [9:9]
/// Port x configuration bits (y =
OT9: u1 = 0,
/// OT10 [10:10]
/// Port x configuration bits (y =
OT10: u1 = 0,
/// OT11 [11:11]
/// Port x configuration bits (y =
OT11: u1 = 0,
/// OT12 [12:12]
/// Port x configuration bits (y =
OT12: u1 = 0,
/// OT13 [13:13]
/// Port x configuration bits (y =
OT13: u1 = 0,
/// OT14 [14:14]
/// Port x configuration bits (y =
OT14: u1 = 0,
/// OT15 [15:15]
/// Port x configuration bits (y =
OT15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output type register
pub const OTYPER = MMIO(OTYPER_val).init(base_address + 0x4);

/// OSPEEDR
const OSPEEDR_val = packed struct {
/// OSPEEDR0 [0:1]
/// Port x configuration bits (y =
OSPEEDR0: u2 = 0,
/// OSPEEDR1 [2:3]
/// Port x configuration bits (y =
OSPEEDR1: u2 = 0,
/// OSPEEDR2 [4:5]
/// Port x configuration bits (y =
OSPEEDR2: u2 = 0,
/// OSPEEDR3 [6:7]
/// Port x configuration bits (y =
OSPEEDR3: u2 = 0,
/// OSPEEDR4 [8:9]
/// Port x configuration bits (y =
OSPEEDR4: u2 = 0,
/// OSPEEDR5 [10:11]
/// Port x configuration bits (y =
OSPEEDR5: u2 = 0,
/// OSPEEDR6 [12:13]
/// Port x configuration bits (y =
OSPEEDR6: u2 = 0,
/// OSPEEDR7 [14:15]
/// Port x configuration bits (y =
OSPEEDR7: u2 = 0,
/// OSPEEDR8 [16:17]
/// Port x configuration bits (y =
OSPEEDR8: u2 = 0,
/// OSPEEDR9 [18:19]
/// Port x configuration bits (y =
OSPEEDR9: u2 = 0,
/// OSPEEDR10 [20:21]
/// Port x configuration bits (y =
OSPEEDR10: u2 = 0,
/// OSPEEDR11 [22:23]
/// Port x configuration bits (y =
OSPEEDR11: u2 = 0,
/// OSPEEDR12 [24:25]
/// Port x configuration bits (y =
OSPEEDR12: u2 = 0,
/// OSPEEDR13 [26:27]
/// Port x configuration bits (y =
OSPEEDR13: u2 = 0,
/// OSPEEDR14 [28:29]
/// Port x configuration bits (y =
OSPEEDR14: u2 = 0,
/// OSPEEDR15 [30:31]
/// Port x configuration bits (y =
OSPEEDR15: u2 = 0,
};
/// GPIO port output speed
pub const OSPEEDR = MMIO(OSPEEDR_val).init(base_address + 0x8);

/// PUPDR
const PUPDR_val = packed struct {
/// PUPDR0 [0:1]
/// Port x configuration bits (y =
PUPDR0: u2 = 0,
/// PUPDR1 [2:3]
/// Port x configuration bits (y =
PUPDR1: u2 = 0,
/// PUPDR2 [4:5]
/// Port x configuration bits (y =
PUPDR2: u2 = 0,
/// PUPDR3 [6:7]
/// Port x configuration bits (y =
PUPDR3: u2 = 0,
/// PUPDR4 [8:9]
/// Port x configuration bits (y =
PUPDR4: u2 = 0,
/// PUPDR5 [10:11]
/// Port x configuration bits (y =
PUPDR5: u2 = 0,
/// PUPDR6 [12:13]
/// Port x configuration bits (y =
PUPDR6: u2 = 0,
/// PUPDR7 [14:15]
/// Port x configuration bits (y =
PUPDR7: u2 = 0,
/// PUPDR8 [16:17]
/// Port x configuration bits (y =
PUPDR8: u2 = 0,
/// PUPDR9 [18:19]
/// Port x configuration bits (y =
PUPDR9: u2 = 0,
/// PUPDR10 [20:21]
/// Port x configuration bits (y =
PUPDR10: u2 = 0,
/// PUPDR11 [22:23]
/// Port x configuration bits (y =
PUPDR11: u2 = 0,
/// PUPDR12 [24:25]
/// Port x configuration bits (y =
PUPDR12: u2 = 0,
/// PUPDR13 [26:27]
/// Port x configuration bits (y =
PUPDR13: u2 = 0,
/// PUPDR14 [28:29]
/// Port x configuration bits (y =
PUPDR14: u2 = 0,
/// PUPDR15 [30:31]
/// Port x configuration bits (y =
PUPDR15: u2 = 0,
};
/// GPIO port pull-up/pull-down
pub const PUPDR = MMIO(PUPDR_val).init(base_address + 0xc);

/// IDR
const IDR_val = packed struct {
/// IDR0 [0:0]
/// Port input data (y =
IDR0: u1 = 0,
/// IDR1 [1:1]
/// Port input data (y =
IDR1: u1 = 0,
/// IDR2 [2:2]
/// Port input data (y =
IDR2: u1 = 0,
/// IDR3 [3:3]
/// Port input data (y =
IDR3: u1 = 0,
/// IDR4 [4:4]
/// Port input data (y =
IDR4: u1 = 0,
/// IDR5 [5:5]
/// Port input data (y =
IDR5: u1 = 0,
/// IDR6 [6:6]
/// Port input data (y =
IDR6: u1 = 0,
/// IDR7 [7:7]
/// Port input data (y =
IDR7: u1 = 0,
/// IDR8 [8:8]
/// Port input data (y =
IDR8: u1 = 0,
/// IDR9 [9:9]
/// Port input data (y =
IDR9: u1 = 0,
/// IDR10 [10:10]
/// Port input data (y =
IDR10: u1 = 0,
/// IDR11 [11:11]
/// Port input data (y =
IDR11: u1 = 0,
/// IDR12 [12:12]
/// Port input data (y =
IDR12: u1 = 0,
/// IDR13 [13:13]
/// Port input data (y =
IDR13: u1 = 0,
/// IDR14 [14:14]
/// Port input data (y =
IDR14: u1 = 0,
/// IDR15 [15:15]
/// Port input data (y =
IDR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port input data register
pub const IDR = MMIO(IDR_val).init(base_address + 0x10);

/// ODR
const ODR_val = packed struct {
/// ODR0 [0:0]
/// Port output data (y =
ODR0: u1 = 0,
/// ODR1 [1:1]
/// Port output data (y =
ODR1: u1 = 0,
/// ODR2 [2:2]
/// Port output data (y =
ODR2: u1 = 0,
/// ODR3 [3:3]
/// Port output data (y =
ODR3: u1 = 0,
/// ODR4 [4:4]
/// Port output data (y =
ODR4: u1 = 0,
/// ODR5 [5:5]
/// Port output data (y =
ODR5: u1 = 0,
/// ODR6 [6:6]
/// Port output data (y =
ODR6: u1 = 0,
/// ODR7 [7:7]
/// Port output data (y =
ODR7: u1 = 0,
/// ODR8 [8:8]
/// Port output data (y =
ODR8: u1 = 0,
/// ODR9 [9:9]
/// Port output data (y =
ODR9: u1 = 0,
/// ODR10 [10:10]
/// Port output data (y =
ODR10: u1 = 0,
/// ODR11 [11:11]
/// Port output data (y =
ODR11: u1 = 0,
/// ODR12 [12:12]
/// Port output data (y =
ODR12: u1 = 0,
/// ODR13 [13:13]
/// Port output data (y =
ODR13: u1 = 0,
/// ODR14 [14:14]
/// Port output data (y =
ODR14: u1 = 0,
/// ODR15 [15:15]
/// Port output data (y =
ODR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output data register
pub const ODR = MMIO(ODR_val).init(base_address + 0x14);

/// BSRR
const BSRR_val = packed struct {
/// BS0 [0:0]
/// Port x set bit y (y=
BS0: u1 = 0,
/// BS1 [1:1]
/// Port x set bit y (y=
BS1: u1 = 0,
/// BS2 [2:2]
/// Port x set bit y (y=
BS2: u1 = 0,
/// BS3 [3:3]
/// Port x set bit y (y=
BS3: u1 = 0,
/// BS4 [4:4]
/// Port x set bit y (y=
BS4: u1 = 0,
/// BS5 [5:5]
/// Port x set bit y (y=
BS5: u1 = 0,
/// BS6 [6:6]
/// Port x set bit y (y=
BS6: u1 = 0,
/// BS7 [7:7]
/// Port x set bit y (y=
BS7: u1 = 0,
/// BS8 [8:8]
/// Port x set bit y (y=
BS8: u1 = 0,
/// BS9 [9:9]
/// Port x set bit y (y=
BS9: u1 = 0,
/// BS10 [10:10]
/// Port x set bit y (y=
BS10: u1 = 0,
/// BS11 [11:11]
/// Port x set bit y (y=
BS11: u1 = 0,
/// BS12 [12:12]
/// Port x set bit y (y=
BS12: u1 = 0,
/// BS13 [13:13]
/// Port x set bit y (y=
BS13: u1 = 0,
/// BS14 [14:14]
/// Port x set bit y (y=
BS14: u1 = 0,
/// BS15 [15:15]
/// Port x set bit y (y=
BS15: u1 = 0,
/// BR0 [16:16]
/// Port x set bit y (y=
BR0: u1 = 0,
/// BR1 [17:17]
/// Port x reset bit y (y =
BR1: u1 = 0,
/// BR2 [18:18]
/// Port x reset bit y (y =
BR2: u1 = 0,
/// BR3 [19:19]
/// Port x reset bit y (y =
BR3: u1 = 0,
/// BR4 [20:20]
/// Port x reset bit y (y =
BR4: u1 = 0,
/// BR5 [21:21]
/// Port x reset bit y (y =
BR5: u1 = 0,
/// BR6 [22:22]
/// Port x reset bit y (y =
BR6: u1 = 0,
/// BR7 [23:23]
/// Port x reset bit y (y =
BR7: u1 = 0,
/// BR8 [24:24]
/// Port x reset bit y (y =
BR8: u1 = 0,
/// BR9 [25:25]
/// Port x reset bit y (y =
BR9: u1 = 0,
/// BR10 [26:26]
/// Port x reset bit y (y =
BR10: u1 = 0,
/// BR11 [27:27]
/// Port x reset bit y (y =
BR11: u1 = 0,
/// BR12 [28:28]
/// Port x reset bit y (y =
BR12: u1 = 0,
/// BR13 [29:29]
/// Port x reset bit y (y =
BR13: u1 = 0,
/// BR14 [30:30]
/// Port x reset bit y (y =
BR14: u1 = 0,
/// BR15 [31:31]
/// Port x reset bit y (y =
BR15: u1 = 0,
};
/// GPIO port bit set/reset
pub const BSRR = MMIO(BSRR_val).init(base_address + 0x18);

/// LCKR
const LCKR_val = packed struct {
/// LCK0 [0:0]
/// Port x lock bit y (y=
LCK0: u1 = 0,
/// LCK1 [1:1]
/// Port x lock bit y (y=
LCK1: u1 = 0,
/// LCK2 [2:2]
/// Port x lock bit y (y=
LCK2: u1 = 0,
/// LCK3 [3:3]
/// Port x lock bit y (y=
LCK3: u1 = 0,
/// LCK4 [4:4]
/// Port x lock bit y (y=
LCK4: u1 = 0,
/// LCK5 [5:5]
/// Port x lock bit y (y=
LCK5: u1 = 0,
/// LCK6 [6:6]
/// Port x lock bit y (y=
LCK6: u1 = 0,
/// LCK7 [7:7]
/// Port x lock bit y (y=
LCK7: u1 = 0,
/// LCK8 [8:8]
/// Port x lock bit y (y=
LCK8: u1 = 0,
/// LCK9 [9:9]
/// Port x lock bit y (y=
LCK9: u1 = 0,
/// LCK10 [10:10]
/// Port x lock bit y (y=
LCK10: u1 = 0,
/// LCK11 [11:11]
/// Port x lock bit y (y=
LCK11: u1 = 0,
/// LCK12 [12:12]
/// Port x lock bit y (y=
LCK12: u1 = 0,
/// LCK13 [13:13]
/// Port x lock bit y (y=
LCK13: u1 = 0,
/// LCK14 [14:14]
/// Port x lock bit y (y=
LCK14: u1 = 0,
/// LCK15 [15:15]
/// Port x lock bit y (y=
LCK15: u1 = 0,
/// LCKK [16:16]
/// Port x lock bit y (y=
LCKK: u1 = 0,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// GPIO port configuration lock
pub const LCKR = MMIO(LCKR_val).init(base_address + 0x1c);

/// AFRL
const AFRL_val = packed struct {
/// AFRL0 [0:3]
/// Alternate function selection for port x
AFRL0: u4 = 0,
/// AFRL1 [4:7]
/// Alternate function selection for port x
AFRL1: u4 = 0,
/// AFRL2 [8:11]
/// Alternate function selection for port x
AFRL2: u4 = 0,
/// AFRL3 [12:15]
/// Alternate function selection for port x
AFRL3: u4 = 0,
/// AFRL4 [16:19]
/// Alternate function selection for port x
AFRL4: u4 = 0,
/// AFRL5 [20:23]
/// Alternate function selection for port x
AFRL5: u4 = 0,
/// AFRL6 [24:27]
/// Alternate function selection for port x
AFRL6: u4 = 0,
/// AFRL7 [28:31]
/// Alternate function selection for port x
AFRL7: u4 = 0,
};
/// GPIO alternate function low
pub const AFRL = MMIO(AFRL_val).init(base_address + 0x20);

/// AFRH
const AFRH_val = packed struct {
/// AFRH8 [0:3]
/// Alternate function selection for port x
AFRH8: u4 = 0,
/// AFRH9 [4:7]
/// Alternate function selection for port x
AFRH9: u4 = 0,
/// AFRH10 [8:11]
/// Alternate function selection for port x
AFRH10: u4 = 0,
/// AFRH11 [12:15]
/// Alternate function selection for port x
AFRH11: u4 = 0,
/// AFRH12 [16:19]
/// Alternate function selection for port x
AFRH12: u4 = 0,
/// AFRH13 [20:23]
/// Alternate function selection for port x
AFRH13: u4 = 0,
/// AFRH14 [24:27]
/// Alternate function selection for port x
AFRH14: u4 = 0,
/// AFRH15 [28:31]
/// Alternate function selection for port x
AFRH15: u4 = 0,
};
/// GPIO alternate function high
pub const AFRH = MMIO(AFRH_val).init(base_address + 0x24);
};

/// General-purpose I/Os
pub const GPIOD = struct {

const base_address = 0x40020c00;
/// MODER
const MODER_val = packed struct {
/// MODER0 [0:1]
/// Port x configuration bits (y =
MODER0: u2 = 0,
/// MODER1 [2:3]
/// Port x configuration bits (y =
MODER1: u2 = 0,
/// MODER2 [4:5]
/// Port x configuration bits (y =
MODER2: u2 = 0,
/// MODER3 [6:7]
/// Port x configuration bits (y =
MODER3: u2 = 0,
/// MODER4 [8:9]
/// Port x configuration bits (y =
MODER4: u2 = 0,
/// MODER5 [10:11]
/// Port x configuration bits (y =
MODER5: u2 = 0,
/// MODER6 [12:13]
/// Port x configuration bits (y =
MODER6: u2 = 0,
/// MODER7 [14:15]
/// Port x configuration bits (y =
MODER7: u2 = 0,
/// MODER8 [16:17]
/// Port x configuration bits (y =
MODER8: u2 = 0,
/// MODER9 [18:19]
/// Port x configuration bits (y =
MODER9: u2 = 0,
/// MODER10 [20:21]
/// Port x configuration bits (y =
MODER10: u2 = 0,
/// MODER11 [22:23]
/// Port x configuration bits (y =
MODER11: u2 = 0,
/// MODER12 [24:25]
/// Port x configuration bits (y =
MODER12: u2 = 0,
/// MODER13 [26:27]
/// Port x configuration bits (y =
MODER13: u2 = 0,
/// MODER14 [28:29]
/// Port x configuration bits (y =
MODER14: u2 = 0,
/// MODER15 [30:31]
/// Port x configuration bits (y =
MODER15: u2 = 0,
};
/// GPIO port mode register
pub const MODER = MMIO(MODER_val).init(base_address + 0x0);

/// OTYPER
const OTYPER_val = packed struct {
/// OT0 [0:0]
/// Port x configuration bits (y =
OT0: u1 = 0,
/// OT1 [1:1]
/// Port x configuration bits (y =
OT1: u1 = 0,
/// OT2 [2:2]
/// Port x configuration bits (y =
OT2: u1 = 0,
/// OT3 [3:3]
/// Port x configuration bits (y =
OT3: u1 = 0,
/// OT4 [4:4]
/// Port x configuration bits (y =
OT4: u1 = 0,
/// OT5 [5:5]
/// Port x configuration bits (y =
OT5: u1 = 0,
/// OT6 [6:6]
/// Port x configuration bits (y =
OT6: u1 = 0,
/// OT7 [7:7]
/// Port x configuration bits (y =
OT7: u1 = 0,
/// OT8 [8:8]
/// Port x configuration bits (y =
OT8: u1 = 0,
/// OT9 [9:9]
/// Port x configuration bits (y =
OT9: u1 = 0,
/// OT10 [10:10]
/// Port x configuration bits (y =
OT10: u1 = 0,
/// OT11 [11:11]
/// Port x configuration bits (y =
OT11: u1 = 0,
/// OT12 [12:12]
/// Port x configuration bits (y =
OT12: u1 = 0,
/// OT13 [13:13]
/// Port x configuration bits (y =
OT13: u1 = 0,
/// OT14 [14:14]
/// Port x configuration bits (y =
OT14: u1 = 0,
/// OT15 [15:15]
/// Port x configuration bits (y =
OT15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output type register
pub const OTYPER = MMIO(OTYPER_val).init(base_address + 0x4);

/// OSPEEDR
const OSPEEDR_val = packed struct {
/// OSPEEDR0 [0:1]
/// Port x configuration bits (y =
OSPEEDR0: u2 = 0,
/// OSPEEDR1 [2:3]
/// Port x configuration bits (y =
OSPEEDR1: u2 = 0,
/// OSPEEDR2 [4:5]
/// Port x configuration bits (y =
OSPEEDR2: u2 = 0,
/// OSPEEDR3 [6:7]
/// Port x configuration bits (y =
OSPEEDR3: u2 = 0,
/// OSPEEDR4 [8:9]
/// Port x configuration bits (y =
OSPEEDR4: u2 = 0,
/// OSPEEDR5 [10:11]
/// Port x configuration bits (y =
OSPEEDR5: u2 = 0,
/// OSPEEDR6 [12:13]
/// Port x configuration bits (y =
OSPEEDR6: u2 = 0,
/// OSPEEDR7 [14:15]
/// Port x configuration bits (y =
OSPEEDR7: u2 = 0,
/// OSPEEDR8 [16:17]
/// Port x configuration bits (y =
OSPEEDR8: u2 = 0,
/// OSPEEDR9 [18:19]
/// Port x configuration bits (y =
OSPEEDR9: u2 = 0,
/// OSPEEDR10 [20:21]
/// Port x configuration bits (y =
OSPEEDR10: u2 = 0,
/// OSPEEDR11 [22:23]
/// Port x configuration bits (y =
OSPEEDR11: u2 = 0,
/// OSPEEDR12 [24:25]
/// Port x configuration bits (y =
OSPEEDR12: u2 = 0,
/// OSPEEDR13 [26:27]
/// Port x configuration bits (y =
OSPEEDR13: u2 = 0,
/// OSPEEDR14 [28:29]
/// Port x configuration bits (y =
OSPEEDR14: u2 = 0,
/// OSPEEDR15 [30:31]
/// Port x configuration bits (y =
OSPEEDR15: u2 = 0,
};
/// GPIO port output speed
pub const OSPEEDR = MMIO(OSPEEDR_val).init(base_address + 0x8);

/// PUPDR
const PUPDR_val = packed struct {
/// PUPDR0 [0:1]
/// Port x configuration bits (y =
PUPDR0: u2 = 0,
/// PUPDR1 [2:3]
/// Port x configuration bits (y =
PUPDR1: u2 = 0,
/// PUPDR2 [4:5]
/// Port x configuration bits (y =
PUPDR2: u2 = 0,
/// PUPDR3 [6:7]
/// Port x configuration bits (y =
PUPDR3: u2 = 0,
/// PUPDR4 [8:9]
/// Port x configuration bits (y =
PUPDR4: u2 = 0,
/// PUPDR5 [10:11]
/// Port x configuration bits (y =
PUPDR5: u2 = 0,
/// PUPDR6 [12:13]
/// Port x configuration bits (y =
PUPDR6: u2 = 0,
/// PUPDR7 [14:15]
/// Port x configuration bits (y =
PUPDR7: u2 = 0,
/// PUPDR8 [16:17]
/// Port x configuration bits (y =
PUPDR8: u2 = 0,
/// PUPDR9 [18:19]
/// Port x configuration bits (y =
PUPDR9: u2 = 0,
/// PUPDR10 [20:21]
/// Port x configuration bits (y =
PUPDR10: u2 = 0,
/// PUPDR11 [22:23]
/// Port x configuration bits (y =
PUPDR11: u2 = 0,
/// PUPDR12 [24:25]
/// Port x configuration bits (y =
PUPDR12: u2 = 0,
/// PUPDR13 [26:27]
/// Port x configuration bits (y =
PUPDR13: u2 = 0,
/// PUPDR14 [28:29]
/// Port x configuration bits (y =
PUPDR14: u2 = 0,
/// PUPDR15 [30:31]
/// Port x configuration bits (y =
PUPDR15: u2 = 0,
};
/// GPIO port pull-up/pull-down
pub const PUPDR = MMIO(PUPDR_val).init(base_address + 0xc);

/// IDR
const IDR_val = packed struct {
/// IDR0 [0:0]
/// Port input data (y =
IDR0: u1 = 0,
/// IDR1 [1:1]
/// Port input data (y =
IDR1: u1 = 0,
/// IDR2 [2:2]
/// Port input data (y =
IDR2: u1 = 0,
/// IDR3 [3:3]
/// Port input data (y =
IDR3: u1 = 0,
/// IDR4 [4:4]
/// Port input data (y =
IDR4: u1 = 0,
/// IDR5 [5:5]
/// Port input data (y =
IDR5: u1 = 0,
/// IDR6 [6:6]
/// Port input data (y =
IDR6: u1 = 0,
/// IDR7 [7:7]
/// Port input data (y =
IDR7: u1 = 0,
/// IDR8 [8:8]
/// Port input data (y =
IDR8: u1 = 0,
/// IDR9 [9:9]
/// Port input data (y =
IDR9: u1 = 0,
/// IDR10 [10:10]
/// Port input data (y =
IDR10: u1 = 0,
/// IDR11 [11:11]
/// Port input data (y =
IDR11: u1 = 0,
/// IDR12 [12:12]
/// Port input data (y =
IDR12: u1 = 0,
/// IDR13 [13:13]
/// Port input data (y =
IDR13: u1 = 0,
/// IDR14 [14:14]
/// Port input data (y =
IDR14: u1 = 0,
/// IDR15 [15:15]
/// Port input data (y =
IDR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port input data register
pub const IDR = MMIO(IDR_val).init(base_address + 0x10);

/// ODR
const ODR_val = packed struct {
/// ODR0 [0:0]
/// Port output data (y =
ODR0: u1 = 0,
/// ODR1 [1:1]
/// Port output data (y =
ODR1: u1 = 0,
/// ODR2 [2:2]
/// Port output data (y =
ODR2: u1 = 0,
/// ODR3 [3:3]
/// Port output data (y =
ODR3: u1 = 0,
/// ODR4 [4:4]
/// Port output data (y =
ODR4: u1 = 0,
/// ODR5 [5:5]
/// Port output data (y =
ODR5: u1 = 0,
/// ODR6 [6:6]
/// Port output data (y =
ODR6: u1 = 0,
/// ODR7 [7:7]
/// Port output data (y =
ODR7: u1 = 0,
/// ODR8 [8:8]
/// Port output data (y =
ODR8: u1 = 0,
/// ODR9 [9:9]
/// Port output data (y =
ODR9: u1 = 0,
/// ODR10 [10:10]
/// Port output data (y =
ODR10: u1 = 0,
/// ODR11 [11:11]
/// Port output data (y =
ODR11: u1 = 0,
/// ODR12 [12:12]
/// Port output data (y =
ODR12: u1 = 0,
/// ODR13 [13:13]
/// Port output data (y =
ODR13: u1 = 0,
/// ODR14 [14:14]
/// Port output data (y =
ODR14: u1 = 0,
/// ODR15 [15:15]
/// Port output data (y =
ODR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output data register
pub const ODR = MMIO(ODR_val).init(base_address + 0x14);

/// BSRR
const BSRR_val = packed struct {
/// BS0 [0:0]
/// Port x set bit y (y=
BS0: u1 = 0,
/// BS1 [1:1]
/// Port x set bit y (y=
BS1: u1 = 0,
/// BS2 [2:2]
/// Port x set bit y (y=
BS2: u1 = 0,
/// BS3 [3:3]
/// Port x set bit y (y=
BS3: u1 = 0,
/// BS4 [4:4]
/// Port x set bit y (y=
BS4: u1 = 0,
/// BS5 [5:5]
/// Port x set bit y (y=
BS5: u1 = 0,
/// BS6 [6:6]
/// Port x set bit y (y=
BS6: u1 = 0,
/// BS7 [7:7]
/// Port x set bit y (y=
BS7: u1 = 0,
/// BS8 [8:8]
/// Port x set bit y (y=
BS8: u1 = 0,
/// BS9 [9:9]
/// Port x set bit y (y=
BS9: u1 = 0,
/// BS10 [10:10]
/// Port x set bit y (y=
BS10: u1 = 0,
/// BS11 [11:11]
/// Port x set bit y (y=
BS11: u1 = 0,
/// BS12 [12:12]
/// Port x set bit y (y=
BS12: u1 = 0,
/// BS13 [13:13]
/// Port x set bit y (y=
BS13: u1 = 0,
/// BS14 [14:14]
/// Port x set bit y (y=
BS14: u1 = 0,
/// BS15 [15:15]
/// Port x set bit y (y=
BS15: u1 = 0,
/// BR0 [16:16]
/// Port x set bit y (y=
BR0: u1 = 0,
/// BR1 [17:17]
/// Port x reset bit y (y =
BR1: u1 = 0,
/// BR2 [18:18]
/// Port x reset bit y (y =
BR2: u1 = 0,
/// BR3 [19:19]
/// Port x reset bit y (y =
BR3: u1 = 0,
/// BR4 [20:20]
/// Port x reset bit y (y =
BR4: u1 = 0,
/// BR5 [21:21]
/// Port x reset bit y (y =
BR5: u1 = 0,
/// BR6 [22:22]
/// Port x reset bit y (y =
BR6: u1 = 0,
/// BR7 [23:23]
/// Port x reset bit y (y =
BR7: u1 = 0,
/// BR8 [24:24]
/// Port x reset bit y (y =
BR8: u1 = 0,
/// BR9 [25:25]
/// Port x reset bit y (y =
BR9: u1 = 0,
/// BR10 [26:26]
/// Port x reset bit y (y =
BR10: u1 = 0,
/// BR11 [27:27]
/// Port x reset bit y (y =
BR11: u1 = 0,
/// BR12 [28:28]
/// Port x reset bit y (y =
BR12: u1 = 0,
/// BR13 [29:29]
/// Port x reset bit y (y =
BR13: u1 = 0,
/// BR14 [30:30]
/// Port x reset bit y (y =
BR14: u1 = 0,
/// BR15 [31:31]
/// Port x reset bit y (y =
BR15: u1 = 0,
};
/// GPIO port bit set/reset
pub const BSRR = MMIO(BSRR_val).init(base_address + 0x18);

/// LCKR
const LCKR_val = packed struct {
/// LCK0 [0:0]
/// Port x lock bit y (y=
LCK0: u1 = 0,
/// LCK1 [1:1]
/// Port x lock bit y (y=
LCK1: u1 = 0,
/// LCK2 [2:2]
/// Port x lock bit y (y=
LCK2: u1 = 0,
/// LCK3 [3:3]
/// Port x lock bit y (y=
LCK3: u1 = 0,
/// LCK4 [4:4]
/// Port x lock bit y (y=
LCK4: u1 = 0,
/// LCK5 [5:5]
/// Port x lock bit y (y=
LCK5: u1 = 0,
/// LCK6 [6:6]
/// Port x lock bit y (y=
LCK6: u1 = 0,
/// LCK7 [7:7]
/// Port x lock bit y (y=
LCK7: u1 = 0,
/// LCK8 [8:8]
/// Port x lock bit y (y=
LCK8: u1 = 0,
/// LCK9 [9:9]
/// Port x lock bit y (y=
LCK9: u1 = 0,
/// LCK10 [10:10]
/// Port x lock bit y (y=
LCK10: u1 = 0,
/// LCK11 [11:11]
/// Port x lock bit y (y=
LCK11: u1 = 0,
/// LCK12 [12:12]
/// Port x lock bit y (y=
LCK12: u1 = 0,
/// LCK13 [13:13]
/// Port x lock bit y (y=
LCK13: u1 = 0,
/// LCK14 [14:14]
/// Port x lock bit y (y=
LCK14: u1 = 0,
/// LCK15 [15:15]
/// Port x lock bit y (y=
LCK15: u1 = 0,
/// LCKK [16:16]
/// Port x lock bit y (y=
LCKK: u1 = 0,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// GPIO port configuration lock
pub const LCKR = MMIO(LCKR_val).init(base_address + 0x1c);

/// AFRL
const AFRL_val = packed struct {
/// AFRL0 [0:3]
/// Alternate function selection for port x
AFRL0: u4 = 0,
/// AFRL1 [4:7]
/// Alternate function selection for port x
AFRL1: u4 = 0,
/// AFRL2 [8:11]
/// Alternate function selection for port x
AFRL2: u4 = 0,
/// AFRL3 [12:15]
/// Alternate function selection for port x
AFRL3: u4 = 0,
/// AFRL4 [16:19]
/// Alternate function selection for port x
AFRL4: u4 = 0,
/// AFRL5 [20:23]
/// Alternate function selection for port x
AFRL5: u4 = 0,
/// AFRL6 [24:27]
/// Alternate function selection for port x
AFRL6: u4 = 0,
/// AFRL7 [28:31]
/// Alternate function selection for port x
AFRL7: u4 = 0,
};
/// GPIO alternate function low
pub const AFRL = MMIO(AFRL_val).init(base_address + 0x20);

/// AFRH
const AFRH_val = packed struct {
/// AFRH8 [0:3]
/// Alternate function selection for port x
AFRH8: u4 = 0,
/// AFRH9 [4:7]
/// Alternate function selection for port x
AFRH9: u4 = 0,
/// AFRH10 [8:11]
/// Alternate function selection for port x
AFRH10: u4 = 0,
/// AFRH11 [12:15]
/// Alternate function selection for port x
AFRH11: u4 = 0,
/// AFRH12 [16:19]
/// Alternate function selection for port x
AFRH12: u4 = 0,
/// AFRH13 [20:23]
/// Alternate function selection for port x
AFRH13: u4 = 0,
/// AFRH14 [24:27]
/// Alternate function selection for port x
AFRH14: u4 = 0,
/// AFRH15 [28:31]
/// Alternate function selection for port x
AFRH15: u4 = 0,
};
/// GPIO alternate function high
pub const AFRH = MMIO(AFRH_val).init(base_address + 0x24);
};

/// General-purpose I/Os
pub const GPIOC = struct {

const base_address = 0x40020800;
/// MODER
const MODER_val = packed struct {
/// MODER0 [0:1]
/// Port x configuration bits (y =
MODER0: u2 = 0,
/// MODER1 [2:3]
/// Port x configuration bits (y =
MODER1: u2 = 0,
/// MODER2 [4:5]
/// Port x configuration bits (y =
MODER2: u2 = 0,
/// MODER3 [6:7]
/// Port x configuration bits (y =
MODER3: u2 = 0,
/// MODER4 [8:9]
/// Port x configuration bits (y =
MODER4: u2 = 0,
/// MODER5 [10:11]
/// Port x configuration bits (y =
MODER5: u2 = 0,
/// MODER6 [12:13]
/// Port x configuration bits (y =
MODER6: u2 = 0,
/// MODER7 [14:15]
/// Port x configuration bits (y =
MODER7: u2 = 0,
/// MODER8 [16:17]
/// Port x configuration bits (y =
MODER8: u2 = 0,
/// MODER9 [18:19]
/// Port x configuration bits (y =
MODER9: u2 = 0,
/// MODER10 [20:21]
/// Port x configuration bits (y =
MODER10: u2 = 0,
/// MODER11 [22:23]
/// Port x configuration bits (y =
MODER11: u2 = 0,
/// MODER12 [24:25]
/// Port x configuration bits (y =
MODER12: u2 = 0,
/// MODER13 [26:27]
/// Port x configuration bits (y =
MODER13: u2 = 0,
/// MODER14 [28:29]
/// Port x configuration bits (y =
MODER14: u2 = 0,
/// MODER15 [30:31]
/// Port x configuration bits (y =
MODER15: u2 = 0,
};
/// GPIO port mode register
pub const MODER = MMIO(MODER_val).init(base_address + 0x0);

/// OTYPER
const OTYPER_val = packed struct {
/// OT0 [0:0]
/// Port x configuration bits (y =
OT0: u1 = 0,
/// OT1 [1:1]
/// Port x configuration bits (y =
OT1: u1 = 0,
/// OT2 [2:2]
/// Port x configuration bits (y =
OT2: u1 = 0,
/// OT3 [3:3]
/// Port x configuration bits (y =
OT3: u1 = 0,
/// OT4 [4:4]
/// Port x configuration bits (y =
OT4: u1 = 0,
/// OT5 [5:5]
/// Port x configuration bits (y =
OT5: u1 = 0,
/// OT6 [6:6]
/// Port x configuration bits (y =
OT6: u1 = 0,
/// OT7 [7:7]
/// Port x configuration bits (y =
OT7: u1 = 0,
/// OT8 [8:8]
/// Port x configuration bits (y =
OT8: u1 = 0,
/// OT9 [9:9]
/// Port x configuration bits (y =
OT9: u1 = 0,
/// OT10 [10:10]
/// Port x configuration bits (y =
OT10: u1 = 0,
/// OT11 [11:11]
/// Port x configuration bits (y =
OT11: u1 = 0,
/// OT12 [12:12]
/// Port x configuration bits (y =
OT12: u1 = 0,
/// OT13 [13:13]
/// Port x configuration bits (y =
OT13: u1 = 0,
/// OT14 [14:14]
/// Port x configuration bits (y =
OT14: u1 = 0,
/// OT15 [15:15]
/// Port x configuration bits (y =
OT15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output type register
pub const OTYPER = MMIO(OTYPER_val).init(base_address + 0x4);

/// OSPEEDR
const OSPEEDR_val = packed struct {
/// OSPEEDR0 [0:1]
/// Port x configuration bits (y =
OSPEEDR0: u2 = 0,
/// OSPEEDR1 [2:3]
/// Port x configuration bits (y =
OSPEEDR1: u2 = 0,
/// OSPEEDR2 [4:5]
/// Port x configuration bits (y =
OSPEEDR2: u2 = 0,
/// OSPEEDR3 [6:7]
/// Port x configuration bits (y =
OSPEEDR3: u2 = 0,
/// OSPEEDR4 [8:9]
/// Port x configuration bits (y =
OSPEEDR4: u2 = 0,
/// OSPEEDR5 [10:11]
/// Port x configuration bits (y =
OSPEEDR5: u2 = 0,
/// OSPEEDR6 [12:13]
/// Port x configuration bits (y =
OSPEEDR6: u2 = 0,
/// OSPEEDR7 [14:15]
/// Port x configuration bits (y =
OSPEEDR7: u2 = 0,
/// OSPEEDR8 [16:17]
/// Port x configuration bits (y =
OSPEEDR8: u2 = 0,
/// OSPEEDR9 [18:19]
/// Port x configuration bits (y =
OSPEEDR9: u2 = 0,
/// OSPEEDR10 [20:21]
/// Port x configuration bits (y =
OSPEEDR10: u2 = 0,
/// OSPEEDR11 [22:23]
/// Port x configuration bits (y =
OSPEEDR11: u2 = 0,
/// OSPEEDR12 [24:25]
/// Port x configuration bits (y =
OSPEEDR12: u2 = 0,
/// OSPEEDR13 [26:27]
/// Port x configuration bits (y =
OSPEEDR13: u2 = 0,
/// OSPEEDR14 [28:29]
/// Port x configuration bits (y =
OSPEEDR14: u2 = 0,
/// OSPEEDR15 [30:31]
/// Port x configuration bits (y =
OSPEEDR15: u2 = 0,
};
/// GPIO port output speed
pub const OSPEEDR = MMIO(OSPEEDR_val).init(base_address + 0x8);

/// PUPDR
const PUPDR_val = packed struct {
/// PUPDR0 [0:1]
/// Port x configuration bits (y =
PUPDR0: u2 = 0,
/// PUPDR1 [2:3]
/// Port x configuration bits (y =
PUPDR1: u2 = 0,
/// PUPDR2 [4:5]
/// Port x configuration bits (y =
PUPDR2: u2 = 0,
/// PUPDR3 [6:7]
/// Port x configuration bits (y =
PUPDR3: u2 = 0,
/// PUPDR4 [8:9]
/// Port x configuration bits (y =
PUPDR4: u2 = 0,
/// PUPDR5 [10:11]
/// Port x configuration bits (y =
PUPDR5: u2 = 0,
/// PUPDR6 [12:13]
/// Port x configuration bits (y =
PUPDR6: u2 = 0,
/// PUPDR7 [14:15]
/// Port x configuration bits (y =
PUPDR7: u2 = 0,
/// PUPDR8 [16:17]
/// Port x configuration bits (y =
PUPDR8: u2 = 0,
/// PUPDR9 [18:19]
/// Port x configuration bits (y =
PUPDR9: u2 = 0,
/// PUPDR10 [20:21]
/// Port x configuration bits (y =
PUPDR10: u2 = 0,
/// PUPDR11 [22:23]
/// Port x configuration bits (y =
PUPDR11: u2 = 0,
/// PUPDR12 [24:25]
/// Port x configuration bits (y =
PUPDR12: u2 = 0,
/// PUPDR13 [26:27]
/// Port x configuration bits (y =
PUPDR13: u2 = 0,
/// PUPDR14 [28:29]
/// Port x configuration bits (y =
PUPDR14: u2 = 0,
/// PUPDR15 [30:31]
/// Port x configuration bits (y =
PUPDR15: u2 = 0,
};
/// GPIO port pull-up/pull-down
pub const PUPDR = MMIO(PUPDR_val).init(base_address + 0xc);

/// IDR
const IDR_val = packed struct {
/// IDR0 [0:0]
/// Port input data (y =
IDR0: u1 = 0,
/// IDR1 [1:1]
/// Port input data (y =
IDR1: u1 = 0,
/// IDR2 [2:2]
/// Port input data (y =
IDR2: u1 = 0,
/// IDR3 [3:3]
/// Port input data (y =
IDR3: u1 = 0,
/// IDR4 [4:4]
/// Port input data (y =
IDR4: u1 = 0,
/// IDR5 [5:5]
/// Port input data (y =
IDR5: u1 = 0,
/// IDR6 [6:6]
/// Port input data (y =
IDR6: u1 = 0,
/// IDR7 [7:7]
/// Port input data (y =
IDR7: u1 = 0,
/// IDR8 [8:8]
/// Port input data (y =
IDR8: u1 = 0,
/// IDR9 [9:9]
/// Port input data (y =
IDR9: u1 = 0,
/// IDR10 [10:10]
/// Port input data (y =
IDR10: u1 = 0,
/// IDR11 [11:11]
/// Port input data (y =
IDR11: u1 = 0,
/// IDR12 [12:12]
/// Port input data (y =
IDR12: u1 = 0,
/// IDR13 [13:13]
/// Port input data (y =
IDR13: u1 = 0,
/// IDR14 [14:14]
/// Port input data (y =
IDR14: u1 = 0,
/// IDR15 [15:15]
/// Port input data (y =
IDR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port input data register
pub const IDR = MMIO(IDR_val).init(base_address + 0x10);

/// ODR
const ODR_val = packed struct {
/// ODR0 [0:0]
/// Port output data (y =
ODR0: u1 = 0,
/// ODR1 [1:1]
/// Port output data (y =
ODR1: u1 = 0,
/// ODR2 [2:2]
/// Port output data (y =
ODR2: u1 = 0,
/// ODR3 [3:3]
/// Port output data (y =
ODR3: u1 = 0,
/// ODR4 [4:4]
/// Port output data (y =
ODR4: u1 = 0,
/// ODR5 [5:5]
/// Port output data (y =
ODR5: u1 = 0,
/// ODR6 [6:6]
/// Port output data (y =
ODR6: u1 = 0,
/// ODR7 [7:7]
/// Port output data (y =
ODR7: u1 = 0,
/// ODR8 [8:8]
/// Port output data (y =
ODR8: u1 = 0,
/// ODR9 [9:9]
/// Port output data (y =
ODR9: u1 = 0,
/// ODR10 [10:10]
/// Port output data (y =
ODR10: u1 = 0,
/// ODR11 [11:11]
/// Port output data (y =
ODR11: u1 = 0,
/// ODR12 [12:12]
/// Port output data (y =
ODR12: u1 = 0,
/// ODR13 [13:13]
/// Port output data (y =
ODR13: u1 = 0,
/// ODR14 [14:14]
/// Port output data (y =
ODR14: u1 = 0,
/// ODR15 [15:15]
/// Port output data (y =
ODR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output data register
pub const ODR = MMIO(ODR_val).init(base_address + 0x14);

/// BSRR
const BSRR_val = packed struct {
/// BS0 [0:0]
/// Port x set bit y (y=
BS0: u1 = 0,
/// BS1 [1:1]
/// Port x set bit y (y=
BS1: u1 = 0,
/// BS2 [2:2]
/// Port x set bit y (y=
BS2: u1 = 0,
/// BS3 [3:3]
/// Port x set bit y (y=
BS3: u1 = 0,
/// BS4 [4:4]
/// Port x set bit y (y=
BS4: u1 = 0,
/// BS5 [5:5]
/// Port x set bit y (y=
BS5: u1 = 0,
/// BS6 [6:6]
/// Port x set bit y (y=
BS6: u1 = 0,
/// BS7 [7:7]
/// Port x set bit y (y=
BS7: u1 = 0,
/// BS8 [8:8]
/// Port x set bit y (y=
BS8: u1 = 0,
/// BS9 [9:9]
/// Port x set bit y (y=
BS9: u1 = 0,
/// BS10 [10:10]
/// Port x set bit y (y=
BS10: u1 = 0,
/// BS11 [11:11]
/// Port x set bit y (y=
BS11: u1 = 0,
/// BS12 [12:12]
/// Port x set bit y (y=
BS12: u1 = 0,
/// BS13 [13:13]
/// Port x set bit y (y=
BS13: u1 = 0,
/// BS14 [14:14]
/// Port x set bit y (y=
BS14: u1 = 0,
/// BS15 [15:15]
/// Port x set bit y (y=
BS15: u1 = 0,
/// BR0 [16:16]
/// Port x set bit y (y=
BR0: u1 = 0,
/// BR1 [17:17]
/// Port x reset bit y (y =
BR1: u1 = 0,
/// BR2 [18:18]
/// Port x reset bit y (y =
BR2: u1 = 0,
/// BR3 [19:19]
/// Port x reset bit y (y =
BR3: u1 = 0,
/// BR4 [20:20]
/// Port x reset bit y (y =
BR4: u1 = 0,
/// BR5 [21:21]
/// Port x reset bit y (y =
BR5: u1 = 0,
/// BR6 [22:22]
/// Port x reset bit y (y =
BR6: u1 = 0,
/// BR7 [23:23]
/// Port x reset bit y (y =
BR7: u1 = 0,
/// BR8 [24:24]
/// Port x reset bit y (y =
BR8: u1 = 0,
/// BR9 [25:25]
/// Port x reset bit y (y =
BR9: u1 = 0,
/// BR10 [26:26]
/// Port x reset bit y (y =
BR10: u1 = 0,
/// BR11 [27:27]
/// Port x reset bit y (y =
BR11: u1 = 0,
/// BR12 [28:28]
/// Port x reset bit y (y =
BR12: u1 = 0,
/// BR13 [29:29]
/// Port x reset bit y (y =
BR13: u1 = 0,
/// BR14 [30:30]
/// Port x reset bit y (y =
BR14: u1 = 0,
/// BR15 [31:31]
/// Port x reset bit y (y =
BR15: u1 = 0,
};
/// GPIO port bit set/reset
pub const BSRR = MMIO(BSRR_val).init(base_address + 0x18);

/// LCKR
const LCKR_val = packed struct {
/// LCK0 [0:0]
/// Port x lock bit y (y=
LCK0: u1 = 0,
/// LCK1 [1:1]
/// Port x lock bit y (y=
LCK1: u1 = 0,
/// LCK2 [2:2]
/// Port x lock bit y (y=
LCK2: u1 = 0,
/// LCK3 [3:3]
/// Port x lock bit y (y=
LCK3: u1 = 0,
/// LCK4 [4:4]
/// Port x lock bit y (y=
LCK4: u1 = 0,
/// LCK5 [5:5]
/// Port x lock bit y (y=
LCK5: u1 = 0,
/// LCK6 [6:6]
/// Port x lock bit y (y=
LCK6: u1 = 0,
/// LCK7 [7:7]
/// Port x lock bit y (y=
LCK7: u1 = 0,
/// LCK8 [8:8]
/// Port x lock bit y (y=
LCK8: u1 = 0,
/// LCK9 [9:9]
/// Port x lock bit y (y=
LCK9: u1 = 0,
/// LCK10 [10:10]
/// Port x lock bit y (y=
LCK10: u1 = 0,
/// LCK11 [11:11]
/// Port x lock bit y (y=
LCK11: u1 = 0,
/// LCK12 [12:12]
/// Port x lock bit y (y=
LCK12: u1 = 0,
/// LCK13 [13:13]
/// Port x lock bit y (y=
LCK13: u1 = 0,
/// LCK14 [14:14]
/// Port x lock bit y (y=
LCK14: u1 = 0,
/// LCK15 [15:15]
/// Port x lock bit y (y=
LCK15: u1 = 0,
/// LCKK [16:16]
/// Port x lock bit y (y=
LCKK: u1 = 0,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// GPIO port configuration lock
pub const LCKR = MMIO(LCKR_val).init(base_address + 0x1c);

/// AFRL
const AFRL_val = packed struct {
/// AFRL0 [0:3]
/// Alternate function selection for port x
AFRL0: u4 = 0,
/// AFRL1 [4:7]
/// Alternate function selection for port x
AFRL1: u4 = 0,
/// AFRL2 [8:11]
/// Alternate function selection for port x
AFRL2: u4 = 0,
/// AFRL3 [12:15]
/// Alternate function selection for port x
AFRL3: u4 = 0,
/// AFRL4 [16:19]
/// Alternate function selection for port x
AFRL4: u4 = 0,
/// AFRL5 [20:23]
/// Alternate function selection for port x
AFRL5: u4 = 0,
/// AFRL6 [24:27]
/// Alternate function selection for port x
AFRL6: u4 = 0,
/// AFRL7 [28:31]
/// Alternate function selection for port x
AFRL7: u4 = 0,
};
/// GPIO alternate function low
pub const AFRL = MMIO(AFRL_val).init(base_address + 0x20);

/// AFRH
const AFRH_val = packed struct {
/// AFRH8 [0:3]
/// Alternate function selection for port x
AFRH8: u4 = 0,
/// AFRH9 [4:7]
/// Alternate function selection for port x
AFRH9: u4 = 0,
/// AFRH10 [8:11]
/// Alternate function selection for port x
AFRH10: u4 = 0,
/// AFRH11 [12:15]
/// Alternate function selection for port x
AFRH11: u4 = 0,
/// AFRH12 [16:19]
/// Alternate function selection for port x
AFRH12: u4 = 0,
/// AFRH13 [20:23]
/// Alternate function selection for port x
AFRH13: u4 = 0,
/// AFRH14 [24:27]
/// Alternate function selection for port x
AFRH14: u4 = 0,
/// AFRH15 [28:31]
/// Alternate function selection for port x
AFRH15: u4 = 0,
};
/// GPIO alternate function high
pub const AFRH = MMIO(AFRH_val).init(base_address + 0x24);
};

/// General-purpose I/Os
pub const GPIOB = struct {

const base_address = 0x40020400;
/// MODER
const MODER_val = packed struct {
/// MODER0 [0:1]
/// Port x configuration bits (y =
MODER0: u2 = 0,
/// MODER1 [2:3]
/// Port x configuration bits (y =
MODER1: u2 = 0,
/// MODER2 [4:5]
/// Port x configuration bits (y =
MODER2: u2 = 0,
/// MODER3 [6:7]
/// Port x configuration bits (y =
MODER3: u2 = 2,
/// MODER4 [8:9]
/// Port x configuration bits (y =
MODER4: u2 = 2,
/// MODER5 [10:11]
/// Port x configuration bits (y =
MODER5: u2 = 0,
/// MODER6 [12:13]
/// Port x configuration bits (y =
MODER6: u2 = 0,
/// MODER7 [14:15]
/// Port x configuration bits (y =
MODER7: u2 = 0,
/// MODER8 [16:17]
/// Port x configuration bits (y =
MODER8: u2 = 0,
/// MODER9 [18:19]
/// Port x configuration bits (y =
MODER9: u2 = 0,
/// MODER10 [20:21]
/// Port x configuration bits (y =
MODER10: u2 = 0,
/// MODER11 [22:23]
/// Port x configuration bits (y =
MODER11: u2 = 0,
/// MODER12 [24:25]
/// Port x configuration bits (y =
MODER12: u2 = 0,
/// MODER13 [26:27]
/// Port x configuration bits (y =
MODER13: u2 = 0,
/// MODER14 [28:29]
/// Port x configuration bits (y =
MODER14: u2 = 0,
/// MODER15 [30:31]
/// Port x configuration bits (y =
MODER15: u2 = 0,
};
/// GPIO port mode register
pub const MODER = MMIO(MODER_val).init(base_address + 0x0);

/// OTYPER
const OTYPER_val = packed struct {
/// OT0 [0:0]
/// Port x configuration bits (y =
OT0: u1 = 0,
/// OT1 [1:1]
/// Port x configuration bits (y =
OT1: u1 = 0,
/// OT2 [2:2]
/// Port x configuration bits (y =
OT2: u1 = 0,
/// OT3 [3:3]
/// Port x configuration bits (y =
OT3: u1 = 0,
/// OT4 [4:4]
/// Port x configuration bits (y =
OT4: u1 = 0,
/// OT5 [5:5]
/// Port x configuration bits (y =
OT5: u1 = 0,
/// OT6 [6:6]
/// Port x configuration bits (y =
OT6: u1 = 0,
/// OT7 [7:7]
/// Port x configuration bits (y =
OT7: u1 = 0,
/// OT8 [8:8]
/// Port x configuration bits (y =
OT8: u1 = 0,
/// OT9 [9:9]
/// Port x configuration bits (y =
OT9: u1 = 0,
/// OT10 [10:10]
/// Port x configuration bits (y =
OT10: u1 = 0,
/// OT11 [11:11]
/// Port x configuration bits (y =
OT11: u1 = 0,
/// OT12 [12:12]
/// Port x configuration bits (y =
OT12: u1 = 0,
/// OT13 [13:13]
/// Port x configuration bits (y =
OT13: u1 = 0,
/// OT14 [14:14]
/// Port x configuration bits (y =
OT14: u1 = 0,
/// OT15 [15:15]
/// Port x configuration bits (y =
OT15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output type register
pub const OTYPER = MMIO(OTYPER_val).init(base_address + 0x4);

/// OSPEEDR
const OSPEEDR_val = packed struct {
/// OSPEEDR0 [0:1]
/// Port x configuration bits (y =
OSPEEDR0: u2 = 0,
/// OSPEEDR1 [2:3]
/// Port x configuration bits (y =
OSPEEDR1: u2 = 0,
/// OSPEEDR2 [4:5]
/// Port x configuration bits (y =
OSPEEDR2: u2 = 0,
/// OSPEEDR3 [6:7]
/// Port x configuration bits (y =
OSPEEDR3: u2 = 3,
/// OSPEEDR4 [8:9]
/// Port x configuration bits (y =
OSPEEDR4: u2 = 0,
/// OSPEEDR5 [10:11]
/// Port x configuration bits (y =
OSPEEDR5: u2 = 0,
/// OSPEEDR6 [12:13]
/// Port x configuration bits (y =
OSPEEDR6: u2 = 0,
/// OSPEEDR7 [14:15]
/// Port x configuration bits (y =
OSPEEDR7: u2 = 0,
/// OSPEEDR8 [16:17]
/// Port x configuration bits (y =
OSPEEDR8: u2 = 0,
/// OSPEEDR9 [18:19]
/// Port x configuration bits (y =
OSPEEDR9: u2 = 0,
/// OSPEEDR10 [20:21]
/// Port x configuration bits (y =
OSPEEDR10: u2 = 0,
/// OSPEEDR11 [22:23]
/// Port x configuration bits (y =
OSPEEDR11: u2 = 0,
/// OSPEEDR12 [24:25]
/// Port x configuration bits (y =
OSPEEDR12: u2 = 0,
/// OSPEEDR13 [26:27]
/// Port x configuration bits (y =
OSPEEDR13: u2 = 0,
/// OSPEEDR14 [28:29]
/// Port x configuration bits (y =
OSPEEDR14: u2 = 0,
/// OSPEEDR15 [30:31]
/// Port x configuration bits (y =
OSPEEDR15: u2 = 0,
};
/// GPIO port output speed
pub const OSPEEDR = MMIO(OSPEEDR_val).init(base_address + 0x8);

/// PUPDR
const PUPDR_val = packed struct {
/// PUPDR0 [0:1]
/// Port x configuration bits (y =
PUPDR0: u2 = 0,
/// PUPDR1 [2:3]
/// Port x configuration bits (y =
PUPDR1: u2 = 0,
/// PUPDR2 [4:5]
/// Port x configuration bits (y =
PUPDR2: u2 = 0,
/// PUPDR3 [6:7]
/// Port x configuration bits (y =
PUPDR3: u2 = 0,
/// PUPDR4 [8:9]
/// Port x configuration bits (y =
PUPDR4: u2 = 1,
/// PUPDR5 [10:11]
/// Port x configuration bits (y =
PUPDR5: u2 = 0,
/// PUPDR6 [12:13]
/// Port x configuration bits (y =
PUPDR6: u2 = 0,
/// PUPDR7 [14:15]
/// Port x configuration bits (y =
PUPDR7: u2 = 0,
/// PUPDR8 [16:17]
/// Port x configuration bits (y =
PUPDR8: u2 = 0,
/// PUPDR9 [18:19]
/// Port x configuration bits (y =
PUPDR9: u2 = 0,
/// PUPDR10 [20:21]
/// Port x configuration bits (y =
PUPDR10: u2 = 0,
/// PUPDR11 [22:23]
/// Port x configuration bits (y =
PUPDR11: u2 = 0,
/// PUPDR12 [24:25]
/// Port x configuration bits (y =
PUPDR12: u2 = 0,
/// PUPDR13 [26:27]
/// Port x configuration bits (y =
PUPDR13: u2 = 0,
/// PUPDR14 [28:29]
/// Port x configuration bits (y =
PUPDR14: u2 = 0,
/// PUPDR15 [30:31]
/// Port x configuration bits (y =
PUPDR15: u2 = 0,
};
/// GPIO port pull-up/pull-down
pub const PUPDR = MMIO(PUPDR_val).init(base_address + 0xc);

/// IDR
const IDR_val = packed struct {
/// IDR0 [0:0]
/// Port input data (y =
IDR0: u1 = 0,
/// IDR1 [1:1]
/// Port input data (y =
IDR1: u1 = 0,
/// IDR2 [2:2]
/// Port input data (y =
IDR2: u1 = 0,
/// IDR3 [3:3]
/// Port input data (y =
IDR3: u1 = 0,
/// IDR4 [4:4]
/// Port input data (y =
IDR4: u1 = 0,
/// IDR5 [5:5]
/// Port input data (y =
IDR5: u1 = 0,
/// IDR6 [6:6]
/// Port input data (y =
IDR6: u1 = 0,
/// IDR7 [7:7]
/// Port input data (y =
IDR7: u1 = 0,
/// IDR8 [8:8]
/// Port input data (y =
IDR8: u1 = 0,
/// IDR9 [9:9]
/// Port input data (y =
IDR9: u1 = 0,
/// IDR10 [10:10]
/// Port input data (y =
IDR10: u1 = 0,
/// IDR11 [11:11]
/// Port input data (y =
IDR11: u1 = 0,
/// IDR12 [12:12]
/// Port input data (y =
IDR12: u1 = 0,
/// IDR13 [13:13]
/// Port input data (y =
IDR13: u1 = 0,
/// IDR14 [14:14]
/// Port input data (y =
IDR14: u1 = 0,
/// IDR15 [15:15]
/// Port input data (y =
IDR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port input data register
pub const IDR = MMIO(IDR_val).init(base_address + 0x10);

/// ODR
const ODR_val = packed struct {
/// ODR0 [0:0]
/// Port output data (y =
ODR0: u1 = 0,
/// ODR1 [1:1]
/// Port output data (y =
ODR1: u1 = 0,
/// ODR2 [2:2]
/// Port output data (y =
ODR2: u1 = 0,
/// ODR3 [3:3]
/// Port output data (y =
ODR3: u1 = 0,
/// ODR4 [4:4]
/// Port output data (y =
ODR4: u1 = 0,
/// ODR5 [5:5]
/// Port output data (y =
ODR5: u1 = 0,
/// ODR6 [6:6]
/// Port output data (y =
ODR6: u1 = 0,
/// ODR7 [7:7]
/// Port output data (y =
ODR7: u1 = 0,
/// ODR8 [8:8]
/// Port output data (y =
ODR8: u1 = 0,
/// ODR9 [9:9]
/// Port output data (y =
ODR9: u1 = 0,
/// ODR10 [10:10]
/// Port output data (y =
ODR10: u1 = 0,
/// ODR11 [11:11]
/// Port output data (y =
ODR11: u1 = 0,
/// ODR12 [12:12]
/// Port output data (y =
ODR12: u1 = 0,
/// ODR13 [13:13]
/// Port output data (y =
ODR13: u1 = 0,
/// ODR14 [14:14]
/// Port output data (y =
ODR14: u1 = 0,
/// ODR15 [15:15]
/// Port output data (y =
ODR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output data register
pub const ODR = MMIO(ODR_val).init(base_address + 0x14);

/// BSRR
const BSRR_val = packed struct {
/// BS0 [0:0]
/// Port x set bit y (y=
BS0: u1 = 0,
/// BS1 [1:1]
/// Port x set bit y (y=
BS1: u1 = 0,
/// BS2 [2:2]
/// Port x set bit y (y=
BS2: u1 = 0,
/// BS3 [3:3]
/// Port x set bit y (y=
BS3: u1 = 0,
/// BS4 [4:4]
/// Port x set bit y (y=
BS4: u1 = 0,
/// BS5 [5:5]
/// Port x set bit y (y=
BS5: u1 = 0,
/// BS6 [6:6]
/// Port x set bit y (y=
BS6: u1 = 0,
/// BS7 [7:7]
/// Port x set bit y (y=
BS7: u1 = 0,
/// BS8 [8:8]
/// Port x set bit y (y=
BS8: u1 = 0,
/// BS9 [9:9]
/// Port x set bit y (y=
BS9: u1 = 0,
/// BS10 [10:10]
/// Port x set bit y (y=
BS10: u1 = 0,
/// BS11 [11:11]
/// Port x set bit y (y=
BS11: u1 = 0,
/// BS12 [12:12]
/// Port x set bit y (y=
BS12: u1 = 0,
/// BS13 [13:13]
/// Port x set bit y (y=
BS13: u1 = 0,
/// BS14 [14:14]
/// Port x set bit y (y=
BS14: u1 = 0,
/// BS15 [15:15]
/// Port x set bit y (y=
BS15: u1 = 0,
/// BR0 [16:16]
/// Port x set bit y (y=
BR0: u1 = 0,
/// BR1 [17:17]
/// Port x reset bit y (y =
BR1: u1 = 0,
/// BR2 [18:18]
/// Port x reset bit y (y =
BR2: u1 = 0,
/// BR3 [19:19]
/// Port x reset bit y (y =
BR3: u1 = 0,
/// BR4 [20:20]
/// Port x reset bit y (y =
BR4: u1 = 0,
/// BR5 [21:21]
/// Port x reset bit y (y =
BR5: u1 = 0,
/// BR6 [22:22]
/// Port x reset bit y (y =
BR6: u1 = 0,
/// BR7 [23:23]
/// Port x reset bit y (y =
BR7: u1 = 0,
/// BR8 [24:24]
/// Port x reset bit y (y =
BR8: u1 = 0,
/// BR9 [25:25]
/// Port x reset bit y (y =
BR9: u1 = 0,
/// BR10 [26:26]
/// Port x reset bit y (y =
BR10: u1 = 0,
/// BR11 [27:27]
/// Port x reset bit y (y =
BR11: u1 = 0,
/// BR12 [28:28]
/// Port x reset bit y (y =
BR12: u1 = 0,
/// BR13 [29:29]
/// Port x reset bit y (y =
BR13: u1 = 0,
/// BR14 [30:30]
/// Port x reset bit y (y =
BR14: u1 = 0,
/// BR15 [31:31]
/// Port x reset bit y (y =
BR15: u1 = 0,
};
/// GPIO port bit set/reset
pub const BSRR = MMIO(BSRR_val).init(base_address + 0x18);

/// LCKR
const LCKR_val = packed struct {
/// LCK0 [0:0]
/// Port x lock bit y (y=
LCK0: u1 = 0,
/// LCK1 [1:1]
/// Port x lock bit y (y=
LCK1: u1 = 0,
/// LCK2 [2:2]
/// Port x lock bit y (y=
LCK2: u1 = 0,
/// LCK3 [3:3]
/// Port x lock bit y (y=
LCK3: u1 = 0,
/// LCK4 [4:4]
/// Port x lock bit y (y=
LCK4: u1 = 0,
/// LCK5 [5:5]
/// Port x lock bit y (y=
LCK5: u1 = 0,
/// LCK6 [6:6]
/// Port x lock bit y (y=
LCK6: u1 = 0,
/// LCK7 [7:7]
/// Port x lock bit y (y=
LCK7: u1 = 0,
/// LCK8 [8:8]
/// Port x lock bit y (y=
LCK8: u1 = 0,
/// LCK9 [9:9]
/// Port x lock bit y (y=
LCK9: u1 = 0,
/// LCK10 [10:10]
/// Port x lock bit y (y=
LCK10: u1 = 0,
/// LCK11 [11:11]
/// Port x lock bit y (y=
LCK11: u1 = 0,
/// LCK12 [12:12]
/// Port x lock bit y (y=
LCK12: u1 = 0,
/// LCK13 [13:13]
/// Port x lock bit y (y=
LCK13: u1 = 0,
/// LCK14 [14:14]
/// Port x lock bit y (y=
LCK14: u1 = 0,
/// LCK15 [15:15]
/// Port x lock bit y (y=
LCK15: u1 = 0,
/// LCKK [16:16]
/// Port x lock bit y (y=
LCKK: u1 = 0,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// GPIO port configuration lock
pub const LCKR = MMIO(LCKR_val).init(base_address + 0x1c);

/// AFRL
const AFRL_val = packed struct {
/// AFRL0 [0:3]
/// Alternate function selection for port x
AFRL0: u4 = 0,
/// AFRL1 [4:7]
/// Alternate function selection for port x
AFRL1: u4 = 0,
/// AFRL2 [8:11]
/// Alternate function selection for port x
AFRL2: u4 = 0,
/// AFRL3 [12:15]
/// Alternate function selection for port x
AFRL3: u4 = 0,
/// AFRL4 [16:19]
/// Alternate function selection for port x
AFRL4: u4 = 0,
/// AFRL5 [20:23]
/// Alternate function selection for port x
AFRL5: u4 = 0,
/// AFRL6 [24:27]
/// Alternate function selection for port x
AFRL6: u4 = 0,
/// AFRL7 [28:31]
/// Alternate function selection for port x
AFRL7: u4 = 0,
};
/// GPIO alternate function low
pub const AFRL = MMIO(AFRL_val).init(base_address + 0x20);

/// AFRH
const AFRH_val = packed struct {
/// AFRH8 [0:3]
/// Alternate function selection for port x
AFRH8: u4 = 0,
/// AFRH9 [4:7]
/// Alternate function selection for port x
AFRH9: u4 = 0,
/// AFRH10 [8:11]
/// Alternate function selection for port x
AFRH10: u4 = 0,
/// AFRH11 [12:15]
/// Alternate function selection for port x
AFRH11: u4 = 0,
/// AFRH12 [16:19]
/// Alternate function selection for port x
AFRH12: u4 = 0,
/// AFRH13 [20:23]
/// Alternate function selection for port x
AFRH13: u4 = 0,
/// AFRH14 [24:27]
/// Alternate function selection for port x
AFRH14: u4 = 0,
/// AFRH15 [28:31]
/// Alternate function selection for port x
AFRH15: u4 = 0,
};
/// GPIO alternate function high
pub const AFRH = MMIO(AFRH_val).init(base_address + 0x24);
};

/// General-purpose I/Os
pub const GPIOA = struct {

const base_address = 0x40020000;
/// MODER
const MODER_val = packed struct {
/// MODER0 [0:1]
/// Port x configuration bits (y =
MODER0: u2 = 0,
/// MODER1 [2:3]
/// Port x configuration bits (y =
MODER1: u2 = 0,
/// MODER2 [4:5]
/// Port x configuration bits (y =
MODER2: u2 = 0,
/// MODER3 [6:7]
/// Port x configuration bits (y =
MODER3: u2 = 0,
/// MODER4 [8:9]
/// Port x configuration bits (y =
MODER4: u2 = 0,
/// MODER5 [10:11]
/// Port x configuration bits (y =
MODER5: u2 = 0,
/// MODER6 [12:13]
/// Port x configuration bits (y =
MODER6: u2 = 0,
/// MODER7 [14:15]
/// Port x configuration bits (y =
MODER7: u2 = 0,
/// MODER8 [16:17]
/// Port x configuration bits (y =
MODER8: u2 = 0,
/// MODER9 [18:19]
/// Port x configuration bits (y =
MODER9: u2 = 0,
/// MODER10 [20:21]
/// Port x configuration bits (y =
MODER10: u2 = 0,
/// MODER11 [22:23]
/// Port x configuration bits (y =
MODER11: u2 = 0,
/// MODER12 [24:25]
/// Port x configuration bits (y =
MODER12: u2 = 0,
/// MODER13 [26:27]
/// Port x configuration bits (y =
MODER13: u2 = 2,
/// MODER14 [28:29]
/// Port x configuration bits (y =
MODER14: u2 = 2,
/// MODER15 [30:31]
/// Port x configuration bits (y =
MODER15: u2 = 2,
};
/// GPIO port mode register
pub const MODER = MMIO(MODER_val).init(base_address + 0x0);

/// OTYPER
const OTYPER_val = packed struct {
/// OT0 [0:0]
/// Port x configuration bits (y =
OT0: u1 = 0,
/// OT1 [1:1]
/// Port x configuration bits (y =
OT1: u1 = 0,
/// OT2 [2:2]
/// Port x configuration bits (y =
OT2: u1 = 0,
/// OT3 [3:3]
/// Port x configuration bits (y =
OT3: u1 = 0,
/// OT4 [4:4]
/// Port x configuration bits (y =
OT4: u1 = 0,
/// OT5 [5:5]
/// Port x configuration bits (y =
OT5: u1 = 0,
/// OT6 [6:6]
/// Port x configuration bits (y =
OT6: u1 = 0,
/// OT7 [7:7]
/// Port x configuration bits (y =
OT7: u1 = 0,
/// OT8 [8:8]
/// Port x configuration bits (y =
OT8: u1 = 0,
/// OT9 [9:9]
/// Port x configuration bits (y =
OT9: u1 = 0,
/// OT10 [10:10]
/// Port x configuration bits (y =
OT10: u1 = 0,
/// OT11 [11:11]
/// Port x configuration bits (y =
OT11: u1 = 0,
/// OT12 [12:12]
/// Port x configuration bits (y =
OT12: u1 = 0,
/// OT13 [13:13]
/// Port x configuration bits (y =
OT13: u1 = 0,
/// OT14 [14:14]
/// Port x configuration bits (y =
OT14: u1 = 0,
/// OT15 [15:15]
/// Port x configuration bits (y =
OT15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output type register
pub const OTYPER = MMIO(OTYPER_val).init(base_address + 0x4);

/// OSPEEDR
const OSPEEDR_val = packed struct {
/// OSPEEDR0 [0:1]
/// Port x configuration bits (y =
OSPEEDR0: u2 = 0,
/// OSPEEDR1 [2:3]
/// Port x configuration bits (y =
OSPEEDR1: u2 = 0,
/// OSPEEDR2 [4:5]
/// Port x configuration bits (y =
OSPEEDR2: u2 = 0,
/// OSPEEDR3 [6:7]
/// Port x configuration bits (y =
OSPEEDR3: u2 = 0,
/// OSPEEDR4 [8:9]
/// Port x configuration bits (y =
OSPEEDR4: u2 = 0,
/// OSPEEDR5 [10:11]
/// Port x configuration bits (y =
OSPEEDR5: u2 = 0,
/// OSPEEDR6 [12:13]
/// Port x configuration bits (y =
OSPEEDR6: u2 = 0,
/// OSPEEDR7 [14:15]
/// Port x configuration bits (y =
OSPEEDR7: u2 = 0,
/// OSPEEDR8 [16:17]
/// Port x configuration bits (y =
OSPEEDR8: u2 = 0,
/// OSPEEDR9 [18:19]
/// Port x configuration bits (y =
OSPEEDR9: u2 = 0,
/// OSPEEDR10 [20:21]
/// Port x configuration bits (y =
OSPEEDR10: u2 = 0,
/// OSPEEDR11 [22:23]
/// Port x configuration bits (y =
OSPEEDR11: u2 = 0,
/// OSPEEDR12 [24:25]
/// Port x configuration bits (y =
OSPEEDR12: u2 = 0,
/// OSPEEDR13 [26:27]
/// Port x configuration bits (y =
OSPEEDR13: u2 = 0,
/// OSPEEDR14 [28:29]
/// Port x configuration bits (y =
OSPEEDR14: u2 = 0,
/// OSPEEDR15 [30:31]
/// Port x configuration bits (y =
OSPEEDR15: u2 = 0,
};
/// GPIO port output speed
pub const OSPEEDR = MMIO(OSPEEDR_val).init(base_address + 0x8);

/// PUPDR
const PUPDR_val = packed struct {
/// PUPDR0 [0:1]
/// Port x configuration bits (y =
PUPDR0: u2 = 0,
/// PUPDR1 [2:3]
/// Port x configuration bits (y =
PUPDR1: u2 = 0,
/// PUPDR2 [4:5]
/// Port x configuration bits (y =
PUPDR2: u2 = 0,
/// PUPDR3 [6:7]
/// Port x configuration bits (y =
PUPDR3: u2 = 0,
/// PUPDR4 [8:9]
/// Port x configuration bits (y =
PUPDR4: u2 = 0,
/// PUPDR5 [10:11]
/// Port x configuration bits (y =
PUPDR5: u2 = 0,
/// PUPDR6 [12:13]
/// Port x configuration bits (y =
PUPDR6: u2 = 0,
/// PUPDR7 [14:15]
/// Port x configuration bits (y =
PUPDR7: u2 = 0,
/// PUPDR8 [16:17]
/// Port x configuration bits (y =
PUPDR8: u2 = 0,
/// PUPDR9 [18:19]
/// Port x configuration bits (y =
PUPDR9: u2 = 0,
/// PUPDR10 [20:21]
/// Port x configuration bits (y =
PUPDR10: u2 = 0,
/// PUPDR11 [22:23]
/// Port x configuration bits (y =
PUPDR11: u2 = 0,
/// PUPDR12 [24:25]
/// Port x configuration bits (y =
PUPDR12: u2 = 0,
/// PUPDR13 [26:27]
/// Port x configuration bits (y =
PUPDR13: u2 = 1,
/// PUPDR14 [28:29]
/// Port x configuration bits (y =
PUPDR14: u2 = 2,
/// PUPDR15 [30:31]
/// Port x configuration bits (y =
PUPDR15: u2 = 1,
};
/// GPIO port pull-up/pull-down
pub const PUPDR = MMIO(PUPDR_val).init(base_address + 0xc);

/// IDR
const IDR_val = packed struct {
/// IDR0 [0:0]
/// Port input data (y =
IDR0: u1 = 0,
/// IDR1 [1:1]
/// Port input data (y =
IDR1: u1 = 0,
/// IDR2 [2:2]
/// Port input data (y =
IDR2: u1 = 0,
/// IDR3 [3:3]
/// Port input data (y =
IDR3: u1 = 0,
/// IDR4 [4:4]
/// Port input data (y =
IDR4: u1 = 0,
/// IDR5 [5:5]
/// Port input data (y =
IDR5: u1 = 0,
/// IDR6 [6:6]
/// Port input data (y =
IDR6: u1 = 0,
/// IDR7 [7:7]
/// Port input data (y =
IDR7: u1 = 0,
/// IDR8 [8:8]
/// Port input data (y =
IDR8: u1 = 0,
/// IDR9 [9:9]
/// Port input data (y =
IDR9: u1 = 0,
/// IDR10 [10:10]
/// Port input data (y =
IDR10: u1 = 0,
/// IDR11 [11:11]
/// Port input data (y =
IDR11: u1 = 0,
/// IDR12 [12:12]
/// Port input data (y =
IDR12: u1 = 0,
/// IDR13 [13:13]
/// Port input data (y =
IDR13: u1 = 0,
/// IDR14 [14:14]
/// Port input data (y =
IDR14: u1 = 0,
/// IDR15 [15:15]
/// Port input data (y =
IDR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port input data register
pub const IDR = MMIO(IDR_val).init(base_address + 0x10);

/// ODR
const ODR_val = packed struct {
/// ODR0 [0:0]
/// Port output data (y =
ODR0: u1 = 0,
/// ODR1 [1:1]
/// Port output data (y =
ODR1: u1 = 0,
/// ODR2 [2:2]
/// Port output data (y =
ODR2: u1 = 0,
/// ODR3 [3:3]
/// Port output data (y =
ODR3: u1 = 0,
/// ODR4 [4:4]
/// Port output data (y =
ODR4: u1 = 0,
/// ODR5 [5:5]
/// Port output data (y =
ODR5: u1 = 0,
/// ODR6 [6:6]
/// Port output data (y =
ODR6: u1 = 0,
/// ODR7 [7:7]
/// Port output data (y =
ODR7: u1 = 0,
/// ODR8 [8:8]
/// Port output data (y =
ODR8: u1 = 0,
/// ODR9 [9:9]
/// Port output data (y =
ODR9: u1 = 0,
/// ODR10 [10:10]
/// Port output data (y =
ODR10: u1 = 0,
/// ODR11 [11:11]
/// Port output data (y =
ODR11: u1 = 0,
/// ODR12 [12:12]
/// Port output data (y =
ODR12: u1 = 0,
/// ODR13 [13:13]
/// Port output data (y =
ODR13: u1 = 0,
/// ODR14 [14:14]
/// Port output data (y =
ODR14: u1 = 0,
/// ODR15 [15:15]
/// Port output data (y =
ODR15: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// GPIO port output data register
pub const ODR = MMIO(ODR_val).init(base_address + 0x14);

/// BSRR
const BSRR_val = packed struct {
/// BS0 [0:0]
/// Port x set bit y (y=
BS0: u1 = 0,
/// BS1 [1:1]
/// Port x set bit y (y=
BS1: u1 = 0,
/// BS2 [2:2]
/// Port x set bit y (y=
BS2: u1 = 0,
/// BS3 [3:3]
/// Port x set bit y (y=
BS3: u1 = 0,
/// BS4 [4:4]
/// Port x set bit y (y=
BS4: u1 = 0,
/// BS5 [5:5]
/// Port x set bit y (y=
BS5: u1 = 0,
/// BS6 [6:6]
/// Port x set bit y (y=
BS6: u1 = 0,
/// BS7 [7:7]
/// Port x set bit y (y=
BS7: u1 = 0,
/// BS8 [8:8]
/// Port x set bit y (y=
BS8: u1 = 0,
/// BS9 [9:9]
/// Port x set bit y (y=
BS9: u1 = 0,
/// BS10 [10:10]
/// Port x set bit y (y=
BS10: u1 = 0,
/// BS11 [11:11]
/// Port x set bit y (y=
BS11: u1 = 0,
/// BS12 [12:12]
/// Port x set bit y (y=
BS12: u1 = 0,
/// BS13 [13:13]
/// Port x set bit y (y=
BS13: u1 = 0,
/// BS14 [14:14]
/// Port x set bit y (y=
BS14: u1 = 0,
/// BS15 [15:15]
/// Port x set bit y (y=
BS15: u1 = 0,
/// BR0 [16:16]
/// Port x set bit y (y=
BR0: u1 = 0,
/// BR1 [17:17]
/// Port x reset bit y (y =
BR1: u1 = 0,
/// BR2 [18:18]
/// Port x reset bit y (y =
BR2: u1 = 0,
/// BR3 [19:19]
/// Port x reset bit y (y =
BR3: u1 = 0,
/// BR4 [20:20]
/// Port x reset bit y (y =
BR4: u1 = 0,
/// BR5 [21:21]
/// Port x reset bit y (y =
BR5: u1 = 0,
/// BR6 [22:22]
/// Port x reset bit y (y =
BR6: u1 = 0,
/// BR7 [23:23]
/// Port x reset bit y (y =
BR7: u1 = 0,
/// BR8 [24:24]
/// Port x reset bit y (y =
BR8: u1 = 0,
/// BR9 [25:25]
/// Port x reset bit y (y =
BR9: u1 = 0,
/// BR10 [26:26]
/// Port x reset bit y (y =
BR10: u1 = 0,
/// BR11 [27:27]
/// Port x reset bit y (y =
BR11: u1 = 0,
/// BR12 [28:28]
/// Port x reset bit y (y =
BR12: u1 = 0,
/// BR13 [29:29]
/// Port x reset bit y (y =
BR13: u1 = 0,
/// BR14 [30:30]
/// Port x reset bit y (y =
BR14: u1 = 0,
/// BR15 [31:31]
/// Port x reset bit y (y =
BR15: u1 = 0,
};
/// GPIO port bit set/reset
pub const BSRR = MMIO(BSRR_val).init(base_address + 0x18);

/// LCKR
const LCKR_val = packed struct {
/// LCK0 [0:0]
/// Port x lock bit y (y=
LCK0: u1 = 0,
/// LCK1 [1:1]
/// Port x lock bit y (y=
LCK1: u1 = 0,
/// LCK2 [2:2]
/// Port x lock bit y (y=
LCK2: u1 = 0,
/// LCK3 [3:3]
/// Port x lock bit y (y=
LCK3: u1 = 0,
/// LCK4 [4:4]
/// Port x lock bit y (y=
LCK4: u1 = 0,
/// LCK5 [5:5]
/// Port x lock bit y (y=
LCK5: u1 = 0,
/// LCK6 [6:6]
/// Port x lock bit y (y=
LCK6: u1 = 0,
/// LCK7 [7:7]
/// Port x lock bit y (y=
LCK7: u1 = 0,
/// LCK8 [8:8]
/// Port x lock bit y (y=
LCK8: u1 = 0,
/// LCK9 [9:9]
/// Port x lock bit y (y=
LCK9: u1 = 0,
/// LCK10 [10:10]
/// Port x lock bit y (y=
LCK10: u1 = 0,
/// LCK11 [11:11]
/// Port x lock bit y (y=
LCK11: u1 = 0,
/// LCK12 [12:12]
/// Port x lock bit y (y=
LCK12: u1 = 0,
/// LCK13 [13:13]
/// Port x lock bit y (y=
LCK13: u1 = 0,
/// LCK14 [14:14]
/// Port x lock bit y (y=
LCK14: u1 = 0,
/// LCK15 [15:15]
/// Port x lock bit y (y=
LCK15: u1 = 0,
/// LCKK [16:16]
/// Port x lock bit y (y=
LCKK: u1 = 0,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// GPIO port configuration lock
pub const LCKR = MMIO(LCKR_val).init(base_address + 0x1c);

/// AFRL
const AFRL_val = packed struct {
/// AFRL0 [0:3]
/// Alternate function selection for port x
AFRL0: u4 = 0,
/// AFRL1 [4:7]
/// Alternate function selection for port x
AFRL1: u4 = 0,
/// AFRL2 [8:11]
/// Alternate function selection for port x
AFRL2: u4 = 0,
/// AFRL3 [12:15]
/// Alternate function selection for port x
AFRL3: u4 = 0,
/// AFRL4 [16:19]
/// Alternate function selection for port x
AFRL4: u4 = 0,
/// AFRL5 [20:23]
/// Alternate function selection for port x
AFRL5: u4 = 0,
/// AFRL6 [24:27]
/// Alternate function selection for port x
AFRL6: u4 = 0,
/// AFRL7 [28:31]
/// Alternate function selection for port x
AFRL7: u4 = 0,
};
/// GPIO alternate function low
pub const AFRL = MMIO(AFRL_val).init(base_address + 0x20);

/// AFRH
const AFRH_val = packed struct {
/// AFRH8 [0:3]
/// Alternate function selection for port x
AFRH8: u4 = 0,
/// AFRH9 [4:7]
/// Alternate function selection for port x
AFRH9: u4 = 0,
/// AFRH10 [8:11]
/// Alternate function selection for port x
AFRH10: u4 = 0,
/// AFRH11 [12:15]
/// Alternate function selection for port x
AFRH11: u4 = 0,
/// AFRH12 [16:19]
/// Alternate function selection for port x
AFRH12: u4 = 0,
/// AFRH13 [20:23]
/// Alternate function selection for port x
AFRH13: u4 = 0,
/// AFRH14 [24:27]
/// Alternate function selection for port x
AFRH14: u4 = 0,
/// AFRH15 [28:31]
/// Alternate function selection for port x
AFRH15: u4 = 0,
};
/// GPIO alternate function high
pub const AFRH = MMIO(AFRH_val).init(base_address + 0x24);
};

/// System configuration controller
pub const SYSCFG = struct {

const base_address = 0x40013800;
/// MEMRM
const MEMRM_val = packed struct {
/// MEM_MODE [0:2]
/// Memory mapping selection
MEM_MODE: u3 = 0,
/// unused [3:7]
_unused3: u5 = 0,
/// FB_MODE [8:8]
/// Flash bank mode selection
FB_MODE: u1 = 0,
/// unused [9:9]
_unused9: u1 = 0,
/// SWP_FMC [10:11]
/// FMC memory mapping swap
SWP_FMC: u2 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// memory remap register
pub const MEMRM = MMIO(MEMRM_val).init(base_address + 0x0);

/// PMC
const PMC_val = packed struct {
/// unused [0:15]
_unused0: u8 = 0,
_unused8: u8 = 0,
/// ADC1DC2 [16:16]
/// ADC1DC2
ADC1DC2: u1 = 0,
/// ADC2DC2 [17:17]
/// ADC2DC2
ADC2DC2: u1 = 0,
/// ADC3DC2 [18:18]
/// ADC3DC2
ADC3DC2: u1 = 0,
/// unused [19:22]
_unused19: u4 = 0,
/// MII_RMII_SEL [23:23]
/// Ethernet PHY interface
MII_RMII_SEL: u1 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// peripheral mode configuration
pub const PMC = MMIO(PMC_val).init(base_address + 0x4);

/// EXTICR1
const EXTICR1_val = packed struct {
/// EXTI0 [0:3]
/// EXTI x configuration (x = 0 to
EXTI0: u4 = 0,
/// EXTI1 [4:7]
/// EXTI x configuration (x = 0 to
EXTI1: u4 = 0,
/// EXTI2 [8:11]
/// EXTI x configuration (x = 0 to
EXTI2: u4 = 0,
/// EXTI3 [12:15]
/// EXTI x configuration (x = 0 to
EXTI3: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// external interrupt configuration register
pub const EXTICR1 = MMIO(EXTICR1_val).init(base_address + 0x8);

/// EXTICR2
const EXTICR2_val = packed struct {
/// EXTI4 [0:3]
/// EXTI x configuration (x = 4 to
EXTI4: u4 = 0,
/// EXTI5 [4:7]
/// EXTI x configuration (x = 4 to
EXTI5: u4 = 0,
/// EXTI6 [8:11]
/// EXTI x configuration (x = 4 to
EXTI6: u4 = 0,
/// EXTI7 [12:15]
/// EXTI x configuration (x = 4 to
EXTI7: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// external interrupt configuration register
pub const EXTICR2 = MMIO(EXTICR2_val).init(base_address + 0xc);

/// EXTICR3
const EXTICR3_val = packed struct {
/// EXTI8 [0:3]
/// EXTI x configuration (x = 8 to
EXTI8: u4 = 0,
/// EXTI9 [4:7]
/// EXTI x configuration (x = 8 to
EXTI9: u4 = 0,
/// EXTI10 [8:11]
/// EXTI10
EXTI10: u4 = 0,
/// EXTI11 [12:15]
/// EXTI x configuration (x = 8 to
EXTI11: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// external interrupt configuration register
pub const EXTICR3 = MMIO(EXTICR3_val).init(base_address + 0x10);

/// EXTICR4
const EXTICR4_val = packed struct {
/// EXTI12 [0:3]
/// EXTI x configuration (x = 12 to
EXTI12: u4 = 0,
/// EXTI13 [4:7]
/// EXTI x configuration (x = 12 to
EXTI13: u4 = 0,
/// EXTI14 [8:11]
/// EXTI x configuration (x = 12 to
EXTI14: u4 = 0,
/// EXTI15 [12:15]
/// EXTI x configuration (x = 12 to
EXTI15: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// external interrupt configuration register
pub const EXTICR4 = MMIO(EXTICR4_val).init(base_address + 0x14);

/// CMPCR
const CMPCR_val = packed struct {
/// CMP_PD [0:0]
/// Compensation cell
CMP_PD: u1 = 0,
/// unused [1:7]
_unused1: u7 = 0,
/// READY [8:8]
/// READY
READY: u1 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Compensation cell control
pub const CMPCR = MMIO(CMPCR_val).init(base_address + 0x20);
};

/// Serial peripheral interface
pub const SPI1 = struct {

const base_address = 0x40013000;
/// CR1
const CR1_val = packed struct {
/// CPHA [0:0]
/// Clock phase
CPHA: u1 = 0,
/// CPOL [1:1]
/// Clock polarity
CPOL: u1 = 0,
/// MSTR [2:2]
/// Master selection
MSTR: u1 = 0,
/// BR [3:5]
/// Baud rate control
BR: u3 = 0,
/// SPE [6:6]
/// SPI enable
SPE: u1 = 0,
/// LSBFIRST [7:7]
/// Frame format
LSBFIRST: u1 = 0,
/// SSI [8:8]
/// Internal slave select
SSI: u1 = 0,
/// SSM [9:9]
/// Software slave management
SSM: u1 = 0,
/// RXONLY [10:10]
/// Receive only
RXONLY: u1 = 0,
/// DFF [11:11]
/// Data frame format
DFF: u1 = 0,
/// CRCNEXT [12:12]
/// CRC transfer next
CRCNEXT: u1 = 0,
/// CRCEN [13:13]
/// Hardware CRC calculation
CRCEN: u1 = 0,
/// BIDIOE [14:14]
/// Output enable in bidirectional
BIDIOE: u1 = 0,
/// BIDIMODE [15:15]
/// Bidirectional data mode
BIDIMODE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// RXDMAEN [0:0]
/// Rx buffer DMA enable
RXDMAEN: u1 = 0,
/// TXDMAEN [1:1]
/// Tx buffer DMA enable
TXDMAEN: u1 = 0,
/// SSOE [2:2]
/// SS output enable
SSOE: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// FRF [4:4]
/// Frame format
FRF: u1 = 0,
/// ERRIE [5:5]
/// Error interrupt enable
ERRIE: u1 = 0,
/// RXNEIE [6:6]
/// RX buffer not empty interrupt
RXNEIE: u1 = 0,
/// TXEIE [7:7]
/// Tx buffer empty interrupt
TXEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// SR
const SR_val = packed struct {
/// RXNE [0:0]
/// Receive buffer not empty
RXNE: u1 = 0,
/// TXE [1:1]
/// Transmit buffer empty
TXE: u1 = 1,
/// CHSIDE [2:2]
/// Channel side
CHSIDE: u1 = 0,
/// UDR [3:3]
/// Underrun flag
UDR: u1 = 0,
/// CRCERR [4:4]
/// CRC error flag
CRCERR: u1 = 0,
/// MODF [5:5]
/// Mode fault
MODF: u1 = 0,
/// OVR [6:6]
/// Overrun flag
OVR: u1 = 0,
/// BSY [7:7]
/// Busy flag
BSY: u1 = 0,
/// TIFRFE [8:8]
/// TI frame format error
TIFRFE: u1 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x8);

/// DR
const DR_val = packed struct {
/// DR [0:15]
/// Data register
DR: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// data register
pub const DR = MMIO(DR_val).init(base_address + 0xc);

/// CRCPR
const CRCPR_val = packed struct {
/// CRCPOLY [0:15]
/// CRC polynomial register
CRCPOLY: u16 = 7,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// CRC polynomial register
pub const CRCPR = MMIO(CRCPR_val).init(base_address + 0x10);

/// RXCRCR
const RXCRCR_val = packed struct {
/// RxCRC [0:15]
/// Rx CRC register
RxCRC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// RX CRC register
pub const RXCRCR = MMIO(RXCRCR_val).init(base_address + 0x14);

/// TXCRCR
const TXCRCR_val = packed struct {
/// TxCRC [0:15]
/// Tx CRC register
TxCRC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// TX CRC register
pub const TXCRCR = MMIO(TXCRCR_val).init(base_address + 0x18);

/// I2SCFGR
const I2SCFGR_val = packed struct {
/// CHLEN [0:0]
/// Channel length (number of bits per audio
CHLEN: u1 = 0,
/// DATLEN [1:2]
/// Data length to be
DATLEN: u2 = 0,
/// CKPOL [3:3]
/// Steady state clock
CKPOL: u1 = 0,
/// I2SSTD [4:5]
/// I2S standard selection
I2SSTD: u2 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// PCMSYNC [7:7]
/// PCM frame synchronization
PCMSYNC: u1 = 0,
/// I2SCFG [8:9]
/// I2S configuration mode
I2SCFG: u2 = 0,
/// I2SE [10:10]
/// I2S Enable
I2SE: u1 = 0,
/// I2SMOD [11:11]
/// I2S mode selection
I2SMOD: u1 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// I2S configuration register
pub const I2SCFGR = MMIO(I2SCFGR_val).init(base_address + 0x1c);

/// I2SPR
const I2SPR_val = packed struct {
/// I2SDIV [0:7]
/// I2S Linear prescaler
I2SDIV: u8 = 16,
/// ODD [8:8]
/// Odd factor for the
ODD: u1 = 0,
/// MCKOE [9:9]
/// Master clock output enable
MCKOE: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// I2S prescaler register
pub const I2SPR = MMIO(I2SPR_val).init(base_address + 0x20);
};

/// Serial peripheral interface
pub const SPI2 = struct {

const base_address = 0x40003800;
/// CR1
const CR1_val = packed struct {
/// CPHA [0:0]
/// Clock phase
CPHA: u1 = 0,
/// CPOL [1:1]
/// Clock polarity
CPOL: u1 = 0,
/// MSTR [2:2]
/// Master selection
MSTR: u1 = 0,
/// BR [3:5]
/// Baud rate control
BR: u3 = 0,
/// SPE [6:6]
/// SPI enable
SPE: u1 = 0,
/// LSBFIRST [7:7]
/// Frame format
LSBFIRST: u1 = 0,
/// SSI [8:8]
/// Internal slave select
SSI: u1 = 0,
/// SSM [9:9]
/// Software slave management
SSM: u1 = 0,
/// RXONLY [10:10]
/// Receive only
RXONLY: u1 = 0,
/// DFF [11:11]
/// Data frame format
DFF: u1 = 0,
/// CRCNEXT [12:12]
/// CRC transfer next
CRCNEXT: u1 = 0,
/// CRCEN [13:13]
/// Hardware CRC calculation
CRCEN: u1 = 0,
/// BIDIOE [14:14]
/// Output enable in bidirectional
BIDIOE: u1 = 0,
/// BIDIMODE [15:15]
/// Bidirectional data mode
BIDIMODE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// RXDMAEN [0:0]
/// Rx buffer DMA enable
RXDMAEN: u1 = 0,
/// TXDMAEN [1:1]
/// Tx buffer DMA enable
TXDMAEN: u1 = 0,
/// SSOE [2:2]
/// SS output enable
SSOE: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// FRF [4:4]
/// Frame format
FRF: u1 = 0,
/// ERRIE [5:5]
/// Error interrupt enable
ERRIE: u1 = 0,
/// RXNEIE [6:6]
/// RX buffer not empty interrupt
RXNEIE: u1 = 0,
/// TXEIE [7:7]
/// Tx buffer empty interrupt
TXEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// SR
const SR_val = packed struct {
/// RXNE [0:0]
/// Receive buffer not empty
RXNE: u1 = 0,
/// TXE [1:1]
/// Transmit buffer empty
TXE: u1 = 1,
/// CHSIDE [2:2]
/// Channel side
CHSIDE: u1 = 0,
/// UDR [3:3]
/// Underrun flag
UDR: u1 = 0,
/// CRCERR [4:4]
/// CRC error flag
CRCERR: u1 = 0,
/// MODF [5:5]
/// Mode fault
MODF: u1 = 0,
/// OVR [6:6]
/// Overrun flag
OVR: u1 = 0,
/// BSY [7:7]
/// Busy flag
BSY: u1 = 0,
/// TIFRFE [8:8]
/// TI frame format error
TIFRFE: u1 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x8);

/// DR
const DR_val = packed struct {
/// DR [0:15]
/// Data register
DR: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// data register
pub const DR = MMIO(DR_val).init(base_address + 0xc);

/// CRCPR
const CRCPR_val = packed struct {
/// CRCPOLY [0:15]
/// CRC polynomial register
CRCPOLY: u16 = 7,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// CRC polynomial register
pub const CRCPR = MMIO(CRCPR_val).init(base_address + 0x10);

/// RXCRCR
const RXCRCR_val = packed struct {
/// RxCRC [0:15]
/// Rx CRC register
RxCRC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// RX CRC register
pub const RXCRCR = MMIO(RXCRCR_val).init(base_address + 0x14);

/// TXCRCR
const TXCRCR_val = packed struct {
/// TxCRC [0:15]
/// Tx CRC register
TxCRC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// TX CRC register
pub const TXCRCR = MMIO(TXCRCR_val).init(base_address + 0x18);

/// I2SCFGR
const I2SCFGR_val = packed struct {
/// CHLEN [0:0]
/// Channel length (number of bits per audio
CHLEN: u1 = 0,
/// DATLEN [1:2]
/// Data length to be
DATLEN: u2 = 0,
/// CKPOL [3:3]
/// Steady state clock
CKPOL: u1 = 0,
/// I2SSTD [4:5]
/// I2S standard selection
I2SSTD: u2 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// PCMSYNC [7:7]
/// PCM frame synchronization
PCMSYNC: u1 = 0,
/// I2SCFG [8:9]
/// I2S configuration mode
I2SCFG: u2 = 0,
/// I2SE [10:10]
/// I2S Enable
I2SE: u1 = 0,
/// I2SMOD [11:11]
/// I2S mode selection
I2SMOD: u1 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// I2S configuration register
pub const I2SCFGR = MMIO(I2SCFGR_val).init(base_address + 0x1c);

/// I2SPR
const I2SPR_val = packed struct {
/// I2SDIV [0:7]
/// I2S Linear prescaler
I2SDIV: u8 = 16,
/// ODD [8:8]
/// Odd factor for the
ODD: u1 = 0,
/// MCKOE [9:9]
/// Master clock output enable
MCKOE: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// I2S prescaler register
pub const I2SPR = MMIO(I2SPR_val).init(base_address + 0x20);
};

/// Serial peripheral interface
pub const SPI3 = struct {

const base_address = 0x40003c00;
/// CR1
const CR1_val = packed struct {
/// CPHA [0:0]
/// Clock phase
CPHA: u1 = 0,
/// CPOL [1:1]
/// Clock polarity
CPOL: u1 = 0,
/// MSTR [2:2]
/// Master selection
MSTR: u1 = 0,
/// BR [3:5]
/// Baud rate control
BR: u3 = 0,
/// SPE [6:6]
/// SPI enable
SPE: u1 = 0,
/// LSBFIRST [7:7]
/// Frame format
LSBFIRST: u1 = 0,
/// SSI [8:8]
/// Internal slave select
SSI: u1 = 0,
/// SSM [9:9]
/// Software slave management
SSM: u1 = 0,
/// RXONLY [10:10]
/// Receive only
RXONLY: u1 = 0,
/// DFF [11:11]
/// Data frame format
DFF: u1 = 0,
/// CRCNEXT [12:12]
/// CRC transfer next
CRCNEXT: u1 = 0,
/// CRCEN [13:13]
/// Hardware CRC calculation
CRCEN: u1 = 0,
/// BIDIOE [14:14]
/// Output enable in bidirectional
BIDIOE: u1 = 0,
/// BIDIMODE [15:15]
/// Bidirectional data mode
BIDIMODE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// RXDMAEN [0:0]
/// Rx buffer DMA enable
RXDMAEN: u1 = 0,
/// TXDMAEN [1:1]
/// Tx buffer DMA enable
TXDMAEN: u1 = 0,
/// SSOE [2:2]
/// SS output enable
SSOE: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// FRF [4:4]
/// Frame format
FRF: u1 = 0,
/// ERRIE [5:5]
/// Error interrupt enable
ERRIE: u1 = 0,
/// RXNEIE [6:6]
/// RX buffer not empty interrupt
RXNEIE: u1 = 0,
/// TXEIE [7:7]
/// Tx buffer empty interrupt
TXEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// SR
const SR_val = packed struct {
/// RXNE [0:0]
/// Receive buffer not empty
RXNE: u1 = 0,
/// TXE [1:1]
/// Transmit buffer empty
TXE: u1 = 1,
/// CHSIDE [2:2]
/// Channel side
CHSIDE: u1 = 0,
/// UDR [3:3]
/// Underrun flag
UDR: u1 = 0,
/// CRCERR [4:4]
/// CRC error flag
CRCERR: u1 = 0,
/// MODF [5:5]
/// Mode fault
MODF: u1 = 0,
/// OVR [6:6]
/// Overrun flag
OVR: u1 = 0,
/// BSY [7:7]
/// Busy flag
BSY: u1 = 0,
/// TIFRFE [8:8]
/// TI frame format error
TIFRFE: u1 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x8);

/// DR
const DR_val = packed struct {
/// DR [0:15]
/// Data register
DR: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// data register
pub const DR = MMIO(DR_val).init(base_address + 0xc);

/// CRCPR
const CRCPR_val = packed struct {
/// CRCPOLY [0:15]
/// CRC polynomial register
CRCPOLY: u16 = 7,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// CRC polynomial register
pub const CRCPR = MMIO(CRCPR_val).init(base_address + 0x10);

/// RXCRCR
const RXCRCR_val = packed struct {
/// RxCRC [0:15]
/// Rx CRC register
RxCRC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// RX CRC register
pub const RXCRCR = MMIO(RXCRCR_val).init(base_address + 0x14);

/// TXCRCR
const TXCRCR_val = packed struct {
/// TxCRC [0:15]
/// Tx CRC register
TxCRC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// TX CRC register
pub const TXCRCR = MMIO(TXCRCR_val).init(base_address + 0x18);

/// I2SCFGR
const I2SCFGR_val = packed struct {
/// CHLEN [0:0]
/// Channel length (number of bits per audio
CHLEN: u1 = 0,
/// DATLEN [1:2]
/// Data length to be
DATLEN: u2 = 0,
/// CKPOL [3:3]
/// Steady state clock
CKPOL: u1 = 0,
/// I2SSTD [4:5]
/// I2S standard selection
I2SSTD: u2 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// PCMSYNC [7:7]
/// PCM frame synchronization
PCMSYNC: u1 = 0,
/// I2SCFG [8:9]
/// I2S configuration mode
I2SCFG: u2 = 0,
/// I2SE [10:10]
/// I2S Enable
I2SE: u1 = 0,
/// I2SMOD [11:11]
/// I2S mode selection
I2SMOD: u1 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// I2S configuration register
pub const I2SCFGR = MMIO(I2SCFGR_val).init(base_address + 0x1c);

/// I2SPR
const I2SPR_val = packed struct {
/// I2SDIV [0:7]
/// I2S Linear prescaler
I2SDIV: u8 = 16,
/// ODD [8:8]
/// Odd factor for the
ODD: u1 = 0,
/// MCKOE [9:9]
/// Master clock output enable
MCKOE: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// I2S prescaler register
pub const I2SPR = MMIO(I2SPR_val).init(base_address + 0x20);
};

/// Serial peripheral interface
pub const SPI4 = struct {

const base_address = 0x40013400;
/// CR1
const CR1_val = packed struct {
/// CPHA [0:0]
/// Clock phase
CPHA: u1 = 0,
/// CPOL [1:1]
/// Clock polarity
CPOL: u1 = 0,
/// MSTR [2:2]
/// Master selection
MSTR: u1 = 0,
/// BR [3:5]
/// Baud rate control
BR: u3 = 0,
/// SPE [6:6]
/// SPI enable
SPE: u1 = 0,
/// LSBFIRST [7:7]
/// Frame format
LSBFIRST: u1 = 0,
/// SSI [8:8]
/// Internal slave select
SSI: u1 = 0,
/// SSM [9:9]
/// Software slave management
SSM: u1 = 0,
/// RXONLY [10:10]
/// Receive only
RXONLY: u1 = 0,
/// DFF [11:11]
/// Data frame format
DFF: u1 = 0,
/// CRCNEXT [12:12]
/// CRC transfer next
CRCNEXT: u1 = 0,
/// CRCEN [13:13]
/// Hardware CRC calculation
CRCEN: u1 = 0,
/// BIDIOE [14:14]
/// Output enable in bidirectional
BIDIOE: u1 = 0,
/// BIDIMODE [15:15]
/// Bidirectional data mode
BIDIMODE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// RXDMAEN [0:0]
/// Rx buffer DMA enable
RXDMAEN: u1 = 0,
/// TXDMAEN [1:1]
/// Tx buffer DMA enable
TXDMAEN: u1 = 0,
/// SSOE [2:2]
/// SS output enable
SSOE: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// FRF [4:4]
/// Frame format
FRF: u1 = 0,
/// ERRIE [5:5]
/// Error interrupt enable
ERRIE: u1 = 0,
/// RXNEIE [6:6]
/// RX buffer not empty interrupt
RXNEIE: u1 = 0,
/// TXEIE [7:7]
/// Tx buffer empty interrupt
TXEIE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// SR
const SR_val = packed struct {
/// RXNE [0:0]
/// Receive buffer not empty
RXNE: u1 = 0,
/// TXE [1:1]
/// Transmit buffer empty
TXE: u1 = 1,
/// CHSIDE [2:2]
/// Channel side
CHSIDE: u1 = 0,
/// UDR [3:3]
/// Underrun flag
UDR: u1 = 0,
/// CRCERR [4:4]
/// CRC error flag
CRCERR: u1 = 0,
/// MODF [5:5]
/// Mode fault
MODF: u1 = 0,
/// OVR [6:6]
/// Overrun flag
OVR: u1 = 0,
/// BSY [7:7]
/// Busy flag
BSY: u1 = 0,
/// TIFRFE [8:8]
/// TI frame format error
TIFRFE: u1 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x8);

/// DR
const DR_val = packed struct {
/// DR [0:15]
/// Data register
DR: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// data register
pub const DR = MMIO(DR_val).init(base_address + 0xc);

/// CRCPR
const CRCPR_val = packed struct {
/// CRCPOLY [0:15]
/// CRC polynomial register
CRCPOLY: u16 = 7,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// CRC polynomial register
pub const CRCPR = MMIO(CRCPR_val).init(base_address + 0x10);

/// RXCRCR
const RXCRCR_val = packed struct {
/// RxCRC [0:15]
/// Rx CRC register
RxCRC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// RX CRC register
pub const RXCRCR = MMIO(RXCRCR_val).init(base_address + 0x14);

/// TXCRCR
const TXCRCR_val = packed struct {
/// TxCRC [0:15]
/// Tx CRC register
TxCRC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// TX CRC register
pub const TXCRCR = MMIO(TXCRCR_val).init(base_address + 0x18);

/// I2SCFGR
const I2SCFGR_val = packed struct {
/// CHLEN [0:0]
/// Channel length (number of bits per audio
CHLEN: u1 = 0,
/// DATLEN [1:2]
/// Data length to be
DATLEN: u2 = 0,
/// CKPOL [3:3]
/// Steady state clock
CKPOL: u1 = 0,
/// I2SSTD [4:5]
/// I2S standard selection
I2SSTD: u2 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// PCMSYNC [7:7]
/// PCM frame synchronization
PCMSYNC: u1 = 0,
/// I2SCFG [8:9]
/// I2S configuration mode
I2SCFG: u2 = 0,
/// I2SE [10:10]
/// I2S Enable
I2SE: u1 = 0,
/// I2SMOD [11:11]
/// I2S mode selection
I2SMOD: u1 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// I2S configuration register
pub const I2SCFGR = MMIO(I2SCFGR_val).init(base_address + 0x1c);

/// I2SPR
const I2SPR_val = packed struct {
/// I2SDIV [0:7]
/// I2S Linear prescaler
I2SDIV: u8 = 16,
/// ODD [8:8]
/// Odd factor for the
ODD: u1 = 0,
/// MCKOE [9:9]
/// Master clock output enable
MCKOE: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// I2S prescaler register
pub const I2SPR = MMIO(I2SPR_val).init(base_address + 0x20);
};

/// Analog-to-digital converter
pub const ADC1 = struct {

const base_address = 0x40012000;
/// SR
const SR_val = packed struct {
/// AWD [0:0]
/// Analog watchdog flag
AWD: u1 = 0,
/// EOC [1:1]
/// Regular channel end of
EOC: u1 = 0,
/// JEOC [2:2]
/// Injected channel end of
JEOC: u1 = 0,
/// JSTRT [3:3]
/// Injected channel start
JSTRT: u1 = 0,
/// STRT [4:4]
/// Regular channel start flag
STRT: u1 = 0,
/// OVR [5:5]
/// Overrun
OVR: u1 = 0,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x0);

/// CR1
const CR1_val = packed struct {
/// AWDCH [0:4]
/// Analog watchdog channel select
AWDCH: u5 = 0,
/// EOCIE [5:5]
/// Interrupt enable for EOC
EOCIE: u1 = 0,
/// AWDIE [6:6]
/// Analog watchdog interrupt
AWDIE: u1 = 0,
/// JEOCIE [7:7]
/// Interrupt enable for injected
JEOCIE: u1 = 0,
/// SCAN [8:8]
/// Scan mode
SCAN: u1 = 0,
/// AWDSGL [9:9]
/// Enable the watchdog on a single channel
AWDSGL: u1 = 0,
/// JAUTO [10:10]
/// Automatic injected group
JAUTO: u1 = 0,
/// DISCEN [11:11]
/// Discontinuous mode on regular
DISCEN: u1 = 0,
/// JDISCEN [12:12]
/// Discontinuous mode on injected
JDISCEN: u1 = 0,
/// DISCNUM [13:15]
/// Discontinuous mode channel
DISCNUM: u3 = 0,
/// unused [16:21]
_unused16: u6 = 0,
/// JAWDEN [22:22]
/// Analog watchdog enable on injected
JAWDEN: u1 = 0,
/// AWDEN [23:23]
/// Analog watchdog enable on regular
AWDEN: u1 = 0,
/// RES [24:25]
/// Resolution
RES: u2 = 0,
/// OVRIE [26:26]
/// Overrun interrupt enable
OVRIE: u1 = 0,
/// unused [27:31]
_unused27: u5 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x4);

/// CR2
const CR2_val = packed struct {
/// ADON [0:0]
/// A/D Converter ON / OFF
ADON: u1 = 0,
/// CONT [1:1]
/// Continuous conversion
CONT: u1 = 0,
/// unused [2:7]
_unused2: u6 = 0,
/// DMA [8:8]
/// Direct memory access mode (for single
DMA: u1 = 0,
/// DDS [9:9]
/// DMA disable selection (for single ADC
DDS: u1 = 0,
/// EOCS [10:10]
/// End of conversion
EOCS: u1 = 0,
/// ALIGN [11:11]
/// Data alignment
ALIGN: u1 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// JEXTSEL [16:19]
/// External event select for injected
JEXTSEL: u4 = 0,
/// JEXTEN [20:21]
/// External trigger enable for injected
JEXTEN: u2 = 0,
/// JSWSTART [22:22]
/// Start conversion of injected
JSWSTART: u1 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// EXTSEL [24:27]
/// External event select for regular
EXTSEL: u4 = 0,
/// EXTEN [28:29]
/// External trigger enable for regular
EXTEN: u2 = 0,
/// SWSTART [30:30]
/// Start conversion of regular
SWSTART: u1 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x8);

/// SMPR1
const SMPR1_val = packed struct {
/// SMPx_x [0:31]
/// Sample time bits
SMPx_x: u32 = 0,
};
/// sample time register 1
pub const SMPR1 = MMIO(SMPR1_val).init(base_address + 0xc);

/// SMPR2
const SMPR2_val = packed struct {
/// SMPx_x [0:31]
/// Sample time bits
SMPx_x: u32 = 0,
};
/// sample time register 2
pub const SMPR2 = MMIO(SMPR2_val).init(base_address + 0x10);

/// JOFR1
const JOFR1_val = packed struct {
/// JOFFSET1 [0:11]
/// Data offset for injected channel
JOFFSET1: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected channel data offset register
pub const JOFR1 = MMIO(JOFR1_val).init(base_address + 0x14);

/// JOFR2
const JOFR2_val = packed struct {
/// JOFFSET2 [0:11]
/// Data offset for injected channel
JOFFSET2: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected channel data offset register
pub const JOFR2 = MMIO(JOFR2_val).init(base_address + 0x18);

/// JOFR3
const JOFR3_val = packed struct {
/// JOFFSET3 [0:11]
/// Data offset for injected channel
JOFFSET3: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected channel data offset register
pub const JOFR3 = MMIO(JOFR3_val).init(base_address + 0x1c);

/// JOFR4
const JOFR4_val = packed struct {
/// JOFFSET4 [0:11]
/// Data offset for injected channel
JOFFSET4: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected channel data offset register
pub const JOFR4 = MMIO(JOFR4_val).init(base_address + 0x20);

/// HTR
const HTR_val = packed struct {
/// HT [0:11]
/// Analog watchdog higher
HT: u12 = 4095,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// watchdog higher threshold
pub const HTR = MMIO(HTR_val).init(base_address + 0x24);

/// LTR
const LTR_val = packed struct {
/// LT [0:11]
/// Analog watchdog lower
LT: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// watchdog lower threshold
pub const LTR = MMIO(LTR_val).init(base_address + 0x28);

/// SQR1
const SQR1_val = packed struct {
/// SQ13 [0:4]
/// 13th conversion in regular
SQ13: u5 = 0,
/// SQ14 [5:9]
/// 14th conversion in regular
SQ14: u5 = 0,
/// SQ15 [10:14]
/// 15th conversion in regular
SQ15: u5 = 0,
/// SQ16 [15:19]
/// 16th conversion in regular
SQ16: u5 = 0,
/// L [20:23]
/// Regular channel sequence
L: u4 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// regular sequence register 1
pub const SQR1 = MMIO(SQR1_val).init(base_address + 0x2c);

/// SQR2
const SQR2_val = packed struct {
/// SQ7 [0:4]
/// 7th conversion in regular
SQ7: u5 = 0,
/// SQ8 [5:9]
/// 8th conversion in regular
SQ8: u5 = 0,
/// SQ9 [10:14]
/// 9th conversion in regular
SQ9: u5 = 0,
/// SQ10 [15:19]
/// 10th conversion in regular
SQ10: u5 = 0,
/// SQ11 [20:24]
/// 11th conversion in regular
SQ11: u5 = 0,
/// SQ12 [25:29]
/// 12th conversion in regular
SQ12: u5 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// regular sequence register 2
pub const SQR2 = MMIO(SQR2_val).init(base_address + 0x30);

/// SQR3
const SQR3_val = packed struct {
/// SQ1 [0:4]
/// 1st conversion in regular
SQ1: u5 = 0,
/// SQ2 [5:9]
/// 2nd conversion in regular
SQ2: u5 = 0,
/// SQ3 [10:14]
/// 3rd conversion in regular
SQ3: u5 = 0,
/// SQ4 [15:19]
/// 4th conversion in regular
SQ4: u5 = 0,
/// SQ5 [20:24]
/// 5th conversion in regular
SQ5: u5 = 0,
/// SQ6 [25:29]
/// 6th conversion in regular
SQ6: u5 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// regular sequence register 3
pub const SQR3 = MMIO(SQR3_val).init(base_address + 0x34);

/// JSQR
const JSQR_val = packed struct {
/// JSQ1 [0:4]
/// 1st conversion in injected
JSQ1: u5 = 0,
/// JSQ2 [5:9]
/// 2nd conversion in injected
JSQ2: u5 = 0,
/// JSQ3 [10:14]
/// 3rd conversion in injected
JSQ3: u5 = 0,
/// JSQ4 [15:19]
/// 4th conversion in injected
JSQ4: u5 = 0,
/// JL [20:21]
/// Injected sequence length
JL: u2 = 0,
/// unused [22:31]
_unused22: u2 = 0,
_unused24: u8 = 0,
};
/// injected sequence register
pub const JSQR = MMIO(JSQR_val).init(base_address + 0x38);

/// JDR1
const JDR1_val = packed struct {
/// JDATA [0:15]
/// Injected data
JDATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected data register x
pub const JDR1 = MMIO(JDR1_val).init(base_address + 0x3c);

/// JDR2
const JDR2_val = packed struct {
/// JDATA [0:15]
/// Injected data
JDATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected data register x
pub const JDR2 = MMIO(JDR2_val).init(base_address + 0x40);

/// JDR3
const JDR3_val = packed struct {
/// JDATA [0:15]
/// Injected data
JDATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected data register x
pub const JDR3 = MMIO(JDR3_val).init(base_address + 0x44);

/// JDR4
const JDR4_val = packed struct {
/// JDATA [0:15]
/// Injected data
JDATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected data register x
pub const JDR4 = MMIO(JDR4_val).init(base_address + 0x48);

/// DR
const DR_val = packed struct {
/// DATA [0:15]
/// Regular data
DATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// regular data register
pub const DR = MMIO(DR_val).init(base_address + 0x4c);
};

/// Analog-to-digital converter
pub const ADC2 = struct {

const base_address = 0x40012100;
/// SR
const SR_val = packed struct {
/// AWD [0:0]
/// Analog watchdog flag
AWD: u1 = 0,
/// EOC [1:1]
/// Regular channel end of
EOC: u1 = 0,
/// JEOC [2:2]
/// Injected channel end of
JEOC: u1 = 0,
/// JSTRT [3:3]
/// Injected channel start
JSTRT: u1 = 0,
/// STRT [4:4]
/// Regular channel start flag
STRT: u1 = 0,
/// OVR [5:5]
/// Overrun
OVR: u1 = 0,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x0);

/// CR1
const CR1_val = packed struct {
/// AWDCH [0:4]
/// Analog watchdog channel select
AWDCH: u5 = 0,
/// EOCIE [5:5]
/// Interrupt enable for EOC
EOCIE: u1 = 0,
/// AWDIE [6:6]
/// Analog watchdog interrupt
AWDIE: u1 = 0,
/// JEOCIE [7:7]
/// Interrupt enable for injected
JEOCIE: u1 = 0,
/// SCAN [8:8]
/// Scan mode
SCAN: u1 = 0,
/// AWDSGL [9:9]
/// Enable the watchdog on a single channel
AWDSGL: u1 = 0,
/// JAUTO [10:10]
/// Automatic injected group
JAUTO: u1 = 0,
/// DISCEN [11:11]
/// Discontinuous mode on regular
DISCEN: u1 = 0,
/// JDISCEN [12:12]
/// Discontinuous mode on injected
JDISCEN: u1 = 0,
/// DISCNUM [13:15]
/// Discontinuous mode channel
DISCNUM: u3 = 0,
/// unused [16:21]
_unused16: u6 = 0,
/// JAWDEN [22:22]
/// Analog watchdog enable on injected
JAWDEN: u1 = 0,
/// AWDEN [23:23]
/// Analog watchdog enable on regular
AWDEN: u1 = 0,
/// RES [24:25]
/// Resolution
RES: u2 = 0,
/// OVRIE [26:26]
/// Overrun interrupt enable
OVRIE: u1 = 0,
/// unused [27:31]
_unused27: u5 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x4);

/// CR2
const CR2_val = packed struct {
/// ADON [0:0]
/// A/D Converter ON / OFF
ADON: u1 = 0,
/// CONT [1:1]
/// Continuous conversion
CONT: u1 = 0,
/// unused [2:7]
_unused2: u6 = 0,
/// DMA [8:8]
/// Direct memory access mode (for single
DMA: u1 = 0,
/// DDS [9:9]
/// DMA disable selection (for single ADC
DDS: u1 = 0,
/// EOCS [10:10]
/// End of conversion
EOCS: u1 = 0,
/// ALIGN [11:11]
/// Data alignment
ALIGN: u1 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// JEXTSEL [16:19]
/// External event select for injected
JEXTSEL: u4 = 0,
/// JEXTEN [20:21]
/// External trigger enable for injected
JEXTEN: u2 = 0,
/// JSWSTART [22:22]
/// Start conversion of injected
JSWSTART: u1 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// EXTSEL [24:27]
/// External event select for regular
EXTSEL: u4 = 0,
/// EXTEN [28:29]
/// External trigger enable for regular
EXTEN: u2 = 0,
/// SWSTART [30:30]
/// Start conversion of regular
SWSTART: u1 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x8);

/// SMPR1
const SMPR1_val = packed struct {
/// SMPx_x [0:31]
/// Sample time bits
SMPx_x: u32 = 0,
};
/// sample time register 1
pub const SMPR1 = MMIO(SMPR1_val).init(base_address + 0xc);

/// SMPR2
const SMPR2_val = packed struct {
/// SMPx_x [0:31]
/// Sample time bits
SMPx_x: u32 = 0,
};
/// sample time register 2
pub const SMPR2 = MMIO(SMPR2_val).init(base_address + 0x10);

/// JOFR1
const JOFR1_val = packed struct {
/// JOFFSET1 [0:11]
/// Data offset for injected channel
JOFFSET1: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected channel data offset register
pub const JOFR1 = MMIO(JOFR1_val).init(base_address + 0x14);

/// JOFR2
const JOFR2_val = packed struct {
/// JOFFSET2 [0:11]
/// Data offset for injected channel
JOFFSET2: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected channel data offset register
pub const JOFR2 = MMIO(JOFR2_val).init(base_address + 0x18);

/// JOFR3
const JOFR3_val = packed struct {
/// JOFFSET3 [0:11]
/// Data offset for injected channel
JOFFSET3: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected channel data offset register
pub const JOFR3 = MMIO(JOFR3_val).init(base_address + 0x1c);

/// JOFR4
const JOFR4_val = packed struct {
/// JOFFSET4 [0:11]
/// Data offset for injected channel
JOFFSET4: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected channel data offset register
pub const JOFR4 = MMIO(JOFR4_val).init(base_address + 0x20);

/// HTR
const HTR_val = packed struct {
/// HT [0:11]
/// Analog watchdog higher
HT: u12 = 4095,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// watchdog higher threshold
pub const HTR = MMIO(HTR_val).init(base_address + 0x24);

/// LTR
const LTR_val = packed struct {
/// LT [0:11]
/// Analog watchdog lower
LT: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// watchdog lower threshold
pub const LTR = MMIO(LTR_val).init(base_address + 0x28);

/// SQR1
const SQR1_val = packed struct {
/// SQ13 [0:4]
/// 13th conversion in regular
SQ13: u5 = 0,
/// SQ14 [5:9]
/// 14th conversion in regular
SQ14: u5 = 0,
/// SQ15 [10:14]
/// 15th conversion in regular
SQ15: u5 = 0,
/// SQ16 [15:19]
/// 16th conversion in regular
SQ16: u5 = 0,
/// L [20:23]
/// Regular channel sequence
L: u4 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// regular sequence register 1
pub const SQR1 = MMIO(SQR1_val).init(base_address + 0x2c);

/// SQR2
const SQR2_val = packed struct {
/// SQ7 [0:4]
/// 7th conversion in regular
SQ7: u5 = 0,
/// SQ8 [5:9]
/// 8th conversion in regular
SQ8: u5 = 0,
/// SQ9 [10:14]
/// 9th conversion in regular
SQ9: u5 = 0,
/// SQ10 [15:19]
/// 10th conversion in regular
SQ10: u5 = 0,
/// SQ11 [20:24]
/// 11th conversion in regular
SQ11: u5 = 0,
/// SQ12 [25:29]
/// 12th conversion in regular
SQ12: u5 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// regular sequence register 2
pub const SQR2 = MMIO(SQR2_val).init(base_address + 0x30);

/// SQR3
const SQR3_val = packed struct {
/// SQ1 [0:4]
/// 1st conversion in regular
SQ1: u5 = 0,
/// SQ2 [5:9]
/// 2nd conversion in regular
SQ2: u5 = 0,
/// SQ3 [10:14]
/// 3rd conversion in regular
SQ3: u5 = 0,
/// SQ4 [15:19]
/// 4th conversion in regular
SQ4: u5 = 0,
/// SQ5 [20:24]
/// 5th conversion in regular
SQ5: u5 = 0,
/// SQ6 [25:29]
/// 6th conversion in regular
SQ6: u5 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// regular sequence register 3
pub const SQR3 = MMIO(SQR3_val).init(base_address + 0x34);

/// JSQR
const JSQR_val = packed struct {
/// JSQ1 [0:4]
/// 1st conversion in injected
JSQ1: u5 = 0,
/// JSQ2 [5:9]
/// 2nd conversion in injected
JSQ2: u5 = 0,
/// JSQ3 [10:14]
/// 3rd conversion in injected
JSQ3: u5 = 0,
/// JSQ4 [15:19]
/// 4th conversion in injected
JSQ4: u5 = 0,
/// JL [20:21]
/// Injected sequence length
JL: u2 = 0,
/// unused [22:31]
_unused22: u2 = 0,
_unused24: u8 = 0,
};
/// injected sequence register
pub const JSQR = MMIO(JSQR_val).init(base_address + 0x38);

/// JDR1
const JDR1_val = packed struct {
/// JDATA [0:15]
/// Injected data
JDATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected data register x
pub const JDR1 = MMIO(JDR1_val).init(base_address + 0x3c);

/// JDR2
const JDR2_val = packed struct {
/// JDATA [0:15]
/// Injected data
JDATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected data register x
pub const JDR2 = MMIO(JDR2_val).init(base_address + 0x40);

/// JDR3
const JDR3_val = packed struct {
/// JDATA [0:15]
/// Injected data
JDATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected data register x
pub const JDR3 = MMIO(JDR3_val).init(base_address + 0x44);

/// JDR4
const JDR4_val = packed struct {
/// JDATA [0:15]
/// Injected data
JDATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected data register x
pub const JDR4 = MMIO(JDR4_val).init(base_address + 0x48);

/// DR
const DR_val = packed struct {
/// DATA [0:15]
/// Regular data
DATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// regular data register
pub const DR = MMIO(DR_val).init(base_address + 0x4c);
};

/// Analog-to-digital converter
pub const ADC3 = struct {

const base_address = 0x40012200;
/// SR
const SR_val = packed struct {
/// AWD [0:0]
/// Analog watchdog flag
AWD: u1 = 0,
/// EOC [1:1]
/// Regular channel end of
EOC: u1 = 0,
/// JEOC [2:2]
/// Injected channel end of
JEOC: u1 = 0,
/// JSTRT [3:3]
/// Injected channel start
JSTRT: u1 = 0,
/// STRT [4:4]
/// Regular channel start flag
STRT: u1 = 0,
/// OVR [5:5]
/// Overrun
OVR: u1 = 0,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x0);

/// CR1
const CR1_val = packed struct {
/// AWDCH [0:4]
/// Analog watchdog channel select
AWDCH: u5 = 0,
/// EOCIE [5:5]
/// Interrupt enable for EOC
EOCIE: u1 = 0,
/// AWDIE [6:6]
/// Analog watchdog interrupt
AWDIE: u1 = 0,
/// JEOCIE [7:7]
/// Interrupt enable for injected
JEOCIE: u1 = 0,
/// SCAN [8:8]
/// Scan mode
SCAN: u1 = 0,
/// AWDSGL [9:9]
/// Enable the watchdog on a single channel
AWDSGL: u1 = 0,
/// JAUTO [10:10]
/// Automatic injected group
JAUTO: u1 = 0,
/// DISCEN [11:11]
/// Discontinuous mode on regular
DISCEN: u1 = 0,
/// JDISCEN [12:12]
/// Discontinuous mode on injected
JDISCEN: u1 = 0,
/// DISCNUM [13:15]
/// Discontinuous mode channel
DISCNUM: u3 = 0,
/// unused [16:21]
_unused16: u6 = 0,
/// JAWDEN [22:22]
/// Analog watchdog enable on injected
JAWDEN: u1 = 0,
/// AWDEN [23:23]
/// Analog watchdog enable on regular
AWDEN: u1 = 0,
/// RES [24:25]
/// Resolution
RES: u2 = 0,
/// OVRIE [26:26]
/// Overrun interrupt enable
OVRIE: u1 = 0,
/// unused [27:31]
_unused27: u5 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x4);

/// CR2
const CR2_val = packed struct {
/// ADON [0:0]
/// A/D Converter ON / OFF
ADON: u1 = 0,
/// CONT [1:1]
/// Continuous conversion
CONT: u1 = 0,
/// unused [2:7]
_unused2: u6 = 0,
/// DMA [8:8]
/// Direct memory access mode (for single
DMA: u1 = 0,
/// DDS [9:9]
/// DMA disable selection (for single ADC
DDS: u1 = 0,
/// EOCS [10:10]
/// End of conversion
EOCS: u1 = 0,
/// ALIGN [11:11]
/// Data alignment
ALIGN: u1 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// JEXTSEL [16:19]
/// External event select for injected
JEXTSEL: u4 = 0,
/// JEXTEN [20:21]
/// External trigger enable for injected
JEXTEN: u2 = 0,
/// JSWSTART [22:22]
/// Start conversion of injected
JSWSTART: u1 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// EXTSEL [24:27]
/// External event select for regular
EXTSEL: u4 = 0,
/// EXTEN [28:29]
/// External trigger enable for regular
EXTEN: u2 = 0,
/// SWSTART [30:30]
/// Start conversion of regular
SWSTART: u1 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x8);

/// SMPR1
const SMPR1_val = packed struct {
/// SMPx_x [0:31]
/// Sample time bits
SMPx_x: u32 = 0,
};
/// sample time register 1
pub const SMPR1 = MMIO(SMPR1_val).init(base_address + 0xc);

/// SMPR2
const SMPR2_val = packed struct {
/// SMPx_x [0:31]
/// Sample time bits
SMPx_x: u32 = 0,
};
/// sample time register 2
pub const SMPR2 = MMIO(SMPR2_val).init(base_address + 0x10);

/// JOFR1
const JOFR1_val = packed struct {
/// JOFFSET1 [0:11]
/// Data offset for injected channel
JOFFSET1: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected channel data offset register
pub const JOFR1 = MMIO(JOFR1_val).init(base_address + 0x14);

/// JOFR2
const JOFR2_val = packed struct {
/// JOFFSET2 [0:11]
/// Data offset for injected channel
JOFFSET2: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected channel data offset register
pub const JOFR2 = MMIO(JOFR2_val).init(base_address + 0x18);

/// JOFR3
const JOFR3_val = packed struct {
/// JOFFSET3 [0:11]
/// Data offset for injected channel
JOFFSET3: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected channel data offset register
pub const JOFR3 = MMIO(JOFR3_val).init(base_address + 0x1c);

/// JOFR4
const JOFR4_val = packed struct {
/// JOFFSET4 [0:11]
/// Data offset for injected channel
JOFFSET4: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected channel data offset register
pub const JOFR4 = MMIO(JOFR4_val).init(base_address + 0x20);

/// HTR
const HTR_val = packed struct {
/// HT [0:11]
/// Analog watchdog higher
HT: u12 = 4095,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// watchdog higher threshold
pub const HTR = MMIO(HTR_val).init(base_address + 0x24);

/// LTR
const LTR_val = packed struct {
/// LT [0:11]
/// Analog watchdog lower
LT: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// watchdog lower threshold
pub const LTR = MMIO(LTR_val).init(base_address + 0x28);

/// SQR1
const SQR1_val = packed struct {
/// SQ13 [0:4]
/// 13th conversion in regular
SQ13: u5 = 0,
/// SQ14 [5:9]
/// 14th conversion in regular
SQ14: u5 = 0,
/// SQ15 [10:14]
/// 15th conversion in regular
SQ15: u5 = 0,
/// SQ16 [15:19]
/// 16th conversion in regular
SQ16: u5 = 0,
/// L [20:23]
/// Regular channel sequence
L: u4 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// regular sequence register 1
pub const SQR1 = MMIO(SQR1_val).init(base_address + 0x2c);

/// SQR2
const SQR2_val = packed struct {
/// SQ7 [0:4]
/// 7th conversion in regular
SQ7: u5 = 0,
/// SQ8 [5:9]
/// 8th conversion in regular
SQ8: u5 = 0,
/// SQ9 [10:14]
/// 9th conversion in regular
SQ9: u5 = 0,
/// SQ10 [15:19]
/// 10th conversion in regular
SQ10: u5 = 0,
/// SQ11 [20:24]
/// 11th conversion in regular
SQ11: u5 = 0,
/// SQ12 [25:29]
/// 12th conversion in regular
SQ12: u5 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// regular sequence register 2
pub const SQR2 = MMIO(SQR2_val).init(base_address + 0x30);

/// SQR3
const SQR3_val = packed struct {
/// SQ1 [0:4]
/// 1st conversion in regular
SQ1: u5 = 0,
/// SQ2 [5:9]
/// 2nd conversion in regular
SQ2: u5 = 0,
/// SQ3 [10:14]
/// 3rd conversion in regular
SQ3: u5 = 0,
/// SQ4 [15:19]
/// 4th conversion in regular
SQ4: u5 = 0,
/// SQ5 [20:24]
/// 5th conversion in regular
SQ5: u5 = 0,
/// SQ6 [25:29]
/// 6th conversion in regular
SQ6: u5 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// regular sequence register 3
pub const SQR3 = MMIO(SQR3_val).init(base_address + 0x34);

/// JSQR
const JSQR_val = packed struct {
/// JSQ1 [0:4]
/// 1st conversion in injected
JSQ1: u5 = 0,
/// JSQ2 [5:9]
/// 2nd conversion in injected
JSQ2: u5 = 0,
/// JSQ3 [10:14]
/// 3rd conversion in injected
JSQ3: u5 = 0,
/// JSQ4 [15:19]
/// 4th conversion in injected
JSQ4: u5 = 0,
/// JL [20:21]
/// Injected sequence length
JL: u2 = 0,
/// unused [22:31]
_unused22: u2 = 0,
_unused24: u8 = 0,
};
/// injected sequence register
pub const JSQR = MMIO(JSQR_val).init(base_address + 0x38);

/// JDR1
const JDR1_val = packed struct {
/// JDATA [0:15]
/// Injected data
JDATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected data register x
pub const JDR1 = MMIO(JDR1_val).init(base_address + 0x3c);

/// JDR2
const JDR2_val = packed struct {
/// JDATA [0:15]
/// Injected data
JDATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected data register x
pub const JDR2 = MMIO(JDR2_val).init(base_address + 0x40);

/// JDR3
const JDR3_val = packed struct {
/// JDATA [0:15]
/// Injected data
JDATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected data register x
pub const JDR3 = MMIO(JDR3_val).init(base_address + 0x44);

/// JDR4
const JDR4_val = packed struct {
/// JDATA [0:15]
/// Injected data
JDATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// injected data register x
pub const JDR4 = MMIO(JDR4_val).init(base_address + 0x48);

/// DR
const DR_val = packed struct {
/// DATA [0:15]
/// Regular data
DATA: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// regular data register
pub const DR = MMIO(DR_val).init(base_address + 0x4c);
};

/// Universal synchronous asynchronous receiver
pub const USART6 = struct {

const base_address = 0x40011400;
/// SR
const SR_val = packed struct {
/// PE [0:0]
/// Parity error
PE: u1 = 0,
/// FE [1:1]
/// Framing error
FE: u1 = 0,
/// NF [2:2]
/// Noise detected flag
NF: u1 = 0,
/// ORE [3:3]
/// Overrun error
ORE: u1 = 0,
/// IDLE [4:4]
/// IDLE line detected
IDLE: u1 = 0,
/// RXNE [5:5]
/// Read data register not
RXNE: u1 = 0,
/// TC [6:6]
/// Transmission complete
TC: u1 = 0,
/// TXE [7:7]
/// Transmit data register
TXE: u1 = 0,
/// LBD [8:8]
/// LIN break detection flag
LBD: u1 = 0,
/// CTS [9:9]
/// CTS flag
CTS: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 192,
_unused24: u8 = 0,
};
/// Status register
pub const SR = MMIO(SR_val).init(base_address + 0x0);

/// DR
const DR_val = packed struct {
/// DR [0:8]
/// Data value
DR: u9 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Data register
pub const DR = MMIO(DR_val).init(base_address + 0x4);

/// BRR
const BRR_val = packed struct {
/// DIV_Fraction [0:3]
/// fraction of USARTDIV
DIV_Fraction: u4 = 0,
/// DIV_Mantissa [4:15]
/// mantissa of USARTDIV
DIV_Mantissa: u12 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Baud rate register
pub const BRR = MMIO(BRR_val).init(base_address + 0x8);

/// CR1
const CR1_val = packed struct {
/// SBK [0:0]
/// Send break
SBK: u1 = 0,
/// RWU [1:1]
/// Receiver wakeup
RWU: u1 = 0,
/// RE [2:2]
/// Receiver enable
RE: u1 = 0,
/// TE [3:3]
/// Transmitter enable
TE: u1 = 0,
/// IDLEIE [4:4]
/// IDLE interrupt enable
IDLEIE: u1 = 0,
/// RXNEIE [5:5]
/// RXNE interrupt enable
RXNEIE: u1 = 0,
/// TCIE [6:6]
/// Transmission complete interrupt
TCIE: u1 = 0,
/// TXEIE [7:7]
/// TXE interrupt enable
TXEIE: u1 = 0,
/// PEIE [8:8]
/// PE interrupt enable
PEIE: u1 = 0,
/// PS [9:9]
/// Parity selection
PS: u1 = 0,
/// PCE [10:10]
/// Parity control enable
PCE: u1 = 0,
/// WAKE [11:11]
/// Wakeup method
WAKE: u1 = 0,
/// M [12:12]
/// Word length
M: u1 = 0,
/// UE [13:13]
/// USART enable
UE: u1 = 0,
/// unused [14:14]
_unused14: u1 = 0,
/// OVER8 [15:15]
/// Oversampling mode
OVER8: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0xc);

/// CR2
const CR2_val = packed struct {
/// ADD [0:3]
/// Address of the USART node
ADD: u4 = 0,
/// unused [4:4]
_unused4: u1 = 0,
/// LBDL [5:5]
/// lin break detection length
LBDL: u1 = 0,
/// LBDIE [6:6]
/// LIN break detection interrupt
LBDIE: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// LBCL [8:8]
/// Last bit clock pulse
LBCL: u1 = 0,
/// CPHA [9:9]
/// Clock phase
CPHA: u1 = 0,
/// CPOL [10:10]
/// Clock polarity
CPOL: u1 = 0,
/// CLKEN [11:11]
/// Clock enable
CLKEN: u1 = 0,
/// STOP [12:13]
/// STOP bits
STOP: u2 = 0,
/// LINEN [14:14]
/// LIN mode enable
LINEN: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x10);

/// CR3
const CR3_val = packed struct {
/// EIE [0:0]
/// Error interrupt enable
EIE: u1 = 0,
/// IREN [1:1]
/// IrDA mode enable
IREN: u1 = 0,
/// IRLP [2:2]
/// IrDA low-power
IRLP: u1 = 0,
/// HDSEL [3:3]
/// Half-duplex selection
HDSEL: u1 = 0,
/// NACK [4:4]
/// Smartcard NACK enable
NACK: u1 = 0,
/// SCEN [5:5]
/// Smartcard mode enable
SCEN: u1 = 0,
/// DMAR [6:6]
/// DMA enable receiver
DMAR: u1 = 0,
/// DMAT [7:7]
/// DMA enable transmitter
DMAT: u1 = 0,
/// RTSE [8:8]
/// RTS enable
RTSE: u1 = 0,
/// CTSE [9:9]
/// CTS enable
CTSE: u1 = 0,
/// CTSIE [10:10]
/// CTS interrupt enable
CTSIE: u1 = 0,
/// ONEBIT [11:11]
/// One sample bit method
ONEBIT: u1 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 3
pub const CR3 = MMIO(CR3_val).init(base_address + 0x14);

/// GTPR
const GTPR_val = packed struct {
/// PSC [0:7]
/// Prescaler value
PSC: u8 = 0,
/// GT [8:15]
/// Guard time value
GT: u8 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Guard time and prescaler
pub const GTPR = MMIO(GTPR_val).init(base_address + 0x18);
};

/// Universal synchronous asynchronous receiver
pub const USART1 = struct {

const base_address = 0x40011000;
/// SR
const SR_val = packed struct {
/// PE [0:0]
/// Parity error
PE: u1 = 0,
/// FE [1:1]
/// Framing error
FE: u1 = 0,
/// NF [2:2]
/// Noise detected flag
NF: u1 = 0,
/// ORE [3:3]
/// Overrun error
ORE: u1 = 0,
/// IDLE [4:4]
/// IDLE line detected
IDLE: u1 = 0,
/// RXNE [5:5]
/// Read data register not
RXNE: u1 = 0,
/// TC [6:6]
/// Transmission complete
TC: u1 = 0,
/// TXE [7:7]
/// Transmit data register
TXE: u1 = 0,
/// LBD [8:8]
/// LIN break detection flag
LBD: u1 = 0,
/// CTS [9:9]
/// CTS flag
CTS: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 192,
_unused24: u8 = 0,
};
/// Status register
pub const SR = MMIO(SR_val).init(base_address + 0x0);

/// DR
const DR_val = packed struct {
/// DR [0:8]
/// Data value
DR: u9 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Data register
pub const DR = MMIO(DR_val).init(base_address + 0x4);

/// BRR
const BRR_val = packed struct {
/// DIV_Fraction [0:3]
/// fraction of USARTDIV
DIV_Fraction: u4 = 0,
/// DIV_Mantissa [4:15]
/// mantissa of USARTDIV
DIV_Mantissa: u12 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Baud rate register
pub const BRR = MMIO(BRR_val).init(base_address + 0x8);

/// CR1
const CR1_val = packed struct {
/// SBK [0:0]
/// Send break
SBK: u1 = 0,
/// RWU [1:1]
/// Receiver wakeup
RWU: u1 = 0,
/// RE [2:2]
/// Receiver enable
RE: u1 = 0,
/// TE [3:3]
/// Transmitter enable
TE: u1 = 0,
/// IDLEIE [4:4]
/// IDLE interrupt enable
IDLEIE: u1 = 0,
/// RXNEIE [5:5]
/// RXNE interrupt enable
RXNEIE: u1 = 0,
/// TCIE [6:6]
/// Transmission complete interrupt
TCIE: u1 = 0,
/// TXEIE [7:7]
/// TXE interrupt enable
TXEIE: u1 = 0,
/// PEIE [8:8]
/// PE interrupt enable
PEIE: u1 = 0,
/// PS [9:9]
/// Parity selection
PS: u1 = 0,
/// PCE [10:10]
/// Parity control enable
PCE: u1 = 0,
/// WAKE [11:11]
/// Wakeup method
WAKE: u1 = 0,
/// M [12:12]
/// Word length
M: u1 = 0,
/// UE [13:13]
/// USART enable
UE: u1 = 0,
/// unused [14:14]
_unused14: u1 = 0,
/// OVER8 [15:15]
/// Oversampling mode
OVER8: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0xc);

/// CR2
const CR2_val = packed struct {
/// ADD [0:3]
/// Address of the USART node
ADD: u4 = 0,
/// unused [4:4]
_unused4: u1 = 0,
/// LBDL [5:5]
/// lin break detection length
LBDL: u1 = 0,
/// LBDIE [6:6]
/// LIN break detection interrupt
LBDIE: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// LBCL [8:8]
/// Last bit clock pulse
LBCL: u1 = 0,
/// CPHA [9:9]
/// Clock phase
CPHA: u1 = 0,
/// CPOL [10:10]
/// Clock polarity
CPOL: u1 = 0,
/// CLKEN [11:11]
/// Clock enable
CLKEN: u1 = 0,
/// STOP [12:13]
/// STOP bits
STOP: u2 = 0,
/// LINEN [14:14]
/// LIN mode enable
LINEN: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x10);

/// CR3
const CR3_val = packed struct {
/// EIE [0:0]
/// Error interrupt enable
EIE: u1 = 0,
/// IREN [1:1]
/// IrDA mode enable
IREN: u1 = 0,
/// IRLP [2:2]
/// IrDA low-power
IRLP: u1 = 0,
/// HDSEL [3:3]
/// Half-duplex selection
HDSEL: u1 = 0,
/// NACK [4:4]
/// Smartcard NACK enable
NACK: u1 = 0,
/// SCEN [5:5]
/// Smartcard mode enable
SCEN: u1 = 0,
/// DMAR [6:6]
/// DMA enable receiver
DMAR: u1 = 0,
/// DMAT [7:7]
/// DMA enable transmitter
DMAT: u1 = 0,
/// RTSE [8:8]
/// RTS enable
RTSE: u1 = 0,
/// CTSE [9:9]
/// CTS enable
CTSE: u1 = 0,
/// CTSIE [10:10]
/// CTS interrupt enable
CTSIE: u1 = 0,
/// ONEBIT [11:11]
/// One sample bit method
ONEBIT: u1 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 3
pub const CR3 = MMIO(CR3_val).init(base_address + 0x14);

/// GTPR
const GTPR_val = packed struct {
/// PSC [0:7]
/// Prescaler value
PSC: u8 = 0,
/// GT [8:15]
/// Guard time value
GT: u8 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Guard time and prescaler
pub const GTPR = MMIO(GTPR_val).init(base_address + 0x18);
};

/// Universal synchronous asynchronous receiver
pub const USART2 = struct {

const base_address = 0x40004400;
/// SR
const SR_val = packed struct {
/// PE [0:0]
/// Parity error
PE: u1 = 0,
/// FE [1:1]
/// Framing error
FE: u1 = 0,
/// NF [2:2]
/// Noise detected flag
NF: u1 = 0,
/// ORE [3:3]
/// Overrun error
ORE: u1 = 0,
/// IDLE [4:4]
/// IDLE line detected
IDLE: u1 = 0,
/// RXNE [5:5]
/// Read data register not
RXNE: u1 = 0,
/// TC [6:6]
/// Transmission complete
TC: u1 = 0,
/// TXE [7:7]
/// Transmit data register
TXE: u1 = 0,
/// LBD [8:8]
/// LIN break detection flag
LBD: u1 = 0,
/// CTS [9:9]
/// CTS flag
CTS: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 192,
_unused24: u8 = 0,
};
/// Status register
pub const SR = MMIO(SR_val).init(base_address + 0x0);

/// DR
const DR_val = packed struct {
/// DR [0:8]
/// Data value
DR: u9 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Data register
pub const DR = MMIO(DR_val).init(base_address + 0x4);

/// BRR
const BRR_val = packed struct {
/// DIV_Fraction [0:3]
/// fraction of USARTDIV
DIV_Fraction: u4 = 0,
/// DIV_Mantissa [4:15]
/// mantissa of USARTDIV
DIV_Mantissa: u12 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Baud rate register
pub const BRR = MMIO(BRR_val).init(base_address + 0x8);

/// CR1
const CR1_val = packed struct {
/// SBK [0:0]
/// Send break
SBK: u1 = 0,
/// RWU [1:1]
/// Receiver wakeup
RWU: u1 = 0,
/// RE [2:2]
/// Receiver enable
RE: u1 = 0,
/// TE [3:3]
/// Transmitter enable
TE: u1 = 0,
/// IDLEIE [4:4]
/// IDLE interrupt enable
IDLEIE: u1 = 0,
/// RXNEIE [5:5]
/// RXNE interrupt enable
RXNEIE: u1 = 0,
/// TCIE [6:6]
/// Transmission complete interrupt
TCIE: u1 = 0,
/// TXEIE [7:7]
/// TXE interrupt enable
TXEIE: u1 = 0,
/// PEIE [8:8]
/// PE interrupt enable
PEIE: u1 = 0,
/// PS [9:9]
/// Parity selection
PS: u1 = 0,
/// PCE [10:10]
/// Parity control enable
PCE: u1 = 0,
/// WAKE [11:11]
/// Wakeup method
WAKE: u1 = 0,
/// M [12:12]
/// Word length
M: u1 = 0,
/// UE [13:13]
/// USART enable
UE: u1 = 0,
/// unused [14:14]
_unused14: u1 = 0,
/// OVER8 [15:15]
/// Oversampling mode
OVER8: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0xc);

/// CR2
const CR2_val = packed struct {
/// ADD [0:3]
/// Address of the USART node
ADD: u4 = 0,
/// unused [4:4]
_unused4: u1 = 0,
/// LBDL [5:5]
/// lin break detection length
LBDL: u1 = 0,
/// LBDIE [6:6]
/// LIN break detection interrupt
LBDIE: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// LBCL [8:8]
/// Last bit clock pulse
LBCL: u1 = 0,
/// CPHA [9:9]
/// Clock phase
CPHA: u1 = 0,
/// CPOL [10:10]
/// Clock polarity
CPOL: u1 = 0,
/// CLKEN [11:11]
/// Clock enable
CLKEN: u1 = 0,
/// STOP [12:13]
/// STOP bits
STOP: u2 = 0,
/// LINEN [14:14]
/// LIN mode enable
LINEN: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x10);

/// CR3
const CR3_val = packed struct {
/// EIE [0:0]
/// Error interrupt enable
EIE: u1 = 0,
/// IREN [1:1]
/// IrDA mode enable
IREN: u1 = 0,
/// IRLP [2:2]
/// IrDA low-power
IRLP: u1 = 0,
/// HDSEL [3:3]
/// Half-duplex selection
HDSEL: u1 = 0,
/// NACK [4:4]
/// Smartcard NACK enable
NACK: u1 = 0,
/// SCEN [5:5]
/// Smartcard mode enable
SCEN: u1 = 0,
/// DMAR [6:6]
/// DMA enable receiver
DMAR: u1 = 0,
/// DMAT [7:7]
/// DMA enable transmitter
DMAT: u1 = 0,
/// RTSE [8:8]
/// RTS enable
RTSE: u1 = 0,
/// CTSE [9:9]
/// CTS enable
CTSE: u1 = 0,
/// CTSIE [10:10]
/// CTS interrupt enable
CTSIE: u1 = 0,
/// ONEBIT [11:11]
/// One sample bit method
ONEBIT: u1 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 3
pub const CR3 = MMIO(CR3_val).init(base_address + 0x14);

/// GTPR
const GTPR_val = packed struct {
/// PSC [0:7]
/// Prescaler value
PSC: u8 = 0,
/// GT [8:15]
/// Guard time value
GT: u8 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Guard time and prescaler
pub const GTPR = MMIO(GTPR_val).init(base_address + 0x18);
};

/// Universal synchronous asynchronous receiver
pub const USART3 = struct {

const base_address = 0x40004800;
/// SR
const SR_val = packed struct {
/// PE [0:0]
/// Parity error
PE: u1 = 0,
/// FE [1:1]
/// Framing error
FE: u1 = 0,
/// NF [2:2]
/// Noise detected flag
NF: u1 = 0,
/// ORE [3:3]
/// Overrun error
ORE: u1 = 0,
/// IDLE [4:4]
/// IDLE line detected
IDLE: u1 = 0,
/// RXNE [5:5]
/// Read data register not
RXNE: u1 = 0,
/// TC [6:6]
/// Transmission complete
TC: u1 = 0,
/// TXE [7:7]
/// Transmit data register
TXE: u1 = 0,
/// LBD [8:8]
/// LIN break detection flag
LBD: u1 = 0,
/// CTS [9:9]
/// CTS flag
CTS: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 192,
_unused24: u8 = 0,
};
/// Status register
pub const SR = MMIO(SR_val).init(base_address + 0x0);

/// DR
const DR_val = packed struct {
/// DR [0:8]
/// Data value
DR: u9 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Data register
pub const DR = MMIO(DR_val).init(base_address + 0x4);

/// BRR
const BRR_val = packed struct {
/// DIV_Fraction [0:3]
/// fraction of USARTDIV
DIV_Fraction: u4 = 0,
/// DIV_Mantissa [4:15]
/// mantissa of USARTDIV
DIV_Mantissa: u12 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Baud rate register
pub const BRR = MMIO(BRR_val).init(base_address + 0x8);

/// CR1
const CR1_val = packed struct {
/// SBK [0:0]
/// Send break
SBK: u1 = 0,
/// RWU [1:1]
/// Receiver wakeup
RWU: u1 = 0,
/// RE [2:2]
/// Receiver enable
RE: u1 = 0,
/// TE [3:3]
/// Transmitter enable
TE: u1 = 0,
/// IDLEIE [4:4]
/// IDLE interrupt enable
IDLEIE: u1 = 0,
/// RXNEIE [5:5]
/// RXNE interrupt enable
RXNEIE: u1 = 0,
/// TCIE [6:6]
/// Transmission complete interrupt
TCIE: u1 = 0,
/// TXEIE [7:7]
/// TXE interrupt enable
TXEIE: u1 = 0,
/// PEIE [8:8]
/// PE interrupt enable
PEIE: u1 = 0,
/// PS [9:9]
/// Parity selection
PS: u1 = 0,
/// PCE [10:10]
/// Parity control enable
PCE: u1 = 0,
/// WAKE [11:11]
/// Wakeup method
WAKE: u1 = 0,
/// M [12:12]
/// Word length
M: u1 = 0,
/// UE [13:13]
/// USART enable
UE: u1 = 0,
/// unused [14:14]
_unused14: u1 = 0,
/// OVER8 [15:15]
/// Oversampling mode
OVER8: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0xc);

/// CR2
const CR2_val = packed struct {
/// ADD [0:3]
/// Address of the USART node
ADD: u4 = 0,
/// unused [4:4]
_unused4: u1 = 0,
/// LBDL [5:5]
/// lin break detection length
LBDL: u1 = 0,
/// LBDIE [6:6]
/// LIN break detection interrupt
LBDIE: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// LBCL [8:8]
/// Last bit clock pulse
LBCL: u1 = 0,
/// CPHA [9:9]
/// Clock phase
CPHA: u1 = 0,
/// CPOL [10:10]
/// Clock polarity
CPOL: u1 = 0,
/// CLKEN [11:11]
/// Clock enable
CLKEN: u1 = 0,
/// STOP [12:13]
/// STOP bits
STOP: u2 = 0,
/// LINEN [14:14]
/// LIN mode enable
LINEN: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x10);

/// CR3
const CR3_val = packed struct {
/// EIE [0:0]
/// Error interrupt enable
EIE: u1 = 0,
/// IREN [1:1]
/// IrDA mode enable
IREN: u1 = 0,
/// IRLP [2:2]
/// IrDA low-power
IRLP: u1 = 0,
/// HDSEL [3:3]
/// Half-duplex selection
HDSEL: u1 = 0,
/// NACK [4:4]
/// Smartcard NACK enable
NACK: u1 = 0,
/// SCEN [5:5]
/// Smartcard mode enable
SCEN: u1 = 0,
/// DMAR [6:6]
/// DMA enable receiver
DMAR: u1 = 0,
/// DMAT [7:7]
/// DMA enable transmitter
DMAT: u1 = 0,
/// RTSE [8:8]
/// RTS enable
RTSE: u1 = 0,
/// CTSE [9:9]
/// CTS enable
CTSE: u1 = 0,
/// CTSIE [10:10]
/// CTS interrupt enable
CTSIE: u1 = 0,
/// ONEBIT [11:11]
/// One sample bit method
ONEBIT: u1 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 3
pub const CR3 = MMIO(CR3_val).init(base_address + 0x14);

/// GTPR
const GTPR_val = packed struct {
/// PSC [0:7]
/// Prescaler value
PSC: u8 = 0,
/// GT [8:15]
/// Guard time value
GT: u8 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Guard time and prescaler
pub const GTPR = MMIO(GTPR_val).init(base_address + 0x18);
};

/// Digital-to-analog converter
pub const DAC = struct {

const base_address = 0x40007400;
/// CR
const CR_val = packed struct {
/// EN1 [0:0]
/// DAC channel1 enable
EN1: u1 = 0,
/// BOFF1 [1:1]
/// DAC channel1 output buffer
BOFF1: u1 = 0,
/// TEN1 [2:2]
/// DAC channel1 trigger
TEN1: u1 = 0,
/// TSEL1 [3:5]
/// DAC channel1 trigger
TSEL1: u3 = 0,
/// WAVE1 [6:7]
/// DAC channel1 noise/triangle wave
WAVE1: u2 = 0,
/// MAMP1 [8:11]
/// DAC channel1 mask/amplitude
MAMP1: u4 = 0,
/// DMAEN1 [12:12]
/// DAC channel1 DMA enable
DMAEN1: u1 = 0,
/// DMAUDRIE1 [13:13]
/// DAC channel1 DMA Underrun Interrupt
DMAUDRIE1: u1 = 0,
/// unused [14:15]
_unused14: u2 = 0,
/// EN2 [16:16]
/// DAC channel2 enable
EN2: u1 = 0,
/// BOFF2 [17:17]
/// DAC channel2 output buffer
BOFF2: u1 = 0,
/// TEN2 [18:18]
/// DAC channel2 trigger
TEN2: u1 = 0,
/// TSEL2 [19:21]
/// DAC channel2 trigger
TSEL2: u3 = 0,
/// WAVE2 [22:23]
/// DAC channel2 noise/triangle wave
WAVE2: u2 = 0,
/// MAMP2 [24:27]
/// DAC channel2 mask/amplitude
MAMP2: u4 = 0,
/// DMAEN2 [28:28]
/// DAC channel2 DMA enable
DMAEN2: u1 = 0,
/// DMAUDRIE2 [29:29]
/// DAC channel2 DMA underrun interrupt
DMAUDRIE2: u1 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// control register
pub const CR = MMIO(CR_val).init(base_address + 0x0);

/// SWTRIGR
const SWTRIGR_val = packed struct {
/// SWTRIG1 [0:0]
/// DAC channel1 software
SWTRIG1: u1 = 0,
/// SWTRIG2 [1:1]
/// DAC channel2 software
SWTRIG2: u1 = 0,
/// unused [2:31]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// software trigger register
pub const SWTRIGR = MMIO(SWTRIGR_val).init(base_address + 0x4);

/// DHR12R1
const DHR12R1_val = packed struct {
/// DACC1DHR [0:11]
/// DAC channel1 12-bit right-aligned
DACC1DHR: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// channel1 12-bit right-aligned data holding
pub const DHR12R1 = MMIO(DHR12R1_val).init(base_address + 0x8);

/// DHR12L1
const DHR12L1_val = packed struct {
/// unused [0:3]
_unused0: u4 = 0,
/// DACC1DHR [4:15]
/// DAC channel1 12-bit left-aligned
DACC1DHR: u12 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// channel1 12-bit left aligned data holding
pub const DHR12L1 = MMIO(DHR12L1_val).init(base_address + 0xc);

/// DHR8R1
const DHR8R1_val = packed struct {
/// DACC1DHR [0:7]
/// DAC channel1 8-bit right-aligned
DACC1DHR: u8 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// channel1 8-bit right aligned data holding
pub const DHR8R1 = MMIO(DHR8R1_val).init(base_address + 0x10);

/// DHR12R2
const DHR12R2_val = packed struct {
/// DACC2DHR [0:11]
/// DAC channel2 12-bit right-aligned
DACC2DHR: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// channel2 12-bit right aligned data holding
pub const DHR12R2 = MMIO(DHR12R2_val).init(base_address + 0x14);

/// DHR12L2
const DHR12L2_val = packed struct {
/// unused [0:3]
_unused0: u4 = 0,
/// DACC2DHR [4:15]
/// DAC channel2 12-bit left-aligned
DACC2DHR: u12 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// channel2 12-bit left aligned data holding
pub const DHR12L2 = MMIO(DHR12L2_val).init(base_address + 0x18);

/// DHR8R2
const DHR8R2_val = packed struct {
/// DACC2DHR [0:7]
/// DAC channel2 8-bit right-aligned
DACC2DHR: u8 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// channel2 8-bit right-aligned data holding
pub const DHR8R2 = MMIO(DHR8R2_val).init(base_address + 0x1c);

/// DHR12RD
const DHR12RD_val = packed struct {
/// DACC1DHR [0:11]
/// DAC channel1 12-bit right-aligned
DACC1DHR: u12 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// DACC2DHR [16:27]
/// DAC channel2 12-bit right-aligned
DACC2DHR: u12 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// Dual DAC 12-bit right-aligned data holding
pub const DHR12RD = MMIO(DHR12RD_val).init(base_address + 0x20);

/// DHR12LD
const DHR12LD_val = packed struct {
/// unused [0:3]
_unused0: u4 = 0,
/// DACC1DHR [4:15]
/// DAC channel1 12-bit left-aligned
DACC1DHR: u12 = 0,
/// unused [16:19]
_unused16: u4 = 0,
/// DACC2DHR [20:31]
/// DAC channel2 12-bit left-aligned
DACC2DHR: u12 = 0,
};
/// DUAL DAC 12-bit left aligned data holding
pub const DHR12LD = MMIO(DHR12LD_val).init(base_address + 0x24);

/// DHR8RD
const DHR8RD_val = packed struct {
/// DACC1DHR [0:7]
/// DAC channel1 8-bit right-aligned
DACC1DHR: u8 = 0,
/// DACC2DHR [8:15]
/// DAC channel2 8-bit right-aligned
DACC2DHR: u8 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DUAL DAC 8-bit right aligned data holding
pub const DHR8RD = MMIO(DHR8RD_val).init(base_address + 0x28);

/// DOR1
const DOR1_val = packed struct {
/// DACC1DOR [0:11]
/// DAC channel1 data output
DACC1DOR: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// channel1 data output register
pub const DOR1 = MMIO(DOR1_val).init(base_address + 0x2c);

/// DOR2
const DOR2_val = packed struct {
/// DACC2DOR [0:11]
/// DAC channel2 data output
DACC2DOR: u12 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// channel2 data output register
pub const DOR2 = MMIO(DOR2_val).init(base_address + 0x30);

/// SR
const SR_val = packed struct {
/// unused [0:12]
_unused0: u8 = 0,
_unused8: u5 = 0,
/// DMAUDR1 [13:13]
/// DAC channel1 DMA underrun
DMAUDR1: u1 = 0,
/// unused [14:28]
_unused14: u2 = 0,
_unused16: u8 = 0,
_unused24: u5 = 0,
/// DMAUDR2 [29:29]
/// DAC channel2 DMA underrun
DMAUDR2: u1 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x34);
};

/// Inter-integrated circuit
pub const I2C3 = struct {

const base_address = 0x40005c00;
/// CR1
const CR1_val = packed struct {
/// PE [0:0]
/// Peripheral enable
PE: u1 = 0,
/// SMBUS [1:1]
/// SMBus mode
SMBUS: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// SMBTYPE [3:3]
/// SMBus type
SMBTYPE: u1 = 0,
/// ENARP [4:4]
/// ARP enable
ENARP: u1 = 0,
/// ENPEC [5:5]
/// PEC enable
ENPEC: u1 = 0,
/// ENGC [6:6]
/// General call enable
ENGC: u1 = 0,
/// NOSTRETCH [7:7]
/// Clock stretching disable (Slave
NOSTRETCH: u1 = 0,
/// START [8:8]
/// Start generation
START: u1 = 0,
/// STOP [9:9]
/// Stop generation
STOP: u1 = 0,
/// ACK [10:10]
/// Acknowledge enable
ACK: u1 = 0,
/// POS [11:11]
/// Acknowledge/PEC Position (for data
POS: u1 = 0,
/// PEC [12:12]
/// Packet error checking
PEC: u1 = 0,
/// ALERT [13:13]
/// SMBus alert
ALERT: u1 = 0,
/// unused [14:14]
_unused14: u1 = 0,
/// SWRST [15:15]
/// Software reset
SWRST: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// FREQ [0:5]
/// Peripheral clock frequency
FREQ: u6 = 0,
/// unused [6:7]
_unused6: u2 = 0,
/// ITERREN [8:8]
/// Error interrupt enable
ITERREN: u1 = 0,
/// ITEVTEN [9:9]
/// Event interrupt enable
ITEVTEN: u1 = 0,
/// ITBUFEN [10:10]
/// Buffer interrupt enable
ITBUFEN: u1 = 0,
/// DMAEN [11:11]
/// DMA requests enable
DMAEN: u1 = 0,
/// LAST [12:12]
/// DMA last transfer
LAST: u1 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// OAR1
const OAR1_val = packed struct {
/// ADD0 [0:0]
/// Interface address
ADD0: u1 = 0,
/// ADD7 [1:7]
/// Interface address
ADD7: u7 = 0,
/// ADD10 [8:9]
/// Interface address
ADD10: u2 = 0,
/// unused [10:14]
_unused10: u5 = 0,
/// ADDMODE [15:15]
/// Addressing mode (slave
ADDMODE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Own address register 1
pub const OAR1 = MMIO(OAR1_val).init(base_address + 0x8);

/// OAR2
const OAR2_val = packed struct {
/// ENDUAL [0:0]
/// Dual addressing mode
ENDUAL: u1 = 0,
/// ADD2 [1:7]
/// Interface address
ADD2: u7 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Own address register 2
pub const OAR2 = MMIO(OAR2_val).init(base_address + 0xc);

/// DR
const DR_val = packed struct {
/// DR [0:7]
/// 8-bit data register
DR: u8 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Data register
pub const DR = MMIO(DR_val).init(base_address + 0x10);

/// SR1
const SR1_val = packed struct {
/// SB [0:0]
/// Start bit (Master mode)
SB: u1 = 0,
/// ADDR [1:1]
/// Address sent (master mode)/matched
ADDR: u1 = 0,
/// BTF [2:2]
/// Byte transfer finished
BTF: u1 = 0,
/// ADD10 [3:3]
/// 10-bit header sent (Master
ADD10: u1 = 0,
/// STOPF [4:4]
/// Stop detection (slave
STOPF: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// RxNE [6:6]
/// Data register not empty
RxNE: u1 = 0,
/// TxE [7:7]
/// Data register empty
TxE: u1 = 0,
/// BERR [8:8]
/// Bus error
BERR: u1 = 0,
/// ARLO [9:9]
/// Arbitration lost (master
ARLO: u1 = 0,
/// AF [10:10]
/// Acknowledge failure
AF: u1 = 0,
/// OVR [11:11]
/// Overrun/Underrun
OVR: u1 = 0,
/// PECERR [12:12]
/// PEC Error in reception
PECERR: u1 = 0,
/// unused [13:13]
_unused13: u1 = 0,
/// TIMEOUT [14:14]
/// Timeout or Tlow error
TIMEOUT: u1 = 0,
/// SMBALERT [15:15]
/// SMBus alert
SMBALERT: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Status register 1
pub const SR1 = MMIO(SR1_val).init(base_address + 0x14);

/// SR2
const SR2_val = packed struct {
/// MSL [0:0]
/// Master/slave
MSL: u1 = 0,
/// BUSY [1:1]
/// Bus busy
BUSY: u1 = 0,
/// TRA [2:2]
/// Transmitter/receiver
TRA: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// GENCALL [4:4]
/// General call address (Slave
GENCALL: u1 = 0,
/// SMBDEFAULT [5:5]
/// SMBus device default address (Slave
SMBDEFAULT: u1 = 0,
/// SMBHOST [6:6]
/// SMBus host header (Slave
SMBHOST: u1 = 0,
/// DUALF [7:7]
/// Dual flag (Slave mode)
DUALF: u1 = 0,
/// PEC [8:15]
/// acket error checking
PEC: u8 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Status register 2
pub const SR2 = MMIO(SR2_val).init(base_address + 0x18);

/// CCR
const CCR_val = packed struct {
/// CCR [0:11]
/// Clock control register in Fast/Standard
CCR: u12 = 0,
/// unused [12:13]
_unused12: u2 = 0,
/// DUTY [14:14]
/// Fast mode duty cycle
DUTY: u1 = 0,
/// F_S [15:15]
/// I2C master mode selection
F_S: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Clock control register
pub const CCR = MMIO(CCR_val).init(base_address + 0x1c);

/// TRISE
const TRISE_val = packed struct {
/// TRISE [0:5]
/// Maximum rise time in Fast/Standard mode
TRISE: u6 = 2,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// TRISE register
pub const TRISE = MMIO(TRISE_val).init(base_address + 0x20);

/// FLTR
const FLTR_val = packed struct {
/// DNF [0:3]
/// Digital noise filter
DNF: u4 = 0,
/// ANOFF [4:4]
/// Analog noise filter OFF
ANOFF: u1 = 0,
/// unused [5:31]
_unused5: u3 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// I2C FLTR register
pub const FLTR = MMIO(FLTR_val).init(base_address + 0x24);
};

/// Inter-integrated circuit
pub const I2C2 = struct {

const base_address = 0x40005800;
/// CR1
const CR1_val = packed struct {
/// PE [0:0]
/// Peripheral enable
PE: u1 = 0,
/// SMBUS [1:1]
/// SMBus mode
SMBUS: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// SMBTYPE [3:3]
/// SMBus type
SMBTYPE: u1 = 0,
/// ENARP [4:4]
/// ARP enable
ENARP: u1 = 0,
/// ENPEC [5:5]
/// PEC enable
ENPEC: u1 = 0,
/// ENGC [6:6]
/// General call enable
ENGC: u1 = 0,
/// NOSTRETCH [7:7]
/// Clock stretching disable (Slave
NOSTRETCH: u1 = 0,
/// START [8:8]
/// Start generation
START: u1 = 0,
/// STOP [9:9]
/// Stop generation
STOP: u1 = 0,
/// ACK [10:10]
/// Acknowledge enable
ACK: u1 = 0,
/// POS [11:11]
/// Acknowledge/PEC Position (for data
POS: u1 = 0,
/// PEC [12:12]
/// Packet error checking
PEC: u1 = 0,
/// ALERT [13:13]
/// SMBus alert
ALERT: u1 = 0,
/// unused [14:14]
_unused14: u1 = 0,
/// SWRST [15:15]
/// Software reset
SWRST: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// FREQ [0:5]
/// Peripheral clock frequency
FREQ: u6 = 0,
/// unused [6:7]
_unused6: u2 = 0,
/// ITERREN [8:8]
/// Error interrupt enable
ITERREN: u1 = 0,
/// ITEVTEN [9:9]
/// Event interrupt enable
ITEVTEN: u1 = 0,
/// ITBUFEN [10:10]
/// Buffer interrupt enable
ITBUFEN: u1 = 0,
/// DMAEN [11:11]
/// DMA requests enable
DMAEN: u1 = 0,
/// LAST [12:12]
/// DMA last transfer
LAST: u1 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// OAR1
const OAR1_val = packed struct {
/// ADD0 [0:0]
/// Interface address
ADD0: u1 = 0,
/// ADD7 [1:7]
/// Interface address
ADD7: u7 = 0,
/// ADD10 [8:9]
/// Interface address
ADD10: u2 = 0,
/// unused [10:14]
_unused10: u5 = 0,
/// ADDMODE [15:15]
/// Addressing mode (slave
ADDMODE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Own address register 1
pub const OAR1 = MMIO(OAR1_val).init(base_address + 0x8);

/// OAR2
const OAR2_val = packed struct {
/// ENDUAL [0:0]
/// Dual addressing mode
ENDUAL: u1 = 0,
/// ADD2 [1:7]
/// Interface address
ADD2: u7 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Own address register 2
pub const OAR2 = MMIO(OAR2_val).init(base_address + 0xc);

/// DR
const DR_val = packed struct {
/// DR [0:7]
/// 8-bit data register
DR: u8 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Data register
pub const DR = MMIO(DR_val).init(base_address + 0x10);

/// SR1
const SR1_val = packed struct {
/// SB [0:0]
/// Start bit (Master mode)
SB: u1 = 0,
/// ADDR [1:1]
/// Address sent (master mode)/matched
ADDR: u1 = 0,
/// BTF [2:2]
/// Byte transfer finished
BTF: u1 = 0,
/// ADD10 [3:3]
/// 10-bit header sent (Master
ADD10: u1 = 0,
/// STOPF [4:4]
/// Stop detection (slave
STOPF: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// RxNE [6:6]
/// Data register not empty
RxNE: u1 = 0,
/// TxE [7:7]
/// Data register empty
TxE: u1 = 0,
/// BERR [8:8]
/// Bus error
BERR: u1 = 0,
/// ARLO [9:9]
/// Arbitration lost (master
ARLO: u1 = 0,
/// AF [10:10]
/// Acknowledge failure
AF: u1 = 0,
/// OVR [11:11]
/// Overrun/Underrun
OVR: u1 = 0,
/// PECERR [12:12]
/// PEC Error in reception
PECERR: u1 = 0,
/// unused [13:13]
_unused13: u1 = 0,
/// TIMEOUT [14:14]
/// Timeout or Tlow error
TIMEOUT: u1 = 0,
/// SMBALERT [15:15]
/// SMBus alert
SMBALERT: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Status register 1
pub const SR1 = MMIO(SR1_val).init(base_address + 0x14);

/// SR2
const SR2_val = packed struct {
/// MSL [0:0]
/// Master/slave
MSL: u1 = 0,
/// BUSY [1:1]
/// Bus busy
BUSY: u1 = 0,
/// TRA [2:2]
/// Transmitter/receiver
TRA: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// GENCALL [4:4]
/// General call address (Slave
GENCALL: u1 = 0,
/// SMBDEFAULT [5:5]
/// SMBus device default address (Slave
SMBDEFAULT: u1 = 0,
/// SMBHOST [6:6]
/// SMBus host header (Slave
SMBHOST: u1 = 0,
/// DUALF [7:7]
/// Dual flag (Slave mode)
DUALF: u1 = 0,
/// PEC [8:15]
/// acket error checking
PEC: u8 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Status register 2
pub const SR2 = MMIO(SR2_val).init(base_address + 0x18);

/// CCR
const CCR_val = packed struct {
/// CCR [0:11]
/// Clock control register in Fast/Standard
CCR: u12 = 0,
/// unused [12:13]
_unused12: u2 = 0,
/// DUTY [14:14]
/// Fast mode duty cycle
DUTY: u1 = 0,
/// F_S [15:15]
/// I2C master mode selection
F_S: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Clock control register
pub const CCR = MMIO(CCR_val).init(base_address + 0x1c);

/// TRISE
const TRISE_val = packed struct {
/// TRISE [0:5]
/// Maximum rise time in Fast/Standard mode
TRISE: u6 = 2,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// TRISE register
pub const TRISE = MMIO(TRISE_val).init(base_address + 0x20);

/// FLTR
const FLTR_val = packed struct {
/// DNF [0:3]
/// Digital noise filter
DNF: u4 = 0,
/// ANOFF [4:4]
/// Analog noise filter OFF
ANOFF: u1 = 0,
/// unused [5:31]
_unused5: u3 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// I2C FLTR register
pub const FLTR = MMIO(FLTR_val).init(base_address + 0x24);
};

/// Inter-integrated circuit
pub const I2C1 = struct {

const base_address = 0x40005400;
/// CR1
const CR1_val = packed struct {
/// PE [0:0]
/// Peripheral enable
PE: u1 = 0,
/// SMBUS [1:1]
/// SMBus mode
SMBUS: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// SMBTYPE [3:3]
/// SMBus type
SMBTYPE: u1 = 0,
/// ENARP [4:4]
/// ARP enable
ENARP: u1 = 0,
/// ENPEC [5:5]
/// PEC enable
ENPEC: u1 = 0,
/// ENGC [6:6]
/// General call enable
ENGC: u1 = 0,
/// NOSTRETCH [7:7]
/// Clock stretching disable (Slave
NOSTRETCH: u1 = 0,
/// START [8:8]
/// Start generation
START: u1 = 0,
/// STOP [9:9]
/// Stop generation
STOP: u1 = 0,
/// ACK [10:10]
/// Acknowledge enable
ACK: u1 = 0,
/// POS [11:11]
/// Acknowledge/PEC Position (for data
POS: u1 = 0,
/// PEC [12:12]
/// Packet error checking
PEC: u1 = 0,
/// ALERT [13:13]
/// SMBus alert
ALERT: u1 = 0,
/// unused [14:14]
_unused14: u1 = 0,
/// SWRST [15:15]
/// Software reset
SWRST: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// FREQ [0:5]
/// Peripheral clock frequency
FREQ: u6 = 0,
/// unused [6:7]
_unused6: u2 = 0,
/// ITERREN [8:8]
/// Error interrupt enable
ITERREN: u1 = 0,
/// ITEVTEN [9:9]
/// Event interrupt enable
ITEVTEN: u1 = 0,
/// ITBUFEN [10:10]
/// Buffer interrupt enable
ITBUFEN: u1 = 0,
/// DMAEN [11:11]
/// DMA requests enable
DMAEN: u1 = 0,
/// LAST [12:12]
/// DMA last transfer
LAST: u1 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// OAR1
const OAR1_val = packed struct {
/// ADD0 [0:0]
/// Interface address
ADD0: u1 = 0,
/// ADD7 [1:7]
/// Interface address
ADD7: u7 = 0,
/// ADD10 [8:9]
/// Interface address
ADD10: u2 = 0,
/// unused [10:14]
_unused10: u5 = 0,
/// ADDMODE [15:15]
/// Addressing mode (slave
ADDMODE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Own address register 1
pub const OAR1 = MMIO(OAR1_val).init(base_address + 0x8);

/// OAR2
const OAR2_val = packed struct {
/// ENDUAL [0:0]
/// Dual addressing mode
ENDUAL: u1 = 0,
/// ADD2 [1:7]
/// Interface address
ADD2: u7 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Own address register 2
pub const OAR2 = MMIO(OAR2_val).init(base_address + 0xc);

/// DR
const DR_val = packed struct {
/// DR [0:7]
/// 8-bit data register
DR: u8 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Data register
pub const DR = MMIO(DR_val).init(base_address + 0x10);

/// SR1
const SR1_val = packed struct {
/// SB [0:0]
/// Start bit (Master mode)
SB: u1 = 0,
/// ADDR [1:1]
/// Address sent (master mode)/matched
ADDR: u1 = 0,
/// BTF [2:2]
/// Byte transfer finished
BTF: u1 = 0,
/// ADD10 [3:3]
/// 10-bit header sent (Master
ADD10: u1 = 0,
/// STOPF [4:4]
/// Stop detection (slave
STOPF: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// RxNE [6:6]
/// Data register not empty
RxNE: u1 = 0,
/// TxE [7:7]
/// Data register empty
TxE: u1 = 0,
/// BERR [8:8]
/// Bus error
BERR: u1 = 0,
/// ARLO [9:9]
/// Arbitration lost (master
ARLO: u1 = 0,
/// AF [10:10]
/// Acknowledge failure
AF: u1 = 0,
/// OVR [11:11]
/// Overrun/Underrun
OVR: u1 = 0,
/// PECERR [12:12]
/// PEC Error in reception
PECERR: u1 = 0,
/// unused [13:13]
_unused13: u1 = 0,
/// TIMEOUT [14:14]
/// Timeout or Tlow error
TIMEOUT: u1 = 0,
/// SMBALERT [15:15]
/// SMBus alert
SMBALERT: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Status register 1
pub const SR1 = MMIO(SR1_val).init(base_address + 0x14);

/// SR2
const SR2_val = packed struct {
/// MSL [0:0]
/// Master/slave
MSL: u1 = 0,
/// BUSY [1:1]
/// Bus busy
BUSY: u1 = 0,
/// TRA [2:2]
/// Transmitter/receiver
TRA: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// GENCALL [4:4]
/// General call address (Slave
GENCALL: u1 = 0,
/// SMBDEFAULT [5:5]
/// SMBus device default address (Slave
SMBDEFAULT: u1 = 0,
/// SMBHOST [6:6]
/// SMBus host header (Slave
SMBHOST: u1 = 0,
/// DUALF [7:7]
/// Dual flag (Slave mode)
DUALF: u1 = 0,
/// PEC [8:15]
/// acket error checking
PEC: u8 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Status register 2
pub const SR2 = MMIO(SR2_val).init(base_address + 0x18);

/// CCR
const CCR_val = packed struct {
/// CCR [0:11]
/// Clock control register in Fast/Standard
CCR: u12 = 0,
/// unused [12:13]
_unused12: u2 = 0,
/// DUTY [14:14]
/// Fast mode duty cycle
DUTY: u1 = 0,
/// F_S [15:15]
/// I2C master mode selection
F_S: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Clock control register
pub const CCR = MMIO(CCR_val).init(base_address + 0x1c);

/// TRISE
const TRISE_val = packed struct {
/// TRISE [0:5]
/// Maximum rise time in Fast/Standard mode
TRISE: u6 = 2,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// TRISE register
pub const TRISE = MMIO(TRISE_val).init(base_address + 0x20);

/// FLTR
const FLTR_val = packed struct {
/// DNF [0:3]
/// Digital noise filter
DNF: u4 = 0,
/// ANOFF [4:4]
/// Analog noise filter OFF
ANOFF: u1 = 0,
/// unused [5:31]
_unused5: u3 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// I2C FLTR register
pub const FLTR = MMIO(FLTR_val).init(base_address + 0x24);
};

/// Independent watchdog
pub const IWDG = struct {

const base_address = 0x40003000;
/// KR
const KR_val = packed struct {
/// KEY [0:15]
/// Key value (write only, read
KEY: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Key register
pub const KR = MMIO(KR_val).init(base_address + 0x0);

/// PR
const PR_val = packed struct {
/// PR [0:2]
/// Prescaler divider
PR: u3 = 0,
/// unused [3:31]
_unused3: u5 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Prescaler register
pub const PR = MMIO(PR_val).init(base_address + 0x4);

/// RLR
const RLR_val = packed struct {
/// RL [0:11]
/// Watchdog counter reload
RL: u12 = 4095,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Reload register
pub const RLR = MMIO(RLR_val).init(base_address + 0x8);

/// SR
const SR_val = packed struct {
/// PVU [0:0]
/// Watchdog prescaler value
PVU: u1 = 0,
/// RVU [1:1]
/// Watchdog counter reload value
RVU: u1 = 0,
/// unused [2:31]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Status register
pub const SR = MMIO(SR_val).init(base_address + 0xc);
};

/// Window watchdog
pub const WWDG = struct {

const base_address = 0x40002c00;
/// CR
const CR_val = packed struct {
/// T [0:6]
/// 7-bit counter (MSB to LSB)
T: u7 = 127,
/// WDGA [7:7]
/// Activation bit
WDGA: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register
pub const CR = MMIO(CR_val).init(base_address + 0x0);

/// CFR
const CFR_val = packed struct {
/// W [0:6]
/// 7-bit window value
W: u7 = 127,
/// WDGTB0 [7:7]
/// Timer base
WDGTB0: u1 = 0,
/// WDGTB1 [8:8]
/// Timer base
WDGTB1: u1 = 0,
/// EWI [9:9]
/// Early wakeup interrupt
EWI: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Configuration register
pub const CFR = MMIO(CFR_val).init(base_address + 0x4);

/// SR
const SR_val = packed struct {
/// EWIF [0:0]
/// Early wakeup interrupt
EWIF: u1 = 0,
/// unused [1:31]
_unused1: u7 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Status register
pub const SR = MMIO(SR_val).init(base_address + 0x8);
};

/// Real-time clock
pub const RTC = struct {

const base_address = 0x40002800;
/// TR
const TR_val = packed struct {
/// SU [0:3]
/// Second units in BCD format
SU: u4 = 0,
/// ST [4:6]
/// Second tens in BCD format
ST: u3 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// MNU [8:11]
/// Minute units in BCD format
MNU: u4 = 0,
/// MNT [12:14]
/// Minute tens in BCD format
MNT: u3 = 0,
/// unused [15:15]
_unused15: u1 = 0,
/// HU [16:19]
/// Hour units in BCD format
HU: u4 = 0,
/// HT [20:21]
/// Hour tens in BCD format
HT: u2 = 0,
/// PM [22:22]
/// AM/PM notation
PM: u1 = 0,
/// unused [23:31]
_unused23: u1 = 0,
_unused24: u8 = 0,
};
/// time register
pub const TR = MMIO(TR_val).init(base_address + 0x0);

/// DR
const DR_val = packed struct {
/// DU [0:3]
/// Date units in BCD format
DU: u4 = 1,
/// DT [4:5]
/// Date tens in BCD format
DT: u2 = 0,
/// unused [6:7]
_unused6: u2 = 0,
/// MU [8:11]
/// Month units in BCD format
MU: u4 = 1,
/// MT [12:12]
/// Month tens in BCD format
MT: u1 = 0,
/// WDU [13:15]
/// Week day units
WDU: u3 = 1,
/// YU [16:19]
/// Year units in BCD format
YU: u4 = 0,
/// YT [20:23]
/// Year tens in BCD format
YT: u4 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// date register
pub const DR = MMIO(DR_val).init(base_address + 0x4);

/// CR
const CR_val = packed struct {
/// WCKSEL [0:2]
/// Wakeup clock selection
WCKSEL: u3 = 0,
/// TSEDGE [3:3]
/// Time-stamp event active
TSEDGE: u1 = 0,
/// REFCKON [4:4]
/// Reference clock detection enable (50 or
REFCKON: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// FMT [6:6]
/// Hour format
FMT: u1 = 0,
/// DCE [7:7]
/// Coarse digital calibration
DCE: u1 = 0,
/// ALRAE [8:8]
/// Alarm A enable
ALRAE: u1 = 0,
/// ALRBE [9:9]
/// Alarm B enable
ALRBE: u1 = 0,
/// WUTE [10:10]
/// Wakeup timer enable
WUTE: u1 = 0,
/// TSE [11:11]
/// Time stamp enable
TSE: u1 = 0,
/// ALRAIE [12:12]
/// Alarm A interrupt enable
ALRAIE: u1 = 0,
/// ALRBIE [13:13]
/// Alarm B interrupt enable
ALRBIE: u1 = 0,
/// WUTIE [14:14]
/// Wakeup timer interrupt
WUTIE: u1 = 0,
/// TSIE [15:15]
/// Time-stamp interrupt
TSIE: u1 = 0,
/// ADD1H [16:16]
/// Add 1 hour (summer time
ADD1H: u1 = 0,
/// SUB1H [17:17]
/// Subtract 1 hour (winter time
SUB1H: u1 = 0,
/// BKP [18:18]
/// Backup
BKP: u1 = 0,
/// unused [19:19]
_unused19: u1 = 0,
/// POL [20:20]
/// Output polarity
POL: u1 = 0,
/// OSEL [21:22]
/// Output selection
OSEL: u2 = 0,
/// COE [23:23]
/// Calibration output enable
COE: u1 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// control register
pub const CR = MMIO(CR_val).init(base_address + 0x8);

/// ISR
const ISR_val = packed struct {
/// ALRAWF [0:0]
/// Alarm A write flag
ALRAWF: u1 = 1,
/// ALRBWF [1:1]
/// Alarm B write flag
ALRBWF: u1 = 1,
/// WUTWF [2:2]
/// Wakeup timer write flag
WUTWF: u1 = 1,
/// SHPF [3:3]
/// Shift operation pending
SHPF: u1 = 0,
/// INITS [4:4]
/// Initialization status flag
INITS: u1 = 0,
/// RSF [5:5]
/// Registers synchronization
RSF: u1 = 0,
/// INITF [6:6]
/// Initialization flag
INITF: u1 = 0,
/// INIT [7:7]
/// Initialization mode
INIT: u1 = 0,
/// ALRAF [8:8]
/// Alarm A flag
ALRAF: u1 = 0,
/// ALRBF [9:9]
/// Alarm B flag
ALRBF: u1 = 0,
/// WUTF [10:10]
/// Wakeup timer flag
WUTF: u1 = 0,
/// TSF [11:11]
/// Time-stamp flag
TSF: u1 = 0,
/// TSOVF [12:12]
/// Time-stamp overflow flag
TSOVF: u1 = 0,
/// TAMP1F [13:13]
/// Tamper detection flag
TAMP1F: u1 = 0,
/// TAMP2F [14:14]
/// TAMPER2 detection flag
TAMP2F: u1 = 0,
/// unused [15:15]
_unused15: u1 = 0,
/// RECALPF [16:16]
/// Recalibration pending Flag
RECALPF: u1 = 0,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// initialization and status
pub const ISR = MMIO(ISR_val).init(base_address + 0xc);

/// PRER
const PRER_val = packed struct {
/// PREDIV_S [0:14]
/// Synchronous prescaler
PREDIV_S: u15 = 255,
/// unused [15:15]
_unused15: u1 = 0,
/// PREDIV_A [16:22]
/// Asynchronous prescaler
PREDIV_A: u7 = 127,
/// unused [23:31]
_unused23: u1 = 0,
_unused24: u8 = 0,
};
/// prescaler register
pub const PRER = MMIO(PRER_val).init(base_address + 0x10);

/// WUTR
const WUTR_val = packed struct {
/// WUT [0:15]
/// Wakeup auto-reload value
WUT: u16 = 65535,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// wakeup timer register
pub const WUTR = MMIO(WUTR_val).init(base_address + 0x14);

/// CALIBR
const CALIBR_val = packed struct {
/// DC [0:4]
/// Digital calibration
DC: u5 = 0,
/// unused [5:6]
_unused5: u2 = 0,
/// DCS [7:7]
/// Digital calibration sign
DCS: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// calibration register
pub const CALIBR = MMIO(CALIBR_val).init(base_address + 0x18);

/// ALRMAR
const ALRMAR_val = packed struct {
/// SU [0:3]
/// Second units in BCD format
SU: u4 = 0,
/// ST [4:6]
/// Second tens in BCD format
ST: u3 = 0,
/// MSK1 [7:7]
/// Alarm A seconds mask
MSK1: u1 = 0,
/// MNU [8:11]
/// Minute units in BCD format
MNU: u4 = 0,
/// MNT [12:14]
/// Minute tens in BCD format
MNT: u3 = 0,
/// MSK2 [15:15]
/// Alarm A minutes mask
MSK2: u1 = 0,
/// HU [16:19]
/// Hour units in BCD format
HU: u4 = 0,
/// HT [20:21]
/// Hour tens in BCD format
HT: u2 = 0,
/// PM [22:22]
/// AM/PM notation
PM: u1 = 0,
/// MSK3 [23:23]
/// Alarm A hours mask
MSK3: u1 = 0,
/// DU [24:27]
/// Date units or day in BCD
DU: u4 = 0,
/// DT [28:29]
/// Date tens in BCD format
DT: u2 = 0,
/// WDSEL [30:30]
/// Week day selection
WDSEL: u1 = 0,
/// MSK4 [31:31]
/// Alarm A date mask
MSK4: u1 = 0,
};
/// alarm A register
pub const ALRMAR = MMIO(ALRMAR_val).init(base_address + 0x1c);

/// ALRMBR
const ALRMBR_val = packed struct {
/// SU [0:3]
/// Second units in BCD format
SU: u4 = 0,
/// ST [4:6]
/// Second tens in BCD format
ST: u3 = 0,
/// MSK1 [7:7]
/// Alarm B seconds mask
MSK1: u1 = 0,
/// MNU [8:11]
/// Minute units in BCD format
MNU: u4 = 0,
/// MNT [12:14]
/// Minute tens in BCD format
MNT: u3 = 0,
/// MSK2 [15:15]
/// Alarm B minutes mask
MSK2: u1 = 0,
/// HU [16:19]
/// Hour units in BCD format
HU: u4 = 0,
/// HT [20:21]
/// Hour tens in BCD format
HT: u2 = 0,
/// PM [22:22]
/// AM/PM notation
PM: u1 = 0,
/// MSK3 [23:23]
/// Alarm B hours mask
MSK3: u1 = 0,
/// DU [24:27]
/// Date units or day in BCD
DU: u4 = 0,
/// DT [28:29]
/// Date tens in BCD format
DT: u2 = 0,
/// WDSEL [30:30]
/// Week day selection
WDSEL: u1 = 0,
/// MSK4 [31:31]
/// Alarm B date mask
MSK4: u1 = 0,
};
/// alarm B register
pub const ALRMBR = MMIO(ALRMBR_val).init(base_address + 0x20);

/// WPR
const WPR_val = packed struct {
/// KEY [0:7]
/// Write protection key
KEY: u8 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// write protection register
pub const WPR = MMIO(WPR_val).init(base_address + 0x24);

/// SSR
const SSR_val = packed struct {
/// SS [0:15]
/// Sub second value
SS: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// sub second register
pub const SSR = MMIO(SSR_val).init(base_address + 0x28);

/// SHIFTR
const SHIFTR_val = packed struct {
/// SUBFS [0:14]
/// Subtract a fraction of a
SUBFS: u15 = 0,
/// unused [15:30]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u7 = 0,
/// ADD1S [31:31]
/// Add one second
ADD1S: u1 = 0,
};
/// shift control register
pub const SHIFTR = MMIO(SHIFTR_val).init(base_address + 0x2c);

/// TSTR
const TSTR_val = packed struct {
/// TAMP1E [0:0]
/// Tamper 1 detection enable
TAMP1E: u1 = 0,
/// TAMP1TRG [1:1]
/// Active level for tamper 1
TAMP1TRG: u1 = 0,
/// TAMPIE [2:2]
/// Tamper interrupt enable
TAMPIE: u1 = 0,
/// unused [3:15]
_unused3: u5 = 0,
_unused8: u8 = 0,
/// TAMP1INSEL [16:16]
/// TAMPER1 mapping
TAMP1INSEL: u1 = 0,
/// TSINSEL [17:17]
/// TIMESTAMP mapping
TSINSEL: u1 = 0,
/// ALARMOUTTYPE [18:18]
/// AFO_ALARM output type
ALARMOUTTYPE: u1 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// time stamp time register
pub const TSTR = MMIO(TSTR_val).init(base_address + 0x30);

/// TSDR
const TSDR_val = packed struct {
/// DU [0:3]
/// Date units in BCD format
DU: u4 = 0,
/// DT [4:5]
/// Date tens in BCD format
DT: u2 = 0,
/// unused [6:7]
_unused6: u2 = 0,
/// MU [8:11]
/// Month units in BCD format
MU: u4 = 0,
/// MT [12:12]
/// Month tens in BCD format
MT: u1 = 0,
/// WDU [13:15]
/// Week day units
WDU: u3 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// time stamp date register
pub const TSDR = MMIO(TSDR_val).init(base_address + 0x34);

/// TSSSR
const TSSSR_val = packed struct {
/// SS [0:15]
/// Sub second value
SS: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// timestamp sub second register
pub const TSSSR = MMIO(TSSSR_val).init(base_address + 0x38);

/// CALR
const CALR_val = packed struct {
/// CALM [0:8]
/// Calibration minus
CALM: u9 = 0,
/// unused [9:12]
_unused9: u4 = 0,
/// CALW16 [13:13]
/// Use a 16-second calibration cycle
CALW16: u1 = 0,
/// CALW8 [14:14]
/// Use an 8-second calibration cycle
CALW8: u1 = 0,
/// CALP [15:15]
/// Increase frequency of RTC by 488.5
CALP: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// calibration register
pub const CALR = MMIO(CALR_val).init(base_address + 0x3c);

/// TAFCR
const TAFCR_val = packed struct {
/// TAMP1E [0:0]
/// Tamper 1 detection enable
TAMP1E: u1 = 0,
/// TAMP1TRG [1:1]
/// Active level for tamper 1
TAMP1TRG: u1 = 0,
/// TAMPIE [2:2]
/// Tamper interrupt enable
TAMPIE: u1 = 0,
/// TAMP2E [3:3]
/// Tamper 2 detection enable
TAMP2E: u1 = 0,
/// TAMP2TRG [4:4]
/// Active level for tamper 2
TAMP2TRG: u1 = 0,
/// unused [5:6]
_unused5: u2 = 0,
/// TAMPTS [7:7]
/// Activate timestamp on tamper detection
TAMPTS: u1 = 0,
/// TAMPFREQ [8:10]
/// Tamper sampling frequency
TAMPFREQ: u3 = 0,
/// TAMPFLT [11:12]
/// Tamper filter count
TAMPFLT: u2 = 0,
/// TAMPPRCH [13:14]
/// Tamper precharge duration
TAMPPRCH: u2 = 0,
/// TAMPPUDIS [15:15]
/// TAMPER pull-up disable
TAMPPUDIS: u1 = 0,
/// TAMP1INSEL [16:16]
/// TAMPER1 mapping
TAMP1INSEL: u1 = 0,
/// TSINSEL [17:17]
/// TIMESTAMP mapping
TSINSEL: u1 = 0,
/// ALARMOUTTYPE [18:18]
/// AFO_ALARM output type
ALARMOUTTYPE: u1 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// tamper and alternate function configuration
pub const TAFCR = MMIO(TAFCR_val).init(base_address + 0x40);

/// ALRMASSR
const ALRMASSR_val = packed struct {
/// SS [0:14]
/// Sub seconds value
SS: u15 = 0,
/// unused [15:23]
_unused15: u1 = 0,
_unused16: u8 = 0,
/// MASKSS [24:27]
/// Mask the most-significant bits starting
MASKSS: u4 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// alarm A sub second register
pub const ALRMASSR = MMIO(ALRMASSR_val).init(base_address + 0x44);

/// ALRMBSSR
const ALRMBSSR_val = packed struct {
/// SS [0:14]
/// Sub seconds value
SS: u15 = 0,
/// unused [15:23]
_unused15: u1 = 0,
_unused16: u8 = 0,
/// MASKSS [24:27]
/// Mask the most-significant bits starting
MASKSS: u4 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// alarm B sub second register
pub const ALRMBSSR = MMIO(ALRMBSSR_val).init(base_address + 0x48);

/// BKP0R
const BKP0R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP0R = MMIO(BKP0R_val).init(base_address + 0x50);

/// BKP1R
const BKP1R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP1R = MMIO(BKP1R_val).init(base_address + 0x54);

/// BKP2R
const BKP2R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP2R = MMIO(BKP2R_val).init(base_address + 0x58);

/// BKP3R
const BKP3R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP3R = MMIO(BKP3R_val).init(base_address + 0x5c);

/// BKP4R
const BKP4R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP4R = MMIO(BKP4R_val).init(base_address + 0x60);

/// BKP5R
const BKP5R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP5R = MMIO(BKP5R_val).init(base_address + 0x64);

/// BKP6R
const BKP6R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP6R = MMIO(BKP6R_val).init(base_address + 0x68);

/// BKP7R
const BKP7R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP7R = MMIO(BKP7R_val).init(base_address + 0x6c);

/// BKP8R
const BKP8R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP8R = MMIO(BKP8R_val).init(base_address + 0x70);

/// BKP9R
const BKP9R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP9R = MMIO(BKP9R_val).init(base_address + 0x74);

/// BKP10R
const BKP10R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP10R = MMIO(BKP10R_val).init(base_address + 0x78);

/// BKP11R
const BKP11R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP11R = MMIO(BKP11R_val).init(base_address + 0x7c);

/// BKP12R
const BKP12R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP12R = MMIO(BKP12R_val).init(base_address + 0x80);

/// BKP13R
const BKP13R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP13R = MMIO(BKP13R_val).init(base_address + 0x84);

/// BKP14R
const BKP14R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP14R = MMIO(BKP14R_val).init(base_address + 0x88);

/// BKP15R
const BKP15R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP15R = MMIO(BKP15R_val).init(base_address + 0x8c);

/// BKP16R
const BKP16R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP16R = MMIO(BKP16R_val).init(base_address + 0x90);

/// BKP17R
const BKP17R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP17R = MMIO(BKP17R_val).init(base_address + 0x94);

/// BKP18R
const BKP18R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP18R = MMIO(BKP18R_val).init(base_address + 0x98);

/// BKP19R
const BKP19R_val = packed struct {
/// BKP [0:31]
/// BKP
BKP: u32 = 0,
};
/// backup register
pub const BKP19R = MMIO(BKP19R_val).init(base_address + 0x9c);
};

/// Universal synchronous asynchronous receiver
pub const UART4 = struct {

const base_address = 0x40004c00;
/// SR
const SR_val = packed struct {
/// PE [0:0]
/// Parity error
PE: u1 = 0,
/// FE [1:1]
/// Framing error
FE: u1 = 0,
/// NF [2:2]
/// Noise detected flag
NF: u1 = 0,
/// ORE [3:3]
/// Overrun error
ORE: u1 = 0,
/// IDLE [4:4]
/// IDLE line detected
IDLE: u1 = 0,
/// RXNE [5:5]
/// Read data register not
RXNE: u1 = 0,
/// TC [6:6]
/// Transmission complete
TC: u1 = 0,
/// TXE [7:7]
/// Transmit data register
TXE: u1 = 0,
/// LBD [8:8]
/// LIN break detection flag
LBD: u1 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 192,
_unused24: u8 = 0,
};
/// Status register
pub const SR = MMIO(SR_val).init(base_address + 0x0);

/// DR
const DR_val = packed struct {
/// DR [0:8]
/// Data value
DR: u9 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Data register
pub const DR = MMIO(DR_val).init(base_address + 0x4);

/// BRR
const BRR_val = packed struct {
/// DIV_Fraction [0:3]
/// fraction of USARTDIV
DIV_Fraction: u4 = 0,
/// DIV_Mantissa [4:15]
/// mantissa of USARTDIV
DIV_Mantissa: u12 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Baud rate register
pub const BRR = MMIO(BRR_val).init(base_address + 0x8);

/// CR1
const CR1_val = packed struct {
/// SBK [0:0]
/// Send break
SBK: u1 = 0,
/// RWU [1:1]
/// Receiver wakeup
RWU: u1 = 0,
/// RE [2:2]
/// Receiver enable
RE: u1 = 0,
/// TE [3:3]
/// Transmitter enable
TE: u1 = 0,
/// IDLEIE [4:4]
/// IDLE interrupt enable
IDLEIE: u1 = 0,
/// RXNEIE [5:5]
/// RXNE interrupt enable
RXNEIE: u1 = 0,
/// TCIE [6:6]
/// Transmission complete interrupt
TCIE: u1 = 0,
/// TXEIE [7:7]
/// TXE interrupt enable
TXEIE: u1 = 0,
/// PEIE [8:8]
/// PE interrupt enable
PEIE: u1 = 0,
/// PS [9:9]
/// Parity selection
PS: u1 = 0,
/// PCE [10:10]
/// Parity control enable
PCE: u1 = 0,
/// WAKE [11:11]
/// Wakeup method
WAKE: u1 = 0,
/// M [12:12]
/// Word length
M: u1 = 0,
/// UE [13:13]
/// USART enable
UE: u1 = 0,
/// unused [14:14]
_unused14: u1 = 0,
/// OVER8 [15:15]
/// Oversampling mode
OVER8: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0xc);

/// CR2
const CR2_val = packed struct {
/// ADD [0:3]
/// Address of the USART node
ADD: u4 = 0,
/// unused [4:4]
_unused4: u1 = 0,
/// LBDL [5:5]
/// lin break detection length
LBDL: u1 = 0,
/// LBDIE [6:6]
/// LIN break detection interrupt
LBDIE: u1 = 0,
/// unused [7:11]
_unused7: u1 = 0,
_unused8: u4 = 0,
/// STOP [12:13]
/// STOP bits
STOP: u2 = 0,
/// LINEN [14:14]
/// LIN mode enable
LINEN: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x10);

/// CR3
const CR3_val = packed struct {
/// EIE [0:0]
/// Error interrupt enable
EIE: u1 = 0,
/// IREN [1:1]
/// IrDA mode enable
IREN: u1 = 0,
/// IRLP [2:2]
/// IrDA low-power
IRLP: u1 = 0,
/// HDSEL [3:3]
/// Half-duplex selection
HDSEL: u1 = 0,
/// unused [4:5]
_unused4: u2 = 0,
/// DMAR [6:6]
/// DMA enable receiver
DMAR: u1 = 0,
/// DMAT [7:7]
/// DMA enable transmitter
DMAT: u1 = 0,
/// unused [8:10]
_unused8: u3 = 0,
/// ONEBIT [11:11]
/// One sample bit method
ONEBIT: u1 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 3
pub const CR3 = MMIO(CR3_val).init(base_address + 0x14);
};

/// Universal synchronous asynchronous receiver
pub const UART5 = struct {

const base_address = 0x40005000;
/// SR
const SR_val = packed struct {
/// PE [0:0]
/// Parity error
PE: u1 = 0,
/// FE [1:1]
/// Framing error
FE: u1 = 0,
/// NF [2:2]
/// Noise detected flag
NF: u1 = 0,
/// ORE [3:3]
/// Overrun error
ORE: u1 = 0,
/// IDLE [4:4]
/// IDLE line detected
IDLE: u1 = 0,
/// RXNE [5:5]
/// Read data register not
RXNE: u1 = 0,
/// TC [6:6]
/// Transmission complete
TC: u1 = 0,
/// TXE [7:7]
/// Transmit data register
TXE: u1 = 0,
/// LBD [8:8]
/// LIN break detection flag
LBD: u1 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 192,
_unused24: u8 = 0,
};
/// Status register
pub const SR = MMIO(SR_val).init(base_address + 0x0);

/// DR
const DR_val = packed struct {
/// DR [0:8]
/// Data value
DR: u9 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Data register
pub const DR = MMIO(DR_val).init(base_address + 0x4);

/// BRR
const BRR_val = packed struct {
/// DIV_Fraction [0:3]
/// fraction of USARTDIV
DIV_Fraction: u4 = 0,
/// DIV_Mantissa [4:15]
/// mantissa of USARTDIV
DIV_Mantissa: u12 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Baud rate register
pub const BRR = MMIO(BRR_val).init(base_address + 0x8);

/// CR1
const CR1_val = packed struct {
/// SBK [0:0]
/// Send break
SBK: u1 = 0,
/// RWU [1:1]
/// Receiver wakeup
RWU: u1 = 0,
/// RE [2:2]
/// Receiver enable
RE: u1 = 0,
/// TE [3:3]
/// Transmitter enable
TE: u1 = 0,
/// IDLEIE [4:4]
/// IDLE interrupt enable
IDLEIE: u1 = 0,
/// RXNEIE [5:5]
/// RXNE interrupt enable
RXNEIE: u1 = 0,
/// TCIE [6:6]
/// Transmission complete interrupt
TCIE: u1 = 0,
/// TXEIE [7:7]
/// TXE interrupt enable
TXEIE: u1 = 0,
/// PEIE [8:8]
/// PE interrupt enable
PEIE: u1 = 0,
/// PS [9:9]
/// Parity selection
PS: u1 = 0,
/// PCE [10:10]
/// Parity control enable
PCE: u1 = 0,
/// WAKE [11:11]
/// Wakeup method
WAKE: u1 = 0,
/// M [12:12]
/// Word length
M: u1 = 0,
/// UE [13:13]
/// USART enable
UE: u1 = 0,
/// unused [14:14]
_unused14: u1 = 0,
/// OVER8 [15:15]
/// Oversampling mode
OVER8: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0xc);

/// CR2
const CR2_val = packed struct {
/// ADD [0:3]
/// Address of the USART node
ADD: u4 = 0,
/// unused [4:4]
_unused4: u1 = 0,
/// LBDL [5:5]
/// lin break detection length
LBDL: u1 = 0,
/// LBDIE [6:6]
/// LIN break detection interrupt
LBDIE: u1 = 0,
/// unused [7:11]
_unused7: u1 = 0,
_unused8: u4 = 0,
/// STOP [12:13]
/// STOP bits
STOP: u2 = 0,
/// LINEN [14:14]
/// LIN mode enable
LINEN: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x10);

/// CR3
const CR3_val = packed struct {
/// EIE [0:0]
/// Error interrupt enable
EIE: u1 = 0,
/// IREN [1:1]
/// IrDA mode enable
IREN: u1 = 0,
/// IRLP [2:2]
/// IrDA low-power
IRLP: u1 = 0,
/// HDSEL [3:3]
/// Half-duplex selection
HDSEL: u1 = 0,
/// unused [4:5]
_unused4: u2 = 0,
/// DMAR [6:6]
/// DMA enable receiver
DMAR: u1 = 0,
/// DMAT [7:7]
/// DMA enable transmitter
DMAT: u1 = 0,
/// unused [8:10]
_unused8: u3 = 0,
/// ONEBIT [11:11]
/// One sample bit method
ONEBIT: u1 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register 3
pub const CR3 = MMIO(CR3_val).init(base_address + 0x14);
};

/// Common ADC registers
pub const C_ADC = struct {

const base_address = 0x40012300;
/// CSR
const CSR_val = packed struct {
/// AWD1 [0:0]
/// Analog watchdog flag of ADC
AWD1: u1 = 0,
/// EOC1 [1:1]
/// End of conversion of ADC 1
EOC1: u1 = 0,
/// JEOC1 [2:2]
/// Injected channel end of conversion of
JEOC1: u1 = 0,
/// JSTRT1 [3:3]
/// Injected channel Start flag of ADC
JSTRT1: u1 = 0,
/// STRT1 [4:4]
/// Regular channel Start flag of ADC
STRT1: u1 = 0,
/// OVR1 [5:5]
/// Overrun flag of ADC 1
OVR1: u1 = 0,
/// unused [6:7]
_unused6: u2 = 0,
/// AWD2 [8:8]
/// Analog watchdog flag of ADC
AWD2: u1 = 0,
/// EOC2 [9:9]
/// End of conversion of ADC 2
EOC2: u1 = 0,
/// JEOC2 [10:10]
/// Injected channel end of conversion of
JEOC2: u1 = 0,
/// JSTRT2 [11:11]
/// Injected channel Start flag of ADC
JSTRT2: u1 = 0,
/// STRT2 [12:12]
/// Regular channel Start flag of ADC
STRT2: u1 = 0,
/// OVR2 [13:13]
/// Overrun flag of ADC 2
OVR2: u1 = 0,
/// unused [14:15]
_unused14: u2 = 0,
/// AWD3 [16:16]
/// Analog watchdog flag of ADC
AWD3: u1 = 0,
/// EOC3 [17:17]
/// End of conversion of ADC 3
EOC3: u1 = 0,
/// JEOC3 [18:18]
/// Injected channel end of conversion of
JEOC3: u1 = 0,
/// JSTRT3 [19:19]
/// Injected channel Start flag of ADC
JSTRT3: u1 = 0,
/// STRT3 [20:20]
/// Regular channel Start flag of ADC
STRT3: u1 = 0,
/// OVR3 [21:21]
/// Overrun flag of ADC3
OVR3: u1 = 0,
/// unused [22:31]
_unused22: u2 = 0,
_unused24: u8 = 0,
};
/// ADC Common status register
pub const CSR = MMIO(CSR_val).init(base_address + 0x0);

/// CCR
const CCR_val = packed struct {
/// MULT [0:4]
/// Multi ADC mode selection
MULT: u5 = 0,
/// unused [5:7]
_unused5: u3 = 0,
/// DELAY [8:11]
/// Delay between 2 sampling
DELAY: u4 = 0,
/// unused [12:12]
_unused12: u1 = 0,
/// DDS [13:13]
/// DMA disable selection for multi-ADC
DDS: u1 = 0,
/// DMA [14:15]
/// Direct memory access mode for multi ADC
DMA: u2 = 0,
/// ADCPRE [16:17]
/// ADC prescaler
ADCPRE: u2 = 0,
/// unused [18:21]
_unused18: u4 = 0,
/// VBATE [22:22]
/// VBAT enable
VBATE: u1 = 0,
/// TSVREFE [23:23]
/// Temperature sensor and VREFINT
TSVREFE: u1 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// ADC common control register
pub const CCR = MMIO(CCR_val).init(base_address + 0x4);

/// CDR
const CDR_val = packed struct {
/// DATA1 [0:15]
/// 1st data item of a pair of regular
DATA1: u16 = 0,
/// DATA2 [16:31]
/// 2nd data item of a pair of regular
DATA2: u16 = 0,
};
/// ADC common regular data register for dual
pub const CDR = MMIO(CDR_val).init(base_address + 0x8);
};

/// Advanced-timers
pub const TIM1 = struct {

const base_address = 0x40010000;
/// CR1
const CR1_val = packed struct {
/// CEN [0:0]
/// Counter enable
CEN: u1 = 0,
/// UDIS [1:1]
/// Update disable
UDIS: u1 = 0,
/// URS [2:2]
/// Update request source
URS: u1 = 0,
/// OPM [3:3]
/// One-pulse mode
OPM: u1 = 0,
/// DIR [4:4]
/// Direction
DIR: u1 = 0,
/// CMS [5:6]
/// Center-aligned mode
CMS: u2 = 0,
/// ARPE [7:7]
/// Auto-reload preload enable
ARPE: u1 = 0,
/// CKD [8:9]
/// Clock division
CKD: u2 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// CCPC [0:0]
/// Capture/compare preloaded
CCPC: u1 = 0,
/// unused [1:1]
_unused1: u1 = 0,
/// CCUS [2:2]
/// Capture/compare control update
CCUS: u1 = 0,
/// CCDS [3:3]
/// Capture/compare DMA
CCDS: u1 = 0,
/// MMS [4:6]
/// Master mode selection
MMS: u3 = 0,
/// TI1S [7:7]
/// TI1 selection
TI1S: u1 = 0,
/// OIS1 [8:8]
/// Output Idle state 1
OIS1: u1 = 0,
/// OIS1N [9:9]
/// Output Idle state 1
OIS1N: u1 = 0,
/// OIS2 [10:10]
/// Output Idle state 2
OIS2: u1 = 0,
/// OIS2N [11:11]
/// Output Idle state 2
OIS2N: u1 = 0,
/// OIS3 [12:12]
/// Output Idle state 3
OIS3: u1 = 0,
/// OIS3N [13:13]
/// Output Idle state 3
OIS3N: u1 = 0,
/// OIS4 [14:14]
/// Output Idle state 4
OIS4: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// SMCR
const SMCR_val = packed struct {
/// SMS [0:2]
/// Slave mode selection
SMS: u3 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// TS [4:6]
/// Trigger selection
TS: u3 = 0,
/// MSM [7:7]
/// Master/Slave mode
MSM: u1 = 0,
/// ETF [8:11]
/// External trigger filter
ETF: u4 = 0,
/// ETPS [12:13]
/// External trigger prescaler
ETPS: u2 = 0,
/// ECE [14:14]
/// External clock enable
ECE: u1 = 0,
/// ETP [15:15]
/// External trigger polarity
ETP: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// slave mode control register
pub const SMCR = MMIO(SMCR_val).init(base_address + 0x8);

/// DIER
const DIER_val = packed struct {
/// UIE [0:0]
/// Update interrupt enable
UIE: u1 = 0,
/// CC1IE [1:1]
/// Capture/Compare 1 interrupt
CC1IE: u1 = 0,
/// CC2IE [2:2]
/// Capture/Compare 2 interrupt
CC2IE: u1 = 0,
/// CC3IE [3:3]
/// Capture/Compare 3 interrupt
CC3IE: u1 = 0,
/// CC4IE [4:4]
/// Capture/Compare 4 interrupt
CC4IE: u1 = 0,
/// COMIE [5:5]
/// COM interrupt enable
COMIE: u1 = 0,
/// TIE [6:6]
/// Trigger interrupt enable
TIE: u1 = 0,
/// BIE [7:7]
/// Break interrupt enable
BIE: u1 = 0,
/// UDE [8:8]
/// Update DMA request enable
UDE: u1 = 0,
/// CC1DE [9:9]
/// Capture/Compare 1 DMA request
CC1DE: u1 = 0,
/// CC2DE [10:10]
/// Capture/Compare 2 DMA request
CC2DE: u1 = 0,
/// CC3DE [11:11]
/// Capture/Compare 3 DMA request
CC3DE: u1 = 0,
/// CC4DE [12:12]
/// Capture/Compare 4 DMA request
CC4DE: u1 = 0,
/// COMDE [13:13]
/// COM DMA request enable
COMDE: u1 = 0,
/// TDE [14:14]
/// Trigger DMA request enable
TDE: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA/Interrupt enable register
pub const DIER = MMIO(DIER_val).init(base_address + 0xc);

/// SR
const SR_val = packed struct {
/// UIF [0:0]
/// Update interrupt flag
UIF: u1 = 0,
/// CC1IF [1:1]
/// Capture/compare 1 interrupt
CC1IF: u1 = 0,
/// CC2IF [2:2]
/// Capture/Compare 2 interrupt
CC2IF: u1 = 0,
/// CC3IF [3:3]
/// Capture/Compare 3 interrupt
CC3IF: u1 = 0,
/// CC4IF [4:4]
/// Capture/Compare 4 interrupt
CC4IF: u1 = 0,
/// COMIF [5:5]
/// COM interrupt flag
COMIF: u1 = 0,
/// TIF [6:6]
/// Trigger interrupt flag
TIF: u1 = 0,
/// BIF [7:7]
/// Break interrupt flag
BIF: u1 = 0,
/// unused [8:8]
_unused8: u1 = 0,
/// CC1OF [9:9]
/// Capture/Compare 1 overcapture
CC1OF: u1 = 0,
/// CC2OF [10:10]
/// Capture/compare 2 overcapture
CC2OF: u1 = 0,
/// CC3OF [11:11]
/// Capture/Compare 3 overcapture
CC3OF: u1 = 0,
/// CC4OF [12:12]
/// Capture/Compare 4 overcapture
CC4OF: u1 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x10);

/// EGR
const EGR_val = packed struct {
/// UG [0:0]
/// Update generation
UG: u1 = 0,
/// CC1G [1:1]
/// Capture/compare 1
CC1G: u1 = 0,
/// CC2G [2:2]
/// Capture/compare 2
CC2G: u1 = 0,
/// CC3G [3:3]
/// Capture/compare 3
CC3G: u1 = 0,
/// CC4G [4:4]
/// Capture/compare 4
CC4G: u1 = 0,
/// COMG [5:5]
/// Capture/Compare control update
COMG: u1 = 0,
/// TG [6:6]
/// Trigger generation
TG: u1 = 0,
/// BG [7:7]
/// Break generation
BG: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// event generation register
pub const EGR = MMIO(EGR_val).init(base_address + 0x14);

/// CCMR1_Output
const CCMR1_Output_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// OC1FE [2:2]
/// Output Compare 1 fast
OC1FE: u1 = 0,
/// OC1PE [3:3]
/// Output Compare 1 preload
OC1PE: u1 = 0,
/// OC1M [4:6]
/// Output Compare 1 mode
OC1M: u3 = 0,
/// OC1CE [7:7]
/// Output Compare 1 clear
OC1CE: u1 = 0,
/// CC2S [8:9]
/// Capture/Compare 2
CC2S: u2 = 0,
/// OC2FE [10:10]
/// Output Compare 2 fast
OC2FE: u1 = 0,
/// OC2PE [11:11]
/// Output Compare 2 preload
OC2PE: u1 = 0,
/// OC2M [12:14]
/// Output Compare 2 mode
OC2M: u3 = 0,
/// OC2CE [15:15]
/// Output Compare 2 clear
OC2CE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (output
pub const CCMR1_Output = MMIO(CCMR1_Output_val).init(base_address + 0x18);

/// CCMR1_Input
const CCMR1_Input_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// ICPCS [2:3]
/// Input capture 1 prescaler
ICPCS: u2 = 0,
/// IC1F [4:7]
/// Input capture 1 filter
IC1F: u4 = 0,
/// CC2S [8:9]
/// Capture/Compare 2
CC2S: u2 = 0,
/// IC2PCS [10:11]
/// Input capture 2 prescaler
IC2PCS: u2 = 0,
/// IC2F [12:15]
/// Input capture 2 filter
IC2F: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (input
pub const CCMR1_Input = MMIO(CCMR1_Input_val).init(base_address + 0x18);

/// CCMR2_Output
const CCMR2_Output_val = packed struct {
/// CC3S [0:1]
/// Capture/Compare 3
CC3S: u2 = 0,
/// OC3FE [2:2]
/// Output compare 3 fast
OC3FE: u1 = 0,
/// OC3PE [3:3]
/// Output compare 3 preload
OC3PE: u1 = 0,
/// OC3M [4:6]
/// Output compare 3 mode
OC3M: u3 = 0,
/// OC3CE [7:7]
/// Output compare 3 clear
OC3CE: u1 = 0,
/// CC4S [8:9]
/// Capture/Compare 4
CC4S: u2 = 0,
/// OC4FE [10:10]
/// Output compare 4 fast
OC4FE: u1 = 0,
/// OC4PE [11:11]
/// Output compare 4 preload
OC4PE: u1 = 0,
/// OC4M [12:14]
/// Output compare 4 mode
OC4M: u3 = 0,
/// OC4CE [15:15]
/// Output compare 4 clear
OC4CE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 2 (output
pub const CCMR2_Output = MMIO(CCMR2_Output_val).init(base_address + 0x1c);

/// CCMR2_Input
const CCMR2_Input_val = packed struct {
/// CC3S [0:1]
/// Capture/compare 3
CC3S: u2 = 0,
/// IC3PSC [2:3]
/// Input capture 3 prescaler
IC3PSC: u2 = 0,
/// IC3F [4:7]
/// Input capture 3 filter
IC3F: u4 = 0,
/// CC4S [8:9]
/// Capture/Compare 4
CC4S: u2 = 0,
/// IC4PSC [10:11]
/// Input capture 4 prescaler
IC4PSC: u2 = 0,
/// IC4F [12:15]
/// Input capture 4 filter
IC4F: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 2 (input
pub const CCMR2_Input = MMIO(CCMR2_Input_val).init(base_address + 0x1c);

/// CCER
const CCER_val = packed struct {
/// CC1E [0:0]
/// Capture/Compare 1 output
CC1E: u1 = 0,
/// CC1P [1:1]
/// Capture/Compare 1 output
CC1P: u1 = 0,
/// CC1NE [2:2]
/// Capture/Compare 1 complementary output
CC1NE: u1 = 0,
/// CC1NP [3:3]
/// Capture/Compare 1 output
CC1NP: u1 = 0,
/// CC2E [4:4]
/// Capture/Compare 2 output
CC2E: u1 = 0,
/// CC2P [5:5]
/// Capture/Compare 2 output
CC2P: u1 = 0,
/// CC2NE [6:6]
/// Capture/Compare 2 complementary output
CC2NE: u1 = 0,
/// CC2NP [7:7]
/// Capture/Compare 2 output
CC2NP: u1 = 0,
/// CC3E [8:8]
/// Capture/Compare 3 output
CC3E: u1 = 0,
/// CC3P [9:9]
/// Capture/Compare 3 output
CC3P: u1 = 0,
/// CC3NE [10:10]
/// Capture/Compare 3 complementary output
CC3NE: u1 = 0,
/// CC3NP [11:11]
/// Capture/Compare 3 output
CC3NP: u1 = 0,
/// CC4E [12:12]
/// Capture/Compare 4 output
CC4E: u1 = 0,
/// CC4P [13:13]
/// Capture/Compare 3 output
CC4P: u1 = 0,
/// unused [14:31]
_unused14: u2 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare enable
pub const CCER = MMIO(CCER_val).init(base_address + 0x20);

/// CNT
const CNT_val = packed struct {
/// CNT [0:15]
/// counter value
CNT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// counter
pub const CNT = MMIO(CNT_val).init(base_address + 0x24);

/// PSC
const PSC_val = packed struct {
/// PSC [0:15]
/// Prescaler value
PSC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// prescaler
pub const PSC = MMIO(PSC_val).init(base_address + 0x28);

/// ARR
const ARR_val = packed struct {
/// ARR [0:15]
/// Auto-reload value
ARR: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// auto-reload register
pub const ARR = MMIO(ARR_val).init(base_address + 0x2c);

/// CCR1
const CCR1_val = packed struct {
/// CCR1 [0:15]
/// Capture/Compare 1 value
CCR1: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 1
pub const CCR1 = MMIO(CCR1_val).init(base_address + 0x34);

/// CCR2
const CCR2_val = packed struct {
/// CCR2 [0:15]
/// Capture/Compare 2 value
CCR2: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 2
pub const CCR2 = MMIO(CCR2_val).init(base_address + 0x38);

/// CCR3
const CCR3_val = packed struct {
/// CCR3 [0:15]
/// Capture/Compare value
CCR3: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 3
pub const CCR3 = MMIO(CCR3_val).init(base_address + 0x3c);

/// CCR4
const CCR4_val = packed struct {
/// CCR4 [0:15]
/// Capture/Compare value
CCR4: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 4
pub const CCR4 = MMIO(CCR4_val).init(base_address + 0x40);

/// DCR
const DCR_val = packed struct {
/// DBA [0:4]
/// DMA base address
DBA: u5 = 0,
/// unused [5:7]
_unused5: u3 = 0,
/// DBL [8:12]
/// DMA burst length
DBL: u5 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA control register
pub const DCR = MMIO(DCR_val).init(base_address + 0x48);

/// DMAR
const DMAR_val = packed struct {
/// DMAB [0:15]
/// DMA register for burst
DMAB: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA address for full transfer
pub const DMAR = MMIO(DMAR_val).init(base_address + 0x4c);

/// RCR
const RCR_val = packed struct {
/// REP [0:7]
/// Repetition counter value
REP: u8 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// repetition counter register
pub const RCR = MMIO(RCR_val).init(base_address + 0x30);

/// BDTR
const BDTR_val = packed struct {
/// DTG [0:7]
/// Dead-time generator setup
DTG: u8 = 0,
/// LOCK [8:9]
/// Lock configuration
LOCK: u2 = 0,
/// OSSI [10:10]
/// Off-state selection for Idle
OSSI: u1 = 0,
/// OSSR [11:11]
/// Off-state selection for Run
OSSR: u1 = 0,
/// BKE [12:12]
/// Break enable
BKE: u1 = 0,
/// BKP [13:13]
/// Break polarity
BKP: u1 = 0,
/// AOE [14:14]
/// Automatic output enable
AOE: u1 = 0,
/// MOE [15:15]
/// Main output enable
MOE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// break and dead-time register
pub const BDTR = MMIO(BDTR_val).init(base_address + 0x44);
};

/// Advanced-timers
pub const TIM8 = struct {

const base_address = 0x40010400;
/// CR1
const CR1_val = packed struct {
/// CEN [0:0]
/// Counter enable
CEN: u1 = 0,
/// UDIS [1:1]
/// Update disable
UDIS: u1 = 0,
/// URS [2:2]
/// Update request source
URS: u1 = 0,
/// OPM [3:3]
/// One-pulse mode
OPM: u1 = 0,
/// DIR [4:4]
/// Direction
DIR: u1 = 0,
/// CMS [5:6]
/// Center-aligned mode
CMS: u2 = 0,
/// ARPE [7:7]
/// Auto-reload preload enable
ARPE: u1 = 0,
/// CKD [8:9]
/// Clock division
CKD: u2 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// CCPC [0:0]
/// Capture/compare preloaded
CCPC: u1 = 0,
/// unused [1:1]
_unused1: u1 = 0,
/// CCUS [2:2]
/// Capture/compare control update
CCUS: u1 = 0,
/// CCDS [3:3]
/// Capture/compare DMA
CCDS: u1 = 0,
/// MMS [4:6]
/// Master mode selection
MMS: u3 = 0,
/// TI1S [7:7]
/// TI1 selection
TI1S: u1 = 0,
/// OIS1 [8:8]
/// Output Idle state 1
OIS1: u1 = 0,
/// OIS1N [9:9]
/// Output Idle state 1
OIS1N: u1 = 0,
/// OIS2 [10:10]
/// Output Idle state 2
OIS2: u1 = 0,
/// OIS2N [11:11]
/// Output Idle state 2
OIS2N: u1 = 0,
/// OIS3 [12:12]
/// Output Idle state 3
OIS3: u1 = 0,
/// OIS3N [13:13]
/// Output Idle state 3
OIS3N: u1 = 0,
/// OIS4 [14:14]
/// Output Idle state 4
OIS4: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// SMCR
const SMCR_val = packed struct {
/// SMS [0:2]
/// Slave mode selection
SMS: u3 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// TS [4:6]
/// Trigger selection
TS: u3 = 0,
/// MSM [7:7]
/// Master/Slave mode
MSM: u1 = 0,
/// ETF [8:11]
/// External trigger filter
ETF: u4 = 0,
/// ETPS [12:13]
/// External trigger prescaler
ETPS: u2 = 0,
/// ECE [14:14]
/// External clock enable
ECE: u1 = 0,
/// ETP [15:15]
/// External trigger polarity
ETP: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// slave mode control register
pub const SMCR = MMIO(SMCR_val).init(base_address + 0x8);

/// DIER
const DIER_val = packed struct {
/// UIE [0:0]
/// Update interrupt enable
UIE: u1 = 0,
/// CC1IE [1:1]
/// Capture/Compare 1 interrupt
CC1IE: u1 = 0,
/// CC2IE [2:2]
/// Capture/Compare 2 interrupt
CC2IE: u1 = 0,
/// CC3IE [3:3]
/// Capture/Compare 3 interrupt
CC3IE: u1 = 0,
/// CC4IE [4:4]
/// Capture/Compare 4 interrupt
CC4IE: u1 = 0,
/// COMIE [5:5]
/// COM interrupt enable
COMIE: u1 = 0,
/// TIE [6:6]
/// Trigger interrupt enable
TIE: u1 = 0,
/// BIE [7:7]
/// Break interrupt enable
BIE: u1 = 0,
/// UDE [8:8]
/// Update DMA request enable
UDE: u1 = 0,
/// CC1DE [9:9]
/// Capture/Compare 1 DMA request
CC1DE: u1 = 0,
/// CC2DE [10:10]
/// Capture/Compare 2 DMA request
CC2DE: u1 = 0,
/// CC3DE [11:11]
/// Capture/Compare 3 DMA request
CC3DE: u1 = 0,
/// CC4DE [12:12]
/// Capture/Compare 4 DMA request
CC4DE: u1 = 0,
/// COMDE [13:13]
/// COM DMA request enable
COMDE: u1 = 0,
/// TDE [14:14]
/// Trigger DMA request enable
TDE: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA/Interrupt enable register
pub const DIER = MMIO(DIER_val).init(base_address + 0xc);

/// SR
const SR_val = packed struct {
/// UIF [0:0]
/// Update interrupt flag
UIF: u1 = 0,
/// CC1IF [1:1]
/// Capture/compare 1 interrupt
CC1IF: u1 = 0,
/// CC2IF [2:2]
/// Capture/Compare 2 interrupt
CC2IF: u1 = 0,
/// CC3IF [3:3]
/// Capture/Compare 3 interrupt
CC3IF: u1 = 0,
/// CC4IF [4:4]
/// Capture/Compare 4 interrupt
CC4IF: u1 = 0,
/// COMIF [5:5]
/// COM interrupt flag
COMIF: u1 = 0,
/// TIF [6:6]
/// Trigger interrupt flag
TIF: u1 = 0,
/// BIF [7:7]
/// Break interrupt flag
BIF: u1 = 0,
/// unused [8:8]
_unused8: u1 = 0,
/// CC1OF [9:9]
/// Capture/Compare 1 overcapture
CC1OF: u1 = 0,
/// CC2OF [10:10]
/// Capture/compare 2 overcapture
CC2OF: u1 = 0,
/// CC3OF [11:11]
/// Capture/Compare 3 overcapture
CC3OF: u1 = 0,
/// CC4OF [12:12]
/// Capture/Compare 4 overcapture
CC4OF: u1 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x10);

/// EGR
const EGR_val = packed struct {
/// UG [0:0]
/// Update generation
UG: u1 = 0,
/// CC1G [1:1]
/// Capture/compare 1
CC1G: u1 = 0,
/// CC2G [2:2]
/// Capture/compare 2
CC2G: u1 = 0,
/// CC3G [3:3]
/// Capture/compare 3
CC3G: u1 = 0,
/// CC4G [4:4]
/// Capture/compare 4
CC4G: u1 = 0,
/// COMG [5:5]
/// Capture/Compare control update
COMG: u1 = 0,
/// TG [6:6]
/// Trigger generation
TG: u1 = 0,
/// BG [7:7]
/// Break generation
BG: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// event generation register
pub const EGR = MMIO(EGR_val).init(base_address + 0x14);

/// CCMR1_Output
const CCMR1_Output_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// OC1FE [2:2]
/// Output Compare 1 fast
OC1FE: u1 = 0,
/// OC1PE [3:3]
/// Output Compare 1 preload
OC1PE: u1 = 0,
/// OC1M [4:6]
/// Output Compare 1 mode
OC1M: u3 = 0,
/// OC1CE [7:7]
/// Output Compare 1 clear
OC1CE: u1 = 0,
/// CC2S [8:9]
/// Capture/Compare 2
CC2S: u2 = 0,
/// OC2FE [10:10]
/// Output Compare 2 fast
OC2FE: u1 = 0,
/// OC2PE [11:11]
/// Output Compare 2 preload
OC2PE: u1 = 0,
/// OC2M [12:14]
/// Output Compare 2 mode
OC2M: u3 = 0,
/// OC2CE [15:15]
/// Output Compare 2 clear
OC2CE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (output
pub const CCMR1_Output = MMIO(CCMR1_Output_val).init(base_address + 0x18);

/// CCMR1_Input
const CCMR1_Input_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// ICPCS [2:3]
/// Input capture 1 prescaler
ICPCS: u2 = 0,
/// IC1F [4:7]
/// Input capture 1 filter
IC1F: u4 = 0,
/// CC2S [8:9]
/// Capture/Compare 2
CC2S: u2 = 0,
/// IC2PCS [10:11]
/// Input capture 2 prescaler
IC2PCS: u2 = 0,
/// IC2F [12:15]
/// Input capture 2 filter
IC2F: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (input
pub const CCMR1_Input = MMIO(CCMR1_Input_val).init(base_address + 0x18);

/// CCMR2_Output
const CCMR2_Output_val = packed struct {
/// CC3S [0:1]
/// Capture/Compare 3
CC3S: u2 = 0,
/// OC3FE [2:2]
/// Output compare 3 fast
OC3FE: u1 = 0,
/// OC3PE [3:3]
/// Output compare 3 preload
OC3PE: u1 = 0,
/// OC3M [4:6]
/// Output compare 3 mode
OC3M: u3 = 0,
/// OC3CE [7:7]
/// Output compare 3 clear
OC3CE: u1 = 0,
/// CC4S [8:9]
/// Capture/Compare 4
CC4S: u2 = 0,
/// OC4FE [10:10]
/// Output compare 4 fast
OC4FE: u1 = 0,
/// OC4PE [11:11]
/// Output compare 4 preload
OC4PE: u1 = 0,
/// OC4M [12:14]
/// Output compare 4 mode
OC4M: u3 = 0,
/// OC4CE [15:15]
/// Output compare 4 clear
OC4CE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 2 (output
pub const CCMR2_Output = MMIO(CCMR2_Output_val).init(base_address + 0x1c);

/// CCMR2_Input
const CCMR2_Input_val = packed struct {
/// CC3S [0:1]
/// Capture/compare 3
CC3S: u2 = 0,
/// IC3PSC [2:3]
/// Input capture 3 prescaler
IC3PSC: u2 = 0,
/// IC3F [4:7]
/// Input capture 3 filter
IC3F: u4 = 0,
/// CC4S [8:9]
/// Capture/Compare 4
CC4S: u2 = 0,
/// IC4PSC [10:11]
/// Input capture 4 prescaler
IC4PSC: u2 = 0,
/// IC4F [12:15]
/// Input capture 4 filter
IC4F: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 2 (input
pub const CCMR2_Input = MMIO(CCMR2_Input_val).init(base_address + 0x1c);

/// CCER
const CCER_val = packed struct {
/// CC1E [0:0]
/// Capture/Compare 1 output
CC1E: u1 = 0,
/// CC1P [1:1]
/// Capture/Compare 1 output
CC1P: u1 = 0,
/// CC1NE [2:2]
/// Capture/Compare 1 complementary output
CC1NE: u1 = 0,
/// CC1NP [3:3]
/// Capture/Compare 1 output
CC1NP: u1 = 0,
/// CC2E [4:4]
/// Capture/Compare 2 output
CC2E: u1 = 0,
/// CC2P [5:5]
/// Capture/Compare 2 output
CC2P: u1 = 0,
/// CC2NE [6:6]
/// Capture/Compare 2 complementary output
CC2NE: u1 = 0,
/// CC2NP [7:7]
/// Capture/Compare 2 output
CC2NP: u1 = 0,
/// CC3E [8:8]
/// Capture/Compare 3 output
CC3E: u1 = 0,
/// CC3P [9:9]
/// Capture/Compare 3 output
CC3P: u1 = 0,
/// CC3NE [10:10]
/// Capture/Compare 3 complementary output
CC3NE: u1 = 0,
/// CC3NP [11:11]
/// Capture/Compare 3 output
CC3NP: u1 = 0,
/// CC4E [12:12]
/// Capture/Compare 4 output
CC4E: u1 = 0,
/// CC4P [13:13]
/// Capture/Compare 3 output
CC4P: u1 = 0,
/// unused [14:31]
_unused14: u2 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare enable
pub const CCER = MMIO(CCER_val).init(base_address + 0x20);

/// CNT
const CNT_val = packed struct {
/// CNT [0:15]
/// counter value
CNT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// counter
pub const CNT = MMIO(CNT_val).init(base_address + 0x24);

/// PSC
const PSC_val = packed struct {
/// PSC [0:15]
/// Prescaler value
PSC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// prescaler
pub const PSC = MMIO(PSC_val).init(base_address + 0x28);

/// ARR
const ARR_val = packed struct {
/// ARR [0:15]
/// Auto-reload value
ARR: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// auto-reload register
pub const ARR = MMIO(ARR_val).init(base_address + 0x2c);

/// CCR1
const CCR1_val = packed struct {
/// CCR1 [0:15]
/// Capture/Compare 1 value
CCR1: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 1
pub const CCR1 = MMIO(CCR1_val).init(base_address + 0x34);

/// CCR2
const CCR2_val = packed struct {
/// CCR2 [0:15]
/// Capture/Compare 2 value
CCR2: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 2
pub const CCR2 = MMIO(CCR2_val).init(base_address + 0x38);

/// CCR3
const CCR3_val = packed struct {
/// CCR3 [0:15]
/// Capture/Compare value
CCR3: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 3
pub const CCR3 = MMIO(CCR3_val).init(base_address + 0x3c);

/// CCR4
const CCR4_val = packed struct {
/// CCR4 [0:15]
/// Capture/Compare value
CCR4: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 4
pub const CCR4 = MMIO(CCR4_val).init(base_address + 0x40);

/// DCR
const DCR_val = packed struct {
/// DBA [0:4]
/// DMA base address
DBA: u5 = 0,
/// unused [5:7]
_unused5: u3 = 0,
/// DBL [8:12]
/// DMA burst length
DBL: u5 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA control register
pub const DCR = MMIO(DCR_val).init(base_address + 0x48);

/// DMAR
const DMAR_val = packed struct {
/// DMAB [0:15]
/// DMA register for burst
DMAB: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA address for full transfer
pub const DMAR = MMIO(DMAR_val).init(base_address + 0x4c);

/// RCR
const RCR_val = packed struct {
/// REP [0:7]
/// Repetition counter value
REP: u8 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// repetition counter register
pub const RCR = MMIO(RCR_val).init(base_address + 0x30);

/// BDTR
const BDTR_val = packed struct {
/// DTG [0:7]
/// Dead-time generator setup
DTG: u8 = 0,
/// LOCK [8:9]
/// Lock configuration
LOCK: u2 = 0,
/// OSSI [10:10]
/// Off-state selection for Idle
OSSI: u1 = 0,
/// OSSR [11:11]
/// Off-state selection for Run
OSSR: u1 = 0,
/// BKE [12:12]
/// Break enable
BKE: u1 = 0,
/// BKP [13:13]
/// Break polarity
BKP: u1 = 0,
/// AOE [14:14]
/// Automatic output enable
AOE: u1 = 0,
/// MOE [15:15]
/// Main output enable
MOE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// break and dead-time register
pub const BDTR = MMIO(BDTR_val).init(base_address + 0x44);
};

/// General purpose timers
pub const TIM2 = struct {

const base_address = 0x40000000;
/// CR1
const CR1_val = packed struct {
/// CEN [0:0]
/// Counter enable
CEN: u1 = 0,
/// UDIS [1:1]
/// Update disable
UDIS: u1 = 0,
/// URS [2:2]
/// Update request source
URS: u1 = 0,
/// OPM [3:3]
/// One-pulse mode
OPM: u1 = 0,
/// DIR [4:4]
/// Direction
DIR: u1 = 0,
/// CMS [5:6]
/// Center-aligned mode
CMS: u2 = 0,
/// ARPE [7:7]
/// Auto-reload preload enable
ARPE: u1 = 0,
/// CKD [8:9]
/// Clock division
CKD: u2 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// unused [0:2]
_unused0: u3 = 0,
/// CCDS [3:3]
/// Capture/compare DMA
CCDS: u1 = 0,
/// MMS [4:6]
/// Master mode selection
MMS: u3 = 0,
/// TI1S [7:7]
/// TI1 selection
TI1S: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// SMCR
const SMCR_val = packed struct {
/// SMS [0:2]
/// Slave mode selection
SMS: u3 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// TS [4:6]
/// Trigger selection
TS: u3 = 0,
/// MSM [7:7]
/// Master/Slave mode
MSM: u1 = 0,
/// ETF [8:11]
/// External trigger filter
ETF: u4 = 0,
/// ETPS [12:13]
/// External trigger prescaler
ETPS: u2 = 0,
/// ECE [14:14]
/// External clock enable
ECE: u1 = 0,
/// ETP [15:15]
/// External trigger polarity
ETP: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// slave mode control register
pub const SMCR = MMIO(SMCR_val).init(base_address + 0x8);

/// DIER
const DIER_val = packed struct {
/// UIE [0:0]
/// Update interrupt enable
UIE: u1 = 0,
/// CC1IE [1:1]
/// Capture/Compare 1 interrupt
CC1IE: u1 = 0,
/// CC2IE [2:2]
/// Capture/Compare 2 interrupt
CC2IE: u1 = 0,
/// CC3IE [3:3]
/// Capture/Compare 3 interrupt
CC3IE: u1 = 0,
/// CC4IE [4:4]
/// Capture/Compare 4 interrupt
CC4IE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// TIE [6:6]
/// Trigger interrupt enable
TIE: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// UDE [8:8]
/// Update DMA request enable
UDE: u1 = 0,
/// CC1DE [9:9]
/// Capture/Compare 1 DMA request
CC1DE: u1 = 0,
/// CC2DE [10:10]
/// Capture/Compare 2 DMA request
CC2DE: u1 = 0,
/// CC3DE [11:11]
/// Capture/Compare 3 DMA request
CC3DE: u1 = 0,
/// CC4DE [12:12]
/// Capture/Compare 4 DMA request
CC4DE: u1 = 0,
/// unused [13:13]
_unused13: u1 = 0,
/// TDE [14:14]
/// Trigger DMA request enable
TDE: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA/Interrupt enable register
pub const DIER = MMIO(DIER_val).init(base_address + 0xc);

/// SR
const SR_val = packed struct {
/// UIF [0:0]
/// Update interrupt flag
UIF: u1 = 0,
/// CC1IF [1:1]
/// Capture/compare 1 interrupt
CC1IF: u1 = 0,
/// CC2IF [2:2]
/// Capture/Compare 2 interrupt
CC2IF: u1 = 0,
/// CC3IF [3:3]
/// Capture/Compare 3 interrupt
CC3IF: u1 = 0,
/// CC4IF [4:4]
/// Capture/Compare 4 interrupt
CC4IF: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// TIF [6:6]
/// Trigger interrupt flag
TIF: u1 = 0,
/// unused [7:8]
_unused7: u1 = 0,
_unused8: u1 = 0,
/// CC1OF [9:9]
/// Capture/Compare 1 overcapture
CC1OF: u1 = 0,
/// CC2OF [10:10]
/// Capture/compare 2 overcapture
CC2OF: u1 = 0,
/// CC3OF [11:11]
/// Capture/Compare 3 overcapture
CC3OF: u1 = 0,
/// CC4OF [12:12]
/// Capture/Compare 4 overcapture
CC4OF: u1 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x10);

/// EGR
const EGR_val = packed struct {
/// UG [0:0]
/// Update generation
UG: u1 = 0,
/// CC1G [1:1]
/// Capture/compare 1
CC1G: u1 = 0,
/// CC2G [2:2]
/// Capture/compare 2
CC2G: u1 = 0,
/// CC3G [3:3]
/// Capture/compare 3
CC3G: u1 = 0,
/// CC4G [4:4]
/// Capture/compare 4
CC4G: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// TG [6:6]
/// Trigger generation
TG: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// event generation register
pub const EGR = MMIO(EGR_val).init(base_address + 0x14);

/// CCMR1_Output
const CCMR1_Output_val = packed struct {
/// CC1S [0:1]
/// CC1S
CC1S: u2 = 0,
/// OC1FE [2:2]
/// OC1FE
OC1FE: u1 = 0,
/// OC1PE [3:3]
/// OC1PE
OC1PE: u1 = 0,
/// OC1M [4:6]
/// OC1M
OC1M: u3 = 0,
/// OC1CE [7:7]
/// OC1CE
OC1CE: u1 = 0,
/// CC2S [8:9]
/// CC2S
CC2S: u2 = 0,
/// OC2FE [10:10]
/// OC2FE
OC2FE: u1 = 0,
/// OC2PE [11:11]
/// OC2PE
OC2PE: u1 = 0,
/// OC2M [12:14]
/// OC2M
OC2M: u3 = 0,
/// OC2CE [15:15]
/// OC2CE
OC2CE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (output
pub const CCMR1_Output = MMIO(CCMR1_Output_val).init(base_address + 0x18);

/// CCMR1_Input
const CCMR1_Input_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// ICPCS [2:3]
/// Input capture 1 prescaler
ICPCS: u2 = 0,
/// IC1F [4:7]
/// Input capture 1 filter
IC1F: u4 = 0,
/// CC2S [8:9]
/// Capture/Compare 2
CC2S: u2 = 0,
/// IC2PCS [10:11]
/// Input capture 2 prescaler
IC2PCS: u2 = 0,
/// IC2F [12:15]
/// Input capture 2 filter
IC2F: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (input
pub const CCMR1_Input = MMIO(CCMR1_Input_val).init(base_address + 0x18);

/// CCMR2_Output
const CCMR2_Output_val = packed struct {
/// CC3S [0:1]
/// CC3S
CC3S: u2 = 0,
/// OC3FE [2:2]
/// OC3FE
OC3FE: u1 = 0,
/// OC3PE [3:3]
/// OC3PE
OC3PE: u1 = 0,
/// OC3M [4:6]
/// OC3M
OC3M: u3 = 0,
/// OC3CE [7:7]
/// OC3CE
OC3CE: u1 = 0,
/// CC4S [8:9]
/// CC4S
CC4S: u2 = 0,
/// OC4FE [10:10]
/// OC4FE
OC4FE: u1 = 0,
/// OC4PE [11:11]
/// OC4PE
OC4PE: u1 = 0,
/// OC4M [12:14]
/// OC4M
OC4M: u3 = 0,
/// O24CE [15:15]
/// O24CE
O24CE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 2 (output
pub const CCMR2_Output = MMIO(CCMR2_Output_val).init(base_address + 0x1c);

/// CCMR2_Input
const CCMR2_Input_val = packed struct {
/// CC3S [0:1]
/// Capture/compare 3
CC3S: u2 = 0,
/// IC3PSC [2:3]
/// Input capture 3 prescaler
IC3PSC: u2 = 0,
/// IC3F [4:7]
/// Input capture 3 filter
IC3F: u4 = 0,
/// CC4S [8:9]
/// Capture/Compare 4
CC4S: u2 = 0,
/// IC4PSC [10:11]
/// Input capture 4 prescaler
IC4PSC: u2 = 0,
/// IC4F [12:15]
/// Input capture 4 filter
IC4F: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 2 (input
pub const CCMR2_Input = MMIO(CCMR2_Input_val).init(base_address + 0x1c);

/// CCER
const CCER_val = packed struct {
/// CC1E [0:0]
/// Capture/Compare 1 output
CC1E: u1 = 0,
/// CC1P [1:1]
/// Capture/Compare 1 output
CC1P: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// CC1NP [3:3]
/// Capture/Compare 1 output
CC1NP: u1 = 0,
/// CC2E [4:4]
/// Capture/Compare 2 output
CC2E: u1 = 0,
/// CC2P [5:5]
/// Capture/Compare 2 output
CC2P: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// CC2NP [7:7]
/// Capture/Compare 2 output
CC2NP: u1 = 0,
/// CC3E [8:8]
/// Capture/Compare 3 output
CC3E: u1 = 0,
/// CC3P [9:9]
/// Capture/Compare 3 output
CC3P: u1 = 0,
/// unused [10:10]
_unused10: u1 = 0,
/// CC3NP [11:11]
/// Capture/Compare 3 output
CC3NP: u1 = 0,
/// CC4E [12:12]
/// Capture/Compare 4 output
CC4E: u1 = 0,
/// CC4P [13:13]
/// Capture/Compare 3 output
CC4P: u1 = 0,
/// unused [14:14]
_unused14: u1 = 0,
/// CC4NP [15:15]
/// Capture/Compare 4 output
CC4NP: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare enable
pub const CCER = MMIO(CCER_val).init(base_address + 0x20);

/// CNT
const CNT_val = packed struct {
/// CNT_L [0:15]
/// Low counter value
CNT_L: u16 = 0,
/// CNT_H [16:31]
/// High counter value
CNT_H: u16 = 0,
};
/// counter
pub const CNT = MMIO(CNT_val).init(base_address + 0x24);

/// PSC
const PSC_val = packed struct {
/// PSC [0:15]
/// Prescaler value
PSC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// prescaler
pub const PSC = MMIO(PSC_val).init(base_address + 0x28);

/// ARR
const ARR_val = packed struct {
/// ARR_L [0:15]
/// Low Auto-reload value
ARR_L: u16 = 0,
/// ARR_H [16:31]
/// High Auto-reload value
ARR_H: u16 = 0,
};
/// auto-reload register
pub const ARR = MMIO(ARR_val).init(base_address + 0x2c);

/// CCR1
const CCR1_val = packed struct {
/// CCR1_L [0:15]
/// Low Capture/Compare 1
CCR1_L: u16 = 0,
/// CCR1_H [16:31]
/// High Capture/Compare 1
CCR1_H: u16 = 0,
};
/// capture/compare register 1
pub const CCR1 = MMIO(CCR1_val).init(base_address + 0x34);

/// CCR2
const CCR2_val = packed struct {
/// CCR2_L [0:15]
/// Low Capture/Compare 2
CCR2_L: u16 = 0,
/// CCR2_H [16:31]
/// High Capture/Compare 2
CCR2_H: u16 = 0,
};
/// capture/compare register 2
pub const CCR2 = MMIO(CCR2_val).init(base_address + 0x38);

/// CCR3
const CCR3_val = packed struct {
/// CCR3_L [0:15]
/// Low Capture/Compare value
CCR3_L: u16 = 0,
/// CCR3_H [16:31]
/// High Capture/Compare value
CCR3_H: u16 = 0,
};
/// capture/compare register 3
pub const CCR3 = MMIO(CCR3_val).init(base_address + 0x3c);

/// CCR4
const CCR4_val = packed struct {
/// CCR4_L [0:15]
/// Low Capture/Compare value
CCR4_L: u16 = 0,
/// CCR4_H [16:31]
/// High Capture/Compare value
CCR4_H: u16 = 0,
};
/// capture/compare register 4
pub const CCR4 = MMIO(CCR4_val).init(base_address + 0x40);

/// DCR
const DCR_val = packed struct {
/// DBA [0:4]
/// DMA base address
DBA: u5 = 0,
/// unused [5:7]
_unused5: u3 = 0,
/// DBL [8:12]
/// DMA burst length
DBL: u5 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA control register
pub const DCR = MMIO(DCR_val).init(base_address + 0x48);

/// DMAR
const DMAR_val = packed struct {
/// DMAB [0:15]
/// DMA register for burst
DMAB: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA address for full transfer
pub const DMAR = MMIO(DMAR_val).init(base_address + 0x4c);

/// OR
const OR_val = packed struct {
/// unused [0:9]
_unused0: u8 = 0,
_unused8: u2 = 0,
/// ITR1_RMP [10:11]
/// Timer Input 4 remap
ITR1_RMP: u2 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// TIM5 option register
pub const OR = MMIO(OR_val).init(base_address + 0x50);
};

/// General purpose timers
pub const TIM3 = struct {

const base_address = 0x40000400;
/// CR1
const CR1_val = packed struct {
/// CEN [0:0]
/// Counter enable
CEN: u1 = 0,
/// UDIS [1:1]
/// Update disable
UDIS: u1 = 0,
/// URS [2:2]
/// Update request source
URS: u1 = 0,
/// OPM [3:3]
/// One-pulse mode
OPM: u1 = 0,
/// DIR [4:4]
/// Direction
DIR: u1 = 0,
/// CMS [5:6]
/// Center-aligned mode
CMS: u2 = 0,
/// ARPE [7:7]
/// Auto-reload preload enable
ARPE: u1 = 0,
/// CKD [8:9]
/// Clock division
CKD: u2 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// unused [0:2]
_unused0: u3 = 0,
/// CCDS [3:3]
/// Capture/compare DMA
CCDS: u1 = 0,
/// MMS [4:6]
/// Master mode selection
MMS: u3 = 0,
/// TI1S [7:7]
/// TI1 selection
TI1S: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// SMCR
const SMCR_val = packed struct {
/// SMS [0:2]
/// Slave mode selection
SMS: u3 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// TS [4:6]
/// Trigger selection
TS: u3 = 0,
/// MSM [7:7]
/// Master/Slave mode
MSM: u1 = 0,
/// ETF [8:11]
/// External trigger filter
ETF: u4 = 0,
/// ETPS [12:13]
/// External trigger prescaler
ETPS: u2 = 0,
/// ECE [14:14]
/// External clock enable
ECE: u1 = 0,
/// ETP [15:15]
/// External trigger polarity
ETP: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// slave mode control register
pub const SMCR = MMIO(SMCR_val).init(base_address + 0x8);

/// DIER
const DIER_val = packed struct {
/// UIE [0:0]
/// Update interrupt enable
UIE: u1 = 0,
/// CC1IE [1:1]
/// Capture/Compare 1 interrupt
CC1IE: u1 = 0,
/// CC2IE [2:2]
/// Capture/Compare 2 interrupt
CC2IE: u1 = 0,
/// CC3IE [3:3]
/// Capture/Compare 3 interrupt
CC3IE: u1 = 0,
/// CC4IE [4:4]
/// Capture/Compare 4 interrupt
CC4IE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// TIE [6:6]
/// Trigger interrupt enable
TIE: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// UDE [8:8]
/// Update DMA request enable
UDE: u1 = 0,
/// CC1DE [9:9]
/// Capture/Compare 1 DMA request
CC1DE: u1 = 0,
/// CC2DE [10:10]
/// Capture/Compare 2 DMA request
CC2DE: u1 = 0,
/// CC3DE [11:11]
/// Capture/Compare 3 DMA request
CC3DE: u1 = 0,
/// CC4DE [12:12]
/// Capture/Compare 4 DMA request
CC4DE: u1 = 0,
/// unused [13:13]
_unused13: u1 = 0,
/// TDE [14:14]
/// Trigger DMA request enable
TDE: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA/Interrupt enable register
pub const DIER = MMIO(DIER_val).init(base_address + 0xc);

/// SR
const SR_val = packed struct {
/// UIF [0:0]
/// Update interrupt flag
UIF: u1 = 0,
/// CC1IF [1:1]
/// Capture/compare 1 interrupt
CC1IF: u1 = 0,
/// CC2IF [2:2]
/// Capture/Compare 2 interrupt
CC2IF: u1 = 0,
/// CC3IF [3:3]
/// Capture/Compare 3 interrupt
CC3IF: u1 = 0,
/// CC4IF [4:4]
/// Capture/Compare 4 interrupt
CC4IF: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// TIF [6:6]
/// Trigger interrupt flag
TIF: u1 = 0,
/// unused [7:8]
_unused7: u1 = 0,
_unused8: u1 = 0,
/// CC1OF [9:9]
/// Capture/Compare 1 overcapture
CC1OF: u1 = 0,
/// CC2OF [10:10]
/// Capture/compare 2 overcapture
CC2OF: u1 = 0,
/// CC3OF [11:11]
/// Capture/Compare 3 overcapture
CC3OF: u1 = 0,
/// CC4OF [12:12]
/// Capture/Compare 4 overcapture
CC4OF: u1 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x10);

/// EGR
const EGR_val = packed struct {
/// UG [0:0]
/// Update generation
UG: u1 = 0,
/// CC1G [1:1]
/// Capture/compare 1
CC1G: u1 = 0,
/// CC2G [2:2]
/// Capture/compare 2
CC2G: u1 = 0,
/// CC3G [3:3]
/// Capture/compare 3
CC3G: u1 = 0,
/// CC4G [4:4]
/// Capture/compare 4
CC4G: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// TG [6:6]
/// Trigger generation
TG: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// event generation register
pub const EGR = MMIO(EGR_val).init(base_address + 0x14);

/// CCMR1_Output
const CCMR1_Output_val = packed struct {
/// CC1S [0:1]
/// CC1S
CC1S: u2 = 0,
/// OC1FE [2:2]
/// OC1FE
OC1FE: u1 = 0,
/// OC1PE [3:3]
/// OC1PE
OC1PE: u1 = 0,
/// OC1M [4:6]
/// OC1M
OC1M: u3 = 0,
/// OC1CE [7:7]
/// OC1CE
OC1CE: u1 = 0,
/// CC2S [8:9]
/// CC2S
CC2S: u2 = 0,
/// OC2FE [10:10]
/// OC2FE
OC2FE: u1 = 0,
/// OC2PE [11:11]
/// OC2PE
OC2PE: u1 = 0,
/// OC2M [12:14]
/// OC2M
OC2M: u3 = 0,
/// OC2CE [15:15]
/// OC2CE
OC2CE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (output
pub const CCMR1_Output = MMIO(CCMR1_Output_val).init(base_address + 0x18);

/// CCMR1_Input
const CCMR1_Input_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// ICPCS [2:3]
/// Input capture 1 prescaler
ICPCS: u2 = 0,
/// IC1F [4:7]
/// Input capture 1 filter
IC1F: u4 = 0,
/// CC2S [8:9]
/// Capture/Compare 2
CC2S: u2 = 0,
/// IC2PCS [10:11]
/// Input capture 2 prescaler
IC2PCS: u2 = 0,
/// IC2F [12:15]
/// Input capture 2 filter
IC2F: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (input
pub const CCMR1_Input = MMIO(CCMR1_Input_val).init(base_address + 0x18);

/// CCMR2_Output
const CCMR2_Output_val = packed struct {
/// CC3S [0:1]
/// CC3S
CC3S: u2 = 0,
/// OC3FE [2:2]
/// OC3FE
OC3FE: u1 = 0,
/// OC3PE [3:3]
/// OC3PE
OC3PE: u1 = 0,
/// OC3M [4:6]
/// OC3M
OC3M: u3 = 0,
/// OC3CE [7:7]
/// OC3CE
OC3CE: u1 = 0,
/// CC4S [8:9]
/// CC4S
CC4S: u2 = 0,
/// OC4FE [10:10]
/// OC4FE
OC4FE: u1 = 0,
/// OC4PE [11:11]
/// OC4PE
OC4PE: u1 = 0,
/// OC4M [12:14]
/// OC4M
OC4M: u3 = 0,
/// O24CE [15:15]
/// O24CE
O24CE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 2 (output
pub const CCMR2_Output = MMIO(CCMR2_Output_val).init(base_address + 0x1c);

/// CCMR2_Input
const CCMR2_Input_val = packed struct {
/// CC3S [0:1]
/// Capture/compare 3
CC3S: u2 = 0,
/// IC3PSC [2:3]
/// Input capture 3 prescaler
IC3PSC: u2 = 0,
/// IC3F [4:7]
/// Input capture 3 filter
IC3F: u4 = 0,
/// CC4S [8:9]
/// Capture/Compare 4
CC4S: u2 = 0,
/// IC4PSC [10:11]
/// Input capture 4 prescaler
IC4PSC: u2 = 0,
/// IC4F [12:15]
/// Input capture 4 filter
IC4F: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 2 (input
pub const CCMR2_Input = MMIO(CCMR2_Input_val).init(base_address + 0x1c);

/// CCER
const CCER_val = packed struct {
/// CC1E [0:0]
/// Capture/Compare 1 output
CC1E: u1 = 0,
/// CC1P [1:1]
/// Capture/Compare 1 output
CC1P: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// CC1NP [3:3]
/// Capture/Compare 1 output
CC1NP: u1 = 0,
/// CC2E [4:4]
/// Capture/Compare 2 output
CC2E: u1 = 0,
/// CC2P [5:5]
/// Capture/Compare 2 output
CC2P: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// CC2NP [7:7]
/// Capture/Compare 2 output
CC2NP: u1 = 0,
/// CC3E [8:8]
/// Capture/Compare 3 output
CC3E: u1 = 0,
/// CC3P [9:9]
/// Capture/Compare 3 output
CC3P: u1 = 0,
/// unused [10:10]
_unused10: u1 = 0,
/// CC3NP [11:11]
/// Capture/Compare 3 output
CC3NP: u1 = 0,
/// CC4E [12:12]
/// Capture/Compare 4 output
CC4E: u1 = 0,
/// CC4P [13:13]
/// Capture/Compare 3 output
CC4P: u1 = 0,
/// unused [14:14]
_unused14: u1 = 0,
/// CC4NP [15:15]
/// Capture/Compare 4 output
CC4NP: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare enable
pub const CCER = MMIO(CCER_val).init(base_address + 0x20);

/// CNT
const CNT_val = packed struct {
/// CNT_L [0:15]
/// Low counter value
CNT_L: u16 = 0,
/// CNT_H [16:31]
/// High counter value
CNT_H: u16 = 0,
};
/// counter
pub const CNT = MMIO(CNT_val).init(base_address + 0x24);

/// PSC
const PSC_val = packed struct {
/// PSC [0:15]
/// Prescaler value
PSC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// prescaler
pub const PSC = MMIO(PSC_val).init(base_address + 0x28);

/// ARR
const ARR_val = packed struct {
/// ARR_L [0:15]
/// Low Auto-reload value
ARR_L: u16 = 0,
/// ARR_H [16:31]
/// High Auto-reload value
ARR_H: u16 = 0,
};
/// auto-reload register
pub const ARR = MMIO(ARR_val).init(base_address + 0x2c);

/// CCR1
const CCR1_val = packed struct {
/// CCR1_L [0:15]
/// Low Capture/Compare 1
CCR1_L: u16 = 0,
/// CCR1_H [16:31]
/// High Capture/Compare 1
CCR1_H: u16 = 0,
};
/// capture/compare register 1
pub const CCR1 = MMIO(CCR1_val).init(base_address + 0x34);

/// CCR2
const CCR2_val = packed struct {
/// CCR2_L [0:15]
/// Low Capture/Compare 2
CCR2_L: u16 = 0,
/// CCR2_H [16:31]
/// High Capture/Compare 2
CCR2_H: u16 = 0,
};
/// capture/compare register 2
pub const CCR2 = MMIO(CCR2_val).init(base_address + 0x38);

/// CCR3
const CCR3_val = packed struct {
/// CCR3_L [0:15]
/// Low Capture/Compare value
CCR3_L: u16 = 0,
/// CCR3_H [16:31]
/// High Capture/Compare value
CCR3_H: u16 = 0,
};
/// capture/compare register 3
pub const CCR3 = MMIO(CCR3_val).init(base_address + 0x3c);

/// CCR4
const CCR4_val = packed struct {
/// CCR4_L [0:15]
/// Low Capture/Compare value
CCR4_L: u16 = 0,
/// CCR4_H [16:31]
/// High Capture/Compare value
CCR4_H: u16 = 0,
};
/// capture/compare register 4
pub const CCR4 = MMIO(CCR4_val).init(base_address + 0x40);

/// DCR
const DCR_val = packed struct {
/// DBA [0:4]
/// DMA base address
DBA: u5 = 0,
/// unused [5:7]
_unused5: u3 = 0,
/// DBL [8:12]
/// DMA burst length
DBL: u5 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA control register
pub const DCR = MMIO(DCR_val).init(base_address + 0x48);

/// DMAR
const DMAR_val = packed struct {
/// DMAB [0:15]
/// DMA register for burst
DMAB: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA address for full transfer
pub const DMAR = MMIO(DMAR_val).init(base_address + 0x4c);
};

/// General purpose timers
pub const TIM4 = struct {

const base_address = 0x40000800;
/// CR1
const CR1_val = packed struct {
/// CEN [0:0]
/// Counter enable
CEN: u1 = 0,
/// UDIS [1:1]
/// Update disable
UDIS: u1 = 0,
/// URS [2:2]
/// Update request source
URS: u1 = 0,
/// OPM [3:3]
/// One-pulse mode
OPM: u1 = 0,
/// DIR [4:4]
/// Direction
DIR: u1 = 0,
/// CMS [5:6]
/// Center-aligned mode
CMS: u2 = 0,
/// ARPE [7:7]
/// Auto-reload preload enable
ARPE: u1 = 0,
/// CKD [8:9]
/// Clock division
CKD: u2 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// unused [0:2]
_unused0: u3 = 0,
/// CCDS [3:3]
/// Capture/compare DMA
CCDS: u1 = 0,
/// MMS [4:6]
/// Master mode selection
MMS: u3 = 0,
/// TI1S [7:7]
/// TI1 selection
TI1S: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// SMCR
const SMCR_val = packed struct {
/// SMS [0:2]
/// Slave mode selection
SMS: u3 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// TS [4:6]
/// Trigger selection
TS: u3 = 0,
/// MSM [7:7]
/// Master/Slave mode
MSM: u1 = 0,
/// ETF [8:11]
/// External trigger filter
ETF: u4 = 0,
/// ETPS [12:13]
/// External trigger prescaler
ETPS: u2 = 0,
/// ECE [14:14]
/// External clock enable
ECE: u1 = 0,
/// ETP [15:15]
/// External trigger polarity
ETP: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// slave mode control register
pub const SMCR = MMIO(SMCR_val).init(base_address + 0x8);

/// DIER
const DIER_val = packed struct {
/// UIE [0:0]
/// Update interrupt enable
UIE: u1 = 0,
/// CC1IE [1:1]
/// Capture/Compare 1 interrupt
CC1IE: u1 = 0,
/// CC2IE [2:2]
/// Capture/Compare 2 interrupt
CC2IE: u1 = 0,
/// CC3IE [3:3]
/// Capture/Compare 3 interrupt
CC3IE: u1 = 0,
/// CC4IE [4:4]
/// Capture/Compare 4 interrupt
CC4IE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// TIE [6:6]
/// Trigger interrupt enable
TIE: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// UDE [8:8]
/// Update DMA request enable
UDE: u1 = 0,
/// CC1DE [9:9]
/// Capture/Compare 1 DMA request
CC1DE: u1 = 0,
/// CC2DE [10:10]
/// Capture/Compare 2 DMA request
CC2DE: u1 = 0,
/// CC3DE [11:11]
/// Capture/Compare 3 DMA request
CC3DE: u1 = 0,
/// CC4DE [12:12]
/// Capture/Compare 4 DMA request
CC4DE: u1 = 0,
/// unused [13:13]
_unused13: u1 = 0,
/// TDE [14:14]
/// Trigger DMA request enable
TDE: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA/Interrupt enable register
pub const DIER = MMIO(DIER_val).init(base_address + 0xc);

/// SR
const SR_val = packed struct {
/// UIF [0:0]
/// Update interrupt flag
UIF: u1 = 0,
/// CC1IF [1:1]
/// Capture/compare 1 interrupt
CC1IF: u1 = 0,
/// CC2IF [2:2]
/// Capture/Compare 2 interrupt
CC2IF: u1 = 0,
/// CC3IF [3:3]
/// Capture/Compare 3 interrupt
CC3IF: u1 = 0,
/// CC4IF [4:4]
/// Capture/Compare 4 interrupt
CC4IF: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// TIF [6:6]
/// Trigger interrupt flag
TIF: u1 = 0,
/// unused [7:8]
_unused7: u1 = 0,
_unused8: u1 = 0,
/// CC1OF [9:9]
/// Capture/Compare 1 overcapture
CC1OF: u1 = 0,
/// CC2OF [10:10]
/// Capture/compare 2 overcapture
CC2OF: u1 = 0,
/// CC3OF [11:11]
/// Capture/Compare 3 overcapture
CC3OF: u1 = 0,
/// CC4OF [12:12]
/// Capture/Compare 4 overcapture
CC4OF: u1 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x10);

/// EGR
const EGR_val = packed struct {
/// UG [0:0]
/// Update generation
UG: u1 = 0,
/// CC1G [1:1]
/// Capture/compare 1
CC1G: u1 = 0,
/// CC2G [2:2]
/// Capture/compare 2
CC2G: u1 = 0,
/// CC3G [3:3]
/// Capture/compare 3
CC3G: u1 = 0,
/// CC4G [4:4]
/// Capture/compare 4
CC4G: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// TG [6:6]
/// Trigger generation
TG: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// event generation register
pub const EGR = MMIO(EGR_val).init(base_address + 0x14);

/// CCMR1_Output
const CCMR1_Output_val = packed struct {
/// CC1S [0:1]
/// CC1S
CC1S: u2 = 0,
/// OC1FE [2:2]
/// OC1FE
OC1FE: u1 = 0,
/// OC1PE [3:3]
/// OC1PE
OC1PE: u1 = 0,
/// OC1M [4:6]
/// OC1M
OC1M: u3 = 0,
/// OC1CE [7:7]
/// OC1CE
OC1CE: u1 = 0,
/// CC2S [8:9]
/// CC2S
CC2S: u2 = 0,
/// OC2FE [10:10]
/// OC2FE
OC2FE: u1 = 0,
/// OC2PE [11:11]
/// OC2PE
OC2PE: u1 = 0,
/// OC2M [12:14]
/// OC2M
OC2M: u3 = 0,
/// OC2CE [15:15]
/// OC2CE
OC2CE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (output
pub const CCMR1_Output = MMIO(CCMR1_Output_val).init(base_address + 0x18);

/// CCMR1_Input
const CCMR1_Input_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// ICPCS [2:3]
/// Input capture 1 prescaler
ICPCS: u2 = 0,
/// IC1F [4:7]
/// Input capture 1 filter
IC1F: u4 = 0,
/// CC2S [8:9]
/// Capture/Compare 2
CC2S: u2 = 0,
/// IC2PCS [10:11]
/// Input capture 2 prescaler
IC2PCS: u2 = 0,
/// IC2F [12:15]
/// Input capture 2 filter
IC2F: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (input
pub const CCMR1_Input = MMIO(CCMR1_Input_val).init(base_address + 0x18);

/// CCMR2_Output
const CCMR2_Output_val = packed struct {
/// CC3S [0:1]
/// CC3S
CC3S: u2 = 0,
/// OC3FE [2:2]
/// OC3FE
OC3FE: u1 = 0,
/// OC3PE [3:3]
/// OC3PE
OC3PE: u1 = 0,
/// OC3M [4:6]
/// OC3M
OC3M: u3 = 0,
/// OC3CE [7:7]
/// OC3CE
OC3CE: u1 = 0,
/// CC4S [8:9]
/// CC4S
CC4S: u2 = 0,
/// OC4FE [10:10]
/// OC4FE
OC4FE: u1 = 0,
/// OC4PE [11:11]
/// OC4PE
OC4PE: u1 = 0,
/// OC4M [12:14]
/// OC4M
OC4M: u3 = 0,
/// O24CE [15:15]
/// O24CE
O24CE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 2 (output
pub const CCMR2_Output = MMIO(CCMR2_Output_val).init(base_address + 0x1c);

/// CCMR2_Input
const CCMR2_Input_val = packed struct {
/// CC3S [0:1]
/// Capture/compare 3
CC3S: u2 = 0,
/// IC3PSC [2:3]
/// Input capture 3 prescaler
IC3PSC: u2 = 0,
/// IC3F [4:7]
/// Input capture 3 filter
IC3F: u4 = 0,
/// CC4S [8:9]
/// Capture/Compare 4
CC4S: u2 = 0,
/// IC4PSC [10:11]
/// Input capture 4 prescaler
IC4PSC: u2 = 0,
/// IC4F [12:15]
/// Input capture 4 filter
IC4F: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 2 (input
pub const CCMR2_Input = MMIO(CCMR2_Input_val).init(base_address + 0x1c);

/// CCER
const CCER_val = packed struct {
/// CC1E [0:0]
/// Capture/Compare 1 output
CC1E: u1 = 0,
/// CC1P [1:1]
/// Capture/Compare 1 output
CC1P: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// CC1NP [3:3]
/// Capture/Compare 1 output
CC1NP: u1 = 0,
/// CC2E [4:4]
/// Capture/Compare 2 output
CC2E: u1 = 0,
/// CC2P [5:5]
/// Capture/Compare 2 output
CC2P: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// CC2NP [7:7]
/// Capture/Compare 2 output
CC2NP: u1 = 0,
/// CC3E [8:8]
/// Capture/Compare 3 output
CC3E: u1 = 0,
/// CC3P [9:9]
/// Capture/Compare 3 output
CC3P: u1 = 0,
/// unused [10:10]
_unused10: u1 = 0,
/// CC3NP [11:11]
/// Capture/Compare 3 output
CC3NP: u1 = 0,
/// CC4E [12:12]
/// Capture/Compare 4 output
CC4E: u1 = 0,
/// CC4P [13:13]
/// Capture/Compare 3 output
CC4P: u1 = 0,
/// unused [14:14]
_unused14: u1 = 0,
/// CC4NP [15:15]
/// Capture/Compare 4 output
CC4NP: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare enable
pub const CCER = MMIO(CCER_val).init(base_address + 0x20);

/// CNT
const CNT_val = packed struct {
/// CNT_L [0:15]
/// Low counter value
CNT_L: u16 = 0,
/// CNT_H [16:31]
/// High counter value
CNT_H: u16 = 0,
};
/// counter
pub const CNT = MMIO(CNT_val).init(base_address + 0x24);

/// PSC
const PSC_val = packed struct {
/// PSC [0:15]
/// Prescaler value
PSC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// prescaler
pub const PSC = MMIO(PSC_val).init(base_address + 0x28);

/// ARR
const ARR_val = packed struct {
/// ARR_L [0:15]
/// Low Auto-reload value
ARR_L: u16 = 0,
/// ARR_H [16:31]
/// High Auto-reload value
ARR_H: u16 = 0,
};
/// auto-reload register
pub const ARR = MMIO(ARR_val).init(base_address + 0x2c);

/// CCR1
const CCR1_val = packed struct {
/// CCR1_L [0:15]
/// Low Capture/Compare 1
CCR1_L: u16 = 0,
/// CCR1_H [16:31]
/// High Capture/Compare 1
CCR1_H: u16 = 0,
};
/// capture/compare register 1
pub const CCR1 = MMIO(CCR1_val).init(base_address + 0x34);

/// CCR2
const CCR2_val = packed struct {
/// CCR2_L [0:15]
/// Low Capture/Compare 2
CCR2_L: u16 = 0,
/// CCR2_H [16:31]
/// High Capture/Compare 2
CCR2_H: u16 = 0,
};
/// capture/compare register 2
pub const CCR2 = MMIO(CCR2_val).init(base_address + 0x38);

/// CCR3
const CCR3_val = packed struct {
/// CCR3_L [0:15]
/// Low Capture/Compare value
CCR3_L: u16 = 0,
/// CCR3_H [16:31]
/// High Capture/Compare value
CCR3_H: u16 = 0,
};
/// capture/compare register 3
pub const CCR3 = MMIO(CCR3_val).init(base_address + 0x3c);

/// CCR4
const CCR4_val = packed struct {
/// CCR4_L [0:15]
/// Low Capture/Compare value
CCR4_L: u16 = 0,
/// CCR4_H [16:31]
/// High Capture/Compare value
CCR4_H: u16 = 0,
};
/// capture/compare register 4
pub const CCR4 = MMIO(CCR4_val).init(base_address + 0x40);

/// DCR
const DCR_val = packed struct {
/// DBA [0:4]
/// DMA base address
DBA: u5 = 0,
/// unused [5:7]
_unused5: u3 = 0,
/// DBL [8:12]
/// DMA burst length
DBL: u5 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA control register
pub const DCR = MMIO(DCR_val).init(base_address + 0x48);

/// DMAR
const DMAR_val = packed struct {
/// DMAB [0:15]
/// DMA register for burst
DMAB: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA address for full transfer
pub const DMAR = MMIO(DMAR_val).init(base_address + 0x4c);
};

/// General-purpose-timers
pub const TIM5 = struct {

const base_address = 0x40000c00;
/// CR1
const CR1_val = packed struct {
/// CEN [0:0]
/// Counter enable
CEN: u1 = 0,
/// UDIS [1:1]
/// Update disable
UDIS: u1 = 0,
/// URS [2:2]
/// Update request source
URS: u1 = 0,
/// OPM [3:3]
/// One-pulse mode
OPM: u1 = 0,
/// DIR [4:4]
/// Direction
DIR: u1 = 0,
/// CMS [5:6]
/// Center-aligned mode
CMS: u2 = 0,
/// ARPE [7:7]
/// Auto-reload preload enable
ARPE: u1 = 0,
/// CKD [8:9]
/// Clock division
CKD: u2 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// unused [0:2]
_unused0: u3 = 0,
/// CCDS [3:3]
/// Capture/compare DMA
CCDS: u1 = 0,
/// MMS [4:6]
/// Master mode selection
MMS: u3 = 0,
/// TI1S [7:7]
/// TI1 selection
TI1S: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// SMCR
const SMCR_val = packed struct {
/// SMS [0:2]
/// Slave mode selection
SMS: u3 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// TS [4:6]
/// Trigger selection
TS: u3 = 0,
/// MSM [7:7]
/// Master/Slave mode
MSM: u1 = 0,
/// ETF [8:11]
/// External trigger filter
ETF: u4 = 0,
/// ETPS [12:13]
/// External trigger prescaler
ETPS: u2 = 0,
/// ECE [14:14]
/// External clock enable
ECE: u1 = 0,
/// ETP [15:15]
/// External trigger polarity
ETP: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// slave mode control register
pub const SMCR = MMIO(SMCR_val).init(base_address + 0x8);

/// DIER
const DIER_val = packed struct {
/// UIE [0:0]
/// Update interrupt enable
UIE: u1 = 0,
/// CC1IE [1:1]
/// Capture/Compare 1 interrupt
CC1IE: u1 = 0,
/// CC2IE [2:2]
/// Capture/Compare 2 interrupt
CC2IE: u1 = 0,
/// CC3IE [3:3]
/// Capture/Compare 3 interrupt
CC3IE: u1 = 0,
/// CC4IE [4:4]
/// Capture/Compare 4 interrupt
CC4IE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// TIE [6:6]
/// Trigger interrupt enable
TIE: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// UDE [8:8]
/// Update DMA request enable
UDE: u1 = 0,
/// CC1DE [9:9]
/// Capture/Compare 1 DMA request
CC1DE: u1 = 0,
/// CC2DE [10:10]
/// Capture/Compare 2 DMA request
CC2DE: u1 = 0,
/// CC3DE [11:11]
/// Capture/Compare 3 DMA request
CC3DE: u1 = 0,
/// CC4DE [12:12]
/// Capture/Compare 4 DMA request
CC4DE: u1 = 0,
/// unused [13:13]
_unused13: u1 = 0,
/// TDE [14:14]
/// Trigger DMA request enable
TDE: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA/Interrupt enable register
pub const DIER = MMIO(DIER_val).init(base_address + 0xc);

/// SR
const SR_val = packed struct {
/// UIF [0:0]
/// Update interrupt flag
UIF: u1 = 0,
/// CC1IF [1:1]
/// Capture/compare 1 interrupt
CC1IF: u1 = 0,
/// CC2IF [2:2]
/// Capture/Compare 2 interrupt
CC2IF: u1 = 0,
/// CC3IF [3:3]
/// Capture/Compare 3 interrupt
CC3IF: u1 = 0,
/// CC4IF [4:4]
/// Capture/Compare 4 interrupt
CC4IF: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// TIF [6:6]
/// Trigger interrupt flag
TIF: u1 = 0,
/// unused [7:8]
_unused7: u1 = 0,
_unused8: u1 = 0,
/// CC1OF [9:9]
/// Capture/Compare 1 overcapture
CC1OF: u1 = 0,
/// CC2OF [10:10]
/// Capture/compare 2 overcapture
CC2OF: u1 = 0,
/// CC3OF [11:11]
/// Capture/Compare 3 overcapture
CC3OF: u1 = 0,
/// CC4OF [12:12]
/// Capture/Compare 4 overcapture
CC4OF: u1 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x10);

/// EGR
const EGR_val = packed struct {
/// UG [0:0]
/// Update generation
UG: u1 = 0,
/// CC1G [1:1]
/// Capture/compare 1
CC1G: u1 = 0,
/// CC2G [2:2]
/// Capture/compare 2
CC2G: u1 = 0,
/// CC3G [3:3]
/// Capture/compare 3
CC3G: u1 = 0,
/// CC4G [4:4]
/// Capture/compare 4
CC4G: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// TG [6:6]
/// Trigger generation
TG: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// event generation register
pub const EGR = MMIO(EGR_val).init(base_address + 0x14);

/// CCMR1_Output
const CCMR1_Output_val = packed struct {
/// CC1S [0:1]
/// CC1S
CC1S: u2 = 0,
/// OC1FE [2:2]
/// OC1FE
OC1FE: u1 = 0,
/// OC1PE [3:3]
/// OC1PE
OC1PE: u1 = 0,
/// OC1M [4:6]
/// OC1M
OC1M: u3 = 0,
/// OC1CE [7:7]
/// OC1CE
OC1CE: u1 = 0,
/// CC2S [8:9]
/// CC2S
CC2S: u2 = 0,
/// OC2FE [10:10]
/// OC2FE
OC2FE: u1 = 0,
/// OC2PE [11:11]
/// OC2PE
OC2PE: u1 = 0,
/// OC2M [12:14]
/// OC2M
OC2M: u3 = 0,
/// OC2CE [15:15]
/// OC2CE
OC2CE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (output
pub const CCMR1_Output = MMIO(CCMR1_Output_val).init(base_address + 0x18);

/// CCMR1_Input
const CCMR1_Input_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// ICPCS [2:3]
/// Input capture 1 prescaler
ICPCS: u2 = 0,
/// IC1F [4:7]
/// Input capture 1 filter
IC1F: u4 = 0,
/// CC2S [8:9]
/// Capture/Compare 2
CC2S: u2 = 0,
/// IC2PCS [10:11]
/// Input capture 2 prescaler
IC2PCS: u2 = 0,
/// IC2F [12:15]
/// Input capture 2 filter
IC2F: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (input
pub const CCMR1_Input = MMIO(CCMR1_Input_val).init(base_address + 0x18);

/// CCMR2_Output
const CCMR2_Output_val = packed struct {
/// CC3S [0:1]
/// CC3S
CC3S: u2 = 0,
/// OC3FE [2:2]
/// OC3FE
OC3FE: u1 = 0,
/// OC3PE [3:3]
/// OC3PE
OC3PE: u1 = 0,
/// OC3M [4:6]
/// OC3M
OC3M: u3 = 0,
/// OC3CE [7:7]
/// OC3CE
OC3CE: u1 = 0,
/// CC4S [8:9]
/// CC4S
CC4S: u2 = 0,
/// OC4FE [10:10]
/// OC4FE
OC4FE: u1 = 0,
/// OC4PE [11:11]
/// OC4PE
OC4PE: u1 = 0,
/// OC4M [12:14]
/// OC4M
OC4M: u3 = 0,
/// O24CE [15:15]
/// O24CE
O24CE: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 2 (output
pub const CCMR2_Output = MMIO(CCMR2_Output_val).init(base_address + 0x1c);

/// CCMR2_Input
const CCMR2_Input_val = packed struct {
/// CC3S [0:1]
/// Capture/compare 3
CC3S: u2 = 0,
/// IC3PSC [2:3]
/// Input capture 3 prescaler
IC3PSC: u2 = 0,
/// IC3F [4:7]
/// Input capture 3 filter
IC3F: u4 = 0,
/// CC4S [8:9]
/// Capture/Compare 4
CC4S: u2 = 0,
/// IC4PSC [10:11]
/// Input capture 4 prescaler
IC4PSC: u2 = 0,
/// IC4F [12:15]
/// Input capture 4 filter
IC4F: u4 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 2 (input
pub const CCMR2_Input = MMIO(CCMR2_Input_val).init(base_address + 0x1c);

/// CCER
const CCER_val = packed struct {
/// CC1E [0:0]
/// Capture/Compare 1 output
CC1E: u1 = 0,
/// CC1P [1:1]
/// Capture/Compare 1 output
CC1P: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// CC1NP [3:3]
/// Capture/Compare 1 output
CC1NP: u1 = 0,
/// CC2E [4:4]
/// Capture/Compare 2 output
CC2E: u1 = 0,
/// CC2P [5:5]
/// Capture/Compare 2 output
CC2P: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// CC2NP [7:7]
/// Capture/Compare 2 output
CC2NP: u1 = 0,
/// CC3E [8:8]
/// Capture/Compare 3 output
CC3E: u1 = 0,
/// CC3P [9:9]
/// Capture/Compare 3 output
CC3P: u1 = 0,
/// unused [10:10]
_unused10: u1 = 0,
/// CC3NP [11:11]
/// Capture/Compare 3 output
CC3NP: u1 = 0,
/// CC4E [12:12]
/// Capture/Compare 4 output
CC4E: u1 = 0,
/// CC4P [13:13]
/// Capture/Compare 3 output
CC4P: u1 = 0,
/// unused [14:14]
_unused14: u1 = 0,
/// CC4NP [15:15]
/// Capture/Compare 4 output
CC4NP: u1 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare enable
pub const CCER = MMIO(CCER_val).init(base_address + 0x20);

/// CNT
const CNT_val = packed struct {
/// CNT_L [0:15]
/// Low counter value
CNT_L: u16 = 0,
/// CNT_H [16:31]
/// High counter value
CNT_H: u16 = 0,
};
/// counter
pub const CNT = MMIO(CNT_val).init(base_address + 0x24);

/// PSC
const PSC_val = packed struct {
/// PSC [0:15]
/// Prescaler value
PSC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// prescaler
pub const PSC = MMIO(PSC_val).init(base_address + 0x28);

/// ARR
const ARR_val = packed struct {
/// ARR_L [0:15]
/// Low Auto-reload value
ARR_L: u16 = 0,
/// ARR_H [16:31]
/// High Auto-reload value
ARR_H: u16 = 0,
};
/// auto-reload register
pub const ARR = MMIO(ARR_val).init(base_address + 0x2c);

/// CCR1
const CCR1_val = packed struct {
/// CCR1_L [0:15]
/// Low Capture/Compare 1
CCR1_L: u16 = 0,
/// CCR1_H [16:31]
/// High Capture/Compare 1
CCR1_H: u16 = 0,
};
/// capture/compare register 1
pub const CCR1 = MMIO(CCR1_val).init(base_address + 0x34);

/// CCR2
const CCR2_val = packed struct {
/// CCR2_L [0:15]
/// Low Capture/Compare 2
CCR2_L: u16 = 0,
/// CCR2_H [16:31]
/// High Capture/Compare 2
CCR2_H: u16 = 0,
};
/// capture/compare register 2
pub const CCR2 = MMIO(CCR2_val).init(base_address + 0x38);

/// CCR3
const CCR3_val = packed struct {
/// CCR3_L [0:15]
/// Low Capture/Compare value
CCR3_L: u16 = 0,
/// CCR3_H [16:31]
/// High Capture/Compare value
CCR3_H: u16 = 0,
};
/// capture/compare register 3
pub const CCR3 = MMIO(CCR3_val).init(base_address + 0x3c);

/// CCR4
const CCR4_val = packed struct {
/// CCR4_L [0:15]
/// Low Capture/Compare value
CCR4_L: u16 = 0,
/// CCR4_H [16:31]
/// High Capture/Compare value
CCR4_H: u16 = 0,
};
/// capture/compare register 4
pub const CCR4 = MMIO(CCR4_val).init(base_address + 0x40);

/// DCR
const DCR_val = packed struct {
/// DBA [0:4]
/// DMA base address
DBA: u5 = 0,
/// unused [5:7]
_unused5: u3 = 0,
/// DBL [8:12]
/// DMA burst length
DBL: u5 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA control register
pub const DCR = MMIO(DCR_val).init(base_address + 0x48);

/// DMAR
const DMAR_val = packed struct {
/// DMAB [0:15]
/// DMA register for burst
DMAB: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA address for full transfer
pub const DMAR = MMIO(DMAR_val).init(base_address + 0x4c);

/// OR
const OR_val = packed struct {
/// unused [0:5]
_unused0: u6 = 0,
/// IT4_RMP [6:7]
/// Timer Input 4 remap
IT4_RMP: u2 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// TIM5 option register
pub const OR = MMIO(OR_val).init(base_address + 0x50);
};

/// General purpose timers
pub const TIM9 = struct {

const base_address = 0x40014000;
/// CR1
const CR1_val = packed struct {
/// CEN [0:0]
/// Counter enable
CEN: u1 = 0,
/// UDIS [1:1]
/// Update disable
UDIS: u1 = 0,
/// URS [2:2]
/// Update request source
URS: u1 = 0,
/// OPM [3:3]
/// One-pulse mode
OPM: u1 = 0,
/// unused [4:6]
_unused4: u3 = 0,
/// ARPE [7:7]
/// Auto-reload preload enable
ARPE: u1 = 0,
/// CKD [8:9]
/// Clock division
CKD: u2 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// unused [0:3]
_unused0: u4 = 0,
/// MMS [4:6]
/// Master mode selection
MMS: u3 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// SMCR
const SMCR_val = packed struct {
/// SMS [0:2]
/// Slave mode selection
SMS: u3 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// TS [4:6]
/// Trigger selection
TS: u3 = 0,
/// MSM [7:7]
/// Master/Slave mode
MSM: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// slave mode control register
pub const SMCR = MMIO(SMCR_val).init(base_address + 0x8);

/// DIER
const DIER_val = packed struct {
/// UIE [0:0]
/// Update interrupt enable
UIE: u1 = 0,
/// CC1IE [1:1]
/// Capture/Compare 1 interrupt
CC1IE: u1 = 0,
/// CC2IE [2:2]
/// Capture/Compare 2 interrupt
CC2IE: u1 = 0,
/// unused [3:5]
_unused3: u3 = 0,
/// TIE [6:6]
/// Trigger interrupt enable
TIE: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA/Interrupt enable register
pub const DIER = MMIO(DIER_val).init(base_address + 0xc);

/// SR
const SR_val = packed struct {
/// UIF [0:0]
/// Update interrupt flag
UIF: u1 = 0,
/// CC1IF [1:1]
/// Capture/compare 1 interrupt
CC1IF: u1 = 0,
/// CC2IF [2:2]
/// Capture/Compare 2 interrupt
CC2IF: u1 = 0,
/// unused [3:5]
_unused3: u3 = 0,
/// TIF [6:6]
/// Trigger interrupt flag
TIF: u1 = 0,
/// unused [7:8]
_unused7: u1 = 0,
_unused8: u1 = 0,
/// CC1OF [9:9]
/// Capture/Compare 1 overcapture
CC1OF: u1 = 0,
/// CC2OF [10:10]
/// Capture/compare 2 overcapture
CC2OF: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x10);

/// EGR
const EGR_val = packed struct {
/// UG [0:0]
/// Update generation
UG: u1 = 0,
/// CC1G [1:1]
/// Capture/compare 1
CC1G: u1 = 0,
/// CC2G [2:2]
/// Capture/compare 2
CC2G: u1 = 0,
/// unused [3:5]
_unused3: u3 = 0,
/// TG [6:6]
/// Trigger generation
TG: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// event generation register
pub const EGR = MMIO(EGR_val).init(base_address + 0x14);

/// CCMR1_Output
const CCMR1_Output_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// OC1FE [2:2]
/// Output Compare 1 fast
OC1FE: u1 = 0,
/// OC1PE [3:3]
/// Output Compare 1 preload
OC1PE: u1 = 0,
/// OC1M [4:6]
/// Output Compare 1 mode
OC1M: u3 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// CC2S [8:9]
/// Capture/Compare 2
CC2S: u2 = 0,
/// OC2FE [10:10]
/// Output Compare 2 fast
OC2FE: u1 = 0,
/// OC2PE [11:11]
/// Output Compare 2 preload
OC2PE: u1 = 0,
/// OC2M [12:14]
/// Output Compare 2 mode
OC2M: u3 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (output
pub const CCMR1_Output = MMIO(CCMR1_Output_val).init(base_address + 0x18);

/// CCMR1_Input
const CCMR1_Input_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// ICPCS [2:3]
/// Input capture 1 prescaler
ICPCS: u2 = 0,
/// IC1F [4:6]
/// Input capture 1 filter
IC1F: u3 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// CC2S [8:9]
/// Capture/Compare 2
CC2S: u2 = 0,
/// IC2PCS [10:11]
/// Input capture 2 prescaler
IC2PCS: u2 = 0,
/// IC2F [12:14]
/// Input capture 2 filter
IC2F: u3 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (input
pub const CCMR1_Input = MMIO(CCMR1_Input_val).init(base_address + 0x18);

/// CCER
const CCER_val = packed struct {
/// CC1E [0:0]
/// Capture/Compare 1 output
CC1E: u1 = 0,
/// CC1P [1:1]
/// Capture/Compare 1 output
CC1P: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// CC1NP [3:3]
/// Capture/Compare 1 output
CC1NP: u1 = 0,
/// CC2E [4:4]
/// Capture/Compare 2 output
CC2E: u1 = 0,
/// CC2P [5:5]
/// Capture/Compare 2 output
CC2P: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// CC2NP [7:7]
/// Capture/Compare 2 output
CC2NP: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare enable
pub const CCER = MMIO(CCER_val).init(base_address + 0x20);

/// CNT
const CNT_val = packed struct {
/// CNT [0:15]
/// counter value
CNT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// counter
pub const CNT = MMIO(CNT_val).init(base_address + 0x24);

/// PSC
const PSC_val = packed struct {
/// PSC [0:15]
/// Prescaler value
PSC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// prescaler
pub const PSC = MMIO(PSC_val).init(base_address + 0x28);

/// ARR
const ARR_val = packed struct {
/// ARR [0:15]
/// Auto-reload value
ARR: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// auto-reload register
pub const ARR = MMIO(ARR_val).init(base_address + 0x2c);

/// CCR1
const CCR1_val = packed struct {
/// CCR1 [0:15]
/// Capture/Compare 1 value
CCR1: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 1
pub const CCR1 = MMIO(CCR1_val).init(base_address + 0x34);

/// CCR2
const CCR2_val = packed struct {
/// CCR2 [0:15]
/// Capture/Compare 2 value
CCR2: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 2
pub const CCR2 = MMIO(CCR2_val).init(base_address + 0x38);
};

/// General purpose timers
pub const TIM12 = struct {

const base_address = 0x40001800;
/// CR1
const CR1_val = packed struct {
/// CEN [0:0]
/// Counter enable
CEN: u1 = 0,
/// UDIS [1:1]
/// Update disable
UDIS: u1 = 0,
/// URS [2:2]
/// Update request source
URS: u1 = 0,
/// OPM [3:3]
/// One-pulse mode
OPM: u1 = 0,
/// unused [4:6]
_unused4: u3 = 0,
/// ARPE [7:7]
/// Auto-reload preload enable
ARPE: u1 = 0,
/// CKD [8:9]
/// Clock division
CKD: u2 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// unused [0:3]
_unused0: u4 = 0,
/// MMS [4:6]
/// Master mode selection
MMS: u3 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// SMCR
const SMCR_val = packed struct {
/// SMS [0:2]
/// Slave mode selection
SMS: u3 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// TS [4:6]
/// Trigger selection
TS: u3 = 0,
/// MSM [7:7]
/// Master/Slave mode
MSM: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// slave mode control register
pub const SMCR = MMIO(SMCR_val).init(base_address + 0x8);

/// DIER
const DIER_val = packed struct {
/// UIE [0:0]
/// Update interrupt enable
UIE: u1 = 0,
/// CC1IE [1:1]
/// Capture/Compare 1 interrupt
CC1IE: u1 = 0,
/// CC2IE [2:2]
/// Capture/Compare 2 interrupt
CC2IE: u1 = 0,
/// unused [3:5]
_unused3: u3 = 0,
/// TIE [6:6]
/// Trigger interrupt enable
TIE: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA/Interrupt enable register
pub const DIER = MMIO(DIER_val).init(base_address + 0xc);

/// SR
const SR_val = packed struct {
/// UIF [0:0]
/// Update interrupt flag
UIF: u1 = 0,
/// CC1IF [1:1]
/// Capture/compare 1 interrupt
CC1IF: u1 = 0,
/// CC2IF [2:2]
/// Capture/Compare 2 interrupt
CC2IF: u1 = 0,
/// unused [3:5]
_unused3: u3 = 0,
/// TIF [6:6]
/// Trigger interrupt flag
TIF: u1 = 0,
/// unused [7:8]
_unused7: u1 = 0,
_unused8: u1 = 0,
/// CC1OF [9:9]
/// Capture/Compare 1 overcapture
CC1OF: u1 = 0,
/// CC2OF [10:10]
/// Capture/compare 2 overcapture
CC2OF: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x10);

/// EGR
const EGR_val = packed struct {
/// UG [0:0]
/// Update generation
UG: u1 = 0,
/// CC1G [1:1]
/// Capture/compare 1
CC1G: u1 = 0,
/// CC2G [2:2]
/// Capture/compare 2
CC2G: u1 = 0,
/// unused [3:5]
_unused3: u3 = 0,
/// TG [6:6]
/// Trigger generation
TG: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// event generation register
pub const EGR = MMIO(EGR_val).init(base_address + 0x14);

/// CCMR1_Output
const CCMR1_Output_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// OC1FE [2:2]
/// Output Compare 1 fast
OC1FE: u1 = 0,
/// OC1PE [3:3]
/// Output Compare 1 preload
OC1PE: u1 = 0,
/// OC1M [4:6]
/// Output Compare 1 mode
OC1M: u3 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// CC2S [8:9]
/// Capture/Compare 2
CC2S: u2 = 0,
/// OC2FE [10:10]
/// Output Compare 2 fast
OC2FE: u1 = 0,
/// OC2PE [11:11]
/// Output Compare 2 preload
OC2PE: u1 = 0,
/// OC2M [12:14]
/// Output Compare 2 mode
OC2M: u3 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (output
pub const CCMR1_Output = MMIO(CCMR1_Output_val).init(base_address + 0x18);

/// CCMR1_Input
const CCMR1_Input_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// ICPCS [2:3]
/// Input capture 1 prescaler
ICPCS: u2 = 0,
/// IC1F [4:6]
/// Input capture 1 filter
IC1F: u3 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// CC2S [8:9]
/// Capture/Compare 2
CC2S: u2 = 0,
/// IC2PCS [10:11]
/// Input capture 2 prescaler
IC2PCS: u2 = 0,
/// IC2F [12:14]
/// Input capture 2 filter
IC2F: u3 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (input
pub const CCMR1_Input = MMIO(CCMR1_Input_val).init(base_address + 0x18);

/// CCER
const CCER_val = packed struct {
/// CC1E [0:0]
/// Capture/Compare 1 output
CC1E: u1 = 0,
/// CC1P [1:1]
/// Capture/Compare 1 output
CC1P: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// CC1NP [3:3]
/// Capture/Compare 1 output
CC1NP: u1 = 0,
/// CC2E [4:4]
/// Capture/Compare 2 output
CC2E: u1 = 0,
/// CC2P [5:5]
/// Capture/Compare 2 output
CC2P: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// CC2NP [7:7]
/// Capture/Compare 2 output
CC2NP: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare enable
pub const CCER = MMIO(CCER_val).init(base_address + 0x20);

/// CNT
const CNT_val = packed struct {
/// CNT [0:15]
/// counter value
CNT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// counter
pub const CNT = MMIO(CNT_val).init(base_address + 0x24);

/// PSC
const PSC_val = packed struct {
/// PSC [0:15]
/// Prescaler value
PSC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// prescaler
pub const PSC = MMIO(PSC_val).init(base_address + 0x28);

/// ARR
const ARR_val = packed struct {
/// ARR [0:15]
/// Auto-reload value
ARR: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// auto-reload register
pub const ARR = MMIO(ARR_val).init(base_address + 0x2c);

/// CCR1
const CCR1_val = packed struct {
/// CCR1 [0:15]
/// Capture/Compare 1 value
CCR1: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 1
pub const CCR1 = MMIO(CCR1_val).init(base_address + 0x34);

/// CCR2
const CCR2_val = packed struct {
/// CCR2 [0:15]
/// Capture/Compare 2 value
CCR2: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 2
pub const CCR2 = MMIO(CCR2_val).init(base_address + 0x38);
};

/// General-purpose-timers
pub const TIM10 = struct {

const base_address = 0x40014400;
/// CR1
const CR1_val = packed struct {
/// CEN [0:0]
/// Counter enable
CEN: u1 = 0,
/// UDIS [1:1]
/// Update disable
UDIS: u1 = 0,
/// URS [2:2]
/// Update request source
URS: u1 = 0,
/// unused [3:6]
_unused3: u4 = 0,
/// ARPE [7:7]
/// Auto-reload preload enable
ARPE: u1 = 0,
/// CKD [8:9]
/// Clock division
CKD: u2 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// DIER
const DIER_val = packed struct {
/// UIE [0:0]
/// Update interrupt enable
UIE: u1 = 0,
/// CC1IE [1:1]
/// Capture/Compare 1 interrupt
CC1IE: u1 = 0,
/// unused [2:31]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA/Interrupt enable register
pub const DIER = MMIO(DIER_val).init(base_address + 0xc);

/// SR
const SR_val = packed struct {
/// UIF [0:0]
/// Update interrupt flag
UIF: u1 = 0,
/// CC1IF [1:1]
/// Capture/compare 1 interrupt
CC1IF: u1 = 0,
/// unused [2:8]
_unused2: u6 = 0,
_unused8: u1 = 0,
/// CC1OF [9:9]
/// Capture/Compare 1 overcapture
CC1OF: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x10);

/// EGR
const EGR_val = packed struct {
/// UG [0:0]
/// Update generation
UG: u1 = 0,
/// CC1G [1:1]
/// Capture/compare 1
CC1G: u1 = 0,
/// unused [2:31]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// event generation register
pub const EGR = MMIO(EGR_val).init(base_address + 0x14);

/// CCMR1_Output
const CCMR1_Output_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// OC1FE [2:2]
/// Output Compare 1 fast
OC1FE: u1 = 0,
/// OC1PE [3:3]
/// Output Compare 1 preload
OC1PE: u1 = 0,
/// OC1M [4:6]
/// Output Compare 1 mode
OC1M: u3 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (output
pub const CCMR1_Output = MMIO(CCMR1_Output_val).init(base_address + 0x18);

/// CCMR1_Input
const CCMR1_Input_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// ICPCS [2:3]
/// Input capture 1 prescaler
ICPCS: u2 = 0,
/// IC1F [4:7]
/// Input capture 1 filter
IC1F: u4 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (input
pub const CCMR1_Input = MMIO(CCMR1_Input_val).init(base_address + 0x18);

/// CCER
const CCER_val = packed struct {
/// CC1E [0:0]
/// Capture/Compare 1 output
CC1E: u1 = 0,
/// CC1P [1:1]
/// Capture/Compare 1 output
CC1P: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// CC1NP [3:3]
/// Capture/Compare 1 output
CC1NP: u1 = 0,
/// unused [4:31]
_unused4: u4 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare enable
pub const CCER = MMIO(CCER_val).init(base_address + 0x20);

/// CNT
const CNT_val = packed struct {
/// CNT [0:15]
/// counter value
CNT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// counter
pub const CNT = MMIO(CNT_val).init(base_address + 0x24);

/// PSC
const PSC_val = packed struct {
/// PSC [0:15]
/// Prescaler value
PSC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// prescaler
pub const PSC = MMIO(PSC_val).init(base_address + 0x28);

/// ARR
const ARR_val = packed struct {
/// ARR [0:15]
/// Auto-reload value
ARR: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// auto-reload register
pub const ARR = MMIO(ARR_val).init(base_address + 0x2c);

/// CCR1
const CCR1_val = packed struct {
/// CCR1 [0:15]
/// Capture/Compare 1 value
CCR1: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 1
pub const CCR1 = MMIO(CCR1_val).init(base_address + 0x34);
};

/// General-purpose-timers
pub const TIM13 = struct {

const base_address = 0x40001c00;
/// CR1
const CR1_val = packed struct {
/// CEN [0:0]
/// Counter enable
CEN: u1 = 0,
/// UDIS [1:1]
/// Update disable
UDIS: u1 = 0,
/// URS [2:2]
/// Update request source
URS: u1 = 0,
/// unused [3:6]
_unused3: u4 = 0,
/// ARPE [7:7]
/// Auto-reload preload enable
ARPE: u1 = 0,
/// CKD [8:9]
/// Clock division
CKD: u2 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// DIER
const DIER_val = packed struct {
/// UIE [0:0]
/// Update interrupt enable
UIE: u1 = 0,
/// CC1IE [1:1]
/// Capture/Compare 1 interrupt
CC1IE: u1 = 0,
/// unused [2:31]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA/Interrupt enable register
pub const DIER = MMIO(DIER_val).init(base_address + 0xc);

/// SR
const SR_val = packed struct {
/// UIF [0:0]
/// Update interrupt flag
UIF: u1 = 0,
/// CC1IF [1:1]
/// Capture/compare 1 interrupt
CC1IF: u1 = 0,
/// unused [2:8]
_unused2: u6 = 0,
_unused8: u1 = 0,
/// CC1OF [9:9]
/// Capture/Compare 1 overcapture
CC1OF: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x10);

/// EGR
const EGR_val = packed struct {
/// UG [0:0]
/// Update generation
UG: u1 = 0,
/// CC1G [1:1]
/// Capture/compare 1
CC1G: u1 = 0,
/// unused [2:31]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// event generation register
pub const EGR = MMIO(EGR_val).init(base_address + 0x14);

/// CCMR1_Output
const CCMR1_Output_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// OC1FE [2:2]
/// Output Compare 1 fast
OC1FE: u1 = 0,
/// OC1PE [3:3]
/// Output Compare 1 preload
OC1PE: u1 = 0,
/// OC1M [4:6]
/// Output Compare 1 mode
OC1M: u3 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (output
pub const CCMR1_Output = MMIO(CCMR1_Output_val).init(base_address + 0x18);

/// CCMR1_Input
const CCMR1_Input_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// ICPCS [2:3]
/// Input capture 1 prescaler
ICPCS: u2 = 0,
/// IC1F [4:7]
/// Input capture 1 filter
IC1F: u4 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (input
pub const CCMR1_Input = MMIO(CCMR1_Input_val).init(base_address + 0x18);

/// CCER
const CCER_val = packed struct {
/// CC1E [0:0]
/// Capture/Compare 1 output
CC1E: u1 = 0,
/// CC1P [1:1]
/// Capture/Compare 1 output
CC1P: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// CC1NP [3:3]
/// Capture/Compare 1 output
CC1NP: u1 = 0,
/// unused [4:31]
_unused4: u4 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare enable
pub const CCER = MMIO(CCER_val).init(base_address + 0x20);

/// CNT
const CNT_val = packed struct {
/// CNT [0:15]
/// counter value
CNT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// counter
pub const CNT = MMIO(CNT_val).init(base_address + 0x24);

/// PSC
const PSC_val = packed struct {
/// PSC [0:15]
/// Prescaler value
PSC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// prescaler
pub const PSC = MMIO(PSC_val).init(base_address + 0x28);

/// ARR
const ARR_val = packed struct {
/// ARR [0:15]
/// Auto-reload value
ARR: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// auto-reload register
pub const ARR = MMIO(ARR_val).init(base_address + 0x2c);

/// CCR1
const CCR1_val = packed struct {
/// CCR1 [0:15]
/// Capture/Compare 1 value
CCR1: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 1
pub const CCR1 = MMIO(CCR1_val).init(base_address + 0x34);
};

/// General-purpose-timers
pub const TIM14 = struct {

const base_address = 0x40002000;
/// CR1
const CR1_val = packed struct {
/// CEN [0:0]
/// Counter enable
CEN: u1 = 0,
/// UDIS [1:1]
/// Update disable
UDIS: u1 = 0,
/// URS [2:2]
/// Update request source
URS: u1 = 0,
/// unused [3:6]
_unused3: u4 = 0,
/// ARPE [7:7]
/// Auto-reload preload enable
ARPE: u1 = 0,
/// CKD [8:9]
/// Clock division
CKD: u2 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// DIER
const DIER_val = packed struct {
/// UIE [0:0]
/// Update interrupt enable
UIE: u1 = 0,
/// CC1IE [1:1]
/// Capture/Compare 1 interrupt
CC1IE: u1 = 0,
/// unused [2:31]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA/Interrupt enable register
pub const DIER = MMIO(DIER_val).init(base_address + 0xc);

/// SR
const SR_val = packed struct {
/// UIF [0:0]
/// Update interrupt flag
UIF: u1 = 0,
/// CC1IF [1:1]
/// Capture/compare 1 interrupt
CC1IF: u1 = 0,
/// unused [2:8]
_unused2: u6 = 0,
_unused8: u1 = 0,
/// CC1OF [9:9]
/// Capture/Compare 1 overcapture
CC1OF: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x10);

/// EGR
const EGR_val = packed struct {
/// UG [0:0]
/// Update generation
UG: u1 = 0,
/// CC1G [1:1]
/// Capture/compare 1
CC1G: u1 = 0,
/// unused [2:31]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// event generation register
pub const EGR = MMIO(EGR_val).init(base_address + 0x14);

/// CCMR1_Output
const CCMR1_Output_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// OC1FE [2:2]
/// Output Compare 1 fast
OC1FE: u1 = 0,
/// OC1PE [3:3]
/// Output Compare 1 preload
OC1PE: u1 = 0,
/// OC1M [4:6]
/// Output Compare 1 mode
OC1M: u3 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (output
pub const CCMR1_Output = MMIO(CCMR1_Output_val).init(base_address + 0x18);

/// CCMR1_Input
const CCMR1_Input_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// ICPCS [2:3]
/// Input capture 1 prescaler
ICPCS: u2 = 0,
/// IC1F [4:7]
/// Input capture 1 filter
IC1F: u4 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (input
pub const CCMR1_Input = MMIO(CCMR1_Input_val).init(base_address + 0x18);

/// CCER
const CCER_val = packed struct {
/// CC1E [0:0]
/// Capture/Compare 1 output
CC1E: u1 = 0,
/// CC1P [1:1]
/// Capture/Compare 1 output
CC1P: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// CC1NP [3:3]
/// Capture/Compare 1 output
CC1NP: u1 = 0,
/// unused [4:31]
_unused4: u4 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare enable
pub const CCER = MMIO(CCER_val).init(base_address + 0x20);

/// CNT
const CNT_val = packed struct {
/// CNT [0:15]
/// counter value
CNT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// counter
pub const CNT = MMIO(CNT_val).init(base_address + 0x24);

/// PSC
const PSC_val = packed struct {
/// PSC [0:15]
/// Prescaler value
PSC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// prescaler
pub const PSC = MMIO(PSC_val).init(base_address + 0x28);

/// ARR
const ARR_val = packed struct {
/// ARR [0:15]
/// Auto-reload value
ARR: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// auto-reload register
pub const ARR = MMIO(ARR_val).init(base_address + 0x2c);

/// CCR1
const CCR1_val = packed struct {
/// CCR1 [0:15]
/// Capture/Compare 1 value
CCR1: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 1
pub const CCR1 = MMIO(CCR1_val).init(base_address + 0x34);
};

/// General-purpose-timers
pub const TIM11 = struct {

const base_address = 0x40014800;
/// CR1
const CR1_val = packed struct {
/// CEN [0:0]
/// Counter enable
CEN: u1 = 0,
/// UDIS [1:1]
/// Update disable
UDIS: u1 = 0,
/// URS [2:2]
/// Update request source
URS: u1 = 0,
/// unused [3:6]
_unused3: u4 = 0,
/// ARPE [7:7]
/// Auto-reload preload enable
ARPE: u1 = 0,
/// CKD [8:9]
/// Clock division
CKD: u2 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// DIER
const DIER_val = packed struct {
/// UIE [0:0]
/// Update interrupt enable
UIE: u1 = 0,
/// CC1IE [1:1]
/// Capture/Compare 1 interrupt
CC1IE: u1 = 0,
/// unused [2:31]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA/Interrupt enable register
pub const DIER = MMIO(DIER_val).init(base_address + 0xc);

/// SR
const SR_val = packed struct {
/// UIF [0:0]
/// Update interrupt flag
UIF: u1 = 0,
/// CC1IF [1:1]
/// Capture/compare 1 interrupt
CC1IF: u1 = 0,
/// unused [2:8]
_unused2: u6 = 0,
_unused8: u1 = 0,
/// CC1OF [9:9]
/// Capture/Compare 1 overcapture
CC1OF: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x10);

/// EGR
const EGR_val = packed struct {
/// UG [0:0]
/// Update generation
UG: u1 = 0,
/// CC1G [1:1]
/// Capture/compare 1
CC1G: u1 = 0,
/// unused [2:31]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// event generation register
pub const EGR = MMIO(EGR_val).init(base_address + 0x14);

/// CCMR1_Output
const CCMR1_Output_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// OC1FE [2:2]
/// Output Compare 1 fast
OC1FE: u1 = 0,
/// OC1PE [3:3]
/// Output Compare 1 preload
OC1PE: u1 = 0,
/// OC1M [4:6]
/// Output Compare 1 mode
OC1M: u3 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (output
pub const CCMR1_Output = MMIO(CCMR1_Output_val).init(base_address + 0x18);

/// CCMR1_Input
const CCMR1_Input_val = packed struct {
/// CC1S [0:1]
/// Capture/Compare 1
CC1S: u2 = 0,
/// ICPCS [2:3]
/// Input capture 1 prescaler
ICPCS: u2 = 0,
/// IC1F [4:7]
/// Input capture 1 filter
IC1F: u4 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare mode register 1 (input
pub const CCMR1_Input = MMIO(CCMR1_Input_val).init(base_address + 0x18);

/// CCER
const CCER_val = packed struct {
/// CC1E [0:0]
/// Capture/Compare 1 output
CC1E: u1 = 0,
/// CC1P [1:1]
/// Capture/Compare 1 output
CC1P: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// CC1NP [3:3]
/// Capture/Compare 1 output
CC1NP: u1 = 0,
/// unused [4:31]
_unused4: u4 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare enable
pub const CCER = MMIO(CCER_val).init(base_address + 0x20);

/// CNT
const CNT_val = packed struct {
/// CNT [0:15]
/// counter value
CNT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// counter
pub const CNT = MMIO(CNT_val).init(base_address + 0x24);

/// PSC
const PSC_val = packed struct {
/// PSC [0:15]
/// Prescaler value
PSC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// prescaler
pub const PSC = MMIO(PSC_val).init(base_address + 0x28);

/// ARR
const ARR_val = packed struct {
/// ARR [0:15]
/// Auto-reload value
ARR: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// auto-reload register
pub const ARR = MMIO(ARR_val).init(base_address + 0x2c);

/// CCR1
const CCR1_val = packed struct {
/// CCR1 [0:15]
/// Capture/Compare 1 value
CCR1: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// capture/compare register 1
pub const CCR1 = MMIO(CCR1_val).init(base_address + 0x34);

/// OR
const OR_val = packed struct {
/// RMP [0:1]
/// Input 1 remapping
RMP: u2 = 0,
/// unused [2:31]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// option register
pub const OR = MMIO(OR_val).init(base_address + 0x50);
};

/// Basic timers
pub const TIM6 = struct {

const base_address = 0x40001000;
/// CR1
const CR1_val = packed struct {
/// CEN [0:0]
/// Counter enable
CEN: u1 = 0,
/// UDIS [1:1]
/// Update disable
UDIS: u1 = 0,
/// URS [2:2]
/// Update request source
URS: u1 = 0,
/// OPM [3:3]
/// One-pulse mode
OPM: u1 = 0,
/// unused [4:6]
_unused4: u3 = 0,
/// ARPE [7:7]
/// Auto-reload preload enable
ARPE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// unused [0:3]
_unused0: u4 = 0,
/// MMS [4:6]
/// Master mode selection
MMS: u3 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// DIER
const DIER_val = packed struct {
/// UIE [0:0]
/// Update interrupt enable
UIE: u1 = 0,
/// unused [1:7]
_unused1: u7 = 0,
/// UDE [8:8]
/// Update DMA request enable
UDE: u1 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA/Interrupt enable register
pub const DIER = MMIO(DIER_val).init(base_address + 0xc);

/// SR
const SR_val = packed struct {
/// UIF [0:0]
/// Update interrupt flag
UIF: u1 = 0,
/// unused [1:31]
_unused1: u7 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x10);

/// EGR
const EGR_val = packed struct {
/// UG [0:0]
/// Update generation
UG: u1 = 0,
/// unused [1:31]
_unused1: u7 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// event generation register
pub const EGR = MMIO(EGR_val).init(base_address + 0x14);

/// CNT
const CNT_val = packed struct {
/// CNT [0:15]
/// Low counter value
CNT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// counter
pub const CNT = MMIO(CNT_val).init(base_address + 0x24);

/// PSC
const PSC_val = packed struct {
/// PSC [0:15]
/// Prescaler value
PSC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// prescaler
pub const PSC = MMIO(PSC_val).init(base_address + 0x28);

/// ARR
const ARR_val = packed struct {
/// ARR [0:15]
/// Low Auto-reload value
ARR: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// auto-reload register
pub const ARR = MMIO(ARR_val).init(base_address + 0x2c);
};

/// Basic timers
pub const TIM7 = struct {

const base_address = 0x40001400;
/// CR1
const CR1_val = packed struct {
/// CEN [0:0]
/// Counter enable
CEN: u1 = 0,
/// UDIS [1:1]
/// Update disable
UDIS: u1 = 0,
/// URS [2:2]
/// Update request source
URS: u1 = 0,
/// OPM [3:3]
/// One-pulse mode
OPM: u1 = 0,
/// unused [4:6]
_unused4: u3 = 0,
/// ARPE [7:7]
/// Auto-reload preload enable
ARPE: u1 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 1
pub const CR1 = MMIO(CR1_val).init(base_address + 0x0);

/// CR2
const CR2_val = packed struct {
/// unused [0:3]
_unused0: u4 = 0,
/// MMS [4:6]
/// Master mode selection
MMS: u3 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// control register 2
pub const CR2 = MMIO(CR2_val).init(base_address + 0x4);

/// DIER
const DIER_val = packed struct {
/// UIE [0:0]
/// Update interrupt enable
UIE: u1 = 0,
/// unused [1:7]
_unused1: u7 = 0,
/// UDE [8:8]
/// Update DMA request enable
UDE: u1 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// DMA/Interrupt enable register
pub const DIER = MMIO(DIER_val).init(base_address + 0xc);

/// SR
const SR_val = packed struct {
/// UIF [0:0]
/// Update interrupt flag
UIF: u1 = 0,
/// unused [1:31]
_unused1: u7 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x10);

/// EGR
const EGR_val = packed struct {
/// UG [0:0]
/// Update generation
UG: u1 = 0,
/// unused [1:31]
_unused1: u7 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// event generation register
pub const EGR = MMIO(EGR_val).init(base_address + 0x14);

/// CNT
const CNT_val = packed struct {
/// CNT [0:15]
/// Low counter value
CNT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// counter
pub const CNT = MMIO(CNT_val).init(base_address + 0x24);

/// PSC
const PSC_val = packed struct {
/// PSC [0:15]
/// Prescaler value
PSC: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// prescaler
pub const PSC = MMIO(PSC_val).init(base_address + 0x28);

/// ARR
const ARR_val = packed struct {
/// ARR [0:15]
/// Low Auto-reload value
ARR: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// auto-reload register
pub const ARR = MMIO(ARR_val).init(base_address + 0x2c);
};

/// Cryptographic processor
pub const CRC = struct {

const base_address = 0x40023000;
/// DR
const DR_val = packed struct {
/// DR [0:31]
/// Data Register
DR: u32 = 4294967295,
};
/// Data register
pub const DR = MMIO(DR_val).init(base_address + 0x0);

/// IDR
const IDR_val = packed struct {
/// IDR [0:7]
/// Independent Data register
IDR: u8 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Independent Data register
pub const IDR = MMIO(IDR_val).init(base_address + 0x4);

/// CR
const CR_val = packed struct {
/// CR [0:0]
/// Control regidter
CR: u1 = 0,
/// unused [1:31]
_unused1: u7 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Control register
pub const CR = MMIO(CR_val).init(base_address + 0x8);
};

/// USB on the go full speed
pub const OTG_FS_GLOBAL = struct {

const base_address = 0x50000000;
/// FS_GOTGCTL
const FS_GOTGCTL_val = packed struct {
/// SRQSCS [0:0]
/// Session request success
SRQSCS: u1 = 0,
/// SRQ [1:1]
/// Session request
SRQ: u1 = 0,
/// unused [2:7]
_unused2: u6 = 0,
/// HNGSCS [8:8]
/// Host negotiation success
HNGSCS: u1 = 0,
/// HNPRQ [9:9]
/// HNP request
HNPRQ: u1 = 0,
/// HSHNPEN [10:10]
/// Host set HNP enable
HSHNPEN: u1 = 0,
/// DHNPEN [11:11]
/// Device HNP enabled
DHNPEN: u1 = 1,
/// unused [12:15]
_unused12: u4 = 0,
/// CIDSTS [16:16]
/// Connector ID status
CIDSTS: u1 = 0,
/// DBCT [17:17]
/// Long/short debounce time
DBCT: u1 = 0,
/// ASVLD [18:18]
/// A-session valid
ASVLD: u1 = 0,
/// BSVLD [19:19]
/// B-session valid
BSVLD: u1 = 0,
/// unused [20:31]
_unused20: u4 = 0,
_unused24: u8 = 0,
};
/// OTG_FS control and status register
pub const FS_GOTGCTL = MMIO(FS_GOTGCTL_val).init(base_address + 0x0);

/// FS_GOTGINT
const FS_GOTGINT_val = packed struct {
/// unused [0:1]
_unused0: u2 = 0,
/// SEDET [2:2]
/// Session end detected
SEDET: u1 = 0,
/// unused [3:7]
_unused3: u5 = 0,
/// SRSSCHG [8:8]
/// Session request success status
SRSSCHG: u1 = 0,
/// HNSSCHG [9:9]
/// Host negotiation success status
HNSSCHG: u1 = 0,
/// unused [10:16]
_unused10: u6 = 0,
_unused16: u1 = 0,
/// HNGDET [17:17]
/// Host negotiation detected
HNGDET: u1 = 0,
/// ADTOCHG [18:18]
/// A-device timeout change
ADTOCHG: u1 = 0,
/// DBCDNE [19:19]
/// Debounce done
DBCDNE: u1 = 0,
/// unused [20:31]
_unused20: u4 = 0,
_unused24: u8 = 0,
};
/// OTG_FS interrupt register
pub const FS_GOTGINT = MMIO(FS_GOTGINT_val).init(base_address + 0x4);

/// FS_GAHBCFG
const FS_GAHBCFG_val = packed struct {
/// GINT [0:0]
/// Global interrupt mask
GINT: u1 = 0,
/// unused [1:6]
_unused1: u6 = 0,
/// TXFELVL [7:7]
/// TxFIFO empty level
TXFELVL: u1 = 0,
/// PTXFELVL [8:8]
/// Periodic TxFIFO empty
PTXFELVL: u1 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS AHB configuration register
pub const FS_GAHBCFG = MMIO(FS_GAHBCFG_val).init(base_address + 0x8);

/// FS_GUSBCFG
const FS_GUSBCFG_val = packed struct {
/// TOCAL [0:2]
/// FS timeout calibration
TOCAL: u3 = 0,
/// unused [3:5]
_unused3: u3 = 0,
/// PHYSEL [6:6]
/// Full Speed serial transceiver
PHYSEL: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// SRPCAP [8:8]
/// SRP-capable
SRPCAP: u1 = 0,
/// HNPCAP [9:9]
/// HNP-capable
HNPCAP: u1 = 1,
/// TRDT [10:13]
/// USB turnaround time
TRDT: u4 = 2,
/// unused [14:28]
_unused14: u2 = 0,
_unused16: u8 = 0,
_unused24: u5 = 0,
/// FHMOD [29:29]
/// Force host mode
FHMOD: u1 = 0,
/// FDMOD [30:30]
/// Force device mode
FDMOD: u1 = 0,
/// CTXPKT [31:31]
/// Corrupt Tx packet
CTXPKT: u1 = 0,
};
/// OTG_FS USB configuration register
pub const FS_GUSBCFG = MMIO(FS_GUSBCFG_val).init(base_address + 0xc);

/// FS_GRSTCTL
const FS_GRSTCTL_val = packed struct {
/// CSRST [0:0]
/// Core soft reset
CSRST: u1 = 0,
/// HSRST [1:1]
/// HCLK soft reset
HSRST: u1 = 0,
/// FCRST [2:2]
/// Host frame counter reset
FCRST: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// RXFFLSH [4:4]
/// RxFIFO flush
RXFFLSH: u1 = 0,
/// TXFFLSH [5:5]
/// TxFIFO flush
TXFFLSH: u1 = 0,
/// TXFNUM [6:10]
/// TxFIFO number
TXFNUM: u5 = 0,
/// unused [11:30]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u7 = 32,
/// AHBIDL [31:31]
/// AHB master idle
AHBIDL: u1 = 0,
};
/// OTG_FS reset register
pub const FS_GRSTCTL = MMIO(FS_GRSTCTL_val).init(base_address + 0x10);

/// FS_GINTSTS
const FS_GINTSTS_val = packed struct {
/// CMOD [0:0]
/// Current mode of operation
CMOD: u1 = 0,
/// MMIS [1:1]
/// Mode mismatch interrupt
MMIS: u1 = 0,
/// OTGINT [2:2]
/// OTG interrupt
OTGINT: u1 = 0,
/// SOF [3:3]
/// Start of frame
SOF: u1 = 0,
/// RXFLVL [4:4]
/// RxFIFO non-empty
RXFLVL: u1 = 0,
/// NPTXFE [5:5]
/// Non-periodic TxFIFO empty
NPTXFE: u1 = 1,
/// GINAKEFF [6:6]
/// Global IN non-periodic NAK
GINAKEFF: u1 = 0,
/// GOUTNAKEFF [7:7]
/// Global OUT NAK effective
GOUTNAKEFF: u1 = 0,
/// unused [8:9]
_unused8: u2 = 0,
/// ESUSP [10:10]
/// Early suspend
ESUSP: u1 = 0,
/// USBSUSP [11:11]
/// USB suspend
USBSUSP: u1 = 0,
/// USBRST [12:12]
/// USB reset
USBRST: u1 = 0,
/// ENUMDNE [13:13]
/// Enumeration done
ENUMDNE: u1 = 0,
/// ISOODRP [14:14]
/// Isochronous OUT packet dropped
ISOODRP: u1 = 0,
/// EOPF [15:15]
/// End of periodic frame
EOPF: u1 = 0,
/// unused [16:17]
_unused16: u2 = 0,
/// IEPINT [18:18]
/// IN endpoint interrupt
IEPINT: u1 = 0,
/// OEPINT [19:19]
/// OUT endpoint interrupt
OEPINT: u1 = 0,
/// IISOIXFR [20:20]
/// Incomplete isochronous IN
IISOIXFR: u1 = 0,
/// IPXFR_INCOMPISOOUT [21:21]
/// Incomplete periodic transfer(Host
IPXFR_INCOMPISOOUT: u1 = 0,
/// unused [22:23]
_unused22: u2 = 0,
/// HPRTINT [24:24]
/// Host port interrupt
HPRTINT: u1 = 0,
/// HCINT [25:25]
/// Host channels interrupt
HCINT: u1 = 0,
/// PTXFE [26:26]
/// Periodic TxFIFO empty
PTXFE: u1 = 1,
/// unused [27:27]
_unused27: u1 = 0,
/// CIDSCHG [28:28]
/// Connector ID status change
CIDSCHG: u1 = 0,
/// DISCINT [29:29]
/// Disconnect detected
DISCINT: u1 = 0,
/// SRQINT [30:30]
/// Session request/new session detected
SRQINT: u1 = 0,
/// WKUPINT [31:31]
/// Resume/remote wakeup detected
WKUPINT: u1 = 0,
};
/// OTG_FS core interrupt register
pub const FS_GINTSTS = MMIO(FS_GINTSTS_val).init(base_address + 0x14);

/// FS_GINTMSK
const FS_GINTMSK_val = packed struct {
/// unused [0:0]
_unused0: u1 = 0,
/// MMISM [1:1]
/// Mode mismatch interrupt
MMISM: u1 = 0,
/// OTGINT [2:2]
/// OTG interrupt mask
OTGINT: u1 = 0,
/// SOFM [3:3]
/// Start of frame mask
SOFM: u1 = 0,
/// RXFLVLM [4:4]
/// Receive FIFO non-empty
RXFLVLM: u1 = 0,
/// NPTXFEM [5:5]
/// Non-periodic TxFIFO empty
NPTXFEM: u1 = 0,
/// GINAKEFFM [6:6]
/// Global non-periodic IN NAK effective
GINAKEFFM: u1 = 0,
/// GONAKEFFM [7:7]
/// Global OUT NAK effective
GONAKEFFM: u1 = 0,
/// unused [8:9]
_unused8: u2 = 0,
/// ESUSPM [10:10]
/// Early suspend mask
ESUSPM: u1 = 0,
/// USBSUSPM [11:11]
/// USB suspend mask
USBSUSPM: u1 = 0,
/// USBRST [12:12]
/// USB reset mask
USBRST: u1 = 0,
/// ENUMDNEM [13:13]
/// Enumeration done mask
ENUMDNEM: u1 = 0,
/// ISOODRPM [14:14]
/// Isochronous OUT packet dropped interrupt
ISOODRPM: u1 = 0,
/// EOPFM [15:15]
/// End of periodic frame interrupt
EOPFM: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// EPMISM [17:17]
/// Endpoint mismatch interrupt
EPMISM: u1 = 0,
/// IEPINT [18:18]
/// IN endpoints interrupt
IEPINT: u1 = 0,
/// OEPINT [19:19]
/// OUT endpoints interrupt
OEPINT: u1 = 0,
/// IISOIXFRM [20:20]
/// Incomplete isochronous IN transfer
IISOIXFRM: u1 = 0,
/// IPXFRM_IISOOXFRM [21:21]
/// Incomplete periodic transfer mask(Host
IPXFRM_IISOOXFRM: u1 = 0,
/// unused [22:23]
_unused22: u2 = 0,
/// PRTIM [24:24]
/// Host port interrupt mask
PRTIM: u1 = 0,
/// HCIM [25:25]
/// Host channels interrupt
HCIM: u1 = 0,
/// PTXFEM [26:26]
/// Periodic TxFIFO empty mask
PTXFEM: u1 = 0,
/// unused [27:27]
_unused27: u1 = 0,
/// CIDSCHGM [28:28]
/// Connector ID status change
CIDSCHGM: u1 = 0,
/// DISCINT [29:29]
/// Disconnect detected interrupt
DISCINT: u1 = 0,
/// SRQIM [30:30]
/// Session request/new session detected
SRQIM: u1 = 0,
/// WUIM [31:31]
/// Resume/remote wakeup detected interrupt
WUIM: u1 = 0,
};
/// OTG_FS interrupt mask register
pub const FS_GINTMSK = MMIO(FS_GINTMSK_val).init(base_address + 0x18);

/// FS_GRXSTSR_Device
const FS_GRXSTSR_Device_val = packed struct {
/// EPNUM [0:3]
/// Endpoint number
EPNUM: u4 = 0,
/// BCNT [4:14]
/// Byte count
BCNT: u11 = 0,
/// DPID [15:16]
/// Data PID
DPID: u2 = 0,
/// PKTSTS [17:20]
/// Packet status
PKTSTS: u4 = 0,
/// FRMNUM [21:24]
/// Frame number
FRMNUM: u4 = 0,
/// unused [25:31]
_unused25: u7 = 0,
};
/// OTG_FS Receive status debug read(Device
pub const FS_GRXSTSR_Device = MMIO(FS_GRXSTSR_Device_val).init(base_address + 0x1c);

/// FS_GRXSTSR_Host
const FS_GRXSTSR_Host_val = packed struct {
/// EPNUM [0:3]
/// Endpoint number
EPNUM: u4 = 0,
/// BCNT [4:14]
/// Byte count
BCNT: u11 = 0,
/// DPID [15:16]
/// Data PID
DPID: u2 = 0,
/// PKTSTS [17:20]
/// Packet status
PKTSTS: u4 = 0,
/// FRMNUM [21:24]
/// Frame number
FRMNUM: u4 = 0,
/// unused [25:31]
_unused25: u7 = 0,
};
/// OTG_FS Receive status debug read(Host
pub const FS_GRXSTSR_Host = MMIO(FS_GRXSTSR_Host_val).init(base_address + 0x1c);

/// FS_GRXFSIZ
const FS_GRXFSIZ_val = packed struct {
/// RXFD [0:15]
/// RxFIFO depth
RXFD: u16 = 512,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS Receive FIFO size register
pub const FS_GRXFSIZ = MMIO(FS_GRXFSIZ_val).init(base_address + 0x24);

/// FS_GNPTXFSIZ_Device
const FS_GNPTXFSIZ_Device_val = packed struct {
/// TX0FSA [0:15]
/// Endpoint 0 transmit RAM start
TX0FSA: u16 = 512,
/// TX0FD [16:31]
/// Endpoint 0 TxFIFO depth
TX0FD: u16 = 0,
};
/// OTG_FS non-periodic transmit FIFO size
pub const FS_GNPTXFSIZ_Device = MMIO(FS_GNPTXFSIZ_Device_val).init(base_address + 0x28);

/// FS_GNPTXFSIZ_Host
const FS_GNPTXFSIZ_Host_val = packed struct {
/// NPTXFSA [0:15]
/// Non-periodic transmit RAM start
NPTXFSA: u16 = 512,
/// NPTXFD [16:31]
/// Non-periodic TxFIFO depth
NPTXFD: u16 = 0,
};
/// OTG_FS non-periodic transmit FIFO size
pub const FS_GNPTXFSIZ_Host = MMIO(FS_GNPTXFSIZ_Host_val).init(base_address + 0x28);

/// FS_GNPTXSTS
const FS_GNPTXSTS_val = packed struct {
/// NPTXFSAV [0:15]
/// Non-periodic TxFIFO space
NPTXFSAV: u16 = 512,
/// NPTQXSAV [16:23]
/// Non-periodic transmit request queue
NPTQXSAV: u8 = 8,
/// NPTXQTOP [24:30]
/// Top of the non-periodic transmit request
NPTXQTOP: u7 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_FS non-periodic transmit FIFO/queue
pub const FS_GNPTXSTS = MMIO(FS_GNPTXSTS_val).init(base_address + 0x2c);

/// FS_GCCFG
const FS_GCCFG_val = packed struct {
/// unused [0:15]
_unused0: u8 = 0,
_unused8: u8 = 0,
/// PWRDWN [16:16]
/// Power down
PWRDWN: u1 = 0,
/// unused [17:17]
_unused17: u1 = 0,
/// VBUSASEN [18:18]
/// Enable the VBUS sensing
VBUSASEN: u1 = 0,
/// VBUSBSEN [19:19]
/// Enable the VBUS sensing
VBUSBSEN: u1 = 0,
/// SOFOUTEN [20:20]
/// SOF output enable
SOFOUTEN: u1 = 0,
/// unused [21:31]
_unused21: u3 = 0,
_unused24: u8 = 0,
};
/// OTG_FS general core configuration register
pub const FS_GCCFG = MMIO(FS_GCCFG_val).init(base_address + 0x38);

/// FS_CID
const FS_CID_val = packed struct {
/// PRODUCT_ID [0:31]
/// Product ID field
PRODUCT_ID: u32 = 4096,
};
/// core ID register
pub const FS_CID = MMIO(FS_CID_val).init(base_address + 0x3c);

/// FS_HPTXFSIZ
const FS_HPTXFSIZ_val = packed struct {
/// PTXSA [0:15]
/// Host periodic TxFIFO start
PTXSA: u16 = 1536,
/// PTXFSIZ [16:31]
/// Host periodic TxFIFO depth
PTXFSIZ: u16 = 512,
};
/// OTG_FS Host periodic transmit FIFO size
pub const FS_HPTXFSIZ = MMIO(FS_HPTXFSIZ_val).init(base_address + 0x100);

/// FS_DIEPTXF1
const FS_DIEPTXF1_val = packed struct {
/// INEPTXSA [0:15]
/// IN endpoint FIFO2 transmit RAM start
INEPTXSA: u16 = 1024,
/// INEPTXFD [16:31]
/// IN endpoint TxFIFO depth
INEPTXFD: u16 = 512,
};
/// OTG_FS device IN endpoint transmit FIFO size
pub const FS_DIEPTXF1 = MMIO(FS_DIEPTXF1_val).init(base_address + 0x104);

/// FS_DIEPTXF2
const FS_DIEPTXF2_val = packed struct {
/// INEPTXSA [0:15]
/// IN endpoint FIFO3 transmit RAM start
INEPTXSA: u16 = 1024,
/// INEPTXFD [16:31]
/// IN endpoint TxFIFO depth
INEPTXFD: u16 = 512,
};
/// OTG_FS device IN endpoint transmit FIFO size
pub const FS_DIEPTXF2 = MMIO(FS_DIEPTXF2_val).init(base_address + 0x108);

/// FS_DIEPTXF3
const FS_DIEPTXF3_val = packed struct {
/// INEPTXSA [0:15]
/// IN endpoint FIFO4 transmit RAM start
INEPTXSA: u16 = 1024,
/// INEPTXFD [16:31]
/// IN endpoint TxFIFO depth
INEPTXFD: u16 = 512,
};
/// OTG_FS device IN endpoint transmit FIFO size
pub const FS_DIEPTXF3 = MMIO(FS_DIEPTXF3_val).init(base_address + 0x10c);
};

/// USB on the go full speed
pub const OTG_FS_HOST = struct {

const base_address = 0x50000400;
/// FS_HCFG
const FS_HCFG_val = packed struct {
/// FSLSPCS [0:1]
/// FS/LS PHY clock select
FSLSPCS: u2 = 0,
/// FSLSS [2:2]
/// FS- and LS-only support
FSLSS: u1 = 0,
/// unused [3:31]
_unused3: u5 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host configuration register
pub const FS_HCFG = MMIO(FS_HCFG_val).init(base_address + 0x0);

/// HFIR
const HFIR_val = packed struct {
/// FRIVL [0:15]
/// Frame interval
FRIVL: u16 = 60000,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS Host frame interval
pub const HFIR = MMIO(HFIR_val).init(base_address + 0x4);

/// FS_HFNUM
const FS_HFNUM_val = packed struct {
/// FRNUM [0:15]
/// Frame number
FRNUM: u16 = 16383,
/// FTREM [16:31]
/// Frame time remaining
FTREM: u16 = 0,
};
/// OTG_FS host frame number/frame time
pub const FS_HFNUM = MMIO(FS_HFNUM_val).init(base_address + 0x8);

/// FS_HPTXSTS
const FS_HPTXSTS_val = packed struct {
/// PTXFSAVL [0:15]
/// Periodic transmit data FIFO space
PTXFSAVL: u16 = 256,
/// PTXQSAV [16:23]
/// Periodic transmit request queue space
PTXQSAV: u8 = 8,
/// PTXQTOP [24:31]
/// Top of the periodic transmit request
PTXQTOP: u8 = 0,
};
/// OTG_FS_Host periodic transmit FIFO/queue
pub const FS_HPTXSTS = MMIO(FS_HPTXSTS_val).init(base_address + 0x10);

/// HAINT
const HAINT_val = packed struct {
/// HAINT [0:15]
/// Channel interrupts
HAINT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS Host all channels interrupt
pub const HAINT = MMIO(HAINT_val).init(base_address + 0x14);

/// HAINTMSK
const HAINTMSK_val = packed struct {
/// HAINTM [0:15]
/// Channel interrupt mask
HAINTM: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host all channels interrupt mask
pub const HAINTMSK = MMIO(HAINTMSK_val).init(base_address + 0x18);

/// FS_HPRT
const FS_HPRT_val = packed struct {
/// PCSTS [0:0]
/// Port connect status
PCSTS: u1 = 0,
/// PCDET [1:1]
/// Port connect detected
PCDET: u1 = 0,
/// PENA [2:2]
/// Port enable
PENA: u1 = 0,
/// PENCHNG [3:3]
/// Port enable/disable change
PENCHNG: u1 = 0,
/// POCA [4:4]
/// Port overcurrent active
POCA: u1 = 0,
/// POCCHNG [5:5]
/// Port overcurrent change
POCCHNG: u1 = 0,
/// PRES [6:6]
/// Port resume
PRES: u1 = 0,
/// PSUSP [7:7]
/// Port suspend
PSUSP: u1 = 0,
/// PRST [8:8]
/// Port reset
PRST: u1 = 0,
/// unused [9:9]
_unused9: u1 = 0,
/// PLSTS [10:11]
/// Port line status
PLSTS: u2 = 0,
/// PPWR [12:12]
/// Port power
PPWR: u1 = 0,
/// PTCTL [13:16]
/// Port test control
PTCTL: u4 = 0,
/// PSPD [17:18]
/// Port speed
PSPD: u2 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host port control and status register
pub const FS_HPRT = MMIO(FS_HPRT_val).init(base_address + 0x40);

/// FS_HCCHAR0
const FS_HCCHAR0_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MCNT [20:21]
/// Multicount
MCNT: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_FS host channel-0 characteristics
pub const FS_HCCHAR0 = MMIO(FS_HCCHAR0_val).init(base_address + 0x100);

/// FS_HCCHAR1
const FS_HCCHAR1_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MCNT [20:21]
/// Multicount
MCNT: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_FS host channel-1 characteristics
pub const FS_HCCHAR1 = MMIO(FS_HCCHAR1_val).init(base_address + 0x120);

/// FS_HCCHAR2
const FS_HCCHAR2_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MCNT [20:21]
/// Multicount
MCNT: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_FS host channel-2 characteristics
pub const FS_HCCHAR2 = MMIO(FS_HCCHAR2_val).init(base_address + 0x140);

/// FS_HCCHAR3
const FS_HCCHAR3_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MCNT [20:21]
/// Multicount
MCNT: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_FS host channel-3 characteristics
pub const FS_HCCHAR3 = MMIO(FS_HCCHAR3_val).init(base_address + 0x160);

/// FS_HCCHAR4
const FS_HCCHAR4_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MCNT [20:21]
/// Multicount
MCNT: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_FS host channel-4 characteristics
pub const FS_HCCHAR4 = MMIO(FS_HCCHAR4_val).init(base_address + 0x180);

/// FS_HCCHAR5
const FS_HCCHAR5_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MCNT [20:21]
/// Multicount
MCNT: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_FS host channel-5 characteristics
pub const FS_HCCHAR5 = MMIO(FS_HCCHAR5_val).init(base_address + 0x1a0);

/// FS_HCCHAR6
const FS_HCCHAR6_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MCNT [20:21]
/// Multicount
MCNT: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_FS host channel-6 characteristics
pub const FS_HCCHAR6 = MMIO(FS_HCCHAR6_val).init(base_address + 0x1c0);

/// FS_HCCHAR7
const FS_HCCHAR7_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MCNT [20:21]
/// Multicount
MCNT: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_FS host channel-7 characteristics
pub const FS_HCCHAR7 = MMIO(FS_HCCHAR7_val).init(base_address + 0x1e0);

/// FS_HCINT0
const FS_HCINT0_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-0 interrupt register
pub const FS_HCINT0 = MMIO(FS_HCINT0_val).init(base_address + 0x108);

/// FS_HCINT1
const FS_HCINT1_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-1 interrupt register
pub const FS_HCINT1 = MMIO(FS_HCINT1_val).init(base_address + 0x128);

/// FS_HCINT2
const FS_HCINT2_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-2 interrupt register
pub const FS_HCINT2 = MMIO(FS_HCINT2_val).init(base_address + 0x148);

/// FS_HCINT3
const FS_HCINT3_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-3 interrupt register
pub const FS_HCINT3 = MMIO(FS_HCINT3_val).init(base_address + 0x168);

/// FS_HCINT4
const FS_HCINT4_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-4 interrupt register
pub const FS_HCINT4 = MMIO(FS_HCINT4_val).init(base_address + 0x188);

/// FS_HCINT5
const FS_HCINT5_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-5 interrupt register
pub const FS_HCINT5 = MMIO(FS_HCINT5_val).init(base_address + 0x1a8);

/// FS_HCINT6
const FS_HCINT6_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-6 interrupt register
pub const FS_HCINT6 = MMIO(FS_HCINT6_val).init(base_address + 0x1c8);

/// FS_HCINT7
const FS_HCINT7_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-7 interrupt register
pub const FS_HCINT7 = MMIO(FS_HCINT7_val).init(base_address + 0x1e8);

/// FS_HCINTMSK0
const FS_HCINTMSK0_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-0 mask register
pub const FS_HCINTMSK0 = MMIO(FS_HCINTMSK0_val).init(base_address + 0x10c);

/// FS_HCINTMSK1
const FS_HCINTMSK1_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-1 mask register
pub const FS_HCINTMSK1 = MMIO(FS_HCINTMSK1_val).init(base_address + 0x12c);

/// FS_HCINTMSK2
const FS_HCINTMSK2_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-2 mask register
pub const FS_HCINTMSK2 = MMIO(FS_HCINTMSK2_val).init(base_address + 0x14c);

/// FS_HCINTMSK3
const FS_HCINTMSK3_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-3 mask register
pub const FS_HCINTMSK3 = MMIO(FS_HCINTMSK3_val).init(base_address + 0x16c);

/// FS_HCINTMSK4
const FS_HCINTMSK4_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-4 mask register
pub const FS_HCINTMSK4 = MMIO(FS_HCINTMSK4_val).init(base_address + 0x18c);

/// FS_HCINTMSK5
const FS_HCINTMSK5_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-5 mask register
pub const FS_HCINTMSK5 = MMIO(FS_HCINTMSK5_val).init(base_address + 0x1ac);

/// FS_HCINTMSK6
const FS_HCINTMSK6_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-6 mask register
pub const FS_HCINTMSK6 = MMIO(FS_HCINTMSK6_val).init(base_address + 0x1cc);

/// FS_HCINTMSK7
const FS_HCINTMSK7_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS host channel-7 mask register
pub const FS_HCINTMSK7 = MMIO(FS_HCINTMSK7_val).init(base_address + 0x1ec);

/// FS_HCTSIZ0
const FS_HCTSIZ0_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_FS host channel-0 transfer size
pub const FS_HCTSIZ0 = MMIO(FS_HCTSIZ0_val).init(base_address + 0x110);

/// FS_HCTSIZ1
const FS_HCTSIZ1_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_FS host channel-1 transfer size
pub const FS_HCTSIZ1 = MMIO(FS_HCTSIZ1_val).init(base_address + 0x130);

/// FS_HCTSIZ2
const FS_HCTSIZ2_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_FS host channel-2 transfer size
pub const FS_HCTSIZ2 = MMIO(FS_HCTSIZ2_val).init(base_address + 0x150);

/// FS_HCTSIZ3
const FS_HCTSIZ3_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_FS host channel-3 transfer size
pub const FS_HCTSIZ3 = MMIO(FS_HCTSIZ3_val).init(base_address + 0x170);

/// FS_HCTSIZ4
const FS_HCTSIZ4_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_FS host channel-x transfer size
pub const FS_HCTSIZ4 = MMIO(FS_HCTSIZ4_val).init(base_address + 0x190);

/// FS_HCTSIZ5
const FS_HCTSIZ5_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_FS host channel-5 transfer size
pub const FS_HCTSIZ5 = MMIO(FS_HCTSIZ5_val).init(base_address + 0x1b0);

/// FS_HCTSIZ6
const FS_HCTSIZ6_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_FS host channel-6 transfer size
pub const FS_HCTSIZ6 = MMIO(FS_HCTSIZ6_val).init(base_address + 0x1d0);

/// FS_HCTSIZ7
const FS_HCTSIZ7_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_FS host channel-7 transfer size
pub const FS_HCTSIZ7 = MMIO(FS_HCTSIZ7_val).init(base_address + 0x1f0);
};

/// USB on the go full speed
pub const OTG_FS_DEVICE = struct {

const base_address = 0x50000800;
/// FS_DCFG
const FS_DCFG_val = packed struct {
/// DSPD [0:1]
/// Device speed
DSPD: u2 = 0,
/// NZLSOHSK [2:2]
/// Non-zero-length status OUT
NZLSOHSK: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// DAD [4:10]
/// Device address
DAD: u7 = 0,
/// PFIVL [11:12]
/// Periodic frame interval
PFIVL: u2 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 32,
_unused24: u8 = 2,
};
/// OTG_FS device configuration register
pub const FS_DCFG = MMIO(FS_DCFG_val).init(base_address + 0x0);

/// FS_DCTL
const FS_DCTL_val = packed struct {
/// RWUSIG [0:0]
/// Remote wakeup signaling
RWUSIG: u1 = 0,
/// SDIS [1:1]
/// Soft disconnect
SDIS: u1 = 0,
/// GINSTS [2:2]
/// Global IN NAK status
GINSTS: u1 = 0,
/// GONSTS [3:3]
/// Global OUT NAK status
GONSTS: u1 = 0,
/// TCTL [4:6]
/// Test control
TCTL: u3 = 0,
/// SGINAK [7:7]
/// Set global IN NAK
SGINAK: u1 = 0,
/// CGINAK [8:8]
/// Clear global IN NAK
CGINAK: u1 = 0,
/// SGONAK [9:9]
/// Set global OUT NAK
SGONAK: u1 = 0,
/// CGONAK [10:10]
/// Clear global OUT NAK
CGONAK: u1 = 0,
/// POPRGDNE [11:11]
/// Power-on programming done
POPRGDNE: u1 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS device control register
pub const FS_DCTL = MMIO(FS_DCTL_val).init(base_address + 0x4);

/// FS_DSTS
const FS_DSTS_val = packed struct {
/// SUSPSTS [0:0]
/// Suspend status
SUSPSTS: u1 = 0,
/// ENUMSPD [1:2]
/// Enumerated speed
ENUMSPD: u2 = 0,
/// EERR [3:3]
/// Erratic error
EERR: u1 = 0,
/// unused [4:7]
_unused4: u4 = 1,
/// FNSOF [8:21]
/// Frame number of the received
FNSOF: u14 = 0,
/// unused [22:31]
_unused22: u2 = 0,
_unused24: u8 = 0,
};
/// OTG_FS device status register
pub const FS_DSTS = MMIO(FS_DSTS_val).init(base_address + 0x8);

/// FS_DIEPMSK
const FS_DIEPMSK_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed interrupt
XFRCM: u1 = 0,
/// EPDM [1:1]
/// Endpoint disabled interrupt
EPDM: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOM [3:3]
/// Timeout condition mask (Non-isochronous
TOM: u1 = 0,
/// ITTXFEMSK [4:4]
/// IN token received when TxFIFO empty
ITTXFEMSK: u1 = 0,
/// INEPNMM [5:5]
/// IN token received with EP mismatch
INEPNMM: u1 = 0,
/// INEPNEM [6:6]
/// IN endpoint NAK effective
INEPNEM: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS device IN endpoint common interrupt
pub const FS_DIEPMSK = MMIO(FS_DIEPMSK_val).init(base_address + 0x10);

/// FS_DOEPMSK
const FS_DOEPMSK_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed interrupt
XFRCM: u1 = 0,
/// EPDM [1:1]
/// Endpoint disabled interrupt
EPDM: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STUPM [3:3]
/// SETUP phase done mask
STUPM: u1 = 0,
/// OTEPDM [4:4]
/// OUT token received when endpoint
OTEPDM: u1 = 0,
/// unused [5:31]
_unused5: u3 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS device OUT endpoint common interrupt
pub const FS_DOEPMSK = MMIO(FS_DOEPMSK_val).init(base_address + 0x14);

/// FS_DAINT
const FS_DAINT_val = packed struct {
/// IEPINT [0:15]
/// IN endpoint interrupt bits
IEPINT: u16 = 0,
/// OEPINT [16:31]
/// OUT endpoint interrupt
OEPINT: u16 = 0,
};
/// OTG_FS device all endpoints interrupt
pub const FS_DAINT = MMIO(FS_DAINT_val).init(base_address + 0x18);

/// FS_DAINTMSK
const FS_DAINTMSK_val = packed struct {
/// IEPM [0:15]
/// IN EP interrupt mask bits
IEPM: u16 = 0,
/// OEPINT [16:31]
/// OUT endpoint interrupt
OEPINT: u16 = 0,
};
/// OTG_FS all endpoints interrupt mask register
pub const FS_DAINTMSK = MMIO(FS_DAINTMSK_val).init(base_address + 0x1c);

/// DVBUSDIS
const DVBUSDIS_val = packed struct {
/// VBUSDT [0:15]
/// Device VBUS discharge time
VBUSDT: u16 = 6103,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS device VBUS discharge time
pub const DVBUSDIS = MMIO(DVBUSDIS_val).init(base_address + 0x28);

/// DVBUSPULSE
const DVBUSPULSE_val = packed struct {
/// DVBUSP [0:11]
/// Device VBUS pulsing time
DVBUSP: u12 = 1464,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS device VBUS pulsing time
pub const DVBUSPULSE = MMIO(DVBUSPULSE_val).init(base_address + 0x2c);

/// DIEPEMPMSK
const DIEPEMPMSK_val = packed struct {
/// INEPTXFEM [0:15]
/// IN EP Tx FIFO empty interrupt mask
INEPTXFEM: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS device IN endpoint FIFO empty
pub const DIEPEMPMSK = MMIO(DIEPEMPMSK_val).init(base_address + 0x34);

/// FS_DIEPCTL0
const FS_DIEPCTL0_val = packed struct {
/// MPSIZ [0:1]
/// Maximum packet size
MPSIZ: u2 = 0,
/// unused [2:14]
_unused2: u6 = 0,
_unused8: u7 = 0,
/// USBAEP [15:15]
/// USB active endpoint
USBAEP: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// NAKSTS [17:17]
/// NAK status
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// unused [20:20]
_unused20: u1 = 0,
/// STALL [21:21]
/// STALL handshake
STALL: u1 = 0,
/// TXFNUM [22:25]
/// TxFIFO number
TXFNUM: u4 = 0,
/// CNAK [26:26]
/// Clear NAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// Set NAK
SNAK: u1 = 0,
/// unused [28:29]
_unused28: u2 = 0,
/// EPDIS [30:30]
/// Endpoint disable
EPDIS: u1 = 0,
/// EPENA [31:31]
/// Endpoint enable
EPENA: u1 = 0,
};
/// OTG_FS device control IN endpoint 0 control
pub const FS_DIEPCTL0 = MMIO(FS_DIEPCTL0_val).init(base_address + 0x100);

/// DIEPCTL1
const DIEPCTL1_val = packed struct {
/// MPSIZ [0:10]
/// MPSIZ
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USBAEP
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// EONUM/DPID
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAKSTS
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// EPTYP
EPTYP: u2 = 0,
/// unused [20:20]
_unused20: u1 = 0,
/// Stall [21:21]
/// Stall
Stall: u1 = 0,
/// TXFNUM [22:25]
/// TXFNUM
TXFNUM: u4 = 0,
/// CNAK [26:26]
/// CNAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// SNAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// SD0PID/SEVNFRM
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM_SD1PID [29:29]
/// SODDFRM/SD1PID
SODDFRM_SD1PID: u1 = 0,
/// EPDIS [30:30]
/// EPDIS
EPDIS: u1 = 0,
/// EPENA [31:31]
/// EPENA
EPENA: u1 = 0,
};
/// OTG device endpoint-1 control
pub const DIEPCTL1 = MMIO(DIEPCTL1_val).init(base_address + 0x120);

/// DIEPCTL2
const DIEPCTL2_val = packed struct {
/// MPSIZ [0:10]
/// MPSIZ
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USBAEP
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// EONUM/DPID
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAKSTS
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// EPTYP
EPTYP: u2 = 0,
/// unused [20:20]
_unused20: u1 = 0,
/// Stall [21:21]
/// Stall
Stall: u1 = 0,
/// TXFNUM [22:25]
/// TXFNUM
TXFNUM: u4 = 0,
/// CNAK [26:26]
/// CNAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// SNAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// SD0PID/SEVNFRM
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// SODDFRM
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// EPDIS
EPDIS: u1 = 0,
/// EPENA [31:31]
/// EPENA
EPENA: u1 = 0,
};
/// OTG device endpoint-2 control
pub const DIEPCTL2 = MMIO(DIEPCTL2_val).init(base_address + 0x140);

/// DIEPCTL3
const DIEPCTL3_val = packed struct {
/// MPSIZ [0:10]
/// MPSIZ
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USBAEP
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// EONUM/DPID
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAKSTS
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// EPTYP
EPTYP: u2 = 0,
/// unused [20:20]
_unused20: u1 = 0,
/// Stall [21:21]
/// Stall
Stall: u1 = 0,
/// TXFNUM [22:25]
/// TXFNUM
TXFNUM: u4 = 0,
/// CNAK [26:26]
/// CNAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// SNAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// SD0PID/SEVNFRM
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// SODDFRM
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// EPDIS
EPDIS: u1 = 0,
/// EPENA [31:31]
/// EPENA
EPENA: u1 = 0,
};
/// OTG device endpoint-3 control
pub const DIEPCTL3 = MMIO(DIEPCTL3_val).init(base_address + 0x160);

/// DOEPCTL0
const DOEPCTL0_val = packed struct {
/// MPSIZ [0:1]
/// MPSIZ
MPSIZ: u2 = 0,
/// unused [2:14]
_unused2: u6 = 0,
_unused8: u7 = 0,
/// USBAEP [15:15]
/// USBAEP
USBAEP: u1 = 1,
/// unused [16:16]
_unused16: u1 = 0,
/// NAKSTS [17:17]
/// NAKSTS
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// EPTYP
EPTYP: u2 = 0,
/// SNPM [20:20]
/// SNPM
SNPM: u1 = 0,
/// Stall [21:21]
/// Stall
Stall: u1 = 0,
/// unused [22:25]
_unused22: u2 = 0,
_unused24: u2 = 0,
/// CNAK [26:26]
/// CNAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// SNAK
SNAK: u1 = 0,
/// unused [28:29]
_unused28: u2 = 0,
/// EPDIS [30:30]
/// EPDIS
EPDIS: u1 = 0,
/// EPENA [31:31]
/// EPENA
EPENA: u1 = 0,
};
/// device endpoint-0 control
pub const DOEPCTL0 = MMIO(DOEPCTL0_val).init(base_address + 0x300);

/// DOEPCTL1
const DOEPCTL1_val = packed struct {
/// MPSIZ [0:10]
/// MPSIZ
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USBAEP
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// EONUM/DPID
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAKSTS
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// EPTYP
EPTYP: u2 = 0,
/// SNPM [20:20]
/// SNPM
SNPM: u1 = 0,
/// Stall [21:21]
/// Stall
Stall: u1 = 0,
/// unused [22:25]
_unused22: u2 = 0,
_unused24: u2 = 0,
/// CNAK [26:26]
/// CNAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// SNAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// SD0PID/SEVNFRM
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// SODDFRM
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// EPDIS
EPDIS: u1 = 0,
/// EPENA [31:31]
/// EPENA
EPENA: u1 = 0,
};
/// device endpoint-1 control
pub const DOEPCTL1 = MMIO(DOEPCTL1_val).init(base_address + 0x320);

/// DOEPCTL2
const DOEPCTL2_val = packed struct {
/// MPSIZ [0:10]
/// MPSIZ
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USBAEP
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// EONUM/DPID
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAKSTS
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// EPTYP
EPTYP: u2 = 0,
/// SNPM [20:20]
/// SNPM
SNPM: u1 = 0,
/// Stall [21:21]
/// Stall
Stall: u1 = 0,
/// unused [22:25]
_unused22: u2 = 0,
_unused24: u2 = 0,
/// CNAK [26:26]
/// CNAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// SNAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// SD0PID/SEVNFRM
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// SODDFRM
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// EPDIS
EPDIS: u1 = 0,
/// EPENA [31:31]
/// EPENA
EPENA: u1 = 0,
};
/// device endpoint-2 control
pub const DOEPCTL2 = MMIO(DOEPCTL2_val).init(base_address + 0x340);

/// DOEPCTL3
const DOEPCTL3_val = packed struct {
/// MPSIZ [0:10]
/// MPSIZ
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USBAEP
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// EONUM/DPID
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAKSTS
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// EPTYP
EPTYP: u2 = 0,
/// SNPM [20:20]
/// SNPM
SNPM: u1 = 0,
/// Stall [21:21]
/// Stall
Stall: u1 = 0,
/// unused [22:25]
_unused22: u2 = 0,
_unused24: u2 = 0,
/// CNAK [26:26]
/// CNAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// SNAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// SD0PID/SEVNFRM
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// SODDFRM
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// EPDIS
EPDIS: u1 = 0,
/// EPENA [31:31]
/// EPENA
EPENA: u1 = 0,
};
/// device endpoint-3 control
pub const DOEPCTL3 = MMIO(DOEPCTL3_val).init(base_address + 0x360);

/// DIEPINT0
const DIEPINT0_val = packed struct {
/// XFRC [0:0]
/// XFRC
XFRC: u1 = 0,
/// EPDISD [1:1]
/// EPDISD
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOC [3:3]
/// TOC
TOC: u1 = 0,
/// ITTXFE [4:4]
/// ITTXFE
ITTXFE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// INEPNE [6:6]
/// INEPNE
INEPNE: u1 = 0,
/// TXFE [7:7]
/// TXFE
TXFE: u1 = 1,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// device endpoint-x interrupt
pub const DIEPINT0 = MMIO(DIEPINT0_val).init(base_address + 0x108);

/// DIEPINT1
const DIEPINT1_val = packed struct {
/// XFRC [0:0]
/// XFRC
XFRC: u1 = 0,
/// EPDISD [1:1]
/// EPDISD
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOC [3:3]
/// TOC
TOC: u1 = 0,
/// ITTXFE [4:4]
/// ITTXFE
ITTXFE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// INEPNE [6:6]
/// INEPNE
INEPNE: u1 = 0,
/// TXFE [7:7]
/// TXFE
TXFE: u1 = 1,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// device endpoint-1 interrupt
pub const DIEPINT1 = MMIO(DIEPINT1_val).init(base_address + 0x128);

/// DIEPINT2
const DIEPINT2_val = packed struct {
/// XFRC [0:0]
/// XFRC
XFRC: u1 = 0,
/// EPDISD [1:1]
/// EPDISD
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOC [3:3]
/// TOC
TOC: u1 = 0,
/// ITTXFE [4:4]
/// ITTXFE
ITTXFE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// INEPNE [6:6]
/// INEPNE
INEPNE: u1 = 0,
/// TXFE [7:7]
/// TXFE
TXFE: u1 = 1,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// device endpoint-2 interrupt
pub const DIEPINT2 = MMIO(DIEPINT2_val).init(base_address + 0x148);

/// DIEPINT3
const DIEPINT3_val = packed struct {
/// XFRC [0:0]
/// XFRC
XFRC: u1 = 0,
/// EPDISD [1:1]
/// EPDISD
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOC [3:3]
/// TOC
TOC: u1 = 0,
/// ITTXFE [4:4]
/// ITTXFE
ITTXFE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// INEPNE [6:6]
/// INEPNE
INEPNE: u1 = 0,
/// TXFE [7:7]
/// TXFE
TXFE: u1 = 1,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// device endpoint-3 interrupt
pub const DIEPINT3 = MMIO(DIEPINT3_val).init(base_address + 0x168);

/// DOEPINT0
const DOEPINT0_val = packed struct {
/// XFRC [0:0]
/// XFRC
XFRC: u1 = 0,
/// EPDISD [1:1]
/// EPDISD
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STUP [3:3]
/// STUP
STUP: u1 = 0,
/// OTEPDIS [4:4]
/// OTEPDIS
OTEPDIS: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// B2BSTUP [6:6]
/// B2BSTUP
B2BSTUP: u1 = 0,
/// unused [7:31]
_unused7: u1 = 1,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// device endpoint-0 interrupt
pub const DOEPINT0 = MMIO(DOEPINT0_val).init(base_address + 0x308);

/// DOEPINT1
const DOEPINT1_val = packed struct {
/// XFRC [0:0]
/// XFRC
XFRC: u1 = 0,
/// EPDISD [1:1]
/// EPDISD
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STUP [3:3]
/// STUP
STUP: u1 = 0,
/// OTEPDIS [4:4]
/// OTEPDIS
OTEPDIS: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// B2BSTUP [6:6]
/// B2BSTUP
B2BSTUP: u1 = 0,
/// unused [7:31]
_unused7: u1 = 1,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// device endpoint-1 interrupt
pub const DOEPINT1 = MMIO(DOEPINT1_val).init(base_address + 0x328);

/// DOEPINT2
const DOEPINT2_val = packed struct {
/// XFRC [0:0]
/// XFRC
XFRC: u1 = 0,
/// EPDISD [1:1]
/// EPDISD
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STUP [3:3]
/// STUP
STUP: u1 = 0,
/// OTEPDIS [4:4]
/// OTEPDIS
OTEPDIS: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// B2BSTUP [6:6]
/// B2BSTUP
B2BSTUP: u1 = 0,
/// unused [7:31]
_unused7: u1 = 1,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// device endpoint-2 interrupt
pub const DOEPINT2 = MMIO(DOEPINT2_val).init(base_address + 0x348);

/// DOEPINT3
const DOEPINT3_val = packed struct {
/// XFRC [0:0]
/// XFRC
XFRC: u1 = 0,
/// EPDISD [1:1]
/// EPDISD
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STUP [3:3]
/// STUP
STUP: u1 = 0,
/// OTEPDIS [4:4]
/// OTEPDIS
OTEPDIS: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// B2BSTUP [6:6]
/// B2BSTUP
B2BSTUP: u1 = 0,
/// unused [7:31]
_unused7: u1 = 1,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// device endpoint-3 interrupt
pub const DOEPINT3 = MMIO(DOEPINT3_val).init(base_address + 0x368);

/// DIEPTSIZ0
const DIEPTSIZ0_val = packed struct {
/// XFRSIZ [0:6]
/// Transfer size
XFRSIZ: u7 = 0,
/// unused [7:18]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u3 = 0,
/// PKTCNT [19:20]
/// Packet count
PKTCNT: u2 = 0,
/// unused [21:31]
_unused21: u3 = 0,
_unused24: u8 = 0,
};
/// device endpoint-0 transfer size
pub const DIEPTSIZ0 = MMIO(DIEPTSIZ0_val).init(base_address + 0x110);

/// DOEPTSIZ0
const DOEPTSIZ0_val = packed struct {
/// XFRSIZ [0:6]
/// Transfer size
XFRSIZ: u7 = 0,
/// unused [7:18]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u3 = 0,
/// PKTCNT [19:19]
/// Packet count
PKTCNT: u1 = 0,
/// unused [20:28]
_unused20: u4 = 0,
_unused24: u5 = 0,
/// STUPCNT [29:30]
/// SETUP packet count
STUPCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// device OUT endpoint-0 transfer size
pub const DOEPTSIZ0 = MMIO(DOEPTSIZ0_val).init(base_address + 0x310);

/// DIEPTSIZ1
const DIEPTSIZ1_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// MCNT [29:30]
/// Multi count
MCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// device endpoint-1 transfer size
pub const DIEPTSIZ1 = MMIO(DIEPTSIZ1_val).init(base_address + 0x130);

/// DIEPTSIZ2
const DIEPTSIZ2_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// MCNT [29:30]
/// Multi count
MCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// device endpoint-2 transfer size
pub const DIEPTSIZ2 = MMIO(DIEPTSIZ2_val).init(base_address + 0x150);

/// DIEPTSIZ3
const DIEPTSIZ3_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// MCNT [29:30]
/// Multi count
MCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// device endpoint-3 transfer size
pub const DIEPTSIZ3 = MMIO(DIEPTSIZ3_val).init(base_address + 0x170);

/// DTXFSTS0
const DTXFSTS0_val = packed struct {
/// INEPTFSAV [0:15]
/// IN endpoint TxFIFO space
INEPTFSAV: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS device IN endpoint transmit FIFO
pub const DTXFSTS0 = MMIO(DTXFSTS0_val).init(base_address + 0x118);

/// DTXFSTS1
const DTXFSTS1_val = packed struct {
/// INEPTFSAV [0:15]
/// IN endpoint TxFIFO space
INEPTFSAV: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS device IN endpoint transmit FIFO
pub const DTXFSTS1 = MMIO(DTXFSTS1_val).init(base_address + 0x138);

/// DTXFSTS2
const DTXFSTS2_val = packed struct {
/// INEPTFSAV [0:15]
/// IN endpoint TxFIFO space
INEPTFSAV: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS device IN endpoint transmit FIFO
pub const DTXFSTS2 = MMIO(DTXFSTS2_val).init(base_address + 0x158);

/// DTXFSTS3
const DTXFSTS3_val = packed struct {
/// INEPTFSAV [0:15]
/// IN endpoint TxFIFO space
INEPTFSAV: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS device IN endpoint transmit FIFO
pub const DTXFSTS3 = MMIO(DTXFSTS3_val).init(base_address + 0x178);

/// DOEPTSIZ1
const DOEPTSIZ1_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// RXDPID_STUPCNT [29:30]
/// Received data PID/SETUP packet
RXDPID_STUPCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// device OUT endpoint-1 transfer size
pub const DOEPTSIZ1 = MMIO(DOEPTSIZ1_val).init(base_address + 0x330);

/// DOEPTSIZ2
const DOEPTSIZ2_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// RXDPID_STUPCNT [29:30]
/// Received data PID/SETUP packet
RXDPID_STUPCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// device OUT endpoint-2 transfer size
pub const DOEPTSIZ2 = MMIO(DOEPTSIZ2_val).init(base_address + 0x350);

/// DOEPTSIZ3
const DOEPTSIZ3_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// RXDPID_STUPCNT [29:30]
/// Received data PID/SETUP packet
RXDPID_STUPCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// device OUT endpoint-3 transfer size
pub const DOEPTSIZ3 = MMIO(DOEPTSIZ3_val).init(base_address + 0x370);
};

/// USB on the go full speed
pub const OTG_FS_PWRCLK = struct {

const base_address = 0x50000e00;
/// FS_PCGCCTL
const FS_PCGCCTL_val = packed struct {
/// STPPCLK [0:0]
/// Stop PHY clock
STPPCLK: u1 = 0,
/// GATEHCLK [1:1]
/// Gate HCLK
GATEHCLK: u1 = 0,
/// unused [2:3]
_unused2: u2 = 0,
/// PHYSUSP [4:4]
/// PHY Suspended
PHYSUSP: u1 = 0,
/// unused [5:31]
_unused5: u3 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_FS power and clock gating control
pub const FS_PCGCCTL = MMIO(FS_PCGCCTL_val).init(base_address + 0x0);
};

/// Controller area network
pub const CAN1 = struct {

const base_address = 0x40006400;
/// MCR
const MCR_val = packed struct {
/// INRQ [0:0]
/// INRQ
INRQ: u1 = 0,
/// SLEEP [1:1]
/// SLEEP
SLEEP: u1 = 1,
/// TXFP [2:2]
/// TXFP
TXFP: u1 = 0,
/// RFLM [3:3]
/// RFLM
RFLM: u1 = 0,
/// NART [4:4]
/// NART
NART: u1 = 0,
/// AWUM [5:5]
/// AWUM
AWUM: u1 = 0,
/// ABOM [6:6]
/// ABOM
ABOM: u1 = 0,
/// TTCM [7:7]
/// TTCM
TTCM: u1 = 0,
/// unused [8:14]
_unused8: u7 = 0,
/// RESET [15:15]
/// RESET
RESET: u1 = 0,
/// DBF [16:16]
/// DBF
DBF: u1 = 1,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// master control register
pub const MCR = MMIO(MCR_val).init(base_address + 0x0);

/// MSR
const MSR_val = packed struct {
/// INAK [0:0]
/// INAK
INAK: u1 = 0,
/// SLAK [1:1]
/// SLAK
SLAK: u1 = 1,
/// ERRI [2:2]
/// ERRI
ERRI: u1 = 0,
/// WKUI [3:3]
/// WKUI
WKUI: u1 = 0,
/// SLAKI [4:4]
/// SLAKI
SLAKI: u1 = 0,
/// unused [5:7]
_unused5: u3 = 0,
/// TXM [8:8]
/// TXM
TXM: u1 = 0,
/// RXM [9:9]
/// RXM
RXM: u1 = 0,
/// SAMP [10:10]
/// SAMP
SAMP: u1 = 1,
/// RX [11:11]
/// RX
RX: u1 = 1,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// master status register
pub const MSR = MMIO(MSR_val).init(base_address + 0x4);

/// TSR
const TSR_val = packed struct {
/// RQCP0 [0:0]
/// RQCP0
RQCP0: u1 = 0,
/// TXOK0 [1:1]
/// TXOK0
TXOK0: u1 = 0,
/// ALST0 [2:2]
/// ALST0
ALST0: u1 = 0,
/// TERR0 [3:3]
/// TERR0
TERR0: u1 = 0,
/// unused [4:6]
_unused4: u3 = 0,
/// ABRQ0 [7:7]
/// ABRQ0
ABRQ0: u1 = 0,
/// RQCP1 [8:8]
/// RQCP1
RQCP1: u1 = 0,
/// TXOK1 [9:9]
/// TXOK1
TXOK1: u1 = 0,
/// ALST1 [10:10]
/// ALST1
ALST1: u1 = 0,
/// TERR1 [11:11]
/// TERR1
TERR1: u1 = 0,
/// unused [12:14]
_unused12: u3 = 0,
/// ABRQ1 [15:15]
/// ABRQ1
ABRQ1: u1 = 0,
/// RQCP2 [16:16]
/// RQCP2
RQCP2: u1 = 0,
/// TXOK2 [17:17]
/// TXOK2
TXOK2: u1 = 0,
/// ALST2 [18:18]
/// ALST2
ALST2: u1 = 0,
/// TERR2 [19:19]
/// TERR2
TERR2: u1 = 0,
/// unused [20:22]
_unused20: u3 = 0,
/// ABRQ2 [23:23]
/// ABRQ2
ABRQ2: u1 = 0,
/// CODE [24:25]
/// CODE
CODE: u2 = 0,
/// TME0 [26:26]
/// Lowest priority flag for mailbox
TME0: u1 = 1,
/// TME1 [27:27]
/// Lowest priority flag for mailbox
TME1: u1 = 1,
/// TME2 [28:28]
/// Lowest priority flag for mailbox
TME2: u1 = 1,
/// LOW0 [29:29]
/// Lowest priority flag for mailbox
LOW0: u1 = 0,
/// LOW1 [30:30]
/// Lowest priority flag for mailbox
LOW1: u1 = 0,
/// LOW2 [31:31]
/// Lowest priority flag for mailbox
LOW2: u1 = 0,
};
/// transmit status register
pub const TSR = MMIO(TSR_val).init(base_address + 0x8);

/// RF0R
const RF0R_val = packed struct {
/// FMP0 [0:1]
/// FMP0
FMP0: u2 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// FULL0 [3:3]
/// FULL0
FULL0: u1 = 0,
/// FOVR0 [4:4]
/// FOVR0
FOVR0: u1 = 0,
/// RFOM0 [5:5]
/// RFOM0
RFOM0: u1 = 0,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// receive FIFO 0 register
pub const RF0R = MMIO(RF0R_val).init(base_address + 0xc);

/// RF1R
const RF1R_val = packed struct {
/// FMP1 [0:1]
/// FMP1
FMP1: u2 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// FULL1 [3:3]
/// FULL1
FULL1: u1 = 0,
/// FOVR1 [4:4]
/// FOVR1
FOVR1: u1 = 0,
/// RFOM1 [5:5]
/// RFOM1
RFOM1: u1 = 0,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// receive FIFO 1 register
pub const RF1R = MMIO(RF1R_val).init(base_address + 0x10);

/// IER
const IER_val = packed struct {
/// TMEIE [0:0]
/// TMEIE
TMEIE: u1 = 0,
/// FMPIE0 [1:1]
/// FMPIE0
FMPIE0: u1 = 0,
/// FFIE0 [2:2]
/// FFIE0
FFIE0: u1 = 0,
/// FOVIE0 [3:3]
/// FOVIE0
FOVIE0: u1 = 0,
/// FMPIE1 [4:4]
/// FMPIE1
FMPIE1: u1 = 0,
/// FFIE1 [5:5]
/// FFIE1
FFIE1: u1 = 0,
/// FOVIE1 [6:6]
/// FOVIE1
FOVIE1: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// EWGIE [8:8]
/// EWGIE
EWGIE: u1 = 0,
/// EPVIE [9:9]
/// EPVIE
EPVIE: u1 = 0,
/// BOFIE [10:10]
/// BOFIE
BOFIE: u1 = 0,
/// LECIE [11:11]
/// LECIE
LECIE: u1 = 0,
/// unused [12:14]
_unused12: u3 = 0,
/// ERRIE [15:15]
/// ERRIE
ERRIE: u1 = 0,
/// WKUIE [16:16]
/// WKUIE
WKUIE: u1 = 0,
/// SLKIE [17:17]
/// SLKIE
SLKIE: u1 = 0,
/// unused [18:31]
_unused18: u6 = 0,
_unused24: u8 = 0,
};
/// interrupt enable register
pub const IER = MMIO(IER_val).init(base_address + 0x14);

/// ESR
const ESR_val = packed struct {
/// EWGF [0:0]
/// EWGF
EWGF: u1 = 0,
/// EPVF [1:1]
/// EPVF
EPVF: u1 = 0,
/// BOFF [2:2]
/// BOFF
BOFF: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// LEC [4:6]
/// LEC
LEC: u3 = 0,
/// unused [7:15]
_unused7: u1 = 0,
_unused8: u8 = 0,
/// TEC [16:23]
/// TEC
TEC: u8 = 0,
/// REC [24:31]
/// REC
REC: u8 = 0,
};
/// interrupt enable register
pub const ESR = MMIO(ESR_val).init(base_address + 0x18);

/// BTR
const BTR_val = packed struct {
/// BRP [0:9]
/// BRP
BRP: u10 = 0,
/// unused [10:15]
_unused10: u6 = 0,
/// TS1 [16:19]
/// TS1
TS1: u4 = 0,
/// TS2 [20:22]
/// TS2
TS2: u3 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// SJW [24:25]
/// SJW
SJW: u2 = 0,
/// unused [26:29]
_unused26: u4 = 0,
/// LBKM [30:30]
/// LBKM
LBKM: u1 = 0,
/// SILM [31:31]
/// SILM
SILM: u1 = 0,
};
/// bit timing register
pub const BTR = MMIO(BTR_val).init(base_address + 0x1c);

/// TI0R
const TI0R_val = packed struct {
/// TXRQ [0:0]
/// TXRQ
TXRQ: u1 = 0,
/// RTR [1:1]
/// RTR
RTR: u1 = 0,
/// IDE [2:2]
/// IDE
IDE: u1 = 0,
/// EXID [3:20]
/// EXID
EXID: u18 = 0,
/// STID [21:31]
/// STID
STID: u11 = 0,
};
/// TX mailbox identifier register
pub const TI0R = MMIO(TI0R_val).init(base_address + 0x180);

/// TDT0R
const TDT0R_val = packed struct {
/// DLC [0:3]
/// DLC
DLC: u4 = 0,
/// unused [4:7]
_unused4: u4 = 0,
/// TGT [8:8]
/// TGT
TGT: u1 = 0,
/// unused [9:15]
_unused9: u7 = 0,
/// TIME [16:31]
/// TIME
TIME: u16 = 0,
};
/// mailbox data length control and time stamp
pub const TDT0R = MMIO(TDT0R_val).init(base_address + 0x184);

/// TDL0R
const TDL0R_val = packed struct {
/// DATA0 [0:7]
/// DATA0
DATA0: u8 = 0,
/// DATA1 [8:15]
/// DATA1
DATA1: u8 = 0,
/// DATA2 [16:23]
/// DATA2
DATA2: u8 = 0,
/// DATA3 [24:31]
/// DATA3
DATA3: u8 = 0,
};
/// mailbox data low register
pub const TDL0R = MMIO(TDL0R_val).init(base_address + 0x188);

/// TDH0R
const TDH0R_val = packed struct {
/// DATA4 [0:7]
/// DATA4
DATA4: u8 = 0,
/// DATA5 [8:15]
/// DATA5
DATA5: u8 = 0,
/// DATA6 [16:23]
/// DATA6
DATA6: u8 = 0,
/// DATA7 [24:31]
/// DATA7
DATA7: u8 = 0,
};
/// mailbox data high register
pub const TDH0R = MMIO(TDH0R_val).init(base_address + 0x18c);

/// TI1R
const TI1R_val = packed struct {
/// TXRQ [0:0]
/// TXRQ
TXRQ: u1 = 0,
/// RTR [1:1]
/// RTR
RTR: u1 = 0,
/// IDE [2:2]
/// IDE
IDE: u1 = 0,
/// EXID [3:20]
/// EXID
EXID: u18 = 0,
/// STID [21:31]
/// STID
STID: u11 = 0,
};
/// mailbox identifier register
pub const TI1R = MMIO(TI1R_val).init(base_address + 0x190);

/// TDT1R
const TDT1R_val = packed struct {
/// DLC [0:3]
/// DLC
DLC: u4 = 0,
/// unused [4:7]
_unused4: u4 = 0,
/// TGT [8:8]
/// TGT
TGT: u1 = 0,
/// unused [9:15]
_unused9: u7 = 0,
/// TIME [16:31]
/// TIME
TIME: u16 = 0,
};
/// mailbox data length control and time stamp
pub const TDT1R = MMIO(TDT1R_val).init(base_address + 0x194);

/// TDL1R
const TDL1R_val = packed struct {
/// DATA0 [0:7]
/// DATA0
DATA0: u8 = 0,
/// DATA1 [8:15]
/// DATA1
DATA1: u8 = 0,
/// DATA2 [16:23]
/// DATA2
DATA2: u8 = 0,
/// DATA3 [24:31]
/// DATA3
DATA3: u8 = 0,
};
/// mailbox data low register
pub const TDL1R = MMIO(TDL1R_val).init(base_address + 0x198);

/// TDH1R
const TDH1R_val = packed struct {
/// DATA4 [0:7]
/// DATA4
DATA4: u8 = 0,
/// DATA5 [8:15]
/// DATA5
DATA5: u8 = 0,
/// DATA6 [16:23]
/// DATA6
DATA6: u8 = 0,
/// DATA7 [24:31]
/// DATA7
DATA7: u8 = 0,
};
/// mailbox data high register
pub const TDH1R = MMIO(TDH1R_val).init(base_address + 0x19c);

/// TI2R
const TI2R_val = packed struct {
/// TXRQ [0:0]
/// TXRQ
TXRQ: u1 = 0,
/// RTR [1:1]
/// RTR
RTR: u1 = 0,
/// IDE [2:2]
/// IDE
IDE: u1 = 0,
/// EXID [3:20]
/// EXID
EXID: u18 = 0,
/// STID [21:31]
/// STID
STID: u11 = 0,
};
/// mailbox identifier register
pub const TI2R = MMIO(TI2R_val).init(base_address + 0x1a0);

/// TDT2R
const TDT2R_val = packed struct {
/// DLC [0:3]
/// DLC
DLC: u4 = 0,
/// unused [4:7]
_unused4: u4 = 0,
/// TGT [8:8]
/// TGT
TGT: u1 = 0,
/// unused [9:15]
_unused9: u7 = 0,
/// TIME [16:31]
/// TIME
TIME: u16 = 0,
};
/// mailbox data length control and time stamp
pub const TDT2R = MMIO(TDT2R_val).init(base_address + 0x1a4);

/// TDL2R
const TDL2R_val = packed struct {
/// DATA0 [0:7]
/// DATA0
DATA0: u8 = 0,
/// DATA1 [8:15]
/// DATA1
DATA1: u8 = 0,
/// DATA2 [16:23]
/// DATA2
DATA2: u8 = 0,
/// DATA3 [24:31]
/// DATA3
DATA3: u8 = 0,
};
/// mailbox data low register
pub const TDL2R = MMIO(TDL2R_val).init(base_address + 0x1a8);

/// TDH2R
const TDH2R_val = packed struct {
/// DATA4 [0:7]
/// DATA4
DATA4: u8 = 0,
/// DATA5 [8:15]
/// DATA5
DATA5: u8 = 0,
/// DATA6 [16:23]
/// DATA6
DATA6: u8 = 0,
/// DATA7 [24:31]
/// DATA7
DATA7: u8 = 0,
};
/// mailbox data high register
pub const TDH2R = MMIO(TDH2R_val).init(base_address + 0x1ac);

/// RI0R
const RI0R_val = packed struct {
/// unused [0:0]
_unused0: u1 = 0,
/// RTR [1:1]
/// RTR
RTR: u1 = 0,
/// IDE [2:2]
/// IDE
IDE: u1 = 0,
/// EXID [3:20]
/// EXID
EXID: u18 = 0,
/// STID [21:31]
/// STID
STID: u11 = 0,
};
/// receive FIFO mailbox identifier
pub const RI0R = MMIO(RI0R_val).init(base_address + 0x1b0);

/// RDT0R
const RDT0R_val = packed struct {
/// DLC [0:3]
/// DLC
DLC: u4 = 0,
/// unused [4:7]
_unused4: u4 = 0,
/// FMI [8:15]
/// FMI
FMI: u8 = 0,
/// TIME [16:31]
/// TIME
TIME: u16 = 0,
};
/// mailbox data high register
pub const RDT0R = MMIO(RDT0R_val).init(base_address + 0x1b4);

/// RDL0R
const RDL0R_val = packed struct {
/// DATA0 [0:7]
/// DATA0
DATA0: u8 = 0,
/// DATA1 [8:15]
/// DATA1
DATA1: u8 = 0,
/// DATA2 [16:23]
/// DATA2
DATA2: u8 = 0,
/// DATA3 [24:31]
/// DATA3
DATA3: u8 = 0,
};
/// mailbox data high register
pub const RDL0R = MMIO(RDL0R_val).init(base_address + 0x1b8);

/// RDH0R
const RDH0R_val = packed struct {
/// DATA4 [0:7]
/// DATA4
DATA4: u8 = 0,
/// DATA5 [8:15]
/// DATA5
DATA5: u8 = 0,
/// DATA6 [16:23]
/// DATA6
DATA6: u8 = 0,
/// DATA7 [24:31]
/// DATA7
DATA7: u8 = 0,
};
/// receive FIFO mailbox data high
pub const RDH0R = MMIO(RDH0R_val).init(base_address + 0x1bc);

/// RI1R
const RI1R_val = packed struct {
/// unused [0:0]
_unused0: u1 = 0,
/// RTR [1:1]
/// RTR
RTR: u1 = 0,
/// IDE [2:2]
/// IDE
IDE: u1 = 0,
/// EXID [3:20]
/// EXID
EXID: u18 = 0,
/// STID [21:31]
/// STID
STID: u11 = 0,
};
/// mailbox data high register
pub const RI1R = MMIO(RI1R_val).init(base_address + 0x1c0);

/// RDT1R
const RDT1R_val = packed struct {
/// DLC [0:3]
/// DLC
DLC: u4 = 0,
/// unused [4:7]
_unused4: u4 = 0,
/// FMI [8:15]
/// FMI
FMI: u8 = 0,
/// TIME [16:31]
/// TIME
TIME: u16 = 0,
};
/// mailbox data high register
pub const RDT1R = MMIO(RDT1R_val).init(base_address + 0x1c4);

/// RDL1R
const RDL1R_val = packed struct {
/// DATA0 [0:7]
/// DATA0
DATA0: u8 = 0,
/// DATA1 [8:15]
/// DATA1
DATA1: u8 = 0,
/// DATA2 [16:23]
/// DATA2
DATA2: u8 = 0,
/// DATA3 [24:31]
/// DATA3
DATA3: u8 = 0,
};
/// mailbox data high register
pub const RDL1R = MMIO(RDL1R_val).init(base_address + 0x1c8);

/// RDH1R
const RDH1R_val = packed struct {
/// DATA4 [0:7]
/// DATA4
DATA4: u8 = 0,
/// DATA5 [8:15]
/// DATA5
DATA5: u8 = 0,
/// DATA6 [16:23]
/// DATA6
DATA6: u8 = 0,
/// DATA7 [24:31]
/// DATA7
DATA7: u8 = 0,
};
/// mailbox data high register
pub const RDH1R = MMIO(RDH1R_val).init(base_address + 0x1cc);

/// FMR
const FMR_val = packed struct {
/// FINIT [0:0]
/// FINIT
FINIT: u1 = 1,
/// unused [1:7]
_unused1: u7 = 0,
/// CAN2SB [8:13]
/// CAN2SB
CAN2SB: u6 = 14,
/// unused [14:31]
_unused14: u2 = 0,
_unused16: u8 = 28,
_unused24: u8 = 42,
};
/// filter master register
pub const FMR = MMIO(FMR_val).init(base_address + 0x200);

/// FM1R
const FM1R_val = packed struct {
/// FBM0 [0:0]
/// Filter mode
FBM0: u1 = 0,
/// FBM1 [1:1]
/// Filter mode
FBM1: u1 = 0,
/// FBM2 [2:2]
/// Filter mode
FBM2: u1 = 0,
/// FBM3 [3:3]
/// Filter mode
FBM3: u1 = 0,
/// FBM4 [4:4]
/// Filter mode
FBM4: u1 = 0,
/// FBM5 [5:5]
/// Filter mode
FBM5: u1 = 0,
/// FBM6 [6:6]
/// Filter mode
FBM6: u1 = 0,
/// FBM7 [7:7]
/// Filter mode
FBM7: u1 = 0,
/// FBM8 [8:8]
/// Filter mode
FBM8: u1 = 0,
/// FBM9 [9:9]
/// Filter mode
FBM9: u1 = 0,
/// FBM10 [10:10]
/// Filter mode
FBM10: u1 = 0,
/// FBM11 [11:11]
/// Filter mode
FBM11: u1 = 0,
/// FBM12 [12:12]
/// Filter mode
FBM12: u1 = 0,
/// FBM13 [13:13]
/// Filter mode
FBM13: u1 = 0,
/// FBM14 [14:14]
/// Filter mode
FBM14: u1 = 0,
/// FBM15 [15:15]
/// Filter mode
FBM15: u1 = 0,
/// FBM16 [16:16]
/// Filter mode
FBM16: u1 = 0,
/// FBM17 [17:17]
/// Filter mode
FBM17: u1 = 0,
/// FBM18 [18:18]
/// Filter mode
FBM18: u1 = 0,
/// FBM19 [19:19]
/// Filter mode
FBM19: u1 = 0,
/// FBM20 [20:20]
/// Filter mode
FBM20: u1 = 0,
/// FBM21 [21:21]
/// Filter mode
FBM21: u1 = 0,
/// FBM22 [22:22]
/// Filter mode
FBM22: u1 = 0,
/// FBM23 [23:23]
/// Filter mode
FBM23: u1 = 0,
/// FBM24 [24:24]
/// Filter mode
FBM24: u1 = 0,
/// FBM25 [25:25]
/// Filter mode
FBM25: u1 = 0,
/// FBM26 [26:26]
/// Filter mode
FBM26: u1 = 0,
/// FBM27 [27:27]
/// Filter mode
FBM27: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// filter mode register
pub const FM1R = MMIO(FM1R_val).init(base_address + 0x204);

/// FS1R
const FS1R_val = packed struct {
/// FSC0 [0:0]
/// Filter scale configuration
FSC0: u1 = 0,
/// FSC1 [1:1]
/// Filter scale configuration
FSC1: u1 = 0,
/// FSC2 [2:2]
/// Filter scale configuration
FSC2: u1 = 0,
/// FSC3 [3:3]
/// Filter scale configuration
FSC3: u1 = 0,
/// FSC4 [4:4]
/// Filter scale configuration
FSC4: u1 = 0,
/// FSC5 [5:5]
/// Filter scale configuration
FSC5: u1 = 0,
/// FSC6 [6:6]
/// Filter scale configuration
FSC6: u1 = 0,
/// FSC7 [7:7]
/// Filter scale configuration
FSC7: u1 = 0,
/// FSC8 [8:8]
/// Filter scale configuration
FSC8: u1 = 0,
/// FSC9 [9:9]
/// Filter scale configuration
FSC9: u1 = 0,
/// FSC10 [10:10]
/// Filter scale configuration
FSC10: u1 = 0,
/// FSC11 [11:11]
/// Filter scale configuration
FSC11: u1 = 0,
/// FSC12 [12:12]
/// Filter scale configuration
FSC12: u1 = 0,
/// FSC13 [13:13]
/// Filter scale configuration
FSC13: u1 = 0,
/// FSC14 [14:14]
/// Filter scale configuration
FSC14: u1 = 0,
/// FSC15 [15:15]
/// Filter scale configuration
FSC15: u1 = 0,
/// FSC16 [16:16]
/// Filter scale configuration
FSC16: u1 = 0,
/// FSC17 [17:17]
/// Filter scale configuration
FSC17: u1 = 0,
/// FSC18 [18:18]
/// Filter scale configuration
FSC18: u1 = 0,
/// FSC19 [19:19]
/// Filter scale configuration
FSC19: u1 = 0,
/// FSC20 [20:20]
/// Filter scale configuration
FSC20: u1 = 0,
/// FSC21 [21:21]
/// Filter scale configuration
FSC21: u1 = 0,
/// FSC22 [22:22]
/// Filter scale configuration
FSC22: u1 = 0,
/// FSC23 [23:23]
/// Filter scale configuration
FSC23: u1 = 0,
/// FSC24 [24:24]
/// Filter scale configuration
FSC24: u1 = 0,
/// FSC25 [25:25]
/// Filter scale configuration
FSC25: u1 = 0,
/// FSC26 [26:26]
/// Filter scale configuration
FSC26: u1 = 0,
/// FSC27 [27:27]
/// Filter scale configuration
FSC27: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// filter scale register
pub const FS1R = MMIO(FS1R_val).init(base_address + 0x20c);

/// FFA1R
const FFA1R_val = packed struct {
/// FFA0 [0:0]
/// Filter FIFO assignment for filter
FFA0: u1 = 0,
/// FFA1 [1:1]
/// Filter FIFO assignment for filter
FFA1: u1 = 0,
/// FFA2 [2:2]
/// Filter FIFO assignment for filter
FFA2: u1 = 0,
/// FFA3 [3:3]
/// Filter FIFO assignment for filter
FFA3: u1 = 0,
/// FFA4 [4:4]
/// Filter FIFO assignment for filter
FFA4: u1 = 0,
/// FFA5 [5:5]
/// Filter FIFO assignment for filter
FFA5: u1 = 0,
/// FFA6 [6:6]
/// Filter FIFO assignment for filter
FFA6: u1 = 0,
/// FFA7 [7:7]
/// Filter FIFO assignment for filter
FFA7: u1 = 0,
/// FFA8 [8:8]
/// Filter FIFO assignment for filter
FFA8: u1 = 0,
/// FFA9 [9:9]
/// Filter FIFO assignment for filter
FFA9: u1 = 0,
/// FFA10 [10:10]
/// Filter FIFO assignment for filter
FFA10: u1 = 0,
/// FFA11 [11:11]
/// Filter FIFO assignment for filter
FFA11: u1 = 0,
/// FFA12 [12:12]
/// Filter FIFO assignment for filter
FFA12: u1 = 0,
/// FFA13 [13:13]
/// Filter FIFO assignment for filter
FFA13: u1 = 0,
/// FFA14 [14:14]
/// Filter FIFO assignment for filter
FFA14: u1 = 0,
/// FFA15 [15:15]
/// Filter FIFO assignment for filter
FFA15: u1 = 0,
/// FFA16 [16:16]
/// Filter FIFO assignment for filter
FFA16: u1 = 0,
/// FFA17 [17:17]
/// Filter FIFO assignment for filter
FFA17: u1 = 0,
/// FFA18 [18:18]
/// Filter FIFO assignment for filter
FFA18: u1 = 0,
/// FFA19 [19:19]
/// Filter FIFO assignment for filter
FFA19: u1 = 0,
/// FFA20 [20:20]
/// Filter FIFO assignment for filter
FFA20: u1 = 0,
/// FFA21 [21:21]
/// Filter FIFO assignment for filter
FFA21: u1 = 0,
/// FFA22 [22:22]
/// Filter FIFO assignment for filter
FFA22: u1 = 0,
/// FFA23 [23:23]
/// Filter FIFO assignment for filter
FFA23: u1 = 0,
/// FFA24 [24:24]
/// Filter FIFO assignment for filter
FFA24: u1 = 0,
/// FFA25 [25:25]
/// Filter FIFO assignment for filter
FFA25: u1 = 0,
/// FFA26 [26:26]
/// Filter FIFO assignment for filter
FFA26: u1 = 0,
/// FFA27 [27:27]
/// Filter FIFO assignment for filter
FFA27: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// filter FIFO assignment
pub const FFA1R = MMIO(FFA1R_val).init(base_address + 0x214);

/// FA1R
const FA1R_val = packed struct {
/// FACT0 [0:0]
/// Filter active
FACT0: u1 = 0,
/// FACT1 [1:1]
/// Filter active
FACT1: u1 = 0,
/// FACT2 [2:2]
/// Filter active
FACT2: u1 = 0,
/// FACT3 [3:3]
/// Filter active
FACT3: u1 = 0,
/// FACT4 [4:4]
/// Filter active
FACT4: u1 = 0,
/// FACT5 [5:5]
/// Filter active
FACT5: u1 = 0,
/// FACT6 [6:6]
/// Filter active
FACT6: u1 = 0,
/// FACT7 [7:7]
/// Filter active
FACT7: u1 = 0,
/// FACT8 [8:8]
/// Filter active
FACT8: u1 = 0,
/// FACT9 [9:9]
/// Filter active
FACT9: u1 = 0,
/// FACT10 [10:10]
/// Filter active
FACT10: u1 = 0,
/// FACT11 [11:11]
/// Filter active
FACT11: u1 = 0,
/// FACT12 [12:12]
/// Filter active
FACT12: u1 = 0,
/// FACT13 [13:13]
/// Filter active
FACT13: u1 = 0,
/// FACT14 [14:14]
/// Filter active
FACT14: u1 = 0,
/// FACT15 [15:15]
/// Filter active
FACT15: u1 = 0,
/// FACT16 [16:16]
/// Filter active
FACT16: u1 = 0,
/// FACT17 [17:17]
/// Filter active
FACT17: u1 = 0,
/// FACT18 [18:18]
/// Filter active
FACT18: u1 = 0,
/// FACT19 [19:19]
/// Filter active
FACT19: u1 = 0,
/// FACT20 [20:20]
/// Filter active
FACT20: u1 = 0,
/// FACT21 [21:21]
/// Filter active
FACT21: u1 = 0,
/// FACT22 [22:22]
/// Filter active
FACT22: u1 = 0,
/// FACT23 [23:23]
/// Filter active
FACT23: u1 = 0,
/// FACT24 [24:24]
/// Filter active
FACT24: u1 = 0,
/// FACT25 [25:25]
/// Filter active
FACT25: u1 = 0,
/// FACT26 [26:26]
/// Filter active
FACT26: u1 = 0,
/// FACT27 [27:27]
/// Filter active
FACT27: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// filter activation register
pub const FA1R = MMIO(FA1R_val).init(base_address + 0x21c);

/// F0R1
const F0R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 0 register 1
pub const F0R1 = MMIO(F0R1_val).init(base_address + 0x240);

/// F0R2
const F0R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 0 register 2
pub const F0R2 = MMIO(F0R2_val).init(base_address + 0x244);

/// F1R1
const F1R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 1 register 1
pub const F1R1 = MMIO(F1R1_val).init(base_address + 0x248);

/// F1R2
const F1R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 1 register 2
pub const F1R2 = MMIO(F1R2_val).init(base_address + 0x24c);

/// F2R1
const F2R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 2 register 1
pub const F2R1 = MMIO(F2R1_val).init(base_address + 0x250);

/// F2R2
const F2R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 2 register 2
pub const F2R2 = MMIO(F2R2_val).init(base_address + 0x254);

/// F3R1
const F3R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 3 register 1
pub const F3R1 = MMIO(F3R1_val).init(base_address + 0x258);

/// F3R2
const F3R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 3 register 2
pub const F3R2 = MMIO(F3R2_val).init(base_address + 0x25c);

/// F4R1
const F4R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 4 register 1
pub const F4R1 = MMIO(F4R1_val).init(base_address + 0x260);

/// F4R2
const F4R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 4 register 2
pub const F4R2 = MMIO(F4R2_val).init(base_address + 0x264);

/// F5R1
const F5R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 5 register 1
pub const F5R1 = MMIO(F5R1_val).init(base_address + 0x268);

/// F5R2
const F5R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 5 register 2
pub const F5R2 = MMIO(F5R2_val).init(base_address + 0x26c);

/// F6R1
const F6R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 6 register 1
pub const F6R1 = MMIO(F6R1_val).init(base_address + 0x270);

/// F6R2
const F6R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 6 register 2
pub const F6R2 = MMIO(F6R2_val).init(base_address + 0x274);

/// F7R1
const F7R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 7 register 1
pub const F7R1 = MMIO(F7R1_val).init(base_address + 0x278);

/// F7R2
const F7R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 7 register 2
pub const F7R2 = MMIO(F7R2_val).init(base_address + 0x27c);

/// F8R1
const F8R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 8 register 1
pub const F8R1 = MMIO(F8R1_val).init(base_address + 0x280);

/// F8R2
const F8R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 8 register 2
pub const F8R2 = MMIO(F8R2_val).init(base_address + 0x284);

/// F9R1
const F9R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 9 register 1
pub const F9R1 = MMIO(F9R1_val).init(base_address + 0x288);

/// F9R2
const F9R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 9 register 2
pub const F9R2 = MMIO(F9R2_val).init(base_address + 0x28c);

/// F10R1
const F10R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 10 register 1
pub const F10R1 = MMIO(F10R1_val).init(base_address + 0x290);

/// F10R2
const F10R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 10 register 2
pub const F10R2 = MMIO(F10R2_val).init(base_address + 0x294);

/// F11R1
const F11R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 11 register 1
pub const F11R1 = MMIO(F11R1_val).init(base_address + 0x298);

/// F11R2
const F11R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 11 register 2
pub const F11R2 = MMIO(F11R2_val).init(base_address + 0x29c);

/// F12R1
const F12R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 4 register 1
pub const F12R1 = MMIO(F12R1_val).init(base_address + 0x2a0);

/// F12R2
const F12R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 12 register 2
pub const F12R2 = MMIO(F12R2_val).init(base_address + 0x2a4);

/// F13R1
const F13R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 13 register 1
pub const F13R1 = MMIO(F13R1_val).init(base_address + 0x2a8);

/// F13R2
const F13R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 13 register 2
pub const F13R2 = MMIO(F13R2_val).init(base_address + 0x2ac);

/// F14R1
const F14R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 14 register 1
pub const F14R1 = MMIO(F14R1_val).init(base_address + 0x2b0);

/// F14R2
const F14R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 14 register 2
pub const F14R2 = MMIO(F14R2_val).init(base_address + 0x2b4);

/// F15R1
const F15R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 15 register 1
pub const F15R1 = MMIO(F15R1_val).init(base_address + 0x2b8);

/// F15R2
const F15R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 15 register 2
pub const F15R2 = MMIO(F15R2_val).init(base_address + 0x2bc);

/// F16R1
const F16R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 16 register 1
pub const F16R1 = MMIO(F16R1_val).init(base_address + 0x2c0);

/// F16R2
const F16R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 16 register 2
pub const F16R2 = MMIO(F16R2_val).init(base_address + 0x2c4);

/// F17R1
const F17R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 17 register 1
pub const F17R1 = MMIO(F17R1_val).init(base_address + 0x2c8);

/// F17R2
const F17R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 17 register 2
pub const F17R2 = MMIO(F17R2_val).init(base_address + 0x2cc);

/// F18R1
const F18R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 18 register 1
pub const F18R1 = MMIO(F18R1_val).init(base_address + 0x2d0);

/// F18R2
const F18R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 18 register 2
pub const F18R2 = MMIO(F18R2_val).init(base_address + 0x2d4);

/// F19R1
const F19R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 19 register 1
pub const F19R1 = MMIO(F19R1_val).init(base_address + 0x2d8);

/// F19R2
const F19R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 19 register 2
pub const F19R2 = MMIO(F19R2_val).init(base_address + 0x2dc);

/// F20R1
const F20R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 20 register 1
pub const F20R1 = MMIO(F20R1_val).init(base_address + 0x2e0);

/// F20R2
const F20R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 20 register 2
pub const F20R2 = MMIO(F20R2_val).init(base_address + 0x2e4);

/// F21R1
const F21R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 21 register 1
pub const F21R1 = MMIO(F21R1_val).init(base_address + 0x2e8);

/// F21R2
const F21R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 21 register 2
pub const F21R2 = MMIO(F21R2_val).init(base_address + 0x2ec);

/// F22R1
const F22R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 22 register 1
pub const F22R1 = MMIO(F22R1_val).init(base_address + 0x2f0);

/// F22R2
const F22R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 22 register 2
pub const F22R2 = MMIO(F22R2_val).init(base_address + 0x2f4);

/// F23R1
const F23R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 23 register 1
pub const F23R1 = MMIO(F23R1_val).init(base_address + 0x2f8);

/// F23R2
const F23R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 23 register 2
pub const F23R2 = MMIO(F23R2_val).init(base_address + 0x2fc);

/// F24R1
const F24R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 24 register 1
pub const F24R1 = MMIO(F24R1_val).init(base_address + 0x300);

/// F24R2
const F24R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 24 register 2
pub const F24R2 = MMIO(F24R2_val).init(base_address + 0x304);

/// F25R1
const F25R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 25 register 1
pub const F25R1 = MMIO(F25R1_val).init(base_address + 0x308);

/// F25R2
const F25R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 25 register 2
pub const F25R2 = MMIO(F25R2_val).init(base_address + 0x30c);

/// F26R1
const F26R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 26 register 1
pub const F26R1 = MMIO(F26R1_val).init(base_address + 0x310);

/// F26R2
const F26R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 26 register 2
pub const F26R2 = MMIO(F26R2_val).init(base_address + 0x314);

/// F27R1
const F27R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 27 register 1
pub const F27R1 = MMIO(F27R1_val).init(base_address + 0x318);

/// F27R2
const F27R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 27 register 2
pub const F27R2 = MMIO(F27R2_val).init(base_address + 0x31c);
};

/// Controller area network
pub const CAN2 = struct {

const base_address = 0x40006800;
/// MCR
const MCR_val = packed struct {
/// INRQ [0:0]
/// INRQ
INRQ: u1 = 0,
/// SLEEP [1:1]
/// SLEEP
SLEEP: u1 = 1,
/// TXFP [2:2]
/// TXFP
TXFP: u1 = 0,
/// RFLM [3:3]
/// RFLM
RFLM: u1 = 0,
/// NART [4:4]
/// NART
NART: u1 = 0,
/// AWUM [5:5]
/// AWUM
AWUM: u1 = 0,
/// ABOM [6:6]
/// ABOM
ABOM: u1 = 0,
/// TTCM [7:7]
/// TTCM
TTCM: u1 = 0,
/// unused [8:14]
_unused8: u7 = 0,
/// RESET [15:15]
/// RESET
RESET: u1 = 0,
/// DBF [16:16]
/// DBF
DBF: u1 = 1,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// master control register
pub const MCR = MMIO(MCR_val).init(base_address + 0x0);

/// MSR
const MSR_val = packed struct {
/// INAK [0:0]
/// INAK
INAK: u1 = 0,
/// SLAK [1:1]
/// SLAK
SLAK: u1 = 1,
/// ERRI [2:2]
/// ERRI
ERRI: u1 = 0,
/// WKUI [3:3]
/// WKUI
WKUI: u1 = 0,
/// SLAKI [4:4]
/// SLAKI
SLAKI: u1 = 0,
/// unused [5:7]
_unused5: u3 = 0,
/// TXM [8:8]
/// TXM
TXM: u1 = 0,
/// RXM [9:9]
/// RXM
RXM: u1 = 0,
/// SAMP [10:10]
/// SAMP
SAMP: u1 = 1,
/// RX [11:11]
/// RX
RX: u1 = 1,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// master status register
pub const MSR = MMIO(MSR_val).init(base_address + 0x4);

/// TSR
const TSR_val = packed struct {
/// RQCP0 [0:0]
/// RQCP0
RQCP0: u1 = 0,
/// TXOK0 [1:1]
/// TXOK0
TXOK0: u1 = 0,
/// ALST0 [2:2]
/// ALST0
ALST0: u1 = 0,
/// TERR0 [3:3]
/// TERR0
TERR0: u1 = 0,
/// unused [4:6]
_unused4: u3 = 0,
/// ABRQ0 [7:7]
/// ABRQ0
ABRQ0: u1 = 0,
/// RQCP1 [8:8]
/// RQCP1
RQCP1: u1 = 0,
/// TXOK1 [9:9]
/// TXOK1
TXOK1: u1 = 0,
/// ALST1 [10:10]
/// ALST1
ALST1: u1 = 0,
/// TERR1 [11:11]
/// TERR1
TERR1: u1 = 0,
/// unused [12:14]
_unused12: u3 = 0,
/// ABRQ1 [15:15]
/// ABRQ1
ABRQ1: u1 = 0,
/// RQCP2 [16:16]
/// RQCP2
RQCP2: u1 = 0,
/// TXOK2 [17:17]
/// TXOK2
TXOK2: u1 = 0,
/// ALST2 [18:18]
/// ALST2
ALST2: u1 = 0,
/// TERR2 [19:19]
/// TERR2
TERR2: u1 = 0,
/// unused [20:22]
_unused20: u3 = 0,
/// ABRQ2 [23:23]
/// ABRQ2
ABRQ2: u1 = 0,
/// CODE [24:25]
/// CODE
CODE: u2 = 0,
/// TME0 [26:26]
/// Lowest priority flag for mailbox
TME0: u1 = 1,
/// TME1 [27:27]
/// Lowest priority flag for mailbox
TME1: u1 = 1,
/// TME2 [28:28]
/// Lowest priority flag for mailbox
TME2: u1 = 1,
/// LOW0 [29:29]
/// Lowest priority flag for mailbox
LOW0: u1 = 0,
/// LOW1 [30:30]
/// Lowest priority flag for mailbox
LOW1: u1 = 0,
/// LOW2 [31:31]
/// Lowest priority flag for mailbox
LOW2: u1 = 0,
};
/// transmit status register
pub const TSR = MMIO(TSR_val).init(base_address + 0x8);

/// RF0R
const RF0R_val = packed struct {
/// FMP0 [0:1]
/// FMP0
FMP0: u2 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// FULL0 [3:3]
/// FULL0
FULL0: u1 = 0,
/// FOVR0 [4:4]
/// FOVR0
FOVR0: u1 = 0,
/// RFOM0 [5:5]
/// RFOM0
RFOM0: u1 = 0,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// receive FIFO 0 register
pub const RF0R = MMIO(RF0R_val).init(base_address + 0xc);

/// RF1R
const RF1R_val = packed struct {
/// FMP1 [0:1]
/// FMP1
FMP1: u2 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// FULL1 [3:3]
/// FULL1
FULL1: u1 = 0,
/// FOVR1 [4:4]
/// FOVR1
FOVR1: u1 = 0,
/// RFOM1 [5:5]
/// RFOM1
RFOM1: u1 = 0,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// receive FIFO 1 register
pub const RF1R = MMIO(RF1R_val).init(base_address + 0x10);

/// IER
const IER_val = packed struct {
/// TMEIE [0:0]
/// TMEIE
TMEIE: u1 = 0,
/// FMPIE0 [1:1]
/// FMPIE0
FMPIE0: u1 = 0,
/// FFIE0 [2:2]
/// FFIE0
FFIE0: u1 = 0,
/// FOVIE0 [3:3]
/// FOVIE0
FOVIE0: u1 = 0,
/// FMPIE1 [4:4]
/// FMPIE1
FMPIE1: u1 = 0,
/// FFIE1 [5:5]
/// FFIE1
FFIE1: u1 = 0,
/// FOVIE1 [6:6]
/// FOVIE1
FOVIE1: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// EWGIE [8:8]
/// EWGIE
EWGIE: u1 = 0,
/// EPVIE [9:9]
/// EPVIE
EPVIE: u1 = 0,
/// BOFIE [10:10]
/// BOFIE
BOFIE: u1 = 0,
/// LECIE [11:11]
/// LECIE
LECIE: u1 = 0,
/// unused [12:14]
_unused12: u3 = 0,
/// ERRIE [15:15]
/// ERRIE
ERRIE: u1 = 0,
/// WKUIE [16:16]
/// WKUIE
WKUIE: u1 = 0,
/// SLKIE [17:17]
/// SLKIE
SLKIE: u1 = 0,
/// unused [18:31]
_unused18: u6 = 0,
_unused24: u8 = 0,
};
/// interrupt enable register
pub const IER = MMIO(IER_val).init(base_address + 0x14);

/// ESR
const ESR_val = packed struct {
/// EWGF [0:0]
/// EWGF
EWGF: u1 = 0,
/// EPVF [1:1]
/// EPVF
EPVF: u1 = 0,
/// BOFF [2:2]
/// BOFF
BOFF: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// LEC [4:6]
/// LEC
LEC: u3 = 0,
/// unused [7:15]
_unused7: u1 = 0,
_unused8: u8 = 0,
/// TEC [16:23]
/// TEC
TEC: u8 = 0,
/// REC [24:31]
/// REC
REC: u8 = 0,
};
/// interrupt enable register
pub const ESR = MMIO(ESR_val).init(base_address + 0x18);

/// BTR
const BTR_val = packed struct {
/// BRP [0:9]
/// BRP
BRP: u10 = 0,
/// unused [10:15]
_unused10: u6 = 0,
/// TS1 [16:19]
/// TS1
TS1: u4 = 0,
/// TS2 [20:22]
/// TS2
TS2: u3 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// SJW [24:25]
/// SJW
SJW: u2 = 0,
/// unused [26:29]
_unused26: u4 = 0,
/// LBKM [30:30]
/// LBKM
LBKM: u1 = 0,
/// SILM [31:31]
/// SILM
SILM: u1 = 0,
};
/// bit timing register
pub const BTR = MMIO(BTR_val).init(base_address + 0x1c);

/// TI0R
const TI0R_val = packed struct {
/// TXRQ [0:0]
/// TXRQ
TXRQ: u1 = 0,
/// RTR [1:1]
/// RTR
RTR: u1 = 0,
/// IDE [2:2]
/// IDE
IDE: u1 = 0,
/// EXID [3:20]
/// EXID
EXID: u18 = 0,
/// STID [21:31]
/// STID
STID: u11 = 0,
};
/// TX mailbox identifier register
pub const TI0R = MMIO(TI0R_val).init(base_address + 0x180);

/// TDT0R
const TDT0R_val = packed struct {
/// DLC [0:3]
/// DLC
DLC: u4 = 0,
/// unused [4:7]
_unused4: u4 = 0,
/// TGT [8:8]
/// TGT
TGT: u1 = 0,
/// unused [9:15]
_unused9: u7 = 0,
/// TIME [16:31]
/// TIME
TIME: u16 = 0,
};
/// mailbox data length control and time stamp
pub const TDT0R = MMIO(TDT0R_val).init(base_address + 0x184);

/// TDL0R
const TDL0R_val = packed struct {
/// DATA0 [0:7]
/// DATA0
DATA0: u8 = 0,
/// DATA1 [8:15]
/// DATA1
DATA1: u8 = 0,
/// DATA2 [16:23]
/// DATA2
DATA2: u8 = 0,
/// DATA3 [24:31]
/// DATA3
DATA3: u8 = 0,
};
/// mailbox data low register
pub const TDL0R = MMIO(TDL0R_val).init(base_address + 0x188);

/// TDH0R
const TDH0R_val = packed struct {
/// DATA4 [0:7]
/// DATA4
DATA4: u8 = 0,
/// DATA5 [8:15]
/// DATA5
DATA5: u8 = 0,
/// DATA6 [16:23]
/// DATA6
DATA6: u8 = 0,
/// DATA7 [24:31]
/// DATA7
DATA7: u8 = 0,
};
/// mailbox data high register
pub const TDH0R = MMIO(TDH0R_val).init(base_address + 0x18c);

/// TI1R
const TI1R_val = packed struct {
/// TXRQ [0:0]
/// TXRQ
TXRQ: u1 = 0,
/// RTR [1:1]
/// RTR
RTR: u1 = 0,
/// IDE [2:2]
/// IDE
IDE: u1 = 0,
/// EXID [3:20]
/// EXID
EXID: u18 = 0,
/// STID [21:31]
/// STID
STID: u11 = 0,
};
/// mailbox identifier register
pub const TI1R = MMIO(TI1R_val).init(base_address + 0x190);

/// TDT1R
const TDT1R_val = packed struct {
/// DLC [0:3]
/// DLC
DLC: u4 = 0,
/// unused [4:7]
_unused4: u4 = 0,
/// TGT [8:8]
/// TGT
TGT: u1 = 0,
/// unused [9:15]
_unused9: u7 = 0,
/// TIME [16:31]
/// TIME
TIME: u16 = 0,
};
/// mailbox data length control and time stamp
pub const TDT1R = MMIO(TDT1R_val).init(base_address + 0x194);

/// TDL1R
const TDL1R_val = packed struct {
/// DATA0 [0:7]
/// DATA0
DATA0: u8 = 0,
/// DATA1 [8:15]
/// DATA1
DATA1: u8 = 0,
/// DATA2 [16:23]
/// DATA2
DATA2: u8 = 0,
/// DATA3 [24:31]
/// DATA3
DATA3: u8 = 0,
};
/// mailbox data low register
pub const TDL1R = MMIO(TDL1R_val).init(base_address + 0x198);

/// TDH1R
const TDH1R_val = packed struct {
/// DATA4 [0:7]
/// DATA4
DATA4: u8 = 0,
/// DATA5 [8:15]
/// DATA5
DATA5: u8 = 0,
/// DATA6 [16:23]
/// DATA6
DATA6: u8 = 0,
/// DATA7 [24:31]
/// DATA7
DATA7: u8 = 0,
};
/// mailbox data high register
pub const TDH1R = MMIO(TDH1R_val).init(base_address + 0x19c);

/// TI2R
const TI2R_val = packed struct {
/// TXRQ [0:0]
/// TXRQ
TXRQ: u1 = 0,
/// RTR [1:1]
/// RTR
RTR: u1 = 0,
/// IDE [2:2]
/// IDE
IDE: u1 = 0,
/// EXID [3:20]
/// EXID
EXID: u18 = 0,
/// STID [21:31]
/// STID
STID: u11 = 0,
};
/// mailbox identifier register
pub const TI2R = MMIO(TI2R_val).init(base_address + 0x1a0);

/// TDT2R
const TDT2R_val = packed struct {
/// DLC [0:3]
/// DLC
DLC: u4 = 0,
/// unused [4:7]
_unused4: u4 = 0,
/// TGT [8:8]
/// TGT
TGT: u1 = 0,
/// unused [9:15]
_unused9: u7 = 0,
/// TIME [16:31]
/// TIME
TIME: u16 = 0,
};
/// mailbox data length control and time stamp
pub const TDT2R = MMIO(TDT2R_val).init(base_address + 0x1a4);

/// TDL2R
const TDL2R_val = packed struct {
/// DATA0 [0:7]
/// DATA0
DATA0: u8 = 0,
/// DATA1 [8:15]
/// DATA1
DATA1: u8 = 0,
/// DATA2 [16:23]
/// DATA2
DATA2: u8 = 0,
/// DATA3 [24:31]
/// DATA3
DATA3: u8 = 0,
};
/// mailbox data low register
pub const TDL2R = MMIO(TDL2R_val).init(base_address + 0x1a8);

/// TDH2R
const TDH2R_val = packed struct {
/// DATA4 [0:7]
/// DATA4
DATA4: u8 = 0,
/// DATA5 [8:15]
/// DATA5
DATA5: u8 = 0,
/// DATA6 [16:23]
/// DATA6
DATA6: u8 = 0,
/// DATA7 [24:31]
/// DATA7
DATA7: u8 = 0,
};
/// mailbox data high register
pub const TDH2R = MMIO(TDH2R_val).init(base_address + 0x1ac);

/// RI0R
const RI0R_val = packed struct {
/// unused [0:0]
_unused0: u1 = 0,
/// RTR [1:1]
/// RTR
RTR: u1 = 0,
/// IDE [2:2]
/// IDE
IDE: u1 = 0,
/// EXID [3:20]
/// EXID
EXID: u18 = 0,
/// STID [21:31]
/// STID
STID: u11 = 0,
};
/// receive FIFO mailbox identifier
pub const RI0R = MMIO(RI0R_val).init(base_address + 0x1b0);

/// RDT0R
const RDT0R_val = packed struct {
/// DLC [0:3]
/// DLC
DLC: u4 = 0,
/// unused [4:7]
_unused4: u4 = 0,
/// FMI [8:15]
/// FMI
FMI: u8 = 0,
/// TIME [16:31]
/// TIME
TIME: u16 = 0,
};
/// mailbox data high register
pub const RDT0R = MMIO(RDT0R_val).init(base_address + 0x1b4);

/// RDL0R
const RDL0R_val = packed struct {
/// DATA0 [0:7]
/// DATA0
DATA0: u8 = 0,
/// DATA1 [8:15]
/// DATA1
DATA1: u8 = 0,
/// DATA2 [16:23]
/// DATA2
DATA2: u8 = 0,
/// DATA3 [24:31]
/// DATA3
DATA3: u8 = 0,
};
/// mailbox data high register
pub const RDL0R = MMIO(RDL0R_val).init(base_address + 0x1b8);

/// RDH0R
const RDH0R_val = packed struct {
/// DATA4 [0:7]
/// DATA4
DATA4: u8 = 0,
/// DATA5 [8:15]
/// DATA5
DATA5: u8 = 0,
/// DATA6 [16:23]
/// DATA6
DATA6: u8 = 0,
/// DATA7 [24:31]
/// DATA7
DATA7: u8 = 0,
};
/// receive FIFO mailbox data high
pub const RDH0R = MMIO(RDH0R_val).init(base_address + 0x1bc);

/// RI1R
const RI1R_val = packed struct {
/// unused [0:0]
_unused0: u1 = 0,
/// RTR [1:1]
/// RTR
RTR: u1 = 0,
/// IDE [2:2]
/// IDE
IDE: u1 = 0,
/// EXID [3:20]
/// EXID
EXID: u18 = 0,
/// STID [21:31]
/// STID
STID: u11 = 0,
};
/// mailbox data high register
pub const RI1R = MMIO(RI1R_val).init(base_address + 0x1c0);

/// RDT1R
const RDT1R_val = packed struct {
/// DLC [0:3]
/// DLC
DLC: u4 = 0,
/// unused [4:7]
_unused4: u4 = 0,
/// FMI [8:15]
/// FMI
FMI: u8 = 0,
/// TIME [16:31]
/// TIME
TIME: u16 = 0,
};
/// mailbox data high register
pub const RDT1R = MMIO(RDT1R_val).init(base_address + 0x1c4);

/// RDL1R
const RDL1R_val = packed struct {
/// DATA0 [0:7]
/// DATA0
DATA0: u8 = 0,
/// DATA1 [8:15]
/// DATA1
DATA1: u8 = 0,
/// DATA2 [16:23]
/// DATA2
DATA2: u8 = 0,
/// DATA3 [24:31]
/// DATA3
DATA3: u8 = 0,
};
/// mailbox data high register
pub const RDL1R = MMIO(RDL1R_val).init(base_address + 0x1c8);

/// RDH1R
const RDH1R_val = packed struct {
/// DATA4 [0:7]
/// DATA4
DATA4: u8 = 0,
/// DATA5 [8:15]
/// DATA5
DATA5: u8 = 0,
/// DATA6 [16:23]
/// DATA6
DATA6: u8 = 0,
/// DATA7 [24:31]
/// DATA7
DATA7: u8 = 0,
};
/// mailbox data high register
pub const RDH1R = MMIO(RDH1R_val).init(base_address + 0x1cc);

/// FMR
const FMR_val = packed struct {
/// FINIT [0:0]
/// FINIT
FINIT: u1 = 1,
/// unused [1:7]
_unused1: u7 = 0,
/// CAN2SB [8:13]
/// CAN2SB
CAN2SB: u6 = 14,
/// unused [14:31]
_unused14: u2 = 0,
_unused16: u8 = 28,
_unused24: u8 = 42,
};
/// filter master register
pub const FMR = MMIO(FMR_val).init(base_address + 0x200);

/// FM1R
const FM1R_val = packed struct {
/// FBM0 [0:0]
/// Filter mode
FBM0: u1 = 0,
/// FBM1 [1:1]
/// Filter mode
FBM1: u1 = 0,
/// FBM2 [2:2]
/// Filter mode
FBM2: u1 = 0,
/// FBM3 [3:3]
/// Filter mode
FBM3: u1 = 0,
/// FBM4 [4:4]
/// Filter mode
FBM4: u1 = 0,
/// FBM5 [5:5]
/// Filter mode
FBM5: u1 = 0,
/// FBM6 [6:6]
/// Filter mode
FBM6: u1 = 0,
/// FBM7 [7:7]
/// Filter mode
FBM7: u1 = 0,
/// FBM8 [8:8]
/// Filter mode
FBM8: u1 = 0,
/// FBM9 [9:9]
/// Filter mode
FBM9: u1 = 0,
/// FBM10 [10:10]
/// Filter mode
FBM10: u1 = 0,
/// FBM11 [11:11]
/// Filter mode
FBM11: u1 = 0,
/// FBM12 [12:12]
/// Filter mode
FBM12: u1 = 0,
/// FBM13 [13:13]
/// Filter mode
FBM13: u1 = 0,
/// FBM14 [14:14]
/// Filter mode
FBM14: u1 = 0,
/// FBM15 [15:15]
/// Filter mode
FBM15: u1 = 0,
/// FBM16 [16:16]
/// Filter mode
FBM16: u1 = 0,
/// FBM17 [17:17]
/// Filter mode
FBM17: u1 = 0,
/// FBM18 [18:18]
/// Filter mode
FBM18: u1 = 0,
/// FBM19 [19:19]
/// Filter mode
FBM19: u1 = 0,
/// FBM20 [20:20]
/// Filter mode
FBM20: u1 = 0,
/// FBM21 [21:21]
/// Filter mode
FBM21: u1 = 0,
/// FBM22 [22:22]
/// Filter mode
FBM22: u1 = 0,
/// FBM23 [23:23]
/// Filter mode
FBM23: u1 = 0,
/// FBM24 [24:24]
/// Filter mode
FBM24: u1 = 0,
/// FBM25 [25:25]
/// Filter mode
FBM25: u1 = 0,
/// FBM26 [26:26]
/// Filter mode
FBM26: u1 = 0,
/// FBM27 [27:27]
/// Filter mode
FBM27: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// filter mode register
pub const FM1R = MMIO(FM1R_val).init(base_address + 0x204);

/// FS1R
const FS1R_val = packed struct {
/// FSC0 [0:0]
/// Filter scale configuration
FSC0: u1 = 0,
/// FSC1 [1:1]
/// Filter scale configuration
FSC1: u1 = 0,
/// FSC2 [2:2]
/// Filter scale configuration
FSC2: u1 = 0,
/// FSC3 [3:3]
/// Filter scale configuration
FSC3: u1 = 0,
/// FSC4 [4:4]
/// Filter scale configuration
FSC4: u1 = 0,
/// FSC5 [5:5]
/// Filter scale configuration
FSC5: u1 = 0,
/// FSC6 [6:6]
/// Filter scale configuration
FSC6: u1 = 0,
/// FSC7 [7:7]
/// Filter scale configuration
FSC7: u1 = 0,
/// FSC8 [8:8]
/// Filter scale configuration
FSC8: u1 = 0,
/// FSC9 [9:9]
/// Filter scale configuration
FSC9: u1 = 0,
/// FSC10 [10:10]
/// Filter scale configuration
FSC10: u1 = 0,
/// FSC11 [11:11]
/// Filter scale configuration
FSC11: u1 = 0,
/// FSC12 [12:12]
/// Filter scale configuration
FSC12: u1 = 0,
/// FSC13 [13:13]
/// Filter scale configuration
FSC13: u1 = 0,
/// FSC14 [14:14]
/// Filter scale configuration
FSC14: u1 = 0,
/// FSC15 [15:15]
/// Filter scale configuration
FSC15: u1 = 0,
/// FSC16 [16:16]
/// Filter scale configuration
FSC16: u1 = 0,
/// FSC17 [17:17]
/// Filter scale configuration
FSC17: u1 = 0,
/// FSC18 [18:18]
/// Filter scale configuration
FSC18: u1 = 0,
/// FSC19 [19:19]
/// Filter scale configuration
FSC19: u1 = 0,
/// FSC20 [20:20]
/// Filter scale configuration
FSC20: u1 = 0,
/// FSC21 [21:21]
/// Filter scale configuration
FSC21: u1 = 0,
/// FSC22 [22:22]
/// Filter scale configuration
FSC22: u1 = 0,
/// FSC23 [23:23]
/// Filter scale configuration
FSC23: u1 = 0,
/// FSC24 [24:24]
/// Filter scale configuration
FSC24: u1 = 0,
/// FSC25 [25:25]
/// Filter scale configuration
FSC25: u1 = 0,
/// FSC26 [26:26]
/// Filter scale configuration
FSC26: u1 = 0,
/// FSC27 [27:27]
/// Filter scale configuration
FSC27: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// filter scale register
pub const FS1R = MMIO(FS1R_val).init(base_address + 0x20c);

/// FFA1R
const FFA1R_val = packed struct {
/// FFA0 [0:0]
/// Filter FIFO assignment for filter
FFA0: u1 = 0,
/// FFA1 [1:1]
/// Filter FIFO assignment for filter
FFA1: u1 = 0,
/// FFA2 [2:2]
/// Filter FIFO assignment for filter
FFA2: u1 = 0,
/// FFA3 [3:3]
/// Filter FIFO assignment for filter
FFA3: u1 = 0,
/// FFA4 [4:4]
/// Filter FIFO assignment for filter
FFA4: u1 = 0,
/// FFA5 [5:5]
/// Filter FIFO assignment for filter
FFA5: u1 = 0,
/// FFA6 [6:6]
/// Filter FIFO assignment for filter
FFA6: u1 = 0,
/// FFA7 [7:7]
/// Filter FIFO assignment for filter
FFA7: u1 = 0,
/// FFA8 [8:8]
/// Filter FIFO assignment for filter
FFA8: u1 = 0,
/// FFA9 [9:9]
/// Filter FIFO assignment for filter
FFA9: u1 = 0,
/// FFA10 [10:10]
/// Filter FIFO assignment for filter
FFA10: u1 = 0,
/// FFA11 [11:11]
/// Filter FIFO assignment for filter
FFA11: u1 = 0,
/// FFA12 [12:12]
/// Filter FIFO assignment for filter
FFA12: u1 = 0,
/// FFA13 [13:13]
/// Filter FIFO assignment for filter
FFA13: u1 = 0,
/// FFA14 [14:14]
/// Filter FIFO assignment for filter
FFA14: u1 = 0,
/// FFA15 [15:15]
/// Filter FIFO assignment for filter
FFA15: u1 = 0,
/// FFA16 [16:16]
/// Filter FIFO assignment for filter
FFA16: u1 = 0,
/// FFA17 [17:17]
/// Filter FIFO assignment for filter
FFA17: u1 = 0,
/// FFA18 [18:18]
/// Filter FIFO assignment for filter
FFA18: u1 = 0,
/// FFA19 [19:19]
/// Filter FIFO assignment for filter
FFA19: u1 = 0,
/// FFA20 [20:20]
/// Filter FIFO assignment for filter
FFA20: u1 = 0,
/// FFA21 [21:21]
/// Filter FIFO assignment for filter
FFA21: u1 = 0,
/// FFA22 [22:22]
/// Filter FIFO assignment for filter
FFA22: u1 = 0,
/// FFA23 [23:23]
/// Filter FIFO assignment for filter
FFA23: u1 = 0,
/// FFA24 [24:24]
/// Filter FIFO assignment for filter
FFA24: u1 = 0,
/// FFA25 [25:25]
/// Filter FIFO assignment for filter
FFA25: u1 = 0,
/// FFA26 [26:26]
/// Filter FIFO assignment for filter
FFA26: u1 = 0,
/// FFA27 [27:27]
/// Filter FIFO assignment for filter
FFA27: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// filter FIFO assignment
pub const FFA1R = MMIO(FFA1R_val).init(base_address + 0x214);

/// FA1R
const FA1R_val = packed struct {
/// FACT0 [0:0]
/// Filter active
FACT0: u1 = 0,
/// FACT1 [1:1]
/// Filter active
FACT1: u1 = 0,
/// FACT2 [2:2]
/// Filter active
FACT2: u1 = 0,
/// FACT3 [3:3]
/// Filter active
FACT3: u1 = 0,
/// FACT4 [4:4]
/// Filter active
FACT4: u1 = 0,
/// FACT5 [5:5]
/// Filter active
FACT5: u1 = 0,
/// FACT6 [6:6]
/// Filter active
FACT6: u1 = 0,
/// FACT7 [7:7]
/// Filter active
FACT7: u1 = 0,
/// FACT8 [8:8]
/// Filter active
FACT8: u1 = 0,
/// FACT9 [9:9]
/// Filter active
FACT9: u1 = 0,
/// FACT10 [10:10]
/// Filter active
FACT10: u1 = 0,
/// FACT11 [11:11]
/// Filter active
FACT11: u1 = 0,
/// FACT12 [12:12]
/// Filter active
FACT12: u1 = 0,
/// FACT13 [13:13]
/// Filter active
FACT13: u1 = 0,
/// FACT14 [14:14]
/// Filter active
FACT14: u1 = 0,
/// FACT15 [15:15]
/// Filter active
FACT15: u1 = 0,
/// FACT16 [16:16]
/// Filter active
FACT16: u1 = 0,
/// FACT17 [17:17]
/// Filter active
FACT17: u1 = 0,
/// FACT18 [18:18]
/// Filter active
FACT18: u1 = 0,
/// FACT19 [19:19]
/// Filter active
FACT19: u1 = 0,
/// FACT20 [20:20]
/// Filter active
FACT20: u1 = 0,
/// FACT21 [21:21]
/// Filter active
FACT21: u1 = 0,
/// FACT22 [22:22]
/// Filter active
FACT22: u1 = 0,
/// FACT23 [23:23]
/// Filter active
FACT23: u1 = 0,
/// FACT24 [24:24]
/// Filter active
FACT24: u1 = 0,
/// FACT25 [25:25]
/// Filter active
FACT25: u1 = 0,
/// FACT26 [26:26]
/// Filter active
FACT26: u1 = 0,
/// FACT27 [27:27]
/// Filter active
FACT27: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// filter activation register
pub const FA1R = MMIO(FA1R_val).init(base_address + 0x21c);

/// F0R1
const F0R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 0 register 1
pub const F0R1 = MMIO(F0R1_val).init(base_address + 0x240);

/// F0R2
const F0R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 0 register 2
pub const F0R2 = MMIO(F0R2_val).init(base_address + 0x244);

/// F1R1
const F1R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 1 register 1
pub const F1R1 = MMIO(F1R1_val).init(base_address + 0x248);

/// F1R2
const F1R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 1 register 2
pub const F1R2 = MMIO(F1R2_val).init(base_address + 0x24c);

/// F2R1
const F2R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 2 register 1
pub const F2R1 = MMIO(F2R1_val).init(base_address + 0x250);

/// F2R2
const F2R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 2 register 2
pub const F2R2 = MMIO(F2R2_val).init(base_address + 0x254);

/// F3R1
const F3R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 3 register 1
pub const F3R1 = MMIO(F3R1_val).init(base_address + 0x258);

/// F3R2
const F3R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 3 register 2
pub const F3R2 = MMIO(F3R2_val).init(base_address + 0x25c);

/// F4R1
const F4R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 4 register 1
pub const F4R1 = MMIO(F4R1_val).init(base_address + 0x260);

/// F4R2
const F4R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 4 register 2
pub const F4R2 = MMIO(F4R2_val).init(base_address + 0x264);

/// F5R1
const F5R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 5 register 1
pub const F5R1 = MMIO(F5R1_val).init(base_address + 0x268);

/// F5R2
const F5R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 5 register 2
pub const F5R2 = MMIO(F5R2_val).init(base_address + 0x26c);

/// F6R1
const F6R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 6 register 1
pub const F6R1 = MMIO(F6R1_val).init(base_address + 0x270);

/// F6R2
const F6R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 6 register 2
pub const F6R2 = MMIO(F6R2_val).init(base_address + 0x274);

/// F7R1
const F7R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 7 register 1
pub const F7R1 = MMIO(F7R1_val).init(base_address + 0x278);

/// F7R2
const F7R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 7 register 2
pub const F7R2 = MMIO(F7R2_val).init(base_address + 0x27c);

/// F8R1
const F8R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 8 register 1
pub const F8R1 = MMIO(F8R1_val).init(base_address + 0x280);

/// F8R2
const F8R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 8 register 2
pub const F8R2 = MMIO(F8R2_val).init(base_address + 0x284);

/// F9R1
const F9R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 9 register 1
pub const F9R1 = MMIO(F9R1_val).init(base_address + 0x288);

/// F9R2
const F9R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 9 register 2
pub const F9R2 = MMIO(F9R2_val).init(base_address + 0x28c);

/// F10R1
const F10R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 10 register 1
pub const F10R1 = MMIO(F10R1_val).init(base_address + 0x290);

/// F10R2
const F10R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 10 register 2
pub const F10R2 = MMIO(F10R2_val).init(base_address + 0x294);

/// F11R1
const F11R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 11 register 1
pub const F11R1 = MMIO(F11R1_val).init(base_address + 0x298);

/// F11R2
const F11R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 11 register 2
pub const F11R2 = MMIO(F11R2_val).init(base_address + 0x29c);

/// F12R1
const F12R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 4 register 1
pub const F12R1 = MMIO(F12R1_val).init(base_address + 0x2a0);

/// F12R2
const F12R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 12 register 2
pub const F12R2 = MMIO(F12R2_val).init(base_address + 0x2a4);

/// F13R1
const F13R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 13 register 1
pub const F13R1 = MMIO(F13R1_val).init(base_address + 0x2a8);

/// F13R2
const F13R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 13 register 2
pub const F13R2 = MMIO(F13R2_val).init(base_address + 0x2ac);

/// F14R1
const F14R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 14 register 1
pub const F14R1 = MMIO(F14R1_val).init(base_address + 0x2b0);

/// F14R2
const F14R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 14 register 2
pub const F14R2 = MMIO(F14R2_val).init(base_address + 0x2b4);

/// F15R1
const F15R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 15 register 1
pub const F15R1 = MMIO(F15R1_val).init(base_address + 0x2b8);

/// F15R2
const F15R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 15 register 2
pub const F15R2 = MMIO(F15R2_val).init(base_address + 0x2bc);

/// F16R1
const F16R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 16 register 1
pub const F16R1 = MMIO(F16R1_val).init(base_address + 0x2c0);

/// F16R2
const F16R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 16 register 2
pub const F16R2 = MMIO(F16R2_val).init(base_address + 0x2c4);

/// F17R1
const F17R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 17 register 1
pub const F17R1 = MMIO(F17R1_val).init(base_address + 0x2c8);

/// F17R2
const F17R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 17 register 2
pub const F17R2 = MMIO(F17R2_val).init(base_address + 0x2cc);

/// F18R1
const F18R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 18 register 1
pub const F18R1 = MMIO(F18R1_val).init(base_address + 0x2d0);

/// F18R2
const F18R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 18 register 2
pub const F18R2 = MMIO(F18R2_val).init(base_address + 0x2d4);

/// F19R1
const F19R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 19 register 1
pub const F19R1 = MMIO(F19R1_val).init(base_address + 0x2d8);

/// F19R2
const F19R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 19 register 2
pub const F19R2 = MMIO(F19R2_val).init(base_address + 0x2dc);

/// F20R1
const F20R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 20 register 1
pub const F20R1 = MMIO(F20R1_val).init(base_address + 0x2e0);

/// F20R2
const F20R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 20 register 2
pub const F20R2 = MMIO(F20R2_val).init(base_address + 0x2e4);

/// F21R1
const F21R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 21 register 1
pub const F21R1 = MMIO(F21R1_val).init(base_address + 0x2e8);

/// F21R2
const F21R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 21 register 2
pub const F21R2 = MMIO(F21R2_val).init(base_address + 0x2ec);

/// F22R1
const F22R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 22 register 1
pub const F22R1 = MMIO(F22R1_val).init(base_address + 0x2f0);

/// F22R2
const F22R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 22 register 2
pub const F22R2 = MMIO(F22R2_val).init(base_address + 0x2f4);

/// F23R1
const F23R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 23 register 1
pub const F23R1 = MMIO(F23R1_val).init(base_address + 0x2f8);

/// F23R2
const F23R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 23 register 2
pub const F23R2 = MMIO(F23R2_val).init(base_address + 0x2fc);

/// F24R1
const F24R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 24 register 1
pub const F24R1 = MMIO(F24R1_val).init(base_address + 0x300);

/// F24R2
const F24R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 24 register 2
pub const F24R2 = MMIO(F24R2_val).init(base_address + 0x304);

/// F25R1
const F25R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 25 register 1
pub const F25R1 = MMIO(F25R1_val).init(base_address + 0x308);

/// F25R2
const F25R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 25 register 2
pub const F25R2 = MMIO(F25R2_val).init(base_address + 0x30c);

/// F26R1
const F26R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 26 register 1
pub const F26R1 = MMIO(F26R1_val).init(base_address + 0x310);

/// F26R2
const F26R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 26 register 2
pub const F26R2 = MMIO(F26R2_val).init(base_address + 0x314);

/// F27R1
const F27R1_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 27 register 1
pub const F27R1 = MMIO(F27R1_val).init(base_address + 0x318);

/// F27R2
const F27R2_val = packed struct {
/// FB0 [0:0]
/// Filter bits
FB0: u1 = 0,
/// FB1 [1:1]
/// Filter bits
FB1: u1 = 0,
/// FB2 [2:2]
/// Filter bits
FB2: u1 = 0,
/// FB3 [3:3]
/// Filter bits
FB3: u1 = 0,
/// FB4 [4:4]
/// Filter bits
FB4: u1 = 0,
/// FB5 [5:5]
/// Filter bits
FB5: u1 = 0,
/// FB6 [6:6]
/// Filter bits
FB6: u1 = 0,
/// FB7 [7:7]
/// Filter bits
FB7: u1 = 0,
/// FB8 [8:8]
/// Filter bits
FB8: u1 = 0,
/// FB9 [9:9]
/// Filter bits
FB9: u1 = 0,
/// FB10 [10:10]
/// Filter bits
FB10: u1 = 0,
/// FB11 [11:11]
/// Filter bits
FB11: u1 = 0,
/// FB12 [12:12]
/// Filter bits
FB12: u1 = 0,
/// FB13 [13:13]
/// Filter bits
FB13: u1 = 0,
/// FB14 [14:14]
/// Filter bits
FB14: u1 = 0,
/// FB15 [15:15]
/// Filter bits
FB15: u1 = 0,
/// FB16 [16:16]
/// Filter bits
FB16: u1 = 0,
/// FB17 [17:17]
/// Filter bits
FB17: u1 = 0,
/// FB18 [18:18]
/// Filter bits
FB18: u1 = 0,
/// FB19 [19:19]
/// Filter bits
FB19: u1 = 0,
/// FB20 [20:20]
/// Filter bits
FB20: u1 = 0,
/// FB21 [21:21]
/// Filter bits
FB21: u1 = 0,
/// FB22 [22:22]
/// Filter bits
FB22: u1 = 0,
/// FB23 [23:23]
/// Filter bits
FB23: u1 = 0,
/// FB24 [24:24]
/// Filter bits
FB24: u1 = 0,
/// FB25 [25:25]
/// Filter bits
FB25: u1 = 0,
/// FB26 [26:26]
/// Filter bits
FB26: u1 = 0,
/// FB27 [27:27]
/// Filter bits
FB27: u1 = 0,
/// FB28 [28:28]
/// Filter bits
FB28: u1 = 0,
/// FB29 [29:29]
/// Filter bits
FB29: u1 = 0,
/// FB30 [30:30]
/// Filter bits
FB30: u1 = 0,
/// FB31 [31:31]
/// Filter bits
FB31: u1 = 0,
};
/// Filter bank 27 register 2
pub const F27R2 = MMIO(F27R2_val).init(base_address + 0x31c);
};

/// Nested Vectored Interrupt
pub const NVIC = struct {

const base_address = 0xe000e100;
/// ISER0
const ISER0_val = packed struct {
/// SETENA [0:31]
/// SETENA
SETENA: u32 = 0,
};
/// Interrupt Set-Enable Register
pub const ISER0 = MMIO(ISER0_val).init(base_address + 0x0);

/// ISER1
const ISER1_val = packed struct {
/// SETENA [0:31]
/// SETENA
SETENA: u32 = 0,
};
/// Interrupt Set-Enable Register
pub const ISER1 = MMIO(ISER1_val).init(base_address + 0x4);

/// ISER2
const ISER2_val = packed struct {
/// SETENA [0:31]
/// SETENA
SETENA: u32 = 0,
};
/// Interrupt Set-Enable Register
pub const ISER2 = MMIO(ISER2_val).init(base_address + 0x8);

/// ICER0
const ICER0_val = packed struct {
/// CLRENA [0:31]
/// CLRENA
CLRENA: u32 = 0,
};
/// Interrupt Clear-Enable
pub const ICER0 = MMIO(ICER0_val).init(base_address + 0x80);

/// ICER1
const ICER1_val = packed struct {
/// CLRENA [0:31]
/// CLRENA
CLRENA: u32 = 0,
};
/// Interrupt Clear-Enable
pub const ICER1 = MMIO(ICER1_val).init(base_address + 0x84);

/// ICER2
const ICER2_val = packed struct {
/// CLRENA [0:31]
/// CLRENA
CLRENA: u32 = 0,
};
/// Interrupt Clear-Enable
pub const ICER2 = MMIO(ICER2_val).init(base_address + 0x88);

/// ISPR0
const ISPR0_val = packed struct {
/// SETPEND [0:31]
/// SETPEND
SETPEND: u32 = 0,
};
/// Interrupt Set-Pending Register
pub const ISPR0 = MMIO(ISPR0_val).init(base_address + 0x100);

/// ISPR1
const ISPR1_val = packed struct {
/// SETPEND [0:31]
/// SETPEND
SETPEND: u32 = 0,
};
/// Interrupt Set-Pending Register
pub const ISPR1 = MMIO(ISPR1_val).init(base_address + 0x104);

/// ISPR2
const ISPR2_val = packed struct {
/// SETPEND [0:31]
/// SETPEND
SETPEND: u32 = 0,
};
/// Interrupt Set-Pending Register
pub const ISPR2 = MMIO(ISPR2_val).init(base_address + 0x108);

/// ICPR0
const ICPR0_val = packed struct {
/// CLRPEND [0:31]
/// CLRPEND
CLRPEND: u32 = 0,
};
/// Interrupt Clear-Pending
pub const ICPR0 = MMIO(ICPR0_val).init(base_address + 0x180);

/// ICPR1
const ICPR1_val = packed struct {
/// CLRPEND [0:31]
/// CLRPEND
CLRPEND: u32 = 0,
};
/// Interrupt Clear-Pending
pub const ICPR1 = MMIO(ICPR1_val).init(base_address + 0x184);

/// ICPR2
const ICPR2_val = packed struct {
/// CLRPEND [0:31]
/// CLRPEND
CLRPEND: u32 = 0,
};
/// Interrupt Clear-Pending
pub const ICPR2 = MMIO(ICPR2_val).init(base_address + 0x188);

/// IABR0
const IABR0_val = packed struct {
/// ACTIVE [0:31]
/// ACTIVE
ACTIVE: u32 = 0,
};
/// Interrupt Active Bit Register
pub const IABR0 = MMIO(IABR0_val).init(base_address + 0x200);

/// IABR1
const IABR1_val = packed struct {
/// ACTIVE [0:31]
/// ACTIVE
ACTIVE: u32 = 0,
};
/// Interrupt Active Bit Register
pub const IABR1 = MMIO(IABR1_val).init(base_address + 0x204);

/// IABR2
const IABR2_val = packed struct {
/// ACTIVE [0:31]
/// ACTIVE
ACTIVE: u32 = 0,
};
/// Interrupt Active Bit Register
pub const IABR2 = MMIO(IABR2_val).init(base_address + 0x208);

/// IPR0
const IPR0_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR0 = MMIO(IPR0_val).init(base_address + 0x300);

/// IPR1
const IPR1_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR1 = MMIO(IPR1_val).init(base_address + 0x304);

/// IPR2
const IPR2_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR2 = MMIO(IPR2_val).init(base_address + 0x308);

/// IPR3
const IPR3_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR3 = MMIO(IPR3_val).init(base_address + 0x30c);

/// IPR4
const IPR4_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR4 = MMIO(IPR4_val).init(base_address + 0x310);

/// IPR5
const IPR5_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR5 = MMIO(IPR5_val).init(base_address + 0x314);

/// IPR6
const IPR6_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR6 = MMIO(IPR6_val).init(base_address + 0x318);

/// IPR7
const IPR7_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR7 = MMIO(IPR7_val).init(base_address + 0x31c);

/// IPR8
const IPR8_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR8 = MMIO(IPR8_val).init(base_address + 0x320);

/// IPR9
const IPR9_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR9 = MMIO(IPR9_val).init(base_address + 0x324);

/// IPR10
const IPR10_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR10 = MMIO(IPR10_val).init(base_address + 0x328);

/// IPR11
const IPR11_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR11 = MMIO(IPR11_val).init(base_address + 0x32c);

/// IPR12
const IPR12_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR12 = MMIO(IPR12_val).init(base_address + 0x330);

/// IPR13
const IPR13_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR13 = MMIO(IPR13_val).init(base_address + 0x334);

/// IPR14
const IPR14_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR14 = MMIO(IPR14_val).init(base_address + 0x338);

/// IPR15
const IPR15_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR15 = MMIO(IPR15_val).init(base_address + 0x33c);

/// IPR16
const IPR16_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR16 = MMIO(IPR16_val).init(base_address + 0x340);

/// IPR17
const IPR17_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR17 = MMIO(IPR17_val).init(base_address + 0x344);

/// IPR18
const IPR18_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR18 = MMIO(IPR18_val).init(base_address + 0x348);

/// IPR19
const IPR19_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR19 = MMIO(IPR19_val).init(base_address + 0x34c);

/// IPR20
const IPR20_val = packed struct {
/// IPR_N0 [0:7]
/// IPR_N0
IPR_N0: u8 = 0,
/// IPR_N1 [8:15]
/// IPR_N1
IPR_N1: u8 = 0,
/// IPR_N2 [16:23]
/// IPR_N2
IPR_N2: u8 = 0,
/// IPR_N3 [24:31]
/// IPR_N3
IPR_N3: u8 = 0,
};
/// Interrupt Priority Register
pub const IPR20 = MMIO(IPR20_val).init(base_address + 0x350);
};

/// FLASH
pub const FLASH = struct {

const base_address = 0x40023c00;
/// ACR
const ACR_val = packed struct {
/// LATENCY [0:2]
/// Latency
LATENCY: u3 = 0,
/// unused [3:7]
_unused3: u5 = 0,
/// PRFTEN [8:8]
/// Prefetch enable
PRFTEN: u1 = 0,
/// ICEN [9:9]
/// Instruction cache enable
ICEN: u1 = 0,
/// DCEN [10:10]
/// Data cache enable
DCEN: u1 = 0,
/// ICRST [11:11]
/// Instruction cache reset
ICRST: u1 = 0,
/// DCRST [12:12]
/// Data cache reset
DCRST: u1 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Flash access control register
pub const ACR = MMIO(ACR_val).init(base_address + 0x0);

/// KEYR
const KEYR_val = packed struct {
/// KEY [0:31]
/// FPEC key
KEY: u32 = 0,
};
/// Flash key register
pub const KEYR = MMIO(KEYR_val).init(base_address + 0x4);

/// OPTKEYR
const OPTKEYR_val = packed struct {
/// OPTKEY [0:31]
/// Option byte key
OPTKEY: u32 = 0,
};
/// Flash option key register
pub const OPTKEYR = MMIO(OPTKEYR_val).init(base_address + 0x8);

/// SR
const SR_val = packed struct {
/// EOP [0:0]
/// End of operation
EOP: u1 = 0,
/// OPERR [1:1]
/// Operation error
OPERR: u1 = 0,
/// unused [2:3]
_unused2: u2 = 0,
/// WRPERR [4:4]
/// Write protection error
WRPERR: u1 = 0,
/// PGAERR [5:5]
/// Programming alignment
PGAERR: u1 = 0,
/// PGPERR [6:6]
/// Programming parallelism
PGPERR: u1 = 0,
/// PGSERR [7:7]
/// Programming sequence error
PGSERR: u1 = 0,
/// RDERR [8:8]
/// Read Protection Error
RDERR: u1 = 0,
/// unused [9:15]
_unused9: u7 = 0,
/// BSY [16:16]
/// Busy
BSY: u1 = 0,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// Status register
pub const SR = MMIO(SR_val).init(base_address + 0xc);

/// CR
const CR_val = packed struct {
/// PG [0:0]
/// Programming
PG: u1 = 0,
/// SER [1:1]
/// Sector Erase
SER: u1 = 0,
/// MER [2:2]
/// Mass Erase of sectors 0 to
MER: u1 = 0,
/// SNB [3:6]
/// Sector number
SNB: u4 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// PSIZE [8:9]
/// Program size
PSIZE: u2 = 0,
/// unused [10:15]
_unused10: u6 = 0,
/// STRT [16:16]
/// Start
STRT: u1 = 0,
/// unused [17:23]
_unused17: u7 = 0,
/// EOPIE [24:24]
/// End of operation interrupt
EOPIE: u1 = 0,
/// ERRIE [25:25]
/// Error interrupt enable
ERRIE: u1 = 0,
/// unused [26:30]
_unused26: u5 = 0,
/// LOCK [31:31]
/// Lock
LOCK: u1 = 1,
};
/// Control register
pub const CR = MMIO(CR_val).init(base_address + 0x10);

/// OPTCR
const OPTCR_val = packed struct {
/// OPTLOCK [0:0]
/// Option lock
OPTLOCK: u1 = 1,
/// OPTSTRT [1:1]
/// Option start
OPTSTRT: u1 = 0,
/// BOR_LEV [2:3]
/// BOR reset Level
BOR_LEV: u2 = 3,
/// unused [4:4]
_unused4: u1 = 0,
/// WDG_SW [5:5]
/// WDG_SW User option bytes
WDG_SW: u1 = 1,
/// nRST_STOP [6:6]
/// nRST_STOP User option
nRST_STOP: u1 = 1,
/// nRST_STDBY [7:7]
/// nRST_STDBY User option
nRST_STDBY: u1 = 1,
/// RDP [8:15]
/// Read protect
RDP: u8 = 170,
/// nWRP [16:23]
/// Not write protect
nWRP: u8 = 255,
/// unused [24:30]
_unused24: u7 = 15,
/// SPRMOD [31:31]
/// Selection of Protection Mode of nWPRi
SPRMOD: u1 = 0,
};
/// Flash option control register
pub const OPTCR = MMIO(OPTCR_val).init(base_address + 0x14);
};

/// External interrupt/event
pub const EXTI = struct {

const base_address = 0x40013c00;
/// IMR
const IMR_val = packed struct {
/// MR0 [0:0]
/// Interrupt Mask on line 0
MR0: u1 = 0,
/// MR1 [1:1]
/// Interrupt Mask on line 1
MR1: u1 = 0,
/// MR2 [2:2]
/// Interrupt Mask on line 2
MR2: u1 = 0,
/// MR3 [3:3]
/// Interrupt Mask on line 3
MR3: u1 = 0,
/// MR4 [4:4]
/// Interrupt Mask on line 4
MR4: u1 = 0,
/// MR5 [5:5]
/// Interrupt Mask on line 5
MR5: u1 = 0,
/// MR6 [6:6]
/// Interrupt Mask on line 6
MR6: u1 = 0,
/// MR7 [7:7]
/// Interrupt Mask on line 7
MR7: u1 = 0,
/// MR8 [8:8]
/// Interrupt Mask on line 8
MR8: u1 = 0,
/// MR9 [9:9]
/// Interrupt Mask on line 9
MR9: u1 = 0,
/// MR10 [10:10]
/// Interrupt Mask on line 10
MR10: u1 = 0,
/// MR11 [11:11]
/// Interrupt Mask on line 11
MR11: u1 = 0,
/// MR12 [12:12]
/// Interrupt Mask on line 12
MR12: u1 = 0,
/// MR13 [13:13]
/// Interrupt Mask on line 13
MR13: u1 = 0,
/// MR14 [14:14]
/// Interrupt Mask on line 14
MR14: u1 = 0,
/// MR15 [15:15]
/// Interrupt Mask on line 15
MR15: u1 = 0,
/// MR16 [16:16]
/// Interrupt Mask on line 16
MR16: u1 = 0,
/// MR17 [17:17]
/// Interrupt Mask on line 17
MR17: u1 = 0,
/// MR18 [18:18]
/// Interrupt Mask on line 18
MR18: u1 = 0,
/// MR19 [19:19]
/// Interrupt Mask on line 19
MR19: u1 = 0,
/// MR20 [20:20]
/// Interrupt Mask on line 20
MR20: u1 = 0,
/// MR21 [21:21]
/// Interrupt Mask on line 21
MR21: u1 = 0,
/// MR22 [22:22]
/// Interrupt Mask on line 22
MR22: u1 = 0,
/// unused [23:31]
_unused23: u1 = 0,
_unused24: u8 = 0,
};
/// Interrupt mask register
pub const IMR = MMIO(IMR_val).init(base_address + 0x0);

/// EMR
const EMR_val = packed struct {
/// MR0 [0:0]
/// Event Mask on line 0
MR0: u1 = 0,
/// MR1 [1:1]
/// Event Mask on line 1
MR1: u1 = 0,
/// MR2 [2:2]
/// Event Mask on line 2
MR2: u1 = 0,
/// MR3 [3:3]
/// Event Mask on line 3
MR3: u1 = 0,
/// MR4 [4:4]
/// Event Mask on line 4
MR4: u1 = 0,
/// MR5 [5:5]
/// Event Mask on line 5
MR5: u1 = 0,
/// MR6 [6:6]
/// Event Mask on line 6
MR6: u1 = 0,
/// MR7 [7:7]
/// Event Mask on line 7
MR7: u1 = 0,
/// MR8 [8:8]
/// Event Mask on line 8
MR8: u1 = 0,
/// MR9 [9:9]
/// Event Mask on line 9
MR9: u1 = 0,
/// MR10 [10:10]
/// Event Mask on line 10
MR10: u1 = 0,
/// MR11 [11:11]
/// Event Mask on line 11
MR11: u1 = 0,
/// MR12 [12:12]
/// Event Mask on line 12
MR12: u1 = 0,
/// MR13 [13:13]
/// Event Mask on line 13
MR13: u1 = 0,
/// MR14 [14:14]
/// Event Mask on line 14
MR14: u1 = 0,
/// MR15 [15:15]
/// Event Mask on line 15
MR15: u1 = 0,
/// MR16 [16:16]
/// Event Mask on line 16
MR16: u1 = 0,
/// MR17 [17:17]
/// Event Mask on line 17
MR17: u1 = 0,
/// MR18 [18:18]
/// Event Mask on line 18
MR18: u1 = 0,
/// MR19 [19:19]
/// Event Mask on line 19
MR19: u1 = 0,
/// MR20 [20:20]
/// Event Mask on line 20
MR20: u1 = 0,
/// MR21 [21:21]
/// Event Mask on line 21
MR21: u1 = 0,
/// MR22 [22:22]
/// Event Mask on line 22
MR22: u1 = 0,
/// unused [23:31]
_unused23: u1 = 0,
_unused24: u8 = 0,
};
/// Event mask register (EXTI_EMR)
pub const EMR = MMIO(EMR_val).init(base_address + 0x4);

/// RTSR
const RTSR_val = packed struct {
/// TR0 [0:0]
/// Rising trigger event configuration of
TR0: u1 = 0,
/// TR1 [1:1]
/// Rising trigger event configuration of
TR1: u1 = 0,
/// TR2 [2:2]
/// Rising trigger event configuration of
TR2: u1 = 0,
/// TR3 [3:3]
/// Rising trigger event configuration of
TR3: u1 = 0,
/// TR4 [4:4]
/// Rising trigger event configuration of
TR4: u1 = 0,
/// TR5 [5:5]
/// Rising trigger event configuration of
TR5: u1 = 0,
/// TR6 [6:6]
/// Rising trigger event configuration of
TR6: u1 = 0,
/// TR7 [7:7]
/// Rising trigger event configuration of
TR7: u1 = 0,
/// TR8 [8:8]
/// Rising trigger event configuration of
TR8: u1 = 0,
/// TR9 [9:9]
/// Rising trigger event configuration of
TR9: u1 = 0,
/// TR10 [10:10]
/// Rising trigger event configuration of
TR10: u1 = 0,
/// TR11 [11:11]
/// Rising trigger event configuration of
TR11: u1 = 0,
/// TR12 [12:12]
/// Rising trigger event configuration of
TR12: u1 = 0,
/// TR13 [13:13]
/// Rising trigger event configuration of
TR13: u1 = 0,
/// TR14 [14:14]
/// Rising trigger event configuration of
TR14: u1 = 0,
/// TR15 [15:15]
/// Rising trigger event configuration of
TR15: u1 = 0,
/// TR16 [16:16]
/// Rising trigger event configuration of
TR16: u1 = 0,
/// TR17 [17:17]
/// Rising trigger event configuration of
TR17: u1 = 0,
/// TR18 [18:18]
/// Rising trigger event configuration of
TR18: u1 = 0,
/// TR19 [19:19]
/// Rising trigger event configuration of
TR19: u1 = 0,
/// TR20 [20:20]
/// Rising trigger event configuration of
TR20: u1 = 0,
/// TR21 [21:21]
/// Rising trigger event configuration of
TR21: u1 = 0,
/// TR22 [22:22]
/// Rising trigger event configuration of
TR22: u1 = 0,
/// unused [23:31]
_unused23: u1 = 0,
_unused24: u8 = 0,
};
/// Rising Trigger selection register
pub const RTSR = MMIO(RTSR_val).init(base_address + 0x8);

/// FTSR
const FTSR_val = packed struct {
/// TR0 [0:0]
/// Falling trigger event configuration of
TR0: u1 = 0,
/// TR1 [1:1]
/// Falling trigger event configuration of
TR1: u1 = 0,
/// TR2 [2:2]
/// Falling trigger event configuration of
TR2: u1 = 0,
/// TR3 [3:3]
/// Falling trigger event configuration of
TR3: u1 = 0,
/// TR4 [4:4]
/// Falling trigger event configuration of
TR4: u1 = 0,
/// TR5 [5:5]
/// Falling trigger event configuration of
TR5: u1 = 0,
/// TR6 [6:6]
/// Falling trigger event configuration of
TR6: u1 = 0,
/// TR7 [7:7]
/// Falling trigger event configuration of
TR7: u1 = 0,
/// TR8 [8:8]
/// Falling trigger event configuration of
TR8: u1 = 0,
/// TR9 [9:9]
/// Falling trigger event configuration of
TR9: u1 = 0,
/// TR10 [10:10]
/// Falling trigger event configuration of
TR10: u1 = 0,
/// TR11 [11:11]
/// Falling trigger event configuration of
TR11: u1 = 0,
/// TR12 [12:12]
/// Falling trigger event configuration of
TR12: u1 = 0,
/// TR13 [13:13]
/// Falling trigger event configuration of
TR13: u1 = 0,
/// TR14 [14:14]
/// Falling trigger event configuration of
TR14: u1 = 0,
/// TR15 [15:15]
/// Falling trigger event configuration of
TR15: u1 = 0,
/// TR16 [16:16]
/// Falling trigger event configuration of
TR16: u1 = 0,
/// TR17 [17:17]
/// Falling trigger event configuration of
TR17: u1 = 0,
/// TR18 [18:18]
/// Falling trigger event configuration of
TR18: u1 = 0,
/// TR19 [19:19]
/// Falling trigger event configuration of
TR19: u1 = 0,
/// TR20 [20:20]
/// Falling trigger event configuration of
TR20: u1 = 0,
/// TR21 [21:21]
/// Falling trigger event configuration of
TR21: u1 = 0,
/// TR22 [22:22]
/// Falling trigger event configuration of
TR22: u1 = 0,
/// unused [23:31]
_unused23: u1 = 0,
_unused24: u8 = 0,
};
/// Falling Trigger selection register
pub const FTSR = MMIO(FTSR_val).init(base_address + 0xc);

/// SWIER
const SWIER_val = packed struct {
/// SWIER0 [0:0]
/// Software Interrupt on line
SWIER0: u1 = 0,
/// SWIER1 [1:1]
/// Software Interrupt on line
SWIER1: u1 = 0,
/// SWIER2 [2:2]
/// Software Interrupt on line
SWIER2: u1 = 0,
/// SWIER3 [3:3]
/// Software Interrupt on line
SWIER3: u1 = 0,
/// SWIER4 [4:4]
/// Software Interrupt on line
SWIER4: u1 = 0,
/// SWIER5 [5:5]
/// Software Interrupt on line
SWIER5: u1 = 0,
/// SWIER6 [6:6]
/// Software Interrupt on line
SWIER6: u1 = 0,
/// SWIER7 [7:7]
/// Software Interrupt on line
SWIER7: u1 = 0,
/// SWIER8 [8:8]
/// Software Interrupt on line
SWIER8: u1 = 0,
/// SWIER9 [9:9]
/// Software Interrupt on line
SWIER9: u1 = 0,
/// SWIER10 [10:10]
/// Software Interrupt on line
SWIER10: u1 = 0,
/// SWIER11 [11:11]
/// Software Interrupt on line
SWIER11: u1 = 0,
/// SWIER12 [12:12]
/// Software Interrupt on line
SWIER12: u1 = 0,
/// SWIER13 [13:13]
/// Software Interrupt on line
SWIER13: u1 = 0,
/// SWIER14 [14:14]
/// Software Interrupt on line
SWIER14: u1 = 0,
/// SWIER15 [15:15]
/// Software Interrupt on line
SWIER15: u1 = 0,
/// SWIER16 [16:16]
/// Software Interrupt on line
SWIER16: u1 = 0,
/// SWIER17 [17:17]
/// Software Interrupt on line
SWIER17: u1 = 0,
/// SWIER18 [18:18]
/// Software Interrupt on line
SWIER18: u1 = 0,
/// SWIER19 [19:19]
/// Software Interrupt on line
SWIER19: u1 = 0,
/// SWIER20 [20:20]
/// Software Interrupt on line
SWIER20: u1 = 0,
/// SWIER21 [21:21]
/// Software Interrupt on line
SWIER21: u1 = 0,
/// SWIER22 [22:22]
/// Software Interrupt on line
SWIER22: u1 = 0,
/// unused [23:31]
_unused23: u1 = 0,
_unused24: u8 = 0,
};
/// Software interrupt event register
pub const SWIER = MMIO(SWIER_val).init(base_address + 0x10);

/// PR
const PR_val = packed struct {
/// PR0 [0:0]
/// Pending bit 0
PR0: u1 = 0,
/// PR1 [1:1]
/// Pending bit 1
PR1: u1 = 0,
/// PR2 [2:2]
/// Pending bit 2
PR2: u1 = 0,
/// PR3 [3:3]
/// Pending bit 3
PR3: u1 = 0,
/// PR4 [4:4]
/// Pending bit 4
PR4: u1 = 0,
/// PR5 [5:5]
/// Pending bit 5
PR5: u1 = 0,
/// PR6 [6:6]
/// Pending bit 6
PR6: u1 = 0,
/// PR7 [7:7]
/// Pending bit 7
PR7: u1 = 0,
/// PR8 [8:8]
/// Pending bit 8
PR8: u1 = 0,
/// PR9 [9:9]
/// Pending bit 9
PR9: u1 = 0,
/// PR10 [10:10]
/// Pending bit 10
PR10: u1 = 0,
/// PR11 [11:11]
/// Pending bit 11
PR11: u1 = 0,
/// PR12 [12:12]
/// Pending bit 12
PR12: u1 = 0,
/// PR13 [13:13]
/// Pending bit 13
PR13: u1 = 0,
/// PR14 [14:14]
/// Pending bit 14
PR14: u1 = 0,
/// PR15 [15:15]
/// Pending bit 15
PR15: u1 = 0,
/// PR16 [16:16]
/// Pending bit 16
PR16: u1 = 0,
/// PR17 [17:17]
/// Pending bit 17
PR17: u1 = 0,
/// PR18 [18:18]
/// Pending bit 18
PR18: u1 = 0,
/// PR19 [19:19]
/// Pending bit 19
PR19: u1 = 0,
/// PR20 [20:20]
/// Pending bit 20
PR20: u1 = 0,
/// PR21 [21:21]
/// Pending bit 21
PR21: u1 = 0,
/// PR22 [22:22]
/// Pending bit 22
PR22: u1 = 0,
/// unused [23:31]
_unused23: u1 = 0,
_unused24: u8 = 0,
};
/// Pending register (EXTI_PR)
pub const PR = MMIO(PR_val).init(base_address + 0x14);
};

/// USB on the go high speed
pub const OTG_HS_GLOBAL = struct {

const base_address = 0x40040000;
/// OTG_HS_GOTGCTL
const OTG_HS_GOTGCTL_val = packed struct {
/// SRQSCS [0:0]
/// Session request success
SRQSCS: u1 = 0,
/// SRQ [1:1]
/// Session request
SRQ: u1 = 0,
/// unused [2:7]
_unused2: u6 = 0,
/// HNGSCS [8:8]
/// Host negotiation success
HNGSCS: u1 = 0,
/// HNPRQ [9:9]
/// HNP request
HNPRQ: u1 = 0,
/// HSHNPEN [10:10]
/// Host set HNP enable
HSHNPEN: u1 = 0,
/// DHNPEN [11:11]
/// Device HNP enabled
DHNPEN: u1 = 1,
/// unused [12:15]
_unused12: u4 = 0,
/// CIDSTS [16:16]
/// Connector ID status
CIDSTS: u1 = 0,
/// DBCT [17:17]
/// Long/short debounce time
DBCT: u1 = 0,
/// ASVLD [18:18]
/// A-session valid
ASVLD: u1 = 0,
/// BSVLD [19:19]
/// B-session valid
BSVLD: u1 = 0,
/// unused [20:31]
_unused20: u4 = 0,
_unused24: u8 = 0,
};
/// OTG_HS control and status
pub const OTG_HS_GOTGCTL = MMIO(OTG_HS_GOTGCTL_val).init(base_address + 0x0);

/// OTG_HS_GOTGINT
const OTG_HS_GOTGINT_val = packed struct {
/// unused [0:1]
_unused0: u2 = 0,
/// SEDET [2:2]
/// Session end detected
SEDET: u1 = 0,
/// unused [3:7]
_unused3: u5 = 0,
/// SRSSCHG [8:8]
/// Session request success status
SRSSCHG: u1 = 0,
/// HNSSCHG [9:9]
/// Host negotiation success status
HNSSCHG: u1 = 0,
/// unused [10:16]
_unused10: u6 = 0,
_unused16: u1 = 0,
/// HNGDET [17:17]
/// Host negotiation detected
HNGDET: u1 = 0,
/// ADTOCHG [18:18]
/// A-device timeout change
ADTOCHG: u1 = 0,
/// DBCDNE [19:19]
/// Debounce done
DBCDNE: u1 = 0,
/// unused [20:31]
_unused20: u4 = 0,
_unused24: u8 = 0,
};
/// OTG_HS interrupt register
pub const OTG_HS_GOTGINT = MMIO(OTG_HS_GOTGINT_val).init(base_address + 0x4);

/// OTG_HS_GAHBCFG
const OTG_HS_GAHBCFG_val = packed struct {
/// GINT [0:0]
/// Global interrupt mask
GINT: u1 = 0,
/// HBSTLEN [1:4]
/// Burst length/type
HBSTLEN: u4 = 0,
/// DMAEN [5:5]
/// DMA enable
DMAEN: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// TXFELVL [7:7]
/// TxFIFO empty level
TXFELVL: u1 = 0,
/// PTXFELVL [8:8]
/// Periodic TxFIFO empty
PTXFELVL: u1 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS AHB configuration
pub const OTG_HS_GAHBCFG = MMIO(OTG_HS_GAHBCFG_val).init(base_address + 0x8);

/// OTG_HS_GUSBCFG
const OTG_HS_GUSBCFG_val = packed struct {
/// TOCAL [0:2]
/// FS timeout calibration
TOCAL: u3 = 0,
/// unused [3:5]
_unused3: u3 = 0,
/// PHYSEL [6:6]
/// USB 2.0 high-speed ULPI PHY or USB 1.1
PHYSEL: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// SRPCAP [8:8]
/// SRP-capable
SRPCAP: u1 = 0,
/// HNPCAP [9:9]
/// HNP-capable
HNPCAP: u1 = 1,
/// TRDT [10:13]
/// USB turnaround time
TRDT: u4 = 2,
/// unused [14:14]
_unused14: u1 = 0,
/// PHYLPCS [15:15]
/// PHY Low-power clock select
PHYLPCS: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// ULPIFSLS [17:17]
/// ULPI FS/LS select
ULPIFSLS: u1 = 0,
/// ULPIAR [18:18]
/// ULPI Auto-resume
ULPIAR: u1 = 0,
/// ULPICSM [19:19]
/// ULPI Clock SuspendM
ULPICSM: u1 = 0,
/// ULPIEVBUSD [20:20]
/// ULPI External VBUS Drive
ULPIEVBUSD: u1 = 0,
/// ULPIEVBUSI [21:21]
/// ULPI external VBUS
ULPIEVBUSI: u1 = 0,
/// TSDPS [22:22]
/// TermSel DLine pulsing
TSDPS: u1 = 0,
/// PCCI [23:23]
/// Indicator complement
PCCI: u1 = 0,
/// PTCI [24:24]
/// Indicator pass through
PTCI: u1 = 0,
/// ULPIIPD [25:25]
/// ULPI interface protect
ULPIIPD: u1 = 0,
/// unused [26:28]
_unused26: u3 = 0,
/// FHMOD [29:29]
/// Forced host mode
FHMOD: u1 = 0,
/// FDMOD [30:30]
/// Forced peripheral mode
FDMOD: u1 = 0,
/// CTXPKT [31:31]
/// Corrupt Tx packet
CTXPKT: u1 = 0,
};
/// OTG_HS USB configuration
pub const OTG_HS_GUSBCFG = MMIO(OTG_HS_GUSBCFG_val).init(base_address + 0xc);

/// OTG_HS_GRSTCTL
const OTG_HS_GRSTCTL_val = packed struct {
/// CSRST [0:0]
/// Core soft reset
CSRST: u1 = 0,
/// HSRST [1:1]
/// HCLK soft reset
HSRST: u1 = 0,
/// FCRST [2:2]
/// Host frame counter reset
FCRST: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// RXFFLSH [4:4]
/// RxFIFO flush
RXFFLSH: u1 = 0,
/// TXFFLSH [5:5]
/// TxFIFO flush
TXFFLSH: u1 = 0,
/// TXFNUM [6:10]
/// TxFIFO number
TXFNUM: u5 = 0,
/// unused [11:29]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u6 = 32,
/// DMAREQ [30:30]
/// DMA request signal
DMAREQ: u1 = 0,
/// AHBIDL [31:31]
/// AHB master idle
AHBIDL: u1 = 0,
};
/// OTG_HS reset register
pub const OTG_HS_GRSTCTL = MMIO(OTG_HS_GRSTCTL_val).init(base_address + 0x10);

/// OTG_HS_GINTSTS
const OTG_HS_GINTSTS_val = packed struct {
/// CMOD [0:0]
/// Current mode of operation
CMOD: u1 = 0,
/// MMIS [1:1]
/// Mode mismatch interrupt
MMIS: u1 = 0,
/// OTGINT [2:2]
/// OTG interrupt
OTGINT: u1 = 0,
/// SOF [3:3]
/// Start of frame
SOF: u1 = 0,
/// RXFLVL [4:4]
/// RxFIFO nonempty
RXFLVL: u1 = 0,
/// NPTXFE [5:5]
/// Nonperiodic TxFIFO empty
NPTXFE: u1 = 1,
/// GINAKEFF [6:6]
/// Global IN nonperiodic NAK
GINAKEFF: u1 = 0,
/// BOUTNAKEFF [7:7]
/// Global OUT NAK effective
BOUTNAKEFF: u1 = 0,
/// unused [8:9]
_unused8: u2 = 0,
/// ESUSP [10:10]
/// Early suspend
ESUSP: u1 = 0,
/// USBSUSP [11:11]
/// USB suspend
USBSUSP: u1 = 0,
/// USBRST [12:12]
/// USB reset
USBRST: u1 = 0,
/// ENUMDNE [13:13]
/// Enumeration done
ENUMDNE: u1 = 0,
/// ISOODRP [14:14]
/// Isochronous OUT packet dropped
ISOODRP: u1 = 0,
/// EOPF [15:15]
/// End of periodic frame
EOPF: u1 = 0,
/// unused [16:17]
_unused16: u2 = 0,
/// IEPINT [18:18]
/// IN endpoint interrupt
IEPINT: u1 = 0,
/// OEPINT [19:19]
/// OUT endpoint interrupt
OEPINT: u1 = 0,
/// IISOIXFR [20:20]
/// Incomplete isochronous IN
IISOIXFR: u1 = 0,
/// PXFR_INCOMPISOOUT [21:21]
/// Incomplete periodic
PXFR_INCOMPISOOUT: u1 = 0,
/// DATAFSUSP [22:22]
/// Data fetch suspended
DATAFSUSP: u1 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// HPRTINT [24:24]
/// Host port interrupt
HPRTINT: u1 = 0,
/// HCINT [25:25]
/// Host channels interrupt
HCINT: u1 = 0,
/// PTXFE [26:26]
/// Periodic TxFIFO empty
PTXFE: u1 = 1,
/// unused [27:27]
_unused27: u1 = 0,
/// CIDSCHG [28:28]
/// Connector ID status change
CIDSCHG: u1 = 0,
/// DISCINT [29:29]
/// Disconnect detected
DISCINT: u1 = 0,
/// SRQINT [30:30]
/// Session request/new session detected
SRQINT: u1 = 0,
/// WKUINT [31:31]
/// Resume/remote wakeup detected
WKUINT: u1 = 0,
};
/// OTG_HS core interrupt register
pub const OTG_HS_GINTSTS = MMIO(OTG_HS_GINTSTS_val).init(base_address + 0x14);

/// OTG_HS_GINTMSK
const OTG_HS_GINTMSK_val = packed struct {
/// unused [0:0]
_unused0: u1 = 0,
/// MMISM [1:1]
/// Mode mismatch interrupt
MMISM: u1 = 0,
/// OTGINT [2:2]
/// OTG interrupt mask
OTGINT: u1 = 0,
/// SOFM [3:3]
/// Start of frame mask
SOFM: u1 = 0,
/// RXFLVLM [4:4]
/// Receive FIFO nonempty mask
RXFLVLM: u1 = 0,
/// NPTXFEM [5:5]
/// Nonperiodic TxFIFO empty
NPTXFEM: u1 = 0,
/// GINAKEFFM [6:6]
/// Global nonperiodic IN NAK effective
GINAKEFFM: u1 = 0,
/// GONAKEFFM [7:7]
/// Global OUT NAK effective
GONAKEFFM: u1 = 0,
/// unused [8:9]
_unused8: u2 = 0,
/// ESUSPM [10:10]
/// Early suspend mask
ESUSPM: u1 = 0,
/// USBSUSPM [11:11]
/// USB suspend mask
USBSUSPM: u1 = 0,
/// USBRST [12:12]
/// USB reset mask
USBRST: u1 = 0,
/// ENUMDNEM [13:13]
/// Enumeration done mask
ENUMDNEM: u1 = 0,
/// ISOODRPM [14:14]
/// Isochronous OUT packet dropped interrupt
ISOODRPM: u1 = 0,
/// EOPFM [15:15]
/// End of periodic frame interrupt
EOPFM: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// EPMISM [17:17]
/// Endpoint mismatch interrupt
EPMISM: u1 = 0,
/// IEPINT [18:18]
/// IN endpoints interrupt
IEPINT: u1 = 0,
/// OEPINT [19:19]
/// OUT endpoints interrupt
OEPINT: u1 = 0,
/// IISOIXFRM [20:20]
/// Incomplete isochronous IN transfer
IISOIXFRM: u1 = 0,
/// PXFRM_IISOOXFRM [21:21]
/// Incomplete periodic transfer
PXFRM_IISOOXFRM: u1 = 0,
/// FSUSPM [22:22]
/// Data fetch suspended mask
FSUSPM: u1 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// PRTIM [24:24]
/// Host port interrupt mask
PRTIM: u1 = 0,
/// HCIM [25:25]
/// Host channels interrupt
HCIM: u1 = 0,
/// PTXFEM [26:26]
/// Periodic TxFIFO empty mask
PTXFEM: u1 = 0,
/// unused [27:27]
_unused27: u1 = 0,
/// CIDSCHGM [28:28]
/// Connector ID status change
CIDSCHGM: u1 = 0,
/// DISCINT [29:29]
/// Disconnect detected interrupt
DISCINT: u1 = 0,
/// SRQIM [30:30]
/// Session request/new session detected
SRQIM: u1 = 0,
/// WUIM [31:31]
/// Resume/remote wakeup detected interrupt
WUIM: u1 = 0,
};
/// OTG_HS interrupt mask register
pub const OTG_HS_GINTMSK = MMIO(OTG_HS_GINTMSK_val).init(base_address + 0x18);

/// OTG_HS_GRXSTSR_Host
const OTG_HS_GRXSTSR_Host_val = packed struct {
/// CHNUM [0:3]
/// Channel number
CHNUM: u4 = 0,
/// BCNT [4:14]
/// Byte count
BCNT: u11 = 0,
/// DPID [15:16]
/// Data PID
DPID: u2 = 0,
/// PKTSTS [17:20]
/// Packet status
PKTSTS: u4 = 0,
/// unused [21:31]
_unused21: u3 = 0,
_unused24: u8 = 0,
};
/// OTG_HS Receive status debug read register
pub const OTG_HS_GRXSTSR_Host = MMIO(OTG_HS_GRXSTSR_Host_val).init(base_address + 0x1c);

/// OTG_HS_GRXSTSP_Host
const OTG_HS_GRXSTSP_Host_val = packed struct {
/// CHNUM [0:3]
/// Channel number
CHNUM: u4 = 0,
/// BCNT [4:14]
/// Byte count
BCNT: u11 = 0,
/// DPID [15:16]
/// Data PID
DPID: u2 = 0,
/// PKTSTS [17:20]
/// Packet status
PKTSTS: u4 = 0,
/// unused [21:31]
_unused21: u3 = 0,
_unused24: u8 = 0,
};
/// OTG_HS status read and pop register (host
pub const OTG_HS_GRXSTSP_Host = MMIO(OTG_HS_GRXSTSP_Host_val).init(base_address + 0x20);

/// OTG_HS_GRXFSIZ
const OTG_HS_GRXFSIZ_val = packed struct {
/// RXFD [0:15]
/// RxFIFO depth
RXFD: u16 = 512,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS Receive FIFO size
pub const OTG_HS_GRXFSIZ = MMIO(OTG_HS_GRXFSIZ_val).init(base_address + 0x24);

/// OTG_HS_GNPTXFSIZ_Host
const OTG_HS_GNPTXFSIZ_Host_val = packed struct {
/// NPTXFSA [0:15]
/// Nonperiodic transmit RAM start
NPTXFSA: u16 = 512,
/// NPTXFD [16:31]
/// Nonperiodic TxFIFO depth
NPTXFD: u16 = 0,
};
/// OTG_HS nonperiodic transmit FIFO size
pub const OTG_HS_GNPTXFSIZ_Host = MMIO(OTG_HS_GNPTXFSIZ_Host_val).init(base_address + 0x28);

/// OTG_HS_TX0FSIZ_Peripheral
const OTG_HS_TX0FSIZ_Peripheral_val = packed struct {
/// TX0FSA [0:15]
/// Endpoint 0 transmit RAM start
TX0FSA: u16 = 512,
/// TX0FD [16:31]
/// Endpoint 0 TxFIFO depth
TX0FD: u16 = 0,
};
/// Endpoint 0 transmit FIFO size (peripheral
pub const OTG_HS_TX0FSIZ_Peripheral = MMIO(OTG_HS_TX0FSIZ_Peripheral_val).init(base_address + 0x28);

/// OTG_HS_GNPTXSTS
const OTG_HS_GNPTXSTS_val = packed struct {
/// NPTXFSAV [0:15]
/// Nonperiodic TxFIFO space
NPTXFSAV: u16 = 512,
/// NPTQXSAV [16:23]
/// Nonperiodic transmit request queue space
NPTQXSAV: u8 = 8,
/// NPTXQTOP [24:30]
/// Top of the nonperiodic transmit request
NPTXQTOP: u7 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS nonperiodic transmit FIFO/queue
pub const OTG_HS_GNPTXSTS = MMIO(OTG_HS_GNPTXSTS_val).init(base_address + 0x2c);

/// OTG_HS_GCCFG
const OTG_HS_GCCFG_val = packed struct {
/// unused [0:15]
_unused0: u8 = 0,
_unused8: u8 = 0,
/// PWRDWN [16:16]
/// Power down
PWRDWN: u1 = 0,
/// I2CPADEN [17:17]
/// Enable I2C bus connection for the
I2CPADEN: u1 = 0,
/// VBUSASEN [18:18]
/// Enable the VBUS sensing
VBUSASEN: u1 = 0,
/// VBUSBSEN [19:19]
/// Enable the VBUS sensing
VBUSBSEN: u1 = 0,
/// SOFOUTEN [20:20]
/// SOF output enable
SOFOUTEN: u1 = 0,
/// NOVBUSSENS [21:21]
/// VBUS sensing disable
NOVBUSSENS: u1 = 0,
/// unused [22:31]
_unused22: u2 = 0,
_unused24: u8 = 0,
};
/// OTG_HS general core configuration
pub const OTG_HS_GCCFG = MMIO(OTG_HS_GCCFG_val).init(base_address + 0x38);

/// OTG_HS_CID
const OTG_HS_CID_val = packed struct {
/// PRODUCT_ID [0:31]
/// Product ID field
PRODUCT_ID: u32 = 4608,
};
/// OTG_HS core ID register
pub const OTG_HS_CID = MMIO(OTG_HS_CID_val).init(base_address + 0x3c);

/// OTG_HS_HPTXFSIZ
const OTG_HS_HPTXFSIZ_val = packed struct {
/// PTXSA [0:15]
/// Host periodic TxFIFO start
PTXSA: u16 = 1536,
/// PTXFD [16:31]
/// Host periodic TxFIFO depth
PTXFD: u16 = 512,
};
/// OTG_HS Host periodic transmit FIFO size
pub const OTG_HS_HPTXFSIZ = MMIO(OTG_HS_HPTXFSIZ_val).init(base_address + 0x100);

/// OTG_HS_DIEPTXF1
const OTG_HS_DIEPTXF1_val = packed struct {
/// INEPTXSA [0:15]
/// IN endpoint FIFOx transmit RAM start
INEPTXSA: u16 = 1024,
/// INEPTXFD [16:31]
/// IN endpoint TxFIFO depth
INEPTXFD: u16 = 512,
};
/// OTG_HS device IN endpoint transmit FIFO size
pub const OTG_HS_DIEPTXF1 = MMIO(OTG_HS_DIEPTXF1_val).init(base_address + 0x104);

/// OTG_HS_DIEPTXF2
const OTG_HS_DIEPTXF2_val = packed struct {
/// INEPTXSA [0:15]
/// IN endpoint FIFOx transmit RAM start
INEPTXSA: u16 = 1024,
/// INEPTXFD [16:31]
/// IN endpoint TxFIFO depth
INEPTXFD: u16 = 512,
};
/// OTG_HS device IN endpoint transmit FIFO size
pub const OTG_HS_DIEPTXF2 = MMIO(OTG_HS_DIEPTXF2_val).init(base_address + 0x108);

/// OTG_HS_DIEPTXF3
const OTG_HS_DIEPTXF3_val = packed struct {
/// INEPTXSA [0:15]
/// IN endpoint FIFOx transmit RAM start
INEPTXSA: u16 = 1024,
/// INEPTXFD [16:31]
/// IN endpoint TxFIFO depth
INEPTXFD: u16 = 512,
};
/// OTG_HS device IN endpoint transmit FIFO size
pub const OTG_HS_DIEPTXF3 = MMIO(OTG_HS_DIEPTXF3_val).init(base_address + 0x11c);

/// OTG_HS_DIEPTXF4
const OTG_HS_DIEPTXF4_val = packed struct {
/// INEPTXSA [0:15]
/// IN endpoint FIFOx transmit RAM start
INEPTXSA: u16 = 1024,
/// INEPTXFD [16:31]
/// IN endpoint TxFIFO depth
INEPTXFD: u16 = 512,
};
/// OTG_HS device IN endpoint transmit FIFO size
pub const OTG_HS_DIEPTXF4 = MMIO(OTG_HS_DIEPTXF4_val).init(base_address + 0x120);

/// OTG_HS_DIEPTXF5
const OTG_HS_DIEPTXF5_val = packed struct {
/// INEPTXSA [0:15]
/// IN endpoint FIFOx transmit RAM start
INEPTXSA: u16 = 1024,
/// INEPTXFD [16:31]
/// IN endpoint TxFIFO depth
INEPTXFD: u16 = 512,
};
/// OTG_HS device IN endpoint transmit FIFO size
pub const OTG_HS_DIEPTXF5 = MMIO(OTG_HS_DIEPTXF5_val).init(base_address + 0x124);

/// OTG_HS_DIEPTXF6
const OTG_HS_DIEPTXF6_val = packed struct {
/// INEPTXSA [0:15]
/// IN endpoint FIFOx transmit RAM start
INEPTXSA: u16 = 1024,
/// INEPTXFD [16:31]
/// IN endpoint TxFIFO depth
INEPTXFD: u16 = 512,
};
/// OTG_HS device IN endpoint transmit FIFO size
pub const OTG_HS_DIEPTXF6 = MMIO(OTG_HS_DIEPTXF6_val).init(base_address + 0x128);

/// OTG_HS_DIEPTXF7
const OTG_HS_DIEPTXF7_val = packed struct {
/// INEPTXSA [0:15]
/// IN endpoint FIFOx transmit RAM start
INEPTXSA: u16 = 1024,
/// INEPTXFD [16:31]
/// IN endpoint TxFIFO depth
INEPTXFD: u16 = 512,
};
/// OTG_HS device IN endpoint transmit FIFO size
pub const OTG_HS_DIEPTXF7 = MMIO(OTG_HS_DIEPTXF7_val).init(base_address + 0x12c);

/// OTG_HS_GRXSTSR_Peripheral
const OTG_HS_GRXSTSR_Peripheral_val = packed struct {
/// EPNUM [0:3]
/// Endpoint number
EPNUM: u4 = 0,
/// BCNT [4:14]
/// Byte count
BCNT: u11 = 0,
/// DPID [15:16]
/// Data PID
DPID: u2 = 0,
/// PKTSTS [17:20]
/// Packet status
PKTSTS: u4 = 0,
/// FRMNUM [21:24]
/// Frame number
FRMNUM: u4 = 0,
/// unused [25:31]
_unused25: u7 = 0,
};
/// OTG_HS Receive status debug read register
pub const OTG_HS_GRXSTSR_Peripheral = MMIO(OTG_HS_GRXSTSR_Peripheral_val).init(base_address + 0x1c);

/// OTG_HS_GRXSTSP_Peripheral
const OTG_HS_GRXSTSP_Peripheral_val = packed struct {
/// EPNUM [0:3]
/// Endpoint number
EPNUM: u4 = 0,
/// BCNT [4:14]
/// Byte count
BCNT: u11 = 0,
/// DPID [15:16]
/// Data PID
DPID: u2 = 0,
/// PKTSTS [17:20]
/// Packet status
PKTSTS: u4 = 0,
/// FRMNUM [21:24]
/// Frame number
FRMNUM: u4 = 0,
/// unused [25:31]
_unused25: u7 = 0,
};
/// OTG_HS status read and pop register
pub const OTG_HS_GRXSTSP_Peripheral = MMIO(OTG_HS_GRXSTSP_Peripheral_val).init(base_address + 0x20);
};

/// USB on the go high speed
pub const OTG_HS_HOST = struct {

const base_address = 0x40040400;
/// OTG_HS_HCFG
const OTG_HS_HCFG_val = packed struct {
/// FSLSPCS [0:1]
/// FS/LS PHY clock select
FSLSPCS: u2 = 0,
/// FSLSS [2:2]
/// FS- and LS-only support
FSLSS: u1 = 0,
/// unused [3:31]
_unused3: u5 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host configuration
pub const OTG_HS_HCFG = MMIO(OTG_HS_HCFG_val).init(base_address + 0x0);

/// OTG_HS_HFIR
const OTG_HS_HFIR_val = packed struct {
/// FRIVL [0:15]
/// Frame interval
FRIVL: u16 = 60000,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS Host frame interval
pub const OTG_HS_HFIR = MMIO(OTG_HS_HFIR_val).init(base_address + 0x4);

/// OTG_HS_HFNUM
const OTG_HS_HFNUM_val = packed struct {
/// FRNUM [0:15]
/// Frame number
FRNUM: u16 = 16383,
/// FTREM [16:31]
/// Frame time remaining
FTREM: u16 = 0,
};
/// OTG_HS host frame number/frame time
pub const OTG_HS_HFNUM = MMIO(OTG_HS_HFNUM_val).init(base_address + 0x8);

/// OTG_HS_HPTXSTS
const OTG_HS_HPTXSTS_val = packed struct {
/// PTXFSAVL [0:15]
/// Periodic transmit data FIFO space
PTXFSAVL: u16 = 256,
/// PTXQSAV [16:23]
/// Periodic transmit request queue space
PTXQSAV: u8 = 8,
/// PTXQTOP [24:31]
/// Top of the periodic transmit request
PTXQTOP: u8 = 0,
};
/// OTG_HS_Host periodic transmit FIFO/queue
pub const OTG_HS_HPTXSTS = MMIO(OTG_HS_HPTXSTS_val).init(base_address + 0x10);

/// OTG_HS_HAINT
const OTG_HS_HAINT_val = packed struct {
/// HAINT [0:15]
/// Channel interrupts
HAINT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS Host all channels interrupt
pub const OTG_HS_HAINT = MMIO(OTG_HS_HAINT_val).init(base_address + 0x14);

/// OTG_HS_HAINTMSK
const OTG_HS_HAINTMSK_val = packed struct {
/// HAINTM [0:15]
/// Channel interrupt mask
HAINTM: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host all channels interrupt mask
pub const OTG_HS_HAINTMSK = MMIO(OTG_HS_HAINTMSK_val).init(base_address + 0x18);

/// OTG_HS_HPRT
const OTG_HS_HPRT_val = packed struct {
/// PCSTS [0:0]
/// Port connect status
PCSTS: u1 = 0,
/// PCDET [1:1]
/// Port connect detected
PCDET: u1 = 0,
/// PENA [2:2]
/// Port enable
PENA: u1 = 0,
/// PENCHNG [3:3]
/// Port enable/disable change
PENCHNG: u1 = 0,
/// POCA [4:4]
/// Port overcurrent active
POCA: u1 = 0,
/// POCCHNG [5:5]
/// Port overcurrent change
POCCHNG: u1 = 0,
/// PRES [6:6]
/// Port resume
PRES: u1 = 0,
/// PSUSP [7:7]
/// Port suspend
PSUSP: u1 = 0,
/// PRST [8:8]
/// Port reset
PRST: u1 = 0,
/// unused [9:9]
_unused9: u1 = 0,
/// PLSTS [10:11]
/// Port line status
PLSTS: u2 = 0,
/// PPWR [12:12]
/// Port power
PPWR: u1 = 0,
/// PTCTL [13:16]
/// Port test control
PTCTL: u4 = 0,
/// PSPD [17:18]
/// Port speed
PSPD: u2 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host port control and status
pub const OTG_HS_HPRT = MMIO(OTG_HS_HPRT_val).init(base_address + 0x40);

/// OTG_HS_HCCHAR0
const OTG_HS_HCCHAR0_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MC [20:21]
/// Multi Count (MC) / Error Count
MC: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_HS host channel-0 characteristics
pub const OTG_HS_HCCHAR0 = MMIO(OTG_HS_HCCHAR0_val).init(base_address + 0x100);

/// OTG_HS_HCCHAR1
const OTG_HS_HCCHAR1_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MC [20:21]
/// Multi Count (MC) / Error Count
MC: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_HS host channel-1 characteristics
pub const OTG_HS_HCCHAR1 = MMIO(OTG_HS_HCCHAR1_val).init(base_address + 0x120);

/// OTG_HS_HCCHAR2
const OTG_HS_HCCHAR2_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MC [20:21]
/// Multi Count (MC) / Error Count
MC: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_HS host channel-2 characteristics
pub const OTG_HS_HCCHAR2 = MMIO(OTG_HS_HCCHAR2_val).init(base_address + 0x140);

/// OTG_HS_HCCHAR3
const OTG_HS_HCCHAR3_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MC [20:21]
/// Multi Count (MC) / Error Count
MC: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_HS host channel-3 characteristics
pub const OTG_HS_HCCHAR3 = MMIO(OTG_HS_HCCHAR3_val).init(base_address + 0x160);

/// OTG_HS_HCCHAR4
const OTG_HS_HCCHAR4_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MC [20:21]
/// Multi Count (MC) / Error Count
MC: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_HS host channel-4 characteristics
pub const OTG_HS_HCCHAR4 = MMIO(OTG_HS_HCCHAR4_val).init(base_address + 0x180);

/// OTG_HS_HCCHAR5
const OTG_HS_HCCHAR5_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MC [20:21]
/// Multi Count (MC) / Error Count
MC: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_HS host channel-5 characteristics
pub const OTG_HS_HCCHAR5 = MMIO(OTG_HS_HCCHAR5_val).init(base_address + 0x1a0);

/// OTG_HS_HCCHAR6
const OTG_HS_HCCHAR6_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MC [20:21]
/// Multi Count (MC) / Error Count
MC: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_HS host channel-6 characteristics
pub const OTG_HS_HCCHAR6 = MMIO(OTG_HS_HCCHAR6_val).init(base_address + 0x1c0);

/// OTG_HS_HCCHAR7
const OTG_HS_HCCHAR7_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MC [20:21]
/// Multi Count (MC) / Error Count
MC: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_HS host channel-7 characteristics
pub const OTG_HS_HCCHAR7 = MMIO(OTG_HS_HCCHAR7_val).init(base_address + 0x1e0);

/// OTG_HS_HCCHAR8
const OTG_HS_HCCHAR8_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MC [20:21]
/// Multi Count (MC) / Error Count
MC: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_HS host channel-8 characteristics
pub const OTG_HS_HCCHAR8 = MMIO(OTG_HS_HCCHAR8_val).init(base_address + 0x200);

/// OTG_HS_HCCHAR9
const OTG_HS_HCCHAR9_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MC [20:21]
/// Multi Count (MC) / Error Count
MC: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_HS host channel-9 characteristics
pub const OTG_HS_HCCHAR9 = MMIO(OTG_HS_HCCHAR9_val).init(base_address + 0x220);

/// OTG_HS_HCCHAR10
const OTG_HS_HCCHAR10_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MC [20:21]
/// Multi Count (MC) / Error Count
MC: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_HS host channel-10 characteristics
pub const OTG_HS_HCCHAR10 = MMIO(OTG_HS_HCCHAR10_val).init(base_address + 0x240);

/// OTG_HS_HCCHAR11
const OTG_HS_HCCHAR11_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// EPNUM [11:14]
/// Endpoint number
EPNUM: u4 = 0,
/// EPDIR [15:15]
/// Endpoint direction
EPDIR: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// LSDEV [17:17]
/// Low-speed device
LSDEV: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// MC [20:21]
/// Multi Count (MC) / Error Count
MC: u2 = 0,
/// DAD [22:28]
/// Device address
DAD: u7 = 0,
/// ODDFRM [29:29]
/// Odd frame
ODDFRM: u1 = 0,
/// CHDIS [30:30]
/// Channel disable
CHDIS: u1 = 0,
/// CHENA [31:31]
/// Channel enable
CHENA: u1 = 0,
};
/// OTG_HS host channel-11 characteristics
pub const OTG_HS_HCCHAR11 = MMIO(OTG_HS_HCCHAR11_val).init(base_address + 0x260);

/// OTG_HS_HCSPLT0
const OTG_HS_HCSPLT0_val = packed struct {
/// PRTADDR [0:6]
/// Port address
PRTADDR: u7 = 0,
/// HUBADDR [7:13]
/// Hub address
HUBADDR: u7 = 0,
/// XACTPOS [14:15]
/// XACTPOS
XACTPOS: u2 = 0,
/// COMPLSPLT [16:16]
/// Do complete split
COMPLSPLT: u1 = 0,
/// unused [17:30]
_unused17: u7 = 0,
_unused24: u7 = 0,
/// SPLITEN [31:31]
/// Split enable
SPLITEN: u1 = 0,
};
/// OTG_HS host channel-0 split control
pub const OTG_HS_HCSPLT0 = MMIO(OTG_HS_HCSPLT0_val).init(base_address + 0x104);

/// OTG_HS_HCSPLT1
const OTG_HS_HCSPLT1_val = packed struct {
/// PRTADDR [0:6]
/// Port address
PRTADDR: u7 = 0,
/// HUBADDR [7:13]
/// Hub address
HUBADDR: u7 = 0,
/// XACTPOS [14:15]
/// XACTPOS
XACTPOS: u2 = 0,
/// COMPLSPLT [16:16]
/// Do complete split
COMPLSPLT: u1 = 0,
/// unused [17:30]
_unused17: u7 = 0,
_unused24: u7 = 0,
/// SPLITEN [31:31]
/// Split enable
SPLITEN: u1 = 0,
};
/// OTG_HS host channel-1 split control
pub const OTG_HS_HCSPLT1 = MMIO(OTG_HS_HCSPLT1_val).init(base_address + 0x124);

/// OTG_HS_HCSPLT2
const OTG_HS_HCSPLT2_val = packed struct {
/// PRTADDR [0:6]
/// Port address
PRTADDR: u7 = 0,
/// HUBADDR [7:13]
/// Hub address
HUBADDR: u7 = 0,
/// XACTPOS [14:15]
/// XACTPOS
XACTPOS: u2 = 0,
/// COMPLSPLT [16:16]
/// Do complete split
COMPLSPLT: u1 = 0,
/// unused [17:30]
_unused17: u7 = 0,
_unused24: u7 = 0,
/// SPLITEN [31:31]
/// Split enable
SPLITEN: u1 = 0,
};
/// OTG_HS host channel-2 split control
pub const OTG_HS_HCSPLT2 = MMIO(OTG_HS_HCSPLT2_val).init(base_address + 0x144);

/// OTG_HS_HCSPLT3
const OTG_HS_HCSPLT3_val = packed struct {
/// PRTADDR [0:6]
/// Port address
PRTADDR: u7 = 0,
/// HUBADDR [7:13]
/// Hub address
HUBADDR: u7 = 0,
/// XACTPOS [14:15]
/// XACTPOS
XACTPOS: u2 = 0,
/// COMPLSPLT [16:16]
/// Do complete split
COMPLSPLT: u1 = 0,
/// unused [17:30]
_unused17: u7 = 0,
_unused24: u7 = 0,
/// SPLITEN [31:31]
/// Split enable
SPLITEN: u1 = 0,
};
/// OTG_HS host channel-3 split control
pub const OTG_HS_HCSPLT3 = MMIO(OTG_HS_HCSPLT3_val).init(base_address + 0x164);

/// OTG_HS_HCSPLT4
const OTG_HS_HCSPLT4_val = packed struct {
/// PRTADDR [0:6]
/// Port address
PRTADDR: u7 = 0,
/// HUBADDR [7:13]
/// Hub address
HUBADDR: u7 = 0,
/// XACTPOS [14:15]
/// XACTPOS
XACTPOS: u2 = 0,
/// COMPLSPLT [16:16]
/// Do complete split
COMPLSPLT: u1 = 0,
/// unused [17:30]
_unused17: u7 = 0,
_unused24: u7 = 0,
/// SPLITEN [31:31]
/// Split enable
SPLITEN: u1 = 0,
};
/// OTG_HS host channel-4 split control
pub const OTG_HS_HCSPLT4 = MMIO(OTG_HS_HCSPLT4_val).init(base_address + 0x184);

/// OTG_HS_HCSPLT5
const OTG_HS_HCSPLT5_val = packed struct {
/// PRTADDR [0:6]
/// Port address
PRTADDR: u7 = 0,
/// HUBADDR [7:13]
/// Hub address
HUBADDR: u7 = 0,
/// XACTPOS [14:15]
/// XACTPOS
XACTPOS: u2 = 0,
/// COMPLSPLT [16:16]
/// Do complete split
COMPLSPLT: u1 = 0,
/// unused [17:30]
_unused17: u7 = 0,
_unused24: u7 = 0,
/// SPLITEN [31:31]
/// Split enable
SPLITEN: u1 = 0,
};
/// OTG_HS host channel-5 split control
pub const OTG_HS_HCSPLT5 = MMIO(OTG_HS_HCSPLT5_val).init(base_address + 0x1a4);

/// OTG_HS_HCSPLT6
const OTG_HS_HCSPLT6_val = packed struct {
/// PRTADDR [0:6]
/// Port address
PRTADDR: u7 = 0,
/// HUBADDR [7:13]
/// Hub address
HUBADDR: u7 = 0,
/// XACTPOS [14:15]
/// XACTPOS
XACTPOS: u2 = 0,
/// COMPLSPLT [16:16]
/// Do complete split
COMPLSPLT: u1 = 0,
/// unused [17:30]
_unused17: u7 = 0,
_unused24: u7 = 0,
/// SPLITEN [31:31]
/// Split enable
SPLITEN: u1 = 0,
};
/// OTG_HS host channel-6 split control
pub const OTG_HS_HCSPLT6 = MMIO(OTG_HS_HCSPLT6_val).init(base_address + 0x1c4);

/// OTG_HS_HCSPLT7
const OTG_HS_HCSPLT7_val = packed struct {
/// PRTADDR [0:6]
/// Port address
PRTADDR: u7 = 0,
/// HUBADDR [7:13]
/// Hub address
HUBADDR: u7 = 0,
/// XACTPOS [14:15]
/// XACTPOS
XACTPOS: u2 = 0,
/// COMPLSPLT [16:16]
/// Do complete split
COMPLSPLT: u1 = 0,
/// unused [17:30]
_unused17: u7 = 0,
_unused24: u7 = 0,
/// SPLITEN [31:31]
/// Split enable
SPLITEN: u1 = 0,
};
/// OTG_HS host channel-7 split control
pub const OTG_HS_HCSPLT7 = MMIO(OTG_HS_HCSPLT7_val).init(base_address + 0x1e4);

/// OTG_HS_HCSPLT8
const OTG_HS_HCSPLT8_val = packed struct {
/// PRTADDR [0:6]
/// Port address
PRTADDR: u7 = 0,
/// HUBADDR [7:13]
/// Hub address
HUBADDR: u7 = 0,
/// XACTPOS [14:15]
/// XACTPOS
XACTPOS: u2 = 0,
/// COMPLSPLT [16:16]
/// Do complete split
COMPLSPLT: u1 = 0,
/// unused [17:30]
_unused17: u7 = 0,
_unused24: u7 = 0,
/// SPLITEN [31:31]
/// Split enable
SPLITEN: u1 = 0,
};
/// OTG_HS host channel-8 split control
pub const OTG_HS_HCSPLT8 = MMIO(OTG_HS_HCSPLT8_val).init(base_address + 0x204);

/// OTG_HS_HCSPLT9
const OTG_HS_HCSPLT9_val = packed struct {
/// PRTADDR [0:6]
/// Port address
PRTADDR: u7 = 0,
/// HUBADDR [7:13]
/// Hub address
HUBADDR: u7 = 0,
/// XACTPOS [14:15]
/// XACTPOS
XACTPOS: u2 = 0,
/// COMPLSPLT [16:16]
/// Do complete split
COMPLSPLT: u1 = 0,
/// unused [17:30]
_unused17: u7 = 0,
_unused24: u7 = 0,
/// SPLITEN [31:31]
/// Split enable
SPLITEN: u1 = 0,
};
/// OTG_HS host channel-9 split control
pub const OTG_HS_HCSPLT9 = MMIO(OTG_HS_HCSPLT9_val).init(base_address + 0x224);

/// OTG_HS_HCSPLT10
const OTG_HS_HCSPLT10_val = packed struct {
/// PRTADDR [0:6]
/// Port address
PRTADDR: u7 = 0,
/// HUBADDR [7:13]
/// Hub address
HUBADDR: u7 = 0,
/// XACTPOS [14:15]
/// XACTPOS
XACTPOS: u2 = 0,
/// COMPLSPLT [16:16]
/// Do complete split
COMPLSPLT: u1 = 0,
/// unused [17:30]
_unused17: u7 = 0,
_unused24: u7 = 0,
/// SPLITEN [31:31]
/// Split enable
SPLITEN: u1 = 0,
};
/// OTG_HS host channel-10 split control
pub const OTG_HS_HCSPLT10 = MMIO(OTG_HS_HCSPLT10_val).init(base_address + 0x244);

/// OTG_HS_HCSPLT11
const OTG_HS_HCSPLT11_val = packed struct {
/// PRTADDR [0:6]
/// Port address
PRTADDR: u7 = 0,
/// HUBADDR [7:13]
/// Hub address
HUBADDR: u7 = 0,
/// XACTPOS [14:15]
/// XACTPOS
XACTPOS: u2 = 0,
/// COMPLSPLT [16:16]
/// Do complete split
COMPLSPLT: u1 = 0,
/// unused [17:30]
_unused17: u7 = 0,
_unused24: u7 = 0,
/// SPLITEN [31:31]
/// Split enable
SPLITEN: u1 = 0,
};
/// OTG_HS host channel-11 split control
pub const OTG_HS_HCSPLT11 = MMIO(OTG_HS_HCSPLT11_val).init(base_address + 0x264);

/// OTG_HS_HCINT0
const OTG_HS_HCINT0_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// NYET [6:6]
/// Response received
NYET: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-11 interrupt
pub const OTG_HS_HCINT0 = MMIO(OTG_HS_HCINT0_val).init(base_address + 0x108);

/// OTG_HS_HCINT1
const OTG_HS_HCINT1_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// NYET [6:6]
/// Response received
NYET: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-1 interrupt
pub const OTG_HS_HCINT1 = MMIO(OTG_HS_HCINT1_val).init(base_address + 0x128);

/// OTG_HS_HCINT2
const OTG_HS_HCINT2_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// NYET [6:6]
/// Response received
NYET: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-2 interrupt
pub const OTG_HS_HCINT2 = MMIO(OTG_HS_HCINT2_val).init(base_address + 0x148);

/// OTG_HS_HCINT3
const OTG_HS_HCINT3_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// NYET [6:6]
/// Response received
NYET: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-3 interrupt
pub const OTG_HS_HCINT3 = MMIO(OTG_HS_HCINT3_val).init(base_address + 0x168);

/// OTG_HS_HCINT4
const OTG_HS_HCINT4_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// NYET [6:6]
/// Response received
NYET: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-4 interrupt
pub const OTG_HS_HCINT4 = MMIO(OTG_HS_HCINT4_val).init(base_address + 0x188);

/// OTG_HS_HCINT5
const OTG_HS_HCINT5_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// NYET [6:6]
/// Response received
NYET: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-5 interrupt
pub const OTG_HS_HCINT5 = MMIO(OTG_HS_HCINT5_val).init(base_address + 0x1a8);

/// OTG_HS_HCINT6
const OTG_HS_HCINT6_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// NYET [6:6]
/// Response received
NYET: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-6 interrupt
pub const OTG_HS_HCINT6 = MMIO(OTG_HS_HCINT6_val).init(base_address + 0x1c8);

/// OTG_HS_HCINT7
const OTG_HS_HCINT7_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// NYET [6:6]
/// Response received
NYET: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-7 interrupt
pub const OTG_HS_HCINT7 = MMIO(OTG_HS_HCINT7_val).init(base_address + 0x1e8);

/// OTG_HS_HCINT8
const OTG_HS_HCINT8_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// NYET [6:6]
/// Response received
NYET: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-8 interrupt
pub const OTG_HS_HCINT8 = MMIO(OTG_HS_HCINT8_val).init(base_address + 0x208);

/// OTG_HS_HCINT9
const OTG_HS_HCINT9_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// NYET [6:6]
/// Response received
NYET: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-9 interrupt
pub const OTG_HS_HCINT9 = MMIO(OTG_HS_HCINT9_val).init(base_address + 0x228);

/// OTG_HS_HCINT10
const OTG_HS_HCINT10_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// NYET [6:6]
/// Response received
NYET: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-10 interrupt
pub const OTG_HS_HCINT10 = MMIO(OTG_HS_HCINT10_val).init(base_address + 0x248);

/// OTG_HS_HCINT11
const OTG_HS_HCINT11_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// CHH [1:1]
/// Channel halted
CHH: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALL [3:3]
/// STALL response received
STALL: u1 = 0,
/// NAK [4:4]
/// NAK response received
NAK: u1 = 0,
/// ACK [5:5]
/// ACK response received/transmitted
ACK: u1 = 0,
/// NYET [6:6]
/// Response received
NYET: u1 = 0,
/// TXERR [7:7]
/// Transaction error
TXERR: u1 = 0,
/// BBERR [8:8]
/// Babble error
BBERR: u1 = 0,
/// FRMOR [9:9]
/// Frame overrun
FRMOR: u1 = 0,
/// DTERR [10:10]
/// Data toggle error
DTERR: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-11 interrupt
pub const OTG_HS_HCINT11 = MMIO(OTG_HS_HCINT11_val).init(base_address + 0x268);

/// OTG_HS_HCINTMSK0
const OTG_HS_HCINTMSK0_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-11 interrupt mask
pub const OTG_HS_HCINTMSK0 = MMIO(OTG_HS_HCINTMSK0_val).init(base_address + 0x10c);

/// OTG_HS_HCINTMSK1
const OTG_HS_HCINTMSK1_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-1 interrupt mask
pub const OTG_HS_HCINTMSK1 = MMIO(OTG_HS_HCINTMSK1_val).init(base_address + 0x12c);

/// OTG_HS_HCINTMSK2
const OTG_HS_HCINTMSK2_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-2 interrupt mask
pub const OTG_HS_HCINTMSK2 = MMIO(OTG_HS_HCINTMSK2_val).init(base_address + 0x14c);

/// OTG_HS_HCINTMSK3
const OTG_HS_HCINTMSK3_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-3 interrupt mask
pub const OTG_HS_HCINTMSK3 = MMIO(OTG_HS_HCINTMSK3_val).init(base_address + 0x16c);

/// OTG_HS_HCINTMSK4
const OTG_HS_HCINTMSK4_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-4 interrupt mask
pub const OTG_HS_HCINTMSK4 = MMIO(OTG_HS_HCINTMSK4_val).init(base_address + 0x18c);

/// OTG_HS_HCINTMSK5
const OTG_HS_HCINTMSK5_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-5 interrupt mask
pub const OTG_HS_HCINTMSK5 = MMIO(OTG_HS_HCINTMSK5_val).init(base_address + 0x1ac);

/// OTG_HS_HCINTMSK6
const OTG_HS_HCINTMSK6_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-6 interrupt mask
pub const OTG_HS_HCINTMSK6 = MMIO(OTG_HS_HCINTMSK6_val).init(base_address + 0x1cc);

/// OTG_HS_HCINTMSK7
const OTG_HS_HCINTMSK7_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-7 interrupt mask
pub const OTG_HS_HCINTMSK7 = MMIO(OTG_HS_HCINTMSK7_val).init(base_address + 0x1ec);

/// OTG_HS_HCINTMSK8
const OTG_HS_HCINTMSK8_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-8 interrupt mask
pub const OTG_HS_HCINTMSK8 = MMIO(OTG_HS_HCINTMSK8_val).init(base_address + 0x20c);

/// OTG_HS_HCINTMSK9
const OTG_HS_HCINTMSK9_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-9 interrupt mask
pub const OTG_HS_HCINTMSK9 = MMIO(OTG_HS_HCINTMSK9_val).init(base_address + 0x22c);

/// OTG_HS_HCINTMSK10
const OTG_HS_HCINTMSK10_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-10 interrupt mask
pub const OTG_HS_HCINTMSK10 = MMIO(OTG_HS_HCINTMSK10_val).init(base_address + 0x24c);

/// OTG_HS_HCINTMSK11
const OTG_HS_HCINTMSK11_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed mask
XFRCM: u1 = 0,
/// CHHM [1:1]
/// Channel halted mask
CHHM: u1 = 0,
/// AHBERR [2:2]
/// AHB error
AHBERR: u1 = 0,
/// STALLM [3:3]
/// STALL response received interrupt
STALLM: u1 = 0,
/// NAKM [4:4]
/// NAK response received interrupt
NAKM: u1 = 0,
/// ACKM [5:5]
/// ACK response received/transmitted
ACKM: u1 = 0,
/// NYET [6:6]
/// response received interrupt
NYET: u1 = 0,
/// TXERRM [7:7]
/// Transaction error mask
TXERRM: u1 = 0,
/// BBERRM [8:8]
/// Babble error mask
BBERRM: u1 = 0,
/// FRMORM [9:9]
/// Frame overrun mask
FRMORM: u1 = 0,
/// DTERRM [10:10]
/// Data toggle error mask
DTERRM: u1 = 0,
/// unused [11:31]
_unused11: u5 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS host channel-11 interrupt mask
pub const OTG_HS_HCINTMSK11 = MMIO(OTG_HS_HCINTMSK11_val).init(base_address + 0x26c);

/// OTG_HS_HCTSIZ0
const OTG_HS_HCTSIZ0_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS host channel-11 transfer size
pub const OTG_HS_HCTSIZ0 = MMIO(OTG_HS_HCTSIZ0_val).init(base_address + 0x110);

/// OTG_HS_HCTSIZ1
const OTG_HS_HCTSIZ1_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS host channel-1 transfer size
pub const OTG_HS_HCTSIZ1 = MMIO(OTG_HS_HCTSIZ1_val).init(base_address + 0x130);

/// OTG_HS_HCTSIZ2
const OTG_HS_HCTSIZ2_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS host channel-2 transfer size
pub const OTG_HS_HCTSIZ2 = MMIO(OTG_HS_HCTSIZ2_val).init(base_address + 0x150);

/// OTG_HS_HCTSIZ3
const OTG_HS_HCTSIZ3_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS host channel-3 transfer size
pub const OTG_HS_HCTSIZ3 = MMIO(OTG_HS_HCTSIZ3_val).init(base_address + 0x170);

/// OTG_HS_HCTSIZ4
const OTG_HS_HCTSIZ4_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS host channel-4 transfer size
pub const OTG_HS_HCTSIZ4 = MMIO(OTG_HS_HCTSIZ4_val).init(base_address + 0x190);

/// OTG_HS_HCTSIZ5
const OTG_HS_HCTSIZ5_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS host channel-5 transfer size
pub const OTG_HS_HCTSIZ5 = MMIO(OTG_HS_HCTSIZ5_val).init(base_address + 0x1b0);

/// OTG_HS_HCTSIZ6
const OTG_HS_HCTSIZ6_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS host channel-6 transfer size
pub const OTG_HS_HCTSIZ6 = MMIO(OTG_HS_HCTSIZ6_val).init(base_address + 0x1d0);

/// OTG_HS_HCTSIZ7
const OTG_HS_HCTSIZ7_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS host channel-7 transfer size
pub const OTG_HS_HCTSIZ7 = MMIO(OTG_HS_HCTSIZ7_val).init(base_address + 0x1f0);

/// OTG_HS_HCTSIZ8
const OTG_HS_HCTSIZ8_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS host channel-8 transfer size
pub const OTG_HS_HCTSIZ8 = MMIO(OTG_HS_HCTSIZ8_val).init(base_address + 0x210);

/// OTG_HS_HCTSIZ9
const OTG_HS_HCTSIZ9_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS host channel-9 transfer size
pub const OTG_HS_HCTSIZ9 = MMIO(OTG_HS_HCTSIZ9_val).init(base_address + 0x230);

/// OTG_HS_HCTSIZ10
const OTG_HS_HCTSIZ10_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS host channel-10 transfer size
pub const OTG_HS_HCTSIZ10 = MMIO(OTG_HS_HCTSIZ10_val).init(base_address + 0x250);

/// OTG_HS_HCTSIZ11
const OTG_HS_HCTSIZ11_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// DPID [29:30]
/// Data PID
DPID: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS host channel-11 transfer size
pub const OTG_HS_HCTSIZ11 = MMIO(OTG_HS_HCTSIZ11_val).init(base_address + 0x270);

/// OTG_HS_HCDMA0
const OTG_HS_HCDMA0_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS host channel-0 DMA address
pub const OTG_HS_HCDMA0 = MMIO(OTG_HS_HCDMA0_val).init(base_address + 0x114);

/// OTG_HS_HCDMA1
const OTG_HS_HCDMA1_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS host channel-1 DMA address
pub const OTG_HS_HCDMA1 = MMIO(OTG_HS_HCDMA1_val).init(base_address + 0x134);

/// OTG_HS_HCDMA2
const OTG_HS_HCDMA2_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS host channel-2 DMA address
pub const OTG_HS_HCDMA2 = MMIO(OTG_HS_HCDMA2_val).init(base_address + 0x154);

/// OTG_HS_HCDMA3
const OTG_HS_HCDMA3_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS host channel-3 DMA address
pub const OTG_HS_HCDMA3 = MMIO(OTG_HS_HCDMA3_val).init(base_address + 0x174);

/// OTG_HS_HCDMA4
const OTG_HS_HCDMA4_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS host channel-4 DMA address
pub const OTG_HS_HCDMA4 = MMIO(OTG_HS_HCDMA4_val).init(base_address + 0x194);

/// OTG_HS_HCDMA5
const OTG_HS_HCDMA5_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS host channel-5 DMA address
pub const OTG_HS_HCDMA5 = MMIO(OTG_HS_HCDMA5_val).init(base_address + 0x1b4);

/// OTG_HS_HCDMA6
const OTG_HS_HCDMA6_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS host channel-6 DMA address
pub const OTG_HS_HCDMA6 = MMIO(OTG_HS_HCDMA6_val).init(base_address + 0x1d4);

/// OTG_HS_HCDMA7
const OTG_HS_HCDMA7_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS host channel-7 DMA address
pub const OTG_HS_HCDMA7 = MMIO(OTG_HS_HCDMA7_val).init(base_address + 0x1f4);

/// OTG_HS_HCDMA8
const OTG_HS_HCDMA8_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS host channel-8 DMA address
pub const OTG_HS_HCDMA8 = MMIO(OTG_HS_HCDMA8_val).init(base_address + 0x214);

/// OTG_HS_HCDMA9
const OTG_HS_HCDMA9_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS host channel-9 DMA address
pub const OTG_HS_HCDMA9 = MMIO(OTG_HS_HCDMA9_val).init(base_address + 0x234);

/// OTG_HS_HCDMA10
const OTG_HS_HCDMA10_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS host channel-10 DMA address
pub const OTG_HS_HCDMA10 = MMIO(OTG_HS_HCDMA10_val).init(base_address + 0x254);

/// OTG_HS_HCDMA11
const OTG_HS_HCDMA11_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS host channel-11 DMA address
pub const OTG_HS_HCDMA11 = MMIO(OTG_HS_HCDMA11_val).init(base_address + 0x274);
};

/// USB on the go high speed
pub const OTG_HS_DEVICE = struct {

const base_address = 0x40040800;
/// OTG_HS_DCFG
const OTG_HS_DCFG_val = packed struct {
/// DSPD [0:1]
/// Device speed
DSPD: u2 = 0,
/// NZLSOHSK [2:2]
/// Nonzero-length status OUT
NZLSOHSK: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// DAD [4:10]
/// Device address
DAD: u7 = 0,
/// PFIVL [11:12]
/// Periodic (micro)frame
PFIVL: u2 = 0,
/// unused [13:23]
_unused13: u3 = 0,
_unused16: u8 = 32,
/// PERSCHIVL [24:25]
/// Periodic scheduling
PERSCHIVL: u2 = 2,
/// unused [26:31]
_unused26: u6 = 0,
};
/// OTG_HS device configuration
pub const OTG_HS_DCFG = MMIO(OTG_HS_DCFG_val).init(base_address + 0x0);

/// OTG_HS_DCTL
const OTG_HS_DCTL_val = packed struct {
/// RWUSIG [0:0]
/// Remote wakeup signaling
RWUSIG: u1 = 0,
/// SDIS [1:1]
/// Soft disconnect
SDIS: u1 = 0,
/// GINSTS [2:2]
/// Global IN NAK status
GINSTS: u1 = 0,
/// GONSTS [3:3]
/// Global OUT NAK status
GONSTS: u1 = 0,
/// TCTL [4:6]
/// Test control
TCTL: u3 = 0,
/// SGINAK [7:7]
/// Set global IN NAK
SGINAK: u1 = 0,
/// CGINAK [8:8]
/// Clear global IN NAK
CGINAK: u1 = 0,
/// SGONAK [9:9]
/// Set global OUT NAK
SGONAK: u1 = 0,
/// CGONAK [10:10]
/// Clear global OUT NAK
CGONAK: u1 = 0,
/// POPRGDNE [11:11]
/// Power-on programming done
POPRGDNE: u1 = 0,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device control register
pub const OTG_HS_DCTL = MMIO(OTG_HS_DCTL_val).init(base_address + 0x4);

/// OTG_HS_DSTS
const OTG_HS_DSTS_val = packed struct {
/// SUSPSTS [0:0]
/// Suspend status
SUSPSTS: u1 = 0,
/// ENUMSPD [1:2]
/// Enumerated speed
ENUMSPD: u2 = 0,
/// EERR [3:3]
/// Erratic error
EERR: u1 = 0,
/// unused [4:7]
_unused4: u4 = 1,
/// FNSOF [8:21]
/// Frame number of the received
FNSOF: u14 = 0,
/// unused [22:31]
_unused22: u2 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device status register
pub const OTG_HS_DSTS = MMIO(OTG_HS_DSTS_val).init(base_address + 0x8);

/// OTG_HS_DIEPMSK
const OTG_HS_DIEPMSK_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed interrupt
XFRCM: u1 = 0,
/// EPDM [1:1]
/// Endpoint disabled interrupt
EPDM: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOM [3:3]
/// Timeout condition mask (nonisochronous
TOM: u1 = 0,
/// ITTXFEMSK [4:4]
/// IN token received when TxFIFO empty
ITTXFEMSK: u1 = 0,
/// INEPNMM [5:5]
/// IN token received with EP mismatch
INEPNMM: u1 = 0,
/// INEPNEM [6:6]
/// IN endpoint NAK effective
INEPNEM: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// TXFURM [8:8]
/// FIFO underrun mask
TXFURM: u1 = 0,
/// BIM [9:9]
/// BNA interrupt mask
BIM: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device IN endpoint common interrupt
pub const OTG_HS_DIEPMSK = MMIO(OTG_HS_DIEPMSK_val).init(base_address + 0x10);

/// OTG_HS_DOEPMSK
const OTG_HS_DOEPMSK_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed interrupt
XFRCM: u1 = 0,
/// EPDM [1:1]
/// Endpoint disabled interrupt
EPDM: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STUPM [3:3]
/// SETUP phase done mask
STUPM: u1 = 0,
/// OTEPDM [4:4]
/// OUT token received when endpoint
OTEPDM: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// B2BSTUP [6:6]
/// Back-to-back SETUP packets received
B2BSTUP: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// OPEM [8:8]
/// OUT packet error mask
OPEM: u1 = 0,
/// BOIM [9:9]
/// BNA interrupt mask
BOIM: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device OUT endpoint common interrupt
pub const OTG_HS_DOEPMSK = MMIO(OTG_HS_DOEPMSK_val).init(base_address + 0x14);

/// OTG_HS_DAINT
const OTG_HS_DAINT_val = packed struct {
/// IEPINT [0:15]
/// IN endpoint interrupt bits
IEPINT: u16 = 0,
/// OEPINT [16:31]
/// OUT endpoint interrupt
OEPINT: u16 = 0,
};
/// OTG_HS device all endpoints interrupt
pub const OTG_HS_DAINT = MMIO(OTG_HS_DAINT_val).init(base_address + 0x18);

/// OTG_HS_DAINTMSK
const OTG_HS_DAINTMSK_val = packed struct {
/// IEPM [0:15]
/// IN EP interrupt mask bits
IEPM: u16 = 0,
/// OEPM [16:31]
/// OUT EP interrupt mask bits
OEPM: u16 = 0,
};
/// OTG_HS all endpoints interrupt mask
pub const OTG_HS_DAINTMSK = MMIO(OTG_HS_DAINTMSK_val).init(base_address + 0x1c);

/// OTG_HS_DVBUSDIS
const OTG_HS_DVBUSDIS_val = packed struct {
/// VBUSDT [0:15]
/// Device VBUS discharge time
VBUSDT: u16 = 6103,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device VBUS discharge time
pub const OTG_HS_DVBUSDIS = MMIO(OTG_HS_DVBUSDIS_val).init(base_address + 0x28);

/// OTG_HS_DVBUSPULSE
const OTG_HS_DVBUSPULSE_val = packed struct {
/// DVBUSP [0:11]
/// Device VBUS pulsing time
DVBUSP: u12 = 1464,
/// unused [12:31]
_unused12: u4 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device VBUS pulsing time
pub const OTG_HS_DVBUSPULSE = MMIO(OTG_HS_DVBUSPULSE_val).init(base_address + 0x2c);

/// OTG_HS_DTHRCTL
const OTG_HS_DTHRCTL_val = packed struct {
/// NONISOTHREN [0:0]
/// Nonisochronous IN endpoints threshold
NONISOTHREN: u1 = 0,
/// ISOTHREN [1:1]
/// ISO IN endpoint threshold
ISOTHREN: u1 = 0,
/// TXTHRLEN [2:10]
/// Transmit threshold length
TXTHRLEN: u9 = 0,
/// unused [11:15]
_unused11: u5 = 0,
/// RXTHREN [16:16]
/// Receive threshold enable
RXTHREN: u1 = 0,
/// RXTHRLEN [17:25]
/// Receive threshold length
RXTHRLEN: u9 = 0,
/// unused [26:26]
_unused26: u1 = 0,
/// ARPEN [27:27]
/// Arbiter parking enable
ARPEN: u1 = 0,
/// unused [28:31]
_unused28: u4 = 0,
};
/// OTG_HS Device threshold control
pub const OTG_HS_DTHRCTL = MMIO(OTG_HS_DTHRCTL_val).init(base_address + 0x30);

/// OTG_HS_DIEPEMPMSK
const OTG_HS_DIEPEMPMSK_val = packed struct {
/// INEPTXFEM [0:15]
/// IN EP Tx FIFO empty interrupt mask
INEPTXFEM: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device IN endpoint FIFO empty
pub const OTG_HS_DIEPEMPMSK = MMIO(OTG_HS_DIEPEMPMSK_val).init(base_address + 0x34);

/// OTG_HS_DEACHINT
const OTG_HS_DEACHINT_val = packed struct {
/// unused [0:0]
_unused0: u1 = 0,
/// IEP1INT [1:1]
/// IN endpoint 1interrupt bit
IEP1INT: u1 = 0,
/// unused [2:16]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u1 = 0,
/// OEP1INT [17:17]
/// OUT endpoint 1 interrupt
OEP1INT: u1 = 0,
/// unused [18:31]
_unused18: u6 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device each endpoint interrupt
pub const OTG_HS_DEACHINT = MMIO(OTG_HS_DEACHINT_val).init(base_address + 0x38);

/// OTG_HS_DEACHINTMSK
const OTG_HS_DEACHINTMSK_val = packed struct {
/// unused [0:0]
_unused0: u1 = 0,
/// IEP1INTM [1:1]
/// IN Endpoint 1 interrupt mask
IEP1INTM: u1 = 0,
/// unused [2:16]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u1 = 0,
/// OEP1INTM [17:17]
/// OUT Endpoint 1 interrupt mask
OEP1INTM: u1 = 0,
/// unused [18:31]
_unused18: u6 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device each endpoint interrupt
pub const OTG_HS_DEACHINTMSK = MMIO(OTG_HS_DEACHINTMSK_val).init(base_address + 0x3c);

/// OTG_HS_DIEPEACHMSK1
const OTG_HS_DIEPEACHMSK1_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed interrupt
XFRCM: u1 = 0,
/// EPDM [1:1]
/// Endpoint disabled interrupt
EPDM: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOM [3:3]
/// Timeout condition mask (nonisochronous
TOM: u1 = 0,
/// ITTXFEMSK [4:4]
/// IN token received when TxFIFO empty
ITTXFEMSK: u1 = 0,
/// INEPNMM [5:5]
/// IN token received with EP mismatch
INEPNMM: u1 = 0,
/// INEPNEM [6:6]
/// IN endpoint NAK effective
INEPNEM: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// TXFURM [8:8]
/// FIFO underrun mask
TXFURM: u1 = 0,
/// BIM [9:9]
/// BNA interrupt mask
BIM: u1 = 0,
/// unused [10:12]
_unused10: u3 = 0,
/// NAKM [13:13]
/// NAK interrupt mask
NAKM: u1 = 0,
/// unused [14:31]
_unused14: u2 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device each in endpoint-1 interrupt
pub const OTG_HS_DIEPEACHMSK1 = MMIO(OTG_HS_DIEPEACHMSK1_val).init(base_address + 0x40);

/// OTG_HS_DOEPEACHMSK1
const OTG_HS_DOEPEACHMSK1_val = packed struct {
/// XFRCM [0:0]
/// Transfer completed interrupt
XFRCM: u1 = 0,
/// EPDM [1:1]
/// Endpoint disabled interrupt
EPDM: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOM [3:3]
/// Timeout condition mask
TOM: u1 = 0,
/// ITTXFEMSK [4:4]
/// IN token received when TxFIFO empty
ITTXFEMSK: u1 = 0,
/// INEPNMM [5:5]
/// IN token received with EP mismatch
INEPNMM: u1 = 0,
/// INEPNEM [6:6]
/// IN endpoint NAK effective
INEPNEM: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// TXFURM [8:8]
/// OUT packet error mask
TXFURM: u1 = 0,
/// BIM [9:9]
/// BNA interrupt mask
BIM: u1 = 0,
/// unused [10:11]
_unused10: u2 = 0,
/// BERRM [12:12]
/// Bubble error interrupt
BERRM: u1 = 0,
/// NAKM [13:13]
/// NAK interrupt mask
NAKM: u1 = 0,
/// NYETM [14:14]
/// NYET interrupt mask
NYETM: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device each OUT endpoint-1 interrupt
pub const OTG_HS_DOEPEACHMSK1 = MMIO(OTG_HS_DOEPEACHMSK1_val).init(base_address + 0x80);

/// OTG_HS_DIEPCTL0
const OTG_HS_DIEPCTL0_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USB active endpoint
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// Even/odd frame
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAK status
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// unused [20:20]
_unused20: u1 = 0,
/// Stall [21:21]
/// STALL handshake
Stall: u1 = 0,
/// TXFNUM [22:25]
/// TxFIFO number
TXFNUM: u4 = 0,
/// CNAK [26:26]
/// Clear NAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// Set NAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// Set DATA0 PID
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// Set odd frame
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// Endpoint disable
EPDIS: u1 = 0,
/// EPENA [31:31]
/// Endpoint enable
EPENA: u1 = 0,
};
/// OTG device endpoint-0 control
pub const OTG_HS_DIEPCTL0 = MMIO(OTG_HS_DIEPCTL0_val).init(base_address + 0x100);

/// OTG_HS_DIEPCTL1
const OTG_HS_DIEPCTL1_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USB active endpoint
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// Even/odd frame
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAK status
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// unused [20:20]
_unused20: u1 = 0,
/// Stall [21:21]
/// STALL handshake
Stall: u1 = 0,
/// TXFNUM [22:25]
/// TxFIFO number
TXFNUM: u4 = 0,
/// CNAK [26:26]
/// Clear NAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// Set NAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// Set DATA0 PID
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// Set odd frame
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// Endpoint disable
EPDIS: u1 = 0,
/// EPENA [31:31]
/// Endpoint enable
EPENA: u1 = 0,
};
/// OTG device endpoint-1 control
pub const OTG_HS_DIEPCTL1 = MMIO(OTG_HS_DIEPCTL1_val).init(base_address + 0x120);

/// OTG_HS_DIEPCTL2
const OTG_HS_DIEPCTL2_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USB active endpoint
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// Even/odd frame
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAK status
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// unused [20:20]
_unused20: u1 = 0,
/// Stall [21:21]
/// STALL handshake
Stall: u1 = 0,
/// TXFNUM [22:25]
/// TxFIFO number
TXFNUM: u4 = 0,
/// CNAK [26:26]
/// Clear NAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// Set NAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// Set DATA0 PID
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// Set odd frame
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// Endpoint disable
EPDIS: u1 = 0,
/// EPENA [31:31]
/// Endpoint enable
EPENA: u1 = 0,
};
/// OTG device endpoint-2 control
pub const OTG_HS_DIEPCTL2 = MMIO(OTG_HS_DIEPCTL2_val).init(base_address + 0x140);

/// OTG_HS_DIEPCTL3
const OTG_HS_DIEPCTL3_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USB active endpoint
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// Even/odd frame
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAK status
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// unused [20:20]
_unused20: u1 = 0,
/// Stall [21:21]
/// STALL handshake
Stall: u1 = 0,
/// TXFNUM [22:25]
/// TxFIFO number
TXFNUM: u4 = 0,
/// CNAK [26:26]
/// Clear NAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// Set NAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// Set DATA0 PID
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// Set odd frame
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// Endpoint disable
EPDIS: u1 = 0,
/// EPENA [31:31]
/// Endpoint enable
EPENA: u1 = 0,
};
/// OTG device endpoint-3 control
pub const OTG_HS_DIEPCTL3 = MMIO(OTG_HS_DIEPCTL3_val).init(base_address + 0x160);

/// OTG_HS_DIEPCTL4
const OTG_HS_DIEPCTL4_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USB active endpoint
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// Even/odd frame
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAK status
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// unused [20:20]
_unused20: u1 = 0,
/// Stall [21:21]
/// STALL handshake
Stall: u1 = 0,
/// TXFNUM [22:25]
/// TxFIFO number
TXFNUM: u4 = 0,
/// CNAK [26:26]
/// Clear NAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// Set NAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// Set DATA0 PID
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// Set odd frame
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// Endpoint disable
EPDIS: u1 = 0,
/// EPENA [31:31]
/// Endpoint enable
EPENA: u1 = 0,
};
/// OTG device endpoint-4 control
pub const OTG_HS_DIEPCTL4 = MMIO(OTG_HS_DIEPCTL4_val).init(base_address + 0x180);

/// OTG_HS_DIEPCTL5
const OTG_HS_DIEPCTL5_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USB active endpoint
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// Even/odd frame
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAK status
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// unused [20:20]
_unused20: u1 = 0,
/// Stall [21:21]
/// STALL handshake
Stall: u1 = 0,
/// TXFNUM [22:25]
/// TxFIFO number
TXFNUM: u4 = 0,
/// CNAK [26:26]
/// Clear NAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// Set NAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// Set DATA0 PID
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// Set odd frame
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// Endpoint disable
EPDIS: u1 = 0,
/// EPENA [31:31]
/// Endpoint enable
EPENA: u1 = 0,
};
/// OTG device endpoint-5 control
pub const OTG_HS_DIEPCTL5 = MMIO(OTG_HS_DIEPCTL5_val).init(base_address + 0x1a0);

/// OTG_HS_DIEPCTL6
const OTG_HS_DIEPCTL6_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USB active endpoint
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// Even/odd frame
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAK status
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// unused [20:20]
_unused20: u1 = 0,
/// Stall [21:21]
/// STALL handshake
Stall: u1 = 0,
/// TXFNUM [22:25]
/// TxFIFO number
TXFNUM: u4 = 0,
/// CNAK [26:26]
/// Clear NAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// Set NAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// Set DATA0 PID
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// Set odd frame
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// Endpoint disable
EPDIS: u1 = 0,
/// EPENA [31:31]
/// Endpoint enable
EPENA: u1 = 0,
};
/// OTG device endpoint-6 control
pub const OTG_HS_DIEPCTL6 = MMIO(OTG_HS_DIEPCTL6_val).init(base_address + 0x1c0);

/// OTG_HS_DIEPCTL7
const OTG_HS_DIEPCTL7_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USB active endpoint
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// Even/odd frame
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAK status
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// unused [20:20]
_unused20: u1 = 0,
/// Stall [21:21]
/// STALL handshake
Stall: u1 = 0,
/// TXFNUM [22:25]
/// TxFIFO number
TXFNUM: u4 = 0,
/// CNAK [26:26]
/// Clear NAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// Set NAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// Set DATA0 PID
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// Set odd frame
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// Endpoint disable
EPDIS: u1 = 0,
/// EPENA [31:31]
/// Endpoint enable
EPENA: u1 = 0,
};
/// OTG device endpoint-7 control
pub const OTG_HS_DIEPCTL7 = MMIO(OTG_HS_DIEPCTL7_val).init(base_address + 0x1e0);

/// OTG_HS_DIEPINT0
const OTG_HS_DIEPINT0_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOC [3:3]
/// Timeout condition
TOC: u1 = 0,
/// ITTXFE [4:4]
/// IN token received when TxFIFO is
ITTXFE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// INEPNE [6:6]
/// IN endpoint NAK effective
INEPNE: u1 = 0,
/// TXFE [7:7]
/// Transmit FIFO empty
TXFE: u1 = 1,
/// TXFIFOUDRN [8:8]
/// Transmit Fifo Underrun
TXFIFOUDRN: u1 = 0,
/// BNA [9:9]
/// Buffer not available
BNA: u1 = 0,
/// unused [10:10]
_unused10: u1 = 0,
/// PKTDRPSTS [11:11]
/// Packet dropped status
PKTDRPSTS: u1 = 0,
/// BERR [12:12]
/// Babble error interrupt
BERR: u1 = 0,
/// NAK [13:13]
/// NAK interrupt
NAK: u1 = 0,
/// unused [14:31]
_unused14: u2 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG device endpoint-0 interrupt
pub const OTG_HS_DIEPINT0 = MMIO(OTG_HS_DIEPINT0_val).init(base_address + 0x108);

/// OTG_HS_DIEPINT1
const OTG_HS_DIEPINT1_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOC [3:3]
/// Timeout condition
TOC: u1 = 0,
/// ITTXFE [4:4]
/// IN token received when TxFIFO is
ITTXFE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// INEPNE [6:6]
/// IN endpoint NAK effective
INEPNE: u1 = 0,
/// TXFE [7:7]
/// Transmit FIFO empty
TXFE: u1 = 0,
/// TXFIFOUDRN [8:8]
/// Transmit Fifo Underrun
TXFIFOUDRN: u1 = 0,
/// BNA [9:9]
/// Buffer not available
BNA: u1 = 0,
/// unused [10:10]
_unused10: u1 = 0,
/// PKTDRPSTS [11:11]
/// Packet dropped status
PKTDRPSTS: u1 = 0,
/// BERR [12:12]
/// Babble error interrupt
BERR: u1 = 0,
/// NAK [13:13]
/// NAK interrupt
NAK: u1 = 0,
/// unused [14:31]
_unused14: u2 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG device endpoint-1 interrupt
pub const OTG_HS_DIEPINT1 = MMIO(OTG_HS_DIEPINT1_val).init(base_address + 0x128);

/// OTG_HS_DIEPINT2
const OTG_HS_DIEPINT2_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOC [3:3]
/// Timeout condition
TOC: u1 = 0,
/// ITTXFE [4:4]
/// IN token received when TxFIFO is
ITTXFE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// INEPNE [6:6]
/// IN endpoint NAK effective
INEPNE: u1 = 0,
/// TXFE [7:7]
/// Transmit FIFO empty
TXFE: u1 = 0,
/// TXFIFOUDRN [8:8]
/// Transmit Fifo Underrun
TXFIFOUDRN: u1 = 0,
/// BNA [9:9]
/// Buffer not available
BNA: u1 = 0,
/// unused [10:10]
_unused10: u1 = 0,
/// PKTDRPSTS [11:11]
/// Packet dropped status
PKTDRPSTS: u1 = 0,
/// BERR [12:12]
/// Babble error interrupt
BERR: u1 = 0,
/// NAK [13:13]
/// NAK interrupt
NAK: u1 = 0,
/// unused [14:31]
_unused14: u2 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG device endpoint-2 interrupt
pub const OTG_HS_DIEPINT2 = MMIO(OTG_HS_DIEPINT2_val).init(base_address + 0x148);

/// OTG_HS_DIEPINT3
const OTG_HS_DIEPINT3_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOC [3:3]
/// Timeout condition
TOC: u1 = 0,
/// ITTXFE [4:4]
/// IN token received when TxFIFO is
ITTXFE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// INEPNE [6:6]
/// IN endpoint NAK effective
INEPNE: u1 = 0,
/// TXFE [7:7]
/// Transmit FIFO empty
TXFE: u1 = 0,
/// TXFIFOUDRN [8:8]
/// Transmit Fifo Underrun
TXFIFOUDRN: u1 = 0,
/// BNA [9:9]
/// Buffer not available
BNA: u1 = 0,
/// unused [10:10]
_unused10: u1 = 0,
/// PKTDRPSTS [11:11]
/// Packet dropped status
PKTDRPSTS: u1 = 0,
/// BERR [12:12]
/// Babble error interrupt
BERR: u1 = 0,
/// NAK [13:13]
/// NAK interrupt
NAK: u1 = 0,
/// unused [14:31]
_unused14: u2 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG device endpoint-3 interrupt
pub const OTG_HS_DIEPINT3 = MMIO(OTG_HS_DIEPINT3_val).init(base_address + 0x168);

/// OTG_HS_DIEPINT4
const OTG_HS_DIEPINT4_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOC [3:3]
/// Timeout condition
TOC: u1 = 0,
/// ITTXFE [4:4]
/// IN token received when TxFIFO is
ITTXFE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// INEPNE [6:6]
/// IN endpoint NAK effective
INEPNE: u1 = 0,
/// TXFE [7:7]
/// Transmit FIFO empty
TXFE: u1 = 0,
/// TXFIFOUDRN [8:8]
/// Transmit Fifo Underrun
TXFIFOUDRN: u1 = 0,
/// BNA [9:9]
/// Buffer not available
BNA: u1 = 0,
/// unused [10:10]
_unused10: u1 = 0,
/// PKTDRPSTS [11:11]
/// Packet dropped status
PKTDRPSTS: u1 = 0,
/// BERR [12:12]
/// Babble error interrupt
BERR: u1 = 0,
/// NAK [13:13]
/// NAK interrupt
NAK: u1 = 0,
/// unused [14:31]
_unused14: u2 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG device endpoint-4 interrupt
pub const OTG_HS_DIEPINT4 = MMIO(OTG_HS_DIEPINT4_val).init(base_address + 0x188);

/// OTG_HS_DIEPINT5
const OTG_HS_DIEPINT5_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOC [3:3]
/// Timeout condition
TOC: u1 = 0,
/// ITTXFE [4:4]
/// IN token received when TxFIFO is
ITTXFE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// INEPNE [6:6]
/// IN endpoint NAK effective
INEPNE: u1 = 0,
/// TXFE [7:7]
/// Transmit FIFO empty
TXFE: u1 = 0,
/// TXFIFOUDRN [8:8]
/// Transmit Fifo Underrun
TXFIFOUDRN: u1 = 0,
/// BNA [9:9]
/// Buffer not available
BNA: u1 = 0,
/// unused [10:10]
_unused10: u1 = 0,
/// PKTDRPSTS [11:11]
/// Packet dropped status
PKTDRPSTS: u1 = 0,
/// BERR [12:12]
/// Babble error interrupt
BERR: u1 = 0,
/// NAK [13:13]
/// NAK interrupt
NAK: u1 = 0,
/// unused [14:31]
_unused14: u2 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG device endpoint-5 interrupt
pub const OTG_HS_DIEPINT5 = MMIO(OTG_HS_DIEPINT5_val).init(base_address + 0x1a8);

/// OTG_HS_DIEPINT6
const OTG_HS_DIEPINT6_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOC [3:3]
/// Timeout condition
TOC: u1 = 0,
/// ITTXFE [4:4]
/// IN token received when TxFIFO is
ITTXFE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// INEPNE [6:6]
/// IN endpoint NAK effective
INEPNE: u1 = 0,
/// TXFE [7:7]
/// Transmit FIFO empty
TXFE: u1 = 0,
/// TXFIFOUDRN [8:8]
/// Transmit Fifo Underrun
TXFIFOUDRN: u1 = 0,
/// BNA [9:9]
/// Buffer not available
BNA: u1 = 0,
/// unused [10:10]
_unused10: u1 = 0,
/// PKTDRPSTS [11:11]
/// Packet dropped status
PKTDRPSTS: u1 = 0,
/// BERR [12:12]
/// Babble error interrupt
BERR: u1 = 0,
/// NAK [13:13]
/// NAK interrupt
NAK: u1 = 0,
/// unused [14:31]
_unused14: u2 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG device endpoint-6 interrupt
pub const OTG_HS_DIEPINT6 = MMIO(OTG_HS_DIEPINT6_val).init(base_address + 0x1c8);

/// OTG_HS_DIEPINT7
const OTG_HS_DIEPINT7_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// TOC [3:3]
/// Timeout condition
TOC: u1 = 0,
/// ITTXFE [4:4]
/// IN token received when TxFIFO is
ITTXFE: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// INEPNE [6:6]
/// IN endpoint NAK effective
INEPNE: u1 = 0,
/// TXFE [7:7]
/// Transmit FIFO empty
TXFE: u1 = 0,
/// TXFIFOUDRN [8:8]
/// Transmit Fifo Underrun
TXFIFOUDRN: u1 = 0,
/// BNA [9:9]
/// Buffer not available
BNA: u1 = 0,
/// unused [10:10]
_unused10: u1 = 0,
/// PKTDRPSTS [11:11]
/// Packet dropped status
PKTDRPSTS: u1 = 0,
/// BERR [12:12]
/// Babble error interrupt
BERR: u1 = 0,
/// NAK [13:13]
/// NAK interrupt
NAK: u1 = 0,
/// unused [14:31]
_unused14: u2 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG device endpoint-7 interrupt
pub const OTG_HS_DIEPINT7 = MMIO(OTG_HS_DIEPINT7_val).init(base_address + 0x1e8);

/// OTG_HS_DIEPTSIZ0
const OTG_HS_DIEPTSIZ0_val = packed struct {
/// XFRSIZ [0:6]
/// Transfer size
XFRSIZ: u7 = 0,
/// unused [7:18]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u3 = 0,
/// PKTCNT [19:20]
/// Packet count
PKTCNT: u2 = 0,
/// unused [21:31]
_unused21: u3 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device IN endpoint 0 transfer size
pub const OTG_HS_DIEPTSIZ0 = MMIO(OTG_HS_DIEPTSIZ0_val).init(base_address + 0x110);

/// OTG_HS_DIEPDMA1
const OTG_HS_DIEPDMA1_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS device endpoint-1 DMA address
pub const OTG_HS_DIEPDMA1 = MMIO(OTG_HS_DIEPDMA1_val).init(base_address + 0x114);

/// OTG_HS_DIEPDMA2
const OTG_HS_DIEPDMA2_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS device endpoint-2 DMA address
pub const OTG_HS_DIEPDMA2 = MMIO(OTG_HS_DIEPDMA2_val).init(base_address + 0x134);

/// OTG_HS_DIEPDMA3
const OTG_HS_DIEPDMA3_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS device endpoint-3 DMA address
pub const OTG_HS_DIEPDMA3 = MMIO(OTG_HS_DIEPDMA3_val).init(base_address + 0x154);

/// OTG_HS_DIEPDMA4
const OTG_HS_DIEPDMA4_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS device endpoint-4 DMA address
pub const OTG_HS_DIEPDMA4 = MMIO(OTG_HS_DIEPDMA4_val).init(base_address + 0x174);

/// OTG_HS_DIEPDMA5
const OTG_HS_DIEPDMA5_val = packed struct {
/// DMAADDR [0:31]
/// DMA address
DMAADDR: u32 = 0,
};
/// OTG_HS device endpoint-5 DMA address
pub const OTG_HS_DIEPDMA5 = MMIO(OTG_HS_DIEPDMA5_val).init(base_address + 0x194);

/// OTG_HS_DTXFSTS0
const OTG_HS_DTXFSTS0_val = packed struct {
/// INEPTFSAV [0:15]
/// IN endpoint TxFIFO space
INEPTFSAV: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device IN endpoint transmit FIFO
pub const OTG_HS_DTXFSTS0 = MMIO(OTG_HS_DTXFSTS0_val).init(base_address + 0x118);

/// OTG_HS_DTXFSTS1
const OTG_HS_DTXFSTS1_val = packed struct {
/// INEPTFSAV [0:15]
/// IN endpoint TxFIFO space
INEPTFSAV: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device IN endpoint transmit FIFO
pub const OTG_HS_DTXFSTS1 = MMIO(OTG_HS_DTXFSTS1_val).init(base_address + 0x138);

/// OTG_HS_DTXFSTS2
const OTG_HS_DTXFSTS2_val = packed struct {
/// INEPTFSAV [0:15]
/// IN endpoint TxFIFO space
INEPTFSAV: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device IN endpoint transmit FIFO
pub const OTG_HS_DTXFSTS2 = MMIO(OTG_HS_DTXFSTS2_val).init(base_address + 0x158);

/// OTG_HS_DTXFSTS3
const OTG_HS_DTXFSTS3_val = packed struct {
/// INEPTFSAV [0:15]
/// IN endpoint TxFIFO space
INEPTFSAV: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device IN endpoint transmit FIFO
pub const OTG_HS_DTXFSTS3 = MMIO(OTG_HS_DTXFSTS3_val).init(base_address + 0x178);

/// OTG_HS_DTXFSTS4
const OTG_HS_DTXFSTS4_val = packed struct {
/// INEPTFSAV [0:15]
/// IN endpoint TxFIFO space
INEPTFSAV: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device IN endpoint transmit FIFO
pub const OTG_HS_DTXFSTS4 = MMIO(OTG_HS_DTXFSTS4_val).init(base_address + 0x198);

/// OTG_HS_DTXFSTS5
const OTG_HS_DTXFSTS5_val = packed struct {
/// INEPTFSAV [0:15]
/// IN endpoint TxFIFO space
INEPTFSAV: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device IN endpoint transmit FIFO
pub const OTG_HS_DTXFSTS5 = MMIO(OTG_HS_DTXFSTS5_val).init(base_address + 0x1b8);

/// OTG_HS_DIEPTSIZ1
const OTG_HS_DIEPTSIZ1_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// MCNT [29:30]
/// Multi count
MCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS device endpoint transfer size
pub const OTG_HS_DIEPTSIZ1 = MMIO(OTG_HS_DIEPTSIZ1_val).init(base_address + 0x130);

/// OTG_HS_DIEPTSIZ2
const OTG_HS_DIEPTSIZ2_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// MCNT [29:30]
/// Multi count
MCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS device endpoint transfer size
pub const OTG_HS_DIEPTSIZ2 = MMIO(OTG_HS_DIEPTSIZ2_val).init(base_address + 0x150);

/// OTG_HS_DIEPTSIZ3
const OTG_HS_DIEPTSIZ3_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// MCNT [29:30]
/// Multi count
MCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS device endpoint transfer size
pub const OTG_HS_DIEPTSIZ3 = MMIO(OTG_HS_DIEPTSIZ3_val).init(base_address + 0x170);

/// OTG_HS_DIEPTSIZ4
const OTG_HS_DIEPTSIZ4_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// MCNT [29:30]
/// Multi count
MCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS device endpoint transfer size
pub const OTG_HS_DIEPTSIZ4 = MMIO(OTG_HS_DIEPTSIZ4_val).init(base_address + 0x190);

/// OTG_HS_DIEPTSIZ5
const OTG_HS_DIEPTSIZ5_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// MCNT [29:30]
/// Multi count
MCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS device endpoint transfer size
pub const OTG_HS_DIEPTSIZ5 = MMIO(OTG_HS_DIEPTSIZ5_val).init(base_address + 0x1b0);

/// OTG_HS_DOEPCTL0
const OTG_HS_DOEPCTL0_val = packed struct {
/// MPSIZ [0:1]
/// Maximum packet size
MPSIZ: u2 = 0,
/// unused [2:14]
_unused2: u6 = 0,
_unused8: u7 = 0,
/// USBAEP [15:15]
/// USB active endpoint
USBAEP: u1 = 1,
/// unused [16:16]
_unused16: u1 = 0,
/// NAKSTS [17:17]
/// NAK status
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// SNPM [20:20]
/// Snoop mode
SNPM: u1 = 0,
/// Stall [21:21]
/// STALL handshake
Stall: u1 = 0,
/// unused [22:25]
_unused22: u2 = 0,
_unused24: u2 = 0,
/// CNAK [26:26]
/// Clear NAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// Set NAK
SNAK: u1 = 0,
/// unused [28:29]
_unused28: u2 = 0,
/// EPDIS [30:30]
/// Endpoint disable
EPDIS: u1 = 0,
/// EPENA [31:31]
/// Endpoint enable
EPENA: u1 = 0,
};
/// OTG_HS device control OUT endpoint 0 control
pub const OTG_HS_DOEPCTL0 = MMIO(OTG_HS_DOEPCTL0_val).init(base_address + 0x300);

/// OTG_HS_DOEPCTL1
const OTG_HS_DOEPCTL1_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USB active endpoint
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// Even odd frame/Endpoint data
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAK status
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// SNPM [20:20]
/// Snoop mode
SNPM: u1 = 0,
/// Stall [21:21]
/// STALL handshake
Stall: u1 = 0,
/// unused [22:25]
_unused22: u2 = 0,
_unused24: u2 = 0,
/// CNAK [26:26]
/// Clear NAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// Set NAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// Set DATA0 PID/Set even
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// Set odd frame
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// Endpoint disable
EPDIS: u1 = 0,
/// EPENA [31:31]
/// Endpoint enable
EPENA: u1 = 0,
};
/// OTG device endpoint-1 control
pub const OTG_HS_DOEPCTL1 = MMIO(OTG_HS_DOEPCTL1_val).init(base_address + 0x320);

/// OTG_HS_DOEPCTL2
const OTG_HS_DOEPCTL2_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USB active endpoint
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// Even odd frame/Endpoint data
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAK status
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// SNPM [20:20]
/// Snoop mode
SNPM: u1 = 0,
/// Stall [21:21]
/// STALL handshake
Stall: u1 = 0,
/// unused [22:25]
_unused22: u2 = 0,
_unused24: u2 = 0,
/// CNAK [26:26]
/// Clear NAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// Set NAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// Set DATA0 PID/Set even
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// Set odd frame
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// Endpoint disable
EPDIS: u1 = 0,
/// EPENA [31:31]
/// Endpoint enable
EPENA: u1 = 0,
};
/// OTG device endpoint-2 control
pub const OTG_HS_DOEPCTL2 = MMIO(OTG_HS_DOEPCTL2_val).init(base_address + 0x340);

/// OTG_HS_DOEPCTL3
const OTG_HS_DOEPCTL3_val = packed struct {
/// MPSIZ [0:10]
/// Maximum packet size
MPSIZ: u11 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// USBAEP [15:15]
/// USB active endpoint
USBAEP: u1 = 0,
/// EONUM_DPID [16:16]
/// Even odd frame/Endpoint data
EONUM_DPID: u1 = 0,
/// NAKSTS [17:17]
/// NAK status
NAKSTS: u1 = 0,
/// EPTYP [18:19]
/// Endpoint type
EPTYP: u2 = 0,
/// SNPM [20:20]
/// Snoop mode
SNPM: u1 = 0,
/// Stall [21:21]
/// STALL handshake
Stall: u1 = 0,
/// unused [22:25]
_unused22: u2 = 0,
_unused24: u2 = 0,
/// CNAK [26:26]
/// Clear NAK
CNAK: u1 = 0,
/// SNAK [27:27]
/// Set NAK
SNAK: u1 = 0,
/// SD0PID_SEVNFRM [28:28]
/// Set DATA0 PID/Set even
SD0PID_SEVNFRM: u1 = 0,
/// SODDFRM [29:29]
/// Set odd frame
SODDFRM: u1 = 0,
/// EPDIS [30:30]
/// Endpoint disable
EPDIS: u1 = 0,
/// EPENA [31:31]
/// Endpoint enable
EPENA: u1 = 0,
};
/// OTG device endpoint-3 control
pub const OTG_HS_DOEPCTL3 = MMIO(OTG_HS_DOEPCTL3_val).init(base_address + 0x360);

/// OTG_HS_DOEPINT0
const OTG_HS_DOEPINT0_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STUP [3:3]
/// SETUP phase done
STUP: u1 = 0,
/// OTEPDIS [4:4]
/// OUT token received when endpoint
OTEPDIS: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// B2BSTUP [6:6]
/// Back-to-back SETUP packets
B2BSTUP: u1 = 0,
/// unused [7:13]
_unused7: u1 = 1,
_unused8: u6 = 0,
/// NYET [14:14]
/// NYET interrupt
NYET: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device endpoint-0 interrupt
pub const OTG_HS_DOEPINT0 = MMIO(OTG_HS_DOEPINT0_val).init(base_address + 0x308);

/// OTG_HS_DOEPINT1
const OTG_HS_DOEPINT1_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STUP [3:3]
/// SETUP phase done
STUP: u1 = 0,
/// OTEPDIS [4:4]
/// OUT token received when endpoint
OTEPDIS: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// B2BSTUP [6:6]
/// Back-to-back SETUP packets
B2BSTUP: u1 = 0,
/// unused [7:13]
_unused7: u1 = 0,
_unused8: u6 = 0,
/// NYET [14:14]
/// NYET interrupt
NYET: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device endpoint-1 interrupt
pub const OTG_HS_DOEPINT1 = MMIO(OTG_HS_DOEPINT1_val).init(base_address + 0x328);

/// OTG_HS_DOEPINT2
const OTG_HS_DOEPINT2_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STUP [3:3]
/// SETUP phase done
STUP: u1 = 0,
/// OTEPDIS [4:4]
/// OUT token received when endpoint
OTEPDIS: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// B2BSTUP [6:6]
/// Back-to-back SETUP packets
B2BSTUP: u1 = 0,
/// unused [7:13]
_unused7: u1 = 0,
_unused8: u6 = 0,
/// NYET [14:14]
/// NYET interrupt
NYET: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device endpoint-2 interrupt
pub const OTG_HS_DOEPINT2 = MMIO(OTG_HS_DOEPINT2_val).init(base_address + 0x348);

/// OTG_HS_DOEPINT3
const OTG_HS_DOEPINT3_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STUP [3:3]
/// SETUP phase done
STUP: u1 = 0,
/// OTEPDIS [4:4]
/// OUT token received when endpoint
OTEPDIS: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// B2BSTUP [6:6]
/// Back-to-back SETUP packets
B2BSTUP: u1 = 0,
/// unused [7:13]
_unused7: u1 = 0,
_unused8: u6 = 0,
/// NYET [14:14]
/// NYET interrupt
NYET: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device endpoint-3 interrupt
pub const OTG_HS_DOEPINT3 = MMIO(OTG_HS_DOEPINT3_val).init(base_address + 0x368);

/// OTG_HS_DOEPINT4
const OTG_HS_DOEPINT4_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STUP [3:3]
/// SETUP phase done
STUP: u1 = 0,
/// OTEPDIS [4:4]
/// OUT token received when endpoint
OTEPDIS: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// B2BSTUP [6:6]
/// Back-to-back SETUP packets
B2BSTUP: u1 = 0,
/// unused [7:13]
_unused7: u1 = 0,
_unused8: u6 = 0,
/// NYET [14:14]
/// NYET interrupt
NYET: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device endpoint-4 interrupt
pub const OTG_HS_DOEPINT4 = MMIO(OTG_HS_DOEPINT4_val).init(base_address + 0x388);

/// OTG_HS_DOEPINT5
const OTG_HS_DOEPINT5_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STUP [3:3]
/// SETUP phase done
STUP: u1 = 0,
/// OTEPDIS [4:4]
/// OUT token received when endpoint
OTEPDIS: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// B2BSTUP [6:6]
/// Back-to-back SETUP packets
B2BSTUP: u1 = 0,
/// unused [7:13]
_unused7: u1 = 0,
_unused8: u6 = 0,
/// NYET [14:14]
/// NYET interrupt
NYET: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device endpoint-5 interrupt
pub const OTG_HS_DOEPINT5 = MMIO(OTG_HS_DOEPINT5_val).init(base_address + 0x3a8);

/// OTG_HS_DOEPINT6
const OTG_HS_DOEPINT6_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STUP [3:3]
/// SETUP phase done
STUP: u1 = 0,
/// OTEPDIS [4:4]
/// OUT token received when endpoint
OTEPDIS: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// B2BSTUP [6:6]
/// Back-to-back SETUP packets
B2BSTUP: u1 = 0,
/// unused [7:13]
_unused7: u1 = 0,
_unused8: u6 = 0,
/// NYET [14:14]
/// NYET interrupt
NYET: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device endpoint-6 interrupt
pub const OTG_HS_DOEPINT6 = MMIO(OTG_HS_DOEPINT6_val).init(base_address + 0x3c8);

/// OTG_HS_DOEPINT7
const OTG_HS_DOEPINT7_val = packed struct {
/// XFRC [0:0]
/// Transfer completed
XFRC: u1 = 0,
/// EPDISD [1:1]
/// Endpoint disabled
EPDISD: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// STUP [3:3]
/// SETUP phase done
STUP: u1 = 0,
/// OTEPDIS [4:4]
/// OUT token received when endpoint
OTEPDIS: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// B2BSTUP [6:6]
/// Back-to-back SETUP packets
B2BSTUP: u1 = 0,
/// unused [7:13]
_unused7: u1 = 0,
_unused8: u6 = 0,
/// NYET [14:14]
/// NYET interrupt
NYET: u1 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// OTG_HS device endpoint-7 interrupt
pub const OTG_HS_DOEPINT7 = MMIO(OTG_HS_DOEPINT7_val).init(base_address + 0x3e8);

/// OTG_HS_DOEPTSIZ0
const OTG_HS_DOEPTSIZ0_val = packed struct {
/// XFRSIZ [0:6]
/// Transfer size
XFRSIZ: u7 = 0,
/// unused [7:18]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u3 = 0,
/// PKTCNT [19:19]
/// Packet count
PKTCNT: u1 = 0,
/// unused [20:28]
_unused20: u4 = 0,
_unused24: u5 = 0,
/// STUPCNT [29:30]
/// SETUP packet count
STUPCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS device endpoint-1 transfer size
pub const OTG_HS_DOEPTSIZ0 = MMIO(OTG_HS_DOEPTSIZ0_val).init(base_address + 0x310);

/// OTG_HS_DOEPTSIZ1
const OTG_HS_DOEPTSIZ1_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// RXDPID_STUPCNT [29:30]
/// Received data PID/SETUP packet
RXDPID_STUPCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS device endpoint-2 transfer size
pub const OTG_HS_DOEPTSIZ1 = MMIO(OTG_HS_DOEPTSIZ1_val).init(base_address + 0x330);

/// OTG_HS_DOEPTSIZ2
const OTG_HS_DOEPTSIZ2_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// RXDPID_STUPCNT [29:30]
/// Received data PID/SETUP packet
RXDPID_STUPCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS device endpoint-3 transfer size
pub const OTG_HS_DOEPTSIZ2 = MMIO(OTG_HS_DOEPTSIZ2_val).init(base_address + 0x350);

/// OTG_HS_DOEPTSIZ3
const OTG_HS_DOEPTSIZ3_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// RXDPID_STUPCNT [29:30]
/// Received data PID/SETUP packet
RXDPID_STUPCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS device endpoint-4 transfer size
pub const OTG_HS_DOEPTSIZ3 = MMIO(OTG_HS_DOEPTSIZ3_val).init(base_address + 0x370);

/// OTG_HS_DOEPTSIZ4
const OTG_HS_DOEPTSIZ4_val = packed struct {
/// XFRSIZ [0:18]
/// Transfer size
XFRSIZ: u19 = 0,
/// PKTCNT [19:28]
/// Packet count
PKTCNT: u10 = 0,
/// RXDPID_STUPCNT [29:30]
/// Received data PID/SETUP packet
RXDPID_STUPCNT: u2 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// OTG_HS device endpoint-5 transfer size
pub const OTG_HS_DOEPTSIZ4 = MMIO(OTG_HS_DOEPTSIZ4_val).init(base_address + 0x390);
};

/// USB on the go high speed
pub const OTG_HS_PWRCLK = struct {

const base_address = 0x40040e00;
/// OTG_HS_PCGCR
const OTG_HS_PCGCR_val = packed struct {
/// STPPCLK [0:0]
/// Stop PHY clock
STPPCLK: u1 = 0,
/// GATEHCLK [1:1]
/// Gate HCLK
GATEHCLK: u1 = 0,
/// unused [2:3]
_unused2: u2 = 0,
/// PHYSUSP [4:4]
/// PHY suspended
PHYSUSP: u1 = 0,
/// unused [5:31]
_unused5: u3 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Power and clock gating control
pub const OTG_HS_PCGCR = MMIO(OTG_HS_PCGCR_val).init(base_address + 0x0);
};

/// Serial audio interface
pub const SAI1 = struct {

const base_address = 0x40015800;
/// BCR1
const BCR1_val = packed struct {
/// MODE [0:1]
/// Audio block mode
MODE: u2 = 0,
/// PRTCFG [2:3]
/// Protocol configuration
PRTCFG: u2 = 0,
/// unused [4:4]
_unused4: u1 = 0,
/// DS [5:7]
/// Data size
DS: u3 = 2,
/// LSBFIRST [8:8]
/// Least significant bit
LSBFIRST: u1 = 0,
/// CKSTR [9:9]
/// Clock strobing edge
CKSTR: u1 = 0,
/// SYNCEN [10:11]
/// Synchronization enable
SYNCEN: u2 = 0,
/// MONO [12:12]
/// Mono mode
MONO: u1 = 0,
/// OutDri [13:13]
/// Output drive
OutDri: u1 = 0,
/// unused [14:15]
_unused14: u2 = 0,
/// SAIBEN [16:16]
/// Audio block B enable
SAIBEN: u1 = 0,
/// DMAEN [17:17]
/// DMA enable
DMAEN: u1 = 0,
/// unused [18:18]
_unused18: u1 = 0,
/// NODIV [19:19]
/// No divider
NODIV: u1 = 0,
/// MCJDIV [20:23]
/// Master clock divider
MCJDIV: u4 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// BConfiguration register 1
pub const BCR1 = MMIO(BCR1_val).init(base_address + 0x24);

/// BCR2
const BCR2_val = packed struct {
/// FTH [0:2]
/// FIFO threshold
FTH: u3 = 0,
/// FFLUS [3:3]
/// FIFO flush
FFLUS: u1 = 0,
/// TRIS [4:4]
/// Tristate management on data
TRIS: u1 = 0,
/// MUTE [5:5]
/// Mute
MUTE: u1 = 0,
/// MUTEVAL [6:6]
/// Mute value
MUTEVAL: u1 = 0,
/// MUTECN [7:12]
/// Mute counter
MUTECN: u6 = 0,
/// CPL [13:13]
/// Complement bit
CPL: u1 = 0,
/// COMP [14:15]
/// Companding mode
COMP: u2 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// BConfiguration register 2
pub const BCR2 = MMIO(BCR2_val).init(base_address + 0x28);

/// BFRCR
const BFRCR_val = packed struct {
/// FRL [0:7]
/// Frame length
FRL: u8 = 7,
/// FSALL [8:14]
/// Frame synchronization active level
FSALL: u7 = 0,
/// unused [15:15]
_unused15: u1 = 0,
/// FSDEF [16:16]
/// Frame synchronization
FSDEF: u1 = 0,
/// FSPOL [17:17]
/// Frame synchronization
FSPOL: u1 = 0,
/// FSOFF [18:18]
/// Frame synchronization
FSOFF: u1 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// BFRCR
pub const BFRCR = MMIO(BFRCR_val).init(base_address + 0x2c);

/// BSLOTR
const BSLOTR_val = packed struct {
/// FBOFF [0:4]
/// First bit offset
FBOFF: u5 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// SLOTSZ [6:7]
/// Slot size
SLOTSZ: u2 = 0,
/// NBSLOT [8:11]
/// Number of slots in an audio
NBSLOT: u4 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// SLOTEN [16:31]
/// Slot enable
SLOTEN: u16 = 0,
};
/// BSlot register
pub const BSLOTR = MMIO(BSLOTR_val).init(base_address + 0x30);

/// BIM
const BIM_val = packed struct {
/// OVRUDRIE [0:0]
/// Overrun/underrun interrupt
OVRUDRIE: u1 = 0,
/// MUTEDET [1:1]
/// Mute detection interrupt
MUTEDET: u1 = 0,
/// WCKCFG [2:2]
/// Wrong clock configuration interrupt
WCKCFG: u1 = 0,
/// FREQIE [3:3]
/// FIFO request interrupt
FREQIE: u1 = 0,
/// CNRDYIE [4:4]
/// Codec not ready interrupt
CNRDYIE: u1 = 0,
/// AFSDETIE [5:5]
/// Anticipated frame synchronization
AFSDETIE: u1 = 0,
/// LFSDETIE [6:6]
/// Late frame synchronization detection
LFSDETIE: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// BInterrupt mask register2
pub const BIM = MMIO(BIM_val).init(base_address + 0x34);

/// BSR
const BSR_val = packed struct {
/// OVRUDR [0:0]
/// Overrun / underrun
OVRUDR: u1 = 0,
/// MUTEDET [1:1]
/// Mute detection
MUTEDET: u1 = 0,
/// WCKCFG [2:2]
/// Wrong clock configuration
WCKCFG: u1 = 0,
/// FREQ [3:3]
/// FIFO request
FREQ: u1 = 0,
/// CNRDY [4:4]
/// Codec not ready
CNRDY: u1 = 0,
/// AFSDET [5:5]
/// Anticipated frame synchronization
AFSDET: u1 = 0,
/// LFSDET [6:6]
/// Late frame synchronization
LFSDET: u1 = 0,
/// unused [7:15]
_unused7: u1 = 0,
_unused8: u8 = 0,
/// FLVL [16:18]
/// FIFO level threshold
FLVL: u3 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// BStatus register
pub const BSR = MMIO(BSR_val).init(base_address + 0x38);

/// BCLRFR
const BCLRFR_val = packed struct {
/// OVRUDR [0:0]
/// Clear overrun / underrun
OVRUDR: u1 = 0,
/// MUTEDET [1:1]
/// Mute detection flag
MUTEDET: u1 = 0,
/// WCKCFG [2:2]
/// Clear wrong clock configuration
WCKCFG: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// CNRDY [4:4]
/// Clear codec not ready flag
CNRDY: u1 = 0,
/// CAFSDET [5:5]
/// Clear anticipated frame synchronization
CAFSDET: u1 = 0,
/// LFSDET [6:6]
/// Clear late frame synchronization
LFSDET: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// BClear flag register
pub const BCLRFR = MMIO(BCLRFR_val).init(base_address + 0x3c);

/// BDR
const BDR_val = packed struct {
/// DATA [0:31]
/// Data
DATA: u32 = 0,
};
/// BData register
pub const BDR = MMIO(BDR_val).init(base_address + 0x40);

/// ACR1
const ACR1_val = packed struct {
/// MODE [0:1]
/// Audio block mode
MODE: u2 = 0,
/// PRTCFG [2:3]
/// Protocol configuration
PRTCFG: u2 = 0,
/// unused [4:4]
_unused4: u1 = 0,
/// DS [5:7]
/// Data size
DS: u3 = 2,
/// LSBFIRST [8:8]
/// Least significant bit
LSBFIRST: u1 = 0,
/// CKSTR [9:9]
/// Clock strobing edge
CKSTR: u1 = 0,
/// SYNCEN [10:11]
/// Synchronization enable
SYNCEN: u2 = 0,
/// MONO [12:12]
/// Mono mode
MONO: u1 = 0,
/// OutDri [13:13]
/// Output drive
OutDri: u1 = 0,
/// unused [14:15]
_unused14: u2 = 0,
/// SAIAEN [16:16]
/// Audio block A enable
SAIAEN: u1 = 0,
/// DMAEN [17:17]
/// DMA enable
DMAEN: u1 = 0,
/// unused [18:18]
_unused18: u1 = 0,
/// NODIV [19:19]
/// No divider
NODIV: u1 = 0,
/// MCJDIV [20:23]
/// Master clock divider
MCJDIV: u4 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// AConfiguration register 1
pub const ACR1 = MMIO(ACR1_val).init(base_address + 0x4);

/// ACR2
const ACR2_val = packed struct {
/// FTH [0:2]
/// FIFO threshold
FTH: u3 = 0,
/// FFLUS [3:3]
/// FIFO flush
FFLUS: u1 = 0,
/// TRIS [4:4]
/// Tristate management on data
TRIS: u1 = 0,
/// MUTE [5:5]
/// Mute
MUTE: u1 = 0,
/// MUTEVAL [6:6]
/// Mute value
MUTEVAL: u1 = 0,
/// MUTECN [7:12]
/// Mute counter
MUTECN: u6 = 0,
/// CPL [13:13]
/// Complement bit
CPL: u1 = 0,
/// COMP [14:15]
/// Companding mode
COMP: u2 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// AConfiguration register 2
pub const ACR2 = MMIO(ACR2_val).init(base_address + 0x8);

/// AFRCR
const AFRCR_val = packed struct {
/// FRL [0:7]
/// Frame length
FRL: u8 = 7,
/// FSALL [8:14]
/// Frame synchronization active level
FSALL: u7 = 0,
/// unused [15:15]
_unused15: u1 = 0,
/// FSDEF [16:16]
/// Frame synchronization
FSDEF: u1 = 0,
/// FSPOL [17:17]
/// Frame synchronization
FSPOL: u1 = 0,
/// FSOFF [18:18]
/// Frame synchronization
FSOFF: u1 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// AFRCR
pub const AFRCR = MMIO(AFRCR_val).init(base_address + 0xc);

/// ASLOTR
const ASLOTR_val = packed struct {
/// FBOFF [0:4]
/// First bit offset
FBOFF: u5 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// SLOTSZ [6:7]
/// Slot size
SLOTSZ: u2 = 0,
/// NBSLOT [8:11]
/// Number of slots in an audio
NBSLOT: u4 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// SLOTEN [16:31]
/// Slot enable
SLOTEN: u16 = 0,
};
/// ASlot register
pub const ASLOTR = MMIO(ASLOTR_val).init(base_address + 0x10);

/// AIM
const AIM_val = packed struct {
/// OVRUDRIE [0:0]
/// Overrun/underrun interrupt
OVRUDRIE: u1 = 0,
/// MUTEDET [1:1]
/// Mute detection interrupt
MUTEDET: u1 = 0,
/// WCKCFG [2:2]
/// Wrong clock configuration interrupt
WCKCFG: u1 = 0,
/// FREQIE [3:3]
/// FIFO request interrupt
FREQIE: u1 = 0,
/// CNRDYIE [4:4]
/// Codec not ready interrupt
CNRDYIE: u1 = 0,
/// AFSDETIE [5:5]
/// Anticipated frame synchronization
AFSDETIE: u1 = 0,
/// LFSDET [6:6]
/// Late frame synchronization detection
LFSDET: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// AInterrupt mask register2
pub const AIM = MMIO(AIM_val).init(base_address + 0x14);

/// ASR
const ASR_val = packed struct {
/// OVRUDR [0:0]
/// Overrun / underrun
OVRUDR: u1 = 0,
/// MUTEDET [1:1]
/// Mute detection
MUTEDET: u1 = 0,
/// WCKCFG [2:2]
/// Wrong clock configuration flag. This bit
WCKCFG: u1 = 0,
/// FREQ [3:3]
/// FIFO request
FREQ: u1 = 0,
/// CNRDY [4:4]
/// Codec not ready
CNRDY: u1 = 0,
/// AFSDET [5:5]
/// Anticipated frame synchronization
AFSDET: u1 = 0,
/// LFSDET [6:6]
/// Late frame synchronization
LFSDET: u1 = 0,
/// unused [7:15]
_unused7: u1 = 0,
_unused8: u8 = 0,
/// FLVL [16:18]
/// FIFO level threshold
FLVL: u3 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// AStatus register
pub const ASR = MMIO(ASR_val).init(base_address + 0x18);

/// ACLRFR
const ACLRFR_val = packed struct {
/// OVRUDR [0:0]
/// Clear overrun / underrun
OVRUDR: u1 = 0,
/// MUTEDET [1:1]
/// Mute detection flag
MUTEDET: u1 = 0,
/// WCKCFG [2:2]
/// Clear wrong clock configuration
WCKCFG: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// CNRDY [4:4]
/// Clear codec not ready flag
CNRDY: u1 = 0,
/// CAFSDET [5:5]
/// Clear anticipated frame synchronization
CAFSDET: u1 = 0,
/// LFSDET [6:6]
/// Clear late frame synchronization
LFSDET: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// AClear flag register
pub const ACLRFR = MMIO(ACLRFR_val).init(base_address + 0x1c);

/// ADR
const ADR_val = packed struct {
/// DATA [0:31]
/// Data
DATA: u32 = 0,
};
/// AData register
pub const ADR = MMIO(ADR_val).init(base_address + 0x20);

/// GCR
const GCR_val = packed struct {
/// SYNCIN [0:1]
/// Synchronization inputs
SYNCIN: u2 = 0,
/// unused [2:3]
_unused2: u2 = 0,
/// SYNCOUT [4:5]
/// Synchronization outputs
SYNCOUT: u2 = 0,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Global configuration register
pub const GCR = MMIO(GCR_val).init(base_address + 0x0);
};

/// Serial audio interface
pub const SAI2 = struct {

const base_address = 0x40015c00;
/// BCR1
const BCR1_val = packed struct {
/// MODE [0:1]
/// Audio block mode
MODE: u2 = 0,
/// PRTCFG [2:3]
/// Protocol configuration
PRTCFG: u2 = 0,
/// unused [4:4]
_unused4: u1 = 0,
/// DS [5:7]
/// Data size
DS: u3 = 2,
/// LSBFIRST [8:8]
/// Least significant bit
LSBFIRST: u1 = 0,
/// CKSTR [9:9]
/// Clock strobing edge
CKSTR: u1 = 0,
/// SYNCEN [10:11]
/// Synchronization enable
SYNCEN: u2 = 0,
/// MONO [12:12]
/// Mono mode
MONO: u1 = 0,
/// OutDri [13:13]
/// Output drive
OutDri: u1 = 0,
/// unused [14:15]
_unused14: u2 = 0,
/// SAIBEN [16:16]
/// Audio block B enable
SAIBEN: u1 = 0,
/// DMAEN [17:17]
/// DMA enable
DMAEN: u1 = 0,
/// unused [18:18]
_unused18: u1 = 0,
/// NODIV [19:19]
/// No divider
NODIV: u1 = 0,
/// MCJDIV [20:23]
/// Master clock divider
MCJDIV: u4 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// BConfiguration register 1
pub const BCR1 = MMIO(BCR1_val).init(base_address + 0x24);

/// BCR2
const BCR2_val = packed struct {
/// FTH [0:2]
/// FIFO threshold
FTH: u3 = 0,
/// FFLUS [3:3]
/// FIFO flush
FFLUS: u1 = 0,
/// TRIS [4:4]
/// Tristate management on data
TRIS: u1 = 0,
/// MUTE [5:5]
/// Mute
MUTE: u1 = 0,
/// MUTEVAL [6:6]
/// Mute value
MUTEVAL: u1 = 0,
/// MUTECN [7:12]
/// Mute counter
MUTECN: u6 = 0,
/// CPL [13:13]
/// Complement bit
CPL: u1 = 0,
/// COMP [14:15]
/// Companding mode
COMP: u2 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// BConfiguration register 2
pub const BCR2 = MMIO(BCR2_val).init(base_address + 0x28);

/// BFRCR
const BFRCR_val = packed struct {
/// FRL [0:7]
/// Frame length
FRL: u8 = 7,
/// FSALL [8:14]
/// Frame synchronization active level
FSALL: u7 = 0,
/// unused [15:15]
_unused15: u1 = 0,
/// FSDEF [16:16]
/// Frame synchronization
FSDEF: u1 = 0,
/// FSPOL [17:17]
/// Frame synchronization
FSPOL: u1 = 0,
/// FSOFF [18:18]
/// Frame synchronization
FSOFF: u1 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// BFRCR
pub const BFRCR = MMIO(BFRCR_val).init(base_address + 0x2c);

/// BSLOTR
const BSLOTR_val = packed struct {
/// FBOFF [0:4]
/// First bit offset
FBOFF: u5 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// SLOTSZ [6:7]
/// Slot size
SLOTSZ: u2 = 0,
/// NBSLOT [8:11]
/// Number of slots in an audio
NBSLOT: u4 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// SLOTEN [16:31]
/// Slot enable
SLOTEN: u16 = 0,
};
/// BSlot register
pub const BSLOTR = MMIO(BSLOTR_val).init(base_address + 0x30);

/// BIM
const BIM_val = packed struct {
/// OVRUDRIE [0:0]
/// Overrun/underrun interrupt
OVRUDRIE: u1 = 0,
/// MUTEDET [1:1]
/// Mute detection interrupt
MUTEDET: u1 = 0,
/// WCKCFG [2:2]
/// Wrong clock configuration interrupt
WCKCFG: u1 = 0,
/// FREQIE [3:3]
/// FIFO request interrupt
FREQIE: u1 = 0,
/// CNRDYIE [4:4]
/// Codec not ready interrupt
CNRDYIE: u1 = 0,
/// AFSDETIE [5:5]
/// Anticipated frame synchronization
AFSDETIE: u1 = 0,
/// LFSDETIE [6:6]
/// Late frame synchronization detection
LFSDETIE: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// BInterrupt mask register2
pub const BIM = MMIO(BIM_val).init(base_address + 0x34);

/// BSR
const BSR_val = packed struct {
/// OVRUDR [0:0]
/// Overrun / underrun
OVRUDR: u1 = 0,
/// MUTEDET [1:1]
/// Mute detection
MUTEDET: u1 = 0,
/// WCKCFG [2:2]
/// Wrong clock configuration
WCKCFG: u1 = 0,
/// FREQ [3:3]
/// FIFO request
FREQ: u1 = 0,
/// CNRDY [4:4]
/// Codec not ready
CNRDY: u1 = 0,
/// AFSDET [5:5]
/// Anticipated frame synchronization
AFSDET: u1 = 0,
/// LFSDET [6:6]
/// Late frame synchronization
LFSDET: u1 = 0,
/// unused [7:15]
_unused7: u1 = 0,
_unused8: u8 = 0,
/// FLVL [16:18]
/// FIFO level threshold
FLVL: u3 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// BStatus register
pub const BSR = MMIO(BSR_val).init(base_address + 0x38);

/// BCLRFR
const BCLRFR_val = packed struct {
/// OVRUDR [0:0]
/// Clear overrun / underrun
OVRUDR: u1 = 0,
/// MUTEDET [1:1]
/// Mute detection flag
MUTEDET: u1 = 0,
/// WCKCFG [2:2]
/// Clear wrong clock configuration
WCKCFG: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// CNRDY [4:4]
/// Clear codec not ready flag
CNRDY: u1 = 0,
/// CAFSDET [5:5]
/// Clear anticipated frame synchronization
CAFSDET: u1 = 0,
/// LFSDET [6:6]
/// Clear late frame synchronization
LFSDET: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// BClear flag register
pub const BCLRFR = MMIO(BCLRFR_val).init(base_address + 0x3c);

/// BDR
const BDR_val = packed struct {
/// DATA [0:31]
/// Data
DATA: u32 = 0,
};
/// BData register
pub const BDR = MMIO(BDR_val).init(base_address + 0x40);

/// ACR1
const ACR1_val = packed struct {
/// MODE [0:1]
/// Audio block mode
MODE: u2 = 0,
/// PRTCFG [2:3]
/// Protocol configuration
PRTCFG: u2 = 0,
/// unused [4:4]
_unused4: u1 = 0,
/// DS [5:7]
/// Data size
DS: u3 = 2,
/// LSBFIRST [8:8]
/// Least significant bit
LSBFIRST: u1 = 0,
/// CKSTR [9:9]
/// Clock strobing edge
CKSTR: u1 = 0,
/// SYNCEN [10:11]
/// Synchronization enable
SYNCEN: u2 = 0,
/// MONO [12:12]
/// Mono mode
MONO: u1 = 0,
/// OutDri [13:13]
/// Output drive
OutDri: u1 = 0,
/// unused [14:15]
_unused14: u2 = 0,
/// SAIAEN [16:16]
/// Audio block A enable
SAIAEN: u1 = 0,
/// DMAEN [17:17]
/// DMA enable
DMAEN: u1 = 0,
/// unused [18:18]
_unused18: u1 = 0,
/// NODIV [19:19]
/// No divider
NODIV: u1 = 0,
/// MCJDIV [20:23]
/// Master clock divider
MCJDIV: u4 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// AConfiguration register 1
pub const ACR1 = MMIO(ACR1_val).init(base_address + 0x4);

/// ACR2
const ACR2_val = packed struct {
/// FTH [0:2]
/// FIFO threshold
FTH: u3 = 0,
/// FFLUS [3:3]
/// FIFO flush
FFLUS: u1 = 0,
/// TRIS [4:4]
/// Tristate management on data
TRIS: u1 = 0,
/// MUTE [5:5]
/// Mute
MUTE: u1 = 0,
/// MUTEVAL [6:6]
/// Mute value
MUTEVAL: u1 = 0,
/// MUTECN [7:12]
/// Mute counter
MUTECN: u6 = 0,
/// CPL [13:13]
/// Complement bit
CPL: u1 = 0,
/// COMP [14:15]
/// Companding mode
COMP: u2 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// AConfiguration register 2
pub const ACR2 = MMIO(ACR2_val).init(base_address + 0x8);

/// AFRCR
const AFRCR_val = packed struct {
/// FRL [0:7]
/// Frame length
FRL: u8 = 7,
/// FSALL [8:14]
/// Frame synchronization active level
FSALL: u7 = 0,
/// unused [15:15]
_unused15: u1 = 0,
/// FSDEF [16:16]
/// Frame synchronization
FSDEF: u1 = 0,
/// FSPOL [17:17]
/// Frame synchronization
FSPOL: u1 = 0,
/// FSOFF [18:18]
/// Frame synchronization
FSOFF: u1 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// AFRCR
pub const AFRCR = MMIO(AFRCR_val).init(base_address + 0xc);

/// ASLOTR
const ASLOTR_val = packed struct {
/// FBOFF [0:4]
/// First bit offset
FBOFF: u5 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// SLOTSZ [6:7]
/// Slot size
SLOTSZ: u2 = 0,
/// NBSLOT [8:11]
/// Number of slots in an audio
NBSLOT: u4 = 0,
/// unused [12:15]
_unused12: u4 = 0,
/// SLOTEN [16:31]
/// Slot enable
SLOTEN: u16 = 0,
};
/// ASlot register
pub const ASLOTR = MMIO(ASLOTR_val).init(base_address + 0x10);

/// AIM
const AIM_val = packed struct {
/// OVRUDRIE [0:0]
/// Overrun/underrun interrupt
OVRUDRIE: u1 = 0,
/// MUTEDET [1:1]
/// Mute detection interrupt
MUTEDET: u1 = 0,
/// WCKCFG [2:2]
/// Wrong clock configuration interrupt
WCKCFG: u1 = 0,
/// FREQIE [3:3]
/// FIFO request interrupt
FREQIE: u1 = 0,
/// CNRDYIE [4:4]
/// Codec not ready interrupt
CNRDYIE: u1 = 0,
/// AFSDETIE [5:5]
/// Anticipated frame synchronization
AFSDETIE: u1 = 0,
/// LFSDET [6:6]
/// Late frame synchronization detection
LFSDET: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// AInterrupt mask register2
pub const AIM = MMIO(AIM_val).init(base_address + 0x14);

/// ASR
const ASR_val = packed struct {
/// OVRUDR [0:0]
/// Overrun / underrun
OVRUDR: u1 = 0,
/// MUTEDET [1:1]
/// Mute detection
MUTEDET: u1 = 0,
/// WCKCFG [2:2]
/// Wrong clock configuration flag. This bit
WCKCFG: u1 = 0,
/// FREQ [3:3]
/// FIFO request
FREQ: u1 = 0,
/// CNRDY [4:4]
/// Codec not ready
CNRDY: u1 = 0,
/// AFSDET [5:5]
/// Anticipated frame synchronization
AFSDET: u1 = 0,
/// LFSDET [6:6]
/// Late frame synchronization
LFSDET: u1 = 0,
/// unused [7:15]
_unused7: u1 = 0,
_unused8: u8 = 0,
/// FLVL [16:18]
/// FIFO level threshold
FLVL: u3 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// AStatus register
pub const ASR = MMIO(ASR_val).init(base_address + 0x18);

/// ACLRFR
const ACLRFR_val = packed struct {
/// OVRUDR [0:0]
/// Clear overrun / underrun
OVRUDR: u1 = 0,
/// MUTEDET [1:1]
/// Mute detection flag
MUTEDET: u1 = 0,
/// WCKCFG [2:2]
/// Clear wrong clock configuration
WCKCFG: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// CNRDY [4:4]
/// Clear codec not ready flag
CNRDY: u1 = 0,
/// CAFSDET [5:5]
/// Clear anticipated frame synchronization
CAFSDET: u1 = 0,
/// LFSDET [6:6]
/// Clear late frame synchronization
LFSDET: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// AClear flag register
pub const ACLRFR = MMIO(ACLRFR_val).init(base_address + 0x1c);

/// ADR
const ADR_val = packed struct {
/// DATA [0:31]
/// Data
DATA: u32 = 0,
};
/// AData register
pub const ADR = MMIO(ADR_val).init(base_address + 0x20);

/// GCR
const GCR_val = packed struct {
/// SYNCIN [0:1]
/// Synchronization inputs
SYNCIN: u2 = 0,
/// unused [2:3]
_unused2: u2 = 0,
/// SYNCOUT [4:5]
/// Synchronization outputs
SYNCOUT: u2 = 0,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Global configuration register
pub const GCR = MMIO(GCR_val).init(base_address + 0x0);
};

/// Power control
pub const PWR = struct {

const base_address = 0x40007000;
/// CR
const CR_val = packed struct {
/// LPDS [0:0]
/// Low-power deep sleep
LPDS: u1 = 0,
/// PDDS [1:1]
/// Power down deepsleep
PDDS: u1 = 0,
/// CWUF [2:2]
/// Clear wakeup flag
CWUF: u1 = 0,
/// CSBF [3:3]
/// Clear standby flag
CSBF: u1 = 0,
/// PVDE [4:4]
/// Power voltage detector
PVDE: u1 = 0,
/// PLS [5:7]
/// PVD level selection
PLS: u3 = 0,
/// DBP [8:8]
/// Disable backup domain write
DBP: u1 = 0,
/// FPDS [9:9]
/// Flash power down in Stop
FPDS: u1 = 0,
/// LPLVDS [10:10]
/// Low-Power Regulator Low Voltage in
LPLVDS: u1 = 0,
/// MRLVDS [11:11]
/// Main regulator low voltage in deepsleep
MRLVDS: u1 = 0,
/// unused [12:12]
_unused12: u1 = 0,
/// ADCDC1 [13:13]
/// ADCDC1
ADCDC1: u1 = 0,
/// VOS [14:15]
/// Regulator voltage scaling output
VOS: u2 = 3,
/// ODEN [16:16]
/// Over-drive enable
ODEN: u1 = 0,
/// ODSWEN [17:17]
/// Over-drive switching
ODSWEN: u1 = 0,
/// UDEN [18:19]
/// Under-drive enable in stop
UDEN: u2 = 0,
/// FMSSR [20:20]
/// Flash Memory Stop while System
FMSSR: u1 = 0,
/// FISSR [21:21]
/// Flash Interface Stop while System
FISSR: u1 = 0,
/// unused [22:31]
_unused22: u2 = 0,
_unused24: u8 = 0,
};
/// power control register
pub const CR = MMIO(CR_val).init(base_address + 0x0);

/// CSR
const CSR_val = packed struct {
/// WUF [0:0]
/// Wakeup flag
WUF: u1 = 0,
/// SBF [1:1]
/// Standby flag
SBF: u1 = 0,
/// PVDO [2:2]
/// PVD output
PVDO: u1 = 0,
/// BRR [3:3]
/// Backup regulator ready
BRR: u1 = 0,
/// unused [4:6]
_unused4: u3 = 0,
/// EWUP2 [7:7]
/// Enable WKUP2 pin
EWUP2: u1 = 0,
/// EWUP [8:8]
/// Enable WKUP pin
EWUP: u1 = 0,
/// BRE [9:9]
/// Backup regulator enable
BRE: u1 = 0,
/// unused [10:13]
_unused10: u4 = 0,
/// VOSRDY [14:14]
/// Regulator voltage scaling output
VOSRDY: u1 = 0,
/// unused [15:15]
_unused15: u1 = 0,
/// ODRDY [16:16]
/// Over-drive mode ready
ODRDY: u1 = 0,
/// ODSWRDY [17:17]
/// Over-drive mode switching
ODSWRDY: u1 = 0,
/// UDRDY [18:19]
/// Under-drive ready flag
UDRDY: u2 = 0,
/// unused [20:31]
_unused20: u4 = 0,
_unused24: u8 = 0,
};
/// power control/status register
pub const CSR = MMIO(CSR_val).init(base_address + 0x4);
};

/// QuadSPI interface
pub const QUADSPI = struct {

const base_address = 0xa0001000;
/// CR
const CR_val = packed struct {
/// EN [0:0]
/// Enable
EN: u1 = 0,
/// ABORT [1:1]
/// Abort request
ABORT: u1 = 0,
/// DMAEN [2:2]
/// DMA enable
DMAEN: u1 = 0,
/// TCEN [3:3]
/// Timeout counter enable
TCEN: u1 = 0,
/// SSHIFT [4:4]
/// Sample shift
SSHIFT: u1 = 0,
/// unused [5:5]
_unused5: u1 = 0,
/// DFM [6:6]
/// Dual-flash mode
DFM: u1 = 0,
/// FSEL [7:7]
/// FLASH memory selection
FSEL: u1 = 0,
/// FTHRES [8:12]
/// IFO threshold level
FTHRES: u5 = 0,
/// unused [13:15]
_unused13: u3 = 0,
/// TEIE [16:16]
/// Transfer error interrupt
TEIE: u1 = 0,
/// TCIE [17:17]
/// Transfer complete interrupt
TCIE: u1 = 0,
/// FTIE [18:18]
/// FIFO threshold interrupt
FTIE: u1 = 0,
/// SMIE [19:19]
/// Status match interrupt
SMIE: u1 = 0,
/// TOIE [20:20]
/// TimeOut interrupt enable
TOIE: u1 = 0,
/// unused [21:21]
_unused21: u1 = 0,
/// APMS [22:22]
/// Automatic poll mode stop
APMS: u1 = 0,
/// PMM [23:23]
/// Polling match mode
PMM: u1 = 0,
/// PRESCALER [24:31]
/// Clock prescaler
PRESCALER: u8 = 0,
};
/// control register
pub const CR = MMIO(CR_val).init(base_address + 0x0);

/// DCR
const DCR_val = packed struct {
/// CKMODE [0:0]
/// Mode 0 / mode 3
CKMODE: u1 = 0,
/// unused [1:7]
_unused1: u7 = 0,
/// CSHT [8:10]
/// Chip select high time
CSHT: u3 = 0,
/// unused [11:15]
_unused11: u5 = 0,
/// FSIZE [16:20]
/// FLASH memory size
FSIZE: u5 = 0,
/// unused [21:31]
_unused21: u3 = 0,
_unused24: u8 = 0,
};
/// device configuration register
pub const DCR = MMIO(DCR_val).init(base_address + 0x4);

/// SR
const SR_val = packed struct {
/// TEF [0:0]
/// Transfer error flag
TEF: u1 = 0,
/// TCF [1:1]
/// Transfer complete flag
TCF: u1 = 0,
/// FTF [2:2]
/// FIFO threshold flag
FTF: u1 = 0,
/// SMF [3:3]
/// Status match flag
SMF: u1 = 0,
/// TOF [4:4]
/// Timeout flag
TOF: u1 = 0,
/// BUSY [5:5]
/// Busy
BUSY: u1 = 0,
/// unused [6:7]
_unused6: u2 = 0,
/// FLEVEL [8:14]
/// FIFO level
FLEVEL: u7 = 0,
/// unused [15:31]
_unused15: u1 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// status register
pub const SR = MMIO(SR_val).init(base_address + 0x8);

/// FCR
const FCR_val = packed struct {
/// CTEF [0:0]
/// Clear transfer error flag
CTEF: u1 = 0,
/// CTCF [1:1]
/// Clear transfer complete
CTCF: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// CSMF [3:3]
/// Clear status match flag
CSMF: u1 = 0,
/// CTOF [4:4]
/// Clear timeout flag
CTOF: u1 = 0,
/// unused [5:31]
_unused5: u3 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// flag clear register
pub const FCR = MMIO(FCR_val).init(base_address + 0xc);

/// DLR
const DLR_val = packed struct {
/// DL [0:31]
/// Data length
DL: u32 = 0,
};
/// data length register
pub const DLR = MMIO(DLR_val).init(base_address + 0x10);

/// CCR
const CCR_val = packed struct {
/// INSTRUCTION [0:7]
/// Instruction
INSTRUCTION: u8 = 0,
/// IMODE [8:9]
/// Instruction mode
IMODE: u2 = 0,
/// ADMODE [10:11]
/// Address mode
ADMODE: u2 = 0,
/// ADSIZE [12:13]
/// Address size
ADSIZE: u2 = 0,
/// ABMODE [14:15]
/// Alternate bytes mode
ABMODE: u2 = 0,
/// ABSIZE [16:17]
/// Alternate bytes size
ABSIZE: u2 = 0,
/// DCYC [18:22]
/// Number of dummy cycles
DCYC: u5 = 0,
/// unused [23:23]
_unused23: u1 = 0,
/// DMODE [24:25]
/// Data mode
DMODE: u2 = 0,
/// FMODE [26:27]
/// Functional mode
FMODE: u2 = 0,
/// SIOO [28:28]
/// Send instruction only once
SIOO: u1 = 0,
/// unused [29:29]
_unused29: u1 = 0,
/// DHHC [30:30]
/// DDR hold half cycle
DHHC: u1 = 0,
/// DDRM [31:31]
/// Double data rate mode
DDRM: u1 = 0,
};
/// communication configuration
pub const CCR = MMIO(CCR_val).init(base_address + 0x14);

/// AR
const AR_val = packed struct {
/// ADDRESS [0:31]
/// Address
ADDRESS: u32 = 0,
};
/// address register
pub const AR = MMIO(AR_val).init(base_address + 0x18);

/// ABR
const ABR_val = packed struct {
/// ALTERNATE [0:31]
/// ALTERNATE
ALTERNATE: u32 = 0,
};
/// ABR
pub const ABR = MMIO(ABR_val).init(base_address + 0x1c);

/// DR
const DR_val = packed struct {
/// DATA [0:31]
/// Data
DATA: u32 = 0,
};
/// data register
pub const DR = MMIO(DR_val).init(base_address + 0x20);

/// PSMKR
const PSMKR_val = packed struct {
/// MASK [0:31]
/// Status mask
MASK: u32 = 0,
};
/// polling status mask register
pub const PSMKR = MMIO(PSMKR_val).init(base_address + 0x24);

/// PSMAR
const PSMAR_val = packed struct {
/// MATCH [0:31]
/// Status match
MATCH: u32 = 0,
};
/// polling status match register
pub const PSMAR = MMIO(PSMAR_val).init(base_address + 0x28);

/// PIR
const PIR_val = packed struct {
/// INTERVAL [0:15]
/// Polling interval
INTERVAL: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// polling interval register
pub const PIR = MMIO(PIR_val).init(base_address + 0x2c);

/// LPTR
const LPTR_val = packed struct {
/// TIMEOUT [0:15]
/// Timeout period
TIMEOUT: u16 = 0,
/// unused [16:31]
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// low-power timeout register
pub const LPTR = MMIO(LPTR_val).init(base_address + 0x30);
};

/// Receiver Interface
pub const SPDIF_RX = struct {

const base_address = 0x40004000;
/// CR
const CR_val = packed struct {
/// SPDIFEN [0:1]
/// Peripheral Block Enable
SPDIFEN: u2 = 0,
/// RXDMAEN [2:2]
/// Receiver DMA ENable for data
RXDMAEN: u1 = 0,
/// RXSTEO [3:3]
/// STerEO Mode
RXSTEO: u1 = 0,
/// DRFMT [4:5]
/// RX Data format
DRFMT: u2 = 0,
/// PMSK [6:6]
/// Mask Parity error bit
PMSK: u1 = 0,
/// VMSK [7:7]
/// Mask of Validity bit
VMSK: u1 = 0,
/// CUMSK [8:8]
/// Mask of channel status and user
CUMSK: u1 = 0,
/// PTMSK [9:9]
/// Mask of Preamble Type bits
PTMSK: u1 = 0,
/// CBDMAEN [10:10]
/// Control Buffer DMA ENable for control
CBDMAEN: u1 = 0,
/// CHSEL [11:11]
/// Channel Selection
CHSEL: u1 = 0,
/// NBTR [12:13]
/// Maximum allowed re-tries during
NBTR: u2 = 0,
/// WFA [14:14]
/// Wait For Activity
WFA: u1 = 0,
/// unused [15:15]
_unused15: u1 = 0,
/// INSEL [16:18]
/// input selection
INSEL: u3 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// Control register
pub const CR = MMIO(CR_val).init(base_address + 0x0);

/// IMR
const IMR_val = packed struct {
/// RXNEIE [0:0]
/// RXNE interrupt enable
RXNEIE: u1 = 0,
/// CSRNEIE [1:1]
/// Control Buffer Ready Interrupt
CSRNEIE: u1 = 0,
/// PERRIE [2:2]
/// Parity error interrupt
PERRIE: u1 = 0,
/// OVRIE [3:3]
/// Overrun error Interrupt
OVRIE: u1 = 0,
/// SBLKIE [4:4]
/// Synchronization Block Detected Interrupt
SBLKIE: u1 = 0,
/// SYNCDIE [5:5]
/// Synchronization Done
SYNCDIE: u1 = 0,
/// IFEIE [6:6]
/// Serial Interface Error Interrupt
IFEIE: u1 = 0,
/// unused [7:31]
_unused7: u1 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Interrupt mask register
pub const IMR = MMIO(IMR_val).init(base_address + 0x4);

/// SR
const SR_val = packed struct {
/// RXNE [0:0]
/// Read data register not
RXNE: u1 = 0,
/// CSRNE [1:1]
/// Control Buffer register is not
CSRNE: u1 = 0,
/// PERR [2:2]
/// Parity error
PERR: u1 = 0,
/// OVR [3:3]
/// Overrun error
OVR: u1 = 0,
/// SBD [4:4]
/// Synchronization Block
SBD: u1 = 0,
/// SYNCD [5:5]
/// Synchronization Done
SYNCD: u1 = 0,
/// FERR [6:6]
/// Framing error
FERR: u1 = 0,
/// SERR [7:7]
/// Synchronization error
SERR: u1 = 0,
/// TERR [8:8]
/// Time-out error
TERR: u1 = 0,
/// unused [9:15]
_unused9: u7 = 0,
/// WIDTH5 [16:30]
/// Duration of 5 symbols counted with
WIDTH5: u15 = 0,
/// unused [31:31]
_unused31: u1 = 0,
};
/// Status register
pub const SR = MMIO(SR_val).init(base_address + 0x8);

/// IFCR
const IFCR_val = packed struct {
/// unused [0:1]
_unused0: u2 = 0,
/// PERRCF [2:2]
/// Clears the Parity error
PERRCF: u1 = 0,
/// OVRCF [3:3]
/// Clears the Overrun error
OVRCF: u1 = 0,
/// SBDCF [4:4]
/// Clears the Synchronization Block
SBDCF: u1 = 0,
/// SYNCDCF [5:5]
/// Clears the Synchronization Done
SYNCDCF: u1 = 0,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Interrupt Flag Clear register
pub const IFCR = MMIO(IFCR_val).init(base_address + 0xc);

/// DR
const DR_val = packed struct {
/// DR [0:23]
/// Parity Error bit
DR: u24 = 0,
/// PE [24:24]
/// Parity Error bit
PE: u1 = 0,
/// V [25:25]
/// Validity bit
V: u1 = 0,
/// U [26:26]
/// User bit
U: u1 = 0,
/// C [27:27]
/// Channel Status bit
C: u1 = 0,
/// PT [28:29]
/// Preamble Type
PT: u2 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// Data input register
pub const DR = MMIO(DR_val).init(base_address + 0x10);

/// CSR
const CSR_val = packed struct {
/// USR [0:15]
/// User data information
USR: u16 = 0,
/// CS [16:23]
/// Channel A status
CS: u8 = 0,
/// SOB [24:24]
/// Start Of Block
SOB: u1 = 0,
/// unused [25:31]
_unused25: u7 = 0,
};
/// Channel Status register
pub const CSR = MMIO(CSR_val).init(base_address + 0x14);

/// DIR
const DIR_val = packed struct {
/// THI [0:12]
/// Threshold HIGH
THI: u13 = 0,
/// unused [13:15]
_unused13: u3 = 0,
/// TLO [16:28]
/// Threshold LOW
TLO: u13 = 0,
/// unused [29:31]
_unused29: u3 = 0,
};
/// Debug Information register
pub const DIR = MMIO(DIR_val).init(base_address + 0x18);
};

/// SDMMC
pub const SDMMC = struct {

const base_address = 0x40012c00;
/// SDMMC_POWER
const SDMMC_POWER_val = packed struct {
/// PWRCTRL [0:1]
/// SDMMC state control bits. These bits can
PWRCTRL: u2 = 0,
/// VSWITCH [2:2]
/// Voltage switch sequence start. This bit
VSWITCH: u1 = 0,
/// VSWITCHEN [3:3]
/// Voltage switch procedure enable. This
VSWITCHEN: u1 = 0,
/// DIRPOL [4:4]
/// Data and command direction signals
DIRPOL: u1 = 0,
/// unused [5:31]
_unused5: u3 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// SDMMC power control register
pub const SDMMC_POWER = MMIO(SDMMC_POWER_val).init(base_address + 0x0);

/// SDMMC_CLKCR
const SDMMC_CLKCR_val = packed struct {
/// CLKDIV [0:9]
/// Clock divide factor This bit can only be
CLKDIV: u10 = 0,
/// unused [10:11]
_unused10: u2 = 0,
/// PWRSAV [12:12]
/// Power saving configuration bit This bit
PWRSAV: u1 = 0,
/// unused [13:13]
_unused13: u1 = 0,
/// WIDBUS [14:15]
/// Wide bus mode enable bit This bit can
WIDBUS: u2 = 0,
/// NEGEDGE [16:16]
/// SDMMC_CK dephasing selection bit for
NEGEDGE: u1 = 0,
/// HWFC_EN [17:17]
/// Hardware flow control enable This bit
HWFC_EN: u1 = 0,
/// DDR [18:18]
/// Data rate signaling selection This bit
DDR: u1 = 0,
/// BUSSPEED [19:19]
/// Bus speed mode selection between DS, HS,
BUSSPEED: u1 = 0,
/// SELCLKRX [20:21]
/// Receive clock selection. These bits can
SELCLKRX: u2 = 0,
/// unused [22:31]
_unused22: u2 = 0,
_unused24: u8 = 0,
};
/// The SDMMC_CLKCR register controls the
pub const SDMMC_CLKCR = MMIO(SDMMC_CLKCR_val).init(base_address + 0x4);

/// SDMMC_ARGR
const SDMMC_ARGR_val = packed struct {
/// CMDARG [0:31]
/// Command argument. These bits can only be
CMDARG: u32 = 0,
};
/// The SDMMC_ARGR register contains a 32-bit
pub const SDMMC_ARGR = MMIO(SDMMC_ARGR_val).init(base_address + 0x8);

/// SDMMC_CMDR
const SDMMC_CMDR_val = packed struct {
/// CMDINDEX [0:5]
/// Command index. This bit can only be
CMDINDEX: u6 = 0,
/// CMDTRANS [6:6]
/// The CPSM treats the command as a data
CMDTRANS: u1 = 0,
/// CMDSTOP [7:7]
/// The CPSM treats the command as a Stop
CMDSTOP: u1 = 0,
/// WAITRESP [8:9]
/// Wait for response bits. This bit can
WAITRESP: u2 = 0,
/// WAITINT [10:10]
/// CPSM waits for interrupt request. If
WAITINT: u1 = 0,
/// WAITPEND [11:11]
/// CPSM Waits for end of data transfer
WAITPEND: u1 = 0,
/// CPSMEN [12:12]
/// Command path state machine (CPSM) Enable
CPSMEN: u1 = 0,
/// DTHOLD [13:13]
/// Hold new data block transmission and
DTHOLD: u1 = 0,
/// BOOTMODE [14:14]
/// Select the boot mode procedure to be
BOOTMODE: u1 = 0,
/// BOOTEN [15:15]
/// Enable boot mode
BOOTEN: u1 = 0,
/// CMDSUSPEND [16:16]
/// The CPSM treats the command as a Suspend
CMDSUSPEND: u1 = 0,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// The SDMMC_CMDR register contains the command
pub const SDMMC_CMDR = MMIO(SDMMC_CMDR_val).init(base_address + 0xc);

/// SDMMC_RESP1R
const SDMMC_RESP1R_val = packed struct {
/// CARDSTATUS1 [0:31]
/// see Table404.
CARDSTATUS1: u32 = 0,
};
/// The SDMMC_RESP1/2/3/4R registers contain the
pub const SDMMC_RESP1R = MMIO(SDMMC_RESP1R_val).init(base_address + 0x10);

/// SDMMC_RESP2R
const SDMMC_RESP2R_val = packed struct {
/// CARDSTATUS2 [0:31]
/// see Table404.
CARDSTATUS2: u32 = 0,
};
/// The SDMMC_RESP1/2/3/4R registers contain the
pub const SDMMC_RESP2R = MMIO(SDMMC_RESP2R_val).init(base_address + 0x14);

/// SDMMC_RESP3R
const SDMMC_RESP3R_val = packed struct {
/// CARDSTATUS3 [0:31]
/// see Table404.
CARDSTATUS3: u32 = 0,
};
/// The SDMMC_RESP1/2/3/4R registers contain the
pub const SDMMC_RESP3R = MMIO(SDMMC_RESP3R_val).init(base_address + 0x18);

/// SDMMC_RESP4R
const SDMMC_RESP4R_val = packed struct {
/// CARDSTATUS4 [0:31]
/// see Table404.
CARDSTATUS4: u32 = 0,
};
/// The SDMMC_RESP1/2/3/4R registers contain the
pub const SDMMC_RESP4R = MMIO(SDMMC_RESP4R_val).init(base_address + 0x1c);

/// SDMMC_DTIMER
const SDMMC_DTIMER_val = packed struct {
/// DATATIME [0:31]
/// Data and R1b busy timeout period This
DATATIME: u32 = 0,
};
/// The SDMMC_DTIMER register contains the data
pub const SDMMC_DTIMER = MMIO(SDMMC_DTIMER_val).init(base_address + 0x24);

/// SDMMC_DLENR
const SDMMC_DLENR_val = packed struct {
/// DATALENGTH [0:24]
/// Data length value This register can only
DATALENGTH: u25 = 0,
/// unused [25:31]
_unused25: u7 = 0,
};
/// The SDMMC_DLENR register contains the number
pub const SDMMC_DLENR = MMIO(SDMMC_DLENR_val).init(base_address + 0x28);

/// SDMMC_DCTRL
const SDMMC_DCTRL_val = packed struct {
/// DTEN [0:0]
/// Data transfer enable bit This bit can
DTEN: u1 = 0,
/// DTDIR [1:1]
/// Data transfer direction selection This
DTDIR: u1 = 0,
/// DTMODE [2:3]
/// Data transfer mode selection. This bit
DTMODE: u2 = 0,
/// DBLOCKSIZE [4:7]
/// Data block size This bit can only be
DBLOCKSIZE: u4 = 0,
/// RWSTART [8:8]
/// Read wait start. If this bit is set,
RWSTART: u1 = 0,
/// RWSTOP [9:9]
/// Read wait stop This bit is written by
RWSTOP: u1 = 0,
/// RWMOD [10:10]
/// Read wait mode. This bit can only be
RWMOD: u1 = 0,
/// SDIOEN [11:11]
/// SD I/O interrupt enable functions This
SDIOEN: u1 = 0,
/// BOOTACKEN [12:12]
/// Enable the reception of the boot
BOOTACKEN: u1 = 0,
/// FIFORST [13:13]
/// FIFO reset, will flush any remaining
FIFORST: u1 = 0,
/// unused [14:31]
_unused14: u2 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// The SDMMC_DCTRL register control the data
pub const SDMMC_DCTRL = MMIO(SDMMC_DCTRL_val).init(base_address + 0x2c);

/// SDMMC_DCNTR
const SDMMC_DCNTR_val = packed struct {
/// DATACOUNT [0:26]
/// Data count value When read, the number
DATACOUNT: u27 = 0,
/// unused [27:31]
_unused27: u5 = 0,
};
/// The SDMMC_DCNTR register loads the value
pub const SDMMC_DCNTR = MMIO(SDMMC_DCNTR_val).init(base_address + 0x30);

/// SDMMC_STAR
const SDMMC_STAR_val = packed struct {
/// CCRCFAIL [0:0]
/// Command response received (CRC check
CCRCFAIL: u1 = 0,
/// DCRCFAIL [1:1]
/// Data block sent/received (CRC check
DCRCFAIL: u1 = 0,
/// CTIMEOUT [2:2]
/// Command response timeout. Interrupt flag
CTIMEOUT: u1 = 0,
/// DTIMEOUT [3:3]
/// Data timeout. Interrupt flag is cleared
DTIMEOUT: u1 = 0,
/// TXUNDERR [4:4]
/// Transmit FIFO underrun error or IDMA
TXUNDERR: u1 = 0,
/// RXOVERR [5:5]
/// Received FIFO overrun error or IDMA
RXOVERR: u1 = 0,
/// CMDREND [6:6]
/// Command response received (CRC check
CMDREND: u1 = 0,
/// CMDSENT [7:7]
/// Command sent (no response required).
CMDSENT: u1 = 0,
/// DATAEND [8:8]
/// Data transfer ended correctly. (data
DATAEND: u1 = 0,
/// DHOLD [9:9]
/// Data transfer Hold. Interrupt flag is
DHOLD: u1 = 0,
/// DBCKEND [10:10]
/// Data block sent/received. (CRC check
DBCKEND: u1 = 0,
/// DABORT [11:11]
/// Data transfer aborted by CMD12.
DABORT: u1 = 0,
/// DPSMACT [12:12]
/// Data path state machine active, i.e. not
DPSMACT: u1 = 0,
/// CPSMACT [13:13]
/// Command path state machine active, i.e.
CPSMACT: u1 = 0,
/// TXFIFOHE [14:14]
/// Transmit FIFO half empty At least half
TXFIFOHE: u1 = 0,
/// RXFIFOHF [15:15]
/// Receive FIFO half full There are at
RXFIFOHF: u1 = 0,
/// TXFIFOF [16:16]
/// Transmit FIFO full This is a hardware
TXFIFOF: u1 = 0,
/// RXFIFOF [17:17]
/// Receive FIFO full This bit is cleared
RXFIFOF: u1 = 0,
/// TXFIFOE [18:18]
/// Transmit FIFO empty This bit is cleared
TXFIFOE: u1 = 0,
/// RXFIFOE [19:19]
/// Receive FIFO empty This is a hardware
RXFIFOE: u1 = 0,
/// BUSYD0 [20:20]
/// Inverted value of SDMMC_D0 line (Busy),
BUSYD0: u1 = 0,
/// BUSYD0END [21:21]
/// end of SDMMC_D0 Busy following a CMD
BUSYD0END: u1 = 0,
/// SDIOIT [22:22]
/// SDIO interrupt received. Interrupt flag
SDIOIT: u1 = 0,
/// ACKFAIL [23:23]
/// Boot acknowledgment received (boot
ACKFAIL: u1 = 0,
/// ACKTIMEOUT [24:24]
/// Boot acknowledgment timeout. Interrupt
ACKTIMEOUT: u1 = 0,
/// VSWEND [25:25]
/// Voltage switch critical timing section
VSWEND: u1 = 0,
/// CKSTOP [26:26]
/// SDMMC_CK stopped in Voltage switch
CKSTOP: u1 = 0,
/// IDMATE [27:27]
/// IDMA transfer error. Interrupt flag is
IDMATE: u1 = 0,
/// IDMABTC [28:28]
/// IDMA buffer transfer complete. interrupt
IDMABTC: u1 = 0,
/// unused [29:31]
_unused29: u3 = 0,
};
/// The SDMMC_STAR register is a read-only
pub const SDMMC_STAR = MMIO(SDMMC_STAR_val).init(base_address + 0x34);

/// SDMMC_ICR
const SDMMC_ICR_val = packed struct {
/// CCRCFAILC [0:0]
/// CCRCFAIL flag clear bit Set by software
CCRCFAILC: u1 = 0,
/// DCRCFAILC [1:1]
/// DCRCFAIL flag clear bit Set by software
DCRCFAILC: u1 = 0,
/// CTIMEOUTC [2:2]
/// CTIMEOUT flag clear bit Set by software
CTIMEOUTC: u1 = 0,
/// DTIMEOUTC [3:3]
/// DTIMEOUT flag clear bit Set by software
DTIMEOUTC: u1 = 0,
/// TXUNDERRC [4:4]
/// TXUNDERR flag clear bit Set by software
TXUNDERRC: u1 = 0,
/// RXOVERRC [5:5]
/// RXOVERR flag clear bit Set by software
RXOVERRC: u1 = 0,
/// CMDRENDC [6:6]
/// CMDREND flag clear bit Set by software
CMDRENDC: u1 = 0,
/// CMDSENTC [7:7]
/// CMDSENT flag clear bit Set by software
CMDSENTC: u1 = 0,
/// DATAENDC [8:8]
/// DATAEND flag clear bit Set by software
DATAENDC: u1 = 0,
/// DHOLDC [9:9]
/// DHOLD flag clear bit Set by software to
DHOLDC: u1 = 0,
/// DBCKENDC [10:10]
/// DBCKEND flag clear bit Set by software
DBCKENDC: u1 = 0,
/// DABORTC [11:11]
/// DABORT flag clear bit Set by software to
DABORTC: u1 = 0,
/// unused [12:20]
_unused12: u4 = 0,
_unused16: u5 = 0,
/// BUSYD0ENDC [21:21]
/// BUSYD0END flag clear bit Set by software
BUSYD0ENDC: u1 = 0,
/// SDIOITC [22:22]
/// SDIOIT flag clear bit Set by software to
SDIOITC: u1 = 0,
/// ACKFAILC [23:23]
/// ACKFAIL flag clear bit Set by software
ACKFAILC: u1 = 0,
/// ACKTIMEOUTC [24:24]
/// ACKTIMEOUT flag clear bit Set by
ACKTIMEOUTC: u1 = 0,
/// VSWENDC [25:25]
/// VSWEND flag clear bit Set by software to
VSWENDC: u1 = 0,
/// CKSTOPC [26:26]
/// CKSTOP flag clear bit Set by software to
CKSTOPC: u1 = 0,
/// IDMATEC [27:27]
/// IDMA transfer error clear bit Set by
IDMATEC: u1 = 0,
/// IDMABTCC [28:28]
/// IDMA buffer transfer complete clear bit
IDMABTCC: u1 = 0,
/// unused [29:31]
_unused29: u3 = 0,
};
/// The SDMMC_ICR register is a write-only
pub const SDMMC_ICR = MMIO(SDMMC_ICR_val).init(base_address + 0x38);

/// SDMMC_MASKR
const SDMMC_MASKR_val = packed struct {
/// CCRCFAILIE [0:0]
/// Command CRC fail interrupt enable Set
CCRCFAILIE: u1 = 0,
/// DCRCFAILIE [1:1]
/// Data CRC fail interrupt enable Set and
DCRCFAILIE: u1 = 0,
/// CTIMEOUTIE [2:2]
/// Command timeout interrupt enable Set and
CTIMEOUTIE: u1 = 0,
/// DTIMEOUTIE [3:3]
/// Data timeout interrupt enable Set and
DTIMEOUTIE: u1 = 0,
/// TXUNDERRIE [4:4]
/// Tx FIFO underrun error interrupt enable
TXUNDERRIE: u1 = 0,
/// RXOVERRIE [5:5]
/// Rx FIFO overrun error interrupt enable
RXOVERRIE: u1 = 0,
/// CMDRENDIE [6:6]
/// Command response received interrupt
CMDRENDIE: u1 = 0,
/// CMDSENTIE [7:7]
/// Command sent interrupt enable Set and
CMDSENTIE: u1 = 0,
/// DATAENDIE [8:8]
/// Data end interrupt enable Set and
DATAENDIE: u1 = 0,
/// DHOLDIE [9:9]
/// Data hold interrupt enable Set and
DHOLDIE: u1 = 0,
/// DBCKENDIE [10:10]
/// Data block end interrupt enable Set and
DBCKENDIE: u1 = 0,
/// DABORTIE [11:11]
/// Data transfer aborted interrupt enable
DABORTIE: u1 = 0,
/// unused [12:13]
_unused12: u2 = 0,
/// TXFIFOHEIE [14:14]
/// Tx FIFO half empty interrupt enable Set
TXFIFOHEIE: u1 = 0,
/// RXFIFOHFIE [15:15]
/// Rx FIFO half full interrupt enable Set
RXFIFOHFIE: u1 = 0,
/// unused [16:16]
_unused16: u1 = 0,
/// RXFIFOFIE [17:17]
/// Rx FIFO full interrupt enable Set and
RXFIFOFIE: u1 = 0,
/// TXFIFOEIE [18:18]
/// Tx FIFO empty interrupt enable Set and
TXFIFOEIE: u1 = 0,
/// unused [19:20]
_unused19: u2 = 0,
/// BUSYD0ENDIE [21:21]
/// BUSYD0END interrupt enable Set and
BUSYD0ENDIE: u1 = 0,
/// SDIOITIE [22:22]
/// SDIO mode interrupt received interrupt
SDIOITIE: u1 = 0,
/// ACKFAILIE [23:23]
/// Acknowledgment Fail interrupt enable Set
ACKFAILIE: u1 = 0,
/// ACKTIMEOUTIE [24:24]
/// Acknowledgment timeout interrupt enable
ACKTIMEOUTIE: u1 = 0,
/// VSWENDIE [25:25]
/// Voltage switch critical timing section
VSWENDIE: u1 = 0,
/// CKSTOPIE [26:26]
/// Voltage Switch clock stopped interrupt
CKSTOPIE: u1 = 0,
/// unused [27:27]
_unused27: u1 = 0,
/// IDMABTCIE [28:28]
/// IDMA buffer transfer complete interrupt
IDMABTCIE: u1 = 0,
/// unused [29:31]
_unused29: u3 = 0,
};
/// The interrupt mask register determines which
pub const SDMMC_MASKR = MMIO(SDMMC_MASKR_val).init(base_address + 0x3c);

/// SDMMC_ACKTIMER
const SDMMC_ACKTIMER_val = packed struct {
/// ACKTIME [0:24]
/// Boot acknowledgment timeout period This
ACKTIME: u25 = 0,
/// unused [25:31]
_unused25: u7 = 0,
};
/// The SDMMC_ACKTIMER register contains the
pub const SDMMC_ACKTIMER = MMIO(SDMMC_ACKTIMER_val).init(base_address + 0x40);

/// SDMMC_IDMACTRLR
const SDMMC_IDMACTRLR_val = packed struct {
/// IDMAEN [0:0]
/// IDMA enable This bit can only be written
IDMAEN: u1 = 0,
/// IDMABMODE [1:1]
/// Buffer mode selection. This bit can only
IDMABMODE: u1 = 0,
/// IDMABACT [2:2]
/// Double buffer mode active buffer
IDMABACT: u1 = 0,
/// unused [3:31]
_unused3: u5 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// The receive and transmit FIFOs can be read
pub const SDMMC_IDMACTRLR = MMIO(SDMMC_IDMACTRLR_val).init(base_address + 0x50);

/// SDMMC_IDMABSIZER
const SDMMC_IDMABSIZER_val = packed struct {
/// unused [0:4]
_unused0: u5 = 0,
/// IDMABNDT [5:12]
/// Number of transfers per buffer. This
IDMABNDT: u8 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// The SDMMC_IDMABSIZER register contains the
pub const SDMMC_IDMABSIZER = MMIO(SDMMC_IDMABSIZER_val).init(base_address + 0x54);

/// SDMMC_IDMABASE0R
const SDMMC_IDMABASE0R_val = packed struct {
/// IDMABASE0 [0:31]
/// Buffer 0 memory base address bits
IDMABASE0: u32 = 0,
};
/// The SDMMC_IDMABASE0R register contains the
pub const SDMMC_IDMABASE0R = MMIO(SDMMC_IDMABASE0R_val).init(base_address + 0x58);

/// SDMMC_IDMABASE1R
const SDMMC_IDMABASE1R_val = packed struct {
/// IDMABASE1 [0:31]
/// Buffer 1 memory base address, shall be
IDMABASE1: u32 = 0,
};
/// The SDMMC_IDMABASE1R register contains the
pub const SDMMC_IDMABASE1R = MMIO(SDMMC_IDMABASE1R_val).init(base_address + 0x5c);

/// SDMMC_RESPCMDR
const SDMMC_RESPCMDR_val = packed struct {
/// RESPCMD [0:5]
/// Response command index Read-only bit
RESPCMD: u6 = 0,
/// unused [6:31]
_unused6: u2 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// The SDMMC_RESPCMDR register contains the
pub const SDMMC_RESPCMDR = MMIO(SDMMC_RESPCMDR_val).init(base_address + 0x60);

/// SDMMC_FIFOR
const SDMMC_FIFOR_val = packed struct {
/// FIFODATA [0:31]
/// Receive and transmit FIFO data This
FIFODATA: u32 = 0,
};
/// The receive and transmit FIFOs can be only
pub const SDMMC_FIFOR = MMIO(SDMMC_FIFOR_val).init(base_address + 0x80);

/// SDMMC_VER
const SDMMC_VER_val = packed struct {
/// MINREV [0:3]
/// IP minor revision number.
MINREV: u4 = 0,
/// MAJREV [4:7]
/// IP major revision number.
MAJREV: u4 = 1,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// SDMMC IP version register
pub const SDMMC_VER = MMIO(SDMMC_VER_val).init(base_address + 0x3f4);

/// SDMMC_ID
const SDMMC_ID_val = packed struct {
/// IP_ID [0:31]
/// SDMMC IP identification.
IP_ID: u32 = 1310754,
};
/// SDMMC IP identification
pub const SDMMC_ID = MMIO(SDMMC_ID_val).init(base_address + 0x3f8);
};

/// HDMI-CEC controller
pub const HDMI_CEC = struct {

const base_address = 0x40006c00;
/// CEC_CR
const CEC_CR_val = packed struct {
/// CECEN [0:0]
/// CEC Enable
CECEN: u1 = 0,
/// TXSOM [1:1]
/// Tx Start Of Message
TXSOM: u1 = 0,
/// TXEOM [2:2]
/// Tx End Of Message
TXEOM: u1 = 0,
/// unused [3:31]
_unused3: u5 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// CEC control register
pub const CEC_CR = MMIO(CEC_CR_val).init(base_address + 0x0);

/// CEC_CFGR
const CEC_CFGR_val = packed struct {
/// SFT [0:2]
/// Signal Free Time
SFT: u3 = 0,
/// RXTOL [3:3]
/// Rx-Tolerance
RXTOL: u1 = 0,
/// BRESTP [4:4]
/// Rx-Stop on Bit Rising
BRESTP: u1 = 0,
/// BREGEN [5:5]
/// Generate Error-Bit on Bit Rising
BREGEN: u1 = 0,
/// LBPEGEN [6:6]
/// Generate Error-Bit on Long Bit Period
LBPEGEN: u1 = 0,
/// BRDNOGEN [7:7]
/// Avoid Error-Bit Generation in
BRDNOGEN: u1 = 0,
/// SFTOP [8:8]
/// SFT Option Bit
SFTOP: u1 = 0,
/// unused [9:15]
_unused9: u7 = 0,
/// OAR [16:30]
/// Own addresses
OAR: u15 = 0,
/// LSTN [31:31]
/// Listen mode
LSTN: u1 = 0,
};
/// CEC configuration register
pub const CEC_CFGR = MMIO(CEC_CFGR_val).init(base_address + 0x4);

/// CEC_TXDR
const CEC_TXDR_val = packed struct {
/// TXD [0:7]
/// Tx Data register
TXD: u8 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// CEC Tx data register
pub const CEC_TXDR = MMIO(CEC_TXDR_val).init(base_address + 0x8);

/// CEC_RXDR
const CEC_RXDR_val = packed struct {
/// RXD [0:7]
/// Rx Data register
RXD: u8 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// CEC Rx Data Register
pub const CEC_RXDR = MMIO(CEC_RXDR_val).init(base_address + 0xc);

/// CEC_ISR
const CEC_ISR_val = packed struct {
/// RXBR [0:0]
/// Rx-Byte Received
RXBR: u1 = 0,
/// RXEND [1:1]
/// End Of Reception
RXEND: u1 = 0,
/// RXOVR [2:2]
/// Rx-Overrun
RXOVR: u1 = 0,
/// BRE [3:3]
/// Rx-Bit Rising Error
BRE: u1 = 0,
/// SBPE [4:4]
/// Rx-Short Bit Period Error
SBPE: u1 = 0,
/// LBPE [5:5]
/// Rx-Long Bit Period Error
LBPE: u1 = 0,
/// RXACKE [6:6]
/// Rx-Missing Acknowledge
RXACKE: u1 = 0,
/// ARBLST [7:7]
/// Arbitration Lost
ARBLST: u1 = 0,
/// TXBR [8:8]
/// Tx-Byte Request
TXBR: u1 = 0,
/// TXEND [9:9]
/// End of Transmission
TXEND: u1 = 0,
/// TXUDR [10:10]
/// Tx-Buffer Underrun
TXUDR: u1 = 0,
/// TXERR [11:11]
/// Tx-Error
TXERR: u1 = 0,
/// TXACKE [12:12]
/// Tx-Missing Acknowledge
TXACKE: u1 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// CEC Interrupt and Status
pub const CEC_ISR = MMIO(CEC_ISR_val).init(base_address + 0x10);

/// CEC_IER
const CEC_IER_val = packed struct {
/// RXBRIE [0:0]
/// Rx-Byte Received Interrupt
RXBRIE: u1 = 0,
/// RXENDIE [1:1]
/// End Of Reception Interrupt
RXENDIE: u1 = 0,
/// RXOVRIE [2:2]
/// Rx-Buffer Overrun Interrupt
RXOVRIE: u1 = 0,
/// BREIE [3:3]
/// Bit Rising Error Interrupt
BREIE: u1 = 0,
/// SBPEIE [4:4]
/// Short Bit Period Error Interrupt
SBPEIE: u1 = 0,
/// LBPEIE [5:5]
/// Long Bit Period Error Interrupt
LBPEIE: u1 = 0,
/// RXACKIE [6:6]
/// Rx-Missing Acknowledge Error Interrupt
RXACKIE: u1 = 0,
/// ARBLSTIE [7:7]
/// Arbitration Lost Interrupt
ARBLSTIE: u1 = 0,
/// TXBRIE [8:8]
/// Tx-Byte Request Interrupt
TXBRIE: u1 = 0,
/// TXENDIE [9:9]
/// Tx-End Of Message Interrupt
TXENDIE: u1 = 0,
/// TXUDRIE [10:10]
/// Tx-Underrun Interrupt
TXUDRIE: u1 = 0,
/// TXERRIE [11:11]
/// Tx-Error Interrupt Enable
TXERRIE: u1 = 0,
/// TXACKIE [12:12]
/// Tx-Missing Acknowledge Error Interrupt
TXACKIE: u1 = 0,
/// unused [13:31]
_unused13: u3 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// CEC interrupt enable register
pub const CEC_IER = MMIO(CEC_IER_val).init(base_address + 0x14);
};

/// Floting point unit
pub const FPU = struct {

const base_address = 0xe000ef34;
/// FPCCR
const FPCCR_val = packed struct {
/// LSPACT [0:0]
/// LSPACT
LSPACT: u1 = 0,
/// USER [1:1]
/// USER
USER: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// THREAD [3:3]
/// THREAD
THREAD: u1 = 0,
/// HFRDY [4:4]
/// HFRDY
HFRDY: u1 = 0,
/// MMRDY [5:5]
/// MMRDY
MMRDY: u1 = 0,
/// BFRDY [6:6]
/// BFRDY
BFRDY: u1 = 0,
/// unused [7:7]
_unused7: u1 = 0,
/// MONRDY [8:8]
/// MONRDY
MONRDY: u1 = 0,
/// unused [9:29]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u6 = 0,
/// LSPEN [30:30]
/// LSPEN
LSPEN: u1 = 0,
/// ASPEN [31:31]
/// ASPEN
ASPEN: u1 = 0,
};
/// Floating-point context control
pub const FPCCR = MMIO(FPCCR_val).init(base_address + 0x0);

/// FPCAR
const FPCAR_val = packed struct {
/// unused [0:2]
_unused0: u3 = 0,
/// ADDRESS [3:31]
/// Location of unpopulated
ADDRESS: u29 = 0,
};
/// Floating-point context address
pub const FPCAR = MMIO(FPCAR_val).init(base_address + 0x4);

/// FPSCR
const FPSCR_val = packed struct {
/// IOC [0:0]
/// Invalid operation cumulative exception
IOC: u1 = 0,
/// DZC [1:1]
/// Division by zero cumulative exception
DZC: u1 = 0,
/// OFC [2:2]
/// Overflow cumulative exception
OFC: u1 = 0,
/// UFC [3:3]
/// Underflow cumulative exception
UFC: u1 = 0,
/// IXC [4:4]
/// Inexact cumulative exception
IXC: u1 = 0,
/// unused [5:6]
_unused5: u2 = 0,
/// IDC [7:7]
/// Input denormal cumulative exception
IDC: u1 = 0,
/// unused [8:21]
_unused8: u8 = 0,
_unused16: u6 = 0,
/// RMode [22:23]
/// Rounding Mode control
RMode: u2 = 0,
/// FZ [24:24]
/// Flush-to-zero mode control
FZ: u1 = 0,
/// DN [25:25]
/// Default NaN mode control
DN: u1 = 0,
/// AHP [26:26]
/// Alternative half-precision control
AHP: u1 = 0,
/// unused [27:27]
_unused27: u1 = 0,
/// V [28:28]
/// Overflow condition code
V: u1 = 0,
/// C [29:29]
/// Carry condition code flag
C: u1 = 0,
/// Z [30:30]
/// Zero condition code flag
Z: u1 = 0,
/// N [31:31]
/// Negative condition code
N: u1 = 0,
};
/// Floating-point status control
pub const FPSCR = MMIO(FPSCR_val).init(base_address + 0x8);
};

/// Memory protection unit
pub const MPU = struct {

const base_address = 0xe000ed90;
/// MPU_TYPER
const MPU_TYPER_val = packed struct {
/// SEPARATE [0:0]
/// Separate flag
SEPARATE: u1 = 0,
/// unused [1:7]
_unused1: u7 = 0,
/// DREGION [8:15]
/// Number of MPU data regions
DREGION: u8 = 8,
/// IREGION [16:23]
/// Number of MPU instruction
IREGION: u8 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// MPU type register
pub const MPU_TYPER = MMIO(MPU_TYPER_val).init(base_address + 0x0);

/// MPU_CTRL
const MPU_CTRL_val = packed struct {
/// ENABLE [0:0]
/// Enables the MPU
ENABLE: u1 = 0,
/// HFNMIENA [1:1]
/// Enables the operation of MPU during hard
HFNMIENA: u1 = 0,
/// PRIVDEFENA [2:2]
/// Enable priviliged software access to
PRIVDEFENA: u1 = 0,
/// unused [3:31]
_unused3: u5 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// MPU control register
pub const MPU_CTRL = MMIO(MPU_CTRL_val).init(base_address + 0x4);

/// MPU_RNR
const MPU_RNR_val = packed struct {
/// REGION [0:7]
/// MPU region
REGION: u8 = 0,
/// unused [8:31]
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// MPU region number register
pub const MPU_RNR = MMIO(MPU_RNR_val).init(base_address + 0x8);

/// MPU_RBAR
const MPU_RBAR_val = packed struct {
/// REGION [0:3]
/// MPU region field
REGION: u4 = 0,
/// VALID [4:4]
/// MPU region number valid
VALID: u1 = 0,
/// ADDR [5:31]
/// Region base address field
ADDR: u27 = 0,
};
/// MPU region base address
pub const MPU_RBAR = MMIO(MPU_RBAR_val).init(base_address + 0xc);

/// MPU_RASR
const MPU_RASR_val = packed struct {
/// ENABLE [0:0]
/// Region enable bit.
ENABLE: u1 = 0,
/// SIZE [1:5]
/// Size of the MPU protection
SIZE: u5 = 0,
/// unused [6:7]
_unused6: u2 = 0,
/// SRD [8:15]
/// Subregion disable bits
SRD: u8 = 0,
/// B [16:16]
/// memory attribute
B: u1 = 0,
/// C [17:17]
/// memory attribute
C: u1 = 0,
/// S [18:18]
/// Shareable memory attribute
S: u1 = 0,
/// TEX [19:21]
/// memory attribute
TEX: u3 = 0,
/// unused [22:23]
_unused22: u2 = 0,
/// AP [24:26]
/// Access permission
AP: u3 = 0,
/// unused [27:27]
_unused27: u1 = 0,
/// XN [28:28]
/// Instruction access disable
XN: u1 = 0,
/// unused [29:31]
_unused29: u3 = 0,
};
/// MPU region attribute and size
pub const MPU_RASR = MMIO(MPU_RASR_val).init(base_address + 0x10);
};

/// SysTick timer
pub const STK = struct {

const base_address = 0xe000e010;
/// CTRL
const CTRL_val = packed struct {
/// ENABLE [0:0]
/// Counter enable
ENABLE: u1 = 0,
/// TICKINT [1:1]
/// SysTick exception request
TICKINT: u1 = 0,
/// CLKSOURCE [2:2]
/// Clock source selection
CLKSOURCE: u1 = 0,
/// unused [3:15]
_unused3: u5 = 0,
_unused8: u8 = 0,
/// COUNTFLAG [16:16]
/// COUNTFLAG
COUNTFLAG: u1 = 0,
/// unused [17:31]
_unused17: u7 = 0,
_unused24: u8 = 0,
};
/// SysTick control and status
pub const CTRL = MMIO(CTRL_val).init(base_address + 0x0);

/// LOAD
const LOAD_val = packed struct {
/// RELOAD [0:23]
/// RELOAD value
RELOAD: u24 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// SysTick reload value register
pub const LOAD = MMIO(LOAD_val).init(base_address + 0x4);

/// VAL
const VAL_val = packed struct {
/// CURRENT [0:23]
/// Current counter value
CURRENT: u24 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// SysTick current value register
pub const VAL = MMIO(VAL_val).init(base_address + 0x8);

/// CALIB
const CALIB_val = packed struct {
/// TENMS [0:23]
/// Calibration value
TENMS: u24 = 0,
/// unused [24:29]
_unused24: u6 = 0,
/// SKEW [30:30]
/// SKEW flag: Indicates whether the TENMS
SKEW: u1 = 0,
/// NOREF [31:31]
/// NOREF flag. Reads as zero
NOREF: u1 = 0,
};
/// SysTick calibration value
pub const CALIB = MMIO(CALIB_val).init(base_address + 0xc);
};

/// System control block
pub const SCB = struct {

const base_address = 0xe000ed00;
/// CPUID
const CPUID_val = packed struct {
/// Revision [0:3]
/// Revision number
Revision: u4 = 1,
/// PartNo [4:15]
/// Part number of the
PartNo: u12 = 3108,
/// Constant [16:19]
/// Reads as 0xF
Constant: u4 = 15,
/// Variant [20:23]
/// Variant number
Variant: u4 = 0,
/// Implementer [24:31]
/// Implementer code
Implementer: u8 = 65,
};
/// CPUID base register
pub const CPUID = MMIO(CPUID_val).init(base_address + 0x0);

/// ICSR
const ICSR_val = packed struct {
/// VECTACTIVE [0:8]
/// Active vector
VECTACTIVE: u9 = 0,
/// unused [9:10]
_unused9: u2 = 0,
/// RETTOBASE [11:11]
/// Return to base level
RETTOBASE: u1 = 0,
/// VECTPENDING [12:18]
/// Pending vector
VECTPENDING: u7 = 0,
/// unused [19:21]
_unused19: u3 = 0,
/// ISRPENDING [22:22]
/// Interrupt pending flag
ISRPENDING: u1 = 0,
/// unused [23:24]
_unused23: u1 = 0,
_unused24: u1 = 0,
/// PENDSTCLR [25:25]
/// SysTick exception clear-pending
PENDSTCLR: u1 = 0,
/// PENDSTSET [26:26]
/// SysTick exception set-pending
PENDSTSET: u1 = 0,
/// PENDSVCLR [27:27]
/// PendSV clear-pending bit
PENDSVCLR: u1 = 0,
/// PENDSVSET [28:28]
/// PendSV set-pending bit
PENDSVSET: u1 = 0,
/// unused [29:30]
_unused29: u2 = 0,
/// NMIPENDSET [31:31]
/// NMI set-pending bit.
NMIPENDSET: u1 = 0,
};
/// Interrupt control and state
pub const ICSR = MMIO(ICSR_val).init(base_address + 0x4);

/// VTOR
const VTOR_val = packed struct {
/// unused [0:8]
_unused0: u8 = 0,
_unused8: u1 = 0,
/// TBLOFF [9:29]
/// Vector table base offset
TBLOFF: u21 = 0,
/// unused [30:31]
_unused30: u2 = 0,
};
/// Vector table offset register
pub const VTOR = MMIO(VTOR_val).init(base_address + 0x8);

/// AIRCR
const AIRCR_val = packed struct {
/// VECTRESET [0:0]
/// VECTRESET
VECTRESET: u1 = 0,
/// VECTCLRACTIVE [1:1]
/// VECTCLRACTIVE
VECTCLRACTIVE: u1 = 0,
/// SYSRESETREQ [2:2]
/// SYSRESETREQ
SYSRESETREQ: u1 = 0,
/// unused [3:7]
_unused3: u5 = 0,
/// PRIGROUP [8:10]
/// PRIGROUP
PRIGROUP: u3 = 0,
/// unused [11:14]
_unused11: u4 = 0,
/// ENDIANESS [15:15]
/// ENDIANESS
ENDIANESS: u1 = 0,
/// VECTKEYSTAT [16:31]
/// Register key
VECTKEYSTAT: u16 = 0,
};
/// Application interrupt and reset control
pub const AIRCR = MMIO(AIRCR_val).init(base_address + 0xc);

/// SCR
const SCR_val = packed struct {
/// unused [0:0]
_unused0: u1 = 0,
/// SLEEPONEXIT [1:1]
/// SLEEPONEXIT
SLEEPONEXIT: u1 = 0,
/// SLEEPDEEP [2:2]
/// SLEEPDEEP
SLEEPDEEP: u1 = 0,
/// unused [3:3]
_unused3: u1 = 0,
/// SEVEONPEND [4:4]
/// Send Event on Pending bit
SEVEONPEND: u1 = 0,
/// unused [5:31]
_unused5: u3 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// System control register
pub const SCR = MMIO(SCR_val).init(base_address + 0x10);

/// CCR
const CCR_val = packed struct {
/// NONBASETHRDENA [0:0]
/// Configures how the processor enters
NONBASETHRDENA: u1 = 0,
/// USERSETMPEND [1:1]
/// USERSETMPEND
USERSETMPEND: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// UNALIGN__TRP [3:3]
/// UNALIGN_ TRP
UNALIGN__TRP: u1 = 0,
/// DIV_0_TRP [4:4]
/// DIV_0_TRP
DIV_0_TRP: u1 = 0,
/// unused [5:7]
_unused5: u3 = 0,
/// BFHFNMIGN [8:8]
/// BFHFNMIGN
BFHFNMIGN: u1 = 0,
/// STKALIGN [9:9]
/// STKALIGN
STKALIGN: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Configuration and control
pub const CCR = MMIO(CCR_val).init(base_address + 0x14);

/// SHPR1
const SHPR1_val = packed struct {
/// PRI_4 [0:7]
/// Priority of system handler
PRI_4: u8 = 0,
/// PRI_5 [8:15]
/// Priority of system handler
PRI_5: u8 = 0,
/// PRI_6 [16:23]
/// Priority of system handler
PRI_6: u8 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// System handler priority
pub const SHPR1 = MMIO(SHPR1_val).init(base_address + 0x18);

/// SHPR2
const SHPR2_val = packed struct {
/// unused [0:23]
_unused0: u8 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
/// PRI_11 [24:31]
/// Priority of system handler
PRI_11: u8 = 0,
};
/// System handler priority
pub const SHPR2 = MMIO(SHPR2_val).init(base_address + 0x1c);

/// SHPR3
const SHPR3_val = packed struct {
/// unused [0:15]
_unused0: u8 = 0,
_unused8: u8 = 0,
/// PRI_14 [16:23]
/// Priority of system handler
PRI_14: u8 = 0,
/// PRI_15 [24:31]
/// Priority of system handler
PRI_15: u8 = 0,
};
/// System handler priority
pub const SHPR3 = MMIO(SHPR3_val).init(base_address + 0x20);

/// SHCRS
const SHCRS_val = packed struct {
/// MEMFAULTACT [0:0]
/// Memory management fault exception active
MEMFAULTACT: u1 = 0,
/// BUSFAULTACT [1:1]
/// Bus fault exception active
BUSFAULTACT: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// USGFAULTACT [3:3]
/// Usage fault exception active
USGFAULTACT: u1 = 0,
/// unused [4:6]
_unused4: u3 = 0,
/// SVCALLACT [7:7]
/// SVC call active bit
SVCALLACT: u1 = 0,
/// MONITORACT [8:8]
/// Debug monitor active bit
MONITORACT: u1 = 0,
/// unused [9:9]
_unused9: u1 = 0,
/// PENDSVACT [10:10]
/// PendSV exception active
PENDSVACT: u1 = 0,
/// SYSTICKACT [11:11]
/// SysTick exception active
SYSTICKACT: u1 = 0,
/// USGFAULTPENDED [12:12]
/// Usage fault exception pending
USGFAULTPENDED: u1 = 0,
/// MEMFAULTPENDED [13:13]
/// Memory management fault exception
MEMFAULTPENDED: u1 = 0,
/// BUSFAULTPENDED [14:14]
/// Bus fault exception pending
BUSFAULTPENDED: u1 = 0,
/// SVCALLPENDED [15:15]
/// SVC call pending bit
SVCALLPENDED: u1 = 0,
/// MEMFAULTENA [16:16]
/// Memory management fault enable
MEMFAULTENA: u1 = 0,
/// BUSFAULTENA [17:17]
/// Bus fault enable bit
BUSFAULTENA: u1 = 0,
/// USGFAULTENA [18:18]
/// Usage fault enable bit
USGFAULTENA: u1 = 0,
/// unused [19:31]
_unused19: u5 = 0,
_unused24: u8 = 0,
};
/// System handler control and state
pub const SHCRS = MMIO(SHCRS_val).init(base_address + 0x24);

/// CFSR_UFSR_BFSR_MMFSR
const CFSR_UFSR_BFSR_MMFSR_val = packed struct {
/// unused [0:0]
_unused0: u1 = 0,
/// IACCVIOL [1:1]
/// Instruction access violation
IACCVIOL: u1 = 0,
/// unused [2:2]
_unused2: u1 = 0,
/// MUNSTKERR [3:3]
/// Memory manager fault on unstacking for a
MUNSTKERR: u1 = 0,
/// MSTKERR [4:4]
/// Memory manager fault on stacking for
MSTKERR: u1 = 0,
/// MLSPERR [5:5]
/// MLSPERR
MLSPERR: u1 = 0,
/// unused [6:6]
_unused6: u1 = 0,
/// MMARVALID [7:7]
/// Memory Management Fault Address Register
MMARVALID: u1 = 0,
/// IBUSERR [8:8]
/// Instruction bus error
IBUSERR: u1 = 0,
/// PRECISERR [9:9]
/// Precise data bus error
PRECISERR: u1 = 0,
/// IMPRECISERR [10:10]
/// Imprecise data bus error
IMPRECISERR: u1 = 0,
/// UNSTKERR [11:11]
/// Bus fault on unstacking for a return
UNSTKERR: u1 = 0,
/// STKERR [12:12]
/// Bus fault on stacking for exception
STKERR: u1 = 0,
/// LSPERR [13:13]
/// Bus fault on floating-point lazy state
LSPERR: u1 = 0,
/// unused [14:14]
_unused14: u1 = 0,
/// BFARVALID [15:15]
/// Bus Fault Address Register (BFAR) valid
BFARVALID: u1 = 0,
/// UNDEFINSTR [16:16]
/// Undefined instruction usage
UNDEFINSTR: u1 = 0,
/// INVSTATE [17:17]
/// Invalid state usage fault
INVSTATE: u1 = 0,
/// INVPC [18:18]
/// Invalid PC load usage
INVPC: u1 = 0,
/// NOCP [19:19]
/// No coprocessor usage
NOCP: u1 = 0,
/// unused [20:23]
_unused20: u4 = 0,
/// UNALIGNED [24:24]
/// Unaligned access usage
UNALIGNED: u1 = 0,
/// DIVBYZERO [25:25]
/// Divide by zero usage fault
DIVBYZERO: u1 = 0,
/// unused [26:31]
_unused26: u6 = 0,
};
/// Configurable fault status
pub const CFSR_UFSR_BFSR_MMFSR = MMIO(CFSR_UFSR_BFSR_MMFSR_val).init(base_address + 0x28);

/// HFSR
const HFSR_val = packed struct {
/// unused [0:0]
_unused0: u1 = 0,
/// VECTTBL [1:1]
/// Vector table hard fault
VECTTBL: u1 = 0,
/// unused [2:29]
_unused2: u6 = 0,
_unused8: u8 = 0,
_unused16: u8 = 0,
_unused24: u6 = 0,
/// FORCED [30:30]
/// Forced hard fault
FORCED: u1 = 0,
/// DEBUG_VT [31:31]
/// Reserved for Debug use
DEBUG_VT: u1 = 0,
};
/// Hard fault status register
pub const HFSR = MMIO(HFSR_val).init(base_address + 0x2c);

/// MMFAR
const MMFAR_val = packed struct {
/// MMFAR [0:31]
/// Memory management fault
MMFAR: u32 = 0,
};
/// Memory management fault address
pub const MMFAR = MMIO(MMFAR_val).init(base_address + 0x34);

/// BFAR
const BFAR_val = packed struct {
/// BFAR [0:31]
/// Bus fault address
BFAR: u32 = 0,
};
/// Bus fault address register
pub const BFAR = MMIO(BFAR_val).init(base_address + 0x38);

/// AFSR
const AFSR_val = packed struct {
/// IMPDEF [0:31]
/// Implementation defined
IMPDEF: u32 = 0,
};
/// Auxiliary fault status
pub const AFSR = MMIO(AFSR_val).init(base_address + 0x3c);
};

/// Nested vectored interrupt
pub const NVIC_STIR = struct {

const base_address = 0xe000ef00;
/// STIR
const STIR_val = packed struct {
/// INTID [0:8]
/// Software generated interrupt
INTID: u9 = 0,
/// unused [9:31]
_unused9: u7 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Software trigger interrupt
pub const STIR = MMIO(STIR_val).init(base_address + 0x0);
};

/// Floating point unit CPACR
pub const FPU_CPACR = struct {

const base_address = 0xe000ed88;
/// CPACR
const CPACR_val = packed struct {
/// unused [0:19]
_unused0: u8 = 0,
_unused8: u8 = 0,
_unused16: u4 = 0,
/// CP [20:23]
/// CP
CP: u4 = 0,
/// unused [24:31]
_unused24: u8 = 0,
};
/// Coprocessor access control
pub const CPACR = MMIO(CPACR_val).init(base_address + 0x0);
};

/// System control block ACTLR
pub const SCB_ACTRL = struct {

const base_address = 0xe000e008;
/// ACTRL
const ACTRL_val = packed struct {
/// DISMCYCINT [0:0]
/// DISMCYCINT
DISMCYCINT: u1 = 0,
/// DISDEFWBUF [1:1]
/// DISDEFWBUF
DISDEFWBUF: u1 = 0,
/// DISFOLD [2:2]
/// DISFOLD
DISFOLD: u1 = 0,
/// unused [3:7]
_unused3: u5 = 0,
/// DISFPCA [8:8]
/// DISFPCA
DISFPCA: u1 = 0,
/// DISOOFP [9:9]
/// DISOOFP
DISOOFP: u1 = 0,
/// unused [10:31]
_unused10: u6 = 0,
_unused16: u8 = 0,
_unused24: u8 = 0,
};
/// Auxiliary control register
pub const ACTRL = MMIO(ACTRL_val).init(base_address + 0x0);
};

pub const Interrupt = struct {
  name:[]const u8,
  value:usize,
};
pub const interrupts = [_]Interrupt {
   .{ .name = "EXTI3", .value = 9 },
   .{ .name = "UART7", .value = 82 },
   .{ .name = "I2C3_EV", .value = 72 },
   .{ .name = "I2C2_EV", .value = 33 },
   .{ .name = "TIM2", .value = 28 },
   .{ .name = "OTG_FS_WKUP", .value = 42 },
   .{ .name = "RCC", .value = 5 },
   .{ .name = "DMA2_Stream6", .value = 69 },
   .{ .name = "LCD_TFT_1", .value = 89 },
   .{ .name = "DMA2_Stream7", .value = 70 },
   .{ .name = "USART1", .value = 37 },
   .{ .name = "TIM1_CC", .value = 27 },
   .{ .name = "TIM7", .value = 55 },
   .{ .name = "TIM3", .value = 29 },
   .{ .name = "USART6", .value = 71 },
   .{ .name = "ETH", .value = 61 },
   .{ .name = "DMA1_Stream4", .value = 15 },
   .{ .name = "I2C3_ER", .value = 73 },
   .{ .name = "SPI2", .value = 36 },
   .{ .name = "TIM8_CC", .value = 46 },
   .{ .name = "TIM6_DAC", .value = 54 },
   .{ .name = "DMA1_Stream6", .value = 17 },
   .{ .name = "ADC", .value = 18 },
   .{ .name = "CAN1_RX0", .value = 20 },
   .{ .name = "CAN2_RX1", .value = 65 },
   .{ .name = "DMA1_Stream5", .value = 16 },
   .{ .name = "I2C1_ER", .value = 32 },
   .{ .name = "DMA1_Stream3", .value = 14 },
   .{ .name = "EXTI1", .value = 7 },
   .{ .name = "SPI4", .value = 84 },
   .{ .name = "TIM8_UP_TIM13", .value = 44 },
   .{ .name = "DMA2_Stream3", .value = 59 },
   .{ .name = "TIM8_BRK_TIM12", .value = 43 },
   .{ .name = "DMA2_Stream4", .value = 60 },
   .{ .name = "TIM5", .value = 50 },
   .{ .name = "CAN2_TX", .value = 63 },
   .{ .name = "EXTI4", .value = 10 },
   .{ .name = "SPI1", .value = 35 },
   .{ .name = "UART4", .value = 52 },
   .{ .name = "RTC_WKUP", .value = 3 },
   .{ .name = "TIM4", .value = 30 },
   .{ .name = "CAN1_SCE", .value = 22 },
   .{ .name = "DMA1_Stream0", .value = 11 },
   .{ .name = "CAN2_RX0", .value = 64 },
   .{ .name = "CAN2_SCE", .value = 66 },
   .{ .name = "LCD_TFT", .value = 88 },
   .{ .name = "USART2", .value = 38 },
   .{ .name = "DMA1_Stream2", .value = 13 },
   .{ .name = "WWDG", .value = 0 },
   .{ .name = "UART8", .value = 83 },
   .{ .name = "FMC", .value = 48 },
   .{ .name = "DMA2_Stream1", .value = 57 },
   .{ .name = "TIM1_BRK_TIM9", .value = 24 },
   .{ .name = "ETH_WKUP", .value = 62 },
   .{ .name = "EXTI0", .value = 6 },
   .{ .name = "CAN1_RX1", .value = 21 },
   .{ .name = "DMA2_Stream2", .value = 58 },
   .{ .name = "TIM8_TRG_COM_TIM14", .value = 45 },
   .{ .name = "EXTI15_10", .value = 40 },
   .{ .name = "I2C2_ER", .value = 34 },
   .{ .name = "SPI3", .value = 51 },
   .{ .name = "OTG_FS", .value = 67 },
   .{ .name = "I2C1_EV", .value = 31 },
   .{ .name = "TIM1_TRG_COM_TIM11", .value = 26 },
   .{ .name = "DCMI", .value = 78 },
   .{ .name = "RTC_Alarm", .value = 41 },
   .{ .name = "DMA1_Stream7", .value = 47 },
   .{ .name = "USART3", .value = 39 },
   .{ .name = "CAN1_TX", .value = 19 },
   .{ .name = "UART5", .value = 53 },
   .{ .name = "TIM1_UP_TIM10", .value = 25 },
   .{ .name = "TAMP_STAMP", .value = 2 },
   .{ .name = "EXTI9_5", .value = 23 },
   .{ .name = "DMA1_Stream1", .value = 12 },
   .{ .name = "FLASH", .value = 4 },
   .{ .name = "DMA2_Stream5", .value = 68 },
   .{ .name = "EXTI2", .value = 8 },
   .{ .name = "DMA2_Stream0", .value = 56 },
   .{ .name = "FPU", .value = 81 },
};
