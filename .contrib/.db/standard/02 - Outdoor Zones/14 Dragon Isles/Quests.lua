---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(QUESTS, {
		q(65436, {	-- The Dragon Isles Await [A]
			["provider"] = { "n", 189569 },	-- Wrathion
			["coord"] = { 79.8, 27.2, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
			["groups"] = {
				i(205456, {	-- Lost Dragonscale
					["timeline"] = { ADDED_10_1_0 },
				}),
			},
		}),
		q(65435, {	-- The Dragon Isles Await [H]
			["provider"] = { "n", 190239 },	-- Ebyssian
			["coord"] = { 44.2, 38.2, ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["groups"] = {
				i(205458, {	-- Lost Dragonscale
					["timeline"] = { ADDED_10_1_0 },
				}),
			},
		}),
		q(66577, {	-- Aspectral Invitation [A]
			["sourceQuests"] = {
				66513,	-- Ground Leave [A]
				65436,	-- The Dragon Isles Await [A]
			},
			["provider"] = { "n", 189569 },	-- Wrathion
			["coord"] = { 79.8, 27.1, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
		}),
		q(65437, {	-- Aspectral Invitation [H]
			["sourceQuests"] = {
				66534,	-- Ground Leave [H]
				65435,	-- The Dragon Isles Await [H]
			},
			["provider"] = { "n", 190239 },	-- Ebyssian
			["coord"] = { 44.1, 38.0, ORGRIMMAR },
			["races"] = HORDE_ONLY,
		}),
		q(66589, {	-- Expeditionary Coordination [A]
			["sourceQuests"] = {
				65101,	-- An Iconic, Draconic, Look [A]
				66577,	-- Aspectral Invitation [A]
			},
			["provider"] = { "n", 189602 },	-- Toddy Whiskers
			["coord"] = { 79.7, 27.3, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
		}),
		q(65443, {	-- Expeditionary Coordination [H]
			["sourceQuests"] = {
				65613,	-- An Iconic, Draconic, Look [H]
				65437,	-- Aspectral Invitation [H]
			},
			["provider"] = { "n", 184793 },	-- Naleidea Rivergleam
			["coord"] = { 44.2, 37.8, ORGRIMMAR },
			["races"] = HORDE_ONLY,
		}),
		q(72240, {	-- The Obsidian Warders [A]
			["sourceQuests"] = {
				65101,	-- An Iconic, Draconic, Look [A]
				66577,	-- Aspectral Invitation [A]
			},
			["provider"] = { "n", 189603 },	-- Scalecommander Azurathel
			["coord"] = { 79.9, 27.1, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
		}),
		q(72256, {	-- The Dark Talons [H]
			["sourceQuests"] = {
				65613,	-- An Iconic, Draconic, Look [H]
				65437,	-- Aspectral Invitation [H]
			},
			["provider"] = { "n", 184786 },	-- Scalecommander Cindrethresh
			["coord"] = { 44.0, 38.3, ORGRIMMAR },
			["races"] = HORDE_ONLY,
		}),
		q(66596, {	-- Whispers in the Winds [A]
			["sourceQuests"] = {
				66589,	-- Expeditionary Coordination [A]
				72240,	-- The Obsidian Warders [A]
			},
			["provider"] = { "n", 193450 },	-- Archmage Khadgar
			["coord"] = { 23.0, 56.1, STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
		}),
		q(65439, {	-- Whispers in the Winds [H]
			["sourceQuests"] = {
				65443,	-- Expeditionary Coordination [H]
				72256,	-- The Dark Talons [H]
			},
			["provider"] = { "n", 193450 },	-- Archmage Khadgar
			["coord"] = { 55.9, 12.6, DUROTAR },
			["races"] = HORDE_ONLY,
		}),
		q(72481, {	-- The Waking Shore Tour
			["sourceQuests"] = { 68798 },	-- Dragon Glyphs and You
			["provider"] = { "n", 193411 },	-- Celormu
			["coord"] = { 73.3, 52.1, THE_WAKING_SHORES },
		}),
		q(72483, {	-- The Ohn'ahran Plains Tour
			["sourceQuests"] = { 72481 },	-- The Waking Shore Tour
			["provider"] = { "n", 193411 },	-- Celormu
			["coord"] = { 73.3, 52.1, THE_WAKING_SHORES },
		}),
		q(72485, {	-- The Azure Span Tour
			["sourceQuests"] = { 72483 },	-- The Ohn'ahran Plains Tour
			["provider"] = { "n", 199118 },	-- Celormu
			["coord"] = { 88.0, 32.6, OHNAHRAN_PLAINS },
		}),
		q(72487, {	-- The Thaldraszus Tour
			["sourceQuests"] = { 72485 },	-- The Azure Span Tour
			["provider"] = { "n", 199119 },	-- Celormu
			["coord"] = { 63.1, 13.6, THE_AZURE_SPAN },
		}),
		q(72482, {	-- The Waking Shores Advanced Tour
			["sourceQuests"] = {
				72487,	-- The Thaldraszus Tour
				DF_ACCOUNT_CAMPAIGN_QUEST,
			},
			["sourceQuestNumRequired"] = 1,
			["provider"] = { "n", 199120 },	-- Celormu
			["coord"] = { 46.0, 63.0, THALDRASZUS },
		}),
		q(72484, {	-- The Ohn'ahran Plains Advanced Tour
			["sourceQuests"] = { 72482 },	-- The Waking Shores Advanced Tour
			["provider"] = { "n", 193411 },	-- Celormu
			["coord"] = { 73.3, 52.1, THE_WAKING_SHORES },
		}),
		q(72486, {	-- The Azure Span Advanced Tour
			["sourceQuests"] = { 72484 },	-- The Ohn'ahran Plains Advanced Tour
			["provider"] = { "n", 199118 },	-- Celormu
			["coord"] = { 88.0, 36.2, OHNAHRAN_PLAINS },
		}),
		q(72488, {	-- The Thaldraszus Advanced Tour
			["sourceQuests"] = { 72486 },	-- The Azure Span Advanced Tour
			["provider"] = { "n", 199119 },	-- Celormu
			["coord"] = { 63.1, 13.6, THE_AZURE_SPAN },
		}),
		q(72972, {	-- The Waking Shores Reverse Tour
			["sourceQuests"] = {
				72488,	-- The Thaldraszus Advanced Tour
				DF_ACCOUNT_CAMPAIGN_QUEST,
			},
			["sourceQuestNumRequired"] = 1,
			["provider"] = { "n", 193411 },	-- Celormu
			["coord"] = { 73.3, 52.1, THE_WAKING_SHORES },
			["timeline"] = { ADDED_10_0_5 },
		}),
		q(72982, {	-- The Ohn'ahran Plains Reverse Tour
			["sourceQuests"] = { 72972 },	-- The Waking Shores Reverse Tour
			["provider"] = { "n", 193411 },	-- Celormu
			["coord"] = { 73.3, 52.1, THE_WAKING_SHORES },
			["timeline"] = { ADDED_10_0_5 },
		}),
		q(72984, {	-- The Azure Span Reverse Tour
			["sourceQuests"] = { 72982 },	-- The Ohn'ahran Plains Reverse Tour
			["provider"] = { "n", 199118 },	-- Celormu
			["coord"] = { 88.0, 36.2, OHNAHRAN_PLAINS },
			["timeline"] = { ADDED_10_0_5 },
		}),
		q(72985, {	-- The Thaldraszus Reverse Tour
			["sourceQuests"] = { 72984 },	-- The Azure Span Reverse Tour
			["provider"] = { "n", 199119 },	-- Celormu
			["coord"] = { 63.1, 13.6, THE_AZURE_SPAN },
			["timeline"] = { ADDED_10_0_5 },
		}),
		q(78113, {	-- The Challenge Tour
			-- ["sourceQuests"] = { 72985 },	-- The Thaldraszus Reverse Tour
			["provider"] = { "n", 193411 },	-- Celormu
			["coord"] = { 73.3, 52.1, THE_WAKING_SHORES },
			["timeline"] = { ADDED_10_1_7 },
		}),
	}),
})));
