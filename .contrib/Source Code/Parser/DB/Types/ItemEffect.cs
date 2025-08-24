using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/ItemEffect
    /// </summary>
    [DataModule]
    public class ItemEffect : IWagoSpellID, IDBType
    {
        public long ID { get; set; }
        public int TriggerType { get; set; }
        public long SpellID { get; set; }

        public bool IsKnownTriggerType() =>
            TriggerWhenUseSpellID() > 0 ||
            TriggerWhenEquipSpellID() > 0 ||
            TriggerWhenLearnedSpellID() > 0 ||
            TriggerWhenLootedSpellID() > 0 ||
            TriggerWhenPickupSpellID() > 0;

        public long TriggerWhenUseSpellID() => TriggerType == 0 ? SpellID : 0;
        public long TriggerWhenEquipSpellID() => TriggerType == 1 ? SpellID : 0;
        public long TriggerWhenPickupSpellID() => TriggerType == 5 ? SpellID : 0;
        public long TriggerWhenLearnedSpellID() => TriggerType == 6 ? SpellID : 0;
        public long TriggerWhenLootedSpellID() => TriggerType == 7 ? SpellID : 0;
    }
}
