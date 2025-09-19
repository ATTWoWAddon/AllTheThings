---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(THE_RINGING_DEEPS, {
		n(ACHIEVEMENTS, {
			ach(40837),		-- Adventurer of The Ringing Deeps (automated)
			ach(40825),		-- Explore The Ringing Deeps (automated)
			ach(40614, {	-- Gobblin' with Glublurp
				["coord"] = { 44.3, 50.2, THE_RINGING_DEEPS },
				["groups"] = {
					i(225930, {	-- Glimmering Crystal
						["coord"] = { 60.0, 41.41, THE_RINGING_DEEPS },
					}),
					n(227138, {	-- Ethereal Glimmerling
						["coord"] = { 58.36, 33.60, THE_RINGING_DEEPS },
					}),
				},
			}),
			ach(40628),		-- Notable Machines (automated)
			ach(40473),		-- Not So Quick Fix (automated)
			ach(40731),		-- Panhandled
			ach(41187, {	-- Rage Aside the Machine
				["timeline"] = { ADDED_11_0_7 },
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					40837,	-- Adventurer of The Ringing Deeps
					40662,	-- It's Not Much, But It's Honest Work
					40473,	-- Not So Quick Fix
					40628,	-- Notable Machines
					40585,	-- Super Size Snuffling
					40475,	-- To All the Slimes I Love
					40724,	-- Treasures of The Ringing Deeps
				}},
			}),
			ach(40504),		-- Rocked to Sleep (automated)
			skyriding(ach(40678, {	-- Skyriding Glyphs: Abyssal Excavation
				["coord"] = { 63.7, 95.0, THE_RINGING_DEEPS },
			})),
			skyriding(ach(40675, {	-- Skyriding Glyphs: Chittering Den
				["coord"] = { 69.5, 34.5, THE_RINGING_DEEPS },
			})),
			skyriding(ach(40672, {	-- Skyriding Glyphs: Gundargaz
				["coord"] = { 49.0, 31.5, THE_RINGING_DEEPS },
			})),
			skyriding(ach(40679, {	-- Skyriding Glyphs: Taelloch Mine
				["coord"] = { 63.0, 66.1, THE_RINGING_DEEPS },
			})),
			skyriding(ach(40677, {	-- Skyriding Glyphs: The Living Grotto
				["coord"] = { 49.3, 66.2, THE_RINGING_DEEPS },
			})),
			skyriding(ach(40674, {	-- Skyriding Glyphs: Lost Mines
				["coord"] = { 57.3, 31.5, THE_RINGING_DEEPS },
			})),
			skyriding(ach(40673, {	-- Skyriding Glyphs: The Stonevault Exterior
				["coord"] = { 46.9, 10.1, THE_RINGING_DEEPS },
			})),
			skyriding(ach(40676, {	-- Skyriding Glyphs: The Rumbling Wastes
				["coord"] = { 56.2, 56.2, THE_RINGING_DEEPS },
			})),
			skyriding(ach(40680, {	-- Skyriding Glyphs: The Waterworks
				["coord"] = { 46.5, 51.8, THE_RINGING_DEEPS },
			})),
			ach(40799),		-- Sojourner of The Ringing Deeps (automated)
			ach(40585),		-- Super Size Snuffling
			ach(19560),		-- The Ringing Deeps (automated)
			skyriding(ach(40703, {	-- The Ringing Deeps Glyph Hunter
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					40678,	-- Skyriding Glyphs: Abyssal Excavation
					40675,	-- Skyriding Glyphs: Chittering Den
					40672,	-- Skyriding Glyphs: Gundargaz
					40674,	-- Skyriding Glyphs: Lost Mines
					40679,	-- Skyriding Glyphs: Taelloch Mine
					40677,	-- Skyriding Glyphs: The Living Grotto
					40673,	-- Skyriding Glyphs: The Stonevault Exterior
					40676,	-- Skyriding Glyphs: The Rumbling Wastes
					40680,	-- Skyriding Glyphs: The Waterworks
				}},
			})),
			ach(40475, {	-- To All the Slimes I Love
				crit(68670, {	-- Spring Mole
					["coord"] = { 57.48, 67.64, THE_RINGING_DEEPS },
					["crs"] = { 226626 },
				}),
				crit(68675, {	-- Worms
					["coord"] = { 60.31, 92.21, THE_RINGING_DEEPS },
					["crs"] = { 219585 },
				}),
				crit(68673, {	-- Snake
					["coord"] = { 51.28, 15.43, THE_RINGING_DEEPS },
					["crs"] = { 217756 },
				}),
				crit(68674, {	-- Lightdarter
					["coord"] = { 64.53, 32.38, THE_RINGING_DEEPS },
					["crs"] = { 220173 },
				}),
				crit(68676, {	-- Tiny Sporbit
					["coord"] = { 52.85, 54.73, THE_RINGING_DEEPS },
					["crs"] = { 221146 },
				}),
				crit(68677, {	-- Dustcrawler Beetle
					["coord"] = { 42.01, 16.38, THE_RINGING_DEEPS },
					["crs"] = { 220369 },
				}),
				crit(68731, {	-- Grottoscale Hatchling
					["coord"] = { 58.79, 68.61, THE_RINGING_DEEPS },
					["crs"] = { 217461 },
				}),
				crit(68729, {	-- Crackcreeper
					["coord"] = { 54.67, 29.92, THE_RINGING_DEEPS },
					["crs"] = { 220177 },
				}),
				crit(68730, {	-- Lava Slug
					["coord"] = { 48.50, 12.57, THE_RINGING_DEEPS },
					["crs"] = { 214726 },
				}),
				crit(68732, {	-- Earthenwork Stoneskitterer
					["coord"] = { 45.78, 13.52, THE_RINGING_DEEPS },
					["crs"] = { 220370 },
				}),
				crit(68733, {	-- Cavern Skiplet
					["coord"] = { 72.85, 39.65, THE_RINGING_DEEPS },
					["crs"] = { 223663 },
				}),
				crit(68734, {	-- Moss Sludglet
					["coord"] = { 57.30, 65.74, THE_RINGING_DEEPS },
					["crs"] = { 217316 },
				}),
				crit(68747, {	-- Cavern Mote
					["coord"] = { 42.01, 16.38, THE_RINGING_DEEPS },
					["crs"] = { 219366 },
				}),
				crit(68748, {	-- Stumblegrub
					["coord"] = { 61.96, 30.27, THE_RINGING_DEEPS },
					["crs"] = { 220168 },
				}),
				crit(69805, {	-- Darkgrotto Hopper
					["coord"] = { 54.41, 34.73, THE_RINGING_DEEPS },
					["crs"] = { 219842 },
				}),
				crit(68749, {	-- Oozeling
					["coord"] = { 67.01, 38.78, THE_RINGING_DEEPS },
					["crs"] = { 220413 },
				}),
				crit(68750, {	-- Pebble Scarab
					["coord"] = { 59.40, 45.92, THE_RINGING_DEEPS },
					["crs"] = { 217559 },
				}),
				crit(68751, {	-- Rock Snail
					["coord"] = { 42.42, 14.37, THE_RINGING_DEEPS },
					["crs"] = { 216058 },
				}),
			}),
			pvp(ach(40084)),	-- Tour of Duty: The Ringing Deeps
			ach(40724),		-- Treasures of The Ringing Deeps (automated)
		}),
	}),
}));
