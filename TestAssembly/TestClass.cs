using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TestAssembly
{
    public static class TestClass
    {
        private const int _arraySize = 50;
        private static int const1;
        private static uint const2;
        private static float const3;
        private static double const4;
        private static string const5;
        private static bool const6;
        private static bool[] const7 = new bool[_arraySize];
        private static string[] const8 = new string[_arraySize];

        static void Foo(int a, int b, int c, int d, int e, int f, int h, int id)
        {
            if (!const7[id])
            {
                const7[id] = true;
                const8[id] = "some value";
            }
        }
    }
}
