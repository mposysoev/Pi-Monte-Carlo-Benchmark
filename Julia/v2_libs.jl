using RandomNumbers

function calculate_pi(n, rng)
    counter = 0
    @fastmath @inbounds for i = 0:n
        x = rand(rng)
        y = rand(rng)
        if x * x + y * y < 1.0
            counter += 1
        end
    end
    return 4.0 * counter / n
end


function main()
    rng_xor = RandomNumbers.Xorshifts.Xoroshiro128Plus()
    number_of_iterations = 1_000_000
    result = calculate_pi(number_of_iterations, rng_xor)
    println(result)
end

main()
