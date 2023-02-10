import rand

fn calculate_pi(n i64) f64 {

    mut count := 0
    
    for _ in 0..n {
        x := rand.f64()
        y := rand.f64()
        if x*x + y*y < 1.0 {
            count += 1
        }
    }

    return 4.0 * f64(count) / f64(n)
}

fn main() {
    number_of_iterations := 1_000_000_000
    println(calculate_pi(number_of_iterations))
}