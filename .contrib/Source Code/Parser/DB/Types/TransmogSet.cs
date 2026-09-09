using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/TransmogSet
    /// </summary>
    [DataModule]
    public class TransmogSet : IDBType, IWagoQuestID, IWagoTransmogSetID
    {
        [ExportableData("setID")]
        public long ID { get; set; }
        public long TransmogSetID => ID;
        [Localize]
        public string Name_lang { get; set; }
        public long ClassMask { get; set; }
        public long TrackingQuestID { get; set; }
        public long QuestID => TrackingQuestID;
        public long Flags { get; set; }
        public long TransmogSetGroupID { get; set; }
        public long ItemNameDescriptionID { get; set; }
        public long ParentTransmogSetID { get; set; }
        public long CompleteWorldStateID { get; set; }
        public long ExpansionID { get; set; }
        public long PatchIntroduced { get; set; }
        public long UiOrder { get; set; }
        public long ConditionID { get; set; }

        private TypeFlags _flags => (TypeFlags)Flags;

        public bool IsIgnoreFlags() =>
            (_flags & TypeFlags.DoNotDisplay) == TypeFlags.DoNotDisplay;

        public bool IsAllianceOnlyFlags() =>
            (_flags & TypeFlags.Alliance) == TypeFlags.Alliance;

        public bool IsHordeOnlyFlags() =>
            (_flags & TypeFlags.Horde) == TypeFlags.Horde;
    }
}
