# Old results

Previous results was calculated in Windows 10. But this system gave slower results. This fact is obvious, but also interesting. It`s interesting to see results from the same laptop and compare in the future, when I rerun all benchmarks from Linux.

| №  | Language    | Version          | Results [ms] | Ratio   | Opinion              |
|:--:|-------------|------------------|--------------|---------|----------------------|
|  1 | Zig         | 0.10.0           | 16.6         | 0.48    | :shit:               |
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
| 18 | Dart        | dart exe         | 198          | 5.82    | :star:               |
| 19 | Java        | jvm              | 298          | 8.76    | :shit: :shit: :shit: |
| 20 | Kotlin      | jvm              | 328          | 9.64    | :shit: :shit:        |
| 21 | Python (v1) | 3.10.8 (gcc)     | 460          | 13.53   | :star: :star: :star: |
| 22 | R           | r                | 501.7        | 14.75   | :ok:                 |
| 23 | Julia       | julia 1.8.1      | 520          | 15.29   | :shit: :shit:        |
| 24 | Ruby        |                  | 702.5        | 20.66   | :ok:                 |
| 25 | PowerShell  | 6                | 112527       | 3309.61 | :smile:              |



|   №   | Language    | Version            | Results [ms]      | Ratio    | Opinion              |
| :---: | ----------- | ------------------ | ----------------- | -------- | -------------------- |
|   1   | Nim         | nim 1.6.6          | 6.8 ± 0.9         | 1        | :star:               |
|   2   | Zig         | 0.11.0             | 7.4 ± 0.7         | 1.09     | :shit:               |
|   3   | Rust        | rustc 1.65         | 9.3 ± 0.5         | 1.36     | :star: :star: :star: |
|   4   | Beef        | BeefBuild 0.43.5   | 13.9 ± 0.6        | 2.04     | :shit: :shit:        |
|   5   | C           | gcc 12.2           | 15.3 ± 1.1        | 2.25     | :shit: :shit:        |
|   6   | Crystal     | 1.6.2              | 18.1 ± 1.1        | 2.66     | :star:               |
|   7   | C++         | g++ 12.2           | 20.2 ± 0.3        | 2.97     | :shit: :shit:        |
|   8   | Odin\*      | nightly-2022-12-12 | 22.1 ± 1.3        | 3.25     | :shit: :shit:        |
|   9   | D           | ldc2 1.30          | 29.5 ± 0.9        | 4.34     | :star: :star:        |
|  10   | Ada         | gnatmake-gcc 12.2  | 29.8 ± 1.0        | 4.38     | :star:               |
|  11   | V           | v 0.3.2            | 34.3 ± 0.8        | 5.04     | :shit:               |
|  12   | Fortran     | gfortran 12.2      | 44.2 ± 1.6        | 6.5      | :ok:                 |
|  13   | Haskell     | ghc 9.2.5          | 54.6 ± 3.3        | 8.03     | :shit: :shit: :shit: |
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