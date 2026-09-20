---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.THUNDER_BLUFF, {
		["lore"] = "Thunder Bluff is the Tauren capital city located in the northern part of the region of Mulgore. The whole of the city is built on bluffs several hundred feet above the surrounding landscape, and is accessible by elevators on the southwestern and northeastern sides.",
		["icon"] = 255144,
		["isRaid"] = true,
		["groups"] = {
			n(FACTIONS, {
				faction(FACTION_THUNDER_BLUFF, {	-- Thunder Bluff
					["icon"] = 236454,
					["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
					["races"] = HORDE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(22, {	-- Thunder Bluff, Mulgore
					["cr"] = 2995,	-- Tal <Wind Rider Master>
					["coord"] = { 46.8, 50.0, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(6361, {	-- A Bundle of Hides
					["providers"] = {
						{ "n", 3483 },	-- Jahan Hawkwing <Leather & Mail Armor Merchant>
						{ "i", 16282 },	-- Bundle of Hides
					},
					["coord"] = { 51.2, 29.0, MAP.THE_BARRENS },
					["races"] = { TAUREN },
					["lvl"] = 10,
				}),
				q(7822, {	-- A Donation of Mageweave
					["qg"] = 14728,	-- Rumstag Proudstrider
					["coord"] = { 43.2, 42.8, MAP.THUNDER_BLUFF },
					["cost"] = { { "i", 4338, 60 } },	-- 60x Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7823, {	-- A Donation of Runecloth
					["qg"] = 14728,	-- Rumstag Proudstrider
					["coord"] = { 43.2, 42.8, MAP.THUNDER_BLUFF },
					["cost"] = { { "i", 14047, 60 } },	-- 60x Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7821, {	-- A Donation of Silk
					["qg"] = 14728,	-- Rumstag Proudstrider
					["coord"] = { 43.2, 42.8, MAP.THUNDER_BLUFF },
					["cost"] = { { "i", 4306, 60 } },	-- 60x Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7820, {	-- A Donation of Wool
					["qg"] = 14728,	-- Rumstag Proudstrider
					["coord"] = { 43.2, 42.8, MAP.THUNDER_BLUFF },
					["cost"] = { { "i", 2592, 60 } },	-- 60x Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(7825, {	-- Additional Runecloth [Thunder Bluff]
					["sourceQuest"] = 7823,	-- A Donation of Runecloth
					["qg"] = 14728,	-- Rumstag Proudstrider
					["coord"] = { 43.2, 42.8, MAP.THUNDER_BLUFF },
					["maxReputation"] = { FACTION_THUNDER_BLUFF, EXALTED },	-- Thunder Bluff, Exalted.
					["cost"] = { { "i", 14047, 20 } },	-- 20x Runecloth
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(936, {	-- Assisting Arch Druid Runetotem [Orgrimmar]
					["qg"] = 6929,	-- Innkeeper Gryshka
					["coord"] = { 54.2, 68.4, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(3762, {	-- Assisting Arch Druid Runetotem [Thunder Bluff]
					["qg"] = 6746,	-- Innkeeper Pala
					["coord"] = { 45.8, 64.4, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(3784, {	-- Assisting Arch Druid Runetotem [Undercity]
					["qg"] = 6741,	-- Innkeeper Norman
					["coord"] = { 67.6, 38.2, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(1845, {	-- Brutal Helm
					["sourceQuest"] = 1844,	-- Chimaeric Horn
					["qg"] = 6410,	-- Orm Stonehoof
					["coord"] = { 39.0, 55.8, MAP.THUNDER_BLUFF },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(7130),	-- Brutal Helm
					},
				}),
				q(1844, {	-- Chimaeric Horn
					["sourceQuest"] = 1840,	-- Orm Stonehoof and the Brutal Helm
					["qg"] = 6410,	-- Orm Stonehoof
					["coord"] = { 39.0, 55.8, MAP.THUNDER_BLUFF },
					["maps"] = { MAP.STONETALON_MOUNTAINS },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Galvanized Horn
							["provider"] = { "i", 6840 },	-- Galvanized Horn
							["cr"] = 6167,	-- Chimaera Matriarch
						}),
					},
				}),
				q(1205, {	-- Deadmire
					["qg"] = 3441,	-- Melor Stonehoof
					["coord"] = { 61.52, 80.88, MAP.THUNDER_BLUFF },
					["maps"] = { MAP.DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Deadmire's Tooth
							["provider"] = { "i", 5945 },	-- Deadmire's Tooth
							["coord"] = { 47.6, 56.6, MAP.DUSTWALLOW_MARSH },
							["cr"] = 4841,	-- Deadmire
						}),
					},
				}),
				q(5644, {	-- Devouring Plague [Thunder Bluff]
					["altQuests"] = {
						5646,	-- Devouring Plague [Orgrimmar]
						5679,	-- Devouring Plague [Undercity]
					},
					["qg"] = 3044,	-- Miles Welsh <Priest Trainer>
					["coord"] = { 26.0, 15.8, MAP.THUNDER_BLUFF },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 20,
					["groups"] = {
						{
							["recipeID"] = 2944,	-- Devouring Plague (Rank 1)
							["rank"] = 1,
						},
					},
				}),
				q(1064, {	-- Forsaken Aid
					["sourceQuest"] = 1063,	-- The Elder Crone
					["qg"] = 4046,	-- Magatha Grimtotem
					["coord"] = { 69.85, 30.91, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(1136, {	-- Frostmaw
					["sourceQuest"] = 1131,	-- Steelsnap
					["providers"] = {
						{ "n", 3441 },	-- Melor Stonehoof
						{ "i", 5838 },	-- Kodo Skin Scroll
					},
					["coord"] = { 61.52, 80.88, MAP.THUNDER_BLUFF },
					["maps"] = { MAP.ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/1 Frostmaw's Mane
							["providers"] = {
								{ "i", 5811 },	-- Frostmaw's Mane
								{ "o", 1770 },	-- Flame of Uzel
								{ "i", 5810 },	-- Fresh Carcass
							},
							["coord"] = { 37.0, 68.0, MAP.ALTERAC_MOUNTAINS },
							["cr"] = 4504,	-- Frostmaw
						}),
						i(5810, {	-- Fresh Carcass
							["crs"] = {
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
					["description"] =
						"This quest becomes available at Skinning skill level 1 when the character level requirement is met.",
					["qg"] = 3050,	-- Veren Tallstrider
					["coord"] = { 44.0, 44.6, MAP.THUNDER_BLUFF },
					["cost"] = { { "i", 2318, 12 } },	-- 12x Light Leather
					["requireSkill"] = SKINNING,
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						i(5936),	-- Animal Skin Belt
						i(4962),	-- Double-layered Gloves
					},
				}),
				q(5656, {	-- Hex of Weakness [Thunder Bluff]
					["altQuests"] = {
						5652,	-- Hex of Weakness [Orgrimmar]
						5654,	-- Hex of Weakness [Durotar]
						5655,	-- Hex of Weakness [Mulgore]
						5657,	-- Hex of Weakness [Undercity]
					},
					["qg"] = 3044,	-- Miles Welsh <Priest Trainer>
					["coord"] = { 26.0, 15.8, MAP.THUNDER_BLUFF },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 10,
					["groups"] = {
						{
							["recipeID"] = 9035,	-- Hex of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
				}),
				q(769, {	-- Kodo Hide Bag
					["description"] =
						"This quest becomes available at Leatherworking skill level 10 when the character level requirement is met.",
					["qg"] = 3050,	-- Veren Tallstrider
					["coord"] = { 44.0, 44.6, MAP.THUNDER_BLUFF },
					["requireSkill"] = LEATHERWORKING,
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						i(5083, {	-- Pattern: Kodo Hide Bag (RECIPE!)
							["description"] =
								"This recipe is not soulbound and can be mailed to Horde alts.",
						}),
					},
				}),
				q(1130, {	-- Melor Sends Word
					["qg"] = 3387,	-- Jorn Skyseer
					["coord"] = { 44.8, 59.0, MAP.THE_BARRENS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(3782, {	-- Morrowgrain Research (1/2)
					["sourceQuest"] = 3761,	-- Un'Goro Soil
					["providers"] = {
						{ "n", 5769 },	-- Arch Druid Hamuul Runetotem
						{ "i", 11103 },	-- Seed Voucher
					},
					["coord"] = { 78.4, 28.4, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(3786, {	-- Morrowgrain Research (2/2)
					["sourceQuest"] = 3782,	-- Morrowgrain Research (1/2)
					["qg"] = 9087,	-- Bashana Runetotem
					["coord"] = { 70.8, 33.8, MAP.THUNDER_BLUFF },
					["cost"] = { { "i", 11040, 10 } },	-- 10x Morrowgrain
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(3804, {	-- Morrowgrain to Thunder Bluff
					["sourceQuest"] = 3786,	-- Morrowgrain Research (2/2)
					["qg"] = 9087,	-- Bashana Runetotem
					["coord"] = { 70.8, 33.8, MAP.THUNDER_BLUFF },
					["cost"] = { { "i", 11040, 10 } },	-- 10x Morrowgrain
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(6364, {	-- Return to Jahan / Return to Varg [CATA+]
					["sourceQuest"] = 6363,	-- Tal the Wind Rider Master
					["providers"] = {
						{ "n", 2995 },	-- Tal
						{ "i", 16283 },	-- Ahanu's Leather Goods
					},
					["coord"] = { 46.8, 50.0, MAP.THUNDER_BLUFF },
					["maps"] = {
						MAP.THE_BARRENS,
					},
					["races"] = { TAUREN },
					["lvl"] = 10,
				}),
				q(6362, {	-- Ride to Thunder Bluff
					["sourceQuest"] = 6361,	-- A Bundle of Hides
					["providers"] = {
						{ "n", 3615 },	-- Devrak
						{ "i", 16282 },	-- Bundle of Hides
					},
					["coord"] = { 51.50, 30.34, MAP.THE_BARRENS },
					["races"] = { TAUREN },
					["lvl"] = 10,
				}),
				q(5642, {	-- Shadowguard [Thunder Bluff]
					["altQuests"] = {
						5643,	-- Shadowguard [Undercity]
						5680,	-- Shadowguard [Orgrimmar]
					},
					["qg"] = 3044,	-- Miles Welsh <Priest Trainer>
					["coord"] = { 26.0, 15.8, MAP.THUNDER_BLUFF },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 20,
					["groups"] = {
						{
							["recipeID"] = 18137,	-- Shadowguard (Rank 1)
							["rank"] = 1,
						},
					},
				}),
				q(1131, {	-- Steelsnap
					["sourceQuest"] = 1130,	-- Melor Sends Word
					["qg"] = 3441,	-- Melor Stonehoof
					["coord"] = { 61.51, 80.88, MAP.THUNDER_BLUFF },
					["maps"] = { MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Steelsnap's Rib
							["provider"] = { "i", 5837 },	-- Steelsnap's Rib
							["coord"] = { 13.6, 28.0, MAP.THOUSAND_NEEDLES },
							["cr"] = 4548,	-- Steelsnap
						}),
					},
				}),
				q(6363, {	-- Tal the Wind Rider Master
					["sourceQuest"] = 6362,	-- Ride to Thunder Bluff
					["providers"] = {
						{ "n", 8359 },	-- Ahanu
						{ "i", 16283 },	-- Ahanu's Leather Goods
					},
					["coord"] = { 45.74, 55.86, MAP.THUNDER_BLUFF },
					["maps"] = {
						MAP.THE_BARRENS,
					},
					["races"] = { TAUREN },
					["lvl"] = 10,
				}),
				q(1086, {	-- The Flying Machine Airport
					["sourceQuest"] = 1067,	-- Return to Thunder Bluff
					["qg"] = 3419,	-- Apothecary Zamah
					["coord"] = { 22.85, 20.90, MAP.THUNDER_BLUFF },
					["maps"] = { MAP.STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- Place the Toxic Fogger
							["provider"] = { "i", 5638 },	-- Toxic Fogger
							["coord"] = { 66.0, 45.0, MAP.STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(1195, {	-- The Sacred Flame (1/3)
					["qg"] = 4721,	-- Zangen Stonehoof
					["coord"] = { 54.97, 51.32, MAP.THUNDER_BLUFF },
					["maps"] = { MAP.ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Etched Phial
							["provider"] = { "i", 5868 },	-- Filled Etched Phial
							["coord"] = { 60.0, 72.0, MAP.ASHENVALE },
							["cost"] = { { "i", 5867, 1 } },	-- 1x Etched Phial
						}),
						i(5867, {	-- Etched Phial
							["cr"] = 4054,	-- Laughing Sister
						}),
					},
				}),
				q(1196, {	-- The Sacred Flame (2/3)
					["sourceQuest"] = 1195,	-- The Sacred Flame (1/3)
					["providers"] = {
						{ "n", 4721 },	-- Zangen Stonehoof
						{ "i", 5868 },	-- Filled Etched Phial
					},
					["coord"] = { 54.97, 51.32, MAP.THUNDER_BLUFF },
					["maps"] = { MAP.THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(1197, {	-- The Sacred Flame (3/3)
					["sourceQuest"] = 1196,	-- The Sacred Flame (2/3)
					["providers"] = {
						{ "n", 4722 },	-- Rau Cliffrunner
						{ "i", 5868 },	-- Filled Etched Phial
					},
					["coord"] = { 46.13, 51.69, MAP.THOUSAND_NEEDLES },
					["cost"] = { { "i", 5869, 1 } },	-- 1x Cloven Hoof
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Cloven Hoof
							["providers"] = {
								{ "i", 5869 },	-- Cloven Hoof
								{ "o", 20807 },	-- Ancient Brazier
							},
							["coord"] = { 42.0, 35.0, MAP.THOUSAND_NEEDLES },
						}),
						i(6739),	-- Cliffrunner's Aim
						i(6740),	-- Azure Sash
					},
				}),
				q(5663, {	-- Touch of Weakness [Thunder Bluff]
					["altQuests"] = {
						5658,	-- Touch of Weakness [Undercity]
						5660,	-- Touch of Weakness [Durotar]
						5661,	-- Touch of Weakness [Mulgore]
						5662,	-- Touch of Weakness [Orgrimmar]
					},
					["qg"] = 3044,	-- Miles Welsh <Priest Trainer>
					["coord"] = { 26.0, 15.8, MAP.THUNDER_BLUFF },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 10,
					["groups"] = {
						{
							["recipeID"] = 2652,	-- Touch of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
				}),
				q(3761, {	-- Un'Goro Soil
					["sourceQuests"] = {
						936,	-- Assisting Arch Druid Runetotem [Orgrimmar]
						3762,	-- Assisting Arch Druid Runetotem [Thunder Bluff]
						3784,	-- Assisting Arch Druid Runetotem [Undercity]
					},
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
					["coord"] = { 78.4, 28.4, MAP.THUNDER_BLUFF },
					["maps"] = { MAP.UNGORO_CRATER },
					["cost"] = { { "i", 11018, 20 } },	-- 20x Un'Goro Soil
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(264, {	-- Until Death Do Us Part
					["providers"] = {
						{ "n", 5543 },	-- Clarice Foster
						{ "i", 6145 },	-- Clarice's Pendant
					},
					["coord"] = { 28.19, 25.31, MAP.THUNDER_BLUFF },
					["maps"] = { MAP.SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
			}),
			n(VENDORS, {
				n(8359, {	-- Ahanu <Leather Armor Merchant>
					["coord"] = { 45.6, 55.8, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						236,	-- Cured Leather Armor
						1849,	-- Cured Leather Belt
						238,	-- Cured Leather Boots
						1850,	-- Cured Leather Bracers
						239,	-- Cured Leather Gloves
						237,	-- Cured Leather Pants
						1843,	-- Tanned Leather Belt
						843,	-- Tanned Leather Boots
						1844,	-- Tanned Leather Bracers
						844,	-- Tanned Leather Gloves
						846,	-- Tanned Leather Jerkin
						845,	-- Tanned Leather Pants
					}},
				}),
				n(3019, {	-- Delgo Ragetotem <Axe Merchant>
					["coord"] = { 53.8, 57.2, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
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
					["groups"] = {
						i(12249, {	-- Merciless Axe
							["isLimited"] = true,
						}),
					},
				}),
				n(8360, {	-- Elki <Mail Armor Merchant>
					["coord"] = { 45.2, 56.6, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						17187,	-- Banded Buckler
						847,	-- Chainmail Armor
						1845,	-- Chainmail Belt
						849,	-- Chainmail Boots
						1846,	-- Chainmail Bracers
						850,	-- Chainmail Gloves
						848,	-- Chainmail Pants
						2445,	-- Large Metal Shield
						17188,	-- Ringed Buckler
						1853,	-- Scalemail Belt
						287,	-- Scalemail Boots
						1852,	-- Scalemail Bracers
						718,	-- Scalemail Gloves
						286,	-- Scalemail Pants
						285,	-- Scalemail Vest
						1202,	-- Wall Shield
					}},
				}),
				n(3020, {	-- Etu Ragetotem <Mace & Staff Merchant>
					["coord"] = { 58.2, 52.0, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
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
				n(3003, {	-- Fyr Mistrunner <Bread Vendor>
					["coord"] = { 41.4, 53.2, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4541),	-- Freshly Baked Bread
						i(8950),	-- Homemade Cherry Pie
						i(4542),	-- Moist Cornbread
						i(4544),	-- Mulgore Spice Bread
						i(4601),	-- Soft Banana Bread
						i(4540),	-- Tough Hunk of Bread
					},
				}),
				n(3093, {	-- Grod <Leather Armor Merchant>
					["coord"] = { 42.4, 43.2, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2371,	-- Battered Leather Belt
						2373,	-- Battered Leather Boots
						2374,	-- Battered Leather Bracers
						2375,	-- Battered Leather Gloves
						2370,	-- Battered Leather Harness
						2372,	-- Battered Leather Pants
						236,	-- Cured Leather Armor
						1849,	-- Cured Leather Belt
						238,	-- Cured Leather Boots
						1850,	-- Cured Leather Bracers
						239,	-- Cured Leather Gloves
						237,	-- Cured Leather Pants
						1843,	-- Tanned Leather Belt
						843,	-- Tanned Leather Boots
						1844,	-- Tanned Leather Bracers
						844,	-- Tanned Leather Gloves
						846,	-- Tanned Leather Jerkin
						845,	-- Tanned Leather Pants
					}},
				}),
				n(8401, {	-- Halpa <Prairie Dog Vendor>
					["coord"] = { 62.2, 58.6, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10394),	-- Brown Prairie Dog (PET!)
					},
				}),
				n(8358, {	-- Hewa <Cloth Armor Merchant>
					["coord"] = { 45.6, 56.7, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						16059,	-- Common Brown Shirt
						3428,	-- Common Grey Shirt
						16060,	-- Common White Shirt
						837,	-- Heavy Weave Armor
						3589,	-- Heavy Weave Belt
						3590,	-- Heavy Weave Bracers
						839,	-- Heavy Weave Gloves
						838,	-- Heavy Weave Pants
						840,	-- Heavy Weave Shoes
						3597,	-- Thick Cloth Belt
						3598,	-- Thick Cloth Bracers
						203,	-- Thick Cloth Gloves
						201,	-- Thick Cloth Pants
						202,	-- Thick Cloth Shoes
						200,	-- Thick Cloth Vest
					}},
				}),
				n(3018, {	-- Hogor Thunderhoof <Guns Merchant>
					["coord"] = { 55.6, 56.6, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						3024,	-- Bkp 2700 Enforcer
						2511,	-- Hunter's Boomstick
						3023,	-- Large Bore Blunderbuss
						2509,	-- Ornate Blunderbuss
					}},
					["groups"] = {
						i(2510),	-- Solid Blunderbuss
					},
				}),
				n(2997, {	-- Jyn Stonehoof <Weapons Merchant>
					["coord"] = { 41.6, 62.0, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
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
						2489,	-- Two-Handed Sword
						2495,	-- Walking Stick
						2493,	-- Wooden Mallet
					}},
				}),
				n(3021, {	-- Kard Ragetotem <Sword & Dagger Merchant>
					["coord"] = { 53.6, 56.6, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
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
						2208,	-- Poniard
						2534,	-- Rondel
						2027,	-- Scimitar
					}},
				}),
				n(3025, {	-- Kaga Mistrunner <Meat Vendor>
					["coord"] = { 52.3, 47.8, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4599),	-- Cured Ham Steak
						i(2287),	-- Haunch of Meat
						i(3770),	-- Mutton Chop
						i(8952),	-- Roasted Quail
						i(117),	-- Tough Jerky
						i(3771),	-- Wild Hog Shank
					},
				}),
				n(3015, {	-- Kuna Thunderhorn <Bowyer & Fletching Goods>
					["coord"] = { 46.8, 45.8, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						3027,	-- Heavy Recurve Bow
						3026,	-- Reinforced Bow
					}},
					["groups"] = {
						i(11303, {	-- Fine Shortbow
							["isLimited"] = true,
						}),
						i(11307, {	-- Massive Longbow
							["isLimited"] = true,
						}),
						i(11306, {	-- Sturdy Recurve
							["isLimited"] = true,
						}),
					},
				}),
				n(3002, {	-- Kurm Stonehoof <Mining Supplies>
					["coord"] = { 34.35, 56.58, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{ "sub", "common_vendor", 4599 }},	-- Sarah Killan <Mining Supplies>
				}),
				n(8362, {	-- Kuruk <General Goods>
					["coord"] = { 39.0, 64.4, MAP.THUNDER_BLUFF },	-- Wayfarer's Rest
					["races"] = HORDE_ONLY,
					["sym"] = {{ "select","itemID",
						4498,	-- Brown Leather Satchel
						4497,	-- Heavy Brown Bag
						4499,	-- Huge Brown Sack
						4496,	-- Small Brown Pouch
					}},
				}),
				n(3005, {	-- Mahu <Tailoring Supplies> [CATA+] / <Leatherworking & Tailoring Supplies>
					["coord"] = { 43.8, 45.1, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10311, {	-- Pattern: Orange Martial Shirt (RECIPE!)
							["isLimited"] = true,
						}),
						i(5771, {	-- Pattern: Red Linen Bag (RECIPE!)
							["isLimited"] = true,
						}),
						i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
							["isLimited"] = true,
						}),
						i(10325, {	-- Pattern: White Wedding Dress (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3027, {	-- Naal Mistrunner <Cooking Supplies>
					["coord"] = { 51.0, 52.5, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6330),	-- Recipe: Bristle Whisker Catfish (RECIPE!)
						i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(3017, {	-- Nan Mistrunner <Fruit Vendor>
					["coord"] = { 47.3, 42.4, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(8953),	-- Deep Fried Plantains
						i(4539),	-- Goldenbark Apple
						i(4602),	-- Moon Harvest Pumpkin
						i(4536),	-- Shiny Red Apple
						i(4538),	-- Snapvine Watermelon
						i(4537),	-- Tel'Abim Banana
					},
				}),
				n(3012, {	-- Nata Dawnstrider <Enchanting Supplies>
					["coord"] = { 44.9, 37.7, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{ "select","itemID",
							20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
							20752,	-- Formula: Minor Mana Oil (RECIPE!)
							20758,	-- Formula: Minor Wizard Oil (RECIPE!)
							6342,	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
							22307,	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
						},
					},
					["groups"] = {
						i(6349, {	-- Formula: Enchant 2H Weapon - Lesser Intellect (RECIPE!)
							["isLimited"] = true,
						}),
						i(6377, {	-- Formula: Enchant Boots - Minor Agility (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(8398, {	-- Ohanko <Two Handed Weapon Merchant>
					["coord"] = { 53.6, 56.8, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
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
					["coord"] = { 39.31, 64.28, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(4498),	-- Brown Leather Satchel
						i(4497),	-- Heavy Brown Bag
						i(4499),	-- Huge Brown Sack
						i(4496),	-- Small Brown Pouch
					},
				}),
				n(3029, {	-- Sewa Mistrunner <Fishing Supplies>
					["coord"] = { 55.8, 47.0, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
						i(6330),	-- Recipe: Bristle Whisker Catfish (RECIPE!)
					},
				}),
				n(8363, {	-- Shadi Mistrunner <Trade Supplies>
					["coord"] = { 40.6, 64.0, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
				}),
				n(3022, {	-- Sunn Ragetotem <Staff Merchant>
					["coord"] = { 49.6, 49.8, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2527,	-- Battle Staff
						2535,	-- War Staff
					}},
				}),
				n(3023, {	-- Sura Wildmane <War Harness Vendor>
					["coord"] = { 51.8, 54.6, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						6526,	-- Battle Harness
						6523,	-- Buckled Harness
						6525,	-- Grunt's Harness
						6524,	-- Studded Leather Harness
					}},
				}),
				n(3092, {	-- Tagain <Cloth Armor Merchant>
					["coord"] = { 43.4, 43.8, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2617,	-- Burning Robes
						2615,	-- Chromatic Robe
						2613,	-- Double Stitched Robes
						2435,	-- Embroidered Armor
						3587,	-- Embroidered Belt
						2438,	-- Embroidered Boots
						3588,	-- Embroidered Bracers
						2440,	-- Embroidered Gloves
						3892,	-- Embroidered Hat
						2437,	-- Embroidered Pants
						837,	-- Heavy Weave Armor
						3589,	-- Heavy Weave Belt
						3590,	-- Heavy Weave Bracers
						839,	-- Heavy Weave Gloves
						838,	-- Heavy Weave Pants
						840,	-- Heavy Weave Shoes
						2160,	-- Padded Armor
						3591,	-- Padded Belt
						2156,	-- Padded Boots
						3592,	-- Padded Bracers
						2158,	-- Padded Gloves
						2159,	-- Padded Pants
						2612,	-- Plain Robe
						2614,	-- Robe Of Apprenticeship
						3593,	-- Russet Belt
						2432,	-- Russet Boots
						3594,	-- Russet Bracers
						2434,	-- Russet Gloves
						3889,	-- Russet Hat
						2431,	-- Russet Pants
						2429,	-- Russet Vest
						2616,	-- Shimmering Silk Robes
						2618,	-- Silver Dress Robes
						3597,	-- Thick Cloth Belt
						3598,	-- Thick Cloth Bracers
						203,	-- Thick Cloth Gloves
						201,	-- Thick Cloth Pants
						202,	-- Thick Cloth Shoes
						200,	-- Thick Cloth Vest
					}},
					["groups"] = {
						i(3602),	-- Knitted Belt
						i(3603),	-- Knitted Bracers
						i(793),	-- Knitted Gloves
						i(794),	-- Knitted Pants
						i(792),	-- Knitted Sandals
						i(795),	-- Knitted Tunic
					},
				}),
				n(3016, {	-- Tand <Basket Weaver>
					["coord"] = { 49.1, 34.2, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{ "select","itemID",
						4498,	-- Brown Leather Satchel
						4497,	-- Heavy Brown Bag
						4496,	-- Small Brown Pouch
					}},
				}),
				n(2999, {	-- Taur Stonehoof <Blacksmithing Supplies>
					["coord"] = { 39.8, 55.6, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
				}),
				n(5189, {	-- Thrumn <Tabard Vendor>
					["coord"] = { 38.0, 63.0, MAP.THUNDER_BLUFF },
					["sym"] = { {"sub", "common_vendor", 5188} },	-- Garyl <Tabard Vendor>
					["races"] = HORDE_ONLY,
				}),
			}),
		},
	}),
}));
