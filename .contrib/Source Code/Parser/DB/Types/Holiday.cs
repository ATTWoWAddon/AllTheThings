namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/Holidays
    /// </summary>
    [DataModule]
    public class Holiday : IDBType, IWagoHolidayNameID
    {
        public long ID { get; set; }
        public long Region { get; set; }
        public long Looping { get; set; }
        private long _HolidayNameID;
        public long HolidayNameID
        {
            get
            {
                return _HolidayNameID;
            }
            set
            {
                // CRIEVE NOTE: Blizzard did a dumb and duplicated the Timewalking Dungeon Event.
                if ((_HolidayNameID = value) == 237) _HolidayNameID = 239;
            }
        }
        public long HolidayDescriptionID { get; set; }
        public long Priority { get; set; }
        public long CalendarFilterType { get; set; }
        public long Flags { get; set; }
        public long Duration_0 { get; set; }
        public long Duration_1 { get; set; }
        public long Duration_2 { get; set; }
        public long Duration_3 { get; set; }
        public long Duration_4 { get; set; }
        public long Duration_5 { get; set; }
        public long Duration_6 { get; set; }
        public long Duration_7 { get; set; }
        public long Duration_8 { get; set; }
        public long Duration_9 { get; set; }
        public long Date_0 { get; set; }
        public long Date_1 { get; set; }
        public long Date_2 { get; set; }
        public long Date_3 { get; set; }
        public long Date_4 { get; set; }
        public long Date_5 { get; set; }
        public long Date_6 { get; set; }
        public long Date_7 { get; set; }
        public long Date_8 { get; set; }
        public long Date_9 { get; set; }
        public long Date_10 { get; set; }
        public long Date_11 { get; set; }
        public long Date_12 { get; set; }
        public long Date_13 { get; set; }
        public long Date_14 { get; set; }
        public long Date_15 { get; set; }
        public long Date_16 { get; set; }
        public long Date_17 { get; set; }
        public long Date_18 { get; set; }
        public long Date_19 { get; set; }
        public long Date_20 { get; set; }
        public long Date_21 { get; set; }
        public long Date_22 { get; set; }
        public long Date_23 { get; set; }
        public long Date_24 { get; set; }
        public long Date_25 { get; set; }
        public long CalendarFlags_0 { get; set; }
        public long CalendarFlags_1 { get; set; }
        public long CalendarFlags_2 { get; set; }
        public long CalendarFlags_3 { get; set; }
        public long CalendarFlags_4 { get; set; }
        public long CalendarFlags_5 { get; set; }
        public long CalendarFlags_6 { get; set; }
        public long CalendarFlags_7 { get; set; }
        public long CalendarFlags_8 { get; set; }
        public long CalendarFlags_9 { get; set; }
        public long TextureFileDataID_0 { get; set; }
        public long TextureFileDataID_1 { get; set; }
        public long TextureFileDataID_2 { get; set; }
    }
}
