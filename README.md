# Calculation Pi number using Monte Carlo algorithm

This repository is aimed to be collection of implementations of a simple Monte Carlo algorithm for computing Pi number. In the future, I'm going to add more different programming languages and make benchmarks.


## Benchmark
All measurements were made with using [Hyperfine](https://github.com/sharkdp/hyperfine) on laptop Intel i3-5005U, 2.00 GHz.

Number of iterations - 1_000_000

| Language    | Result [ms] |
| ----------- | ----------- |
| Rust        | 34          |
|C++ | 72 |
| Nim | 96 |
| Julia | 520 |
| Python (fastest version) | 525 |