using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace WebILDasmFixer
{
    class PeekableStreamReader : StreamReader
    {
        private Queue<string> _queue = new Queue<string>();
        public PeekableStreamReader(Stream stream)
            : base(stream)
        {

        }

        public override string ReadLine()
        {
            if (_queue.Any())
            {
                return _queue.Dequeue();
            }

            return base.ReadLine();
        }

        public string PeekLine()
        {
            string line = ReadLine();
            _queue.Enqueue(line);
            return line;
        }
    }
}
