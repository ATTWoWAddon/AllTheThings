---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(SURAMAR, {
			petbattle(filter(BATTLE_PETS, {
				["sym"] = {{"select","speciesID",
					425,	-- Ash Viper (PET!)
					1914,	-- Coastal Sandpiper (PET!)
					751,	-- Dancing Watter Skimmer (PET!)
					1325,	-- Flamering moth (PET!)
					1591,	-- Violet Firefly (PET!)
				}},
				["groups"] = {
					pet(706),	-- Bandicoon (PET!)
					pet(1809, {	-- Crystalline Broodling (PET!)
						["description"] = "Found around Falanaar.",
						["coord"] = { 21.0, 41.0, SURAMAR },
					}),
					pet(1810, {	-- Thornclaw Broodling (PET!)
						["description"] = "Found in Felsoul Hold."
					}),
					pet(1807, {	-- Vicious Broodling (PET!)
						["description"] = "Found in Felsoul Hold. May be elusive, shares spawn with Thornclaw Broodling.",
					}),
				},
			})),
		}),
	}),
});
