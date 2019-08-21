using System;

namespace mathOperationsExercise
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hello welcome to my program!");
            Console.WriteLine("Type a number please:");

            int num1 = Convert.ToInt32(Console.ReadLine());
            int num2 = 50;
            int total = num1 * num2;

            Console.WriteLine(total);

            Console.WriteLine("Type a number please:");
            int num3 = Convert.ToInt32(Console.ReadLine());
            int num4 = 25;
            int total5 = num3 + num4;

            Console.WriteLine(total5);
            Console.WriteLine("Type a number please:");

            int num5 = Convert.ToInt32(Console.ReadLine());
            double num6 = 12.5;
            double total7 = num5/num6;

            Console.WriteLine(total7);
            Console.WriteLine("Type a number please:");

            int num8 = Convert.ToInt32(Console.ReadLine());
            bool answer = num8 > 50;

            Console.WriteLine(answer.ToString());
            Console.WriteLine("Type a number please:");

            int num9 = Convert.ToInt32(Console.ReadLine());
            int remainder = num9 % 7;
            Console.WriteLine(remainder);
            Console.ReadLine();
        }
    }
}
