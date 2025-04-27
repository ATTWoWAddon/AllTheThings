-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = ADDED_5_0_4 }, {
	applyclassicphase(MOP_PHASE_LANDFALL, inst(321, {	-- Mogu'shan Palace
		["coord"] = { 80.5, 33.0, VALE_OF_ETERNAL_BLOSSOMS },
		["maps"] = {
			453,	-- The Crimson Assembly Hall
			454,	-- Vaults of Kings Past
			455,	-- Throne of Ancient Conquerors
			1546,	-- Mogu'shan Palace (reported a lot on Remix)
		},
		["g"] = {
			n(QUESTS, {
				q(31360, {	-- A New Lesson for the Master
					["provider"] = { "n", 64432 },	-- Sinan the Dreamer
					["coord"] = { 38.8, 81.8, 455 },
					["g"] = {
						i(87337),	-- Deposer's Leggings
						i(87334),	-- Dreamer's Vigil Leggings
						i(87335),	-- Leggings of Clever Entrapment
						i(87339),	-- Leggings of Forceful Instruction
						i(87338),	-- Leggings of the Empty Throne
						i(87336),	-- Legplates of the Scattered Tribes
						i(87340),	-- Mogu Warlord Legguards
						i(87333),	-- Watchful Dreamer's Trousers
						i(87341),	-- Weaponmaster's Legplates
					},
				}),
				q(31357, {	-- Relics of the Four Kings
					["provider"] = { "n", 64432 },	-- Sinan the Dreamer
					["coord"] = { 38.8, 81.8, 455 },
					["g"] = {
						i(86476),	-- Lantern of the Sorcerer King (QI!)
						i(86477),	-- Mad King Meng's Balance (QI!)
						i(86478),	-- Qiang's "The Science of War" (QI!)
						i(86479),	-- Subetai's Bow of the Swift (QI!)
						i(87346),	-- Armbands of the Reawakened
						i(87349),	-- Armplates of Martial Artistry
						i(87345),	-- Bindings of Impeccable Strategy
						i(87348),	-- Bracers of Inner Knowledge
						i(87343),	-- Bracers of Swift Wrath
						i(87344),	-- Cuffs of the Endless Shadow
						i(87347),	-- Lost Heritage Bracers
						i(87350),	-- Poet-King's Vambraces
						i(87342),	-- Subjugation Bracers
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(87806, {	-- Ancient Mogu Key
					["crs"] = {
						61216,	-- Glintrok Hexxer
						61242,	-- Glintrok Ironhide
						61239,	-- Glintrok Oracle
						61240,	-- Glintrok Skulker
					},
				}),
				i(89428, {	-- Ancient Mogu Treasure
					["description"] = "Contains some gold and a several green-quality gems.",
					["cost"] = { { "i", 87806, 1 } },	-- 1x Ancient Mogu Key
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(708, {	-- Trial of the King
					["crs"] = {
						61445,	-- Haiyan the Unstoppable
						61442,	-- Kuai the Brute
						61444,	-- Ming the Cunning
					},
					["g"] = {
						-- Available
						i(144145, {	-- Conflagrating Gloves
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144020, {	-- Crest of the Clan Lords
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144143, {	-- Hurricane Belt
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144021, {	-- Meteoric Greathelm
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144144, {	-- Whirling Dervish Choker
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(85178, {	-- Conflagrating Gloves
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(85175, {	-- Crest of the Clan Lords
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(85176, {	-- Hurricane Belt
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(85179, {	-- Meteoric Greathelm
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(690, {	-- Gekkan
					["crs"] = { 61243 },	-- Gekkan
					["g"] = {
						-- Available
						i(144148, {	-- Claws of Gekkan
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144147, {	-- Cloak of Cleansing Flames
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143992, {	-- Glintrok Sollerets
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144149, {	-- Hexxer's Lethargic Gloves
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144146, {	-- Iron Protector Talisman
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(85183, {	-- Claws of Gekkan
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(85182, {	-- Cloak of Cleansing Flames
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(85184, {	-- Hexxer's Lethargic Gloves
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(85180, {	-- Glintrok Sollerets
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(698, {	-- Xin the Weaponmaster
					["crs"] = { 61398 },	-- Xin the Weaponmaster
					["g"] = {
						-- Avalable
						ach(6755),	-- Mogu'shan Palace
						i(144151, {	-- Axebreaker Gauntlets
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144152, {	-- Blade Trap Signet
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143993, {	-- Boots of Plummeting Death
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144154, {	-- Firescribe Dagger
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144150, {	-- Ghostheart
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144153, {	-- Groundshaker Bracer
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144155, {	-- Mindcapture Pendant
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143956, {	-- Mind's Eye Breastplate
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144214, {	-- Mogu'Dar, Blade of the Thousand Slaves
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143995, {	-- Regal Silk Shoulderpads
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143994, {	-- Soulbinder Treads
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(85186, {	-- Axebreaker Gauntlets
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(85187, {	-- Boots of Plummeting Death
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(85190, {	-- Firescribe Dagger
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(85185, {	-- Ghostheart
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(85189, {	-- Groundshaker Bracer
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(85193, {	-- Mind's Eye Breastplate
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(85194, {	-- Regal Silk Shoulderpads
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(85192, {	-- Soulbinder Treads
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				n(ACHIEVEMENTS, {
					ach(6713),	-- Quarrelsome Quilen Quintet
				}),
				e(708, {	-- Trial of the King
					["crs"] = {
						61445,	-- Haiyan the Unstoppable
						61442,	-- Kuai the Brute
						61444,	-- Ming the Cunning
					},
					["g"] = {
						-- Available
						i(144145, {	-- Conflagrating Gloves
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144020, {	-- Crest of the Clan Lords
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144143, {	-- Hurricane Belt
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144021, {	-- Meteoric Greathelm
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144144, {	-- Whirling Dervish Choker
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81240, {	-- Conflagrating Gloves
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81237, {	-- Crest of the Clan Lords
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81238, {	-- Hurricane Belt
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81241, {	-- Meteoric Greathelm
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(690, {	-- Gekkan
					["crs"] = { 61243 },	-- Gekkan
					["g"] = {
						-- Available
						ach(6478),	-- Glintrok N' Roll
						i(144148, {	-- Claws of Gekkan
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144147, {	-- Cloak of Cleansing Flames
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143992, {	-- Glintrok Sollerets
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144149, {	-- Hexxer's Lethargic Gloves
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144146, {	-- Iron Protector Talisman
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81245, {	-- Claws of Gekkan
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81244, {	-- Cloak of Cleansing Flames
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81242, {	-- Glintrok Sollerets
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81246, {	-- Hexxer's Lethargic Gloves
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(698, {	-- Xin the Weaponmaster
					["crs"] = { 61398 },	-- Xin the Weaponmaster
					["g"] = {
						-- Available
						ach(6756),	-- Heroic: Mogu'shan Palace
						ach(6766),	-- Heroic: Mogu'shan Palace Guild Run
						ach(6736),	-- What Does This Button Do?
						i(144151, {	-- Axebreaker Gauntlets
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144152, {	-- Blade Trap Signet
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143993, {	-- Boots of Plummeting Death
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144154, {	-- Firescribe Dagger
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144150, {	-- Ghostheart
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144153, {	-- Groundshaker Bracer
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143956, {	-- Mind's Eye Breastplate
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144155, {	-- Mindcapture Pendant
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144214, {	-- Mogu'Dar, Blade of the Thousand Slaves
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143995, {	-- Regal Silk Shoulderpads
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143994, {	-- Soulbinder Treads
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81248, {	-- Axebreaker Gauntlets
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81249, {	-- Boots of Plummeting Death
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81253, {	-- Firescribe Dagger
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81247, {	-- Ghostheart
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81252, {	-- Groundshaker Bracer
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81256, {	-- Mind's Eye Breastplate
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(87542, {	-- Mogu'Dar, Blade of the Thousand Slaves
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81257, {	-- Regal Silk Shoulderpads
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81255, {	-- Soulbinder Treads
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		inst(321, {
			q(31634),	-- Mogu'shan Palace Challenge Mode - Bronze Addition (Nth)
			q(31627),	-- Mogu'shan Palace Challenge Mode - Consolation (Nth)
			q(31648),	-- Mogu'shan Palace Challenge Mode - Gold Addition (Nth)
			q(31641),	-- Mogu'shan Palace Challenge Mode - Silver Addition (Nth)
		}),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
		inst(321, {
			q(35318),	-- Mogu'shan Palace Reward Quest - Normal completion
			q(35321),	-- Mogu'shan Palace Reward Quest - Heroic completion
		}),
	})),
});