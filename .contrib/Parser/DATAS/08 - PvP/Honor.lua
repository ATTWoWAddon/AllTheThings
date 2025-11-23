-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(n(PVP_HONOR, {
	currency(HONOR),	-- Honor
	n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
		ach(12893, {	-- Honor Level 5
			["groups"] = {
				i(142380, {	-- Dutiful Gruntling (PET!)
					["races"] = HORDE_ONLY,
					["crs"] = {
						119272,	-- Sarah the Savage (Horde / Dalaran)
						145837,	-- Violet Shadowmend (Horde / Zuldazar)
						146626,	-- Legionaire Voladis (Horde / OG)
					},
				}),
				i(142379, {	-- Dutiful Squire (PET!)
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						119484,	-- Captain Roberts (Ally / Dalaran)
						146633,	-- Knight-Captain Jessica (Ally / SW)
						145838,	-- Marshal Frazer (Ally / Boralus)
					},
				}),
			},
		}),
		ach(12894, {	-- Honor Level 10
			i(134026),	-- Honorable Pennant (TOY!)
		}),
		ach(12895, {	-- Honor Level 15
			i(140228),	-- Prestigious Bronze Courser (MOUNT!)
		}),
		ach(12900, {	-- Honor Level 20
			i(139776, {	-- Horde Fanatic (PET!)
				["races"] = HORDE_ONLY,
				["crs"] = {
					119272,	-- Sarah the Savage (Horde / Dalaran)
					145837,	-- Violet Shadowmend (Horde / Zuldazar)
					146626,	-- Legionaire Voladis (Horde / OG)
				},
			}),
			i(139775, {	-- Alliance Enthusiast (PET!)
				["races"] = ALLIANCE_ONLY,
				["crs"] = {
					119484,	-- Captain Roberts (Ally / Dalaran)
					146633,	-- Knight-Captain Jessica (Ally / SW)
					145838,	-- Marshal Frazer (Ally / Boralus)
				},
			}),
		}),
		ach(12901, {	-- Honor Level 25
			title(321),	-- The Honorable <Name>
		}),
		ach(12902, {	-- Honor Level 30
			i(134031),	-- Prestigious Pennant (TOY!)
		}),
		ach(12903, {	-- Honor Level 40
			i(140233),	-- Prestigious Ivory Courser (MOUNT!)
		}),
		ach(12904, {	-- Honor Level 50
			title(322),	-- <Name>, the Prestigious
		}),
		ach(12905, {	-- Honor Level 60
			i(134032),	-- Elite Pennant (TOY!)
		}),
		ach(12906, {	-- Honor Level 70
			i(140408),	-- Prestigious Azure Courser (MOUNT!)
		}),
		ach(12907, {	-- Honor Level 80
			title(323),	-- <Name>, the Unrelenting
		}),
		ach(12908, {	-- Honor Level 90
			i(134034),	-- Esteemed Pennant (TOY!)
		}),
		ach(12909, {	-- Honor Level 100
			title(354),	-- <Name> the Unstoppable Force
		}),
		ach(12910, {	-- Honor Level 125
			i(140232),	-- Prestigious Forest Courser (MOUNT!)
		}),
		ach(12911, {	-- Honor Level 150
			i(140230),	-- Prestigious Royal Courser (MOUNT!)
		}),
		ach(12912, {	-- Honor Level 175
			i(164310),	-- Glorious Pennant (TOY!)
		}),
		ach(12913, {	-- Honor Level 200
			title(325),	-- <Name>, Bound By Honor
		}),
		ach(12914,{		-- Honor Level 250
			i(140407),	-- Prestigious Midnight Courser (MOUNT!)
		}),
		ach(12915, {	-- Honor Level 300
			title(369),	-- <Name> the Tactician
		}),
		ach(12916, {	-- Honor Level 400
			i(163974, {	-- Bucketshell (PET!)
				["races"] = HORDE_ONLY,
				["crs"] = {
					119272,	-- Sarah the Savage (Horde / Dalaran)
					145837,	-- Violet Shadowmend (Horde / Zuldazar)
					146626,	-- Legionaire Voladis (Horde / OG)
				},
			}),
			i(163975, {	-- Sir Snips (PET!)
				["races"] = ALLIANCE_ONLY,
				["crs"] = {
					119484,	-- Captain Roberts (Ally / Dalaran)
					146633,	-- Knight-Captain Jessica (Ally / SW)
					145838,	-- Marshal Frazer (Ally / Boralus)
				},
			}),
		}),
		ach(12917, {	-- Honor Level 500
			i(164250),	-- Prestigious Bloodforged Courser (MOUNT!)
		}),
	})),
})));
