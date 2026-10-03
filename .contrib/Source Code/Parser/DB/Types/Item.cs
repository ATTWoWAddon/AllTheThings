using System.Collections.Generic;
using System.Linq;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/Item
    /// </summary>
    [DataModule]
    public class Item : IDBType
    {
        [ExportableData("itemID")]
        public long ID { get; set; }
        [ExportableData("_class")]
        public long ClassID { get; set; }
        [ExportableData("_subclass")]
        public long SubclassID { get; set; }
        [ExportableData("_inventoryType")]
        public long InventoryType { get; set; }
        public long RequiredLevel { get; set; }


        [ExportableData("lvl")]
        public object RequiredLevelHeleper
        {
            get
            {
                long lvl = RequiredLevel;
                if (lvl > 1) return lvl;
                return null;
            }
        }

        [ExportableData("spellID")]
        public object SpellIDHeleper
        {
            get
            {
                long? spellID = SpellID;
                if (spellID.HasValue) return spellID.Value;
                return null;
            }
        }

        public long? SpellID => Effects.FirstOrDefault(x => x.SpellID != 0)?.SpellID;

        private List<ItemEffect> _effects;
        public List<ItemEffect> Effects
        {
            get
            {
                if (_effects != null) return _effects;

                _effects = new List<ItemEffect>();
                foreach (var xeffect in WagoData.EnumerateForItemID<ItemXItemEffect>(ID))
                {
                    if (WagoData.TryGetValue(xeffect.ItemEffectID, out ItemEffect effect) && effect.IsKnownTriggerType())
                    {
                        _effects.Add(effect);
                    }
                }

                _effects.Sort((a, b) =>
                {
                    // sort by the item effect priority first if it's different
                    int priorityCompare = a.SpellIDPriority - b.SpellIDPriority;
                    if (priorityCompare != 0) return priorityCompare;

                    // when priority is the same, sort by how many Items share that spellID to try to get the least-used spellID to associate
                    WagoData.TryGetSpellAssociations<ItemEffect>(a.SpellID, out var aItemSpellEffects);
                    WagoData.TryGetSpellAssociations<ItemEffect>(b.SpellID, out var bItemSpellEffects);
                    priorityCompare = aItemSpellEffects.Count - bItemSpellEffects.Count;
                    if (priorityCompare != 0) return priorityCompare;

                    // finally resolve by raw SpellID
                    return (int)a.SpellID - (int)b.SpellID;
                });
                return _effects;
            }
        }
    }
}
