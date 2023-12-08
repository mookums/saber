const std = @import("std");
const Interrupt = @import("./registers.zig").Interrupt;
pub const interrupts = @import("./registers.zig").interrupts;

// hope is:
//
// sort the interrupts by value
// somehow put them into a vector table...
