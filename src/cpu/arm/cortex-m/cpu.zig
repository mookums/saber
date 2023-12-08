pub const vectors = @import("./vectors.zig").vectors;
pub const vector_struct = @import("./vectors.zig").vector_struct;

// Chip Specific Control
pub inline fn enable_interrupts() void {
    asm volatile ("cpsie i");
}

pub inline fn disable_interrupts() void {
    asm volatile ("cpsid i");
}
