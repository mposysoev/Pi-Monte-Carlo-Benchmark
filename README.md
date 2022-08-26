# Calculation Pi number using Monte Carlo algorithm

This repository is aimed to be collection of implementations of a simple Monte Carlo algorithm for computing Pi number. In the future, I'm going to add more different programming languages and make benchmarks.


## Benchmark
All measurements were made with using [Hyperfine](https://github.com/sharkdp/hyperfine) on laptop Intel i3-5005U, 2.00 GHz.

```
Number of iterations - 1_000_000
```

| Language    	| Result [ms] 	| Relative 	| Opinion	|
| ------------- | ------------- | ---------	| ---------	|
| Rust        	| 34          	|	1	   	| +2 		|
| D 			| 49 			| todo		| +1.5 		|
| C 			| 63 			| later		| 0 		|
| C++ 			| 72 			|			| 0			|
| Go 			| 82			|			| +1.25 	|
| Nim 			| 96 			|			| +0.5 		|
| Zig 			| 289 			|			| -2		|
| Julia 		| 520 			|			| -1		|
| Python 		| 525 			|			| +2 		|