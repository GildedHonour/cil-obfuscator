
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.1
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly BenchmarkFasta
{
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 29 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ..).NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 30 2C 50 72   // ,Version=v4.0,Pr
                                                                                                        6F 66 69 6C 65 3D 43 6C 69 65 6E 74 01 00 54 0E   // ofile=Client..T.
                                                                                                        14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C 61   // .FrameworkDispla
                                                                                                        79 4E 61 6D 65 1F 2E 4E 45 54 20 46 72 61 6D 65   // yName..NET Frame
                                                                                                        77 6F 72 6B 20 34 20 43 6C 69 65 6E 74 20 50 72   // work 4 Client Pr
                                                                                                        6F 66 69 6C 65 )                                  // ofile
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0E 42 65 6E 63 68 6D 61 72 6B 46 61 73 74   // ...BenchmarkFast
                                                                                              61 00 00 )                                        // a..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 09 4D 69 63 72 6F 73 6F 66 74 00 00 )       // ...Microsoft..
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0E 42 65 6E 63 68 6D 61 72 6B 46 61 73 74   // ...BenchmarkFast
                                                                                                61 00 00 )                                        // a..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 1B 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  4D 69 63 72 6F 73 6F 66 74 20 32 30 31 32 00 00 ) // Microsoft 2012..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 30 64 64 66 36 62 35 64 2D 65 64 39 37   // ..$0ddf6b5d-ed97
                                                                                                  2D 34 34 30 38 2D 38 30 30 31 2D 39 38 31 65 36   // -4408-8001-981e6
                                                                                                  31 62 38 64 35 61 34 00 00 )                      // 1b8d5a4..
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..

  // 
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module BenchmarkFasta.exe
// MVID: {CD2BEC5D-0237-4D58-99B4-58EE30265214}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED
// Image base: 0x0000000000170000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit BenchmarkFasta.Fasta
       extends [mscorlib]System.Object
{
  .class auto ansi nested private beforefieldinit Frequency
         extends [mscorlib]System.Object
  {
    .field public uint8 c
    .field public float64 p
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(char c,
                                 float64 p) cil managed
    {
      // 
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  nop
      IL_0007:  nop
      IL_0008:  ldarg.0
      IL_0009:  ldarg.1
      IL_000a:  conv.u1
      IL_000b:  stfld      uint8 BenchmarkFasta.Fasta/Frequency::c
      IL_0010:  ldarg.0
      IL_0011:  ldarg.2
      IL_0012:  stfld      float64 BenchmarkFasta.Fasta/Frequency::p
      IL_0017:  nop
      IL_0018:  ret
    } // end of method Frequency::.ctor

  } // end of class Frequency

  .field private static literal int32 IM = int32(0x000222C0)
  .field private static literal int32 IA = int32(0x00000F25)
  .field private static literal int32 IC = int32(0x00007385)
  .field private static literal int32 LineLength = int32(0x0000003C)
  .field private static int32 seed
  .field private static string ALU
  .field private static class BenchmarkFasta.Fasta/Frequency[] IUB
  .field private static int32 index
  .field private static uint8[] buf
  .field private static class BenchmarkFasta.Fasta/Frequency[] HomoSapiens
  .method private hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // 
    .maxstack  5
    .locals init (int32 V_0,
             class [mscorlib]System.IO.Stream V_1,
             bool V_2)
    IL_0000:  nop
    IL_0001:  ldsfld     class BenchmarkFasta.Fasta/Frequency[] BenchmarkFasta.Fasta::HomoSapiens
    IL_0006:  call       void BenchmarkFasta.Fasta::MakeCumulative(class BenchmarkFasta.Fasta/Frequency[])
    IL_000b:  nop
    IL_000c:  ldsfld     class BenchmarkFasta.Fasta/Frequency[] BenchmarkFasta.Fasta::IUB
    IL_0011:  call       void BenchmarkFasta.Fasta::MakeCumulative(class BenchmarkFasta.Fasta/Frequency[])
    IL_0016:  nop
    IL_0017:  ldarg.0
    IL_0018:  ldlen
    IL_0019:  conv.i4
		IL_001a:	ldc.i4 1
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_001b:	bgt	IL_0024

		IL_001d:	ldc.i4 2
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0022:	br	IL_002c

    IL_0024:  ldarg.0
		IL_0025:	ldc.i4 3
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0026:  ldelem.ref
    IL_0027:  call       int32 [mscorlib]System.Int32::Parse(string)
    IL_002c:  stloc.0
    IL_002d:  call       class [mscorlib]System.IO.Stream [mscorlib]System.Console::OpenStandardOutput()
    IL_0032:  stloc.1
    .try
    {
      IL_0033:  nop
		IL_0034:	ldc.i4 4
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
		IL_0039:	ldc.i4 5
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
      IL_003e:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_ASCII()
      IL_0043:  ldsfld     string BenchmarkFasta.Fasta::ALU
      IL_0048:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
      IL_004d:  ldloc.0
		IL_004e:	ldc.i4 6
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_004f:  mul
      IL_0050:  ldloc.1
      IL_0051:  call       void BenchmarkFasta.Fasta::MakeRepeatFasta(string,
                                                                      string,
                                                                      uint8[],
                                                                      int32,
                                                                      class [mscorlib]System.IO.Stream)
      IL_0056:  nop
		IL_0057:	ldc.i4 7
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
		IL_005c:	ldc.i4 8
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
      IL_0061:  ldsfld     class BenchmarkFasta.Fasta/Frequency[] BenchmarkFasta.Fasta::IUB
      IL_0066:  ldloc.0
		IL_0067:	ldc.i4 9
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0068:  mul
      IL_0069:  ldloc.1
      IL_006a:  call       void BenchmarkFasta.Fasta::MakeRandomFasta(string,
                                                                      string,
                                                                      class BenchmarkFasta.Fasta/Frequency[],
                                                                      int32,
                                                                      class [mscorlib]System.IO.Stream)
      IL_006f:  nop
		IL_0070:	ldc.i4 10
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
		IL_0075:	ldc.i4 11
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
      IL_007a:  ldsfld     class BenchmarkFasta.Fasta/Frequency[] BenchmarkFasta.Fasta::HomoSapiens
      IL_007f:  ldloc.0
		IL_0080:	ldc.i4 12
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0081:  mul
      IL_0082:  ldloc.1
      IL_0083:  call       void BenchmarkFasta.Fasta::MakeRandomFasta(string,
                                                                      string,
                                                                      class BenchmarkFasta.Fasta/Frequency[],
                                                                      int32,
                                                                      class [mscorlib]System.IO.Stream)
      IL_0088:  nop
      IL_0089:  nop
      IL_008a:  leave.s    IL_009c

    }  // end .try
    finally
    {
      IL_008c:  ldloc.1
      IL_008d:  ldnull
      IL_008e:  ceq
      IL_0090:  stloc.2
      IL_0091:  ldloc.2
		IL_0092:	brtrue	IL_009b

      IL_0094:  ldloc.1
      IL_0095:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
      IL_009a:  nop
      IL_009b:  endfinally
    }  // end handler
    IL_009c:  nop
    IL_009d:  ret
  } // end of method Fasta::Main

  .method private hidebysig static float64 
          random(float64 max) cil managed
  {
    // 
    .maxstack  3
    .locals init (float64 V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldsfld     int32 BenchmarkFasta.Fasta::seed
		IL_0007:	ldc.i4 13
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_000c:  mul
		IL_000d:	ldc.i4 14
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0012:  add
		IL_0013:	ldc.i4 15
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0018:  rem
    IL_0019:  dup
    IL_001a:  stsfld     int32 BenchmarkFasta.Fasta::seed
    IL_001f:  conv.r8
		IL_0020:	ldc.i4 16
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_0029:  mul
    IL_002a:  mul
    IL_002b:  stloc.0
		IL_002c:	br	IL_002e

    IL_002e:  ldloc.0
    IL_002f:  ret
  } // end of method Fasta::random

  .method private hidebysig static void  MakeCumulative(class BenchmarkFasta.Fasta/Frequency[] a) cil managed
  {
    // 
    .maxstack  3
    .locals init (float64 V_0,
             int32 V_1,
             bool V_2)
    IL_0000:  nop
		IL_0001:	ldc.i4 17
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_000a:  stloc.0
		IL_000b:	ldc.i4 18
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_000c:  stloc.1
		IL_000d:	br	IL_0029

    IL_000f:  nop
    IL_0010:  ldloc.0
    IL_0011:  ldarg.0
    IL_0012:  ldloc.1
    IL_0013:  ldelem.ref
    IL_0014:  ldfld      float64 BenchmarkFasta.Fasta/Frequency::p
    IL_0019:  add
    IL_001a:  stloc.0
    IL_001b:  ldarg.0
    IL_001c:  ldloc.1
    IL_001d:  ldelem.ref
    IL_001e:  ldloc.0
    IL_001f:  stfld      float64 BenchmarkFasta.Fasta/Frequency::p
    IL_0024:  nop
    IL_0025:  ldloc.1
		IL_0026:	ldc.i4 19
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0027:  add
    IL_0028:  stloc.1
    IL_0029:  ldloc.1
    IL_002a:  ldarg.0
    IL_002b:  ldlen
    IL_002c:  conv.i4
    IL_002d:  clt
    IL_002f:  stloc.2
    IL_0030:  ldloc.2
		IL_0031:	brtrue	IL_000f

    IL_0033:  ret
  } // end of method Fasta::MakeCumulative

  .method private hidebysig static uint8 
          SelectRandom(class BenchmarkFasta.Fasta/Frequency[] a) cil managed
  {
    // 
    .maxstack  3
    .locals init (float64 V_0,
             int32 V_1,
             uint8 V_2,
             bool V_3)
    IL_0000:  nop
		IL_0001:	ldc.i4 20
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_000a:  call       float64 BenchmarkFasta.Fasta::random(float64)
    IL_000f:  stloc.0
		IL_0010:	ldc.i4 21
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0011:  stloc.1
		IL_0012:	br	IL_0035

    IL_0014:  ldloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldloc.1
    IL_0017:  ldelem.ref
    IL_0018:  ldfld      float64 BenchmarkFasta.Fasta/Frequency::p
    IL_001d:  clt
		IL_001f:	ldc.i4 22
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0020:  ceq
    IL_0022:  stloc.3
    IL_0023:  ldloc.3
		IL_0024:	brtrue	IL_0031

    IL_0026:  ldarg.0
    IL_0027:  ldloc.1
    IL_0028:  ldelem.ref
    IL_0029:  ldfld      uint8 BenchmarkFasta.Fasta/Frequency::c
    IL_002e:  stloc.2
		IL_002f:	br	IL_004e

    IL_0031:  ldloc.1
		IL_0032:	ldc.i4 23
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0033:  add
    IL_0034:  stloc.1
    IL_0035:  ldloc.1
    IL_0036:  ldarg.0
    IL_0037:  ldlen
    IL_0038:  conv.i4
    IL_0039:  clt
    IL_003b:  stloc.3
    IL_003c:  ldloc.3
		IL_003d:	brtrue	IL_0014

    IL_003f:  ldarg.0
    IL_0040:  ldarg.0
    IL_0041:  ldlen
    IL_0042:  conv.i4
		IL_0043:	ldc.i4 24
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0044:  sub
    IL_0045:  ldelem.ref
    IL_0046:  ldfld      uint8 BenchmarkFasta.Fasta/Frequency::c
    IL_004b:  stloc.2
		IL_004c:	br	IL_004e

    IL_004e:  ldloc.2
    IL_004f:  ret
  } // end of method Fasta::SelectRandom

  .method private hidebysig static void  MakeRandomFasta(string id,
                                                         string desc,
                                                         class BenchmarkFasta.Fasta/Frequency[] a,
                                                         int32 n,
                                                         class [mscorlib]System.IO.Stream s) cil managed
  {
    // 
    .maxstack  4
    .locals init (int32 V_0,
             uint8[] V_1,
             int32 V_2,
             string[] V_3,
             bool V_4)
    IL_0000:  nop
		IL_0001:	ldc.i4 25
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0002:  stsfld     int32 BenchmarkFasta.Fasta::index
		IL_0007:	ldc.i4 26
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0008:  stloc.0
    IL_0009:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_ASCII()
		IL_000e:	ldc.i4 27
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_000f:  newarr     [mscorlib]System.String
    IL_0014:  stloc.3
    IL_0015:  ldloc.3
		IL_0016:	ldc.i4 28
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0017:	ldc.i4 29
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
    IL_001c:  stelem.ref
    IL_001d:  ldloc.3
		IL_001e:	ldc.i4 30
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_001f:  ldarg.0
    IL_0020:  stelem.ref
    IL_0021:  ldloc.3
		IL_0022:	ldc.i4 31
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0023:	ldc.i4 32
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
    IL_0028:  stelem.ref
    IL_0029:  ldloc.3
		IL_002a:	ldc.i4 33
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_002b:  ldarg.1
    IL_002c:  stelem.ref
    IL_002d:  ldloc.3
		IL_002e:	ldc.i4 34
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_002f:	ldc.i4 35
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
    IL_0034:  stelem.ref
    IL_0035:  ldloc.3
    IL_0036:  call       string [mscorlib]System.String::Concat(string[])
    IL_003b:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_0040:  stloc.1
    IL_0041:  ldarg.s    s
    IL_0043:  ldloc.1
		IL_0044:	ldc.i4 36
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0045:  ldloc.1
    IL_0046:  ldlen
    IL_0047:  conv.i4
    IL_0048:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                         int32,
                                                                         int32)
    IL_004d:  nop
    IL_004e:  br         IL_00dc

    IL_0053:  nop
    IL_0054:  ldarg.3
		IL_0055:	ldc.i4 37
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0057:	blt	IL_005d

		IL_0059:	ldc.i4 38
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_005b:	br	IL_005e

    IL_005d:  ldarg.3
    IL_005e:  stloc.0
    IL_005f:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_0064:  ldlen
    IL_0065:  conv.i4
    IL_0066:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_006b:  sub
    IL_006c:  ldloc.0
    IL_006d:  clt
		IL_006f:	ldc.i4 39
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0070:  ceq
    IL_0072:  stloc.s    V_4
    IL_0074:  ldloc.s    V_4
		IL_0076:	brtrue	IL_0093

    IL_0078:  nop
    IL_0079:  ldarg.s    s
    IL_007b:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
		IL_0080:	ldc.i4 40
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0081:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_0086:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                         int32,
                                                                         int32)
    IL_008b:  nop
		IL_008c:	ldc.i4 41
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_008d:  stsfld     int32 BenchmarkFasta.Fasta::index
    IL_0092:  nop
		IL_0093:	ldc.i4 42
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0094:  stloc.2
		IL_0095:	br	IL_00b6

    IL_0097:  nop
    IL_0098:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_009d:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_00a2:  dup
		IL_00a3:	ldc.i4 43
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00a4:  add
    IL_00a5:  stsfld     int32 BenchmarkFasta.Fasta::index
    IL_00aa:  ldarg.2
    IL_00ab:  call       uint8 BenchmarkFasta.Fasta::SelectRandom(class BenchmarkFasta.Fasta/Frequency[])
    IL_00b0:  stelem.i1
    IL_00b1:  nop
    IL_00b2:  ldloc.2
		IL_00b3:	ldc.i4 44
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00b4:  add
    IL_00b5:  stloc.2
    IL_00b6:  ldloc.2
    IL_00b7:  ldloc.0
    IL_00b8:  clt
    IL_00ba:  stloc.s    V_4
    IL_00bc:  ldloc.s    V_4
		IL_00be:	brtrue	IL_0097

    IL_00c0:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_00c5:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_00ca:  dup
		IL_00cb:	ldc.i4 45
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00cc:  add
    IL_00cd:  stsfld     int32 BenchmarkFasta.Fasta::index
		IL_00d2:	ldc.i4 46
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00d4:  stelem.i1
    IL_00d5:  ldarg.3
		IL_00d6:	ldc.i4 47
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00d8:  sub
    IL_00d9:  starg.s    n
    IL_00db:  nop
    IL_00dc:  ldarg.3
		IL_00dd:	ldc.i4 48
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00de:  cgt
    IL_00e0:  stloc.s    V_4
    IL_00e2:  ldloc.s    V_4
    IL_00e4:  brtrue     IL_0053

    IL_00e9:  ldsfld     int32 BenchmarkFasta.Fasta::index
		IL_00ee:	ldc.i4 49
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00ef:  ceq
    IL_00f1:  stloc.s    V_4
    IL_00f3:  ldloc.s    V_4
		IL_00f5:	brtrue	IL_010a

    IL_00f7:  ldarg.s    s
    IL_00f9:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
		IL_00fe:	ldc.i4 50
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00ff:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_0104:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                         int32,
                                                                         int32)
    IL_0109:  nop
    IL_010a:  ret
  } // end of method Fasta::MakeRandomFasta

  .method private hidebysig static void  MakeRepeatFasta(string id,
                                                         string desc,
                                                         uint8[] alu,
                                                         int32 n,
                                                         class [mscorlib]System.IO.Stream s) cil managed
  {
    // 
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             uint8[] V_3,
             int32 V_4,
             string[] V_5,
             bool V_6)
    IL_0000:  nop
		IL_0001:	ldc.i4 51
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0002:  stsfld     int32 BenchmarkFasta.Fasta::index
		IL_0007:	ldc.i4 52
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0008:  stloc.0
		IL_0009:	ldc.i4 53
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_000a:  stloc.1
    IL_000b:  ldarg.2
    IL_000c:  ldlen
    IL_000d:  conv.i4
    IL_000e:  stloc.2
    IL_000f:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_ASCII()
		IL_0014:	ldc.i4 54
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0015:  newarr     [mscorlib]System.String
    IL_001a:  stloc.s    V_5
    IL_001c:  ldloc.s    V_5
		IL_001e:	ldc.i4 55
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_001f:	ldc.i4 56
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
    IL_0024:  stelem.ref
    IL_0025:  ldloc.s    V_5
		IL_0027:	ldc.i4 57
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0028:  ldarg.0
    IL_0029:  stelem.ref
    IL_002a:  ldloc.s    V_5
		IL_002c:	ldc.i4 58
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_002d:	ldc.i4 59
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
    IL_0032:  stelem.ref
    IL_0033:  ldloc.s    V_5
		IL_0035:	ldc.i4 60
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0036:  ldarg.1
    IL_0037:  stelem.ref
    IL_0038:  ldloc.s    V_5
		IL_003a:	ldc.i4 61
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_003b:	ldc.i4 62
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
    IL_0040:  stelem.ref
    IL_0041:  ldloc.s    V_5
    IL_0043:  call       string [mscorlib]System.String::Concat(string[])
    IL_0048:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_004d:  stloc.3
    IL_004e:  ldarg.s    s
    IL_0050:  ldloc.3
		IL_0051:	ldc.i4 63
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0052:  ldloc.3
    IL_0053:  ldlen
    IL_0054:  conv.i4
    IL_0055:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                         int32,
                                                                         int32)
    IL_005a:  nop
    IL_005b:  br         IL_00fd

    IL_0060:  nop
    IL_0061:  ldarg.3
		IL_0062:	ldc.i4 64
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0064:	blt	IL_006a

		IL_0066:	ldc.i4 65
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0068:	br	IL_006b

    IL_006a:  ldarg.3
    IL_006b:  stloc.0
    IL_006c:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_0071:  ldlen
    IL_0072:  conv.i4
    IL_0073:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_0078:  sub
    IL_0079:  ldloc.0
    IL_007a:  clt
		IL_007c:	ldc.i4 66
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_007d:  ceq
    IL_007f:  stloc.s    V_6
    IL_0081:  ldloc.s    V_6
		IL_0083:	brtrue	IL_00a0

    IL_0085:  nop
    IL_0086:  ldarg.s    s
    IL_0088:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
		IL_008d:	ldc.i4 67
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_008e:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_0093:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                         int32,
                                                                         int32)
    IL_0098:  nop
		IL_0099:	ldc.i4 68
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_009a:  stsfld     int32 BenchmarkFasta.Fasta::index
    IL_009f:  nop
		IL_00a0:	ldc.i4 69
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00a1:  stloc.s    V_4
		IL_00a3:	br	IL_00d6

    IL_00a5:  nop
    IL_00a6:  ldloc.1
    IL_00a7:  ldloc.2
    IL_00a8:  ceq
		IL_00aa:	ldc.i4 70
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00ab:  ceq
    IL_00ad:  stloc.s    V_6
    IL_00af:  ldloc.s    V_6
		IL_00b1:	brtrue	IL_00b5

		IL_00b3:	ldc.i4 71
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00b4:  stloc.1
    IL_00b5:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_00ba:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_00bf:  dup
		IL_00c0:	ldc.i4 72
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00c1:  add
    IL_00c2:  stsfld     int32 BenchmarkFasta.Fasta::index
    IL_00c7:  ldarg.2
    IL_00c8:  ldloc.1
    IL_00c9:  ldelem.u1
    IL_00ca:  stelem.i1
    IL_00cb:  ldloc.1
		IL_00cc:	ldc.i4 73
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00cd:  add
    IL_00ce:  stloc.1
    IL_00cf:  nop
    IL_00d0:  ldloc.s    V_4
		IL_00d2:	ldc.i4 74
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00d3:  add
    IL_00d4:  stloc.s    V_4
    IL_00d6:  ldloc.s    V_4
    IL_00d8:  ldloc.0
    IL_00d9:  clt
    IL_00db:  stloc.s    V_6
    IL_00dd:  ldloc.s    V_6
		IL_00df:	brtrue	IL_00a5

    IL_00e1:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_00e6:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_00eb:  dup
		IL_00ec:	ldc.i4 75
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00ed:  add
    IL_00ee:  stsfld     int32 BenchmarkFasta.Fasta::index
		IL_00f3:	ldc.i4 76
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00f5:  stelem.i1
    IL_00f6:  ldarg.3
		IL_00f7:	ldc.i4 77
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00f9:  sub
    IL_00fa:  starg.s    n
    IL_00fc:  nop
    IL_00fd:  ldarg.3
		IL_00fe:	ldc.i4 78
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00ff:  cgt
    IL_0101:  stloc.s    V_6
    IL_0103:  ldloc.s    V_6
    IL_0105:  brtrue     IL_0060

    IL_010a:  ldsfld     int32 BenchmarkFasta.Fasta::index
		IL_010f:	ldc.i4 79
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0110:  ceq
    IL_0112:  stloc.s    V_6
    IL_0114:  ldloc.s    V_6
		IL_0116:	brtrue	IL_012b

    IL_0118:  ldarg.s    s
    IL_011a:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
		IL_011f:	ldc.i4 80
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0120:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_0125:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                         int32,
                                                                         int32)
    IL_012a:  nop
    IL_012b:  ret
  } // end of method Fasta::MakeRepeatFasta

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Fasta::.ctor

  .method private hidebysig specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // 
    .maxstack  5
    .locals init (class BenchmarkFasta.Fasta/Frequency[] V_0)
		IL_0000:	ldc.i4 81
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0002:  stsfld     int32 BenchmarkFasta.Fasta::seed
		IL_0007:	ldc.i4 82
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
    IL_000c:  stsfld     string BenchmarkFasta.Fasta::ALU
		IL_0011:	ldc.i4 83
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0013:  newarr     BenchmarkFasta.Fasta/Frequency
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
		IL_001a:	ldc.i4 84
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_001b:	ldc.i4 85
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_001d:	ldc.i4 86
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_0026:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
		IL_002d:	ldc.i4 87
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_002e:	ldc.i4 88
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0030:	ldc.i4 89
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_0039:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_003e:  stelem.ref
    IL_003f:  ldloc.0
		IL_0040:	ldc.i4 90
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0041:	ldc.i4 91
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0043:	ldc.i4 92
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_004c:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0051:  stelem.ref
    IL_0052:  ldloc.0
		IL_0053:	ldc.i4 93
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0054:	ldc.i4 94
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0056:	ldc.i4 95
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_005f:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0064:  stelem.ref
    IL_0065:  ldloc.0
		IL_0066:	ldc.i4 96
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0067:	ldc.i4 97
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0069:	ldc.i4 98
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_0072:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0077:  stelem.ref
    IL_0078:  ldloc.0
		IL_0079:	ldc.i4 99
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_007a:	ldc.i4 100
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_007c:	ldc.i4 101
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_0085:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_008a:  stelem.ref
    IL_008b:  ldloc.0
		IL_008c:	ldc.i4 102
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_008d:	ldc.i4 103
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_008f:	ldc.i4 104
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_0098:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_009d:  stelem.ref
    IL_009e:  ldloc.0
		IL_009f:	ldc.i4 105
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_00a0:	ldc.i4 106
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_00a2:	ldc.i4 107
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_00ab:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_00b0:  stelem.ref
    IL_00b1:  ldloc.0
		IL_00b2:	ldc.i4 108
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_00b3:	ldc.i4 109
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_00b5:	ldc.i4 110
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_00be:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_00c3:  stelem.ref
    IL_00c4:  ldloc.0
		IL_00c5:	ldc.i4 111
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_00c7:	ldc.i4 112
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_00c9:	ldc.i4 113
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_00d2:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_00d7:  stelem.ref
    IL_00d8:  ldloc.0
		IL_00d9:	ldc.i4 114
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_00db:	ldc.i4 115
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_00dd:	ldc.i4 116
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_00e6:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_00eb:  stelem.ref
    IL_00ec:  ldloc.0
		IL_00ed:	ldc.i4 117
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_00ef:	ldc.i4 118
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_00f1:	ldc.i4 119
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_00fa:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_00ff:  stelem.ref
    IL_0100:  ldloc.0
		IL_0101:	ldc.i4 120
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0103:	ldc.i4 121
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0105:	ldc.i4 122
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_010e:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0113:  stelem.ref
    IL_0114:  ldloc.0
		IL_0115:	ldc.i4 123
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0117:	ldc.i4 124
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0119:	ldc.i4 125
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_0122:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0127:  stelem.ref
    IL_0128:  ldloc.0
		IL_0129:	ldc.i4 126
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_012b:	ldc.i4 127
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_012d:	ldc.i4 128
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_0136:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_013b:  stelem.ref
    IL_013c:  ldloc.0
    IL_013d:  stsfld     class BenchmarkFasta.Fasta/Frequency[] BenchmarkFasta.Fasta::IUB
		IL_0142:	ldc.i4 129
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0143:  stsfld     int32 BenchmarkFasta.Fasta::index
		IL_0148:	ldc.i4 130
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_014d:  newarr     [mscorlib]System.Byte
    IL_0152:  stsfld     uint8[] BenchmarkFasta.Fasta::buf
		IL_0157:	ldc.i4 131
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0158:  newarr     BenchmarkFasta.Fasta/Frequency
    IL_015d:  stloc.0
    IL_015e:  ldloc.0
		IL_015f:	ldc.i4 132
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0160:	ldc.i4 133
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0162:	ldc.i4 134
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_016b:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0170:  stelem.ref
    IL_0171:  ldloc.0
		IL_0172:	ldc.i4 135
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0173:	ldc.i4 136
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0175:	ldc.i4 137
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_017e:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0183:  stelem.ref
    IL_0184:  ldloc.0
		IL_0185:	ldc.i4 138
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0186:	ldc.i4 139
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0188:	ldc.i4 140
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_0191:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0196:  stelem.ref
    IL_0197:  ldloc.0
		IL_0198:	ldc.i4 141
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_0199:	ldc.i4 142
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
		IL_019b:	ldc.i4 143
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_01a4:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_01a9:  stelem.ref
    IL_01aa:  ldloc.0
    IL_01ab:  stsfld     class BenchmarkFasta.Fasta/Frequency[] BenchmarkFasta.Fasta::HomoSapiens
    IL_01b0:  ret
  } // end of method Fasta::.cctor

} // end of class BenchmarkFasta.Fasta


// =============================================================

// 
// 

    .class private abstract auto ansi sealed beforefieldinit HttpClient.RemoteConstantLoader
       extends [mscorlib]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass4'
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
    } // end of method '<>c__DisplayClass4'::.ctor

  } // end of class '<>c__DisplayClass4'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass6'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public class HttpClient.RemoteConstantLoader/'<>c__DisplayClass4' 'CS$<>8__locals5'
    .field public string result
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass6'::.ctor

    .method public hidebysig instance string 
            '<GetRemoteConstant>b__3'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
    {
      // 
      .maxstack  3
      .locals init ([0] string CS$1$0000,
               [1] string CS$0$0001)
      IL_0000:  ldarg.0
      IL_0001:  ldarg.0
      IL_0002:  ldfld      class HttpClient.RemoteConstantLoader/'<>c__DisplayClass4' HttpClient.RemoteConstantLoader/'<>c__DisplayClass6'::'CS$<>8__locals5'
      IL_0007:  ldfld      int32 HttpClient.RemoteConstantLoader/'<>c__DisplayClass4'::id
      IL_000c:  ldarg.1
      IL_000d:  call       string HttpClient.RemoteConstantLoader::GetRemoteConstantValue(int32,
                                                                                          class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
      IL_0012:  dup
      IL_0013:  stloc.1
      IL_0014:  stfld      string HttpClient.RemoteConstantLoader/'<>c__DisplayClass6'::result
      IL_0019:  ldloc.1
      IL_001a:  stloc.0
      IL_001b:  br.s       IL_001d

      IL_001d:  ldloc.0
      IL_001e:  ret
    } // end of method '<>c__DisplayClass6'::'<GetRemoteConstant>b__3'

  } // end of class '<>c__DisplayClass6'

  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass9'
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
    } // end of method '<>c__DisplayClass9'::.ctor

    .method public hidebysig instance string 
            '<GetRemoteConstantValue>b__8'(class [mscorlib]System.Threading.Tasks.Task`1<string> t) cil managed
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
      IL_0009:  stfld      string HttpClient.RemoteConstantLoader/'<>c__DisplayClass9'::result
      IL_000e:  ldloc.1
      IL_000f:  stloc.0
      IL_0010:  br.s       IL_0012

      IL_0012:  ldloc.0
      IL_0013:  ret
    } // end of method '<>c__DisplayClass9'::'<GetRemoteConstantValue>b__8'

  } // end of class '<>c__DisplayClass9'

  .field private static literal string _serverUrl = "http://localhost:1234/aaa/bbb/"
  .field private static literal int32 _arraySize = int32(0x00000032)
  .field private static initonly string _remoteFileName
  .field private static initonly string _localCacheFileName
  .field private static initonly object _locker
  .field private static string[] _constant
  .field private static bool[] _isConstantLoaded
  .field private static initonly bool _showConstantLoadingAlerts
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
             [2] string remoteConstant,
             [3] bool '<>s__LockTaken0',
             [4] string CS$1$0000,
             [5] bool CS$4$0001,
             [6] object CS$2$0002)
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
    IL_0011:  brtrue.s   IL_0053

    IL_0013:  nop
    IL_0014:  ldsfld     bool HttpClient.RemoteConstantLoader::_showConstantLoadingAlerts
    IL_0019:  ldc.i4.0
    IL_001a:  ceq
    IL_001c:  stloc.s    CS$4$0001
    IL_001e:  ldloc.s    CS$4$0001
    IL_0020:  brtrue.s   IL_0043

    IL_0022:  nop
    IL_0023:  ldstr      "Memory cached constant: id => {0}, value => {1}"
    IL_0028:  ldarg.0
    IL_0029:  box        [mscorlib]System.Int32
    IL_002e:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
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
    IL_0043:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
    IL_0048:  ldarg.0
    IL_0049:  ldc.i4.1
    IL_004a:  sub
    IL_004b:  ldelem.ref
    IL_004c:  stloc.s    CS$1$0000
    IL_004e:  br         IL_0147

    IL_0053:  ldc.i4.0
    IL_0054:  stloc.3
    .try
    {
      IL_0055:  ldsfld     object HttpClient.RemoteConstantLoader::_locker
      IL_005a:  dup
      IL_005b:  stloc.s    CS$2$0002
      IL_005d:  ldloca.s   '<>s__LockTaken0'
      IL_005f:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_0064:  nop
      IL_0065:  nop
      IL_0066:  ldsfld     string HttpClient.RemoteConstantLoader::_localCacheFileName
      IL_006b:  call       bool [mscorlib]System.IO.File::Exists(string)
      IL_0070:  ldc.i4.0
      IL_0071:  ceq
      IL_0073:  stloc.s    CS$4$0001
      IL_0075:  ldloc.s    CS$4$0001
      IL_0077:  brtrue.s   IL_00d5

      IL_0079:  nop
      IL_007a:  ldarg.0
      IL_007b:  ldloca.s   cachedConstant
      IL_007d:  call       bool HttpClient.RemoteConstantLoader::GetFileCachedConstant(int32,
                                                                                       string&)
      IL_0082:  ldc.i4.0
      IL_0083:  ceq
      IL_0085:  stloc.s    CS$4$0001
      IL_0087:  ldloc.s    CS$4$0001
      IL_0089:  brtrue.s   IL_00d4

      IL_008b:  nop
      IL_008c:  ldsfld     bool HttpClient.RemoteConstantLoader::_showConstantLoadingAlerts
      IL_0091:  ldc.i4.0
      IL_0092:  ceq
      IL_0094:  stloc.s    CS$4$0001
      IL_0096:  ldloc.s    CS$4$0001
      IL_0098:  brtrue.s   IL_00b3

      IL_009a:  nop
      IL_009b:  ldstr      "Cached file constant: id => {0}, value => {1}"
      IL_00a0:  ldarg.0
      IL_00a1:  box        [mscorlib]System.Int32
      IL_00a6:  ldloc.1
      IL_00a7:  call       string [mscorlib]System.String::Format(string,
                                                                  object,
                                                                  object)
      IL_00ac:  call       valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [System.Windows.Forms]System.Windows.Forms.MessageBox::Show(string)
      IL_00b1:  pop
      IL_00b2:  nop
      IL_00b3:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
      IL_00b8:  ldarg.0
      IL_00b9:  ldc.i4.1
      IL_00ba:  sub
      IL_00bb:  ldloc.1
      IL_00bc:  stelem.ref
      IL_00bd:  ldsfld     bool[] HttpClient.RemoteConstantLoader::_isConstantLoaded
      IL_00c2:  ldarg.0
      IL_00c3:  ldc.i4.1
      IL_00c4:  sub
      IL_00c5:  ldc.i4.1
      IL_00c6:  stelem.i1
      IL_00c7:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
      IL_00cc:  ldarg.0
      IL_00cd:  ldc.i4.1
      IL_00ce:  sub
      IL_00cf:  ldelem.ref
      IL_00d0:  stloc.s    CS$1$0000
      IL_00d2:  leave.s    IL_0147

      IL_00d4:  nop
      IL_00d5:  ldarg.0
      IL_00d6:  call       string HttpClient.RemoteConstantLoader::GetRemoteConstant(int32)
      IL_00db:  stloc.2
      IL_00dc:  ldarg.0
      IL_00dd:  ldloc.2
      IL_00de:  call       void HttpClient.RemoteConstantLoader::CacheConstantToFile(int32,
                                                                                     string)
      IL_00e3:  nop
      IL_00e4:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
      IL_00e9:  ldarg.0
      IL_00ea:  ldc.i4.1
      IL_00eb:  sub
      IL_00ec:  ldloc.2
      IL_00ed:  stelem.ref
      IL_00ee:  ldsfld     bool[] HttpClient.RemoteConstantLoader::_isConstantLoaded
      IL_00f3:  ldarg.0
      IL_00f4:  ldc.i4.1
      IL_00f5:  sub
      IL_00f6:  ldc.i4.1
      IL_00f7:  stelem.i1
      IL_00f8:  ldsfld     bool HttpClient.RemoteConstantLoader::_showConstantLoadingAlerts
      IL_00fd:  ldc.i4.0
      IL_00fe:  ceq
      IL_0100:  stloc.s    CS$4$0001
      IL_0102:  ldloc.s    CS$4$0001
      IL_0104:  brtrue.s   IL_0127

      IL_0106:  nop
      IL_0107:  ldstr      "Server constant: id => {0}, value => {1}"
      IL_010c:  ldarg.0
      IL_010d:  box        [mscorlib]System.Int32
      IL_0112:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
      IL_0117:  ldarg.0
      IL_0118:  ldc.i4.1
      IL_0119:  sub
      IL_011a:  ldelem.ref
      IL_011b:  call       string [mscorlib]System.String::Format(string,
                                                                  object,
                                                                  object)
      IL_0120:  call       valuetype [System.Windows.Forms]System.Windows.Forms.DialogResult [System.Windows.Forms]System.Windows.Forms.MessageBox::Show(string)
      IL_0125:  pop
      IL_0126:  nop
      IL_0127:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
      IL_012c:  ldarg.0
      IL_012d:  ldc.i4.1
      IL_012e:  sub
      IL_012f:  ldelem.ref
      IL_0130:  stloc.s    CS$1$0000
      IL_0132:  leave.s    IL_0147

    }  // end .try
    finally
    {
      IL_0134:  ldloc.3
      IL_0135:  ldc.i4.0
      IL_0136:  ceq
      IL_0138:  stloc.s    CS$4$0001
      IL_013a:  ldloc.s    CS$4$0001
      IL_013c:  brtrue.s   IL_0146

      IL_013e:  ldloc.s    CS$2$0002
      IL_0140:  call       void [mscorlib]System.Threading.Monitor::Exit(object)
      IL_0145:  nop
      IL_0146:  endfinally
    }  // end handler
    IL_0147:  nop
    IL_0148:  ldloc.s    CS$1$0000
    IL_014a:  ret
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

  .method private hidebysig static bool  GetFileCachedConstant(int32 id,
                                                               [out] string& cachedConstant) cil managed
  {
    // 
    .maxstack  5
    .locals init ([0] class [mscorlib]System.IO.StreamReader reader,
             [1] string line,
             [2] int32 currentID,
             [3] class [System]System.Text.RegularExpressions.Match idMatch,
             [4] class [System]System.Text.RegularExpressions.Match constantMatch,
             [5] bool CS$1$0000,
             [6] bool CS$4$0001)
    IL_0000:  nop
    IL_0001:  ldsfld     string HttpClient.RemoteConstantLoader::_localCacheFileName
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
    {
      IL_0014:  nop
      IL_0015:  br.s       IL_0080

      IL_0017:  nop
      IL_0018:  ldloc.1
      IL_0019:  ldstr      "^\\d+"
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
      IL_0048:  ldstr      ",\\s+(\\S+)"
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
      IL_0066:  ldloc.s    constantMatch
      IL_0068:  callvirt   instance class [System]System.Text.RegularExpressions.GroupCollection [System]System.Text.RegularExpressions.Match::get_Groups()
      IL_006d:  ldc.i4.1
      IL_006e:  callvirt   instance class [System]System.Text.RegularExpressions.Group [System]System.Text.RegularExpressions.GroupCollection::get_Item(int32)
      IL_0073:  callvirt   instance string [System]System.Text.RegularExpressions.Capture::get_Value()
      IL_0078:  stind.ref
      IL_0079:  ldc.i4.1
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
      IL_0097:  ldsfld     string [mscorlib]System.String::Empty
      IL_009c:  stind.ref
      IL_009d:  ldc.i4.0
      IL_009e:  stloc.s    CS$1$0000
      IL_00a0:  leave.s    IL_00b4

    }  // end .try
    finally
    {
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
    }  // end handler
    IL_00b4:  nop
    IL_00b5:  ldloc.s    CS$1$0000
    IL_00b7:  ret
  } // end of method RemoteConstantLoader::GetFileCachedConstant

  .method private hidebysig static string 
          GetRemoteConstant(int32 id) cil managed
  {
    // 
    .maxstack  4
    .locals init ([0] string queryString,
             [1] class [System.Net.Http]System.Net.Http.HttpClient _httpClient,
             [2] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask,
             [3] class [System.Net.Http]System.Net.Http.HttpClient '<>g__initLocal2',
             [4] class HttpClient.RemoteConstantLoader/'<>c__DisplayClass6' 'CS$<>8__locals7',
             [5] bool '<>s__LockTaken1',
             [6] class HttpClient.RemoteConstantLoader/'<>c__DisplayClass4' 'CS$<>8__locals5',
             [7] string CS$1$0000,
             [8] object CS$2$0001,
             [9] bool CS$4$0002)
    IL_0000:  newobj     instance void HttpClient.RemoteConstantLoader/'<>c__DisplayClass4'::.ctor()
    IL_0005:  stloc.s    'CS$<>8__locals5'
    IL_0007:  ldloc.s    'CS$<>8__locals5'
    IL_0009:  ldarg.0
    IL_000a:  stfld      int32 HttpClient.RemoteConstantLoader/'<>c__DisplayClass4'::id
    IL_000f:  nop
    IL_0010:  ldc.i4.0
    IL_0011:  stloc.s    '<>s__LockTaken1'
    .try
    {
      IL_0013:  newobj     instance void HttpClient.RemoteConstantLoader/'<>c__DisplayClass6'::.ctor()
      IL_0018:  stloc.s    'CS$<>8__locals7'
      IL_001a:  ldloc.s    'CS$<>8__locals7'
      IL_001c:  ldloc.s    'CS$<>8__locals5'
      IL_001e:  stfld      class HttpClient.RemoteConstantLoader/'<>c__DisplayClass4' HttpClient.RemoteConstantLoader/'<>c__DisplayClass6'::'CS$<>8__locals5'
      IL_0023:  ldsfld     object HttpClient.RemoteConstantLoader::_locker
      IL_0028:  dup
      IL_0029:  stloc.s    CS$2$0001
      IL_002b:  ldloca.s   '<>s__LockTaken1'
      IL_002d:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_0032:  nop
      IL_0033:  nop
      IL_0034:  ldstr      "{0}\?file_name={1}&constant_id={2}"
      IL_0039:  ldstr      "http://localhost:1234/aaa/bbb/"
      IL_003e:  ldsfld     string HttpClient.RemoteConstantLoader::_remoteFileName
      IL_0043:  ldloc.s    'CS$<>8__locals5'
      IL_0045:  ldfld      int32 HttpClient.RemoteConstantLoader/'<>c__DisplayClass4'::id
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
      IL_0076:  ldloc.s    'CS$<>8__locals7'
      IL_0078:  ldsfld     string [mscorlib]System.String::Empty
      IL_007d:  stfld      string HttpClient.RemoteConstantLoader/'<>c__DisplayClass6'::result
      IL_0082:  ldloc.2
      IL_0083:  ldloc.s    'CS$<>8__locals7'
      IL_0085:  ldftn      instance string HttpClient.RemoteConstantLoader/'<>c__DisplayClass6'::'<GetRemoteConstant>b__3'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
      IL_008b:  newobj     instance void class [mscorlib]System.Func`2<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>,string>::.ctor(object,
                                                                                                                                                                                                native int)
      IL_0090:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<!!0> class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith<string>(class [mscorlib]System.Func`2<class [mscorlib]System.Threading.Tasks.Task`1<!0>,!!0>)
      IL_0095:  callvirt   instance void [mscorlib]System.Threading.Tasks.Task::Wait()
      IL_009a:  nop
      IL_009b:  ldloc.s    'CS$<>8__locals7'
      IL_009d:  ldfld      string HttpClient.RemoteConstantLoader/'<>c__DisplayClass6'::result
      IL_00a2:  stloc.s    CS$1$0000
      IL_00a4:  leave.s    IL_00ba

    }  // end .try
    finally
    {
      IL_00a6:  ldloc.s    '<>s__LockTaken1'
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
          GetRemoteConstantValue(int32 id,
                                 class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> httpTask) cil managed
  {
    // 
    .maxstack  4
    .locals init ([0] class [mscorlib]System.Threading.Tasks.Task`1<string> task,
             [1] class HttpClient.RemoteConstantLoader/'<>c__DisplayClass9' 'CS$<>8__localsa',
             [2] string CS$1$0000)
    IL_0000:  newobj     instance void HttpClient.RemoteConstantLoader/'<>c__DisplayClass9'::.ctor()
    IL_0005:  stloc.1
    IL_0006:  nop
    IL_0007:  ldarg.1
    IL_0008:  callvirt   instance !0 class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::get_Result()
    IL_000d:  callvirt   instance class [System.Net.Http]System.Net.Http.HttpContent [System.Net.Http]System.Net.Http.HttpResponseMessage::get_Content()
    IL_0012:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<string> [System.Net.Http]System.Net.Http.HttpContent::ReadAsStringAsync()
    IL_0017:  stloc.0
    IL_0018:  ldloc.1
    IL_0019:  ldsfld     string [mscorlib]System.String::Empty
    IL_001e:  stfld      string HttpClient.RemoteConstantLoader/'<>c__DisplayClass9'::result
    IL_0023:  ldloc.0
    IL_0024:  ldloc.1
    IL_0025:  ldftn      instance string HttpClient.RemoteConstantLoader/'<>c__DisplayClass9'::'<GetRemoteConstantValue>b__8'(class [mscorlib]System.Threading.Tasks.Task`1<string>)
    IL_002b:  newobj     instance void class [mscorlib]System.Func`2<class [mscorlib]System.Threading.Tasks.Task`1<string>,string>::.ctor(object,
                                                                                                                                          native int)
    IL_0030:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<!!0> class [mscorlib]System.Threading.Tasks.Task`1<string>::ContinueWith<string>(class [mscorlib]System.Func`2<class [mscorlib]System.Threading.Tasks.Task`1<!0>,!!0>)
    IL_0035:  callvirt   instance void [mscorlib]System.Threading.Tasks.Task::Wait()
    IL_003a:  nop
    IL_003b:  ldloc.1
    IL_003c:  ldfld      string HttpClient.RemoteConstantLoader/'<>c__DisplayClass9'::result
    IL_0041:  stloc.2
    IL_0042:  br.s       IL_0044

    IL_0044:  ldloc.2
    IL_0045:  ret
  } // end of method RemoteConstantLoader::GetRemoteConstantValue

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
    IL_0000:  ldstr      "const-all-2012122-11829-BenchmarkFasta.exe.txt"
    IL_0005:  ldc.i4.0
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0010:  stsfld     string HttpClient.RemoteConstantLoader::_remoteFileName
    IL_0015:  ldstr      "const-cache-2012122-11829-BenchmarkFasta.exe.txt"
    IL_001a:  ldc.i4.0
    IL_001b:  newarr     [mscorlib]System.Object
    IL_0020:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0025:  stsfld     string HttpClient.RemoteConstantLoader::_localCacheFileName
    IL_002a:  newobj     instance void [mscorlib]System.Object::.ctor()
    IL_002f:  stsfld     object HttpClient.RemoteConstantLoader::_locker
    IL_0034:  ldc.i4     143
    IL_0036:  newarr     [mscorlib]System.String
    IL_003b:  stsfld     string[] HttpClient.RemoteConstantLoader::_constant
    IL_0040:  ldc.i4     143
    IL_0042:  newarr     [mscorlib]System.Boolean
    IL_0047:  stsfld     bool[] HttpClient.RemoteConstantLoader::_isConstantLoaded
    IL_004c:  ldc.i4.0
    IL_004d:  stsfld     bool HttpClient.RemoteConstantLoader::_showConstantLoadingAlerts
    IL_0052:  ret
  } // end of method RemoteConstantLoader::.cctor

} // end of class HttpClient.RemoteConstantLoader

