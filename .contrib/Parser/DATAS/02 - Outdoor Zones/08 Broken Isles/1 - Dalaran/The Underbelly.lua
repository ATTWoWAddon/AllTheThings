---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local SIGHTLESS_EYE = 1149;
local VEILED_ARGUNITE = 1508;

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
							["cost"] = { { "c", SIGHTLESS_EYE, 20000 } },
							["groups"] = { i(138387) },	-- Ratstallion (MOUNT!)
						}),
					}),
					petbattle(filter(BATTLE_PETS, {
						pet(1915),	-- Blind Rat (PET!)
					})),
					n(QUESTS, {
						q(43473, {	-- Experimental Potion: Test Subjects Needed
							["provider"] = { "n", 110642 },	-- Fizzi Liverzapper
							["coord"] = { 75.4, 83.4, LEGION_THE_UNDERBELLY },
							["isDaily"] = true,
						}),
						q(43474, {	-- Experimental Potion: Test Subjects Needed
							["provider"] = { "n", 110642 },	-- Fizzi Liverzapper
							["coord"] = { 75.4, 83.4, LEGION_THE_UNDERBELLY },
							["isDaily"] = true,
						}),
						q(43475, {	-- Experimental Potion: Test Subjects Needed
							["provider"] = { "n", 110642 },	-- Fizzi Liverzapper
							["coord"] = { 75.4, 83.4, LEGION_THE_UNDERBELLY },
							["isDaily"] = true,
						}),
						q(43477, {	-- Experimental Potion: Test Subjects Needed
							["provider"] = { "n", 110642 },	-- Fizzi Liverzapper
							["coord"] = { 75.4, 83.4, LEGION_THE_UNDERBELLY },
							["isDaily"] = true,
						}),
						q(43476, {	-- Experimental Potion: Test Subjects Needed
							["provider"] = { "n", 110642 },	-- Fizzi Liverzapper
							["coord"] = { 75.4, 83.4, LEGION_THE_UNDERBELLY },
							["isDaily"] = true,
						}),
						q(43478, {	-- Experimental Potion: Test Subjects Needed
							["provider"] = { "n", 110642 },	-- Fizzi Liverzapper
							["coord"] = { 75.4, 83.4, LEGION_THE_UNDERBELLY },
							["isDaily"] = true,
						}),
					}),
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
							["groups"] = {
								i(136803),	-- Dirty Tricks, Vol 1: Detection (CI!)
								i(136927),	-- Scarlet Confessional Book (TOY!)
								i(141056),	-- Technique: Glyph of Burnout (RECIPE!)
								i(136972),	-- Tome of Hex: Cockroach (CI!)
							},
						}),
						n(97362, {	-- Dazzik "Proudmoore" <Magical Things>
							["coord"] = { 66.2, 74.8, LEGION_THE_UNDERBELLY },
							["groups"] = {
								i(138016, {	-- Clothes Chest Pattern: Dalaran Citizens (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(137826, {	-- Design: Sorcerous Shadowruby Pendant [Rank 2]
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(139427, {	-- Wild Mana Wand
									["cost"] = { { "c", SIGHTLESS_EYE, 175 } },
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
							["groups"] = {
								i(139423, {	-- Croc Mojo
									["cost"] = { { "c", SIGHTLESS_EYE, 175 } },
								}),
								i(128625, {	-- Formula: Leylight Brazier (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(138031, {	-- Portal Key: Abandoned Shack (CI!)
									["cost"] = { { "c", SIGHTLESS_EYE, 100 } },
								}),
								i(138030, {	-- Portal Key: Alchemists' Lair (CI!)
									["cost"] = { { "c", SIGHTLESS_EYE, 100 } },
								}),
								i(138028, {	-- Portal Key: Black Market (CI!)
									["cost"] = { { "c", SIGHTLESS_EYE, 100 } },
								}),
								i(138029, {	-- Portal Key: Inn Entrance (CI!)
									["cost"] = { { "c", SIGHTLESS_EYE, 100 } },
								}),
								i(138032, {	-- Portal Key: Rear Entrance (CI!)
									["cost"] = { { "c", SIGHTLESS_EYE, 100 } },
								}),
								i(138027, {	-- Portal Key: Sewer Guard Station (CI!)
									["cost"] = { { "c", SIGHTLESS_EYE, 50 } },
								}),
								i(141058, {	-- Technique: Glyph of Critterhex (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 100 } },
								}),
							},
						}),
						n(97364, {	-- Laura Malley <Creatures>
							["coord"] = { 58.0, 58.1, LEGION_THE_UNDERBELLY },
							["groups"] = {
								i(137932, {	-- Pattern: Flaming Hoop (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 100 } },
								}),
								i(137934, {	-- Pattern: Leather Pet Leash (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 50 } },
								}),
								i(136904, {	-- Sewer-Pipe Jelly  (PET!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(139412, {	-- Young Mutant War Turtles
									["cost"] = { { "c", SIGHTLESS_EYE, 1500 } },
									["groups"] = { pet(1912) },	-- Young Mutant Warturtle (PET!)
								}),
							},
						}),
						n(97360, {	-- Matthew Rabis <Feral Warlock>
							["coord"] = { 47.0, 56.6, LEGION_THE_UNDERBELLY },
							["groups"] = {
								i(137828, {	-- Design: Twisted Pandemonite Choker [Rank 2] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(139425, {	-- Imp-Binding Contract
									["cost"] = { { "c", SIGHTLESS_EYE, 225 } },
								}),
								i(139896, {	-- Skinning Technique: Legion Gutting (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(141066, {	-- Technique: Grimoire of the Voidlord (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 100 } },
								}),
							},
						}),
						n(97361, {	-- Oxana Demonslay <Weapons and Secrets>
							["coord"] = { 67.4, 18.1, LEGION_THE_UNDERBELLY },
							["groups"] = {
								i(137831, {	-- Design: Vindictive Pandemonite Choker [Rank 2] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(141038, {	-- Technique: Glyph of Shadow-Enemies (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 100 } },
								}),
							},
						}),
						n(107760, {	-- Strap Bucklebolt <Belts>
							["coord"] = { 65.8, 80.8, LEGION_THE_UNDERBELLY },
							["groups"] = {
								i(137966, {	-- Pattern: Imbued Silkweave Cinch [Rank 2] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(137974, {	-- Pattern: Imbued Silkweave Cinch [Rank 3] (RECIPE!)
									["cost"] = {
										{ "c", SIGHTLESS_EYE, 500 },
										{ "g", 15000000 },	-- 1,500g
									},
								}),
								i(137954, {	-- Pattern: Silkweave Cinch [Rank 2] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(137962, {	-- Pattern: Silkweave Cinch [Rank 3] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 500 } },
								}),
								i(137901, {	-- Pattern: Battlebound Girdle [Rank 2] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(137913, {	-- Pattern: Battlebound Girdle [Rank 3] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 500 } },
								}),
								i(123949, {	-- Plans: Demonsteel Waistguard [Rank 3] (RECIPE!)
									["cost"] = {
										{ "c", SIGHTLESS_EYE, 500 },
										{ "g", 15000000 },	-- 1,500g
									},
								}),
								i(137885, {	-- Pattern: Dreadleather Belt [Rank 2] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(137893, {	-- Pattern: Dreadleather Belt [Rank 3] (RECIPE!)
									["cost"] = {
										{ "c", SIGHTLESS_EYE, 500 },
										{ "g", 15000000 },	-- 1,500g
									},
								}),
								i(137917, {	-- Pattern: Gravenscale Girdle [Rank 2] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(137925, {	-- Pattern: Gravenscale Girdle [Rank 3] (RECIPE!)
									["cost"] = {
										{ "c", SIGHTLESS_EYE, 500 },
										{ "g", 15000000 },	-- 1,500g
									},
								}),
								i(123929, {	-- Plans: Leystone Waistguard [Rank 2] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(123937, {	-- Plans: Leystone Waistguard [Rank 3] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 500 } },
								}),
								i(137869, {	-- Pattern: Warhide Belt [Rank 2] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(137881, {	-- Pattern: Warhide Belt [Rank 3] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 500 } },
								}),
							},
						}),
						n(97366, {	-- The Widow <Tools of Deception>
							["coord"] = { 71.5, 24.0, LEGION_THE_UNDERBELLY },
							["groups"] = {
								i(137829, {	-- Design: Subtle Shadowruby Pendant [Rank 2] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(137706, {	-- Schematic: Gunpowder Charge [Rank 2] (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
								i(137720, {	-- Schematic: Gunpowder Charge [Rank 3] (RECIPE!)
									["cost"] = {
										{ "c", SIGHTLESS_EYE, 500 },
										{ "g", 15000000 },	-- 1,500g
									},
								}),
								i(141057, {	-- Technique: Glyph of Flash Bang (RECIPE!)
									["cost"] = { { "c", SIGHTLESS_EYE, 100 } },
								}),
								i(139426, {	-- Widowsister Contract
									["cost"] = { { "c", SIGHTLESS_EYE, 250 } },
								}),
							},
						}),
						n(105333, {	-- Val'zuun
							["coord"] = { 67.4, 63.1, LEGION_THE_UNDERBELLY },
							["groups"] = sharedData({
								["timeline"] = { ADDED_12_0_0 },
							}, {
								i(250693, {	-- Altar of the Corrupted Flames (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 18000 },
										{ "c", VEILED_ARGUNITE,    50 },
									},
								}),
								i(250406, {	-- Corruption Pit (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 18000 },
										{ "c", VEILED_ARGUNITE,    50 },
									},
								}),
								i(252753, {	-- Demonic Storage Chest (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 3000 },
										{ "c", VEILED_ARGUNITE,   50 },
									},
								}),
								i(250690, {	-- Eredar Lord’s Fel Torch (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 3000 },
										{ "c", VEILED_ARGUNITE,   50 },
									},
								}),
								i(251779, {	-- Fel Fountain (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 18000 },
										{ "c", VEILED_ARGUNITE,    50 },
									},
								}),
								i(258299, {	-- Hanging Felsteel Cage (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 12000 },
										{ "c", VEILED_ARGUNITE,    50 },
									},
								}),
								i(250404, {	-- Hanging Felsteel Chain (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 3000 },
										{ "c", VEILED_ARGUNITE,   50 },
									},
								}),
								i(256677, {	-- Large Legion Candle (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 3000 },
										{ "c", VEILED_ARGUNITE,   50 },
									},
								}),
								i(250407, {	-- Legion’s Fel Brazier (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 3000 },
										{ "c", VEILED_ARGUNITE,   50 },
									},
								}),
								i(250405, {	-- Legion’s Fel Torch (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 3000 },
										{ "c", VEILED_ARGUNITE,   50 },
									},
								}),
								i(250403, {	-- Legion’s Holo-Communicator (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 18000 },
										{ "c", VEILED_ARGUNITE,    50 },
									},
								}),
								i(250689, {	-- Legion Torture Rack (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 6000 },
										{ "c", VEILED_ARGUNITE,   50 },
									},
								}),
								i(251778, {	-- Sentinel’s Moonwing Gaze (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 18000 },
										{ "c", VEILED_ARGUNITE,    50 },
									},
								}),
								i(256678, {	-- Small Legion Candle (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 1500 },
										{ "c", VEILED_ARGUNITE,   50 },
									},
								}),
								i(250307, {	-- Tome of the Corrupt (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 6000 },
										{ "c", VEILED_ARGUNITE,   50 },
									},
								}),
								i(250622, {	-- Vertical Felsteel Chain (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 3000 },
										{ "c", VEILED_ARGUNITE,   50 },
									},
								}),
								i(250402, {	-- Vrykul Lord’s Throne (DECOR!)
									["cost"] = {
										{ "c", ORDER_RESOURCES, 18000 },
										{ "c", VEILED_ARGUNITE,    50 },
									},
								}),
							}),
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
