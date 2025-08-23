const std = @import("std");

pub const Socket = struct {
    address: std.net.Address,
    stream: std.net.Stream,

    pub fn init() !Socket {
        const ip = [4]u8{ 127, 0, 0, 1 };
        const port: u16 = 5173;
        const address: std.net.Address = std.net.Address.initIp4(ip, port);
        const socket = try std.posix.socket(
            address.any.family,
            std.posix.SOCK.STREAM,
            std.posix.IPPROTO.TCP
        );
        const stream = std.net.Stream{ .handle = socket };
        
        return Socket { .address = address, .stream = stream };
    }
};
