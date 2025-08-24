---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_WAKING_SHORES, {
		n(ACHIEVEMENTS, {
			ach(16676, {	-- Adventurer of The Waking Shores
				crit(56033, {
					["_npcs"] = { 196056 },	-- Gushgut the Beaksinker
				}),
				crit(56034, {
					["_npcs"] = { 193256 },	-- Nulltheria the Void Gazer
				}),
				crit(56035, {
					["_npcs"] = { 187945 },	-- Anhydros the Tidetaker
				}),
				crit(56036, {
					["_npcs"] = { 193181 },	-- Skewersnout <Raypier of the Deep>
				}),
				crit(56037, {
					["_npcs"] = { 193263 },	-- Helmet Missingway
				}),
				crit(56038, {
					["_npcs"] = { 192738 },	-- Brundin the Dragonbane <Qalashi War Party>
				}),
				crit(56039, {
					["_npcs"] = { 193217 },	-- Drakewing
				}),
				crit(56040, {
					["_npcs"] = { 193148 },	-- Thunderous Matriarch
				}),
				crit(56041, {
					["_npcs"] = { 193135 },	-- Azra's Prized Peony
				}),
				crit(56042, {	-- Snappy
					["_npcs"] = { 193226 },	-- Gorjo the Crab Shackler
				}),
				crit(56043, {
					["_npcs"] = { 193118 },	-- O'nank Shorescour
				}),
				crit(56044, {
					["_npcs"] = { 193120 },	-- Smogswog the Firebreather
				}),
				crit(56045, {
					["_npcs"] = { 193132 },	-- Amethyzar the Glittering
				}),
				crit(56046, {
					["_npcs"] = { 186827 },	-- Magmaton
				}),
				crit(56047, {
					["_npcs"] = { 193152 },	-- Massive Magmashell
				}),
				crit(56048, {
					["_npcs"] = { 193154 },	-- Forgotten Gryphon
				}),
				crit(57852, {
					["_npcs"] = { 192362 },	-- Possessive Hornswog
				}),
				crit(56049, {
					["_npcs"] = { 193134 },	-- Enkine the Voracious
				}),
				crit(56050, {
					["_npcs"] = { 193198 },	-- Captain Lancer
				}),
				crit(56052, {
					["_npcs"] = { 186859 },	-- Worldcarver A'tir
				}),
				crit(56053, {
					["_npcs"] = { 190985 },	-- Death's Shadow
				}),
				crit(56054, {
					["_npcs"] = { 189822 },	-- Shas'ith
				}),
				crit(56055, {
					["_npcs"] = { 193266 },	-- Lepidoralia the Resplendent
				}),
				crit(56056, {
					["_npcs"] = { 186783 },	-- Cauldronbearer Blakor
				}),
				crit(56057, {
					["_npcs"] = { 187598 },	-- Rohzor Forgesmash <Djaradin Smithmaster>
				}),
				crit(56058, {
					["_npcs"] = { 187886 },	-- Turboris
				}),
				crit(56059, {
					["_npcs"] = { 190986 },	-- Battlehorn Pyrhus
				}),
				crit(56060, {
					["_npcs"] = { 190991 },	-- Char
				}),
				crit(56061, {
					["_npcs"] = { 193232 },	-- Rasnar the War Ender
				}),
				crit(56988, {
					["_npcs"] = { 187306 },	-- Morchok <Harbinger of Twilight>
				}),
				crit(56989, {
					["_npcs"] = { 193271 },	-- Shadeslash Trakken
				}),
				crit(57003, {
					["_npcs"] = { 193175 },	-- Slurpo, the Incredible Snail
				}),
			}),
			ach(17561, {	-- Ancient Stones of the Waking Shores (automated)
				["timeline"] = { ADDED_10_1_0 },
			}),
			ach(16406, {	-- All Sides of the Story (automated)
				crit(55244, {	-- Tarjin the Blind
					["_quests"] = { 70779 },	-- Tarjin's Tales
				}),
			}),
			ach(15991, {	-- Dragon Glyphs: Crumbling Life Archway
				["coord"] = { 57.7, 55.0, THE_WAKING_SHORES },
			}),
			ach(16669, {	-- Dragon Glyphs: Flashfrost Enclave
				["coord"] = { 58.1, 78.8, THE_WAKING_SHORES },
			}),
			ach(16051, {	-- Dragon Glyphs: Dragonheart Outpost
				["coord"] = { 69.2, 46.4, THE_WAKING_SHORES },
			}),
			ach(15990, {	-- Dragon Glyphs: Life-Binder Observatory
				["coord"] = { 52.6, 17.1, THE_WAKING_SHORES },
			}),
			ach(15987, {	-- Dragon Glyphs: Obsidian Bulwark
				["coord"] = { 41.0, 71.9, THE_WAKING_SHORES },
			}),
			ach(16053, {	-- Dragon Glyphs: Obsidian Throne
				["coord"] = { 21.9, 51.5, THE_WAKING_SHORES },
			}),
			ach(15988, {	-- Dragon Glyphs: Ruby Life Pools
				["coord"] = { 54.5, 74.2, THE_WAKING_SHORES },
			}),
			ach(16670, {	-- Dragon Glyphs: Rubyscale Outpost
				["coord"] = { 48.8, 86.7, THE_WAKING_SHORES },
			}),
			ach(16052, {	-- Dragon Glyphs: Scalecracker Peak
				["coord"] = { 73.3, 20.3, THE_WAKING_SHORES },
			}),
			ach(15985, {	-- Dragon Glyphs: Skytop Observatory
				["coord"] = { 75.3, 57.0, THE_WAKING_SHORES },
			}),
			ach(16668, {	-- Dragon Glyphs: Skytop Observatory Rostrum
				["coord"] = { 74.3, 57.6, THE_WAKING_SHORES },
			}),
			ach(15989, {	-- Dragon Glyphs: The Overflowing Spring
				["coord"] = { 46.4, 52.1, THE_WAKING_SHORES },
			}),
			ach(15986, {	-- Dragon Glyphs: Wingrest Embassy
				["coord"] = { 74.9, 37.4, THE_WAKING_SHORES },
			}),
			ach(16400),		-- Explore the Waking Shores
			ach(16736),		-- Grand Theft Mammoth
			ach(16493, {	-- Petty Theft Mammoth
				["description"] = "Find Mammoths to ride from the individual locations to the location specified on this achievement.",
				["cr"] = 198163,	-- Mammoth-Tamer Tavok
				["coord"] = { 39.6, 55.0, THE_WAKING_SHORES },	-- Turn in
				["groups"] = {
					crit(55870, {	-- Smoldering Perch
						["coord"] = { 37.2, 44.5, THE_WAKING_SHORES },
						["cr"] = 194625,	-- Tame Magmammoth
					}),
					crit(55871, {	-- Burning Ascent
						["coord"] = { 33.3, 72.2, THE_WAKING_SHORES },
						["cr"] = 198150,	-- Tame Magmammoth
					}),
					crit(55872, {	-- Scalecracker Keep
						["coord"] = { 66.3, 24.6, THE_WAKING_SHORES },
						["cr"] = 198155,	-- Tame Magmammoth
					}),
					crit(55873, {	-- Dragonbane Keep
						["coord"] = { 23.6, 71.5, THE_WAKING_SHORES },
						["cr"] = 198153,	-- Tame Magmammoth
					}),
				},
			}),
			ach(16401, {	-- Sojourner of the Waking Shores
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(16584, {	-- Symbols of Hope
				crit(55841, {	-- Wingrest Embassy
					["coord"] = { 73.2, 37.8, THE_WAKING_SHORES },
					["_quests"] = { 72096 },
				}),
				crit(55842, {	-- Skytop Observatory
					["coord"] = { 73.0, 52.9, THE_WAKING_SHORES },
					["_quests"] = { 72097 },
				}),
				crit(55843, {	-- Crumbling Life Archway
					["coord"] = { 56.8, 58.0, THE_WAKING_SHORES },
					["_quests"] = { 72098 },
				}),
				crit(55844, {	-- Hatchery Observatory
					["coord"] = { 61.7, 80.8, THE_WAKING_SHORES },
					["_quests"] = { 72099 },
				}),
				crit(55845, {	-- Obsidian Observatory
					["coord"] = { 43.6, 63.8, THE_WAKING_SHORES },
					["_quests"] = { 72100 },
				}),
				crit(55846, {	-- Apex Canopy
					["coord"] = { 24.0, 89.9, THE_WAKING_SHORES },
					["_quests"] = { 72101 },
				}),
				crit(55848, {	-- Concord Observatory
					["coord"] = { 57.2, 46.4, THE_WAKING_SHORES },
					["_quests"] = { 72103 },
				}),
				crit(55847, {	-- The Overflowing Spring
					["coord"] = { 50.3, 55.6, THE_WAKING_SHORES },
					["_quests"] = { 72102 },
				}),
				crit(55849, {	-- Uktulut Backwater
					["coord"] = { 48.9, 39.9, THE_WAKING_SHORES },
					["_quests"] = { 72104 },
				}),
				crit(55850, {	-- Life-Binder Conservatory
					["coord"] = { 57.0, 20.0, THE_WAKING_SHORES },
					["_quests"] = { 72105 },
				}),
			}),
			pvp(ach(16592)),	-- Tour of Duty: The Waking Shores
			ach(16297, {	-- Treasures of The Waking Shores
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(16334, {	-- Waking Hope
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(16575, {	-- Waking Shores Glyph Hunter
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					15991,	-- Dragon Glyphs: Crumbling Life Archway
					16669,	-- Dragon Glyphs: Flashfrost Enclave
					16051,	-- Dragon Glyphs: Dragonheart Outpost
					15990,	-- Dragon Glyphs: Life-Binder Observatory
					15987,	-- Dragon Glyphs: Obsidian Bulwark
					16053,	-- Dragon Glyphs: Obsidian Throne
					15988,	-- Dragon Glyphs: Ruby Life Pools
					16052,	-- Dragon Glyphs: Scalecracker Peak
					15985,	-- Dragon Glyphs: Skytop Observatory
					16668,	-- Dragon Glyphs: Skytop Observatory Rostrum
					15989,	-- Dragon Glyphs: The Overflowing Spring
					15986,	-- Dragon Glyphs: Wingrest Embassy
				}},
			}),
		}),
	}),
})));
