# Calculation Pi number using Monte Carlo algorithm

This repository is aimed to be collection of implementations of a simple Monte Carlo algorithm for computing Pi number. In the future, I'm going to add more different programming languages and make benchmarks.


## Benchmark
All measurements were made with using [Hyperfine](https://github.com/sharkdp/hyperfine) on laptop Intel i3-5005U, 2.00 GHz.

```
Number of iterations = 1_000_000
```

| Language    	| Result [ms] 	| Ratio 	| Opinion	|
| ------------- | ------------- | ---------	| ---------	|
| Odin			| 23*			|			| 0 (-2)	|
| Rust        	| 34          	|	1	   	| +2 		|
| D (ldc2)		| 49 			| todo		| +1.5 		|
| C (gcc)		| 63 			| later		| -1 		|
| V 			| 68			|			|-0.5/+0.25 |
| C++ (g++)		| 72 			|			| -1		|
| Go 			| 82			|			| +1 	 	|
|Fortran (ifort)| 86			| 			| +0.5 		|
| Pascal (Free)	| 93			|			| -0.5 		|
| Nim 			| 96 			|			| +0.5 		|
|Kotlin (Native)| 98			|			| +1 		|
|JS/TS (node.js)| 159			|			| +1 		|
| Dart (exe)	| 198			|			| +1 		|
| Zig 			| 289 			|			| -2		|
| Java			| 298			|			| -2		|
| Kotlin (JVM)	| 328			|			| -2		|
| Julia 		| 520 			|			| -1		|
| Python 		| 525 			|			| +2 		|

* -- Odin output 3.141. It seems that this language still doesn't have full support of float64 type. Requared test after next release.