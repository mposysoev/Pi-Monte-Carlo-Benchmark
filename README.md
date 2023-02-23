# Calculation Pi number using Monte Carlo algorithm

This repository is aimed to be collection of implementations of a simple Monte Carlo algorithm for computing Pi number.

## Benchmark

All measurements were made with using [Hyperfine](https://github.com/sharkdp/hyperfine) on laptop Intel i3-5005U, 2.00 GHz.

`Number of iterations = 1_000_000`

All benchmarks made with different random engines. It's more comparison of implementations of random generators with different algorithms than comparison of speed of languages itself. However, it`s also interesting, because it looks more like real life case.

|   №   | Language    | Version            | Results [ms]      | Ratio    | Opinion              |
| :---: | ----------- | ------------------ | ----------------- | -------- | -------------------- |
|   1   | Nim         | nim 1.6.6          | 6.8 ± 0.9         | 1        | :star:               |
|   2   | Zig         | 0.11.0             | 7.4 ± 0.7         | 1.09     | :shit:               |
|   3   | Rust        | rustc 1.65         | 9.3 ± 0.5         | 1.36     | :star: :star: :star: |
|   4   | Beef        | BeefBuild 0.43.5   | 13.9 ± 0.6        | 2.04     | :shit: :shit:        |
|   5   | Crystal     | 1.6.2              | 18.1 ± 1.1        | 2.66     | :star:               |
|   6   | C++         | g++ 12.2           | 20.2 ± 0.3        | 2.97     | :shit: :shit:        |
|   7   | Odin\*      | nightly-2022-12-12 | 22.1 ± 1.3        | 3.25     | :shit: :shit:        |
|   8   | D           | ldc2 1.30          | 29.5 ± 0.9        | 4.34     | :star: :star:        |
|   9   | Ada         | gnatmake-gcc 12.2  | 29.8 ± 1.0        | 4.38     | :star:               |
|  10   | V           | v 0.3.2            | 34.3 ± 0.8        | 5.04     | :shit:               |
|  11   | Fortran     | gfortran 12.2      | 44.2 ± 1.6        | 6.5      | :ok:                 |
|  12   | Haskell     | ghc 9.2.5          | 54.6 ± 3.3        | 8.03     | :shit: :shit: :shit: |
|  13   | C           | gcc 12.2           | 62.1 ± 0.8        | 9.13     | :shit: :shit:        |
|  14   | Go          | go 1.19            | 67.0 ± 0.9        | 9.85     | :star:               |
|  15   | Pascal      | Free Pascal 3.2.2  | 77.8 ± 1.5        | 11.44    | :shit:               |
|  16   | C#\*\*      | dotnet 7           | 92.7 (173.2±13.1) | 13.63    | :star: :star:        |
|  17   | Kotlin      | kotlinc 1.7.21     | 109.6 ± 1.6       | 16.12    | :star:               |
|  18   | Dart        | dart 2.18.5        | 146.4 ± 2.7       | 21.53    | :star:               |
|  19   | JS/TS\*\*   | node.js            | 159 (200.3 ± 1.8) | 23.38    | :star:               |
|  20   | F#\*\*      | dotnet 7           | 171.1(247.7±12.7) | 25.16    | :star:               |
|  21   | Java        | openjdk 19         | 207.5 ± 6.1       | 30.51    | :shit: :shit: :shit: |
|  22   | Kotlin      | openjdk 19         | 220.7 ± 6.3       | 32.46    | :shit: :shit:        |
|  23   | Python (v4) | 3.11.1 (gcc)       | 290.1 ± 5.3       | 42.66    | :star: :star: :star: |
|  24   | Perl        | 5.36               | 317.8 ± 5.4       | 46.73    | :ok:                 |
|  25   | Julia (v1)  | julia 1.8.3        | 344.6 ± 4.8       | 50.68    | :shit:               |
|  26   | R           | Rscript 4.2.2      | 406.0 ± 7.9       | 59.71    | :ok:                 |
|  27   | Ruby        | ruby 3.0.4         | 432.1 ± 5.1       | 63.54    | :ok:                 |
|  28   | Prolog      | swipl 9.0.3        | 673.6 ± 5.2       | 99.05    | :star:               |
|  29   | Elixir      | elixir 1.14        | 1115 ± 16         | 163.97   | :shit:               |
|  30   | PowerShell  | ps6                | 112527            | 16548.09 | :smile:              |

\* -- Odin output 3.141 (only 3 digits after point). It seems that this language still doesn't have full support of float64 type. Required test after next release

\*\* -- very different result in Linux and in Windows

`Number of iterations = 1_000_000_000`

|    №     | Language    | Version            | Minimal time [sec] | Ratio  |
| :------: | ----------- | ------------------ | ------------------ | ------ |
|    1     | Nim         | nim 1.6.6          | 6.180              | 1      |
| 24 -> 2  | Julia (v2)  | julia 1.8.3        | 6.329              | 1.02   |
|    3     | Zig         | 0.11.0             | 6.932              | 1.12   |
|    4     | Rust        | rustc 1.65         | 8.369              | 1.35   |
|    5     | Beef        | BeefBuild 0.43.5   | 12.599             | 2.04   |
|    6     | Crystal     | 1.6.2              | 15.703             | 2.54   |
|    7     | C++         | g++ 12.2           | 18.284             | 2.95   |
| 16 -> 8  | C#          | dotnet 7           | 20.361             | 3.29   |
|    9     | Odin\*      | nightly-2022-12-12 | 20.548             | 3.32   |
| 20 -> 10 | F#          | dotnet 7           | 25.438             | 4.12   |
|    11    | D           | ldc2 1.30          | 26.952             | 4.36   |
|    12    | Ada         | gnatmake-gcc 12.2  | 28.702             | 4.64   |
|    13    | V           | v 0.3.2            | 32.299             | 5.23   |
| 19 -> 14 | JS/TS\*\*\* | node.js            | 40.573             | 6.57   |
|    15    | Fortran     | gfortran 12.2      | 41.625             | 6.74   |
|    16    | C           | gcc 12.2           | 61.202             | 9.9    |
|    17    | Go          | go 1.19            | 64.536             | 10.44  |
|    18    | Pascal      | Free Pascal 3.2.2  | 76.289             | 12.34  |
|    19    | Java        | openjdk 19         | 80.290             | 12.99  |
|    20    | Kotlin      | openjdk 19         | 80.804             | 13.08  |
|    21    | Kotlin      | kotlinc 1.7.21     | 106.059            | 17.16  |
|    22    | Dart        | dart 2.18.5        | 130.410            | 21.1   |
|    23    | Python (v2) | 3.11.1 (gcc)       | 293.809            | 47.54  |
|    24    | Perl        | 5.36               | 307.984            | 49.83  |
|    25    | Ruby        | ruby 3.0.4         | 334.007            | 54.05  |
|    26    | Elixir      | elixir 1.14        | 422.551            | 68.37  |
|    27    | Prolog      | swipl 9.0.3        | 633.671            | 102.53 |
|    -     | Haskell     | ghc 9.2.5          | ---                |        |
|    -     | R           | Rscript 4.2.2      | ---                |        |
|    -     | PowerShell  | ps6                | ---                |        |

## Explanation

TODO: add explanation why those random numbers could give Pi number
