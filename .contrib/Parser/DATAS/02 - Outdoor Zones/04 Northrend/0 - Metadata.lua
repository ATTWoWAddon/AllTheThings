---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	applyclassicphase(WRATH_PHASE_ONE, m(NORTHREND, {
		["lore"] = "Northrend is the northern, icy continent of the world of Azeroth, and the source of the evil Scourge. It is also the home of Icecrown Citadel, the seat of the malevolent Lich King.",
		["icon"] = 236812,
		["zone-text-continent"] = true,
		["timeline"] = { ADDED_3_0_2 },	-- NOTE: This is the base patch for all of the content on this continent and does not need to be added to everything within it.
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(2257),	-- Frostbitten
				applyclassicphase(WRATH_PHASE_ONE, ach(41, {	-- Loremaster of Northrend (A) (automated)
					-- #if BEFORE 5.0.4
					["races"] = ALLIANCE_ONLY,
					-- #endif
				})),
				-- #if BEFORE 5.0.4
				ach(1360, {	-- Loremaster of Northrend (H) (automated)
					["timeline"] = { ADDED_3_0_2, DELETED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				-- #endif
				achpart(2256, 2257),	-- Northern Exposure (automated)
				applyclassicphase(WRATH_PHASE_ONE, ach(45, {	-- Northrend Explorer [7.0.3] / Explore Northrend (automated)
					["groups"] = {
						i(43348),	-- Tabard of the Explorer
					},
				})),
				petbattle(ach(6588, { ["timeline"] = { ADDED_5_0_4 } })),	-- Northrend Safari (automated)
				petbattle(ach(6615, { ["timeline"] = { ADDED_5_0_4 } })),	-- Northrend Tamer (automated)
				petbattle(ach(6605, {	-- Taming Northrend (automated)
					["timeline"] = { ADDED_5_0_4 },
				})),
				ach(2557, {	-- To All The Squirrels Who Shared My Life
					-- #if ANYCLASSIC
					crit(9299, {	-- Arctic Hare (Dragonblight, Zul'Drak, Borean Tundra)
						["maps"] = { BOREAN_TUNDRA, DRAGONBLIGHT, ZULDRAK },
						["crs"] = { 29328 },	-- Arctic Hare
					}),
					crit(9300, {	-- Borean Marmot (Borean Tundra)
						["maps"] = { BOREAN_TUNDRA },
						["crs"] = { 31685 },	-- Borean Marmot
					}),
					-- #else
					crit(21293, {	-- Arctic Hare (Dragonblight, Zul'Drak, Borean Tundra)
						["maps"] = { BOREAN_TUNDRA, DRAGONBLIGHT, ZULDRAK },
						["provider"] = { "n", 29328 },	-- Arctic Hare
					}),
					crit(21294, {	-- Borean Marmot (Borean Tundra)
						["maps"] = { BOREAN_TUNDRA },
						["provider"] = { "n", 31685 },	-- Borean Marmot
					}),
					-- #endif
					crit(9301, {	-- Fjord Penguin (Howling Fjord)
						["maps"] = { HOWLING_FJORD },
						["crs"] = { 28407 },	-- Fjord Penguin
					}),
					crit(9302, {	-- Fjord Turkey (Howling Fjord)
						["maps"] = { HOWLING_FJORD },
						["crs"] = { 24746 },	-- Fjord Turkey
					}),
					crit(9303, {	-- Glacier Penguin (Icecrown)
						["maps"] = { ICECROWN },
						["crs"] = { 32498 },	-- Glacier Penguin
					}),
					-- #if ANYCLASSIC
					crit(9304, {	-- Grizzly Squirrel (Grizzly Hills, Twilight Highlands)
						["maps"] = {
							GRIZZLY_HILLS,
							-- #if AFTER CATA
							TWILIGHT_HIGHLANDS,
							-- #endif
						},
						["crs"] = {
							31889,		-- Grizzly Squirrel
							-- #if AFTER CATA
							62818,		-- Grizzly Squirrel
							-- #endif
						},
					}),
					-- #else
					crit(21295, {	-- Grizzly Squirrel (Grizzly Hills, Twilight Highlands)
						["maps"] = {
							GRIZZLY_HILLS,
							-- #if AFTER CATA
							TWILIGHT_HIGHLANDS,
							-- #endif
						},
						["providers"] = {
							{ "n", 31889 },		-- Grizzly Squirrel
							-- #if AFTER CATA
							{ "n", 62818 },		-- Grizzly Squirrel
							-- #endif
						},
					}),
					-- #endif
					-- #if BEFORE CATA
					crit(3753, {	-- Hare (Durotar)
						["maps"] = { DUROTAR },
						["crs"] = { 5951 },	-- Hare
					}),
					-- #endif
					-- #if ANYCLASSIC
					crit(9305, {	-- Huge Toad (Hillsbrad Foothills, Twilight Highlands, Zul'Drak, Swamp of Sorrows)
						["maps"] = { HILLSBRAD_FOOTHILLS, SWAMP_OF_SORROWS, ZULDRAK },
						["crs"] = { 6653 },	-- Huge Toad
					}),
					crit(9306, {	-- Lava Crab (Searing Gorge, Burning Steppes)
						["maps"] = { SEARING_GORGE, BURNING_STEPPES },
						["crs"] = { 9700 },	-- Lava Crab
					}),
					crit(9307, {	-- Mountain Skunk (Stonetalon Mountains, Grizzly Hills, Winterspring, Howling Fjord)
						["maps"] = { GRIZZLY_HILLS, HOWLING_FJORD, STONETALON_MOUNTAINS, WINTERSPRING },
						["crs"] = { 31890 },	-- Mountain Skunk
					}),
					-- #else
					crit(21296, {	-- Huge Toad (Hillsbrad Foothills, Twilight Highlands, Zul'Drak, Swamp of Sorrows)
						["maps"] = { HILLSBRAD_FOOTHILLS, SWAMP_OF_SORROWS, ZULDRAK },
						["provider"] = { "n", 6653 },	-- Huge Toad
					}),
					crit(21297, {	-- Lava Crab (Searing Gorge, Burning Steppes)
						["maps"] = { SEARING_GORGE, BURNING_STEPPES },
						["provider"] = { "n", 9700 },	-- Lava Crab
					}),
					crit(21298, {	-- Mountain Skunk (Stonetalon Mountains, Grizzly Hills, Winterspring, Howling Fjord)
						["maps"] = { GRIZZLY_HILLS, HOWLING_FJORD, STONETALON_MOUNTAINS, WINTERSPRING },
						["provider"] = { "n", 31890 },	-- Mountain Skunk
					}),
					-- #endif
					crit(9308, {	-- Scalawag Frog (Howling Fjord)
						["maps"] = { HOWLING_FJORD },
						["crs"] = { 26503 },	-- Scalawag Frog
					}),
					crit(9309, {	-- Sholazar Tickbird (Sholazar Basin)
						["maps"] = { SHOLAZAR_BASIN },
						["crs"] = { 28093 },	-- Sholazar Tickbird
					}),
					-- #if ANYCLASSIC
					crit(9310, {	-- Tundra Penguin (Borean Tundra)
						["maps"] = { BOREAN_TUNDRA },
						["crs"] = { 28440 },	-- Tundra Penguin
					}),
					-- #else
					crit(21299, {	-- Tundra Penguin (Borean Tundra)
						["maps"] = { BOREAN_TUNDRA },
						["provider"] = { "n", 28440 },	-- Tundra Penguin
					}),
					-- #endif
				}),
			}),
			-- #if AFTER 5.3.0
			battlepets({
				pet(1238, {	-- Unborn Val'kyr (PET!)
					["description"] = "This pet spawns in all ordinary questing zones in Northrend, but only at a few specific locations. Other pets might spawn in their place, they might be sensitive to phasing, and might only have one spawn per zone.",
					["coords"] = {
						{ 47.7, 7.65, BOREAN_TUNDRA },	-- Northwest of Bor'Gorok Outpost
						{ 32.85, 60.25, BOREAN_TUNDRA },	-- South of Garrosh's Landing
						{ 80.9, 48.4, BOREAN_TUNDRA },	-- The Frozen Reach, southwest of Death's Stand
						{ 17.8, 57.25, CRYSTALSONG_FOREST },	-- Between The Azure Front and Violet Stand
						{ 43.2, 44.2, CRYSTALSONG_FOREST },	-- Forlorn Woods, just east of Dalaran proper
						{ 68.1, 49.2, CRYSTALSONG_FOREST },	-- West of Sunreaver's Command
						{ 26.7, 54.1, DRAGONBLIGHT },	-- West of Star's Rest
						{ 65.5, 35.6, DRAGONBLIGHT },	-- The Dragon Wastes, north of Wyrmrest temple, east of Path of the Titans
						{ 82.2, 66.1, DRAGONBLIGHT },	-- The Forgotten Shore, north of the westernmost house ruin
						{ 25.8, 56.9, GRIZZLY_HILLS },	-- West across the river for Amberpine Lodge
						{ 61.7, 18.15, GRIZZLY_HILLS },	-- At the bottom of the Zul'Drak stairs by Thor Modan
						{ 79.6, 51.9, GRIZZLY_HILLS },	-- Northeast of Dun Argol
						{ 45.9, 43.15, HOWLING_FJORD },	-- West of Utgarde Keep, between the road and the river
						{ 68.3, 67.6, HOWLING_FJORD },	-- By the main road west of Baelgun's Excavation Site
						{ 71.7, 43.2, HOWLING_FJORD },	-- East of the road east of Utgarde Keep
						{ 73.55, 64.9, ICECROWN },	-- Between The Broken Front and Scourgeholme
						{ 44.2, 33.6, ICECROWN },	-- Northen end of Ironwall Rampart
						{ 48.3, 87.1, ICECROWN },	-- The Court of Bones, southwest by the citadel wall
						{ 36.9, 19.25, SHOLAZAR_BASIN },	-- Shelf above Spearborn Encampment
						{ 58.3, 22.1, SHOLAZAR_BASIN },	-- Shelf north of the Bonefields
						{ 44.5, 69.35, SHOLAZAR_BASIN },	-- Wildgrowth Mangal, southwest of River's Heart
						{ 65.2, 41.8, THE_STORM_PEAKS },	-- Plain of Echoes
						{ 29.15, 51.4, THE_STORM_PEAKS },	-- Southern end of Snowdrift Plains
						{ 41.8, 78.7, THE_STORM_PEAKS },	-- Just east of the Crystalweb Cavern by K3
						{ 24.35, 64.0, ZULDRAK },	-- The Dead Fields, just west of Crusader Forward Camp
						-- Not confirmed: { 75.1, 23.1, ZULDRAK },	-- Just south of Gundrak dungeon's northwestern entrance
					},
					["timeline"] = { ADDED_5_3_0 },
				}),
			}),
			-- #endif
		},
	})),
});
