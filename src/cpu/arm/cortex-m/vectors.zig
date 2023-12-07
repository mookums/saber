export fn blockingHandler() void {
    while (true) {}
}

export fn nullHandler() void {}

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
export const vector_table linksection(".vector_table") = [_]?*const fn () callconv(.C) void{
    stackEnd, // stack
    saberResetHandler, // Reset
    saberNmiHandler, // NMI
    saberHardFaultHandler, // Hard fault
    saberMemoryManagementFaultHandler, // Memory management fault
    saberBusFaultHandler, // Bus fault
    saberUsageFaultHandler, // Usage fault
    null, // Reserved 1
    null, // Reserved 2
    null, // Reserved 3
    null, // Reserved 4
    saberSvCallHandler, // SVCall
    saberDebugMonitorHandler, // Debug monitor
    null, // Reserved 5
    saberPendSVHandler, // PendSV
    saberSysTickHandler, // SysTick
};
