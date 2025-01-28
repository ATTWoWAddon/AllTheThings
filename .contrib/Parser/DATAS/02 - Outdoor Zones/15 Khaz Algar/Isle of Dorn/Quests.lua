---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local TEMPORARY_SOURCEQUEST = 78536;	-- Set to Completing First Chapter
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(ISLE_OF_DORN, {
		n(QUESTS, {
			header(HEADERS.Achievement, 20118, {	-- The Isle of Dorn
				q(81966, {	-- Slept like a Rock
					["description"] = "Requires re-logging to be accepted.",
					["sourceQuests"] = { 80500 },	-- The Bronzebeard Family
					["maps"] = { LEGION_DALARAN },
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(78717, {	-- A Mysterious Warning
					["qg"] = 213624,	-- Magni Bronzebeard
					["coords"] = {
						{ 45.3, 57.4, LEGION_DALARAN },
						{ 45.7, 56.1, 629 },	-- Legion Dalaran, Aegwynn's Gallery
					},
					["sourceQuests"] = { 81966 },	-- Slept like a Rock
				}),
				q(78719, {	-- Citizens of Dalaran
					["qg"] = 213627,	-- Archmage Khadgar
					["coord"] = { 41.2, 62.3, LEGION_DALARAN },
					["sourceQuests"] = { 78717 },	-- A Mysterious Warning
				}),
				q(78721, {	-- Meet the Team
					["qg"] = 214669,	-- Brann Bronzebeard
					["coord"] = { 47.0, 49.1, LEGION_DALARAN },
					["sourceQuests"] = { 78717 },	-- A Mysterious Warning
				}),
				q(78718, {	-- Strengthen the Wards
					["qg"] = 214665,	-- Archmage Drenden
					["coord"] = { 56.4, 33.2, LEGION_DALARAN },
					["sourceQuests"] = { 78717 },	-- A Mysterious Warning
					["g"] = {
						i(220483),	-- Tuning Wand (QI!)
					},
				}),
				q(78722, {	-- To Khaz Algar!
					["qg"] = 213627,	-- Archmage Khadgar
					["coord"] = { 41.2, 62.3, LEGION_DALARAN },
					["sourceQuests"] = {
						78719,	-- Citizens of Dalaran
						78721,	-- Meet the Team
						78718,	-- Strengthen the Wards
					},
				}),
				q(79105, {	-- Breach
					["qg"] = 214908,	-- Alleria Windrunner
					["coord"] = { 50.4, 50.4, 2305 },	-- Quest Dalaran
					["sourceQuests"] = { 78722 },	-- To Khaz Algar!
				}),
				q(79106, {	-- Rupture
					["qg"] = 214908,	-- Alleria Windrunner
					["coord"] = { 35.7, 71.3, 2305 },	-- Quest Dalaran
					["sourceQuests"] = { 79105 },	-- Breach
					["maps"] = { 2307, 2306, },	-- Dalaran
				}),
				q(80321, {	-- Departure
					["qg"] = 219885,	-- Anduin Wrynn
					["coord"] = { 72.6, 57.7, 2307 },	-- Quest Dalaran
					["sourceQuests"] = { 79106 },	-- Rupture
					["g"] = {
						i(220379),	-- City Guard's Chainmail (doesn't load ingame?)
						i(224455),	-- City Guard's Chainmail
						i(224453),	-- City Guard's Coronet
						i(224456),	-- City Guard's Greaves
						i(224454),	-- City Guard's Mask
					},
				}),
				------ Chapter 1 ------
				q(78529, {	-- Violent Impact
					["qg"] = 217930,	-- Pile of Rubble
					["coord"] = { 28.8, 54.5, ISLE_OF_DORN },
					["sourceQuests"] = { 80321 },	-- Departure
				}),
				q(78530, {	-- Slay the Saboteurs
					["sourceQuests"] = { 78529 },	-- Violet Impact
					["provider"] = { "n", 211994 },	-- Lady Jaina Proudmoore
					["coord"] = { 29.5, 55.0, ISLE_OF_DORN },
				}),
				q(78531, {	-- Urgent Recovery
					["sourceQuests"] = { 78529 },	-- Violet Impact
					["provider"] = { "n", 211993 },	-- Thrall
					["coord"] = { 29.5, 55.1, ISLE_OF_DORN },
				}),
				q(80334, {	-- Shattered Spires
					["sourceQuests"] = {
						78530,	-- Slay the Saboteurs
						78531,	-- Urgent Recovery
					},
					["provider"] = { "n", 211994 },	-- Lady Jaina Proudmoore
					["lockCriteria"] = { 1, "questID", 78532 },	-- Erratic Artifacts
					["coord"] = { 29.5, 55.0, ISLE_OF_DORN },
					["isBreadcrumb"] = true,
				}),
				q(78532, {	-- Erratic Artifacts
					["sourceQuests"] = { 78529 },	-- Violet Impact
					["provider"] = { "n", 223166 },	-- Archmage Aethas Sunreaver
					["coord"] = { 30.1, 55.1, ISLE_OF_DORN },
					["g"] = {
						i(211535),	-- Scroll of Shattering (QI!)
					},
				}),
				q(78533, {	-- Secure the Beach
					["sourceQuests"] = {
						78532,	-- Erratic Artifacts
						78530,	-- Slay the Saboteurs
						78531,	-- Urgent Recovery
					},
					["provider"] = { "n", 212450 },	-- Anduin Wrynn
					["coord"] = { 29.5, 55.0, ISLE_OF_DORN },
					["g"] = {
						i(219754),	-- Remembrance of the Fallen City
					},
				}),
				q(78534, {	-- To Dornogal
					["sourceQuests"] = { 78533 },	-- Secure the Beach
					["provider"] = { "n", 211859 },	-- Baelgrim
					["coord"] = { 30.4, 55.7, ISLE_OF_DORN },
				}),
				q(78535, {	-- They Come from Below
					["sourceQuests"] = { 78534 },	-- To Dornogal
					["provider"] = { "n", 216628 },	-- Baelgrim
					["coord"] = { 33.6, 75.2, DORNOGAL },
				}),
				q(78536, {	-- Impossible Odds
					["sourceQuests"] = { 78535 },	-- They Come from Below
					["provider"] = { "n", 217852 },	-- Baelgrim
					["coord"] = { 36.2, 64.2, DORNOGAL },
					["g"] = {
						i(219749),	-- Charred Nerubian Helm
						i(219747),	-- Charred Nerubian Leggings
						i(219746),	-- Charred Nerubian Robes
						i(219748),	-- Charred Nerubian Warplate
					},
				}),
				------ Chapter 2 ------
				q(78460, {	-- Hypocenter
					["sourceQuests"] = { 78536 },	-- Impossible Odds
					["provider"] = { "n", 217852 },	-- Baelgrim
					["coord"] = { 36.2, 64.2, DORNOGAL },
					["g"] = {
						i(217610),	-- Earthen Memory Gem (QI!)
					},
				}),
				q(78468, {	-- The Archive
					["sourceQuests"] = { 78460 },	-- Hypocenter
					["provider"] = { "n", 217857 },	-- Speaker Brinthe
					["coord"] = { 29.4, 59.9, DORNOGAL },
				}),
				------ Stay awhile and listen ------
				hqt(82461, {	-- Stay awhile and listen: Dagran Thaurissan II
					["name"] = "Stay awhile and listen: Dagran Thaurissan II",
					["description"] = "Dialogue becomes available after completing 'The Archive' (78468).",
					["sourceQuests"] = { 78468 },	-- The Archive (Completed)
					["provider"] = { "n", 217859 },	-- Dagran Thaurissan II
					["coord"] = { 29.8, 60.0, DORNOGAL },
				}),
				---
				q(78457, {	-- Stones of Dornogal
					["description"] = "After speaking with Innkeeper Ronesh, enter The Inn and talk to Anduin Wrynn and Magni Bronzebeard.",
					["sourceQuests"] = { 78460 },	-- Hypocenter
					["provider"] = { "n", 217854 },	-- Merrix
					["coord"] = { 29.4, 59.4, DORNOGAL },
					["g"] = {
						i(216697),	-- Councilward's Signet (QI!)
					},
				}),
				------ Stay awhile and listen ------
				hqt(82459, {	-- Stay awhile and Listen: Anduin Wrynn
					["name"] = "Stay awhile and listen: Anduin Wrynn",
					["description"] = "Dialogue becomes available after accepting 'Hypocenter' (78460).",
					["sourceQuests"] = { 78460 },	-- Hypocenter (Accepted)
					["provider"] = { "n", 222558 },	-- Anduin Wrynn
					["coord"] = { 44.8, 44.7, DORNOGAL },
					["lockCriteria"] = { 1, "questID", 78462 },	-- Echoes of Compassion
				}),
				hqt(82460, {	-- Stay awhile and Listen: Magni Bronzebeard
					["name"] = "Stay awhile and listen: Magni Bronzebeard",
					["description"] = "Dialogue becomes available after accepting 'Stones of Dornogal' (78457).",
					["sourceQuests"] = { 78457 },	-- Stones of Dornogal (Accepted)
					["provider"] = { "n", 222557 },	-- Magni Bronzebeard
					["coord"] = { 44.5, 44.5, DORNOGAL },
					["lockCriteria"] = { 1, "questID", 78462 },	-- Echoes of Compassion
				}),
				--
				q(78459, {	-- State of the Union
					["sourceQuests"] = {
						78457,	-- Stones of Dornogal
						78468,	-- The Archive
					},
					["provider"] = { "n", 217861 },	-- Merrix
					["coord"] = { 39.9, 26.0, DORNOGAL },
				}),
				q(78461, {	-- The Fourth Seat
					["sourceQuests"] = { 78459 },	-- State of the Union
					["provider"] = { "n", 217864 },	-- Moira Thaurissan
					["coord"] = { 40.5, 25.8, DORNOGAL },
				}),
				------ Stay awhile and listen ------
				hqt(82462, {	-- Stay awhile and listen: Moira Thaurissan
					["name"] = "Stay awhile and listen: Moira Thaurissan",
					["sourceQuests"] = { 78461 },	-- The Fourth Seat
					["provider"] = { "n", 217878 },	-- Moira Thaurissan
					["coord"] = { 41.9, 72.7, ISLE_OF_DORN },
					["lockCriteria"] = { 1, "questID", 78462 },	-- Echoes of Compassion
				}),
				--
				q(78464, {	-- Delve into the Earth
					["description"] = "For some reason, Blizzard decided that this quest would have Spec-specific loot attached. You will NOT collect all available appearances for your class automatically - make sure you are in the correct spec.",
					["sourceQuests"] = { 78461 },	-- The Fourth Seat
					["provider"] = { "n", 217879 },	-- Adelgonn
					["coord"] = { 41.8, 72.6, ISLE_OF_DORN },
					["maps"] = { 2269 },	-- Earthcrawl Mines
					["g"] = {
						i(219785),	-- Arachnophobic Spelunker's Battleaxe
						i(219784),	-- Arachnophobic Spelunker's Battlestaff
						i(219783),	-- Arachnophobic Spelunker's Crossbow
						i(219789),	-- Arachnophobic Spelunker's Greatmace
						i(219788),	-- Arachnophobic Spelunker's Knife
						i(219786),	-- Arachnophobic Spelunker's Saber
						i(219792),	-- Arachnophobic Spelunker's Scepter
						i(219790),	-- Arachnophobic Spelunker's Spellsword
						i(219787),	-- Arachnophobic Spelunker's Striker
					},
				}),
				q(79553, {	-- A Natural Remedy
					["sourceQuests"] = { 78464 },	-- Delve into the Earth
					["provider"] = { "n", 217879 },	-- Adelgonn
					["coord"] = { 41.8, 72.6, ISLE_OF_DORN },
					["g"] = {
						i(213233),	-- Fungarian Chunks (QI!)
					},
				}),
				q(78463, {	-- Building Blocks
					["sourceQuests"] = { 78464 },	-- Delve into the Earth
					["provider"] = { "n", 217881 },	-- Baelgrim
					["coord"] = { 41.8, 72.7, ISLE_OF_DORN },
					["g"] = {
						o_repeated({
							i(211962),	-- Glittering Ore (QI!)
							o(416950),	-- Unsorted Ore Pile
							o(416954),	-- Ore Fragment
						}),
					},
				}),
				q(78462, {	-- Echoes of Compassion
					["description"] = "For some reason, Blizzard decided that this quest would have Spec-specific loot attached. You will NOT collect all available appearances for your class automatically - make sure you are in the correct spec.",
					["sourceQuests"] = {
						79553,	-- A Natural Remedy
						78463,	-- Building Blocks
					},
					["provider"] = { "n", 217879 },	-- Adelgonn
					["coord"] = { 41.8, 72.7, ISLE_OF_DORN },
					["g"] = {
						i(219795),	-- Cured Terracotta Axe
						i(219799),	-- Cured Terracotta Firearm
						i(219796),	-- Cured Terracotta Lantern
						i(219797),	-- Cured Terracotta Pummeler
						i(219798),	-- Cured Terracotta Shield
						i(219800),	-- Cured Terracotta Stabber
						i(219794),	-- Cured Terracotta Staff
						i(219802),	-- Cured Terracotta Warglaive
					},
				}),
				q(78470, {	-- The Proscenium
					["sourceQuests"] = { 78462 },	-- Echoes of Compassion
					["provider"] = { "n", 217878 },	-- Moira Thaurissan
					["coord"] = { 41.9, 72.7, ISLE_OF_DORN },
				}),
				q(79701, {	-- The Calvalry is Here
					["sourceQuests"] = { 78470 },	-- The Proscenium
					["provider"] = { "n", 217766 },	-- Baelgrim
					["coord"] = { 56.5, 52.1, ISLE_OF_DORN },
				}),
				q(79721, {	-- Fire in the Hole
					["sourceQuests"] = { 78470 },	-- The Proscenium
					["provider"] = { "n", 212295 },	-- Wenbrandt
					["coord"] = { 56.6, 52.1, ISLE_OF_DORN },
				}),
				q(78471, {	-- Convergence
					["sourceQuests"] = {
						79721,	-- Fire in the Hole
						79701,	-- The Calvalry is Here
					},
					["provider"] = { "n", 217898 },	-- Moira Thaurissan
					["coord"] = { 56.6, 48.8, ISLE_OF_DORN },
					["g"] = {
						i(219752),	-- Congealed Cinderbrew Battleboots
						i(219753),	-- Congealed Cinderbrew Cinch
						i(219750),	-- Congealed Cinderbrew Gloves
						i(219751),	-- Congealed Cinderbrew Pauldrons
					},
				}),
				------ Chapter 3 ------
				q(78538, {	-- Group Effort
					["sourceQuests"] = { 78471 },	-- Convergence
					["provider"] = { "n", 217904 },	-- Merrix
					["coord"] = { 39.9, 26.0, DORNOGAL },
					["g"] = {
						i(213271),	-- Work Orders (QI!)
					},
				}),
				q(80022, {	-- Calling the Stormriders
					--dungeon quest which queue you into follower dungeon
					["sourceQuests"] = { 78538 },	-- Group Effort
					["provider"] = { "n", 212747 },	-- Baelgrim
					["coord"] = { 36.0, 52.8, DORNOGAL },
				}),
				q(78539, {	-- Lasting Repairs
					["sourceQuests"] = { 80022 },	-- Calling the Stormriders
					["provider"] = { "n", 222555 },	-- Baelgrim
					["coord"] = { 35.9, 52.7, DORNOGAL },
				}),
				q(78540, {	-- To the Meadery
					["sourceQuests"] = { 78539 },	-- Lasting Repairs
					["provider"] = { "n", 222555 },	-- Baelgrim
					["coord"] = { 35.9, 52.7, DORNOGAL },
				}),
				q(78541, {	-- Lay the Trap
					["sourceQuests"] = { 78540 },	-- To the Meadery
					["provider"] = { "n", 212749 },	-- Baelgrim
					["coord"] = { 75.3, 43.1, ISLE_OF_DORN },
				}),
				q(78542, {	-- Evacuation Area
					["sourceQuests"] = { 78540 },	-- To the Meadery
					["provider"] = { "n", 212750 },	-- Wenbrandt
					["coord"] = { 75.3, 43.2, ISLE_OF_DORN },
				}),
				q(78543, {	-- Poking the Spider Nest
					["sourceQuests"] = {
						78542,	-- Evacuation Area
						78541,	-- Lay the Trap
					},
					["provider"] = { "n", 212749 },	-- Baelgrim
					["coord"] = { 75.3, 43.1, ISLE_OF_DORN },
				}),
				q(78544, {	-- Bring the Thunder
					["sourceQuests"] = { 78543 },	-- Poking the Spider Nest
					["provider"] = { "n", 212756 },	-- Baelgrim
					["coord"] = { 74.8, 42.3, ISLE_OF_DORN },
					["g"] = {
						i(219757),	-- Mead-Speckled Full Helm
						i(219758),	-- Mead-Speckled Legguards
						i(219755),	-- Mead-Speckled Pantaloons
						i(219756),	-- Mead-Speckled Vest
					},
				}),
				------ Stay awhile and listen ------
				hqt(85680, {	-- Stay awhile and listen: Adelgonn
					["name"] = "Stay awhile and listen: Adelgonn ",
					["sourceQuests"] = { 78544 },	-- Bring the Thunder
					["provider"] = { "n", 217849 },	-- Adelgonn
					["coord"] = { 75.1, 43.7, ISLE_OF_DORN },
					["lockCriteria"] = { 1, "questID", 78545 },	-- Return to the Coreway
				}),
				--
				q(78545, {	-- Return to the Coreway
					["sourceQuests"] = { 78544 },	-- Bring the Thunder
					["provider"] = { "n", 217849 },	-- Adelgonn
					["coord"] = { 75.1, 43.8, ISLE_OF_DORN },
				}),
				q(78546, {	-- Recompense
					["sourceQuests"] = { 78545 },	-- Return to the Coreway
					["provider"] = { "n", 217880 },	-- Merrix
					["coord"] = { 32.1, 59.7, DORNOGAL },
					["g"] = {
						i(219761),	-- Rubble-Salvaged Grips
						i(219763),	-- Rubble-Salvaged Shoulderpads
						i(219760),	-- Rubble-Salvaged Slippers
						i(219762),	-- Rubble-Salvaged Waistguard
					},
				}),
				------ Stay awhile and listen ------
				hqt(84335, {	-- Stay awhile and listen: Alleria Windrunner
					["name"] = "Stay awhile and listen: Alleria Windrunner",
					["sourceQuests"] = { 78546 },	-- Recompense
					["provider"] = { "n", 228493 },	-- Alleria Windrunner
					["coord"] = { 32.0, 60.5, DORNOGAL },
					["lockCriteria"] = { 1, "questID", 80434 },	-- Into The Deeps
				}),
				hqt(84815, {	-- Stay awhile and listen: Merrix <Councilward>
					["name"] = "Stay awhile and listen: Merrix <Councilward>",
					["sourceQuests"] = { 78546 },	-- Recompense
					["provider"] = { "n", 217880 },	-- Merrix <Councilward>
					["coord"] = { 32.0, 59.6, DORNOGAL },
					["lockCriteria"] = { 1, "questID", 80434 },	-- Into The Deeps
				}),
				hqt(85681, {	-- Stay awhile and listen: Moira Thaurissan
					["name"] = "Stay awhile and listen: Moira Thaurissan",
					["description"] = "Dialogue becomes available after accepting 'Into The Deeps' (80434) but vanishes once you hand in 'Into The Deeps' (80434).",
					["sourceQuests"] = { 80434 },	-- Into The Deeps (After accepting but unavailable after completion)
					["provider"] = { "n", 217887 },	-- Moira Thaurissan
					["coord"] = { 32.4, 59.6, DORNOGAL },
					["lockCriteria"] = { 1, "questID", 80434 },	-- Into The Deeps
				}),
			}),
			header(HEADERS.AchCriteria, 20595.01, {	-- Spores of Dread
				q(78570, {	-- Frayed Legacy
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["provider"] = { "n", 212708 },	-- Freysworn Cruton
					["coord"] = { 41.6, 71.3, ISLE_OF_DORN },
					["isBreadcrumb"] = true,
				}),
				q(78571, {	-- Mycomayhem
					["sourceQuests"] = { 78570 },	-- Frayed Legacy
					["provider"] = { "n", 212700 },	-- Woldtender Igris
					["coord"] = { 53.5, 69.9, ISLE_OF_DORN },
					["g"] = {
						i(210845),	-- Boskroot Spores (QI!)
					},
				}),
				q(78572, {	-- Wold Memories
					["sourceQuests"] = { 78571 },	-- Mycomayhem
					["provider"] = { "n", 212700 },	-- Woldtender Igris
					["coord"] = { 53.5, 69.9, ISLE_OF_DORN },
					["g"] = {
						o(411571, {	-- Freydrin's Shillelagh
							i(216858),	-- Freydrin's Shillelagh (QI!)
						}),
					},
				}),
				q(78573, {	-- Keeper's Aid
					["sourceQuests"] = { 78572 },	-- Wold Memories
					["provider"] = { "n", 218333 },	-- Woldtender Igris
					["coord"] = { 53.9, 69.4, ISLE_OF_DORN },
					["g"] = {
						i(215158),	-- Freydrin's Shillelagh (QI!)
					},
				}),
				q(78574, {	-- Boss of the Bosk
					["sourceQuests"] = { 78573 },	-- Keeper's Aid
					["provider"] = { "n", 218333 },	-- Woldtender Igris
					["coord"] = { 54.2, 65.3, ISLE_OF_DORN },
					["g"] = {
						i(215142),	-- Freydrin's Shillelagh (QI!)
						i(219769),	-- Sporefused Chainmail
						i(219767),	-- Sporefused Cowl
						i(219768),	-- Sporefused Greaves
						i(219766),	-- Sporefused Hood
					},
				}),
			}),
			header(HEADERS.AchCriteria, 20595.02, {	-- Behind Closed Doors
				q(80207, {	-- How Scandalous!
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["provider"] = { "n", 219393 },	-- Aldra
					["coord"] = { 62.7, 21.7, DORNOGAL },
				}),
				q(79521, {	-- Seizing Evidence
					["sourceQuests"] = { 80207 },	-- How Scandalous!
					["provider"] = { "n", 219394 },	-- Peacekeeper Kragad
					["coord"] = { 49.9, 49.3, DORNOGAL },
					["g"] = {
						o(432893, {	-- Shipment Crate
							i(217499),	-- Assorted Chisels (QI!)
						}),
						o(429301, {	-- Shipment Crate
							i(217500),	-- High-Quality Coal (QI!)
						}),
						o(432894, {	-- Shipment Crate
							i(217501),	-- Moleskin Apron (QI!)
						}),
						i(217498),	-- Seized Shipment (QI!)
					},
				}),
				q(79522, {	-- Withheld Information
					["sourceQuests"] = { 79521 },	-- Seizing Evidence
					["provider"] = { "n", 219394 },	-- Peacekeeper Kragad
					["coord"] = { 49.9, 49.3, DORNOGAL },
				}),
				q(79523, {	-- Something Hidden
					["sourceQuests"] = { 79522 },	-- Withheld Information
					["provider"] = { "n", 219394 },	-- Peacekeeper Kragad
					["coord"] = { 49.9, 49.3, DORNOGAL },
					["g"] = {
						o(433101, {	-- Bag of Glowing Shards
							i(217505),	-- Bag of Glowing Shards (QI!)
						}),
						o(433102, {
							i(217504),	-- Bundle of Receipts (QI!)
						}),
						o(433090, {	-- Infused Underclay
							i(217502),	-- Infused Underclay (QI!)
						}),
						o(433109, {	-- Nerubian Silk Ropes
							i(217503),	-- Nerubian Silk Ropes (QI!)
						}),
					},
				}),
				q(79525, {	-- Report to the Councilward
					["sourceQuests"] = { 79523 },	-- Something Hidden
					["provider"] = { "n", 219394 },	-- Peacekeeper Kragad
					["coord"] = { 49.9, 49.3, DORNOGAL },
				}),
				q(79542, {	-- The Councilward's Summons
					["sourceQuests"] = {
						78838,	-- Cogs in the Machine
						79525,	-- Report to the Councilward
					},
					["provider"] = { "n", 225426 },	-- Saradi
					["coords"] = {
						{ 46.0, 47.2, DORNOGAL },
						{ 47.5, 32.7, THE_RINGING_DEEPS },	-- TODO: wrong?
					},
				}),
				q(79543, {	-- Dornogal's Benefactor
					["sourceQuests"] = { 79542 },	-- The Councilward's Summons
					["providers"] = {
						{ "n", 217068 },	-- Merrix
						{ "n", 217069 },	-- Merrix
					},
					["coord"] = { 55.2, 6.2, DORNOGAL },
				}),
				q(79544, {	-- Security Through Trade
					["sourceQuests"] = { 79543 },	-- Dornogal's Benefactor
					["provider"] = { "n", 217095 },	-- Merrix
					["coord"] = { 49.3, 26.3, DORNOGAL },
				}),
				q(79545, {	-- The Market Reeveo of the Forgegrounds
					["sourceQuests"] = { 79544 },	-- Security Through Trade
					["provider"] = { "n", 217072 },	-- Bevrusi
					["coord"] = { 55.6, 50.2, DORNOGAL },
					["g"] = {
						i(219961),	-- Fresh Mug of Cinderbrew Mead (QI!)
						i(220115),	-- Loldren's Market Audit (QI!)
						o(415584, {	-- Sizzling Magma Core
							i(211863),	-- Sizzling Magma Core (QI!)
						}),
					},
				}),
				q(79176, {	-- Opals and Runes
					["sourceQuests"] = { 79544 },	-- Security Through Trade
					["provider"] = { "n", 217091 },	-- Vokgret
					["coord"] = { 45.1, 48.9, DORNOGAL },
					["g"] = {
						i(217414),	-- Speakeasy Passrune (QI!)
						i(218085),	-- Vial of Liquid Opal (QI!)
					},
				}),
				q(79546, {	-- The Machine Speakeasy
					["sourceQuests"] = { 79176 },	-- Opals and Runes
					["providers"] = {
						{ "n", 219126 },	-- Merrix
						{ "n", 217097 },	-- Merrix
					},
					["coord"] = { 60.5, 33.1, DORNOGAL },
				}),
				q(79526, {	-- Sedition
					["sourceQuests"] = {
						79546,	-- The Machine Speakeasy
						78630,	-- The Rise of the Reckoning
					},
					["provider"] = { "o", 429303 },	-- Angrily-Scrawled Poster
					["coord"] = { 45.9, 47.2, DORNOGAL },
					["g"] = {
						i(223954),	-- Angrily-Scrawled Poster (QI!)
					},
				}),
				q(79527, {	-- Damage Mitigation
					["sourceQuests"] = { 79526 },	-- Sedition
					["provider"] = { "n", 219400 },	-- Merrix
					["coord"] = { 55.6, 5.6, DORNOGAL },
				}),
				q(79528, {	-- Dispelling Rumors
					["sourceQuests"] = { 79526 },	-- Sedition
					["provider"] = { "n", 219400 },	-- Merrix
					["coord"] = { 55.6, 5.6, DORNOGAL },
				}),
				q(79529, {	-- Forcing My Hand
					["sourceQuests"] = {
						79527,	-- Damage Mitigation
						79528,	-- Dispelling Rumors
					},
					["provider"] = { "n", 219400 },	-- Merrix
					["coord"] = { 55.6, 5.6, DORNOGAL },
				}),
				q(79530, {	-- Bad Business
					["sourceQuests"] = { 79529 },	-- Forcing My Hand
					["provider"] = { "n", 219475 },	-- Steelvein
					["coord"] = { 55.6, 5.6, DORNOGAL },
				}),
			}),
			header(HEADERS.AchCriteria, 20595.03, {	-- Seven Soldiers
				q(78996, {	-- Weapons and Warriors
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["provider"] = { "n", 214444 },	-- Aggartha
					["coord"] = { 42.7, 71.7, ISLE_OF_DORN },
				}),
				q(78998, {	-- Frontline Farmers
					["sourceQuests"] = { 78996 },	-- Weapons and Warriors
					["provider"] = { "n", 215201 },	-- Aggartha
					["coord"] = { 48.6, 83.0, ISLE_OF_DORN },
				}),
				q(78997, {	-- Pilfered Pearls
					["sourceQuests"] = { 78996 },	-- Weapons and Warriors
					["provider"] = { "n", 215201 },	-- Aggartha
					["coord"] = { 48.6, 83.0, ISLE_OF_DORN },
					["g"] = {
						i(212176),	-- Pilfered Pearl (QI!)
					},
				}),
				q(78999, {	-- Heart of a Hero
					["sourceQuests"] = {
						78998,	-- Frontline Farmers
						78997,	-- Pilfered Pearls
					},
					["provider"] = { "n", 215327 },	-- Aggartha
					["coord"] = { 48.3, 82.9, ISLE_OF_DORN },
					["g"] = {
						i(219764),	-- Luminescent Pearl Band
						i(219765),	-- Sparkling Pearl Ring
					},
				}),
			}),
			header(HEADERS.AchCriteria, 20595.04, {	-- Lost Lord of the Storm
				q(78289, {	-- To Rumbleshire
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["provider"] = { "n", 214352 },	-- Rooktender Otwin
					["coord"] = { 32.8, 33.6, DORNOGAL },
				}),
				q(78291, {	-- Power Predators
					["sourceQuests"] = { 78289 },	-- To Rambleshire
					["provider"] = { "n", 211740 },	-- Rooktender Lufsela
					["coord"] = { 61.4, 31.7, ISLE_OF_DORN },
				}),
				q(78290, {	-- Sleepy Sheep
					["sourceQuests"] = { 78289 },	-- To Rambleshire
					["provider"] = { "n", 211740 },	-- Rooktender Lufsela
					["coord"] = { 61.4, 31.7, ISLE_OF_DORN },
					["g"] = {
						o(410459, {	-- Highlands Lodestone
							i(210489),	-- Lodestone (QI!)
						}),
						i(211459),	-- Energized Lodestone (QI!)
					},
				}),
				q(78292, {	-- Lost Lord of the Storm
					["sourceQuests"] = {
						78291,	-- Power Predators
						78290,	-- Sleepy Sheep
					},
					["provider"] = { "n", 209918 },	-- Head Rancher Stenspor
					["coord"] = { 59.7, 29.0, ISLE_OF_DORN },
				}),
				q(78293, {	-- Their Moss, Our Gain
					["sourceQuests"] = { 78292 },	-- Lost Lord of the Storm
					["provider"] = { "n", 209918 },	-- Head Rancher Stenspor
					["coord"] = { 58.7, 30.3, ISLE_OF_DORN },
					["g"] = {
						i(211858),	-- Electrified Mosswool (QI!)
					},
				}),
				q(78294, {	-- Thunderhead Butt
					["sourceQuests"] = { 78293 },	-- Their Moss, Our Gain
					["provider"] = { "n", 211740 },	-- Rooktender Lufsela
					["coord"] = { 58.8, 30.2, ISLE_OF_DORN },
				}),
			}),
			header(HEADERS.AchCriteria, 20595.05, {	-- Hope, An Anomaly
				q(78469, {	-- Prairie Fever
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["provider"] = { "n", 217961 },	-- Hreka
					["coord"] = { 41.8, 70.8, ISLE_OF_DORN },
				}),
				q(79692, {	-- Buried, Not Forgotten
					["sourceQuests"] = { 78469 },	-- Prairie Fever
					["provider"] = { "n", 216094 },	-- Kodun
					["coord"] = { 42.3, 73.3, ISLE_OF_DORN },
					["g"] = {
						i(215464),	-- Memory Gem Fragment (QI!)
						i(217108),	-- Modhina's Bag of Ore (QI!)
						i(217107),	-- Modhina's Notes (QI!)
					},
				}),
				q(79691, {	-- Monsters in the Dark
					["sourceQuests"] = { 78469 },	-- Prairie Fever
					["provider"] = { "n", 216094 },	-- Kodun
					["coord"] = { 42.3, 73.3, ISLE_OF_DORN },
				}),
				q(79703, {	-- Hope, An Anomaly
					["sourceQuests"] = {
						79692,	-- Buried, Not Forgotten
						79691,	-- Monsters in the Dark
					},
					["provider"] = { "n", 217961 },	-- Hreka
					["coord"] = { 39.7, 78.9, ISLE_OF_DORN },
					["g"] = {
						i(219920),	-- Hreka's Pot-Making Kit
						i(223843),	-- Personally Crafted Mug
					},
				}),
			}),
			header(HEADERS.AchCriteria, 20595.06, {	-- The Hermit
				q(78754, {	-- Lost Delivery
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["provider"] = { "o", 423987 },	-- Dropped Package
					["coords"] = {
						{ 55.1, 59.3, ISLE_OF_DORN },
						{ 68.7, 52.5, ISLE_OF_DORN },
						{ 61.5, 33.2, ISLE_OF_DORN },
					},
				}),
				q(78757, {	-- Honey and Clay the Pain Away
					["sourceQuests"] = { 78754 },	-- Lost Delivery
					["provider"] = { "n", 213691 },	-- Harmot
					["coord"] = { 67, 43.8, ISLE_OF_DORN },
				}),
				q(78758, {	-- Pulse within the Earth
					["sourceQuests"] = { 78757 },	-- Honey and Clay the Pain Away
					["provider"] = { "n", 213691 },	-- Harmot
					["coord"] = { 67, 43.8, ISLE_OF_DORN },
				}),
				q(78755, {	-- Playing in the Mud
					["sourceQuests"] = { 78758 },	-- Pulse within the Earth
					["provider"] = { "n", 214921 },	-- Harmot
					["coord"] = { 67, 47.3, ISLE_OF_DORN },
					["g"] = {
						o(413246, {	-- Elemental Silt Mound
							i(211485),	-- Elementally Charged Silt (QI!)
						}),
						i(211483),	-- Frenzied Sand Globule (QI!)
						i(211484),	-- Frenzied Water Globule (QI!)
					},
				}),
				q(78756, {	-- Lots and Lots of FIre Honey
					["sourceQuests"] = { 78758 },	-- Pulse within the Earth
					["provider"] = { "n", 214922 },	-- Harvester Farnee
					["coord"] = { 67, 47.3, ISLE_OF_DORN },
					["g"] = {
						i(211489),	-- Enormous Glob of Fire Honey (QI!)
					},
				}),
				q(78759, {	-- To Wake a Giant
					["sourceQuests"] = {
						78756,	-- Lots and Lots of FIre Honey
						78755,	-- Playing in the Mud
					},
					["provider"] = { "n", 214921 },	-- Harmot
					["coord"] = { 67, 47.3, ISLE_OF_DORN },
					["g"] = {
						i(228380),	-- Earthmender's Signet
					},
				}),
			}),
			header(HEADERS.AchCriteria, 20595.07, {	-- A Titanic Expedition
				q(79724, {	-- A Titanic Expedition!
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["provider"] = { "n", 217763 },	-- Rannan Korren
					["coord"] = { 58.8, 28.3, ISLE_OF_DORN },
				}),
				q(79726, {	-- "Cataloguing"
					["sourceQuests"] = { 79724 },	-- A Titanic Expedition!
					["provider"] = { "n", 217656 },	-- Tuberros
					["coord"] = { 77.9, 30.3, ISLE_OF_DORN },
					["g"] = {
						o(423612, {	-- Titan Artifacts
							i(215233),	-- Titan Artifact (QI!)
						}),
					},
				}),
				q(79725, {	-- Not a Heating Pack
					["sourceQuests"] = { 79724 },	-- A Titanic Expedition!
					["provider"] = { "n", 217828 },	-- Rannan Korren
					["coord"] = { 77.9, 30.3, ISLE_OF_DORN },
				}),
				q(79727, {	-- Because It's Shiny
					["sourceQuests"] = {
						79726,	-- "Cataloguing"
						79725,	-- Not a Heating Pack
					},
					["provider"] = { "n", 217659 },	-- Tharessa Sunstrand
					["coord"] = { 77.9, 30.3, ISLE_OF_DORN },
					["g"] = {
						i(215234),	-- Titan Artifact (QI!)
					},
				}),
				q(79728, {	-- It's Probably Nothing
					["sourceQuests"] = { 79727 },	-- Because It's Shiny
					["provider"] = { "n", 217828 },	-- Rannan Korren
					["coord"] = { 77.9, 30.3, ISLE_OF_DORN },
				}),
			}),
			header(HEADERS.AchCriteria, 20595.08, {	-- Remember Me, Earthen
				q(81661, {	-- To Mourning Rise
					["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
					["provider"] = { "n", 221355 },	-- Urtago
					["coord"] = { 55.7, 56.0, ISLE_OF_DORN },
					["isBreadcrumb"] = true,
				}),
				q(78743, {	-- Before I Depart
					["sourceQuests"] = { 81661 },	-- To Mourning Rise
					["provider"] = { "n", 213184 },	-- Korgran
					["coord"] = { 57.4, 42.8, ISLE_OF_DORN },
				}),
				q(78744, {	-- Honor Their Memories
					["sourceQuests"] = { 78743 },	-- Before I Depart
					["provider"] = { "n", 213687 },	-- Urtago
					["coord"] = { 61.7, 41.6, ISLE_OF_DORN },
				}),
				q(78745, {	-- You No Take Plunder!
					["sourceQuests"] = { 78744 },	-- Honor Their Memories
					["provider"] = { "n", 213687 },	-- Urtago
					["coord"] = { 61.7, 41.6, ISLE_OF_DORN },
					["g"] = {
						o(414199, {	-- Pile of Earthen Belongings
							i(211428),	-- Earthen Belongings (QI!)
						}),
					},
				}),
				q(78746, {	-- Laws Apply to All
					["sourceQuests"] = { 78744 },	-- Honor Their Memories
					["provider"] = { "n", 213687 },	-- Urtago
					["coord"] = { 61.7, 41.6, ISLE_OF_DORN },
				}),
				q(78748, {	-- Cutting the Wick
					["sourceQuests"] = {
						78745,	-- You No Take Plunder!
						78746,	-- Laws Apply to All
					},
					["provider"] = { "n", 213688 },	-- Urtago
					["coord"] = { 63.3, 42.6, ISLE_OF_DORN },
				}),
				q(78747, {	-- The Great Collapse
					["sourceQuests"] = {
						78745,	-- You No Take Plunder!
						78746,	-- Laws Apply to All
					},
					["provider"] = { "n", 213688 },	-- Urtago
					["coord"] = { 63.3, 42.6, ISLE_OF_DORN },
					["g"] = {
						i(211435),	-- Explosive Sticks (QI!)
					},
				}),
				q(78749, {	-- Who Runs this Fine Establishment?
					["sourceQuests"] = {
						78748,	-- Cutting the Wick
						78747,	-- The Great Collapse
					},
					["provider"] = { "n", 213688 },	-- Urtago
					["coord"] = { 63.3, 42.6, ISLE_OF_DORN },
				}),
				q(79335, {	-- One More Tradition
					["sourceQuests"] = { 78749 },	-- Who Runs this Fine Establishment?
					["provider"] = { "n", 213184 },	-- Korgran
					["coord"] = { 57.7, 42.7, ISLE_OF_DORN },
					["g"] = {
						i(213002),	-- Charged Core (QI!)
						o(420730, {
							i(213001),	-- Clump of Ore (QI!)
						}),
					},
				}),
				q(79336, {	-- The Forging of Memories
					["sourceQuests"] = { 79335 },	-- One More Tradition
					["provider"] = { "n", 216169 },	-- Korgran
					["coord"] = { 57.3, 42.2, ISLE_OF_DORN },
					["g"] = {
						i(219413),	-- Schematic: Stonebound Lantern (RECIPE!)
					},
				}),
				q(79337, {	-- The Last Journey
					["sourceQuests"] = { 79336 },	-- The Forging of Memories
					["provider"] = { "n", 216169 },	-- Korgran
					["coord"] = { 57.3, 42.2, ISLE_OF_DORN },
				}),
				q(79338, {	-- The Lost Earthen
					["sourceQuests"] = { 79337 },	-- The Last Journey
					["provider"] = { "n", 213187 },	-- Urtago
					["coord"] = { 57.8, 42.7, ISLE_OF_DORN },
					["g"] = {
						o(424253, {	-- Korgran's Lantern
							i(216677),	-- Korgran's Lantern (QI!)
						}),
					},
				}),
				q(79339, {	-- A Change of Tradition
					["sourceQuests"] = { 79338 },	-- The Lost Earthen
					["provider"] = { "n", 216878 },	-- Urtago
					["coord"] = { 62.0, 43.9, ISLE_OF_DORN },
				}),
				q(79341, {	-- Cleansing Ashes
					["sourceQuests"] = { 79339 },	-- A Change of Tradition
					["provider"] = { "n", 216173 },	-- Urtago
					["coord"] = { 69.8, 56.8, ISLE_OF_DORN },
					["g"] = {
						o(420734, {	-- Ashenfold
							i(213157),	-- Ashenfold (QI!)
						}),
					},
				}),
				q(79340, {	-- Tools of Declaration
					["sourceQuests"] = { 79339 },	-- A Change of Tradition
					["provider"] = { "n", 216173 },	-- Urtago
					["coord"] = { 69.8, 56.8, ISLE_OF_DORN },
					["g"] = {
						i(213171),	-- Pristine Horn (QI!)
					},
				}),
				q(79342, {	-- As He Departs
					["sourceQuests"] = {
						79341,	-- Cleansing Ashes
						79340,	-- Tools of Declaration
					},
					["provider"] = { "n", 216173 },	-- Urtago
					["coord"] = { 69.8, 56.8, ISLE_OF_DORN },
					["g"] = {
						i(217041),	-- Horn of Declaration
					},
				}),
				q(82895, {	-- The Weight of Duty
					["sourceQuests"] = { 79342 },	-- As He Departs
					["provider"] = { "n", 224930 },	-- Urtago
					["coord"] = { 69.9, 57.0, ISLE_OF_DORN },
					["g"] = {
						i(224550),	-- Carved Placard (QI!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 20595.09, {	-- Brotherhood in the Skolzgal Wood
				q(80456, {	-- A Sassy Arathi
					["sourceQuests"] = { 78630 },	-- The Rise of the Reckoning
					["provider"] = { "n", 219437 },	-- Dornogal CItizen
					["coord"] = { 55.4, 55.8, ISLE_OF_DORN },
					["isBreadcrumb"] = true,
				}),
				q(80209, {	-- An Oddball in Dornogal
					["sourceQuests"] = { 80456 },	-- A Sassy Arathi
					["provider"] = { "n", 222224 },	-- Peacekeeper Leif
					["coord"] = { 54.4, 19.3, DORNOGAL },
				}),
				q(80210, {	-- Found Around the Unbound
					["sourceQuests"] = { 80209 },	-- An Oddball in Dornogal
					["provider"] = { "n", 222268 },	-- Peacekeeper Leif
					["coord"] = { 67.2, 18.7, DORNOGAL },
				}),
				q(80211, {	-- The Pillage of Freywold Village
					["sourceQuests"] = { 80210 },	-- Found Around the Unbound
					["provider"] = { "n", 222314 },	-- Peacekeeper Leif
					["coord"] = { 42.7, 71.0, ISLE_OF_DORN },
				}),
				q(80212, {	-- The Abductors' Obstructors
					["sourceQuests"] = { 80211 },	-- The Pillage of Freywold Village
					["provider"] = { "n", 222314 },	-- Peacekeeper Leif
					["coord"] = { 42.7, 71.0, ISLE_OF_DORN },
				}),
				q(80213, {	-- Holy Fire in Rambleshire
					["sourceQuests"] = { 80212 },	-- The Abductors' Obstructors
					["provider"] = { "n", 222352 },	-- Lamplighter Kaerter
					["coord"] = { 57.6, 30.1, ISLE_OF_DORN },
					["g"] = {
						i(224104),	-- Flashfire Thurible (QI!)
						i(224118),	-- Nightshade Letter (QI!)
					},
				}),
				q(80214, {	-- A Time to Kill at the Lumber Mill
					["sourceQuests"] = { 80213 },	-- Holy Fire in Rambleshire
					["provider"] = { "n", 222356 },	-- Lamplighter Kaerter
					["coord"] = { 62.1, 30.7, ISLE_OF_DORN },
				}),
				q(80215, {	-- Ungirthin' the Earthen
					["sourceQuests"] = { 80214 },	-- A Time to Kill at the Lumber Mill
					["provider"] = { "n", 222360 },	-- Lamplighter Kaerter
					["coord"] = { 67.0, 31.2, ISLE_OF_DORN },
				}),
				q(80216, {	-- Concealed in the Weald
					["sourceQuests"] = { 80214 },	-- A Time to Kill at the Lumber Mill
					["provider"] = { "n", 222358 },	-- Peacekeeper Leif
					["coord"] = { 67.1, 31.3, ISLE_OF_DORN },
				}),
				q(80217, {	-- A Lamplight for the Shipwright
					["sourceQuests"] = {
						80216,	-- Concealed in the Weald
						80215,	-- Ungirthin' the Earthen
					},
					["provider"] = { "n", 222362 },	-- Peacekeeper Leif
					["coord"] = { 65.9, 24.7, ISLE_OF_DORN },
				}),
				q(80218, {	-- Up to No Good Down in Silkwood
					["sourceQuests"] = { 80217 },	-- A Lamplight for the Shipwright
					["provider"] = { "n", 222364 },	-- Lamplighter Kaerter
					["coord"] = { 66.0, 23.9, ISLE_OF_DORN },
				}),
				q(83181, {	-- Best Friends, Same Ends
					["sourceQuests"] = { 80217 },	-- A Lamplight for the Shipwright
					["provider"] = { "n", 222363 },	-- Peacekeeper Leif
					["coord"] = { 66.0, 23.86, ISLE_OF_DORN },
					["g"] = {
						i(223456),	-- Algari Cinch
						i(223464),	-- Algari Heavy Gauntlets
						i(223441),	-- Algari Scouting Boots
						i(223424),	-- Algari-Weave Cord
					},
				}),
			}),
			header(HEADERS.AchCriteria, 20595.10, {	-- All Ore Nothing
				q(82792, {	-- All Ore Nothing
					["sourceQuests"] = {
						TEMPORARY_SOURCEQUEST,
						TWW_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 218535 },	-- Germira
					["coord"] = { 41.1, 72.1, ISLE_OF_DORN },
				}),
				q(82796, {	-- Third Mine Blind
					["sourceQuests"] = { 82792 },	-- All Ore Nothing
					["provider"] = { "n", 224707 },	-- Alvegar
					["coord"] = { 45.9, 62.9, ISLE_OF_DORN },
				}),
				q(82797, {	-- Hit Rock Bottom
					["sourceQuests"] = { 82796 },	-- Third Mine Blind
					["provider"] = { "n", 224707 },	-- Alvegar
					["coord"] = { 47.3, 61.6, ISLE_OF_DORN },
				}),
				q(82798, {	-- An Opal of Mine
					["sourceQuests"] = { 82797 },	-- Hit Rock Bottom
					["provider"] = { "n", 224708 },	-- Cenderragg
					["coord"] = { 48.6, 60.9, ISLE_OF_DORN },
					["g"] = {
						o(454189, {	-- Opal Ore
							i(224808),	-- Opal Ore (QI!)
						}),
					},
				}),
				q(82799, {	-- Web Beats Rock
					["sourceQuests"] = { 82797 },	-- Hit Rock Bottom
					["provider"] = { "n", 224708 },	-- Cenderragg
					["coord"] = { 48.6, 60.9, ISLE_OF_DORN },
				}),
				q(82800, {	-- A Sedimental Moment
					["sourceQuests"] = {
						82798,	-- An Opal of Mine
						82799,	-- Web Beats Rock
					},
					["provider"] = { "n", 224708 },	-- Cenderragg
					["coord"] = { 47.4, 60.9, ISLE_OF_DORN },
				}),
				q(82801, {	-- Beetlejeweled
					["sourceQuests"] = { 82800 },	--A Sedimental Moment
					["provider"] = { "n", 224708 },	-- Cenderragg
					["coord"] = { 47.4, 60.9, ISLE_OF_DORN },
					["g"] = {
						i(228375),	-- Belt of Kix'arak's Bane
						i(228376),	-- Boots of Kix'arak's Bane
						i(228377),	-- Gauntlets of Kix'arak's Bane
						i(228374),	-- Shoulders of Kix'arak's Bane
					},
				}),
			}),
			header(HEADERS.Item, 228217, {	-- Design: Solid Amber
				q(82441, {	-- For The Love of Gems
					--["sourceQuests"] = { x },	-- ?
					["provider"] = { "n", 223637 },	-- Natalia Pearce
					["coord"] = { 43.0, 70.0, ISLE_OF_DORN },
				}),
				q(82465, {	-- Precious Gems
					["sourceQuests"] = { 82441 },	-- For The Love of Gems
					["provider"] = { "n", 223637 },	-- Natalia Pearce
					["coord"] = { 43.0, 70.0, ISLE_OF_DORN },
				}),
				q(82466, {	-- What We Do For Gems
					["sourceQuests"] = { 82465 },	-- Precious Gems
					["provider"] = { "n", 223924 },	-- Natalia Pearce
					["coord"] = { 33.9, 79.6, ISLE_OF_DORN },
					["g"] = {
						i(223891),	-- Igneous Core (QI!)
					},
				}),
				q(82467, {	-- Gems Are Forever
					["sourceQuests"] = { 82466 },	-- What We Do For Gems
					["provider"] = { "n", 223924 },	-- Natalia Pearce
					["coord"] = { 33.9, 79.6, ISLE_OF_DORN },
					["g"] = {
						i(228217),	-- Design: Solid Amber (RECIPE!)
					},
				}),
			}),
			------ Dagran & Brinthe ------
			q(83081, {	-- Not Enought Minerals
				["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
				["provider"] = { "n", 225451 },	-- Dagran Thaurissan II
				["coord"] = { 44.8, 64.4, ISLE_OF_DORN },
			}),
			q(83082, {	-- The Opalfront
				["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
				["provider"] = { "n", 225454 },	-- Peacekeeper Hektare
				["coord"] = { 44.8, 64.3, ISLE_OF_DORN },
			}),
			q(78465, {	-- Golgrin's Reach
				["sourceQuests"] = {
					83081,	-- Not Enought Minerals
					83082,	-- The Opalfront
				},
				["provider"] = { "n", 225451 },	-- Dagran Thaurissan II
				["coord"] = { 44.8, 64.4, ISLE_OF_DORN },
			}),
			q(78467, {	-- Charge for a Charge
				["sourceQuests"] = { 78465 },	-- Not Enought Minerals
				["provider"] = { "n", 225478 },	-- Speaker Brinthe
				["coord"] = { 61.7, 70.2, ISLE_OF_DORN },
				["g"] = {
					o(423596, {	-- Sand Pile
						i(215177),	-- Power Cell (QI!)
					}),
					o(423602, {	-- Sand Pile
						i(215179),	-- Power Cell (QI!)
					}),
					o(423603, {	-- Sand Pile
						i(215180),	-- Power Cell (QI!)
					}),
				},
			}),
			q(79716, {	-- The History Beneath Us
				["sourceQuests"] = { 78465 },	-- Not Enought Minerals
				["provider"] = { "n", 225453 },	-- Dagran Thaurissan II
				["coord"] = { 61.6, 70.2, ISLE_OF_DORN },
				["g"] = {
					i(225886),	-- Shattered Relic Fragments
				},
			}),
			q(79213, {	-- The Anachronism
				["sourceQuests"] = {
					78467,	-- Charge for a Charge
					79716,	-- The History Beneath Us
				},
				["provider"] = { "n", 225478 },	-- Speaker Brinthe
				["coord"] = { 61.7, 70.2, ISLE_OF_DORN },
				["g"] = {
					o(423688, {	-- Titan Device
						i(212602),	-- Titan Emitter (QI!)
					}),
				},
			}),
			q(83083, {	-- A Place Forgotten
				["sourceQuests"] = { 79213 },	-- The Anachronism
				["provider"] = { "n", 225478 },	-- Speaker Brinthe
				["coord"] = { 61.7, 70.2, ISLE_OF_DORN },
			}),
			q(83084, {	-- The Old Orders
				["sourceQuests"] = { 83083 },	-- A Place Forgotten
				["provider"] = { "n", 226841 },	-- Speaker Brinthe
				["coord"] = { 44.9, 20.6, ISLE_OF_DORN },
				["g"] = {
					o(455170, {	-- Crumbling Ironwood Parchment
						i(226015),	-- Petrified Ironwood Parchment (QI!)
					}),
					i(225887),	-- Titan Emitter (QI!)
				},
			}),
			q(83087, {	-- The Old Guard
				["sourceQuests"] = { 83084 },	-- The Old Orders
				["provider"] = { "n", 225472 },	-- Dagran Thaurissan II
				["coord"] = { 44.9, 20.6, ISLE_OF_DORN },
				["g"] = {
					i(225887),	-- Titan Emitter (QI!)
					i(225888),	-- Titan Emitter (QI!)
					i(228369),	-- Reconstructed Ledger
				},
			}),
			------ Birdman ------
			q(82680, {	-- Birdman of the Three Shields
				["sourceQuests"] = { TEMPORARY_SOURCEQUEST },
				["provider"] = { "n", 224394 },	-- Harmot
				["coord"] = { 60.2, 28.4, ISLE_OF_DORN },
				["isBreadcrumb"] = true,
			}),
			q(82681, {	-- Cloudrook Down
				["sourceQuests"] = { 82680 },	-- Birdman of the Three Shields
				["provider"] = { "n", 224392 },	-- Olbarig
				["coord"] = { 74.6, 19.7, ISLE_OF_DORN },
			}),
			q(82682, {	-- Elemental Hors D'Oeuvers
				["sourceQuests"] = { 82681 },	-- Cloudrook Down
				["provider"] = { "n", 224392 },	-- Olbarig
				["coord"] = { 74.6, 19.7, ISLE_OF_DORN },
				["g"] = {
					i(224119),	-- Electric Eel (QI!)
				},
			}),
			q(82768, {	-- Cloud Fishing
				["sourceQuests"] = { 82682 },	-- Elemental Hors D'Oeuvers
				["provider"] = { "n", 224392 },	-- Olbarig
				["coord"] = { 74.6, 19.7, ISLE_OF_DORN },
				["g"] = {
					i(224119),	-- Electric Eel (QI!)
					i(228371),	-- Olbarig's Old Bracers
					i(228372),	-- Olbarig's Old Cuffs
					i(228373),	-- Olbarig's Old Vambraces
					i(228370),	-- Olbarig's Old Wristwraps
				},
			}),
			------ Miscellaneous ------
			q(79686, {	-- Concerning Fungarians
				["provider"] = { "o", 428135 },	-- Discarded Botanist Notes
				["coord"] = { 35.8, 77.1, ISLE_OF_DORN },
				["g"] = {
					o(428167, {	-- Discarded Research Notes
						i(216882),	-- Log Entry 467-21-5 (QI!)
					}),
					o(428199, {	-- Discarded Research Notes
						i(216888),	-- Log Entry 652-12-3 (QI!)
					}),
					i(216889),	-- Log Entry 893-03-9 (QI!)
				},
			}),
			q(84220, {	-- Passage to the Ringing Deeps
				["sourceQuests"] = { 78546 },	-- Recompense
				["provider"] = { "n", 228304 },	-- Oathsworn Earthen
				["coord"] = { 37.6, 72.6, ISLE_OF_DORN },
			}),
			q(83337, {	-- Stormscarred
				["provider"] = { "n", 226792 },	-- Rancher Edidither
				["coord"] = { 58.4, 28.3, ISLE_OF_DORN },
			}),
			q(83336, {	-- The Earthwound
				["provider"] = { "n", 226750 },	-- Freysworn Etterca
				["coord"] = { 55.5, 55.9, ISLE_OF_DORN },
				["g"] = {
					i(225674),	-- Broken Stoneheart (QI!)
				},
			}),
			q(83338, {	-- The Mage Slayer
				["provider"] = { "n", 226791 },	-- Violet Warden
				["coord"] = { 58.3, 27.2, ISLE_OF_DORN },
			}),
			q(83339, {	-- The Spirebreaker
				["provider"] = { "n", 226791 },	-- Violet Warden
				["coord"] = { 58.3, 27.2, ISLE_OF_DORN },
			}),
			q(83335, {	-- Wanted: The Boroughbreaker
				["provider"] = { "o", 454463 },	-- Wanted Poster
				["coord"] = { 55.3, 55.9, ISLE_OF_DORN },
				["g"] = {
					i(227917),	-- Boroughbreaker's Cuffs
					i(227916),	-- Chitinous Wristwraps
					i(227919),	-- Crypt Lord's Bracers
					i(227918),	-- Wanted Nerubian's Bands
				},
			}),
			n(BONUS_OBJECTIVES, sharedData({
				["lockCriteria"] = { 1, "lvl", 80 },
			},{
				q(78618, {	-- Fungal Frenzy
					["coord"] = { 53.5, 66.4, ISLE_OF_DORN },
				}),
				q(79669, {	-- I Take Candle!
					["coord"] = { 64.32, 44.27, ISLE_OF_DORN },
					["lockCriteria"] = { 1, "lvl", 74 },
				}),
				q(79667, {	-- It's Elementary
					["coord"] = { 62.36, 72.13, ISLE_OF_DORN },
				}),
				q(81614, {	-- One Fin, Two Fin, Pearlfin, Dead Fin
					["coord"] = { 50.6, 79.5, ISLE_OF_DORN },
				}),
			})),
		}),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(KHAZ_ALGAR, {
		m(ISLE_OF_DORN, {
			n(QUESTS, {
				-- Dalaran intro
				q(84698),	-- Fishing up Xalatath's Rusty Coin (Maybe should be collectible? //Braghe)
				-- During questing
				q(83622),	-- [DNT] Zone 1 Bread Crumb Completed Organically (spellID 456955), when you break free out of rocks during questID 78529 (Violet Impact)
				q(79629),	-- [DNT] Council of Dornogal Renown Unlock (spellID 446910)
				-- Side quests
				q(81571),	-- Keep Ending Scene Active [DNT] (spellID 442907), rp after turn in questID 78999 (Heart of a Hero)
				q(80539),	-- Completing The Machine Speakeasy (79546)
			}),
		}),
	}),
})));