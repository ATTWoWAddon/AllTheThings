---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ISLE_OF_QUELDANAS, {
		n(ACHIEVEMENTS, {
			ach(62191),	-- Call of the Light
			ach(62273, {	-- Echoes of Midnight	// https://worldofwarcraft.blizzard.com/en-us/news/24267942
				["description"] = "Earning this achievement rewards a 'Voidfeather Dragonhawk' flying mount on Anniversary realms if completed before May 16th, 2026.",	-- Add preprocessors if required
			}),
		}),
	}),
}));
