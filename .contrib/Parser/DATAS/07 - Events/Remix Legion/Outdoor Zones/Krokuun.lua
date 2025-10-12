-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	m(BROKEN_ISLES, {
		m(ARGUS, {
			m(KROKUUN, {
				["icon"] = 1719207,
				["groups"] = {
					n(ACHIEVEMENTS, sharedData({ ["timeline"] = { ADDED_12_0_0 } }, {
						ach(42591),	-- Elusive Foes: Krokuun
						ach(42620),	-- Explore Krokuun
						ach(42588),	-- Hidden Treasures: Krokuun
					})),
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
	}),
})));
