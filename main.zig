const std = @import("std");
const SocketConf = @import("config.zig");
const Socket = SocketConf.Socket;
const stdout = std.io.getStdOut().writer();
const Request = @import("request.zig");

pub fn main() !void {
    const socket: Socket = try Socket.init();
    var server = try socket.address.listen(.{});
    try stdout.print("Server address {any}\n", .{socket.address});
    const connection = try server.accept();
    var buffer: [1000]u8 = [_]u8{ 0 } ** 1000;
    _ = try Request.read_request(connection, &buffer);
    const request = Request.parse_request(&buffer);
    try stdout.print("{any}", request);
}
