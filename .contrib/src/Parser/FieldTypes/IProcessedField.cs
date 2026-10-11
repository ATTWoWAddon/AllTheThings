using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATT.FieldTypes
{
    public interface IProcessedField
    {
        /// <summary>
        /// Implement to ensure a given object contains valid data according to itself. Any problems should use logging to specify the problem
        /// </summary>
        void Validate();

        /// <summary>
        /// Implement to retrieve global DB information into this object
        /// </summary>
        void Incorporate();

        /// <summary>
        ///  Implement to migrate or adjust data based on any other data which has been processed
        /// </summary>
        void Consolidate();
    }
}
