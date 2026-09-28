---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, {
	n(TREASURES, sharedData({
		["description"] = "Does not show on minimap.\nEach 'cluster' of nearby coords has an independent spawn.\nPersists 90 sec once opened.\nRespawn: 60m",
	},{
		o(381041, {	-- Frostbound Chest
			["coords"] = {
				{ 54.0, 61.5, THALDRASZUS },
				{ 55.2, 62.9, THALDRASZUS },
				{ 56.2, 64.4, THALDRASZUS },
				{ 56.2, 64.5, THALDRASZUS },
				{ 54.8, 80.2, THE_WAKING_SHORES },
				{ 55.2, 81.1, THE_WAKING_SHORES },
				{ 55.5, 83.5, THE_WAKING_SHORES },
				{ 55.6, 83.4, THE_WAKING_SHORES },
				{ 48.4, 63.8, THE_AZURE_SPAN },
				{ 49.7, 63.9, THE_AZURE_SPAN },
				{ 51.3, 60.8, THE_AZURE_SPAN },
			},
			["groups"] = {
				i(201442),	-- Primal Revenant's Frostblade
				i(201443),	-- Primal Revenant's Icewall
			},
		}),
		-- Appears to be a rare spawn of a Magic Bound Chest, not reliable to farm/list
		-- o(377540, {	-- Ice Bound Chest
		-- 	["coords"] = {
		-- 		{ 31.4, 71.6, OHNAHRAN_PLAINS },
		-- 		{ 31.5, 71.6, OHNAHRAN_PLAINS },
		-- 		{ 38.9, 55.9, OHNAHRAN_PLAINS },
		-- 		{ 39.3, 67.9, OHNAHRAN_PLAINS },
		-- 		{ 53.8, 57.2, OHNAHRAN_PLAINS },
		-- 		{ 55.0, 31.2, OHNAHRAN_PLAINS },
		-- 		{ 55.5, 50.3, OHNAHRAN_PLAINS },
		-- 		{ 61.0, 80.2, OHNAHRAN_PLAINS },
		-- 		{ 81.0, 80.8, OHNAHRAN_PLAINS },
		-- 		{ 82.6, 32.9, OHNAHRAN_PLAINS },
		-- 		{ 85.1, 66.4, OHNAHRAN_PLAINS },
		-- 		{ 22.6, 74.8, THE_WAKING_SHORES },
		-- 		{ 23.8, 90.9, THE_WAKING_SHORES },
		-- 		{ 30.4, 47.3, THE_WAKING_SHORES },
		-- 		{ 30.5, 47.2, THE_WAKING_SHORES },
		-- 		{ 36.2, 85.7, THE_WAKING_SHORES },
		-- 		{ 43.7, 61.5, THE_WAKING_SHORES },
		-- 		{ 51.7, 18.6, THE_WAKING_SHORES },
		-- 		{ 55.4, 45.0, THE_WAKING_SHORES },
		-- 		{ 62.9, 79.9, THE_WAKING_SHORES },
		-- 		{ 64.3, 42.9, THE_WAKING_SHORES },
		-- 		{ 72.2, 60.4, THE_WAKING_SHORES },
		-- 		{ 35.1, 70.4, THALDRASZUS },
		-- 		{ 35.1, 70.5, THALDRASZUS },
		-- 		{ 42.6, 66.6, THALDRASZUS },
		-- 		{ 42.9, 79.0, THALDRASZUS },
		-- 		{ 50.2, 52.0, THALDRASZUS },
		-- 		{ 53.0, 56.9, THALDRASZUS },
		-- 		{ 54.1, 83.9, THALDRASZUS },
		-- 		{ 54.7, 32.7, THALDRASZUS },
		-- 		{ 58.6, 67.5, THALDRASZUS },
		-- 		{ 61.3, 54.0, THALDRASZUS },
		-- 		{ 62.2, 71.8, THALDRASZUS },
		-- 		{ 9.1, 48.4, THE_AZURE_SPAN },
		-- 		{ 14.0, 29.9, THE_AZURE_SPAN },
		-- 		{ 29.9, 45.7, THE_AZURE_SPAN },
		-- 		{ 43.3, 62.6, THE_AZURE_SPAN },
		-- 		{ 49.2, 40.9, THE_AZURE_SPAN },
		-- 		{ 53.0, 66.1, THE_AZURE_SPAN },
		-- 		{ 65.7, 27.8, THE_AZURE_SPAN },
		-- 		{ 65.9, 55.6, THE_AZURE_SPAN },
		-- 		{ 72.3, 42.1, THE_AZURE_SPAN },
		-- 	},
		-- 	["sym"] = {{"select","itemID",
		-- 		201442,	-- Primal Revenant's Frostblade
		-- 		201443,	-- Primal Revenant's Icewall
		-- 	}},
		-- }),
		o(381043, {	-- Lightning Bound Chest
			["coords"] = {
				{ 22.4, 36.8, OHNAHRAN_PLAINS },
				{ 23.0, 36.5, OHNAHRAN_PLAINS },
				{ 58.1, 67.2, OHNAHRAN_PLAINS },
				{ 58.2, 64.3, OHNAHRAN_PLAINS },
				{ 59.3, 62.0, OHNAHRAN_PLAINS },
				{ 61.0, 64.7, OHNAHRAN_PLAINS },
			},
			["groups"] = {
				i(201447),	-- Primal Revenant's Breezeblade
				i(201448),	-- Primal Revenant's Windwall
			},
		}),
		o(381042, {	-- Simmering Chest
			["coords"] = {
				{ 35.6, 85.3, THALDRASZUS },
				{ 38.9, 85.1, THALDRASZUS },
				{ 39.9, 84.8, THALDRASZUS },
				{ 46.9, 60.3, THALDRASZUS },
				{ 48.9, 58.5, THALDRASZUS },
				{ 51.4, 60.9, THALDRASZUS },
				{ 73.2, 37.9, THE_AZURE_SPAN },
				{ 75.1, 37.4, THE_AZURE_SPAN },
				{ 76.5, 37.6, THE_AZURE_SPAN },
				{ 77.3, 41.2, THE_AZURE_SPAN },
				{ 78.3, 37.0, THE_AZURE_SPAN },
				{ 79.6, 38.2, THE_AZURE_SPAN },
				{ 68.0, 65.1, THE_WAKING_SHORES },
				{ 68.4, 62.5, THE_WAKING_SHORES },
				{ 69.0, 63.7, THE_WAKING_SHORES },
				{ 69.6, 65.5, THE_WAKING_SHORES },
			},
			["groups"] = {
				i(201445),	-- Primal Revenant's Emberblade
				i(201446),	-- Primal Revenant's Firewall
			},
		}),
	})),
}))
