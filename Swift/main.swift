func calculatePi(n: Int) -> Double {
    var counter = 0
    for _ in 0..<n {
        let x = Double.random(in: 0...1)
        let y = Double.random(in: 0...1)

        if x*x + y*y < 1.0 {
            counter += 1
        }
    }
    return 4.0 * Double(counter) / Double(n)
}

func main() {
    let numberOfIterations = 1000000000
    let result = calculatePi(n: numberOfIterations)
    print("\(result)")
}

main()
