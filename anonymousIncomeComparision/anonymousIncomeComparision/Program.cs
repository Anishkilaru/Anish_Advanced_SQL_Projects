using System;

namespace anonymousIncomeComparision
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Anonymous Income Comparision Program");
            Console.WriteLine("Person1:");
            Console.WriteLine("Hourly Rate:");
            int hourlyRate = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Hours worked per week:");

            int hoursWorked = Convert.ToInt32(Console.ReadLine());
            Console.ReadLine();

            Console.WriteLine("Weekly salary of person 1");
            int salaryofPerson1 = hourlyRate * hoursWorked;

            Console.WriteLine(salaryofPerson1.ToString());

            Console.WriteLine("Person2:");
            Console.WriteLine("Hourly Rate:");
            int hourlyRate2 = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Hours worked per week:");

            int hoursWorked2 = Convert.ToInt32(Console.ReadLine());
            Console.ReadLine();

            Console.WriteLine("Weekly salary of person 2");
            int salaryofPerson2 = hourlyRate2 * hoursWorked2;

            Console.WriteLine(salaryofPerson2.ToString());

            Console.WriteLine("Does person1 make more money than person 2");

            bool giveMeanswer = salaryofPerson1 > salaryofPerson2;
            Console.WriteLine(giveMeanswer.ToString());
            Console.ReadLine();








        }
    }
}
