using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Net.Http;
using System.Threading.Tasks;
using System.IO;
using System.Text.RegularExpressions;
using System.Windows.Forms;
using System.Threading;

internal static class RemoteConstantLoader
{
    // Fields
    private const int _arraySize = 50;
    private static string[] _constant = new string[0x26];
    private static bool[] _isConstantLoaded = new bool[0x26];
    private static readonly string _localCacheFileName = string.Format("const-cache-20121128-234559-BenchmarkSpectralNorm.exe.txt", new object[0]);
    private static readonly object _locker = new object();
    private static readonly string _remoteFileName = string.Format("const-all-20121128-234559-BenchmarkSpectralNorm.exe.txt", new object[0]);
    private const string _serverUrl = "http://localhost:1234/aaa/bbb/";
    private static readonly bool _showConstantLoadingAlerts = false;

    // Methods
    private static void CacheConstantToFile(int id, string constantToCache)
    {
        using (FileStream fileStream = new FileStream(_localCacheFileName, FileMode.Append, FileAccess.Write))
        {
            using (StreamWriter writer = new StreamWriter(fileStream))
            {
                writer.WriteLine(string.Format("{0}, {1}", id, constantToCache));
            }
        }
    }

    private static int GetBase(string value)
    {
        return (value.Contains("x") ? 0x10 : 10);
    }

    private static bool GetFileCachedConstant(int id, out string cachedConstant)
    {
        using (StreamReader reader = new StreamReader(new FileStream(_localCacheFileName, FileMode.Open, FileAccess.Read, FileShare.ReadWrite)))
        {
            string line;
            while (!string.IsNullOrWhiteSpace(line = reader.ReadLine()))
            {
                Match idMatch = Regex.Match(line, @"^\d+");
                if (idMatch.Success && (int.Parse(idMatch.Value) == id))
                {
                    Match constantMatch = Regex.Match(line, @",\s+(\S+)");
                    if (constantMatch.Success)
                    {
                        cachedConstant = constantMatch.Groups[1].Value;
                        return true;
                    }
                }
            }
            cachedConstant = string.Empty;
            return false;
        }
    }

    private static string GetRemoteConstant(int id)
    {
        string __native_cil_var__1;
        object __native_cil_var__2 = null; //!!! = null
        bool s__LockTaken1 = false;
        try
        {
            Monitor.Enter(__native_cil_var__2 = _locker, ref s__LockTaken1);
            string queryString = string.Format("{0}?file_name={1}&constant_id={2}", "http://localhost:1234/aaa/bbb/", _remoteFileName, id);
            HttpClient g__initLocal2 = new HttpClient
            {
                BaseAddress = new Uri("http://localhost:1234/aaa/bbb/")
            };
            Task<HttpResponseMessage> responseTask = g__initLocal2.GetAsync(queryString);
            string result = string.Empty;
            responseTask.ContinueWith<string>(x => result = GetRemoteConstantValue(id, x)).Wait();
            __native_cil_var__1 = result;
        }
        finally
        {
            if (s__LockTaken1)
            {
                Monitor.Exit(__native_cil_var__2);
            }
        }
        return __native_cil_var__1;
    }

    private static string GetRemoteConstantValue(int id, Task<HttpResponseMessage> httpTask)
    {
        Task<string> task = httpTask.Result.Content.ReadAsStringAsync();
        string result = string.Empty;
        task.ContinueWith<string>(t => result = t.Result).Wait();
        return result;
    }

    public static string LoadConstant(int id)
    {
        if (_isConstantLoaded[id - 1])
        {
            if (_showConstantLoadingAlerts)
            {
                MessageBox.Show(string.Format("Memory cached constant: id => {0}, value => {1}", id, _constant[id - 1]));
            }
            return _constant[id - 1];
        }
        lock (_locker)
        {
            string cachedConstant;
            if (File.Exists(_localCacheFileName) && GetFileCachedConstant(id, out cachedConstant))
            {
                if (_showConstantLoadingAlerts)
                {
                    MessageBox.Show(string.Format("Cached file constant: id => {0}, value => {1}", id, cachedConstant));
                }
                _constant[id - 1] = cachedConstant;
                _isConstantLoaded[id - 1] = true;
                return _constant[id - 1];
            }
            string remoteConstant = GetRemoteConstant(id);
            CacheConstantToFile(id, remoteConstant);
            _constant[id - 1] = remoteConstant;
            _isConstantLoaded[id - 1] = true;
            if (_showConstantLoadingAlerts)
            {
                MessageBox.Show(string.Format("Server constant: id => {0}, value => {1}", id, _constant[id - 1]));
            }
            return _constant[id - 1];
        }
    }

    public static float LoadFloat32(int index)
    {
        return float.Parse(LoadConstant(index));
    }

    public static double LoadFloat64(int index)
    {
        return double.Parse(LoadConstant(index));
    }

    public static short LoadInt16(int index)
    {
        string tempValue = LoadConstant(index);
        return Convert.ToInt16(tempValue, GetBase(tempValue));
    }

    public static int LoadInt32(int index)
    {
        string tempValue = LoadConstant(index);
        return Convert.ToInt32(tempValue, GetBase(tempValue));
    }

    public static long LoadInt64(int index)
    {
        string tempValue = LoadConstant(index);
        return Convert.ToInt64(tempValue, GetBase(tempValue));
    }

    public static string LoadString(int index)
    {
        return LoadConstant(index).Replace("\"", "");
    }
}




