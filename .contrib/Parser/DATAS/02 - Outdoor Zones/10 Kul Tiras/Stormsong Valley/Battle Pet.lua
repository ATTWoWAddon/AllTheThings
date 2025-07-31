---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(STORMSONG_VALLEY, {
		petbattle(filter(BATTLE_PETS, {
			["sym"] = {{"select","speciesID",
				2399,	-- Hermit Crab (PET!)
				2381,	-- Shack Crab (PET!)
			}},
			["groups"] = {
				pet(2374, {	-- Freshwater Crawler (PET!)
					["coord"] = { 65.6, 67.2, STORMSONG_VALLEY },
				}),
				pet(2379, {	-- Honey Bee (PET!)
					["description"] = "Found mostly around these coords.",
					["coords"] = {
						{ 74.2, 69.6, STORMSONG_VALLEY },
						{ 45.6, 61.2, STORMSONG_VALLEY },
						{ 50.6, 50.4, STORMSONG_VALLEY },
					},
				}),
				pet(2373, {	-- River Frog (PET!)
					["description"] = "Best found along the waterways above Sagehold. Coords are a route.",
					["coords"] = {
						{ 64.6, 44.6, STORMSONG_VALLEY },
						{ 63.2, 37.2, STORMSONG_VALLEY },
						{ 63.2, 30.0, STORMSONG_VALLEY },
						{ 56.6, 30.2, STORMSONG_VALLEY },
					},
				}),
				pet(2378, {	-- River Otter (PET!)
					["description"] = "Best found along the waterways above Sagehold. Coords are a route. Also found NW of Arom's Stand, Drustvar.",
					["coords"] = {
						{ 64.6, 44.6, STORMSONG_VALLEY },
						{ 63.2, 37.2, STORMSONG_VALLEY },
						{ 63.2, 30.0, STORMSONG_VALLEY },
						{ 56.6, 30.2, STORMSONG_VALLEY },
						{ 32.8, 43.4, DRUSTVAR },

					},
				}),
				pet(2377, {	-- Sandyback Crawler (PET!)
					["description"] = "Found mostly around these coords.",
					["coords"] = {
						{ 51.0, 24.6, STORMSONG_VALLEY },
						{ 65.6, 49.8, STORMSONG_VALLEY },
						{ 86.4, 46.4, TIRAGARDE_SOUND },
					}
				}),
				pet(2372, {	-- Shadowback Crawler (PET!)
					["coords"] = {
						{ 70.6, 32.0, STORMSONG_VALLEY },
						{ 75.0, 39.6, STORMSONG_VALLEY },
					},
				}),
				pet(2375, {	-- Vale Marmot (PET!)
					["description"] = "Found all around Stormsong Valley."
				}),
				pet(2376, {	-- Valley Chicken (PET!)
					["description"] = "Best found along a small route using given coords.",
					["coords"] = {
						{ 43.8, 62.6, STORMSONG_VALLEY },
						{ 44.8, 65.8, STORMSONG_VALLEY },
						{ 45.2, 61.6, STORMSONG_VALLEY },
						{ 48.0, 61.6, STORMSONG_VALLEY },
					}
				}),
			},
		})),
	}),
})));
