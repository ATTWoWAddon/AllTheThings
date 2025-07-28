-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(PRIEST, bubbleDownSelf({ ["classes"] = { PRIEST } }, {
			["maps"] = { NETHERLIGHT_TEMPLE },
			["groups"] = {
				n(ARTIFACTS, {
					header(HEADERS.Item, 141332, {	-- The Annals of Light and Shadow
						["description"] = "Obtain 12 of these books to complete the set and receive the Discipline Priest Hidden Artifact Appearance.\n\nStart with Volume VI and Archivist Inkforge in your Order Hall.",
						["groups"] = sharedData({
							["groups"] = {
								i(141332),	-- The Annals of Light and Shadow
							},
						},{
							q(44339, {	-- Volume I
								["name"] = "|cFFFFFFFFVolume I|r | The Violet Citadel in new Dalaran.",
								["provider"] = { "n", 113873 },	-- Archivist Elysiana <Curator>
								["coord"] = { 30.6, 50.8, LEGION_DALARAN },
								["description"] = "Khadgar is located in the Violet Citadel in new Dalaran. On the left side, there is an NPC named Archivist Elysiana. Volume 1 is on the right-hand bookshelf behind her.\n\nWorld Spawn - might be on cooldown!",
							}),
							q(44340, {	-- Volume II
								["name"] = "|cFFFFFFFFVolume II|r | Behind Juvess the Duskwhisperer in the Class Order Hall.",
								["provider"] = { "n", 111738 },	-- Juvess the Duskwhisperer
								["coord"] = { 58.4, 25.1, NETHERLIGHT_TEMPLE },
								["description"] = "High Priestess Ishanah is on the other side of the alcove, and next to her is a Draenei Anchorite.\n\nWorld Spawn - might be on cooldown!",
							}),
							q(44341, {	-- Volume III
								["name"] = "|cFFFFFFFFVolume III|r | New Hearthglen in Northrend.",
								["coords"] = {
									{ 72.2, 73.4, DRAGONBLIGHT },	-- Entrance to cloister
									{ 73.2, 72.9, DRAGONBLIGHT },	-- Actual book
								},
								["icon"] = 134503,
								["description"] = "Book is on top of a bookshelf on the left side of the cloister, on the ground floor.\n\nWorld Spawn - might be on cooldown (60-minute respawn).",
							}),
							q(44344, {	-- Volume IV
								["name"] = "|cFFFFFFFFVolume IV|r | Bookshelf to the left of Meridelle Lightspark in the Class Order Hall. ",
								["provider"] = { "n", 112401 },	-- Meridelle Lightspark <Logistics>
								["coord"] = { 37.2, 25.0, NETHERLIGHT_TEMPLE },
								["description"] = "On the left side of Meridelle Lightspark there is a shelf. On the lower board, there are some stacked books, and this volume is on the right side of those.\n\nWorld Spawn - might be on cooldown!",
							}),
							q(44343, {	-- Volume V
								["name"] = "|cFFFFFFFFVolume V|r | Chillheart's room in Scholomance.",
								["provider"] = { "n", 58633 },	-- Instructor Chillheart
								["coords"] = {
									{ 69.0, 72.9, WESTERN_PLAGUELANDS },	-- Scholomance entrance
									{ 58.8, 84.0, SCHOLOMANCE },	--	Actual volume inside the dungeon
								},
								["description"] = "Enter Chillheart's room - you don't need to kill the boss. Kill the first trashpack on the right side. The book is on top of the 6th bookshelf from the right.",
							}),
							q(44342, {	-- Volume VI
								["name"] = "|cFFFFFFFFVolume VI|r | Archivist Inkforge in the class order hall.",
								["provider"] = { "n", 111119 },	-- Archivist Inkforge
								["coord"] = { 62.5, 36.3, NETHERLIGHT_TEMPLE },
								["description"] = "You must get this volume first in order to collect the others.  Talk to Archivist Inkforge. Always choose the middle answer (passive curious, not judging) and he will give you the first volume.",
							}),
							q(44345, {	-- Volume VII
								["name"] = "|cFFFFFFFFVolume VII|r | The Flameweaver's library in Scarlet Halls.",
								["provider"] = { "n", 59150 },	-- Flameweaver Koegler
								["coords"] = {
									{ 69.0, 24.9, SCARLET_MONASTERY_ENTRANCE },	-- Scarlet Halls entrance
									{ 35.7, 14.2, 432 },	-- Actual volume inside instance
								},
								["description"] = "Run through the instance to Flameweaver Koegler's room. on the left-hand side of the room there's a table with a candelabra. Volume 7 is on the bench between the table and the bookshelf.",
							}),
							q(44350, {	-- Volume VIII
								["name"] = "|cFFFFFFFFVolume VIII|r | A rare in the cave southwest of Halls of Valor in Stormheim (Inquisitor Ernstenbok).",
								["provider"] = { "n", 90139 },	-- Inquisitor Ernstenbok
								["coord"] = { 63.6, 74.4, STORMHEIM },
								["description"] = "You must kill him after you have at least one of the books in your inventory and he will drop the book.\n\nIf several kill the mob, only one Priest is able to loot the book!",
							}),
							q(44347, {	-- Volume IX
								["name"] = "|cFFFFFFFFVolume IX|r | Artificer Lothaire in Moon Guard Stronghold, Suramar.",
								["provider"] = { "n", 106351 },	-- Artificer Lothaire
								["coord"] = { 33.8, 15.0, SURAMAR },
								["description"] = "You must kill him after you have at least one of the books in your inventory and he will drop the book.\n\nIf several kill the mob, only one Priest is able to loot the book!",
							}),
							q(44348, {	-- Volume X
								["name"] = "|cFFFFFFFFVolume X|r | Black Rook Hold in corner of room with ghosts and bookshelves.",
								["provider"] = { "n", 98542 },	-- Amalgam of Souls
								["coords"] = {
									{ 58.6, 75.8, 751 },	-- item in instance
									{ 38.4, 50.8, VALSHARAH },	-- Black Rook Hold entrance
								},
								["description"] = "After defeating the first boss, you will get into the Map-Room with a large setup in the middle. Head along the left side, the book is on one of the tables.",
							}),
							q(44349, {	-- Volume XI
								["name"] = "|cFFFFFFFFVolume XI|r | Guardian's Library in old Karazhan.",
								["provider"] = { "n", 15691 },	-- The Curator
								["coords"] = {
									{ 46.9, 74.8, DEADWIND_PASS },	-- Karazhan entrance
									{ 36.8, 37.9, 358 },
								},
								["description"] = "After the Curator, jump down to the right and head straight into the first nook. There is a tapestry on the wall and 3 bookshelves below. Volume 11 is on the bottom of the left-hand bookshelf.",
							}),
							q(44346, {	-- Volume XII
								["name"] = "|cFFFFFFFFVolume XII|r | Chief Bitterbrine on the Queen's Reprisal in Azsuna.",
								["provider"] = { "n", 106990 },	-- Chief Bitterbrine
								["coord"] = { 65.6, 56.8, AZSUNA },
								["description"] = "Fly to Shackle's Den and head east.\n\nIf several kill the mob, only one Priest is able to loot the book!",
							}),
							i(139567, {	-- Writings of the End
								["description"] = "Once you have obtained all 12 volumes, return to Archivist Inkforge in the class order hall and give them to him and he will give you this item.",
								["coord"] = { 62.5, 36.3, NETHERLIGHT_TEMPLE },
								["cost"] = {{"i",141332,12}},	-- The Annals of Light and Shadow
								["groups"] = {
									artifact(738),	-- Discipline Priest Hidden Artifact Skin
								},
							}),
						}),
					}),
				}),
				n(FOLLOWERS, bubbleDownSelf({
					["collectible"] = false,
					["u"] = UNLEARNABLE,	-- Temporary troops
				}, {
					follower(927),	-- Band of Zealots
					follower(928),	-- Band of Zealots
					follower(929),	-- Band of Zealots
					follower(943),	-- Band of Zealots
					follower(920),	-- Dark Zealots
					follower(930),	-- Dark Zealots
					follower(931),	-- Dark Zealots
					follower(932),	-- Dark Zealots
					follower(677),	-- Group of Acolytes
					follower(921),	-- Group of Acolytes
					follower(922),	-- Group of Acolytes
					follower(923),	-- Group of Acolytes
					follower(1039),	-- Hooded Priests
					follower(1040),	-- Hooded Priests
					follower(1041),	-- Hooded Priests
					follower(1042),	-- Hooded Priests
					follower(678),	-- Netherlight Paragons
					follower(924),	-- Netherlight Paragons
					follower(925),	-- Netherlight Paragons
					follower(926),	-- Netherlight Paragons
				})),
				n(QUESTS, {
					-- Start
					q(40705, {	-- Priestly Matters
						["qgs"] = {
							101344,	-- Hooded Priestess (Horde)
							102333,	-- Hooded Priestess (Alliance)
						},
						["maps"] = { LEGION_DALARAN },
						["groups"] = {
							i(173373, {	-- Faol's Hearthstone (QI!)
								["timeline"] = { ADDED_9_0_1 },
							}),
						},
					}),
					-- Artifact
					q(40706, {	-- A Legend You Can Hold
						["provider"] = { "n", 101314 },	-- Alonsus Faol
						["sourceQuests"] = { 40705 },	-- Priestly Matters
						["coord"] = { 78.9, 41.0, TIRISFAL_GLADES },
					}),
					q(43935, {	-- A Second Legend
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 40706 },	--  A Legend You Can Hold
						["coord"] = { 51.1, 48.2, NETHERLIGHT_TEMPLE },
					}),
					q(44407, {	-- The Third Legend
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43935 },	-- A Second Legend
						["coord"] = { 51.5, 47.6, NETHERLIGHT_TEMPLE },
					}),
					-- Shadow
					q(40710, {	-- Blade in Twilight
						["providers"] = {
							{ "n", 110564 },	-- Alonsus Faol
							{ "n", 101314 },	-- Alonsus Faol
							-- #if AFTER 11.1.7
							{ "n", 231472 },	-- Alonsus Faol
							-- #endif
						},
						["sourceQuests"] = { 40706 },	-- A Legend You Can Hold
						["coords"] = {
							{ 51.5, 47.6, NETHERLIGHT_TEMPLE },
							{ 79.0, 41.0, TIRISFAL_GLADES },
							-- #if AFTER 11.1.7
							{ 12.8, 59.1, TIRISFAL_GLADES },
							-- #endif
						},
						["groups"] = { i(173523) },	-- Tirisfal Camp Scroll (QI!)
					}),
					-- Holy
					q(41957, {	-- The Vindicator's Plea
						["provider"] = { "n", 101314 },	-- Alonsus Faol
						["sourceQuests"] = { 40706 },	-- A Legend You Can Hold
						["coord"] = { 78.9, 41.0, TIRISFAL_GLADES },
					}),
					q(41966, {	-- House Call
						["provider"] = { "n", 105602 },	-- Vindicator Boros
						["sourceQuests"] = { 41957 },	-- The Vindicator's Plea
						["coord"] = { 37.7, 36.7, LEGION_DALARAN },
						["groups"] = {
							i(173379),	-- Purify Stone (QI!)
						},
					}),
					q(41967, {	-- Out of the Darkness
						["provider"] = { "n", 105603 },	-- Defender Barrem
						["sourceQuests"] = { 41966 },	-- House Call
						["coord"] = { 37.5, 35.5, LEGION_DALARAN },
					}),
					q(41993, {	-- Salvation From On High
						["provider"] = { "n", 105684 },	-- Alora
						["sourceQuests"] = { 41967 },	-- Out of the Darkness
						["coord"] = { 34.0, 33.9, BROKEN_SHORE },
					}),
					q(42074, {	-- Return of the Light
						["provider"] = { "n", 106011 },	-- Jace  Darkweaver
						["sourceQuests"] = { 41993 },	-- Salvation From On High
						["coord"] = { 33.5, 33.1, BROKEN_SHORE },
						["maps"] = { 714 },	-- Niskara
					}),
					-- Disc
					q(41625, {	-- The Light's Wrath
						["provider"] = { "n", 101314 },	-- Alonsus Faol
						["sourceQuests"] = { 40706 },	-- A Legend You Can Hold
						["coord"] = { 51.5, 47.9, NETHERLIGHT_TEMPLE },
					}),
					q(41626, {	-- A New Threat
						["provider"] = { "n", 105081 },	-- Archmage Kalec
						["sourceQuests"] = { 41625 },	-- The Light's Wrath
						["coord"] = { 28.7, 49.9, LEGION_DALARAN },
					}),
					q(41627, {	-- A Forgotten Enemy
						["provider"] = { "o", 248398 },	-- Ethereal Communication Device
						["sourceQuests"] = { 41626 },	-- A New Threat
						["coord"] = { 56.7, 69.1, DRAGONBLIGHT },
					}),
					q(41628, {	-- Eyes of the Dragon
						["provider"] = { "n", 105917 },	-- Image of Kalec
						["sourceQuests"] = { 41626 },	-- A Forgotten Enemy
						["groups"] = {
							i(173430),	-- Nexus Teleport Scroll (QI!)
						},
					}),
					q(41629, {	-- Harnessing the Holy Fire
						["provider"] = { "n", 105917 },	-- Image of Kalec
						["sourceQuests"] = { 41627 },	-- Eyes of the Dragon
					}),
					q(41630, {	-- Unleashing Judgment
						["provider"] = { "n", 105917 },	-- Image of Kalec
						["sourceQuests"] = { 41628 },	-- Harnessing the Holy Fire
					}),
					q(41631, {	-- The Nexus Vault
						["provider"] = { "n", 105917 },	-- Image of Kalec
						["sourceQuests"] = { 41630 },	-- Unleashing Judgment
						["maps"] = { 736 },	-- The Nexus Vault
					}),
					q(41632, {	-- A Gift of Time
						["provider"] = { "n", 105081 },	-- Archmage Kalec
						["sourceQuests"] = { 41630 },	-- The Nexus Vault
						["coord"] = { 28.6, 49.9, LEGION_DALARAN },
					}),
					-- intro
					q(40938, {	-- The Light and the Void
						["provider"] = { "n", 101313 },	-- Prophet Velen
						["sourceQuests"] = { 40710 },	-- Blade in Twilight
						["coord"] = { 46.6, 20.9, LEGION_DALARAN },
					}),
					--41015
					--41017
					q(44251, {	-- Power Word: Armor
						["provider"] = { "n", 112401 },	-- Meridelle Lightspark
						["coord"] = { 38.9, 24.4, NETHERLIGHT_TEMPLE },
						["lvl"] = 45,
						["groups"] = {
							i(139757),	-- Miter of the High Priest
						},
					}),
					-- Zone
					q(41019, {	-- Actions on Azeroth
						["provider"] = { "n", 102655 },	-- Alonsus Faol
						["sourceQuests"] = { 40938 },	-- The Light and the Void
						["coord"] = { 48.9, 49.1, NETHERLIGHT_TEMPLE },
					}),
					q(44100, {	-- Proper Introductions
						["provider"] = { "n", 112695 },	-- Hooded Priest
						["sourceQuests"] = { 41019 },	-- Actions on Azeroth
						["classes"] = { PRIEST },	-- Priest
						["isBreadcrumb"] = true,
					}),
					q(43270, {	-- Rise, Champions
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 44100 },	-- Proper Introductions
						["coord"] = { 51.1, 48.2, NETHERLIGHT_TEMPLE },
					}),
					q(43271, {	-- Champion: Calia Menethil
						["provider"] = { "n", 110596 },	-- Calia Menethil
						["sourceQuests"] = { 43270 },	-- Rise, Champions (must be on this quest)
						["coord"] = { 51.6, 50.0, NETHERLIGHT_TEMPLE },
						["groups"] = {
							follower(856),	-- Calia Menethil
						},
					}),
					q(43272, {	-- Champion: High Priestess Ishanah
						["provider"] = { "n", 110598 },	-- High Priestess Ishanah
						["sourceQuests"] = { 43270 },	-- Rise, Champions (must be on this quest)
						["coord"] = { 57.4, 26.9, NETHERLIGHT_TEMPLE },
						["groups"] = {
							follower(857),	-- High Priestess Ishanah
						},
					}),
					q(43273, {	-- Spread the Word
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43270 },	-- Rise, Champions (must be on this quest)
						["coord"] = { 51.2, 48.3, NETHERLIGHT_TEMPLE },
					}),
					q(43275, {	-- Recruiting the Troops
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43273 },	-- Spread the Word
						["coord"] = { 51.1, 48.5, NETHERLIGHT_TEMPLE },
					}),
					q(43276, {	-- Troops in the Field
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43275 },	-- Recruiting the Troops
						["coord"] = { 51.1, 48.5, NETHERLIGHT_TEMPLE },
					}),

					--
					q(43386, {	-- Onslaught Envoy
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43385 },	-- Infiltrating Our Enemies
						["coord"] = { 51.5, 47.7, NETHERLIGHT_TEMPLE },
					}),
					q(43388, {	-- Apostate Liberation
						["provider"] = { "n", 110683 },	-- Mariella the Heretic
						["sourceQuests"] = { 43386 },	-- Onslaught Envoy
						["coord"] = { 71.4, 71.8, DRAGONBLIGHT },
					}),
					q(43387, {	-- Scarlet Redemption
						["provider"] = { "n", 110683 },	-- Mariella the Heretic
						["sourceQuests"] = { 43386 },	-- Onslaught Envoy
						["coord"] = { 71.4, 71.8, DRAGONBLIGHT },
					}),
					q(43389, {	-- Unexpected Guests
						["provider"] = { "n", 110683 },	-- Mariella the Heretic
						["sourceQuests"] = { 43387 },	-- Scarlet Redemption
						["maps"] = { DRAGONBLIGHT },
					}),
					q(43381, {	-- Champion: Mariella Ward
						["provider"] = { "n", 111215 },	-- Mariella Ward
						["sourceQuests"] = { 43389 },	-- Unexpected Guests
						["coord"] = { 51.2, 49.6, NETHERLIGHT_TEMPLE },
						["groups"] = {
							i(139762),	-- Bracers of the High Priest
							follower(873),	-- Mariella Ward
						},
					}),
					--
					q(43390, {	-- Forgotten Shadows
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43381 },	-- Champion: Mariella Ward
						["coord"] = { 50.9, 46.8, NETHERLIGHT_TEMPLE },
					}),
					q(43391, {	-- Secrets of the Void
						["provider"] = { "n", 111041 },	-- Micah Belford
						["sourceQuests"] = { 43390 },	-- Forgotten Shadows
						["coord"] = { 24.2, 37.8, DUSKWOOD },
					}),
					q(43392, {	-- Into the Void
						["provider"] = { "n", 111041 },	-- Micah Belford
						["sourceQuest"] = 43391,	-- Secrets of the Void
						["coord"] = { 24.4, 37.8, DUSKWOOD },
					}),
					q(43382, {	-- Champion: Natalie Seline
						["provider"] = { "n", 110684 },	-- Natalie Seline
						["sourceQuest"] = 43392,	-- Into the Void
						["coord"] = { 24.2, 37.8, DUSKWOOD },
						["groups"] = {
							follower(874),	-- Natalie Seline
						},
					}),
					q(43393, {	-- Rising Shadows
						["provider"] = { "n", 110684 },	-- Natalie Seline
						["sourceQuest"] = 43392,	-- Into the Void
						["coord"] = { 24.2, 37.8, DUSKWOOD },
					}),
					q(43394, {	-- Crossing Legion Lines
						["provider"] = { "n", 111044 },	-- Lord Maxwell Tyrosus
						["sourceQuests"] = { 43393 },	-- Rising Shadows
						["maps"] = { 748 },
					}),
					q(43396, {	-- The Mind of the Enemy
						["provider"] = { "n", 110969 },	-- Aponi Brightmane
						["sourceQuests"] = { 43394 },	-- Crossing Legion Lines
						["coord"] = { 48.9, 63.6, 748 },
					}),
					q(43395, {	-- Allies of the Light
						["provider"] = { "n", 110969 },	-- Aponi Brightmane
						["sourceQuests"] = { 43394 },	-- Crossing Legion Lines
						["coord"] = { 48.9, 63.6, 748 },
					}),
					q(43397, {	-- United As One
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = {
							43395,	-- Allies of the Light
							43396,	-- The Mind of the Enemy
						},
						["coord"] = { 51.1, 48.5, NETHERLIGHT_TEMPLE },
					}),
					q(43797, {	-- Aiding the Conclave
						["provider"] = { "n", 111616 },	-- Lady Liadrin
						["sourceQuests"] = { 43397 },	-- United As One
						["coord"] = { 50.2, 74.1, LIGHTS_HOPE_CHAPEL },
					}),
					q(43832, {	-- Elixirs of Aid
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43797 },	-- Aiding the Conclave
						["coord"] = { 50.9, 46.8, NETHERLIGHT_TEMPLE },
					}),
					q(43923, {	-- Starlight Rose
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43832 },	-- Elixirs of Aid
						["coord"] = { 50.9, 46.8, NETHERLIGHT_TEMPLE },
						["repeatable"] = true,
					}),
					q(43925, {	-- Runescale Koi
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43832 },	-- Elixirs of Aid
						["coord"] = { 50.9, 46.8, NETHERLIGHT_TEMPLE },
						["repeatable"] = true,
					}),
					q(43924, {	-- Leyblood
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43832 },	-- Elixirs of Aid
						["coord"] = { 50.9, 46.8, NETHERLIGHT_TEMPLE },
						["repeatable"] = true,
					}),
					q(43399, {	-- Fortifying the Temple
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43797 },	-- Aiding the Conclave
						["coord"] = { 50.9, 46.8, NETHERLIGHT_TEMPLE },
					}),
					q(43400, {	-- Lumenstone
						["provider"] = { "n", 109776 },	-- Moira Thaurissan
						["sourceQuests"] = { 43797 },	-- Aiding the Conclave
						["coord"] = { 51.5, 45.9, NETHERLIGHT_TEMPLE },
					}),
					q(43401, {	-- A Light in the Darkness
						["provider"] = { "n", 110564 },	-- Alonsus Faol <Bishop of Secrets>
						["sourceQuests"] = {
							43832,	-- Elixirs of Aid
							43399,	-- Fortifying the Temple
							43400,	-- Lumenstone
						},
						["coord"] = { 51.0, 48.4, NETHERLIGHT_TEMPLE },
					}),
					q(43398, {	-- Champion: Alonsus Faol
						["provider"] = { "n", 110564 },	-- Alonsus Faol <Bishop of Secrets>
						["sourceQuests"] = { 43401 },	-- A Light in the Darkness
						["coord"] = { 51.0, 48.4, NETHERLIGHT_TEMPLE },
						["groups"] = {
							follower(875),	-- Alonsus Faol
						},
					}),
					q(43402, {	-- High Priest of Netherlight
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43398 },	-- Champion: Alonsus Faol
						["coord"] = { 51.0, 48.4, NETHERLIGHT_TEMPLE },
						["groups"] = {
							i(139759),	-- Robes of the High Priest
							title(339),	-- High Priest <Name>
						},
					}),
					--
					q(43420, {	-- A Hero's Weapon
						["provider"] = { "n", 110498 },	-- Alonsus Faol
						["sourceQuests"] = { 43402 },	-- High Priest of Netherlight
						["coord"] = { 48.5, 20.1, NETHERLIGHT_TEMPLE },
					}),
					--
					q(46028, {	-- An Urgent Warning
						["u"] = REMOVED_FROM_GAME,	-- supposedly removed in 7.2
					}),
					q(46029, {	-- Investigate the Broken Shore
						["u"] = REMOVED_FROM_GAME,	-- supposedly removed in 7.2
					}),
					--

					q(45343, {	-- A Curious Contagion
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						--["sourceQuests"] = { 47137 },
						["coord"] = { 51.0, 48.4, NETHERLIGHT_TEMPLE },
					}),
					q(45344, {	-- Sampling the Source
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["sourceQuests"] = { 45343 },	-- A Curious Contagion
						["coord"] = { 30.0, 55.9, HIGHMOUNTAIN },
					}),
					q(45346, {	-- Shambling Specimens
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["sourceQuests"] = { 45343 },	-- A Curious Contagion
						["coord"] = { 30.0, 55.9, HIGHMOUNTAIN },
					}),
					q(45345, {	-- Mischievous Sprites
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["sourceQuests"] = { 45343 },	-- A Curious Contagion
						["coord"] = { 30.0, 55.9, HIGHMOUNTAIN },
						["groups"] = {
							i(143678),	-- Shimmering Dust (QI!)
						},
					}),
					q(45347, {	-- Crafting a Cure
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["sourceQuests"] = {
							45344,	-- Sampling the Source
							45345,	-- Mischievous Spirites
							45346,	-- Shambling Specimens
						},
						["coord"] = { 30.0, 55.9, HIGHMOUNTAIN },
					}),
					q(45348, {	-- Safekeeping
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["sourceQuests"] = { 45347 },	-- Crafting a Cure
						["coord"] = { 30.0, 55.9, HIGHMOUNTAIN },
					}),
					q(45349, {	-- To the Broken Shore
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 45348 },	-- Safekeeping
						["coord"] = { 51.1, 48.5, NETHERLIGHT_TEMPLE },
					}),
					q(45342, {	-- Administering Aid
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["sourceQuests"] = { 45349 },	-- To the Broken Shore
						["coord"] = { 33.6, 49.7, BROKEN_SHORE },
					}),
					q(45350, {	-- Countering the Contagion
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["sourceQuests"] = { 45349 },	-- To the Broken Shore
						["coord"] = { 33.6, 49.7, BROKEN_SHORE },
					}),
					q(46145, {	-- Sterile Surroundings
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["sourceQuests"] = {
							45342,	-- Administering Aid
							45350,	-- Countering the Contagion
						},
						["coord"] = { 33.6, 49.7, BROKEN_SHORE },
					}),
					q(46034, {	-- Champion: Aelthalyste
						["provider"] = { "n", 120842 },	-- Aelthalyste
						["sourceQuests"] = { 46145 },	-- Sterile Surroundings
						["coord"] = { 24.8, 40.1, NETHERLIGHT_TEMPLE },
						["groups"] = {
							follower(1002),	-- Aelthalyste
						},
					}),
					q(45788, {	-- The Speaker Awaits
						["provider"] = { "n", 118536 },	-- Grand Priest
						["sourceQuests"] = { 46034 },	-- Champion: Aelthalyste
						["coord"] = { 44.4, 63.7, BROKEN_SHORE },
					}),
					q(45789, {	-- The Sunken Vault
						["provider"] = { "n", 102709 },	-- Betild Deepanvil <Master Artificer>
						["sourceQuests"] = { 45788 },	-- The Speaker Awaits
						["coord"] = { 50.4, 21.8, NETHERLIGHT_TEMPLE },
						["maps"] = { 839 },	-- THe Maelstrom
						["groups"] = {
							mount(229377),	-- High Priest's Lightsworn Seeker (MOUNT!)
						},
					}),
					q(43375, {	-- An Ample Supply
						["provider"] = { "n", 110686 },	-- Zabra Hexx
						["sourceQuests"] = { 43374 },	-- Murloc Mind Control (must pick up for this quest to be available)
						["coord"] = { 58.5, 37.2, AZSUNA },
					}),
					q(43383, {	-- Awakening the Light
						["provider"] = { "n", 102587 },	-- Saa'ra
						["sourceQuests"] = { 43377 },	-- Halls of Valor: The Light Within
						["coord"] = { 75.7, 40.7, NETHERLIGHT_TEMPLE },
					}),
					q(43380, {	-- Champion: Sol
						["provider"] = { "n", 110457 },	-- Sol
						["sourceQuests"] = { 43383 },	-- Awakening the Light
						["coord"] = { 73.9, 40.8, NETHERLIGHT_TEMPLE },
						["groups"] = {
							follower(872),	-- Sol
						},
					}),
					q(42137, {	-- Champion: Yalia Sagewhisper
						["provider"] = { "n", 110687 },	-- Yalia Sagewhisper
						["sourceQuests"] = { 43376 },	-- Problem Salver
						["coord"] = { 47.1, 43.9, AZSUNA },
						["groups"] = {
							follower(871),	-- Yalia Sagewhisper
						},
					}),
					q(42138, {	-- Champion: Zabra Hexx
						["provider"] = { "n", 110686 },	-- Zabra Hexx
						["sourceQuests"] = { 43376 },	-- Problem Salver
						["coord"] = { 47.1, 43.9, AZSUNA },
						["groups"] = {
							follower(870),	-- Zabra Hexx
						},
					}),
					q(43384, {	-- Demonic Runes
						["provider"] = { "n", 110571 },	-- Delas Moonfang
						["sourceQuests"] = { 43379 },	-- Velen's Vision
						["coord"] = { 48.9, 48.7, NETHERLIGHT_TEMPLE },
					}),
					q(43378, {	-- Eye of Azshara: Looking Through the Lens
						["provider"] = { "n", 110687 },	-- Yalia Sagewhisper
						["sourceQuests"] = {
							42137,	-- Champion: Yalia Sagewhisper
							42138,	-- Champion: Zabra Hexx
						},
						["coord"] = { 47.1, 43.9, AZSUNA },
					}),
					q(43377, {	-- Halls of Valor: The Light Within
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43379 },	-- Velen's Vision
						["coord"] = { 50.9, 46.8, NETHERLIGHT_TEMPLE },
					}),
					q(43385, {	-- Infiltrating Our Enemies
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43380 },	-- Champion: Sol
						["coord"] = { 51.5, 47.7, NETHERLIGHT_TEMPLE },
					}),
					q(43374, {	-- Murloc Mind Control
						["provider"] = { "n", 110686 },	-- Zabra Hexx
						["sourceQuests"] = { 43372 },	-- The Best and Brightest
						["coord"] = { 58.5, 37.2, AZSUNA },
					}),
					q(43376, {	-- Problem Salver
						["provider"] = { "n", 112487 },	-- Yalia Sagewhisper
						["sourceQuests"] = {
							43375,	-- An Ample Supply
							43374,	-- Murloc Mind Control
						},
						["coord"] = { 58.5, 37.2, AZSUNA },
					}),
					q(43851, {	-- Recruiting More Troops
						["provider"] = { "n", 109776 },	-- Moira Thaurissan
						["sourceQuests"] = { 43379 },	-- Velen's Vision
						["coord"] = { 50.9, 46.8, NETHERLIGHT_TEMPLE },
					}),
					q(43371, {	-- Relieving the Front Lines
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43277 },	-- Tech It Up A Notch
						["coord"] = { 51.1, 48.5, NETHERLIGHT_TEMPLE },
					}),
					q(43277, {	-- Tech It Up A Notch
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43276 },	-- Troops in the Field
						["coord"] = { 51.1, 48.5, NETHERLIGHT_TEMPLE },
					}),
					q(43373, {	-- The Best and Brightest
						["provider"] = { "n", 110557 },	-- Prophet Velen
						["sourceQuests"] = { 43372 },	-- Whispers in the Void
						["coord"] = { 48.2, 48.2, NETHERLIGHT_TEMPLE },
					}),
					q(43379, {	-- Velen's Vision
						["provider"] = { "n", 110557 },	-- Prophet Velen
						["sourceQuests"] = { 43378 },	-- Eye of Azshara: Through the Lens
						["coord"] = { 48.3, 47.8, NETHERLIGHT_TEMPLE },
					}),
					q(43372, {	-- Whispers in the Void
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["sourceQuests"] = { 43371 },	-- Relieving the Front Lines
						["coord"] = { 51.2, 48.7, NETHERLIGHT_TEMPLE },
					}),
					-- Misc
					q(43884, {	-- Hitting the Books
						["u"] = REMOVED_FROM_GAME,
					}),
					q(46788, {	-- Further Advancement
						["provider"] = { "n", 109776 },	-- Moira Thaurissan <Queen of the Dark Iron>
						--["sourceQuests"] = { 46034, },	-- Champion: Aelthalyste
					}),
					q(46153, {	-- Furthering Knowledge
						["u"] = REMOVED_FROM_GAME,
					}),
					q(46140, {	-- Knowledge is Power
						["u"] = REMOVED_FROM_GAME,
					}),
				}),
				n(SPECIAL, {
					q(44306, {	-- Blessings of the Order
						["provider"] = { "n", 111773 },	-- Sister Oriel
						["coord"] = { 61.6, 45.6, NETHERLIGHT_TEMPLE },
						["description"] = "Only available if you have the |cFFFFD700Tithe|r order hall upgrade.",
					}),
					q(44229, {	-- Champion Armaments
						["provider"] = { "n", 110595 },	-- Lilith
						["coord"] = { 45.8, 27.2, NETHERLIGHT_TEMPLE },
						["description"] = "Only available if you have the |cFFFFD700Armaments of Light|r order hall upgrade.",
					}),
					q(44230, {	-- The Fates Bless Us
						["provider"] = { "n", 110819 },	-- Truth
						["coord"] = { 58.6, 29.9, NETHERLIGHT_TEMPLE },
						["description"] = "Only available if you have the |cFFFFD700Blessed Seals|r order hall upgrade.",
					}),
				}),
				n(TREASURES, {
					o(252162, {	-- Light Well
						["coord"] = { 75.5, 40.6, NETHERLIGHT_TEMPLE },
						["groups"] = {
							i(139459),	-- Blessing of the Light
							i(139452),	-- Essence of the Ligh
							i(139449),	-- Essence of the Naaru
							i(139447),	-- Vial of Pure Light
						},
					}),
				}),
				n(VENDORS, {
					n(112401, {	-- Meridelle Lightspark <Logistics>
						["coord"] = { 39.0, 24.6, NETHERLIGHT_TEMPLE },
						["sym"] = {{"select","itemID",143727}},	-- Champion's Salute (TOY!)
						["groups"] = {
							i(139762, {	-- Bracers of the High Priest
								["cost"] = 5000000,	-- 500g
							}),
							i(139761, {	-- Cord of the High Priest
								["cost"] = 5000000,	-- 500g
							}),
							i(139756, {	-- Gloves of the High Priest
								["cost"] = 5000000,	-- 500g
							}),
							i(140942, {	-- High Priest's Armor Kit
								["cost"] = { { "c", 1220, 2000 }, },	-- 2,000x Order Resources
							}),
							i(140977, {	-- High Priest's Greater Armor Kit
								["cost"] = { { "c", 1220, 4000 }, },	-- 4,000x Order Resources
							}),
							i(140976, {	-- High Priest's Lesser Armor Kit
								["cost"] = { { "c", 1220, 500 }, },		-- 500x Order Resources
							}),
							i(139758, {	-- Leggings of the High Priest
								["cost"] = 5000000,	-- 500g
							}),
							i(139757, {	-- Miter of the High Priest
								["cost"] = 5000000,	-- 500g
							}),
							i(140552),	-- Netherlight Spire
							i(139759, {	-- Robes of the High Priest
								["cost"] = 5000000,	-- 500g
							}),
							i(139760, {	-- Spaulders of the High Priest
								["cost"] = 5000000,	-- 500g
							}),
							i(139755, {	-- Steps of the High Priest
								["cost"] = 5000000,	-- 500g
							}),
						},
					}),
				}),
			},
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(PRIEST, bubbleDownSelf({ ["classes"] = { PRIEST } }, {
			q(42072),	-- Boros Tracker - triggers during "Out of the Darkness" (questID 41967)
			q(44059),	-- Legion Attacks
			q(43507),	-- Looted Priest Altar
			q(42328),	-- Tracking Quest: Lumenstone 1 - completed the "Lumenstone: Faronaar" mission
			q(42329),	-- Tracking Quest: Lumenstone 2 - completed the "Lumenstone: Suramar City" mission
			q(42330),	-- Tracking Quest: Lumenstone 3 - completed the "Lumenstone: Stormheim" mission
			q(42331),	-- Tracking Quest: Lumenstone 4 - completed the "Lumenstone: Broken Shore" mission
			q(42332),	-- Tracking Quest: Lumenstone 5 - completed the "Lumenstone: Vashj'ir" mission
			q(44608),	-- Tracking Quest: Holy Ground 1 - completed the "Holy Ground: Light's Hope Chapel" mission
			q(44609),	-- Tracking Quest: Holy Ground 2 - completed the "Holy Ground: The Exodar" mission
			q(44610),	-- Tracking Quest: Holy Ground 3 - completed the "Holy Ground: Uther's Tomb" mission
			q(44611),	-- Tracking Quest: Holy Ground 4 - completed the "Holy Ground: Auchindoun" mission
			q(44612),	-- Tracking Quest: Holy Ground 5 - completed the "Holy Ground: The Sunwell" mission
			q(44649),	-- Tracking Quest: 7.0 Class Hall - Priest - One-Time Quest Mission - Chapter 3 (JAP) - completed the "Infiltrating Our Enemies" mission
			q(44650),	-- Tracking Quest: 7.0 Class Hall - Priest - Pacing Mission 1 (JAP) - completed the "Relieving the Front Lines" mission
		})),
	}),
})));