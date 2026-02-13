---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
	--	n(RARES, sharedData({ ["isDaily"] = true }, {
	--	})),
		n(RARES, {
			n(256924, {	-- Aeonelle Blackstar
				["coord"] = { 39.2, 64.0, MAP.MIDNIGHT.VOIDSTORM },
				--["questID"] = XXXX,	-- missing questID
				["groups"] = {
					--no loot table
				},
			}),
			n(256923, {	-- Bane of the Vilebloods
				["coord"] = { 48.3, 78.3, MAP.MIDNIGHT.VOIDSTORM },
				--["questID"] = XXXX,	-- missing questID
				["groups"] = {
					--no loot table
				},
			}),
			n(256770, {	-- Bilemaw the Gluttonous
				["coord"] = { 35.5, 50.2, MAP.MIDNIGHT.VOIDSTORM },
				--["questID"] = XXXX,	-- missing questID
				["groups"] = {
					--no loot table
				},
			}),
			n(245182, {	-- Eruundi
				["coord"] = { 40.1, 90.9, SLAYERS_RISE_OUTDOOR },
				["questID"] = 91047,
				["groups"] = {
					--no loot table
				},
			}),
			n(256821, {	-- Far'thana the Mad
				["coord"] = { 53.8, 62.7, MAP.MIDNIGHT.VOIDSTORM },
				--["questID"] = XXXX,	-- missing questID
				["groups"] = {
					--no loot table
				},
			}),
			n(257231, {	-- Gar'chak Skullcleave
				["crs"] = {
					257249,	-- Neevus
					257245,	-- Veserra
				},
				["coord"] = { 75.8, 79.5, SLAYERS_RISE_OUTDOOR },	-- a bit off, didn't kill it
				--["questID"] = XXXX,	-- missing questID
				["groups"] = {
					--no loot table
				},
			}),
			n(256925, {	-- Lotus Darkblossom
				["coord"] = { 37.9, 71.8, MAP.MIDNIGHT.VOIDSTORM },
				--["questID"] = XXXX,	-- missing questID
				["groups"] = {
					--no loot table
				},
			}),
			n(245044, {	-- Nightbrood
				["coord"] = { 40.1, 41.3, MAP.MIDNIGHT.VOIDSTORM },
				--["questID"] = XXXX,	-- missing questID
				["groups"] = {
					--no loot table
				},
			}),
			n(256808, {	-- Ravengerus
				["coord"] = { 49.2, 52.9, MAP.MIDNIGHT.VOIDSTORM },	-- a bit off, didn't kill it
				--["questID"] = XXXX,	-- missing questID
				["groups"] = {
					--no loot table
				},
			}),
			n(244272, {	-- Sundereth the Caller
				["coord"] = { 29.5, 50.1, MAP.MIDNIGHT.VOIDSTORM },
				--["questID"] = XXXX,	-- missing questID
				["groups"] = {
					--no loot table
				},
			}),
			n(238498, {	-- Territorial Voidscythe
				["coord"] = { 34.1, 82.1, MAP.MIDNIGHT.VOIDSTORM },
				--["questID"] = XXXX,	-- missing questID
				["groups"] = {
					--no loot table
				},
			}),
		}),
	}),
}));
