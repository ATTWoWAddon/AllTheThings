using ATT.FieldTypes;
using KeraLua;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;

namespace ATT
{
    // Export extension for Compressed Lua.
    partial class Export
    {
        /// <summary>
        /// Allows to define whether LUA tables exported will include newlines or not<para/>
        /// Default: Config.UseExportNewlines
        /// </summary>
        public static bool AddTableNewLines { get; set; } = false;

        /// <summary>
        /// Determines whether the parse should use newlines when exporting Lua tables.<para/>
        /// NOTE: Automated parses will never use newlines
        /// </summary>
        public static bool ConfigUseExportNewlines => !Framework.Automated && Framework.Config["UseExportNewlines"];

        private static readonly List<string[]> RegexLuaReplacements = new List<string[]>
        {
            new [] { @"\n|\r", "\t" },
            new [] { @"\t[\t]+", "\t" },
            new [] { @";[\s]*", @";" },
            new [] { @",[\s]*", @"," },
            new [] { @"[\s]+=[\s]+", @"=" },
            new [] { @"[\s]+==[\s]+", @"==" },
            new [] { @"[\s]+>=[\s]+", @">=" },
            new [] { @"[\s]+<=[\s]+", @"<=" },
            new [] { @"[\s]+>[\s]+", @">" },
            new [] { @"[\s]+<[\s]+", @"<" },
            new [] { @",\}", "}" },
            new [] { @"[\s]*=[\s]*", "=" },
            new [] { @"[\s]*\{[\s]*", "{" },
            new [] { @"[\s]*\}[\s]*", "}" },
            new [] { @"[\s]*\([\s]*", "(" },
            new [] { @"[\s]*\)[\s]*", ")" },
            new [] { @"[\s]*\.\.[\s]*", ".." },
        };

        /// <summary>
        /// Export the data to the builder in a compressed, minified format.
        /// </summary>
        /// <param name="builder">The builder.</param>
        /// <param name="data">The undetermined object data.</param>
        private static void ExportCompressedLua(Exporter builder, object data)
        {
            // Firstly, we need to know the type of object we're working with.
            if (data is bool b) ExportBooleanValue(builder, b);
            else if (data is long l) builder.Append(ToString(l));
            else if (data is int i) builder.Append(ToString(i));
            else if (data is short s) builder.Append(ToString(s));
            else if (data is decimal d) builder.Append(ToString(d));
            else if (data is float f) builder.Append(ToString(f));
            else if (data is double db) builder.Append(ToString(db));
            else if (data is string str) ExportStringValue(builder, str);
            else if (data is IExportableField field) ExportCompressedLua(builder, field.AsExportType());
            else if (data is IEnumerable<long> longlist) ExportCompressedLua(builder, longlist);
            else if (data is IEnumerable<string> strlist) ExportCompressedLua(builder, strlist);
            else if (data is IEnumerable<List<object>> listObjects) ExportCompressedLua(builder, listObjects);
            else if (data is IEnumerable<object> objlist) ExportCompressedLua(builder, objlist);
            else if (data is IDictionary<string, List<object>> listdict) ExportCompressedLua(builder, listdict);
            else if (data is IDictionary<string, object> dict) ExportCompressedLua(builder, dict);
            else if (data is IDictionary<long, long> longLongDict) ExportCompressedLua(builder, longLongDict);
            else if (data is IDictionary<long, string> strdict) ExportCompressedLua(builder, strdict);
            else if (data is IDictionary<long, object> longdict) ExportCompressedLua(builder, longdict);
            else
            {
                // Default: Write it raw. Best of luck.
                Framework.LogWarn($"Failed to determine a proper export type {data.GetType().Name}");
                builder.Append(ToString(data));
            }
        }

        /// <summary>
        /// Export the contents of the dictionary to the builder in a compressed, minified format.
        /// Only whitelisted fields will be written in order to preserve memory and filesize.
        /// </summary>
        /// <typeparam name="KEY">The key value type of the dictionary.</typeparam>
        /// <typeparam name="VALUE">The value type of the dictionary.</typeparam>
        /// <param name="builder">The builder.</param>
        /// <param name="data">The data dictionary.</param>
        private static void ExportCompressedLua<KEY, VALUE>(Exporter builder, IDictionary<KEY, VALUE> data)
        {
            // If the dictionary doesn't have any content, then return immediately.
            if (data.Any())
            {
                // If there is no most signficant type, then we write it generically.
                // Open Bracket for beginning of the Dictionary.
                builder.Append('{');

                // Export Fields
                int fieldCount = 0;
                var keys = data.Keys.ToList();
                keys.Sort(Framework.Compare);
                foreach (var key in keys)
                {
                    // If this is NOT the first field, append a comma.
                    if (fieldCount++ > 0) builder.Append(',');

                    if (AddTableNewLines)
                        builder.Append(Environment.NewLine);

                    // Append the Sub-Indent and the Field Name
                    builder.Append("[");
                    ExportCompressedLua(builder, key);
                    builder.Append("]=");

                    // Append the undetermined object's format to the builder.
                    ExportCompressedLua(builder, data[key]);
                }

                // Close Bracket for the end of the Dictionary.
                builder.Append('}');
            }
            else builder.Append("{}");
        }


        /// <summary>
        /// Export the contents of the dictionary to the builder in a compressed, minified format.
        /// Only whitelisted fields will be written in order to preserve memory and filesize.
        /// </summary>
        /// <typeparam name="VALUE">The value type of the dictionary.</typeparam>
        /// <param name="builder">The builder.</param>
        /// <param name="data">The data dictionary.</param>
        private static void ExportCompressedLua<VALUE>(Exporter builder, IDictionary<string, VALUE> data)
        {
            // If the dictionary doesn't have any content, then return immediately.
            if (data.Any())
            {
                // If there is no most signficant type, then we write it generically.
                // Open Bracket for beginning of the Dictionary.
                builder.Append('{');

                // Export Fields
                int fieldCount = 0;
                var keys = data.Keys.ToList();
                keys.Sort(Framework.Compare);
                foreach (var key in keys)
                {
                    // If this is NOT the first field, append a comma.
                    if (fieldCount++ > 0) builder.Append(',');

                    if (AddTableNewLines)
                        builder.Append(Environment.NewLine);

                    // Append the Sub-Indent and the Field Name
                    builder.Append("[");
                    ExportCompressedLua(builder, key);
                    builder.Append("]=");

                    // Append the undetermined object's format to the builder.
                    ExportCompressedLua(builder, data[key]);
                }

                // Close Bracket for the end of the Dictionary.
                builder.Append('}');
            }
            else builder.Append("{}");
        }

        /// <summary>
        /// Export the contents of the dictionary to the builder in a compressed, minified format.
        /// Only whitelisted fields will be written in order to preserve memory and filesize.
        /// </summary>
        /// <param name="builder">The builder.</param>
        /// <param name="data">The data dictionary.</param>
        private static void ExportCompressedLua(Exporter builder, IDictionary<string, object> data)
        {
            // If the dictionary doesn't have any content, then return immediately.
            if (!data.Any())
            {
                builder.Append("{}");
                return;
            }
            // Cache the fields
            var fields = data.Keys.ToList();
            fields.Sort(Framework.Compare);

            // Check if the body has OnInit, if so, rip it out and append it before the constructor
            var hasOnInit = data.TryGetValue("OnInit", out object OnInitRef);
            if (hasOnInit)
            {
                fields.Remove("OnInit");
                var onInitBody = SimplifyLuaBody(OnInitRef);
                if (!onInitBody.Contains("return") && onInitBody.Contains("function("))
                {
                    Console.WriteLine("Missing a return within an OnInit function body.");
                    Console.WriteLine(OnInitRef.ToString());
                    onInitBody = $"function(t2) ({onInitBody})(t2); return t2; end";
                }
                builder.Append('(').Append(onInitBody).Append(")(");
            }

            if (AddTableNewLines)
                builder.Append(Environment.NewLine);

            // If this is a constructed object type, then we need to write a parenthesis afterward.
            var constructed = ExportShortcut(builder, data, fields, out ObjectData objectType);

            // If there are still fields to write, then do so.
            if (fields.Count > 0)
            {
                // Write a comma for the start of the data dictionary contents.
                if (objectType != null && objectType.ShouldWriteObjectType) builder.Append(',');

                // Check if the body has OnInit, if so, rip it out and append it before the constructor
                var hasFactionSpecificData = data.ContainsKey("aqd") && fields.Contains("aqd") && !data.ContainsKey("otherQuestData");    // Quests in Retail split into two quests if they use AQD/HQD
                if (hasFactionSpecificData) builder.Append("_.ResolveQuestData(");

                // We don't need to write the "g" tag if that's the only field.
                if (fields.Count == 1 && fields[0] == "g")
                {
                    // Only "g" is left, let's push it up a level and remove the field.
                    ExportCompressedLua(builder, data["g"]);
                }
                else
                {
                    // Check if the body has groups, if so, rip it out and append it last.
                    var hasGroups = data.TryGetValue("g", out object groupsRef);
                    if (hasGroups) fields.Remove("g");

                    // Open Bracket for beginning of the Dictionary.
                    builder.Append('{');

                    // Export Fields
                    int fieldCount = 0;
                    foreach (var field in fields)
                    {
                        // If this is NOT the first field, append a comma.
                        if (fieldCount++ > 0) builder.Append(',');
                        if (field.Contains('-')) builder.Append("[\"").Append(field).Append("\"]=");
                        else builder.Append(field).Append('=');

                        // Append the undetermined object's format to the builder.
                        if (field == "sym" || field == "cost")
                        {
                            // Write the symbolic link without changing anything.
                            //builder.Append('"').Append(Convert.ToString(data[field]).Replace("\"", "\\\"")).Append('"');
                            ExportRawLua(builder, data[field]);
                        }
                        else if (field == "OnClick" || field == "OnUpdate" || field == "OnTooltip")
                        {
                            var functionBody = SimplifyLuaBody(data[field]);
                            if (functionBody.StartsWith("function("))
                            {
                                // Attempt to validate the format of the function.
                                try
                                {
                                    var functionAssignment = $"{field} = {functionBody}";
                                    Lua lua = new Lua();
                                    if (lua.DoString(functionAssignment))
                                    {
                                        System.Diagnostics.Trace.WriteLine("There appears to be a syntax error in the following function:");
                                        System.Diagnostics.Trace.WriteLine(functionAssignment);
                                        Framework.WaitForUser();
                                    }
                                    lua.Close();
                                }
                                catch (Exception ex)
                                {
                                    System.Diagnostics.Trace.WriteLine(ex);
                                    System.Diagnostics.Trace.WriteLine(functionBody);
                                    Framework.WaitForUser();
                                }
                            }
                            builder.Append(functionBody);
                        }
                        else ExportCompressedLua(builder, data[field]);
                    }

                    // Append the groups at the very end.
                    if (hasGroups)
                    {
                        builder.Append(",g=");
                        ExportCompressedLua(builder, groupsRef);
                    }

                    // Close Bracket for the end of the Dictionary.
                    builder.Append('}');
                }

                // If we have faction specific data, append the finishing parenthesis.
                if (hasFactionSpecificData) builder.Append(')');
            }
            else
            {
                // Uhh, that shouldn't happen.
                //if (hasOnInit) Framework.LogError("ERROR: OnInit in a place where it does not belong!");
            }

            // Close the Parenthesis for the end of the constructor.
            if (constructed) builder.Append(')');

            // If we had an OnInit, append the finishing parenthesis.
            if (hasOnInit) builder.Append(')');
        }

        /// <summary>
        /// Export the contents of the list to the builder in a raw, longhand format.
        /// Every element will be written. Standardized formatting applies here.
        /// </summary>
        /// <param name="builder">The builder.</param>
        /// <param name="list">The list of data.</param>
        private static void ExportCompressedLua<VALUE>(Exporter builder, IEnumerable<VALUE> list)
        {
            // If the list doesn't have any content, then return immediately.
            if (!list.Any())
            {
                builder.Append("{}");
                return;
            }

            // Determine if this list type is something that gets marked
            var listType = list.First().GetType();
            if (listType.IsNumeric() || listType == typeof(string))
            {
                // These are simple types that can be compressed.
                // Open Bracket for beginning of the List.
                var subbuilder = new Exporter();
                subbuilder.Append('{');

                // Export Fields
                //int maxValue = 0, value = 0;
                bool first = true;
                foreach (var obj in list)
                {
                    // If this is NOT the first field, append a comma.
                    if (!first) { subbuilder.Append(','); }
                    else { first = false; }

                    // Append the undetermined object's format to the sub builder.
                    ExportCompressedLua(subbuilder, obj);

                    // Determine if this is higher than the current max value.
                    //value = Convert.ToInt64(obj);
                    //if (value > maxValue) maxValue = value;
                }

                // Close Bracket for the end of the List.
                subbuilder.Append('}');

                // Cache the structure, mark it, then write it to the builder.
                var structure = subbuilder.ToString();
                /*if (maxValue < 40)*/
                builder.MarkStructure(structure);
                builder.Append(structure);
            }
            else
            {
                // These are complex types that are not appropriate for compression.
                // Open Bracket for beginning of the List.
                builder.Append('{');

                // Export Fields
                bool first = true;
                foreach (var obj in list)
                {
                    // If this is NOT the first field, append a comma.
                    if (!first) { builder.Append(','); }
                    else { first = false; }

                    // Append the undetermined object's format to the sub builder.
                    ExportCompressedLua(builder, obj);
                }

                // Close Bracket for the end of the List.
                builder.Append('}');
            }
        }

        /// <summary>
        /// Export the data to the builder in a raw, longhand format.
        /// Standardized formatting applies here.
        /// </summary>
        /// <param name="data">The undetermined object data.</param>
        /// <returns>A built string containing the information.</returns>
        public static Exporter ExportCompressedLua(object data)
        {
            var builder = new Exporter();
            AddTableNewLines = ConfigUseExportNewlines;
            ExportCompressedLua(builder, data);
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
        public static Exporter ExportCompressedLua<KEY, VALUE>(IDictionary<KEY, VALUE> data)
        {
            var builder = new Exporter();
            ExportCompressedLua(builder, data);
            AddTableNewLines = ConfigUseExportNewlines;
            return builder;
        }

        /// <summary>
        /// Export the contents of the list to the builder in a raw, longhand format.
        /// Every element will be written. Standardized formatting applies here.
        /// </summary>
        /// <param name="list">The list of data.</param>
        /// <returns>A built string containing the information.</returns>
        public static Exporter ExportCompressedLua<T>(IList<T> list)
        {
            var builder = new Exporter();
            ExportCompressedLua(builder, list);
            AddTableNewLines = ConfigUseExportNewlines;
            return builder;
        }

        /// <summary>
        /// Export the category to a new string builder instance.
        /// </summary>
        /// <param name="name">The name.</param>
        /// <param name="category"></param>
        /// <returns></returns>
        public static Exporter ExportCompressedLuaCategory(string name, List<object> category)
        {
            // Export the Category
            var builder = new Exporter(name);
            builder.Append("categories.").Append(name).Append("=");
            bool isPrimaryRootCategory = false;
            if (Framework.RootCategoryHeaders.TryGetValue(name, out var headerObj)
                && headerObj is Dictionary<string, object> header && header != null)
            {
                header["g"] = category;
                ExportCompressedLua(builder, header);
                isPrimaryRootCategory = true;
            }
            else ExportCompressedLua(builder, category);
            builder.AppendLine(";").AppendLine("end);");
            builder.Insert(0, "--STRUCTURE_REPLACEMENTS" + Environment.NewLine);
            ExportLocalVariablesForLua(builder);
            builder.Insert(0, new StringBuilder()
                .AppendLine("---@diagnostic disable: deprecated")
                .AppendLine("local appName, _ = ...;")
                .Append("_.AddEventHandler(\"")
                .Append(isPrimaryRootCategory ? "OnBuildDataCache" : "OnBuildHiddenDataCache")
                .AppendLine("\", function(categories)"));
            AddTableNewLines = ConfigUseExportNewlines;
            return builder;
        }

        /// <summary>
        /// Export the categories to a new string builder instance.
        /// </summary>
        /// <param name="categories"></param>
        /// <returns></returns>
        public static Exporter ExportCompressedLuaCategories(IDictionary<string, List<object>> categories)
        {
            // Export all of the Categories
            var builder = new Exporter();
            builder.AppendLine("_.Categories={");
            foreach (var pair in categories)
            {
                if (pair.Value.Count > 0)
                {
                    builder.Append(pair.Key).AppendLine("={");
                    foreach (var group in pair.Value)
                    {
                        ExportCompressedLua(builder, group);
                        builder.Append(",");
                    }
                    builder.Remove(builder.Length - 1, 1).AppendLine("};");
                }
            }
            builder.AppendLine("};");

            // Simplify the structure of the string and then export to the builder.
            if (!Framework.PreProcessorTags.Contains("NOSIMPLIFY"))
            {
                var simplifyConfig = Framework.Config["SimplifyStructures"];
                if (simplifyConfig.Defined)
                {
                    int[] simplify = simplifyConfig;
                    SimplifyStructureForLua(builder, simplify[0], simplify[1]);
                }
                else
                {
                    SimplifyStructureForLua(builder);
                }
            }
            ExportLocalVariablesForLua(builder);
            ExportCategoriesHeaderForLua(builder);
            AddTableNewLines = ConfigUseExportNewlines;
            return builder;
        }

        /// <summary>
        /// Export a boolean value to the builder.
        /// NOTE: 0 in lua is evaluated as true, not false. So we can't shorten it. (rip)
        /// </summary>
        /// <param name="builder">The builder.</param>
        /// <param name="value">The boolean value.</param>
        /// <returns>The builder.</returns>
        public static void ExportBooleanValue(Exporter builder, bool value)
        {
            builder.Append(value ? "1" : "false");
        }

        /// <summary>
        /// Export a string value to the builder.
        /// Should the string contain native lua directives, it will export it as native lua code.
        /// </summary>
        /// <param name="builder">The builder.</param>
        /// <param name="value">The string value.</param>
        /// <returns>The builder.</returns>
        public static void ExportStringValue(Exporter builder, string value)
        {
            value = value.Replace("\n", "\\n").Replace("\r", "\\r");
            if (value.StartsWith("~"))
            {
                builder.Append(value.Substring(1));
            }
            else if (value.StartsWith("GetSpellInfo") || value.StartsWith("GetItem") || value.StartsWith("select(") || value.StartsWith("C_")
                || value.StartsWith("_."))
            {
                builder.Append(value);
            }
            else
            {
                builder.Append("\"").Append(value.Replace("\"", "\\\"").Replace("\\\\\"", "\\\"")).Append("\"");
            }
        }

        /// <summary>
        /// Simplify a function body by removing escape and extra tabs.
        /// </summary>
        /// <param name="value">The body of the function.</param>
        /// <returns>The simplified body of the function.</returns>
        public static string SimplifyLuaBody(object value)
        {
            string functionBody = Convert.ToString(value);
            // extract any verbatim strings so they are not impacted by Lua regex compression
            Dictionary<string, string> verbatimStringReplacements = new Dictionary<string, string>();
            const string VerbatimStringReplacment = @"""(?:[^""]|[\w\s])*""";
            int replacementID = 1;
            bool tryReplace = true;
            while (tryReplace)
            {
                Match verbatimMatch = Regex.Match(functionBody, VerbatimStringReplacment);
                if (verbatimMatch.Success)
                {
                    string verbatimReplacement = $@"[=[{replacementID}]=]";
                    verbatimStringReplacements.Add(verbatimReplacement, verbatimMatch.Value);
                    functionBody = functionBody.Replace(verbatimMatch.Value, verbatimReplacement);
                    replacementID++;
                }
                else
                {
                    tryReplace = false;
                }
            }

            int functionBodyLength = functionBody.Length;
            while (true)
            {
                string shortenedFunctionBody = null;
                foreach (string[] replacements in RegexLuaReplacements)
                {
                    shortenedFunctionBody = Regex.Replace(shortenedFunctionBody ?? functionBody, replacements[0], replacements[1]);
                }
                int shortLength = shortenedFunctionBody.Length;
                if (shortLength < functionBodyLength)
                {
                    functionBody = shortenedFunctionBody;
                    functionBodyLength = shortLength;
                }
                else break;
            }
            if ((functionBody.StartsWith("\"") && functionBody.EndsWith("\""))
                || (functionBody.StartsWith("'") && functionBody.EndsWith("'")))
            {
                // Remove any sort of silly string escape used to encapsulate the function body.
                functionBody = functionBody.Substring(1, functionBody.Length - 2);
            }

            // replace the extract verbatim strings
            foreach (var verbatimSwap in verbatimStringReplacements)
            {
                functionBody = functionBody.Replace(verbatimSwap.Key, verbatimSwap.Value);
            }

            return functionBody;
        }
    }
}
