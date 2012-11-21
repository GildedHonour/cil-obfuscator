
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.1
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly BenchmarkBinaryTrees
{
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 14 42 65 6E 63 68 6D 61 72 6B 42 69 6E 61   // ...BenchmarkBina
                                                                                              72 79 54 72 65 65 73 00 00 )                      // ryTrees..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 09 4D 69 63 72 6F 73 6F 66 74 00 00 )       // ...Microsoft..
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 14 42 65 6E 63 68 6D 61 72 6B 42 69 6E 61   // ...BenchmarkBina
                                                                                                72 79 54 72 65 65 73 00 00 )                      // ryTrees..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 1B 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  4D 69 63 72 6F 73 6F 66 74 20 32 30 31 32 00 00 ) // Microsoft 2012..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 36 33 32 65 35 35 61 35 2D 32 37 30 37   // ..$632e55a5-2707
                                                                                                  2D 34 61 61 61 2D 62 62 63 66 2D 66 61 32 38 65   // -4aaa-bbcf-fa28e
                                                                                                  33 66 37 32 33 36 35 00 00 )                      // 3f72365..
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
.module BenchmarkBinaryTrees.exe
// MVID: {127E0835-7905-471E-82E5-D542D01F298F}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED
// Image base: 0x0000000000250000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit BenchmarkBinaryTrees.BinaryTrees
       extends [mscorlib]System.Object
{
  .class sequential ansi sealed nested private beforefieldinit TreeNode
         extends [mscorlib]System.ValueType
  {
    .class auto ansi nested private beforefieldinit Next
           extends [mscorlib]System.Object
    {
      .field public valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode left
      .field public valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode right
      .method public hidebysig specialname rtspecialname 
              instance void  .ctor() cil managed
      {
        // 
        .maxstack  8
        IL_0000:  ldarg.0
        IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
        IL_0006:  ret
      } // end of method Next::.ctor

    } // end of class Next

    .field private class BenchmarkBinaryTrees.BinaryTrees/TreeNode/Next next
    .field private int32 item
    .method private hidebysig specialname rtspecialname 
            instance void  .ctor(int32 item) cil managed
    {
      // 
      .maxstack  8
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldarg.1
      IL_0003:  stfld      int32 BenchmarkBinaryTrees.BinaryTrees/TreeNode::item
      IL_0008:  ldarg.0
      IL_0009:  ldnull
      IL_000a:  stfld      class BenchmarkBinaryTrees.BinaryTrees/TreeNode/Next BenchmarkBinaryTrees.BinaryTrees/TreeNode::next
      IL_000f:  ret
    } // end of method TreeNode::.ctor

    .method assembly hidebysig static valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode 
            bottomUpTree(int32 item,
                         int32 depth) cil managed
    {
      // 
      .maxstack  4
      .locals init (valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode V_0,
               bool V_1)
      IL_0000:  nop
      IL_0001:  ldarg.1
		IL_0002:	ldc.i4 1
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0003:  cgt
		IL_0005:	ldc.i4 2
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0006:  ceq
      IL_0008:  stloc.1
      IL_0009:  ldloc.1
		IL_000a:	brtrue	IL_002e

      IL_000c:  nop
		IL_000d:	ldc.i4 3
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_000e:  ldarg.0
      IL_000f:  mul
		IL_0010:	ldc.i4 4
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0011:  sub
      IL_0012:  ldarg.1
		IL_0013:	ldc.i4 5
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_0014:  sub
      IL_0015:  call       valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode BenchmarkBinaryTrees.BinaryTrees/TreeNode::bottomUpTree(int32,
                                                                                                                                       int32)
		IL_001a:	ldc.i4 6
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_001b:  ldarg.0
      IL_001c:  mul
      IL_001d:  ldarg.1
		IL_001e:	ldc.i4 7
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_001f:  sub
      IL_0020:  call       valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode BenchmarkBinaryTrees.BinaryTrees/TreeNode::bottomUpTree(int32,
                                                                                                                                       int32)
      IL_0025:  ldarg.0
      IL_0026:  newobj     instance void BenchmarkBinaryTrees.BinaryTrees/TreeNode::.ctor(valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode,
                                                                                          valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode,
                                                                                          int32)
      IL_002b:  stloc.0
		IL_002c:	br	IL_0038

      IL_002e:  nop
      IL_002f:  ldarg.0
      IL_0030:  newobj     instance void BenchmarkBinaryTrees.BinaryTrees/TreeNode::.ctor(int32)
      IL_0035:  stloc.0
		IL_0036:	br	IL_0038

      IL_0038:  ldloc.0
      IL_0039:  ret
    } // end of method TreeNode::bottomUpTree

    .method private hidebysig specialname rtspecialname 
            instance void  .ctor(valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode left,
                                 valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode right,
                                 int32 item) cil managed
    {
      // 
      .maxstack  8
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  newobj     instance void BenchmarkBinaryTrees.BinaryTrees/TreeNode/Next::.ctor()
      IL_0007:  stfld      class BenchmarkBinaryTrees.BinaryTrees/TreeNode/Next BenchmarkBinaryTrees.BinaryTrees/TreeNode::next
      IL_000c:  ldarg.0
      IL_000d:  ldfld      class BenchmarkBinaryTrees.BinaryTrees/TreeNode/Next BenchmarkBinaryTrees.BinaryTrees/TreeNode::next
      IL_0012:  ldarg.1
      IL_0013:  stfld      valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode BenchmarkBinaryTrees.BinaryTrees/TreeNode/Next::left
      IL_0018:  ldarg.0
      IL_0019:  ldfld      class BenchmarkBinaryTrees.BinaryTrees/TreeNode/Next BenchmarkBinaryTrees.BinaryTrees/TreeNode::next
      IL_001e:  ldarg.2
      IL_001f:  stfld      valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode BenchmarkBinaryTrees.BinaryTrees/TreeNode/Next::right
      IL_0024:  ldarg.0
      IL_0025:  ldarg.3
      IL_0026:  stfld      int32 BenchmarkBinaryTrees.BinaryTrees/TreeNode::item
      IL_002b:  ret
    } // end of method TreeNode::.ctor

    .method assembly hidebysig instance int32 
            itemCheck() cil managed
    {
      // 
      .maxstack  2
      .locals init (int32 V_0,
               bool V_1)
      IL_0000:  nop
      IL_0001:  ldarg.0
      IL_0002:  ldfld      class BenchmarkBinaryTrees.BinaryTrees/TreeNode/Next BenchmarkBinaryTrees.BinaryTrees/TreeNode::next
      IL_0007:  ldnull
      IL_0008:  ceq
		IL_000a:	ldc.i4 8
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
      IL_000b:  ceq
      IL_000d:  stloc.1
      IL_000e:  ldloc.1
		IL_000f:	brtrue	IL_001b

      IL_0011:  nop
      IL_0012:  ldarg.0
      IL_0013:  ldfld      int32 BenchmarkBinaryTrees.BinaryTrees/TreeNode::item
      IL_0018:  stloc.0
		IL_0019:	br	IL_0047

      IL_001b:  nop
      IL_001c:  ldarg.0
      IL_001d:  ldfld      int32 BenchmarkBinaryTrees.BinaryTrees/TreeNode::item
      IL_0022:  ldarg.0
      IL_0023:  ldfld      class BenchmarkBinaryTrees.BinaryTrees/TreeNode/Next BenchmarkBinaryTrees.BinaryTrees/TreeNode::next
      IL_0028:  ldflda     valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode BenchmarkBinaryTrees.BinaryTrees/TreeNode/Next::left
      IL_002d:  call       instance int32 BenchmarkBinaryTrees.BinaryTrees/TreeNode::itemCheck()
      IL_0032:  add
      IL_0033:  ldarg.0
      IL_0034:  ldfld      class BenchmarkBinaryTrees.BinaryTrees/TreeNode/Next BenchmarkBinaryTrees.BinaryTrees/TreeNode::next
      IL_0039:  ldflda     valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode BenchmarkBinaryTrees.BinaryTrees/TreeNode/Next::right
      IL_003e:  call       instance int32 BenchmarkBinaryTrees.BinaryTrees/TreeNode::itemCheck()
      IL_0043:  sub
      IL_0044:  stloc.0
		IL_0045:	br	IL_0047

      IL_0047:  ldloc.0
      IL_0048:  ret
    } // end of method TreeNode::itemCheck

  } // end of class TreeNode

  .field private static literal int32 minDepth = int32(0x00000004)
  .method public hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // 
    .maxstack  4
    .locals init (int32 V_0,
             int32 V_1,
             int32 V_2,
             int32 V_3,
             valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode V_4,
             int32 V_5,
             int32 V_6,
             int32 V_7,
             bool V_8,
             valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode V_9)
    IL_0000:  nop
		IL_0001:	ldc.i4 9
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0002:  stloc.0
    IL_0003:  ldarg.0
    IL_0004:  ldlen
    IL_0005:  conv.i4
		IL_0006:	ldc.i4 10
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0007:  cgt
		IL_0009:	ldc.i4 11
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_000a:  ceq
    IL_000c:  stloc.s    V_8
    IL_000e:  ldloc.s    V_8
		IL_0010:	brtrue	IL_001d

    IL_0012:  nop
    IL_0013:  ldarg.0
		IL_0014:	ldc.i4 12
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0015:  ldelem.ref
    IL_0016:  call       int32 [mscorlib]System.Int32::Parse(string)
    IL_001b:  stloc.0
    IL_001c:  nop
		IL_001d:	ldc.i4 13
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_001e:  ldloc.0
    IL_001f:  call       int32 [mscorlib]System.Math::Max(int32,
                                                          int32)
    IL_0024:  stloc.1
    IL_0025:  ldloc.1
		IL_0026:	ldc.i4 14
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0027:  add
    IL_0028:  stloc.2
		IL_0029:	ldc.i4 15
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_002a:  ldloc.2
    IL_002b:  call       valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode BenchmarkBinaryTrees.BinaryTrees/TreeNode::bottomUpTree(int32,
                                                                                                                                     int32)
    IL_0030:  stloc.s    V_9
    IL_0032:  ldloca.s   V_9
    IL_0034:  call       instance int32 BenchmarkBinaryTrees.BinaryTrees/TreeNode::itemCheck()
    IL_0039:  stloc.3
		IL_003a:	ldc.i4 16
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
    IL_003f:  ldloc.2
    IL_0040:  box        [mscorlib]System.Int32
    IL_0045:  ldloc.3
    IL_0046:  box        [mscorlib]System.Int32
    IL_004b:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object,
                                                                  object)
    IL_0050:  nop
		IL_0051:	ldc.i4 17
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0052:  ldloc.1
    IL_0053:  call       valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode BenchmarkBinaryTrees.BinaryTrees/TreeNode::bottomUpTree(int32,
                                                                                                                                     int32)
    IL_0058:  stloc.s    V_4
		IL_005a:	ldc.i4 18
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_005b:  stloc.s    V_5
		IL_005d:	br	IL_00de

    IL_005f:  nop
		IL_0060:	ldc.i4 19
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0061:  ldloc.1
    IL_0062:  ldloc.s    V_5
    IL_0064:  sub
		IL_0065:	ldc.i4 20
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0066:  add
		IL_0067:	ldc.i4 21
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0069:  and
    IL_006a:  shl
    IL_006b:  stloc.s    V_6
		IL_006d:	ldc.i4 22
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_006e:  stloc.3
		IL_006f:	ldc.i4 23
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0070:  stloc.s    V_7
		IL_0072:	br	IL_00a7

    IL_0074:  nop
    IL_0075:  ldloc.3
    IL_0076:  ldloc.s    V_7
    IL_0078:  ldloc.s    V_5
    IL_007a:  call       valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode BenchmarkBinaryTrees.BinaryTrees/TreeNode::bottomUpTree(int32,
                                                                                                                                     int32)
    IL_007f:  stloc.s    V_9
    IL_0081:  ldloca.s   V_9
    IL_0083:  call       instance int32 BenchmarkBinaryTrees.BinaryTrees/TreeNode::itemCheck()
    IL_0088:  add
    IL_0089:  stloc.3
    IL_008a:  ldloc.3
    IL_008b:  ldloc.s    V_7
    IL_008d:  neg
    IL_008e:  ldloc.s    V_5
    IL_0090:  call       valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode BenchmarkBinaryTrees.BinaryTrees/TreeNode::bottomUpTree(int32,
                                                                                                                                     int32)
    IL_0095:  stloc.s    V_9
    IL_0097:  ldloca.s   V_9
    IL_0099:  call       instance int32 BenchmarkBinaryTrees.BinaryTrees/TreeNode::itemCheck()
    IL_009e:  add
    IL_009f:  stloc.3
    IL_00a0:  nop
    IL_00a1:  ldloc.s    V_7
		IL_00a3:	ldc.i4 24
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00a4:  add
    IL_00a5:  stloc.s    V_7
    IL_00a7:  ldloc.s    V_7
    IL_00a9:  ldloc.s    V_6
    IL_00ab:  cgt
		IL_00ad:	ldc.i4 25
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00ae:  ceq
    IL_00b0:  stloc.s    V_8
    IL_00b2:  ldloc.s    V_8
		IL_00b4:	brtrue	IL_0074

		IL_00b6:	ldc.i4 26
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
    IL_00bb:  ldloc.s    V_6
		IL_00bd:	ldc.i4 27
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00be:  mul
    IL_00bf:  box        [mscorlib]System.Int32
    IL_00c4:  ldloc.s    V_5
    IL_00c6:  box        [mscorlib]System.Int32
    IL_00cb:  ldloc.3
    IL_00cc:  box        [mscorlib]System.Int32
    IL_00d1:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object,
                                                                  object,
                                                                  object)
    IL_00d6:  nop
    IL_00d7:  nop
    IL_00d8:  ldloc.s    V_5
		IL_00da:	ldc.i4 28
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00db:  add
    IL_00dc:  stloc.s    V_5
    IL_00de:  ldloc.s    V_5
    IL_00e0:  ldloc.1
    IL_00e1:  cgt
		IL_00e3:	ldc.i4 29
							call int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_00e4:  ceq
    IL_00e6:  stloc.s    V_8
    IL_00e8:  ldloc.s    V_8
    IL_00ea:  brtrue     IL_005f

		IL_00ef:	ldc.i4 30
							call string HttpClient.RemoteConstantLoader::LoadString(int32)
    IL_00f4:  ldloc.1
    IL_00f5:  box        [mscorlib]System.Int32
    IL_00fa:  ldloca.s   V_4
    IL_00fc:  call       instance int32 BenchmarkBinaryTrees.BinaryTrees/TreeNode::itemCheck()
    IL_0101:  box        [mscorlib]System.Int32
    IL_0106:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object,
                                                                  object)
    IL_010b:  nop
    IL_010c:  ret
  } // end of method BinaryTrees::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method BinaryTrees::.ctor

} // end of class BenchmarkBinaryTrees.BinaryTrees


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
    IL_004e:  br         IL_017f

    IL_0053:  ldsfld     string HttpClient.RemoteConstantLoader::_localCacheFileName
    IL_0058:  call       bool [mscorlib]System.IO.File::Exists(string)
    IL_005d:  ldc.i4.0
    IL_005e:  ceq
    IL_0060:  stloc.s    CS$4$0001
    IL_0062:  ldloc.s    CS$4$0001
    IL_0064:  brtrue     IL_00f4

    IL_0069:  nop
    IL_006a:  ldarg.0
    IL_006b:  ldloca.s   cachedConstantExists
    IL_006d:  call       string HttpClient.RemoteConstantLoader::GetCachedConstant(int32,
                                                                                   bool&)
    IL_0072:  stloc.1
    IL_0073:  ldloc.0
    IL_0074:  ldc.i4.0
    IL_0075:  ceq
    IL_0077:  stloc.s    CS$4$0001
    IL_0079:  ldloc.s    CS$4$0001
    IL_007b:  brtrue.s   IL_00f3

    IL_007d:  nop
    IL_007e:  ldsfld     bool HttpClient.RemoteConstantLoader::_showConstantLoadingAlerts
    IL_0083:  ldc.i4.0
    IL_0084:  ceq
    IL_0086:  stloc.s    CS$4$0001
    IL_0088:  ldloc.s    CS$4$0001
    IL_008a:  brtrue.s   IL_00a5

    IL_008c:  nop
    IL_008d:  ldstr      "Cached file constant: id => {0}, value => {1}"
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
    {
      IL_00a7:  ldsfld     object HttpClient.RemoteConstantLoader::_locker
      IL_00ac:  dup
      IL_00ad:  stloc.s    CS$2$0002
      IL_00af:  ldloca.s   '<>s__LockTaken0'
      IL_00b1:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_00b6:  nop
      IL_00b7:  nop
      IL_00b8:  ldsfld     bool[] HttpClient.RemoteConstantLoader::_isConstantLoaded
      IL_00bd:  ldarg.0
      IL_00be:  ldc.i4.1
      IL_00bf:  sub
      IL_00c0:  ldc.i4.1
      IL_00c1:  stelem.i1
      IL_00c2:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
      IL_00c7:  ldarg.0
      IL_00c8:  ldc.i4.1
      IL_00c9:  sub
      IL_00ca:  ldloc.1
      IL_00cb:  stelem.ref
      IL_00cc:  nop
      IL_00cd:  leave.s    IL_00e2

    }  // end .try
    finally
    {
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
    }  // end handler
    IL_00e2:  nop
    IL_00e3:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
    IL_00e8:  ldarg.0
    IL_00e9:  ldc.i4.1
    IL_00ea:  sub
    IL_00eb:  ldelem.ref
    IL_00ec:  stloc.s    CS$1$0000
    IL_00ee:  br         IL_017f

    IL_00f3:  nop
    IL_00f4:  ldarg.0
    IL_00f5:  call       string HttpClient.RemoteConstantLoader::GetRemoteConstant(int32)
    IL_00fa:  stloc.3
    IL_00fb:  ldarg.0
    IL_00fc:  ldloc.3
    IL_00fd:  call       void HttpClient.RemoteConstantLoader::CacheConstantToFile(int32,
                                                                                   string)
    IL_0102:  nop
    IL_0103:  ldc.i4.0
    IL_0104:  stloc.s    '<>s__LockTaken1'
    .try
    {
      IL_0106:  ldsfld     object HttpClient.RemoteConstantLoader::_locker
      IL_010b:  dup
      IL_010c:  stloc.s    CS$2$0002
      IL_010e:  ldloca.s   '<>s__LockTaken1'
      IL_0110:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_0115:  nop
      IL_0116:  nop
      IL_0117:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
      IL_011c:  ldarg.0
      IL_011d:  ldc.i4.1
      IL_011e:  sub
      IL_011f:  ldloc.3
      IL_0120:  stelem.ref
      IL_0121:  ldsfld     bool[] HttpClient.RemoteConstantLoader::_isConstantLoaded
      IL_0126:  ldarg.0
      IL_0127:  ldc.i4.1
      IL_0128:  sub
      IL_0129:  ldc.i4.1
      IL_012a:  stelem.i1
      IL_012b:  nop
      IL_012c:  leave.s    IL_0142

    }  // end .try
    finally
    {
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
    }  // end handler
    IL_0142:  nop
    IL_0143:  ldsfld     bool HttpClient.RemoteConstantLoader::_showConstantLoadingAlerts
    IL_0148:  ldc.i4.0
    IL_0149:  ceq
    IL_014b:  stloc.s    CS$4$0001
    IL_014d:  ldloc.s    CS$4$0001
    IL_014f:  brtrue.s   IL_0172

    IL_0151:  nop
    IL_0152:  ldstr      "Server constant: id => {0}, value => {1}"
    IL_0157:  ldarg.0
    IL_0158:  box        [mscorlib]System.Int32
    IL_015d:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
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
    IL_0172:  ldsfld     string[] HttpClient.RemoteConstantLoader::_constant
    IL_0177:  ldarg.0
    IL_0178:  ldc.i4.1
    IL_0179:  sub
    IL_017a:  ldelem.ref
    IL_017b:  stloc.s    CS$1$0000
    IL_017d:  br.s       IL_017f

    IL_017f:  ldloc.s    CS$1$0000
    IL_0181:  ret
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
    IL_0000:  ldstr      "const-all-20121121-22322-BenchmarkBinaryTrees.exe.txt"
    IL_0005:  ldc.i4.0
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0010:  stsfld     string HttpClient.RemoteConstantLoader::_remoteFileName
    IL_0015:  ldstr      "const-cache-20121121-22322-BenchmarkBinaryTrees.exe.txt"
    IL_001a:  ldc.i4.0
    IL_001b:  newarr     [mscorlib]System.Object
    IL_0020:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0025:  stsfld     string HttpClient.RemoteConstantLoader::_localCacheFileName
    IL_002a:  newobj     instance void [mscorlib]System.Object::.ctor()
    IL_002f:  stsfld     object HttpClient.RemoteConstantLoader::_locker
    IL_0034:  ldc.i4.s   30
    IL_0036:  newarr     [mscorlib]System.String
    IL_003b:  stsfld     string[] HttpClient.RemoteConstantLoader::_constant
    IL_0040:  ldc.i4.s   30
    IL_0042:  newarr     [mscorlib]System.Boolean
    IL_0047:  stsfld     bool[] HttpClient.RemoteConstantLoader::_isConstantLoaded
    IL_004c:  ldc.i4.0
    IL_004d:  stsfld     bool HttpClient.RemoteConstantLoader::_showConstantLoadingAlerts
    IL_0052:  ret
  } // end of method RemoteConstantLoader::.cctor

} // end of class HttpClient.RemoteConstantLoader

