---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(OHNAHRAN_PLAINS, {
		petbattle(filter(BATTLE_PETS, {
			["sym"] = {{"select","speciesID",
				3300,	-- Ironbeak Duck (PET!)
				3281,	-- Scruffy Ottuk (PET!)
				3282,	-- Swoglet (PET!)
				3322,	-- Woodbiter Piculet (PET!)
			}},
			["groups"] = {
				pet(3266, {	-- Black Slyvern Pup (PET!)
					["coord"] = { 64.0, 26.0, OHNAHRAN_PLAINS },
				}),
				pet(3327, {	-- Dusky Timbertooth (PET!)
					["description"] = "You have to click on the |cFFefc400Beaver Dam|r before you can battle this pet.",
					["coord"] = { 71.6, 74.0, OHNAHRAN_PLAINS },
				}),
				pet(3313, {	-- Grassland Stomper (PET!)
					["coords"] = {
						{ 54.0, 50.2, OHNAHRAN_PLAINS },
						{ 49.8, 50.2, THALDRASZUS },
						{ 41.0, 61.8, THE_WAKING_SHORES },
					},
				}),
				pet(3353),	-- Stoneshell (PET!)
				pet(3389, {	-- The Quackcestor (PET!)
					["minReputation"] = { FACTION_MARUUK_CENTAUR, 7 },
					["description"] = "Buy the |cFFefc400Essence of Awakening|r from |cFFefc400Quartermaster Huseng|r and use it to be able to see this pet.",
					["provider"] = { "i", 201323 },	-- 1xEssence of Awakening
					["coords"] = {
						{ 41.6, 45.2, OHNAHRAN_PLAINS },
						{ 41.8, 44.0, OHNAHRAN_PLAINS },
						{ 42.4, 47.8, OHNAHRAN_PLAINS },
						{ 43.0, 43.6, OHNAHRAN_PLAINS },
					},
				}),
				pet(3328, {	-- Tiny Timbertooth (PET!)
					["coords"] = {
						{ 79.0, 48.4, OHNAHRAN_PLAINS },
						{ 71.8, 73.8, OHNAHRAN_PLAINS },
					},
				}),
				pet(3276),	-- Treeflitter (PET!)
				pet(3288),	-- Trunkalumpf (PET!)
			},
		})),
	}),
})));
