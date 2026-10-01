using System.Collections.Generic;
using System.IO;
using System.Text;

namespace ATT
{
    // Export extension for Object Data.
    partial class Export
    {
        /// <summary>
        /// The mount data class.
        /// This writes the mountID to the constructor.
        /// </summary>
        public class MountData : ObjectData
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
                // Remove the identification fields.
                fields.Remove("mountID");
                fields.Remove("spellID");

                // Write the Spell ID as the primary field, with priority on 'mountID' specifically
                if ((data.TryGetValue("mountID", out long spellID) || data.TryGetValue("spellID", out spellID)) && spellID > 0)
                {
                    WriteShortcut(builder, ConstructorShortcut, Function);
                    ExportCompressedLua(builder, spellID);
                }
                else if (data.TryGetValue("itemID", out long itemID) && itemID > 0)
                {
                    WriteShortcut(builder, "i", "_.CreateItem");
                    ExportCompressedLua(builder, itemID);
                    fields.Remove("itemID");
                }
                else throw new InvalidDataException($"Mount with both SpellID and ItemID == 0 -- {Framework.ToJSON(data)}");
            }
        }
    }
}
