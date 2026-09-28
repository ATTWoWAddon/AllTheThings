---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(OHNAHRAN_PLAINS, {
		n(ZONE_DROPS, {
			i(199790, {	-- Makko's Journal Cover
				["crs"] = {
					195960,	-- Beguiled Aquamancer
					195962,	-- Captivated Shellwarden
					196048,	-- Enraptured Hunter
					195918,	-- Enthralled Shellcracker
					195961,	-- Mesmerized Healer
				},
			}),
			i(191127, {	-- Medallion of a Fallen Friend
				["cr"] = 186678,	-- Chief Grrlgilmesh
				["coord"] = { 82.0, 31.4, OHNAHRAN_PLAINS },
			}),
			i(200196),	-- Nokhud Battle Barding
			i(200184),	-- Nokhud Battle Helm
			i(200194),	-- Nokhud Battle Tunic
			i(200201, {	-- Nokhud Battlegear
				["cost"] = {
					{ "i", 200196, 1 },	-- 1x Nokhud Battle Barding
					{ "i", 200184, 1 },	-- 1x Nokhud Battle Helm
					{ "i", 200194, 1 },	-- 1x Nokhud Battle Tunic
				},
			}),
			i(201934, {	-- Nokhud Whittling Knife
				["crs"] = {
					192226,	-- Ganmat the Wise
					191843,	-- Guard Bahir
					187299,	-- Nokhud Brute
					195761,	-- Nokhud Commander
					185907,	-- Sirena the Fangbreaker
					197650,	-- "Tarolekk, the Stomper"
					192223,	-- Zaphil the Defiant
				}
			}),
			i(201439, {	-- Renewed Dream
				["cost"] = { { "i", 201437, 5 } },	-- 5x Slumbering Dream Fragment
				["groups"] = {
					i(201469),	-- Emerald Green Apple
				},
			}),
			i(201437),	-- Slumbering Dream Fragment
			i(194031, {	-- Stormtouched Shards
				["cr"] = 191541,	-- Craggy Stag
				["coord"] = { 82.9, 63.5, OHNAHRAN_PLAINS },
			}),
			i(198904),	-- Technique: Windborne Velocidrake: Windswept Pattern (RECIPE!)
		}),
	}),
})));
