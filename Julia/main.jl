using RandomNumbers

function calculate_pi(n, rng)
    counter = 0
    @fastmath @inbounds @simd for i = 0:n
        x = rand(rng)
        y = rand(rng)
        if x * x + y * y < 1
            counter += 1
        end
    end
    return 4 * counter / n
end


function main()
    rng_xor = RandomNumbers.Xorshifts.Xoroshiro128Plus()
    number_of_itteration = 1_000_000
    println(calculate_pi(number_of_itteration, rng_xor))
end

main()
