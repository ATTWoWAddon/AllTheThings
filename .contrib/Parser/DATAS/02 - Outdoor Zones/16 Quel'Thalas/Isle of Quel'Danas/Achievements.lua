---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ISLE_OF_QUELDANAS, {
		n(ACHIEVEMENTS, {
			ach(62191),	-- Call of the Light
			ach(62273, {	-- Echoes of Midnight
				["description"] = "Earn the menacing Voidfeather Dragonhawk flying mount in Burning Crusade Classic Anniversary Edition", -- Timeout Correctly ends: Available until May 16, 2026, 10:00 am PDT (18:00 BST). https://worldofwarcraft.blizzard.com/en-us/news/24267942
			}),
		}),
	}),
}));
