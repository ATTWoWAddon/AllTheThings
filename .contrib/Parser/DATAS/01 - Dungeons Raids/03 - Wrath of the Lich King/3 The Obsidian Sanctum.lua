-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	inst(755, {	-- The Obsidian Sanctum
		["mapID"] = THE_OBSIDIAN_SANCTUM,
		["coord"] = { 60.0, 56.7, DRAGONBLIGHT },
		-- #if AFTER CATA
		["sharedLockout"] = 1,
		-- #endif
		["isRaid"] = true,
		["lvl"] = 80,
		["groups"] = {
			d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
				n(ACHIEVEMENTS, {
					ach(624, {	-- Less Is More [10 player]
						crit(522, {	-- Sartharion
							["provider"] = { "n", 28860 },	-- Sartharion
						}),
						crit(7191, {	-- Shadron
							["provider"] = { "n", 30451 },	-- Shadron
						}),
						crit(7190, {	-- Tenebron
							["provider"] = { "n", 30452 },	-- Tenebron
						}),
						crit(7189, {	-- Vesperon
							["provider"] = { "n", 30449 },	-- Vesperon
						}),
					}),
				}),
				e(1616, {	-- Sartharion
					["creatureID"] = 28860,	-- Sartharion
					["groups"] = {
						ach(1876),	-- Besting the Black Dragonflight [10 player]
						ach(2047),	-- Gonna Go When the Volcano Blows [10 player]
						ach(2049, {	-- Twilight Assist [10 player]
							["description"] = "These pieces can drop when you leave one or more drakes up, but loot from this table is not guaranteed.",
							["groups"] = {
								i(43992),	-- Volitant Amulet			//** Confirmed Drop 4/19/19 [1/3 Drake(s) up]
								i(43988),	-- Gale-Proof Cloak			//** Confirmed Drop 4/19/19 [1 Drake up]
								i(43990),	-- Blade-Scarred Tunic		//** Confirmed Drop 4/19/19 [1 Drake up]
								i(43989),	-- Remembrance Girdle		//** Confirmed Drop 4/19/19 [1 Drake up]
								i(43991),	-- Legguards of Composure
							},
						}),
						ach(2050, {	-- Twilight Duo [10 player]
							["description"] = "These pieces can drop when you leave two or more drakes up, but loot from this table is not guaranteed.",
							["groups"] = {
								i(43995),	-- Enamored Cowl
								i(43998),	-- Chestguard of Flagrant Prowess
								i(43994),	-- Belabored Legplates		//** Confirmed Drop 4/19/19 [2 Drakes(s) up]
								i(43996),	-- Sabatons of Firmament
								i(43993),	-- Greatring of Collision
							},
						}),
						ach(2051, {	-- The Twilight Zone [10 player]
							title(107),	-- of the Nightfall
							i(43986)	-- Black Drake (MOUNT!)
						}),
						ach(5017, {	-- The Twilight Zone - Guild Edition
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(40613),	-- Gloves of the Lost Conqueror		//** Confirmed Drop 4/19/19 [1 Drake up]
						i(40614),	-- Gloves of the Lost Protector
						i(40615),	-- Gloves of the Lost Vanquisher	//** Confirmed Drop 4/19/19 [2 Drakes(s) up]
						i(40429),	-- Crimson Steel
						i(40428),	-- Titan's Outlook			//** Confirmed Drop 4/19/19 [1/2/3 Drake(s) up]
						i(40427),	-- Circle of Arcane Streams	//** Confirmed Drop 4/19/19 [1 Drake up]
						i(40426),	-- Signet of the Accord		//** Confirmed Drop 4/19/19 [2/3 Drakes(s) up]
						i(40430),	-- Majestic Dragon Figurine	//** Confirmed Drop 4/19/19 [1 Drake up]
						i(43345),	-- Dragon Hide Bag			//** Confirmed Drop 4/19/19 [1/2/3 Drakes(s) up]
						i(43347, {	-- Satchel of Spoils
							["description"] = "Contains gold.",
						}),
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL, {
				n(ACHIEVEMENTS, {
					ach(1877, {	-- Less Is More [25 player]
						crit(7186, {	-- Sartharion
							["provider"] = { "n", 28860 },	-- Sartharion
						}),
						crit(7187, {	-- Shadron
							["provider"] = { "n", 30451 },	-- Shadron
						}),
						crit(7188, {	-- Tenebron
							["provider"] = { "n", 30452 },	-- Tenebron
						}),
						crit(7185, {	-- Vesperon
							["provider"] = { "n", 30449 },	-- Vesperon
						}),
					}),
					ach(456, {	-- Realm First! Obsidian Slayer
						["timeline"] = { ADDED_3_0_2, REMOVED_3_0_8 },
						["groups"] = {
							title(106, {	-- Obsidian Slayer <Name>
								["timeline"] = { ADDED_3_0_2, REMOVED_3_0_8 },
							}),
						},
					}),
				}),
				e(1616, {	-- Sartharion
					["creatureID"] = 28860,	-- Sartharion
					["groups"] = {
						ach(625),	-- Besting the Black Dragonflight [25 player]
						ach(2048),	-- Gonna Go When the Volcano Blows [25 player]
						ach(2052, {	-- Twilight Assist [25 player]
							-- Note!! Even with 1 drake up you can still get 0 loot from the table 4/19/19
							["description"] = "These pieces can drop when you leave one or more drakes up, but loot from this table is not guaranteed.",
							["groups"] = {
								i(44003),	-- Upstanding Spaulders				//** Confirmed Drop 4/19/19 [2 Drakes up]
								i(44000),	-- Dragonstorm Breastplate			//** Confirmed Drop 4/19/19 [2/3 Drakes up]
								i(44002),	-- The Sanctum's Flowing Vestments	//** Confirmed Drop 4/19/19 [2 Drakes up]
								i(44004),	-- Bountiful Gauntlets
							},
						}),
						ach(2053, {	-- Twilight Duo [25 player]
							["description"] = "These pieces can drop when you leave two or more drakes up, but loot from this table is not guaranteed.",
							["groups"] = {
								i(44007),	-- Headpiece of Reconciliation	//** Confirmed Drop 4/19/19 [2/3 Drakes up]
								i(44006),	-- Obsidian Greathelm			//** Confirmed Drop 4/19/19 [2 Drakes up]
								i(44005),	-- Pennant Cloak
								i(44008),	-- Unsullied Cuffs
								i(44011),	-- Leggings of the Honored
							},
						}),
						ach(2054, {	-- The Twilight Zone [25 player]
							title(89),	-- Twilight Vanquisher
							i(43954)	-- Twilight Drake (MOUNT!)
						}),
						ach(5017, {	-- The Twilight Zone - Guild Edition
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(40628),	-- Gauntlets of the Lost Conqueror		//** Confirmed Drop 4/19/19 [3 Drakes up]
						i(40629),	-- Gauntlets of the Lost Protector
						i(40630),	-- Gauntlets of the Lost Vanquisher		//** Confirmed Drop 4/19/19 [3 Drakes up]
						i(40455),	-- Staff of Restraint					//** Confirmed Drop 4/19/19 [2 Drakes up]
						i(40451),	-- Hyaline Helm of the Sniper
						i(40437),	-- Concealment Shoulderpads				//** Confirmed Drop 4/19/19 [3 Drakes up]
						i(40438),	-- Council Chamber Epaulets				//** Confirmed Drop 4/19/19 [1 Drake up]
						i(40439),	-- Mantle of the Eternal Sentinel		//** Confirmed Drop 4/19/19 [3 Drakes up]
						i(40453),	-- Chestplate of the Great Aspects		//** Confirmed Drop 4/19/19 [3 Drakes up]
						i(40446),	-- Dragon Brood Legguards				//** Confirmed Drop 4/19/19 [2 Drakes up]
						i(40433),	-- Wyrmrest Band						//** Confirmed Drop 4/19/19 [1 Drake up]
						i(43999),	-- Ring of the Empty Horizon			//** Confirmed Drop 4/19/19 [3 Drakes up]
						i(40431),	-- Fury of the Five Flights				//** Confirmed Drop 4/19/19 [1/3 Drakes up]
						i(40432),	-- Illustration of the Dragon Soul		//** Confirmed Drop 4/19/19 [1 Drake up]
						i(43345),	-- Dragon Hide Bag						//** Confirmed Drop 4/19/19 [1/2/3 Drakes up]
						i(43346, {	-- Large Satchel of Spoils
							["description"] = "Contains gold.",
						}),
					},
				}),
			}),
		},
	}),
}))));
