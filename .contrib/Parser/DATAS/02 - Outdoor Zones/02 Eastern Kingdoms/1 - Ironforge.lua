---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(IRONFORGE, {
		["lore"] =
			-- #if AFTER CATA
			"Ironforge is the capital city of the dwarves, proud members of the Alliance. It is the ancestral home of the Bronzebeard dwarves. The Council of Three Hammers rules the kingdom of Khaz Modan from the throne room within the city.",
			-- #else
			"Ironforge is the capital city of the dwarves, proud members of the Alliance. It is the ancestral home of the Bronzebeard dwarves. King Bronzebeard rules the kingdom of Khaz Modan from the throne room within the city. The Great Forge area gave the city its name.\n\nCarved into the stone heart of Khaz Modan, the mighty city of Ironforge is a testament to the dwarves' strength and resilience. The city is perhaps the most intricate of the Alliance cities, boasting many small passageways, shops built into the rock walls, and cavernous rooms. The feel of the city is a bustling, rowdy, and somewhat industrial one. However, it is predominantly safe-feeling and cozy; fires roar in the hearths of the inns and shops, and much dwarven laughing and frivolity is to be heard. Also, unlike Stormwind and Darnassus, the city is actually a massive cavern carved into the earth by the dwarves; the ceiling and floor are both hard stone.\n\nMainly because of the Deeprun Tram, linking Ironforge and Stormwind City, and the district of Tinker Town, Ironforge is one of the most racially diverse cities in the Alliance world. Dwarves predominate, of course, but you will find plenty of gnomes even outside of Tinker Town, and probably as many humans. You will find almost no night elves however, as they probably prefer more natural and open spaced environments.",
			-- #endif
		["icon"] = 255138,
		-- #if AFTER CATA
		["maps"] = { 1361 },	-- Old Ironforge
		-- #endif
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				applyclassicphase(CATA_PHASE_ONE, ach(5847, {	-- Fish or Cut Bait: Ironforge
					["timeline"] = { ADDED_4_2_0 },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						crit(17749, {	-- Cold Water Fishing
							["_quests"] = { 29342 },
						}),
						crit(17750, {	-- One fer the Ages
							["_quests"] = { 29343 },
						}),
						crit(17751, {	-- Fish fer Squirky
							["_quests"] = { 29344 },
						}),
						crit(17752, {	-- Live Bait
							["_quests"] = { 29347 },
						}),
						crit(17753, {	-- The Gnomish Bait-o-Matic
							["_quests"] = { 29350 },
						}),
					},
				})),
				applyclassicphase(CATA_PHASE_ONE, ach(5841, {	-- Let's Do Lunch: Ironforge
					["timeline"] = { ADDED_4_2_0 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						crit(17723, {	-- A Round of the Guards
							["_quests"] = { 29351 },
						}),
						crit(17724, {	-- A Fowl Shortage
							["_quests"] = { 29352 },
						}),
						crit(17725, {	-- Keepin' the Haggis Flowin'
							["_quests"] = { 29353 },
						}),
						crit(17726, {	-- Can't Get Enough Spice Bread
							["_quests"] = { 29355 },
						}),
						crit(17727, {	-- I Need to Cask a Favor
							["_quests"] = { 29356 },
						}),
					},
				})),
				applyclassicphase(TBC_PHASE_ONE, ach(1837, {	-- Old Ironjaw
					["provider"] = { "i", 34484 },	-- Old Ironjaw
					["timeline"] = { ADDED_2_0_1 },
					["requireSkill"] = FISHING,
				})),
			}),
			battlepets({
				pet(404),	-- Long-tailed Mole (PET!)
			}),
			n(FACTIONS, {
				faction(FACTION_GNOMEREGAN, {	-- Gnomeregan Exiles
					-- #if AFTER CATA
					["provider"] = { "i", 45578 },	-- Gnomeregan Tabard
					-- #else
					["icon"] = 236446,
					-- #endif
					["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
					["races"] = ALLIANCE_ONLY,
				}),
				faction(FACTION_IRONFORGE, {	-- Ironforge
					-- #if AFTER CATA
					["provider"] = { "i", 45577 },	-- Ironforge Tabard
					-- #else
					["icon"] = 236444,
					-- #endif
					["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(6, {	-- Ironforge, Dun Morogh
					["cr"] = 1573,	-- Gryth Thurden <Gryphon Master>
					["coord"] = { 55.6, 48.0, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			-- #if NOT ANYCLASSIC
			-- CRIEVE NOTE: I'm going to solve this a different way eventually.
			o(207320, {	-- Hero's Call Board
				["coords"] = {
					{ 26.5, 70.2, IRONFORGE },
					{ 62.4, 30.5, IRONFORGE },
				},
				["timeline"] = { ADDED_4_0_1 },
				["sym"] = HEROS_CALL_BOARD_SYMLINK,
				["races"] = ALLIANCE_ONLY,
				["skipFill"] = true,
			}),
			-- #endif
			n(PROFESSIONS, {
				prof(BLACKSMITHING, {
					n(4258, {	-- Bengus Deepforge <Artisan Blacksmith>
						["coord"] = { 52.6, 40.8, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						-- #if BEFORE 2.1.0
						["groups"] = APPRENTICE_JOURNEYMAN_EXPERT_BLACKSMITHING,
						-- #endif
					}),
					n(5164, {	-- Grumnus Steelshaper <Armor Crafter>
						["coord"] = { 50.2, 42.6, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["groups"] = CLASSIC_ARMORSMITHING,
					}),
					n(11146, {	-- Ironus Coldsteel <Special Weapon Crafter>
						["coord"] = { 50.8, 43.0, IRONFORGE },
						["races"] = ALLIANCE_ONLY,
						["groups"] = CLASSIC_WEAPONSMITHING,
					}),
				}),
				prof(FISHING, {
					i(34864, {	-- Baby Crocolisk
						["timeline"] = { ADDED_2_4_0 },
					}),
					i(122204, {	-- Music Roll: Cold Mountain
						["timeline"] = { ADDED_6_1_0 },
						["races"] = ALLIANCE_ONLY,
					}),
					i(34484, {	-- Old Ironjaw
						["description"] =
							-- #if BEFORE WRATH
							"Keep this in your bank until Achievements are added, otherwise you'll need to obtain it again. Fair warning!",
							-- #elseif BEFORE LEGION
							"Keep this in your bank until Transmog is added, otherwise you'll need to obtain it again. Fair warning!",
							-- #elseif AFTER TWW
							"Keep this in your bank until the appearance can be learned again, otherwise you'll need to obtain it again. Fair warning!",
							-- #else
							nil,
							-- #endif
						["timeline"] = { ADDED_2_3_0 },
						-- #if AFTER TWW
						["collectible"] = false,  -- remove when Blizzard fix fish collection
						-- #endif
					}),
				}),
			}),
			n(QUESTS, {
				q(38396, {	-- A Curious Oddity
					["sourceQuest"] = 38394,	-- Completionism
					["qg"] = 6294,	-- Krom Stoutarm
					["coord"] = { 74.6, 9.8, IRONFORGE },
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_9_0_1,	-- seems inadvertent, maybe blizzard will fix eventually
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(122339, {	-- Ancient Heirloom Scabbard
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
				q(7809, {	-- A Donation of Mageweave
					["qg"] = 14724,	-- Bubulo Acerbus
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7804, {	-- A Donation of Mageweave
					["qg"] = 14723,	-- Mistina Steelshield
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7811, {	-- A Donation of Runecloth
					["qg"] = 14724,	-- Bubulo Acerbus
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(7805, {	-- A Donation of Runecloth
					["qg"] = 14723,	-- Mistina Steelshield
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(7808, {	-- A Donation of Silk
					["qg"] = 14724,	-- Bubulo Acerbus
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				}),
				q(7803, {	-- A Donation of Silk
					["qg"] = 14723,	-- Mistina Steelshield
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				}),
				q(7802, {	-- A Donation of Wool
					["qg"] = 14723,	-- Mistina Steelshield
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(7807, {	-- A Donation of Wool
					["qg"] = 14724,	-- Bubulo Acerbus
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29352, {	-- A Fowl Shortage
					["qg"] = 5159,	-- Daryl Riknussun
					["coord"] = { 60.1, 36.4, IRONFORGE },
					["timeline"] = { ADDED_4_0_1 },
					["maps"] = { DUN_MOROGH },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/6 Dun Morogh Chicken
							["providers"] = {
								{ "i", 69982 },	-- Dun Morogh Chicken
								{ "n", 53568 },	-- Dun Morogh Chicken
							},
							["coord"] = { 59.8, 38.2, DUN_MOROGH },
						}),
						COOKING_AWARD,
					},
				})),
				q(686, {	-- A King's Tribute (1/3)
					["sourceQuest"] = 683,	-- Sara Balloo's Plea
					["qg"] = 2784,	-- King Magni Bronzebeard
					["coord"] = { 39.4, 55.8, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(689, {	-- A King's Tribute (2/3)
					["sourceQuest"] = 686,	-- A King's Tribute (1/3)
					["qg"] = 2790,	-- Grand Mason Marblesten
					["coord"] = { 38.6, 87, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/5 Alterac Granite
							["providers"] = {
								{ "i", 4521 },	-- Alterac Granite
								{ "o", 2714 },	-- Alterac Granite
							},
							["coord"] = { 43.2, 27.9, HILLSBRAD_FOOTHILLS },
						}),
					},
				}),
				q(700, {	-- A King's Tribute (3/3)
					["sourceQuest"] = 689,	-- A King's Tribute (2/3)
					["qg"] = 2790,	-- Grand Mason Marblesten
					["coord"] = { 38.6, 87, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(4535, {	-- Ironforge Memorial Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5641, {	-- A Lack of Fear
					["altQuests"] = {
						5647,	-- A Lack of Fear [Darnassus]
						5645,	-- A Lack of Fear [Stormwind City]
					},
					["qg"] = 11406,	-- High Priest Rohan <Priest Trainer>
					["coord"] = { 25, 8.2, IRONFORGE },
					["timeline"] = { REMOVED_2_3_0 },
					["classes"] = { PRIEST },
					["races"] = { DWARF },
					["lvl"] = 20,
					-- #if BEFORE 2.3.0
					["groups"] = {
						recipe(6346),	-- Fear Ward
					},
					-- #endif
				}),
				q(4512, {	-- A Little Slime Goes a Long Way (1/2)
					["qg"] = 9616,	-- Laris Geardawdle
					["coord"] = { 75.4, 23.4, IRONFORGE },
					["maps"] = { FELWOOD },
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
						-- #if ANYCLASSIC
						i(11912, {	-- Package of Empty Ooze Containers
							i(11914),	-- Empty Cursed Ooze Jar
							i(11948),	-- Empty Tainted Ooze Jar
						}),
						-- #endif
					},
				}),
				q(4513, {	-- A Little Slime Goes a Long Way (2/2)
					["sourceQuest"] = 4512,	-- A Little Slime Goes a Long Way (1/2)
					["qg"] = 9616,	-- Laris Geardawdle
					["coord"] = { 75.4, 23.4, IRONFORGE },
					["maps"] = { UNGORO_CRATER },
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
						-- #if ANYCLASSIC
						i(11955, {	-- Bag of Empty Ooze Containers
							i(11953),	-- Empty Pure Sample Jar
						}),
						-- #endif
						i(12050),	-- Hazecover Boots
						i(12051),	-- Brazen Gauntlets
					},
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29351, {	-- A Round for the Guards
					["qg"] = 5159,	-- Daryl Riknussun
					["coord"] = { 60.1, 36.4, IRONFORGE },
					["timeline"] = { ADDED_4_0_1 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/6 Ironforge Guards Fed
							["providers"] = {
								{ "i", 69981 },	-- Ironforge Rations
								{ "n", 5595 },	-- Ironforge Guard
							},
						}),
						COOKING_AWARD,
					},
				})),
				q(7806, {	-- Additional Runecloth [Ironforge]
					["sourceQuest"] = 7805,	-- A Donation of Runecloth
					["qg"] = 14723,	-- Mistina Steelshield
					["coord"] = { 43.2, 31.9, IRONFORGE },
					["maxReputation"] = { FACTION_IRONFORGE, EXALTED },	-- Ironforge, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(7812, {	-- Additional Runecloth [Gnomeregan Exiles]
					["sourceQuest"] = 7811,	-- A Donation of Runecloth
					["qg"] = 14724,	-- Bubulo Acerbus
					["coord"] = { 74.1, 48.1, IRONFORGE },
					["maxReputation"] = { FACTION_GNOMEREGAN, EXALTED },	-- Gnomeregan Exiles, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(3450, {	-- An Easy Pickup
					["sourceQuest"] = 3448,	-- Passing the Burden
					["qg"] = 8507,	-- Tymor
					["coord"] = { 31.2, 4.6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
				}),
				-- #if NOT ANYCLASSIC
				q(5677, {	-- Arcane Feedback [Ironforge]
					["altQuests"] = {
						5676,	-- Arcane Feedback [Stormwind City]
						5678,	-- Arcane Feedback [Darnassus]
					},
					["qg"] = 11406,	-- High Priest Rohan <Priest Trainer>
					["coord"] = { 26.4, 7.6, IRONFORGE },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = { HUMAN },
					["classes"] = { PRIEST },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13896,	-- Feedback (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(3449, {	-- Arcane Runes
					["sourceQuests"] = {
						3448,	-- Passing the Burden
						3451,	-- Signal for Pickup (1/2)
					},
					["qg"] = 8507,	-- Tymor
					["coord"] = { 31.2, 4.6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { AZSHARA },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						objective(1, {	-- 0/1 Rubbing: Rune of Beth'Amara
							["providers"] = {
								{ "i",  10563 },	-- Rubbing: Rune of Beth'Amara
								{ "o", 149481 },	-- Rune of Beth'Amara
								{ "i",  10445 },	-- Drawing Kit
							},
							["coord"] = { 36, 53, AZSHARA },
						}),
						objective(2, {	-- 0/1 Rubbing: Rune of Jin'yael
							["providers"] = {
								{ "i",  10564 },	-- Rubbing: Rune of Jin'yael
								{ "o", 149480 },	-- Rune of Jin'yael
								{ "i",  10445 },	-- Drawing Kit
							},
							["coord"] = { 39, 50, AZSHARA },
						}),
						objective(3, {	-- 0/1 Rubbing: Rune of Markri
							["providers"] = {
								{ "i",  10565 },	-- Rubbing: Rune of Markri
								{ "o", 149482 },	-- Rune of Markri
								{ "i",  10445 },	-- Drawing Kit
							},
							["coord"] = { 39, 55, AZSHARA },
						}),
						objective(4, {	-- 0/1 Rubbing: Rune of Sael'hai
							["providers"] = {
								{ "i",  10566 },	-- Rubbing: Rune of Sael'hai
								{ "o", 149483 },	-- Rune of Sael'hai
								{ "i",  10445 },	-- Drawing Kit
							},
							["coord"] = { 42, 64, AZSHARA },
						}),
						q(3451, {	-- Signal for Pickup (1/2)
							["sourceQuest"] = 3450,	-- An Easy Pickup
							["qg"] = 8517,	-- Xiggs Fuselighter
							["coord"] = { 71, 94.2, IRONFORGE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 45,
							["groups"] = {
								objective(5, {	-- 0/1 Standard Issue Flare Gun
									["questID"] = 3449,	-- Arcane Runes
									["provider"] = { "i", 10444 },	-- Standard Issue Flare Gun
									["description"] = "DO NOT LEAVE IRONFORGE WITHOUT THIS.\n - Crieve",
									["coord"] = { 77, 91, AZSHARA },
								}),
							},
						}),
						q(3483, {	-- Signal for Pickup (2/2)
							["sourceQuest"] = 3451,	-- Signal for Pickup (1/2)
							["qg"] = 8517,	-- Xiggs Fuselighter
							["coord"] = { 71, 94.2, IRONFORGE },
							["timeline"] = { REMOVED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["repeatable"] = true,
							["lvl"] = 45,
						}),
					},
				}),
				q(7342, {	-- Arrows Are For Sissies
					["qg"] = 14183,	-- Artilleryman Sheldonore
					["coord"] = { 19.6, 52.2, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.1
					["cost"] = { { "i", 15997, 200 } },	-- Thorium Shells
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 52,
					-- #if BEFORE 4.0.1
					["groups"] = {
						i(18042),	-- Thorium Headed Arrow
					},
					-- #endif
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(BURLY_BRAWL, {
					["questID"] = 75300,	-- Burly Brawl HQT	-- TODO: Confirm if this is the same HQT.
					["qgs"] = {
						5570,	-- Bruuk Barleybeard <Bartender>
						209004,	-- Bruart
					},
					["coord"] = { 72.2, 76.6, IRONFORGE },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PALADIN, WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(204716, {	-- Rune of Frenzied Assault
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(425447),	-- Engrave Pants - Frenzied Assault
							},
						}),
						i(205683, {	-- Rune of Rebuke
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(425621),	-- Engrave Pants - Rebuke
							},
						}),
					},
				})),
				-- #endif
				applyclassicphase(CATA_PHASE_ONE, q(29355, {	-- Can't Get Enough Spice Bread
					["qg"] = 5159,	-- Daryl Riknussun
					["coord"] = { 60.1, 36.4, IRONFORGE },
					["timeline"] = { ADDED_4_0_1 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/10 Spice Bread
							["provider"] = { "i", 30816 },	-- Spice Bread
						}),
						COOKING_AWARD,
					},
				})),
				applyclassicphase(CATA_PHASE_ONE, q(29342, {	-- Cold Water Fishing
					["qg"] = 5161,	-- Grimnur Stonebrand
					["coord"] = { 48.4, 8.2, IRONFORGE },
					["timeline"] = { ADDED_4_0_1 },
					["maps"] = { DUN_MOROGH },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/5 Arctic Char
							["provider"] = { "i", 69931 },	-- Arctic Char
							["coord"] = { 84.6, 50.9, DUN_MOROGH },
						}),
						i(67414),	-- Bag of Shiny Things
					},
				})),
				q(38394, {	-- Completionism
					["sourceQuest"] = 38345,	-- Numismatics
					["qg"] = 6294,	-- Krom Stoutarm
					["coord"] = { 74.6, 9.8, IRONFORGE },
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_9_0_1,	-- seems inadvertent, maybe blizzard will fix eventually
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(122340, {	-- Timeworn Heirloom Armor Casing
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				q(5675, {	-- Elune's Grace [Ironforge]
					["altQuests"] = {
						5672,	-- Elune's Grace [Darnassus]
						5673,	-- Elune's Grace [Stormwind City]
					},
					["qg"] = 11406,	-- High Priest Rohan <Priest Trainer>
					["coord"] = { 25, 8.2, IRONFORGE },
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { NIGHTELF },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 2651,	-- Elune's Grace (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				-- #if NOT ANYCLASSIC
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
					["coord"] = { 26.4, 7.6, IRONFORGE },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = { HUMAN, DWARF },
					["classes"] = { PRIEST },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13908,	-- Desperate Prayer (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(2039, {	-- Find Bingles
					["qg"] = 6569,	-- Gnoarn
					["coord"] = { 69.4, 50.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(12, 12, 5),
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29344, {	-- Fish fer Squrky
					["qg"] = 5161,	-- Grimnur Stonebrand
					["coord"] = { 48.4, 8.2, IRONFORGE },
					["timeline"] = { ADDED_4_0_1 },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/3 Feed Squirky
							["providers"] = {
								{ "n", 53544 },	-- Squirky
								{ "i", 69933 },	-- Blind Minnow
							},
							["coord"] = { 47.1, 14.5, IRONFORGE },
						}),
						i(67414),	-- Bag of Shiny Things
					},
				})),
				q(1618, {	-- Gearing Redridge
					["qg"] = 6031,	-- Tormus Deepforge
					["coord"] = { 48.6, 43, IRONFORGE },
					["maps"] = { REDRIDGE_MOUNTAINS },
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
				q(1682, {	-- Grey Iron Weapons
					["sourceQuest"] = 1681,	-- Ironband's Compound
					["qg"] = 6031,	-- Tormus Deepforge
					["coord"] = { 49, 42.6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(6978, {	-- Umbral Axe
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6984, {	-- Umbral Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6982, {	-- Umbral Mace
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6981, {	-- Umbral Dagger
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(6388, {	-- Gryth Thurden
					["sourceQuest"] = 6391,	-- Ride to Ironforge
					["providers"] = {
						{ "n", 4256 },	-- Golnir Bouldertoe
						{ "i", 16311 },	-- Honorary Picks
					},
					["coord"] = { 51, 26, IRONFORGE },
					["races"] = { DARKIRON, DWARF, GNOME },
					-- #if BEFORE 4.0.3
					["lvl"] = 10,
					-- #endif
				}),
				q(6609, {	-- I Got Nothin' Left!
					["description"] = "Requires 225 Fishing to start this quest.",
					["qg"] = 5161,	-- Grimnur Stonebrand <Fishing Trainer>
					["coord"] = { 48.2, 6.6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				q(6612, {	-- I Know A Guy...
					["qg"] = 5159,	-- Daryl Riknussun
					["coord"] = { 60.1, 36.5, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 35,
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29356, {	-- I Need to Cask a Favor
					["qg"] = 5159,	-- Daryl Riknussun
					["coord"] = { 60.1, 36.4, IRONFORGE },
					["timeline"] = { ADDED_4_0_1 },
					["maps"] = { DUN_MOROGH },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Deliver Cask of Drugan's IPA
							["provider"] = { "o", 208872 },	-- Cask of Drugan's IPA
							["coord"] = { 53.9, 50.6, DUN_MOROGH },
						}),
						COOKING_AWARD,
					},
				})),
				q(1073, {	-- Ineptitude + Chemicals = Fun (1/2)
					["sourceQuest"] = 1072,	-- An Old Colleague
					["qg"] = 4081,	-- Lomac Gearstrip
					["coord"] = { 71.9, 51.9, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STONETALON_MOUNTAINS },
					["cost"] = {
						{ "i", 2455, 4 },	-- Minor Mana Potion
						{ "i", 2458, 2 },	-- Elixir of Minor Fortitude
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1074, {	-- Ineptitude + Chemicals = Fun (2/2)
					["sourceQuest"] = 1073,	-- Ineptitude + Chemicals = Fun (1/2)
					["providers"] = {
						{ "n", 4081 },	-- Lomac Gearstrip
						{ "i", 5732 },	-- NG-5
					},
					["coord"] = { 71.9, 51.9, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(1708, {	-- Iron Coral
					["sourceQuest"] = 1704,	-- Klockmort Spannerspan
					["qg"] = 6169,	-- Klockmort Spannerspan
					["coord"] = { 68.2, 46.2, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WETLANDS },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/20 Searing Coral
							["providers"] = {
								{ "i", 6848 },	-- Searing Coral
								{ "o", 89634 },	-- Iron Coral
							},
							["coord"] = { 9.0, 69.2, WETLANDS },
						}),
					},
				}),
				q(707, {	-- Ironband Wants You!
					["qg"] = 1356,	-- Prospector Stormpike
					["coord"] = { 74.64, 11.74, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(1681, {	-- Ironband's Compound
					["sourceQuest"] = 1680,	-- Tormus Deepforge
					["qg"] = 6031,	-- Tormus Deepforge
					["coord"] = { 49, 42.6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUN_MOROGH },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Umbral Ore
							["providers"] = {
								{ "i", 6800 },	-- Umbral Ore
								{ "o", 85562 },	-- Ironband's Strongbox
							},
							["coord"] = { 77.9, 62.2, DUN_MOROGH },
						}),
					},
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29353, {	-- Keepin' the Haggis Flowin'
					["qg"] = 5159,	-- Daryl Riknussun
					["coord"] = { 60.1, 36.4, IRONFORGE },
					["timeline"] = { ADDED_4_0_1 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Bag o' Sheep Innards
							["provider"] = { "i", 69984 },	-- Bag o' Sheep Innards
							["coord"] = { 61.6, 72.8, IRONFORGE },
							["cr"] = 5124,	-- Sognar Cliffbeard <Meat Vendor>
						}),
						objective(2, {	-- 0/4 Sack of Oatmeal
							["providers"] = {
								{ "i",  69985 },	-- Sack of Oatmeal
								{ "o", 208870 },	-- Sack of Oatmeal
							},
							["coord"] = { 48.9, 29.8, IRONFORGE },
						}),
						objective(3, {	-- 0/5 Mild Spices
							["provider"] = { "i", 2678 },	-- Mild Spices
						}),
						COOKING_AWARD,
					},
				})),
				q(2298, {	-- Kingly Shakedown
					["sourceQuest"] = 2299,	-- To Hulfdan!
					["qg"] = 5165,	-- Hulfdan Blackbeard
					["coord"] = { 51.6, 14.8, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(1709, {	-- Klockmort's Creation
					["sourceQuest"] = 1708,	-- Iron Coral
					["qg"] = 6169,	-- Klockmort Spannerspan
					["coord"] = { 68.2, 46.2, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(6974, {	-- Fire hardened Gauntlets
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29347, {	-- Live Bait
					["qg"] = 5161,	-- Grimnur Stonebrand
					["coord"] = { 48.4, 8.2, IRONFORGE },
					["timeline"] = { ADDED_4_0_1 },
					["maps"] = { DUN_MOROGH },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Catch Cold Water Crayfish
							["provider"] = { "i", 69940 },	-- Grimnur's Bait
							["coord"] = { 84, 51, DUN_MOROGH },
						}),
						objective(2, {	-- Take Crayfish to Cook Ghilm
							["provider"] = { "n", 1355 },	-- Cook Ghilm
							["coord"] = { 75.6, 52.8, DUN_MOROGH },
						}),
						i(67414),	-- Bag of Shiny Things
					},
				})),
				q(1880,	{	-- Mage-tastic Gizmonitor
					["sourceQuest"] = 1879,	-- Speak with Bink
					["altQuests"] = { 1861 },	-- Mirror Lake
					["qg"] = 5144,	-- Bink <Mage Trainer>
					["coord"] = { 27.3, 8.3, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUN_MOROGH },
					["classes"] = { MAGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Mage-tastic Gizmonitor
							["providers"] = {
								{ "i",   7226 },	-- Mage-tastic Gizmonitor
								{ "o", 102984 },	-- Bink's Toolbox
							},
							["coord"] = { 27.7, 36.4, DUN_MOROGH },
						}),
						i(7507, {	-- Arcane Orb
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9514, {	-- Arcane Staff
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(38345, {	-- Numismatics
					["sourceQuest"] = 38344,	-- Mystery Notebook
					["qg"] = 6294,	-- Krom Stoutarm
					["coord"] = { 74.6, 9.8, IRONFORGE },
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_9_0_1,	-- seems inadvertent, maybe blizzard will fix eventually
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(122338, {	-- Ancient Heirloom Armor Casing
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29343, {	-- One fer the Ages
					["qg"] = 5161,	-- Grimnur Stonebrand
					["coord"] = { 48.4, 8.2, IRONFORGE },
					["timeline"] = { ADDED_4_0_1 },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Put Young Ironjaw on Display
							["providers"] = {
								{ "i",  69932 },	-- Young Ironjaw
								{ "o", 208860 },	-- Empty Plaque
							},
							["coords"] = {
								{ 47.5, 14.5, IRONFORGE },
								{ 71, 10, IRONFORGE },
							},
						}),
						i(67414),	-- Bag of Shiny Things
					},
				})),
				q(3448, {	-- Passing the Burden
					["qg"] = 2916,	-- Historian Karnik
					["coord"] = { 77.2, 11.8, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
				}),
				q(14111, {	-- Relic of the Earthen Ring
					["qgs"] = {
						35073,	-- Farseer Eannu <The Earthen Ring>
						23127,	-- Farseer Javad <Shaman Trainer>
						20407,	-- Farseer Umbrua <Shaman Trainer>
						17219,	-- Sulaa <Shaman Trainer>
					},
					["coords"] = {
						{ 55.6, 29.2, IRONFORGE },
						{ 55.2, 29.5, IRONFORGE },
						{ 67.6, 89.6, STORMWIND_CITY },
						{ 32.3, 23.9, THE_EXODAR },
					},
					["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 5178, 1 },	-- Air Totem
						{ "i", 5175, 1 },	-- Earth Totem
						{ "i", 5176, 1 },	-- Fire Totem
						{ "i", 5177, 1 },	-- Water Totem
					},
					["classes"] = { SHAMAN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(46978, {	-- Totem of the Earthen Ring
							["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
						}),
					},
				}),
				q(6392, {	-- Return to Brock / Return to Gremlock [CATA+]
					["sourceQuest"] = 6388,	-- Gryth Thurden
					["providers"] = {
						{ "n", 1573 },	-- Gryth Thurden
						{ "i", 16311 },	-- Honorary Picks
					},
					["coords"] = {
						-- #if AFTER 4.0.3
						{ 55.8, 47.8, IRONFORGE },
						-- #else
						{ 55.6, 48.0, IRONFORGE },
						-- #endif
					},
					["maps"] = {
						-- #if AFTER 4.0.3
						DUN_MOROGH,
						-- #else
						LOCH_MODAN,
						-- #endif
					},
					["races"] = { DARKIRON, DWARF, GNOME },
					-- #if BEFORE 4.0.3
					["lvl"] = 10,
					-- #endif
				}),
				q(3461, {	-- Return to Tymor
					["sourceQuest"] = 3449,	-- Arcane Runes
					["providers"] = {
						{ "n", 8392 },	-- Pilot Xiggs Fuselighter
						{ "i", 10445 },	-- Drawing Kit
					},
					["coord"] = { 77.8, 91.4, AZSHARA },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 45,
					["groups"] = {
						i(10707, {	-- Steelsmith Greaves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10708, {	-- Skullspell Orb
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
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
					["coord"] = { 24.6, 9.2, IRONFORGE },
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { NIGHTELF },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 10797,	-- Starshards (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(683, {	-- Sara Balloo's Plea
					["sourceQuest"] = 637,	-- Sully Balloo's Letter
					["providers"] = {
						{ "n", 2695 },	-- Sara Balloo
						{ "i", 4514 },	-- Sara Balloo's Plea
					},
					["coord"] = { 63.5, 67.2, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				applyclassicphase(CATA_PHASE_ONE, q(26118, {	-- Seize the Ambassador
					["sourceQuest"] = 26112,	-- Demanding Answers
					["providers"] = {
						{ "n", 42129 },	-- Moira Thaurissan
						{ "i", 56837 },	-- Sturdy Manacles (PQI!)
					},
					["coord"] = { 39.8, 57.2, IRONFORGE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Arrest Ambassador Slaghammer and bring him to the High Seat
							["providers"] = {
								{ "n", 42146 },	-- Ambassador Slaghammer <Dark Iron Ambassador>
							},
							["coord"] = { 36.6, 43.2, IRONFORGE },
						}),
						i(57583, {	-- The Slaghammer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57584, {	-- Battleaxe of the Sober Dwarf
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(57585, {	-- Ambassador's Duplicitous Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(133692, {	-- Ambassador's Deceitful Dagger
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				})),
				q(3641, {	-- Show Your Work
					["sourceQuest"] = 3640,	-- The Pledge of Secrecy
					["altQuests"] = { 3639, 3643 },	-- Show Your Work
					["qg"] = 7944,	-- Tinkmaster Overspark <Master Gnome Engineer>
					["coord"] = { 69.8, 50.2, IRONFORGE },
					["timeline"] = { REMOVED_3_0_2 },	-- Originally supposed to be removed in 4.0.3, but Wrath Classic was weird.
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
					["coord"] = { 51.6, 14.8, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 10,
				}),
				q(2041, {	-- Speak with Shoni
					["qg"] = 6569,	-- Gnoarn
					["coord"] = { 69.4, 50.8, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 15,
				}),
				q(1578, {	-- Supplying the Front
					["qg"] = 6031,	-- Tormus Deepforge
					["coord"] = { 48.5, 43, IRONFORGE },
					["maps"] = { LOCH_MODAN },
					["cost"] = {
						{ "i", 2845, 6 },	-- Copper Axe
						{ "i", 2851, 6 },	-- Copper Chain Belt
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 30,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if AFTER TBC
						i(33792, {	-- Plans: Heavy Copper Longsword (RECIPE!)
							-- #if BEOFRE MOP
							["description"] = "This item can be sold on the Neutral Auction House to Horde Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Alliance Blacksmiths.",
							-- #endif
							["timeline"] = { ADDED_2_3_0 },
						}),
						-- #else
						i(3609),	-- Plans: Copper Chain Vest (RECIPE!)
						-- #endif
					},
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29350, {	-- The Gnomish Bait-o-Matic
					["qg"] = 5161,	-- Grimnur Stonebrand
					["coord"] = { 48.4, 8.2, IRONFORGE },
					["timeline"] = { ADDED_4_0_1 },
					["maps"] = { DEEPRUN_TRAM },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Gnomish Bait-o-Matic
							["providers"] = {
								{ "i",  69978 },	-- Gnomish Bait-o-Matic
								{ "i",  69979 },	-- Bait-o-Matic Blueprints
								{ "o", 208864 },	-- Rat Trap
							},
							["cost"] = {
								{ "i", 6529, 5 },	-- Shiny Bauble
								{ "i", 69980, 3 },	-- Rat Trap
								{ "i", 39684, 1 },	-- Hair Trigger
							},
						}),
						i(67414),	-- Bag of Shiny Things
					},
				})),
				q(3640, {	-- The Pledge of Secrecy
					["sourceQuests"] = {
						3630,	-- Gnome Engineering
						3630,	-- Gnome Engineering
						3630,	-- Gnome Engineering
					},
					["altQuests"] = { 3638, 3642 },	-- The Pledge of Secrecy
					["qg"] = 7944,	-- Tinkmaster Overspark <Master Gnome Engineer>
					["coord"] = { 69.8, 50.2, IRONFORGE },
					["timeline"] = { REMOVED_3_0_2 },	-- Originally supposed to be removed in 4.0.3, but Wrath Classic was weird.
					["requireSkill"] = ENGINEERING,
					["learnedAt"] = 200,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Overspark's Signed Pledge
							["provider"] = { "i", 11283 },	-- Overspark's Signed Pledge
							["cost"] = { { "i", 10793, 1 } },	-- Overspark's Pledge of Secrecy
						}),
					},
				}),
				q(38402, {	-- The Same, But Different
					["sourceQuest"] = 38396,	-- A Curious Oddity
					["qg"] = 6294,	-- Krom Stoutarm
					["coord"] = { 74.6, 9.8, IRONFORGE },
					["timeline"] = {
						ADDED_6_1_0,
						REMOVED_9_0_1,	-- seems inadvertent, maybe blizzard will fix eventually
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(122341, {	-- Timeworn Heirloom Scabbard
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
				q(1715, {	-- The Slaughtered Lamb
					["altQuests"] = { 1685 },	-- Gakin's Summons (Voidwalker)
					["qg"] = 6120,	-- Lago Blackwrench
					["coord"] = { 47.6, 9.6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(2997, {	-- The Tome of Divinity [Dun Morogh]
					["qg"] = 1232,	-- Azar Stronghammer <Paladin Trainer>
					["coord"] = { 47.6, 52, DUN_MOROGH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { DWARF },
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = 12,
				}),
				q(2999, {	-- The Tome of Divinity [Ironforge]
					["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
					["coord"] = { 23.4, 6.2, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { DWARF },
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = 12,
				}),
				q(3000, {	-- The Tome of Divinity [Stormwind City]
					["qg"] = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					["coord"] = { 37.2, 33, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
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
					["coord"] = { 27.4, 12, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
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
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { DWARF },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1647, {	-- The Tome of Divinity (2/8)
					["sourceQuest"] = 1646,	-- The Tome of Divinity (1b/8)
					["qg"] = 6179,	-- Tiza Battleforge
					["coord"] = { 27.4, 12, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { DWARF },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1648, {	-- The Tome of Divinity (3/8)
					["sourceQuest"] = 1647,	-- The Tome of Divinity (2/8)
					["qg"] = 6175,	-- John Turner
					["coord"] = { 27.6, 70.6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 2589, 10 } },	-- Linen Cloth
					["races"] = { DWARF },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1778, {	-- The Tome of Divinity (4/8)
					["sourceQuest"] = 1648,	-- The Tome of Divinity (3/8)
					["qg"] = 6175,	-- John Turner
					["coord"] = { 27.6, 70.6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { DWARF },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1779, {	-- The Tome of Divinity (5/8)
					["sourceQuest"] = 1778,	-- The Tome of Divinity (4/8)
					["providers"] = {
						{ "n", 6179 },	-- Tiza Battleforge
						{ "i", 6866 },	-- Symbol of Life
					},
					["coord"] = { 27.4, 12, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { DWARF },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1783, {	-- The Tome of Divinity (6/8)
					["sourceQuest"] = 1779,	-- The Tome of Divinity (5/8)
					["qg"] = 6178,	-- Muiredon Battleforge
					["coord"] = { 23.6, 8.6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { DWARF },
					["classes"] = { PALADIN },
					["lvl"] = 12,
					["groups"] = {
						q(1789, {	-- The Symbol of Life
							["qg"] = 6179,	-- Tiza Battleforge
							["coord"] = { 27.4, 12, IRONFORGE },
							["timeline"] = { REMOVED_4_0_3 },
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
					["coord"] = { 78.2, 58.0, DUN_MOROGH },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { DWARF },
					["classes"] = { PALADIN },
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/1 Dark Iron Script
							["provider"] = { "i", 6847 },	-- Dark Iron Script
							["coord"] = { 78.2, 59.8, DUN_MOROGH },
							["cr"] = 6123,	-- Dark Iron Spy
						}),
					},
				}),
				q(1785, {	-- The Tome of Divinity (8/8)
					["sourceQuest"] = 1784,	-- The Tome of Divinity (7/8)
					["qg"] = 6178,	-- Muiredon Battleforge
					["coord"] = { 23.6, 8.6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { DWARF },
					["classes"] = { PALADIN },
					["lvl"] = 12,
					-- #if BEFORE 4.0.1
					["groups"] = {
						-- recipe(7328),	-- Redemption [Rank 1]
					},
					-- #endif
				}),
				q(1680, {	-- Tormus Deepforge
					["sourceQuest"] = 1678,	-- Vejrek
					["qg"] = 6114,	-- Muren Stormpike
					["coord"] = { 70.6, 90.4, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
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
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
					},
					["altQuests"] = {
						1665,	-- Bartleby's Mug
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
						-- 1678,	-- Vejrek
						1683,	-- Vorlus Vilehoof
					},
					["qg"] = 6114,	-- Muren Stormpike
					["coord"] = { 70.6, 90.4, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUN_MOROGH },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Vejrek's Head
							["provider"] = { "i", 6799 },	-- Vejrek's Head
							["coord"] = { 27.8, 57.4, DUN_MOROGH },
							["cr"] = 6113,	-- Vejrek
						}),
						-- #if BEFORE CATA
						recipe(71),		-- Defensive Stance
						-- recipe(7386),	-- Sunder Armor	[TODO: Users are reporting they can't collect this.]
						recipe(355),	-- Taunt
						-- #endif
					},
				}),
			}),
			-- #if AFTER 4.0.3.13277
			n(RARES, {
				n(51596, {	-- Wildhammer Fact Checker
					["coord"] = { 38.6, 54.8, IRONFORGE },
					["description"] = "AKA Red Shirt Guy\n\nYou must be a member of the Horde in order to attack this NPC.",
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(68611, {	-- Red Shirt
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
			}),
			-- #endif
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, i(203754, {	-- Archmage Antonidas: The Unabridged Autobiography
					["provider"] = { "o", 386691 },	-- Library Book
					["coord"] = { 75.7, 10.5, IRONFORGE },
				})),
				applyclassicphase(SOD_PHASE_ONE, i(204174, {	-- Rune of Precision
					["description"] = "Looting the chest will spawn 2 muggers. Beware!",
					["provider"] = { "o", 405946 },	-- Dusty Chest
					["coord"] = { 51.9, 12.8, IRONFORGE },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(400081),	-- Engrave Pants - Between the Eyes
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(7978, {	-- Bimble Longberry <Fruit Vendor>
					["coord"] = { 32.4, 21.2, IRONFORGE },
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
					["coord"] = { 23.2, 17.6, IRONFORGE },
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
					["coord"] = { 40.2, 33.4, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{"sub", "common_vendor", 5565},	-- Jillian Tanner <Leatherworking Supplies>
					},
					["groups"] = {
						i(18731, {	-- Pattern: Heavy Leather Ball (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(5120, {	-- Brenwyn Wintersteel
					["coord"] = { 61.8, 88.8, IRONFORGE },
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
					["coord"] = { 72.8, 64.8, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						3024,	-- Bkp 2700 Enforcer
						3023,	-- Large Bore Blunderbuss
						2509,	-- Ornate Blunderbuss
						2510,	-- Solid Blunderbuss
					}},
				}),
				n(5106, {	-- Bromiir Ormsen
					["coord"] = { 32.6, 58.2, IRONFORGE },
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
				-- #if AFTER TBC
				n(5163, {	-- Burbik Gearspanner <Trade Supplies>
					["coord"] = { 46.6, 27.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(21948, {	-- Design: Opal Necklace of Impact (RECIPE!)
							["timeline"] = { ADDED_2_0_5 },
							["isLimited"] = true,
						})),
						applyclassicphase(TBC_PHASE_ONE, i(20975, {	-- Design: The Jade Eye (RECIPE!)
							["timeline"] = { ADDED_2_0_5 },
							["isLimited"] = true,
						})),
					},
				}),
				-- #endif
				n(50309, {	-- Captain Stonehelm <Ironforge Quartermaster>
					["coord"] = { 55.8, 47.8, IRONFORGE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = bubbleDownClassicRep(FACTION_IRONFORGE, {
						{		-- Neutral
						}, {	-- Friendly
							i(246491, {	-- Ironforge Fence (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 1500000,	-- 150g
							}),
							i(246490, {	-- Ironforge Fencepost (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 2500000,	-- 250g
							}),
							i(45577, {	-- Ironforge Tabard
								["timeline"] = { ADDED_3_1_0 },
							}),
						}, {	-- Honored
							i(252010, {	-- Ornate Ironforge Bench (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 4500000,	-- 450g
							}),
							i(246426, {	-- Ornate Ironforge Table (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 6000000,	-- 600g
							}),
						}, {	-- Revered
							i(67528, {	-- Ironforge Satchel
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(256333, {	-- Ornate Dwarven Wardrobe (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 10000000,	-- 1,000g
							}),
						}, {	-- Exalted
							i(64899, {	-- Cape of Ironforge
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(64900, {	-- Mantle of Ironforge
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(64898, {	-- Shroud of Ironforge
								["timeline"] = { ADDED_4_0_3 },
							}),
						},
					}),
				}),
				n(253235, {	-- Dedric Sleetshaper <Decor Specialist>
					["coord"] = { 23.8, 45.2, IRONFORGE },
					["timeline"] = { ADDED_11_2_7 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(245426, {	-- Dark Iron Brazier (DECOR!)
							["sourceAchievement"] = 4859,	-- Kings Under the Mountain
							["cost"] = 7000000,	-- 700g
						}),
						i(245427, {	-- Dark Iron Expedition Tent (DECOR!)
							["sourceQuest"] = 53566,	-- Dark Iron Dwarves
							["cost"] = 12000000,	-- 1,200g
						}),
						i(246491, {	-- Ironforge Fence (DECOR!)
							["minReputation"] = { FACTION_IRONFORGE, FRIENDLY },	-- Ironforge, Friendly
							["cost"] = 1500000,	-- 150g
						}),
						i(246490, {	-- Ironforge Fencepost (DECOR!)
							["minReputation"] = { FACTION_IRONFORGE, FRIENDLY },	-- Ironforge, Friendly
							["cost"] = 2500000,	-- 250g
						}),
						i(256333, {	-- Ornate Dwarven Wardrobe (DECOR!)
							["minReputation"] = { FACTION_IRONFORGE, REVERED },	-- Ironforge, Revered
							["cost"] = 10000000,	-- 1,000g
						}),
						i(252010, {	-- Ornate Ironforge Bench (DECOR!)
							["minReputation"] = { FACTION_IRONFORGE, HONORED },	-- Ironforge, Honored
							["cost"] = 4500000,	-- 450g
						}),
						i(246426, {	-- Ornate Ironforge Table (DECOR!)
							["minReputation"] = { FACTION_IRONFORGE, HONORED },	-- Ironforge, Honored
							["cost"] = 6000000,	-- 600g
						}),
						i(256425, {	-- Shadowforge Stone Chair (DECOR!)
							["sourceAchievement"] = 8316,	-- Blood in the Snow
							["cost"] = 3500000,	-- 350g
						}),
					},
				}),
				n(5125, {	-- Dolkin Craghelm
					["coord"] = { 54.8, 88.6, IRONFORGE },
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
					["coord"] = { 36.6, 66.6, IRONFORGE },
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
					["coord"] = { 60.6, 38.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER CATA
					["sym"] = {{"sub", "common_vendor", 49701}},	-- Jon Casper <Sous Chef>
					-- #endif
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(5175, {	-- Gearcutter Cogspinner <Engineering Supplies>
					["coord"] = { 67.8, 43.0, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18649, {	-- Schematic: Blue Firework (RECIPE!)
							["isLimited"] = true,
						}),
						i(7560, {	-- Schematic: Gnomish Universal Remote (RECIPE!)
							["isLimited"] = true,
						}),
						i(22729, {	-- Schematic: Steam Tonk Controller (RECIPE!)
							["timeline"] = { CREATED_1_12_1, ADDED_2_3_0 },
							["isLimited"] = true,
						}),
						i(16041, {	-- Schematic: Thorium Grenade (RECIPE!)
							["timeline"] = { REMOVED_3_0_2 },	-- Now taught by trainer, schematic removed from the game.
							-- #if BEFORE WRATH
							["isLimited"] = true,
							-- #endif
						}),
						i(16042, {	-- Schematic: Thorium Widget (RECIPE!)
							["timeline"] = { REMOVED_3_0_2 },	-- Now taught by trainer, schematic removed from the game.
							-- #if BEFORE WRATH
							["isLimited"] = true,
							-- #endif
						}),
					},
				}),
				n(4256, {	-- Golnir Bouldertoe <Mining Supplies>
					["coord"] = { 51.5, 26.3, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2901),	-- Mining Pick
						-- #if AFTER CATA
						i(30746, {	-- Mining Sack
							["providers"] = {
								{ "n", 5514 },	-- Brooke Stonebraid <Mining Supplies>
								{ "n", 4256 },	-- Golnir Bouldertoe <Mining Supplies>
								{ "n", 3358 },	-- Gorina <Mining Supplies>
								{ "n", 3002 },	-- Kurm Stonehoof <Mining Supplies>
								{ "n", 16751 },	-- Merran <Mining Supplies>
								{ "n", 52643 },	-- Rissa Halding <Mining Supplies>
								{ "n", 4599 },	-- Sarah Killan <Mining Supplies>
								{ "n", 16664 },	-- Zelan <Mining Supplies>
							},
							["timeline"] = { ADDED_2_0_1 },
						}),
						-- #endif
					},
				}),
				n(5103, {	-- Grenil Steelfury
					["coord"] = { 36.4, 66.6, IRONFORGE },
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
					["coord"] = { 18.6, 51.9, IRONFORGE },	-- The Stonefire Tavern
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(1179),	-- Ice Cold Milk
						i(1205),	-- Melon Juice
						-- i(1645),	-- Moonberry Juice
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
				n(5138, {	-- Gwina Stonebranch <Herbalism Supplies> [TBC+] / <Herbalism Supplier>
					["coord"] = { 55.08, 59.51, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{ "sub", "common_vendor", 4216 }},	-- Chardryn <Herbalism Supplies>
				}),
				n(5133, {	-- Harick Boulderdrum
					["coord"] = { 22.8, 16.6, IRONFORGE },
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
					["coord"] = { 61.8, 88.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						-- added all
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
					["coord"] = { 45.8, 7.0, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						-- added all
						2520,	-- Broadsword
						2528,	-- Falchion
						2521,	-- Flamberge
						2526,	-- Main Gauche
						2534,	-- Rondel
						2529,	-- Zweihander
					}},
				}),
				n(246411, {	-- Inge Brightview <Library Display Enthusiast>
					["coord"] = { 75.4, 9.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["timeline"] = { ADDED_11_2_7 },
					["groups"] = {
						i(246411, {	-- Ironforge Bookcase (DECOR!)
							["cost"] = {{ "g", 7000000 }},	-- 700g
						}),
						i(246412, {	-- Small Ironforge Bookcase (DECOR!)
							["cost"] = {{ "g", 4500000 }},	-- 450g
						}),
					},
				}),
				n(5155, {	-- Ingrys Stonebrow
					["coord"] = { 39.2, 5.0, IRONFORGE },
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
					["coord"] = { 61.4, 88.4, IRONFORGE },
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
				-- #if AFTER 6.1.0
				n(6294, {	-- Krom Stoutarm <Heirloom Curator>
					["coord"] = { 74.6, 9.8, IRONFORGE },
					["timeline"] = { ADDED_6_1_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						n(ARMOR, {
							filter(CLOTH, {
								gold(500, i(122378)),	-- Exquisite Sunderseer Mantle
								gold(500, i(122360)),	-- Tattered Dreadmist Mantle
								gold(500, i(122384)),	-- Tattered Dreadmist Robe
							}),
							filter(LEATHER, {
								gold(500, i(122376)),	-- Exceptional Stormshroud Shoulders
								gold(500, i(122377)),	-- Lasting Feralheart Spaulders
								gold(500, i(122382)),	-- Preened Ironfeather Breastplate
								gold(500, i(122359)),	-- Preened Ironfeather Shoulders
								gold(500, i(122358)),	-- Stained Shadowcraft Spaulders
								gold(500, i(122383)),	-- Stained Shadowcraft Tunic
							}),
							filter(MAIL, {
								gold(500, i(122375)),	-- Aged Pauldrons of The Five Thunders
								gold(500, i(122356)),	-- Champion Herod's Shoulders
								gold(500, i(122379)),	-- Champion's Deathdealer Breastplate
								gold(500, i(122357)),	-- Mystical Pauldrons of Elements
								gold(500, i(122380)),	-- Mystical Vest of Elements
								gold(500, i(122374)),	-- Prized Beastmaster's Mantle
							}),
							n(NECK, {
								gold(700, i(122663)),	-- Eternal Amulet of the Redeemed
								gold(700, i(122667)),	-- Eternal Emberfury Talisman
								gold(700, i(122664)),	-- Eternal Horizon Choker
								gold(700, i(122662)),	-- Eternal Talisman of Evasion
								gold(700, i(122668)),	-- Eternal Will of the Martyr
								gold(700, i(122666)),	-- Eternal Woven Ivy Necklace
							}),
							filter(PLATE, {
								gold(500, i(122387)),	-- Burnished Breastplate of Might
								gold(500, i(122388)),	-- Burnished Pauldrons of Might
								gold(500, i(122381)),	-- Polished Breastplate of Valor
								gold(500, i(122355)),	-- Polished Spaulders of Valor
								gold(500, i(127010)),	-- Pristine Lightforge Breastplate
								gold(500, i(122373)),	-- Pristine Lightforge Spaulders
								gold(500, i(122372)),	-- Strengthened Stockade Pauldrons
							}),
							n(TRINKET, {
								gold(700, i(122362)),	-- Discerning Eye of the Beast
								gold(700, i(122371, {	-- Inherited Insignia of the Alliance
									["races"] = ALLIANCE_ONLY,
								})),
								gold(700, i(122530)),	-- Inherited Mark of Tyranny
								gold(700, i(122361)),	-- Swift Hand of Justice
							}),
						}),
						n(HEIRLOOMS, {
							gold(500, i(122338, {	-- Ancient Heirloom Armor Casing
								["timeline"] = { ADDED_6_1_0 },
							})),
							gold(750, i(122339, {	-- Ancient Heirloom Scabbard
								["timeline"] = { ADDED_6_1_0 },
							})),
							gold(1000, i(122340, {	-- Timeworn Heirloom Armor Casing
								["timeline"] = { ADDED_6_1_0 },
							})),
							gold(1500, i(122341, {	-- Timeworn Heirloom Scabbard
								["timeline"] = { ADDED_6_1_0 },
							})),
							gold(2000, i(151614, {	-- Weathered Heirloom Armor Casing
								["timeline"] = { ADDED_7_2_5 },
							})),
							gold(3000, i(151615, {	-- Weathered Heirloom Scabbard
								["timeline"] = { ADDED_7_2_5 },
							})),
							gold(5000, i(167731, {	-- Battle-Hardened Heirloom Armor Casing
								["timeline"] = { ADDED_8_1_5 },
							})),
							gold(7500, i(167732, {	-- Battle-Hardened Heirloom Scabbard
								["timeline"] = { ADDED_8_1_5 },
							})),
							gold(5000, i(187997, {	-- Eternal Heirloom Armor Casing
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(7500, i(187998, {	-- Eternal Heirloom Scabbard
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(5000, i(204336, {	-- Awakened Heirloom Armor Casing
								["timeline"] = { ADDED_10_0_7 },
							})),
							gold(7500, i(204337, {	-- Awakened Heirloom Scabbard
								["timeline"] = { ADDED_10_0_7 },
							})),
						}),
						filter(TOYS, {
							gold(10000, i(187896, {	-- Scouting Map: A Stormstout's Guide to Pandaria (TOY!)
							["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(187897, {	-- Scouting Map: Cataclysm's Consequences (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(187869, {	-- Scouting Map: Into the Shadowlands (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(150746, {	-- Scouting Map: Modern Provisioning of the Eastern Kingdoms (TOY!)
								["timeline"] = { ADDED_7_2_5 },
								["races"] = ALLIANCE_ONLY,
							})),
							gold(10000, i(150743, {	-- Scouting Map: Surviving Kalimdor (TOY!)
								["timeline"] = { ADDED_7_2_5 },
								["races"] = ALLIANCE_ONLY,
							})),
							gold(10000, i(187895, {	-- Scouting Map: The Dangers of Draenor (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(187899, {	-- Scouting Map: The Many Curiosities of Outland (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(187900, {	-- Scouting Map: The Wonders of Kul Tiras and Zandalar (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(187898, {	-- Scouting Map: True Cost of the Northrend Campaign (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
							gold(10000, i(187875, {	-- Scouting Map: United Fronts of the Broken Isles (TOY!)
								["timeline"] = { ADDED_9_1_5 },
							})),
						}),
						n(WEAPONS, {
							gold(650, i(122350)),	-- Balanced Heartseeker
							gold(650, i(122369)),	-- Battleworn Thrash Blade
							gold(750, i(122349)),	-- Bloodied Arcanite Reaper
							gold(650, i(122389)),	-- Bloodsoaked Skullforge Reaver
							gold(750, i(122363)),	-- Burnished Warden Staff
							gold(750, i(122352)),	-- Charmed Ancient Bone Bow
							gold(650, i(122354)),	-- Devout Aurastone Hammer
							gold(750, i(122353)),	-- Dignified Headmaster's Charge
							gold(650, i(140773, {	-- Eagletalon Spear
								["timeline"] = { ADDED_7_0_3 },
							})),
							gold(500, i(122391)),	-- Flamescarred Draconian Deflector
							gold(750, i(122368)),	-- Grand Staff of Jordan
							gold(500, i(122390)),	-- Musty Tome of the Lost
							gold(750, i(122365)),	-- Reforged Truesilver Champion
							gold(750, i(122386)),	-- Repurposed Lava Dredger
							gold(650, i(122364)),	-- Sharpened Scarlet Kris
							gold(650, i(122367)),	-- The Blessed Hammer of Grace
							gold(750, i(122366)),	-- Upgraded Dwarven Hand Cannon
							gold(650, i(122351)),	-- Venerable Dal'Rend's Sacred Charge
							gold(650, i(122385)),	-- Venerable Mass of McGowan
							gold(500, i(122392)),	-- Weathered Observer's Shield
						}),
					},
				}),
				-- #endif
				n(52584, {	-- Laida Gembold <Jewelcrafting Supplies>
					["coord"] = { 50.6, 27.0, IRONFORGE },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{ "sub", "common_recipes_vendor", 50480 }},	-- Isabel Jones <Jewelcrafting Supplies>
				}),
				n(5129, {	-- Lissyphus Finespindle
					["coord"] = { 54.6, 88.2, IRONFORGE },
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
					["coord"] = { 36.4, 84.4, IRONFORGE },
					["sym"] = { {"sub", "common_vendor", 5193} },	-- Rebecca Laughlin <Tabard Designer>
					["races"] = ALLIANCE_ONLY,
				}),
				n(5156, {	-- Maeva Snowbraid
					["coord"] = { 38.8, 5.6, IRONFORGE },
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
				n(50308, {	-- Master Tinker Trini <Gnomeregan Quartermaster>
					["coord"] = { 55.8, 47.8, IRONFORGE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(45578, {	-- Gnomeregan Tabard
							["timeline"] = { ADDED_3_1_0 },
						}),
						i(64896, {	-- Cape of Gnomeregan
							["minReputation"] = { FACTION_GNOMEREGAN, EXALTED },	-- Gnomeregan Exiles, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64895, {	-- Mantle of Gnomeregan
							["minReputation"] = { FACTION_GNOMEREGAN, EXALTED },	-- Gnomeregan Exiles, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64897, {	-- Shroud of Gnomeregan
							["minReputation"] = { FACTION_GNOMEREGAN, EXALTED },	-- Gnomeregan Exiles, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67530, {	-- Gnomeregan Satchel
							["minReputation"] = { FACTION_GNOMEREGAN, REVERED },	-- Gnomeregan Exiles, Revered.
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				n(5107, {	-- Mangorn Flinthammer
					["coord"] = { 32.0, 58.8, IRONFORGE },
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
					["coord"] = { 29.8, 67.5, IRONFORGE },
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
					["coord"] = { 55.0, 88.4, IRONFORGE },
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
					["coord"] = { 43.0, 29.2, IRONFORGE },
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
				n(5154, {	-- Poranna Snowbraid <Tailoring Supplies>
					["coord"] = { 43.8, 29.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER CATA
					["groups"] = COMMON_CATACLYSM_TAILORING_RECIPES,
					-- #endif
				}),
				n(5108, {	-- Raena Flinthammer <Light Armor Merchant>
					["coord"] = { 32.6, 58.0, IRONFORGE },
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
					["coord"] = { 71.6, 66.2, IRONFORGE },
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
					["coord"] = { 62.1, 72.0, IRONFORGE },
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
					["coord"] = { 66.6, 54.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13478, {	-- Recipe: Elixir of Superior Defense (RECIPE!)
							["isLimited"] = true,
						}),
						i(5642, {	-- Recipe: Free Action Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(9099, {	-- Sraaz <Pie Vendor>
					["coord"] = { 46.6, 47.2, IRONFORGE },
					["description"] = "Walks around The Great Forge.",
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8950),	-- Homemade Cherry Pie
					},
				}),
				n(5162, {	-- Tansy Puddlefizz <Fishing Supplier>
					["coord"] = { 47.8, 6.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
						i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
						i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
						i(6326),	-- Recipe: Slitherskin Mackerel (RECIPE!)
					},
				}),
				n(7976, {	-- Thalgus Thunderfist
					["coord"] = { 61.8, 90.0, IRONFORGE },
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
						i(15906, {	-- Left-Handed Brass Knuckles
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(15909, {	-- Left-Handed Blades
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(15907, {	-- Left-Handed Claw
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(15903),	-- Slicing Claw
					},
				}),
				n(4259, {	-- Thurgrum Deepforge <Blacksmithing Supplies>
					["coord"] = { 51.8, 41.2, IRONFORGE },
					-- #if AFTER 4.3.0
					["sym"] = {{ "sub", "common_recipes_vendor", 55684 }},	-- Jordan Smith <Blacksmithing Trainer & Supplies>
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
				n(5158, {	-- Tilli Thistlefuzz <Enchanting Supplies>
					["coord"] = { 60.8, 44.2, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER CATA
					["sym"] = { { "sub", "common_recipes_vendor", 1318 } },	-- Jessara Cordell <Enchanting Supplies>
					-- #endif
					["groups"] = appendGroups(VANILLA_ENCHANTING_COMMON_RECIPES, {
						i(6349, {	-- Formula: Enchant 2H Weapon - Lesser Intellect (RECIPE!)
							["isLimited"] = true,
						}),
					}),
				}),
				n(5169, {	-- Tynnus Venomsprout
					["coord"] = { 52.8, 13.6, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER MOP
					["sym"] = {{"select","itemID",
						4565,	-- Simple Dagger
					}},
					-- #endif
				}),
				n(8117, {	-- Wizbang Booms
					["coord"] = { 31.8, 63.4, IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["description"] =
						-- #if BEFORE 10.1
						"This NPC is only available on July 4th (US) or September 30th (EU).",
						-- #else
						"This NPC is only available on July 4th.",
						-- #endif
					["sym"] = {{"select","itemID",
						8626,	-- Blue Sparkler
						8625,	-- White Sparkler
						8624,	-- Red Sparkler
					}},
				}),
			}),
		},
	}),
}));
