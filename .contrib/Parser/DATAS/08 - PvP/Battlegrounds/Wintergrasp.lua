-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, applyclassicphase(WRATH_PHASE_ONE, {
	m(WINTERGRASP_BG, {
		["lore"] = "Wintergrasp is a World PvP zone, similar to Tol Barad. It emphasizes siege weapon warfare--walls and towers are destroyed not by player damage, but by siege damage. Your siege engine amount is controlled by which workshops in the zone your faction owns.",
		["icon"] = 135836,
		["timeline"] = { ADDED_3_0_3 },
		["maps"] = { WINTERGRASP },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(1752, {	-- Master of Wintergrasp (Alliance - before 4.3.0)
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						1722,	-- Archavon the Stone Watcher (10 player)
						1721,	-- Archavon the Stone Watcher (25 player)
						2080,	-- Black War Mammoth
						1737,	-- Destruction Derby (A)
						-- #if AFTER 4.3.0
						2476,	-- Destruction Derby (H)
						-- #endif
						1751,	-- Didn't Stand a Chance
						1727,	-- Leaning Tower
						1723,	-- Vehicular Gnomeslaughter
						2199,	-- Wintergrasp Ranger
						1718,	-- Wintergrasp Veteran
						1755,	-- Within Our Grasp
						-- #if BEFORE 4.0.1
						2089,	-- 1000 Stone Keeper's Shards
						-- #endif
					}},
					-- #if BEFORE 4.3.0
					["races"] = ALLIANCE_ONLY,
					-- #endif
				}),
				ach(2776, {	-- Master of Wintergrasp (Horde - before 4.3.0)
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						1722,	-- Archavon the Stone Watcher (10 player)
						1721,	-- Archavon the Stone Watcher (25 player)
						2080,	-- Black War Mammoth
						2476,	-- Destruction Derby (H)
						1751,	-- Didn't Stand a Chance
						1727,	-- Leaning Tower
						1723,	-- Vehicular Gnomeslaughter
						2199,	-- Wintergrasp Ranger
						1718,	-- Wintergrasp Veteran
						1755,	-- Within Our Grasp
						-- #if BEFORE 4.0.1
						2089,	-- 1000 Stone Keeper's Shards
						-- #endif
					}},
					["timeline"] = { ADDED_3_0_2, REMOVED_4_3_0 },
					["races"] = HORDE_ONLY,
				}),
				ach(1717, {	-- Wintergrasp Victory
					["rank"] = 1,
				}),
				ach(1718, {	-- Wintergrasp Veteran
					["rank"] = 100,
				}),
				ach(2085, {	-- 50 Stone Keeper's Shards
					["cost"] = { { "c", 161, 50 } },	-- Stone Keeper's Shard
					["timeline"] = { REMOVED_4_0_1 },
				}),
				ach(2086, {	-- 100 Stone Keeper's Shards
					["cost"] = { { "c", 161, 100 } },	-- Stone Keeper's Shard
					["timeline"] = { REMOVED_4_0_1 },
				}),
				ach(2087, {	-- 250 Stone Keeper's Shards
					["cost"] = { { "c", 161, 250 } },	-- Stone Keeper's Shard
					["timeline"] = { REMOVED_4_0_1 },
				}),
				ach(2088, {	-- 500 Stone Keeper's Shards
					["cost"] = { { "c", 161, 500 } },	-- Stone Keeper's Shard
					["timeline"] = { REMOVED_4_0_1 },
				}),
				ach(2089, {	-- 1000 Stone Keeper's Shards
					["cost"] = { { "c", 161, 1000 } },	-- Stone Keeper's Shard
					["timeline"] = { REMOVED_4_0_1 },
				}),
				ach(2080, {	-- Black War Mammoth
					["providers"] = {
						{ "i", 43956 },	-- Black War Mammoth (A)
						{ "i", 44077 },	-- Black War Mammoth (H)
					},
				}),
				ach(1737, {	-- Destruction Derby (A)
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						crit(9178, {	-- Wintergrasp Catapult
							["crs"] = { 27881 },
						}),
						crit(9179, {	-- Wintergrasp Demolisher
							["crs"] = { 28094 },
						}),
						crit(6444, {	-- Wintergrasp Siege Engine
							["crs"] = { 32627 },
						}),
						crit(9181, {	-- Wintergrasp Tower Cannon
							["crs"] = { 28366 },
						}),
					},
				}),
				ach(2476, {	-- Destruction Derby (H)
					["races"] = HORDE_ONLY,
					["groups"] = {
						crit(9178, {	-- Wintergrasp Catapult
							["crs"] = { 27881 },
						}),
						crit(9179, {	-- Wintergrasp Demolisher
							["crs"] = { 28094 },
						}),
						crit(9180, {	-- Wintergrasp Siege Engine
							["crs"] = { 32627 },
						}),
						crit(9181, {	-- Wintergrasp Tower Cannon
							["crs"] = { 28366 },
						}),
					},
				}),
				ach(1751),	-- Didn't Stand a Chance
				ach(1727),	-- Leaning Tower
				ach(1723),	-- Vehicular Gnomeslaughter
				ach(2199, {	-- Wintergrasp Ranger
					crit(7709, {	-- Wintergrasp Fortress
						["coord"] = { 49.3, 21.1, WINTERGRASP },
					}),
					crit(7710, {	-- Eastspark Workshop
						["coord"] = { 67.7, 61.7, WINTERGRASP },
					}),
					crit(7714, {	-- Flamewatch Tower
						["coord"] = { 79.4, 62.7, WINTERGRASP },
					}),
					crit(7711, {	-- The Broken Temple
						["coord"] = { 32.9, 38.8, WINTERGRASP },
					}),
					crit(7715, {	-- Shadowsight Tower
						["coord"] = { 24.0, 58.8, WINTERGRASP },
					}),
					crit(7718, {	-- The Cauldron of Flames
						["coord"] = { 84.1, 71.0, WINTERGRASP },
					}),
					crit(7712, {	-- The Sunken Ring
						["coord"] = { 63.8, 40.1, WINTERGRASP },
					}),
					crit(7716, {	-- Winter's Edge Tower
						["coord"] = { 50.1, 66.4, WINTERGRASP },
					}),
					crit(7713, {	-- Westspark Workshop
						["coord"] = { 34.7, 67.5, WINTERGRASP },
					}),
					crit(7719, {	-- The Chilled Quagmire
						["coord"] = { 22.1, 34.9, WINTERGRASP },
					}),
				}),
				ach(1755),	-- Within Our Grasp
			}),
			-- #if AFTER 8.1.5.29701
			n(QUESTS, {
				q(55510, {	-- No Mercy for the Merciless
					["qg"] = 151795,	-- Commander Zanneth
					["coord"] = { 49.6, 20.4, WINTERGRASP_BG },
					["timeline"] = { ADDED_8_1_5 },
					["races"] = ALLIANCE_ONLY,
					["isWeekly"] = true,
				}),
				q(55511, {	-- Slay them all!
					["qg"] = 151611,	-- Commander Dardosh
					["coord"] = { 49.6, 20.4, WINTERGRASP_BG },
					["timeline"] = { ADDED_8_1_5 },
					["races"] = HORDE_ONLY,
					["isWeekly"] = true,
				}),
				q(55508, {	-- Victory in Wintergrasp (A)
					["qg"] = 152003,	-- Tactical Officer Ahbramis
					["coord"] = { 50.2, 17.8, WINTERGRASP_BG },
					["timeline"] = { ADDED_8_1_5 },
					["races"] = ALLIANCE_ONLY,
					["isWeekly"] = true,
				}),
				q(55509, {	-- Victory in Wintergrasp (H)
					["qg"] = 152004,	-- Tactical Officer Kilrath
					["coord"] = { 50.2, 17.8, WINTERGRASP_BG },
					["timeline"] = { ADDED_8_1_5 },
					["races"] = HORDE_ONLY,
					["isWeekly"] = true,
				}),
			}),
			-- #endif
		},
	}),
}))));
