---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(AZJ_KAHET, {
		petbattle(filter(BATTLE_PETS, {
			["sym"] = {{"select","speciesID",
				4456,	-- Arachnoid Hatchling (PET!)
				4515,	-- Azure Flickerfly (PET!)
				4499,	-- Common Ploughworm (PET!)
				4498,	-- Ebon Ploughworm (PET!)
				4510,	-- Winged Arachnoid (PET!)
			}},
			["groups"] = {
				pet(4471, {	-- Aubergine Scootlefish (PET!)
					["coords"] = {
						{ 59.7, 70.2, AZJ_KAHET },
						{ 37.4, 54.2, AZJ_KAHET },
						{ 43.5, 64.2, AZJ_KAHET },
					},
				}),
				pet(4480, {	-- Shadowy Oozeling (PET!)
					["description"] = "Interact with Black Blood Extractor objects in area until you reach at least 10x Unseeming Shift debuff to see this pet.",
					["coord"] = { 63.6, 85.1, AZJ_KAHET },
				}),
				pet(3550, {	-- Undermoth (PET!)
					["description"] = "Backline pet only.",
					["maps"] = { AZJ_KAHET },
				}),
				pet(4477, {	-- Verdant Scootlefish (PET!)
					["coords"] = {
						{ 38.5, 56.1, AZJ_KAHET },
						{ 40.0, 61.3, AZJ_KAHET },
						{ 44.3, 65.0, AZJ_KAHET },
					},
				}),
				pet(4483, {	-- Vile Bloodtick (PET!)
					["description"] = "It can be found both as a frontline and a backline pet in battles throughout Azj-Kahet.",
					["coord"] = { 57.3, 63.7, AZJ_KAHET },
				}),
				pet(4481, {	-- Voidling Ooze (PET!)
					["description"] = "Interact with Black Blood Extractor objects in area until you reach at least 10x Unseeming Shift debuff to see this pet. Can also be found as a backline pet around the zone.",
					["coord"] = { 61.0, 74.8, AZJ_KAHET },
				}),
			},
		})),
	}),
}));
