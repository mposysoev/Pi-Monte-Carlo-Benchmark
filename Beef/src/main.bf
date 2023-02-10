using System;

namespace Beef
{
    class Program
    {
		static double Calculate_Pi(int n) {
			int counter = 0;
			Random rnd = new Random();

			for (int i = 0; i < n; i++)
			{
				double x = rnd.NextDouble();
				double y = rnd.NextDouble();

				if (x * x + y * y < 1.0) {
					counter += 1;
				}
			}

			return 4.0 * counter / n;
		}


        static void Main()
        {
			
			int number_of_iterations = 1000000000;
			double result = Calculate_Pi(number_of_iterations);
            Console.WriteLine(result);
        }
    }
}