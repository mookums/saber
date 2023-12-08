const std = @import("std");

const Chip = enum {
    STM32F446,
};

const ChipConfig = struct {
    name: []const u8,
    target: std.zig.CrossTarget,
    chip_path: []const u8,
    cpu_path: []const u8,
};

const SaberExecutableOptions = struct {
    name: []const u8,
    saber_path: std.Build.LazyPath,
    main_file: std.Build.LazyPath,
    chip: Chip,
    optimize: std.builtin.Mode,
};

inline fn chipToConfig(comptime chip: Chip) ChipConfig {
    return comptime switch (chip) {
        Chip.STM32F446 => .{
            .name = "stm32f446",
            .target = .{
                .cpu_arch = std.Target.Cpu.Arch.thumb,
                .cpu_model = .{ .explicit = &std.Target.arm.cpu.cortex_m4 },
                .os_tag = std.Target.Os.Tag.freestanding,
                .abi = std.Target.Abi.eabi,
            },
            .chip_path = "/src/chip/st/stm32f446/",
            .cpu_path = "/src/cpu/arm/cortex-m/",
        },
    };
}

pub fn addSaberExecutable(b: *std.Build.Builder, comptime options: SaberExecutableOptions) void {
    const chipConfig = comptime chipToConfig(options.chip);
    const cpu_path = options.saber_path.path ++ chipConfig.cpu_path;
    const chip_path = options.saber_path.path ++ chipConfig.chip_path;

    // we use the saber path but that doesn't lead us to where we need to go...

    const saberUtil = b.addModule("saberUtil", .{
        .source_file = .{ .path = options.saber_path.path ++ "/src/util.zig" },
    });

    // Comptime CPU Module.
    const cpu = b.addModule("cpu", .{
        .source_file = .{ .path = cpu_path ++ "cpu.zig" },
    });

    // Comptime Chip Module.
    const chip = b.addModule("chip", .{
        .source_file = .{ .path = chip_path ++ "chip.zig" },
        .dependencies = &.{ .{ .name = "util", .module = saberUtil }, .{ .name = "cpu", .module = cpu } },
    });

    // Comptime Saber Module.
    const sm = b.addModule("saber", .{
        .source_file = .{ .path = options.saber_path.path ++ "/src/saber.zig" },
        .dependencies = &.{ .{ .name = "chip", .module = chip }, .{ .name = "util", .module = saberUtil } },
    });

    // Manually import the config for the chip
    const config = chipConfig;
    const target = config.target;
    const optimize = options.optimize;

    const elf = b.addExecutable(.{
        .name = options.name ++ ".elf",
        .root_source_file = .{ .path = cpu_path ++ "handler.zig" },
        .target = target,
        .optimize = optimize,
    });

    elf.addModule("saber", sm);

    // Add Main as object
    const main = b.addObject(.{
        .name = "main",
        .root_source_file = .{ .path = options.main_file.path },
        .target = target,
        .optimize = optimize,
    });
    main.addModule("saber", sm);
    elf.addObject(main);

    // Add vector table
    const vectors = b.addObject(.{
        .name = "vectors",
        .root_source_file = .{ .path = cpu_path ++ "vectors.zig" },
        .target = target,
        .optimize = optimize,
    });
    elf.addObject(vectors);

    // Source Base Linker Script
    //
    // We should also write in a new dynamic header,
    // this way we can use the same base linker script for multiple
    // chips!
    elf.setLinkerScript(.{ .path = chip_path ++ "memory.ld" });

    // Copy the elf to the output directory.
    const save_elf = b.addInstallArtifact(elf, .{});
    b.default_step.dependOn(&save_elf.step);

    const bin = b.addObjCopy(elf.getEmittedBin(), .{
        .format = .bin,
    });
    bin.step.dependOn(&elf.step);

    // Copy the bin to the output directory
    const save_bin = b.addInstallBinFile(bin.getOutput(), options.name ++ ".bin");
    b.default_step.dependOn(&save_bin.step);
}
