use rand::prelude::*;

fn calculate_pi(n: usize) -> f64 {
    let mut rng = thread_rng();

    let mut counter = 0;
    for _ in 0..n {
        let x: f64 = rng.gen();
        let y: f64 = rng.gen();

        if x * x + y * y < 1.0 {
            counter += 1;
        }
    }
    return 4.0 * (counter as f64) / (n as f64);
}

fn main() {
    let number_of_iterations: usize = 1_000_000_000;
    let result = calculate_pi(number_of_iterations);
    println!("{:}", result);
}
