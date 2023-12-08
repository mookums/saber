const std = @import("std");
pub const Saber = @import("./src/saber.zig");

fn get_sabre_root() []const u8 {
    return comptime (std.fs.path.dirname(@src().file) orelse ".");
}

pub const sabre_root = get_sabre_root();

pub fn build(b: *std.build.Builder) void {
    _ = b;
}
