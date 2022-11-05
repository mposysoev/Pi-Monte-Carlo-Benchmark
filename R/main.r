calculation_pi <- function(n) {
    random_xs <- runif(n)
    random_ys <- runif(n)
    counter <- sum(random_xs * random_xs + random_ys * random_ys < 1)
    return(4 * counter / n)
}

number_of_iterations <- 1000000
result <- calculation_pi(number_of_iterations)
print(result)
