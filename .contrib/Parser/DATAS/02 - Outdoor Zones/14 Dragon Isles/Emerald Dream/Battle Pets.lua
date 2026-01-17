---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(EMERALD_DREAM, {
		petbattle(filter(BATTLE_PETS, {
			pet(4304, {	-- Dream Badger (PET!)
				["description"] = "Kill pewling to force this pet to spawn.",
				["coords"] = {
					{ 48.86, 57.94, EMERALD_DREAM },
					{ 51.40, 57.75, EMERALD_DREAM },
					{ 53.70, 59.48, EMERALD_DREAM },
					{ 49.98, 54.53, EMERALD_DREAM },
					{ 52.69, 77.74, EMERALD_DREAM },
				},
			}),
			pet(4275, {	-- Flooftalon (PET!)
				["description"] = "Kill the critter version to force this to spawn.",
				["coords"] = {
					{ 47.04, 73.84, EMERALD_DREAM },
					{ 48.80, 74.51, EMERALD_DREAM },
					{ 48.85, 76.55, EMERALD_DREAM },
					{ 53.0, 66.0, EMERALD_DREAM },
				},
			}),
			pet(4276, {	-- Fol'ya Pup (PET!)
				["coords"] = {
					{ 54.0, 64.0, EMERALD_DREAM },
					{ 47.0, 47.0, EMERALD_DREAM },
				},
			}),
			pet(4278, {	-- Leyhart (PET!)
				["coords"] = {
					{ 59.0, 66.0, EMERALD_DREAM },
				},
			}),
			pet(4280, {	-- Pewling (PET!)
				["coords"] = {
					{ 59.0, 67.0, EMERALD_DREAM },
				},
			}),
			pet(4302, {	-- Pale Slumbertooth (PET!)
				["description"] = "Requires the Friendsurge Defenders toy to see.",
				["provider"] = { "i", 209944 },	-- Friendsurge Defenders (TOY!)
				["coords"] = {
					{ 35.7, 62.3, EMERALD_DREAM },
					{ 53.6, 65.3, EMERALD_DREAM },
					{ 34.31, 67.65, EMERALD_DREAM },
					{ 34.60, 62.26, EMERALD_DREAM },
					{ 35.75, 62.29, EMERALD_DREAM },
					{ 53.61, 65.31, EMERALD_DREAM },
					{ 58.47, 35.07, EMERALD_DREAM },
					{ 48.36, 69.42, EMERALD_DREAM },
				},
			}),
			pet(4277, {	-- Sapnibbler (PET!)
				["coords"] = {
					{ 56.0, 70.0, EMERALD_DREAM },
				},
			}),
			pet(4279, {	-- Slumbertooth (PET!)
				["description"] = "Can be caught outside of the Superbloom by killing the critter version.",
				["coords"] = {
					{ 44.41, 72.20, EMERALD_DREAM },
					{ 50.13, 78.04, EMERALD_DREAM },
				},
			}),
			pet(4303, {	-- Snaggletoof (PET!)
				["description"] = "Kill the critter version to force this to spawn.",
				["coords"] = {
					{ 25.53, 22.90, EMERALD_DREAM },
					{ 57.71, 26.31, EMERALD_DREAM },
					{ 49.74, 47.80, EMERALD_DREAM },
					{ 37.46, 57.65, EMERALD_DREAM },
					{ 33.58, 68.88, EMERALD_DREAM },
				},
			}),
		})),
	}),
})));
