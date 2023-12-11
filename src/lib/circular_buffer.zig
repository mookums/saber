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

pub fn CircularBuffer(comptime T: type, comptime capacity: usize) type {
    return struct {
        const Self = @This();
        // We use one of our slots as a flag...
        // so our buffer only really stores capacity - 1 elements.
        capacity: usize = capacity,
        buffer: [*]T,
        write_index: usize = 0,
        read_index: usize = 0,

        pub fn isFull(self: *Self) bool {
            return (self.write_index + 1) % self.capacity == self.read_index;
        }

        pub fn isEmpty(self: *Self) bool {
            return (self.write_index == self.read_index);
        }

        pub fn init(comptime buffer: [*]T) Self {
            return Self{ .buffer = buffer };
        }

        pub fn insert(self: *Self, item: T) !void {
            if (!isFull(self)) {
                self.buffer[self.write_index] = item;

                if (self.write_index + 1 >= self.capacity) {
                    self.write_index = 0;
                } else {
                    self.write_index += 1;
                }
            } else {
                return error.OutOfSpace;
            }
        }

        pub fn remove(self: *Self) !T {
            if (!isEmpty(self)) {
                const value = self.buffer[self.read_index];

                if (self.read_index + 1 >= self.capacity) {
                    self.read_index = 0;
                } else {
                    self.read_index += 1;
                }

                return value;
            } else {
                return error.Empty;
            }
        }
    };
}
