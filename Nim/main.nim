import std/random

 
proc calculate_pi(n: int): float = 
  randomize()

  var count: int = 0
  for i in 0..n:
    var x = rand(1.0)
    var y = rand(1.0)
    if x*x + y*y < 1:
      count += 1

  return 4.0*float(count)/float(n)

proc main() =
  var number_of_itteration: int = 1_000_000
  echo calculate_pi(number_of_itteration)

main()