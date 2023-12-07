// Data Sizes
const ga: comptime_int = 1000;
const bi: comptime_int = 1024;
pub const B: comptime_int = 1;
pub const KiB: comptime_int = bi * B;
pub const MiB: comptime_int = bi * KiB;
pub const GiB: comptime_int = bi * MiB;
pub const KB: comptime_int = ga * B;
pub const MB: comptime_int = ga * KB;
pub const GB: comptime_int = ga * MB;

// Time Sizes
pub const Millisecond = 1;
pub const Second = 1000 * Millisecond;
pub const Minute = 60 * Second;
pub const Hour = 60 * Minute;

// Freq Sizes
pub const Hz = 1;
pub const kHz = 1000 * Hz;
pub const mHz = 1000 * kHz;
pub const gHz = 1000 * mHz;
