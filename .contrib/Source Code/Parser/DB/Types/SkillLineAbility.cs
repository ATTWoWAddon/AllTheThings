using System;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/SkillLineAbility
    /// </summary>
    [DataModule]
    public class SkillLineAbility : IDBType, IWagoSpellID
    {
        public long ID { get; set; }
        [ExportableData("requireSkill")]
        public long SkillLine { get; set; }
        public long Spell { get; set; }
        public long MinSkillLineRank { get; set; }
        public long TrivialSkillLineRankLow { get; set; }
        public long TrivialSkillLineRankHigh { get; set; }
        [ExportableData("skillID")]
        public long SkillupSkillLineID { get; set; }

        [ExportableData("recipeID")]
        public long SpellID => Spell;
        [ExportableData("learnedAt")]
        public long LearnedAt => Math.Max(MinSkillLineRank, Math.Min(TrivialSkillLineRankLow, TrivialSkillLineRankHigh));
    }
}
