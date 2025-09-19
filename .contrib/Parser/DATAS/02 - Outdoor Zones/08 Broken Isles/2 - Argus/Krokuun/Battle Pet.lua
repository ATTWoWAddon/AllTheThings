---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(KROKUUN, {
				petbattle(filter(BATTLE_PETS, {
					pet(2123),	-- Bile Larva (PET!)
					pet(2124, {	-- Bilescourge (PET!)
						["coord"] = { 47.0, 46.8, KROKUUN },
					}),
					pet(2127, {	-- Flickering Argunite (PET!)
						["coord"] = { 35.4, 64.5, KROKUUN },
					}),
				})),
			}),
		})),
	}),
});
