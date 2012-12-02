
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
    IL_001a:  ldc.i4.0
    IL_001b:  bgt.s      IL_0024

    IL_001d:  ldc.i4     0x3e8
    IL_0022:  br.s       IL_002c

    IL_0024:  ldarg.0
    IL_0025:  ldc.i4.0
    IL_0026:  ldelem.ref
    IL_0027:  call       int32 [mscorlib]System.Int32::Parse(string)
    IL_002c:  stloc.0
    IL_002d:  call       class [mscorlib]System.IO.Stream [mscorlib]System.Console::OpenStandardOutput()
    IL_0032:  stloc.1
    .try
    {
      IL_0033:  nop
      IL_0034:  ldstr      "ONE"
      IL_0039:  ldstr      "Homo sapiens alu"
      IL_003e:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_ASCII()
      IL_0043:  ldsfld     string BenchmarkFasta.Fasta::ALU
      IL_0048:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
      IL_004d:  ldloc.0
      IL_004e:  ldc.i4.2
      IL_004f:  mul
      IL_0050:  ldloc.1
      IL_0051:  call       void BenchmarkFasta.Fasta::MakeRepeatFasta(string,
                                                                      string,
                                                                      uint8[],
                                                                      int32,
                                                                      class [mscorlib]System.IO.Stream)
      IL_0056:  nop
      IL_0057:  ldstr      "TWO"
      IL_005c:  ldstr      "IUB ambiguity codes"
      IL_0061:  ldsfld     class BenchmarkFasta.Fasta/Frequency[] BenchmarkFasta.Fasta::IUB
      IL_0066:  ldloc.0
      IL_0067:  ldc.i4.3
      IL_0068:  mul
      IL_0069:  ldloc.1
      IL_006a:  call       void BenchmarkFasta.Fasta::MakeRandomFasta(string,
                                                                      string,
                                                                      class BenchmarkFasta.Fasta/Frequency[],
                                                                      int32,
                                                                      class [mscorlib]System.IO.Stream)
      IL_006f:  nop
      IL_0070:  ldstr      "THREE"
      IL_0075:  ldstr      "Homo sapiens frequency"
      IL_007a:  ldsfld     class BenchmarkFasta.Fasta/Frequency[] BenchmarkFasta.Fasta::HomoSapiens
      IL_007f:  ldloc.0
      IL_0080:  ldc.i4.5
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
      IL_0092:  brtrue.s   IL_009b

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
    IL_0007:  ldc.i4     0xf25
    IL_000c:  mul
    IL_000d:  ldc.i4     0x7385
    IL_0012:  add
    IL_0013:  ldc.i4     0x222c0
    IL_0018:  rem
    IL_0019:  dup
    IL_001a:  stsfld     int32 BenchmarkFasta.Fasta::seed
    IL_001f:  conv.r8
    IL_0020:  ldc.r8     7.144490169181527e-006
    IL_0029:  mul
    IL_002a:  mul
    IL_002b:  stloc.0
    IL_002c:  br.s       IL_002e

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
    IL_0001:  ldc.r8     0.0
    IL_000a:  stloc.0
    IL_000b:  ldc.i4.0
    IL_000c:  stloc.1
    IL_000d:  br.s       IL_0029

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
    IL_0026:  ldc.i4.1
    IL_0027:  add
    IL_0028:  stloc.1
    IL_0029:  ldloc.1
    IL_002a:  ldarg.0
    IL_002b:  ldlen
    IL_002c:  conv.i4
    IL_002d:  clt
    IL_002f:  stloc.2
    IL_0030:  ldloc.2
    IL_0031:  brtrue.s   IL_000f

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
    IL_0001:  ldc.r8     1.
    IL_000a:  call       float64 BenchmarkFasta.Fasta::random(float64)
    IL_000f:  stloc.0
    IL_0010:  ldc.i4.0
    IL_0011:  stloc.1
    IL_0012:  br.s       IL_0035

    IL_0014:  ldloc.0
    IL_0015:  ldarg.0
    IL_0016:  ldloc.1
    IL_0017:  ldelem.ref
    IL_0018:  ldfld      float64 BenchmarkFasta.Fasta/Frequency::p
    IL_001d:  clt
    IL_001f:  ldc.i4.0
    IL_0020:  ceq
    IL_0022:  stloc.3
    IL_0023:  ldloc.3
    IL_0024:  brtrue.s   IL_0031

    IL_0026:  ldarg.0
    IL_0027:  ldloc.1
    IL_0028:  ldelem.ref
    IL_0029:  ldfld      uint8 BenchmarkFasta.Fasta/Frequency::c
    IL_002e:  stloc.2
    IL_002f:  br.s       IL_004e

    IL_0031:  ldloc.1
    IL_0032:  ldc.i4.1
    IL_0033:  add
    IL_0034:  stloc.1
    IL_0035:  ldloc.1
    IL_0036:  ldarg.0
    IL_0037:  ldlen
    IL_0038:  conv.i4
    IL_0039:  clt
    IL_003b:  stloc.3
    IL_003c:  ldloc.3
    IL_003d:  brtrue.s   IL_0014

    IL_003f:  ldarg.0
    IL_0040:  ldarg.0
    IL_0041:  ldlen
    IL_0042:  conv.i4
    IL_0043:  ldc.i4.1
    IL_0044:  sub
    IL_0045:  ldelem.ref
    IL_0046:  ldfld      uint8 BenchmarkFasta.Fasta/Frequency::c
    IL_004b:  stloc.2
    IL_004c:  br.s       IL_004e

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
    IL_0001:  ldc.i4.0
    IL_0002:  stsfld     int32 BenchmarkFasta.Fasta::index
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.0
    IL_0009:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_ASCII()
    IL_000e:  ldc.i4.5
    IL_000f:  newarr     [mscorlib]System.String
    IL_0014:  stloc.3
    IL_0015:  ldloc.3
    IL_0016:  ldc.i4.0
    IL_0017:  ldstr      ">"
    IL_001c:  stelem.ref
    IL_001d:  ldloc.3
    IL_001e:  ldc.i4.1
    IL_001f:  ldarg.0
    IL_0020:  stelem.ref
    IL_0021:  ldloc.3
    IL_0022:  ldc.i4.2
    IL_0023:  ldstr      " "
    IL_0028:  stelem.ref
    IL_0029:  ldloc.3
    IL_002a:  ldc.i4.3
    IL_002b:  ldarg.1
    IL_002c:  stelem.ref
    IL_002d:  ldloc.3
    IL_002e:  ldc.i4.4
    IL_002f:  ldstr      "\n"
    IL_0034:  stelem.ref
    IL_0035:  ldloc.3
    IL_0036:  call       string [mscorlib]System.String::Concat(string[])
    IL_003b:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_0040:  stloc.1
    IL_0041:  ldarg.s    s
    IL_0043:  ldloc.1
    IL_0044:  ldc.i4.0
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
    IL_0055:  ldc.i4.s   60
    IL_0057:  blt.s      IL_005d

    IL_0059:  ldc.i4.s   60
    IL_005b:  br.s       IL_005e

    IL_005d:  ldarg.3
    IL_005e:  stloc.0
    IL_005f:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_0064:  ldlen
    IL_0065:  conv.i4
    IL_0066:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_006b:  sub
    IL_006c:  ldloc.0
    IL_006d:  clt
    IL_006f:  ldc.i4.0
    IL_0070:  ceq
    IL_0072:  stloc.s    V_4
    IL_0074:  ldloc.s    V_4
    IL_0076:  brtrue.s   IL_0093

    IL_0078:  nop
    IL_0079:  ldarg.s    s
    IL_007b:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_0080:  ldc.i4.0
    IL_0081:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_0086:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                         int32,
                                                                         int32)
    IL_008b:  nop
    IL_008c:  ldc.i4.0
    IL_008d:  stsfld     int32 BenchmarkFasta.Fasta::index
    IL_0092:  nop
    IL_0093:  ldc.i4.0
    IL_0094:  stloc.2
    IL_0095:  br.s       IL_00b6

    IL_0097:  nop
    IL_0098:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_009d:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_00a2:  dup
    IL_00a3:  ldc.i4.1
    IL_00a4:  add
    IL_00a5:  stsfld     int32 BenchmarkFasta.Fasta::index
    IL_00aa:  ldarg.2
    IL_00ab:  call       uint8 BenchmarkFasta.Fasta::SelectRandom(class BenchmarkFasta.Fasta/Frequency[])
    IL_00b0:  stelem.i1
    IL_00b1:  nop
    IL_00b2:  ldloc.2
    IL_00b3:  ldc.i4.1
    IL_00b4:  add
    IL_00b5:  stloc.2
    IL_00b6:  ldloc.2
    IL_00b7:  ldloc.0
    IL_00b8:  clt
    IL_00ba:  stloc.s    V_4
    IL_00bc:  ldloc.s    V_4
    IL_00be:  brtrue.s   IL_0097

    IL_00c0:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_00c5:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_00ca:  dup
    IL_00cb:  ldc.i4.1
    IL_00cc:  add
    IL_00cd:  stsfld     int32 BenchmarkFasta.Fasta::index
    IL_00d2:  ldc.i4.s   10
    IL_00d4:  stelem.i1
    IL_00d5:  ldarg.3
    IL_00d6:  ldc.i4.s   60
    IL_00d8:  sub
    IL_00d9:  starg.s    n
    IL_00db:  nop
    IL_00dc:  ldarg.3
    IL_00dd:  ldc.i4.0
    IL_00de:  cgt
    IL_00e0:  stloc.s    V_4
    IL_00e2:  ldloc.s    V_4
    IL_00e4:  brtrue     IL_0053

    IL_00e9:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_00ee:  ldc.i4.0
    IL_00ef:  ceq
    IL_00f1:  stloc.s    V_4
    IL_00f3:  ldloc.s    V_4
    IL_00f5:  brtrue.s   IL_010a

    IL_00f7:  ldarg.s    s
    IL_00f9:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_00fe:  ldc.i4.0
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
    IL_0001:  ldc.i4.0
    IL_0002:  stsfld     int32 BenchmarkFasta.Fasta::index
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.0
    IL_0009:  ldc.i4.0
    IL_000a:  stloc.1
    IL_000b:  ldarg.2
    IL_000c:  ldlen
    IL_000d:  conv.i4
    IL_000e:  stloc.2
    IL_000f:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_ASCII()
    IL_0014:  ldc.i4.5
    IL_0015:  newarr     [mscorlib]System.String
    IL_001a:  stloc.s    V_5
    IL_001c:  ldloc.s    V_5
    IL_001e:  ldc.i4.0
    IL_001f:  ldstr      ">"
    IL_0024:  stelem.ref
    IL_0025:  ldloc.s    V_5
    IL_0027:  ldc.i4.1
    IL_0028:  ldarg.0
    IL_0029:  stelem.ref
    IL_002a:  ldloc.s    V_5
    IL_002c:  ldc.i4.2
    IL_002d:  ldstr      " "
    IL_0032:  stelem.ref
    IL_0033:  ldloc.s    V_5
    IL_0035:  ldc.i4.3
    IL_0036:  ldarg.1
    IL_0037:  stelem.ref
    IL_0038:  ldloc.s    V_5
    IL_003a:  ldc.i4.4
    IL_003b:  ldstr      "\n"
    IL_0040:  stelem.ref
    IL_0041:  ldloc.s    V_5
    IL_0043:  call       string [mscorlib]System.String::Concat(string[])
    IL_0048:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_004d:  stloc.3
    IL_004e:  ldarg.s    s
    IL_0050:  ldloc.3
    IL_0051:  ldc.i4.0
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
    IL_0062:  ldc.i4.s   60
    IL_0064:  blt.s      IL_006a

    IL_0066:  ldc.i4.s   60
    IL_0068:  br.s       IL_006b

    IL_006a:  ldarg.3
    IL_006b:  stloc.0
    IL_006c:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_0071:  ldlen
    IL_0072:  conv.i4
    IL_0073:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_0078:  sub
    IL_0079:  ldloc.0
    IL_007a:  clt
    IL_007c:  ldc.i4.0
    IL_007d:  ceq
    IL_007f:  stloc.s    V_6
    IL_0081:  ldloc.s    V_6
    IL_0083:  brtrue.s   IL_00a0

    IL_0085:  nop
    IL_0086:  ldarg.s    s
    IL_0088:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_008d:  ldc.i4.0
    IL_008e:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_0093:  callvirt   instance void [mscorlib]System.IO.Stream::Write(uint8[],
                                                                         int32,
                                                                         int32)
    IL_0098:  nop
    IL_0099:  ldc.i4.0
    IL_009a:  stsfld     int32 BenchmarkFasta.Fasta::index
    IL_009f:  nop
    IL_00a0:  ldc.i4.0
    IL_00a1:  stloc.s    V_4
    IL_00a3:  br.s       IL_00d6

    IL_00a5:  nop
    IL_00a6:  ldloc.1
    IL_00a7:  ldloc.2
    IL_00a8:  ceq
    IL_00aa:  ldc.i4.0
    IL_00ab:  ceq
    IL_00ad:  stloc.s    V_6
    IL_00af:  ldloc.s    V_6
    IL_00b1:  brtrue.s   IL_00b5

    IL_00b3:  ldc.i4.0
    IL_00b4:  stloc.1
    IL_00b5:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_00ba:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_00bf:  dup
    IL_00c0:  ldc.i4.1
    IL_00c1:  add
    IL_00c2:  stsfld     int32 BenchmarkFasta.Fasta::index
    IL_00c7:  ldarg.2
    IL_00c8:  ldloc.1
    IL_00c9:  ldelem.u1
    IL_00ca:  stelem.i1
    IL_00cb:  ldloc.1
    IL_00cc:  ldc.i4.1
    IL_00cd:  add
    IL_00ce:  stloc.1
    IL_00cf:  nop
    IL_00d0:  ldloc.s    V_4
    IL_00d2:  ldc.i4.1
    IL_00d3:  add
    IL_00d4:  stloc.s    V_4
    IL_00d6:  ldloc.s    V_4
    IL_00d8:  ldloc.0
    IL_00d9:  clt
    IL_00db:  stloc.s    V_6
    IL_00dd:  ldloc.s    V_6
    IL_00df:  brtrue.s   IL_00a5

    IL_00e1:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_00e6:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_00eb:  dup
    IL_00ec:  ldc.i4.1
    IL_00ed:  add
    IL_00ee:  stsfld     int32 BenchmarkFasta.Fasta::index
    IL_00f3:  ldc.i4.s   10
    IL_00f5:  stelem.i1
    IL_00f6:  ldarg.3
    IL_00f7:  ldc.i4.s   60
    IL_00f9:  sub
    IL_00fa:  starg.s    n
    IL_00fc:  nop
    IL_00fd:  ldarg.3
    IL_00fe:  ldc.i4.0
    IL_00ff:  cgt
    IL_0101:  stloc.s    V_6
    IL_0103:  ldloc.s    V_6
    IL_0105:  brtrue     IL_0060

    IL_010a:  ldsfld     int32 BenchmarkFasta.Fasta::index
    IL_010f:  ldc.i4.0
    IL_0110:  ceq
    IL_0112:  stloc.s    V_6
    IL_0114:  ldloc.s    V_6
    IL_0116:  brtrue.s   IL_012b

    IL_0118:  ldarg.s    s
    IL_011a:  ldsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_011f:  ldc.i4.0
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
    IL_0000:  ldc.i4.s   42
    IL_0002:  stsfld     int32 BenchmarkFasta.Fasta::seed
    IL_0007:  ldstr      "GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGGGAGGCCGA"
    + "GGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGACCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTA"
    + "AAAATACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCAGCTACTCGGGAGGCTGAGGCAGGA"
    + "GAATCGCTTGAACCCGGGAGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCCAGCCTGGGCGA"
    + "CAGAGCGAGACTCCGTCTCAAAAA"
    IL_000c:  stsfld     string BenchmarkFasta.Fasta::ALU
    IL_0011:  ldc.i4.s   15
    IL_0013:  newarr     BenchmarkFasta.Fasta/Frequency
    IL_0018:  stloc.0
    IL_0019:  ldloc.0
    IL_001a:  ldc.i4.0
    IL_001b:  ldc.i4.s   97
    IL_001d:  ldc.r8     0.27000000000000002
    IL_0026:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_002b:  stelem.ref
    IL_002c:  ldloc.0
    IL_002d:  ldc.i4.1
    IL_002e:  ldc.i4.s   99
    IL_0030:  ldc.r8     0.12
    IL_0039:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_003e:  stelem.ref
    IL_003f:  ldloc.0
    IL_0040:  ldc.i4.2
    IL_0041:  ldc.i4.s   103
    IL_0043:  ldc.r8     0.12
    IL_004c:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0051:  stelem.ref
    IL_0052:  ldloc.0
    IL_0053:  ldc.i4.3
    IL_0054:  ldc.i4.s   116
    IL_0056:  ldc.r8     0.27000000000000002
    IL_005f:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0064:  stelem.ref
    IL_0065:  ldloc.0
    IL_0066:  ldc.i4.4
    IL_0067:  ldc.i4.s   66
    IL_0069:  ldc.r8     2.e-002
    IL_0072:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0077:  stelem.ref
    IL_0078:  ldloc.0
    IL_0079:  ldc.i4.5
    IL_007a:  ldc.i4.s   68
    IL_007c:  ldc.r8     2.e-002
    IL_0085:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_008a:  stelem.ref
    IL_008b:  ldloc.0
    IL_008c:  ldc.i4.6
    IL_008d:  ldc.i4.s   72
    IL_008f:  ldc.r8     2.e-002
    IL_0098:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_009d:  stelem.ref
    IL_009e:  ldloc.0
    IL_009f:  ldc.i4.7
    IL_00a0:  ldc.i4.s   75
    IL_00a2:  ldc.r8     2.e-002
    IL_00ab:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_00b0:  stelem.ref
    IL_00b1:  ldloc.0
    IL_00b2:  ldc.i4.8
    IL_00b3:  ldc.i4.s   77
    IL_00b5:  ldc.r8     2.e-002
    IL_00be:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_00c3:  stelem.ref
    IL_00c4:  ldloc.0
    IL_00c5:  ldc.i4.s   9
    IL_00c7:  ldc.i4.s   78
    IL_00c9:  ldc.r8     2.e-002
    IL_00d2:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_00d7:  stelem.ref
    IL_00d8:  ldloc.0
    IL_00d9:  ldc.i4.s   10
    IL_00db:  ldc.i4.s   82
    IL_00dd:  ldc.r8     2.e-002
    IL_00e6:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_00eb:  stelem.ref
    IL_00ec:  ldloc.0
    IL_00ed:  ldc.i4.s   11
    IL_00ef:  ldc.i4.s   83
    IL_00f1:  ldc.r8     2.e-002
    IL_00fa:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_00ff:  stelem.ref
    IL_0100:  ldloc.0
    IL_0101:  ldc.i4.s   12
    IL_0103:  ldc.i4.s   86
    IL_0105:  ldc.r8     2.e-002
    IL_010e:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0113:  stelem.ref
    IL_0114:  ldloc.0
    IL_0115:  ldc.i4.s   13
    IL_0117:  ldc.i4.s   87
    IL_0119:  ldc.r8     2.e-002
    IL_0122:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0127:  stelem.ref
    IL_0128:  ldloc.0
    IL_0129:  ldc.i4.s   14
    IL_012b:  ldc.i4.s   89
    IL_012d:  ldc.r8     2.e-002
    IL_0136:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_013b:  stelem.ref
    IL_013c:  ldloc.0
    IL_013d:  stsfld     class BenchmarkFasta.Fasta/Frequency[] BenchmarkFasta.Fasta::IUB
    IL_0142:  ldc.i4.0
    IL_0143:  stsfld     int32 BenchmarkFasta.Fasta::index
    IL_0148:  ldc.i4     0x400
    IL_014d:  newarr     [mscorlib]System.Byte
    IL_0152:  stsfld     uint8[] BenchmarkFasta.Fasta::buf
    IL_0157:  ldc.i4.4
    IL_0158:  newarr     BenchmarkFasta.Fasta/Frequency
    IL_015d:  stloc.0
    IL_015e:  ldloc.0
    IL_015f:  ldc.i4.0
    IL_0160:  ldc.i4.s   97
    IL_0162:  ldc.r8     0.30295494266799999
    IL_016b:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0170:  stelem.ref
    IL_0171:  ldloc.0
    IL_0172:  ldc.i4.1
    IL_0173:  ldc.i4.s   99
    IL_0175:  ldc.r8     0.19798830049210001
    IL_017e:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0183:  stelem.ref
    IL_0184:  ldloc.0
    IL_0185:  ldc.i4.2
    IL_0186:  ldc.i4.s   103
    IL_0188:  ldc.r8     0.1975473066391
    IL_0191:  newobj     instance void BenchmarkFasta.Fasta/Frequency::.ctor(char,
                                                                             float64)
    IL_0196:  stelem.ref
    IL_0197:  ldloc.0
    IL_0198:  ldc.i4.3
    IL_0199:  ldc.i4.s   116
    IL_019b:  ldc.r8     0.3015094502008
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
