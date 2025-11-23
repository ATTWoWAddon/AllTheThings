-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	m(BROKEN_ISLES, {
		m(ARGUS, {
			m(ANTORAN_WASTES, {
				["icon"] = 1604396,
				["groups"] = {
					n(ACHIEVEMENTS, sharedData({ ["timeline"] = { ADDED_12_0_0 } }, {
						ach(42575),	-- Elusive Foes: Antoran Wastes
						ach(42560),	-- Explore Antoran Wastes
						ach(42631),	-- Hidden Treasures: Antoran Wastes
					})),
				},
			}),
		}),
	}),
})));
