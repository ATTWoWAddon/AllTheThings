-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, applyclassicphase(WRATH_PHASE_ONE, expansion(EXPANSION.WRATH, {
	n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
		ach(1658, {	-- Champion of the Frozen Wastes
			title(97),	-- , Champion of the Frozen Wastes
			crit(5888, {	-- Kel'Thuzad (10 or 25 player) slain
				["_encounter"] = { 1615, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, 1615, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
			}),
			crit(5889, {	-- Sartharion (10 or 25 player) slain
				["_encounter"] = { 1616, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, 1616, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
			}),
			crit(5890, {	-- Malygos (10 or 25 player) slain
				["_encounter"] = { 1617, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, 1617, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
			}),
			crit(5611, {	-- Herald Volazj slain
				["_encounter"] = { 584, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(5610, {	-- Anub'arak slain
				["_encounter"] = { 587, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(9261, {	-- The Prophet Tharon'ja slain
				["_encounter"] = { 591, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(5614, {	-- Gal'darah slain
				["_encounter"] = { 596, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(5616, {	-- Loken slain
				["_encounter"] = { 600, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(5615, {	-- Sjonnir The Ironshaper slain
				["_encounter"] = { 607, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(6434, {	-- Mal'Ganis slain
				["_encounter"] = { 614, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(5609, {	-- Keristrasza slain
				["_encounter"] = { 621, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(5617, {	-- Ley-Guardian Eregos slain
				["_encounter"] = { 625, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(5613, {	-- Cyanigosa slain
				["_encounter"] = { 632, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(5608, {	-- Ingvar the Plunderer slain
				["_encounter"] = { 640, DIFFICULTY.DUNGEON.HEROIC },
			}),
			crit(5618, {	-- King Ymiron slain
				["_encounter"] = { 644, DIFFICULTY.DUNGEON.HEROIC },
			}),
		}),
		ach(2136, {	-- Glory of the Hero
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				1919,	-- On The Rocks
				2150,	-- Split Personality
				2036,	-- Intense Cold
				2037,	-- Chaos Theory
				1296,	-- Watch Him Die
				1297,	-- Hadronox Denied
				1860,	-- Gotta Go!
				1862,	-- Volazj's Quick Demise
				2038,	-- Respect Your Elders
				2056,	-- Volunteer Work
				2151,	-- Consumption Junction
				2039,	-- Better Off Dred
				2057,	-- Oh Novos!
				1816,	-- Defenseless
				1865,	-- Lockdown!
				2041,	-- Dehydration
				2153,	-- A Void Dance
				1864,	-- What the Eck?
				2040,	-- Less-rabi
				2058,	-- Snakes. Why'd It Have To Be Snakes?
				1866,	-- Good Grief
				2154,	-- Brann Spankin' New
				2155,	-- Abuse the Ooze
				1867,	-- Timely Death
				1834,	-- Lightning Struck
				2042,	-- Shatter Resistant
				1817,	-- The Culling of Time
				1872,	-- Zombiefest!
				2043,	-- The Incredible Hulk
				1873,	-- Lodi Dodi We Loves the Skadi
				2156,	-- My Girl Loves to Skadi All the Time
				2157,	-- King's Bane
				1871,	-- Experienced Drake Rider
				1868,	-- Make It Count
				2044,	-- Ruby Void
				2045,	-- Emerald Void
				2046,	-- Amber Void
			}},
			["groups"] = {
				i(44160),	-- Red Proto-Drake (MOUNT!)
			},
		}),
		ach(2137, {	-- Glory of the Raider (10 player)
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				-- #if BEFORE 4.0.1
				2187,	-- The Undying
				-- #endif
				-- #if NOT ANYCLASSIC
				578,	-- The Dedicated Few (10 player)
				-- #endif
				1858,	-- Arachnophobia (10 player)
				1856,	-- Make Quick Werk of Him (10 player)
				1996,	-- The Safety Dance (10 player)
				1997,	-- Momma Said Knock You Out (10 player)
				2178,	-- Shocking! (10 player)
				-- #if NOT ANYCLASSIC
				2180,	-- Subtraction (10 player)
				-- #endif
				622,	-- The Spellweaver's Downfall (10 player)
				1874,	-- You Don't Have an Eternity (10 player)
				-- #if NOT ANYCLASSIC
				1869,	-- A Poke in the Eye (10 player)
				-- #endif
				2047,	-- Gonna Go When the Volcano Blows (10 player)
				2051,	-- The Twilight Zone (10 player)
				2146,	-- The Hundred Club (10 player)
				2176,	-- And They Would All Go Down Together (10 player)
				2148,	-- Denyin' the Scion (10 player)
				2184,	-- Just Can't Get Enough (10 player)
			}},
			["maps"] = { THE_EYE_OF_ETERNITY, THE_OBSIDIAN_SANCTUM, NAXXRAMAS },
			["groups"] = {
				i(44175, {	-- Plagued Proto-Drake (MOUNT!)
					["timeline"] = { ADDED_3_0_2, REMOVED_3_1_0 },
					-- #if BEFORE CATA
					-- They didn't actually remove this with Phase 2... Blizzard?!
					["OnUpdate"] = [[function(t)
						if _.Settings:GetUnobtainableFilter(]] .. CATA_PHASE_ONE .. [[) then
							t.u = ]] .. REMOVED_FROM_GAME .. [[;
							t.rwp = nil;
						else
							t.u = ]] .. WRATH_PHASE_ONE .. [[;
							t.rwp = 30100;
						end
					end]],
					-- #endif
				}),
			},
		}),
		ach(2138, {	-- Glory of the Raider (25 player)
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				-- #if NOT ANYCLASSIC
				579,	-- The Dedicated Few (25 player)
				-- #endif
				1859,	-- Arachnophobia (25 player)
				1857,	-- Make Quick Werk of Him (25 player)
				-- #if BEFORE 4.0.1
				2186,	-- The Immortal
				-- #endif
				2139,	-- The Safety Dance (25 player)
				2140,	-- Momma Said Knock You Out (25 player)
				2179,	-- Shocking! (25 player)
				2177,	-- And They Would All Go Down Together (25 player)
				-- #if NOT ANYCLASSIC
				2181,	-- Subtraction (25 player)
				-- #endif
				623,	-- The Spellweaver's Downfall (25 player)
				1875,	-- You Don't Have an Eternity (25 player)
				-- #if NOT ANYCLASSIC
				1870,	-- A Poke in the Eye (25 player)
				-- #endif
				2048,	-- Gonna Go When the Volcano Blows (25 player)
				2149,	-- Denyin' the Scion (25 player)
				2054,	-- The Twilight Zone (25 player)
				2147,	-- The Hundred Club (25 player)
				2185,	-- Just Can't Get Enough (25 player)
			}},
			["maps"] = { THE_EYE_OF_ETERNITY, THE_OBSIDIAN_SANCTUM, NAXXRAMAS },
			["groups"] = {
				i(44164, {	-- Black Proto-Drake (MOUNT!)
					["timeline"] = { ADDED_3_0_2, REMOVED_3_1_0 },
					-- #if BEFORE CATA
					-- They didn't actually remove this with Phase 2... Blizzard?!
					["OnUpdate"] = [[function(t)
						if _.Settings:GetUnobtainableFilter(]] .. CATA_PHASE_ONE .. [[) then
							t.u = ]] .. REMOVED_FROM_GAME .. [[;
							t.rwp = nil;
						else
							t.u = ]] .. WRATH_PHASE_ONE .. [[;
							t.rwp = 30100;
						end
					end]],
					-- #endif
				}),
			},
		}),
		ach(1289, {	-- Northrend Dungeon Hero
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				492,	-- Heroic: Ahn'kahet: The Old Kingdom
				491,	-- Heroic: Azjol-Nerub
				500,	-- Heroic Caverns of Time: Stratholme
				493,	-- Heroic: Drak'Tharon Keep
				495,	-- Heroic: Gundrak
				497,	-- Heroic: Halls of Lightning
				496,	-- Heroic: Halls of Stone
				490,	-- Heroic: The Nexus
				498,	-- Heroic: The Oculus
				494,	-- Heroic: The Violet Hold
				489,	-- Heroic: Utgarde Keep
				499,	-- Heroic: Utgarde Pinnacle
			}},
		}),
		ach(1288, {	-- Northrend Dungeonmaster
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				481,	-- Ahn'kahet: The Old Kingdom
				480,	-- Azjol-Nerub
				479,	-- Caverns of Time: Stratholme
				482,	-- Drak'Tharon Keep
				484,	-- Gundrak
				486,	-- Halls of Lightning
				485,	-- Halls of Stone
				478,	-- The Nexus
				487,	-- The Oculus
				483,	-- The Violet Hold
				477,	-- Utgarde Keep
				488,	-- Utgarde Pinnacle
			}},
		}),
		ach(11320, {	-- Raiding with Leashes IV: Wrath of the Lick King
			["timeline"] = { ADDED_7_1_0 },
			["groups"] = {
				i(142210),	-- Celestial Invitation (Begins a quest for a pet)
			},
		}),
	})),
})))
