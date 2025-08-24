---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(NAZMIR, {
		petbattle(filter(BATTLE_PETS, {
			pet(2388, {	-- Bloodfeaver Tarantula (PET!)
				["description"] = "Found all around the Terrace of Sorrows.",
				["coords"] = {
					{ 35.0, 54.6, NAZMIR },
					{ 36.2, 65.2, NAZMIR },
					{ 36.4, 46.8, NAZMIR },
					{ 39.2, 64.2, NAZMIR },
				},
			}),
			pet(2398, {	-- Boghopper (PET!)
				["description"] = "Found around Krag'wa's Burrow and NE of Shoaljai Tar Pits.",
				["coords"] = {
					{ 76.8, 46.8, NAZMIR },
					{ 28.8, 39.4, NAZMIR },
				},
			}),
			pet(2400, {	-- Coastal Bounder (PET!)
				["coord"] = { 32.8, 35.6, NAZMIR },
			}),
			pet(2389, {	-- Elusive Skimmer (PET!)
				["description"] = "Found along the southern waterways in Nazmir.",
				["coords"] = {
					{ 31.6, 79.8, NAZMIR },
					{ 40.6, 84.4, NAZMIR },
					{ 44.4, 80.8, NAZMIR },
					{ 63.0, 64.6, NAZMIR },
				},
			}),
			pet(2395, {	-- Glutted Bleeder (PET!)
				["coords"] = {
					{ 32.8, 46.2, NAZMIR },
					{ 30.6, 48.6, NAZMIR },
					{ 53.8, 70.2, NAZMIR },
					{ 51.2, 66.6, NAZMIR },
					{ 48.8, 57.6, NAZMIR },
					{ 53.8, 59.4, NAZMIR },
				},
			}),
			pet(2394, {	-- Returned Hatchling (PET!)
				["description"] = "Found in a small area around coord.",
				["coord"] = { 31.8, 58.8, NAZMIR},
			}),
			pet(2397, {	-- Spectral Raven (PET!)
				["description"] = "Found on the outskirts of The Necropolis.",
				["coords"] = {
					{ 39.8, 34.6, NAZMIR },
					{ 36.0, 27.0, NAZMIR },
					{ 37.8, 22.0, NAZMIR },
					{ 42.6, 25.2, NAZMIR },
				},
			}),
			pet(2393, {	-- Sticky Oozeling (PET!)
				["description"] = "Found in the Shoaljai Tar Pits.",
				["coord"] = { 24.0, 51.8, NAZMIR },
			}),
			pet(2392, {	-- Young Sand Sifter (PET!)
				["description"] = "Found commonly around the outer shorelines of Nazmir.",
			}),
		})),
	}),
})));
