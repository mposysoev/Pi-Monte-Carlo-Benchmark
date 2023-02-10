#include <iostream>
#include <random>

using namespace std;

double calculate_pi(int n)
{
    double x, y;
    int counter = 0;

    random_device rd;
    mt19937 gen(rd());
    uniform_real_distribution<double> distr(0, 1.0);
    
    for (int i = 0; i < n; i++)
    {
        x = distr(gen);
        y = distr(gen);

        if (x * x + y * y < 1.0)
        {
            counter = counter + 1;
        }
    }
    return 4.0 * (double)counter / (double)n;
}

int main()
{
    int number_of_iterations = 1000000000;
    double result = calculate_pi(number_of_iterations);
    cout << result << endl;

    return 0;
}