const std = @import("std");

const Chip = enum {
    STM32F446,
};

const ChipConfig = struct {
    name: []const u8,
    target: std.Target.Query,
    chip_path: []const u8,
    cpu_path: []const u8,
};

const SaberExecutableOptions = struct {
    name: []const u8,
    main_file: std.Build.LazyPath,
    chip: Chip,
    optimize: std.builtin.OptimizeMode,
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
            .chip_path = "/chip/st/stm32f446/",
            .cpu_path = "/cpu/arm/cortex-m/",
        },
    };
}

pub fn addSaberExecutable(b: *std.Build, comptime options: SaberExecutableOptions) void {
    const chipConfig = comptime chipToConfig(options.chip);
    const root_dir = comptime (std.fs.path.dirname(@src().file) orelse ".");
    const cpu_path = root_dir ++ chipConfig.cpu_path;
    const chip_path = root_dir ++ chipConfig.chip_path;

    const util = b.addModule("util", .{
        .root_source_file = .{ .cwd_relative = root_dir ++ "/util.zig" },
    });

    const mmio = b.addModule("mmio", .{
        .root_source_file = .{ .cwd_relative = root_dir ++ "/mmio.zig" },
    });

    // Comptime CPU Module.
    const cpu = b.addModule("cpu", .{
        .root_source_file = .{ .cwd_relative = cpu_path ++ "cpu.zig" },
        .imports = &.{
            .{ .name = "mmio", .module = mmio },
        },
    });

    // Comptime Chip Module.
    const chip = b.addModule("chip", .{
        .root_source_file = .{ .cwd_relative = chip_path ++ "chip.zig" },
        .imports = &.{
            .{ .name = "cpu", .module = cpu },
            .{ .name = "util", .module = util },
            .{ .name = "mmio", .module = mmio },
        },
    });

    // Comptime Saber Module.
    const sm = b.addModule("saber", .{
        .root_source_file = .{ .cwd_relative = root_dir ++ "/saber.zig" },
        .imports = &.{
            .{ .name = "chip", .module = chip },
            .{ .name = "util", .module = util },
            .{ .name = "mmio", .module = mmio },
        },
    });

    // Manually import the config for the chip
    const config = chipConfig;
    const target = b.resolveTargetQuery(config.target);
    const optimize = options.optimize;

    const elf = b.addExecutable(.{
        .name = options.name ++ ".elf",
        .root_source_file = .{ .cwd_relative = cpu_path ++ "handler.zig" },
        .target = target,
        .optimize = optimize,
    });

    // Add Main as object
    const main = b.addObject(.{
        .name = "main",
        .root_source_file = .{ .cwd_relative = options.main_file.cwd_relative },
        .target = target,
        .optimize = optimize,
    });
    main.root_module.addImport("saber", sm);
    elf.addObject(main);

    // Add Chip Vectors
    const chip_vectors = b.addObject(.{
        .name = "chip_vectors",
        .root_source_file = .{ .cwd_relative = chip_path ++ "vectors.zig" },
        .target = target,
        .optimize = optimize,
    });
    chip_vectors.root_module.addImport("cpu", cpu);
    chip_vectors.root_module.addImport("mmio", mmio);
    elf.addObject(chip_vectors);

    // Source Base Linker Script
    //
    // We should also write in a new dynamic header,
    // this way we can use the same base linker script for multiple
    // chips!
    elf.setLinkerScript(.{ .cwd_relative = chip_path ++ "memory.ld" });

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
