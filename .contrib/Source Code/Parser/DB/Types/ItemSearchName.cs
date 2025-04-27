using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/ItemSearchName
    /// </summary>
    internal class ItemSearchName : IDBType
    {
        public long ID { get; set; }
        public long AllowableRace { get; set; }
        public string Display_lang { get; set; }
        public long OverallQualityID { get; set; }
        public long ExpansionID { get; set; }
        public long MinFactionID { get; set; }
        public long MinReputation { get; set; }
        public long AllowableClass { get; set; }
        public long RequiredLevel { get; set; }
        public long RequiredSkill { get; set; }
        public long RequiredSkillRank { get; set; }
        public long RequiredAbility { get; set; }
        public long ItemLevel { get; set; }
        public long Flags_0 { get; set; }
        public long Flags_1 { get; set; }
        public long Flags_2 { get; set; }
        public long Flags_3 { get; set; }
        public long Flags_4 { get; set; }

        public IDictionary<string, object> AsData()
        {
            var data = new Dictionary<string, object>
            {
                { "itemID", ID },
            };

            // CRIEVE NOTE: Item Quality is used in the addon's logic, despite being something that can be obtained dynamically. (albeit slowly, using an API)
            // This might be best to include as a base value for that purpose.
            long q = OverallQualityID;
            if (q >= 0) data["q"] = q;

            // CRIEVE NOTE: ilvl is dynamically found within the addon's class logic and doesn't need to be built into the DB directly as it has no purpose other than to display information.
            //long iLvl = ItemLevel;
            //if (iLvl > 1) data["iLvl"] = iLvl;

            // CRIEVE NOTE: This might be useful...
            long minFactionID = MinFactionID;
            if (minFactionID > 0)
            {
                // NOTE: This value is between 0 and 7, not a reputation xp number.
                data["minReputation"] = new List<object> { minFactionID, ConvertReputation(MinReputation) };
            }

            // CRIEVE NOTE: This might be useful...
            long requiredSkill = RequiredSkill;
            if (requiredSkill > 0)
            {
                data["requireSkill"] = requiredSkill;
                long requiredSkillRank = RequiredSkillRank;
                if (requiredSkillRank > 0)
                {
                    data["learnedAt"] = requiredSkillRank;
                }
            }

            // CRIEVE NOTE: Parse these somehow.
            //long allowableRace = AllowableRace;
            //long allowableClass = AllowableClass;
            return data;
        }

        public long ConvertReputation(long level)
        {
            switch (level)
            {
                case 7: return 42000;   // EXALTED
                case 6: return 21000;   // REVERED
                case 5: return 9000;    // HONORED
                case 4: return 3000;    // FRIENDLY
                case 3: return 0;       // NEUTRAL
                case 2: return -3000;   // UNFRIENDLY
                case 1: return -6000;   // HOSTILE
                default: return -42000; // HATED
            }
        }
    }
}
