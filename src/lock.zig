// I/O needs to lock sometimes
const Task = @import("./task.zig").Task;

pub const PredicateLock = struct {
    holder: ?*Task = null,
};
