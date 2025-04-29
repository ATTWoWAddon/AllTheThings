using System;
using System.Collections.Generic;
using System.Text;
using static ATT.Framework;

namespace ATT
{
    // Export extension for Object Data.
    partial class Export
    {
        /// <summary>
        /// The object data class.
        /// Contains the shortcut used by the constructor and a list of all explicitly black listed fields.
        /// </summary>
        public class ObjectData
        {
            #region Static Functionality
            /// <summary>
            /// All of the objects that have been created. (in order, first in, first out)
            /// </summary>
            private static readonly List<ObjectData> ALL_OBJECTS = new List<ObjectData>();

            /// <summary>
            /// All of the object contructors used by the exporter ordered by export priority.
            /// </summary>
            private static readonly IDictionary<string, ObjectData> OBJECT_CONSTRUCTORS = new Dictionary<string, ObjectData>();

            /// <summary>
            /// Create an object data container.
            /// </summary>
            /// <param name="objectType">The object type.</param>
            /// <param name="shortcut">The shortcut.</param>
            /// <param name="function">The function string.</param>
            /// <param name="blacklist">The blacklisted fields.</param>
            /// <returns>The object data container.</returns>
            public static ObjectData Create(string objectType, string shortcut, string function, params string[] blacklist)
            {
                return Create<ObjectData>(objectType, shortcut, function, blacklist);
            }

            /// <summary>
            /// Create an object data container.
            /// </summary>
            /// <param name="objectType">The object type.</param>
            /// <param name="shortcut">The shortcut.</param>
            /// <param name="function">The function string.</param>
            /// <param name="blacklist">The blacklisted fields.</param>
            /// <returns>The object data container.</returns>
            public static ObjectData Create<OBJECTDATA>(string objectType, string shortcut, string function, params string[] blacklist)
                where OBJECTDATA : ObjectData, new()
            {
                var objectData = new OBJECTDATA();
                ALL_OBJECTS.Add(objectData);
                var list = new List<string>();
                if (blacklist != null && blacklist.Length > 0) list.AddRange(blacklist);
                OBJECT_CONSTRUCTORS[objectData.ObjectType = objectType] = objectData;
                objectData.BlacklistedFields = list;
                objectData.ConstructorShortcut = shortcut;
                objectData.Function = function;
                return objectData;
            }

            /// <summary>
            /// Create an object data container and insert at the front of the ObjectData prioritized list
            /// </summary>
            /// <param name="objectType">The object type.</param>
            /// <param name="shortcut">The shortcut.</param>
            /// <param name="function">The function string.</param>
            /// <param name="blacklist">The blacklisted fields.</param>
            /// <returns>The object data container.</returns>
            public static ObjectData Insert(string objectType, string shortcut, string function, string convertedKey, params string[] blacklist)
            {
                var objectData = new ObjectData();
                ALL_OBJECTS.Insert(0, objectData);
                var list = new List<string>();
                if (blacklist != null && blacklist.Length > 0) list.AddRange(blacklist);
                OBJECT_CONSTRUCTORS[objectData.ObjectType = objectType] = objectData;
                objectData.BlacklistedFields = list;
                objectData.ConstructorShortcut = shortcut;
                objectData.Function = function;
                objectData.ConvertedKey = convertedKey;
                return objectData;
            }

            /// <summary>
            /// Determine whether or not an ObjectData container exists for the objectType.
            /// </summary>
            /// <param name="objectType">The object type.</param>
            /// <returns>Whether or not an ObjectData container exists for the objectType.</returns>
            public static bool ContainsObjectType(string objectType)
            {
                return OBJECT_CONSTRUCTORS.ContainsKey(objectType);
            }

            /// <summary>
            /// Try to get whether or not an ObjectData container exists for the objectType.
            /// </summary>
            /// <param name="objectType">The object type.</param>
            /// <param name="objectData">The object data container.</param>
            /// <returns>Whether or not an ObjectData container exists for the objectType.</returns>
            public static bool TryGetObjectType(string objectType, out ObjectData objectData)
            {
                return OBJECT_CONSTRUCTORS.TryGetValue(objectType, out objectData);
            }

            /// <summary>
            /// Try to get the most significant object type.
            /// </summary>
            /// <param name="data">The data.</param>
            /// <param name="objectData">The object data container.</param>
            /// <returns>Whether or not the most signficant object type was found.</returns>
            public static bool TryGetMostSignificantObjectType(IDictionary<string, object> data, out ObjectData objectData, out object objKeyValue)
            {
                foreach (var objectType in ALL_OBJECTS)
                {
                    // prefer finding a 'decimal' typed key for the object
                    if (data.TryGetValue(objectType.ObjectType, out decimal numericKey))
                    {
                        objectData = objectType;
                        objKeyValue = numericKey;
                        return true;
                    }
                    // otherwise allow any object type to suffice
                    if (data.TryGetValue(objectType.ObjectType, out objKeyValue))
                    {
                        objectData = objectType;
                        return true;
                    }
                }
                objectData = default;
                objKeyValue = default;
                return false;
            }

            /// <summary>
            /// Checks if the provided data has a 'type' field which matches a 'ConvertedKey' value of an ObjectData
            /// and returns the first matching ObjectData found
            /// </summary>
            public static bool TryFindObjectConversion(IDictionary<string, object> data, out ObjectData conversionObject, out object convertValue)
            {
                if (data.TryGetValue("type", out string type))
                {
                    foreach (ObjectData objData in ALL_OBJECTS)
                    {
                        if (objData.ConvertedKey != null && objData.ObjectType == type && data.TryGetValue(objData.ConvertedKey, out convertValue))
                        {
                            conversionObject = objData;
                            return true;
                        }
                    }
                }

                conversionObject = null;
                convertValue = null;
                return false;
            }
            #endregion

            #region Properties
            /// <summary>
            /// The blacklisted fields.
            /// </summary>
            public List<string> BlacklistedFields { get; private set; }

            /// <summary>
            /// The constructor shortcut.
            /// </summary>
            public string ConstructorShortcut { get; private set; }

            /// <summary>
            /// The function string.
            /// </summary>
            public string Function { get; private set; }

            /// <summary>
            /// The object type.
            /// </summary>
            public string ObjectType { get; private set; }

            /// <summary>
            /// The source data field which should be converted into the ObjectType of this ObjectData.
            /// </summary>
            public string ConvertedKey { get; private set; }

            /// <summary>
            /// Whether or not to allow the parser to explicitly write the object type.
            /// </summary>
            public virtual bool ShouldWriteObjectType { get { return true; } }
            #endregion
            #region Functionality
            /// <summary>
            /// Build the object.
            /// This writes the primary field and removes it from the list of available fields.
            /// </summary>
            /// <param name="builder">The builder.</param>
            /// <param name="data">The data.</param>
            /// <param name="fields">The fields.</param>
            public virtual void Build(StringBuilder builder, IDictionary<string, object> data, IList<string> fields)
            {
                WriteShortcut(builder, ConstructorShortcut, Function);
                Constructor(builder, data, fields);
            }

            /// <summary>
            /// Clean the object fields.
            /// </summary>
            /// <param name="builder">The builder.</param>
            /// <param name="data">The data.</param>
            /// <param name="fields">The fields.</param>
            public virtual void Clean(StringBuilder builder, IDictionary<string, object> data, IList<string> fields)
            {
                // Remove globally blacklisted fields.
                bool ignoreBonus = fields.Remove("ignoreBonus");
                bool ignoreSource = fields.Remove("ignoreSource");
                fields.Remove("timeline");
                fields.Remove("ilvl");
                if (fields.Contains("q") && !Program.PreProcessorTags.ContainsKey("INCLUDE_QUALITY"))
                {
                    fields.Remove("q");
                }
                fields.Remove("ItemAppearanceModifierID");

                // Ensure parser-only fields are not exported
                for (int i = fields.Count - 1; i >= 0; i--)
                {
                    string field = fields[i];
                    if (field.StartsWith("_"))
                    {
                        fields.RemoveAt(i);
                    }
                }

                // Conditionally remove certain fields.
                if (data.TryGetValue("b", out object objRef))
                {
                    // If not BoP, then don't write the field.
                    if (Convert.ToInt64(objRef) < 1) fields.Remove("b");
                }
                if (data.TryGetValue("bonusID", out objRef))
                {
                    // Bonus ID 0 is default, so we don't need to write it.
                    // Additionally, there must be an itemID for the bonusID to be present.
                    if (ignoreBonus || Convert.ToInt64(objRef) < 1 || !data.ContainsKey("itemID")) fields.Remove("bonusID");
                }
                if (data.TryGetValue("modID", out objRef))
                {
                    // Mod ID 0 is default, so we don't need to write it.
                    // Additionally, there must be an itemID for the modID to be present.
                    if (ignoreBonus || ignoreSource || Convert.ToInt64(objRef) < 1 || !data.ContainsKey("itemID")) fields.Remove("modID");
                }

                // If invalid, then don't write the field.
                var hasFilter = data.TryGetValue("f", out long f);
                if (hasFilter && f < 0) fields.Remove("f");

                if (data.ContainsKey("sourceID"))
                {
                    // CRIEVE NOTE: Blizzard started including sourceIDs for Rings/Necklaces for some reason. Let's clean that up.
                    if (hasFilter)
                    {
                        Objects.Filters filter = (Objects.Filters)f;
                        if (filter == Objects.Filters.Neck || filter == Objects.Filters.Ring) ignoreSource = true;
                    }
                    if (ignoreSource) fields.Remove("sourceID");
                }

                // Keep the name field for quest types, so long as they don't have an item.
                // They are generally manually assigned in the database.
                if (!(data.ContainsKey("questID") || data.ContainsKey("vignetteID") || data.ContainsKey("characterUnlockQuestID"))
                    || data.ContainsKey("itemID"))
                {
                    fields.Remove("name");
                }

                // Remove Blacklisted Fields for this object type.
                foreach (var field in BlacklistedFields)
                {
                    fields.Remove(field);
                }
            }

            /// <summary>
            /// The constructor.
            /// This writes the primary field and removes it from the list of available fields.
            /// </summary>
            /// <param name="builder">The builder.</param>
            /// <param name="data">The data.</param>
            /// <param name="fields">The fields.</param>
            public virtual void Constructor(StringBuilder builder, IDictionary<string, object> data, IList<string> fields)
            {
                // Write the default data field to the builder.
                ExportField(builder, data, fields, ObjectType);
            }

            /// <summary>
            /// Export the field to the string builder and remove it from the fields list.
            /// </summary>
            /// <param name="builder">The builder.</param>
            /// <param name="data">The data.</param>
            /// <param name="fields">The fields.</param>
            /// <param name="field">The field.</param>
            public void ExportField(StringBuilder builder, IDictionary<string, object> data, IList<string> fields, string field)
            {
                ExportCompressedLua(builder, data[field]);
                fields.Remove(field);
            }

            /// <summary>
            /// Write the Shortcut to the string builder.
            /// </summary>
            /// <param name="builder">The builder.</param>
            /// <param name="shortcut">The shortcut.</param>
            /// <param name="function">The function.</param>
            public void WriteShortcut(StringBuilder builder, string shortcut, string function)
            {
                MarkShortcut(shortcut, function);
                builder.Append(shortcut).Append('(');
            }
            #endregion
        }
    }
}
