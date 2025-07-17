-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(DRAGONSCALE_EXPEDITION, {
		n(TREASURES, {
			i(199061),	-- A Guide to Rare Fish (CI!)
			i(198852),	-- Bear Termination Orders (CI!)
			i(198843),	-- Emerald Gardens Explorer's Notes (CI!)
			i(199066),	-- Letter of Caution (CI!)
			i(194540),	-- Nokhud Armorer's Notes (CI!)
			i(199067),	-- Precious Plans (CI!)
			i(199062),	-- Ruby Gem Cluster Map (CI!)
			i(199065),	-- Sorrowful Letter (CI!)
			i(199068),	-- Time-Lost Memo (CI!)
			n(WEEKLY_PROFESSION_KNOWLEDGE, {
				i(193891, {  -- Experimental Substance
					["requireSkill"] = ALCHEMY,
				}),
				i(193897, {	-- Reawakened Catalyst
					["requireSkill"] = ALCHEMY,
				}),
				i(192131, {	-- Valdrakken Weapon Chain
					["requireSkill"] = BLACKSMITHING,
				}),
				i(192132, {	-- Draconium Blade Sharpener
					["requireSkill"] = BLACKSMITHING,
				}),
				i(193900, {	-- Prismatic Focusing Shard
					["requireSkill"] = ENCHANTING,
				}),
				i(193901, {	-- Primal Dust
					["requireSkill"] = ENCHANTING,
				}),
				i(193902, {	-- Eroded Titan Gizmo
					["requireSkill"] = ENGINEERING,
				}),
				i(193903, {	-- Watcher Power Core
					["requireSkill"] = ENGINEERING,
				}),
				i(193904, {	-- Phoenix Feather Quill
					["requireSkill"] = INSCRIPTION,
				}),
				i(193905, {	-- Iskaaran Trading Ledger
					["requireSkill"] = INSCRIPTION,
				}),
				i(193909, {	-- Ancient Gem Fragments
					["requireSkill"] = JEWELCRAFTING,
				}),
				i(193907, {	-- Chipped Tyrstone
					["requireSkill"] = JEWELCRAFTING,
				}),
				i(193910, {	-- Molted Dragon Scales
					["requireSkill"] = LEATHERWORKING,
				}),
				i(193913, {	-- Preserved Animal Parts
					["requireSkill"] = LEATHERWORKING,
				}),
				i(193898, {	-- Umbral Bone Needle
					["requireSkill"] = TAILORING,
				}),
				i(193899, {	-- Primalweave Spindle
					["requireSkill"] = TAILORING,
				}),
			}),
			o_repeated({	-- Disturbed Dirt (all 5 of them)
				["cost"] = {{"i",191304,1}},	-- Sturdy Expedition Shovel
				["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
				["sym"] = {{"select","itemID",
					199061, -- A Guide to Rare Fish
					199062, -- Ruby Gem Cluster Map
					194540, -- Nokhud Armorer's Notes
					198843, -- Emerald Gardens Explorer's Notes
					199065, -- Sorrowful Letter
					199066, -- Letter of Caution
					199067, -- Precious Plans
					199068, -- Time-Lost Memo
					198852, -- Bear Termination Orders
					-- Glimmering Clusters
					200864,	-- Glimmering Alexstraszite Cluster
					200866,	-- Glimmering Malygite Cluster
					200867,	-- Glimmering Neltharite Cluster
					200863,	-- Glimmering Nozdorite Cluster
					200865,	-- Glimmering Ysemerald Cluster
					-- Profession Knowledge Items
					193891,	-- Experimental Substance
					193897,	-- Reawakened Catalyst
					192131,	-- Valdrakken Weapon Chain
					192132,	-- Draconium Blade Sharpener
					193900,	-- Prismatic Focusing Shard
					193901,	-- Primal Dust
					193902,	-- Eroded Titan Gizmo
					193903,	-- Watcher Power Core
					193904,	-- Phoenix Feather Quill
					193905,	-- Iskaaran Trading Ledger
					193909,	-- Ancient Gem Fragments
					193907,	-- Chipped Tyrstone
					193910,	-- Molted Dragon Scales
					193913,	-- Preserved Animal Parts
					193898,	-- Umbral Bone Needle
					193899,	-- Primalweave Spindle
					-- Weapons
					201391,	-- Drakonid Enforcer's Hidesplitter
					201387,	-- Drakonid Stalker's Halberd
					201386,	-- Drakonid Defender's Pike
					201394,	-- Drakonid's Jade Bulwark
					201396,	-- Hidepiercing Claw Extensions
					201389,	-- Wingcrest Battle Staff
					201395,	-- Wingcrest Scimitar
					201390,	-- Devastating Drakonid Waraxe
					201393,	-- Dragonspawn Spellweaver's Focus
					201392,	-- Drakonid Striker's Cutlass
				}},
				["g"] = {
					o(383735),	-- Disturbed Dirt
					o(376386),	-- Disturbed Dirt
					o(383734),	-- Disturbed Dirt
					o(383733),	-- Disturbed Dirt
					o(382029),	-- Disturbed Dirt
					i(201388),	-- Dragonspawn Wingtipped Staff
				},
			}),
			o(376587, {	-- Expedition Scout's Pack
				["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
				-- No coords. Wowhead has literally over 1,000 coords for it
				["sym"] = {{"select","itemID",
					-- Common Drops
					199061, -- A Guide to Rare Fish
					199062, -- Ruby Gem Cluster Map
					194540, -- Nokhud Armorer's Notes
					198843, -- Emerald Gardens Explorer's Notes
					199065, -- Sorrowful Letter
					199066, -- Letter of Caution
					199067, -- Precious Plans
					199068, -- Time-Lost Memo
					198852, -- Bear Termination Orders
					-- Profession Knowledge Items
					193891,	-- Experimental Substance
					193897,	-- Reawakened Catalyst
					192131,	-- Valdrakken Weapon Chain
					192132,	-- Draconium Blade Sharpener
					193900,	-- Prismatic Focusing Shard
					193901,	-- Primal Dust
					193902,	-- Eroded Titan Gizmo
					193903,	-- Watcher Power Core
					193904,	-- Phoenix Feather Quill
					193905,	-- Iskaaran Trading Ledger
					193909,	-- Ancient Gem Fragments
					193907,	-- Chipped Tyrstone
					193910,	-- Molted Dragon Scales
					193913,	-- Preserved Animal Parts
					193898,	-- Umbral Bone Needle
					193899,	-- Primalweave Spindle
				}},
				["g"] = {
					i(201391),	-- Drakonid Enforcer's Hidesplitter
					i(201387),	-- Drakonid Stalker's Halberd
					i(201386),	-- Drakonid Defender's Pike
					i(201394),	-- Drakonid's Jade Bulwark
					i(201396),	-- Hidepiercing Claw Extensions
					i(201389),	-- Wingcrest Battle Staff
					i(201395),	-- Wingcrest Scimitar
					i(201390),	-- Devastating Drakonid Waraxe
					i(201393),	-- Dragonspawn Spellweaver's Focus
					i(201392),	-- Drakonid Striker's Cutlass

					i(191384),	-- Aerated Mana Potion +
					i(191393),	-- Potion of the Hushed Zephyr +

					i(192764),	-- Verdant Skitterfly (MOUNT!)
				},
			}),
			o(376426, {	-- Magic-Bound Chest
				["providers"] = {
					{ "n", 192012 },	-- Icy Lock (vignette)
					{ "n", 191861 },	-- Magic-Bound Chest (vignette)
					{ "n", 191905 },	-- Magic-Bound Chest (vignette)
					{ "n", 192243 },	-- Molten Lock (vignette)
					{ "o", 385074 },	-- Magic-Bound Chest (vignette)
					{ "o", 385075 },	-- Magic-Bound Chest (vignette)
				},
				["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS },
				["sym"] = {{"select","itemID",
					199061, -- A Guide to Rare Fish
					199062, -- Ruby Gem Cluster Map
					194540, -- Nokhud Armorer's Notes
					198843, -- Emerald Gardens Explorer's Notes
					199065, -- Sorrowful Letter
					199066, -- Letter of Caution
					199067, -- Precious Plans
					199068, -- Time-Lost Memo
					198852, -- Bear Termination Orders
				}},
			}),
		}),
	}),
})));