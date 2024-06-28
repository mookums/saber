extern var __saber_data_start: usize;
extern var __saber_data_end: usize;
extern var __saber_data_load_addr: usize;
extern var __saber_bss_start: usize;
extern var __saber_bss_end: usize;

extern fn main() noreturn;
extern fn premain() void;
extern var time: u64;

extern fn saberResetHandler() noreturn;
export fn _start() callconv(.C) noreturn {
    saberResetHandler();
}

/// Default Saber Reset Handler
export fn chipResetHandler() noreturn {
    // copy data from flash into RAM
    const data_start: [*]u8 = @ptrCast(&__saber_data_start);
    const data_end: [*]u8 = @ptrCast(&__saber_data_end);
    const data_size = @intFromPtr(data_end) - @intFromPtr(data_start);
    const data_src: [*]u8 = @ptrCast(&__saber_data_load_addr);
    for (0..data_size) |i| {
        data_start[i] = data_src[i];
    }

    // clear the bss
    const bss_start: [*]u8 = @ptrCast(&__saber_bss_start);
    const bss_end: [*]u8 = @ptrCast(&__saber_bss_end);
    const bss_size = @intFromPtr(bss_end) - @intFromPtr(bss_start);
    for (bss_start[0..bss_size]) |*b| b.* = 0;

    // start
    premain();
    main();
    unreachable;
}

// Default Saber SysTick Handler
export fn chipSysTickHandler() void {
    // Increment Time!
    // We are okay with an overflow here!
    time +%= 1;
}
