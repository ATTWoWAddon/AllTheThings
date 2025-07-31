-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, {
			m(FROSTWALL, {
				["lvl"] = 90,
				["maps"] = {
					585,	-- Frostwall Mine [Unclaimed / Level 1]
					586,	-- Frostwall Mine [Level 2]
					587,	-- Frostwall Mine [Level 3]
				},
				["isRaid"] = true,
				["icon"] = 1046795,
				["description"] = "Frostwall is the Horde Garrison, located in Frostfire Ridge. A fully-upgraded Frostwall garrison is considered to be a fortress.",
			}),
		}),
	})
);
