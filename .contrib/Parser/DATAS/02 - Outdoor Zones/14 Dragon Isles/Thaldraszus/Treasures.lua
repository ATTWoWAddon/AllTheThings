---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THALDRASZUS, {
		n(TREASURES, {
			o(381731, {	-- A Timely Message
				["coord"] = { 60.1, 85.0, THALDRASZUS },
			}),
			n(196172, {	-- Acorn Harvester
				["description"] = "Bring nearby Acorn to Tree.",
				["coord"] = { 49.4, 63.1, THALDRASZUS },
				["questID"] = 70611,
				["g"] = {
					i(193066),	-- Chestnut (PET!)
				},
			}),
			o(380867, {	-- Amber Gem Cluster
				["coord"] = { 52.6, 76.7, THALDRASZUS },
				["questID"] = 70408,
				["cost"] = { { "i", 198852, 1 }, },	-- 1x Yennu's Map
				["g"] = {
					i(200863),	-- Glimmering Nozdorite Cluster
					i(194651),	-- Design: Jeweled Amber Whelpling (RECIPE!)
				},
			}),
			o(381735, {	-- Caretaker's Notes
				["coord"] = { 62.4, 15.9, THALDRASZUS },
			}),
			o(381223, {	-- Cracked Hourglass
				["description"] = "In a Cave.",
				["coord"] = { 33.9, 76.9, THALDRASZUS },
				["questID"] = 70607,
				["cost"] = { { "i", 199068, 1 }, },	--1xTime-Lost Memo
			}),
			o(381094, {	-- Elegant Canvas Brush
				["coord"] = { 60.2, 41.6, THALDRASZUS },
				["questID"] = 70609,
				["g"] = {
					i(203206),	-- Elegant Canvas Brush
				},
			}),
			o(380429, {	-- Golden Claw
				["coord"] = { 38.8, 45.01, THALDRASZUS },
				["description"] = "Underneath the dragon statue.",
				["g"] = {
					i(198540),	-- Golden Claw
				},
			}),
			o(381733, {	-- Guardian Wings
				["coord"] = { 52.4, 38.8, THALDRASZUS },
			}),
			o(381732, {	-- Keeper's Blessing
				["coord"] = { 58.2, 58.1, THALDRASZUS },
			}),
			o(381730, {	-- Mighty Ducks
				["coord"] = { 42.8, 70.4, THALDRASZUS },
			}),
			o(381361, {	-- Precious Stone Fragment
				["coord"] = { 57.1, 64.6, THALDRASZUS },
				["description"] = "Underneath the right foot of the titan statue.",
				["g"] = {
					i(199893),	-- Precious Stone Fragment
				},
			}),
			o(381107, {	-- Sand Pile
				["coord"] = { 58.2, 80.1, THALDRASZUS },
				["questID"] = 70608,
				["cost"] = { { "i", 199069, 1 }, },	--1xYennu's Map
			}),
			n(198604, {	-- Strange Bear Cub
				["coord"] = { 52.5, 83.6, THALDRASZUS },
				["questID"] = 72355,
				["g"] = {
					i(201463),	-- Cubbly (PET!)
				},
			}),
			o(381216, {	-- Surveyor's Magnifying Glass
				["coord"] = { 64.8, 16.5, THALDRASZUS },
				["questID"] = 70610,
				["g"] = {
					i(193036),	-- Left-Handed Magnifying Glass
				},
			}),
			o(410833, {	-- The Reforging of the Tyr's Guard
				["sourceQuests"] = { 77344 },	-- Time to Process
				["timeline"] = { ADDED_10_2_0 },
				["coord"] = { 60.8, 63.8, THALDRASZUS },
				["questID"] = 78330,
				["g"] = {
					i(210321),	-- The Reforging of the Tyr's Guard [book]
				},
			}),
			o(376578, {	-- Titan Chest
				["coords"] = {
					{ 35.3, 37.0, THALDRASZUS },
					{ 34.1, 73.1, THALDRASZUS },
					{ 34.3, 66.0, THALDRASZUS },
					{ 34.7, 67.0, THALDRASZUS },
					{ 35.8, 75.4, THALDRASZUS },
					{ 35.8, 75.5, THALDRASZUS },
					{ 35.9, 67.3, THALDRASZUS },
					{ 37.7, 51.1, THALDRASZUS },
					{ 37.7, 69.8, THALDRASZUS },
					{ 38.1, 53.0, THALDRASZUS },
					{ 38.7, 53.4, THALDRASZUS },
					{ 38.8, 44.8, THALDRASZUS },
					{ 38.9, 46.1, THALDRASZUS },
					{ 41.2, 45.2, THALDRASZUS },
					{ 46.0, 72.1, THALDRASZUS },
					{ 48.3, 68.9, THALDRASZUS },
					{ 48.8, 75.3, THALDRASZUS },
					{ 48.9, 71.0, THALDRASZUS },
					{ 49.7, 76.0, THALDRASZUS },
					{ 51.1, 74.7, THALDRASZUS },
					{ 57.1, 80.8, THALDRASZUS },
					{ 57.1, 82.4, THALDRASZUS },
					{ 57.1, 82.5, THALDRASZUS },
					{ 57.6, 64.4, THALDRASZUS },
					{ 57.6, 64.5, THALDRASZUS },
					{ 57.7, 80.4, THALDRASZUS },
					{ 57.7, 80.5, THALDRASZUS },
					{ 59.3, 56.7, THALDRASZUS },
					{ 59.9, 55.9, THALDRASZUS },
					{ 60.0, 54.7, THALDRASZUS },
					{ 60.6, 62.2, THALDRASZUS },
					{ 61.9, 61.8, THALDRASZUS },
				},
				["g"] = {
					i(201458),	-- Aegis of Tyrhold
					i(201460),	-- Gavel of Tyrhold
					i(201055),	-- Tyrhold Bindings
					i(201455),	-- Tyrhold Broadsword
					i(201456),	-- Tyrhold Carbine
					i(201054),	-- Tyrhold Drape
					i(201048),	-- Tyrhold Epaulets
					i(201053),	-- Tyrhold Gloves
					i(201050),	-- Tyrhold Leggings
					i(201461),	-- Tyrhold Pinnacle
					i(201457),	-- Tyrhold Relic
					i(201049),	-- Tyrhold Robe
					i(201056),	-- Tyrhold Sash
					i(201459),	-- Tyrhold Shortsword
					i(201051),	-- Tyrhold Slippers
					i(201052),	-- Tyrhold Visage
				},
			}),
			o(381734, {	-- Together Bound
				["coord"] = { 58.4, 67.8, THALDRASZUS },
			}),
			o(381736, {	-- Valdrakken
				["coord"] = { 57.1, 81.4, VALDRAKKEN },
			}),
			o(381108, {	-- Yennu's Map
				["coord"] = { 54.9, 75.4, THALDRASZUS },
				["g"] = {
					i(199069),	-- Yennu's Map (CI!)
				},
			}),
		}),
	}),
})));