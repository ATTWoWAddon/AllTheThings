using System;
using System.Collections.Generic;
using System.Text;

namespace ATT
{
    // Export extension for Object Data.
    partial class Export
    {
        /// <summary>
        /// The heirloom data class.
        /// This writes the heirloomID to the constructor.
        /// </summary>
        public class HeirloomData : ObjectData
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
                base.Constructor(builder, data, fields);

                // Check to make sure that only filterable types get written here.
                // Rings, Necks, and Trinkets by default will
                if (data.TryGetValue("f", out object fObj))
                {
                    var f = Convert.ToInt64(fObj);
                    if (f == 51 || f == 52 || f == 53) fields.Remove("f");
                }
            }
        }
    }
}
