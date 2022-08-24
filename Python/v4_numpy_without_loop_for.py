import numpy as np


def calculate_pi(n: int) -> float:
    x = np.random.rand(1, n)
    y = np.random.rand(1, n)
    count = len(np.where(x * x + y * y < 1)[1])
    return 4 * count / n


def main():
    number_of_itteration = 1_000_000
    print(calculate_pi(number_of_itteration))


if __name__ == "__main__":
    main()
