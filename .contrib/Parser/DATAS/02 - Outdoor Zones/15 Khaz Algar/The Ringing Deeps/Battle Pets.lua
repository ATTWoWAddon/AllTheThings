---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(THE_RINGING_DEEPS, {
		petbattle(filter(BATTLE_PETS, {
			["groups"] = {
				pet(4498, {	-- Ebon Ploughworm (PET!)
					["coord"] = { 43.4, 27.6, THE_RINGING_DEEPS },
				}),
				pet(3547, {	-- Jade Cragviper (PET!)
					["description"] = "Backline pet only.",
				}),
				pet(4571, { -- Pinkskin Burrower (PET!)
					["coord"] = { 47.8, 31.6, THE_RINGING_DEEPS },
				}),
				pet(4573, {	-- Skittish Sniffler (PET!)
					["coord"] = { 56.8, 43.8, THE_RINGING_DEEPS },
				}),
				pet(4574, {	-- Snuffling (PET!)
					["description"] = "Found around the area of Taelloch/Obsidian Hollow.",
					["coords"] = {
						{ 64.7, 48.5, THE_RINGING_DEEPS },
						{ 68.0, 47.0, THE_RINGING_DEEPS },
					},
				}),
			},
		})),
	}),
}));
