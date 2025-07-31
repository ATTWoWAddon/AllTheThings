---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_AZURE_SPAN, {
		petbattles({
			q(70732, {	-- A Practice Bout
				["sourceQuest"] = 70722,	-- What Lubbins Needs
				["qg"] = 196069,	-- Patchu
				["coord"] = { 13.9, 49.8, THE_AZURE_SPAN },
				["timeline"] = { ADDED_10_0_2_LAUNCH },
				["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
			}),
			q(70849, {	-- This Calls for a Specialist
				["sourceQuest"] = 70732,	-- A Practice Bout
				["qg"] = 196069,	-- Patchu
				["coord"] = { 13.9, 49.8, THE_AZURE_SPAN },
				["timeline"] = { ADDED_10_0_2_LAUNCH },
				["maps"] = { THE_WAKING_SHORES },
			}),
			q(70722, {	-- What Lubbins Needs
				["sourceQuest"] = 70697,	-- An Expert Opinion
				["qg"] = 196069,	-- Patchu
				["coord"] = { 13.9, 49.8, THE_AZURE_SPAN },
				["timeline"] = { ADDED_10_0_2_LAUNCH },
				["_drop"] = { "g" },	-- Drop Polished Pet Charm
				["sym"] = {{"select","itemID",
					92683,	-- Flawless Dragonkin Battle-Stone
					POLISHED_PET_CHARM,
				}},
			}),
		}),
	}),
})));
