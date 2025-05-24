using System.Collections.Generic;
using System.Linq;

namespace ATT.DB.Types
{
    public class TypeCollection<T> : IDBType
        where T : IDBType
    {
        [ExportableData("id")]
        public long ID { get; set; }

        public List<T> Collection { get; set; } = new List<T>();

        [ExportableData("g")]
        public IEnumerable<Dictionary<string, object>> G
        {
            get
            {
                return Collection.Select(i => i.GetExportableData());
            }
        }
    }
}
