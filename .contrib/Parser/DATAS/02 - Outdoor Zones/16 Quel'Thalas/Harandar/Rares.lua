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
					i(264540),	-- Mirevine Wristguards
				},
			}),
			n(250358, {	-- Annulus the Worldshaker
				["coord"] = { 44.2, 16.4, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92194,
				["groups"] = {
					i(264614),	-- Fungal Cap Guard
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
					i(264968),	-- Telluric Leyblossom
				},
			}),
			n(250231, {	-- Dracaena
				["coord"] = { 40.6, 43.1, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92176,
				["groups"] = {
					i(264644),	-- Crawler's Mindscythe
				},
			}),
			n(249849, {	-- Ha'kalawe
				["coord"] = { 69.2, 63.1, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92142,
				["groups"] = {
					i(264553),	-- Deepspore Leather Galoshes
				},
			}),
			n(250226, {	-- Mindrot
				["coord"] = { 46.0, 31.3, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92172,
				["groups"] = {
					i(251782),	-- Withered Saptor's Paw (midnight zone reward)
				},
			}),
			n(250317, {	-- Oro'ohna
				["coord"] = { 28.2, 81.9, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92190,
				["groups"] = {
					i(264591),	-- Radiant Petalwing's Feather
				},
			}),
			n(250321, {	-- Pterrock
				["coord"] = { 27.2, 70.2, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92191,
				["groups"] = {
					i(264576),	-- Slatescale Grips
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
				["coord"] = { 51.2, 45.3, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 91832,
				["groups"] = {
					i(264622),	-- Grimfang Shank
					i(264530),	-- Grimfur Mittens
				},
			}),
			n(250180, {	-- Serrasa
				["coord"] = { 56.7, 33.6, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92170,
				["groups"] = {
					i(264639),	-- Razorfang Hacker
					--i(252957),	-- Tangle of Vibrant Vines (TODO: idk if you really want that much source for it, since already midnight zone reward?)
				},
			}),
			n(250086, {	-- Stumpy
				["coord"] = { 65.8, 32.4, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92168,
				["groups"] = {
					i(264635),	-- Stumpy's Stump
				},
			}),
			n(249902, {	-- Tallcap the Truthspreader
				["coord"] = { 72.6, 69.2, MAP.MIDNIGHT.HARANDAR },
				["questID"] = 92148,
				["groups"] = {
					i(264650),	-- Truthspreader's Truth Spreader
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
				q(94725, {	-- Weekly reputation: Ahl'ua'huhi
					["name"] = "Ahl'ua'huhi weekly reputation obtained.",
				}),
				q(94726, {	-- Weekly reputation: Annulus the Worldshaker
					["name"] = "Annulus the Worldshaker weekly reputation obtained.",
				}),
				q(94713, {	-- Weekly reputation: Chironex
					["name"] = "Chironex weekly reputation obtained.",
				}),
				q(94717, {	-- Weekly reputation: Chlorokyll
					["name"] = "Chlorokyll weekly reputation obtained.",
				}),
				q(94721, {	-- Weekly reputation: Dracaena
					["name"] = "Dracaena weekly reputation obtained.",
				}),
				q(94714, {	-- Weekly reputation: Ha'kalawe
					["name"] = "Ha'kalawe weekly reputation obtained.",
				}),
				q(94720, {	-- Weekly reputation: Mindrot
					["name"] = "Mindrot weekly reputation obtained.",
				}),
				q(94723, {	-- Weekly reputation: Oro'ohna
					["name"] = "Oro'ohna weekly reputation obtained.",
				}),
				q(94724, {	-- Weekly reputation: Pterrock
					["name"] = "Pterrock weekly reputation obtained.",
				}),
				q(94716, {	-- Weekly reputation: Queen Lashtongue
					["name"] = "Queen Lashtongue weekly reputation obtained.",
				}),
				q(94712, {	-- Weekly reputation: Rhazul
					["name"] = "Rhazul weekly reputation obtained.",
				}),
				q(94719, {	-- Weekly reputation: Serrasa
					["name"] = "Serrasa weekly reputation obtained.",
				}),
				q(94718, {	-- Weekly reputation: Stumpy
					["name"] = "Stumpy weekly reputation obtained.",
				}),
				q(94715, {	-- Weekly reputation: Tallcap the Truthspreader
					["name"] = "Tallcap the Truthspreader weekly reputation obtained.",
				}),
				q(94722, {	-- Weekly reputation: Treetop
					["name"] = "Treetop weekly reputation obtained.",
				}),
			}),
		}),
	}),
}));
