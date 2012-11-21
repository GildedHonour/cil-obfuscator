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
        /// Locker
        /// </summary>
        private static readonly object _locker = new object();

        /// <summary>
        /// Is the server already started
        /// </summary>
        public bool IsStarted { get; protected set; }

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="prefix">Prefix of url address where server will be available. 
        /// It must be ended with symbol /
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
            lock (_locker)
            {
                IsStarted = true;
            }

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
            Console.WriteLine("Processing the request...");
            HttpListenerContext context = obj as HttpListenerContext;
            //try
            //{
            using (StreamWriter writer = new StreamWriter(context.Response.OutputStream))
            {
                List<string> errors = GetQueryStringValidationErrors(context.Request.QueryString).ToList();
                //There is no any error in validation
                if (!errors.Any())
                {
                    QueryStringData queryStringData = GetQueryStringData(context);
                    string value = GetConstantValueByID(queryStringData);
                    //Constant is found, everything is ok
                    if (value != null)
                    {
                        context.Response.StatusCode = (int)HttpStatusCode.OK;
                        writer.Write(value);
                    }
                    //Constant is not found
                    else
                    {
                        context.Response.StatusCode = (int)HttpStatusCode.NotFound;
                        writer.Write(string.Format("constant {0} you have requested is not found", queryStringData.ConstantID));
                    }

                    PrintSuccessfulResult(context.Response.StatusCode, queryStringData, value);
                }
                //There is an error in validation
                else
                {
                    context.Response.StatusCode = (int)HttpStatusCode.BadRequest;
                    errors.ForEach(writer.WriteLine);
                    PrintErrorResult(context.Response.StatusCode, errors);
                }
            }
            //}
            //catch (Exception e)
            //{
            //    Console.WriteLine("There is an exception thrown - {0}", e.Message);
            //}
        }

        /// <summary>
        /// Prints the successful result
        /// </summary>
        /// <param name="statusCode">Status code</param>
        /// <param name="queryStringData">Query string data</param>
        /// <param name="constantValue">Constant value</param>
        private void PrintSuccessfulResult(int statusCode, QueryStringData queryStringData, string constantValue)
        {
            PrintResultImpl(statusCode, () =>
            {
                Console.WriteLine(string.Format("\tfileName: => {0}, id => {1}, value => {2}", queryStringData.FileName, queryStringData.ConstantID, constantValue));
            });
        }

        /// <summary>
        /// Prints the error result
        /// </summary>
        /// <param name="statusCode">Status code</param>
        /// <param name="errors">IEnumerable of error strings</param>
        private void PrintErrorResult(int statusCode, IEnumerable<string> errors)
        {
            PrintResultImpl(statusCode, () =>
            {
                Console.WriteLine("\tErrors:");
                foreach (string item in errors)
                {
                    Console.WriteLine(string.Format("\t\t{0}", item));
                }

            });
        }

        /// <summary>
        /// Implementation of print result
        /// </summary>
        /// <param name="statusCode">Status code</param>
        /// <param name="action">Action</param>
        private void PrintResultImpl(int statusCode, Action action)
        {
            Console.WriteLine("The request has been processed...");
            Console.WriteLine("\tStatus code: " + statusCode);
            action();
            Console.WriteLine();
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
                lock (_locker)
                {
                    IsStarted = false;
                }
            }
        }

        /// <summary>
        /// Returns the query string data
        /// </summary>
        /// <param name="queryString">Query string</param>
        /// <returns>Query string data as an object of QueryStringData</returns>
        private QueryStringData GetQueryStringData(HttpListenerContext context)
        {
            NameValueCollection queryString = context.Request.QueryString;
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
        /// Returns constant value by its id
        /// </summary>
        /// <param name="queryStringData">QueryStringData</param>
        /// <returns>constant value</returns>
        private string GetConstantValueByID(QueryStringData queryStringData)
        {
            const string regexPattern = @"(^\d+),\s+(.+)";
            foreach (string item in File.ReadLines(queryStringData.FileName))
            {
                Match match = Regex.Match(item, regexPattern);
                if (match.Success)
                {
                    int currentConstantID = int.Parse(match.Groups[1].Value);
                    if (currentConstantID == queryStringData.ConstantID)
                    {
                        return match.Groups[2].Value;
                    }
                }
            }

            return null;
        }

        /// <summary>
        /// Validates query string and returns IEnumerable of string if there is any error
        /// </summary>
        /// <param name="queryString">Query string</param>
        /// <returns>IEnumerable of string if there is any error</returns>
        private IEnumerable<string> GetQueryStringValidationErrors(NameValueCollection queryString)
        {
            int constantID;
            if (!int.TryParse(queryString["constant_id"], out constantID))
            {
                yield return "constant_id parameter is not valid or does not exist";
            }

            string fileName = queryString["file_name"];
            if (string.IsNullOrWhiteSpace(fileName))
            {
                yield return "file_name parameter is not valid or does not exist";
            }

            else if (!File.Exists(Path.Combine(_folder, fileName)))
            {
                yield return "requested file does not exist";
            }
        }
    }
}
