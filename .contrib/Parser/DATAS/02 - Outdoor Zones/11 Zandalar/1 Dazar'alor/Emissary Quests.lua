---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(THE_GREAT_SEAL, {
		n(EMISSARY_QUESTS, {
			q(50606, {	-- Horde War Effort [The Honorbound] [Tier 2]
				["provider"] = { "n", 135447 },	-- Ransa Greyfeather
				["coord"] = { 58.0, 62.6, DAZARALOR },
				["races"] = HORDE_ONLY,
				["isWorldQuest"] = true,
				["lvl"] = 120,
				["sym"] = { { "select", "itemID", 165871, 163857 } },		-- Honorbound Equipment Cache & Azerite Armor Cache
			}),
			q(54455, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 }, ["minReputation"] = { FACTION_THE_HONORBOUND, EXALTED } }, {	-- Supplies from the Honorbound
				["provider"] = { "n", 135447 },	-- Ransa Greyfeather
				["coord"] = { 58.0, 62.6, DAZARALOR },
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = 120,
				["groups"] = {
					i(166299, {	-- Honorbound Supplies
						i(166879),	-- Rallying War Banner (TOY!)
						i(166311),	-- Technique: Contract: The Honorbound [Rank 3] (RECIPE!)
					}),
				},
			})),
			q(54462, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 }, ["minReputation"] = { FACTION_ZANDALARI_EMPIRE, EXALTED } }, {	-- Supplies from the Zandalari Empire
				["provider"] = { "n", 131287 },	-- Natal'hakata
				["coord"] = { 67.07, 71.44, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = 120,
				["groups"] = {
					i(166292, {	-- Zandalari Empire Supplies
						i(166701),	-- Warbeast Kraal Dinner Bell (TOY!)
					}),
				},
			})),
			q(50598, {	-- Zandalari Empire
				["provider"] = { "n", 131287 },	-- Natal'hakata
				["coord"] = { 67.07, 71.44, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
				["isWorldQuest"] = true,
				["lvl"] = 120,
				["groups"] = {
					i(165866, {	-- Zandalari Empire Equipment Cache
						["sym"] = {
							-- Include the one extra.
							{"select", "mapID", ZULDAZAR},
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
		m(DAZARALOR, {
			n(FACTIONS, {
				n(EMISSARY_QUESTS, {
					q(54626),	-- Paragon of the Honorbound
					q(54632),	-- Paragon of the Zandalari Empire
				}),
			}),
		}),
	}),
})));
