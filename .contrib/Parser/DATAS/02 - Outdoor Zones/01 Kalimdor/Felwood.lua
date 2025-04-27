---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, {
	m(FELWOOD, {
		["lore"] = "Once a wooded paradise, Felwood bears a ten-thousand-year-old curse. The trees, land and creatures are twisted and evil, violent and wild. Cursed ancients and furbolg maul any who come close, and satyrs hold depraved court near tainted moonwells. The animals within are mad and brutal and have no fear of humanoids. The undead and demons that survived the Third War fled here as well, and hide in the deep tangles. Felwood is a chaos of battling creatures, and blood soaks the ground. The infamous Shadow Council, a group of orc warlocks loyal to the Burning Legion, hides somewhere within.\n\nAlliance heroes, particularly druids, make forays into the cursed wood in attempts to destroy some of the larger menaces, root out the Shadow Council, and perhaps, some day, restore the land to its former legacy.",
		["icon"] = 236763,
		["groups"] = {
			n(ACHIEVEMENTS, {
				explorationAch(853),	-- Explore Felwood
				ach(4931, {	-- Felwood Quests
					["timeline"] = { ADDED_4_0_3},
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						27997,	-- The Corruption of the Jadefire
						28148,	-- Culling the Corrupted
						27995,	-- Dance for Ruumbo!
						28288,	-- Open Their Eyes
						28126,	-- Dousing the Flames of Protection (verify)
						28129,	-- The Demon Prince
						28128,	-- The Inner Circle (verify)
						28214,	-- Cleanup at Bloodvenom Post
						28213,	-- Hazzard Disposal
						28341,	-- Collecting Corruption
						28342,	-- Fel To Pieces
						28358,	-- Hunting the Damned
						28359,	-- The Core of Kroshius
						28374,	-- Weeding the Lawn
						28228,	-- Rejoining the Forest
						28264,	-- Navarax's Gambit
						28389,	-- Report to the Denmother
						28340,	-- A Bomb Deal
						28368,	-- Fire in the Hole!
						28338,	-- Deadwood of the North
						28366,	-- Disarming Bears
						28364,	-- The Chieftain's Key
					},
					-- #endif
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					406,	-- Beetle (PET!)
					420,	-- Toad (PET!)
				}},
				["groups"] = {
					pet(500, {	-- Minfernal (PET!)
						["description"] = "Can be found around Shatter Scar Vale near Infernal Sentries.",
					}),
					pet(497),	-- Tainted Cockroach (PET!)
					pet(498),	-- Tainted Moth (PET!)
					pet(499),	-- Tainted Rat (PET!)
				},
			}),
			explorationHeader({
				exploration(1765),	-- Bloodvenom Falls
				-- #if AFTER CATA
				exploration(1997),	-- Bloodvenom Post
				-- #endif
				exploration(1761),	-- Deadwood Village
				exploration(2479),	-- Emerald Sanctuary
				exploration(1762),	-- Felpaw Village
				exploration(1767),	-- Irontree Woods
				exploration(2480),	-- Jadefire Glen
				exploration(2618),	-- Jadefire Run
				exploration(1763),	-- Jaedenar
				exploration(2478),	-- Morlos'Aran
				exploration(2481),	-- Ruins of Constellas
				exploration(1766),	-- Shatter Scar Vale
				exploration(1998),	-- Talonbranch Glade
				exploration(1769),	-- Timbermaw Hold
			}),
			n(FLIGHT_PATHS, {
				fp(48, {	-- Bloodvenom Post, Felwood
					["cr"] = 11900,	-- Brakkar <Wind Rider Master>
					["coord"] = { 34.4, 53.8, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(166, {	-- Emerald Sanctuary, Felwood
					["cr"] = 22931,	-- Gorrim <Emerald Circle Flight Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 51.4, 80.8, FELWOOD },
						-- #else
						{ 51.5, 82.2, FELWOOD },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_0 },
				}),
				fp(597, {	-- Irontree Clearing, Felwood
					["cr"] = 43085,	-- Dirzak Pryocrank <Flight Master>
					["coord"] = { 56.2, 8.6, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(65, {	-- Talonbranch Glade, Felwood
					["cr"] = 12578,	-- Mishellena <Hippogryph Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 60.6, 25.2, FELWOOD },
						-- #else
						{ 62.6, 24.2, FELWOOD },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				fp(594, {	-- Whisperwind Grove, Felwood
					["cr"] = 43073,	-- Hanah Southsong <Hippogryph Master>
					["coord"] = { 43.6, 28.6, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
				}),
				fp(595, {	-- Wildheart Point, Felwood
					["cr"] = 43079,	-- Chyella Hushglade <Hippogryph Master>
					["coord"] = { 44.2, 61.8, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
				}),
			}),
			-- #if BEFORE 4.0.3
			prof(HERBALISM, {
				i(11514, {	-- Fel Creep
					["provider"] = { "i", 11511 },	-- Cenarion Beacon
					["description"] = "In order for this to drop while Herbing, you must have the Cenarion Beacon in your bags.",
					["timeline"] = { REMOVED_4_0_3 },
				}),
			}),
			prof(MINING, {
				i(11513, {	-- Tainted Vitriol
					["provider"] = { "i", 11511 },	-- Cenarion Beacon
					["description"] = "In order for this to drop while Mining, you must have the Cenarion Beacon in your bags.",
					["timeline"] = { REMOVED_4_0_3 },
				}),
			}),
			-- #endif
			n(QUESTS, {
				q(28340, {	-- A Bomb Deal
					["qg"] = 48333,	-- Foreman Pikwik
					["sourceQuest"] = 28380,	-- Pikwik in Peril
					["coord"] = { 54.6, 18.3, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Irontree Explosives
							["providers"] = {
								{ "i", 63516 },	-- Irontree Explosives
								{ "o", 207105 },	-- Irontree Explosive
							},
						}),
					},
				}),
				q(28218, {	-- A Destiny of Flame and Sorrow
					["qg"] = 47923,	-- Feronas Sindweller
					["sourceQuest"] = 28217,	-- Wanted: The Demon Hunter
					["coord"] = { 45.5, 20.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(5242, {	-- A Final Blow
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5165,	-- Dousing the Flames of Protection
					["coord"] = { 51.2, 82.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Moora slain
							["provider"] = { "n", 9861 },	-- Moora
							["coord"] = { 38.8, 46.8, FELWOOD },
						}),
						objective(2, {	-- 0/1 Salia slain
							["provider"] = { "n", 9860 },	-- Salia
							["coord"] = { 39.6, 47.0, FELWOOD },
						}),
						objective(3, {	-- 0/1 Shadow Lord Fel'dan's Head
							["provider"] = { "i", 13207 },	-- Shadow Lord Fel'dan's Head
							["coord"] = { 38.8, 46.8, FELWOOD },
							["cr"] = 9517,	-- Shadow Lord Fel'dan
						}),
						i(15707, {	-- Brantwood Sash
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15708, {	-- Blight Leather Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15709, {	-- Gearforge Girdle
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28334, {	-- A Flare Fight
					["qg"] = 48127,	-- Darla Drilldozer
					["sourceQuest"] = 28372,	-- Back in Business
					["coord"] = { 56.3, 8.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Talonbranch Prowler slain
							["provider"] = { "n", 48311 },	-- Talonbranch Prowler
						}),
					},
				}),
				q(6162, {	-- A Husband's Last Battle
					["qg"] = 9620,	-- Dreka'Sur
					["coord"] = { 34.8, 52.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["groups"] = {
						objective(1, {	-- 0/1 Overlord Ror's Claw
							["provider"] = { "i", 15879 },	-- Overlord Ror's Claw
							["coord"] = { 48.6, 93.6, FELWOOD },
							["cr"] = 9464,	-- Overlord Ror
						}),
					},
				}),
				q(28207, {	-- A Slimy Situation
					["qg"] = 47696,	-- Kelnir Leafsong
					["sourceQuest"] = 28305,	-- The Fate of Bloodvenom Post
					["coord"] = { 41.2, 49.9, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/7 Emerald Shimmercap
							["providers"] = {
								{ "i", 63078 },	-- Emerald Shimmercap
								{ "o", 206764 },	-- Emerald Shimmercap
							},
						}),
					},
				}),
				q(5202, {	-- A Strange Red Key
					["provider"] = { "i", 13140 },	-- Blood Red Key
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						7118,	-- Jaedenar Darkweaver
						7114,	-- Jaedenar Enforcer
						9862,	-- Jaedenar Legionnaire
						7120,	-- Jaedenar Warlock
						14523,	-- Ulathek
						14522,	-- Ur'dan
					},
					["lvl"] = 49,
				}),
				q(28100, {	-- A Talking Totem
					["qg"] = 11554,	-- Grazle
					["coord"] = { 51.4, 80.4, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, n(createHeader({	-- Aeonas: Journey to Felwood
					readable = "SOD - Aeonas: Journey to Felwood",
					icon = 131039,
					text = {
						en = "Aeonas: Journey to Felwood",
					},
				}), {
					["qg"] = 218160,	-- Aeonas the Vindicated <Former Paladin of the Silver Hand>
					["questID"] = 81879,	-- Aeonas: Journey to Felwood HQT
					["sourceQuest"] = 81764,	-- The Mysterious Merchant
					["coord"] = { 37.6, 31.6, STORMWIND_CITY },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
				})),
				applyclassicphase(SOD_PHASE_THREE, n(createHeader({	-- Aeonas: Trust in a Friend
					readable = "SOD - Aeonas: Trust in a Friend",
					icon = 131038,
					text = {
						en = "Aeonas: Trust in a Friend",
					},
				}), {
					["qg"] = 221587,	-- Aeonas the Vindicated <Former Paladin of the Silver Hand>
					["questID"] = 81883,	-- Aeonas: Trust in a Friend HQT
					["sourceQuest"] = 81879,	-- Aeonas: Journey to Felwood HQT
					["coord"] = { 45, 52, FELWOOD },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
				})),
				-- #endif
				q(28150, {	-- An Arcane Ally
					["qg"] = 10923,	-- Tenell Leafrunner
					["sourceQuests"] = {
						28148,	-- Culling the Corrupted
						27995,	-- Dance for Ruumbo!
						27997,	-- The Corruption of the Jadefire
					},
					["coord"] = { 51.1, 80.4, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8419, {	-- An Imp's Request
					["qgs"] = {
						3326,	-- Zevrost <Warlock Trainer>
						5172,	-- Briarthorn <Warlock Trainer>
						461,	-- Demisette Cloyce <Warlock Trainer>
						4563,	-- Kaal Soulreaper <Warlock Trainer>
					},
					["coords"] = {
						{ 48.4, 45.6, ORGRIMMAR },
						{ 50.2, 6.0, IRONFORGE },
						{ 28.4, 78.2, STORMWIND_CITY },
						{ 86.0, 15.6, UNDERCITY },
					},
					["altQuests"] = { 8420 },	-- Hot and Itchy
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14256, 1 } },	-- Felcloth
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["lvl"] = 50,
				})),
				q(4261, {	-- Ancient Spirit
					["providers"] = {
						{ "n", 9598 },	-- Arei
						{ "i", 11445 },	-- Flute of the Ancients
					},
					["sourceQuest"] = 4442,	-- Purified!
					["coord"] = { 49.4, 14.4, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						i(11873, {	-- Ethereal Mist Cape
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11874, {	-- Clouddrift Mantle
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4005, {	-- Aquementas
					["qg"] = 9116,	-- Eridan Bluewind <Emerald Circle>
					["sourceQuest"] = 4084,	-- Silver Heart
					["coord"] = { 51.2, 81.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { TANARIS, UNGORO_CRATER },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/1 Silver Totem of Aquementas
							["providers"] = {
								{ "i", 11522 },	-- Silver Totem of Aquementas
								{ "i", 11617 },	-- Eridan's Supplies
								{ "i", 11169 },	-- Book of Aquor
							},
							["coord"] = { 70, 49, TANARIS },
							["cr"] = 9453,	-- Aquementas
						}),
						-- #if NOT ANYCLASSIC
						-- CRIEVE NOTE: This item is part of the quest objective above, not needed in Classic. If anywhere, it would ONLY be linked to this one quest. That said, I don't think this is necessary.
						i(11522, {	-- Silver Totem of Aquementas
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #endif
					},
				}),
				q(28372, {	-- Back to Business
					["qg"] = 48469,	-- Fez Hobnob
					["sourceQuests"] = {
						28264,	-- Navarax's Gambit
						28228,	-- Rejoining the Forest
					},
					["coord"] = { 44.2, 27.9, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(28388, {	-- Bloody Wages
					["qg"] = 48493,	-- Alton Redding
					["sourceQuests"] = {
						28386,	-- Borrowed Bombs
						28385,	-- Oil and Irony
					},
					["coord"] = { 56.8, 18.4, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Panicking Worker slain
							["provider"] = { "n", 48331 },	-- Panicking Worker
						}),
					},
				}),
				q(28386, {	-- Borrowed Bombs
					["qg"] = 48493,	-- Alton Redding
					["sourceQuest"] = 28337,	-- The Shredders of Irontree
					["coord"] = { 56.8, 18.4, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Irontree Explosives
							["providers"] = {
								{ "i", 63516 },	-- Irontree Explosives
								{ "o", 207105 },	-- Irontree Explosive
							},
						}),
						i(65342, {	-- Irontree Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65291, {	-- Oilfoot Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65310, {	-- Alton's Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65329, {	-- Breastplate of Protest
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28113, {	-- Break the Unbreakable
					["qg"] = 47341,	-- Arcanist Delaris
					["sourceQuest"] = 28044,	-- Touch the Untouchable
					["coord"] = { 41.9, 72.0, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Xavathras slain
							["provider"] = { "n", 9454 },	-- Xavathras
						}),
						i(65277, {	-- Delaris' Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65297, {	-- Glovelettes of Opening
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65316, {	-- Spellbreaker's Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65335, {	-- Demon Smasher
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28387, {	-- Burnout
					["qg"] = 48493,	-- Alton Redding
					["sourceQuests"] = {
						28386,	-- Borrowed Bombs
						28385,	-- Oil and Irony
					},
					["coord"] = { 56.8, 18.4, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Oil Gusher ignited
							["provider"] = { "n", 48317 },	-- Oil Gusher
						}),
					},
				}),
				q(28219, {	-- Buzzers for Baby
					["qg"] = 48032,	-- Seedling Protector
					["sourceQuest"] = 28229,	-- Nature and Nurture
					["coord"] = { 48.6, 25.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Ironwood Buzzer slain
							["provider"] = { "n", 48038 },	-- Ironwood Buzzer
						}),
					},
				}),
				q(5159, {	-- Cleansed Water Returns to Felwood
					["providers"] = {
						{ "n", 5901 },	-- Islen Waterseer
						{ "i", 12906 },	-- Purified Moonwell Water
					},
					["sourceQuest"] = 5158,	-- Seeking Spiritual Aid
					["coord"] = { 65.8, 43.8, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
				}),
				{	-- Cleansing Felwood
					["allianceQuestData"] = q(4101, {	-- Cleansing Felwood (A)
						["qg"] = 9528,	-- Arathandris Silversky
						["coord"] = { 54.2, 86.7, FELWOOD },
					}),
					["hordeQuestData"] = q(4102, {	-- Cleansing Felwood (H)
						["qg"] = 9529,	-- Maybess Riverbreeze
						["coord"] = { 46.8, 83, FELWOOD },
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/15 Blood Amber
							["provider"] = { "i", 11503 },	-- Blood Amber
							["crs"] = {
								7104,	-- Dessecus
								7100,	-- Warpwood Moss Flayer
								7101,	-- Warpwood Shredder
							},
						}),
						i(11511, {	-- Cenarion Beacon
							["description"] = "You must keep this in your bags for the Fel Creep, Patch of Tainted Skin, Tainted Vitriol, and Corrupted Soul Shards to drop from the various means of gathering.",
						}),
					},
				},
				q(28214, {	-- Cleanup at Bloodvenom Post
					["qg"] = 47692,	-- Altsoba Ragetotem
					["sourceQuest"] = 28208,	-- Winna's Kitten
					["coord"] = { 41.2, 49.9, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Bloodvenom Slimeslave slain
							["provider"] = { "n", 47675 },	-- Bloodvenom Slimeslave
						}),
					},
				}),
				q(28341, {	-- Collecting Corruption
					["qg"] = 48339,	-- Elessa Starbreeze
					["coord"] = { 43.9, 27.8, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Entropic Essence
							["provider"] = { "i", 63522 },	-- Entropic Essence
							["cr"] = 9879,	-- Entropic Horror
						}),
					},
				}),
				q(5157, {	-- Collection of the Corrupt Water
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5155,	-- Forces of Jaedenar
					["coord"] = { 51.2, 82.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Corrupt Moonwell Water
							["providers"] = {
								{ "i", 12907 },	-- Corrupt Moonwell Water
								{ "i", 12922 },	-- Empty Canteen
							},
							["coord"] = { 35.2, 59.8, FELWOOD },
						}),
					},
				}),
				q(4119, {	-- Corrupted Night Dragon
					["provider"] = { "o", 164885 },	-- Corrupted Night Dragon
					["coord"] = { 40.7, 78.3, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 4 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11952),	-- Night Dragon's Breath
					},
				}),
				q(4447, {	-- Corrupted Night Dragon
					["provider"] = { "o", 173324 },	-- Corrupted Night Dragon
					["coord"] = { 50.6, 30.4, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 4 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11952),	-- Night Dragon's Breath
					},
				}),
				q(4448, {	-- Corrupted Night Dragon
					["provider"] = { "o", 174608 },	-- Corrupted Night Dragon
					["coord"] = { 42.5, 13.9, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 4 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11952),	-- Night Dragon's Breath
					},
				}),
				q(4462, {	-- Corrupted Night Dragon
					["provider"] = { "o", 174684 },	-- Corrupted Night Dragon
					["coord"] = { 35.1, 59, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 4 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11952),	-- Night Dragon's Breath
					},
				}),
				q(4506, {	-- Corrupted Sabers
					["qg"] = 9996,	-- Winna Hazzard
					["sourceQuest"] = 4504,	-- Well of Corruption
					["coord"] = { 34.2, 52.4, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- Return the corrupted cat to Winna Hazzard
							["providers"] = {
								{ "n", 10042 },	-- Corrupted Saber
								{ "i", 12565 },	-- Winna's Kitten Carrier
							},
							["coord"] = { 32, 66, FELWOOD },
							["description"] = "When you get back to Winna, the cat stops, and you have to TALK TO THE CAT.",
						}),
					},
				}),
				q(2523, {	-- Corrupted Songflower
					["provider"] = { "o", 171942 },	-- Corrupted Songflower
					["coord"] = { 48.3, 75.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(2878, {	-- Corrupted Songflower
					["provider"] = { "o", 174594 },	-- Corrupted Songflower
					["coord"] = { 63.3, 22.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(3363, {	-- Corrupted Songflower
					["provider"] = { "o", 174595 },	-- Corrupted Songflower
					["coord"] = { 63.9, 6.1, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4113, {	-- Corrupted Songflower
					["provider"] = { "o", 164886 },	-- Corrupted Songflower
					["coord"] = { 52.9, 87.8, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4114, {	-- Corrupted Songflower
					["provider"] = { "o", 174596 },	-- Corrupted Songflower
					["coord"] = { 55.8, 10.5, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4116, {	-- Corrupted Songflower
					["provider"] = { "o", 174597 },	-- Corrupted Songflower
					["coord"] = { 50.6, 13.9, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4118, {	-- Corrupted Songflower
					["provider"] = { "o", 174598 },	-- Corrupted Songflower
					["coord"] = { 34.4, 52.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4401, {	-- Corrupted Songflower
					["provider"] = { "o", 171939 },	-- Corrupted Songflower
					["coord"] = { 46, 85.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4464, {	-- Corrupted Songflower
					["provider"] = { "o", 174712 },	-- Corrupted Songflower
					["coord"] = { 40.2, 56.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4465, {	-- Corrupted Songflower
					["provider"] = { "o", 174713 },	-- Corrupted Songflower
					["coord"] = { 40.1, 44.4, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4117, {	-- Corrupted Whipper Root
					["provider"] = { "o", 164888 },	-- Corrupted Whipper Root
					["coord"] = { 40.2, 85.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 3 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4443, {	-- Corrupted Whipper Root
					["provider"] = { "o", 173284 },	-- Corrupted Whipper Root
					["coord"] = { 50.6, 18.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 3 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4444, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174605 },	-- Corrupted Whipper Root
					["coord"] = { 49.4, 12.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 3 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4445, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174606 },	-- Corrupted Whipper Root
					["coord"] = { 40.7, 19.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 3 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4446, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174607 },	-- Corrupted Whipper Root
					["coord"] = { 43, 46.9, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 3 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(4461, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174686 },	-- Corrupted Whipper Root
					["coord"] = { 34.1, 60.3, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 3 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11951),	-- Whipper Root Tuber
					},
				}),
				q(996, {	-- Corrupted Windblossom
					["provider"] = { "o", 174600 },	-- Corrupted Windblossom
					["coord"] = { 57.5, 20, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(998, {	-- Corrupted Windblossom
					["provider"] = { "o", 174599 },	-- Corrupted Windblossom
					["coord"] = { 55.8, 7, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(1514, {	-- Corrupted Windblossom
					["provider"] = { "o", 173327 },	-- Corrupted Windblossom
					["coord"] = { 55.2, 23.5, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4115, {	-- Corrupted Windblossom
					["provider"] = { "o", 164887 },	-- Corrupted Windblossom
					["coord"] = { 50, 80, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4221, {	-- Corrupted Windblossom
					["provider"] = { "o", 174604 },	-- Corrupted Windblossom
					["coord"] = { 39, 59.1, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4222, {	-- Corrupted Windblossom
					["provider"] = { "o", 174603 },	-- Corrupted Windblossom
					["coord"] = { 34.4, 48.8, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4343, {	-- Corrupted Windblossom
					["provider"] = { "o", 174602 },	-- Corrupted Windblossom
					["coord"] = { 38.8, 21.9, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4403, {	-- Corrupted Windblossom
					["provider"] = { "o", 174601 },	-- Corrupted Windblossom
					["coord"] = { 45.4, 18.3, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4466, {	-- Corrupted Windblossom
					["provider"] = { "o", 174708 },	-- Corrupted Windblossom
					["coord"] = { 36.5, 61.9, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(4467, {	-- Corrupted Windblossom
					["provider"] = { "o", 174709 },	-- Corrupted Windblossom
					["coord"] = { 44.8, 41.7, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11950),	-- Windblossom Berries
					},
				}),
				q(28116, {	-- Crying Violet
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 28152,	-- Jaedenar Awaits
					["coord"] = { 43.9, 61.8, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Crying Violet
							["providers"] = {
								{ "i", 63032 },	-- Crying Violet
								{ "o", 206706 },	-- Crying Violet
							},
						}),
					},
				}),
				q(28148, {	-- Culling the Corrupted
					["qg"] = 10921,	-- Taronn Redfeather
					["coord"] = { 50.9, 80.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Corrupted Pelt
							["provider"] = { "i", 63088 },	-- Corrupted Pelt
							["crs"] = {
								8956,	-- Angerclaw Bear
								8959,	-- Felpaw Wolf
							},
						}),
						i(65275, {	-- Angerclaw Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65295, {	-- Felpaw Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65314, {	-- Belt of the Sanctuary
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65333, {	-- Redfeather Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27995, {	-- Dance for Ruumbo!
					["provider"] = { "o", 206585 },	-- Totem of Ruumbo
					["sourceQuests"] = {
						27989,	-- Ruumbo Demands Honey
						27994,	-- Ruumbo Demands Justice
					},
					["coord"] = { 51.4, 83.7, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(65279, {	-- Grazle's Sandals
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65299, {	-- Allen's Abandoned Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65318, {	-- Ruumbo's Arm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65336, {	-- Pulled Wool
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28261, {	-- Deceivers In Our Midst
					["qg"] = 47923,	-- Feronas Sindweller
					["sourceQuest"] = 28257,	-- The Fall of Tichondrius
					["coord"] = { 45.5, 20.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/12 Jadefire Shifter slain
							["provider"] = { "n", 48154 },	-- Jadefire Shifter
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, q(84384, {	-- Demonic Deceptions
					["qg"] =  222408,	-- Shadowtooth Emissary
					["coord"] = { 51.6, 82.0, FELWOOD },
					["timeline"] = { ADDED_1_15_3 },
					["maps"] = { WINTERSPRING },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/6 Owlbeast Pineal Gland
							["provider"] = { "i", 227914 },	-- Owlbeast Pineal Gland
							["coord"] = { 65.6, 21.4, WINTERSPRING },
							["crs"] = {
								7454,	-- Berserk Owlbeast
								7452,	-- Crazed Owlbeast
								7453,	-- Moontouched Owlbeast
								7450,	-- Ragged Owlbeast
								7451,	-- Raging Owlbeast
							},
						}),
						i(228172),	-- Shadowtooth Illusion Ward
					},
				})),
				-- #endif
				q(28000, {	-- Do the Imp-Possible
					["qg"] = 47341,	-- Arcanist Delaris
					["sourceQuests"] = {
						28150,	-- An Arcane Ally
						28148,	-- Culling the Corrupted
						27995,	-- Dance for Ruumbo!
						27997,	-- The Corruption of the Jadefire
					},
					["coord"] = { 41.9, 72.0, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28126, {	-- Dousing the Flames of Protection
					["qg"] = 51664,	-- Andalar Shadevale <Emerald Circle>
					["sourceQuest"] = 28119,	-- Purity from Corruption
					["coord"] = { 36.3, 58.2, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Extinguish the Brazier of Pain
							["provider"] = { "o", 176158 },	-- Brazier of Pain
						}),
						objective(2, {	-- 0/1 Extinguish the Brazier of Malice
							["provider"] = { "o", 176159 },	-- Brazier of Malice
						}),
						objective(3, {	-- 0/1 Extinguish the Brazier of Suffering
							["provider"] = { "o", 176160 },	-- Brazier of Suffering
						}),
						objective(4, {	-- 0/1 Extinguish the Brazier of Hatred
							["provider"] = { "o", 176161 },	-- Brazier of Hatred
						}),
						i(65281, {	-- Belt of the Lost Barrow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65301, {	-- Jade Green Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65320, {	-- Sanctuary Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65337, {	-- Emerald Orb
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5165, {	-- Dousing the Flames of Protection
					["qg"] = 10922,	-- Greta Mosshoof
					["sourceQuest"] = 5159,	-- Cleansed Water Returns to Felwood
					["coord"] = { 51.2, 82.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- Extinguish the Brazier of Pain
							["providers"] = {
								{ "i", 12906 },	-- Purified Moonwell Water
								{ "o", 176158 },	-- Brazier of Pain
							},
							["coord"] = { 36.3, 56.3, FELWOOD },
						}),
						objective(2, {	-- Extinguish the Brazier of Malice
							["providers"] = {
								{ "i", 12906 },	-- Purified Moonwell Water
								{ "o", 176159 },	-- Brazier of Malice
							},
							["coord"] = { 37.7, 52.7, FELWOOD },
						}),
						objective(3, {	-- Extinguish the Brazier of Suffering
							["providers"] = {
								{ "i", 12906 },	-- Purified Moonwell Water
								{ "o", 176160 },	-- Brazier of Suffering
							},
							["coord"] = { 36.7, 53.3, FELWOOD },
						}),
						objective(4, {	-- Extinguish the Brazier of Hatred
							["providers"] = {
								{ "i", 12906 },	-- Purified Moonwell Water
								{ "o", 176161 },	-- Brazier of Hatred
							},
							["coord"] = { 36.5, 55.2, FELWOOD },
						}),
					},
				}),
				q(28382, {	-- Enemy at our Roots
					["qg"] = 47931,	-- Denmother Ulrica
					["sourceQuest"] = 28381,	-- The Denmother
					["coord"] = { 61.8, 26.6, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Irontree Chopper slain
							["provider"] = { "n", 48453 },	-- Irontree Chopper
						}),
						i(65341, {	-- Bloodwater Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65290, {	-- Packrunner's Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65309, {	-- Deaf Ear Helm
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65328, {	-- Talon Branch
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28396, {	-- Feathers for Grazle
					["qg"] = 11554,	-- Grazle
					["sourceQuest"] = 27995,	-- Dance for Ruumbo!
					["coord"] = { 51.4, 80.4, FELWOOD },
					["maxReputation"] = { FACTION_TIMBERMAW_HOLD, EXALTED },	-- Timbermaw Hold, Exalted.
					["timeline"] = { ADDED_4_0_3 },
					["cost"] = {{ "i", 21377, 5 }},	-- Deadwood Headdress Feather
					["repeatable"] = true,
				}),
				q(28342, {	-- Fel To Pieces
					["qg"] = 48339,	-- Elessa Starbreeze
					["coord"] = { 43.9, 27.8, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/9 Infernal Debris
							["provider"] = { "i", 63123 },	-- Infernal Debris
							["cr"] = 7136,	-- Infernal Sentry
						}),
					},
				}),
				q(4441, {	-- Felbound Ancients
					["qg"] = 9116,	-- Eridan Bluewind
					["sourceQuest"] = 939,	-- Flute of Xavaric
					["coord"] = { 51.4, 81.5, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/1 Vial of Blessed Water
							["providers"] = {
								{ "i", 5646 },	-- Vial of Blessed Water
								{ "i", 11682 },	-- Eridan's Vial
							},
							["coord"] = { 39, 84, DARNASSUS },
						}),
					},
				}),
				q(28102, {	-- Fight the Power
					["qg"] = 9116,	-- Eridan Bluewind
					["sourceQuest"] = 28044,	-- Touch the Untouchable
					["coord"] = { 42.0, 71.7, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Jadefire Rogue or Shadowstalker slain
							["providers"] = {
								{ "n", 7106},	-- Jadefire Rogue
								{ "n", 7110},	-- Jadefire Shadowstalker
							},
						}),
					},
				}),
				q(28368, {	-- Fire in the Hole!
					["provider"] = { "o", 207104 },	-- Master Control Pump
					["sourceQuest"] = 28335,	-- Turn It Off! Turn It Off!
					["coord"] = { 60.4, 22.2, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Grolvitar the Everburning slain
							["provider"] = { "n", 48352 },	-- Grolvitar the Everburning
						}),
						i(65346, {	-- Gauntlets of Raw Strength
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65349, {	-- Everburning Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65352, {	-- Drilldozer Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(7602, {	-- Flawless Fel Essence
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["sourceQuest"] = 7601,	-- What Niby Commands
					["coord"] = { 41.6, 44.8, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { AZSHARA, BLASTED_LANDS },
					["classes"] = { WARLOCK },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Flawless Fel Essence (Azshara)
							["provider"] = { "i", 18624 },	-- Flawless Fel Essence (Azshara)
							["crs"] = {
								6202,	-- Legashi Hellcaller
								6201,	-- Legashi Rogue
								6200,	-- Legashi Satyr
							},
						}),
						objective(2, {	-- 0/1 Flawless Fel Essence (Jaedenar)
							["provider"] = { "i", 18622 },	-- Flawless Fel Essence (Jaedenar)
							["cr"] = 9862,	-- Jaedenar Legionnaire
						}),
						objective(3, {	-- 0/1 Flawless Fel Essence (Dark Portal)
							["provider"] = { "i", 18623 },	-- Flawless Fel Essence (Dark Portal)
							["cr"] = 6011,	-- Felguard Sentry
						}),
					},
				}),
				q(939, {	-- Flute of Xavaric
					["provider"] = { "i", 11668 },	-- Flute of Xavaric
					["sourceQuest"] = 4906,	-- Further Corruption
					["coord"] = { 39.6, 22.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cr"] = 10648,	-- Xavaric
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						objective(2, {	-- 0/5 Jadefire Felbind
							["provider"] = { "i", 11674 },	-- Jadefire Felbind
							["crs"] = {
								7105,	-- Jadefire Satyr
								7106,	-- Jadefire Rogue
								7107,	-- Jadefire Trickster
								7108,	-- Jadefire Betrayer
								7109,	-- Jadefire Felsworn
								7110,	-- Jadefire Shadowstalker
								7111,	-- Jadefire Hellcaller
							},
						}),
						objective(1, {	-- 0/5 Jadefire Felbind
							["provider"] = { "i", 11674 },	-- Jadefire Felbind
							["crs"] = {
								14340,	-- Alshirr Banebreath
								7108,	-- Jadefire Betrayer
								7109,	-- Jadefire Felsworn
								7111,	-- Jadefire Hellcaller
								7106,	-- Jadefire Rogue
								7105,	-- Jadefire Satyr
								7110,	-- Jadefire Shadowstalker
								7107,	-- Jadefire Trickster
							},
						}),
					},
				}),
				q(28121, {	-- Forces of Jaedenar
					["qg"] = 11019,	-- Jessir Moonbow
					["coord"] = { 44.0, 61.9, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/12 Jaedenar Forces Slain
							["providers"] = {
								{ "n", 7125},	-- Jaedenar Hound
								{ "n", 7112},	-- Jaedenar Cultist
								{ "n", 7113},	-- Jaedenar Guardian
								{ "n", 7115},	-- Jaedenar Adept
							},
						}),
					},
				}),
				q(5155, {	-- Forces of Jaedenar
					["qg"] = 10922,	-- Greta Mosshoof
					["coord"] = { 51.2, 82.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/4 Jaedenar Hound slain
							["provider"] = { "n", 7125 },	-- Jaedenar Hound
						}),
						objective(2, {	-- 0/4 Jaedenar Guardian slain
							["provider"] = { "n", 7113 },	-- Jaedenar Guardian
						}),
						objective(3, {	-- 0/6 Jaedenar Adept slain
							["provider"] = { "n", 7115 },	-- Jaedenar Adept
						}),
						objective(4, {	-- 0/6 Jaedenar Cultist slain
							["provider"] = { "n", 7112 },	-- Jaedenar Cultist
						}),
					},
				}),
				q(4906, {	-- Further Corruption
					["qg"] = 9116,	-- Eridan Bluewind
					["sourceQuest"] = 4421,	-- Corruption of the Jadefire
					["coord"] = { 51.4, 81.5, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/8 Jadefire Hellcaller slain
							["provider"] = { "n", 7111 },	-- Jadefire Hellcaller
						}),
						objective(2, {	-- 0/8 Jadefire Betrayer slain
							["provider"] = { "n", 7108 },	-- Jadefire Betrayer
						}),
						objective(3, {	-- 0/8 Jadefire Trickster slain
							["provider"] = { "n", 7107 },	-- Jadefire Trickster
						}),
						objective(4, {	-- 0/1 Xavaric slain
							["provider"] = { "n", 10648 },	-- Xavaric
						}),
						i(11875, {	-- Breezecloud Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, n(createHeader({	-- Gregory: You Can Trust Me... Probably.
					readable = "SOD - Gregory: You Can Trust Me... Probably.",
					icon = 131038,
					text = {
						en = "Gregory: You Can Trust Me... Probably.",
					},
				}), {
					["qg"] = 221636,	-- Gregory <Truthbearer>
					["questID"] = 81884,	-- Gregory: You Can Trust Me... Probably. HQT
					["sourceQuest"] = 81883,	-- Aeonas: Trust in a Friend HQT
					["coord"] = { 44.6, 52, FELWOOD },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
				})),
				-- #endif
				q(4883, {	-- Guarding Secrets (2/2)
					["providers"] = {
						{ "n", 10306 },	-- Trull Failbane
						{ "i", 12558 },	-- Blue-feathered Necklace
					},
					["sourceQuest"] = 4882,	-- Guarding Secrets (1/2)
					["coord"] = { 34.6, 52.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						i(15796, {	-- Seaspray Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15797, {	-- Shining Armplates
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28213, {	-- Hazzard Disposal
					["qg"] = 47696,	-- Kelnir Leafsong
					["sourceQuest"] = 28208,	-- Winna's Kitten
					["coord"] = { 41.2, 49.9, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Winna Hazzard slain
							["provider"] = { "n", 47679 },	-- Winna Hazzard
						}),
						i(65283, {	-- Flowery Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65303, {	-- Leafsong Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65322, {	-- Mr. Tauren's Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65338, {	-- Belt of Regret
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				heroscall(q(28543, {	-- Hero's Call: Felwood!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { DARNASSUS, THE_EXODAR },	-- Only found in Darnassus & The Exodar in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 44. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 48 (TODO: Test max level between 48 and 55)
					["lvl"] = { 44, 48 },
					-- #endif
				})),
				q(8420, {	-- Hot and Itchy
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["altQuests"] = { 8419 },	-- An Imp's Request
					["coord"] = { 41.6, 45.0, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14256, 1 } },	-- Felcloth
					["classes"] = { WARLOCK },
					["lvl"] = 50,
				}),
				q(28358, {	-- Hunting the Damned
					["qg"] = 48349,	-- Hurak Wildhorn
					["coord"] = { 44.0, 27.8, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Infernal Sentry slain
							["provider"] = { "n", 7136 },	-- Infernal Sentry
						}),
					},
				}),
				q(28384, {	-- Into the Clearing
					["qg"] = 47931,	-- Denmother Ulrica
					["sourceQuests"] = {
						28382,	-- Enemy at our Roots
						28383,	-- Wisps of the Woods
					},
					["coord"] = { 61.8, 26.6, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28339, {	-- Is Your Oil Running?
					["qg"] = 48127,	-- Darla Drilldozer
					["sourceQuests"] = {
						28357,	-- Take it to the Tree
						28370,	-- Wisp-napping
					},
					["coord"] = { 56.3, 8.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Crude Tarball
							["provider"] = { "i", 63519 },	-- Crude Tarball
							["cr"] = 48315,	-- Oily Sludge
						}),
					},
				}),
				q(28333, {	-- It's Time to Oil Up
					["qg"] = 48127,	-- Darla Drilldozer
					["coord"] = { 56.3, 8.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(65344, {	-- Overworked Shoulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65347, {	-- Shredder Operator's Helmet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65350, {	-- Efficiency Spell Mace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65353, {	-- Oil Bailer's Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28152, {	-- Jaedenar Awaits
					["qg"] = 9116,	-- Eridan Bluewind
					["sourceQuest"] = 28113,	-- Break the Unbreakable
					["coord"] = { 42.0, 71.7, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(7603, {	-- Kroshius' Infernal Core
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["sourceQuest"] = 7602,	-- Flawless Fel Essence
					["coord"] = { 41.6, 45.0, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Kroshius' Infernal Core
							["providers"] = {
								{ "i", 18625 },	-- Kroshius' Infernal Core
								{ "i", 18626 },	-- Fel Fire
							},
							["coord"] = { 45.4, 35.4, FELWOOD },
							["cr"] = 14467,	-- Kroshius
						}),
						-- #if BEFORE 4.0.3
						recipe(1122),	-- Inferno / Summon Infernal
						-- #endif
						i(18762, {	-- Shard of the Green Flame
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28155, {	-- Lord Banehollow
					["qg"] = 51664,	-- Andalar Shadevale <Emerald Circle>
					["sourceQuest"] = 28153,	-- Shadow Lord Fel'dan
					["coord"] = { 36.2, 58.2, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Lord Banehollow slain
							["provider"] = { "n", 9516 },	-- Lord Banehollow
						}),
						i(65282, {	-- Cleansed Shadow Council Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65302, {	-- Farlus' Staff
							["timeline"] = { ADDED_4_0_3 },
						}),
						-- #if BEFORE MOP
						i(65321, {	-- Stars of Felwood
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(81790, {	-- Materials of Significance
					["qg"] =  221636,	-- Gregory <Truthbearer>
					["sourceQuest"] = 81884,	-- Gregory: You Can Trust Me... Probably. HQT
					["coord"] = { 44.6, 52, FELWOOD },
					["maps"] = { MARAUDON, HILLSBRAD_FOOTHILLS, BLACKROCK_DEPTHS },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/3 Fiery Infernal Core
							["provider"] = { "i", 220166 },	-- Fiery Infernal Core
							["coord"] = { 42.8, 43.6, FELWOOD },
							["crs"] = {
								7135,	-- Infernal Bodyguard
								7136,	-- Infernal Sentry
								9878,	-- Entropic Beast
								9879,	-- Entropic Horror
							},
						}),
						objective(2, {	-- 0/1 Shimmering Grave Dust
							["providers"] = {
								{ "i", 220167 },	-- Shimmering Grave Dust
								{ "o", 441222 },	-- Grave Mound
							},
							["description"] = "You can find this after killing Princess in Maraudon, right in front of Zaetar's Spirit next to his feet.",
						}),
						objective(3, {	-- 0/1 Triple-Brewed Molten Lager
							["provider"] = { "i", 220168 },	-- Triple-Brewed Molten Lager
							["description"] = "Sold by Plugger Spazzring in Blackrock Depths.",
						}),
						q(81944, {	-- A Newly Discovered Purpose...
							["qg"] = 214529,	-- Brave Stonetorch
							["coord"] = { 67.4, 14.8, HILLSBRAD_FOOTHILLS },
							["classes"] = { PALADIN },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 44,
							["groups"] = {
								objective(4, {	-- 0/1 Symbol of Faith
									["questID"] = 81790,	-- Materials of Significance
									["provider"] = { "i", 220169 },	-- Symbol of Faith
								}),
							},
						}),
					},
				})),
				-- #endif
				q(5085, {	-- Mystery Goo
					["providers"] = {
						{ "o", 176091 },	-- Deadwood Cauldron
						{ "i", 12813 },	-- Flask of Mystery Goo
					},
					["sourceQuest"] = 5084,	-- Falling to Corruption
					["coord"] = { 60.2, 5.9, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 52,
				}),
				q(28229, {	-- Nature and Nurture
					["qg"] = 48126,	-- Isural Forestsworn
					["sourceQuest"] = 28374,	-- Weeding the Lawn
					["coord"] = { 43.9, 28.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Stonemaul Clan Avenged
							["provider"] = { "i", 63332 },	-- Empty Moonwell Vial
							["coord"] = { 44.0, 28.4, FELWOOD },
						}),
					},
				}),
				q(28264, {	-- Navarax's Gambit
					["qg"] = 47923,	-- Feronas Sindweller
					["sourceQuest"] = 28261,	-- Deceivers In Our Midst
					["coord"] = { 45.5, 20.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Arch Druid Navarax slain
							["provider"] = { "n", 47842 },	-- Arch Druid Navarax
						}),
						i(65285, {	-- Selura's Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65305, {	-- Demon Heart Pendant
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65324, {	-- Navarax's Signet
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28385, {	-- Oil and Irony
					["qg"] = 48493,	-- Alton Redding
					["sourceQuest"] = 28337,	-- The Shredders of Irontree
					["coord"] = { 56.8, 18.4, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28288, {	-- Open Their Eyes
					["qg"] = 47341,	-- Arcanist Delaris
					["sourceQuest"] = 28113,	-- Break the Unbreakable
					["coord"] = { 41.9, 72.0, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/20 Imps terrified
							["provider"] = { "i", 63395 },	-- Delaris's Prism
							["cr"] = 47369,	-- Jadefire Imp
						}),
						i(65278, {	-- Gold Pot Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65298, {	-- Cheerful Shoulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65317, {	-- Rainbow Band
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65357, {	-- Rainbow Generator
							["timeline"] = { ADDED_4_0_3, DELETED_7_0_3 },
						}),
						i(133998, {	-- Rainbow Generator (TOY!)
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(28380, {	-- Pikwik in Peril
					["qg"] = 48127,	-- Darla Drilldozer
					["sourceQuests"] = {
						28339,	-- Is Your Oil Running?
						28336,	-- Slap and Cap
					},
					["coord"] = { 56.3, 8.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(4442, {	-- Purified!
					["qg"] = 9116,	-- Eridan Bluewind <Emerald Circle>
					["sourceQuest"] = 4441,	-- Felbound Ancients
					["coord"] = { 51.2, 81.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						{
							["itemID"] = 11445,	-- Flute of the Ancients
							["description"] = "You need to save this flute for the 'Ancient Spirit' escort quest, then you can safely discard it.",
							["timeline"] = { REMOVED_4_0_3 },
						},
					},
				}),
				q(28119, {	-- Purity From Corruption
					["qg"] = 51664,	-- Andalar Shadevale <Emerald Circle>
					["sourceQuest"] = 28116,	-- Crying Violet
					["coord"] = { 36.3, 58.2, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28228, {	-- Rejoining the Forest
					["qg"] = 48044,	-- Flourishing Protector
					["sourceQuest"] = 28224,	-- The Last Protector
					["coord"] = { 48.7, 25.2, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(65287, {	-- Gifted Bough
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65306, {	-- Amulet of Living Wood
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65325, {	-- Tree Ring Band
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28389, {	-- Report to the Denmother
					["qg"] = 48493,	-- Alton Redding
					["sourceQuests"] = {
						28388,	-- Bloody Wages
						28387,	-- Burnout
					},
					["coord"] = { 56.8, 18.4, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(65292, {	-- Fists of the Pack
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65311, {	-- Denmother's Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65330, {	-- Token of the Bond
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5203, {	-- Rescue From Jaedenar
					["qg"] = 11016,	-- Captured Arko'narin
					["sourceQuest"] = 5202,	-- A Strange Red Key
					["coord"] = { 36.2, 55.4, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 49,
				}),
				q(5204, {	-- Retribution of the Light
					["qg"] = 11019,	-- Jessir Moonbow
					["sourceQuest"] = 5203,	-- Rescue from Jaedenar
					["coord"] = { 51.3, 82.0, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/1 Rakaiah slain
							["provider"] = { "n", 9518 },	-- Rakaiah
							["coord"] = { 38.2, 50.4, FELWOOD },
						}),
					},
				}),
				q(28360, {	-- Running Their Course
					["qg"] = 48459,	-- Tender Puregrove
					["sourceQuest"] = 28306,	-- Whisperwind Grove
					["coord"] = { 43.3, 30.4, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Felrot Courser slain
							["provider"] = { "n", 48455 },	-- Felrot Courser
						}),
					},
				}),
				q(27989, {	-- Ruumbo Demands Honey
					["provider"] = { "o", 206585 },	-- Totem of Ruumbo
					["sourceQuest"] = 28100,	-- A Talking Totem
					["coord"] = { 51.4, 83.7, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(27994, {	-- Ruumbo Demands Justice
					["provider"] = { "o", 206585 },	-- Totem of Ruumbo
					["sourceQuest"] = 28100,	-- A Talking Totem
					["coord"] = { 51.4, 83.7, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/15 Deadwood Furbolg slain
							["providers"] = {
								{ "n", 47329},	-- Deadwood Kill Credit
								{ "n", 7153},	-- Deadwood Warrior
								{ "n", 7154},	-- Deadwood Gardener
								{ "n", 7155},	-- Deadwood Pathfinder
							},
						}),
					},
				}),
				q(5886, {	-- Salve via Disenchanting (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11174, 1 }},	-- Lesser Nether Essence
					["requireSkill"] = ENCHANTING,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4107, {	-- Salve via Disenchanting (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5886,	-- Salve via Disenchanting (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11174, 1 }},	-- Lesser Nether Essence
					["requireSkill"] = ENCHANTING,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5891, {	-- Salve via Disenchanting (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11174, 1 }},	-- Lesser Nether Essence
					["requireSkill"] = ENCHANTING,
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4112, {	-- Salve via Disenchanting (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4112,	-- Salve via Disenchanting (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11174, 1 }},	-- Lesser Nether Essence
					["requireSkill"] = ENCHANTING,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5884, {	-- Salve via Gathering (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11514, 4 }},	-- Fel Creep
					["requireSkill"] = HERBALISM,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4105, {	-- Salve via Gathering (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5884,	-- Salve via Gathering (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11514, 4 }},	-- Fel Creep
					["requireSkill"] = HERBALISM,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5889, {	-- Salve via Gathering (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11514, 4 }},	-- Fel Creep
					["requireSkill"] = HERBALISM,
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4110, {	-- Salve via Gathering (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 5889,	-- Salve via Gathering (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11514, 4 }},	-- Fel Creep
					["requireSkill"] = HERBALISM,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5882, {	-- Salve via Hunting (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11515, 6 }},	-- Corrupted Soul Shard
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4103, {	-- Salve via Hunting (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5882,	-- Salve via Hunting (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11515, 6 }},	-- Corrupted Soul Shard
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5887, {	-- Salve via Hunting (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11515, 6 }},	-- Corrupted Soul Shard
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4108, {	-- Salve via Hunting (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 5887,	-- Salve via Hunting (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11515, 6 }},	-- Corrupted Soul Shard
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5883, {	-- Salve via Mining (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11513, 4 }},	-- Tainted Vitriol
					["requireSkill"] = MINING,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4104, {	-- Salve via Mining (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5883,	-- Salve via Mining (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11513, 4 }},	-- Tainted Vitriol
					["requireSkill"] = MINING,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5888, {	-- Salve via Mining (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11513, 4 }},	-- Tainted Vitriol
					["requireSkill"] = MINING,
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4109, {	-- Salve via Mining (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 5888,	-- Salve via Mining (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11513, 4 }},	-- Tainted Vitriol
					["requireSkill"] = MINING,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5885, {	-- Salve via Skinning (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11512, 5 }},	-- Patch of Tainted Skin
					["requireSkill"] = SKINNING,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4106, {	-- Salve via Skinning (2/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["sourceQuest"] = 5885,	-- Salve via Skinning (1/2)
					["coord"] = { 54.2, 86.7, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11512, 5 }},	-- Patch of Tainted Skin
					["requireSkill"] = SKINNING,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5890, {	-- Salve via Skinning (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["coord"] = { 46.8, 83, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11512, 5 }},	-- Patch of Tainted Skin
					["requireSkill"] = SKINNING,
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(4111, {	-- Salve via Skinning (2/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["sourceQuest"] = 5890,	-- Salve via Skinning (1/2)
					["coord"] = { 46.8, 83, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 11512, 5 }},	-- Patch of Tainted Skin
					["requireSkill"] = SKINNING,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516, {	-- Cenarion Plant Salve
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(28049, {	-- See the Invisible
					["qg"] = 47366,	-- Impsy
					["sourceQuest"] = 28000,	-- Do the Imp-Possible
					["coord"] = { 41.8, 71.9, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Cursed Ooze
							["provider"] = { "i", 62918 },	-- Cursed Ooze
							["cr"] = 7086,	-- Cursed Ooze
						}),
						i(65276, {	-- Gloves of Constellas
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65296, {	-- Oozing Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65315, {	-- Impish Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65334, {	-- Impsy's Wand
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28220, {	-- Seeking Soil
					["sourceQuest"] = 28229,	-- Nature and Nurture
					["coord"] = { 48.6, 25.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(65286, {	-- Ancient Seed Casing
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(5158, {	-- Seeking Spiritual Aid
					["providers"] = {
						{ "n", 10922 },	-- Greta Mosshoof
						{ "i", 12907 },	-- Corrupt Moonwell Water
					},
					["sourceQuest"] = 5157,	-- Collection of the Corrupt Water
					["coord"] = { 51.2, 82.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_BARRENS },
					["lvl"] = 48,
				}),
				q(28153, {	-- Shadow Lord Fel'dan
					["qg"] = 51664,	-- Andalar Shadevale <Emerald Circle>
					["sourceQuest"] = 28131,	-- Twin Temptresses
					["coord"] = { 36.2, 58.2, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Shadow Lord Fel'dan slain
							["provider"] = { "n", 9517 },	-- Shadow Lord Fel'dan
						}),
					},
				}),
				q(4084, {	-- Silver Heart
					["qg"] = 9116,	-- Eridan Bluewind <Emerald Circle>
					["sourceQuest"] = 3942,	-- Linken's Memory
					["coord"] = { 51.2, 81.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/11 Silvery Claws
							["provider"] = { "i", 11172 },	-- Silvery Claws
							["crs"] = {
								8956,	-- Angerclaw Bear
								8957,	-- Angerclaw Grizzly
								8958,	-- Angerclaw Mauler
								14339,	-- Death Howl
								8961,	-- Felpaw Ravager
								8960,	-- Felpaw Scavenger
								8959,	-- Felpaw Wolf
								14344,	-- Mongress
							},
						}),
						objective(2, {	-- 0/1 Irontree Heart
							["provider"] = { "i", 11173 },	-- Irontree Heart
							["crs"] = {
								7139,	-- Irontree Stomper
								7138,	-- Irontree Wanderer
							},
						}),
					},
				}),
				q(28222, {	-- Singin' in the Sun
					["qg"] = 48032,	-- Seedling Protector
					["sourceQuests"] = {
						28219,	-- Buzzers for Baby
						28220,	-- Seeking Soil
					},
					["coord"] = { 48.6, 25.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28336, {	-- Slap and Cap
					["qg"] = 48127,	-- Darla Drilldozer
					["sourceQuests"] = {
						28357,	-- Take it to the Tree
						28370,	-- Wisp-napping
					},
					["coord"] = { 56.3, 8.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Panicking Worker slapped
							["provider"] = { "n", 48331 },	-- Panicking Worker
						}),
						i(65345, {	-- Oilfoot Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65348, {	-- Oil Grush Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65351, {	-- Workforce Chestguard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65354, {	-- Cloak of Sleep Deprivation
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28361, {	-- Squirrely Clean
					["qg"] = 48459,	-- Tender Puregrove
					["coord"] = { 43.3, 30.4, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/6 Tainted Squirrel scrubbed
							["provider"] = { "i", 63688 },	-- Squirrel Scrubbing Solution
							["cr"] = 48457,	-- Tainted Squirrel
						}),
					},
				}),
				q(28357, {	-- Take it to the Tree
					["qg"] = 48127,	-- Darla Drilldozer
					["sourceQuests"] = {
						28334,	-- A Flare Fight
						28333,	-- It's Time to Oil Up
					},
					["coord"] = { 56.3, 8.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Talonbranch Defender slain
							["provider"] = { "n", 48452 },	-- Talonbranch Defender
						}),
					},
				}),
				q(28359, {	-- The Core of Kroshius
					["qg"] = 48349,	-- Hurak Wildhorn
					["coord"] = { 44.0, 27.8, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Kroshius' Infernal Core
							["provider"] = { "i", 63687 },	-- Kroshius' Infernal Core
							["cr"] = 48344,	-- Kroshius
						}),
						i(65288, {	-- Shadow Curse Hood
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65307, {	-- Whisperwind Armbands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65326, {	-- Infernal Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65339, {	-- Warlockbane Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(27997, {	-- The Corruption of the Jadefire
					["qg"] = 10923,	-- Tenell Leafrunner
					["sourceQuests"] = {
						28543,	-- Hero's Call: Felwood!
						28542,	-- Warchief's Command: Felwood!
					},
					["coord"] = { 51.1, 80.4, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/12 Jadefire Glen satyr slain
							["providers"] = {
								{ "n", 7105},	-- Jadefire Satyr
								{ "n", 7109},	-- Jadefire Felsworn
							},
						}),
					},
				}),
				q(4421, {	-- The Corruption of the Jadefire
					["qg"] = 9116,	-- Eridan Bluewind
					["coord"] = { 51.4, 81.5, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						objective(4, {	-- 0/1 Xavathras slain
							["provider"] = { "n", 9454 },	-- Xavathras
						}),
						objective(1, {	-- 0/11 Jadefire Felsworn slain
							["provider"] = { "n", 7109 },	-- Jadefire Felsworn
						}),
						objective(2, {	-- 0/9 Jadefire Shadowstalker slain
							["provider"] = { "n", 7110 },	-- Jadefire Shadowstalker
						}),
						objective(3, {	-- 0/9 Jadefire Rogue slain
							["provider"] = { "n", 7106 },	-- Jadefire Rogue
						}),
						objective(4, {	-- 0/1 Xavathras slain
							["provider"] = { "n", 9454 },	-- Xavathras
						}),
					},
				}),
				q(28129, {	-- The Demon Prince
					["qg"] = 51664,	-- Andalar Shadevale <Emerald Circle>
					["sourceQuest"] = 28119,	-- Purity from Corruption
					["coord"] = { 36.3, 58.2, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Prince Xavalis slain
							["provider"] = { "n", 9877 },	-- Prince Xavalis
						}),
					},
				}),
				q(28381, {	-- The Denmother
					["qg"] = 48491,	-- James Hallow
					["sourceQuests"] = {
						28264,	-- Navarax's Gambit
						28224,	-- Rejoining the Forest
					},
					["coord"] = { 44.2, 28.0, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,	-- for "Enemy at Our Roots"
				}),
				q(28257, {	-- The Fall of Tichondrius
					["qg"] = 47923,	-- Feronas Sindweller
					["sourceQuest"] = 28256,	-- The Skull of Gul'dan
					["coord"] = { 45.5, 20.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(65284, {	-- Imposter's Mask
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65304, {	-- Sindweller's Armguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65323, {	-- Pauldrons of Thankless Deeds
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(28305, {	-- The Fate of Bloodvenom Post
					["qg"] = 47617,	-- Farlus Wildheart
					["sourceQuests"] = {
						28126,	-- Dousing the Flames of Protection
						28155,	-- Lord Banehollow
						28128,	-- The Inner Circle
					},
					["coord"] = { 44.1, 61.8, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(28128, {	-- The Inner Circle
					["qg"] = 51664,	-- Andalar Shadevale <Emerald Circle>
					["sourceQuest"] = 28119,	-- Purity From Corruption
					["coord"] = { 36.3, 58.2, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/12 Shadow Hold Defenders Slain
							["providers"] = {
								{ "n", 7120},	-- Jaedenar Warlock
								{ "n", 7114},	-- Jaedenar Enforcer
								{ "n", 7118},	-- Jaedenar Darkweaver
								{ "n", 7126},	-- Jaedenar Hunter
								{ "n", 9862},	-- Jaedenar Legionnaire
							},
						}),
						i(65280, {	-- Shadow Hold Mace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65300, {	-- Moonbow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65319, {	-- Purified Jaedenar Amulet
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(156982, {	-- Shadow Hold Dagger
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(28224, {	-- The Last Protector
					["qg"] = 48044,	-- Flourishing Protector
					["sourceQuests"] = {
						28222,	-- Singin' in the Sun
						28221,	-- These Roots Were Made For Stompin'
					},
					["coord"] = { 48.7, 25.2, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(82135, {	-- The Price of Hope
					["providers"] = {
						{ "n", 221587 },	-- Aeonas the Vindicated <Former Paladin of the Silver Hand>
						{ "i", 221519 },	-- Mannoroc Orb
					},
					["sourceQuest"] = 81885,	-- The Ritual
					["coord"] = { 45, 52, FELWOOD },
					["maps"] = { STORMWIND_CITY },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- 0/1 Withered Protector slain
							["provider"] = { "n", 7149 },	-- Withered Protector
						}),
						i(221518),	-- Whisper
					},
				})),
				-- #endif
				q(5385, {	-- The Remains of Trey Lightforge
					["providers"] = {
						{ "n", 11020 },	-- Remains of Trey Lightforge
						{ "i", 13562 },	-- Remains of Trey Lightforge
					},
					["sourceQuest"] = 5204,	-- Retribution of the Light
					["coord"] = { 38.4, 50.4, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 49,
					["groups"] = {
						i(15706, {	-- Hunt Tracker Blade
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15705, {	-- Tidecrest Blade
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(81885, {	-- The Ritual
					["qg"] =  221587,	-- Aeonas the Vindicated <Former Paladin of the Silver Hand>
					["sourceQuest"] = 81790,	-- Materials of Significance
					["coord"] = { 45, 52, FELWOOD },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- Complete the Ritual
							["provider"] = { "n", 221636 },	-- Gregory
							["coord"] = { 44.6, 52.0, FELWOOD },
						}),
						recipe(410013),	-- Engrave Bracers - Hammer of the Righteous
					},
				})),
				-- #endif
				q(28337, {	-- The Shredders of Irontree
					["qg"] = 48493,	-- Alton Redding
					["sourceQuest"] = 28384,	-- Into the Clearing
					["coord"] = { 56.8, 18.4, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/9 Irontree Shredder slain
							["provider"] = { "n", 48259 },	-- Irontree Shredder
						}),
					},
				}),
				q(28256, {	-- The Skull of Gul'dan
					["qg"] = 47923,	-- Feronas Sindweller
					["sourceQuest"] = 28218,	-- A Destiny of Flame and Shadow
					["coord"] = { 45.5, 20.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(28190, {	-- The Tainted Ooze
					["qg"] = 47692,	-- Altsoba Ragetotem
					["coord"] = { 41.2, 49.9, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Tainted Ooze slain
							["provider"] = { "n", 7092 },	-- Tainted Ooze
						}),
					},
				}),
				q(28392, {	-- The Timbermaw Tribe
					["qg"] = 47931,	-- Denmother Ulrica
					["sourceQuest"] = 28389,	-- Report to the Denmother
					["coord"] = { 61.8, 26.6, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(82043, {	-- The Wild Gods (1/2)
					["qg"] = 222408,	-- Shadowtooth Emissary
					["coord"] = { 51.4, 82, FELWOOD },
					["timeline"] = { ADDED_1_15_2 },
					["maps"] = { THE_HINTERLANDS, RAZORFEN_DOWNS },
					["cost"] = {{ "i", 221261, 1 }},	-- Wildwhisper Draught
					["lvl"] = 40,
					["groups"] = {
						i(221418),	-- Agamaggan's Roar
					},
				})),
				applyclassicphase(SOD_PHASE_THREE, q(82044, {	-- The Wild Gods (2/2)
					["qg"] = 222522,	-- Spirit of Agamaggan
					["sourceQuest"] = 82043,	-- The Wild Gods (1/2)
					["timeline"] = { ADDED_1_15_2 },
					["maps"] = { RAZORFEN_DOWNS, ZULFARRAK, MARAUDON, BLACKROCK_DEPTHS },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/3 Wild Offering
							["provider"] = { "i", 221262 },	-- Wild Offering
							["description"] = "Zul'Farrak - Clear any 3 bosses to spawn Delirious Ancient\nMaraudon - Kill Princess Theradras to spawn Delirious Ancient\nBlackrock Depths - Kill all three boss encounters - High Interrogator Gerstahn, Houndmaster Grebmar & High Justice Grimstone - to spawn Delirious Ancient\n\nUse Agamaggan's Roar Agamaggan's Roar on any of the ghostly spawns to summon dungeon-respective Delirious Ancient.",
						}),
						i(222962, {	-- Hyjal's Wisdom
							recipe(429247, {	-- Engrave Helm - Improved Sanctuary
								["classes"] = { PALADIN },
							}),
							i(221488, {	-- Resolute Epiphany
								["classes"] = { PRIEST },
								["groups"] = {
									recipe(431650),	-- Engrave Helm - Divine Aegis
								},
							}),
							i(221514, {	-- Rune of Firepower
								["classes"] = { HUNTER },
								["groups"] = {
									recipe(416085),	-- Engrave Helm - Lock and Load
								},
							}),
							i(221513, {	-- Rune of Potency
								["classes"] = { ROGUE },
								["groups"] = {
									recipe(432293),	-- Engrave Helm - Combat Potency
								},
							}),
							i(221516, {	-- Rune of Primal Energy
								["classes"] = { DRUID },
								["groups"] = {
									recipe(431461),	-- Engrave Bracers - Improved Frenzied Regeneration
								},
							}),
							i(221490, {	-- Rune of Riptide
								["classes"] = { SHAMAN },
								["groups"] = {
									recipe(410105),	-- Engrave Bracers - Riptide
								},
							}),
							i(221510, {	-- Rune of the Knight
								["classes"] = { WARRIOR },
								["groups"] = {
									recipe(427082),	-- Engrave Bracers - Sword and Board
								},
							}),
							i(221489, {	-- Rune of Vengeance
								["classes"] = { WARLOCK },
								["groups"] = {
									recipe(426470),	-- Engrave Helm - Vengeance
								},
							}),
							i(221487, {	-- Spell Notes: Advanced Warding
								["classes"] = { MAGE },
								["groups"] = {
									recipe(401754),	-- Engrave Helm - Advanced Warding
								},
							}),
						}),
					},
				})),
				-- #endif
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8421, {	-- The Wrong Stuff
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["sourceQuests"] = {
						8419,	-- An Imp's Request
						8420,	-- Hot and Itchy
					},
					["coord"] = { 41.6, 45.0, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/10 Rotting Wood
							["provider"] = { "i", 20613 },	-- Rotting Wood
							["crs"] = {
								7139,	-- Irontree Stomper
								7138,	-- Irontree Wanderer
								7149,	-- Withered Protector
							},
						}),
						objective(2, {	-- 0/4 Bloodvenom Essence
							["provider"] = { "i", 20614 },	-- Bloodvenom Essence
							["cr"] = 7092,	-- Tainted Ooze
						}),
					},
				})),
				q(28221, {	-- These Roots Were Made For Stompin'
					["qg"] = 48042,	-- Sapling Protector
					["sourceQuests"] = {
						28219,	-- Buzzers for Baby
						28220,	-- Seeking Soil
					},
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Irontree Stomper slain
							["provider"] = { "n", 7139 },	-- Irontree Stomper
						}),
					},
				}),
				q(28044, {	-- Touch the Untouchable
					["qg"] = 47366,	-- Impsy
					["sourceQuest"] = 28049,	-- See the Invisible
					["coord"] = { 41.8, 71.9, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Claw of Tichondrius
							["provider"] = { "i", 62919 },	-- Claw of Tichondrius
							["cr"] = 47398,	-- Vorlus
						}),
					},
				}),
				q(28335, {	-- Turn It Off! Turn It Off!
					["qg"] = 48333,	-- Foreman Pikwik
					["sourceQuest"] = 28380,	-- Pikwik in Peril
					["coord"] = { 54.6, 18.3, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(28131, {	-- Twin Temptresses
					["qg"] = 51664,	-- Andalar Shadevale <Emerald Circle>
					["sourceQuest"] = 28129,	-- The Demon Prince
					["coord"] = { 36.3, 58.2, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Moora slain
							["provider"] = { "n", 9861 },	-- Moora
						}),
						objective(2, {	-- 0/1 Salia slain
							["provider"] = { "n", 9860 },	-- Salia
						}),
					},
				}),
				q(7624, {	-- Ulathek the Traitor
					["qg"] = 9516,	-- Lord Banehollow
					["sourceQuest"] = 7623,	-- Lord Banehollow
					["coord"] = { 36.0, 44.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {{ "i", 18802, 1 }},	-- Shadowy Potion
					["classes"] = { WARLOCK },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 The Traitor's Heart
							["provider"] = { "i", 18719 },	-- The Traitor's Heart
							["coord"] = { 40.6, 48.4, FELWOOD },
							["cr"] = 14523,	-- Ulathek
						}),
					},
				}),
				q(5156, {	-- Verifying the Corruption
					["qg"] = 10921,	-- Taronn Redfeather
					["coord"] = { 50.9, 81.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/2 Entropic Beast slain
							["provider"] = { "n", 9878 },	-- Entropic Beast
						}),
						objective(2, {	-- 0/2 Entropic Horror slain
							["provider"] = { "n", 9879 },	-- Entropic Horror
						}),
					},
				}),
				q(28217, {	-- Wanted: The Demon Hunter
					["qg"] = 47843,	-- Huntress Selura
					["sourceQuest"] = 28374,	-- Weeding the Lawn
					["coord"] = { 43.4, 28.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Feronas Sindweller slain
							["provider"] = { "n", 47923 },	-- Feronas Sindweller
						}),
					},
				}),
				warchiefscommand(q(28542, {	-- Warchief's Command: Felwood!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF },	-- Only found in Orgrimmar & Thunder Bluff in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 44. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 48. (TODO: Test max level)
					["lvl"] = { 44, 48 },
					-- #endif
				})),
				q(28374, {	-- Weeding the Lawn
					["qg"] = 48459,	-- Tender Puregrove
					["sourceQuests"] = {
						28360,	-- Running Their Course
						28361,	-- Squirrely Clean
					},
					["coord"] = { 43.3, 30.3, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/7 Whisperwind Lashers checked
							["provider"] = { "n", 47747 },	-- Whisperwind Lasher
						}),
						i(65289, {	-- Floral Pantaloons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65308, {	-- Puregrove Spaulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65327, {	-- Weed Puller's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(65340, {	-- Thornward Greaves
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(4505, {	-- Well of Corruption
					["qg"] = 9996,	-- Winna Hazzard
					["sourceQuest"] = 6605,	-- A Strange One
					["coord"] = { 34.2, 52.4, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Flasket
							["providers"] = {
								{ "i", 12567 },	-- Filled Flasket
								{ "i", 12566 },	-- Hardened Flasket
							},
							["coord"] = { 32, 66, FELWOOD },
						}),
					},
				}),
				q(7601, {	-- What Niby Commands
					["qg"] = 14469,	-- Niby the Almighty
					["coord"] = { 41.4, 44.8, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 50,
				}),
				q(28306, {	-- Whisperwind Grove
					["qg"] = 47696,	-- Kelnir Leafsong
					["sourceQuests"] = {
						28214,	-- Cleanup at Bloodvenom Post
						28213,	-- Hazzard Disposal
					},
					["coord"] = { 41.2, 49.9, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(4521, {	-- Wild Guardians (1/3)
					["qg"] = 10306,	-- Trull Failbane
					["coord"] = { 34.6, 52.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/15 Raging Owlbeast slain
							["provider"] = { "n", 7451 },	-- Raging Owlbeast
						}),
						objective(2, {	-- 0/15 Ragged Owlbeast slain
							["provider"] = { "n", 7450 },	-- Ragged Owlbeast
						}),
					},
				}),
				q(4741, {	-- Wild Guardians (2/3)
					["qg"] = 10306,	-- Trull Failbane
					["sourceQuest"] = 4521,	-- Wild Guardians (1/3)
					["coord"] = { 34.6, 52.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/13 Moontouched Owlbeast slain
							["provider"] = { "n", 7453 },	-- Moontouched Owlbeast
						}),
					},
				}),
				q(4721, {	-- Wild Guardians (3/3)
					["qg"] = 10306,	-- Trull Failbane
					["sourceQuest"] = 4741,	-- Wild Guardians (2/3)
					["coord"] = { 34.6, 52.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/10 Berserk Owlbeast slain
							["provider"] = { "n", 7454 },	-- Berserk Owlbeast
						}),
					},
				}),
				q(28208, {	-- Winna's Kitten
					["qg"] = 47696,	-- Kelnir Leafsong
					["sourceQuests"] = {
						28207,	-- A Slimy Situation
						28190,	-- The Tainted Ooze
					},
					["coord"] = { 41.2, 49.9, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Kitty's Eartag
							["provider"] = { "i", 63279 },	-- Kitty's Eartag
							["cr"] = 47687,	-- Winna's Kitten
						}),
					},
				}),
				q(28370, {	-- Wisp-napping
					["qg"] = 48127,	-- Darla Drilldozer
					["sourceQuests"] = {
						28334,	-- A Flare Fight
						28333,	-- It's Time to Oil Up
					},
					["coord"] = { 56.3, 8.1, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Talonbranch Wisp captured
							["provider"] = { "i", 63698 },	-- Darla's Wisp Magnet
							["cr"] = 48454,	-- Talonbranch Wisp
						}),
					},
				}),
				q(28383, {	-- Wisps of the Woods
					["qg"] = 48492,	-- Lyros Swiftwind
					["coord"] = { 61.8, 26.6, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Talonbranch Wisp captured
							["provider"] = { "i", 64300 },	-- Swiftwind Switch
							["cr"] = 48454,	-- Talonbranch Wisp
						}),
					},
				}),
				q(7625, {	-- Xorothian Stardust
					["qg"] = 9516,	-- Lord Banehollow
					["sourceQuest"] = 7624,	-- Ulathek the Traitor
					["coord"] = { 36.0, 44.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["cost"] = {
						{ "i", 18802, 1 },	-- Shadowy Potion
						{ "i", 18687, 1 },	-- Xorothian Stardust
					},
					["lvl"] = 60,
				}),
			}),
			n(RARES, {
				n(14340, {	-- Alshirr Banebreath
					["coords"] = {
						-- #if AFTER CATA
						{ 40.0, 82.2, FELWOOD },
						{ 40.6, 83.2, FELWOOD },
						{ 41.8, 84.0, FELWOOD },
						{ 43.2, 85.6, FELWOOD },
						{ 43.8, 85.8, FELWOOD },
						-- #else
						{ 39.0, 83.0, FELWOOD },
						{ 40.2, 86.0, FELWOOD },
						{ 43.0, 88.0, FELWOOD },
						-- #endif
					},
				}),
				n(50362, {	-- Blackbog the Fang
					["coord"] = { 34.8, 59.6, FELWOOD },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(50905, {	-- Cida
					["coord"] = { 45.0, 31.8, FELWOOD },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(14339, {	-- Death Howl
					["coords"] = {
						-- #if AFTER CATA
						{ 54.2, 84.4, FELWOOD },
						{ 48.2, 74.6, FELWOOD },
						-- #else
						{ 48.2, 79.0, FELWOOD },
						{ 49.8, 77.2, FELWOOD },
						{ 56.8, 90.0, FELWOOD },
						-- #endif
					},
				}),
				n(7104, {	-- Dessecus
					["coords"] = {
						-- #if AFTER CATA
						{ 57.8, 19.6, FELWOOD },
						-- #else
						{ 57.4, 22.4, FELWOOD },
						{ 58.0, 17.4, FELWOOD },
						{ 58.6, 19.6, FELWOOD },
						-- #endif
					},
				}),
				n(51025, {	-- Dilennaa
					["coord"] = { 42.2, 48.2, FELWOOD },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(50833, {	-- Duskcoat
					["coord"] = { 39.8, 31.4, FELWOOD },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(51046, {	-- Fidonis
					["coord"] = { 38.6, 52.8, FELWOOD },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(51017, {	-- Gezan
					["coord"] = { 52.6, 31.8, FELWOOD },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(107595, {	-- Grimrot
					["description"] = "This is the daytime light grey bear model.",
					["coord"] = { 38.2, 45.4, FELWOOD },
					["timeline"] = { ADDED_7_0_3 },
				}),
				n(107596, {	-- Grimrot
					["description"] = "This is the nightime black diseased bear model.",
					["coord"] = { 38.2, 45.4, FELWOOD },
					["timeline"] = { ADDED_7_0_3 },
				}),
				n(50925, {	-- Grovepaw
					["coord"] = { 38.2, 72.8, FELWOOD },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(7137, {	-- Immolatus
					["coords"] = {
						-- #if AFTER CATA
						{ 41.4, 42.0, FELWOOD },
						-- #else
						{ 41.8, 39.4, FELWOOD },
						{ 46.0, 39.2, FELWOOD },
						{ 44.6, 42.2, FELWOOD },
						{ 41.2, 42.6, FELWOOD },
						-- #endif
					},
				}),
				n(14344, {	-- Mongress
					["coords"] = {
						-- #if AFTER CATA
						{ 43.4, 75.8, FELWOOD },
						{ 46.8, 82.0, FELWOOD },
						-- #else
						{ 43.6, 77.6, FELWOOD },
						{ 46.8, 83.0, FELWOOD },
						-- #endif
					},
				}),
				n(50777, {	-- Needle
					["coord"] = { 51.0, 34.2, FELWOOD },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(14343, {	-- Olm the Wise
					["coords"] = {
						-- #if AFTER CATA
						{ 57.8, 19.4, FELWOOD },
						{ 56.6, 23.6, FELWOOD },
						{ 55.2, 23.6, FELWOOD },
						{ 54.6, 27.2, FELWOOD },
						-- #else
						{ 54.6, 26.6, FELWOOD },
						{ 57.2, 21.4, FELWOOD },
						{ 58.6, 18.6, FELWOOD },
						{ 56.6, 9.2, FELWOOD },
						-- #endif
					},
				}),
				n(14342, {	-- Ragepaw
					["coords"] = {
						-- #if AFTER CATA
						{ 48.6, 89.0, FELWOOD },
						-- #else
						{ 47.6, 93.6, FELWOOD },
						{ 49.0, 92.8, FELWOOD },
						{ 48.4, 91.2, FELWOOD },
						-- #endif
					},
				}),
				n(50724, {	-- Spinecrawl
					["coord"] = { 60.6, 22.2, FELWOOD },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(14345, {	-- The Ongar
					["coords"] = {
						-- #if AFTER CATA
						{ 42.0, 45.8, FELWOOD },
						-- #else
						{ 39.0, 48.4, FELWOOD },
						{ 42.8, 47.6, FELWOOD },
						{ 43.8, 49.6, FELWOOD },
						-- #endif
					},
				}),
				n(50864, {	-- Thicket
					["coord"] = { 59.6, 6.8, FELWOOD },
					["timeline"] = { ADDED_5_1_0 },
				}),
			}),
			-- #if BEFORE 4.0.3
			prof(SKINNING, {
				i(11512, {	-- Patch of Tainted Skin
					["provider"] = { "i", 11511 },	-- Cenarion Beacon
					["description"] = "In order for this to drop while Skinning, you must have the Cenarion Beacon in your bags.",
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						8956,	-- Angerclaw Bear
						8957,	-- Angerclaw Grizzly
						8958,	-- Angerclaw Mauler
						8961,	-- Felpaw Ravager
						8960,	-- Felpaw Scavenger
						8959,	-- Felpaw Wolf
						7125,	-- Jaedenar Hound
						7126,	-- Jaedenar Hunter
					},
				}),
			}),
			-- #endif
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_FOUR, i(226416, {	-- Rune of Nature Specialization
					["provider"] = { "o", 457092 },	-- The Fury of Stormrage
					["timeline"] = { ADDED_1_15_3 },
					["coord"] = { 62.8, 7.5, FELWOOD },
					["classes"] = { HUNTER, ROGUE, SHAMAN, DRUID },
					["groups"] = {
						recipe(453698, {	-- Engrave Ring - Nature Specialization
							["classes"] = { HUNTER, ROGUE, SHAMAN, DRUID },
						}),
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(2806, {	-- Bale <General Goods>
					["coord"] = { 34.8, 53.2, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(35564, {	-- Recipe: Charred Bear Kabobs (RECIPE!)
							["timeline"] = { ADDED_2_4_0, REMOVED_4_1_0 },	-- Moved to Trainers
						}),
						i(35566, {	-- Recipe: Juicy Bear Burger (RECIPE!)
							["timeline"] = { ADDED_2_4_0, REMOVED_4_1_0 },	-- Moved to Trainers
						}),
						i(16110),	-- Recipe: Monster Omelet (RECIPE!)
					},
				}),
				n(48577, {	-- Ciana <Weaponsmith>
					["coord"] = { 43.2, 28.4, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(11308, {	-- Sylvan Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(48580, {	-- Desaan <Cooking Supplies>
					["coord"] = { 43.8, 29.8, FELWOOD },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(2803, {	-- Malygen <General Goods>
					["coords"] = {
						-- #if AFTER CATA
						{ 61.2, 26.8, FELWOOD },
						-- #else
						{ 62.2, 25.6, FELWOOD },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(35564, {	-- Recipe: Charred Bear Kabobs (RECIPE!)
							["timeline"] = { ADDED_2_4_0, REMOVED_4_1_0 },	-- Moved to Trainers
						}),
						i(35566, {	-- Recipe: Juicy Bear Burger (RECIPE!)
							["timeline"] = { ADDED_2_4_0, REMOVED_4_1_0 },	-- Moved to Trainers
						}),
						i(16110),	-- Recipe: Monster Omelet (RECIPE!)
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, n(222408, {	-- Shadowtooth Emissary
					["sourceQuest"] = 82044,	-- The Wild Gods (2/2)
					["coord"] = { 51.4, 82, FELWOOD },
					["timeline"] = { ADDED_1_15_2 },
					["lvl"] = 40,
					["groups"] = {
						i(221491, {	-- Shadowtooth Bag
							["description"] = "Random non-Ace card from the new DMF decks.",
							["cost"] = {{ "i", 221262, 10 }},	-- 10x Wild Offering
							["sym"] = {{ "select", "itemID",
								221291,	-- Two of Dunes
								221292,	-- Three of Dunes
								221293,	-- Four of Dunes
								221294,	-- Five of Dunes
								221295,	-- Six of Dunes
								221296,	-- Seven of Dunes
								221297,	-- Eight of Dunes
								221300,	-- Two of Nightmares
								221301,	-- Three of Nightmares
								221302,	-- Four of Nightmares
								221303,	-- Five of Nightmares
								221304,	-- Six of Nightmares
								221305,	-- Seven of Nightmares
								221306,	-- Eight of Nightmares
								221282,	-- Two of Plagues
								221283,	-- Three of Plagues
								221284,	-- Four of Plagues
								221285,	-- Five of Plagues
								221286,	-- Six of Plagues
								221287,	-- Seven of Plagues
								221288,	-- Eight of Plagues
								221273,	-- Two of Wilds
								221274,	-- Three of Wilds
								221275,	-- Four of Wilds
								221276,	-- Five of Wilds
								221277,	-- Six of Wilds
								221278,	-- Seven of Wilds
								221279,	-- Eight of Wilds
							}},
						}),
						i(223197, {	-- Defender of the Wilds
							["cost"] = {{ "i", 221262, 15 }},	-- 12x Wild Offering
						}),
						i(223193, {	-- Crown of the Dreamweaver
							["cost"] = {{ "i", 221262, 15 }},	-- 15x Wild Offering
						}),
						i(223192, {	-- Cord of the Untamed
							["cost"] = {{ "i", 221262, 15 }},	-- 15x Wild Offering
						}),
						i(223196, {	-- Godslayer's Greaves
							["cost"] = {{ "i", 221262, 15 }},	-- 15x Wild Offering
						}),
						i(223194, {	-- Band of the Wilds
							["cost"] = {{ "i", 221262, 12 }},	-- 12x Wild Offering
						}),
						i(223195, {	-- Breadth of the Beast
							["cost"] = {{ "i", 221262, 12 }},	-- 12x Wild Offering
						}),
					},
				})),
				-- #endif
				n(14522, {	-- Ur'dan
					["sourceQuest"] = 7625,	-- Xorothian Stardust
					["coord"] = { 36.2, 44.6, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["groups"] = {
						i(18687, {	-- Xorothian Stardust
							["timeline"] = { REMOVED_4_0_3 },
							["cost"] = 1500000,	-- 150g
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(13140, {	-- Blood Red Key
					["timeline"] = { REMOVED_4_0_3 },
					["crs"] = {
						7118,	-- Jaedendar Darkweaver
						7114,	-- Jaedendar Enforcer
						9862,	-- Jaedendar Legionnaire
						7120,	-- Jaedendar Warlock
					},
				}),
				-- #if BEFORE 4.0.3
				i(11515, {	-- Corrupted Soul Shard
					["provider"] = { "i", 11511 },	-- Cenarion Beacon
					["description"] = "In order for this to drop by killing mobs, you must have the Cenarion Beacon in your bags.",
					["timeline"] = { REMOVED_4_0_3 },
				}),
				-- #endif
				i(21377, {	-- Deadwood Headdress Feather
					["description"] = "Drops commmonly from all Deadwood furbolgs, and can be turned in to the NPCs named Grazle and Nafien for Timbermaw Hold reputation. Each turn in requires 5 Deadwood Headdress Feathers. Grazle can be found in the southmost part of the zone, in the Emerald Sanctuary. Nafien can be found in the northernmost part of the zone, by the entrance to Timbermaw Hold.",
					["crs"] = {
						9462,	-- Chieftain Bloodmaw
						7157,	-- Deadwood Avenger
						7156,	-- Deadwood Den Watcher
						7154,	-- Deadwood Gardener
						7155,	-- Deadwood Pathfinder
						7158,	-- Deadwood Shaman
						7153,	-- Deadwood Warrior
						9464,	-- Overlord Ror
						14342,	-- Ragepaw
					},
				}),
				i(20768, {	-- Oozing Bag
					["crs"] = {
						7092,	-- Tainted Ooze
						14345,	-- The Ongar
						7093,	-- Vile Ooze
					},
					["sym"] = {{"select","itemID", 20769}},	-- Disgusting Oozeling (PET!)
				}),
				i(15752, {	-- Pattern: Living Leggings (RECIPE!)
					["cr"] = 7158,	-- Deadwood Shaman
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["coords"] = {
						{ 62.6, 12.6, FELWOOD },
						{ 61.6, 7.4, FELWOOD },
					},
				}),
				i(15739, {	-- Pattern: Runic Leather Bracers
					["timeline"] = { REMOVED_4_0_3 },	-- Moved to Trainers
					["cr"] = 7112,	-- Jaedenar Cultist
				}),
				i(15754, {	-- Pattern: Warbear Woolies (RECIPE!)
					["timeline"] = { REMOVED_1_11_1 },
					["crs"] = {
						7158,	-- Deadwood Shaman
						7156,	-- Deadwood Den Watcher
					},
				}),
				i(15744, {	-- Pattern: Wicked Leather Headband (RECIPE!)
					["timeline"] = { REMOVED_4_0_3 },	-- Moved to Trainers
					["cr"] = 7107,	-- Jadefire Trickster
				}),
				i(13491, {	-- Recipe: Elixir of the Mongoose (RECIPE!)
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },	-- ATT Discord 05.09.2023
					["cr"] = 7106,	-- Jadefire Rogue
					["coords"] = {
						{ 38.6, 69.6, FELWOOD },
						{ 33.8, 66.6, FELWOOD },
					},
				}),
			}),
		},
	}),
}));
