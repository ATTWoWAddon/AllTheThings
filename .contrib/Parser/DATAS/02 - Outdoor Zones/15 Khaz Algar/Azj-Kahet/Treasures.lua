---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(AZJ_KAHET, {
		n(TREASURES, {
			o(446419, {	-- Concealed Contraband
				["coord"] = { 34.0, 61.0, AZJ_KAHET },
				["questID"] = 82525,
			}),
			o(455665, {	-- Convoy Treasure
				["coords"] = {
					{ 43.6, 31.5, AZJ_KAHET },
					{ 43.6, 39.8, AZJ_KAHET },
				},
				["questID"] = 83772,
				["isWeekly"] = true,
			}),
			o(446097, {	-- Disturbed Soil
				["coord"] = { 67.4, 90.7, AZJ_KAHET },
				["questID"] = 82718,
				["groups"] = {
					i(224816),	-- Nerubian Almanac
				},
			}),
			o(446404, {	-- Memory Cache
				["description"] = "Interact with Black Blood Extractors in area or stand in Black Blood pools until you reach at least 50 Unseeming Shift debuff to see Corrupted Memory near the cache. Kill it to obtain key for cache.",
				["coord"] = { 62.7, 87.9, AZJ_KAHET_LOWER },
				["questID"] = 82520,
				["crs"] = { 223908 },	-- Corrupted Memory
				["groups"] = {
					i(223870),	-- Cache Key
					i(225544),	-- Mind Slurp (PET!)
				},
			}),
			o(446140, {	-- Missing Scouts Pack
				["coord"] = { 38.8, 37.2, AZJ_KAHET },
				["questID"] = 82722,
			}),
			o(446101, {	-- Nerubian Offerings
				["description"] = "Below the terrace, hanging from the ceiling.",
				["coord"] = { 31.6, 20.7, NERUBAR },
				["questID"] = 82720,
			}),
			o(446423, {	-- Nest Egg
				["description"] = "Above on a web, near the ceiling.",
				["coord"] = { 49.5, 43.73, AZJ_KAHET },
				["questID"] = 82529,
				["groups"] = {
					i(221760),	-- Pillarnest Bonedrinker (PET!)
				},
			}),
			o(446135, {	-- Niffen Stash
				["description"] = "Below, hanging from a bridge.",
				["coord"] = { 54.5, 50.81, AZJ_KAHET },
				["questID"] = 82721,
			}),
			o(445360, {	-- Pilfered Loot
				["description"] = "Respawn timer around 5 minutes.",
				["coords"] = {	-- Spawn points shared with Stashed Loot
					{ 22.9, 50.3, AZJ_KAHET },	-- Inside Wildcamp Or'lay
					{ 76.4, 58.1, AZJ_KAHET },	-- Inside the cave in Mmarl
				},
			}),
			o(445275, {	-- Royal Sureki Strongbox
				["description"] = "Has a chance to spawn instead of Sureki Strongbox randomly throughout the zone.",
				["maps"] = { AZJ_KAHET },
			}),
			o(446299, {	-- Silk-spun Supplies
				-- ["description"] = "Finishing questID 78383 (Strategic Edge) make it spawn",
				["coord"] = { 67.5, 27.5, AZJ_KAHET },
				["questID"] = 82719,
			}),
			o(444844, {	-- Stashed Loot
				["description"] = "Respawn timer around 5 minutes.",
				["coords"] = {	-- Spawn points shared with Pilfered Loot
					{ 22.9, 50.3, AZJ_KAHET },	-- Inside Wildcamp Or'lay
					{ 76.4, 58.1, AZJ_KAHET },	-- Inside the cave in Mmarl
				},
			}),
			o(444800, {	-- Sureki Strongbox
				["description"] = "Spawns randomly throughout the zone.",
				["maps"] = { AZJ_KAHET },
			}),
			o(446421, {	-- Trapped Trove
				["description"] = "IT'S A TRAP! Navigate through the web traps to get to the treasure.",
				["coord"] = { 67.4, 74.4, NERUBAR },
				-- INFO: This is the HQT that triggers ingame when you loot it (Confirmed by Braghe, 2024-08-10)
				["questID"] = 82727,
				-- INFO: This is the HQT that Blizzard currently has in the DB2 file, but it doesn't match what triggers when you loot it
				-- ["questID"] = 82528,
				["groups"] = {
					i(222966),	-- Spinner (PET!)
				},
			}),
			-- The Weaver Treasures, didn't fire questID - repeatable?
			o(445277, {	-- Threadspun Cache
				["coords"] = {
					{ 34.6, 36.9, AZJ_KAHET },
					{ 35.7, 39.2, AZJ_KAHET },
					{ 50.1, 50.7, AZJ_KAHET },
					{ 51.8, 29.9, AZJ_KAHET },
				},
			}),
			o(444797, {	-- Threadspun Cache
				["coords"] = {
					{ 34.6, 36.8, AZJ_KAHET },
					{ 50.1, 50.7, AZJ_KAHET },
					{ 65.0, 23.9, AZJ_KAHET },
				},
			}),
			-- I know these three are out of order here but they are related to the "Weaving Supplies". -Exodius
			o(446437, {	-- Crimson Thread
				["description"] = "One of three Silk Scraps required to open 'Weaving Supplies'.",
				["coord"] = { 72.7, 39.7, AZJ_KAHET },
				["groups"] = {
					i(223902),	-- Crimson Silk Scrap
				},
			}),
			o(446438, {	-- Gold Thread
				["description"] = "One of three Silk Scraps required to open 'Weaving Supplies'.",
				["coord"] = { 74.2, 37.7, AZJ_KAHET },
				["groups"] = {
					i(223903),	-- Gold Silk Scrap
				},
			}),
			o(446435, {	-- Violet Thread
				["description"] = "One of three Silk Scraps required to open 'Weaving Supplies'.",
				["coord"] = { 74.8, 42.9, AZJ_KAHET },
				["groups"] = {
					i(223901),	-- Violet Silk Scrap
				},
			}),
			o(446420, {	-- "Weaving Supplies"
				["description"] = "Collect colored Silk Scrap from the nearby platform in order to open the treasure chest.",
				["questID"] = 82527,
				["coord"] = { 78.6, 33.2, AZJ_KAHET },
				["cost"] = {
					{"i", 223902, 1},	-- Crimson Silk Scrap
					{"i", 223903, 1},	-- Gold Silk Scrap
					{"i", 223901, 1},	-- Violet Silk Scrap
				},
				["groups"] = {
					i(225347),	-- Web-Vandal's Spinning Wheel (TOY!)
				},
			}),
			-- achievement
			o(454335, {	-- Entomological Essay on Grubs, Volume 1
				["coord"] = { 40.1, 39.8, AZJ_KAHET },
			}),
			o(454336, {	-- Entomological Essay on Grubs, Volume 2
				["coord"] = { 39.8, 40.5, AZJ_KAHET },
			}),
			o(454338, {	-- Entomological Essay on Grubs, Volume 3
				["coord"] = { 39.1, 42.6, AZJ_KAHET },
			}),
			o(454343, {	-- Ethos of War, Part 1
				["coord"] = { 63.0, 31.2, AZJ_KAHET },
			}),
			o(454344, {	-- Ethos of War, Part 2
				["coord"] = { 66.7, 31.3, AZJ_KAHET },
			}),
			o(454348, {	-- Ethos of War, Part 3
				["coord"] = { 48.9, 24.0, AZJ_KAHET },
			}),
			o(454350, {	-- Ethos of War, Part 4
				["coord"] = { 43.3, 25.6, AZJ_KAHET },
			}),
			o(454320, {	-- Queen Anub'izek
				["coord"] = { 37.1, 32.8, NERUBAR },
			}),
			o(454313, {	-- Queen Xekatha
				["coord"] = { 38.3, 35.4, NERUBAR },
			}),
			o(454316, {	-- Queen Zaltra
				["coord"] = { 38.4, 32.3, NERUBAR },
			}),
			o(454328, {	-- Strands of Memory
				["coord"] = { 27.7, 54.6, NERUBAR },
			}),
			o(456928, {	-- Treatise on Forms: Ascended
				["coord"] = { 78.0, 41.0, NERUBAR },
			}),
			o(456927, {	-- Treatise on Forms: Lords
				["coord"] = { 23.6, 51.1, NERUBAR },
			}),
			o(454332, {	-- Treatise on Forms: Sages
				["coord"] = { 38.2, 39.1, NERUBAR },
			}),
			o(454330, {	-- Treatise on Forms: Skitterlings
				["coord"] = { 38.5, 37.7, NERUBAR },
			}),
			n(222634, {	-- Forgotten Shadecaster
				["coord"] = { 58.4, 89.5, AZJ_KAHET },
				["questID"] = 82079,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			n(222369, {	-- Kah'teht
				["coord"] = { 75.4, 33.2, AZJ_KAHET },
				["questID"] = 82069,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			n(222381, {	-- Mad Nerubian
				["coord"] = { 54.1, 18.9, AZJ_KAHET },
				["questID"] = 82067,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			n(222304, {	-- Neglected Shadecaster
				["coord"] = { 8.5, 30.6, NERUBAR },
				["questID"] = 82085,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			n(222283, {	-- Weathered Shadecaster
				["coord"] = { 71.1, 62.3, AZJ_KAHET },
				["questID"] = 82082,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
		}),
	}),
}));
