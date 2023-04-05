# Calculation Pi number using Monte Carlo algorithm

This repository is aimed to be collection of implementations of a simple Monte Carlo algorithm for computing Pi number.

## Benchmark

All measurements were made with using [Hyperfine](https://github.com/sharkdp/hyperfine) on laptop Intel i3-5005U, 2.00 GHz.

`Number of iterations = 1_000_000_000`

All benchmarks made with different random engines. It's more comparison of implementations of random generators with different algorithms than comparison of speed of languages itself. However, it`s also interesting, because it looks more like real life case.

|   №   | Language    | Version            | Minimal time [sec] | Ratio  | Opinion              |
| :---: | ----------- | ------------------ | ------------------ | ------ | -------------------- |
|   1   | Nim         | nim 1.6.6          | 6.180              | 1      | :star:               |
|   2   | Julia (v2)  | julia 1.8.3        | 6.329              | 1.02   | :shit:               |
|   3   | Zig         | 0.11.0             | 6.932              | 1.12   | :shit:               |
|   4   | Rust        | rustc 1.65         | 8.369              | 1.35   | :star: :star: :star: |
|   5   | Beef        | BeefBuild 0.43.5   | 12.599             | 2.04   | :shit: :shit:        |
|   6   | C           | gcc 12.2           | 14.310             | 2.31   | :shit: :shit:        |
|   7   | Crystal     | 1.6.2              | 15.703             | 2.54   | :star:               |
|   8   | C++         | g++ 12.2           | 18.284             | 2.95   | :shit: :shit:        |
|   9   | C#          | dotnet 7           | 20.361             | 3.29   | :star: :star:        |
|  10   | Odin\*      | nightly-2022-12-12 | 20.548             | 3.32   | :shit: :shit:        |
|  11   | F#          | dotnet 7           | 25.438             | 4.12   | :star:               |
|  12   | D           | ldc2 1.30          | 26.952             | 4.36   | :star:               |
|  13   | Ada         | gnatmake-gcc 12.2  | 28.702             | 4.64   | :star:               |
|  14   | V           | v 0.3.2            | 32.299             | 5.23   | :shit:               |
|  15   | JS/TS\*\*\* | node.js            | 40.573             | 6.57   | :star:               |
|  16   | Fortran     | gfortran 12.2      | 41.625             | 6.74   | :ok:                 |
|  17   | Go          | go 1.19            | 64.536             | 10.44  | :star:               |
|  18   | Pascal      | Free Pascal 3.2.2  | 76.289             | 12.34  | :shit:               |
|  19   | Java        | openjdk 19         | 80.290             | 12.99  | :shit: :shit: :shit: |
|  20   | Kotlin      | openjdk 19         | 80.804             | 13.08  | :shit: :shit:        |
|  21   | Kotlin      | kotlinc 1.7.21     | 106.059            | 17.16  | :star:               |
|  22   | Dart        | dart 2.18.5        | 130.410            | 21.1   | :star:               |
|  23   | PHP         | php 8.2.2          | 154.411            | 24.98  | :shit:               |
|  24   | Python (v2) | 3.11.1 (gcc)       | 293.809            | 47.54  | :star: :star: :star: |
|  25   | Perl        | 5.36               | 307.984            | 49.83  | :ok:                 |
|  26   | Ruby        | ruby 3.0.4         | 334.007            | 54.05  | :ok:                 |
|  27   | Elixir      | elixir 1.14        | 422.551            | 68.37  | :shit:               |
|  28   | Prolog      | swipl 9.0.3        | 633.671            | 102.53 | :star:               |
|  29   | Haskell     | ghc 9.2.5          | ---                |        | :shit: :shit: :shit: |
|  30   | R           | Rscript 4.2.2      | ---                |        | :ok:                 |
|  31   | PowerShell  | ps6                | ~112527000         |        | :smile: :star:       |

\* -- Odin output 3.141 (only 3 digits after point). It seems that this language still doesn't have full support of float64 type. Required test after next release

\*\* -- very different result in Linux and in Windows

## Explanation

TODO: add explanation why those random numbers could give Pi number
