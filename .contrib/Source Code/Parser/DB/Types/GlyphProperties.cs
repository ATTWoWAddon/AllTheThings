using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/GlyphProperties
    /// </summary>
    [DataModule]
    public class GlyphProperties : IWagoSpellID, IDBType
    {
        public long ID { get; set; }
        public long SpellID { get; set; }
        public long GlyphType { get; set; }
        public long GlyphExclusiveCategoryID { get; set; }
        public long SpellIconFileDataID { get; set; }
    }
}
