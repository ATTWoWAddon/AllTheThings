--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

CALL_OF_THE_SCARAB_HEADER = createHeader({
	readable = "Call of the Scarab",
	constant = "CALL_OF_THE_SCARAB_HEADER",
	icon = [[~_.asset("Holiday_call_of_the_scarab")]],
	eventID = EVENTS.CALL_OF_THE_SCARAB,
	text = {
		en = "Call of the Scarab",
		-- TODO: de = "",
		es = "La llamada del escarabajo",
		mx = "La llamada del escarabajo",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Зов скарабея",
		cn = "甲虫的召唤",
		tw = "甲蟲的呼喚",
	},
});

root(ROOTS.Holidays, applyevent(EVENTS.CALL_OF_THE_SCARAB, n(CALL_OF_THE_SCARAB_HEADER, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_5 } }, {
	["maps"] = { SILITHUS },
	["groups"] = {
		n(QUESTS, {
			q(45787, {	-- Call of the Scarab [A]
				["qg"] = 117435,	-- Field Marshal Snowfall
				["coord"] = { 34.06, 80.43, SILITHUS },	-- Field Marshal Snowfall
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(45785, {	-- Call of the Scarab [H]
				["qg"] = 117433,	-- Warlord Gorchuk
				["coord"] = { 33.96, 81.91, SILITHUS },	-- Warlord Gorchuk
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(45731, {	-- Chilled Meat [A]
				["qg"] = 117434,	-- Master Sergeant Fizzlebolt
				["coord"] = { 34.01, 80.47, SILITHUS },	-- Master Sergeant Fizzlebolt
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(45639, {	-- Chilled Meat [H]
				["qg"] = 117432,	-- Senior Sergeant Kai'jin
				["coord"] = { 33.91, 81.83, SILITHUS },	-- Senior Sergeant Kai'jin
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(45755, {	-- Cinder of Cynders [A]
				["provider"] = { "i", 143880 },	-- Cinder of Cynders [A]
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(45747, {	-- Cinder of Cynders [H]
				["provider"] = { "i", 143872 },	-- Cinder of Cynders [H]
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(45759, {	-- Coreforged Sigil of Skaldrenox [A]
				["provider"] = { "i", 143884 },	-- Coreforged Sigil of Skaldrenox [A]
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(45751, {	-- Coreforged Sigil of Skaldrenox [H]
				["provider"] = { "i", 143876 },	-- Coreforged Sigil of Skaldrenox [H]
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(45732, {	-- Crocolisk Tails [A]
				["qg"] = 117434,	-- Master Sergeant Fizzlebolt
				["coord"] = { 34.01, 80.47, SILITHUS },	-- Master Sergeant Fizzlebolt
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(45640, {	-- Crocolisk Tails [H]
				["qg"] = 117432,	-- Senior Sergeant Kai'jin
				["coord"] = { 33.91, 81.83, SILITHUS },	-- Senior Sergeant Kai'jin
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(45730, {	-- Crunchy Spider Legs [A]
				["qg"] = 117434,	-- Master Sergeant Fizzlebolt
				["coord"] = { 34.01, 80.47, SILITHUS },	-- Master Sergeant Fizzlebolt
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(45638, {	-- Crunchy Spider Legs [H]
				["qg"] = 117432,	-- Senior Sergeant Kai'jin
				["coord"] = { 33.91, 81.83, SILITHUS },	-- Senior Sergeant Kai'jin
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(45761, {	-- Diamondine Sigil of Kazum [A]
				["provider"] = { "i", 143886 },	-- Diamondine Sigil of Kazum [A]
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(45753, {	-- Diamondine Sigil of Kazum [H]
				["provider"] = { "i", 143878 },	-- Diamondine Sigil of Kazum [H]
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(45760, {	-- Glimmering Sigil of Whirlaxis [A]
				["provider"] = { "i", 143885 },	-- Glimmering Sigil of Whirlaxis [A]
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(45752, {	-- Glimmering Sigil of Whirlaxis [H]
				["provider"] = { "i", 143877 },	-- Glimmering Sigil of Whirlaxis [H]
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(45735, {	-- Lean Shanks [A]
				["qg"] = 117434,	-- Master Sergeant Fizzlebolt
				["coord"] = { 34.01, 80.47, SILITHUS },	-- Master Sergeant Fizzlebolt
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(45643, {	-- Lean Shanks [H]
				["qg"] = 117432,	-- Senior Sergeant Kai'jin
				["coord"] = { 33.91, 81.83, SILITHUS },	-- Senior Sergeant Kai'jin
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(45756, {	-- Pearl of Fathoms [A]
				["provider"] = { "i", 143881 },	-- Pearl of Fathoms [A]
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(45748, {	-- Pearl of Fathoms [H]
				["provider"] = { "i", 143873 },	-- Pearl of Fathoms [H]
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(45734, {	-- Raw Clefthoof Meat [A]
				["qg"] = 117434,	-- Master Sergeant Fizzlebolt
				["coord"] = { 34.01, 80.47, SILITHUS },	-- Master Sergeant Fizzlebolt
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(45642, {	-- Raw Clefthoof Meat [H]
				["qg"] = 117432,	-- Senior Sergeant Kai'jin
				["coord"] = { 33.91, 81.83, SILITHUS },	-- Senior Sergeant Kai'jin
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(45733, {	-- Raw Tiger Steaks [A]
				["qg"] = 117434,	-- Master Sergeant Fizzlebolt
				["coord"] = { 34.01, 80.47, SILITHUS },	-- Master Sergeant Fizzlebolt
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(45641, {	-- Raw Tiger Steaks [H]
				["qg"] = 117432,	-- Senior Sergeant Kai'jin
				["coord"] = { 33.91, 81.83, SILITHUS },	-- Senior Sergeant Kai'jin
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(45757, {	-- Salt of Shards [A]
				["provider"] = { "i", 143882 },	-- Salt of Shards [A]
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(45749, {	-- Salt of Shards [H]
				["provider"] = { "i", 143874 },	-- Salt of Shards [H]
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(45729, {	-- Sandworm Meat [A]
				["qg"] = 117434,	-- Master Sergeant Fizzlebolt
				["coord"] = { 34.01, 80.47, SILITHUS },	-- Master Sergeant Fizzlebolt
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
			}),
			q(45637, {	-- Sandworm Meat [H]
				["qg"] = 117432,	-- Senior Sergeant Kai'jin
				["coord"] = { 33.91, 81.83, SILITHUS },	-- Senior Sergeant Kai'jin
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
			}),
			q(45758, {	-- Song of Zephyrs [A]
				["provider"] = { "i", 143883 },	-- Song of Zephyrs [A]
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(45750, {	-- Song of Zephyrs [H]
				["provider"] = { "i", 143875 },	-- Song of Zephyrs [H]
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(45762, {	-- Tidal Sigil of Skwol [A]
				["provider"] = { "i", 143887 },	-- Tidal Sigil of Skwol [A]
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(45754, {	-- Tidal Sigil of Skwol [H]
				["provider"] = { "i", 143879 },	-- Tidal Sigil of Skwol [H]
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
		}),
		n(RARES, {
			o(180456, {	-- Lesser Wind Stone
				["cost"] = {
					{ "i", 143858, 1 },	-- Twilight Cultist Cowl
					{ "i", 143857, 1 },	-- Twilight Cultist Mantle
					{ "i", 143855, 1 },	-- Twilight Cultist Robe
				},
				["crs"] = {	-- TODO: Check these IDs?
					15211,	-- Azure Templar <Abyssal Council>
					15209,	-- Crimson Templar <Abyssal Council>
					15307,	-- Earthen Templar <Abyssal Council>
					15212,	-- Hoary Templar <Abyssal Council>
				},
			}),
			o(180461, {	-- Wind Stone
				["cost"] = {
					{ "i", 143867, 1 },	-- Twilight Cultist Medallion of Station
					{ "i", 143858, 1 },	-- Twilight Cultist Cowl
					{ "i", 143857, 1 },	-- Twilight Cultist Mantle
					{ "i", 143855, 1 },	-- Twilight Cultist Robe
				},
				["coords"] = {
					{ 43.6, 41.6, SILITHUS },
					{ 26.2, 74.8, SILITHUS },
				},
				["groups"] = {
					n(117662, {	-- The Duke of Cynders <Abyssal Council>
						i(143880),	-- Cinder of Cynders [A]
						i(143872),	-- Cinder of Cynders [H]
					}),
					n(117663, {	-- The Duke of Fathoms <Abyssal Council>
						i(143881),	-- Pearl of Fathoms [A]
						i(143873),	-- Pearl of Fathoms [H]
					}),
					n(117664, {	-- The Duke of Shards <Abyssal Council>
						i(143882),	-- Salt of Shards [A]
						i(143874),	-- Salt of Shards [H]
					}),
					n(117665, {	-- The Duke of Zephyrs <Abyssal Council>
						i(143883),	-- Song of Zephyrs [A]
						i(143875),	-- Song of Zephyrs [H]
					}),
				},
			}),
			o(180466, {	-- Greater Wind Stone
				["cost"] = {
					{ "i", 143866, 1 },	-- Twilight Cultist Ring of Lordship
					{ "i", 143867, 1 },	-- Twilight Cultist Medallion of Station
					{ "i", 143858, 1 },	-- Twilight Cultist Cowl
					{ "i", 143857, 1 },	-- Twilight Cultist Mantle
					{ "i", 143855, 1 },	-- Twilight Cultist Robe
				},
				["groups"] = {
					n(15205, {	-- Baron Kazum <Abyssal High Council>
						i(143886),	-- Diamondine Sigil of Kazum [A]
						i(143878),	-- Diamondine Sigil of Kazum [H]
					}),
					n(15204, {	-- High Marshal Whirlaxis <Abyssal High Council>
						i(143885),	-- Glimmering Sigil of Whirlaxis [A]
						i(143877),	-- Glimmering Sigil of Whirlaxis [H]
					}),
					n(15305, {	-- Lord Skwol <Abyssal High Council>
						i(143887),	-- Tidal Sigil of Skwol [A]
						i(143879),	-- Tidal Sigil of Skwol [H]
					}),
					n(15203, {	-- Prince Skaldrenox <Abyssal High Council>
						i(143884),	-- Coreforged Sigil of Skaldrenox [A]
						i(143876),	-- Coreforged Sigil of Skaldrenox [H]
					}),
				},
			}),
		}),
		n(VENDORS, {
			n(117435, {	-- Field Marshal Snowfall
				["coord"] = { 34.06, 80.43, SILITHUS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(151626, {	-- Blue Qiraji War Tank (MOUNT!)
						["cost"] = { { "i", 143865, 1 } },	-- Abyssal Crest
						["collectible"] = false,
						["races"] = ALLIANCE_ONLY,
					}),
					i(143867, {	-- Twilight Cultist Medallion of Station
						["cost"] = { { "i", 143865, 250 } },	-- Abyssal Crest
					}),
					i(143866, {	-- Twilight Cultist Ring of Lordship
						["cost"] = { { "i", 143865, 1000 } },	-- Abyssal Crest
					}),
				},
			}),
			n(117433, {	-- Warlord Gorchuk
				["coord"] = { 33.96, 81.91, SILITHUS },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(151625, {	-- Red Qiraji War Tank (MOUNT!)
						["cost"] = { { "i", 143865, 1 } },	-- Abyssal Crest
						["collectible"] = false,
						["races"] = HORDE_ONLY,
					}),
					i(143867, {	-- Twilight Cultist Medallion of Station
						["cost"] = { { "i", 143865, 250 } },	-- Abyssal Crest
					}),
					i(143866, {	-- Twilight Cultist Ring of Lordship
						["cost"] = { { "i", 143865, 1000 } },	-- Abyssal Crest
					}),
				},
			}),
		}),
		n(WORLD_QUESTS, sharedData({ ["isWorldQuest"] = true }, {
			q(45737, {	-- Ahn'Qiraj: C'thun [A]
				["coord"] = { 46.76, 7.53, AHNQIRAJ_THE_FALLEN_KINGDOM },	-- Temple of Ahn'Qiraj
				["maps"] = {	-- AQ40 Maps
					319,	-- The Hive Undergrounds
					TEMPLE_OF_AHNQIRAJ,	-- The Temple Gates
					321,	-- Vault of C'Thun
				},
				["races"] = ALLIANCE_ONLY,
			}),
			q(45654, {	-- Ahn'Qiraj: C'thun [H]
				["coord"] = { 46.76, 7.53, AHNQIRAJ_THE_FALLEN_KINGDOM },	-- Temple of Ahn'Qiraj
				["maps"] = {	-- AQ40 Maps
					319,	-- The Hive Undergrounds
					TEMPLE_OF_AHNQIRAJ,	-- The Temple Gates
					321,	-- Vault of C'Thun
				},
				["races"] = HORDE_ONLY,
			}),
			q(45736, {	-- The Ruins of Ahn'Qiraj: Ossirian [A]
				["coord"] = { 58.93, 14.26, AHNQIRAJ_THE_FALLEN_KINGDOM },	-- Ruins of Ahn'Qiraj
				["maps"] = { RUINS_OF_AHNQIRAJ },
				["races"] = ALLIANCE_ONLY,
			}),
			q(45651, {	-- The Ruins of Ahn'Qiraj: Ossirian [H]
				["coord"] = { 58.93, 14.26, AHNQIRAJ_THE_FALLEN_KINGDOM },	-- Ruins of Ahn'Qiraj
				["maps"] = { RUINS_OF_AHNQIRAJ },
				["races"] = HORDE_ONLY,
			}),
			q(45739, {	-- Lesser Wind Stones [A]
				["coords"] = {
					{ 22.43, 41.09, SILITHUS },	-- Twilight Base Camp
					{ 26.89, 75.59, SILITHUS },	-- Twilight Outpost
					{ 33.59, 31.45, SILITHUS },	-- Twilight Post
				},
				["races"] = ALLIANCE_ONLY,
			}),
			q(45656, {	-- Lesser Wind Stones [H]
				["coords"] = {
					{ 22.43, 41.09, SILITHUS },	-- Twilight Base Camp
					{ 26.89, 75.59, SILITHUS },	-- Twilight Outpost
					{ 33.59, 31.45, SILITHUS },	-- Twilight Post
				},
				["races"] = HORDE_ONLY,
			}),
			q(45740, {	-- Silithyst [A]
				["coords"] = {
					{ 39.04, 46.86, SILITHUS },	-- Alliance Collector
					{ 54.86, 63.41, SILITHUS },	-- Horde Collector
				},
				["races"] = ALLIANCE_ONLY,
			}),
			q(45657, {	-- Silithyst [H]
				["coords"] = {
					{ 39.04, 46.86, SILITHUS },	-- Alliance Collector
					{ 54.86, 63.41, SILITHUS },	-- Horde Collector
				},
				["races"] = HORDE_ONLY,
			}),
			q(45738, {	-- The Colossus of Ashi [A]
				["qg"] = 117491,	-- Colossus of Ashi
				["coord"] = { 47.33, 22.16, SILITHUS },	-- Hive'Ashi
				["races"] = ALLIANCE_ONLY,
			}),
			q(45655, {	-- The Colossus of Ashi [H]
				["qg"] = 117491,	-- Colossus of Ashi
				["coord"] = { 47.33, 22.16, SILITHUS },	-- Hive'Ashi
				["races"] = HORDE_ONLY,
			}),
			q(45741, {	-- The Colossus of Regal [A]
				["qg"] = 117490,	-- Colossus of Regal
				["coord"] = { 55.61, 71.94, SILITHUS },	-- Hive'Regal
				["races"] = ALLIANCE_ONLY,
			}),
			q(45674, {	-- The Colossus of Regal [H]
				["qg"] = 117490,	-- Colossus of Regal
				["coord"] = { 55.61, 71.94, SILITHUS },	-- Hive'Regal
				["races"] = HORDE_ONLY,
			}),
			q(45742, {	-- The Colossus of Zora [A]
				["qg"] = 117489,	-- Colossus of Zora
				["coord"] = { 33.28, 52.18, SILITHUS },	-- Hive'Zora
				["races"] = ALLIANCE_ONLY,
			}),
			q(45675, {	-- The Colossus of Zora [H]
				["qg"] = 117489,	-- Colossus of Zora
				["coord"] = { 33.28, 52.18, SILITHUS },	-- Hive'Zora
				["races"] = HORDE_ONLY,
			}),
		})),
		n(ZONE_DROPS, {
			i(143865),	-- Abyssal Crest
			i(143858),	-- Twilight Cultist Cowl
			i(143857),	-- Twilight Cultist Mantle
			i(143855),	-- Twilight Cultist Robe
		}),
	},
}))));
