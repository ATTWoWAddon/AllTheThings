---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(BURNING_STEPPES, {
		["lore"] = "The Burning Steppes hold the only accessible land passage from the Kingdom of Stormwind to Khaz Modan and Lordaeron. The highway is thus well traveled, but still very dangerous. Now virtually abandoned by the Kingdom of Stormwind, the Burning Steppes is controlled by minions of the black dragonflight and agents of the firelord Ragnaros.\n\nThis rugged region is full of craggy foothills, scattered boulders and warring factions. Rivers of lava dot the landscape, as well as charred earth and burning ruins. The sky is a red hue here, due to sporadic eruptions from Blackrock Mountain. Blackrock Spire, an orc stronghold in the Second War, stands proud and defiant among the mountains. Dark Iron dwarves control the fortress's deeps, though rumor has it that Ragnaros the Fire Lord still broods in the shadows. Black dragons under Nefarion hold the spire's upper levels, and the two groups battle constantly for supremacy. The surrounding countryside is home to Blackrock orcs and Fire-Gut ogres, all brutal castoffs from the Second War. The Molten Span, a massive stone edifice in the north, bridges a river of fire and leads to Khaz Modan.",
		["icon"] = 236734,
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(775),	-- Explore Burning Steppes
				ach(4901, {	-- Burning Steppes Quests
					["timeline"] = { ADDED_4_0_3 },
					-- #if ANYCLASSIC
					-- #if AFTER MOP
					["groups"] = {
						crit(1, {	-- Preparation
							["sourceQuests"] = {
								28183,	-- Return to Keeshan (alliance)
								28425,	-- Return to Ariok (horde)
							},
						}),
						crit(2, {	-- Annihilation
							["sourceQuests"] = {
								28322,	-- The Spoils of War (alliance)
								28456,	-- The Spoils of War (horde)
							},
						}),
						crit(3, {	-- Infiltration
							["sourceQuests"] = {
								28286,	-- Enough Damage For One Day (alliance)
								28441,	-- Enough Damage For One Day (horde)
							},
						}),
						crit(4, {	-- Anticipation
							["sourceQuests"] = {
								28326,	-- Placing the Pawns (alliance)
								28449,	-- Placing the Pawns (horde)
							},
						}),
					},
					-- #else
					["sourceQuests"] = {
						28183,	-- Return to Keeshan (alliance)
						28425,	-- Return to Ariok (horde)
						28322,	-- The Spoils of War (alliance)
						28456,	-- The Spoils of War (horde)
						28286,	-- Enough Damage For One Day (alliance)
						28441,	-- Enough Damage For One Day (horde)
						28326,	-- Placing the Pawns (alliance)
						28449,	-- Placing the Pawns (horde)
					},
					-- #endif
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					393,	-- Cockroach (PET!)
					415,	-- Fire Beetle (PET!)
					423,	-- Lava Crab (PET!)
					414,	-- Scorpid (PET!)
				}},
				["groups"] = {
					pet(425),	-- Ash Viper (PET!)
					pet(429),	-- Lava Beetle (PET!)
				},
			}),
			explorationHeader({
				exploration(255),	-- Altar of Storms
				-- #if AFTER CATA
				exploration(5652),	-- Black Tooth Hovel
				-- #endif
				exploration(254),	-- Blackrock Mountain
				exploration(2417),	-- Blackrock Pass
				exploration(252),	-- Blackrock Stronghold
				exploration(2421),	-- Draco'dar
				exploration(249),	-- Dreadmaul Rock
				-- #if AFTER CATA
				exploration(5653),	-- Fields of Honor
				--exploration(251),	-- Flame Crest (Does not get detected)
				exploration(5651),	-- Flamestar Post
				-- #endif
				exploration(2418),	-- Morgan's Vigil
				exploration(250),	-- Ruins of Thaurissan
				-- #if AFTER CATA
				exploration(2419),	-- Slither Rock
				-- #endif
				-- #if BEFORE CATA
				exploration(2420),	-- Terror Wing Path
				-- #endif
				exploration(253),	-- The Pillar of Ash
				-- #if AFTER CATA
				exploration(5650),	-- The Whelping Downs
				exploration(5677),	-- Valley of Ashes
				-- #endif
			}),
			n(FLIGHT_PATHS, {
				fp(676, {	-- Chiselgrip, Burning Steppes
					["cr"] = 48321,	-- Grimly Singefeather <Flight Master>
					["coord"] = { 46.0, 41.8, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
				}),
				fp(70, {	-- Flame Crest, Burning Steppes
					["cr"] = 13177,	-- Vahgruk <Wind Rider Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 54.2, 24.2, BURNING_STEPPES },
						-- #else
						{ 65.6, 24.2, BURNING_STEPPES },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
				fp(675, {	-- Flamestar Post, Burning Steppes
					["cr"] = 48318,	-- Hans Oreflight <Flight Master>
					["coord"] = { 17.6, 52.6, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
				}),
				fp(71, {	-- Morgan's Vigil, Burning Steppes
					["cr"] = 2299,	-- Borgus Stoutarm <Gryphon Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 72.2, 65.6, BURNING_STEPPES },
						-- #else
						{ 84.4, 68.2, BURNING_STEPPES },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(28316, {	-- A Deal With a Dragon (A)
					["providers"] = {	-- Accepting any quest from the NPC turns him into a mobileNPC
						{ "n", 48306 },	-- John J. Keeshan
						{ "n", 48346 },	-- John J. Keeshan (Mobile)
						{ "i", 63431 },	-- Rescued Whelplings
					},
					["sourceQuests"] = {
						28313,	-- A Heap of Delicious Worg (A)
						28311,	-- Blackened Ashes (A)
						28312,	-- Latent Demons of the Land (A)
					},
					["coord"] = { 73.5, 67.2, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28448, {	-- A Deal With a Dragon (H)
					["providers"] = {
						{ "n", 48565 },	-- Ariok
						{ "i", 63431 },	-- Rescued Whelplings
					},
					["sourceQuests"] = {
						28445,	-- A Heap of Delicious Worg (H)
						28443,	-- Blackened Ashes (H)
						28444,	-- Latent Demons of the Land (H)
					},
					["coord"] = { 54.7, 24.5, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28318, {	-- A Delivery for Neeralak (A)
					["providers"] = {
						{ "n", 48307 },	-- Colonel Troteman
						{ "i", 63430 },	-- Crate of Sleeping Flamekin
					},
					["sourceQuest"] = 28326,	-- Placing the Pawns (A)
					["coord"] = { 73.6, 67.1, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28451, {	-- A Delivery for Neeralak (H)
					["providers"] = {
						{ "n", 48569 },	-- Eitrigg
						{ "i", 63430 },	-- Crate of Sleeping Flamekin
					},
					["sourceQuest"] = 28449,	-- Placing the Pawns (H)
					["coord"] = { 54.6, 24.4, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28317, {	-- A Delivery for Thorg'izog (A)
					["providers"] = {
						{ "n", 48307 },	-- Colonel Troteman
						{ "i", 63429 },	-- Slider Cider-Marinated Cutlets
					},
					["sourceQuest"] = 28326,	-- Placing the Pawns (A)
					["coord"] = { 73.6, 67.1, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28450, {	-- A Delivery for Thorg'izog (H)
					["providers"] = {
						{ "n", 48569 },	-- Eitrigg
						{ "i", 63429 },	-- Slider Cider-Marinated Cutlets
					},
					["sourceQuest"] = 28449,	-- Placing the Pawns (H)
					["coord"] = { 54.6, 24.4, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28319, {	-- A Delivery for Xi'lun (A)
					["providers"] = {
						{ "n", 48307 },	-- Colonel Troteman
						{ "i", 63134 },	-- Clear Glass Orb
					},
					["sourceQuest"] = 28326,	-- Placing the Pawns (A)
					["coord"] = { 73.6, 67.1, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28452, {	-- A Delivery for Xi'lun (H)
					["providers"] = {
						{ "n", 48569 },	-- Eitrigg
						{ "i", 63134 },	-- Clear Glass Orb
					},
					["sourceQuest"] = 28449,	-- Placing the Pawns (H)
					["coord"] = { 54.6, 24.4, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(44926, {	-- A Familiar Axe to Grind
					["providers"] = {
						{ "i", 142344 },	-- Broken Axe Blade
						{ "n", 115805 },	-- Hoddruc Bladebender
					},
					["coord"] = { 46.8, 44.6, BURNING_STEPPES },
					["timeline"] = { ADDED_7_1_5 },
					["requireSkill"] = BLACKSMITHING,
					["crs"] = {
						48201,	-- Blackrock Sergeant
						7027,	-- Blackrock Slayer
						7025,	-- Blackrock Soldier
						48120,	-- Firegut Reaver
						48118,	-- Smolderthorn Shaman
					},
				}),
				q(28178, {	-- A Future Project (A)
					["qg"] = 47811,	-- John J. Keeshan
					["sourceQuests"] = { 28174, 28416 },	-- Burning Vengeance (A)
					["coord"] = { 17.2, 52.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/11 Ember Worg Hide
							["provider"] = { "i", 63136 },	-- Ember Worg Hide
							["crs"] = {
								9690,	-- Ember Worg
								9697,	-- Giant Ember Worg
							},
						}),
						i(64503, {	-- Ember Worg Eye
							["timeline"] = { ADDED_4_0_1 },
						}),
					},
				}),
				q(28420, {	-- A Future Project (H)
					["qg"] = 48559,	-- Ariok
					["sourceQuest"] = 28418,	-- Burning Vengeance (H)
					["coord"] = { 17.4, 51.6, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/11 Ember Worg Hide
							["provider"] = { "i", 63136 },	-- Ember Worg Hide
							["crs"] = {
								9690,	-- Ember Worg
								9697,	-- Giant Ember Worg
							},
						}),
						i(64504, {	-- Ember Worg Eye
							["timeline"] = { ADDED_4_0_1 },
						}),
					},
				}),
				{	-- A Heap of Delicious Worg
					["allianceQuestData"] = q(28313, {	-- A Heap of Delicious Worg (A)
						["qg"] = 48307,	-- Colonel Troteman
						["sourceQuest"] = 28310,	-- Morgan's Vigil
						["coord"] = { 73.6, 67.1, BURNING_STEPPES },
					}),
					["hordeQuestData"] = q(28445, {	-- A Heap of Delicious Worg (H)
						["qg"] = 48569,	-- Eitrigg
						["sourceQuest"] = 28442,	-- Flame Crest
						["coord"] = { 54.6, 24.4, BURNING_STEPPES },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/40 Worg Cutlet
							["providers"] = {
								{ "i", 63424 },	-- Worg Cutlet
								{ "i", 63427 },	-- Worgsaw
							},
							["cr"] = 9697,	-- Giant Ember Worg
						}),
					},
				},
				q(28254, {	-- A Needle in a Hellhole (A)
					["qg"] = 48109,	-- John J. Keeshan
					["sourceQuest"] = 28184,	-- Chiselgrip, the Heart of the Steppes (A)
					["coord"] = { 46.3, 46.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28427, {	-- A Needle in a Hellhole (H)
					["qg"] = 48568,	-- Eitrigg
					["sourceQuest"] = 28426,	-- Chiselgrip, the Heart of the Steppes (H)
					["coord"] = { 44.5, 44.4, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28202, {	-- A Perfect Costume (A)
					["qg"] = 48001,	-- Thelaron Direneedle
					["sourceQuest"] = 28254,	-- A Needle in a Hellhole (A)
					["coord"] = { 45.4, 46.3, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { HUMAN, DWARF, VOIDELF, KULTIRAN, DARKIRON },
					-- #if NOT ANYCLASSIC
					-- CRIEVE NOTE: The solution is on the objective, once objectives are supported by Retail ATT, get rid of this.
					-- The following description is accurate for retail per 10.2.5, but it is unknown how accurate it will be for the coming Classic Cataclysm.
					["description"] = "This is a race-specific quest where different races get different versions of this quest. This particurlar version is only available for Humans, Dwarfs, Void Elves, Kul Tirans, and Dark Iron Dwarfs. Completing this quest might give completion credit to other versions of this quest, and vice versa.\n\n\nSolution for Human, Dwarf and Dark Iron Dwarf:\n2 Hides, 4 Handfulls of Mud, and 2 Spools of Thread.\n\nSolution for Void Elf:\n3 Hides, 2 Handfulls of Mud, and 1 Spool of Thread.\n\nSolution for Kul Tiran:\n4 Hides, 1 Handfull of Mud, and 3 Spools of Thread.\n\n",
					-- #endif
					["groups"] = {
						objective(1, {	-- 0/1 Blackrock Disguise
							["providers"] = {
								{ "i",  63357 },	-- Blackrock Disguise
								{ "o", 206947 },	-- Tailor's Table
							},
							["coord"] = { 45.4, 46.2, BURNING_STEPPES },
							["OnTooltip"] = [[function(t, tooltipInfo)
								local raceID = _.RaceID;
								if raceID == ]] .. HUMAN .. [[ or raceID == ]] .. DWARF .. [[ or raceID == ]] .. DARKIRON .. [[ then
									tinsert(tooltipInfo, { left = "Solution:", right = "2 Hides, 4 Muds, 2 Threads" });
								elseif raceID == ]] .. VOIDELF .. [[ then
									tinsert(tooltipInfo, { left = "Solution:", right = "3 Hides, 2 Muds, 1 Thread" });
								elseif raceID == ]] .. KULTIRAN .. [[ then
									tinsert(tooltipInfo, { left = "Solution:", right = "4 Hides, 1 Mud, 3 Threads" });
								end
							end]],
						}),
					},
				}),
				q(28203, {	-- A Perfect Costume (A)
					["qg"] = 48001,	-- Thelaron Direneedle
					["sourceQuest"] = 28254,	-- A Needle in a Hellhole (A)
					["coord"] = { 45.4, 46.3, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = { DRAENEI, WORGEN, PANDAREN_ALLIANCE, LIGHTFORGED, DRACTHYR_ALLIANCE},
					-- #if NOT ANYCLASSIC
					-- CRIEVE NOTE: The solution is on the objective, once objectives are supported by Retail ATT, get rid of this.
					-- The following description is accurate for retail per 10.2.5, but it is unknown how accurate it will be for the coming Classic Cataclysm.
					["description"] = "This is a race-specific quest where different races get different versions of this quest. This particurlar version is only available for Draenei, Worgen, Tushui Pandaren, Lightforged Draenei, and Alliance Dracthyr. Completing this quest might give completion credit to other versions of this quest, and vice versa.\n\n\nSolution:\n\n4 Hides\n1 Handfull of Mud\n3 Spools of Thread",
					-- #endif
					["groups"] = {
						objective(1, {	-- 0/1 Blackrock Disguise
							["providers"] = {
								{ "i",  63357 },	-- Blackrock Disguise
								{ "o", 206947 },	-- Tailor's Table
							},
							["coord"] = { 45.4, 46.2, BURNING_STEPPES },
							["OnTooltip"] = [[function(t, tooltipInfo)
								tinsert(tooltipInfo, { left = "Solution:", right = "4 Hides, 1 Mud, 3 Threads" });
							end]],
						}),
					},
				}),
				q(28204, {	-- A Perfect Costume (A)
					["qg"] = 48001,	-- Thelaron Direneedle
					["sourceQuest"] = 28254,	-- A Needle in a Hellhole (A)
					["coord"] = { 45.4, 46.3, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { GNOME, MECHAGNOME },
					-- #if NOT ANYCLASSIC
					-- CRIEVE NOTE: The solution is on the objective, once objectives are supported by Retail ATT, get rid of this.
					-- The following description is accurate for retail per 10.2.5, but it is unknown how accurate it will be for the coming Classic Cataclysm.
					["description"] = "This is a race-specific quest where different races get different versions of this quest. This particurlar version is only available for Gnomes and Mechagnomes. Completing this quest might give completion credit to other versions of this quest, and vice versa.\n\n\nSolution:\n\n1 Hide\n3 Handfulls of Mud\n4 Spools of Thread",
					-- #endif
					["groups"] = {
						objective(1, {	-- 0/1 Blackrock Disguise
							["providers"] = {
								{ "i",  63357 },	-- Blackrock Disguise
								{ "o", 206947 },	-- Tailor's Table
							},
							["coord"] = { 45.4, 46.2, BURNING_STEPPES },
							["OnTooltip"] = [[function(t, tooltipInfo)
								tinsert(tooltipInfo, { left = "Solution:", right = "1 Hide, 3 Muds, 4 Threads" });
							end]],
						}),
					},
				}),
				q(28205, {	-- A Perfect Costume (A)
					["qg"] = 48001,	-- Thelaron Direneedle
					["sourceQuest"] = 28254,	-- A Needle in a Hellhole (A)
					["coord"] = { 45.4, 46.3, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { NIGHTELF },
					-- #if NOT ANYCLASSIC
					-- CRIEVE NOTE: The solution is on the objective, once objectives are supported by Retail ATT, get rid of this.
					-- The following description is accurate for retail per 10.2.5, but it is unknown how accurate it will be for the coming Classic Cataclysm.
					["description"] = "This is a race-specific quest where different races get different versions of this quest. This particurlar version is only available for Night Elves. Completing this quest might give completion credit to other versions of this quest, and vice versa.\n\n\nSolution:\n\n3 Hides\n2 Handfulls of Mud\n1 Spool of Thread",
					-- #endif
					["groups"] = {
						objective(1, {	-- 0/1 Blackrock Disguise
							["providers"] = {
								{ "i",  63357 },	-- Blackrock Disguise
								{ "o", 206947 },	-- Tailor's Table
							},
							["coord"] = { 45.4, 46.2, BURNING_STEPPES },
							["OnTooltip"] = [[function(t, tooltipInfo)
								tinsert(tooltipInfo, { left = "Solution:", right = "3 Hides, 2 Muds, 1 Thread" });
							end]],
						}),
					},
				}),
				q(28428, {	-- A Perfect Costume (H)
					["qg"] = 48001,	-- Thelaron Direneedle
					["sourceQuest"] = 28427,	-- A Needle in a Hellhole (H)
					["coord"] = { 45.4, 46.3, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3_LAUNCH },
					["races"] = { ORC, UNDEAD, MAGHAR },
					-- #if NOT ANYCLASSIC
					-- CRIEVE NOTE: The solution is on the objective, once objectives are supported by Retail ATT, get rid of this.
					-- The following description is accurate for retail per 10.2.5, but it is unknown how accurate it will be for the coming Classic Cataclysm.
					["description"] = "This is a race-specific quest where different races get different versions of this quest. This particurlar version is only available for Orcs, Undead, and Mag'har Orcs. Completing this quest might give completion credit to other versions of this quest, and vice versa.\n\n\nSolution:\n\n2 Hides\n4 Handfulls of Mud\n2 Spools of Thread",
					-- #endif
					["groups"] = {
						objective(1, {	-- 0/1 Blackrock Disguise
							["providers"] = {
								{ "i",  63357 },	-- Blackrock Disguise
								{ "o", 206947 },	-- Tailor's Table
							},
							["coord"] = { 45.4, 46.2, BURNING_STEPPES },
							["OnTooltip"] = [[function(t, tooltipInfo)
								tinsert(tooltipInfo, { left = "Solution:", right = "2 Hides, 4 Muds, 2 Threads" });
							end]],
						}),
					},
				}),
				q(28429, {	-- A Perfect Costume (H)
					["qg"] = 48001,	-- Thelaron Direneedle
					["sourceQuest"] = 28427,	-- A Needle in a Hellhole (H)
					["coord"] = { 45.4, 46.3, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3_LAUNCH },
					["races"] = { TAUREN, PANDAREN_HORDE, HIGHMOUNTAIN_TAUREN, DRACTHYR_HORDE },
					-- #if NOT ANYCLASSIC
					-- CRIEVE NOTE: The solution is on the objective, once objectives are supported by Retail ATT, get rid of this.
					-- The following description is accurate for retail per 10.2.5, but it is unknown how accurate it will be for the coming Classic Cataclysm.
					["description"] = "This is a race-specific quest where different races get different versions of this quest. This particurlar version is only available for Tauren, Huojin Pandaren, Highmountain Tauren, and Horde Dracthyr. Completing this quest might give completion credit to other versions of this quest, and vice versa.\n\n\nSolution:\n\n4 Hides\n1 Handfull of Mud\n3 Spools of Thread",
					-- #endif
					["groups"] = {
						objective(1, {	-- 0/1 Blackrock Disguise
							["providers"] = {
								{ "i",  63357 },	-- Blackrock Disguise
								{ "o", 206947 },	-- Tailor's Table
							},
							["coord"] = { 45.4, 46.2, BURNING_STEPPES },
							["OnTooltip"] = [[function(t, tooltipInfo)
								tinsert(tooltipInfo, { left = "Solution:", right = "4 Hides, 1 Mud, 3 Threads" });
							end]],
						}),
					},
				}),
				q(28430, {	-- A Perfect Costume (H)
					["qg"] = 48001,	-- Thelaron Direneedle
					["sourceQuest"] = 28427,	-- A Needle in a Hellhole (H)
					["coord"] = { 45.4, 46.3, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3_LAUNCH },
					["races"] = { GOBLIN, VULPERA },
					-- #if NOT ANYCLASSIC
					-- CRIEVE NOTE: The solution is on the objective, once objectives are supported by Retail ATT, get rid of this.
					-- The following description is accurate for retail per 10.2.5, but it is unknown how accurate it will be for the coming Classic Cataclysm.
					["description"] = "This is a race-specific quest where different races get different versions of this quest. This particurlar version is only available for Goblins and Vulperas. Completing this quest might give completion credit to other versions of this quest, and vice versa.\n\n\nSolution:\n\n1 Hide\n3 Handfulls of Mud\n4 Spools of Thread",
					-- #endif
					["groups"] = {
						objective(1, {	-- 0/1 Blackrock Disguise
							["providers"] = {
								{ "i",  63357 },	-- Blackrock Disguise
								{ "o", 206947 },	-- Tailor's Table
							},
							["coord"] = { 45.4, 46.2, BURNING_STEPPES },
							["OnTooltip"] = [[function(t, tooltipInfo)
								tinsert(tooltipInfo, { left = "Solution:", right = "1 Hide, 3 Muds, 4 Threads" });
							end]],
						}),
					},
				}),
				q(28431, {	-- A Perfect Costume (H)
					["qg"] = 48001,	-- Thelaron Direneedle
					["sourceQuest"] = 28427,	-- A Needle in a Hellhole (H)
					["coord"] = { 45.4, 46.3, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { TROLL, BLOODELF, NIGHTBORNE, ZANDALARI },
					-- #if NOT ANYCLASSIC
					-- CRIEVE NOTE: The solution is on the objective, once objectives are supported by Retail ATT, get rid of this.
					-- The following description is accurate for retail per 10.2.5, but it is unknown how accurate it will be for the coming Classic Cataclysm.
					["description"] = "This is a race-specific quest where different races get different versions of this quest. This particurlar version is only available for Trolls, Blood Elves, Nightborne Elves, and Zandalari Trolls. Completing this quest might give completion credit to other versions of this quest, and vice versa.\n\n\nSolution:\n\n3 Hides\n2 Handfulls of Mud\n1 Spool of Thread",
					-- #endif
					["groups"] = {
						objective(1, {	-- 0/1 Blackrock Disguise
							["providers"] = {
								{ "i",  63357 },	-- Blackrock Disguise
								{ "o", 206947 },	-- Tailor's Table
							},
							["coord"] = { 45.4, 46.2, BURNING_STEPPES },
							["OnTooltip"] = [[function(t, tooltipInfo)
								tinsert(tooltipInfo, { left = "Solution:", right = "3 Hides, 2 Muds, 1 Thread" });
							end]],
						}),
					},
				}),
				{	-- Abuse of Power
					["allianceQuestData"] = q(28279, {	-- Abuse of Power (A)
						["qg"] = 48110,	-- Colonel Troteman
						["sourceQuest"] = 28266,	-- Trial by Magma (A)
						["coord"] = { 46.3, 45.9, BURNING_STEPPES },
					}),
					["hordeQuestData"] = q(28440, {	-- Abuse of Power (H)
						["qg"] = 48568,	-- Eitrigg
						["sourceQuest"] = 28438,	-- Trial by Magma (H)
						["coord"] = { 44.5, 44.4, BURNING_STEPPES },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/5 Blackrock Sergeant slain
							["providers"] = {
								{ "n", 48201 },	-- Blackrock Sergeant
								{ "i", 63390 },	-- Blackrock Cudgel of Discipline
							},
						}),
					},
				},
				q(28068, {	-- Adventurers Wanted: Blackrock Depths (A)
					["provider"] = { "o", 207304 },	-- Adventure Board
					["coord"] = { 72.9, 65.2, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { BLACKROCK_DEPTHS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] =
						-- #if AFTER SHADOWLANDS
						-- this quest was level locked for characters above level 56 before Shadowlands level squish
						lvlsquish(56, 56, 20),
						-- #else
						{ 48, 57 },
						-- #endif
				}),
				q(28069, {	-- Adventurers Wanted: Blackrock Depths (H)
					["provider"] = { "o", 207303 },	-- Adventure Board
					["coord"] = { 17.0, 51.7, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { BLACKROCK_DEPTHS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] =
						-- #if AFTER SHADOWLANDS
						-- this quest was level locked for characters above level 56 before Shadowlands level squish
						lvlsquish(56, 56, 20),
						-- #else
						{ 48, 57 },
						-- #endif
				}),
				q(7630, {	-- Arcanite
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["sourceQuests"] = {
						7626,	-- Bell of Dethmoora
						7627,	-- Wheel of the Black March
						7628,	-- Doomsday Candle
					},
					["coord"] = { 12.4, 31.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["cost"] = {
						-- #if AFTER TBC
						{ "i", 12360, 1 },	-- Arcanite Bar
						-- #else
						{ "i", 12360, 3 },	-- Arcanite Bar
						-- #endif
					},
					["lvl"] = 60,
				}),
				{	-- Assault on Dreadmaul Rock
					["allianceQuestData"] = q(28320, {	-- Assault on Dreadmaul Rock (A)
						["qg"] = 48306,	-- John J. Keeshan
						["sourceQuest"] = 28327,	-- Locked and Loaded (A)
						["coord"] = { 73.5, 67.2, BURNING_STEPPES },
					}),
					["hordeQuestData"] = q(28454, {	-- Assault on Dreadmaul Rock (H)
						["qg"] = 48565,	-- Ariok
						["sourceQuest"] = 28453,	-- Locked and Loaded (H)
						["coord"] = { 54.7, 24.5, BURNING_STEPPES },
					}),
					["timeline"] = { ADDED_4_0_1 },
					["groups"] = {
						objective(1, {	-- 0/200 Blackrock Invader slain
							["providers"] = {
								{ "n", 48432 },	-- Blackrock Invader
								{ "i", 63681 },	-- Horn of the Callers
							},
						}),
					},
				},
				q(7626, {	-- Bell of Dethmoora
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7564,	-- Wildeyes
					["coord"] = { 12.6, 31.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["cost"] = {
						-- #if AFTER TBC
						{ "i", 9264, 2 },	-- Elixir of Shadow Power
						-- #else
						{ "i", 9264, 10 },	-- Elixir of Shadow Power
						-- #endif
					},
					["lvl"] = 60,
				}),
				{	-- Blackened Ashes
					["allianceQuestData"] = q(28311, {	-- Blackened Ashes (A)
						["qg"] = 48307,	-- Colonel Troteman
						["sourceQuest"] = 28310,	-- Morgan's Vigil
						["coord"] = { 73.6, 67.1, BURNING_STEPPES },
					}),
					["hordeQuestData"] = q(28443, {	-- Blackened Ashes (H)
						["qg"] = 48569,	-- Eitrigg
						["sourceQuest"] = 28442,	-- Flame Crest
						["coord"] = { 54.6, 24.4, BURNING_STEPPES },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/9 Obsidian Ashes
							["provider"] = { "i", 63421 },	-- Obsidian Ashes
							["cr"] = 7032,	-- Greater Obsidian Elemental
						}),
					},
				},
				{	-- Blood Tour
					["allianceQuestData"] = q(28314, {	-- Blood Tour (A)
						["providers"] = {	-- Accepting any quest from the NPC turns him into a mobileNPC
						{ "n", 48306 },	-- John J. Keeshan
						{ "n", 48346 },	-- John J. Keeshan (Mobile)
					},
						["sourceQuests"] = {
							28313,	-- A Heap of Delicious Worg (A)
							28311,	-- Blackened Ashes (A)
							28312,	-- Latent Demons of the Land (A)
						},
						["coord"] = { 73.5, 67.2, BURNING_STEPPES },
					}),
					["hordeQuestData"] = q(28446, {	-- Blood Tour (H)
						["qg"] = 48565,	-- Ariok
						["sourceQuests"] = {
							28445,	-- A Heap of Delicious Worg (H)
							28443,	-- Blackened Ashes (H)
							28444,	-- Latent Demons of the Land (H)
						},
						["coord"] = { 54.7, 24.5, BURNING_STEPPES },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/25 Black Dragonspawn slain
							["providers"] = {
								{ "n", 7040 },	-- Black Dragonspawn
								{ "n", 7041 },	-- Black Wyrmkin
							},
						}),
					},
				},
				q(4726, {	-- Broodling Essence
					["qg"] = 10267,	-- Tinkee Steamboil
					["coord"] = { 65.2, 23.8, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/8 Broodling Essence
							["providers"] = {
								{ "i",  12283 },	-- Broodling Essence
								{ "i",  12284 },	-- Draco-Incarcinatrix 900
								{ "o", 175264 },	-- Broodling Essence
							},
							["crs"] = {
								7047,	-- Black Broodling
								7049,	-- Flamescale Broodling
								7048,	-- Scalding Broodling
							},
						}),
					},
				}),
				q(28174, {	-- Burning Vengeance (A)
					["qg"] = 47811,	-- John J. Keeshan
					["sourceQuest"] = 28666,	-- Hero's Call: Burning Steppes!
					["description"] = "Provided to players who DID NOT complete John J. Keeshan's questline in Redridge Mountains.",
					["coord"] = { 17.2, 52.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Blackrock Whelper slain
							["provider"] = { "n", 47782 },	-- Blackrock Whelper
						}),
						objective(2, {	-- 0/5 Flamescale Broodling slain
							["provider"] = { "n", 7049 },	-- Flamescale Broodling
						}),
					},
				}),
				q(28416, {	-- Burning Vengeance (A)
					["qg"] = 47811,	-- John J. Keeshan
					["sourceQuest"] = 28666,	-- Hero's Call: Burning Steppes!
					["description"] = "Provided to players who DID complete John J. Keeshan's questline in Redridge Mountains.",
					["coord"] = { 17.2, 52.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Blackrock Whelper slain
							["provider"] = { "n", 47782 },	-- Blackrock Whelper
						}),
						objective(2, {	-- 0/5 Flamescale Broodling slain
							["provider"] = { "n", 7049 },	-- Flamescale Broodling
						}),
					},
				}),
				q(28418, {	-- Burning Vengeance (H)
					["qg"] = 48559,	-- Ariok
					["sourceQuest"] = 28667,	-- Warchief's Command: Burning Steppes!
					["coord"] = { 17.4, 51.6, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Blackrock Whelper slain
							["provider"] = { "n", 47782 },	-- Blackrock Whelper
						}),
						objective(2, {	-- 0/5 Flamescale Broodling slain
							["provider"] = { "n", 7049 },	-- Flamescale Broodling
						}),
					},
				}),
				q(28184, {	-- Chiselgrip, the Heart of the Steppes (A)
					["qg"] = 47811,	-- John J. Keeshan
					["sourceQuests"] = {
						28172,	-- Done Nothing Wrong (A)
						28183,	-- Return to Keeshan (A)
					},
					["coord"] = { 17.2, 52.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Blackrock troop slain
							["providers"] = {
								{ "n", 48201 },	-- Blackrock Sergeant
								{ "n", 7027 },	-- Blackrock Slayer
								{ "n", 7025 },	-- Blackrock Soldier
								{ "n", 7026 },	-- Blackrock Sorcerer
								{ "n", 48121 },	-- Firegut Flamespeaker
								{ "n", 48120 },	-- Firegut Reaver
								{ "n", 48119 },	-- Smolderthorn Assassin
								{ "n", 48118 },	-- Smolderthorn Shaman
							},
						}),
						i(64510, {	-- Oreknuckle Gun
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64509, {	-- Unburdened Pauldrons
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64508, {	-- Black Tooth Helm
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64507, {	-- Vest of Welcome
							["timeline"] = { ADDED_4_0_1 },
						}),
					},
				}),
				q(28426, {	-- Chiselgrip, the Heart of the Steppes (H)
					["qg"] = 48559,	-- Ariok
					["sourceQuests"] = {
						28417,	-- Done Nothing Wrong (H)
						28425,	-- Return to Ariok (H)
					},
					["coord"] = { 17.4, 51.5, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Blackrock troop slain
							["providers"] = {
								{ "n", 48201 },	-- Blackrock Sergeant
								{ "n", 7027 },	-- Blackrock Slayer
								{ "n", 7025 },	-- Blackrock Soldier
								{ "n", 7026 },	-- Blackrock Sorcerer
								{ "n", 48121 },	-- Firegut Flamespeaker
								{ "n", 48120 },	-- Firegut Reaver
								{ "n", 48119 },	-- Smolderthorn Assassin
								{ "n", 48118 },	-- Smolderthorn Shaman
							},
						}),
						i(64514, {	-- Oreknuckle Gun
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64513, {	-- Unburdened Pauldrons
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64512, {	-- Black Tooth Helm
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64511, {	-- Vest of Welcome
							["timeline"] = { ADDED_4_0_1 },
						}),
					},
				}),
				q(7628, {	-- Doomsday Candle
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7564,	-- Wildeyes
					["coord"] = { 12.6, 31.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["cost"] = {
						-- #if AFTER TBC
						{ "i", 15416, 3},	-- 3x Black Dragonscal
						-- #else
						{ "i", 15416, 35},	-- 35x Black Dragonscale
						-- #endif
					},
					["lvl"] = 60,
				}),
				q(28172, {	-- Done Nothing Wrong (A)
					["qg"] = 47779,	-- Mouton Flamestar
					["sourceQuest"] = 28514,	-- Mouton Flamestar (A)
					["coord"] = { 16.9, 51.3, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Freed Red Whelpling
							["providers"] = {
								{ "i", 63114 },	-- Freed Red Whelpling
								{ "n", 47814 },	-- Fettered Red Whelpling
							},
						}),
						objective(2, {	-- 0/1 Freed Green Whelpling
							["providers"] = {
								{ "i", 63116 },	-- Freed Green Whelpling
								{ "n", 47820 },	-- Fettered Green Whelpling
							},
						}),
						objective(3, {	-- 0/1 Freed Blue Whelpling
							["providers"] = {
								{ "i", 63117 },	-- Freed Blue Whelpling
								{ "n", 47821 },	-- Fettered Blue Whelpling
							},
						}),
						objective(4, {	-- 0/1 Freed Bronze Whelpling
							["providers"] = {
								{ "i", 63119 },	-- Freed Bronze Whelpling
								{ "n", 47822 },	-- Fettered Bronze Whelpling
							},
						}),
						i(64496, {	-- Hatchlings' Protector
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64495, {	-- Whelp Keeper's Staff
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64497, {	-- Flamestar Amulet
							["timeline"] = { ADDED_4_0_1 },
						}),
					},
				}),
				q(28417, {	-- Done Nothing Wrong (H)
					["qg"] = 47779,	-- Mouton Flamestar
					["sourceQuest"] = 28515,	-- Mouton Flamestar (H)
					["coord"] = { 16.9, 51.3, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Freed Red Whelpling
							["providers"] = {
								{ "i", 63114 },	-- Freed Red Whelpling
								{ "n", 47814 },	-- Fettered Red Whelpling
							},
						}),
						objective(2, {	-- 0/1 Freed Green Whelpling
							["providers"] = {
								{ "i", 63116 },	-- Freed Green Whelpling
								{ "n", 47820 },	-- Fettered Green Whelpling
							},
						}),
						objective(3, {	-- 0/1 Freed Blue Whelpling
							["providers"] = {
								{ "i", 63117 },	-- Freed Blue Whelpling
								{ "n", 47821 },	-- Fettered Blue Whelpling
							},
						}),
						objective(4, {	-- 0/1 Freed Bronze Whelpling
							["providers"] = {
								{ "i", 63119 },	-- Freed Bronze Whelpling
								{ "n", 47822 },	-- Fettered Bronze Whelpling
							},
						}),
						i(64500, {	-- Flamestar Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64499, {	-- Hatchlings' Protector
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64498, {	-- Whelp Keeper's Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156964, {	-- Clutch Rearrangement Tool
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				{	-- Draconic Vanguard
					["allianceQuestData"] = q(28315, {	-- Draconic Vanguard (A)
						["providers"] = {	-- Accepting any quest from the NPC turns him into a mobileNPC
						{ "n", 48306 },	-- John J. Keeshan
						{ "n", 48346 },	-- John J. Keeshan (Mobile)
					},
						["sourceQuests"] = {
							28313,	-- A Heap of Delicious Worg (A)
							28311,	-- Blackened Ashes (A)
							28312,	-- Latent Demons of the Land (A)
						},
						["coord"] = { 73.5, 67.2, BURNING_STEPPES },
					}),
					["hordeQuestData"] = q(28447, {	-- Draconic Vanguard (H)
						["qg"] = 48565,	-- Ariok
						["sourceQuests"] = {
							28445,	-- A Heap of Delicious Worg (H)
							28443,	-- Blackened Ashes (H)
							28444,	-- Latent Demons of the Land (H)
						},
						["coord"] = { 54.7, 24.5, BURNING_STEPPES },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Whelptamer Akumi slain
							["provider"] = { "n", 48287 },	-- Whelptamer Akumi
							["coord"] = { 65.0, 60.0, BURNING_STEPPES },
						}),
						objective(2, {	-- 0/1 Terromath the Seared slain
							["provider"] = { "n", 48288 },	-- Terromath the Seared
							["coord"] = { 72.6, 27.6, BURNING_STEPPES },
						}),
						objective(3, {	-- 0/1 Minyoth slain
							["provider"] = { "n", 48289 },	-- Minyoth
							["coord"] = { 79.6, 51.2, BURNING_STEPPES },
						}),
						objective(4, {	-- 0/1 Tugnar Goremaw slain
							["provider"] = { "n", 48291 },	-- Tugnar Goremaw
							["coord"] = { 75.8, 37.6, BURNING_STEPPES },
						}),
					},
				},
				q(28286, {	-- Enough Damage For One Day (A)
					["qg"] = 48110,	-- Colonel Troteman
					["sourceQuest"] = 28279,	-- Abuse of Power (A)
					["coord"] = { 46.3, 45.9, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(64537, {	-- Breastplate of the Mobile Batallion
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64536, {	-- Gauntlents of Completion
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64535, {	-- Belt of Preparation
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64534, {	-- Kubit's Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64533, {	-- Stratagem Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28441, {	-- Enough Damage For One Day (H)
					["qg"] = 48568,	-- Eitrigg
					["sourceQuest"] = 28440,	-- Abuse of Power (H)
					["coord"] = { 44.5, 44.4, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(64542, {	-- Worn Argent Crusader's Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64541, {	-- Blackrock Shaman's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64540, {	-- Belt of Preparation
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64539, {	-- Kubit's Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64538, {	-- Stratagem Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(3823, {	-- Extinguish the Firegut
					["qg"] = 9177,	-- Oralius
					["coord"] = { 84.6, 68.8, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/15 Firegut Ogre Mage slain
							["provider"] = { "n", 7034 },	-- Firegut Ogre Mage
						}),
						objective(2, {	-- 0/7 Firegut Ogre slain
							["provider"] = { "n", 7033 },	-- Firegut Ogre
						}),
						objective(3, {	-- 0/7 Firegut Brute slain
							["provider"] = { "n", 7035 },	-- Firegut Brute
						}),
					},
				}),
				q(4808, {	-- Felnok Steelspring
					["providers"] = {
						{ "n", 10267 },	-- Tinkee Steamboil
						{ "i", 12438 },	-- Tinkee's Letter
					},
					["sourceQuest"] = 4726,	-- Broodling Essence
					["coord"] = { 65.2, 23.8, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 50,
				}),
				q(4283, {	-- FIFTY! YEP!
					["qg"] = 9177,	-- Oralius
					["coord"] = { 84.6, 68.8, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/50 Blackrock Medallion
							["provider"] = { "i", 11467 },	-- Blackrock Medallion
							["crs"] = {
								7029,	-- Blackrock Battlemaster
								7027,	-- Blackrock Slayer
								7025,	-- Blackrock Soldier
								7026,	-- Blackrock Sorcerer
								7028,	-- Blackrock Warlock
								7055,	-- Blackrock Worg
								10077,	-- Deathmaw
								9690,	-- Ember Worg
								9697,	-- Giant Ember Worg
								9694,	-- Slavering Ember Worg
							},
						}),
					},
				}),
				q(28442, {	-- Flame Crest
					["qg"] = 48568,	-- Eitrigg
					["sourceQuest"] = 28441,	-- Enough Damage for One Day (H)
					["coord"] = { 44.5, 44.4, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28265, {	-- General Thorg'izog (A)
					["qg"] = 48109,	-- John J. Keeshan
					["sourceQuests"] = {
						28227,	-- Golem Training
						28253,	-- Taking the Horn For Ourselves (A)
					},
					["coord"] = { 46.3, 46.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28437, {	-- General Thorg'izog (H)
					["qg"] = 48568,	-- Eitrigg
					["sourceQuests"] = {
						28227,	-- Golem Training
						28436,	-- Taking the Horn For Ourselves (H)
					},
					["coord"] = { 44.5, 44.4, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				{	-- Glory Amidst Chaos
					["allianceQuestData"] = q(28321, {	-- Glory Amidst Chaos (A)
						["qg"] = 48307,	-- Colonel Troteman
						["sourceQuest"] = 28320,	-- Assault on Dreadmaul Rock (A)
						["coord"] = { 73.6, 67.1, BURNING_STEPPES },
					}),
					["hordeQuestData"] = q(28455, {	-- Glory Amidst Chaos (H)
						["qg"] = 48569,	-- Eitrigg
						["sourceQuest"] = 28454,	-- Assault on Dreadmaul Rock (H)
						["coord"] = { 54.6, 24.5, BURNING_STEPPES },
					}),
					["timeline"] = { ADDED_4_0_1 },
					["groups"] = {
						objective(1, {	-- 0/1 General Thorg'izog slain
							["provider"] = { "n", 48316 },	-- General Thorg'izog
							["coord"] = { 66.48, 40.58, BURNING_STEPPES },
						}),
						objective(2, {	-- 0/1 Dragon-Lord Neeralak slain
							["provider"] = { "n", 48314 },	-- Dragon-Lord Neeralak
							["coord"] = { 64.33, 37.55, BURNING_STEPPES },
						}),
						objective(3, {	-- 0/1 High Warlock Xi'lun slain
							["provider"] = { "n", 48312 },	-- High Warlock Xi'lun
							["coord"] = { 69.62, 42.91, BURNING_STEPPES },
						}),
					},
				},
				q(28227, {	-- Golem Training
					["qg"] = 48033,	-- Stebben Oreknuckle
					["sourceQuests"] = {
						28225,	-- Prove Yer Allegiance
						28226,	-- Scrapped Golems
					},
					["coord"] = { 46.8, 44.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["groups"] = {
						objective(1, {	-- 0/4 Chiseled Golems trained
							["provider"] = { "n", 48037 },	-- Chiseled Golem <Thorium Brotherhood>
						}),
						i(64524, {	-- Chiselgrip Shield
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64523, {	-- Combat Training Vest
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64522, {	-- Bracers of Friendly Favors
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64521, {	-- Tutor's Cloak
							["timeline"] = { ADDED_4_0_1 },
						}),
					},
				}),
				q(3824, {	-- Gor'tesh the Brute Lord
					["qg"] = 9177,	-- Oralius
					["sourceQuest"] = 3823,	-- Extinguish the Firegut
					["coord"] = { 84.6, 68.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Gor'tesh's Lopped Off Head
							["provider"] = { "i", 11080 },	-- Gor'tesh's Lopped Off Head
							["coord"] = { 39.6, 55.6, BURNING_STEPPES },
							["cr"] = 9176,	-- Gor'tesh
						}),
					},
				}),
				{	-- Grunt Work
					["allianceQuestData"] = q(28245, {	-- Grunt Work (A)
						["sourceQuest"] = 28239,	-- Into the Black Tooth Hovel (A)
					}),
					["hordeQuestData"] = q(28433, {	-- Grunt Work (H)
						["sourceQuest"] = 28432,	-- Into the Black Tooth Hovel (H)
					}),
					["providers"] = {
						{ "n", 48085 },	-- Quartermaster Kaoshin
						{ "i", 63357 },	-- Blackrock Disguise
					},
					["coord"] = { 45.3, 51.7, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["groups"] = {
						objective(1, {	-- 0/7 Pairs of Blackrock Boots Polished
							["provider"] = { "o", 206977 },	-- Blackrock Boots
							["coord"] = { 39.1, 55.5, BURNING_STEPPES },
						}),
					},
				},
				heroscall(q(28666, {	-- Hero's Call: Burning Steppes!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { IRONFORGE, STORMWIND_CITY },	-- Only found in Ironforge & Stormwind City in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 49. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 50 (TODO: Test max level between 53 and 60)
					["lvl"] = { 49, 50 },
					-- #endif
				})),
				{	-- I Am the Law and I Am the Lash
					["allianceQuestData"] = q(28278, {	-- I Am the Law and I Am the Lash (A)
						["sourceQuest"] = 28266,	-- Trial by Magma (A)
					}),
					["hordeQuestData"] = q(28439, {	-- I Am the Law and I Am the Lash (H)
						["sourceQuest"] = 28438,	-- Trial by Magma (H)
					}),
					["providers"] = {
						{ "n", 48133 },	-- General Thorg'izog
						{ "i", 63357 },	-- Blackrock Disguise
					},
					["coord"] = { 30.6, 33.7, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/20 Blackrock minions cudgeled
							["provider"] = { "i", 63390 },	-- Blackrock Cudgel of Discipline
							["crs"] = {
								7025,	-- Blackrock Solder
								48121,	-- Firegut Flamespeaker
								48153,	-- Goblin Flamethrower
								48119,	-- Smolderthorn Assassin
							},
						}),
					},
				},
				q(7629, {	-- Imp Delivery
					["providers"] = {
						{ "n", 14437 },	-- Gorzeeki Wildeyes
						{ "i", 18688 },	-- Imp in a Jar
					},
					["sourceQuests"] = {
						7625,	-- Xorothian Stardust
						7630,	-- Arcanite
					},
					["coord"] = { 12.4, 31.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SCHOLOMANCE },
					["classes"] = { WARLOCK },
					["lvl"] = 60,
				}),
				q(28239, {	-- Into the Black Tooth Hovel (A)
					["providers"] = {
						{ "n", 48109 },	-- John J. Keeshan
						{ "i", 63357 },	-- Blackrock Disguise
					},
					["sourceQuests"] = { 28202, 28203, 28204, 28205 },	-- A Perfect Costume (A)
					["coord"] = { 46.3, 46.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28432, {	-- Into the Black Tooth Hovel (H)
					["providers"] = {
						{ "n", 48568 },	-- Eitrigg
						{ "i", 63357 },	-- Blackrock Disguise
					},
					["sourceQuests"] = { 28428, 28429, 28430, 28431 },	-- A Perfect Costume (H)
					["coord"] = { 44.5, 44.4, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(3822, {	-- Krom'Grul
					["qg"] = 9136,	-- Sha'ni Proudtusk
					["sourceQuest"] = 3821,	-- Dreadmaul Rock
					["coord"] = { 79.8, 45.4, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Sha'ni's Nose-Ring
							["provider"] = { "i", 11058 },	-- Sha'ni's Nose-Ring
							["cr"] = 3822,	-- Krom'Grul
						}),
						i(11869, {	-- Sha'ni's Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				{	-- Latent Demons of the Land
					["allianceQuestData"] = q(28312, {	-- Latent Demons of the Land (A)
						["qg"] = 48307,	-- Colonel Troteman
						["sourceQuest"] = 28310,	-- Morgan's Vigil
						["coord"] = { 73.6, 67.1, BURNING_STEPPES },
					}),
					["hordeQuestData"] = q(28444, {	-- Latent Demons of the Land (H)
						["qg"] = 48569,	-- Eitrigg
						["sourceQuest"] = 28442,	-- Flame Crest
						["coord"] = { 54.6, 24.4, BURNING_STEPPES },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/18 Fallen Flamekin
							["provider"] = { "i", 63423 },	-- Fallen Flamekin
							["crs"] = {
								9779,	-- Flamekin Rager
								9776,	-- Flamekin Spitter
								9778,	-- Flamekin Torcher
							},
						}),
					},
				},
				q(4481, {	-- Libram of Constitution
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 8411, 1 },	-- Lung Juice Cocktail
						{ "i", 11733, 1 },	-- Libram of Constitution
						{ "i", 11952, 4 },	-- Night Dragon's Breath
						{ "g", 300000 },	-- 30g
					},
					["lvl"] = 50,
					["groups"] = {
						i(11642, {	-- Lesser Arcanum of Constitution
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4483, {	-- Libram of Resilience
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11567, 4 },	-- Crystal Spire
						{ "i", 11751, 1 },	-- Burning Essence
						{ "i", 11736, 1 },	-- Libram of Resilience
						{ "g", 300000 },	-- 30g
					},
					["lvl"] = 50,
					["groups"] = {
						i(11644, {	-- Lesser Arcanum of Resilience
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4463, {	-- Libram of Rumination
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11752, 1 },	-- Black Blood of the Tormented
						{ "i", 8424, 1 },	-- Gizzard Gum
						{ "i", 11732, 1 },	-- Libram of Rumination
						{ "g", 300000 },	-- 30g
					},
					["lvl"] = 50,
					["groups"] = {
						i(11622, {	-- Lesser Arcanum of Rumination
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4482, {	-- Libram of Tenacity
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11734, 1 },	-- Libram of Tenacity
						{ "i", 11564, 4 },	-- Crystal Ward
						{ "i", 11753, 1 },	-- Eye of Kajal
						{ "g", 300000 },	-- 30g
					},
					["lvl"] = 50,
					["groups"] = {
						i(11643, {	-- Lesser Arcanum of Tenacity
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4484, {	-- Libram of Voracity
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65, 23.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["repeatable"] = true,
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11737, 1 },	-- Libram of Voracity
						{ "i", 11951, 4 },	-- Whipper Root Tuber
						{ "i", 11563, 4 },	-- Crystal Force
						{ "g", 300000 },	-- 30g
					},
					["lvl"] = 50,
					["groups"] = {
						i(11647, {	-- Lesser Arcanum of Voracity
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11648, {	-- Lesser Arcanum of Voracity
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11649, {	-- Lesser Arcanum of Voracity
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11645, {	-- Lesser Arcanum of Voracity
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11646, {	-- Lesser Arcanum of Voracity
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28327, {	-- Locked and Loaded (A)
					["sourceQuests"] = {
						28318,	-- A Delivery for Neeralak (A)
						28317,	-- A Delivery for Thorg'izog (A)
						28319,	-- A Delivery for Xi'lun (A)
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(64563, {	-- Bracers of Misbehavior
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64562, {	-- Mischievous Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64561, {	-- Sly Slider Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64560, {	-- Faux Warlock Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64559, {	-- Glassy Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28453, {	-- Locked and Loaded (H)
					["qg"] = 48569,	-- Eitrigg
					["sourceQuests"] = {
						28451,	-- A Delivery for Neeralak (H)
						28450,	-- A Delivery for Thorg'izog (H)
						28452,	-- A Delivery for Xi'lun (H)
					},
					["coord"] = { 54.6, 24.4, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(64568, {	-- Bracers of Misbehavior
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64567, {	-- Mischievous Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64566, {	-- Sly Slider Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64565, {	-- Faux Warlock Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64564, {	-- Glassy Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(7623, {	-- Lord Banehollow
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					-- #if BEFORE TBC
					["sourceQuest"] = 7564,	-- Wildeyes
					-- #endif
					-- #if BEFORE 4.0.3
					["description"] = "Do not leave Burning Steppes without purchasing a Shadowy Potion or two.",
					-- #endif
					["coord"] = { 12.4, 31.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FELWOOD },
					["cost"] = { { "i", 18802, 1 } },	-- Shadowy Potion
					["classes"] = { WARLOCK },
					["lvl"] = 60,
				}),
				q(7562, {	-- Mor'zul Bloodbringer
					["allianceQuestData"] = {
						["qgs"] = {
							6382,	-- Jubahl Corpseseeker <Demon Trainer>
							5520,	-- Spackle Thornberry <Demon Trainer>
						},
						["coords"] = {
							{ 52.8, 6.0, IRONFORGE },
							{ 25.8, 77.6, STORMWIND_CITY },
						},
					},
					["hordeQuestData"] = {
						["qgs"] = {
							5815,	-- Kurgul <Demon Trainer>
							5753,	-- Martha Strain <Demon Trainer>
						},
						["coords"] = {
							{ 47.6, 46.8, ORGRIMMAR },
							{ 85.8, 15.8, UNDERCITY },
						},
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 60,
				}),
				q(28310, {	-- Morgan's Vigil
					["qg"] = 48110,	-- Colonel Troteman
					["sourceQuest"] = 28286,	-- Enough Damage for One Day (A)
					["coord"] = { 46.3, 46.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28179, {	-- Mud Hunter (A)
					["qg"] = 47811,	-- John J. Keeshan
					["sourceQuests"] = { 28174, 28416 },	-- Burning Vengeance (A)
					["coord"] = { 17.2, 52.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/9 Obsidian-Flecked Mud
							["providers"] = {
								{ "i",  63124 },	-- Obsidian-Flecked Mud
								{ "o", 206853 },	-- Obsidian-Flecked Mud
							},
							["coord"] = { 16.7, 42.7, BURNING_STEPPES },
						}),
						i(64505, {	-- Obsidian-Flecked Cowl
							["timeline"] = { ADDED_4_0_1 },
						}),
					},
				}),
				q(28421, {	-- Mud Hunter (H)
					["qg"] = 48559,	-- Ariok
					["sourceQuest"] = 28418,	-- Burning Vengeance (H)
					["coord"] = { 17.4, 51.6, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/9 Obsidian-Flecked Mud
							["providers"] = {
								{ "i",  63124 },	-- Obsidian-Flecked Mud
								{ "o", 206853 },	-- Obsidian-Flecked Mud
							},
							["coord"] = { 16.7, 42.7, BURNING_STEPPES },
						}),
						i(64506, {	-- Obsidian-Flecked Cowl
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28491, {	-- Not Fireflies, Flameflies
					["qg"] = 10260,	-- Kibler
					["sourceQuest"] = 28442,	-- Flame Crest
					["coord"] = { 54.9, 22.5, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Flamefly
							["providers"] = {
								{ "n", 48671 },	-- Flamefly
								{ "i", 64409 },	-- Flamefly
							},
						}),
						i(64558, {	-- Lava Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64557, {	-- Flamefly Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64556, {	-- Petting Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						-- #if BEFORE MOP
						i(64555, {	-- Kibler's Fetch Toy
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
						i(66080, {	-- Tiny Flamefly (PET!)
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(3825, {	-- Ogre Head On A Stick = Party
					["qg"] = 9177,	-- Oralius
					["sourceQuest"] = 3824,	-- Gor'tesh the Brute Lord
					["coord"] = { 84.6, 68.8, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- Gor'tesh Head Planted
							["providers"] = {
								{ "i",  11079 },	-- Gor'tesh's Lopped Off Head
								{ "o", 160840 },	-- Soft Dirt Mound
							},
							["coord"] = { 81, 46, BURNING_STEPPES },
						}),
						i(11867, {	-- Maddening Gauntlets
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11868, {	-- Choking Band
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28326, {	-- Placing the Pawns (A)
					["qg"] = 48307,	-- Colonel Troteman
					["sourceQuests"] = {
						28316,	-- A Deal With a Dragon (A)
						28314,	-- Blood Tour (A)
						28315,	-- Draconic Vanguard (A)
					},
					["coord"] = { 73.6, 67.1, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(64546, {	-- Breastplate of the Undercover Thorium Brother
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64545, {	-- Subversive Steps
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64544, {	-- Bracers of Vigil
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64543, {	-- Pawn's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28449, {	-- Placing the Pawns (H)
					["qg"] = 48569,	-- Eitrigg
					["sourceQuests"] = {
						28448,	-- A Deal With a Dragon (H)
						28446,	-- Blood Tour (H)
						28447,	-- Draconic Vanguard (H)
					},
					["coord"] = { 54.6, 24.4, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(64550, {	-- Breastplate of the Undercover Thorium Brother
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64549, {	-- Subversive Steps
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64548, {	-- Flame Crest Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64547, {	-- Pawn's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28225, {	-- Prove Yer Allegiance
					["qg"] = 48033,	-- Stebben Oreknuckle
					["sourceQuests"] = { 28184, 28426 },	-- Chiselgrip, the Heart of the Steppes (A/H versions)
					["coord"] = { 46.7, 44.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["groups"] = {
						objective(1, {	-- 0/10 Thaurissan dwarf slain
							["providers"] = {
								{ "n", 7038 },	-- Thaurissan Agent
								{ "n", 7037 },	-- Thaurissan Firewalker
								{ "n", 7036 },	-- Thaurissan Spy
							},
						}),
					},
				}),
				q(7563, {	-- Rage of Blood
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7562,	-- Mor'zul Bloodbringer
					["coord"] = { 12.6, 31.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WINTERSPRING },
					["classes"] = { WARLOCK },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/30 Raging Beast's Blood
							["provider"] = { "i", 18590 },	-- Raging Beast's Blood
							["crs"] = {
								7453,	-- Moontouched Owlbeast
								7454,	-- Berserk Owlbeast
								7452,	-- Crazed Owlbeast
								7451,	-- Raging Owlbeast
								7450,	-- Ragged Owlbeast
							},
						}),
					},
				}),
				q(28425, {	-- Return to Ariok
					["providers"] = {
						{ "n", 14437 },	-- Gorzeeki Wildeyes
						{ "i", 63354 },	-- Warlock Supplies
					},
					["sourceQuests"] = {
						28424,	-- Shadow Boxing (A)
						28423,	-- Warlocks Have the Neatest Stuff (A)
					},
					["coord"] = { 8.3, 35.7, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28183, {	-- Return to Keeshan
					["providers"] = {
						{ "n", 14437 },	-- Gorzeeki Wildeyes
						{ "i", 63354 },	-- Warlock Supplies
					},
					["sourceQuests"] = {
						28182,	-- Shadow Boxing (H)
						28181,	-- Warlocks Have the Neatest Stuff (H)
					},
					["coord"] = { 8.3, 35.7, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28226, {	-- Scrapped Golems
					["qg"] = 48033,	-- Stebben Oreknuckle
					["sourceQuests"] = { 28184, 28426 },	-- Chiselgrip, the Heart of the Steppes (A/H versions)
					["coord"] = { 46.7, 44.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["groups"] = {
						objective(1, {	-- 0/3 Obsidian Piston
							["provider"] = { "i", 63333 },	-- Obsidian Piston
							["cr"] = 7039,	-- War Reaver
						}),
						objective(2, {	-- 0/1 Flux Exhaust Sieve
							["provider"] = { "i", 63336 },	-- Flux Exhaust Sieve
							["cr"] = 7039,	-- War Reaver
						}),
						objective(3, {	-- 0/1 Thorium Gearshaft
							["provider"] = { "i", 63335 },	-- Thorium Gearshaft
							["cr"] = 7039,	-- War Reaver
						}),
						objective(4, {	-- 0/1 Stone Power Core
							["provider"] = { "i", 63334 },	-- Stone Power Core
							["cr"] = 7039,	-- War Reaver
						}),
					},
				}),
				q(28415, {	-- SEVEN! YUP!
					["qg"] = 9177,	-- Oralius
					["sourceQuest"] = 28310,	-- Morgan's Vigil
					["coord"] = { 71.8, 67.9, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Flamefly
							["providers"] = {
								{ "n", 48671 },	-- Flamefly
								{ "i", 64409 },	-- Flamefly
							},
						}),
						i(64554, {	-- Gor'Tesh's Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64553, {	-- Flamefly Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64552, {	-- Belly Rubbers
							["timeline"] = { ADDED_4_0_3 },
						}),
						-- #if BEFORE MOP
						i(64551, {	-- Winky's Star
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
						i(66080, {	-- Tiny Flamefly (PET!)
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				{	-- Shadow Boxing
					["allianceQuestData"] = q(28182, {	-- Shadow Boxing (A)
						["sourceQuest"] = 28180,	-- The Sand, the Cider, and the Orb (A)
					}),
					["hordeQuestData"] = q(28424, {	-- Shadow Boxing (H)
						["sourceQuest"] = 28422,	-- The Sand the Cider, and the Orb (H)
					}),
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["coord"] = { 8.3, 35.7, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Ner'gosh the Shadow slain
							["provider"] = { "n", 47805 },	-- Ner'gosh the Shadow
						}),
					},
				},
				q(28177, {	-- Stocking Up (A)
					["qg"] = 47811,	-- John J. Keeshan
					["sourceQuests"] = { 28174, 28416 },	-- Burning Vengeance (A)
					["coord"] = { 17.2, 52.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Razor-Sharp Scorpid Barb
							["provider"] = { "i", 63135 },	-- Razor-Sharp Scorpid Barb
							["cr"] = 9691,	-- Venomtip Scorpid
						}),
						i(64501, {	-- Sharp Scorpid Barb
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(156965, {	-- Enchanted Scorpid Tail
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(157011, {	-- Envenomed Scorpid Tail
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(28419, {	-- Stocking Up (H)
					["qg"] = 48559,	-- Ariok
					["sourceQuest"] = 28418,	-- Burning Vengeance (H)
					["coord"] = { 17.4, 51.6, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Razor-Sharp Scorpid Barb
							["provider"] = { "i", 63135 },	-- Razor-Sharp Scorpid Barb
							["cr"] = 9691,	-- Venomtip Scorpid
						}),
						i(64502, {	-- Sharp Scorpid Barb
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156965, {	-- Enchanted Scorpid Tail
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				{	-- Strategic Cuts
					["allianceQuestData"] = q(28246, {	-- Strategic Cuts (A)
						["qg"] = 48110,	-- Colonel Troteman
						["sourceQuest"] = 28245,	-- Grunt Work (A)
						["coord"] = { 46.3, 45.9, BURNING_STEPPES },
					}),
					["hordeQuestData"] = q(28434, {	-- Strategic Cuts (H)
						["qg"] = 28432,	-- Eitrigg
						["sourceQuest"] = 28433,	-- Grunt Work (H)
						["coord"] = { 44.5, 44.4, BURNING_STEPPES },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Gorlop slain
							["providers"] = {
								{ "n", 9176 },	-- Gorlop
								{ "i", 63350 },	-- Razor-Sharp Scorpid Barb
							},
							["coord"] = { 40.8, 60.2, BURNING_STEPPES },
						}),
						objective(2, {	-- 0/1 Worgmistress Othana slain
							["providers"] = {
								{ "n", 48099 },	-- Worgmistress Othana
								{ "i", 63350 },	-- Razor-Sharp Scorpid Barb
							},
							["coord"] = { 39.2, 56.6, BURNING_STEPPES },
						}),
						objective(3, {	-- 0/1 Voodooist Timan slain
							["providers"] = {
								{ "n", 48100 },	-- Voodooist Timan
								{ "i", 63350 },	-- Razor-Sharp Scorpid Barb
							},
							["coord"] = { 45.2, 52.6, BURNING_STEPPES },
						}),
					},
				},
				q(4296, {	-- Tablet of the Seven
					["qg"] = 9536,	-- Maxwort Uberglint
					["coord"] = { 65.2, 23.8, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Tablet Transcript
							["providers"] = {
								{ "i",  11470 },	-- Tablet Transcript
								{ "o", 169294 },	-- Tablet of the Seven
							},
							["coord"] = { 53, 40, BURNING_STEPPES },
						}),
					},
				}),
				q(28253, {	-- Taking the Horn For Ourselves (A)
					["providers"] = {
						{ "n", 48110 },	-- Colonel Troteman
						{ "i", 63358 },	-- Horn of the Callers
					},
					["sourceQuests"] = {
						28246,	-- Strategic Cuts (A)
						28252,	-- The Kodocaller's Horn (A)
					},
					["coord"] = { 46.3, 45.9, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(64517, {	-- Helm of Serendipity
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64516, {	-- Improvised Breastplate
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64515, {	-- Leggings of the Steppes
							["timeline"] = { ADDED_4_0_1 },
						}),
					},
				}),
				q(28436, {	-- Taking the Horn For Ourselves (H)
					["providers"] = {
						{ "n", 48568 },	-- Eitrigg
						{ "i", 63358 },	-- Horn of the Callers
					},
					["sourceQuests"] = {
						28434,	-- Strategic Cuts (H)
						28435,	-- The Kodocaller's Horn (H)
					},
					["coord"] = { 44.5, 44.4, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(64520, {	-- Helm of Serendipity
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64519, {	-- Improvised Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64518, {	-- Leggings of the Steppes
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				{	-- The Kodocaller's Horn
					["allianceQuestData"] = q(28252, {	-- The Kodocaller's Horn (A)
						["sourceQuest"] = 28245,	-- Grunt Work (A)
					}),
					["hordeQuestData"] = q(28435, {	-- The Kodocaller's Horn (H)
						["sourceQuest"] = 28433,	-- Grunt Work (H)
					}),
					["qg"] = 48085,	-- Quartermaster Kaoshin
					["coord"] = { 45.3, 51.7, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["groups"] = {
						objective(1, {	-- 0/7 Blackrock War Kodos summoned back to camp
							["providers"] = {
								{ "n", 48111 },	-- Blackrock War Kodo
								{ "i", 63356 },	-- Horn of the Callers
							},
						}),
					},
				},
				q(28180, {	-- The Sand, the Cider, and the Orb (A)
					["qg"] = 47811,	-- John J. Keeshan
					["sourceQuests"] = {
						28178,	-- A Future Project (A)
						28179,	-- Mud Hunter (A)
						28177,	-- Stocking Up (A)
					},
					["coord"] = { 17.2, 52.0, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28422, {	-- The Sand, the Cider, and the Orb (H)
					["qg"] = 48559,	-- Ariok
					["sourceQuests"] = {
						28420,	-- A Future Project (H)
						28421,	-- Mud Hunter (H)
						28419,	-- Stocking Up (H)
					},
					["coord"] = { 17.4, 51.6, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28322, {	-- The Spoils of War (A)
					["providers"] = {
						{ "n",  48307 },	-- Colonel Troteman
						{ "o", 207125 },	-- Crate of Left Over Supplies
					},
					["sourceQuest"] = 28321,	-- Glory Amidst Chaos (A)
					["coord"] = { 73.6, 67.1, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(64574, {	-- Golem-Smasher's Grips
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64573, {	-- Razor-Sharp Scorpid Belt
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64572, {	-- Ember Worg Boots
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64571, {	-- Xi'lun's Signet
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64569, {	-- Obsidian-Flecked Cape
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(64570, {	-- Cracked Orb of Dominion
							["timeline"] = { ADDED_4_0_1 },
						}),
					},
				}),
				q(28456, {	-- The Spoils of War (H)
					["providers"] = {
						{ "n",  48569 },	-- Eitrigg
						{ "o", 207125 },	-- Crate of Left Over Supplies
					},
					["sourceQuest"] = 28455,	-- Glory Amidst Chaos (H)
					["coord"] = { 54.6, 24.4, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(64580, {	-- Golem-Smasher's Grips
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64579, {	-- Razor-Sharp Scorpid Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64578, {	-- Ember Worg Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64577, {	-- Xi'lun's Signet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64575, {	-- Obsidian-Flecked Cape
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64576, {	-- Cracked Orb of Dominion
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28266, {	-- Trial by Magma (A)
					["qg"] = 48133,	-- General Thorg'izog
					["sourceQuest"] = 28265,	-- General Thorg'izog (A)
					["coord"] = { 30.6, 33.7, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Magma Lord Kolob slain
							["provider"] = { "n", 48156 },	-- Magma Lord Kolob
						}),
						i(64527, {	-- Bracers of Gladiatorial Combat
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64526, {	-- Poorly Styled Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64525, {	-- Magma Lord Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28438, {	-- Trial by Magma (H)
					["qg"] = 48133,	-- General Thorg'izog
					["sourceQuest"] = 28437,	-- General Thorg'izog (H)
					["coord"] = { 30.6, 33.7, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Magma Lord Kolob slain
							["provider"] = { "n", 48156 },	-- Magma Lord Kolob
						}),
						i(64532, {	-- Thorg'izog's Band
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64531, {	-- Bracers of Gladiatorial Combat
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64530, {	-- Poorly Styled Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64529, {	-- Magma Lord Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				warchiefscommand(q(28667, {	-- Warchief's Command: Burning Steppes!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { SILVERMOON_CITY, UNDERCITY },	-- Only found in Silvermoon City & Undercity in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 49. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 51. (TODO: Test max level)
					["lvl"] = { 49, 51 },
					-- #endif
				})),
				{	-- Warlocks Have the Neatest Stuff
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["allianceQuestData"] = q(28181, {	-- Warlocks Have the Neatest Stuff (A)
						["sourceQuest"] = 28180,	-- The Sand, the Cider, and the Orb (A)
					}),
					["hordeQuestData"] = q(28423, {	-- Warlocks Have the Neatest Stuff (H)
						["sourceQuest"] = 28422,	-- The Sand, the Cider, and the Orb (H)
					}),
					["coord"] = { 8.3, 35.7, BURNING_STEPPES },
					["timeline"] = { ADDED_4_0_1 },
					["groups"] = {
						objective(1, {	-- 0/1 Clear Glass Orb
							["provider"] = { "i", 63134 },	-- Clear Glass Orb
							["cr"] = 7028,	-- Blackrock Warlock
						}),
						objective(2, {	-- 0/1 Slumber Sand
							["providers"] = {
								{ "i",  63132 },	-- Slumber Sand
								{ "o", 206881 },	-- Slumber Sand
							},
							["coord"] = { 5.5, 31.9, BURNING_STEPPES },
						}),
						objective(3, {	-- 0/1 Fel Slider Cider
							["providers"] = {
								{ "i",  63133 },	-- Fel Slider Cider
								{ "o", 206882 },	-- Fel Slider Cider
							},
							["coord"] = { 5.2, 31.1, BURNING_STEPPES },
						}),
					},
				},
				q(7627, {	-- Wheel of the Black March
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["sourceQuest"] = 7564,	-- Wildeyes
					["coord"] = { 12.6, 31.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 14344, 6 },	-- Large Brilliant Shard
						{ "i", 11370, 25 },	-- Dark Iron Ore
					},
					["lvl"] = 60,
				}),
				q(7564, {	-- Wildeyes
					["providers"] = {
						{ "n", 14436 },	-- Mor'zul Bloodbringer
						{ "i", 18591 },	-- Case of Blood
					},
					["sourceQuest"] = 7563,	-- Rage of Blood
					["coord"] = { 12.6, 31.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 60,
				}),
				q(44927, {	-- Worth Its Weight in Steel
					["qg"] = 115805,	-- Hoddruc Bladebender
					["sourceQuest"] = 44926,	-- A Familiar Axe to Grind
					["coord"] = { 46.8, 44.9, BURNING_STEPPES },
					["timeline"] = { ADDED_7_1_5 },
					["requireSkill"] = BLACKSMITHING,
					["groups"] = {
						objective(1, {	-- 0/30 Axe Blade
							["provider"] = { "i", 142345 },	-- Axe Blade
							["crs"] = {
								48201,	-- Blackrock Sergeant
								7027,	-- Blackrock Slayer
								7025,	-- Blackrock Soldier
								48120,	-- Firegut Reaver
							},
						}),
						i(142346, {	-- Plans: Bleakwood Hew (RECIPE!)
							["timeline"] = { ADDED_7_1_5 },
						}),
					},
				}),
			}),
			n(RARES, {
				n(50725, {	-- Azelisk
					["coord"] = { 71.8, 23.0, BURNING_STEPPES },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(50807, {	-- Catal
					["coord"] = { 64.6, 54.8, BURNING_STEPPES },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(50792, {	-- Chiaa
					["coord"] = { 35.4, 26.8, BURNING_STEPPES },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(10077, {	-- Deathmaw
					["coords"] = {
						-- #if AFTER CATA
						{ 63.2, 32.2, BURNING_STEPPES },
						{ 70.6, 31.0, BURNING_STEPPES },
						{ 73.3, 51.7, BURNING_STEPPES },
						{ 68.4, 55.2, BURNING_STEPPES },
						{ 70.2, 56.8, BURNING_STEPPES },
						{ 72.2, 59.0, BURNING_STEPPES },
						-- #else
						{ 75.2, 33.2, BURNING_STEPPES },
						{ 82.6, 31.0, BURNING_STEPPES },
						{ 87.6, 50.6, BURNING_STEPPES },
						{ 81.2, 59.2, BURNING_STEPPES },
						-- #endif
					},
				}),
				n(50810, {	-- Favored of Isiset
					["coords"] = {
						{ 74.2, 52.0, BURNING_STEPPES },
						{ 75.4, 51.8, BURNING_STEPPES },
						{ 75.6, 53.4, BURNING_STEPPES },
					},
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(9604, {	-- Gorgon'och
					["coords"] = {
						-- #if AFTER CATA
						{ 64.0, 46.4, BURNING_STEPPES },
						-- #else
						{ 77.2, 43.0, BURNING_STEPPES },
						{ 80.8, 44.8, BURNING_STEPPES },
						-- #endif
					},
				}),
				n(8979, {	-- Gruklash
					["coords"] = {
						-- #if AFTER CATA
						{ 33.6, 37.0, BURNING_STEPPES },
						-- #else
						{ 16.0, 30.2, BURNING_STEPPES },
						{ 40.6, 35.8, BURNING_STEPPES },
						{ 42.6, 51.4, BURNING_STEPPES },
						{ 48.0, 62.2, BURNING_STEPPES },
						-- #endif
					},
				}),
				n(9602, {	-- Hahk'Zor
					["coords"] = {
						-- #if AFTER CATA
						{ 68.6, 40.6, BURNING_STEPPES },
						-- #else
						{ 79.2, 42.2, BURNING_STEPPES },
						{ 78.6, 44.6, BURNING_STEPPES },
						{ 80.8, 48.6, BURNING_STEPPES },
						{ 82.8, 42.8, BURNING_STEPPES },
						-- #endif
					},
				}),
				n(8976, {	-- Hematos
					["coords"] = {
						-- #if AFTER CATA
						{ 26.4, 58.2, BURNING_STEPPES },
						{ 27.6, 59.4, BURNING_STEPPES },
						{ 28.0, 60.0, BURNING_STEPPES },
						-- #else
						{ 18.2, 46.8, BURNING_STEPPES },
						{ 16.6, 56.2, BURNING_STEPPES },
						{ 24.8, 58.6, BURNING_STEPPES },
						{ 34.2, 53.4, BURNING_STEPPES },
						-- #endif
					},
				}),
				n(50855, {	-- Jaxx the Rabid
					["coord"] = { 47.0, 24.2, BURNING_STEPPES },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(50842, {	-- Magmagan
					["coords"] = {
						{ 29.2, 31.4, BURNING_STEPPES },
						{ 29.0, 34.8, BURNING_STEPPES },
						{ 28.8, 33.0, BURNING_STEPPES },
					},
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(8981, {	-- Malfunctioning Reaver
					["coords"] = {
						-- #if AFTER CATA
						{ 51.0, 36.8, BURNING_STEPPES },
						{ 52.6, 38.6, BURNING_STEPPES },
						{ 55.2, 43.0, BURNING_STEPPES },
						{ 53.6, 36.6, BURNING_STEPPES },
						-- #else
						{ 76.6, 30.6, BURNING_STEPPES },
						{ 87.4, 31.0, BURNING_STEPPES },
						{ 90.6, 46.8, BURNING_STEPPES },
						{ 86.2, 57.4, BURNING_STEPPES },
						-- #endif
					},
				}),
				n(50361, {	-- Ornat
					["coord"] = { 50.6, 60.6, BURNING_STEPPES },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(50357, {	-- Sunwing
					["coords"] = {
						{ 8.4, 54.6, BURNING_STEPPES },
						{ 9.8, 54.4, BURNING_STEPPES },
						{ 9.4, 53.4, BURNING_STEPPES },
					},
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(10078, {	-- Terrorspark
					["coords"] = {
						-- #if AFTER CATA
						{ 57.0, 31.4, BURNING_STEPPES },
						{ 56.2, 33.0, BURNING_STEPPES },
						{ 58.0, 33.6, BURNING_STEPPES },
						-- #else
						{ 16.4, 24.2, BURNING_STEPPES },
						{ 42.0, 46.2, BURNING_STEPPES },
						{ 47.6, 43.2, BURNING_STEPPES },
						{ 51.8, 43.6, BURNING_STEPPES },
						{ 63.6, 37.6, BURNING_STEPPES },
						{ 69.4, 32.6, BURNING_STEPPES },
						-- #endif
					},
				}),
				n(8978, {	-- Thauris Balgarr
					["coords"] = {
						-- #if AFTER CATA
						{ 43.8, 39.8, BURNING_STEPPES },
						-- #else
						{ 53.2, 40.6, BURNING_STEPPES },
						{ 56.2, 35.2, BURNING_STEPPES },
						{ 55.2, 43.2, BURNING_STEPPES },
						{ 61.8, 37.6, BURNING_STEPPES },
						{ 66.6, 44.8, BURNING_STEPPES },
						{ 71.8, 36.4, BURNING_STEPPES },
						-- #endif
					},
				}),
				n(50730, {	-- Venomspine
					["coord"] = { 5.8, 38.2, BURNING_STEPPES },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(10119, {	-- Volchan
					["coords"] = {
						-- #if AFTER CATA
						{ 19.6, 42.6, BURNING_STEPPES },
						{ 19.8, 41.4, BURNING_STEPPES },
						{ 21.2, 42.4, BURNING_STEPPES },
						{ 22.6, 41.8, BURNING_STEPPES },
						-- #else
						{ 77.0, 31.2, BURNING_STEPPES },
						{ 91.2, 33.4, BURNING_STEPPES },
						{ 90.2, 45.6, BURNING_STEPPES },
						{ 87.8, 59.0, BURNING_STEPPES },
						{ 81.8, 61.0, BURNING_STEPPES },
						{ 72.0, 55.6, BURNING_STEPPES },
						{ 72.0, 43.6, BURNING_STEPPES },
						{ 73.8, 35.6, BURNING_STEPPES },
						-- #endif
					},
					["groups"] = {
						i(12828, {	-- Plans: Volcanic Hammer (RECIPE!)
							["timeline"] = { ADDED_1_0_1, REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_FOUR, i(226407, {	-- Rune of Axe Specialization
					["provider"] = { "o", 457101 },	-- The Rites of Mak'Gora
					["timeline"] = { ADDED_1_15_3 },
					["coord"] = { 40.0, 34.5, BURNING_STEPPES },
					["classes"] = { WARRIOR, PALADIN, HUNTER, SHAMAN },
					["groups"] = {
						recipe(453688, {	-- Engrave Ring - Axe Specialization
							["classes"] = { WARRIOR, PALADIN, HUNTER, SHAMAN },
						}),
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(1296, {	-- Felder Stover <Weaponsmith>
					["coord"] = { 72.9, 65.8, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2528,	-- Falchion
						2530,	-- Francisca
						2531,	-- Great Axe
						2532,	-- Morning Star
						2534,	-- Rondel
						2533,	-- War Maul
						2535,	-- War Staff
						2529,	-- Zweihander
					}},
				}),
				n(14437, {	-- Gorzeeki Wildeyes
					-- #if AFTER 4.0.3
					["description"] = "The following items are only available to Warlocks that completed the original |cFFFFD700Dreadsteed of Xoroth|r quest chain.",
					["sourceQuest"] = 7631,	-- Dreadsteed of Xoroth
					-- #endif
					["coord"] = { 12.6, 31.6, BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["groups"] = {
						i(18629, {	-- Black Lodestone
							["cost"] = { { "g", 500000 } },	-- 50g
						}),
						i(18663, {	-- J'eevee's Jar
							["cost"] = { { "g", 1500000 } },	-- 150g
						}),
						i(18802, {	-- Shadowy Potion
							["cost"] = { { "g", 60000 } },	-- 6g
						}),
						i(18670, {	-- Xorothian Glyphs
							["cost"] = { { "g", 500000 } },	-- 50g
						}),
					},
				}),
				n(115805, {	-- Hoddruc Bladebender
					["sourceQuest"] = 44927,	-- Worth Its Weight in Steel
					["coord"] = { 46.9, 44.6, BURNING_STEPPES },
					["timeline"] = { ADDED_7_1_5 },
					["groups"] = {
						i(142346, {	-- Plans: Bleakwood Hew (RECIPE!)
							["timeline"] = { ADDED_7_1_5 },
						}),
					},
				}),
				-- #if BEFORE 4.0.3
				n(9544, {	-- Yuka Screwspigot
					["coord"] = { 66.0, 22.0, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["groups"] = {
						i(10602, {	-- Schematic: Deadly Scope (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				-- #endif
			}),
			n(ZONE_DROPS, {
				-- #if AFTER 4.0.3
				i(10822, {	-- Dark Whelpling (PET!)
					["cr"] = 7049,	-- Flamescale Broodling
				}),
				-- #endif
				i(14482, {	-- Pattern: Cindercloth Cloak (RECIPE!)
					["cr"] = 7037,	-- Thaurissan Firewalker
					["coords"] = {
						{43.8, 39.4, BURNING_STEPPES},
						{58.8, 37.2, BURNING_STEPPES},
					},
				}),
				i(14490, {	-- Pattern: Cindercloth Pants
					["cr"] = 7037,	-- Thaurissan Firewalker (RECIPE!)
					["coords"] = {
						{43.8, 39.4, BURNING_STEPPES},
						{58.8, 37.2, BURNING_STEPPES},
					},
				}),
				i(15738, {	-- Pattern: Heavy Scorpid Gauntlets (RECIPE!)
					-- #if AFTER 10.0.5
					["description"] = "Killing the mobs at one of the coordinates, respawns them instantly at the other and vice versa. Farmed with a second person, you get all recipes within 2-3 minutes.",
					-- #endif
					["coords"] = {
						{ 34.8, 36.3, BURNING_STEPPES },
						{ 36.0, 36.6, BURNING_STEPPES },
					},
					["timeline"] = { REMOVED_4_0_3, ADDED_10_0_5 },
					["crs"] = {
						7025,	-- Blackrock Soldier
						-- #if AFTER 10.0.5
						7027,	-- Blackrock Slayer
						-- #endif
					},
				}),
				i(15748, {	-- Pattern: Heavy Scorpid Leggings (RECIPE!)
					["timeline"] = { REMOVED_4_0_3, ADDED_10_0_5 },
					-- #if AFTER 10.0.5
					["description"] = "Killing the mobs at one of the coordinates, respawns them instantly at the other and vice versa. Farmed with a second person, you get all recipes within 2-3 minutes.",
					-- #endif
					["coords"] = {
						{ 34.8, 36.3, BURNING_STEPPES },
						{ 36.0, 36.6, BURNING_STEPPES },
					},
					["crs"] = {
						-- #if AFTER 10.0.5
						7025,	-- Blackrock Soldier
						-- #else
						7027,	-- Blackrock Slayer
						-- #endif
					},
				}),
				i(15774, {	-- Pattern: Heavy Scorpid Shoulders (RECIPE!)
					["timeline"] = { REMOVED_4_0_3, ADDED_5_0_4, REMOVED_6_0_2, ADDED_10_0_5 },
					-- #if AFTER 10.0.5
					["description"] = "Killing the mobs at one of the coordinates, respawns them instantly at the other and vice versa. Farmed with a second person, you get all recipes within 2-3 minutes.",
					-- #endif
					["coords"] = {
						{ 34.8, 36.3, BURNING_STEPPES },
						{ 36.0, 36.6, BURNING_STEPPES },
					},
					["crs"] = {
						-- #if AFTER 10.0.5
						7025,	-- Blackrock Soldier
						-- #else
						7029,	-- Blackrock Battlemaster
						-- #endif
					},
				}),
				i(15727, {	-- Pattern: Heavy Scorpid Vest (RECIPE!)
					["timeline"] = { ADDED_10_0_5 },
					-- #if AFTER 10.0.5
					["description"] = "Killing the mobs at one of the coordinates, respawns them instantly at the other and vice versa. Farmed with a second person, you get all recipes within 2-3 minutes.",
					-- #endif
					["coords"] = {
						{ 34.8, 36.3, BURNING_STEPPES },
						{ 36.0, 36.6, BURNING_STEPPES },
					},
					["crs"] = {
						7025,	-- Blackrock Soldier
						7027,	-- Blackrock Slayer
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, i(227908, {	-- Pattern: Masterwork Volcanic Leggings (RECIPE!)
					["description"] = "Drops from Firegut Brutes, which are found around Dreadmaul Rock and inside the Firegut Furnace cavern. The entrance to Firegut Furnace is at the southwestern side of Dreadmaulk Rock. Firegut Ogre Mages very often spawn in place of Firegut Brutes.",
					["timeline"] = { ADDED_1_15_3 },
					["cr"] = 7035,	-- Firegut Brute
					["coords"] = {
						{ 83.6, 40.0, BURNING_STEPPES },
						{ 80.4, 45.8, BURNING_STEPPES },
					},
				})),
				-- #endif
				i(15732, {	-- Pattern: Volcanic Leggings (RECIPE!)
					["description"] = "Drops from Firegut Brutes, which are found around Dreadmaul Rock and inside the Firegut Furnace cavern. The entrance to Firegut Furnace is at the southwestern side of Dreadmaulk Rock. Firegut Ogre Mages very often spawn in place of Firegut Brutes.",
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3, ADDED_10_1_7,
						-- #endif
					},
					["cr"] = 7035,	-- Firegut Brute
					["coords"] = {
						{ 83.6, 40.0, BURNING_STEPPES },
						{ 80.4, 45.8, BURNING_STEPPES },
					},
				}),
				i(13476, {	-- Recipe: Mighty Rage Potion (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },	-- Moved to trainer
					["cr"] = 7027,	-- Blackrock Slayer
				}),
			}),
		},
	}),
}));
