def calculate_pi(n)
  counter = 0
  loop_c = 0

  while loop_c < n
    x = rand()
    y = rand()

    if x*x + y*y < 1.0
      counter += 1
    end
    loop_c += 1
  end

  return 4.0 * counter / n
end

number_of_iteration = 1000000000
result = calculate_pi(number_of_iteration)
puts result
