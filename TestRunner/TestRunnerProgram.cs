using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Diagnostics;
using System.IO;

namespace TestRunner
{
    class TestRunnerProgram
    {
        private const string _sourceAssembliesPath = "source";
        private const string _modifiedAssembliesPath = "modified";

        static void Main(string[] args)
        {
            //run each assembly in source directory
            foreach (var fileName in Directory.EnumerateFiles(_sourceAssembliesPath, "*.exe"))
            {
                RunAssembly(fileName);
            }

            //run each assembly in modified directory
            foreach (var fileName in Directory.EnumerateFiles(_modifiedAssembliesPath, "*.exe"))
            {
                RunAssembly(fileName);
            }
        }

        private static void RunAssembly(string fullFileName)
        {
            Console.WriteLine("Running the assembly " + fullFileName);
            ProcessStartInfo processStartInfo = new ProcessStartInfo(fullFileName);
            processStartInfo.UseShellExecute = false;
            processStartInfo.RedirectStandardOutput = true;
            processStartInfo.CreateNoWindow = false;
            using (Process process = Process.Start(processStartInfo))
            {
                using (TextWriter _writer = new StreamWriter(fullFileName + ".txt"))
                {
                    string line;
                    while ((line = process.StandardOutput.ReadLine()) != null)
                    {
                        _writer.WriteLine(line);
                    }

                    process.WaitForExit();
                }
            }

            Console.WriteLine("Done!");
            Console.WriteLine();
        }
    }
}
