const std = @import("std");
pub const Saber = @import("./src/saber.zig");

fn get_saber_root() []const u8 {
    return comptime (std.fs.path.dirname(@src().file) orelse ".");
}

pub const saber_root = get_saber_root();

pub fn build(b: *std.build.Builder) void {
    _ = b;
}
