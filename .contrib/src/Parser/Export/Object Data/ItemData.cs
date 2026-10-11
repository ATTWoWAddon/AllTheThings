using System;
using System.Collections.Generic;
using System.Net;
using System.Text;

namespace ATT
{
    // Export extension for Object Data.
    partial class Export
    {
        /// <summary>
        /// The item data class.
        /// This writes the itemID to the constructor.
        /// </summary>
        public class ItemData : ObjectData
        {
            /// <summary>
            /// Build the object.
            /// This writes the primary field and removes it from the list of available fields.
            /// </summary>
            /// <param name="builder">The builder.</param>
            /// <param name="data">The data.</param>
            /// <param name="fields">The fields.</param>
            public override void Build(Exporter builder, IDictionary<string, object> data, IList<string> fields)
            {
                if (data.TryGetValue("f", out long f))
                {
                    if (f <= 0 || f == 104 || f == 56 || f== 114) fields.Remove("f");  // Quest Items, Reagents, Keys, and Invalid Filters
                    else
                    {
                        if (data.TryGetValue("spellID", out object spellIDRef))   // Mounts
                        {
                            if (Convert.ToInt32(spellIDRef) <= 0)
                            {
                                fields.Remove("spellID");
                                fields.Remove("f");
                            }
                        }

                        if (data.TryGetValue("recipeID", out spellIDRef) && Convert.ToInt32(spellIDRef) == 0)   // Recipes
                        {
                            fields.Remove("recipeID");
                            fields.Remove("f");
                            return;
                        }
                    }
                }

                base.Build(builder, data, fields);
            }
        }
    }
}
