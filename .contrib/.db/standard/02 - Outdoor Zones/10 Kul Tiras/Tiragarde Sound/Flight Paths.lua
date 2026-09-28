---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(TIRAGARDE_SOUND, {
		n(FLIGHT_PATHS, {
			fp(2052, {	-- Anglepoint Wharf, Tiragarde Sound (Ferry) [Alliance]
				["coord"] = { 42.0, 30.6, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2074, {	-- Bridgeport, Tiragarde Sound [Alliance]
				["coord"] = { 75.8, 48.6, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2077, {	-- Castaway Point, Tiragarde Sound [N]
				["coord"] = { 86.4, 80.8, TIRAGARDE_SOUND },
			}),
			fp(2104, {	-- Eastpoint Station, Tiragarde Sound (Ferry) [Alliance]
				["coord"] = { 74.2, 44.2, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2054, {	-- Firebreaker Expedition, Tiragarde Sound (Ferry) [Alliance]
				["coord"] = { 63.8, 30.2, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2023, {	-- Freehold, Tiragarde Sound [N]
				["coord"] = { 77.0, 82.9, TIRAGARDE_SOUND },
			}),
			fp(2060, {	-- Hatherford, Tiragarde Sound [Alliance]
				["coord"] = { 66.8, 23.0, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2079, {	-- Kennings Lodge, Tiragarde Sound [Alliance]
				["coord"] = { 76.6, 65.4, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2084, {	-- Norwington Estate, Tiragarde Sound [Alliance]
				["coord"] = { 52.91, 28.81, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2053, {	-- Old Drust Road, Tiragarde Sound (Ferry) [Alliance]
				["coord"] = { 54.0, 53.2, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2087, {	-- Outrigger Post, Tiragarde Sound [Alliance]
				["coord"] = { 35.55, 24.9, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2140, {	-- Plunder Harbor, Tiragarde Sound [Horde] [NOTE: Verification Required, this may be locked behind the War Campaign quests]
				["creatureID"] = 138265,	-- Skrash
				["coord"] = { 87.2, 50.6, TIRAGARDE_SOUND },
				["races"] = HORDE_ONLY,
				-- ["sourceQuest"] = ,	-- TODO: determine actual unlock quest
			}),
			fp(2102, {	-- Roughneck Camp, Tiragarde Sound [Alliance]
				["coord"] = { 42.4, 23.0, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2055, {	-- Southwind Station, Tiragarde Sound (Ferry) [Alliance]
				["coord"] = { 66.6, 49.8, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2279, {	-- Stonefist Watch, Tiragarde Sound [Horde]
				["description"] = "Requires completion of Mission Report: Stonefist Watch and related quest line to unlock.",
				["coord"] = { 53.2, 63.0, TIRAGARDE_SOUND },
				["races"] = HORDE_ONLY,
				-- ["sourceQuest"] = ,	-- TODO: determine actual unlock quest
			}),
			fp(2067, {	-- Timberfell Outpost, Tiragarde Sound [Horde]
				["description"] = "Requires completion of Mission Report: Timberfell Outpost and related quest line to unlock.",
				["creatureID"] = 133861,	-- Michaela Reed
				["coord"] = { 72.2, 51.9, TIRAGARDE_SOUND },
				["races"] = HORDE_ONLY,
				-- ["sourceQuest"] = ,	-- TODO: determine actual unlock quest
			}),
			fp(2042, {	-- Vigil Hill, Tiragarde Sound [Alliance]
				["coord"] = { 57.6, 61.6, TIRAGARDE_SOUND },
				["races"] = ALLIANCE_ONLY,
			}),
			fp(2273, {	-- Waning Glacier, Tiragarde Sound [Horde]
				["coord"] = { 39.6, 18.4, TIRAGARDE_SOUND },
				["races"] = HORDE_ONLY,
			}),
			fp(2062, {	-- Wolf's Den, Tiragarde Sound [Horde]
				["description"] = "Requires completion of Mission Report: Wolf's Den and related quest line to unlock.",
				["coord"] = { 62.0, 13.4, TIRAGARDE_SOUND },
				["races"] = HORDE_ONLY,
				-- ["sourceQuest"] = ,	-- TODO: determine actual unlock quest
			}),
		}),
	}),
})));
