---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(LEGION_DALARAN, {
			m(LEGION_THE_UNDERBELLY, {
				["zone-text-areaID"] = 7594,	-- The Underbelly
				["icon"] = 460862,
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(1958, {	-- I Smell A Giant Rat
							["requireSkill"] = FISHING,
						}),
						ach(11066, {	-- Underbelly Tycoon
							["cost"] = { { "c", 1149, 20000 } },	-- 20,000x Sightless Eyes
							["g"] = {
								i(138387),	-- Ratstallion (MOUNT!)
							},
						}),
					}),
					petbattle(filter(BATTLE_PETS, {
						pet(1915),	-- Blind Rat (PET!)
					})),
					n(VENDORS, {
						n(106056, {	-- Charles Seaton
							["coord"] = { 74.2, 54.8, LEGION_THE_UNDERBELLY },
							["sym"] = {{"select","itemID",
								1198,	-- Claymore
								851,	-- Cutlass
								922,	-- Dacian Falx
								2024,	-- Espadon
								2207,	-- Jambiya
								2209,	-- Kris
								923,	-- Longsword
								2208,	-- Poniad
								2027,	-- Scimitar
							}},
						}),
						n(106887, {	-- Cravitz Lorent <Shady Book Dealer>
							["description"] = "This vendor is not always present. It can appear in either version of Dalaran.",
							["coord"] = { 51.6, 40.6, LEGION_THE_UNDERBELLY },
							["timeline"] = { ADDED_7_0_3 },
							["g"] = {
								i(136803, {	-- Dirty Tricks, Vol 1: Detection (CI!)
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(136927, {	-- Scarlet Confessional Book (TOY!)
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(141056, {	-- Technique: Glyph of Burnout (RECIPE!)
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(136972, {	-- Tome of Hex: Cockroach (CI!)
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						n(97362, {	-- Dazzik "Proudmoore" <Magical Things>
							["coord"] = { 66.2, 74.8, LEGION_THE_UNDERBELLY },
							["g"] = {
								i(138016, {	-- Clothes Chest Pattern: Dalaran Citizens
									["cost"] = { { "c", 1149, 250 }, },	-- 250x Sightless Eye
								}),
								i(137826, {	-- Design: Sorcerous Shadowruby Pendant [Rank 2]
									["cost"] = { { "c", 1149, 250 }, },	-- 250x Sightless Eye
								}),
								i(139427, {	-- Wild Mana Wand
									["cost"] = { { "c", 1149, 175 }, },	-- 175x Sightless Eye
								}),
							},
						}),
						n(106054, {	-- Kareth
							["coord"] = { 75.2, 57.0, LEGION_THE_UNDERBELLY },
							["sym"] = {{"select","itemID",
								2520,	-- Broadsword
								1198,	-- Claymore
								851,	-- Cutlass
								922,	-- Dacian Falx
								2024,	-- Espadon
								2528,	-- Falchion
								2207,	-- Jambiya
								2209,	-- Kris
								923,	-- Longsword
								2526,	-- Main Gauche
								2208,	-- Poniad
								2534,	-- Rondel
								2027,	-- Scimitar
							}},
						}),
						n(97363, {	-- K'huta <Portals and Jujus>
							["coord"] = { 66.0, 79.9, LEGION_THE_UNDERBELLY },
							["g"] = {
								i(139423, {	-- Croc Mojo
									["cost"] = { { "c", 1149, 175 }, },	-- 175x Sightless Eye
								}),
								i(128625, {	-- Formula: Leylight Brazier (RECIPE!)
									["cost"] = { { "c", 1149, 250 }, },	-- 250x Sightless Eye
								}),
								i(138031, {	-- Portal Key: Abandoned Shack (CI!)
									["cost"] = { { "c", 1149, 100 }, },	-- 100x Sightless Eye
								}),
								i(138030, {	-- Portal Key: Alchemists' Lair (CI!)
									["cost"] = { { "c", 1149, 100 }, },	-- 100x Sightless Eye
								}),
								i(138028, {	-- Portal Key: Black Market (CI!)
									["cost"] = { { "c", 1149, 100 }, },	-- 100x Sightless Eye
								}),
								i(138029, {	-- Portal Key: Inn Entrance (CI!)
									["cost"] = { { "c", 1149, 100 }, },	-- 100x Sightless Eye
								}),
								i(138032, {	-- Portal Key: Rear Entrance (CI!)
									["cost"] = { { "c", 1149, 100 }, },	-- 100x Sightless Eye
								}),
								i(138027, {	-- Portal Key: Sewer Guard Station (CI!)
									["cost"] = { { "c", 1149, 50 }, },	-- 50x Sightless Eye
								}),
								i(141058, {	-- Technique: Glyph of Critterhex (RECIPE!)
									["cost"] = { { "c", 1149, 100 }, },	-- 100x Sightless Eye
								}),
							},
						}),
						n(97364, {	-- Laura Malley <Creatures>
							["coord"] = { 58.0, 58.1, LEGION_THE_UNDERBELLY },
							["g"] = {
								i(137932, {	-- Pattern: Flaming Hoop (RECIPE!)
									["cost"] = { { "c", 1149, 100 }, },		-- 100x Sightless Eye
								}),
								i(137934, {	-- Pattern: Leather Pet Leash (RECIPE!)
									["cost"] = { { "c", 1149, 50 }, },		-- 50x Sightless Eye
								}),
								i(136904, {	-- Sewer-Pipe Jelly  (PET!)
									["cost"] = { { "c", 1149, 250 }, },		-- 250x Sightless Eye
								}),
								i(139412, {	-- Young Mutant War Turtles
									["cost"] = { { "c", 1149, 1500 }, },	-- 1,500x Sightless Eye
									["g"] = {
										pet(1912),	-- Young Mutant Warturtle (PET!)
									},
								}),
							},
						}),
						n(97360, {	-- Matthew Rabis <Feral Warlock>
							["coord"] = { 47.0, 56.6, LEGION_THE_UNDERBELLY },
							["g"] = {
								i(137828, {	-- Design: Twisted Pandemonite Choker [Rank 2] (RECIPE!)
									["cost"] = { { "c", 1149, 250 }, },		-- 250x Sightless Eye
								}),
								i(139425, {	-- Imp-Binding Contract
									["cost"] = { { "c", 1149, 225 }, },		-- 225x Sightless Eye
								}),
								i(139896, {	-- Skinning Technique: Legion Gutting
									["cost"] = { { "c", 1149, 250 }, },		-- 250x Sightless Eye
								}),
								i(141066, {	-- Technique: Grimoire of the Voidlord (RECIPE!)
									["cost"] = { { "c", 1149, 100 }, },		-- 100x Sightless Eye
								}),
							},
						}),
						n(97361, {	-- Oxana Demonslay <Weapons and Secrets>
							["coord"] = { 67.4, 18.1, LEGION_THE_UNDERBELLY },
							["g"] = {
								i(137831, {	-- Design: Vindictive Pandemonite Choker [Rank 2] (RECIPE!)
									["cost"] = { { "c", 1149, 250 }, },		-- 250x Sightless Eye
								}),
								i(141038, {	-- Technique: Glyph of Shadow-Enemies (RECIPE!)
									["cost"] = { { "c", 1149, 100 }, },		-- 100x Sightless Eye
								}),
							},
						}),
						n(107760, {	-- Strap Bucklebolt <Belts>
							["coord"] = { 65.8, 80.8, LEGION_THE_UNDERBELLY },
							["g"] = {
								i(137966, {	-- Pattern: Imbued Silkweave Cinch [Rank 2] (RECIPE!)
									["cost"] = { { "c", 1149, 250 }, },		-- 250x Sightless Eye
								}),
								i(137974, {	-- Pattern: Imbued Silkweave Cinch [Rank 3] (RECIPE!)
									["cost"] = {
										{ "c", 1149, 500 },	-- 500x Sightless Eye
										{ "g", 15000000 },	-- 1,500g
									},
								}),
								i(137954, {	-- Pattern: Silkweave Cinch [Rank 2] (RECIPE!)
									["cost"] = { { "c", 1149, 250 }, },		-- 250x Sightless Eye
								}),
								i(137962, {	-- Pattern: Silkweave Cinch [Rank 3] (RECIPE!)
									["cost"] = { { "c", 1149, 500 }, },		-- 500x Sightless Eye
								}),
								i(137901, {	-- Pattern: Battlebound Girdle [Rank 2] (RECIPE!)
									["cost"] = { { "c", 1149, 250 }, },		-- 250x Sightless Eye
								}),
								i(137913, {	-- Pattern: Battlebound Girdle [Rank 3] (RECIPE!)
									["cost"] = { { "c", 1149, 500 }, },		-- 500x Sightless Eye
								}),
								i(123949, {	-- Plans: Demonsteel Waistguard [Rank 3] (RECIPE!)
									["cost"] = {
										{ "c", 1149, 500 },	-- 500x Sightless Eye
										{ "g", 15000000 },	-- 1,500g
									},
								}),
								i(137885, {	-- Pattern: Dreadleather Belt [Rank 2] (RECIPE!)
									["cost"] = { { "c", 1149, 250 }, },		-- 250x Sightless Eye
								}),
								i(137893, {	-- Pattern: Dreadleather Belt [Rank 3] (RECIPE!)
									["cost"] = {
										{ "c", 1149, 500 },	-- 500x Sightless Eye
										{ "g", 15000000 },	-- 1,500g
									},
								}),
								i(137917, {	-- Pattern: Gravenscale Girdle [Rank 2] (RECIPE!)
									["cost"] = { { "c", 1149, 250 }, },		-- 250x Sightless Eye
								}),
								i(137925, {	-- Pattern: Gravenscale Girdle [Rank 3] (RECIPE!)
									["cost"] = {
										{ "c", 1149, 500 },	-- 500x Sightless Eye
										{ "g", 15000000 },	-- 1,500g
									},
								}),
								i(123929, {	-- Plans: Leystone Waistguard [Rank 2] (RECIPE!)
									["cost"] = { { "c", 1149, 250 }, },		-- 250x Sightless Eye
								}),
								i(123937, {	-- Plans: Leystone Waistguard [Rank 3] (RECIPE!)
									["cost"] = { { "c", 1149, 500 }, },		-- 500x Sightless Eye
								}),
								i(137869, {	-- Pattern: Warhide Belt [Rank 2] (RECIPE!)
									["cost"] = { { "c", 1149, 250 }, },		-- 250x Sightless Eye
								}),
								i(137881, {	-- Pattern: Warhide Belt [Rank 3] (RECIPE!)
									["cost"] = { { "c", 1149, 500 }, },		-- 500x Sightless Eye
								}),
							},
						}),
						n(97366, {	-- The Widow <Tools of Deception>
							["coord"] = { 71.5, 24.0, LEGION_THE_UNDERBELLY },
							["g"] = {
								i(137829, {	-- Design: Subtle Shadowruby Pendant [Rank 2] (RECIPE!)
									["cost"] = { { "c", 1149, 250 }, },		-- 250x Sightless Eye
								}),
								i(137706, {	-- Schematic: Gunpowder Charge [Rank 2] (RECIPE!)
									["cost"] = { { "c", 1149, 250 }, },		-- 250x Sightless Eye
								}),
								i(137720, {	-- Schematic: Gunpowder Charge [Rank 3] (RECIPE!)
									["cost"] = {
										{ "c", 1149, 500 },	-- 500x Sightless Eye
										{ "g", 15000000 },	-- 1,500g
									},
								}),
								i(141057, {	-- Technique: Glyph of Flash Bang (RECIPE!)
									["cost"] = { { "c", 1149, 100 }, },		-- 100x Sightless Eye
								}),
								i(139426, {	-- Widowsister Contract
									["cost"] = { { "c", 1149, 250 }, },		-- 250x Sightless Eye
								}),
							},
						}),
					}),
					n(ZONE_DROPS, {
						i(139572, {	-- Lost Codex of the Amani
							["crs"] = {
								97380,	-- Splint
								97387,	-- Mana Seeper
								97587,	-- Crazed Mage
								97390,	-- Thieving Scoundrel
								97388,	-- Xullorax
								97381,	-- Screek
								97384,	-- Segacedi
							},
						}),
						i(139570, {	-- The Cypher of Broken Bone
							["crs"] = {
								97380,	-- Splint
								97387,	-- Mana Seeper
								97587,	-- Crazed Mage
								97390,	-- Thieving Scoundrel
								97388,	-- Xullorax
								97381,	-- Screek
								97384,	-- Segacedi
							},
						}),
					}),
				},
			}),
		}),
	}),
});