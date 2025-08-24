---------------------------------------------------
--          Z O N E S       M O D U L E          --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(TIRAGARDE_SOUND, {
		petbattle(filter(BATTLE_PETS, {
			["sym"] = {{"select","speciesID",
				487,	-- Alpine Chipmunk (PET!)
				2400,	-- Coastal Bounder (PET!)
				478,	-- Forest Moth (PET!)
				2399,	-- Hermit Crab (PET!)
				2377,	-- Sandyback Crawler (PET!)
			}},
			["groups"] = {
				pet(2383, {	-- Giant Woodworm (PET!)
					["description"] = "Best found around these coords. Spawns all around the N/NE area by Freehold.",
					["coords"] = {
						{ 55.8, 16.6, TIRAGARDE_SOUND },
						{ 55.6, 35.2, TIRAGARDE_SOUND },
						{ 82.2, 72.0, TIRAGARDE_SOUND },
						{ 85.6, 81.8, TIRAGARDE_SOUND },
					},
				}),
				pet(2382, {	-- Inland Croaker (PET!)
					["description"] = "Found along the inland waterways in Tiragarde by Hatherford and Norwington Estate.",
				}),
				pet(2380, {	-- Parasitic Boarfly (PET!)
					["description"] = "Found in a small area around coord.",
					["coord"] = { 56.8, 17.0, TIRAGARDE_SOUND },
				}),
				pet(2381, {	-- Shack Crab (PET!)
					["description"] = "Found along the coastlines of every Kul Tiras zone.",
				}),
			},
		})),
	}),
})));
