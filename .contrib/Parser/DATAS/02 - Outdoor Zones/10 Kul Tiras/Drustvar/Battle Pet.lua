---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(DRUSTVAR, {
		petbattle(filter(BATTLE_PETS, {
			["sym"] = {{"select","speciesID",
				2383,	-- Giant Woodworm (PET!)
				2378,	-- River Otter (PET!)
				424,	-- Roach (PET!)
				2377,	-- Sandyback Crawler (PET!)
				2381,	-- Shack Crab (PET!)
				379,	-- Squirrel (PET!)
			}},
			["groups"] = {
				pet(2386, {	-- Coastal Scuttler (PET!)
					["coord"] = { 27.4, 72.2, DRUSTVAR },
				}),
			},
		})),
	}),
})));
