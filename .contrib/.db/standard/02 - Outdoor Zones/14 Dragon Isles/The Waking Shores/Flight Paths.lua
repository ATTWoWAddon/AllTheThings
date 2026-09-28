---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_WAKING_SHORES, {
		n(FLIGHT_PATHS, {
			fp(2801, {	-- Apex Observatory, The Waking Shores
				["coord"] = { 23.8, 83.1, THE_WAKING_SHORES },
				["cr"] = 192493,	-- Hjorik
			}),
			fp(2809, {	-- Dragonscale Basecamp, The Waking Shores
				["coord"] = { 47.9, 83.3, THE_WAKING_SHORES },
				["cr"] = 192843,	-- Art Raskins
			}),
			fp(2806, {	-- Life Vault Ruins, The Waking Shores
				["cr"] = 192484,	-- Tallevia Mistsong
				["coord"] = { 65.0, 57.4, THE_WAKING_SHORES },
			}),
			fp(2808, {	-- Obsidian Bulwark, The Waking Shores
				["coord"] = { 42.3, 66.3, THE_WAKING_SHORES },
				["cr"] = 188444,	-- Do-Yeon Shadowrider
			}),
			fp(2802, {	-- Obsidian Throne, The Waking Shores
				["coord"] = { 25.3, 56.8, THE_WAKING_SHORES },
				["cr"] = 188336,	-- Foehn Breezeskimmer
			}),
			fp(2807, {	-- Ruby Life Pools, The Waking Shores
				["cr"] = 192491,	-- Vaknai
				["coord"] = { 57.8, 68.1, THE_WAKING_SHORES },
				["sourceQuests"] = { 66114 },	-- For the Benefit of the Queen
			}),
			fp(2817, {	-- Skytop Observatory, The Waking Shores
				["cr"] = 193477,	-- Azerastrasz
				["coord"] = { 72.8, 51.9, THE_WAKING_SHORES },
				["sourceQuests"] = {
					68796,	-- The Skytop Observatory
					DF_ACCOUNT_CAMPAIGN_QUEST,
				},
				["sourceQuestNumRequired"] = 1,
			}),
			fp(2804, {	-- Uktulut Backwater, The Waking Shores
				["coord"] = { 54.3, 37.0, THE_WAKING_SHORES },
				["cr"] = 189731,	-- Janatak
				["sourceQuests"] = { 66444 },-- While the Iron Is Hot
			}),
			fp(2800, {	-- Uktulut Outpost, The Waking Shores
				["coord"] = { 17.5, 88.7, THE_WAKING_SHORES },
				["cr"] = 192494,	-- Nulia
			}),
			fp(2803, {	-- Uktulut Pier, The Waking Shores
				["coord"] = { 45.8, 27.5, THE_WAKING_SHORES },
				["cr"] = 192472,	-- Pana
			}),
			fp(2805, {	-- Wingrest Embassy, The Waking Shores
				["cr"] = 192490,	-- Tixxa Mixxa
				["coord"] = { 76.0, 35.0, THE_WAKING_SHORES },
				["sourceQuests"] = {
					65444,	-- To the Dragon Isles! [H]
					67700,	-- To the Dragon Isles! [A]
					DF_ACCOUNT_CAMPAIGN_QUEST,
				},
				["sourceQuestNumRequired"] = 1,
			}),
		}),
	}),
})));
