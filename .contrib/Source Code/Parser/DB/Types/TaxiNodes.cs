using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/TaxiNodes
    /// </summary>
    internal class TaxiNodes : IDBType
    {
        public long ID { get; set; }
        public string Name_lang { get; set; }
        public float Pos_0 { get; set; }
        public float Pos_1 { get; set; }
        public float Pos_2 { get; set; }
        public float MapOffset_0 { get; set; }
        public float MapOffset_1 { get; set; }
        public float FlightMapOffset_0 { get; set; }
        public float FlightMapOffset_1 { get; set; }
        public long ContinentID { get; set; }
        public long ConditionID { get; set; }
        public long CharacterBitNumber { get; set; }
        public long Flags { get; set; }
        public long UiTextureKitID { get; set; }
        public long Facing { get; set; }
        public long SpecialIconConditionID { get; set; }
        public long VisibilityConditionID { get; set; }
        public long MountCreatureID_0 { get; set; }
        public long MountCreatureID_1 { get; set; }
        public IDictionary<string, object> AsData()
        {
            return new Dictionary<string, object>();
        }
    }
}
