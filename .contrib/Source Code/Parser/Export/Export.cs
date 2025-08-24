using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;

namespace ATT
{
    /// <summary>
    /// The Export class. Contains helper methods for exporting data structures to various file formats.
    /// </summary>
    public static partial class Export
    {
        /// <summary>
        /// Whether debug information will be printed from Export functions
        /// </summary>
        public static bool DebugMode { get; set; }

        /// <summary>
        /// The class constructor.
        /// </summary>
        static Export()
        {
            // Initialize all of the Object Types in order of Export Priority.
            ObjectData.Create("buildingID",         "gb",           "_.CreateGarrisonBuilding", "f", "spellID");
            ObjectData.Create<MountData>("mountID", "mnt",          "_.CreateMount", "f", "spellID", "modID");
            ObjectData.Create<HeaderData>("headerID","ah",          "_.CreateHeader", "f"); // To not confuse people, "ah" means "AutoHeader", which is different from a Header
            ObjectData.Create("speciesID",          "p",            "_.CreateSpecies", "f", "modID");
            ObjectData.Create("objectiveID",        "qo",           "_.CreateQuestObjective", "f");
            ObjectData.Create("instanceID",         "inst",         "_.CreateInstance", "f");
            ObjectData.Create("artifactID",         "artifact",     "_.CreateArtifact", "f");
            ObjectData.Create<HeirloomData>("heirloomID", "heir",   "_.CreateHeirloom", "itemID");
            ObjectData.Create<ItemSourceData>("sourceID",  "s",     "_.CreateItemSource");
            ObjectData.Create("categoryID",         "cat",          "_.CreateCategory", "f");
            ObjectData.Create("classID",            "cl",           "_.CreateCharacterClass", "f");
            ObjectData.Create<CriteriaData>("criteriaID", "crit",   "_.CreateAchievementCriteria", "f");
            ObjectData.Create("difficultyID",       "d",            "_.CreateDifficulty", "f");
            ObjectData.Create("encounterID",        "e",            "_.CreateEncounter", "f");
            ObjectData.Create("explorationID",      "exp",          "_.CreateExploration", "f");
            ObjectData.Create("flightpathID",       "fp",           "_.CreateFlightPath", "f");
            ObjectData.Create("objectID",           "o",            "_.CreateObject", "f");
            ObjectData.Create("petAbilityID",       "pa",           "_.CreatePetAbility", "f");
            ObjectData.Create("followerID",         "follower",     "_.CreateFollower", "f");
            ObjectData.Create("missionID",          "gm",           "_.CreateGarrisonMission", "f");
            ObjectData.Create("talentID",           "gt",           "_.CreateGarrisonTalent", "f");
            ObjectData.Create<MapData>("mapID",     "m",            "_.CreateMap", "f");
            ObjectData.Create("illusionID",         "ill",          "_.CreateIllusion", "f", "spellID", "type");
            ObjectData.Create<RecipeData>("recipeID",   "r",        "_.CreateRecipe", "f", "spellID", "modID");
            ObjectData.Create("azeriteessenceID",   "aze",          "_.CreateAzeriteEssence", "f");
            ObjectData.Create("runeforgepowerID",   "rfl",          "_.CreateRuneforgeLegendary", "f");
            ObjectData.Create("conduitID",          "cd",           "_.CreateConduit", "f");
            ObjectData.Create("raceID",             "ra",           "_.CreateRace", "f");
            ObjectData.Create("setID",              "gs",           "_.CreateGearSet", "f");
            ObjectData.Create("setHeaderID",        "gsh",          "_.CreateGearSetHeader", "f");
            ObjectData.Create("setSubHeaderID",     "gssh",         "_.CreateGearSetSubHeader", "f");
            ObjectData.Create("titleID",            "title",        "_.CreateTitle", "f");
            ObjectData.Create("currencyID",         "cu",           "_.CreateCurrencyClass", "f");
            ObjectData.Create<ItemData>("itemID",   "i",            "_.CreateItem");
            ObjectData.Create("factionID",          "faction",      "_.CreateFaction", "f");
            ObjectData.Create<AchievementData>("achID", "ach",      "_.CreateAchievement", "f", "modID");
            ObjectData.Create("achievementCategoryID", "achcat",    "_.CreateAchievementCategory", "f");
            ObjectData.Create("expansionID",        "x",            "_.CreateExpansion", "f");
            ObjectData.Create("petTypeID",          "pt",           "_.CreatePetType", "f");
            ObjectData.Create("pvpRankID",          "pvprank",      "_.CreatePVPRank", "f");
            ObjectData.Create("professionID",       "prof",         "_.CreateProfession", "requireSkill", "modID", "f");
            ObjectData.Create("npcID",              "n",            "_.CreateNPC", "f", "creatureID");
            ObjectData.Create("spellID",            "sp",           "_.CreateSpell", "f");
            ObjectData.Create<QuestData>("questID", "q",            "_.CreateQuest", "f");
            ObjectData.Create("creatureID",         "n",            "_.CreateNPC", "f");
            ObjectData.Create("f",                  "flt",          "_.CreateFilter");
        }

        /// <summary>
        /// Initialize this class.
        /// </summary>
        public static void Initialize()
        {
            // Do nothing.
        }

        /// <summary>
        /// Export the Source Database Module for the Categories.
        /// </summary>
        /// <param name="builder">The builder.</param>
        private static void ExportCategoriesHeaderForLua(StringBuilder builder)
        {
            builder.Insert(0, new StringBuilder()
                .AppendLine("---@diagnostic disable: deprecated")
                .AppendLine("-----------------------------------------------------")
                .AppendLine("--   R O O T   C A T E G O R I E S   M O D U L E   --")
                .AppendLine("-----------------------------------------------------")
                .AppendLine("--   WARNING: This file is dynamically generated   --")
                .AppendLine("-----------------------------------------------------")
                .AppendLine("local appName, _ = ...;"));
        }

        /// <summary>
        /// Export all of the local variable names in the key values list.
        /// </summary>
        /// <param name="builder">The builder.</param>
        /// <param name="keyValues">The key values.</param>
        private static void ExportLocalVariablesForJSON(StringBuilder builder, IEnumerable<KeyValuePair<string, string>> keyValues)
        {
            int count = 0;
            var builder2 = new StringBuilder("var ");
            foreach (var pair in keyValues)
            {
                if (count++ > 0) builder2.Append(',');
                builder2.Append(pair.Key);
                builder2.Append(" = ");
                builder2.Append(pair.Value);
            }
            builder2.Append(';').AppendLine();
            if(count > 0) builder.Insert(0, builder2);
        }

        /// <summary>
        /// Export all of the local variable names in the key values list.
        /// </summary>
        /// <param name="builder">The builder.</param>
        private static void ExportLocalVariablesForLua(StringBuilder builder)
        {
            if (builder.ToString().Contains("_.Settings"))
            {
                builder.Replace("_.Settings", "settings");
                FUNCTION_SHORTCUTS["settings"] = "_.Settings";
            }
            var keys = FUNCTION_SHORTCUTS.Keys.ToList();
            keys.Sort(Framework.Compare);

            int count = 0;
            var builder2 = new StringBuilder("local ");
            foreach (var key in keys)
            {
                if (count++ > 0) builder2.Append(',');
                builder2.Append(key);
            }
            builder2.Append('=');
            count = 0;
            foreach (var key in keys)
            {
                if (count++ > 0) builder2.Append(',');
                builder2.Append(FUNCTION_SHORTCUTS[key]);
            }
            builder2.Append(';').AppendLine();
            builder.Insert(0, builder2);

            // Now that we're finished with these, let's clear it.
            FUNCTION_SHORTCUTS.Clear();
        }

        /// <summary>
        /// Export export a single local table for table referencing without a limit
        /// </summary>
        /// <param name="builder">The builder.</param>
        /// <param name="keyValues">The key values.</param>
        private static void ExportTableReferenceForLua(StringBuilder builder, IEnumerable<KeyValuePair<string, string>> keyValues)
        {
            int count = 0;
            // alternate compression
            var builder2 = new StringBuilder("local a={");
            foreach (var table in keyValues)
            {
                if (count++ > 0) builder2.Append(',');
                builder2.Append(table.Value);
            }
            builder2.Append("};").AppendLine();
            builder.Insert(0, builder2);
        }

        /// <summary>
        /// Convert the data to an English-localized format.
        /// This is done to properly handle floating point numbers.
        /// </summary>
        /// <param name="data">The raw data.</param>
        /// <returns>The english-formatted string.</returns>
        public static string ToString(object data)
        {
            return Convert.ToString(data, CultureInfo.InvariantCulture);
        }
    }
}
