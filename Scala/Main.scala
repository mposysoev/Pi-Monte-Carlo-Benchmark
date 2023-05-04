import math.random

def calculatePi(n: Int): Double = {
  var counter = 0
  var i = 0
  while (i < n) {
    val x = random()
    val y = random()
    if (x * x + y * y < 1) {
      counter += 1
    }
    i += 1
  }
  4.0 * counter / n
}

@main def Main: Unit =
  val numberOfIterations = 1000000000
  val result = calculatePi(numberOfIterations)
  println(result)
