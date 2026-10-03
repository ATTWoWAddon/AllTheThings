---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(BROKEN_ISLES, bubbleDown({ ["timeline"] = { ADDED_7_3_5 } }, {
	m(TELOGRUS_RIFT, {
		n(EXPLORATION, {
			visit_exploration(9531,{coord={29.0,33.8,TELOGRUS_RIFT}}),	-- Fathom's Edge
			visit_exploration(15382,{coord={35.8,43.3,TELOGRUS_RIFT},timeline={ADDED_10_2_7}}),	-- Cosmic Horizon
			visit_exploration(15383,{coord={47.4,70.1,TELOGRUS_RIFT},timeline={ADDED_10_2_7}}),	-- Equinox Reach
		}),
	}),
})));
