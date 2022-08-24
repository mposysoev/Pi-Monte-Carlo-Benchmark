import random


def calculate_pi(n):
    count = 0
    for i in range(n):
        x = random.random()
        y = random.random()
        if x * x + y * y < 1:
            count += 1

    return 4 * count / n


def main():
    number_of_itteration = 1_000_000
    print(calculate_pi(number_of_itteration))


if __name__ == "__main__":
    main()
