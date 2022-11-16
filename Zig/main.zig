const std = @import("std");
const print = @import("std").debug.print;

pub fn calculate_pi(n: usize) f64 {
    var seed: u64 = undefined;
    var randGen = std.rand.DefaultPrng.init(seed);
    var rand = randGen.random();

    var counter: f64 = 0.0;
    var iter: i32 = 0;

    while (iter < n) : (iter += 1) {
        var x = rand.float(f64);
        var y = rand.float(f64);

        if (x * x + y * y < 1.0) {
            counter += 1.0;
        }
    }

    return 4.0 * counter / @intToFloat(f64, n);
}

pub fn main() void {
    const number_of_iterations: usize = 1_000_000;
    var result: f64 = calculate_pi(number_of_iterations);
    print("{d} \n", .{result});
}
