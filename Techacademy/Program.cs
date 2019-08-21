using System;

namespace Techacademy
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("The Tech academy");

            Console.WriteLine("Student Daily Report:");

            Console.WriteLine("What course are you on?");
            String courseName = Console.ReadLine();
            Console.WriteLine(courseName);

            Console.WriteLine("What page number?");


            double pgNumber;

            pgNumber = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine(pgNumber);

            Console.WriteLine("Do you need help with anything? Please asnwer true or false ");

            bool answer = Convert.ToBoolean(Console.ReadLine());

            String   answer1 = Convert.ToString(answer);
            Console.WriteLine(answer1);

            Console.WriteLine("Were there any positive experiences you'd like to sahre? please give specifics?");
            String experiences = Console.ReadLine();
            Console.WriteLine(experiences);

            Console.WriteLine("Is there any other feedback you'd like to share? Please be specific");

            String specificExperience = Console.ReadLine();

            Console.WriteLine(specificExperience);


            Console.WriteLine("How many hours did you study today? ");
            int hoursStudy = Convert.ToInt32(Console.ReadLine());
           String hoursStudies = Convert.ToString(hoursStudy);

            Console.WriteLine(hoursStudies);

            Console.WriteLine("Thank you for your answers. An instructor will respond to this shortly. Have a great day! ");
            Console.ReadLine();
        }
    }
}
