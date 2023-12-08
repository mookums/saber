export fn blockingHandler() void {
    while (true) {}
}

export fn nullHandler() void {}

pub const Handler = *const fn () callconv(.C) void;
