---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(EASTERN_KINGDOMS, DEADWIND_PASS, {
	lore =
		"Deadwind Pass is a haunted forest and canyon on the edges of the Kingdom of Stormwind in the southern Eastern Kingdoms. Serving as borders between Duskwood and Swamp of Sorrows, evil magic can be felt all through the zone, the trees are all but dead, and very few wildlife and ogres can be found in the zone. Travelers are advised to go through the pass fast, as they might fall to the zone's foreboding magic.\n\nAlthough Deadwind Pass has no quests, the mobs there are tuned to level 50-60 players.\n\nTrivia:\nMedivh, the last Guardian, made Deadwind Pass his final place. The tower of Karazhan to the south served as his bastion until his final days.\n\nAlthough Karazhan is sealed off to players, the Karazhan Crypts can be explored by players who kill themselves and traverse the gates as a ghost. The crypt is filled to the brim with disturbing content, the most disturbing being a pool filled with human bodies hanged upside down and roped to chains. This area became known to players as the Upside-Down Sinners.",
	maps = {
		KARAZHAN,
	},
	icon = 236741,
	groups = {
		n(ACHIEVEMENTS, {
			ach(777),	-- Explore Deadwind Pass
		}),
		explorationHeader({
			visit_exploration(2560,{coord={52.6,36.8,DEADWIND_PASS}}),	-- Ariden's Camp
			exploration(2697),	-- Deadman's Crossing
			exploration(2562),	-- Karazhan
			visit_exploration(7971,{coord={46.7,69.0,DEADWIND_PASS}}),	-- Karazhan Catacombs
			exploration(2938),	-- Sleeping Gorge
			exploration(2561),	-- The Vice
		}),
		n(QUESTS, {
			applyclassicphase(SOD_PHASE_TWO, q(80120, {	-- A Service to Dalaran
				sourceQuests = {
					80148,	-- Curious Dalaran Relic [Arathi Highlands]
					80152,	-- Curious Dalaran Relic [Badlands]
					80098,	-- Curious Dalaran Relic [Deadwind Pass]
					80151,	-- Curious Dalaran Relic [Desolace]
					80147,	-- Curious Dalaran Relic [Duskwood]
					80149,	-- Curious Dalaran Relic [Swamp of Sorrows]
					80150,	-- Curious Dalaran Relic [The Barrens]
				},
				qg = 218920,	-- Dalaran Agent <Violet Eye>
				coord = { 52.0, 34.2, DEADWIND_PASS },
				groups = {
					i(217014, {	-- Supply Bag
						i(213144, {	-- Luminous Epiphany
							classes = { PRIEST },
							groups = {
								recipe(425312),	-- Engrave Boots - Spirit of the Redeemer
							},
						}),
						i(213124, {	-- Rune of Close Combat
							classes = { HUNTER },
							groups = {
								recipe(416086),	-- Engrave Belt - Melee Specialist
							},
						}),
						i(213100, {	-- Rune of Forbidden Knowledge
							classes = { WARLOCK },
							groups = {
								recipe(416014),	-- Engrave Boots - Demonic Knowledge
							},
						}),
						i(213130, {	-- Rune of Infusions
							classes = { PALADIN },
							groups = {
								recipe(426180),	-- Engrave Belt - Infusion of Light
							},
						}),
						i(213104, {	-- Rune of Ruthless Precision
							classes = { WARRIOR },
							groups = {
								recipe(416005),	-- Engrave Belt - Precise Timing
							},
						}),
						i(213137, {	-- Rune of the Assailant
							classes = { ROGUE },
							groups = {
								recipe(415926),	-- Engrave Boots - Waylay
							},
						}),
						i(213118, {	-- Rune of the Jungle King
							classes = { DRUID },
							groups = {
								recipe(424765),	-- Engrave Boots - King of the Jungle
							},
						}),
						i(216606, {	-- Rune of Two-Handed Mastery
							classes = { SHAMAN },
							groups = {
								recipe(436368),	-- Engrave Chest - Two-Handed Mastery
							},
						}),
						i(213112, {	-- Spell Notes: Missile Barrage
							classes = { MAGE },
							groups = {
								recipe(401763),	-- Engrave Belt - Missile Barrage
							},
						}),
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_TWO, q(80148, {	-- Curious Dalaran Relic [Arathi Highlands]
				-- sourceQuest = ,	--
				providers = {
					{ "i", 216947 },	-- Whirring Dalaran Relic
					{ "n", 218920 },	-- Dalaran Agent <Violet Eye>
				},
				coord = { 52.0, 34.2, DEADWIND_PASS },
				maps = { ARATHI_HIGHLANDS },
			})),
			applyclassicphase(SOD_PHASE_TWO, q(80152, {	-- Curious Dalaran Relic [Badlands]
				-- sourceQuest = ,	--
				providers = {
					{ "i", 216951 },	-- Slippery Dalaran Relic
					{ "n", 218920 },	-- Dalaran Agent <Violet Eye>
				},
				coord = { 52.0, 34.2, DEADWIND_PASS },
				maps = { BADLANDS },
			})),
			applyclassicphase(SOD_PHASE_TWO, q(80098, {	-- Curious Dalaran Relic [Deadwind Pass]
				-- sourceQuest = ,	--
				providers = {
					{ "i", 216945 },	-- Curious Dalaran Relic
					{ "n", 218920 },	-- Dalaran Agent <Violet Eye>
				},
				coord = { 52.0, 34.2, DEADWIND_PASS },
			})),
			applyclassicphase(SOD_PHASE_TWO, q(80151, {	-- Curious Dalaran Relic [Desolace]
				-- sourceQuest = ,	--
				providers = {
					{ "i", 216950 },	-- Creepy Dalaran Relic
					{ "n", 218920 },	-- Dalaran Agent <Violet Eye>
				},
				coord = { 52.0, 34.2, DEADWIND_PASS },
				maps = { DESOLACE },
			})),
			applyclassicphase(SOD_PHASE_TWO, q(80147, {	-- Curious Dalaran Relic [Duskwood]
				-- sourceQuest = ,	--
				providers = {
					{ "i", 216946 },	-- Glittering Dalaran Relic
					{ "n", 218920 },	-- Dalaran Agent <Violet Eye>
				},
				coord = { 52.0, 34.2, DEADWIND_PASS },
				maps = { DUSKWOOD },
			})),
			applyclassicphase(SOD_PHASE_TWO, q(80149, {	-- Curious Dalaran Relic [Swamp of Sorrows]
				-- sourceQuest = ,	--
				providers = {
					{ "i", 216948 },	-- Odd Dalaran Relic
					{ "n", 218920 },	-- Dalaran Agent <Violet Eye>
				},
				coord = { 52.0, 34.2, DEADWIND_PASS },
				maps = { SWAMP_OF_SORROWS },
			})),
			applyclassicphase(SOD_PHASE_TWO, q(80150, {	-- Curious Dalaran Relic [The Barrens]
				-- sourceQuest = ,	--
				providers = {
					{ "i", 216949 },	-- Heavy Dalaran Relic
					{ "n", 218920 },	-- Dalaran Agent <Violet Eye>
				},
				coord = { 52.0, 34.2, DEADWIND_PASS },
				maps = { THE_BARRENS },
			})),
		}),
		n(RARES, {
			applyclassicphase(SOD_PHASE_TWO, n(218931, {	-- Dark Rider
				provider = { "i", 216941 },	-- Ariden's Sigil
				coord = { 43.0, 29.0, DEADWIND_PASS },
				groups = {
					i(216945),	-- Curious Dalaran Relic
				},
			})),
		}),
		n(TREASURES, {
			applyclassicphase(SOD_PHASE_FOUR, i(226406, {	-- Rune of Sword Specialization
				provider = { "o", 457088 },	-- Advanced Swordplay
				coord = { 43.1, 74.6, DEADWIND_PASS },
				timeline = { ADDED_1_15_3 },
				classes = { WARRIOR, PALADIN, HUNTER, MAGE, WARLOCK, ROGUE },
				groups = {
					recipe(453635, {	-- Engrave Ring - Sword Specialization
						classes = { WARRIOR, PALADIN, HUNTER, MAGE, WARLOCK, ROGUE },
					}),
				},
			})),
		}),
		n(VENDORS, {
			applyclassicphase(SOD_PHASE_TWO, n(218920, {	-- Dalaran Agent <Violet Eye>
				coord = { 52.0, 34.2, DEADWIND_PASS },
				groups = {
					-- TODO: This might be a quest, gonna need to see if it triggers a questID when you talk to them.
					i(216941),	-- Ariden's Sigil
				},
			})),
		}),
		n(ZONE_DROPS, {
			i(16246, {	-- Formula: Enchant Bracer - Superior Strength (RECIPE!)
				cr = 7372,	-- Deadwind Warlock
			}),
		}),
	},
});
