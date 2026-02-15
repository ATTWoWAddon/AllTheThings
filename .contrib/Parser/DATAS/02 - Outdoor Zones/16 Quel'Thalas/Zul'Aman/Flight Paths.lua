---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ZULAMAN, {
		n(FLIGHT_PATHS, {
			fp(3127, {	-- Amani'Zar Village, Zul'Aman
				["coord"] = { 44.8, 65.4, MAP.MIDNIGHT.ZULAMAN },
				["cr"] = 241036,	-- Eagletender Vikovu
			}),
			fp(3128, {	-- Atal'Aman, Zul'Aman
				--["sourceQuest"] = { xx },	-- ??
				["coord"] = { 39.8, 40.8, MAP.MIDNIGHT.ATAL_AMAN_OUTDOOR },
				["cr"] = 241031,	-- Eagletender Po'vari
			}),
			fp(3129, {	-- Shadebasin Watch, Zul'Aman
				["coord"] = { 44.0, 33.6, MAP.MIDNIGHT.ZULAMAN },
				["cr"] = 251081,	-- Eagletender Ful'nac
			}),
			fp(3126, {	-- Torntusk Overlook, Zul'Aman
				["coord"] = { 33.9, 78.3, MAP.MIDNIGHT.ZULAMAN },
				["cr"] = 249150,	-- Eagletender Tha'mon
			}),
			fp(3106, {	-- Tortolian Hub, Zul'Aman
				["coord"] = { 47.3, 25.5, MAP.MIDNIGHT.ZULAMAN },
				["cr"] = 242011,	-- Scroll of Flight
			}),
			-- TODO: Please verify the data for the two flight masters below
			fp(3129, {	-- Shadebasin Watch, Zul'Aman
				--["coord"] = { , , MAP.MIDNIGHT.ZULAMAN },
				--["cr"] = ,	--
			}),
			fp(3130, {	-- Witherbark Bluffs, Zul'Aman
				["coord"] = { 38.9, 23.2, MAP.MIDNIGHT.ZULAMAN },
				["cr"] = 251073,	-- Eagletender Do'nac
			}),
		}),
	}),
}));
