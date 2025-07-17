----------------------------------------------
--   P E T    B A T T L E    M O D U L E    --
----------------------------------------------
PET_BATTLE_DUNGEONS = createHeader({
	readable = "Pet Battle Dungeons",
	icon = [[~_.asset("Pet_Dungeon")]],
	text = {
		en = "Pet Battle Dungeons",
		es = "Mazmorras de duelo de mascotas",
		de = "Haustierkampf Instanzen",
		fr = "Mascotte des combat des donjons",
		mx = "Calabozos de duelo de mascotas",
		ru = "Подземелья Боевых питомцев",
		cn = "宠物对战地下城",
		tw = "寵物對戰挑戰",
	},
});
root(ROOTS.PetBattles, bubbleDown({ ["timeline"] = { ADDED_7_2_0 } }, {
	petbattle(n(PET_BATTLE_DUNGEONS, {
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
			["provider"] = { "n", 161782 },	-- Burt Macklyn
			["coord"] = { 33.1, 23.1, BLACKROCK_MOUNTAIN_LEVEL3 },
			["sourceQuest"] = 58457,	-- Shadows of Blackrock
			["isWeekly"] = true,
			["maps"] = {
				1578,	-- Pet Dungeon
			},
			["g"] = {
				ach(14020, {	-- Pet Battle Challenge: Blackrock Depths
					i(174830),	-- Shadowy Disguise (TOY!)
				}),
				q(58455, {	-- Shadowy Showdown (A)
					["provider"] = { "n", 147645 },	-- Tizzy Gearjolt
					-- ["sourceQuests"] = {  },	-- TODO, this has a source quest... unknown, maybe other pet battle dungeon completion?
					["coord"] = { 50.3, 46.9, BORALUS },
					["isBreadcrumb"] = true,
					["races"] = ALLIANCE_ONLY,
				}),
				q(58456, {	-- Shadowy Showdown (H)
					["provider"] = { "n", 147641 },	-- Radek Fuselock
					-- ["sourceQuests"] = {  },	-- TODO, this has a source quest... unknown, maybe other pet battle dungeon completion?
					["coord"] = { 56.3, 30.8, DAZARALOR },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
				}),
				q(58457, {	-- Shadows of Blackrock
					["provider"] = { "n", 161782 },	-- Burt Macklyn
					["coord"] = { 33.1, 23.1, BLACKROCK_MOUNTAIN_LEVEL3 },
					["sourceQuests"] = {
						58455,	-- Shadowy Showdown (A)
						58456,	-- Shadowy Showdown (H)
					},
					["g"] = {
						spell(314215),	-- Manapoof Link: Blackrock Depths
					},
					["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
				}),
				n(160210, {	-- Tasha Riley
					["coord"] = { 41.1, 49.1, 1578 },
					["description"] = "Speak with Tasha after you finish the last fight and join the COUNCIL OF CHAOS to get title.",
					["g"] = {
						title(415),	-- <Name>, Minion of Mayhem
					},
				}),
				n(161782, {	-- Burt Macklyn
					["coord"] = { 33.1, 23.1, BLACKROCK_MOUNTAIN_LEVEL3 },
					["g"] = {
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
			["provider"] = { "n", 119390 },	-- Marcus "Bagman" Brown
			["coord"] = { 41.6, 71.2, WESTFALL },
			["sourceQuest"] = 46291,	-- The Deadmines Strike Back
			["isWeekly"] = true,
			["maps"] = {
				835,	-- Pet Dungeon 1
				836,	-- Pet Dungeon 2
			},
			["g"] = {
				ach(11856, {	-- Pet Battle Challenge: Deadmines
					i(151632),	-- Mining Monkey (PET!)
				}),
				q(46293, {	-- Deadmines, Part Three?
					["provider"] = { "n", 96479 },	-- Breanni
					["coord"] = { 58.2, 39.4, LEGION_DALARAN },
				}),
				q(46291, {	-- The Deadmines Strike Back
					["provider"] = { "n", 119390 },	-- Marcus "Bagman" Brown
					["coord"] = { 41.6, 71.2, WESTFALL },
					["sourceQuest"] = 46293,	-- Deadmines, Part Three?
					["g"] = {
						spell(244502),	-- Manapoof Link: Westfall
					},
					["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
				}),
				n(119390, {	-- Marcus "Bagman" Brown
					["coord"] = { 41.6, 71.2, WESTFALL },
					["g"] = {
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
			["provider"] = { "n", 147070 },	-- Micro Zoox
			["coord"] = { 31.2, 37.4, NEW_TINKERTOWN },
			["sourceQuest"] = 54185,	-- Gnomeregan's New Guardians
			["isWeekly"] = true,
			["maps"] = {
				NEW_TINKERTOWN_LOWER,
				840,	-- Pet Dungeon
				841,	-- Pet Dungeon
				842,	-- Pet Dungeon
			},
			["g"] = {
				ach(13269, {	-- Pet Battle Challenge: Gnomeregan
					i(165894),	-- Mini Spider Tank (PET!)
				}),
				q(54184, {	-- Trouble in Gnomeregan (A)
					["provider"] = { "n", 147645 },	-- Tizzy Gearjolt
					["coord"] = { 50.3, 46.9, BORALUS },
					["isBreadcrumb"] = true,
					["races"] = ALLIANCE_ONLY,
				}),
				q(54276, {	-- Trouble in Gnomeregan (H)
					["provider"] = { "n", 147641 },	-- Radek Fuselock
					["coord"] = { 56.3, 30.8, DAZARALOR },
					["isBreadcrumb"] = true,
					["races"] = HORDE_ONLY,
				}),
				q(54185, {	-- Gnomeregan's New Guardians
					["provider"] = { "n", 147070 },	-- Micro Zoox
					["coord"] = { 31.67, 71.61, NEW_TINKERTOWN_LOWER },
					["sourceQuests"] = {
						54184,	-- Trouble in Gnomeregan (A)
						54276,	-- Trouble in Gnomeregan (H)
					},
					["g"] = {
						spell(286079),	-- Manapoof Link: Gnomeregan
					},
					["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
				}),
				n(147070, {	-- Micro Zoox
					["coord"] = { 31.8, 71.6, NEW_TINKERTOWN_LOWER },
					["g"] = {
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
			["provider"] = { "n", 150987 },	-- Sean Wilkers
			["coord"] = { 43.1, 19.9, EASTERN_PLAGUELANDS },
			["sourceQuest"] = 56491,	-- Tiny Terrors of Stratholme
			["isWeekly"] = true,
			["maps"] = {
				1505,	-- Pet Dungeon
			},
			["g"] = {
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
					["g"] = {
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
					["provider"] = { "n", 150987 },	-- Sean Wilkers
					["coord"] = { 43.2, 20.0, EASTERN_PLAGUELANDS },
					["sourceQuests"] = {
						56489,	-- Restless Dead (A)
						56490,	-- Restless Dead (H)
					},
					["g"] = {
						spell(301941),	-- Manapoof Link: Stratholme
					},
					["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
				}),
				q(56914, {	-- Angry Residents
					["isWeekly"] = true,
					["g"] = {
						i(169665),	-- Cleansed Remains
					},
				}),
				n(150987, {	-- Sean Wilkers
					["coord"] = { 43.1, 20.0, EASTERN_PLAGUELANDS },
					["g"] = {
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
			["provider"] = { "n", 116781 },	-- Muyani
			["coord"] = { 38.8, 68.2, NORTHERN_BARRENS },
			["sourceQuest"] = 45423,	-- Wailing Critters
			["isWeekly"] = true,
			["maps"] = {
				825,	-- Pet Dungeon
			},
			["g"] = {
				ach(11765, {	-- Pet Battle Challenge: Wailing Caverns
					i(147543),	-- Son of Skum (PET!)
				}),
				q(45540, {	-- A Call from the Caverns
					["providers"] = {
						{ "n", 98725 },	-- Lio the Lioness (A)
						{ "n", 115287 },	-- Serr'ah (H)
					},
					["coords"] = {
						{ 59.2, 39.6, LEGION_DALARAN },	-- Lio the Lioness (A)
						{ 58.4, 38.0, LEGION_DALARAN },	-- Serr'ah (H)
					},
				}),
				q(45423, {	-- Wailing Critters
					["provider"] = { "n", 116781 },	-- Muyani
					["coord"] = { 38.8, 68.2, NORTHERN_BARRENS },
					["sourceQuest"] = 45540,	-- A Call from the Caverns
					["g"] = {
						spell(244506),	-- Manapoof Link: Wailing Caverns
					},
					["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
				}),
				i(143753, {	-- Damp Pet Supplies
					i(143754),	-- Cavern Moccasin (PET!)
					i(143756),	-- Everliving Spore (PET!)
					i(143755),	-- Young Venomfang (PET!)
				}),
			},
		}),
	})),
}));