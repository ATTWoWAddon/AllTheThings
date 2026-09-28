using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NLua;

namespace Profession_Automator
{
    class Program
    {
        static string[] COMMENT_STRIPPER = new string[] { " -- [" };

        static void Main(string[] args)
        {
            var directory = Path.GetFullPath("../../../../../../../WTF/Account/");
            if (Directory.Exists(directory))
            {
                // Gather a list of AllTheThings.lua files that contain DebugData.
                var FilesContainingAllTheThingsDebugData = new List<string>();
                foreach (var accountDirectory in Directory.EnumerateDirectories(directory))
                {
                    var SavedVariablesSubFolder = Path.Combine(accountDirectory, "SavedVariables");
                    if (Directory.Exists(SavedVariablesSubFolder))
                    {
                        foreach (var file in Directory.EnumerateFiles(SavedVariablesSubFolder, "AllTheThings.lua"))
                        {
                            // Read the contents of the file as a set of lines.
                            Console.WriteLine(file);
                            var lines = File.ReadAllLines(file);

                            // Find the line starting with "AllTheThingsDebugData".
                            int index = 0;
                            for (;index < lines.Length; ++index)
                            {
                                if (lines[index].StartsWith("AllTheThingsDebugData"))
                                {
                                    // Skip it.
                                    ++index;
                                    break;
                                }
                            }

                            // Build a list of valid lines from this file.
                            var builder = new StringBuilder();
                            for (; index < lines.Length; ++index)
                            {
                                var line = lines[index];
                                if (line.StartsWith("\t"))
                                {
                                    // Oh cool, this must be something interesting.
                                    // Cache the Line we're working on and then iterate over the characters in the string.
                                    bool valid = true;
                                    for (int j = 0, count = line.Length; j < count; ++j)
                                    {
                                        // Grab the character and look at it!
                                        char c = line[j];
                                        switch (c)
                                        {
                                            case '[':   // We want to reduce the amount of data here!
                                                {
                                                    // Requires additional parsing to determine what it is.
                                                    try
                                                    {
                                                        switch (line.Substring(j + 2, 3))    // Grab a substring of 3 length starting after the [" characters.
                                                        {
                                                            case "nam":
                                                            case "g\"]":
                                                            {
                                                                // Whitelisted!
                                                                //   requireSkill
                                                                //   g
                                                                break;
                                                            }
                                                            case "vis":
                                                            case "bac":
                                                            case "exp":
                                                            case "ind":
                                                            case "spe":
                                                            case "req":
                                                            case "ico":
                                                            {
                                                                valid = false;
                                                                continue;
                                                            }
                                                        }
                                                    }
                                                    catch (Exception e)
                                                    {
                                                        Console.WriteLine(e);
                                                    }
                                                    break;
                                                }
                                            case '{':
                                            case '}':
                                                {
                                                    // This is a valid line, don't worry about it!
                                                    j = count;
                                                    continue;
                                                }
                                            default:
                                                {
                                                    if (char.IsLetterOrDigit(c))
                                                    {
                                                        j = count;
                                                        continue;
                                                    }
                                                    break;
                                                }
                                        }
                                    }

                                    // Add the first half of the split to remove the comments.
                                    if (valid) builder.AppendLine(line.Split(COMMENT_STRIPPER, StringSplitOptions.RemoveEmptyEntries)[0]);
                                }
                                else break;
                            }

                            // If there were no valid lines, then pretend nothing happened.
                            if (builder.Length < 1) continue;

                            // If there was something, now all be have to do is add some scope braces and we can parse the JSON.
                            builder.Insert(0, "AllTheThingsDebugData = {").Append("};");

                            do
                            {
                                try
                                {
                                    Lua lua = new Lua();
                                    lua.DoString(builder.ToString());
                                    var AllTheThingsDebugData = ConvertToMiniJsonFormat(lua.GetTable("AllTheThingsDebugData")) as List<object>;
                                    if(AllTheThingsDebugData != null)
                                    {
                                        Sort(AllTheThingsDebugData);
                                        if (!Validate(AllTheThingsDebugData))
                                        {
                                            Console.WriteLine("WRONG");
                                            Console.ReadLine();
                                        }
                                        var builder2 = new StringBuilder();
                                        Print(builder2, AllTheThingsDebugData);
                                        File.WriteAllText("output.txt", builder2.ToString());

                                        foreach(var o in AllTheThingsDebugData)
                                        {
                                            var obj = o as Dictionary<string, object>;
                                            if (obj == null) continue;
                                            if (obj.TryGetValue("professionID", out object professionIDRef)
                                                && obj.TryGetValue("name", out object nameRef)
                                                && obj.TryGetValue("g", out object gRef))
                                            {
                                                var name = Convert.ToString(nameRef);
                                                var professionID = Convert.ToInt64(professionIDRef);
                                                var builder3 = new StringBuilder("--[[\nDO NOT MODIFY THIS FILE, I WILL CUT YOU.\n With love,\n    -CRIEVE\n]]--\nprofession(");
                                                builder3.Append(professionID).Append(", {\t-- ").AppendLine(name).Append("\tfilter(200, ");
                                                Print(builder3, gRef, "\t");
                                                builder3.Append("),\n});");

                                                var filename = Path.Combine("../../../../.contrib/.db/standard/11 - Professions", name, "Recipes/_ Automation.lua");
                                                Directory.CreateDirectory(Path.GetDirectoryName(filename));
                                                File.WriteAllText(filename, builder3.ToString());
                                            }
                                        }
                                    }
                                    lua.Close();
                                    break;
                                }
                                catch (Exception e)
                                {
                                    Console.WriteLine(e);
                                    Console.WriteLine("Press Enter once you have resolved the issue.");
                                    Console.ReadLine();
                                }
                            }
                            while (true);
                        }
                    }
                }
            }
            else
            {
                Console.WriteLine("You can only run this program from the AllTheThings Source Code folder relative to your WoW installation.");
            }
        }

        // NOTE: You may be looking at this next part and say to yourself, "But Crieve, why?!?". Simple. It's easier to work with predictable generic types.

        /// <summary>
        /// Convert the data dictionary into a formatted object container.
        /// This will produce a List of objects or a string,object dictionary.
        /// </summary>
        /// <param name="o">The data dictionary.</param>
        /// <returns>A complex List or Dictionary of a predictable format.</returns>
        static object ConvertToObject(Dictionary<object, object> o)
        {
            bool isList = true;
            var keys = o.Keys.ToList();
            keys.Sort();
            foreach (var key in keys)
            {
                if(key.GetType().ToString() == "System.String")
                {
                    isList = false;
                    break;
                }
            }
            if(isList)
            {
                var list = new List<object>();
                foreach(var key in keys)
                {
                    list.Add(o[key]);
                }
                return list;
            }
            else
            {
                var dict = new Dictionary<string, object>();
                foreach (var key in keys)
                {
                    dict[Convert.ToString(key)] = o[key];
                }
                return dict;
            }
        }

        /// <summary>
        /// Parse the lua table into a commonly formatted object container.
        /// </summary>
        /// <param name="table">The raw lua table.</param>
        /// <returns>The object dictionary or null.</returns>
        static object ConvertToMiniJsonFormat(LuaTable table)
        {
            // If the table is invalid, return immediately.
            if (table == null) return null;

            // A dictioonary of generic values is always used.
            var dict = new Dictionary<object, object>();
            foreach (var field in table.Keys)
            {
                var v = table[field];
                switch (v.GetType().ToString())
                {
                    case "NLua.LuaTable":
                    {
                        var t = ConvertToMiniJsonFormat(v as LuaTable);
                        if (t != null) dict[field] = t;
                        break;
                    }
                    case "System.Boolean":
                    case "System.Double":
                    case "System.String":
                    {
                        dict[field] = v;
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            return ConvertToObject(dict);
        }
        
        /// <summary>
        /// Write the table to the string builder with the given indent.
        /// The first indent is ignored, per protocol.
        /// </summary>
        /// <param name="builder">The string builder.</param>
        /// <param name="table">The table.</param>
        /// <param name="indent">The indent.</param>
        static void Print(StringBuilder builder, Dictionary<string, object> table, string indent="")
        {
            // Sort the keys into a forced export order.
            var keys = table.Keys.ToList();
            keys.Sort();

            // We always want the name at the top.
            if (keys.Remove("name")) keys.Insert(0, "name");

            // We always want the subgroups at the bottom.
            if (keys.Remove("groups")) keys.Add("groups");
            if (keys.Remove("g")) keys.Add("g");

            builder.Append('{');
            var index = 0;
            foreach (var key in keys)
            {
                if(index++ > 0) builder.Append(',');
                builder.AppendLine();
                builder.Append(indent).Append('\t').Append("[\"").Append(key).Append("\"] = ");
                Print(builder, table[key], indent + "\t");
            }
            if (index++ > 0)
            {
                builder.AppendLine();
                builder.Append(indent);
            }
            builder.Append('}');
        }

        /// <summary>
        /// Write the list to the string builder with the given indent.
        /// The first indent is ignored, per protocol.
        /// </summary>
        /// <param name="builder">The string builder.</param>
        /// <param name="list">The list.</param>
        /// <param name="indent">The indent.</param>
        static void Print(StringBuilder builder, List<object> list, string indent = "")
        {
            builder.Append('{');
            var index = 0;
            foreach (var entry in list)
            {
                if (index++ > 0) builder.Append(',');
                builder.AppendLine();
                builder.Append(indent + "\t");
                Print(builder, entry, indent + "\t");
            }
            if (index++ > 0)
            {
                builder.AppendLine();
                builder.Append(indent);
            }
            builder.Append('}');
        }

        /// <summary>
        /// Write the object to the string builder with the given indent.
        /// The first indent is ignored, per protocol.
        /// </summary>
        /// <param name="builder">The string builder.</param>
        /// <param name="o">The object.</param>
        /// <param name="indent">The indent.</param>
        static void Print(StringBuilder builder, object o, string indent = "")
        {
            if (o is Dictionary<string, object> subtable)
            {
                Print(builder, subtable, indent);
            }
            else if (o is List<object> list)
            {
                Print(builder, list, indent);
            }
            else if (o is string str)
            {
                builder.Append("\"").Append(o.ToString().Replace("\\\"", "\"").Replace("\"", "\\\"")).Append("\"");
            }
            else
            {
                builder.Append(o);
            }
        }


        /// <summary>
        /// Attempt to sort the table and all of its children.
        /// </summary>
        /// <param name="table">The table.</param>
        static void Sort(Dictionary<string, object> table)
        {
            if (table.TryGetValue("g", out object gRef)) Sort(gRef);
        }

        /// <summary>
        /// Attempt to sort the list and all of its children.
        /// </summary>
        /// <param name="list">The list.</param>
        static void Sort(List<object> list)
        {
            foreach(var o in list)
            {
                Sort(o);
            }
            list.Sort(SortDelegate);
        }

        /// <summary>
        /// Attempt to sort the object and all of its children.
        /// </summary>
        /// <param name="o">The object.</param>
        static void Sort(object o)
        {
            if (o is Dictionary<string, object> subtable)
            {
                Sort(subtable);
            }
            else if (o is List<object> list)
            {
                Sort(list);
            }
        }
        
        /// <summary>
        /// Sort the two objects.
        /// This is super complicated. Sorry.
        /// </summary>
        /// <param name="aObj">The first object.</param>
        /// <param name="bObj">The second object.</param>
        /// <returns>The sort state.</returns>
        static int SortDelegate(object aObj, object bObj)
        {
            // If these aren't objects, don't bother doing anything.
            if (aObj is Dictionary<string, object> a && bObj is Dictionary<string, object> b)
            {
                // Categories
                if (a.TryGetValue("categoryID", out object categoryIDARef))
                {
                    if (b.TryGetValue("categoryID", out object categoryIDBRef))
                    {
                        return 0;
                    }
                    else return 1;
                }
                else if (b.TryGetValue("categoryID", out object categoryIDBRef))
                {
                    return -1;
                }

                // Try to sort by name.
                if (a.TryGetValue("name", out object nameARef) && nameARef is string nameA)
                {
                    if (b.TryGetValue("name", out object nameBRef) && nameBRef is string nameB)
                    {
                        var first = nameA.CompareTo(nameB);
                        if (first == 0)
                        {
                            // Attempt to cache the recipe ID for each.
                            if (a.TryGetValue("recipeID", out object recipeIDARef)
                                && b.TryGetValue("recipeID", out object recipeIDBRef))
                            {
                                long recipeIDA = Convert.ToInt64(recipeIDARef);
                                long recipeIDB = Convert.ToInt64(recipeIDBRef);

                                // Try to figure out rank from the previous/next assignments.
                                if (a.TryGetValue("nextRecipeID", out object altIDRef))
                                {
                                    if (Convert.ToInt64(altIDRef) == recipeIDB) return -1;    // Before
                                }
                                else
                                {
                                    // There isn't a next. That means this is after.
                                    return 1;
                                }

                                if (b.TryGetValue("previousRecipeID", out altIDRef))
                                {
                                    if (Convert.ToInt64(altIDRef) == recipeIDA) return -1;       // Before
                                }
                                else
                                {
                                    // There isn't a next. That means this is after.
                                    return 1;
                                }

                                if (b.TryGetValue("nextRecipeID", out altIDRef))
                                {
                                    if (Convert.ToInt64(altIDRef) == recipeIDA) return 1;       // After
                                }
                                else
                                {
                                    // There isn't a next. That means this is before.
                                    return -1;
                                }



                                if (a.TryGetValue("previousRecipeID", out altIDRef))
                                {
                                    if (Convert.ToInt64(altIDRef) == recipeIDB) return 1;       // After
                                }
                                else
                                {
                                    // There isn't a next. That means this is before.
                                    return -1;
                                }
                            }
                        }
                        return first;
                    }
                }
            }
            return 0;
        }

        /// <summary>
        /// Validate the structure of the table and all of its children.
        /// </summary>
        /// <param name="table">The table.</param>
        /// <returns>Whether or not the table and its children were valid.</returns>
        static bool Validate(Dictionary<string, object> table)
        {
            if (table.TryGetValue("g", out object gRef)) return Validate(gRef);
            return true;
        }

        /// <summary>
        /// Validate the structure of the list and all of its children.
        /// </summary>
        /// <param name="list">The list.</param>
        /// <returns>Whether or not the list and its children were valid.</returns>
        static bool Validate(List<object> list)
        {
            int count = 0;
            foreach (var o in list)
            {
                if (!Validate(o)) return false;
                ++count;
            }
            for (int i = 0; i < count; ++i)
            {
                var currentObject = list[i] as Dictionary<string, object>;
                if (currentObject == null) continue;
                if (currentObject.TryGetValue("g", out object gRef))
                {
                    if(gRef is List<object> g && g.Count < 1)
                    {
                        list.RemoveAt(i);
                        --count;
                        --i;
                    }
                }
            }

            if (count > 0)
            {
                var previousObject = list[0] as Dictionary<string, object>;
                if (previousObject == null) return true;

                // Cache some information about this object.
                long previousRecipeID = 0;
                string previousName = "";
                if (previousObject.TryGetValue("name", out object objRef)) previousName = Convert.ToString(objRef);
                if (previousObject.TryGetValue("recipeID", out objRef)) previousRecipeID = Convert.ToInt64(objRef);

                long currentRecipeID = 0;
                string currentName = null;
                for (int i = 1;i < count; ++i)
                {
                    var currentObject = list[i] as Dictionary<string, object>;
                    if (currentObject == null)
                    {
                        Console.Write("currentObject is null, dummy.");
                        return false;
                    }
                    if (previousObject.TryGetValue("categoryID", out object categoryIDARef))
                    {
                        if (currentObject.TryGetValue("categoryID", out object categoryIDBRef))
                        {
                            previousObject = currentObject;
                            continue;
                        }
                        else
                        {
                            previousObject = currentObject;
                            continue;
                        }
                    }
                    else if (currentObject.TryGetValue("categoryID", out object categoryIDBRef))
                    {
                        previousObject = currentObject;
                        continue;
                    }
                    if (currentObject.TryGetValue("name", out objRef))
                    {
                        currentName = Convert.ToString(objRef);
                        var first = previousName.CompareTo(currentName);
                        if (first == 0)
                        {
                            // Attempt to cache the recipe ID for each.
                            if (currentObject.TryGetValue("recipeID", out objRef))
                            {
                                currentRecipeID = Convert.ToInt64(objRef);

                                // If this is the same recipe as the other one, yell at blizzard.
                                if(currentRecipeID == previousRecipeID)
                                {
                                    foreach(var pair in currentObject)
                                    {
                                        previousObject[pair.Key] = pair.Value;
                                    }
                                    Console.Write("Delete ");
                                    Console.Write(i);
                                    Console.Write(": ");
                                    Console.WriteLine();
                                    Console.WriteLine(MiniJSON.Json.Serialize(previousObject));
                                    Console.WriteLine(MiniJSON.Json.Serialize(currentObject));
                                    list.RemoveAt(i);
                                    --count;
                                    --i;
                                    continue;
                                }

                                // Try to figure out rank from the previous/next assignments.
                                if (previousObject.TryGetValue("nextRecipeID", out objRef))
                                {
                                    if (Convert.ToInt64(objRef) != currentRecipeID)
                                    {
                                        Console.Write("Not nextRecipeID: ");
                                        Console.Write(Convert.ToInt64(objRef));
                                        Console.Write(" ~= ");
                                        Console.Write(currentRecipeID);
                                        Console.WriteLine("!");
                                        Console.WriteLine(MiniJSON.Json.Serialize(previousObject));
                                        Console.WriteLine(MiniJSON.Json.Serialize(currentObject));
                                        return false;
                                    }
                                }
                            }
                            else
                            {
                                currentRecipeID = 0;
                            }

                            if (currentObject.TryGetValue("previousRecipeID", out objRef))
                            {
                                if (Convert.ToInt64(objRef) != previousRecipeID)
                                {
                                    Console.Write("Not previousRecipeID: ");
                                    Console.Write(Convert.ToInt64(objRef));
                                    Console.Write(" ~= ");
                                    Console.Write(previousRecipeID);
                                    Console.WriteLine("!");
                                    Console.WriteLine(MiniJSON.Json.Serialize(previousObject));
                                    Console.WriteLine(MiniJSON.Json.Serialize(currentObject));
                                    return false;
                                }
                            }
                        }
                        else if(first == 1)
                        {
                            Console.WriteLine("Not alphabetical!");
                            Console.WriteLine(MiniJSON.Json.Serialize(previousObject));
                            Console.WriteLine(MiniJSON.Json.Serialize(currentObject));
                            return false;
                        }
                        else if(currentObject.TryGetValue("recipeID", out objRef))
                        {
                            currentRecipeID = Convert.ToInt64(objRef);
                        }
                        else
                        {
                            currentRecipeID = 0;
                        }
                    }
                    else
                    {
                        currentName = "";
                        currentRecipeID = 0;
                    }

                    // Update references
                    previousRecipeID = currentRecipeID;
                    previousObject = currentObject;
                    previousName = currentName;
                }
            }
            return true;
        }

        /// <summary>
        /// Validate the structure of the object and all of its children.
        /// </summary>
        /// <param name="o">The object.</param>
        /// <returns>Whether or not the object and its children were valid.</returns>
        static bool Validate(object o)
        {
            if (o is Dictionary<string, object> subtable)
            {
                return Validate(subtable);
            }
            else if (o is List<object> list)
            {
                return Validate(list);
            }
            return true;
        }
    }
}
