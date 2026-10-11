using System.Collections.Generic;
using System.Text;

namespace ATT
{
    // Export extension for Object Data.
    partial class Export
    {
        /// <summary>
        /// The item source data class.
        /// This writes the sourceID to the constructor.
        /// </summary>
        public class ItemSourceData : ObjectData
        {
            /// <summary>
            /// The constructor.
            /// This writes the primary field and removes it from the list of available fields.
            /// </summary>
            /// <param name="builder">The builder.</param>
            /// <param name="data">The data.</param>
            /// <param name="fields">The fields.</param>
            public override void Constructor(Exporter builder, IDictionary<string, object> data, IList<string> fields)
            {
                // Write the default data field to the builder.
                base.Constructor(builder, data, fields);

                // Export the Item ID as the second argument.
                builder.Append(',');
                if (!data.TryGetValue("itemID", out long itemID))
                {
                    // TEMPORARY
                    data["itemID"] = 0;
                }
                ExportField(builder, data, fields, "itemID");
            }
        }
    }
}
