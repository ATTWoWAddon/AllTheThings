using Csv;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Reflection;

namespace ATT.DB
{
    /// <summary>
    /// The Wago data class manages the data structures contained within Wago database modules.
    /// </summary>
    public class WagoData
    {
        #region Data Caching + Loading
        /// <summary>
        /// All of the data stored in the database modules by Type.
        /// </summary>
        private static readonly Dictionary<string, Type> AllDataTypes = new Dictionary<string, Type>();

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
        /// Get all of the cached data stored for the given class that match the requirements.
        /// </summary>
        /// <typeparam name="T">The class to get.</typeparam>
        /// <returns>The cached data container.</returns>
        public static IEnumerable<T> Enumerate<T>(Func<T, bool> requirements) where T : IDBType
        {
            foreach (var o in Cache<T>.CachedData.Values)
            {
                if (requirements(o)) yield return o;
            }
        }

        /// <summary>
        /// Get all of the cached data stored for the given class.
        /// </summary>
        /// <typeparam name="T">The class to get.</typeparam>
        /// <returns>The cached data container.</returns>
        public static Dictionary<long, T> GetAll<T>() where T: IDBType
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
        private static readonly Dictionary<string, MethodInfo> CachedGenericMethods = new Dictionary<string, MethodInfo>();

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
                if (!CachedGenericMethods.TryGetValue(type, out MethodInfo method))
                {
                    // Build a method with the specific type argument you're interested in
                    CachedGenericMethods[type] = method = typeof(Cache<>).MakeGenericType(module).GetMethod("LoadFromCSV", BindingFlags.Public | BindingFlags.Static);
                }
                method.Invoke(null, new object[] { File.ReadAllText(path), locale });
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
        public static Dictionary<string, Dictionary<string, string>> GetLocalizedData<T>(long id) where T : IDBType
        {
            return Cache<T>.GetLocalizedData(id);
        }

        /// <summary>
        /// Retrieve localized property data from the object.
        /// </summary>
        /// <param name="o">The object to retrieve localized data for.</param>
        /// <returns>The localized property data.</returns>
        public static Dictionary<string, Dictionary<string, string>> GetLocalizedData<T>(T o) where T : IDBType
        {
            return Cache<T>.GetLocalizedData(o);
        }

        /// <summary>
        /// Store the localized property data from the given object in the cache.
        /// </summary>
        /// <param name="o">The object.</param>
        /// <param name="locale">The locale.</param>
        public static void StoreLocalizedData<T>(T o, string locale = "enUS") where T : IDBType
        {
            Cache<T>.StoreLocalizedData(o, locale);
        }

        /// <summary>
        /// Store the localized property data from the given db in the cache.
        /// </summary>
        /// <param name="db">The db.</param>
        /// <param name="locale">The locale.</param>
        public static void StoreLocalizedData<T>(IDictionary<long, T> db, string locale = "enUS") where T : IDBType
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
            public static readonly Type ParseType = typeof(T);
            public static readonly PropertyInfo[] AllProperties = ParseType.GetProperties();
            public static readonly Dictionary<string, PropertyInfo> AllPropertiesByName = new Dictionary<string, PropertyInfo>();
            public static readonly Dictionary<string, PropertyInfo> ExportableDataProperties;
            public static readonly List<PropertyInfo> LocalizedProperties;
            static Cache()
            {
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
            #region Data Caching + Loading
            /// <summary>
            /// All of the cached data for this type.
            /// </summary>
            public static readonly Dictionary<long, T> CachedData = new Dictionary<long, T>();

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
                    data[dataPropertyPair.Key] = dataPropertyPair.Value.GetValue(o);
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
                foreach(var dataPropertyPair in ExportableDataProperties)
                {
                    data[dataPropertyPair.Key] = dataPropertyPair.Value.GetValue(o);
                }
                return data;
            }

            /// <summary>
            /// Load the data from a CSV content string for the given locale.
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
                        /*
                        else
                        {
                            Console.WriteLine($"WAGO {ParseType.Name}: Missing property '{header}' in class.");
                        }
                        */
                    }
                    CachedData[obj.ID] = obj;
                    StoreLocalizedData(obj, locale);
                }
            }
            #endregion
            #region Localized Data Caching + Checking
            /// <summary>
            /// The static container of localized data for this type.
            /// </summary>
            private static readonly Dictionary<long, Dictionary<string, Dictionary<string, string>>> CachedLocalizedPropertyData = new Dictionary<long, Dictionary<string, Dictionary<string, string>>>();

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
            public static Dictionary<string, Dictionary<string, string>> GetLocalizedData(long id)
            {
                return CachedLocalizedPropertyData.TryGetValue(id, out Dictionary<string, Dictionary<string, string>> result) ? result : null;
            }

            /// <summary>
            /// Get the localized property data for the given object.
            /// </summary>
            /// <param name="o">The object.</param>
            /// <returns>The localized property data for the object.</returns>
            public static Dictionary<string, Dictionary<string, string>> GetLocalizedData(T o)
            {
                return CachedLocalizedPropertyData.TryGetValue(o.ID, out Dictionary<string, Dictionary<string, string>> result) ? result : null;
            }

            /// <summary>
            /// Store the localized property data from the given object in the cache.
            /// </summary>
            /// <param name="o">The object.</param>
            /// <param name="locale">The locale.</param>
            public static void StoreLocalizedData(T o, string locale)
            {
                if (LocalizedProperties == null) return;
                if (!CachedLocalizedPropertyData.TryGetValue(o.ID, out Dictionary<string, Dictionary<string, string>> result))
                {
                    CachedLocalizedPropertyData[o.ID] = result = new Dictionary<string, Dictionary<string, string>>();
                }
                foreach (var property in LocalizedProperties)
                {
                    var value = (string)property.GetValue(o);
                    if (!string.IsNullOrWhiteSpace(value))
                    {
                        if (result.TryGetValue(property.Name, out Dictionary<string, string> localizedData))
                        {
                            localizedData[locale] = value.Trim();
                        }
                        else
                        {
                            result[property.Name] = new Dictionary<string, string>
                                {
                                    { locale, value.Trim() }
                                };
                        }
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
                    if (!CachedLocalizedPropertyData.TryGetValue(updatedWagoDataPair.Key, out Dictionary<string, Dictionary<string, string>> result))
                    {
                        CachedLocalizedPropertyData[updatedWagoDataPair.Key] = result = new Dictionary<string, Dictionary<string, string>>();
                    }
                    foreach (var property in LocalizedProperties)
                    {
                        var value = (string)property.GetValue(updatedWagoDataPair.Value);
                        if (!string.IsNullOrWhiteSpace(value))
                        {
                            if (result.TryGetValue(property.Name, out Dictionary<string, string> localizedData))
                            {
                                localizedData[locale] = value.Trim();
                            }
                            else
                            {
                                result[property.Name] = new Dictionary<string, string>
                                    {
                                        { locale, value.Trim() }
                                    };
                            }
                        }
                    }
                }
            }
            #endregion
        }
        #endregion
    }
}
