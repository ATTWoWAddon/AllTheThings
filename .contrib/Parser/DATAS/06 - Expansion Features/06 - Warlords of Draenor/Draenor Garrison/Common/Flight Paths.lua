-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(FLIGHT_PATHS, {
				fp(1476, {	-- Lunarfall (Alliance), Shadowmoon Valley
					["coord"] = { 47.6, 49.6, LUNARFALL },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(1432, {	-- Frostwall Garrison, Frostfire Ridge
					["coord"] = { 45.8, 50.2, FROSTWALL },
					["races"] = HORDE_ONLY,
				}),
			}),
		})),
	})
);
