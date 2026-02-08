---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

-- #if BEFORE 9.2.5
local ATTENDANTS_TOKEN_OF_MERIT = 187219;	-- Shadowlands S3
-- #else
local ATTENDANTS_TOKEN_OF_MERIT = 199202;	-- Shadowlands Season 4
-- #endif

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	m(ORIBOS, {
		n(VENDORS, {
			n(169524, {	-- Acquirer Ta'gosh <Curiosity Vendor>
				["coord"] = { 61.7, 72.3, ORIBOS },
				["groups"] = {
					i(180970, {	-- Teregeer Crystal
						["description"] = "Take this to Ta'ruca in Revendreth |cffffffff(51.1, 78.5)|r.",
					}),
					i(186684, {	-- Memories of Brigther Times
						["collectible"] = false,
						["timeline"] = { ADDED_9_1_0 },
					}),
				},
			}),
			n(176064, {	-- Adjutant Mikaros <Ascended Quartermaster>
				["coord"] = { 47.6, 77.2, ORIBOS },
				["sym"] = {{"select","npcID",160470},	-- Adjutant Nikos <Ascended Quartermaster>
							{"isnt","repeatable"},		-- Not Paragon quest
							{"pop"}},
			}),
			n(176368, {	-- Archivist Leonara <Avowed Quartermaster>
				["coord"] = { 46.1, 77.7, ORIBOS },
				["sym"] = {{"select","npcID",173705},	-- Archivist Janeera <Avowed Quartermaster>
							{"isnt","repeatable"},		-- Not Paragon quest
							{"pop"}},
			}),
			n(182864, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 } }, {	-- Au'Dara
				["description"] = "Next to the flightmaster.",
				["coord"] = { 59.7, 70.6, ORIBOS },
				["groups"] = {
					i(188174, {	-- Unchained Equipment Cache [PvP S2]
						["timeline"] = { ADDED_9_1_5, REMOVED_9_2_0 },
						["cost"] = { { "c", CONQUEST, 375 } },
						-- #IF BEFORE 9.2.0
						["skipFill"] = true,
						["sym"] = {
							{"select", "headerID", SEASON_UNCHAINED },	-- Select Unchained Gladiator: Shadowlands Season 2
							{"find", "headerID", PVP_GLADIATOR },		-- Gladiator Header
							{"pop"},									-- Discard the Header and acquire all of the children.
						},
						-- #ENDIF
						-- #IF AFTER 9.2.0
						["groups"] = {
							i(188759),	-- Sealed Vintage Darkmoon Deck
						},
						-- #ENDIF
					}),
					i(194118, {	-- Cosmic Equipment Chest [PvP S3]
						["timeline"] = { ADDED_9_2_0, REMOVED_9_2_5 },
						["cost"] = { { "c", CONQUEST, 375 } },
						-- #IF BEFORE 9.2.5
						["skipFill"] = true,
						["sym"] = {
							{"select", "headerID", SEASON_COSMIC },	-- Select Cosmic Gladiator: Shadowlands Season 3
							{"find", "headerID", PVP_GLADIATOR },	-- Gladiator Header
							{"pop"},								-- Discard the Header and acquire all of the children.
						},
						-- #ENDIF
					}),
					i(201355, {	-- Eternal Equipment Chest [PvP S4]
						["timeline"] = { ADDED_9_2_7, REMOVED_10_0_2_LAUNCH },
						["cost"] = { { "c", CONQUEST, 375 } },
						-- #IF BEFORE 10.0.2
						["skipFill"] = true,
						["sym"] = {
							{"select", "headerID", SEASON_ETERNAL },	-- Select Eternal Gladiator: Shadowlands Season 4
							{"find", "headerID", PVP_GLADIATOR },		-- Gladiator Header
							{"pop"},									-- Discard the Header and acquire all of the children.
						},
						-- #ENDIF
					}),
					i(188173, {	-- Valorous Equipment Cache [M+ S2]
						["timeline"] = { ADDED_9_1_5, REMOVED_9_2_0 },
						["cost"] = { { "c", VALOR, 500 } },
						-- #IF BEFORE 9.2.0
						["skipFill"] = true,
						["sym"] = {{"select", "instanceID",
							-- Dungeons
							1188,	-- De Other Side
							1185,	-- Halls of Atonement
							1184,	-- Mists of Tirna Scithe
							1182,	-- Necrotic Wake
							1183,	-- Plaguefall
							1189,	-- Sanguine Depths
							1186,	-- Spires of Ascension
							1194,	-- Tazavesh, the Veiled Market
							1187,	-- Theater of Pain
							},
							{"pop"},								-- Discard the Instance Headers and acquire all of their children.
							{"where", "difficultyID", 23},			-- Select only the Mythic Difficulty Headers.
							{"extract", "itemID"},					-- Only Items!
							{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
						},
						-- #ENDIF
					}),
					i(194334, {	-- Encrypted Equipment Chest [M+ S3]
						["timeline"] = { ADDED_9_2_5, REMOVED_9_2_7 },
						["cost"] = { { "c", VALOR, 500 } },
						-- #IF BEFORE 9.2.7
						["skipFill"] = true,
						["sym"] = {{"select", "instanceID",
							-- Dungeons
							1188,	-- De Other Side
							1185,	-- Halls of Atonement
							1184,	-- Mists of Tirna Scithe
							1182,	-- Necrotic Wake
							1183,	-- Plaguefall
							1189,	-- Sanguine Depths
							1186,	-- Spires of Ascension
							1194,	-- Tazavesh, the Veiled Market
							1187,	-- Theater of Pain
							},
							{"pop"},								-- Discard the Instance Headers and acquire all of their children.
							{"where", "difficultyID", 23},			-- Select only the Mythic Difficulty Headers.
							{"extract", "itemID"},					-- Only Items!
							{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
						},
						-- #ENDIF
					}),
					i(201362, {	-- Fated Equipment Chest [M+ S4]
						["timeline"] = { ADDED_9_2_7, REMOVED_10_0_2_LAUNCH },
						["cost"] = { { "c", VALOR, 500 } },
						-- #IF BEFORE 10.0.2
						["skipFill"] = true,
						["sym"] = {{"select", "instanceID",
							-- Dungeons
							1188,	-- De Other Side
							1185,	-- Halls of Atonement
							1184,	-- Mists of Tirna Scithe
							1182,	-- Necrotic Wake
							1183,	-- Plaguefall
							1189,	-- Sanguine Depths
							1186,	-- Spires of Ascension
							1194,	-- Tazavesh, the Veiled Market
							1187,	-- Theater of Pain
							},
							{"pop"},								-- Discard the Instance Headers and acquire all of their children.
							{"where", "difficultyID", 23},			-- Select only the Mythic Difficulty Headers.
							{"extract", "itemID"},					-- Only Items!
							{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
						},
						-- #ENDIF
					}),
					i(188198, {	-- Travlers Anima Cache
						["description"] = "This item allows you to transfer anima between characters in a one-to-one ratio.",
						["cost"] = { { "c", ANIMA, 1000 } },
						["groups"] = {
							currency(ANIMA),	-- 1000x Anima
						},
					}),
					i(188167, {	-- Broker Mark of Distinction
						["cost"] = 5000000,	-- 500g
					}),
					i(187997, {	-- Eternal Heirloom Armor Casing
						["cost"] = 50000000,	-- 5000g
					}),
					i(187998, {	-- Eternal Heirloom Scabbard
						["cost"] = 75000000,	-- 7500g
					}),
					i(190184, {	-- Incense of Infinity (CI!)
						["cost"] = 5000000,	-- 500g
						["sourceAchievement"] = 14834,	-- Bound with Purpose
						["sym"] = {
							{"select","expansionID",EXPANSION.SL},	-- Select Shadowlands
							{"find","headerID",CONDUITS},{"pop"},	-- grab the main Conduits category (to keep the class grouping)
						},
					}),
					i(187869, {	-- Scouting Map: Into the Shadowlands (TOY!)
						["cost"] = 100000000,	-- 10000g
					}),
					i(188673, {	-- Timebound Runimations
						["cost"] = { { "c", ANIMA, 10000 } },
					}),
				},
			})),
			n(176067, {	-- Dar Vattish <Undying Army Quartermaster>
				["coord"] = { 47.8, 77.9, ORIBOS },
				["sym"] = {{"select","npcID",173003},	-- Nalcorn Talsen <Undying Army Quartermaster>
							{"isnt","repeatable"},		-- Not Paragon quest
							{"pop"}},
			}),
			n(176066, {	-- Darvel the Frugal <Court of Harvesters Quartermaster>
				["coord"] = { 46.6, 77.2, ORIBOS },
				["sym"] = {{"select","npcID",156822},	-- Mistress Mihaela <Court of Harvesters Quartermaster>
							{"isnt","repeatable"},		-- Not Paragon quest
							{"pop"}},
			}),
			n(156690, {	-- Distributor Au'nagl
				["coord"] = { 47.0, 23.6, ORIBOS },
				["groups"] = {
					i(180136),	-- The Brokers Angle'r
				},
			}),
			n(176197, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_5 } }, {	-- Griftah <Amazing Amulets>
				["coord"] = { 51.0, 43.4, ORIBOS },
				["groups"] = {
					i(188226),	-- Boots o' Maw Walkin
					i(188224),	-- Darling Maldraxxi Doll
					i(188217),	-- De Purpose
					i(188221),	-- Eye of the Wailer
					i(188219),	-- Garlic Pendant of Fang-Warding
					i(188218),	-- Korthian Secret-Keeping Journal
					i(188223),	-- Stain of Domination
					i(188222),	-- Steward Wings
					i(188220),	-- Torghast Ash Globe
					i(188225),	-- Worneblade
				},
			})),
			n(156769, {	-- Keeper Ta'hult <Pet Vendor>
				["coord"] = { 64.9, 67.3, ORIBOS },
				["groups"] = sharedData({ ["timeline"] = { ADDED_9_1_0 } }, {
					i(185919, {	-- Flawless Amethyst Baubleworm (PET!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 10000 } },
					}),
					i(186537, {	-- Ruby Baubleworm (PET!)
						["cost"] = {
							{ "i", 36812, 1 },	-- Ground Gear
							{ "i", 62072, 1 },	-- Robble's Wobbly Staff
							{ "i", 67410, 1 },	-- Very Unlucky Rock
						},
					}),
					i(186535, {	-- Topaz Baubleworm (PET!)
						["cost"] = {
							{ "i", 11406, 1 },	-- Rotting Bear Carcass
							{ "i", 11944, 1 },	-- Dark Iron Baby Booties
							{ "i", 25402, 1 },	-- The Stoppable Force
						},
					}),
					i(186536, {	-- Turquoise Baubleworm (PET!)
						["cost"] = {
							{ "i", 3300, 1 },	-- Rabbit's Foot
							{ "i", 3670, 1 },	-- Large Slimy Bone
							{ "i", 6150, 1 },	-- A Frayed Knot
						},
					}),
					i(186992, {	-- Formula: Anima-ted Leash (RECIPE!)
						["cost"] = { { "i", POLISHED_PET_CHARM, 15 } },
					}),
				}),
			}),
			n(188391, {	-- Ko'ropo <Sire Supplier>
				["coord"] = { 66.7, 31.6, ORIBOS },
				["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
				--[[
				["sym"] = {
					{"select", "instanceID", 1190},			-- Castle Nathria
					{"pop"},								-- Discard the Instance Headers and acquire all of their children.
					{"where", "difficultyID", 14},			-- Select only the Normal Difficulty Headers.
					{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
					{"is","encounterID"},					-- Only Encounter Headers
					{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
					{"is", "itemID"},						-- Only Items!
					{"invtype", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
				},
				--]]
			}),
			n(177829, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_5 } }, {	-- Ko'tul <Exchange Specialist>
				["coord"] = { 63.8, 36.0, ORIBOS },
				["groups"] = {
					i(187254, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 } }, {	-- Arrangement of Anima
						["cost"] = { { "i", ATTENDANTS_TOKEN_OF_MERIT, 1 } },
						["groups"] = {
							currency(ANIMA),	-- Reservoir Anima
						},
					})),
					i(191302, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_0, REMOVED_10_0_2_LAUNCH } }, {	-- Bottled Night Sky
						["cost"] = { { "i", ATTENDANTS_TOKEN_OF_MERIT, 1 } },
						["groups"] = {
							i(188957),	-- Genesis Mote
						},
					})),
					i(187503, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0, REMOVED_10_0_2_LAUNCH } }, {	-- Bundle of Archived Research
						["cost"] = { { "i", ATTENDANTS_TOKEN_OF_MERIT, 1 } },
						["groups"] = {
							currency(1931),	-- Cataloged Research
						},
					})),
					i(191300, {	-- Certified Vouchsafe
						["cost"] = { { "i", ATTENDANTS_TOKEN_OF_MERIT, 1 } },
						["timeline"] = { ADDED_9_2_0 },
					}),
					i(191030, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_0, REMOVED_10_0_2_LAUNCH } }, {	-- Cosmic Flux Parcel
						["cost"] = { { "i", ATTENDANTS_TOKEN_OF_MERIT, 1 } },
						["groups"] = {
							currency(2009),	-- Cosmic Flux
						},
					})),
					i(191297, {	-- Ephemera-Infused Mesh
						["cost"] = { { "i", ATTENDANTS_TOKEN_OF_MERIT, 6 } },
						["timeline"] = { ADDED_9_2_0, REMOVED_9_2_5 },
					}),
					i(199112, {	-- Fated Matter Fractalizer
						["cost"] = { { "i", ATTENDANTS_TOKEN_OF_MERIT, 3 } },
						["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
					}),
					i(187817, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0, REMOVED_10_0_2_LAUNCH } }, {	-- Korthite Crystal Geode
						["cost"] = { { "i", ATTENDANTS_TOKEN_OF_MERIT, 3 } },
						["groups"] = {
							i(186017),	-- Korthite Crystal
						},
					})),
					i(187817, {	-- Korthite Crystal Geode
						["timeline"] = { ADDED_9_1_0, REMOVED_10_0_2_LAUNCH },
						["cost"] = { { "c", VALOR, 1500 } },
						["groups"] = {
							i(186017),	-- Korthite Crystal
						},
					}),
					i(191303, {	-- Overflowing Chest of Riches
						["cost"] = { { "i", ATTENDANTS_TOKEN_OF_MERIT, 3 } },
						["timeline"] = { ADDED_9_2_0, REMOVED_10_0_2_LAUNCH },
					}),
					i(187707, {	-- Progentior Essentia
						["cost"] = { { "i", ATTENDANTS_TOKEN_OF_MERIT, 3 } },
						["timeline"] = { ADDED_9_2_0, REMOVED_10_0_2_LAUNCH },
					}),
					i(185832, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_5, REMOVED_10_0_2_LAUNCH } }, {	-- Shipment of Elethium Ore
						["cost"] = { { "c", VALOR, 750 } },
						["groups"] = {
							i(171833),	-- Elethium Ore
						},
					})),
					i(185765, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_5, REMOVED_10_0_2_LAUNCH } }, {	-- Shipment of Heavy Callous Hide
						["cost"] = { { "c", VALOR, 750 } },
						["groups"] = {
							i(172097),	-- Heavy Callous Hide
						},
					})),
					i(185833, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_5, REMOVED_10_0_2_LAUNCH } }, {	-- Shipment of Lightless Silk
						["cost"] = { { "c", VALOR, 750 } },
						["groups"] = {
							i(173204),	-- Lightless Silk
						},
					})),
					i(187221, {	-- Soul Ash Cache
						["timeline"] = { ADDED_9_1_0, REMOVED_10_0_2_LAUNCH },
						["cost"] = { { "i", ATTENDANTS_TOKEN_OF_MERIT, 1 } },
						["groups"] = {
							currency(1828),	-- Soul Ash
						},
					}),
					i(187222, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0, REMOVED_10_0_2_LAUNCH } }, {	-- Stygic Singularity
						["cost"] = { { "i", ATTENDANTS_TOKEN_OF_MERIT, 1 } },
						["groups"] = {
							currency(1767),	-- Stygia
						},
					})),
					i(191301, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_0, REMOVED_10_0_2_LAUNCH } }, {	-- Treatise on Patterns in the Purpose
						["cost"] = { { "i", ATTENDANTS_TOKEN_OF_MERIT, 1 } },
						["groups"] = {
							currency(1979),	-- Cyphers of the First Ones
						},
					})),
					i(191299, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_0, REMOVED_10_0_2_LAUNCH } }, {	-- Tribute of the Enlightened
						["cost"] = { { "i", ATTENDANTS_TOKEN_OF_MERIT, 1 } },
					})),
				},
			})),
			n(176065, {	-- Liawyn <Wild Hunt Quartermaster>
				["coord"] = { 47.0, 76.8, ORIBOS },
				["sym"] = {{"select","npcID",158556},	-- Aithlyn <Wild Hunt Quartermaster>
							{"isnt","repeatable"},		-- Not Paragon quest
							{"pop"}},
			}),
			n(188377, {	-- So'turu <Fence of the First Ones>
				["coord"] = { 67.0, 32.2, ORIBOS },
				["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
				--[[
				["sym"] = {
					{"select", "instanceID", 1195},			-- Sepulcher of the First Ones
					{"pop"},								-- Discard the Instance Headers and acquire all of their children.
					{"where", "difficultyID", 14},			-- Select only the Normal Difficulty Headers.
					{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
					{"is", "encounterID" },					-- Only Encounter Headers
					{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
					{"is", "itemID"},						-- Only Items!
					{"invtype", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
				},
				--]]
			}),
			n(188386, {	-- Ta'choso <Domination Dealer>
				["coord"] = { 67.3, 32.7, ORIBOS },
				["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
				--[[
				["sym"] = {
					{"select", "instanceID", 1193},			-- Sanctum of Domination
					{"pop"},								-- Discard the Instance Headers and acquire all of their children.
					{"where", "difficultyID", 14},			-- Select only the Normal Difficulty Headers.
					{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
					{"is", "encounterID" },					-- Only Encounter Headers
					{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
					{"is", "itemID"},						-- Only Items!
					{"invtype", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
				},
				--]]
			}),
			n(167881, {	-- Ta'lan the Antiquary <Cartel Ta>
				["coord"] = { 51.3, 43.0, 1672 },	-- Broker's Den
				["groups"] = {
					i(180971, {	-- Aquamarine Cartel Chit
						["description"] = "Take this to Acquirer Ta'gosh in Oribos |cffffffff(61.7, 72.3)|r.",
					}),
				},
			}),
			n(181681, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_5 } }, {	-- Tu'kol <Anima Exchange Specialist>
				["coord"] = { 63.8, 36.0, ORIBOS },
				["groups"] = {
					i(187817, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Korthite Crystal Geode
						["cost"] = { { "c", ANIMA, 15000 } },
						["groups"] = {
							i(186017),	-- Korthite Crystal
						},
					})),
					i(187707, {	-- Progentior Essentia
						["cost"] = { { "c", ANIMA, 25000 } },
						["timeline"] = { ADDED_9_2_0 },
					}),
					i(185832, {	-- Shipment of Elethium Ore
						["cost"] = { { "c", ANIMA, 7500 } },
						["groups"] = {
							i(171833),	-- Elethium Ore
						},
					}),
					i(185765, {	-- Shipment of Heavy Callous Hide
						["cost"] = { { "c", ANIMA, 7500 } },
						["groups"] = {
							i(172097),	-- Heavy Callous Hide
						},
					}),
					i(185833, {	-- Shipment of Lightless Silk
						["cost"] = { { "c", ANIMA, 7500 } },
						["groups"] = {
							i(173204),	-- Lightless Silk
						},
					}),
				},
			})),
		}),
	}),
})));
