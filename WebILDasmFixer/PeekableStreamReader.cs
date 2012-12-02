using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace WebILDasmFixer
{
    /// <summary>
    /// Allows to peek a line instead of reading
    /// </summary>
    class PeekableStreamReader : StreamReader
    {
        private Queue<string> _queue = new Queue<string>();
        public PeekableStreamReader(Stream stream)
            : base(stream)
        {
        }

        /// <summary>
        /// Reads a line
        /// </summary>
        /// <returns>A line</returns>
        public override string ReadLine()
        {
            if (_queue.Any())
            {
                return _queue.Dequeue();
            }

            return base.ReadLine();
        }

        /// <summary>
        /// Peeks a line
        /// </summary>
        /// <returns>A line</returns>
        public string PeekLine()
        {
            string line = ReadLine();
            _queue.Enqueue(line);
            return line;
        }
    }
}
