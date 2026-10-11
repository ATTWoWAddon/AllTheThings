namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/AreaTable
    /// </summary>
    [DataModule]
    public class AreaTable : IDBType, IWagoAreaID
    {
        public long ID { get; set; }
        public string ZoneName { get; set; }
        [Localize]
        public string AreaName_lang { get; set; }
        public long ContinentID { get; set; }
        public long ParentAreaID { get; set; }
        public long AreaBit { get; set; }
        public long SoundProviderPref { get; set; }
        public long SoundProviderPrefUnderwater { get; set; }
        public long AmbienceID { get; set; }
        public long UwAmbience { get; set; }
        public long ZoneMusic { get; set; }
        public long UwZoneMusic { get; set; }
        public long IntroSound { get; set; }
        public long UwIntroSound { get; set; }
        public long FactionGroupMask { get; set; }
        public double Ambient_multiplier { get; set; }
        public long MountFlags { get; set; }
        public long PvpCombatWorldStateID { get; set; }
        public long WildBattlePetLevelMin { get; set; }
        public long WildBattlePetLevelMax { get; set; }
        public long WindSettingsID { get; set; }
        public long ContentTuningID { get; set; }
        public long Flags_0 { get; set; }
        public long Flags_1 { get; set; }
        public long LiquidTypeID_0 { get; set; }
        public long LiquidTypeID_1 { get; set; }
        public long LiquidTypeID_2 { get; set; }
        public long LiquidTypeID_3 { get; set; }

        #region Data Transformations
        public long AreaID
        {
            get
            {
                return ID;
            }
        }
        #endregion
    }
}
