using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NLua;

namespace ATT
{
    public static class SavedVariables
    {
        #region Static Functionality
        /// <summary>
        /// Convert the Lua Table to JSON.
        /// </summary>
        /// <param name="table">The table.</param>
        /// <returns>The MiniJSON compliant data table.</returns>
        private static Dictionary<object, object> GlobalLuaTableToJSON(LuaTable table)
        {
            var dict = new Dictionary<object, object>();
            foreach (var key in table.Keys)
            {
                if (table[key] is LuaTable luaTable)
                {
                    var keyString = Convert.ToString(key);
                    switch(keyString)
                    {
                        case "coroutine":
                        case "debug":
                        case "package":
                        case "utf8":
                        case "math":
                        case "string":
                        case "table":
                        case "luanet":
                        case "io":
                        case "os":
                        case "_G":
                        case "_VERSION":
                            continue;
                        default:
                            dict[keyString] = LuaTableToJSON(luaTable);
                            break;
                    }
                }
            }
            return dict;
        }

        /// <summary>
        /// Convert the Lua Table to JSON.
        /// </summary>
        /// <param name="table">The table.</param>
        /// <returns>The MiniJSON compliant data table.</returns>
        private static Dictionary<object, object> LuaTableToJSON(LuaTable table)
        {
            var dict = new Dictionary<object, object>();
            foreach (var key in table.Keys)
            {
                var value = table[key];
                if (value is LuaFunction) continue;
                if (value is LuaTable luaTable) value = LuaTableToJSON(luaTable);
                if (key is string s)
                {
                    if (long.TryParse(s, out long i) && i.ToString() == s)
                    {
                        // Numerical key. Lua is weird.
                        dict[i] = value;
                        continue;
                    }
                }

                // String-based key, more than likely.
                dict[key] = value;
            }
            return dict;
        }

        /// <summary>
        /// Parse and write back the Lua data to the file.
        /// </summary>
        /// <param name="filename">The name of the lua file to parse.</param>
        /// <returns>The data in a more readable format.</returns>
        private static Dictionary<object, object> ParseFile(string filename)
        {
            // Read the First Line of the File to see if we've already worked on this file. (if so, we don't need to sync)
            foreach (var line in File.ReadLines(filename))
            {
                // Have we done work? If so, we don't need to parse this file nor sync.
                if (line.StartsWith("-- Compressed"))
                {
                    // Considerations: Yeah, I realize it won't parse again if they delete the data files,
                    // buuut, just login again and the next sync should grab it. Non-issue. - Crieve
                    return null;
                }
                break;
            }

            Dictionary<object, object> data = null;
            try
            {
                Lua lua = new Lua();
                lua.DoFile(filename);
                data = GlobalLuaTableToJSON(lua.GetTable("_G"));
                lua.Close();
            }
            catch (Exception e)
            {
                Trace.WriteLine(e);
            }

            // Break out if no data was parsed.
            if (data == null) return null;

            // If the data successfully parsed from Lua, then let's write it back in a hyper compressed, optimal format.
            // TODO: Compress, Sort and Write back in Valid Lua format.
            var utcNow = DateTime.UtcNow;
            var builder = new StringBuilder("-- Compressed & Optimized by the ATT Sync Tool").AppendLine()
                .Append("-- ").Append(utcNow.ToLongDateString()).Append(' ').AppendLine(utcNow.ToLongTimeString());
            var keys = data.Keys.ToList();
            keys.Sort();

            // I want the settings at the top every time.
            if (keys.Contains("ATTClassicSettings"))
            {
                keys.Remove("ATTClassicSettings");
                keys.Insert(0, "ATTClassicSettings");
            }
            if (keys.Contains("AllTheThingsSettings"))
            {
                keys.Remove("AllTheThingsAuctionData");
                keys.Remove("AllTheThingsHarvestItems");
                keys.Remove("AllTheThingsSettings");
                keys.Insert(0, "AllTheThingsSettings");
            }

            // Write the tables into the file.
            foreach (var key in keys)
            {
                builder.Append(key).Append("=");
                Write(data[key], builder, 0);
                builder.AppendLine(";");
            }

            File.WriteAllText(filename, builder.ToString());
            return data;
        }

        /// <summary>
        /// Write the object to the string builder.
        /// </summary>
        /// <param name="o">The object.</param>
        /// <param name="builder">The string builder.</param>
        /// <param name="depth">The depth of the object.</param>
        private static void Write(object o, StringBuilder builder, int depth)
        {
            if (o is Dictionary<object, object> dict) Write(dict, builder, depth + 1);
            else if (o is string s)
            {
                // Lua is weird, so a key can be a number, but also a string.
                if(long.TryParse(s, out long i) && i.ToString() == s) builder.Append(o);
                else builder.Append('"').Append(s).Append('"');
            }
            else if(o is bool b) builder.Append(b ? "true" : "false");
            else builder.Append(o);
        }

        /// <summary>
        /// Write the table to the string builder.
        /// </summary>
        /// <param name="table">The table.</param>
        /// <param name="builder">The string builder.</param>
        /// <param name="depth">The depth of the object.</param>
        private static void Write(Dictionary<object, object> table, StringBuilder builder, int depth)
        {
            builder.Append('{');
            var keys = table.Keys.ToList();
            var count = keys.Count;
            if (count > 0)
            {
                keys.Sort(delegate (object a, object b)
                {
                    if (a is long a1)
                    {
                        if (b is long b1) return a1.CompareTo(b1);
                        return 1;
                    }
                    else
                    {
                        if (b is long b1) return -1;
                        return a.ToString().CompareTo(b.ToString());
                    }
                });
                var lastKey = keys[count - 1];
                if (lastKey is long lastKeyValue && lastKeyValue == count)
                {
                    // This is probably an array, actually.
                    bool actuallyAnArray = true;
                    for (int j = 0; j < count; ++j)
                    {
                        if (keys[j] is long v && v == j + 1) continue;
                        actuallyAnArray = false;
                        break;
                    }
                    if (actuallyAnArray)
                    {
                        // Woah.
                        for (int j = 0; j < lastKeyValue; ++j)
                        {
                            if (j > 0) builder.Append(',');
                            Write(table[keys[j]], builder, depth);
                        }
                        builder.Append('}');
                        return;
                    }
                }
                var i = 0;
                if (depth < 2)
                {
                    foreach (var key in keys)
                    {
                        if (i++ > 0) builder.Append(',');
                        builder.AppendLine();
                        for (int j = 0; j < depth; ++j) builder.Append('\t');
                        builder.Append('[');
                        Write(key, builder, depth);
                        builder.Append("]=");
                        Write(table[key], builder, depth);
                    }
                    builder.AppendLine();
                }
                else
                {
                    foreach (var key in keys)
                    {
                        if (i++ > 0) builder.Append(',');
                        builder.Append('[');
                        Write(key, builder, depth);
                        builder.Append("]=");
                        Write(table[key], builder, depth);
                    }
                }
            }
            builder.Append('}');
        }

        /// <summary>
        /// Parse the Saved Variables into a more usable format.
        /// </summary>
        /// <param name="root">The Saved Variables Root Folder for the Account.</param>
        /// <returns>The less raw data.</returns>
        public static Dictionary<object, object> Parse(DirectoryInfo root)
        {
            // Look for the SavedVariables folder.
            var savedVariablesFolder = root.GetDirectories("SavedVariables", SearchOption.TopDirectoryOnly).FirstOrDefault();
            if (savedVariablesFolder != null && savedVariablesFolder.Exists)
            {
                // Classic WoW only accepts ATT-Classic, not AllTheThings.
                if (savedVariablesFolder.FullName.Contains("_classic_"))
                {
                    // Look at the ATT-Classic.lua file.
                    var allTheThingsFile = savedVariablesFolder.GetFiles("ATT-Classic.lua", SearchOption.TopDirectoryOnly).FirstOrDefault();
                    if (allTheThingsFile != null && allTheThingsFile.Exists) return ParseFile(allTheThingsFile.FullName);
                }

                // Retail WoW only accepts AllTheThings, not Classic.
                if (savedVariablesFolder.FullName.Contains("_retail_"))
                {
                    // Look at the AllTheThings.lua file.
                    var allTheThingsFile = savedVariablesFolder.GetFiles("AllTheThings.lua", SearchOption.TopDirectoryOnly).FirstOrDefault();
                    if (allTheThingsFile != null && allTheThingsFile.Exists) return ParseFile(allTheThingsFile.FullName);
                }
            }

            return null;
        }
        #endregion
    }
}
