namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/UiMap
    /// </summary>
    [DataModule]
    public class UiMap : IDBType, IWagoChild, IWagoUiMapID
    {
        public long ID { get; set; }
        [Localize]
        public string Name_lang { get; set; }
        public long ParentUiMapID { get; set; }
        public long Flags { get; set; }
        public long System { get; set; }
        public long Type { get; set; }
        public long BountySetID { get; set; }
        public long BountyDisplayLocation { get; set; }
        public long TempVisibilityPlayerConditionID { get; set; }
        public long VisibilityPlayerConditionID { get; set; }
        public long HelpTextPosition { get; set; }
        public long BkgAtlasID { get; set; }
        public long AlternateUiMapGroup { get; set; }
        public long ContentTuningID { get; set; }
        public long AdventureMapTextureKitID { get; set; }
        public long MapArtZoneTextPosition { get; set; }

        #region Data Transformations
        public long Parent
        {
            get { return ParentUiMapID; }
        }

        public long UiMapID
        {
            get { return ID; }
        }
        #endregion
    }
}
