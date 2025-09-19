---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(EREDATH, {
				petbattle(filter(BATTLE_PETS, {
					pet(2131, {	-- Arcane Gorger (PET!)
						["coord"] = { 62.6, 51.6, EREDATH },
					}),
					pet(2132, {	-- Felcrazed Wyrm (PET!)
						["coord"] = { 56.0, 34.6, EREDATH },
					}),
					pet(2133, {	-- Pygmy Marsuul (PET!)
						["coord"] = { 56.8, 64.8, EREDATH },
					}),
					pet(2134, {	-- Skyfin Juvenile (PET!)
						["coord"] = { 43.6, 66.2, EREDATH },
					}),
					pet(2130, {	-- Void Shardling (PET!)
						["coord"] = { 44.0, 47.0, EREDATH },
					}),
					pet(2129, {	-- Voidstalker Runt (PET!)
						["coord"] = { 43.0, 65.0, EREDATH },
					}),
					pet(2128, {	-- Warpstalker Runt (PET!)
						["coord"] = { 46.6, 68.6, EREDATH },
					}),
				})),
			}),
		})),
	}),
});
