namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/Achievement_Category
    /// </summary>
    [DataModule]
    public class AchievementCategory : IDBType, IWagoChild
    {
        public long ID { get; set; }
        [Localize]
        public string Name_lang { get; set; }
        public long Parent { get; set; }
        public long Ui_order { get; set; }
    }
}
