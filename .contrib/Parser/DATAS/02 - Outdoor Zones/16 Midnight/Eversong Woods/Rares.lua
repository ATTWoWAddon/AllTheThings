---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
--[[
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end
root(ROOTS.Zones, expansion(EXPANSION.MID, {
	m(XXXX, {
		n(RARES, sharedData({ ["isDaily"] = true }, {
		})),
		n(RARES, {
		}),
	}),
}));
--]]
