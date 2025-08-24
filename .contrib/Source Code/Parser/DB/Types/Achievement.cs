using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Runtime.Serialization;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/Achievement
    /// </summary>
    [DataModule]
    public class Achievement : IDBType
    {
        [Localize]
        public string Description_lang { get; set; }
        [Localize]
        public string Title_lang { get; set; }
        [Localize]
        public string Reward_lang { get; set; }
        [ExportableData("achID")]
        public long ID { get; set; }
        public long Instance_ID { get; set; }
        public long Faction { get; set; }
        public long Supercedes { get; set; }
        [ExportableData("parentCategoryID")]
        public long Category { get; set; }
        public long Minimum_criteria { get; set; }
        public long Points { get; set; }
        public long Flags { get; set; }
        public long Ui_order { get; set; }
        [ExportableData("icon")]
        public long IconFileID { get; set; }
        public long RewardItemID { get; set; }
        [ExportableData("criteriaTreeID")]
        public long Criteria_tree { get; set; }
        public long Shares_criteria { get; set; }
        public long CovenantID { get; set; }

#pragma warning disable IDE1006 // Naming Styles
        private TypeFlags _flags => (TypeFlags)Flags;
#pragma warning restore IDE1006 // Naming Styles

        [ExportableData("isGuild")]
        public bool IsGuild
        {
            get
            {
                return _flags.HasFlag(TypeFlags.IsGuild);
            }
        }
    }
}
