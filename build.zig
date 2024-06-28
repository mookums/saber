const std = @import("std");
pub const saber = @import("./src/saber.zig");

/// Needed to keep compiler happy.
pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // Hilt Build Commands
    const hilt = b.addExecutable(.{
        .name = "hilt",
        .root_source_file = b.path("src/hilt/hilt.zig"),
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

    // Saber Library Tests
    createTests(b, target, optimize);
}

// Tests!
inline fn createCircularBufferTests(b: *std.Build, target: anytype, optimize: anytype, testList: *std.ArrayList(*std.Build.Step.Compile)) void {
    const circular_buffer_tests = b.addTest(.{
        .root_source_file = b.path("src/lib/circular_buffer.zig"),
        .target = target,
        .optimize = optimize,
        .name = "CircularBuffer",
    });
    testList.append(circular_buffer_tests) catch {};
}

inline fn createTests(b: *std.Build, target: anytype, optimize: anytype) void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const alloc = gpa.allocator();

    var runList: std.ArrayList(*std.Build.Step.Run) = std.ArrayList(*std.Build.Step.Run).init(alloc);
    defer runList.deinit();

    var testList: std.ArrayList(*std.Build.Step.Compile) = std.ArrayList(*std.Build.Step.Compile).init(alloc);
    defer testList.deinit();

    // Create Tree Tests.
    createCircularBufferTests(b, target, optimize, &testList);
    for (testList.items) |t| {
        runList.append(b.addRunArtifact(t)) catch {};
    }

    // Similar to creating the run step earlier, this exposes a `test` step to
    // the `zig build --help` menu, providing a way for the user to request
    // running the unit tests.
    const test_step = b.step("test", "Run Unit Tests");

    for (runList.items) |r| {
        test_step.dependOn(&r.step);
    }
}
