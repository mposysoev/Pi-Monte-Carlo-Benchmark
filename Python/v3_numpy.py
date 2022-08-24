import numpy as np


def calculate_pi(n: int) -> float:
    rng = np.random.default_rng(12345)
    count = 0
    for i in range(n):
        x = rng.random()
        y = rng.random()
        if x * x + y * y < 1:
            count += 1

    return 4 * count / n


def main():
    number_of_itteration = 1_000_000
    print(calculate_pi(number_of_itteration))


if __name__ == "__main__":
    main()
