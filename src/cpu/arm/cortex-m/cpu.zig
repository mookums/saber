// Chip Specific Control
pub inline fn enable_interrupts() void {
    asm volatile ("cpsie i");
}

pub inline fn disable_interrupts() void {
    asm volatile ("cpsid i");
}
