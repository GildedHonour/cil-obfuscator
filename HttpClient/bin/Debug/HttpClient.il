
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.0.30319.1
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Net.Http
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 2:0:0:0
}
.assembly extern System
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Windows.Forms
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly HttpClient
{

  // 
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [mscorlib]System.Runtime.Versioning.TargetFrameworkAttribute::.ctor(string) = ( 01 00 1A 2E 4E 45 54 46 72 61 6D 65 77 6F 72 6B   // ....NETFramework
                                                                                                        2C 56 65 72 73 69 6F 6E 3D 76 34 2E 30 01 00 54   // ,Version=v4.0..T
                                                                                                        0E 14 46 72 61 6D 65 77 6F 72 6B 44 69 73 70 6C   // ..FrameworkDispl
                                                                                                        61 79 4E 61 6D 65 10 2E 4E 45 54 20 46 72 61 6D   // ayName..NET Fram
                                                                                                        65 77 6F 72 6B 20 34 )                            // ework 4
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyProductAttribute::.ctor(string) = ( 01 00 0A 48 74 74 70 43 6C 69 65 6E 74 00 00 )    // ...HttpClient..
  .custom instance void [mscorlib]System.Reflection.AssemblyFileVersionAttribute::.ctor(string) = ( 01 00 07 31 2E 30 2E 30 2E 30 00 00 )             // ...1.0.0.0..
  .custom instance void [mscorlib]System.Reflection.AssemblyDescriptionAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyConfigurationAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Reflection.AssemblyCompanyAttribute::.ctor(string) = ( 01 00 09 4D 69 63 72 6F 73 6F 66 74 00 00 )       // ...Microsoft..
  .custom instance void [mscorlib]System.Reflection.AssemblyTitleAttribute::.ctor(string) = ( 01 00 0A 48 74 74 70 43 6C 69 65 6E 74 00 00 )    // ...HttpClient..
  .custom instance void [mscorlib]System.Reflection.AssemblyCopyrightAttribute::.ctor(string) = ( 01 00 1B 43 6F 70 79 72 69 67 68 74 20 C2 A9 20   // ...Copyright .. 
                                                                                                  4D 69 63 72 6F 73 6F 66 74 20 32 30 31 32 00 00 ) // Microsoft 2012..
  .custom instance void [mscorlib]System.Reflection.AssemblyTrademarkAttribute::.ctor(string) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 38 39 66 65 30 30 33 32 2D 36 31 34 35   // ..$89fe0032-6145
                                                                                                  2D 34 66 36 66 2D 62 39 61 61 2D 64 64 63 30 35   // -4f6f-b9aa-ddc05
                                                                                                  65 32 34 32 65 33 32 00 00 )                      // e242e32..
  .hash algorithm 0x00008004
  .ver 1:0:0:0
}
.module HttpClient.exe
// MVID: {27C17ACA-AED9-4157-AC99-D8A6E9119FDF}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000003    //  ILONLY 32BITREQUIRED
// Image base: 0x0000000000150000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi beforefieldinit HttpClient.ClientProgram
       extends [mscorlib]System.Object
{
  .class auto ansi sealed nested private beforefieldinit '<>c__DisplayClass23'
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public string fileName
    .field public int32 id
    .method public hidebysig specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // 
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method '<>c__DisplayClass23'::.ctor

    .method public hidebysig instance void 
            '<PrintResult>b__22'(class [mscorlib]System.Threading.Tasks.Task`1<string> resultTask) cil managed
    {
      // 
      .maxstack  8
      IL_0000:  ldstr      "fileName: {0}, id: {1}, result: {2}"
      IL_0005:  ldarg.0
      IL_0006:  ldfld      string HttpClient.ClientProgram/'<>c__DisplayClass23'::fileName
      IL_000b:  ldarg.0
      IL_000c:  ldfld      int32 HttpClient.ClientProgram/'<>c__DisplayClass23'::id
      IL_0011:  box        [mscorlib]System.Int32
      IL_0016:  ldarg.1
      IL_0017:  callvirt   instance !0 class [mscorlib]System.Threading.Tasks.Task`1<string>::get_Result()
      IL_001c:  call       string [mscorlib]System.String::Format(string,
                                                                  object,
                                                                  object,
                                                                  object)
      IL_0021:  call       void [mscorlib]System.Console::WriteLine(string)
      IL_0026:  nop
      IL_0027:  ret
    } // end of method '<>c__DisplayClass23'::'<PrintResult>b__22'

  } // end of class '<>c__DisplayClass23'

  .field private static literal string ServerUrl = "http://localhost:1234/aaa/bbb/"
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegate9'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegatea'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegateb'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegatec'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegated'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegatee'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegatef'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegate10'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegate1a'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegate1b'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegate1c'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegate1d'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegate1e'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegate1f'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegate20'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .field private static class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> 'CS$<>9__CachedAnonymousMethodDelegate21'
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .method public hidebysig static void  Main(string[] args) cil managed
  {
    .entrypoint
    // 
    .maxstack  8
    IL_0000:  nop
    IL_0001:  call       void HttpClient.ClientProgram::SendAsyncRequestToDirrentFiles()
    IL_0006:  nop
    IL_0007:  ret
  } // end of method ClientProgram::Main

  .method private hidebysig static void  SendSyncRequest() cil managed
  {
    // 
    .maxstack  1
    IL_0000:  nop
    IL_0001:  ldc.i4.1
    IL_0002:  call       int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0007:  pop
    IL_0008:  ldc.i4.2
    IL_0009:  call       int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_000e:  pop
    IL_000f:  ldc.i4.3
    IL_0010:  call       int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0015:  pop
    IL_0016:  ldc.i4.4
    IL_0017:  call       string HttpClient.RemoteConstantLoader::LoadString(int32)
    IL_001c:  pop
    IL_001d:  ldc.i4.5
    IL_001e:  call       int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0023:  pop
    IL_0024:  ldc.i4.6
    IL_0025:  call       int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_002a:  pop
    IL_002b:  ldc.i4.7
    IL_002c:  call       float32 HttpClient.RemoteConstantLoader::LoadFloat32(int32)
    IL_0031:  pop
    IL_0032:  ldc.i4.8
    IL_0033:  call       float32 HttpClient.RemoteConstantLoader::LoadFloat32(int32)
    IL_0038:  pop
    IL_0039:  ldc.i4.1
    IL_003a:  call       int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_003f:  pop
    IL_0040:  ldc.i4.2
    IL_0041:  call       int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_0046:  pop
    IL_0047:  ldc.i4.3
    IL_0048:  call       int32 HttpClient.RemoteConstantLoader::LoadInt32(int32)
    IL_004d:  pop
    IL_004e:  call       string [mscorlib]System.Console::ReadLine()
    IL_0053:  pop
    IL_0054:  ret
  } // end of method ClientProgram::SendSyncRequest

  .method private hidebysig static void  SendAsyncRequestToDirrentFiles() cil managed
  {
    // 
    .maxstack  4
    .locals init ([0] string QueryString1,
             [1] string QueryString2,
             [2] string QueryString3,
             [3] string QueryString4,
             [4] string QueryString5,
             [5] string QueryString6,
             [6] string QueryString7,
             [7] string QueryString8,
             [8] class [System.Net.Http]System.Net.Http.HttpClient client,
             [9] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask,
             [10] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask2,
             [11] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask3,
             [12] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask4,
             [13] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask5,
             [14] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask6,
             [15] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask7,
             [16] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask8,
             [17] class [System.Net.Http]System.Net.Http.HttpClient '<>g__initLocal0')
    IL_0000:  nop
    IL_0001:  ldstr      "\?file_name={0}&constant_id=1"
    IL_0006:  ldstr      "file1.txt"
    IL_000b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0010:  stloc.0
    IL_0011:  ldstr      "\?file_name={0}&constant_id=2"
    IL_0016:  ldstr      "file2.txt"
    IL_001b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0020:  stloc.1
    IL_0021:  ldstr      "\?file_name={0}&constant_id=3"
    IL_0026:  ldstr      "file1.txt"
    IL_002b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0030:  stloc.2
    IL_0031:  ldstr      "\?file_name={0}&constant_id=4"
    IL_0036:  ldstr      "file2.txt"
    IL_003b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0040:  stloc.3
    IL_0041:  ldstr      "\?file_name={0}&constant_id123=115"
    IL_0046:  ldstr      "file1.txt"
    IL_004b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0050:  stloc.s    QueryString5
    IL_0052:  ldstr      "\?file_name123={0}&constant_id=6"
    IL_0057:  ldstr      "file2.txt"
    IL_005c:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0061:  stloc.s    QueryString6
    IL_0063:  ldstr      "\?file_name={0}&constant_id=7"
    IL_0068:  ldstr      "file3.txt"
    IL_006d:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0072:  stloc.s    QueryString7
    IL_0074:  ldstr      "\?file_name={0}&constant_id=8"
    IL_0079:  ldstr      "file3.txt"
    IL_007e:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0083:  stloc.s    QueryString8
    IL_0085:  newobj     instance void [System.Net.Http]System.Net.Http.HttpClient::.ctor()
    IL_008a:  stloc.s    '<>g__initLocal0'
    IL_008c:  ldloc.s    '<>g__initLocal0'
    IL_008e:  ldstr      "http://localhost:1234/aaa/bbb/"
    IL_0093:  newobj     instance void [System]System.Uri::.ctor(string)
    IL_0098:  callvirt   instance void [System.Net.Http]System.Net.Http.HttpClient::set_BaseAddress(class [System]System.Uri)
    IL_009d:  nop
    IL_009e:  ldloc.s    '<>g__initLocal0'
    IL_00a0:  stloc.s    client
    IL_00a2:  ldloc.s    client
    IL_00a4:  ldloc.0
    IL_00a5:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_00aa:  stloc.s    responseTask
    IL_00ac:  ldloc.s    responseTask
    IL_00ae:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate9'
    IL_00b3:  brtrue.s   IL_00c8

    IL_00b5:  ldnull
    IL_00b6:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToDirrentFiles>b__1'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_00bc:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_00c1:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate9'
    IL_00c6:  br.s       IL_00c8

    IL_00c8:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate9'
    IL_00cd:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_00d2:  pop
    IL_00d3:  ldloc.s    client
    IL_00d5:  ldloc.1
    IL_00d6:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_00db:  stloc.s    responseTask2
    IL_00dd:  ldloc.s    responseTask2
    IL_00df:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegatea'
    IL_00e4:  brtrue.s   IL_00f9

    IL_00e6:  ldnull
    IL_00e7:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToDirrentFiles>b__2'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_00ed:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_00f2:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegatea'
    IL_00f7:  br.s       IL_00f9

    IL_00f9:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegatea'
    IL_00fe:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_0103:  pop
    IL_0104:  ldloc.s    client
    IL_0106:  ldloc.2
    IL_0107:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_010c:  stloc.s    responseTask3
    IL_010e:  ldloc.s    responseTask3
    IL_0110:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegateb'
    IL_0115:  brtrue.s   IL_012a

    IL_0117:  ldnull
    IL_0118:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToDirrentFiles>b__3'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_011e:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_0123:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegateb'
    IL_0128:  br.s       IL_012a

    IL_012a:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegateb'
    IL_012f:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_0134:  pop
    IL_0135:  ldloc.s    client
    IL_0137:  ldloc.3
    IL_0138:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_013d:  stloc.s    responseTask4
    IL_013f:  ldloc.s    responseTask4
    IL_0141:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegatec'
    IL_0146:  brtrue.s   IL_015b

    IL_0148:  ldnull
    IL_0149:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToDirrentFiles>b__4'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_014f:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_0154:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegatec'
    IL_0159:  br.s       IL_015b

    IL_015b:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegatec'
    IL_0160:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_0165:  pop
    IL_0166:  ldloc.s    client
    IL_0168:  ldloc.s    QueryString5
    IL_016a:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_016f:  stloc.s    responseTask5
    IL_0171:  ldloc.s    responseTask5
    IL_0173:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegated'
    IL_0178:  brtrue.s   IL_018d

    IL_017a:  ldnull
    IL_017b:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToDirrentFiles>b__5'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_0181:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_0186:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegated'
    IL_018b:  br.s       IL_018d

    IL_018d:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegated'
    IL_0192:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_0197:  pop
    IL_0198:  ldloc.s    client
    IL_019a:  ldloc.s    QueryString6
    IL_019c:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_01a1:  stloc.s    responseTask6
    IL_01a3:  ldloc.s    responseTask6
    IL_01a5:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegatee'
    IL_01aa:  brtrue.s   IL_01bf

    IL_01ac:  ldnull
    IL_01ad:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToDirrentFiles>b__6'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_01b3:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_01b8:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegatee'
    IL_01bd:  br.s       IL_01bf

    IL_01bf:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegatee'
    IL_01c4:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_01c9:  pop
    IL_01ca:  ldloc.s    client
    IL_01cc:  ldloc.s    QueryString7
    IL_01ce:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_01d3:  stloc.s    responseTask7
    IL_01d5:  ldloc.s    responseTask7
    IL_01d7:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegatef'
    IL_01dc:  brtrue.s   IL_01f1

    IL_01de:  ldnull
    IL_01df:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToDirrentFiles>b__7'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_01e5:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_01ea:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegatef'
    IL_01ef:  br.s       IL_01f1

    IL_01f1:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegatef'
    IL_01f6:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_01fb:  pop
    IL_01fc:  ldloc.s    client
    IL_01fe:  ldloc.s    QueryString8
    IL_0200:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_0205:  stloc.s    responseTask8
    IL_0207:  ldloc.s    responseTask8
    IL_0209:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate10'
    IL_020e:  brtrue.s   IL_0223

    IL_0210:  ldnull
    IL_0211:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToDirrentFiles>b__8'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_0217:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_021c:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate10'
    IL_0221:  br.s       IL_0223

    IL_0223:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate10'
    IL_0228:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_022d:  pop
    IL_022e:  call       string [mscorlib]System.Console::ReadLine()
    IL_0233:  pop
    IL_0234:  ret
  } // end of method ClientProgram::SendAsyncRequestToDirrentFiles

  .method private hidebysig static void  SendAsyncRequestToOneFile() cil managed
  {
    // 
    .maxstack  4
    .locals init ([0] string QueryString1,
             [1] string QueryString2,
             [2] string QueryString3,
             [3] string QueryString4,
             [4] string QueryString5,
             [5] string QueryString6,
             [6] string QueryString7,
             [7] string QueryString8,
             [8] class [System.Net.Http]System.Net.Http.HttpClient client,
             [9] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask,
             [10] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask2,
             [11] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask3,
             [12] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask4,
             [13] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask5,
             [14] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask6,
             [15] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask7,
             [16] class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> responseTask8,
             [17] class [System.Net.Http]System.Net.Http.HttpClient '<>g__initLocal11')
    IL_0000:  nop
    IL_0001:  ldstr      "\?file_name={0}&constant_id=1"
    IL_0006:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_000b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0010:  stloc.0
    IL_0011:  ldstr      "\?file_name={0}&constant_id=2"
    IL_0016:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_001b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0020:  stloc.1
    IL_0021:  ldstr      "\?file_name={0}&constant_id=3"
    IL_0026:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_002b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0030:  stloc.2
    IL_0031:  ldstr      "\?file_name={0}&constant_id=4"
    IL_0036:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_003b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0040:  stloc.3
    IL_0041:  ldstr      "\?file_name={0}&constant_id=5"
    IL_0046:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_004b:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0050:  stloc.s    QueryString5
    IL_0052:  ldstr      "\?file_name={0}&constant_id=116"
    IL_0057:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_005c:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0061:  stloc.s    QueryString6
    IL_0063:  ldstr      "\?file_name={0}&constant_id123=7"
    IL_0068:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_006d:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0072:  stloc.s    QueryString7
    IL_0074:  ldstr      "\?file_name123={0}&constant_id=8"
    IL_0079:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_007e:  call       string [mscorlib]System.String::Format(string,
                                                                object)
    IL_0083:  stloc.s    QueryString8
    IL_0085:  newobj     instance void [System.Net.Http]System.Net.Http.HttpClient::.ctor()
    IL_008a:  stloc.s    '<>g__initLocal11'
    IL_008c:  ldloc.s    '<>g__initLocal11'
    IL_008e:  ldstr      "http://localhost:1234/aaa/bbb/"
    IL_0093:  newobj     instance void [System]System.Uri::.ctor(string)
    IL_0098:  callvirt   instance void [System.Net.Http]System.Net.Http.HttpClient::set_BaseAddress(class [System]System.Uri)
    IL_009d:  nop
    IL_009e:  ldloc.s    '<>g__initLocal11'
    IL_00a0:  stloc.s    client
    IL_00a2:  ldloc.s    client
    IL_00a4:  ldloc.0
    IL_00a5:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_00aa:  stloc.s    responseTask
    IL_00ac:  ldloc.s    responseTask
    IL_00ae:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1a'
    IL_00b3:  brtrue.s   IL_00c8

    IL_00b5:  ldnull
    IL_00b6:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToOneFile>b__12'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_00bc:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_00c1:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1a'
    IL_00c6:  br.s       IL_00c8

    IL_00c8:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1a'
    IL_00cd:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_00d2:  pop
    IL_00d3:  ldloc.s    client
    IL_00d5:  ldloc.1
    IL_00d6:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_00db:  stloc.s    responseTask2
    IL_00dd:  ldloc.s    responseTask2
    IL_00df:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1b'
    IL_00e4:  brtrue.s   IL_00f9

    IL_00e6:  ldnull
    IL_00e7:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToOneFile>b__13'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_00ed:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_00f2:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1b'
    IL_00f7:  br.s       IL_00f9

    IL_00f9:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1b'
    IL_00fe:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_0103:  pop
    IL_0104:  ldloc.s    client
    IL_0106:  ldloc.2
    IL_0107:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_010c:  stloc.s    responseTask3
    IL_010e:  ldloc.s    responseTask3
    IL_0110:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1c'
    IL_0115:  brtrue.s   IL_012a

    IL_0117:  ldnull
    IL_0118:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToOneFile>b__14'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_011e:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_0123:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1c'
    IL_0128:  br.s       IL_012a

    IL_012a:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1c'
    IL_012f:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_0134:  pop
    IL_0135:  ldloc.s    client
    IL_0137:  ldloc.3
    IL_0138:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_013d:  stloc.s    responseTask4
    IL_013f:  ldloc.s    responseTask4
    IL_0141:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1d'
    IL_0146:  brtrue.s   IL_015b

    IL_0148:  ldnull
    IL_0149:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToOneFile>b__15'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_014f:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_0154:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1d'
    IL_0159:  br.s       IL_015b

    IL_015b:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1d'
    IL_0160:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_0165:  pop
    IL_0166:  ldloc.s    client
    IL_0168:  ldloc.s    QueryString5
    IL_016a:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_016f:  stloc.s    responseTask5
    IL_0171:  ldloc.s    responseTask5
    IL_0173:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1e'
    IL_0178:  brtrue.s   IL_018d

    IL_017a:  ldnull
    IL_017b:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToOneFile>b__16'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_0181:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_0186:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1e'
    IL_018b:  br.s       IL_018d

    IL_018d:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1e'
    IL_0192:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_0197:  pop
    IL_0198:  ldloc.s    client
    IL_019a:  ldloc.s    QueryString6
    IL_019c:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_01a1:  stloc.s    responseTask6
    IL_01a3:  ldloc.s    responseTask6
    IL_01a5:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1f'
    IL_01aa:  brtrue.s   IL_01bf

    IL_01ac:  ldnull
    IL_01ad:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToOneFile>b__17'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_01b3:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_01b8:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1f'
    IL_01bd:  br.s       IL_01bf

    IL_01bf:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate1f'
    IL_01c4:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_01c9:  pop
    IL_01ca:  ldloc.s    client
    IL_01cc:  ldloc.s    QueryString7
    IL_01ce:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_01d3:  stloc.s    responseTask7
    IL_01d5:  ldloc.s    responseTask7
    IL_01d7:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate20'
    IL_01dc:  brtrue.s   IL_01f1

    IL_01de:  ldnull
    IL_01df:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToOneFile>b__18'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_01e5:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_01ea:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate20'
    IL_01ef:  br.s       IL_01f1

    IL_01f1:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate20'
    IL_01f6:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_01fb:  pop
    IL_01fc:  ldloc.s    client
    IL_01fe:  ldloc.s    QueryString8
    IL_0200:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> [System.Net.Http]System.Net.Http.HttpClient::GetAsync(string)
    IL_0205:  stloc.s    responseTask8
    IL_0207:  ldloc.s    responseTask8
    IL_0209:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate21'
    IL_020e:  brtrue.s   IL_0223

    IL_0210:  ldnull
    IL_0211:  ldftn      void HttpClient.ClientProgram::'<SendAsyncRequestToOneFile>b__19'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_0217:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>>::.ctor(object,
                                                                                                                                                                                         native int)
    IL_021c:  stsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate21'
    IL_0221:  br.s       IL_0223

    IL_0223:  ldsfld     class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>> HttpClient.ClientProgram::'CS$<>9__CachedAnonymousMethodDelegate21'
    IL_0228:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_022d:  pop
    IL_022e:  call       string [mscorlib]System.Console::ReadLine()
    IL_0233:  pop
    IL_0234:  ret
  } // end of method ClientProgram::SendAsyncRequestToOneFile

  .method public hidebysig static void  PrintResult(string fileName,
                                                    int32 id,
                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> task) cil managed
  {
    // 
    .maxstack  4
    .locals init ([0] class [mscorlib]System.Threading.Tasks.Task`1<string> result,
             [1] class HttpClient.ClientProgram/'<>c__DisplayClass23' 'CS$<>8__locals24')
    IL_0000:  newobj     instance void HttpClient.ClientProgram/'<>c__DisplayClass23'::.ctor()
    IL_0005:  stloc.1
    IL_0006:  ldloc.1
    IL_0007:  ldarg.0
    IL_0008:  stfld      string HttpClient.ClientProgram/'<>c__DisplayClass23'::fileName
    IL_000d:  ldloc.1
    IL_000e:  ldarg.1
    IL_000f:  stfld      int32 HttpClient.ClientProgram/'<>c__DisplayClass23'::id
    IL_0014:  nop
    IL_0015:  ldarg.2
    IL_0016:  callvirt   instance !0 class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>::get_Result()
    IL_001b:  callvirt   instance class [System.Net.Http]System.Net.Http.HttpContent [System.Net.Http]System.Net.Http.HttpResponseMessage::get_Content()
    IL_0020:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task`1<string> [System.Net.Http]System.Net.Http.HttpContent::ReadAsStringAsync()
    IL_0025:  stloc.0
    IL_0026:  ldloc.0
    IL_0027:  ldloc.1
    IL_0028:  ldftn      instance void HttpClient.ClientProgram/'<>c__DisplayClass23'::'<PrintResult>b__22'(class [mscorlib]System.Threading.Tasks.Task`1<string>)
    IL_002e:  newobj     instance void class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<string>>::.ctor(object,
                                                                                                                                     native int)
    IL_0033:  callvirt   instance class [mscorlib]System.Threading.Tasks.Task class [mscorlib]System.Threading.Tasks.Task`1<string>::ContinueWith(class [mscorlib]System.Action`1<class [mscorlib]System.Threading.Tasks.Task`1<!0>>)
    IL_0038:  pop
    IL_0039:  nop
    IL_003a:  ret
  } // end of method ClientProgram::PrintResult

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // 
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method ClientProgram::.ctor

  .method private hidebysig static void  '<SendAsyncRequestToDirrentFiles>b__1'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "file1.txt"
    IL_0005:  ldc.i4.1
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToDirrentFiles>b__1'

  .method private hidebysig static void  '<SendAsyncRequestToDirrentFiles>b__2'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "file2.txt"
    IL_0005:  ldc.i4.2
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToDirrentFiles>b__2'

  .method private hidebysig static void  '<SendAsyncRequestToDirrentFiles>b__3'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "file1.txt"
    IL_0005:  ldc.i4.3
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToDirrentFiles>b__3'

  .method private hidebysig static void  '<SendAsyncRequestToDirrentFiles>b__4'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "file2.txt"
    IL_0005:  ldc.i4.4
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToDirrentFiles>b__4'

  .method private hidebysig static void  '<SendAsyncRequestToDirrentFiles>b__5'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "file1.txt"
    IL_0005:  ldc.i4.5
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToDirrentFiles>b__5'

  .method private hidebysig static void  '<SendAsyncRequestToDirrentFiles>b__6'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "file2.txt"
    IL_0005:  ldc.i4.6
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToDirrentFiles>b__6'

  .method private hidebysig static void  '<SendAsyncRequestToDirrentFiles>b__7'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "file3.txt"
    IL_0005:  ldc.i4.7
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToDirrentFiles>b__7'

  .method private hidebysig static void  '<SendAsyncRequestToDirrentFiles>b__8'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "file3.txt"
    IL_0005:  ldc.i4.8
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToDirrentFiles>b__8'

  .method private hidebysig static void  '<SendAsyncRequestToOneFile>b__12'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_0005:  ldc.i4.1
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToOneFile>b__12'

  .method private hidebysig static void  '<SendAsyncRequestToOneFile>b__13'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_0005:  ldc.i4.2
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToOneFile>b__13'

  .method private hidebysig static void  '<SendAsyncRequestToOneFile>b__14'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_0005:  ldc.i4.3
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToOneFile>b__14'

  .method private hidebysig static void  '<SendAsyncRequestToOneFile>b__15'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_0005:  ldc.i4.4
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToOneFile>b__15'

  .method private hidebysig static void  '<SendAsyncRequestToOneFile>b__16'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_0005:  ldc.i4.5
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToOneFile>b__16'

  .method private hidebysig static void  '<SendAsyncRequestToOneFile>b__17'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_0005:  ldc.i4.6
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToOneFile>b__17'

  .method private hidebysig static void  '<SendAsyncRequestToOneFile>b__18'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_0005:  ldc.i4.7
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToOneFile>b__18'

  .method private hidebysig static void  '<SendAsyncRequestToOneFile>b__19'(class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage> x) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    // 
    .maxstack  8
    IL_0000:  ldstr      "const-all-20121113-183435-TestAssembly.exe.txt"
    IL_0005:  ldc.i4.8
    IL_0006:  ldarg.0
    IL_0007:  call       void HttpClient.ClientProgram::PrintResult(string,
                                                                    int32,
                                                                    class [mscorlib]System.Threading.Tasks.Task`1<class [System.Net.Http]System.Net.Http.HttpResponseMessage>)
    IL_000c:  nop
    IL_000d:  ret
  } // end of method ClientProgram::'<SendAsyncRequestToOneFile>b__19'

} // end of class HttpClient.ClientProgram

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
    IL_006d:  call       string HttpClient.RemoteConstantLoader::GetFileCachedConstant(int32,
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
    IL_00fb:  ldc.i4.0
    IL_00fc:  stloc.s    '<>s__LockTaken1'
    .try
    {
      IL_00fe:  ldsfld     object HttpClient.RemoteConstantLoader::_locker
      IL_0103:  dup
      IL_0104:  stloc.s    CS$2$0002
      IL_0106:  ldloca.s   '<>s__LockTaken1'
      IL_0108:  call       void [mscorlib]System.Threading.Monitor::Enter(object,
                                                                          bool&)
      IL_010d:  nop
      IL_010e:  nop
      IL_010f:  ldarg.0
      IL_0110:  ldloc.3
      IL_0111:  call       void HttpClient.RemoteConstantLoader::CacheConstantToFile(int32,
                                                                                     string)
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
          GetFileCachedConstant(int32 id,
                                [out] bool& cachedConstantExists) cil managed
  {
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
    IL_0000:  ldstr      "const-all-20121112-212051-TestAssembly.exe.txt"
    IL_0005:  ldc.i4.0
    IL_0006:  newarr     [mscorlib]System.Object
    IL_000b:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0010:  stsfld     string HttpClient.RemoteConstantLoader::_remoteFileName
    IL_0015:  ldstr      "const-all-20121112-212051-TestAssembly.exe.txt"
    IL_001a:  ldc.i4.0
    IL_001b:  newarr     [mscorlib]System.Object
    IL_0020:  call       string [mscorlib]System.String::Format(string,
                                                                object[])
    IL_0025:  stsfld     string HttpClient.RemoteConstantLoader::_localCacheFileName
    IL_002a:  newobj     instance void [mscorlib]System.Object::.ctor()
    IL_002f:  stsfld     object HttpClient.RemoteConstantLoader::_locker
    IL_0034:  ldc.i4.s   50
    IL_0036:  newarr     [mscorlib]System.String
    IL_003b:  stsfld     string[] HttpClient.RemoteConstantLoader::_constant
    IL_0040:  ldc.i4.s   50
    IL_0042:  newarr     [mscorlib]System.Boolean
    IL_0047:  stsfld     bool[] HttpClient.RemoteConstantLoader::_isConstantLoaded
    IL_004c:  ldc.i4.1
    IL_004d:  stsfld     bool HttpClient.RemoteConstantLoader::_showConstantLoadingAlerts
    IL_0052:  ret
  } // end of method RemoteConstantLoader::.cctor

} // end of class HttpClient.RemoteConstantLoader


// =============================================================

// 
// 
