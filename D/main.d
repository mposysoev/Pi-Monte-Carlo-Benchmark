import std.random;
import std.stdio;
import std.conv;

double calculate_pi(int n)
{
    auto rnd = Random(unpredictableSeed);
    int counter = 0;

    for (int i = 0; i < n; ++i)
    {
        double x = uniform(0.0f, 1.0f, rnd);
        double y = uniform(0.0f, 1.0f, rnd);

        if (x * x + y * y < 1)
        {
            counter += 1;
        }
    }

    return to!double(4) * to!double(counter) / to!double(n);
}

void main()
{
    int number_of_iteration = 1_000_000;

    double result = calculate_pi(number_of_iteration);

    writeln(result);
}
