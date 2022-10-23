function calculate_pi(n) {
  var counter = 0;
  for (let i = 0; i < n; i++) {
    var x = Math.random();
    var y = Math.random();

    if (x * x + y * y < 1) {
      counter += 1;
    }
  }
  return (4 * counter) / n;
}

function main() {
  var number_of_iteration = 1000000;
  var result = calculate_pi(number_of_iteration);
  console.log(result);
}

main();
