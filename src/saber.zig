const std = @import("std");
pub const root = @import("root");

pub const chip = @import("chip");
pub const clause = @import("./clause.zig");
pub const Builder = @import("./builder.zig");
pub const Task = @import("./task.zig").Task;
pub const Chord = @import("./chord.zig").Chord;
pub const Scheduling = @import("./scheduler.zig").Scheduling;
pub const util = @import("util");
pub const mmio = @import("mmio");

var buffer: [chip.dynamic_allocation_size]u8 = undefined;
var fba = std.heap.FixedBufferAllocator.init(&buffer);
pub const allocator = fba.allocator();

// Milliseconds since Saber started scheduling!
pub export var time: u64 = 0;
