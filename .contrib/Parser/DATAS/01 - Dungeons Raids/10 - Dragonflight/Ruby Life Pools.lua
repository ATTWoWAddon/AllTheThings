-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	inst(1202, {	-- Ruby Life Pools
		["coord"] = { 60.1, 75.7, THE_WAKING_SHORES },
		["maps"] = {
			2095,	-- Infusion Chambers
			2094,	-- Ruby Overlook
		},
		["groups"] = {
			n(QUESTS, {
				q(66119, {	-- Defend the Life Pools!
					["sourceQuests"] = { 66118 },	-- Basalt Assault
					["provider"] = { "n", 187145 },	-- Kildrumeh
					["coord"] = { 60.0, 76.0, THE_WAKING_SHORES },
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				e(2488, {	-- Melidrussa Chillworn
					["crs"] = { 188252 },	-- Melidrussa Chillworn
					["groups"] = {
						i(193761),	-- Chillworn's Infusion Staff
						i(193759),	-- Egg Tender's Leggings
						i(193757),	-- Ruby Whelp Shell
						i(193728),	-- Scaleguard's Stalwart Greatboots
						i(193758),	-- Subjugator's Chilling Grip
					},
				}),
				e(2485, {	-- Kokia Blazehoof
					["crs"] = { 189232 },	-- Kokia Blazehoof
					["groups"] = {
						i(193762),	-- Blazebinder's Hoof
						i(193765),	-- Blazebound Lieutenant's Helm
						i(193763),	-- Fireproof Drape of Cinders
						i(193767),	-- Havoc Crusher
						i(193764),	-- Invader's Firestorm Chestguard
						i(193766),	-- Kokia's Burnout Rod
					},
				}),
				e(2503, {	-- Kyrakka and Erkhart Stormvein
					["crs"] = {
						190484,	-- Kyrakka
						190485,	-- Erkhart Stormvein
					},
					["groups"] = {
						ach(16266),	-- Ruby Life Pools
						i(193755),	-- Backdraft Cleaver
						i(193753),	-- Breastplate of Soaring Terror
						i(193751),	-- Crown of Roaring Storms
						i(193754),	-- Drake Rider's Stecktarge
						i(193752),	-- Galerattle Gauntlets
						i(193748),	-- Kyrakka's Searing Embers
						i(193691),	-- Sky Saddle Cord
						i(193756),	-- Skyferno Rondel
						i(193750),	-- Wind Soarer's Breeches
						i(197401),	-- Renewed Proto-Drake: Beaked Snout (MM!)
						i(197601),	-- Windborne Velocidrake: Wavy Horns (MM!)
						i(201742),	-- Technique: Renewed Proto-Drake: Silver and Blue Armor (RECIPE!)
						i(256428, {	-- Valdrakken Hanging Lamp (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				e(2503, {	-- Kyrakka and Erkhart Stormvein
					["crs"] = {
						190484,	-- Kyrakka
						190485,	-- Erkhart Stormvein
					},
					["groups"] = {
						ach(16267),	-- Heroic: Ruby Life Pools
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				e(2488, {	-- Melidrussa Chillworn
					["crs"] = { 188252 },	-- Melidrussa Chillworn
					["groups"] = {
						ach(16402),	-- Dragon Kill Points
					},
				}),
				e(2485, {	-- Kokia Blazehoof
					["crs"] = { 189232 },	-- Kokia Blazehoof
					["groups"] = {
						ach(16320),	-- Does Steam Do Fire Damage?
					},
				}),
				e(2503, {	-- Kyrakka and Erkhart Stormvein
					["crs"] = {
						190484,	-- Kyrakka
						190485,	-- Erkhart Stormvein
					},
					["groups"] = {
						ach(16268),	-- Mythic: Ruby Life Pools
						ach(17100),	-- Mythic: Ruby Life Pools Guild Run
						ach(16440),	-- Are You My Broodmother?
					},
				}),
			}),
		},
	})
})));
