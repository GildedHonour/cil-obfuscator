using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WebILDasmFixer
{
    /// <summary>
    /// IL instructions
    /// </summary>
    public class CILInstruction
    {
        /// <summary>
        /// ID of intruction
        /// </summary>
        public string ID;

        /// <summary>
        /// Opcode of instruction
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
        /// Is constant loading instruction
        /// </summary>
        public bool IsConstantLoading
        {
            get
            {
                return !string.IsNullOrWhiteSpace(ConstantLoadingCode);
            }
        }

        /// <summary>
        /// HasArgument
        /// </summary>
        public bool HasArgument
        {
            get
            {
                return !string.IsNullOrWhiteSpace(Argument);
            }
        }

        //public override string ToString()
        //{
        //    if (HasArgument)
        //    {
        //        return string.Format("{0}: {1}", Label, ;
        //    }
        //    else
        //    {
        //        return "";
        //    }
        //}
    }
}
