---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local function bo(questID, isDaily)
    return { ["questID"] = questID, ["isDaily"] = isDaily };
end
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
	--	n(RARES, sharedData({ ["isDaily"] = true }, {
	--	})),
		n(RARES, {
			n(250347, {	-- Ahl'ua'huhi
				["coord"] = { 39.6, 60.8, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92193,
				["groups"] = {
					--no loot table
				},
			}),
			n(250358, {	-- Annulus the Worldshaker
				["coord"] = { 44.2, 16.4, MAP.MIDNIGHT.HARANDAR },
				--["questID"] = xx,
				["groups"] = {
					--no loot table
				},
			}),
			n(249844, {	-- Chironex
				["coord"] = { 68.5, 40.6, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92137,
				["groups"] = {
					--no loot table
				},
			}),
			n(249997, {	-- Chlorokyll
				["coord"] = { 64.6, 47.9, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92161,
				["groups"] = {
					--no loot table
				},
			}),
			n(250231, {	-- Dracaena
				["coord"] = { 40.6, 43.1, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92176,
				["groups"] = {
					--no loot table
				},
			}),
			n(249849, {	-- Ha'kalawe
				["coord"] = { 69.2, 63.1, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92142,
				["groups"] = {
					--no loot table
				},
			}),
			n(250226, {	-- Mindrot
				["coord"] = { 46.3, 32.9, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92172,
				["groups"] = {
					--no loot table
				},
			}),
			n(250317, {	-- Oro'ohna
				["coord"] = { 28.2, 81.9, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92190,
				["groups"] = {
					--no loot table
				},
			}),
			n(250321, {	-- Pterrock
				["coord"] = { 27.2, 70.2, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92191,
				["groups"] = {
					--no loot table
				},
			}),
			n(249962, {	-- Queen Lashtongue
				["coord"] = { 60.0, 46.6, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92154,
				["groups"] = {
					i(264566),	-- Lashtongue's Leaffroggers
				},
			}),
			n(248741, {	-- Rhazul
				["coord"] = { 51.2, 45.5, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 91832,
				["groups"] = {
					i(264622),	-- Grimfang Shank
					i(264530),	-- Grimfur Mittens
				},
			}),
			n(250180, {	-- Serrasa
				["coord"] = { 56.3, 33.1, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92170,
				["groups"] = {
					i(264639),	-- Razorfang Hacker
				},
			}),
			n(250086, {	-- Stumpy
				["coord"] = { 65.6, 32.7, MAP.MIDNIGHT.HARANDAR },
				--["questID"] = xx,
				["groups"] = {
					--no loot table
				},
			}),
			n(249902, {	-- Tallcap the Truthspreader
				["coord"] = { 72.6, 69.2, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92148,
				["groups"] = {
					--no loot table
				},
			}),
			n(250246, {	-- Treetop
				["coord"] = { 36.7, 75.2, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92183,
				["groups"] = {
					i(264633),	-- Treetop Battlestave
				},
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.HARANDAR, {
			n(RARES, {
				q(94716, {	-- Weekly reputation: Queen Lashtongue
					["name"] = "Queen Lashtongue weekly reputation obtained.",
				}),
				q(94712, {	-- Weekly reputation: Rhazul
					["name"] = "Rhazul weekly reputation obtained.",
				}),
				q(94722, {	-- Weekly reputation: Treetop
					["name"] = "Treetop weekly reputation obtained.",
				}),
			}),
		}),
	}),
}));
