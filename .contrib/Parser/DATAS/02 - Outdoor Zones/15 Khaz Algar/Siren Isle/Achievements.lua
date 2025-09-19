---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(SIREN_ISLE, {
		n(ACHIEVEMENTS, {
			ach(41133, {	-- Isle Remember You
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					41050,	-- A Choir of Citrines
					41045,	-- A Song of Secrets
					41046,	-- Clean Up on Isle Siren
					41043,	-- Excavation Projects
					41042,	-- Siren-ity Now!
					41131,	-- Treasures of the Storm
				}},
				["groups"] = {
					i(232991),	-- The Breaker's Song (MOUNT!)
				},
			}),
			ach(41050),	-- A Choir of Citrines (automated!)
			ach(41045),	-- A Song of Secrets (automated!)
			ach(41046),	-- Clean Up on Isle Siren (automated!)
			ach(41043, {	-- Excavation Projects
				crit(70787),	-- The Drowned Lair
				crit(70788),	-- The Drain
				crit(70789),	-- Shuddering Hollow
			}),
			ach(41042),	-- Siren-ity Now! (automated!)
			ach(41131, {	-- Treasures of the Storm
				["providers"] = {
					{ "o", 474822 },	-- Runed Storm Cache (non storm id)
					{ "o", 500407 },	-- Runed Storm Cache (storm id)
				},
			}),
			ach(41185),	-- Siren's Squall (automated!)
		}),
	}),
}));
