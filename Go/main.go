package main

import (
	"fmt"
	"math/rand"
	"time"
)

func calculate_pi(n int) float64 {
	rand.Seed(int64(time.Now().UnixNano()))
	var counter = 0

	for i := 0; i < n; i++ {
		var x = rand.Float64()
		var y = rand.Float64()

		if x*x+y*y < 1.0 {
			counter += 1
		}
	}

	return 4.0 * float64(counter) / float64(n)
}

func main() {
	var number_of_iterations int = 1_000_000_000
	var result float64 = calculate_pi(number_of_iterations)
	fmt.Println(result)
}
