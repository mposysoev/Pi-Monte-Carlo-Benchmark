# Calculation Pi number using Monte Carlo algorithm

This repository is aimed to be collection of implementations of a simple Monte Carlo algorithm for computing Pi number. 


## Benchmark
All measurements were made with using [Hyperfine](https://github.com/sharkdp/hyperfine) on laptop Intel i3-5005U, 2.00 GHz.

```
Number of iterations = 1_000_000
```
Future: do banchmark with bigger number of iterations and more accurate

| №	| Language    	| Result [ms] 	| Ratio 	| Opinion	|
|---| ------------- | ------------- | ---------	| ---------	|
|1	| Odin			| 23*			| 0.67		| 0 (-2)	|
|2	| **Rust**      | **34**        | **1**	    | +2 		|
|3  | D (ldc2)		| 49 			| 1.44		| +1.5 		|
|4  | C (gcc)		| 63 			| 1.85		| -1 		|
|5	| V 			| 68			| 2			|-0.5/+0.25 |
|6	| C++ (g++)		| 72 			| 2.11		| -1		|
|7	| Go 			| 82			| 2.41		| +1 	 	|
|8	|Fortran (ifort)| 86			| 2.52		| +0.5 		|
|9	| C# 			| 92.7			| 2.72		| 0 		|
|10	| Pascal (Free)	| 93			| 2.73		| -0.5 		|
|11	| Nim 			| 96 			| 2.82		| +0.5 		|
|12	|Kotlin (Native)| 98			| 2.88		| +1 		|
|13	|JS/TS (node.js)| 159			| 4.67		| +1 		|
|14	| Dart (exe)	| 198			| 5.82		| +1 		|
|15	| Zig 			| 289 			| 8.5		| -2		|
|16	| Java			| 298			| 8.76		| -2		|
|17	| Kotlin (JVM)	| 328			| 9.64		| -2		|
|18	| Julia 		| 520 			| 15.29		| -1		|
|19	| Python 		| 525 			| 15.44		| +2 		|
|20	| F# 			| 558.4 		| 16.42		| +0.25 	|
|21 | Ruby 			| 702.5 		| 20.66		| +0.1 		|
|22	| PowerShell	| 112527		| 3309.61	| +0.5 =)	|

* -- Odin output 3.141. It seems that this language still doesn't have full support of float64 type. Required test after next release.
