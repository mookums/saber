const std = @import("std");
const cpu_vectors = @import("cpu").vectors;
const cpu_vector_struct = @import("cpu").vector_struct;
const chip_vectors = @import("./registers.zig").chip_vectors;
const chip_vector_struct = @import("./registers.zig").chip_vector_struct;

// Combines the CPU vectors and the Chip's specific interrupt vectors.
const total_vector_struct = extern struct {
    cpu: cpu_vector_struct = cpu_vectors,
    chip: chip_vector_struct = chip_vectors,
};

export const vector_table linksection(".vector_table") = total_vector_struct{};
