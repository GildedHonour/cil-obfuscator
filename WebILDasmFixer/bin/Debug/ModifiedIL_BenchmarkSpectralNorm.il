
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
		IL_0001:	ldc.i4 1
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
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
		IL_0013:	ldc.i4 2
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0014:  cgt
		IL_0016:	ldc.i4 3
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0017:  ceq
      IL_0019:  stloc.2
      IL_001a:  ldloc.2
		IL_001b:	brtrue	IL_0028

      IL_001d:  nop
      IL_001e:  ldloc.0
      IL_001f:  callvirt   instance bool [mscorlib]System.Threading.WaitHandle::WaitOne()
      IL_0024:  pop
      IL_0025:  nop
		IL_0026:	br	IL_0056

      IL_0028:  nop
      IL_0029:  ldarg.0
		IL_002a:	ldc.i4 4
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
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
		IL_0056:	ldc.i4 5
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0057:  stloc.1
		IL_0058:	br	IL_005a

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
		IL_0001:	ldc.i4 6
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
      IL_000a:  stfld      float64 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_vBv
      IL_000f:  ldarg.0
		IL_0010:	ldc.i4 7
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
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
		IL_0001:	ldc.i4 8
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0002:  stloc.0
		IL_0003:	br	IL_003d

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
		IL_003a:	ldc.i4 9
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_003b:  add
      IL_003c:  stloc.0
      IL_003d:  ldloc.0
		IL_003e:	ldc.i4 10
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0040:  clt
      IL_0042:  stloc.1
      IL_0043:  ldloc.1
		IL_0044:	brtrue	IL_0005

      IL_0046:  ldarg.0
      IL_0047:  ldfld      int32 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_range_begin
      IL_004c:  stloc.0
		IL_004d:	br	IL_0091

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
		IL_008e:	ldc.i4 11
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_008f:  add
      IL_0090:  stloc.0
      IL_0091:  ldloc.0
      IL_0092:  ldarg.0
      IL_0093:  ldfld      int32 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_range_end
      IL_0098:  clt
      IL_009a:  stloc.1
      IL_009b:  ldloc.1
		IL_009c:	brtrue	IL_004f

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
		IL_0007:	ldc.i4 12
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0008:  add
      IL_0009:  mul
		IL_000a:	ldc.i4 13
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_000b:  shr
      IL_000c:  ldarg.0
      IL_000d:  add
		IL_000e:	ldc.i4 14
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_000f:  add
      IL_0010:  stloc.0
		IL_0011:	ldc.i4 15
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
      IL_001a:  ldloc.0
      IL_001b:  conv.r8
      IL_001c:  div
      IL_001d:  stloc.1
		IL_001e:	br	IL_0020

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
		IL_0008:	br	IL_003e

      IL_000a:  nop
		IL_000b:	ldc.i4 16
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
      IL_0014:  stloc.1
		IL_0015:	ldc.i4 17
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0016:  stloc.2
		IL_0017:	br	IL_002b

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
		IL_0028:	ldc.i4 18
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0029:  add
      IL_002a:  stloc.2
      IL_002b:  ldloc.2
      IL_002c:  ldarg.1
      IL_002d:  ldlen
      IL_002e:  conv.i4
      IL_002f:  clt
      IL_0031:  stloc.3
      IL_0032:  ldloc.3
		IL_0033:	brtrue	IL_0019

      IL_0035:  ldarg.2
      IL_0036:  ldloc.0
      IL_0037:  ldloc.1
      IL_0038:  stelem.r8
      IL_0039:  nop
      IL_003a:  ldloc.0
		IL_003b:	ldc.i4 19
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_003c:  add
      IL_003d:  stloc.0
      IL_003e:  ldloc.0
      IL_003f:  ldarg.0
      IL_0040:  ldfld      int32 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_range_end
      IL_0045:  clt
      IL_0047:  stloc.3
      IL_0048:  ldloc.3
		IL_0049:	brtrue	IL_000a

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
		IL_0008:	br	IL_003e

      IL_000a:  nop
		IL_000b:	ldc.i4 20
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
      IL_0014:  stloc.1
		IL_0015:	ldc.i4 21
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0016:  stloc.2
		IL_0017:	br	IL_002b

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
		IL_0028:	ldc.i4 22
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0029:  add
      IL_002a:  stloc.2
      IL_002b:  ldloc.2
      IL_002c:  ldarg.1
      IL_002d:  ldlen
      IL_002e:  conv.i4
      IL_002f:  clt
      IL_0031:  stloc.3
      IL_0032:  ldloc.3
		IL_0033:	brtrue	IL_0019

      IL_0035:  ldarg.2
      IL_0036:  ldloc.0
      IL_0037:  ldloc.1
      IL_0038:  stelem.r8
      IL_0039:  nop
      IL_003a:  ldloc.0
		IL_003b:	ldc.i4 23
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_003c:  add
      IL_003d:  stloc.0
      IL_003e:  ldloc.0
      IL_003f:  ldarg.0
      IL_0040:  ldfld      int32 BenchmarkSpectralNorm.SpectralNorm/Approximate::m_range_end
      IL_0045:  clt
      IL_0047:  stloc.3
      IL_0048:  ldloc.3
		IL_0049:	brtrue	IL_000a

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
		IL_0001:	ldc.i4 24
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0006:  stloc.0
    IL_0007:  ldarg.0
    IL_0008:  ldlen
    IL_0009:  conv.i4
		IL_000a:	ldc.i4 25
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_000b:  cgt
		IL_000d:	ldc.i4 26
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_000e:  ceq
    IL_0010:  stloc.1
    IL_0011:  ldloc.1
		IL_0012:	brtrue	IL_001d

    IL_0014:  ldarg.0
		IL_0015:	ldc.i4 27
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0016:  ldelem.ref
    IL_0017:  call       int32 [mscorlib]System.Int32::Parse(string)
    IL_001c:  stloc.0
		IL_001d:	ldc.i4 28
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
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
		IL_0016:	ldc.i4 29
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0017:  stloc.3
		IL_0018:	br	IL_002a

    IL_001a:  ldloc.0
    IL_001b:  ldloc.3
		IL_001c:	ldc.i4 30
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_0025:  stelem.r8
    IL_0026:  ldloc.3
		IL_0027:	ldc.i4 31
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0028:  add
    IL_0029:  stloc.3
    IL_002a:  ldloc.3
    IL_002b:  ldarg.0
    IL_002c:  clt
    IL_002e:  stloc.s    V_14
    IL_0030:  ldloc.s    V_14
		IL_0032:	brtrue	IL_001a

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
		IL_005c:	ldc.i4 32
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_005d:  stloc.3
		IL_005e:	br	IL_00ba

    IL_0060:  nop
    IL_0061:  ldloc.3
    IL_0062:  ldloc.s    V_8
    IL_0064:  mul
    IL_0065:  stloc.s    V_9
    IL_0067:  ldloc.3
    IL_0068:  ldloc.s    V_4
		IL_006a:	ldc.i4 33
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_006b:  sub
		IL_006c:	blt	IL_0071

    IL_006e:  ldarg.0
		IL_006f:	br	IL_0076

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
		IL_00b7:	ldc.i4 34
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00b8:  add
    IL_00b9:  stloc.3
    IL_00ba:  ldloc.3
    IL_00bb:  ldloc.s    V_4
    IL_00bd:  clt
    IL_00bf:  stloc.s    V_14
    IL_00c1:  ldloc.s    V_14
		IL_00c3:	brtrue	IL_0060

		IL_00c5:	ldc.i4 35
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_00ce:  stloc.s    V_11
		IL_00d0:	ldc.i4 36
							call float64 HttpClient.RemoteConstantLoader::LoadFloat64(int32)
    IL_00d9:  stloc.s    V_12
		IL_00db:	ldc.i4 37
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00dc:  stloc.3
		IL_00dd:	br	IL_010b

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
		IL_0108:	ldc.i4 38
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0109:  add
    IL_010a:  stloc.3
    IL_010b:  ldloc.3
    IL_010c:  ldloc.s    V_4
    IL_010e:  clt
    IL_0110:  stloc.s    V_14
    IL_0112:  ldloc.s    V_14
		IL_0114:	brtrue	IL_00df

    IL_0116:  ldloc.s    V_11
    IL_0118:  ldloc.s    V_12
    IL_011a:  div
    IL_011b:  call       float64 [mscorlib]System.Math::Sqrt(float64)
    IL_0120:  stloc.s    V_13
		IL_0122:	br	IL_0124

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
    IL_0000:  ldstr      "const-all-20121128-234559-BenchmarkSpectralNorm.exe.txt"
    IL_0005:  ldc.i4.0
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0010:  stsfld     string HttpClient.RemoteConstantLoader::_remoteFileName
    IL_0015:  ldstr      "const-cache-20121128-234559-BenchmarkSpectralNorm.exe.txt"
    IL_001a:  ldc.i4.0
    IL_001b:  newarr     [mscorlib]System.Object
    IL_0020:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0025:  stsfld     string HttpClient.RemoteConstantLoader::_localCacheFileName
    IL_002a:  newobj     instance void [mscorlib]System.Object::.ctor()
    IL_002f:  stsfld     object HttpClient.RemoteConstantLoader::_locker
    IL_0034:  ldc.i4     38
    IL_0036:  newarr     [mscorlib]System.String
    IL_003b:  stsfld     string[] HttpClient.RemoteConstantLoader::_constant
    IL_0040:  ldc.i4     38
    IL_0042:  newarr     [mscorlib]System.Boolean
    IL_0047:  stsfld     bool[] HttpClient.RemoteConstantLoader::_isConstantLoaded
    IL_004c:  ldc.i4.0
    IL_004d:  stsfld     bool HttpClient.RemoteConstantLoader::_showConstantLoadingAlerts
    IL_0052:  ret
  } // end of method RemoteConstantLoader::.cctor

} // end of class HttpClient.RemoteConstantLoader

