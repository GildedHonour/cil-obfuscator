using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Configuration;

namespace HttpServer
{
    class ServerProgram
    {
        static void Main(string[] args)
        {
            HttpServer server = new HttpServer(ConfigurationManager.AppSettings["serverUrl"], ConfigurationManager.AppSettings["baseFolder"]);
            server.Start();
        }
    }
}
