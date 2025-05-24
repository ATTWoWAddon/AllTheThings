using ATT.DB.Types;
using System.Collections.Generic;

namespace ATT.DB
{
    public interface IWagoDBItemExtension
    {
        long ItemID { get; }
    }

    public static class IWagoDBItemExtensionHelper
    {
        public static Item GetItem(this IWagoDBItemExtension o)
        {
            return o.ItemID > 0 && WagoData.TryGetValue<Item>(o.ItemID, out var item) ? item : default;
        }
    }
}
