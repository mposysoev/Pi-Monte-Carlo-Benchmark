import 'dart:math';

double calculate_pi(int n) {
  var counter = 0;
  for (var i = 0; i < n; i++) {
    var x = Random().nextDouble();
    var y = Random().nextDouble();
    if (x * x + y * y < 1.0) {
      counter += 1;
    }
  }
  return 4 * counter / n;
}

void main() {
  int number_of_iteration = 1000000;
  var result = calculate_pi(number_of_iteration);
  print(result);
}
