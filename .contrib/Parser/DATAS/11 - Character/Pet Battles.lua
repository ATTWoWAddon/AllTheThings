-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
PET_BATTLE_DUNGEONS = createHeader({
	readable = "Pet Battle Dungeons",
	icon = [[~_.asset("Pet_Dungeon")]],
	text = {
		en = "Pet Battle Dungeons",
		de = "Haustierkampf Instanzen",
		es = "Mazmorras de duelo de mascotas",
		mx = "Calabozos de duelo de mascotas",
		fr = "Mascotte des combat des donjons",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Подземелья Боевых питомцев",
		cn = "宠物对战地下城",
		tw = "寵物對戰挑戰",
	},
});
root(ROOTS.Character, n(PET_BATTLES, {
	["timeline"] = { ADDED_5_0_4 },
	["groups"] = {
		n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
			pvp(n(PVP, {
				ach(12290, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 } }, {	-- Family Brawler
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						12280,	-- Aquatic Brawler
						12281,	-- Beast Brawler
						12284,	-- Critter Brawler
						12287,	-- Dragonkin Brawler
						12282,	-- Elemental Brawler
						12286,	-- Flying Brawler
						12289,	-- Humanoid Brawler
						12283,	-- Magic Brawler
						12279,	-- Mechanical Brawler
						12285,	-- Undead Brawler
					}},
					["groups"] = {
						i(156666),	-- Master Trainer's Tabard
					},
				})),
				ach(12280, {	-- Aquatic Brawler
					["timeline"] = { ADDED_7_3_5 },
				}),
				ach(12281, {	-- Beast Brawler
					["timeline"] = { ADDED_7_3_5 },
				}),
				ach(12284, {	-- Critter Brawler
					["timeline"] = { ADDED_7_3_5 },
				}),
				ach(12287, {	-- Dragonkin Brawler
					["timeline"] = { ADDED_7_3_5 },
				}),
				ach(12282, {	-- Elemental Brawler
					["timeline"] = { ADDED_7_3_5 },
				}),
				ach(12286, {	-- Flying Brawler
					["timeline"] = { ADDED_7_3_5 },
				}),
				ach(12289, {	-- Humanoid Brawler
					["timeline"] = { ADDED_7_3_5 },
				}),
				ach(12283, {	-- Magic Brawler
					["timeline"] = { ADDED_7_3_5 },
				}),
				ach(12279, {	-- Mechanical Brawler
					["timeline"] = { ADDED_7_3_5 },
				}),
				ach(12285, {	-- Undead Brawler
					["timeline"] = { ADDED_7_3_5 },
				}),
				ach(8297, {	-- Merciless Pet Brawler (10)
					["timeline"] = { ADDED_5_3_0 },
				}),
				ach(8298, {	-- Vengeful Pet Brawler (50)
					["timeline"] = { ADDED_5_3_0 },
				}),
				ach(8300, bubbleDownSelf({ ["timeline"] = { ADDED_5_3_0 } }, {	-- Brutal Pet Brawler (250)
					i(94191),	-- Stunted Direhorn (PET!)
				})),
				ach(8301, bubbleDownSelf({ ["timeline"] = { ADDED_5_3_0 } }, {	-- Deadly Pet Brawler (1000)
					title(227),	-- Trainer <Name>
				})),
				ach(6595),	-- Pet Brawler (10)
				ach(6596),	-- Experienced Pet Brawler (50)
				ach(6597),	-- Master Pet Brawler (250)
				ach(6598),	-- Grand Master Pet Brawler (1000)
				ach(6599),	-- Legendary Pet Brawler (5000)
				ach(6620),	-- No Time To Heal
			})),
			-- Raise Pet
			ach(7433),	-- Newbie (3)
			ach(6566),	-- Just a Pup (5)
			ach(6567),	-- Growing Up (10)
			ach(6568),	-- Time for a Leash (15)
			ach(6569),	-- Old Timer (Lvl 20)
			ach(6570),	-- All Growns Up! (Lvl 25)
			-- Raise Family (Need Crit)
			ach(6609),	-- No Favorites (Lvl 10)
			ach(6610),	-- All Pets Allowed (Lvl 25)
			ach(7465),	-- An Uncommon Find
			ach(6622, {	-- Big City Pet Brawler
				-- Meta Achievement should symlink the contained Achievements from Source
				["sym"] = {{"meta_achievement",
					6584,	-- Big City Pet Brawlin' - Alliance
					6621,	-- Big City Pet Brawlin' - Horde
				}},
			}),
			ach(6584, {	-- Big City Pet Brawlin' - Alliance
				crit(19845),	-- Stormwind
				crit(19846),	-- Ironforge
				crit(19847),	-- Darnassus
				crit(19848),	-- The Exodar
			}),
			ach(6621, {	-- Big City Pet Brawlin' - Horde
				crit(19849),	-- Orgrimmar
				crit(19850),	-- Thunder Bluff
				crit(19851),	-- Undercity
				crit(19852),	-- Silvermoon City
			}),
			ach(6611, {	-- Continental Tamer
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					6614,	-- Outland Tamer
					6612,	-- Kalimdor Tamer
					6615,	-- Northrend Tamer
					6613,	-- Eastern Kingdoms Tamer
					6616,	-- Pandaria Tamer
				}},
			}),
			ach(8397, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0 } }, {	-- Crazy for Cats (need to add locations to comments for future use - wowhead did not link)
				-- title_gendered(252, 240),	-- the Crazy Cat Man / the Crazy Cat Lady
				title_female(240),	-- <Name> the Crazy Cat Lady
				title_male(252),	-- <Name> the Crazy Cat Man
				crit(23577),	-- Black Tabby Cat
				crit(23578),	-- Bombay Cat
				crit(29725),	-- Brightpaw
				crit(23579),	-- Calico Cat
				crit(23580),	-- Cat
				crit(23581),	-- Cheetah Cub
				crit(23596),	-- Cinder Kitten
				crit(23582),	-- Cornish Rex Cat
				crit(23583),	-- Darkmoon Cub
				crit(23584),	-- Feline Familiar
				crit(23585),	-- Fluxfire Feline
				crit(23740),	-- Guardian Cub
				crit(23586),	-- Mr. Bigglesworth
				crit(23597),	-- Nightsaber Cub
				crit(23587),	-- Orange Tabby Cat
				crit(23588),	-- Panther Cub
				crit(23589),	-- Sand Kitten
				crit(23590),	-- Sapphire Cub
				crit(23591),	-- Siamese Cat
				crit(23592),	-- Silver Tabby Cat
				crit(23593),	-- Snow Cub
				un(REMOVED_FROM_GAME,crit(23599)),	-- Spectral Cub
				crit(23598),	-- Spectral Tiger Cub
				crit(23594),	-- White Kitten
				crit(23595),	-- Winterspring Cub
				crit(23600),	-- Xu-Fu, Cub of Xuen
			})),
			ach(8080, {	-- Fabled Pandaren Tamer
				["timeline"] = { ADDED_5_2_0 },
			}),
			ach(6608, {	-- Family Reunion
				crit(19750),	-- Humanoid
				crit(19751),	-- Dragonkin
				crit(19752),	-- Undead
				crit(19753),	-- Flying
				crit(19754),	-- Critter
				crit(19755),	-- Magic
				crit(19756),	-- Elemental
				crit(19757),	-- Beast
				crit(19758),	-- Aquatic
				crit(19759),	-- Mechanical
			}),
			ach(7908, bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0 } }, {	-- I Choose You
				i(92744),	-- Heavy Sack of Gold
			})),
			ach(6594),	-- Cat Fight! (10)
			ach(6593),	-- Experienced Pet Battler (50)
			ach(6462),	-- Master Pet Battler (250)
			ach(6591),	-- Grand Master Pet Battler (1000)
			ach(6592),	-- Legendary Pet Battler (5000)
			ach(9070, {	-- Overstuffed
				["timeline"] = { ADDED_6_0_3_LAUNCH },
			}),
			ach(7936, {	-- Pandaren Spirit Tamer
				["timeline"] = { ADDED_5_1_0 },
			}),
			ach(12927, {	-- Polished Pet Charmer
				["cost"] = {{"i", POLISHED_PET_CHARM, 500}},
				["timeline"] = { ADDED_8_0_1_LAUNCH },
			}),
			ach(6578),	-- Pro Pet Group (15)
			ach(6581),	-- Pro Pet Crew (30)
			ach(6582, {	-- Pro Pet Mob (75)
				i(88147),	-- Singing Cricket (PET!)
			}),
			ach(7462),	-- A Rare Catch (1)
			ach(7463),	-- High Quality (10)
			ach(7464),	-- Quality & Quantity (50)
			ach(6579),	-- Rookie Pet Group (15)
			ach(6580),	-- Rookie Pet Crew (30)
			ach(6583),	-- Rookie Pet Mob (75)
			ach(9712, {	-- Shiny Pet Charmer
				["cost"] = {{"i", 116415, 500 }},	-- 500x Shiny Pet Charms
				["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_10_2_5 },
			}),
			ach(6851, {	-- Take 'Em All On!
				crit(19835),	-- Aquatic
				crit(19836),	-- Beast
				crit(19837),	-- Critter
				crit(19838),	-- Dragonkin
				crit(19839),	-- Elemental
				crit(19840),	-- Flying
				crit(19841),	-- Humanoid
				crit(19842),	-- Magic
				crit(19843),	-- Mechanical
				crit(19844),	-- Undead
			}),
			ach(6571),	-- That Was Close!
			ach(7482),	-- Trainer Extraordinaire [100]
			ach(7483),	-- Battle Master [200]
			ach(6600),	-- Ultimate Trainer [300]
			ach(7521, {	-- Time to Open a Pet Store [400]
				i(89686),	-- Jade Tentacle (PET!)
			}),
			ach(6618),	-- On A Roll (10)
			ach(6619),	-- Win Streak (25)
			achpart(6558, 6560),	-- Local Pet Mauler (10)
			achpart(6559, 6560),	-- Traveling Pet Mauler (30)
			ach(6560),	-- World Pet Mauler (60) (automated)
			ach(16731,	bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {	-- Court is Now in Session
				crit(56693),	-- Lord Basilton
				crit(56700),	-- Lady Feathersworth
				crit(56706),	-- Mister Toots
				crit(56707),	-- Mister Muskoxeles
				crit(60889),	-- Princess Vorquistrasza
				title(480),	-- <Name>, Knight of Feathersworth
			})),
			ach(6554),	-- He's Mine! (10)
			ach(6555),	-- Building a Team (25)
			ach(6556),	-- Going to Need More Traps (50)
			ach(6557),	-- Master Pet Hunter (100)
			ach(7436),	-- Zen Pet Hunter (200)
			ach(15644,	bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {	-- Good Things Come in Small Packages (1800)
				i(191946),	-- Mister Muskoxeles (PET!)
			})),
			ach(15643,  bubbleDownSelf({ ["timeline"] = { ADDED_10_0_0 } }, {	-- What Can I Say? They Love Me. (1600)
				i(191932),	-- Violet Violence (PET!)
			})),
			ach(15642,  bubbleDownSelf({ ["timeline"] = { ADDED_10_0_0 } }, {	-- Proven Pet Parent (1400)
				i(191936),	-- Secretive Frogduck (PET!)
			})),
			ach(15641,  bubbleDownSelf({ ["timeline"] = { ADDED_10_0_0 } }, {	-- Many More Mini Minions (1200)
				i(191941),	-- Crystalline Mini-Monster (PET!)
			})),
			ach(12958, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {	-- Master of Minions (1000)
				i(163218),	-- Hearthy (PET!)
			})),
			ach(12992, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {	-- Pet Emporium (800)
				i(163220),	-- Rooter (PET!)
			})),
			ach(9643, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {	-- So. Many. Pets. (600)
				i(118577),	-- Stormwing (PET!)
			})),
			ach(7501, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4} }, {	-- That's a Lot of Pet Food (400)
				i(89736),	-- Venus (PET!)
			})),
			ach(7500, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {	-- Going to Need More Leashes(250)
				i(85578),	-- Feral Vermling (PET!)
			})),
			ach(5875, bubbleDownSelf({ ["timeline"] = { ADDED_4_2_0 } }, {	-- Littlest Pet Shop (150)
				i(54810),	-- Celestial Dragon (PET!)
			})),
			ach(5877, bubbleDownSelf({ ["timeline"] = { ADDED_4_2_0 } }, {	-- Menagerie (125)
				i(71387),	-- Brilliant Kaliri (PET!)
			})),
			ach(5876, bubbleDownSelf({ ["timeline"] = { ADDED_4_2_0 } }, {	-- Petting Zoo (100)
				i(71140),	-- Nuts (PET!)
			})),

		})),
		n(ACHIEVEMENTS, {
			applyclassicphase(WRATH_PHASE_ONE, ach(2516, bubbleDownSelf({	-- Lil' Game Hunter (75)
				-- #if NOT ANYCLASSIC
				["timeline"] = { ADDED_3_1_0 },
				-- #endif
			}, {
				["groups"] = {
					i(44841),	-- Little Fawn (PET!)
				},
			}))),
			applyclassicphase(TBC_PHASE_ONE, ach(1250, bubbleDownSelf({	-- Shop Smart, Shop Pet...Smart (50)
				-- #if NOT ANYCLASSIC
				["timeline"] = { ADDED_3_0_2 },
				-- #endif
			}, {
				["groups"] = {
					i(40653),	-- Stinker (PET!)
				},
			}))),
			ach(1248, {	-- Plethora of Pets (25)
				-- #if NOT ANYCLASSIC
				["timeline"] = { ADDED_3_0_2 },
				-- #endif
			}),
			ach(15, {	-- Plenty of Pets (15)
				-- #if NOT ANYCLASSIC
				["timeline"] = { ADDED_3_0_2 },
				-- #endif
			}),
			ach(1017, {	-- Can I Keep Him? (1)
				-- #if NOT ANYCLASSIC
				["timeline"] = { ADDED_3_0_2 },
				-- #endif
			}),
		}),
		petbattle(n(PET_BATTLE_DUNGEONS, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {
			ach(14021, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0 } }, {	-- The Shadows Revealed
				["sym"] = {{ "meta_achievement",
					11765,	-- Pet Battle Challenge: Wailing Caverns
					11856,	-- Pet Battle Challenge: Deadmines
					13269,	-- Pet Battle Challenge: Gnomeregan
					13627,	-- Pet Battle Challenge: Stratholme
					14020,	-- Pet Battle Challenge: Blackrock Depths
				}},
				["groups"] = {
					i(174871),	-- Mayhem Mind Melder (TOY!)
				},
			})),
			q(58458, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0 } }, {	-- Pet Battle Challenge: Blackrock Depths
				["sourceQuest"] = 58457,	-- Shadows of Blackrock
				["provider"] = { "n", 161782 },	-- Burt Macklyn
				["coord"] = { 33.1, 23.1, BLACKROCK_MOUNTAIN_LEVEL3 },
				["maps"] = {
					1578,	-- Pet Dungeon
				},
				["isWeekly"] = true,
				["groups"] = {
					ach(14020, {	-- Pet Battle Challenge: Blackrock Depths
						i(174830),	-- Shadowy Disguise (TOY!)
					}),
					q(58455, {	-- Shadowy Showdown (A)
						-- ["sourceQuests"] = {  },	-- TODO, this has a source quest... unknown, maybe other pet battle dungeon completion?
						["provider"] = { "n", 147645 },	-- Tizzy Gearjolt
						["coord"] = { 50.3, 46.9, BORALUS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(58456, {	-- Shadowy Showdown (H)
						-- ["sourceQuests"] = {  },	-- TODO, this has a source quest... unknown, maybe other pet battle dungeon completion?
						["provider"] = { "n", 147641 },	-- Radek Fuselock
						["coord"] = { 56.3, 30.8, DAZARALOR },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(58457, {	-- Shadows of Blackrock
						["sourceQuests"] = {
							58455,	-- Shadowy Showdown (A)
							58456,	-- Shadowy Showdown (H)
						},
						["provider"] = { "n", 161782 },	-- Burt Macklyn
						["coord"] = { 33.1, 23.1, BLACKROCK_MOUNTAIN_LEVEL3 },
						["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
						["groups"] = {
							spell(314215),	-- Manapoof Link: Blackrock Depths
						},
					}),
					n(160210, {	-- Tasha Riley
						["coord"] = { 41.1, 49.1, 1578 },
						["description"] = "Speak with Tasha after you finish the last fight and join the COUNCIL OF CHAOS to get title.",
						["groups"] = {
							title(415),	-- <Name>, Minion of Mayhem
						},
					}),
					n(161782, {	-- Burt Macklyn
						["coord"] = { 33.1, 23.1, BLACKROCK_MOUNTAIN_LEVEL3 },
						["groups"] = {
							i(174829, {	-- Tinyclaw (PET!)
								["cost"] = { { "i", 174360, 2 }, },	-- 2x Shadowy Gem
							}),
							i(174828, {	-- Experiment 13 (PET!)
								["cost"] = { { "i", 174360, 3 }, },	-- 3x Shadowy Gem
							}),
							i(174358, {	-- Unopened Blackrock Supply Crate
								["cost"] = { { "i", 174360, 1 }, },	-- 1x Shadowy Gem
							}),
							i(174827, {	-- Wailing Lasher (PET!)
								["cost"] = { { "i", 174360, 1 }, },	-- 1x Shadowy Gem
							}),
						},
					}),
				},
			})),
			q(46292, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_5 } }, {	-- Pet Battle Challenge: Deadmines
				["sourceQuest"] = 46291,	-- The Deadmines Strike Back
				["provider"] = { "n", 119390 },	-- Marcus "Bagman" Brown
				["coord"] = { 41.6, 71.2, WESTFALL },
				["maps"] = {
					835,	-- Pet Dungeon 1
					836,	-- Pet Dungeon 2
				},
				["isWeekly"] = true,
				["groups"] = {
					ach(11856, {	-- Pet Battle Challenge: Deadmines
						i(151632),	-- Mining Monkey (PET!)
					}),
					q(46293, {	-- Deadmines, Part Three?
						["provider"] = { "n", 96479 },	-- Breanni
						["coord"] = { 58.2, 39.4, LEGION_DALARAN },
					}),
					q(46291, {	-- The Deadmines Strike Back
						["sourceQuest"] = 46293,	-- Deadmines, Part Three?
						["provider"] = { "n", 119390 },	-- Marcus "Bagman" Brown
						["coord"] = { 41.6, 71.2, WESTFALL },
						["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
						["groups"] = {
							spell(244502),	-- Manapoof Link: Westfall
						},
					}),
					n(119390, {	-- Marcus "Bagman" Brown
						["coord"] = { 41.6, 71.2, WESTFALL },
						["groups"] = {
							i(150742, {	-- Foe Reaper 0.9 (PET!)
								["cost"] = { { "i", 151191, 1 } },	-- 1x Old Bottle Cap
							}),
							i(150741, {	-- Tricorne (PET!)
								["cost"] = { { "i", 151191, 2 } },	-- 2x Old Bottle Cap
							}),
							i(150739, {	-- Pocket Cannon (PET!)
								["cost"] = { { "i", 151191, 3 } },	-- 3x Old Bottle Cap
							}),
							i(146317, {	-- Mr. Smite's Supplies
								["cost"] = { { "i", 151191, 1 } },	-- 1x Old Bottle Cap
							}),
						},
					}),
				},
			})),
			q(54186, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {	-- Pet Battle Challenge: Gnomeregan
				["sourceQuest"] = 54185,	-- Gnomeregan's New Guardians
				["provider"] = { "n", 147070 },	-- Micro Zoox
				["coord"] = { 31.2, 37.4, NEW_TINKERTOWN },
				["maps"] = {
					NEW_TINKERTOWN_LOWER,
					840,	-- Pet Dungeon
					841,	-- Pet Dungeon
					842,	-- Pet Dungeon
				},
				["isWeekly"] = true,
				["groups"] = {
					ach(13269, {	-- Pet Battle Challenge: Gnomeregan
						i(165894),	-- Mini Spider Tank (PET!)
					}),
					q(54184, {	-- Trouble in Gnomeregan (A)
						["provider"] = { "n", 147645 },	-- Tizzy Gearjolt
						["coord"] = { 50.3, 46.9, BORALUS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(54276, {	-- Trouble in Gnomeregan (H)
						["provider"] = { "n", 147641 },	-- Radek Fuselock
						["coord"] = { 56.3, 30.8, DAZARALOR },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(54185, {	-- Gnomeregan's New Guardians
						["sourceQuests"] = {
							54184,	-- Trouble in Gnomeregan (A)
							54276,	-- Trouble in Gnomeregan (H)
						},
						["provider"] = { "n", 147070 },	-- Micro Zoox
						["coord"] = { 31.67, 71.61, NEW_TINKERTOWN_LOWER },
						["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
						["groups"] = {
							spell(286079),	-- Manapoof Link: Gnomeregan
						},
					}),
					n(147070, {	-- Micro Zoox
						["coord"] = { 31.8, 71.6, NEW_TINKERTOWN_LOWER },
						["groups"] = {
							i(165855, {	-- Leper Rat (PET!)
								["cost"] = { { "i", 165835, 2 } },	-- 2x Pristine Gizmo
							}),
							i(165854, {	-- Mechanical Cockroach (PET!)
								["cost"] = { { "i", 165835, 1 } },	-- 1x Pristine Gizmo
							}),
							i(165857, {	-- Alarm-O-Dog (PET!)
								["cost"] = { { "i", 165835, 3 } },	-- 3x Pristine Gizmo
							}),
							i(165844, {	-- Schematic: Mechantula (RECIPE!)
								["cost"] = { { "i", 165835, 1 } },	-- 1x Pristine Gizmo
							}),
							i(165839, {	-- Unopened Gnomeregan Supply Box
								["cost"] = { { "i", 165835, 1 } },	-- 1x Pristine Gizmo
							}),
						},
					}),
				},
			})),
			q(56492, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {	-- Pet Battle Challenge: Stratholme
				["sourceQuest"] = 56491,	-- Tiny Terrors of Stratholme
				["provider"] = { "n", 150987 },	-- Sean Wilkers
				["coord"] = { 43.1, 19.9, EASTERN_PLAGUELANDS },
				["maps"] = {
					1505,	-- Pet Dungeon
				},
				["isWeekly"] = true,
				["groups"] = {
					ach(13627, {	-- Pet Battle Challenge: Stratholme
						i(169670),	-- Minimancer (PET!)
					}),
					ach(13766, {	-- Malowned
						["description"] = "To summon Postmaster Malown, find a Discarded Letter on the ground at one of the coordinates provided and put it in the mailbox at |cFFFfffff57.8, 13.6|r.\n",
						["coords"] = {
							{ 40.2, 10.4, 1505 },
							{ 48.6, 24.9, 1505 },
							{ 56.9, 50.8, 1505 },
							{ 57.8, 36.9, 1505 },
							{ 59.7, 40.6, 1505 },
							{ 68.9, 54.0, 1505 },
						},
						["groups"] = {
							i(170102),	-- Burnout (PET!)
						},
					}),
					q(56489, {	-- Restless Dead (A)
						["provider"] = { "n", 147645 },	-- Tizzy Gearjolt
						["coord"] = { 50.3, 46.9, BORALUS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(56490, {	-- Restless Dead (H)
						["provider"] = { "n", 147641 },	-- Radek Fuselock
						["coord"] = { 56.3, 30.8, DAZARALOR },
						["races"] = HORDE_ONLY,
					}),
					q(56491, {	-- Tiny Terrors of Stratholme
						["sourceQuests"] = {
							56489,	-- Restless Dead (A)
							56490,	-- Restless Dead (H)
						},
						["provider"] = { "n", 150987 },	-- Sean Wilkers
						["coord"] = { 43.2, 20.0, EASTERN_PLAGUELANDS },
						["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
						["groups"] = {
							spell(301941),	-- Manapoof Link: Stratholme
						},
					}),
					q(56914, {	-- Angry Residents
						["isWeekly"] = true,
						["groups"] = {
							i(169665),	-- Cleansed Remains
						},
					}),
					n(150987, {	-- Sean Wilkers
						["coord"] = { 43.1, 20.0, EASTERN_PLAGUELANDS },
						["groups"] = {
							i(169666, {	-- Unopened Stratholme Supply Crate
								["cost"] = { { "i", 169665, 1 } },	-- 1x Cleansed Remains
							}),
							i(169678, {	-- Ziggy (PET!)
								["cost"] = { { "i", 169665, 1 } },	-- 1x Cleansed Remains
							}),
							i(169677, {	-- Crypt Fiend (PET!)
								["cost"] = { { "i", 169665, 2 } },	-- 2x Cleansed Remains
							}),
							i(169679, {	-- Gruesome Belcher (PET!)
								["cost"] = { { "i", 169665, 3 } },	-- 3x Cleansed Remains
							}),
							i(169676, {	-- Shrieker (PET!)
								["cost"] = { { "i", 169665, 3 } },	-- 3x Cleansed Remains
							}),
						},
					}),
				},
			})),
			q(45539, {	-- Pet Battle Challenge: Wailing Caverns
				["sourceQuest"] = 45423,	-- Wailing Critters
				["provider"] = { "n", 116781 },	-- Muyani
				["coord"] = { 38.8, 68.2, NORTHERN_BARRENS },
				["maps"] = {
					825,	-- Pet Dungeon
				},
				["isWeekly"] = true,
				["groups"] = {
					ach(11765, {	-- Pet Battle Challenge: Wailing Caverns
						i(147543),	-- Son of Skum (PET!)
					}),
					q(45540, {	-- A Call from the Caverns
						["qgs"] = {
							98725,	-- Lio the Lioness (A)
							115287,	-- Serr'ah (H)
						},
						["coords"] = {
							{ 59.2, 39.6, LEGION_DALARAN },	-- Lio the Lioness (A)
							{ 58.4, 38.0, LEGION_DALARAN },	-- Serr'ah (H)
						},
					}),
					q(45423, {	-- Wailing Critters
						["sourceQuest"] = 45540,	-- A Call from the Caverns
						["provider"] = { "n", 116781 },	-- Muyani
						["coord"] = { 38.8, 68.2, NORTHERN_BARRENS },
						["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
						["groups"] = {
							spell(244506),	-- Manapoof Link: Wailing Caverns
						},
					}),
					i(143753, {	-- Damp Pet Supplies
						i(143754),	-- Cavern Moccasin (PET!)
						i(143756),	-- Everliving Spore (PET!)
						i(143755),	-- Young Venomfang (PET!)
					}),
				},
			}),
		}))),
		n(REWARDS, bubbleDown({ ["timeline"] = { ADDED_5_1_0 } }, {	-- These can drop very rarely from none trainer pet battle
			i(92679),	-- Flawless Aquatic Battle-Stone
			i(92741),	-- Flawless Battle-Stone
			i(92675),	-- Flawless Beast Battle-Stone
			i(92676),	-- Flawless Critter Battle-Stone
			i(92665),	-- Flawless Elemental Battle-Stone
			i(92677),	-- Flawless Flying Battle-Stone
			i(92682),	-- Flawless Humanoid Battle-Stone
			i(92678),	-- Flawless Magic Battle-Stone
			i(92680),	-- Flawless Mechanical Battle-Stone
			i(92681),	-- Flawless Undead Battle-Stone
		})),
		petbattle(n(REWARDS, {
			pvp(i(165944, {	-- A Shady Message [A] (CI!)
				["description"] = "Rewarded from winning PvP Pet Battles",
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_0 },
			})),
			pvp(i(166242, {	-- A Shady Message [H] (CI!)
				["description"] = "Rewarded from winning PvP Pet Battles",
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_0 },
			})),
			i(89139),	-- Chain Pet Leash
			i(44820),	-- Red Ribbon Pet Leash
			i(37460),	-- Rope Pet Leash
			container(89125, {	-- Sack of Pet Supplies
				i(89587),	-- Porcupette (PET!)
				i(89139),	-- Chain Pet Leash
				i(44820),	-- Red Ribbon Pet Leash
				i(37460),	-- Rope Pet Leash
				-- #if AFTER 5.1.0
				i(92679),	-- Flawless Aquatic Battle-Stone
				i(92675),	-- Flawless Beast Battle-Stone
				i(92676),	-- Flawless Critter Battle-Stone
				i(92665),	-- Flawless Elemental Battle-Stone
				i(92677),	-- Flawless Flying Battle-Stone
				i(92682),	-- Flawless Humanoid Battle-Stone
				i(92678),	-- Flawless Magic Battle-Stone
				i(92680),	-- Flawless Mechanical Battle-Stone
				i(92681),	-- Flawless Undead Battle-Stone
				-- #endif
			}),

			-- This itemID is for the bugged Caged Pet tooltip.
			-- Keep it here to prevent NYI false reports whenever someone hovers over the tooltip.
			i(82800, {	-- Pet Cage (PET!) [NYI]
				["description"] = "|cffff0000This item serves as a placeholder for a Caged Pet.\nIt appears in chat tooltips when caging a pet, or as a tooltip when viewing pets in the guild bank.|r",
				["collectible"] = false,
			}),
		})),
		n(SPECIAL, sharedData({
			["sharedDescription"] = "You may only learn the pet offered once per character from this Battle Pet Trainer.|r"
		}, {
			n(63596, {	-- Audrey Burnhep
				["coord"] = { 69.4, 24.4, STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					pet(138, {	-- Blue Moth
						["races"] = { DRAENEI },
					}),
					pet(630, {	-- Gilnean Raven (PET!)
						["races"] = { WORGEN },
					}),
					pet(68, {	-- Great Horned Owl
						["races"] = { NIGHTELF },
					}),
					pet(792, {	-- Jade Crane Chick
						["races"] = { PANDAREN_ALLIANCE },
					}),
					pet(43, {	-- Orange Tabby Cat
						["races"] = { HUMAN },
					}),
					pet(72, {	-- Snowshoe Rabbit
						["races"] = { GNOME, DWARF },
					}),
				},
			}),
			n(63075, {	-- Grady Bannson
				["coord"] = { 53.8, 50.1, DUN_MOROGH },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {
					{"select", "npcID", 63596},				-- Audrey Burnhep
					{"pop"},								-- Discard Header and acquire all of their children.
				},
			}),
			n(63077, {	-- Lehna
				["coord"] = { 49.2, 52.0, AZUREMYST_ISLE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {
					{"select", "npcID", 63596},				-- Audrey Burnhep
					{"pop"},								-- Discard Header and acquire all of their children.
				},
			}),
			n(63014, {	-- Marcus Jensen
				["coord"] = { 40.2, 66.0, ELWYNN_FOREST },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {
					{"select", "npcID", 63596},				-- Audrey Burnhep
					{"pop"},								-- Discard Header and acquire all of their children.
				},
			}),
			n(63070, {	-- Valeena
				["coord"] = { 55.2, 51.2, TELDRASSIL },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {
					{"select", "npcID", 63596},				-- Audrey Burnhep
					{"pop"},								-- Discard Header and acquire all of their children.
				},
			}),
			n(63083, {	-- Will Larsons
				["coord"] = { 50.1, 20.2, DARKSHORE },
				["races"] = ALLIANCE_ONLY,
				["sym"] = {
					{"select", "npcID", 63596},				-- Audrey Burnhep
					{"pop"},								-- Discard Header and acquire all of their children.
				},
			}),
			n(63073, {	-- Ansel Fincap
				["coord"] = { 60.8, 54.2, TIRISFAL_GLADES },
				["races"] = HORDE_ONLY,
				["sym"] = {
					{"select", "npcID", 63626},				-- Varzok
					{"pop"},								-- Discard Header and acquire all of their children.
				},
			}),
			n(63080, {	-- Jarson Everlong
				["coord"] = { 47.2, 47.2, EVERSONG_WOODS },
				["races"] = HORDE_ONLY,
				["sym"] = {
					{"select", "npcID", 63626},				-- Varzok
					{"pop"},								-- Discard Header and acquire all of their children.
				},
			}),
			n(63086, {	-- Matty
				["coord"] = { 36.8, 77.1, ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["sym"] = {
					{"select", "npcID", 63626},				-- Varzok
					{"pop"},								-- Discard Header and acquire all of their children.
				},
			}),
			n(63061, {	-- Narzak
				["coord"] = { 52.7, 41.3, DUROTAR },
				["races"] = HORDE_ONLY,
				["sym"] = {
					{"select", "npcID", 63626},				-- Varzok
					{"pop"},								-- Discard Header and acquire all of their children.
				},
			}),
			n(63067, {	-- Naleen
				["coord"] = { 49.2, 56.1, MULGORE },
				["races"] = HORDE_ONLY,
				["sym"] = {
					{"select", "npcID", 63626},				-- Varzok
					{"pop"},								-- Discard Header and acquire all of their children.
				},
			}),
			n(63626, {	-- Varzok
				["coord"] = { 52.6, 59.3, ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["groups"] = {
					pet(75, {	-- Black Kingsnake (PET!)
						["races"] = { ORC, TROLL },
					}),
					pet(70, {	-- Brown Praire Dog (PET!)
						["races"] = { TAUREN },
					}),
					pet(142, {	-- Golden Dragonhawk Hatchling (PET!)
						["races"] = { BLOODELF },
					}),
					pet(792, {	-- Jade Crane Chick (PET!)
						["races"] = { PANDAREN_HORDE },
					}),
					pet(629, {	-- Shore Crawler (PET!)
						["races"] = { GOBLIN },
					}),
					pet(55, {	-- Undercity Cockroach (PET!)
						["races"] = { UNDEAD },
					}),
				},
			}),
		})),
		n(VENDORS, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
			--[[
			["crs"] = {
				85418,	-- Lio the Lioness <Battle Pet Master>
				79858,	-- Serr'ah <Battle Pet Master>
				-- #if AFTER BFA
				142065,	-- Dana Pull
				131734,	-- Zununu the Undefeated <Pet Supplies>
				-- #if AFTER SL
				156769,	-- Keeper Ta'hult <Pet Vendor>
				-- #if AFTER DF
				193029,	-- Lysindra <Pet Supplies>
				-- #endif
				-- #endif
				-- #endif
			},
			["coords"] = {
				{ 29.2, 40.4, LUNARFALL },
				{ 32.6, 42.6, FROSTWALL },
				-- #if AFTER BFA
				{ 50.8, 46.0, BORALUS },
				{ 56.8, 34.6, DAZARALOR },
				-- #if AFTER SL
				{ 64.8, 67.6, ORIBOS },
				-- #if AFTER DF
				{ 48.2, 82.6, VALDRAKKEN },
				-- #endif
				-- #endif
				-- #endif
			},
			["groups"] = {
				i(86143, {	-- Battle Pet Bandage
					["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
				}),
				i(116429, {	-- Flawless Battle Training Stone
					["cost"] = { { "i", POLISHED_PET_CHARM, 3 } },
				}),
				i(98112, {	-- Lesser Pet Treat
					["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
				}),
				i(89906, {	-- Magical Mini-Treat
					["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
				}),
				i(98715, {	-- Marked Flawless Battle Stone
					["cost"] = { { "i", POLISHED_PET_CHARM, 15 } },
				}),
				i(120321, {	-- Mystery Bag
					["cost"] = { { "i", POLISHED_PET_CHARM, 2 } },
					["groups"] = {
						i(116424),	-- Aquatic Battle Training Stone
						i(116374),	-- Beast Battle Training Stone
						i(116418),	-- Critter Battle Training Stone
						i(116419),	-- Dragonkin Battle Training Stone
						i(116420),	-- Elemental Battle Training Stone
						i(116421),	-- Flying Battle Training Stone
						i(116416),	-- Humanoid Battle Training Stone
						i(116422),	-- Magic Battle Training Stone
						i(116417),	-- Mechanical Battle Training Stone
						i(116423),	-- Undead Battle Training Stone
					},
				}),
				i(98114, {	-- Pet Treat
					["cost"] = { { "i", POLISHED_PET_CHARM, 10 } },
				}),
				i(122457, {	-- Ultimate Battle-Training Stone
					["cost"] = { { "i", POLISHED_PET_CHARM, 35 } },
				}),
			},
			--]]
			n(98725, {	-- Lio the Lioness <Battle Pet Master>
				["coord"] = { 59.2, 39.6, LEGION_DALARAN },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(86143, {	-- Battle Pet Bandage
						["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
						["description"] = "You can also buy 25 Bandages for 5 Polished Pet Charms from most Battle Pet Vendors.",
					}),
					i(116429, {	-- Flawless Battle Training Stone
						["cost"] = { { "i", POLISHED_PET_CHARM, 3 } },
					}),
					i(98112, {	-- Lesser Pet Treat
						["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
					}),
					i(89906, {	-- Magical Mini-Treat
						["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
					}),
					i(98715, {	-- Marked Flawless Battle Stone
						["cost"] = { { "i", POLISHED_PET_CHARM, 15 } },
					}),
					i(120321, {	-- Mystery Bag
						["cost"] = { { "i", POLISHED_PET_CHARM, 2 } },
						["groups"] = {
							i(116424),	-- Aquatic Battle Training Stone
							i(116374),	-- Beast Battle Training Stone
							i(116418),	-- Critter Battle Training Stone
							i(116419),	-- Dragonkin Battle Training Stone
							i(116420),	-- Elemental Battle Training Stone
							i(116421),	-- Flying Battle Training Stone
							i(116416),	-- Humanoid Battle Training Stone
							i(116422),	-- Magic Battle Training Stone
							i(116417),	-- Mechanical Battle Training Stone
							i(116423),	-- Undead Battle Training Stone
						},
					}),
					i(98114, {	-- Pet Treat
						["cost"] = { { "i", POLISHED_PET_CHARM, 10 } },
					}),
					i(122457, {	-- Ultimate Battle-Training Stone
						["cost"] = { { "i", POLISHED_PET_CHARM, 35 } },
					}),
				},
			}),
			n(115287, {	-- Serr'ah <Battle Pet Master>
				["coord"] = { 58.6, 38.0, LEGION_DALARAN },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(86143, {	-- Battle Pet Bandage
						["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
						["description"] = "You can also buy 25 Bandages for 5 Polished Pet Charms from most Battle Pet Vendors.",
					}),
					i(116429, {	-- Flawless Battle Training Stone
						["cost"] = { { "i", POLISHED_PET_CHARM, 3 } },
					}),
					i(98112, {	-- Lesser Pet Treat
						["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
					}),
					i(89906, {	-- Magical Mini-Treat
						["cost"] = { { "i", POLISHED_PET_CHARM, 5 } },
					}),
					i(98715, {	-- Marked Flawless Battle Stone
						["cost"] = { { "i", POLISHED_PET_CHARM, 15 } },
					}),
					i(120321, {	-- Mystery Bag
						["cost"] = { { "i", POLISHED_PET_CHARM, 2 } },
						["groups"] = {
							i(116424),	-- Aquatic Battle Training Stone
							i(116374),	-- Beast Battle Training Stone
							i(116418),	-- Critter Battle Training Stone
							i(116419),	-- Dragonkin Battle Training Stone
							i(116420),	-- Elemental Battle Training Stone
							i(116421),	-- Flying Battle Training Stone
							i(116416),	-- Humanoid Battle Training Stone
							i(116422),	-- Magic Battle Training Stone
							i(116417),	-- Mechanical Battle Training Stone
							i(116423),	-- Undead Battle Training Stone
						},
					}),
					i(98114, {	-- Pet Treat
						["cost"] = { { "i", POLISHED_PET_CHARM, 10 } },
					}),
					i(122457, {	-- Ultimate Battle-Training Stone
						["cost"] = { { "i", POLISHED_PET_CHARM, 35 } },
					}),
				},
			}),
		})),
		n(WORLD_QUESTS, {
			["timeline"] = { ADDED_7_0_3 },
			["groups"] = {
				n(REWARDS, {	
					i(86143),	-- Battle Pet Bandage
					i(98715),	-- Marked Flawless Battle Stone
					i(POLISHED_PET_CHARM),
					i(116424),	-- Aquatic Battle Training Stone
					i(116374),	-- Beast Battle Training Stone
					i(116418),	-- Critter Battle Training Stone
					i(116419),	-- Dragonkin Battle Training Stone
					i(116420),	-- Elemental Battle Training Stone
					i(127755),	-- Fel-Touched Battle Training Stone
					i(116429),	-- Flawless Battle-Training Stone
					i(116421),	-- Flying Battle Training Stone
					i(116416),	-- Humanoid Battle Training Stone
					i(116422),	-- Magic Battle Training Stone
					i(116417),	-- Mechanical Battle Training Stone
					i(116423),	-- Undead Battle Training Stone
				}),
			},
		}),
	},
}));

-- #if BEFORE 4.2.0
root(ROOTS.NeverImplemented, {
	i(54810, {	-- Celestial Dragon (PET!)
		["timeline"] = { CREATED_3_3_0, ADDED_4_2_0 },
	}),
});
-- #endif