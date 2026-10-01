using System;
using System.Collections.Generic;
using System.Runtime.CompilerServices;

namespace ATT.DB
{
    /// <summary>
    /// An attribute to apply to fields that converts a data value into a db value.
    /// </summary>
    [AttributeUsage(AttributeTargets.Property, Inherited = true)]
    public class ExportableDataAttribute : Attribute
    {
        public string Name;
        public ExportableDataAttribute([CallerMemberName] string name = null)
        {
            Name = name;
        }
    }

    public static class ExportableDataAttributeHelper
    {
        /// <summary>
        /// Get the exportable data for a given object.
        /// </summary>
        /// <param name="o">The object.</param>
        /// <returns>The exportable data.</returns>
        public static Dictionary<string, object> GetExportableData<T>(this T o) where T : IDBType
        {
            return WagoData.GetExportableData(o);
        }
    }
}