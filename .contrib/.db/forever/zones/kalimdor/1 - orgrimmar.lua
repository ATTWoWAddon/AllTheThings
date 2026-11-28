---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.KALIMDOR, MAP.ORGRIMMAR, {
	lore = "Named in honor of the legendary Orgrim Doomhammer, Orgrimmar was founded as the capital city of the orcs' new homeland. Built within a huge, winding canyon in the harsh land of Durotar, Orgrimmar stands as one of the mightiest warrior cities in the world. Behind Orgrimmar's immense walls, elderly shaman pass their knowledge on to the Horde's newest generation of leaders, while warriors spar in the gladiatorial arena, honing their skills in preparation for the trials that await them in this dangerous land.",
	zoneTextAreaIDs = {
		1637,	-- Orgrimmar
		2917,	-- Hall of Legends
	},
	icon = 255142,
	isRaid = true,
	groups = {
		n(FACTIONS, {
			faction(FACTION_DARKSPEAR_TROLLS, {	-- Darkspear Trolls
				icon = 236456,
				OnTooltip = [[_.OnTooltipDB.RuneclothTurnIns]],
				races = HORDE_ONLY,
			}),
			faction(FACTION_ORGRIMMAR, {
				icon = 236452,
				OnTooltip = [[_.OnTooltipDB.RuneclothTurnIns]],
				races = HORDE_ONLY,
			}),
		}),
		n(FLIGHT_PATHS, {
			fp(23, {	-- Orgrimmar, Durotar
				cr = 3310,	-- Doras <Wind Rider Master>
				coord = { 45.2, 63.8, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
			}),
		}),
		n(PROFESSIONS, {
			prof(ALCHEMY, {
				n(11046, {	-- Whuut <Journeyman Alchemist>
					coord = { 56.0, 33.8, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("ALCHEMY_APPRENTICE"),
						{"pop"},
					},
				}),
				n(3347, {	-- Yelmak <Expert Alchemist>
					coord = { 55.6, 46.6, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("ALCHEMY_JOURNEYMAN"),
						{"pop"},
					},
				}),
			}),
			prof(BLACKSMITHING, {
				n(11178, {	-- Borgosh Corebender <Weaponsmith>
					coord = { 79.6, 23.6, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("BLACKSMITHING_WEAPONSMITHING"),
						{"pop"},
					},
				}),
				n(11177, {	-- Okothos Ironrager <Armorsmith>
					coord = { 79.8, 23.8, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("BLACKSMITHING_ARMORSMITHING"),
						{"pop"},
					},
				}),
				n(3355, {	-- Saru Steelfury <Artisan Blacksmith>
					coord = { 76.4, 34.4, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("BLACKSMITHING_EXPERT"),
						{"pop"},
					},
				}),
				n(1383, {	-- Snarl <Expert Blacksmith>
					coord = { 79.8, 23.4, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("BLACKSMITHING_JOURNEYMAN"),
						{"pop"},
					},
				}),
				n(10266, {	-- Ug'thok <Journeyman Blacksmith>
					coord = { 80.6, 23.6, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("BLACKSMITHING_APPRENTICE"),
						{"pop"},
					},
				}),
			}),
			prof(COOKING, {
				n(3399, {	-- Zamja <Cooking Trainer>
					coord = { 57.4, 53.6, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("COOKING_APPRENTICE"),
						SymSelector.select("COOKING_JOURNEYMAN"),
						SymSelector.select("COOKING_EXPERT"),
						SymSelector.select("COOKING_ARTISAN"),
						{"pop"},
					},
				}),
			}),
			prof(ENCHANTING, {
				n(3345, {	-- Godan <Expert Enchanter>
					coord = { 53.8, 38.6, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("ENCHANTING_JOURNEYMAN"),
						{"pop"},
					},
				}),
				n(11066, {	-- Jhag <Journeyman Enchanter>
					coord = { 53.6, 38.2, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("ENCHANTING_APPRENTICE"),
						{"pop"},
					},
				}),
			}),
			prof(ENGINEERING, {
				n(3412, {	-- Nogg <Expert Engineer>
					coord = { 75.8, 25.2, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("ENGINEERING_JOURNEYMAN"),
						{"pop"},
					},
				}),
				n(11017, {	-- Roxxik <Artisan Engineer>
					coord = { 76.0, 25.0, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("ENGINEERING_EXPERT"),
						{"pop"},
					},
				}),
				n(2857, {	-- Thund <Journeyman Engineer>
					coord = { 75.8, 24.6, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("ENGINEERING_APPRENTICE"),
						{"pop"},
					},
				}),
			}),
			prof(FIRST_AID, {
				n(3373, {	-- Arnok <First Aid Trainer>
					coord = { 34.0, 84.4, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("FIRST_AID_APPRENTICE"),
						SymSelector.select("FIRST_AID_JOURNEYMAN"),
						SymSelector.select("FIRST_AID_EXPERT"),
						{"pop"},
					},
				}),
			}),
			prof(FISHING, {
				n(3332, {	-- Lumak <Fishing Trainer>
					coord = { 66.6, 41.6, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("FISHING_APPRENTICE"),
						SymSelector.select("FISHING_JOURNEYMAN"),
						{"pop"},
					},
				}),
			}),
			prof(HERBALISM, {
				n(3404, {	-- Jandi <Herbalism Trainer>
					coord = { 55.6, 39.6, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("HERBALISM_APPRENTICE"),
						SymSelector.select("HERBALISM_JOURNEYMAN"),
						SymSelector.select("HERBALISM_EXPERT"),
						SymSelector.select("HERBALISM_ARTISAN"),
						{"pop"},
					},
				}),
			}),
			prof(LEATHERWORKING, {
				n(5811, {	-- Kamari <Journeyman Leatherworker>
					coord = { 63.2, 44.4, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("LEATHERWORKING_APPRENTICE"),
						{"pop"},
					},
				}),
				n(3365, {	-- Karolek <Expert Leatherworker>
					coord = { 62.8, 44.6, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("LEATHERWORKING_JOURNEYMAN"),
						{"pop"},
					},
				}),
				n(7088, {	-- Thuwd <Skinning Trainer>
					coord = { 63.2, 45.2, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("LEATHERWORKING_APPRENTICE"),
						{"pop"},
					},
				}),
			}),
			prof(MINING, {
				n(3357, {	-- Makaru <Mining Trainer>
					coord = { 73.0, 27.0, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("MINING_APPRENTICE"),
						SymSelector.select("MINING_JOURNEYMAN"),
						SymSelector.select("MINING_EXPERT"),
						SymSelector.select("MINING_ARTISAN"),
						{"pop"},
					},
				}),
			}),
			prof(POISONS, {
				n(3327, {	-- Gest <Rogue Trainer>
					coord = { 42.8, 51.4, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("POISONS_RECIPES"),
						{"pop"},
					},
				}),
				n(3328, {	-- Ormok <Rogue Trainer>
					coord = { 44.6, 61.6, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("POISONS_RECIPES"),
						{"pop"},
					},
				}),
				n(3401, {	-- Shenthul <Rogue Trainer>
					coord = { 43.0, 53.4, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("POISONS_RECIPES"),
						{"pop"},
					},
				}),
			}),
			prof(SKINNING, {
				n(7088, {	-- Thuwd <Skinning Trainer>
					coord = { 63.2, 45.2, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("SKINNING_APPRENTICE"),
						SymSelector.select("SKINNING_JOURNEYMAN"),
						SymSelector.select("SKINNING_EXPERT"),
						SymSelector.select("SKINNING_ARTISAN"),
						{"pop"},
					},
				}),
			}),
			prof(TAILORING, {
				n(3363, {	-- Magar <Expert Tailor>
					coord = { 63.6, 50.0, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("TAILORING_JOURNEYMAN"),
						{"pop"},
					},
				}),
				n(2855, {	-- Snang <Journeyman Tailor>
					coord = { 63.0, 49.6, MAP.ORGRIMMAR },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("TAILORING_APPRENTICE"),
						{"pop"},
					},
				}),
			}),
		}),
		n(QUESTS, {
			q(7831, {	-- A Donation of Mageweave
				qg = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
				coord = { 63.4, 51.0, MAP.ORGRIMMAR },
				cost = { { "i", 4338, 60 } },	-- 60x Mageweave Cloth
				races = HORDE_ONLY,
				lvl = 40,
			}),
			q(7835, {	-- A Donation of Mageweave
				qg = 14727,	-- Vehena <Horde Cloth Quartermaster>
				coord = { 37.8, 87.6, MAP.ORGRIMMAR },
				cost = { { "i", 4338, 60 } },	-- 60x Mageweave Cloth
				races = HORDE_ONLY,
				lvl = 40,
			}),
			q(7824, {	-- A Donation of Runecloth
				qg = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
				coord = { 63.4, 51.0, MAP.ORGRIMMAR },
				cost = { { "i", 14047, 60 } },	-- 60x Runecloth
				races = HORDE_ONLY,
				lvl = 50,
			}),
			q(7836, {	-- A Donation of Runecloth
				qg = 14727,	-- Vehena <Horde Cloth Quartermaster>
				coord = { 37.8, 87.6, MAP.ORGRIMMAR },
				cost = { { "i", 14047, 60 } },	-- 60x Runecloth
				races = HORDE_ONLY,
				lvl = 50,
			}),
			q(7827, {	-- A Donation of Silk
				qg = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
				coord = { 63.4, 51.0, MAP.ORGRIMMAR },
				cost = { { "i", 4306, 60 } },	-- 60x Silk Cloth
				races = HORDE_ONLY,
				lvl = 26,
			}),
			q(7834, {	-- A Donation of Silk
				qg = 14727,	-- Vehena <Horde Cloth Quartermaster>
				coord = { 37.8, 87.6, MAP.ORGRIMMAR },
				cost = { { "i", 4306, 60 } },	-- 60x Silk Cloth
				races = HORDE_ONLY,
				lvl = 26,
			}),
			q(7826, {	-- A Donation of Wool
				qg = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
				coord = { 63.4, 51.0, MAP.ORGRIMMAR },
				cost = { { "i", 2592, 60 } },	-- 60x Wool Cloth
				races = HORDE_ONLY,
				lvl = 12,
			}),
			q(7833, {	-- A Donation of Wool
				qg = 14727,	-- Vehena <Horde Cloth Quartermaster>
				coord = { 37.8, 87.6, MAP.ORGRIMMAR },
				cost = { { "i", 2592, 60 } },	-- 60x Wool Cloth
				races = HORDE_ONLY,
				lvl = 12,
			}),
			q(7341, {	-- A Fair Trade
				qg = 14182,	-- Bounty Hunter Kolark
				coord = { 74.4, 26.4, MAP.ORGRIMMAR },
				cost = { { "i", 15997, 200 } },	-- 200x Thorium Shells
				races = HORDE_ONLY,
				repeatable = true,
				lvl = 52,
				groups = {
					i(18042),	-- Thorium Headed Arrow
				},
			}),
			q(95821, {	-- A Quick Craft [H]
				sourceQuest = 95820,	-- Karolek
				qg = 3365,	-- Karolek <Expert Leatherworker>
				coord = { 62.8, 44.6, MAP.ORGRIMMAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				cost = {
					{ "i", 4234, 30 },	-- Heavy Leather
					{ "i", 3860, 12 },	-- Mithril Bar
					{ "i", 3821, 5 },	-- Goldthorn
				},
				groups = {
					i(270877),	-- Alchemy Sign
					i(270878),	-- Blacksmithing Sign
					i(270880),	-- Enchanting Sign
					i(270881),	-- Engineering Sign
					i(270882),	-- Leatherworking Sign
					i(270883),	-- Tailoring Sign
					i(270870),	-- Orcish Tradeskill Signpost
				},
			}),
			q(7832, {	-- Additional Runecloth [Darkspear Trolls]
				sourceQuest = 7824,	-- A Donation of Runecloth
				qg = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
				coord = { 63.4, 51.0, MAP.ORGRIMMAR },
				maxReputation = { FACTION_DARKSPEAR_TROLLS, EXALTED },
				cost = { { "i", 14047, 20 } },	-- 20x Runecloth
				races = HORDE_ONLY,
				repeatable = true,
				lvl = 50,
			}),
			q(7837, {	-- Additional Runecloth [Orgrimmar]
				sourceQuest = 7836,	-- A Donation of Runecloth
				qg = 14727,	-- Vehena <Horde Cloth Quartermaster>
				coord = { 37.8, 87.6, MAP.ORGRIMMAR },
				maxReputation = { FACTION_ORGRIMMAR, EXALTED },
				cost = { { "i", 14047, 20 } },	-- 20x Runecloth
				races = HORDE_ONLY,
				repeatable = true,
				lvl = 50,
			}),
			q(2751, {	-- Barbaric Battlements
				qg = 7790,	-- Orokk Omosh
				coord = { 79.4, 22.4, MAP.ORGRIMMAR },
				cost = {
					{ "i", 2868, 2 },	-- 2x Patterned Bronze Bracers
					{ "i", 7957, 2 },	-- 2x Bronze Greatsword
					{ "i", 5635, 2 },	-- 2x Sharp Claw
				},
				requireSkill = BLACKSMITHING,
				learnedAt = 140,
				races = HORDE_ONLY,
				lvl = 32,
				groups = {
					i(7979, {	-- Plans: Barbaric Iron Breastplate (RECIPE!)
						description = "This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
					}),
				},
			}),
			q(96875, {	-- Beasts of Thunder Ridge
				qg = 5811,	-- Kamari <Journeyman Leatherworker>
				coord = { 63.2, 44.4, MAP.ORGRIMMAR },
				cost = { { "i", 4231, 2 } },	-- 2x Cured Light Hide
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				requireSkill = LEATHERWORKING,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/5 Rough Lizard Hide
						provider = { "i", 275720 },	-- Rough Lizard Hide
						crs = {
							3131,	-- Lightning Hide
							3130,	-- Thunder Lizard
						},
						coord = { 40.0, 24.1, MAP.DUROTAR },
					}),
					i(277716),	-- Pattern: Light Leather Reagent Bag (RECIPE!)
				},
			}),
			q(1508, {	-- Blind Cazul
				sourceQuests = {
					1507,	-- Devourer of Souls [Orgrimmar]
					1472,	-- Devourer of Souls [Undercity]
				},
				qg = 5909,	-- Cazul
				coord = { 47.2, 46.6, MAP.ORGRIMMAR },
				classes = { WARLOCK },
				races = { ORC, UNDEAD },
				lvl = 20,
			}),
			q(4300, {	-- Bone-Bladed Weapons
				qg = 8659,	-- Jes'rimon
				coord = { 55.6, 34.2, MAP.ORGRIMMAR },
				maps = { MAP.UNGORO_CRATER },
				races = HORDE_ONLY,
				lvl = 48,
				groups = {
					objective(1, {	-- 0/1 White Ravasaur Claw
						provider = { "i", 11477 },	-- White Ravasaur Claw
						crs = {
							9683,	-- Lar'korwi Mate
							6505,	-- Ravasaur
							6507,	-- Ravasaur Hunter
							6581,	-- Ravasaur Matriarch
							6506,	-- Ravasaur Runner
							6508,	-- Venomhide Ravasaur
						},
					}),
					i(11862),	-- White Bone Band
					i(11863),	-- White Bone Shredder
					i(11864),	-- White Bone Spear
				},
			}),
			q(2757, {	-- Booty Bay or Bust!
				sourceQuest = 2756,	-- The Old Ways
				qg = 7793,	-- Ox
				qi = 8663,	-- Mithril Insignia
				coord = { 80.4, 23.2, MAP.ORGRIMMAR },
				requireSkill = BLACKSMITHING,
				learnedAt = 210,
				races = HORDE_ONLY,
				lvl = 40,
			}),
			q(4511, {	-- Calm Before the Storm (2/2)
				sourceQuest = 4509,	-- Calm Before the Storm (1/2)
				qg = 7010,	-- Zilzibin Drumlore
				coord = { 56.4, 46.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 50,
				groups = {
					i(11870),	-- Oblivion Orb
					i(11871),	-- Snarkshaw Spaulders
					i(11872),	-- Eschewal Greaves
				},
			}),
			q(1501, {	-- Creature of the Void [Orgrimmar]
				sourceQuest = 1506,	-- Gan'rul's Summons
				altQuests = { 1473 },	-- Creature of the Void [Undercity]
				qg = 5875,	-- Gan'rul Bloodeye
				coord = { 48.2, 45.6, MAP.ORGRIMMAR },
				maps = { MAP.DUROTAR },
				races = { ORC, TROLL, UNDEAD },
				classes = { WARLOCK },
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Tablet of Verga
						providers = {
							{ "i", 6535 },	-- Tablet of Verga
							{ "o", 58595 },	-- Burning Blade Stash
						},
						coord = { 51.6, 9.7, MAP.DUROTAR },
					}),
				},
			}),
			q(2458, {	-- Deep Cover
				sourceQuest = 2460,	-- The Shattered Salute
				qg = 3401,	-- Shenthul
				qi = 8051,	-- Flare Gun
				coord = { 43.0, 53.4, MAP.ORGRIMMAR },
				classes = { ROGUE },
				races = HORDE_ONLY,
				lvl = 20,
			}),
			q(5646, {	-- Devouring Plague [Orgrimmar]
				altQuests = {
					5679,	-- Devouring Plague [Undercity]
					5644,	-- Devouring Plague [Thunder Bluff]
				},
				qg = 6018,	-- Ur'kyo <Priest Trainer>
				coord = { 35.6, 87.6, MAP.ORGRIMMAR },
				classes = { PRIEST },
				races = { UNDEAD },
				lvl = 20,
				groups = {
					{
						recipeID = 2944,	-- Devouring Plague (Rank 1)
						rank = 1,
					},
				},
			}),
			q(97249, {	-- Favorite Food
				sourceQuest = 97246,	-- Meal Appeal
				qg = 3368,	-- Borstan <Meat Vendor>
				qi = 277284,	-- Migi's Lunch (PQI!)
				coord = { 57.4, 53.4, MAP.ORGRIMMAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 5,
			}),
			q(2378, {	-- Find the Shattered Hand
				altQuests = { 2380 },	-- To Orgrimmar!
				qg = 6467,	-- Mennet Carkad
				coord = { 83.2, 69.0, MAP.UNDERCITY },
				classes = { ROGUE },
				races = HORDE_ONLY,
				isBreadcrumb = true,
				lvl = 16,
			}),
			q(5652, {	-- Hex of Weakness [Orgrimmar]
				altQuests = {
					5654,	-- Hex of Weakness [Durotar]
					5655,	-- Hex of Weakness [Mulgore]
					5656,	-- Hex of Weakness [Thunder Bluff]
					5657,	-- Hex of Weakness [Undercity]
				},
				qg = 6018,	-- Ur'kyo <Priest Trainer>
				coord = { 35.6, 87.6, MAP.ORGRIMMAR },
				classes = { PRIEST },
				races = { TROLL },
				lvl = 10,
				groups = {
					{
						recipeID = 9035,	-- Hex of Weakness (Rank 1)
						rank = 1,
					},
				},
			}),
			q(5726, {	-- Hidden Enemies (1/5)
				qg = 4949,	-- Thrall <Warchief>
				coord = { 32.0, 37.8, MAP.ORGRIMMAR },
				maps = { MAP.DUROTAR },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/1 Lieutenant's Insignia
						provider = { "i", 14544 },	-- Lieutenant's Insignia
						crs = {
							3198,	-- Burning Blade Apprentice
							3197,	-- Burning Blade Fanatic
						},
					}),
				},
			}),
			q(5727, {	-- Hidden Enemies (2/5)
				sourceQuest = 5726,	-- Hidden Enemies (1/5)
				qg = 4949,	-- Thrall <Warchief>
				coord = { 32.0, 37.8, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/1 Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
						provider = { "i", 14544 },	-- Lieutenant's Insignia
						coord = { 49.5, 50.6, MAP.ORGRIMMAR },
						cr = 3216,	-- Neeru Fireblade
					}),
				},
			}),
			q(2479, {	-- Hinott's Assistance (1/2)
				sourceQuest = 2478,	-- Mission: Possible But Not Probable
				qg = 3401,	-- Shenthul
				qi = 8087,	-- Sample of Zanzil's Altered Mixture
				coord = { 43.0, 53.4, MAP.ORGRIMMAR },
				classes = { ROGUE },
				races = HORDE_ONLY,
				lvl = 20,
			}),
			q(2754, {	-- Horns of Frenzy
				description =
					"Plans: Solid Iron Maul is a 1-in-stock recipe that can either be bought from Muuran at Ghost Walker Post in Desolace, or the Alliance-only vendor Jannos Ironwill at Refuge Pointe in Arathi Highlands.",
				sourceQuest = 2753,	-- Trampled Under Foot
				qg = 7790,	-- Orokk Omosh
				coord = { 79.4, 22.4, MAP.ORGRIMMAR },
				cost = {
					{ "i", 3851, 2 },	-- 2x Solid Iron Maul
					{ "i", 3482, 2 },	-- 2x Silvered Bronze Boots
					{ "i", 3483, 2 },	-- 2x Silvered Bronze Gauntlets
				},
				requireSkill = BLACKSMITHING,
				learnedAt = 140,
				races = HORDE_ONLY,
				lvl = 32,
				groups = {
					i(7980, {	-- Plans: Barbaric Iron Helm (RECIPE!)
						description = "This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
					}),
				},
			}),
			q(2755, {	-- Joys of Omosh
				sourceQuest = 2754,	-- Horns of Frenzy
				qg = 7790,	-- Orokk Omosh
				coord = { 79.4, 22.4, MAP.ORGRIMMAR },
				requireSkill = BLACKSMITHING,
				learnedAt = 140,
				races = HORDE_ONLY,
				lvl = 32,
				groups = {
					i(7982, {	-- Plans: Barbaric Iron Gloves (RECIPE!)
						description = "This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
					}),
				},
			}),
			q(1945, {	-- Laughing Sisters
				sourceQuest = 1944,	-- Waters of Xavian
				qg = 5885,	-- Deino <Mage Trainer>
				coord = { 38.6, 86.0, MAP.ORGRIMMAR },
				maps = { MAP.ASHENVALE },
				classes = { MAGE },
				races = { UNDEAD, TROLL },
				lvl = 26,
				groups = {
					objective(1, {	-- 0/12 Laughing Sister's Hair
						provider = { "i", 7270 },	-- Laughing Sister's Hair
						cr = 4054,	-- Laughing Sister
					}),
				},
			}),
			q(97194, {	-- Learning to Ride
				qg = 4752,	-- Kildar <Wolf Riding Instructor>
				coord = { 69.2, 13.2, MAP.ORGRIMMAR },
				races = { ORC },
				lvl = 40,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(65601, {	-- Love Hurts
				sourceQuest = 1507,	-- Devourer of Souls [Orgrimmar]
				qg = 5909,	-- Cazul
				coord = { 47.2, 46.6, MAP.ORGRIMMAR },
				classes = { WARLOCK },
				races = HORDE_ONLY,
				lvl = 20,
			}),
			q(4494, {	-- March of the Silithid (H)
				sourceQuest = 32,	-- Rise of the Silithid (H)
				qg = 7010,	-- Zilzibin Drumlore
				coord = { 55.2, 55.8, MAP.ORGRIMMAR },
				maps = { MAP.TANARIS },
				races = HORDE_ONLY,
				lvl = 50,
			}),
			q(97246, {	-- Meal Appeal
				qg = 268701,	-- Thatog
				coord = { 55.6, 72.0, MAP.ORGRIMMAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 5,
			}),
			q(1509, {	-- News of Dogran (1/2)
				sourceQuest = 1508,	-- Blind Cazul
				qg = 5910,	-- Zankaja
				coord = { 37.0, 59.6, MAP.ORGRIMMAR },
				classes = { WARLOCK },
				races = { ORC, UNDEAD },
				lvl = 20,
			}),
			q(2752, {	-- On Iron Pauldrons
				sourceQuest = 2751,	-- Barbaric Battlements
				qg = 7790,	-- Orokk Omosh
				coord = { 79.4, 22.4, MAP.ORGRIMMAR },
				cost = {
					{ "i", 7958, 4 },	-- 4x Bronze Battle Axe
					{ "i", 7956, 4 },	-- 4x Bronze Warhammer
				},
				requireSkill = BLACKSMITHING,
				learnedAt = 140,
				races = HORDE_ONLY,
				lvl = 32,
				groups = {
					i(7978, {	-- Plans: Barbaric Iron Shoulders (RECIPE!)
						description = "This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
					}),
				},
			}),
			q(91735, {	-- Remote Contact
				qg = 8659,	-- Jes'rimon
				coord = { 55.6, 34.0, MAP.ORGRIMMAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 44,
			}),
			q(97326, {	-- Rocks to Rests
				qg = 268684,	-- Thra
				coord = { 36.0, 28.2, MAP.ORGRIMMAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/8 Smooth Boulder
						providers = {
							{ "i", 277952 },	-- Smooth Boulder
							{ "o", 661446 },	-- Smooth Boulder
							{ "o", 661448 },	-- Smooth Boulder
							{ "o", 661449 },	-- Smooth Boulder
						},
					}),
					i(281272),	-- Brog's Friendship Bracelet
					i(281273),	-- Migi's Friendship Bracelet
					i(281269),	-- Mogra's Friendship Bracelet
					i(281271),	-- Puk's Friendship Bracelet
					i(281270),	-- Thra's Friendship Bracelet
				},
			}),
			q(5680, {	-- Shadowguard [Orgrimmar]
				altQuests = {
					5643,	-- Shadowguard [Undercity]
					5642,	-- Shadowguard [Thunder Bluff]
				},
				qg = 6018,	-- Ur'kyo <Priest Trainer>
				coord = { 35.6, 87.6, MAP.ORGRIMMAR },
				classes = { PRIEST },
				races = { TROLL },
				lvl = 20,
				groups = {
					{
						recipeID = 18137,	-- Shadowguard (Rank 1)
						rank = 1,
					},
				},
			}),
			q(1943, {	-- Speak with Deino
				qg = 4568,	-- Anastasia Hartwell <Mage Trainer>
				coord = { 85.0, 10.2, MAP.UNDERCITY },
				races = { UNDEAD, TROLL },
				classes = { MAGE },
				isBreadcrumb = true,
				lvl = 26,
			}),
			q(99204, {	-- Swift as the Wind (Orc)
				qg = 4752,	-- Kildar <Wolf Riding Instructor>
				coord = { 69.0, 13.8, MAP.ORGRIMMAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { ORC },
				lvl = 60,
				groups = {
					objective(1),	-- 0/1 Learn: Journeyman Riding
				},
			}),
			q(99201, {	-- Swift as the Wind (Troll)
				qg = 7953,	-- Xar'Ti <Raptor Riding Trainer>
				coord = { 55.2, 75.4, MAP.DUROTAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { TROLL },
				lvl = 60,
				groups = {
					objective(1),	-- 0/1 Learn: Journeyman Riding
				},
			}),
			q(65604, {	-- The Binding (Incubus) [Orgrimmar]
				sourceQuest = 65610,	-- Wish You Were Here
				altQuests = { 65597 },	-- The Binding (Incubus) [Undercity]
				qg = 5875,	-- Gan'rul Bloodeye
				coord = { 48.2, 45.6, MAP.ORGRIMMAR },
				classes = { WARLOCK },
				races = HORDE_ONLY,
				lvl = 20,
				groups = {
					objective(1, {	-- 0/1 Summoned Incubus slain
						provider = { "n", 185335 },	-- Summoned Incubus
						cost = { { "i", 190187, 1 } },	-- 1x Withered Scarf
					}),
					recipe(713),	-- Summon Incubus
					i(22243),	-- Small Soul Pouch
				},
			}),
			q(1513, {	-- The Binding (Succubus) [Orgrimmar]
				sourceQuest = 1512,	-- Love's Gift
				altQuests = { 1474 },	-- The Binding (Succubus) [Undercity]
				qg = 5875,	-- Gan'rul Bloodeye
				coord = { 48.2, 45.6, MAP.ORGRIMMAR },
				classes = { WARLOCK },
				races = HORDE_ONLY,
				lvl = 20,
				groups = {
					objective(1, {	-- 0/1 Summoned Succubus slain
						provider = { "n", 5677 },	-- Summoned Succubus
						cost = { { "i", 6626, 1 } },	-- 1x Dogran's Pendant
					}),
					recipe(712),	-- Summon Succubus
					i(22243),	-- Small Soul Pouch
				},
			}),
			q(1504, {	-- The Binding (Voidwalker) [Orgrimmar]
				sourceQuest = 1501,	-- Creature of the Void [Orgrimmar]
				altQuests = { 1471 },	-- The Binding (Voidwalker) [Undercity]
				qg = 5875,	-- Gan'rul Bloodeye
				coord = { 48.2, 45.6, MAP.ORGRIMMAR },
				races = { ORC, TROLL, UNDEAD },
				classes = { WARLOCK },
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Summoned Voidwalker slain
						provider = { "n", 5676 },	-- Summoned Voidwalker
						cost = { { "i", 7464, 1 } },	-- 1x Glyphs of Summoning
					}),
					recipe(697),	-- Summon Voidwalker
				},
			}),
			q(95283, {	-- The Missing Kor'kron
				qg = 3144,	-- Eitrigg
				coord = { 34.2, 39.0, MAP.ORGRIMMAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 48,
			}),
			q(2756, {	-- The Old Ways
				qg = 7792,	-- Aturk the Anvil
				coord = { 80.6, 23.2, MAP.ORGRIMMAR },
				cost = {
					{ "i", 7963, 4 },	-- 4x Steel Breastplate
					{ "i", 7922, 4 },	-- 4x Steel Plate Helm
				},
				requireSkill = BLACKSMITHING,
				learnedAt = 210,
				races = HORDE_ONLY,
				lvl = 40,
				groups = {
					recipe(9957),	-- Orcish War Leggings
				},
			}),
			q(1963, {	-- The Shattered Hand (1/2)
				sourceQuest = 1859,	-- Therzok
				qg = 6446,	-- Therzok
				coord = { 42.74, 53.52, MAP.ORGRIMMAR },
				maps = { MAP.THE_BARRENS },
				races = { ORC, TROLL },
				classes = { ROGUE },
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Tazan's Satchel
						provider = { "i", 7209 },	-- Tazan's Satchel
						coord = { 63.8, 44.6, MAP.THE_BARRENS },
						cr = 6494,	-- Tazan
					}),
				},
			}),
			q(1858, {	-- The Shattered Hand (2/2)
				sourceQuest = 1963,	-- The Shattered Hand (1/2)
				qg = 6446,	-- Therzok
				coord = { 42.74, 53.52, MAP.ORGRIMMAR },
				races = { ORC, TROLL },
				classes = { ROGUE },
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Tazan's Logbook
						providers = {
							{ "i", 7295 },	-- Tazan's Logbook
							{ "i", 7208 },	-- Tazan's Key
							{ "i", 7209 },	-- Tazan's Satchel
						},
						coord = { 54.2, 68.2, MAP.ORGRIMMAR },
						cr = 6466,	-- Gamon
					}),
					i(7298),	-- Blade of Cunning
				},
			}),
			q(2460, {	-- The Shattered Salute
				sourceQuest = 2380,	-- To Orgrimmar!
				qg = 3401,	-- Shenthul
				coord = { 43.0, 53.4, MAP.ORGRIMMAR },
				classes = { ROGUE },
				races = HORDE_ONLY,
				lvl = 20,
			}),
			q(6611, {	-- To Gadgetzan You Go!
				coord = { 57.4, 53.6, MAP.ORGRIMMAR },
				qg = 3399,	-- Zamja
				requireSkill = COOKING,
				learnedAt = 225,
				races = HORDE_ONLY,
				isBreadcrumb = true,
				lvl = 35,
			}),
			q(2380, {	-- To Orgrimmar!
				altQuests = { 2378 },	-- Find the Shattered Hand
				qg = 3170,	-- Kaplak
				coord = { 51.98, 43.70, MAP.DUROTAR },
				races = HORDE_ONLY,
				classes = { ROGUE },
				isBreadcrumb = true,
				lvl = 16,
			}),
			q(5662, {	-- Touch of Weakness [Orgrimmar]
				altQuests = {
					5658,	-- Touch of Weakness [Undercity]
					5660,	-- Touch of Weakness [Durotar]
					5661,	-- Touch of Weakness [Mulgore]
					5663,	-- Touch of Weakness [Thunder Bluff]
				},
				qg = 6018,	-- Ur'kyo <Priest Trainer>
				coord = { 35.6, 87.6, MAP.ORGRIMMAR },
				classes = { PRIEST },
				races = { UNDEAD },
				lvl = 10,
				groups = {
					{
						recipeID = 2652,	-- Touch of Weakness (Rank 1)
						rank = 1,
					},
				},
			}),
			q(2753, {	-- Trampled Under Foot
				sourceQuest = 2752,	-- On Iron Pauldrons
				qg = 7790,	-- Orokk Omosh
				coord = { 79.4, 22.4, MAP.ORGRIMMAR },
				cost = {
					{ "i", 3836, 4 },	-- 4x Green Iron Helm
					{ "i", 3835, 4 },	-- 4x Green Iron Bracers
					{ "i", 3842, 2 },	-- 2x Green Iron Leggings
				},
				requireSkill = BLACKSMITHING,
				learnedAt = 140,
				races = HORDE_ONLY,
				lvl = 32,
				groups = {
					i(7981, {	-- Plans: Barbaric Iron Boots (RECIPE!)
						description = "This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
					}),
				},
			}),
			q(91548, {	-- Vek'zol
				sourceQuest = 91547,	-- Sin'dorei Tome of Summoning
				qg = 3326,	-- Zevrost
				qi = 246778,	-- Sin'dorei Tome of Summoning (PQI!)
				coord = { 48.2, 45.6, MAP.ORGRIMMAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 44,
				groups = {
					objective(1, {	-- 0/1 Heart of Vek'zol
						provider = { "i", 246780 },	-- Heart of Vek'zol
					}),
					i(260186),	-- Darkblade
					i(260195),	-- Headdress of the Damned
					i(260196),	-- Belt of Shadows
				},
			}),
			q(1944, {	-- Waters of Xavian
				sourceQuest = 1943,	-- Speak with Deino
				qg = 5885,	-- Deino <Mage Trainer>
				coord = { 38.6, 86.0, MAP.ORGRIMMAR },
				maps = { MAP.ASHENVALE },
				races = { UNDEAD, TROLL },
				classes = { MAGE },
				lvl = 26,
				groups = {
					objective(1, {	-- 0/1 Xavian Water Sample
						providers = {
							{ "i", 7268 },	-- Xavian Water Sample
							{ "i", 7269 },	-- Deino's Flask
						},
						coord = { 76.0, 41.0, MAP.ASHENVALE },
					}),
				},
			}),
			q(97275, {	-- Whuut's the Rush
				qg = 3347,	-- Yelmak <Expert Alchemist>
				qi = 277566,	-- Yelmak's Potion (PQI!)
				coord = { 56.4, 33.2, MAP.ORGRIMMAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 9,
				sym = {{ "select", "itemID",
					929,	-- Healing Potion
					3385,	-- Lesser Mana Potion
				}},
			}),
			q(65610, {	-- Wish You Were Here
				sourceQuest = 65601,	-- Love Hurts
				altQuests = { 65593 },	-- Hearts of the Lovers
				qg = 3363,	-- Magar <Tailoring Trainer>
				coord = { 63.6, 50.0, MAP.ORGRIMMAR },
				maps = { MAP.ASHENVALE },
				classes = { WARLOCK },
				races = HORDE_ONLY,
				lvl = 20,
				groups = {
					objective(1, {	-- 0/1 Withered Scarf
						provider = { "i", 190232 },	-- Withered Scarf
						crs = {
							3782,	-- Shadethicket Stone Mover
							3784,	-- Shadethicket Bark Ripper
							3931,	-- Shadethicket Oracle
						},
					}),
				},
			}),
			q(7660, {	-- Wolf Swapping - Arctic Wolf
				description = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
				qg = 3362,	-- Ogunaro Wolfrunner
				coord = { 69.4, 12.4, MAP.ORGRIMMAR },
				timeline = { REMOVED_1_4_0 },
				cost = { { "i", 12351, 1 } },	-- 1x Arctic Wolf
				races = HORDE_ONLY,
				repeatable = true,
				_drop = { "g" },
				sym = { { "select", "itemID", 18796, 18798, 18797 } },
			}),
			q(7661, {	-- Wolf Swapping - Red Wolf
				description = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
				qg = 3362,	-- Ogunaro Wolfrunner
				coord = { 69.4, 12.4, MAP.ORGRIMMAR },
				timeline = { REMOVED_1_4_0 },
				cost = { { "i", 12330, 1 } },	-- 1x Red Wolf (MOUNT!)
				races = HORDE_ONLY,
				repeatable = true,
				_drop = { "g" },
				sym = { { "select", "itemID", 18796, 18798, 18797 } },
			}),
			q(2382, {	-- Wrenix of Ratchet
				sourceQuest = 2379,	-- Zando'zan
				qg = 3402,	-- Zando'zan
				coord = { 42.8, 53.0, MAP.ORGRIMMAR },
				classes = { ROGUE },
				races = HORDE_ONLY,
				lvl = 16,
			}),
			q(97242, {	-- Yelmak's Medley
				sourceQuest = 97246,	-- Meal Appeal
				qg = 3348,	-- Kor'geld <Alchemy Supplies>
				coord = { 56.2, 34.2, MAP.ORGRIMMAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/2 Handful of Cattails
						providers = {
							{ "i", 277278 },	-- Handful of Cattails
							{ "o", 661093 },	-- Cattail
						},
					}),
					objective(2, {	-- 0/4 Speargrass Cuttings
						providers = {
							{ "i", 277279 },	-- Speargrass Cuttings
							{ "o", 661092 },	-- Speargrass
						},
					}),
				},
			}),
			q(6608, {	-- You Too Good.
				qg = 3332,	-- Lumak <Fishing Trainer>
				coord = { 66.6, 41.6, MAP.ORGRIMMAR },	-- TODO: confirm if this is the correct coordinate for the fishing trainer in Orgrimmar
				requireSkill = FISHING,
				learnedAt = 225,
				races = HORDE_ONLY,
				isBreadcrumb = true,
				lvl = 35,
			}),
			q(2379, {	-- Zando'zan
				sourceQuest = 2378,	-- Find the Shattered Hand
				qg = 3401,	-- Shenthul
				coord = { 43.0, 53.4, MAP.ORGRIMMAR },
				classes = { ROGUE },
				races = HORDE_ONLY,
				lvl = 16,
			}),
		}),
		n(RIDING_TRAINER, {
			n(4752, {	-- Kildar <Wolf Riding Instructor>
				coord = { 69.2, 13.0, MAP.ORGRIMMAR },
				races = HORDE_ONLY,

				-- Available to Orcs without faction requirements.
				minReputation = { FACTION_ORGRIMMAR, EXALTED },
				OnInit = [[function(t)
					if _.RaceIndex == ]] .. ORC .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				groups = {
					recipe(825, {	-- Wolf Riding
						cost = 200000,
						lvl = 40,
					}),
				},
			}),
		}),
		n(TREASURES, {
			o(405149, {	-- Mural of Ta'zo
				coord = { 38.7, 78.4, MAP.ORGRIMMAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				groups = {
					i(207972),	-- The Lessons of Ta'zo
				},
			}),
		}),
		n(VENDORS, {
			n(5611, {	-- Barkeep Morag
				coord = { 54.0, 67.0, MAP.ORGRIMMAR },	-- The Broken Tusk
				races = HORDE_ONLY,
				sym = {
					{ "select", "symselector",
						SymSelector.VENDOR_FOOD_DRINK,	-- Drink
						SymSelector.VENDOR_FOOD_MEAT,	-- Meat
					},
					{ "pop" },
					{ "select", "itemID",
						2723,	-- Bottle of Dalaran Noir
						2594,	-- Flagon of Dwarven Honeymead/Mead
						2593,	-- Flask of Stormwind Tawny
						2595,	-- Jug of Badlands Bourbon
						2596,	-- Skin of Dwarven Stout
					},
				},
			}),
			n(3364, {	-- Borya <Tailoring Supplies>
				coord = { 63.0, 51.2, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				groups = {
					i(6270, {	-- Pattern: Blue Linen Vest (RECIPE!)
						isLimited = true,
					}),
					i(6274, {	-- Pattern: Blue Overalls (RECIPE!)
						isLimited = true,
					}),
					i(10314, {	-- Pattern: Lavender Mageweave Shirt (RECIPE!)
						isLimited = true,
					}),
					i(10317, {	-- Pattern: Pink Mageweave Shirt (RECIPE!)
						isLimited = true,
					}),
					i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(12793, {	-- Brave Stonehide <Officer Accessories Quartermaster>
				description = "Found within the Hall of Legends.",
				coord = { 40.6, 69.5, MAP.ORGRIMMAR },
				sym = {{ "select", "itemID", 272589, 272578, 274968 }},	-- Premier Sergeant's Cape/Cloak, Premier Senior Sergeant's Insignia
				races = HORDE_ONLY,
				groups = {
					i(274444, {	-- Greater Insignia of the Horde
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(18607),	-- Horde Battle Standard
					i(272449, {	-- Scout's Tabard
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(18839),	-- Combat Healing Potion
					i(18841),	-- Combat Mana Potion
					i(272450, {	-- Stone Guard's Herald
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			n(3367, {	-- Felika <Trade Supplies>
				description = "This NPC walks between the Valley of Wisdom and Valley of Strength on the right path.",
				coords = {
					{ 46.5, 36.6, MAP.ORGRIMMAR },
					{ 50.8, 58.7, MAP.ORGRIMMAR },
				},
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					277113,	-- Apprentice's Herb Pouch
					277115,	-- Apprentice's Mining Pack
					277114,	-- Apprentice's Skinning Satchel
					2325,	-- Black Dye
					5956,	-- Blacksmith Hammer
					2324,	-- Bleach
					6260,	-- Blue Dye
					6532,	-- Bright Baubles
					3857,	-- Coal
					2320,	-- Coarse Thread
					6217,	-- Copper Rod
					8925,	-- Crystal Vial
					3371,	-- Empty Vial
					2321,	-- Fine Thread
					6256,	-- Fishing Pole
					2605,	-- Green Dye
					4340,	-- Gray Dye
					8343,	-- Heavy Silken Thread
					4400,	-- Heavy Stock
					2692,	-- Hot Spices
					3372,	-- Leaded Vial
					2678,	-- Mild Spices
					2901,	-- Mining Pick
					6530,	-- Nightcrawlers
					4342,	-- Purple Dye
					2604,	-- Red Dye
					4289,	-- Salt
					6529,	-- Shiny Bauble
					4536,	-- Shiny Red Apple
					4291,	-- Silken Thread
					7005,	-- Skinning Knife
					3713,	-- Soothing Spices
					3466,	-- Strong Flux
					2880,	-- Weak Flux
					4399,	-- Wooden Stock
					4341,	-- Yellow Dye
				}},
			}),
			n(4043, {	-- Galthuk <Two-Handed Weapons Merchant>
				coord = { 76.0, 37.2, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					2523,	-- Bullova
					2521,	-- Flamberge
					2531,	-- Great Axe
					2525,	-- War Hammer
					2533,	-- War Maul
					2529,	-- Zweihander
				}},
			}),
			n(5188, {	-- Garyl <Tabard Vendor>
				coord = { 47.6, 75.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID", 5976 }},	-- Guild Tabard
			}),
			n(3358, {	-- Gorina <Mining Supplies>
				coord = { 73.2, 26.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{ "sub", "common_vendor", 4599 }},	-- Sarah Killan <Mining Supplies>
			}),
			n(3335, {	-- Hagrus <Reagents>
				coord = { 46.2, 46.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				groups = {
					i(5643, {	-- Recipe: Great Rage Potion (RECIPE!)
						isLimited = true,
					}),
					i(5640, {	-- Recipe: Rage Potion (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(3316, {	-- Handor <Cloth & Leather Armor Merchant>
				coord = { 62.8, 44.8, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {
					{ "select", "symselector",
						SymSelector.VENDOR_CUIRBOULLI,	-- Cuirboulli
						SymSelector.VENDOR_EMBROIDERED,	-- Embroidered
						SymSelector.VENDOR_PADDED,	-- Padded
						SymSelector.VENDOR_REINFORCED_LEATHER,	-- Reinforced Leather
						SymSelector.VENDOR_RUSSET,	-- Russet
						SymSelector.VENDOR_STUDDED,	-- Studded
					},
					{ "pop" },
					{ "select", "itemID",
						2463,	-- Studded Doublet
					},
				},
				groups = {
					i(12256, {	-- Cindercloth Leggings
						isLimited = true,
					}),
				},
			}),
			n(3410, {	-- Jin'sora <Bow Merchant>
				coord = { 77.8, 38.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					11303,	-- Fine Shortbow
					11307,	-- Massive Longbow
					11306,	-- Sturdy Recurve
				}},
			}),
			n(3322, {	-- Kaja <Bow & Rifle Vendor>
				coord = { 40.8, 49.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					3024,	-- BKP 2700 "Enforcer"
					3027,	-- Heavy Recurve Bow
					2511,	-- Hunter's Boomstick
					3023,	-- Large Bore Blunderbuss
					2509,	-- Ornate Blunderbuss
					3026,	-- Reinforced Bow
				}},
				groups = {
					i(3025),	-- Bkp 42 Ultra
				},
			}),
			n(3331, {	-- Kareth
				coord = { 46.8, 63.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{"select","itemID",
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
					2208,	-- Poniard
					2534,	-- Rondel
					2027,	-- Scimitar
				}},
			}),
			n(5816, {	-- Katis
				coord = { 45.8, 57.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					5239,	-- Blackbone Wand
					5210,	-- Burning Wand
					5236,	-- Combustible Wand
					5211,	-- Dusk Wand
					5209,	-- Gloom Wand
					5347,	-- Pestilent Wand
					5238,	-- Pitchwood Wand
					5208,	-- Smoldering Wand
				}},
			}),
			n(3359, {	-- Kiro <War Harness Maker>
				coord = { 66.8, 50.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				groups = {
					i(6526),	-- Battle Harness
					i(6523),	-- Buckled Harness
					i(6525),	-- Grunt's Harness
					i(6524),	-- Studded Leather Harness
				},
			}),
			n(3346, {	-- Kithas <Enchanting Supplies>
				coord = { 53.6, 38.0, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {
					SymSelector.select("VENDOR_ENCHANTING_RECIPES"),
					{"pop"},
				},
				groups = {
					i(6349, {	-- Formula: Enchant 2H Weapon - Lesser Intellect (RECIPE!)
						isLimited = true,
					}),
					i(6346, {	-- Formula: Enchant Chest - Lesser Intellect (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(8122, {	-- Kizzak Sparks
				coord = { 57.8, 56.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				description =
					"This NPC is only available on July 4th (US) or September 30th (EU).",
				groups = {
					i(8626),	-- Blue Sparkler
					i(8625),	-- White Sparkler
					i(8624),	-- Red Sparkler
				},
			}),
			n(3348, {	-- Kor'geld <Alchemy Supplies>
				coord = { 56.2, 34.2, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				groups = {
					i(13478, {	-- Recipe: Elixir of Greater Defense (RECIPE!)
						isLimited = true,
					}),
					i(5642, {	-- Recipe: Free Action Potion (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(3360, {	-- Koru
				coord = { 76.2, 37.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{"select","itemID",
					925,	-- Flail
					1197,	-- Giant Mace
					2030,	-- Gnarled Staff
					2028,	-- Hammer
					928,	-- Long Staff
					852,	-- Mace
					924,	-- Maul
					854,	-- Quarter Staff
					2026,	-- Rock Hammer
				}},
			}),
			n(12792, {	-- Lady Palanseer <Armor Quartermaster>
				description = "Found within the Hall of Legends.",
				sym = {	-- Premier Armor
					SymSelector.select("PREMIER_PVP_HORDE"),
					{ "pop" },
					{ "exclude", "headerID", WEAPONS },
					{ "exclude", "itemID", 272589, 272578, 274968 },	-- Premier Sergeant's Cape/Cloak, Premier Senior Sergeant's Insignia (Brave Stonehide)
					{ "select", "itemID",
						275244,	-- Premier Emboldened Belt Seal
						275238,	-- Premier Emboldened Chest Seal
						275243,	-- Premier Emboldened Feet Seal
						275239,	-- Premier Emboldened Hands Seal
						275241,	-- Premier Emboldened Head Seal
						275242,	-- Premier Emboldened Legs Seal
						275229,	-- Premier Emboldened Shoulder Seal
						275240,	-- Premier Emboldened Wrist Seal
					},
				},
				races = HORDE_ONLY,
			}),
			n(268745, {	-- Mayhoa Skyhoof <Girl with Puppies>
				coord = { 37.0, 29.0, MAP.ORGRIMMAR },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					i(277508, {	-- Prairie Wolf Pup Carrier (PET!)
						isLimited = true,
					}),
				},
			}),
			n(3321, {	-- Morgum <Leather Armor Merchant>
				coord = { 56.0, 73.2, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {
					{ "select", "symselector",
						SymSelector.VENDOR_BATTERED_LEATHER,	-- Battered Leather
						SymSelector.VENDOR_CURED_LEATHER,	-- Cured Leather
						SymSelector.VENDOR_TANNED_LEATHER,	-- Tanned Leather
					},
					{ "pop" },
				},
				groups = {
					i(2370),	-- Battered Leather Harness
				},
			}),
			n(3330, {	-- Muragus
				coord = { 46.0, 57.8, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					2527,	-- Battle Staff
					2535,	-- War Staff
				}},
			}),
			n(3362, {	-- Ogunaro Wolfrunner <Kennel Master>
				coord = { 69.4, 12.4, MAP.ORGRIMMAR },
				-- Available to Orcs without faction requirements.
				minReputation = { FACTION_ORGRIMMAR, EXALTED },
				OnInit = [[function(t)
					if _.RaceIndex == ]] .. ORC .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				races = HORDE_ONLY,
				groups = {
					i(5668),	-- Brown Wolf (MOUNT!)
					i(5665),	-- Dire Wolf (MOUNT!)
					i(1041, {	-- Black Wolf (MOUNT!)
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(18796),	-- Swift Brown Wolf (MOUNT!)
					i(18797),	-- Swift Timber Wolf (MOUNT!)
					i(18798),	-- Swift Gray Wolf (MOUNT!)
					i(1132),	-- Timber Wolf (MOUNT!)
					i(12351, {	-- Arctic Wolf (MOUNT!)
						timeline = { REMOVED_1_4_0 },
					}),
					i(12330, {	-- Red Wolf (MOUNT!)
						timeline = { REMOVED_1_4_0 },
					}),
				},
			}),
			n(3317, {	-- Ollanus <Cloth Armor Merchant>
				coord = { 60.6, 58.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {
					{ "select", "symselector",
						SymSelector.VENDOR_HEAVY_WEAVE,	-- Heavy Weave
						SymSelector.VENDOR_THICK_CLOTH,	-- Thick Cloth
						SymSelector.VENDOR_WOVEN,	-- Woven
					},
					{ "pop" },
				},
				groups = {
					i(3428),	-- Common Gray Shirt
					i(16059),	-- Common Brown Shirt
					i(16060),	-- Common White Shirt
				},
			}),
			n(12796, {	-- Raider Bork <War Mount Quartermaster> [WRATH+] / Raider Bork <Mount Quartermaster>
				description = "Found within the Hall of Legends.",
				races = HORDE_ONLY,
				groups = pvp({
					i(18247),	-- Black War Kodo (MOUNT!)
					i(18246),	-- Black War Raptor (MOUNT!)
					i(18245),	-- Black War Wolf (MOUNT!)
					i(18248),	-- Red Skeletal Warhorse (MOUNT!)
				}),
			}),
			n(3334, {	-- Rekkul
				coord = { 44.0, 58.4, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
			}),
			-- TODO: Finish this part.
			n(3319, {	-- Sana <Mail Armor Merchant>
				coords = {
					{ 55.6, 73.6, MAP.ORGRIMMAR },
					{ 55.8, 73.0, MAP.ORGRIMMAR },
				},
				races = HORDE_ONLY,
				sym = {
					{ "select", "symselector",
						SymSelector.VENDOR_CHAINMAIL,	-- Chainmail
						SymSelector.VENDOR_LIGHT_CHAIN,	-- Light Chain
						SymSelector.VENDOR_SCALEMAIL,	-- Scalemail
					},
					{ "pop" },
					{ "select", "itemID",
						17187,	-- Banded Buckler
						2445,	-- Large Metal Shield
						17188,	-- Ringed Buckler
						17185,	-- Round Buckler
						1202,	-- Wall Shield
						2376,	-- Worn Heater Shield
					},
				},
			}),
			n(14581, {	-- Sergeant Thunderhorn <Weapons Quartermaster>
				description = "Found within the Hall of Legends.",
				sym = {
					SymSelector.select("PREMIER_PVP_HORDE"),
					{ "find", "headerID", WEAPONS },	-- Premier High Warlord Weapons
					{ "pop" },
				},
				races = HORDE_ONLY,
			}),
			n(3333, {	-- Shankys <Fishing Supplies>
				coord = { 66.6, 41.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					6368,	-- Recipe: Rainbow Fin Albacore (RECIPE!)
				}},
				groups = {
					i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
					i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
				},
			}),
			n(5817, {	-- Shimra <Trade Supplies>
				coord = { 47.8, 80.5, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					277113,	-- Apprentice's Herb Pouch
					277115,	-- Apprentice's Mining Pack
					277114,	-- Apprentice's Skinning Satchel
					2325,	-- Black Dye
					5956,	-- Blacksmith Hammer
					2324,	-- Bleach
					6260,	-- Blue Dye
					6532,	-- Bright Baubles
					3857,	-- Coal
					2320,	-- Coarse Thread
					6217,	-- Copper Rod
					8925,	-- Crystal Vial
					3371,	-- Empty Vial
					2321,	-- Fine Thread
					6256,	-- Fishing Pole
					2605,	-- Green Dye
					4340,	-- Gray Dye
					8343,	-- Heavy Silken Thread
					4400,	-- Heavy Stock
					2692,	-- Hot Spices
					3372,	-- Leaded Vial
					2678,	-- Mild Spices
					2901,	-- Mining Pick
					6530,	-- Nightcrawlers
					4342,	-- Purple Dye
					2604,	-- Red Dye
					4289,	-- Salt
					6529,	-- Shiny Bauble
					4536,	-- Shiny Red Apple
					4291,	-- Silken Thread
					7005,	-- Skinning Knife
					3713,	-- Soothing Spices
					3466,	-- Strong Flux
					2880,	-- Weak Flux
					4399,	-- Wooden Stock
					4341,	-- Yellow Dye
				}},
			}),
			n(3361, {	-- Shoma <Weapon Vendor>
				coord = { 76.0, 37.8, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					2520,	-- Broadsword
					1198,	-- Claymore
					851,	-- Cutlass
					922,	-- Dacian Falx
					2024,	-- Espadon
					2528,	-- Falchion
					2207,	-- Jambiya
					2209,	-- Kris
					15909,	-- Left-Handed Blades
					15906,	-- Left-Handed Brass Knuckles
					15907,	-- Left-Handed Claw
					923,	-- Longsword
					2526,	-- Main Gauche
					2208,	-- Poniard
					15904,	-- Right-Handed Blades
					15905,	-- Right-Handed Brass Knuckles
					15903,	-- Right-Handed Claw
					2534,	-- Rondel
					2027,	-- Scimitar
				}},
			}),
			n(3413, {	-- Sovik <Engineering Supplies>
				coord = { 75.6, 25.2, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				groups = {
					i(18647, {	-- Schematic: Red Firework (RECIPE!)
						isLimited = true,
					}),
					i(16041, {	-- Schematic: Thorium Grenade (RECIPE!)
						isLimited = true,
					}),
					i(16042, {	-- Schematic: Thorium Widget (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(3356, {	-- Sumi <Blacksmithing Supplies>
				coord = { 82.4, 23.8, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				groups = {
					i(12162, {	-- Plans: Hardened Iron Shortsword (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(3366, {	-- Tamar <Leatherworking Supplies>
				coord = { 63.0, 45.2, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				groups = {
					i(18731, {	-- Pattern: Heavy Leather Ball (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(3315, {	-- Tor'phan <Cloth & Leather Armor Merchant>
				coord = { 62.6, 50.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {
					{ "select", "symselector",
						SymSelector.VENDOR_CUIRBOULLI,	-- Cuirboulli
						SymSelector.VENDOR_EMBROIDERED,	-- Embroidered
						SymSelector.VENDOR_PADDED,	-- Padded
						SymSelector.VENDOR_REINFORCED_LEATHER,	-- Reinforced Leather
						SymSelector.VENDOR_ROBES,	-- Robes
						SymSelector.VENDOR_RUSSET,	-- Russet
						SymSelector.VENDOR_STUDDED,	-- Studded
					},
					{ "pop" },
				},
				groups = {
					i(12255, {	-- Pale Leggings
						isLimited = true,
					}),
					i(2463),	-- Studded Doublet
				},
			}),
			n(5812, {	-- Tumi <Heavy Armor Merchant>
				coord = { 82.4, 23.6, ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {
					{ "select", "symselector",
						SymSelector.VENDOR_AUGMENTED_CHAIN,	-- Augmented Chain
						SymSelector.VENDOR_BRIGANDINE,	-- Brigandine
						SymSelector.VENDOR_CHAINMAIL,	-- Chainmail
						SymSelector.VENDOR_LIGHT_MAIL,	-- Light Mail
						SymSelector.VENDOR_PLATEMAIL,	-- Platemail
						SymSelector.VENDOR_POLISHED_SCALE,	-- Polished Scale
						SymSelector.VENDOR_SCALEMAIL,	-- Scalemail
					},
					{ "pop" },
					{ "select", "itemID",
						2451,	-- Crested Heater Shield
						2448,	-- Heavy Pavise
						2446,	-- Kite Shield
						17189,	-- Metal Buckler
						17190,	-- Ornate Buckler
						17192,	-- Reinforced Targe
					},
				},
			}),
			n(3314, {	-- Urtharo <Weapon Merchant>
				coord = { 47.4, 68.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{"select","itemID",
					1194,	-- Bastard Sword
					2479,	-- Broad Axe
					1198,	-- Claymore
					2130,	-- Club
					2492,	-- Cudgel
					851,	-- Cutlass
					2139,	-- Dirk
					1197,	-- Giant Mace
					2488,	-- Gladius
					2134,	-- Hand Axe
					853,	-- Hatchet
					2207,	-- Jambiya
					2491,	-- Large Axe
					2480,	-- Large Club
					852,	-- Mace
					854,	-- Quarter Staff
					2132,	-- Short Staff
					2131,	-- Shortsword
					2494,	-- Stiletto
					1196,	-- Tabar
					2490,	-- Tomahawk
					2489,	-- Two-handed Sword
					2495,	-- Walking Stick
					2493,	-- Wooden Mallet
				}},
			}),
			n(8404, {	-- Xan'tish <Snake Vendor>
				description = "This NPC walks around in a circle in the Valley of Spirits.",
				coord = { 37.6, 75.8, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				groups = {
					i(10360),	-- Black Kingsnake (PET!)
					i(10361),	-- Brown Snake (PET!)
					i(10392),	-- Crimson Snake (PET!)
					i(280703, {	-- Jungle Boa (PET!)
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			n(3400, {	-- Xen'to <Cooking Supplies>
				coord = { 57.6, 53.2, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					2692,	-- Hot Spices
					2678,	-- Mild Spices
					21219,	-- Recipe: Sagefish Delight (RECIPE!)
					21099,	-- Recipe: Smoked Sagefish (RECIPE!)
					159,	-- Refreshing Spring Water
					4536,	-- Shiny Red Apple
					10284,	-- Simple Flour
					4470,	-- Simple Wood
					3713,	-- Soothing Spices
					11291,	-- Star Wood
					272941,	-- Thick Logs
				}},
			}),
			n(3405, {	-- Zeal'aya <Herbalism Supplies>
				coord = { 55.0, 39.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					22250,	-- Herb Pouch
				}},
			}),
			n(3409, {	-- Zendo'jian <Weapon Vendor>
				coord = { 75.0, 36.6, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				sym = {{"select","itemID",
					926,	-- Battle Axe
					2025,	-- Bearded Axe
					2029,	-- Cleaver
					927,	-- Double Axe
					2030,	-- Gnarled Staff
					853,	-- Hatchet
					2507,	-- Laminated Recurve Bow
					928,	-- Long Staff
					854,	-- Quarter Staff
					3026,	-- Reinforced Bow
					1196,	-- Tabar
					2495,	-- Walking Stick
				}},
			}),
		}),
	},
});
