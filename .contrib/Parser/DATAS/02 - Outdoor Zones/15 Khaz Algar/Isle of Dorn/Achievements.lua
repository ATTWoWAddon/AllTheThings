---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(ISLE_OF_DORN, {
		n(ACHIEVEMENTS, {
			ach(40435),		-- Adventurer of the Isle of Dorn (automated)
			ach(40831),		-- Explore the Isle of Dorn (automated)
			skyriding(ach(40166, {	-- Isle of Dorn Glyph Hunter
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					40669,	-- Skyriding Glyphs: Cinderbrew Meadery
					40665,	-- Skyriding Glyphs: Dhar Durgaz
					40663,	-- Skyriding Glyphs: Dhar Oztan
					40671,	-- Skyriding Glyphs: Ironwold
					40666,	-- Skyriding Glyphs: Sunken Shield
					40664,	-- Skyriding Glyphs: Storm's Watch
					40667,	-- Skyriding Glyphs: Thul Medran
					40668,	-- Skyriding Glyphs: Thunderhead Peak
					40670,	-- Skyriding Glyphs: Mourning Rise
					40152,	-- Skyriding Glyphs: The Three Shields
				}},
			})),
			ach(41186, {	-- Slate of the Union
				["timeline"] = { ADDED_11_0_7 },
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					40860,	-- A Star of Dorn
					40435,	-- Adventurer of the Isle of Dorn
					40606,	-- Flat Earthen
					40504,	-- Rocked to Sleep
					40434,	-- Treasures of the Isle of Dorn
					40859,	-- We're Here All Night
				}},
				["groups"] = {
					i(246867, {	-- Tome of Earthen Directives (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
					}),
				},
			}),
			skyriding(ach(40665, {	-- Skyriding Glyphs: Dhar Durgaz
				["coord"] = { 44.5, 79.7, ISLE_OF_DORN },
			})),
			skyriding(ach(40669, {	-- Skyriding Glyphs: Cinderbrew Meadery
				["coord"] = { 78.2, 42.6, ISLE_OF_DORN },
			})),
			skyriding(ach(40663, {	-- Skyriding Glyphs: Dhar Oztan
				["coord"] = { 23.1, 58.5, ISLE_OF_DORN },
			})),
			skyriding(ach(40671, {	-- Skyriding Glyphs: Ironwold
				["coord"] = { 71.9, 47.2, ISLE_OF_DORN },
			})),
			skyriding(ach(40666, {	-- Skyriding Glyphs: Sunken Shield
				["coord"] = { 68.3, 71.8, ISLE_OF_DORN },
			})),
			skyriding(ach(40664, {	-- Skyriding Glyphs: Storm's Watch
				["coord"] = { 37.9, 40.9, ISLE_OF_DORN },
			})),
			skyriding(ach(40668, {	-- Skyriding Glyphs: Thunderhead Peak
				["coord"] = { 56.2, 17.8, ISLE_OF_DORN },
			})),
			skyriding(ach(40667, {	-- Skyriding Glyphs: Thul Medran
				["coord"] = { 47.9, 26.6, ISLE_OF_DORN },
			})),
			skyriding(ach(40670, {	-- Skyriding Glyphs: Mourning Rise
				["coord"] = { 62.1, 44.9, ISLE_OF_DORN },
			})),
			skyriding(ach(40152, {	-- Skyriding Glyphs: The Three Shields
				["coord"] = { 75.7, 22.2, ISLE_OF_DORN },
			})),
			ach(20595, {	-- Sojourner of Isle of Dorn (automated)
				i(252757, {	-- Boulder Springs Recliner (DECOR!)
					["timeline"] = { ADDED_11_2_7 },
				}),
			}),
			ach(20118),		-- The Isle of Dorn (automated)
			pvp(ach(40083)),	-- Tour of Duty: Isle of Dorn
			ach(40434),		-- Treasures of the Isle of Dorn (automated)
		}),
	}),
}));
