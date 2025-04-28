﻿using System;
using System.Collections.Generic;

namespace ATT.DB.Types
{
    /// <summary>
    /// https://wago.tools/db2/Criteria
    /// </summary>
    internal class Criteria : IDBType
    {
        public long ID { get; set; }
        public long Type { get; set; }
        public long Asset { get; set; }
        public long Modifier_tree_ID { get; set; }
        public long Start_event { get; set; }
        public long Start_asset { get; set; }
        public long Start_timer { get; set; }
        public long Fail_event { get; set; }
        public long Fail_asset { get; set; }
        public long Flags { get; set; }
        public long Eligibility_world_state_ID { get; set; }
        public long Eligibility_world_state_value { get; set; }

        private TypeFlags _flags => (TypeFlags)Flags;

        public IDictionary<string, object> AsData()
        {
            return new Dictionary<string, object>
            {
                { "criteriaID", ID },
            };
        }

        public bool IsIgnoreFlags() =>
            (_flags & TypeFlags.DoNotDisplay) == TypeFlags.DoNotDisplay;

        public bool IsAllianceOnlyFlags() =>
            (_flags & TypeFlags.Alliance) == TypeFlags.Alliance;

        public bool IsHordeOnlyFlags() =>
            (_flags & TypeFlags.Horde) == TypeFlags.Horde;

        /// <summary>
        /// Returns if this Criteria has some data that we can actually use (i.e. quest, item, npc, etc.)
        /// </summary>
        public bool IsUseful() =>
            GetSourceQuest() > 0 ||
            GetReceivedSpellID() > 0 ||
            GetCastedSpellID() > 0 ||
            GetFactionID() > 0 ||
            GetProviderItem() > 0 ||
            GetProviderNPC() > 0 ||
            GetProviderObject() > 0 ||
            GetRequiredAchievement() > 0 ||
            GetRequiredFlightPath() > 0 ||
            GetRecruitFollowerID() > 0 ||
            GetGarrisonMissionID() > 0 ||
            // Reveal world map overlay "{WorldMapOverlay}" (Exploration stuff)
            Type == 43 ||
            // Equip item in slot "{$Equip Slot}"
            Type == 49 ||
            // Mythic Plus Completed
            Type == 216 ||
            // Learned as new pet (Account Only)
            Type == 155;

        public long GetSourceQuest() =>
            Type == 27 ? Asset : 0;

        /// <summary>
        /// 28: Have the spell "{Spell}" cast on you<para/>
        /// 34: Learn or Know spell "{Spell}"
        /// </summary>
        public long GetReceivedSpellID() =>
            Type == 34 || Type == 28 ? Asset : 0;

        /// <summary>
        /// 29: Cast the spell "{Spell}"
        /// </summary>
        public long GetCastedSpellID() =>
            Type == 29 ? Asset : 0;

        public long GetExplorationWorldMapOverlayID() =>
            Type == 43 ? Asset : 0;

        public long GetFactionID() =>
            Type == 46 ? Asset : 0;

        public long GetRecruitFollowerID() =>
            Type == 176 ? Asset : 0;

        public long GetGarrisonMissionID() =>
            Type == 174 ? Asset : 0;

        public long GetProviderItem() =>
        Type == 36 || Type == 41 || Type == 42 || Type == 57 ? Asset : 0;

        public long GetProviderNPC() =>
            (Type == 0 || Type == 96) && Asset > 0 ? Asset : 0;

        public long GetProviderObject() =>
            Type == 68 || Type == 72 ? Asset : 0;

        public long GetRequiredAchievement() =>
            Type == 8 ? Asset : 0;

        public long GetRequiredFlightPath() =>
            Type == 262 ? Asset : 0;

        public long GetModifierTreeID() =>
            Modifier_tree_ID;
    }
}
