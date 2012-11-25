using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Threading;
using System.Diagnostics;
using System.Configuration;
using System.Text.RegularExpressions;

namespace WebILDasmFixer
{
    /// <summary>
    /// The entry point of the application
    /// </summary>
    class WebILDasmProgram
    {
        #region Properties

        /// <summary>
        /// A text file with constants extracted from Source assembly
        /// </summary>
        private static string _constantsFileName;

        /// <summary>
        /// The name of the file with cached constants
        /// </summary>
        private static string _constantsCacheFileName;


        /// <summary>
        /// Source exe file (assembly) to extract constant loading instructions from
        /// </summary>
        private static string _sourceAssembly;

        /// <summary>
        /// IL instruction to load int 32
        /// </summary>
        private const string _loadIntegerILInstruction = "ldc.i4";

        /// <summary>
        /// IL disassembler
        /// </summary>
        private const string _cilDasm = "ildasm.exe";

        /// <summary>
        /// CIL assembler (compiler)
        /// </summary>
        private const string _cilCompiler = "ilasm.exe";

        /// <summary>
        /// Disassembled source *.il file which is created from SourceExeFile
        /// </summary>
        private static string _sourceILFile;

        /// <summary>
        /// Disassembled modified *.il file with injected extra IL instructions which we get from SourceILFile
        /// </summary>
        private static string _modifiedILFile;

        /// <summary>
        /// CIL loading instructions
        /// </summary>
        private static IEnumerable<CILInstruction> _loadingInstructions = new List<CILInstruction>();


        /// <summary>
        /// Count of instructions 
        /// </summary>
        private const int _instructionWithArgumentItemsCount = 2;

        /// <summary>
        /// There are 16 of the constant loading instructions
        /// </summary>
        private static readonly Dictionary<string, string> _constantLoadingInstuctions = new Dictionary<string, string>()
                                                               {
                                                                   {"ldc.i4", "int32 {0}::LoadInt32(int32)"},
                                                                   {"ldc.i4.0", "int32 {0}::LoadInt32(int32)"},
                                                                   {"ldc.i4.1", "int32 {0}::LoadInt32(int32)" },
                                                                   {"ldc.i4.2", "int32 {0}::LoadInt32(int32)" },
                                                                   {"ldc.i4.3", "int32 {0}::LoadInt32(int32)" },
                                                                   {"ldc.i4.4", "int32 {0}::LoadInt32(int32)" },
                                                                   
                                                                   {"ldc.i4.5", "int32 {0}::LoadInt32(int32)" },
                                                                   {"ldc.i4.6", "int32 {0}::LoadInt32(int32)" },
                                                                   {"ldc.i4.7", "int32 {0}::LoadInt32(int32)" },
                                                                   {"ldc.i4.8", "int32 {0}::LoadInt32(int32)" },
                                                                   {"ldc.i4.m1","int32 {0}::LoadInt32(int32)" },
                                                                   
                                                                   {"ldc.i4.M1", "int32 {0}::LoadInt32(int32)" },
                                                                   {"ldc.i4.s", "int32 {0}::LoadInt32(int32)" },
                                                                   {"ldc.i8", "int64 {0}::LoadInt64(int32)"},
                                                                   {"ldc.r4", "float32 {0}::LoadFloat32(int32)" },
                                                                   {"ldc.r8", "float64 {0}::LoadFloat64(int32)"},
                                                                   
                                                                   {"ldstr", "string {0}::LoadString(int32)"} 
                                                               };

        private static readonly string[] _shortBranchInstuctions = new string[]
                                                               {
                                                                   "beq.s",
                                                                   "bge.s",
                                                                   "bge.un.s",
                                                                   "bgt.s",
                                                                   "bgt.un.s",
                                                                   "ble.s",
                                                                   "ble.un.s",
                                                                   "blt.s",
                                                                   "blt.un.s",
                                                                   "br.s",
                                                                   "brfalse.s",
                                                                   "brinst.s",
                                                                   "brnull.s",
                                                                   "brtrue.s",
                                                                   "brzero.s"
                                                               };

        #region Constant Loader Injected Code

        /// <summary>
        /// Code of class to be injected into a *.il file and compiled to load constants from external source
        /// </summary>
        private static StringBuilder _cilClassConstantLoaderCode = new StringBuilder();

        #endregion

        /// <summary>
        /// Full name of class which loads constants from external source
        /// </summary>
        private const string _cilConstantLoaderFullClassName = "HttpClient.RemoteConstantLoader";

        #endregion

        /// <summary>
        /// The entry point
        /// </summary>
        /// <param name="args">A source assembly as an argument</param>
        static void Main(string[] args)
        {
            //if (args == null || !args.Any())
            //{
            //    Console.WriteLine("No assembly source(exe or dll) specified");
            //    Console.ReadLine();
            //    return;
            //}

            //SourceAssembly = args[0];
            //if (!File.Exists(SourceAssembly))
            //{
            //    Console.WriteLine("File {0} is not found", SourceAssembly);
            //    Console.ReadLine();
            //    return;
            //}
            _sourceAssembly = "BenchmarkFasta.exe";
            InitializeILFileNames();
            DisassemblySourceAssemblyFile();
            Thread.Sleep(1000);

            int constantsCount = CreateConstantsFile();
            Thread.Sleep(1000);

            BuildCILClassConstantLoaderCode(constantsCount);

            CreateModifiedILFile();
            Thread.Sleep(1000);

            CreateModifiedAssemblyFile();
            //DisassemblyModifiedILFile();
        }

        /// <summary>
        /// Initializes file names
        /// </summary>
        public static void InitializeILFileNames()
        {
            _sourceILFile = Path.GetFileNameWithoutExtension(_sourceAssembly) + ".il";
            _modifiedILFile = "ModifiedIL_" + _sourceILFile;
            DateTime now = DateTime.Now;
            _constantsFileName = string.Format("const-all-{0}{1}{2}-{3}{4}{5}-{6}.txt",
                                    DateTime.Now.Year,
                                    DateTime.Now.Month,
                                    DateTime.Now.Day,
                                    DateTime.Now.Hour,
                                    DateTime.Now.Minute,
                                    DateTime.Now.Second,
                                    _sourceAssembly);
            _constantsCacheFileName = _constantsFileName.Replace("all", "cache");
        }


        /// <summary>
        /// Disassembles the source assembly
        /// </summary>
        public static void DisassemblySourceAssemblyFile()
        {
            Console.WriteLine("Disassemblying source assembly...");
            ProcessStartInfo processStartInfo = new ProcessStartInfo(_cilDasm, _sourceAssembly + " /output:" + _sourceILFile);
            processStartInfo.UseShellExecute = false;
            processStartInfo.CreateNoWindow = false;
            using (Process process = Process.Start(processStartInfo))
            {
                process.WaitForExit();
            }
        }

        /// <summary>
        /// Creates a text file with constants
        /// </summary>
        public static int CreateConstantsFile()
        {
            _loadingInstructions = GetCILInstructions()
                .Where(x => x != null)
                .Where(x => x.IsConstantLoading)
                .ToList();
            int counter = 0;
            foreach (var inst in _loadingInstructions)
            {
                inst.ID = (++counter).ToString();
            }

            Console.WriteLine("Creating a file with the constants...");
            StringBuilder csvExporter = new StringBuilder();
            foreach (var instruction in _loadingInstructions)
            {
                if (instruction.HasArgument)
                {
                    csvExporter.AppendLine(string.Format("{0}, {1}", instruction.ID, instruction.Argument));
                }
                else
                {
                    csvExporter.AppendLine(instruction.ID);
                }
            }

            if (File.Exists(_constantsFileName))
            {
                File.Delete(_constantsFileName);
            }

            using (var stream = new FileStream(_constantsFileName, FileMode.CreateNew, FileAccess.Write, FileShare.None))
            {
                using (TextWriter writer = new StreamWriter(stream))
                {
                    writer.Write(csvExporter.ToString());
                }
            }

            return _loadingInstructions.Max(x => int.Parse(x.ID));
        }

        /// <summary>
        /// Reads the source il file to parse the instructions from it
        /// </summary>
        /// <returns>IEnumerable of the CIL instructions</returns>
        public static IEnumerable<CILInstruction> GetCILInstructions()
        {
            Console.WriteLine("Getting constant loading instructions...");
            using (var stream = new FileStream(_sourceILFile, FileMode.Open, FileAccess.Read, FileShare.None))
            using (var peekableReader = new PeekableStreamReader(stream))
            {
                string line;
                while ((line = peekableReader.ReadLine()) != null)
                {
                    //если Line - это загрузка строки, тогда передавать полную строку (несколько строк)
                    //или передать reader или делегат и читать (peek) уже в самой yield return ParseCILInstruction(line, reader);
                    yield return ParseCILInstruction(line, peekableReader);
                }
            }
        }


        public static CILInstruction ParseCILInstruction(string line, PeekableStreamReader peekableReader = null)
        {
            Match match = Regex.Match(line, @"(\S+):[^\S]+((.\S+).*)");
            if (match.Success)
            {
                string originalCode = match.Groups[3].Value;
                //if it's a contant loading instruction
                if (_constantLoadingInstuctions.ContainsKey(originalCode))
                {
                    string argument;
                    var instructions = match.Groups[2].Value
                        .Split(' ')
                        .Where(x => !string.IsNullOrWhiteSpace(x));
                    //if it's an instruction with argument(s) like ldc.i4 123 
                    if (instructions.Count() >= _instructionWithArgumentItemsCount)
                    {
                        //if it's a string loading instruction like ldstr "some str"
                        if (IsLoadStringInstruction(originalCode))
                        {
                            //!!!если есть перенос на другие строки, то прочитать их тоже
                            argument = string.Join(" ", instructions.Skip(1));
                            if (peekableReader != null)
                            {
                                string maybeNextString = peekableReader.PeekLine();
                                var maybeNextStringMatch = Regex.Match(maybeNextString, @"\s+[+]\s+[""](.+)[""]");
                                //remove last quote mark
                                bool isLastMarkQuoteRemoved = false;
                                if (maybeNextStringMatch.Success)
                                {
                                    argument = argument.Remove(argument.Length - 1);
                                    isLastMarkQuoteRemoved = true;
                                }

                                while (maybeNextStringMatch.Success)
                                {
                                    argument += maybeNextStringMatch.Groups[1].Value;
                                    peekableReader.ReadLine();
                                    maybeNextStringMatch = Regex.Match(peekableReader.PeekLine(), @"\s+[+]\s+[""](.+)[""]");
                                }

                                //add the last quote mark to the end of the new string
                                if (isLastMarkQuoteRemoved)
                                {
                                    argument += "\"";
                                }
                            }
                        }
                        //else it's a normal constant loading insruction with argument(s) 
                        else
                        {
                            argument = instructions
                                .Skip(1)
                                .Take(1)
                                .Single();
                        }
                    }
                    //it's a constant loading insruction with no argument like ldc.i4.2 or ldc.i4.7
                    else
                    {
                        string instruction = instructions.Single();
                        int lastDotIndex = instruction.LastIndexOf('.');
                        if ((instruction.Length - 1 - lastDotIndex) == 1)
                        {
                            argument = instruction[instruction.Length - 1].ToString();
                        }
                        else
                        {
                            argument = "-1";
                        }
                    }

                    return new CILInstruction
                    {
                        OriginalCode = originalCode,
                        ConstantLoadingCode = _constantLoadingInstuctions[originalCode],
                        Argument = argument,
                        Label = match.Groups[1].Value
                    };
                }
                //it's not a constant loading instruction
                //but it requires to replace short branch instuction .s one with a normal one 
                //(for example: br.s <int8 (target)> => br <int32 (target)>)
                else
                {
                    if (_shortBranchInstuctions.Contains(originalCode))
                    {
                        string argument = match.Groups[2].Value
                                .Split(' ')
                                .Where(x => !string.IsNullOrWhiteSpace(x))
                                .Skip(1)
                                .Take(1)
                                .Single();
                        return new CILInstruction
                        {
                            OriginalCode = originalCode,
                            Argument = argument,
                            Label = match.Groups[1].Value
                        };
                    }
                    else
                    {
                        return null;
                    }
                }
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// Checks if the IL instruction is loading string one (ldstr)
        /// </summary>
        /// <param name="instruction">the IL instruction</param>
        /// <returns>True if the IL instruction is the loading string instruction, otherwise false</returns>
        public static bool IsLoadStringInstruction(string instruction)
        {
            return instruction == "ldstr";
        }

        /// <summary>
        /// Build the cil code of remote constant loader class to inject it into the source assembly
        /// </summary>
        /// <param name="instructionsCount">Constant loading instructions count</param>
        private static void BuildCILClassConstantLoaderCode(int instructionsCount)
        {
            StringBuilder strBuilderCacheFields = new StringBuilder();
            for (int i = 1; i <= instructionsCount; i++)
            {
                strBuilderCacheFields.AppendFormat(".field private static string const{0}", i);
                strBuilderCacheFields.AppendLine();
                strBuilderCacheFields.AppendFormat(".field private static bool isConst{0}Loaded", i);
                strBuilderCacheFields.AppendLine();
            }

            //TODO - replace with StringBuilder
            #region the cil code of httpClient to be injected to the modified assembly

            _cilClassConstantLoaderCode.AppendFormat(
    @"
    .class private abstract auto ansi sealed beforefieldinit {0}
       extends [mscorlib]System.Object
{{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass5'
         extends [mscorlib]System.Object
  {{
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 id
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {{
      // 
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    }} // end of method '<>c__DisplayClass5'::.ctor

  }} // end of class '<>c__DisplayClass5'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass7'
         extends [mscorlib]System.Object
  {{
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class {0}/'<>c__DisplayClass5' 'CS$<>8__locals6'
    .field public string result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {{
      // 
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    }} // end of method '<>c__DisplayClass7'::.ctor

    .method public hidebysig instance string 
            '<GetRemoteConstant>b__4'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
    {{
      // 
      .maxstack  3
      .locals init ([0] string CS$1$0000,
               [1] string CS$0$0001)
      IL_0000:  ldarg.0
      IL_0001:  ldarg.0
      IL_0002:  ldfld      class {0}/'<>c__DisplayClass5' {0}/'<>c__DisplayClass7'::'CS$<>8__locals6'
      IL_0007:  ldfld      int32 {0}/'<>c__DisplayClass5'::id
      IL_000c:  ldarg.1
      IL_000d:  call       string {0}::PrintRemoteConstant(int32,
                                                                                       class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
      IL_0012:  dup
      IL_0013:  stloc.1
      IL_0014:  stfld      string {0}/'<>c__DisplayClass7'::result
      IL_0019:  ldloc.1
      IL_001a:  stloc.0
      IL_001b:  br.s       IL_001d

      IL_001d:  ldloc.0
      IL_001e:  ret
    }} // end of method '<>c__DisplayClass7'::'<GetRemoteConstant>b__4'

  }} // end of class '<>c__DisplayClass7'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClassa'
         extends [mscorlib]System.Object
  {{
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {{
      // 
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    }} // end of method '<>c__DisplayClassa'::.ctor

    .method public hidebysig instance string 
            '<PrintRemoteConstant>b__9'(class [mscorlib]System.Threading.Tasks.Task`1<string> t) cil managed
    {{
      // 
      .maxstack  3
      .locals init ([0] string CS$1$0000,
               [1] string CS$0$0001)
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance !0 class [mscorlib]System.Threading.Tasks.Task`1<string>::get_Result()
      IL_0007:  dup
      IL_0008:  stloc.1
      IL_0009:  stfld      string {0}/'<>c__DisplayClassa'::result
      IL_000e:  ldloc.1
      IL_000f:  stloc.0
      IL_0010:  br.s       IL_0012

      IL_0012:  ldloc.0
      IL_0013:  ret
    }} // end of method '<>c__DisplayClassa'::'<PrintRemoteConstant>b__9'

  }} // end of class '<>c__DisplayClassa'

  .field private static literal string _serverUrl = ""{1}""
  .field private static literal int32 _arraySize = int32(0x00000032)
  .field private static initonly string _remoteFileName
  .field private static initonly string _localCacheFileName
  .field private static initonly object _locker
  .field private static string[] _constant
  .field private static bool[] _isConstantLoaded
  .field private static initonly bool _showConstantLoadingAlerts
  .method public hidebysig static int16  LoadInt16(int32 index) cil managed
  {{
    // 
    .maxstack  2
    .locals init ([0] string tempValue,
             [1] int16 returnValue,
             [2] int16 CS$1$0000)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       string {0}::LoadConstant(int32)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldloc.0
    IL_000a:  call       int32 {0}::GetBase(string)
    IL_000f:  call       int16 [mscorlib]System.Convert::ToInt16(string,
                                                                 int32)
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  stloc.2
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.2
    IL_001a:  ret
  }} // end of method RemoteConstantLoader::LoadInt16

  .method public hidebysig static int32  LoadInt32(int32 index) cil managed
  {{
    // 
    .maxstack  2
    .locals init ([0] string tempValue,
             [1] int32 returnValue,
             [2] int32 CS$1$0000)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       string {0}::LoadConstant(int32)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldloc.0
    IL_000a:  call       int32 {0}::GetBase(string)
    IL_000f:  call       int32 [mscorlib]System.Convert::ToInt32(string,
                                                                 int32)
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  stloc.2
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.2
    IL_001a:  ret
  }} // end of method RemoteConstantLoader::LoadInt32

  .method public hidebysig static int64  LoadInt64(int32 index) cil managed
  {{
    // 
    .maxstack  2
    .locals init ([0] string tempValue,
             [1] int64 returnValue,
             [2] int64 CS$1$0000)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       string {0}::LoadConstant(int32)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldloc.0
    IL_000a:  call       int32 {0}::GetBase(string)
    IL_000f:  call       int64 [mscorlib]System.Convert::ToInt64(string,
                                                                 int32)
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  stloc.2
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.2
    IL_001a:  ret
  }} // end of method RemoteConstantLoader::LoadInt64

  .method public hidebysig static string 
          LoadString(int32 index) cil managed
  {{
    // 
    .maxstack  3
    .locals init ([0] string CS$1$0000)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       string {0}::LoadConstant(int32)
    IL_0007:  ldstr      ""\""""
    IL_000c:  ldstr      """"
    IL_0011:  callvirt   instance string [mscorlib]System.String::Replace(string,
                                                                          string)
    IL_0016:  stloc.0
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.0
    IL_001a:  ret
  }} // end of method RemoteConstantLoader::LoadString

  .method public hidebysig static float32 
          LoadFloat32(int32 index) cil managed
  {{
    // 
    .maxstack  1
    .locals init ([0] string tempValue,
             [1] float32 CS$1$0000)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       string {0}::LoadConstant(int32)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  call       float32 [mscorlib]System.Single::Parse(string)
    IL_000e:  stloc.1
    IL_000f:  br.s       IL_0011

    IL_0011:  ldloc.1
    IL_0012:  ret
  }} // end of method RemoteConstantLoader::LoadFloat32

  .method public hidebysig static float64 
          LoadFloat64(int32 index) cil managed
  {{
    // 
    .maxstack  1
    .locals init ([0] float64 CS$1$0000)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       string {0}::LoadConstant(int32)
    IL_0007:  call       float64 [mscorlib]System.Double::Parse(string)
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_000f

    IL_000f:  ldloc.0
    IL_0010:  ret
  }} // end of method RemoteConstantLoader::LoadFloat64

   .method public hidebysig static string 
          LoadConstant(int32 id) cil managed
  {{
    // 
    .maxstack  5
    .locals init ([0] bool cachedConstantExists,
             [1] string cachedConstant,
             [2] bool '<>s__LockTaken0',
             [3] string remoteConstant,
             [4] bool '<>s__LockTaken1',
             [5] string CS$1$0000,
             [6] bool CS$4$0001,
             [7] object CS$2$0002)
    IL_0000:  nop
    IL_0001:  ldsfld     bool[] {0}::_isConstantLoaded
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.1
    IL_0008:  sub
    IL_0009:  ldelem.i1
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  stloc.s    CS$4$0001
    IL_000f:  ldloc.s    CS$4$0001
    IL_0011:  brtrue.s   IL_0053

    IL_0013:  nop
    IL_0014:  ldsfld     bool {0}::_showConstantLoadingAlerts
    IL_0019:  ldc.i4.0
    IL_001a:  ceq
    IL_001c:  stloc.s    CS$4$0001
    IL_001e:  ldloc.s    CS$4$0001
    IL_0020:  brtrue.s   IL_0043

    IL_0022:  nop
    IL_0023:  ldstr      ""Memory cached constant: id => {{0}}, value => {{1}}""
    IL_0028:  ldarg.0
    IL_0029:  box        [mscorlib]System.Int32
    IL_002e:  ldsfld     string[] {0}::_constant
    IL_0033:  ldarg.0
    IL_0034:  ldc.i4.1
    IL_0035:  sub
    IL_0036:  ldelem.ref
    IL_0037:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_003c:  call       valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [System.Windows.Forms]System.Windows.Forms.MessageBox::Show(string)
    IL_0041:  pop
    IL_0042:  nop
    IL_0043:  ldsfld     string[] {0}::_constant
    IL_0048:  ldarg.0
    IL_0049:  ldc.i4.1
    IL_004a:  sub
    IL_004b:  ldelem.ref
    IL_004c:  stloc.s    CS$1$0000
    IL_004e:  br         IL_017f

    IL_0053:  ldsfld     string {0}::_localCacheFileName
    IL_0058:  call       bool [mscorlib]System.IO.File::Exists(string)
    IL_005d:  ldc.i4.0
    IL_005e:  ceq
    IL_0060:  stloc.s    CS$4$0001
    IL_0062:  ldloc.s    CS$4$0001
    IL_0064:  brtrue     IL_00f4

    IL_0069:  nop
    IL_006a:  ldarg.0
    IL_006b:  ldloca.s   cachedConstantExists
    IL_006d:  call       string {0}::GetFileCachedConstant(int32,
                                                                                       bool&)
    IL_0072:  stloc.1
    IL_0073:  ldloc.0
    IL_0074:  ldc.i4.0
    IL_0075:  ceq
    IL_0077:  stloc.s    CS$4$0001
    IL_0079:  ldloc.s    CS$4$0001
    IL_007b:  brtrue.s   IL_00f3

    IL_007d:  nop
    IL_007e:  ldsfld     bool {0}::_showConstantLoadingAlerts
    IL_0083:  ldc.i4.0
    IL_0084:  ceq
    IL_0086:  stloc.s    CS$4$0001
    IL_0088:  ldloc.s    CS$4$0001
    IL_008a:  brtrue.s   IL_00a5

    IL_008c:  nop
    IL_008d:  ldstr      ""Cached file constant: id => {{0}}, value => {{1}}""
    IL_0092:  ldarg.0
    IL_0093:  box        [mscorlib]System.Int32
    IL_0098:  ldloc.1
    IL_0099:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_009e:  call       valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [System.Windows.Forms]System.Windows.Forms.MessageBox::Show(string)
    IL_00a3:  pop
    IL_00a4:  nop
    IL_00a5:  ldc.i4.0
    IL_00a6:  stloc.2
    .try
    {{
      IL_00a7:  ldsfld     object {0}::_locker
      IL_00ac:  dup
      IL_00ad:  stloc.s    CS$2$0002
      IL_00af:  ldloca.s   '<>s__LockTaken0'
      IL_00b1:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_00b6:  nop
      IL_00b7:  nop
      IL_00b8:  ldsfld     bool[] {0}::_isConstantLoaded
      IL_00bd:  ldarg.0
      IL_00be:  ldc.i4.1
      IL_00bf:  sub
      IL_00c0:  ldc.i4.1
      IL_00c1:  stelem.i1
      IL_00c2:  ldsfld     string[] {0}::_constant
      IL_00c7:  ldarg.0
      IL_00c8:  ldc.i4.1
      IL_00c9:  sub
      IL_00ca:  ldloc.1
      IL_00cb:  stelem.ref
      IL_00cc:  nop
      IL_00cd:  leave.s    IL_00e2

    }}  // end .try
    finally
    {{
      IL_00cf:  ldloc.2
      IL_00d0:  ldc.i4.0
      IL_00d1:  ceq
      IL_00d3:  stloc.s    CS$4$0001
      IL_00d5:  ldloc.s    CS$4$0001
      IL_00d7:  brtrue.s   IL_00e1

      IL_00d9:  ldloc.s    CS$2$0002
      IL_00db:  call       void [mscorlib]System.Threading.Monitor::Exit(object)
      IL_00e0:  nop
      IL_00e1:  endfinally
    }}  // end handler
    IL_00e2:  nop
    IL_00e3:  ldsfld     string[] {0}::_constant
    IL_00e8:  ldarg.0
    IL_00e9:  ldc.i4.1
    IL_00ea:  sub
    IL_00eb:  ldelem.ref
    IL_00ec:  stloc.s    CS$1$0000
    IL_00ee:  br         IL_017f

    IL_00f3:  nop
    IL_00f4:  ldarg.0
    IL_00f5:  call       string {0}::GetRemoteConstant(int32)
    IL_00fa:  stloc.3
    IL_00fb:  ldc.i4.0
    IL_00fc:  stloc.s    '<>s__LockTaken1'
    .try
    {{
      IL_00fe:  ldsfld     object {0}::_locker
      IL_0103:  dup
      IL_0104:  stloc.s    CS$2$0002
      IL_0106:  ldloca.s   '<>s__LockTaken1'
      IL_0108:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_010d:  nop
      IL_010e:  nop
      IL_010f:  ldarg.0
      IL_0110:  ldloc.3
      IL_0111:  call       void {0}::CacheConstantToFile(int32,
                                                                                     string)
      IL_0116:  nop
      IL_0117:  ldsfld     string[] {0}::_constant
      IL_011c:  ldarg.0
      IL_011d:  ldc.i4.1
      IL_011e:  sub
      IL_011f:  ldloc.3
      IL_0120:  stelem.ref
      IL_0121:  ldsfld     bool[] {0}::_isConstantLoaded
      IL_0126:  ldarg.0
      IL_0127:  ldc.i4.1
      IL_0128:  sub
      IL_0129:  ldc.i4.1
      IL_012a:  stelem.i1
      IL_012b:  nop
      IL_012c:  leave.s    IL_0142

    }}  // end .try
    finally
    {{
      IL_012e:  ldloc.s    '<>s__LockTaken1'
      IL_0130:  ldc.i4.0
      IL_0131:  ceq
      IL_0133:  stloc.s    CS$4$0001
      IL_0135:  ldloc.s    CS$4$0001
      IL_0137:  brtrue.s   IL_0141

      IL_0139:  ldloc.s    CS$2$0002
      IL_013b:  call       void [mscorlib]System.Threading.Monitor::Exit(object)
      IL_0140:  nop
      IL_0141:  endfinally
    }}  // end handler
    IL_0142:  nop
    IL_0143:  ldsfld     bool {0}::_showConstantLoadingAlerts
    IL_0148:  ldc.i4.0
    IL_0149:  ceq
    IL_014b:  stloc.s    CS$4$0001
    IL_014d:  ldloc.s    CS$4$0001
    IL_014f:  brtrue.s   IL_0172

    IL_0151:  nop
    IL_0152:  ldstr      ""Server constant: id => {{0}}, value => {{1}}""
    IL_0157:  ldarg.0
    IL_0158:  box        [mscorlib]System.Int32
    IL_015d:  ldsfld     string[] {0}::_constant
    IL_0162:  ldarg.0
    IL_0163:  ldc.i4.1
    IL_0164:  sub
    IL_0165:  ldelem.ref
    IL_0166:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_016b:  call       valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [System.Windows.Forms]System.Windows.Forms.MessageBox::Show(string)
    IL_0170:  pop
    IL_0171:  nop
    IL_0172:  ldsfld     string[] {0}::_constant
    IL_0177:  ldarg.0
    IL_0178:  ldc.i4.1
    IL_0179:  sub
    IL_017a:  ldelem.ref
    IL_017b:  stloc.s    CS$1$0000
    IL_017d:  br.s       IL_017f

    IL_017f:  ldloc.s    CS$1$0000
    IL_0181:  ret
  }} // end of method RemoteConstantLoader::LoadConstant

  .method private hidebysig static void  CacheConstantToFile(int32 id,
                                                             string constantToCache) cil managed
  {{
    // 
    .maxstack  4
    .locals init ([0] class [mscorlib]System.IO.FileStream fileStream,
             [1] class [mscorlib]System.IO.StreamWriter writer,
             [2] bool CS$4$0000)
    IL_0000:  nop
    IL_0001:  ldsfld     string {0}::_localCacheFileName
    IL_0006:  ldc.i4.6
    IL_0007:  ldc.i4.2
    IL_0008:  newobj     instance void [mscorlib]System.IO.FileStream::.ctor(string,
                                                                             valuetype [mscorlib]System.IO.FileMode,
                                                                             valuetype [mscorlib]System.IO.FileAccess)
    IL_000d:  stloc.0
    .try
    {{
      IL_000e:  nop
      IL_000f:  ldloc.0
      IL_0010:  newobj     instance void [mscorlib]System.IO.StreamWriter::.ctor(class [mscorlib]System.IO.Stream)
      IL_0015:  stloc.1
      .try
      {{
        IL_0016:  nop
        IL_0017:  ldloc.1
        IL_0018:  ldstr      ""{{0}}, {{1}}""
        IL_001d:  ldarg.0
        IL_001e:  box        [mscorlib]System.Int32
        IL_0023:  ldarg.1
        IL_0024:  call       string [mscorlib]System.String::Format(string,
                                                                    object,
                                                                    object)
        IL_0029:  callvirt   instance void [mscorlib]System.IO.TextWriter::WriteLine(string)
        IL_002e:  nop
        IL_002f:  nop
        IL_0030:  leave.s    IL_0042

      }}  // end .try
      finally
      {{
        IL_0032:  ldloc.1
        IL_0033:  ldnull
        IL_0034:  ceq
        IL_0036:  stloc.2
        IL_0037:  ldloc.2
        IL_0038:  brtrue.s   IL_0041

        IL_003a:  ldloc.1
        IL_003b:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0040:  nop
        IL_0041:  endfinally
      }}  // end handler
      IL_0042:  nop
      IL_0043:  nop
      IL_0044:  leave.s    IL_0056

    }}  // end .try
    finally
    {{
      IL_0046:  ldloc.0
      IL_0047:  ldnull
      IL_0048:  ceq
      IL_004a:  stloc.2
      IL_004b:  ldloc.2
      IL_004c:  brtrue.s   IL_0055

      IL_004e:  ldloc.0
      IL_004f:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_0054:  nop
      IL_0055:  endfinally
    }}  // end handler
    IL_0056:  nop
    IL_0057:  ret
  }} // end of method RemoteConstantLoader::CacheConstantToFile

.method private hidebysig static string 
          GetFileCachedConstant(int32 id,
                                [out] bool& cachedConstantExists) cil managed
  {{
    // 
    .maxstack  5
    .locals init ([0] class [mscorlib]System.IO.StreamReader reader,
             [1] string line,
             [2] int32 currentID,
             [3] class [System]System.Text.RegularExpressions.Match idMatch,
             [4] class [System]System.Text.RegularExpressions.Match constantMatch,
             [5] string CS$1$0000,
             [6] bool CS$4$0001)
    IL_0000:  nop
    IL_0001:  ldsfld     string {0}::_localCacheFileName
    IL_0006:  ldc.i4.3
    IL_0007:  ldc.i4.1
    IL_0008:  ldc.i4.3
    IL_0009:  newobj     instance void [mscorlib]System.IO.FileStream::.ctor(string,
                                                                             valuetype [mscorlib]System.IO.FileMode,
                                                                             valuetype [mscorlib]System.IO.FileAccess,
                                                                             valuetype [mscorlib]System.IO.FileShare)
    IL_000e:  newobj     instance void [mscorlib]System.IO.StreamReader::.ctor(class [mscorlib]System.IO.Stream)
    IL_0013:  stloc.0
    .try
    {{
      IL_0014:  nop
      IL_0015:  br.s       IL_0080

      IL_0017:  nop
      IL_0018:  ldloc.1
      IL_0019:  ldstr      ""^\\d+""
      IL_001e:  call       class [System]System.Text.RegularExpressions.Match [System]System.Text.RegularExpressions.Regex::Match(string,
                                                                                                                                  string)
      IL_0023:  stloc.3
      IL_0024:  ldloc.3
      IL_0025:  callvirt   instance bool [System]System.Text.RegularExpressions.Group::get_Success()
      IL_002a:  brfalse.s  IL_003f

      IL_002c:  ldloc.3
      IL_002d:  callvirt   instance string [System]System.Text.RegularExpressions.Capture::get_Value()
      IL_0032:  call       int32 [mscorlib]System.Int32::Parse(string)
      IL_0037:  ldarg.0
      IL_0038:  ceq
      IL_003a:  ldc.i4.0
      IL_003b:  ceq
      IL_003d:  br.s       IL_0040

      IL_003f:  ldc.i4.1
      IL_0040:  stloc.s    CS$4$0001
      IL_0042:  ldloc.s    CS$4$0001
      IL_0044:  brtrue.s   IL_007f

      IL_0046:  nop
      IL_0047:  ldloc.1
      IL_0048:  ldstr      "",\\s+(\\S+)""
      IL_004d:  call       class [System]System.Text.RegularExpressions.Match [System]System.Text.RegularExpressions.Regex::Match(string,
                                                                                                                                  string)
      IL_0052:  stloc.s    constantMatch
      IL_0054:  ldloc.s    constantMatch
      IL_0056:  callvirt   instance bool [System]System.Text.RegularExpressions.Group::get_Success()
      IL_005b:  ldc.i4.0
      IL_005c:  ceq
      IL_005e:  stloc.s    CS$4$0001
      IL_0060:  ldloc.s    CS$4$0001
      IL_0062:  brtrue.s   IL_007e

      IL_0064:  nop
      IL_0065:  ldarg.1
      IL_0066:  ldc.i4.1
      IL_0067:  stind.i1
      IL_0068:  ldloc.s    constantMatch
      IL_006a:  callvirt   instance class [System]System.Text.RegularExpressions.GroupCollection [System]System.Text.RegularExpressions.Match::get_Groups()
      IL_006f:  ldc.i4.1
      IL_0070:  callvirt   instance class [System]System.Text.RegularExpressions.Group [System]System.Text.RegularExpressions.GroupCollection::get_Item(int32)
      IL_0075:  callvirt   instance string [System]System.Text.RegularExpressions.Capture::get_Value()
      IL_007a:  stloc.s    CS$1$0000
      IL_007c:  leave.s    IL_00b4

      IL_007e:  nop
      IL_007f:  nop
      IL_0080:  ldloc.0
      IL_0081:  callvirt   instance string [mscorlib]System.IO.TextReader::ReadLine()
      IL_0086:  dup
      IL_0087:  stloc.1
      IL_0088:  call       bool [mscorlib]System.String::IsNullOrWhiteSpace(string)
      IL_008d:  ldc.i4.0
      IL_008e:  ceq
      IL_0090:  stloc.s    CS$4$0001
      IL_0092:  ldloc.s    CS$4$0001
      IL_0094:  brtrue.s   IL_0017

      IL_0096:  ldarg.1
      IL_0097:  ldc.i4.0
      IL_0098:  stind.i1
      IL_0099:  ldsfld     string [mscorlib]System.String::Empty
      IL_009e:  stloc.s    CS$1$0000
      IL_00a0:  leave.s    IL_00b4

    }}  // end .try
    finally
    {{
      IL_00a2:  ldloc.0
      IL_00a3:  ldnull
      IL_00a4:  ceq
      IL_00a6:  stloc.s    CS$4$0001
      IL_00a8:  ldloc.s    CS$4$0001
      IL_00aa:  brtrue.s   IL_00b3

      IL_00ac:  ldloc.0
      IL_00ad:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00b2:  nop
      IL_00b3:  endfinally
    }}  // end handler
    IL_00b4:  nop
    IL_00b5:  ldloc.s    CS$1$0000
    IL_00b7:  ret
  }} // end of method RemoteConstantLoader::GetFileCachedConstant

  .method private hidebysig static string 
          GetRemoteConstant(int32 id) cil managed
  {{
    // 
    .maxstack  4
    .locals init ([0] string queryString,
             [1] class [System.Net.Http]System.Net.Http.HttpClient _httpClient,
             [2] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask,
             [3] class [System.Net.Http]System.Net.Http.HttpClient '<>g__initLocal3',
             [4] class {0}/'<>c__DisplayClass7' 'CS$<>8__locals8',
             [5] bool '<>s__LockTaken2',
             [6] class {0}/'<>c__DisplayClass5' 'CS$<>8__locals6',
             [7] string CS$1$0000,
             [8] object CS$2$0001,
             [9] bool CS$4$0002)
    IL_0000:  newobj     instance void {0}/'<>c__DisplayClass5'::.ctor()
    IL_0005:  stloc.s    'CS$<>8__locals6'
    IL_0007:  ldloc.s    'CS$<>8__locals6'
    IL_0009:  ldarg.0
    IL_000a:  stfld      int32 {0}/'<>c__DisplayClass5'::id
    IL_000f:  nop
    IL_0010:  ldc.i4.0
    IL_0011:  stloc.s    '<>s__LockTaken2'
    .try
    {{
      IL_0013:  newobj     instance void {0}/'<>c__DisplayClass7'::.ctor()
      IL_0018:  stloc.s    'CS$<>8__locals8'
      IL_001a:  ldloc.s    'CS$<>8__locals8'
      IL_001c:  ldloc.s    'CS$<>8__locals6'
      IL_001e:  stfld      class {0}/'<>c__DisplayClass5' {0}/'<>c__DisplayClass7'::'CS$<>8__locals6'
      IL_0023:  ldsfld     object {0}::_locker
      IL_0028:  dup
      IL_0029:  stloc.s    CS$2$0001
      IL_002b:  ldloca.s   '<>s__LockTaken2'
      IL_002d:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_0032:  nop
      IL_0033:  nop
      IL_0034:  ldstr      ""{{0}}\?file_name={{1}}&constant_id={{2}}""
      IL_0039:  ldstr      ""{1}""
      IL_003e:  ldsfld     string {0}::_remoteFileName
      IL_0043:  ldloc.s    'CS$<>8__locals6'
      IL_0045:  ldfld      int32 {0}/'<>c__DisplayClass5'::id
      IL_004a:  box        [mscorlib]System.Int32
      IL_004f:  call       string [mscorlib]System.String::Format(string,
                                                                  object,
                                                                  object,
                                                                  object)
      IL_0054:  stloc.0
      IL_0055:  newobj     instance void [System.Net.Http]System.Net.Http.HttpClient::.ctor()
      IL_005a:  stloc.3
      IL_005b:  ldloc.3
      IL_005c:  ldstr      ""{1}""
      IL_0061:  newobj     instance void [System]System.Uri::.ctor(string)
      IL_0066:  callvirt   instance void [System.Net.Http]System.Net.Http.HttpClient::set_BaseAddress(class [System]System.Uri)
      IL_006b:  nop
      IL_006c:  ldloc.3
      IL_006d:  stloc.1
      IL_006e:  ldloc.1
      IL_006f:  ldloc.0
      IL_0070:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
      IL_0075:  stloc.2
      IL_0076:  ldloc.s    'CS$<>8__locals8'
      IL_0078:  ldsfld     string [mscorlib]System.String::Empty
      IL_007d:  stfld      string {0}/'<>c__DisplayClass7'::result
      IL_0082:  ldloc.2
      IL_0083:  ldloc.s    'CS$<>8__locals8'
      IL_0085:  ldftn      instance string {0}/'<>c__DisplayClass7'::'<GetRemoteConstant>b__4'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
      IL_008b:  newobj     instance void class [mscorlib]System.Func`2<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>,string>::.ctor(object,
                                                                                                                                                                                                native int)
      IL_0090:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<!!0> class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith<string>(class [mscorlib]System.Func`2<class [mscorlib]System.Threading.Tasks.Task`1<!0>,!!0>)
      IL_0095:  callvirt   instance void [mscorlib]System.Threading.Tasks.Task::Wait()
      IL_009a:  nop
      IL_009b:  ldloc.s    'CS$<>8__locals8'
      IL_009d:  ldfld      string {0}/'<>c__DisplayClass7'::result
      IL_00a2:  stloc.s    CS$1$0000
      IL_00a4:  leave.s    IL_00ba

    }}  // end .try
    finally
    {{
      IL_00a6:  ldloc.s    '<>s__LockTaken2'
      IL_00a8:  ldc.i4.0
      IL_00a9:  ceq
      IL_00ab:  stloc.s    CS$4$0002
      IL_00ad:  ldloc.s    CS$4$0002
      IL_00af:  brtrue.s   IL_00b9

      IL_00b1:  ldloc.s    CS$2$0001
      IL_00b3:  call       void [mscorlib]System.Threading.Monitor::Exit(object)
      IL_00b8:  nop
      IL_00b9:  endfinally
    }}  // end handler
    IL_00ba:  nop
    IL_00bb:  ldloc.s    CS$1$0000
    IL_00bd:  ret
  }} // end of method RemoteConstantLoader::GetRemoteConstant

  .method private hidebysig static string 
          PrintRemoteConstant(int32 id,
                              class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> httpTask) cil managed
  {{
    // 
    .maxstack  4
    .locals init ([0] class [mscorlib]System.Threading.Tasks.Task`1<string> task,
             [1] class {0}/'<>c__DisplayClassa' 'CS$<>8__localsb',
             [2] string CS$1$0000)
    IL_0000:  newobj     instance void {0}/'<>c__DisplayClassa'::.ctor()
    IL_0005:  stloc.1
    IL_0006:  nop
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance !0 class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::get_Result()
    IL_000d:  callvirt   instance class [System.Net.Http]System.Net.Http.HttpContent [System.Net.Http]System.Net.Http.HttpResponseMessage::get_Content()
    IL_0012:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<string> [System.Net.Http]System.Net.Http.HttpContent::ReadAsStringAsync()
    IL_0017:  stloc.0
    IL_0018:  ldloc.1
    IL_0019:  ldsfld     string [mscorlib]System.String::Empty
    IL_001e:  stfld      string {0}/'<>c__DisplayClassa'::result
    IL_0023:  ldloc.0
    IL_0024:  ldloc.1
    IL_0025:  ldftn      instance string {0}/'<>c__DisplayClassa'::'<PrintRemoteConstant>b__9'(class [mscorlib]System.Threading.Tasks.Task`1<string>)
    IL_002b:  newobj     instance void class [mscorlib]System.Func`2<class [mscorlib]System.Threading.Tasks.Task`1<string>,string>::.ctor(object,
                                                                                                                                          native int)
    IL_0030:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<!!0> class [mscorlib]System.Threading.Tasks.Task`1<string>::ContinueWith<string>(class [mscorlib]System.Func`2<class [mscorlib]System.Threading.Tasks.Task`1<!0>,!!0>)
    IL_0035:  callvirt   instance void [mscorlib]System.Threading.Tasks.Task::Wait()
    IL_003a:  nop
    IL_003b:  ldloc.1
    IL_003c:  ldfld      string {0}/'<>c__DisplayClassa'::result
    IL_0041:  stloc.2
    IL_0042:  br.s       IL_0044

    IL_0044:  ldloc.2
    IL_0045:  ret
  }} // end of method RemoteConstantLoader::PrintRemoteConstant

  .method private hidebysig static int32 
          GetBase(string 'value') cil managed
  {{
    // 
    .maxstack  2
    .locals init ([0] int32 CS$1$0000)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldstr      ""x""
    IL_0007:  callvirt   instance bool [mscorlib]System.String::Contains(string)
    IL_000c:  brtrue.s   IL_0012

    IL_000e:  ldc.i4.s   10
    IL_0010:  br.s       IL_0014

    IL_0012:  ldc.i4.s   16
    IL_0014:  stloc.0
    IL_0015:  br.s       IL_0017

    IL_0017:  ldloc.0
    IL_0018:  ret
  }} // end of method RemoteConstantLoader::GetBase

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {{
    // 
    .maxstack  2
    IL_0000:  ldstr      ""{2}""
    IL_0005:  ldc.i4.0
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0010:  stsfld     string {0}::_remoteFileName
    IL_0015:  ldstr      ""{3}""
    IL_001a:  ldc.i4.0
    IL_001b:  newarr     [mscorlib]System.Object
    IL_0020:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0025:  stsfld     string {0}::_localCacheFileName
    IL_002a:  newobj     instance void [mscorlib]System.Object::.ctor()
    IL_002f:  stsfld     object {0}::_locker
    IL_0034:  ldc.i4     {4}
    IL_0036:  newarr     [mscorlib]System.String
    IL_003b:  stsfld     string[] {0}::_constant
    IL_0040:  ldc.i4     {4}
    IL_0042:  newarr     [mscorlib]System.Boolean
    IL_0047:  stsfld     bool[] {0}::_isConstantLoaded
    IL_004c:  ldc.i4.{5}
    IL_004d:  stsfld     bool {0}::_showConstantLoadingAlerts
    IL_0052:  ret
  }} // end of method RemoteConstantLoader::.cctor

}} // end of class {0}
", _cilConstantLoaderFullClassName, ConfigurationManager.AppSettings["serverUrl"], _constantsFileName, _constantsCacheFileName, instructionsCount, bool.Parse(ConfigurationManager.AppSettings["showConstantLoadingAlerts"]) ? "1" : "0");

            #endregion

        }

        /// <summary>
        /// Creates a modified (new, with injected ConstantRemover class) assembly
        /// </summary>
        public static void CreateModifiedAssemblyFile()
        {
            Console.WriteLine("Compiling...");
            string modifiedILFullFileName = Path.Combine(Directory.GetCurrentDirectory(), _modifiedILFile);
            string modifiedAssemblyFileFullName = Path.Combine(Directory.GetCurrentDirectory(), "ModifiedAssembly_" + Path.GetFileName(_sourceAssembly));
            string arguments = string.Format("\"{0}\" /exe /output:\"{1}\"  /debug=IMPL", modifiedILFullFileName, modifiedAssemblyFileFullName);
            string workingDirectory = @"c:\Windows\Microsoft.NET\Framework\v4.0.30319\";
            ProcessStartInfo processStartInfo = new ProcessStartInfo(workingDirectory + _cilCompiler, arguments);
            processStartInfo.UseShellExecute = false;
            processStartInfo.CreateNoWindow = false;
            //processStartInfo.WorkingDirectory = 
            using (Process process = Process.Start(processStartInfo))
            {
                process.WaitForExit();
            }
        }

        /// <summary>
        /// Creates modified IL file
        /// </summary>
        private static void CreateModifiedILFile()
        {
            Console.WriteLine("Creating a modified IL file...");
            string[] lines = File.ReadAllLines(_sourceILFile);
            StringBuilder newLines = new StringBuilder();
            int counter = 1;
            foreach (var line in lines)
            {
                CILInstruction instruction = ParseCILInstruction(line);
                if (instruction != null)
                {
                    if (instruction.IsConstantLoading)
                    {
                        instruction.ID = _loadingInstructions.Single(x => x.ID == counter.ToString()).ID;
                        string instructionToWrite = GetChangedConstantLoadingIntruction(instruction);
                        newLines.AppendLine(instructionToWrite);
                        counter++;
                    }
                    else
                    {
                        string instructionToWrite = string.Format("\t\t{0}:\t{1}\t{2}", instruction.Label, instruction.OriginalCode.Replace(".s", string.Empty), instruction.Argument);
                        newLines.AppendLine(instructionToWrite);
                    }
                }
                else
                {
                    newLines.AppendLine(line);
                }
            }

            newLines.AppendLine();
            newLines.AppendLine(_cilClassConstantLoaderCode.ToString());
            File.WriteAllText(_modifiedILFile, newLines.ToString());
        }

        /// <summary>
        /// Returns constant loading instructions to call a method of ConstantRemover 
        /// </summary>
        /// <param name="instruction">IL instruction</param>
        /// <returns>IL instruction which calls a method of ConstantRemover to load
        /// constant from CSV file
        /// </returns>
        public static string GetChangedConstantLoadingIntruction(CILInstruction instruction)
        {
            string loadingInstruction = string.Format("\t\t{0}:\t{1} {2}", instruction.Label, _loadIntegerILInstruction, int.Parse(instruction.ID));
            loadingInstruction += Environment.NewLine;
            loadingInstruction += string.Format("\t\t\t\t\t\t\tcall " + _constantLoadingInstuctions[instruction.OriginalCode], _cilConstantLoaderFullClassName);
            return loadingInstruction;
        }


    }
}
