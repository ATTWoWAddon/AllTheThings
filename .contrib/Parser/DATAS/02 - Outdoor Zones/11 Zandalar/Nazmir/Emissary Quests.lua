---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(NAZMIR, {
		n(EMISSARY_QUESTS, {
			q(54460, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 }, ["minReputation"] = { FACTION_TALANJIS_EXPEDITION, EXALTED } }, {	-- Supplies from Talanji's Expedition
				["provider"] = { "n", 135459 },	-- Provisioner Lija
				["coord"] = { 39.11, 79.47, NAZMIR },
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["groups"] = {
					i(166282, {	-- Talanji's Expedition Supplies
						i(166308),	-- For da Blood God! (TOY!)
						i(166716),	-- Crimson Bat Pup (PET!)
					}),
				},
			})),
			q(50602, {	-- Talanji's Expedition
				["provider"] = { "n", 135459 },	-- Provisioner Lija
				["coord"] = { 39.11, 79.47, NAZMIR },
				["races"] = HORDE_ONLY,
				["isWorldQuest"] = true,
				["lvl"] = 120,
				["groups"] = {
					i(165865, {	-- Nazmir Expeditionary Equipment Cache
						["sym"] = {
							{"select", "mapID", NAZMIR},
							{"find", "headerID", ZONE_REWARDS },
							{"extract", "itemID" },	-- Select the Items.
							{"invtype", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_CLOAK", },	-- Only include a couple of inventory types.
						},
					}),
					i(165863, {	-- Zandalari Weapons Cache
						["sym"] = {
							{"select", "mapID", ZANDALAR},
							{"find", "headerID", ZONE_REWARDS },
							{"extract", "itemID" },	-- Select the Items.
							{"invtype", "INVTYPE_2HWEAPON", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_HOLDABLE", "INVTYPE_RANGED", "INVTYPE_RANGEDRIGHT", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND" },	-- Only include a couple of inventory types.
						},
					}),
					i(163857, {	-- Azerite Armor Cache
						["sym"] = {
							{"sub", "bfa_azerite_armor_chest" },
						},
					}),
				},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	m(ZANDALAR, {
		m(NAZMIR, {
			n(FACTIONS, {
				n(EMISSARY_QUESTS, {
					q(54630),	-- Paragon of Talanji's Expedition
				}),
			}),
		}),
	}),
})));
