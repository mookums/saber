const std = @import("std");
const Saber = @import("./saber.zig");
const Task = @import("task.zig").Task;
const Chord = @import("chord.zig").Chord;

/// Compares two tasks and returns their order.
///
/// Prioritizes `priority` then `run_count`.
///
/// This means that two tasks with the same priority will alternate task-ticks.
fn taskPriorityCompare(_: void, a: *Task, b: *Task) std.math.Order {
    const order = std.math.order(b.priority, a.priority);
    if (order == std.math.Order.eq) {
        return std.math.order(a.run_count, b.run_count);
    } else {
        return order;
    }
}

const Scheduler: type = fn (*std.PriorityQueue(*Task, void, taskPriorityCompare), SchedulingOptions) callconv(.Inline) noreturn;

const SchedulingOptions = struct {
    /// This determines if our scheduler runs in `Predicate Mode`. This means that
    /// the scheduler will evaluate the predicate functon for each task before scheduling it.
    ///
    /// Default: `true`
    predicate_mode: bool = true,
    /// This determines if our tasks are interruptable by the Chip.
    /// This means that our tasks can be preempted by interrupts like
    /// an interrupt pin going high or a timer irq.
    ///
    /// Setting this to `false` also disables the ability to use Saber.time.
    ///
    /// Default: `true`
    tasks_interruptable: bool = true,
};

const SaberSchedulers = .{
    .basic = basic_cooperative_scheduler,
    .predicate = predicate_cooperative_scheduler,
};

// Run a Task and then add it back to the Queue!
inline fn run_and_queue(task: *Task, taskQueue: *std.PriorityQueue(*Task, void, taskPriorityCompare), schedulingOptions: SchedulingOptions) void {
    switch (schedulingOptions.tasks_interruptable) {
        true => {
            task.func();
            task.run_count +%= 1;
            task.last_ran = Saber.time;
            taskQueue.add(task) catch @panic("Saber Panic: Unable to add Task to queue!");
        },
        false => {
            Saber.chip.disable_interrupts();
            task.func();
            Saber.chip.enable_interrupts();
            task.run_count +%= 1;
            task.last_ran = Saber.time;
            taskQueue.add(task) catch @panic("Saber Panic: Unable to add Task to queue!");
        },
    }
}

/// Cooperative Schedulers
/// Runs each Task in order, waiting for it to return before it runs the next one.
///
/// This one runs a basic cooperative scheduler, running tasks in the given order.
inline fn basic_cooperative_scheduler(taskQueue: *std.PriorityQueue(*Task, void, taskPriorityCompare), schedulingOptions: SchedulingOptions) noreturn {
    while (true) {
        const currentTask: *Task = taskQueue.remove();
        run_and_queue(currentTask, taskQueue, schedulingOptions);
    }
}

/// This scheduler runs a cooperative scheduler that only runs tasks that have a true predicate.
///
/// It runs them in the given order.
inline fn predicate_cooperative_scheduler(taskQueue: *std.PriorityQueue(*Task, void, taskPriorityCompare), schedulingOptions: SchedulingOptions) noreturn {
    // We need to contiously loop through our taskQueue, running whichever element ->
    // is the top priority AND has a valid predicate.
    while (true) {
        // Create a list of the taskQueue items.
        var iter = taskQueue.iterator();
        while (iter.next()) |task| {
            if (task.predicate(task)) {
                const currentTask: *Task = taskQueue.removeIndex(iter.count - 1);
                run_and_queue(currentTask, taskQueue, schedulingOptions);
                break;
            }
        }
    }
}

/// Creates a Scheduling object that returns a function for starting scheduling of a Chord.
///
/// By default, we utilize a Cooperative Scheduler that operates on Priorities and Predicates.
/// Priorities can be ignored by not defining them in tasks.
/// Predicates can be disabled by setting `.predicate_mode` to `false.`
pub fn Scheduling(comptime schedulingOptions: SchedulingOptions) type {
    return struct {
        const Self = @This();
        // at some point, maybe this queue should be statically allocated?
        var taskQueue = std.PriorityQueue(*Task, void, taskPriorityCompare).init(Saber.allocator, {});

        pub fn start(chord: Chord) noreturn {
            const scheduler: Scheduler = switch (schedulingOptions.predicate_mode) {
                true => SaberSchedulers.predicate,
                false => SaberSchedulers.basic,
            };

            taskQueue.addSlice(chord.tasks[0..chord.count]) catch @panic("Saber Panic: Unable to create Task Queue for Scheduler!");
            scheduler(&taskQueue, schedulingOptions);
        }
    };
}
