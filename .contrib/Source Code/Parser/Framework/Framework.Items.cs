using ATT.DB.Types;
using ATT.FieldTypes;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;

namespace ATT
{
    // Framework extension for Items
    partial class Framework
    {
        #region Items
        /// <summary>
        /// The Items class.
        /// Contains all of the respective methods for handling Item data.
        /// </summary>
        public static partial class Items
        {
            #region Get
            /// <summary>
            /// All of the items that have been parsed sorted by Item ID.
            /// </summary>
            private static IDictionary<decimal, IDictionary<string, object>> ITEMS = new ConcurrentDictionary<decimal, IDictionary<string, object>>();

            /// <summary>
            /// All of the item IDs that have been referenced somewhere in the database.
            /// NOTE: This will be fully-populated following the 'Validation' stage of the Parse
            /// </summary>
            private static IDictionary<decimal, bool> ITEMS_WITH_REFERENCES = new ConcurrentDictionary<decimal, bool>();

            /// <summary>
            /// All of the items with species data that have been parsed sorted by Item ID.
            /// </summary>
            private static IDictionary<long, IDictionary<string, object>> ITEMS_WITH_SPECIES = new ConcurrentDictionary<long, IDictionary<string, object>>();

            /// <summary>
            /// All of the specific ItemIDs and each corresponding SourceID value
            /// </summary>
            private static IDictionary<decimal, long> SOURCES = new ConcurrentDictionary<decimal, long>();

            /// <summary>
            /// Returns whether a specific ItemID has been referenced
            /// </summary>
            public static bool IsItemReferenced(decimal itemID)
            {
                if (CurrentParseStage > ParseStage.Validation)
                    return ITEMS_WITH_REFERENCES.ContainsKey(itemID);

                throw new InvalidOperationException($"Cannot check Item References prior to completion of the {ParseStage.Validation} Parse Stage");
            }

            /// <summary>
            /// All of the item IDs that are in the database.
            /// </summary>
            public static ICollection<decimal> AllIDs
            {
                get
                {
                    return ITEMS.Keys;
                }
            }

            /// <summary>
            /// All of the items that are in the database.
            /// </summary>
            public static ICollection<IDictionary<string, object>> AllItems
            {
                get
                {
                    return ITEMS.Values;
                }
            }

            /// <summary>
            /// All of the items in the database witout any references.
            /// </summary>
            public static IEnumerable<IDictionary<string, object>> AllItemsWithoutReferences
            {
                get
                {
                    var keys = new List<decimal>();
                    foreach (var itemID in AllIDs)
                    {
                        if (ITEMS_WITH_REFERENCES.ContainsKey(itemID)) continue;
                        keys.Add(itemID);
                    }
                    keys.Sort();
                    foreach (var itemID in keys)
                    {
                        yield return ITEMS[itemID];
                    }
                    yield break;
                }
            }



            /// <summary>
            /// All of the items that are in the database.
            /// </summary>
            public static IDictionary<long, IDictionary<string, object>> AllItemsWithSpecies
            {
                get
                {
                    return ITEMS_WITH_SPECIES;
                }
            }

            /// <summary>
            /// All Item SourceIDs that are in the database.
            /// </summary>
            public static IDictionary<decimal, long> AllItemSourceIDs => SOURCES;

            /// <summary>
            /// The total number of items loaded into the database.
            /// </summary>
            public static int Count { get; private set; }

            private static IDictionary<string, object> _Garbage { get; } = new Dictionary<string, object>();

            /// <summary>
            /// Get the Item which matches the data
            /// If a matching Item does not exist and the data contains an 'itemID', one will be created.
            /// </summary>
            /// <param name="itemID">The Item ID.</param>
            /// <returns>A dictionary representing the item.</returns>
            private static IDictionary<string, object> _Get(decimal itemID)
            {
                var item = GetNull(itemID);
                // Attempt to get an existing specific item dictionary
                if (item != null)
                    return item;

                if (itemID == 0)
                    return _Garbage;

                // Create a new item dictionary.
                ++Count;

                return ITEMS[itemID] = new Dictionary<string, object>
                {
                    { "itemID", itemID }
                };
            }

            /// <summary>
            /// Get the Item which matches the data
            /// If a matching Item does not exist and the data contains an 'itemID', one will be created.
            /// </summary>
            /// <param name="itemID">The Item ID.</param>
            /// <returns>A dictionary representing the item.</returns>
            public static IDictionary<string, object> Get(IDictionary<string, object> data)
            {
                decimal itemID = GetSpecificItemID(data);
                decimal truncatedItemID = decimal.Truncate(itemID);
                if (truncatedItemID != itemID) _Get(truncatedItemID);   // This ensures that conditional item DB can properly write its data regarding the base itemID.
                return _Get(itemID);
            }

            /// <summary>
            /// Get an item by its Item ID.
            /// If an item does not exist, one will NOT be created.
            /// </summary>
            /// <param name="itemID">The Item ID.</param>
            /// <returns>A dictionary representing the item.</returns>
            public static IDictionary<string, object> GetNull(decimal itemID)
            {
                // Attempt to get an existing item dictionary.
                return ITEMS.TryGetValue(itemID, out IDictionary<string, object> obj) ? obj : null;
            }

            /// <summary>
            /// Get an item by corresponding data.
            /// If an item does not exist, one will NOT be created.
            /// </summary>
            /// <param name="itemID"></param>
            /// <returns></returns>
            public static IDictionary<string, object> GetNull(IDictionary<string, object> data)
            {
                decimal itemID = GetSpecificItemID(data);

                // Attempt to get an existing item dictionary.
                return GetNull(itemID);
            }

            /// <summary>
            /// Get the Item Species container which matches the data
            /// </summary>
            /// <param name="itemID">The Item ID.</param>
            /// <returns>A dictionary representing the item.</returns>
            public static IDictionary<string, object> GetWithSpecies(long itemID)
            {
                // Attempt to get an existing item dictionary.
                if (ITEMS_WITH_SPECIES.TryGetValue(itemID, out IDictionary<string, object> obj))
                {
                    return obj;
                }

                // Create a new item dictionary.
                return ITEMS_WITH_SPECIES[itemID] = new Dictionary<string, object>();
            }

            /// <summary>
            /// Returns the 'name' field of the data, or the corresponding name based on the 'itemID' of the data if it has been
            /// cached into the Item DB already
            /// </summary>
            /// <param name="data"></param>
            /// <returns></returns>
            public static bool TryGetName(IDictionary<string, object> data, out string name)
            {
                // get the name of the Sourced data
                data.TryGetValue("name", out name);

                // get the name for matching specific Item
                if (name == null)
                    GetNull(data)?.TryGetValue("name", out name);

                // get the name for the general Item
                if (name == null && data.TryGetValue("itemID", out decimal itemID))
                    GetNull(itemID)?.TryGetValue("name", out name);

                return name != null;
            }
            #endregion

            #region Export
            /// <summary>
            /// Export Item Debugging Files to the supplied directory.
            /// </summary>
            /// <param name="directory">The directory to file the debug files to.</param>
            public static void ExportDebug(string directory)
            {
                // Write some debug files.
                // Get all of the Item IDs and sort the list.
                var allItemIDs = AllIDs.ToList();
                allItemIDs.Sort();

                // Iterate through all of the items to determine which ones are missing filters or names.
                var allItems = new List<object>();
                var itemsMissingData = new List<object>();
                Objects.Filters filter = Objects.Filters.Invalid;
                var filterGroups = new Dictionary<Objects.Filters, List<IDictionary<string, object>>>();
                var builder2 = new StringBuilder();
                var filterBuilder = new StringBuilder("ITEM_FILTERS = {");
                foreach (var itemID in allItemIDs)
                {
                    // Get the item.
                    var item = GetNull(itemID);
                    if (item == null) continue;
                    allItems.Add(item);

                    // If an item already has a filter ID assigned and the ID is valid, ignore it.
                    if (item.TryGetValue("f", out long rawObjectData))
                    {
                        filter = (Objects.Filters)rawObjectData;
                        filterBuilder.AppendLine().Append('[').Append(itemID).Append("] = ").Append(rawObjectData).Append(',');
                    }
                    else filter = Objects.Filters.Invalid;

                    // Add the item to the filter group
                    if (!filterGroups.TryGetValue(filter, out List<IDictionary<string, object>> listing))
                    {
                        filterGroups[filter] = new List<IDictionary<string, object>> { item };
                    }
                    else listing.Add(item);

                    // If an item doesn't have a name or only has 4 fields, then it's probably missing a database entry.
                    if (!item.ContainsKey("name") || item.Count < 4)
                    {
                        itemsMissingData.Add(item);
                    }
                    else
                    {
                        builder2.Append(itemID).Append('\t').Append(item["name"]).AppendLine();
                    }
                }

                // Export all of the Items to the Item DB folder.
                File.WriteAllText(Path.Combine(directory, "AllItemFiltersByID.lua"), filterBuilder.AppendLine().Append("};").ToString(), Encoding.UTF8);
                File.WriteAllText(Path.Combine(directory, "AllItemsByID.lua"), builder2.ToString(), Encoding.UTF8);
                File.WriteAllText(Path.Combine(directory, "AllItems.lua"), ATT.Export.ExportRawLua(allItems).ToString(), Encoding.UTF8);
                File.WriteAllText(Path.Combine(directory, "ItemsMissingData.lua"), ATT.Export.ExportRawLua(itemsMissingData).ToString(), Encoding.UTF8);

                // Export all items into their respective filter locations
                var filtersFolder = Path.Combine(directory, "Filters/");
                var filtersDirectory = Directory.CreateDirectory(filtersFolder);
                foreach (var group in filterGroups)
                {
                    var builder = ATT.Export.ExportRawLua(group.Value);
                    builder.AppendLine().AppendLine();
                    foreach (var item in group.Value)
                    {
                        if (item.TryGetValue("itemID", out object id))
                        {
                            builder.Append("i(").Append(id).Append(");");
                            if (item.TryGetValue("name", out object name))
                            {
                                builder.Append("\t-- ").Append(name);
                            }
                            builder.AppendLine();
                        }
                    }
                    File.WriteAllText(Path.Combine(filtersDirectory.FullName, $"{group.Key}.json"), builder.ToString(), Encoding.UTF8);
                }

                // Export all recipes into their respective recipe locations
                var recipesFolder = Path.Combine(directory, "Recipes/");
                var recipesDirectory = Directory.CreateDirectory(recipesFolder);
                if (filterGroups.TryGetValue(Objects.Filters.Recipe, out List<IDictionary<string, object>> allRecipes))
                {
                    var recipesByRequiredSkill = new Dictionary<long, List<IDictionary<string, object>>>();
                    foreach (var recipe in allRecipes)
                    {
                        if (!recipe.TryGetValue("requireSkill", out long requireSkill))
                        {
                            requireSkill = 0;
                        }

                        if (!recipesByRequiredSkill.TryGetValue(requireSkill, out List<IDictionary<string, object>> skillRecipes))
                        {
                            recipesByRequiredSkill[requireSkill] = skillRecipes = new List<IDictionary<string, object>>();
                        }
                        skillRecipes.Add(recipe);
                    }

                    foreach (var requireSkillPair in recipesByRequiredSkill)
                    {
                        var builder = ATT.Export.ExportRawLua(requireSkillPair.Value);
                        builder.AppendLine().AppendLine();
                        foreach (var item in requireSkillPair.Value)
                        {
                            if (item.TryGetValue("itemID", out object id))
                            {
                                builder.Append("itemrecipe(\"");
                                if (item.TryGetValue("name", out object name))
                                {
                                    builder.Append(name.ToString().Replace("\"", "\\\""));
                                }
                                builder.Append("\", ").Append(id).Append(", ");
                                if (item.TryGetValue("spellID", out object spellIDRef) || item.TryGetValue("recipeID", out spellIDRef))
                                {
                                    builder.Append(spellIDRef);
                                }
                                else builder.Append("UNKNOWN_SPELLID");
                                if (item.TryGetValue("u", out object uRef))
                                {
                                    builder.Append(", PHASE_").Append(uRef).Append("_IDENTIFIER");
                                }
                                if (item.TryGetValue("timeline", out object timelineRef) && timelineRef is List<object> timeline)
                                {
                                    if (timeline.Count > 1)
                                    {
                                        var timelineStr = MiniJSON.Json.Serialize(timeline);
                                        builder.Append(", {").Append(timelineStr.Substring(1, timelineStr.Length - 2)).Append("}");
                                    }
                                    else builder.Append(", \"").Append(timeline[0]).Append("\"");
                                }
                                builder.AppendLine(");");
                            }
                        }
                        File.WriteAllText(Path.Combine(recipesDirectory.FullName, $"{requireSkillPair.Key}.json"), builder.ToString(), Encoding.UTF8);
                    }
                }
            }
            #endregion
            #region Merge (for acquiring fields for the Item Database)
            /// <summary>
            /// Merge the field into the item reference if it is whitelisted.
            /// Only a couple of fields will successfully merge into an item.
            /// </summary>
            /// <param name="item">The item dictionary to merge into.</param>
            /// <param name="field">The name of the field being merged.</param>
            /// <param name="value">The value of the merged field.</param>
            public static void Merge(IDictionary<string, object> item, string field, object value)
            {
                if (value is string v && v == IgnoredValue)
                    return;

                // Convert the name of the field to something more standardized.
                switch (field = ConvertFieldName(field))
                {
                    // Blacklisted Fields.
                    case "g":
                    case "link":
                    case "sourceID":
                    case "bonusID":
                    case "modID":
                    case "ItemAppearanceModifierID":
                    case "rank":
                    case "gender":
                    case "artifactID":
                    case "visualID":
                    case "itemID":
                    case "items":
                    case "mounts":
                    case "icon":
                    case "text":
                    //case "dr":
                    case "isAquatic":
                    case "isFlying":
                    case "isGround":
                    case "isJumping":
                    case "creatureID":
                    //case "ignoreBonus":
                    case "displayID":
                    case "sourceText":
                    case "cr":
                    case "crs":
                    case "qg":
                    case "qgs":
                    case "npcID":
                    case "modelRotation":
                    case "modelScale":
                    case "model":
                    case "maps":
                    case "coord":
                    case "coords":
                    case "criteriaID":
                    case "heirloomID":
                    //case "recipeID":  // if an Item teaches a Recipe, it's not a different Recipe based on Source, so we can merge it
                    case "previousRecipeID":
                    case "nextRecipeID":
                    case "minReputation":
                    case "maxReputation":
                    case "provider":
                    case "providers":
                        //case "lvl":
                        {
                            return;
                        }

                    // Boolean Data Type Fields
                    case "collectible":
                    case "equippable":
                    case "repeatable":
                    case "isBounty":
                    case "isLimited":
                    case "isGuild":
                    case "isDaily":
                    case "isWeekly":
                    case "isMonthly":
                    case "isYearly":
                    case "isWorldQuest":
                    case "ignoreBonus":
                    case "ignoreSource":
                    case "skipFill":
                    case "pvp":
                    case "pb":
                        {
                            item[field] = Convert.ToBoolean(value);
                            break;
                        }
                    case "sr":
                        {
                            item[field] = Convert.ToBoolean(value);
                            break;
                        }

                    // String Data Type Fields
                    case "lore":
                    case "name":
                    case "description":
                    case "type":
                        {
                            item[field] = ATT.Export.ToString(value);
                            break;
                        }

                    // Integer Data Type Fields
                    case "class":
                    case "inventoryType":
                    case "subclass":
                    case "q":
                    case "learnedAt":
                        item[field] = Convert.ToInt64(value);
                        break;

                    case "altItemID":
                    case "altAchID":
                    case "altSpeciesID":
                    case "buildingID":
                    case "questID":
                    case "musicRollID":
                    case "illusionID":
                    case "achID":
                    case "requireSkill":
                    case "isOffHand":
                    case "factionID":
                    case "mountID":
                    case "petTypeID":
                    case "speciesID":
                    case "objectiveID":
                    case "runeforgepowerID":
                    case "raceID":
                    case "conduitID":
                    case "f":
                    case "filterForRWP":
                    case "rwp":
                    case "awp":
                    case "r":
                    case "ilvl":
                    case "b":
                        {
                            if (!value.TryConvert(out long val))
                            {
                                LogError($"Invalid field format:{field}={value}", item);
                                break;
                            }
                            // any 0 value should simply be removed for cleanliness
                            if (val == 0)
                            {
                                LogDebug($"INFO: Ignoring 0-value {field} merging to", item);
                                item.Remove(field);
                            }
                            else
                            {
                                item[field] = val;
                            }
                            break;
                        }
                    case "spellID":
                    case "recipeID":
                        {
                            // setting a recipeID on the Item should remove the spellID
                            if (field == "recipeID")
                            {
                                item.Remove("spellID");
                            }
                            if (!value.TryConvert(out long val))
                            {
                                LogError($"Invalid field format:{field}={value}", item);
                                break;
                            }
                            // any 0 value should simply be removed for cleanliness
                            if (val == 0)
                            {
                                LogDebug($"INFO: Ignoring 0-value {field} merging to", item);
                                item.Remove(field);
                            }
                            else
                            {
                                // setting a spellID on an Item with a recipeID should do nothing
                                if (field == "spellID" && item.TryGetValue("recipeID", out long recipeID) && recipeID > 0)
                                {
                                    LogDebugWarn($"spellID = '{value}' is skipped for Item already assigned 'recipeID' = '{recipeID}' :", item);
                                    break;
                                }

                                item[field] = val;
                            }
                            break;
                        }

                    // Conditional Fields -- only merge if NOT Location Sourced data
                    // there are situations where the same Item is BoP in some places and BoE in others...
                    // CRIEVE NOTE: I'm not sure what the above is trying to fix, if you know, please let me know and we can solve it a different way.
                    // With the if statement is left intact, it doesn't allow the ItemDBConditional to properly assign the b field for Heirlooms and stuff.
                    // There are other cases as well, but that one is the most problematic.

                    // long
                    case "e":
                    case "u":
                        {
                            if (!ProcessingMergeData) break;

                            if (!value.TryConvert(out long val))
                            {
                                LogError($"Invalid field format:{field}={value}", item);
                                break;
                            }

                            // any 0 value should simply be removed for cleanliness
                            if (val == 0)
                            {
                                LogDebug($"INFO: Ignoring 0-value {field} merging to", item);
                                item.Remove(field);
                            }
                            else
                            {
                                item[field] = val;
                            }
                            break;
                        }

                    // string-array
                    case "timeline":
                        if (!ProcessingMergeData) break;

                        //Objects.MergeStringArrayData(item, field, value);
                        Timeline.Merge(item, value);
                        LogDebug($"INFO: Merge {item["itemID"]}: {field} +", value);
                        break;

                    // Integer-Array Data Type Fields (stored as List<object> for usability reasons)
                    case "c":
                    case "c_disp":
                    case "specs":
                    case "races":
                    case "races_disp":
                    case "sourceAchievements":
                    case "sourceQuests":
                    case "altQuests":
                        {
                            Objects.MergeIntegerArrayData(item, field, value);
                            break;
                        }
                    // temp special case for 'lvl', only include data if it is in the expected new format of a list
                    case "lvl":
                        if (value is List<object> lvls)
                        {
                            Objects.MergeIntegerArrayData(item, field, lvls);
                        }
                        else if (value is long lvl)
                        {
                            item[field] = lvl;
                        }
                        else
                        {
                            item[field] = Convert.ToInt64(value);
                        }
                        break;

                    // Sub-Dictionary Data Type Fields (stored as Dictionary<int, int> for usability reasons)
                    case "modIDs":
                    case "bonusIDs":
                        {
                            // find the base ItemID for this item
                            long itemID = (long)GetSpecificItemID(item);

                            if (value is Dictionary<long, object> goodValue || Objects.TryExpandList(value, out goodValue))
                            {
                                foreach (var goodKvp in goodValue)
                                {
                                    AddItemSourceID(itemID, field, goodKvp.Key, goodKvp.Value);
                                }
                                return;
                            }
                            break;
                        }

                    // List of String Data Type Fields (stored as List<string> for usability reasons)
                    case "customCollect":
                        Objects.MergeStringArrayData(item, field, value);
                        break;

                    // List O' List O' Objects Data Type Fields (stored as List<List<object>> for usability reasons)
                    case "sym":
                        {
                            // Convert the data to a list of generic objects (validation is performed elsewhere)
                            if (value is List<List<object>> newListOfLists)
                            {
                                item[field] = newListOfLists;
                                return;
                            }

                            newListOfLists = new List<List<object>>();

                            if (!(value is List<object> newList))
                            {
                                LogWarn($"Unable to merge 'sym' data: {ToJSON(value)}", item);
                                return;
                            }

                            foreach (var o in newList)
                            {
                                if (!(o is List<object> list))
                                {
                                    LogWarn($"Unable to merge 'sym' data: {ToJSON(o)}", item);
                                    continue;
                                }

                                newListOfLists.Add(list);
                            }
                            item[field] = newListOfLists;
                            break;
                        }
                    // 'cost' is specific based on Source, so it shouldn't merge for all Sources of an Item
                    //case "cost":
                    //    Cost.Add(item, value);
                    //    break;
                    case "lc":
                        Objects.MergeField_lockCriteria(item, value);
                        break;
                    case "_drop":
                        // Signifies to drop existing Item fields when encountered
                        Objects.PerformDrops(item, value);
                        break;

                    case "_wipe":
                    case "_defaulttimeline":
                    // Functions
                    case "OnInit":
                    case "OnClick":
                    case "OnUpdate":
                    case "OnTooltip":
                        item[field] = value;
                        break;

                    default:
                        // for undefined parser-only fields, just use the base Object merge implementation for the Item
                        if (field.StartsWith("_"))
                        {
                            Objects.Merge(item, field, value);
                        }
                        break;
                }
            }

            private static void AddItemSourceID(long itemID, string field, long key, object value)
            {
                decimal specificItemID = GetSpecificItemID(itemID, field == "modIDs" ? key : 0, field == "bonusIDs" ? key : 0);
                if (!value.TryConvert(out long newSourceID))
                {
                    Log($"WARN: Non-numeric SourceID '{value}' for ItemID '{specificItemID}'");
                    return;
                }

                if (field == "bonusIDs" && key <= 0)
                {
                    LogDebug($"INFO: ItemID:{specificItemID}:{key} ==> Bad {field} Data with {value}");
                    return;
                }

                if (SOURCES.TryGetValue(specificItemID, out long sourceID) && newSourceID != sourceID)
                {
                    Log($"WARN: Data Changed => ItemID:{specificItemID}");
                    Log($"-- Field Value Overwrite: s:{sourceID} => {newSourceID}");
                }
                SOURCES[specificItemID] = newSourceID;
            }

            public static void AddItemSourceID(KeyValuePair<decimal, object> itemSource)
            {
                if (itemSource.Value.TryConvert(out long sourceID))
                {
                    SOURCES[itemSource.Key] = sourceID;
                }
            }

            public static void AddItemSourceID(KeyValuePair<long, object> itemSource)
            {
                if (itemSource.Value.TryConvert(out long sourceID))
                {
                    SOURCES[itemSource.Key] = sourceID;
                }
            }

            /// <summary>
            /// Merge the data into the item database.
            /// NOTE: Only data containing an itemID will merge.<para/>
            /// Specify conditional merge to skip creating an ItemDB entry if it does not already exist
            /// </summary>
            /// <param name="data">The data to merge into the item database.</param>
            public static void Merge(IDictionary<string, object> data, bool conditionalMerge = false)
            {
                // Ignore this for Artifacts.
                if (data.ContainsKey("artifactID")) return;

                // Fix the itemId field if it exists because it makes things break
                if (data.ContainsKey("itemId"))
                {
                    data[ConvertFieldName("itemId")] = data["itemId"];
                    data.Remove("itemId");
                }

                // Attempt to extract the itemID from the data table.
                if (data.ContainsKey("itemID") ||
                    data.ContainsKey("toyID"))
                {
                    var item = conditionalMerge ? GetNull(data) : Get(data);
                    if (item != null)
                    {
                        foreach (var pair in data) Merge(item, pair.Key, pair.Value);
                    }
                    else if (data["itemID"].TryConvert(out long itemID) && itemID > 0)
                    {
                        LogDebug($"INFO: Conditional Item data not merged: {itemID} =", data);
                    }
                }
            }


            /// <summary>
            /// Merge the data into the item database.
            /// NOTE: Only data containing an itemID will merge.<para/>
            /// Specify conditional merge to skip creating an ItemDB entry if it does not already exist
            /// </summary>
            /// <param name="data">The data to merge into the item database.</param>
            public static void MergeFromDB(IDictionary<string, object> data, bool conditionalMerge = false)
            {
                // TODO: This is just Crieve trying to make it more clear where the source of this information is coming from.
                // I'd like to (at some point) make all information from ItemDB always attribute and information from objects be limited to context.
                Merge(data, conditionalMerge);
            }

            /// <summary>
            /// Merge the data into the item database.
            /// NOTE: Only data containing an itemID will merge.<para/>
            /// Specify conditional merge to skip creating an ItemDB entry if it does not already exist
            /// </summary>
            /// <param name="data">The data to merge into the item database.</param>
            public static void MergeFromObject(IDictionary<string, object> data, bool conditionalMerge = false)
            {
                //if (DebugMode)
                //{
                //    var item = GetNull(data);
                //    if (item == null)
                //    {
                //        LogDebugWarn($"Item merge data:", data);
                //    }
                //    else
                //    {
                //        var newData = new Dictionary<string, object>(data);
                //        foreach(var kvp in item)
                //        {
                //            if (newData.TryGetValue(kvp.Key, out object val) || val != kvp.Value)
                //            {
                //                newData.
                //            }
                //        }
                //    }
                //}
                // TODO: This is just Crieve trying to make it more clear where the source of this information is coming from.
                // I'd like to (at some point) make all information from ItemDB always attribute and information from objects be limited to context.
                Merge(data, conditionalMerge);
            }
            #endregion

            #region Merge Into (for merging item data back into an object)
            /// <summary>
            /// Merge the fields from the item reference if it is whitelisted.
            /// Only a couple of fields will successfully merge into the data.
            /// </summary>
            /// <param name="itemID">The item ID being merged.</param>
            /// <param name="data">The data dictionary to merge into.</param>
            /// <param name="field">The name of the field being merged.</param>
            /// <param name="value">The value of the merged field.</param>
            private static void MergeInto(decimal itemID, IDictionary<string, object> data, string field, object value)
            {
                switch (field)
                {
                    case "questID":
                    case "mountID":
                    case "altItemID":
                    case "altAchID":
                    case "altQuestID":
                    case "altSpeciesID":
                    case "buildingID":
                    case "eventID":
                    case "musicRollID":
                    case "illusionID":
                    case "recipeID":
                    case "petTypeID":
                    case "sourceID":
                    case "speciesID":
                    case "spellID":
                    case "factionID":
                    case "achID":
                    case "requireSkill":
                    case "objectiveID":
                    case "f":
                    case "filterForRWP":
                    case "rank":
                    case "gender":
                    case "learnedAt":
                    case "ilvl":
                    case "lvl":
                    case "q":
                    case "c":
                    case "e":
                    case "specs":
                    case "sourceAchievements":
                    case "sourceQuests":
                    case "altQuests":
                    case "repeatable":
                    //case "pvp":
                    //case "isLimited":
                    case "isWeekly":
                    case "isDaily":
                    case "isMonthly":
                    case "isYearly":
                    case "isWorldQuest":
                    case "runeforgepowerID":
                    case "raceID":
                    case "conduitID":
                    case "customCollect":
                    case "type":
                    case "_wipe":
                    case "collectible":
                        data[field] = value;
                        break;
                    // Conditional merges
                    case "b":
                    case "u":
                    case "timeline":
                        if (!data.ContainsKey(field))
                        {
                            data[field] = value;
                            if (field != "b") // bit spammy, even for debug logging
                            {
                                LogDebug($"MergeInto {data["itemID"]}: {field} <==", value);
                            }
                        }
                        break;
                    case "races":
                    case "r":
                        {
                            // Check for Mark of Honor and don't merge!
                            if (itemID == 137642) break;
                            data[field] = value;
                            break;
                        }

                    // Functions
                    case "OnInit":
                    case "OnClick":
                    case "OnUpdate":
                    case "OnTooltip":
                        data[field] = value;
                        break;

                    // Ignore all of the other fields.
                    default:
                        {
                            break;
                        }
                }
            }

            /// <summary>
            /// Merge information about the item into the data dictionary.
            /// Fields need to be whitelisted in the MergeInto(itemID, data, field, value) function.
            /// </summary>
            /// <param name="itemID">The item ID being merged.</param>
            /// <param name="item">The item dictionary to merge into the data table.</param>
            /// <param name="data">The data dictionary to receive the merged data.</param>
            public static void MergeInto(decimal itemID, IDictionary<string, object> item, IDictionary<string, object> data)
            {
                if (itemID < 1)
                    return;
                foreach (var pair in item) MergeInto(itemID, data, pair.Key, pair.Value);
            }

            /// <summary>
            /// Merge information from the Item dictionary into the data
            /// Only a couple of fields will successfully merge into the data.
            /// </summary>
            /// <param name="data">The data dictionary to receive the merged data.</param>
            public static void MergeInto(IDictionary<string, object> data)
            {
                // Get the itemID, if it exists.
                decimal itemID = GetSpecificItemID(data);
                if (itemID < 1)
                    return;

                // merge general item info into the data
                MergeInto((long)itemID, data);

                // then merge specific info into the data
                MergeInto(itemID, data);
            }

            /// <summary>
            /// Merge Item information from the specific ItemID into the data
            /// </summary>
            private static void MergeInto(decimal specificItemID, IDictionary<string, object> data)
            {
                // First merge generic Item info into the data
                var item = GetNull(specificItemID);
                if (item == null)
                {
                    if (!data.ContainsKey("_generated"))
                    {
                        // Report that the specific, non-generated item is missing.
                        LogDebugWarn($"Could not find item #{specificItemID} in the database", data);
                    }
                }
                else
                {
                    // Merge the specific item with the data dictionary.
                    MergeInto(specificItemID, item, data);
                }
            }

            /// <summary>
            /// Determines and applies the matching SourceID for the Item data
            /// </summary>
            public static void DetermineSourceID(IDictionary<string, object> data)
            {
                const bool DoSpammyDebugLogging = false;
                decimal sourceIDKey = GetSourceIDKey(data);
                if (sourceIDKey == 0) return;

                if (data.ContainsKey("ignoreSource"))
                {
#pragma warning disable CS0162 // Unreachable code detected
                    if (DoSpammyDebugLogging) LogDebug($"INFO: Item:{sourceIDKey} Skipped SourceID due to ignoreSource");
#pragma warning restore CS0162 // Unreachable code detected
                    return;
                }

                // Any filter types which should specifically not have a SourceID attached even if Blizzard wants them to
                if (data.TryGetValue("f", out long f))
                {
                    if (!((f > 0 && f < 36) || f == 57) || f == 51 || f == 52)
                    {
#pragma warning disable CS0162 // Unreachable code detected
                        if (DoSpammyDebugLogging) LogDebug($"INFO: Item:{sourceIDKey} Skipped SourceID due to Filter:{(Objects.Filters)f}");
#pragma warning restore CS0162 // Unreachable code detected
                        return;
                    }
                }

                // Determine which variant this data is using.
                if (data.ContainsKey("ignoreBonus"))
                {
                    // ignore having a variant for sourceID lookup
                    sourceIDKey = (long)sourceIDKey;
                }

                // Attempt to get the Source ID for this variant of the item.
                long? sourceIDFromSourcesDB = null;
                if (SOURCES.TryGetValue(sourceIDKey, out long s)) sourceIDFromSourcesDB = s;

                // Firstly check to see if there's an ArtifactID associated with the data.
                long ItemAppearanceModifierID = NestedItemAppearanceModifierID;
                if (data.TryGetValue("artifactID", out var artifactIDObj)
                    && TryGetTypeDBObject((long)artifactIDObj, out ArtifactAppearance artifactAppearance)
                    && artifactAppearance != null)
                {
                    ItemAppearanceModifierID = artifactAppearance.ItemAppearanceModifierID;
                }
                else if (data.TryGetValue("ItemAppearanceModifierID", out var ItemAppearanceModifierIDObj)) ItemAppearanceModifierID = (long)ItemAppearanceModifierIDObj;

                // Attempt to get the SourceID from the ItemModifiedAppearanceDB
                long? ItemModifiedAppearanceID = null;
                ItemModifiedAppearance itemModifiedAppearance = null;
                if (TryGetTypeDBObjectCollection<ItemModifiedAppearance>((long)sourceIDKey, out var itemModifiedAppearances))
                {
                    // Try to find the best match for the item appearance modifier ID.
                    long bestItemAppearanceModifierID = 9999;
                    foreach (var itemModifiedAppearanceObj in itemModifiedAppearances)
                    {
                        if (itemModifiedAppearanceObj is ItemModifiedAppearance appearance)
                        {
                            // Well, we found the sourceID in the database. Let's report it.
                            if (appearance.ID == sourceIDFromSourcesDB)
                            {
                                itemModifiedAppearance = appearance;
                                break;
                            }
                            if (appearance.ItemAppearanceModifierID == ItemAppearanceModifierID)
                            {
                                // Set the selected default one to the matched appearance, but don't forget about the exact match.
                                itemModifiedAppearance = appearance;
                                bestItemAppearanceModifierID = -1;
                            }
                            else if (bestItemAppearanceModifierID > appearance.ItemAppearanceModifierID)
                            {
                                itemModifiedAppearance = appearance;
                                bestItemAppearanceModifierID = appearance.ItemAppearanceModifierID;
                            }
                        }
                    }
                    if (itemModifiedAppearance != null)
                    {
                        ItemModifiedAppearanceID = itemModifiedAppearance.ID;
                        if(itemModifiedAppearances.Count == 1)
                        {
                            // If its the only one, ignore it. This is common for old items that don't conform to modID/bonusID.
                            ItemAppearanceModifierID = itemModifiedAppearance.ItemAppearanceModifierID;
                        }
                    }
                }

                // Compare the appearance from the ItemModifiedAppearance database and the one from ours.
                long? sourceID = sourceIDFromSourcesDB ?? ItemModifiedAppearanceID;
                if (sourceID.HasValue && sourceID > 0)
                {
#pragma warning disable CS0162 // Unreachable code detected
                    // Details regarding how the selected SourceID was reached.
                    string message = ItemModifiedAppearanceID.ToString();
                    if (NestedBonusID > 0) message = $"{message} [BonusID: {NestedBonusID}]";
                    if (NestedModID > 0) message = $"{message} [ModID: {NestedModID}]";

                    bool substituted = false;
                    message = $"{message} [ModifierID: {ItemAppearanceModifierID}]";
                    if (itemModifiedAppearance != null && itemModifiedAppearance.ItemAppearanceModifierID != ItemAppearanceModifierID)
                    {
                        message = $"{message} Assign: {{ [\"ItemAppearanceModifierID\"] = {itemModifiedAppearance.ItemAppearanceModifierID} }}";
                        substituted = true;
                    }

                    if (sourceIDFromSourcesDB.HasValue)
                    {
                        if (ItemModifiedAppearanceID != sourceIDFromSourcesDB)
                        {
                            // If we found a modified appearance, then report the difference.
                            if (itemModifiedAppearance != null)
                            {
                                LogWarn($"Item:{sourceIDKey} SourceID {sourceIDFromSourcesDB} != {message}");
                            }
                        }
                        else if (substituted)
                        {
                            // Report when we found a matching sourceID to the SourceID database, but 
                            LogWarn($"Item:{sourceIDKey} SourceID == {message}");
                        }
                        else if (DoSpammyDebugLogging)
                        {
                            LogDebug($"INFO: Item:{sourceIDKey} SourceID == {message}");
                        }
                    }
                    else if (substituted) LogWarn($"Item:{sourceIDKey} Using SourceID from {message}");
                    else if(DoSpammyDebugLogging) LogDebug($"INFO: Item:{sourceIDKey} Using SourceID from {message}");
#pragma warning restore CS0162 // Unreachable code detected

                    // quite spammmmmy, only enable if needed
#pragma warning disable CS0162 // Unreachable code detected
                    if (DoSpammyDebugLogging) LogDebug($"INFO: Item:{sourceIDKey} ==> s:{sourceID} ({sourceIDFromSourcesDB}:{ItemModifiedAppearanceID})");
#pragma warning restore CS0162 // Unreachable code detected
                    data["sourceID"] = sourceID;
                    CaptureForSOURCED(data, "sourceID", sourceID);
                    return;
                }
            }

            /// <summary>
            /// Attempts to determine and apply the simplest applicable ItemID for the Source data
            /// </summary>
            public static void DetermineItemID(IDictionary<string, object> data)
            {
                if (data.ContainsKey("itemID") || (!data.TryGetValue("sourceID", out long sourceID))) return;

                decimal itemID = 0;
                foreach (KeyValuePair<decimal, long> matchedItemID in SOURCES.GetAllKvps(s => s == sourceID))
                {
                    // minimum itemID is typically the cleanest match
                    if (itemID == 0 || itemID > matchedItemID.Key)
                    {
                        itemID = matchedItemID.Key;
                    }
                }

                if (itemID > 0)
                {
                    ApplyItemID(itemID, data);
                }
            }

            /// <summary>
            /// SourceID per ItemID takes precedent for the BonusID if ModID also exists
            /// </summary>
            private static decimal GetSourceIDKey(IDictionary<string, object> data)
            {
                if (data.TryGetValue("_sitemID", out decimal specificItemID))
                {
                    return specificItemID;
                }

                if (data.TryGetValue("itemID", out long itemID))
                {
                    if (data.TryGetValue("bonusID", out long bonusID))
                    {
                        return GetSpecificItemID(itemID, 0, bonusID);
                    }
                    else if (data.TryGetValue("modID", out long modID))
                    {
                        return GetSpecificItemID(itemID, modID, 0);
                    }

                    return itemID;
                }

                return 0;
            }
            #endregion

            #region Utility
            public static void MarkItemAsReferenced(decimal itemID)
            {
                ITEMS_WITH_REFERENCES[itemID] = true;
            }

            public static void MarkItemAsReferenced(IDictionary<string, object> data)
            {
                decimal itemID = GetSpecificItemID(data);
                MarkItemAsReferenced(itemID);
                MarkItemAsReferenced((long)itemID);
            }

            /// <summary>
            /// Returns a specific ItemID value corresponding to how ItemID's are treated in-game since the
            /// modID/bonusID literally changes the functionality/uniqueness of an Item
            /// </summary>
            /// <param name="itemID"></param>
            /// <param name="modID"></param>
            /// <param name="bonusID"></param>
            /// <returns></returns>
            public static decimal GetSpecificItemID(decimal itemID, long modID, long bonusID)
            {
                return itemID + (decimal)modID / 1000 + (decimal)bonusID / 100000000;
            }

            public static void ApplyItemID(decimal itemID, IDictionary<string, object> data)
            {
                long id = (long)decimal.Truncate(itemID);
                decimal modID = (itemID - id) * 1000;
                long mod = (long)decimal.Truncate(modID);
                long bonus = (long)decimal.Truncate((modID - mod) * 100000);

                if (id > 0)
                {
                    data["itemID"] = id;
                }
                if (mod > 0)
                {
                    data["modID"] = mod;
                }
                if (bonus > 0)
                {
                    data["bonusID"] = bonus;
                }
            }

            /// <summary>
            /// Returns a specific ItemID value corresponding to how ItemID's are treated in-game since the
            /// modID/bonusID literally changes the functionality/uniqueness of an Item
            /// </summary>
            /// <param name="data"></param>
            /// <returns></returns>
            public static decimal GetSpecificItemID(IDictionary<string, object> data)
            {
                if (data.TryGetValue("_modItemID", out decimal modItemID))
                {
                    return modItemID;
                }

                data.TryGetValue("itemID", out decimal itemID);
                if (itemID == 0)
                    return 0;

                data.TryGetValue("modID", out long modID);
                data.TryGetValue("bonusID", out long bonusID);

                modItemID = GetSpecificItemID(itemID, modID, bonusID);
                data["_modItemID"] = modItemID;
                return modItemID;
            }
            #endregion
        }
        #endregion
    }
}
