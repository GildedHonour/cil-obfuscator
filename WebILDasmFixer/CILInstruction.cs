using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WebILDasmFixer
{
    /// <summary>
    /// CIL instructions
    /// </summary>
    public class CILInstruction
    {
        /// <summary>
        /// ID of an intruction
        /// </summary>
        public string ID;

        /// <summary>
        /// Opcode of an instruction
        /// </summary>
        public string ConstantLoadingCode;

        /// <summary>
        /// Instruction
        /// </summary>
        public string OriginalCode;

        /// <summary>
        /// Argument
        /// </summary>
        public string Argument;

        /// <summary>
        /// Label (like IL_0054)
        /// </summary>
        public string Label;

        /// <summary>
        /// Is a constant loading instruction?
        /// </summary>
        public bool IsConstantLoading
        {
            get
            {
                return !string.IsNullOrWhiteSpace(ConstantLoadingCode);
            }
        }

        /// <summary>
        /// Has an argument
        /// </summary>
        public bool HasArgument
        {
            get
            {
                return !string.IsNullOrWhiteSpace(Argument);
            }
        }
    }
}
