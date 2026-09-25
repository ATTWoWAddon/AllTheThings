---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.ORGRIMMAR, {
		["lore"] = "Named in honor of the legendary Orgrim Doomhammer, Orgrimmar was founded as the capital city of the orcs' new homeland. Built within a huge, winding canyon in the harsh land of Durotar, Orgrimmar stands as one of the mightiest warrior cities in the world. Behind Orgrimmar's immense walls, elderly shaman pass their knowledge on to the Horde's newest generation of leaders, while warriors spar in the gladiatorial arena, honing their skills in preparation for the trials that await them in this dangerous land.",
		["icon"] = 255142,
		["isRaid"] = true,
		["groups"] = {
			n(FACTIONS, {
				faction(FACTION_DARKSPEAR_TROLLS, {	-- Darkspear Trolls
					["icon"] = 236456,
					["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
					["races"] = HORDE_ONLY,
				}),
				faction(FACTION_ORGRIMMAR, {
					["icon"] = 236452,
					["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
					["races"] = HORDE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(23, {	-- Orgrimmar, Durotar
					["cr"] = 3310,	-- Doras <Wind Rider Master>
					["coord"] = { 45.2, 63.8, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(ALCHEMY, {
					n(11046, {	-- Whuut <Journeyman Alchemist>
						["coord"] = { 56.0, 33.8, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = ALCHEMY_RECIPES.APPRENTICE,
					}),
					n(3347, {	-- Yelmak <Expert Alchemist>
						["coord"] = { 55.6, 46.6, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = ALCHEMY_RECIPES.JOURNEYMAN,
					}),
				}),
				prof(BLACKSMITHING, {
					n(11178, {	-- Borgosh Corebender <Weaponsmith>
						["coord"] = { 79.6, 23.6, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_WEAPONSMITHING,
					}),
					n(11177, {	-- Okothos Ironrager <Armorsmith>
						["coord"] = { 79.8, 23.8, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_ARMORSMITHING,
					}),
					n(3355, {	-- Saru Steelfury <Blacksmithing Trainer>
						["coord"] = { 76.4, 34.4, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_CATA_BLACKSMITHING,
					}),
				}),
				prof(COOKING, {
					n(3399, {	-- Zamja <Cooking Trainer>
						["coord"] = { 57.4, 53.6, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_CATA_COOKING,
					}),
				}),
				prof(ENCHANTING, {
					n(3345, {	-- Godan <Enchanting Trainer>
						["coord"] = { 53.4, 49.4, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_CATA_ENCHANTING,
					}),
				}),
				prof(ENGINEERING, {
					n(11017, {	-- Roxxik <Engineering Trainer>
						["coord"] = { 56.8, 56.4, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_CATA_ENGINEERING,
					}),
				}),
				prof(FIRST_AID, {
					n(3373, {	-- Arnok <First Aid Trainer>
						["coord"] = { 34.0, 84.4, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_FIRST_AID,
					}),
				}),
				prof(FISHING, {
					n(3332, {	-- Lumak <Fishing Trainer>
						["coord"] = { 66.6, 41.6, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_CATA_FISHING,
					}),
				}),
				prof(HERBALISM, {
					n(3404, {	-- Jandi <Herbalism Trainer>
						["coord"] = { 55.6, 39.6, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_CATA_HERBALISM,
					}),
				}),
				prof(LEATHERWORKING, {
					n(3365, {	-- Karolek <Leatherworking Trainer>
						["coord"] = { 62.8, 44.6, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_CATA_LEGION_LEATHERWORKING,
					}),
				}),
				prof(MINING, {
					n(3357, {	-- Makaru <Mining Trainer>
						["coord"] = { 73.0, 27.0, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_CATA_MINING,
					}),
				}),
				prof(POISONS, {
					n(3328, {	-- Ormok <Rogue Trainer>
						["coord"] = { 44.6, 61.6, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_POISONS,
					}),
				}),
				prof(SKINNING, {
					n(7088, {	-- Thuwd <Skinning Trainer>
						["coord"] = { 63.2, 45.2, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_CATA_SKINNING,
					}),
				}),
				prof(TAILORING, {
					n(3363, {	-- Magar <Tailoring Trainer>
						["coord"] = { 63.6, 50.0, MAP.ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_TAILORING,
					}),
				}),
			}),
			n(QUESTS, {
				q(7831, {	-- A Donation of Mageweave
					["qg"] = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
					["coord"] = { 63.4, 51.0, MAP.ORGRIMMAR },
					["cost"] = { { "i", 4338, 60 } },	-- 60x Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7835, {	-- A Donation of Mageweave
					["qg"] = 14727,	-- Vehena <Horde Cloth Quartermaster>
					["coord"] = { 37.8, 87.6, MAP.ORGRIMMAR },
					["cost"] = { { "i", 4338, 60 } },	-- 60x Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7824, {	-- A Donation of Runecloth
					["qg"] = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
					["coord"] = { 63.4, 51.0, MAP.ORGRIMMAR },
					["cost"] = { { "i", 14047, 60 } },	-- 60x Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7836, {	-- A Donation of Runecloth
					["qg"] = 14727,	-- Vehena <Horde Cloth Quartermaster>
					["coord"] = { 37.8, 87.6, MAP.ORGRIMMAR },
					["cost"] = { { "i", 14047, 60 } },	-- 60x Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7827, {	-- A Donation of Silk
					["qg"] = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
					["coord"] = { 63.4, 51.0, MAP.ORGRIMMAR },
					["cost"] = { { "i", 4306, 60 } },	-- 60x Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7834, {	-- A Donation of Silk
					["qg"] = 14727,	-- Vehena <Horde Cloth Quartermaster>
					["coord"] = { 37.8, 87.6, MAP.ORGRIMMAR },
					["cost"] = { { "i", 4306, 60 } },	-- 60x Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7826, {	-- A Donation of Wool
					["qg"] = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
					["coord"] = { 63.4, 51.0, MAP.ORGRIMMAR },
					["cost"] = { { "i", 2592, 60 } },	-- 60x Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(7833, {	-- A Donation of Wool
					["qg"] = 14727,	-- Vehena <Horde Cloth Quartermaster>
					["coord"] = { 37.8, 87.6, MAP.ORGRIMMAR },
					["cost"] = { { "i", 2592, 60 } },	-- 60x Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(7341, {	-- A Fair Trade
					["qg"] = 14182,	-- Bounty Hunter Kolark
					["coord"] = { 74.4, 26.4, MAP.ORGRIMMAR },
					["cost"] = { { "i", 15997, 200 } },	-- 200x Thorium Shells
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 52,
					["groups"] = {
						i(18042),	-- Thorium Headed Arrow
					},
				}),
				q(7832, {	-- Additional Runecloth [Darkspear Trolls]
					["sourceQuest"] = 7824,	-- A Donation of Runecloth
					["qg"] = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
					["coord"] = { 63.4, 51.0, MAP.ORGRIMMAR },
					["maxReputation"] = { FACTION_DARKSPEAR_TROLLS, EXALTED },	-- Darkspear Trolls, Exalted.
					["cost"] = { { "i", 14047, 20 } },	-- 20x Runecloth
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(7837, {	-- Additional Runecloth [Orgrimmar]
					["sourceQuest"] = 7836,	-- A Donation of Runecloth
					["qg"] = 14727,	-- Vehena <Horde Cloth Quartermaster>
					["coord"] = { 37.8, 87.6, MAP.ORGRIMMAR },
					["maxReputation"] = { FACTION_ORGRIMMAR, EXALTED },	-- Orgrimmar, Exalted.
					["cost"] = { { "i", 14047, 20 } },	-- 20x Runecloth
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(2751, {	-- Barbaric Battlements
					["description"] =
						"Becomes available at Blacksmithing skill level 140 when character level requirement is met.",
					["qg"] = 7790,	-- Orokk Omosh
					["coord"] = { 79.4, 22.4, MAP.ORGRIMMAR },
					["cost"] = {
						{ "i", 2868, 2 },	-- 2x Patterned Bronze Bracers
						{ "i", 7957, 2 },	-- 2x Bronze Greatsword
						{ "i", 5635, 2 },	-- 2x Sharp Claw
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 140,
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						i(7979, {	-- Plans: Barbaric Iron Breastplate (RECIPE!)
							["description"] =
								"This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						}),
					},
				}),
				q(1508, {	-- Blind Cazul
					["sourceQuests"] = {
						1507,	-- Devourer of Souls [Orgrimmar]
						1472,	-- Devourer of Souls [Undercity]
					},
					["qg"] = 5909,	-- Cazul
					["coord"] = { 47.2, 46.6, MAP.ORGRIMMAR },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 20,
				}),
				q(4300, {	-- Bone-Bladed Weapons
					["qg"] = 8659,	-- Jes'rimon
					["coord"] = { 55.6, 34.2, MAP.ORGRIMMAR },
					["maps"] = { MAP.UNGORO_CRATER },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 White Ravasaur Claw
							["provider"] = { "i", 11477 },	-- White Ravasaur Claw
							["crs"] = {
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
					["sourceQuest"] = 2756,	-- The Old Ways
					["providers"] = {
						{ "n", 7793 },	-- Ox
						{ "i", 8663 },	-- Mithril Insignia
					},
					["coord"] = { 80.4, 23.2, MAP.ORGRIMMAR },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(4511, {	-- Calm Before the Storm (2/2)
					["sourceQuest"] = 4509,	-- Calm Before the Storm (1/2)
					["qg"] = 7010,	-- Zilzibin Drumlore
					["coord"] = { 56.4, 46.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						i(11870),	-- Oblivion Orb
						i(11871),	-- Snarkshaw Spaulders
						i(11872),	-- Eschewal Greaves
					},
				}),
				q(1501, {	-- Creature of the Void [Orgrimmar]
					["sourceQuest"] = 1506,	-- Gan'rul's Summons
					["altQuests"] = { 1473 },	-- Creature of the Void [Undercity]
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["coord"] = { 48.2, 45.6, MAP.ORGRIMMAR },
					["maps"] = { MAP.DUROTAR },
					["races"] = { ORC, TROLL, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Tablet of Verga
							["providers"] = {
								{ "i", 6535 },	-- Tablet of Verga
								{ "o", 58595 },	-- Burning Blade Stash
							},
							["coord"] = { 51.6, 9.7, MAP.DUROTAR },
						}),
					},
				}),
				q(2458, {	-- Deep Cover
					["sourceQuest"] = 2460,	-- The Shattered Salute
					["providers"] = {
						{ "n", 3401 },	-- Shenthul
						{ "i", 8051 },	-- Flare Gun
					},
					["coord"] = { 43.0, 53.4, MAP.ORGRIMMAR },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(2378, {	-- Find the Shattered Hand
					["altQuests"] = { 2380 },	-- To Orgrimmar!
					["qg"] = 6467,	-- Mennet Carkad
					["coord"] = { 83.2, 69.0, MAP.UNDERCITY },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(5652, {	-- Hex of Weakness [Orgrimmar]
					["altQuests"] = {
						5654,	-- Hex of Weakness [Durotar]
						5655,	-- Hex of Weakness [Mulgore]
						5656,	-- Hex of Weakness [Thunder Bluff]
						5657,	-- Hex of Weakness [Undercity]
					},
					["qgs"] = {
						6018,	-- Ur'kyo <Priest Trainer>
						3706,	-- Tai'jin <Priest Trainer>
						11407,	-- Var'jun
						3044,	-- Miles Welsh <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 35.6, 87.6, MAP.ORGRIMMAR },
						{ 54.2, 42.8, MAP.DUROTAR },
						{ 47.0, 58.8, MAP.MULGORE },
						{ 26.0, 15.8, MAP.THUNDER_BLUFF },
						{ 49.01, 18.32, MAP.UNDERCITY },
					},
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
				q(93739, {	-- Exploring the Horde
					["sourceQuest"] = 95350,	-- Welcome to Azeroth
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 32.0, 37.8, MAP.ORGRIMMAR },
					["races"] = { SKYBORNE_HORDE },
					["lvl"] = 7,
					["groups"] = {
						i(286426),	-- Honorbound Cloak
					},
				}),
				q(5726, {	-- Hidden Enemies (1/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 32.0, 37.8, MAP.ORGRIMMAR },
					["maps"] = { MAP.DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Lieutenant's Insignia
							["provider"] = { "i", 14544 },	-- Lieutenant's Insignia
							["crs"] = {
								3198,	-- Burning Blade Apprentice
								3197,	-- Burning Blade Fanatic
							},
						}),
					},
				}),
				q(5727, {	-- Hidden Enemies (2/5)
					["sourceQuest"] = 5726,	-- Hidden Enemies (1/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 32.0, 37.8, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
							["provider"] = { "i", 14544 },	-- Lieutenant's Insignia
							["coord"] = { 49.5, 50.6, MAP.ORGRIMMAR },
							["cr"] = 3216,	-- Neeru Fireblade
						}),
					},
				}),
				q(2479, {	-- Hinott's Assistance (1/2)
					["sourceQuest"] = 2478,	-- Mission: Possible But Not Probable
					["providers"] = {
						{ "n", 3401 },	-- Shenthul
						{ "i", 8087 },	-- Sample of Zanzil's Altered Mixture
					},
					["coord"] = { 43.0, 53.4, MAP.ORGRIMMAR },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(2754, {	-- Horns of Frenzy
					["description"] =
						"This questline begins with the quest 'Barbaric Battlements', which requires Blacksmithing skill level 140.\n\nPlans: Solid Iron Maul is a 1-in-stock recipe that can either be bought from Muuran at Ghost Walker Post in Desolace, or the Alliance-only vendor Jannos Ironwill at Refuge Pointe in Arathi Highlands.",
					["sourceQuest"] = 2753,	-- Trampled Under Foot
					["qg"] = 7790,	-- Orokk Omosh
					["coord"] = { 79.4, 22.4, MAP.ORGRIMMAR },
					["cost"] = {
						{ "i", 3851, 2 },	-- 2x Solid Iron Maul
						{ "i", 3482, 2 },	-- 2x Silvered Bronze Boots
						{ "i", 3483, 2 },	-- 2x Silvered Bronze Gauntlets
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 140,
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						i(7980, {	-- Plans: Barbaric Iron Helm (RECIPE!)
							["description"] =
								"This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						}),
					},
				}),
				q(2755, {	-- Joys of Omosh
					["description"] =
						"This questline begins with the quest 'Barbaric Battlements', which requires Blacksmithing skill level 140.",
					["sourceQuest"] = 2754,	-- Horns of Frenzy
					["qg"] = 7790,	-- Orokk Omosh
					["coord"] = { 79.4, 22.4, MAP.ORGRIMMAR },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 140,
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						i(7982, {	-- Plans: Barbaric Iron Gloves (RECIPE!)
							["description"] =
								"This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						}),
					},
				}),
				q(1945, {	-- Laughing Sisters
					["sourceQuest"] = 1944,	-- Waters of Xavian
					["qg"] = 5885,	-- Deino <Mage Trainer>
					["coord"] = { 38.6, 86.0, MAP.ORGRIMMAR },
					["maps"] = { MAP.ASHENVALE },
					["classes"] = { MAGE },
					["races"] = { UNDEAD, TROLL },
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/12 Laughing Sister's Hair
							["provider"] = { "i", 7270 },	-- Laughing Sister's Hair
							["cr"] = 4054,	-- Laughing Sister
						}),
					},
				}),
				q(65601, {	-- Love Hurts
					["qg"] = 5909,	-- Cazul
					["coord"] = { 47.2, 46.6, MAP.ORGRIMMAR },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(4494, {	-- March of the Silithid (H)
					["sourceQuest"] = 32,	-- Rise of the Silithid (H)
					["qg"] = 7010,	-- Zilzibin Drumlore
					["coord"] = { 55.2, 55.8, MAP.ORGRIMMAR },
					["maps"] = { MAP.TANARIS },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(1509, {	-- News of Dogran (1/2)
					["sourceQuest"] = 1508,	-- Blind Cazul
					["qg"] = 5910,	-- Zankaja
					["coord"] = { 37.0, 59.6, MAP.ORGRIMMAR },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 20,
				}),
				q(2752, {	-- On Iron Pauldrons
					["description"] =
						"This questline begins with the quest 'Barbaric Battlements', which requires Blacksmithing skill level 140.",
					["sourceQuest"] = 2751,	-- Barbaric Battlements
					["qg"] = 7790,	-- Orokk Omosh
					["coord"] = { 79.4, 22.4, MAP.ORGRIMMAR },
					["cost"] = {
						{ "i", 7958, 4 },	-- 4x Bronze Battle Axe
						{ "i", 7956, 4 },	-- 4x Bronze Warhammer
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 140,
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						i(7978, {	-- Plans: Barbaric Iron Shoulders (RECIPE!)
						["description"] =
							"This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						}),
					},
				}),
				q(5680, {	-- Shadowguard [Orgrimmar]
					["altQuests"] = {
						5643,	-- Shadowguard [Undercity]
						5642,	-- Shadowguard [Thunder Bluff]
					},
					["qgs"] = {
						6018,	-- Ur'kyo <Priest Trainer>
						4606,	-- Aelthalyste
						3044,	-- Miles Welsh <Priest Trainer>
					},
					["coords"] = {
						{ 35.6, 87.6, MAP.ORGRIMMAR },
						{ 49.01, 18.32, MAP.UNDERCITY },
						{ 26.0, 15.8, MAP.THUNDER_BLUFF },
					},
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
				q(1943, {	-- Speak with Deino
					["qg"] = 4568,	-- Anastasia Hartwell <Mage Trainer>
					["coord"] = { 85.0, 10.2, MAP.UNDERCITY },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 26,
				}),
				q(65604, {	-- The Binding (Incubus) [Orgrimmar]
					["sourceQuest"] = 65610,	-- Wish You Were Here
					["altQuests"] = { 65597 },	-- The Binding (Incubus) [Undercity]
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["coord"] = { 48.2, 45.6, MAP.ORGRIMMAR },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Incubus slain
							["provider"] = { "n", 185335 },	-- Summoned Incubus
							["cost"] = { { "i", 190187, 1 } },	-- 1x Withered Scarf
						}),
						recipe(713),	-- Summon Incubus
						i(22243),	-- Small Soul Pouch
					},
				}),
				q(1513, {	-- The Binding (Succubus) [Orgrimmar]
					["sourceQuest"] = 1512,	-- Love's Gift
					["altQuests"] = { 1474 },	-- The Binding (Succubus) [Undercity]
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["coord"] = { 48.2, 45.6, MAP.ORGRIMMAR },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Succubus slain
							["provider"] = { "n", 5677 },	-- Summoned Succubus
							["cost"] = { { "i", 6626, 1 } },	-- 1x Dogran's Pendant
						}),
						recipe(712),	-- Summon Succubus
						i(22243),	-- Small Soul Pouch
					},
				}),
				q(1504, {	-- The Binding (Voidwalker) [Orgrimmar]
					["sourceQuest"] = 1501,	-- Creature of the Void [Orgrimmar]
					["altQuests"] = { 1471 },	-- The Binding (Voidwalker) [Undercity]
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["coord"] = { 48.2, 45.6, MAP.ORGRIMMAR },
					["races"] = { ORC, TROLL, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Voidwalker slain
							["provider"] = { "n", 5676 },	-- Summoned Voidwalker
							["cost"] = { { "i", 7464, 1 } },	-- 1x Glyphs of Summoning
						}),
						recipe(697),	-- Summon Voidwalker
					},
				}),
				q(2756, {	-- The Old Ways
					["qg"] = 7792,	-- Aturk the Anvil
					["coord"] = { 80.6, 23.2, MAP.ORGRIMMAR },
					["cost"] = {
						{ "i", 7963, 4 },	-- 4x Steel Breastplate
						{ "i", 7922, 4 },	-- 4x Steel Plate Helm
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						recipe(9957),	 -- Orcish War Leggings
					},
				}),
				q(1963, {	-- The Shattered Hand (1/2)
					["sourceQuest"] = 1859,	-- Therzok
					["qg"] = 6446,	-- Therzok
					["coord"] = { 42.74, 53.52, MAP.ORGRIMMAR },
					["maps"] = { MAP.THE_BARRENS },
					["races"] = { ORC, TROLL },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Tazan's Satchel
							["provider"] = { "i", 7209 },	-- Tazan's Satchel
							["coord"] = { 63.8, 44.6, MAP.THE_BARRENS },
							["cr"] = 6494,	-- Tazan
						}),
					},
				}),
				q(1858, {	-- The Shattered Hand (2/2)
					["sourceQuest"] = 1963,	-- The Shattered Hand (1/2)
					["qg"] = 6446,	-- Therzok
					["coord"] = { 42.74, 53.52, MAP.ORGRIMMAR },
					["races"] = { ORC, TROLL },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Tazan's Logbook
							["providers"] = {
								{ "i", 7295 },	-- Tazan's Logbook
								{ "i", 7208 },	-- Tazan's Key
								{ "i", 7209 },	-- Tazan's Satchel
							},
							["coord"] = { 54.2, 68.2, MAP.ORGRIMMAR },
							["cr"] = 6466,	-- Gamon
						}),
						i(7298),	-- Blade of Cunning
					},
				}),
				q(2460, {	-- The Shattered Salute
					["sourceQuest"] = 2380,	-- To Orgrimmar!
					["qg"] = 3401,	-- Shenthul
					["coord"] = { 43.0, 53.4, MAP.ORGRIMMAR },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(6611, {	-- To Gadgetzan You Go!
					["coord"] = { 57.4, 53.6, MAP.ORGRIMMAR },
					["qg"] = 3399,	-- Zamja
					["requireSkill"] = COOKING,
					["learnedAt"] = 225,
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(2380, {	-- To Orgrimmar!
					["altQuests"] = { 2378 },	-- Find the Shattered Hand
					["qg"] = 3170,	-- Kaplak
					["coord"] = { 51.98, 43.70, MAP.DUROTAR },
					["races"] = HORDE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(2753, {	-- Trampled Under Foot
					["description"] =
						"This questline begins with the quest 'Barbaric Battlements', which requires Blacksmithing skill level 140.",
					["sourceQuest"] = 2752,	-- On Iron Pauldrons
					["qg"] = 7790,	-- Orokk Omosh
					["coord"] = { 79.4, 22.4, MAP.ORGRIMMAR },
					["cost"] = {
						{ "i", 3836, 4 },	-- 4x Green Iron Helm
						{ "i", 3835, 4 },	-- 4x Green Iron Bracers
						{ "i", 3842, 2 },	-- 2x Green Iron Leggings
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 140,
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						i(7981, {	-- Plans: Barbaric Iron Boots (RECIPE!)
						["description"] =
							"This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						}),
					},
				}),
				q(1944, {	-- Waters of Xavian
					["sourceQuest"] = 1943,	-- Speak with Deino
					["qg"] = 5885,	-- Deino <Mage Trainer>
					["coord"] = { 38.6, 86.0, MAP.ORGRIMMAR },
					["maps"] = { MAP.ASHENVALE },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/1 Xavian Water Sample
							["providers"] = {
								{ "i", 7268 },	-- Xavian Water Sample
								{ "i", 7269 },	-- Deino's Flask
							},
							["coord"] = { 76.0, 41.0, MAP.ASHENVALE },
						}),
					},
				}),
				q(65610, {	-- Wish You Were Here
					["sourceQuest"] = 65601,	-- Love Hurts
					["altQuests"] = { 65593 },	-- Hearts of the Lovers
					["qg"] = 3363,	-- Magar <Tailoring Trainer>
					["coord"] = { 63.6, 50.0, MAP.ORGRIMMAR },
					["maps"] = { MAP.ASHENVALE },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Withered Scarf
							["provider"] = { "i", 190232 },	-- Withered Scarf
							["crs"] = {
								3782,	-- Shadethicket Stone Mover
								3784,	-- Shadethicket Bark Ripper
								3931,	-- Shadethicket Oracle
							},
						}),
					},
				}),
				q(7660, {	-- Wolf Swapping - Arctic Wolf
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["qg"] = 3362,	-- Ogunaro Wolfrunner
					["coord"] = { 69.4, 12.4, MAP.ORGRIMMAR },
					["timeline"] = { REMOVED_1_4_0 },
					["cost"] = { { "i", 12351, 1 } },	-- 1x Arctic Wolf
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
					["sym"] = { { "select", "itemID", 18796, 18798, 18797 } },
				}),
				q(7661, {	-- Wolf Swapping - Red Wolf
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["qg"] = 3362,	-- Ogunaro Wolfrunner
					["coord"] = { 69.4, 12.4, MAP.ORGRIMMAR },
					["timeline"] = { REMOVED_1_4_0 },
					["cost"] = { { "i", 12330, 1 } },	-- 1x Red Wolf (MOUNT!)
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
					["sym"] = { { "select", "itemID", 18796, 18798, 18797 } },
				}),
				q(2382, {	-- Wrenix of Ratchet
					["sourceQuest"] = 2379,	-- Zando'zan
					["qg"] = 3402,	-- Zando'zan
					["coord"] = { 42.8, 53.0, MAP.ORGRIMMAR },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["lvl"] = 16,
				}),
				q(6608, {	-- You Too Good.
					["qg"] = 3332,	-- Lumak <Fishing Trainer>
					["coord"] = { 66.6, 41.6, MAP.ORGRIMMAR },	-- TODO: confirm if this is the correct coordinate for the fishing trainer in Orgrimmar
					["requireSkill"] = FISHING,
					["learnedAt"] = 225,
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(2379, {	-- Zando'zan
					["sourceQuest"] = 2378,	-- Find the Shattered Hand
					["qg"] = 3401,	-- Shenthul
					["coord"] = { 43.0, 53.4, MAP.ORGRIMMAR },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["lvl"] = 16,
				}),
			}),
			n(RIDING_TRAINER, {
				n(4752, {	-- Kildar <Wolf Riding Instructor>
					["coord"] = { 69.2, 13.0, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,

					-- Available to Orcs without faction requirements.
					["minReputation"] = { FACTION_ORGRIMMAR, EXALTED },	-- Orgrimmar, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. ORC .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["groups"] = {
						recipe(825, {	-- Wolf Riding
							["cost"] = 200000,
							["lvl"] = 40,
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(5611, {	-- Barkeep Morag
					["coord"] = { 54.0, 67.0, MAP.ORGRIMMAR },	-- The Broken Tusk
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(1179),	-- Ice Cold Milk
						i(1205),	-- Melon Juice
						-- i(1645),	-- Moonberry Juice
						i(8766),	-- Morning Glory Dew
						i(159),	-- Refreshing Spring Water
						i(1708),	-- Sweet Nectar
						i(2723),	-- Bottle of Dalaran Noir
						i(2594),	-- Flagon of Dwarven Honeymead/Mead
						i(2593),	-- Flask of Stormwind Tawny
						i(2595),	-- Jug of Badlands Bourbon
						i(2596),	-- Skin of Dwarven Stout
					},
				}),
				n(3364, {	-- Borya <Tailoring Supplies>
					["coord"] = { 63.0, 51.2, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6270, {	-- Pattern: Blue Linen Vest (RECIPE!)
							["isLimited"] = true,
						}),
						i(6274, {	-- Pattern: Blue Overalls (RECIPE!)
							["isLimited"] = true,
						}),
						i(10314, {	-- Pattern: Lavender Mageweave Shirt (RECIPE!)
							["isLimited"] = true,
						}),
						i(10317, {	-- Pattern: Pink Mageweave Shirt (RECIPE!)
							["isLimited"] = true,
						}),
						i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(12793, {	-- Brave Stonehide <Officer Accessories Quartermaster>
					["description"] = "Found within the Hall of Legends.",
					["coord"] = { 40.6, 69.5, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18607),	-- Horde Battle Standard
						i(15199),	-- Stone Guard's Herald
						i(18839),	-- Combat Healing Potion
						i(18841),	-- Combat Mana Potion
					},
				}),
				n(3367, {	-- Felika <Trade Supplies>
					["description"] = "This NPC walks between the Valley of Wisdom and Valley of Strength on the right path.",
					["coords"] = {
						{ 46.5, 36.6, MAP.ORGRIMMAR },
						{ 50.8, 58.7, MAP.ORGRIMMAR },
					},
					["races"] = HORDE_ONLY,
				}),
				n(4043, {	-- Galthuk <Two-Handed Weapons Merchant>
					["coord"] = { 76.0, 37.2, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(2523),	-- Bullova
						i(2521),	-- Flamberge
						i(2531),	-- Great Axe
						i(2525),	-- War Hammer
						i(2533),	-- War Maul
						i(2529),	-- Zweihander
					},
				}),
				n(5188, {	-- Garyl <Tabard Vendor>
					["coord"] = { 47.6, 75.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{"select", "itemID",
						19031,	-- Frostwolf Battle Tabard
						15197,	-- Scout's Tabard
						15199,	-- Stone Guard's Herald
						19505,	-- Warsong Battle Tabard (H)
						},
					},
					["groups"] = {
						i(5976),	-- Guild Tabard
					},
				}),
				n(3358, {	-- Gorina <Mining Supplies>
					["coord"] = { 73.2, 26.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {{ "sub", "common_vendor", 4599 }},	-- Sarah Killan <Mining Supplies>
				}),
				n(3335, {	-- Hagrus <Reagents>
					["coord"] = { 46.2, 46.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5643, {	-- Recipe: Great Rage Potion (RECIPE!)
							["isLimited"] = true,
						}),
						i(5640, {	-- Recipe: Rage Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3316, {	-- Handor <Cloth & Leather Armor Merchant>
					["coord"] = { 62.8, 44.8, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2142,	-- Cuirboulli Belt
						2143,	-- Cuirboulli Boots
						2144,	-- Cuirboulli Bracers
						2145,	-- Cuirboulli Gloves
						2146,	-- Cuirboulli Pants
						2141,	-- Cuirboulli Vest
						2435,	-- Embroidered Armor
						3587,	-- Embroidered Belt
						2438,	-- Embroidered Boots
						3588,	-- Embroidered Bracers
						2440,	-- Embroidered Gloves
						3892,	-- Embroidered Hat
						2437,	-- Embroidered Pants
						2160,	-- Padded Armor
						3591,	-- Padded Belt
						2156,	-- Padded Boots
						3592,	-- Padded Bracers
						2158,	-- Padded Gloves
						2159,	-- Padded Pants
						2471,	-- Reinforced Leather Belt
						2473,	-- Reinforced Leather Boots
						2474,	-- Reinforced Leather Bracers
						3893,	-- Reinforced Leather Cap
						2475,	-- Reinforced Leather Gloves
						2472,	-- Reinforced Leather Pants
						2470,	-- Reinforced Leather Vest
						3593,	-- Russet Belt
						2432,	-- Russet Boots
						3594,	-- Russet Bracers
						2434,	-- Russet Gloves
						3889,	-- Russet Hat
						2431,	-- Russet Pants
						2429,	-- Russet Vest
						2464,	-- Studded Belt
						2467,	-- Studded Boots
						2468,	-- Studded Bracers
						2463,	-- Studded Doublet
						2469,	-- Studded Gloves
						3890,	-- Studded Hat
						2465,	-- Studded Pants
					}},
					["groups"] = {
						i(12256, {	-- Cindercloth Leggings
							["isLimited"] = true,
						}),
					},
				}),
				n(3410, {	-- Jin'sora <Bow Merchant>
					["coord"] = { 77.8, 38.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
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
				n(3322, {	-- Kaja <Bow & Rifle Vendor>
					["coord"] = { 40.8, 49.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(3024),	-- Bkp 2700 Enforcer
						i(3025),	-- Bkp 42 Ultra
						i(3027),	-- Heavy Recurve Bow
						i(2511),	-- Hunter's Boomstick
						i(3023),	-- Large Bore Blunderbuss
						i(2509),	-- Ornate Blunderbuss
						i(3026),	-- Reinforced Bow
					},
				}),
				n(3331, {	-- Kareth
					["coord"] = { 46.8, 63.6, MAP.ORGRIMMAR },
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
						2534,	-- Rondel
						2027,	-- Scimitar
					}},
				}),
				n(5816, {	-- Katis
					["coord"] = { 45.8, 57.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5239),	-- Blackbone Wand
						i(5210),	-- Burning Wand
						i(5236),	-- Combustible Wand
						i(5211),	-- Dusk Wand
						i(5209),	-- Gloom Wand
						i(5347),	-- Pestilent Wand
						i(5238),	-- Pitchwood Wand
						i(5208),	-- Smoldering Wand
					},
				}),
				n(3359, {	-- Kiro <War Harness Maker>
					["coord"] = { 66.8, 50.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6526),	-- Battle Harness
						i(6523),	-- Buckled Harness
						i(6525),	-- Grunt's Harness
						i(6524),	-- Studded Leather Harness
					},
				}),
				n(3346, {	-- Kithas <Enchanting Supplies>
					["coord"] = { 53.6, 38.0, MAP.ORGRIMMAR },
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
						i(6346, {	-- Formula: Enchant Chest - Lesser Mana (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(8122, {	-- Kizzak Sparks
					["coord"] = { 57.8, 56.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["description"] =
						"This NPC is only available on July 4th (US) or September 30th (EU).",
					["groups"] = {
						i(8626),	-- Blue Sparkler
						i(8625),	-- White Sparkler
						i(8624),	-- Red Sparkler
					},
				}),
				n(3348, {	-- Kor'geld <Alchemy Supplies>
					["coord"] = { 56.2, 34.2, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(13478, {	-- Recipe: Elixir of Greater Defense (RECIPE!)
							["isLimited"] = true,
						}),
						i(5642, {	-- Recipe: Free Action Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3360, {	-- Koru
					["coord"] = { 76.2, 37.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						1197,	-- Giant Mace
						2030,	-- Gnarled Staff
						928,	-- Long Staff
						852,	-- Mace
						854,	-- Quarter Staff
					}},
					["groups"] = {
						i(925),	-- Flail
						i(2028),	-- Hammer
						i(924),	-- Maul
						i(2026),	-- Rock Hammer
					},
				}),
				n(12792, {	-- Lady Palanseer <Armor Quartermaster>
					["description"] = "Found within the Hall of Legends.",
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(22860, {	-- Blood Guard's Silk Walkers (60)
							["classes"] = { MAGE },
						}),
						i(22858, {	-- Blood Guard's Plate Greaves (60)
							["classes"] = { WARRIOR },
						}),
						i(22857, {	-- Blood Guard's Mail Greaves (60)
							["classes"] = { SHAMAN },
						}),
						i(22855, {	-- Blood Guard's Dreadweave Walkers (60)
							["classes"] = { WARLOCK },
						}),
						i(22859, {	-- Blood Guard's Satin Walkers (60)
							["classes"] = { PRIEST },
						}),
						i(22852, {	-- Blood Guard's Dragonhide Treads (60)
							["classes"] = { DRUID },
						}),
						i(22856, {	-- Blood Guard's Leather Walkers (60)
							["classes"] = { ROGUE },
						}),
						i(22843, {	-- Blood Guard's Chain Greaves (60)
							["classes"] = { HUNTER },
						}),
						i(16485, {	-- Blood Guard's Silk Footwraps (58)
							["classes"] = { MAGE },
						}),
						i(17576, {	-- Blood Guard's Dreadweave Boots (58)
							["classes"] = { WARLOCK },
						}),
						i(16509, {	-- Blood Guard's Plate Boots (58)
							["classes"] = { WARRIOR },
						}),
						i(16531, {	-- Blood Guard's Chain Boots (58)
							["classes"] = { HUNTER },
						}),
						i(17616, {	-- Blood Guard's Satin Boots (58)
							["classes"] = { PRIEST },
						}),
						i(16518, {	-- Blood Guard's Mail Walkers (58)
							["classes"] = { SHAMAN },
						}),
						i(16498, {	-- Blood Guard's Leather Treads (58)
							["classes"] = { ROGUE },
						}),
						i(16494, {	-- Blood Guard's Dragonhide Boots (58)
							["classes"] = { DRUID },
						}),
						i(16530, {	-- Blood Guard's Chain Gauntlets
							["classes"] = { HUNTER },
						}),
						i(22862, {	-- Blood Guard's Chain Vices
							["classes"] = { HUNTER },
						}),
						i(16496, {	-- Blood Guard's Dragonhide Gauntlets
							["classes"] = { DRUID },
						}),
						i(22863, {	-- Blood Guard's Dragonhide Grips
							["classes"] = { DRUID },
						}),
						i(17577, {	-- Blood Guard's Dreadweave Gloves
							["classes"] = { WARLOCK },
						}),
						i(22865, {	-- Blood Guard's Dreadweave Handwraps
							["classes"] = { WARLOCK },
						}),
						i(22864, {	-- Blood Guard's Leather Grips
							["classes"] = { ROGUE },
						}),
						i(16499, {	-- Blood Guard's Leather Vices
							["classes"] = { ROGUE },
						}),
						i(16519, {	-- Blood Guard's Mail Grips
							["classes"] = { SHAMAN },
						}),
						i(22867, {	-- Blood Guard's Mail Vices
							["classes"] = { SHAMAN },
						}),
						i(22868, {	-- Blood Guard's Plate Gauntlets
							["classes"] = { WARRIOR },
						}),
						i(16510, {	-- Blood Guard's Plate Gloves
							["classes"] = { WARRIOR },
						}),
						i(17617, {	-- Blood Guard's Satin Gloves
							["classes"] = { PRIEST },
						}),
						i(22869, {	-- Blood Guard's Satin Handwraps
							["classes"] = { PRIEST },
						}),
						i(16487, {	-- Blood Guard's Silk Gloves
							["classes"] = { MAGE },
						}),
						i(22870, {	-- Blood Guard's Silk Handwraps
							["classes"] = { MAGE },
						}),
						i(16525, {	-- Legionnaire's Chain Breastplate
							["classes"] = { HUNTER },
						}),
						i(22874, {	-- Legionnaire's Chain Hauberk
							["classes"] = { HUNTER },
						}),
						i(16504, {	-- Legionnaire's Dragonhide Breastplate
							["classes"] = { DRUID },
						}),
						i(22877, {	-- Legionnaire's Dragonhide Chestpiece
							["classes"] = { DRUID },
						}),
						i(17572, {	-- Legionnaire's Dreadweave Robe
							["classes"] = { WARLOCK },
						}),
						i(22884, {	-- Legionnaire's Dreadweave Tunic
							["classes"] = { WARLOCK },
						}),
						i(22879, {	-- Legionnaire's Leather Chestpiece
							["classes"] = { ROGUE },
						}),
						i(16505, {	-- Legionnaire's Leather Hauberk
							["classes"] = { ROGUE },
						}),
						i(16522, {	-- Legionnaire's Mail Chestpiece
							["classes"] = { SHAMAN },
						}),
						i(22876, {	-- Legionnaire's Mail Hauberk
							["classes"] = { SHAMAN },
						}),
						i(16513, {	-- Legionnaire's Plate Armor
							["classes"] = { WARRIOR },
						}),
						i(22872, {	-- Legionnaire's Plate Hauberk
							["classes"] = { WARRIOR },
						}),
						i(22885, {	-- Legionnaire's Satin Tunic
							["classes"] = { PRIEST },
						}),
						i(17612, {	-- Legionnaire's Satin Vestments
							["classes"] = { PRIEST },
						}),
						i(16491, {	-- Legionnaire's Silk Robes
							["classes"] = { MAGE },
						}),
						i(22886, {	-- Legionnaire's Silk Tunic
							["classes"] = { MAGE },
						}),
						i(16527, {	-- Legionnaire's Chain Leggings
							["classes"] = { HUNTER },
						}),
						i(22875, {	-- Legionnaire's Chain Legguards
							["classes"] = { HUNTER },
						}),
						i(22878, {	-- Legionnaire's Dragonhide Leggings
							["classes"] = { DRUID },
						}),
						i(16502, {	-- Legionnaire's Dragonhide Trousers
							["classes"] = { DRUID },
						}),
						i(17571, {	-- Legionnaire's Dreadweave Leggings
							["classes"] = { WARLOCK },
						}),
						i(22881, {	-- Legionnaire's Dreadweave Legguards
							["classes"] = { WARLOCK },
						}),
						i(16508, {	-- Legionnaire's Leather Leggings
							["classes"] = { ROGUE },
						}),
						i(22880, {	-- Legionnaire's Leather Legguards
							["classes"] = { ROGUE },
						}),
						i(16523, {	-- Legionnaire's Mail Leggings
							["classes"] = { SHAMAN },
						}),
						i(22887, {	-- Legionnaire's Mail Legguards
							["classes"] = { SHAMAN },
						}),
						i(22873, {	-- Legionnaire's Plate Leggings
							["classes"] = { WARRIOR },
						}),
						i(16515, {	-- Legionnaire's Plate Legguards
							["classes"] = { WARRIOR },
						}),
						i(22882, {	-- Legionnaire's Satin Legguards
							["classes"] = { PRIEST },
						}),
						i(17611, {	-- Legionnaire's Satin Trousers
							["classes"] = { PRIEST },
						}),
						i(22883, {	-- Legionnaire's Silk Legguards
							["classes"] = { MAGE },
						}),
						i(16490, {	-- Legionnaire's Silk Pants
							["classes"] = { MAGE },
						}),
						i(16526, {	-- Champion's Chain Headguard
							["classes"] = { HUNTER },
						}),
						i(23251, {	-- Champion's Chain Helm
							["classes"] = { HUNTER },
						}),
						i(23253, {	-- Champion's Dragonhide Headguard
							["classes"] = { DRUID },
						}),
						i(16503, {	-- Champion's Dragonhide Helm
							["classes"] = { DRUID },
						}),
						i(23255, {	-- Champion's Dreadweave Cowl
							["classes"] = { WARLOCK },
						}),
						i(17570, {	-- Champion's Dreadweave Hood
							["classes"] = { WARLOCK },
						}),
						i(16506, {	-- Champion's Leather Headguard
							["classes"] = { ROGUE },
						}),
						i(23257, {	-- Champion's Leather Helm
							["classes"] = { ROGUE },
						}),
						i(23259, {	-- Champion's Mail Headguard
							["classes"] = { SHAMAN },
						}),
						i(16521, {	-- Champion's Mail Helm
							["classes"] = { SHAMAN },
						}),
						i(16514, {	-- Champion's Plate Headguard
							["classes"] = { WARRIOR },
						}),
						i(23244, {	-- Champion's Plate Helm
							["classes"] = { WARRIOR },
						}),
						i(17610, {	-- Champion's Satin Cowl
							["classes"] = { PRIEST },
						}),
						i(23261, {	-- Champion's Satin Hood
							["classes"] = { PRIEST },
						}),
						i(23263, {	-- Champion's Silk Cowl
							["classes"] = { MAGE },
						}),
						i(16489, {	-- Champion's Silk Hood
							["classes"] = { MAGE },
						}),
						i(23264, {	-- Champion's Silk Mantle
							["classes"] = { MAGE },
						}),
						i(23256, {	-- Champion's Dreadweave Spaulders
							["classes"] = { WARLOCK },
						}),
						i(23243, {	-- Champion's Plate Shoulders
							["classes"] = { WARRIOR },
						}),
						i(23258, {	-- Champion's Leather Shoulders
							["classes"] = { ROGUE },
						}),
						i(17573, {	-- Champion's Dreadweave Shoulders
							["classes"] = { WARLOCK },
						}),
						i(16516, {	-- Champion's Plate Pauldrons
							["classes"] = { WARRIOR },
						}),
						i(16492, {	-- Champion's Silk Shoulderpads
							["classes"] = { MAGE },
						}),
						i(23260, {	-- Champion's Mail Pauldrons
							["classes"] = { SHAMAN },
						}),
						i(16528, {	-- Champion's Chain Pauldrons
							["classes"] = { HUNTER },
						}),
						i(23254, {	-- Champion's Dragonhide Shoulders
							["classes"] = { DRUID },
						}),
						i(17613, {	-- Champion's Satin Shoulderpads
							["classes"] = { PRIEST },
						}),
						i(16524, {	-- Champion's Mail Shoulders
							["classes"] = { SHAMAN },
						}),
						i(16507, {	-- Champion's Leather Mantle
							["classes"] = { ROGUE },
						}),
						i(16501, {	-- Champion's Dragonhide Spaulders
							["classes"] = { DRUID },
						}),
						i(23262, {	-- Champion's Satin Mantle
							["classes"] = { PRIEST },
						}),
						i(23252, {	-- Champion's Chain Shoulders
							["classes"] = { HUNTER },
						}),
						i(16571, {	-- General's Chain Gloves
							["classes"] = { HUNTER },
						}),
						i(16555, {	-- General's Dragonhide Gloves
							["classes"] = { DRUID },
						}),
						i(17588, {	-- General's Dreadweave Gloves
							["classes"] = { WARLOCK },
						}),
						i(16560, {	-- General's Leather Mitts
							["classes"] = { ROGUE },
						}),
						i(16574, {	-- General's Mail Gauntlets
							["classes"] = { SHAMAN },
						}),
						i(16548, {	-- General's Plate Gauntlets
							["classes"] = { WARRIOR },
						}),
						i(17620, {	-- General's Satin Gloves
							["classes"] = { PRIEST },
						}),
						i(16540, {	-- General's Silk Handguards
							["classes"] = { MAGE },
						}),
						i(16567, {	-- General's Chain Legguards
							["classes"] = { HUNTER },
						}),
						i(16552, {	-- General's Dragonhide Leggings
							["classes"] = { DRUID },
						}),
						i(17593, {	-- General's Dreadweave Pants
							["classes"] = { WARLOCK },
						}),
						i(16564, {	-- General's Leather Legguards
							["classes"] = { ROGUE },
						}),
						i(16579, {	-- General's Mail Leggings
							["classes"] = { SHAMAN },
						}),
						i(16543, {	-- General's Plate Leggings
							["classes"] = { WARRIOR },
						}),
						i(17625, {	-- General's Satin Leggings
							["classes"] = { PRIEST },
						}),
						i(16534, {	-- General's Silk Trousers
							["classes"] = { MAGE },
						}),
						i(16569, {	-- General's Chain Boots
							["classes"] = { HUNTER },
						}),
						i(16554, {	-- General's Dragonhide Boots
							["classes"] = { DRUID },
						}),
						i(17586, {	-- General's Dreadweave Boots
							["classes"] = { WARLOCK },
						}),
						i(16558, {	-- General's Leather Treads
							["classes"] = { ROGUE },
						}),
						i(16573, {	-- General's Mail Boots
							["classes"] = { SHAMAN },
						}),
						i(16545, {	-- General's Plate Boots
							["classes"] = { WARRIOR },
						}),
						i(17618, {	-- General's Satin Boots
							["classes"] = { PRIEST },
						}),
						i(16539, {	-- General's Silk Boots
							["classes"] = { MAGE },
						}),
						i(16566, {	-- Warlord's Chain Helmet
							["classes"] = { HUNTER },
						}),
						i(16550, {	-- Warlord's Dragonhide Helmet
							["classes"] = { DRUID },
						}),
						i(17591, {	-- Warlord's Dreadweave Hood
							["classes"] = { WARLOCK },
						}),
						i(16561, {	-- Warlord's Leather Helm
							["classes"] = { ROGUE },
						}),
						i(16578, {	-- Warlord's Mail Helm
							["classes"] = { SHAMAN },
						}),
						i(16542, {	-- Warlord's Plate Headpiece
							["classes"] = { WARRIOR },
						}),
						i(17623, {	-- Warlord's Satin Cowl
							["classes"] = { PRIEST },
						}),
						i(16533, {	-- Warlord's Silk Cowl
							["classes"] = { MAGE },
						}),
						i(16565, {	-- Warlord's Chain Chestpiece
							["classes"] = { HUNTER },
						}),
						i(16549, {	-- Warlord's Dragonhide Hauberk
							["classes"] = { DRUID },
						}),
						i(17592, {	-- Warlord's Dreadweave Robe
							["classes"] = { WARLOCK },
						}),
						i(16563, {	-- Warlord's Leather Breastplate
							["classes"] = { ROGUE },
						}),
						i(16577, {	-- Warlord's Mail Armor
							["classes"] = { SHAMAN },
						}),
						i(16541, {	-- Warlord's Plate Armor
							["classes"] = { WARRIOR },
						}),
						i(17624, {	-- Warlord's Satin Robes
							["classes"] = { PRIEST },
						}),
						i(16535, {	-- Warlord's Silk Raiment
							["classes"] = { MAGE },
						}),
						i(16568, {	-- Warlord's Chain Shoulders
							["classes"] = { HUNTER },
						}),
						i(16551, {	-- Warlord's Dragonhide Epaulets
							["classes"] = { DRUID },
						}),
						i(17590, {	-- Warlord's Dreadweave Mantle
							["classes"] = { WARLOCK },
						}),
						i(16562, {	-- Warlord's Leather Spaulders
							["classes"] = { ROGUE },
						}),
						i(16580, {	-- Warlord's Mail Spaulders
							["classes"] = { SHAMAN },
						}),
						i(16544, {	-- Warlord's Plate Shoulders
							["classes"] = { WARRIOR },
						}),
						i(17622, {	-- Warlord's Satin Mantle
							["classes"] = { PRIEST },
						}),
						i(16536, {	-- Warlord's Silk Amice
							["classes"] = { MAGE },
						}),
					},
				}),
				n(3321, {	-- Morgum <Leather Armor Merchant>
					["coord"] = { 56.0, 73.2, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(2371),	-- Battered Leather Belt
						i(2373),	-- Battered Leather Boots
						i(2374),	-- Battered Leather Bracers
						i(2375),	-- Battered Leather Gloves
						i(2370),	-- Battered Leather Harness
						i(2372),	-- Battered Leather Pants
						i(236),	-- Cured Leather Armor
						i(1849),	-- Cured Leather Belt
						i(238),	-- Cured Leather Boots
						i(1850),	-- Cured Leather Bracers
						i(239),	-- Cured Leather Gloves
						i(237),	-- Cured Leather Pants
						i(1843),	-- Tanned Leather Belt
						i(843),	-- Tanned Leather Boots
						i(1844),	-- Tanned Leather Bracers
						i(844),	-- Tanned Leather Gloves
						i(846),	-- Tanned Leather Jerkin
						i(845),	-- Tanned Leather Pants
					},
				}),
				n(3330, {	-- Muragus
					["coord"] = { 46.0, 57.8, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(2527),	-- Battle Staff
						i(2535),	-- War Staff
					},
				}),
				n(3362, {	-- Ogunaro Wolfrunner <Kennel Master>
					["coord"] = { 69.4, 12.4, MAP.ORGRIMMAR },
					-- Available to Orcs without faction requirements.
					["minReputation"] = { FACTION_ORGRIMMAR, EXALTED },	-- Orgrimmar, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. ORC .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5668),	-- Brown Wolf (MOUNT!)
						i(5665),	-- Dire Wolf (MOUNT!)
						i(18796),	-- Swift Brown Wolf (MOUNT!)
						i(18797),	-- Swift Timber Wolf (MOUNT!)
						i(18798),	-- Swift Gray Wolf (MOUNT!)
						i(1132),	-- Timber Wolf (MOUNT!)
						i(12351, {	-- Arctic Wolf (MOUNT!)
							["timeline"] = { REMOVED_1_4_0 },
						}),
						i(12330, {	-- Red Wolf (MOUNT!)
							["timeline"] = { REMOVED_1_4_0 },
						}),
					},
				}),
				n(3317, {	-- Ollanus <Cloth Armor Merchant>
					["coord"] = { 60.6, 58.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(3428),	-- Common Gray Shirt
						i(16059),	-- Common Brown Shirt
						i(16060),	-- Common White Shirt
						i(837),	-- Heavy Weave Armor
						i(3589),	-- Heavy Weave Belt
						i(3590),	-- Heavy Weave Bracers
						i(839),	-- Heavy Weave Gloves
						i(838),	-- Heavy Weave Pants
						i(840),	-- Heavy Weave Shoes
						i(3597),	-- Thick Cloth Belt
						i(3598),	-- Thick Cloth Bracers
						i(203),	-- Thick Cloth Gloves
						i(201),	-- Thick Cloth Pants
						i(202),	-- Thick Cloth Shoes
						i(200),	-- Thick Cloth Vest
						i(3606),	-- Woven Belt
						i(2367),	-- Woven Boots
						i(3607),	-- Woven Bracers
						i(2369),	-- Woven Gloves
						i(2366),	-- Woven Pants
						i(2364),	-- Woven Vest
					},
				}),
				n(12796, {	-- Raider Bork <War Mount Quartermaster> [WRATH+] / Raider Bork <Mount Quartermaster>
					["description"] = "Found within the Hall of Legends.",
					["races"] = HORDE_ONLY,
					["groups"] = pvp({
						i(18247),	-- Black War Kodo (MOUNT!)
						i(18246),	-- Black War Raptor (MOUNT!)
						i(18245),	-- Black War Wolf (MOUNT!)
						i(18248),	-- Red Skeletal Warhorse (MOUNT!)
					}),
				}),
				n(3334, {	-- Rekkul
					["coord"] = { 44.0, 58.4, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
				}),
				-- TODO: Finish this part.
				n(12799, {	-- Sergeant Ba'sha <Accessories Quartermaster>
					["coord"] = { 41.6, 68.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(15197),	-- Scout's Tabard
						i(18834, {	-- Insignia of the Horde
							["classes"] = { WARRIOR },
						}),
						i(18849, {	-- Insignia of the Horde
							["classes"] = { ROGUE },
						}),
						i(18846, {	-- Insignia of the Horde
							["classes"] = { HUNTER },
						}),
						i(18851, {	-- Insignia of the Horde
							["classes"] = { PRIEST },
						}),
						i(18853, {	-- Insignia of the Horde
							["classes"] = { DRUID },
						}),
						i(18850, {	-- Insignia of the Horde
							["classes"] = { MAGE },
						}),
						i(18852, {	-- Insignia of the Horde
							["classes"] = { WARLOCK },
						}),
						i(18845, {	-- Insignia of the Horde
							["classes"] = { SHAMAN },
						}),
						i(18461),	-- Sergeant's Cloak (58)
						i(16341),	-- Sergeant's Cloak (45)
						i(18427),	-- Sergeant's Cloak (30)
						i(16335),	-- Senior Sergeant's Insignia (58)
						i(18428),	-- Senior Sergeant's Insignia (45)
						i(15200),	-- Senior Sergeant's Insignia (30)
						i(16486, {	-- First Sergeant's Silk Cuffs (58)
							["classes"] = CLOTH_CLASSES,
						}),
						i(18434, {	-- First Sergeant's Dragonhide Armguards (58)
							["classes"] = { DRUID },
						}),
						i(18429, {	-- First Sergeant's Plate Bracers (58)
							["classes"] = { WARRIOR },
						}),
						i(16532, {	-- First Sergeant's Mail Wristguards (58)
							["classes"] = MAIL_CLASSES,
						}),
						i(16497, {	-- First Sergeant's Leather Armguards (58)
							["classes"] = { ROGUE },
						}),
						i(18437, {	-- First Sergeant's Silk Cuffs (45)
							["classes"] = CLOTH_CLASSES,
						}),
						i(18430, {	-- First Sergeant's Plate Bracers (45)
							["classes"] = { WARRIOR },
						}),
						i(18432, {	-- First Sergeant's Mail Wristguards (45)
							["classes"] = MAIL_CLASSES,
						}),
						i(18436, {	-- First Sergeant's Dragonhide Armguards (45)
							["classes"] = { DRUID },
						}),
						i(18435, {	-- First Sergeant's Leather Armguards (45)
							["classes"] = { ROGUE },
						}),
					},
				}),
				n(14581, {	-- Sergeant Thunderhorn <Weapons Quartermaster>
					["description"] = "Found within the Hall of Legends.",
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18831),	-- High Warlord's Battle Axe
						i(23464),	-- High Warlord's Battle Mace
						i(16345),	-- High Warlord's Blade
						i(18866),	-- High Warlord's Bludgeon
						i(18828),	-- High Warlord's Cleaver
						i(18837),	-- High Warlord's Crossbow
						i(23465),	-- High Warlord's Destroyer
						i(18877),	-- High Warlord's Greatsword
						i(18848),	-- High Warlord's Left Claw
						i(18871),	-- High Warlord's Pig Sticker
						i(18868),	-- High Warlord's Pulverizer
						i(23467),	-- High Warlord's Quickblade
						i(18840),	-- High Warlord's Razor
						i(18835),	-- High Warlord's Recurve
						i(18844),	-- High Warlord's Right Claw
						i(18826),	-- High Warlord's Shield Wall
						i(23466),	-- High Warlord's Spellblade
						i(18860),	-- High Warlord's Street Sweeper
						i(23468),	-- High Warlord's Tome of Destruction
						i(23469),	-- High Warlord's Tome of Mending
						i(18874),	-- High Warlord's War Staff
					},
				}),
				n(3333, {	-- Shankys <Fishing Supplies>
					["coord"] = { 66.6, 41.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
						i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
						i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
					},
				}),
				n(5817, {	-- Shimra <Trade Supplies>
					["coord"] = { 47.8, 80.5, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
				}),
				n(3361, {	-- Shoma <Weapon Vendor>
					["coord"] = { 76.0, 37.8, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(15905),	-- Brass Knuckles
						i(2520),	-- Broadsword
						i(1198),	-- Claymore
						i(851),	-- Cutlass
						i(922),	-- Dacian Falx
						i(15904),	-- Deadly Fist Blades
						i(2024),	-- Espadon
						i(2528),	-- Falchion
						i(2207),	-- Jambiya
						i(2209),	-- Kris
						i(15906),	-- Left-Handed Brass Knuckles
						i(15909),	-- Left-Handed Blades
						i(15907),	-- Left-Handed Claw
						i(923),	-- Longsword
						i(2526),	-- Main Gauche
						i(2208),	-- Poniad
						i(2534),	-- Rondel
						i(2027),	-- Scimitar
						i(15903),	-- Slicing Claw
					},
				}),
				n(3413, {	-- Sovik <Engineering Supplies>
					["coord"] = { 75.6, 25.2, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18647, {	-- Schematic: Red Firework (RECIPE!)
							["isLimited"] = true,
						}),
						i(16041, {	-- Schematic: Thorium Grenade (RECIPE!)
							["isLimited"] = true,
						}),
						i(16042, {	-- Schematic: Thorium Widget (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3356, {	-- Sumi <Blacksmithing Supplies>
					["coord"] = { 82.4, 23.8, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12162, {	-- Plans: Hardened Iron Shortsword (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3366, {	-- Tamar <Leatherworking Supplies>
					["coord"] = { 63.0, 45.2, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18731, {	-- Pattern: Heavy Leather Ball (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3315, {	-- Tor'phan <Cloth & Leather Armor Merchant>
					["coord"] = { 62.6, 50.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(2617),	-- Burning Robes
						i(2615),	-- Chromatic Robe
						i(2142),	-- Cuirboulli Belt
						i(2143),	-- Cuirboulli Boots
						i(2144),	-- Cuirboulli Bracers
						i(2145),	-- Cuirboulli Gloves
						i(2146),	-- Cuirboulli Pants
						i(2141),	-- Cuirboulli Vest
						i(2613),	-- Double Stitched Robes
						i(2435),	-- Embroidered Armor
						i(3587),	-- Embroidered Belt
						i(2438),	-- Embroidered Boots
						i(3588),	-- Embroidered Bracers
						i(2440),	-- Embroidered Gloves
						i(3892),	-- Embroidered Hat
						i(2437),	-- Embroidered Pants
						i(2160),	-- Padded Armor
						i(3591),	-- Padded Belt
						i(2156),	-- Padded Boots
						i(3592),	-- Padded Bracers
						i(2158),	-- Padded Gloves
						i(2159),	-- Padded Pants
						i(12255, {	-- Pale Leggings
							["isLimited"] = true,
						}),
						i(2612),	-- Plain Robe
						i(2471),	-- Reinforced Leather Belt
						i(2473),	-- Reinforced Leather Boots
						i(2474),	-- Reinforced Leather Bracers
						i(3893),	-- Reinforced Leather Cap
						i(2475),	-- Reinforced Leather Gloves
						i(2472),	-- Reinforced Leather Pants
						i(2470),	-- Reinforced Leather Vest
						i(2614),	-- Robe Of Apprenticeship
						i(3593),	-- Russet Belt
						i(2432),	-- Russet Boots
						i(3594),	-- Russet Bracers
						i(2434),	-- Russet Gloves
						i(3889),	-- Russet Hat
						i(2431),	-- Russet Pants
						i(2429),	-- Russet Vest
						i(2616),	-- Shimmering Silk Robes
						i(2618),	-- Silver Dress Robes
						i(2464),	-- Studded Belt
						i(2467),	-- Studded Boots
						i(2468),	-- Studded Bracers
						i(2463),	-- Studded Doublet
						i(2469),	-- Studded Gloves
						i(3890),	-- Studded Hat
						i(2465),	-- Studded Pants
					},
				}),
				n(3314, {	-- Urtharo <Weapon Merchant>
					["coord"] = { 47.4, 68.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						1198,	-- Claymore
						851,	-- Cutlass
						2207,	-- Jambiya
					}},
					["groups"] = {
						i(1194),	-- Bastard Sword
						i(2479),	-- Broad Axe
						i(2130),	-- Club
						i(2492),	-- Cudgel
						i(2139),	-- Dirk
						i(1197),	-- Giant Mace
						i(2134),	-- Hand Axe
						i(2488),	-- Gladius
						i(853),	-- Hatched
						i(2491),	-- Large Axe
						i(2480),	-- Large Club
						i(852),	-- Mace
						i(854),	-- Quarter Staff
						i(2131),	-- Shortsword
						i(2132),	-- Short Staff
						i(2494),	-- Stiletto
						i(1196),	-- Tabar
						i(2490),	-- Tomahawk
						i(2489),	-- Two-handed Sword
						i(2495),	-- Walking Stick
						i(2493),	-- Wooden Mallet
					},
				}),
				n(8404, {	-- Xan'tish <Snake Vendor>
					["description"] = "This NPC walks around in a circle in the Valley of Spirits.",
					["coord"] = { 37.6, 75.8, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10360),	-- Black Kingsnake (PET!)
						i(10361),	-- Brown Snake (PET!)
						i(10392),	-- Crimson Snake (PET!)
					},
				}),
				n(3400, {	-- Xen'to <Cooking Supplies>
					["coord"] = { 57.6, 53.2, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(3405, {	-- Zeal'aya <Herbalism Supplies>
					["coord"] = { 55.0, 39.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{ "sub", "common_vendor", 4615 },	-- Katrina Alliestar <Herbalism Supplies> [TBC+] / <Herbalism Supplier>
					},
				}),
				n(3409, {	-- Zendo'jian <Weapon Vendor>
					["coord"] = { 75.0, 36.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						853,	-- Hatchet
						2507,	-- Laminated Recurve Bow
						854,	-- Quarter Staff
						3026,	-- Reinforced Bow
						1196,	-- Tabar
						2495,	-- Walking Stick
					}},
					["groups"] = {
						i(926),	-- Battle Axe
						i(2025),	-- Bearded Axe
						i(2029),	-- Cleaver
						i(927),	-- Double Axe
						i(2030),	-- Gnarled Staff
						i(2507),	-- Laminated Recurve Bow
						i(928),	-- Long Staff
					},
				}),
			}),
		},
	}),
}));
