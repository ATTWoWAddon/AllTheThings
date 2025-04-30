using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/ItemEffect
    /// </summary>
    internal class ItemEffect : IDBType
    {
        public long ID { get; set; }
        public int TriggerType { get; set; }
        public int SpellID { get; set; }

        public IDictionary<string, object> AsData()
        {
            return new Dictionary<string, object>();
        }

        public bool IsKnownTriggerType() =>
            TriggerWhenUseSpellID() > 0 ||
            TriggerWhenEquipSpellID() > 0 ||
            TriggerWhenLearnedSpellID() > 0 ||
            TriggerWhenLootedSpellID() > 0 ||
            TriggerWhenPickupSpellID() > 0;

        public int TriggerWhenUseSpellID() => TriggerType == 0 ? SpellID : 0;
        public int TriggerWhenEquipSpellID() => TriggerType == 1 ? SpellID : 0;
        public int TriggerWhenPickupSpellID() => TriggerType == 5 ? SpellID : 0;
        public int TriggerWhenLearnedSpellID() => TriggerType == 6 ? SpellID : 0;
        public int TriggerWhenLootedSpellID() => TriggerType == 7 ? SpellID : 0;
    }
}
