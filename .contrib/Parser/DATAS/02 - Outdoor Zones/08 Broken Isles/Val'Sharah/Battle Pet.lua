---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(BROKEN_ISLES, bubbleDown({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	m(VALSHARAH, {
		petbattle(filter(BATTLE_PETS, {
			["sym"] = {{"select","speciesID",
				398,	-- Black Rat (PET!)
				393,	-- Cockroach (PET!)
				396,	-- Dusk Spiderling (PET!)
				479,	-- Elfin Rabbit (PET!)
				397,	-- Skunk (PET!)
				1736,	-- Slithering Brownscale (PET!)
				379,	-- Squirrel (PET!)
			}},
			["groups"] = {
				pet(1738, {	-- Auburn Ringtail (PET!)
					["description"] = "Best found around NW Moonclaw Vale.",
				}),
				pet(380, {	-- Bucktooth Flapper (PET!)
					["coord"] = { 53.2, 46.6, VALSHARAH },
				}),
				pet(1913, {	-- Gleamhoof Fawn (PET!)
					["description"] = "Found around the grassy area in southern Val'Sharah.",
				}),
				pet(1734, {	-- Shimmering Aquafly (PET!)
					["description"] = "Found in the area around given coord, around the pond.",
					["coord"] = { 54.0, 83.0, VALSHARAH },
				}),
				pet(1739, {	-- Spring Strider (PET!)
					["coord"] = { 46.8, 70.2, VALSHARAH },
				}),
				pet(1735, {	-- Terror Larva (PET!)
					["description"] = "Found around the large nightmare area.",
				}),
				pet(1737, {	-- Vale Flitter (PET!)
					["description"] = "May be difficult to find. Can be found in the grassy area in southern Val'Sharah."
				}),
			},
		})),
	}),
})));
