using ATT.DB.Types;
using Csv;
using System;
using System.Collections;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;

namespace ATT.DB
{
    /// <summary>
    /// The Wago data class manages the data structures contained within Wago database modules.
    /// </summary>
    public static class WagoData
    {
        #region Data Caching + Loading
        /// <summary>
        /// All of the data stored in the database modules by Type.
        /// </summary>
        private static readonly ConcurrentDictionary<string, Type> AllDataTypes = new ConcurrentDictionary<string, Type>();

        /// <summary>
        /// All of the supported locales mapped to proper locale keys.
        /// </summary>
        static readonly Dictionary<string, string> SupportedLocales = new Dictionary<string, string>()
        {
            { "enUS", "en" },
            { "deDE", "de" },
            { "esES", "es" },
            { "esMX", "mx" },
            { "frFR", "fr" },
            { "itIT", "it" },
            { "ptBR", "pt" },
            { "ruRU", "ru" },
            { "koKR", "ko" },
            { "zhCN", "cn" },
            { "zhTW", "tw" },
        };

        /// <summary>
        /// Get whether or not the cached data contains the key.
        /// </summary>
        /// <param name="id">The unique ID of the data element stored.</param>
        /// <typeparam name="T">The class to get.</typeparam>
        /// <returns>Whether or not data was found within the container for the given ID.</returns>
        public static bool ContainsKey<T>(long id) where T : IDBType
        {
            return Cache<T>.CachedData.ContainsKey(id);
        }

        /// <summary>
        /// Get all of the cached data stored for the given class.
        /// </summary>
        /// <typeparam name="T">The class to get.</typeparam>
        /// <returns>The cached data container.</returns>
        public static IDictionary<long, T> GetAll<T>() where T : IDBType
        {
            return Cache<T>.CachedData;
        }

        /// <summary>
        /// Get a copy of all of the data modules loaded in the database.
        /// WARNING: You should not use this function, you should use GetAll with a defined type instead!
        /// </summary>
        /// <returns>A copy of all of the data module containers.</returns>
        public static Dictionary<string, IDictionary<long, IDBType>> GetAllDataModules()
        {
            Dictionary<string, IDictionary<long, IDBType>> allDataModules = new Dictionary<string, IDictionary<long, IDBType>>();
            foreach (var modulePair in AllDataTypes)
            {
                var value = modulePair.Value.GetField("CachedData", BindingFlags.Public | BindingFlags.Static).GetValue(null);
                if (value != null && value is IDictionary dict)
                {
                    Dictionary<long, IDBType> newDict = new Dictionary<long, IDBType>();
                    foreach (var key in dict.Keys)
                    {
                        newDict[(long)key] = (IDBType)dict[key];
                    }
                    allDataModules[modulePair.Key] = newDict;
                }
            }
            return allDataModules;
        }

        /// <summary>
        /// Get a copy of all of a specific data modules loaded in the database.
        /// WARNING: You should not use this function, you should use GetAll with a defined type instead!
        /// </summary>
        /// <param name="type">The type of the data module.</param>
        /// <returns>A copy of he data module container.</returns>
        public static IDictionary<long, IDBType> GetDataModules(string type)
        {
            if (AllDataTypes.TryGetValue(type, out var module))
            {
                var value = module.GetField("CachedData", BindingFlags.Public | BindingFlags.Static).GetValue(module);
                if (value != null && value is IDictionary dict)
                {
                    Dictionary<long, IDBType> newDict = new Dictionary<long, IDBType>();
                    foreach (var key in dict.Keys)
                    {
                        newDict[(long)key] = (IDBType)dict[key];
                    }
                    return newDict;
                }
            }
            return null;
        }

        /// <summary>
        /// Get exportable data from the object id.
        /// </summary>
        /// <param name="id">The id of the object to export data for.</param>
        /// <returns>The exportable data.</returns>
        public static Dictionary<string, object> GetExportableData<T>(long id) where T : IDBType
        {
            return Cache<T>.GetExportableData(id);
        }

        /// <summary>
        /// Get the exportable data for a given object.
        /// </summary>
        /// <param name="o">The object.</param>
        /// <returns>The exportable data.</returns>
        public static Dictionary<string, object> GetExportableData<T>(T o) where T : IDBType
        {
            return Cache<T>.GetExportableData(o);
        }

        /// <summary>
        /// The cached generic methods used by the default LoadFromCSV function.
        /// </summary>
        private static readonly ConcurrentDictionary<string, MethodInfo> CachedGenericMethods = new ConcurrentDictionary<string, MethodInfo>();

        /// <summary>
        /// Attempt to load the data from the CSV.
        /// Use this function when the type of data being loaded is unknown, but from one of the predefined DataModules.
        /// </summary>
        /// <param name="path">The path of the CSV file.</param>
        public static void LoadFromCSV(string path)
        {
            // Parse the filename for the database type and locale, if specified.
            var filename = path.Substring(path.LastIndexOf('\\') + 1);
            var segments = filename.Split('.', '-', '_'); // Example: Item_enUS.1.15.7.60277

            // The Type is always listed first, followed by the locale (Default: enUS)
            string type = segments[0];
            string locale = segments[1];
            if (char.IsDigit(locale[0]) || locale == "csv") locale = "enUS";
            if (DataModuleAttribute.GetAllDataModules().TryGetValue(type, out var module))
            {
                // Attempt to acquire the generic cache for the given type and then load the data module into it.
                MethodInfo method = CachedGenericMethods.GetOrAdd(type, t =>
                {
                    // Build a method with the specific type argument you're interested in
                    return typeof(Cache<>).MakeGenericType(module).GetMethod("LoadFromCSV", BindingFlags.Public | BindingFlags.Static);
                });
                method.Invoke(null, new object[] { File.ReadAllText(path), SupportedLocales[locale] });
            }
        }

        /// <summary>
        /// Get the cached data for a given id stored for the given class.
        /// </summary>
        /// <param name="id">The unique ID of the data element stored.</param>
        /// <param name="value">The returned value.</param>
        /// <typeparam name="T">The class to get.</typeparam>
        /// <returns>Whether or not data was found within the container for the given ID.</returns>
        public static bool TryGetValue<T>(long id, out T value) where T : IDBType
        {
            return Cache<T>.CachedData.TryGetValue(id, out value);
        }
        #endregion
        #region Enumeration
        /// <summary>
        /// Get all of the cached data stored for the given class that match the requirements.
        /// WARNING: This can be slow as it will enumerate over the entire collection for a match.
        /// You should use the EnumerateFor* functions instead if you need to get a specific collection.
        /// </summary>
        /// <typeparam name="T">The class to get.</typeparam>
        /// <returns>The cached data container.</returns>
        public static IEnumerable<T> Enumerate<T>(Func<T, bool> requirements) where T : IDBType
            => Cache<T>.CachedData.Values.Where(requirements);

        #region Children
        /// <summary>
        /// The parent hierarchy cache. This is cached per-data module type.
        /// </summary>
        /// <typeparam name="T">The data module type stored in the cache.</typeparam>
        private static class ParentCache<T> where T : IWagoChild, IDBType
        {
            private static Dictionary<long, List<T>> Parents;

            public static void Clear()
            {
                Parents = null;
            }

            public static Dictionary<long, List<T>> GetAllParents()
            {
                return Parents ?? (Parents = Rebuild());
            }

            private static Dictionary<long, List<T>> Rebuild()
            {
                var parents = new Dictionary<long, List<T>>();
                foreach (var o in GetAll<T>().Values)
                {
                    if (o.Parent > 0)
                    {
                        if (!parents.TryGetValue(o.Parent, out List<T> children))
                        {
                            parents[o.Parent] = children = new List<T>();
                        }
                        children.Add(o);
                    }
                }
                return parents;
            }
        }

        /// <summary>
        /// Clear the values cached in the parent cache.
        /// </summary>
        /// <typeparam name="T">The type.</typeparam>
        public static void ClearParentCache<T>() where T : IWagoChild, IDBType
        {
            ParentCache<T>.Clear();
        }

        /// <summary>
        /// Enumerate over a list of the children directly associated with the given object.
        /// </summary>
        /// <typeparam name="T">The type.</typeparam>
        /// <param name="o">The object whose legacy is being determined.</param>
        /// <returns>An enumerator for the children.</returns>
        public static IEnumerable<T> EnumerateChildren<T>(this T o) where T : IWagoChild, IDBType
        {
            if (o == null) yield break;
            if (ParentCache<T>.GetAllParents().TryGetValue(o.ID, out List<T> children))
            {
                foreach (var crit in children)
                {
                    yield return crit;
                }
            }
        }

        public static IEnumerable<T> EnumerateDescendents<T>(this T o) where T : IWagoChild, IDBType
        {
            if (o == null) yield break;
            if (ParentCache<T>.GetAllParents().TryGetValue(o.ID, out List<T> children))
            {
                foreach (var crit in children)
                {
                    yield return crit;
                    foreach (var child in crit.EnumerateDescendents())
                    {
                        yield return child;
                    }
                }
            }
        }

        /// <summary>
        /// Get the parent of the object.
        /// </summary>
        /// <typeparam name="T">The type of object the parent is.</typeparam>
        /// <param name="o">The object whose heritage is being acquired.</param>
        /// <returns>The parent object node or null.</returns>
        public static T GetParent<T>(this T o) where T : IWagoChild, IDBType
        {
            return o.Parent > 0 && TryGetValue<T>(o.Parent, out var parent) ? parent : default;
        }
        #endregion
        #region Area-Keyed Collections
        private static class AreaKeyedCache<T> where T : IWagoAreaID, IDBType
        {
            /// <summary>
            /// The cached collection of elements matching the primary key "AreaID".
            /// </summary>
            private static Dictionary<long, List<T>> Collection;

            public static void Clear()
            {
                Collection = null;
            }

            public static Dictionary<long, List<T>> GetCollection()
            {
                return Collection ?? (Collection = Rebuild());
            }

            private static Dictionary<long, List<T>> Rebuild()
            {
                var collection = new Dictionary<long, List<T>>();
                foreach (var o in GetAll<T>().Values)
                {
                    if (o.AreaID > 0)
                    {
                        if (!collection.TryGetValue(o.AreaID, out List<T> associations))
                        {
                            collection[o.AreaID] = associations = new List<T>();
                        }
                        associations.Add(o);
                    }
                }
                return collection;
            }

            public static IEnumerable<T> Enumerate(long key)
            {
                if (GetCollection().TryGetValue(key, out var associations))
                {
                    foreach (var association in associations)
                    {
                        yield return association;
                    }
                }
            }

            /// <summary>
            /// Retrieve a collection of elements matching the key.
            /// </summary>
            /// <typeparam name="T">The element type to search for.</typeparam>
            /// <param name="key">The key.</param>
            /// <param name="associations">The list of associated elements or null.</param>
            /// <returns>Whether or not the associations could be found.</returns>
            public static bool TryGetAssociations(long key, out List<T> associations)
            {
                return GetCollection().TryGetValue(key, out associations);
            }
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the AreaID.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="o">The object.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForAreaID<T>(this IWagoAreaID o) where T : IWagoAreaID, IDBType
        {
            return EnumerateForAreaID<T>(o.AreaID);
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the AreaID.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="areaID">The area ID.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForAreaID<T>(long areaID) where T : IWagoAreaID, IDBType
        {
            return AreaKeyedCache<T>.Enumerate(areaID);
        }

        /// <summary>
        /// Retrieve a collection of elements matching the key.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="areaID">The area ID.</param>
        /// <param name="associations">The list of associated elements or null.</param>
        /// <returns>Whether or not the associations could be found.</returns>
        public static bool TryGetAreaAssociations<T>(long areaID, out List<T> associations) where T : IWagoAreaID, IDBType
        {
            return AreaKeyedCache<T>.TryGetAssociations(areaID, out associations);
        }
        #endregion
        #region HolidayNameID-Keyed Collections
        private static class HolidayNameIDKeyedCache<T> where T : IWagoHolidayNameID, IDBType
        {
            /// <summary>
            /// The cached collection of elements matching the primary key "HolidayNameID".
            /// </summary>
            private static Dictionary<long, List<T>> Collection;

            public static void Clear()
            {
                Collection = null;
            }

            public static Dictionary<long, List<T>> GetCollection()
            {
                return Collection ?? (Collection = Rebuild());
            }

            private static Dictionary<long, List<T>> Rebuild()
            {
                var collection = new Dictionary<long, List<T>>();
                foreach (var o in GetAll<T>().Values)
                {
                    if (o.HolidayNameID > 0)
                    {
                        if (!collection.TryGetValue(o.HolidayNameID, out List<T> associations))
                        {
                            collection[o.HolidayNameID] = associations = new List<T>();
                        }
                        associations.Add(o);
                    }
                }
                return collection;
            }

            public static IEnumerable<T> Enumerate(long key)
            {
                if (GetCollection().TryGetValue(key, out var associations))
                {
                    foreach (var association in associations)
                    {
                        yield return association;
                    }
                }
            }

            /// <summary>
            /// Retrieve a collection of elements matching the key.
            /// </summary>
            /// <typeparam name="T">The element type to search for.</typeparam>
            /// <param name="key">The key.</param>
            /// <param name="associations">The list of associated elements or null.</param>
            /// <returns>Whether or not the associations could be found.</returns>
            public static bool TryGetAssociations(long key, out List<T> associations)
            {
                return GetCollection().TryGetValue(key, out associations);
            }
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the HolidayNameID.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="o">The object.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForHolidayNameID<T>(this IWagoHolidayNameID o) where T : IWagoHolidayNameID, IDBType
        {
            return EnumerateForHolidayNameID<T>(o.HolidayNameID);
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the HolidayNameID.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="HolidayNameID">The Holiday Name ID.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForHolidayNameID<T>(long HolidayNameID) where T : IWagoHolidayNameID, IDBType
        {
            return HolidayNameIDKeyedCache<T>.Enumerate(HolidayNameID);
        }

        /// <summary>
        /// Retrieve a collection of elements matching the key.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="HolidayNameID">The Holiday Name ID.</param>
        /// <param name="associations">The list of associated elements or null.</param>
        /// <returns>Whether or not the associations could be found.</returns>
        public static bool TryGetHolidayNameIDAssociations<T>(long HolidayNameID, out List<T> associations) where T : IWagoHolidayNameID, IDBType
        {
            return HolidayNameIDKeyedCache<T>.TryGetAssociations(HolidayNameID, out associations);
        }
        #endregion
        #region Item-Keyed Collections
        private static class ItemKeyedCache<T> where T : IWagoItemID, IDBType
        {
            /// <summary>
            /// The cached collection of elements matching the primary key "ItemID".
            /// </summary>
            private static Dictionary<long, List<T>> Collection;

            public static void Clear()
            {
                Collection = null;
            }

            public static Dictionary<long, List<T>> GetCollection()
            {
                return Collection ?? (Collection = Rebuild());
            }

            private static Dictionary<long, List<T>> Rebuild()
            {
                var collection = new Dictionary<long, List<T>>();
                foreach (var o in GetAll<T>().Values)
                {
                    if (o.ItemID > 0)
                    {
                        if (!collection.TryGetValue(o.ItemID, out List<T> associations))
                        {
                            collection[o.ItemID] = associations = new List<T>();
                        }
                        associations.Add(o);
                    }
                }
                return collection;
            }

            public static IEnumerable<T> Enumerate(long key)
            {
                if (GetCollection().TryGetValue(key, out var associations))
                {
                    foreach (var association in associations)
                    {
                        yield return association;
                    }
                }
            }

            /// <summary>
            /// Retrieve a collection of elements matching the key.
            /// </summary>
            /// <typeparam name="T">The element type to search for.</typeparam>
            /// <param name="key">The key.</param>
            /// <param name="associations">The list of associated elements or null.</param>
            /// <returns>Whether or not the associations could be found.</returns>
            public static bool TryGetAssociations(long key, out List<T> associations)
            {
                return GetCollection().TryGetValue(key, out associations);
            }
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the itemID.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="itemID">The item ID.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForItemID<T>(this IWagoItemID o) where T : IWagoItemID, IDBType
        {
            return EnumerateForItemID<T>(o.ItemID);
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the itemID.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="itemID">The item ID.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForItemID<T>(long itemID) where T : IWagoItemID, IDBType
        {
            return ItemKeyedCache<T>.Enumerate(itemID);
        }

        /// <summary>
        /// Retrieve a collection of elements matching the key.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="itemID">The item ID.</param>
        /// <param name="associations">The list of associated elements or null.</param>
        /// <returns>Whether or not the associations could be found.</returns>
        public static bool TryGetItemAssociations<T>(long itemID, out List<T> associations) where T : IWagoItemID, IDBType
        {
            return ItemKeyedCache<T>.TryGetAssociations(itemID, out associations);
        }

        public static Item GetItem(this IWagoItemID o)
        {
            return o.ItemID > 0 && TryGetValue<Item>(o.ItemID, out var item) ? item : default;
        }
        #endregion
        #region ItemModifiedAppearanceID-Keyed Collections
        private static class ItemModifiedAppearanceKeyedCache<T> where T : IWagoItemModifiedAppearanceID, IDBType
        {
            /// <summary>
            /// The cached collection of elements matching the primary key "ItemModifiedAppearanceID".
            /// </summary>
            private static Dictionary<long, List<T>> Collection;

            public static void Clear()
            {
                Collection = null;
            }

            public static Dictionary<long, List<T>> GetCollection()
            {
                return Collection ?? (Collection = Rebuild());
            }

            private static Dictionary<long, List<T>> Rebuild()
            {
                var collection = new Dictionary<long, List<T>>();
                foreach (var o in GetAll<T>().Values)
                {
                    if (o.ItemModifiedAppearanceID > 0)
                    {
                        if (!collection.TryGetValue(o.ItemModifiedAppearanceID, out List<T> associations))
                        {
                            collection[o.ItemModifiedAppearanceID] = associations = new List<T>();
                        }
                        associations.Add(o);
                    }
                }
                return collection;
            }

            public static IEnumerable<T> Enumerate(long key)
            {
                if (GetCollection().TryGetValue(key, out var associations))
                {
                    foreach (var association in associations)
                    {
                        yield return association;
                    }
                }
            }

            /// <summary>
            /// Retrieve a collection of elements matching the key.
            /// </summary>
            /// <typeparam name="T">The element type to search for.</typeparam>
            /// <param name="key">The key.</param>
            /// <param name="associations">The list of associated elements or null.</param>
            /// <returns>Whether or not the associations could be found.</returns>
            public static bool TryGetAssociations(long key, out List<T> associations)
            {
                return GetCollection().TryGetValue(key, out associations);
            }
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the itemModifiedAppearanceID.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="o">The object.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForItemModifiedAppearanceID<T>(this IWagoItemModifiedAppearanceID o) where T : IWagoItemModifiedAppearanceID, IDBType
        {
            return EnumerateForItemModifiedAppearanceID<T>(o.ItemModifiedAppearanceID);
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the key.
        /// </summary>
        /// <param name="itemModifiedAppearanceID">The item modified appearance ID.</param>
        /// <param name="itemModifiedAppearanceID">The transmog set ID.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForItemModifiedAppearanceID<T>(long itemModifiedAppearanceID) where T : IWagoItemModifiedAppearanceID, IDBType
        {
            return ItemModifiedAppearanceKeyedCache<T>.Enumerate(itemModifiedAppearanceID);
        }

        /// <summary>
        /// Retrieve a collection of elements matching the key.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="itemModifiedAppearanceID">The item modified appearance ID.</param>
        /// <param name="associations">The list of associated elements or null.</param>
        /// <returns>Whether or not the associations could be found.</returns>
        public static bool TryGetItemModifiedAppearanceAssociations<T>(long itemModifiedAppearanceID, out List<T> associations) where T : IWagoItemModifiedAppearanceID, IDBType
        {
            return ItemModifiedAppearanceKeyedCache<T>.TryGetAssociations(itemModifiedAppearanceID, out associations);
        }
        #endregion
        #region Quest-Keyed Collections
        private static class QuestKeyedCache<T> where T : IWagoQuestID, IDBType
        {
            /// <summary>
            /// The cached collection of elements matching the primary key "QuestID".
            /// </summary>
            private static Dictionary<long, List<T>> Collection;

            public static void Clear()
            {
                Collection = null;
            }

            public static Dictionary<long, List<T>> GetCollection()
            {
                return Collection ?? (Collection = Rebuild());
            }

            private static Dictionary<long, List<T>> Rebuild()
            {
                var collection = new Dictionary<long, List<T>>();
                foreach (var o in GetAll<T>().Values)
                {
                    if (o.QuestID > 0)
                    {
                        if (!collection.TryGetValue(o.QuestID, out List<T> associations))
                        {
                            collection[o.QuestID] = associations = new List<T>();
                        }
                        associations.Add(o);
                    }
                }
                return collection;
            }

            public static IEnumerable<T> Enumerate(long key)
            {
                if (GetCollection().TryGetValue(key, out var associations))
                {
                    foreach (var association in associations)
                    {
                        yield return association;
                    }
                }
            }

            /// <summary>
            /// Retrieve a collection of elements matching the key.
            /// </summary>
            /// <typeparam name="T">The element type to search for.</typeparam>
            /// <param name="key">The key.</param>
            /// <param name="associations">The list of associated elements or null.</param>
            /// <returns>Whether or not the associations could be found.</returns>
            public static bool TryGetAssociations(long key, out List<T> associations)
            {
                return GetCollection().TryGetValue(key, out associations);
            }
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the QuestID
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="o">The object.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForQuestID<T>(this IWagoQuestID o) where T : IWagoQuestID, IDBType
        {
            return EnumerateForQuestID<T>(o.QuestID);
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the QuestID
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="spellID">The spell ID.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForQuestID<T>(long questID) where T : IWagoQuestID, IDBType
        {
            return QuestKeyedCache<T>.Enumerate(questID);
        }
        #endregion
        #region Spell-Keyed Collections
        private static class SpellKeyedCache<T> where T : IWagoSpellID, IDBType
        {
            /// <summary>
            /// The cached collection of elements matching the primary key "SpellID".
            /// </summary>
            private static Dictionary<long, List<T>> Collection;

            public static void Clear()
            {
                Collection = null;
            }

            public static Dictionary<long, List<T>> GetCollection()
            {
                return Collection ?? (Collection = Rebuild());
            }

            private static Dictionary<long, List<T>> Rebuild()
            {
                var collection = new Dictionary<long, List<T>>();
                foreach (var o in GetAll<T>().Values)
                {
                    if (o.SpellID > 0)
                    {
                        if (!collection.TryGetValue(o.SpellID, out List<T> associations))
                        {
                            collection[o.SpellID] = associations = new List<T>();
                        }
                        associations.Add(o);
                    }
                }
                return collection;
            }

            public static IEnumerable<T> Enumerate(long key)
            {
                if (GetCollection().TryGetValue(key, out var associations))
                {
                    foreach (var association in associations)
                    {
                        yield return association;
                    }
                }
            }

            /// <summary>
            /// Retrieve a collection of elements matching the key.
            /// </summary>
            /// <typeparam name="T">The element type to search for.</typeparam>
            /// <param name="key">The key.</param>
            /// <param name="associations">The list of associated elements or null.</param>
            /// <returns>Whether or not the associations could be found.</returns>
            public static bool TryGetAssociations(long key, out List<T> associations)
            {
                return GetCollection().TryGetValue(key, out associations);
            }
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the spellID.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="o">The object.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForSpellID<T>(this IWagoSpellID o) where T : IWagoSpellID, IDBType
        {
            return EnumerateForSpellID<T>(o.SpellID);
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the spellID.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="spellID">The spell ID.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForSpellID<T>(long spellID) where T : IWagoSpellID, IDBType
        {
            return SpellKeyedCache<T>.Enumerate(spellID);
        }

        /// <summary>
        /// Retrieve a collection of elements matching the key.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="spellID">The spell ID.</param>
        /// <param name="associations">The list of associated elements or null.</param>
        /// <returns>Whether or not the associations could be found.</returns>
        public static bool TryGetSpellAssociations<T>(long spellID, out List<T> associations) where T : IWagoSpellID, IDBType
        {
            return SpellKeyedCache<T>.TryGetAssociations(spellID, out associations);
        }
        #endregion
        #region TransmogSetID-Keyed Collections
        private static class TransmogSetKeyedCache<T> where T : IWagoTransmogSetID, IDBType
        {
            /// <summary>
            /// The cached collection of elements matching the primary key "TransmogSetID".
            /// </summary>
            private static Dictionary<long, List<T>> Collection;

            public static void Clear()
            {
                Collection = null;
            }

            public static Dictionary<long, List<T>> GetCollection()
            {
                return Collection ?? (Collection = Rebuild());
            }

            private static Dictionary<long, List<T>> Rebuild()
            {
                var collection = new Dictionary<long, List<T>>();
                foreach (var o in GetAll<T>().Values)
                {
                    if (o.TransmogSetID > 0)
                    {
                        if (!collection.TryGetValue(o.TransmogSetID, out List<T> associations))
                        {
                            collection[o.TransmogSetID] = associations = new List<T>();
                        }
                        associations.Add(o);
                    }
                }
                return collection;
            }

            public static IEnumerable<T> Enumerate(long key)
            {
                if (GetCollection().TryGetValue(key, out var associations))
                {
                    foreach (var association in associations)
                    {
                        yield return association;
                    }
                }
            }

            /// <summary>
            /// Retrieve a collection of elements matching the key.
            /// </summary>
            /// <typeparam name="T">The element type to search for.</typeparam>
            /// <param name="key">The key.</param>
            /// <param name="associations">The list of associated elements or null.</param>
            /// <returns>Whether or not the associations could be found.</returns>
            public static bool TryGetAssociations(long key, out List<T> associations)
            {
                return GetCollection().TryGetValue(key, out associations);
            }
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the transmogSetID.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="o">The object.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForTransmogSetID<T>(this IWagoTransmogSetID o) where T : IWagoTransmogSetID, IDBType
        {
            return EnumerateForTransmogSetID<T>(o.TransmogSetID);
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the transmogSetID.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="transmogSetID">The transmog set ID.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForTransmogSetID<T>(long transmogSetID) where T : IWagoTransmogSetID, IDBType
        {
            return TransmogSetKeyedCache<T>.Enumerate(transmogSetID);
        }

        /// <summary>
        /// Retrieve a collection of elements matching the key.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="transmogSetID">The transmog set ID.</param>
        /// <param name="associations">The list of associated elements or null.</param>
        /// <returns>Whether or not the associations could be found.</returns>
        public static bool TryGetTransmogSetAssociations<T>(long transmogSetID, out List<T> associations) where T : IWagoTransmogSetID, IDBType
        {
            return TransmogSetKeyedCache<T>.TryGetAssociations(transmogSetID, out associations);
        }
        #endregion
        #region UiMapID-Keyed Collections
        private static class UiMapIDKeyedCache<T> where T : IWagoUiMapID, IDBType
        {
            /// <summary>
            /// The cached collection of elements matching the primary key "UiMapID".
            /// </summary>
            private static Dictionary<long, List<T>> Collection;

            public static void Clear()
            {
                Collection = null;
            }

            public static Dictionary<long, List<T>> GetCollection()
            {
                return Collection ?? (Collection = Rebuild());
            }

            private static Dictionary<long, List<T>> Rebuild()
            {
                var collection = new Dictionary<long, List<T>>();
                foreach (var o in GetAll<T>().Values)
                {
                    if (o.UiMapID > 0)
                    {
                        if (!collection.TryGetValue(o.UiMapID, out List<T> associations))
                        {
                            collection[o.UiMapID] = associations = new List<T>();
                        }
                        associations.Add(o);
                    }
                }
                return collection;
            }

            public static IEnumerable<T> Enumerate(long key)
            {
                if (GetCollection().TryGetValue(key, out var associations))
                {
                    foreach (var association in associations)
                    {
                        yield return association;
                    }
                }
            }

            /// <summary>
            /// Retrieve a collection of elements matching the key.
            /// </summary>
            /// <typeparam name="T">The element type to search for.</typeparam>
            /// <param name="key">The key.</param>
            /// <param name="associations">The list of associated elements or null.</param>
            /// <returns>Whether or not the associations could be found.</returns>
            public static bool TryGetAssociations(long key, out List<T> associations)
            {
                return GetCollection().TryGetValue(key, out associations);
            }
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the UiMapID.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="o">The object.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForUiMapID<T>(this IWagoUiMapID o) where T : IWagoUiMapID, IDBType
        {
            return EnumerateForUiMapID<T>(o.UiMapID);
        }

        /// <summary>
        /// Enumerate over a collection of elements matching the UiMapID.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="uiMapID">The UI Map ID.</param>
        /// <returns>An enumerable list.</returns>
        public static IEnumerable<T> EnumerateForUiMapID<T>(long uiMapID) where T : IWagoUiMapID, IDBType
        {
            return UiMapIDKeyedCache<T>.Enumerate(uiMapID);
        }

        /// <summary>
        /// Retrieve a collection of elements matching the key.
        /// </summary>
        /// <typeparam name="T">The element type to search for.</typeparam>
        /// <param name="uiMapID">The UI Map ID.</param>
        /// <param name="associations">The list of associated elements or null.</param>
        /// <returns>Whether or not the associations could be found.</returns>
        public static bool TryGetUiMapIDAssociations<T>(long uiMapID, out List<T> associations) where T : IWagoUiMapID, IDBType
        {
            return UiMapIDKeyedCache<T>.TryGetAssociations(uiMapID, out associations);
        }
        #endregion
        #endregion
        #region Localized Data Caching + Checking
        /// <summary>
        /// Check localized property data from the object.
        /// </summary>
        /// <param name="o">The object to retrieve localized data for.</param>
        /// <returns>The localized property data.</returns>
        public static Dictionary<string, string> CheckLocalizedData<T>(T o) where T : IDBType
        {
            return Cache<T>.CheckLocalizedData(o);
        }

        /// <summary>
        /// Retrieve localized property data from the object id.
        /// </summary>
        /// <param name="id">The id of the object to retrieve localized data for.</param>
        /// <returns>The localized property data.</returns>
        public static ConcurrentDictionary<string, ConcurrentDictionary<string, object>> GetLocalizedData<T>(long id) where T : IDBType
        {
            return Cache<T>.GetLocalizedData(id);
        }

        /// <summary>
        /// Retrieve localized property data from the object.
        /// </summary>
        /// <param name="o">The object to retrieve localized data for.</param>
        /// <returns>The localized property data.</returns>
        public static ConcurrentDictionary<string, ConcurrentDictionary<string, object>> GetLocalizedData<T>(this T o) where T : IDBType
        {
            return Cache<T>.GetLocalizedData(o);
        }

        /// <summary>
        /// Store the localized property data from the given object in the cache.
        /// </summary>
        /// <param name="o">The object.</param>
        /// <param name="locale">The locale.</param>
        public static void StoreLocalizedData<T>(T o, string locale = "en") where T : IDBType
        {
            Cache<T>.StoreLocalizedData(o, locale);
        }

        /// <summary>
        /// Store the localized property data from the given db in the cache.
        /// </summary>
        /// <param name="db">The db.</param>
        /// <param name="locale">The locale.</param>
        public static void StoreLocalizedData<T>(IDictionary<long, T> db, string locale = "en") where T : IDBType
        {
            Cache<T>.StoreLocalizedData(db, locale);
        }
        #endregion
        #region Cache Helper
        /// <summary>
        /// The default CSV Options to use for Wago Data Modules.
        /// </summary>
        private static readonly CsvOptions DEFAULT_CSV_OPTIONS = new CsvOptions
        {
            AllowNewLineInEnclosedFieldValues = true
        };

        /// <summary>
        /// The Cache class retains useful Type-specific data to ensure that the fastest parsing and data storage methods are utilized.
        /// </summary>
        /// <typeparam name="T">The subtype.</typeparam>
        private static class Cache<T> where T : IDBType
        {
            private static readonly object _lock = new object();
            public static readonly Type ParseType = typeof(T);
            public static readonly PropertyInfo[] AllProperties = ParseType.GetProperties();
            public static readonly Dictionary<string, PropertyInfo> AllPropertiesByName = new Dictionary<string, PropertyInfo>();
            public static readonly Dictionary<string, PropertyInfo> ExportableDataProperties;
            public static readonly List<PropertyInfo> LocalizedProperties;
            static Cache()
            {
                lock (_lock)
                {
                    if (AllDataTypes.ContainsKey(ParseType.Name))
                        return;

                    var exportableDataProperties = new Dictionary<string, PropertyInfo>();
                    var localizedProperties = new List<PropertyInfo>();
                    foreach (var property in AllProperties)
                    {
                        AllPropertiesByName[property.Name] = property;
                        var dataAttribute = property.GetCustomAttribute<ExportableDataAttribute>();
                        if (dataAttribute != null)
                        {
                            exportableDataProperties[dataAttribute.Name ?? property.Name] = property;
                        }
                        if (property.GetCustomAttribute<LocalizeAttribute>() != null)
                        {
                            localizedProperties.Add(property);
                        }
                    }
                    if (exportableDataProperties.Count > 0)
                    {
                        ExportableDataProperties = exportableDataProperties;
                    }
                    if (localizedProperties.Count > 0)
                    {
                        LocalizedProperties = localizedProperties;
                    }

                    // Expose the data module to the WagoData class.
                    AllDataTypes[ParseType.Name] = typeof(Cache<T>);
                }
            }
            #region Data Caching + Loading
            /// <summary>
            /// All of the cached data for this type.
            /// </summary>
            public static readonly ConcurrentDictionary<long, T> CachedData = new ConcurrentDictionary<long, T>();

            /// <summary>
            /// Get exportable data from the object id.
            /// </summary>
            /// <param name="id">The id of the object to export data for.</param>
            /// <returns>The exportable data.</returns>
            public static Dictionary<string, object> GetExportableData(long id)
            {
                if (ExportableDataProperties == null || !TryGetValue(id, out T o)) return null;
                var data = new Dictionary<string, object>();
                foreach (var dataPropertyPair in ExportableDataProperties)
                {
                    var value = dataPropertyPair.Value.GetValue(o);
                    if (value == null) continue;
                    data[dataPropertyPair.Key] = value;
                }
                return data;
            }

            /// <summary>
            /// Get the data fields that get injected directly into the database.
            /// </summary>
            /// <param name="o">The object.</param>
            /// <returns>The data related to the object.</returns>
            public static Dictionary<string, object> GetExportableData(T o)
            {
                if (ExportableDataProperties == null) return null;
                var data = new Dictionary<string, object>();
                foreach (var dataPropertyPair in ExportableDataProperties)
                {
                    var value = dataPropertyPair.Value.GetValue(o);
                    if (value == null) continue;
                    data[dataPropertyPair.Key] = value;
                }
                return data;
            }

            /// <summary>
            /// Load the data from a CSV content string for the given locale.
            /// CRIEVE NOTE: This function gets called by Reflection, DO NOT DELETE!
            /// </summary>
            /// <param name="content">The content of the CSV.</param>
            /// <param name="locale">The locale of the content within the CSV.</param>
            /// <returns>The data contained witin the CSV.</returns>
            /// <exception cref="InvalidProgramException"></exception>
            public static void LoadFromCSV(string content, string locale)
            {
                foreach (var line in CsvReader.ReadFromText(content, DEFAULT_CSV_OPTIONS))
                {
                    T obj = (T)Activator.CreateInstance(ParseType);
                    foreach (var header in line.Headers)
                    {
                        if (AllPropertiesByName.TryGetValue(header, out var property))
                        {
                            if (line.HasColumn(header))
                            {
                                var value = line[header];
                                try
                                {
                                    property.SetValue(obj, Convert.ChangeType(value, property.PropertyType, System.Globalization.CultureInfo.InvariantCulture));
                                }
                                catch (Exception ex)
                                {
                                    throw new InvalidProgramException($"Failed converting property {ParseType.Name}.{property.Name} [{property.PropertyType.Name}] from: '{value}' [{value.GetType().Name}]", ex);
                                }
                            }
                        }
                        /*
                        else
                        {
                            Console.WriteLine($"WAGO {ParseType.Name}: Missing property '{header}' in class.");
                        }
                        */
                    }
                    CachedData.TryAdd(obj.ID, obj);
                    StoreLocalizedData(obj, locale);
                }
            }
            #endregion
            #region Localized Data Caching + Checking
            /// <summary>
            /// The static container of localized data for this type.
            /// </summary>
            private static readonly ConcurrentDictionary<long, ConcurrentDictionary<string, ConcurrentDictionary<string, object>>> CachedLocalizedPropertyData
                = new ConcurrentDictionary<long, ConcurrentDictionary<string, ConcurrentDictionary<string, object>>>();

            /// <summary>
            /// Check localized property data from the object.
            /// </summary>
            /// <param name="o">The object to retrieve localized data for.</param>
            /// <returns>The localized property data.</returns>
            public static Dictionary<string, string> CheckLocalizedData(T o)
            {
                if (LocalizedProperties == null) return null;
                Dictionary<string, string> localizedData = new Dictionary<string, string>();
                foreach (var property in LocalizedProperties)
                {
                    localizedData[property.Name] = (string)property.GetValue(o);
                }
                return localizedData;
            }

            /// <summary>
            /// Get the localized property data for the given object id.
            /// </summary>
            /// <param name="id">The id.</param>
            /// <returns>The localized property data for the object id.</returns>
            public static ConcurrentDictionary<string, ConcurrentDictionary<string, object>> GetLocalizedData(long id)
            {
                return CachedLocalizedPropertyData.TryGetValue(id, out ConcurrentDictionary<string, ConcurrentDictionary<string, object>> result) ? result : null;
            }

            /// <summary>
            /// Get the localized property data for the given object.
            /// </summary>
            /// <param name="o">The object.</param>
            /// <returns>The localized property data for the object.</returns>
            public static ConcurrentDictionary<string, ConcurrentDictionary<string, object>> GetLocalizedData(T o)
            {
                return CachedLocalizedPropertyData.TryGetValue(o.ID, out ConcurrentDictionary<string, ConcurrentDictionary<string, object>> result) ? result : null;
            }

            /// <summary>
            /// Store the localized property data from the given object in the cache.
            /// </summary>
            /// <param name="o">The object.</param>
            /// <param name="locale">The locale.</param>
            public static void StoreLocalizedData(T o, string locale)
            {
                if (LocalizedProperties == null) return;
                var result = CachedLocalizedPropertyData.GetOrAdd(o.ID, _ => new ConcurrentDictionary<string, ConcurrentDictionary<string, object>>());
                foreach (var property in LocalizedProperties)
                {
                    var value = (string)property.GetValue(o);
                    if (!string.IsNullOrWhiteSpace(value))
                    {
                        var localizedData = result.GetOrAdd(property.Name, _ => new ConcurrentDictionary<string, object>());
                        localizedData.TryAdd(locale, value.Trim());
                    }
                }
            }

            /// <summary>
            /// Store the localized property data from the given db in the cache.
            /// </summary>
            /// <param name="db">The db.</param>
            /// <param name="locale">The locale.</param>
            public static void StoreLocalizedData(IDictionary<long, T> db, string locale)
            {
                if (LocalizedProperties == null) return;
                foreach (var updatedWagoDataPair in db)
                {
                    var result = CachedLocalizedPropertyData.GetOrAdd(updatedWagoDataPair.Key, _ => new ConcurrentDictionary<string, ConcurrentDictionary<string, object>>());
                    foreach (var property in LocalizedProperties)
                    {
                        var value = (string)property.GetValue(updatedWagoDataPair.Value);
                        if (!string.IsNullOrWhiteSpace(value))
                        {
                            var localizedData = result.GetOrAdd(property.Name, _ => new ConcurrentDictionary<string, object>());
                            localizedData.TryAdd(locale, value.Trim());
                        }
                    }
                }
            }
            #endregion
        }
        #endregion
    }
}
