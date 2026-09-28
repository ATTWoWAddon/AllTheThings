---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_1_0 } }, {
	m(THE_MAW, {
		petbattle(filter(BATTLE_PETS, {
			["sym"] = {{"select","speciesID",
				3126,	-- Eye of Affliction (PET!)
			}},
			["groups"] = {
				pet(3115, {		-- Clinging Remains (PET!)
					["coords"] = {
						{ 33.0, 46.6, THE_MAW },
						{ 36.6, 59.6, THE_MAW },
						{ 39.0, 65.6, THE_MAW },
					},
				}),
				pet(3123, {		-- Deathroach (PET!)
					["coords"] = {
						{ 48.0, 73.0, THE_MAW },
						{ 47.8, 81.2, THE_MAW },
					},
				}),
				pet(3120, {		-- Grip of Terror (PET!)
					["coords"] = {
						{ 62.0, 63.4, THE_MAW },
						{ 64.2, 58.8, THE_MAW },
					},
				}),
				pet(3119, {		-- Lost Limb (PET!)
					["coords"] = {
						{ 39.2, 28.8, THE_MAW },
						{ 28.8, 33.6, THE_MAW },
					},
				}),
				pet(3118, {		-- Scurrying Mawrat (PET!)
					["coords"] = {
						{ 61.4, 75.6, THE_MAW },
						{ 51.8, 85.0, THE_MAW },
					},
				}),
				pet(3124, {		-- Vile Deathroach (PET!)
					["coords"] = {
						{ 45.6, 65.0, THE_MAW },
						{ 46.8, 57.6, THE_MAW },
					},
				}),
			},
		})),
	}),
})));
