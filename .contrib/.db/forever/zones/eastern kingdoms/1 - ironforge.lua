---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.IRONFORGE, {
	["lore"] = "Ironforge is the capital city of the dwarves, proud members of the Alliance. It is the ancestral home of the Bronzebeard dwarves. King Bronzebeard rules the kingdom of Khaz Modan from the throne room within the city. The Great Forge area gave the city its name.\n\nCarved into the stone heart of Khaz Modan, the mighty city of Ironforge is a testament to the dwarves' strength and resilience. The city is perhaps the most intricate of the Alliance cities, boasting many small passageways, shops built into the rock walls, and cavernous rooms. The feel of the city is a bustling, rowdy, and somewhat industrial one. However, it is predominantly safe-feeling and cozy; fires roar in the hearths of the inns and shops, and much dwarven laughing and frivolity is to be heard. Also, unlike Stormwind and Darnassus, the city is actually a massive cavern carved into the earth by the dwarves; the ceiling and floor are both hard stone.\n\nMainly because of the Deeprun Tram, linking Ironforge and Stormwind City, and the district of Tinker Town, Ironforge is one of the most racially diverse cities in the Alliance world. Dwarves predominate, of course, but you will find plenty of gnomes even outside of Tinker Town, and probably as many humans. You will find almost no night elves however, as they probably prefer more natural and open spaced environments.",
	["icon"] = 255138,
	["isRaid"] = true,
	["groups"] = {
		n(FACTIONS, {
			faction(FACTION_GNOMEREGAN, {	-- Gnomeregan Exiles
				["icon"] = 236446,
				["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
				["races"] = ALLIANCE_ONLY,
			}),
			faction(FACTION_IRONFORGE, {	-- Ironforge
				["icon"] = 236444,
				["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
				["races"] = ALLIANCE_ONLY,
			}),
		}),
		n(FLIGHT_PATHS, {
			fp(6, {	-- Ironforge, Dun Morogh
				["cr"] = 1573,	-- Gryth Thurden <Gryphon Master>
				["coord"] = { 55.6, 48.0, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
			}),
		}),
		n(PROFESSIONS, {
			prof(BLACKSMITHING, {
				n(4258, {	-- Bengus Deepforge <Artisan Blacksmith>
					["coord"] = { 52.6, 40.8, MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = APPRENTICE_JOURNEYMAN_EXPERT_BLACKSMITHING,
				}),
				n(5164, {	-- Grumnus Steelshaper <Armor Crafter>
					["coord"] = { 50.2, 42.6, MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CLASSIC_ARMORSMITHING,
				}),
				n(11146, {	-- Ironus Coldsteel <Special Weapon Crafter>
					["coord"] = { 50.8, 43.0, MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CLASSIC_WEAPONSMITHING,
				}),
			}),
		}),
		n(QUESTS, {
			q(7809, {	-- A Donation of Mageweave
				["qg"] = 14724,	-- Bubulo Acerbus
				["coord"] = { 74.1, 48.1, MAP.IRONFORGE },
				["cost"] = {{ "i", 4338, 60 }},	-- Mageweave Cloth
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 40,
			}),
			q(7804, {	-- A Donation of Mageweave
				["qg"] = 14723,	-- Mistina Steelshield
				["coord"] = { 43.2, 31.9, MAP.IRONFORGE },
				["cost"] = {{ "i", 4338, 60 }},	-- Mageweave Cloth
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 40,
			}),
			q(7811, {	-- A Donation of Runecloth
				["qg"] = 14724,	-- Bubulo Acerbus
				["coord"] = { 74.1, 48.1, MAP.IRONFORGE },
				["cost"] = {{ "i", 14047, 60 }},	-- Runecloth
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 50,
			}),
			q(7805, {	-- A Donation of Runecloth
				["qg"] = 14723,	-- Mistina Steelshield
				["coord"] = { 43.2, 31.9, MAP.IRONFORGE },
				["cost"] = {{ "i", 14047, 60 }},	-- Runecloth
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 50,
			}),
			q(7808, {	-- A Donation of Silk
				["qg"] = 14724,	-- Bubulo Acerbus
				["coord"] = { 74.1, 48.1, MAP.IRONFORGE },
				["cost"] = {{ "i", 4306, 60 }},	-- Silk Cloth
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 26,
			}),
			q(7803, {	-- A Donation of Silk
				["qg"] = 14723,	-- Mistina Steelshield
				["coord"] = { 43.2, 31.9, MAP.IRONFORGE },
				["cost"] = {{ "i", 4306, 60 }},	-- Silk Cloth
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 26,
			}),
			q(7802, {	-- A Donation of Wool
				["qg"] = 14723,	-- Mistina Steelshield
				["coord"] = { 43.2, 31.9, MAP.IRONFORGE },
				["cost"] = {{ "i", 2592, 60 }},	-- Wool Cloth
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 12,
			}),
			q(7807, {	-- A Donation of Wool
				["qg"] = 14724,	-- Bubulo Acerbus
				["coord"] = { 74.1, 48.1, MAP.IRONFORGE },
				["cost"] = {{ "i", 2592, 60 }},	-- Wool Cloth
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 12,
			}),
			q(686, {	-- A King's Tribute (1/3)
				["sourceQuest"] = 683,	-- Sara Balloo's Plea
				["qg"] = 2784,	-- King Magni Bronzebeard
				["coord"] = { 39.4, 55.8, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 25,
			}),
			q(689, {	-- A King's Tribute (2/3)
				["sourceQuest"] = 686,	-- A King's Tribute (1/3)
				["qg"] = 2790,	-- Grand Mason Marblesten
				["coord"] = { 38.6, 87.0, MAP.IRONFORGE },
				["maps"] = { MAP.HILLSBRAD_FOOTHILLS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 25,
				["groups"] = {
					objective(1, {	-- 0/5 Alterac Granite
						["providers"] = {
							{ "i", 4521 },	-- Alterac Granite
							{ "o", 2714 },	-- Alterac Granite
						},
						["coord"] = { 43.2, 27.9, MAP.HILLSBRAD_FOOTHILLS },
					}),
				},
			}),
			q(700, {	-- A King's Tribute (3/3)
				["sourceQuest"] = 689,	-- A King's Tribute (2/3)
				["qg"] = 2790,	-- Grand Mason Marblesten
				["coord"] = { 38.6, 87.0, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 25,
				["groups"] = {
					i(4535),	-- Ironforge Memorial Ring
				},
			}),
			q(5641, {	-- A Lack of Fear
				["altQuests"] = {
					5647,	-- A Lack of Fear [Darnassus]
					5645,	-- A Lack of Fear [Stormwind City]
				},
				["qg"] = 11406,	-- High Priest Rohan <Priest Trainer>
				["coord"] = { 25.0, 8.2, MAP.IRONFORGE },
				["classes"] = { PRIEST },
				["races"] = { DWARF },
				["lvl"] = 20,
				["groups"] = {
					recipe(6346),	-- Fear Ward
				},
			}),
			q(4512, {	-- A Little Slime Goes a Long Way (1/2)
				["qg"] = 9616,	-- Laris Geardawdle
				["coord"] = { 75.4, 23.4, MAP.IRONFORGE },
				["maps"] = { MAP.FELWOOD },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 48,
				["groups"] = {
					objective(1, {	-- 0/6 Filled Cursed Ooze Jar
						["provider"] = { "i", 11947 },	-- Filled Cursed Ooze Jar
						["cost"] = { { "i", 11914, 1 } },	-- Empty Cursed Ooze Jar
						["cr"] = 7086,	-- Cursed Ooze
					}),
					objective(2, {	-- 0/6 Filled Tainted Ooze Jar
						["provider"] = { "i", 11949 },	-- Filled Tainted Ooze Jar
						["cost"] = { { "i", 11948, 1 } },	-- Empty Tainted Ooze Jar
						["cr"] = 7092,	-- Tainted Ooze
					}),
					i(11912, {	-- Package of Empty Ooze Containers
						i(11914),	-- Empty Cursed Ooze Jar
						i(11948),	-- Empty Tainted Ooze Jar
					}),
				},
			}),
			q(4513, {	-- A Little Slime Goes a Long Way (2/2)
				["sourceQuest"] = 4512,	-- A Little Slime Goes a Long Way (1/2)
				["qg"] = 9616,	-- Laris Geardawdle
				["coord"] = { 75.4, 23.4, MAP.IRONFORGE },
				["maps"] = { MAP.UNGORO_CRATER },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 40,
				["groups"] = {
					objective(1, {	-- 0/10 Filled Pure Sample Jar
						["provider"] = { "i", 11954 },	-- Filled Pure Sample Jar
						["cost"] = { { "i", 11953, 1 } },	-- Empty Pure Sample Jar
						["crs"] = {
							6556,	-- Muculent Slime
							6557,	-- Primal Ooze
						},
					}),
					i(11955, {	-- Bag of Empty Ooze Containers
						i(11953),	-- Empty Pure Sample Jar
					}),
					i(12050),	-- Hazecover Boots
					i(12051),	-- Brazen Gauntlets
				},
			}),
			q(7806, {	-- Additional Runecloth [Ironforge]
				["sourceQuest"] = 7805,	-- A Donation of Runecloth
				["qg"] = 14723,	-- Mistina Steelshield
				["coord"] = { 43.2, 31.9, MAP.IRONFORGE },
				["maxReputation"] = { FACTION_IRONFORGE, EXALTED },	-- Ironforge, Exalted.
				["cost"] = {{ "i", 14047, 20 }},	-- Runecloth
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = 50,
			}),
			q(7812, {	-- Additional Runecloth [Gnomeregan Exiles]
				["sourceQuest"] = 7811,	-- A Donation of Runecloth
				["qg"] = 14724,	-- Bubulo Acerbus
				["coord"] = { 74.1, 48.1, MAP.IRONFORGE },
				["maxReputation"] = { FACTION_GNOMEREGAN, EXALTED },	-- Gnomeregan Exiles, Exalted.
				["cost"] = {{ "i", 14047, 20 }},	-- Runecloth
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = 50,
			}),
			q(3450, {	-- An Easy Pickup
				["sourceQuest"] = 3448,	-- Passing the Burden
				["qg"] = 8507,	-- Tymor
				["coord"] = { 31.2, 4.6, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 45,
			}),
			q(5677, {	-- Arcane Feedback [Ironforge]
				["altQuests"] = {
					5676,	-- Arcane Feedback [Stormwind City]
					5678,	-- Arcane Feedback [Darnassus]
				},
				["qg"] = 11406,	-- High Priest Rohan <Priest Trainer>
				["coord"] = { 26.4, 7.6, MAP.IRONFORGE },
				["races"] = { HUMAN },
				["classes"] = { PRIEST },
				["lvl"] = 20,
				["groups"] = {
					r(13896, {	-- Feedback (Rank 1)
						["rank"] = 1,
					}),
				},
			}),
			q(3449, {	-- Arcane Runes
				["sourceQuests"] = {
					3448,	-- Passing the Burden
					3451,	-- Signal for Pickup (1/2)
				},
				["qg"] = 8507,	-- Tymor
				["coord"] = { 31.2, 4.6, MAP.IRONFORGE },
				["maps"] = { MAP.AZSHARA },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 45,
				["groups"] = {
					objective(1, {	-- 0/1 Rubbing: Rune of Beth'Amara
						["providers"] = {
							{ "i",  10563 },	-- Rubbing: Rune of Beth'Amara
							{ "o", 149481 },	-- Rune of Beth'Amara
							{ "i",  10445 },	-- Drawing Kit
						},
						["coord"] = { 36.0, 53.0, MAP.AZSHARA },
					}),
					objective(2, {	-- 0/1 Rubbing: Rune of Jin'yael
						["providers"] = {
							{ "i",  10564 },	-- Rubbing: Rune of Jin'yael
							{ "o", 149480 },	-- Rune of Jin'yael
							{ "i",  10445 },	-- Drawing Kit
						},
						["coord"] = { 39.0, 50.0, MAP.AZSHARA },
					}),
					objective(3, {	-- 0/1 Rubbing: Rune of Markri
						["providers"] = {
							{ "i",  10565 },	-- Rubbing: Rune of Markri
							{ "o", 149482 },	-- Rune of Markri
							{ "i",  10445 },	-- Drawing Kit
						},
						["coord"] = { 39.0, 55.0, MAP.AZSHARA },
					}),
					objective(4, {	-- 0/1 Rubbing: Rune of Sael'hai
						["providers"] = {
							{ "i",  10566 },	-- Rubbing: Rune of Sael'hai
							{ "o", 149483 },	-- Rune of Sael'hai
							{ "i",  10445 },	-- Drawing Kit
						},
						["coord"] = { 42.0, 64.0, MAP.AZSHARA },
					}),
					q(3451, {	-- Signal for Pickup (1/2)
						["sourceQuest"] = 3450,	-- An Easy Pickup
						["qg"] = 8517,	-- Xiggs Fuselighter
						["coord"] = { 71.0, 94.2, MAP.IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 45,
						["groups"] = {
							objective(5, {	-- 0/1 Standard Issue Flare Gun
								["questID"] = 3449,	-- Arcane Runes
								["provider"] = { "i", 10444 },	-- Standard Issue Flare Gun
								["description"] = "DO NOT LEAVE IRONFORGE WITHOUT THIS.\n - Crieve",
								["coord"] = { 77.0, 91.0, MAP.AZSHARA },
							}),
						},
					}),
					q(3483, {	-- Signal for Pickup (2/2)
						["sourceQuest"] = 3451,	-- Signal for Pickup (1/2)
						["qg"] = 8517,	-- Xiggs Fuselighter
						["coord"] = { 71.0, 94.2, MAP.IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
						["lvl"] = 45,
					}),
				},
			}),
			q(7342, {	-- Arrows Are For Sissies
				["qg"] = 14183,	-- Artilleryman Sheldonore
				["coord"] = { 19.6, 52.2, MAP.IRONFORGE },
				["cost"] = {{ "i", 15997, 200 }},	-- Thorium Shells
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = 52,
				["groups"] = {
					i(18042),	-- Thorium Headed Arrow
				},
			}),
			q(5675, {	-- Elune's Grace [Ironforge]
				["altQuests"] = {
					5672,	-- Elune's Grace [Darnassus]
					5673,	-- Elune's Grace [Stormwind City]
				},
				["qg"] = 11406,	-- High Priest Rohan <Priest Trainer>
				["coord"] = { 25.0, 8.2, MAP.IRONFORGE },
				["classes"] = { PRIEST },
				["races"] = { NIGHTELF },
				["lvl"] = 20,
				["groups"] = {
					r(2651, {	-- Elune's Grace (Rank 1)
						["rank"] = 1,
					}),
				},
			}),
			q(95041, {	-- Data Hoaders
				["qg"] = 11028,	-- Jemma Quikswitch
				["coord"] = { 67.7, 44.2, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["maps"] = { MAP.DUN_MOROGH },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["groups"] = {
					objective(1, {	-- 0/7 Gnomeregan Archival Data
						["providers"] = {
							{ "o", 629596 },	-- Snowdrift
							{ "i", 267413 },	-- Gnomeregan Archival Data
						},
					}),
				}
			}),

			q(5639, {	-- Desperate Prayer
				["altQuests"] = {
					5634,	-- Desperate Prayer [Stormwind City #1]
					5635,	-- Desperate Prayer [Elwynn Forest]
					5636,	-- Desperate Prayer [Teldrassil]
					5637,	-- Desperate Prayer [Dun Morogh]
					5638,	-- Desperate Prayer [Stormwind City #2]
					5640,	-- Desperate Prayer [Darnassus]
				},
				["qg"] = 11406,	-- High Priest Rohan <Priest Trainer>
				["coord"] = { 26.4, 7.6, MAP.IRONFORGE },
				["races"] = { HUMAN, DWARF },
				["classes"] = { PRIEST },
				["lvl"] = 10,
				["groups"] = {
					r(13908, {	-- Desperate Prayer (Rank 1)
						["rank"] = 1,
					}),
				},
			}),
			q(2039, {	-- Find Bingles
				["qg"] = 6569,	-- Gnoarn
				["coord"] = { 69.4, 50.6, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 12,
			}),
			q(1618, {	-- Gearing Redridge
				["qg"] = 6031,	-- Tormus Deepforge
				["coord"] = { 48.6, 43.0, MAP.IRONFORGE },
				["maps"] = { MAP.REDRIDGE_MOUNTAINS },
				["cost"] = {
					{ "i", 2857, 4 },	-- Runed Copper Belt
					{ "i", 6214, 4 },	-- Heavy Copper Maul
				},
				["requireSkill"] = BLACKSMITHING,
				["learnedAt"] = 60,
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(6735, {	-- Plans: Ironforge Breastplate (RECIPE!)
						["description"] = "This item can be sold on the Neutral Auction House to Horde Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Alliance Blacksmiths.",
					}),
				},
			}),
			q(3632, {	-- Gnome Engineering [A]
				["altQuests"] = {
					3526,	-- Goblin Engineering
					3629,	-- Goblin Engineering
					3630,	-- Gnome Engineering
					-- 3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					4181,	-- Goblin Engineering
				},
				["qg"] = 5174,	-- Springspindle Fizzlegear <Artisan Engineer>
				["qi"] = 10789,	-- Manual of Engineering Disciplines
				["coord"] = { 68.8, 45.2, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["requireSkill"] = ENGINEERING,
				["learnedAt"] = 200,
				["lvl"] = 30,
			}),
			q(4181, {	-- Goblin Engineering [A]
				["altQuests"] = {
					3526,	-- Goblin Engineering
					3629,	-- Goblin Engineering
					3630,	-- Gnome Engineering
					3632,	-- Gnome Engineering
					3633,	-- Goblin Engineering
					3634,	-- Gnome Engineering
					3635,	-- Gnome Engineering
					3637,	-- Gnome Engineering
					-- 4181,	-- Goblin Engineering
				},
				["qg"] = 5174,	-- Springspindle Fizzlegear <Artisan Engineer>
				["qi"] = 10789,	-- Manual of Engineering Disciplines
				["coord"] = { 68.8, 45.2, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["requireSkill"] = ENGINEERING,
				["learnedAt"] = 200,
				["lvl"] = 30,
			}),
			q(1682, {	-- Grey Iron Weapons
				["sourceQuest"] = 1681,	-- Ironband's Compound
				["qg"] = 6031,	-- Tormus Deepforge
				["coord"] = { 49.0, 42.6, MAP.IRONFORGE },
				["classes"] = { WARRIOR },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					i(6978),	-- Umbral Axe
					i(6984),	-- Umbral Sword
					i(6982),	-- Umbral Mace
					i(6981),	-- Umbral Dagger
				},
			}),
			q(6388, {	-- Gryth Thurden
				["sourceQuest"] = 6391,	-- Ride to Ironforge
				["qg"] = 4256,	-- Golnir Bouldertoe
				["qi"] = 16311,	-- Honorary Picks
				["coord"] = { 51.0, 26.0, MAP.IRONFORGE },
				["races"] = { DWARF, GNOME },
				["lvl"] = 10,
			}),
			q(6609, {	-- I Got Nothin' Left!
				["description"] = "Requires 225 Fishing to start this quest.",
				["qg"] = 5161,	-- Grimnur Stonebrand <Fishing Trainer>
				["coord"] = { 48.2, 6.6, MAP.IRONFORGE },
				["requireSkill"] = FISHING,
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 35,
			}),
			q(6612, {	-- I Know A Guy...
				["qg"] = 5159,	-- Daryl Riknussun
				["coord"] = { 60.1, 36.5, MAP.IRONFORGE },
				["requireSkill"] = COOKING,
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 35,
			}),
			q(1073, {	-- Ineptitude + Chemicals = Fun (1/2)
				["sourceQuest"] = 1072,	-- An Old Colleague
				["qg"] = 4081,	-- Lomac Gearstrip
				["coord"] = { 71.9, 51.9, MAP.IRONFORGE },
				["maps"] = { MAP.STONETALON_MOUNTAINS },
				["cost"] = {
					{ "i", 2455, 4 },	-- Minor Mana Potion
					{ "i", 2458, 2 },	-- Elixir of Minor Fortitude
				},
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 17,
			}),
			q(1074, {	-- Ineptitude + Chemicals = Fun (2/2)
				["sourceQuest"] = 1073,	-- Ineptitude + Chemicals = Fun (1/2)
				["qg"] = 4081,	-- Lomac Gearstrip
				["qi"] = 5732,	-- NG-5
				["coord"] = { 71.9, 51.9, MAP.IRONFORGE },
				["maps"] = { MAP.STONETALON_MOUNTAINS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 17,
			}),
			q(1708, {	-- Iron Coral
				["sourceQuest"] = 1704,	-- Klockmort Spannerspan
				["qg"] = 6169,	-- Klockmort Spannerspan
				["coord"] = { 68.2, 46.2, MAP.IRONFORGE },
				["maps"] = { MAP.WETLANDS },
				["classes"] = { WARRIOR },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
				["groups"] = {
					objective(1, {	-- 0/20 Searing Coral
						["providers"] = {
							{ "i", 6848 },	-- Searing Coral
							{ "o", 89634 },	-- Iron Coral
						},
						["coord"] = { 9.0, 69.2, MAP.WETLANDS },
					}),
				},
			}),
			q(707, {	-- Ironband Wants You!
				["qg"] = 1356,	-- Prospector Stormpike
				["coord"] = { 74.64, 11.74, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 30,
			}),
			q(1681, {	-- Ironband's Compound
				["sourceQuest"] = 1680,	-- Tormus Deepforge
				["qg"] = 6031,	-- Tormus Deepforge
				["coord"] = { 49.0, 42.6, MAP.IRONFORGE },
				["maps"] = { MAP.DUN_MOROGH },
				["classes"] = { WARRIOR },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Umbral Ore
						["providers"] = {
							{ "i", 6800 },	-- Umbral Ore
							{ "o", 85562 },	-- Ironband's Strongbox
						},
						["coord"] = { 77.9, 62.2, MAP.DUN_MOROGH },
					}),
				},
			}),
			q(2298, {	-- Kingly Shakedown
				["sourceQuest"] = 2299,	-- To Hulfdan!
				["qg"] = 5165,	-- Hulfdan Blackbeard
				["coord"] = { 51.6, 14.8, MAP.IRONFORGE },
				["classes"] = { ROGUE },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 16,
			}),
			q(1709, {	-- Klockmort's Creation
				["sourceQuest"] = 1708,	-- Iron Coral
				["qg"] = 6169,	-- Klockmort Spannerspan
				["coord"] = { 68.2, 46.2, MAP.IRONFORGE },
				["classes"] = { WARRIOR },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 20,
				["groups"] = {
					i(6974),	-- Fire hardened Gauntlets
				},
			}),
			q(1880,	{	-- Mage-tastic Gizmonitor
				["sourceQuest"] = 1879,	-- Speak with Bink
				["altQuests"] = { 1861 },	-- Mirror Lake
				["qg"] = 5144,	-- Bink <Mage Trainer>
				["coord"] = { 27.3, 8.3, MAP.IRONFORGE },
				["maps"] = { MAP.DUN_MOROGH },
				["classes"] = { MAGE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Mage-tastic Gizmonitor
						["providers"] = {
							{ "i",   7226 },	-- Mage-tastic Gizmonitor
							{ "o", 102984 },	-- Bink's Toolbox
						},
						["coord"] = { 27.7, 36.4, MAP.DUN_MOROGH },
					}),
					i(7507),	-- Arcane Orb
					i(9514),	-- Arcane Staff
				},
			}),
			q(3647, {	-- Membership Card Renewal [A]
				["sourceQuest"] = 3641,	-- Show Your Work
				["qg"] = 7944,	-- Tinkmaster Overspark <Master Gnome Engineer>
				["coord"] = { 69.8, 50.2, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["cost"] = {{ "g", 20000 }},	-- 2g
				["requireSkill"] = ENGINEERING,
				["learnedAt"] = 200,
				["repeatable"] = true,
				["lvl"] = 30,
				["groups"] = {
					i(10790),	-- Gnome Engineer Membership Card
				},
			}),
			q(3448, {	-- Passing the Burden
				["qg"] = 2916,	-- Historian Karnik
				["coord"] = { 77.2, 11.8, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 45,
			}),
			q(6392, {	-- Return to Brock
				["sourceQuest"] = 6388,	-- Gryth Thurden
				["qg"] = 1573,	-- Gryth Thurden
				["qi"] = 16311,	-- Honorary Picks
				["coord"] = { 55.6, 48.0, MAP.IRONFORGE },
				["maps"] = { MAP.LOCH_MODAN },
				["races"] = { DWARF, GNOME },
				["lvl"] = 10,
			}),
			q(3461, {	-- Return to Tymor
				["sourceQuest"] = 3449,	-- Arcane Runes
				["qg"] = 8392,	-- Pilot Xiggs Fuselighter
				["qi"] = 10445,	-- Drawing Kit
				["coord"] = { 77.8, 91.4, MAP.AZSHARA },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 45,
				["groups"] = {
					i(10707),	-- Steelsmith Greaves
					i(10708),	-- Skullspell Orb
				},
			}),
			q(5633, {	-- Returning Home [Ironforge]
				["altQuests"] = {
					5627,	-- Returning Home [Darnassus]
					5628,	-- Returning Home [Elwynn Forest]
					5629,	-- Returning Home [Teldrassil]
					5630,	-- Returning Home [Dun Morogh]
					5631,	-- Returning Home [Stormwind City]
					5632,	-- Returning Home [Stormwind City]
				},
				["qg"] = 5142,	-- Braenna Flintcrag <Priest Trainer>
				["coord"] = { 24.6, 9.2, MAP.IRONFORGE },
				["classes"] = { PRIEST },
				["races"] = { NIGHTELF },
				["lvl"] = 10,
				["groups"] = {
					r(10797, {	-- Starshards (Rank 1)
						["rank"] = 1,
					}),
				},
			}),
			q(683, {	-- Sara Balloo's Plea
				["sourceQuest"] = 637,	-- Sully Balloo's Letter
				["qg"] = 2695,	-- Sara Balloo
				["qi"] = 4514,	-- Sara Balloo's Plea
				["coord"] = { 63.5, 67.2, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 25,
			}),
			q(3641, {	-- Show Your Work
				["sourceQuest"] = 3640,	-- The Pledge of Secrecy
				["altQuests"] = { 3639, 3643 },	-- Show Your Work
				["qg"] = 7944,	-- Tinkmaster Overspark <Master Gnome Engineer>
				["coord"] = { 69.8, 50.2, MAP.IRONFORGE },
				["cost"] = {
					{ "i", 4392, 2 },	-- Advanced Target Dummy
					{ "i", 4407, 1 },	-- Accurate Scope
					{ "i", 10559, 6 },	-- Mithril Tube
				},
				["requireSkill"] = ENGINEERING,
				["learnedAt"] = 200,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					i(10790),	-- Gnome Engineer Membership Card
				},
			}),
			q(2238, {	-- Simple Subterfugin'
				["sourceQuest"] = 2218,	-- Road to Salvation
				["qg"] = 5165,	-- Hulfdan Blackbeard
				["coord"] = { 51.6, 14.8, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["classes"] = { ROGUE },
				["lvl"] = 10,
			}),
			q(2041, {	-- Speak with Shoni
				["qg"] = 6569,	-- Gnoarn
				["coord"] = { 69.4, 50.8, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 15,
			}),
			q(1578, {	-- Supplying the Front
				["qg"] = 6031,	-- Tormus Deepforge
				["coord"] = { 48.5, 43.0, MAP.IRONFORGE },
				["maps"] = { MAP.LOCH_MODAN },
				["cost"] = {
					{ "i", 2845, 6 },	-- Copper Axe
					{ "i", 2851, 6 },	-- Copper Chain Belt
				},
				["requireSkill"] = BLACKSMITHING,
				["learnedAt"] = 30,
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(3609),	-- Plans: Copper Chain Vest (RECIPE!)
				},
			}),
			q(3640, {	-- The Pledge of Secrecy
				["sourceQuests"] = {
					3630,	-- Gnome Engineering
					3630,	-- Gnome Engineering
					3630,	-- Gnome Engineering
				},
				["altQuests"] = { 3638, 3642 },	-- The Pledge of Secrecy
				["qg"] = 7944,	-- Tinkmaster Overspark <Master Gnome Engineer>
				["coord"] = { 69.8, 50.2, MAP.IRONFORGE },
				["requireSkill"] = ENGINEERING,
				["learnedAt"] = 200,
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Overspark's Signed Pledge
						["provider"] = { "i", 11283 },	-- Overspark's Signed Pledge
						["cost"] = {{ "i", 10793, 1 }},	-- Overspark's Pledge of Secrecy
					}),
				},
			}),
			q(1715, {	-- The Slaughtered Lamb
				["altQuests"] = { 1685 },	-- Gakin's Summons (Voidwalker)
				["qg"] = 6120,	-- Lago Blackwrench
				["coord"] = { 47.6, 9.6, MAP.IRONFORGE },
				["races"] = { HUMAN, GNOME },
				["classes"] = { WARLOCK },
				["isBreadcrumb"] = true,
				["lvl"] = 10,
			}),
			q(2997, {	-- The Tome of Divinity [Dun Morogh]
				["qg"] = 1232,	-- Azar Stronghammer <Paladin Trainer>
				["coord"] = { 47.6, 52.0, MAP.DUN_MOROGH },
				["races"] = { DWARF },
				["classes"] = { PALADIN },
				["isBreadcrumb"] = true,
				["lvl"] = 12,
			}),
			q(2999, {	-- The Tome of Divinity [Ironforge]
				["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
				["coord"] = { 23.4, 6.2, MAP.IRONFORGE },
				["races"] = { DWARF },
				["classes"] = { PALADIN },
				["isBreadcrumb"] = true,
				["lvl"] = 12,
			}),
			q(3000, {	-- The Tome of Divinity [Stormwind City]
				["qg"] = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
				["coord"] = { 48.6, 50.0, MAP.STORMWIND_CITY },
				["races"] = { DWARF },
				["classes"] = { PALADIN },
				["isBreadcrumb"] = true,
				["lvl"] = 12,
			}),
			q(1645, {	-- The Tome of Divinity (1a/8)
				["sourceQuests"] = {
					2997,	-- The Tome of Divinity [Dun Morogh]
					2999,	-- The Tome of Divinity [Ironforge]
					3000,	-- The Tome of Divinity [Stormwind City]
				},
				["altQuests"] = { 1646 },	-- The Tome of Divinity (2/8)
				["qg"] = 6179,	-- Tiza Battleforge
				["coord"] = { 27.4, 12.0, MAP.IRONFORGE },
				["races"] = { DWARF },
				["classes"] = { PALADIN },
				["lvl"] = 12,
				["groups"] = {
					i(6916),	-- Tome of Divinity
				},
			}),
			q(1646, {	-- The Tome of Divinity (1b/8)
				["sourceQuest"] = 1645,	-- The Tome of Divinity (1a/8)
				["provider"] = { "i", 6916 },	-- Tome of Divinity
				["races"] = { DWARF },
				["classes"] = { PALADIN },
				["lvl"] = 12,
			}),
			q(1647, {	-- The Tome of Divinity (2/8)
				["sourceQuest"] = 1646,	-- The Tome of Divinity (1b/8)
				["qg"] = 6179,	-- Tiza Battleforge
				["coord"] = { 27.4, 12.0, MAP.IRONFORGE },
				["races"] = { DWARF },
				["classes"] = { PALADIN },
				["lvl"] = 12,
			}),
			q(1648, {	-- The Tome of Divinity (3/8)
				["sourceQuest"] = 1647,	-- The Tome of Divinity (2/8)
				["qg"] = 6175,	-- John Turner
				["coord"] = { 27.6, 70.6, MAP.IRONFORGE },
				["cost"] = {{ "i", 2589, 10 }},	-- Linen Cloth
				["races"] = { DWARF },
				["classes"] = { PALADIN },
				["lvl"] = 12,
			}),
			q(1778, {	-- The Tome of Divinity (4/8)
				["sourceQuest"] = 1648,	-- The Tome of Divinity (3/8)
				["qg"] = 6175,	-- John Turner
				["coord"] = { 27.6, 70.6, MAP.IRONFORGE },
				["races"] = { DWARF },
				["classes"] = { PALADIN },
				["lvl"] = 12,
			}),
			q(1779, {	-- The Tome of Divinity (5/8)
				["sourceQuest"] = 1778,	-- The Tome of Divinity (4/8)
				["qg"] = 6179,	-- Tiza Battleforge
				["qi"] = 6866,	-- Symbol of Life
				["coord"] = { 27.4, 12.0, MAP.IRONFORGE },
				["races"] = { DWARF },
				["classes"] = { PALADIN },
				["lvl"] = 12,
			}),
			q(1783, {	-- The Tome of Divinity (6/8)
				["sourceQuest"] = 1779,	-- The Tome of Divinity (5/8)
				["qg"] = 6178,	-- Muiredon Battleforge
				["coord"] = { 23.6, 8.6, MAP.IRONFORGE },
				["races"] = { DWARF },
				["classes"] = { PALADIN },
				["lvl"] = 12,
				["groups"] = {
					q(1789, {	-- The Symbol of Life
						["qg"] = 6179,	-- Tiza Battleforge
						["coord"] = { 27.4, 12.0, MAP.IRONFORGE },
						["repeatable"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Symbol of Life
								["questID"] = 1783,	-- The Tome of Divinity (5/8)
								["provider"] = { "i", 6866 },	-- Symbol of Life
							}),
						},
					}),
				},
			}),
			q(1784, {	-- The Tome of Divinity (7/8)
				["sourceQuest"] = 1783,	-- The Tome of Divinity (6/8)
				["qg"] = 6177,	-- Narm Faulk
				["coord"] = { 78.2, 58.0, MAP.DUN_MOROGH },
				["races"] = { DWARF },
				["classes"] = { PALADIN },
				["lvl"] = 12,
				["groups"] = {
					objective(1, {	-- 0/1 Dark Iron Script
						["provider"] = { "i", 6847 },	-- Dark Iron Script
						["coord"] = { 78.2, 59.8, MAP.DUN_MOROGH },
						["cr"] = 6123,	-- Dark Iron Spy
					}),
				},
			}),
			q(1785, {	-- The Tome of Divinity (8/8)
				["sourceQuest"] = 1784,	-- The Tome of Divinity (7/8)
				["qg"] = 6178,	-- Muiredon Battleforge
				["coord"] = { 23.6, 8.6, MAP.IRONFORGE },
				["races"] = { DWARF },
				["classes"] = { PALADIN },
				["lvl"] = 12,
				["groups"] = {
					r(7328, {	-- Redemption [Rank 1]
						["rank"] = 1,
					}),
				},
			}),
			q(1680, {	-- Tormus Deepforge
				["sourceQuest"] = 1678,	-- Vejrek
				["qg"] = 6114,	-- Muren Stormpike
				["coord"] = { 70.6, 90.4, MAP.IRONFORGE },
				["classes"] = { WARRIOR },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 10,
			}),
			q(1678, {	-- Vejrek
				["sourceQuests"] = {
					1638,	-- A Warrior's Training
					1684,	-- Elanaria
					1679,	-- Muren Stormpike
				},
				["altQuests"] = {
					1665,	-- Bartleby's Mug
					-- 1678,	-- Vejrek
					1683,	-- Vorlus Vilehoof
				},
				["qg"] = 6114,	-- Muren Stormpike
				["coord"] = { 70.6, 90.4, MAP.IRONFORGE },
				["maps"] = { MAP.DUN_MOROGH },
				["classes"] = { WARRIOR },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 10,
				["groups"] = {
					objective(1, {	-- 0/1 Vejrek's Head
						["provider"] = { "i", 6799 },	-- Vejrek's Head
						["coord"] = { 27.8, 57.4, MAP.DUN_MOROGH },
						["cr"] = 6113,	-- Vejrek
					}),
					r(71),		-- Defensive Stance
					r(7386),	-- Sunder Armor
					r(355),		-- Taunt
				},
			}),
			q(97263, {	-- Your Package Has Arrived
				["provider"] = { "o", 660964 },	-- Misplaced Packages
				["qi"] = 277505,	-- Misplaced Package
				["coord"] = { 72.6, 48.5, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
			}),
		}),
		n(VENDORS, {
			n(7978, {	-- Bimble Longberry <Fruit Vendor>
				["coord"] = { 32.4, 21.2, MAP.IRONFORGE },
				["description"] = "Walks around The Mystic Ward.",
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(8953),	-- Deep Fried Plantains
					i(4539),	-- Goldenbark Apple
					i(4602),	-- Moon Harvest Pumpkin
					i(4536),	-- Shiny Red Apple
					i(4538),	-- Snapvine Watermelon
					i(4537),	-- Tel'Abim Banana
				},
			}),
			n(5152, {	-- Bingus
				["coord"] = { 23.2, 17.6, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2527,	-- Battle Staff
					2532,	-- Morning Star
					2524,	-- Truncheon
					2525,	-- War Hammer
					2533,	-- War Maul
					2535,	-- War Staff
				}},
			}),
			n(5128, {	-- Bombus Finespindle <Leatherworking Supplies>
				["coord"] = { 40.2, 33.4, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"sub", "common_vendor", 5565}},	-- Jillian Tanner <Leatherworking Supplies>
				["groups"] = {
					i(18731, {	-- Pattern: Heavy Leather Ball (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(5120, {	-- Brenwyn Wintersteel
				["coord"] = { 61.8, 88.8, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
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
					2521,	-- Flamberge
					2529,	-- Zweihander
				}},
			}),
			n(5123, {	-- Bretta Goldfury
				["coord"] = { 72.8, 64.8, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					3024,	-- Bkp 2700 Enforcer
					3023,	-- Large Bore Blunderbuss
					2509,	-- Ornate Blunderbuss
					2510,	-- Solid Blunderbuss
				}},
			}),
			n(5106, {	-- Bromiir Ormsen
				["coord"] = { 32.6, 58.2, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2392,	-- Light Mail Armor
					2393,	-- Light Mail Belt
					2395,	-- Light Mail Boots
					2396,	-- Light Mail Bracers
					2397,	-- Light Mail Gloves
					2394,	-- Light Mail Leggings
				}},
				["groups"] = {
					i(1201),	-- Dull Heater Shield
					i(17186),	-- Small Targe
				},
			}),
			n(5125, {	-- Dolkin Craghelm
				["coord"] = { 54.8, 88.6, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2419,	-- Augmented Chain Belt
					2420,	-- Augmented Chain Boots
					2421,	-- Augmented Chain Bracers
					2422,	-- Augmented Chain Gloves
					3891,	-- Augmented Chain Helm
					2418,	-- Augmented Chain Leggings
					2417,	-- Augmented Chain Vest
					2448,	-- Heavy Pavise
					17189,	-- Metal Buckler
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
			n(5102, {	-- Dolman Steelfury
				["coord"] = { 36.6, 66.6, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2492,	-- Cudgel
					2493,	-- Wooden Mallet
				}},
				["groups"] = {
					i(1194),	-- Bastard Sword
					i(2479),	-- Broad Axe
					i(2130),	-- Club
					i(2139),	-- Dirk
					i(2488),	-- Gladius
					i(2134),	-- Hand Axe
					i(2491),	-- Large Axe
					i(2480),	-- Large Club
					i(2132),	-- Short Staff
					i(2131),	-- Shortsword
					i(2494),	-- Stiletto
					i(2490),	-- Tomahawk
					i(2489),	-- Two-Handed Sword
					i(2495),	-- Walking Stick
				},
			}),
			n(5160, {	-- Emrul Riknussun <Cooking Supplier>
				["coord"] = { 60.6, 38.2, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
					i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
				},
			}),
			n(5175, {	-- Gearcutter Cogspinner <Engineering Supplies>
				["coord"] = { 67.8, 43.0, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(18649, {	-- Schematic: Blue Firework (RECIPE!)
						["isLimited"] = true,
					}),
					i(7560, {	-- Schematic: Gnomish Universal Remote (RECIPE!)
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
			n(4256, {	-- Golnir Bouldertoe <Mining Supplies>
				["coord"] = { 51.5, 26.3, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(2901),	-- Mining Pick
				},
			}),
			n(258306, {	-- Granny Finespindle
				["coord"] = { 39.3, 33.7, MAP.IRONFORGE },
				["timeline"] = { TIMELINE.ADDED_1_60_1 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(252761),	-- Pattern: Black Whelp Slippers (RECIPE!)
					i(252762),	-- Pattern: Dark Leather Boots (RECIPE!)
					i(252832),	-- Pattern: Mender's Leather Belt (RECIPE!)
					i(252764),	-- Pattern: Moonglow Boots (RECIPE!)
					i(252763),	-- Pattern: Murloc Scale Shoes (RECIPE!)
					i(252826),	-- Pattern: Prowler's Leather Belt (RECIPE!)
					i(252830),	-- Pattern: Skirmisher's Leather Belt (RECIPE!)
					i(252831),	-- Pattern: Skycaller's Leather Belt (RECIPE!)
					i(252827),	-- Pattern: Skulker's Leather Belt (RECIPE!)
					i(252828),	-- Pattern: Stalker's Leather Belt (RECIPE!)
					i(252829),	-- Pattern: Warden's Leather Belt (RECIPE!)
				},
			}),
			n(5103, {	-- Grenil Steelfury
				["coord"] = { 36.4, 66.6, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2025,	-- Bearded Axe
					1198,	-- Claymore
					2029,	-- Cleaver
					851,	-- Cutlass
					2024,	-- Espadon
					1197,	-- Giant Mace
					2030,	-- Gnarled Staff
					2028,	-- Hammer
					853,	-- Hatchet
					2207,	-- Jambiya
					852,	-- Mace
					2208,	-- Poniard
					854,	-- Quarter Staff
					2026,	-- Rock Hammer
					2027,	-- Scimitar
					1196,	-- Tabar
				}},
			}),
			n(5112, {	-- Gwenna Firebrew <Barmaid>
				["coord"] = { 18.6, 51.9, MAP.IRONFORGE },	-- The Stonefire Tavern
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(1179),	-- Ice Cold Milk
					i(1205),	-- Melon Juice
					i(8766),	-- Morning Glory Dew
					i(159),		-- Refreshing Spring Water
					i(1708),	-- Sweet Nectar
					i(2723),	-- Bottle of Dalaran Noir
					i(2594),	-- Flagon of Dwarven Honeymead/Mead
					i(2593),	-- Flask of Stormwind Tawny
					i(2595),	-- Jug of Badlands Bourbon
					i(2596),	-- Skin of Dwarven Stout
				},
			}),
			n(5138, {	-- Gwina Stonebranch <Herbalism Supplier>
				["coord"] = { 55.08, 59.51, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{ "sub", "common_vendor", 4216 }},	-- Chardryn <Herbalism Supplies>
			}),
			n(5133, {	-- Harick Boulderdrum
				["coord"] = { 22.8, 16.6, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
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
			n(5119, {	-- Hegnar Swiftaxe
				["coord"] = { 61.8, 88.6, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
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
					1196,	-- Tabar
				}},
			}),
			n(5170, {	-- Hjoldir Stoneblade
				["coord"] = { 45.8, 7.0, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2520,	-- Broadsword
					2528,	-- Falchion
					2521,	-- Flamberge
					2526,	-- Main Gauche
					2534,	-- Rondel
					2529,	-- Zweihander
				}},
			}),
			n(5155, {	-- Ingrys Stonebrow
				["coord"] = { 39.2, 5.0, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2435,	-- Embroidered Armor
					3587,	-- Embroidered Belt
					2438,	-- Embroidered Boots
					3588,	-- Embroidered Bracers
					2440,	-- Embroidered Gloves
					3892,	-- Embroidered Hat
					2437,	-- Embroidered Pants
					3593,	-- Russet Belt
					2432,	-- Russet Boots
					3594,	-- Russet Bracers
					2434,	-- Russet Gloves
					3889,	-- Russet Hat
					2431,	-- Russet Pants
					2429,	-- Russet Vest
					3597,	-- Thick Cloth Belt
					3598,	-- Thick Cloth Bracers
					203,	-- Thick Cloth Gloves
					201,	-- Thick Cloth Pants
					202,	-- Thick Cloth Shoes
					200,	-- Thick Cloth Vest
				}},
			}),
			n(5121, {	-- Kelomir Ironhand
				["coord"] = { 61.4, 88.4, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2527,	-- Battle Staff
					925,	-- Flail
					1197,	-- Giant Mace
					2030,	-- Gnarled Staff
					2028,	-- Hammer
					928,	-- Long Staff
					852,	-- Mace
					924,	-- Maul
					854,	-- Quarter Staff
					2026,	-- Rock Hammer
					2525,	-- War Hammer
					2533,	-- War Maul
					2535,	-- War Staff
				}},
				["groups"] = {
					i(2532),	-- Morning Star
					i(2524),	-- Truncheon
				},
			}),
			n(5129, {	-- Lissyphus Finespindle
				["coord"] = { 54.6, 88.2, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					2435,	-- Embroidered Armor
					3587,	-- Embroidered Belt
					2438,	-- Embroidered Boots
					3588,	-- Embroidered Bracers
					2440,	-- Embroidered Gloves
					3892,	-- Embroidered Hat
					2437,	-- Embroidered Pants
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
			n(5049, {	-- Lyesa Steelbrow <Tabard Vendor>
				["coord"] = { 36.4, 84.4, MAP.IRONFORGE },
				["sym"] = { {"sub", "common_vendor", 5193} },	-- Rebecca Laughlin <Tabard Designer>
				["races"] = ALLIANCE_ONLY,
			}),
			n(5156, {	-- Maeva Snowbraid
				["coord"] = { 38.8, 5.6, MAP.IRONFORGE },
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
			n(5107, {	-- Mangorn Flinthammer
				["coord"] = { 32.0, 58.8, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					847,	-- Chainmail Armor
					1845,	-- Chainmail Belt
					849,	-- Chainmail Boots
					1846,	-- Chainmail Bracers
					850,	-- Chainmail Gloves
					848,	-- Chainmail Pants
				}},
				["groups"] = {
					i(17187),	-- Banded Buckler
					i(1202),	-- Wall Shield
				},
			}),
			n(5109, {	-- Myra Tyrngaarde <Bread Vendor>
				["coord"] = { 29.8, 67.5, MAP.IRONFORGE },
				["description"] = "Walks around The Commons.",
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(4541),	-- Freshly Baked Bread
					i(4542),	-- Moist Cornbread
					i(4544),	-- Mulgore Spice Bread
					i(4601),	-- Soft Banana Bread
					i(4540),	-- Tough Hunk of Bread
				},
			}),
			n(5126, {	-- Olthran Craghelm
				["coord"] = { 55.0, 88.4, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
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
					2445,	-- Large Metal Shield
					17189,	-- Metal Buckler
					17190,	-- Ornate Buckler
					8094,	-- Platemail Armor
					8088,	-- Platemail Belt
					8089,	-- Platemail Boots
					8090,	-- Platemail Bracers
					8091,	-- Platemail Gloves
					8092,	-- Platemail Helm
					8093,	-- Platemail Leggings
					17192,	-- Reinforced Targe
					17188,	-- Ringed Buckler
				}},
			}),
			n(8681, {	-- Outfitter Eric <Speciality Tailoring Supplies>
				["coord"] = { 43.0, 29.2, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(10314, {	-- Pattern: Lavender Mageweave Shirt (RECIPE!)
						["isLimited"] = true,
					}),
					i(10317, {	-- Pattern: Pink Mageweave Shirt (RECIPE!)
						["isLimited"] = true,
					}),
					i(10326, {	-- Pattern: Tuxedo Jacket (RECIPE!)
						["isLimited"] = true,
					}),
					i(10323, {	-- Pattern: Tuxedo Pants (RECIPE!)
						["isLimited"] = true,
					}),
					i(10321, {	-- Pattern: Tuxedo Shirt (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(5108, {	-- Raena Flinthammer <Light Armor Merchant>
				["coord"] = { 32.6, 58.0, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					16059,	-- Common Brown Shirt
					3428,	-- Common Gray Shirt
					16060,	-- Common White Shirt
					837,	-- Heavy Weave Armor
					3589,	-- Heavy Weave Belt
					3590,	-- Heavy Weave Bracers
					839,	-- Heavy Weave Gloves
					838,	-- Heavy Weave Pants
					840,	-- Heavy Weave Shoes
					1843,	-- Tanned Leather Belt
					843,	-- Tanned Leather Boots
					1844,	-- Tanned Leather Bracers
					844,	-- Tanned Leather Gloves
					846,	-- Tanned Leather Jerkin
					845,	-- Tanned Leather Pants
				}},
			}),
			n(5122, {	-- Skolmin Goldfury <Bow Merchant>
				["coord"] = { 71.6, 66.2, MAP.IRONFORGE },
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
			n(5124, {	-- Sognar Cliffbeard <Meat Vendor>
				["coord"] = { 62.1, 72.0, MAP.IRONFORGE },
				["description"] = "Walks around The Military Ward.",
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(4599),	-- Cured Ham Steak
					i(2287),	-- Haunch of Meat
					i(3770),	-- Mutton Chop
					i(8952),	-- Roasted Quail
					i(117),		-- Tough Jerky
					i(3771),	-- Wild Hog Shank
				},
			}),
			n(5178, {	-- Soolie Berryfizz <Alchemy Supplies>
				["coord"] = { 66.6, 54.6, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(13478, {	-- Recipe: Elixir of Greater Defense (RECIPE!)
						["isLimited"] = true,
					}),
					i(5642, {	-- Recipe: Free Action Potion (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(9099, {	-- Sraaz <Pie Vendor>
				["coord"] = { 46.6, 47.2, MAP.IRONFORGE },
				["description"] = "Walks around The Great Forge.",
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(8950),	-- Homemade Cherry Pie
				},
			}),
			n(5162, {	-- Tansy Puddlefizz <Fishing Supplier>
				["coord"] = { 47.8, 6.6, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
					i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
					i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
					i(6326),	-- Recipe: Slitherskin Mackerel (RECIPE!)
				},
			}),
			n(7976, {	-- Thalgus Thunderfist
				["coord"] = { 61.8, 90.0, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {{"select","itemID",
					15905,	-- Brass Knuckles
					15904,	-- Deadly Fist Blades
					15808,	-- Fine Light Crossbow
					15809,	-- Heavy Crossbow
					2511,	-- Hunter's Boomstick
					15807,	-- Light Crossbow
					2509,	-- Ornate Blunderbuss
				}},
				["groups"] = {
					i(15904),	-- Deadly Fist Blades
					i(15906),	-- Left-Handed Brass Knuckles
					i(15909),	-- Left-Handed Blades
					i(15907),	-- Left-Handed Claw
					i(15903),	-- Slicing Claw
				},
			}),
			n(5158, {	-- Tilli Thistlefuzz <Enchanting Supplies>
				["coord"] = { 60.8, 44.2, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["groups"] = appendGroups(VANILLA_ENCHANTING_COMMON_RECIPES, {
					i(6349, {	-- Formula: Enchant 2H Weapon - Lesser Intellect (RECIPE!)
						["isLimited"] = true,
					}),
				}),
			}),
			n(8117, {	-- Wizbang Booms
				["coord"] = { 31.8, 63.4, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["description"] = "This NPC is only available on July 4th.",
				["sym"] = {{"select","itemID",
					8626,	-- Blue Sparkler
					8625,	-- White Sparkler
					8624,	-- Red Sparkler
				}},
			}),
		}),
	},
});
