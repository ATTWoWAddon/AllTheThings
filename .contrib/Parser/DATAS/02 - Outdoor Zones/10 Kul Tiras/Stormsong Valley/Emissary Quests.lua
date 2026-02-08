---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(STORMSONG_VALLEY, {
		n(EMISSARY_QUESTS, {
			q(54451, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 }, ["minReputation"] = { FACTION_TORTOLLAN_SEEKERS, EXALTED } }, {	-- Baubles from the Seekers
				["provider"] = { "n", 135793 },	-- Collector Kojo
				["coord"] = { 40.54, 36.41, STORMSONG_VALLEY },
				["repeatable"] = true,
				["groups"] = {
					i(166245, {	-- Tortollan Seekers Supplies
						i(166704),	-- Bowl of Glowing Pufferfish (TOY!)
						i(166807),	-- Recipe: Boralus Blood Sausage [Rank 3] (RECIPE!)
						i(166264),	-- Recipe: Sanguinated Feast [Rank 3] (RECIPE!)
					}),
				},
			})),
			q(50604, {	-- Tortollan Seekers
				["provider"] = { "n", 135793 },	-- Collector Kojo
				["coord"] = { 40.54, 36.41, STORMSONG_VALLEY },
				["isWorldQuest"] = true,
				["lvl"] = 120,
				["sym"] = {{"select","itemID",
					165680,	-- Igneous Winterskorn Loop
					165679,	-- Ornate Elun'dris Ring
					165683,	-- Seal of Dath'Remar
					165678,	-- Stonemason's Guild Band
					165661,	-- Ancient Tuskarr Sea Charm
					165660,	-- Chargestone of the Thunder King's Court
					165662,	-- Kezan Stamped Bijou
					165666,	-- Moonstone of Zin-Azshari
					165667,	-- Razzashi Tooth Medallion
					165665,	-- Ritual Feather of Unng Ak
					165664,	-- Sea Giant's Tidestone
				}},
			}),
			q(50601, {	-- Storm's Wake
				["provider"] = { "n", 135800 },	-- Sister Lilyana
				["coord"] = { 59.29, 69.33, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isWorldQuest"] = true,
				["lvl"] = 120,
				["groups"] = {
					i(165868, {	-- Storm's Wake Equipment Cache
						["sym"] = {
							{"select", "mapID", STORMSONG_VALLEY},
							{"find", "headerID", ZONE_REWARDS },
							{"extract", "itemID" },	-- Select the Items.
							{"invtype", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_CLOAK", },	-- Only include a couple of inventory types.
						},
					}),
					i(165867, {	-- Kul Tiran Weapons Cache
						["sym"] = {
							{"select", "mapID", KUL_TIRAS},
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
			q(54457, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 }, ["minReputation"] = { FACTION_STORMS_WAKE, EXALTED } }, {	-- Supplies from Storm's Wake
				["provider"] = { "n", 135800 },	-- Sister Lilyana
				["coord"] = { 59.29, 69.33, STORMSONG_VALLEY },
				["races"] = ALLIANCE_ONLY,
				["isDaily"] = true,
				["groups"] = {
					i(166294, {	-- Storm's Wake Supplies
						i(166719),	-- Violet Abyssal Eel (PET!)
						i(166665),	-- Technique: Glyph of Storm's Wake (RECIPE!)
					}),
				},
			})),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	m(KUL_TIRAS, {
		m(STORMSONG_VALLEY, {
			n(FACTIONS, {
				n(EMISSARY_QUESTS, {
					q(54610),	-- Paragon of the Tortollan Seekers
					q(54628),	-- Paragon of the Storm's Wake
				}),
			}),
		}),
	}),
})));
