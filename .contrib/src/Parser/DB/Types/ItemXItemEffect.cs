using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/ItemXItemEffect
    /// </summary>
    [DataModule]
    public class ItemXItemEffect : IDBType, IWagoItemID
    {
        public long ID { get; set; }
        public long ItemEffectID { get; set; }
        public long ItemID { get; set; }
    }
}
