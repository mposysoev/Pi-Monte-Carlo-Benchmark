function calculate_pi(n) {
  var counter = 0;
  for (let i = 0; i < n; i++) {
    var x = Math.random();
    var y = Math.random();

    if (x * x + y * y < 1.0) {
      counter += 1;
    }
  }
  return (4.0 * counter) / n;
}

function main() {
  var number_of_iterations = 1000000;
  var result = calculate_pi(number_of_iterations);
  console.log(result);
}

main();
