#include <stdio.h>
#include <stdlib.h>
#include <time.h>


double calculate_pi(int n)
{
    double x, y;
    int counter = 0;
    
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
    printf("%f", result);

    return 0;
}