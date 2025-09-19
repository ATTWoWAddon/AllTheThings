using System;
using System.Collections.Generic;
using System.Text;

namespace ATT
{
    // Export extension for Object Data.
    partial class Export
    {
        /// <summary>
        /// The achievement data class.
        /// This writes the achID to the constructor.
        /// </summary>
        public class AchievementData : ObjectData
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
                if (fields.Contains("isGuild"))
                {
                    fields.Remove("isGuild");
                    WriteShortcut(builder, "gach", "_.CreateGuildAchievement");
                    ExportField(builder, data, fields, "achID");
                }
                else base.Build(builder, data, fields);
            }
        }
    }
}
