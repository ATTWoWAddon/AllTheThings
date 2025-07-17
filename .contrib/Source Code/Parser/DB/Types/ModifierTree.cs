using System;
using System.Collections.Generic;

namespace ATT.DB.Types
{
    [DataModule]
    public class ModifierTree : IDBType, IWagoChild
    {
        public long ID { get; set; }
        public long Parent { get; set; }
        public long Operator { get; set; }
        public long Amount { get; set; }
        public long Type { get; set; }
        public long Asset { get; set; }
        public long SecondaryAsset { get; set; }
        public long TertiaryAsset { get; set; }
    }
}
