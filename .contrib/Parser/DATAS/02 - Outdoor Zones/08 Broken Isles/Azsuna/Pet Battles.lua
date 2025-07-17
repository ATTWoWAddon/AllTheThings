---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(BROKEN_ISLES, {
	m(AZSUNA, {
		petbattles({
			q(40310, {	-- Shipwrecked Captive
				["providers"] = {
					{ "i", 122681 },	-- Sternfathom's Pet Journal
					{ "n",  98489 },	-- Shipwrecked Captive
				},
				["description"] = "Weekly Account-Wide Pet Battle Quest. You need the toy Sternfathom's Pet Journal to summon this npc.",
				["coord"] = { 49.3, 45.4, AZSUNA },
				["timeline"] = { ADDED_7_0_3_LAUNCH },
				["_drop"] = { "g" },	-- Drop Shiny Pet Charm
				["isWeekly"] = true,
			}),
		}),
	}),
}));