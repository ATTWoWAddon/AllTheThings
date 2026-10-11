using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Reflection;
using System.Runtime.CompilerServices;

namespace ATT.DB
{
    /// <summary>
    /// An attribute to apply to classes whose data resides within a Wago data module.
    /// </summary>
    [AttributeUsage(AttributeTargets.Class, Inherited = true)]
    public class DataModuleAttribute : Attribute
    {
        private static object _lock = new object();
        public string Name;
        public DataModuleAttribute([CallerMemberName] string name = null)
        {
            Name = name;
        }

        #region Data Caching
        private static ConcurrentDictionary<string, Type> CachedDataModules = null;

        /// <summary>
        /// Get all of the data modules that implement this attribute.
        /// </summary>
        /// <returns>An array of the data modules.</returns>
        private static ConcurrentDictionary<string, Type> BuildDataModules()
        {
            var dictionary = new ConcurrentDictionary<string, Type>();
            var parsedType = typeof(DataModuleAttribute);
            foreach (Type type in Assembly.GetAssembly(parsedType).GetTypes())
            {
                if (type.GetCustomAttributes(parsedType, true).Length > 0)
                {
                    dictionary[type.Name] = type;
                }
            }
            return dictionary;
        }

        /// <summary>
        /// Get all of the data modules that implement this attribute.
        /// </summary>
        /// <returns>An array of the data modules.</returns>
        public static ConcurrentDictionary<string, Type> GetAllDataModules()
        {
            lock (_lock)
            {
                return CachedDataModules ?? (CachedDataModules = BuildDataModules());
            }
        }
        #endregion
    }
}
