using ATT.FieldTypes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ATT
{
    // Export extension for Direct Lua.
    partial class Export
    {
        /// <summary>
        /// Allows to define whether pure Lua will include newlines or not
        /// </summary>
        public static bool IncludePureNewlines { get; set; } = true;

        /// <summary>
        /// Allows to define whether individual Lua output will be compressed
        /// </summary>
        public static bool CompressedLua { get; set; } = false;

        /// <summary>
        /// Export the data to the builder in a raw, longhand Lua format.
        /// Standardized formatting applies here.
        /// </summary>
        /// <param name="builder">The builder.</param>
        /// <param name="data">The undetermined object data.</param>
        /// <param name="indent">The string to prefix before each line. (indenting)</param>
        private static void ExportPureLua(Exporter builder, object data, string indent = "")
        {
            // Firstly, we need to know the type of object we're working with.
            if (data is bool b) ExportBooleanValue(builder, b);
            else if (data is long l) builder.Append(ToString(l));
            else if (data is int i) builder.Append(ToString(i));
            else if (data is short s) builder.Append(ToString(s));
            else if (data is decimal d) builder.Append(ToString(d));
            else if (data is float f) builder.Append(ToString(f));
            else if (data is double db) builder.Append(ToString(db));
            else if (data is string str) ExportPureStringValue(builder, str);
            else if (data is IExportableField field) ExportPureLua(builder, field.AsExportType());
            else if (data is IEnumerable<long> longlist) ExportPureLua(builder, longlist, indent);
            else if (data is IEnumerable<string> strlist) ExportPureLua(builder, strlist, indent);
            else if (data is IEnumerable<List<object>> listObjects) ExportPureLua(builder, listObjects, indent);
            else if (data is IEnumerable<object> objlist) ExportPureLua(builder, objlist, indent);
            else if (data is IDictionary<string, List<object>> listdict) ExportPureLua(builder, listdict, indent);
            else if (data is IDictionary<string, object> dict) ExportPureLua(builder, dict, indent);
            else if (data is IDictionary<long, long> longLongDict) ExportPureLua(builder, longLongDict, indent);
            else if (data is IDictionary<long, string> strdict) ExportPureLua(builder, strdict, indent);
            else if (data is IDictionary<long, object> longdict) ExportPureLua(builder, longdict, indent);
            else
            {
                // Default: Write it raw. Best of luck.
                Framework.LogWarn($"Failed to determine a proper export type {data.GetType().Name}");
                builder.Append(ToString(data));
            }
        }

        /// <summary>
        /// Export the contents of the dictionary to the builder in a raw, longhand format.
        /// Every field will be written. Standardized formatting applies here.
        /// </summary>
        /// <typeparam name="KEY">The key value type of the dictionary.</typeparam>
        /// <typeparam name="VALUE">The value type of the dictionary.</typeparam>
        /// <param name="builder">The builder.</param>
        /// <param name="data">The data dictionary.</param>
        /// <param name="indent">The string to prefix before each line. (indenting)</param>
        private static void ExportPureLua<KEY, VALUE>(Exporter builder, IDictionary<KEY, VALUE> data, string indent = "")
        {
            // If the dictionary doesn't have any content, then return immediately.
            if (data.Count == 0)
            {
                builder.Append("{}");
                return;
            }

            // Increase the indent by 1 tab.
            var subindent = !CompressedLua ? indent + '\t' : string.Empty;

            // Open Bracket for beginning of the Dictionary.
            builder.Append('{');

            // move down for data
            if (IncludePureNewlines)
                builder.AppendLine();

            // ensure sorted output
            SortedDictionary<KEY, VALUE> sortedData = new SortedDictionary<KEY, VALUE>(data);

            // Export Fields
            int fieldCount = 0;
            foreach (var key in sortedData.Keys)
            {
                // If this is NOT the first field, move to the next line
                if (fieldCount++ > 0 && IncludePureNewlines) builder.AppendLine();

                ExportPureLuaKeyValue(builder, key, sortedData[key], subindent);

                // Always follow each piece of data with a comma for consistency
                builder.Append(',');
            }

            // Remove the trailing comma
            builder.Remove(builder.Length - 1, 1);

            // Close Bracket for the end of the Dictionary.

            if (IncludePureNewlines)
                builder.AppendLine();
            builder.Append(indent).Append('}');
        }

        /// <summary>
        /// Outputs a single object corresponding of the key and value
        /// </summary>
        /// <param name="builder"></param>
        /// <param name="key"></param>
        /// <param name="value"></param>
        private static void ExportPureLuaKeyValue(Exporter builder, object key, object value, string subindent = "")
        {
            // Append the Sub-Indent and the Field Name
            builder.Append(subindent).Append("[");
            ExportPureLua(builder, key, subindent);
            if (CompressedLua)
            {
                builder.Append("]=");
            }
            else
            {
                builder.Append("] = ");
            }

            // Append the undetermined object's format to the builder.
            ExportPureLua(builder, value, subindent);
        }

        /// <summary>
        /// Export the contents of the list to the builder in a raw, longhand format.
        /// Every element will be written. Standardized formatting applies here.
        /// </summary>
        /// <param name="builder">The builder.</param>
        /// <param name="list">The list of data.</param>
        /// <param name="indent">The string to prefix before each line. (indenting)</param>
        private static void ExportPureLua<VALUE>(Exporter builder, IEnumerable<VALUE> list, string indent = "")
        {
            // If the list doesn't have any content, then return immediately.
            if (!list.Any())
            {
                builder.Append("{}");
                return;
            }

            // Increase the indent by 1 tab.
            var subindent = !CompressedLua ? indent + '\t' : string.Empty;

            // Open Bracket for beginning of the List.
            builder.Append('{');
            if (IncludePureNewlines)
                builder.AppendLine();

            // Export Fields
            bool first = true;
            foreach (var obj in list)
            {
                // If this is NOT the first field, append a comma.
                if (!first)
                {
                    builder.Append(',');
                    if (IncludePureNewlines)
                        builder.AppendLine();
                }
                else
                {
                    first = false;
                }

                // Append the Sub-Indent
                builder.Append(subindent);

                // Append the undetermined object's format to the builder.
                ExportPureLua(builder, obj, subindent);
            }

            // Close Bracket for the end of the List.

            if (IncludePureNewlines)
                builder.AppendLine();
            builder.Append(indent).Append('}');
        }

        /// <summary>
        /// Export the data to the builder in a raw, longhand format.
        /// Standardized formatting applies here.
        /// </summary>
        /// <param name="data">The undetermined object data.</param>
        /// <returns>A built string containing the information.</returns>
        public static Exporter ExportPureLua(object data)
        {
            var builder = new Exporter();
            ExportPureLua(builder, data);
            return builder;
        }

        /// <summary>
        /// Export the contents of the dictionary to the builder in a raw, longhand format.
        /// Every field will be written. Standardized formatting applies here.
        /// </summary>
        /// <typeparam name="KEY">The key value type of the dictionary.</typeparam>
        /// <typeparam name="VALUE">The value type of the dictionary.</typeparam>
        /// <param name="data">The data dictionary.</param>
        /// <returns>A built string containing the information.</returns>
        public static Exporter ExportPureLua<KEY, VALUE>(IDictionary<KEY, VALUE> data)
        {
            var builder = new Exporter();
            ExportPureLua(builder, data);
            return builder;
        }

        /// <summary>
        /// Export the contents of the list to the builder in a raw, longhand format.
        /// Every element will be written. Standardized formatting applies here.
        /// </summary>
        /// <param name="list">The list of data.</param>
        /// <returns>A built string containing the information.</returns>
        public static Exporter ExportPureLua<T>(IList<T> list)
        {
            var builder = new Exporter();
            ExportPureLua(builder, list);
            return builder;
        }

        public static Exporter ExportPureStringValue(Exporter builder, string value)
        {
            // even in 'pure Lua' situations we want to be able to output a verbatim string
            if (value.StartsWith("~"))
            {
                return builder.Append(value.Substring(1));
            }
            return builder.Append("\"").Append(value.Replace("\\", "\\\\")).Append("\"");
        }
    }
}
