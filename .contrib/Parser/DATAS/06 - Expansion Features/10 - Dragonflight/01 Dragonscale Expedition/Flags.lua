-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
CARTOGRAPHERS_FLAG = createHeader({
	readable = "Cartographer's Flag",
	icon = 1723999,
	text = {
		en = WOWAPI_GetSpellName(382288),
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(DRAGONSCALE_EXPEDITION, {
		n(CARTOGRAPHERS_FLAG, bubbleDownSelf({ ["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 7 } }, {
			n(ACHIEVEMENTS, {
				ach(15890, {	-- Dragonscale Expedition: The Highest Peaks
					["description"] = "Requires Research Cartographer's Flag at Expedition Supply Kit.",
					["coords"] = {
						{ 73.4, 38.8, THE_WAKING_SHORES },
						{ 56.0, 45.3, THE_WAKING_SHORES },
						{ 43.4, 62.0, THE_WAKING_SHORES },
						{ 28.7, 47.7, THE_WAKING_SHORES },
						{ 54.8, 74.1, THE_WAKING_SHORES },
						{ 86.3, 39.3, OHNAHRAN_PLAINS },
						{ 57.8, 30.8, OHNAHRAN_PLAINS },
						{ 30.4, 36.4, OHNAHRAN_PLAINS },
						{ 28.3, 77.6, OHNAHRAN_PLAINS },
						{ 31.9, 27.0, THE_AZURE_SPAN },
						{ 46.1, 25.0, THE_AZURE_SPAN },
						{ 37.5, 66.2, THE_AZURE_SPAN },
						{ 63.1, 48.7, THE_AZURE_SPAN },
						{ 74.9, 43.2, THE_AZURE_SPAN },
						{ 77.4, 18.4, THE_AZURE_SPAN },
						{ 65.7, 75.0, THALDRASZUS },
						{ 64.6, 56.7, THALDRASZUS },
						{ 50.2, 81.6, THALDRASZUS },
						{ 46.1, 74.0, THALDRASZUS },
						{ 34.0, 84.9, THALDRASZUS },
						-- #if AFTER 10.0.7
						{ 54.6, 34.6, THE_FORBIDDEN_REACH },
						{ 36.9, 37.9, THE_FORBIDDEN_REACH },
						-- #endif
					},
				}),
			}),
			n(TREASURES, {
				-- Object IDs and quest IDs are put at random to each other.
				-- There seems to be no way of getting the correct object ID for the flags in game. (does not matter for ATT purpose)

				-- The Waking Shores
				o(381365, {	-- Dragonscale Expedition Flag
					["questID"] = 70823,
					["coord"] = { 56.0, 45.3, THE_WAKING_SHORES },
				}),
				o(381367, {	-- Dragonscale Expedition Flag
					["questID"] = 70824,
					["coord"] = { 73.4, 38.8, THE_WAKING_SHORES },
				}),
				o(381369, {	-- Dragonscale Expedition Flag
					["questID"] = 70825,
					["coord"] = { 43.4, 62.0, THE_WAKING_SHORES },
				}),
				o(381370, {	-- Dragonscale Expedition Flag
					["questID"] = 70826,
					["coord"] = { 28.7, 47.7, THE_WAKING_SHORES },
				}),
				o(381373, {	-- Dragonscale Expedition Flag
					["questID"] = 71204,
					["coord"] = { 54.8, 74.1, THE_WAKING_SHORES },
				}),

				-- Ohn'ahran Plains
				o(381375, {	-- Dragonscale Expedition Flag
					["questID"] = 70827,
					["coord"] = { 57.8, 30.8, OHNAHRAN_PLAINS },
				}),
				o(381377, {	-- Dragonscale Expedition Flag
					["questID"] = 71200,
					["coord"] = { 28.3, 77.6, OHNAHRAN_PLAINS },
				}),
				o(382079, {	-- Dragonscale Expedition Flag
					["questID"] = 71207,
					["coord"] = { 30.4, 36.4, OHNAHRAN_PLAINS },
				}),

				o(382086, {	-- Dragonscale Expedition Flag
					["questID"] = 71208,
					["coord"] = { 86.3, 39.3, OHNAHRAN_PLAINS },
				}),

				-- The Azure Span
				o(382092, {	-- Dragonscale Expedition Flag
					["questID"] = 71215,
					["coord"] = { 31.9, 27.0, THE_AZURE_SPAN },
				}),
				o(382094, {	-- Dragonscale Expedition Flag
					["questID"] = 71216,
					["coord"] = { 37.5, 66.2, THE_AZURE_SPAN },
				}),
				o(382101, {	-- Dragonscale Expedition Flag
					["questID"] = 71217,
					["coord"] = { 77.4, 18.4, THE_AZURE_SPAN },
				}),
				o(382103, {	-- Dragonscale Expedition Flag
					["questID"] = 71218,
					["coord"] = { 46.1, 25.0, THE_AZURE_SPAN },
				}),
				o(382105, {	-- Dragonscale Expedition Flag
					["questID"] = 71220,
					["coord"] = { 63.1, 48.7, THE_AZURE_SPAN },
				}),
				o(382107, {	-- Dragonscale Expedition Flag
					["questID"] = 71221,
					["coord"] = { 74.9, 43.2, THE_AZURE_SPAN },
				}),

				-- Thaldraszus
				o(382110, {	-- Dragonscale Expedition Flag
					["questID"] = 70024,
					["coord"] = { 46.1, 74.0, THALDRASZUS },
				}),
				o(382112, {	-- Dragonscale Expedition Flag
					["questID"] = 70039,
					["coord"] = { 50.2, 81.6, THALDRASZUS },
				}),
				o(382116, {	-- Dragonscale Expedition Flag
					["questID"] = 71222,
					["coord"] = { 34.0, 84.9, THALDRASZUS },
				}),
				o(382118, {	-- Dragonscale Expedition Flag
					["questID"] = 71223,
					["coord"] = { 65.7, 75.0, THALDRASZUS },
				}),
				o(382120, {	-- Dragonscale Expedition Flag
					["questID"] = 71224,
					["coord"] = { 64.6, 56.7, THALDRASZUS },
				}),

				-- The Forbidden Reach
				o(386106, {	-- Dragonscale Expedition Flag
					["questID"] = 73699,
					["coord"] = { 54.6, 34.6, THE_FORBIDDEN_REACH },
					["timeline"] = ADDED_10_0_7,
				}),
				o(386108, {	-- Dragonscale Expedition Flag
					["questID"] = 73700,
					["coord"] = { 36.9, 37.9, THE_FORBIDDEN_REACH },
					["timeline"] = ADDED_10_0_7,
				}),
			}),
		})),
	}),
})));