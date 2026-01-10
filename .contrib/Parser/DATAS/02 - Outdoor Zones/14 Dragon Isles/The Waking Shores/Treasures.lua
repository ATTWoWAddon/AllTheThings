---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_WAKING_SHORES, {
		n(TREASURES, {
			o(381485, {	-- Adventurer's Lost Soap Bar
				["coord"] = { 39.6, 84.7, THE_WAKING_SHORES },
				["groups"] = {
					i(200065),	-- Adventurer's Lost Soap Bar
				},
			}),
			o(379296, {	-- Broken Banding
				["coord"] = { 81.0, 30.4, THE_WAKING_SHORES },
				["description"] = "Found on the right foot of the statue.",
				["groups"] = {
					i(198475),	-- Broken Banding
				},
			}),
			o(381071, {	-- Box of Rocks
				["description"] = "Can almost be anywhere in the zone, wont show up via treasure tracking.",
				["groups"] = {
					i(199216),	-- A Box of Rocks
				},
			}),
			o(381065, {	-- Broken Waygate
				["description"] = "In a cave.",
				["coord"] = { 34.7, 45.8, THE_WAKING_SHORES },
				["provider"] = { "i", 204278 },	-- Neltharion's Toolkit
				["questID"] = 74978,
			}),
			n(195939, {	-- Bubble Drifter
				["coord"] = { 40.6, 41.2, THE_WAKING_SHORES },
				["description"] = "Use nearby Fragrant Plant to attract Bubble Drifter.",
				["questID"] = 70599,
				["cost"] = { { "i", 199061, 1 }, },	-- 1x A Guide to Rare Fish
				["groups"] = {
					i(193852),	-- Azure Frillfish (PET!)
				},
			}),
			o(380654, {	-- Dead Man's Chestplate
				["coord"] = { 69.3, 46.5, THE_WAKING_SHORES },
				["questID"] = 70346,
				["description"] = "This treasure will drop the corresponding chest piece for your armor class. Players will have to collect it four times total for all appearances.",
				["groups"] = {
					i(202191),	-- Dead Man's Breastplate
					i(202190),	-- Dead Man's Chains
					i(202192),	-- Dead Man's Leathers
					i(202193),	-- Dead Man's Tunic
				},
			}),
			o(380518, {	-- Dislodged Dragoneye
				["coord"] = { 60.5, 57.8, THE_WAKING_SHORES },
				["description"] = "Behind a pile of stones underneath the dragon statue.",
				["groups"] = {
					i(198626),	-- Dislodged Dragoneye
				},
			}),
			o(376580, {	-- Djaradin Cache
				["coords"] = {
					{ 24.2, 69.4, THE_WAKING_SHORES },
					{ 24.3, 69.5, THE_WAKING_SHORES },
					{ 25.2, 74.1, THE_WAKING_SHORES },
					{ 25.8, 73.7, THE_WAKING_SHORES },
					{ 27.2, 72.0, THE_WAKING_SHORES },
					{ 27.6, 59.2, THE_WAKING_SHORES },
					{ 28.3, 57.9, THE_WAKING_SHORES },
					{ 28.3, 68.2, THE_WAKING_SHORES },
					{ 28.9, 60.4, THE_WAKING_SHORES },
					{ 29.4, 72.3, THE_WAKING_SHORES },
					{ 30.1, 58.7, THE_WAKING_SHORES },
					{ 30.8, 70.8, THE_WAKING_SHORES },
					{ 32.3, 65.4, THE_WAKING_SHORES },
					{ 34.3, 62.4, THE_WAKING_SHORES },
					{ 34.4, 62.5, THE_WAKING_SHORES },
					{ 34.4, 66.4, THE_WAKING_SHORES },
					{ 35.4, 60.9, THE_WAKING_SHORES },
					{ 39.2, 55.1, THE_WAKING_SHORES },
					{ 40.7, 54.7, THE_WAKING_SHORES },
					{ 42.8, 53.9, THE_WAKING_SHORES },
					{ 45.0, 53.7, THE_WAKING_SHORES },
					{ 45.4, 56.3, THE_WAKING_SHORES },
					{ 45.4, 56.5, THE_WAKING_SHORES },
					{ 45.8, 54.0, THE_WAKING_SHORES },
					{ 63.2, 30.8, THE_WAKING_SHORES },
					{ 63.2, 34.6, THE_WAKING_SHORES },
					{ 64.4, 29.4, THE_WAKING_SHORES },
					{ 64.5, 29.5, THE_WAKING_SHORES },
					{ 64.6, 25.9, THE_WAKING_SHORES },
					{ 65.6, 25.7, THE_WAKING_SHORES },
					{ 65.8, 35.1, THE_WAKING_SHORES },
					{ 66.1, 37.7, THE_WAKING_SHORES },
					{ 70.0, 45.3, THE_WAKING_SHORES },
					{ 70.3, 45.5, THE_WAKING_SHORES },
					{ 71.2, 44.7, THE_WAKING_SHORES },
					{ 71.3, 46.8, THE_WAKING_SHORES },
				},
				["groups"] = {
					i(201430),	-- Burning Mallet
					i(201043),	-- Citadel Crusher's Belt
					i(201042),	-- Citadel Crusher's Bracers
					i(201036),	-- Citadel Crusher's Chestplate
					i(201041),	-- Citadel Crusher's Cloak
					i(201038),	-- Citadel Crusher's Footwraps
					i(201040),	-- Citadel Crusher's Gauntlets
					i(201039),	-- Citadel Crusher's Helm
					i(201037),	-- Citadel Crusher's Legguards
					i(201035),	-- Citadel Crusher's Pauldrons
					i(201433),	-- Citadel Warden's Mace
					i(201434),	-- Obsidian Barrier
					i(201432),	-- Obsidian Dragontooth
					i(201429),	-- Obsidian Fist
					i(201431),	-- Obsidian Tyrant's Mace
					i(199230),	-- Schematic: Projectile Propulsion Pinion (RECIPE!)
				},
			}),
			o(385022, {	-- Eroded Fossil
				["description"] = "Only available when world quest |cffffffffBrightblade's Bones|r (66070) is active.",
				["coords"] = {
					{ 26.0, 94.6, THE_WAKING_SHORES },
					{ 21.6, 92.1, THE_WAKING_SHORES },
					{ 22.1, 95.5, THE_WAKING_SHORES },
					{ 23.4, 96.7, THE_WAKING_SHORES },
				},
				-- ["questID"] = ,
				["groups"] = {
					i(202084),	-- Eroded Fossil
				},
			}),
			o(421736, {	-- Explorer Pepe
				["coord"] = { 47.3, 82.7, THE_WAKING_SHORES },
				["timeline"] = { ADDED_10_2_5 },
				["groups"] = { i(213202) },	-- A Tiny Explorer's Hat (Pepe!)
			}),
			o(381355, {	-- Finely Carved Wing
				["coord"] = { 47.2, 88.6, THE_WAKING_SHORES },
				["description"] = "Underneath the dragon statue.",
				["groups"] = {
					i(199841),	-- Finely Carved Wing
				},
			}),
			o(376175, {	-- Fullsails Supply Chest
				["coord"] = { 43.1, 67.4, THE_WAKING_SHORES },
				["questID"] = 65965,
				["cost"] = { { "i", 191122, 1 }, },	-- 1x Fullsails Supply Chest Key
			}),
			o(381483, {	-- Marmoni's Prize
				["coord"] = { 47.7, 83.6, THE_WAKING_SHORES },
				["groups"] = {
					i(200064),	-- Marmoni's Prize
				},
			}),
			o(375668, {	-- Misty Treasure Chest
				["description"] = "Stand on the Handhold sticking out of the waterfall and walk forward to find this treasure (it's very hidden behind the water).",
				["coord"] = { 58.6, 53.1, THE_WAKING_SHORES },
				["questID"] = 65646,
				["groups"] = {
					i(202194),	-- Misty Satchel
				},
			}),
			o(381045, {	-- Golden Dragon Goblet
				["coord"] = { 65.8, 41.8, THE_WAKING_SHORES },
				["questID"] = 70600,
				["cost"] = { { "i", 198854, 1 }, },	-- 1x Archeologist Artifact Notes
				["groups"] = {
					i(202019),	-- Golden Dragon Goblet (TOY!)
				},
			}),
			o(381343, {	-- Learn and Grow
				["coord"] = { 51.6, 20.0, THE_WAKING_SHORES },
			}),
			o(379168, {	-- Lost Cache Key
				["description"] = "Collect a Sour Apple from the ground around the Blacktalon Pack Goat along the road leading up to Obsidian Bulwark at 43.7, 71.8\n\nThrow an apple at the Blacktalon Shadowclaw in Obsidian Bulwark 43.1, 67.2\n\nYou can now interact with the bird, it will fly you up to the cave where the Cache key will be visible beside the corpse.",
				["coord"] = { 43.0, 70.0, THE_WAKING_SHORES },
				["groups"] = {
					i(198085),	-- Lost Obsidian Cache Key
				},
			}),
			o(378857, {	-- Lost Obsidian Cache
				["description"] = "Collect a Sour Apple from the ground around the Blacktalon Pack Goat along the road leading up to Obsidian Bulwark at 43.7, 71.8\n\nThrow an apple at the Blacktalon Shadowclaw in Obsidian Bulwark 43.1, 67.2\n\nYou can now interact with the bird, it will fly you up to the cave where the Cache key will be visible beside the corpse.",
				["coord"] = { 45.0, 70.0, THE_WAKING_SHORES },
				["crs"] = { 191851 },	-- Blacktalon Shadowclaw
				["questID"] = 70018,
				["cost"] = {
					{ "i", 198085, 1 },	-- 1x Lost Obsidian Cache Key
					{ "i", 194122, 1 },	-- 1x Sour Apple
				},
				["groups"] = {
					i(201933),	-- Black Dragon's Challenge Dummy (TOY!)
				},
			}),
			o(381340, {  -- Neltharus Stands
				["coord"] = { 26.2, 56.3, THE_WAKING_SHORES },
			}),
			o(378820, {	-- Popfizz Punch
				["coord"] = { 39.30, 38.32, THE_WAKING_SHORES },
				-- ["questID"] = ???,
				["groups"] = {
					i(197737),	-- Popfizz Punch
				},
			}),
			o(378054, {	-- Riptide Brew
				["coord"] = { 62.95, 79.77, THE_WAKING_SHORES },
				-- ["questID"] = ???,
				["groups"] = {
					i(195543),	-- Riptide Brew
				},
			}),
			o(379297, {	-- Slam Bam Swill
				["coord"] = { 46.91, 30.68, THE_WAKING_SHORES },
				-- ["questID"] = ???,
				["groups"] = {
					i(198045),	-- Slam Bam Swill
				},
			}),
			o(377485, {	-- Sour Apple
				["coord"] = { 43.7, 71.7, THE_WAKING_SHORES },
				["groups"] = {
					i(194122),	-- Sour Apple
				},
			}),
			o(381153, {	-- Ruby Gem Cluster
				["coord"] = { 61.3, 70.8, THE_WAKING_SHORES },
				["questID"] = 70598,
				["cost"] = { { "i", 199062, 1 }, },	-- 1x Ruby Gem Cluster Map
				["groups"] = {
					i(194647),	-- Design: Jeweled Ruby Whelpling (RECIPE!)
					i(200864),	-- Glimmering Alexstraszite Cluster
				},
			}),
			o(380648, {	-- Odd Book
				["sourceQuests"] = { 70134 },	-- Memories
				["description"] = "Underneath the Obsidian Citadel.",
				["coord"] = { 23.2, 60.5, THE_WAKING_SHORES },
				["groups"] = {
					i(198661),	-- Partially Destroyed Diary
				},
			}),
			o(381336, {	-- One Small Part
				["coords"] = {
					{ 27.2, 60.9, THE_WAKING_SHORES },	-- entrance
					{ 24.2, 53.4, THE_WAKING_SHORES },	-- stone
				}
			}),
			o(382325, {	-- Onyx Gem Cluster
				["description"] = "Cave Entrance at 29.4, 52.6",
				["coord"] = { 29.4, 47.0, THE_WAKING_SHORES },
				["questID"] = 72020,
				["cost"] = { { "i", 200738, 1 }, },	-- 1x Onyx Gem Cluster Map
				["groups"] = {
					i(194650),	-- Design: Jeweled Onyx Whelpling (RECIPE!)
					i(200867),	-- Glimmering Neltharite Cluster
				},
			}),
			o(385021, {	-- Petrified Dragon Egg
				["description"] = "Only available when world quest |cffffffffBrightblade's Bones|r (66070) is active.",
				["coords"] = {
					{ 33.4, 77.1, THE_WAKING_SHORES },
					{ 23.0, 88.8, THE_WAKING_SHORES },
					{ 33.3, 87.2, THE_WAKING_SHORES },
					{ 40.8, 95.4, THE_WAKING_SHORES },
					{ 25.7, 96.3, THE_WAKING_SHORES },
					{ 35.7, 91.6, THE_WAKING_SHORES },
					{ 21.7, 97.3, THE_WAKING_SHORES },
				},
				-- ["questID"] = ,
				["groups"] = {
					i(202082),	-- Petrified Dragon Egg
				},
			}),
			o(376325, {	-- So Close, So Far
				["coord"] = { 74.2, 57.2, THE_WAKING_SHORES },
			}),
			o(380430, {	-- Tail Fragment
				["coord"] = { 58.2, 68.3, THE_WAKING_SHORES },
				["description"] = "Underneath the tail of the dragon statue.",
				["groups"] = {
					i(198543),	-- Tail Fragment
				},
			}),
			o(380840, {	-- Torn Riding Pack
				["coord"] = { 48.5, 85.2, THE_WAKING_SHORES },
				["questID"] = 70378,
			}),
			o(381484, {	-- Well-Preserved Bone
				["coord"] = { 66.2, 55.3, THE_WAKING_SHORES },
				["groups"] = {
					i(200066),	-- Well-Preserved Bone
				},
			}),
			o(381341, {	-- Welcoming the First
				["coord"] = { 60.7, 67.0, THE_WAKING_SHORES },
			}),
			o(380653, {	-- Yennu's Kite
				["coord"] = { 46.8, 31.2, THE_WAKING_SHORES },
				["questID"] = 70345,
				["groups"] = {
					i(202022),	-- Yennu's Kite (TOY!)
				},
			}),
		}),
	}),
})));
