const std = @import("std");
const Connection = std.net.Server.Connection;

const Map = std.static_string_map.StaticStringMap;

const Method = enum {
    GET,
    pub fn init(str: []const u8) !Method {
        return MethodMap.get(str).?;
    }
    pub fn isSupported(str: []const u8) bool {
        return MethodMap.get(str) != null;
    }
};

const MethodMap = Map(Method).initComptime(.{
    .{"GET", Method.GET}
});

const Request = struct {
    method: Method,
    version: []const u8,
    uri: []const u8,

    pub fn init(method: Method, version: []const u8, uri: []const u8) Request {
        return Request{
            .method = method,
            .version = version,
            .uri = uri
        };
    }
};

pub fn parse_request(request: []u8) Request {
    const first_line_index = std.mem.indexOfScalar(u8, request, '\n')
        orelse request.len;
    var info_iter = std.mem.splitScalar(u8, request[0..first_line_index], ' ');
    const method = try Method.init(info_iter.next().?);
    const version = info_iter.next().?;
    const uri = info_iter.next().?;
    return Request.init(method, version, uri);
}

pub fn read_request(connection: Connection, buffer: []u8) !void {
    const reader = connection.stream.reader();
    _ = try reader.read(buffer);
}
