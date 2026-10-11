using System.Collections.Generic;
using System.Runtime.InteropServices;
using System.Runtime.Serialization;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/HouseDecor
    /// </summary>
    [DataModule]
    public class HouseDecor : IDBType, IWagoItemID
    {
        public string Name_lang { get; set; }
        [ExportableData("decorID")]
        public long ID { get; set; }
        [ExportableData("itemID")]
        public long ItemID { get; set; }
    }
}
