---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(ANTORAN_WASTES, {
				petbattle(filter(BATTLE_PETS, {
					pet(2122, {	-- Antoran Bile Larva (PET!)
						["coord"] = { 70.2, 47.4, ANTORAN_WASTES },
					}),
					pet(2126, {	-- Antoran Bilescourge (PET!)
						["coord"] = { 74.6, 47.8, ANTORAN_WASTES },
					}),
				})),
			}),
		})),
	}),	
});
