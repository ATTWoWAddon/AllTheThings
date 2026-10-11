namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/UiMapAssignment
    /// </summary>
    [DataModule]
    public class UiMapAssignment : IDBType, IWagoAreaID, IWagoUiMapID
    {
        public long ID { get; set; }
        public double UiMin_0 { get; set; }
        public double UiMin_1 { get; set; }
        public double UiMax_0 { get; set; }
        public double UiMax_1 { get; set; }
        public double Region_0 { get; set; }
        public double Region_1 { get; set; }
        public double Region_2 { get; set; }
        public double Region_3 { get; set; }
        public double Region_4 { get; set; }
        public double Region_5 { get; set; }
        public long UiMapID { get; set; }
        public long OrderIndex { get; set; }
        public long MapID { get; set; }
        public long AreaID { get; set; }
        public long WMODoodadPlacementID { get; set; }
        public long WMOGroupID { get; set; }
    }
}
