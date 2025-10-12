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
					ach(42673, {	-- Defending the Broken Isles I
						--TODO: VERIFY IF THIS IS CORRECT ACHIEVEMENT
						--i(XXXXXX, {["timeline"] = { ADDED_12_0_0 }}),	-- Hanging Felsteel Chain (DECOR!)
						--i(XXXXXX, {["timeline"] = { ADDED_12_0_0 }}),	-- Vertical Felsteel Chain (DECOR!)
					}),
					ach(42672),	-- Defending the Broken Isles II
					ach(42675),	-- Defending the Broken Isles III
					ach(60815),	-- Explore Broken Shore
					ach(42540, {	-- Looking for Group: The Broken Shore
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60849,	-- Cathedral of Eternal Night
							60870,	-- Tomb of Sargeras
						}},
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
				n(FACTIONS, {
					faction(FACTION_ARMIES_OF_LEGIONFALL, {
						n(ACHIEVEMENTS, {
							ach(42655, {	-- The Armies of Legionfall
								--i(XXXXXX, {["timeline"] = { ADDED_12_0_0 }}),	-- Demonic Storage Chest (DECOR!)
							}),
						}),
					}),
				}),
				n(ZONE_REWARDS, {
					filter(CLOTH, {
					}),
					filter(LEATHER, {
					}),
					filter(MAIL, {
					}),
					filter(PLATE, {
					}),
				}),
			},
		}),
	}),
})));
