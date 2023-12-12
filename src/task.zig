const std = @import("std");

fn true_predicate(_: *Task) bool {
    return true;
}

/// Strut for defining Task!
///
/// Name: Task Name
/// Priority: a u8 that defines the priority. The higher the number, the higher the priority.
/// Predicate: a function that returns a bool, determines if the task can be scheduled.
/// Func: the Task function.
pub const Task = struct {
    name: []const u8,
    priority: u8 = std.math.minInt(u8),
    // At some point, there could be a benefit to inlining our predicate...
    predicate: *const fn (*Task) bool = true_predicate,
    func: *const fn () void,
    // If incremented every nanosecond aka at 1 gHz, this would take
    // ~585 years to overflow.
    //
    // So at worst, Saber is deterministic for ~585 years :p
    last_ran: u64 = 0,
};
