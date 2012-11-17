using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HttpServer
{
    /// <summary>
    /// Incupsulates the data received in query string
    /// </summary>
    struct QueryStringData
    {
        /// <summary>
        /// File name
        /// </summary>
        public string FileName;

        /// <summary>
        /// Constant ID
        /// </summary>
        public int ConstantID;

        /// <summary>
        /// Constructor
        /// </summary>
        /// <param name="fileName">File name</param>
        /// <param name="constantID">Constant ID</param>
        public QueryStringData(string fileName, int constantID)
        {
            FileName = fileName;
            ConstantID = constantID;
        }
    }
}
