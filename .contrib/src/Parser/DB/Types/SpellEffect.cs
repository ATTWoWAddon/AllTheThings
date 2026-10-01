using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/SpellEffect
    /// </summary>
    /// <remarks>Any new comparisons by Effect need to update the associated .contrib\.wago\SpellEffect.regex to include the expected Effect value</remarks>
    [DataModule]
    public class SpellEffect : IWagoSpellID, IDBType, IWagoQuestID
    {
        public long ID { get; set; }
        public long Effect { get; set; }
        public long EffectTriggerSpell { get; set; }
        public long EffectMiscValue_0 { get; set; }
        public long SpellID { get; set; }
        public long QuestID => IsQuestComplete() || IsClearQuest() ? EffectMiscValue_0 : 0;

        public bool IsApplyAura() => Effect == 6;
        public bool IsTriggerSpell() => Effect == 64;
        public bool IsQuestComplete() => Effect == 16;
        public bool IsLearnedTransmogSet() => Effect == 255;
        public bool IsClearQuest() => Effect == 139;
    }
}
