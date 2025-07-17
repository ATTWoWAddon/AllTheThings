namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/HolidayNames
    /// </summary>
    [DataModule]
    public class HolidayNames : IDBType, IWagoHolidayNameID
    {
        public long ID { get; set; }
        [Localize]
        public string Name_lang { get; set; }

        #region Data Transformations
        public long HolidayNameID
        {
            get
            {
                return ID;
            }
        }
        #endregion
    }
}
