
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
      IL_0002:  ldc.i4.0
      IL_0003:  cgt
      IL_0005:  ldc.i4.0
      IL_0006:  ceq
      IL_0008:  stloc.1
      IL_0009:  ldloc.1
      IL_000a:  brtrue.s   IL_002e

      IL_000c:  nop
      IL_000d:  ldc.i4.2
      IL_000e:  ldarg.0
      IL_000f:  mul
      IL_0010:  ldc.i4.1
      IL_0011:  sub
      IL_0012:  ldarg.1
      IL_0013:  ldc.i4.1
      IL_0014:  sub
      IL_0015:  call       valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode BenchmarkBinaryTrees.BinaryTrees/TreeNode::bottomUpTree(int32,
                                                                                                                                       int32)
      IL_001a:  ldc.i4.2
      IL_001b:  ldarg.0
      IL_001c:  mul
      IL_001d:  ldarg.1
      IL_001e:  ldc.i4.1
      IL_001f:  sub
      IL_0020:  call       valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode BenchmarkBinaryTrees.BinaryTrees/TreeNode::bottomUpTree(int32,
                                                                                                                                       int32)
      IL_0025:  ldarg.0
      IL_0026:  newobj     instance void BenchmarkBinaryTrees.BinaryTrees/TreeNode::.ctor(valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode,
                                                                                          valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode,
                                                                                          int32)
      IL_002b:  stloc.0
      IL_002c:  br.s       IL_0038

      IL_002e:  nop
      IL_002f:  ldarg.0
      IL_0030:  newobj     instance void BenchmarkBinaryTrees.BinaryTrees/TreeNode::.ctor(int32)
      IL_0035:  stloc.0
      IL_0036:  br.s       IL_0038

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
      IL_000a:  ldc.i4.0
      IL_000b:  ceq
      IL_000d:  stloc.1
      IL_000e:  ldloc.1
      IL_000f:  brtrue.s   IL_001b

      IL_0011:  nop
      IL_0012:  ldarg.0
      IL_0013:  ldfld      int32 BenchmarkBinaryTrees.BinaryTrees/TreeNode::item
      IL_0018:  stloc.0
      IL_0019:  br.s       IL_0047

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
      IL_0045:  br.s       IL_0047

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
    IL_0001:  ldc.i4.0
    IL_0002:  stloc.0
    IL_0003:  ldarg.0
    IL_0004:  ldlen
    IL_0005:  conv.i4
    IL_0006:  ldc.i4.0
    IL_0007:  cgt
    IL_0009:  ldc.i4.0
    IL_000a:  ceq
    IL_000c:  stloc.s    V_8
    IL_000e:  ldloc.s    V_8
    IL_0010:  brtrue.s   IL_001d

    IL_0012:  nop
    IL_0013:  ldarg.0
    IL_0014:  ldc.i4.0
    IL_0015:  ldelem.ref
    IL_0016:  call       int32 [mscorlib]System.Int32::Parse(string)
    IL_001b:  stloc.0
    IL_001c:  nop
    IL_001d:  ldc.i4.6
    IL_001e:  ldloc.0
    IL_001f:  call       int32 [mscorlib]System.Math::Max(int32,
                                                          int32)
    IL_0024:  stloc.1
    IL_0025:  ldloc.1
    IL_0026:  ldc.i4.1
    IL_0027:  add
    IL_0028:  stloc.2
    IL_0029:  ldc.i4.0
    IL_002a:  ldloc.2
    IL_002b:  call       valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode BenchmarkBinaryTrees.BinaryTrees/TreeNode::bottomUpTree(int32,
                                                                                                                                     int32)
    IL_0030:  stloc.s    V_9
    IL_0032:  ldloca.s   V_9
    IL_0034:  call       instance int32 BenchmarkBinaryTrees.BinaryTrees/TreeNode::itemCheck()
    IL_0039:  stloc.3
    IL_003a:  ldstr      "stretch tree of depth {0}\t check: {1}"
    IL_003f:  ldloc.2
    IL_0040:  box        [mscorlib]System.Int32
    IL_0045:  ldloc.3
    IL_0046:  box        [mscorlib]System.Int32
    IL_004b:  call       void [mscorlib]System.Console::WriteLine(string,
                                                                  object,
                                                                  object)
    IL_0050:  nop
    IL_0051:  ldc.i4.0
    IL_0052:  ldloc.1
    IL_0053:  call       valuetype BenchmarkBinaryTrees.BinaryTrees/TreeNode BenchmarkBinaryTrees.BinaryTrees/TreeNode::bottomUpTree(int32,
                                                                                                                                     int32)
    IL_0058:  stloc.s    V_4
    IL_005a:  ldc.i4.4
    IL_005b:  stloc.s    V_5
    IL_005d:  br.s       IL_00de

    IL_005f:  nop
    IL_0060:  ldc.i4.1
    IL_0061:  ldloc.1
    IL_0062:  ldloc.s    V_5
    IL_0064:  sub
    IL_0065:  ldc.i4.4
    IL_0066:  add
    IL_0067:  ldc.i4.s   31
    IL_0069:  and
    IL_006a:  shl
    IL_006b:  stloc.s    V_6
    IL_006d:  ldc.i4.0
    IL_006e:  stloc.3
    IL_006f:  ldc.i4.1
    IL_0070:  stloc.s    V_7
    IL_0072:  br.s       IL_00a7

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
    IL_00a3:  ldc.i4.1
    IL_00a4:  add
    IL_00a5:  stloc.s    V_7
    IL_00a7:  ldloc.s    V_7
    IL_00a9:  ldloc.s    V_6
    IL_00ab:  cgt
    IL_00ad:  ldc.i4.0
    IL_00ae:  ceq
    IL_00b0:  stloc.s    V_8
    IL_00b2:  ldloc.s    V_8
    IL_00b4:  brtrue.s   IL_0074

    IL_00b6:  ldstr      "{0}\t trees of depth {1}\t check: {2}"
    IL_00bb:  ldloc.s    V_6
    IL_00bd:  ldc.i4.2
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
    IL_00da:  ldc.i4.2
    IL_00db:  add
    IL_00dc:  stloc.s    V_5
    IL_00de:  ldloc.s    V_5
    IL_00e0:  ldloc.1
    IL_00e1:  cgt
    IL_00e3:  ldc.i4.0
    IL_00e4:  ceq
    IL_00e6:  stloc.s    V_8
    IL_00e8:  ldloc.s    V_8
    IL_00ea:  brtrue     IL_005f

    IL_00ef:  ldstr      "long lived tree of depth {0}\t check: {1}"
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
