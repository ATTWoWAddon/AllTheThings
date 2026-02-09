---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.SILVERMOON_CITY, {
		n(QUESTS, {
			q(95468, {	-- Hope in the Darkest Corners
				["qg"] = 256210,	-- Halduron Brightwing
				["coord"] = { 49.1, 64.6, MAP.MIDNIGHT.SILVERMOON_CITY },
				["isWeekly"] = true,	-- Presumed
				["groups"] = {
					i(265995),	-- Quel'Thalas Adventurer's Cache
				},
			}),
			-- Battle Pet
			q(94012, {	-- Lost Lil' Strider
				--["sourceQuests"] = { ??? },	-- ??
				["provider"] = { "n", 257039 },	-- Hawkrancher Saman
				["coord"] = { 41.8, 76.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					i(264165),	-- Tiff (QI!)
				},
			}),
			q(93965, {	-- Pet Wranglin'
				["sourceQuests"] = { 94012 },	-- Lost Lil' Strider
				["provider"] = { "n", 257039 },	-- Hawkrancher Saman
				["coord"] = { 41.8, 76.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					i(263871),	-- Holy Pet Leash (QI!)
				},
			}),
			-- Catalyst
			q(93687, {	-- Taste True Power
				--["sourceQuests"] = { ??? },	-- ??
				["provider"] = { "n", 243229 },	-- Eldara Dawnrunner
				["timeline"] = { ADDED_12_0_X_SEASONSTART },
				["coord"] = { 40.2, 64.8, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			-- Crests
			q(94430, {	-- Adventuring Gear
				--["sourceQuests"] = { ??? },	-- ??
				["provider"] = { "n", 239676 },	-- Vaskarn
				["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
				["coord"] = { 48.6, 62.0, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(94417, {	-- Crests of the Dawn
				["sourceQuests"] = { 94430 },	-- Adventuring Gear
				["provider"] = { "n", 239676 },	-- Vaskarn
				["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
				["coord"] = { 48.6, 62.0, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(94432, {	-- Veteran Equipment
				["sourceQuests"] = { 94417 },	-- Crests of the Dawn
				["provider"] = { "n", 239676 },	-- Vaskarn
				["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
				["coord"] = { 48.6, 62.0, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(94418, {	-- Crest Transmutation
				["sourceQuests"] = { 94432 },	-- Veteran Equipment
				["provider"] = { "n", 239676 },	-- Vaskarn
				["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
				["coord"] = { 48.6, 62.0, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			-- Profession(s)
			q(93723, {	-- Crafters Needed
				["qg"] = 243283,	-- Captain Flaresworn
				["coord"] = { 45.0, 55.2, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					i(251321),	-- Collection of Eversong Minerals
					i(251322),	-- Thalassian Leatherworker's Duffel
					i(251327),	-- Thalassian Tailor's Tote Bag
				},
			}),
			-- Sparks
			q(93942, {	-- Spark of Radiance
				["provider"] = { "i", 232875 },	-- Spark of Radiance
				["timeline"] = { ADDED_12_0_X_SEASONSTART },
				["coord"] = { 40.2, 64.8, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			--
			q(94474, {	-- The Great Vault
				["qg"] = 239670,	-- Vaultkeeper Elysa
				["coord"] = { 50.4, 64.9, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(95245, {	-- Midnight: World Tour
				["provider"] = { "n", 235787 },	-- Lor'themar Theron
				["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			-- Dungeons
			n(QUESTS, sharedData({
				["provider"] = { "n", 256210 },	-- Halduron Brightwing
				["coord"] = { 49.1, 64.6, MAP.MIDNIGHT.SILVERMOON_CITY },
				["isWeekly"] = true,
			}, {
				q(93757),	-- Voidscar Arena
			})),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.SILVERMOON_CITY, {
			n(QUESTS, {
				q(93067),	-- "Stay a while and listen" objectID 551501 (In Memoriam) @ 35.2, 70.3
				q(90806),	-- Midnight adventure mode // World Quests & Adventure Mode (spellID 1234841) & Unlock Content Scaling (spellID 1234839)
				q(94419, {["timeline"]={ADDED_12_0_X_SEASONSTART,REMOVED_12_1_0}}),	-- player recieve 10x Veteran Dawncrest during questID 94418 (Crest Transmutation)
			}),
		}),
	}),
}));
