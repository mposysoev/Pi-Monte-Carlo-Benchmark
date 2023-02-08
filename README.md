# Calculation Pi number using Monte Carlo algorithm

This repository is aimed to be collection of implementations of a simple Monte Carlo algorithm for computing Pi number.

## Benchmark

All measurements were made with using [Hyperfine](https://github.com/sharkdp/hyperfine) on laptop Intel i3-5005U, 2.00 GHz.

`Number of iterations = 1_000_000`

All benchmarks made with different random engines. It's more comparison of implementations of random generators with different algorithms than comparison of speed of languages itself. However, it`s also interesting, because it looks more like real life case.

|   №   | Language      | Version            | Results [ms]      | Ratio    | Opinion              |
| :---: | ------------- | ------------------ | ----------------- | -------- | -------------------- |
|   1   | Nim           | nim 1.6.6          | 6.8 ± 0.9         | 1        | :star:               |
|   2   | Zig           | 0.11.0             | 7.4 ± 0.7         | 1.09     | :shit:               |
|   3   | Crystal       | 1.6.2              | 18.1 ± 1.1        | 2.66     | :star:               |
|   4   | Odin\*        | nightly-2022-12-12 | 22.1 ± 1.3        | 3.25     | :shit: :shit:        |
|   5   | Rust          | rustc 1.65         | 22.7 ± 1.3        | 3.34     | :star: :star: :star: |
|   6   | D             | ldc2 1.30          | 29.5 ± 0.9        | 4.34     | :star: :star:        |
|   7   | Ada           | gnatmake-gcc 12.2  | 29.8 ± 1.0        | 4.38     | :star:               |
|   8   | C++           | g++ 12.2           | 31.9 ± 1.5        | 4.69     | :shit: :shit:        |
|   9   | V             | v 0.3.2            | 34.3 ± 0.8        | 5.04     | :shit:               |
|  10   | Beef          | BeefBuild Windows  | 39.9              | 5.87     | :shit: :shit:        |
|  11   | Fortran       | gfortran 12.2      | 44.2 ± 1.6        | 6.5      | :ok:                 |
|  12   | Haskell       | ghc 9.2.5          | 54.6 ± 3.3        | 8.03     | :shit: :shit: :shit: |
|  13   | C             | gcc 12.2           | 62.1 ± 0.8        | 9.13     | :shit: :shit:        |
|  14   | Go            | go 1.19            | 67.0 ± 0.9        | 9.85     | :star:               |
|  15   | Pascal        | Free Pascal 3.2.2  | 77.8 ± 1.5        | 11.44    | :shit:               |
|  16   | C#\*\*\*      | dotnet 7           | 92.7(173.2±13.1)  | 13.63    | :star: :star:        |
|  17   | Kotlin        | kotlinc 1.7.21     | 109.6 ± 1.6       | 16.12    | :star:               |
|  18   | Dart          | dart 2.18.5        | 146.4 ± 2.7       | 21.53    | :star:               |
|  19   | JS/TS\*\*\*   | node.js            | 159 (269.6 ± 5.0) | 23.38    | :star:               |
|  20   | F#\*\*\*      | dotnet 7           | 171.1(247.7±12.7) | 25.16    | :star:               |
|  21   | Java          | openjdk 19         | 207.5 ± 6.1       | 30.51    | :shit: :shit: :shit: |
|  22   | Kotlin        | openjdk 19         | 220.7 ± 6.3       | 32.46    | :shit: :shit:        |
|  23   | Python (v4)   | 3.11.1 (gcc)       | 290.1 ± 5.3       | 42.66    | :star: :star: :star: |
|  24   | Julia\*\*(v1) | julia 1.8.3        | 344.6 ± 4.8       | 50.68    | :shit:               |
|  25   | R             | Rscript 4.2.2      | 406.0 ± 7.9       | 59.71    | :ok:                 |
|  26   | Ruby          | ruby 3.0.4         | 432.1 ± 5.1       | 63.54    | :ok:                 |
|  27   | Elixir        | elixir 1.14        | 1115 ± 16         | 163.97   | :shit:               |
|  28   | PowerShell    | ps6                | 112527            | 16548.09 | :smile:              |

\* -- Odin output 3.141 (only 3 digits after point). It seems that this language still doesn't have full support of float64 type. Required test after next release

\*\* -- includes time of compilation which is big in comparison with execution time. Actually Julia has to be upper in t his table, maybe top 5. Required test bigger number of iterations

\*\*\* -- very different result in Linux and in Windows

## Explanation

TODO: add explanation why those random numbers could give Pi number
