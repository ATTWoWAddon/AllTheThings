---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.KALIMDOR, MAP.THUNDER_BLUFF, {
	lore = "Thunder Bluff is the Tauren capital city located in the northern part of the region of Mulgore. The whole of the city is built on bluffs several hundred feet above the surrounding landscape, and is accessible by elevators on the southwestern and northeastern sides.",
	icon = 255144,
	isRaid = true,
	groups = {
		n(FACTIONS, {
			faction(FACTION_THUNDER_BLUFF, {	-- Thunder Bluff
				icon = 236454,
				OnTooltip = [[_.OnTooltipDB.RuneclothTurnIns]],
				races = HORDE_ONLY,
			}),
		}),
		n(FLIGHT_PATHS, {
			fp(22, {	-- Thunder Bluff, Mulgore
				cr = 2995,	-- Tal <Wind Rider Master>
				coord = { 46.8, 50.0, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
			}),
		}),
		n(PROFESSIONS, {
			prof(ALCHEMY, {
				n(3009, {	-- Bena Winterhoof <Expert Alchemist>
					coord = { 46.8, 33.4, MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("ALCHEMY_JOURNEYMAN"),
						{"pop"},
					},
				}),
				n(11047, {	-- Kray <Journeyman Alchemist>
					coord = { 46.8, 34.2, MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("ALCHEMY_APPRENTICE"),
						{"pop"},
					},
				}),
			}),
			prof(BLACKSMITHING, {
				n(2998, {	-- Karn Stonehoof <Expert Blacksmith>
					coord = { 38.8, 54.0, MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("BLACKSMITHING_JOURNEYMAN"),
						{"pop"},
					},
				}),
				n(10278, {	-- Thrag Stonehoof <Journeyman Blacksmith>
					coord = { 39.0, 57.8, MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("BLACKSMITHING_APPRENTICE"),
						{"pop"},
					},
				}),
			}),
			prof(COOKING, {
				n(3026, {	-- Aska Mistrunner <Cooking Trainer>
					coord = { 50.8, 52.4, MAP.THUNDER_BLUFF },
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
				n(11071, {	-- Mot Dawnstrider <Journeyman Enchanter>
					coord = { 43.8, 37.8, MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("ENCHANTING_APPRENTICE"),
						{"pop"},
					},
				}),
				n(3011, {	-- Teg Dawnstrider <Expert Enchanter>
					coord = { 44.8, 37.4, MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("ENCHANTING_JOURNEYMAN"),
						{"pop"},
					},
				}),
			}),
			prof(FIRST_AID, {
				n(2798, {	-- Pand Stonebinder <First Aid Trainer>
					coord = { 29.4, 21.4, MAP.THUNDER_BLUFF },
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
				n(3028, {	-- Kah Mistrunner <Fishing Trainer>
					coord = { 55.8, 47.6, MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("FISHING_APPRENTICE"),
						SymSelector.select("FISHING_JOURNEYMAN"),
						{"pop"},
					},
				}),
			}),
			prof(HERBALISM, {
				n(3013, {	-- Komin Winterhoof <Herbalism Trainer>
					coord = { 49.4, 39.2, MAP.THUNDER_BLUFF },
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
				n(3008, {	-- Mak <Journeyman Leatherworker>
					coord = { 42.2, 43.2, MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("LEATHERWORKING_APPRENTICE"),
						{"pop"},
					},
				}),
				n(11084, {	-- Tarn <Expert Leatherworker>
					coord = { 42.4, 43.0, MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("LEATHERWORKING_JOURNEYMAN"),
						{"pop"},
					},
				}),
				n(3007, {	-- Una <Artisan Leatherworker>
					coord = { 41.8, 42.6, MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("LEATHERWORKING_EXPERT"),
						{"pop"},
					},
				}),
			}),
			prof(MINING, {
				n(3001, {	-- Brek Stonehoof <Mining Trainer>
					coord = { 34.4, 57.4, MAP.THUNDER_BLUFF },
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
				n(205729, {	-- Boarton Shadetotem <Rogue Trainer?>
					coord = { 39.4, 64.4, MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("POISONS_RECIPES"),
						{"pop"},
					},
				}),
			}),
			prof(SKINNING, {
				n(7089, {	-- Mooranta <Skinning Trainer>
					coord = { 44.4, 42.4, MAP.THUNDER_BLUFF },
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
				n(3004, {	-- Tepa <Expert Tailor>
					coord = { 43.8, 44.4, MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("TAILORING_JOURNEYMAN"),
						{"pop"},
					},
				}),
				n(11051, {	-- Vhan <Journeyman Tailor>
					coord = { 43.4, 43.6, MAP.THUNDER_BLUFF },
					races = HORDE_ONLY,
					sym = {
						SymSelector.select("TAILORING_APPRENTICE"),
						{"pop"},
					},
				}),
			}),
		}),
		n(QUESTS, {
			q(6361, {	-- A Bundle of Hides
				qg = 3483,	-- Jahan Hawkwing <Leather & Mail Armor Merchant>
				qi = 16282,	-- Bundle of Hides
				coord = { 51.2, 29.0, MAP.THE_BARRENS },
				races = { TAUREN },
				lvl = 10,
			}),
			q(7822, {	-- A Donation of Mageweave
				qg = 14728,	-- Rumstag Proudstrider
				coord = { 43.2, 42.8, MAP.THUNDER_BLUFF },
				cost = { { "i", 4338, 60 } },	-- 60x Mageweave Cloth
				races = HORDE_ONLY,
				lvl = 40,
			}),
			q(7823, {	-- A Donation of Runecloth
				qg = 14728,	-- Rumstag Proudstrider
				coord = { 43.2, 42.8, MAP.THUNDER_BLUFF },
				cost = { { "i", 14047, 60 } },	-- 60x Runecloth
				races = HORDE_ONLY,
				lvl = 50,
			}),
			q(7821, {	-- A Donation of Silk
				qg = 14728,	-- Rumstag Proudstrider
				coord = { 43.2, 42.8, MAP.THUNDER_BLUFF },
				cost = { { "i", 4306, 60 } },	-- 60x Silk Cloth
				races = HORDE_ONLY,
				lvl = 26,
			}),
			q(7820, {	-- A Donation of Wool
				qg = 14728,	-- Rumstag Proudstrider
				coord = { 43.2, 42.8, MAP.THUNDER_BLUFF },
				cost = { { "i", 2592, 60 } },	-- 60x Wool Cloth
				races = HORDE_ONLY,
				lvl = 12,
			}),
			q(7825, {	-- Additional Runecloth [Thunder Bluff]
				sourceQuest = 7823,	-- A Donation of Runecloth
				qg = 14728,	-- Rumstag Proudstrider
				coord = { 43.2, 42.8, MAP.THUNDER_BLUFF },
				maxReputation = { FACTION_THUNDER_BLUFF, EXALTED },
				cost = { { "i", 14047, 20 } },	-- 20x Runecloth
				races = HORDE_ONLY,
				repeatable = true,
				lvl = 50,
			}),
			q(936, {	-- Assisting Arch Druid Runetotem [Orgrimmar]
				qg = 6929,	-- Innkeeper Gryshka
				coord = { 54.2, 68.4, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				isBreadcrumb = true,
				lvl = 47,
			}),
			q(3762, {	-- Assisting Arch Druid Runetotem [Thunder Bluff]
				qg = 6746,	-- Innkeeper Pala
				coord = { 45.8, 64.4, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				isBreadcrumb = true,
				lvl = 47,
			}),
			q(3784, {	-- Assisting Arch Druid Runetotem [Undercity]
				qg = 6741,	-- Innkeeper Norman
				coord = { 67.6, 38.2, MAP.UNDERCITY },
				races = HORDE_ONLY,
				isBreadcrumb = true,
				lvl = 47,
			}),
			q(1845, {	-- Brutal Helm
				sourceQuest = 1844,	-- Chimaeric Horn
				qg = 6410,	-- Orm Stonehoof
				coord = { 39.0, 55.8, MAP.THUNDER_BLUFF },
				classes = { WARRIOR },
				races = HORDE_ONLY,
				lvl = 20,
				groups = {
					i(7130),	-- Brutal Helm
				},
			}),
			q(98517, {	-- Call of Fire
				qg = 3032,	-- Beram Skychaser <Shaman Trainer>
				coord = { 22.8, 19.4, MAP.THUNDER_BLUFF },
				maps = { MAP.ZEPHRAS_ISLE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = { SKYBORNE_HORDE },
				classes = { SHAMAN },
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Torch of the Dormant Flame
						provider = { "i", 6653 },	-- Torch of the Dormant Flame
					}),
				},
			}),
			q(1844, {	-- Chimaeric Horn
				sourceQuest = 1840,	-- Orm Stonehoof and the Brutal Helm
				qg = 6410,	-- Orm Stonehoof
				coord = { 39.0, 55.8, MAP.THUNDER_BLUFF },
				maps = { MAP.STONETALON_MOUNTAINS },
				classes = { WARRIOR },
				races = HORDE_ONLY,
				lvl = 20,
				groups = {
					objective(1, {	-- 0/1 Galvanized Horn
						provider = { "i", 6840 },	-- Galvanized Horn
						cr = 6167,	-- Chimaera Matriarch
					}),
				},
			}),
			q(1205, {	-- Deadmire
				qg = 3441,	-- Melor Stonehoof
				coord = { 61.52, 80.88, MAP.THUNDER_BLUFF },
				maps = { MAP.DUSTWALLOW_MARSH },
				races = HORDE_ONLY,
				lvl = 35,
				groups = {
					objective(1, {	-- 0/1 Deadmire's Tooth
						provider = { "i", 5945 },	-- Deadmire's Tooth
						coord = { 47.6, 56.6, MAP.DUSTWALLOW_MARSH },
						cr = 4841,	-- Deadmire
					}),
				},
			}),
			q(5644, {	-- Devouring Plague [Thunder Bluff]
				altQuests = {
					5646,	-- Devouring Plague [Orgrimmar]
					5679,	-- Devouring Plague [Undercity]
				},
				qg = 3044,	-- Miles Welsh <Priest Trainer>
				coord = { 26.0, 15.8, MAP.THUNDER_BLUFF },
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
			q(1064, {	-- Forsaken Aid
				sourceQuest = 1063,	-- The Elder Crone
				qg = 4046,	-- Magatha Grimtotem
				coord = { 69.85, 30.91, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				lvl = 13,
			}),
			q(1136, {	-- Frostmaw
				sourceQuest = 1131,	-- Steelsnap
				qg = 3441,	-- Melor Stonehoof
				qi = 5838,	-- Kodo Skin Scroll
				coord = { 61.52, 80.88, MAP.THUNDER_BLUFF },
				maps = { MAP.ALTERAC_MOUNTAINS },
				races = HORDE_ONLY,
				lvl = 26,
				groups = {
					objective(1, {	-- 0/1 Frostmaw's Mane
						providers = {
							{ "i", 5811 },	-- Frostmaw's Mane
							{ "o", 1770 },	-- Flame of Uzel
							{ "i", 5810 },	-- Fresh Carcass
						},
						coord = { 37.0, 68.0, MAP.ALTERAC_MOUNTAINS },
						cr = 4504,	-- Frostmaw
					}),
					i(5810, {	-- Fresh Carcass
						crs = {
							2385,	-- Feral Mountain Lion
							2407,	-- Hulking Mountain Lion
							2406,	-- Mountain Lion
							2384,	-- Starving Mountain Lion
						},
					}),
					i(6720),	-- Spirit Hunter Headdress
				},
			}),
			q(768, {	-- Gathering Leather
				description =
					"This quest becomes available at Skinning skill level 1 when the character level requirement is met.",
				qg = 3050,	-- Veren Tallstrider
				coord = { 44.0, 44.6, MAP.THUNDER_BLUFF },
				cost = { { "i", 2318, 12 } },	-- 12x Light Leather
				requireSkill = SKINNING,
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					i(5936),	-- Animal Skin Belt
					i(4962),	-- Double-layered Gloves
				},
			}),
			q(5656, {	-- Hex of Weakness [Thunder Bluff]
				altQuests = {
					5652,	-- Hex of Weakness [Orgrimmar]
					5654,	-- Hex of Weakness [Durotar]
					5655,	-- Hex of Weakness [Mulgore]
					5657,	-- Hex of Weakness [Undercity]
				},
				qg = 3044,	-- Miles Welsh <Priest Trainer>
				coord = { 26.0, 15.8, MAP.THUNDER_BLUFF },
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
			q(769, {	-- Kodo Hide Bag
				qg = 3050,	-- Veren Tallstrider
				coord = { 44.0, 44.6, MAP.THUNDER_BLUFF },
				requireSkill = LEATHERWORKING,
				learnedAt = 10,
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					i(5083, {	-- Pattern: Kodo Hide Bag (RECIPE!)
						description =
							"This recipe is not soulbound and can be mailed to Horde alts.",
					}),
				},
			}),
			q(1130, {	-- Melor Sends Word
				qg = 3387,	-- Jorn Skyseer
				coord = { 44.8, 59.0, MAP.THE_BARRENS },
				races = HORDE_ONLY,
				isBreadcrumb = true,
				lvl = 20,
			}),
			q(97378, {	-- Mirrorscale
				qg = 3441,	-- Melor Stonehoof
				coord = { 61.4, 80.6, MAP.THUNDER_BLUFF },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 45,
				groups = {
					objective(1, {	-- 0/1 Mirrorscale's Wing
						provider = { "i", 277972 },	-- Mirrorscale's Wing
					}),
					i(281275),	-- Mantle of Scaleslaying
					i(281276),	-- Pauldrons of Scaleslaying
					i(281277),	-- Shoulders of Scaleslaying
					i(281278),	-- Shoulderplates of Scaleslaying
				},
			}),
			q(3782, {	-- Morrowgrain Research (1/2)
				sourceQuest = 3761,	-- Un'Goro Soil
				qg = 5769,	-- Arch Druid Hamuul Runetotem
				qi = 11103,	-- Seed Voucher
				coord = { 78.4, 28.4, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				lvl = 47,
			}),
			q(3786, {	-- Morrowgrain Research (2/2)
				sourceQuest = 3782,	-- Morrowgrain Research (1/2)
				qg = 9087,	-- Bashana Runetotem
				coord = { 70.8, 33.8, MAP.THUNDER_BLUFF },
				cost = { { "i", 11040, 10 } },	-- 10x Morrowgrain
				races = HORDE_ONLY,
				lvl = 47,
				groups = {
					i(11887),	-- Cenarion Circle Cache
				},
			}),
			q(3804, {	-- Morrowgrain to Thunder Bluff
				sourceQuest = 3786,	-- Morrowgrain Research (2/2)
				qg = 9087,	-- Bashana Runetotem
				coord = { 70.8, 33.8, MAP.THUNDER_BLUFF },
				cost = { { "i", 11040, 10 } },	-- 10x Morrowgrain
				races = HORDE_ONLY,
				repeatable = true,
				lvl = 47,
				groups = {
					i(11887),	-- Cenarion Circle Cache
				},
			}),
			q(91737, {	-- Remote Contact
				qg = 4046,	-- Magatha Grimtotem
				coord = { 70.2, 30.8, MAP.THUNDER_BLUFF },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 44,
			}),
			q(6364, {	-- Return to Jahan / Return to Varg [CATA+]
				sourceQuest = 6363,	-- Tal the Wind Rider Master
				qg = 2995,	-- Tal
				qi = 16283,	-- Ahanu's Leather Goods
				coord = { 46.8, 50.0, MAP.THUNDER_BLUFF },
				maps = {
					MAP.THE_BARRENS,
				},
				races = { TAUREN },
				lvl = 10,
			}),
			q(6362, {	-- Ride to Thunder Bluff
				sourceQuest = 6361,	-- A Bundle of Hides
				qg = 3615,	-- Devrak
				qi = 16282,	-- Bundle of Hides
				coord = { 51.50, 30.34, MAP.THE_BARRENS },
				races = { TAUREN },
				lvl = 10,
			}),
			q(5642, {	-- Shadowguard [Thunder Bluff]
				altQuests = {
					5643,	-- Shadowguard [Undercity]
					5680,	-- Shadowguard [Orgrimmar]
				},
				qg = 3044,	-- Miles Welsh <Priest Trainer>
				coord = { 26.0, 15.8, MAP.THUNDER_BLUFF },
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
			q(1131, {	-- Steelsnap
				sourceQuest = 1130,	-- Melor Sends Word
				qg = 3441,	-- Melor Stonehoof
				coord = { 61.51, 80.88, MAP.THUNDER_BLUFF },
				maps = { MAP.THOUSAND_NEEDLES },
				races = HORDE_ONLY,
				lvl = 20,
				groups = {
					objective(1, {	-- 0/1 Steelsnap's Rib
						provider = { "i", 5837 },	-- Steelsnap's Rib
						coord = { 13.6, 28.0, MAP.THOUSAND_NEEDLES },
						cr = 4548,	-- Steelsnap
					}),
				},
			}),
			q(6363, {	-- Tal the Wind Rider Master
				sourceQuest = 6362,	-- Ride to Thunder Bluff
				qg = 8359,	-- Ahanu
				qi = 16283,	-- Ahanu's Leather Goods
				coord = { 45.74, 55.86, MAP.THUNDER_BLUFF },
				maps = {
					MAP.THE_BARRENS,
				},
				races = { TAUREN },
				lvl = 10,
			}),
			q(1086, {	-- The Flying Machine Airport
				sourceQuest = 1067,	-- Return to Thunder Bluff
				qg = 3419,	-- Apothecary Zamah
				coord = { 22.85, 20.90, MAP.THUNDER_BLUFF },
				maps = { MAP.STONETALON_MOUNTAINS },
				races = HORDE_ONLY,
				lvl = 13,
				groups = {
					objective(1, {	-- Place the Toxic Fogger
						provider = { "i", 5638 },	-- Toxic Fogger
						coord = { 66.0, 45.0, MAP.STONETALON_MOUNTAINS },
					}),
				},
			}),
			q(1195, {	-- The Sacred Flame (1/3)
				qg = 4721,	-- Zangen Stonehoof
				coord = { 54.97, 51.32, MAP.THUNDER_BLUFF },
				maps = { MAP.ASHENVALE },
				races = HORDE_ONLY,
				lvl = 20,
				groups = {
					objective(1, {	-- 0/1 Filled Etched Phial
						provider = { "i", 5868 },	-- Filled Etched Phial
						coord = { 60.0, 72.0, MAP.ASHENVALE },
						cost = { { "i", 5867, 1 } },	-- 1x Etched Phial
					}),
					i(5867, {	-- Etched Phial
						cr = 4054,	-- Laughing Sister
					}),
				},
			}),
			q(1196, {	-- The Sacred Flame (2/3)
				sourceQuest = 1195,	-- The Sacred Flame (1/3)
				qg = 4721,	-- Zangen Stonehoof
				qi = 5868,	-- Filled Etched Phial
				coord = { 54.97, 51.32, MAP.THUNDER_BLUFF },
				maps = { MAP.THOUSAND_NEEDLES },
				races = HORDE_ONLY,
				lvl = 20,
			}),
			q(1197, {	-- The Sacred Flame (3/3)
				sourceQuest = 1196,	-- The Sacred Flame (2/3)
				qg = 4722,	-- Rau Cliffrunner
				qi = 5868,	-- Filled Etched Phial
				coord = { 46.13, 51.69, MAP.THOUSAND_NEEDLES },
				cost = { { "i", 5869, 1 } },	-- 1x Cloven Hoof
				races = HORDE_ONLY,
				lvl = 20,
				groups = {
					objective(1, {	-- 0/1 Cloven Hoof
						providers = {
							{ "i", 5869 },	-- Cloven Hoof
							{ "o", 20807 },	-- Ancient Brazier
						},
						coord = { 42.0, 35.0, MAP.THOUSAND_NEEDLES },
					}),
					i(6739),	-- Cliffrunner's Aim
					i(6740),	-- Azure Sash
				},
			}),
			q(5663, {	-- Touch of Weakness [Thunder Bluff]
				altQuests = {
					5658,	-- Touch of Weakness [Undercity]
					5660,	-- Touch of Weakness [Durotar]
					5661,	-- Touch of Weakness [Mulgore]
					5662,	-- Touch of Weakness [Orgrimmar]
				},
				qg = 3044,	-- Miles Welsh <Priest Trainer>
				coord = { 26.0, 15.8, MAP.THUNDER_BLUFF },
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
			q(97485, {	-- Traditions of the Bluff
				qg = 269068,	-- Eylah Sunhorn <Sun Priest of An'she>
				coord = { 38.2, 56.2, MAP.THUNDER_BLUFF },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 3,
				description = "While on this quest, buy a Bundle of Herbs from Nida Winterhoof, a Bundle of Dried Cedar Twigs from Nata Dawnstrider, Sinew Thread from Mahu and Ceremonial Flint and Tinder from Naal Mistrunner (1 copper each). Combine them into Prepared Incense, then spread it at the ceremonial site on the south-facing cliff of Hunter Rise.",
				groups = {
					objective(1, {	-- 0/1 Prepared Incense
						provider = { "i", 278078 },	-- Prepared Incense
						cost = {
							{ "i", 278079, 1 },	-- Bundle of Herbs
							{ "i", 278080, 1 },	-- Bundle of Dried Cedar Twigs
							{ "i", 278081, 1 },	-- Sinew Thread
							{ "i", 278083, 1 },	-- Ceremonial Flint and Tinder
						},
					}),
					objective(2, {	-- Spread incense
						provider = { "o", 665373 },	-- Incense Burner
						coord = { 53.3, 87.9, MAP.THUNDER_BLUFF },
					}),
					i(281040),	-- Prepared Incense (x5)
				},
			}),
			q(3761, {	-- Un'Goro Soil
				sourceQuests = {
					936,	-- Assisting Arch Druid Runetotem [Orgrimmar]
					3762,	-- Assisting Arch Druid Runetotem [Thunder Bluff]
					3784,	-- Assisting Arch Druid Runetotem [Undercity]
				},
				qg = 5769,	-- Arch Druid Hamuul Runetotem
				coord = { 78.4, 28.4, MAP.THUNDER_BLUFF },
				maps = { MAP.UNGORO_CRATER },
				cost = { { "i", 11018, 20 } },	-- 20x Un'Goro Soil
				races = HORDE_ONLY,
				lvl = 47,
			}),
			q(264, {	-- Until Death Do Us Part
				qg = 5543,	-- Clarice Foster
				qi = 6145,	-- Clarice's Pendant
				coord = { 28.19, 25.31, MAP.THUNDER_BLUFF },
				maps = { MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 12,
			}),
		}),
		n(VENDORS, {
			n(8359, {	-- Ahanu <Leather Armor Merchant>
				coord = { 45.6, 55.8, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {
					{ "select", "symselector",
						SymSelector.VENDOR_CURED_LEATHER,	-- Cured Leather
						SymSelector.VENDOR_TANNED_LEATHER,	-- Tanned Leather
					},
					{ "pop" },
				},
			}),
			n(3019, {	-- Delgo Ragetotem <Axe Merchant>
				coord = { 53.8, 57.2, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {{"select","itemID",
					926,	-- Battle Axe
					2025,	-- Bearded Axe
					2523,	-- Bullova
					2029,	-- Cleaver
					2522,	-- Crescent Axe
					927,	-- Double Axe
					2530,	-- Francisca
					2531,	-- Great Axe
					853,	-- Hatchet
					12249,	-- Merciless Axe
					1196,	-- Tabar
					37,	-- Worn Axe
				}},
			}),
			n(8360, {	-- Elki <Mail Armor Merchant>
				coord = { 45.2, 56.6, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {
					{ "select", "symselector",
						SymSelector.VENDOR_CHAINMAIL,	-- Chainmail
						SymSelector.VENDOR_SCALEMAIL,	-- Scalemail
					},
					{ "pop" },
					{ "select", "itemID",
						17187,	-- Banded Buckler
						2445,	-- Large Metal Shield
						17188,	-- Ringed Buckler
						1202,	-- Wall Shield
					},
				},
			}),
			n(3020, {	-- Etu Ragetotem <Mace & Staff Merchant>
				coord = { 58.2, 52.0, MAP.THUNDER_BLUFF },
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
			n(3095, {	-- Fela <Heavy Armor Merchant>
				coords = {
					{ 42.8, 43.4, MAP.THUNDER_BLUFF },
					{ 42.8, 44.4, MAP.THUNDER_BLUFF },
					{ 42.8, 44.6, MAP.THUNDER_BLUFF },
				},
				races = HORDE_ONLY,
				sym = {
					{ "select", "symselector",
						SymSelector.VENDOR_AUGMENTED_CHAIN,	-- Augmented Chain
						SymSelector.VENDOR_BRIGANDINE,	-- Brigandine
						SymSelector.VENDOR_PLATEMAIL,	-- Platemail
						SymSelector.VENDOR_POLISHED_SCALE,	-- Polished Scale
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
			n(3003, {	-- Fyr Mistrunner <Bread Vendor>
				coord = { 41.4, 53.2, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {
					SymSelector.select("VENDOR_FOOD_BREAD"),	-- Bread
					{ "pop" },
				},
			}),
			n(3093, {	-- Grod <Leather Armor Merchant>
				coord = { 42.4, 43.2, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {
					{ "select", "symselector",
						SymSelector.VENDOR_BATTERED_LEATHER,	-- Battered Leather
						SymSelector.VENDOR_CURED_LEATHER,	-- Cured Leather
						SymSelector.VENDOR_TANNED_LEATHER,	-- Tanned Leather
					},
					{ "pop" },
					{ "select", "itemID",
						2370,	-- Battered Leather Harness
					},
				},
			}),
			n(8401, {	-- Halpa <Prairie Dog Vendor>
				coord = { 62.2, 58.6, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				groups = {
					i(280794, {	-- Brown Ground Squirrel Whistle (PET!)
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(10394),	-- Brown Prairie Dog (PET!)
					i(280795, {	-- Red Ground Squirrel Whistle (PET!)
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			n(8358, {	-- Hewa <Cloth Armor Merchant>
				coord = { 45.6, 56.7, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {
					{ "select", "symselector",
						SymSelector.VENDOR_HEAVY_WEAVE,	-- Heavy Weave
						SymSelector.VENDOR_THICK_CLOTH,	-- Thick Cloth
					},
					{ "pop" },
					{ "select", "itemID",
						16059,	-- Common Brown Shirt
						3428,	-- Common Gray Shirt
						16060,	-- Common White Shirt
					},
				},
			}),
			n(3018, {	-- Hogor Thunderhoof <Guns Merchant>
				coord = { 55.6, 56.6, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {{"select","itemID",
					3024,	-- Bkp 2700 Enforcer
					2511,	-- Hunter's Boomstick
					3023,	-- Large Bore Blunderbuss
					2509,	-- Ornate Blunderbuss
					2510,	-- Solid Blunderbuss
				}},
			}),
			n(2997, {	-- Jyn Stonehoof <Weapons Merchant>
				coord = { 41.6, 62.0, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {{"select","itemID",
					2025,	-- Bearded Axe
					1194,	-- Bastard Sword
					2479,	-- Broad Axe
					1198,	-- Claymore
					2130,	-- Club
					2029,	-- Cleaver
					2492,	-- Cudgel
					851,	-- Cutlass
					2139,	-- Dirk
					2024,	-- Espadon
					2488,	-- Gladius
					2030,	-- Gnarled Staff
					1197,	-- Giant Mace
					2028,	-- Hammer
					2134,	-- Hand Axe
					853,	-- Hatchet
					2511,	-- Hunter's Boomstick
					2207,	-- Jambiya
					2491,	-- Large Axe
					2480,	-- Large Club
					852,	-- Mace
					2509,	-- Ornate Blunderbuss
					2208,	-- Poniard
					854,	-- Quarter Staff
					2026,	-- Rock Hammer
					2027,	-- Scimitar
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
			n(3021, {	-- Kard Ragetotem <Sword & Dagger Merchant>
				coord = { 53.6, 56.6, MAP.THUNDER_BLUFF },
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
			n(3025, {	-- Kaga Mistrunner <Meat Vendor>
				coord = { 52.3, 47.8, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {
					SymSelector.select("VENDOR_FOOD_MEAT"),	-- Meat
					{ "pop" },
				},
			}),
			n(3015, {	-- Kuna Thunderhorn <Bowyer & Fletching Goods>
				coord = { 46.8, 45.8, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {{"select","itemID",
					11303,	-- Fine Shortbow
					3027,	-- Heavy Recurve Bow
					11307,	-- Massive Longbow
					3026,	-- Reinforced Bow
					11306,	-- Sturdy Recurve
				}},
				groups = {
					i(287063, {	-- Serrated Knife
						isLimited = true,
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			n(3002, {	-- Kurm Stonehoof <Mining Supplies>
				coord = { 34.35, 56.58, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {{ "sub", "common_vendor", 4599 }},	-- Sarah Killan <Mining Supplies>
			}),
			n(8362, {	-- Kuruk <General Goods>
				coord = { 39.0, 64.4, MAP.THUNDER_BLUFF },	-- Wayfarer's Rest
				races = HORDE_ONLY,
				sym = {{ "select","itemID",
					11284,	-- Accurate Slugs
					277113,	-- Apprentice's Herb Pouch
					277115,	-- Apprentice's Mining Pack
					277114,	-- Apprentice's Skinning Satchel
					2946,	-- Balanced Throwing Dagger
					4498,	-- Brown Leather Satchel
					3137,	-- Deadly Throwing Axe
					15326,	-- Gleaming Throwing Axe
					4497,	-- Heavy Brown Bag
					2519,	-- Heavy Shot
					4499,	-- Huge Brown Sack
					1179,	-- Ice Cold Milk
					11285,	-- Jagged Arrow
					3107,	-- Keen Throwing Knife
					2516,	-- Light Shot
					1205,	-- Melon Juice
					2901,	-- Mining Pick
					1645,	-- Moonberry Juice
					3030,	-- Razor Arrow
					159,	-- Refreshing Spring Water
					2512,	-- Rough Arrow
					2515,	-- Sharp Arrow
					3135,	-- Sharp Throwing Axe
					4470,	-- Simple Wood
					7005,	-- Skinning Knife
					4496,	-- Small Brown Pouch
					3033,	-- Solid Shot
					11291,	-- Star Wood
					1708,	-- Sweet Nectar
					4540,	-- Tough Hunk of Bread
					3131,	-- Weighted Throwing Axe
					15327,	-- Wicked Throwing Dagger
				}},
			}),
			n(3005, {	-- Mahu <Leatherworking & Tailoring Supplies>
				coord = { 43.8, 45.1, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				groups = {
					i(252812, {	-- Pattern: Forceful Heavy Armor Kit (RECIPE!)
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(252784, {	-- Pattern: Forceful Medium Armor Kit (RECIPE!)
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(252811, {	-- Pattern: Mystic Heavy Armor Kit (RECIPE!)
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(252783, {	-- Pattern: Mystic Medium Armor Kit (RECIPE!)
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(10311, {	-- Pattern: Orange Martial Shirt (RECIPE!)
						isLimited = true,
					}),
					i(5771, {	-- Pattern: Red Linen Bag (RECIPE!)
						isLimited = true,
					}),
					i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
						isLimited = true,
					}),
					i(10325, {	-- Pattern: White Wedding Dress (RECIPE!)
						isLimited = true,
					}),
					i(278081, {	-- Sinew Thread
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(281043, {	-- Sinew Thread
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			n(3027, {	-- Naal Mistrunner <Cooking Supplies>
				coord = { 51.0, 52.5, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					2692,	-- Hot Spices
					2678,	-- Mild Spices
					6330,	-- Recipe: Bristle Whisker Catfish (RECIPE!)
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
				groups = {
					i(278083, {	-- Ceremonial Flint and Tinder
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(281044, {	-- Ceremonial Flint and Tinder
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
				},
			}),
			n(3017, {	-- Nan Mistrunner <Fruit Vendor>
				coord = { 47.3, 42.4, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {
					SymSelector.select("VENDOR_FOOD_FRUIT"),	-- Fruit
					{ "pop" },
				},
			}),
			n(3012, {	-- Nata Dawnstrider <Enchanting Supplies>
				coord = { 44.9, 37.7, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {
					SymSelector.select("VENDOR_ENCHANTING_RECIPES"),
					{"pop"},
				},
				groups = {
					i(278080, {	-- Bundle of Dried Cedar Twigs
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(281042, {	-- Bundle of Dried Cedar Twigs
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(6349, {	-- Formula: Enchant 2H Weapon - Lesser Intellect (RECIPE!)
						isLimited = true,
					}),
					i(6377, {	-- Formula: Enchant Boots - Minor Agility (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(3014, {	-- Nida Winterhoof <Herbalism Supplies>
				coord = { 49.2, 39.6, MAP.THUNDER_BLUFF },
				groups = {
					i(3422),	-- Beautiful Wildflowers
					i(3420),	-- Black Rose
					i(3424),	-- Bouquet of Black Roses
					i(3423),	-- Bouquet of White Roses
					i(278079, {	-- Bundle of Herbs
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(281041, {	-- Bundle of Herbs
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(3419),	-- Red Rose
					i(3421),	-- Simple Wildflowers
				},
			}),
			n(8398, {	-- Ohanko <Two Handed Weapon Merchant>
				coord = { 53.6, 56.8, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {{"select","itemID",
					2523,	-- Bullova
					2531,	-- Great Axe
					2521,	-- Flamberge
					2525,	-- War Hammer
					2533,	-- War Maul
					12282,	-- Worn Battleaxe
					2529,	-- Zweihander
				}},
			}),
			n(8364, {	-- Pakwa <Bag Vendor>
				coord = { 39.31, 64.28, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					4498,	-- Brown Leather Satchel
					4497,	-- Heavy Brown Bag
					4499,	-- Huge Brown Sack
					4496,	-- Small Brown Pouch
				}},
			}),
			n(3029, {	-- Sewa Mistrunner <Fishing Supplies>
				coord = { 55.8, 47.0, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID",
					6330,	-- Recipe: Bristle Whisker Catfish (RECIPE!)
				}},
				groups = {
					i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
				},
			}),
			n(8363, {	-- Shadi Mistrunner <Trade Supplies>
				coord = { 40.6, 64.0, MAP.THUNDER_BLUFF },
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
			n(3022, {	-- Sunn Ragetotem <Staff Merchant>
				coord = { 49.6, 49.8, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {{"select","itemID",
					2527,	-- Battle Staff
					2535,	-- War Staff
				}},
			}),
			n(3023, {	-- Sura Wildmane <War Harness Vendor>
				coord = { 51.8, 54.6, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {{"select","itemID",
					6526,	-- Battle Harness
					6523,	-- Buckled Harness
					6525,	-- Grunt's Harness
					6524,	-- Studded Leather Harness
				}},
			}),
			n(3092, {	-- Tagain <Cloth Armor Merchant>
				coord = { 43.4, 43.8, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {
					{ "select", "symselector",
						SymSelector.VENDOR_EMBROIDERED,	-- Embroidered
						SymSelector.VENDOR_HEAVY_WEAVE,	-- Heavy Weave
						SymSelector.VENDOR_KNITTED,	-- Knitted
						SymSelector.VENDOR_PADDED,	-- Padded
						SymSelector.VENDOR_ROBES,	-- Robes
						SymSelector.VENDOR_RUSSET,	-- Russet
						SymSelector.VENDOR_THICK_CLOTH,	-- Thick Cloth
					},
					{ "pop" },
				},
			}),
			n(3016, {	-- Tand <Basket Weaver>
				coord = { 49.1, 34.2, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {{ "select","itemID",
					4498,	-- Brown Leather Satchel
					4497,	-- Heavy Brown Bag
					4496,	-- Small Brown Pouch
				}},
			}),
			n(2999, {	-- Taur Stonehoof <Blacksmithing Supplies>
				coord = { 39.8, 55.6, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
			}),
			n(5189, {	-- Thrumn <Tabard Vendor>
				coord = { 38.0, 63.0, MAP.THUNDER_BLUFF },
				races = HORDE_ONLY,
				sym = {{ "select", "itemID", 5976 }},	-- Guild Tabard
			}),
		}),
	},
});
