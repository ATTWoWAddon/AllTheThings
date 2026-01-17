---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(THE_RINGING_DEEPS, {
		petbattle(filter(BATTLE_PETS, {
			["sym"] = {{"select","speciesID",
				4456,	-- Arachnoid Hatchling (PET!)
				4471,	-- Aubergine Scootlefish (PET!)
				4515,	-- Azure Flickerfly (PET!)
				4457,	-- Chitin Burrower (PET!)
				4499,	-- Common Ploughworm (PET!)
				4533,	-- Meek Bloodlasher (PET!)
				4477,	-- Verdant Scootlefish (PET!)
				4516,	-- Vibrant Glowfly (PET!)
				4510,	-- Winged Arachnoid (PET!)
			}},
			["groups"] = {
				pet(4498, {	-- Ebon Ploughworm (PET!)
					["coord"] = { 43.4, 27.6, THE_RINGING_DEEPS },
				}),
				pet(3547, {	-- Jade Cragviper (PET!)
					["description"] = "Rarespawn in Ringing Deeps found only in the backline.",
					-- ["coord"] = { X, Y, THE_RINGING_DEEPS },
				}),
				pet(4571, { -- Pinkskin Burrower (PET!)
					-- ["coord"] = { X, Y, THE_RINGING_DEEPS },
				}),
				pet(4573, {	-- Skittish Sniffler (PET!)
					-- ["coord"] = { X, Y, THE_RINGING_DEEPS },
				}),
				pet(4574, {	-- Snuffling (PET!)
					["description"] = "Found around the area of Taelloch/Obsidian Hollow.",
					["coord"] = { 68.0, 47.0, THE_RINGING_DEEPS },
				}),
			},
		})),
	}),
}));
