---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(THE_RINGING_DEEPS, {
		n(TREASURES, {
			o(433773, {	-- Buried Treasire
				["coord"] = { 50.8, 52.4, THE_RINGING_DEEPS },
				["questID"] = 80488,
				["groups"] = {
					i(217959),	-- Incomplete Painting (gray)
				},
			}),
			o(433774, {	-- Buried Treasure
				["coord"] = { 50.7, 52.45, THE_RINGING_DEEPS },
				["questID"] = 80489,
				["groups"] = {
					i(217969),	-- Bomb Debris (gray)
				},
			}),
			o(433757, {	-- Buried Treasure
				["coord"] = { 50.7, 53.0, THE_RINGING_DEEPS },
				["questID"] = 80487,
				["groups"] = {
					i(217958),	-- Used Socks (gray)
				},
			}),
			o(433776, {	-- Buried Treasure
				["coord"] = { 50.37, 52.84, THE_RINGING_DEEPS },
				["questID"] = 80490,
				["groups"] = {
					i(217962),	-- Dud Bomb (gray)
				},
			}),
			o(433778, {	-- Buried Treasure
				["coord"] = { 50.3, 53.3, THE_RINGING_DEEPS },
				["groups"] = {
					i(217960),	-- Forgotten Key
				},
			}),
			-- Repeatable
			o(452710, {	-- Brimming Deep-Lost Satchel
				["description"] = "Spawns randomly throughout the zone.",
				["maps"] = { THE_RINGING_DEEPS },
			}),
			o(452706, {	-- Deep-Lost Satchel
				["description"] = "Spawns randomly throughout the zone.",
				["maps"] = { THE_RINGING_DEEPS },
			}),
			o(452696, {	-- Machine Speaker's Reliquary
				["description"] = "Spawns randomly throughout the zone.",
				["maps"] = { THE_RINGING_DEEPS },
			}),
			o(446495, {	-- Pile of Refuse
				["description"] = "Spawns randomly throughout the zone.",
				["maps"] = { THE_RINGING_DEEPS },
			}),
			--
			o(441358, {	-- A Skull on a Sign
				["coord"] = { 39.3, 17.4, THE_RINGING_DEEPS },
				["questID"] = 82049,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			o(441577, {	-- Collapsed Tunnel (Warning: Collapsed Tunnel)
				["coord"] = { 71.4, 42.4, THE_RINGING_DEEPS },
				["questID"] = 82051,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			o(444071, {	-- Cursed Pickaxe
				["coord"] = { 63.1, 63.1, THE_RINGING_DEEPS },
				["questID"] = 82230,
				["groups"] = {
					i(224837),	-- Cursed Pickaxe
				},
			}),
			o(444115, {	-- Discarded Toolbox
				["coord"] = { 45.5, 17.5, THE_RINGING_DEEPS },
				["questID"] = 82239,
				["groups"] = {
					i(224644),	-- Lava-Forged Cogwheel
				},
			}),
			o(446151, {	-- Dislodged Blockage
				["provider"] = { "o", 446100 },	-- Blocked Intake (vignette)
				["coord"] = { 48.2, 48.9, THE_RINGING_DEEPS },
				["questID"] = 82820,
				["groups"] = {
					i(221548),	-- Blightbud (PET!)
				},
			}),
			o(446341, {	-- Dusty Prospector's Chest
				["coord"] = { 49.0, 31.6, THE_RINGING_DEEPS },
				["questID"] = 82464,
				["cost"] = {
					{"i", 223880, 1},	-- Rough Deepamethyst Shard
					{"i", 223882, 1},	-- Rough Deepdiamond Shard
					{"i", 223881, 1},	-- Rough Deepemerald Shard
					{"i", 223878, 1},	-- Rough Deepruby Shard
					{"i", 223879, 1},	-- Rough Deeptopaz Shard
				},
			}),
			o(433733, {	-- Forgotten Treasure
				["description"] = "Key to this chest can be found in nearest Buried Treasure.",
				["coord"] = { 50.5, 53.5, THE_RINGING_DEEPS },
				["questID"] = 80485,
				["cost"] = {
					{"i", 217960, 1},	-- Forgotten Key
				},
				["groups"] = {
					i(224783),	-- Sovereign's Finery Chest (TOY!)
				},
			}),
			o(444261, {	-- Purchase Bluesberry Blast 5 Silver
				["description"] = "Purchase First, then Orange!.",
				["coord"] = { 58.8, 64.2, THE_RINGING_DEEPS },
				["groups"] = {
					i(223741),	-- Bluesberry Blast
				},
			}),
			o(444275, {	-- Purchase Mangoro Madness 5 Silver
				["description"] = "Purchase Fourth.",
				["coord"] = { 58.8, 64.2, THE_RINGING_DEEPS },
				["groups"] = {
					i(223742),	-- Mangoro Madness
				},
			}),
			o(444276, {	-- Purchase Orange O Pocalypse 5 Silver
				["description"] = "Purchase Second, next is Oyster.",
				["coord"] = { 58.8, 64.2, THE_RINGING_DEEPS },
				["groups"] = {
					i(223743),	-- Orange O-pocalypse
				},
			}),
			o(444277, {	-- Purchase Oyster Outbreak 5 Silver
				["description"] = "Purchase Third, now lets get some Mangoro Madness.",
				["groups"] = {
					i(223744),	-- Oyster Outbreak
				},
				["coord"] = { 58.8, 64.2, THE_RINGING_DEEPS },
			}),
			o(444256, {	-- Kaja'Cola Machine
				["description"] = "Bluesberry Blast > Orange O-pocalypse > Oyster Outburst > Mangoro Mania",
				["coord"] = { 58.8, 64.2, THE_RINGING_DEEPS },
				["questID"] = 82819,
				["cost"] = {
					{ "i", 223741, 1 },	-- Bluesberry Blast
					{ "i", 223742, 1 },	-- Mangoro Madness
					{ "i", 223743, 1 },	-- Orange O-pocalypse
					{ "i", 223744, 1 },	-- Oyster Outbreak
				},
				["groups"] = {
					i(220774),	-- Goblin Mini Fridge
				},
			}),
			o(441578, {	-- Kobold Warning Sign
				["coord"] = { 64.9, 56.2, THE_RINGING_DEEPS },
				["questID"] = 82054,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			o(446349, {	-- Loose Crystal Shard
				["coord"] = { 57.3, 21.9, THE_RINGING_DEEPS },
				["groups"] = {
					i(223880),	-- Rough Deepamethyst Shard
				},
			}),
			o(446352, {	-- Loose Crystal Shard
				["coord"] = { 68.2, 53.2, THE_RINGING_DEEPS },
				["groups"] = {
					i(223882),	-- Rough Deepdiamond Shard
				},
			}),
			o(446351, {	-- Loose Crystal Shard
				["coord"] = { 59.0, 38.1, THE_RINGING_DEEPS },
				["groups"] = {
					i(223881),	-- Rough Deepemerald Shard
				},
			}),
			o(446343, {	-- Loose Crystal Shard
				["coords"] = {
					{ 57.5, 49.5, THE_RINGING_DEEPS },
					{ 59.9, 53.0, THE_RINGING_DEEPS },
				},
				["groups"] = {
					i(223878),	-- Rough Deepruby Shard
				},
			}),
			o(446347, {	-- Loose Crystal Shard
				["coord"] = { 62.5, 63.0, THE_RINGING_DEEPS },
				["groups"] = {
					i(223879),	-- Rough Deeptopaz Shard
				},
			}),
			o(444087, {	-- Munderut's Forgotten Stash
				["coord"] = { 55.4, 13.8, THE_RINGING_DEEPS },
				["questID"] = 82235,
			}),
			o(445403, {	-- Scary Dark Chest
				["description"] = "Lit up all candles.",
				["coord"] = { 58.9, 30.3, THE_RINGING_DEEPS },
				["questID"] = 82818,
				["groups"] = {
					i(224439),	-- Oop'lajax (PET!)
				},
			}),
			o(441563, {	-- Submerged Sign
				["coord"] = { 51.5, 72.4, THE_RINGING_DEEPS },
				["questID"] = 82052,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			o(455890, {	-- Waterlogged Refuse
				["coord"] = { 66.2, 33.4, THE_RINGING_DEEPS },
				["questID"] = 83030,
			}),
			o(441555, {	-- Wax-Drenched Sign
				["coord"] = { 50.2, 58.3, THE_RINGING_DEEPS },
				["questID"] = 82053,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			o(420053, {	-- Webbed Knapsack
				["coord"] = { 68.9, 38.8, THE_RINGING_DEEPS },
				["questID"] = 79308,
			}),
			-- Achievements
			o(455269, {	-- Notes On The Machine Speakers: Fragment I
				["coord"] = { 45.9, 28.8, THE_RINGING_DEEPS },
			}),
			o(455274, {	-- Notes On The Machine Speakers: Fragment II
				["coord"] = { 48.9, 25.9, THE_RINGING_DEEPS },
			}),
			o(455275, {	-- Notes On The Machine Speakers: Fragment III
				["coord"] = { 51.1, 14.5, THE_RINGING_DEEPS },
			}),
			o(455276, {	-- Notes On The Machine Speakers: Fragment IV
				["coord"] = { 39.9, 21.0, THE_RINGING_DEEPS },
			}),
			o(455277, {	-- Notes On The Machine Speakers: Fragment V
				["coord"] = { 63.7, 58.8, THE_RINGING_DEEPS },
			}),
			o(455278, {	-- Notes On The Machine Speakers: Fragment VI
				["coord"] = { 65.1, 79.6, THE_RINGING_DEEPS },
			}),
			o(454416, {	-- Alfritha's Plaque
				["coord"] = { 48.5, 70.7, THE_RINGING_DEEPS },
			}),
			o(454405, {	-- Attwogaz's Plaque
				["coord"] = { 62.9, 36.4, THE_RINGING_DEEPS },
			}),
			o(454417, {	-- Gundrig's Plaque
				["coord"] = { 65.4, 83.8, THE_RINGING_DEEPS },
			}),
			o(454404, {	-- Hathlaz's Plaque
				["coord"] = { 44.4, 13.5, THE_RINGING_DEEPS },
			}),
			o(454406, {	-- Krattdaz's Plaque
				["coord"] = { 43.2, 40.9, THE_RINGING_DEEPS },
			}),
			o(454412, {	-- Merunth's Plaque
				["coord"] = { 59.2, 93.7, THE_RINGING_DEEPS },
			}),
			o(454418, {	-- Sathilga's Plaque
				["coord"] = { 64.1, 55.7, THE_RINGING_DEEPS },
			}),
			o(454407, {	-- Uisgaz's Plaque
				["coord"] = { 55.0, 30.2, THE_RINGING_DEEPS },
			}),
			o(454414, {	-- Varerko's Plaque
				["coord"] = { 49.4, 49.0, THE_RINGING_DEEPS },
			}),
			o(454408, {	-- Venedaz's Plaque
				["coord"] = { 48.6, 31.8, THE_RINGING_DEEPS },
			}),
			-- Achievement
			n(226638, {	-- Abyssal Console
				["coord"] = { 59.0, 93.4, THE_RINGING_DEEPS },
				["questID"] = 83479,
				["lockCriteria"] = { 1, "achID", 40473 },	-- Not So Quick Fix
			}),
			n(226642, {	-- Earthen Console
				["coord"] = { 46.2, 14.0, THE_RINGING_DEEPS },
				["questID"] = 83483,
				["lockCriteria"] = { 1, "achID", 40473 },	-- Not So Quick Fix
			}),
			n(226641, {	-- Lost Console
				["coord"] = { 56.0, 22.6, THE_RINGING_DEEPS },
				["questID"] = 83482,
				["lockCriteria"] = { 1, "achID", 40473 },	-- Not So Quick Fix
			}),
			n(226640, {	-- Obsidian Console
				["coord"] = { 69.0, 48.8, THE_RINGING_DEEPS },
				["questID"] = 83481,
				["lockCriteria"] = { 1, "achID", 40473 },	-- Not So Quick Fix
			}),
			n(226639, {	-- Taelloch Console
				["coord"] = { 63.6, 61.0, THE_RINGING_DEEPS },
				["questID"] = 83480,
				["lockCriteria"] = { 1, "achID", 40473 },	-- Not So Quick Fix
			}),
			n(226624, {	-- Water Console
				["coord"] = { 45.2, 46.4, THE_RINGING_DEEPS },
				["questID"] = 83475,
				["lockCriteria"] = { 1, "achID", 40473 },	-- Not So Quick Fix
			}),
		}),
	}),
}));
