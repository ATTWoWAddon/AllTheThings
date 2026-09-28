---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(SIREN_ISLE, {
		n(TREASURES, {
			o_repeated({	-- Runed Storm Cache:CollectedThings
				["groups"] = {
					o(474822, {	-- Runed Storm Cache (non storm id)
						-- TBD if listing coords is viable or not, may be that these make for good iron farm
						["coords"] = {
							{ 30.9, 72.3, SIREN_ISLE },
							{ 39.2, 44.1, SIREN_ISLE },
							{ 42.3, 46.0, SIREN_ISLE },
							{ 45.0, 62.6, SIREN_ISLE },
							{ 49.1, 58.2, SIREN_ISLE },
							{ 49.3, 17.2, SIREN_ISLE },
							{ 50.1, 12.5, SIREN_ISLE },
							{ 51.9, 65.6, SIREN_ISLE },
							{ 59.7, 20.6, SIREN_ISLE },
						},
					}),
					o(500407, {	-- Runed Storm Cache (storm id)
						-- TBD if listing coords is viable or not, may be that these make for good iron farm
						["coords"] = {
							-- The Forgotten Vault
							{ 28.5, 73.5, 2375 },
							{ 64.1, 50.8, 2375 },
							-- Siren Isle
							{ 61.6, 61.5, SIREN_ISLE },
						},
					}),
				},
			}),
			o_repeated({	-- Seafarer's Cache
				-- ["description"] = "Requires a character to have completed the Dipping a Toe quest at least once in order for chests to spawn on the map.",
				["groups"] = {
					i(233501, {	-- Sandy Snapdragon Treat (CI!)
						["description"] = "You must have the Prismatic Snapdragon Mount before this can drop.",
					}),
					i(234231),	-- Technique: Glyph of the Admiral's Pistol Shot (RECIPE!)
					o(494499),	-- Seafarer's Cache
					o(500682),	-- Seafarer's Cache
					o(500683),	-- Seafarer's Cache
					o(500684),	-- Seafarer's Cache
					o(500685),	-- Seafarer's Cache
					o(500686),	-- Seafarer's Cache
				},
			}),
			o(505503, {	-- Ashvane Issued Workboots
				["coord"] = { 41.7, 45.9, SIREN_ISLE },
				["questID"] = 86766,
				["lockCriteria"] = { 1, "sourceID", 231365 },
				["groups"] = {
					i(233916),	-- Ashvane Issued Workboots (COSMETIC!)
				},
			}),
			o(505510, {	-- Barnacle-Encrusted Chest
				["coord"] = { 74.1, 53.2, SIREN_ISLE },
				["questID"] = 86768,
				["lockCriteria"] = { 1, "sourceID", 231359 },
				["groups"] = {
					i(233910),	-- Salt-Stained Sweatcap (COSMETIC!)
				},
			}),
			o(465272, {	-- Empty Kaja'Cola Can
				["coord"] = { 60.8, 62.9, SIREN_ISLE },
				["groups"] = {
					i(228665),	-- Empty Kaja'Cola (QS!)
				},
			}),
			o(505505, {	-- Iron Mining Pick
				["description"] = "In cave.",
				["coord"] = { 37.0, 53.1, SIREN_ISLE },
				["questID"] = 87446,
				["lockCriteria"] = { 1, "sourceID", 231404 },
				["groups"] = {
					i(233955),	-- Iron Mining Pick (COSMETIC!)
				},
			}),
			o(505504, {	-- Kul Tiran Lumberer's Hatchet
				["coord"] = { 40.2, 41.8, SIREN_ISLE },
				["questID"] = 86764,
				["groups"] = {
					i(233957),	-- Kul Tiran Lumberer's Hatchet (COSMETIC!)
				},
			}),
			o(505506, {	-- Minnow's Favorite Blade
				["description"] = "On the 2nd floor, at the base of the ceiling. It has a large interact range, you can reach it from the railing.",
				["coord"] = { 39.3, 53.8, SIREN_ISLE },
				["questID"] = 86767,
				["groups"] = {
					i(233831),	-- Minnow's Favorite Blade (COSMETIC!)
				},
			}),
			o(494475, {	-- Rune-Speared Spear
				["coord"] = { 57.9, 78.5, SIREN_ISLE },
				["groups"] = {
					i(232439),	-- Rune-Seared Spear (QS!)
				},
			}),
			o(505476, {	-- Stone Carver's Scramseax
				["description"] = "Requires a buff from the Radiant Citrine laying on the ground in the middle room in the back of the Forgotten Vault. With the granted buff you can obtain this treasure in the left room.",
				["coords"] = {
					{ 32.2, 79.3, 2375 },	-- Radiant Citrine
					{ 26.5, 23.4, 2375 },	-- Treasure
				},
				["questID"] = 86732,
				["groups"] = {
					i(233834),	-- Stone Carver's Scramseax (COSMETIC!)
				},
			}),
			o(500697, {	-- Well Loved Squeaky Toy
				["description"] = "On the 2nd floor, in the back corner by the wall.",
				["coord"] = { 39.3, 54.2, SIREN_ISLE },
				["groups"] = {
					i(233027),	-- Well Loved Squeaky Toy
				},
			}),
		}),
	}),
}));
