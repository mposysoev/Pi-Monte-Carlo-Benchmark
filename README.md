# Calculation Pi number using Monte Carlo algorithm

This repository is aimed to be collection of implementations of a simple Monte Carlo algorithm for computing Pi number.

## Benchmark

All measurements were made with using [Hyperfine](https://github.com/sharkdp/hyperfine) on laptop Intel i3-5005U, 2.00 GHz.

`Number of iterations = 1_000_000`

All benchmarks made with different random engines. It's more comparison of implementations of random generators with different algorithms than comparison of speed of languages itself. However, it`s also interesting, because it looks more like real life case.

| № | Language      | Version            | Results [ms]      | Ratio    | Opinion              |
|:--:|---------------|--------------------|-------------------|----------|----------------------|
|  1 | Nim           | nim 1.6.6          | 6.8 ± 0.9         | 0.91     | :star:               |
|  2 | Zig           | 0.11.0             | 7.4 ± 0.7         | 1        | :shit:               |
|  3 | Crystal       | 1.6.2              | 18.1 ± 1.1        | 2.44     | :star:               |
|  4 | Odin\*        | nightly-2022-12-12 | 22.1 ± 1.3        | 2.98     | :shit: :shit:        |
|  5 | Rust          | rustc 1.65         | 22.7 ± 1.3        | 3.06     | :star: :star: :star: |
|  6 | D             | ldc2 1.30          | 29.5 ± 0.9        | 3.98     | :star: :star:        |
|  7 | C++           | g++ 12.2           | 31.9 ± 1.5        | 4.31     | :shit: :shit:        |
|  8 | V             | v 0.3.2            | 34.3 ± 0.8        | 4.63     | :shit:               |
|  9 | Beef          | BeefBuild Windows  | 39.9              | 5.39     | :shit: :shit:        |
| 10 | Fortran       | gfortran 12.2      | 44.2 ± 1.6        | 5.97     | :ok:                 |
| 11 | Haskell       | ghc 9.2.5          | 54.6 ± 3.3        | 7.37     | :shit: :shit: :shit: |
| 12 | C             | gcc 12.2           | 62.1 ± 0.8        | 8.39     | :shit: :shit:        |
| 13 | Go            | go 1.19            | 67.0 ± 0.9        | 9.05     | :star:               |
| 14 | Pascal        | Free Pascal 3.2.2  | 77.8 ± 1.5        | 10.51    | :shit:               |
| 15 | C#\*\*\*      | dotnet 7           | 92.7(173.2±13.1)  | 12.52    | :star: :star:        |
| 16 | Kotlin        | kotlinc 1.7.21     | 109.6 ± 1.6       | 14.81    | :star:               |
| 17 | Dart          | dart 2.18.5        | 146.4 ± 2.7       | 19.78    | :star:               |
| 18 | JS/TS\*\*\*   | node.js            | 159 (269.6 ± 5.0) | 21.48    | :star:               |
| 19 | F#\*\*\*      | dotnet 7           | 171.1(247.7±12.7) | 23.12    | :star:               |
| 20 | Java          | openjdk 19         | 207.5 ± 6.1       | 28.04    | :shit: :shit: :shit: |
| 21 | Kotlin        | openjdk 19         | 220.7 ± 6.3       | 29.82    | :shit: :shit:        |
| 22 | Python (v4)   | 3.11.1 (gcc)       | 290.1 ± 5.3       | 30.20    | :star: :star: :star: |
| 23 | Julia\*\*(v1) | julia 1.8.3        | 344.6 ± 4.8       | 46.56    | :shit:               |
| 24 | R             | Rscript 4.2.2      | 406.0 ± 7.9       | 54.86    | :ok:                 |
| 25 | Ruby          | ruby 3.0.4         | 432.1 ± 5.1       | 58.39    | :ok:                 |
| 26 | Elixir        | elixir 1.14        | 1115 ± 16         |          | :shit:               |
| 27 | PowerShell    | ps6                | 112527            | 15206.35 | :smile:              |

\* -- Odin output 3.141 (only 3 digits after point). It seems that this language still doesn't have full support of float64 type. Required test after next release

\*\* -- includes time of compilation which is big in comparison with execution time. Actually Julia has to be upper in t his table, maybe top 5. Required test bigger number of iterations

\*\*\* -- very different result in Linux and in Windows

## Explanation

TODO: add explanation why those random numbers could give Pi number
