const std = @import("std");
const input = @embedFile("day02.dat");

fn part1() !i32 {
    // https://adventofcode.com/2015/day/2
    var result: i32 = 0;
    var tok_input = std.mem.tokenizeAny(u8, input, "\nx");
    while (tok_input.peek()) |_| {
        const l = try std.fmt.parseInt(i32, tok_input.next().?, 10);
        const w = try std.fmt.parseInt(i32, tok_input.next().?, 10);
        const h = try std.fmt.parseInt(i32, tok_input.next().?, 10);

        const side_areas = [3]i32{ l * w, w * h, h * l };

        result += (2 * side_areas[0]) +
            (2 * side_areas[1]) +
            (2 * side_areas[2]) +
            std.mem.min(i32, &side_areas);
    }
    return result;
}

fn part2() !i32 {
    // https://adventofcode.com/2015/day/2#part2
    var result: i32 = 0;
    var tok_input = std.mem.tokenizeAny(u8, input, "\nx");
    while (tok_input.peek()) |_| {
        const l = try std.fmt.parseInt(i32, tok_input.next().?, 10);
        const w = try std.fmt.parseInt(i32, tok_input.next().?, 10);
        const h = try std.fmt.parseInt(i32, tok_input.next().?, 10);

        const side_perims = [3]i32{ (l + w) * 2, (w + h) * 2, (l + h) * 2 };

        result += std.mem.min(i32, &side_perims) + (l * w * h);
    }
    return result;
}

pub fn main() !void {
    std.debug.print("Part 1 : {d}\n", .{try part1()});
    std.debug.print("Part 2 : {d}\n", .{try part2()});
}
