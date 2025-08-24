using System;
using System.Collections.Generic;
using System.Text;

namespace ATT
{
    // Export extension for Object Data.
    partial class Export
    {
        /// <summary>
        /// The header data class.
        /// This writes the headerID to the constructor.
        /// </summary>
        public class HeaderData : ObjectData
        {
            /// <summary>
            /// Build the object.
            /// This writes the primary field and removes it from the list of available fields.
            /// </summary>
            /// <param name="builder">The builder.</param>
            /// <param name="data">The data.</param>
            /// <param name="fields">The fields.</param>
            public override void Build(StringBuilder builder, IDictionary<string, object> data, IList<string> fields)
            {
                if (!fields.Contains("type"))
                {
                    // This is a custom header and should export as a Custom Header, not an Auto Header
                    WriteShortcut(builder, "h", "_.CreateCustomHeader");    // At some point rename this to CreateHeader and change the other one to use CreateAutoHeader or build type checking into the Header base class
                    ExportField(builder, data, fields, "headerID");
                }
                else base.Build(builder, data, fields);
            }
        }
    }
}
