-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

local FIELD_ACCOLADE = 3405;
local DARK_PARTICLE = 267051;

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MID, {
	["groups"] = sharedData({
		["timeline"] = { ADDED_12_0_5 },
	}, {
		header(HEADERS.Achievement, 41052, {	-- Lingering Shadows
			m(VAL, {
				["icon"] = 429385,
				["timeline"] = { ADDED_12_0_7 },
				["cr"] = 264308,	-- Greater Void Portal
				["coord"] = { 51.4, 71.3, MAP.MIDNIGHT.VOIDSTORM },
				["maps"] = {
					2620,	-- The Forgotten Depths
					2621,	-- The Forgotten Depths
					2617,	-- Void Acropolis (Upper)
					2618,	-- Void Acropolis (Lower)
					2619,	-- Void Acropolis
					-- There should be more maps here. There are a lot of sub-zones
				},
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(62842),	-- A Celestial Pain
						ach(62903),	-- Climate Strange: Val
						ach(63386),	-- Frosty Domanaar Politics
						ach(62917),	-- Heroic Climate Strange: Val
						ach(62881),	-- Showdown Slugger: Val
						ach(62880),	-- Showdown Success: Val
						ach(63349),	-- Ultradon Carnage
					}),
					n(QUESTS, {
						q(97215, {	-- A Secondary Strike
							["qg"] = 263479,	-- Riftblade Maella
							["coord"] = { 47.6, 51.0, MAP.MIDNIGHT.SILVERMOON_CITY },
						}),
						q(96048, {	-- The Time to Strike
							["description"] = "Can be accepted from the Adventure Journal.",	-- Or will it pop-up on first log-in when eligible?
							["isBreadcrumb"] = true,
							["qg"] = 263929,	-- Riftblade Maella's Summons
							["coord"] = { 48.3, 64.6, MAP.MIDNIGHT.SILVERMOON_CITY },
						}),
						q(96049, {	-- Stalkers of the Stars
							["sourceQuest"] = 96048,	-- The Time to Strike
							["qg"] = 263479,	-- Riftblade Maella
							["coord"] = { 47.6, 51.0, MAP.MIDNIGHT.SILVERMOON_CITY },
						}),
						q(96703, {	-- Veterans of the Great Dark
							["sourceQuest"] = 96048,	-- The Time to Strike
							["qg"] = 263479,	-- Riftblade Maella
							["coord"] = { 47.6, 51.0, MAP.MIDNIGHT.SILVERMOON_CITY },
						}),
						q(96708, {	-- To the Voidstorm and Beyond!
							["sourceQuests"] = {
								96049,	-- Stalkers of the Stars
								96703,	-- Veterans of the Great Dark
							},
							["qg"] = 263479,	-- Riftblade Maella
							["coord"] = { 47.6, 51.0, MAP.MIDNIGHT.SILVERMOON_CITY },
						}),
						q(96051, {	-- Through the Cold Rift
							["sourceQuest"] = 96708,	-- To the Voidstorm and Beyond!
							["qg"] = 263480,	-- Riftblade Maella
							["coord"] = { 51.6, 71.1, MAP.MIDNIGHT.VOIDSTORM },
						}),
						q(96053, {	-- Surveying the Frozen Wastes
							["sourceQuest"] = 96051,	-- Through the Cold Rift
							["qg"] = 263482,	-- Riftblade Maella
							["coord"] = { 59.3, 19.5, VAL },
						}),
						q(96473, {	-- Imperator Pertinax
							["sourceQuest"] = 96053,	-- Surveying the Frozen Wastes
							["qg"] = 263987,	-- Belath Dawnblade
							["coord"] = { 41.7, 84.6, VAL },
						}),
						q(97071, {	-- A Frigid Welcome to Val
							["sourceQuest"] = 96053,	-- Surveying the Frozen Wastes
							["qg"] = 263987,	-- Belath Dawnblade
							["coord"] = { 41.7, 84.6, VAL },
							["groups"] = { i(276373) },	-- Lightveil Recall Beacon (QI!)
						}),
						q(96310, {	-- Disrupting the Order
							["sourceQuest"] = 96053,	-- Surveying the Frozen Wastes
							["qg"] = 263482, -- Riftblade Maella
							["coord"] = { 59.5, 22.0, VAL },
						}),
						q(96338, {	-- Port of Entry
							["sourceQuest"] = 96310,	-- Disrupting the Order
							["qg"] = 265166,	-- Baraat the Longshot
						}),
						q(96440, {	-- Victory Within Hindsight
							["sourceQuest"] = 96338,	-- Port of Entry
							["qg"] = 265166,	-- Baraat the Longshot
						}),
						q(96496, {	-- The Road Not Taken Twice
							["sourceQuest"] = 96053,	-- Surveying the Frozen Wastes
							["qg"] = 263482, -- Riftblade Maella
							["coord"] = { 59.5, 22.0, VAL },
						}),
						hqt(97294, {	-- Stay awhile and listen: Riftblade Maella
							["sourceQuest"] = 96473,	-- Imperator Pertinax
							["name"] = "Stay awhile and listen: Riftblade Maella",
							["qg"] = 263482, -- Riftblade Maella
							["coord"] = { 59.5, 22.0, VAL },
						}),
						q(96382, {	-- A New Approach
							["qg"] = 264879, -- Decimus
							["coord"] = { 59.8, 22.2, VAL },
							["groups"] = { i(275667) },	-- Veilcaster (QI!)
						}),
						q(96497, {	-- Spatial Reasoning
							["qg"] = 263482, -- Riftblade Maella
							["coord"] = { 59.5, 22.0, VAL },
						}),
						q(96475, {	-- Captivating Science
							["sourceQuest"] = 96497,	-- Spatial Reasoning
							["qg"] = 265334, -- Leona Darkstrider
							["coord"] = { 63.7, 65.2, 2618 },	-- Void Acropolis
						}),
						q(96389, {	-- A Place to Negotiate
							["sourceQuest"] = 96475,	-- Captivating Science
							["qg"] = 265334, -- Leona Darkstrider
							["coord"] = { 63.7, 65.2, 2618 },	-- Void Acropolis
						}),
						q(97077, {	-- A Shot at the Dark
							["sourceQuest"] = 96389,	-- A Place to Negotiate
							["qg"] = 267877, -- Leona Darkstrider
							["coord"] = { 61.2, 70.0, VAL },
						}),
						-- Repeatable
						q(96716, {	-- Showdown on Val (Low Level)
							["qgs"] = {
								263479, -- Riftblade Maella
								263482,	-- Riftblade Maella
							},
							["coords"] = {
								{ 47.7, 51.1, MAP.MIDNIGHT.SILVERMOON_CITY },
								{ 59.3, 19.5, VAL },
								{ 59.5, 22.1, VAL },
							},
							["isWeekly"] = true,
							["groups"] = { i(272125) },	-- Recruit's Cache
						}),
						q(96713, {	-- Showdown on Val
							["sourceQuest"] = 96051,	-- Through the Cold Rift
							["qgs"] = {
								263479, -- Riftblade Maella
								263482,	-- Riftblade Maella
							},
							["coords"] = {
								{ 47.7, 51.1, MAP.MIDNIGHT.SILVERMOON_CITY },
								{ 59.3, 19.5, VAL },
								{ 59.5, 22.1, VAL },
							},
							["Level"] = 90,
							["isWeekly"] = true,
							["groups"] = { i(275690) },	-- Riftstalker's Cache
						}),
						q(96714, {	-- Showdown on Val (Heroic)
							["sourceQuest"] = 96051,	-- Through the Cold Rift
							["qgs"] = {
								263479, -- Riftblade Maella
								263482,	-- Riftblade Maella
							},
							["coords"] = {
								{ 47.7, 51.1, MAP.MIDNIGHT.SILVERMOON_CITY },
								{ 59.3, 19.5, VAL },
								{ 59.5, 22.1, VAL },
							},
							["Level"] = 90,
							["isWeekly"] = true,
							["groups"] = { i(275691) },	-- Riftstalker's Overflowing Cache
						}),
						q(97080, {	-- More Disruption: Val
							["sourceQuest"] = 96713,	-- Showdown on Val
							["qg"] = 263482,	-- Riftblade Maella
							["coord"] = { 59.5, 22.0, VAL },
							["isWeekly"] = true,
							["groups"] = { i(276387) },	-- Riftstalker's Favor
						}),
						q(97081, {	-- More Disruption: Val  (Heroic)
							["sourceQuest"] = 96714,	-- Showdown on Val (Heroic)
							["qg"] = 263482,	-- Riftblade Maella
							["coord"] = { 59.5, 22.0, VAL },
							["isWeekly"] = true,
							["groups"] = { i(276388) },	-- Riftstalker's Overflowing Favor
						}),
						q(97082, {	-- Dangerous Enemies: Val
							["sourceQuest"] = 96713,	-- Showdown on Val
							["qg"] = 263482,	-- Riftblade Maella
							["coord"] = { 59.5, 22.0, VAL },
							["isWeekly"] = true,
							["groups"] = { i(276389) },	-- Riftstalker's Prize
						}),
						q(97083, {	-- Dangerous Enemies: Val (Heroic)
							["sourceQuest"] = 96714,	-- Showdown on Val (Heroic)
							["qg"] = 263482,	-- Riftblade Maella
							["coord"] = { 59.5, 22.0, VAL },
							["isWeekly"] = true,
							["groups"] = { i(276390) },	-- Riftstalker's Overflowing Prize
						}),
					}),
					n(RARES, sharedData({ ["isRepeatable"] = true }, {
						n(262421, {	-- Atomus <Portal Master>
							["coord"] = { 38.2, 79.4, VAL },
							["questID"] = 95940,
						}),
						n(261716, {	-- Glacial Broodmother <Frost-Hive Alpha>
							["coord"] = { 67.2, 42.4, VAL },
							["questID"] = 95559,
						}),
						n(264866, {	-- Krilkan
							["coord"] = { 44.6, 52.8, VAL },
							["questID"] = 96372,
						}),
						n(264865, {	-- Mercilus
							["coord"] = { 49.7, 79.2, VAL },
							["questID"] = 96371,
						}),
						n(264869, {	-- Nelgothar <The Forgotten>
							["coord"] = { 23.2, 41.9, VAL },
							["questID"] = 96374,
						}),
						n(264868, {	-- Opprimius <Reaper of Beasts>
							["coord"] = { 33.0, 43.0, VAL },
							["questID"] = 96373,
						}),
						n(265269, {	-- Shadowguard Destroyer
							["coord"] = { 46.0, 64.6, VAL },
							["questID"] = 96465,
						}),
						n(261965, {	-- Sleet-Rune <The Void-Infused Watcher>
							["coord"] = { 55.2, 65.6, VAL },
							["questID"] = 95939,
						}),
						n(264870, {	-- The Horror Below <The Living Whisper>
							["coord"] = { 35.5, 57.6, VAL },
							["questID"] = 96375,
						}),
						n(264864, {	-- Xirah <Voracious Glutton>
							["coord"] = { 28.6, 74.6, VAL },
							["questID"] = 96370,
						}),
					})),
					n(REWARDS, {
						i(276089),	-- Field Accolades (Normal)
						i(276090),	-- Field Accolades (Heroic)
						i(276097),	-- Lost Armaments (Low Level)
						i(276091),	-- Lost Armaments (Normal)
						i(276092),	-- Lost Armaments (Heroic)
						i(276095),	-- Imperator Pertinax (Normal)
						i(276096),	-- Imperator Pertinax (Heroic)
						i(276098),	-- Raided Items (Low Level)
					}),
					n(SPECIAL, {	-- Move to Treasures if objectid is found
						header(HEADERS.Spell, 1300397, {	-- Testament
							["description"] = "Interact with the Enchanted Hilt at the back of the cave then slay two rares within 30 minutes to prove your worth. Return to the hilt again to claim your rwward.",
							["coords"] = {
								{ 61.4, 78.8, VAL },	-- Cave
								{ 70.5, 84.3, VAL },	-- Enchanted Hilt
							},
							["groups"] = { i(276290) },	-- Ice Guardian's Sleetblade (COSMETIC!)
						}),
					}),
					n(TREASURES, {
						o(655270, {	-- Dominaar Storage Vessel
							["description"] = "Spawns randomly throughout the zone.",
						}),
					}),
					n(WORLD_QUESTS, bubbleDownFiltered({
						["isWorldQuest"] = true,
					},FILTERFUNC_questID,{
						q(95403, {	-- A Lingering Echo
							["coord"] = { 27.6, 75.1, VAL },
						}),
						q(96295, {	-- A Pertinent Punishment
							["coord"] = { 40.2, 77.5, 2618 },	-- Void Acropolis (Lower)
							["cr"] = { 261072 },	-- Imperator Pertinax
						}),
						q(96941, {	-- A Pertinent Punishment (Heroic)
							["coord"] = { 40.2, 77.5, 2618 },	-- Void Acropolis (Lower)
							["cr"] = { 261072 },	-- Imperator Pertinax
						}),
						q(95393, {	-- Caver Saviour
							["coord"] = { 61.6, 78.8, VAL },
						}),
						q(95397, {	-- Cold Reception
							["coord"] = { 47.0, 28.8, VAL },
						}),
						q(95398, {	-- Dissent and Divide
							["coord"] = { 20.3, 41.7, VAL },
						}),
						q(95815, {	-- Downhill Jam (Bonus Objective)
							["coord"] = { 34.5, 74.5, VAL },
						}),
						q(95404, {	-- Freeze Range Eggs
							["coord"] = { 56.0, 49.6, VAL },
						}),
						q(95401, {	-- Junction Dysfunction
							["coord"] = { 35.8, 74.3, VAL },
						}),
						q(96433, {	-- Not the Mama (Bonus Objective)
							["coord"] = { 41.8, 27.0, VAL },
						}),
						q(95392, {	-- One Friend is Plenty
							["coord"] = { 45.4, 52.3, VAL },
						}),
						q(95399, {	-- Shadowy Strategies
							["coord"] = { 79.4, 70.6, 2618 },	-- Void Acropolis (Lower)
						}),
						q(95400, {	-- Solid Cold
							["coord"] = { 46.8, 47.5, VAL },
						}),
						q(96611, {	-- Storm Mitigation (Bonus Objective)
							["coord"] = { 38.8, 65.2, VAL },
						}),
						q(96617, {	-- Storm Mitigation (Bonus Objective)
							["coord"] = { 47.8, 80.4, VAL },
						}),
						q(96618, {	-- Storm Mitigation (Bonus Objective)
							["coord"] = { 50.9, 56.2, VAL },
						}),
						q(95396, {	-- Tainted Ritual
							["coord"] = { 30.8, 38.9, VAL },
						}),
						q(95572, {	-- Thunder Pains
							["coord"] = { 46.2, 49.5, VAL },
						}),
						q(95395, {	-- Until it is Done
							["coord"] = { 32.3, 50.1, VAL },
						}),
					})),
					n(ZONE_DROPS, {
						i(DARK_PARTICLE),
						i(276330),	-- Taken Riftwalker's Starbarb (COSMETIC!)
						i(276299),	-- Umbralwarden's Soul Gavel (COSMETIC!)
					}),
					n(ZONE_REWARDS, {
						currency(FIELD_ACCOLADE),
						i(278116),	-- Player Experience
						n(ARMOR, {
							filter(BACK_F, {
								i(274820),	-- Cloak of the Voracious Gorger
								i(274818),	-- Drape of Intense Darkness
								i(274821),	-- Drape of the Hal'hadar Assassin
								i(274819),	-- Fungle Fold Frock
							}),
							filter(CLOTH, {
								i(274835),	-- Bands of Pincher Sinew
								i(274834),	-- Cord of Domineering Resolve
								i(274829),	-- Creature Corruptor Slippers
								i(274828),	-- Domanaar Subjugator's Vestments
								i(274832),	-- Fel-Tainted Trousers
								i(274830),	-- Ice-Glazed Gloves
								i(274833),	-- Icy Spidersilk Mantle
								i(274831),	-- Portal Shaper's Circlet
							}),
							filter(FINGER_F, {
								i(274822),	-- Band of the Beast Reaper
								i(274825),	-- Hal'hadar Assassin's Signet
								i(274823),	-- Spongy Gill Loop
								i(274824),	-- Worldeater's Bone Ring
							}),
							filter(LEATHER, {
								i(274839),	-- Cold-World Cover
								i(274837),	-- Corrupted Hide Boots
								i(274841),	-- Frigid Cavedweller's Shoulderpads
								i(274842),	-- Gatekeeper's Leather Waistguard
								i(274838),	-- Gloves of the Descending Destroyer
								i(274840),	-- Pants of the Lost Legion
								i(274843),	-- Pincher-Proof Wristguards
								i(274836),	-- Sleet-Resistant Jerkin
							}),
							filter(MAIL, {
								i(274847),	-- Atomus's Headcover
								i(274849),	-- Frostscale Spider's Monnion
								i(274846),	-- Glacier Basin Gauntlets
								i(274851),	-- Glittering Frostscale Wraps
								i(274845),	-- Greaves of Corrupted Scale
								i(274848),	-- Legguards of Fel-Corruption
								i(274850),	-- Mercilus's Chain Waistguard
								i(274844),	-- Sleetlink Hauberk
							}),
							filter(NECK_F, {
								i(274826),	-- Coiling Smoke Chain
								i(274827),	-- Draenic Drive Chain
							}),
							filter(PLATE, {
								i(274857),	-- Chitonous Broodmother's Spaulders
								i(274853),	-- Creature Crushers
								i(274858),	-- Domanaar Battle Belt
								i(274856),	-- Felguard's Frozen Greaves
								i(274859),	-- Klaxid Plate Vambraces
								i(274855),	-- Portal-Keeper's Helm
								i(274854),	-- Shadowguard Plate Gauntlets
								i(274852),	-- Sleetstone Chestplate
							}),
							filter(TRINKET_F, {
								i(274890),	-- Enchanted Spore
								i(274893),	-- Frosty Klaxid Stinger
								i(274891),	-- Mk XII Gear Drive
								i(274892),	-- Resilient Felblood Vial
							}),
						}),
						n(WEAPONS, {
							i(274860),	-- Ancient Spore-Coated Axe
							i(274870),	-- Assassin's Void-String Bow
							i(274862),	-- Corrupted Draenei Priest's Kris
							i(274863),	-- Cudgel of the Twisted Reaper
							i(274872),	-- Darkness' Horrific Barb
							i(274865),	-- Destroyer's Drop Hammer
							i(274874),	-- Flickering Wing Separator
							i(274861),	-- Frosty Broodmother's Fang
							i(274873),	-- Funeral Attendant's Spire
							i(274871),	-- Giant Worm Piercer
							i(274867),	-- Inscribed Domanaar's Sword
							i(274868),	-- Portal Master's Shortblade
							i(274876),	-- Reinforced Fungalhide Bulwark
							i(274875),	-- Riftwalker's Lantern
							i(274864),	-- Sporebloom Gavel
							i(274866),	-- Voidwarped Edge
							i(274869),	-- Void-Iced Warglaives
						}),
					}),
				},
			}),
		}),
	}),
}));
