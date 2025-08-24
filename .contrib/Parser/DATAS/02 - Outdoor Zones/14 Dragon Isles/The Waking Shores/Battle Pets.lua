---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_WAKING_SHORES, {
		petbattle(filter(BATTLE_PETS, {
			["sym"] = {{"select","speciesID",
				3313,	-- Grassland Stomper (PET!)
				3281,	-- Scruffy Ottuk (PET!)
				3283,	-- Snowlemental (PET!)
				3336,	-- Vorquin Runt (PET!)
			}},
			["groups"] = {
				pet(3367),	-- Emberling (PET!)
				pet(3295, {	-- Igneoid (PET!)
					["coord"] = { 51.4, 31.6, THE_WAKING_SHORES },
				}),
				pet(3300),	-- Ironbeak Duck (PET!)
				pet(3366),	-- Kindlet (PET!)
				pet(3273),	-- Magma Slug (PET!)
				pet(3296),	-- Palamanther (PET!)
				pet(3307, {	-- Plucky Duckling (PET!)
					["coords"] = {
						{ 60.8, 57.2, VALDRAKKEN },
						{ 57.0, 71.0, THE_WAKING_SHORES },
					},
				}),
				pet(3272),	-- Pricklefury Hare (PET!)
				pet(3280, {	-- Shyfly (PET!)
					["description"] = "You won't be able to see these pets until you've accepted the quest |cffffff00A Friend for Lubbins|r. For some reason, these are tradeable.",
					["coord"] = { 40.8, 81.2, THE_WAKING_SHORES },
				}),
				pet(3282),	-- Swoglet (PET!)
				pet(3318, {	-- Thunderfoot Calf (PET!)
					["description"] = "Not very common, often grouped with other NPCs.",
					["coord"] = { 45.8, 35.2, THE_WAKING_SHORES },
				}),
				pet(3301),	-- Wild Duckling (PET!)
			},
		})),
	}),
})));
