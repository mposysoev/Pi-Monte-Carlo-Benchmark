# Calculation Pi number using Monte Carlo algorithm

This repository is aimed to be collection of implementations of a simple Monte Carlo algorithm for computing Pi number.

## Benchmark

All measurements were made with using [Hyperfine](https://github.com/sharkdp/hyperfine) on laptop Intel i3-5005U, 2.00 GHz.

`Number of iterations = 1_000_000`

All benchmarks made with different random engines. It's more comparison of implementations of random generators with different algorithms than comparison of speed of languages itself.

| № | Language    | Version          | Results [ms] | Ratio   | Opinion              |
|:--:|-------------|------------------|--------------|---------|----------------------|
|  1 | Zig         | 0.10.0           | 16.6         | 0.48    | :shit: :shit:        |
|  2 | Odin        | nightly          | 23\*         | 0.67    | :shit: :shit:        |
|  3 | **Rust**    | rustc            | **34.0**     | **1**   | :star: :star: :star: |
|  4 | Beef        |                  | 39.9         | 1.17    | :shit:               |
|  5 | C++         | g++              | 42.6         | 1.25    | :shit: :shit:        |
|  6 | D           | ldc2             | 47.1         | 1.44    | :star: :star:        |
|  7 | C           | gcc              | 62.6         | 1.85    | :shit: :shit:        |
|  8 | V           |                  | 68           | 2       | :shit:               |
|  9 | Go          | go               | 82           | 2.41    | :star:               |
| 10 | Fortran     | ifort            | 86           | 2.52    | :ok:                 |
| 11 | C#          | dotnet           | 92.7         | 2.72    | :star: :star:        |
| 12 | Pascal      | Free Pascal      | 93           | 2.73    | :shit:               |
| 13 | Nim         | nim              | 96           | 2.82    | :ok:                 |
| 14 | Kotlin      | kotlinc (native) | 98           | 2.88    | :star:               |
| 15 | Haskell     | ghc              | 110          | 3.23    | :shit: :shit: :shit: |
| 16 | JS/TS       | node.js          | 159          | 4.67    | :star:               |
| 17 | F#          | dotnet           | 171.1        | 5.03    | :star:               |
| 18 | Dart (exe)  | dart exe         | 198          | 5.82    | :star:               |
| 19 | Java        | jvm              | 298          | 8.76    | :shit: :shit: :shit: |
| 20 | Kotlin      | jvm              | 328          | 9.64    | :shit: :shit:        |
| 21 | Python (v1) | 3.10.8 (gcc)     | 460          | 13.53   | :star: :star: :star: |
| 22 | R           | r                | 501.7        | 14.75   | :ok:                 |
| 23 | Julia       | julia 1.8.1      | 520          | 15.29   | :shit: :shit:        |
| 24 | Ruby        |                  | 702.5        | 20.66   | :ok:                 |
| 25 | PowerShell  | 6                | 112527       | 3309.61 | :smile:              |

- -- Odin output 3.141 (only 3 digits after point). It seems that this language still doesn't have full support of float64 type. Required test after next release.
