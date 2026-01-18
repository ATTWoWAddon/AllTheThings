---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(ISLE_OF_DORN, {
		petbattle(filter(BATTLE_PETS, {
			["groups"] = {
				pet(4540, {	-- Alabaster Stonecharger (PET!)
					["coords"] = {
						{ 47.0, 29.6, ISLE_OF_DORN },
						{ 57.9, 20.1, ISLE_OF_DORN },
					},
				}),
				pet(4541, {	-- Bedrock Stonecharger (PET!)
					["coord"] = { 27.3, 67.6, DORNOGAL },
				}),
				pet(4577, {	-- Cinderhoney Emberstinger (PET!)
					["coords"] = {
						{ 74.0, 40.1, ISLE_OF_DORN },
						{ 74.1, 44.8, ISLE_OF_DORN },
					},
				}),
				pet(3361, {	-- Diamond Crab (PET!)
					["description"] = "Backline pet only.",
				}),
				pet(4538, {	-- Cobalt Ramolith (PET!)
					["coord"] = { 25.5, 62.0, ISLE_OF_DORN },
				}),
				pet(4514, {	-- Fallowspark Glowfly (PET!)
					["coords"] = {
						{ 46.3, 63.4, HALLOWFALL },
						{ 51.6, 69.0, ISLE_OF_DORN },
						{ 49.9, 32.5, THE_RINGING_DEEPS },
					},
				}),
				pet(4525, {	-- Fragrant Stonelamb (PET!)
					["coord"] = { 44.3, 76.0, ISLE_OF_DORN },
				}),
				pet(4535, {	-- Ghostcap Menace (PET!)
					["coords"] = {
						{ 66.0, 48.8, ISLE_OF_DORN },
						{ 58.5, 31.7, HALLOWFALL },
					},
				}),
				pet(4539, {	-- Granite Ramolith (PET!)
					["coord"] = { 24.2, 51.6, ISLE_OF_DORN },
				}),
				pet(4485, {	-- Mossy Snail (PET!)
					["coord"] = { 63.6, 57.4, ISLE_OF_DORN },
				}),
				pet(4526, {	-- Sandstone Mosswool (PET!)
					["coord"] = { 41.4, 71.7, ISLE_OF_DORN },
				}),
				pet(4529, {	-- Shale Mosswool (PET!)
					["coord"] = { 55.5, 60.3, ISLE_OF_DORN },
				}),
				pet(4522, {	-- Troglofrog (PET!)
					["coords"] = {
						{ 38.3, 54.9, HALLOWFALL },
						{ 57.7, 69.2, ISLE_OF_DORN },
						{ 50.0, 59.4, AZJ_KAHET },
					},
				}),
			},
		})),
	}),
}));
