---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(KROKUUN, {
				n(VENDORS, {
					n(125346, {	-- Alchemist Funen
						["coord"] = { 56.2, 66.8, KROKUUN },
						["groups"] = {
							i(152616),	-- Recipe: Astral Healing Potion [Rank 1] (RECIPE!)
							i(151710),	-- Recipe: Transmute Primal Sargerite [Rank 1] (RECIPE!)
						},
					}),
				}),
			}),
		})),
	}),
});
