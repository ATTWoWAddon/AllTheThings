---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(OHNAHRAN_PLAINS, {
		n(TREASURES, {
			o(380860, {	-- Centaur Horn
				["coord"] = { 73.5, 56.2, OHNAHRAN_PLAINS },
				["questID"] = 70402,
				["g"] = {
					i(200869),	-- Ohn Lite Branded Horn (TOY!)
				},
			}),
			o(381981, {	-- Chest of the Flood
				["provider"] = { "o", 381712 },	-- Water-Bound Chest
				["questID"] = 71033,
				["coord"] = { 56.0, 78.7, OHNAHRAN_PLAINS },
				["isWeekly"] = true,
				["sym"] = {
					{"select", "itemID",
						201442,	-- Primal Revenant's Frostblade
						201443,	-- Primal Revenant's Icewall
						201028,	-- Nokhudon Boots
						201027,	-- Nokhudon Breeches
						201031,	-- Nokhudon Cloak
						201034,	-- Nokhudon Girdle
						201030,	-- Nokhudon Grips
						201025,	-- Nokhudon Harness
						201029,	-- Nokhudon Hood
						201024,	-- Nokhudon Mantle
						201032,	-- Nokhudon Wraps
						201382,	-- Centaur Warglaives
						201384,	-- Centaur Tracker's Javelin
						201381,	-- Nokhud Battle-Knife
						201380,	-- Nokhud Hunter's Bow
						201385,	-- Nokhud Centaur Warstaff
						201383,	-- Nokhud Stalker's Spear
					},
					{"select", "mapID",
						DRAGON_ISLES,
					},
					{"pop"},
					{"where", "headerID", ZONE_REWARDS},
					{"pop"},
					{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
				},
			}),
			o(376581, {	-- Clan Chest
				["coords"] = {
					{ 35.3, 37.0, OHNAHRAN_PLAINS },
					{ 25.0, 37.8, OHNAHRAN_PLAINS },
					{ 25.3, 37.4, OHNAHRAN_PLAINS },
					{ 31.3, 70.6, OHNAHRAN_PLAINS },
					{ 32.2, 68.1, OHNAHRAN_PLAINS },
					{ 32.4, 39.0, OHNAHRAN_PLAINS },
					{ 32.5, 38.9, OHNAHRAN_PLAINS },
					{ 32.7, 37.0, OHNAHRAN_PLAINS },
					{ 33.5, 42.4, OHNAHRAN_PLAINS },
					{ 33.5, 42.5, OHNAHRAN_PLAINS },
					{ 34.8, 37.0, OHNAHRAN_PLAINS },
					{ 35.0, 41.9, OHNAHRAN_PLAINS },
					{ 35.4, 65.8, OHNAHRAN_PLAINS },
					{ 36.0, 41.0, OHNAHRAN_PLAINS },
					{ 36.1, 41.7, OHNAHRAN_PLAINS },
					{ 49.4, 67.3, OHNAHRAN_PLAINS },
					{ 49.4, 67.7, OHNAHRAN_PLAINS },
					{ 49.5, 67.3, OHNAHRAN_PLAINS },
					{ 50.4, 66.4, OHNAHRAN_PLAINS },
					{ 50.5, 66.3, OHNAHRAN_PLAINS },
					{ 50.9, 66.5, OHNAHRAN_PLAINS },
					{ 71.9, 56.7, OHNAHRAN_PLAINS },
					{ 73.4, 56.1, OHNAHRAN_PLAINS },
					{ 73.5, 56.2, OHNAHRAN_PLAINS },
					{ 74.6, 39.2, OHNAHRAN_PLAINS },
					{ 74.7, 40.4, OHNAHRAN_PLAINS },
					{ 74.7, 40.5, OHNAHRAN_PLAINS },
					{ 75.2, 41.6, OHNAHRAN_PLAINS },
					{ 75.5, 40.4, OHNAHRAN_PLAINS },
					{ 75.5, 40.5, OHNAHRAN_PLAINS },
					{ 83.7, 53.4, OHNAHRAN_PLAINS },
					{ 83.7, 53.6, OHNAHRAN_PLAINS },
					{ 85.4, 54.7, OHNAHRAN_PLAINS },
					{ 85.5, 54.7, OHNAHRAN_PLAINS },
					{ 86.4, 50.7, OHNAHRAN_PLAINS },
					{ 86.4, 53.3, OHNAHRAN_PLAINS },
					{ 86.5, 50.7, OHNAHRAN_PLAINS },
					{ 86.5, 53.3, OHNAHRAN_PLAINS },
				},
				-- ["questID"] = ,
				["g"] = {
					i(201028),	-- Nokhudon Boots
					i(201027),	-- Nokhudon Breeches
					i(201031),	-- Nokhudon Cloak
					i(201034),	-- Nokhudon Girdle
					i(201030),	-- Nokhudon Grips
					i(201025),	-- Nokhudon Harness
					i(201029),	-- Nokhudon Hood
					i(201024),	-- Nokhudon Mantle
					i(201032),	-- Nokhudon Wraps
					-- Weps
					i(201382),	-- Centaur Warglaives
					i(201384),	-- Centaur Tracker's Javelin
					i(201381),	-- Nokhud Battle-Knife
					i(201380),	-- Nokhud Hunter's Bow
					i(201385),	-- Nokhud Centaur Warstaff
					i(201383),	-- Nokhud Stalker's Spear
				},
			}),
			o(378088, {	-- Crystalline Flower
				["description"] = "You need 5 flowers, but only 2 can be up at any given time. Realmhop recommended.\n\n",
				["coords"] = {
					{ 27.2, 45.6, OHNAHRAN_PLAINS },
					{ 26.61, 48.76, OHNAHRAN_PLAINS },
					{ 26.86, 47.33, OHNAHRAN_PLAINS },
					{ 27.58, 52.76, OHNAHRAN_PLAINS },
					{ 27.74, 50.84, OHNAHRAN_PLAINS },
					{ 29.35, 48.88, OHNAHRAN_PLAINS },
					{ 29.49, 51.66, OHNAHRAN_PLAINS },
					{ 30.50, 45.96, OHNAHRAN_PLAINS },
					{ 32.14, 46.93, OHNAHRAN_PLAINS },
				},
				["g"] = {
					i(195884, {	-- Crystalline Petals
						i(195542, {	-- Slumber Incense
						-- Cost?
						-- ["cost"] = { { "i", 195884, 5 }, },	-- Crystalline Petals
						}),
					}),
				},
			}),
			o(380991, {	-- Dirt Mound
				["coord"] = { 70.6, 35.4, OHNAHRAN_PLAINS },
				["questID"] = 67950,
				["cost"] = { { "i", 195453, 1 }, },	-- 1x Ludo's Stash Map
				["g"] = {
					i(199171, {	-- Slightly Chewed Duck Egg
						i(199172),	-- Viridescent Duck (PET!)
					}),
				},
			}),
			o(381707, {	-- Dreams in Emerald
				["coord"] = { 32.3, 51.3, OHNAHRAN_PLAINS },
			}),
			o(381575, {	-- Duck Trap Kit
				["coord"] = { 70.0, 64.0, OHNAHRAN_PLAINS },
				["description"] = "Found only when the Aylaag Camp is in this location. Used to summon Quackers the Terrible.",
				["g"] = {
					i(194740, {	-- Duck Trap Kit
						i(194712, {	-- Empty Duck Trap
							i(194739),	-- Trapped Duck
						}),
					}),
				},
			}),
			o(376416, {	-- Ellam's Favorite Toys
				["coord"] = { 78.3, 29.2, OHNAHRAN_PLAINS },
				["description"] = "Found only when Aylaag Camp is up in this area, pet Ellam until progress bar is at 100%, provides Maruuk Centaur reputation.",
			}),
			o(378047, {	-- Emerald Chest
				["coords"] = {
					{ 67.03, 43.72, OHNAHRAN_PLAINS },	-- Stone
					{ 66.97, 50.36, OHNAHRAN_PLAINS },	-- Trasure
				},
				["description"] = "Combine 5 Crystalline Petals into the Slumber Incense.\nTalk to the Ancient Stone (Northern Waypoint) to gain the Lucid Dreaming Buff for 20 seconds.\nWhen under the effect of this buff you can walk on water and see colorful flowers on the river near the Ancient Stone, walking over a flower will refresh the buff.\nYou need to reach the cave at the southern Waypoint before the buff expires to open the Emerald Chest, which contains the Everliving Wooden Key.\n|cFFFFFFFFYou should be mounted for this.|r",
				["cost"] = { { "i", 195542, 1 }, },	-- Slumber Incense
				["g"] = {
					i(195041),	-- Everliving Wooden Key
				},
			}),
			o(380847, {	-- Emerald Gem Cluster
				["coord"] = { 33.2, 55.3, OHNAHRAN_PLAINS },
				["questID"] = 70391,
				["cost"] = { { "i", 198843, 1 }, },	-- 1x Emerald Gardens Explorer's Notes
				["g"] = {
					i(200865),	-- Glimmering Ysemerald Cluster
					i(194648),	-- Design: Jeweled Emerald Whelpling (RECIPE!)
				},
			}),
			o(377536, {	-- Enriched Soil Pile
				["coords"] = {
					{ 49.7, 68.7, OHNAHRAN_PLAINS },
					{ 50.5, 70.2, OHNAHRAN_PLAINS },
					{ 52.1, 70.6, OHNAHRAN_PLAINS },
					{ 52.7, 65.8, OHNAHRAN_PLAINS },
					{ 52.8, 69.9, OHNAHRAN_PLAINS },
					{ 53.0, 72.0, OHNAHRAN_PLAINS },
					{ 53.3, 68.1, OHNAHRAN_PLAINS },
					{ 53.8, 67.4, OHNAHRAN_PLAINS },
					{ 54.1, 71.5, OHNAHRAN_PLAINS },
					{ 54.6, 69.4, OHNAHRAN_PLAINS },
				},
				["g"] = { i(194426) },	-- Enriched Soil
			}),
			o(378010, {	-- Forgotten Dragon Treasure
				["questID"] = 74399,
				["coord"] = { 53.3, 68.9, OHNAHRAN_PLAINS },
				["cost"] = { { "i", 195041, 1 }, },	-- 1x Everliving Wooden Key
				["g"] = {
					i(197585),	-- Windborne Velocidrake: Maned Back (MM!)
				}
			}),
			o(380842, {	-- Gold Coin
				["coord"] = { 82.3, 73.4, OHNAHRAN_PLAINS },
				["questID"] = 70379,
				["g"] = {
					i(199338),	-- Copper Coin of the Isles
				},
			}),
			o(377900, {	-- Nokhud Warspear
				["coord"] = { 32.5, 38.2, OHNAHRAN_PLAINS },
				["questID"] = 67049,
				["cost"] = { { "i", 194540, 1 }, },	-- 1x Nokhud Armorer's Notes
				["g"] = {
					i(200861),	-- Stolen Shikaar Warspear
				},
			}),
			o(381708, {	-- The First Kurnal
				["coord"] = { 67.0, 43.7, OHNAHRAN_PLAINS },
			}),
			o(381705, {	-- The Gnoll Wars
				["coord"] = { 43.5, 56.5, OHNAHRAN_PLAINS },
			}),
			o(380859, {	-- Tuskarr Toy Boat
				["coord"] = { 52.0, 58.3, OHNAHRAN_PLAINS },
				["questID"] = 70400,
				["g"] = {
					i(200876),	-- Yennu's Toy Boat
				},
			}),
			o(380602, {	-- Wind-Blessed Hide
				["coord"] = { 86.2, 53.6, OHNAHRAN_PLAINS },
				-- ["questID"] = 70300,
				["g"] = {
					i(198696),	-- Wind-Blessed Hide
				}
			}),
			o(381709, {	-- Wind, Wood, Water
				["coord"] = { 38.6, 66.7, OHNAHRAN_PLAINS },
			}),
			o(381706, {	-- Your Dreamer
				["coord"] = { 24.7, 65.9, OHNAHRAN_PLAINS },
			}),
		}),
	}),
})));