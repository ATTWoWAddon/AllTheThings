-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, applyclassicphase(TBC_PHASE_ONE, expansion(EXPANSION.TBC, {
	n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
		ach(11747, {["timeline"] = {ADDED_7_2_0}}),	-- Merely a Set (Serpentshrine Cavern and The Eye)
		ach(1287, {		-- Outland Dungeon Hero
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				672,	-- Heroic: Auchenai Crypts
				667,	-- Heroic: Hellfire Ramparts
				682,	-- Heroic: Magister's Terrace
				671,	-- Heroic: Mana-Tombs
				676,	-- Heroic: Opening of the Dark Portal
				674,	-- Heroic: Sethekk Halls
				675,	-- Heroic: Shadow Labyrinth
				681,	-- Heroic: The Arcatraz
				668,	-- Heroic: The Blood Furnace
				680,	-- Heroic: The Botanica
				673,	-- Heroic: The Escape From Durnholde
				679,	-- Heroic: The Mechanar
				678,	-- Heroic: The Shattered Halls
				669,	-- Heroic: The Slave Pens
				677,	-- Heroic: The Steamvault
				670,	-- Heroic: Underbog
			}},
			-- CRIEVE NOTE: This achievement can not be earned ahead of time.
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(1284, {		-- Outland Dungeonmaster
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				666,	-- Auchenai Crypts
				647,	-- Hellfire Ramparts
				661,	-- Magister's Terrace
				651,	-- Mana-Tombs
				655,	-- Opening of the Dark Portal
				653,	-- Sethekk Halls
				654,	-- Shadow Labyrinth
				660,	-- The Arcatraz
				648,	-- The Blood Furnace
				659,	-- The Botanica
				652,	-- The Escape From Durnholde
				658,	-- The Mechanar
				657,	-- The Shattered Halls
				649,	-- The Slave Pens
				656,	-- The Steamvault
				650,	-- Underbog
			}},
			-- CRIEVE NOTE: This achievement can not be earned ahead of time.
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(1286, {		-- Outland Raider
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				690,	-- Karazhan
				692,	-- Gruul's Lair
				693,	-- Magtheridon's Lair
				694,	-- Serpentshrine Cavern
				695,	-- The Battle for Mount Hyjal
				696,	-- Tempest Keep
				697,	-- The Black Temple
				698,	-- Sunwell Plateau
			}},
			-- #if NOT ANYCLASSIC
			-- CRIEVE NOTE: This achievement can be earned ahead of time by completing the criteria for the other achievements.
			["timeline"] = { ADDED_3_0_2 },
			-- #endif
		}),
		ach(11746, {["timeline"] = {ADDED_7_2_0}}),	-- Outlandish Style (Gruuls' Lair, Karazhan, and Magtheridon's Lair)
		ach(8293, {	-- Raiding with Leashes II: Attunement Edition
			["timeline"] = { ADDED_5_3_0 },
			["groups"] = {
				i(97558),	-- Tito (PET!)
			},
		}),
		ach(9824, {	-- Raiding with Leashes III: Drinkin' From the Sunwell
			["timeline"] = { ADDED_6_1_0 },
			["groups"] = {
				i(122116),	-- K'ute (PET!)
			},
		}),
	})),
})));
