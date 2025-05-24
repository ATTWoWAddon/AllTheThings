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

        /// <summary>
        /// Enumerate over a collection of elements matching the itemID.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="itemID">The item ID.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForItemID<T>(this IWagoDBItemExtension o) where T : IWagoDBItemExtension, IDBType
        {
            return WagoData.EnumerateForItemID<T>(o.ItemID);
        }
    }
}
