
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.1
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly BenchmarkSpectralNorm
{
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 15 42 65 6E 63 68 6D 61 72 6B 53 70 65 63   // ...BenchmarkSpec
                                                                                              74 72 61 6C 4E 6F 72 6D 00 00 )                   // tralNorm..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 09 4D 69 63 72 6F 73 6F 66 74 00 00 )       // ...Microsoft..
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 15 42 65 6E 63 68 6D 61 72 6B 53 70 65 63   // ...BenchmarkSpec
                                                                                                74 72 61 6C 4E 6F 72 6D 00 00 )                   // tralNorm..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 1B 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  4D 69 63 72 6F 73 6F 66 74 20 32 30 31 32 00 00 ) // Microsoft 2012..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 35 33 62 31 63 38 30 61 2D 65 36 38 63   // ..$53b1c80a-e68c
                                                                                                  2D 34 38 38 36 2D 61 38 66 36 2D 33 34 64 35 34   // -4886-a8f6-34d54
                                                                                                  39 37 33 36 38 62 36 00 00 )                      // 97368b6..
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
.module BenchmarkSpectralNorm.exe
// MVID: {8832C33F-7753-4183-A959-EEC4A31D2757}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED
// Image base: 0x0000000000160000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit BenchmarkSpectralNorm.SpectralNorm
       extends [mscorlib]System.Object
{
  .class auto ansi nested public beforefieldinit BarrierHandle
         extends [mscorlib]System.Threading.WaitHandle
  {
    .field private int32 current
    .field private int32 threads
    .field private class [mscorlib]System.Threading.ManualResetEvent handle
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(int32 threads) cil managed
    {
      // 
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  ldc.i4.0
      IL_0002:  newobj     instance void [mscorlib]System.Threading.ManualResetEvent::.ctor(bool)
      IL_0007:  stfld      class [mscorlib]System.Threading.ManualResetEvent BenchmarkSpectralNorm.SpectralNorm/BarrierHandle::handle
      IL_000c:  ldarg.0
      IL_000d:  call       instance void [mscorlib]System.Threading.WaitHandle::.ctor()
      IL_0012:  nop
      IL_0013:  nop
      IL_0014:  ldarg.0
      IL_0015:  ldarg.1
      IL_0016:  stfld      int32 BenchmarkSpectralNorm.SpectralNorm/BarrierHandle::current
      IL_001b:  ldarg.0
      IL_001c:  ldarg.1
      IL_001d:  stfld      int32 BenchmarkSpectralNorm.SpectralNorm/BarrierHandle::threads
      IL_0022:  nop
      IL_0023:  ret
    } // end of method BarrierHandle::.ctor

    .method public hidebysig virtual instance bool 
            WaitOne() cil managed
    {
      // 
      .maxstack  3
      .locals init (class [mscorlib]System.Threading.ManualResetEvent V_0,
               bool V_1,
               bool V_2)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldfld      class [mscorlib]System.Threading.ManualResetEvent BenchmarkSpectralNorm.SpectralNorm/BarrierHandle::handle
      IL_0007:  stloc.0
      IL_0008:  ldarg.0
      IL_0009:  ldflda     int32 BenchmarkSpectralNorm.SpectralNorm/BarrierHandle::current
      IL_000e:  call       int32 [mscorlib]System.Threading.Interlocked::Decrement(int32&)
      IL_0013:  ldc.i4.0
      IL_0014:  cgt
      IL_0016:  ldc.i4.0
      IL_0017:  ceq
      IL_0019:  stloc.2
      IL_001a:  ldloc.2
      IL_001b:  brtrue.s   IL_0028

      IL_001d:  nop
      IL_001e:  ldloc.0
      IL_001f:  callvirt   instance bool [mscorlib]System.Threading.WaitHandle::WaitOne()
      IL_0024:  pop
      IL_0025:  nop
      IL_0026:  br.s       IL_0056

      IL_0028:  nop
      IL_0029:  ldarg.0
      IL_002a:  ldc.i4.0
      IL_002b:  newobj     instance void [mscorlib]System.Threading.ManualResetEvent::.ctor(bool)
      IL_0030:  stfld      class [mscorlib]System.Threading.ManualResetEvent BenchmarkSpectralNorm.SpectralNorm/BarrierHandle::handle
      IL_0035:  ldarg.0
      IL_0036:  ldflda     int32 BenchmarkSpectralNorm.SpectralNorm/BarrierHandle::current
      IL_003b:  ldarg.0
      IL_003c:  ldfld      int32 BenchmarkSpectralNorm.SpectralNorm/BarrierHandle::threads
      IL_0041:  call       int32 [mscorlib]System.Threading.Interlocked::Exchange(int32&,
                                                                                  int32)
      IL_0046:  pop
      IL_0047:  ldloc.0
      IL_0048:  callvirt   instance bool [mscorlib]System.Threading.EventWaitHandle::Set()
      IL_004d:  pop
      IL_004e:  ldloc.0
      IL_004f:  callvirt   instance void [mscorlib]System.Threading.WaitHandle::Close()
      IL_0054:  nop
      IL_0055:  nop
      IL_0056:  ldc.i4.1
      IL_0057:  stloc.1
      IL_0058:  br.s       IL_005a

      IL_005a:  ldloc.1
      IL_005b:  ret
    } // end of method BarrierHandle::WaitOne

  } // end of class BarrierHandle

  .class auto ansi nested private beforefieldinit Approximate
         extends [mscorlib]System.Object
  {
    .field assembly class BenchmarkSpectralNorm.SpectralNorm/BarrierHandle Barrier
    .field private float64[] m_u
    .field private float64[] m_v
    .field private float64[] m_tmp
    .field private int32 m_range_begin
    .field private int32 m_range_end
    .field public float64 m_vBv
    .field public float64 m_vv
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor(float64[] u,
                                 float64[] v,
                                 float64[] tmp,
                                 int32 rbegin,
                                 int32 rend) cil managed
    {
      // 
      .maxstack  2
      IL_0000:  ldarg.0
      IL_0001:  ldc.r8     0.0
      IL_000a:  stfld      float64 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_vBv
      IL_000f:  ldarg.0
      IL_0010:  ldc.r8     0.0
      IL_0019:  stfld      float64 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_vv
      IL_001e:  ldarg.0
      IL_001f:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0024:  nop
      IL_0025:  nop
      IL_0026:  ldarg.0
      IL_0027:  ldarg.1
      IL_0028:  stfld      float64[] BenchmarkSpectralNorm.SpectralNorm/Approximate::m_u
      IL_002d:  ldarg.0
      IL_002e:  ldarg.2
      IL_002f:  stfld      float64[] BenchmarkSpectralNorm.SpectralNorm/Approximate::m_v
      IL_0034:  ldarg.0
      IL_0035:  ldarg.3
      IL_0036:  stfld      float64[] BenchmarkSpectralNorm.SpectralNorm/Approximate::m_tmp
      IL_003b:  ldarg.0
      IL_003c:  ldarg.s    rbegin
      IL_003e:  stfld      int32 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_range_begin
      IL_0043:  ldarg.0
      IL_0044:  ldarg.s    rend
      IL_0046:  stfld      int32 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_range_end
      IL_004b:  nop
      IL_004c:  ret
    } // end of method Approximate::.ctor

    .method public hidebysig instance void 
            Evaluate() cil managed
    {
      // 
      .maxstack  5
      .locals init (int32 V_0,
               bool V_1)
      IL_0000:  nop
      IL_0001:  ldc.i4.0
      IL_0002:  stloc.0
      IL_0003:  br.s       IL_003d

      IL_0005:  nop
      IL_0006:  ldarg.0
      IL_0007:  ldarg.0
      IL_0008:  ldfld      float64[] BenchmarkSpectralNorm.SpectralNorm/Approximate::m_u
      IL_000d:  ldarg.0
      IL_000e:  ldfld      float64[] BenchmarkSpectralNorm.SpectralNorm/Approximate::m_tmp
      IL_0013:  ldarg.0
      IL_0014:  ldfld      float64[] BenchmarkSpectralNorm.SpectralNorm/Approximate::m_v
      IL_0019:  call       instance void BenchmarkSpectralNorm.SpectralNorm/Approximate::MultiplyAtAv(float64[],
                                                                                                      float64[],
                                                                                                      float64[])
      IL_001e:  nop
      IL_001f:  ldarg.0
      IL_0020:  ldarg.0
      IL_0021:  ldfld      float64[] BenchmarkSpectralNorm.SpectralNorm/Approximate::m_v
      IL_0026:  ldarg.0
      IL_0027:  ldfld      float64[] BenchmarkSpectralNorm.SpectralNorm/Approximate::m_tmp
      IL_002c:  ldarg.0
      IL_002d:  ldfld      float64[] BenchmarkSpectralNorm.SpectralNorm/Approximate::m_u
      IL_0032:  call       instance void BenchmarkSpectralNorm.SpectralNorm/Approximate::MultiplyAtAv(float64[],
                                                                                                      float64[],
                                                                                                      float64[])
      IL_0037:  nop
      IL_0038:  nop
      IL_0039:  ldloc.0
      IL_003a:  ldc.i4.1
      IL_003b:  add
      IL_003c:  stloc.0
      IL_003d:  ldloc.0
      IL_003e:  ldc.i4.s   10
      IL_0040:  clt
      IL_0042:  stloc.1
      IL_0043:  ldloc.1
      IL_0044:  brtrue.s   IL_0005

      IL_0046:  ldarg.0
      IL_0047:  ldfld      int32 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_range_begin
      IL_004c:  stloc.0
      IL_004d:  br.s       IL_0091

      IL_004f:  nop
      IL_0050:  ldarg.0
      IL_0051:  dup
      IL_0052:  ldfld      float64 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_vBv
      IL_0057:  ldarg.0
      IL_0058:  ldfld      float64[] BenchmarkSpectralNorm.SpectralNorm/Approximate::m_u
      IL_005d:  ldloc.0
      IL_005e:  ldelem.r8
      IL_005f:  ldarg.0
      IL_0060:  ldfld      float64[] BenchmarkSpectralNorm.SpectralNorm/Approximate::m_v
      IL_0065:  ldloc.0
      IL_0066:  ldelem.r8
      IL_0067:  mul
      IL_0068:  add
      IL_0069:  stfld      float64 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_vBv
      IL_006e:  ldarg.0
      IL_006f:  dup
      IL_0070:  ldfld      float64 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_vv
      IL_0075:  ldarg.0
      IL_0076:  ldfld      float64[] BenchmarkSpectralNorm.SpectralNorm/Approximate::m_v
      IL_007b:  ldloc.0
      IL_007c:  ldelem.r8
      IL_007d:  ldarg.0
      IL_007e:  ldfld      float64[] BenchmarkSpectralNorm.SpectralNorm/Approximate::m_v
      IL_0083:  ldloc.0
      IL_0084:  ldelem.r8
      IL_0085:  mul
      IL_0086:  add
      IL_0087:  stfld      float64 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_vv
      IL_008c:  nop
      IL_008d:  ldloc.0
      IL_008e:  ldc.i4.1
      IL_008f:  add
      IL_0090:  stloc.0
      IL_0091:  ldloc.0
      IL_0092:  ldarg.0
      IL_0093:  ldfld      int32 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_range_end
      IL_0098:  clt
      IL_009a:  stloc.1
      IL_009b:  ldloc.1
      IL_009c:  brtrue.s   IL_004f

      IL_009e:  ret
    } // end of method Approximate::Evaluate

    .method private hidebysig static float64 
            eval_A(int32 i,
                   int32 j) cil managed
    {
      // 
      .maxstack  3
      .locals init (int32 V_0,
               float64 V_1)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldarg.1
      IL_0003:  add
      IL_0004:  ldarg.0
      IL_0005:  ldarg.1
      IL_0006:  add
      IL_0007:  ldc.i4.1
      IL_0008:  add
      IL_0009:  mul
      IL_000a:  ldc.i4.1
      IL_000b:  shr
      IL_000c:  ldarg.0
      IL_000d:  add
      IL_000e:  ldc.i4.1
      IL_000f:  add
      IL_0010:  stloc.0
      IL_0011:  ldc.r8     1.
      IL_001a:  ldloc.0
      IL_001b:  conv.r8
      IL_001c:  div
      IL_001d:  stloc.1
      IL_001e:  br.s       IL_0020

      IL_0020:  ldloc.1
      IL_0021:  ret
    } // end of method Approximate::eval_A

    .method private hidebysig instance void 
            MultiplyAv(float64[] v,
                       float64[] Av) cil managed
    {
      // 
      .maxstack  4
      .locals init (int32 V_0,
               float64 V_1,
               int32 V_2,
               bool V_3)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldfld      int32 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_range_begin
      IL_0007:  stloc.0
      IL_0008:  br.s       IL_003e

      IL_000a:  nop
      IL_000b:  ldc.r8     0.0
      IL_0014:  stloc.1
      IL_0015:  ldc.i4.0
      IL_0016:  stloc.2
      IL_0017:  br.s       IL_002b

      IL_0019:  ldloc.1
      IL_001a:  ldloc.0
      IL_001b:  ldloc.2
      IL_001c:  call       float64 BenchmarkSpectralNorm.SpectralNorm/Approximate::eval_A(int32,
                                                                                          int32)
      IL_0021:  ldarg.1
      IL_0022:  ldloc.2
      IL_0023:  ldelem.r8
      IL_0024:  mul
      IL_0025:  add
      IL_0026:  stloc.1
      IL_0027:  ldloc.2
      IL_0028:  ldc.i4.1
      IL_0029:  add
      IL_002a:  stloc.2
      IL_002b:  ldloc.2
      IL_002c:  ldarg.1
      IL_002d:  ldlen
      IL_002e:  conv.i4
      IL_002f:  clt
      IL_0031:  stloc.3
      IL_0032:  ldloc.3
      IL_0033:  brtrue.s   IL_0019

      IL_0035:  ldarg.2
      IL_0036:  ldloc.0
      IL_0037:  ldloc.1
      IL_0038:  stelem.r8
      IL_0039:  nop
      IL_003a:  ldloc.0
      IL_003b:  ldc.i4.1
      IL_003c:  add
      IL_003d:  stloc.0
      IL_003e:  ldloc.0
      IL_003f:  ldarg.0
      IL_0040:  ldfld      int32 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_range_end
      IL_0045:  clt
      IL_0047:  stloc.3
      IL_0048:  ldloc.3
      IL_0049:  brtrue.s   IL_000a

      IL_004b:  ret
    } // end of method Approximate::MultiplyAv

    .method private hidebysig instance void 
            MultiplyAtv(float64[] v,
                        float64[] Atv) cil managed
    {
      // 
      .maxstack  4
      .locals init (int32 V_0,
               float64 V_1,
               int32 V_2,
               bool V_3)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldfld      int32 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_range_begin
      IL_0007:  stloc.0
      IL_0008:  br.s       IL_003e

      IL_000a:  nop
      IL_000b:  ldc.r8     0.0
      IL_0014:  stloc.1
      IL_0015:  ldc.i4.0
      IL_0016:  stloc.2
      IL_0017:  br.s       IL_002b

      IL_0019:  ldloc.1
      IL_001a:  ldloc.2
      IL_001b:  ldloc.0
      IL_001c:  call       float64 BenchmarkSpectralNorm.SpectralNorm/Approximate::eval_A(int32,
                                                                                          int32)
      IL_0021:  ldarg.1
      IL_0022:  ldloc.2
      IL_0023:  ldelem.r8
      IL_0024:  mul
      IL_0025:  add
      IL_0026:  stloc.1
      IL_0027:  ldloc.2
      IL_0028:  ldc.i4.1
      IL_0029:  add
      IL_002a:  stloc.2
      IL_002b:  ldloc.2
      IL_002c:  ldarg.1
      IL_002d:  ldlen
      IL_002e:  conv.i4
      IL_002f:  clt
      IL_0031:  stloc.3
      IL_0032:  ldloc.3
      IL_0033:  brtrue.s   IL_0019

      IL_0035:  ldarg.2
      IL_0036:  ldloc.0
      IL_0037:  ldloc.1
      IL_0038:  stelem.r8
      IL_0039:  nop
      IL_003a:  ldloc.0
      IL_003b:  ldc.i4.1
      IL_003c:  add
      IL_003d:  stloc.0
      IL_003e:  ldloc.0
      IL_003f:  ldarg.0
      IL_0040:  ldfld      int32 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_range_end
      IL_0045:  clt
      IL_0047:  stloc.3
      IL_0048:  ldloc.3
      IL_0049:  brtrue.s   IL_000a

      IL_004b:  ret
    } // end of method Approximate::MultiplyAtv

    .method private hidebysig instance void 
            MultiplyAtAv(float64[] v,
                         float64[] tmp,
                         float64[] AtAv) cil managed
    {
      // 
      .maxstack  8
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldarg.1
      IL_0003:  ldarg.2
      IL_0004:  call       instance void BenchmarkSpectralNorm.SpectralNorm/Approximate::MultiplyAv(float64[],
                                                                                                    float64[])
      IL_0009:  nop
      IL_000a:  ldarg.0
      IL_000b:  ldfld      class BenchmarkSpectralNorm.SpectralNorm/BarrierHandle BenchmarkSpectralNorm.SpectralNorm/Approximate::Barrier
      IL_0010:  callvirt   instance bool [mscorlib]System.Threading.WaitHandle::WaitOne()
      IL_0015:  pop
      IL_0016:  ldarg.0
      IL_0017:  ldarg.2
      IL_0018:  ldarg.3
      IL_0019:  call       instance void BenchmarkSpectralNorm.SpectralNorm/Approximate::MultiplyAtv(float64[],
                                                                                                     float64[])
      IL_001e:  nop
      IL_001f:  ldarg.0
      IL_0020:  ldfld      class BenchmarkSpectralNorm.SpectralNorm/BarrierHandle BenchmarkSpectralNorm.SpectralNorm/Approximate::Barrier
      IL_0025:  callvirt   instance bool [mscorlib]System.Threading.WaitHandle::WaitOne()
      IL_002a:  pop
      IL_002b:  ret
    } // end of method Approximate::MultiplyAtAv

  } // end of class Approximate

  .method public hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // 
    .maxstack  2
    .locals init (int32 V_0,
             bool V_1)
    IL_0000:  nop
    IL_0001:  ldc.i4     0x9c4
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldlen
    IL_0009:  conv.i4
    IL_000a:  ldc.i4.0
    IL_000b:  cgt
    IL_000d:  ldc.i4.0
    IL_000e:  ceq
    IL_0010:  stloc.1
    IL_0011:  ldloc.1
    IL_0012:  brtrue.s   IL_001d

    IL_0014:  ldarg.0
    IL_0015:  ldc.i4.0
    IL_0016:  ldelem.ref
    IL_0017:  call       int32 [mscorlib]System.Int32::Parse(string)
    IL_001c:  stloc.0
    IL_001d:  ldstr      "{0:f9}"
    IL_0022:  ldloc.0
    IL_0023:  call       float64 BenchmarkSpectralNorm.SpectralNorm::RunGame(int32)
    IL_0028:  box        [mscorlib]System.Double
    IL_002d:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object)
    IL_0032:  nop
    IL_0033:  ret
  } // end of method SpectralNorm::Main

  .method private hidebysig static float64 
          RunGame(int32 n) cil managed
  {
    // 
    .maxstack  8
    .locals init (float64[] V_0,
             float64[] V_1,
             float64[] V_2,
             int32 V_3,
             int32 V_4,
             class BenchmarkSpectralNorm.SpectralNorm/BarrierHandle V_5,
             class BenchmarkSpectralNorm.SpectralNorm/Approximate[] V_6,
             class [mscorlib]System.Threading.Thread[] V_7,
             int32 V_8,
             int32 V_9,
             int32 V_10,
             float64 V_11,
             float64 V_12,
             float64 V_13,
             bool V_14)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  newarr     [mscorlib]System.Double
    IL_0007:  stloc.0
    IL_0008:  ldarg.0
    IL_0009:  newarr     [mscorlib]System.Double
    IL_000e:  stloc.1
    IL_000f:  ldarg.0
    IL_0010:  newarr     [mscorlib]System.Double
    IL_0015:  stloc.2
    IL_0016:  ldc.i4.0
    IL_0017:  stloc.3
    IL_0018:  br.s       IL_002a

    IL_001a:  ldloc.0
    IL_001b:  ldloc.3
    IL_001c:  ldc.r8     1.
    IL_0025:  stelem.r8
    IL_0026:  ldloc.3
    IL_0027:  ldc.i4.1
    IL_0028:  add
    IL_0029:  stloc.3
    IL_002a:  ldloc.3
    IL_002b:  ldarg.0
    IL_002c:  clt
    IL_002e:  stloc.s    V_14
    IL_0030:  ldloc.s    V_14
    IL_0032:  brtrue.s   IL_001a

    IL_0034:  call       int32 [mscorlib]System.Environment::get_ProcessorCount()
    IL_0039:  stloc.s    V_4
    IL_003b:  ldloc.s    V_4
    IL_003d:  newobj     instance void BenchmarkSpectralNorm.SpectralNorm/BarrierHandle::.ctor(int32)
    IL_0042:  stloc.s    V_5
    IL_0044:  ldloc.s    V_4
    IL_0046:  newarr     BenchmarkSpectralNorm.SpectralNorm/Approximate
    IL_004b:  stloc.s    V_6
    IL_004d:  ldloc.s    V_4
    IL_004f:  newarr     [mscorlib]System.Threading.Thread
    IL_0054:  stloc.s    V_7
    IL_0056:  ldarg.0
    IL_0057:  ldloc.s    V_4
    IL_0059:  div
    IL_005a:  stloc.s    V_8
    IL_005c:  ldc.i4.0
    IL_005d:  stloc.3
    IL_005e:  br.s       IL_00ba

    IL_0060:  nop
    IL_0061:  ldloc.3
    IL_0062:  ldloc.s    V_8
    IL_0064:  mul
    IL_0065:  stloc.s    V_9
    IL_0067:  ldloc.3
    IL_0068:  ldloc.s    V_4
    IL_006a:  ldc.i4.1
    IL_006b:  sub
    IL_006c:  blt.s      IL_0071

    IL_006e:  ldarg.0
    IL_006f:  br.s       IL_0076

    IL_0071:  ldloc.s    V_9
    IL_0073:  ldloc.s    V_8
    IL_0075:  add
    IL_0076:  stloc.s    V_10
    IL_0078:  ldloc.s    V_6
    IL_007a:  ldloc.3
    IL_007b:  ldloc.0
    IL_007c:  ldloc.2
    IL_007d:  ldloc.1
    IL_007e:  ldloc.s    V_9
    IL_0080:  ldloc.s    V_10
    IL_0082:  newobj     instance void BenchmarkSpectralNorm.SpectralNorm/Approximate::.ctor(float64[],
                                                                                             float64[],
                                                                                             float64[],
                                                                                             int32,
                                                                                             int32)
    IL_0087:  stelem.ref
    IL_0088:  ldloc.s    V_6
    IL_008a:  ldloc.3
    IL_008b:  ldelem.ref
    IL_008c:  ldloc.s    V_5
    IL_008e:  stfld      class BenchmarkSpectralNorm.SpectralNorm/BarrierHandle BenchmarkSpectralNorm.SpectralNorm/Approximate::Barrier
    IL_0093:  ldloc.s    V_7
    IL_0095:  ldloc.3
    IL_0096:  ldloc.s    V_6
    IL_0098:  ldloc.3
    IL_0099:  ldelem.ref
    IL_009a:  ldftn      instance void BenchmarkSpectralNorm.SpectralNorm/Approximate::Evaluate()
    IL_00a0:  newobj     instance void [mscorlib]System.Threading.ThreadStart::.ctor(object,
                                                                                     native int)
    IL_00a5:  newobj     instance void [mscorlib]System.Threading.Thread::.ctor(class [mscorlib]System.Threading.ThreadStart)
    IL_00aa:  stelem.ref
    IL_00ab:  ldloc.s    V_7
    IL_00ad:  ldloc.3
    IL_00ae:  ldelem.ref
    IL_00af:  callvirt   instance void [mscorlib]System.Threading.Thread::Start()
    IL_00b4:  nop
    IL_00b5:  nop
    IL_00b6:  ldloc.3
    IL_00b7:  ldc.i4.1
    IL_00b8:  add
    IL_00b9:  stloc.3
    IL_00ba:  ldloc.3
    IL_00bb:  ldloc.s    V_4
    IL_00bd:  clt
    IL_00bf:  stloc.s    V_14
    IL_00c1:  ldloc.s    V_14
    IL_00c3:  brtrue.s   IL_0060

    IL_00c5:  ldc.r8     0.0
    IL_00ce:  stloc.s    V_11
    IL_00d0:  ldc.r8     0.0
    IL_00d9:  stloc.s    V_12
    IL_00db:  ldc.i4.0
    IL_00dc:  stloc.3
    IL_00dd:  br.s       IL_010b

    IL_00df:  nop
    IL_00e0:  ldloc.s    V_7
    IL_00e2:  ldloc.3
    IL_00e3:  ldelem.ref
    IL_00e4:  callvirt   instance void [mscorlib]System.Threading.Thread::Join()
    IL_00e9:  nop
    IL_00ea:  ldloc.s    V_11
    IL_00ec:  ldloc.s    V_6
    IL_00ee:  ldloc.3
    IL_00ef:  ldelem.ref
    IL_00f0:  ldfld      float64 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_vBv
    IL_00f5:  add
    IL_00f6:  stloc.s    V_11
    IL_00f8:  ldloc.s    V_12
    IL_00fa:  ldloc.s    V_6
    IL_00fc:  ldloc.3
    IL_00fd:  ldelem.ref
    IL_00fe:  ldfld      float64 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_vv
    IL_0103:  add
    IL_0104:  stloc.s    V_12
    IL_0106:  nop
    IL_0107:  ldloc.3
    IL_0108:  ldc.i4.1
    IL_0109:  add
    IL_010a:  stloc.3
    IL_010b:  ldloc.3
    IL_010c:  ldloc.s    V_4
    IL_010e:  clt
    IL_0110:  stloc.s    V_14
    IL_0112:  ldloc.s    V_14
    IL_0114:  brtrue.s   IL_00df

    IL_0116:  ldloc.s    V_11
    IL_0118:  ldloc.s    V_12
    IL_011a:  div
    IL_011b:  call       float64 [mscorlib]System.Math::Sqrt(float64)
    IL_0120:  stloc.s    V_13
    IL_0122:  br.s       IL_0124

    IL_0124:  ldloc.s    V_13
    IL_0126:  ret
  } // end of method SpectralNorm::RunGame

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method SpectralNorm::.ctor

} // end of class BenchmarkSpectralNorm.SpectralNorm


// =============================================================

// 
// 
