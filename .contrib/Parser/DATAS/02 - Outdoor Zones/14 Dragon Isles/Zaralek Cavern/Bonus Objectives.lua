---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(ZARALEK_CAVERN, {
		n(BONUS_OBJECTIVES, {
			n(QUESTS, sharedData({ ["repeatable"] = true }, {
				q(75612, {	-- Cascades Calling
					["coord"] = { 42.4, 73.8, ZARALEK_CAVERN },
				}),
				q(75455, {	-- Conspiracy of Flames
					["coord"] = { 32.1, 42.7, ZARALEK_CAVERN },
				}),
				q(75471, {	-- Crystalline Survey
					["coord"] = { 61.7, 46.4, ZARALEK_CAVERN },
				}),
				q(75664, {	-- Discordant Crystals
					["coord"] = { 57.4, 65.1, ZARALEK_CAVERN },
				}),
				q(75611, {	-- Glimmerfish Before It's Gone
					["coord"] = { 43.8, 69.0, ZARALEK_CAVERN },
					["groups"] = {
						i(205179),	-- Glimmerfish Scale (QI!)
					},
				}),
				q(75478, {	-- Hungry Hungry Hydra
					["coord"] = { 46.8, 23.9, ZARALEK_CAVERN },
				}),
				q(75451, {	-- Imperfect Balance
					["coord"] = { 36.3, 52.2, ZARALEK_CAVERN },
				}),
				q(75461, {	-- Magmaclaw Matriarch
					["coord"] = { 48.8, 29.0, ZARALEK_CAVERN },
				}),
				q(75705, {	-- Monument Maintenance
					["coord"] = { 58.4, 67.8, ZARALEK_CAVERN },
				}),
				q(75454, {	-- Mortar Warfare
					["coord"] = { 39.8, 43.7, ZARALEK_CAVERN },
				}),
				q(75450, {	-- Seismic Ceremony
					["coord"] = { 34.1, 47.1, ZARALEK_CAVERN },
				}),
				q(75222, {	-- Shellfire
					["coord"] = { 58.1, 49.5, ZARALEK_CAVERN },
				}),
				q(75370, {	-- Smellincense
					["coord"] = { 60.8, 55.5, ZARALEK_CAVERN },
				}),
				q(75441, {	-- Smelly Scramble
					["coord"] = { 57.6, 57.1, ZARALEK_CAVERN },
				}),
				q(75156, {	-- Stress Express
					["coord"] = { 64.5, 51.4, ZARALEK_CAVERN },
				}),
				q(75494, {	-- Strike the Colors
					["coord"] = { 43.6, 25.0, ZARALEK_CAVERN },
				}),
				q(75624, {	-- The Champion's Challenge
					["coord"] = { 44.1, 80.7, ZARALEK_CAVERN },
				}),
				q(74352, {	-- Whirling Zephyr
					["coord"] = { 57.5, 65.5, ZARALEK_CAVERN },
					["groups"] = {
						i(203706),	-- Hurricane Scepter
					},
				}),
			})),
			n(REWARDS, {
				i(205248, {	-- Clanging Dirt-Covered Pouch
					i(204715),	-- Unearthed Fragrant Coin
				}),
				i(205247, {	-- Clinking Dirt-Covered Pouch
					i(204715),	-- Unearthed Fragrant Coin
				}),
			}),
		}),
	}),
})));
