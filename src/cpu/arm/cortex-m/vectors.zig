const VectorEntry = @import("mmio").VectorEntry;

extern fn blockingHandler() void;
extern fn nullHandler() void;

extern fn stackEnd() void;
extern fn saberResetHandler() void;
extern fn saberNmiHandler() void;
extern fn saberHardFaultHandler() void;
extern fn saberMemoryManagementFaultHandler() void;
extern fn saberBusFaultHandler() void;
extern fn saberUsageFaultHandler() void;
extern fn saberSvCallHandler() void;
extern fn saberDebugMonitorHandler() void;
extern fn saberPendSVHandler() void;
extern fn saberSysTickHandler() void;

// For each handler, you want for there to be a default that gets used BUT
// end user should be able to change the handler.
// We can do this with weak function linking?
//
//
// MAYBE, we have a vector table list that we just append to or can put into based on index
// then we just export the items version of it.

pub const vector_struct = extern struct {
    sp: VectorEntry = stackEnd,
    reset: VectorEntry = saberResetHandler, // Reset
    nmi: VectorEntry = saberNmiHandler, // NMI
    hardFault: VectorEntry = saberHardFaultHandler, // Hard fault
    memManage: VectorEntry = saberMemoryManagementFaultHandler, // Memory management fault
    busFault: VectorEntry = saberBusFaultHandler, // Bus fault
    usageFault: VectorEntry = saberUsageFaultHandler, // Usage fault
    r1: VectorEntry = null, // Reserved 1
    r2: VectorEntry = null, // Reserved 2
    r3: VectorEntry = null, // Reserved 3
    r4: VectorEntry = null, // Reserved 4
    SVCall: VectorEntry = saberSvCallHandler, // SVCall
    debugMon: VectorEntry = saberDebugMonitorHandler, // Debug monitor
    r5: VectorEntry = null, // Reserved 5
    pendSV: VectorEntry = saberPendSVHandler, // PendSV
    sysTick: VectorEntry = saberSysTickHandler, // SysTick
};

// export a standard vector table from the CPU
// then add on additional interrupt handlers from the chip.
//
// this way, the behavior is mostly predetermined!

pub const vectors = vector_struct{};
