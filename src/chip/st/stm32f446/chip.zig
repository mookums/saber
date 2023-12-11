pub const std = @import("std");
pub const memory = @import("./memory.zig");
pub const registers = @import("./registers.zig");
const util = @import("util");

// Temporary but this is the reset frequency!
pub const frequency = 16 * util.mHz;
pub const dynamic_allocation_size = util.KiB * 50;
