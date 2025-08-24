using System;
using System.Collections.Generic;
using System.Text;

namespace ATT
{
    // Export extension for Object Data.
    partial class Export
    {
        /// <summary>
        /// The quest data class.
        /// This writes the questID to the constructor.
        /// </summary>
        public class QuestData : ObjectData
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
                if (fields.Contains("creatureID"))
                {
                    Framework.Log("FOUND A creatureID THAT WOULD ELEVATE THE QUEST TO AN NPC");
                    Framework.Log(MiniJSON.Json.Serialize(data));
                    Console.ReadLine();
                }
                base.Build(builder, data, fields);
            }
        }
    }
}
