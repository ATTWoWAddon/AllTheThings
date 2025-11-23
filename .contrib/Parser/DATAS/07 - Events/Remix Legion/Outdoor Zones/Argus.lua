-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	m(BROKEN_ISLES, {
		m(ARGUS, {
			["icon"] = 1714097,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42549, {	-- Argus
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							42627,	-- Argussian Reach
							42618,	-- Looking for Group: Argus
							42567,	-- Tour Argus
							42612,	-- You Are Now Prepared!
						}},
						["groups"] = {
							i(253219),	-- Bulwark of Mannoroth (Shield)
							i(253220),	-- Bulwark of Mannoroth (Cloak)
						},
					}),
					ach(42627, {	-- Argussian Reach
						i(250690, {	-- Eredar Lord’s Fel Torch (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					}),
					ach(42693),	-- Breaking the Legion I
					ach(42694),	-- Breaking the Legion II
					ach(42695),	-- Breaking the Legion III
					ach(60818),	-- Elusive Foes: Argus
					ach(60817),	-- Explore Argus
					ach(42696),	-- Greater Invasion Points I
					ach(42697),	-- Greater Invasion Points II
					ach(42698),	-- Greater Invasion Points III
					ach(60816),	-- Hidden Treasures: Argus
					ach(42618, {	-- Looking for Group: Argus
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60875,	-- Antorus, the Burning Throne
							60852,	-- Heroic: Seat of the Triumvirate
						}},
					}),
					ach(42567, {	-- Tour Argus
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60818,	-- Elusive Foes: Argus
							60817,	-- Explore Argus
							60816,	-- Hidden Treasures: Argus
						}},
					}),
					ach(42612),	-- You Are Now Prepared!
				}),
			},
		}),
	}),
})));
