-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
ANCIENT_WAYGATES = createHeader({
	readable = "Ancient Waygates",
	icon = 1377394,
	text = {
		en = WOWAPI_GetSpellName(386485),
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(DRAGONSCALE_EXPEDITION, {
		n(ANCIENT_WAYGATES, bubbleDownSelf({ ["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 7 } }, {
			n(ACHIEVEMENTS, {
				ach(16292, {	-- Mastering the Waygates
					["description"] = "In order to complete all of the Doc Nanners |cffffff00Continued Waygate Exploration|r breadcrumbs, you MUST complete the Waygate Unlocks on one character. If you use Alts, the breadcrumbs will repeat, locking you out of the last few in the sequence, depending on the number of Waygates opened by an Alt.",
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(2836, {	-- Algeth'era, Thaldraszus
					["coord"] = { 62.4, 40.5, THALDRASZUS },
					["cr"] = 189830,	-- Ancient Waygate
					["sourceQuests"] = { 71162 },	-- Waygate: Algeth'era
				}),
				fp(2838, {	-- Cobalt Assembly, The Azure Span
					["coord"] = { 48.3, 30.1, THE_AZURE_SPAN },
					["cr"] = 189709,	-- Ancient Waygate
					["sourceQuests"] = { 70156 },	-- An Ancient Awakening
				}),
				fp(2834, {	-- Eon's Fringe, Thaldraszus
					["coord"] = { 52.3, 78.5, THALDRASZUS },
					["cr"] = 189711,	-- Ancient Waygate
					["sourceQuests"] = { 71165 },	-- Waygate: Eon's Fringe
				}),
				fp(2862, {	-- Morqut Islet, Forbidden Reach
					["coord"] = { 29.1, 62.5, THE_FORBIDDEN_REACH },
					["cr"] = 203178,	-- Ancient Waygate
					["sourceQuests"] = { 75154 },	-- Waygate: Morqut Islet
					["timeline"] = { ADDED_10_0_7 },
				}),
				fp(2842, {	-- Rubyscale Outpost, The Waking Shores
					["coord"] = { 47.3, 90.3, THE_WAKING_SHORES },
					["cr"] = 195634,	-- Ancient Waygate
					["sourceQuests"] = { 70156 },	-- An Ancient Awakening
				}),
				fp(2839, {	-- Rusza'thar Reach, Ohn'ahran Plains
					["coord"] = { 81.3, 39.0, OHNAHRAN_PLAINS },
					["cr"] = 189833,	-- Ancient Waygate
					["sourceQuests"] = { 71138 },	-- Waygate: Rusza'thar Reach
				}),
				fp(2840, {	-- Shady Sanctuary, Ohn'ahran Plains
					["coord"] = { 30.7, 55.5, OHNAHRAN_PLAINS },
					["cr"] = 189579,	-- Ancient Waygate
					["sourceQuests"] = { 71178 },	-- Waygate: Shady Sanctuary
				}),
				fp(2841, {	-- Skytop Observatory, The Waking Shores
					["coord"] = { 75.3, 57.0, THE_WAKING_SHORES },
					["cr"] = 189578,	-- Ancient Waygate
					["sourceQuests"] = { 71157 },	-- Waygate: Skytop Observatory
				}),
				fp(2837, {	-- Vakthros, The Azure Span
					["coord"] = { 77.6, 30.8, THE_AZURE_SPAN },
					["cr"] = 189710,	-- Ancient Waygate
					["sourceQuests"] = { 71161 },	-- Waygate: Vakthros
				}),
			}),
			n(QUESTS, {
				------ RENOWN 7 ------
				i(198538, {	-- Magically Bound Message
					["description"] = "Appears when reaching Renown 7.",
				}),
				q(66595, {	-- Dormant Discovery
					["provider"] = { "i", 198538 },	-- Magically Bound Message
				}),
				q(66597, {	-- This Old Stone
					["sourceQuests"] = { 66595 },	-- Dormant Discovery
					["provider"] = { "n", 189066 },	-- Thaelin Darkanvil
					["coord"] = { 47.2, 90.3, THE_WAKING_SHORES },
				}),
				q(66598, {	-- Nightborne Know-How
					["sourceQuests"] = { 66597 },	-- This Old Stone
					["provider"] = { "n", 189066 },	-- Thaelin Darkanvil
					["coord"] = { 47.2, 90.3, THE_WAKING_SHORES },
				}),
				q(70215, {	-- Curiosity is Key
					["sourceQuests"] = { 66598 },	-- Nightborne Know-How
					["provider"] = { "n", 189764 },	-- Warpcaster Delandra
					["coord"] = { 45.9, 40.7, THE_AZURE_SPAN },
				}),
				q(66582, {	-- Power Procurement
					["sourceQuests"] = { 70215 },	-- Curiosity is Key
					["provider"] = { "n", 189764 },	-- Warpcaster Delandra
					["coord"] = { 45.9, 40.7, THE_AZURE_SPAN },
					["g"] = {
						i(198605),	-- Energized Arcana Vessel
						i(192448),	-- Imbued Arcana Vessel
					},
				}),
				q(70154, {	-- A Gateway to Somewhere
					["sourceQuests"] = { 66582 },	-- Power Procurement
					["provider"] = { "n", 189764 },	-- Warpcaster Delandra
					["coord"] = { 45.9, 40.7, THE_AZURE_SPAN },
				}),
				q(70156, {	-- An Ancient Awakening
					["sourceQuests"] = { 70154 },	-- A Gateway to Somewhere
					["provider"] = { "n", 189764 },	-- Warpcaster Delandra
					["coord"] = { 48.6, 30.3, THE_AZURE_SPAN },
					--["timeline"] = { REMOVED_10_2_6 },	-- TODO: Is this removed?
					["g"] = {
						ach(16291),	-- An Ancient Awakening
						i(198858),	-- Energized Arcana Vessel
						crit(54646, {	-- Cobalt Assembly
							["achievementID"] = 16292,	-- Mastering the Waygates
						}),
						crit(54646, {	-- Rubyscale Outpost
							["achievementID"] = 16292,	-- Mastering the Waygates
						}),
					},
				}),
				q(79989, {	-- An Ancient Awakening
					["sourceQuests"] = { 70154 },	-- A Gateway to Somewhere
					["provider"] = { "n", 189764 },	-- Warpcaster Delandra
					["coord"] = { 48.6, 30.3, THE_AZURE_SPAN },
					["timeline"] = { ADDED_10_2_6 },
					["g"] = {
						--[[	-- TODO: Is this a replacement quest of the original one? (questID 70156)
						ach(16291),	-- An Ancient Awakening
						i(198858),	-- Energized Arcana Vessel
						crit(54646, {	-- Cobalt Assembly
							["achievementID"] = 16292,	-- Mastering the Waygates
						}),
						crit(54646, {	-- Rubyscale Outpost
							["achievementID"] = 16292,	-- Mastering the Waygates
						}),
						]]--
					},
				}),
				------ RENOWN 8 ------
				q(70702, {	-- Continued Waygate Exploration
					["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 8 },	-- Dragonscale Expedition Renown 8
					["description"] = "Spawns Anywhere on Dragon Isles. \n\nIn order to complete all of the Doc Nanners |cffffff00Continued Waygate Exploration|r breadcrumbs, you MUST complete the Waygate Unlocks on one character. If you use Alts, the breadcrumbs will repeat, locking you out of the last few in the sequence, depending on the number of Waygates opened by an Alt.",
					["sourceQuests"] = { 70156 },	-- An Ancient Awakening
					["provider"] = { "n", 196643 },	-- Doc Nanners
					["DisablePartySync"] = true,
					["isBreadcrumb"] = true,
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
					["groups"] = {
						i(200587),	-- Leatherbound Expedition Note (QI!)
					},
				}),
				q(71138, {	-- Waygate: Rusza'thar Reach
					["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 8 },	-- Dragonscale Expedition Renown 8
					["sourceQuests"] = {
						70702,	-- Continued Waygate Exploration
						71146,	-- Continued Waygate Exploration
						71148,	-- Continued Waygate Exploration
						71149,	-- Continued Waygate Exploration
						71150,	-- Continued Waygate Exploration
						71151,	-- Continued Waygate Exploration
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 189066 },	-- Thaelin Darkanvil
					["coord"] = { 47.2, 90.3, THE_WAKING_SHORES },
					["DisablePartySync"] = true,
					["description"] = "Spawns Anywhere on Dragon Isles. \n\nIn order to complete all of the Doc Nanners |cffffff00Continued Waygate Exploration|r breadcrumbs, you MUST complete the Waygate Unlocks on one character. If you use Alts, the breadcrumbs will repeat, locking you out of the last few in the sequence, depending on the number of Waygates opened by an Alt.",
					["g"] = {
						i(200527),	-- Enchanted Arcana Vessel
						crit(54641, {	-- Rusza'thar Reach
							["achievementID"] = 16292,	-- Mastering the Waygates
						}),
					},
				}),
				q(71157, {	-- Waygate: Skytop Observatory
					["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 8 },	-- Dragonscale Expedition Renown 8
					["sourceQuests"] = {
						70702,	-- Continued Waygate Exploration
						71146,	-- Continued Waygate Exploration
						71148,	-- Continued Waygate Exploration
						71149,	-- Continued Waygate Exploration
						71150,	-- Continued Waygate Exploration
						71151,	-- Continued Waygate Exploration
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 189066 },	-- Thaelin Darkanvil
					["coord"] = { 47.2, 90.3, THE_WAKING_SHORES },
					["DisablePartySync"] = true,
					["description"] = "Spawns Anywhere on Dragon Isles. \n\nIn order to complete all of the Doc Nanners |cffffff00Continued Waygate Exploration|r breadcrumbs, you MUST complete the Waygate Unlocks on one character. If you use Alts, the breadcrumbs will repeat, locking you out of the last few in the sequence, depending on the number of Waygates opened by an Alt.",
					["g"] = {
						i(200556),	-- Enchanted Arcana Vessel
						crit(54645, {	-- Skytop Observatory
							["achievementID"] = 16292,	-- Mastering the Waygates
						}),
					},
				}),
				q(71161, {	-- Waygate: Vakthros
					["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 8 },	-- Dragonscale Expedition Renown 8
					["sourceQuests"] = {
						70702,	-- Continued Waygate Exploration
						71146,	-- Continued Waygate Exploration
						71148,	-- Continued Waygate Exploration
						71149,	-- Continued Waygate Exploration
						71150,	-- Continued Waygate Exploration
						71151,	-- Continued Waygate Exploration
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 189066 },	-- Thaelin Darkanvil
					["coord"] = { 47.2, 90.3, THE_WAKING_SHORES },
					["DisablePartySync"] = true,
					["description"] = "Spawns Anywhere on Dragon Isles. \n\nIn order to complete all of the Doc Nanners |cffffff00Continued Waygate Exploration|r breadcrumbs, you MUST complete the Waygate Unlocks on one character. If you use Alts, the breadcrumbs will repeat, locking you out of the last few in the sequence, depending on the number of Waygates opened by an Alt.",
					["g"] = {
						i(200557),	-- Enchanted Arcana Vessel
						crit(54639, {	-- Vakthros
							["achievementID"] = 16292,	-- Mastering the Waygates
						}),
					},
				}),
				q(71162, {	-- Waygate: Algeth'era
					["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 8 },	-- Dragonscale Expedition Renown 8
					["sourceQuests"] = {
						70702,	-- Continued Waygate Exploration
						71146,	-- Continued Waygate Exploration
						71148,	-- Continued Waygate Exploration
						71149,	-- Continued Waygate Exploration
						71150,	-- Continued Waygate Exploration
						71151,	-- Continued Waygate Exploration
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 189066 },	-- Thaelin Darkanvil
					["coord"] = { 47.2, 90.3, THE_WAKING_SHORES },
					["DisablePartySync"] = true,
					["description"] = "Spawns Anywhere on Dragon Isles. \n\nIn order to complete all of the Doc Nanners |cffffff00Continued Waygate Exploration|r breadcrumbs, you MUST complete the Waygate Unlocks on one character. If you use Alts, the breadcrumbs will repeat, locking you out of the last few in the sequence, depending on the number of Waygates opened by an Alt.",
					["g"] = {
						i(200558),	-- Enchanted Arcana Vessel
						crit(54642, {	-- Algeth'era
							["achievementID"] = 16292,	-- Mastering the Waygates
						}),
					},
				}),
				q(71165, {	-- Waygate: Eon's Fringe
					["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 8 },	-- Dragonscale Expedition Renown 8
					["sourceQuests"] = {
						70702,	-- Continued Waygate Exploration
						71146,	-- Continued Waygate Exploration
						71148,	-- Continued Waygate Exploration
						71149,	-- Continued Waygate Exploration
						71150,	-- Continued Waygate Exploration
						71151,	-- Continued Waygate Exploration
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 189066 },	-- Thaelin Darkanvil
					["coord"] = { 47.2, 90.3, THE_WAKING_SHORES },
					["DisablePartySync"] = true,
					["description"] = "Spawns Anywhere on Dragon Isles. \n\nIn order to complete all of the Doc Nanners |cffffff00Continued Waygate Exploration|r breadcrumbs, you MUST complete the Waygate Unlocks on one character. If you use Alts, the breadcrumbs will repeat, locking you out of the last few in the sequence, depending on the number of Waygates opened by an Alt.",
					["g"] = {
						i(200560),	-- Enchanted Arcana Vessel
						crit(54640, {	-- Eon's Fringe
							["achievementID"] = 16292,	-- Mastering the Waygates
						}),
					},
				}),
				q(71178, {	-- Waygate: Shady Sanctuary
					["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 8 },	-- Dragonscale Expedition Renown 8
					["sourceQuests"] = {
						70702,	-- Continued Waygate Exploration
						71146,	-- Continued Waygate Exploration
						71148,	-- Continued Waygate Exploration
						71149,	-- Continued Waygate Exploration
						71150,	-- Continued Waygate Exploration
						71151,	-- Continued Waygate Exploration
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 189066 },	-- Thaelin Darkanvil
					["coord"] = { 47.2, 90.3, THE_WAKING_SHORES },
					["DisablePartySync"] = true,
					["description"] = "Spawns Anywhere on Dragon Isles. \n\nIn order to complete all of the Doc Nanners |cffffff00Continued Waygate Exploration|r breadcrumbs, you MUST complete the Waygate Unlocks on one character. If you use Alts, the breadcrumbs will repeat, locking you out of the last few in the sequence, depending on the number of Waygates opened by an Alt.",
					["g"] = {
						i(199556),	-- Enchanted Arcana Vessel
						crit(54643, {	-- Shady Sanctuary
							["achievementID"] = 16292,	-- Mastering the Waygates
						}),
					},
				}),
				------ RENOWN 10 ------
				q(71146, {	-- Continued Waygate Exploration
					["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 10 },	-- Dragonscale Expedition Renown 10
					["description"] = "Spawns Anywhere on Dragon Isles. \n\nIn order to complete all of the Doc Nanners |cffffff00Continued Waygate Exploration|r breadcrumbs, you MUST complete the Waygate Unlocks on one character. If you use Alts, the breadcrumbs will repeat, locking you out of the last few in the sequence, depending on the number of Waygates opened by an Alt.",
					["sourceQuest"] = 70702,	-- Continued Waygate Exploration
					["provider"] = { "n", 196643 },	-- Doc Nanners
					["DisablePartySync"] = true,
					["isBreadcrumb"] = true,
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
					-- Temporary lockCriteria before Blizzard fix this (71146 got unflag for anyone who did it before 75444 when patch 10.0.7 went live)
					["lockCriteria"] = { 1, "questID", 75444 },	-- Continued Waygate Exploration
					["groups"]= {
						i(200590),	-- Carefully Rolled Message (QI!)
					},
				}),
				------ RENOWN 11 ------
				q(75444, {	-- Waygate Exploration: The Forbidden Reach
					["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 11 },	-- Dragonscale Expedition Renown 23
					["sourceQuest"] = 71146,	-- Continued Waygate Exploration
					["provider"] = { "n", 196643 },	-- Doc Nanners
					["DisablePartySync"] = true,
					["isBreadcrumb"] = true,
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
					["timeline"] = { ADDED_10_0_7 },
				}),
				------ RENOWN 15 ------
				q(71148, {	-- Continued Waygate Exploration
					["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 15 },	-- Dragonscale Expedition Renown 15
					["description"] = "Spawns Anywhere on Dragon Isles. \n\nIn order to complete all of the Doc Nanners |cffffff00Continued Waygate Exploration|r breadcrumbs, you MUST complete the Waygate Unlocks on one character. If you use Alts, the breadcrumbs will repeat, locking you out of the last few in the sequence, depending on the number of Waygates opened by an Alt.",
					["sourceQuests"] = {
						-- #if BEFORE 10.0.7
						71146,	-- Continued Waygate Exploration
						-- #else
						75444,	-- Waygate Exploration: The Forbidden Reach
						-- #endif
					},
					["provider"] = { "n", 196643 },	-- Doc Nanners
					["DisablePartySync"] = true,
					["isBreadcrumb"] = true,
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
					["groups"] = {
						i(200593),	-- Sealed Expedition Note (QI!)
					},
				}),
				------ RENOWN 17 ------
				q(71149, {	-- Continued Waygate Exploration
					["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 17 },	-- Dragonscale Expedition Renown 17
					["description"] = "Spawns Anywhere on Dragon Isles. \n\nIn order to complete all of the Doc Nanners |cffffff00Continued Waygate Exploration|r breadcrumbs, you MUST complete the Waygate Unlocks on one character. If you use Alts, the breadcrumbs will repeat, locking you out of the last few in the sequence, depending on the number of Waygates opened by an Alt.",
					["sourceQuest"] = 71148,	-- Continued Waygate Exploration
					["provider"] = { "n", 196643 },	-- Doc Nanners
					["DisablePartySync"] = true,
					["isBreadcrumb"] = true,
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
					["groups"] = {
						i(200594),	-- Thaelin's Second Favorite Comb
					},
				}),
				------ RENOWN 20 ------
				q(71150, {	-- Continued Waygate Exploration
					["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 20 },	-- Dragonscale Expedition Renown 20
					["description"] = "Spawns Anywhere on Dragon Isles. \n\nIn order to complete all of the Doc Nanners |cffffff00Continued Waygate Exploration|r breadcrumbs, you MUST complete the Waygate Unlocks on one character. If you use Alts, the breadcrumbs will repeat, locking you out of the last few in the sequence, depending on the number of Waygates opened by an Alt.",
					["sourceQuest"] = 71149,	-- Continued Waygate Exploration
					["provider"] = { "n", 196643 },	-- Doc Nanners
					["DisablePartySync"] = true,
					["isBreadcrumb"] = true,
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
					["groups"] = {
						i(200595),	-- Odorous Parchment (QI!)
					},
				}),
				------ RENOWN 23 ------
				q(71151, {	-- Continued Waygate Exploration
					["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 23 },	-- Dragonscale Expedition Renown 23
					["description"] = "Spawns Anywhere on Dragon Isles. \n\nIn order to complete all of the Doc Nanners |cffffff00Continued Waygate Exploration|r breadcrumbs, you MUST complete the Waygate Unlocks on one character. If you use Alts, the breadcrumbs will repeat, locking you out of the last few in the sequence, depending on the number of Waygates opened by an Alt.",
					["sourceQuest"] = 71150,	-- Continued Waygate Exploration
					["provider"] = { "n", 196643 },	-- Doc Nanners
					["DisablePartySync"] = true,
					["isBreadcrumb"] = true,
					["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
					["g"] = {
						i(200596),	-- Letter from Thaelin Darkanvil
					},
				}),
				q(75154, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_7 } }, {	-- Waygate: Morqut Islet
					-- TODO: ["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 23 },	-- Dragonscale Expedition Renown 23
					["sourceQuests"] = {
						75444,	-- Waygate Exploration: The Forbidden Reach
					},
					["provider"] = { "n", 189066 },	-- Thaelin Darkanvil
					["coord"] = { 47.2, 90.3, THE_WAKING_SHORES },
					["DisablePartySync"] = true,
					["g"] = {
						i(204438),	-- Enchanted Arcana Vessel
					},
				})),
			}),
		})),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(DRAGONSCALE_EXPEDITION, {
		n(ANCIENT_WAYGATES, {
			q(71183),	-- triggered together with 'Continued Waygate Exploration' (questID 70702) (spellID 390634)
			q(71185),	-- triggered together with 'Continued Waygate Exploration' (questID 71146) (spellID 390645)
			--q(71186),	-- triggered together with 'Continued Waygate Exploration' (questID ?) (spellID 390656)
			q(71187),	-- triggered together with 'Continued Waygate Exploration' (questID 71148) (spellID 390658)
			q(71188),	-- triggered together with 'Continued Waygate Exploration' (questID 71149) (spellID 390659)
			q(71189),	-- triggered together with 'Continued Waygate Exploration' (questID 71150) (spellID 390665)
			q(71190),	-- triggered together with 'Continued Waygate Exploration' (questID 71151) (spellID 390666)
			q(72744),	-- triggered together with 'Continued Waygate Exploration' (questID 71151) (spellID 390666)
			q(73864),	-- triggered when accepting 'Dormant Discovery' (questID 66595)
		}),
	}),
})));