## v1_pure before

Time (mean ± σ):     622.2 ms ±  45.4 ms    [User: 3.7 ms, System: 11.4 ms]
Range (min … max):   572.3 ms … 745.6 ms    50 runs

## v1_pure after
Time (mean ± σ):     458.9 ms ±  58.0 ms    [User: 3.6 ms, System: 7.7 ms]
Range (min … max):   411.2 ms … 684.6 ms    50 runs

## v3_numpy_with_types
Time (mean ± σ):      2.132 s ±  0.069 s    [User: 0.004 s, System: 0.008 s]
Range (min … max):    2.051 s …  2.397 s    50 runs


PS D:\programming\MONTE_CARLO_DIFFERENT_LANGUAGES\Python> hyperfine.exe "py .\v4_numpy_without_loop_for.py"
Benchmark 1: py .\v4_numpy_without_loop_for.py
  Time (mean ± σ):     524.2 ms ±   6.1 ms    [User: 5.6 ms, System: 7.9 ms]
  Range (min … max):   517.1 ms … 536.3 ms    10 runs

PS D:\programming\MONTE_CARLO_DIFFERENT_LANGUAGES\Python> hyperfine.exe "py .\v4_numpy_without_loop_for.py"
Benchmark 1: py .\v4_numpy_without_loop_for.py
  Time (mean ± σ):     505.9 ms ±   7.8 ms    [User: 7.0 ms, System: 4.6 ms]
  Range (min … max):   493.6 ms … 518.8 ms    10 runs
