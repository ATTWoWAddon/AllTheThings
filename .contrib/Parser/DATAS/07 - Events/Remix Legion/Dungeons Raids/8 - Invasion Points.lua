-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	inst(959, {	-- Invasion Points
		["coords"] = {
			{ 38.8, 12.4, EREDATH },
			{ 70.5, 38.8, EREDATH },
			-- TODO more coords for possible spawns
			-- then remove the maps for Krokuun and Antoran Wastes once coords added
		},
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(61077, {	-- Argus Invasion Point Bosses
					crit(108431, {	-- Inquisitor Meto
						["_npcs"] = { 124592 },	-- Inquisitor Meto
					}),
					crit(108428, {	-- Matron Folnuna
						["_npcs"] = { 124514 },	-- Matron Folnuna
					}),
					crit(108434, {	-- Mistress Alluradel
						["_npcs"] = { 124625 },	-- Mistress Alluradel
					}),
					crit(108432, {	-- Occularus
						["_npcs"] = { 124492 },	-- Occularus
					}),
					crit(108430, {	-- Pit Lord Vilemus
						["_npcs"] = { 124719 },	-- Pit Lord Vilemus
					}),
					crit(108433, {	-- Sotanathor
						["_npcs"] = { 124555 },	-- Sotanathor
					}),
				}),
				achpart(42693, 42695, {	-- Breaking the Legion I
					["maps"] = { 921, 922, 923, 924, 925, 926 },
				}),
				achpart(42694, 42695, {	-- Breaking the Legion II
					["maps"] = { 921, 922, 923, 924, 925, 926 },
				}),
				ach(42695, {	-- Breaking the Legion III
					["maps"] = { 921, 922, 923, 924, 925, 926 },
				}),
				ach(42696, {	-- Greater Invasion Points I
					["maps"] = { 927, 928, 929, 930, 931, 932 },
				}),
				ach(42697, {	-- Greater Invasion Points II
					["maps"] = { 927, 928, 929, 930, 931, 932 },
				}),
				ach(42698, {	-- Greater Invasion Points III
					["maps"] = { 927, 928, 929, 930, 931, 932 },
				}),
			}),
			e(2012, {	-- Inquisitor Meto
				["creatureID"] = 124592,	-- Inquisitor Meto
				["crs"] = { 127535 },	-- Greater Invasion Point: Inquisitor Meto
				["questID"] = 49166,
				["modelScale"] = 0.85,
				["isRaid"] = true,
				["maps"] = {
					930,	-- Greater Invasion Point: Inquisitor Meto
					KROKUUN,
					ANTORAN_WASTES,
				},
				["groups"] = { ach(42581) },	-- Inquisitor Meto
			}),
			e(2010, {	-- Matron Folnuna
				["creatureID"] = 124514,	-- Matron Folnuna
				["crs"] = { 127528 },	-- Greater Invasion Point: Matron Folnuna
				["questID"] = 49169,
				["modelScale"] = 0.65,
				["isRaid"] = true,
				["maps"] = {
					929,	-- Greater Invasion Point: Matron Folnuna
					KROKUUN,
					ANTORAN_WASTES,
				},
				["groups"] = { ach(42574) },	-- Matron Folnuna
			}),
			e(2011, {	-- Mistress Alluradel
				["creatureID"] = 124625,	-- Mistress Alluradel
				["crs"] = { 127536 },	-- Greater Invasion Point: Mistress Alluradel
				["questID"] = 49167,
				["modelScale"] = 0.95,
				["isRaid"] = true,
				["maps"] = {
					928,	-- Greater Invasion Point: Mistress Alluradel
					KROKUUN,
					ANTORAN_WASTES,
				},
				["groups"] = { ach(42538) },	-- Mistress Alluradel
			}),
			e(2013, {	-- Occularus
				["creatureID"] = 124492,	-- Occularus
				["crs"] = { 127533 },	-- Greater Invasion Point: Occularus
				["questID"] = 49170,
				["modelScale"] = 0.50,
				["isRaid"] = true,
				["maps"] = {
					932,	-- Greater Invasion Point: Occularus
					KROKUUN,
					ANTORAN_WASTES,
				},
				["groups"] = { ach(42604) },	-- Occularus
			}),
			e(2015, {	-- Pit Lord Vilemus
				["creatureID"] = 124719,	-- Pit Lord Vilemus
				["crs"] = { 127531 },	-- Greater Invasion Point: Pit Lord Vilemus
				["questID"] = 49168,
				["modelScale"] = 1.15,
				["isRaid"] = true,
				["maps"] = {
					927,	-- Greater Invasion Point: Pit Lord Vilemus
					KROKUUN,
					ANTORAN_WASTES,
				},
				["groups"] = { ach(42616) },	-- Pit Lord Vilemus
			}),
			e(2014, {	-- Sotanathor
				["creatureID"] = 124555,		-- Sotanathor
				["crs"] = { 127532 },	-- Greater Invasion Point: Sotanathor
				["questID"] = 49171,
				["modelScale"] = 0.75,
				["isRaid"] = true,
				["maps"] = {
					931,	-- Greater Invasion Point: Sotanathor
					KROKUUN,
					ANTORAN_WASTES,
				},
				["groups"] = { ach(42534) },	-- Sotanathor
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	m(BROKEN_ISLES, {
		m(ARGUS, {
			q(92541, {["isDaily"] = true }),	-- Triggeres after killing any Greater Invasion Point boss
		}),
	}),
}));
