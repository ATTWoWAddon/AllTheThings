---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, {
	m(THUNDER_BLUFF, {
		["lore"] = "Thunder Bluff is the Tauren capital city located in the northern part of the region of Mulgore. The whole of the city is built on bluffs several hundred feet above the surrounding landscape, and is accessible by elevators on the southwestern and northeastern sides.",
		["icon"] = 255144,
		["isRaid"] = true,
		["groups"] = {
			-- #if AFTER 4.2.0
			n(ACHIEVEMENTS, {
				applyclassicphase(CATA_PHASE_ONE, ach(5849, {	-- Fish or Cut Bait: Thunder Bluff
					["timeline"] = { ADDED_4_2_0 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["groups"] = {
						crit(17759, {	-- Pond Predators
							["_quests"] = { 29345 },
						}),
						crit(17760, {	-- The Ring's the Thing
							["_quests"] = { 29346 },
						}),
						crit(17761, {	-- The Race to Restock
							["_quests"] = { 29348 },
						}),
						crit(17762, {	-- Craving Crayfish
							["_quests"] = { 29349 },
						}),
						crit(17763, {	-- Shiny Baubles
							["_quests"] = { 29354 },
						}),
					},
				})),
				applyclassicphase(CATA_PHASE_ONE, ach(5843, {	-- Let's Do Lunch: Thunder Bluff
					["timeline"] = { ADDED_4_2_0 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["groups"] = {
						crit(17734, {	-- "Magic" Mushrooms
							["_quests"] = { 29362 },
						}),
						crit(17736, {	-- Corn Mash
							["_quests"] = { 29364 },
						}),
						crit(17735, {	-- Mulgore Spice Bread
							["_quests"] = { 29363 },
						}),
						crit(17737, {	-- Perfectly Picked Portions
							["_quests"] = { 29365 },
						}),
						crit(17733, {	-- Pining for Nuts
							["_quests"] = { 29358 },
						}),
					},
				})),
			}),
			-- #endif
			battlepets({
				["sym"] = {{"select","speciesID",
					477,	-- Gazelle Fawn (PET!)
					385,	-- Mouse  (PET!)
					386,	-- Prarie Dog (PET!)
					378,	-- Rabbit (PET!)
				}},
			}),
			n(FACTIONS, {
				faction(FACTION_THUNDER_BLUFF, {	-- Thunder Bluff
					-- #if AFTER CATA
					["provider"] = { "i", 45584 },	-- Thunder Bluff Tabard
					-- #else
					["icon"] = 236454,
					-- #endif
					["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
					["races"] = HORDE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(22, {	-- Thunder Bluff, Mulgore
					["cr"] = 2995,	-- Tal <Wind Rider Master>
					["coord"] = { 46.8, 50.0, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(FISHING, {
					i(67414, {	-- Bag of Shiny Things
						["provider"] = { "n", 3028 },	-- Kah Mistrunner
						["description"] = "Fishing Daily Quest Reward",
						["sourceQuests"] = {
							29349,	-- Craving Crayfish
							29345,	-- Pond Predators
							29354,	-- Shiny Baubles
							29348,	-- The Race to Restock
							29346,	-- The Ring's the Thing
						},
						["timeline"] = { ADDED_4_0_1 },
						["groups"] = {
							i(44983),	-- Strand Crawler (PET!)
							i(33820),	-- Weather-Beaten Fishing Hat
							i(45991),	-- Bone Fishing Pole
							i(45992),	-- Jeweled Fishing Pole
							i(67410),	-- Very Unlucky Rock
							i(67388),	-- String of Alligator Teeth
						},
					}),
					i(122214, {	-- Music Roll: Mulgore Plains
						["description"] = "Go fishing for a bit in the Pools of Vision beneath the Spirit Rise.",
						["coord"] = { 28.61, 24.61, THUNDER_BLUFF },
						["timeline"] = { ADDED_6_1_0 },
						["races"] = HORDE_ONLY,
					}),
				}),
			}),
			n(QUESTS, {
				q(29362, {	-- "Magic" Mushrooms
					["qg"] = 3026,	-- Aska Mistrunner
					["coord"] = { 51.2, 52.2, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(6361, {	-- A Bundle of Hides
					["providers"] = {
						-- #if AFTER CATA
						{ "n", 3079 },	-- Varg Windwhisper
						-- #else
						{ "n", 3483 },	-- Jahan Hawkwing <Leather & Mail Armor Merchant>
						-- #endif
						{ "i", 16282 },	-- Bundle of Hides
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 46, 58.2, MULGORE },
						-- #else
						{ 51.2, 29.0, THE_BARRENS },
						-- #endif
					},
					["races"] = { TAUREN },
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(7822, {	-- A Donation of Mageweave
					["qg"] = 14728,	-- Rumstag Proudstrider
					["coord"] = { 43.2, 42.8, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7823, {	-- A Donation of Runecloth
					["qg"] = 14728,	-- Rumstag Proudstrider
					["coord"] = { 43.2, 42.8, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7821, {	-- A Donation of Silk
					["qg"] = 14728,	-- Rumstag Proudstrider
					["coord"] = { 43.2, 42.8, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7820, {	-- A Donation of Wool
					["qg"] = 14728,	-- Rumstag Proudstrider
					["coord"] = { 43.2, 42.8, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(7825, {	-- Additional Runecloth [Thunder Bluff]
					["sourceQuest"] = 7823,	-- A Donation of Runecloth
					["qg"] = 14728,	-- Rumstag Proudstrider
					["coord"] = { 43.2, 42.8, THUNDER_BLUFF },
					["maxReputation"] = { FACTION_THUNDER_BLUFF, EXALTED },	-- Thunder Bluff, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(936, {	-- Assisting Arch Druid Runetotem [Orgrimmar]
					["qg"] = 6929,	-- Innkeeper Gryshka
					["coord"] = { 54.2, 68.4, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(3762, {	-- Assisting Arch Druid Runetotem [Thunder Bluff]
					["qg"] = 6746,	-- Innkeeper Pala
					["coord"] = { 45.8, 64.4, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(3784, {	-- Assisting Arch Druid Runetotem [Undercity]
					["qg"] = 6741,	-- Innkeeper Norman
					["coord"] = { 67.6, 38.2, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(1845, {	-- Brutal Helm
					["sourceQuest"] = 1844,	-- Chimaeric Horn
					["qg"] = 6410,	-- Orm Stonehoof
					["coord"] = { 39, 55.8, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(7130, {	-- Brutal Helm
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(BURLY_BRAWL, {
					["questID"] = 75300,	-- Burly Brawl HQT	-- TODO: Confirm if this is the same HQT.
					["qgs"] = {
						207743,	-- Netali Proudwind <General Goods>
						207754,	-- Mooart
					},
					["coord"] = { 28.8, 19.2, THUNDER_BLUFF },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(204716, {	-- Rune of Frenzied Assault
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(425447),	-- Engrave Pants - Frenzied Assault
							},
						}),
					},
				})),
				-- #endif
				q(1844, {	-- Chimaeric Horn
					["sourceQuest"] = 1840,	-- Orm Stonehoof and the Brutal Helm
					["qg"] = 6410,	-- Orm Stonehoof
					["coord"] = { 39, 55.8, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STONETALON_MOUNTAINS },
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
				q(29364, {	-- Corn Mash
					["qg"] = 3026,	-- Aska Mistrunner
					["coord"] = { 51.2, 52.2, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(29349, {	-- Craving Crayfish
					["qg"] = 3028,	-- Kah Mistrunner
					["coord"] = { 56.12, 46.34, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(1205, {	-- Deadmire
					["qg"] = 3441,	-- Melor Stonehoof
					["coord"] = { 61.52, 80.88, THUNDER_BLUFF },
					["maps"] = { DUSTWALLOW_MARSH },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Deadmire's Tooth
							["provider"] = { "i", 5945 },	-- Deadmire's Tooth
							["coord"] = { 47.6, 56.6, DUSTWALLOW_MARSH },
							["cr"] = 4841,	-- Deadmire
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				q(5644, {	-- Devouring Plague [Thunder Bluff]
					["altQuests"] = {
						5646,	-- Devouring Plague [Orgrimmar]
						5679,	-- Devouring Plague [Undercity]
					},
					["qg"] = 3044,	-- Miles Welsh <Priest Trainer>
					["coord"] = { 26.0, 15.8, THUNDER_BLUFF },
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 2944,	-- Devouring Plague (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(1064, {	-- Forsaken Aid
					["sourceQuest"] = 1063,	-- The Elder Crone
					["qg"] = 4046,	-- Magatha Grimtotem
					["coord"] = { 69.85, 30.91, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
				}),
				q(1136, {	-- Frostmaw
					["sourceQuest"] = 1131,	-- Steelsnap
					["providers"] = {
						{ "n", 3441 },	-- Melor Stonehoof
						{ "i", 5838 },	-- Kodo Skin Scroll
					},
					["coord"] = { 61.52, 80.88, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ALTERAC_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/1 Frostmaw's Mane
							["providers"] = {
								{ "i", 5811 },	-- Frostmaw's Mane
								{ "o", 1770 },	-- Flame of Uzel
								{ "i", 5810 },	-- Fresh Carcass
							},
							["coord"] = { 37, 68, ALTERAC_MOUNTAINS },
							["cr"] = 4504,	-- Frostmaw
						}),
						-- #if BEFORE 4.0.3
						i(5810, {	-- Fresh Carcass
							["crs"] = {
								2385,	-- Feral Mountain Lion
								2407,	-- Hulking Mountain Lion
								2406,	-- Mountain Lion
								2384,	-- Starving Mountain Lion
							},
						}),
						-- #endif
						i(6720, {	-- Spirit Hunter Headdress
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(768, {	-- Gathering Leather
					-- #if BEFORE 8.0.1
					["description"] = "This quest becomes available at Skinning skill level 1 when the character level requirement is met.",
					-- #else
					["description"] = "This quest becomes available at Classic Skinning skill level 1 when the character level requirement is met.",
					-- #endif
					["qg"] = 3050,	-- Veren Tallstrider
					["coord"] = { 44.0, 44.6, THUNDER_BLUFF },
					["cost"] = { { "i", 2318, 12 } },	-- Light Leather
					["requireSkill"] = SKINNING,
					["races"] = HORDE_ONLY,
					["lvl"] = 4,
					["groups"] = {
						i(131214, {	-- Animal Scale Belt
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(5936),	-- Animal Skin Belt
						i(4962),	-- Double-layered Gloves
						i(131215, {	-- Mulit-Scaled Gloves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				q(5656, {	-- Hex of Weakness [Thunder Bluff]
					["altQuests"] = {
						5652,	-- Hex of Weakness [Orgrimmar]
						5654,	-- Hex of Weakness [Durotar]
						5655,	-- Hex of Weakness [Mulgore]
						5657,	-- Hex of Weakness [Undercity]
					},
					["qg"] = 3044,	-- Miles Welsh <Priest Trainer>
					["coord"] = { 26.0, 15.8, THUNDER_BLUFF },
					["timeline"] = { REMOVED_2_4_1 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 9035,	-- Hex of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(769, {	-- Kodo Hide Bag
					-- #if BEFORE 8.0.1
					["description"] = "This quest becomes available at Leatherworking skill level 10 when the character level requirement is met.",
					-- #else
					["description"] = "This quest becomes available at Classic Leatherworking skill level 10 when the character level requirement is met.",
					-- #endif
					["qg"] = 3050,	-- Veren Tallstrider
					["coord"] = { 44, 44.6, THUNDER_BLUFF },
					["requireSkill"] = LEATHERWORKING,
					["races"] = HORDE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						i(5083, {	-- Pattern: Kodo Hide Bag (RECIPE!)
							-- #if BEFORE 9.2.5
							["description"] = "This recipe is not soulbound and can be mailed to Horde alts.",
							-- #else
							["description"] = "This recipe is not soulbound and can be mailed to both Alliance and Horde alts.",
							-- #endif
						}),
					},
				}),
				q(1130, {	-- Melor Sends Word
					["qg"] = 3387,	-- Jorn Skyseer
					["coord"] = { 44.8, 59, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
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
					["coord"] = { 78.4, 28.4, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(3786, {	-- Morrowgrain Research (2/2)
					["sourceQuest"] = 3782,	-- Morrowgrain Research (1/2)
					["qg"] = 9087,	-- Bashana Runetotem
					["coord"] = { 70.8, 33.8, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11040, 10 } },	-- Morrowgrain
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(3804, {	-- Morrowgrain to Thunder Bluff
					["sourceQuest"] = 3786,	-- Morrowgrain Research (2/2)
					["qg"] = 9087,	-- Bashana Runetotem
					["coord"] = { 70.8, 33.8, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11040, 10 } },	-- Morrowgrain
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(29363, {	-- Mulgore Spice Bread
					["qg"] = 3026,	-- Aska Mistrunner
					["coord"] = { 51.2, 52.2, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(29365, {	-- Perfectly Picked Portions
					["qg"] = 3026,	-- Aska Mistrunner
					["coord"] = { 51.2, 52.2, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(29358, {	-- Pining for Nuts
					["qg"] = 3026,	-- Aska Mistrunner
					["coord"] = { 51.2, 52.2, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(29345, {	-- Pond Predators
					["qg"] = 3028,	-- Kah Mistrunner
					["coord"] = { 56.12, 46.34, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(14100, {	-- Relic of the Earthen Ring
					["qgs"] = {
						35068,	-- Gotura Fourwinds <The Earthen Ring>
						13417,	-- Sagorne Creststrider <Shaman Trainer>
						3030,	-- Siln Skychaser <Shaman Trainer>
					},
					["coords"] = {
						{ 32.6, 38.8, ORGRIMMAR },
						{ 38.7, 35.9, ORGRIMMAR },
						{ 23.0, 20.8, THUNDER_BLUFF },
					},
					["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 5178, 1 },	-- Air Totem
						{ "i", 5175, 1 },	-- Earth Totem
						{ "i", 5176, 1 },	-- Fire Totem
						{ "i", 5177, 1 },	-- Water Totem
					},
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(46978, {	-- Totem of the Earthen Ring
							["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
						}),
					},
				}),
				q(6364, {	-- Return to Jahan / Return to Varg [CATA+]
					["sourceQuest"] = 6363,	-- Tal the Wind Rider Master
					["providers"] = {
						{ "n", 2995 },	-- Tal
						{ "i", 16283 },	-- Ahanu's Leather Goods
					},
					["coord"] = { 46.8, 50, THUNDER_BLUFF },
					["maps"] = {
						-- #if AFTER CATA
						MULGORE,
						-- #else
						THE_BARRENS,
						-- #endif
					},
					["races"] = { TAUREN },
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(6362, {	-- Ride to Thunder Bluff
					["sourceQuest"] = 6361,	-- A Bundle of Hides
					["providers"] = {
						-- #if AFTER CATA
						{ "n", 40809 },	-- Tak
						-- #else
						{ "n", 3615 },	-- Devrak
						-- #endif
						{ "i", 16282 },	-- Bundle of Hides
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 47.4, 58.6, MULGORE },
						-- #else
						{ 51.50, 30.34, THE_BARRENS },
						-- #endif
					},
					["races"] = { TAUREN },
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				-- #if NOT ANYCLASSIC
				q(5642, {	-- Shadowguard [Thunder Bluff]
					["altQuests"] = {
						5643,	-- Shadowguard [Undercity]
						5680,	-- Shadowguard [Orgrimmar]
					},
					["qg"] = 3044,	-- Miles Welsh <Priest Trainer>
					["coord"] = { 26.0, 15.8, THUNDER_BLUFF },
					["timeline"] = { REMOVED_2_4_1 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 20,
					-- #if BEFORE 2.4.1
					["groups"] = {
						{
							["recipeID"] = 18137,	-- Shadowguard (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(29354, {	-- Shiny Baubles
					["qg"] = 3028,	-- Kah Mistrunner
					["coord"] = { 56.12, 46.34, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						i(67414),	-- Bag of Shiny Things
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(76156, {	-- Stalk With The Earthmother (1/3)
					["providers"] = {
						{ "n", 205729 },	-- Boarton Shadetotem <Rogue Trainer?>
						{ "i", 206159 },	-- Venture Co Disguise
					},
					["coord"] = { 39.6, 65.6, THUNDER_BLUFF },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { MULGORE },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
					["groups"] = {
						objective(1, {	-- 0/5 Seaforium Mining Charge
							["providers"] = {
								{ "i", 206157 },	-- Seaforium Mining Charge
								{ "o", 403041 },	-- Blasting Supplies
							},
							["coord"] = { 61, 47, MULGORE },
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, q(76160, {	-- Stalk With The Earthmother (2/3)
					["sourceQuest"] = 76156,	-- Stalk With The Earthmother (1/3)
					["qg"] = 205729,	-- Boarton Shadetotem <Rogue Trainer?>
					["coord"] = { 39.6, 65.6, THUNDER_BLUFF },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { MULGORE },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
					["groups"] = {
						objective(1, {	-- 0/1 Pine Salve
							["providers"] = {
								{ "i", 206175 },	-- Pine Salve
								{ "o", 403105 },	-- Windfury Cone
							},
							["cost"] = {
								{ "i", 206176, 1 },	-- Mortar and Pestle
								{ "i", 206170, 8 },	-- Windfury Cone
							},
							["coord"] = { 53.48, 9.37, MULGORE },
						}),
						i(206177),	-- Pine Nut Butter
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, q(76240, {	-- Stalk With The Earthmother (3/3)
					["sourceQuest"] = 76160,	-- Stalk With The Earthmother (2/3)
					["qg"] = 205729,	-- Boarton Shadetotem <Rogue Trainer?>
					["coord"] = { 39.6, 65.6, THUNDER_BLUFF },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 6,
					["groups"] = {
						objective(1, {	-- 0/1 Fish Chunks
							["providers"] = {
								{ "i", 206345 },	-- Fish Chunks
								{ "i", 206344 },	-- Knife Set
							},
							["cost"] = {{ "i", 6291, 1 }},	-- Raw Brilliant Smallfish
							["coord"] = { 53.48, 9.37, THUNDER_BLUFF },
						}),
						recipe(674, {	-- Dual Wield
							["classes"] = { SHAMAN },
						}),
						recipe(410104, {	-- Engrave Gloves - Lava Lash
							["classes"] = { SHAMAN },
						}),
					},
				})),
				-- #endif
				q(1131, {	-- Steelsnap
					["sourceQuest"] = 1130,	-- Melor Sends Word
					["qg"] = 3441,	-- Melor Stonehoof
					["coord"] = { 61.51, 80.88, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Steelsnap's Rib
							["provider"] = { "i", 5837 },	-- Steelsnap's Rib
							["coord"] = { 13.6, 28.0, THOUSAND_NEEDLES },
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
					["coord"] = { 45.74, 55.86, THUNDER_BLUFF },
					["maps"] = {
						-- #if AFTER CATA
						MULGORE,
						-- #else
						THE_BARRENS,
						-- #endif
					},
					["races"] = { TAUREN },
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(1086, {	-- The Flying Machine Airport
					["sourceQuest"] = 1067,	-- Return to Thunder Bluff
					["qg"] = 3419,	-- Apothecary Zamah
					["coord"] = { 22.85, 20.90, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STONETALON_MOUNTAINS },
					["races"] = HORDE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- Place the Toxic Fogger
							["provider"] = { "i", 5638 },	-- Toxic Fogger
							["coord"] = { 66, 45, STONETALON_MOUNTAINS },
						}),
					},
				}),
				q(29348, {	-- The Race to Restock
					["qg"] = 3028,	-- Kah Mistrunner
					["coord"] = { 56.12, 46.34, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(29346, {	-- The Ring's the Thing
					["qg"] = 3028,	-- Kah Mistrunner
					["coord"] = { 56.12, 46.34, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						i(67414),	-- Bag of Shiny Things
						i(69956),	-- Blind Cavefish
					},
				}),
				q(1195, {	-- The Sacred Flame (1/3)
					["qg"] = 4721,	-- Zangen Stonehoof
					["coord"] = { 54.97, 51.32, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Etched Phial
							["provider"] = { "i", 5868 },	-- Filled Etched Phial
							["coord"] = { 60, 72, ASHENVALE },
							["cost"] = {{ "i", 5867, 1 }},	-- Etched Phial
						}),
						-- #if BEFORE 4.0.3
						i(5867, {	-- Etched Phial
							["cr"] = 4054,	-- Laughing Sister
						}),
						-- #endif
					},
				}),
				q(1196, {	-- The Sacred Flame (2/3)
					["sourceQuest"] = 1195,	-- The Sacred Flame (1/3)
					["providers"] = {
						{ "n", 4721 },	-- Zangen Stonehoof
						{ "i", 5868 },	-- Filled Etched Phial
					},
					["coord"] = { 54.97, 51.32, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THOUSAND_NEEDLES },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(1197, {	-- The Sacred Flame (3/3)
					["sourceQuest"] = 1196,	-- The Sacred Flame (2/3)
					["providers"] = {
						{ "n", 4722 },	-- Rau Cliffrunner
						{ "i", 5868 },	-- Filled Etched Phial
					},
					["coord"] = { 46.13, 51.69, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 5869, 1 },	-- Cloven Hoof
					},
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Cloven Hoof
							["providers"] = {
								{ "i", 5869 },	-- Cloven Hoof
								{ "o", 20807 },	-- Ancient Brazier
							},
							["coord"] = { 42, 35, THOUSAND_NEEDLES },
						}),
						i(6739, {	-- Cliffrunner's Aim
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6740, {	-- Azure Sash
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				q(5663, {	-- Touch of Weakness [Thunder Bluff]
					["altQuests"] = {
						5658,	-- Touch of Weakness [Undercity]
						5660,	-- Touch of Weakness [Durotar]
						5661,	-- Touch of Weakness [Mulgore]
						5662,	-- Touch of Weakness [Orgrimmar]
					},
					["qg"] = 3044,	-- Miles Welsh <Priest Trainer>
					["coord"] = { 26.0, 15.8, THUNDER_BLUFF },
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 2652,	-- Touch of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(3761, {	-- Un'Goro Soil
					["sourceQuests"] = {
						936,	-- Assisting Arch Druid Runetotem [Orgrimmar]
						3762,	-- Assisting Arch Druid Runetotem [Thunder Bluff]
						3784,	-- Assisting Arch Druid Runetotem [Undercity]
					},
					["qg"] = 5769,	-- Arch Druid Hamuul Runetotem
					["coord"] = { 78.4, 28.4, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNGORO_CRATER },
					["cost"] = {{ "i", 11018, 20 }},	-- Un'Goro Soil
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
				}),
				q(264, {	-- Until Death Do Us Part
					["providers"] = {
						{ "n", 5543 },	-- Clarice Foster
						{ "i", 6145 },	-- Clarice's Pendant
					},
					["coord"] = { 28.19, 25.31, THUNDER_BLUFF },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(26397, {	-- Walk With The Earth Mother
					["sourceQuest"] = 24540,	-- War Dance
					["altQuests"] = { 26398 },	-- Walk With The Earth Mother
					["qg"] = 36648,	-- Baine Bloodhoof <High Chieftain>
					["coord"] = { 60.3, 51.7, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { TAUREN },
				}),
				q(24540, {	-- War Dance
					["sourceQuest"] = 24550,	-- Journey into Thunder Bluff
					["qg"] = 36648,	-- Baine Bloodhoof
					["coord"] = { 60.3, 51.7, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { TAUREN },
					["groups"] = {
						i(57241, {	-- Dreamwalking Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57230, {	-- Kodo Mallet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57214, {	-- Stunted Tree Root
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57239, {	-- Sunwalker's Stunner
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156986, {	-- Kodo Gavel
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(57793),	-- Kodo Saddlebag
					},
				}),
			}),
			n(VENDORS, {
				n(8359, {	-- Ahanu <Leather Armor Merchant>
					["coord"] = { 45.6, 55.8, THUNDER_BLUFF },
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
				n(50483, {	-- Brave Tuho <Thunder Bluff Quartermaster>
					["coord"] = { 47.05, 50.23, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(167860, {	-- Ancient Tauren Talisman
							["timeline"] = { ADDED_8_2_0 },
							["races"] = { TAUREN },
						}),
						i(45584, {	-- Thunder Bluff Tabard
							["timeline"] = { ADDED_3_1_0 },
						}),
						i(64917, {	-- Cape of Thunder Bluff
							["minReputation"] = { FACTION_THUNDER_BLUFF, EXALTED },	-- Thunder Bluff, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64918, {	-- Mantle of Thunder Bluff
							["minReputation"] = { FACTION_THUNDER_BLUFF, EXALTED },	-- Thunder Bluff, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64919, {	-- Shroud of Thunder Bluff
							["minReputation"] = { FACTION_THUNDER_BLUFF, EXALTED },	-- Thunder Bluff, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67534, {	-- Thunder Bluff Satchel
							["minReputation"] = { FACTION_THUNDER_BLUFF, REVERED },	-- Thunder Bluff, Revered.
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				n(3019, {	-- Delgo Ragetotem <Axe Merchant>
					["coord"] = { 53.8, 57.2, THUNDER_BLUFF },
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
						37, 	-- Worn Axe
					}},
					["groups"] = {
						i(12249, {	-- Merciless Axe
							["isLimited"] = true,
						}),
					},
				}),
				n(8360, {	-- Elki <Mail Armor Merchant>
					["coord"] = { 45.2, 56.6, THUNDER_BLUFF },
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
					["coord"] = { 58.2, 52.0, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						925,	-- Flail
						1197,	-- Giant Mace
						2030,	-- Gnarled Staff
						2028,	-- Hammer
						928,	-- Long Staff
						852,	-- Mace
						924,	-- Maul
						20981,	-- Neophyte's Mace
						854,	-- Quarter Staff
						2026,	-- Rock Hammer
					}},
				}),
				-- #if AFTER CATA
				n(3095, {	-- Fela <Heavy Armor Merchant>
					["coord"] = { 42.8, 44.6, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2419,	-- Augmented Chain Belt
						2420,	-- Augmented Chain Boots
						2421,	-- Augmented Chain Bracers
						2422,	-- Augmented Chain Gloves
						3891,	-- Augmented Chain Helm
						2418,	-- Augmented Chain Leggings
						2417,	-- Augmented Chain Vest
						2451,	-- Crested Heater Shield
						62260,	-- Grunts Chain Belt
						62261,	-- Grunts Chain Boots
						62262,	-- Grunts Chain Bracers
						62266,	-- Grunts Chain Circlet
						62263,	-- Grunts Chain Gloves
						62264,	-- Grunts Chain Leggings
						62265,	-- Grunts Chain Vest
						62253,	-- Grunts Plate Armor
						62254,	-- Grunts Plate Belt
						62255,	-- Grunts Plate Boots
						62256,	-- Grunts Plate Bracers
						62257,	-- Grunts Plate Gloves
						62259,	-- Grunts Plate Helm
						62258,	-- Grunts Plate Leggings
						2448,	-- Heavy Pavise
						2446,	-- Kite Shield
						17189,	-- Metal Buckler
						17190,	-- Ornate Buckler
						2148,	-- Polished Scale Belt
						2149,	-- Polished Scale Boots
						2150,	-- Polished Scale Bracers
						2151,	-- Polished Scale Gloves
						2152,	-- Polished Scale Leggings
						2153,	-- Polished Scale Vest
						17192,	-- Reinforced Targe
					}},
				}),
				-- #endif
				n(3093, {	-- Grod <Leather Armor Merchant>
					["coord"] = { 42.4, 43.2, THUNDER_BLUFF },
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
					["coord"] = { 62.2, 58.6, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10394),	-- Brown Prairie Dog (PET!)
					},
				}),
				n(8358, {	-- Hewa <Cloth Armor Merchant>
					["coord"] = { 45.6, 56.7, THUNDER_BLUFF },
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
					["coord"] = { 55.6, 56.6, THUNDER_BLUFF },
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
					["coord"] = { 41.6, 62.0, THUNDER_BLUFF },
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
					["coord"] = { 53.6, 56.6, THUNDER_BLUFF },
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
						2208,	-- Poniad
						20977,	-- Recruit's Shortsword
						2534,	-- Rondel
						2027,	-- Scimitar
						20982,	-- Sharp Dagger
					}},
				}),
				n(3015, {	-- Kuna Thunderhorn <Bowyer & Fletching Goods>
					["coord"] = { 46.8, 45.8, THUNDER_BLUFF },
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
					["coord"] = { 34.35, 56.58, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{ "sub", "common_vendor", 4599 }},	-- Sarah Killan <Mining Supplies>
				}),
				n(8362, {	-- Kuruk <General Goods>
					["coord"] = { 39.0, 64.4, THUNDER_BLUFF },	-- Wayfarer's Rest
					["races"] = HORDE_ONLY,
					["sym"] = {{ "select","itemID",
						4498, 	-- Brown Leather Satchel
						4497, 	-- Heavy Brown Bag
						4499, 	-- Huge Brown Sack
						4496, 	-- Small Brown Pouch
					}},
					["groups"] = {
						i(1179),	-- Ice Cold Milk
					},
				}),
				n(3005, {	-- Mahu <Tailoring Supplies> [CATA+] / <Leatherworking & Tailoring Supplies>
					["coord"] = { 43.8, 45.1, THUNDER_BLUFF },
					-- #if BEFORE CATA
					["sym"] = { {"sub", "common_vendor", 5565} },	-- Jillian Tanner <Leatherworking Supplies>
					-- #endif
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(
						-- #if AFTER CATA
						COMMON_CATACLYSM_TAILORING_RECIPES,
						-- #endif
						{
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
					}),
				}),
				-- #if AFTER CATA
				n(3008, {	-- Mak <Leatherworking Supplies> [CATA+] / <Journeyman Leatherworker>
					["coord"] = { 42.08, 43.46, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = { {"sub", "common_vendor", 5565} },	-- Jillian Tanner <Leatherworking Supplies>
				}),
				-- #endif
				n(3027, {	-- Naal Mistrunner <Cooking Supplies>
					["coord"] = { 51.0, 52.5, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					-- #if AFTER CATA
					["sym"] = {{"sub", "common_vendor", 49737}},	-- Shazdar <Sous Chef>
					-- #endif
					["groups"] = {
						i(6330),	-- Recipe: Bristle Whisker Catfish (RECIPE!)
						i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(3012, {	-- Nata Dawnstrider <Enchanting Supplies>
					["coord"] = { 44.9, 37.7, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {
						-- #if AFTER CATA
						{"sub", "common_recipes_vendor", 3346},	-- Kithas <Enchanting Supplies>
						-- #endif
						{ "select","itemID",
							20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
							20752,	-- Formula: Minor Mana Oil (RECIPE!)
							20758,	-- Formula: Minor Wizard Oil (RECIPE!)
							-- #if BEFORE CATA
							6342,	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
							-- #endif
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
					["coord"] = { 53.6, 56.8, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						23346,	-- Battleworn Claymore
						52557,	-- Battleworn Hammer
						2523,	-- Bullova
						2531,	-- Great Axe
						2521,	-- Flamberge
						73210,	-- Trainee's Sword
						2525,	-- War Hammer
						2533,	-- War Maul
						57244,	-- Warder's Spear
						12282,	-- Worn Battleaxe
						49778,	-- Worn Greatsword
						57243,	-- Worn Spear
						52532,	-- Worn Wood Chopper
						2529,	-- Zweihander
					}},
				}),
				n(52658, {	-- Paku Cloudchaser <Jewelcrafting Supplies>
					["coord"] = { 34.75, 53.45, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
					["sym"] = {{ "sub", "common_recipes_vendor", 50482 }},	-- Marith Lazuria <Jewelcrafting Supplies>
				}),
				n(8364, {	-- Pakwa <Bag Vendor>
					["coord"] = { 39.31, 64.28, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					-- #if AFTER CATA
					["sym"] = {{"select","itemID", 30746}},	-- Mining Sack
					-- #endif
					["groups"] = {
						i(4498),	-- Brown Leather Satchel
						-- #if AFTER CATA
						i(30748),	-- Enchanter's Satchel
						i(30747),	-- Gem Pouch
						-- #endif
						i(4497),	-- Heavy Brown Bag
						-- #if AFTER CATA
						i(30745),	-- Heavy Toolbox
						-- #endif
						i(4499),	-- Huge Brown Sack
						i(4496),	-- Small Brown Pouch
						-- #if AFTER CATA
						--i(60335),	-- Thick Hide Pack	// blacklisted as its a common vendor good since cata
						-- #endif
					},
				}),
				n(52655, {	-- Palehoof's Big Bag of Parts <Engineering Supplies>
					["coord"] = { 36.22, 60.21, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18647, {	-- Schematic: Red Firework (RECIPE!)
							["isLimited"] = true,
						}),
						i(22729, {	-- Schematic: Steam Tonk Controller (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3029, {	-- Sewa Mistrunner <Fishing Supplies>
					["coord"] = { 55.8, 47.0, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
						i(6330),	-- Recipe: Bristle Whisker Catfish (RECIPE!)
					},
				}),
				n(8363, {	-- Shadi Mistrunner <Trade Supplies>
					["coord"] = { 40.6, 64.0, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21948, {	-- Design: Opal Necklace of Impact
							["isLimited"] = true,
							["timeline"] = { ADDED_2_0_1 },
						}),
					},
				}),
				n(3022, {	-- Sunn Ragetotem <Staff Merchant>
					["coord"] = { 49.6, 49.8, THUNDER_BLUFF },
					["sym"] = {{"select","itemID",
						2527,	-- Battle Staff
						2535,	-- War Staff
					}},
				}),
				n(3023, {	-- Sura Wildmane <War Harness Vendor>
					["coord"] = { 51.8, 54.6, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						6526,	-- Battle Harness
						6523,	-- Buckled Harness
						6525,	-- Grunt's Harness
						6524,	-- Studded Leather Harness
					}},
				}),
				n(3092, {	-- Tagain <Cloth Armor Merchant>
					["coord"] = { 43.4, 43.8, THUNDER_BLUFF },
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
					["coord"] = { 49.1, 34.2, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["sym"] = {{ "select","itemID",
						4498, 	-- Brown Leather Satchel
						4497, 	-- Heavy Brown Bag
						4496, 	-- Small Brown Pouch
					}},
				}),
				n(2999, {	-- Taur Stonehoof <Blacksmithing Supplies>
					["coord"] = { 39.8, 55.6, THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					-- #if AFTER CATA
					["sym"] = {{"sub", "common_recipes_vendor", 46359}},	-- Punra <Blacksmithing Supplies>
					-- #endif
				}),
				n(5189, {	-- Thrumn <Tabard Vendor>
					["coord"] = { 38.0, 63.0, THUNDER_BLUFF },
					["sym"] = { {"sub", "common_vendor", 5188} },	-- Garyl <Tabard Vendor>
					["races"] = HORDE_ONLY,
				}),
			}),
			-- #if NOT ANYCLASSIC
			-- CRIEVE NOTE: I'm going to solve this a different way eventually.
			o(207323, {	-- Warchief's Command Board
				["coord"] = { 42.6, 57.4, THUNDER_BLUFF },
				["timeline"] = { ADDED_4_0_1 },
				["sym"] = WARCHIEFS_COMMAND_BOARD_SYMLINK,
				["races"] = HORDE_ONLY,
				["skipFill"] = true,
			}),
			-- #endif
		},
	}),
}));
