-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
-- #if AFTER TBC
local DF_JEWELCRAFTING_KNOWLEDGE = 2029;
local TWW_JEWELCRAFTING_KNOWLEDGE = 2791;
root(ROOTS.Professions, prof(JEWELCRAFTING, bubbleDownSelf({ ["requireSkill"] = JEWELCRAFTING }, {
	n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
		ach(18880),	-- Generations of Gemstones I
		ach(18889),	-- Generations of Gemstones II
		ach(18890),	-- Generations of Gemstones III
		ach(18891),	-- Generations of Gemstones IV
		ach(18897, {	-- Can't Crush These
			crit(61640, {	-- Shipment: Blood Jade Amulet
				["_quests"] = { 12958 },	-- Shipment: Blood Jade Amulet
			}),
			crit(61641, {	-- Shipment: Glowing Ivory Figurine
				["_quests"] = { 12959 },	-- Shipment: Glowing Ivory Figurine
			}),
			crit(61642, {	-- Shipment: Wicked Sun Brooch
				["_quests"] = { 12960 },	-- Shipment: Wicked Sun Brooch
			}),
			crit(61643, {	-- Shipment: Intricate Bone Figurine
				["_quests"] = { 12961 },	-- Shipment: Intricate Bone Figurine
			}),
			crit(61644, {	-- Shipment: Bright Armor Relic
				["_quests"] = { 12962 },	-- Shipment: Bright Armor Relic
			}),
			crit(61645, {	-- Shipment: Shifting Sun Curio
				["_quests"] = { 12963 },	-- Shipment: Shifting Sun Curio
			}),
			-- these remaining criteria are generated from DB data in Retail
			-- #IF ANYCLASSIC
			crit(61646, {	-- Nibbler! No!
				["_quests"] = {
					25105,	-- Nibbler! No! [A]
					25158 ,	-- Nibbler! No! [H]
				},
			}),
			crit(61648, {	-- A Present for Lila
				["_quests"] = {
					25154,	-- A Present for Lila [A]
					25160 ,	-- A Present for Lila [H]
				},
			}),
			crit(61650, {	-- Ogrezonians in the Mood
				["_quests"] = {
					25155,	-- Ogrezonians in the Mood [A]
					25161 ,	-- Ogrezonians in the Mood [H]
				},
			}),
			crit(61652, {	-- Elemental Goo
				["_quests"] = {
					25156,	-- Elemental Goo [A]
					25162 ,	-- Elemental Goo [H]
				},
			}),
			crit(149174, {	-- The Latest Fashion!
				["_quests"] = {
					25157,	-- The Latest Fashion! [A]
					25159 ,	-- The Latest Fashion! [H]
				},
			}),
			-- #ENDIF
		}),
		ach(18909, {	-- Fantastic Figurines
			crit(61827, {	-- Figurine - Jade Owl
				["provider"] = { "i", 21748 },	-- Figurine - Jade Owl
			}),
			crit(61828, {	-- Figurine - Golden Hare
				["provider"] = { "i", 21756 },	-- Figurine - Golden Hare
			}),
			crit(61829, {	-- Figurine - Black Pearl Panther
				["provider"] = { "i", 21758 },	-- Figurine - Black Pearl Panther
			}),
			crit(61830, {	-- Figurine - Truesilver Crab
				["provider"] = { "i", 21760 },	-- Figurine - Truesilver Crab
			}),
			crit(61831, {	-- Figurine - Truesilver Boar
				["provider"] = { "i", 21763 },	-- Figurine - Truesilver Boar
			}),
			crit(61832, {	-- Figurine - Ruby Serpent
				["provider"] = { "i", 21769 },	-- Figurine - Ruby Serpent
			}),
			crit(61833, {	-- Figurine - Emerald Owl
				["provider"] = { "i", 21777 },	-- Figurine - Emerald Owl
			}),
			crit(61834, {	-- Figurine - Black Diamond Crab
				["provider"] = { "i", 21784 },	-- Figurine - Black Diamond Crab
			}),
			crit(61836, {	-- Figurine - Felsteel Boar
				["provider"] = { "i", 24124 },	-- Figurine - Felsteel Boar
			}),
			crit(61837, {	-- Figurine - Dawnstone Crab
				["provider"] = { "i", 24125 },	-- Figurine - Dawnstone Crab
			}),
			crit(61835, {	-- Figurine - Dark Iron Scorpid
				["provider"] = { "i", 21789 },	-- Figurine - Dark Iron Scorpid
			}),
			crit(61838, {	-- Figurine - Living Ruby Serpent
				["provider"] = { "i", 24126 },	-- Figurine - Living Ruby Serpent
			}),
			crit(61839, {	-- Figurine - Talasite Owl
				["provider"] = { "i", 24127 },	-- Figurine - Talasite Owl
			}),
			crit(61840, {	-- Figurine - Nightseye Panther
				["provider"] = { "i", 24128 }	-- Figurine - Nightseye Panther
			}),
			crit(61841, {	-- Figurine - Empyrean Tortoise
				["provider"] = { "i", 35693 },	-- Figurine - Empyrean Tortoise
			}),
			crit(61842, {	-- Figurine - Khorium Boar
				["provider"] = { "i", 35694 },	-- Figurine - Khorium Boar
			}),
			crit(61843, {	-- Figurine - Crimson Serpent
				["provider"] = { "i", 35700 },	-- Figurine - Crimson Serpent
			}),
			crit(61844, {	-- Figurine - Shadowsong Panther
				["provider"] = { "i", 35702 },	-- Figurine - Shadowsong Panther
			}),
			crit(61845, {	-- Figurine - Seaspray Albatross
				["provider"] = { "i", 35703 },	-- Figurine - Seaspray Albatross
			}),
			crit(61846, {	-- Figurine - Ruby Hare
				["provider"] = { "i", 42341 },	-- Figurine - Ruby Hare
			}),
			crit(61847, {	-- Figurine - Twilight Serpent
				["provider"] = { "i", 42395 },	-- Figurine - Twilight Serpent
			}),
			crit(61848, {	-- Figurine - Sapphire Owl
				["provider"] = { "i", 42413 },	-- Figurine - Sapphire Owl
			}),
			crit(61849, {	-- Figurine - Emerald Boar
				["provider"] = { "i", 42418 },	-- Figurine - Emerald Boar
			}),
			crit(61850, {	-- Figurine - Monarch Crab
				["provider"] = { "i", 44063 },	-- Figurine - Monarch Crab
			}),
			crit(61851, {	-- Figurine - King of Boars
				["_quests"] = { 28778 },	-- Broken Boar Figurine
			}),
			crit(61852, {	-- Figurine - Demon Panther
				["_quests"] = { 25047 },	-- Broken Panther Figurine
			}),
			crit(61853, {	-- Figurine - Earthen Guardian
				["_quests"] = { 28776 },	-- Broken Earthen Figurine
			}),
			crit(61854, {	-- Figurine - Jeweled Serpent
				["_quests"] = { 28775 },	-- Broken Serpent Figurine
			}),
			crit(61855, {	-- Figurine - Dream Owl
				["_quests"] = { 28777 },	-- Broken Owl Figurine
			}),
		}),
		ach(18893),	-- Plentiful Prospects
		ach(18727),	-- Rave Leader
	})),
	expansion(EXPANSION.CATA, applyclassicphase(CATA_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
		n(QUESTS, {
			q(28778, {	-- Broken Boar Figurine
				["provider"] = { "i", 65895 },	-- Figurine - King of Boars
				-- #if BEFORE 10.2.
				["classes"] = { DEATHKNIGHT, PALADIN, WARRIOR },
				-- #endif
				["groups"] = {
					i(52351),	-- Figurine - King of Boars
				},
			}),
			q(28776, {	-- Broken Earthen Figurine
				["provider"] = { "i", 65897 },	-- Figurine - Earthen Guardian
				-- #if BEFORE 10.2.
				["classes"] = { DEATHKNIGHT, PALADIN, WARRIOR, DRUID, DEMONHUNTER, MONK },
				-- #endif
				["groups"] = {
					i(52352),	-- Figurine - Earthen Guardian
				},
			}),
			q(28777, {	-- Broken Owl Figurine
				["provider"] = { "i", 65894 },	-- Figurine - Dream Owl
				-- #if BEFORE 10.2.
				["classes"] = { PALADIN, SHAMAN, DRUID, MONK, PRIEST },
				-- #endif
				["groups"] = {
					i(52354),	-- Figurine - Dream Owl
				},
			}),
			q(25047, {	-- Broken Panther Figurine
				["provider"] = { "i", 52197 },	-- Figurine - Demon Panther
				-- #if BEFORE 10.2.
				["classes"] = { HUNTER, SHAMAN, MONK, DEMONHUNTER, DRUID, ROGUE },
				-- #endif
				["groups"] = {
					i(52199),	-- Figurine - Demon Panther
				},
			}),
			q(28775, {	-- Broken Serpent Figurine
				["provider"] = { "i", 65896 },	-- Figurine - Jeweled Serpent
				-- #if BEFORE 10.2.
				["classes"] = { SHAMAN, DRUID, MONK, PALADIN, PRIEST, MAGE, WARLOCK },
				-- #endif
				["groups"] = {
					i(52353),	-- Figurine - Jeweled Serpent
				},
			}),
		}),
	}))),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18773, {	-- Jewelhammer's Focus
				["provider"] = { "i", 153716 },	-- Jewelhammer's Focus
			}),
		})),
		n(QUESTS, {
			q(54479, {	-- Jeweled Designs [A]
				["provider"] = { "n", 130368 },	-- Samuel D. Colton III
				["coord"] = { 75.2, 9.9, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },
			}),
			q(54480, {	-- Jeweled Designs [H]
				["provider"] = { "n", 122695 },	-- Seshuli
				["coord"] = { 47.1, 37.9, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },
			}),
			-- Tools of Trade Questline
			q(49570, {	-- A Rocky Start [A]
				["provider"] = { "o", 278570 },	-- Ancient Journal
				["coord"] = { 75.0, 10.2, BORALUS },
				["description"] = "This quest chain requires 150 in Kul Tiran Jewelcrafting.",
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(49585, {	-- A Rocky Start [H]
				["provider"] = { "o", 278570 },	-- Ancient Journal
				["coord"] = { 46.9, 38.0, DAZARALOR },
				["description"] = "This quest chain requires 150 in Zandalari Jewelcrafting.",
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(49571, {	-- Digging Through the Past [A]
				["sourceQuests"] = { 49570 },	-- A Rocky Start [A]
				["provider"] = { "n", 130399 },	-- Zooey Inksprocket
				["coord"] = { 73.4, 6.3, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(155678),	-- Ancient Journal Transcription (QI!)
					i(155587),	-- Primordial Races: Runes and Writings (QI!)
					i(155588),	-- Scrolls of the Stonefather (QI!)
					i(155589),	-- The Dungard Codex (QI!)
				},
			}),
			q(49586, {	-- Digging Through the Past [H]
				["sourceQuests"] = { 49585 },	-- A Rocky Start [H]
				["provider"] = { "n", 130901 },	-- Chronicler Grazzul
				["coord"] = { 42.3, 39.7, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(155678),	-- Ancient Journal Transcription (QI!)
					i(155587),	-- Primordial Races: Runes and Writings (QI!)
					i(155588),	-- Scrolls of the Stonefather (QI!)
					i(155589),	-- The Dungard Codex (QI!)
				},
			}),
			q(49574, {	-- The Shrine of Storms
				["sourceQuests"] = { 49571 },	-- Digging Through the Past [A]
				["provider"] = { "n", 130368 },	-- Samuel D. Colton III
				["coord"] = { 75.2, 9.9, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(49589, {	-- The Shrine of the Dawning
				["sourceQuests"] = { 49586 },	-- Digging Through the Past [H]
				["provider"] = { "n", 122695 },	-- Seshuli
				["coord"] = { 47.1, 37.9, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(49577, {	-- Cracking the Surface [A]
				["sourceQuests"] = { 49574 },	-- The Shrine of Storms
				["provider"] = { "n", 150898 },	-- Shrine of Storms
				["coord"] = { 60.7, 58.5, STORMSONG_VALLEY },
				["modelScale"] = 2,
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(155590),	-- Shard of Golden Beryl (QI!)
				},
			}),
			q(49583, {	-- Out With the Old [H]
				["sourceQuests"] = { 49589 },	-- The Shrine of the Dawning
				["provider"] = { "n", 150897 },	-- Shrine of the Dawning
				["coord"] = { 61.4, 37.2, NAZMIR },
				["modelScale"] = 2,
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(55585, {	-- A Promising Beginning [A]
				["sourceQuests"] = { 49577 },	-- Cracking the Surface [A]
				["provider"] = { "n", 152489 },	-- Shrine of Storms
				["coord"] = { 60.7, 58.5, STORMSONG_VALLEY },
				["modelScale"] = 2,
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(55592, {	-- A Promising Beginning [H]
				["sourceQuests"] = { 49583 },	-- Out With the Old [H]
				["provider"] = { "n", 152490 },	-- Shrine of the Dawning
				["coord"] = { 61.4, 37.2, NAZMIR },
				["modelScale"] = 2,
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(49572, {	-- The Shrine of the Sea
				["sourceQuests"] = { 55585 },	-- A Promising Beginning [A]
				["provider"] = { "n", 130368 },	-- Samuel D. Colton III
				["coord"] = { 75.2, 9.9, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(49587, {	-- The Shrine of Nature
				["sourceQuests"] = { 55592 },	-- A Promising Beginning [H]
				["provider"] = { "n", 122695 },	-- Seshuli
				["coord"] = { 47.1, 37.9, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(49575, {	-- Tol Dagor: Jewel of the Tides
				["sourceQuests"] = { 49572 },	-- The Shrine of the Sea
				["provider"] = { "n", 150893 },	-- Shrine of the Sea
				["coord"] = { 46.4, 23.5, TIRAGARDE_SOUND },
				["modelScale"] = 2,
				["races"] = ALLIANCE_ONLY,
				["maps"] = { 974, 975, 976, 977, 978, 979, 980 },	-- Tol Dagor
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(155648),	-- Jewel of the Tides (QI!)
				},
			}),
			q(49582, {	-- Atal'Dazar: Not All That Glitters...
				["sourceQuests"] = { 49587 },	-- The Shrine of Nature
				["provider"] = { "n", 150894 },	-- Shrine of Nature
				["coord"] = { 43.2, 64.3, ZULDAZAR },
				["modelScale"] = 2,
				["races"] = HORDE_ONLY,
				["maps"] = { 934, 935 },	-- Atal'Dazar
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(155666),	-- Eye of Dazar (QI!)
				},
			}),
			q(55590, {	-- Setting Things Right [A]
				["sourceQuests"] = { 49575 },	-- Tol Dagor: Jewel of the Tides
				["provider"] = { "n", 152495 },	-- Shrine of the Sea
				["coord"] = { 46.4, 23.5, TIRAGARDE_SOUND },
				["modelScale"] = 2,
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(55596, {	-- Setting Things Right [H]
				["sourceQuests"] = { 49582 },	-- Atal'Dazar: Not All That Glitters...
				["provider"] = { "n", 152496 },	-- Shrine of Nature
				["coord"] = { 43.2, 64.3, ZULDAZAR },
				["modelScale"] = 2,
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(49573, {	-- The Shrine of the Eventide
				["sourceQuests"] = { 55585 },	-- A Promising Beginning [A]
				["provider"] = { "n", 130368 },	-- Samuel D. Colton III
				["coord"] = { 75.2, 9.9, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(49588, {	-- The Shrine of the Sands
				["sourceQuests"] = { 55592 },	-- A Promising Beginning
				["provider"] = { "n", 122695 },	-- Seshuli
				["coord"] = { 47.1, 37.9, DAZARALOR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(49576, {	-- High Prospects
				["sourceQuests"] = { 49573 },	-- The Shrine of the Eventide
				["provider"] = { "n", 150896 },	-- Shrine of the Eventide
				["coord"] = { 34.1, 35.5, DRUSTVAR },
				["modelScale"] = 2,
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(155661),	-- Pristine Kubiline Shards (QI!)
					i(155830),	-- Runic Core (QI!)
				},
			}),
			q(49581, {	-- Sun-Speckled Dunes
				["sourceQuests"] = { 49588 },	-- The Shrine of the Sands
				["provider"] = { "n", 150895 },	-- Shrine of the Sands
				["coord"] = { 44.2, 38.0, VOLDUN },
				["modelScale"] = 2,
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
				["g"] = {
					i(155664),	-- Polished Fire Spinel (QI!)
					i(155665),	-- Rough Fire Spinel (QI!)
				},
			}),
			q(55586, {	-- Polished Up [A]
				["sourceQuests"] = { 49576 },	-- High Prospects
				["provider"] = { "n", 152497 },	-- Shrine of the Eventide
				["coord"] = { 34.1, 35.5, DRUSTVAR },
				["modelScale"] = 2,
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(55594, {	-- Polished Up [H]
				["sourceQuests"] = { 49581 },	-- Sun-Speckled Dunes
				["provider"] = { "n", 152493 },	-- Shrine of the Sands
				["coord"] = { 44.2, 38.0, VOLDUN },
				["modelScale"] = 2,
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5 },
			}),
			q(49584, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- The Missing Chapter [A]
				["sourceQuests"] = {
					55586,	-- Polished Up [A]
					55590,	-- Setting Things Right [A]
				},
				["provider"] = { "n", 130368 },	-- Samuel D. Colton III
				["coord"] = { 75.2, 9.9, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					r(256703),	-- Jewelhammer's Focus
					i(155668),	-- The Missing Chapter (QI!)
					i(155669),	-- Transcribed Final Chapter (QI!)
				},
			})),
			q(49599, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {	-- The Missing Chapter [H]
				["sourceQuests"] = {
					55594,	-- Polished Up [H]
					55596,	-- Setting Things Right [H]
				},
				["provider"] = { "n", 122695 },	-- Seshuli
				["coord"] = { 47.1, 37.9, DAZARALOR },
				["races"] = HORDE_ONLY,
				["g"] = {
					r(256703),	-- Jewelhammer's Focus
					i(155668),	-- The Missing Chapter (QI!)
					i(155669),	-- Transcribed Final Chapter (QI!)
				},
			})),
		}),
	})),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
			ach(18941, {	-- Dazzling Dragons
			-- #if BEFORE 10.2.0
				crit(61906, {	-- Jeweled Ruby Whelpling
					["provider"] = { "i", 193887 },	-- Jeweled Ruby Whelpling
				}),
				crit(61909, {	-- Jeweled Emerald Whelpling
					["provider"] = { "i", 193888 },	-- Jeweled Emerald Whelpling
				}),
				crit(61911, {	-- Jeweled Sapphire Whelpling
					["provider"] = { "i", 193886 },	-- Jeweled Sapphire Whelpling
				}),
				crit(61912, {	-- Jeweled Onyx Whelpling
					["provider"] = { "i", 193889 },	-- Jeweled Onyx Whelpling
				}),
				crit(61913, {	-- Jeweled Amber Whelpling
					["provider"] = { "i", 193885 },	-- Jeweled Amber Whelpling
				}),
			-- #else
				-- automated properly
			-- #endif
			}),
		})),
		n(QUESTS, {
			q(70365, {	-- To the Dragon Isles: Jewelcrafting
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Jewelcrafting.",
				["provider"] = { "n", 192121 },	-- Falron Greygold
				["coord"] = { 25.4, 54.2, THE_WAKING_SHORES },
				["lockCriteria"] = { 1,
					"spellID", 366250,	-- Dragon Isles Jewelcrafting
					"questID", 72247,	-- Dragon Isles Jewelcrafting
				},
			}),
			q(72247, {	-- To the Dragon Isles: Jewelcrafting
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Jewelcrafting.",
				["provider"] = { "n", 198398 },	-- Misty Catseye
				["coord"] = { 76.2, 33.6, THE_WAKING_SHORES },
				["lockCriteria"] = { 1,
					"spellID", 366250,	-- Dragon Isles Jewelcrafting
					"questID", 70365,	-- Dragon Isles Jewelcrafting
				},
			}),
			q(70032, {	-- Artisan's Supply: Jeweler's Specs
				["providers"] = {
					{ "n", 192121 },	-- Falron Greygold
					{ "n", 190103 },	-- Uluami
				},
				["coords"] = {
					{ 25.4, 54.2, THE_WAKING_SHORES },
					{ 65.3, 25.3, OHNAHRAN_PLAINS },
				},
				["cost"] = {{ "i", 193037, 1 }},	-- Sundered Onyx Loupe
				["_drop"] = { "g" },
			}),
			q(70255, {	-- Hidden Profession Master Jewelcrafting
				["name"] = "Hidden Profession Master: Jewelcrafting",
				["provider"] = { "n", 194841 },	-- Pluutar
				["coord"] = { 46.2, 40.8, THE_AZURE_SPAN },
			}),
			q(70189, {	-- Specialized Secrets: Jewelcrafting
				["sourceQuests"] = { 69979 },	-- A Worthy Hunt
				["provider"] = { "n", 193110 },	-- Khadin
				["coord"] = { 51.8, 33.0, OHNAHRAN_PLAINS },
				["cost"] = {{ "i", 191784, 1 }},	-- Dragon Shard of Knowledge
				["isRepeatable"] = true,
				["g"] = {
					i(190456),	-- Artisan's Mettle
				},
			}),
		}),
		n(QUESTS, sharedData({
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["isWeekly"] = true,
			["g"] = {
				i(198612),	-- Jeweler's Cuts
			},
		},{
			-- Requires 25 Skill
			q(66950, {	-- Heart of a Giant
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191004 },	-- Temnaayu
				["coord"] = { 36.8, 62.4, VALDRAKKEN },
				["g"] = {
					i(194449),	-- Giant Core (QI!)
				},
			}),
			q(72428, {	-- Hornswog Hoarders
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191001 },	-- Gnoklin Quirkcoil
				["coord"] = { 36.8, 62.8, VALDRAKKEN },
				["g"] = {
					i(201829),	-- Pungent Gem (QI!)
				},
			}),
			q(70593, {	-- Jewelcrafting Services Requested
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 194026 },	-- Azley
				["coord"] = { 35.6, 58.8, VALDRAKKEN },
			}),
			q(66516, {	-- Mundane Gems, I Think not!
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191001 },	-- Gnoklin Quirkcoil
				["coord"] = { 36.8, 62.8, VALDRAKKEN },
				["g"] = {
					i(192125),	-- 'Mundane' Gem (QI!)
				},
			}),
			q(66949, {	-- Trinket Bandits
				["description"] = "Requires 25 Skill.",
				["provider"] = { "n", 191004 },	-- Temnaayu
				["coord"] = { 36.8, 62.4, VALDRAKKEN },
				["g"] = {
					i(194443),	-- Stolen Trinket (QI!)
				},
			}),

			-- Requires 45 Skill
			q(70565, {	-- Separation by Saturation
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 190094 },	-- Tuluradormi
				["coord"] = { 40.6, 61.2, VALDRAKKEN },
			}),
			q(70564, {	-- Spectacular
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 190094 },	-- Tuluradormi
				["coord"] = { 40.6, 61.2, VALDRAKKEN },
			}),
			q(70563, {	-- The Exhibition
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 190094 },	-- Tuluradormi
				["coord"] = { 40.6, 61.2, VALDRAKKEN },
			}),
			q(70562, {	-- The Plumbers, Mason
				["description"] = "Requires 45 Skill.",
				["provider"] = { "n", 190094 },	-- Tuluradormi
				["coord"] = { 40.6, 61.2, VALDRAKKEN },
			}),

			-- Requires ?? Skill - Patch 10.1.0.
			q(75362, {	-- Cephalo-Crystalization
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
				["g"] = {
					i(204794),	-- Whelkshell Crystals (QI!)
				},
			}),
			q(75602, {	-- Chips off the Old Crystal Block
				["provider"] = { "n", 203516 },	-- Kayann
				["coord"] = { 36.5, 62.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
			}),
			-- Patch 10.2.0
			q(77892, {	-- Pearls Of Great Value
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
				["g"] = {
					i(208927),	-- Sandsparkle Pearl (QI!)
				},
			}),
			q(77912, {	-- Unmodern Jewelry
				["provider"] = { "n", 210162 },	-- Magnolia Oaken
				["coord"] = { 36.8, 63.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_0 },
				["g"] = {
					i(208928),	-- Zaqali Adornments (QI!)
				},
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["g"] = sharedData({ ["cost"] = {{ "c", DF_JEWELCRAFTING_KNOWLEDGE, 1 }} }, {
				r(374483),	-- Blotting Sand
				r(374442),	-- Crafty Alexstraszite
				r(374450),	-- Crafty Ysemerald
				r(374445),	-- Deadly Alexstraszite
				r(374547),	-- Dreamer's Vision
				r(374549),	-- Earthwarden's Prize
				r(392697),	-- Empty Soul Cage
				r(374467),	-- Fierce Illimited Diamond
				r(374459),	-- Fractured Neltharite
				r(391782),	-- Illustrious Insight
				r(374465),	-- Inscribed Illimited Diamond
				r(374551),	-- Jeweled Dragon's Heart
				r(374522),	-- Jeweled Offering
				r(374548),	-- Keeper's Glory
				r(374502),	-- Narcissist's Sculpture
				r(374484),	-- Pounce
				r(374518),	-- Projection Prism
				r(374546),	-- Queen's Gift
				r(374455),	-- Quick Ysemerald
				r(374470),	-- Resplendent Illimited Diamond
				r(374497),	-- Signet of Titanic Insight
				r(374468),	-- Skillful Illimited Diamond
				r(377960),	-- Split-Lens Specs
				r(374508),	-- Statue of Tyr's Herald
				r(374449),	-- Stormy Malygite
				r(374472),	-- Tiered Medallion Setting
				r(394621),	-- Torc of Passed Time
				r(374448),	-- Zen Malygite
				r(374458),	-- Zen Neltharite
			}),
		}),
		n(TREASURES, {
			o(401299, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Broken Barter Boulder
				["coord"] = { 54.4, 32.5, ZARALEK_CAVERN },
				["questID"] = 75654,
				["g"] = {
					i(205219),	-- Broken Barter Boulder
				},
			})),
			o(380591, {	-- Closely Guarded Shiny
				["questID"] = 70292,
				["coord"] = { 50.4, 45.1, THE_WAKING_SHORES },
				["g"] = {
					i(198687),	-- Closely Guarded Shiny
				},
			}),
			o(410484, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Coalesced Dreamstone
				["coord"] = { 58.9, 53.8, EMERALD_DREAM },
				["questID"] = 78285,
				["g"] = {
					i(210202),	-- Coalesced Dreamstone
				},
			})),
			o(380569, {	-- Crystalline Overgrowth
				["questID"] = 70277,
				["coord"] = { 45.01, 61.3, THE_AZURE_SPAN },
				["g"] = {
					i(198664),	-- Crystalline Overgrowth
				},
			}),
			o(380585, {	-- Erupted Alexstraszite Cluster
				["questID"] = 70285,
				["coord"] = { 59.8, 65.2, THALDRASZUS },
				["g"] = {
					i(198682),	-- Alexstraszite Cluster
				},
			}),
			o(380548, {	-- Forgotten Jewelry Box
				["questID"] = 70263,
				["coord"] = { 61.8, 13.0, OHNAHRAN_PLAINS },
				["g"] = {
					i(198657),	-- Forgotten Jewelry Box
					i(198660),	-- Fragmented Key
				},
			}),
			o(401292, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Gently Jostled Jewels
				["coord"] = { 34.5, 45.5, ZARALEK_CAVERN },
				["questID"] = 75653,
				["g"] = {
					i(205216),	-- Gently Jostled Jewels
				},
			})),
			o(380556, {	-- Harmonic Chest
				["description"] = "Click the key next to the chest, then click the three crystals in the same lake. Return to the chest to collect the treasure.",
				["questID"] = 70271,
				["coord"] = { 44.6, 61.2, THE_AZURE_SPAN },
				["g"] = {
					i(201016),	-- Harmonic Crystal Harmonizer
				},
			}),
			o(380822, {	-- Igneous Gem
				["description"] = "Click the three crystals on the nearby small islands (quickly), then return to collect the treasure.",
				["questID"] = 70273,
				["coord"] = { 33.9, 63.7, THE_WAKING_SHORES },
				["g"] = {
					i(201017),	-- Igneous Gem
				},
			}),
			o(384318, {	-- Inconspicuous Bookmark
				["coord"] = { 58.5, 36.7, THALDRASZUS },
				["questID"] = 72356,
				["g"] = {
					i(194654),	-- Design: Convergent Prism (RECIPE!)
				}
			}),
			o(380577, {	-- Lofty Malygite
				["questID"] = 70282,
				["coord"] = { 25.2, 34.8, OHNAHRAN_PLAINS },
				["g"] = {
					i(198670),	-- Lofty Malygite
				},
			}),
			o(380545, {	-- Painter's Pretty Jewel
				["questID"] = 70261,
				["coord"] = { 56.9, 43.6, THALDRASZUS },
				["g"] = {
					i(198656),	-- Painter's Pretty Jewel
				},
			}),
			o(410475, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Petrified Hope
				["coord"] = { 33.2, 46.5, EMERALD_DREAM },
				["questID"] = 78282,
				["g"] = {
					i(210200),	-- Petrified Hope
				},
			})),
			o(401241, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Snubbed Snail Shells
				["coord"] = { 40.4, 80.7, ZARALEK_CAVERN },
				["questID"] = 75652,
				["g"] = {
					i(205214),	-- Snubbed Snail Shells
				},
			})),
			o(410479, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Unpolished Blemish
				["coord"] = { 43.4, 33.3, EMERALD_DREAM },
				["questID"] = 78283,
				["g"] = {
					i(210201),	-- Handful of Tiny Pebbles
				},
			})),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["g"] = {
				currency(DF_JEWELCRAFTING_KNOWLEDGE),
			},
		},{
			i(198612),	-- Jeweler's Cuts
			q(74112, {	-- DF Inscription Order: Jewelcrafting
				["name"] = "DF Inscription Order: Jewelcrafting",
				["description"] = "Requires a crafting order from Inscription.",
				["provider"] = { "i", 194703 },	-- Draconic Treatise on Jewelcrafting
			}),
			q(66388, {	-- DF Weekly Jewelcrafting Knowledgepoint #1
				["name"] = "DF Jewelcrafting Treasure #1",
				["provider"] = { "i", 193909 },		-- Ancient Gem Fragments
			}),
			q(66389, {	-- DF Weekly Jewelcrafting Knowledgepoint #2
				["name"] = "DF Jewelcrafting Treasure #2",
				["provider"] = { "i", 193907 },		-- Chipped Tyrstone
			}),
			q(70521, {	-- DF Weekly Jewelcrafting Knowledgepoint #3
				["name"] = "DF Jewelcrafting Drop #1: Well Dressed",
				["description"] = "Drops from any Well Dressed Humanoids & Dragonkins.\nCoordinates link to the spot(s) we found best.",
				["crs"] = {
					195215,	-- Rebel Bruiser
					195062,	-- Rebel Incinerator
					195063,	-- Rebel Conjurer
					195060,	-- Rebel Mender
				},
				["provider"] = { "i", 198974 },	-- Elegantly Engraved Embellishment
				["coords"] = {
					{ 46.8, 59.6, THALDRASZUS },
					{ 45.8 ,58.2, THALDRASZUS },
				},
			}),
			q(70520, {	-- DF Weekly Jewelcrafting Knowledgepoint #4
				["name"] = "DF Jewelcrafting Drop #2: Earth Elemental",
				["description"] = "Drops from any Earth Elemental.\nCoordinates link to the spot(s) we found best.",
				["crs"] = {
					194212,	-- Unleashed Rubble
					194517,	-- Crushing Elemental
				},
				["provider"] = { "i", 198973 },	-- Incandescent Curio
				["coords"] = {
					{ 50.6, 57.6, THALDRASZUS },
					{ 48.8, 60.6, THALDRASZUS },
					{ 47.8, 35.6, THE_WAKING_SHORES },
					{ 50.6, 33.2, THE_WAKING_SHORES },
					{ 53.6, 31.0, THE_WAKING_SHORES },
				},
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(QUESTS, sharedData({
			["isWeekly"] = true,
			["maxReputation"] = { FACTION_ARTISANS_CONSORTIUM_DRAGON_ISLES_BRANCH, 5 },
			["g"] = {
				i(228777),	-- Algari Jewelcrafter's Notebook
			},
		},{
			q(84130, {	-- Jewelcrafting Services Requested
				["provider"] = { "n", 228177 },	-- Kala Clayhoof
				["coord"] = { 59.2, 55.2, DORNOGAL },
			}),
		})),
		filter(RECIPES, {
			["description"] = "These are learned by specialization.",
			["g"] = sharedData({ ["cost"] = {{"c", TWW_JEWELCRAFTING_KNOWLEDGE, 1}} }, {
				r(435338),	-- Algari Emerald Prism
				r(435369),	-- Algari Onyx Prism
				r(435339),	-- Algari Ruby Prism
				r(435370),	-- Algari Sapphire Prism
				r(435385),	-- Amulet of Earthen Craftsmanship
				r(434541),	-- Deadly Emerald
				r(434545),	-- Deadly Onyx
				r(434553),	-- Deadly Sapphire
				r(435331),	-- Elemental Focusing Lens
				r(434543),	-- Masterful Emerald
				r(434551),	-- Masterful Ruby
				r(434555),	-- Masterful Sapphire
				r(435332),	-- Prismatic Null Stone
				r(434546),	-- Quick Onyx
				r(434550),	-- Quick Ruby
				r(434554),	-- Quick Sapphire
				r(435384),	-- Ring of Earthen Craftsmanship
				r(434544),	-- Versatile Emerald
				r(434548),	-- Versatile Onyx
				r(434552),	-- Versatile Ruby
			}),
		}),
		n(TREASURES, {
			o(455973, {	-- Arathi Sizing Gauges
				["coord"] = { 47.3, 60.6, HALLOWFALL },
				["questID"] = 83894,
				["g"] = {
					i(226320),	-- Arathi Sizing Gauges
				},
			}),
			o(455975, {	-- Carved Stone File
				["coord"] = { 48.5, 35.2, THE_RINGING_DEEPS },
				["questID"] = 83892,
				["g"] = {
					i(226318),	-- Carved Stone File
				},
			}),
			o(455976, {	-- Earthen Gem Pliers
				["coord"] = { 34.9, 52.3, DORNOGAL },
				["questID"] = 83891,
				["g"] = {
					i(226317),	-- Earthen Gem Pliers
				},
			}),
			o(455977, {	-- Gentle Jewel Hammer
				["coord"] = { 63.5, 66.8, ISLE_OF_DORN },
				["questID"] = 83890,
				["g"] = {
					i(226316),	-- Gentle Jewel Hammer
				},
			}),
			o(455974, {	-- Jeweler's Delicate Drill
				["coord"] = { 57.0, 54.6, THE_RINGING_DEEPS },
				["questID"] = 83893,
				["g"] = {
					i(226319),	-- Jeweler's Delicate Drill
				},
			}),
			o(455972, {	-- Librarian's Magnifiers
				["coord"] = { 44.7, 50.9, HALLOWFALL },
				["questID"] = 83895,
				["g"] = {
					i(226321),	-- Librarian's Magnifiers
				},
			}),
			o(455970, {	-- Nerubian Bench Blocks
				["coord"] = { 56.1, 58.6, AZJ_KAHET },
				["questID"] = 83897,
				["g"] = {
					i(226323),	-- Nerubian Bench Blocks
				},
			}),
			o(455971, {	-- Ritual Caster's Crystal
				["coord"] = { 47.7, 19.4, NERUBAR },
				["questID"] = 83896,
				["g"] = {
					i(226322),	-- Ritual Caster's Crystal
				},
			}),
		}),
		n(WEEKLY_PROFESSION_KNOWLEDGE, sharedData({
			["isWeekly"] = true,
			["g"] = {
				currency(TWW_JEWELCRAFTING_KNOWLEDGE),
			},
		},{
			q(83265, {	-- TWW Weekly Jewelcrafting Knowledgepoint #1
				["name"] = "TWW Weekly Jewelcrafting Treasure #1",
				["provider"] = { "i", 225224 },	-- Diaphanous Gem Shards
			}),
			q(83266, {	-- TWW Weekly Jewelcrafting Knowledgepoint #2
				["name"] = "TWW Weekly Jewelcrafting Treasure #2",
				["provider"] = { "i", 225225 },	-- Deepstone Fragment
			}),
		})),
	})),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		n(PROFESSIONS, {
			prof(JEWELCRAFTING, {
				q(40557),	-- FLAG: Clive Cozen Leave - Triggers after completing Hidden Intentions (40539)
				q(40302),	-- FLAG - Prospecting 01 - triggered when completing a jewelcrafting world quest in Dalaran
				q(40303),	-- FLAG - Prospecting 02 - triggered when completing a jewelcrafting world quest in Dalaran, triggered when openning 'Wyrmtongue Cache of Shiny Things' (itemID 153118)
				q(40304),	-- FLAG - Prospecting 03 - triggered when completing a jewelcrafting world quest in Dalaran
			}),
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(PROFESSIONS, {
			prof(JEWELCRAFTING, {
				q(55631),	-- Jewelcrafting Diode shrine. harvesting gems from them triggered this quest. Nazmir location
			}),
		}),
	})),
});

-- Bloodied Crafted Gear was added with Cataclysm and then removed from the game after Firelands was released.
-- #if ANYCLASSIC
local BLOODIED_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. CATA_PHASE_RAGE_OF_THE_FIRELANDS .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. CATA_PHASE_ONE .. [[;
		t.rwp = 40200;
	end
end]];
-- #endif
local function bloodied(t)
	-- #if CATA
	t.timeline = { ADDED_4_0_3_LAUNCH, REMOVED_5_0_4 };
		-- #if ANYCLASSIC
		t.OnUpdate = BLOODIED_ONUPDATE;
		-- #endif
	-- #else
	t.timeline = { ADDED_4_0_3_LAUNCH, REMOVED_4_2_0 };
	-- #endif
	return t;
end

-- Bloodthirsty Crafted Gear was added with Firelands and then removed from the game after Dragon Soul was released.
-- #if ANYCLASSIC
local BLOODTHIRSTY_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. CATA_PHASE_HOUR_OF_TWILIGHT .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. CATA_PHASE_RAGE_OF_THE_FIRELANDS .. [[;
		t.rwp = 40300;
	end
end]];
-- #endif
local function bloodthirsty(t)
	-- #if CATA
	t.timeline = { ADDED_4_2_0, REMOVED_5_0_4 };
		-- #if ANYCLASSIC
		t.OnUpdate = BLOODTHIRSTY_ONUPDATE;
		-- #endif
	-- #else
	t.timeline = { ADDED_4_2_0, REMOVED_4_3_0 };
	-- #endif
	return applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, t);
end

local function moltenfront(t)
	t.timeline = { ADDED_4_2_0 };
	return applyclassicphase(CATA_PHASE_MOLTEN_FRONT, t);
end
local function firelands(t)
	t.timeline = { ADDED_4_2_0 };
	return applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, t);
end
local function dragonsoul(t)
	t.timeline = { ADDED_4_3_0 };
	return applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, t);
end

-- #if ANYCLASSIC
local REMOVED_WITH_CATA = REMOVED_4_0_1;
applyclassicphase(TBC_PHASE_ONE, profession(JEWELCRAFTING, {
	expansion(EXPANSION.CLASSIC, {
		filter(FINGER_F, {
			{
				["name"] = "Aquamarine Signet",
				["recipeID"] = 26874
			},
			{
				["name"] = "Blazing Citrine Ring",
				["timeline"] = { ADDED_2_0_1 },
				["recipeID"] = 25617
			},
			{
				["name"] = "Braided Copper Ring",
				["recipeID"] = 25493
			},
			{
				["name"] = "Bronze Band of Force",
				["recipeID"] = 37818
			},
			{
				["name"] = "Citrine Ring of Rapid Healing",
				["recipeID"] = 25621
			},
			{
				["name"] = "Diamond Focus Ring",
				["recipeID"] = 36526
			},
			{
				["name"] = "Elegant Silver Ring",
				["recipeID"] = 25280
			},
			{
				["name"] = "Emerald Lion Ring",
				["recipeID"] = 34961
			},
			{
				["name"] = "Engraved Truesilver Ring",
				["recipeID"] = 25620
			},
			{
				["name"] = "Gem Studded Band",
				["recipeID"] = 26896
			},
			{
				["name"] = "Gloom Band",
				["recipeID"] = 25287
			},
			{
				["name"] = "Glowing Thorium Band",
				["recipeID"] = 34960
			},
			{
				["name"] = "Golden Dragon Ring",
				["recipeID"] = 25613
			},
			{
				["name"] = "Golden Ring of Power",
				["recipeID"] = 34955
			},
			{
				["name"] = "Heavy Copper Ring",
				["recipeID"] = 26926
			},
			{
				["name"] = "Heavy Jade Ring",
				["recipeID"] = 36524
			},
			{
				["name"] = "Heavy Silver Ring",
				["recipeID"] = 25305
			},
			{
				["name"] = "Inlaid Malachite Ring",
				["recipeID"] = 25283
			},
			{
				["name"] = "Onslaught Ring",
				["recipeID"] = 26907
			},
			{
				["name"] = "Red Ring of Destruction",
				["recipeID"] = 36525
			},
			{
				["name"] = "Ring of Bitter Shadows",
				["recipeID"] = 26910
			},
			{
				["name"] = "Ring of Silver Might",
				["recipeID"] = 25317
			},
			{
				["name"] = "Ring of Twilight Shadows",
				["recipeID"] = 25318
			},
			{
				["name"] = "Sapphire Signet",
				["recipeID"] = 26903
			},
			{
				["name"] = "Simple Opal Ring",
				["recipeID"] = 26902
			},
			{
				["name"] = "Simple Pearl Ring",
				["recipeID"] = 25284
			},
			{
				["name"] = "Solid Bronze Ring",
				["recipeID"] = 25490
			},
			{
				["name"] = "The Aquamarine Ward",
				["recipeID"] = 26887
			},
			{
				["name"] = "The Jade Eye",
				["recipeID"] = 25619
			},
			{
				["name"] = "Tigerseye Band",
				["recipeID"] = 32179
			},
			{
				["name"] = "Truesilver Commander's Ring",
				["recipeID"] = 34959
			},
			{
				["name"] = "Truesilver Healing Ring",
				["recipeID"] = 26885
			},
			{
				["name"] = "Wicked Moonstone Ring",
				["recipeID"] = 25323
			},
			{
				["name"] = "Woven Copper Ring",
				["recipeID"] = 26925
			}
		}),
		filter(NECK_F, {
			{
				["name"] = "Amulet of the Moon",
				["recipeID"] = 25339
			},
			applyclassicphase(WRATH_PHASE_ONE, {
				["name"] = "Amulet of Truesight",
				["timeline"] = { ADDED_3_1_0 },
				["recipeID"] = 63743
			}),
			{
				["name"] = "Aquamarine Pendant of the Warrior",
				["recipeID"] = 26876
			},
			{
				["name"] = "Barbaric Iron Collar",
				["recipeID"] = 25498
			},
			{
				["name"] = "Brilliant Necklace",
				["recipeID"] = 36523
			},
			{
				["name"] = "Bronze Torc",
				["recipeID"] = 38175
			},
			{
				["name"] = "Citrine Pendant of Golden Healing",
				["recipeID"] = 25622
			},
			{
				["name"] = "Heavy Golden Necklace of Battle",
				["recipeID"] = 25320
			},
			{
				["name"] = "Jade Pendant of Blasting",
				["recipeID"] = 25618
			},
			{
				["name"] = "Living Emerald Pendant",
				["recipeID"] = 26911
			},
			{
				["name"] = "Malachite Pendant",
				["recipeID"] = 32178
			},
			{
				["name"] = "Necklace of the Diamond Tower",
				["recipeID"] = 26915
			},
			{
				["name"] = "Opal Necklace of Impact",
				["recipeID"] = 26897
			},
			{
				["name"] = "Ornate Tigerseye Necklace",
				["recipeID"] = 26928
			},
			{
				["name"] = "Pendant of the Agate Shield",
				["recipeID"] = 25610
			},
			{
				["name"] = "Ruby Pendant of Fire",
				["recipeID"] = 26883
			},
			{
				["name"] = "Sapphire Pendant of Winter Night",
				["recipeID"] = 26908
			},
			{
				["name"] = "Thick Bronze Necklace",
				["recipeID"] = 26927
			}
		}),
		category(168, {	-- Materials
			{
				["name"] = "Bronze Setting",
				["recipeID"] = 25278
			},
			{
				["name"] = "Delicate Copper Wire",
				["recipeID"] = 25255
			},
			{
				["name"] = "Mithril Filigree",
				["recipeID"] = 25615
			},
			{
				["name"] = "Thorium Setting",
				["recipeID"] = 26880
			}
		}),
		category(167, {	-- Crowns
			{
				["name"] = "Emerald Crown of Destruction",
				["recipeID"] = 26906
			},
			{
				["name"] = "Moonsoul Crown",
				["recipeID"] = 25321
			},
			{
				["name"] = "Ruby Crown of Restoration",
				["recipeID"] = 26878
			}
		}),
		filter(TRINKET_F, {
			{
				["name"] = "Figurine - Black Diamond Crab",
				["recipeID"] = 26912
			},
			{
				["name"] = "Figurine - Black Pearl Panther",
				["recipeID"] = 26875
			},
			{
				["name"] = "Figurine - Dark Iron Scorpid",
				["recipeID"] = 26914
			},
			{
				["name"] = "Figurine - Emerald Owl",
				["recipeID"] = 26909
			},
			{
				["name"] = "Figurine - Golden Hare",
				["recipeID"] = 26873
			},
			{
				["name"] = "Figurine - Jade Owl",
				["recipeID"] = 26872
			},
			{
				["name"] = "Figurine - Ruby Serpent",
				["recipeID"] = 26900
			},
			{
				["name"] = "Figurine - Truesilver Boar",
				["recipeID"] = 26882
			},
			{
				["name"] = "Figurine - Truesilver Crab",
				["recipeID"] = 26881
			}
		}),
		filter(FIST_WEAPONS, {
			{
				["name"] = "Heavy Iron Knuckles",
				["recipeID"] = 25612
			}
		}),
		filter(MISC, {
			{
				["name"] = "Coarse Stone Statue",
				["recipeID"] = 32801
			},
			{
				["name"] = "Dense Stone Statue",
				["recipeID"] = 32809
			},
			{
				["name"] = "Heavy Stone Statue",
				["recipeID"] = 32807
			},
			{
				["name"] = "Rough Stone Statue",
				["recipeID"] = 32259
			},
			{
				["name"] = "Solid Stone Statue",
				["recipeID"] = 32808
			}
		}),
	}),
	expansion(EXPANSION.TBC, {
		{
			["name"] = "Reagents",
			["categoryID"] = 868,
			["groups"] = {
				{
					["name"] = "Mercurial Adamantite",
					["recipeID"] = 38068
				}
			}
		},
		{
			["name"] = "Blue Gems",
			["categoryID"] = 857,
			["groups"] = {
				{
					["name"] = "Falling Star",
					["recipeID"] = 42590
				},
				-- #if BEFORE CATA
				{
					["name"] = "Lustrous Azure Moonstone",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 28957
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Lustrous Empyrean Sapphire",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39717
				}),
				{
					["name"] = "Lustrous Star of Elune",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 31094
				},
				-- #endif
				-- #if AFTER CATA
				{
					["name"] = "Rigid Azure Moonstone [CATA+] / Rigid Golden Draenite [TBC]",
					["recipeID"] = 28948
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Rigid Empyrean Sapphire [CATA+] / Rigid Lionseye [TBC]",
					["recipeID"] = 39721
				}),
				{
					["name"] = "Rigid Star of Elune [CATA+] / Rigid Dawnstone [TBC]",
					["recipeID"] = 31098
				},
				-- #endif
				{
					["name"] = "Solid Azure Moonstone",
					["recipeID"] = 28950
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Solid Empyrean Sapphire",
					["recipeID"] = 39715
				}),
				{
					["name"] = "Solid Star of Elune",
					["recipeID"] = 31092
				},
				{
					["name"] = "Sparkling Azure Moonstone",
					["recipeID"] = 28953
				},
				applyclassicphase(TBC_PHASE_THREE,{
					["name"] = "Sparkling Empyrean Sapphire",
					["recipeID"] = 39716
				}),
				{
					["name"] = "Sparkling Star of Elune",
					["recipeID"] = 31149
				},
				{
					["name"] = "Stormy Azure Moonstone",
					["recipeID"] = 28955
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Stormy Empyrean Sapphire",
					["recipeID"] = 39718
				}),
				{
					["name"] = "Stormy Star of Elune",
					["recipeID"] = 31095
				}
			}
		},
		{
			["name"] = "Green Gems",
			["categoryID"] = 858,
			["groups"] = {
				-- #if BEFORE CATA
				{
					["name"] = "Dazzling Deep Peridot",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					["recipeID"] = 28924
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Dazzling Seaspray Emerald [TBC] / Purified Shadowsong Amethyst [CATA+]",
					["recipeID"] = 39741
				}),
				{
					["name"] = "Dazzling Talasite [TBC] / Purified Nightseye [CATA+]",
					["recipeID"] = 31112
				},
				{
					["name"] = "Enduring Deep Peridot [TBC] / Regal Deep Peridot [CATA+]",
					["recipeID"] = 28918
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Enduring Seaspray Emerald [TBC] / Regal Seaspray Emerald [CATA+]",
					["recipeID"] = 39739
				}),
				{
					["name"] = "Enduring Talasite",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 31110
				},
				-- #endif
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Forceful Seaspray Emerald",
					["recipeID"] = 47053
				}),
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Forceful Talasite",
					["recipeID"] = 46405
				}),
				{
					["name"] = "Jagged Deep Peridot",
					["recipeID"] = 28917
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Jagged Seaspray Emerald",
					["recipeID"] = 39742
				}),
				{
					["name"] = "Jagged Talasite",
					["recipeID"] = 31113
				},
				{
					["name"] = "Radiant Deep Peridot",
					["recipeID"] = 28916
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Radiant Seaspray Emerald",
					["recipeID"] = 39740
				}),
				{
					["name"] = "Radiant Talasite",
					["recipeID"] = 31111
				},
				-- #if AFTER CATA
				{
					["name"] = "Regal Deep Peridot [CATA+] / Enduring Deep Peridot [TBC]",
					["recipeID"] = 28918
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Regal Seaspray Emerald [CATA+] / Enduring Seaspray Emerald [TBC]",
					["recipeID"] = 39739
				}),
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Regal Talasite [CATA+] / Regal Nightseye [TBC]",
					["recipeID"] = 46803
				}),
				-- #endif
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Steady Seaspray Emerald",
					["recipeID"] = 47054
				}),
				{
					["name"] = "Steady Talasite",
					["recipeID"] = 43493
				}
			}
		},
		{
			["name"] = "Orange Gems",
			["categoryID"] = 859,
			["groups"] = {
				-- #if AFTER CATA
				applyclassicphase(TBC_PHASE_TWO_OGRILA, {
					["name"] = "Deadly Flame Spessarite [CATA+] / Wicked Flame Spessarite [TBC]",
					["recipeID"] = 39467
				}),
				{
					["name"] = "Deadly Noble Topaz [CATA+] / Wicked Noble Topaz [TBC]",
					["recipeID"] = 39471
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Deadly Pyrestone [CATA+] / Wicked Pyrestone [TBC]",
					["recipeID"] = 39738
				}),
				-- #endif
				-- #if BEFORE CATA
				{
					["name"] = "Glinting Flame Spessarite [TBC] / Glinting Shadow Draenite [CATA+]",
					["recipeID"] = 28914
				},
				{
					["name"] = "Glinting Noble Topaz [TBC] / Glinting Nightseye [CATA+]",
					["recipeID"] = 31109
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Glinting Pyrestone [TBC] / Glinting Shadowsong Amethyst [CATA+]",
					["recipeID"] = 39736
				}),
				-- #endif
				{
					["name"] = "Inscribed Flame Spessarite",
					["recipeID"] = 28910
				},
				{
					["name"] = "Inscribed Noble Topaz",
					["recipeID"] = 31106
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Inscribed Pyrestone",
					["recipeID"] = 39733
				}),
				-- #if BEFORE CATA
				{
					["name"] = "Luminous Flame Spessarite [TBC] / Reckless Flame Spessarite [CATA+]",
					["recipeID"] = 28912
				},
				{
					["name"] = "Luminous Noble Topaz [TBC] / Reckless Noble Topaz [CATA+]",
					["recipeID"] = 31108
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Luminous Pyrestone",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39735
				}),
				-- #endif
				{
					["name"] = "Potent Flame Spessarite",
					["recipeID"] = 28915
				},
				{
					["name"] = "Potent Noble Topaz",
					["recipeID"] = 31107
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Potent Pyrestone",
					["recipeID"] = 39734
				}),
				-- #if AFTER CATA
				{
					["name"] = "Reckless Flame Spessarite [CATA+] / Luminous Flame Spessarite [TBC]",
					["recipeID"] = 28912
				},
				-- #endif
				-- #if BEFORE CATA
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Reckless Noble Topaz",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 46404,
				}),
				-- #endif
				-- #if AFTER CATA
				{
					["name"] = "Reckless Noble Topaz [CATA+] / Luminous Noble Topaz [TBC]",
					["recipeID"] = 31108
				},
				-- #endif
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Reckless Pyrestone",
					["recipeID"] = 47055
				}),
				-- #if BEFORE CATA
				applyclassicphase(TBC_PHASE_TWO_OGRILA, {
					["name"] = "Veiled Flame Spessarite [TBC] / Veiled Shadow Draenite [CATA+]",
					["recipeID"] = 39466
				}),
				{
					["name"] = "Veiled Noble Topaz [TBC] / Veiled Nightseye [CATA+]",
					["recipeID"] = 39470
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Veiled Pyrestone [TBC] / Veiled Shadowsong Amethyst [CATA+]",
					["recipeID"] = 39737
				}),
				applyclassicphase(TBC_PHASE_TWO_OGRILA, {
					["name"] = "Wicked Flame Spessarite [TBC] / Deadly Flame Spessarite [CATA+]",
					["recipeID"] = 39467
				}),
				{
					["name"] = "Wicked Noble Topaz [TBC] / Deadly Noble Topaz [CATA+]",
					["recipeID"] = 39471
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Wicked Pyrestone [TBC] / Deadly Pyrestone [CATA+]",
					["recipeID"] = 39738
				}),
				-- #endif
			}
		},
		{
			["name"] = "Purple Gems",
			["categoryID"] = 860,
			["groups"] = {
				-- #if BEFORE CATA
				{
					["name"] = "Balanced Nightseye",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39463
				},
				applyclassicphase(TBC_PHASE_TWO_OGRILA, {
					["name"] = "Balanced Shadow Draenite",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39455
				}),
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Balanced Shadowsong Amethyst",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39729
				}),
				-- #endif
				-- #if AFTER CATA
				{
					["name"] = "Glinting Nightseye [CATA+] / Glinting Noble Topaz [TBC]",
					["recipeID"] = 31109
				},
				{
					["name"] = "Glinting Shadow Draenite [CATA+] / Glinting Flame Spessarite [TBC]",
					["recipeID"] = 28914
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Glinting Shadowsong Amethyst [CATA+] / Glinting Pyrestone [TBC]",
					["recipeID"] = 39736
				}),
				-- #endif
				-- #if BEFORE CATA
				{
					["name"] = "Glowing Nightseye [TBC] / Timeless Nightseye [CATA+]",
					["recipeID"] = 31104
				},
				{
					["name"] = "Glowing Shadow Draenite [TBC] / Timeless Shadow Draenite [CATA+]",
					["recipeID"] = 28925
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Glowing Shadowsong Amethyst [TBC] / Timeless Shadowsong Amethyst [CATA+]",
					["recipeID"] = 39731
				}),
				{
					["name"] = "Infused Nightseye",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39462
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Infused Shadowsong Amethyst",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39730
				}),
				applyclassicphase(TBC_PHASE_TWO_OGRILA, {
					["name"] = "Infused Shadow Draenite",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39458
				}),
				-- #endif
				{
					["name"] = "Purified Jaggal Pearl",
					["recipeID"] = 41420
				},
				-- #if AFTER CATA
				{
					["name"] = "Purified Nightseye [CATA+] / Dazzling Talasite [TBC]",
					["recipeID"] = 31112
				},
				{
					["name"] = "Purified Shadow Draenite [CATA+] / Royal Shadow Draenite [TBC]",
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["recipeID"] = 28927
				},
				-- #endif
				{
					["name"] = "Purified Shadow Pearl",
					["recipeID"] = 41429
				},
				-- #if BEFORE CATA
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Purified Shadowsong Amethyst",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 48789
				}),
				-- #endif
				-- #if AFTER CATA
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Purified Shadowsong Amethyst [CATA+] / Dazzling Seaspray Emerald [TBC]",
					["recipeID"] = 39741
				}),
				-- #endif
				-- #if BEFORE CATA
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Regal Nightseye [TBC] / Regal Talasite [CATA+]",
					["recipeID"] = 46803
				}),
				{
					["name"] = "Royal Nightseye",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 31105
				},
				{
					["name"] = "Royal Shadow Draenite [TBC] / Purified Shadow Draenite [CATA+]",
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["recipeID"] = 28927
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Royal Shadowsong Amethyst",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39732
				}),
				-- #endif
				{
					["name"] = "Shifting Nightseye",
					["recipeID"] = 31103
				},
				{
					["name"] = "Shifting Shadow Draenite",
					["recipeID"] = 28933
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Shifting Shadowsong Amethyst",
					["recipeID"] = 39728
				}),
				{
					["name"] = "Sovereign Nightseye",
					["recipeID"] = 31102
				},
				{
					["name"] = "Sovereign Shadow Draenite",
					["recipeID"] = 28936
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Sovereign Shadowsong Amethyst",
					["recipeID"] = 39727
				}),
				-- #if AFTER CATA
				{
					["name"] = "Timeless Nightseye [CATA+] / Glowing Nightseye [TBC]",
					["recipeID"] = 31104
				},
				{
					["name"] = "Timeless Shadow Draenite [CATA+] / Glowing Shadow Draenite [TBC]",
					["recipeID"] = 28925
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Timeless Shadowsong Amethyst [CATA+] / Glowing Shadowsong Amethyst [TBC]",
					["recipeID"] = 39731
				}),
				{
					["name"] = "Veiled Nightseye [CATA+] / Veiled Noble Topaz [TBC]",
					["recipeID"] = 39470
				},
				applyclassicphase(TBC_PHASE_TWO_OGRILA, {
					["name"] = "Veiled Shadow Draenite [CATA+] / Veiled Flame Spessarite [TBC]",
					["recipeID"] = 39466
				}),
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Veiled Shadowsong Amethyst [CATA+] / Veiled Pyrestone [TBC]",
					["recipeID"] = 39737
				}),
				-- #endif
			}
		},
		{
			["name"] = "Red Gems",
			["categoryID"] = 861,
			["groups"] = {
				{
					["name"] = "Bold Blood Garnet",
					["recipeID"] = 28905
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Bold Crimson Spinel",
					["recipeID"] = 39705
				}),
				{
					["name"] = "Bold Living Ruby",
					["recipeID"] = 31084
				},
				-- #if BEFORE CATA
				{
					["name"] = "Bright Blood Garnet [TBC] / Delicate Blood Garnet [CATA+]",
					["recipeID"] = 34590
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Bright Crimson Spinel",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39712
				}),
				{
					["name"] = "Bright Living Ruby",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 31089
				},
				-- #endif
				-- #if AFTER CATA
				{
					["name"] = "Brilliant Blood Garnet [CATA+] / Teardrop Blood Garnet [TBC]",
					["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					["recipeID"] = 28903
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Brilliant Crimson Spinel [CATA+] / Runed Crimson Spinel [TBC]",
					["recipeID"] = 39711
				}),
				{
					["name"] = "Brilliant Living Ruby [CATA+] / Runed Living Ruby [TBC]",
					["recipeID"] = 31088
				},
				-- #endif
				{
					["name"] = "Crimson Sun",
					["recipeID"] = 42589
				},
				-- #if AFTER CATA
				{
					["name"] = "Delicate Blood Garnet [CATA+] / Bright Blood Garnet [TBC]",
					["recipeID"] = 34590
				},
				-- #else
				{
					["name"] = "Delicate Blood Garnet [TBC] / Removed with Cata",
					["recipeID"] = 28907
				},
				-- #endif
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Delicate Crimson Spinel",
					["recipeID"] = 39706
				}),
				{
					["name"] = "Delicate Living Ruby",
					["recipeID"] = 31085
				},
				{
					["name"] = "Don Julio's Heart",
					["recipeID"] = 42558
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Flashing Crimson Spinel",
					["recipeID"] = 39714
				}),
				{
					["name"] = "Flashing Living Ruby",
					["recipeID"] = 31091
				},
				{
					["name"] = "Kailee's Rose",
					["recipeID"] = 42588
				},
				-- #if BEFORE CATA
				{
					["name"] = "Runed Blood Garnet",	-- NOTE: Actually removed from the game completely.
					["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 28906
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Runed Crimson Spinel [TBC] / Brilliant Crimson Spinel [CATA+]",
					["recipeID"] = 39711
				}),
				{
					["name"] = "Runed Living Ruby [TBC] / Brilliant Living Ruby [CATA+]",
					["recipeID"] = 31088
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Subtle Crimson Spinel [TBC] / Subtle Lionseye [CATA+]",
					["recipeID"] = 39713
				}),
				{
					["name"] = "Subtle Living Ruby [TBC] / Subtle Dawnstone [CATA+]",
					["recipeID"] = 31090
				},
				{
					["name"] = "Teardrop Blood Garnet [TBC] / Brilliant Blood Garnet [CATA+]",
					["recipeID"] = 28903
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Teardrop Crimson Spinel",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39710
				}),
				{
					["name"] = "Teardrop Living Ruby",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 31087
				},
				-- #endif
			}
		},
		{
			["name"] = "Yellow Gems",
			["categoryID"] = 862,
			["groups"] = {
				{
					["name"] = "Blood of Amber",
					["recipeID"] = 42592
				},
				-- #if BEFORE CATA
				{
					["name"] = "Brilliant Dawnstone",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 31096
				},
				{
					["name"] = "Brilliant Golden Draenite",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 28938
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Brilliant Lionseye",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39719
				}),
				-- #endif
				{
					["name"] = "Facet of Eternity",
					["recipeID"] = 42593
				},
				-- #if BEFORE CATA
				{
					["name"] = "Gleaming Dawnstone",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 31099
				},
				{
					["name"] = "Gleaming Golden Draenite [TBC] / Smooth Golden Draenite [CATA+]",
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["recipeID"] = 28944
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Gleaming Lionseye",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39722
				}),
				{
					["name"] = "Great Dawnstone",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39452
				},
				applyclassicphase(TBC_PHASE_TWO_OGRILA, {
					["name"] = "Great Golden Draenite",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39451
				}),
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Great Lionseye",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39725
				}),
				-- #endif
				{
					["name"] = "Mystic Dawnstone",
					["recipeID"] = 31101
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Mystic Lionseye",
					["recipeID"] = 39724
				}),
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Quick Dawnstone",
					["recipeID"] = 46403
				}),
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Quick Lionseye",
					["recipeID"] = 47056
				}),
				-- #if BEFORE CATA
				{
					["name"] = "Rigid Dawnstone [TBC] / Rigid Star of Elune [CATA+]",
					["recipeID"] = 31098
				},
				{
					["name"] = "Rigid Golden Draenite [TBC] / Rigid Azure Moonstone [CATA+]",
					["recipeID"] = 28948
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Rigid Lionseye [TBC] / Rigid Empyrean Sapphire [CATA+]",
					["recipeID"] = 39721
				}),
				-- #endif
				{
					["name"] = "Smooth Dawnstone",
					["recipeID"] = 31097
				},
				-- #if BEFORE CATA
				{
					["name"] = "Smooth Golden Draenite",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 34069
				},
				-- #endif
				-- #if AFTER CATA
				{
					["name"] = "Smooth Golden Draenite [CATA+] / Gleaming Golden Draenite [TBC]",
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["recipeID"] = 28944
				},
				-- #endif
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Smooth Lionseye",
					["recipeID"] = 39720
				}),
				{
					["name"] = "Stone of Blades",
					["recipeID"] = 42591
				},
				-- #if AFTER CATA
				{
					["name"] = "Subtle Dawnstone [CATA+] / Subtle Living Ruby [TBC]",
					["recipeID"] = 31090
				},
				{
					["name"] = "Subtle Golden Draenite [CATA+] / Thick Golden Draenite [TBC]",
					["recipeID"] = 28947
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Subtle Lionseye [CATA+] / Subtle Crimson Spinel [TBC]",
					["recipeID"] = 39713
				}),
				-- #endif
				-- #if BEFORE CATA
				{
					["name"] = "Thick Dawnstone",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 31100
				},
				applyclassicphase(TBC_PHASE_THREE, {
					["name"] = "Thick Lionseye",	-- NOTE: Actually removed from the game completely.
					["timeline"] = { REMOVED_WITH_CATA },
					["recipeID"] = 39723
				}),
				{
					["name"] = "Thick Golden Draenite [TBC] / Subtle Golden Draenite [CATA+]",
					["recipeID"] = 28947
				},
				-- #endif
			}
		},
		{
			["name"] = "Meta Gems",
			["categoryID"] = 863,
			["groups"] = {
				{
					["name"] = "Bracing Earthstorm Diamond",
					["recipeID"] = 32867
				},
				{
					["name"] = "Brutal Earthstorm Diamond",
					["recipeID"] = 32869
				},
				{
					["name"] = "Chaotic Skyfire Diamond",
					["recipeID"] = 44794
				},
				{
					["name"] = "Destructive Skyfire Diamond",
					["recipeID"] = 32871
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Ember Skyfire Diamond",
					["recipeID"] = 46601
				}),
				{
					["name"] = "Enigmatic Skyfire Diamond",
					["recipeID"] = 32874
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Eternal Earthstorm Diamond",
					["recipeID"] = 46597
				}),
				{
					["name"] = "Insightful Earthstorm Diamond",
					["recipeID"] = 32870
				},
				{
					["name"] = "Mystical Skyfire Diamond",
					["recipeID"] = 32872
				},
				{
					["name"] = "Powerful Earthstorm Diamond",
					["recipeID"] = 32866
				},
				{
					["name"] = "Relentless Earthstorm Diamond",
					["recipeID"] = 39961
				},
				{
					["name"] = "Swift Skyfire Diamond",
					["recipeID"] = 32873
				},
				{
					["name"] = "Tenacious Earthstorm Diamond",
					["recipeID"] = 32868
				},
				{
					["name"] = "Thundering Skyfire Diamond",
					["recipeID"] = 39963
				}
			}
		},
		{
			["name"] = "Necklaces",
			["categoryID"] = 864,
			["groups"] = {
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Amulet of Flowing Life",
					["recipeID"] = 46126
				}),
				{
					["name"] = "Braided Eternium Chain",
					["recipeID"] = 31070
				},
				{
					["name"] = "Chain of the Twilight Owl",
					["recipeID"] = 31076
				},
				{
					["name"] = "Embrace of the Dawn",
					["recipeID"] = 31072
				},
				{
					["name"] = "Eye of the Night",
					["recipeID"] = 31071
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Hard Khorium Choker",
					["recipeID"] = 46127
				}),
				{
					["name"] = "Living Ruby Pendant",
					["recipeID"] = 31068
				},
				applyclassicphase(TBC_PHASE_TWO, {
					["name"] = "Necklace of the Deep",
					["recipeID"] = 40514
				}),
				{
					["name"] = "Pendant of Frozen Flame",
					["recipeID"] = 31062
				},
				{
					["name"] = "Pendant of Shadow's End",
					["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
					["recipeID"] = 31065
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Pendant of Sunfire",
					["recipeID"] = 46125
				}),
				{
					["name"] = "Pendant of Thawing",
					["recipeID"] = 31063
				},
				{
					["name"] = "Pendant of the Null Rune",
					["recipeID"] = 31066
				},
				{
					["name"] = "Pendant of Withering",
					["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
					["recipeID"] = 31064
				},
				{
					["name"] = "Thick Adamantite Necklace",
					["recipeID"] = 31051
				},
				{
					["name"] = "Thick Felsteel Necklace",
					["recipeID"] = 31067
				}
			}
		},
		{
			["name"] = "Rings",
			["categoryID"] = 865,
			["groups"] = {
				{
					["name"] = "Arcane Khorium Band",
					["recipeID"] = 31057
				},
				{
					["name"] = "Azure Moonstone Ring",
					["recipeID"] = 31050
				},
				{
					["name"] = "Band of Natural Fire",
					["recipeID"] = 26916
				},
				{
					["name"] = "Blazing Eternium Band",
					["recipeID"] = 31061
				},
				{
					["name"] = "Brilliant Pearl Band",
					["recipeID"] = 41414
				},
				{
					["name"] = "Delicate Eternium Ring",
					["recipeID"] = 31060
				},
				{
					["name"] = "Fel Iron Blood Ring",
					["recipeID"] = 31048
				},
				{
					["name"] = "Golden Draenite Ring",
					["recipeID"] = 31049
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Hard Khorium Band",
					["recipeID"] = 46124
				}),
				{
					["name"] = "Heavy Adamantite Ring",
					["recipeID"] = 31052
				},
				{
					["name"] = "Heavy Felsteel Ring",
					["recipeID"] = 31058
				},
				{
					["name"] = "Khorium Band of Frost",
					["recipeID"] = 31054
				},
				{
					["name"] = "Khorium Band of Leaves",
					["recipeID"] = 31056
				},
				{
					["name"] = "Khorium Band of Shadows",
					["recipeID"] = 31053
				},
				{
					["name"] = "Khorium Inferno Band",
					["recipeID"] = 31055
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Loop of Forged Power",
					["recipeID"] = 46122
				}),
				{
					["name"] = "Ring of Arcane Shielding",
					["recipeID"] = 37855
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Ring of Flowing Life",
					["recipeID"] = 46123
				}),
				{
					["name"] = "The Black Pearl",
					["recipeID"] = 41415
				},
				{
					["name"] = "The Frozen Eye",
					["recipeID"] = 38503
				},
				{
					["name"] = "The Natural Ward",
					["recipeID"] = 38504
				}
			}
		},
		{
			["name"] = "Crowns",
			["categoryID"] = 869,
			["groups"] = {
				{
					["name"] = "Circlet of Arcane Might",
					["recipeID"] = 31078
				},
				{
					["name"] = "Coronet of Verdant Flame",
					["recipeID"] = 31077
				},
				applyclassicphase(TBC_PHASE_TWO, {
					["name"] = "Crown of the Sea Witch",
					["recipeID"] = 41418
				}),
			}
		},
		{
			["name"] = "Trinkets",
			["categoryID"] = 866,
			["groups"] = {
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Figurine - Crimson Serpent",
					["recipeID"] = 46777
				}),
				{
					["name"] = "Figurine - Dawnstone Crab",
					["recipeID"] = 31080
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Figurine - Empyrean Tortoise",
					["recipeID"] = 46775
				}),
				{
					["name"] = "Figurine - Felsteel Boar",
					["recipeID"] = 31079
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Figurine - Khorium Boar",
					["recipeID"] = 46776
				}),
				{
					["name"] = "Figurine - Living Ruby Serpent",
					["recipeID"] = 31081
				},
				{
					["name"] = "Figurine - Nightseye Panther",
					["recipeID"] = 31083
				},
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Figurine - Seaspray Albatross",
					["recipeID"] = 46779
				}),
				applyclassicphase(TBC_PHASE_FIVE, {
					["name"] = "Figurine - Shadowsong Panther",
					["recipeID"] = 46778
				}),
				{
					["name"] = "Figurine - Talasite Owl",
					["recipeID"] = 31082
				}
			}
		},
		{
			["name"] = "Prisms & Statues",
			["categoryID"] = 867,
			["groups"] = {
				{
					["name"] = "Brilliant Glass",
					["recipeID"] = 47280
				},
				applyclassicphase(WRATH_PHASE_ONE, {
					["name"] = "Prismatic Black Diamond",
					["timeline"] = { ADDED_3_1_0 },
					["recipeID"] = 62941
				}),
			}
		}
	}),
	applyclassicphase(WRATH_PHASE_ONE, expansion(EXPANSION.WRATH, {
		{
			["name"] = "Blue Gems",
			["categoryID"] = 846,
			["groups"] = {
				-- #if BEFORE CATA
				{ ["name"] = "Lustrous Dragon's Eye", ["recipeID"] = 56077, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Lustrous Chalcedony / Sparkling Chalcedony [CATA]", ["recipeID"] = 53941 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Lustrous Majestic Zircon", ["recipeID"] = 66500, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Lustrous Sky Sapphire / Sparkling Sky Sapphire [CATA]", ["recipeID"] = 53954 },
				-- #endif
				-- #if AFTER CATA
				{ ["name"] = "Rigid Chalcedony [Blue] / Rigid Sun Crystal [WRATH - Yellow]", ["recipeID"] = 53854 },
				{ ["name"] = "Rigid Dragon's Eye", ["recipeID"] = 56084 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Rigid Majestic Zircon [Blue] / Rigid King's Amber [WRATH - Yellow]", ["recipeID"] = 66501 }),
				-- #endif
				-- #if AFTER CATA
				{ ["name"] = "Rigid Sky Sapphire [Blue] / Rigid Autumn's Glow [WRATH - Yellow]", ["recipeID"] = 53958 },
				-- #endif
				{ ["name"] = "Solid Chalcedony", ["recipeID"] = 53934 },
				{ ["name"] = "Solid Dragon's Eye", ["recipeID"] = 56086 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Solid Majestic Zircon", ["recipeID"] = 66497 }),
				{ ["name"] = "Solid Sky Sapphire", ["recipeID"] = 53952 },
				-- #if AFTER CATA
				{ ["name"] = "Sparkling Chalcedony [CATA] / Lustrous Chalcedony", ["recipeID"] = 53941 },
				-- #endif
				{ ["name"] = "Sparkling Chalcedony", ["recipeID"] = 53940, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Sparkling Dragon's Eye", ["recipeID"] = 56087 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Sparkling Majestic Zircon", ["recipeID"] = 66498 }),
				-- #if AFTER CATA
				{ ["name"] = "Sparkling Sky Sapphire [CATA] / Lustrous Sky Sapphire", ["recipeID"] = 53954 },
				-- #endif
				{ ["name"] = "Sparkling Sky Sapphire", ["recipeID"] = 53953, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Stormy Chalcedony", ["recipeID"] = 53943 },
				{ ["name"] = "Stormy Dragon's Eye", ["recipeID"] = 56088 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Stormy Majestic Zircon", ["recipeID"] = 66499 }),
				{ ["name"] = "Stormy Sky Sapphire", ["recipeID"] = 53955 }
			}
		},
		{
			["name"] = "Green Gems",
			["categoryID"] = 847,
			["groups"] = {
				{ ["name"] = "Dazzling Dark Jade", ["recipeID"] = 53926, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Dazzling Eye of Zul", ["recipeID"] = 66430, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Dazzling Forest Emerald", ["recipeID"] = 54007, ["timeline"] = { DELETED_4_0_3 }, },
				-- #if BEFORE CATA
				{ ["name"] = "Enduring Dark Jade / Regal Dark Jade [CATA]", ["recipeID"] = 53918 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Enduring Eye of Zul / Regal Eye of Zul [CATA+]", ["recipeID"] = 66338 }),
				{ ["name"] = "Enduring Forest Emerald / Regal Forest Emerald [CATA]", ["recipeID"] = 53998 },
				-- #endif
				-- #if AFTER CATA
				{ ["name"] = "Energized Dark Jade [CATA] / Intricate Dark Jade", ["recipeID"] = 53925 },
				-- #endif
				{ ["name"] = "Energized Dark Jade", ["recipeID"] = 53930, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Energized Eye of Zul", ["recipeID"] = 66442 }),
				{ ["name"] = "Energized Forest Emerald", ["recipeID"] = 54011 },
				{ ["name"] = "Forceful Dark Jade", ["recipeID"] = 53920 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Forceful Eye of Zul", ["recipeID"] = 66434 }),
				{ ["name"] = "Forceful Forest Emerald", ["recipeID"] = 54001 },
				-- #if AFTER CATA
				{ ["name"] = "Jagged Dark Jade [CATA - Green] / Puissant Shadow Crystal [Purple]", ["recipeID"] = 53870 },
				-- #endif
				{ ["name"] = "Jagged Dark Jade", ["recipeID"] = 53916, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Jagged Eye of Zul", ["recipeID"] = 66431 }),
				{ ["name"] = "Jagged Forest Emerald", ["recipeID"] = 53996 },
				-- #if BEFORE CATA
				{ ["name"] = "Intricate Dark Jade / Energized Dark Jade [CATA]", ["recipeID"] = 53925 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Intricate Eye of Zul", ["recipeID"] = 66440, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Intricate Forest Emerald", ["recipeID"] = 54006, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Lambent Dark Jade", ["recipeID"] = 53928, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Lambent Eye of Zul / Lightning Eye of Zul [CATA]", ["recipeID"] = 66439 }),
				-- #endif
				-- #if AFTER CATA
				{ ["name"] = "Lightning Dark Jade [CATA] / Shining Dark Jade", ["recipeID"] = 53923 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Lightning Eye of Zul [CATA] / Lambent Eye of Zul", ["recipeID"] = 66439 }),
				-- #endif
				{ ["name"] = "Lightning Forest Emerald", ["recipeID"] = 54009 },
				{ ["name"] = "Misty Dark Jade", ["recipeID"] = 53922 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Misty Eye of Zul", ["recipeID"] = 66435 }),
				{ ["name"] = "Misty Forest Emerald", ["recipeID"] = 54003 },
				-- #if AFTER CATA
				{ ["name"] = "Nimble Dark Jade [CATA] / Vivid Dark Jade", ["recipeID"] = 53917 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Nimble Eye of Zul [CATA] / Vivid Eye of Zul", ["recipeID"] = 66429 }),
				{ ["name"] = "Nimble Forest Emerald [CATA] / Vivid Forest Emerald", ["recipeID"] = 53997 },
				-- #endif
				{ ["name"] = "Opaque Dark Jade", ["recipeID"] = 53929, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Opaque Eye of Zul", ["recipeID"] = 66444, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Opaque Forest Emerald", ["recipeID"] = 54010, ["timeline"] = { DELETED_4_0_3 }, },
				-- #if AFTER CATA
				{ ["name"] = "Radiant Dark Jade [CATA] / Tense Dark Jade", ["recipeID"] = 53932 },
				-- #endif
				{ ["name"] = "Radiant Dark Jade", ["recipeID"] = 53931, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Radiant Eye of Zul", ["recipeID"] = 66441 }),
				{ ["name"] = "Radiant Forest Emerald", ["recipeID"] = 54012 },
				-- #if AFTER CATA
				{ ["name"] = "Regal Dark Jade [CATA] / Enduring Dark Jade", ["recipeID"] = 53918 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Regal Eye of Zul [CATA+] / Enduring Eye of Zul", ["recipeID"] = 66338 }),
				-- #endif
				-- #if AFTER CATA
				{ ["name"] = "Regal Forest Emerald [CATA] / Enduring Forest Emerald", ["recipeID"] = 53998 },
				-- #endif
				-- #if BEFORE CATA
				{ ["name"] = "Seer's Dark Jade [Green] / Purified Shadow Crystal [CATA - Purple]", ["recipeID"] = 53921 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Seer's Eye of Zul", ["recipeID"] = 66433, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Seer's Forest Emerald", ["recipeID"] = 54002, ["timeline"] = { DELETED_4_0_3 }, },
				-- #endif
				{ ["name"] = "Shattered Dark Jade", ["recipeID"] = 53933 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Shattered Eye of Zul", ["recipeID"] = 66443 }),
				{ ["name"] = "Shattered Forest Emerald", ["recipeID"] = 54014 },
				-- #if BEFORE CATA
				{ ["name"] = "Shining Dark Jade / Lightning Dark Jade [CATA]", ["recipeID"] = 53923 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Shining Eye of Zul", ["recipeID"] = 66437, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Shining Forest Emerald", ["recipeID"] = 54004, ["timeline"] = { DELETED_4_0_3 }, },
				-- #endif
				{ ["name"] = "Steady Dark Jade", ["recipeID"] = 53919 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Steady Eye of Zul", ["recipeID"] = 66428 }),
				{ ["name"] = "Steady Forest Emerald", ["recipeID"] = 54000 },
				{ ["name"] = "Sundered Dark Jade", ["recipeID"] = 53927, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Sundered Forest Emerald", ["recipeID"] = 54008, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Sundered Eye of Zul", ["recipeID"] = 66436, ["timeline"] = { DELETED_4_0_3 }, }),
				-- #if BEFORE CATA
				{ ["name"] = "Tense Dark Jade / Radiant Dark Jade [CATA]", ["recipeID"] = 53932 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Tense Eye of Zul", ["recipeID"] = 66438, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Tense Forest Emerald", ["recipeID"] = 54013, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Timeless Dark Jade [Green] / Timeless Shadow Crystal [CATA - Purple]", ["recipeID"] = 53894 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Timeless Eye of Zul [Green] / Timeless Dreadstone [CATA - Purple]", ["recipeID"] = 66432 }),
				{ ["name"] = "Timeless Forest Emerald", ["recipeID"] = 53995, ["timeline"] = { DELETED_4_0_3 }, },
				-- #endif
				{ ["name"] = "Turbid Dark Jade", ["recipeID"] = 53924, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Turbid Eye of Zul", ["recipeID"] = 66445 }),
				{ ["name"] = "Turbid Forest Emerald", ["recipeID"] = 54005 },
				-- #if BEFORE CATA
				{ ["name"] = "Vivid Dark Jade / Nimble Dark Jade [CATA]", ["recipeID"] = 53917 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Vivid Eye of Zul / Nimble Eye of Zul [CATA]", ["recipeID"] = 66429 }),
				{ ["name"] = "Vivid Forest Emerald / Nimble Forest Emerald [CATA]", ["recipeID"] = 53997 },
				-- #endif
			}
		},
		{
			["name"] = "Orange Gems",
			["categoryID"] = 848,
			["groups"] = {
				-- #if BEFORE CATA
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Accurate Ametrine [Orange] / Accurate Dreadstone [CATA - Purple]", ["recipeID"] = 66576 }),
				{ ["name"] = "Accurate Huge Citrine [Orange] / Accurate Shadow Crystal [CATA - Purple]", ["recipeID"] = 53892 },
				{ ["name"] = "Accurate Monarch Topaz [Orange] / Accurate Twilight Opal [CATA - Purple]", ["recipeID"] = 53994 },
				-- #endif
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Champion's Ametrine", ["recipeID"] = 66579 }),
				{ ["name"] = "Champion's Huge Citrine", ["recipeID"] = 53874 },
				{ ["name"] = "Champion's Monarch Topaz", ["recipeID"] = 53977 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Deadly Ametrine", ["recipeID"] = 66568 }),
				{ ["name"] = "Deadly Huge Citrine", ["recipeID"] = 53877 },
				-- #if AFTER CATA
				{ ["name"] = "Deadly Monarch Topaz [CATA] / Wicked Monarch Topaz", ["recipeID"] = 53988 },
				-- #endif
				{ ["name"] = "Deadly Monarch Topaz", ["recipeID"] = 53979, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Deft Ametrine", ["recipeID"] = 66584 }),
				{ ["name"] = "Deft Huge Citrine", ["recipeID"] = 53880 },
				-- #if AFTER CATA
				{ ["name"] = "Deft Monarch Topaz [CATA] / Stark Monarch Topaz", ["recipeID"] = 53991 },
				-- #endif
				{ ["name"] = "Deft Monarch Topaz", ["recipeID"] = 53982, ["timeline"] = { DELETED_4_0_3 }, },
				-- #if BEFORE CATA
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Durable Ametrine / Willful Ametrine [CATA]", ["recipeID"] = 66571 }),
				{ ["name"] = "Durable Huge Citrine / Willful Huge Citrine [CATA]", ["recipeID"] = 53884 },
				-- #endif
				-- #if BEFORE CATA
				{ ["name"] = "Durable Monarch Topaz / Willful Monarch Topaz [CATA]", ["recipeID"] = 53986 },
				-- #endif
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Empowered Ametrine", ["recipeID"] = 66580, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Empowered Huge Citrine", ["recipeID"] = 53888, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Empowered Monarch Topaz", ["recipeID"] = 53990, ["timeline"] = { DELETED_4_0_3 }, },
				-- #if BEFORE CATA
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Etched Ametrine [Orange] / Etched Dreadstone [CATA - Purple]", ["recipeID"] = 66572 }),
				{ ["name"] = "Etched Huge Citrine [Orange] / Etched Shadow Crystal [CATA - Purple]", ["recipeID"] = 53873 },
				{ ["name"] = "Etched Monarch Topaz [Orange] / Etched Twilight Opal [CATA - Purple]", ["recipeID"] = 53976 },
				-- #endif
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Fierce Ametrine", ["recipeID"] = 66583 }),
				{ ["name"] = "Fierce Huge Citrine", ["recipeID"] = 53876 },
				{ ["name"] = "Fierce Monarch Topaz", ["recipeID"] = 54019 },
				-- #if BEFORE CATA
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Glimmering Ametrine", ["recipeID"] = 66578, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Glimmering Huge Citrine / Stalwart Huge Citrine [CATA]", ["recipeID"] = 53891 },
				{ ["name"] = "Glimmering Monarch Topaz / Stalwart Monarch Topaz [CATA]", ["recipeID"] = 53993 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Glinting Ametrine", ["recipeID"] = 66575, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Glinting Huge Citrine", ["recipeID"] = 53878, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Glinting Monarch Topaz [Orange] / Glinting Twilight Opal [CATA - Purple]", ["recipeID"] = 53980 },
				-- #endif
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Inscribed Ametrine", ["recipeID"] = 66567 }),
				{ ["name"] = "Inscribed Huge Citrine", ["recipeID"] = 53872 },
				{ ["name"] = "Inscribed Monarch Topaz", ["recipeID"] = 53975 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Lucent Ametrine", ["recipeID"] = 66585 }),
				{ ["name"] = "Lucent Huge Citrine", ["recipeID"] = 53879, },
				{ ["name"] = "Lucent Monarch Topaz", ["recipeID"] = 53981 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Luminous Ametrine", ["recipeID"] = 66566, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Luminous Huge Citrine", ["recipeID"] = 53881, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Luminous Monarch Topaz", ["recipeID"] = 53983, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Potent Ametrine", ["recipeID"] = 66569 }),
				{ ["name"] = "Potent Huge Citrine", ["recipeID"] = 53882 },
				{ ["name"] = "Potent Monarch Topaz", ["recipeID"] = 53984 },
				-- #if BEFORE CATA
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Pristine Ametrine [Orange] / Glinting Dreadstone [CATA - Purple]", ["recipeID"] = 66573 }),
				{ ["name"] = "Pristine Huge Citrine", ["recipeID"] = 53887, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Pristine Monarch Topaz", ["recipeID"] = 53989, ["timeline"] = { DELETED_4_0_3 }, },
				-- #endif
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Reckless Ametrine", ["recipeID"] = 66574 }),
				{ ["name"] = "Reckless Huge Citrine", ["recipeID"] = 53885 },
				{ ["name"] = "Reckless Monarch Topaz", ["recipeID"] = 53987 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Resolute Ametrine", ["recipeID"] = 66586 }),
				{ ["name"] = "Resolute Huge Citrine", ["recipeID"] = 53893 },
				{ ["name"] = "Resolute Monarch Topaz", ["recipeID"] = 54023 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Resplendent Ametrine", ["recipeID"] = 66582 }),
				{ ["name"] = "Resplendent Huge Citrine", ["recipeID"] = 53875 },
				{ ["name"] = "Resplendent Monarch Topaz", ["recipeID"] = 53978 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Stalwart Ametrine", ["recipeID"] = 66581 }),
				{ ["name"] = "Stalwart Huge Citrine", ["recipeID"] = 53890, ["timeline"] = { DELETED_4_0_3 }, },
				-- #if AFTER CATA
				{ ["name"] = "Stalwart Huge Citrine [CATA] / Glimmering Huge Citrine", ["recipeID"] = 53891 },
				{ ["name"] = "Stalwart Monarch Topaz [CATA] / Glimmering Monarch Topaz", ["recipeID"] = 53993 },
				-- #endif
				{ ["name"] = "Stalwart Monarch Topaz", ["recipeID"] = 53992, ["timeline"] = { DELETED_4_0_3 }, },
				-- #if BEFORE CATA
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Stark Ametrine", ["recipeID"] = 66587, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Stark Huge Citrine", ["recipeID"] = 53889, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Stark Monarch Topaz / Deft Monarch Topaz [CATA]", ["recipeID"] = 53991 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Veiled Ametrine [Orange] / Veiled Dreadstone [CATA - Purple]", ["recipeID"] = 66570 }),
				{ ["name"] = "Veiled Huge Citrine [Orange] / Veiled Shadow Crystal [CATA - Purple]", ["recipeID"] = 53883 },
				{ ["name"] = "Veiled Monarch Topaz [Orange] / Veiled Twilight Opal [CATA - Purple]", ["recipeID"] = 53985 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Wicked Ametrine", ["recipeID"] = 66577, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Wicked Huge Citrine", ["recipeID"] = 53886, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Wicked Monarch Topaz / Deadly Monarch Topaz [CATA]", ["recipeID"] = 53988 },
				-- #endif
				-- #if AFTER CATA
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Willful Ametrine [CATA] / Durable Ametrine", ["recipeID"] = 66571 }),
				{ ["name"] = "Willful Huge Citrine [CATA] / Durable Huge Citrine", ["recipeID"] = 53884 },
				{ ["name"] = "Willful Monarch Topaz [CATA] / Durable Monarch Topaz", ["recipeID"] = 53986 },
				-- #endif
			}
		},
		{
			["name"] = "Purple Gems",
			["categoryID"] = 849,
			["groups"] = {
				-- #if AFTER CATA
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Accurate Dreadstone [CATA - Purple] / Accurate Ametrine [Orange]", ["recipeID"] = 66576 }),
				{ ["name"] = "Accurate Shadow Crystal [CATA - Purple] / Accurate Huge Citrine [Orange]", ["recipeID"] = 53892 },
				{ ["name"] = "Accurate Twilight Opal [CATA - Purple] / Accurate Monarch Topaz [Orange]", ["recipeID"] = 53994 },
				-- #endif
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Balanced Dreadstone", ["recipeID"] = 66553, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Balanced Shadow Crystal", ["recipeID"] = 53866, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Balanced Twilight Opal", ["recipeID"] = 53969, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Defender's Dreadstone", ["recipeID"] = 66560 }),
				{ ["name"] = "Defender's Shadow Crystal", ["recipeID"] = 53869 },
				{ ["name"] = "Defender's Twilight Opal", ["recipeID"] = 53972 },
				-- #if AFTER CATA
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Etched Dreadstone [CATA - Purple] / Etched Ametrine [Orange]", ["recipeID"] = 66572 }),
				{ ["name"] = "Etched Shadow Crystal [CATA - Purple] / Etched Huge Citrine [Orange]", ["recipeID"] = 53873 },
				{ ["name"] = "Etched Twilight Opal [CATA - Purple] / Etched Monarch Topaz [Orange]", ["recipeID"] = 53976 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Glinting Dreadstone [CATA - Purple] / Pristine Ametrine [Orange]", ["recipeID"] = 66573 }),
				{ ["name"] = "Glinting Shadow Crystal [CATA] / Tenuous Shadow Crystal", ["recipeID"] = 53861 },
				{ ["name"] = "Glinting Twilight Opal [CATA - Purple] / Glinting Monarch Topaz [Orange]", ["recipeID"] = 53980 },
				-- #endif
				-- #if BEFORE CATA
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Glowing Dreadstone", ["recipeID"] = 66555, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Glowing Shadow Crystal", ["recipeID"] = 53862, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Glowing Twilight Opal / Timeless Twilight Opal [CATA]", ["recipeID"] = 53965 },
				-- #endif
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Guardian's Dreadstone", ["recipeID"] = 66561 }),
				{ ["name"] = "Guardian's Shadow Crystal", ["recipeID"] = 53871 },
				{ ["name"] = "Guardian's Twilight Opal", ["recipeID"] = 53974 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Infused Dreadstone", ["recipeID"] = 66564, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Infused Shadow Crystal", ["recipeID"] = 53867, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Infused Twilight Opal", ["recipeID"] = 53970, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Mysterious Dreadstone", ["recipeID"] = 66562 }),
				{ ["name"] = "Mysterious Shadow Crystal", ["recipeID"] = 53865 },
				{ ["name"] = "Mysterious Twilight Opal", ["recipeID"] = 53968 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Puissant Dreadstone", ["recipeID"] = 66563, ["timeline"] = { DELETED_4_0_3 }, }),
				-- #if BEFORE CATA
				{ ["name"] = "Puissant Shadow Crystal [Purple] / Jagged Dark Jade [CATA - Green]", ["recipeID"] = 53870 },
				-- #endif
				{ ["name"] = "Puissant Twilight Opal", ["recipeID"] = 53973, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Purified Dreadstone", ["recipeID"] = 66556 }),
				-- #if AFTER CATA
				{ ["name"] = "Purified Shadow Crystal [CATA - Purple] / Seer's Dark Jade [Green]", ["recipeID"] = 53921 },
				-- #endif
				{ ["name"] = "Purified Shadow Crystal", ["recipeID"] = 53863, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Purified Twilight Opal", ["recipeID"] = 53966 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Regal Dreadstone", ["recipeID"] = 66559, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Regal Shadow Crystal", ["recipeID"] = 53868, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Regal Twilight Opal", ["recipeID"] = 53971, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Royal Dreadstone", ["recipeID"] = 66558, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Royal Shadow Crystal", ["recipeID"] = 53864, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Royal Twilight Opal", ["recipeID"] = 53967, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Shifting Dreadstone", ["recipeID"] = 66557 }),
				{ ["name"] = "Shifting Shadow Crystal", ["recipeID"] = 53860 },
				{ ["name"] = "Shifting Twilight Opal", ["recipeID"] = 53963 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Sovereign Dreadstone", ["recipeID"] = 66554 }),
				{ ["name"] = "Sovereign Shadow Crystal", ["recipeID"] = 53859 },
				{ ["name"] = "Sovereign Twilight Opal", ["recipeID"] = 53962 },
				-- #if BEFORE CATA
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Tenuous Dreadstone", ["recipeID"] = 66565, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Tenuous Shadow Crystal / Glinting Shadow Crystal [CATA]", ["recipeID"] = 53861 },
				{ ["name"] = "Tenuous Twilight Opal", ["recipeID"] = 53964, ["timeline"] = { DELETED_4_0_3 }, },
				-- #endif
				-- #if AFTER CATA
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Timeless Dreadstone [CATA - Purple] / Timeless Eye of Zul [Green]", ["recipeID"] = 66432 }),
				{ ["name"] = "Timeless Shadow Crystal [CATA - Purple] / Timeless Dark Jade [Green]", ["recipeID"] = 53894 },
				{ ["name"] = "Timeless Twilight Opal [CATA] / Glowing Twilight Opal", ["recipeID"] = 53965 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Veiled Dreadstone [CATA - Purple] / Veiled Ametrine [Orange]", ["recipeID"] = 66570 }),
				{ ["name"] = "Veiled Shadow Crystal [CATA - Purple] / Veiled Huge Citrine [Orange]", ["recipeID"] = 53883 },
				{ ["name"] = "Veiled Twilight Opal [CATA - Purple] / Veiled Monarch Topaz [Orange]", ["recipeID"] = 53985 },
				-- #endif
			}
		},
		{
			["name"] = "Red Gems",
			["categoryID"] = 850,
			["groups"] = {
				{ ["name"] = "Bold Bloodstone", ["recipeID"] = 53831 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Bold Cardinal Ruby", ["recipeID"] = 66447 }),
				{ ["name"] = "Bold Dragon's Eye", ["recipeID"] = 56049 },
				{ ["name"] = "Bold Scarlet Ruby", ["recipeID"] = 53830 },
				{ ["name"] = "Bright Bloodstone", ["recipeID"] = 53835, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Bright Cardinal Ruby", ["recipeID"] = 66449, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Bright Dragon's Eye", ["recipeID"] = 56054, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Bright Scarlet Ruby", ["recipeID"] = 53947, ["timeline"] = { DELETED_4_0_3 }, },
				-- #if AFTER CATA
				{ ["name"] = "Brilliant Bloodstone [CATA - Red] / Brilliant Sun Crystal [Yellow]", ["recipeID"] = 53852 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Brilliant Cardinal Ruby [CATA] / Runed Cardinal Ruby", ["recipeID"] = 66446 }),
				{ ["name"] = "Brilliant Dragon's Eye [CATA] / Runed Dragon's Eye", ["recipeID"] = 56053 },
				{ ["name"] = "Brilliant Scarlet Ruby [CATA] / Runed Scarlet Ruby", ["recipeID"] = 53946 },
				-- #endif
				{ ["name"] = "Delicate Bloodstone", ["recipeID"] = 53832 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Delicate Cardinal Ruby", ["recipeID"] = 66448 }),
				{ ["name"] = "Delicate Dragon's Eye", ["recipeID"] = 56052 },
				{ ["name"] = "Delicate Scarlet Ruby", ["recipeID"] = 53945 },
				-- #if BEFORE CATA
				{ ["name"] = "Fractured Bloodstone [Red] / Smooth Sun Crystal [CATA - Yellow]", ["recipeID"] = 53845 },
				-- #endif
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Fractured Cardinal Ruby", ["recipeID"] = 66451, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Fractured Dragon's Eye", ["recipeID"] = 56076, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Fractured Scarlet Ruby", ["recipeID"] = 53950, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Flashing Bloodstone", ["recipeID"] = 53844 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Flashing Cardinal Ruby", ["recipeID"] = 66453 }),
				{ ["name"] = "Flashing Dragon's Eye", ["recipeID"] = 56056 },
				{ ["name"] = "Flashing Scarlet Ruby", ["recipeID"] = 53949 },
				{ ["name"] = "Precise Bloodstone", ["recipeID"] = 54017 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Precise Cardinal Ruby", ["recipeID"] = 66450 }),
				{ ["name"] = "Precise Dragon's Eye", ["recipeID"] = 56081 },
				{ ["name"] = "Precise Scarlet Ruby", ["recipeID"] = 53951 },
				-- #if BEFORE CATA
				{ ["name"] = "Runed Bloodstone", ["recipeID"] = 53834, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Runed Cardinal Ruby / Brilliant Cardinal Ruby [CATA]", ["recipeID"] = 66446 }),
				{ ["name"] = "Runed Dragon's Eye / Brilliant Dragon's Eye [CATA]", ["recipeID"] = 56053 },
				{ ["name"] = "Runed Scarlet Ruby / Brilliant Scarlet Ruby [CATA]", ["recipeID"] = 53946 },
				{ ["name"] = "Subtle Bloodstone [Red] / Subtle Sun Crystal [CATA - Yellow]", ["recipeID"] = 53843 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Subtle Cardinal Ruby [Red] / Subtle King's Amber [CATA - Yellow]", ["recipeID"] = 66452 }),
				{ ["name"] = "Subtle Dragon's Eye [Red] / Subtle Dragon's Eye [CATA - Yellow]", ["recipeID"] = 56055 },
				{ ["name"] = "Subtle Scarlet Ruby [Red]/ Subtle Autumn's Glow [CATA - Yellow]", ["recipeID"] = 53948 },
				-- #endif
			}
		},
		{
			["name"] = "Yellow Gems",
			["categoryID"] = 851,
			["groups"] = {
				-- #if BEFORE CATA
				{ ["name"] = "Brilliant Autumn's Glow", ["recipeID"] = 53956, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Brilliant Dragon's Eye", ["recipeID"] = 56074, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Brilliant Sun Crystal [Yellow] / Brilliant Bloodstone [CATA - Red]", ["recipeID"] = 53852 },
				{ ["name"] = "Brilliant Sun Crystal [Yellow]", ["recipeID"] = 53852, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Brilliant King's Amber", ["recipeID"] = 66503, ["timeline"] = { DELETED_4_0_3 }, }),
				-- #endif
				{ ["name"] = "Mystic Autumn's Glow", ["recipeID"] = 53960 },
				{ ["name"] = "Mystic Dragon's Eye", ["recipeID"] = 56079 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Mystic King's Amber", ["recipeID"] = 66505 }),
				{ ["name"] = "Mystic Sun Crystal", ["recipeID"] = 53857 },
				{ ["name"] = "Quick Autumn's Glow", ["recipeID"] = 53961 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Quick Dragon's Eye", ["recipeID"] = 56083 }),
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Quick King's Amber", ["recipeID"] = 66506 }),
				{ ["name"] = "Quick Sun Crystal", ["recipeID"] = 53856 },
				-- #if BEFORE CATA
				{ ["name"] = "Rigid Autumn's Glow [WRATH - Yellow] / Rigid Sky Sapphire [Blue]", ["recipeID"] = 53958 },
				{ ["name"] = "Rigid Dragon's Eye", ["recipeID"] = 56084 },
				-- #endif
				-- #if BEFORE CATA
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Rigid King's Amber [WRATH - Yellow] / Rigid Majestic Zircon [Blue]", ["recipeID"] = 66501 }),
				-- #endif
				-- #if BEFORE CATA
				{ ["name"] = "Rigid Sun Crystal [WRATH - Yellow] / Rigid Chalcedony [Blue]", ["recipeID"] = 53854 },
				-- #endif
				{ ["name"] = "Smooth Autumn's Glow", ["recipeID"] = 53957 },
				{ ["name"] = "Smooth Dragon's Eye", ["recipeID"] = 56085 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Smooth King's Amber", ["recipeID"] = 66502 }),
				{ ["name"] = "Smooth Sun Crystal [Yellow]", ["recipeID"] = 53853, ["timeline"] = { DELETED_4_0_3 }, },
				-- #if AFTER CATA
				{ ["name"] = "Smooth Sun Crystal [CATA - Yellow] / Fractured Bloodstone [Red]", ["recipeID"] = 53845 },
				-- #endif
				-- #if AFTER CATA
				{ ["name"] = "Subtle Autumn's Glow [CATA - Yellow] / Subtle Scarlet Ruby [Red]", ["recipeID"] = 53948 },
				{ ["name"] = "Subtle Dragon's Eye [CATA - Yellow] / Subtle Dragon's Eye [Red]", ["recipeID"] = 56055 },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Subtle King's Amber [CATA - Yellow] / Subtle Cardinal Ruby [Red]", ["recipeID"] = 66452 }),
				{ ["name"] = "Subtle Sun Crystal [CATA - Yellow] / Subtle Bloodstone [Red]", ["recipeID"] = 53843 },
				-- #endif
				{ ["name"] = "Thick Autumn's Glow", ["recipeID"] = 53959, ["timeline"] = { DELETED_4_0_3 }, },
				{ ["name"] = "Thick Dragon's Eye", ["recipeID"] = 56089, ["timeline"] = { DELETED_4_0_3 }, },
				applyclassicphase(WRATH_PHASE_THREE, { ["name"] = "Thick King's Amber", ["recipeID"] = 66504, ["timeline"] = { DELETED_4_0_3 }, }),
				{ ["name"] = "Thick Sun Crystal [Yellow]", ["recipeID"] = 53855, ["timeline"] = { DELETED_4_0_3 }, },
			}
		},
		{
			["name"] = "Meta Gems",
			["categoryID"] = 852,
			["groups"] = {
				{
					["name"] = "Austere Earthsiege Diamond",
					["recipeID"] = 55401
				},
				{
					["name"] = "Beaming Earthsiege Diamond",
					["recipeID"] = 55405
				},
				{
					["name"] = "Bracing Earthsiege Diamond",
					["recipeID"] = 55397
				},
				{
					["name"] = "Chaotic Skyflare Diamond",
					["recipeID"] = 55389
				},
				{
					["name"] = "Destructive Skyflare Diamond",
					["recipeID"] = 55390
				},
				{
					["name"] = "Ember Skyflare Diamond",
					["recipeID"] = 55392
				},
				{
					["name"] = "Enigmatic Skyflare Diamond",
					["recipeID"] = 55393
				},
				{
					["name"] = "Eternal Earthsiege Diamond",
					["recipeID"] = 55398
				},
				{
					["name"] = "Forlorn Skyflare Diamond",
					["recipeID"] = 55387
				},
				{
					["name"] = "Impassive Skyflare Diamond",
					["recipeID"] = 55388
				},
				{
					["name"] = "Insightful Earthsiege Diamond",
					["recipeID"] = 55396
				},
				{
					["name"] = "Invigorating Earthsiege Diamond",
					["recipeID"] = 55404
				},
				{
					["name"] = "Persistent Earthsiege Diamond",
					["recipeID"] = 55402
				},
				{
					["name"] = "Powerful Earthsiege Diamond",
					["recipeID"] = 55399
				},
				{
					["name"] = "Relentless Earthsiege Diamond",
					["recipeID"] = 55400
				},
				{
					["name"] = "Revitalizing Skyflare Diamond",
					["recipeID"] = 55407
				},
				{
					["name"] = "Shielded Skyflare Diamond",
					["recipeID"] = 55384
				},
				{
					["name"] = "Swift Skyflare Diamond",
					["recipeID"] = 55394
				},
				{
					["name"] = "Tireless Skyflare Diamond",
					["recipeID"] = 55386
				},
				{
					["name"] = "Trenchant Earthsiege Diamond",
					["recipeID"] = 55403
				}
			}
		},
		{
			["name"] = "Prismatic Gems",
			["categoryID"] = 855,
			["groups"] = {
				{
					["name"] = "Enchanted Pearl",
					["recipeID"] = 56530
				},
				{
					["name"] = "Enchanted Tear",
					["recipeID"] = 56531
				},
				applyclassicphase(WRATH_PHASE_THREE, {
					["name"] = "Nightmare Tear",
					["recipeID"] = 68253
				}),
			}
		},
		{
			["name"] = "Necklaces",
			["categoryID"] = 853,
			["groups"] = {
				{
					["name"] = "Blood Sun Necklace",
					["recipeID"] = 56196
				},
				{
					["name"] = "Crystal Chalcedony Amulet",
					["recipeID"] = 58142
				},
				{
					["name"] = "Crystal Citrine Necklace",
					["recipeID"] = 58141
				},
				{
					["name"] = "Emerald Choker",
					["recipeID"] = 64725
				},
				{
					["name"] = "Jade Dagger Pendant",
					["recipeID"] = 56195
				},
				{
					["name"] = "Sky Sapphire Amulet",
					["recipeID"] = 64726
				},
				{
					["name"] = "Titanium Earthguard Chain",
					["recipeID"] = 56500
				},
				{
					["name"] = "Titanium Impact Choker",
					["recipeID"] = 56499
				},
				{
					["name"] = "Titanium Spellshock Necklace",
					["recipeID"] = 56501
				}
			}
		},
		{
			["name"] = "Rings",
			["categoryID"] = 854,
			["groups"] = {
				{
					["name"] = "Bloodstone Band",
					["recipeID"] = 56193
				},
				{
					["name"] = "Dream Signet",
					["recipeID"] = 56197
				},
				{
					["name"] = "Earthshadow Ring",
					["recipeID"] = 58143
				},
				{
					["name"] = "Jade Ring of Slaying",
					["recipeID"] = 58144
				},
				{
					["name"] = "Ring of Earthen Might",
					["recipeID"] = 58147
				},
				{
					["name"] = "Ring of Northern Tears",
					["recipeID"] = 58150
				},
				{
					["name"] = "Ring of Scarlet Shadows",
					["recipeID"] = 58148
				},
				{
					["name"] = "Runed Mana Band",
					["recipeID"] = 64727
				},
				{
					["name"] = "Savage Titanium Band",
					["recipeID"] = 58507
				},
				{
					["name"] = "Savage Titanium Ring",
					["recipeID"] = 58492
				},
				{
					["name"] = "Scarlet Signet",
					["recipeID"] = 64728
				},
				{
					["name"] = "Shadowmight Ring",
					["recipeID"] = 58146
				},
				{
					["name"] = "Stoneguard Band",
					["recipeID"] = 58145
				},
				{
					["name"] = "Sun Rock Ring",
					["recipeID"] = 56194
				},
				{
					["name"] = "Thundering Skyflare Diamond",
					["recipeID"] = 55395
				},
				{
					["name"] = "Titanium Earthguard Ring",
					["recipeID"] = 56497
				},
				{
					["name"] = "Titanium Frostguard Ring",
					["recipeID"] = 58954
				},
				{
					["name"] = "Titanium Impact Band",
					["recipeID"] = 56496
				},
				{
					["name"] = "Titanium Spellshock Ring",
					["recipeID"] = 56498
				},
				{
					["name"] = "Windfire Band",
					["recipeID"] = 58149
				}
			}
		},
		{
			["name"] = "Pets and Projects",
			["categoryID"] = 856,
			["groups"] = {
				{
					["name"] = "Dark Jade Focusing Lens",
					["recipeID"] = 56205
				},
				{
					["name"] = "Figurine - Emerald Boar",
					["recipeID"] = 56203
				},
				{
					["name"] = "Figurine - Monarch Crab",
					["recipeID"] = 59759
				},
				{
					["name"] = "Figurine - Ruby Hare",
					["recipeID"] = 56199
				},
				{
					["name"] = "Figurine - Sapphire Owl",
					["recipeID"] = 56202
				},
				{
					["name"] = "Figurine - Twilight Serpent",
					["recipeID"] = 56201
				},
				{
					["name"] = "Icy Prism",
					["recipeID"] = 62242
				},
				{
					["name"] = "Shadow Crystal Focusing Lens",
					["recipeID"] = 56206
				},
				{
					["name"] = "Shadow Jade Focusing Lens",
					["recipeID"] = 56208
				}
			}
		}
	})),
	applyclassicphase(CATA_PHASE_ONE, expansion(EXPANSION.CATA, {
		{
			["name"] = "Blue Gems",
			["categoryID"] = 834,
			["groups"] = {
				{
					["name"] = "Rigid Chimera's Eye",
					["recipeID"] = 73404
				},
				{
					["name"] = "Rigid Deepholm Iolite",
					["recipeID"] = 101735
				},
				{
					["name"] = "Rigid Ocean Sapphire",
					["recipeID"] = 73344
				},
				{
					["name"] = "Rigid Zephyrite",
					["recipeID"] = 73230
				},
				{
					["name"] = "Solid Chimera's Eye",
					["recipeID"] = 73401
				},
				{
					["name"] = "Solid Deepholm Iolite",
					["recipeID"] = 101742
				},
				{
					["name"] = "Solid Ocean Sapphire",
					["recipeID"] = 73340
				},
				{
					["name"] = "Solid Zephyrite",
					["recipeID"] = 73227
				},
				{
					["name"] = "Sparkling Chimera's Eye",
					["recipeID"] = 73402
				},
				{
					["name"] = "Sparkling Deepholm Iolite",
					["recipeID"] = 101741
				},
				{
					["name"] = "Sparkling Ocean Sapphire",
					["recipeID"] = 73341
				},
				{
					["name"] = "Sparkling Zephyrite",
					["recipeID"] = 73228
				},
				{
					["name"] = "Stormy Chimera's Eye",
					["recipeID"] = 73403
				},
				{
					["name"] = "Stormy Deepholm Iolite",
					["recipeID"] = 101740
				},
				{
					["name"] = "Stormy Ocean Sapphire",
					["recipeID"] = 73343
				},
				{
					["name"] = "Stormy Zephyrite",
					["recipeID"] = 73229
				}
			}
		},
		{
			["name"] = "Green Gems",
			["categoryID"] = 835,
			["groups"] = {
				{
					["name"] = "Balanced Elven Peridot",
					["recipeID"] = 101749
				},
				{
					["name"] = "Energized Elven Peridot",
					["recipeID"] = 101754
				},
				{
					["name"] = "Forceful Dream Emerald",
					["recipeID"] = 73380
				},
				{
					["name"] = "Forceful Elven Peridot",
					["recipeID"] = 101757
				},
				{
					["name"] = "Forceful Jasper",
					["recipeID"] = 73277
				},
				{
					["name"] = "Infused Elven Peridot",
					["recipeID"] = 101747
				},
				{
					["name"] = "Jagged Dream Emerald",
					["recipeID"] = 73377
				},
				{
					["name"] = "Jagged Elven Peridot",
					["recipeID"] = 101755
				},
				{
					["name"] = "Jagged Jasper",
					["recipeID"] = 73274
				},
				{
					["name"] = "Lightning Dream Emerald",
					["recipeID"] = 73381
				},
				{
					["name"] = "Lightning Elven Peridot",
					["recipeID"] = 101745
				},
				{
					["name"] = "Lightning Jasper",
					["recipeID"] = 73278
				},
				{
					["name"] = "Misty Elven Peridot",
					["recipeID"] = 101743
				},
				{
					["name"] = "Nimble Dream Emerald",
					["recipeID"] = 73376
				},
				{
					["name"] = "Nimble Elven Peridot",
					["recipeID"] = 101758
				},
				{
					["name"] = "Nimble Jasper",
					["recipeID"] = 73273
				},
				{
					["name"] = "Piercing Dream Emerald",
					["recipeID"] = 73378
				},
				{
					["name"] = "Piercing Elven Peridot",
					["recipeID"] = 101744
				},
				{
					["name"] = "Piercing Jasper",
					["recipeID"] = 73275
				},
				{
					["name"] = "Puissant Dream Emerald",
					["recipeID"] = 73382
				},
				{
					["name"] = "Puissant Elven Peridot",
					["recipeID"] = 101759
				},
				{
					["name"] = "Puissant Jasper",
					["recipeID"] = 73279
				},
				{
					["name"] = "Radiant Elven Peridot",
					["recipeID"] = 101752
				},
				{
					["name"] = "Regal Dream Emerald",
					["recipeID"] = 73375
				},
				{
					["name"] = "Regal Elven Peridot",
					["recipeID"] = 101756
				},
				{
					["name"] = "Regal Jasper",
					["recipeID"] = 73272
				},
				{
					["name"] = "Sensei's Dream Emerald",
					["recipeID"] = 73384
				},
				{
					["name"] = "Sensei's Elven Peridot",
					["recipeID"] = 101746
				},
				{
					["name"] = "Sensei's Jasper",
					["recipeID"] = 73281
				},
				{
					["name"] = "Shattered Elven Peridot",
					["recipeID"] = 101753
				},
				{
					["name"] = "Steady Dream Emerald",
					["recipeID"] = 73379
				},
				{
					["name"] = "Steady Elven Peridot",
					["recipeID"] = 101760
				},
				{
					["name"] = "Steady Jasper",
					["recipeID"] = 73276
				},
				{
					["name"] = "Turbid Elven Peridot",
					["recipeID"] = 101751
				},
				{
					["name"] = "Vivid Dream Emerald",
					["recipeID"] = 96226
				},
				{
					["name"] = "Vivid Elven Peridot",
					["recipeID"] = 101750
				},
				{
					["name"] = "Zen Dream Emerald",
					["recipeID"] = 73383
				},
				{
					["name"] = "Zen Elven Peridot",
					["recipeID"] = 101748
				},
				{
					["name"] = "Zen Jasper",
					["recipeID"] = 73280
				}
			}
		},
		{
			["name"] = "Orange Gems",
			["categoryID"] = 836,
			["groups"] = {
				{
					["name"] = "Adept Ember Topaz",
					["recipeID"] = 73371
				},
				{
					["name"] = "Adept Hessonite",
					["recipeID"] = 73268
				},
				{
					["name"] = "Adept Lava Coral",
					["recipeID"] = 101773
				},
				{
					["name"] = "Artful Ember Topaz",
					["recipeID"] = 73373
				},
				{
					["name"] = "Artful Hessonite",
					["recipeID"] = 73270
				},
				{
					["name"] = "Artful Lava Coral",
					["recipeID"] = 101775
				},
				{
					["name"] = "Champion's Lava Coral",
					["recipeID"] = 101768
				},
				{
					["name"] = "Crafty Lava Coral",
					["recipeID"] = 101762
				},
				{
					["name"] = "Deadly Ember Topaz",
					["recipeID"] = 73365
				},
				{
					["name"] = "Deadly Hessonite",
					["recipeID"] = 73262
				},
				{
					["name"] = "Deadly Lava Coral",
					["recipeID"] = 101761
				},
				{
					["name"] = "Deft Ember Topaz",
					["recipeID"] = 73368
				},
				{
					["name"] = "Deft Hessonite",
					["recipeID"] = 73265
				},
				{
					["name"] = "Deft Lava Coral",
					["recipeID"] = 101769
				},
				{
					["name"] = "Fierce Ember Topaz",
					["recipeID"] = 73367
				},
				{
					["name"] = "Fierce Hessonite",
					["recipeID"] = 73264
				},
				{
					["name"] = "Fierce Lava Coral",
					["recipeID"] = 101772
				},
				{
					["name"] = "Fine Ember Topaz",
					["recipeID"] = 73372
				},
				{
					["name"] = "Fine Hessonite",
					["recipeID"] = 73269
				},
				{
					["name"] = "Fine Lava Coral",
					["recipeID"] = 101776
				},
				{
					["name"] = "Inscribed Ember Topaz",
					["recipeID"] = 73364
				},
				{
					["name"] = "Inscribed Hessonite",
					["recipeID"] = 73260
				},
				{
					["name"] = "Inscribed Lava Coral",
					["recipeID"] = 101764
				},
				{
					["name"] = "Keen Ember Topaz",
					["recipeID"] = 73374
				},
				{
					["name"] = "Keen Hessonite",
					["recipeID"] = 73271
				},
				{
					["name"] = "Keen Lava Coral",
					["recipeID"] = 101774
				},
				{
					["name"] = "Lucent Ember Topaz",
					["recipeID"] = 95755
				},
				{
					["name"] = "Lucent Lava Coral",
					["recipeID"] = 101778
				},
				{
					["name"] = "Polished Ember Topaz",
					["recipeID"] = 73361
				},
				{
					["name"] = "Polished Hessonite",
					["recipeID"] = 73258
				},
				{
					["name"] = "Polished Lava Coral",
					["recipeID"] = 101765
				},
				{
					["name"] = "Potent Ember Topaz",
					["recipeID"] = 73366
				},
				{
					["name"] = "Potent Hessonite",
					["recipeID"] = 73263
				},
				{
					["name"] = "Potent Lava Coral",
					["recipeID"] = 101763
				},
				{
					["name"] = "Reckless Ember Topaz",
					["recipeID"] = 73369
				},
				{
					["name"] = "Reckless Hessonite",
					["recipeID"] = 73266
				},
				{
					["name"] = "Reckless Lava Coral",
					["recipeID"] = 101771
				},
				{
					["name"] = "Resolute Ember Topaz",
					["recipeID"] = 73362
				},
				{
					["name"] = "Resolute Hessonite",
					["recipeID"] = 73259,
					["timeline"] = { CREATED_4_0_3 },
				},
				{
					["name"] = "Resolute Lava Coral",
					["recipeID"] = 101766
				},
				{
					["name"] = "Resplendent Ember Topaz",
					["recipeID"] = 95756
				},
				{
					["name"] = "Resplendent Lava Coral",
					["recipeID"] = 101782
				},
				{
					["name"] = "Skillful Ember Topaz",
					["recipeID"] = 73370
				},
				{
					["name"] = "Skillful Hessonite",
					["recipeID"] = 73267
				},
				{
					["name"] = "Skillful Lava Coral",
					["recipeID"] = 101777
				},
				{
					["name"] = "Splendid Lava Coral",
					["recipeID"] = 101781
				},
				{
					["name"] = "Stalwart Lava Coral",
					["recipeID"] = 101767
				},
				{
					["name"] = "Tenuous Lava Coral",
					["recipeID"] = 101779
				},
				{
					["name"] = "Wicked Lava Coral",
					["recipeID"] = 101770
				},
				{
					["name"] = "Willful Ember Topaz",
					["recipeID"] = 95754
				},
				{
					["name"] = "Willful Lava Coral",
					["recipeID"] = 101780
				}
			}
		},
		{
			["name"] = "Purple Gems",
			["categoryID"] = 837,
			["groups"] = {
				{
					["name"] = "Accurate Demonseye",
					["recipeID"] = 73360
				},
				{
					["name"] = "Accurate Nightstone",
					["recipeID"] = 73250
				},
				{
					["name"] = "Accurate Shadow Spinel",
					["recipeID"] = 101784
				},
				{
					["name"] = "Defender's Demonseye",
					["recipeID"] = 73352
				},
				{
					["name"] = "Defender's Nightstone",
					["recipeID"] = 73242
				},
				{
					["name"] = "Defender's Shadow Spinel",
					["recipeID"] = 101793
				},
				{
					["name"] = "Etched Demonseye",
					["recipeID"] = 73356
				},
				{
					["name"] = "Etched Nightstone",
					["recipeID"] = 73246
				},
				{
					["name"] = "Etched Shadow Spinel",
					["recipeID"] = 101787
				},
				{
					["name"] = "Glinting Demonseye",
					["recipeID"] = 73357
				},
				{
					["name"] = "Glinting Nightstone",
					["recipeID"] = 73247
				},
				{
					["name"] = "Glinting Shadow Spinel",
					["recipeID"] = 101783
				},
				{
					["name"] = "Guardian's Demonseye",
					["recipeID"] = 73354
				},
				{
					["name"] = "Guardian's Nightstone",
					["recipeID"] = 73244
				},
				{
					["name"] = "Guardian's Shadow Spinel",
					["recipeID"] = 101791
				},
				{
					["name"] = "Mysterious Shadow Spinel",
					["recipeID"] = 101788
				},
				{
					["name"] = "Purified Demonseye",
					["recipeID"] = 73355
				},
				{
					["name"] = "Purified Nightstone",
					["recipeID"] = 73245
				},
				{
					["name"] = "Purified Shadow Spinel",
					["recipeID"] = 101789
				},
				{
					["name"] = "Retaliating Demonseye",
					["recipeID"] = 73358
				},
				{
					["name"] = "Retaliating Nightstone",
					["recipeID"] = 73248
				},
				{
					["name"] = "Retaliating Shadow Spinel",
					["recipeID"] = 101786
				},
				{
					["name"] = "Shifting Demonseye",
					["recipeID"] = 73351
				},
				{
					["name"] = "Shifting Nightstone",
					["recipeID"] = 73241
				},
				{
					["name"] = "Shifting Shadow Spinel",
					["recipeID"] = 101790
				},
				{
					["name"] = "Sovereign Demonseye",
					["recipeID"] = 73350
				},
				{
					["name"] = "Sovereign Nightstone",
					["recipeID"] = 73240
				},
				{
					["name"] = "Sovereign Shadow Spinel",
					["recipeID"] = 101794
				},
				{
					["name"] = "Timeless Demonseye",
					["recipeID"] = 73353
				},
				{
					["name"] = "Timeless Nightstone",
					["recipeID"] = 73243
				},
				{
					["name"] = "Timeless Shadow Spinel",
					["recipeID"] = 101792
				},
				{
					["name"] = "Veiled Demonseye",
					["recipeID"] = 73359
				},
				{
					["name"] = "Veiled Nightstone",
					["recipeID"] = 73249
				},
				{
					["name"] = "Veiled Shadow Spinel",
					["recipeID"] = 101785
				}
			}
		},
		{
			["name"] = "Red Gems",
			["categoryID"] = 838,
			["groups"] = {
				{
					["name"] = "Bold Carnelian",
					["recipeID"] = 73222
				},
				{
					["name"] = "Bold Chimera's Eye",
					["recipeID"] = 73396
				},
				{
					["name"] = "Bold Inferno Ruby",
					["recipeID"] = 73335
				},
				{
					["name"] = "Bold Queen's Garnet",
					["recipeID"] = 101799
				},
				{
					["name"] = "Brilliant Carnelian",
					["recipeID"] = 73225
				},
				{
					["name"] = "Brilliant Chimera's Eye",
					["recipeID"] = 73399
				},
				{
					["name"] = "Brilliant Inferno Ruby",
					["recipeID"] = 73338
				},
				{
					["name"] = "Brilliant Queen's Garnet",
					["recipeID"] = 101797
				},
				{
					["name"] = "Delicate Carnelian",
					["recipeID"] = 73223
				},
				{
					["name"] = "Delicate Chimera's Eye",
					["recipeID"] = 73397
				},
				{
					["name"] = "Delicate Inferno Ruby",
					["recipeID"] = 73336
				},
				{
					["name"] = "Delicate Queen's Garnet",
					["recipeID"] = 101795
				},
				{
					["name"] = "Flashing Carnelian",
					["recipeID"] = 73224
				},
				{
					["name"] = "Flashing Chimera's Eye",
					["recipeID"] = 73398
				},
				{
					["name"] = "Flashing Inferno Ruby",
					["recipeID"] = 73337
				},
				{
					["name"] = "Flashing Queen's Garnet",
					["recipeID"] = 101798
				},
				{
					["name"] = "Precise Carnelian",
					["recipeID"] = 73226
				},
				{
					["name"] = "Precise Chimera's Eye",
					["recipeID"] = 73400
				},
				{
					["name"] = "Precise Inferno Ruby",
					["recipeID"] = 73339
				},
				{
					["name"] = "Precise Queen's Garnet",
					["recipeID"] = 101796
				}
			}
		},
		{
			["name"] = "Yellow Gems",
			["categoryID"] = 839,
			["groups"] = {
				{
					["name"] = "Fractured Alicite",
					["recipeID"] = 73239
				},
				{
					["name"] = "Fractured Amberjewel",
					["recipeID"] = 73349
				},
				{
					["name"] = "Fractured Chimera's Eye",
					["recipeID"] = 73409
				},
				{
					["name"] = "Fractured Lightstone",
					["recipeID"] = 101803
				},
				{
					["name"] = "Mystic Alicite",
					["recipeID"] = 73233,
					["timeline"] = { CREATED_4_0_3 },
				},
				{
					["name"] = "Mystic Amberjewel",
					["recipeID"] = 73347
				},
				{
					["name"] = "Mystic Chimera's Eye",
					["recipeID"] = 73407
				},
				{
					["name"] = "Mystic Lightstone",
					["recipeID"] = 101804
				},
				{
					["name"] = "Quick Alicite",
					["recipeID"] = 73234
				},
				{
					["name"] = "Quick Amberjewel",
					["recipeID"] = 73348
				},
				{
					["name"] = "Quick Chimera's Eye",
					["recipeID"] = 73408
				},
				{
					["name"] = "Quick Lightstone",
					["recipeID"] = 101802
				},
				{
					["name"] = "Smooth Alicite",
					["recipeID"] = 73232
				},
				{
					["name"] = "Smooth Amberjewel",
					["recipeID"] = 73346
				},
				{
					["name"] = "Smooth Chimera's Eye",
					["recipeID"] = 73406
				},
				{
					["name"] = "Smooth Lightstone",
					["recipeID"] = 101800
				},
				{
					["name"] = "Subtle Alicite",
					["recipeID"] = 73231
				},
				{
					["name"] = "Subtle Amberjewel",
					["recipeID"] = 73345
				},
				{
					["name"] = "Subtle Chimera's Eye",
					["recipeID"] = 73405
				},
				{
					["name"] = "Subtle Lightstone",
					["recipeID"] = 101801
				}
			}
		},
		{
			["name"] = "Meta Gems",
			["categoryID"] = 840,
			["groups"] = {
				{
					["name"] = "Agile Shadowspirit Diamond",
					["recipeID"] = 96255
				},
				{
					["name"] = "Austere Shadowspirit Diamond",
					["recipeID"] = 73468
				},
				{
					["name"] = "Bracing Shadowspirit Diamond",
					["recipeID"] = 73466
				},
				{
					["name"] = "Burning Shadowspirit Diamond",
					["recipeID"] = 96257
				},
				{
					["name"] = "Chaotic Shadowspirit Diamond",
					["recipeID"] = 73465
				},
				{
					["name"] = "Destructive Shadowspirit Diamond",
					["recipeID"] = 73472
				},
				{
					["name"] = "Effulgent Shadowspirit Diamond",
					["recipeID"] = 73469
				},
				{
					["name"] = "Ember Shadowspirit Diamond",
					["recipeID"] = 73470
				},
				{
					["name"] = "Enigmatic Shadowspirit Diamond",
					["recipeID"] = 73474
				},
				{
					["name"] = "Eternal Shadowspirit Diamond",
					["recipeID"] = 73467
				},
				{
					["name"] = "Fleet Shadowspirit Diamond",
					["recipeID"] = 73464
				},
				{
					["name"] = "Forlorn Shadowspirit Diamond",
					["recipeID"] = 73476
				},
				{
					["name"] = "Impassive Shadowspirit Diamond",
					["recipeID"] = 73475
				},
				{
					["name"] = "Powerful Shadowspirit Diamond",
					["recipeID"] = 73473
				},
				{
					["name"] = "Reverberating Shadowspirit Diamond",
					["recipeID"] = 96256
				},
				{
					["name"] = "Revitalizing Shadowspirit Diamond",
					["recipeID"] = 73471
				}
			}
		},
		{
			["name"] = "Necklaces",
			["categoryID"] = 841,
			["groups"] = {
				{
					["name"] = "Alicite Pendant",
					["recipeID"] = 73496
				},
				-- #if ANYCLASSIC
				firelands({
					["name"] = "Bloodthirsty Amberjewel Pendant",
					["recipeID"] = 1216321
				}),
				firelands({
					["name"] = "Bloodthirsty Ruby Choker",
					["recipeID"] = 1216331
				}),
				firelands({
					["name"] = "Bloodthirsty Sapphire Necklace",
					["recipeID"] = 1216330
				}),
				-- #endif
				{
					["name"] = "Brazen Elementium Medallion",
					["recipeID"] = 73521
				},
				{
					["name"] = "Elementium Guardian",
					["recipeID"] = 73506
				},
				{
					["name"] = "Entwined Elementium Choker",
					["recipeID"] = 73504
				},
				{
					["name"] = "Eye of Many Deaths",
					["recipeID"] = 73505
				},
				{
					["name"] = "Nightstone Choker",
					["recipeID"] = 73497
				},
				-- #if ANYCLASSIC
				--[[
				dragonsoul({
					["name"] = "Vicious Amberjewel Pendant",
					["recipeID"] = 99543	-- TODO: Get the spellID after Dragon Soul is launched.
				}),
				dragonsoul({
					["name"] = "Vicious Ruby Choker",
					["recipeID"] = 99544	-- TODO: Get the spellID after Dragon Soul is launched.
				}),
				dragonsoul({
					["name"] = "Vicious Sapphire Necklace",
					["recipeID"] = 99542	-- TODO: Get the spellID after Dragon Soul is launched.
				}),
				--]]
				-- #endif
				bloodied({
					["name"] = "Vicious Amberjewel Pendant",
					["recipeID"] = 99543
				}),
				bloodied({
					["name"] = "Vicious Ruby Choker",
					["recipeID"] = 99544
				}),
				bloodied({
					["name"] = "Vicious Sapphire Necklace",
					["recipeID"] = 99542
				}),
			}
		},
		{
			["name"] = "Rings",
			["categoryID"] = 842,
			["groups"] = {
				{
					["name"] = "Band of Blades",
					["recipeID"] = 73498
				},
				-- #if ANYCLASSIC
				firelands({
					["name"] = "Bloodthirsty Amberjewel Band",
					["recipeID"] = 1216328
				}),
				firelands({
					["name"] = "Bloodthirsty Ruby Signet",
					["recipeID"] = 1216329
				}),
				firelands({
					["name"] = "Bloodthirsty Sapphire Ring",
					["recipeID"] = 1216323
				}),
				-- #endif
				{
					["name"] = "Elementium Destroyer's Ring",
					["recipeID"] = 73520
				},
				{
					["name"] = "Elementium Moebius Band",
					["recipeID"] = 73503
				},
				{
					["name"] = "Hessonite Band",
					["recipeID"] = 73495
				},
				{
					["name"] = "Jasper Ring",
					["recipeID"] = 73494
				},
				{
					["name"] = "Punisher's Band",
					["recipeID"] = 98921
				},
				{
					["name"] = "Ring of Warring Elements",
					["recipeID"] = 73502
				},
				-- #if ANYCLASSIC
				--[[
				dragonsoul({
					["name"] = "Vicious Amberjewel Band",
					["recipeID"] = 99540	-- TODO: Get the spellID after Dragon Soul is launched.
				}),
				dragonsoul({
					["name"] = "Vicious Ruby Signet",
					["recipeID"] = 99541	-- TODO: Get the spellID after Dragon Soul is launched.
				}),
				dragonsoul({
					["name"] = "Vicious Sapphire Ring",
					["recipeID"] = 99539	-- TODO: Get the spellID after Dragon Soul is launched.
				}),
				]]--
				-- #endif
				bloodied({
					["name"] = "Vicious Amberjewel Band",
					["recipeID"] = 99540
				}),
				bloodied({
					["name"] = "Vicious Ruby Signet",
					["recipeID"] = 99541
				}),
				bloodied({
					["name"] = "Vicious Sapphire Ring",
					["recipeID"] = 99539
				}),
			}
		},
		{
			["name"] = "Crowns",
			["categoryID"] = 843,
			["groups"] = {
				{
					["name"] = "Jeweler's Amber Monocle",
					["recipeID"] = 73627
				},
				{
					["name"] = "Jeweler's Ruby Monocle",
					["recipeID"] = 73625
				},
				{
					["name"] = "Jeweler's Sapphire Monocle",
					["recipeID"] = 73626
				},
				{
					["name"] = "Rhinestone Sunglasses",
					["recipeID"] = 73623
				}
			}
		},
		{
			["name"] = "Fist Weapons",
			["categoryID"] = 844,
			["groups"] = {
				{
					["name"] = "Carnelian Spikes",
					["recipeID"] = 73620
				},
				{
					["name"] = "The Perforator",
					["recipeID"] = 73621
				}
			}
		},
		{
			["name"] = "Toys & Prisms",
			["categoryID"] = 845,
			["groups"] = {
				{
					["name"] = "Fire Prism",
					["recipeID"] = 73478
				},
				{
					["name"] = "Stardust",
					["recipeID"] = 73622
				}
			}
		}
	})),
	applyclassicphase(MOP_PHASE_LANDFALL, expansion(EXPANSION.MOP, {
		{
			["name"] = "Research",
			["categoryID"] = 831,
			["groups"] = {
				{
					["name"] = "Imperial Amethyst",
					["recipeID"] = 131691
				},
				{
					["name"] = "Primordial Ruby",
					["recipeID"] = 131686
				},
				{
					["name"] = "River's Heart",
					["recipeID"] = 131593
				},
				{
					["name"] = "Secrets of the Stone",
					["recipeID"] = 131759
				},
				{
					["name"] = "Serpent's Heart",
					["recipeID"] = 140050
				},
				{
					["name"] = "Sun's Radiance",
					["recipeID"] = 131695
				},
				{
					["name"] = "Vermilion Onyx",
					["recipeID"] = 131690
				},
				{
					["name"] = "Wild Jade",
					["recipeID"] = 131688
				}
			}
		},
		{
			["name"] = "Blue Gems",
			["categoryID"] = 821,
			["groups"] = {
				{
					["name"] = "Rigid Lapis Lazuli",
					["recipeID"] = 107617
				},
				{
					["name"] = "Rigid River's Heart",
					["recipeID"] = 106947
				},
				{
					["name"] = "Rigid Serpent's Eye",
					["recipeID"] = 122681
				},
				{
					["name"] = "Solid Lapis Lazuli",
					["recipeID"] = 107619
				},
				{
					["name"] = "Solid River's Heart",
					["recipeID"] = 106950
				},
				{
					["name"] = "Solid Serpent's Eye",
					["recipeID"] = 122678
				},
				{
					["name"] = "Sparkling Lapis Lazuli",
					["recipeID"] = 107620
				},
				{
					["name"] = "Sparkling River's Heart",
					["recipeID"] = 106949
				},
				{
					["name"] = "Sparkling Serpent's Eye",
					["recipeID"] = 122677
				},
				{
					["name"] = "Stormy Lapis Lazuli",
					["recipeID"] = 107621
				},
				{
					["name"] = "Stormy River's Heart",
					["recipeID"] = 106948
				}
			}
		},
		{
			["name"] = "Green Gems",
			["categoryID"] = 822,
			["groups"] = {
				{
					["name"] = "Balanced Alexandrite",
					["recipeID"] = 107598
				},
				{
					["name"] = "Balanced Wild Jade",
					["recipeID"] = 106960
				},
				{
					["name"] = "Effulgent Alexandrite",
					["recipeID"] = 107599
				},
				{
					["name"] = "Effulgent Wild Jade",
					["recipeID"] = 106957
				},
				{
					["name"] = "Energized Alexandrite",
					["recipeID"] = 107600
				},
				{
					["name"] = "Energized Wild Jade",
					["recipeID"] = 107737
				},
				{
					["name"] = "Forceful Alexandrite",
					["recipeID"] = 107601
				},
				{
					["name"] = "Forceful Wild Jade",
					["recipeID"] = 107738
				},
				{
					["name"] = "Jagged Alexandrite",
					["recipeID"] = 107602
				},
				{
					["name"] = "Jagged Wild Jade",
					["recipeID"] = 107739
				},
				{
					["name"] = "Lightning Alexandrite",
					["recipeID"] = 107604
				},
				{
					["name"] = "Lightning Wild Jade",
					["recipeID"] = 106955
				},
				{
					["name"] = "Misty Alexandrite",
					["recipeID"] = 107605
				},
				{
					["name"] = "Misty Wild Jade",
					["recipeID"] = 106953
				},
				{
					["name"] = "Nimble Alexandrite",
					["recipeID"] = 107606
				},
				{
					["name"] = "Nimble Wild Jade",
					["recipeID"] = 107740
				},
				{
					["name"] = "Piercing Alexandrite",
					["recipeID"] = 107607
				},
				{
					["name"] = "Piercing Wild Jade",
					["recipeID"] = 106954
				},
				{
					["name"] = "Puissant Alexandrite",
					["recipeID"] = 107608
				},
				{
					["name"] = "Puissant Wild Jade",
					["recipeID"] = 107742
				},
				{
					["name"] = "Radiant Alexandrite",
					["recipeID"] = 107609
				},
				{
					["name"] = "Radiant Wild Jade",
					["recipeID"] = 107743
				},
				{
					["name"] = "Regal Alexandrite",
					["recipeID"] = 107610
				},
				{
					["name"] = "Regal Wild Jade",
					["recipeID"] = 107744
				},
				{
					["name"] = "Sensei's Alexandrite",
					["recipeID"] = 107611
				},
				{
					["name"] = "Sensei's Wild Jade",
					["recipeID"] = 106956
				},
				{
					["name"] = "Shattered Alexandrite",
					["recipeID"] = 107612
				},
				{
					["name"] = "Shattered Wild Jade",
					["recipeID"] = 107745
				},
				{
					["name"] = "Steady Alexandrite",
					["recipeID"] = 107613
				},
				{
					["name"] = "Steady Wild Jade",
					["recipeID"] = 107746
				},
				{
					["name"] = "Turbid Alexandrite",
					["recipeID"] = 107614
				},
				{
					["name"] = "Turbid Wild Jade",
					["recipeID"] = 106962
				},
				{
					["name"] = "Vivid Alexandrite",
					["recipeID"] = 107615
				},
				{
					["name"] = "Vivid Wild Jade",
					["recipeID"] = 106961
				},
				{
					["name"] = "Zen Alexandrite",
					["recipeID"] = 107616
				},
				{
					["name"] = "Zen Wild Jade",
					["recipeID"] = 106958
				}
			}
		},
		{
			["name"] = "Orange Gems",
			["categoryID"] = 823,
			["groups"] = {
				{
					["name"] = "Adept Tiger Opal",
					["recipeID"] = 107645
				},
				{
					["name"] = "Adept Vermilion Onyx",
					["recipeID"] = 107715
				},
				{
					["name"] = "Artful Tiger Opal",
					["recipeID"] = 107646
				},
				{
					["name"] = "Artful Vermilion Onyx",
					["recipeID"] = 107716
				},
				{
					["name"] = "Champion's Tiger Opal",
					["recipeID"] = 107647
				},
				{
					["name"] = "Champion's Vermilion Onyx",
					["recipeID"] = 107717
				},
				{
					["name"] = "Crafty Tiger Opal",
					["recipeID"] = 107648
				},
				{
					["name"] = "Crafty Vermilion Onyx",
					["recipeID"] = 107718
				},
				{
					["name"] = "Deadly Tiger Opal",
					["recipeID"] = 107649
				},
				{
					["name"] = "Deadly Vermilion Onyx",
					["recipeID"] = 107719
				},
				{
					["name"] = "Deft Tiger Opal",
					["recipeID"] = 107650
				},
				{
					["name"] = "Deft Vermilion Onyx",
					["recipeID"] = 107720
				},
				{
					["name"] = "Fierce Tiger Opal",
					["recipeID"] = 107651
				},
				{
					["name"] = "Fierce Vermilion Onyx",
					["recipeID"] = 107721
				},
				{
					["name"] = "Fine Tiger Opal",
					["recipeID"] = 107652
				},
				{
					["name"] = "Fine Vermilion Onyx",
					["recipeID"] = 107722
				},
				{
					["name"] = "Inscribed Tiger Opal",
					["recipeID"] = 107653
				},
				{
					["name"] = "Inscribed Vermilion Onyx",
					["recipeID"] = 107723
				},
				{
					["name"] = "Keen Tiger Opal",
					["recipeID"] = 107654
				},
				{
					["name"] = "Keen Vermilion Onyx",
					["recipeID"] = 107724
				},
				{
					["name"] = "Lucent Serpent's Eye",
					["recipeID"] = 136270
				},
				{
					["name"] = "Lucent Tiger Opal",
					["recipeID"] = 107655
				},
				{
					["name"] = "Lucent Vermilion Onyx",
					["recipeID"] = 107725
				},
				{
					["name"] = "Polished Tiger Opal",
					["recipeID"] = 107656
				},
				{
					["name"] = "Polished Vermilion Onyx",
					["recipeID"] = 107726
				},
				{
					["name"] = "Potent Tiger Opal",
					["recipeID"] = 107657
				},
				{
					["name"] = "Potent Vermilion Onyx",
					["recipeID"] = 107727
				},
				{
					["name"] = "Reckless Tiger Opal",
					["recipeID"] = 107658
				},
				{
					["name"] = "Reckless Vermilion Onyx",
					["recipeID"] = 107728
				},
				{
					["name"] = "Resolute Tiger Opal",
					["recipeID"] = 107659
				},
				{
					["name"] = "Resolute Vermilion Onyx",
					["recipeID"] = 107729
				},
				{
					["name"] = "Resplendent Serpent's Eye",
					["recipeID"] = 136269
				},
				{
					["name"] = "Resplendent Tiger Opal",
					["recipeID"] = 107660
				},
				{
					["name"] = "Resplendent Vermilion Onyx",
					["recipeID"] = 107730
				},
				{
					["name"] = "Skillful Tiger Opal",
					["recipeID"] = 107661
				},
				{
					["name"] = "Skillful Vermilion Onyx",
					["recipeID"] = 107731
				},
				{
					["name"] = "Splendid Tiger Opal",
					["recipeID"] = 107662
				},
				{
					["name"] = "Splendid Vermilion Onyx",
					["recipeID"] = 107732
				},
				{
					["name"] = "Stalwart Tiger Opal",
					["recipeID"] = 107663
				},
				{
					["name"] = "Stalwart Vermilion Onyx",
					["recipeID"] = 107733
				},
				{
					["name"] = "Tenuous Tiger Opal",
					["recipeID"] = 107665
				},
				{
					["name"] = "Tenuous Vermilion Onyx",
					["recipeID"] = 107734
				},
				{
					["name"] = "Wicked Tiger Opal",
					["recipeID"] = 107666
				},
				{
					["name"] = "Wicked Vermilion Onyx",
					["recipeID"] = 107735
				},
				{
					["name"] = "Willful Serpent's Eye",
					["recipeID"] = 136272
				},
				{
					["name"] = "Willful Tiger Opal",
					["recipeID"] = 107667
				},
				{
					["name"] = "Willful Vermilion Onyx",
					["recipeID"] = 107736
				}
			}
		},
		{
			["name"] = "Purple Gems",
			["categoryID"] = 824,
			["groups"] = {
				{
					["name"] = "Accurate Imperial Amethyst",
					["recipeID"] = 107693
				},
				{
					["name"] = "Accurate Roguestone",
					["recipeID"] = 107627
				},
				{
					["name"] = "Assassin's Imperial Amethyst",
					["recipeID"] = 130657
				},
				{
					["name"] = "Assassin's Roguestone",
					["recipeID"] = 130656
				},
				{
					["name"] = "Assassin's Serpent's Eye",
					["recipeID"] = 136274
				},
				{
					["name"] = "Defender's Imperial Amethyst",
					["recipeID"] = 107694
				},
				{
					["name"] = "Defender's Roguestone",
					["recipeID"] = 107628
				},
				{
					["name"] = "Etched Imperial Amethyst",
					["recipeID"] = 107695
				},
				{
					["name"] = "Etched Roguestone",
					["recipeID"] = 107630
				},
				{
					["name"] = "Glinting Imperial Amethyst",
					["recipeID"] = 107696
				},
				{
					["name"] = "Glinting Roguestone",
					["recipeID"] = 107631
				},
				{
					["name"] = "Guardian's Imperial Amethyst",
					["recipeID"] = 107697
				},
				{
					["name"] = "Guardian's Roguestone",
					["recipeID"] = 107632
				},
				{
					["name"] = "Mysterious Imperial Amethyst",
					["recipeID"] = 107698
				},
				{
					["name"] = "Mysterious Roguestone",
					["recipeID"] = 107633
				},
				{
					["name"] = "Mysterious Serpent's Eye",
					["recipeID"] = 136275
				},
				{
					["name"] = "Purified Imperial Amethyst",
					["recipeID"] = 107699
				},
				{
					["name"] = "Purified Roguestone",
					["recipeID"] = 107634
				},
				{
					["name"] = "Retaliating Imperial Amethyst",
					["recipeID"] = 107700
				},
				{
					["name"] = "Retaliating Roguestone",
					["recipeID"] = 107635
				},
				{
					["name"] = "Shifting Imperial Amethyst",
					["recipeID"] = 107701
				},
				{
					["name"] = "Shifting Roguestone",
					["recipeID"] = 107636
				},
				{
					["name"] = "Sovereign Imperial Amethyst",
					["recipeID"] = 107702
				},
				{
					["name"] = "Sovereign Roguestone",
					["recipeID"] = 107637
				},
				{
					["name"] = "Tense Imperial Amethyst",
					["recipeID"] = 130658
				},
				{
					["name"] = "Tense Roguestone",
					["recipeID"] = 130655
				},
				{
					["name"] = "Tense Serpent's Eye",
					["recipeID"] = 136273
				},
				{
					["name"] = "Timeless Imperial Amethyst",
					["recipeID"] = 107703
				},
				{
					["name"] = "Timeless Roguestone",
					["recipeID"] = 107638
				},
				{
					["name"] = "Veiled Imperial Amethyst",
					["recipeID"] = 107704
				},
				{
					["name"] = "Veiled Roguestone",
					["recipeID"] = 107639
				}
			}
		},
		{
			["name"] = "Red Gems",
			["categoryID"] = 825,
			["groups"] = {
				{
					["name"] = "Bold Pandarian Garnet",
					["recipeID"] = 107622
				},
				{
					["name"] = "Bold Primordial Ruby",
					["recipeID"] = 107705
				},
				{
					["name"] = "Bold Serpent's Eye",
					["recipeID"] = 122675
				},
				{
					["name"] = "Brilliant Pandarian Garnet",
					["recipeID"] = 107623
				},
				{
					["name"] = "Brilliant Primordial Ruby",
					["recipeID"] = 107706
				},
				{
					["name"] = "Brilliant Serpent's Eye",
					["recipeID"] = 122676
				},
				{
					["name"] = "Delicate Pandarian Garnet",
					["recipeID"] = 107624
				},
				{
					["name"] = "Delicate Primordial Ruby",
					["recipeID"] = 107707
				},
				{
					["name"] = "Delicate Serpent's Eye",
					["recipeID"] = 122674
				},
				{
					["name"] = "Flashing Pandarian Garnet",
					["recipeID"] = 107625
				},
				{
					["name"] = "Flashing Primordial Ruby",
					["recipeID"] = 107708
				},
				{
					["name"] = "Flashing Serpent's Eye",
					["recipeID"] = 122685
				},
				{
					["name"] = "Precise Pandarian Garnet",
					["recipeID"] = 107626
				},
				{
					["name"] = "Precise Primordial Ruby",
					["recipeID"] = 107709
				},
				{
					["name"] = "Precise Serpent's Eye",
					["recipeID"] = 122683
				}
			}
		},
		{
			["name"] = "Yellow Gems",
			["categoryID"] = 833,
			["groups"] = {
				{
					["name"] = "Fractured Serpent's Eye",
					["recipeID"] = 122684
				},
				{
					["name"] = "Fractured Sun's Radiance",
					["recipeID"] = 107710
				},
				{
					["name"] = "Fractured Sunstone",
					["recipeID"] = 107640
				},
				{
					["name"] = "Mystic Sun's Radiance",
					["recipeID"] = 107711
				},
				{
					["name"] = "Mystic Sunstone",
					["recipeID"] = 107641
				},
				{
					["name"] = "Quick Serpent's Eye",
					["recipeID"] = 122682
				},
				{
					["name"] = "Quick Sun's Radiance",
					["recipeID"] = 107712
				},
				{
					["name"] = "Quick Sunstone",
					["recipeID"] = 107642
				},
				{
					["name"] = "Smooth Serpent's Eye",
					["recipeID"] = 122680
				},
				{
					["name"] = "Smooth Sun's Radiance",
					["recipeID"] = 107713
				},
				{
					["name"] = "Smooth Sunstone",
					["recipeID"] = 107643
				},
				{
					["name"] = "Subtle Serpent's Eye",
					["recipeID"] = 122679
				},
				{
					["name"] = "Subtle Sun's Radiance",
					["recipeID"] = 107714
				},
				{
					["name"] = "Subtle Sunstone",
					["recipeID"] = 107644
				}
			}
		},
		{
			["name"] = "Meta Gems",
			["categoryID"] = 827,
			["groups"] = {
				{
					["name"] = "Agile Primal Diamond",
					["recipeID"] = 107753
				},
				{
					["name"] = "Austere Primal Diamond",
					["recipeID"] = 107754
				},
				{
					["name"] = "Burning Primal Diamond",
					["recipeID"] = 107756
				},
				{
					["name"] = "Destructive Primal Diamond",
					["recipeID"] = 107757
				},
				{
					["name"] = "Effulgent Primal Diamond",
					["recipeID"] = 107758
				},
				{
					["name"] = "Ember Primal Diamond",
					["recipeID"] = 107759
				},
				{
					["name"] = "Enigmatic Primal Diamond",
					["recipeID"] = 107760
				},
				{
					["name"] = "Eternal Primal Diamond",
					["recipeID"] = 107762
				},
				{
					["name"] = "Fleet Primal Diamond",
					["recipeID"] = 107763
				},
				{
					["name"] = "Forlorn Primal Diamond",
					["recipeID"] = 107764
				},
				{
					["name"] = "Impassive Primal Diamond",
					["recipeID"] = 107765
				},
				{
					["name"] = "Powerful Primal Diamond",
					["recipeID"] = 107766
				},
				{
					["name"] = "Primal Diamond",
					["recipeID"] = 140060
				},
				{
					["name"] = "Reverberating Primal Diamond",
					["recipeID"] = 107767
				},
				{
					["name"] = "Revitalizing Primal Diamond",
					["recipeID"] = 107768
				}
			}
		},
		{
			["name"] = "Necklaces",
			["categoryID"] = 828,
			["groups"] = {
				{
					["name"] = "Golembreaker Amulet",
					["recipeID"] = 122670
				},
				{
					["name"] = "Reflection of the Sea",
					["recipeID"] = 122669
				},
				{
					["name"] = "Shadowfire Necklace",
					["recipeID"] = 122662
				},
				{
					["name"] = "Skymage Circle",
					["recipeID"] = 122672
				},
				{
					["name"] = "Tiger Opal Pendant",
					["recipeID"] = 122673
				},
				{
					["name"] = "Widow Chain",
					["recipeID"] = 122671
				}
			}
		},
		{
			["name"] = "Rings",
			["categoryID"] = 829,
			["groups"] = {
				{
					["name"] = "Band of Blood",
					["recipeID"] = 122668
				},
				{
					["name"] = "Heart of the Earth",
					["recipeID"] = 122664
				},
				{
					["name"] = "Lionsfall Ring",
					["recipeID"] = 122667
				},
				{
					["name"] = "Lord's Signet",
					["recipeID"] = 122666
				},
				{
					["name"] = "Ornate Band",
					["recipeID"] = 122661
				},
				{
					["name"] = "Roguestone Shadowband",
					["recipeID"] = 122665
				}
			}
		},
		{
			["name"] = "Mounts",
			["categoryID"] = 830,
			["groups"] = {
				{
					["name"] = "Jade Panther",
					["recipeID"] = 121844
				},
				{
					["name"] = "Jeweled Onyx Panther",
					["recipeID"] = 120045
				},
				{
					["name"] = "Ruby Panther",
					["recipeID"] = 121841
				},
				{
					["name"] = "Sapphire Panther",
					["recipeID"] = 121842
				},
				{
					["name"] = "Sunstone Panther",
					["recipeID"] = 121843
				}
			}
		},
		{
			["name"] = "Toys & Pets",
			["categoryID"] = 832,
			["groups"] = {
				{
					["name"] = "Jade Owl",
					["recipeID"] = 131897
				},
				{
					["name"] = "Sapphire Cub",
					["recipeID"] = 131898
				},
				{
					["name"] = "Scrying Roguestone",
					["recipeID"] = 122663
				}
			}
		}
	})),
	applyclassicphase(WOD_PHASE_ONE, expansion(EXPANSION.WOD, {
		{
			["name"] = "Reagents and Research",
			["categoryID"] = 374,
			["groups"] = {
				{
					["name"] = "Primal Gemcutting",
					["recipeID"] = 182127
				},
				{
					["name"] = "Secrets of Draenor Jewelcrafting",
					["recipeID"] = 176087
				},
				{
					["name"] = "Taladite Crystal",
					["recipeID"] = 170832,
					["timeline"] = { CREATED_6_0_2 },
				},
				{
					["name"] = "Taladite Crystal",
					["recipeID"] = 170700,
					-- #if NOT ANYCLASSIC
					["u"] = TRAINING,
					-- Beleive this is tied to the non-JC users
					-- #endif
				}
			}
		},
		{
			["name"] = "Jewelry Enhancers",
			["categoryID"] = 375,
			["groups"] = {
				{
					["name"] = "Mighty Taladite Amplifier",
					["timeline"] = { REMOVED_9_0_1 },
					["recipeID"] = 187493,
				},
				{
					["name"] = "Savage Taladite Amplifier",
					["timeline"] = { REMOVED_9_0_1 },
					["recipeID"] = 187517,
				},
				{
					["name"] = "Taladite Amplifier",
					["timeline"] = { REMOVED_9_0_1 },
					["recipeID"] = 170702,
				},
				{
					["name"] = "Taladite Recrystalizer",
					["recipeID"] = 170701
				}
			}
		},
		{
			["name"] = "Jewelry",
			["categoryID"] = 376,
			["groups"] = {
				{
					["name"] = "Glowing Blackrock Band",
					["recipeID"] = 170710
				},
				{
					["name"] = "Glowing Iron Band",
					["recipeID"] = 170704
				},
				{
					["name"] = "Glowing Iron Choker",
					["recipeID"] = 170707
				},
				{
					["name"] = "Glowing Taladite Pendant",
					["recipeID"] = 170716
				},
				{
					["name"] = "Glowing Taladite Ring",
					["recipeID"] = 170713
				},
				{
					["name"] = "Shifting Blackrock Band",
					["recipeID"] = 170711
				},
				{
					["name"] = "Shifting Iron Band",
					["recipeID"] = 170705
				},
				{
					["name"] = "Shifting Iron Choker",
					["recipeID"] = 170708
				},
				{
					["name"] = "Shifting Taladite Pendant",
					["recipeID"] = 170717
				},
				{
					["name"] = "Shifting Taladite Ring",
					["recipeID"] = 170714
				},
				{
					["name"] = "Whispering Blackrock Band",
					["recipeID"] = 170712
				},
				{
					["name"] = "Whispering Iron Band",
					["recipeID"] = 170706
				},
				{
					["name"] = "Whispering Iron Choker",
					["recipeID"] = 170709
				},
				{
					["name"] = "Whispering Taladite Pendant",
					["recipeID"] = 170718
				},
				{
					["name"] = "Whispering Taladite Ring",
					["recipeID"] = 170715
				}
			}
		},
		{
			["name"] = "Gems",
			["categoryID"] = 377,
			["groups"] = {
				{
					["name"] = "Critical Strike Taladite",
					["recipeID"] = 170719
				},
				{
					["name"] = "Greater Critical Strike Taladite",
					["recipeID"] = 170725
				},
				{
					["name"] = "Greater Haste Taladite",
					["recipeID"] = 170726
				},
				{
					["name"] = "Greater Mastery Taladite",
					["recipeID"] = 170727
				},
				{
					["name"] = "Greater Stamina Taladite",
					["recipeID"] = 170730
				},
				{
					["name"] = "Greater Versatility Taladite",
					["recipeID"] = 170729
				},
				{
					["name"] = "Haste Taladite",
					["recipeID"] = 170720
				},
				{
					["name"] = "Immaculate Critical Strike Taladite",
					["recipeID"] = 187634
				},
				{
					["name"] = "Immaculate Haste Taladite",
					["recipeID"] = 187635
				},
				{
					["name"] = "Immaculate Mastery Taladite",
					["recipeID"] = 187636
				},
				{
					["name"] = "Immaculate Stamina Taladite",
					["recipeID"] = 187640
				},
				{
					["name"] = "Immaculate Versatility Taladite",
					["recipeID"] = 187639
				},
				{
					["name"] = "Mastery Taladite",
					["recipeID"] = 170721
				},
				{
					["name"] = "Stamina Taladite",
					["recipeID"] = 170724
				},
				{
					["name"] = "Versatility Taladite",
					["recipeID"] = 170723
				}
			}
		},
		{
			["name"] = "Other",
			["categoryID"] = 378,
			["groups"] = {
				{
					["name"] = "Prismatic Focusing Lens",
					["recipeID"] = 170732
				},
				{
					["name"] = "Reflecting Prism",
					["recipeID"] = 170731
				}
			}
		}
	})),
	applyclassicphase(LEGION_PHASE_ONE, expansion(EXPANSION.LEGION, {
		{
			["name"] = "Training",
			["categoryID"] = 536,
			["groups"] = {
				{
					["name"] = "Empyrial Circlet",
					["recipeID"] = 248937,
					-- #if NOT ANYCLASSIC
					["u"] = TRAINING,				-- Profession Training Recipe
					-- #endif
				},
				{
					["name"] = "Empyrial Crown",
					["recipeID"] = 248940,
					-- #if NOT ANYCLASSIC
					["u"] = TRAINING,				-- Profession Training Recipe
					-- #endif
				},
				{
					["name"] = "Empyrial Florid Malachite Setting",
					["recipeID"] = 248939,
					-- #if NOT ANYCLASSIC
					["u"] = TRAINING,				-- Profession Training Recipe
					-- #endif
				},
				{
					["name"] = "Empyrial Hesselian Setting",
					["recipeID"] = 248938,
					-- #if NOT ANYCLASSIC
					["u"] = TRAINING,				-- Profession Training Recipe
					-- #endif
				},
			},
		},
		{
			["name"] = "Rings",
			["categoryID"] = 465,
			["groups"] = {
				{
					["name"] = "Azsunite Loop",
					["nextRecipeID"] = 195904,
					["recipeID"] = 195858
				},
				{
					["name"] = "Azsunite Loop",
					["nextRecipeID"] = 195925,
					["previousRecipeID"] = 195858,
					["recipeID"] = 195904
				},
				{
					["name"] = "Azsunite Loop",
					["previousRecipeID"] = 195904,
					["recipeID"] = 195925
				},
				{
					["name"] = "Dawnlight Band",
					["nextRecipeID"] = 195910,
					["recipeID"] = 195864
				},
				{
					["name"] = "Dawnlight Band",
					["nextRecipeID"] = 195931,
					["previousRecipeID"] = 195864,
					["recipeID"] = 195910
				},
				{
					["name"] = "Dawnlight Band",
					["previousRecipeID"] = 195910,
					["recipeID"] = 195931
				},
				{
					["name"] = "Deep Amber Loop",
					["nextRecipeID"] = 195902,
					["recipeID"] = 195856
				},
				{
					["name"] = "Deep Amber Loop",
					["nextRecipeID"] = 195923,
					["previousRecipeID"] = 195856,
					["recipeID"] = 195902
				},
				{
					["name"] = "Deep Amber Loop",
					["previousRecipeID"] = 195902,
					["recipeID"] = 195923
				},
				{
					["name"] = "Maelstrom Band",
					["nextRecipeID"] = 195909,
					["recipeID"] = 195863
				},
				{
					["name"] = "Maelstrom Band",
					["nextRecipeID"] = 195930,
					["previousRecipeID"] = 195863,
					["recipeID"] = 195909
				},
				{
					["name"] = "Maelstrom Band",
					["previousRecipeID"] = 195909,
					["recipeID"] = 195930
				},
				{
					["name"] = "Prophetic Band",
					["nextRecipeID"] = 195908,
					["recipeID"] = 195862
				},
				{
					["name"] = "Prophetic Band",
					["nextRecipeID"] = 195929,
					["previousRecipeID"] = 195862,
					["recipeID"] = 195908
				},
				{
					["name"] = "Prophetic Band",
					["previousRecipeID"] = 195908,
					["recipeID"] = 195929
				},
				{
					["name"] = "Queen's Opal Loop",
					["nextRecipeID"] = 209606,
					["recipeID"] = 209603
				},
				{
					["name"] = "Queen's Opal Loop",
					["nextRecipeID"] = 209609,
					["previousRecipeID"] = 209603,
					["recipeID"] = 209606
				},
				{
					["name"] = "Queen's Opal Loop",
					["previousRecipeID"] = 209606,
					["recipeID"] = 209609
				},
				{
					["name"] = "Shadowruby Band",
					["nextRecipeID"] = 209608,
					["recipeID"] = 209605
				},
				{
					["name"] = "Shadowruby Band",
					["nextRecipeID"] = 209611,
					["previousRecipeID"] = 209605,
					["recipeID"] = 209608
				},
				{
					["name"] = "Shadowruby Band",
					["previousRecipeID"] = 209608,
					["recipeID"] = 209611
				},
				{
					["name"] = "Skystone Loop",
					["nextRecipeID"] = 195903,
					["recipeID"] = 195857
				},
				{
					["name"] = "Skystone Loop",
					["nextRecipeID"] = 195924,
					["previousRecipeID"] = 195857,
					["recipeID"] = 195903
				},
				{
					["name"] = "Skystone Loop",
					["previousRecipeID"] = 195903,
					["recipeID"] = 195924
				}
			}
		},
		{
			["name"] = "Necklaces",
			["categoryID"] = 507,
			["groups"] = {
				{
					["name"] = "Ancient Maelstrom Amulet",
					["nextRecipeID"] = 195919,
					["recipeID"] = 195873
				},
				{
					["name"] = "Ancient Maelstrom Amulet",
					["nextRecipeID"] = 195940,
					["previousRecipeID"] = 195873,
					["recipeID"] = 195919
				},
				{
					["name"] = "Ancient Maelstrom Amulet",
					["previousRecipeID"] = 195919,
					["recipeID"] = 195940
				},
				{
					["name"] = "Azsunite Pendant",
					["nextRecipeID"] = 195907,
					["recipeID"] = 195861
				},
				{
					["name"] = "Azsunite Pendant",
					["nextRecipeID"] = 195928,
					["previousRecipeID"] = 195861,
					["recipeID"] = 195907
				},
				{
					["name"] = "Azsunite Pendant",
					["previousRecipeID"] = 195907,
					["recipeID"] = 195928
				},
				{
					["name"] = "Blessed Dawnlight Medallion",
					["nextRecipeID"] = 195912,
					["recipeID"] = 195866
				},
				{
					["name"] = "Blessed Dawnlight Medallion",
					["nextRecipeID"] = 195933,
					["previousRecipeID"] = 195866,
					["recipeID"] = 195912
				},
				{
					["name"] = "Blessed Dawnlight Medallion",
					["previousRecipeID"] = 195912,
					["recipeID"] = 195933
				},
				{
					["name"] = "Deep Amber Pendant",
					["nextRecipeID"] = 195905,
					["recipeID"] = 195859
				},
				{
					["name"] = "Deep Amber Pendant",
					["nextRecipeID"] = 195926,
					["previousRecipeID"] = 195859,
					["recipeID"] = 195905
				},
				{
					["name"] = "Deep Amber Pendant",
					["previousRecipeID"] = 195905,
					["recipeID"] = 195926
				},
				{
					["name"] = "Grim Furystone Gorget",
					["nextRecipeID"] = 195922,
					["recipeID"] = 195876
				},
				{
					["name"] = "Grim Furystone Gorget",
					["nextRecipeID"] = 195943,
					["previousRecipeID"] = 195876,
					["recipeID"] = 195922
				},
				{
					["name"] = "Grim Furystone Gorget",
					["previousRecipeID"] = 195922,
					["recipeID"] = 195943
				},
				{
					["name"] = "Intrepid Necklace of Prophecy",
					["nextRecipeID"] = 195918,
					["recipeID"] = 195872
				},
				{
					["name"] = "Intrepid Necklace of Prophecy",
					["nextRecipeID"] = 195939,
					["previousRecipeID"] = 195872,
					["recipeID"] = 195918
				},
				{
					["name"] = "Intrepid Necklace of Prophecy",
					["previousRecipeID"] = 195918,
					["recipeID"] = 195939
				},
				{
					["name"] = "Queen's Opal Pendant",
					["nextRecipeID"] = 209607,
					["recipeID"] = 209604
				},
				{
					["name"] = "Queen's Opal Pendant",
					["nextRecipeID"] = 209610,
					["previousRecipeID"] = 209604,
					["recipeID"] = 209607
				},
				{
					["name"] = "Queen's Opal Pendant",
					["previousRecipeID"] = 209607,
					["recipeID"] = 209610
				},
				{
					["name"] = "Raging Furystone Gorget",
					["nextRecipeID"] = 195921,
					["recipeID"] = 195875
				},
				{
					["name"] = "Raging Furystone Gorget",
					["nextRecipeID"] = 195942,
					["previousRecipeID"] = 195875,
					["recipeID"] = 195921
				},
				{
					["name"] = "Raging Furystone Gorget",
					["previousRecipeID"] = 195921,
					["recipeID"] = 195942
				},
				{
					["name"] = "Righteous Dawnlight Medallion",
					["nextRecipeID"] = 195920,
					["recipeID"] = 195874
				},
				{
					["name"] = "Righteous Dawnlight Medallion",
					["nextRecipeID"] = 195941,
					["previousRecipeID"] = 195874,
					["recipeID"] = 195920
				},
				{
					["name"] = "Righteous Dawnlight Medallion",
					["previousRecipeID"] = 195920,
					["recipeID"] = 195941
				},
				{
					["name"] = "Skystone Pendant",
					["nextRecipeID"] = 195906,
					["recipeID"] = 195860
				},
				{
					["name"] = "Skystone Pendant",
					["nextRecipeID"] = 195927,
					["previousRecipeID"] = 195860,
					["recipeID"] = 195906
				},
				{
					["name"] = "Skystone Pendant",
					["previousRecipeID"] = 195906,
					["recipeID"] = 195927
				},
				{
					["name"] = "Sorcerous Shadowruby Pendant",
					["nextRecipeID"] = 195911,
					["recipeID"] = 195865
				},
				{
					["name"] = "Sorcerous Shadowruby Pendant",
					["nextRecipeID"] = 195932,
					["previousRecipeID"] = 195865,
					["recipeID"] = 195911
				},
				{
					["name"] = "Sorcerous Shadowruby Pendant",
					["previousRecipeID"] = 195911,
					["recipeID"] = 195932
				},
				{
					["name"] = "Subtle Shadowruby Pendant",
					["nextRecipeID"] = 195914,
					["recipeID"] = 195868
				},
				{
					["name"] = "Subtle Shadowruby Pendant",
					["nextRecipeID"] = 195935,
					["previousRecipeID"] = 195868,
					["recipeID"] = 195914
				},
				{
					["name"] = "Subtle Shadowruby Pendant",
					["previousRecipeID"] = 195914,
					["recipeID"] = 195935
				},
				{
					["name"] = "Sylvan Maelstrom Amulet",
					["nextRecipeID"] = 195917,
					["recipeID"] = 195871
				},
				{
					["name"] = "Sylvan Maelstrom Amulet",
					["nextRecipeID"] = 195938,
					["previousRecipeID"] = 195871,
					["recipeID"] = 195917
				},
				{
					["name"] = "Sylvan Maelstrom Amulet",
					["previousRecipeID"] = 195917,
					["recipeID"] = 195938
				},
				{
					["name"] = "Tranquil Necklace of Prophecy",
					["nextRecipeID"] = 195915,
					["recipeID"] = 195869
				},
				{
					["name"] = "Tranquil Necklace of Prophecy",
					["nextRecipeID"] = 195936,
					["previousRecipeID"] = 195869,
					["recipeID"] = 195915
				},
				{
					["name"] = "Tranquil Necklace of Prophecy",
					["previousRecipeID"] = 195915,
					["recipeID"] = 195936
				},
				{
					["name"] = "Twisted Pandemonite Choker",
					["nextRecipeID"] = 195913,
					["recipeID"] = 195867
				},
				{
					["name"] = "Twisted Pandemonite Choker",
					["nextRecipeID"] = 195934,
					["previousRecipeID"] = 195867,
					["recipeID"] = 195913
				},
				{
					["name"] = "Twisted Pandemonite Choker",
					["previousRecipeID"] = 195913,
					["recipeID"] = 195934
				},
				{
					["name"] = "Vindictive Pandemonite Choker",
					["nextRecipeID"] = 195916,
					["recipeID"] = 195870
				},
				{
					["name"] = "Vindictive Pandemonite Choker",
					["nextRecipeID"] = 195937,
					["previousRecipeID"] = 195870,
					["recipeID"] = 195916
				},
				{
					["name"] = "Vindictive Pandemonite Choker",
					["previousRecipeID"] = 195916,
					["recipeID"] = 195937
				}
			}
		},
		{
			["name"] = "Gems",
			["categoryID"] = 466,
			["groups"] = {
				{
					["name"] = "Deadly Deep Amber",
					["recipeID"] = 195848
				},
				{
					["name"] = "Deadly Deep Chemirine",
					["recipeID"] = 247771
				},
				{
					["name"] = "Deadly Eye of Prophecy",
					["recipeID"] = 195852
				},
				{
					["name"] = "Masterful Argulite",
					["recipeID"] = 247773
				},
				{
					["name"] = "Masterful Queen's Opal",
					["recipeID"] = 195851
				},
				{
					["name"] = "Masterful Shadowruby",
					["recipeID"] = 195855
				},
				{
					["name"] = "Quick Azsunite",
					["recipeID"] = 195849
				},
				{
					["name"] = "Quick Dawnlight",
					["recipeID"] = 195853
				},
				{
					["name"] = "Quick Lightsphene",
					["recipeID"] = 247772
				},
				{
					["name"] = "Saber's Eye",
					["recipeID"] = 195877
				},
				{
					["name"] = "Saber's Eye of Agility",
					["recipeID"] = 195879
				},
				{
					["name"] = "Saber's Eye of Intellect",
					["recipeID"] = 195880
				},
				{
					["name"] = "Saber's Eye of Strength",
					["recipeID"] = 195878
				},
				{
					["name"] = "Versatile Labradorite",
					["recipeID"] = 247774
				},
				{
					["name"] = "Versatile Maelstrom Sapphire",
					["recipeID"] = 195854
				},
				{
					["name"] = "Versatile Skystone",
					["recipeID"] = 195850
				}
			}
		},
		{
			["name"] = "Crowns",
			["categoryID"] = 535,
			["groups"] = {
				{
					["name"] = "Empyrial Cosmic Crown",
					["nextRecipeID"] = 247754,
					["recipeID"] = 247751
				},
				{
					["name"] = "Empyrial Cosmic Crown",
					["nextRecipeID"] = 247755,
					["previousRecipeID"] = 247751,
					["recipeID"] = 247754
				},
				{
					["name"] = "Empyrial Cosmic Crown",
					["previousRecipeID"] = 247754,
					["recipeID"] = 247755
				},
				{
					["name"] = "Empyrial Deep Crown",
					["nextRecipeID"] = 247757,
					["recipeID"] = 247756
				},
				{
					["name"] = "Empyrial Deep Crown",
					["nextRecipeID"] = 247758,
					["previousRecipeID"] = 247756,
					["recipeID"] = 247757
				},
				{
					["name"] = "Empyrial Deep Crown",
					["previousRecipeID"] = 247757,
					["recipeID"] = 247758
				},
				{
					["name"] = "Empyrial Elemental Crown",
					["nextRecipeID"] = 247763,
					["recipeID"] = 247762
				},
				{
					["name"] = "Empyrial Elemental Crown",
					["nextRecipeID"] = 247764,
					["previousRecipeID"] = 247762,
					["recipeID"] = 247763
				},
				{
					["name"] = "Empyrial Elemental Crown",
					["previousRecipeID"] = 247763,
					["recipeID"] = 247764
				},
				{
					["name"] = "Empyrial Titan Crown",
					["nextRecipeID"] = 247766,
					["recipeID"] = 247765
				},
				{
					["name"] = "Empyrial Titan Crown",
					["nextRecipeID"] = 247767,
					["previousRecipeID"] = 247765,
					["recipeID"] = 247766
				},
				{
					["name"] = "Empyrial Titan Crown",
					["previousRecipeID"] = 247766,
					["recipeID"] = 247767
				}
			}
		},
		{
			["name"] = "Other",
			["categoryID"] = 467,
			["groups"] = {
				{
					["name"] = "Chatterstone",
					["recipeID"] = 195883
				},
				{
					["name"] = "JewelCraft",
					["recipeID"] = 195882
				},
				{
					["name"] = "Jeweled Lockpick",
					["recipeID"] = 195881
				}
			}
		},
		{
			["name"] = "Mass Prospecting",
			["categoryID"] = 505,
			["groups"] = {
				{
					["name"] = "Mass Prospect Empyrium",
					["recipeID"] = 247761
				},
				{
					["name"] = "Mass Prospect Felslate",
					["recipeID"] = 225904
				},
				{
					["name"] = "Mass Prospect Leystone",
					["recipeID"] = 225902
				}
			}
		},
		n(DISCOVERY, {
			i(141312, {	-- Design: Mass Prospect Felslate
				["cost"] = {
					{ "i", 123919, 5 },	-- Felslate
				},
			}),
			i(141311, {	-- Design: Mass Prospect Leystone
				["cost"] = {
					{ "i", 123918, 5 },	-- Leystone Ore
				},
			}),
		}),
	})),
}));

-- Jewelcrafting Item Database
local Items = ItemDBConditional;

-- Recipe Cache (for Validation)
local recipeCache = {
	[26918]=1,	-- Design: Arcanite Sword Pendant
	[26920]=1,	-- Design: Blood Crown
	[25614]=1,	-- Design: Silver Rose Pendant
	[32810]=1,	-- Design: Primal Stone Statue
};
local recipeCacheU = {};
local function cacheRecipes(g)
	if g and type(g) == "table" then
		if g.groups then cacheRecipes(g.groups); end
		if g.g then cacheRecipes(g.g); end
		if g.recipeID then
			recipeCache[g.recipeID] = true;
			if g.u then recipeCacheU[g.recipeID] = g.u; end
		end
		if g.spellID then
			recipeCache[g.spellID] = true;
			if g.u then recipeCacheU[g.spellID] = g.u; end
		end
		for i,o in ipairs(g) do
			cacheRecipes(o);
		end
	end
end
cacheRecipes(_.Professions);

-- Jewelcrafting Item Recipe Database
local itemrecipe = function(name, itemID, spellID, spellIDAfterCata, timeline)
	local o = { ["itemID"] = itemID, ["spellID"] = spellID, ["requireSkill"] = JEWELCRAFTING, ["f"] = RECIPES };
	if spellIDAfterCata then
		if type(spellIDAfterCata) == "number" then
			-- #if AFTER CATA
			o.spellID = spellIDAfterCata;
			-- #endif
		else
			-- Check to see if the timeline was shifted over one argument.
			-- A non-numerical argument for the spellID is not valid, so it must have been intended.
			if not timeline then timeline = spellIDAfterCata; end
			spellIDAfterCata = nil;
		end
	end
	if timeline then
		-- Ensure that the timeline is in a table format.
		if type(timeline) == "string" then timeline = { timeline }; end
		o.timeline = timeline;
	end
	if name then
		-- Ensure that the name is in a string format.
		if type(name) == "table" then
			-- #if AFTER CATA
			name = name[2];
			-- #else
			name = name[1];
			-- #endif
		end
		o.name = name;
	end
	Items[itemID] = applyclassicphase(TBC_PHASE_ONE, o);

	-- Ensure that this recipe's spellID exists in the profession database.
	if recipeCache then
		if recipeCache[o.spellID] then
			-- Grab the phase from the cache.
			local u = recipeCacheU[o.spellID];
			if u then
				--[[
				if o.u then
					if o.u ~= u then
						print("ITEM RECIPE U MISMATCH: ", name, o.spellID, o.u, " -> ", u);
						o.u = u;
					end
				else
					print("ITEM RECIPE U MISSING: ", name, o.spellID, u);
					o.u = u;
				end
				]]--
				-- The above code doesn't really matter, in this file, the phases are managed in the recipe section, not here.
				o.u = u;
			elseif o.u then
				print("RECIPE MISSING U: ", name, o.spellID, o.u);
			end
		else
			print("MISSING RECIPE", name, o.spellID);
		end
	end
	return Items[itemID];
end

-- Recipes introduced with Burning Crusade
itemrecipe("Design: Amulet of Flowing Life", 35202, 46126);
itemrecipe("Design: Amulet of the Moon", 20854, 25339);
itemrecipe("Design: Arcane Khorium Band", 24162, 31057);
itemrecipe("Design: Black Diamond Crab", 21955, 26912);
itemrecipe("Design: Black Pearl Panther", 21941, 26875);
itemrecipe("Design: Blazing Citrine Ring", 20973, 25617);
itemrecipe("Design: Blazing Eternium Band", 24165, 31061);
itemrecipe("Design: Blood of Amber", 33159, 42592);
itemrecipe("Design: Bold Crimson Spinel", 32274, 39705);
itemrecipe("Design: Bold Crimson Spinel", 35244, 39705);
itemrecipe("Design: Bold Living Ruby", 24193, 31084);
itemrecipe("Design: Bracing Earthstorm Diamond", 25903, 32867);
itemrecipe("Design: Braided Eternium Chain", 24168, 31070);
itemrecipe("Design: Brutal Earthstorm Diamond", 25906, 32869);
itemrecipe("Design: Chain of the Twilight Owl", 24171, 31076);
itemrecipe("Design: Chaotic Skyfire Diamond", 34689, 44794);
itemrecipe("Design: Circlet of Arcane Might", 24173, 31078);
itemrecipe("Design: Citrine Pendant of Golden Healing", 20976, 25622);
itemrecipe("Design: Coronet of Verdant Flame", 24172, 31077);
itemrecipe("Design: Crimson Sun", 33156, 42589);
itemrecipe("Design: Dark Iron Scorpid", 21956, 26914);
itemrecipe("Design: Dawnstone Crab - Alliance", 24180, 31080);
itemrecipe("Design: Dawnstone Crab - Horde", 31358, 31080);
itemrecipe("Design: Delicate Crimson Spinel", 32277, 39706);
itemrecipe("Design: Delicate Crimson Spinel", 35246, 39706);
itemrecipe("Design: Delicate Eternium Ring", 24164, 31060);
itemrecipe("Design: Delicate Living Ruby", 24194, 31085);
itemrecipe("Design: Destructive Skyfire Diamond", 25907, 32871);
itemrecipe("Design: Don Julio's Heart", 33305, 42558);
itemrecipe("Design: Ember Skyfire Diamond", 35505, 46601);
itemrecipe("Design: Embrace of the Dawn", 24170, 31072);
itemrecipe("Design: Emerald Crown of Destruction", 21952, 26906);
itemrecipe("Design: Emerald Owl", 21953, 26909);
itemrecipe("Design: Enigmatic Skyfire Diamond", 25910, 32874);
itemrecipe("Design: Eternal Earthstorm Diamond", 35502, 46597);
itemrecipe("Design: Eye of the Night", 24169, 31071);
itemrecipe("Design: Facet of Eternity", 33160, 42593);
itemrecipe("Design: Falling Star", 33157, 42590);
itemrecipe("Design: Felsteel Boar", 24179, 31079);
itemrecipe("Design: Figurine - Crimson Serpent", 35697, 46777);
itemrecipe("Design: Figurine - Empyrean Tortoise", 35695, 46775);
itemrecipe("Design: Figurine - Khorium Boar", 35696, 46776);
itemrecipe("Design: Figurine - Seaspray Albatross", 35699, 46779);
itemrecipe("Design: Figurine - Shadowsong Panther", 35698, 46778);
itemrecipe("Design: Flashing Crimson Spinel", 32285, 39714);
itemrecipe("Design: Flashing Crimson Spinel", 35247, 39714);
itemrecipe("Design: Flashing Living Ruby", 24198, 31091);
itemrecipe("Design: Forceful Seaspray Emerald", 35765, 47053);
itemrecipe("Design: Forceful Seaspray Emerald", 35769, 47053);
itemrecipe("Design: Forceful Talasite", 35325, 46405);
itemrecipe("Design: Gem Studded Band", 21947, 26896);
itemrecipe("Design: Golden Hare", 21940, 26873);
itemrecipe("Design: Hard Khorium Band", 35200, 46124);
itemrecipe("Design: Hard Khorium Choker", 35203, 46127);
itemrecipe("Design: Heavy Felsteel Ring", 24163, 31058);
itemrecipe("Design: Heavy Iron Knuckles", 20971, 25612);
itemrecipe("Design: Heavy Golden Necklace of Battle", 20856, 25320);
itemrecipe("Design: Inscribed Noble Topaz", 24213, 31106);
itemrecipe("Design: Inscribed Pyrestone", 32303, 39733);
itemrecipe("Design: Inscribed Pyrestone", 35267, 39733);
itemrecipe("Design: Insightful Earthstorm Diamond", 25904, 32870);
itemrecipe("Design: Jade Pendant of Blasting", 20974, 25618);
itemrecipe("Design: Jagged Seaspray Emerald", 32312, 39742);
itemrecipe("Design: Jagged Seaspray Emerald", 35253, 39742);
itemrecipe("Design: Jagged Talasite", 24220, 31113);
itemrecipe("Design: Kailee's Rose", 33155, 42588);
itemrecipe("Design: Khorium Band of Frost", 24159, 31054);
itemrecipe("Design: Khorium Band of Leaves", 24161, 31056);
itemrecipe("Design: Khorium Band of Shadows", 24158, 31053);
itemrecipe("Design: Khorium Inferno Band", 24160, 31055);
itemrecipe("Design: Living Ruby Pendant", 24167, 31068);
itemrecipe("Design: Living Ruby Serpent", 24181, 31081);
itemrecipe("Design: Loop of Forged Power", 35198, 46122);
itemrecipe("Design: Mystic Dawnstone", 24208, 31101);
itemrecipe("Design: Mystic Lionseye", 32295, 39724);
itemrecipe("Design: Mystic Lionseye", 35258, 39724);
itemrecipe("Design: Mystical Skyfire Diamond", 25909, 32872);
itemrecipe("Design: Necklace of the Diamond Tower", 21957, 26915);
itemrecipe("Design: Nightseye Panther", 24183, 31083);
itemrecipe("Design: Opal Necklace of Impact", 21948, 26897);
itemrecipe("Design: Pendant of Frozen Flame", 24174, 31062);
itemrecipe("Design: Pendant of Shadow's End", 24177, 31065);
itemrecipe("Design: Pendant of Sunfire", 35201, 46125);
itemrecipe("Design: Pendant of Thawing", 24175, 31063);
itemrecipe("Design: Pendant of the Agate Shield", 20970, 25610);
itemrecipe("Design: Pendant of the Null Rune", 24178, 31066);
itemrecipe("Design: Pendant of Withering", 24176, 31064);
itemrecipe("Design: Potent Flame Spessarite", 23138, 28915);
itemrecipe("Design: Potent Noble Topaz", 24214, 31107);
itemrecipe("Design: Potent Pyrestone", 32304, 39734);
itemrecipe("Design: Potent Pyrestone", 35269, 39734);
itemrecipe("Design: Powerful Earthstorm Diamond", 25902, 32866);
itemrecipe("Design: Quick Dawnstone", 35322, 46403);
itemrecipe("Design: Quick Lionseye", 35763, 47056);
itemrecipe("Design: Quick Lionseye", 35768, 47056);
itemrecipe("Design: Radiant Seaspray Emerald", 32310, 39740);
itemrecipe("Design: Radiant Seaspray Emerald", 35254, 39740);
itemrecipe("Design: Radiant Talasite", 24218, 31111);
itemrecipe("Design: Reckless Pyrestone", 35762, 47055);
itemrecipe("Design: Reckless Pyrestone", 35767, 47055);
itemrecipe("Design: Regal Talasite", 35708, 46803);
itemrecipe("Design: Relentless Earthstorm Diamond", 33622, 39961);
itemrecipe("Design: Ring of Arcane Shielding", 30826, 37855);
itemrecipe("Design: Ring of Bitter Shadows", 21954, 26910);
itemrecipe("Design: Ring of Flowing Life", 35199, 46123);
itemrecipe("Design: Ruby Crown of Restoration", 21942, 26878);
itemrecipe("Design: Ruby Serpent", 21949, 26900);
itemrecipe("Design: Shifting Nightseye", 24210, 31103);
itemrecipe("Design: Shifting Shadow Draenite", 23146, 28933);
itemrecipe("Design: Shifting Shadowsong Amethyst", 32298, 39728);
itemrecipe("Design: Shifting Shadowsong Amethyst", 35242, 39728);
itemrecipe("Design: Smooth Dawnstone", 24204, 31097);
itemrecipe("Design: Smooth Lionseye", 32291, 39720);
itemrecipe("Design: Smooth Lionseye", 35260, 39720);
itemrecipe("Design: Solid Empyrean Sapphire", 32286, 39715);
itemrecipe("Design: Solid Empyrean Sapphire", 35263, 39715);
itemrecipe("Design: Solid Star of Elune", 24199, 31092);
itemrecipe("Design: Solid Star of Elune", 35304, 31092);
itemrecipe("Design: Sovereign Nightseye", 24209, 31102);
itemrecipe("Design: Sovereign Shadowsong Amethyst", 32297, 39727);
itemrecipe("Design: Sovereign Shadowsong Amethyst", 35243, 39727);
itemrecipe("Design: Sparkling Empyrean Sapphire", 32287, 39716);
itemrecipe("Design: Sparkling Empyrean Sapphire", 35264, 39716);
itemrecipe("Design: Sparkling Star of Elune", 24200, 31149);
itemrecipe("Design: Steady Seaspray Emerald", 35764, 47054);
itemrecipe("Design: Steady Seaspray Emerald", 35766, 47054);
itemrecipe("Design: Steady Talasite", 33783, 43493);
itemrecipe("Design: Stone of Blades", 33158, 42591);
itemrecipe("Design: Stormy Azure Moonstone", 23154, 28955);
itemrecipe("Design: Stormy Empyrean Sapphire", 32289, 39718);
itemrecipe("Design: Stormy Empyrean Sapphire", 35265, 39718);
itemrecipe("Design: Stormy Star of Elune", 24202, 31095);
itemrecipe("Design: Subtle Lionseye", 32284, 39713);
itemrecipe("Design: Swift Skyfire Diamond", 25908, 32873);
itemrecipe("Design: Talasite Owl", 24182, 31082);
itemrecipe("Design: Tenacious Earthstorm Diamond", 25905, 32868);
itemrecipe("Design: The Aquamarine Ward", 21945, 26887);
itemrecipe("Design: The Frozen Eye", 31401, 38503);
itemrecipe("Design: The Jade Eye", 20975, 25619);
itemrecipe("Design: The Natural Ward", 31402, 38504);
itemrecipe("Design: Thick Felsteel Necklace", 24166, 31067);
itemrecipe("Design: Thundering Skyfire Diamond", 32411, 39963);
itemrecipe("Design: Truesilver Boar", 21944, 26882);
itemrecipe("Design: Truesilver Crab", 21943, 26881);
itemrecipe("Design: Wicked Moonstone Ring", 20855, 25323);

-- Recipes Renamed with Cata
itemrecipe({"Design: Dazzling Seaspray Emerald [TBC]", "Design: Purified Shadowsong Amethyst [CATA+]"}, 32311, 39741);
itemrecipe({"Design: Dazzling Seaspray Emerald [TBC]", "Design: Purified Shadowsong Amethyst [CATA+]"}, 35251, 39741);
itemrecipe({"Design: Dazzling Talasite [TBC]", "Design: Purified Nightseye [CATA+]"}, 24219, 31112);
itemrecipe({"Design: Enduring Deep Peridot [TBC - Alliance]", "Design: Regal Deep Peridot [CATA+ - Alliance]"}, 23142, 28918);
itemrecipe({"Design: Enduring Deep Peridot [TBC - Horde]", "Design: Regal Deep Peridot [CATA+ - Horde]"}, 31359, 28918);
itemrecipe({"Design: Enduring Seaspray Emerald [TBC]", "Design: Regal Seaspray Emerald [CATA+]"}, 32309, 39739);
itemrecipe({"Design: Enduring Seaspray Emerald [TBC]", "Design: Regal Seaspray Emerald [CATA+]"}, 35252, 39739);
itemrecipe({"Design: Gleaming Golden Draenite [TBC]","Design: Smooth Golden Draenite [CATA+]"}, 23149, 28944);
itemrecipe({"Design: Glinting Noble Topaz [TBC]", "Design: Glinting Nightseye [CATA+]"}, 24216, 31109);
itemrecipe({"Design: Glinting Pyrestone [TBC]", "Design: Glinting Shadowsong Amethyst [CATA+]"}, 32306, 39736);
itemrecipe({"Design: Glinting Pyrestone [TBC]", "Design: Glinting Shadowsong Amethyst [CATA+]"}, 35266, 39736);
itemrecipe({"Design: Glowing Nightseye [TBC]", "Design: Timeless Nightseye [CATA+]"}, 24211, 31104);
itemrecipe({"Design: Glowing Shadowsong Amethyst [TBC]", "Design: Timeless Shadowsong Amethyst [CATA+]"}, 35239, 39731);
itemrecipe({"Design: Luminous Flame Spessarite [TBC]", "Design: Reckless Flame Spessarite [CATA+]"}, 23136, 28912);
itemrecipe({"Design: Luminous Noble Topaz [TBC]", "Design: Reckless Noble Topaz [CATA+]"}, 24215, 31108);
itemrecipe({"Design: Regal Nightseye [TBC]", "Design: Regal Talasite [CATA+]"}, 35708, 46803);
itemrecipe({"Design: Rigid Dawnstone [TBC]", "Design: Rigid Star of Elune [CATA+]"}, 24205, 31098);
itemrecipe({"Design: Rigid Dawnstone [TBC]", "Design: Rigid Star of Elune [CATA+]"}, 35307, 31098);
itemrecipe({"Design: Rigid Lionseye [TBC]", "Design: Rigid Empyrean Sapphire [CATA+]"}, 32292, 39721);
itemrecipe({"Design: Rigid Lionseye [TBC]", "Design: Rigid Empyrean Sapphire [CATA+]"}, 35259, 39721);
itemrecipe({"Design: Royal Shadow Draenite [TBC]", "Design: Purified Shadow Draenite [CATA+]"}, 23145, 28927);
itemrecipe({"Design: Runed Crimson Spinel [TBC]", "Design: Brilliant Crimson Spinel [CATA+]"}, 32282, 39711);
itemrecipe({"Design: Runed Crimson Spinel [TBC]", "Design: Brilliant Crimson Spinel [CATA+]"}, 35248, 39711);
itemrecipe({"Design: Runed Living Ruby [TBC]", "Design: Brilliant Living Ruby [CATA+]"}, 24196, 31088);
itemrecipe({"Design: Runed Living Ruby [TBC]", "Design: Brilliant Living Ruby [CATA+]"}, 35305, 31088);
itemrecipe({"Design: Subtle Crimson Spinel [TBC]", "Design: Subtle Lionseye [CATA+]"}, 35249, 39713);
itemrecipe({"Design: Subtle Living Ruby [TBC]", "Design: Subtle Dawnstone [CATA+]"}, 24197, 31090);
itemrecipe({"Design: Thick Golden Draenite [TBC]", "Design: Subtle Golden Draenite [CATA+]"}, 23150, 28947);
itemrecipe({"Design: Veiled Flame Spessarite [TBC]","Design: Veiled Shadow Draenite [CATA+]"}, 31873, 39466);
itemrecipe({"Design: Veiled Noble Topaz [TBC]", "Design: Veiled Nightseye [CATA+]"}, 31878, 39470);
itemrecipe({"Design: Veiled Pyrestone [TBC]", "Design: Veiled Shadowsong Amethyst [CATA+]"}, 32307, 39737);
itemrecipe({"Design: Veiled Pyrestone [TBC]", "Design: Veiled Shadowsong Amethyst [CATA+]"}, 35270, 39737);
itemrecipe({"Design: Wicked Flame Spessarite [TBC]","Design: Deadly Flame Spessarite [CATA+]"}, 31874, 39467);
itemrecipe({"Design: Wicked Noble Topaz [TBC]", "Design: Deadly Noble Topaz [CATA+]"}, 31879, 39471);
itemrecipe({"Design: Wicked Pyrestone [TBC]", "Design: Deadly Pyrestone [CATA+]"}, 32308, 39738);
itemrecipe({"Design: Wicked Pyrestone [TBC]", "Design: Deadly Pyrestone [CATA+]"}, 35271, 39738);

-- Recipes that got new Spell IDs with Cata?!
itemrecipe("Design: Delicate Blood Garnet", 23134, 28907, 34590);
itemrecipe({"Design: Enduring Talasite [TBC]", "Design: Regal Talasite [CATA+]"}, 24217, 31110, 46803);
itemrecipe({"Design: Glowing Shadowsong Amethyst [TBC]", "Design: Timeless Shadowsong Amethyst [CATA+]"}, 32301, 39731, 39731);
itemrecipe({"Design: Great Golden Draenite [TBC]", "Design: Rigid Azure Moonstone [CATA+]"}, 31870, 39451, 28948);
itemrecipe({"Design: Lustrous Azure Moonstone [TBC]", "Design: Sparkling Azure Moonstone [CATA+]"}, 23155, 28957, 28953);
itemrecipe({"Design: Reckless Noble Topaz [TBC]", "Design: Reckless Noble Topaz [CATA+]"}, 35323, 46404, 31108);
itemrecipe({"Design: Runed Blood Garnet [TBC]", "Design: Brilliant Blood Garnet [CATA+]"}, 23133, 28906, 28903);

-- Recipes Removed with Cata
itemrecipe({"Design: Balanced Nightseye [TBC]", "Design: Shifting Nightseye [CATA+]"}, 31876, 39463, 31103, REMOVED_WITH_CATA);
itemrecipe({"Design: Balanced Shadowsong Amethyst [TBC]", "Design: Shifting Shadowsong Amethyst [CATA+]"}, 32299, 39729, 39728, REMOVED_WITH_CATA);
itemrecipe({"Design: Bright Crimson Spinel [TBC]", "Design: Delicate Crimson Spinel [CATA+]"}, 32283, 39712, 39706, REMOVED_WITH_CATA);
itemrecipe({"Design: Bright Crimson Spinel [TBC]", "Design: Delicate Crimson Spinel [CATA+]"}, 35245, 39712, 39706, REMOVED_WITH_CATA);
itemrecipe({"Design: Bright Living Ruby [TBC]", "Design: Delicate Living Ruby [CATA+]"}, 24192, 31089, 31085, REMOVED_WITH_CATA);
itemrecipe({"Design: Bright Living Ruby [TBC]", "Design: Delicate Living Ruby [CATA+]"}, 35306, 31089, 31085, REMOVED_WITH_CATA);
itemrecipe({"Design: Brilliant Dawnstone [TBC]", "Design: Brilliant Living Ruby [CATA+]"}, 24203, 31096, 31088, REMOVED_WITH_CATA);
itemrecipe({"Design: Brilliant Lionseye [TBC]", "Design: Brilliant Crimson Spinel [CATA+]"}, 32290, 39719, 39711, REMOVED_WITH_CATA);
itemrecipe({"Design: Brilliant Lionseye [TBC]", "Design: Brilliant Crimson Spinel [CATA+]"}, 35255, 39719, 39711, REMOVED_WITH_CATA);
itemrecipe({"Design: Gleaming Dawnstone [TBC]", "Design: Smooth Dawnstone [CATA+]"}, 24206, 31099, 31097, REMOVED_WITH_CATA);
itemrecipe({"Design: Gleaming Lionseye [TBC]", "Design: Smooth Lionseye [CATA+]"}, 32293, 39722, 39720, REMOVED_WITH_CATA);
itemrecipe({"Design: Great Dawnstone [TBC]", "Design: Rigid Star of Elune [CATA+]"}, 31875, 39452, 31098, REMOVED_WITH_CATA);
itemrecipe({"Design: Great Lionseye [TBC]", "Design: Rigid Empyrean Sapphire [CATA+]"}, 32296, 39725, 39721, REMOVED_WITH_CATA);
itemrecipe({"Design: Infused Nightseye [TBC]", "Design: Glinting Nightseye [CATA+]"}, 31877, 39462, 31109, REMOVED_WITH_CATA);
itemrecipe({"Design: Infused Shadowsong Amethyst [TBC]", "Design: Glinting Shadowsong Amethyst [CATA+]"}, 32300, 39730, 39736, REMOVED_WITH_CATA);
itemrecipe({"Design: Luminous Pyrestone [TBC]", "Design: Reckless Pyrestone [CATA+]"}, 32305, 39735, 47055, REMOVED_WITH_CATA);
itemrecipe({"Design: Luminous Pyrestone [TBC]", "Design: Reckless Pyrestone [CATA+]"}, 35268, 39735, 47055, REMOVED_WITH_CATA);
itemrecipe({"Design: Lustrous Empyrean Sapphire [TBC]", "Design: Sparkling Empyrean Sapphire [CATA+]"}, 32288, 39717, 39716, REMOVED_WITH_CATA);
itemrecipe({"Design: Lustrous Star of Elune [TBC]", "Design: Sparkling Star of Elune [CATA+]"}, 24201, 31094, 31149, REMOVED_WITH_CATA);
itemrecipe({"Design: Purified Shadowsong Amethyst [TBC]", "Design: Purified Shadowsong Amethyst [CATA+]"}, 37504, 48789, 39741, REMOVED_WITH_CATA);	-- Kept the same name, very weird.
itemrecipe({"Design: Royal Nightseye [TBC]", "Design: Purified Nightseye [CATA+]"}, 24212, 31105, 31112, REMOVED_WITH_CATA);
itemrecipe({"Design: Royal Shadowsong Amethyst [TBC]", "Design: Purified Shadowsong Amethyst [CATA+]"}, 32302, 39732, 39741, REMOVED_WITH_CATA);
itemrecipe({"Design: Teardrop Crimson Spinel [TBC] / Design: Brilliant Crimson Spinel [CATA]"}, 35250, 39710, 39711, REMOVED_WITH_CATA);
itemrecipe({"Design: Teardrop Crimson Spinel [TBC]", "Design: Brilliant Crimson Spinel [CATA+]"}, 32281, 39710, 39711, REMOVED_WITH_CATA);
itemrecipe({"Design: Teardrop Living Ruby [TBC]", "Design: Brilliant Living Ruby [CATA+]"}, 24195, 31087, 31088, REMOVED_WITH_CATA);
itemrecipe({"Design: Thick Dawnstone [TBC]", "Design: Subtle Dawnstone [CATA+]"}, 24207, 31100, 31090, REMOVED_WITH_CATA);
itemrecipe({"Design: Thick Lionseye [TBC]", "Design: Subtle Lionseye [CATA+]"}, 32294, 39723, 39713, REMOVED_WITH_CATA);

-- Recipes that were only removed as a Recipe Item in Cata, but still available from a trainer? Cata was a god damned mystery.
itemrecipe({"Design: Balanced Shadow Draenite [TBC]", "Design: Shifting Shadow Draenite [CATA+]"}, 31871, 39455, 28933, REMOVED_WITH_CATA);
itemrecipe({"Design: Balanced Shadowsong Amethyst [TBC]", "Design: Shifting Shadowsong Amethyst [CATA+]"}, 35238, 39729, 39728, REMOVED_WITH_CATA);
itemrecipe({"Design: Bright Blood Garnet [TBC]", "Design: Delicate Blood Garnet [CATA+]"}, 28596, 34590, 34590, REMOVED_WITH_CATA);
itemrecipe({"Design: Bold Blood Garnet [TBC]", "Design: Bold Blood Garnet [CATA+]"}, 23131, 28905, 28905, REMOVED_WITH_CATA);
itemrecipe({"Design: Brilliant Golden Draenite [TBC]", "Design: Brilliant Blood Garnet [CATA+]"}, 23148, 28938, 28903, REMOVED_WITH_CATA);
itemrecipe({"Design: Dazzling Deep Peridot [TBC]", "Design: Purified Shadow Draenite [CATA+]"}, 23143, 28924, 28927, REMOVED_WITH_CATA);
itemrecipe({"Design: Gleaming Lionseye [TBC]", "Design: Smooth Lionseye [CATA+]"}, 35256, 39722, 39720, REMOVED_WITH_CATA);
itemrecipe({"Design: Glinting Flame Spessarite [TBC]", "Design: Glinting Shadow Draenite [CATA+]"}, 23137, 28914, 28914, REMOVED_WITH_CATA);
itemrecipe({"Design: Great Lionseye [TBC]", "Design: Rigid Empyrean Sapphire [CATA+]"}, 35257, 39725, 39721, REMOVED_WITH_CATA);
itemrecipe({"Design: Infused Shadow Draenite [TBC]", "Design: Shifting Shadow Draenite [CATA+]"}, 31872, 39458, 28933, REMOVED_WITH_CATA);
itemrecipe({"Design: Infused Shadowsong Amethyst [TBC] / Design: Glinting Shadowsong Amethyst [CATA+]"}, 35240, 39730, 39736, REMOVED_WITH_CATA);
itemrecipe({"Design: Inscribed Flame Spessarite [TBC]", "Design: Inscribed Flame Spessarite [CATA+]"}, 23135, 28910, 28910, REMOVED_WITH_CATA);
itemrecipe({"Design: Jagged Deep Peridot [TBC]", "Design: Jagged Deep Peridot [CATA+]"}, 23141, 28917, 28917, REMOVED_WITH_CATA);
itemrecipe({"Design: Lustrous Empyrean Sapphire [TBC]", "Design: Sparkling Empyrean Sapphire [CATA+]"}, 35262, 39717, 39716, REMOVED_WITH_CATA);
itemrecipe({"Design: Radiant Deep Peridot [TBC]", "Design: Radiant Deep Peridot [CATA+]"}, 23140, 28916, 28916, REMOVED_WITH_CATA);
itemrecipe({"Design: Rigid Golden Draenite [TBC]", "Design: Rigid Azure Moonstone [CATA+]"}, 23151, 28948, 28948, REMOVED_WITH_CATA);
itemrecipe({"Design: Royal Shadowsong Amethyst [TBC]", "Design: Purified Shadowsong Amethyst [CATA+]"}, 35241, 39732, 39741, REMOVED_WITH_CATA);
itemrecipe({"Design: Smooth Golden Draenite [TBC]", "Design: Smooth Golden Draenite [CATA+]"}, 28291, 34069, 28944, REMOVED_WITH_CATA);
itemrecipe({"Design: Solid Azure Moonstone [TBC]", "Design: Solid Azure Moonstone [CATA+]"}, 23152, 28950, 28950, REMOVED_WITH_CATA);
itemrecipe({"Design: Sovereign Shadow Draenite [TBC]", "Design: Sovereign Shadow Draenite [CATA+]"}, 23147, 28936, 28936, REMOVED_WITH_CATA);
itemrecipe({"Design: Sparkling Azure Moonstone [TBC]", "Design: Sparkling Azure Moonstone [CATA+]"}, 23153, 28953, 28953, REMOVED_WITH_CATA);
itemrecipe({"Design: Teardrop Blood Garnet [TBC]", "Design: Brilliant Blood Garnet [CATA+]"}, 23130, 28903, 28903, REMOVED_WITH_CATA);
itemrecipe({"Design: Thick Lionseye [TBC]", "Design: Subtle Lionseye [CATA+]"}, 35261, 39723, 39713, REMOVED_WITH_CATA);
itemrecipe({"Design: Glowing Shadow Draenite [TBC]", "Design: Timeless Shadow Draenite [CATA+]"}, 23144, 28925, 28925, REMOVED_WITH_CATA);

-- #if AFTER WRATH
-- Recipes introduced with Wrath of the Lich King
-- itemrecipe(NAME, ITEMID, SPELLID);
itemrecipe("Design: Austere Earthsiege Diamond", 41797, 55401);
itemrecipe("Design: Beaming Earthsiege Diamond", 41788, 55405);
itemrecipe("Design: Bold Cardinal Ruby", 46917, 66447);
itemrecipe("Design: Bold Dragon's Eye", 42298, 56049);
itemrecipe("Design: Bold Scarlet Ruby", 41576, 53830);
itemrecipe("Design: Bracing Earthsiege Diamond", 41798, 55397);
itemrecipe("Design: Champion's Ametrine", 47015, 66579);
itemrecipe("Design: Champion's Monarch Topaz", 41780, 53977);
itemrecipe("Design: Chaotic Skyflare Diamond", 41704, 55389);
itemrecipe("Design: Deadly Ametrine", 46949, 66568);
itemrecipe("Design: Deadly Huge Citrine", 41562, 53877);
itemrecipe("Design: Defender's Dreadstone", 46941, 66560);
itemrecipe("Design: Defender's Shadow Crystal", 41574, 53869);
itemrecipe("Design: Defender's Twilight Opal", 41820, 53972);
itemrecipe("Design: Deft Ametrine", 47020, 66584);
itemrecipe("Design: Delicate Cardinal Ruby", 46918, 66448);
itemrecipe("Design: Delicate Dragon's Eye", 42301, 56052);
itemrecipe("Design: Delicate Scarlet Ruby", 41577, 53945);
itemrecipe("Design: Destructive Skyflare Diamond", 41786, 55390);
itemrecipe("Design: Ember Skyflare Diamond", 41706, 55392);
itemrecipe("Design: Energized Eye of Zul", 46912, 66442);
itemrecipe("Design: Energized Forest Emerald", 41692, 54011);
itemrecipe("Design: Enigmatic Skyflare Diamond", 41742, 55393);
itemrecipe("Design: Eternal Earthsiege Diamond", 41799, 55398);
itemrecipe("Design: Fierce Ametrine", 47019, 66583);
itemrecipe("Design: Fierce Monarch Topaz", 41793, 54019);
itemrecipe("Design: Flashing Cardinal Ruby", 46923, 66453);
itemrecipe("Design: Flashing Dragon's Eye", 42302, 56056);
itemrecipe("Design: Flashing Scarlet Ruby", 41578, 53949);
itemrecipe("Design: Forceful Eye of Zul", 46904, 66434);
itemrecipe("Design: Forceful Forest Emerald", 41693, 54001);
itemrecipe("Design: Forlorn Skyflare Diamond", 41743, 55387);
itemrecipe("Design: Glimmering Monarch Topaz", 41722, 53993);
itemrecipe("Design: Guardian's Dreadstone", 46942, 66561);
itemrecipe("Design: Guardian's Twilight Opal", 41726, 53974);
itemrecipe("Design: Impassive Skyflare Diamond", 41744, 55388);
itemrecipe("Design: Inscribed Ametrine", 46948, 66567);
itemrecipe("Design: Inscribed Monarch Topaz", 41789, 53975);
itemrecipe("Design: Insightful Earthsiege Diamond", 41708, 55396);
itemrecipe("Design: Invigorating Earthsiege Diamond", 41709, 55404);
itemrecipe("Design: Jagged Eye of Zul", 46901, 66431);
itemrecipe("Design: Jagged Forest Emerald", 41723, 53996);
itemrecipe("Design: Lucent Ametrine", 47021, 66585);
itemrecipe("Design: Lucent Huge Citrine", 41565, 53879);
itemrecipe("Design: Lucent Monarch Topaz", 41733, 53981);
itemrecipe("Design: Misty Eye of Zul", 46905, 66435);
itemrecipe("Design: Mysterious Dreadstone", 46943, 66562);
itemrecipe("Design: Mysterious Shadow Crystal", 41575, 53865);
itemrecipe("Design: Mysterious Twilight Opal", 41740, 53968);
itemrecipe("Design: Mystic Autumn's Glow", 41727, 53960);
itemrecipe("Design: Mystic Dragon's Eye", 42305, 56079);
itemrecipe("Design: Mystic King's Amber", 46932, 66505);
itemrecipe("Design: Mystic Sun Crystal", 41559, 53857);
itemrecipe("Design: Nightmare Tear", 49112, 68253);
itemrecipe("Design: Potent Ametrine", 46950, 66569);
itemrecipe("Design: Potent Monarch Topaz", 41686, 53984);
itemrecipe("Design: Precise Cardinal Ruby", 46920, 66450);
itemrecipe("Design: Precise Dragon's Eye", 42306, 56081);
itemrecipe("Design: Precise Scarlet Ruby", 41790, 53951);
itemrecipe("Design: Purified Dreadstone", 46937, 66556);
itemrecipe("Design: Purified Twilight Opal", 41783, 53966);
itemrecipe("Design: Quick Autumn's Glow", 41579, 53961);
itemrecipe("Design: Quick Dragon's Eye", 42307, 56083);
itemrecipe("Design: Quick King's Amber", 46933, 66506);
itemrecipe("Design: Radiant Eye of Zul", 46911, 66441);
itemrecipe("Design: Radiant Forest Emerald", 41819, 54012);
itemrecipe("Design: Reckless Ametrine", 47007, 66574);
itemrecipe("Design: Reckless Huge Citrine", 41561, 53885);
itemrecipe("Design: Reckless Monarch Topaz", 41690, 53987);
itemrecipe("Design: Relentless Earthsiege Diamond", 41710, 55400);
itemrecipe("Design: Resolute Ametrine", 47022, 66586);
itemrecipe("Design: Resolute Monarch Topaz", 41778, 54023);
itemrecipe("Design: Resplendent Ametrine", 47018, 66582);
itemrecipe("Design: Resplendent Huge Citrine", 41566, 53875);
itemrecipe("Design: Resplendent Monarch Topaz", 41734, 53978);
itemrecipe("Design: Revitalizing Skyflare Diamond", 41707, 55407);
itemrecipe("Design: Rigid Dragon's Eye", 42308, 56084);
itemrecipe("Design: Ring of Earthen Might", 43317, 58147);
itemrecipe("Design: Ring of Northern Tears", 43320, 58150);
itemrecipe("Design: Ring of Scarlet Shadows", 43318, 58148);
itemrecipe("Design: Savage Titanium Band", 43497, 58507);
itemrecipe("Design: Savage Titanium Ring", 43485, 58492);
itemrecipe("Design: Shattered Dark Jade", 41569, 53933);
itemrecipe("Design: Shattered Eye of Zul", 46913, 66443);
itemrecipe("Design: Shattered Forest Emerald", 41735, 54014);
itemrecipe("Design: Shifting Dreadstone", 46938, 66557);
itemrecipe("Design: Shifting Twilight Opal", 41747, 53963);
itemrecipe("Design: Smooth Autumn's Glow", 41720, 53957);
itemrecipe("Design: Smooth Dragon's Eye", 42310, 56085);
itemrecipe("Design: Smooth King's Amber", 46929, 66502);
itemrecipe("Design: Solid Dragon's Eye", 42311, 56086);
itemrecipe("Design: Solid Majestic Zircon", 46924, 66497);
itemrecipe("Design: Solid Sky Sapphire", 42138, 53952);
itemrecipe("Design: Sovereign Dreadstone", 46935, 66554);
itemrecipe("Design: Sovereign Twilight Opal", 41784, 53962);
itemrecipe("Design: Sparkling Dragon's Eye", 42312, 56087);
itemrecipe("Design: Sparkling Majestic Zircon", 46925, 66498);
itemrecipe("Design: Stalwart Ametrine", 47017, 66581);
itemrecipe("Design: Steady Dark Jade", 41572, 53919);
itemrecipe("Design: Steady Eye of Zul", 46898, 66428);
itemrecipe("Design: Steady Forest Emerald", 41738, 54000);
itemrecipe("Design: Stormy Chalcedony", 41560, 53943);
itemrecipe("Design: Stormy Dragon's Eye", 42313, 56088);
itemrecipe("Design: Stormy Majestic Zircon", 46926, 66499);
itemrecipe("Design: Stormy Sky Sapphire", 41728, 53955);
itemrecipe("Design: Subtle Dragon's Eye", 42314, 56055);
itemrecipe("Design: Thundering Skyflare Diamond", 41787, 55395);
itemrecipe("Design: Titanium Earthguard Chain", 42652, 56500);
itemrecipe("Design: Titanium Earthguard Ring", 42649, 56497);
itemrecipe("Design: Titanium Frostguard Ring", 43597, 58954);
itemrecipe("Design: Titanium Impact Band", 42648, 56496);
itemrecipe("Design: Titanium Impact Choker", 42651, 56499);
itemrecipe("Design: Titanium Spellshock Necklace", 42653, 56501);
itemrecipe("Design: Titanium Spellshock Ring", 42650, 56498);
itemrecipe("Design: Trenchant Earthsiege Diamond", 41711, 55403);
itemrecipe("Design: Turbid Dark Jade", 41571, 53924);
itemrecipe("Design: Turbid Eye of Zul", 46915, 66445);
itemrecipe("Design: Turbid Forest Emerald", 41737, 54005);
itemrecipe("Design: Windfire Band", 43319, 58149);

-- Recipes Renamed with Cata
-- itemrecipe(NAMES, ITEMID, SPELLID);
itemrecipe({"Design: Accurate Ametrine", "Design: Accurate Dreadstone"}, 47010, 66576);
itemrecipe({"Design: Accurate Monarch Topaz","Design: Accurate Twilight Opal"}, 41818, 53994);
itemrecipe({"Design: Durable Ametrine", "Design: Willful Ametrine"}, 46952, 66571);
itemrecipe({"Design: Durable Huge Citrine", "Design: Willful Huge Citrine"}, 41563, 53884);
itemrecipe({"Design: Durable Monarch Topaz", "Design: Willful Monarch Topaz"}, 41730, 53986);
itemrecipe({"Design: Effulgent Skyflare Diamond", "Design: Shielded Skyflare Diamond"}, 41705, 55384);
itemrecipe({"Design: Enduring Eye of Zul", "Design: Regal Eye of Zul"}, 46897, 66338);
itemrecipe({"Design: Enduring Forest Emerald", "Design: Regal Forest Emerald"}, 41697, 53998);
itemrecipe({"Design: Etched Ametrine", "Design: Etched Dreadstone"}, 46953, 66572);
itemrecipe({"Design: Etched Monarch Topaz", "Design: Etched Twilight Opal"}, 41777, 53976);
itemrecipe({"Design: Glinting Monarch Topaz", "Design: Glinting Twilight Opal"}, 41582, 53980);
itemrecipe({"Design: Glowing Twilight Opal", "Design: Timeless Twilight Opal"}, 41725, 53965);
itemrecipe({"Design: Lambent Eye of Zul", "Design: Lightning Eye of Zul"}, 46909, 66439);
itemrecipe({"Design: Lambent Forest Emerald", "Design: Lightning Forest Emerald"}, 41696, 54009);
itemrecipe({"Design: Lustrous Sky Sapphire", "Design: Sparkling Sky Sapphire"}, 41581, 53954);
itemrecipe({"Design: Pristine Ametrine", "Design: Glinting Dreadstone"}, 46956, 66573);
itemrecipe({"Design: Puissant Twilight Opal", "Design: Jagged Forest Emerald"}, 41702, 53973, 53996);
itemrecipe({"Design: Rigid Autumn's Glow", "Design: Rigid Sky Sapphire"}, 41580, 53958);
itemrecipe({"Design: Rigid King's Amber", "Design: Rigid Majestic Zircon"}, 46928, 66501);
itemrecipe({"Design: Runed Cardinal Ruby", "Design: Brilliant Cardinal Ruby"}, 46916, 66446);
itemrecipe({"Design: Runed Dragon's Eye", "Design: Brilliant Dragon's Eye"}, 42309, 56053);
itemrecipe({"Design: Runed Scarlet Ruby", "Design: Brilliant Scarlet Ruby"}, 41718, 53946);
itemrecipe({"Design: Seer's Dark Jade", "Design: Purified Shadow Crystal"}, 41568, 53921);
itemrecipe({"Design: Stark Monarch Topaz", "Design: Deft Monarch Topaz"}, 41687, 53991);
itemrecipe({"Design: Subtle Cardinal Ruby", "Design: Subtle King's Amber"}, 46922, 66452);
itemrecipe({"Design: Subtle Scarlet Ruby", "Design: Subtle Autumn's Glow"}, 41719, 53948);
itemrecipe({"Design: Tense Dark Jade", "Design: Radiant Dark Jade"}, 41570, 53932);
itemrecipe({"Design: Timeless Eye of Zul", "Design: Timeless Dreadstone"}, 46902, 66432);
itemrecipe({"Design: Veiled Ametrine", "Design: Veiled Dreadstone"}, 46951, 66570);
itemrecipe({"Design: Veiled Monarch Topaz", "Design: Veiled Twilight Opal"}, 41688, 53985);
itemrecipe({"Design: Vivid Dark Jade", "Design: Nimble Dark Jade"}, 41567, 53917);
itemrecipe({"Design: Vivid Eye of Zul", "Design: Nimble Eye of Zul"}, 46899, 66429);
itemrecipe({"Design: Vivid Forest Emerald", "Design: Nimble Forest Emerald"}, 41698, 53997);
itemrecipe({"Design: Wicked Monarch Topaz", "Design: Deadly Monarch Topaz"}, 41721, 53988);

-- Recipes that got new Spell IDs with Cata?!
-- itemrecipe(NAME / NAMES, ITEMID, SPELLID, SPELLID_AFTER_CATA);
itemrecipe("Design: Brilliant Dragon's Eye", 42300, 56074, 56053);
itemrecipe("Design: Deadly Monarch Topaz", 41794, 53979, 53988);
itemrecipe("Design: Deft Monarch Topaz", 41792, 53982, 53991);
itemrecipe({"Design: Sundered Forest Emerald", "Design: Misty Forest Emerald"}, 41724, 54008, 54003);

-- Recipes Removed with Cata
-- itemrecipe(NAME / NAMES, ITEMID, SPELLID, SPELLID_AFTER_CATA, REMOVED_WITH_CATA);
itemrecipe({"Design: Balanced Dreadstone", "Design: Shifting Dreadstone"}, 46934, 66553, 66557, REMOVED_WITH_CATA);
itemrecipe({"Design: Bright Cardinal Ruby", "Design: Delicate Cardinal Ruby"}, 46919, 66449, 66448, REMOVED_WITH_CATA);
itemrecipe({"Design: Bright Dragon's Eye", "Design: Delicate Dragon's Eye"}, 42299, 56054, 56052, REMOVED_WITH_CATA);
itemrecipe({"Design: Brilliant King's Amber", "Design: Brilliant Cardinal Ruby"}, 46930, 66503, 66446, REMOVED_WITH_CATA);
itemrecipe({"Design: Dazzling Eye of Zul", "Design: Purified Dreadstone"}, 46900, 66430, 66556, REMOVED_WITH_CATA);
itemrecipe({"Design: Empowered Ametrine", "Design: Lucent Ametrine"}, 47016, 66580, 66585, REMOVED_WITH_CATA);
itemrecipe({"Design: Empowered Huge Citrine", "Design: Lucent Huge Citrine"}, 41564, 53888, 53879, REMOVED_WITH_CATA);
itemrecipe({"Design: Empowered Monarch Topaz", "Design: Lucent Monarch Topaz"}, 41732, 53990, 53981, REMOVED_WITH_CATA);
itemrecipe({"Design: Fractured Cardinal Ruby", "Design: Smooth King's Amber"}, 46921, 66451, 66502, REMOVED_WITH_CATA);
itemrecipe({"Design: Fractured Dragon's Eye", "Design: Smooth Dragon's Eye"}, 42303, 56076, 56085, REMOVED_WITH_CATA);
itemrecipe({"Design: Fractured Scarlet Ruby", "Design: Smooth Autumn's Glow"}, 41817, 53950, 53957, REMOVED_WITH_CATA);
itemrecipe({"Design: Glimmering Ametrine", "Design: Stalwart Ametrine"}, 47012, 66578, 66581, REMOVED_WITH_CATA);
itemrecipe({"Design: Glinting Ametrine", "Design: Glinting Dreadstone"}, 47008, 66575, 66573, REMOVED_WITH_CATA);
itemrecipe({"Design: Glowing Dreadstone", "Design: Timeless Dreadstone"}, 46936, 66555, 66432, REMOVED_WITH_CATA);
itemrecipe({"Design: Infused Dreadstone", "Design: Glinting Dreadstone"}, 46945, 66564, 66573, REMOVED_WITH_CATA);
itemrecipe({"Design: Infused Twilight Opal", "Design: Glinting Twilight Opal"}, 41796, 53970, 53980, REMOVED_WITH_CATA);
itemrecipe({"Design: Intricate Eye of Zul", "Design: Energized Eye of Zul"}, 46910, 66440, 66442, REMOVED_WITH_CATA);
itemrecipe({"Design: Intricate Forest Emerald", "Design: Energized Forest Emerald"}, 41694, 54006, 54011, REMOVED_WITH_CATA);
itemrecipe({"Design: Luminous Ametrine", "Design: Purified Dreadstone"}, 46947, 66566, 66556, REMOVED_WITH_CATA);
itemrecipe({"Design: Luminous Monarch Topaz", "Design: Reckless Monarch Topaz"}, 41689, 53983, 53987, REMOVED_WITH_CATA);
itemrecipe({"Design: Lustrous Dragon's Eye", "Design: Sparkling Dragon's Eye"}, 42304, 56077, 56087, REMOVED_WITH_CATA);
itemrecipe({"Design: Lustrous Majestic Zircon", "Design: Sparkling Majestic Zircon"}, 46927, 66500, 66498, REMOVED_WITH_CATA);
itemrecipe({"Design: Opaque Dark Jade", "Design: Turbid Dark Jade"}, 41573, 53929, 53924, REMOVED_WITH_CATA);
itemrecipe({"Design: Opaque Eye of Zul", "Design: Turbid Eye of Zul"}, 46914, 66444, 66445, REMOVED_WITH_CATA);
itemrecipe({"Design: Opaque Forest Emerald", "Design: Turbid Forest Emerald"}, 41739, 54010, 54005, REMOVED_WITH_CATA);
itemrecipe({"Design: Puissant Dreadstone", "Design: Jagged Eye of Zul"}, 46944, 66563, 66431, REMOVED_WITH_CATA);
itemrecipe({"Design: Regal Dreadstone", "Design: Regal Eye of Zul"}, 46940, 66559, 66338, REMOVED_WITH_CATA);
itemrecipe({"Design: Regal Twilight Opal", "Design: Regal Forest Emerald"}, 41703, 53971, 53998, REMOVED_WITH_CATA);
itemrecipe({"Design: Royal Dreadstone", "Design: Purified Dreadstone"}, 46939, 66558, 66556, REMOVED_WITH_CATA);
itemrecipe({"Design: Royal Twilight Opal", "Design: Purified Twilight Opal"}, 41701, 53967, 53966, REMOVED_WITH_CATA);
itemrecipe({"Design: Seer's Eye of Zul", "Design: Purified Dreadstone"}, 46903, 66433, 66556, REMOVED_WITH_CATA);
itemrecipe({"Design: Seer's Forest Emerald", "Design: Purified Twilight Opal"}, 41699, 54002, 53966, REMOVED_WITH_CATA);
itemrecipe({"Design: Shining Eye of Zul", "Design: Lightning Eye of Zul"}, 46907, 66437, 66439, REMOVED_WITH_CATA);
itemrecipe({"Design: Shining Forest Emerald", "Design: Lightning Forest Emerald"}, 41782, 54004, 54009, REMOVED_WITH_CATA);
itemrecipe({"Design: Stark Ametrine", "Design: Deft Ametrine"}, 47023, 66587, 66584, REMOVED_WITH_CATA);
itemrecipe({"Design: Sundered Eye of Zul", "Design: Misty Eye of Zul"}, 46906, 66436, 53981, REMOVED_WITH_CATA);
itemrecipe({"Design: Tense Eye of Zul", "Design: Radiant Eye of Zul"}, 46908, 66438, 66441, REMOVED_WITH_CATA);
itemrecipe({"Design: Tense Forest Emerald", "Design: Radiant Forest Emerald"}, 41736, 54013, 54012, REMOVED_WITH_CATA);
itemrecipe({"Design: Tenuous Dreadstone", "Design: Glinting Dreadstone"}, 46946, 66565, 66573, REMOVED_WITH_CATA);
itemrecipe({"Design: Tenuous Twilight Opal", "Design: Glinting Twilight Opal"}, 41785, 53964, 53980, REMOVED_WITH_CATA);
itemrecipe({"Design: Thick Autumn's Glow", "Design: Subtle Autumn's Glow"}, 41791, 53959, 53948, REMOVED_WITH_CATA);
itemrecipe({"Design: Thick Dragon's Eye", "Design: Subtle Dragon's Eye"}, 42315, 56089, 56055, REMOVED_WITH_CATA);
itemrecipe({"Design: Thick King's Amber", "Design: Subtle King's Amber"}, 46931, 66504, 66452, REMOVED_WITH_CATA);
itemrecipe({"Design: Timeless Forest Emerald", "Design: Timeless Twilight Opal"}, 41795, 53995, 53965, REMOVED_WITH_CATA);
itemrecipe({"Design: Wicked Ametrine", "Design: Deadly Ametrine"}, 47011, 66577, 53946, REMOVED_WITH_CATA);

-- Recipes that were only removed as a Recipe Item in Cata, but still available from a trainer? Cata was a god damned mystery.
-- itemrecipe(NAME / NAMES, ITEMID, SPELLID, SPELLID_AFTER_CATA, REMOVED_WITH_CATA);
itemrecipe("Design: Misty Forest Emerald", 41781, 54003, 54003, REMOVED_WITH_CATA);	-- NOTE: Not sure if this item still drops, no recorded history of it on Retail WoWHead.
itemrecipe("Design: Stalwart Monarch Topaz", 41779, 53992, 53992, REMOVED_WITH_CATA);	-- NOTE: Not sure if this item still drops, no recorded history of it on Retail WoWHead.

-- #endif

-- #if AFTER CATA

-- #endif

-- #if AFTER MOP

-- #endif

-- #if AFTER WOD

-- #endif

-- #if AFTER LEGION

-- #endif

-- #if AFTER BFA

-- #endif

-- #if AFTER SHADOWLANDS

-- #endif


-- Never Implemented Recipe and Crafted Item Database
local nyi_ = root(ROOTS.NeverImplemented, {});
local neverimplemented = function(thing)
	table.insert(nyi_, prof(JEWELCRAFTING, { thing }));
end
recipeCache = nil;	-- Disable the cache validation.

-- #endif
-- #endif