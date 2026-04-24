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
			i(201028, {	-- Nokhudon Boots
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			i(201027, {	-- Nokhudon Breeches
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			i(201031, {	-- Nokhudon Cloak
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			i(201034, {	-- Nokhudon Girdle
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			i(201030, {	-- Nokhudon Grips
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			i(201025, {	-- Nokhudon Harness
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			i(201029, {	-- Nokhudon Hood
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			i(201024, {	-- Nokhudon Mantle
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			i(201032, {	-- Nokhudon Wraps
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			-- Weps
			i(201382, {	-- Centaur Warglaives
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			i(201384, {	-- Centaur Tracker's Javelin
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			i(201381, {	-- Nokhud Battle-Knife
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			i(201380, {	-- Nokhud Hunter's Bow
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			i(201385, {	-- Nokhud Centaur Warstaff
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			i(201383, {	-- Nokhud Stalker's Spear
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
			}),
			i(201934, {	-- Nokhud Whittling Knife
				["description"] = "Drops from Nokhud Creatures or Clan Chests in Ohn'ahran Plains.",
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
