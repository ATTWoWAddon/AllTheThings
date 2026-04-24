---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	n(ACHIEVEMENTS, {
		ach(12947, {	-- Azerothian Diplomat
			crit(42226, {["races"] = HORDE_ONLY }),		-- Zandalari Empire (H)
			crit(42228, {["races"] = HORDE_ONLY }),		-- Talanji's Expedition (H)
			crit(42227, {["races"] = HORDE_ONLY }),		-- Voldunai (H)
			crit(41655, {["races"] = HORDE_ONLY }),		-- The Honorbound (H)
			crit(43121),		-- Champions of Azeroth
			crit(43122),		-- Tortollan Seekers
		}),
		ach(12936, {	-- Battle on Zandalar and Kul Tiras
			i(163697),	-- Laser Pointer (TOY!)
			crit(44208, {	-- Crab People
				["_quests"] = { 52009 },
			}),
			crit(44209, {	-- This Little Piggy Has Sharp Tusks
				["_quests"] = { 52126 },
			}),
			crit(44211, {	-- Automated Chaos
				["_quests"] = { 52165 },
			}),
			crit(44212, {	-- Night Horrors
				["_quests"] = { 52218 },
			}),
			crit(44213, {	-- Rogue Azerite
				["_quests"] = { 52278 },
			}),
			crit(44214, {	-- What's the Buzz?
				["_quests"] = { 52297 },
			}),
			crit(44215, {	-- Sea Creatures Are Weird
				["_quests"] = { 52316 },
			}),
			crit(44216, {	-- Captured Evil
				["_quests"] = { 52325 },
			}),
			crit(44217, {	-- Not So Bad Down Here
				["_quests"] = { 52430 },
			}),
			crit(44218, {	-- Unbreakable
				["_quests"] = { 52455 },
			}),
			crit(44219, {	-- That's a Big Carcass
				["_quests"] = { 52471 },
			}),
			crit(44220, {	-- Strange Looking Dogs
				["_quests"] = { 52751 },
			}),
			crit(44221, {	-- Marshdwellers
				["_quests"] = { 52754 },
			}),
			crit(44222, {	-- Crawg in the Bog
				["_quests"] = { 52779 },
			}),
			crit(44223, {	-- Pack Leader
				["_quests"] = { 52799 },
			}),
			crit(44224, {	-- Accidental Dread
				["_quests"] = { 52803 },
			}),
			crit(44225, {	-- Keeyo's Champions of Vol'dun
				["_quests"] = { 52850 },
			}),
			crit(44228, {	-- Snakes on a Terrace
				["_quests"] = { 52856 },
			}),
			crit(44226, {	-- What Do You Mean, Mind Controlling Plants?
				["_quests"] = { 52864 },
			}),
			crit(44227, {	-- Desert Survivors
				["_quests"] = { 52878 },
			}),
			crit(44229, {	-- Critters are Friends, Not Food
				["_quests"] = { 52892 },
			}),
			crit(44230, {	-- Add More to the Collection
				["_quests"] = { 52923 },
			}),
			crit(44231, {	-- You've Never Seen Jammer Upset
				["_quests"] = { 52937 },
			}),
			crit(44232, {	-- Small Beginnings
				["_quests"] = { 52938 },
			}),
		}),
		ach(13020, {	-- Bow to Your Masters
			["races"] = HORDE_ONLY,
			["groups"] = {
				crit(41497, {	-- Akunda respected
					["coord"] = { 53.1, 91.5, VOLDUN },
					["cr"] = 128152,	-- Akunda
				}),
				crit(41503, {	-- Avatar of Sethraliss respected
					["coord"] = { 27.0, 52.5, VOLDUN },
					["cr"] = 135210,	-- Avatar of Sethraliss
				}),
				crit(41525, {	-- Bwonsamdi respected
					["coord"] = { 39.4, 24.7, NAZMIR },
					["cr"] = 122688,	-- Bwonsamdi
				}),
				crit(41498, {	-- Gonk Respected
					["coord"] = { 49.2, 44.3, ZULDAZAR },
					["cr"] = 129740,	-- Gonk
				}),
				crit(41500, {	-- Jani Respected
					["sourceQuests"] = {
						51145,	-- Curse of Jani (A)
						47442,	-- Curse of Jani (H)
					},
					["coord"] = { 35.4, 7.81, DAZARALOR },
					["cr"] = 126334,	-- Jani
				}),
				crit(41499, {	-- Kimbul respected
					["coord"] = { 57.0, 10.8, VOLDUN },
					["cr"] = 123052,	-- Kimbul
				}),
				crit(41495, {	-- Krag'wa respected
					["coord"] = { 75.4, 56.7, NAZMIR },
					["cr"] = 120551,	-- Krag'wa
				}),
				crit(41501, {	-- Pa'ku Respected
					["coord"] = { 71.5, 49.4, ZULDAZAR },
					["cr"] = 127377,	-- Pa'ku
				}),
				crit(41502, {	-- Rezan Respected
					["coord"] = { 70.8, 29.8, ZULDAZAR },
					["cr"] = 124948,	-- Rezan
				}),
			}
		}),
		ach(13048, {	-- Life Finds a Way... To Die!
			crit(41676, {		-- Azuresail the Diemetrodon slain
				["coord"] = { 67.10, 26.57, ZULDAZAR },
				["description"] = "This rare shares respawn with Thuderfoot (67.73 29.03) and Kil'Tawan (69.2 30.4) so kill them if you need it. To make things worse they don't spawn every day.",
			}),
			crit(41677, {		-- King K'tal the Devilsaur slain
				["coord"] = { 71.24, 21.84, ZULDAZAR },
			}),
			crit(41683, {		-- Makatau the Pterrordax slain
				["coord"] = { 26.3, 73.3, NAZMIR },
			}),
			crit(41673, {		-- Nol'ixwan the Direhorn slain
				["coord"] = { 61.62, 25.37, ZULDAZAR },
			}),
			crit(41684, {		-- Sludgecrusher the Anklyodon slain
				["coord"] = { 66.08, 22.38, ZULDAZAR },
			}),
			crit(41674, {		-- The Sabertusk Empress slain
				["coord"] = { 52.39, 47.71, ZULDAZAR },
			}),
			crit(41675, {		-- Thuderfoot the Brutosaur slain
				["coord"] = { 67.73, 29.03, ZULDAZAR },
				["description"] = "This rare shares respawn with Azuresail (67.10 26.57) and Kil'Tawan (69.2 30.4) so kill them if you need it. To make things worse they don't spawn every day.",
			}),
			crit(41672, {		-- Queenfeather the Ravasaur slain
				["coord"] = { 71.13, 40.34, ZULDAZAR },
			}),
		}),
		ach(13294, {	-- Loremaster of Zandalar [H]
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				11861,	-- The Throne of Zuldazar
				11868,	-- The Dark Heart of Nazmir
				12478,	-- Secrets in the Sands
			}},
			["races"] = HORDE_ONLY,
		}),
		ach(11861, {	-- The Throne of Zuldazar
			["races"] = HORDE_ONLY,
			["groups"] = {
				crit(41674, {	-- Among the People
					["sourceQuests"] = { 47741 },	-- To Sacrifice a Loa
				}),
				crit(41673, {	-- March of the Loa
					["sourceQuests"] = { 49426 },	-- The King's Gambit
				}),
				crit(41675, {	-- Portents and Prophecies
					["sourceQuests"] = { 49663 },	-- False Prophecies
				}),
				crit(40025, {	-- Port of Zuldazar
					["sourceQuests"] = { 50881 },	-- Royal Report
				}),
				crit(37954, {	-- The Zanchuli Council
					["sourceQuests"] = {	-- whichever one you pick
						47439,	-- Gonk, Lord of the Pack
					},
				}),
				crit(37953, {	-- The Zanchuli Council
					["sourceQuests"] = {	-- whichever one you pick
						47440,	-- Pa'ku, Master of Winds
					},
				}),
				crit(41672, {	-- Warport Rastari
					["sourceQuests"] = { 49310 },	-- The Prophet's Ploy
				}),
				crit(41683, {	-- Web of Lies
					["sourceQuests"] = { 47528 },	-- Mistress of Lies
				}),
			},
		}),
		ach(13517, {	-- Two Sides To Every Tale
			["sym"] = {{"meta_achievement",
				12891,	-- A Nation United
				13467,	-- Tides of Vengeance (A)
				12479,	-- Zandalar Forever!
				13466,	-- Tides of Vengeance (H)
			}},
			["groups"] = {
				h(i(168055)),	-- Bloodflank Charger (MOUNT!)
			},
		}),
		ach(12479, {	-- Zandalar Forever!
			["sym"] = {{"meta_achievement",
				13294,	-- Loremaster of Zandalar [H]
				12480,	-- A Bargain of Blood
				12481,	-- The Final Seal
			}},
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(245522, {	-- Grand Mask of Bwonsamdi, Loa of Graves (DECOR!)
					["timeline"] = { ADDED_11_2_7 },
				}),
			},
		}),
	}),
})));
