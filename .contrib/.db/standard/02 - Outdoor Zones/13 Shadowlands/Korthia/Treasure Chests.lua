---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_1_0 } }, {
	m(KORTHIA, {
		n(TREASURES, {
			n(REWARDS, {
				i(187055),	-- Pouch of Rune Chits (QI!)
				i(185962),	-- Rune Chit
			}),
			o(369194, {	-- Anima Laden Egg
				["description"] = "In a tree.",
				["coord"] = { 29.5, 53.5, KORTHIA },
				["questID"] = 64244,
			}),
			o(369183, {	-- Dislodged Nest
				["description"] = "Find and click one of the sparkling |cFFFFFFFFNoxious Moths|r in Mauler's Outlook. There is a |cFFFFFFFFPrecarious Silk Nest|r stuck in the branches of a tree. Use the Extra Action Button ability granted by the moth to ride a Shardhide into the tree to dislodge the nest.",
				["coord"] = { 47.5, 29.2, KORTHIA },
				["questID"] = 64241,
				["groups"] = {
					i(187339),	-- Silver Shardhide Whistle (TOY!)
				},
			}),
			o(369204, {	-- Displaced Relic
				["description"] = "The coordinates provided are for the start of the path to the treasure. Walk and jump along the floating debris until you reach it.",
				["coord"] = { 47.4, 78.3, KORTHIA },
				["questID"] = 64252,
				["groups"] = {
					i(187350),	-- Displaced Relic
				},
			}),
			o(369149, {	-- Forgotten Feather
				["description"] = "Use a |cFFFFFFFFGoblin Glider|r at |cFFFFFFFF63.8, 28.9|r to access the island.",
				["coord"] = { 68.9, 29.9, KORTHIA },
				["questID"] = 64234,
				["groups"] = {
					i(187051),	-- Forgotten Feather (TOY!)
				},
			}),
			o(369148, {	-- Glittering Nest Material
				["coord"] = { 38.3, 42.8, KORTHIA },
				["questID"] = 64222,
			}),
			o(369225, {	-- Infested Vestige
				["description"] = "At the back of the cave.",
				["coord"] = { 40.1, 59.0, KORTHIA },
				["questID"] = 64264,
				["groups"] = {
					i(187354),	-- Abandoned Broker Satchel
				},
			}),
			o_repeated({	-- Invasive Mawshroom
				-- Contains
				i(186990),	-- Recipe: Blossom Burst (RECIPE!)
				i(186988),	-- Recipe: Glory Burst (RECIPE!)
				i(186989),	-- Recipe: Marrow Burst (RECIPE!)
				i(186987),	-- Recipe: Torch Burst (RECIPE!)
				i(186986),	-- Recipe: Widow Burst (RECIPE!)
				i(187244),	-- Questionable Mawshrooms
				i(187153),	-- Tasty Mawshroom
				-- Objects
				o(369327, {	-- Invasive Mawshroom
					["coords"] = {
						{ 54.2, 41.2, KORTHIA },
						{ 56.8, 51.5, KORTHIA },
						{ 57.3, 39.4, KORTHIA },
						{ 58.2, 40.5, KORTHIA },
						{ 60.3, 41.6, KORTHIA },
						{ 60.7, 38.2, KORTHIA },
					},
					["questID"] = 64351,
					["isDaily"] = true,
				}),
				o(369329, {	-- Invasive Mawshroom
					["coords"] = {
						{ 48.5, 41.2, KORTHIA },
						{ 49.4, 40.7, KORTHIA },
						{ 49.5, 31.7, KORTHIA },
						{ 49.9, 32.5, KORTHIA },
						{ 51.4, 46.8, KORTHIA },
						{ 53.7, 37.9, KORTHIA },
					},
					["questID"] = 64354,
					["isDaily"] = true,
				}),
				o(369330, {	-- Invasive Mawshroom
					["coords"] = {
						{ 42.1, 35.8, KORTHIA },
						{ 42.3, 34.6, KORTHIA },
						{ 43.6, 36.6, KORTHIA },
						{ 45.6, 34.3, KORTHIA },
						{ 52.4, 25.0, KORTHIA },
						{ 55.1, 16.4, KORTHIA },
					},
					["questID"] = 64355,
					["isDaily"] = true,
				}),
				o(369331, {	-- Invasive Mawshroom
					["coords"] = {
						{ 35.7, 31.1, KORTHIA },
						{ 37.4, 34.7, KORTHIA },
						{ 38.8, 33.8, KORTHIA },
						{ 39.5, 30.7, KORTHIA },
						{ 39.7, 34.8, KORTHIA },
						{ 42.0, 32.5, KORTHIA },
					},
					["questID"] = 64356,
					["isDaily"] = true,
				}),
				o(369332, {	-- Invasive Mawshroom
					["coords"] = {
						{ 39.6, 30.0, KORTHIA },
						{ 41.2, 44.9, KORTHIA },
						{ 43.4, 56.3, KORTHIA },
						{ 45.2, 47.9, KORTHIA },
						{ 46.5, 48.5, KORTHIA },
						{ 54.8, 55.5, KORTHIA },
					},
					["questID"] = 64357,
					["isDaily"] = true,
				}),
			}),
			o(369185, {	-- Korthian Relic Box
				["description"] = "In the cave.",
				["coord"] = { 41.2, 43.2, KORTHIA },
				["cost"] = { { "i", 186984, 1 } },	-- Korthite Crystal Key
				["groups"] = {
					i(187047),	-- Guise of the Changeling
				},
			}),
			o(369245, {	-- Korthian Relic Box
				["description"] = "On the edge of the lower cliff.",
				["coord"] = { 33.0, 41.9, KORTHIA },
				["cost"] = { { "i", 187612, 1 } },	-- Key of Flowing Waters
				["groups"] = {
					i(187052),	-- The Netherstar
				},
			}),
			o(369304, {	-- Korthian Relic Box
				["coord"] = { 43.8, 76.9, KORTHIA },
				["cost"] = { { "i", 187613, 1 } },	-- Key of the Inner Chambers
				["groups"] = {
					i(187119),	-- Ring of Self Reflection
				},
			}),
			o(369340, {	-- Korthian Relic Box
				["description"] = "In the cave.",
				["coord"] = { 43.5, 57.4, KORTHIA },
				["cost"] = { { "i", 187614, 1 } },	-- Key of Many Thoughts
				["groups"] = {
					i(187150),	-- Gorak Claw Fetish
				},
			}),
			o(369172, {	-- Lost Memento
				["coord"] = { 52.9, 14.7, KORTHIA },
				["questID"] = 64238,
				["groups"] = {
					i(187346),	-- Lost Memento
				},
			}),
			o_repeated({	-- Mawsworn Cache
				-- Contains
				i(187097),	-- Construct's Shoulderplates
				i(187016),	-- Eviscerator's Spiked Mantle
				i(187026),	-- Field Warden's Torture Kit
				i(187240),	-- Field Warden's Watchful Eye
				i(187023),	-- Instructor's Mantle
				i(187013),	-- Interceptor's Pauldrons
				i(187011),	-- Mawsworn Enforcer's Shoulder-Spires
				i(187022),	-- Mawsworn Lieutenant's Shoulderguards
				i(187020),	-- Necrobinder's Shoulderpads
				i(187024),	-- Necromancer's Mantle
				i(187021),	-- Punisher's Spiked Mantle
				i(187018),	-- Ritualist's Shoulder-Scythes
				i(187431),	-- Sleeping Armament
				i(187017),	-- Brutalizer's Mantle
				i(187019),	-- Infiltrator's Shoulderguards
				-- Objects
				o(368876, {	-- Mawsworn Cache
					["coords"] = {
						{ 57.6, 37.6, KORTHIA },
						{ 58.8, 33.6, KORTHIA },
						{ 60.2, 39.1, KORTHIA },
						{ 62.9, 34.9, KORTHIA },
					},
					["questID"] = 64021,
					["isDaily"] = true,
				}),
				o(369339, {	-- Mawsworn Cache
					["coords"] = {
						{ 56.8, 56.1, KORTHIA },
						{ 58.3, 52.8, KORTHIA },
						{ 61.1, 51.6, KORTHIA },
						{ 61.2, 57.9, KORTHIA },
						{ 62.3, 58.6, KORTHIA },
					},
					["questID"] = 64363,
					["isDaily"] = true,
				}),
				o(369341, {	-- Mawsworn Cache
					["coords"] = {
						{ 43.1, 31.4, KORTHIA },
						{ 47.7, 74.3, KORTHIA },
						{ 51.3, 64.7, KORTHIA },
						{ 54.0, 72.8, KORTHIA },
						{ 56.4, 69.5, KORTHIA },
						{ 56.5, 74.7, KORTHIA },
						{ 47.9, 66.8, KORTHIA },
					},
					["questID"] = 64364,
					["isDaily"] = true,
				}),
			}),
			o_repeated({	-- Nest of Unusual Materials
				-- Contains
				i(187440, {	-- Feather-Stuffed Helm
					i(185858),	-- Korthian Caretaker's Crest
					i(186666),	-- Korthian Caretaker's Crown
					i(185871),	-- Razorwing Scale Coif
					-- i(186743),	-- Razorwing Scale Hood
					i(186736),	-- Shardhide Leather Cowl
					i(185864),	-- Shardhide Leather Hood
					i(185876),	-- Vault Guardian's Helm
					i(186748),	-- Vault Guardian's Visor
				}),
				i(187442),	-- Scholar's Ancient Pack
				i(187008),	-- Recipe: Porous Rock Candy (RECIPE!)
				-- Objects
				o(369333, {	-- Nest of Unusual Materials
					["coord"] = { 41.0, 39.7, KORTHIA },
					["questID"] = 64358,
					["isDaily"] = true,
				}),
				o(369334, {	-- Nest of Unusual Materials
					["coord"] = { 42.2, 55.9, KORTHIA },
					["questID"] = 64359,
					["isDaily"] = true,
				}),
				o(369335, {	-- Nest of Unusual Materials
					["description"] = "Climb across the tree to reach the nest.",
					["coord"] = { 52.4, 43.8, KORTHIA },
					["questID"] = 64360,
					["isDaily"] = true,
				}),
				o(369336, {	-- Nest of Unusual Materials
					["coord"] = { 63.7, 31.4, KORTHIA },
					["questID"] = 64361,
					["isDaily"] = true,
				}),
				o(369337, {	-- Nest of Unusual Materials
					["coord"] = { 52.3, 72.7, KORTHIA },
					["questID"] = 64362,
					["isDaily"] = true,
				}),
			}),
			o(369232, {	-- Offering Box
				["description"] = "To open the treasure, climb up the outside of the building and loot the |cFFFFFFFFSmall Offering Key|r at |cFFFFFFFF43.5 67.5|r.",
				["coord"] = { 45.3, 67.1, KORTHIA },
				["questID"] = 64268,
				["cost"] = { { "i", 187033, 1 } },	-- Small Offering Key
				["groups"] = {
					i(187344, {	-- Offering Kit Maker (TOY!)
						i(187342),	-- Offering Preparation Kit
					});
				},
			}),
			o(369234, {	-- Offering Key
				["coord"] = { 43.6, 67.4, KORTHIA },
				["groups"] = {
					i(187033),	-- Small Offering Key
				},
			}),
			o(369297, {	-- Pile of Bones
				["description"] = "Piles of Bones, Relic Caches, and Shardhide Stashes all share a series of 5 daily quests.\n\nThe daily lockout is ONLY for receiving Relic Fragments - you can still loot the treasures after the final quest is collected for the day; you just won't receive any fragments.",
				["providers"] = {
					{ "o", 369295 },	-- Pile of Bones
				},
				["coords"] = {
					{ 27.2, 48.3, KORTHIA },
					{ 28.2, 50.7, KORTHIA },
					{ 28.5, 54.9, KORTHIA },
					{ 29.3, 47.1, KORTHIA },
					{ 29.5, 53.4, KORTHIA },
					{ 30.9, 45.7, KORTHIA },
					{ 31.4, 60.0, KORTHIA },
					{ 32.7, 42.0, KORTHIA },
					{ 32.8, 45.3, KORTHIA },
					{ 32.8, 55.1, KORTHIA },
					{ 34.1, 44.0, KORTHIA },
					{ 34.5, 56.8, KORTHIA },
					{ 34.7, 45.8, KORTHIA },
					{ 37.1, 53.7, KORTHIA },
					{ 38.2, 51.7, KORTHIA },
					{ 39.0, 54.7, KORTHIA },
					{ 39.6, 50.2, KORTHIA },
					{ 41.0, 50.5, KORTHIA },
					{ 44.6, 75.8, KORTHIA },
					{ 49.2, 54.5, KORTHIA },
				},
				["groups"] = {
					i(186999),	-- Pattern: Pallid Bone Flute (RECIPE!)
					i(187007),	-- Recipe: Bonemeal Bread (RECIPE!)
					i(187442),	-- Scholar's Ancient Pack
				},
			}),
			o(369292, {	-- Relic Cache
				["description"] = "Piles of Bones, Relic Caches, and Shardhide Stashes all share a series of 5 daily quests.\n\nThe daily lockout is ONLY for receiving Relic Fragments - you can still loot the treasures after the final quest is collected for the day; you just won't receive any fragments.",
				["providers"] = {
					{ "o", 369292 },	-- Relic Cache
					{ "o", 369294 },	-- Relic Cache
					{ "o", 369310 },	-- Relic Cache
				},
				["coords"] = {
					{ 44.0, 56.0, KORTHIA },
					{ 44.4, 77.3, KORTHIA },
					{ 45.3, 49.5, KORTHIA },
					{ 45.6, 81.4, KORTHIA },
					{ 46.3, 56.7, KORTHIA },
					{ 46.4, 49.7, KORTHIA },
					{ 47.2, 76.8, KORTHIA },
					{ 48.8, 52.1, KORTHIA },
					{ 50.6, 67.1, KORTHIA },
					{ 53.9, 76.1, KORTHIA },
					{ 54.2, 72.3, KORTHIA },
					{ 54.9, 50.2, KORTHIA },
					{ 55.3, 65.1, KORTHIA },
					{ 55.8, 37.3, KORTHIA },
					{ 56.3, 67.6, KORTHIA },
					{ 56.5, 55.0, KORTHIA },
					{ 56.8, 38.8, KORTHIA },
					{ 57.3, 34.9, KORTHIA },
					{ 57.3, 48.0, KORTHIA },
					{ 57.6, 49.8, KORTHIA },
					{ 58.8, 33.6, KORTHIA },
					{ 59.8, 35.9, KORTHIA },
					{ 60.3, 39.0, KORTHIA },
					{ 60.8, 35.0, KORTHIA },
					{ 61.0, 32.9, KORTHIA },
					{ 61.4, 38.1, KORTHIA },
					{ 62.4, 37.5, KORTHIA },
				},
				["groups"] = {
					i(186993),	-- Design: Porous Stone Statue (RECIPE!)
				},
			}),
			o(369296, {	-- Shardhide Stash
				["description"] = "Piles of Bones, Relic Caches, and Shardhide Stashes all share a series of 5 daily quests.\n\nThe daily lockout is ONLY for receiving Relic Fragments - you can still loot the treasures after the final quest is collected for the day; you just won't receive any fragments.",
				["coords"] = {
					{ 45.8, 30.1, KORTHIA },
					{ 46.7, 30.6, KORTHIA },
					{ 47.4, 26.2, KORTHIA },
					{ 48.1, 33.2, KORTHIA },
					{ 49.1, 30.1, KORTHIA },
					{ 49.5, 26.7, KORTHIA },
					{ 49.7, 33.3, KORTHIA },
					{ 50.4, 31.1, KORTHIA },
					{ 51.3, 29.7, KORTHIA },
					{ 52.3, 27.0, KORTHIA },
				},
				["groups"] = {
					i(187442),	-- Scholar's Ancient Pack
				},
			}),
			o(369200, {	-- Spectral Bound Chest
				["description"] = "Requires collecting three |cFFFFFFFFSpectral Keys|r. Use your preferred method of daily quest tracking to see the locations of the keys.",
				["isDaily"] = true,
				["questID"] = 64247,
				["coord"] = { 62.1, 55.4, KORTHIA },
				["sourceQuests"] = {
					64248,	-- Spectral Key
					64249,	-- Spectral Key
					64250,	-- Spectral Key
				},
				["groups"] = {
					o(369290, {	-- Spectral Key
						["questID"] = 64249,
						["isDaily"] = true,
						["coords"] = {
							{ 50.5, 53.7, KORTHIA },	-- next to a large bush
							{ 52.3, 53.2, KORTHIA },	-- between the two large rocks
							{ 52.6, 49.7, KORTHIA },	-- next to the building on top of a flat rock
							{ 54.2, 50.6, KORTHIA },	-- inside the building
						},
					}),
					o(369291, {	-- Spectral Key
						["questID"] = 64250,
						["isDaily"] = true,
						["coords"] = {
							{ 59.2, 56.7, KORTHIA },	-- next to a bush
							{ 60.3, 56.5, KORTHIA },	-- next to the anima pool
							{ 61.0, 58.7, KORTHIA },	-- behind the building
							{ 62.1, 57.7, KORTHIA },	-- hidden in a bush between two trees
						},
					}),
					o(369289, {	-- Spectral Key
						["questID"] = 64248,
						["isDaily"] = true,
						["coords"] = {
							{ 57.5, 49.3, KORTHIA },	-- next to a leaning pillar
							{ 59.1, 48.7, KORTHIA },	-- north side of the chain
							{ 59.2, 56.7, KORTHIA },	-- by a bush
							{ 61.5, 47.3, KORTHIA },	-- on the ground sort of disguised by similarly-colored anima vein
							{ 62.8, 51.4, KORTHIA },	-- next to a cage, between two packs of mawrats
						},
					}),
					i(187016),	-- Eviscerator's Spiked Mantle
					i(187026),	-- Field Warden's Torture Kit
					i(187240),	-- Field Warden's Watchful Eye
					i(187023),	-- Instructor's Mantle
					i(187020),	-- Necrobinder's Shoulderpads
					i(187097),	-- Construct's Shoulderplates
					i(187015),	-- Soulfeeder's Shoulderguards
				},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {
	m(SHADOWLANDS, {
		m(KORTHIA, {
			n(TREASURES, {
				q(64316),	-- 1st loot of shared treasure in Korthia (Pile of Bones, Relic Cache, Shardhide Stash)
				q(64317),	-- 2nd loot of shared treasure in Korthia (Pile of Bones, Relic Cache, Shardhide Stash)
				q(64318),	-- 3rd loot of shared treasure in Korthia (Pile of Bones, Relic Cache, Shardhide Stash)
				q(64564),	-- 4th loot of shared treasure in Korthia (Pile of Bones, Relic Cache, Shardhide Stash) - this # loot used to be 64309, but they changed it at some point on PTR
				q(64565),	-- not 100% sure what specifically triggers this, but it's not the objects linked
				q(64310, name(HEADERS.Item, 186731)),	-- looting a Repaired Riftkey (also pops when looting one from rares)
				q(64311, name(HEADERS.Item, 186718)),	-- looting a Teleporter Repair Kit (also pops looting one from rares)
				q(64700, name(HEADERS.Item, 187328)),	-- looting 100-research item Ripped Cosmology Chart
				q(64702, name(HEADERS.Item, 187462)),	-- looting 48-research item Scroll of Shadowlands Fables
				q(64705),	-- looting 150-research item from a treasure
				q(64787, name(HEADERS.Object, 369297)),	-- Pile of Bones repeatable quest
				q(64788, name(HEADERS.Object, 369297)),	-- Pile of Bones repeatable quest (37.1, 53.6)
				q(64789, name(HEADERS.Object, 369296)),	-- Shardhide Stash repeatable quest (49.6, 26.8; 50.4, 31.2)
				q(64790, name(HEADERS.Object, 369292)),	-- Relic Cache repeatable quest (59.8, 36.0; 61.4, 38.1)
				q(64791, name(HEADERS.Object, 369292)),	-- Relic Cache repeatable quest
				q(64792, name(HEADERS.Object, 369292)),	-- Relic Cache repeatable quest
			}),
		}),
	}),
})));
