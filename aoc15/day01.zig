const std = @import("std");
const input = @embedFile("day01.dat");

fn part1() i32 {
    // https://adventofcode.com/2015/day/1
    var result: i32 = 0;
    for (input) |c| {
        if (c == '(') {
            result += 1;
        } else if (c == ')') {
            result -= 1;
        }
    }
    return result;
}

fn part2() i32 {
    // https://adventofcode.com/2015/day/1#part2
    var result: i32 = 0;
    for (input, 0..) |c, idx| {
        if (result == -1) {
            return @intCast(idx);
        }

        if (c == '(') {
            result += 1;
        } else if (c == ')') {
            result -= 1;
        }
    }
    return result;
}

pub fn main() void {
    std.debug.print("Part 1 : {d}\n", .{part1()});
    std.debug.print("Part 2 : {d}\n", .{part2()});
}
