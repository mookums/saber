// This will be an implementation of a [comptime_int]T buffer.
//
// The idea is that we create a maximum size for the buffer based on the type and
// the amount of elements.
//
// We will then be able to read and write from this buffer using a read and write head.
//
// The two heads can't be in the same place other than at the start.
//
// If the read head is right behind the write head, then we are empty.
// If the read head is right in front of the write head, then we are full.

pub fn CircularBuffer(comptime T: type) type {
    return struct {
        const Self = @This();
        // We use one of our slots as a flag...
        // so our buffer only really stores capacity - 1 elements.
        capacity: usize, // Usable Buffer Length
        buffer_length: usize, // Real Buffer Length
        buffer: []T,
        write_index: usize = 0,
        read_index: usize = 0,

        pub fn isFull(self: *Self) bool {
            return (self.write_index + 1) % self.buffer_length == self.read_index;
        }

        pub fn isEmpty(self: *Self) bool {
            return (self.write_index == self.read_index);
        }

        pub fn size(self: *Self) usize {
            // if read is greater than write,
            // our size is capacity - ((capacity - read) + write)
            //
            // if write is greater than read,
            // our size is write - read

            return if (self.read_index > self.write_index) ((self.buffer.len + 1 - self.read_index) + self.write_index) else self.write_index - self.read_index;
        }

        pub fn space(self: *Self) usize {
            return self.capacity - self.size();
        }

        pub fn init(buffer: []T) Self {
            return Self{ .buffer = buffer, .capacity = buffer.len - 1, .buffer_length = buffer.len };
        }

        pub fn write(self: *Self, item: T) !void {
            if (!isFull(self)) {
                self.buffer[self.write_index] = item;
                self.write_index = (self.write_index + 1) % self.buffer_length;
            } else {
                return error.Full;
            }
        }

        pub fn writeSlice(self: *Self, items: []T) !void {
            if (self.space() < items.len) return error.Full;

            for (items[0..items.len]) |item| {
                try self.write(item);
            }
        }

        pub fn read(self: *Self) !T {
            if (!isEmpty(self)) {
                const value = self.buffer[self.read_index];
                self.read_index = (self.read_index + 1) % self.buffer_length;
                return value;
            } else {
                return error.Empty;
            }
        }
    };
}

const testing = @import("std").testing;

test "circular_buffer fill to n-1" {
    var buffer: [10]usize = undefined;
    var storage = CircularBuffer(usize).init(&buffer);

    for (0..buffer.len - 1) |i| {
        try storage.write(i);
    }
}

test "circular_buffer writeSlice to n-1" {
    var buffer: [10]usize = undefined;
    var storage = CircularBuffer(usize).init(&buffer);

    var sampleData = [_]usize{ 0, 1, 2, 3, 4, 5, 6, 7, 8 };

    try storage.writeSlice(&sampleData);
}

test "circular_buffer overflow writeSlice" {
    var buffer: [10]usize = undefined;
    var storage = CircularBuffer(usize).init(&buffer);

    var sampleData = [_]usize{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };

    try testing.expectError(error.Full, storage.writeSlice(&sampleData));
}

test "circular_buffer fill and read" {
    var buffer: [10]usize = undefined;
    var storage = CircularBuffer(usize).init(&buffer);

    for (0..buffer.len - 1) |i| {
        try storage.write(i);
    }

    // Capacity is equal to the amount of data this buffer can hold.
    try testing.expectEqual(storage.capacity, storage.size());

    for (0..buffer.len - 1) |i| {
        try testing.expectEqual(i, try storage.read());
    }
}

test "circular_buffer overflow throws error.OutOfSpace" {
    var buffer: [10]usize = undefined;
    var storage = CircularBuffer(usize).init(&buffer);

    for (0..buffer.len - 1) |i| {
        try storage.write(i);
    }

    try testing.expectError(error.Full, storage.write(10));
}

test "circular_buffer empty read throws error.Empty" {
    var buffer: [10]usize = undefined;
    var storage = CircularBuffer(usize).init(&buffer);

    try testing.expectError(error.Empty, storage.read());
}
