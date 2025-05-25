using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Reflection.Emit;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/ItemSearchName
    /// </summary>
    [DataModule]
    public class ItemSearchName : IDBType, IWagoItemID
    {
        [ExportableData("itemID")]
        public long ID { get; set; }
        public long ItemID { get {  return ID; } }
        public long AllowableRace { get; set; }
        [Localize]
        public string Display_lang { get; set; }
        public long OverallQualityID { get; set; }
        public long ExpansionID { get; set; }
        public long MinFactionID { get; set; }
        public long MinReputation { get; set; }
        public long AllowableClass { get; set; }
        public long RequiredLevel { get; set; }
        public long RequiredSkill { get; set; }
        public long RequiredSkillRank { get; set; }
        public long RequiredAbility { get; set; }
        public long ItemLevel { get; set; }
        public long Flags_0 { get; set; }
        public long Flags_1 { get; set; }
        public long Flags_2 { get; set; }
        public long Flags_3 { get; set; }
        public long Flags_4 { get; set; }

        #region Data Transformation Helpers
        [ExportableData("q")]
        public object OverallQualityIDHelper
        {
            get
            {
                // CRIEVE NOTE: Item Quality is used in the addon's logic, despite being something that can be obtained dynamically. (albeit slowly, using an API)
                // This might be best to include as a base value for that purpose.
                if (OverallQualityID >= 0) return OverallQualityID;
                return null;
            }
        }

        /*
        [ExportableData("iLvl")]
        public object ItemLevelHelper
        {
            get
            {
                // CRIEVE NOTE: ilvl is dynamically found within the addon's class logic and doesn't need to be built into the DB directly as it has no purpose other than to display information.
                //long iLvl = ItemLevel;
                //if (iLvl > 1) data["iLvl"] = iLvl;
                return null;
            }
        }
        */

        [ExportableData("minReputation")]
        public object MinFactionIDHelper
        {
            get
            {
                // CRIEVE NOTE: This might be useful...
                long minFactionID = MinFactionID;
                if (minFactionID > 0)
                {
                    // NOTE: This value is between 0 and 7, not a reputation xp number.
                    return new List<object> { minFactionID, ConvertReputation(MinReputation) };
                }
                return null;
            }
        }

        [ExportableData("requireSkill")]
        public object RequiredSkillHelper
        {
            get
            {
                // CRIEVE NOTE: This might be useful...
                long requiredSkill = RequiredSkill;
                if (requiredSkill > 0)
                {
                    // This is used to override the skill to be a specialization in most cases where both are specified.
                    long requiredAbility = RequiredAbility;
                    if (requiredAbility > 0) return requiredAbility;
                    return requiredSkill;
                }
                return null;
            }
        }

        [ExportableData("learnedAt")]
        public object RequiredSkillRankHelper
        {
            get
            {
                long requiredSkillRank = RequiredSkillRank;
                if (requiredSkillRank > 0) return requiredSkillRank;
                return null;
            }
        }

        [ExportableData("c")]
        public object AllowableClassHelper
        {
            get
            {
                // Parse Class Requirements
                long allowableClass = AllowableClass;
                if (allowableClass > 0)
                {
                    var classes = new List<long>();
                    ClassTypeFlags classTypeFlags = (ClassTypeFlags)allowableClass;
                    if (!Has(classTypeFlags, ClassTypeFlags.ALL))
                    {
                        bool includedAll = true;
                        foreach (var o in Framework.ALL_CLASSES)
                        {
                            if (o is long classID)
                            {
                                if (Has(classTypeFlags, CLASS_TYPE_FLAGS[classID])) classes.Add(classID);
                                else includedAll = false;
                            }
                        }
                        if (classes.Count > 0 && !includedAll)
                        {
                            classes.Sort();
                            return classes;
                        }
                    }
                }
                return null;
            }
        }

        [ExportableData("r")]
        public object FactionHelper
        {
            get
            {
                // Is this Faction Exclusive?
                if ((Flags_1 & 0x1) == 0x1)  // Horde Only
                {
                    return 1;  // Horde Only!
                }
                else if ((Flags_1 & 0x2) == 0x2)  // Alliance Only
                {
                    return 2;  // Alliance Only!
                }
                return null;
            }
        }

        [ExportableData("races")]
        public object AllowableRaceHelper
        {
            get
            {
                if(FactionHelper == null) return null;

                // Parse Race Requirements
                long allowableRace = AllowableRace;
                if (allowableRace > 0)
                {
                    // CRIEVE NOTE: This parsing is busted. AllowableRace is strangely formatted.
                    var races = new List<long>();
                    RaceTypeFlags flags = (RaceTypeFlags)allowableRace;
                    if (!Has(flags, RaceTypeFlags.ALL))
                    {
                        bool includedAll = true;
                        foreach (var o in Framework.ALL_RACES)
                        {
                            if (o is long raceID)
                            {
                                if (Has(flags, RACE_TYPE_FLAGS[raceID])) races.Add(raceID);
                                else includedAll = false;
                            }
                        }
                        if (races.Count > 0 && !includedAll)
                        {
                            races.Sort();
                            return races;
                        }
                    }
                }
                return null;
            }
        }
        #endregion

        private static readonly Dictionary<long, ClassTypeFlags> CLASS_TYPE_FLAGS = new Dictionary<long, ClassTypeFlags>
        {
            { 1, ClassTypeFlags.WARRIOR },
            { 2, ClassTypeFlags.PALADIN },
            { 3, ClassTypeFlags.HUNTER },
            { 4, ClassTypeFlags.ROGUE },
            { 5, ClassTypeFlags.PRIEST },
            { 6, ClassTypeFlags.DEATH_KNIGHT },
            { 7, ClassTypeFlags.SHAMAN },
            { 8, ClassTypeFlags.MAGE },
            { 9, ClassTypeFlags.WARLOCK },
            { 10, ClassTypeFlags.MONK },
            { 11, ClassTypeFlags.DRUID },
            { 12, ClassTypeFlags.DEMON_HUNTER },
            { 13, ClassTypeFlags.EVOKER },
        };

        private static readonly Dictionary<long, RaceTypeFlags> RACE_TYPE_FLAGS = new Dictionary<long, RaceTypeFlags>
        {
            { 1, RaceTypeFlags.HUMAN },
            { 2, RaceTypeFlags.ORC },
            { 3, RaceTypeFlags.DWARF },
            { 4, RaceTypeFlags.NIGHTELF },
            { 5, RaceTypeFlags.UNDEAD },
            { 6, RaceTypeFlags.TAUREN },
            { 7, RaceTypeFlags.GNOME },
            { 8, RaceTypeFlags.TROLL },
            { 9, RaceTypeFlags.GOBLIN },
            { 10, RaceTypeFlags.BLOODELF },
            { 11, RaceTypeFlags.DRAENEI },
            { 22, RaceTypeFlags.WORGEN },
            { 24, RaceTypeFlags.PANDAREN_NEUTRAL },
            { 25, RaceTypeFlags.PANDAREN_ALLIANCE },
            { 26, RaceTypeFlags.PANDAREN_HORDE },
            { 27, RaceTypeFlags.NIGHTBORNE },
            { 28, RaceTypeFlags.HIGHMOUNTAIN_TAUREN },
            { 29, RaceTypeFlags.VOIDELF },
            { 30, RaceTypeFlags.LIGHTFORGED },
            { 31, RaceTypeFlags.ZANDALARI },
            { 32, RaceTypeFlags.KULTIRAN },
            { 34, RaceTypeFlags.DARKIRON },
            { 35, RaceTypeFlags.VULPERA },
            { 36, RaceTypeFlags.MAGHAR },
            { 37, RaceTypeFlags.MECHAGNOME },
            { 52, RaceTypeFlags.DRACTHYR_ALLIANCE },
            { 70, RaceTypeFlags.DRACTHYR_HORDE },
            { 84, RaceTypeFlags.EARTHEN_HORDE },
            { 85, RaceTypeFlags.EARTHEN_ALLIANCE },
        };

        public bool Has(ClassTypeFlags flags, ClassTypeFlags c)
        {
            return (flags & c) == c;
        }

        public bool Has(RaceTypeFlags flags, RaceTypeFlags c)
        {
            return (flags & c) == c;
        }

        public long ConvertReputation(long level)
        {
            switch (level)
            {
                case 7: return 42000;   // EXALTED
                case 6: return 21000;   // REVERED
                case 5: return 9000;    // HONORED
                case 4: return 3000;    // FRIENDLY
                case 3: return 0;       // NEUTRAL
                case 2: return -3000;   // UNFRIENDLY
                case 1: return -6000;   // HOSTILE
                default: return -42000; // HATED
            }
        }
    }
}
