using ATT.DB;
using ATT.DB.Types;
using ATT.FieldTypes;
using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using static ATT.Export;

namespace ATT
{
    /// <summary>
    /// The Framework class.
    /// </summary>
    public static partial class Framework
    {
        #region Database
        private static readonly Stopwatch _timer = Stopwatch.StartNew();

        /// <summary>
        /// Whether or not Debug Mode is turned on.
        /// </summary>
        public static bool DebugMode = false;

        /// <summary>
        /// Represents whether any read-key delays for user input will be ignored
        /// </summary>
        public static bool Automated { get; set; }

        /// <summary>
        /// Used to represent a Lua object value which will be ignored by the Parser
        /// </summary>
        public static string IgnoredValue { get; set; }

        /// <summary>
        /// The CustomConfiguration for the Parser
        /// </summary>
        internal static CustomConfiguration Config { get; set; }

        /// <summary>
        /// The DataValidator for the Parser
        /// </summary>
        internal static DataValidator Validator { get; set; }

        /// <summary>
        /// All of the locales that we support.
        /// </summary>
        public static IEnumerable<string> SUPPORTED_LOCALES { get; set; }

        /// <summary>
        /// The very first Phase ID as indicated in _main.lua.
        /// </summary>
        public static readonly Dictionary<string, int> FIRST_EXPANSION_PHASE = new Dictionary<string, int>
        {
            // Key-Value Pair   // Classic Release Phase
            { "UNKNOWN", 0 },   // Unknown, invalid data.
            { "CLASSIC", 11 },  // PHASE_ONE
            { "SEASON_OF_DISCOVERY", 16 },      // PHASE_SIX (SOD uses sub-phases for this phase)
            { "TBC", 17 },      // TBC_PHASE_ONE
            { "WRATH", 30 },    // WRATH_PHASE_ONE
            { "CATA", 40 },     // CATA_PHASE_ONE
            { "MOP", 50 },      // MOP_PHASE_ONE
            { "WOD", 60 },      // WOD_PHASE_ONE
            { "TRANSMOG", 69 }, // Transmog came out sometime after WOD.
            { "LEGION", 70 },   // LEGION_PHASE_ONE
            { "BFA", 80 },      // BFA_PHASE_ONE
            { "SL", 90 },      // SL_PHASE_ONE
            { "DF", 100 },      // DF_PHASE_ONE
            { "TWW", 110 },     // TWW_PHASE_ONE
            { "MID", 120 },     // MID_PHASE_ONE
            { "TLT", 130 },     // TLT_PHASE_ONE
        };

        /// <summary>
        /// The very last Phase ID (inclusive) as indicated in _main.lua.
        /// </summary>
        public static readonly Dictionary<string, int> LAST_EXPANSION_PHASE = new Dictionary<string, int>
        {
            // Key-Value Pair   // Classic Release Phase
            { "UNKNOWN", 10 },   // Unknown, invalid data.
            { "CLASSIC", 16 },  // PHASE_SIX
            { "SEASON_OF_DISCOVERY", 16 },      // PHASE_SIX (SOD uses sub-phases for this phase)
            { "TBC", 29 },      // TBC_PHASE_SIX?
            { "WRATH", 39 },    // WRATH_PHASE_SIX?
            { "CATA", 49 },     // CATA_PHASE_SIX?
            { "MOP", 59 },      // MOP_PHASE_SIX?
            { "WOD", 69 },      // WOD_PHASE_SIX?
            { "TRANSMOG", 69 }, // Transmog came out sometime after WOD.
            { "LEGION", 79 },   // LEGION_PHASE_SIX?
            { "BFA", 89 },      // BFA_PHASE_SIX?
            { "SL", 99 },      // SL_PHASE_SIX?
            { "DF", 99 },      // DF_PHASE_SIX?
            { "TWW", 99 },      // TWW_PHASE_SIX?
            { "MID", 99 },      // MID_PHASE_SIX?
            { "TLT", 99 },      // TLT_PHASE_SIX?
        };

        /// <summary>
        /// The very first patch used by each content expansion.
        /// </summary>
        public static Dictionary<string, int[]> FIRST_EXPANSION_PATCH { get; set; }

        public static Dictionary<long, long> MAPID_MERGE_REPLACEMENTS { get; set; }

        public static HashSet<string> SORTABLE_FIELDS { get; set; }

        public static HashSet<string> AUTO_LOCALIZE_TYPES { get; set; }

        public static bool BLIZZ_ICONS_ARE_HARD { get; set; }

        /// <summary>
        /// Represents the function to use when performing a processing pass against the data
        /// </summary>
        private static Func<IDictionary<string, object>, IDictionary<string, object>, bool> ProcessingFunction { get; set; }

        public static string CURRENT_RELEASE_PHASE_NAME = "UNKNOWN";

        /// <summary>
        /// The current phase release ID of the current build type.
        /// </summary>
        public static int CURRENT_RELEASE_PHASE { get; private set; }

        /// <summary>
        /// The last patch version of the current build type. [Format: ABBCCFFFFFF]
        /// </summary>
        public static long CURRENT_RELEASE_VERSION { get; private set; }

        /// <summary>
        /// The last patch version of the current build type excluding the explicit build number. [Format: ABBCC]
        /// </summary>
        public static long CURRENT_SHORT_RELEASE_VERSION { get; private set; }

        /// <summary>
        /// The data requirements to execute this set of database files. (Null = no requirements)
        /// This will generate an if-statement that needs to be evaluated as true before it will parse the file.
        /// </summary>
        public static string DATA_REQUIREMENTS = null;

        /// <summary>
        /// The maximum available Phase Identifier.
        /// </summary>
        public static long MAX_PHASE_ID = 99999999;

        // These get loaded from _main.lua now.
        public static List<object> ALLIANCE_ONLY;
        public static List<object> HORDE_ONLY;
        public static List<object> ALL_RACES;
        public static List<object> ALL_CLASSES;

        private static readonly ConcurrentDictionary<string, ConcurrentDictionary<long, ConcurrentHashSet<IDictionary<string, object>>>> SOURCED =
            new ConcurrentDictionary<string, ConcurrentDictionary<long, ConcurrentHashSet<IDictionary<string, object>>>>();

        // TODO: clean all these separate collections into the above
        /// <summary>
        /// All of the Category IDs that have been referenced somewhere in the database.
        /// </summary>
        private static IDictionary<long, bool> CATEGORIES_WITH_REFERENCES = new ConcurrentDictionary<long, bool>();

        /// <summary>
        /// All of the Custom Header Constants listed by their constant name and id value.
        /// </summary>
        private static IDictionary<string, long> CUSTOM_HEADER_CONSTANTS = new ConcurrentDictionary<string, long>();

        /// <summary>
        /// All of the Custom Header IDs that have been referenced somewhere in the database.
        /// </summary>
        private static IDictionary<long, bool> CUSTOM_HEADERS_WITH_REFERENCES = new ConcurrentDictionary<long, bool>();

        /// <summary>
        /// All of the Filter IDs that have been referenced somewhere in the database.
        /// </summary>
        private static IDictionary<long, bool> FILTERS_WITH_REFERENCES = new ConcurrentDictionary<long, bool>();

        /// <summary>
        /// All of the Flight Path IDs that have been referenced somewhere in the database.
        /// </summary>
        private static IDictionary<long, bool> FLIGHTPATHS_WITH_REFERENCES = new ConcurrentDictionary<long, bool>();

        /// <summary>
        /// All of the NPC IDs that have been referenced somewhere in the database.
        /// </summary>
        public static IDictionary<long, bool> NPCS_WITH_REFERENCES = new ConcurrentDictionary<long, bool>();

        /// <summary>
        /// All of the Object IDs that have been referenced somewhere in the database.
        /// </summary>
        public static IDictionary<long, bool> OBJECTS_WITH_REFERENCES = new ConcurrentDictionary<long, bool>();

        /// <summary>
        /// All of thePhase Constants listed by their constant name and id value.
        /// </summary>
        private static IDictionary<string, long> PHASE_CONSTANTS = new ConcurrentDictionary<string, long>();

        /// <summary>
        /// All of the Phase IDs that have been referenced somewhere in the database.
        /// </summary>
        private static IDictionary<long, bool> PHASES_WITH_REFERENCES = new ConcurrentDictionary<long, bool>();

        /// <summary>
        /// All of the Quest IDs that have been referenced somewhere in the database.
        /// </summary>
        private static IDictionary<long, bool> QUESTS_WITH_REFERENCES = new ConcurrentDictionary<long, bool>();

        /// <summary>
        /// All of the Export Data Keys that have been referenced somewhere in the database.
        /// </summary>
        private static ConcurrentDictionary<string, ConcurrentHashSet<string>> EXPORTDATA_WITH_REFERENCES = new ConcurrentDictionary<string, ConcurrentHashSet<string>>();

        /// <summary>
        /// All of the achievements that have been parsed sorted by Achievement ID.
        /// </summary>
        private static IDictionary<long, IDictionary<string, object>> ACHIEVEMENTS = new Dictionary<long, IDictionary<string, object>>();

        /// <summary>
        /// All of the names stored for each data type.
        /// </summary>
        private static ConcurrentDictionary<string, ConcurrentDictionary<long, string>> NAMES_BY_TYPE = new ConcurrentDictionary<string, ConcurrentDictionary<long, string>>();

        /// <summary>
        /// Represents the current parent group when processing the 'g' subgroup
        /// </summary>
        private static KeyValuePair<string, object>? CurrentParentGroup { get; set; }

        /// <summary>
        /// Represents the file currently being processed
        /// </summary>
        public static string CurrentFileName { get; set; }

        /// <summary>
        /// Represents the sub-file currently being processed within the context generated by an IMPORT command
        /// </summary>
        public static string CurrentSubFileName => Program.CurrentSubFilename;

        /// <summary>
        /// Represents the sub-file currently being processed by an IMPORT command
        /// </summary>
        public static string CurrentImportFileName => Program.CurrentImportFilename;

        /// <summary>
        /// Represents the group which set the NestedDifficultyID
        /// </summary>
        private static object DifficultyRoot { get; set; }

        /// <summary>
        /// Represents the nested DifficultyID currently being processed
        /// </summary>
        private static long NestedDifficultyID { get; set; }

        /// <summary>
        /// Represents the nested HeaderID currently being processed
        /// </summary>
        private static long NestedHeaderID { get; set; }

        /// <summary>
        /// Represents the nested ItemAppearanceModifierID currently being processed
        /// </summary>
        private static long NestedItemAppearanceModifierID { get; set; }

        /// <summary>
        /// Represents the nested BonusID currently being processed
        /// </summary>
        private static long NestedBonusID { get; set; }

        /// <summary>
        /// Represents the nested ModID currently being processed
        /// </summary>
        private static long NestedModID { get; set; }

        /// <summary>
        /// Represents the nested min lvl currently being processed
        /// </summary>
        private static long NestedMinLvl { get; set; } = 1;

        /// <summary>
        /// Whether or not to report changes to the context.
        /// </summary>
        private static bool ShouldReportContextChanges { get; set; }

        /// <summary>
        /// The depth of the report context.
        /// </summary>
        private static long ContextReportDepth { get; set; }

        private static HashSet<string> _inhertingFields;
        private static HashSet<string> InheritingFields
        {
            get
            {
                if (_inhertingFields != null)
                {
                    return _inhertingFields;
                }

                string[] fields = Config["InheritingFields"] ?? Array.Empty<string>();
                _inhertingFields = new HashSet<string>(fields);
                return _inhertingFields;
            }
        }

        private static HashSet<string> _preprocessorTags;
        /// <summary>
        /// Contains the set of PreProcessor tags which are defined in the config file
        /// </summary>
        public static HashSet<string> PreProcessorTags
        {
            get
            {
                if (_preprocessorTags != null)
                {
                    return _preprocessorTags;
                }

                string[] tags = Config["PreProcessorTags"] ?? Array.Empty<string>();
                _preprocessorTags = new HashSet<string>(tags);
                return _preprocessorTags;
            }
        }

        private static ConcurrentDictionary<string, object> Exports { get; } = new ConcurrentDictionary<string, object>();

        private static ConcurrentDictionary<string, object> IncorporationReferences { get; } = new ConcurrentDictionary<string, object>();

        /// <summary>
        /// Performs a ReadKey if the parser is not in an Automated run
        /// </summary>
        public static void WaitForUser(string message = "Press Enter once you have resolved the issue.")
        {
            if (!Automated)
            {
                Trace.WriteLine(message);
                Console.ReadKey();
            }
        }

        /// <summary>
        /// Assign the custom headers to the Framework's internal reference.
        /// </summary>
        /// <param name="headers">The headers.</param>
        public static void AssignCustomHeaders(Dictionary<long, object> headers)
        {
            CustomHeaders = headers;
            Trace.WriteLine($"Found {headers.Count} Custom Headers...");
            foreach (var pair in headers)
            {
                if (pair.Value is IDictionary<string, object> header)
                {
                    if (header.TryGetValue("constant", out object value))
                    {
                        var constant = value.ToString();
                        CUSTOM_HEADER_CONSTANTS[constant] = pair.Key;
                        if (header.TryGetValue("export", out value) && (bool)value)
                        {
                            MarkCustomHeaderAsRequired(constant);
                        }
                    }
                    if (header.TryGetValue("readable", out value) && !header.ContainsKey("temporary"))
                    {
                        CustomHeaderIDsByKey[value.ToString()] = pair.Key;
                    }
                }
            }
        }

        /// <summary>
        /// Assign the localization strings to the Framework's internal reference.
        /// </summary>
        /// <param name="localizationStrings">The localization strings.</param>
        public static void AssignLocalizationStrings(Dictionary<string, object> localizationStrings)
        {
            LocalizationStrings = localizationStrings;
            Trace.WriteLine($"Found {localizationStrings.Count} Localization Strings...");
        }

        /// <summary>
        /// Mark the Custom Header as Required.
        /// This will force it to be included in the export if it exists as a constant.
        /// NOTE: Only headers with a constant defined can be explicitly marked.
        /// </summary>
        /// <param name="headerID">The header ID.</param>
        public static void MarkCustomHeaderAsRequired(long headerID)
        {
            if (headerID < 1)
            {
                CUSTOM_HEADERS_WITH_REFERENCES[headerID] = true;
            }
        }

        /// <summary>
        /// Mark the Custom Header as Required.
        /// This will force it to be included in the export if it exists as a constant.
        /// NOTE: Only headers with a constant defined can be explicitly marked.
        /// </summary>
        /// <param name="headerConstant">The header constant.</param>
        public static void MarkCustomHeaderAsRequired(string headerConstant)
        {
            if (CUSTOM_HEADER_CONSTANTS.TryGetValue(headerConstant, out long headerID))
            {
                CUSTOM_HEADERS_WITH_REFERENCES[headerID] = true;
            }
        }

        /// <summary>
        /// Assign the phases to the Framework's internal reference.
        /// </summary>
        /// <param name="phases">The phases.</param>
        public static void AssignPhases(Dictionary<long, object> phases)
        {
            Phases = phases;
            Trace.WriteLine($"Found {phases.Count} Phases...");
            foreach (var pair in phases)
            {
                if (pair.Value is IDictionary<string, object> phase)
                {
                    if (phase.TryGetValue("constant", out object value))
                    {
                        var constant = value.ToString();
                        PHASE_CONSTANTS[constant] = pair.Key;
                        if (phase.TryGetValue("export", out value) && (bool)value)
                        {
                            MarkPhaseAsRequired(constant);
                        }
                    }
                    else if (phase.TryGetValue("export", out value) && (bool)value)
                    {
                        MarkPhaseAsRequired(pair.Key);
                    }
                    if (phase.TryGetValue("readable", out value) && !phase.ContainsKey("temporary"))
                    {
                        PhaseIDsByKey[value.ToString()] = pair.Key;
                    }
                }
            }
        }

        /// <summary>
        /// Mark the Phase as Required.
        /// This will force it to be included in the export if it exists as a constant.
        /// NOTE: Only phases with a constant defined can be explicitly marked.
        /// </summary>
        /// <param name="phaseID">The phase ID.</param>
        public static void MarkPhaseAsRequired(long phaseID)
        {
            PHASES_WITH_REFERENCES[phaseID] = true;
        }

        /// <summary>
        /// Mark the Phase as Required.
        /// This will force it to be included in the export if it exists as a constant.
        /// NOTE: Only phases with a constant defined can be explicitly marked.
        /// </summary>
        /// <param name="phaseConstant">The phase constant.</param>
        public static void MarkPhaseAsRequired(string phaseConstant)
        {
            if (PHASE_CONSTANTS.TryGetValue(phaseConstant, out long phaseID))
            {
                PHASES_WITH_REFERENCES[phaseID] = true;
            }
        }

        /// <summary>
        /// Try to colorize the values in the localization table should the color key exist.
        /// </summary>
        /// <param name="dict">The dictionary to check for color.</param>
        /// <param name="key">The localization key to check for color.</param>
        public static void TryColorizeDictionary(IDictionary<string, object> dict)
        {
            if (dict.TryGetValue("color", out string colorString))
            {
                dict.Remove("color");
                var keys = dict.Keys.ToList();
                if (colorString.Contains("."))  // _. / app.
                {
                    if (colorString.StartsWith("~")) colorString = colorString.Substring(1);    // Rip out the squiggle, it's not needed here as we're replacing it below.
                    if (colorString.Contains("ccColors")) colorString = $"~{colorString}..";   // _.ccColors
                    else colorString = $"~\"|c\"..{colorString}..";   // _.Colors
                }
                else
                {
                    if (colorString.Length < 8) colorString = colorString.PadLeft(8, 'f');
                    colorString = $"|c{colorString}";
                }
                foreach (var localeKey in keys)
                {
                    var localeString = dict[localeKey].ToString();
                    if (localeString.StartsWith("~"))
                    {
                        localeString = localeString.Substring(1);
                        if (colorString.StartsWith("~"))
                        {
                            dict[localeKey] = $"{colorString}{localeString}..\"|r\"";
                        }
                        else dict[localeKey] = $"~\"{colorString}\"..{localeString}..\"|r\"";
                    }
                    else
                    {
                        if (colorString.StartsWith("~"))
                        {
                            dict[localeKey] = $"{colorString}\"{localeString}|r\"";
                        }
                        else dict[localeKey] = $"{colorString}{localeString}|r";
                    }
                }
            }
        }

        /// <summary>
        /// Try to colorize the values in the localization table should the color key exist.
        /// </summary>
        /// <param name="header">The header to check for color.</param>
        /// <param name="key">The localization key to check for color.</param>
        public static void TryColorizeDictionaryKey(IDictionary<string, object> header, string key)
        {
            if (header.TryGetValue(key, out object dictRef) && dictRef is Dictionary<string, object> dict)
            {
                TryColorizeDictionary(dict);
            }
        }

        private static bool AutoLocalizeType(string type) => AUTO_LOCALIZE_TYPES.Contains(type);

        /// <summary>
        /// Represents that data will be merged into the base dictionaries.
        /// This should only be performed on the first processing pass, allowing the second processing pass to sync all Item info in nested group references
        /// </summary>
        private static bool MergeItemData => CurrentParseStage <= ParseStage.Incorporation;

        /// <summary>
        /// Whether the Parser is processing Merge data which is allowed to Merge certain fields to be shared among all Sources of a Thing
        /// </summary>
        public static bool ProcessingMergeData => CurrentParseStage == ParseStage.RawJsonMerge || CurrentParseStage == ParseStage.ConditionalData;

        private static ParseStage _stage;
        /// <summary>
        /// Represents the current Stage of Parsing. Certain data is not fully populated or accurate at certain Stages, so this can be used to ensure
        /// operations are performed at the correct Stage
        /// </summary>
        public static ParseStage CurrentParseStage
        {
            get
            {
                return _stage;
            }
            set
            {
                if (value <= _stage)
                    throw new InvalidOperationException($"Do not regress or stagnate in ParseStage tracking: {_stage} => {value}");

                _stage = value;
                Log(_timer.ElapsedMilliseconds.ToString("000000 ") + _stage.ToString() + "...");
                if (Handlers.TryGetValue(_stage, out var handler))
                {
                    CurrentParseStageHandler = handler;
                }
                else
                {
                    CurrentParseStageHandler = null;
                }
            }
        }

        /// <summary>
        /// Represents whether we are currently processing the main Achievements Category
        /// </summary>
        private static bool ProcessingAchievementCategory { get; set; }

        /// <summary>
        /// Represents whether we are currently processing a category which is not visible
        /// </summary>
        private static bool ProcessingUnsortedCategory { get; set; }

        /// <summary>
        /// Represents whether we are currently processing a category which is entirely NYI
        /// </summary>
        private static bool ProcessingNYICategory { get; set; }

        /// <summary>
        /// A Dictionary of key-ID types and how many times each value of key-type has been referenced in the final DB
        /// </summary>
        public static ConcurrentDictionary<string, ConcurrentDictionary<decimal, int>> TypeUseCounts { get; } = new ConcurrentDictionary<string, ConcurrentDictionary<decimal, int>>();

        /// <summary>
        /// A Dictionary of key-ID types and how many times each value of key-type has been referenced in the final DB
        /// </summary>
        public static Dictionary<string, HashSet<decimal>> OutputSets { get; } = new Dictionary<string, HashSet<decimal>>();

        /// <summary>
        /// A Dictionary of key-ID types and the respective objects which contain the specified key which will be captured and output during Debug runs</para>
        /// NOTE: Each key name/value may contain multiple sets of data due to duplication of individual listings
        /// </summary>
        public static ConcurrentDictionary<string, ConcurrentDictionary<decimal, IDictionary<string, object>>> DebugDBs { get; }
                = new ConcurrentDictionary<string, ConcurrentDictionary<decimal, IDictionary<string, object>>>();

        /// <summary>
        /// A collection of named format strings for logging messages
        /// </summary>
        public static Dictionary<string, string> LogFormats = new Dictionary<string, string>
        {
            { "ItemRecipeFormat", "WARN: Add to ItemRecipes.lua: i({0}, {1}); -- {2} (Guessed via {3})" },
        };

        /// <summary>
        /// All of the achievement data that has been loaded into the database.
        /// NOTE: This is used only for Pre-Wrath Builds of LocalizationDB.
        /// </summary>
        internal static Dictionary<long, Dictionary<string, object>> AchievementData { get; private set; } = new Dictionary<long, Dictionary<string, object>>();


        /// <summary>
        /// All of the achievement category data that has been loaded into the database.
        /// NOTE: This is used only for Pre-Wrath Builds of LocalizationDB.
        /// </summary>
        internal static Dictionary<long, Dictionary<string, object>> AchievementCategoryData { get; private set; } = new Dictionary<long, Dictionary<string, object>>();


        /// <summary>
        /// All of the achievement criteria data that has been loaded into the database.
        /// NOTE: This is used only for Pre-Wrath Builds of LocalizationDB.
        /// </summary>
        internal static Dictionary<long, Dictionary<string, object>> AchievementCriteriaData { get; private set; } = new Dictionary<long, Dictionary<string, object>>();

        /// <summary>
        /// All of the assets that have been made available in the game database. (Not relevant unless flagged for it in the Config file)
        /// </summary>
        internal static Dictionary<long, bool> AssetDB { get; private set; } = new Dictionary<long, bool>();

        /// <summary>
        /// All of the categories that have been loaded into the database.
        /// </summary>
        internal static Dictionary<long, Dictionary<string, object>> CategoryDB { get; private set; } = new Dictionary<long, Dictionary<string, object>>();

        /// <summary>
        /// Populated with a set of parsed Item Dictionary datas which will conditionally be merged following the DataValidation phase. This
        /// is useful to be able to define specific relationships on specific Items (Mount/Pet/etc.) and only incorporate the relationship if
        /// the Item is Sourced elsewhere for the specific ATT Build
        /// </summary>
        internal static List<IDictionary<string, object>> ConditionalItemData { get; } = new List<IDictionary<string, object>>();

        /// <summary>
        /// The CustomHeaders table from main.lua that is used to generate custom headers.
        /// </summary>
        internal static Dictionary<long, object> CustomHeaders { get; private set; }

        /// <summary>
        /// This contains all of the explicitly assigned headerIDs to readable
        /// </summary>
        internal static Dictionary<string, long> CustomHeaderIDsByKey { get; } = new Dictionary<string, long>();

        /// <summary>
        /// All of the filters that have been loaded into the database.
        /// NOTE: This is exclusively used for text localizations.
        /// </summary>
        internal static Dictionary<long, Dictionary<string, object>> FilterDB { get; private set; } = new Dictionary<long, Dictionary<string, object>>();

        /// <summary>
        /// All of the flight paths that have been loaded into the database.
        /// NOTE: This is exclusively used for text localizations.
        /// </summary>
        internal static Dictionary<long, Dictionary<string, object>> FlightPathDB { get; private set; } = new Dictionary<long, Dictionary<string, object>>();

        /// <summary>
        /// All of the glyphs that have been loaded into the database.
        /// </summary>
        internal static Dictionary<long, long> GlyphDB { get; private set; } = new Dictionary<long, long>();

        /// <summary>
        /// All of the ItemAppearanceModifierIDs that have been loaded into the database by their assigned bonusID.
        /// </summary>
        internal static Dictionary<long, long> ItemAppearanceModifierIDs_BonusID { get; private set; } = new Dictionary<long, long>();

        /// <summary>
        /// All of the ItemAppearanceModifierIDs that have been loaded into the database by their assigned modID.
        /// </summary>
        internal static Dictionary<long, long> ItemAppearanceModifierIDs_ModID { get; private set; } = new Dictionary<long, long>();

        //

        /// <summary>
        /// The LocalizationStrings table from main.lua that is used to generate localization strings.
        /// </summary>
        internal static Dictionary<string, object> LocalizationStrings { get; private set; } = new Dictionary<string, object>();

        /// <summary>
        /// All of the objects that have been loaded into the database.
        /// </summary>
        internal static Dictionary<long, Dictionary<string, object>> ObjectDB { get; private set; } = new Dictionary<long, Dictionary<string, object>>();

        /// <summary>
        /// The Phases table from main.lua that is used to generate custom headers.
        /// </summary>
        internal static Dictionary<long, object> Phases { get; private set; }

        /// <summary>
        /// This contains all of the explicitly assigned phaseIDs to readable
        /// </summary>
        internal static Dictionary<string, long> PhaseIDsByKey { get; } = new Dictionary<string, long>();

        /// <summary>
        /// Contains two Keys for sets of field names relating to a 'trackable' nature within ATT
        /// Provided: fields whose data allows for in-game tracking capability
        /// Required: fields whose data only makes sense if the data allows in-game tracking
        /// </summary>
        internal static Dictionary<string, HashSet<string>> TrackableFields { get; } = new Dictionary<string, HashSet<string>>
        {
            { "Provided", new HashSet<string>
            {
                "achID",
                "azeriteessenceID",
                "conduitID",
                "difficultyID",
                "factionID",
                "flightpathID",
                "followerID",
                "instanceID",
                "heirloomUnlockID",
                "heirloomLevelID",
                "mapID",
                "questID",
                "questIDA",
                "questIDH",
                "runeforgepowerID",
                "spellID",
                "titleID",
            } },
            { "Required", new HashSet<string>
            {
                "isDaily",
                "isWeekly",
                "isMonthly",
                "isYearly",
                "repeatable"
            } }
        };

        /// <summary>
        /// Fields which do not help determine information about a Criteria object
        /// </summary>
        private static readonly string[] IndeterminateCriteriaDataFields = new[]
        {
            "id",
            "timeline",
            "awp",
            "rwp"
        };

        public static bool HasConfig()
        {
            return Config != null;
        }

        /// <summary>
        /// Allows the optional Parser Config file to overwrite some built-in values for non-compile required manipulation of the Parser
        /// </summary>
        public static void InitConfigSettings(string filepath, bool replaceConfig = false)
        {
            if (Config == null || replaceConfig)
            {
                Log($"Using config: {filepath}");
                Config = new CustomConfiguration(filepath);
                Console.Title = $"ATT Parser: {filepath}";
            }
            else
            {
                Log($"Added config: {filepath}");
                Config.ApplyFile(filepath);
                Console.Title += $" + {filepath}";
            }
        }

        /// <summary>
        /// After multiple calls to InitConfigSettings have been completed, this method is used to apply the config settings into the Parser
        /// </summary>
        public static void ApplyConfigSettings()
        {
            CURRENT_RELEASE_PHASE_NAME = Config["DataPhase"] ?? "UNKNOWN";
            if (CURRENT_RELEASE_PHASE_NAME == "UNKNOWN")
            {
                Console.Write("CURRENT_RELEASE_PHASE_NAME is UNKNOWN. Please make sure to assign 'DataPhase' in your config file.");
                Framework.WaitForUser();
                throw new ArgumentNullException("DataPhase");
            }
            int[] configPatch = Config["DataPatch"];
            if (configPatch == null)
            {
                Console.Write("CURRENT_RELEASE_VERSION is missing. Please make sure to assign 'DataPatch' in your config file.");
                Framework.WaitForUser();
                throw new ArgumentNullException("DataPatch");
            }
            CURRENT_RELEASE_VERSION = configPatch.ConvertVersion();
            DATA_REQUIREMENTS = Config["DataRequirements"] ?? null;
            CURRENT_RELEASE_PHASE = FIRST_EXPANSION_PHASE[CURRENT_RELEASE_PHASE_NAME];
            CURRENT_SHORT_RELEASE_VERSION = CURRENT_RELEASE_VERSION.ConvertToGameVersion();
            BLIZZ_ICONS_ARE_HARD = PreProcessorTags.Contains("BLIZZ_ICONS_ARE_HARD");
            if (PreProcessorTags.Contains("ANYCLASSIC"))
            {
                MAX_PHASE_ID = LAST_EXPANSION_PHASE[CURRENT_RELEASE_PHASE_NAME];
                Console.Write("Max Phase ID: ");
                Console.WriteLine(MAX_PHASE_ID);
            }
            else
            {
                Console.WriteLine("All Phases will be included in this build.");
            }
            string[] configUseCounts = Config["TrackUseCounts"];
            if (configUseCounts != null)
            {
                foreach (string type in configUseCounts)
                {
                    TypeUseCounts[type] = new ConcurrentDictionary<decimal, int>();
                }
            }
            string[] configDebugDBs = Config["DebugDB"];
            if (configDebugDBs != null)
            {
                foreach (string key in configDebugDBs)
                {
                    DebugDBs[key] = new ConcurrentDictionary<decimal, IDictionary<string, object>>();
                }
            }
            ImportConfiguredObjectTypes(Config["ObjectTypes"]);

            string[] types = Config["AutoLocalizeTypes"];
            AUTO_LOCALIZE_TYPES = new HashSet<string>(types ?? Array.Empty<string>());

            // Build the SOURCED dictionary
            string[] sourcedIDs = Config["SOURCED"];
            foreach (string id in sourcedIDs)
            {
                SOURCED.TryAdd(id, new ConcurrentDictionary<long, ConcurrentHashSet<IDictionary<string, object>>>());
            }
        }

        private static void ImportConfiguredObjectTypes(CustomConfigurationNode objectTypesConfig)
        {
            if (objectTypesConfig?.CanEnumerate ?? false)
            {
                foreach (CustomConfigurationNode objectConfig in objectTypesConfig)
                {
                    ObjectData.Insert(objectConfig["objectType"], objectConfig["shortcut"], "_." + objectConfig["function"], objectConfig["convertedKey"], objectConfig["ignoredFields"]);
                }
            }
        }
        private static void TrackIncorporationData(IDictionary<string, object> root, string field, object data)
        {
            if (ObjectData.TryGetMostSignificantObjectType(root, out ObjectData objectData, out var id))
            {
                id.TryConvert(out long idval);
                TrackIncorporationData(objectData.ObjectType, idval, field, data);
            }
        }

        private static void TrackIncorporationData(string idtype, long id, string field, object data)
        {
            var fieldreferences = IncorporationReferences.GetOrAdd(idtype, (_) => new ConcurrentDictionary<long, object>()) as ConcurrentDictionary<long, object>;
            var idreference = fieldreferences.GetOrAdd(id, (_) => new ConcurrentDictionary<string, object>()) as ConcurrentDictionary<string, object>;

            if (idtype == "itemID")
            {
                Items.TryGetName(idreference, out string name);
                idreference.TryRemove("_modItemID", out _);
                Objects.Merge(idreference, "name", name);
            }

            Objects.Merge(idreference, field, data);
        }

        /// <summary>
        /// Checks the data for any list-based content and attempts to order that content in a consistent way so that output remains identical for identical data
        /// </summary>
        /// <param name="data"></param>
        private static void Consolidate_ListOrdering(IDictionary<string, object> data)
        {
            // only certain fields are agnostic to the parsed order
            foreach (var sortedField in SORTABLE_FIELDS)
            {
                // is it a list of objects?
                if (data.TryGetValue(sortedField, out object value) && value is List<object> valList)
                {
                    AttemptSortingGenericList(valList);
                }
            }
        }

        private static void AttemptSortingGenericList(List<object> list)
        {
            if ((list?.Count ?? 0) < 2)
                return;

            // only sort lists which have a long value
            var firstVal = list[0];
            if (firstVal.TryConvert(out long _))
            {
                list.Sort(delegate (object a, object b)
                {
                    if (a.TryConvert(out long al) && b.TryConvert(out long bl))
                    {
                        return al.CompareTo(bl);
                    }

                    // don't change order if either can't be converted
                    return 0;
                });
            }
            else if (firstVal.TryConvert(out string _))
            {
                list.Sort(delegate (object a, object b)
                {
                    if (a.TryConvert(out string asv) && b.TryConvert(out string bsv))
                    {
                        return stringComparer.Compare(asv, bsv);
                    }

                    // don't change order if either can't be converted
                    return 0;
                });
            }
        }

        /// <summary>
        /// Attempt to sort the list by the name field.
        /// </summary>
        /// <param name="list">The list of objects.</param>
        public static void SortByName(List<object> list)
        {
            // If the list is null, then return immediately.
            if (list == null) return;

            // Sort the List by Name / Bonus ID / Mod ID
            list.Sort(SortByName);

            // Check to see if the list of objects has a relative g field.
            foreach (var objRef in list)
            {
                SortByName(objRef as IDictionary<string, object>);
            }
        }

        /// <summary>
        /// Sort the dictionary by its name field.
        /// </summary>
        /// <param name="a">Object Dictionary A.</param>
        public static void SortByName(IDictionary<string, object> a)
        {
            // If a is null, return immediately.
            if (a == null) return;

            // If a contains relative groups, then try to sort them.
            if (a.TryGetValue("g", out object aRef))
            {
                SortByName(aRef as List<object>);
            }
        }

        /// <summary>
        /// Sort two objects by their name field.
        /// </summary>
        /// <param name="a">Object Dictionary A.</param>
        /// <param name="b">Object Dictionary B.</param>
        /// <returns>Whether a is greater than b.</returns>
        public static int SortByName(object a, object b)
        {
            return SortByName(a as IDictionary<string, object>, b as IDictionary<string, object>);
        }

        /// <summary>
        /// Sort two dictionaries by their name field.
        /// </summary>
        /// <param name="a">Object Dictionary A.</param>
        /// <param name="b">Object Dictionary B.</param>
        /// <returns>Whether a is greater than b.</returns>
        public static int SortByName(IDictionary<string, object> a, IDictionary<string, object> b)
        {
            // If a is null,
            if (a == null)
            {
                // If b is also null, they are the same.
                if (b == null) return 0;

                // If not, then b is greater.
                return -1;
            }

            // If b is null, that means a is greater.
            if (b == null) return 1;

            // If a contains a name, then try to get it.
            if (a.ContainsKey("itemID") && Items.Get(a).TryGetValue("name", out string aRef))
            {
                // If b contains a name, then try to get it.
                if (b.ContainsKey("itemID") && Items.Get(b).TryGetValue("name", out string bRef))
                {
                    // Both have a name, compare them!
                    var first = Compare(aRef, bRef);
                    if (first == 0)
                    {
                        // If they have the same name, then sort by BonusID/ModID.
                        // If a contains a bonusID, then try to get it.
                        if (a.TryGetValue("bonusID", out aRef))
                        {
                            // If b contains a bonusID, then try to get it.
                            if (b.TryGetValue("bonusID", out bRef))
                            {
                                // Both have a bonusID, compare them!
                                return Convert.ToInt64(aRef).CompareTo(bRef);
                            }

                            // BonusID goes first
                            return -1;
                        }

                        // If a contains a modID, then try to get it.
                        if (a.TryGetValue("modID", out aRef))
                        {
                            // If b contains a modID, then try to get it.
                            if (b.TryGetValue("modID", out bRef))
                            {
                                // Both have a modID, compare them!
                                return Convert.ToInt64(aRef).CompareTo(bRef);
                            }

                            // ModID goes first
                            return -1;
                        }

                        // If a contains a cost, then try to get it.
                        if (a.TryGetValue(out Cost aCost))
                        {
                            // If b contains a cost, then try to get it.
                            if (b.TryGetValue(out Cost bCost))
                            {
                                // Both have a cost, compare them!
                                return aCost.HasData.CompareTo(bCost.HasData);
                            }

                            // Cost goes first
                            return -1;
                        }
                    }
                    return first;
                }
            }

            // If neither has a name, then they are equal.
            return 0;
        }
        #endregion
        #region Field Conversion
        private static StringComparer stringComparer = StringComparer.InvariantCulture;
        public static int Compare<T>(T a, T b)
        {
            return stringComparer.Compare(a, b);
        }

        /// <summary>
        /// Convert the field name to a standardized field name.
        /// This helps prevent inconsistent naming conventions from breaking things.
        /// </summary>
        /// <param name="field">The original field name.</param>
        /// <returns>The standardized field name.</returns>
        public static string ConvertFieldName(string field)
        {
            // Field Name Conversions
            switch (field)
            {
                case "g":
                case "group":
                case "groups":
                case "criteria":
                    {
                        return "g";
                    }

                case "bonus":
                case "bonusID":
                    {
                        return "bonusID";
                    }

                case "modID":
                case "itemModID":
                    {
                        return "modID";
                    }

                case "ItemAppearanceModifierID":
                    {
                        return "ItemAppearanceModifierID";
                    }

                case "artifactId":
                case "artifactID":
                    {
                        return "artifactID";
                    }

                case "categoryId":
                case "categoryID":
                    {
                        return "categoryID";
                    }

                case "c":
                case "classes":
                case "classIDs":
                    {
                        return "c";
                    }

                case "c_disp":
                case "classes_display":
                    {
                        return "c_disp";
                    }

                case "coord":
                case "coordID":
                    {
                        return "coord";
                    }

                case Coords.Field:
                case "coordIDs":
                    {
                        return Coords.Field;
                    }

                case "explorationId":
                case "explorationID":
                    {
                        return "explorationID";
                    }

                case "illusionId":
                case "illusionID":
                    {
                        return "illusionID";
                    }

                case "itemId":
                case "itemID":
                    {
                        return "itemID";
                    }

                case "toyId":
                case "toyID":
                    {
                        return "toyID";
                    }

                case "creatureId":
                case "creatureID":
                    {
                        return "creatureID";
                    }

                case "s":
                case "sourceID":
                    {
                        return "sourceID";
                    }
                /*
                case "dr":
                case "droprate":
                case "dropRate":
                    {
                        return "dr";
                    }
                */
                case "requireSkill":
                case "requiredSkill":
                    {
                        return "requireSkill";
                    }

                case "b":
                case "bind":
                case "binding":
                case "bindType":
                    {
                        return "b";
                    }

                case "e":
                case "ev":
                case "event":
                    {
                        return "e";
                    }

                case "f":
                case "filter":
                case "filterID":
                    {
                        return "f";
                    }
                case "fForRWP":
                case "filterForRWP":
                case "filterIDForRWP":
                    {
                        return "filterForRWP";
                    }

                case "gender":
                    {
                        return "gender";
                    }

                case "learnedAt":
                    {
                        return "learnedAt";
                    }

                case "ilvl":
                case "iLvl":
                case "ilevel":
                case "iLevel":
                    {
                        return "ilvl";
                    }

                case "lvl":
                case "Lvl":
                case "LvL":
                case "level":
                case "Level":
                case "requiredLevel":
                case "levelRequirement":
                case "reqlvl":
                case "reqlvls":
                case "reqLvl":
                case "reqLvls":
                    {
                        return "lvl";
                    }

                case "petBattleLvl":
                    {
                        return "petBattleLvl";
                    }

                case "rank":
                case "azeriteRank":
                    {
                        return "rank";
                    }

                case "isBounty":
                    {
                        return "isBounty";
                    }
                case "isGuild":
                    {
                        return "isGuild";
                    }
                case "isRepeatable":
                case "repeatable":
                    {
                        return "repeatable";
                    }
                case "isLimited":
                    {
                        return "isLimited";
                    }

                case "isDaily":
                case "daily":
                case "dailyQuest":
                    {
                        return "isDaily";
                    }

                case "isWeekly":
                case "weekly":
                case "weeklyQuest":
                    {
                        return "isWeekly";
                    }

                case "isMonthly":
                case "monthly":
                case "monthlyQuest":
                    {
                        return "isMonthly";
                    }

                case "isYearly":
                case "yearly":
                case "yearlyQuest":
                    {
                        return "isYearly";
                    }

                case "isLockoutShared":
                case "isSharedLockout":
                case "sharedLockout":
                    {
                        return "isLockoutShared";
                    }

                case "q":
                case "quality":
                case "qualityId":
                case "qualityID":
                case "itemQuality":
                    {
                        return "q";
                    }

                case "mountId":
                case "mountID":
                    {
                        return "mountID";
                    }

                case "recipeId":
                case "recipeID":
                    {
                        return "recipeID";
                    }

                case "spellId":
                case "spellID":
                    {
                        return "spellID";
                    }

                case "speciesID":
                case "petID":
                case "species":
                    {
                        return "speciesID";
                    }

                case "specs":
                case "specializations":
                case "specializationRequirements":
                case "requiredSpecs":
                case "requiredSpecializations":
                    {
                        return "specs";
                    }

                case "u":
                case "un":
                case "unobtainable":
                    {
                        return "u";
                    }

                case "v":
                case "variants":
                case "bonuses":
                case "bonusIds":
                case "bonusIDs":
                    {
                        return "bonusIDs";
                    }

                case "m":
                case "mods":
                case "modIds":
                case "modIDs":
                    {
                        return "modIDs";
                    }

                case "sourceAchievements":
                    {
                        return "sourceAchievements";
                    }

                case "sourceQuests":
                case "sourceQuestID":
                case "sourceQuestIDs":
                    {
                        return "sourceQuests";
                    }

                case "altQuests":
                case "alternateQuests":
                case "exclusiveQuests":
                case "exclusiveWithQuests":
                    {
                        return "altQuests";
                    }

                case "altQuestID":
                    return "altQuestID";
                case "questID":
                    return "questID";
                case "aQuestID":
                case "allyQuestID":
                case "allianceQuestID":
                    return "questIDA";
                case "hQuestID":
                case "hordeQuestID":
                    return "questIDH";
                case "lc":
                case "lockCriteria":
                    return "lc";

                case "aqd":
                case "allianceQuestData":
                    {
                        return "aqd";
                    }

                case "hqd":
                case "hordeQuestData":
                    {
                        return "hqd";
                    }

                case "altSpeciesID":
                    {
                        return "altSpeciesID";
                    }

                case "altAchID":
                case "altAchievementID":
                case "hAchievementID":
                case "hordeAchievementID":
                    {
                        return "altAchID";
                    }

                case "achID":
                case "achievementID":
                case "aAchievementID":
                case "allyAchievementID":
                case "allianceAchievementID":
                    {
                        return "achID";
                    }

                case "achCatID":
                case "achCategoryID":
                case "achievementCategoryID":
                    {
                        return "achievementCategoryID";
                    }

                case "minRep":
                case "minReputation":
                    {
                        return "minReputation";
                    }
                case "maxRep":
                case "maxReputation":
                    {
                        return "maxReputation";
                    }

                case "availability":
                case "tl":
                case "timeline":
                    {
                        return "timeline";
                    }

                case "sourceQuestNumRequired":
                case "sqreq":
                    return "sqreq";

                case "races_display":
                    return "races_disp";

                case "autoname":
                    return "an";

                case "trackID":
                case "upgradeTrackID":
                    return "trackID";

                // tags which are accurate already
                case "azeriteessenceID":
                case "buildingID":
                case "class":
                case "classID":
                case "cm": // mop/wod challenge master flag
                case "collectible":
                case "cost":
                case "cr":
                case "criteriaID":
                case "crs":
                case "currencyID":
                case "description":
                case "difficulties":
                case "difficultyID":
                case "DisablePartySync":
                case "displayID":
                case "encounterID":
                case "equippable":
                case "eventID":
                case "expansionID":
                case "factionID":
                case "flightpathID":
                case "followerID":
                case "heirloomID":
                case "hideText":
                case "icon":
                case "ignoreBonus":
                case "ignoreSource":
                case "instanceID":
                case "savedInstanceID":
                case "inventoryType":
                case "isAquatic":
                case "isBreadcrumb":
                case "isFlying":
                case "isGround":
                case "isJumping":
                case "isOffHand":
                case "isRaid":
                case "isWorldQuest":
                case "lore":
                case "mapID":
                case "maps":
                case "missionID":
                case "model":
                case "modelRotation":
                case "modelScale":
                case "musicRollID":
                case "name":
                case "nextRecipeID":
                case "nomerge":
                case "npcID":
                case "objectID":
                case "order":
                case "ordered":
                case "parentCategoryID":
                case "petAbilityID":
                case "previousRecipeID":
                case "professionID":
                case "provider":
                case "providers":
                case "pvp":
                case "qg":
                case "qgs":
                case "r": // horde/alliance faction
                case "races":
                case "runeforgepowerID":
                case "raceID":
                case "conduitID":
                case "customCollect":
                case "setHeaderID":
                case "setSubHeaderID":
                case "setID":
                case "skipFill":
                case "sort":
                case "sourceAchievement":
                case "sourceQuest":
                case "sourceText":
                case "style":
                case "subclass":
                case "sym":
                case "talentID":
                case "title":
                case "titleID":
                case "text":
                case "visualID":
                case "zone-artIDs":
                case "zone-text-areaID":
                case "zone-text-areas":
                case "zone-text-continent":
                case "zone-text-headerID":
                case "zone-text-names":

                // metadata parser tags
                case "_area":
                case "_category":
                case "_drop":
                case "_npcs":
                case "_quests":
                case "_objects":
                case "_achievements":
                case "_encounter":
                case "_exploration":
                case "_factions":
                case "_flightpath":
                case "_maps":
                case "_species":
                case "_text":
                case "_type":

                    return field;

                // Probably not a known tag? will get mentioned in the object/item merge method
                default:
                    return field;
            }
        }

        /// <summary>
        /// Sort the supported locale keys in the list.
        /// </summary>
        /// <param name="supportedLocales">The list of supported locales.</param>
        public static void SortSupportedLocales(List<string> supportedLocales)
        {
            supportedLocales.Sort(Framework.Compare);
            if (supportedLocales.Contains("es"))
            {
                supportedLocales.Remove("es");
                supportedLocales.Insert(0, "es");
            }
            if (supportedLocales.Contains("ko"))
            {
                supportedLocales.Remove("ko");
                supportedLocales.Add("ko");
            }
            if (supportedLocales.Contains("cn"))
            {
                supportedLocales.Remove("cn");
                supportedLocales.Add("cn");
            }
            if (supportedLocales.Contains("tw"))
            {
                supportedLocales.Remove("tw");
                supportedLocales.Add("tw");
            }
            if (supportedLocales.Contains("en"))
            {
                supportedLocales.Remove("en");
                supportedLocales.Insert(0, "en");
            }
        }
        #endregion
        #region JSON Conversion
        /// <summary>
        /// Convert the JSON string to a Dictionary with string,object pairs.
        /// </summary>
        /// <param name="jsonString">The JSON string.</param>
        /// <returns>The dictionary.</returns>
        public static IDictionary<string, object> ToDictionary(string jsonString)
        {
            return ToObject(jsonString) is IDictionary<string, object> obj ? obj : null;
        }

        /// <summary>
        /// Convert the object to JSON using Mini JSON.
        /// </summary>
        /// <param name="obj">The object.</param>
        /// <returns>The JSON string.</returns>
        public static string ToJSON(object obj)
        {
            if (obj is IEnumerable<object> objs)
            {
                return "[" + string.Join(",", objs.Select(o => ToJSON(o))) + "]";
            }
            else if (obj is IExportableField export)
            {
                return MiniJSON.Json.Serialize(export.AsExportType());
            }
            return MiniJSON.Json.Serialize(obj);
        }

        /// <summary>
        /// Convert the JSON string to an object.
        /// </summary>
        /// <param name="jsonString">The JSON String.</param>
        /// <returns>The object.</returns>
        public static object ToObject(string jsonString)
        {
            return MiniJSON.Json.Deserialize(jsonString);
        }
        #endregion
        #region Lua Conversion
        static bool IsIconValid(long assetID)
        {
            // If Blizzard isn't being friendly to a game flavor (TBC!), we need to check the validity of icons before exporting them.
            if (Framework.BLIZZ_ICONS_ARE_HARD)
            {
                return AssetDB.ContainsKey(assetID);
            }
            return true;
        }
        static bool IsIconValid(string icon)
        {
            // If Blizzard isn't being friendly to a game flavor (TBC!), we need to check the validity of icons before exporting them.
            if (Framework.BLIZZ_ICONS_ARE_HARD)
            {
                if (long.TryParse(icon, out long assetID))
                {
                    return AssetDB.ContainsKey(assetID);
                }
            }
            return true;
        }
        static StringBuilder ExportIconValue(StringBuilder builder, string iconValue)
        {
            string icon = iconValue.ToLower().Replace("\\", "/");
            if (long.TryParse(icon, out long iconID) && iconID.ToString() == icon) builder.Append(icon);
            else
            {
                if (!(icon.StartsWith("_") || icon.StartsWith("~"))) Trace.WriteLine(icon);
                ExportStringValue(builder, icon);
            }
            return builder;
        }

        static StringBuilder ExportIconKeyValue(StringBuilder builder, object key, string iconValue)
        {
            if (IsIconValid(iconValue))
            {
                builder.Append("\t[").Append(key).Append("] = ");
                ExportIconValue(builder, iconValue);
                return builder.Append(",").AppendLine();
            }
            return builder;
        }


        static StringBuilder ExportObjectKeyValue(StringBuilder builder, object key, object value)
        {
            return builder.Append("\t[").Append(key).Append("] = ").Append(value).Append(",");
        }

        static StringBuilder ExportStringValue(StringBuilder builder, string value)
        {
            value = value.Replace("\n", "\\n").Replace("\r", "\\r");
            if (value.StartsWith("~"))
            {
                return builder.Append(value.Substring(1));
            }
            else if (value.StartsWith("GetSpellInfo") || value.StartsWith("GetItem") || value.StartsWith("select(") || value.StartsWith("C_")
                || value.StartsWith("_."))
            {
                return builder.Append(value);
            }
            return builder.Append("\"").Append(value.Replace("\"", "\\\"")).Append("\"");
        }

        static StringBuilder ExportStringKeyValue(StringBuilder builder, object key, string value)
        {
            builder.Append("\t[").Append(key).Append("] = ");
            return ExportStringValue(builder, value).Append(",");
        }

        static StringBuilder ExportStringKeyFieldValue(StringBuilder builder, object key, string field, string value)
        {
            builder.Append("[").Append(key).Append("]").Append(field).Append(" = ");
            return ExportStringValue(builder, value);
        }

        static StringBuilder ExportReadableConstantComment(StringBuilder builder, string readable, string constant)
        {
            if (string.IsNullOrEmpty(readable))
            {
                builder.Append("\t-- (MISSING 'readable')");
            }
            else
            {
                builder.Append("\t-- ").Append(readable);
            }
            if (!string.IsNullOrEmpty(constant))
            {
                return builder.Append(" [").Append(constant).Append("]");
            }
            return builder;
        }
        #endregion

        #region Export (Clean)
        /// <summary>
        /// Export the data to the builder in a clean, longhand format.
        /// Standardized formatting without newlines applies here.
        /// </summary>
        /// <param name="builder">The builder.</param>
        /// <param name="data">The undetermined object data.</param>
        /// <param name="indent">The string to prefix before each line. (indenting)</param>
        public static void ExportClean(StringBuilder builder, object data)
        {
            // Firstly, we need to know the type of object we're working with.
            if (data is bool b) builder.Append(b ? "1" : "false");  // NOTE: 0 in lua is evaluated as true, not false. So we can't shorten it. (rip)
            else if (data is List<object> list) ExportClean(builder, list);
            else if (data is IDictionary<string, object> dict) ExportClean(builder, dict);
            else if (data is string str) builder.Append('"').Append(str.Replace("\"", "\\\"")).Append('"');
            else if (data is Dictionary<long, object> longdict) ExportClean(builder, longdict);
            else if (data is Dictionary<long, long> longlongdict) ExportClean(builder, longlongdict);
            else if (data is Dictionary<string, List<object>> listdict) ExportClean(builder, listdict);
            else if (data is List<List<object>> listOLists) ExportClean(builder, listOLists);
            else
            {
                // Default: Write it as a String. Best of luck.
                builder.Append(ATT.Export.ToString(data));
            }
        }

        /// <summary>
        /// Export the contents of the dictionary to the builder in a clean, longhand format.
        /// Every field will be written. Standardized formatting without newlines applies here.
        /// </summary>
        /// <typeparam name="KEY">The key value type of the dictionary.</typeparam>
        /// <typeparam name="VALUE">The value type of the dictionary.</typeparam>
        /// <param name="builder">The builder.</param>
        /// <param name="data">The data dictionary.</param>
        public static void ExportClean<KEY, VALUE>(StringBuilder builder, Dictionary<KEY, VALUE> data)
        {
            // If the dictionary doesn't have any content, then return immediately.
            if (data.Count == 0)
            {
                builder.Append("{}");
                return;
            }

            // Open Bracket for beginning of the Dictionary.
            builder.Append('{');

            // Clone this and calculate most significant.
            bool hasG = false;
            VALUE g = default;    // Look for the G Field.
            var data2 = new Dictionary<object, object>();
            var keys = data.Keys.ToList();
            for (int i = 0, count = keys.Count; i < count; ++i)
            {
                if (keys[i].ToString() == "g")
                {
                    g = data[keys[i]];
                    keys.RemoveAt(i);
                    hasG = true;
                    break;
                }
            }
            keys.Sort(Framework.Compare);
            foreach (var key in keys) data2[key] = data[key];

            // Export Fields
            int fieldCount = 0;
            foreach (var pair in data2)
            {
                // If this is NOT the first field, append a comma.
                if (fieldCount++ > 0) builder.Append(',');

                // Append the Field and its Value
                builder.Append(pair.Key).Append('=');
                ExportClean(builder, pair.Value);
            }

            // We wanted to move this to the bottom of the hierarchy.
            if (hasG)
            {
                // If this is NOT the first field, append a comma.
                if (fieldCount++ > 0) builder.Append(',');

                // Append the Field and its Value
                builder.Append("g=");
                ExportClean(builder, g);
            }

            // Close Bracket for the end of the Dictionary.
            builder.Append('}');
        }

        /// <summary>
        /// Export the contents of the list to the builder in a clean, longhand format.
        /// Every element will be written. Standardized formatting without newlines applies here.
        /// </summary>
        /// <param name="builder">The builder.</param>
        /// <param name="list">The list of data.</param>
        public static void ExportClean<VALUE>(StringBuilder builder, List<VALUE> list)
        {
            // If the list doesn't have any content, then return immediately.
            var count = list.Count;
            if (count == 0)
            {
                builder.Append("{}");
                return;
            }

            // Open Bracket for beginning of the List.
            builder.Append('{');

            // Export Fields
            for (int i = 0; i < count; ++i)
            {
                // If this is NOT the first field, append a comma.
                if (i > 0) builder.Append(',');

                // Append the undetermined object's format to the builder.
                ExportClean(builder, list[i]);
            }

            // Close Bracket for the end of the List.
            builder.Append('}');
        }

        /// <summary>
        /// Export the data to the builder in a clean, longhand format.
        /// Standardized formatting without newlines applies here.
        /// </summary>
        /// <param name="data">The undetermined object data.</param>
        /// <returns>A built string containing the information.</returns>
        public static StringBuilder ExportClean(object data)
        {
            var builder = new StringBuilder();
            ExportClean(builder, data);
            return builder;
        }

        /// <summary>
        /// Export the contents of the dictionary to the builder in a clean, longhand format.
        /// Every field will be written. Standardized formatting without newlines applies here.
        /// </summary>
        /// <typeparam name="KEY">The key value type of the dictionary.</typeparam>
        /// <typeparam name="VALUE">The value type of the dictionary.</typeparam>
        /// <param name="data">The data dictionary.</param>
        /// <returns>A built string containing the information.</returns>
        public static StringBuilder ExportClean<KEY, VALUE>(Dictionary<KEY, VALUE> data)
        {
            var builder = new StringBuilder();
            ExportClean(builder, data);
            return builder;
        }

        /// <summary>
        /// Export the contents of the list to the builder in a clean, longhand format.
        /// Every element will be written. Standardized formatting without newlines applies here.
        /// </summary>
        /// <param name="list">The list of data.</param>
        /// <returns>A built string containing the information.</returns>
        public static StringBuilder ExportClean<T>(List<T> list)
        {
            var builder = new StringBuilder();
            ExportClean(builder, list);
            return builder;
        }
        #endregion

        private static string GetBaseDBRootFolder()
        {
#if TLT
            return "TLT/";
#elif MID
            return "MID/";
#elif TWW
            return "TWW/";
#elif DF
            return "DF/";
#elif SL
            return "SL/";
#elif BFA
            return "BFA/";
#elif LEGION
            return "Legion/";
#elif WOD
            return "WOD/";
#elif MOP
            return "MOP/";
#elif CATA
            return "Cata/";
#elif WRATH
            return "Wrath/";
#elif TBC
            return "TBC/";
#else
            return "Classic/";
#endif
        }

        private static void CleanLocalizedField<T>(T key, string field, IDictionary<string, object> data, Dictionary<string, Dictionary<T, string>> localizationData)
        {
            if (data.TryGetValue(field, out var value))
            {
                if (!(value is IDictionary<string, object> localeData))
                {
                    localeData = new Dictionary<string, object>
                    {
                        ["en"] = value
                    };
                }
                TryColorizeDictionary(localeData);
                if (localeData.TryGetValue("en", out string englishValue))
                {
                    if (!localizationData.TryGetValue("en", out Dictionary<T, string> sublocale))
                    {
                        localizationData["en"] = sublocale = new Dictionary<T, string>();
                    }
                    sublocale[key] = englishValue;

                    // Clean up inherited values. (mx inherits from es and tw inherits from cn
                    if (localeData.TryGetValue("mx", out string mxValue) && localeData.TryGetValue("es", out string esValue) && mxValue == esValue)
                    {
                        localeData.Remove("mx");
                    }
                    if (localeData.TryGetValue("tw", out string twValue) && localeData.TryGetValue("cn", out string cnValue) && twValue == cnValue)
                    {
                        localeData.Remove("tw");
                    }
                    foreach (var locale in localeData)
                    {
                        if (locale.Key == "en") continue;

                        string localizedValue = locale.Value.ToString();
                        if (!localizedValue.Contains(englishValue))
                        {
                            if (!localizationData.TryGetValue(locale.Key, out sublocale))
                            {
                                localizationData[locale.Key] = sublocale = new Dictionary<T, string>();
                            }
                            sublocale[key] = localizedValue;
                        }
                    }
                }
            }
        }

        /// <summary>
        /// Export the database.
        /// This also exports for debugging as well.
        /// </summary>
        public static void Export()
        {
            // Default is relative to where the executable is. (.contrib/Parser)
            string addonRootFolder = Config["root-addon"] ?? "../..";
            string dbRootFolder = Config["db-relative"] ?? GetBaseDBRootFolder();

            // Setup the output folder (/db)
            var outputFolder = Directory.CreateDirectory($"{addonRootFolder}/db/{dbRootFolder}");
            if (outputFolder.Exists)
            {

                // DEBUGGING: Output Parsed Data
                if (DebugMode)
                {
                    CurrentParseStage = ParseStage.ExportDebugData;

                    ATT.Export.DebugMode = true;
                    var debugFolder = Directory.CreateDirectory($"{addonRootFolder}/.contrib/Debugging");
                    if (debugFolder.Exists)
                    {
                        // Export various debug information to the Debugging folder.
                        Items.ExportDebug(debugFolder.FullName);
                        Objects.ExportDebug(debugFolder.FullName);
                        Objects.ExportDB(debugFolder.FullName);

                        // Export custom Debug DB data to the Debugging folder. (as JSON for simplicity)
                        var culture = Thread.CurrentThread.CurrentCulture;
                        Thread.CurrentThread.CurrentCulture = CultureInfo.InvariantCulture;
                        foreach (KeyValuePair<string, ConcurrentDictionary<decimal, IDictionary<string, object>>> dbKeyDatas in DebugDBs)
                        {
                            File.WriteAllText(Path.Combine(debugFolder.FullName, dbKeyDatas.Key + "_DebugDB.json"),
                                ToJSON(new SortedDictionary<decimal, IDictionary<string, object>>(dbKeyDatas.Value)), Encoding.UTF8);
                        }
                        Thread.CurrentThread.CurrentCulture = culture;

                        // Export the Category DB file.
                        if (CategoryDB.Any())
                        {
                            var builder = new StringBuilder("---------------------------------------------------------\n--   C A T E G O R Y   D A T A B A S E   M O D U L E   --\n---------------------------------------------------------\n");
                            var keys = CategoryDB.Keys.ToList();
                            keys.Sort();
                            builder.Append("local CategoryDB = CategoryDB; for categoryID,categoryData in pairs({").AppendLine();
                            foreach (var key in keys)
                            {
                                Dictionary<string, object> categoryData = CategoryDB[key];
                                builder.Append("\t[").Append(key).AppendLine("] = {");

                                // Attempt to get the text locale data object.
                                categoryData.TryGetValue("text", out object textLocaleObject);
                                Dictionary<string, object> textLocales = textLocaleObject as Dictionary<string, object>;

                                // Export the "readable" field. (database only, not exported to game)
                                if (categoryData.TryGetValue("readable", out string treadable))
                                {
                                    builder.Append("\t\treadable = ");
                                    ExportStringValue(builder, treadable).AppendLine(",");
                                }
                                else if (textLocales != null && textLocales.TryGetValue("en", out string name))
                                {
                                    builder.Append("\t\treadable = ");
                                    ExportStringValue(builder, name).AppendLine(",");
                                }

                                // Export the "icon" field.
                                if (categoryData.TryGetValue("icon", out string icon) && IsIconValid(icon))
                                {
                                    builder.Append("\t\ticon = ");
                                    ExportIconValue(builder, icon).AppendLine(",");
                                }

                                // Export the complex "text" locales field.
                                if (textLocales != null)
                                {
                                    // Sort and then ensure es comes after en, to match previous convention.
                                    var supportedLocales = textLocales.Keys.ToList();
                                    SortSupportedLocales(supportedLocales);

                                    builder.AppendLine("\t\ttext = {");
                                    foreach (var localeKey in supportedLocales)
                                    {
                                        builder.Append("\t\t\t").Append(localeKey).Append(" = ");
                                        ExportStringValue(builder, textLocales[localeKey].ToString()).AppendLine(",");
                                    }
                                    builder.AppendLine("\t\t},");
                                }
                                builder.AppendLine("\t},");
                            }
                            builder.AppendLine("})").AppendLine("do CategoryDB[categoryID] = categoryData; end");
                            File.WriteAllText(Path.Combine(debugFolder.FullName, "CategoryDB.lua"), builder.ToString(), Encoding.UTF8);
                        }

                        // Export the Custom Headers file.
                        if (CustomHeaders != null && CustomHeaders.Any())
                        {
                            // Now export it based on what we know.
                            var builder = new StringBuilder("-------------------------------------------------------\n--   C U S T O M   H E A D E R S   M O D U L E   --\n-------------------------------------------------------\n")
                                .AppendLine("local headers = CustomHeaders or {};");
                            var subbuilder = new StringBuilder();
                            var icons = new Dictionary<long, string>();
                            var constants = new Dictionary<long, string>();
                            var localizationForText = new Dictionary<string, Dictionary<long, string>>();
                            var localizationForLore = new Dictionary<string, Dictionary<long, string>>();
                            var localizationForDescriptions = new Dictionary<string, Dictionary<long, string>>();
                            foreach (var key in CustomHeaders.Keys)
                            {
                                if (CustomHeaders.TryGetValue(key, out object o) && o is IDictionary<string, object> header)
                                {
                                    subbuilder.Clear();
                                    string readable = null, filepath = null, icon = null, constant = null;
                                    if (header.TryGetValue("readable", out object value))
                                    {
                                        readable = value.ToString();
                                    }
                                    else
                                    {
                                        subbuilder.Append("headers[").Append(key).Append("].readable = \"\";\t-- MISSING 'readable'! This is required!").AppendLine();
                                    }
                                    if (header.TryGetValue("constant", out value))
                                    {
                                        constant = value.ToString();
                                    }
                                    if (header.TryGetValue("filepath", out value))
                                    {
                                        filepath = value.ToString();

                                    }
                                    if (header.TryGetValue("icon", out value) && IsIconValid(value.ToString()))
                                    {
                                        icon = value.ToString().Replace("\\", "/");
                                    }
                                    else
                                    {
                                        subbuilder.Append("headers[").Append(key).Append("].icon = 134400;");
                                        ExportReadableConstantComment(subbuilder, readable, constant).AppendLine();
                                    }
                                    if (header.TryGetValue("text", out value))
                                    {
                                        if (!(value is IDictionary<string, object> localeData))
                                        {
                                            localeData = new Dictionary<string, object>
                                            {
                                                ["en"] = value
                                            };
                                        }
                                        if (!localeData.TryGetValue("en", out string enString))
                                        {
                                            enString = readable;
                                            subbuilder.Append("headers");
                                            ExportStringKeyFieldValue(subbuilder, key, ".text.en", enString);
                                            subbuilder.Append(";");
                                            ExportReadableConstantComment(subbuilder, readable, constant).AppendLine(" - You MUST supply an 'en' localization!");
                                            localeData["en"] = enString;    // This will prevent it from getting written twice
                                        }
                                        if (!enString.Contains("~"))
                                        {
                                            foreach (var locale in SUPPORTED_LOCALES)
                                            {
                                                if (!localeData.TryGetValue(locale, out value))
                                                {
                                                    subbuilder.Append("headers");
                                                    ExportStringKeyFieldValue(subbuilder, key, $".text.{locale}", enString);
                                                    subbuilder.Append(";");
                                                    ExportReadableConstantComment(subbuilder, readable, constant).AppendLine();
                                                }
                                            }
                                        }
                                    }
                                    if (header.TryGetValue("description", out value))
                                    {
                                        if (!(value is IDictionary<string, object> localeData))
                                        {
                                            localeData = new Dictionary<string, object>
                                            {
                                                ["en"] = value
                                            };
                                        }
                                        if (!localeData.TryGetValue("en", out string enString))
                                        {
                                            enString = readable;
                                            subbuilder.Append("headers");
                                            ExportStringKeyFieldValue(subbuilder, key, ".description.en", enString);
                                            subbuilder.Append(";");
                                            ExportReadableConstantComment(subbuilder, readable, constant).AppendLine(" - You MUST supply an 'en' localization!");
                                            localeData["en"] = enString;    // This will prevent it from getting written twice
                                        }
                                        if (!enString.Contains("~"))
                                        {
                                            foreach (var locale in SUPPORTED_LOCALES)
                                            {
                                                if (!localeData.TryGetValue(locale, out value))
                                                {
                                                    subbuilder.Append("headers");
                                                    ExportStringKeyFieldValue(subbuilder, key, $".description.{locale}", enString);
                                                    subbuilder.Append(";");
                                                    ExportReadableConstantComment(subbuilder, readable, constant).AppendLine();
                                                }
                                            }
                                        }
                                    }
                                    if (header.TryGetValue("lore", out value))
                                    {
                                        if (!(value is IDictionary<string, object> localeData))
                                        {
                                            localeData = new Dictionary<string, object>
                                            {
                                                ["en"] = value
                                            };
                                        }
                                        if (!localeData.TryGetValue("en", out string enString))
                                        {
                                            enString = readable;
                                            subbuilder.Append("headers");
                                            ExportStringKeyFieldValue(subbuilder, key, ".lore.en", enString);
                                            subbuilder.Append(";");
                                            ExportReadableConstantComment(subbuilder, readable, constant).AppendLine(" - You MUST supply an 'en' localization!");
                                            localeData["en"] = enString;    // This will prevent it from getting written twice
                                        }
                                        if (!enString.Contains("~"))
                                        {
                                            foreach (var locale in SUPPORTED_LOCALES)
                                            {
                                                if (!localeData.TryGetValue(locale, out value))
                                                {
                                                    subbuilder.Append("headers");
                                                    ExportStringKeyFieldValue(subbuilder, key, $".lore.{locale}", enString);
                                                    subbuilder.Append(";");
                                                    ExportReadableConstantComment(subbuilder, readable, constant).AppendLine();
                                                }
                                            }
                                        }
                                    }

                                    if (subbuilder.Length > 0)
                                    {
                                        builder.Append("-- ").AppendLine(Path.GetFullPath(filepath));
                                        builder.Append(subbuilder.ToString());
                                    }
                                }
                            }

                            WriteIfDifferent(Path.Combine(debugFolder.FullName, "Custom Headers.lua"), builder.ToString());
                        }

                        // Export the FilterDB file.
                        if (FilterDB.Any())
                        {
                            // Export the new format.
                            var builder = new StringBuilder("-----------------------------------------------------\n--   F I L T E R   D A T A B A S E   M O D U L E   --\n-----------------------------------------------------\n");
                            var keys = FilterDB.Keys.ToList();
                            keys.Sort();
                            builder.Append("local FilterDB = FilterDB; for key,value in pairs({").AppendLine();
                            foreach (var key in keys)
                            {
                                Dictionary<string, object> filterData = FilterDB[key];
                                builder.Append("\t[").Append(key).AppendLine("] = {");

                                // Attempt to get the text locale data object.
                                filterData.TryGetValue("text", out object textLocaleObject);
                                Dictionary<string, object> textLocales = textLocaleObject as Dictionary<string, object>;

                                // Export the "readable" field. (database only, not exported to game)
                                if (filterData.TryGetValue("readable", out string treadable))
                                {
                                    builder.Append("\t\treadable = ");
                                    ExportStringValue(builder, treadable).AppendLine(",");
                                }
                                else if (textLocales != null && textLocales.TryGetValue("en", out string name))
                                {
                                    builder.Append("\t\treadable = ");
                                    ExportStringValue(builder, name).AppendLine(",");
                                }

                                // Export the "icon" field.
                                if (filterData.TryGetValue("icon", out string icon) && IsIconValid(icon))
                                {
                                    builder.Append("\t\ticon = ");
                                    ExportIconValue(builder, icon).AppendLine(",");
                                }

                                // Export the complex "text" locales field.
                                if (textLocales != null)
                                {
                                    // Sort and then ensure es comes after en, to match previous convention.
                                    var supportedLocales = textLocales.Keys.ToList();
                                    SortSupportedLocales(supportedLocales);

                                    builder.AppendLine("\t\ttext = {");
                                    foreach (var localeKey in supportedLocales)
                                    {
                                        builder.Append("\t\t\t").Append(localeKey).Append(" = ");
                                        ExportStringValue(builder, textLocales[localeKey].ToString()).AppendLine(",");
                                    }
                                    builder.AppendLine("\t\t},");
                                }
                                builder.AppendLine("\t},");
                            }
                            builder.AppendLine("})").AppendLine("do FilterDB[key] = value; end");
                            File.WriteAllText(Path.Combine(debugFolder.FullName, "FilterDB.lua"), builder.ToString(), Encoding.UTF8);
                        }

                        // Export the Flight Paths DB file.
                        if (FlightPathDB.Any())
                        {
                            // Export the new format.
                            var builder = new StringBuilder("-----------------------------------------------------\n--   F L I G H T   P A T H S   D A T A B A S E   M O D U L E   --\n-----------------------------------------------------\n");
                            var keys = FlightPathDB.Keys.ToList();
                            keys.Sort();
                            builder.Append("local FlightPathDB = FlightPathDB; for key,value in pairs({").AppendLine();
                            foreach (var key in keys)
                            {
                                Dictionary<string, object> flightPathData = FlightPathDB[key];
                                builder.Append("\t[").Append(key).AppendLine("] = {");

                                // Attempt to get the text locale data object.
                                flightPathData.TryGetValue("text", out object textLocaleObject);

                                // Export the complex "text" locales field.
                                if (textLocaleObject is Dictionary<string, object> textLocales)
                                {
                                    // Sort and then ensure es comes after en, to match previous convention.
                                    var supportedLocales = textLocales.Keys.ToList();
                                    SortSupportedLocales(supportedLocales);

                                    builder.AppendLine("\t\ttext = {");
                                    foreach (var localeKey in supportedLocales)
                                    {
                                        builder.Append("\t\t\t").Append(localeKey).Append(" = ");
                                        ExportStringValue(builder, textLocales[localeKey].ToString()).AppendLine(",");
                                    }
                                    builder.AppendLine("\t\t},");
                                }
                                builder.AppendLine("\t},");
                            }
                            builder.AppendLine("})").AppendLine("do FlightPathDB[key] = value; end");
                            File.WriteAllText(Path.Combine(debugFolder.FullName, "FlightPathDB.lua"), builder.ToString(), Encoding.UTF8);
                        }

                        // Export the Object DB file.
                        if (ObjectDB.Any())
                        {
                            // Export the new format.
                            var dbbuilder = new StringBuilder("-----------------------------------------------------\n--   O B J E C T   D A T A B A S E   M O D U L E   --\n-----------------------------------------------------\n");
                            var keys = ObjectDB.Keys.ToList();
                            keys.Sort();
                            dbbuilder.Append("local ObjectDB = ObjectDB; for objectID,objectData in pairs({").AppendLine();
                            var dynamicbuilder = new StringBuilder(dbbuilder.ToString());
                            foreach (var key in keys)
                            {
                                // We export dynamic object data to a different file.
                                Dictionary<string, object> objectData = ObjectDB[key];
                                var builder = objectData.TryGetValue("dynamic", out bool isDynamic) && isDynamic ? dynamicbuilder : dbbuilder;
                                builder.Append("\t[").Append(key).AppendLine("] = {");

                                // Attempt to get the text locale data object.
                                objectData.TryGetValue("text", out object textLocaleObject);
                                Dictionary<string, object> textLocales = textLocaleObject as Dictionary<string, object>;

                                // Export the "readable" field. (database only, not exported to game)
                                if (objectData.TryGetValue("readable", out string treadable))
                                {
                                    builder.Append("\t\treadable = ");
                                    ExportStringValue(builder, treadable).AppendLine(",");
                                }
                                else if (textLocales != null && textLocales.TryGetValue("en", out string name))
                                {
                                    builder.Append("\t\treadable = ");
                                    ExportStringValue(builder, name).AppendLine(",");
                                }

                                // Export the "icon" field.
                                if (objectData.TryGetValue("icon", out string icon) && IsIconValid(icon))
                                {
                                    builder.Append("\t\ticon = ");
                                    ExportIconValue(builder, icon).AppendLine(",");
                                }

                                // Export the "model" field.
                                if (objectData.TryGetValue("model", out long model))
                                {
                                    builder.Append("\t\tmodel = ").Append(model).AppendLine(",");
                                }

                                // Export the complex "text" locales field.
                                if (textLocales != null)
                                {
                                    // Sort and then ensure es comes after en, to match previous convention.
                                    var supportedLocales = textLocales.Keys.ToList();
                                    SortSupportedLocales(supportedLocales);

                                    builder.AppendLine("\t\ttext = {");

                                    // Mark sure we don't have any placeholder english values.
                                    if (textLocales.TryGetValue("en", out string enValue))
                                    {
                                        supportedLocales.Remove("en");
                                        builder.Append("\t\t\ten = ");
                                        ExportStringValue(builder, enValue).AppendLine(",");

                                        // Also don't write identical es/mx or cn/tw values.
                                        if (textLocales.TryGetValue("es", out string esValue) && textLocales.TryGetValue("mx", out string mxValue) && esValue == mxValue)
                                        {
                                            supportedLocales.Remove("tw");
                                        }
                                        if (textLocales.TryGetValue("cn", out string cnValue) && textLocales.TryGetValue("tw", out string twValue) && cnValue == twValue)
                                        {
                                            supportedLocales.Remove("tw");
                                        }

                                        foreach (var localeKey in supportedLocales)
                                        {
                                            var localizedValue = textLocales[localeKey].ToString();
                                            if (enValue == localizedValue || (localizedValue[0] == '[' && enValue == localizedValue.Substring(1, localizedValue.Length - 2))) continue;
                                            builder.Append("\t\t\t").Append(localeKey).Append(" = ");
                                            ExportStringValue(builder, localizedValue).AppendLine(",");
                                        }
                                    }
                                    else
                                    {
                                        Trace.WriteLine(MiniJSON.Json.Serialize(objectData));
                                        Trace.WriteLine("Uhhh, you missing an english locale here");
                                        Framework.WaitForUser();
                                        foreach (var localeKey in supportedLocales)
                                        {
                                            builder.Append("\t\t\t").Append(localeKey).Append(" = ");
                                            ExportStringValue(builder, textLocales[localeKey].ToString()).AppendLine(",");
                                        }
                                    }
                                    builder.AppendLine("\t\t},");
                                }
                                builder.AppendLine("\t},");
                            }
                            dbbuilder.AppendLine("})").AppendLine("do ObjectDB[objectID] = objectData; end");
                            dynamicbuilder.AppendLine("})").AppendLine("do ObjectDB[objectID] = objectData; end");
                            File.WriteAllText(Path.Combine(debugFolder.FullName, "ObjectDB.lua"), dbbuilder.ToString(), Encoding.UTF8);
                            File.WriteAllText(Path.Combine(debugFolder.FullName, "ObjectDB (Dynamic).lua"), dynamicbuilder.ToString(), Encoding.UTF8);
                        }

                        // Export the Phases file.
                        if (Phases != null && Phases.Any())
                        {
                            var builder = new StringBuilder("-----------------------------------------------------\n--   P H A S E   D A T A B A S E   M O D U L E   --\n-----------------------------------------------------\n");
                            var keys = Phases.Keys.ToList();
                            keys.Sort();
                            builder.Append("local Phases = Phases; for phaseID,phaseData in pairs({").AppendLine();
                            foreach (var key in keys)
                            {
                                if (Phases.TryGetValue(key, out object o) && o is IDictionary<string, object> phaseData)
                                {
                                    builder.Append("\t[").Append(key).AppendLine("] = {");

                                    // Attempt to get the text locale data object.
                                    phaseData.TryGetValue("text", out object textLocaleObject);
                                    Dictionary<string, object> textLocales = textLocaleObject as Dictionary<string, object>;

                                    // Export the "readable" field. (database only, not exported to game)
                                    if (phaseData.TryGetValue("readable", out string treadable))
                                    {
                                        builder.Append("\t\treadable = ");
                                        ExportStringValue(builder, treadable).AppendLine(",");
                                    }
                                    else if (textLocales != null && textLocales.TryGetValue("en", out string name))
                                    {
                                        builder.Append("\t\treadable = ");
                                        ExportStringValue(builder, name).AppendLine(",");
                                    }
                                    if (phaseData.TryGetValue("minimumBuildVersion", out var minimumBuildVersion))
                                    {
                                        builder.Append("\t\tminimumBuildVersion = ").Append(minimumBuildVersion).AppendLine(",");
                                    }
                                    if (phaseData.TryGetValue("buildVersion", out var buildVersion))
                                    {
                                        builder.Append("\t\tbuildVersion = ").Append(buildVersion).AppendLine(",");
                                    }
                                    if (key >= 11) builder.Append("\t\tphaseID = ").Append(key).AppendLine(",");
                                    if (phaseData.TryGetValue("release", out var release))
                                    {
                                        builder.Append("\t\trelease = ").Append(release).AppendLine(",");
                                    }

                                    // Export the "icon" field.
                                    if (phaseData.TryGetValue("icon", out string icon) && IsIconValid(icon))
                                    {
                                        builder.Append("\t\ticon = ");
                                        ExportIconValue(builder, icon).AppendLine(",");
                                    }

                                    // Export the "model" field.
                                    if (phaseData.TryGetValue("model", out long model))
                                    {
                                        builder.Append("\t\tmodel = ").Append(model).AppendLine(",");
                                    }

                                    // Export the complex "text" locales field.
                                    if (textLocales != null)
                                    {
                                        // Sort and then ensure es comes after en, to match previous convention.
                                        var supportedLocales = textLocales.Keys.ToList();
                                        SortSupportedLocales(supportedLocales);

                                        builder.AppendLine("\t\ttext = {");
                                        foreach (var localeKey in supportedLocales)
                                        {
                                            builder.Append("\t\t\t").Append(localeKey).Append(" = ");
                                            ExportStringValue(builder, textLocales[localeKey].ToString()).AppendLine(",");
                                        }
                                        builder.AppendLine("\t\t},");
                                    }

                                    // Export the complex "description" locales field.
                                    if (phaseData.TryGetValue("description", out object descriptionLocaleObject)
                                        && descriptionLocaleObject is Dictionary<string, object> descriptionLocales)
                                    {
                                        // Sort and then ensure es comes after en, to match previous convention.
                                        var supportedLocales = descriptionLocales.Keys.ToList();
                                        SortSupportedLocales(supportedLocales);

                                        builder.AppendLine("\t\tdescription = {");
                                        foreach (var localeKey in supportedLocales)
                                        {
                                            builder.Append("\t\t\t").Append(localeKey).Append(" = ");
                                            ExportStringValue(builder, descriptionLocales[localeKey].ToString()).AppendLine(",");
                                        }
                                        builder.AppendLine("\t\t},");
                                    }

                                    // Export the complex "lore" locales field.
                                    if (phaseData.TryGetValue("lore", out object loreLocaleObject)
                                        && loreLocaleObject is Dictionary<string, object> loreLocales)
                                    {
                                        // Sort and then ensure es comes after en, to match previous convention.
                                        var supportedLocales = loreLocales.Keys.ToList();
                                        SortSupportedLocales(supportedLocales);

                                        builder.AppendLine("\t\tlore = {");
                                        foreach (var localeKey in supportedLocales)
                                        {
                                            builder.Append("\t\t\t").Append(localeKey).Append(" = ");
                                            ExportStringValue(builder, loreLocales[localeKey].ToString()).AppendLine(",");
                                        }
                                        builder.AppendLine("\t\t},");
                                    }
                                    builder.AppendLine("\t},");
                                }
                            }
                            builder.AppendLine("})").AppendLine("do Phases[phaseID] = phaseData; end");
                            File.WriteAllText(Path.Combine(debugFolder.FullName, "Phases.lua"), builder.ToString(), Encoding.UTF8);
                        }

                        // Export the Mount DB file.
                        var mounts = Items.AllIDs;
                        if (mounts.Any())
                        {
                            var builder = new StringBuilder("-----------------------------------------------------\n--   M O U N T   D A T A B A S E   M O D U L E   --\n-----------------------------------------------------\n");
                            var keys = mounts.ToList();
                            keys.Sort();
                            foreach (var itemID in keys)
                            {
                                var item = Items.GetNull(itemID);
                                if (item != null)
                                {
                                    if (item.TryGetValue("mountID", out long spellID))
                                    {
                                        builder.Append("i(").Append(itemID).Append(", ").Append(spellID).Append(");");
                                        if (item != null && item.TryGetValue("name", out string name)) builder.Append("\t-- ").Append(name);
                                        builder.AppendLine();
                                    }
                                    else if (item.TryGetValue("f", out long f) && f == 100)
                                    {
                                        builder.Append("i(").Append(itemID);
                                        if (item.TryGetValue("spellID", out spellID)) builder.Append(", ").Append(spellID);
                                        builder.Append(");");
                                        if (item != null && item.TryGetValue("name", out string name)) builder.Append("\t-- ").Append(name);
                                        builder.AppendLine();
                                    }
                                }
                            }
                            File.WriteAllText(Path.Combine(debugFolder.FullName, "RawMountDB.lua"), builder.ToString(), Encoding.UTF8);
                        }
                    }
                }

                // Prepare a Localization Database file.
                StringBuilder localizationDatabase = new StringBuilder().AppendLine("---@diagnostic disable: deprecated");
                if (!string.IsNullOrEmpty(DATA_REQUIREMENTS)) localizationDatabase.Append("if not (").Append(DATA_REQUIREMENTS).AppendLine(") then return; end");
                localizationDatabase
                    .AppendLine("-----------------------------------------------------------------")
                    .AppendLine("--   L O C A L I Z A T I O N   D A T A B A S E   M O D U L E   --")
                    .AppendLine("-----------------------------------------------------------------")
                    .AppendLine("local localize = function(t, data) for k,v in pairs(data) do t[k] = v; end end")
                    .AppendLine("local appName, _, a = ...;")
                    .AppendLine("local L = _.L;").AppendLine();
                Dictionary<string, StringBuilder> localizationByLocale = new Dictionary<string, StringBuilder>();
                foreach (var language in new List<string>
                {
                    // 10 non-english locales, 11 supported in all. (English is written right away and acts as the default)
                    "es", "mx", "de", "fr", "it",
                    "pt", "ru", "ko", "cn", "tw"
                })
                {
                    // Generate a string builder for each language. (an empty builder at the end will not be exported)
                    localizationByLocale[language] = new StringBuilder();
                }

                // Export the Localization Strings file.
                if (LocalizationStrings != null && LocalizationStrings.Any())
                {
                    CurrentParseStage = ParseStage.ExportLocalizationStrings;

                    // Now export it based on what we know.
                    var builder = new StringBuilder("-- Localization Strings").AppendLine();
                    var constants = new Dictionary<string, bool>();
                    var localizationForText = new Dictionary<string, Dictionary<string, string>>();
                    foreach (var localizationPair in LocalizationStrings)
                    {
                        var key = localizationPair.Key;
                        if (localizationPair.Value is IDictionary<string, object> localization && localization.TryGetValue("export", out bool export) && export)
                        {
                            constants[key] = true;
                            CleanLocalizedField(key, "text", localization, localizationForText);
                        }
                    }

                    // Sort the header constants!
                    var headerKeys = constants.Keys.ToList();
                    headerKeys.Sort(Framework.Compare);

                    // Get all of the english translations and always write them to the file.
                    if (localizationForText.TryGetValue("en", out var data))
                    {
                        localizationForText.Remove("en");
                        foreach (var key in headerKeys)
                        {
                            if (data.TryGetValue(key, out string name))
                            {
                                builder.Append("L.").Append(key).Append(" = ");
                                ExportStringValue(builder, name).AppendLine(";");
                            }
                        }
                    }

                    // Now grab the non-english localizations and conditionally write them to the file.
                    foreach (var localePair in localizationForText)
                    {
                        data = localePair.Value;
                        if (data.Any())
                        {
                            var localeBuilder = localizationByLocale[localePair.Key];
                            foreach (var key in headerKeys)
                            {
                                if (data.TryGetValue(key, out string name))
                                {
                                    localeBuilder.Append("L.").Append(key).Append(" = ");
                                    ExportStringValue(localeBuilder, name).AppendLine(";");
                                }
                            }
                        }
                    }

                    // Append the file content to our localization database.
                    localizationDatabase.AppendLine(builder.ToString());
                }

                // Export the Category DB file.
                if (CATEGORIES_WITH_REFERENCES.Any())
                {
                    CurrentParseStage = ParseStage.ExportCategoryDB;
                    var builder = new StringBuilder("-- Category Database Module").AppendLine();
                    var icons = new Dictionary<long, string>();
                    var localizationForText = new Dictionary<string, Dictionary<long, string>>();

                    // Include Only Referenced Objects!
                    var keys = CATEGORIES_WITH_REFERENCES.Keys.ToList();
                    keys.Sort();
                    foreach (var key in keys)
                    {
                        // Check to see if CategoryDB has any information on our category.
                        if (!CategoryDB.TryGetValue(key, out Dictionary<string, object> categoryData))
                        {
                            Console.Write("Missing Category information for ");
                            Console.WriteLine(key);
                            continue;
                        }

                        if (categoryData.TryGetValue("icon", out object value))
                        {
                            icons[key] = value.ToString().Replace("\\", "/");
                        }
                        CleanLocalizedField(key, "text", categoryData, localizationForText);
                    }

                    // Get all of the english translations and always write them to the file.
                    if (localizationForText.TryGetValue("en", out var data))
                    {
                        localizationForText.Remove("en");
                        builder.AppendLine("_.CategoryNames = {");
                        foreach (var key in keys)
                        {
                            if (data.TryGetValue(key, out string name))
                            {
                                ExportStringKeyValue(builder, key, name).AppendLine();
                            }
                        }
                        builder.AppendLine("}");
                    }

                    // Now grab the non-english localizations and conditionally write them to the file.
                    foreach (var localePair in localizationForText)
                    {
                        if (localePair.Value.Any())
                        {
                            var localeBuilder = localizationByLocale[localePair.Key];
                            localeBuilder.AppendLine("localize(_.CategoryNames, {");
                            foreach (var key in keys)
                            {
                                if (localePair.Value.TryGetValue(key, out string name))
                                {
                                    ExportStringKeyValue(localeBuilder, key, name).AppendLine();
                                }
                            }
                            localeBuilder.AppendLine("});");
                        }
                    }

                    // Now write the icons last.
                    builder.AppendLine("_.CategoryIcons = {");
                    foreach (var key in keys)
                    {
                        if (icons.TryGetValue(key, out string icon))
                        {
                            ExportIconKeyValue(builder, key, icon);
                        }
                    }
                    builder.AppendLine("}");

                    // Append the file content to our localization database.
                    localizationDatabase.AppendLine(builder.ToString());
                }

                // Export the Custom Headers file.
                if (CustomHeaders != null && CustomHeaders.Any())
                {
                    CurrentParseStage = ParseStage.ExportCustomHeaders;

                    // Export the assigned keys for headers
                    if (CustomHeaderIDsByKey != null && CustomHeaderIDsByKey.Any())
                    {
                        long minHeaderID = -1;
                        foreach (var headerPair in CustomHeaderIDsByKey)
                        {
                            if (headerPair.Value < minHeaderID)
                            {
                                minHeaderID = headerPair.Value;
                            }
                        }
                        var headerIDsByKey = ExportRawLua(CustomHeaderIDsByKey);
                        var dynamicHeaderIDsFileName = $"{addonRootFolder}/.contrib/Parser/lib/Functions/Dynamic Header IDs.lua";
                        headerIDsByKey
                            .Insert(0, $"-- This file is dynamically generated by Parser! DO NOT MODIFY IT MANUALLY!{Environment.NewLine}HeaderAssignments = ").AppendLine(";")
                            .Append("NextHeaderID = ").Append(minHeaderID - 1).Append(";");
                        WriteIfDifferent(dynamicHeaderIDsFileName, headerIDsByKey.ToString());
                    }

                    // Now export it based on what we know.
                    var builder = new StringBuilder("-- Custom Header Database Module").AppendLine();
                    var keys = new List<long>();
                    var eventIDs = new Dictionary<long, long>();
                    var eventRemaps = new Dictionary<long, long>();
                    var eventSchedules = new Dictionary<long, string>();
                    var timerunningSeasonIDs = new Dictionary<long, long>();
                    var icons = new Dictionary<long, string>();
                    var constants = new Dictionary<string, long>();
                    var localizationForText = new Dictionary<string, Dictionary<long, string>>();
                    var localizationForLore = new Dictionary<string, Dictionary<long, string>>();
                    var localizationForDescriptions = new Dictionary<string, Dictionary<long, string>>();
                    var extraHeaderData = new Dictionary<string, Dictionary<long, object>>();
                    foreach (var key in CustomHeaders.Keys)
                    {
                        // Include Only Referenced Headers!
                        if (CUSTOM_HEADERS_WITH_REFERENCES.ContainsKey(key))
                        {
                            if (CustomHeaders.TryGetValue(key, out object o) && o is IDictionary<string, object> header)
                            {
                                keys.Add(key);

                                // EventID is stored as HolidayNameID to keep things simple
                                if (header.TryGetValue("eventID", out object value))
                                {
                                    long eventID = Convert.ToInt64(value);
                                    eventIDs[key] = eventID;
                                    if (header.TryGetValue("eventIDs", out value) && value is List<object> ids)
                                    {
                                        foreach (var eventIDAsObj in ids)
                                        {
                                            eventRemaps[Convert.ToInt64(eventIDAsObj)] = eventID;
                                        }
                                    }
                                    if (header.TryGetValue("eventSchedule", out value))
                                    {
                                        eventSchedules[eventID] = value.ToString();
                                    }
                                    if (header.TryGetValue("timerunningSeasonID", out value))
                                    {
                                        timerunningSeasonIDs[eventID] = Convert.ToInt64(value);
                                    }

                                    // Remap the HolidayNameID to EventID
                                    // Ignore 161 (Kalu'ak Fishing Derby)
                                    // https://wago.tools/db2/Holidays?filter%5BHolidayNameID%5D=exact%3A161&page=1
                                    if (eventID != 161 && WagoData.TryGetHolidayNameIDAssociations<Holiday>(eventID, out var associations))
                                    {
                                        foreach (var association in associations)
                                        {
                                            eventRemaps[association.ID] = eventID;
                                        }
                                    }

                                    // Update the text localization to use Wago data, but only if we're not ignoring wago holiday names
                                    if (!header.ContainsKey("IgnoreWagoHolidayNames"))
                                    {
                                        var localizedHolidayNames = WagoData.GetLocalizedData<HolidayNames>(eventID);
                                        if (localizedHolidayNames != null && localizedHolidayNames.TryGetValue("Name_lang", out var names))
                                        {
                                            header["text"] = names;
                                        }
                                    }
                                }
                                if (header.TryGetValue("icon", out value))
                                {
                                    icons[key] = value.ToString().Replace("\\", "/");
                                }
                                if (header.TryGetValue("constant", out value))
                                {
                                    constants[value.ToString()] = key;
                                }
                                CleanLocalizedField(key, "text", header, localizationForText);
                                CleanLocalizedField(key, "description", header, localizationForDescriptions);
                                CleanLocalizedField(key, "lore", header, localizationForLore);

                                if (header.TryGetValue("minilist_ignore", out value))
                                {
                                    if (!extraHeaderData.TryGetValue("IGNOREINMINILIST", out var ignored))
                                    {
                                        extraHeaderData["IGNOREINMINILIST"] = ignored = new Dictionary<long, object>();
                                    }
                                    ignored[key] = value;
                                }

                                if (header.TryGetValue("npcfill", out value))
                                {
                                    if (!extraHeaderData.TryGetValue("FILLNPCS", out var fill))
                                    {
                                        extraHeaderData["FILLNPCS"] = fill = new Dictionary<long, object>();
                                    }
                                    fill[key] = value;
                                }
                            }
                        }
                    }
                    keys.Sort(new Comparison<long>((i1, i2) => i2.CompareTo(i1)));

                    // Write the header constants!
                    builder.AppendLine("_.HeaderConstants = {");
                    var headerKeys = constants.Keys.ToList();
                    headerKeys.Sort(Framework.Compare);
                    foreach (var key in headerKeys)
                    {
                        builder.Append("\t").Append(key).Append(" = ").Append(constants[key]).AppendLine(",");
                    }
                    builder.AppendLine("};");

                    // Write extra header data
                    builder.AppendLine("_.HeaderData = {");
                    foreach (var key in extraHeaderData)
                    {
                        AddTableNewLines = false;
                        builder.Append("\t").Append(key.Key).Append(" = ").Append(ExportCompressedLua(key.Value)).AppendLine(",");
                    }
                    builder.AppendLine("};");

                    // Get all of the english translations and always write them to the file.
                    if (localizationForText.TryGetValue("en", out var data))
                    {
                        localizationForText.Remove("en");
                        builder.AppendLine("localize(L.HEADER_NAMES, {");
                        foreach (var key in keys)
                        {
                            if (data.TryGetValue(key, out string name))
                            {
                                ExportStringKeyValue(builder, key, name).AppendLine();
                            }
                        }
                        builder.AppendLine("});");
                    }
                    if (localizationForDescriptions.TryGetValue("en", out data))
                    {
                        localizationForDescriptions.Remove("en");
                        builder.AppendLine("localize(L.HEADER_DESCRIPTIONS, {");
                        foreach (var key in keys)
                        {
                            if (data.TryGetValue(key, out string name))
                            {
                                ExportStringKeyValue(builder, key, name).AppendLine();
                            }
                        }
                        builder.AppendLine("});");
                    }
                    if (localizationForLore.TryGetValue("en", out data))
                    {
                        localizationForLore.Remove("en");
                        builder.AppendLine("localize(L.HEADER_LORE, {");
                        foreach (var key in keys)
                        {
                            if (data.TryGetValue(key, out string name))
                            {
                                ExportStringKeyValue(builder, key, name).AppendLine();
                            }
                        }
                        builder.AppendLine("});");
                    }

                    // Write the icons last.
                    builder.AppendLine("localize(L.HEADER_ICONS, {");
                    foreach (var key in keys)
                    {
                        if (icons.TryGetValue(key, out string icon))
                        {
                            ExportIconKeyValue(builder, key, icon);
                        }
                    }
                    builder.AppendLine("});");

                    // Write the event information!
                    if (eventIDs.Any())
                    {
                        builder.AppendLine("localize(L.HEADER_EVENTS, {");
                        foreach (var key in keys)
                        {
                            if (eventIDs.TryGetValue(key, out long eventID))
                            {
                                ExportObjectKeyValue(builder, key, eventID).AppendLine();
                            }
                        }
                        builder.AppendLine("});");
                    }
                    if (eventRemaps.Any())
                    {
                        builder.AppendLine("localize(L.EVENT_REMAPPING, {");
                        var remappedKeys = eventRemaps.Keys.ToList();
                        remappedKeys.Sort();
                        foreach (var remappedKey in remappedKeys)
                        {
                            ExportObjectKeyValue(builder, remappedKey, eventRemaps[remappedKey]).AppendLine();
                        }
                        builder.AppendLine("});").AppendLine();
                    }
                    if (timerunningSeasonIDs.Any())
                    {
                        builder.AppendLine("localize(L.EVENT_TIMERUNNING_SEASONS, {");
                        foreach (var pair in timerunningSeasonIDs)
                        {
                            ExportObjectKeyValue(builder, pair.Value, pair.Key).AppendLine();
                        }
                        builder.AppendLine("});").AppendLine();
                    }
                    if (eventSchedules.Any())
                    {
                        builder.AppendLine("-- Programmatic Event Scheduling");
                        foreach (var pair in eventSchedules)
                        {
                            builder.Append("_.Modules.Events.SetEventInformation(").Append(pair.Key).Append(", ").Append(pair.Value).Append(");").AppendLine();
                        }
                    }

                    // Now grab the non-english localizations and conditionally write them to the file.
                    foreach (var localePair in localizationForText)
                    {
                        if (localePair.Value.Any())
                        {
                            var localeBuilder = localizationByLocale[localePair.Key];
                            localeBuilder.AppendLine("localize(L.HEADER_NAMES, {");
                            foreach (var key in keys)
                            {
                                if (localePair.Value.TryGetValue(key, out string name) && !string.IsNullOrWhiteSpace(name))
                                {
                                    ExportStringKeyValue(localeBuilder, key, name).AppendLine();
                                }
                            }
                            localeBuilder.AppendLine("});");
                        }
                    }
                    foreach (var localePair in localizationForDescriptions)
                    {
                        if (localePair.Value.Any())
                        {
                            var localeBuilder = localizationByLocale[localePair.Key];
                            localeBuilder.AppendLine("localize(L.HEADER_DESCRIPTIONS, {");
                            foreach (var key in keys)
                            {
                                if (localePair.Value.TryGetValue(key, out string name) && !string.IsNullOrWhiteSpace(name))
                                {
                                    ExportStringKeyValue(localeBuilder, key, name).AppendLine();
                                }
                            }
                            localeBuilder.AppendLine("});");
                        }
                    }
                    foreach (var localePair in localizationForLore)
                    {
                        if (localePair.Value.Any())
                        {
                            var localeBuilder = localizationByLocale[localePair.Key];
                            localeBuilder.AppendLine("localize(L.HEADER_LORE, {");
                            foreach (var key in keys)
                            {
                                if (localePair.Value.TryGetValue(key, out string name) && !string.IsNullOrWhiteSpace(name))
                                {
                                    ExportStringKeyValue(localeBuilder, key, name).AppendLine();
                                }
                            }
                            localeBuilder.AppendLine("});");
                        }
                    }

                    // Append the file content to our localization database.
                    localizationDatabase.AppendLine(builder.ToString());
                }

                // Export the Filter DB file.
                if (FILTERS_WITH_REFERENCES.Any())
                {
                    CurrentParseStage = ParseStage.ExportFilterDB;
                    var builder = new StringBuilder("-- Filter Database Module").AppendLine();

                    var icons = new Dictionary<long, string>();
                    var constants = new Dictionary<string, long>();
                    var localizationForText = new Dictionary<string, Dictionary<long, string>>();

                    // Include Only Referenced data!
                    var keys = FILTERS_WITH_REFERENCES.Keys.ToList();
                    keys.Sort();
                    foreach (var key in keys)
                    {
                        // Check to see if DB has any information for this id.
                        if (!FilterDB.TryGetValue(key, out Dictionary<string, object> dataEntry))
                        {
                            // If not, report that it is missing.
                            Console.Write("Missing Filter data for #");
                            Console.WriteLine(key);
                            continue;
                        }
                        CleanLocalizedField(key, "text", dataEntry, localizationForText);
                        if (dataEntry.TryGetValue("icon", out object icon))
                        {
                            icons[key] = icon.ToString().Replace("\\", "/");
                        }

                        if (dataEntry.TryGetValue("constant", out var value))
                        {
                            constants[value.ToString()] = key;
                        }
                    }

                    // Write the header constants!
                    if (constants.Any())
                    {
                        builder.AppendLine("_.FilterConstants = {");
                        var headerKeys = constants.Keys.ToList();
                        headerKeys.Sort(Framework.Compare);
                        foreach (var key in headerKeys)
                        {
                            builder.Append("\t").Append(key).Append(" = ").Append(constants[key]).AppendLine(",");
                        }
                        builder.AppendLine("};");
                    }

                    // Get all of the english translations and always write them to the file.
                    if (localizationForText.TryGetValue("en", out var data))
                    {
                        localizationForText.Remove("en");
                        builder.AppendLine("L.FILTER_ID_TYPES = {");
                        foreach (var key in keys)
                        {
                            if (data.TryGetValue(key, out string name))
                            {
                                ExportStringKeyValue(builder, key, name).AppendLine();
                            }
                        }
                        builder.AppendLine("}");
                    }

                    // Now grab the non-english localizations and conditionally write them to the file.
                    foreach (var localePair in localizationForText)
                    {
                        if (localePair.Value.Any())
                        {
                            var localeBuilder = localizationByLocale[localePair.Key];
                            localeBuilder.AppendLine("localize(L.FILTER_ID_TYPES, {");
                            foreach (var key in keys)
                            {
                                if (localePair.Value.TryGetValue(key, out string name))
                                {
                                    ExportStringKeyValue(localeBuilder, key, name).AppendLine();
                                }
                            }
                            localeBuilder.AppendLine("});");
                        }
                    }

                    // Write the icons last.
                    if (icons.Any())
                    {
                        builder.AppendLine("L.FILTER_ID_ICONS = {");
                        foreach (var key in keys)
                        {
                            if (icons.TryGetValue(key, out string icon))
                            {
                                ExportIconKeyValue(builder, key, icon);
                            }
                        }
                        builder.AppendLine("}");
                    }

                    // Append the file content to our localization database.
                    localizationDatabase.AppendLine(builder.ToString());
                }

                // Export the Flight Paths DB file.
                if (FLIGHTPATHS_WITH_REFERENCES.Any())
                {
                    CurrentParseStage = ParseStage.ExportFlightPathDB;
                    var builder = new StringBuilder("-- Flight Path Database Module").AppendLine();

                    // Include Only Referenced Flight Paths!
                    var keys = FLIGHTPATHS_WITH_REFERENCES.Keys.ToList();
                    keys.Sort();
                    bool isRetail = ((string[])Config["PreProcessorTags"]).Contains("RETAIL");
                    var localizationForText = new Dictionary<string, Dictionary<long, string>>();
                    foreach (var key in keys)
                    {
                        // Check to see if FlightPathDB has any information on our flight path.
                        if (!FlightPathDB.TryGetValue(key, out Dictionary<string, object> flightPathData))
                        {
                            // If not, report that it is missing (this really isn't that important in Retail since it's entirely dynamic)
                            if (isRetail)
                            {
                                LogDebug($"Missing Flight Path data for #{key}");
                            }
                            else
                            {
                                LogWarn($"Missing Flight Path data for #{key}");
                            }
                            continue;
                        }
                        CleanLocalizedField(key, "text", flightPathData, localizationForText);
                    }

                    // Get all of the english translations and always write them to the file.
                    if (localizationForText.TryGetValue("en", out var data))
                    {
                        localizationForText.Remove("en");
                        builder.AppendLine("_.FlightPathNames = {");
                        foreach (var key in keys)
                        {
                            if (data.TryGetValue(key, out string name))
                            {
                                ExportStringKeyValue(builder, key, name).AppendLine();
                            }
                        }
                        builder.AppendLine("}");
                    }

                    // Now grab the non-english localizations and conditionally write them to the file.
                    foreach (var localePair in localizationForText)
                    {
                        if (localePair.Value.Any())
                        {
                            var localeBuilder = localizationByLocale[localePair.Key];
                            localeBuilder.AppendLine("localize(_.FlightPathNames, {");
                            foreach (var key in keys)
                            {
                                if (localePair.Value.TryGetValue(key, out string name))
                                {
                                    ExportStringKeyValue(localeBuilder, key, name).AppendLine();
                                }
                            }
                            localeBuilder.AppendLine("});");
                        }
                    }

                    // Append the file content to our localization database.
                    localizationDatabase.AppendLine(builder.ToString());
                }

                // Export the Glyph DB file.
                if (GlyphDB.Any())
                {
                    var builder = new StringBuilder("-- Glyphs Database Module").AppendLine();

                    // Sort the list by glyphID...
                    var keys = GlyphDB.Keys.ToList();
                    keys.Sort();
                    builder.AppendLine("_.GlyphDB = {");
                    foreach (var key in keys)
                    {
                        if (GlyphDB.TryGetValue(key, out var spellID))
                        {
                            ExportObjectKeyValue(builder, key, spellID).AppendLine();
                        }
                    }
                    builder.AppendLine("}");

                    // Append the file content to our localization database.
                    localizationDatabase.AppendLine(builder.ToString());
                }

                // Export the Object DB file.
                if (OBJECTS_WITH_REFERENCES.Any())
                {
                    CurrentParseStage = ParseStage.ExportObjectDB;
                    var builder = new StringBuilder("-- Object Database Module").AppendLine();

                    var icons = new Dictionary<long, string>();
                    var modelIDs = new Dictionary<long, long>();
                    var consolidatedKeys = new Dictionary<string, List<long>>();
                    var localizationForText = new Dictionary<string, Dictionary<long, string>>();

                    // Include Only Referenced Objects!
                    var keys = OBJECTS_WITH_REFERENCES.Keys.ToList();
                    keys.Sort();
                    foreach (var key in keys)
                    {
                        // Check to see if ObjectDB has any information on our object.
                        if (!ObjectDB.TryGetValue(key, out Dictionary<string, object> objectData))
                        {
                            // If not, get new object information from WoWHead.
                            objectData = new Dictionary<string, object>();
                            ObjectHarvester.UpdateInformationFromWoWHead(key, objectData);
                            if (!objectData.Any()) continue;
                            ObjectDB[key] = objectData;
                        }
#if HARVESTOBJECTS
                        else
                        {
                            // Check for any updated information from WoWHead.
                            ObjectHarvester.UpdateInformationFromWoWHead(key, objectData);
                        }
#endif
                        if (objectData.TryGetValue("consolidate", out bool consolidate) && consolidate)
                        {
                            if (objectData.TryGetValue("readable", out string readable))
                            {
                                if (!consolidatedKeys.TryGetValue(readable, out var listing))
                                {
                                    consolidatedKeys[readable] = listing = new List<long>();
                                }
                                listing.Add(key);
                            }
                        }
                        if (objectData.TryGetValue("icon", out object value))
                        {
                            icons[key] = value.ToString().Replace("\\", "/");
                        }
                        if (objectData.TryGetValue("model", out value))
                        {
                            modelIDs[key] = Convert.ToInt64(value);
                        }
                        CleanLocalizedField(key, "text", objectData, localizationForText);
                    }

                    // Sort any consolidated keys and export them as a constant.
                    var tupledConsolidatedKeys = new List<Tuple<string, List<long>>>();
                    if (consolidatedKeys.Any())
                    {
                        var names = consolidatedKeys.Keys.ToList();
                        names.Sort(Framework.Compare);
                        foreach (var name in names)
                        {
                            var sortedKeys = consolidatedKeys[name];
                            if (sortedKeys.Any())
                            {
                                sortedKeys.Sort();
                                foreach (var sortedKey in sortedKeys) keys.Remove(sortedKey);
                                tupledConsolidatedKeys.Add(new Tuple<string, List<long>>(name.ToUpperInvariant().Replace(' ', '_') + "S", sortedKeys));
                            }
                        }
                    }

                    // Get all of the english translations and always write them to the file.
                    if (localizationForText.TryGetValue("en", out var enObjectData))
                    {
                        localizationForText.Remove("en");
                        builder.AppendLine("local ObjectNames = {");
                        foreach (var key in keys)
                        {
                            if (enObjectData.TryGetValue(key, out string name))
                            {
                                ExportStringKeyValue(builder, key, name).AppendLine();
                            }
                        }
                        builder.AppendLine("}; _.ObjectNames = ObjectNames;");
                    }

                    // Now grab the non-english localizations and conditionally write them to the file.
                    foreach (var localePair in localizationForText)
                    {
                        if (localePair.Value.Any())
                        {
                            var localeBuilder = localizationByLocale[localePair.Key];
                            var nameTuple = new List<Tuple<long, string>>();
                            foreach (var key in keys)
                            {
                                if (localePair.Value.TryGetValue(key, out string name))
                                {
                                    nameTuple.Add(new Tuple<long, string>(key, name));
                                }
                            }
                            if (nameTuple.Any())
                            {
                                localeBuilder.AppendLine("localize(ObjectNames, {");
                                foreach (var tuple in nameTuple)
                                {
                                    ExportStringKeyValue(localeBuilder, tuple.Item1, tuple.Item2).AppendLine();
                                }
                                localeBuilder.AppendLine("});");
                            }
                            if (tupledConsolidatedKeys.Any())
                            {
                                foreach (var tuple in tupledConsolidatedKeys)
                                {
                                    if (tuple.Item2.Any())
                                    {
                                        if (localePair.Value.TryGetValue(tuple.Item2[0], out string name))
                                        {
                                            localeBuilder.Append("for i,objectID in ipairs(").Append(tuple.Item1).Append(") do ObjectNames[objectID] = ");
                                            ExportStringValue(localeBuilder, name);
                                            localeBuilder.AppendLine("; end");
                                        }
                                    }
                                }
                            }
                        }
                    }

                    // Now write the icons after the text.
                    builder.AppendLine("local ObjectIcons = {");
                    foreach (var key in keys)
                    {
                        if (icons.TryGetValue(key, out string icon))
                        {
                            ExportIconKeyValue(builder, key, icon);
                        }
                    }
                    builder.AppendLine("}; _.ObjectIcons = ObjectIcons;");

                    // Write the model information last.
                    builder.AppendLine("local ObjectModels = {");
                    foreach (var key in keys)
                    {
                        if (modelIDs.TryGetValue(key, out long modelID))
                        {
                            ExportObjectKeyValue(builder, key, modelID).AppendLine();
                        }
                    }
                    builder.AppendLine("}; _.ObjectModels = ObjectModels;");
                    if (tupledConsolidatedKeys.Any())
                    {
                        builder.AppendLine().AppendLine("-- Consolidated Object Data");
                        foreach (var tuple in tupledConsolidatedKeys)
                        {
                            if (tuple.Item2.Any()) builder.Append("local ").Append(tuple.Item1).Append(" = { ").Append(string.Join(",", tuple.Item2)).AppendLine(" };");
                        }
                        foreach (var tuple in tupledConsolidatedKeys)
                        {
                            if (tuple.Item2.Any())
                            {
                                var firstObjectID = tuple.Item2[0];
                                builder.Append("for i,objectID in ipairs(").Append(tuple.Item1).AppendLine(") do");
                                if (enObjectData.TryGetValue(firstObjectID, out string name))
                                {
                                    builder.Append("\tObjectNames[objectID] = ");
                                    ExportStringValue(builder, name).AppendLine(";");
                                }
                                if (icons.TryGetValue(firstObjectID, out string icon) && IsIconValid(icon))
                                {
                                    builder.Append("\tObjectIcons[objectID] = ");
                                    ExportIconValue(builder, icon).AppendLine(";");
                                }
                                if (modelIDs.TryGetValue(firstObjectID, out long modelID))
                                {
                                    builder.Append("\tObjectModels[objectID] = ").Append(modelID).AppendLine(";");
                                }
                                builder.AppendLine("end");
                            }
                        }
                    }

                    // Append the file content to our localization database.
                    localizationDatabase.AppendLine(builder.ToString());
                }

                // Export the Phases file.
                if (Phases != null && Phases.Any())
                {
                    CurrentParseStage = ParseStage.ExportPhases;

                    // Now export it based on what we know.
                    var builder = new StringBuilder("-- Phase Database Module").AppendLine();
                    var keys = new List<long>();
                    var constants = new Dictionary<string, long>();
                    var localizationForText = new Dictionary<string, Dictionary<long, string>>();
                    var localizationForLore = new Dictionary<string, Dictionary<long, string>>();
                    var localizationForDescriptions = new Dictionary<string, Dictionary<long, string>>();
                    foreach (var key in Phases.Keys)
                    {
                        // Include Only Referenced Phases!
                        if (PHASES_WITH_REFERENCES.ContainsKey(key))
                        {
                            if (Phases.TryGetValue(key, out object o) && o is IDictionary<string, object> phase)
                            {
                                keys.Add(key);
                                if (phase.TryGetValue("constant", out var constant))
                                {
                                    constants[constant.ToString()] = key;
                                }
                                CleanLocalizedField(key, "text", phase, localizationForText);
                                CleanLocalizedField(key, "description", phase, localizationForDescriptions);
                                CleanLocalizedField(key, "lore", phase, localizationForLore);
                            }
                        }
                    }
                    keys.Sort(delegate (long a, long b)
                    {
                        // Sort the Normal Phases by number.
                        if (a < 11 || b < 11)
                        {
                            return a.CompareTo(b);
                        }

                        // Classic Phases should be sorted by the number alphabetically... for now.
                        return a.ToString().CompareTo(b.ToString());
                    });

                    // Write the header constants!
                    builder.AppendLine("_.PhaseConstants = {");
                    var phaseKeys = constants.Keys.ToList();
                    phaseKeys.Sort(Framework.Compare);
                    foreach (var key in phaseKeys)
                    {
                        builder.Append("\t").Append(key).Append(" = ").Append(constants[key]).AppendLine(",");
                    }
                    builder.AppendLine("};");

                    // Get all of the english translations and always write them to the file.
                    builder.AppendLine("local phases = {");
                    localizationForText.TryGetValue("en", out var localizationForTextByKey);
                    localizationForText.Remove("en");
                    localizationForDescriptions.TryGetValue("en", out var localizationForDescriptionsByKey);
                    localizationForDescriptions.Remove("en");
                    localizationForLore.TryGetValue("en", out var localizationForLoreByKey);
                    localizationForLore.Remove("en");
                    foreach (var key in keys)
                    {
                        if (Phases.TryGetValue(key, out object o) && o is IDictionary<string, object> phase)
                        {
                            builder.Append("\t[").Append(key).AppendLine("] = {");
                            if (localizationForTextByKey.TryGetValue(key, out string name))
                            {
                                builder.Append("\t\tname = ");
                                ExportStringValue(builder, name).AppendLine(",");
                            }
                            if (localizationForDescriptionsByKey.TryGetValue(key, out name))
                            {
                                builder.Append("\t\tdescription = ");
                                ExportStringValue(builder, name).AppendLine(",");
                            }
                            if (localizationForLoreByKey.TryGetValue(key, out name))
                            {
                                builder.Append("\t\tlore = ");
                                ExportStringValue(builder, name).AppendLine(",");
                            }
                            if (phase.TryGetValue("icon", out string icon) && IsIconValid(icon))
                            {
                                builder.Append("\t\ticon = ");
                                ExportIconValue(builder, icon).AppendLine(",");
                            }
                            if (phase.TryGetValue("minimumBuildVersion", out var minimumBuildVersion))
                            {
                                builder.Append("\t\tminimumBuildVersion = ").Append(minimumBuildVersion).AppendLine(",");
                            }
                            if (phase.TryGetValue("buildVersion", out var buildVersion))
                            {
                                builder.Append("\t\tbuildVersion = ").Append(buildVersion).AppendLine(",");
                            }
                            if (phase.TryGetValue("release", out var release))
                            {
                                builder.Append("\t\trelease = ").Append(release).AppendLine(",");
                            }

                            // Write the state last. [NOTE: This is an ID number from 1-4]
                            builder.Append("\t\tstate = ");
                            if (phase.TryGetValue("state", out var state))
                            {
                                builder.Append(state);
                            }
                            else builder.Append(2); // Default is 'Medium'
                            builder.AppendLine(",").AppendLine("\t},");
                        }
                    }
                    builder.AppendLine("};\nL.PHASES = phases;");

                    // Now grab the non-english localizations and conditionally write them to the file.
                    foreach (var localePair in localizationForText)
                    {
                        if (localePair.Value.Any())
                        {
                            var localeBuilder = localizationByLocale[localePair.Key];
                            localeBuilder.AppendLine("for key,value in pairs({");
                            foreach (var key in keys)
                            {
                                if (localePair.Value.TryGetValue(key, out string name) && !string.IsNullOrWhiteSpace(name))
                                {
                                    ExportStringKeyValue(localeBuilder, key, name).AppendLine();
                                }
                            }
                            localeBuilder.AppendLine("})\ndo phases[key].name = value; end");
                        }
                    }
                    foreach (var localePair in localizationForDescriptions)
                    {
                        if (localePair.Value.Any())
                        {
                            var localeBuilder = localizationByLocale[localePair.Key];
                            localeBuilder.AppendLine("for key,value in pairs({");
                            foreach (var key in keys)
                            {
                                if (localePair.Value.TryGetValue(key, out string name) && !string.IsNullOrWhiteSpace(name))
                                {
                                    ExportStringKeyValue(localeBuilder, key, name).AppendLine();
                                }
                            }
                            localeBuilder.AppendLine("})\ndo phases[key].description = value; end");
                        }
                    }
                    foreach (var localePair in localizationForLore)
                    {
                        if (localePair.Value.Any())
                        {
                            var localeBuilder = localizationByLocale[localePair.Key];
                            localeBuilder.AppendLine("for key,value in pairs({");
                            foreach (var key in keys)
                            {
                                if (localePair.Value.TryGetValue(key, out string name) && !string.IsNullOrWhiteSpace(name))
                                {
                                    ExportStringKeyValue(localeBuilder, key, name).AppendLine();
                                }
                            }
                            localeBuilder.AppendLine("})\ndo phases[key].lore = value; end");
                        }
                    }

                    // Append the file content to our localization database.
                    localizationDatabase.AppendLine(builder.ToString());
                }



                // Export the Achievement Data and Criteria DB file.
                if (SOURCED.TryGetValue("achID", out var referencedAchievementData) && referencedAchievementData.Any())
                {
                    CurrentParseStage = ParseStage.ExportAchievementData;
                    var allAchievementKeys = AchievementData.Keys.ToList();
                    if (allAchievementKeys.Any())
                    {
                        var builder = new StringBuilder("-- Achievement Data Module").AppendLine();
                        var keys = new List<long>();
                        var localizationForText = new Dictionary<string, Dictionary<long, string>>();
                        var localizationForDescriptions = new Dictionary<string, Dictionary<long, string>>();
                        var localizationForLore = new Dictionary<string, Dictionary<long, string>>();
                        var referencedCategoryIDs = new Dictionary<long, bool>();
                        var referencedCriteriaIDs = new Dictionary<long, bool>();
                        allAchievementKeys.Sort();
                        foreach (var key in allAchievementKeys)
                        {
                            // Include Only Referenced Achievements!
                            if (referencedAchievementData.ContainsKey(key))
                            {
                                if (AchievementData.TryGetValue(key, out var achievement))
                                {
                                    keys.Add(key);
                                    CleanLocalizedField(key, "text", achievement, localizationForText);
                                    CleanLocalizedField(key, "description", achievement, localizationForDescriptions);
                                    CleanLocalizedField(key, "lore", achievement, localizationForLore);
                                }
                            }
                        }

                        // Get all of the english translations and always write them to the file.
                        builder.AppendLine("local achievements = {");
                        localizationForText.TryGetValue("en", out var localizationForTextByKey);
                        localizationForText.Remove("en");
                        if (localizationForDescriptions.TryGetValue("en", out var localizationForDescriptionsByKey)) localizationForDescriptions.Remove("en");
                        else localizationForDescriptionsByKey = new Dictionary<long, string>();
                        if (localizationForLore.TryGetValue("en", out var localizationForLoreByKey)) localizationForLore.Remove("en");
                        else localizationForLoreByKey = new Dictionary<long, string>();
                        foreach (var key in keys)
                        {
                            if (AchievementData.TryGetValue(key, out var achievement))
                            {
                                builder.Append("\t[").Append(key).AppendLine("] = {");
                                if (localizationForTextByKey.TryGetValue(key, out string name))
                                {
                                    builder.Append("\t\tname = ");
                                    ExportStringValue(builder, name).AppendLine(",");
                                }
                                if (localizationForDescriptionsByKey.TryGetValue(key, out name))
                                {
                                    builder.Append("\t\tdescription = ");
                                    ExportStringValue(builder, name).AppendLine(",");
                                }
                                if (localizationForLoreByKey.TryGetValue(key, out name))
                                {
                                    builder.Append("\t\tlore = ");
                                    ExportStringValue(builder, name).AppendLine(",");
                                }
                                if (achievement.TryGetValue("icon", out var icon) && IsIconValid(icon.ToString()))
                                {
                                    builder.Append("\t\ticon = ");
                                    if (icon is string iconString) ExportStringValue(builder, iconString);
                                    else builder.Append(icon);
                                    builder.AppendLine(",");
                                }
                                builder.Append("\t\tcategory = ");
                                if (achievement.TryGetValue("category", out var category))
                                {
                                    referencedCategoryIDs[(long)category] = true;
                                    builder.Append(category);
                                }
                                else builder.Append(-1);
                                if (achievement.TryGetValue("operator", out var op))
                                {
                                    builder.AppendLine(",").Append("\t\toperator = ").Append(op);
                                }
                                if (achievement.TryGetValue("amount", out var amount))
                                {
                                    builder.AppendLine(",").Append("\t\tamount = ").Append(amount);
                                }
                                if (achievement.TryGetValue("criteria", out List<object> criteria))
                                {
                                    foreach (var criteriaID in criteria) referencedCriteriaIDs[(long)criteriaID] = true;
                                    builder.AppendLine(",").Append("\t\tcriteria = ").Append(ExportCompressedLua(criteria));
                                }
                                builder.AppendLine(",").AppendLine("\t},");
                            }
                        }
                        builder.AppendLine("};\nL.ACHIEVEMENT_DATA = achievements;");

                        // Now grab the non-english localizations and conditionally write them to the file.
                        foreach (var localePair in localizationForText)
                        {
                            if (localePair.Value.Any())
                            {
                                var localeBuilder = localizationByLocale[localePair.Key];
                                localeBuilder.AppendLine("for key,value in pairs({");
                                foreach (var key in keys)
                                {
                                    if (localePair.Value.TryGetValue(key, out string name) && !string.IsNullOrWhiteSpace(name))
                                    {
                                        ExportStringKeyValue(localeBuilder, key, name).AppendLine();
                                    }
                                }
                                localeBuilder.AppendLine("})\ndo achievements[key].name = value; end");
                            }
                        }
                        foreach (var localePair in localizationForDescriptions)
                        {
                            if (localePair.Value.Any())
                            {
                                var localeBuilder = localizationByLocale[localePair.Key];
                                localeBuilder.AppendLine("for key,value in pairs({");
                                foreach (var key in keys)
                                {
                                    if (localePair.Value.TryGetValue(key, out string name) && !string.IsNullOrWhiteSpace(name))
                                    {
                                        ExportStringKeyValue(localeBuilder, key, name).AppendLine();
                                    }
                                }
                                localeBuilder.AppendLine("})\ndo achievements[key].description = value; end");
                            }
                        }
                        foreach (var localePair in localizationForLore)
                        {
                            if (localePair.Value.Any())
                            {
                                var localeBuilder = localizationByLocale[localePair.Key];
                                localeBuilder.AppendLine("for key,value in pairs({");
                                foreach (var key in keys)
                                {
                                    if (localePair.Value.TryGetValue(key, out string name) && !string.IsNullOrWhiteSpace(name))
                                    {
                                        ExportStringKeyValue(localeBuilder, key, name).AppendLine();
                                    }
                                }
                                localeBuilder.AppendLine("})\ndo achievements[key].lore = value; end");
                            }
                        }

                        // Append the file content to our localization database.
                        localizationDatabase.AppendLine(builder.ToString());


                        // Achievement Categories
                        builder.Clear();
                        keys.Clear();
                        localizationForText.Clear();
                        localizationForDescriptions.Clear();
                        allAchievementKeys = AchievementCategoryData.Keys.ToList();
                        allAchievementKeys.Sort();
                        foreach (var categoryID in referencedCategoryIDs.Keys.ToList())
                        {
                            var parentCategoryID = categoryID;
                            while (AchievementCategoryData.TryGetValue(parentCategoryID, out var critData))
                            {
                                if (critData.TryGetValue("parent", out var parentCriteria))
                                {
                                    parentCategoryID = (long)parentCriteria;
                                    referencedCategoryIDs[parentCategoryID] = true;
                                    if (parentCategoryID == -1) break;
                                }
                            }
                        }
                        foreach (var key in allAchievementKeys)
                        {
                            // Include Only Referenced Categories!
                            if (referencedCategoryIDs.ContainsKey(key))
                            {
                                if (AchievementCategoryData.TryGetValue(key, out var achievement))
                                {
                                    keys.Add(key);
                                    if (achievement.TryGetValue("text", out var value))
                                    {
                                        if (!(value is IDictionary<string, object> localeData))
                                        {
                                            localeData = new Dictionary<string, object>
                                            {
                                                ["en"] = value
                                            };
                                        }
                                        TryColorizeDictionary(localeData);
                                        foreach (var locale in localeData)
                                        {
                                            if (!localizationForText.TryGetValue(locale.Key, out Dictionary<long, string> sublocale))
                                            {
                                                localizationForText[locale.Key] = sublocale = new Dictionary<long, string>();
                                            }
                                            sublocale[key] = locale.Value.ToString();
                                        }
                                    }
                                }
                            }
                        }

                        // Get all of the english translations and always write them to the file.
                        builder.AppendLine("local achievementCategories = {");
                        localizationForText.TryGetValue("en", out localizationForTextByKey);
                        localizationForText.Remove("en");
                        foreach (var key in keys)
                        {
                            if (AchievementCategoryData.TryGetValue(key, out var achievement))
                            {
                                builder.Append("\t[").Append(key).AppendLine("] = {");
                                if (localizationForTextByKey.TryGetValue(key, out string name))
                                {
                                    builder.Append("\t\tname = ");
                                    ExportStringValue(builder, name).AppendLine(",");
                                }
                                builder.Append("\t\tparent = ");
                                if (achievement.TryGetValue("parent", out var parent))
                                {
                                    builder.Append(parent);
                                }
                                else builder.Append(-1);
                                builder.AppendLine(",").AppendLine("\t},");
                            }
                        }
                        builder.AppendLine("};\nL.ACHIEVEMENT_CATEGORY_DATA = achievementCategories;");

                        // Now grab the non-english localizations and conditionally write them to the file.
                        foreach (var localePair in localizationForText)
                        {
                            if (localePair.Value.Any())
                            {
                                var localeBuilder = localizationByLocale[localePair.Key];
                                localeBuilder.AppendLine("for key,value in pairs({");
                                foreach (var key in keys)
                                {
                                    if (localePair.Value.TryGetValue(key, out string name) && !string.IsNullOrWhiteSpace(name))
                                    {
                                        ExportStringKeyValue(localeBuilder, key, name).AppendLine();
                                    }
                                }
                                localeBuilder.AppendLine("})\ndo achievementCategories[key].name = value; end");
                            }
                        }

                        // Append the file content to our localization database.
                        localizationDatabase.AppendLine(builder.ToString());

                        // Achievement Criteria
                        builder.Clear();
                        keys.Clear();
                        localizationForText.Clear();
                        localizationForDescriptions.Clear();
                        Dictionary<long, bool> referencedWorldMapOverlays = new Dictionary<long, bool>();
                        allAchievementKeys = AchievementCriteriaData.Keys.ToList();
                        allAchievementKeys.Sort();
                        foreach (var key in allAchievementKeys)
                        {
                            // Include Only Referenced Criteria!
                            if (referencedCriteriaIDs.ContainsKey(key))
                            {
                                if (AchievementCriteriaData.TryGetValue(key, out var criteria))
                                {
                                    keys.Add(key);
                                    if (criteria.TryGetValue("text", out var value))
                                    {
                                        if (!(value is IDictionary<string, object> localeData))
                                        {
                                            localeData = new Dictionary<string, object>
                                            {
                                                ["en"] = value
                                            };
                                        }
                                        TryColorizeDictionary(localeData);
                                        foreach (var locale in localeData)
                                        {
                                            if (!localizationForText.TryGetValue(locale.Key, out Dictionary<long, string> sublocale))
                                            {
                                                localizationForText[locale.Key] = sublocale = new Dictionary<long, string>();
                                            }
                                            sublocale[key] = locale.Value.ToString();
                                        }
                                    }
                                }
                            }
                        }

                        // Get all of the english translations and always write them to the file.
                        builder.AppendLine("local achievementCriterias = {");
                        localizationForText.TryGetValue("en", out localizationForTextByKey);
                        localizationForText.Remove("en");
                        foreach (var key in keys)
                        {
                            if (AchievementCriteriaData.TryGetValue(key, out var criteriaData))
                            {
                                builder.Append("\t[").Append(key).AppendLine("] = {");
                                builder.Append("\t\tname = ");
                                if (localizationForTextByKey.TryGetValue(key, out string name))
                                {
                                    ExportStringValue(builder, name);
                                }
                                else builder.Append("nil");
                                if (criteriaData.TryGetValue("operator", out var op))
                                {
                                    builder.AppendLine(",").Append("\t\toperator = ").Append(op);
                                }
                                if (criteriaData.TryGetValue("amount", out var amount))
                                {
                                    builder.AppendLine(",").Append("\t\tamount = ").Append(amount);
                                }
                                if (criteriaData.TryGetValue("type", out var t))
                                {
                                    builder.AppendLine(",").Append("\t\ttype = ").Append(t);
                                }
                                if (criteriaData.TryGetValue("asset", out var asset))
                                {
                                    builder.AppendLine(",").Append("\t\tasset = ").Append(asset);
                                    if (t != null && (long)t == 43) // Exploration Criteria
                                    {
                                        referencedWorldMapOverlays[(long)asset] = true;
                                    }
                                }
                                if (criteriaData.TryGetValue("criteria", out List<object> criteria))
                                {
                                    foreach (var criteriaID in criteria)
                                    {
                                        long crit = (long)criteriaID;
                                        if (!referencedCriteriaIDs.ContainsKey(crit))
                                        {
                                            referencedCriteriaIDs[crit] = true;
                                            keys.Add(crit);
                                        }
                                    }
                                    builder.AppendLine(",").Append("\t\tcriteria = ").Append(ExportCompressedLua(criteria));
                                }
                                builder.AppendLine(",").AppendLine("\t},");
                            }
                        }
                        builder.AppendLine("};\nL.ACHIEVEMENT_CRITERIA_DATA = achievementCriterias;");

                        // Write out the World Map Overlay explorationIDs that are referenced.
                        if (referencedWorldMapOverlays.Count > 0)
                        {
                            builder.AppendLine("local worldMapOverlayData = {");
                            var worldMapOverlayIDs = referencedWorldMapOverlays.Keys.ToList();
                            worldMapOverlayIDs.Sort();
                            foreach (var worldMapOverlayID in worldMapOverlayIDs)
                            {
                                if (WagoData.TryGetValue(worldMapOverlayID, out WorldMapOverlay worldMapOverlay))
                                {
                                    builder.Append("\t[").Append(worldMapOverlayID).Append("] = { ");
                                    if (worldMapOverlay.AreaID_0 > 0) builder.Append(worldMapOverlay.AreaID_0);
                                    if (worldMapOverlay.AreaID_1 > 0) builder.Append(",").Append(worldMapOverlay.AreaID_1);
                                    if (worldMapOverlay.AreaID_2 > 0) builder.Append(",").Append(worldMapOverlay.AreaID_2);
                                    if (worldMapOverlay.AreaID_3 > 0) builder.Append(",").Append(worldMapOverlay.AreaID_3);
                                    builder.AppendLine(" },");
                                }
                            }
                            builder.AppendLine("};\nL.WORLD_MAP_OVERLAY_DATA = worldMapOverlayData;");
                        }

                        // Now grab the non-english localizations and conditionally write them to the file.
                        foreach (var localePair in localizationForText)
                        {
                            if (localePair.Value.Any())
                            {
                                var localeBuilder = localizationByLocale[localePair.Key];
                                localeBuilder.AppendLine("for key,value in pairs({");
                                foreach (var key in keys)
                                {
                                    if (localePair.Value.TryGetValue(key, out string name) && !string.IsNullOrWhiteSpace(name))
                                    {
                                        ExportStringKeyValue(localeBuilder, key, name).AppendLine();
                                    }
                                }
                                localeBuilder.AppendLine("})\ndo achievementCriterias[key].name = value; end");
                            }
                        }

                        // Append the file content to our localization database.
                        localizationDatabase.AppendLine(builder.ToString());
                    }
                }

                // Export the Automatic Localizations (previously en_auto.lua)
                // CRIEVE NOTE: I don't fully grasp what this accomplishes that a custom header doesn't already, but I'll leave it alone for now.
                if (NAMES_BY_TYPE.Any())
                {
                    var AllLocaleTypes = new SortedDictionary<string, SortedDictionary<long, string>>();
                    foreach (var localeKey in NAMES_BY_TYPE)
                    {
                        if (AutoLocalizeType(localeKey.Key))
                        {
                            AllLocaleTypes.Add(localeKey.Key,
                                new SortedDictionary<long, string>(localeKey.Value));
                        }
                    }

                    if (AllLocaleTypes.Any())
                    {
                        bool hasRequirements = !string.IsNullOrEmpty(DATA_REQUIREMENTS);
                        StringBuilder builder = new StringBuilder(10000);
                        builder.AppendLine("-- Automatic Types");
                        if (hasRequirements) builder.AppendLine($"if ({DATA_REQUIREMENTS}) then");
                        foreach (var localeTypePair in AllLocaleTypes)
                        {
                            builder.Append("L.").Append(localeTypePair.Key.ToUpper().Replace("ID", string.Empty) + "_NAMES").AppendLine(" = {");
                            foreach (var localePair in localeTypePair.Value)
                            {

                                ExportStringKeyValue(builder, localePair.Key, localePair.Value).AppendLine();
                            }
                            builder.AppendLine("}");
                        }
                        if (hasRequirements) builder.AppendLine("end");

                        // Append the file content to our localization database.
                        localizationDatabase.AppendLine(builder.ToString());
                    }
                }

                // Now write the localization for each locale to the localization database builder.
                var localeKeys = localizationByLocale.Keys.ToList();
                SortSupportedLocales(localeKeys);
                localizationDatabase.AppendLine("-- Supported Locales")
                    .AppendLine("local simplifiedLocale = GetLocale():sub(1,2);");
                bool containsES = localizationByLocale.TryGetValue("es", out StringBuilder esBuilder) && esBuilder.Length > 0;
                bool containsMX = localizationByLocale.TryGetValue("mx", out StringBuilder mxBuilder) && mxBuilder.Length > 0;
                localeKeys.Remove("es"); localeKeys.Remove("mx");
                bool containsCN = localizationByLocale.TryGetValue("cn", out StringBuilder cnBuilder) && cnBuilder.Length > 0;
                bool containsTW = localizationByLocale.TryGetValue("tw", out StringBuilder twBuilder) && twBuilder.Length > 0;
                localeKeys.Remove("cn"); localeKeys.Remove("tw");
                foreach (var localeKey in localeKeys)
                {
                    if (localizationByLocale.TryGetValue(localeKey, out StringBuilder builder) && builder.Length > 0)
                    {
                        localizationDatabase.Append("if simplifiedLocale == \"").Append(localeKey).AppendLine("\" then");
                        localizationDatabase.Append(builder.ToString());
                        localizationDatabase.AppendLine("end");
                    }
                }
                if (containsES || containsMX)
                {
                    // If both are supported, we need to export it nested so that MX inherits the values from ES, but can still override the exported localization data.
                    localizationDatabase.AppendLine("if simplifiedLocale == \"es\" then");
                    if (containsES) localizationDatabase.Append(esBuilder.ToString());
                    if (containsMX)
                    {
                        localizationDatabase.AppendLine("if GetLocale():sub(3,4):lower() == \"mx\" then");
                        localizationDatabase.Append(mxBuilder.ToString());
                        localizationDatabase.AppendLine("end");
                    }
                    localizationDatabase.AppendLine("end");
                }
                if (containsCN || containsTW)
                {
                    // If both are supported, we need to export it nested so that TW inherits the values from CN, but can still override the exported localization data.
                    localizationDatabase.AppendLine("if simplifiedLocale == \"zh\" then");
                    if (containsCN) localizationDatabase.Append(cnBuilder.ToString());
                    if (containsTW)
                    {
                        localizationDatabase.AppendLine("if GetLocale():sub(3,4):lower() == \"tw\" then");
                        localizationDatabase.Append(twBuilder.ToString());
                        localizationDatabase.AppendLine("end");
                    }
                    localizationDatabase.AppendLine("end");
                }

                // Localization header constant debugger
                localizationDatabase.AppendLine(@"

-- Add a Header & Filter debugger
setmetatable(_.FilterConstants, {
	__index = function(t, key)
		_.print(""MISSING FilterConstant:"", key);
		rawset(t, key, -9999999999);
		return -9999999999;
	end
});
setmetatable(_.HeaderConstants, {
	__index = function(t, key)
		_.print(""MISSING HeaderConstant:"", key);
		rawset(t, key, -9999999999);
		return -9999999999;
	end
});");

                // Check to make sure the content is different since Diff tools are dumb as hell.
                var filename = Path.Combine(addonRootFolder, $"db/{dbRootFolder}LocalizationDB.lua");
                WriteIfDifferent(filename, localizationDatabase.ToString());

                // General ExportDBs
                var referenceDB = AutoGeneratedTag(new StringBuilder());
                referenceDB.AppendLine("local appName, _ = ...");
                var referenceDBFilename = Path.Combine(addonRootFolder, $"db/{dbRootFolder}ReferenceDB.lua");
                Exports.TryGetValue("_Compressed", out IDictionary<string, object> compressedDBs);
                foreach (var exportDB in new SortedDictionary<string, object>(Exports))
                {
                    IncludePureNewlines = !compressedDBs?.ContainsKey(exportDB.Key) ?? true;
                    CompressedLua = !IncludePureNewlines;

                    // some export DBs can filter unreferenced keys from data
                    switch (exportDB.Key)
                    {
                        case "OnTooltipDB":
                            {
                                if (EXPORTDATA_WITH_REFERENCES.TryGetValue("OnTooltip", out ConcurrentHashSet<string> names))
                                {
                                    Dictionary<string, object> exports = exportDB.Value as Dictionary<string, object>;
                                    CleanupExportDictionaryValue(exports, names);
                                    referenceDB.Append(ExportPureLua(exports).Insert(0, $"_.{exportDB.Key}=\n").ToString()).AppendLine();
                                }
                            }
                            break;
                        case "OnUpdateDB":
                            {
                                if (EXPORTDATA_WITH_REFERENCES.TryGetValue("OnUpdate", out ConcurrentHashSet<string> names))
                                {
                                    Dictionary<string, object> exports = exportDB.Value as Dictionary<string, object>;
                                    CleanupExportDictionaryValue(exports, names);
                                    referenceDB.Append(ExportPureLua(exports).Insert(0, $"_.{exportDB.Key}=\n").ToString()).AppendLine();
                                }
                            }
                            break;
                        case "OnInitDB":
                            {
                                if (EXPORTDATA_WITH_REFERENCES.TryGetValue("OnInit", out ConcurrentHashSet<string> names))
                                {
                                    Dictionary<string, object> exports = exportDB.Value as Dictionary<string, object>;
                                    CleanupExportDictionaryValue(exports, names);
                                    referenceDB.Append(ExportPureLua(exports).Insert(0, $"_.{exportDB.Key}=\n").ToString()).AppendLine();
                                }
                            }
                            break;
                        case "OnClickDB":
                            {
                                if (EXPORTDATA_WITH_REFERENCES.TryGetValue("OnClick", out ConcurrentHashSet<string> names))
                                {
                                    Dictionary<string, object> exports = exportDB.Value as Dictionary<string, object>;
                                    CleanupExportDictionaryValue(exports, names);
                                    referenceDB.Append(ExportPureLua(exports).Insert(0, $"_.{exportDB.Key}=\n").ToString()).AppendLine();
                                }
                            }
                            break;
                        default:
                            {
                                if (exportDB.Key.StartsWith("_"))
                                    continue;

                                if (exportDB.Value is Dictionary<string, object> exports)
                                {
                                    CleanupExportDictionaryValue(exports);
                                    referenceDB.Append(ExportPureLua(exports).Insert(0, $"_.{exportDB.Key}=\n").ToString()).AppendLine();
                                }
                                else
                                {
                                    referenceDB.Append(ExportPureLua(exportDB.Value).Insert(0, $"_.{exportDB.Key}=\n").ToString()).AppendLine();
                                }
                            }
                            break;
                    }
                }
                IncludePureNewlines = true;
                WriteIfDifferent(referenceDBFilename, referenceDB.ToString());

                // General Incorporation data references
                var incorporationFolder = Path.Combine(addonRootFolder, $".contrib/Debugging/IncorporationRefs", dbRootFolder);
                Directory.CreateDirectory(incorporationFolder);
                foreach (var incorporationData in IncorporationReferences)
                {
                    var incorporationDB = new StringBuilder();
                    incorporationDB.AppendLine("-- For reference only! Not used for Parsing! Contains information which was Incorporated from external DBs or other sources");
                    if (incorporationData.Key[0] == '_')
                        continue;

                    incorporationDB.Append("_=").Append(ExportPureLua(incorporationData.Value));

                    WriteIfDifferent(Path.Combine(incorporationFolder, $"{incorporationData.Key}.lua"), incorporationDB.ToString());
                }

                CurrentParseStage = ParseStage.ExportAddonData;
                IncludeRawNewlines = false;
                Objects.Export(outputFolder.FullName);
                IncludeRawNewlines = true;

                CurrentParseStage = ParseStage.ExportAutoSources;
                Objects.ExportAutoItemSources(Config["root-data"] ?? "./DATAS");

                // Attempt to find some dirty objects and write them to a dynamic file.
                ObjectHarvester.ExportDirtyObjectsToFilePath($"./DATAS/00 - DB/Dynamic/DynamicObjectDB_{DateTime.UtcNow.Ticks}.lua");
            }
        }

        private static void CleanupExportDictionaryValue(Dictionary<string, object> exports, IEnumerable<string> allowedKeys = null)
        {
            string[] allKeys = exports.Keys.ToArray();
            // remove unreferenced keys
            if (allowedKeys != null)
            {
                foreach (string key in allKeys)
                {
                    if (!allowedKeys.Contains(key))
                    {
                        exports.Remove(key);
                    }
                }
                allKeys = exports.Keys.ToArray();
            }

            // convert each individual key to simplified Lua
            foreach (string key in allKeys)
            {
                if (exports[key] is Dictionary<string, object> subTable)
                {
                    CleanupExportDictionaryValue(subTable);
                }
                else if (exports[key] is string exportedString)
                {
                    exports[key] = SimplifyLuaBody(exportedString);
                }
            }
        }

        public static void WriteIfDifferent(string filename, string content)
        {
            content = content.Trim() + Environment.NewLine;
            if (!File.Exists(filename) || File.ReadAllText(filename, Encoding.UTF8) != content)
            {
                File.WriteAllText(filename, content, Encoding.UTF8);
            }
        }

        private static StringBuilder AutoGeneratedTag(StringBuilder builder)
        {
            builder.Insert(0, "-- This file is dynamically generated by Parser! DO NOT MODIFY IT MANUALLY!\n");
            return builder;
        }

        /// <summary>
        /// Allows making easily-customized break points based on specific field data, since for whatever reason using 'real' conditional
        /// break points in VS is garbage awful slow horrible...
        /// </summary>
        public static void DataBreakPoint<T, K, V>(this IDictionary<K, V> data, K field, T fieldVal = default)
        {
            if (data == null) return;
            if (data.TryGetValue(field, out V dataObj) && dataObj.TryConvert(out T dataVal) && (Equals(default(T), fieldVal) || Equals(dataVal, fieldVal)))
            {

            }
        }
    }
}
