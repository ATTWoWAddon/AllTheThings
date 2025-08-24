---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_WAKING_SHORES, {
		petbattles({
			q(70853, {	-- A Friend for Lubbins
				["sourceQuest"] = 70851,	-- Born to Be Wilder
				["qg"] = 196264,	-- Haniko
				["coord"] = { 38.9, 83.3, THE_WAKING_SHORES },
				["timeline"] = { ADDED_10_0_2_LAUNCH },
				["_drop"] = { "g" },	-- Drop Polished Pet Charm
				["sym"] = {{"select","itemID",
					116421,	-- Flying Battle-Training Stone
					POLISHED_PET_CHARM,
				}},
			}),
			q(70851, {	-- Born to Be Wilder
				["sourceQuest"] = 70849,	-- This Calls for a Specialist
				["qg"] = 196264,	-- Haniko
				["coord"] = { 38.9, 83.3, THE_WAKING_SHORES },
				["timeline"] = { ADDED_10_0_2_LAUNCH },
				["_drop"] = { "g" },	-- Drop Polished Pet Charm
				["sym"] = {{"select","itemID",
					POLISHED_PET_CHARM,
				}},
			}),
			q(70854, {	-- So How Did It Go?
				["sourceQuest"] = 70853,	-- A Friend for Lubbins
				["qg"] = 196264,	-- Haniko
				["coord"] = { 38.9, 83.3, THE_WAKING_SHORES },
				["timeline"] = { ADDED_10_0_2_LAUNCH },
				["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
				["groups"] = {
					i(200519),	-- Mister Toots (PET!)
					ach(16399),	-- Lovin' Lubbins
				},
			}),
		}),
	}),
})));
