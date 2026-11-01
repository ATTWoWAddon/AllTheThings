-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

battleground(MAP.DARKSPEAR_ISLANDS, {
	icon = 441150,
	--lore = "",
	timeline = { TIMELINE.ADDED_1_60_1 },
	groups = {
		n(ACHIEVEMENTS, {
			ach(62049, {	-- Master of Darkspear Islands
				races = HORDE_ONLY,
			}),
			ach(64029, {	-- Master of Darkspear Islands
				races = ALLIANCE_ONLY,
			}),
		}),
		n(FACTIONS, {
			faction(2798, {	-- Darkspear Raiders
				races = HORDE_ONLY,
			}),
			faction(2799, {	-- Theramore Expeditionary Force
				races = ALLIANCE_ONLY,
			}),
		}),
		n(QUESTS, {
			q(98887, {	-- Conflict at Darkspear Islands [Level 30]
				qg = 15350,	-- Horde Warbringer
				coords = HORDE_WARBRINGER_COORDS,
				cost = { { "i", 274895, 3 } },	-- Darkspear Islands Mark of Honor
				races = HORDE_ONLY,
				-- TODO: Wowhead lists two level 30 versions of this quest (98887 and 98888).
				lvl = { 30, 39 },
			}),
			q(98888, {	-- Conflict at Darkspear Islands [Level 30]
				qg = 15350,	-- Horde Warbringer
				coords = HORDE_WARBRINGER_COORDS,
				cost = { { "i", 274895, 3 } },	-- 3x Darkspear Islands Mark of Honor
				races = HORDE_ONLY,
				lvl = { 30, 39 },
			}),
			q(98889, {	-- Conflict at Darkspear Islands [Level 40]
				qg = 15350,	-- Horde Warbringer
				coords = HORDE_WARBRINGER_COORDS,
				cost = { { "i", 274895, 3 } },	-- Darkspear Islands Mark of Honor
				races = HORDE_ONLY,
				lvl = { 40, 49 },
			}),
			q(98891, {	-- Conflict at Darkspear Islands [Level 50]
				qg = 15350,	-- Horde Warbringer
				coords = HORDE_WARBRINGER_COORDS,
				cost = { { "i", 274895, 3 } },	-- Darkspear Islands Mark of Honor
				races = HORDE_ONLY,
				lvl = { 50, 59 },
			}),
			q(98893, {	-- Conflict at Darkspear Islands [Level 60]
				qg = 15350,	-- Horde Warbringer
				coords = HORDE_WARBRINGER_COORDS,
				cost = { { "i", 274895, 3 } },	-- Darkspear Islands Mark of Honor
				races = HORDE_ONLY,
				lvl = { 60, 69 },
			}),
			q(98895, {	-- Darkspear Islands Clash [Level 30]
				qg = 15351,	-- Alliance Brigadier General
				coords = ALLIANCE_BRIGADIER_COORDS,
				cost = { { "i", 274895, 3 } },	-- 3x Darkspear Islands Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 30, 39 },
			}),
			q(98896, {	-- Darkspear Islands Clash [Level 30]
				qg = 15351,	-- Alliance Brigadier General
				coords = ALLIANCE_BRIGADIER_COORDS,
				races = ALLIANCE_ONLY,
				-- TODO: Wowhead lists two level 30 versions of this quest (98895 and 98896) and doesn't show this one's objectives yet.
				lvl = { 30, 39 },
			}),
			q(98897, {	-- Darkspear Islands Clash [Level 40]
				qg = 15351,	-- Alliance Brigadier General
				coords = ALLIANCE_BRIGADIER_COORDS,
				cost = { { "i", 274895, 3 } },	-- Darkspear Islands Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 40, 49 },
			}),
			q(98899, {	-- Darkspear Islands Clash [Level 50]
				qg = 15351,	-- Alliance Brigadier General
				coords = ALLIANCE_BRIGADIER_COORDS,
				cost = { { "i", 274895, 3 } },	-- Darkspear Islands Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 50, 59 },
			}),
			q(98901, {	-- Darkspear Islands Clash [Level 60]
				qg = 15351,	-- Alliance Brigadier General
				coords = ALLIANCE_BRIGADIER_COORDS,
				cost = { { "i", 274895, 3 } },	-- Darkspear Islands Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 60, 69 },
			}),
			q(98912, {	-- Darkspear's Advanced Care Package [Level 50]
				races = HORDE_ONLY,
				lvl = { 50, 60 },
				-- TODO: Wowhead doesn't list the quest giver or objectives yet.
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					i(285173),	-- Darkspear Advanced Care Package
				},
			}),
			q(98910, {	-- Darkspear's Basic Care Package [Level 30]
				races = HORDE_ONLY,
				lvl = { 30, 39 },
				-- TODO: Wowhead doesn't list the quest giver or objectives yet.
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					i(285171),	-- Darkspear Basic Care Package
				},
			}),
			q(98911, {	-- Darkspear's Standard Care Package [Level 40]
				races = HORDE_ONLY,
				lvl = { 40, 49 },
				-- TODO: Wowhead doesn't list the quest giver or objectives yet.
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					i(285172),	-- Darkspear Standard Care Package
				},
			}),
			q(98903, {	-- The Battle for Darkspear Islands! (Alliance) [Level 30]
				qg = 275273,	-- Brelinda McFarry
				coord = { 63.4, 58.8, MAP.THE_BARRENS },
				races = ALLIANCE_ONLY,
				lvl = { 30, 39 },
			}),
			q(98904, {	-- The Battle for Darkspear Islands! (Alliance) [Level 40]
				qg = 275273,	-- Brelinda McFarry
				coord = { 63.4, 58.8, MAP.THE_BARRENS },
				races = ALLIANCE_ONLY,
				lvl = { 40, 49 },
			}),
			q(98905, {	-- The Battle for Darkspear Islands! (Alliance) [Level 50]
				qg = 275273,	-- Brelinda McFarry
				coord = { 63.4, 58.8, MAP.THE_BARRENS },
				races = ALLIANCE_ONLY,
				lvl = { 50, 60 },
			}),
			q(98906, {	-- The Battle for Darkspear Islands! (Horde) [Level 30]
				qg = 275276,	-- Nizook Boof
				coord = { 65.0, 34.8, MAP.THE_BARRENS },
				races = HORDE_ONLY,
				lvl = { 30, 39 },
			}),
			q(98907, {	-- The Battle for Darkspear Islands! (Horde) [Level 40]
				qg = 275276,	-- Nizook Boof
				coord = { 65.0, 34.8, MAP.THE_BARRENS },
				races = HORDE_ONLY,
				lvl = { 40, 49 },
			}),
			q(98908, {	-- The Battle for Darkspear Islands! (Horde) [Level 50]
				qg = 275276,	-- Nizook Boof
				coord = { 65.0, 34.8, MAP.THE_BARRENS },
				races = HORDE_ONLY,
				lvl = { 50, 60 },
			}),
			q(98915, {	-- Theramore Advanced Care Package [Level 50]
				races = ALLIANCE_ONLY,
				lvl = { 50, 60 },
				-- TODO: Wowhead doesn't list the quest giver or objectives yet.
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					i(285170),	-- Theramore Advanced Care Package
				},
			}),
			q(98913, {	-- Theramore Basic Care Package [Level 30]
				races = ALLIANCE_ONLY,
				lvl = { 30, 39 },
				-- TODO: Wowhead doesn't list the quest giver or objectives yet.
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					i(285168),	-- Theramore Basic Care Package
				},
			}),
			q(98914, {	-- Theramore Standard Care Package [Level 40]
				races = ALLIANCE_ONLY,
				lvl = { 40, 49 },
				-- TODO: Wowhead doesn't list the quest giver or objectives yet.
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					i(285169),	-- Theramore Standard Care Package
				},
			}),
		}),
		n(REWARDS, {
			i(274895),	-- Darkspear Islands Mark of Honor
		}),
		n(VENDORS, {
			n(263570, {	-- Creeg Bothunk <Darkspear Raiders Quartermaster>
				coord = { 65.0, 34.4, MAP.THE_BARRENS },
				races = HORDE_ONLY,
				groups = {
					i(272055, {	-- Darkspear Islands Enriched Ration
						minReputation = { 2798, FRIENDLY },	-- Darkspear Raiders, Friendly.
					}),
					i(272053, {	-- Darkspear Islands Field Ration
						minReputation = { 2798, FRIENDLY },	-- Darkspear Raiders, Friendly.
					}),
					i(272054, {	-- Darkspear Islands Iron Ration
						minReputation = { 2798, FRIENDLY },	-- Darkspear Raiders, Friendly.
					}),
					i(272057, {	-- Darkspear Islands Mageweave Bandage
						minReputation = { 2798, FRIENDLY },	-- Darkspear Raiders, Friendly.
					}),
					i(272058, {	-- Darkspear Islands Runecloth Bandage
						minReputation = { 2798, FRIENDLY },	-- Darkspear Raiders, Friendly.
					}),
					i(272056, {	-- Darkspear Islands Silk Bandage
						minReputation = { 2798, FRIENDLY },	-- Darkspear Raiders, Friendly.
					}),
					i(272059),	-- Darkspear Voodoo Seal
					i(272060),	-- Relentless Raider's Seal
					i(272061),	-- Darkspear Voodoo Seal
					i(272062),	-- Relentless Raider's Seal
					i(272063),	-- Darkspear Raider's Cloak
					i(272064),	-- Insurgent's Band
					i(272065),	-- Insurgent's Band
					i(272066),	-- Insurgent's Band
					i(272067),	-- Insurgent's Band
					i(272068),	-- Darkspear Signet
					i(272069),	-- Darkspear Signet
					i(272070),	-- Darkspear Signet
					i(272071),	-- Darkspear Signet
					i(272072),	-- Darkspear Warding Pendant
					i(272073),	-- Darkspear Warding Pendant
					i(272074),	-- Darkspear Warding Pendant
					i(272075),	-- Darkspear Warding Pendant
					i(272076),	-- Darkspear Raider's Cloak
					i(272077),	-- Darkspear Raider's Cloak
					i(272078),	-- Darkspear Raider's Cloak
					i(272079),	-- Darkspear Raider's Reaper
					i(272080),	-- Darkspear Raider's Reaper
					i(272081),	-- Darkspear Raider's Reaper
					i(272082),	-- Darkspear Raider's Reaper
					i(272083),	-- Darkspear Insurgent's Spellblade
					i(272084),	-- Darkspear Insurgent's Spellblade
					i(272085),	-- Darkspear Insurgent's Spellblade
					i(272086),	-- Darkspear Insurgent's Spellblade
					i(272087),	-- Tome of the Darkspear Prophecy
					i(272088),	-- Tome of the Darkspear Prophecy
					i(272089),	-- Tome of the Darkspear Prophecy
					i(272090),	-- Tome of the Darkspear Prophecy
					i(272091),	-- Darkspear Skirmisher's Bludgeon
					i(272092),	-- Darkspear Skirmisher's Bludgeon
					i(272093),	-- Darkspear Skirmisher's Bludgeon
					i(272094),	-- Darkspear Skirmisher's Bludgeon
					i(272095),	-- Raider Gauntlets
					i(272096),	-- Raider Gauntlets
					i(272097),	-- Raider Handwraps
					i(272098),	-- Raider Handwraps
					i(272099),	-- Raider Gloves
					i(272100),	-- Raider Gloves
					i(272101),	-- Raider Handguards
					i(272102),	-- Raider Handguards
					i(272103),	-- Darkspear Shoulderpads
					i(272104),	-- Darkspear Shoulders
					i(272105),	-- Darkspear Pauldrons
					i(272106),	-- Darkspear Epaulets
					i(272107),	-- Darkspear Mantle
					i(272108),	-- Darkspear Spaulders
					i(272958),	-- Darkspear Shoulderguards
				},
			}),
			n(263569, {	-- Bryanna Embreeze <Theramore Expeditionary Force Quartermaster>
				coord = { 63.4, 58.6, MAP.THE_BARRENS },
				races = ALLIANCE_ONLY,
				groups = {
					i(272055, {	-- Darkspear Islands Enriched Ration
						minReputation = { 2799, FRIENDLY },	-- Theramore Expeditionary Force, Friendly.
					}),
					i(272053, {	-- Darkspear Islands Field Ration
						minReputation = { 2799, FRIENDLY },	-- Theramore Expeditionary Force, Friendly.
					}),
					i(272054, {	-- Darkspear Islands Iron Ration
						minReputation = { 2799, FRIENDLY },	-- Theramore Expeditionary Force, Friendly.
					}),
					i(272057, {	-- Darkspear Islands Mageweave Bandage
						minReputation = { 2799, FRIENDLY },	-- Theramore Expeditionary Force, Friendly.
					}),
					i(272058, {	-- Darkspear Islands Runecloth Bandage
						minReputation = { 2799, FRIENDLY },	-- Theramore Expeditionary Force, Friendly.
					}),
					i(272056, {	-- Darkspear Islands Silk Bandage
						minReputation = { 2799, FRIENDLY },	-- Theramore Expeditionary Force, Friendly.
					}),
					i(271903),	-- Enriched Seal
					i(271904),	-- Volunteer's Lucky Seal
					i(271905),	-- Enriched Seal
					i(271906),	-- Volunteer's Lucky Seal
					i(271907),	-- Expeditionary's Cape
					i(271908),	-- Theramore Signet
					i(271909),	-- Theramore Signet
					i(271910),	-- Theramore Signet
					i(271913),	-- Militant's Band
					i(271914),	-- Militant's Band
					i(271915),	-- Militant's Band
					i(271917),	-- Seal of the Expedition
					i(271918),	-- Seal of the Expedition
					i(271919),	-- Seal of the Expedition
					i(271921),	-- Expeditionary's Cape
					i(271922),	-- Expeditionary's Cape
					i(271924),	-- Rebels' Rugged Reaper
					i(271925),	-- Rebels' Rugged Reaper
					i(271926),	-- Rebels' Rugged Reaper
					i(271928),	-- Clever Expeditionary's Spellblade
					i(271929),	-- Clever Expeditionary's Spellblade
					i(271930),	-- Clever Expeditionary's Spellblade
					i(271932),	-- Insurgent's Manifesto
					i(271933),	-- Insurgent's Manifesto
					i(271934),	-- Insurgent's Manifesto
					i(271936),	-- Guerrilla's Jagged Mace
					i(271937),	-- Guerrilla's Jagged Mace
					i(271938),	-- Guerrilla's Jagged Mace
					i(271940),	-- Theramore Gauntlets
					i(271941),	-- Theramore Gauntlets
					i(271945),	-- Theramore Handwraps
					i(271946),	-- Theramore Handwraps
					i(271948),	-- Theramore Gloves
					i(271949),	-- Theramore Gloves
					i(271950),	-- Theramore Handguards
					i(271951),	-- Theramore Handguards
					i(271953),	-- Theramore Shoulderpads
					i(271954),	-- Theramore Shoulders
					i(271955),	-- Theramore Pauldrons
					i(271956),	-- Theramore Epaulets
					i(271957),	-- Theramore Mantle
					i(271959),	-- Theramore Spaulders
					i(272957),	-- Theramore Shoulderguards
				},
			}),
		}),
	},
});
