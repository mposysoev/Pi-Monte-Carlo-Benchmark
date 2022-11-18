# Calculation Pi number using Monte Carlo algorithm

This repository is aimed to be collection of implementations of a simple Monte Carlo algorithm for computing Pi number.

## Benchmark

All measurements were made with using [Hyperfine](https://github.com/sharkdp/hyperfine) on laptop Intel i3-5005U, 2.00 GHz.

`Number of iterations = 1_000_000`

All benchmarks made with different random engines. It's more comparison of implementations of random generators with different algorithms than comparison of speed of languages itself.

| №   | Language        | Result [ms] | Ratio   | Opinion    |
| --- | --------------- | ----------- | ------- | ---------- |
| 1   | Zig             | 16.6        | 0.48    | -1         |
| 2   | Odin            | 23\*        | 0.67    | 0 (-2)     |
| 3   | **Rust**        | **34.0**    | **1**   | +2         |
| 4   | C++ (g++)       | 42.6        | 1.25    | -1         |
| 5   | D (ldc2)        | 47.1        | 1.44    | +1.5       |
| 6   | C (gcc)         | 62.6        | 1.85    | -1         |
| 7   | V               | 68          | 2       | -0.5/+0.25 |
| 8   | Go              | 82          | 2.41    | +1         |
| 9   | Fortran (ifort) | 86          | 2.52    | +0.5       |
| 10  | C#              | 92.7        | 2.72    | 0          |
| 11  | Pascal (Free)   | 93          | 2.73    | -0.5       |
| 12  | Nim             | 96          | 2.82    | +0.5       |
| 13  | Kotlin (Native) | 98          | 2.88    | +1         |
| 14  | Haskell         | 110         | 3.23    | -2 (-3)    |
| 15  | JS/TS (node.js) | 159         | 4.67    | +1         |
| 16  | F#              | 171.1       | 5.03    | +0.25      |
| 17  | Dart (exe)      | 198         | 5.82    | +1         |
| 18  | Java            | 298         | 8.76    | -2         |
| 19  | Kotlin (JVM)    | 328         | 9.64    | -2         |
| 20  | Python (v1)     | 460         | 13.53   | +2         |
| 21  | R               | 501.7       | 14.75   | 0          |
| 22  | Julia           | 520         | 15.29   | -1         |
| 23  | Ruby            | 702.5       | 20.66   | +0.1       |
| 24  | PowerShell      | 112527      | 3309.61 | +0.5 =)    |

- -- Odin output 3.141 (only 3 digits after point). It seems that this language still doesn't have full support of float64 type. Required test after next release.
