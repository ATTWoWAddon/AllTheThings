using System;
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
        public string Name;
        public DataModuleAttribute([CallerMemberName] string name = null)
        {
            Name = name;
        }

        #region Data Caching
        private static Dictionary<string, Type> CachedDataModules = null;

        /// <summary>
        /// Get all of the data modules that implement this attribute.
        /// </summary>
        /// <returns>An array of the data modules.</returns>
        private static Dictionary<string, Type> BuildDataModules()
        {
            var dictionary = new Dictionary<string, Type>();
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
        public static Dictionary<string, Type> GetAllDataModules()
        {
            return CachedDataModules ?? (CachedDataModules = BuildDataModules());
        }
        #endregion
    }
}