using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/ItemXItemEffect
    /// </summary>
    [DataModule]
    public class ItemXItemEffect : IDBType, IWagoDBItemExtension
    {
        public long ID { get; set; }
        public long ItemEffectID { get; set; }
        public long ItemID { get; set; }
    }
}
