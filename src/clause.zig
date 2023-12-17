const std = @import("std");
const Task = @import("./task.zig").Task;
const PredicateLock = @import("./lock.zig").PredicateLock;
extern var time: u64;

// We need to overhaul the predicate system through the use of more descriptive and effective clauses.
//
// We can generally break things up into 4 differnt types of clauses.
//
// I/O Clause -> waiting for a port, bus, response, data, etc
// Lock Clause -> waiting for a shared resource
// Time Clause -> waiting for a certain Saber.time
//
// List of easy to use clauses with your predicates!

const ClauseTag = enum {
    General,
    Lock,
    Time,
};

pub const Clause = struct {
    evaluate: fn (*Clause) bool,
};

pub fn GeneralClause(comptime T: type) type {
    return struct {
        const Self = @This();
        first: T,
        second: T,

        pub fn init(first: T, second: T) Self {
            return .{ .first = first, .second = second };
        }

        pub fn evaluate(self: *Self) bool {
            return (self.first == self.second);
        }
    };
}

pub fn TimeClause() type {
    return struct {
        const Self = @This();
        task: *Task,
        delay: u64,

        pub fn init(task: *Task, delay: u64) Self {
            return .{ .task = task, .delay = delay };
        }

        pub fn evaluate(self: *Self) bool {
            return time >= self.task.last_ran + self.delay;
        }
    };
}

pub fn LockClause() type {
    return struct {
        const Self = @This();
        task: *Task,
        lock: *PredicateLock,

        pub fn init(task: *Task, lock: *PredicateLock) Self {
            return .{ .task = task, .lock = lock };
        }

        pub fn evaluate(self: *Self) bool {
            if (self.lock.holder) |holder| {
                // If it's not us, return false.
                if (holder != self.task) {
                    // If the holder is unable to run, we are eligble to usurp.
                    if (holder.predicate(holder)) {
                        return false;
                    }
                }
            }

            // Take lock.
            self.lock.holder = self.task;
            return true;
        }
    };
}

pub inline fn lock_clause(task: *Task, lock: *PredicateLock) bool {
    if (lock.holder) |holder| {
        // If it's not us, return false.
        if (holder != task) {
            // If the holder is unable to run, we are eligble to usurp.
            if (holder.predicate(holder)) {
                return false;
            }
        }
    }

    // Take the lock if unlocked.
    lock.holder = task;
    return true;
}

/// Creates a clause that is only true after:
///     -> The given task's last run time + time.
pub inline fn time_clause(task: *Task, delay: u64) bool {
    return time >= task.last_ran + delay;
}
