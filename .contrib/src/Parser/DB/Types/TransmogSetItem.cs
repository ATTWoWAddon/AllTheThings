using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/TransmogSetItem
    /// </summary>
    [DataModule]
    public class TransmogSetItem : IWagoTransmogSetID, IWagoItemModifiedAppearanceID, IDBType
    {
        public long ID { get; set; }
        public long TransmogSetID { get; set; }
        [ExportableData("sourceID")]
        public long ItemModifiedAppearanceID { get; set; }
        public long Flags { get; set; }

        private TypeFlags _flags => (TypeFlags)Flags;

        public bool IsIgnoreFlags() =>
            (_flags & TypeFlags.DoNotDisplay) == TypeFlags.DoNotDisplay;

        public bool IsAllianceOnlyFlags() =>
            (_flags & TypeFlags.Alliance) == TypeFlags.Alliance;

        public bool IsHordeOnlyFlags() =>
            (_flags & TypeFlags.Horde) == TypeFlags.Horde;
    }
}
