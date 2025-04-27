using ATT.DB.Types;
using Csv;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;

namespace ATT.DB
{
    internal static class WagoTypes
    {
        /// <summary>
        /// Add supported Wago DB types here when defining new ones
        /// </summary>
        private static readonly Type[] _knownTypes = new Type[]
        {
            typeof(Achievement),
            typeof(Criteria),
            typeof(CriteriaTree),
            typeof(GlyphProperties),
            typeof(Item),
            typeof(ItemEffect),
            typeof(ItemXItemEffect),
            typeof(ItemModifiedAppearance),
            typeof(ItemSearchName),
            typeof(ModifierTree),
            typeof(TransmogSet),
            typeof(TransmogSetItem),
            typeof(SpellEffect),
            typeof(TaxiNodes),
        };

        private static readonly IDictionary<Type, PropertyInfo[]> _typeProperties = new Dictionary<Type, PropertyInfo[]>();
        private static readonly CsvOptions _options = new CsvOptions
        {
            AllowNewLineInEnclosedFieldValues = true
        };

        private static readonly IDictionary<string, Type> _typeMapping = _knownTypes.ToDictionary(t => t.Name.ToLowerInvariant(), t => t);

        /// <summary>
        /// Returns a function which will parse a <see cref="ICsvLine"/> into a usable <see cref="IDBType"/>
        /// </summary>
        internal static IDictionary<long, IDBType> ParseCsvType(string type, string csvfile)
        {
            ICsvLine[] csvlines = CsvReader.ReadFromText(csvfile, _options).ToArray();
            if (!_typeMapping.TryGetValue(type.ToLowerInvariant(), out Type parseType))
            {
                Framework.LogWarn($"Ignoring Wago Type: {type}");
                return new Dictionary<long, IDBType>();
            }

            lock (_typeProperties)
            {
                if (!_typeProperties.TryGetValue(parseType, out PropertyInfo[] properties))
                {
                    _typeProperties[parseType] = parseType.GetProperties();
                }
            }

            var dictionary = new Dictionary<long, IDBType>();
            foreach (var line in csvlines)
            {
                var parsedLine = Parse(parseType, line);
                if (parsedLine != null)
                {
                    dictionary[parsedLine.ID] = parsedLine;
                }
            }

            if (dictionary.Count < (csvlines.Length / 2))
            {
                Framework.LogWarn($"Something horrible happened to Wago '{type}' CSV File since it has barely any recognizable data!");
            }
            return dictionary;
        }

        private static IDBType Parse(Type parseType, ICsvLine csvline)
        {
            if (csvline.Values.Length < csvline.Headers.Length)
            {
                Framework.LogError($"Wago CSV has unexpected format! {parseType.Name} => {csvline.Index} [{Framework.ToJSON(csvline)}]");
                return null;
            }

            IDBType obj = (IDBType)Activator.CreateInstance(parseType);
            foreach (PropertyInfo pi in _typeProperties[parseType])
            {
                try
                {
                    if (csvline.Headers.Contains(pi.Name))
                    {
                        pi.SetValue(obj, Convert.ChangeType(csvline[pi.Name], pi.PropertyType));
                    }
                }
                catch (Exception ex)
                {
                    throw new InvalidProgramException($"Failed converting property {parseType.Name}.{pi.Name} [{pi.PropertyType.Name}] from: '{csvline[pi.Name]}'", ex);
                }
            }

            return obj;
        }
    }
}
