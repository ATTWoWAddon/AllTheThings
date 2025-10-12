---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end

root(ROOTS.Zones, m(MIDNIGHT, {
	m(ISLE_OF_QUELDANAS_MID, {
	--	n(RARES, sharedData({ ["isDaily"] = true }, {
	--	})),
		n(RARES, {
			n(239864, {	-- Dripping Shadow
				["coord"] = { 37.1, 38.5, ISLE_OF_QUELDANAS_MID_i },	-- TODO: it also up on normal map, need to re-confirm coords
				--["questID"] = ??,	-- missing kill questID
				["groups"] = {
					--no loot table
				},
			}),
			n(252465, {	-- Tarhu the Ransacker
				["coord"] = { 55.5, 28.8, ISLE_OF_QUELDANAS_MID_i },	-- TODO: it also up on normal map, need to re-confirm coords
				--["questID"] = ??,	-- missing kill questID
				["groups"] = {
					--no loot table
				},
			}),
		}),
	}),
}));
