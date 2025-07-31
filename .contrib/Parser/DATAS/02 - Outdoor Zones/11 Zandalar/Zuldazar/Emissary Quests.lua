---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZULDAZAR, {
		n(EMISSARY_QUESTS, {
			q(54451, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 }, ["minReputation"] = { FACTION_TORTOLLAN_SEEKERS, EXALTED } }, {	-- Baubles from the Seekers
				["provider"] = { "n", 134345 },	-- Collector Kojo
				["coord"] = { 71.51, 30.35, ZULDAZAR },
				["repeatable"] = true,
				["lvl"] = 120,
				["groups"] = {
					i(166245, {	-- Tortollan Seekers Supplies
						i(166704),	-- Bowl of Glowing Pufferfish (TOY!)
						i(166807),	-- Recipe: Boralus Blood Sausage [Rank 3] (RECIPE!)
						i(166264),	-- Recipe: Sanguinated Feast [Rank 3] (RECIPE!)
					}),
				},
			})),
			q(50604, {	-- Tortollan Seekers
				["provider"] = { "n", 134345 },	-- Collector Kojo
				["coord"] = { 71.51, 30.35, ZULDAZAR },
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
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	m(ZANDALAR, {
		m(ZULDAZAR, {
			n(FACTIONS, {
				n(EMISSARY_QUESTS, {
					q(54610),	-- Paragon of the Tortollan Seekers
				}),
			}),
		}),
	}),
})));
