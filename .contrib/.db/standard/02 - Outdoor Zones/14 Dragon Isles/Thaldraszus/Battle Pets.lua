---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THALDRASZUS, {
		petbattle(filter(BATTLE_PETS, {
			["sym"] = {{"select","speciesID",
				3313,	-- Grassland Stomper (PET!)
				3351,	-- Grizzlefur Cub (PET!)
				3296,	-- Palamanther (PET!)
			}},
			["groups"] = {
				pet(3403, {	-- Blue Dasher (PET!)
					["coord"] = { 37.8, 79.8, THALDRASZUS },
				}),
				pet(3358, {	-- Crimsonspine (PET!)
					["coords"] = {
						{ 50.8, 64.6, THALDRASZUS },
						{ 60.6, 38.0, THE_AZURE_SPAN },
					},
				}),
				pet(3404, {	-- Polliswog (PET!)
					["coords"] = {
						{ 54.8, 39.2, THALDRASZUS, },
						{ 38.2, 69.0, THALDRASZUS, },
						{ 43.6, 83.6, THALDRASZUS, },
					},
				}),
				pet(3352, {	-- Razortooth Bear Cub (PET!)
					["description"] = "Rare spawn in place of 'Grizzlefur Cub'.",
					["coords"] = {
						{ 48.4, 56.0, THALDRASZUS },
						{ 68.6, 52.0, THALDRASZUS },
						{ 37.0, 33.0, THE_AZURE_SPAN }, 
					},
				}),
				pet(3336, {	-- Vorquin Runt (PET!)
					["coord"] = { 48.2, 64.8, THALDRASZUS },
				}),
			},
		})),
	}),
})));
