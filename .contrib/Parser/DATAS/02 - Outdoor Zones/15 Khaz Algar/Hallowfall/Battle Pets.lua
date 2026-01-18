---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(HALLOWFALL, {
		petbattle(filter(BATTLE_PETS, {
			["groups"] = {
				pet(3525, {	-- Abyssal Lurker (PET!)
					["description"] = "Backline pet only.",
				}),
				pet(4456, {	-- Arachnoid Hatchling (PET!)
					["description"] = "Found commonly in groups around the Ringing Deeps and as backline in all 3 main underground zones.",
					["coords"] = {
						-- { X, Y, HALLOWFALL },
						{ 62.0, 42.6, THE_RINGING_DEEPS },
					},
				}),
				pet(4460, {	-- Arathi Chicken (PET!)
					["description"] = "Found around farms in Hallowfall, frontline & backline.",
					["coord"] = { 48.7, 35.6, HALLOWFALL },
				}),
				pet(4515, {	-- Azure Flickerfly (PET!)
					["description"] = "Found most commonly between the Coreway and Hallowfall gates, or around Mereldar and The Weaver's Lair.",
					["coords"] = {
						{ 45.9, 64.2, HALLOWFALL },
						{ 43.2, 37.9, THE_RINGING_DEEPS },
					},
				}),
				pet(4457, {	-- Chitin Burrower (PET!)
					["description"] = "Found commonly in small groups around the 3 main underground zones.",
					["coords"] = {
						{ 55.9, 43.0, HALLOWFALL },
						{ 59.4, 41.9, THE_RINGING_DEEPS },
					},
				}),
				pet(4499, {	-- Common Ploughworm (PET!)
					["coords"] = {
						{ 43.8, 49.4, HALLOWFALL },
						{ 40.6, 27.9, THE_RINGING_DEEPS },
					},
				}),
				pet(4461, {	-- Greenlands Chicken (PET!)
					["description"] = "Likely a Rare spawn of Arathi Chicken, can be found frontline & backline. Coords are some confirmed repeat spawn spots.",
					["coords"] = {
						{ 48.9, 40.0, HALLOWFALL },
						{ 49.0, 63.0, HALLOWFALL },
						{ 61.1, 29.8, HALLOWFALL },
					},
				}),
				pet(4533, {	-- Meek Bloodlasher (PET!)
					["coords"] = {
						{ 57.2, 38.2, HALLOWFALL },
						{ 42.2, 36.9, THE_RINGING_DEEPS },
						{ 52.6, 68.3, ISLE_OF_DORN },
					},
				}),
				pet(4521, {	-- Subterranean Dartswog (PET!)
					["coords"] = {
						-- { X, Y, HALLOWFALL },
						{ 72.7, 44.2, ISLE_OF_DORN },
					},
				}),
				pet(4544, {	-- Umbral Amalgam (PET!)
					["description"] = "Only spawns during Beledar's void state. Found around cliffs overlooking water.",
					["coords"] = {
						{ 37.6, 46.0, HALLOWFALL },
						{ 46.2, 31.8, HALLOWFALL },
						{ 48.4, 59.0, HALLOWFALL },
						{ 54.0, 51.8, HALLOWFALL },
						{ 58.6, 34.6, HALLOWFALL },
						{ 59.0, 49.2, HALLOWFALL },
						{ 61.4, 46.0, HALLOWFALL },
						{ 61.8, 44.2, HALLOWFALL },
						{ 63.2, 49.0, HALLOWFALL },
						{ 72.0, 46.0, HALLOWFALL },
					},
				}),
				pet(4516, {	-- Vibrant Glowfly (PET!)
					["coords"] = {
						-- { X, Y, HALLOWFALL },
						{ 57.2, 47.9, THE_RINGING_DEEPS },
						{ 57.8, 71.5, AZJ_KAHET },
					},
				}),
				pet(4510, {	-- Winged Arachnoid (PET!)
					["coord"] = { 65.9, 39.3, HALLOWFALL },
				}),
			},
		})),
	}),
}));
