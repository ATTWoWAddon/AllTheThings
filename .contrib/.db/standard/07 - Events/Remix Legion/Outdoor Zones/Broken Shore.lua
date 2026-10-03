-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	m(BROKEN_ISLES, {
		m(BROKEN_SHORE, {
			["icon"] = 1408999,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42647),	-- Breaching the Tomb
					ach(60815),	-- Explore Broken Shore
					ach(42540, {	-- Looking for Group: The Broken Shore
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60849,	-- Cathedral of Eternal Night
							60870,	-- Tomb of Sargeras
						}},
					}),
					ach(42655, {	-- The Armies of Legionfall
						i(252753, {	-- Demonic Storage Chest (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					}),
					ach(42666, {	-- The Broken Shore
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							42647,	-- Breaching the Tomb
							60815,	-- Explore Broken Shore
							42540,	-- Looking for Group: The Broken Shore
							42655,	-- The Armies of Legionfall
						}},
						["groups"] = { iensemble(253231) },	-- Fallen King's Corrupted Blades
					}),
				}),
			},
		}),
	}),
})));
