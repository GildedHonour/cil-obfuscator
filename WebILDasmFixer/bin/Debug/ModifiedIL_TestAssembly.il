
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.1
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly TestAssembly
{
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0C 54 65 73 74 41 73 73 65 6D 62 6C 79 00   // ...TestAssembly.
                                                                                              00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 09 4D 69 63 72 6F 73 6F 66 74 00 00 )       // ...Microsoft..
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0C 54 65 73 74 41 73 73 65 6D 62 6C 79 00   // ...TestAssembly.
                                                                                                00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 1B 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  4D 69 63 72 6F 73 6F 66 74 20 32 30 31 32 00 00 ) // Microsoft 2012..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 61 61 36 63 30 63 62 62 2D 38 61 64 31   // ..$aa6c0cbb-8ad1
                                                                                                  2D 34 30 64 34 2D 61 37 30 33 2D 33 35 61 30 34   // -40d4-a703-35a04
                                                                                                  36 39 32 64 38 65 36 00 00 )                      // 692d8e6..
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 29 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ..).NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 30 2C 50 72   // ,Version=v4.0,Pr
                                                                                                        6F 66 69 6C 65 3D 43 6C 69 65 6E 74 01 00 54 0E   // ofile=Client..T.
                                                                                                        14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61   // .FrameworkDispla
                                                                                                        79 4E 61 6D 65 1F 2E 4E 45 54 20 46 72 61 6D 65   // yName..NET Frame
                                                                                                        77 6F 72 6B 20 34 20 43 6C 69 65 6E 74 20 50 72   // work 4 Client Pr
                                                                                                        6F 66 69 6C 65 )                                  // ofile

  // 
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module TestAssembly.exe
// MVID: {D70B11A7-9EBD-41B5-A4AC-E856C9D19421}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED
// Image base: 0x0000000000250000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit TestAssembly.Program
       extends [mscorlib]System.Object
{
  .method private hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // 
    .maxstack  1
    IL_0000:  nop
    IL_0001:  call       void TestAssembly.Program::Method1()
    IL_0006:  nop
			 ldc.i4 1
			 call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0008:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_000d:  nop
			 ldc.i4 2
			 call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0010:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0015:  nop
    IL_0016:  call       void TestAssembly.Program::Method2()
    IL_001b:  nop
			 ldc.i4 3
			 call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0021:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0026:  nop
			 ldc.i4 4
			 call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_002c:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0031:  nop
			 ldc.i4 5
			 call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_003b:  call       void [mscorlib]System.Console::WriteLine(float64)
    IL_0040:  nop
			 ldc.i4 6
			 call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_004a:  call       void [mscorlib]System.Console::WriteLine(float64)
    IL_004f:  nop
    IL_0050:  call       string [mscorlib]System.Console::ReadLine()
    IL_0055:  pop
    IL_0056:  call       void TestAssembly.Program::Method1()
    IL_005b:  nop
    IL_005c:  call       void TestAssembly.Program::Method2()
    IL_0061:  nop
    IL_0062:  call       string [mscorlib]System.Console::ReadLine()
    IL_0067:  pop
    IL_0068:  ret
  } // end of method Program::Main

  .method private hidebysig static void  Method1() cil managed
  {
    // 
    .maxstack  8
    IL_0000:  nop
			 ldc.i4 7
			 call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0002:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0007:  nop
    IL_0008:  ret
  } // end of method Program::Method1

  .method private hidebysig static void  Method2() cil managed
  {
    // 
    .maxstack  8
    IL_0000:  nop
			 ldc.i4 8
			 call string HttpClient.RemoteConstantLoader::LoadString(int32)
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Program::Method2

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Program::.ctor

} // end of class TestAssembly.Program


// =============================================================

// 
// 


.class private abstract auto ansi sealed beforefieldinit HttpClient.RemoteConstantLoader
       extends [mscorlib]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass5'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public int32 id
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass5'::.ctor

  } // end of class '<>c__DisplayClass5'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass7'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class HttpClient.RemoteConstantLoader/'<>c__DisplayClass5' 'CS$<>8__locals6'
    .field public string result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass7'::.ctor

    .method public hidebysig instance string 
            '<GetRemoteConstant>b__4'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
    {
      // 
      .maxstack  3
      .locals init ([0] string CS$1$0000,
               [1] string CS$0$0001)
      IL_0000:  ldarg.0
      IL_0001:  ldarg.0
      IL_0002:  ldfld      class HttpClient.RemoteConstantLoader/'<>c__DisplayClass5' HttpClient.RemoteConstantLoader/'<>c__DisplayClass7'::'CS$<>8__locals6'
      IL_0007:  ldfld      int32 HttpClient.RemoteConstantLoader/'<>c__DisplayClass5'::id
      IL_000c:  ldarg.1
      IL_000d:  call       string HttpClient.RemoteConstantLoader::PrintRemoteConstant(int32,
                                                                                       class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
      IL_0012:  dup
      IL_0013:  stloc.1
      IL_0014:  stfld      string HttpClient.RemoteConstantLoader/'<>c__DisplayClass7'::result
      IL_0019:  ldloc.1
      IL_001a:  stloc.0
      IL_001b:  br.s       IL_001d

      IL_001d:  ldloc.0
      IL_001e:  ret
    } // end of method '<>c__DisplayClass7'::'<GetRemoteConstant>b__4'

  } // end of class '<>c__DisplayClass7'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClassa'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClassa'::.ctor

    .method public hidebysig instance string 
            '<PrintRemoteConstant>b__9'(class [mscorlib]System.Threading.Tasks.Task`1<string> t) cil managed
    {
      // 
      .maxstack  3
      .locals init ([0] string CS$1$0000,
               [1] string CS$0$0001)
      IL_0000:  ldarg.0
      IL_0001:  ldarg.1
      IL_0002:  callvirt   instance !0 class [mscorlib]System.Threading.Tasks.Task`1<string>::get_Result()
      IL_0007:  dup
      IL_0008:  stloc.1
      IL_0009:  stfld      string HttpClient.RemoteConstantLoader/'<>c__DisplayClassa'::result
      IL_000e:  ldloc.1
      IL_000f:  stloc.0
      IL_0010:  br.s       IL_0012

      IL_0012:  ldloc.0
      IL_0013:  ret
    } // end of method '<>c__DisplayClassa'::'<PrintRemoteConstant>b__9'

  } // end of class '<>c__DisplayClassa'

  .field private static literal string _serverUrl = "http://localhost:1234/aaa/bbb/"
  .field private static literal int32 _arraySize = int32(0x00000032)
  .field private static initonly string _remoteFileName
  .field private static initonly string _localCacheFileName
  .field private static initonly object _locker
  .field private static string[] _constant
  .field private static bool[] _isConstantLoaded
  .method public hidebysig static int16  LoadInt16(int32 index) cil managed
  {
    // 
    .maxstack  2
    .locals init ([0] string tempValue,
             [1] int16 returnValue,
             [2] int16 CS$1$0000)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       string HttpClient.RemoteConstantLoader::LoadConstant(int32)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldloc.0
    IL_000a:  call       int32 HttpClient.RemoteConstantLoader::GetBase(string)
    IL_000f:  call       int16 [mscorlib]System.Convert::ToInt16(string,
                                                                 int32)
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  stloc.2
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.2
    IL_001a:  ret
  } // end of method RemoteConstantLoader::LoadInt16

  .method public hidebysig static int32  LoadInt32(int32 index) cil managed
  {
    // 
    .maxstack  2
    .locals init ([0] string tempValue,
             [1] int32 returnValue,
             [2] int32 CS$1$0000)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       string HttpClient.RemoteConstantLoader::LoadConstant(int32)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldloc.0
    IL_000a:  call       int32 HttpClient.RemoteConstantLoader::GetBase(string)
    IL_000f:  call       int32 [mscorlib]System.Convert::ToInt32(string,
                                                                 int32)
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  stloc.2
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.2
    IL_001a:  ret
  } // end of method RemoteConstantLoader::LoadInt32

  .method public hidebysig static int64  LoadInt64(int32 index) cil managed
  {
    // 
    .maxstack  2
    .locals init ([0] string tempValue,
             [1] int64 returnValue,
             [2] int64 CS$1$0000)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       string HttpClient.RemoteConstantLoader::LoadConstant(int32)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  ldloc.0
    IL_000a:  call       int32 HttpClient.RemoteConstantLoader::GetBase(string)
    IL_000f:  call       int64 [mscorlib]System.Convert::ToInt64(string,
                                                                 int32)
    IL_0014:  stloc.1
    IL_0015:  ldloc.1
    IL_0016:  stloc.2
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.2
    IL_001a:  ret
  } // end of method RemoteConstantLoader::LoadInt64

  .method public hidebysig static string 
          LoadString(int32 index) cil managed
  {
    // 
    .maxstack  3
    .locals init ([0] string CS$1$0000)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       string HttpClient.RemoteConstantLoader::LoadConstant(int32)
    IL_0007:  ldstr      "\""
    IL_000c:  ldstr      ""
    IL_0011:  callvirt   instance string [mscorlib]System.String::Replace(string,
                                                                          string)
    IL_0016:  stloc.0
    IL_0017:  br.s       IL_0019

    IL_0019:  ldloc.0
    IL_001a:  ret
  } // end of method RemoteConstantLoader::LoadString

  .method public hidebysig static float32 
          LoadFloat32(int32 index) cil managed
  {
    // 
    .maxstack  1
    .locals init ([0] string tempValue,
             [1] float32 CS$1$0000)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       string HttpClient.RemoteConstantLoader::LoadConstant(int32)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  call       float32 [mscorlib]System.Single::Parse(string)
    IL_000e:  stloc.1
    IL_000f:  br.s       IL_0011

    IL_0011:  ldloc.1
    IL_0012:  ret
  } // end of method RemoteConstantLoader::LoadFloat32

  .method public hidebysig static float64 
          LoadFloat64(int32 index) cil managed
  {
    // 
    .maxstack  1
    .locals init ([0] float64 CS$1$0000)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  call       string HttpClient.RemoteConstantLoader::LoadConstant(int32)
    IL_0007:  call       float64 [mscorlib]System.Double::Parse(string)
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_000f

    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method RemoteConstantLoader::LoadFloat64

  .method public hidebysig static string 
          LoadConstant(int32 id) cil managed
  {
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
    IL_0001:  ldsfld     bool[] HttpClient.RemoteConstantLoader::_isConstantLoaded
    IL_0006:  ldarg.0
    IL_0007:  ldc.i4.1
    IL_0008:  sub
    IL_0009:  ldelem.i1
    IL_000a:  ldc.i4.0
    IL_000b:  ceq
    IL_000d:  stloc.s    CS$4$0001
    IL_000f:  ldloc.s    CS$4$0001
    IL_0011:  brtrue.s   IL_0043

    IL_0013:  nop
    IL_0014:  ldstr      "Memory cached constant: id => {0}, value => {1}"
    IL_0019:  ldarg.0
    IL_001a:  box        [mscorlib]System.Int32
    IL_001f:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
    IL_0024:  ldarg.0
    IL_0025:  ldc.i4.1
    IL_0026:  sub
    IL_0027:  ldelem.ref
    IL_0028:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_002d:  call       valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [System.Windows.Forms]System.Windows.Forms.MessageBox::Show(string)
    IL_0032:  pop
    IL_0033:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
    IL_0038:  ldarg.0
    IL_0039:  ldc.i4.1
    IL_003a:  sub
    IL_003b:  ldelem.ref
    IL_003c:  stloc.s    CS$1$0000
    IL_003e:  br         IL_0149

    IL_0043:  ldsfld     string HttpClient.RemoteConstantLoader::_localCacheFileName
    IL_0048:  call       bool [mscorlib]System.IO.File::Exists(string)
    IL_004d:  ldc.i4.0
    IL_004e:  ceq
    IL_0050:  stloc.s    CS$4$0001
    IL_0052:  ldloc.s    CS$4$0001
    IL_0054:  brtrue.s   IL_00ce

    IL_0056:  nop
    IL_0057:  ldarg.0
    IL_0058:  ldloca.s   cachedConstantExists
    IL_005a:  call       string HttpClient.RemoteConstantLoader::GetCachedConstant(int32,
                                                                                   bool&)
    IL_005f:  stloc.1
    IL_0060:  ldloc.0
    IL_0061:  ldc.i4.0
    IL_0062:  ceq
    IL_0064:  stloc.s    CS$4$0001
    IL_0066:  ldloc.s    CS$4$0001
    IL_0068:  brtrue.s   IL_00cd

    IL_006a:  nop
    IL_006b:  ldstr      "Cached file constant: id => {0}, value => {1}"
    IL_0070:  ldarg.0
    IL_0071:  box        [mscorlib]System.Int32
    IL_0076:  ldloc.1
    IL_0077:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_007c:  call       valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [System.Windows.Forms]System.Windows.Forms.MessageBox::Show(string)
    IL_0081:  pop
    IL_0082:  ldc.i4.0
    IL_0083:  stloc.2
    .try
    {
      IL_0084:  ldsfld     object HttpClient.RemoteConstantLoader::_locker
      IL_0089:  dup
      IL_008a:  stloc.s    CS$2$0002
      IL_008c:  ldloca.s   '<>s__LockTaken0'
      IL_008e:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_0093:  nop
      IL_0094:  nop
      IL_0095:  ldsfld     bool[] HttpClient.RemoteConstantLoader::_isConstantLoaded
      IL_009a:  ldarg.0
      IL_009b:  ldc.i4.1
      IL_009c:  sub
      IL_009d:  ldc.i4.1
      IL_009e:  stelem.i1
      IL_009f:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
      IL_00a4:  ldarg.0
      IL_00a5:  ldc.i4.1
      IL_00a6:  sub
      IL_00a7:  ldloc.1
      IL_00a8:  stelem.ref
      IL_00a9:  nop
      IL_00aa:  leave.s    IL_00bf

    }  // end .try
    finally
    {
      IL_00ac:  ldloc.2
      IL_00ad:  ldc.i4.0
      IL_00ae:  ceq
      IL_00b0:  stloc.s    CS$4$0001
      IL_00b2:  ldloc.s    CS$4$0001
      IL_00b4:  brtrue.s   IL_00be

      IL_00b6:  ldloc.s    CS$2$0002
      IL_00b8:  call       void [mscorlib]System.Threading.Monitor::Exit(object)
      IL_00bd:  nop
      IL_00be:  endfinally
    }  // end handler
    IL_00bf:  nop
    IL_00c0:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
    IL_00c5:  ldarg.0
    IL_00c6:  ldc.i4.1
    IL_00c7:  sub
    IL_00c8:  ldelem.ref
    IL_00c9:  stloc.s    CS$1$0000
    IL_00cb:  br.s       IL_0149

    IL_00cd:  nop
    IL_00ce:  ldarg.0
    IL_00cf:  call       string HttpClient.RemoteConstantLoader::GetRemoteConstant(int32)
    IL_00d4:  stloc.3
    IL_00d5:  ldarg.0
    IL_00d6:  ldloc.3
    IL_00d7:  call       void HttpClient.RemoteConstantLoader::CacheConstantToFile(int32,
                                                                                   string)
    IL_00dc:  nop
    IL_00dd:  ldc.i4.0
    IL_00de:  stloc.s    '<>s__LockTaken1'
    .try
    {
      IL_00e0:  ldsfld     object HttpClient.RemoteConstantLoader::_locker
      IL_00e5:  dup
      IL_00e6:  stloc.s    CS$2$0002
      IL_00e8:  ldloca.s   '<>s__LockTaken1'
      IL_00ea:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_00ef:  nop
      IL_00f0:  nop
      IL_00f1:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
      IL_00f6:  ldarg.0
      IL_00f7:  ldc.i4.1
      IL_00f8:  sub
      IL_00f9:  ldloc.3
      IL_00fa:  stelem.ref
      IL_00fb:  ldsfld     bool[] HttpClient.RemoteConstantLoader::_isConstantLoaded
      IL_0100:  ldarg.0
      IL_0101:  ldc.i4.1
      IL_0102:  sub
      IL_0103:  ldc.i4.1
      IL_0104:  stelem.i1
      IL_0105:  nop
      IL_0106:  leave.s    IL_011c

    }  // end .try
    finally
    {
      IL_0108:  ldloc.s    '<>s__LockTaken1'
      IL_010a:  ldc.i4.0
      IL_010b:  ceq
      IL_010d:  stloc.s    CS$4$0001
      IL_010f:  ldloc.s    CS$4$0001
      IL_0111:  brtrue.s   IL_011b

      IL_0113:  ldloc.s    CS$2$0002
      IL_0115:  call       void [mscorlib]System.Threading.Monitor::Exit(object)
      IL_011a:  nop
      IL_011b:  endfinally
    }  // end handler
    IL_011c:  nop
    IL_011d:  ldstr      "Server constant: id => {0}, value => {1}"
    IL_0122:  ldarg.0
    IL_0123:  box        [mscorlib]System.Int32
    IL_0128:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
    IL_012d:  ldarg.0
    IL_012e:  ldc.i4.1
    IL_012f:  sub
    IL_0130:  ldelem.ref
    IL_0131:  call       string [mscorlib]System.String::Format(string,
                                                                object,
                                                                object)
    IL_0136:  call       valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [System.Windows.Forms]System.Windows.Forms.MessageBox::Show(string)
    IL_013b:  pop
    IL_013c:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
    IL_0141:  ldarg.0
    IL_0142:  ldc.i4.1
    IL_0143:  sub
    IL_0144:  ldelem.ref
    IL_0145:  stloc.s    CS$1$0000
    IL_0147:  br.s       IL_0149

    IL_0149:  ldloc.s    CS$1$0000
    IL_014b:  ret
  } // end of method RemoteConstantLoader::LoadConstant

  .method private hidebysig static void  CacheConstantToFile(int32 id,
                                                             string constantToCache) cil managed
  {
    // 
    .maxstack  4
    .locals init ([0] class [mscorlib]System.IO.FileStream fileStream,
             [1] class [mscorlib]System.IO.StreamWriter writer,
             [2] bool CS$4$0000)
    IL_0000:  nop
    IL_0001:  ldsfld     string HttpClient.RemoteConstantLoader::_localCacheFileName
    IL_0006:  ldc.i4.6
    IL_0007:  ldc.i4.2
    IL_0008:  newobj     instance void [mscorlib]System.IO.FileStream::.ctor(string,
                                                                             valuetype [mscorlib]System.IO.FileMode,
                                                                             valuetype [mscorlib]System.IO.FileAccess)
    IL_000d:  stloc.0
    .try
    {
      IL_000e:  nop
      IL_000f:  ldloc.0
      IL_0010:  newobj     instance void [mscorlib]System.IO.StreamWriter::.ctor(class [mscorlib]System.IO.Stream)
      IL_0015:  stloc.1
      .try
      {
        IL_0016:  nop
        IL_0017:  ldloc.1
        IL_0018:  ldstr      "{0}, {1}"
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

      }  // end .try
      finally
      {
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
      }  // end handler
      IL_0042:  nop
      IL_0043:  nop
      IL_0044:  leave.s    IL_0056

    }  // end .try
    finally
    {
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
    }  // end handler
    IL_0056:  nop
    IL_0057:  ret
  } // end of method RemoteConstantLoader::CacheConstantToFile

  .method private hidebysig static string 
          GetCachedConstant(int32 id,
                            [out] bool& cachedConstantExists) cil managed
  {
    // 
    .maxstack  2
    .locals init ([0] class [mscorlib]System.IO.StreamReader reader,
             [1] string line,
             [2] int32 currentID,
             [3] class [System]System.Text.RegularExpressions.Match idMatch,
             [4] class [System]System.Text.RegularExpressions.Match constantMatch,
             [5] string CS$1$0000,
             [6] bool CS$4$0001)
    IL_0000:  nop
    IL_0001:  ldsfld     string HttpClient.RemoteConstantLoader::_localCacheFileName
    IL_0006:  newobj     instance void [mscorlib]System.IO.StreamReader::.ctor(string)
    IL_000b:  stloc.0
    .try
    {
      IL_000c:  nop
      IL_000d:  br.s       IL_0078

      IL_000f:  nop
      IL_0010:  ldloc.1
      IL_0011:  ldstr      "^\\d+"
      IL_0016:  call       class [System]System.Text.RegularExpressions.Match [System]System.Text.RegularExpressions.Regex::Match(string,
                                                                                                                                  string)
      IL_001b:  stloc.3
      IL_001c:  ldloc.3
      IL_001d:  callvirt   instance bool [System]System.Text.RegularExpressions.Group::get_Success()
      IL_0022:  brfalse.s  IL_0037

      IL_0024:  ldloc.3
      IL_0025:  callvirt   instance string [System]System.Text.RegularExpressions.Capture::get_Value()
      IL_002a:  call       int32 [mscorlib]System.Int32::Parse(string)
      IL_002f:  ldarg.0
      IL_0030:  ceq
      IL_0032:  ldc.i4.0
      IL_0033:  ceq
      IL_0035:  br.s       IL_0038

      IL_0037:  ldc.i4.1
      IL_0038:  stloc.s    CS$4$0001
      IL_003a:  ldloc.s    CS$4$0001
      IL_003c:  brtrue.s   IL_0077

      IL_003e:  nop
      IL_003f:  ldloc.1
      IL_0040:  ldstr      ",\\s+(\\S+)"
      IL_0045:  call       class [System]System.Text.RegularExpressions.Match [System]System.Text.RegularExpressions.Regex::Match(string,
                                                                                                                                  string)
      IL_004a:  stloc.s    constantMatch
      IL_004c:  ldloc.s    constantMatch
      IL_004e:  callvirt   instance bool [System]System.Text.RegularExpressions.Group::get_Success()
      IL_0053:  ldc.i4.0
      IL_0054:  ceq
      IL_0056:  stloc.s    CS$4$0001
      IL_0058:  ldloc.s    CS$4$0001
      IL_005a:  brtrue.s   IL_0076

      IL_005c:  nop
      IL_005d:  ldarg.1
      IL_005e:  ldc.i4.1
      IL_005f:  stind.i1
      IL_0060:  ldloc.s    constantMatch
      IL_0062:  callvirt   instance class [System]System.Text.RegularExpressions.GroupCollection [System]System.Text.RegularExpressions.Match::get_Groups()
      IL_0067:  ldc.i4.1
      IL_0068:  callvirt   instance class [System]System.Text.RegularExpressions.Group [System]System.Text.RegularExpressions.GroupCollection::get_Item(int32)
      IL_006d:  callvirt   instance string [System]System.Text.RegularExpressions.Capture::get_Value()
      IL_0072:  stloc.s    CS$1$0000
      IL_0074:  leave.s    IL_00ac

      IL_0076:  nop
      IL_0077:  nop
      IL_0078:  ldloc.0
      IL_0079:  callvirt   instance string [mscorlib]System.IO.TextReader::ReadLine()
      IL_007e:  dup
      IL_007f:  stloc.1
      IL_0080:  call       bool [mscorlib]System.String::IsNullOrWhiteSpace(string)
      IL_0085:  ldc.i4.0
      IL_0086:  ceq
      IL_0088:  stloc.s    CS$4$0001
      IL_008a:  ldloc.s    CS$4$0001
      IL_008c:  brtrue.s   IL_000f

      IL_008e:  ldarg.1
      IL_008f:  ldc.i4.0
      IL_0090:  stind.i1
      IL_0091:  ldsfld     string [mscorlib]System.String::Empty
      IL_0096:  stloc.s    CS$1$0000
      IL_0098:  leave.s    IL_00ac

    }  // end .try
    finally
    {
      IL_009a:  ldloc.0
      IL_009b:  ldnull
      IL_009c:  ceq
      IL_009e:  stloc.s    CS$4$0001
      IL_00a0:  ldloc.s    CS$4$0001
      IL_00a2:  brtrue.s   IL_00ab

      IL_00a4:  ldloc.0
      IL_00a5:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_00aa:  nop
      IL_00ab:  endfinally
    }  // end handler
    IL_00ac:  nop
    IL_00ad:  ldloc.s    CS$1$0000
    IL_00af:  ret
  } // end of method RemoteConstantLoader::GetCachedConstant

  .method private hidebysig static string 
          GetRemoteConstant(int32 id) cil managed
  {
    // 
    .maxstack  4
    .locals init ([0] string queryString,
             [1] class [System.Net.Http]System.Net.Http.HttpClient _httpClient,
             [2] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask,
             [3] class [System.Net.Http]System.Net.Http.HttpClient '<>g__initLocal3',
             [4] class HttpClient.RemoteConstantLoader/'<>c__DisplayClass7' 'CS$<>8__locals8',
             [5] bool '<>s__LockTaken2',
             [6] class HttpClient.RemoteConstantLoader/'<>c__DisplayClass5' 'CS$<>8__locals6',
             [7] string CS$1$0000,
             [8] object CS$2$0001,
             [9] bool CS$4$0002)
    IL_0000:  newobj     instance void HttpClient.RemoteConstantLoader/'<>c__DisplayClass5'::.ctor()
    IL_0005:  stloc.s    'CS$<>8__locals6'
    IL_0007:  ldloc.s    'CS$<>8__locals6'
    IL_0009:  ldarg.0
    IL_000a:  stfld      int32 HttpClient.RemoteConstantLoader/'<>c__DisplayClass5'::id
    IL_000f:  nop
    IL_0010:  ldc.i4.0
    IL_0011:  stloc.s    '<>s__LockTaken2'
    .try
    {
      IL_0013:  newobj     instance void HttpClient.RemoteConstantLoader/'<>c__DisplayClass7'::.ctor()
      IL_0018:  stloc.s    'CS$<>8__locals8'
      IL_001a:  ldloc.s    'CS$<>8__locals8'
      IL_001c:  ldloc.s    'CS$<>8__locals6'
      IL_001e:  stfld      class HttpClient.RemoteConstantLoader/'<>c__DisplayClass5' HttpClient.RemoteConstantLoader/'<>c__DisplayClass7'::'CS$<>8__locals6'
      IL_0023:  ldsfld     object HttpClient.RemoteConstantLoader::_locker
      IL_0028:  dup
      IL_0029:  stloc.s    CS$2$0001
      IL_002b:  ldloca.s   '<>s__LockTaken2'
      IL_002d:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_0032:  nop
      IL_0033:  nop
      IL_0034:  ldstr      "{0}\?file_name={1}&constant_id={2}"
      IL_0039:  ldstr      "http://localhost:1234/aaa/bbb/"
      IL_003e:  ldsfld     string HttpClient.RemoteConstantLoader::_remoteFileName
      IL_0043:  ldloc.s    'CS$<>8__locals6'
      IL_0045:  ldfld      int32 HttpClient.RemoteConstantLoader/'<>c__DisplayClass5'::id
      IL_004a:  box        [mscorlib]System.Int32
      IL_004f:  call       string [mscorlib]System.String::Format(string,
                                                                  object,
                                                                  object,
                                                                  object)
      IL_0054:  stloc.0
      IL_0055:  newobj     instance void [System.Net.Http]System.Net.Http.HttpClient::.ctor()
      IL_005a:  stloc.3
      IL_005b:  ldloc.3
      IL_005c:  ldstr      "http://localhost:1234/aaa/bbb/"
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
      IL_007d:  stfld      string HttpClient.RemoteConstantLoader/'<>c__DisplayClass7'::result
      IL_0082:  ldloc.2
      IL_0083:  ldloc.s    'CS$<>8__locals8'
      IL_0085:  ldftn      instance string HttpClient.RemoteConstantLoader/'<>c__DisplayClass7'::'<GetRemoteConstant>b__4'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
      IL_008b:  newobj     instance void class [mscorlib]System.Func`2<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>,string>::.ctor(object,
                                                                                                                                                                                                native int)
      IL_0090:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<!!0> class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith<string>(class [mscorlib]System.Func`2<class [mscorlib]System.Threading.Tasks.Task`1<!0>,!!0>)
      IL_0095:  callvirt   instance void [mscorlib]System.Threading.Tasks.Task::Wait()
      IL_009a:  nop
      IL_009b:  ldloc.s    'CS$<>8__locals8'
      IL_009d:  ldfld      string HttpClient.RemoteConstantLoader/'<>c__DisplayClass7'::result
      IL_00a2:  stloc.s    CS$1$0000
      IL_00a4:  leave.s    IL_00ba

    }  // end .try
    finally
    {
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
    }  // end handler
    IL_00ba:  nop
    IL_00bb:  ldloc.s    CS$1$0000
    IL_00bd:  ret
  } // end of method RemoteConstantLoader::GetRemoteConstant

  .method private hidebysig static string 
          PrintRemoteConstant(int32 id,
                              class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> httpTask) cil managed
  {
    // 
    .maxstack  4
    .locals init ([0] class [mscorlib]System.Threading.Tasks.Task`1<string> task,
             [1] class HttpClient.RemoteConstantLoader/'<>c__DisplayClassa' 'CS$<>8__localsb',
             [2] string CS$1$0000)
    IL_0000:  newobj     instance void HttpClient.RemoteConstantLoader/'<>c__DisplayClassa'::.ctor()
    IL_0005:  stloc.1
    IL_0006:  nop
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance !0 class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::get_Result()
    IL_000d:  callvirt   instance class [System.Net.Http]System.Net.Http.HttpContent [System.Net.Http]System.Net.Http.HttpResponseMessage::get_Content()
    IL_0012:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<string> [System.Net.Http]System.Net.Http.HttpContent::ReadAsStringAsync()
    IL_0017:  stloc.0
    IL_0018:  ldloc.1
    IL_0019:  ldsfld     string [mscorlib]System.String::Empty
    IL_001e:  stfld      string HttpClient.RemoteConstantLoader/'<>c__DisplayClassa'::result
    IL_0023:  ldloc.0
    IL_0024:  ldloc.1
    IL_0025:  ldftn      instance string HttpClient.RemoteConstantLoader/'<>c__DisplayClassa'::'<PrintRemoteConstant>b__9'(class [mscorlib]System.Threading.Tasks.Task`1<string>)
    IL_002b:  newobj     instance void class [mscorlib]System.Func`2<class [mscorlib]System.Threading.Tasks.Task`1<string>,string>::.ctor(object,
                                                                                                                                          native int)
    IL_0030:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<!!0> class [mscorlib]System.Threading.Tasks.Task`1<string>::ContinueWith<string>(class [mscorlib]System.Func`2<class [mscorlib]System.Threading.Tasks.Task`1<!0>,!!0>)
    IL_0035:  callvirt   instance void [mscorlib]System.Threading.Tasks.Task::Wait()
    IL_003a:  nop
    IL_003b:  ldloc.1
    IL_003c:  ldfld      string HttpClient.RemoteConstantLoader/'<>c__DisplayClassa'::result
    IL_0041:  stloc.2
    IL_0042:  br.s       IL_0044

    IL_0044:  ldloc.2
    IL_0045:  ret
  } // end of method RemoteConstantLoader::PrintRemoteConstant

  .method private hidebysig static int32 
          GetBase(string 'value') cil managed
  {
    // 
    .maxstack  2
    .locals init ([0] int32 CS$1$0000)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldstr      "x"
    IL_0007:  callvirt   instance bool [mscorlib]System.String::Contains(string)
    IL_000c:  brtrue.s   IL_0012

    IL_000e:  ldc.i4.s   10
    IL_0010:  br.s       IL_0014

    IL_0012:  ldc.i4.s   16
    IL_0014:  stloc.0
    IL_0015:  br.s       IL_0017

    IL_0017:  ldloc.0
    IL_0018:  ret
  } // end of method RemoteConstantLoader::GetBase

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 
    .maxstack  2
    IL_0000:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_0005:  ldc.i4.0
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0010:  stsfld     string HttpClient.RemoteConstantLoader::_remoteFileName
    IL_0015:  ldstr      "const-cache-20121113-183435-TestAssembly.exe.txt"
    IL_001a:  ldc.i4.0
    IL_001b:  newarr     [mscorlib]System.Object
    IL_0020:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0025:  stsfld     string HttpClient.RemoteConstantLoader::_localCacheFileName
    IL_002a:  newobj     instance void [mscorlib]System.Object::.ctor()
    IL_002f:  stsfld     object HttpClient.RemoteConstantLoader::_locker
    IL_0034:  ldc.i4.s   8
    IL_0036:  newarr     [mscorlib]System.String
    IL_003b:  stsfld     string[] HttpClient.RemoteConstantLoader::_constant
    IL_0040:  ldc.i4.s   8
    IL_0042:  newarr     [mscorlib]System.Boolean
    IL_0047:  stsfld     bool[] HttpClient.RemoteConstantLoader::_isConstantLoaded
    IL_004c:  ret
  } // end of method RemoteConstantLoader::.cctor

} // end of class HttpClient.RemoteConstantLoader

    
