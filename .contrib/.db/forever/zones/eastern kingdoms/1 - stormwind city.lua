---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.STORMWIND_CITY, {
	["lore"] = "Stormwind City is the capital city of the Alliance. It is located in the northwestern part of Elwynn Forest.\n\nDuring the First War, the Kingdom of Azeroth, including its capital, Stormwind Keep, was utterly destroyed by the Horde and its survivors fled to Lordaeron. After the orcs were defeated at the Dark Portal at the end of the Second War, it was decided that the city would be rebuilt. The nobles of Stormwind assembled a team of the most skilled and ingenious stonemasons and architects they could find--which later turned sour and led to the rise of the Defias.\n\nWith the fall of the northern kingdoms, Stormwind is by far the most populated city in the world. It serves in many ways as the cultural and trade center of the Alliance, even with remote access to the sea. It is home to the Academy of Arcane Sciences, the only wizarding school in Eastern Kingdoms, as well as SI:7, a rogue intelligence organization.",
	["zone-text-areas"] = {
		1519,	-- Stormwind City
		2918,	-- Champions' Hall
	},
	["icon"] = 255130,
	["isRaid"] = true,
	["groups"] = {
		n(FACTIONS, {
			faction(FACTION_STORMWIND, {	-- Stormwind
				["icon"] = 236447,
				["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
				["races"] = ALLIANCE_ONLY,
			}),
		}),
		n(FLIGHT_PATHS, {
			fp(2, {	-- Stormwind City, Elwynn
				["cr"] = 352,	-- Dungar Longdrink <Gryphon Master>
				["coord"] = { 71.0, 72.5, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
			}),
		}),
		n(PROFESSIONS, {
			prof(ALCHEMY, {
				n(5499, {	-- Lilyssia Nightbreeze <Alchemy Trainer>
					["coord"] = { 55.6, 85.8, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = APPRENTICE_JOURNEYMAN_ALCHEMY,
				}),
			}),
			prof(BLACKSMITHING, {
				n(5511, {	-- Therum Deepforge <Expert Blacksmith>
					["coord"] = { 63.8, 37.6, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CLASSIC_CATA_BLACKSMITHING,
				}),
			}),
			prof(COOKING, {
				n(5482, {	-- Stephen Ryback <Cooking Trainer>
					["coord"] = { 78.2, 53.0, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CLASSIC_CATA_COOKING,
				}),
			}),
			prof(ENCHANTING, {
				n(1317, {	-- Lucan Cordell <Enchanting Trainer>
					["coord"] = { 53.0, 74.2, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CLASSIC_CATA_ENCHANTING,
				}),
			}),
			prof(ENGINEERING, {
				n(5518, {	-- Lilliam Sparkspindle <Engineering Trainer>
					["coord"] = { 62.2, 30.6, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CLASSIC_CATA_ENGINEERING,
				}),
			}),
			prof(FIRST_AID, {
				n(2327, {	-- Shaina Fuller <First Aid Trainer>
					["coord"] = { 52.8, 44.8, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CLASSIC_CATA_FIRST_AID,
				}),
			}),
			prof(FISHING, {
				n(5493, {	-- Arnold Leland <Fishing Trainer>
					["coord"] = { 55.0, 69.6, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CLASSIC_CATA_FISHING,
				}),
			}),
			prof(HERBALISM, {
				n(5566, {	-- Tannysa <Herbalism Trainer>
					["coord"] = { 44.8, 77.0, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CLASSIC_CATA_HERBALISM,
				}),
			}),
			prof(LEATHERWORKING, {
				n(5564, {	-- Simon Tanner <Expert Leatherworker>
					["coord"] = { 71.8, 62.8, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CLASSIC_CATA_LEGION_LEATHERWORKING,
				}),
			}),
			prof(MINING, {
				n(5513, {	-- Gelman Stonehand <Mining Trainer>
					["coord"] = { 59.2, 37.6, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CLASSIC_CATA_MINING,
				}),
			}),
			prof(POISONS, {
				n(13283, {	-- Lord Tony Romano <Rogue Trainer>
					["coord"] = { 80.2, 68.8, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CLASSIC_POISONS,
				}),
			}),
			prof(SKINNING, {
				n(1292, {	-- Maris Granger <Skinning Trainer>
					["coord"] = { 72.6, 62.0, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CLASSIC_CATA_SKINNING,
				}),
			}),
			prof(TAILORING, {
				n(1346, {	-- Georgio Bolero <Tailoring Trainer>
					["coord"] = { 53.2, 81.6, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CLASSIC_TAILORING,
				}),
				n(9584, {	-- Jalane Ayrole <Master Shadoweave Tailor>
					["coord"] = { 40.6, 83.8, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = SHADOWEAVE_TAILORING_CLASSIC,
				}),
			}),
		}),
		n(QUESTS, {
			q(7794, {	-- A Donation of Mageweave
				["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
				["coord"] = { 53.9, 81.7, MAP.STORMWIND_CITY },
				["cost"] = {{ "i", 4338, 60 }},	-- Mageweave Cloth
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 40,
			}),
			q(7795, {	-- A Donation of Runecloth
				["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
				["coord"] = { 53.9, 81.7, MAP.STORMWIND_CITY },
				["cost"] = {{ "i", 14047, 60 }},	-- Runecloth
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 50,
			}),
			q(7793, {	-- A Donation of Silk
				["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
				["coord"] = { 53.9, 81.7, MAP.STORMWIND_CITY },
				["cost"] = {{ "i", 4306, 60 }},	-- Silk Cloth
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 26,
			}),
			q(7791, {	-- A Donation of Wool
				["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
				["coord"] = { 53.9, 81.7, MAP.STORMWIND_CITY },
				["cost"] = {{ "i", 2592, 60 }},	-- Wool Cloth
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 12,
			}),
			q(5645, {	-- A Lack of Fear
				["altQuests"] = {
					5647,	-- A Lack of Fear [Darnassus]
					5641,	-- A Lack of Fear [Ironforge]
				},
				["qg"] = 376,	-- High Priestess Laurena <Priest Trainer>
				["coord"] = { 38.8, 26.4, MAP.STORMWIND_CITY },
				["maps"] = { MAP.IRONFORGE },
				["classes"] = { PRIEST },
				["races"] = { DWARF },
				["lvl"] = 20,
				["groups"] = {
					recipe(6346),	-- Fear Ward
				},
			}),
			q(212, {	-- A Meal Served Cold
				["qg"] = 1141,	-- Angus Stern
				["coord"] = { 51.8, 93.7, MAP.STORMWIND_CITY },
				["maps"] = { MAP.STRANGLETHORN_VALE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/1 Chilled Basilisk Haunch
						["provider"] = { "i", 2476 },	-- Chilled Basilisk Haunch
						["cr"] = 690,	-- Cold Eye Basilisk
					}),
				},
			}),
			q(335, {	-- A Noble Brew (1/2)
				["qg"] = 1435,	-- Zardeth of the Black Claw
				["coord"] = { 40.1, 85.3, MAP.STORMWIND_CITY },
				["maps"] = { MAP.DUSKWOOD, MAP.WETLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 25,
				["groups"] = {
					objective(1, {	-- 0/1 Tear of Tilloa
						["providers"] = {
							{ "i", 2779 },	-- Tear of Tilloa
							{ "o", 321 },	-- Tear of Tilloa
						},
						["coord"] = { 78.5, 36.0, MAP.DUSKWOOD },
					}),
					objective(2, {	-- 0/1 Musquash Root
						["providers"] = {
							{ "i", 2784 },	-- Musquash Root
							{ "o", 2084 },	-- Musquash Root
						},
						["coord"] = { 64.7, 75.5, MAP.WETLANDS },
					}),
				},
			}),
			q(336, {	-- A Noble Brew (2/2)
				["sourceQuest"] = 335,	-- A Noble Brew (1/2)
				["providers"] = {
					{ "n", 1435 },	-- Zardeth of the Black Claw
					{ "i", 2788 },	-- Black Claw Stout
				},
				["coord"] = { 40.1, 85.3, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 25,
			}),
			q(1638, {	-- A Warrior's Training
				["altQuests"] = {
					1684,	-- Elanaria
					1679,	-- Muren Stormpike
					1678,	-- Vejrek
				},
				["qgs"] = {
					913,	-- Lyria Du Lac <Warrior Trainer>
					5480,	-- Ilsa Corbin <Warrior Trainer>
				},
				["coords"] = {
					{ 41.0, 65.8, MAP.ELWYNN_FOREST },
					{ 80.4, 59.8, MAP.STORMWIND_CITY },
				},
				["races"] = ALLIANCE_ONLY,
				["classes"] = { WARRIOR },
				["lvl"] = 10,
			}),
			q(7796, {	-- Additional Runecloth [Stormwind]
				["sourceQuest"] = 7795,	-- A Donation of Runecloth
				["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
				["coord"] = { 53.9, 81.7, MAP.STORMWIND_CITY },
				["maxReputation"] = { FACTION_STORMWIND, EXALTED },	-- Stormwind, Exalted.
				["cost"] = {{ "i", 14047, 20 }},	-- Runecloth
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = 50,
			}),
			q(396, {	-- An Audience with the King
				["sourceQuest"] = 395,	-- Brotherhood's End
				["providers"] = {
					{ "n", 1646 },	-- Baros Alexston <City Architect>
					{ "i", 2956 },	-- Report on the Defias Brotherhood
				},
				["coord"] = { 57.7, 47.9, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
				["groups"] = {
					i(2933),	-- Seal of Wrynn
				},
			}),
			q(7643, {	-- Ancient Equine Spirit
				["sourceQuest"] = 7642,	-- Collection of Goods
				["providers"] = {
					{ "n", 928 },	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					{ "i", 18753 },	-- Arcanite Barding
					{ "n", 14566 },	-- Ancient Equine Spirit
				},
				["coord"] = { 48.6, 50.0, MAP.STORMWIND_CITY },
				["maps"] = { MAP.DIRE_MAUL, MAP.HILLSBRAD_FOOTHILLS },
				["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 60,
				["groups"] = {
					q(7645, {	-- Ancient Equine Spirit
						["qg"] = 2357,	-- Merideth Carlson <Horse Breeder>
						["coord"] = { 52.0, 55.6, MAP.HILLSBRAD_FOOTHILLS },
						["cost"] = {
							{ "i", 13724, 20 },	-- Enriched Manna Biscuit
							{ "g", 500000 },	-- 50g
						},
						["repeatable"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Manna-Enriched Horse Feed
								["questID"] = 7643,	-- Ancient Equine Spirit
								["provider"] = { "i", 18775 },	-- Manna-Enriched Horse Feed
							}),
						},
					}),
				},
			}),
			q(5676, {	-- Arcane Feedback [Stormwind City]
				["altQuests"] = {
					5677,	-- Arcane Feedback [Ironforge]
					5678,	-- Arcane Feedback [Darnassus]
				},
				["qg"] = 376,	-- High Priestess Laurena <Priest Trainer>
				["coord"] = { 38.8, 26.6, MAP.STORMWIND_CITY },
				["races"] = { HUMAN },
				["classes"] = { PRIEST },
				["lvl"] = 20,
				["groups"] = {
					r(13896, {	-- Feedback (Rank 1)
						["rank"] = 1,
					}),
				},
			}),
			q(1942, {	-- Astral Knot Garment
				["sourceQuest"] = 1940,	-- Pristine Spider Silk
				["qg"] = 1309,	-- Wynne Larson <Robe Merchant>
				["coord"] = { 52.0, 83.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { MAGE },
				["lvl"] = 26,
				["groups"] = {
					i(9516),	-- Astral Knot Blouse
					i(7511),	-- Astral Knot Robe
				},
			}),
			q(1639, {	-- Bartleby the Drunk
				["sourceQuests"] = {
					1638,	-- A Warrior's Training
					1684,	-- Elanaria
					1679,	-- Muren Stormpike
				},
				["qg"] = 6089,	-- Harry Burlguard
				["coord"] = { 77.1, 53.3, MAP.STORMWIND_CITY },
				["classes"] = { WARRIOR },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(1665, {	-- Bartleby's Mug
				["sourceQuest"] = 1640,	-- Beat Bartleby
				["altQuests"] = {
					-- 1665,	-- Bartleby's Mug
					1678,	-- Vejrek
					1683,	-- Vorlus Vilehoof
				},
				["providers"] = {
					{ "n", 6090 },	-- Bartleby
					{ "i", 6781 },	-- Bartleby's Mug
				},
				["coord"] = { 76.8, 52.5, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { WARRIOR },
				["lvl"] = 10,
				["groups"] = {
					recipe(71),	-- Defensive Stance
					-- recipe(7386),	-- Sunder Armor	[TODO: Users are reporting they can't collect this.]
					recipe(355),	-- Taunt
				},
			}),
			q(1640, {	-- Beat Bartleby
				["sourceQuest"] = 1639,	-- Bartleby the Drunk
				["qg"] = 6090,	-- Bartleby
				["coord"] = { 76.8, 52.5, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { WARRIOR },
				["lvl"] = 10,
			}),
			q(7644, {	-- Blessed Arcanite Barding
				["sourceQuest"] = 7643,	-- Ancient Equine Spirit
				["providers"] = {
					{ "n", 14566 },	-- Ancient Equine Spirit
					{ "i", 18792 },	-- Blessed Arcanite Barding
					{ "n", 928 },	-- Lord Grayson Shadowbreaker <Paladin Trainer>
				},
				["coord"] = { 48.6, 50.0, MAP.STORMWIND_CITY },
				["maps"] = { MAP.DIRE_MAUL },
				["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 60,
			}),
			q(344, {	-- Brother Paxton
				["sourceQuest"] = 343,	-- Speaking of Fortitude
				["qg"] = 1440,	-- Milton Sheaf
				["coord"] = { 77.1, 30.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
			}),
			q(395, {	-- Brotherhood's End
				["sourceQuest"] = 394,	-- The Head of the Beast
				["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
				["coord"] = { 78.3, 70.7, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
			}),
			q(1705, {	-- Burning Blood
				["sourceQuest"] = 1700,	-- Grimand Elmore
				["qg"] = 1416,	-- Grimand Elmore
				["coord"] = { 59.7, 33.8, MAP.STORMWIND_CITY },
				["maps"] = { MAP.DUSKWOOD },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { WARRIOR },
				["lvl"] = 20,
				["groups"] = {
					objective(1, {	-- 0/20 Burning Blood
						["provider"] = { "i", 6844 },	-- Burning Blood
						["coord"] = { 74.2, 77.8, MAP.DUSKWOOD },
						["crs"] = {
							205,	-- Nightbane Dark Runner
							533,	-- Nightbane Shadow Weaver
							920,	-- Nightbane Tainted One
							206,	-- Nightbane Vile Fang
							898,	-- Nightbane Worgen
						},
					}),
					objective(2, {	-- 0/1 Burning Rock
						["provider"] = { "i", 6845 },	-- Burning Rock
						["coord"] = { 74.2, 77.8, MAP.DUSKWOOD },
						["cr"] = 6170,	-- Gutspill
					}),
				},
			}),
			q(7642, {	-- Collection of Goods
				["sourceQuest"] = 7641,	-- The Work of Grimand Elmore
				["qg"] = 1416,	-- Grimand Elmore
				["coord"] = { 59.7, 33.8, MAP.STORMWIND_CITY },
				["maps"] = { MAP.STRATHOLME },
				["cost"] = {
					{ "i", 13180, 5 },	-- Stratholme Holy Water
					{ "i", 8836, 10 },	-- Arthas' Tears
					{ "i", 14047, 40 },	-- Runecloth
					{ "i", 12360, 6 },	-- Arcanite Bar
					{ "g", 1500000 },	-- 150g
				},
				["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 60,
			}),
			q(5634, {	-- Desperate Prayer
				["altQuests"] = {
					5635,	-- Desperate Prayer [Elwynn Forest]
					5636,	-- Desperate Prayer [Teldrassil]
					5637,	-- Desperate Prayer [Dun Morogh]
					5638,	-- Desperate Prayer [Stormwind City #2]
					5639,	-- Desperate Prayer [Ironforge]
					5640,	-- Desperate Prayer [Darnassus]
				},
				["qg"] = 376,	-- High Priestess Laurena <Priest Trainer>
				["coord"] = { 38.8, 26.6, MAP.STORMWIND_CITY },
				["races"] = { HUMAN, DWARF },
				["classes"] = { PRIEST },
				["lvl"] = 10,
				["groups"] = {
					r(13908, {	-- Desperate Prayer (Rank 1)
						["rank"] = 1,
					}),
				},
			}),
			q(5638, {	-- Desperate Prayer
				["altQuests"] = {
					5634,	-- Desperate Prayer [Stormwind City #1]
					5635,	-- Desperate Prayer [Elwynn Forest]
					5636,	-- Desperate Prayer [Teldrassil]
					5637,	-- Desperate Prayer [Dun Morogh]
					5639,	-- Desperate Prayer [Ironforge]
					5640,	-- Desperate Prayer [Darnassus]
				},
				["qg"] = 11397,	-- Nara Meideros <Priest Trainer>
				["coord"] = { 20.8, 50.2, MAP.STORMWIND_CITY },
				["races"] = { HUMAN, DWARF },
				["classes"] = { PRIEST },
				["lvl"] = 10,
				["groups"] = {
					r(13908, {	-- Desperate Prayer (Rank 1)
						["rank"] = 1,
					}),
				},
			}),
			q(6261, {	-- Dungar Longdrink
				["sourceQuest"] = 6281,	-- Continue to Stormwind
				["providers"] = {
					{ "n", 1323 },	-- Osric Strang
					{ "i", 16115 },	-- Osric's Crate (PQI!)
				},
				["coord"] = { 77.0, 61.2, MAP.STORMWIND_CITY },
				["races"] = { HUMAN },
				["lvl"] = 10,
			}),
			q(5673, {	-- Elune's Grace [Stormwind City]
				["altQuests"] = {
					5672,	-- Elune's Grace [Darnassus]
					5675,	-- Elune's Grace [Ironforge]
				},
				["qg"] = 376,	-- High Priestess Laurena <Priest Trainer>
				["coord"] = { 38.8, 26.6, MAP.STORMWIND_CITY },
				["classes"] = { PRIEST },
				["races"] = { NIGHTELF },
				["lvl"] = 20,
				["groups"] = {
					r(2651, {	-- Elune's Grace (Rank 1)
						["rank"] = 1,
					}),
				},
			}),
			q(7637, {	-- Emphasis on Sacrifice
				["sourceQuests"] = {
					7670,	-- Lord Grayson Shadowbreaker [Ironforge]
					7638,	-- Lord Grayson Shadowbreaker [Stormwind City]
				},
				["qg"] = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
				["coord"] = { 48.6, 50.0, MAP.STORMWIND_CITY },
				["maps"] = { MAP.IRONFORGE },
				["cost"] = 1500000,	-- 150g
				["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 60,
			}),
			q(7640, {	-- Exorcising Terrordale
				["sourceQuest"] = 7639,	-- To Show Due Judgment
				["providers"] = {
					{ "n", 928 },	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					{ "i", 18752 },	-- Exorcism Censer
				},
				["coord"] = { 48.6, 50.0, MAP.STORMWIND_CITY },
				["maps"] = { MAP.EASTERN_PLAGUELANDS },
				["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 60,
				["groups"] = {
					objective(1, {	-- 0/25 Terrordale Spirit slain
						["provider"] = { "n", 14564 },	-- Terrordale Spirit
						["coord"] = { 19.6, 36.8, MAP.EASTERN_PLAGUELANDS },
					}),
				},
			}),
			q(1701, {	-- Fire Hardened Mail
				["sourceQuest"] = 1702,	-- The Shieldsmith
				["providers"] = {
					{ "n", 5413 },	-- Furen Longbeard
					{ "i", 6842 },	-- Furen's Instructions
				},
				["coord"] = { 64.6, 37.2, MAP.STORMWIND_CITY },
				["maps"] = { MAP.RAZORFEN_KRAUL, MAP.WETLANDS, MAP.STONETALON_MOUNTAINS },
				["classes"] = { WARRIOR },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
				["groups"] = {
					objective(1, {	-- 0/50 Scorched Spider Fang
						["provider"] = { "i", 6838 },	-- Scorched Spider Fang
						["crs"] = {
							4040,	-- Cave Stalker
							1111,	-- Leech Stalker
						},
					}),
					objective(2, {	-- 0/12 Charred Horn
						["provider"] = { "i", 6839 },	-- Charred Horn
						["crs"] = {
							4031,	-- Fledgling Chimaera
							4032,	-- Young Chimaera
						},
					}),
					objective(3, {	-- 0/1 Galvanized Horn
						["provider"] = { "i", 6840 },	-- Galvanized Horn
						["cr"] = 6167,	-- Chimaera Matriarch
					}),
					objective(4, {	-- 0/1 Vial of Phlogiston
						["provider"] = { "i", 6841 },	-- Vial of Phlogiston
						["cr"] = 6168,	-- Roogug
					}),
				},
			}),
			q(6184, {	-- Flint Shadowmore
				["sourceQuest"] = 6183,	-- Honor the Dead
				["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
				["coord"] = { 78.3, 70.7, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 56,
			}),
			q(1782, {	-- Furen's Armor
				["sourceQuest"] = 1701,	-- Fire Hardened Mail
				["qg"] = 5413,	-- Furen Longbeard
				["coord"] = { 64.6, 37.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { WARRIOR },
				["lvl"] = 20,
				["groups"] = {
					i(6972),	-- Fire Hardened Hauberk
				},
			}),
			q(1685, {	-- Gakin's Summons (Voidwalker)
				["altQuests"] = { 1715 },	-- The Slaughtered Lamb
				["qg"] = 6121,	-- Remen Marcot
				["coord"] = { 44.4, 66.2, MAP.ELWYNN_FOREST },
				["races"] = { HUMAN, GNOME },
				["classes"] = { WARLOCK },
				["isBreadcrumb"] = true,
				["lvl"] = 10,
			}),
			q(1717, {	-- Gakin's Summons (Succubus)
				["qg"] = 6120,	-- Lago Blackwrench
				["coord"] = { 47.6, 9.6, MAP.IRONFORGE },
				["races"] = { HUMAN, GNOME },
				["classes"] = { WARLOCK },
				["isBreadcrumb"] = true,
				["lvl"] = 20,
			}),
			q(1921, {	-- Gathering Materials
				["sourceQuest"] = 1920,	-- Investigate the Blue Recluse
				["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
				["coord"] = { 49.5, 85.8, MAP.STORMWIND_CITY },
				["maps"] = { MAP.LOCH_MODAN },
				["cost"] = {{ "i", 2589, 10 }},	-- Linen Cloth
				["races"] = { HUMAN, GNOME },
				["classes"] = { MAGE },
				["lvl"] = 15,
				["groups"] = {
					objective(2, {	-- 0/6 Charged Rift Gem
						["providers"] = {
							{ "i", 7249 },	-- Charged Rift Gem
							{ "o", 271 },	-- Miners' League Crates
						},
						["coord"] = { 35.0, 27.0, MAP.LOCH_MODAN },
					}),
				},
			}),
			q(3630, {	-- Gnome Engineering [A]
				["altQuests"] = {
					3526,	-- Goblin Engineering
					3629,	-- Goblin Engineering
					-- 3630,	-- Gnome Engineering
					3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					4181,	-- Goblin Engineering
				},
				["providers"] = {
					{ "n", 5518 },	-- Lilliam Sparkspindle <Expert Engineer>
					{ "i", 10789 },	-- Manual of Engineering Disciplines
				},
				["coord"] = { 55.0, 8.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["requireSkill"] = ENGINEERING,
				["learnedAt"] = 200,
				["lvl"] = 30,
			}),
			q(3629, {	-- Goblin Engineering [A]
				["altQuests"] = {
					3526,	-- Goblin Engineering
					-- 3629,	-- Goblin Engineering
					3630,	-- Gnome Engineering
					3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					4181,	-- Goblin Engineering
				},
				["providers"] = {
					{ "n", 5518 },	-- Lilliam Sparkspindle <Expert Engineer>
					{ "i", 10789 },	-- Manual of Engineering Disciplines
				},
				["coord"] = { 55.0, 8.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["requireSkill"] = ENGINEERING,
				["learnedAt"] = 200,
				["lvl"] = 30,
			}),
			q(1700, {	-- Grimand Elmore
				["sourceQuest"] = 1701,	-- Fire Hardened Mail
				["providers"] = {
					{ "n", 5413 },	-- Furen Longbeard
					{ "i", 6926 },	-- Furen's Notes
				},
				["coord"] = { 64.6, 37.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { WARRIOR },
				["isBreadcrumb"] = true,
				["lvl"] = 20,
			}),
			q(1706, {	-- Grimand's Armor
				["sourceQuest"] = 1705,	-- Burning Blood
				["qg"] = 1416,	-- Grimand Elmore
				["coord"] = { 59.7, 33.8, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { WARRIOR },
				["lvl"] = 20,
				["groups"] = {
					i(6971),	-- Fire Hardened Coif
				},
			}),
			q(7648, {	-- Grimand's Finest Work
				["sourceQuest"] = 7642,	-- Collection of Goods
				["providers"] = {
					{ "n", 1416 },	-- Grimand Elmore
					{ "i", 18753 },	-- Arcanite Barding
				},
				["coord"] = { 59.7, 33.8, MAP.STORMWIND_CITY },
				["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 60,
			}),
			q(333, {	-- Harlan Needs a Resupply
				["providers"] = {
					{ "n", 1427 },	-- Harlan Bagley
					{ "i", 2724 },	-- Cloth Request (PQI!)
				},
				["coord"] = { 62.3, 67.9, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(1939, {	-- High Sorcerer Andromath
				["qgs"] = {
					5144,	-- Bink <Mage Trainer>
					5497,	-- Jennea Cannon <Mage Trainer>
				},
				["coords"] = {
					{ 27.0, 8.2, MAP.IRONFORGE },
					{ 49.5, 85.8, MAP.STORMWIND_CITY },
				},
				["races"] = { HUMAN, GNOME },
				["classes"] = { MAGE },
				["isBreadcrumb"] = true,
				["lvl"] = 26,
			}),
			q(6183, {	-- Honor the Dead
				["sourceQuest"] = 6182,	-- The First and the Last
				["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
				["coord"] = { 78.3, 70.7, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 56,
			}),
			q(399, {	-- Humble Beginnings
				["qg"] = 1646,	-- Baros Alexston <City Architect>
				["coord"] = { 57.7, 47.9, MAP.STORMWIND_CITY },
				["maps"] = { MAP.WESTFALL },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 A Simple Compass
						["providers"] = {
							{ "i", 2998 },	-- A Simple Compass
							{ "o", 1166 },	-- Alexston's Chest
						},
						["coord"] = { 36.3, 54.6, MAP.WESTFALL },
					}),
				},
			}),
			q(2759, {	-- In Search of Galvan
				["sourceQuest"] = 2758,	-- The Origins of Smithing
				["providers"] = {
					{ "n", 7798 },	-- Hank the Hammer
					{ "i", 8663 },	-- Mithril Insignia
				},
				["coord"] = { 63.0, 36.4, MAP.STORMWIND_CITY },
				["maps"] = { MAP.STRANGLETHORN_VALE },
				["requireSkill"] = BLACKSMITHING,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 40,
			}),
			q(1448, {	-- In Search of The Temple
				["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
				["coord"] = { 69.5, 40.4, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 38,
			}),
			q(2745, {	-- Infiltrating the Castle
				["sourceQuest"] = 350,	-- Look to an Old Friend
				["qg"] = 482,	-- Elling Trias <Master of Cheese>
				["coord"] = { 66.0, 74.1, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
			}),
			q(1920, {	-- Investigate the Blue Recluse
				["sourceQuest"] = 1919,	-- Report to Jennea
				["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
				["coord"] = { 49.5, 85.8, MAP.STORMWIND_CITY },
				["races"] = { HUMAN, GNOME },
				["classes"] = { MAGE },
				["lvl"] = 15,
				["groups"] = {
					objective(1, {	-- 0/3 Filled Containment Coffer
						["providers"] = {
							{ "i",   7292 },	-- Filled Containment Coffer
							{ "o", 103574 },	-- Filled Containment Coffer
							{ "i",   7247 },	-- Chest of Containment Coffers
							{ "i",   7308 },	-- Cantation of Manifestation
						},
						["coord"] = { 51.0, 95.0, MAP.STORMWIND_CITY },
						["cr"] = 6492,	-- Rift Spawn
					}),
					objective(2, {	-- 0/1 Chest of Containment Coffers
						["providers"] = {
							{ "i",   7247 },	-- Chest of Containment Coffers
							{ "o", 105174 },	-- Chest of Containment Coffers
						},
						["coord"] = { 49.6, 85.4, MAP.STORMWIND_CITY },
					}),
					objective(3, {	-- 0/1 Cantation of Manifestation
						["providers"] = {
							{ "i",   7308 },	-- Cantation of Manifestation
							{ "o", 105175 },	-- Cantation of Manifestation
						},
						["coord"] = { 49.6, 85.4, MAP.STORMWIND_CITY },
					}),
				},
			}),
			q(2746, {	-- Items of Some Consequence
				["sourceQuest"] = 2745,	-- Infiltrating the Castle
				["qg"] = 7766,	-- Tyrion
				["coord"] = { 73.2, 35.7, MAP.STORMWIND_CITY },
				["maps"] = { MAP.ELWYNN_FOREST },
				["cost"] = {{ "i", 4306, 3 }},	-- Silk Cloth
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
				["groups"] = {
					objective(2, {	-- 0/2 Clara's Fresh Apple
						["providers"] = {
							{ "i",   8683 },	-- Clara's Fresh Apple
							{ "o", 142076 },	-- Clara's Fresh Apples
						},
						["coord"] = { 34.0, 57.2, MAP.ELWYNN_FOREST },
					}),
				},
			}),
			q(1704, {	-- Klockmort Spannerspan
				["sourceQuest"] = 1701,	-- Fire Hardened Mail
				["providers"] = {
					{ "n", 5413 },	-- Furen Longbeard
					{ "i", 6926 },	-- Furen's Notes
				},
				["coord"] = { 64.6, 37.2, MAP.STORMWIND_CITY },
				["classes"] = { WARRIOR },
				["races"] = { DWARF, GNOME },
				["isBreadcrumb"] = true,
				["lvl"] = 20,
			}),
			q(7670, {	-- Lord Grayson Shadowbreaker [Ironforge]
				["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
				["coord"] = { 23.4, 6.2, MAP.IRONFORGE },
				["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 60,
			}),
			q(7638, {	-- Lord Grayson Shadowbreaker [Stormwind City]
				["qg"] = 6171,	-- Duthorian Rall
				["coord"] = { 50.5, 47.5, MAP.STORMWIND_CITY },
				["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 60,
			}),
			q(350, {	-- Look to an Old Friend
				["sourceQuest"] = 393,	-- Shadow of the Past
				["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
				["coord"] = { 78.3, 70.7, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
			}),
			q(1941, {	-- Manaweave Robe
				["sourceQuest"] = 1921,	-- Gathering Materials
				["qg"] = 1309,	-- Wynne Larson <Robe Merchant>
				["coord"] = { 52.0, 83.6, MAP.STORMWIND_CITY },
				["races"] = { HUMAN, GNOME },
				["classes"] = { MAGE },
				["lvl"] = 15,
				["groups"] = {
					i(7509),	-- Manaweave Robe
				},
			}),
			q(1666, {	-- Marshal Haggard
				["sourceQuest"] = 1665,	-- Bartleby's Mug
				["qg"] = 6089,	-- Harry Burlguard
				["coord"] = { 77.1, 53.3, MAP.STORMWIND_CITY },
				["maps"] = { MAP.ELWYNN_FOREST },
				["classes"] = { WARRIOR },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
			}),
			q(2360, {	-- Mathias and the Defias
				["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
				["coord"] = { 78.3, 70.7, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { ROGUE },
				["lvl"] = 20,
			}),
			q(1703, {	-- Mathiel
				["sourceQuest"] = 1701,	-- Fire Hardened Mail
				["providers"] = {
					{ "n", 5413 },	-- Furen Longbeard
					{ "i", 6926 },	-- Furen's Notes
				},
				["coord"] = { 64.6, 37.2, MAP.STORMWIND_CITY },
				["classes"] = { WARRIOR },
				["races"] = { NIGHTELF },
				["isBreadcrumb"] = true,
				["lvl"] = 20,
			}),
			q(1363, {	-- Mazen's Behest (1/2)
				["qg"] = 338,	-- Mazen Mac'Nadir
				["coord"] = { 51.8, 74.3, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 37,
			}),
			q(1364, {	-- Mazen's Behest (2/2)
				["sourceQuest"] = 1363,	-- Mazen's Behest (1/2)
				["qg"] = 5386,	-- Acolyte Dellis
				["coord"] = { 51.4, 73.8, MAP.STORMWIND_CITY },
				["maps"] = { MAP.SWAMP_OF_SORROWS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 37,
				["groups"] = {
					objective(1, {	-- 0/1 Khadgar's Essays on Dimensional Convergence
						["provider"] = { "i", 6065 },	-- Khadgar's Essays on Dimensional Convergence
						["crs"] = {
							1081,	-- Mire Lord
							14448,	-- Molt Thorn
							764,	-- Swampwalker
							765,	-- Swampwalker Elder
							766,	-- Tangled Horror
						},
					}),
					i(10747),	-- Teacher's Sash
					i(10748),	-- Wanderlust Boots
				},
			}),
			q(1861, {	-- Mirror Lake
				["sourceQuest"] = 1860,	-- Speak with Jennea
				["altQuests"] = { 1880 },	-- Mage-tastic Gizmonitor
				["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
				["coord"] = { 49.5, 85.8, MAP.STORMWIND_CITY },
				["maps"] = { MAP.ELWYNN_FOREST },
				["classes"] = { MAGE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Mirror Lake Water Sample
						["providers"] = {
							{ "i", 7206 },	-- Mirror Lake Water Sample
							{ "i", 7207 },	-- Jennea's Flask
						},
						["coord"] = { 28.0, 62.0, MAP.ELWYNN_FOREST },
					}),
					i(7508),	-- Ley Orb
					i(9513),	-- Ley Staff
				},
			}),
			q(6187, {	-- Order Must Be Restored
				["sourceQuest"] = 6186,	-- The Blightcaller Cometh
				["qg"] = 1748,	-- Highlord Bolvar Fordragon
				["coord"] = { 79.8, 38.6, MAP.STORMWIND_CITY },
				["maps"] = { MAP.EASTERN_PLAGUELANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 56,
				["groups"] = {
					objective(1, {	-- 0/1 Nathanos Blightcaller slain
						["provider"] = { "n", 11878 },	-- Nathanos Blightcaller <Champion of the Banshee Queen>
						["coord"] = { 26.6, 74.8, MAP.EASTERN_PLAGUELANDS },
					}),
					i(16996),	-- Gorewood Bow
					i(16997),	-- Stormrager
					i(16998),	-- Sacred Protector
				},
			}),
			q(334, {	-- Package for Thurman
				["providers"] = {
					{ "n", 1428 },	-- Rema Schneider
					{ "i", 2760 },	-- Thurman's Sewing Kit
				},
				["coord"] = { 58.1, 67.5, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(1940, {	-- Pristine Spider Silk
				["sourceQuest"] = 1938,	-- Ur's Treatise on Shadow Magic
				["qg"] = 5694,	-- High Sorcerer Andromath
				["coord"] = { 48.7, 87.6, MAP.STORMWIND_CITY },
				["maps"] = { MAP.DUSKWOOD },
				["races"] = { HUMAN, GNOME },
				["classes"] = { MAGE },
				["lvl"] = 26,
				["groups"] = {
					objective(1, {	-- 0/8 Pristine Spider Silk
						["provider"] = { "i", 7267 },	-- Pristine Spider Silk
						["crs"] = {
							949,	-- Carrion Recluse
							930,	-- Black Widow Hatchling
						},
					}),
				},
			}),
			q(2281, {	-- Redridge Rendezvous
				["sourceQuests"] = {
					2260,	-- Erion's Behest(Darnassus)
					2298,	-- Kingly Shakedown(Ironforge)
					2300,	-- SI:7(Elwynn Forest)
				},
				["qg"] = 6946,	-- Renzik "The Shiv" <SI:7 Operative>
				["coord"] = { 78.8, 70.8, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { ROGUE },
				["lvl"] = 16,
			}),
			q(1919, {	-- Report to Jennea
				["qg"] = 7312,	-- Dink <Mage Trainer>
				["coord"] = { 26.8, 8.6, MAP.IRONFORGE },
				["races"] = { HUMAN, GNOME },
				["classes"] = { MAGE },
				["isBreadcrumb"] = true,
				["lvl"] = 15,
			}),
			q(6285, {	-- Return to Lewis
				["sourceQuest"] = 6261,	-- Dungar Longdrink
				["providers"] = {
					{ "n", 352 },	-- Dungar Longdrink <Gryphon Master>
					{ "i", 16115 },	-- Osric's Crate (PQI!)
				},
				["coord"] = { 71.0, 72.5, MAP.STORMWIND_CITY },
				["maps"] = { MAP.WESTFALL },
				["races"] = { HUMAN },
				["lvl"] = 10,
			}),
			q(5631, {	-- Returning Home [Stormwind City]
				["altQuests"] = {
					5627,	-- Returning Home [Darnassus]
					5628,	-- Returning Home [Elwynn Forest]
					5629,	-- Returning Home [Teldrassil]
					5630,	-- Returning Home [Dun Morogh]
					5632,	-- Returning Home [Stormwind City]
					5633,	-- Returning Home [Ironforge]
				},
				["qg"] = 5489,	-- Brother Joshua <Priest Trainer>
				["coord"] = { 38.6, 26.8, MAP.STORMWIND_CITY },
				["classes"] = { PRIEST },
				["races"] = { NIGHTELF },
				["lvl"] = 10,
				["groups"] = {
					r(10797, {	-- Starshards (Rank 1)
						["rank"] = 1,
					}),
				},
			}),
			q(5632, {	-- Returning Home [Stormwind City]
				["altQuests"] = {
					5627,	-- Returning Home [Darnassus]
					5628,	-- Returning Home [Elwynn Forest]
					5629,	-- Returning Home [Teldrassil]
					5630,	-- Returning Home [Dun Morogh]
					5631,	-- Returning Home [Stormwind City]
					5633,	-- Returning Home [Ironforge]
				},
				["qg"] = 11397,	-- Nara Meideros <Priest Trainer>
				["coord"] = { 20.8, 50.2, MAP.STORMWIND_CITY },
				["classes"] = { PRIEST },
				["races"] = { NIGHTELF },
				["lvl"] = 10,
				["groups"] = {
					r(10797, {	-- Starshards (Rank 1)
						["rank"] = 1,
					}),
				},
			}),
			q(393, {	-- Shadow of the Past
				["sourceQuest"] = 392,	-- The Curious Visitor
				["providers"] = {
					{ "n", 1646 },	-- Baros Alexston <City Architect>
					{ "i", 8687 },	-- Sealed Description of Thredd's Visitor
				},
				["coord"] = { 57.7, 47.9, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
			}),
			q(2206, {	-- Snatch and Grab
				["sourceQuest"] = 2205,	-- Seek out SI:7
				["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
				["coord"] = { 78.3, 70.7, MAP.STORMWIND_CITY },
				["maps"] = { MAP.ELWYNN_FOREST },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { ROGUE },
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Defias Shipping Schedule
						["provider"] = { "i", 7675 },	-- Defias Shipping Schedule
						["coord"] = { 48.2, 87.6, MAP.ELWYNN_FOREST },
						["cr"] = 6846,	-- Defias Dockmaster
					}),
					i(7298),	-- Blade of Cunning
				},
			}),
			q(343, {	-- Speaking of Fortitude
				["qg"] = 1444,	-- Brother Kristoff
				["coord"] = { 55.0, 54.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
			}),
			q(353, {	-- Stormpike's Delivery
				["sourceQuest"] = 1097,	-- Elmore's Task
				["providers"] = {
					{ "n", 1416 },	-- Grimand Elmore
					{ "i", 2806 },	-- Package for Stormpike (PQI!)
				},
				["coord"] = { 59.7, 33.8, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
			}),
			q(579, {	-- Stormwind Library
				["providers"] = {
					{ "n", 2504 },	-- Donyal Tovald <Librarian>
					{ "i", 3898 },	-- Library Scrip
				},
				["coord"] = { 84.6, 24.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["groups"] = {
					i(3899),	-- Legends of the Gurubashi, Volume 3
					i(2154),	-- The Story of Morgan Ladimore
				},
			}),
			q(1688, {	-- Surena Caledon
				["sourceQuests"] = {
					1685,	-- Gakin's Summons (Voidwalker)
					1715,	-- The Slaughtered Lamb
				},
				["qg"] = 6122,	-- Gakin the Darkbinder
				["coord"] = { 39.2, 85.2, MAP.STORMWIND_CITY },
				["maps"] = { MAP.ELWYNN_FOREST },
				["races"] = { HUMAN, GNOME },
				["classes"] = { WARLOCK },
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- Surena's Choker
						["provider"] = { "i", 6810 },	-- Surena's Choker
						["coord"] = { 71.0, 80.6, MAP.ELWYNN_FOREST },
						["cr"] = 881,	-- Surena Caledon
					}),
				},
			}),
			q(434, {	-- The Attack!
				["sourceQuest"] = 2746,	-- Items of Some Consequence
				["qg"] = 7766,	-- Tyrion
				["coord"] = { 73.2, 35.7, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
				["groups"] = {
					objective(1, {	-- 0/1 Lord Gregor Lescovar slain
						["provider"] = { "n", 1754 },	-- Lord Gregor Lescovar
					}),
					objective(2, {	-- 0/1 Marzon the Silent Blade slain
						["provider"] = { "n", 1755 },	-- Marzon the Silent Blade
					}),
				},
			}),
			q(1739, {	-- The Binding (Succubus) [Stormwind City]
				["sourceQuest"] = 1738,	-- Heartswood
				["qg"] = 6122,	-- Gakin the Darkbinder
				["coord"] = { 39.2, 85.2, MAP.STORMWIND_CITY },
				["races"] = { HUMAN, GNOME },
				["classes"] = { WARLOCK },
				["lvl"] = 20,
				["groups"] = {
					objective(1, {	-- 0/1 Summoned Succubus slain
						["provider"] = { "n", 5677 },	-- Summoned Succubus
						["cost"] = { { "i", 6913, 1 } },	-- Heartswood Core
					}),
					recipe(712),	-- Summon Succubus
					i(22243),	-- Small Soul Pouch
				},
			}),
			q(1689, {	-- The Binding (Voidwalker) [Stormwind City]
				["sourceQuest"] = 1688,	-- Surena Caledon
				["qg"] = 6122,	-- Gakin the Darkbinder
				["coord"] = { 39.2, 85.2, MAP.STORMWIND_CITY },
				["races"] = { HUMAN, GNOME },
				["classes"] = { WARLOCK },
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Summoned Voidwalker slain
						["provider"] = { "n", 5676 },	-- Summoned Voidwalker
						["cost"] = { { "i", 6928, 1 } },	-- Bloodstone Choker
					}),
					recipe(697),	-- Summon Voidwalker
				},
			}),
			q(392, {	-- The Curious Visitor
				["sourceQuest"] = 391,	-- The Stockage Riots
				["providers"] = {
					{ "n", 1719 },	-- Warden Thelwater
					{ "i", 8687 },	-- Sealed Description of Thredd's Visitor
				},
				["coord"] = { 51.6, 69.4, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
			}),
			q(7646, {	-- The Divination Scryer
				["sourceQuest"] = 7644,	-- Blessed Arcanite Barding
				["qg"] = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
				["coord"] = { 48.6, 50.0, MAP.STORMWIND_CITY },
				["cost"] = {
					{ "i", 12800, 1 },	-- Azerothian Diamond
					{ "i", 18335, 1 },	-- Pristine Black Diamond
				},
				["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 60,
			}),
			q(6182, {	-- The First and the Last
				["qg"] = 1748,	-- Highlord Bolvar Fordragon
				["coord"] = { 79.8, 38.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 56,
			}),
			q(394, {	-- The Head of the Beast
				["sourceQuest"] = 434,	-- The Attack!
				["qg"] = 482,	-- Elling Trias <Master of Cheese>
				["coord"] = { 66.0, 74.1, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 16,
			}),
			q(1274, {	-- The Missing Diplomat (1/17)
				["qg"] = 4982,	-- Thomas <Altar Boy>
				["coord"] = { 49.6, 44.5, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(1241, {	-- The Missing Diplomat (2/17)
				["sourceQuest"] = 1274,	-- The Missing Diplomat (1/17)
				["providers"] = {
					{ "n", 4960 },	-- Bishop DeLavey
					{ "i", 5948 },	-- Letter to Jorgen
				},
				["coord"] = { 80.3, 44.1, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(1242, {	-- The Missing Diplomat (3/17)
				["sourceQuest"] = 1241,	-- The Missing Diplomat (2/17)
				["providers"] = {
					{ "n", 4959 },	-- Jorgen
					{ "i", 5946 },	-- Sealed Note to Elling
				},
				["coord"] = { 76.3, 85.1, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(1243, {	-- The Missing Diplomat (4/17)
				["sourceQuest"] = 1242,	-- The Missing Diplomat (3/17)
				["providers"] = {
					{ "n", 482 },	-- Elling Trias <Master of Cheese>
					{ "i", 5960 },	-- Sealed Note to Watcher Backus
				},
				["coord"] = { 66.0, 74.1, MAP.STORMWIND_CITY },
				["maps"] = { MAP.DUSKWOOD },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(1244, {	-- The Missing Diplomat (5/17)
				["sourceQuest"] = 1243,	-- The Missing Diplomat (4/17)
				["qg"] = 840,	-- Watcher Backus
				["coord"] = { 73.21, 38.81, MAP.DUSKWOOD },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
				["groups"] = {
					objective(1, {	-- 0/1 Defias Docket
						["providers"] = {
							{ "o", 21052 },	-- Defias Strongbox
							{ "i", 5947 },	-- Defias Docket
						},
						["coord"] = { 24.0, 72.1, MAP.DUSKWOOD },
					}),
				},
			}),
			q(1245, {	-- The Missing Diplomat (6/17)
				["sourceQuest"] = 1244,	-- The Missing Diplomat (5/17)
				["providers"] = {
					{ "n", 840 },	-- Watcher Backus
					{ "i", 5947 },	-- Defias Docket
				},
				["coord"] = { 73.21, 38.81, MAP.DUSKWOOD },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(1246, {	-- The Missing Diplomat (7/17)
				["sourceQuest"] = 1245,	-- The Missing Diplomat (6/17)
				["qg"] = 482,	-- Elling Trias <Master of Cheese>
				["coord"] = { 66.0, 74.1, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(1447, {	-- The Missing Diplomat (8/17)
				["description"] = "Dashel Stonefist will spawn 2 level 26 adds to fight alongside him.",
				["sourceQuest"] = 1246,	-- The Missing Diplomat (7/17)
				["qg"] = 4961,	-- Dashel Stonefist
				["coord"] = { 74.3, 59.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(1247, {	-- The Missing Diplomat (9/17)
				["sourceQuest"] = 1447,	-- The Missing Diplomat (8/17)
				["qg"] = 4961,	-- Dashel Stonefist
				["coord"] = { 74.3, 59.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(1248, {	-- The Missing Diplomat (10/17)
				["sourceQuest"] = 1247,	-- The Missing Diplomat (9/17)
				["qg"] = 482,	-- Elling Trias <Master of Cheese>
				["coord"] = { 66.0, 74.1, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(2758, {	-- The Origins of Smithing
				["qg"] = 7798,	-- Hank the Hammer
				["coord"] = { 63.0, 36.4, MAP.STORMWIND_CITY },
				["cost"] = {{ "i", 6040, 6 }},	-- Golden Scale Bracers
				["requireSkill"] = BLACKSMITHING,
				["learnedAt"] = 210,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 40,
				["groups"] = {
					i(9367, {	-- Plans: Golden Scale Gauntlets (RECIPE!)
						["description"] = "This item can be sold on the Neutral Auction House to Horde Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Alliance Blacksmiths.",
					}),
				},
			}),
			q(543, {	-- The Perenolde Tiara
				["qg"] = 2285,	-- Count Remington Ridgewell
				["coord"] = { 76.9, 47.8, MAP.STORMWIND_CITY },
				["maps"] = { MAP.ALTERAC_MOUNTAINS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Perenolde Tiara
						["provider"] = { "i", 3684 },	-- Perenolde Tiara
						["coord"] = { 39.6, 52.8, MAP.ALTERAC_MOUNTAINS },
						["cr"] = 2417,	-- Grel'borg the Miser
					}),
				},
			}),
			q(2998, {	-- The Tome of Divinity (1a/10)
				["altQuests"] = {
					3681,	-- The Tome of Divinity (1b/10)
					1787,	-- The Tome of Divinity (8)
				},
				["qg"] = 927,	-- Brother Wilhelm
				["coord"] = { 41.0, 66.0, MAP.ELWYNN_FOREST },
				["races"] = { HUMAN },
				["classes"] = { PALADIN },
				["lvl"] = 12,
			}),
			q(3681, {	-- The Tome of Divinity (1b/10)
				["altQuests"] = {
					2998,	-- The Tome of Divinity (1a/10)
					1787,	-- The Tome of Divinity (8)
				},
				["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
				["coord"] = { 23.4, 6.2, MAP.IRONFORGE },
				["races"] = { HUMAN },
				["classes"] = { PALADIN },
				["lvl"] = 12,
			}),
			q(1641, {	-- The Tome of Divinity (2/10)
				["sourceQuests"] = {
					2998,	-- The Tome of Divinity (1a/10)
					3681,	-- The Tome of Divinity (1b/10)
				},
				["altQuests"] = { 1787 },	-- The Tome of Divinity (8)
				["qg"] = 6171,	-- Duthorian Rall
				["coord"] = { 50.5, 47.5, MAP.STORMWIND_CITY },
				["races"] = { HUMAN },
				["classes"] = { PALADIN },
				["lvl"] = 12,
			}),
			q(1642, {	-- The Tome of Divinity (3/10)
				["sourceQuest"] = 1641,	-- The Tome of Divinity (2/10)
				["providers"] = {
					{ "n", 6171 },	-- Duthorian Rall
					{ "i", 6775 },	-- Tome of Divinity
				},
				["coord"] = { 50.5, 47.5, MAP.STORMWIND_CITY },
				["races"] = { HUMAN },
				["classes"] = { PALADIN },
				["lvl"] = 12,
			}),
			q(1643, {	-- The Tome of Divinity (4/10)
				["sourceQuest"] = 1642,	-- The Tome of Divinity (3/10)
				["qg"] = 6171,	-- Duthorian Rall
				["coord"] = { 50.5, 47.5, MAP.STORMWIND_CITY },
				["races"] = { HUMAN },
				["classes"] = { PALADIN },
				["lvl"] = 12,
			}),
			q(1644, {	-- The Tome of Divinity (5/10)
				["sourceQuest"] = 1643,	-- The Tome of Divinity (4/10)
				["qg"] = 6174,	-- Stephanie Turner
				["coord"] = { 63.8, 72.2, MAP.STORMWIND_CITY },
				["cost"] = {{ "i", 2589, 10 }},	-- Linen Cloth
				["races"] = { HUMAN },
				["classes"] = { PALADIN },
				["lvl"] = 12,
			}),
			q(1780, {	-- The Tome of Divinity (6/10)
				["sourceQuest"] = 1644,	-- The Tome of Divinity (5/10)
				["qg"] = 6174,	-- Stephanie Turner
				["coord"] = { 63.8, 72.2, MAP.STORMWIND_CITY },
				["races"] = { HUMAN },
				["classes"] = { PALADIN },
				["lvl"] = 12,
			}),
			q(1781, {	-- The Tome of Divinity (7/10)
				["sourceQuest"] = 1780,	-- The Tome of Divinity (6/10)
				["providers"] = {
					{ "n", 6171 },	-- Duthorian Rall
					{ "i", 6866 },	-- Symbol of Life
				},
				["coord"] = { 50.5, 47.5, MAP.STORMWIND_CITY },
				["races"] = { HUMAN },
				["classes"] = { PALADIN },
				["lvl"] = 12,
			}),
			q(1786, {	-- The Tome of Divinity (8/10)
				["sourceQuest"] = 1781,	-- The Tome of Divinity (7/10)
				["qg"] = 6173,	-- Gazin Tenorm
				["coord"] = { 49.5, 44.9, MAP.STORMWIND_CITY },
				["races"] = { HUMAN },
				["classes"] = { PALADIN },
				["lvl"] = 12,
				["groups"] = {
					q(1790, {	-- The Symbol of Life
						["qg"] = 6171,	-- Duthorian Rall
						["coord"] = { 50.5, 47.5, MAP.STORMWIND_CITY },
						["repeatable"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Symbol of Life
								["questID"] = 1786,	-- The Tome of Divinity (8/10)
								["provider"] = { "i", 6866 },	-- Symbol of Life
							}),
						},
					}),
				},
			}),
			q(1787, {	-- The Tome of Divinity (9/10)
				["sourceQuest"] = 1786,	-- The Tome of Divinity (8/10)
				["qg"] = 6172,	-- Henze Faulk
				["coord"] = { 72.6, 51.6, MAP.ELWYNN_FOREST },
				["races"] = { HUMAN },
				["classes"] = { PALADIN },
				["lvl"] = 12,
				["groups"] = {
					objective(1, {	-- 0/1 Defias Script
						["provider"] = { "i", 6846 },	-- Defias Script
						["cr"] = 474,	-- Defias Rogue Wizard
					}),
				},
			}),
			q(1788, {	-- The Tome of Divinity (10/10)
				["sourceQuest"] = 1787,	-- The Tome of Divinity (9/10)
				["qg"] = 6173,	-- Gazin Tenorm
				["coord"] = { 49.5, 44.9, MAP.STORMWIND_CITY },
				["races"] = { HUMAN },
				["classes"] = { PALADIN },
				["lvl"] = 12,
				["groups"] = {
					-- recipe(7328),	-- Redemption [Rank 1]
				},
			}),
			q(4485, {	-- The Tome of Nobility (Stormwind City)
				["qg"] = 5491,	-- Arthur the Faithful <Paladin Trainer>
				["coord"] = { 49.6, 49.9, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { PALADIN },
				["isBreadcrumb"] = true,
				["lvl"] = 40,
			}),
			q(4486, {	-- The Tome of Nobility (Ironforge)
				["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
				["coord"] = { 23.6, 6.6, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { PALADIN },
				["isBreadcrumb"] = true,
				["lvl"] = 40,
			}),
			q(1661, {	-- The Tome of Nobility
				["sourceQuests"] = {
					4485,	-- The Tome of Nobility (Stormwind City)
					4486,	-- The Tome of Nobility (Ironforge)
				},
				["qg"] = 6171,	-- Duthorian Rall
				["coord"] = { 50.5, 47.5, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { PALADIN },
				["lvl"] = 40,
				["groups"] = {
					mount(13819),	-- Summon Warhorse
				},
			}),
			q(1794, {	-- The Tome of Valor [Dwarf]
				["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
				["coord"] = { 23.6, 6.4, MAP.IRONFORGE },
				["classes"] = { PALADIN },
				["races"] = { DWARF },
				["repeatable"] = true,
				["lvl"] = 20,
			}),
			q(1793, {	-- The Tome of Valor [Human]
				["qg"] = 6171,	-- Duthorian Rall
				["coord"] = { 50.5, 47.5, MAP.STORMWIND_CITY },
				["classes"] = { PALADIN },
				["races"] = { HUMAN },
				["repeatable"] = true,
				["lvl"] = 20,
			}),
			q(1649, {	-- The Tome of Valor (1/4)
				["sourceQuests"] = {
					1794,	-- The Tome of Valor [Dwarf]
					1793,	-- The Tome of Valor [Human]
				},
				["providers"] = {
					{ "n", 6171 },	-- Duthorian Rall
					{ "i", 6776 },	-- Tome of Valor
				},
				["coord"] = { 50.5, 47.5, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { PALADIN },
				["lvl"] = 20,
			}),
			q(1650, {	-- The Tome of Valor (2/4)
				["sourceQuest"] = 1649,	-- The Tome of Valor (1/4)
				["qg"] = 6171,	-- Duthorian Rall
				["coord"] = { 50.5, 47.5, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { PALADIN },
				["lvl"] = 20,
			}),
			q(1651, {	-- The Tome of Valor (3/4)
				["sourceQuest"] = 1650,	-- The Tome of Valor (2/4)
				["qg"] = 6182,	-- Daphne Stilwell
				["coord"] = { 42.4, 88.4, MAP.WESTFALL },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { PALADIN },
				["lvl"] = 20,
			}),
			q(1652, {	-- The Tome of Valor (4/4)
				["sourceQuest"] = 1651,	-- The Tome of Valor (3/4)
				["qg"] = 6171,	-- Duthorian Rall
				["coord"] = { 50.5, 47.5, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { PALADIN },
				["lvl"] = 20,
				["groups"] = {
					recipe(5502),	-- Sense Undead
					i(9607),	-- Bastion of Stormwind
				},
			}),
			q(2607, {	-- The Touch of Zanzil (1/3)
				["sourceQuest"] = 2359,	-- Klaven's Tower
				["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
				["coord"] = { 78.3, 70.7, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { ROGUE },
				["lvl"] = 20,
			}),
			q(2608, {	-- The Touch of Zanzil (2/3)
				["sourceQuest"] = 2607,	-- The Touch of Zanzil (1/3)
				["qg"] = 7207,	-- Doc Mixilpixil
				["coord"] = { 80.1, 69.9, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { ROGUE },
				["lvl"] = 20,
				["groups"] = {
					objective(1, {	-- Diagnosis Complete
						["description"] = "Type /lay to lie down to be examined.",
					}),
				},
			}),
			q(2609, {	-- The Touch of Zanzil (3/3)
				["sourceQuest"] = 2608,	-- The Touch of Zanzil (2/3)
				["qg"] = 7207,	-- Doc Mixilpixil
				["coord"] = { 80.1, 69.9, MAP.STORMWIND_CITY },
				["cost"] = {
					{ "i", 3372, 1 },	-- Leaded Vial
					{ "i", 4371, 1 },	-- Bronze Tube
				},
				["races"] = ALLIANCE_ONLY,
				["classes"] = { ROGUE },
				["lvl"] = 20,
				["groups"] = {
					objective(1, {	-- 0/1 Simple Wildflowers
						["provider"] = { "i", 3421 },	-- Simple Wildflowers
						["coord"] = { 69.6, 71.6, MAP.STORMWIND_CITY },
						["crs"] = {
							1302,	-- Bernard Gump <Florist>
							1303,	-- Felicia Gump <Herbalism Supplies>
						},
					}),
					objective(4, {	-- 0/1 Spool of Light Chartreuse Silk Thread
						["providers"] = {
							{ "i",   8431 },	-- Spool of Light Chartreuse Silk Thread
							{ "o", 140911 },	-- Spool of Light Chartreuse Silk Thread
						},
						["coord"] = { 50.4, 60.2, MAP.STORMWIND_CITY },
					}),
					i(8432),	-- Eau de Mixilpixil
				},
			}),
			q(7641, {	-- The Work of Grimand Elmore
				["sourceQuest"] = 7640,	-- Exorcising Terrordale
				["qg"] = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
				["coord"] = { 48.6, 50.0, MAP.STORMWIND_CITY },
				["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 60,
			}),
			q(7639, {	-- To Show Due Judgment
				["sourceQuest"] = 7637,	-- Emphasis on Sacrifice
				["providers"] = {
					{ "n", 11406 },	-- High Priest Rohan <Priest Trainer>
					{ "i", 18819 },	-- Rohan's Exorcism Censer
				},
				["coord"] = { 25.0, 8.2, MAP.IRONFORGE },
				["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 60,
			}),
			q(1449, {	-- To The Hinterlands
				["sourceQuest"] = 1448,	-- In Search of The Temple
				["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
				["coord"] = { 69.5, 40.4, MAP.STORMWIND_CITY },
				["maps"] = { MAP.THE_HINTERLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 38,
			}),
			q(1938, {	-- Ur's Treatise on Shadow Magic
				["sourceQuest"] = 1939,	-- High Sorcerer Andromath
				["qg"] = 5694,	-- High Sorcerer Andromath
				["coord"] = { 48.7, 87.6, MAP.STORMWIND_CITY },
				["maps"] = { MAP.REDRIDGE_MOUNTAINS },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { MAGE },
				["lvl"] = 26,
				["groups"] = {
					objective(1, {	-- 0/1 Ur's Treatise on Shadow Magic
						["providers"] = {
							{ "i",   7266 },	-- Ur's Treatise on Shadow Magic
							{ "o", 103628 },	-- Ur's Treatise on Shadow Magic
						},
						["coord"] = { 79.0, 37.6, MAP.REDRIDGE_MOUNTAINS },
						["description"] = "Located in one of the bookshelves at the top of the tower.",
					}),
				},
			}),
			q(332, {	-- Wine Shop Advert
				["sourceQuest"] = 61,	-- Shipment to Stormwind
				["providers"] = {
					{ "n", 1432 },	-- Renato Gallina
					{ "i", 2722 },	-- Wine Ticket (PQI!)
				},
				["coord"] = { 63.8, 73.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(2723),	-- Bottle of Dalaran Noir
				},
			}),
			q(397, {	-- You Have Served Us Well
				["sourceQuest"] = 336,	-- A Noble Brew (2/2)
				["qg"] = 1435,	-- Zardeth of the Black Claw
				["coord"] = { 40.1, 85.3, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { WARLOCK },
				["lvl"] = 25,
				["groups"] = {
					i(3556),	-- Dread Mage Hat
				},
			}),
		}),
		n(RARES, {
			n(3581, {	-- Sewer Beast
				["coords"] = {
					{ 49.8, 22.6, MAP.STORMWIND_CITY },
					{ 53.8, 30.6, MAP.STORMWIND_CITY },
					{ 66.8, 32.2, MAP.STORMWIND_CITY },
					{ 62.6, 38.0, MAP.STORMWIND_CITY },
					{ 66.6, 57.0, MAP.STORMWIND_CITY },
					{ 62.4, 50.2, MAP.STORMWIND_CITY },
					{ 35.2, 42.4, MAP.STORMWIND_CITY },
					{ 38.6, 47.4, MAP.STORMWIND_CITY },
					{ 31.4, 64.4, MAP.STORMWIND_CITY },
					{ 34.2, 60.2, MAP.STORMWIND_CITY },
					{ 50.0, 69.6, MAP.STORMWIND_CITY },
					{ 47.2, 61.6, MAP.STORMWIND_CITY },
				},
			}),
		}),
		n(TREASURES, {
			o(180665, {	-- Draconic for Dummies
				["coord"] = { 75.35, 29.73, MAP.STORMWIND_CITY },
				["groups"] = {
					i(21107),	-- Draconic for Dummies [Chapter V]
				},
			}),
		}),
		n(VENDORS, {
			n(1347, {	-- Alexandra Bolero <Tailoring Supplies>
				["coord"] = { 53.2, 81.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(6274, {	-- Pattern: Blue Overalls (RECIPE!)
						["isLimited"] = true,
					}),
					i(10325, {	-- Pattern: White Wedding Dress (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(1315, {	-- Allan Hafgan <Staves Merchant>
				["coord"] = { 52.9, 75.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(2527),	-- Battle Staff
					i(2535),	-- War Staff
				},
			}),
			n(1312, {	-- Ardwyn Cailen <Wand Merchant>
				["coord"] = { 52.8, 75.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
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
			n(1349, {	-- Agustus Moulaine <Mail Armor Merchant>
				["coord"] = { 53.6, 57.8, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2419,	-- Augmented Chain Belt
					2420,	-- Augmented Chain Boots
					2421,	-- Augmented Chain Bracers
					2422,	-- Augmented Chain Gloves
					3891,	-- Augmented Chain Helm
					2418,	-- Augmented Chain Leggings
					2417,	-- Augmented Chain Vest
					2424,	-- Brigandine Belt
					2426,	-- Brigandine Boots
					2427,	-- Brigandine Bracers
					2428,	-- Brigandine Gloves
					3894,	-- Brigandine Helm
					2425,	-- Brigandine Leggings
					2423,	-- Brigandine Vest
					2451,	-- Crested Heater Shield
					2448,	-- Heavy Pavise
					2446,	-- Kite Shield
					17189,	-- Metal Buckler
					17190,	-- Ornate Buckler
					8094,	-- Platemail Armor
					8088,	-- Platemail Belt
					8089,	-- Platemail Boots
					8090,	-- Platemail Bracers
					8091,	-- Platemail Gloves
					8092,	-- Platemail Helm
					8093,	-- Platemail Leggings
					2148,	-- Polished Scale Belt
					2149,	-- Polished Scale Boots
					2150,	-- Polished Scale Bracers
					2151,	-- Polished Scale Gloves
					2152,	-- Polished Scale Leggings
					2153,	-- Polished Scale Vest
					17192,	-- Reinforced Targe
				}},
			}),
			n(1302, {	-- Bernard Gump <Florist>
				["coord"] = { 69.6, 71.4, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(3422),	-- Beautiful Wildflowers
					i(3420),	-- Black Rose
					i(3424),	-- Bouquet Of Black Roses
					i(3423),	-- Bouquet Of White Roses
					i(3419),	-- Red Rose
					i(3421),	-- Simple Wildflowers
				},
			}),
			n(5514, {	-- Brooke Stonebraid <Mining Supplies>
				["coord"] = { 59.2, 37.5, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{ "sub", "common_vendor", 4256 }},	-- Golnir Bouldertoe <Mining Supplies>
			}),
			n(1319, {	-- Bryan Cross <Shield Merchant>
				["coord"] = { 69.6, 57.8, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2451,	-- Crested Heater Shield
					2448,	-- Heavy Pavise
					2446,	-- Kite Shield
					17189,	-- Metal Buckler
					17190,	-- Ornate Buckler
					17192,	-- Reinforced Targe
				}},
				["groups"] = {
					i(2445),	-- Large Metal Shield
					i(17188),	-- Ringed Buckler
				},
			}),
			n(12777, {	-- Captain Dirgehammer <Armor Quartermaster>
				["description"] = "Found within the Champion's Hall.",
				["sym"] = {	-- Grand Marshal Armor
					{"sub", "pvp_gear_base", EXPANSION.CLASSIC, FACTION_HEADER_ALLIANCE },
					{ "pop" },
					{ "exclude", "headerID", WEAPONS },
					{ "exclude", "f", TRINKET_F, NECK_F },
				},
				["races"] = ALLIANCE_ONLY,
			}),
			n(12782, {	-- Captain O'Neal <Weapons Quartermaster>
				["description"] = "Found within the Champion's Hall.",
				["sym"] = {{"sub", "pvp_gear_base", EXPANSION.CLASSIC, FACTION_HEADER_ALLIANCE, WEAPONS },{ "pop" }},	-- Grand Marshal Weapons
				["races"] = ALLIANCE_ONLY,
			}),
			n(1291, {	-- Carla Granger <Cloth Armor Merchant>
				["coord"] = { 62.2, 67.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(16059),	-- Common Brown Shirt
					i(3428),	-- Common Grey Shirt
					i(16060),	-- Common White Shirt
					i(837),	-- Heavy Weave Armor
					i(3589),	-- Heavy Weave Belt
					i(3590),	-- Heavy Weave Bracers
					i(839),	-- Heavy Weave Gloves
					i(838),	-- Heavy Weave Pants
					i(840),	-- Heavy Weave Shoes
					i(3602),	-- Knitted Belt
					i(3603),	-- Knitted Bracers
					i(793),	-- Knitted Gloves
					i(794),	-- Knitted Pants
					i(792),	-- Knitted Sandals
					i(795),	-- Knitted Tunic
					i(3597),	-- Thick Cloth Belt
					i(3598),	-- Thick Cloth Bracers
					i(203),	-- Thick Cloth Gloves
					i(201),	-- Thick Cloth Pants
					i(202),	-- Thick Cloth Shoes
					i(200),	-- Thick Cloth Vest
				},
			}),
			n(5494, {	-- Catherine Leland <Fishing Supplier>
				["coord"] = { 55.0, 69.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
					i(6330),	-- Recipe: Bristle Whisker Catfish (RECIPE!)
					i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
				},
			}),
			n(1307, {	-- Charys Yserian <Arcane Trinkets Vendor>
				["coord"] = { 44.8, 86.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(4824, {	-- Blurred Axe
						["isLimited"] = true,
					}),
					i(4825, {	-- Callous Axe
						["isLimited"] = true,
					}),
					i(4829, {	-- Dreamer's Belt
						["isLimited"] = true,
					}),
					i(4826, {	-- Marauder Axe
						["isLimited"] = true,
					}),
					i(4828, {	-- Nightwind Belt
						["isLimited"] = true,
					}),
					i(4827, {	-- Wizard's Belt
						["isLimited"] = true,
					}),
				},
			}),
			n(1304, {	-- Darian Singh <Fireworks Vendor>
				["coord"] = { 42.6, 76.8, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(18649, {	-- Schematic: Blue Firework (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(1314, {	-- Duncan Cullen <Light Armor Merchant>
				["coord"] = { 53.2, 81.8, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(2142),	-- Cuirboulli Belt
					i(2143),	-- Cuirboulli Boots
					i(2144),	-- Cuirboulli Bracers
					i(2145),	-- Cuirboulli Gloves
					i(2146),	-- Cuirboulli Pants
					i(2141),	-- Cuirboulli Vest
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
					i(2471),	-- Reinforced Leather Belt
					i(2473),	-- Reinforced Leather Boots
					i(2474),	-- Reinforced Leather Bracers
					i(3893),	-- Reinforced Leather Cap
					i(2475),	-- Reinforced Leather Gloves
					i(2472),	-- Reinforced Leather Pants
					i(2470),	-- Reinforced Leather Vest
					i(3593),	-- Russet Belt
					i(2432),	-- Russet Boots
					i(3594),	-- Russet Bracers
					i(2434),	-- Russet Gloves
					i(3889),	-- Russet Hat
					i(2431),	-- Russet Pants
					i(2429),	-- Russet Vest
					i(2464),	-- Studded Belt
					i(2467),	-- Studded Boots
					i(2468),	-- Studded Bracers
					i(2463),	-- Studded Doublet
					i(2469),	-- Studded Gloves
					i(3890),	-- Studded Hat
					i(2465),	-- Studded Pants
				},
			}),
			n(483, {	-- Elaine Trias <Mistress of Cheese>
				["coord"] = { 66.6, 73.4, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(8932),	-- Alterac Swiss
					i(414),	-- Dalaran Sharp
					i(2070),	-- Darnassian Bleu
					i(422),	-- Dwarven Mild
					i(3927),	-- Fine Aged Cheddar
					i(1707),	-- Stormwind Brie
				},
			}),
			n(5503, {	-- Eldraeith <Herbalism Supplier>
				["coord"] = { 55.6, 85.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{ "sub", "common_vendor", 4216 }},	-- Chardryn <Herbalism Supplies>
			}),
			n(5483, {	-- Erika Tate <Cooking Supplier>
				["coord"] = { 77.6, 53.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
					i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
				},
			}),
			n(1303, {	-- Felicia Gump <Herbalism Supplier>
				["coord"] = { 64.2, 60.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					3422,	-- Beautiful Wildflowers
					3420,	-- Black Rose
					3424,	-- Bouquet Of Black Roses
					3423,	-- Bouquet Of White Roses
					3419,	-- Red Rose
					3421,	-- Simple Wildflowers
				}},
				["groups"] = {
					i(2665),	-- Stormwind Seasoning Herbs
				},
			}),
			n(1298, {	-- Frederick Stover <Bow & Arrow Merchant>
				["coord"] = { 58.6, 69.0, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
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
			n(1333, {	-- Gerik Koen <Two Handed Weapon Merchant>
				["coord"] = { 73.2, 57.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(2523),	-- Bullova
					i(2521),	-- Flamberge
					i(2531),	-- Great Axe
					i(2525),	-- War Hammer
					i(2533),	-- War Maul
					i(2529),	-- Zweihander
				},
			}),
			n(1348, {	-- Gregory Ardus <Staff & Mace Merchant>
				["coord"] = { 48.2, 54.8, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
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
				["groups"] = {
					i(2492),	-- Cudgel
					i(2493),	-- Wooden Mallet
				},
			}),
			n(1289, {	-- Gunther Weller <Weapons Merchant>
				["coord"] = { 64.0, 68.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(926),	-- Battle Axe
					i(2025),	-- Bearded Axe
					i(1198),	-- Claymore
					i(2029),	-- Cleaver
					i(851),	-- Cutlass
					i(922),	-- Dacian Falx
					i(927),	-- Double Axe
					i(2024),	-- Espadon
					i(925),	-- Flail
					i(1197),	-- Giant Mace
					i(2030),	-- Gnarled Staff
					i(2028),	-- Hammer
					i(853),	-- Hatchet
					i(15811),	-- Heavy Spear
					i(2207),	-- Jambiya
					i(2209),	-- Kris
					i(923),	-- Longsword
					i(928),	-- Long Staff
					i(852),	-- Mace
					i(924),	-- Maul
					i(2208),	-- Poniard
					i(854),	-- Quarter Staff
					i(2027),	-- Scimitar
					i(2026),	-- Rock Hammer
					i(15810),	-- Short Spear
					i(1196),	-- Tabar
				},
			}),
			n(1324, {	-- Heinrich Stone <Blade Merchant>
				["coord"] = { 77.0, 57.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(2520),	-- Broadsword
					i(2528),	-- Falchion
					i(2526),	-- Main Gauche
					i(2534),	-- Rondel
				},
			}),
			n(1318, {	-- Jessara Cordell <Enchanting Supplies>
				["coord"] = { 53.0, 74.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {
					{ "select","itemID",
						20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
						20752,	-- Formula: Minor Mana Oil (RECIPE!)
						20758,	-- Formula: Minor Wizard Oil (RECIPE!)
						6342,	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
						22307,	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
					},
				},
			}),
			n(5512, {	-- Kaita Deepforge <Blacksmithing Supplies>
				["coord"] = { 63.2, 37.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(12162, {	-- Plans: Hardened Iron Shortsword (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(5509, {	-- Kathrum Axehand <Axe Merchant>
				["coord"] = { 59.6, 34.0, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2523,	-- Bullova
					2531,	-- Great Axe
				}},
				["groups"] = {
					i(2522),	-- Crescent Axe
					i(2530),	-- Francisca
				},
			}),
			n(340, {	-- Kendor Kabonka <Master of Cooking Recipes>
				["coord"] = { 76.4, 53.0, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(2889),	-- Recipe: Beer Basted Boar Ribs (RECIPE!)
					i(3679),	-- Recipe: Blood Sausage (RECIPE!)
					i(2698),	-- Recipe: Cooked Crab Claw (RECIPE!)
					i(3681),	-- Recipe: Crocolisk Gumbo (RECIPE!)
					i(3678),	-- Recipe: Crocolisk Steak (RECIPE!)
					i(3682),	-- Recipe: Curiously Tasty Omelet (RECIPE!)
					i(3683),	-- Recipe: Gooey Spider Cake (RECIPE!)
					i(2697),	-- Recipe: Goretusk Liver Pie (RECIPE!)
					i(3680),	-- Recipe: Murloc Fin Soup (RECIPE!)
					i(2699),	-- Recipe: Redridge Goulash (RECIPE!)
					i(2701),	-- Recipe: Seasoned Wolf Kabob (RECIPE!)
					i(2700),	-- Recipe: Succulent Pork Ribs (RECIPE!)
					i(728),	-- Recipe: Westfall Stew (RECIPE!)
				},
			}),
			n(1295, {	-- Lara Moore <Leather Armor Merchant>
				["coord"] = { 62.2, 67.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(236),	-- Cured Leather Armor
					i(1849),	-- Cured Leather Belt
					i(238),	-- Cured Leather Boots
					i(1850),	-- Cured Leather Bracers
					i(239),	-- Cured Leather Gloves
					i(237),	-- Cured Leather Pants
					i(1839),	-- Rough Leather Belt
					i(796),	-- Rough Leather Boots
					i(1840),	-- Rough Leather Bracers
					i(797),	-- Rough Leather Gloves
					i(798),	-- Rough Leather Pants
					i(799),	-- Rough Leather Vest
					i(1843),	-- Tanned Leather Belt
					i(843),	-- Tanned Leather Boots
					i(1844),	-- Tanned Leather Bracers
					i(844),	-- Tanned Leather Gloves
					i(846),	-- Tanned Leather Jerkin
					i(845),	-- Tanned Leather Pants
				},
			}),
			n(12783, {	-- Lieutenant Karter <Mount Vendor>
				["description"] = "Found within the Champion's Hall.",
				["races"] = ALLIANCE_ONLY,
				["groups"] = pvp({
					i(18243),	-- Black Battlestrider (MOUNT!)
					i(18244),	-- Black War Ram (MOUNT!)
					i(18241),	-- Black War Steed (MOUNT!)
					i(18242),	-- Black War Tiger (MOUNT!)
				}),
			}),
			n(8666, {	-- Lil Timmy <Boy with kittens>
				["coord"] = { 64.0, 38.0, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(8489, {	-- White Kitten (PET!)
						["isLimited"] = true,
					}),
				},
			}),
			n(8118, {	-- Lillian Singh <Holiday Fireworks Vendor>
				["coord"] = { 62.6, 70.0, MAP.STORMWIND_CITY },
				["description"] = "This NPC is only available on July 4th.",
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(8626),	-- Blue Sparkler
					i(8625),	-- White Sparkler
					i(8624),	-- Red Sparkler
				},
			}),
			n(1297, {	-- Lina Stover <Bow & Gun Merchant>
				["coord"] = { 58.6, 68.8, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(3024),	-- Bkp 2700 Enforcer
					i(3027),	-- Heavy Recurve Bow
					i(2506),	-- Hornwood Recurve Bow
					i(2511),	-- Hunter's Boomstick
					i(2507),	-- Laminated Recurve Bow
					i(3023),	-- Large Bore Blunderbuss
					i(2509),	-- Ornate Blunderbuss
					i(2505),	-- Polished Shortbow
					i(3026),	-- Reinforced Bow
					i(2504),	-- Worn Shortbow
				},
			}),
			n(1299, {	-- Lisbeth Schneider <Clothier>
				["coord"] = { 58.2, 67.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(3426),	-- Bold Yellow Shirt
					i(3428),	-- Common Grey Shirt
					i(3427),	-- Stylish Black Shirt
					i(13896),	-- Dark Green Wedding Hanbok
					i(13898),	-- Royal Dangui
					i(13897),	-- White Traditional Hanbok
				},
			}),
			n(1287, {	-- Marda Weller <Weapons Merchant>
				["coord"] = { 64.0, 68.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					926,	-- Battle Axe
					2025,	-- Bearded Axe
					2029,	-- Cleaver
					1198,	-- Claymore
					851,	-- Cutlass
					922,	-- Dacian Falx
					927,	-- Double Axe
					2024,	-- Espadon
					925,	-- Flail
					2030,	-- Gnarled Staff
					1197,	-- Giant Mace
					853,	-- Hatchet
					2207,	-- Jambiya
					2209,	-- Kris
					928,	-- Long Staff
					852,	-- Mace
					924,	-- Maul
					2208,	-- Poniard
					854,	-- Quarter Staff
					2026,	-- Rock Hammer
					2027,	-- Scimitar
				}},
				["groups"] = {
					i(15808),	-- Fine Light Crossbow
					i(15809),	-- Heavy Crossbow
					i(15807),	-- Light Crossbow
				},
			}),
			n(1313, {	-- Maria Lumere <Alchemy Supplies>
				["coord"] = { 55.6, 85.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(9301, {["isLimited"] = true}),	-- Recipe: Elixir of Shadow Power (RECIPE!)
				},
			}),
			n(12781, {	-- Master Sergeant Biggins <Officer Accessories Quartermaster>
				["description"] = "Found within the Champion's Hall.",
				["races"] = ALLIANCE_ONLY,
				["groups"] = pvp({
					i(18606),	-- Alliance Battle Standard
					i(18839),	-- Combat Healing Potion
					i(18841),	-- Combat Mana Potion
					i(15198),	-- Knight's Colors
				}),
			}),
			n(12805, {	-- Officer Areyn <Accessories Quartermaster>
				["coord"] = { 76.8, 65.8, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(18664),	-- A Treatise on Military Ranks
					i(15196, {	-- Private's Tabard
						["races"] = ALLIANCE_ONLY,
					}),
					i(18854, {	-- Insignia of the Alliance
						["classes"] = { WARRIOR },
					}),
					i(18857, {	-- Insignia of the Alliance
						["classes"] = { ROGUE },
					}),
					i(18862, {	-- Insignia of the Alliance
						["classes"] = { PRIEST },
					}),
					i(18859, {	-- Insignia of the Alliance
						["classes"] = { MAGE },
					}),
					i(18858, {	-- Insignia of the Alliance
						["classes"] = { WARLOCK },
					}),
					i(18863, {	-- Insignia of the Alliance
						["classes"] = { DRUID },
					}),
					i(18864, {	-- Insignia of the Alliance
						["classes"] = { PALADIN },
					}),
					i(18856, {	-- Insignia of the Alliance
						["classes"] = { HUNTER },
					}),
					i(16342),	-- Sergeant's Cape (58)
					i(18440),	-- Sergeant's Cape (45)
					i(18441),	-- Sergeant's Cape (30)
					i(18443),	-- Master Sergeant's Insignia (58)
					i(18444),	-- Master Sergeant's Insignia (45)
					i(18442),	-- Master Sergeant's Insignia (30)
					i(18449, {	-- Sergeant Major's Chain Armguards (45)
						["classes"] = { HUNTER },
					}),
					i(18455, {	-- Sergeant Major's Dragonhide Armsplints (45)
						["classes"] = { DRUID },
					}),
					i(18453, {	-- Sergeant Major's Leather Armsplints (45)
						["classes"] = { ROGUE },
					}),
					i(18447, {	-- Sergeant Major's Plate Wristguards (45)
						["classes"] = { PALADIN, WARRIOR },
					}),
					i(18457, {	-- Sergeant Major's Silk Cuffs (45)
						["classes"] = { MAGE, PRIEST, WARLOCK },
					}),
					i(18448, {	-- Sergeant Major's Chain Armguards (58)
						["classes"] = { HUNTER },
					}),
					i(18454, {	-- Sergeant Major's Dragonhide Armsplints (58)
						["classes"] = { DRUID },
					}),
					i(18452, {	-- Sergeant Major's Leather Armsplints (58)
						["classes"] = { ROGUE },
					}),
					i(18445, {	-- Sergeant Major's Plate Wristguards (58)
						["classes"] = { PALADIN, WARRIOR },
					}),
					i(18456, {	-- Sergeant Major's Silk Cuffs (58)
						["classes"] = { MAGE, PRIEST, WARLOCK },
					}),
				},
			}),
			n(1323, {	-- Osric Strang <Heavy Armor Merchant>
				["coord"] = { 77.0, 61.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2419,	-- Augmented Chain Belt
					2420,	-- Augmented Chain Boots
					2421,	-- Augmented Chain Bracers
					2422,	-- Augmented Chain Gloves
					3891,	-- Augmented Chain Helm
					2418,	-- Augmented Chain Leggings
					2417,	-- Augmented Chain Vest
					2424,	-- Brigandine Belt
					2426,	-- Brigandine Boots
					2427,	-- Brigandine Bracers
					2428,	-- Brigandine Gloves
					3894,	-- Brigandine Helm
					2425,	-- Brigandine Leggings
					2423,	-- Brigandine Vest
					2451,	-- Crested Heater Shield
					2448,	-- Heavy Pavise
					2446,	-- Kite Shield
					17189,	-- Metal Buckler
					17190,	-- Ornate Buckler
					8094,	-- Platemail Armor
					8088,	-- Platemail Belt
					8089,	-- Platemail Boots
					8090,	-- Platemail Bracers
					8091,	-- Platemail Gloves
					8092,	-- Platemail Helm
					8093,	-- Platemail Leggings
					2148,	-- Polished Scale Belt
					2149,	-- Polished Scale Boots
					2150,	-- Polished Scale Bracers
					2151,	-- Polished Scale Gloves
					2152,	-- Polished Scale Leggings
					2153,	-- Polished Scale Vest
					17192,	-- Reinforced Targe
				}},
			}),
			n(5193, {	-- Rebecca Laughlin <Tabard Designer>
				["coord"] = { 64.0, 77.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(5976),	-- Guild Tabard
				},
			}),
			n(277, {	-- Roberto Pupellyverbos <Merlot Connoisseur>
				["coord"] = { 59.4, 77.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(1941),	-- Cask of Merlot
				},
			}),
			n(1320, {	-- Seoman Griffith <Leather Armor Merchant>
				["coord"] = { 72.0, 62.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2471,	-- Reinforced Leather Belt
					2473,	-- Reinforced Leather Boots
					2474,	-- Reinforced Leather Bracers
					3893,	-- Reinforced Leather Cap
					2475,	-- Reinforced Leather Gloves
					2472,	-- Reinforced Leather Pants
					2470,	-- Reinforced Leather Vest
					2464,	-- Studded Belt
					2467,	-- Studded Boots
					2468,	-- Studded Bracers
					2463,	-- Studded Doublet
					2469,	-- Studded Gloves
					3890,	-- Studded Hat
					2465,	-- Studded Pants
				}},
			}),
			n(1350, {	-- Theresa Moulaine <Robe Vendor>
				["coord"] = { 53.4, 58.0, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(2617),	-- Burning Robes
					i(2615),	-- Chromatic Robe
					i(2613),	-- Double-Stitched Robes
					i(2612),	-- Plain Robe
					i(2614),	-- Robe of Apprenticeship
					i(2616),	-- Shimmering Silk Robes
					i(2618),	-- Silver Dress Robes
				},
			}),
			n(5510, {	-- Thulman Flintcrag <Guns Vendor>
				["coord"] = { 61.8, 36.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2509,	-- Ornate Blunderbuss
				}},
				["groups"] = {
					i(2510),	-- Solid Blunderbuss
				},
			}),
			n(1341, {	-- Wilhelm Strang <Mail Armor Merchant>
				["coord"] = { 77.2, 61.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2148,	-- Polished Scale Belt
					2149,	-- Polished Scale Boots
					2150,	-- Polished Scale Bracers
					2151,	-- Polished Scale Gloves
					2152,	-- Polished Scale Leggings
					2153,	-- Polished Scale Vest
					1853,	-- Scalemail Belt
					287,	-- Scalemail Boots
					1852,	-- Scalemail Bracers
					718,	-- Scalemail Gloves
					286,	-- Scalemail Pants
					285,	-- Scalemail Vest
				}},
			}),
			n(1309, {	-- Wynne Larson <Robe Merchant>
				["coord"] = { 52.0, 83.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2617,	-- Burning Robes
					2615,	-- Chromatic Robe
					2613,	-- Double Stitched Robes
					2612,	-- Plain Robe
					2614,	-- Robe Of Apprenticeship
					2616,	-- Shimmering Silk Robes
					2618,	-- Silver Dress Robes
				}},
			}),
		}),
	},
});
