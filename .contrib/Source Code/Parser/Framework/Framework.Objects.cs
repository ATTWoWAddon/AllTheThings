using ATT.DB;
using ATT.DB.Types;
using ATT.FieldTypes;
using System;
using System.Collections;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using static ATT.Export;
using static ATT.Framework;

namespace ATT
{
    // Framework extension for Objects
    partial class Framework
    {
        #region Containers
        /// <summary>
        /// The Objects class.
        /// Contains all of the respective methods for handling Object data.
        /// </summary>
        public static class Objects
        {
            #region Get
            /// <summary>
            /// A list of fields that have already warned the programmer.
            /// </summary>
            private static IDictionary<string, bool> WARNED_FIELDS = new ConcurrentDictionary<string, bool>();

            /// <summary>
            /// A mapping of singular fields to their pluralized equivalents
            /// </summary>
            public static Dictionary<string, string> SINGULAR_PLURAL_FIELDS_LONG;

            /// <summary>
            /// A mapping of fields which should not be sorted because their order is utilized
            /// </summary>
            public static HashSet<string> NON_SORTED_FIELDS;

            /// <summary>
            /// A set of fields which are simply stored and passed-through to the Export
            /// </summary>
            public static HashSet<string> PASS_THRU_FIELDS;

            /// <summary>
            /// All of the containers that are in the database.
            /// </summary>
            public static IDictionary<string, List<object>> AllContainers { get; } = new ConcurrentDictionary<string, List<object>>();

            /// <summary>
            /// Get a container by its name.
            /// If a container does not exist, one will be created.
            /// </summary>
            /// <param name="containerName">The name of the container.</param>
            /// <returns>A list with the full contents of the container.</returns>
            public static List<object> Get(string containerName)
            {
                return AllContainers.TryGetValue(containerName, out List<object> obj) ? obj : (AllContainers[containerName] = new List<object>());
            }

            /// <summary>
            /// Get a container by its name.
            /// If a container does not exist, one will NOT be created.
            /// </summary>
            /// <param name="containerName">The name of the container.</param>
            /// <returns>A list with the full contents of the container.</returns>
            public static List<object> GetNull(string containerName)
            {
                return AllContainers.TryGetValue(containerName, out List<object> obj) ? obj : null;
            }

            /// <summary>
            /// All of the Recipes (Name,RecipeID) that are in the database, keyed by required skill
            /// </summary>
            public static IDictionary<long, Dictionary<long, string>> AllRecipes { get; } = new Dictionary<long, Dictionary<long, string>>();

            /// <summary>
            /// All of the Merged Objects (non-Items) that are in the database. This is used to ensure that various information is synced across all Sources of a given object as necessary
            /// Stored by key -> key-value -> object
            /// </summary>
            public static ConcurrentDictionary<string, ConcurrentDictionary<object, ConcurrentDictionary<string, object>>> SharedDataByPrimaryKey { get; }
                = new ConcurrentDictionary<string, ConcurrentDictionary<object, ConcurrentDictionary<string, object>>>();

            /// <summary>
            /// The keys which should be merged based on a given merge object key
            /// </summary>
            public static IDictionary<string, string[]> MERGE_OBJECT_FIELDS { get; set; }

            /// <summary>
            /// The keys which can be merged into the DB for later merging into Objects
            /// </summary>
            public static IDictionary<string, string[]> MERGE_FROM_OBJECT_FIELDS { get; set; }

            /// <summary>
            /// The set of MapID values and linked coord-shift requirements
            /// </summary>
            public static IDictionary<long, CoordShift> MAPID_COORD_SHIFTS { get; set; }

            /// <summary>
            /// Allows capturing various objects which should be merged-into the sub-content of another object
            /// </summary>
            public static ConcurrentDictionary<string, ConcurrentDictionary<decimal, ConcurrentDataList>> PostProcessMergeIntos { get; }
                = new ConcurrentDictionary<string, ConcurrentDictionary<decimal, ConcurrentDataList>>();

            /// <summary>
            /// Used to track what actual key/keyValues were used to merge data
            /// </summary>
            private static ConcurrentDictionary<string, ConcurrentHashSet<decimal>> PostProcessMergedKeyValues { get; }
                = new ConcurrentDictionary<string, ConcurrentHashSet<decimal>>();

            /// <summary>
            /// Set of fields which when present in a group will prevent the merging in/out of that group to the associated DB containers,
            /// or into such a group from post-processed merges
            /// </summary>
            private static HashSet<string> MergeRestrictedFields { get; } = new HashSet<string>
            {
                "_ignoreSourced", "objectiveID", "criteriaID"
            };
            #endregion

            #region Filters
            /// <summary>
            /// All of the filter IDs that can be used in the addon.
            /// </summary>
            public enum Filters
            {
                // Administration
                Ignored = -1,
                Invalid = 0,

                // Armor Types
                HeldInOffHand = 1,
                Cosmetic = 2,
                Cloak = 3,
                Cloth = 4,
                Leather = 5,
                Mail = 6,
                Plate = 7,
                Shield = 8,
                Tabard = 9,
                Shirt = 10,

                // Weapon Types
                Dagger = 20,
                OneHandedAxe = 21,
                TwoHandedAxe = 22,
                OneHandedMace = 23,
                TwoHandedMace = 24,
                OneHandedSword = 25,
                TwoHandedSword = 26,
                Wand = 27,
                Staff = 28,
                Polearm = 29,
                Spear = 30,
                Gun = 31,
                Bow = 32,
                Crossbow = 33,
                FistWeapon = 34,
                Warglaive = 35,
                Thrown = 36,
                Ammo = 37,

                // Miscellaneous Types (changed from the comment to the new types)
                Miscellaneous = 50,
                Neck = 51,
                Ring = 52,
                Trinket = 53,
                Relic = 54,
                Consumable = 55,    // AP
                Reagent = 56,
                ProfessionEquipment = 57,
                Containers = 58,
                ClassBooks = 59,

                // Non-Equipment Types
                Mount = 100,
                BattlePet = 101,
                Toy = 102,
                Illusion = 103,
                Quest = 104,
                Achievement = 105,
                Holiday = 106,
                MusicRoll = 108,
                Heirloom = 109,
                Title = 110,
                Glyph = 111,
                Faction = 112,
                Bag = 113,
                Key = 114,

                // Recipes
                Recipe = 200,

                EventItem = 999,
            }

            /// <summary>
            /// Calculate the Filter ID for a set of item specifiers.
            /// </summary>
            /// <param name="itemClass">The item class. (IE: Armor/Weapon/Misc)</param>
            /// <param name="itemSubClass">The item subclass. (IE: Cloth/Mail/Plate/Wands)</param>
            /// <param name="inventoryType">The inventory type. (IE: Shirt, Tabard, Main Hand)</param>
            /// <returns>The Filter ID. (Default: 0 if invalid, -1 if ignored.)</returns>
            private static Filters CalculateFilter(long itemClass, long itemSubClass, long inventoryType)
            {
                // https://wow.gamepedia.com/Enum.InventoryType
                // Inventory Types
                // Some inventory types make this very very easy to calculate.
                switch (inventoryType)
                {
                    case 02: return Filters.Neck;
                    case 04: return Filters.Shirt;
                    case 11: return Filters.Ring;
                    case 12: return Filters.Trinket;
                    case 16: return Filters.Cloak;
                    case 18: return Filters.Bag;
                    case 19: return Filters.Tabard;
                    //case 22: return Filters.HeldInOffHand;    // Causes off-hand axes and stuff to get flagged as held in offhand.
                    //case 23: return Filters.HeldInOffHand;    // causes un-bindable Fish to include a SourceID
                    case 29: return Filters.ProfessionEquipment;
                    case 30: return Filters.ProfessionEquipment;
                    default: break;
                }

                // Item Classes
                // Some of these settings are global and others are segregated into sub-groups.
                switch (itemClass)
                {
                    // Consumable
                    case 0:
                        switch (itemSubClass)
                        {
                            case 00: return Filters.Consumable;    // Engineering Items (Explosives / Scopes) (Ignored!)
                            case 01: return Filters.Consumable;    // Potions (Ignored!)
                            case 02: return Filters.Consumable;    // Elixirs (Ignored!)
                            case 03: return Filters.Consumable;    // Flask (Ignored!)
                            case 05: return Filters.Consumable;    // Food (Ignored!)
                            case 07: return Filters.Consumable;    // First Aid (Ignored!)
                            case 08: return Filters.Consumable;    // Consumables (Artifact Power)
                            case 09: return Filters.Consumable;    // Vantus Runes (Ignored!)
                            default: return Filters.Ignored;
                        }

                    // Bags -- Note: This might be pretty cool to add.
                    case 1:
                        switch (itemSubClass)
                        {
                            case 00: return Filters.Bag;    // Bags (Ignored!)
                            case 02: return Filters.Bag;    // Herb Bags (Ignored!)
                            case 03: return Filters.Bag;    // Enchanting Bags (Ignored!)
                            case 04: return Filters.Bag;    // Engineering Bags (Ignored!)
                            case 05: return Filters.Bag;    // Jewelcrafting Bags (Ignored!)
                            case 06: return Filters.Bag;    // Mining Bags (Ignored!)
                            case 07: return Filters.Bag;    // Leatherworking Bags (Ignored!)
                            case 08: return Filters.Bag;    // Inscription Bags (Ignored!)
                            case 09: return Filters.Bag;    // Fishing Bags (Ignored!)
                            case 10: return Filters.Bag;    // Cooking Bags (Ignored!)
                            default: return Filters.Invalid;
                        }

                    // Weapon
                    case 2:
                        switch (itemSubClass)
                        {
                            case 00: return Filters.OneHandedAxe;
                            case 01: return Filters.TwoHandedAxe;
                            case 02: return Filters.Bow;
                            case 03: return Filters.Gun;
                            case 04: return Filters.OneHandedMace;
                            case 05: return Filters.TwoHandedMace;
                            case 06: return Filters.Polearm;
                            case 07: return Filters.OneHandedSword;
                            case 08: return Filters.TwoHandedSword;
                            case 09: return Filters.Warglaive;
                            case 10: return Filters.Staff;
                            case 11:                // 11/12/13 (Bear / Cat Claw) - These do not exist?
                            case 12:                // Gonna just classify as Fist Weapon.
                            case 13: return Filters.FistWeapon;
                            case 14: return Filters.Cosmetic;           // Many equippable white items with no restriction post 10.0.5... are they all learnable?
                            case 15: return Filters.Dagger;
                            case 16: return Filters.Thrown;            // Thrown
                            case 17: return Filters.Polearm;            // Spear (not seeing anything in this filter, so converting to Polearm instead?)
                            case 18: return Filters.Crossbow;
                            case 19: return Filters.Wand;
                            case 20: return Filters.ProfessionEquipment;      // Fishing Poles / Miscellaneous
                            default: return Filters.Invalid;
                        }

                    // Cut Gems / Relics / Things that Socket
                    case 3:
                        switch (itemSubClass)
                        {
                            case 11: return Filters.Relic;      // Relics
                            default: return Filters.Ignored;
                        }

                    // Armor
                    case 4:
                        switch (itemSubClass)
                        {
                            case 00:    // Miscellaneous
                                switch (inventoryType)
                                {
                                    case 00: return Filters.Ignored;            // Tokens?
                                    case 01: return Filters.Cosmetic;           // Head (no armor type specified - Cosmetic?)
                                    case 03: return Filters.Cosmetic;           // Shoulder (no armor type specified - Cosmetic?)
                                    case 05: return Filters.Cosmetic;           // Shirt (no armor type specified - Cosmetic?)
                                    case 06: return Filters.Cosmetic;           // Waist (no armor type specified - Cosmetic?)
                                    case 07: return Filters.Cosmetic;           // Legs (no armor type specified - Cosmetic?)
                                    case 08: return Filters.Cosmetic;           // Boots (no armor type specified - Cosmetic?)
                                    case 09: return Filters.Cosmetic;           // Wrist (no armor type specified - Cosmetic?)
                                    case 10: return Filters.Cosmetic;           // Gloves (no armor type specified - Cosmetic?)
                                    case 20: return Filters.Cosmetic;           // Chest (no armor type specified - Cosmetic?)
                                    case 23: return Filters.HeldInOffHand;      // Held in Offhand
                                    case 28: return Filters.Relic;              // Micellaneous (Relics)
                                    default: return Filters.Invalid;
                                }
                            case 01: return Filters.Cloth;
                            case 02: return Filters.Leather;
                            case 03: return Filters.Mail;
                            case 04: return Filters.Plate;
                            case 05: return Filters.Cosmetic;
                            case 06: return Filters.Shield;
                            case 07: return Filters.Relic;      // Librams
                            case 08: return Filters.Relic;      // Idols
                            case 09: return Filters.Relic;      // Totems
                            default: break;
                        }
                        break;

                    // Miscellaneous?
                    case 5:
                        switch (itemSubClass)
                        {
                            case 00: return Filters.Ignored;    // Unique Items
                            case 01: return Filters.Ignored;    // Keystones
                            default: return Filters.Invalid;
                        }

                    // Arrows / Ammo
                    case 6:
                        return Filters.Ammo;

                    // Crafting Reagents
                    case 7:
                        switch (itemSubClass)
                        {
                            case 00: // Trade Goods
                                switch (inventoryType)
                                {
                                    case 00: return Filters.Ignored;    // Non-Equippable
                                    case 12: return Filters.Trinket;    // Trinkets
                                    default: return Filters.Invalid;
                                }
                            case 01: return Filters.Reagent;    // Engineering
                            case 03:    // Devices
                                switch (inventoryType)
                                {
                                    case 00: return Filters.Reagent;    // Non-Equippable
                                    case 12: return Filters.Trinket;    // Trinkets
                                    default: return Filters.Reagent;
                                }
                            case 04: return Filters.Reagent;    // Jewelcrafting
                            case 05: return Filters.Reagent;    // Tailoring
                            case 06: return Filters.Reagent;    // Leatherworking
                            case 07: return Filters.Reagent;    // Mining
                            case 08: return Filters.Reagent;    // Cooking
                            case 09: return Filters.Reagent;    // Herbalism
                            case 10: return Filters.Reagent;    // Shared Crafting Reagents
                            case 11: return Filters.Reagent;    // First Aid?
                            case 12: return Filters.Reagent;    // Enchanting
                            case 16: return Filters.Reagent;    // Inscription
                            default: return Filters.Invalid;
                        }

                    // Item Enhancements
                    case 8:
                        switch (itemSubClass)
                        {
                            case 01: return Filters.Consumable;    // Neck
                            case 02: return Filters.Consumable;    // Shoulders
                            case 03: return Filters.Consumable;    // Cloaks
                            case 04: return Filters.Consumable;    // Chest
                            case 05: return Filters.Consumable;    // Bracers
                            case 06: return Filters.Consumable;    // Gloves
                            case 07: return Filters.Consumable;    // Belt
                            case 08: return Filters.Consumable;    // Legs
                            case 09: return Filters.Consumable;    // Boots
                            case 10: return Filters.Consumable;    // Ring
                            case 11: return Filters.Consumable;    // Weapons
                            case 12: return Filters.Consumable;    // 2H-Weapons
                            case 13: return Filters.Consumable;    // Shields
                            case 14: return Filters.Consumable;    // Shared Item Enhancements
                            case 16: return Filters.Consumable;    // Old Glyphs (TODO: Perhaps something we can track?)
                            default: return Filters.Invalid;
                        }

                    // Recipes
                    case 9:
                        switch (itemSubClass)
                        {
                            // TODO: this causes them to be uncollectible...
                            //case 0: return Filters.ClassBooks;    // Recipes with no Profession are class books from API data
                            default: return Filters.Recipe;
                        }

                    // Tokens
                    //case 10: return Filters.Ignored;    // Tokens

                    // Quest Items
                    case 12: return Filters.Quest;

                    // Keys
                    case 13:
                        return Filters.Key;

                    // Miscellaneous
                    case 15:
                        switch (itemSubClass)
                        {
                            case 00:
                                switch (inventoryType)
                                {
                                    case 00: return Filters.Ignored;            // Ignored
                                    case 01: return Filters.Cosmetic;           // Head (no armor type specified - Cosmetic?)
                                    case 03: return Filters.Cosmetic;           // Shoulder (no armor type specified - Cosmetic?)
                                    case 05: return Filters.Cosmetic;           // Shirt (no armor type specified - Cosmetic?)
                                    case 06: return Filters.Cosmetic;           // Waist (no armor type specified - Cosmetic?)
                                    case 07: return Filters.Cosmetic;           // Legs (no armor type specified - Cosmetic?)
                                    case 08: return Filters.Cosmetic;           // Boots (no armor type specified - Cosmetic?)
                                    case 09: return Filters.Cosmetic;           // Wrist (no armor type specified - Cosmetic?)
                                    case 10: return Filters.Cosmetic;           // Gloves (no armor type specified - Cosmetic?)
                                    case 20: return Filters.Cosmetic;           // Chest (no armor type specified - Cosmetic?)
                                    case 21: return Filters.Cosmetic;           // Main Hand (no armor type specified - Cosmetic?)
                                    //case 23: return Filters.HeldInOffHand;      // Held in Offhand
                                    case 24: // Projectiles
                                        return Filters.Ammo;
                                    default: return Filters.Invalid;
                                }
                            case 01: return Filters.Ignored;    // Reagent (not filtered)
                            case 02: return Filters.BattlePet;
                            case 03: return Filters.Holiday;
                            case 04: return Filters.Ignored;        // Seems to be typically one-time Item consumes with Quests
                            case 05: return Filters.Mount;
                            case 12: return Filters.Ignored;    // Trash (not filtered)
                            default: break;
                        }
                        break;

                    // Glyphs
                    case 16: return Filters.Glyph;

                    // Pet Battles
                    case 17: return Filters.BattlePet;

                    // WoW Token
                    case 18: return Filters.Ignored;

                    // Profession
                    case 19: return Filters.Ignored;

                    // Not something where these settings would help parse it.
                    default: break;
                }

                // Everything else is unknown
                return Filters.Invalid;
            }

            /// <summary>
            /// Merges information from the database object into shared object storage.
            /// </summary>
            /// <param name="primaryKey">The primary key of the database module.</param>
            /// <param name="databaseObject">The data to merge into shared storage.</param>
            internal static void MergeFromDB(string primaryKey, IDictionary<string, object> databaseObject)
            {
                // does this data contain the key?
                if (databaseObject.TryGetValue(primaryKey, out object keyValue))
                {
                    // get the container for objects of this key
                    ConcurrentDictionary<object, ConcurrentDictionary<string, object>> typeObjects = SharedDataByPrimaryKey.GetOrAdd(primaryKey,
                        _ => new ConcurrentDictionary<object, ConcurrentDictionary<string, object>>());

                    // get the specific merged object
                    ConcurrentDictionary<string, object> merged = typeObjects.GetOrAdd(keyValue,
                        _ => new ConcurrentDictionary<string, object>());

                    foreach (var pair in databaseObject)
                    {
                        if (pair.Key == primaryKey)
                            continue;

                        Merge(merged, pair.Key, pair.Value);
                    }
                }
                else
                {
                    LogError($"Primary Key missing from DB data {primaryKey}", databaseObject);
                }
            }

            /// <summary>
            /// Merges whitelisted information from the non-database object into shared object storage.
            /// </summary>
            /// <param name="objectData">The data to merge into shared storage.</param>
            internal static void MergeFromObject(IDictionary<string, object> objectData)
            {
                if (objectData.ContainsAnyKey(MergeRestrictedFields))
                    return;

                foreach (var mergeObjectFieldPair in MERGE_FROM_OBJECT_FIELDS)
                {
                    // does this data contain the key?
                    if (!objectData.TryGetValue(mergeObjectFieldPair.Key, out object keyValue))
                        continue;

                    // only bother creating a merge container if the data contains a merging key
                    if (!objectData.ContainsAnyKey(mergeObjectFieldPair.Value))
                        continue;

                    // get the container for objects of this key
                    ConcurrentDictionary<object, ConcurrentDictionary<string, object>> typeObjects = SharedDataByPrimaryKey.GetOrAdd(mergeObjectFieldPair.Key,
                        _ => new ConcurrentDictionary<object, ConcurrentDictionary<string, object>>());

                    // get the specific merged object
                    ConcurrentDictionary<string, object> merged = typeObjects.GetOrAdd(keyValue,
                        _ => new ConcurrentDictionary<string, object>());

                    //if (DebugMode)
                    //    Trace.WriteLine($"Merge>{key}:{keyValue} = {ToJSON(data)}");

                    // merge the allowed fields by the key into the merged object
                    foreach (string field in mergeObjectFieldPair.Value)
                    {
                        // 'g' is never allowed to merge from an object, even if allowed in MERGE_OBJECT_FIELDS to merge into an object from the DB
                        if (field == "g")
                            continue;

                        if (!objectData.TryGetValue(field, out object val))
                            continue;

                        Merge(merged, field, val);
                    }
                }
            }

            /// <summary>
            /// Merges shared data from the database into the object.
            /// </summary>
            /// <param name="objectData">The object data to merge shared data into.</param>
            internal static void MergeSharedDataIntoObject(IDictionary<string, object> data)
            {
                if (data.ContainsAnyKey(MergeRestrictedFields))
                    return;

                foreach (var container in SharedDataByPrimaryKey.Where(c => MERGE_OBJECT_FIELDS.ContainsKey(c.Key)))
                {
                    // does this data contain the key?
                    if (!data.TryGetValue(container.Key, out object keyValue))
                        continue;

                    // get the specific merged object
                    if (!container.Value.TryGetValue(keyValue, out ConcurrentDictionary<string, object> commonData))
                        continue;

                    // merge the allowed fields by key into the data object
                    MERGE_OBJECT_FIELDS.TryGetValue(container.Key, out string[] mergeFields);

                    PreMerge(data, commonData);

                    foreach (var field in mergeFields)
                    {
                        if (commonData.TryGetValue(field, out object val))
                        {
                            if (!data.TryGetValue(field, out object existingVal))
                            {
                                data[field] = val;
                            }
                            else if (!Equals(existingVal, val))
                            {
                                // Don't replace existing values with merge DB values
                                if (existingVal != null && !(existingVal is IEnumerable enumerableVal))
                                {
                                    LogDebugWarn($"Ignoring different value on merge of Object.{field}='{ToJSON(existingVal)}' from DB='{ToJSON(val)}'", data);
                                }
                                else
                                {
                                    //LogDebugWarn($"Merging different value into Object.{field}='{ToJSON(existingVal)}' from DB='{ToJSON(val)}'", data);
                                    Merge(data, field, val);
                                }
                            }

                            // In some cases, the DB merge may include nested groups, so we need to apply inherited fields if this was the case
                            if (field == "g" && data.TryGetValue("g", out List<object> groups))
                            {
                                foreach (var group in groups.AsTypedEnumerable<IDictionary<string, object>>())
                                {
                                    Validate_InheritedFields(group, data);
                                }
                            }
                        }
                    }
                }
            }

            /// <summary>
            /// Stores a given data to be merged later under the respective key/keyValue objects identified on the 2nd processing pass
            /// </summary>
            /// <param name="key"></param>
            /// <param name="keyValue"></param>
            /// <param name="data"></param>
            internal static void PostProcessMerge(string key, decimal keyValue, IDictionary<string, object> data)
            {
                // TODO: need to revise the merge process more, having it performed in the same stage as Incorporation means we could try to merge into
                // something that hasn't been assigned the necessary data yet, like a questID on Criteria or SpellID on an Item
                // If the merge key/value matches a valid Sourced data already, then we can just directly merge it into those Sourced objects
                //if (TryGetSOURCED(key, keyValue, out var sourced))
                //{
                //    data["_postMergeSourced"] = sourced;
                //    foreach(var source in sourced)
                //    {
                //        Merge(source, "g", data);
                //    }
                //    return;
                //}

                //data.DataBreakPoint("criteriaID", 60862);

                var typeObjects = PostProcessMergeIntos.GetOrAdd(key, _ => new ConcurrentDictionary<decimal, ConcurrentDataList>());
                var mergeObjects = typeObjects.GetOrAdd(keyValue, _ => new ConcurrentDataList());

                //LogDebug($"Post Process Merge Added: {key}:{keyValue}", data);
                // Processing on groups happens IN PARALLEL so if we are adding content to be post-merged during that pass
                // we will order them based on their keyvalue to ensure consistency between parses
                mergeObjects.Add(new Dictionary<string, object>(data));
            }

            /// <summary>
            /// Merges a given set of objects based on the key name and key value from the common storage into the Source object
            /// </summary>
            /// <param name="v"></param>
            /// <param name="data"></param>
            internal static void PostProcessMergeInto(IDictionary<string, object> data)
            {
                // some data we want to explicitly ignore as being Sourced in a certain location since it may cause inaccurate data distribution
                // for other data
                if (data.ContainsAnyKey(MergeRestrictedFields))
                    return;

                // data.DataBreakPoint("achID", 40103);
                // questID : { 123, [ obj1, obj2, obj3 ] }
                // questID:123
                // get the appropriate merge objects for this data based on the matching keys
                foreach (var mergeKvp in PostProcessMergeIntos)
                {
                    string key = mergeKvp.Key;
                    // merge into anything that's not an Achievement, or into Achievements which are not within the Achievements category
                    if (ProcessingAchievementCategory && key == "achID")
                        continue;

                    // for 'factionID' merge into, make sure it does not also have 'itemID' (commendations etc.)
                    if (key == "factionID" && data.ContainsKey("itemID"))
                        continue;

                    // Determine the set of mergeObjects to merge into this data
                    ConcurrentDataList mergeObjects = null;

                    // does this data contain the matching field
                    if (!(data.TryGetValue(key, out decimal keyValue)
                        // get the container for objects of this key
                        && mergeKvp.Value.TryGetValue(keyValue, out mergeObjects)))
                    {
                        // TODO: too lenient on merging without respect to difficulty... for now will maintain only _encounterHash merging into encounters
                        // special cases where a non-key-based data may still need to merge assigned data based on fields
                        //if (key == "npcID")
                        //{
                        //    // Multi-NPC Encounters should be treated as being Sourced for each NPCID in 'crs'
                        //    if (data.TryGetValue("encounterID", out long encounterID) && data.TryGetValue("crs", out List<object> crs))
                        //    {
                        //        mergeObjects = new List<IDictionary<string, object>>();
                        //        foreach (long npcID in crs.AsTypedEnumerable<long>())
                        //        {
                        //            if (mergeKvp.Value.TryGetValue(npcID, out var subMergeObjects))
                        //            {
                        //                mergeObjects.AddRange(subMergeObjects);
                        //            }
                        //        }
                        //    }
                        //}

                        if (mergeObjects == null)
                            continue;
                    }

                    // probably cleaner way to make this chunk re-usable if other merge-filtering is required in future... can't think atm

                    // for '_encounterHash' merge into, make sure the merged Encounter matches the specific EventID
                    if (key == "_encounterHash")
                    {
                        if (data.TryGetValue("e", out long eventID))
                        {
                            // merge the objects into the data object
                            foreach (IDictionary<string, object> mergeObject in mergeObjects)
                            {
                                if (!mergeObject.TryGetValue("e", out long mergingEventID) || mergingEventID != eventID)
                                    continue;

                                // track the data which is actually being merged into another group
                                TrackPostProcessMergeKey(key, keyValue);

                                // match EventID when merging
                                // copy the actual object when merging under another Source, since it may merge into multiple Sources
                                Merge(data, "g", mergeObject);
                            }
                        }
                        else
                        {
                            // merge the objects into the data object
                            foreach (IDictionary<string, object> mergeObject in mergeObjects)
                            {
                                if (mergeObject.ContainsKey("e"))
                                    continue;

                                // track the data which is actually being merged into another group
                                TrackPostProcessMergeKey(key, keyValue);

                                // copy the actual object when merging under another Source, since it may merge into multiple Sources
                                Merge(data, "g", mergeObject);
                            }
                        }
                    }
                    else
                    {
                        // merge the objects into the data object
                        foreach (IDictionary<string, object> mergeObject in mergeObjects)
                        {
                            // If we're relative to a map object
                            if (mergeObject.ContainsKey("criteriaID") && data.ContainsKey("mapID"))
                            {
                                // (and not under NYI or Unsorted)
                                if (data.ContainsKey("_nyi") || data.ContainsKey("_unsorted"))
                                {
                                    // the sourced map is under NYI/Unsorted, so just 'pretend' we merged into it to bypass warnings
                                    TrackPostProcessMergeKey(key, keyValue);
                                    continue;
                                }

                                var isPetBattleHeader = mergeObject.ContainsKey("pb");
                                if (CUSTOM_HEADER_CONSTANTS.TryGetValue(isPetBattleHeader ? "PET_BATTLES" : "ACHIEVEMENTS", out long headerID))
                                {
                                    var header = new Dictionary<string, object>
                                    {
                                        { "headerID", headerID },
                                        { "g", new List<object>{ mergeObject } }
                                    };
                                    if (isPetBattleHeader) header["pb"] = mergeObject["pb"];
                                    // track the data which is actually being merged into another group
                                    TrackPostProcessMergeKey(key, keyValue);
                                    Merge(data, "g", header);
                                    continue;
                                }
                            }

                            // track the data which is actually being merged into another group
                            TrackPostProcessMergeKey(key, keyValue);
                            // copy the actual object when merging under another Source, since it may merge into multiple Sources
                            Merge(data, "g", mergeObject);
                        }
                    }
                }
            }

            internal static void TrackPostProcessMergeKey(string key, decimal value)
            {
                var keyValues = PostProcessMergedKeyValues.GetOrAdd(key, _ => new ConcurrentHashSet<decimal>());

                //LogDebug($"Post Process MergeInto Performed: {key}:{value}");
                keyValues.Add(value);
            }

            internal static void NotifyPostProcessMergeFailures()
            {
                foreach (var keyGroup in PostProcessMergedKeyValues)
                {
                    if (PostProcessMergeIntos.TryGetValue(keyGroup.Key, out ConcurrentDictionary<decimal, ConcurrentDataList> keyValueDatas))
                    {
                        foreach (var keyGroupValue in keyGroup.Value)
                        {
                            keyValueDatas.TryRemove(keyGroupValue, out _);
                        }
                    }
                }

                // report any remaining objects by key/keyValue
                foreach (var keyGroup in PostProcessMergeIntos)
                {
                    foreach (var keyValueMergeSet in keyGroup.Value)
                    {
                        LogWarn($"Failed to merge data which requires a Source: [{keyGroup.Key}]:[{keyValueMergeSet.Key}]", keyValueMergeSet.Value);
                    }
                }
            }

            /// <summary>
            /// Calculate the Filter ID for a data dictionary.
            /// NOTE: This function does not assign the filter ID automatically.
            /// </summary>
            /// <param name="data">The data dictionary.</param>
            /// <returns>The Filter ID. (Default: 0 if invalid, -1 if ignored.)</returns>
            private static Filters CalculateFilter(IDictionary<string, object> data)
            {
                // The presence of certain fields make calculating the Filter ID very easy.
                if (data.ContainsKey("mountID")) return Filters.Mount;
                if (data.ContainsKey("speciesID")) return Filters.BattlePet;
                if (data.ContainsKey("illusionID")) return Filters.Illusion;
                if (data.ContainsKey("professionID")) return Filters.Recipe;
                if (data.ContainsKey("questID")) return Filters.Quest;
                if (data.ContainsKey("achID")) return Filters.Achievement;

                // Calculate the Filter ID based on Item Class, Sub Class, and Inventory Type
                long itemClass = -1, itemSubClass = -1, inventoryType = -1;
                if (data.TryGetValue("class", out long temp) || data.TryGetValue("_class", out temp))
                {
                    itemClass = temp;
                }
                if (data.TryGetValue("subclass", out temp) || data.TryGetValue("_subclass", out temp))
                {
                    itemSubClass = temp;
                }
                if (data.TryGetValue("inventoryType", out temp) || data.TryGetValue("_inventoryType", out temp))
                {
                    inventoryType = temp;
                }
                return CalculateFilter(itemClass, itemSubClass, inventoryType);
            }

            internal static void AddRecipe(long requiredSkill, string recipeName, long recipeID)
            {
                // only add recipes with a name and requiredSkill
                if (recipeName == null || requiredSkill == 0)
                    return;

                // ensure skill bucket exists
                if (!AllRecipes.TryGetValue(requiredSkill, out Dictionary<long, string> skillRecipes))
                    AllRecipes[requiredSkill] = skillRecipes = new Dictionary<long, string>();

                // do not add matching recipeID
                if (skillRecipes.ContainsKey(recipeID))
                    return;

                // add the recipe info
                skillRecipes.Add(recipeID, recipeName);
            }

            internal static bool FindRecipeForData(long requiredSkill, IDictionary<string, object> data, out long recipeID)
            {
                // Expected data for a Recipe: ItemID & RecipeID
                data.TryGetValue("recipeID", out recipeID);
                // No need to adjust the data
                if (recipeID > 0)
                    return false;

                // don't guess Recipes for anything Unsorted
                if (ProcessingUnsortedCategory) return false;

                data.TryGetValue("spellID", out long spellID);
                // get the name of the recipe item (i.e. Technique: blah blah)
                Items.TryGetName(data, out string recipeItemName);
                data.TryGetValue("itemID", out object itemID);

                // have we already Sourced this Recipe? then assume it's also granted by another Item
                if (TryGetSOURCED("recipeID", spellID, out var _))
                {
                    LogDebugFormatted(LogFormats["ItemRecipeFormat"], itemID, spellID, recipeItemName, $"Duplicate SpellID Match with Sourced RecipeID");

                    recipeID = spellID;
                    return true;
                }

                // Item directly marked as a 'Recipe', then assume the associated spellID represents the recipeID
                if (data.TryGetValue("f", out long filterID))
                {
                    if (filterID == (long)Filters.Recipe)
                    {
                        if (spellID > 0)
                        {
                            recipeID = spellID;

                            LogDebugFormatted(LogFormats["ItemRecipeFormat"], itemID, spellID, recipeItemName, "Filter Recipe with SpellID");
                            return true;
                        }
                    }
                    // This Item is known to be 'something' which is not a Recipe, so just return
                    else
                    {
                        recipeID = -1;
                        return false;
                    }
                }

                // no recipe name or doesn't contain :
                if (recipeItemName == null || !recipeItemName.Contains(":"))
                {
                    recipeID = -1;
                    return false;
                }

                // find skill bucket
                if (!AllRecipes.TryGetValue(requiredSkill, out Dictionary<long, string> skillRecipes))
                {
                    //if (DebugMode)
                    //    Trace.WriteLine($"No recipes for skill {requiredSkill}");

                    recipeID = -1;
                    return false;
                }

                // if this Item has an existing spellID which matches a known RecipeID for this requiredSkill, then if the name matches, assume it's the exact RecipeID
                if ((spellID > 0 || data.TryGetValue("recipeID", out spellID)) &&
                    skillRecipes.TryGetValue(spellID, out string matchedRecipeName) &&
                    (recipeItemName == matchedRecipeName || recipeItemName.Contains(matchedRecipeName)))
                {
                    // remove the spellID since it's converting to recipeID
                    data.Remove("spellID");
                    recipeID = spellID;

                    LogDebugFormatted(LogFormats["ItemRecipeFormat"], itemID, spellID, recipeItemName, $"Item Name Contains Skill-matched Recipe Name '{matchedRecipeName}'");
                    return true;
                }

                // fallback: Loop through all recipes and compare Recipe name vs. Item name
                foreach (KeyValuePair<long, string> recipeInfo in skillRecipes)
                {
                    // perfect recipe - item match!
                    if (recipeItemName.Contains(": " + recipeInfo.Value))
                    {
                        recipeID = recipeInfo.Key;

                        LogDebugFormatted(LogFormats["ItemRecipeFormat"], itemID, recipeID, recipeItemName, $"Item Name Partially-Contains Recipe Name '{recipeInfo.Value}'");
                        return true;
                    }
                    // do we need further checking?
                }

                return false;
            }

            /// <summary>
            /// Assign the Filter ID for this data dictionary if a valid ID hasn't already been assigned.
            /// </summary>
            /// <param name="data">The data dictionary.</param>
            public static void AssignFilterID(IDictionary<string, object> data)
            {
                // If an object already has a filter ID assigned and the ID is valid, ignore it.
                if (data.TryGetValue("f", out long f) && f > 0) return;

                // Calculate the filter ID. (0 is invalid, -1 is explicitly ignored)
                f = (long)CalculateFilter(data);

                // This may happen a lot and is kind of expected... maybe re-designed in future
                //if (DebugMode && f == 0)
                //    Trace.WriteLine("Invalid filter for: " + ToJSON(data));

                // Don't set invalid filter values
                if (f > 0)
                    data["f"] = f;
            }

            /// <summary>
            /// This table is used for Skill ID conversions from the new style BFA Skill IDs to the original style.
            /// Imported from SKILL_ID_CONVERSION_TABLE lua Global during parsing
            /// </summary>
            public static Dictionary<long, long> SKILL_ID_CONVERSION_TABLE;

            /// <summary>
            /// Assign the Faction ID for this data dictionary if a valid ID hasn't already been assigned.
            /// </summary>
            /// <param name="data">The data dictionary.</param>
            public static void AssignFactionID(IDictionary<string, object> data)
            {
                // Calculate the faction ID. (0 is no faction)
                if (!data.TryGetValue("races", out List<object> races))
                    return;

                // Neutral Pandas technically get access to both horde and alliance things, the undecisive bastards.
                bool hadNeutralPandaren = races.Remove(24);

                // Alliance Only?
                if (ALLIANCE_ONLY.Matches(races))
                {
                    data["r"] = 2;  // Alliance Only!
                    data.Remove("races");   // We do not need to include races for this as it is ALLIANCE_ONLY.
                }
                // Horde Only?
                else if (HORDE_ONLY.Matches(races))
                {
                    data["r"] = 1;  // Horde Only!
                    data.Remove("races");   // We do not need to include races for this as it is HORDE_ONLY.
                }
                else
                {
                    // Add back neutral pandaren if we removed them.
                    if (hadNeutralPandaren) races.Add(24);

                    // All Races?
                    if (ALL_RACES.Matches(races))
                    {
                        data.Remove("races");   // We do not need to include races for this as it is ALL_RACES.
                    }
                }
            }
            #endregion
            #region Export
            /// <summary>
            /// Export all items found within the relative path.
            /// </summary>
            /// <param name="group">The group of objects potentially containing item data.</param>
            /// <param name="result">The result list to be exported.</param>
            private static void ExportItems(List<object> group, List<IDictionary<string, object>> result)
            {
                foreach (var entry in group)
                {
                    if (entry is IDictionary<string, object> o)
                    {
                        if (o.ContainsKey("itemID"))
                        {
                            var itemData = Items.GetNull(o);
                            if (itemData != null && itemData.TryGetValue("name", out object nameRef)) o["name"] = nameRef;
                            result.Add(o);
                        }
                        if (o.TryGetValue("g", out List<object> g)) ExportItems(g, result);
                    }
                }
            }

            /// <summary>
            /// Export Debugging Files to the supplied directory.
            /// </summary>
            /// <param name="directory">The directory to file the debug files to.</param>
            public static void ExportDebug(string directory)
            {
                // Export all of the Containers
                File.WriteAllText(Path.Combine(directory, "Categories.lua"), ExportRawLua(AllContainers).ToString(), Encoding.UTF8);

                // Export as JSON!
                File.WriteAllText(Path.Combine(directory, "Categories.json"), ToJSON(AllContainers), Encoding.UTF8);

                // Cache the "Unsorted" list.
                if (AllContainers.TryGetValue("Unsorted", out List<object> unsorted))
                {
                    // Export all Unsorted items... in a sorted way.
                    var sortedList = new List<IDictionary<string, object>>();
                    ExportItems(unsorted, sortedList);
                    sortedList.Sort(delegate (IDictionary<string, object> a, IDictionary<string, object> b)
                    {
                        if (a.TryGetValue("name", out object nameRefA))
                        {
                            if (b.TryGetValue("name", out object nameRefB))
                            {
                                return nameRefA.ToString().CompareTo(nameRefB.ToString());
                            }
                        }
                        return 0;
                    });
                    var bindingSpecification = new Dictionary<long, Dictionary<long, List<string>>>();
                    StringBuilder builder2 = new StringBuilder(), itemNameBuilder = new StringBuilder();
                    foreach (var item in sortedList)
                    {
                        if (item.TryGetValue("itemID", out long itemID))
                        {
                            itemNameBuilder.Clear().Append("i(").Append(itemID).Append("),");
                            if (item.TryGetValue("name", out string name)) itemNameBuilder.Append("\t-- ").Append(name.Replace("]", "").Replace("[", ""));
                            itemNameBuilder.AppendLine();
                            builder2.Append(itemNameBuilder);

                            // Determine the Binding and Filter Types
                            if (!item.TryGetValue("b", out long b)) b = 0;
                            if (!item.TryGetValue("f", out long f)) f = 0;

                            // Write the Item Name to the correct Binding Filtered Dictionary List.
                            if (!bindingSpecification.TryGetValue(b, out Dictionary<long, List<string>> filterSpecification))
                            {
                                bindingSpecification[b] = filterSpecification = new Dictionary<long, List<string>>();
                            }
                            if (!filterSpecification.TryGetValue(f, out List<string> listOfItems))
                            {
                                filterSpecification[f] = listOfItems = new List<string> { itemNameBuilder.ToString() };
                            }
                            else listOfItems.Add(itemNameBuilder.ToString());
                        }
                    }
                    File.WriteAllText(Path.Combine(directory, "SortedItems.lua"), builder2.ToString(), Encoding.UTF8);

                    // Export the Binding Filtered Dictionary List.
                    builder2.Clear();
                    var allBindings = bindingSpecification.Keys.ToList();
                    allBindings.Sort();
                    foreach (var b in allBindings)
                    {
                        builder2.Append("-- Bind Type ").Append(b).AppendLine();
                        var filterSpecification = bindingSpecification[b];
                        var allFilters = filterSpecification.Keys.ToList();
                        allFilters.Sort();
                        foreach (var f in allFilters)
                        {
                            builder2.Append("\t-- ");
                            try
                            {
                                builder2.Append(Enum.GetName(typeof(Filters), f));
                            }
                            catch
                            {
                                builder2.Append("Filter Type ").Append(f);
                            }
                            builder2.AppendLine();
                            foreach (var item in filterSpecification[f])
                            {
                                builder2.Append('\t').Append(item);
                            }
                            builder2.AppendLine();
                        }
                    }
                    File.WriteAllText(Path.Combine(directory, "SortedItemsByFilteredBinding.lua"), builder2.ToString(), Encoding.UTF8);

                    // Export all Unsorted.
                    File.WriteAllText(Path.Combine(directory, "Unsorted.lua"), ExportRawLua(unsorted).ToString(), Encoding.UTF8);
                }
            }

            /// <summary>
            /// Export the database to the supplied directory.
            /// </summary>
            /// <param name="directory">The directory to file the debug files to.</param>
            public static void Export(string directory)
            {
                var AllContainerClones = new SortedDictionary<string, List<object>>(AllContainers, StringComparer.InvariantCulture);
                var builder = new StringBuilder("<Ui xmlns=\"http://www.blizzard.com/wow/ui/\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xsi:schemaLocation=\"http://www.blizzard.com/wow/ui/..\\FrameXML\\UI.xsd\">");
                builder.AppendLine().Append("\t<Script file=\"LocalizationDB.lua\"/>");
                var categoryFolder = Path.Combine(directory, "Categories");
                if (Directory.Exists(categoryFolder)) Directory.Delete(categoryFolder, true);
                Directory.CreateDirectory(categoryFolder);

                // Add the XML tags
                foreach (var containerPair in AllContainerClones)
                {
                    if (containerPair.Value.Count > 0)
                    {
                        builder.AppendLine().Append("\t<Script file=\"Categories/").Append(containerPair.Key).Append(".lua\"/>");
                    }
                }

                // Load all of the Wago Data into the database.
                var extraDatabaseFiles = Framework.Config["extra-database-files"];
                if (extraDatabaseFiles != null)
                {
                    foreach (var filename in (string[])extraDatabaseFiles)
                    {
                        builder.AppendLine().Append("\t<")
                            .Append(filename.EndsWith(".xml") ? "Include" : "Script")
                            .Append(" file=\"").Append(filename).Append("\"/>");
                    }
                }

                // Now write the Database xml document.
                builder.AppendLine().AppendLine("</Ui>");
                WriteIfDifferent(Path.Combine(directory, "Database.xml"), builder.ToString());

                // Build all categories
                ConcurrentDictionary<string, Exporter> categoryBuilders = new ConcurrentDictionary<string, Exporter>();
                if (Debugger.IsAttached)
                {
                    foreach (var containerPair in AllContainerClones)
                    {
                        if (containerPair.Value.Count > 0)
                        {
                            // Build the category file.
                            categoryBuilders[containerPair.Key] = ExportCompressedLuaCategory(containerPair.Key, containerPair.Value);
                        }
                    }
                }
                else
                {
                    AllContainerClones.AsParallel().ForAll((containerPair) =>
                    {
                        if (containerPair.Value.Count > 0)
                        {
                            // Build the category file.
                            categoryBuilders[containerPair.Key] = ExportCompressedLuaCategory(containerPair.Key, containerPair.Value);
                        }
                    });
                }

                // Simplify the structure of each Category builder
                bool doSimplification = !PreProcessorTags.Contains("NOSIMPLIFY");
                var categoriesByLength = categoryBuilders.OrderByDescending(b => b.Value.Length).ToList();
                var simplifyConfig = doSimplification ? Config["SimplifyStructures"] : null;
                Action<Exporter> simplifyFunc;
                if (simplifyConfig == null)
                {
                    simplifyFunc = (s) => { SimplifyStructureForLua(s, 0, 0); };
                    Log("Simplification is SKIPPED");
                }
                else if (simplifyConfig.Defined)
                {
                    int[] simplify = simplifyConfig;
                    simplifyFunc = (s) => { SimplifyStructureForLua(s, simplify[0], simplify[1]); };
                    Log($"Simplification with SimplifyStructures : Replacements={simplify[0]},MinUses={simplify[1]}");
                }
                else
                {
                    simplifyFunc = (s) => { SimplifyStructureForLua(s); };
                    Log($"Simplification with defaults (use SimplifyStructures in .config instead!)");
                }

                if (Debugger.IsAttached)
                {
                    // use sequentual replacements when debugging so it's possible to debug at all
                    for (int i = 0; i < categoriesByLength.Count; i++)
                    {
                        simplifyFunc(categoriesByLength[i].Value);
                    }
                }
                else
                {
                    // Perform replacements on all small StringBuilders in parallel tasks
                    // Doing as Tasks instead of AsParallel to ensure we start execution from the longest to the shortest Exporters
                    Task[] replacementTasks = categoriesByLength.Select(s => Task.Run(() => simplifyFunc(s.Value))).ToArray();
                    Task.WaitAll(replacementTasks);
                }

                // Write the Category file for each builder
                categoryBuilders.AsParallel().ForAll((containerPair) =>
                {
                    var filename = Path.Combine(categoryFolder, $"{containerPair.Key}.lua");
                    var content = containerPair.Value.ToString();
                    if (!string.IsNullOrEmpty(DATA_REQUIREMENTS)) content = $"if not ({DATA_REQUIREMENTS}) then return; end \n{content}";
                    WriteIfDifferent(filename, content);
                });
            }

            public static void ExportAutoLocale(string filename)
            {
                var AllLocaleTypes = new SortedDictionary<string, SortedDictionary<long, string>>();

                foreach (var localeKey in NAMES_BY_TYPE)
                {
                    if (AutoLocalizeType(localeKey.Key))
                    {
                        string localeDictionaryName = localeKey.Key.Replace("ID", string.Empty).ToUpper() + "_NAMES";
                        AllLocaleTypes.Add(localeDictionaryName, new SortedDictionary<long, string>(localeKey.Value));
                    }
                }

                if (AllLocaleTypes.Any())
                {
                    StringBuilder locale = new StringBuilder(10000);
                    locale.AppendLine("--   WARNING: This file is dynamically generated   --");
                    locale.AppendLine("local appName, _ = ...;");
                    locale.Append("local keys = ");
                    AddTableNewLines = true;
                    locale.AppendLine(ExportCompressedLua(AllLocaleTypes).ToString());
                    locale.AppendLine(@"
local L = _.L;
for k,t in pairs(keys) do
    L[k] = t;
end");

                    string content = locale.ToString();
                    if (!string.IsNullOrEmpty(DATA_REQUIREMENTS)) content = $"if not ({DATA_REQUIREMENTS}) then return; end \n{content}";
                    WriteIfDifferent(filename, content);
                }
            }
            #endregion

            #region Export DB
            private static Dictionary<long, bool> BLACKLISTED_NPC_IDS = new Dictionary<long, bool>
            {
                { -1, true },   // Zone Drops?
            };
            private static Dictionary<long, IDictionary<string, object>> ITEM_DB = new Dictionary<long, IDictionary<string, object>>();
            private static Dictionary<long, IDictionary<string, object>> NPC_DB = new Dictionary<long, IDictionary<string, object>>();

            public static void ExportDB(string directory)
            {
                foreach (var container in AllContainers.Values) ProcessDB(container);
                ExportDB(directory, "ITEMDB", ITEM_DB);
                ExportDB(directory, "NPCDB", NPC_DB);
            }

            public static void ExportDB(string directory, string name, Dictionary<long, IDictionary<string, object>> db)
            {
                var builder = new StringBuilder("AllTheThings.").Append(name).Append("={");
                var keys = db.Keys.ToList();
                keys.Sort();
                foreach (var key in keys)
                {
                    var entry = db[key];
                    if (entry.Any())
                    {
                        if (entry.TryGetValue("name", out object entryName))
                        {
                            // Keep the name field for quests, so long as they don't have an item.
                            // They are generally manually assigned in the database.
                            if (!entry.ContainsKey("questID") || entry.ContainsKey("itemID"))
                            {
                                entry.Remove("name");
                            }
                        }
                        else if (entry.TryGetValue("text", out entryName))
                        {
                            entry.Remove("text");
                        }
                        builder.AppendLine();
                        builder
                            .Append('[').Append(key).Append("]=")
                            .Append(ExportCompressedLua(entry).ToString())
                            .Append(',');
                        if (entryName != null) builder.Append("\t-- ").Append(entryName);
                    }
                }
                File.WriteAllText(Path.Combine(directory, $"{name}.lua"), builder.AppendLine().Append("};").ToString(), Encoding.UTF8);
            }

            private static void ProcessDB(List<object> list)
            {
                foreach (var o in list)
                {
                    ProcessDB(o as IDictionary<string, object>);
                }
            }

            private static void ProcessDB(IDictionary<string, object> data)
            {
                if (data == null) return;
                if (data.TryGetValue("g", out object g)) ProcessDB(g as List<object>);

                // We were silly and used both... sigh.
                if (data.TryGetValue("creatureID", out g)) ProcessNPCData(Convert.ToInt64(g), data);
                if (data.TryGetValue("npcID", out g)) ProcessNPCData(Convert.ToInt64(g), data);
                if (data.TryGetValue("itemID", out g)) ProcessItemData(Convert.ToInt64(g), data);
            }

            private static void ProcessItemData(long itemID, IDictionary<string, object> data)
            {
                // Acquire the current Item Data and add to it.
                if (!ITEM_DB.TryGetValue(itemID, out IDictionary<string, object> itemData))
                {
                    ITEM_DB[itemID] = itemData = new Dictionary<string, object>();
                }

                // Only include whitelisted fields.
                foreach (var pair in data)
                {
                    switch (pair.Key)
                    {
                        case "description":
                        case "lore":
                        //case "lvl":
                        case "races":
                        case "classes":
                        case Coords.Field:
                        case "sym":
                        case "f":
                        case "learnedAt":
                        case "petBattleLvl":
                        case "filterForRWP":
                            itemData[pair.Key] = pair.Value;
                            break;

                        case "sourceID":
                            {
                                long modID = 1;
                                if (data.TryGetValue("modID", out object modIDRef)) modID = Convert.ToInt64(modIDRef);
                                if (itemData.TryGetValue("m", out object sourceIDRefs))
                                {
                                    (sourceIDRefs as Dictionary<long, object>)[modID] = pair.Value;
                                }
                                else
                                {
                                    itemData["m"] = new Dictionary<long, object>
                                    {
                                        { modID, pair.Value }
                                    };
                                }
                                break;
                            }

                        // Blacklisted fields.
                        case "itemID":
                        case "achID":
                        case "altAchID":
                        case "npcID":
                        case "bonusID":
                        case "modID":
                        case "ItemAppearanceModifierID":
                        case "rank":
                        case "gender":
                        case "creatureID":
                        case "criteriaID":
                        case "ilvl":
                        case "g":
                        case "q":
                        case "hideText":
                        case "lvl":
                            break;
                        default:
                            // FOR NOW, just copy all non-g fields.
                            itemData[pair.Key] = pair.Value;
                            break;
                    }
                }
            }
            private static void ProcessNPCData(long npcID, IDictionary<string, object> data)
            {
                // Do not include "Custom" NPC IDs. We use these for headers and most of these are going to be purged.
                if (npcID < 1)
                {
                    Console.WriteLine($"INVALID NPC ID {npcID} ({MiniJSON.Json.Serialize(data)})");
                    Console.ReadLine();
                    return;
                }

                // Do not include information about blacklisted npc data.
                if (BLACKLISTED_NPC_IDS.TryGetValue(npcID, out bool blacklisted) && blacklisted) return;

                // Acquire the current NPC Data and add to it.
                if (!NPC_DB.TryGetValue(npcID, out IDictionary<string, object> npcData))
                {
                    NPC_DB[npcID] = npcData = new Dictionary<string, object>();
                }

                // Only include whitelisted fields.
                foreach (var pair in data)
                {
                    switch (pair.Key)
                    {
                        case "name":
                        case "text":
                        case "title":
                        case "icon":
                        case "lvl":
                        case Coords.Field:
                        case "crs":
                        case "sym":
                        case "u":
                        case "maps":
                        case "questID":
                        case "aqd":
                        case "hqd":
                        case "altQuestID":
                        case "altQuests":
                        case "sourceAchievements":
                        case "sourceQuests":
                        case "isBounty":
                        case "isLimited":
                        case "isGuild":
                        case "isDaily":
                        case "isWeekly":
                        case "isMonthly":
                        case "isYearly":
                        case "isWorldQuest":
                        case "repeatable":
                        case "cm":
                        case "pvp":
                        case "pb":
                        case "sr":
                        case "factionID":
                        case "requireSkill":
                        case "petBattleLvl":
                        case "followerID":
                        case "isRaid":
                        case "mapID":
                        case "races":
                        case "zone-artIDs":
                        case "zone-text-areaID":
                        case "zone-text-areas":
                        case "zone-text-headerID":
                            npcData[pair.Key] = pair.Value;
                            break;

                        case "c":
                        case "classes":
                            npcData["c"] = pair.Value;
                            break;

                        case "r":
                            npcData["r"] = pair.Value;
                            break;

                        case "qgs":
                        case "isBreadcrumb":
                        case "modelRotation":
                        case "modelScale":
                            // Only do these for non-custom NPC IDs:
                            npcData[pair.Key] = pair.Value;
                            break;

                        // Blacklisted fields.
                        case "achID":
                        case "altAchID":
                        case "currencyID":
                        case "encounterID":
                        case "itemID":
                        case "npcID":
                        case "modID":
                        case "ItemAppearanceModifierID":
                        case "rank":
                        case "gender":
                        case "creatureID":
                        case "criteriaID":
                        case "displayID":   // This is now dynamic!
                        case "sourceID":
                        case "ilvl":
                        case "b":
                        case "q":
                        case "f":
                        case "learnedAt":
                        case "filterForRWP":
                        case "g":
                        case "collectible":
                        case "hideText":
                        case "description":
                        case "lore":
                            //case "lvl":
                            // Ignore these!
                            break;

                        default:
                            // Only write keys we don't know about by commenting the other ones:
                            // npcData[pair.Key] = pair.Value;
                            break;
                    }
                }
            }
            #endregion

            #region Merge (for acquiring fields for the Item Database)
            /// <summary>
            /// Merge the array data!
            /// </summary>
            /// <param name="item">The item!</param>
            /// <param name="field">The field!</param>
            /// <param name="value">The value.</param>
            public static void MergeIntegerArrayData(IDictionary<string, object> item, string field, object value)
            {
                // Convert the data to a list of generic objects.
                var newList = ConvertToList(item, field, value);
                if (newList == null)
                {
                    LogError($"Failed merging int-array '{field}' from {ToJSON(value)}", item);
                    return;
                }

                // Attempt to get the old list data.
                if (!item.TryGetValue(field, out List<object> oldList))
                {
                    if (item.ContainsKey(field))
                    {
                        LogWarn($"Replacing non-list type data stored in '{field}'", item);
                    }
                    item[field] = oldList = new List<object>();
                }

                // special case for level requirements
                // item with quest attached, item has diff reqlvl than the quest reqlvl, you end up with the item having a lvl range instead of the highest value
                if (field == "lvl")
                {
                    long? oldmin = null, oldmax = null, newmin = null, newmax = null;
                    if (oldList.Count > 0)
                        oldmin = Convert.ToInt64(oldList[0]);
                    if (newList.Count > 0)
                        newmin = Convert.ToInt64(newList[0]);
                    if (oldList.Count > 1)
                        oldmax = Convert.ToInt64(oldList[1]);
                    if (newList.Count > 1)
                        newmax = Convert.ToInt64(newList[1]);

                    newmin = Math.Max(oldmin ?? long.MinValue, newmin ?? long.MinValue);
                    newmax = Math.Min(oldmax ?? long.MaxValue, newmax ?? long.MaxValue);

                    if (newmax > 0 && newmax < long.MaxValue)
                    {
                        oldList.Clear();
                        oldList.Add((long)newmin);
                        oldList.Add((long)newmax);
                    }
                    else if (newmin > 0)
                    {
                        oldList.Clear();
                        oldList.Add((long)newmin);
                    }
                }
                else
                {
                    bool warnOnConvert = field[0] != '_' && field != "qis";
                    // Merge the new list of data into the old data and ensure there are no duplicate values.
                    foreach (long entry in newList.AsTypedEnumerable<long>(warnOnConvert: warnOnConvert))
                    {
                        if (!oldList.Contains(entry))
                            oldList.Add(entry);
                    }
                }

                // Only sort Parser metadata fields
                if (field[0] == '_')
                    oldList.Sort();

                if (oldList.Count == 0)
                {
                    LogError($"int-array field: '{field}' contained no data after merge", item);
                }
            }

            /// <summary>
            /// Merge the array data!
            /// </summary>
            /// <param name="item">The item!</param>
            /// <param name="field">The field!</param>
            /// <param name="value">The value.</param>
            public static void MergeStringArrayData(IDictionary<string, object> item, string field, object value)
            {
                // Convert the data to a list of generic objects.
                var newList = ConvertToList(item, field, value);
                if (newList == null) return;

                // Attempt to get the old list data.
                if (!item.TryGetValue(field, out List<object> oldList))
                {
                    // Create a new list.
                    item[field] = oldList = new List<object>();
                }

                // Merge the new list of data into the old data and ensure there are no duplicate values.
                foreach (var entry in newList)
                {
                    var index = Convert.ToString(entry);
                    if (field == "timeline")
                    {
                        // Verify the timeline data is parsable since it's 'just a string' ... could be anything!
                        if (!Regex.IsMatch(index, "^(created|added|deleted|removed|blackmarket|timewalking) [0-9][\\.0-9]+$"))
                            throw new InvalidDataException("Invalid 'timeline' value: " + index);
                    }
                    if (oldList.Contains(index)) continue;
                    oldList.Add(index);
                }

                if (oldList.Count == 0)
                {
                    Log($"string-array field: '{field}' contained no data after merge.{Environment.NewLine}{ToJSON(item)}");
                }
            }

            public static void MergeSingularFieldAsArray<T>(IDictionary<string, object> item, string field, object value)
            {
                try
                {
                    Merge(item, field, value);
                }
                catch
                {
                    LogError($"Invalid Format for field [{field}] = {ToJSON(value)}", item);
                }
            }

            /// <summary>
            /// Merge the field into the item reference if it is whitelisted.
            /// Only a couple of fields will successfully merge into an item.
            /// </summary>
            /// <param name="item">The item dictionary to merge into.</param>
            /// <param name="field">The name of the field being merged.</param>
            /// <param name="value">The value of the merged field.</param>
            public static void Merge(IDictionary<string, object> item, string field, object value)
            {
                //item.DataBreakPoint("_DEBUG", true);
                if (value is string v && v == IgnoredValue)
                    return;

                if (value == null)
                {
                    if (item.Remove(field))
                    {
                        LogWarn($"Removed value of '{field}' due to 'null' merge", item);
                    }
                    return;
                }

                // Convert the name of the field to something more standardized.
                switch (field = ConvertFieldName(field))
                {
                    case "g":
                        {
                            if (!item.TryGetValue("g", out List<object> groups))
                            {
                                // Create a new g list.
                                item["g"] = groups = new List<object>();
                            }

                            // Attempt to merge the sub groups together.
                            if (value is IEnumerable<object> list)
                            {
                                Merge(groups, list);
                            }
                            else if (value is IDictionary<string, object> data)
                            {
                                Merge(groups, data);
                            }
                            else
                            {
                                LogError($"Weird 'g' value??", value);
                            }
                            break;
                        }
                    case "_sort_g":
                        {
                            if (!item.TryGetValue("_sort_g", out List<object> groups))
                            {
                                // Create a new _sort_g list.
                                item["_sort_g"] = groups = new List<object>();
                            }

                            // Attempt to merge the sub groups together.
                            if (value is IEnumerable<object> list)
                            {
                                Merge(groups, list);
                            }
                            else if (value is IDictionary<string, object> data)
                            {
                                Merge(groups, data);
                            }
                            else
                            {
                                LogError($"Weird '_sort_g' value", value);
                            }
                            break;
                        }

                    // Boolean Data Type Fields
                    case "collectible":
                    case "equippable":
                    case "repeatable":
                    case "cm":
                    case "pvp":
                    case "pb":
                    case "sr":
                    case "isBreadcrumb":
                    case "DisablePartySync":
                    case "isBounty":
                    case "isLimited":
                    case "isGuild":
                    case "isDaily":
                    case "isEnableTypeRecipe":
                    case "isWeekly":
                    case "isMonthly":
                    case "isYearly":
                    case "isWorldQuest":
                    case "isWQ":
                    case "isRaid":
                    case "isLockoutShared":
                    case "ignoreBonus":
                    case "ignoreSource":
                    case "hideText":
                    case "ordered":
                    case "skipFill":
                    case "sort":
                    case "sourceIgnored":
                    case "nomerge":
                    case "zone-text-continent":
                        {
                            item[field] = Convert.ToBoolean(value);
                            break;
                        }

                    // String/Integer Data Type Fields
                    case "icon":
                        {
                            if (value is string)
                            {
                                item[field] = ATT.Export.ToString(value).Replace("\\\\", "\\").Replace("\\\\", "\\").Replace("\\", "\\\\");
                            }
                            else
                            {
                                var icon = Convert.ToInt64(value);
                                if (Framework.IsIconValid(icon)) item[field] = icon;
                            }
                            break;
                        }

                    // String Data Type Fields
                    case "lore":
                    case "name":
                    case "type":
                    case "description":
                    case "sharedDescription":
                    case "title":
                    case "order":
                    case "SortType":
                    case "an":
                        {
                            if (value.TryConvert(out string vString))
                            {
                                item[field] = vString.Replace("\n", "\\n").Replace("\r", "\\r").Replace("\t", "\\t");
                            }
                            else
                            {
                                LogError($"Expected 'string' type value for {field}", item);
                            }
                            break;
                        }

                    // Decimal Data Type Fields (requires higher precision than float)
                    case "headerID":
                    case "up":
                        {
                            if (value.TryConvert(out decimal vDecimal))
                            {
                                item[field] = vDecimal;
                            }
                            else
                            {
                                // In order to support _G, it was necessary.
                                item[field] = value;
                            }
                            break;
                        }

                    // Float Data Type Fields (field conversions)
                    //case "dr":
                    case "modelRotation":
                    case "modelScale":
                        {
                            if (value.TryConvert(out float vFloat))
                            {
                                item[field] = vFloat;
                            }
                            else
                            {
                                LogError($"Invalid Numeric Format for Merge - {field}:{value}", item);
                            }
                            break;
                        }

                    // Integer Data Type Fields
                    //case "questID":
                    //case "musicRollID":
                    //case "illusionID":
                    case "altAchID":
                    case "altSpeciesID":
                    case "requireSkill":
                    case "learnedAt":
                    case "class":
                    case "subclass":
                    case "inventoryType":
                    case "style":
                    case "creatureID":
                    case "displayID":
                    case "modID":
                    case "model":
                    case "npcID":
                    case "ItemAppearanceModifierID":
                    case "bonusID":
                    case "runeforgepowerID":
                    case "raceID":
                    case "conduitID":
                    case "criteriaTreeID":
                    case "f":
                    case "filterForRWP":
                    case "u":
                    case "b":
                    case "rank":
                    case "gender":
                    case "ilvl":
                    case "petBattleLvl":
                    case "q":
                    case "e":
                    case "r":
                    case "isOffHand":
                    case "parentCategoryID":
                    case "criteriaType":
                    case "assetID":
                    case "questIDA":
                    case "questIDH":
                    case "sqreq":
                    case "zone-text-areaID":
                    case "zone-text-headerID":
                    case "savedInstanceID":
                    case "rwp":
                    case "awp":
                    case "id":
                    case "uid":
                    case "tmogSetID":
                    case "_multiDifficultyID":
                    case "trackID":
                    case "catalystID":
                    case "skillID":
                        {
                            if (value.TryConvert(out long vLong))
                            {
                                item[field] = vLong;
                            }
                            else
                            {
                                LogError($"Invalid Numeric Format for Merge - {field}:{value}");
                            }
                            break;
                        }

                    // Integer -> Integer-Array Data Type conversion
                    // now handled via root.config

                    // Integer-Array Data Type Fields (stored as List<object> for usability reasons)
                    case "c":
                    case "c_disp":
                    case "specs":
                    case "difficulties":
                    case "sourceAchievements":
                    case "sourceQuests":
                    case "altQuests":
                    case "nextQuests":
                    case "races":
                    case "races_disp":
                    case "maps":
                    case "maps_disp":
                    case "qgs":
                    case "crs":
                    case "zone-artIDs":
                    case "zone-text-areas":
                    case "_quests":
                    case "_npcs":
                    case "_objects":
                    case "_achievements":
                    case "_exploration":
                    case "_factions":
                    case "_maps":
                    case "extraTransmogSetSpells":
                    case "extraTransmogSetItems":
                    case "_tmogSetIDs":
                    case "_sourceIDs":
                    case "_species":
                    case "_extraSpells":
                    case "_spells":
                    case "_objectiveItems":
                    case "_spellQuests":
                    case "qis":
                    case "poiIDs":
                        {
                            MergeIntegerArrayData(item, field, value);
                            break;
                        }
                    // temp special case for 'lvl', only include data if it is in the expected new format of a list
                    case "lvl":
                        if (value is List<object> lvls)
                        {
                            MergeIntegerArrayData(item, field, lvls);
                        }
                        else if (PreProcessorTags.Contains("CRIEVE")) item[field] = Convert.ToInt64(value);
                        break;

                    // Sub-Dictionary Data Type Fields (stored as Dictionary<int, int> for usability reasons)
                    case "aqd":
                    case "hqd":
                        {
                            // Convert an object type.
                            if (value is IDictionary<string, object> data)
                            {
                                if (!item.TryGetValue(field, out IDictionary<string, object> sourceData))
                                {
                                    sourceData = new Dictionary<string, object>();
                                    item[field] = sourceData;
                                }
                                Merge(sourceData, data);
                            }
                            break;
                        }

                    // List of String Data Type Fields (stored as List<string> for usability reasons)
                    case "customCollect":
                    case "zone-text-names":
                        {
                            MergeStringArrayData(item, field, value);
                            break;
                        }
                    case "timeline":
                        Timeline.Merge(item, value);
                        break;

                    // List O' List O' Objects Data Type Fields (stored as List<List<object>> for usability reasons)
                    case "sym":
                        {
                            // Convert the data to a list of generic objects.
                            var newListOfLists = value as List<object>;
                            if (newListOfLists == null)
                            {
                                LogError($"Invalid Format for field [{field}] = {ToJSON(value)}", item);
                                foreach (var sublist in newListOfLists)
                                {
                                    if (sublist is List<object>) continue;
                                    LogError($"Invalid Format for field [{field}] = {ToJSON(value)}", item);
                                }
                            }
                            item[field] = newListOfLists;
                            break;
                        }
                    // List O' List O' Objects Data Type Fields that could also be numberical values.
                    case Cost.Field:
                        Cost.Merge(item, value);
                        break;
                    case "minReputation":
                    case "maxReputation":
                        {
                            if (!(value is List<object> newList))
                            {
                                LogError($"Invalid Format for field [{field}] = {ToJSON(value)}", item);
                                return;
                            }
                            var newRep = new List<object>();
                            foreach (var repArg in newList) newRep.Add(Convert.ToInt64(repArg));
                            if (newRep.Count > 0)
                            {
                                item[field] = newRep;
                            }
                            break;
                        }
                    case "provider":
                    case Providers.Field:
                        Providers.Merge(item, value);
                        break;
                    case "lc":
                        MergeField_lockCriteria(item, value);
                        break;
                    case "coord":
                    case Coords.Field:
                        Coords.Merge(item, value);
                        break;

                    // Functions
                    case "OnInit":
                    case "OnClick":
                    case "OnUpdate":
                    case "OnTooltip":
                        item[field] = value;
                        break;

                    // Blacklisted Fields
                    //case "lvl":
                    case "link":
                    case "retries":
                    case "previousRecipeID":
                    case "nextRecipeID":
                        {
                            return;
                        }

                    case "_items":
                    case "_encounter":
                        {
                            List<long> list = CompressToList<long>(value);
                            if (list != null)
                            {
                                item[field] = list;
                            }
                            else
                            {
                                LogError($"Invalid Format for field [{field}] = {ToJSON(value)}", item);
                            }
                            break;
                        }

                    // Report all other fields.
                    default:
                        {
                            // Config-defined fields
                            if (SINGULAR_PLURAL_FIELDS_LONG.TryGetValue(field, out string pluarlFieldName))
                            {
                                MergeSingularFieldAsArray<long>(item, pluarlFieldName, value);
                                return;
                            }

                            if (PASS_THRU_FIELDS.Contains(field))
                            {
                                item[field] = value;
                                return;
                            }

                            // __parent is never merged into DB containers
                            if (field == "__parent")
                            {
                                break;
                            }

                            // Integer Data Type Fields
                            if (ObjectData.ContainsObjectType(field))
                            {
                                item[field] = value;
                                return;
                            }

                            // simple assignment for other fields starting with _ since those will be used for metadata in some scenarios and cleaned up by the Parser
                            if (field[0] == '_')
                            {
                                item[field] = value;
                                break;
                            }

                            // ignore the 'hash' field which is generated during recipe automation and is dynamic in-game anyway
                            if (field == "hash")
                                break;

                            // Only warn the programmer once per field per session.
                            if (WARNED_FIELDS.ContainsKey(field)) return;
                            WARNED_FIELDS[field] = true;
                            LogWarn($"Parser is ignoring field [{field}] = {ToJSON(value)}{Environment.NewLine}", item);
                            break;
                        }
                }
            }

            internal static void MergeField_lockCriteria(IDictionary<string, object> item, object value)
            {
                const string field = "lc";

                List<object> lockCriteria = ConvertToList(item, field, value);

                // validate that the lock criteria is the expected format
                if (lockCriteria == null || (lockCriteria.Count % 2) != 1)
                    throw new InvalidDataException($"Failed parsing '{field}' : {ToJSON(value)} => into: {ToJSON(item)}{Environment.NewLine}Expected an odd number of elements in an array of values.");

                // first item is a number > 0
                try
                {
                    int criteriaCount = Convert.ToInt32(lockCriteria[0]);
                    if (criteriaCount < 1)
                        throw new InvalidDataException($"Failed parsing '{field}' : {ToJSON(value)} => into: {ToJSON(item)}{Environment.NewLine}First value must be a number > 0.");
                }
                catch (Exception)
                {
                    throw new InvalidDataException($"Failed parsing '{field}' : {ToJSON(value)} => into: {ToJSON(item)}{Environment.NewLine}First value must be a number > 0.");
                }

                // following sequence should be pairs of string-number values
                for (int i = 1; i < lockCriteria.Count; i += 2)
                {
                    try
                    {
                        string critKey = lockCriteria[i] as string;
                        int critVal = Convert.ToInt32(lockCriteria[i + 1]);

                        if (string.IsNullOrWhiteSpace(critKey) || critVal < 1)
                            throw new InvalidDataException($"Failed parsing '{field}' : {ToJSON(value)} => into: {ToJSON(item)}{Environment.NewLine}Must consist of a flat sequence of [string,number] pairs of values.");
                    }
                    catch (Exception)
                    {
                        throw new InvalidDataException($"Failed parsing '{field}' : {ToJSON(value)} => into: {ToJSON(item)}{Environment.NewLine}Must consist of a flat sequence of [string,number] pairs of values.");
                    }
                }

                item[field] = lockCriteria;
            }

            public static void MergeSpecificItemDataDictionary(IDictionary<string, object> data, string field, object value)
            {
                // Get or create desired existing data for item field
                if (data.TryGetValue(field, out object dataField) && dataField is Dictionary<long, object> existing)
                {
                    // Convert data field to desired dictionary type
                    existing = dataField as Dictionary<long, object>;
                }
                else
                {
                    // Assume we never replace a badly-formatted existing data
                    data[field] = existing = new Dictionary<long, object>();
                }

                // perfect matching data!
                if (value is Dictionary<long, object> goodValue || TryExpandList(value, out goodValue))
                {
                    foreach (var goodKvp in goodValue)
                    {
                        if (existing.TryGetValue(goodKvp.Key, out object existingValue) && !Equals(existingValue, goodKvp.Value))
                        {
                            Log($"WARN: Data Changed => {ToJSON(data)}");
                            Log($"-- Field Value Overwrite: {field}:{goodKvp.Key}={existingValue} => {goodKvp.Value}");
                        }
                        existing[goodKvp.Key] = goodKvp.Value;
                    }
                    return;
                }

                Log($"Unable to merge value for Item field '{field}' with parsed Type {value.GetType().Name}{(value.GetType().ContainsGenericParameters ? string.Join(",", value.GetType().GenericTypeArguments.Select(t => t.Name)) : string.Empty)}");
            }

            /// <summary>
            /// Merge the data into the item reference.
            /// Only a couple of fields will successfully merge into an item.
            /// They need to be whitelisted in the Merge(item, field, value) function.
            /// </summary>
            /// <param name="item">The item dictionary to merge into.</param>
            /// <param name="data">The data to merge into the item.</param>
            public static void Merge(IDictionary<string, object> item, IDictionary<string, object> data)
            {
                // make sure we somehow do not try to merge something into itself, since that's a bit pointless
                if (ReferenceEquals(item, data))
                    return;
                foreach (var pair in data) Merge(item, pair.Key, pair.Value);
            }

            /// <summary>
            /// Checks for parser tags that need to be handled prior to merging 'data' into the 'entry'
            /// </summary>
            public static void PreMerge(IDictionary<string, object> entry, IDictionary<string, object> data)
            {
                // sometimes existing data from harvests may be inaccurate, so may need to clean existing fields which have already merged in
                if (data.TryGetValue("_drop", out object drops))
                {
                    PerformDrops(entry, drops);
                }
                // also once contrib data has been merged, we can also prevent other data from merging in as well (Item/Quest API data)
                else if (entry.TryGetValue("_drop", out drops))
                {
                    PerformDrops(data, drops);
                }
            }

            /// <summary>
            /// Takes the value of the "_drops" key and applies it to the given data
            /// </summary>
            public static void PerformDrops(IDictionary<string, object> data, object drops)
            {
                if (drops is List<object> dropStrs && dropStrs.Count > 0)
                {
                    foreach (var dropObj in dropStrs)
                    {
                        if (data.Remove(dropObj.ToString()))
                        {
                            LogDebug($"INFO: Removed key: '{dropObj}'", data);
                        }
                    }
                }
                else
                {
                    LogError($"Invalid format for '_drop': {MiniJSON.Json.Serialize(drops)}", data);
                }
            }

            /// <summary>
            /// Takes the value of the "_wipes" key and applies it to the given data
            /// </summary>
            public static void PerformWipes(IDictionary<string, object> data)
            {
                if (!data.TryGetValue("_wipe", out object wipes)) { return; }

                if (wipes is List<object> wipeStrs && wipeStrs.Count > 0)
                {
                    foreach (var wipeObj in wipeStrs)
                    {
                        if (data.Remove(wipeObj.ToString()))
                        {
                            LogDebug($"INFO: Wiped key: '{wipeObj}'", data);
                        }
                    }
                }
                else
                {
                    LogError($"Invalid format for '_wipe': {MiniJSON.Json.Serialize(wipes)}", data);
                }
            }

            /// <summary>
            /// Merge the string-keyed data into the container.
            /// </summary>
            /// <param name="container">The container to merge into.</param>
            /// <param name="data">The data to merge into the container.</param>
            public static void Merge(List<object> container, IDictionary<string, object> data2)
            {
                // clean up unique quests being treated as one quest for purposes that are irrelevant to Retail
                if (data2.TryGetValue("aqd", out IDictionary<string, object> aqd) && data2.TryGetValue("hqd", out IDictionary<string, object> hqd))
                {
                    // questID used in both faction data objects
                    if (aqd.TryGetValue("questID", out long aQuestID) && hqd.TryGetValue("questID", out long hQuestID))
                    {
                        // same questID, then extract the questID for the single object, and leave the rest as is
                        if (aQuestID == hQuestID)
                        {
                            data2["questID"] = aQuestID;
                            aqd.Remove("questID");
                            hqd.Remove("questID");
                        }
                        else
                        {
                            // different questID
                            // split into two separate quest objects
                            IDictionary<string, object> aQuest = new Dictionary<string, object>();
                            IDictionary<string, object> hQuest = new Dictionary<string, object>();

                            // remove the faction-specific objects
                            data2.Remove("aqd");
                            data2.Remove("hqd");

                            // copy the shared data into each
                            foreach (KeyValuePair<string, object> info in data2)
                            {
                                if (info.Key == "g")
                                    continue;

                                aQuest.Add(info.Key, info.Value);
                                hQuest.Add(info.Key, info.Value);
                            }

                            // copy the faction-specific data into respective objects, allowing to replace matching shared data
                            foreach (KeyValuePair<string, object> info in aqd)
                            {
                                aQuest[info.Key] = info.Value;
                            }
                            foreach (KeyValuePair<string, object> info in hqd)
                            {
                                hQuest[info.Key] = info.Value;
                            }

                            // any shared groups need to merge into both faction groups
                            if (data2.TryGetValue("g", out List<object> groups))
                            {
                                Merge(aQuest, "g", groups);
                                Merge(hQuest, "g", groups);
                            }

                            // apply the faction to the quests
                            aQuest["r"] = 2;
                            hQuest["r"] = 1;

                            // merge both of them instead of this one
                            Merge(container, aQuest);
                            Merge(container, hQuest);
                            return;
                        }
                    }
                }

                // Find the Object Dictionary that matches the data.
                IDictionary<string, object> entry = FindMatchingData(container, data2);

                // If no object matched the data, then we need to create a new entry.
                if (entry == null)
                {
                    // Create a new object with a proper format and add it to the container.
                    entry = new Dictionary<string, object>();
                    container.Add(entry);
                }

                // Merge the entry with the data.
                PreMerge(entry, data2);
                Merge(entry, data2);
            }

            /// <summary>
            /// Handles merging the individual Quest data with the global set of Quest data references for later processing
            /// </summary>
            public static void ReferenceQuestIDs(IDictionary<string, object> data)
            {
                if (data.TryGetValue("questID", out long questID))
                {
                    QUESTS_WITH_REFERENCES[questID] = true;
                }

                // Alliance-Only QuestID
                if (data.TryGetValue("questIDA", out long questIDA))
                {
                    QUESTS_WITH_REFERENCES[questIDA] = true;
                }

                // Horde-Only QuestID
                if (data.TryGetValue("questIDH", out long questIDH))
                {
                    QUESTS_WITH_REFERENCES[questIDH] = true;
                }
            }

            /// <summary>
            /// Attempts to find a matching 'data' object in the container based on the data that needs to merge
            /// </summary>
            public static IDictionary<string, object> FindMatchingData(IEnumerable<object> container, IDictionary<string, object> data2)
            {
                // if the data is explicitly defined as not to merge
                if (data2.TryGetValue("nomerge", out bool nomerge) && nomerge)
                {
                    return null;
                }

                // Determine the Most-Significant ID Type
                if (!ObjectData.TryGetMostSignificantObjectType(data2, out Export.ObjectData objectData, out object keyObject))
                {
                    // If there is no most significant ID field, then complain.
                    if (!data2.ContainsKey("aqd")) LogError($"No Most Significant ID!", data2);

                    return null;
                }

                // Cache the ID of the data we're merging into the container.
                string mostSignificantID = objectData.ObjectType;

                if (!keyObject.TryConvert(out decimal id))
                {
                    // try our best to find a matching 'object' to merge with this 'object' since it isn't an actual ID value
                    return container.FindObject(mostSignificantID, keyObject);
                }

                // Iterate through the list and search for an entry that matches the data
                if (mostSignificantID == "itemID")
                {
                    // For Items, also keep track of the Bonus IDs to allow more than one per list.
                    if (data2.TryGetValue("rank", out object fieldRef) && fieldRef.TryConvert(out decimal rank))
                    {
                        // The data we're merging has a Rank. (we only want to merge them if they're the same!)
                        return container.FindObject(mostSignificantID, id, "rank", rank);
                    }
                    else if (data2.TryGetValue("bonusID", out fieldRef) && fieldRef.TryConvert(out decimal bonusID))
                    {
                        // The data we're merging has a Bonus ID. (we only want to merge them if they're the same!)
                        return container.FindObject(mostSignificantID, id, "bonusID", bonusID);
                    }
                    else if (data2.TryGetValue("modID", out fieldRef) && fieldRef.TryConvert(out decimal modID))
                    {
                        // The data we're merging has a Mod ID. (we only want to merge them if they're the same!)
                        return container.FindObject(mostSignificantID, id, "modID", modID);
                    }
                }
                else if (mostSignificantID == "criteriaID")
                {
                    // For criteria, also keep track of the Item IDs to allow more than one per list.
                    if (data2.TryGetValue("itemID", out object fieldRef) && fieldRef.TryConvert(out decimal itemID))
                    {
                        // The data we're merging has a Item ID. (we only want to merge them if they're the same!)
                        return container.FindObject(mostSignificantID, id, "itemID", itemID);
                    }
                    else if (data2.TryGetValue("achID", out fieldRef) && fieldRef.TryConvert(out decimal achID))
                    {
                        // The data we're merging has a Achievement ID. (we only want to merge them if they're the same!)
                        return container.FindObject(mostSignificantID, id, "achID", achID);
                    }
                }
                else if (mostSignificantID == "objectiveID")
                {
                    if (data2.TryGetValue("questID", out object fieldRef) && fieldRef.TryConvert(out decimal objQuestID))
                    {
                        // The data we're merging has a Quest ID. (we only want to merge them if they're the same!)
                        return container.FindObject(mostSignificantID, id, "questID", objQuestID);
                    }
                }
                else if (mostSignificantID == "azeriteessenceID" || mostSignificantID == "spellID")
                {
                    // For Essences, also keep track of the ranks to allow more than one per list.
                    if (data2.TryGetValue("rank", out object fieldRef) && fieldRef.TryConvert(out decimal rank))
                    {
                        // The data we're merging has a Rank. (we only want to merge them if they're the same!)
                        return container.FindObject(mostSignificantID, id, "rank", rank);
                    }
                }

                return container.FindObject(mostSignificantID, id);
            }

            /// <summary>
            /// Merge the list of data into the container.
            /// NOTE: This is a NON-Standard list of data.
            /// </summary>
            /// <param name="container">The container to merge into.</param>
            /// <param name="list">The list of data to merge into the container.</param>
            public static void Merge(List<object> container, IEnumerable<object> list)
            {
                foreach (var data in list)
                {
                    if (data is IDictionary<string, object> sDict) Merge(container, sDict);
                    else
                    {
                        LogError($"MERGE CONFUSION: {Environment.NewLine}{ToJSON(data)}");
                    }
                }
            }

            /// <summary>
            /// Performs the best attempt at converting a single object into a List of objects
            /// </summary>
            /// <param name="value"></param>
            /// <returns></returns>
            public static List<object> ConvertToList(IDictionary<string, object> item, string field, object value)
            {
                if (value == null) return null;

                List<object> list = CompressToList(value);
                if (list != null)
                    return list;

                // incase a single value is provided instead of a list
                bool found = false;
                if (value is int valint)
                {
                    found = true;
                    list = new List<object> { valint };
                }
                else if (value is long vallng)
                {
                    found = true;
                    list = new List<object> { vallng };
                }
                else if (value is decimal valDec)
                {
                    found = true;
                    list = new List<object> { valDec };
                }
                else if (value is float valflt)
                {
                    found = true;
                    list = new List<object> { valflt };
                }
                else if (value is double valdbl)
                {
                    found = true;
                    list = new List<object> { valdbl };
                }
                else if (value is bool valbol)
                {
                    found = true;
                    list = new List<object> { valbol };
                }
                else if (value is string valstr)
                {
                    found = true;
                    list = new List<object> { valstr };
                }

                if (found)
                {
                    //LogDebug("Non-Array '" + value?.ToString() + "' for field '" + field + "' merging into: " + ToJSON(item));
                    return list;
                }

                Console.Write(field);
                Console.Write(": ");
                Console.WriteLine(ToJSON(value));

                // no hope
                throw new InvalidDataException("Failed parsing value '" + value?.ToString() + "' for field '" + field + "' merging into: " + ToJSON(item));
            }

            /// <summary>
            /// Returns the specified data compressed into a List of objects
            /// </summary>
            /// <param name="value"></param>
            /// <returns></returns>
            internal static List<object> CompressToList(object value)
            {
                return CompressToList<object>(value);
            }

            /// <summary>
            /// Returns the specified data compressed into a List of a specified Type if possible
            /// </summary>
            internal static List<T> CompressToList<T>(object value)
            {
                if (value is List<T> newList)
                    return newList;

                if (value is IEnumerable<T> ienum)
                    return ienum.ToList();

                if (value is IDictionary<long, T> idict)
                    return idict.Values.ToList();

                if (value is IDictionary<string, T> sdict)
                    return sdict.Values.ToList();

                // see if the value is some other iterator of typed objects
                IEnumerable<T> valueEnum = value?.AsTypedEnumerable<T>();
                // something that doesn't make sense as a List
                if (valueEnum == null || !valueEnum.GetEnumerator().MoveNext())
                    return null;

                return valueEnum.ToList();
            }

            /// <summary>
            /// When Lua parses a Dictionary format as a List due to incrementing indexes, we can convert it back to a Dictionary using the incrementing indexes
            /// </summary>
            /// <typeparam name="TValue"></typeparam>
            /// <param name="list"></param>
            /// <returns></returns>
            internal static bool TryExpandList(object value, out Dictionary<long, object> dict)
            {
                dict = new Dictionary<long, object>();
                var list = CompressToList(value);
                if (list == null || list.Count == 0)
                {
                    return false;
                }

                long luaIndex = 1;
                foreach (object val in list)
                {
                    dict.Add(luaIndex++, val);
                }

                return true;
            }
            #endregion
        }
        #endregion
    }
}
