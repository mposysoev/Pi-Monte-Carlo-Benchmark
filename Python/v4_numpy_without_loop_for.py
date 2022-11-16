import numpy as np


def calculate_pi(n):
    rng = np.random.default_rng()
    x = rng.random(n)
    y = rng.random(n)
    count = np.sum(x * x + y * y < 1.0)

    return 4.0 * count / n


def main():
    number_of_iterations = 1_000_000
    result = calculate_pi(number_of_iterations)
    print(result)


if __name__ == "__main__":
    main()
