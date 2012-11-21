using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Http;
using System.Threading.Tasks;

namespace HttpClient
{
    class ClientProgram
    {
        const string ServerUrl = "http://localhost:1234/aaa/bbb/";

        public static void Main(string[] args)
        {
            SendAsyncRequestToDirrentFiles();
            //SendAsyncRequestToOneFile();
        }

        private static void SendSyncRequest()
        {
            RemoteConstantLoader.LoadInt32(1);
            RemoteConstantLoader.LoadInt32(2);
            RemoteConstantLoader.LoadInt32(3);
            //RemoteConstantLoader.LoadString(4);
            //RemoteConstantLoader.LoadInt32(5);
            //RemoteConstantLoader.LoadInt32(6);
            //RemoteConstantLoader.LoadFloat32(7);
            //RemoteConstantLoader.LoadFloat32(8);

            //RemoteConstantLoader.LoadInt32(1);
            //RemoteConstantLoader.LoadInt32(2);
            //RemoteConstantLoader.LoadInt32(3);
            RemoteConstantLoader.LoadString(4);
            RemoteConstantLoader.LoadInt32(5);
            RemoteConstantLoader.LoadInt32(6);
            RemoteConstantLoader.LoadFloat32(7);
            RemoteConstantLoader.LoadFloat32(8);

            RemoteConstantLoader.LoadInt32(1);
            RemoteConstantLoader.LoadInt32(2);
            RemoteConstantLoader.LoadInt32(3);

            Console.ReadLine();
        }

        private static void SendAsyncRequestToDirrentFiles()
        {
            
            const string fileName1 = "file1.txt";
            const string fileName2 = "file2.txt";
            const string fileName3 = "file3.txt";

            string QueryString1 = string.Format("?file_name={0}&constant_id=1", fileName1);
            string QueryString2 = string.Format("?file_name={0}&constant_id=2", fileName2);
            string QueryString3 = string.Format("?file_name={0}&constant_id=3", fileName1);

            string QueryString4 = string.Format("?file_name={0}&constant_id=4", fileName2);
            string QueryString5 = string.Format("?file_name={0}&constant_id123=115", fileName1);
            string QueryString6 = string.Format("?file_name123={0}&constant_id=6", fileName2);
            
            string QueryString7 = string.Format("?file_name={0}&constant_id=7", fileName3);
            string QueryString8 = string.Format("?file_name={0}&constant_id=8", fileName3);

            System.Net.Http.HttpClient client = new System.Net.Http.HttpClient { BaseAddress = new Uri(ServerUrl) };

            Task<HttpResponseMessage> responseTask = client.GetAsync(QueryString1);
            responseTask.ContinueWith(x => PrintResult(fileName1, 1, x));

            Task<HttpResponseMessage> responseTask2 = client.GetAsync(QueryString2);
            responseTask2.ContinueWith(x => PrintResult(fileName2, 2, x));

            Task<HttpResponseMessage> responseTask3 = client.GetAsync(QueryString3);
            responseTask3.ContinueWith(x => PrintResult(fileName1, 3, x));

            Task<HttpResponseMessage> responseTask4 = client.GetAsync(QueryString4);
            responseTask4.ContinueWith(x => PrintResult(fileName2, 4, x));

            Task<HttpResponseMessage> responseTask5 = client.GetAsync(QueryString5);
            responseTask5.ContinueWith(x => PrintResult(fileName1, 5, x));

            Task<HttpResponseMessage> responseTask6 = client.GetAsync(QueryString6);
            responseTask6.ContinueWith(x => PrintResult(fileName2, 6, x));

            Task<HttpResponseMessage> responseTask7 = client.GetAsync(QueryString7);
            responseTask7.ContinueWith(x => PrintResult(fileName3, 7, x));

            Task<HttpResponseMessage> responseTask8 = client.GetAsync(QueryString8);
            responseTask8.ContinueWith(x => PrintResult(fileName3, 8, x));

            Console.ReadLine();
        }

        private static void SendAsyncRequestToOneFile()
        {

            const string fileName1 = "const-all-20121113-183435-TestAssembly.exe.txt";

            string QueryString1 = string.Format("?file_name={0}&constant_id=1", fileName1);
            string QueryString2 = string.Format("?file_name={0}&constant_id=2", fileName1);
            string QueryString3 = string.Format("?file_name={0}&constant_id=3", fileName1);

            string QueryString4 = string.Format("?file_name={0}&constant_id=4", fileName1);
            string QueryString5 = string.Format("?file_name={0}&constant_id=5", fileName1);
            string QueryString6 = string.Format("?file_name={0}&constant_id=116", fileName1);

            string QueryString7 = string.Format("?file_name={0}&constant_id123=7", fileName1);
            string QueryString8 = string.Format("?file_name123={0}&constant_id=8", fileName1);

            System.Net.Http.HttpClient client = new System.Net.Http.HttpClient { BaseAddress = new Uri(ServerUrl) };

            Task<HttpResponseMessage> responseTask = client.GetAsync(QueryString1);
            responseTask.ContinueWith(x => PrintResult(fileName1, 1, x));

            Task<HttpResponseMessage> responseTask2 = client.GetAsync(QueryString2);
            responseTask2.ContinueWith(x => PrintResult(fileName1, 2, x));

            Task<HttpResponseMessage> responseTask3 = client.GetAsync(QueryString3);
            responseTask3.ContinueWith(x => PrintResult(fileName1, 3, x));

            Task<HttpResponseMessage> responseTask4 = client.GetAsync(QueryString4);
            responseTask4.ContinueWith(x => PrintResult(fileName1, 4, x));

            Task<HttpResponseMessage> responseTask5 = client.GetAsync(QueryString5);
            responseTask5.ContinueWith(x => PrintResult(fileName1, 5, x));

            Task<HttpResponseMessage> responseTask6 = client.GetAsync(QueryString6);
            responseTask6.ContinueWith(x => PrintResult(fileName1, 6, x));

            Task<HttpResponseMessage> responseTask7 = client.GetAsync(QueryString7);
            responseTask7.ContinueWith(x => PrintResult(fileName1, 7, x));

            Task<HttpResponseMessage> responseTask8 = client.GetAsync(QueryString8);
            responseTask8.ContinueWith(x => PrintResult(fileName1, 8, x));

            Console.ReadLine();
        }

        public static void PrintResult(string fileName, int id, Task<HttpResponseMessage> task)
        {
            Task<string> result = task.Result.Content.ReadAsStringAsync();
            result.ContinueWith(resultTask => Console.WriteLine(string.Format("fileName: {0}, id: {1}, result: {2}", fileName, id, resultTask.Result)));
        }
    }
}
