---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THE_AZURE_SPAN, {
		n(SPECIAL, {
			n(195353, {	-- Breezebiter
				["description"] = "Spawns near a cave, then patrols the area. Not considered a rare.",
				["coords"] = {
					{ 29.8, 46.2, THE_AZURE_SPAN }, -- spawn
					-- some path points
					{ 25.8, 46.7, THE_AZURE_SPAN },
					{ 26.3, 44.9, THE_AZURE_SPAN },
					{ 27.7, 44.4, THE_AZURE_SPAN },
					{ 27.9, 48.1, THE_AZURE_SPAN },
				},
				["groups"] = {
					i(201440),	-- Liberated Slyvern (MOUNT!)
				},
			}),
			n(196165, {	-- Gethdazr
				["description"] = "Spawns as part of an event involving The Blubberwall that starts by blowing the Great Horn of Imbu at the northern waypoint. The horn will become clickable after killing the Enraged Air Elemental & you have to support the NPC's, spawning east of the horn, otherwise they will die & the event fails.",
				-- check wording
				["coords"] = {
					{ 58.9, 66.9, THE_AZURE_SPAN },	-- Event Start
					{ 56.6, 70.8, THE_AZURE_SPAN },	-- Rare
				},
				["questID"] = 74446,
				["isDaily"] = true,
				["groups"] = {
					i(200086),	-- Khaz'gorite-Infused Resin (IF!)
				},
			}),
			n(196900, {	-- Lost Elemental
				["description"] = "Patrols the area and is not considered a rare.",
				["coord"] = { 75.6, 24.2, THE_AZURE_SPAN },
				["groups"] = {
					i(200528),	-- Glowing Arcane Jewel
				},
			}),
			n(196768, {	-- Primal Bear Cub
				["description"] = "Give 3x Hornswog Hunk and a Honey Snack to Primal Bear Cub while wearing the title Honorary Dryad (from Thalendra [192522]) will give you this pet.",
				["sourceQuests"] = { 67606 },	-- A Dryadic Remedy
				["coord"] = { 67.4, 18.4, THE_AZURE_SPAN },
				["groups"] = {
					i(201838, {	-- Snowclaw Cub (PET!)
						["cost"] = {
							{ "i", 197744, 3 },	-- 3x Hornswog Hunk
							{ "i", 198356, 1 },	-- 1x Honey Snack
						},
					}),
				},
			}),
			n(190892, {	-- Zon'Wogi
				["description"] = "Give 20x Flash Frozen Meat, 20x Tuskarr Jerky and 20x Gnolan's House Special to Zon'Wogi to get the mount.",
				["coord"] = { 19.0, 24.0, THE_AZURE_SPAN },
				["questID"] = 72278,
				["groups"] = {
					i(201454, {	-- Temperamental Skyclaw (MOUNT!)
						["cost"] = {
							{ "i", 201422, 20 },	-- 20x Flash Frozen Meat
							{ "i", 201421, 20 },	-- 20x Tuskarr Jerky
							{ "i", 201420, 20 },	-- 20x Gnolan's House Special
						},
					}),
				},
			}),
		}),
	})
})));
