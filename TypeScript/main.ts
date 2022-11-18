function calculate_pi(n: number) {
    var counter: number = 0;
    for (let i = 0; i < n; i++) {
      var x: number = Math.random();
      var y: number = Math.random();
  
      if (x * x + y * y < 1.0) {
        counter += 1;
      }
    }
    return (4 * counter) / n;
  }
  
  function main() {
    var number_of_iterations: number = 1000000;
    var result: number = calculate_pi(number_of_iterations);
    console.log(result);
  }
  
  main();
  