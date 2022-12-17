namespace PiMc
{
    class Program
    {
        static double CalculatePi(int n) {
            int counter = 0;
            Random rnd = new Random();

            for (int i = 0; i < n; i++)
            {
                double x = rnd.NextDouble();
                double y = rnd.NextDouble();

                if (x*x + y*y < 1.0)
                {
                    counter += 1;
                }                
            }


            return 4.0 * (double) counter /  (double) n;
        }
        static void Main(string[] args)
        {
            int numberOfIteration = 1000000;
            double result = CalculatePi(numberOfIteration);
            Console.WriteLine(result);
        }
    }
}