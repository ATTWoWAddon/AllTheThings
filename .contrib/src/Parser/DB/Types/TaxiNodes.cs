using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/TaxiNodes
    /// </summary>
    [DataModule]
    public class TaxiNodes : IDBType
    {
        public long ID { get; set; }
        [Localize]
        public string Name_lang { get; set; }
        public double Pos_0 { get; set; }
        public double Pos_1 { get; set; }
        public double Pos_2 { get; set; }
        public double MapOffset_0 { get; set; }
        public double MapOffset_1 { get; set; }
        public double FlightMapOffset_0 { get; set; }
        public double FlightMapOffset_1 { get; set; }
        public long ContinentID { get; set; }
        public long ConditionID { get; set; }
        public long CharacterBitNumber { get; set; }
        public long Flags { get; set; }
        public long UiTextureKitID { get; set; }
        public double Facing { get; set; }
        public long SpecialIconConditionID { get; set; }
        public long VisibilityConditionID { get; set; }
        public long MountCreatureID_0 { get; set; }
        public long MountCreatureID_1 { get; set; }
    }
}
