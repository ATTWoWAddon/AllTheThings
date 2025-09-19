using System.Collections.Generic;
using System.Runtime.Remoting.Channels;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/ItemModifiedAppearance
    /// </summary>
    [DataModule]
    public class ItemModifiedAppearance : IDBType, IWagoItemID, IWagoItemModifiedAppearanceID
    {
        [ExportableData("sourceID")]
        public long ID { get; set; }
        [ExportableData("itemID")]
        public long ItemID { get; set; }
        public long ItemAppearanceModifierID { get; set; }
        public long ItemAppearanceID { get; set; }
        public long OrderIndex { get; set; }
        public long TransmogSourceTypeEnum { get; set; }
        public long Flags { get; set; }
        public long ItemModifiedAppearanceID => ID;
        [ExportableData("modID")]
        public long ExpectedModID
        {
            get
            {
                switch (ID)
                {
                    // L
                    case 4:
                        return 4;
                    // N
                    case 0:
                        return 0;
                    // H
                    case 1:
                        return 5;
                    // M
                    case 3:
                        return 6;

                    default:
                        Framework.LogDebugWarn($"Failed to determine expected ModID for ItemID {ItemID} from ItemAppearanceModifierID {ItemAppearanceModifierID}");
                        return 0;
                };
            }
        }

        private TransmogSourceTypeFlags _flags => (TransmogSourceTypeFlags)Flags;

        public bool IsNotValidForTransmog() =>
            (_flags & TransmogSourceTypeFlags.NotValidForTransmog) == TransmogSourceTypeFlags.NotValidForTransmog;
        public bool IsHiddenUntilCollected() =>
            (_flags & TransmogSourceTypeFlags.HiddenUntilCollected) == TransmogSourceTypeFlags.HiddenUntilCollected;
        public bool IsCantCollect() =>
            (_flags & TransmogSourceTypeFlags.CantCollect) == TransmogSourceTypeFlags.CantCollect;
    }
}
