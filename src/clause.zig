const Task = @import("./task.zig").Task;
extern var time: u64;

// List of easy to use clauses with your predicates!

pub inline fn sum_clause(sum: *bool, clause: bool) void {
    sum.* = sum.* and clause;
}

/// Creates a clause that is only true after:
///     -> The given task's last run time + time.
pub inline fn run_after(task: *Task, delay: u64) bool {
    return time >= task.last_ran + delay;
}
