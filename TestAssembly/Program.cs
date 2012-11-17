using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TestAssembly
{
    /// <summary>
    /// A test assembly an injected class (WebRemover) will be written into
    /// </summary>
    class Program
    {
        /// <summary>
        /// Entry point
        /// </summary>
        /// <param name="args">arguments</param>
        static void Main(string[] args)
        {
            Method1();
            Console.WriteLine(5);
            Console.WriteLine(-12);

            Method2();
            Console.WriteLine(333);
            Console.WriteLine(-444);

            Console.WriteLine(888.99);
            Console.WriteLine(-1234.89);
            Console.ReadLine();

            Method1();
            Method2();
            Console.ReadLine();
        }

        static void Method1()
        {
            Console.WriteLine(1);
        }

        static void Method2()
        {
            Console.WriteLine("aaa");
        }
    }

   
}
