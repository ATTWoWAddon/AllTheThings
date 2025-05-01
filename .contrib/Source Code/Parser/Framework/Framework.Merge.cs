using ATT.DB;
using ATT.DB.Types;
using NLua;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace ATT
{
    // ATT framework extension for data merge operations
    partial class Framework
    {
        /// <summary>
        /// Merge the contents of the lua table into the database.
        /// If the keys are whitelisted, then the data will be added.
        /// </summary>
        /// <param name="lua">The lua context.</param>
        /// <param name="table">The raw lua table.</param>
        public static void Merge(LuaTable table)
        {
            // Parse the contents of the table into a generic object.
            var dict = ParseAsStringDictionary(table);
            if (dict == null) return;

            // Iterate through the pairs and determine what goes where.
            foreach (var pair in dict)
            {
                switch (pair.Key)
                {
                    case "Exports":
                        {
                            if (pair.Value is IDictionary<string, object> exportDB)
                            {
                                foreach (var kvp in exportDB)
                                {
                                    Exports[kvp.Key] = kvp.Value;
                                }
                            }
                            else
                            {
                                ThrowBadFormatDB(pair.Key);
                            }
                            break;
                        }
                    case "IllusionDB":
                        {
                            LogError("IllusionDB not supported. Please use 'ItemDBConditional' and parser.config to assign Illusion objects.");
                            Log(CurrentFileName);
                            break;
                        }
                    case "ItemDB":
                        {
                            // The format of the Item DB is a dictionary of item ID -> Values.
                            // This is slightly more annoying to parse, but it works okay.
                            if (pair.Value is Dictionary<long, object> itemDB)
                            {
                                foreach (var itemValuePair in itemDB)
                                {
                                    MergeKvpToItemDB(itemValuePair);
                                }
                            }
                            else if (pair.Value is Dictionary<decimal, object> modItemDB)
                            {
                                foreach (var itemValuePair in modItemDB)
                                {
                                    MergeKvpToItemDB(itemValuePair);
                                }
                            }
                            else if (pair.Value is List<object> items)
                            {
                                foreach (var o in items)
                                {
                                    if (o is IDictionary<string, object> item)
                                    {
                                        Items.MergeFromDB(item);
                                    }
                                    else
                                    {
                                        ThrowBadFormatDB("ItemDB", o);
                                    }
                                }
                            }
                            else
                            {
                                ThrowBadFormatDB("ItemDB");
                            }
                        }
                        break;
                    case "ItemDBConditional":
                        {
                            // The format of the Item DB is a dictionary of item ID -> Values.
                            // This is slightly more annoying to parse, but it works okay.
                            if (pair.Value is Dictionary<long, object> itemDB)
                            {
                                foreach (var itemValuePair in itemDB)
                                {
                                    MergeKvpToConditionalData(itemValuePair);
                                }
                            }
                            else if (pair.Value is Dictionary<decimal, object> modItemDB)
                            {
                                foreach (var itemValuePair in modItemDB)
                                {
                                    MergeKvpToConditionalData(itemValuePair);
                                }
                            }
                            else if (pair.Value is List<object> items)
                            {
                                foreach (var o in items)
                                {
                                    if (o is IDictionary<string, object> item)
                                    {
                                        Objects.MergeFromDB("itemID", item);
                                        ConditionalItemData.Add(item);
                                    }
                                    else
                                    {
                                        ThrowBadFormatDB("ItemDBConditional", o);
                                    }
                                }
                            }
                            else
                            {
                                ThrowBadFormatDB("ItemDBConditional");
                            }
                        }
                        break;
                    case "Items.SOURCES":
                        {
                            if (pair.Value is Dictionary<decimal, object> db)
                            {
                                db.AsParallel().ForAll(Items.AddItemSourceID);
                            }
                            else if (pair.Value is Dictionary<long, object> longdb)
                            {
                                longdb.AsParallel().ForAll(Items.AddItemSourceID);
                            }
                            else
                            {
                                ThrowBadFormatDB(pair.Key, pair);
                            }
                        }
                        break;
                    case "RecipeDB":
                        MergeRecipeDB(pair.Value);
                        break;
                    case "SpellDB":
                        MergeSpellDB(pair.Value);
                        break;
                    case "ItemSpeciesDB":
                        {
                            // The format of the Item Species DB is a dictionary of item ID -> Values.
                            // This is slightly more annoying to parse, but it works okay.
                            if (pair.Value is Dictionary<long, object> itemDB)
                            {
                                foreach (var itemValuePair in itemDB)
                                {
                                    if (itemValuePair.Value is IDictionary<string, object> item)
                                    {
                                        var itemSpecies = Items.GetWithSpecies(itemValuePair.Key);
                                        foreach (var p in item) Items.Merge(itemSpecies, p.Key, p.Value);
                                    }
                                    else
                                    {
                                        ThrowBadFormatDB("ItemSpeciesDB", itemValuePair);
                                    }
                                }
                            }
                            else
                            {
                                ThrowBadFormatDB("ItemSpeciesDB");
                            }
                            break;
                        }
                    case "ItemToyDB":
                        {
                            LogError("ItemToyDB not supported. Please use 'ItemDBConditional' and parser.config to assign Toy objects.");
                            Log(CurrentFileName);
                            break;
                        }
                    case "AchievementData":
                        {
                            // The format of the Achievement Data DB is a dictionary of Achievement Data ID <-> Achievement pairs.
                            if (pair.Value is Dictionary<long, object> db)
                            {
                                foreach (var keyValuePair in db)
                                {
                                    if (keyValuePair.Value is Dictionary<string, object> data)
                                    {
                                        if (!AchievementData.TryGetValue(keyValuePair.Key, out Dictionary<string, object> dataEntry))
                                        {
                                            AchievementData[keyValuePair.Key] = dataEntry = new Dictionary<string, object>();
                                        }

                                        // Merge over the complex text data.
                                        if (data.TryGetValue("text", out object textObject))
                                        {
                                            data.Remove("text");
                                            if (textObject is Dictionary<string, object> textLocales)
                                            {
                                                if (dataEntry.TryGetValue("text", out textObject) && textObject is Dictionary<string, object> currentTextLocales)
                                                {
                                                    foreach (var textObjectPair in textLocales)
                                                    {
                                                        currentTextLocales[textObjectPair.Key] = textObjectPair.Value;
                                                    }
                                                }
                                                else dataEntry["text"] = textLocales;
                                            }
                                            else
                                            {
                                                dataEntry["text"] = new Dictionary<string, object>
                                                {
                                                    { "en", textObject }
                                                };
                                            }
                                        }

                                        // Merge over the complex text data.
                                        if (data.TryGetValue("description", out textObject))
                                        {
                                            data.Remove("description");
                                            if (textObject is Dictionary<string, object> textLocales)
                                            {
                                                if (dataEntry.TryGetValue("description", out textObject) && textObject is Dictionary<string, object> currentTextLocales)
                                                {
                                                    foreach (var textObjectPair in textLocales)
                                                    {
                                                        currentTextLocales[textObjectPair.Key] = textObjectPair.Value;
                                                    }
                                                }
                                                else dataEntry["description"] = textLocales;
                                            }
                                            else
                                            {
                                                dataEntry["description"] = new Dictionary<string, object>
                                                {
                                                    { "en", textObject }
                                                };
                                            }
                                        }

                                        // Merge over simple data. (a simple replace is fine)
                                        foreach (var dataPair in data)
                                        {
                                            dataEntry[dataPair.Key] = dataPair.Value;
                                        }
                                    }
                                    else
                                    {
                                        ThrowBadFormatDB("AchievementData", keyValuePair);
                                    }
                                }
                            }
                            break;
                        }
                    case "AchievementCategoryData":
                        {
                            // The format of the Achievement Category Data DB is a dictionary of Achievement Category Data ID <-> Achievement Category pairs.
                            if (pair.Value is Dictionary<long, object> db)
                            {
                                foreach (var keyValuePair in db)
                                {
                                    if (keyValuePair.Value is Dictionary<string, object> data)
                                    {
                                        if (!AchievementCategoryData.TryGetValue(keyValuePair.Key, out Dictionary<string, object> dataEntry))
                                        {
                                            AchievementCategoryData[keyValuePair.Key] = dataEntry = new Dictionary<string, object>();
                                        }

                                        // Merge over the complex text data.
                                        if (data.TryGetValue("text", out object textObject))
                                        {
                                            data.Remove("text");
                                            if (textObject is Dictionary<string, object> textLocales)
                                            {
                                                if (dataEntry.TryGetValue("text", out textObject) && textObject is Dictionary<string, object> currentTextLocales)
                                                {
                                                    foreach (var textObjectPair in textLocales)
                                                    {
                                                        currentTextLocales[textObjectPair.Key] = textObjectPair.Value;
                                                    }
                                                }
                                                else dataEntry["text"] = textLocales;
                                            }
                                            else
                                            {
                                                dataEntry["text"] = new Dictionary<string, object>
                                                {
                                                    { "en", textObject }
                                                };
                                            }
                                        }

                                        // Merge over simple data. (a simple replace is fine)
                                        foreach (var dataPair in data)
                                        {
                                            dataEntry[dataPair.Key] = dataPair.Value;
                                        }
                                    }
                                    else
                                    {
                                        ThrowBadFormatDB("AchievementCategoryData", keyValuePair);
                                    }
                                }
                            }
                            break;
                        }
                    case "CategoryDB":
                        {
                            // The format of the Category DB is a dictionary of Category ID <-> Category pairs.
                            if (pair.Value is Dictionary<long, object> db)
                            {
                                foreach (var keyValuePair in db)
                                {
                                    if (keyValuePair.Value is Dictionary<string, object> data)
                                    {
                                        if (!CategoryDB.TryGetValue(keyValuePair.Key, out Dictionary<string, object> dataEntry))
                                        {
                                            CategoryDB[keyValuePair.Key] = dataEntry = new Dictionary<string, object>();
                                        }

                                        // Merge over the complex text data.
                                        if (data.TryGetValue("text", out object textObject))
                                        {
                                            data.Remove("text");
                                            if (textObject is Dictionary<string, object> textLocales)
                                            {
                                                if (dataEntry.TryGetValue("text", out textObject) && textObject is Dictionary<string, object> currentTextLocales)
                                                {
                                                    foreach (var textObjectPair in textLocales)
                                                    {
                                                        currentTextLocales[textObjectPair.Key] = textObjectPair.Value;
                                                    }
                                                }
                                                else dataEntry["text"] = textLocales;
                                            }
                                            else
                                            {
                                                dataEntry["text"] = new Dictionary<string, object>
                                                {
                                                    { "en", textObject }
                                                };
                                            }
                                        }

                                        // Merge over simple data. (a simple replace is fine)
                                        foreach (var dataPair in data)
                                        {
                                            dataEntry[dataPair.Key] = dataPair.Value;
                                        }
                                    }
                                    else
                                    {
                                        ThrowBadFormatDB("CategoryDB", keyValuePair);
                                    }
                                }
                            }
                            else
                            {
                                ThrowBadFormatDB("CategoryDB");
                            }
                            break;
                        }
                    case "CategoryIcons":   // Deprecated
                        {
                            // The format of the Category Icons DB is a dictionary of Category ID <-> Icon pairs.
                            if (pair.Value is Dictionary<long, object> CategoryIcons)
                            {
                                foreach (var categoryPair in CategoryIcons)
                                {
                                    // KEY: Category ID, VALUE: Icon
                                    if (categoryPair.Value is string icon)
                                    {
                                        if (CategoryDB.TryGetValue(categoryPair.Key, out Dictionary<string, object> categoryData))
                                        {
                                            categoryData["icon"] = icon;
                                        }
                                        else CategoryDB[categoryPair.Key] = new Dictionary<string, object>
                                        {
                                            { "icon", icon }
                                        };
                                    }
                                }
                            }
                            break;
                        }
                    case "CategoryNames":   // Deprecated
                        {
                            // The format of the Category Names DB is a dictionary of Category ID <-> Name pairs.
                            if (pair.Value is Dictionary<long, object> CategoryNames)
                            {
                                foreach (var categoryPair in CategoryNames)
                                {
                                    // KEY: Category ID, VALUE: Text
                                    if (categoryPair.Value is string name)
                                    {
                                        if (CategoryDB.TryGetValue(categoryPair.Key, out Dictionary<string, object> categoryData))
                                        {
                                            if (!categoryData.ContainsKey("readable")) categoryData["readable"] = name;
                                            if (categoryData.TryGetValue("text", out object textObject))
                                            {
                                                if (textObject is Dictionary<string, object> locale && !locale.ContainsKey("en"))
                                                {
                                                    locale["en"] = name;
                                                }
                                            }
                                            else
                                            {
                                                categoryData["text"] = new Dictionary<string, object>
                                                {
                                                    { "en", name }
                                                };
                                            }
                                        }
                                        else CategoryDB[categoryPair.Key] = new Dictionary<string, object>
                                        {
                                            { "readable", name },
                                            { "text",
                                                new Dictionary<string, object> {
                                                    { "en", name }
                                                }
                                            }
                                        };
                                    }
                                }
                            }
                            break;
                        }
                    case "FilterDB":
                        {
                            // The format of the Filter DB is a dictionary of Filter ID <-> Filter pairs.
                            if (pair.Value is Dictionary<long, object> db)
                            {
                                foreach (var keyValuePair in db)
                                {
                                    if (keyValuePair.Value is Dictionary<string, object> data)
                                    {
                                        if (!FilterDB.TryGetValue(keyValuePair.Key, out Dictionary<string, object> dataEntry))
                                        {
                                            FilterDB[keyValuePair.Key] = dataEntry = new Dictionary<string, object>();
                                        }

                                        // Merge over the complex text data.
                                        if (data.TryGetValue("text", out object textObject))
                                        {
                                            data.Remove("text");
                                            if (textObject is Dictionary<string, object> textLocales)
                                            {
                                                if (dataEntry.TryGetValue("text", out textObject) && textObject is Dictionary<string, object> currentTextLocales)
                                                {
                                                    foreach (var textObjectPair in textLocales)
                                                    {
                                                        currentTextLocales[textObjectPair.Key] = textObjectPair.Value;
                                                    }
                                                }
                                                else dataEntry["text"] = textLocales;
                                            }
                                            else
                                            {
                                                dataEntry["text"] = textLocales = new Dictionary<string, object>
                                                {
                                                    { "en", textObject }
                                                };
                                            }
                                        }

                                        // Explicitly mark a thing as an export
                                        if (data.TryGetValue("export", out object value) && (bool)value)
                                        {
                                            FILTERS_WITH_REFERENCES[keyValuePair.Key] = true;
                                        }

                                        // Merge over simple data. (a simple replace is fine)
                                        foreach (var dataPair in data)
                                        {
                                            dataEntry[dataPair.Key] = dataPair.Value;
                                        }
                                    }
                                    else
                                    {
                                        ThrowBadFormatDB("FilterDB", keyValuePair);
                                    }
                                }
                            }
                            else
                            {
                                ThrowBadFormatDB("FilterDB");
                            }
                            break;
                        }
                    case "FlightPathDB":
                        {
                            // The format of the Object DB is a dictionary of Flight Path ID <-> Flight Path pairs.
                            if (pair.Value is Dictionary<long, object> db)
                            {
                                foreach (var keyValuePair in db)
                                {
                                    if (keyValuePair.Value is Dictionary<string, object> data)
                                    {
                                        if (!FlightPathDB.TryGetValue(keyValuePair.Key, out Dictionary<string, object> dataEntry))
                                        {
                                            FlightPathDB[keyValuePair.Key] = dataEntry = new Dictionary<string, object>();
                                        }

                                        // Merge over the complex text data.
                                        if (data.TryGetValue("text", out object textObject))
                                        {
                                            data.Remove("text");
                                            if (textObject is Dictionary<string, object> textLocales)
                                            {
                                                if (dataEntry.TryGetValue("text", out textObject) && textObject is Dictionary<string, object> currentTextLocales)
                                                {
                                                    foreach (var textObjectPair in textLocales)
                                                    {
                                                        currentTextLocales[textObjectPair.Key] = textObjectPair.Value;
                                                    }
                                                }
                                                else dataEntry["text"] = textLocales;
                                            }
                                            else
                                            {
                                                dataEntry["text"] = new Dictionary<string, object>
                                                {
                                                    { "en", textObject }
                                                };
                                            }
                                        }

                                        // Merge over simple data. (a simple replace is fine)
                                        foreach (var dataPair in data)
                                        {
                                            dataEntry[dataPair.Key] = dataPair.Value;
                                        }
                                    }
                                    else
                                    {
                                        ThrowBadFormatDB("FlightPathDB", keyValuePair);
                                    }
                                }
                            }
                            else
                            {
                                ThrowBadFormatDB("FlightPathDB");
                            }
                            break;
                        }
                    case "GlyphDB":
                        {
                            // The format of the Glyph DB is a dictionary of Glyph ID <-> Spell ID pairs.
                            if (pair.Value is Dictionary<long, object> db)
                            {
                                foreach (var keyValuePair in db)
                                {
                                    GlyphDB[keyValuePair.Key] = Convert.ToInt64(keyValuePair.Value);
                                }
                            }
                            break;
                        }
                    case "ItemAppearanceModifierIDs_BonusID":
                        {
                            // The format of the ItemAppearanceModifierIDs table is a dictionary of Bonus ID <-> ItemAppearanceModifierID pairs.
                            if (pair.Value is Dictionary<long, object> db)
                            {
                                foreach (var keyValuePair in db)
                                {
                                    ItemAppearanceModifierIDs_BonusID[keyValuePair.Key] = Convert.ToInt64(keyValuePair.Value);
                                }
                            }
                            break;
                        }
                    case "ItemAppearanceModifierIDs_ModID":
                        {
                            // The format of the ItemAppearanceModifierIDs table is a dictionary of Mod ID <-> ItemAppearanceModifierID pairs.
                            if (pair.Value is Dictionary<long, object> db)
                            {
                                foreach (var keyValuePair in db)
                                {
                                    ItemAppearanceModifierIDs_ModID[keyValuePair.Key] = Convert.ToInt64(keyValuePair.Value);
                                }
                            }
                            break;
                        }
                    case "ObjectDB":
                        {
                            // The format of the Object DB is a dictionary of Object ID <-> Object pairs.
                            if (pair.Value is Dictionary<long, object> db)
                            {
                                foreach (var keyValuePair in db)
                                {
                                    if (keyValuePair.Value is Dictionary<string, object> data)
                                    {
                                        if (!ObjectDB.TryGetValue(keyValuePair.Key, out Dictionary<string, object> dataEntry))
                                        {
                                            ObjectDB[keyValuePair.Key] = dataEntry = new Dictionary<string, object>();
                                        }

                                        // Merge over the complex text data.
                                        if (data.TryGetValue("text", out object textObject))
                                        {
                                            data.Remove("text");
                                            if (textObject is Dictionary<string, object> textLocales)
                                            {
                                                if (dataEntry.TryGetValue("text", out textObject) && textObject is Dictionary<string, object> currentTextLocales)
                                                {
                                                    foreach (var textObjectPair in textLocales)
                                                    {
                                                        currentTextLocales[textObjectPair.Key] = textObjectPair.Value;
                                                    }
                                                }
                                                else dataEntry["text"] = textLocales;
                                            }
                                            else
                                            {
                                                dataEntry["text"] = new Dictionary<string, object>
                                                {
                                                    { "en", textObject }
                                                };
                                            }
                                        }

                                        // Merge over simple data. (a simple replace is fine)
                                        foreach (var dataPair in data)
                                        {
                                            dataEntry[dataPair.Key] = dataPair.Value;
                                        }
                                    }
                                    else
                                    {
                                        ThrowBadFormatDB("ObjectDB", keyValuePair);
                                    }
                                }
                            }
                            else
                            {
                                ThrowBadFormatDB("ObjectDB");
                            }
                            break;
                        }
                    case "ObjectIcons":   // Deprecated
                        {
                            // The format of the Object Icons DB is a dictionary of Object ID <-> Icon pairs.
                            if (pair.Value is Dictionary<long, object> ObjectIcons)
                            {
                                foreach (var categoryPair in ObjectIcons)
                                {
                                    // KEY: Object ID, VALUE: Icon
                                    if (categoryPair.Value is string name)
                                    {
                                        if (ObjectDB.TryGetValue(categoryPair.Key, out Dictionary<string, object> objectData))
                                        {
                                            objectData["icon"] = name;
                                        }
                                        else ObjectDB[categoryPair.Key] = new Dictionary<string, object>
                                        {
                                            { "icon", name }
                                        };
                                    }
                                }
                            }
                            break;
                        }
                    case "ObjectModels":   // Deprecated
                        {
                            // The format of the Object Models DB is a dictionary of Object ID <-> Model ID pairs.
                            if (pair.Value is Dictionary<long, object> ObjectModels)
                            {
                                foreach (var categoryPair in ObjectModels)
                                {
                                    // KEY: Object ID, VALUE: Model ID
                                    if (categoryPair.Value is long modelID)
                                    {
                                        if (ObjectDB.TryGetValue(categoryPair.Key, out Dictionary<string, object> objectData))
                                        {
                                            objectData["model"] = modelID;
                                        }
                                        else ObjectDB[categoryPair.Key] = new Dictionary<string, object>
                                        {
                                            { "model", modelID }
                                        };
                                    }
                                }
                            }
                            break;
                        }
                    case "ObjectNames":   // Deprecated
                        {
                            // The format of the Object Names DB is a dictionary of Object ID <-> Name pairs.
                            if (pair.Value is Dictionary<long, object> ObjectNames)
                            {
                                foreach (var categoryPair in ObjectNames)
                                {
                                    // KEY: Object ID, VALUE: Name
                                    if (categoryPair.Value is string name)
                                    {
                                        if (ObjectDB.TryGetValue(categoryPair.Key, out Dictionary<string, object> objectData))
                                        {
                                            if (!objectData.ContainsKey("readable")) objectData["readable"] = name;
                                            if (objectData.TryGetValue("text", out object textObject))
                                            {
                                                if (textObject is Dictionary<string, object> locale && !locale.ContainsKey("en"))
                                                {
                                                    locale["en"] = name;
                                                }
                                            }
                                            else
                                            {
                                                objectData["text"] = new Dictionary<string, object>
                                                {
                                                    { "en", name }
                                                };
                                            }
                                        }
                                        else ObjectDB[categoryPair.Key] = new Dictionary<string, object>
                                        {
                                            { "readable", name },
                                            { "text",
                                                new Dictionary<string, object> {
                                                    { "en", name }
                                                }
                                            }
                                        };
                                    }
                                }
                            }
                            break;
                        }
                    case "ObjectNamesForLocales":   // Deprecated
                        {
                            // The format of the Object Names DB is a dictionary of Locale <-> { Object ID <-> Name pairs }.
                            if (pair.Value is Dictionary<string, object> ObjectNamesForLocales)
                            {
                                foreach (var localePair in ObjectNamesForLocales)
                                {
                                    if (localePair.Value is Dictionary<long, object> ObjectNames)
                                    {
                                        foreach (var categoryPair in ObjectNames)
                                        {
                                            // KEY: Object ID, VALUE: Name
                                            if (categoryPair.Value is string name)
                                            {
                                                if (ObjectDB.TryGetValue(categoryPair.Key, out Dictionary<string, object> objectData))
                                                {
                                                    if (objectData.TryGetValue("text", out object textObject))
                                                    {
                                                        if (textObject is Dictionary<string, object> locale && !locale.ContainsKey(localePair.Key))
                                                        {
                                                            locale[localePair.Key] = name;
                                                        }
                                                    }
                                                    else
                                                    {
                                                        objectData["text"] = new Dictionary<string, object>
                                                        {
                                                            { localePair.Key, name }
                                                        };
                                                    }
                                                }
                                                else ObjectDB[categoryPair.Key] = new Dictionary<string, object>
                                                {
                                                    { "text",
                                                        new Dictionary<string, object> {
                                                            { localePair.Key, name }
                                                        }
                                                    }
                                                };
                                            }
                                        }
                                    }
                                }
                            }
                            break;
                        }
                    case "AchievementDB":
                        MergeAchievementDB(pair.Value);
                        break;
                    default:
                        {
                            // Get the object container for this section.
                            List<object> list = null;
                            if (pair.Value is List<object> list2)
                            {
                                list = list2;
                            }
                            else if (pair.Value is IDictionary<string, object> data)
                            {
                                list = data.Values.ToList();
                            }
                            else if (pair.Value is Dictionary<long, object> ignoredKeys)
                            {
                                list = ignoredKeys.Values.ToList();
                            }
                            if (list != null)
                            {
                                if (list.Any()) Objects.Merge(Objects.Get(ATT.Export.ToString(pair.Key)), list);
                            }
                            else
                            {
                                throw new Exception($"Invalid Container format: {pair.Key}:{ToJSON(pair.Value)}");
                            }
                            break;
                        }
                }
            }
        }

        private static void ThrowBadFormatDB(string name, object obj = null)
        {
            throw new InvalidDataException($"{CurrentFileName}{Environment.NewLine}{name} not in the correct format! ==> {ToJSON(obj)}");
        }

        private static void MergeKvpToConditionalData<TKey>(KeyValuePair<TKey, object> itemValuePair)
        {
            if (itemValuePair.Value is IDictionary<string, object> item)
            {
                item["itemID"] = itemValuePair.Key;
                Objects.MergeFromDB("itemID", item);
                ConditionalItemData.Add(item);
            }
            else
            {
                ThrowBadFormatDB("ItemConditionalDB", itemValuePair);
            }
        }

        private static void MergeKvpToItemDB<TKey>(KeyValuePair<TKey, object> itemValuePair)
        {
            if (itemValuePair.Value is IDictionary<string, object> item)
            {
                item["itemID"] = itemValuePair.Key;
                Items.MergeFromDB(item);
            }
            else
            {
                ThrowBadFormatDB("ItemDB", itemValuePair);
            }
        }

        static object ParseAsObject(LuaTable table)
        {
            if (table.Keys.Count > 0)
            {
                // Determine most-necessary key type
                bool useDecimal = false, useLong = false;
                var keyList = new List<object>();
                foreach (var key in table.Keys)
                {
                    var keyType = key.GetType();
                    if (keyType == typeof(string))
                    {
                        if (table[key].GetType() == typeof(LuaFunction)) continue;
                        return ParseAsStringDictionary(table);
                    }
                    else if (!useDecimal && keyType.IsDecimal())
                    {
                        useDecimal = true;
                    }
                    else if (!useDecimal && !useLong && keyType.IsNumeric())
                    {
                        useLong = true;
                    }
                    keyList.Add(key);
                }
                //keyList.Sort();

                // Determine if we're dealing with a <long,object> dictionary.
                for (int i = 1; i <= keyList.Count; ++i)
                {
                    var key = keyList[i - 1];
                    if (key.TryConvert(out int index) && (index != i || index > keyList.Count))
                    {
                        if (useDecimal)
                        {
                            return ParseAsDictionary<decimal>(table);
                        }
                        else
                        {
                            return ParseAsDictionary<long>(table);
                        }
                    }
                }

                // Create an ordered list from the table.
                var list = new List<object>();
                foreach (var key in keyList)
                {
                    list.Add(ParseObject(table[key], key));
                }
                return list;
            }

            return new List<object>();
        }

        internal static void ParseWagoCsv(string type, string csv)
        {
            TypeDB[type] = WagoTypes.ParseCsvType(type, csv);

            // CriteriaTree creates parent mapping one-time
            if (type == nameof(CriteriaTree))
            {
                CollectObjectsByValue<CriteriaTree>(type, (se) => se.Parent);
            }
            // ItemModifiedAppearance creates ItemID mapping one-time
            if (type == nameof(ItemModifiedAppearance))
            {
                CollectObjectsByValue<ItemModifiedAppearance>(type, (se) => se.ItemID);
            }
            // ItemEffect creates SpellID mapping one-time
            if (type == nameof(ItemEffect))
            {
                CollectObjectsByValue<ItemEffect>(type, (se) => se.SpellID);
            }
            // ItemXItemEffect creates ItemID mapping one-time
            if (type == nameof(ItemXItemEffect))
            {
                CollectObjectsByValue<ItemXItemEffect>(type, (se) => se.ItemID);
            }
            // ModifierTree creates parent mapping one-time
            if (type == nameof(ModifierTree))
            {
                CollectObjectsByValue<ModifierTree>(type, (se) => se.Parent);
            }
            // SpellEffect creates SpellID mapping one-time
            if (type == nameof(SpellEffect))
            {
                CollectObjectsByValue<SpellEffect>(type, (se) => se.SpellID);
            }
            // TransmogSet creates QuestID mapping one-time
            if (type == nameof(TransmogSet))
            {
                CollectObjectsByValue<TransmogSet>(type, (se) => se.TrackingQuestID);
            }
            // TransmogSetItem creates TransmogSetID mapping one-time
            if (type == nameof(TransmogSetItem))
            {
                CollectObjectsByValue<TransmogSetItem>(type, (se) => se.TransmogSetID);
                CollectObjectsByValue<TransmogSetItem>(type, (se) => se.ItemModifiedAppearanceID, nameof(TransmogSetItem.ItemModifiedAppearanceID));
            }
        }

        private static void CollectObjectsByValue<T>(string type, Func<T, long> valueFunc, string subname = null)
            where T : IDBType
        {
            IDictionary<long, IDBType> db = TypeDB[type];
            Dictionary<long, IDBType> group = new Dictionary<long, IDBType>();
            TypeDB[type + (subname ?? nameof(TypeCollection<T>))] = group;

            foreach (T obj in db.Values.AsTypedEnumerable<T>())
            {
                long groupID = valueFunc(obj);
                if (groupID != 0)
                {
                    if (!(group.TryGetValue(groupID, out IDBType groupDB) && groupDB is TypeCollection<T> groupCollection))
                    {
                        group[groupID] = groupCollection = new TypeCollection<T>();
                    }

                    groupCollection.Collection.Add(obj);
                }
            }
        }

        public static Dictionary<TKey, object> ParseAsDictionary<TKey>(LuaTable table)
        {
            var dict = new Dictionary<TKey, object>();
            foreach (var key in table.Keys)
            {
                if (key.TryConvert(out TKey tKey))
                {
                    dict[tKey] = ParseObject(table[key], key);
                }
                else
                {
                    LogError($"Failed to convert {key} to type {typeof(TKey).GetType().Name}");
                }
            }
            return dict;
        }

        public static IDictionary<string, object> ParseAsStringDictionary(LuaTable table)
        {
            var dict = new Dictionary<string, object>();
            foreach (var key in table.Keys) dict[ConvertFieldName(key.ToString())] = ParseObject(table[key], key);
            return dict;
        }

        static object ParseObject(object data, object key)
        {
            switch (data.GetType().ToString())
            {
                case "NLua.LuaTable":
                    {
                        return ParseAsObject(data as LuaTable);
                    }
                case "System.Boolean":
                case "System.Double":
                case "System.Int32":
                case "System.Int64":
                case "System.String":
                    {
                        return data;
                    }
                case "NLua.LuaFunction":
                    {
                        Log($" {key} ({data.GetType()}): {data.GetType().FullName}");
                        LogWarn("Functions are not directly supported at this time. Please use a [[ ]] surrounded string.");
                        break;
                    }
                default:
                    {
                        Log($" ({data.GetType()}): ");
                        LogWarn(data.GetType().FullName, data);
                        break;
                    }
            }
            return null;
        }

        /// <summary>
        /// Merge the data into the database.
        /// </summary>
        /// <param name="listing">The listing.</param>
        public static void MergeFromDB(List<object> listing)
        {
            foreach (var o in listing)
            {
                if (o is IDictionary<string, object> entry)
                {
                    Items.MergeFromDB(entry);
                }
            }
        }

        /// <summary>
        /// Merge the data into the database.
        /// </summary>
        /// <param name="data">The data.</param>
        public static void Merge(IDictionary<string, object> data)
        {
            // Make use of this data and attempt to load it into the database.
            // First check to see if the JSON data is a container for a specific type of object.

            // Are we dealing with an Items Database section?
            if (data.TryGetValue("items", out List<object> listing))
            {
                MergeFromDB(listing);
            }

            // Are we dealing with a Mounts Database section?
            if (data.TryGetValue("mounts", out listing))
            {
                MergeFromDB(listing);
            }

            // Are we dealing with a Quests Database section?
            if (data.TryGetValue("questDB", out IDictionary<string, object> questDB))
            {
                foreach (var pair in questDB)
                {
                    if (pair.Value is IDictionary<string, object> dict)
                    {
                        long questID = Convert.ToInt64(pair.Key);
                        if (!QUESTS.TryGetValue(questID, out IDictionary<string, object> quest))
                        {
                            QUESTS[questID] = quest = new Dictionary<string, object>();
                        }
                        foreach (var key in dict)
                        {
                            if (key.Key == "text")
                            {
                                quest["_text"] = key.Value;
                            }
                            else
                            {
                                quest[key.Key] = key.Value;
                            }
                        }
                    }
                }
            }

            // Are we dealing with an API Quests Database section?
            if (data.TryGetValue("quests", out List<object> quests))
            {
                foreach (var quest in quests)
                {
                    if (quest is IDictionary<string, object> dict)
                    {
                        if (dict.TryGetValue("questID", out long questID))
                        {
                            if (!QUESTS.TryGetValue(questID, out IDictionary<string, object> cachedQuest))
                            {
                                QUESTS[questID] = cachedQuest = new Dictionary<string, object>();
                            }

                            foreach (var key in dict)
                            {
                                cachedQuest[key.Key] = key.Value;
                            }
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Merges some enumerable set of data, where each piece is an <see cref="IDictionary"/> containing an 'achID'[long] key value
        /// </summary>
        public static void MergeAchievementDB(object data, bool onlyNew = false)
        {
            // The format of the Achievement DB is a dictionary of Achievement ID <-> Name pairs.
            var dataList = Objects.CompressToList<object>(data);
            if (dataList == null)
            {
                ThrowBadFormatDB("AchievementDB");
                return;
            }

            foreach (var achieveInfo in dataList)
            {
                // KEY: Achievement ID, VALUE: Dictionary
                if (achieveInfo is IDictionary<string, object> info && (info.TryGetValue("achID", out long achID) || info.TryGetValue("achievementID", out achID)))
                {
                    if (ACHIEVEMENTS.TryGetValue(achID, out IDictionary<string, object> existingData))
                    {
                        if (onlyNew)
                        {
                            foreach (var pair2 in info) if (!existingData.ContainsKey(pair2.Key)) Objects.Merge(existingData, pair2.Key, pair2.Value);
                        }
                        else
                        {
                            foreach (var pair2 in info) Objects.Merge(existingData, pair2.Key, pair2.Value);
                        }
                    }
                    else ACHIEVEMENTS[achID] = info;
                }
            }
        }

        /// <summary>
        /// Merges some enumerable set of data, where each piece is an <see cref="IDictionary"/> containing an 'spellID'/'recipeID'[long] key value
        /// </summary>
        public static void MergeRecipeDB(object rawDb)
        {
            DBMerge(rawDb, "recipeID");
        }

        /// <summary>
        /// Merges some enumerable set of data, where each piece is an <see cref="IDictionary"/> containing an 'spellID'[long] key value
        /// </summary>
        public static void MergeSpellDB(object rawDb)
        {
            DBMerge(rawDb, "spellID");
        }

        /// <summary>
        /// Merges some enumerable set of data, where each piece is an <see cref="IDictionary"/> containing an 'itemID'[long] key value
        /// </summary>
        public static void MergeItemDB(object rawDb)
        {
            DBMerge(rawDb, "itemID");
        }

        private static void DBMerge(object rawDb, string keyID)
        {
            // The format of a typical DB is a dictionary of ID -> Values.
            if (rawDb is Dictionary<long, object> db)
            {
                DBMerge(db, keyID);
            }
            // We also support a raw set of objects which are Dictionaries.
            else if (rawDb is IEnumerable<object> dbList)
            {
                DBMerge(dbList, keyID);
            }
            else
            {
                ThrowBadFormatDB(keyID + "DB", rawDb);
            }
        }

        private static void DBMerge(Dictionary<long, object> db, string keyID)
        {
            foreach (var dbEntry in db)
            {
                if (dbEntry.Value is IDictionary<string, object> data)
                {
                    data[keyID] = dbEntry.Key;
                    Objects.MergeFromDB(keyID, data);
                }
                else
                {
                    ThrowBadFormatDB(keyID + "DB", dbEntry);
                }
            }
        }

        private static void DBMerge(IEnumerable<object> dbList, string keyID)
        {
            foreach (var o in dbList)
            {
                if (o is IDictionary<string, object> data)
                {
                    if (data.TryGetValue(keyID, out long id))
                    {
                        data[keyID] = id;
                        Objects.MergeFromDB(keyID, data);
                        Items.MergeFromDB(data);
                    }
                }
                else
                {
                    ThrowBadFormatDB(keyID + "DB", o);
                }
            }
        }
    }
}
