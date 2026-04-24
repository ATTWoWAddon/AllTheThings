-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(FLIGHT_PATHS, {
				fp(1476, {	-- Lunarfall (Alliance), Shadowmoon Valley
					["cr"] = 81103,	-- Dungar Longdrink
					["coord"] = { 48.0, 49.8, LUNARFALL },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(1432, {	-- Frostwall Garrison, Frostfire Ridge
					["cr"] = 79407,	-- Bron Skyhorn
					["coord"] = { 45.8, 50.2, FROSTWALL },
					["races"] = HORDE_ONLY,
				}),
			}),
		})),
	})
);
