namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/ContentTuning
    /// </summary>
    [DataModule]
    public class ContentTuning : IDBType
    {
        public long ID { get; set; }
        public long Flags { get; set; }
        public long ExpansionID { get; set; }
        public long HPScalingCurveID { get; set; }
        public long DMGScalingCurveID { get; set; }
        public long MinLevelSquish { get; set; }
        public long MaxLevelSquish { get; set; }
        public long MinLevelScalingOffset { get; set; }
        public long MaxLevelScalingOffset { get; set; }
        public long AllowedMinOffset { get; set; }
        public long AllowedMaxOffset { get; set; }
        public long LfgMinLevel { get; set; }
        public long LfgMaxLevel { get; set; }
        public long ILevel { get; set; }
        public double XpMultQuest { get; set; }
    }
}
