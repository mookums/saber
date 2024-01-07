const std = @import("std");
const saber = @import("./saber.zig");

/// Compares two tasks and returns their order.
///
/// Prioritizes `priority` then `run_count`.
///
/// This means that two tasks with the same priority will alternate task-ticks.
fn taskPriorityCompare(_: void, a: *saber.Task, b: *saber.Task) std.math.Order {
    const order = std.math.order(a.priority, b.priority);
    if (order == std.math.Order.eq) {
        return std.math.order(b.last_ran, a.last_ran);
    } else {
        return order;
    }
}

const Scheduler: type = fn (*std.PriorityDequeue(*saber.Task, void, taskPriorityCompare), SchedulingOptions) callconv(.Inline) noreturn;

const SchedulingOptions = struct {
    /// This determines if our scheduler runs in `Predicate Mode`. This means that
    /// the scheduler will evaluate the predicate functon for each task before scheduling it.
    ///
    /// default: `true`
    predicate_mode: bool = true,
    /// This determines if our tasks are interruptable by the Chip.
    /// This means that our tasks can be preempted by interrupts like
    /// an interrupt pin going high or a timer irq.
    ///
    /// Setting this to `false` also disables the ability to use saber.time.
    ///
    /// default: `true`
    tasks_interruptable: bool = true,
};

const saberSchedulers = .{
    .basic = basic_cooperative_scheduler,
    .predicate = predicate_cooperative_scheduler,
};

// Run a saber.Task and then add it back to the Queue!
inline fn run_and_queue(task: *saber.Task, taskQueue: *std.PriorityDequeue(*saber.Task, void, taskPriorityCompare), schedulingOptions: SchedulingOptions) void {
    switch (schedulingOptions.tasks_interruptable) {
        true => {
            task.func();
            task.last_ran = saber.time;
            taskQueue.add(task) catch @panic("saber Panic: Unable to add saber.Task to queue!");
        },
        false => {
            saber.chip.disable_interrupts();
            task.func();
            saber.chip.enable_interrupts();
            task.last_ran = saber.time;
            taskQueue.add(task) catch @panic("saber Panic: Unable to add saber.Task to queue!");
        },
    }
}

/// Cooperative Schedulers
/// Runs each saber.Task in order, waiting for it to return before it runs the next one.
///
/// This one runs a basic cooperative scheduler, running tasks in the given order.
inline fn basic_cooperative_scheduler(taskQueue: *std.PriorityDequeue(*saber.Task, void, taskPriorityCompare), schedulingOptions: SchedulingOptions) noreturn {
    _ = schedulingOptions;
    _ = taskQueue;
    @compileError("Basic is not yet implemented!");
}

/// This scheduler runs a cooperative scheduler that only runs tasks that have a true predicate.
///
/// It runs them in the given order.
inline fn predicate_cooperative_scheduler(taskQueue: *std.PriorityDequeue(*saber.Task, void, taskPriorityCompare), schedulingOptions: SchedulingOptions) noreturn {
    // We need to contiously loop through our taskQueue, running whichever element ->
    // is the top priority AND has a valid predicate.

    var falseTasks = std.ArrayList(*saber.Task).init(saber.allocator);
    while (true) {
        // Create a list of the taskQueue items.
        while (taskQueue.removeMaxOrNull()) |task| {
            if (task.predicate(task)) {
                run_and_queue(task, taskQueue, schedulingOptions);
                break;
            } else {
                falseTasks.append(task) catch @panic("OOM on false task append");
            }
        }

        // Readd all the tasks we took out.
        taskQueue.addSlice(falseTasks.items) catch @panic("OOM on task queue add");
        falseTasks.shrinkAndFree(0);
    }
}

/// Creates a Scheduling object that returns a function for starting scheduling of a saber.Chord.
///
/// By default, we utilize a Cooperative Scheduler that operates on Priorities and Predicates.
/// Priorities can be ignored by not defining them in tasks.
/// Predicates can be disabled by setting `.predicate_mode` to `false.`
pub fn Scheduling(comptime schedulingOptions: SchedulingOptions) type {
    return struct {
        const Self = @This();
        // at some point, maybe this queue should be statically allocated?
        var taskQueue = std.PriorityDequeue(*saber.Task, void, taskPriorityCompare).init(saber.allocator, {});

        pub fn start(chord: saber.Chord) noreturn {
            const scheduler: Scheduler = switch (schedulingOptions.predicate_mode) {
                true => saberSchedulers.predicate,
                false => saberSchedulers.basic,
            };

            taskQueue.addSlice(chord.tasks[0..chord.count]) catch @panic("saber Panic: Unable to create saber.Task Queue for Scheduler!");
            scheduler(&taskQueue, schedulingOptions);
        }
    };
}
