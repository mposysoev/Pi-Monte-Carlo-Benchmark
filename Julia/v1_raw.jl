function calculate_pi(n)
    counter = 0
    for i = 0:n
        x = rand()
        y = rand()
        if x * x + y * y < 1.0
            counter += 1
        end
    end
    return 4.0 * counter / n
end


function main()
    number_of_iterations = 1_000_000
    result = calculate_pi(number_of_iterations)
    println(result)
end

main()
