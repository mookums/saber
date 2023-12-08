const std = @import("std");
pub const Saber = @import("./src/saber.zig");

inline fn get_saber_root() []const u8 {
    return comptime (std.fs.path.dirname(@src().file) orelse ".");
}

pub const saber_root = get_saber_root();

/// Needed to keep compiler happy.
pub fn build(b: *std.build.Builder) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const hilt = b.addExecutable(.{
        .name = "hilt",
        .root_source_file = .{ .path = "./src/hilt/hilt.zig" },
        .target = target,
        .optimize = optimize,
    });

    const hilt_cmd = b.addRunArtifact(hilt);

    if (b.args) |args| {
        hilt_cmd.addArgs(args);
    }

    hilt_cmd.step.dependOn(&hilt.step);
    const hilt_step = b.step("hilt", "Use the Hilt Parser to generate a registers file using a SVD");
    hilt_step.dependOn(&hilt_cmd.step);
}
