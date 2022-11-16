from random import random


def calculate_pi(n: int) -> float:
    count = 0.0
    for _ in range(n):
        x = random()
        y = random()
        if x * x + y * y < 1.0:
            count += 1.0
    return 4.0 * count / n


def main():
    number_of_iterations = 1_000_000
    result = calculate_pi(number_of_iterations)
    print(result)


if __name__ == "__main__":
    main()
