const std = @import("std");
const print = @import("std").debug.print;

// pub fn range(len: usize) []const u0 {
//     return @as([*]u0, undefined)[0..len];
// }

pub fn calculate_pi(n: usize) f64 {
    var randGen = std.rand.DefaultPrng.init(0);

    var counter: i64 = 0;
    var iter: i32 = 0;
    // for (range(n)) |_| {
    //     var x = randGen.random().float(f64);
    //     var y = randGen.random().float(f64);

    //     if (x * x + y * y < 1) {
    //         counter += 1;
    //     }
    // }

    while(iter < n) {
        var x = randGen.random().float(f64);
        var y = randGen.random().float(f64);

        if (x * x + y * y < 1) {
            counter += 1;
        }
        iter += 1;
    }

    return @intToFloat(f64, 4) * @intToFloat(f64, counter) / @intToFloat(f64, n);
}

pub fn main() void {
    const number_of_iteration: usize = 1_000_000;
    var result: f64 = calculate_pi(number_of_iteration);
    print("{d} \n", .{result});
}
