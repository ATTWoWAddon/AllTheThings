-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	m(BROKEN_ISLES, {
		m(ARGUS, {
			m(EREDATH, {
				["icon"] = 1714098,
				["groups"] = {
					n(ACHIEVEMENTS, sharedData({ ["timeline"] = { ADDED_12_0_0 } }, {
						ach(42646),	-- Elusive Foes: Eredath
						ach(42535),	-- Explore Eredath
						ach(42626),	-- Hidden Treasures: Eredath
					})),
					n(TREASURES, {
						o(276228, {	-- Desperate Eredar's Cache
							["sourceQuests"] = { 48107 },	-- The Sigil of Awakening
							["coord"] = { 57.1, 76.8, EREDATH },
							["questID"] = 48749,
							["groups"] = {
								i(253520),	-- Enclave Aspirant's Hatchet
							},
						}),
					})
				},
			}),
		}),
	}),
})));
