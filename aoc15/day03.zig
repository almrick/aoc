const std = @import("std");
const input = @embedFile("day03.dat");

fn part1() i32 {
    // https://adventofcode.com/2015/day/3
    var houses: i32 = 0;
    for (input) |c| {
        switch (c) {
            '^' => ,
            'v' =>,
            '<' =>,
            '>' => ,
            else => unreachable
        }
    }
    return houses;
}

pub fn main() void {
    std.debug.print("Part 1 : {d}\n", .{part1()});
}
