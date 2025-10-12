---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end

root(ROOTS.Zones, m(MIDNIGHT, {
	m(EVERSONG_WOODS_MID, {
	--	n(RARES, sharedData({ ["isDaily"] = true }, {
	--	})),
		n(RARES, {
			n(250826, {	-- Banuran
				["coord"] = { 56.4, 77.6, EVERSONG_WOODS_MID },
				["questID"] = 92403,
				["groups"] = {
					--no loot table
				},
			}),
			n(250582, {	-- Bloated Snapdragon
				["coord"] = { 36.6, 64.0, EVERSONG_WOODS_MID },
				["questID"] = 92366,
				["groups"] = {
					--no loot table
				},
			}),
			n(250683, {	-- Coralfang
				["coord"] = { 36.4, 36.4, EVERSONG_WOODS_MID },
				["questID"] = 92389,
				["groups"] = {
					--no loot table
				},
			}),
			n(250719, {	-- Cre'van
				["coord"] = { 63.2, 50.0, EVERSONG_WOODS_MID },
				["questID"] = 92391,
				["groups"] = {
					--no loot table
				},
			}),
			n(255348, {	-- Dame Bloodshed
				["coord"] = { 44.8, 38.5, EVERSONG_WOODS_MID },
				["questID"] = 93561,
				["groups"] = {
					--no loot table
				},
			}),
			n(255302, {	-- Duskburn
				["coord"] = { 42.3, 69.0, EVERSONG_WOODS_MID },
				["questID"] = 93550,
				["groups"] = {
					--no loot table
				},
			}),
			n(246633, {	-- Harried Hawkstrider
				["coord"] = { 45.0, 78.9, EVERSONG_WOODS_MID },
				["questID"] = 91315,
				["groups"] = {
					--no loot table
				},
			}),
			n(250754, {	-- Lady Liminus
				["coord"] = { 36.6, 77.2, EVERSONG_WOODS_MID },
				["questID"] = 92393,
				["groups"] = {
					--no loot table
				},
			}),
			n(250806, {	-- Lost Guardian
				--could be locked/phased behind quests in area?
				["coord"] = { 59.1, 79.2, EVERSONG_WOODS_MID },
				["questID"] = 92399,
				["groups"] = {
					--no loot table
				},
			}),
			n(240129, {	-- Overfester Hydra (vignette - Dormant Lightbloom Hydra)
				["coord"] = { 54.7, 60.4, EVERSONG_WOODS_MID },
				["questID"] = 92392,
				["groups"] = {
					--no loot table
				},
			}),
			n(250876, {	-- Terrinor
				["coord"] = { 40.3, 85.3, EVERSONG_WOODS_MID },
				["questID"] = 92409,
				["groups"] = {
					--no loot table
				},
			}),
			n(246332, {	-- Warden of Weeds
				["coord"] = { 52.7, 75.0, EVERSONG_WOODS_MID },
				["questID"] = 91280,
				["groups"] = {
					--no loot table
				},
			}),
		}),
	}),
}));
