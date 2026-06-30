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
					i(265995, {	-- Quel'Thalas Adventurer's Cache
						["sym"] = SYM.MIDNIGHT.QUELTHALAS_ZONE_REWARDS,
					}),
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
				["timeline"] = { ADDED_12_0_1_SEASONSTART },
				["coord"] = { 40.2, 64.8, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			-- Crests, Season 1
			q(94430, {	-- Adventuring Gear
				--["sourceQuests"] = { ??? },	-- ??
				["provider"] = { "n", 239676 },	-- Vaskarn
				["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
				["coord"] = { 48.6, 62.0, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(94417, {	-- Crests of the Dawn
				["sourceQuests"] = { 94430 },	-- Adventuring Gear
				["provider"] = { "n", 239676 },	-- Vaskarn
				["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
				["coord"] = { 48.6, 62.0, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(94432, {	-- Veteran Equipment
				["sourceQuests"] = { 94417 },	-- Crests of the Dawn
				["provider"] = { "n", 239676 },	-- Vaskarn
				["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
				["coord"] = { 48.6, 62.0, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(94418, {	-- Crest Transmutation
				["sourceQuests"] = { 94432 },	-- Veteran Equipment
				["provider"] = { "n", 239676 },	-- Vaskarn
				["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
				["coord"] = { 48.6, 62.0, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			-- Crests, Season 2
			q(96633, {	-- Equipment Seminar
				["provider"] = { "n", 239676 },	-- Vaskarn
				["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 },
				["coord"] = { 48.6, 62.0, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			-- Sparks
			q(93942, {	-- Spark of Radiance
				["provider"] = { "i", 232875 },	-- Spark of Radiance
				["timeline"] = { ADDED_12_0_1_SEASONSTART },
				["coord"] = { 40.2, 64.8, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			--
			q(94474, {	-- The Great Vault
				["qg"] = 239670,	-- Vaultkeeper Elysa
				["coord"] = { 50.4, 64.9, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					i(265039),	-- Silvermoon Splendor (QI!)
				},
			}),
			q(95245, {	-- Midnight: World Tour
				["provider"] = { "n", 235787 },	-- Lor'themar Theron
				["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				["lvl"] = 90,
			}),
			q(95276, {	-- The Last Push
				["description"] = "Finish the main campaign before level 90 to access.\nNote: This auto-completes when hitting 90 anyway.",
				["qg"] = 235787,	-- Lor'themar Theron <Regent Lord of Quel'Thalas>
				["coord"] = { 45.4, 70.6, MAP.MIDNIGHT.SILVERMOON_CITY },
				["lockCriteria"] = { 1, "lvl", 90 },
			}),
			q(96245, {	-- You've Seen it All Before
				["description"] = "Automatically acquired on reaching level 90 if you have another level 90 character who has completed the campaign.",
				["timeline"] = { ADDED_12_0_5 },
			}),
		}),
		-- PVP 4 Part Quest
		n(QUESTS, sharedData({
			["provider"] = { "n", 256212 },	-- Archmage Aethas Sunreave
			["coord"] = { 48.9, 64.6, MAP.MIDNIGHT.SILVERMOON_CITY },
		}, {
			-- Season 1
			q(94835, {	-- Early Morning Training
				["timeline"] = { ADDED_12_0_1, REMOVED_12_1_0 },
				["groups"] = { i(267076) },	-- Novice Combatant's Medallion
			}),
			q(94836, {	-- Late Night Training: Week 1 of 3
				["sourceQuests"] = { 94835 },	-- Early Morning Training
				["timeline"] = { ADDED_12_0_1, REMOVED_12_1_0 },
			}),
			q(94837, {	-- Midnight Training: Week 2 of 3
				["sourceQuests"] = { 94836 },	-- Late Night Training: Week 1 of 3
				["timeline"] = { ADDED_12_0_1, REMOVED_12_1_0 },
			}),
			q(94838, {	-- Final Training: Week 3 of 3
				["sourceQuests"] = { 94837 },	-- Midnight: Week 2 of 3
				["timeline"] = { ADDED_12_0_1, REMOVED_12_1_0 },
			}),
			-- Season 2
			q(98234, {	-- Week 1 of 3: Gladiator's Distinction
				["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 },
			}),
		})),
		-- Dungeons
		n(QUESTS, sharedData({
			["provider"] = { "n", 256210 },	-- Halduron Brightwing
			["coord"] = { 49.1, 64.6, MAP.MIDNIGHT.SILVERMOON_CITY },
			["isWeekly"] = true,
		}, {
			q(93755),	-- Den of Nalorakk
			q(93753),	-- Magister's Terrace
			q(93754),	-- Maisara Caverns
			q(93752),	-- Murder Row
			q(93758),	-- Nexus-Point Xenas
			q(93756),	-- The Blinding Vale
			q(93757),	-- Voidscar Arena
			q(93751),	-- Windrunner Spire
		})),
		-- Unity Against the Void (unsure if worth separate file)
		n(QUESTS, sharedData({
			--["provider"] = { "n", 256203 },	-- Lady Liadrin
			["coord"] = { 49.0, 64.6, MAP.MIDNIGHT.SILVERMOON_CITY },
			["isWeekly"] = true,
			["groups"] = {
				i(268490, {	-- Apex Cache (Pre-Season)
					["timeline"] = { ADDED_12_0_1_LAUNCH, REMOVED_12_0_1_SEASONSTART },
					["sym"] = SYM.MIDNIGHT.QUELTHALAS_ZONE_REWARDS,
				}),
				i(254677, {	-- Apex Cache (Season 1)
					["timeline"] = { ADDED_12_0_1_SEASONSTART, REMOVED_12_1_0 },
					["sym"] = SYM.MIDNIGHT.QUELTHALAS_ZONE_REWARDS,
				}),
				i(279527, {	-- Apex Cache (Season 2)
					["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 },
					["sym"] = SYM.MIDNIGHT.QUELTHALAS_ZONE_REWARDS,
				}),
				i(279575, {	-- Silvermoon Citizen's Emblem
					["timeline"] = { ADDED_12_1_0 },	-- Exo Note: Unsure if it will be removed at 12.2.0 Launch.
				}),
			},
		}, {
			q(93744),	-- Unity Against the Void (fire in addition to player choose quest)
			q(93890),	-- Midnight: Abundance
			q(93767),	-- Midnight: Arcantina
			q(94457),	-- Midnight: Battlegrounds
			q(93909),	-- Midnight: Delves
			q(93911),	-- Midnight: Dungeons
			q(93912),	-- Midnight: Raid
			q(93913),	-- Midnight: World Boss
			q(93769),	-- Midnight: Housing
			q(93891),	-- Midnight: Legends of the Haranir
			q(96727, { ["timeline"] = { ADDED_12_0_7 } }),	-- Midnight: Offworld Showdowns
			q(93910),	-- Midnight: Prey
			q(95843, { ["timeline"] = { ADDED_12_0_5 } }),	-- Midnight: Ritual Sites
			q(93889),	-- Midnight: Saltheril's Soiree
			q(93892),	-- Midnight: Stormarion Assault
			q(93766),	-- Midnight: World Quests
			q(95842, { ["timeline"] = { ADDED_12_0_5 } }),	-- Midnight: Void Assaults
		})),
		-- Hunt for Xal'atath
		n(QUESTS, sharedData({
			["provider"] = { "n", 270645 },	-- Vareesa Windrunner
			["coord"] = { 49.1, 64.6, MAP.MIDNIGHT.SILVERMOON_CITY },
			["isWeekly"] = true,
			["timeline"] = { ADDED_12_1_0 },	-- Exo Note: Unsure if it will be removed at 12.2.0 Launch.
			["groups"] = {
				i(279576),	-- Void Vestige
			},
		}, {
			q(98172, {	-- Trailing Xal'atath
				i(279573),	-- Fading Voidwhisper (QI!)
			}),
		})),
		n(SPECIAL, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
			campsite(155, {	-- Silvermoon City (CAMPSITE!)
				["cost"] = { { "i", 279575, 4 } },	-- 4x Silvermoon Citizen's Emblem
			}),
			campsite(158, {	-- Silvermoon in Void (CAMPSITE!)
				["cost"] = { { "i", 279576, 4 } },	-- 4x Void Vestige
			}),
		})),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.SILVERMOON_CITY, {
			n(QUESTS, {
				q(93067),	-- "Stay a while and listen" objectID 551501 (In Memoriam) @ 35.2, 70.3
				q(93275, name(HEADERS.Item,232875,{["isWeekly"]=true})),	-- Weekly lockout for Spark of Radiance
				q(93789),	-- Apex Cache (season 1) was opened / bonus roll for something?
				q(94419, {["timeline"]={ADDED_12_0_1_SEASONSTART,REMOVED_12_1_0}}),	-- player receive 10x Veteran Dawncrest during questID 94418 (Crest Transmutation)
				q(94410),	-- After turning in Unity Against the Void? Spark lockout?
				q(93742, name(HEADERS.Currency, 3378, {["timeline"] = { ADDED_12_0_1_SEASONSTART }})),	-- Looted Dawnlight Manaflux after Midnight Season 1: Catalyst Unbound
			}),
		}),
	}),
}));
