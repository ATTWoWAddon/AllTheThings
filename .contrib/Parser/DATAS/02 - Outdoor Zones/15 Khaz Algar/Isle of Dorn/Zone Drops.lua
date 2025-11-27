---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(ISLE_OF_DORN, {
		n(ZONE_DROPS, {
			i(224025, {	-- Crackling Shard
				["description"] = "Shards can drop from any mob, but rare mobs have an increased chance.\n\nBest Route is killing the following rare mobs:\nBloodmaw\nEmperor Pitfang\nRustal\nSandres\nSpringbubble\nWarphorn\n\nShards continue to drop even when you already killed the rare for the day.",
				["groups"] = {
					i(224026, {	-- Storm Vessel (CI!)
						["cost"] = {{"i", 224025, 10}},	-- 10x Crackling Shard
					}),
				},
			}),
			i(222906, {	-- Plump Snapcrab
				["crs"] = { 223159 },	-- Plump Snapcrab
				["coord"] = { 40.6, 59.9, ISLE_OF_DORN },
			}),
			i(225557),	-- Sizzling Cinderpollen
		}),
	}),
}));
