const Task = @import("task.zig").Task;

/// Chords are what are scheduled to run on a processor.
///
/// count:u8 -> maximum of 256 tasks per chord
/// tasks:[*]const Task -> ptr to the start of an array of Tasks
///
/// a Chord is *essentially* a state machine :p
pub const Chord = struct {
    count: u8,
    tasks: [*]const *Task,
};
