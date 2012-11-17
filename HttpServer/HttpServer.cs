using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading;
using System.Web;
using System.Collections.Specialized;
using System.Text.RegularExpressions;
using System.Collections;

namespace HttpServer
{
    /// <summary>
    /// Http server which uses Http.sys over HttpListener class
    /// </summary>
    public class HttpServer
    {
        /// <summary>
        /// Prefix (url) to be used as an url of the server
        /// </summary>
        private readonly string _prefix;

        /// <summary>
        /// The server's folder
        /// </summary>
        private readonly string _folder;
        
        /// <summary>
        /// Listener
        /// </summary>
        private readonly HttpListener _listener = new HttpListener();

        /// <summary>
        /// Is the server already started
        /// </summary>
        public bool IsStarted { get; protected set; }

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="prefix">Prefix of url address where server will be available. 
        /// It must end with symbol /
        /// e.g. "http://localhost:1234/aaa/bbb/"</param>
        /// <param name="folder">Folder where the server will look for the afile to read a constant from</param>
        public HttpServer(string prefix, string folder)
        {
            if (!HttpListener.IsSupported)
            {
                Console.WriteLine("Windows XP SP2 or Server 2003 is required to use the HttpListener class.");
                return;
            }

            System.Threading.ThreadPool.SetMaxThreads(50, 1000);
            System.Threading.ThreadPool.SetMinThreads(50, 50);
            _prefix = prefix;
            _listener.Prefixes.Add(_prefix);
            _folder = folder;
        }

        /// <summary>
        /// Starts the server
        /// </summary>
        public void Start()
        {
            if (IsStarted)
            {
                return;
            }

            _listener.Start();
            IsStarted = true;
            Console.WriteLine("Server is starting...");
            while (true)
            {
                try
                {
                    ThreadPool.QueueUserWorkItem(ProcessRequest, _listener.GetContext());
                }
                catch (HttpListenerException e)
                {
                    Console.WriteLine("HttpListenerException occured: " + e.Message);
                    break;
                }
                catch (InvalidOperationException e)
                {
                    Console.WriteLine("InvalidOperationException occured" + e.Message);
                    break;
                }
            }

        }

        /// <summary>
        /// CallBack method for handling request
        /// </summary>
        /// <param name="o">object to be casted to HttpListenerContext</param>
        private void ProcessRequest(object obj)
        {
            HttpListenerContext context = obj as HttpListenerContext;
            //try
            //{
            Console.WriteLine("Processing the request...");
            using (Stream outputStream = context.Response.OutputStream)
            using (MemoryStream outputMemoryStream = new MemoryStream())
            {
                byte[] errorMessages;
                long streamLength;
                if (ValidateQueryString(context.Request.QueryString, out errorMessages))
                {
                    QueryStringData queryStringData = GetQueryStringData(context.Request.QueryString);
                    byte[] constantValue = GetConstantValueByID(queryStringData.FileName, queryStringData.ConstantID);
                    if (constantValue != null)
                    {
                        context.Response.StatusCode = (int)HttpStatusCode.OK;
                        outputMemoryStream.Write(constantValue, 0, constantValue.Length);
                        streamLength = constantValue.LongLength;
                    }
                    else
                    {
                        context.Response.StatusCode = (int)HttpStatusCode.NotFound;
                        byte[] errorMessage = Encoding.UTF8.GetBytes(string.Format("constant {0} you have requested is not found", queryStringData.ConstantID));
                        outputMemoryStream.Write(errorMessage, 0, errorMessage.Length);
                        streamLength = errorMessage.LongLength;
                    }

                    context.Response.ContentLength64 = streamLength;
                    outputStream.Write(outputMemoryStream.ToArray(), 0, (int)streamLength);
                    PrintResult(outputMemoryStream, context.Response.StatusCode, queryStringData);
                }
                else
                {
                    context.Response.StatusCode = (int)HttpStatusCode.BadRequest;
                    outputMemoryStream.Write(errorMessages, 0, errorMessages.Length);
                    streamLength = errorMessages.LongLength;

                    context.Response.ContentLength64 = streamLength;
                    outputStream.Write(outputMemoryStream.ToArray(), 0, (int)streamLength);
                    PrintResult(outputMemoryStream, context.Response.StatusCode);
                }
            }


            //}
            //catch (Exception e)
            //{
            //    Console.WriteLine("There was an exception thrown - {0}", e.Message);
            //}
        }

        /// <summary>
        /// Prints the result of a received request
        /// </summary>
        /// <param name="memoryStream">MemoryStream</param>
        /// <param name="statusCode">StatusCode</param>
        /// <param name="constantID">ConstantID</param>
        private void PrintResult(MemoryStream memoryStream, int statusCode, QueryStringData queryStringData)
        {
            memoryStream.Position = 0;
            using (StreamReader streamReader = new StreamReader(memoryStream))
            {
                Console.WriteLine("The request has been processed...");
                Console.WriteLine("\tStatus code: " + statusCode);
                Console.WriteLine(string.Format("\tfileName: => {0}, id => {1}, value => {2}", queryStringData.FileName, queryStringData.ConstantID, streamReader.ReadToEnd()));
                Console.WriteLine();
            }
        }

        /// <summary>
        /// Prints the result to console
        /// </summary>
        /// <param name="memoryStream">Memory stream</param>
        /// <param name="statusCode">Status code</param>
        private void PrintResult(MemoryStream memoryStream, int statusCode)
        {
            memoryStream.Position = 0;
            using (StreamReader streamReader = new StreamReader(memoryStream))
            {
                Console.WriteLine("The request has been processed...");
                Console.WriteLine("\tStatus code: " + statusCode);
                Console.WriteLine();
            }
        }

        /// <summary>
        /// Stop the server
        /// </summary>
        public void Stop()
        {
            if (IsStarted)
            {
                Console.WriteLine("Server is stopping...");
                _listener.Stop();
                _listener.Close();
                IsStarted = false;
            }
        }

        /// <summary>
        /// Returns the query string data
        /// </summary>
        /// <param name="queryString">Query string</param>
        /// <returns>Query string data as an object of QueryStringData</returns>
        private QueryStringData GetQueryStringData(NameValueCollection queryString)
        {
            string fullFileName = Path.Combine(_folder, queryString["file_name"]);
            int constantID = int.Parse(queryString["constant_id"]);
            return new QueryStringData(fullFileName, constantID);
        }

        /// <summary>
        /// Validates the query string
        /// </summary>
        /// <param name="queryString">Query string</param>
        /// <param name="errorMessages">If there is any error, it will containt the bytes of error messages</param>
        /// <returns>True if there is no error</returns>
        private bool ValidateQueryString(NameValueCollection queryString, out byte[] errorMessages)
        {
            var errorMessageList = new List<string>();
            int _constantID;
            if (!int.TryParse(queryString["constant_id"], out _constantID))
            {
                errorMessageList.Add("constant_id parameter is not valid or does not exist;");
            }

            string fileName = queryString["file_name"];
            if (string.IsNullOrWhiteSpace(fileName))
            {
                errorMessageList.Add("file_name is not valid or does not exist;");
            }
            else
            {
                string fullFileName = Path.Combine(_folder, fileName);
                if (!File.Exists(fullFileName))
                {
                    errorMessageList.Add("requested file does not exist;");
                }
            }

            if (errorMessageList.Any())
            {
                using (var memoryStream = new MemoryStream())
                {
                    byte[] newLineByteArray = Encoding.UTF8.GetBytes(Environment.NewLine);
                    foreach (var item in errorMessageList)
                    {
                        byte[] currentErrorMessage = Encoding.UTF8.GetBytes(item);
                        memoryStream.Write(currentErrorMessage, 0, currentErrorMessage.Length);
                        memoryStream.Write(newLineByteArray, 0, newLineByteArray.Length);
                    }

                    errorMessages = memoryStream.ToArray();
                    return false;
                }
            }
            else
            {
                errorMessages = null;
                return true;
            }
        }

        /// <summary>
        /// Returns constant by its id
        /// </summary>
        /// <param name="fileName">file name to read from</param>
        /// <param name="constantID">constant id</param>
        /// <returns>constant values as array of bytes </returns>
        private byte[] GetConstantValueByID(string fileName, int constantID)
        {
            const string regexPattern = @"(^\d+),\s+(.+)";
            foreach (string item in File.ReadLines(fileName))
            {
                Match match = Regex.Match(item, regexPattern);
                if (match.Success)
                {
                    int currentConstantID = int.Parse(match.Groups[1].Value);
                    if (currentConstantID == constantID)
                    {
                        return Encoding.UTF8.GetBytes(match.Groups[2].Value);
                    }
                }
            }

            return null;
        }
    }
}
