-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(PRIEST, bubbleDownSelf({ ["classes"] = { PRIEST } }, {
			["maps"] = { NETHERLIGHT_TEMPLE },
			["g"] = {
				n(ARTIFACTS, {
					header(HEADERS.Item, 141332, {	-- The Annals of Light and Shadow
						["description"] = "Obtain 12 of these books to complete the set and receive the Discipline Priest Hidden Artifact Appearance.\n\nStart with Volume VI and Archivist Inkforge in your Order Hall.",
						["g"] = sharedData({
							["groups"] = {
								i(141332),	-- The Annals of Light and Shadow
							},
						},{
							q(44339, {	-- Volume I
								["name"] = "|cFFFFFFFFVolume I|r | The Violet Citadel in new Dalaran.",
								["description"] = "Khadgar is located in the Violet Citadel in new Dalaran. On the left side, there is an NPC named Archivist Elysiana. Volume 1 is on the right-hand bookshelf behind her.\n\nWorld Spawn - might be on cooldown!",
								["provider"] = { "n", 113873 },	-- Archivist Elysiana <Curator>
								["coord"] = { 30.6, 50.8, LEGION_DALARAN },
							}),
							q(44340, {	-- Volume II
								["name"] = "|cFFFFFFFFVolume II|r | Behind Juvess the Duskwhisperer in the Class Order Hall.",
								["description"] = "High Priestess Ishanah is on the other side of the alcove, and next to her is a Draenei Anchorite.\n\nWorld Spawn - might be on cooldown!",
								["provider"] = { "n", 111738 },	-- Juvess the Duskwhisperer
								["coord"] = { 58.4, 25.1, NETHERLIGHT_TEMPLE },
							}),
							q(44341, {	-- Volume III
								["name"] = "|cFFFFFFFFVolume III|r | New Hearthglen in Northrend.",
								["description"] = "Book is on top of a bookshelf on the left side of the cloister, on the ground floor.\n\nWorld Spawn - might be on cooldown (60-minute respawn).",
								["icon"] = 134503,
								["coords"] = {
									{ 72.2, 73.4, DRAGONBLIGHT },	-- Entrance to cloister
									{ 73.2, 72.9, DRAGONBLIGHT },	-- Actual book
								},
							}),
							q(44344, {	-- Volume IV
								["name"] = "|cFFFFFFFFVolume IV|r | Bookshelf to the left of Meridelle Lightspark in the Class Order Hall. ",
								["description"] = "On the left side of Meridelle Lightspark there is a shelf. On the lower board, there are some stacked books, and this volume is on the right side of those.\n\nWorld Spawn - might be on cooldown!",
								["provider"] = { "n", 112401 },	-- Meridelle Lightspark <Logistics>
								["coord"] = { 37.2, 25.0, NETHERLIGHT_TEMPLE },
							}),
							q(44343, {	-- Volume V
								["name"] = "|cFFFFFFFFVolume V|r | Chillheart's room in Scholomance.",
								["description"] = "Enter Chillheart's room - you don't need to kill the boss. Kill the first trashpack on the right side. The book is on top of the 6th bookshelf from the right.",
								["provider"] = { "n", 58633 },	-- Instructor Chillheart
								["coords"] = {
									{ 69.0, 72.9, WESTERN_PLAGUELANDS },	-- Scholomance entrance
									{ 58.8, 84.0, SCHOLOMANCE },	--	Actual volume inside the dungeon
								},
							}),
							q(44342, {	-- Volume VI
								["name"] = "|cFFFFFFFFVolume VI|r | Archivist Inkforge in the class order hall.",
								["description"] = "You must get this volume first in order to collect the others.  Talk to Archivist Inkforge. Always choose the middle answer (passive curious, not judging) and he will give you the first volume.",
								["provider"] = { "n", 111119 },	-- Archivist Inkforge
								["coord"] = { 62.5, 36.3, NETHERLIGHT_TEMPLE },
							}),
							q(44345, {	-- Volume VII
								["name"] = "|cFFFFFFFFVolume VII|r | The Flameweaver's library in Scarlet Halls.",
								["description"] = "Run through the instance to Flameweaver Koegler's room. on the left-hand side of the room there's a table with a candelabra. Volume 7 is on the bench between the table and the bookshelf.",
								["provider"] = { "n", 59150 },	-- Flameweaver Koegler
								["coords"] = {
									{ 69.0, 24.9, SCARLET_MONASTERY_ENTRANCE },	-- Scarlet Halls entrance
									{ 35.7, 14.2, 432 },	-- Actual volume inside instance
								},
							}),
							q(44350, {	-- Volume VIII
								["name"] = "|cFFFFFFFFVolume VIII|r | A rare in the cave southwest of Halls of Valor in Stormheim (Inquisitor Ernstenbok).",
								["description"] = "You must kill him after you have at least one of the books in your inventory and he will drop the book.\n\nIf several kill the mob, only one Priest is able to loot the book!",
								["provider"] = { "n", 90139 },	-- Inquisitor Ernstenbok
								["coord"] = { 63.6, 74.4, STORMHEIM },
							}),
							q(44347, {	-- Volume IX
								["name"] = "|cFFFFFFFFVolume IX|r | Artificer Lothaire in Moon Guard Stronghold, Suramar.",
								["description"] = "You must kill him after you have at least one of the books in your inventory and he will drop the book.\n\nIf several kill the mob, only one Priest is able to loot the book!",
								["provider"] = { "n", 106351 },	-- Artificer Lothaire
								["coord"] = { 33.8, 15.0, SURAMAR },
							}),
							q(44348, {	-- Volume X
								["name"] = "|cFFFFFFFFVolume X|r | Black Rook Hold in corner of room with ghosts and bookshelves.",
								["description"] = "After defeating the first boss, you will get into the Map-Room with a large setup in the middle. Head along the left side, the book is on one of the tables.",
								["provider"] = { "n", 98542 },	-- Amalgam of Souls
								["coords"] = {
									{ 58.6, 75.8, 751 },	-- item in instance
									{ 38.4, 50.8, VALSHARAH },	-- Black Rook Hold entrance
								},
							}),
							q(44349, {	-- Volume XI
								["name"] = "|cFFFFFFFFVolume XI|r | Guardian's Library in old Karazhan.",
								["description"] = "After the Curator, jump down to the right and head straight into the first nook. There is a tapestry on the wall and 3 bookshelves below. Volume 11 is on the bottom of the left-hand bookshelf.",
								["provider"] = { "n", 15691 },	-- The Curator
								["coords"] = {
									{ 46.9, 74.8, DEADWIND_PASS },	-- Karazhan entrance
									{ 36.8, 37.9, 358 },
								},
							}),
							q(44346, {	-- Volume XII
								["name"] = "|cFFFFFFFFVolume XII|r | Chief Bitterbrine on the Queen's Reprisal in Azsuna.",
								["description"] = "Fly to Shackle's Den and head east.\n\nIf several kill the mob, only one Priest is able to loot the book!",
								["provider"] = { "n", 106990 },	-- Chief Bitterbrine
								["coord"] = { 65.6, 56.8, AZSUNA },
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
						["providers"] = {
							{ "n", 101344 },	-- Hooded Priestess (Horde)
							{ "n", 102333 },	-- Hooded Priestess (Alliance)
						},
						["maps"] = { LEGION_DALARAN },
						["g"] = {
							i(173373, {	-- Faol's Hearthstone (QI!)
								["timeline"] = { ADDED_9_0_1 },
							}),
						},
					}),
					-- Artifact
					q(40706, {	-- A Legend You Can Hold
						["sourceQuests"] = { 40705 },	-- Priestly Matters
						["provider"] = { "n", 101314 },	-- Alonsus Faol
						["coord"] = { 78.9, 41.0, TIRISFAL_GLADES },
					}),
					q(43935, {	-- A Second Legend
						["sourceQuests"] = { 40706 },	--  A Legend You Can Hold
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["coord"] = { 51.1, 48.2, NETHERLIGHT_TEMPLE },
					}),
					q(44407, {	-- The Third Legend
						["sourceQuests"] = { 43935 },	-- A Second Legend
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["coord"] = { 51.5, 47.6, NETHERLIGHT_TEMPLE },
					}),
					-- Shadow
					q(40710, {	-- Blade in Twilight
						["sourceQuests"] = { 40706 },	-- A Legend You Can Hold
						["providers"] = {
							{ "n", 101314 },	-- Alonsus Faol
							{ "n", 110564 },	-- Alonsus Faol
						},
						["coord"] = { 51.5, 47.6, 702 },
						["g"] = {
							i(173523),	-- Tirisfal Camp Scroll (QI!)
						},
					}),
					-- Holy
					q(41957, {	-- The Vindicator's Plea
						["sourceQuests"] = { 40706 },	-- A Legend You Can Hold
						["provider"] = { "n", 101314 },	-- Alonsus Faol
						["coord"] = { 78.9, 41.0, TIRISFAL_GLADES },
					}),
					q(41966, {	-- House Call
						["sourceQuests"] = { 41957 },	-- The Vindicator's Plea
						["provider"] = { "n", 105602 },	-- Vindicator Boros
						["coord"] = { 37.7, 36.7, LEGION_DALARAN },
						["g"] = {
							i(173379),	-- Purify Stone (QI!)
						},
					}),
					q(41967, {	-- Out of the Darkness
						["sourceQuests"] = { 41966 },	-- House Call
						["coord"] = { 37.5, 35.5, LEGION_DALARAN },
						["provider"] = { "n", 105603 },	-- Defender Barrem
					}),
					q(41993, {	-- Salvation From On High
						["sourceQuests"] = { 41967 },	-- Out of the Darkness
						["provider"] = { "n", 105684 },	-- Alora
						["coord"] = { 34.0, 33.9, BROKEN_SHORE },
					}),
					q(42074, {	-- Return of the Light
						["sourceQuests"] = { 41993 },	-- Salvation From On High
						["provider"] = { "n", 106011 },	-- Jace  Darkweaver
						["maps"] = { 714 },	-- Niskara
						["coord"] = { 33.5, 33.1, BROKEN_SHORE },
					}),
					-- Disc
					q(41625, {	-- The Light's Wrath
						["sourceQuests"] = { 40706 },	-- A Legend You Can Hold
						["coord"] = { 51.5, 47.9, 702 },
						["provider"] = { "n", 101314 },	-- Alonsus Faol
					}),
					q(41626, {	-- A New Threat
						["sourceQuests"] = { 41625 },	-- The Light's Wrath
						["coord"] = { 28.7, 49.9, LEGION_DALARAN },
						["provider"] = { "n", 105081 },	-- Archmage Kalec
					}),
					q(41627, {	-- A Forgotten Enemy
						["provider"] = { "o", 248398 },	-- Ethereal Communication Device
						["sourceQuests"] = { 41626 },	-- A New Threat
						["coord"] = { 56.7, 69.1, DRAGONBLIGHT },
					}),
					q(41628, {	-- Eyes of the Dragon
						["sourceQuests"] = { 41626 },	-- A Forgotten Enemy
						["provider"] = { "n", 105917 },	-- Image of Kalec
						["g"] = {
							i(173430),	-- Nexus Teleport Scroll (QI!)
						},
					}),
					q(41629, {	-- Harnessing the Holy Fire
						["sourceQuests"] = { 41627 },	-- Eyes of the Dragon
						["provider"] = { "n", 105917 },	-- Image of Kalec
					}),
					q(41630, {	-- Unleashing Judgment
						["sourceQuests"] = { 41628 },	-- Harnessing the Holy Fire
						["provider"] = { "n", 105917 },	-- Image of Kalec
					}),
					q(41631, {	-- The Nexus Vault
						["sourceQuests"] = { 41630 },	-- Unleashing Judgment
						["provider"] = { "n", 105917 },	-- Image of Kalec
						["maps"] = { 736 },	-- The Nexus Vault
					}),
					q(41632, {	-- A Gift of Time
						["sourceQuests"] = { 41630 },	-- The Nexus Vault
						["provider"] = { "n", 105081 },	-- Archmage Kalec
						["coord"] = { 28.6, 49.9, LEGION_DALARAN },
					}),
					-- intro
					q(40938, {	-- The Light and the Void
						["sourceQuests"] = { 40710 },	-- Blade in Twilight
						["coord"] = { 46.6, 20.9, LEGION_DALARAN },
						["provider"] = { "n", 101313 },	-- Prophet Velen
					}),
					--41015
					--41017
					q(44251, {	-- Power Word: Armor
						["lvl"] = 45,
						["provider"] = { "n", 112401 },	-- Meridelle Lightspark
						["coord"] = { 38.9, 24.4, 702 },
						["g"] = {
							i(139757),	-- Miter of the High Priest
						},
					}),
					-- Zone
					q(41019, {	-- Actions on Azeroth
						["sourceQuests"] = { 40938 },	-- The Light and the Void
						["provider"] = { "n", 102655 },	-- Alonsus Faol
						["coord"] = { 48.9, 49.1, 702 },
					}),
					q(44100, {	-- Proper Introductions
						["sourceQuests"] = { 41019 },	-- Actions on Azeroth
						["classes"] = { PRIEST },	-- Priest
						["provider"] = { "n", 112695 },	-- Hooded Priest
						["isBreadcrumb"] = true,
					}),
					q(43270, {	-- Rise, Champions
						["sourceQuests"] = { 44100 },	-- Proper Introductions
						["coord"] = { 51.1, 48.2, 702 },
						["provider"] = { "n", 110564 },	-- Alonsus Faol
					}),
					q(43271, {	-- Champion: Calia Menethil
						["sourceQuests"] = { 43270 },	-- Rise, Champions (must be on this quest)
						["provider"] = { "n", 110596 },	-- Calia Menethil
						["coord"] = { 51.6, 50.0, 702 },
						["g"] = {
							follower(856),	-- Calia Menethil
						},
					}),
					q(43272, {	-- Champion: High Priestess Ishanah
						["sourceQuests"] = { 43270 },	-- Rise, Champions (must be on this quest)
						["coord"] = { 57.4, 26.9, 702 },
						["provider"] = { "n", 110598 },	-- High Priestess Ishanah
						["g"] = {
							follower(857),	-- High Priestess Ishanah
						},
					}),
					q(43273, {	-- Spread the Word
						["sourceQuests"] = { 43270 },	-- Rise, Champions (must be on this quest)
						["coord"] = { 51.2, 48.3, 702 },
						["provider"] = { "n", 110564 },	-- Alonsus Faol
					}),
					q(43275, {	-- Recruiting the Troops
						["sourceQuests"] = { 43273 },	-- Spread the Word
						["coord"] = { 51.1, 48.5, 702 },
						["provider"] = { "n", 110564 },	-- Alonsus Faol
					}),
					q(43276, {	-- Troops in the Field
						["sourceQuests"] = { 43275 },	-- Recruiting the Troops
						["coord"] = { 51.1, 48.5, 702 },
						["provider"] = { "n", 110564 },	-- Alonsus Faol
					}),

					--
					q(43386, {	-- Onslaught Envoy
						["sourceQuests"] = { 43385 },	-- Infiltrating Our Enemies
						["coord"] = { 51.5, 47.7, 702 },
						["provider"] = { "n", 110564 },	-- Alonsus Faol
					}),
					q(43388, {	-- Apostate Liberation
						["sourceQuests"] = { 43386 },	-- Onslaught Envoy
						["coord"] = { 71.4, 71.8, DRAGONBLIGHT },
						["provider"] = { "n", 110683 },	-- Mariella the Heretic
					}),
					q(43387, {	-- Scarlet Redemption
						["sourceQuests"] = { 43386 },	-- Onslaught Envoy
						["coord"] = { 71.4, 71.8, DRAGONBLIGHT },
						["provider"] = { "n", 110683 },	-- Mariella the Heretic
					}),
					q(43389, {	-- Unexpected Guests
						["sourceQuests"] = { 43387 },	-- Scarlet Redemption
						["provider"] = { "n", 110683 },	-- Mariella the Heretic
						["maps"] = { DRAGONBLIGHT },
					}),
					q(43381, {	-- Champion: Mariella Ward
						["sourceQuests"] = { 43389 },	-- Unexpected Guests
						["coord"] = { 51.2, 49.6, 702 },
						["provider"] = { "n", 111215 },	-- Mariella Ward
						["g"] = {
							i(139762),	-- Bracers of the High Priest
							follower(873),	-- Mariella Ward
						},
					}),
					--
					q(43390, {	-- Forgotten Shadows
						["sourceQuests"] = { 43381 },	-- Champion: Mariella Ward
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["coord"] = { 50.9, 46.8, 702 },
					}),
					q(43391, {	-- Secrets of the Void
						["sourceQuests"] = { 43390 },	-- Forgotten Shadows
						["provider"] = { "n", 111041 },	-- Micah Belford
						["coord"] = { 24.2, 37.8, DUSKWOOD },
					}),
					q(43392, {	-- Into the Void
						["sourceQuest"] = 43391,	-- Secrets of the Void
						["provider"] = { "n", 111041 },	-- Micah Belford
						["coord"] = { 24.4, 37.8, DUSKWOOD },
					}),
					q(43382, {	-- Champion: Natalie Seline
						["sourceQuest"] = 43392,	-- Into the Void
						["provider"] = { "n", 110684 },	-- Natalie Seline
						["coord"] = { 24.2, 37.8, DUSKWOOD },
						["g"] = {
							follower(874),	-- Natalie Seline
						},
					}),
					q(43393, {	-- Rising Shadows
						["sourceQuest"] = 43392,	-- Into the Void
						["provider"] = { "n", 110684 },	-- Natalie Seline
						["coord"] = { 24.2, 37.8, DUSKWOOD },
					}),
					q(43394, {	-- Crossing Legion Lines
						["sourceQuests"] = { 43393 },	-- Rising Shadows
						["provider"] = { "n", 111044 },	-- Lord Maxwell Tyrosus
						["maps"] = { 748 },
					}),
					q(43396, {	-- The Mind of the Enemy
						["sourceQuests"] = { 43394 },	-- Crossing Legion Lines
						["provider"] = { "n", 110969 },	-- Aponi Brightmane
						["coord"] = { 48.9, 63.6, 748 },
					}),
					q(43395, {	-- Allies of the Light
						["sourceQuests"] = { 43394 },	-- Crossing Legion Lines
						["provider"] = { "n", 110969 },	-- Aponi Brightmane
						["coord"] = { 48.9, 63.6, 748 },
					}),
					q(43397, {	-- United As One
						["sourceQuests"] = {
							43395,	-- Allies of the Light
							43396,	-- The Mind of the Enemy
						},
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["coord"] = { 51.1, 48.5, 702 },
					}),
					q(43797, {	-- Aiding the Conclave
						["sourceQuests"] = { 43397 },	-- United As One
						["provider"] = { "n", 111616 },	-- Lady Liadrin
						["coord"] = { 50.2, 74.1, LIGHTS_HOPE_CHAPEL },
					}),
					q(43832, {	-- Elixirs of Aid
						["sourceQuests"] = { 43797 },	-- Aiding the Conclave
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["coord"] = { 50.9, 46.8, 702 },
					}),
					q(43923, {	-- Starlight Rose
						["repeatable"] = true,
						["sourceQuests"] = { 43832 },	-- Elixirs of Aid
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["coord"] = { 50.9, 46.8, 702 },
					}),
					q(43925, {	-- Runescale Koi
						["repeatable"] = true,
						["sourceQuests"] = { 43832 },	-- Elixirs of Aid
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["coord"] = { 50.9, 46.8, 702 },
					}),
					q(43924, {	-- Leyblood
						["repeatable"] = true,
						["sourceQuests"] = { 43832 },	-- Elixirs of Aid
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["coord"] = { 50.9, 46.8, 702 },
					}),
					q(43399, {	-- Fortifying the Temple
						["sourceQuests"] = { 43797 },	-- Aiding the Conclave
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["coord"] = { 50.9, 46.8, 702 },
					}),
					q(43400, {	-- Lumenstone
						["sourceQuests"] = { 43797 },	-- Aiding the Conclave
						["provider"] = { "n", 109776 },	-- Moira Thaurissan
						["coord"] = { 51.5, 45.9, 702 },
					}),
					q(43401, {	-- A Light in the Darkness
						["sourceQuests"] = {
							43832,	-- Elixirs of Aid
							43399,	-- Fortifying the Temple
							43400,	-- Lumenstone
						},
						["provider"] = { "n", 110564 },	-- Alonsus Faol <Bishop of Secrets>
						["coord"] = { 51.0, 48.4, 702 },
					}),
					q(43398, {	-- Champion: Alonsus Faol
						["sourceQuests"] = { 43401 },	-- A Light in the Darkness
						["provider"] = { "n", 110564 },	-- Alonsus Faol <Bishop of Secrets>
						["coord"] = { 51.0, 48.4, 702 },
						["g"] = {
							follower(875),	-- Alonsus Faol
						},
					}),
					q(43402, {	-- High Priest of Netherlight
						["sourceQuests"] = { 43398 },	-- Champion: Alonsus Faol
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["coord"] = { 51.0, 48.4, 702 },
						["g"] = {
							i(139759),	-- Robes of the High Priest
							title(339),	-- High Priest <Name>
						},
					}),
					--
					q(43420, {	-- A Hero's Weapon
						["sourceQuests"] = { 43402 },	-- High Priest of Netherlight
						["provider"] = { "n", 110498 },	-- Alonsus Faol
						["coord"] = { 48.5, 20.1, 702 },
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
						--["sourceQuests"] = { 47137 },
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["coord"] = { 51.0, 48.4, 702 },
					}),
					q(45344, {	-- Sampling the Source
						["sourceQuests"] = { 45343 },	-- A Curious Contagion
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["coord"] = { 30.0, 55.9, HIGHMOUNTAIN },
					}),
					q(45346, {	-- Shambling Specimens
						["sourceQuests"] = { 45343 },	-- A Curious Contagion
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["coord"] = { 30.0, 55.9, HIGHMOUNTAIN },
					}),
					q(45345, {	-- Mischievous Sprites
						["sourceQuests"] = { 45343 },	-- A Curious Contagion
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["coord"] = { 30.0, 55.9, HIGHMOUNTAIN },
					}),
					q(45347, {	-- Crafting a Cure
						["sourceQuests"] = {
							45344,	-- Sampling the Source
							45345,	-- Mischievous Spirites
							45346,	-- Shambling Specimens
						},
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["coord"] = { 30.0, 55.9, HIGHMOUNTAIN },
					}),
					q(45348, {	-- Safekeeping
						["sourceQuests"] = { 45347 },	-- Crafting a Cure
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["coord"] = { 30.0, 55.9, HIGHMOUNTAIN },
					}),
					q(45349, {	-- To the Broken Shore
						["sourceQuests"] = { 45348 },	-- Safekeeping
						["coord"] = { 51.1, 48.5, 702 },
						["provider"] = { "n", 110564 },	-- Alonsus Faol
					}),
					q(45342, {	-- Administering Aid
						["sourceQuests"] = { 45349 },	-- To the Broken Shore
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["coord"] = { 33.6, 49.7, BROKEN_SHORE },
					}),
					q(45350, {	-- Countering the Contagion
						["sourceQuests"] = { 45349 },	-- To the Broken Shore
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["coord"] = { 33.6, 49.7, BROKEN_SHORE },
					}),
					q(46145, {	-- Sterile Surroundings
						["sourceQuests"] = {
							45342,	-- Administering Aid
							45350,	-- Countering the Contagion
						},
						["provider"] = { "n", 118528 },	-- Aelthalyste
						["coord"] = { 33.6, 49.7, BROKEN_SHORE },
					}),
					q(46034, {	-- Champion: Aelthalyste
						["sourceQuests"] = { 46145 },	-- Sterile Surroundings
						["provider"] = { "n", 120842 },	-- Aelthalyste
						["coord"] = { 24.8, 40.1, 702 },
						["g"] = {
							follower(1002),	-- Aelthalyste
						},
					}),
					q(45788, {	-- The Speaker Awaits
						["sourceQuests"] = { 46034 },	-- Champion: Aelthalyste
						["provider"] = { "n", 118536 },	-- Grand Priest
						["coord"] = { 44.4, 63.7, BROKEN_SHORE },
					}),
					q(45789, {	-- The Sunken Vault
						["sourceQuests"] = { 45788 },	-- The Speaker Awaits
						["provider"] = { "n", 102709 },	-- Betild Deepanvil <Master Artificer>
						["coord"] = { 50.4, 21.8, NETHERLIGHT_TEMPLE },
						["maps"] = { 839 },	-- THe Maelstrom
						["g"] = {
							mount(229377),	-- High Priest's Lightsworn Seeker (MOUNT!)
						},
					}),
					q(43375, {	-- An Ample Supply
						["sourceQuests"] = { 43374 },	-- Murloc Mind Control (must pick up for this quest to be available)
						["coord"] = { 58.5, 37.2, AZSUNA },
						["provider"] = { "n", 110686 },	-- Zabra Hexx
					}),
					q(43383, {	-- Awakening the Light
						["sourceQuests"] = { 43377 },	-- Halls of Valor: The Light Within
						["provider"] = { "n", 102587 },	-- Saa'ra
						["coord"] = { 75.7, 40.7, 702 },
					}),
					q(43380, {	-- Champion: Sol
						["sourceQuests"] = { 43383 },	-- Awakening the Light
						["coord"] = { 73.9, 40.8, 702 },
						["provider"] = { "n", 110457 },	-- Sol
						["g"] = {
							follower(872),	-- Sol
						},
					}),
					q(42137, {	-- Champion: Yalia Sagewhisper
						["sourceQuests"] = { 43376 },	-- Problem Salver
						["coord"] = { 47.1, 43.9, AZSUNA },
						["provider"] = { "n", 110687 },	-- Yalia Sagewhisper
						["g"] = {
							follower(871),	-- Yalia Sagewhisper
						},
					}),
					q(42138, {	-- Champion: Zabra Hexx
						["sourceQuests"] = { 43376 },	-- Problem Salver
						["coord"] = { 47.1, 43.9, AZSUNA },
						["provider"] = { "n", 110686 },	-- Zabra Hexx
						["g"] = {
							follower(870),	-- Zabra Hexx
						},
					}),
					q(43384, {	-- Demonic Runes
						["sourceQuests"] = { 43379 },	-- Velen's Vision
						["coord"] = { 48.9, 48.7, 702 },
						["provider"] = { "n", 110571 },	-- Delas Moonfang
					}),
					q(43378, {	-- Eye of Azshara: Looking Through the Lens
						["sourceQuests"] = {
							42137,	-- Champion: Yalia Sagewhisper
							42138,	-- Champion: Zabra Hexx
						},
						["provider"] = { "n", 110687 },	-- Yalia Sagewhisper
						["coord"] = { 47.1, 43.9, AZSUNA },
					}),
					q(43377, {	-- Halls of Valor: The Light Within
						["sourceQuests"] = { 43379 },	-- Velen's Vision
						["provider"] = { "n", 110564 },	-- Alonsus Faol
						["coord"] = { 50.9, 46.8, 702 },
					}),
					q(43385, {	-- Infiltrating Our Enemies
						["sourceQuests"] = { 43380 },	-- Champion: Sol
						["coord"] = { 51.5, 47.7, 702 },
						["provider"] = { "n", 110564 },	-- Alonsus Faol
					}),
					q(43374, {	-- Murloc Mind Control
						["sourceQuests"] = { 43372 },	-- The Best and Brightest
						["coord"] = { 58.5, 37.2, AZSUNA },
						["provider"] = { "n", 110686 },	-- Zabra Hexx
					}),
					q(43376, {	-- Problem Salver
						["sourceQuests"] = {
							43375,	-- An Ample Supply
							43374,	-- Murloc Mind Control
						},
						["coord"] = { 58.5, 37.2, AZSUNA },
						["provider"] = { "n", 112487 },	-- Yalia Sagewhisper
					}),
					q(43851, {	-- Recruiting More Troops
						["sourceQuests"] = { 43379 },	-- Velen's Vision
						["provider"] = { "n", 109776 },	-- Moira Thaurissan
						["coord"] = { 50.9, 46.8, 702 },
					}),
					q(43371, {	-- Relieving the Front Lines
						["sourceQuests"] = { 43277 },	-- Tech It Up A Notch
						["coord"] = { 51.1, 48.5, 702 },
						["provider"] = { "n", 110564 },	-- Alonsus Faol
					}),
					q(43277, {	-- Tech It Up A Notch
						["sourceQuests"] = { 43276 },	-- Troops in the Field
						["coord"] = { 51.1, 48.5, 702 },
						["provider"] = { "n", 110564 },	-- Alonsus Faol
					}),
					q(43373, {	-- The Best and Brightest
						["sourceQuests"] = { 43372 },	-- Whispers in the Void
						["coord"] = { 48.2, 48.2, 702 },
						["provider"] = { "n", 110557 },	-- Prophet Velen
					}),
					q(43379, {	-- Velen's Vision
						["sourceQuests"] = { 43378 },	-- Eye of Azshara: Through the Lens
						["provider"] = { "n", 110557 },	-- Prophet Velen
						["coord"] = { 48.3, 47.8, 702 },
					}),
					q(43372, {	-- Whispers in the Void
						["sourceQuests"] = { 43371 },	-- Relieving the Front Lines
						["coord"] = { 51.2, 48.7, 702 },
						["provider"] = { "n", 110564 },	-- Alonsus Faol
					}),
					-- Misc
					q(43884, {	-- Hitting the Books
						["u"] = REMOVED_FROM_GAME,
					}),
					q(46788, {	-- Further Advancement
						["provider"] = { "n", 109776 },	-- Moira Thaurissan <Queen of the Dark Iron>
						--["sourceQuests"] = { 46034, {	-- Champion: Aelthalyste },	-- ??
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
						["coord"] = { 61.6, 45.6, 702 },
						["description"] = "Only available if you have the |cFFFFD700Tithe|r order hall upgrade.",
					}),
					q(44229, {	-- Champion Armaments
						-- TBD: fill in other fields
						["description"] = "Only available if you have the |cFFFFD700Armaments of Light|r order hall upgrade.",
					}),
					q(44230, {	-- The Fates Bless Us
						["provider"] = { "n", 110819 },	-- Truth
						["coord"] = { 58.6, 29.9, 702 },
						["description"] = "Only available if you have the |cFFFFD700Blessed Seals|r order hall upgrade.",
					}),
				}),
				n(VENDORS, {
					n(112401, {	-- Meridelle Lightspark <Logistics>
						["coord"] = { 39.0, 24.6, 702 },
						["sym"] = {{"select","itemID",143727}},	-- Champion's Salute (TOY!)
						["g"] = {
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
root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.LEGION, {
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
	}),
});