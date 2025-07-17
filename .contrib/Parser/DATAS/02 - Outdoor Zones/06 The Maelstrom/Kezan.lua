---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(THE_MAELSTROM, {
		m(KEZAN, {
			["lore"] = "The Isle of Kezan (pronounced \"KEH-zawn\") located in the South Seas is the tropical homeland of the goblins. Their capital of Undermine is located beneath the island, deep in the bowels of Mount Kajaro. Thanks to Kezan's prominence as a mercantile hub, it's been divided into dozens of districts by the trade princes, who view every inch of land as an opportunity waiting to be converted into gold and silver. Kezan's tropical palms are bisected with miles of roadway, and even the beaches are beginning to be paved over by goblin ambitions. Nature eventually reclaimed the island of Kezan as the massive Mount Kajaro erupted with the Cataclysm, flooding the island with searing lava and sending tidal recoil sweeping through Kezan's harbors.\n\nThe playable goblin race experiences a phased instance of Kezan in their earliest levels before evacuating to the Lost Isles. Kezan is not reachable by other races or beyond these initial levels. Many of the denizens now live in Bilgewater Harbor in Azshara.",
			["icon"] = 524305,
			["races"] = { GOBLIN },
			["maps"] = {
				195,	-- Kaja'mine
				196,	-- Kaja'mine
				197,	-- Kaja'mine
			},
			["groups"] = {
				n(EXPLORATION, sharedData({
					["races"] = { GOBLIN },
				},{
					exploration(4767),    -- Bilgewater Port
					exploration(4771),    -- Drudgetown
					exploration(4770),    -- First Bank of Kezan
					exploration(4768),    -- Gallywix's Villa
					exploration(4766),    -- Kaja'mine
					exploration(4822),    -- Kajaro Field
					exploration(4765),    -- KTC Headquarters
				})),
				n(QUESTS, {
					q(14125, {	-- 447
						["coord"] = { 59.6, 77.0, KEZAN },
						["qg"] = 34668,	-- Sassy Hardwrench
						["sourceQuests"] = {
							14124,	-- Liberate the Kaja'mite
							14121,	-- Robbing Hoods
							14122,	-- The Great Bank Heist
							14123,	-- Waltz Right In
						},
						["groups"] = {
							i(54307),	-- Flame-Retardant Pajama Sleeves
							i(54309),	-- Gas Soaked Boots
							i(131860, {	-- Gassy Armbands
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(54308),	-- Gassy Bracers
						},
					}),
					q(14120, {	-- A Bazillion Macaroons?!
						["coord"] = { 56.7, 76.9, KEZAN },
						["qg"] = 35222,	-- Trady Prince Gallywix
						["sourceQuest"] = 14116,	-- The Uninvited Guest
					}),
					q(14008, {	-- Arcane Missiles [Cata] / Frost Nova [MoP+] (Goblin)
						["qg"] = 34689,	-- Fizz Lighter <Mage Trainer>
						["coord"] = { 59.6, 73.8, KEZAN },
						["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						["races"] = { GOBLIN },
						["classes"] = { MAGE },
					}),
					q(14013, {	-- Charge (Goblin)
						["qg"] = 34697,	-- Warrior-Matic NX-01 <Warrior Trainer>
						["coord"] = { 60.6, 77.4, KEZAN },
						["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						["classes"] = { WARRIOR },
						["races"] = { GOBLIN },
						["lvl"] = lvlsquish(3, 3, 1),
					}),
					q(14070, {	-- Do it Yourself
						["coord"] = { 56.4, 76.9, KEZAN },
						["qg"] = 34668,	-- Sassy Hardwrench
						["sourceQuest"] = 14071,	-- Rolling with my Homies
						["groups"] = {
							i(54297),	-- Cracking Whip
							i(54296),	-- Debt Collector's Gloves
							i(131857, {	-- Debt Collector's Grips
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					q(14010, {	-- Eviscerate (Goblin)
						["qg"] = 34693,	-- Slinky Sharpshiv <Rogue Trainer>
						["coord"] = { 59.2, 76.2, KEZAN },
						["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						["classes"] = { ROGUE },
						["races"] = { GOBLIN },
						["lvl"] = lvlsquish(3, 3, 1),
					}),
					q(24503, {	-- Fourth and Goal [Auto-Given in Mech]
						["qg"] = 37106,	-- Coach Crosscheck
						["sourceQuest"] = 24502,	-- Necessary Roughness
						["coord"] = { 47.7, 57.7, KEZAN },
						["groups"] = {
							i(54294),	-- Athlete's Robe
							i(54295),	-- Crosscheck Breastplate
						},
					}),
					q(28414, {	-- Fourth and Goal [Quest Giver]
						["qg"] = 37106,	-- Coach Crosscheck
						["sourceQuest"] = 24502,	-- Necessary Roughness
						["coord"] = { 48.7, 57.7, KEZAN },
						["groups"] = {
							i(54294),	-- Athlete's Robe
							i(54295),	-- Crosscheck Breastplate
						},
					}),
					q(24520, {	-- Give Sassy the News
						["coord"] = { 48.7, 57.7, KEZAN },
						["qg"] = 37106,	-- Coach Crosscheck
						["sourceQuests"] = { 28414, 24503 },	-- Necessary Roughness
					}),
					q(14069, {	-- Good Help is Hard to Find
						["coord"] = { 60.2, 74.5, KEZAN },
						["qg"] = 34872,	-- Foreman Dampwick
						["sourceQuest"] = 14138,	-- Taking Care of Business
					}),
					q(14009, {	-- Flash Heal [Cata] / Learning the Word [MoP+] (Goblin)
						["qg"] = 34692,	-- Sister Goldskimmer <Priest Trainer>
						["coord"] = { 58.8, 76.8, KEZAN },
						["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						["classes"] = { PRIEST },
						["races"] = { GOBLIN },
						["lvl"] = lvlsquish(3, 3, 1),
					}),
					q(14012, {	-- Immolate [Cata] / Corruption [MoP+] (Goblin)
						["qg"] = 34696,	-- Evol Fingers <Warlock Trainer>
						["coord"] = { 58.2, 74.2, KEZAN },
						["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						["classes"] = { WARLOCK },
						["races"] = { GOBLIN },
						["lvl"] = lvlsquish(3, 3, 1),
					}),
					q(25473, {	-- Kaja'Cola
						["coord"] = { 60.2, 74.5, KEZAN },
						["qg"] = 34872,	-- Foreman Dampwick
						["sourceQuests"] = {
							14069,	-- Good Help is Hard to Find
							14075,	-- Troublee in the Mines
						},
					}),
					q(14124, {	-- Liberate the Kaja'mite
						["coord"] = { 62.9, 77.8, KEZAN },
						["qg"] = 34872,	-- Foreman Dampwick
						["sourceQuest"] = 14120,	-- A Bazillion Macaroons?!
						["groups"] = {
							o(195492, {	-- Kaja'mite Chunk
								i(48766),	-- Kaja'mite Chunk (QI!)
							}),
							i(48768),	-- Kablooey Bombs (QI!)
						},
					}),
					q(14113, {	-- Life of the Party [Male Version]
						["coord"] = { 56.3, 77.1, KEZAN },
						["qg"] = 35053,	-- Candy Cane
						["sourceQuests"] = {
							24520,	-- Give Sassy the News
							14109,	-- The New You [Male]
							14070,	-- Do It Yourself
						},
					}),
					q(14153, {	-- Life of the Party [Female Version]
						["coord"] = { 56.3, 76.8, KEZAN },
						["qg"] = 35054,	-- Chip Endale
						["sourceQuests"] = {
							24520,	-- Give Sassy the News
							14109,	-- The New You [Female]
							14070,	-- Do It Yourself
						},
					}),
					q(14126, {	-- Life Savings
						["coord"] = { 59.6, 77.0, KEZAN },
						["qg"] = 34668,	-- Sassy Hardwrench
						["sourceQuest"] = 14125,	-- 447
					}),
					q(28349, {	-- Megs in Marketing
						["coord"] = { 56.4, 76.9, KEZAN },
						["qg"] = 34668,	-- Sassy Hardwrench
						["sourceQuest"] = 25473,	-- Kaja'Cola
					}),
					q(24502, {	-- Necessary Roughness
						["coord"] = { 48.7, 57.7, KEZAN },
						["qg"] = 37106,	-- Coach Crosscheck
						["sourceQuest"] = 24488,	-- The Replacements
					}),
					q(26712, {	-- Off to the Bank  [Male Version]
						["coord"] = { 56.3, 77.1, KEZAN },
						["qg"] = 35053,	-- Candy Cane
						["sourceQuest"] = 14071,	-- Rolling with my Homies
					}),
					q(26711, {	-- Off to the Bank  [Female Version]
						["coord"] = { 56.3, 76.8, KEZAN },
						["qg"] = 35054,	-- Chip Endale
						["sourceQuest"] = 14071,	-- Rolling with my Homies
					}),
					q(14115, {	-- Pirate Party Crashers
						["coord"] = { 56.4, 76.9, KEZAN },
						["qg"] = 34668,	-- Sassy Hardwrench
						["sourceQuests"] = { 14153, 14113 },	-- Life of the Party
						["groups"] = {
							i(54302),	-- Southsea Sash
							i(54303),	-- Total Disaster Bracers
						},
					}),
					q(14011, {	-- Primal Strike (Goblin)
						["qg"] = 34695,	-- Maxx Avalanche <Shaman Trainer>
						["coord"] = { 59.6, 77, KEZAN },
						["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						["races"] = { GOBLIN },
						["classes"] = { SHAMAN },
					}),
					q(24567, {	-- Report for Tryouts
						["coord"] = { 58.3, 76.4, KEZAN },
						["qg"] = 34874,	-- Megs Dreadshredder
						["sourceQuest"] = 14071,	-- Rolling with my Homies
					}),
					q(14121, {	-- Robbing Hoods
						["coord"] = { 60.0, 78.1, KEZAN },
						["qg"] = 34874,	-- Megs Dreadshredder
						["sourceQuest"] = 14120,	-- A Bazillion Macaroons?!
					}),
					q(14071, {	-- Rolling with my Homies
						["coord"] = { 58.3, 76.4, KEZAN },
						["qg"] = 34874,	-- Megs Dreadshredder
						["sourceQuest"] = 28349,	-- Megs in Marketing
						["groups"] = {
							i(131858, {	-- Clinking Chain Trousers
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(54299),	-- Fancy Pants
							i(54298),	-- Skyrocket Gun
							i(54300),	-- Tight-Fitting Leather Leggings
						},
					}),
					q(14007, {	-- Steady Shot (Goblin)
						["qg"] = 34673,	-- Bamm Megabomb <Hunter Trainer>
						["coord"] = { 60.6, 77.8, KEZAN },
						["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						["classes"] = { HUNTER },
						["races"] = { GOBLIN },
						["lvl"] = lvlsquish(3, 3, 1),
					}),
					q(14138, {	-- Taking Care of Business
						["coord"] = { 56.4, 76.9, KEZAN },
						["qg"] = 34668,	-- Sassy Hardwrench
					}),
					q(14122, {	-- The Great Bank Heist
						["coord"] = { 59.6, 77.0, KEZAN },
						["qg"] = 34668,	-- Sassy Hardwrench
						["sourceQuest"] = 14120,	-- A Bazillion Macaroons?!
						["groups"] = {
							i(56148),	-- Bank Robber's Bag
							i(54304),	-- First Bank Knocker
							i(54305),	-- Tasseled Shoes
							i(131859, {	-- Vault Cracker Boots
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(54306),	-- Vault Cracker Gloves
						},
					}),
					q(28607, {	-- The Keys to the Hot Rod
						["coord"] = { 58.3, 76.4, KEZAN },
						["qg"] = 34874,	-- Megs Dreadshredder
						["repeatable"] = true,
					}),
					q(14109, {	-- The New You [Male Version]
						["coord"] = { 30.1, 71.9, KEZAN },
						["qg"] = 35120,	-- FBoK Bank Teller
						["sourceQuest"] = 26712,	-- Off to Bank [Male Version]
					}),
					q(14110, {	-- The New You [Female Version]
						["coord"] = { 30.1, 71.9, KEZAN },
						["qg"] = 35120,	-- FBoK Bank Teller
						["sourceQuest"] = 26711,	-- Off to Bank [Female Version]
					}),
					q(24488, {	-- The Replacements
						["coord"] = { 48.7, 57.7, KEZAN },
						["qg"] = 37106,	-- Coach Crosscheck
						["sourceQuest"] = 24567,	-- Report for Tryouts
					}),
					q(14116, {	-- The Uninvited Guest
						["coord"] = { 56.4, 76.9, KEZAN },
						["qg"] = 34668,	-- Sassy Hardwrench
						["sourceQuest"] = 14115,	-- Pirate Party Crashers
					}),
					q(14075, {	-- Trouble in the Mines
						["coord"] = { 60.2, 74.5, KEZAN },
						["qg"] = 34872,	-- Foreman Dampwick
						["sourceQuest"] = 14138,	-- Taking Care of Business
						["groups"] = {
							i(54292),	-- KTC Executive Slippers
							i(131856, {	-- Tunnel Worm Chestguard
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(54293),	-- Tunnel Worm Vest
						},
					}),
					q(14123, {	-- Waltz Right In
						["coord"] = { 58.7, 74.1, KEZAN },
						["qg"] = 34693,	-- Slinky Sharpshiv
						["sourceQuest"] = 14120,	-- A Bazillion Macaroons?!
					}),
				}),
				n(VENDORS, {
					n(37761, {	--	Sally "Salvager" Sandscrew <Armor Vendor>
						["coord"] = { 59.8, 72.6, KEZAN },
						["sym"] = { { "sub", "common_vendor", 49884 } },	-- Sally "Salvager" Sandscrew <Armor Vendor>
					}),
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	m(THE_MAELSTROM, {
		m(KEZAN, {
			n(QUESTS, {
				q(14137, { ["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 } }),	-- Class Training (Tracking Event). Triggers after doing one of your class skill quests
				q(14114),	-- Kezan - The New You tracking event. Triggers after you complete "The New You"
				q(14139),	-- Kezan - Phase 1 complete. Triggers after turning in "Do it Yourself"
				q(14158),	-- Kezan - Phase 6 complete. Triggers when quest "447" becomes available
			}),
		}),
	}),
})));
