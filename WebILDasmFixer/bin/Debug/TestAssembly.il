
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
    IL_0007:  ldc.i4.5
    IL_0008:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_000d:  nop
    IL_000e:  ldc.i4.s   -12
    IL_0010:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0015:  nop
    IL_0016:  call       void TestAssembly.Program::Method2()
    IL_001b:  nop
    IL_001c:  ldc.i4     0x14d
    IL_0021:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0026:  nop
    IL_0027:  ldc.i4     0xfffffe44
    IL_002c:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0031:  nop
    IL_0032:  ldc.r8     888.99000000000001
    IL_003b:  call       void [mscorlib]System.Console::WriteLine(float64)
    IL_0040:  nop
    IL_0041:  ldc.r8     -1234.8900000000001
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
    IL_0001:  ldc.i4.1
    IL_0002:  call       void [mscorlib]System.Console::WriteLine(int32)
    IL_0007:  nop
    IL_0008:  ret
  } // end of method Program::Method1

  .method private hidebysig static void  Method2() cil managed
  {
    // 
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "aaa"
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
