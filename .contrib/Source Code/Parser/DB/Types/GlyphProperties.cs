using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/GlyphProperties
    /// </summary>
    internal class GlyphProperties : IDBType
    {
        public long ID { get; set; }
        public long SpellID { get; set; }
        public long GlyphType { get; set; }
        public long GlyphExclusiveCategoryID { get; set; }
        public long SpellIconFileDataID { get; set; }

        public IDictionary<string, object> AsData()
        {
            return new Dictionary<string, object>();
        }
    }
}
