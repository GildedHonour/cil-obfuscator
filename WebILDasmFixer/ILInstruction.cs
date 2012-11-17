using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WebILDasmFixer
{
    /// <summary>
    /// IL instructions
    /// </summary>
    public class ILInstruction
    {
        /// <summary>
        /// ID of intruction
        /// </summary>
        public string ID;

        /// <summary>
        /// Opcode of instruction
        /// </summary>
        public string Opcode;

        /// <summary>
        /// Instruction
        /// </summary>
        public string Instruction;

        /// <summary>
        /// Argument
        /// </summary>
        public string Argument;
    }
}
