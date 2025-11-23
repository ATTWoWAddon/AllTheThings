-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, applyclassicphase(MOP_PHASE_ONE, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	header(HEADERS.Faction, FACTION_THE_ANGLERS, {
		["description"] = "The Anglers are a group of Pandaren fishermen that hope to feed their people and grow their knowledge of fishing.",
		["maps"] = { KRASARANG_WILDS },
		["icon"] = 643874,
		["lvl"] = lvlsquish(85, 85, 10),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(7274, {	-- Learning From The Best
					i(86596),	-- Nat's Fishing Chair (TOY!)
				}),
				ach(7614),	-- Locking Down the Docks (automated)
				ach(6547),	-- The Anglers
			}),
			n(FACTIONS, {
				faction(FACTION_THE_ANGLERS, {	-- The Anglers
					["icon"] = 643874,
				}),
				faction(FACTION_NAT_PAGLE, {	-- Nat Pagle
					["provider"] = { "n", 63721 },	-- Nat Pagle <The Anglers Quartermaster>
					["coord"] = { 68.4, 43.5, KRASARANG_WILDS },
					["icon"] = 88710,
				}),
			}),
			n(QUESTS, {	-- Daily Quests
				q(30613, {	-- Armored Carp
					["qg"] = 60135,	-- Trawler Yotimo
					["coord"] = { 70.9, 39.0, KRASARANG_WILDS },
					["requireSkill"] = FISHING,
					["isDaily"] = true,
					["groups"] = {
						i(80403),	-- Angler's Fishing Spear (QI!)
						i(80437),	-- Armored Carp (QI!)
					},
				}),
				q(30754, {	-- Bright Bait
					["qg"] = 60674,	-- John "Big Hook" Marsock
					["coord"] = { 71.6, 40.0, KRASARANG_WILDS },
					["requireSkill"] = FISHING,
					["isDaily"] = true,
					["groups"] = {
						i(81116),	-- Suncrawler (QI!)
					},
				}),
				q(30588, {	-- Fishing for a Bruising
					["qg"] = 59586,	-- Angler Shen
					["coord"] = { 70.8, 40.1, KRASARANG_WILDS },
					["requireSkill"] = FISHING,
					["isDaily"] = true,
				}),
				q(30658, {	-- Huff & Puff
					["qg"] = 60135,	-- Trawler Yotimo
					["coord"] = { 70.9, 39.0, KRASARANG_WILDS },
					["requireSkill"] = FISHING,
					["isDaily"] = true,
					["groups"] = {
						i(80403),	-- Angler's Fishing Spear (QI!)
						i(80529),	-- Prickly Puffer Spine (QI!)
					},
				}),
				q(30586, {	-- Jagged Abalone
					["qg"] = 59584,	-- Fisherman Haito
					["coord"] = { 71.2, 41.9, KRASARANG_WILDS },
					["requireSkill"] = FISHING,
					["isDaily"] = true,
					["groups"] = {
						i(80277),	-- Jagged Abalone Meat (QI!)
					},
				}),
				q(30753, {	-- Jumping the Shark
					["qg"] = 60674,	-- John "Big Hook" Marsock
					["coord"] = { 71.6, 40.0, KRASARANG_WILDS },
					["requireSkill"] = FISHING,
					["isDaily"] = true,
				}),
				q(30678, {	-- Like Bombing Fish In A Barrel
					["qg"] = 60136,	-- Fiznix
					["coord"] = { 70.8, 41.3, KRASARANG_WILDS },
					["requireSkill"] = FISHING,
					["isDaily"] = true,
					["groups"] = {
						i(80599),	-- Goblin Fishing Bomb (QI!)
						i(80600),	-- Stinger (QI!)
					},
				}),
				q(30763, {	-- Piranha!
					["qg"] = 60675,	-- Fo Fook
					["coord"] = { 70.5, 37.5, KRASARANG_WILDS },
					["requireSkill"] = FISHING,
					["isDaily"] = true,
					["groups"] = {
						i(81122),	-- Wolf Piranha (QI!)
					},
				}),
				q(30698, {	-- Scavenger Hunt
					["qg"] = 60136,	-- Fiznix
					["coord"] = { 70.8, 41.3, KRASARANG_WILDS },
					["requireSkill"] = FISHING,
					["isDaily"] = true,
					["groups"] = {
						i(80830),	-- Rusty Shipwreck Debris (QI!)
					},
				}),
				q(30584, {	-- Shocking!
					["qg"] = 59584,	-- Fisherman Haito
					["coord"] = { 71.2, 41.8, KRASARANG_WILDS },
					["requireSkill"] = FISHING,
					["isDaily"] = true,
					["groups"] = {
						i(80260),	-- Dojani Eel (QI!)
						i(81175),	-- Crispy Dojani Eel
					},
				}),
				q(30700, {	-- Snapclaw
					["qg"] = 59586,	-- Angler Shen
					["coord"] = { 70.8, 40.2, KRASARANG_WILDS },
					["requireSkill"] = FISHING,
					["isDaily"] = true,
					["groups"] = {
						i(80831),	-- Snapclaw's Claw (QI!)
					},
				}),
				q(30701, {	-- Viseclaw Soup
					["qg"] = 60675,	-- Fo Fook
					["coord"] = { 70.5, 37.5, KRASARANG_WILDS },
					["requireSkill"] = FISHING,
					["isDaily"] = true,
					["groups"] = {
						i(80832),	-- Viseclaw Fisher Eye (QI!)
					},
				}),
				q(30585, {	-- What Lurks Below
					["qg"] = 60673,	-- Elder Fisherman Rassan
					["coord"] = { 71.7, 38.7, KRASARANG_WILDS },
					["requireSkill"] = FISHING,
					["isDaily"] = true,
					["groups"] = {
						i(80262),	-- Beloved Ring (QI!)
					},
				}),
				q(30598, {	-- Who Knew Fish Liked Eggs?
					["qg"] = 60673,	-- Elder Fisherman Rassan
					["coord"] = { 71.6, 38.6, KRASARANG_WILDS },
					["requireSkill"] = FISHING,
					["isDaily"] = true,
					["groups"] = {
						i(80303),	-- Pristine Crane Egg (QI!)
						i(80310),	-- Silver Goby (QI!)
					},
				}),
			}),
			n(QUESTS, {	-- Nat Pagle Repeatable Quests
				q(31664, {	-- An Angler's Quest
					["provider"] = { "i", 88563 },	-- Nat's Fishing Journal
					["collectible"] = false,
					["repeatable"] = true,
				}),
				q(31443, {	-- Flying Tiger Gourami
					["description"] = "Found while fishing in any inland body of water on Pandaria.\n\n",
					["provider"] = { "i", 86542 },	-- Flying Tiger Gourami
					["requireSkill"] = FISHING,
					["isDaily"] = true,
				}),
				q(31446, {	-- Mimic Octopus
					["description"] = "Found while fishing in any inland body of water on Pandaria.",
					["provider"] = { "i", 86545 },	-- Mimic Octopus
					["requireSkill"] = FISHING,
					["isDaily"] = true,
				}),
				q(31444, {	-- Spinefish Alpha
					["description"] = "Found while fishing in inland water near Sha-touched land.",
					["provider"] = { "i", 86544 },	-- Spinefish Alpha
					["requireSkill"] = FISHING,
					["isDaily"] = true,
				}),
			}),
			n(RARES, {
				n(70323, {	-- Krakkanon
					["description"] = "Fished out of the daily Pandaria fishing holes.",
					["coords"] = {
						{ 26.4, 16.0, DREAD_WASTES },
						{ 33.2, 33.2, KRASARANG_WILDS },
						{ 34.2, 44.2, KUN_LAI_SUMMIT },
						{ 73.4, 86.4, KUN_LAI_SUMMIT },
						{ 50.8, 20.8, THE_JADE_FOREST },
						{ 55.8, 21.4, THE_JADE_FOREST },
						{ 47.6, 54.8, TIMELESS_ISLE },
						{ 35.6, 53.0, TOWNLONG_STEPPES },
						{ 37.2, 70.6, VALLEY_OF_THE_FOUR_WINDS },
					},
					["groups"] = {
						i(88563),	-- Nat's Fishing Journal
					},
				}),
			}),
			n(VENDORS, {
				n(63721, {	-- Nat Pagle <The Anglers Quartermaster>
					["coord"] = { 68.4, 43.5, KRASARANG_WILDS },
					["groups"] = appendGroups(MOP_FISHING, {
						i(86596, {	-- Nat's Fishing Chair (TOY!)
							["minReputation"] = { FACTION_NAT_PAGLE, 6 },	-- Nat Pagle, Best Friend.
						}),
						i(88710, {	-- Nat's Hat
							["minReputation"] = { FACTION_NAT_PAGLE, 6 },	-- Nat Pagle, Best Friend.
						}),
					}, bubbleDownClassicRep(FACTION_THE_ANGLERS, {
						{		-- Neutral
							i(168416, {	-- Angler's Water Striders
								["timeline"] = { ADDED_8_2_0 },
							}),
						}, {	-- Friendly
							i(85505),	-- Recipe: Krasarang Fritters (RECIPE!)
							i(85502),	-- Recipe: Viseclaw Soup (RECIPE!)
						}, {	-- Honored
							i(84660),	-- Pandaren Fishing Pole
							i(85447),	-- Tiny Goldfish (PET!)
						}, {	-- Revered
							i(85500, {	-- Angler's Fishing Raft (TOY!)
								["cost"] = 8500000,	-- 850g
							}),
							i(107950, {	-- Bipsi's Bobbing Berg
								["classes"] = { MAGE },
								["cost"] = 10000000,	-- 1,000g
							}),
							i(84661),	-- Dragon Fishing Pole
							i(93225),	-- Grand Commendation of the Anglers
							i(88535, {	-- Sharpened Tuskarr Pole
								["cost"] = 12750000,	-- 1,275g
							}),
						}, {	-- Exalted
							i(89401),	-- Angler's Tabard
							i(81354, {	-- Azure Water Strider (MOUNT!)
								["cost"] = 9500000,	-- 950g
							}),
						},
					})),
				}),
			}),
		},
	}),
}))));

--[[
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	header(HEADERS.Faction, FACTION_THE_ANGLERS, {
		n(QUESTS, {
			q(31371),	-- Tracking Event: Player Has Completed One Anglers Daily
		}),
	}),
})));
]]--
