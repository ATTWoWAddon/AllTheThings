---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.ISLE_OF_QUELDANAS, {
	--	n(RARES, sharedData({ ["isDaily"] = true }, {
	--	})),
		n(RARES, {
			n(239864, {	-- Dripping Shadow
				["coords"] = {
					{ 37.1, 38.5, MAP.MIDNIGHT.ISLE_OF_QUELDANAS_SCENARIO },
					{ 37.0, 38.4, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
				},
				["questID"] = 95010,
				["groups"] = {
					i(267268),	-- Dripping Silk Footwraps
				},
			}),
			n(252465, {	-- Tarhu the Ransacker
				["coord"] = { 55.5, 28.7, MAP.MIDNIGHT.ISLE_OF_QUELDANAS_SCENARIO },	-- Doesn't exist outside of scenario map?
				--["questID"] = ??,	-- missing kill questID
				["groups"] = {
					--no loot table
				},
			}),
		}),
	}),
}));
