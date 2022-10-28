
def calculate_pi(n)
    counter = 0

    for i in 0..n do
        x = rand()
        y = rand()

        if (x*x + y*y) < 1.0
            counter += 1
        end
    end

    4.0 * counter / n
end



number_of_iterations = 1000000
result = calculate_pi number_of_iterations

puts result