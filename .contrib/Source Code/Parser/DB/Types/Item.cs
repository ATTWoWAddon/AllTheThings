using System.Collections.Generic;
using System.Linq;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/Item
    /// </summary>
    internal class Item : IDBType
    {
        public long ID { get; set; }
        public long ClassID { get; set; }
        public long SubclassID { get; set; }
        public long InventoryType { get; set; }
        public long RequiredLevel { get; set; }
        public long? SpellID => Effects.FirstOrDefault(x => x.SpellID != 0)?.SpellID;

        private List<ItemEffect> _effects;
        public List<ItemEffect> Effects
        {
            get
            {
                if (_effects != null) return _effects;

                _effects = new List<ItemEffect>();
                if (Framework.TryGetTypeDBObjectChildren(this, out List<ItemXItemEffect> xeffects))
                {
                    foreach (var xeffect in xeffects)
                    {
                        if (Framework.TryGetTypeDBObject(xeffect.ItemEffectID, out ItemEffect effect) && effect.IsKnownTriggerType())
                        {
                            _effects.Add(effect);
                        }
                    }
                }

                _effects.Sort((a,b) =>
                {
                    return b.TriggerType - a.TriggerType;
                });
                return _effects;
            }
        }

        public IDictionary<string, object> AsData()
        {
            var data = new Dictionary<string, object>
            {
                { "itemID", ID },
                { "_class", ClassID },
                { "_subclass", SubclassID },
                { "_inventoryType", InventoryType },
            };
            long lvl = RequiredLevel;
            if (lvl > 1) data["lvl"] = lvl;
            long? spellID = SpellID;
            if (spellID.HasValue)
            {
                data["spellID"] = spellID.Value;
            }
            // big spam!
            //Framework.LogDebug("INFO: Using Wago Item Data", data);
            return data;
        }
    }
}
