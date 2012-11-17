using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Http;
using System.Threading.Tasks;
using System.IO;
using System.Text.RegularExpressions;
using System.Windows.Forms;

namespace HttpClient
{
    /// <summary>
    /// Class which will be injected into a test assembly.
    /// It will load constants from external location (int this case that's a remote web server)
    /// </summary>
    internal static class RemoteConstantLoader
    {
        private const string _serverUrl = "http://localhost:1234/aaa/bbb/";
        private static readonly string _remoteFileName = string.Format("const-all-20121112-212051-TestAssembly.exe.txt");
        private static readonly string _localCacheFileName = string.Format("const-all-20121112-212051-TestAssembly.exe.txt");
        private static readonly object _locker = new object();
        private const int _arraySize = 50;
        private static string[] _constant = new string[_arraySize];
        private static bool[] _isConstantLoaded = new bool[_arraySize];

        #region Load constant methods
        /// <summary>
        /// Loads int16
        /// </summary>
        /// <param name="index">index of a constant</param>
        /// <returns>the value of a loaded constant as int16</returns>
        public static short LoadInt16(int index)
        {
            string tempValue = LoadConstant(index);
            short returnValue = Convert.ToInt16(tempValue, GetBase(tempValue));
            return returnValue;
        }

        /// <summary>
        /// Loads int32
        /// </summary>
        /// <param name="index">index of a constant</param>
        /// <returns>the value of a loaded constant as int32</returns>
        public static int LoadInt32(int index)
        {
            string tempValue = LoadConstant(index);
            int returnValue = Convert.ToInt32(tempValue, GetBase(tempValue));
            return returnValue;
        }

        /// <summary>
        /// Loads int64
        /// </summary>
        /// <param name="index">index of a constant</param>
        /// <returns>the value of a loaded constant as int64</returns>
        public static long LoadInt64(int index)
        {
            string tempValue = LoadConstant(index);
            long returnValue = Convert.ToInt64(tempValue, GetBase(tempValue));
            return returnValue;
        }

        /// <summary>
        /// Loads string
        /// </summary>
        /// <param name="index">index of a constant</param>
        /// <returns>the value of a loaded constant as string</returns>
        public static string LoadString(int index)
        {
            return LoadConstant(index).Replace(@"""", "");
        }

        /// <summary>
        /// Loads float32
        /// </summary>
        /// <param name="index">index of a constant</param>
        /// <returns>the value of a loaded constant as float32</returns>
        public static float LoadFloat32(int index)
        {
            string tempValue = LoadConstant(index);
            return float.Parse(tempValue);
        }

        /// <summary>
        /// Loads float64
        /// </summary>
        /// <param name="index">index of a constant</param>
        /// <returns>the value of a loaded constant as float64</returns>
        public static double LoadFloat64(int index)
        {
            return double.Parse(LoadConstant(index));
        }

        #endregion

        /// <summary>
        /// Loads a constant
        /// </summary>
        /// <param name="index">index of a constant</param>
        /// <returns>the value of a loaded constant as string</returns>
        public static string LoadConstant(int id)
        {
            if (_isConstantLoaded[id - 1])
            {
                MessageBox.Show(string.Format("Memory cached constant: id => {0}, value => {1}", id, _constant[id - 1]));
                return _constant[id - 1];
            }

            if (File.Exists(_localCacheFileName))
            {
                bool cachedConstantExists;
                string cachedConstant = GetCachedConstant(id, out cachedConstantExists);
                if (cachedConstantExists)
                {
                    MessageBox.Show(string.Format("Cached file constant: id => {0}, value => {1}", id, cachedConstant));
                    lock (_locker)
                    {
                        _isConstantLoaded[id - 1] = true;
                        _constant[id - 1] = cachedConstant;
                    }

                    return _constant[id - 1];
                }
            }

            string remoteConstant = GetRemoteConstant(id);
            CacheConstantToFile(id, remoteConstant);
            lock (_locker)
            {
                _constant[id - 1] = remoteConstant;
                _isConstantLoaded[id - 1] = true;
            }

            MessageBox.Show(string.Format("Server constant: id => {0}, value => {1}", id, _constant[id - 1]));
            return _constant[id - 1];
        }

        private static void CacheConstantToFile(int id, string constantToCache)
        {
            using (var fileStream = new FileStream(_localCacheFileName, FileMode.Append, FileAccess.Write))
            {
                using (StreamWriter writer = new StreamWriter(fileStream))
                {
                    writer.WriteLine(string.Format("{0}, {1}", id, constantToCache));
                }
            }
        }

        private static string GetCachedConstant(int id, out bool cachedConstantExists)
        {
            using (StreamReader reader = new StreamReader(_localCacheFileName))
            {
                string line;
                int currentID;
                while (!string.IsNullOrWhiteSpace((line = reader.ReadLine())))
                {
                    Match idMatch = Regex.Match(line, @"^\d+");
                    if (idMatch.Success && int.Parse(idMatch.Value) == id)
                    {
                        Match constantMatch = Regex.Match(line, @",\s+(\S+)");
                        if (constantMatch.Success)
                        {
                            cachedConstantExists = true;
                            return constantMatch.Groups[1].Value;
                        }
                    }
                }

                cachedConstantExists = false;
                return string.Empty;
            }
        }

        private static string GetRemoteConstant(int id)
        {
            lock (_locker)
            {
                string queryString = string.Format("{0}?file_name={1}&constant_id={2}", _serverUrl, _remoteFileName, id);
                System.Net.Http.HttpClient _httpClient = new System.Net.Http.HttpClient { BaseAddress = new Uri(_serverUrl) };
                Task<HttpResponseMessage> responseTask = _httpClient.GetAsync(queryString);
                string result = string.Empty;
                responseTask.ContinueWith(x => result = PrintRemoteConstant(id, x))
                    .Wait();
                return result;
            }
        }

        private static string PrintRemoteConstant(int id, Task<HttpResponseMessage> httpTask)
        {
            Task<string> task = httpTask.Result.Content.ReadAsStringAsync();
            string result = string.Empty;
            task.ContinueWith(t => result = t.Result).Wait();
            return result;
        }

        /// <summary>
        /// Return a base of a number by its representation
        /// </summary>
        /// <param name="value">number</param>
        /// <returns>16 or 10</returns>
        private static int GetBase(string value)
        {
            return value.Contains("x") ? 16 : 10;
        }
    }
}
