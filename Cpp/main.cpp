#include <iostream> /* printf, scanf, puts, NULL */
#include <stdlib.h> /* srand, rand */
#include <time.h>   /* time */

using namespace std;

double calculate_pi(int n)
{
    double x, y;
    int counter = 0;
    /* initialize random seed: */
    srand(time(NULL));
    for (int i = 0; i < n; i++)
    {
        x = (double)(rand()) / ((double)(RAND_MAX));
        y = (double)(rand()) / ((double)(RAND_MAX));

        if (x * x + y * y < 1)
        {
            counter = counter + 1;
        }
    }
    return (double)4 * (double)counter / (double)n;
}

int main()
{
    int number_of_iteration = 1000000;
    double result = calculate_pi(number_of_iteration);
    cout << result << endl;

    return 0;
}