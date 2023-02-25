#include <gsl/gsl_rng.h>
#include <stdio.h>

double calculate_pi(int n, gsl_rng* rng)
{
    int counter = 0;
    double x, y;

    for (int i = 0; i < n; i++) {
        x = gsl_rng_uniform(rng);
        y = gsl_rng_uniform(rng);
        if (x * x + y * y < 1.0) {
            counter += 1;
        }
    }

    return 4.0 * (double)counter / (double)n;
}

int main(void)
{
    const gsl_rng_type* T;
    gsl_rng* r;
    //gsl_rng_env_setup();

    T = gsl_rng_taus;
    r = gsl_rng_alloc(T);

    const int number_of_iterations = 1000000;
    double result = calculate_pi(number_of_iterations, r);
    printf("%f\n", result);
    gsl_rng_free(r);
    return 0;
}