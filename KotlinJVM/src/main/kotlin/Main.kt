import java.util.Random

fun calculatePi(n: Int): Double {
    var counter = 0
    var r = Random()
    for (i in 0..n) {
        var x = r.nextDouble()
        var y = r.nextDouble()
        if (x * x + y * y < 1) {
            counter += 1
        }
    }
    return 4.0 * (counter).toDouble() / (n).toDouble()
}


fun main(args: Array<String>) {
    var numberOfIterations = 1_000_000
    var result = calculatePi(numberOfIterations)
    println(result)
}