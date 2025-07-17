using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/SpellEffect
    /// </summary>
    /// <remarks>Any new comparisons by Effect need to update the associated .contrib\.wago\SpellEffect.regex to include the expected Effect value</remarks>
    [DataModule]
    public class SpellEffect : IWagoSpellID, IDBType
    {
        public long ID { get; set; }
        public long Effect { get; set; }
        public long EffectMiscValue_0 { get; set; }
        public long SpellID { get; set; }

        public bool IsQuest() => Effect == 16;
        public bool IsLearnedTransmogSet() => Effect == 255;
    }
}
