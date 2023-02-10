package main

import "core:fmt"
import "core:math/rand"

calculate_pi :: proc(n: i32) -> f64{
    counter: i32 = 0
    for i in 0..=n {
        x: f64 = rand.float64()
        y: f64 = rand.float64()
        
        if x*x + y*y < 1.0 {
            counter += 1
        }
    }
    return 4.0 * cast(f64)counter / cast(f64)n 
}

main :: proc() {
    number_of_iterations: i32 = 1000000000
    result: f64 = calculate_pi(number_of_iterations)

	fmt.println(result)
}