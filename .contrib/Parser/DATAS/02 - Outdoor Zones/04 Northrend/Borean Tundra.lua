---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(NORTHREND, applyclassicphase(WRATH_PHASE_ONE, {
		m(BOREAN_TUNDRA, {
			["lore"] = "Borean Tundra is one of the two initial zones players are expected to quest in when first reaching Northrend. It is located in western Northrend with the frigid island of Coldarra off the coast. Borean Tundra is mostly ice, punctuated by grasslands. It is occupied by many factions: the Alliance (based in Valiance Keep), the Horde (based in Warsong Hold), D.E.H.T.A protesting the slaughter of animals, the peaceful Tuskarr driven away from their coastal lands, nerubians and Prince Valanar to the North, the Kirin Tor assisting the dragonflights in Coldarra, and the mysterious taunka, an ancient branch of the Tauren.",
			["icon"] = 236722,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(1264),	-- Explore Borean Tundra
					ach(33, {	-- Nothing Boring About Borean (A)
						["races"] = ALLIANCE_ONLY,
						-- #if AFTER 7.3.5
						["_doautomation"] = true,
						-- #else
						["sourceQuests"] = {
							11794,	-- The Hunt is On
							11965,	-- Call to Arms!
							12035,	-- Repurposed Technology
							11913,	-- Take No Chances
							11892,	-- The Assassination of Harold Lane
							11931,	-- Cracking the Code
							11914,	-- Keep the Secret Safe
							12728,	-- Monitoring the Rift: Winterfin Cavern	-- verify this
							11900,	-- Reading the Meters	-- verify this
							11910,	-- Secrets of the Ancients	-- verify this
							11969,	-- Springing the Trap
							11733,	-- Traversing the Rift
							11626,	-- The Emissary
							11968,	-- The Tides Turn
							11570,	-- Escape from the Winterfin Caverns
							11569,	-- Keymaster Urmgrgl
							11564,	-- Succulent Orca Stew
							11566,	-- Surrender... Not!
							11561,	-- Them!
							12088,	-- Thassarian, the Death Knight
							12019,	-- Last Rites
						},
						-- #endif
					}),
					ach(1358, {	-- Nothing Boring About Borean (H)
						["races"] = HORDE_ONLY,
						-- #if AFTER 7.3.5
						["_doautomation"] = true,
						-- #else
						["sourceQuests"] = {
							11638,	-- Return My Remains
							11652,	-- The Plains of Nasam
							11705,	-- Foolish Endeavors
							11892,	-- The Assassination of Harold Lane
							11931,	-- Cracking the Code
							11914,	-- Keep the Secret Safe
							12728,	-- Monitoring the Rift: Winterfin Cavern	-- verify this
							11900,	-- Reading the Meters	-- verify this
							11910,	-- Secrets of the Ancients	-- verify this
							11969,	-- Springing the Trap
							11733,	-- Traversing the Rift
							11626,	-- The Emissary
							11968,	-- The Tides Turn
							11570,	-- Escape from the Winterfin Caverns
							11569,	-- Keymaster Urmgrgl
							11564,	-- Succulent Orca Stew
							11566,	-- Surrender... Not!
							11561,	-- Them!
							11916,	-- Hellscream's Champion
							11906,	-- Cleaning Up the Pools
							11909,	-- Defeat the Gearmaster
							-- 11683,	-- Fallen Necropolis	-- needs verification
							11689,	-- Return with the Bad News
							11706,	-- The Collapse
							11907,	-- The Sub-Chieftains
							11930,	-- Across Transborea
						},
						-- #endif
					}),
					achWithRep(1012, FACTION_ALLIANCE_VANGUARD, {	-- The Winds of the North (A)
						["races"] = ALLIANCE_ONLY,
					}),
					achWithRep(1011, FACTION_HORDE_EXPEDITION, {	-- The Winds of the North (H)
						["races"] = HORDE_ONLY,
					}),
				}),
				battlepets({
					["sym"] = {{"select","speciesID",
						388,	-- Shore Crab (PET!)
					}},
					["groups"] = {
						pet(641),	-- Arctic Hare (PET!)
						pet(639, {	-- Borean Marmot (PET!)
							["description"] = "Found all over the yellow/brown tundra between Warsong Hold and Sholazar Basin.",
							["coord"] = { 57.0, 35.0, BOREAN_TUNDRA },
						}),
						pet(1165, {	-- Nexus Whelpling (PET!)
							["description"] = "Found in Coldarra.",
							["coord"] = { 30.0, 30.0, BOREAN_TUNDRA },
							["timeline"] = { ADDED_5_1_0 },
						}),
						pet(530, {	-- Oily Slimeling (PET!)
							["description"] = "Found in the oil pools from Fizzcrank Airstrip to the Geyser Fields.",
							["coord"] = { 61.0, 31.0, BOREAN_TUNDRA },
						}),
						pet(536, {	-- Tundra Penguin (PET!)
							["description"] = "There is only a few spawns of this pet, which can be found by the shore in the westernmost part of Dragonblight. However, it is a common secondary pet in both Borean Tundra and Dragonblight!",
							["coords"] = {
								{ 9.0, 60.0, DRAGONBLIGHT },	-- Coldwind Pass
								{ 18.7, 63.3, DRAGONBLIGHT },	-- Moonrest Gardens
							},
						}),
					},
				}),
				explorationHeader({
					visit_exploration(4023,{coord={47.2,33.9,BOREAN_TUNDRA}}),	-- Amber Ledge
					visit_exploration(4105,{coord={42.3,36.4,BOREAN_TUNDRA}}),	-- Beryl Point
					visit_exploration(4134,{coord={47.2,12.7,BOREAN_TUNDRA}}),	-- Blistering Pool
					exploration(4021),	-- Bloodspore Plains
					exploration(4122),	-- Bor'gorok Outpost
					exploration(4133),	-- Charred Rise
					exploration(4027),	-- Coast of Echoes
					exploration(4024),	-- Coldarra
					exploration(4039),	-- Coldrock Quarry
					visit_exploration(4149,{coord={57.5,43.8,BOREAN_TUNDRA}}),	-- D.E.H.T.A. Encampment
					exploration(4114),	-- Death's Stand
					visit_exploration(4104,{coord={33.8,68.4,BOREAN_TUNDRA}}),	-- Echo Cove
					exploration(4111),	-- Farshire
					visit_exploration(4112,{coord={59.2,64.3,BOREAN_TUNDRA}}),	-- Farshire Lighthouse
					exploration(4108),	-- Fizzcrank Airstrip
					visit_exploration(4119,{coord={66.9,18.9,BOREAN_TUNDRA}}),	-- Festering Pools
					visit_exploration(10160,{coord={64.8,22.9,BOREAN_TUNDRA}}),	-- Fizzcrank Pumping Station
					exploration(4138),	-- Frozen Reach
					visit_exploration(4022,{coord={46.8,59.4,BOREAN_TUNDRA}}),	-- Gammoth
					exploration(4106),	-- Garrosh's Landing
					visit_exploration(4098,{coord={40.0,10.2,BOREAN_TUNDRA}}),	-- Glimmer Bay
					exploration(4041),	-- Kaskala
					visit_exploration(4150,{coord={53.6,24.0,BOREAN_TUNDRA}}),	-- Kaw's Roost
					exploration(4109),	-- Lake Kum'uya
					exploration(4123),	-- Magmoth
					exploration(4020),	-- Mightstone Quarry
					visit_exploration(4103,{coord={40.1,76.4,BOREAN_TUNDRA}}),	-- Nasam's Talon
					visit_exploration(4128,{coord={86.9,31.0,BOREAN_TUNDRA}}),	-- Naxxanar
					visit_exploration(4040,{coord={67.0,51.6,BOREAN_TUNDRA}}),	-- Njord's Breath Bay
					visit_exploration(4146,{coord={65.2,17.7,BOREAN_TUNDRA}}),	-- North Point Station
					exploration(4031),	-- Pal'ea
					visit_exploration(4130,{coord={36.4,64.1,BOREAN_TUNDRA}}),	-- Plains of Nasam
					exploration(4029),	-- Riplash Ruins
					exploration(4028),	-- Riplash Strand
					visit_exploration(4132,{coord={41.3,10.1,BOREAN_TUNDRA}}),	-- Ruins of Eldra'nath
					exploration(4101),	-- Sands of Nasam
					visit_exploration(4116,{coord={60.9,21.4,BOREAN_TUNDRA}}),	-- Scalding Pools
					exploration(4269),	-- Shrine of Scales
					visit_exploration(4148,{coord={65.3,28.7,BOREAN_TUNDRA}}),	-- South Point Station
					visit_exploration(4135,{coord={88.8,22.7,BOREAN_TUNDRA}}),	-- Spire of Blood
					visit_exploration(4136,{coord={84.0,21.6,BOREAN_TUNDRA}}),	-- Spire of Decay
					visit_exploration(4137,{coord={88.6,28.9,BOREAN_TUNDRA}}),	-- Spire of Pain
					visit_exploration(10162,{coord={74.2,31.7,BOREAN_TUNDRA}}),	-- Steam Springs
					exploration(4127),	-- Steeljaw's Caravan
					exploration(4118),	-- Talramas
					exploration(4037),	-- Taunka'le Village
					exploration(4125),	-- Temple City of En'kilah
					visit_exploration(4115,{coord={60.3,60.1,BOREAN_TUNDRA}}),	-- The Abandoned Reach
					visit_exploration(4034,{coord={72.6,13.3,BOREAN_TUNDRA}}),	-- The Borean Wall
					exploration(4124),	-- The Dens of Dying
					exploration(4043),	-- The Flood Plains
					exploration(4035),	-- The Geyser Fields
					exploration(4120),	-- The Nexus
					visit_exploration(4265,{coord={27.6,26.5,BOREAN_TUNDRA}}),	-- The Nexus
					exploration(4026),	-- The Transitus Stair
					exploration(4126),	-- The Wailing Ziggurat
					visit_exploration(4025,{coord={43.4,16.8,BOREAN_TUNDRA}}),	-- The Westrift
					visit_exploration(4141,{coord={36.4,51.4,BOREAN_TUNDRA}}),	-- Torp's Farm
					exploration(4042),	-- Transborea
					exploration(4121),	-- Transitus Shield
					exploration(4113),	-- Unu'pe
					exploration(4032),	-- Valiance Keep
					exploration(4144),	-- Warsong Farms / Warsong Farms Outpost
					exploration(4142),	-- Warsong Granary
					exploration(4129),	-- Warsong Hold
					visit_exploration(4107,{coord={27.2,54.2,BOREAN_TUNDRA}}),	-- Warsong Jetty
					visit_exploration(4145,{coord={60.2,20.1,BOREAN_TUNDRA}}),	-- West Point Station
					visit_exploration(4097,{coord={40.0,19.9,BOREAN_TUNDRA}}),	-- Winterfin Caverns
					visit_exploration(4099,{coord={43.5,14.7,BOREAN_TUNDRA}}),	-- Winterfin Retreat
					visit_exploration(4033,{coord={38.7,14.9,BOREAN_TUNDRA}}),	-- Winterfin Village
				}),
				n(FACTIONS, {
					faction(FACTION_ALLIANCE_VANGUARD, {	-- Alliance Vanguard
						["races"] = ALLIANCE_ONLY,
					}),
					faction(FACTION_HORDE_EXPEDITION, {	-- Horde Expedition
						["maps"] = { DRAGONBLIGHT, GRIZZLY_HILLS, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					faction(FACTION_THE_TAUNKA, {	-- The Taunka
						["maps"] = { DRAGONBLIGHT, GRIZZLY_HILLS, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					faction(FACTION_WARSONG_OFFENSIVE, {	-- Warsong Offensive
						["maps"] = { DRAGONBLIGHT, GRIZZLY_HILLS, ICECROWN, THE_STORM_PEAKS },
						["races"] = HORDE_ONLY,
					}),
					faction(FACTION_VALIANCE_EXPEDITION, {	-- Valiance Expedition
						["maps"] = { HOWLING_FJORD, GRIZZLY_HILLS, ICECROWN },
						["races"] = ALLIANCE_ONLY,
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(289, {	-- Amber Ledge, Borean Tundra
						["cr"] = 24795,	-- Surristrasz
						["coord"] = { 45.2, 34.4, BOREAN_TUNDRA },
					}),
					fp(259, {	-- Bor'gorok Outpost, Borean Tundra
						["cr"] = 26848,	-- Kimbiza <Wind Rider Master>
						["coord"] = { 49.6, 11.0, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					fp(246, {	-- Fizzcrank Airstrip, Borean Tundra
						["cr"] = 26602,	-- Kara Thricestar <Air Traffic Controller>
						["coord"] = { 56.6, 20.0, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(258, {	-- Taunka'le Village, Borean Tundra
						["cr"] = 26847,	-- Omu Spiritbreeze <Wind Rider Master>
						["coord"] = { 77.6, 37.8, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					fp(226, {	-- Transitus Shield, Coldarra
						["cr"] = 27046,	-- Warmage Adami <Flight Master>
						["coord"] = { 33.0, 34.4, BOREAN_TUNDRA },
					}),
					fp(296, {	-- Unu'pe, Borean Tundra
						["cr"] = 28195,	-- Bilko Driftspark <Flight Master>
						["coord"] = { 78.4, 51.4, BOREAN_TUNDRA },
					}),
					fp(245, {	-- Valiance Keep, Borean Tundra
						["cr"] = 26879,	-- Tomas Riverwell <Gryphon Master>
						["coord"] = { 58.8, 68.2, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(257, {	-- Warsong Hold, Borean Tundra
						["cr"] = 25288,	-- Turida Coldwind <Wind Rider Master>
						["coord"] = { 40.4, 51.4, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
				}),
				n(QUESTS, {
					q(11718, {	-- A Bot in Mammoth's Clothing
						["sourceQuest"] = 11715,	-- Fueling the Project
						["qg"] = 25780,	-- Abner Fizzletorque
						["coord"] = { 57.0, 20.1, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Thick Mammoth Hide
								["provider"] = { "i", 34977 },	-- Thick Mammoth Hide
								["crs"] = {
									24613,	-- Mammoth Calf
									24614,	-- Wooly Mammoth
									25743,	-- Wooly Mammoth Bull
								},
							}),
						},
					}),
					q(11641, {	-- A Courageous Strike
						["sourceQuest"] = 11633,	-- Blending In
						["qg"] = 24706,	-- Durm Icehide
						["coord"] = { 75.9, 37.1, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 En'kilah Ghoul slain
								["provider"] = { "n", 25393 },	-- En'kilah Ghoul
							}),
							objective(2, {	-- 0/5 En'kilah Necromancer slain
								["provider"] = { "n", 25378 },	-- En'kilah Necromancer
							}),
						},
					}),
					q(11604, {	-- A Deserter
						["sourceQuest"] = 11603,	-- In Wine, Truth
						["qg"] = 25302,	-- Old Man Colburn
						["coord"] = { 58.5, 68.0, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12141, {	-- A Diplomatic Mission
						["sourceQuest"] = 11791,	-- Notify Arlos
						["qg"] = 25301,	-- Counselor Talbot
						["coord"] = { 56.7, 72.6, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11620, {	-- A Father's Words
						["sourceQuest"] = 11619,	-- Gamel the Cruel
						["qg"] = 25435,	-- Karuk
						["coord"] = { 47.1, 75.4, BOREAN_TUNDRA },
					}),
					q(11726, {	-- A Little Bit of Spice
						["sourceQuest"] = 11725,	-- Finding Pilot Tailspin
						["qg"] = 25807,	-- Iggy "Tailspin" Cogtoggle
						["coord"] = { 61.6, 35.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/4 Gorloc Spice Pouch
								["provider"] = { "i", 34983 },	-- Gorloc Spice Pouch
								["crs"] = {
									25685,	-- Gorloc Waddler
									25686,	-- Gorloc Gibberer
									25687,	-- Gorloc Steam Belcher
									25699,	-- Gorloc Mud Splasher
									25700,	-- Gorloc Hunter
									25701,	-- Gorloc Dredger
								},
							}),
						},
					}),
					q(11864, {	-- A Mission Statement
						["qg"] = 25809,	-- Archdruid Lathorius
						["coord"] = { 57.1, 44.3, BOREAN_TUNDRA },
					}),
					q(11675, {	-- A Proper Death
						["sourceQuest"] = 11674,	-- Sage Highmesa is Missing
						["qg"] = 25604,	-- Sage Highmesa
						["coord"] = { 74.6, 23.6, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Plagued Magnataur slain
								["providers"] = {
									{ "n", 25615},	-- Plagued Magnataur
									{ "n", 24954},	-- Aged Magnataur
								},
							}),
						},
					}),
					q(11671, {	-- A Race Against Time
						["sourceQuest"] = 11663,	-- Sharing Intelligence
						["qg"] = 25262,	-- Librarian Donathan
						["coord"] = { 45.2, 33.3, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Salrand's Broken Key
								["providers"] = {
									{ "i", 34909 },	-- Salrand's Broken Key
									{ "o", 187875 },	-- Salrand's Lockbox
								},
							}),
						},
					}),
					q(11789, {	-- A Soldier in Need
						["sourceQuest"] = 11797,	-- The Siege
						["qg"] = 25825,	-- Medic Hawthorn
						["coord"] = { 55.0, 68.9, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Hawthorn's Anti-Venom
								["providers"] = {
									{ "i", 35119 },	-- Hawthorn's Anti-Venom
									{ "o", 187980 },	-- First Aid Supplies
								},
							}),
						},
					}),
					q(11719, {	-- A Suitable Test Subject
						["sourceQuest"] = 11717,	-- Pollen from the Source
						["qg"] = 25381,	-- Bloodmage Laurith
						["coord"] = { 52.0, 52.5, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11727, {	-- A Time for Heroes
						["sourceQuest"] = 11672,	-- Enlistment Day
						["qg"] = 25250,	-- General Arlos
						["coord"] = { 56.6, 72.6, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11623, {	-- A Visit to the Curator
						["sourceQuest"] = 11617,	-- Hampering Their Escape
						["qg"] = 25292,	-- Etaruk
						["coord"] = { 54.2, 36.0, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Curator Insivius slain
								["provider"] = { "n", 25448 },	-- Curator Insivius
							}),
							i(37378),	-- Sealskin Bindings
							i(37436),	-- Seaspeaker Gloves
							i(37521),	-- Icechill Buckler
							i(37515),	-- Lost Crusader Waistguard
						},
					}),
					q(11590, {	-- Abduction
						["sourceQuest"] = 11587,	-- Prison Break
						["qg"] = 25262,	-- Librarian Donathan
						["coord"] = { 45.2, 33.3, BOREAN_TUNDRA },
					}),
					q(13413, {	-- Aces High!
						["sourceQuest"] = 13412,	-- Corastrasza
						["qg"] = 32548,	-- Corastrasza
						["coord"] = { 29.4, 24.8, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/5 Scalesworn Elites Killed
								["provider"] = { "n", 32534 },	-- Scalesworn Elite
							}),
							i(44354),	-- Assault Hauberk
							i(44357),	-- Besieging Breastplate
							i(44355),	-- Incursion Vestments
							i(44356),	-- Vest of the Assailant
						},
					}),
					q(13414, {	-- Aces High!
						["sourceQuest"] = 13413,	-- Aces High!
						["qg"] = 32548,	-- Corastrasza
						["coord"] = { 29.4, 24.8, BOREAN_TUNDRA },
						["maxReputation"] = { FACTION_THE_WYRMREST_ACCORD, EXALTED },	-- The Wyrmrest Accord, Exalted.
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/5 Scalesworn Elites Slain
								["provider"] = { "n", 32534 },	-- Scalesworn Elite
							}),
						},
					}),
					q(11930, {	-- Across Transborea
						["sourceQuest"] = 11929,	-- The Fall of Taunka'le Village
						["qg"] = 26158,	-- Mother Tauranook
						["coord"] = { 78.3, 38.0, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11701, {	-- Back to the Airstrip
						["sourceQuest"] = 11700,	-- Let Bixie Know
						["qg"] = 25705,	-- Bixie Wrenchshanker
						["coord"] = { 73.4, 18.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(37519),	-- Amberplate Headguard
							i(38214),	-- Hypergizmatic Energy Booster
							i(37354),	-- Reinforced Caribou-Hide Boots
							i(37529),	-- Shivering Healer's Ring
							i(37440),	-- Spiked Magmoth Chestpiece
						},
					}),
					q(11951, {	-- Bait and Switch
						["sourceQuest"] = 11946,	-- Keristrasza
						["qg"] = 26206,	-- Keristrasza
						["groups"] = {
							objective(1, {	-- 0/10 Crystallized Mana Shard
								["providers"] = {
									{ "i", 35685 },	-- Crystallized Mana Shard
									{ "o", 188140 },	-- Crystallized Mana
								},
							}),
						},
					}),
					q(11918, {	-- Basic Training
						["qg"] = 26117,	-- Raelorasz
						["coord"] = { 33.3, 34.5, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/10 Coldarra Spellweaver slain
								["provider"] = { "n", 25722 },	-- Coldarra Spellweaver
							}),
						},
					}),
					q(11633, {	-- Blending In
						["sourceQuest"] = 11630,	-- The Bad Earth
						["qg"] = 24703,	-- Chieftain Wintergale
						["coord"] = { 75.8, 37.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(34782),	-- Imbued Scourge Shroud
						},
					}),
					q(11898, {	-- Breaking Through
						["sourceQuest"] = 11640,	-- Words of Power
						["qg"] = 24703,	-- Chieftain Wintergale
						["coord"] = { 75.8, 37.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Prince Valanar slain
								["provider"] = { "n", 25601 },	-- Prince Valanar
							}),
							objective(2, {	-- 0/1 Luthion the Vile slain
								["provider"] = { "n", 27860 },	-- Luthion the Vile
							}),
							objective(3, {	-- 0/1 Vanthryn the Merciless slain
								["provider"] = { "n", 27859 },	-- Vanthryn the Merciless
							}),
							i(38232),	-- Chain of Vigilant Thought
							i(38231),	-- Choker of Forceful Redemption
							i(38230),	-- Clutch of Undying Will
						},
					}),
					q(11627, {	-- Boiling Point
						["sourceQuest"] = 11624,	-- The Sky Will Know
						["qg"] = 25376,	-- Imperean
						["coord"] = { 46.5, 9.3, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11690, {	-- Bring 'Em Back Alive
						["sourceQuest"] = 11688,	-- Damned Filthy Swine
						["qg"] = 25607,	-- Farmer Torp
						["coord"] = { 37.9, 52.3, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(36885),	-- Marshwalker Chestpiece
							i(36887),	-- Mightstone Pauldrons
							i(36884),	-- Transborean Cover
							i(36886),	-- Westrift Leggings
						},
					}),
					q(11656, {	-- Burn in Effigy
						["sourceQuest"] = 11655,	-- Into the Mist
						["qg"] = 25476,	-- Waltor of Pal'ea
						["coord"] = { 32.3, 54.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37483),	-- Seabone Heaume
							i(37207),	-- Seafarer Boots
							i(37418),	-- Seaspeaker Legguards
							i(37556),	-- Talisman of the Tundra
						},
					}),
					q(11608, {	-- Bury Those Cockroaches!
						["sourceQuest"] = 11606,	-- Patience is a Virtue that We Don't Need
						["qg"] = 25327,	-- Quartermaster Holgoth
						["coord"] = { 43.3, 55.3, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(36888),	-- Marshwalker Legguards
							i(36938),	-- Mightstone Breastplate
							i(36937),	-- Tundrastrider Coif
							i(37555),	-- Warsong's Wrath
						},
					}),
					q(11938, {	-- Buying Some Time
						["sourceQuest"] = 11956,	-- Finding the Phylactery
						["qg"] = 26170,	-- Thassarian
						["coord"] = { 84.7, 41.6, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/20 En'kilah Casualty
								["providers"] = {
									{ "n", 26195},	-- En'kilah Unit
									{ "n", 25378},	-- En'kilah Necromancer
									{ "n", 25383},	-- En'kilah Abomination
									{ "n", 25386},	-- En'kilah Crypt Fiend
									{ "n", 25387},	-- En'kilah Gargoyle
									{ "n", 25393},	-- En'kilah Ghoul
									{ "n", 25609},	-- En'kilah Necrolord
								},
							}),
							i(38212),	-- Death Knight's Anguish
							i(37271),	-- Dusk Watcher's Belt
							i(37393),	-- Shadewrap Gloves
							i(37425),	-- Tundrastrider Boots
						},
					}),
					q(11965, {	-- Call to Arms!
						["sourceQuest"] = 11963,	-- Weapons for Farshire
						["qg"] = 26083,	-- Gerald Green
						["coord"] = { 58.2, 62.8, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Farshire Bell Rung
								["provider"] = { "o", 188163 },	-- Bell Rope
							}),
							i(38226),	-- Chain of the Tolling Bell
							i(38227),	-- Indomitable Choker of Light
							i(38228),	-- Pendant of Revolutionary Thought
						},
					}),
					q(11867, {	-- Can't Get Ear-nough...
						["sourceQuest"] = 11866,	-- Ears of Our Enemies
						["qg"] = 25809,	-- Archdruid Lathorius
						["coord"] = { 57.1, 44.3, BOREAN_TUNDRA },
						["repeatable"] = true,
					}),
					q(11692, {	-- Check in With Bixie
						["sourceQuest"] = 11710,	-- What's the Matter with the Transmatter?
						["qg"] = 25702,	-- Mordle Cogspinner
						["coord"] = { 57.5, 18.6, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11906, {	-- Cleaning Up the Pools
						["sourceQuest"] = 11895,	-- Master the Storm
						["qg"] = 26104,	-- Iron Eyes
						["coord"] = { 76.9, 37.6, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 Fizzcrank Spare Parts
								["providers"] = {
									{ "i", 34972 },	-- Fizzcrank Spare Parts
									{ "o", 187897 },	-- Fizzcrank Spare Parts
									{ "o", 187898 },	-- Fizzcrank Spare Parts
									{ "o", 187899 },	-- Fizzcrank Spare Parts
									{ "o", 187900 },	-- Fizzcrank Spare Parts
									{ "o", 187901 },	-- Fizzcrank Spare Parts
								},
							}),
							i(37478),	-- Amberplate Grips
							i(37275),	-- Mantle of Congealed Anger
							i(37351),	-- Reinforced Caribou-Hide Leggings
							i(37443),	-- Spiked Magmoth Helm
						},
					}),
					q(13265, {	-- Cloth Scavenging (A)
						["qg"] = 27001,	-- Darin Goodstitch
						["coord"] = { 57.4, 72.2, BOREAN_TUNDRA },
						["requireSkill"] = TAILORING,
						["races"] = ALLIANCE_ONLY,
						["lockCriteria"] = { 1,
							"questID", 13272,	-- Cloth Scavenging (N, Dalaran)
							"questID", 13268,	-- Cloth Scavenging (A, Howling Fjord)
							"questID", 13269,	-- Cloth Scavenging (H, Howling Fjord)
							-- "questID", 13265,	-- Cloth Scavenging (A, Borean Tundra)
							"questID", 13270,	-- Cloth Scavenging (H, Borean Tundra)
							"spellID", 59390,	-- Cloth Scavenging
							"spellID", 343634,	-- Shadowlands Cloth Scavenging
							"spellID", 392396,	-- Dragon Isles Cloth Scavenging
						},
					}),
					q(13270, {	-- Cloth Scavenging (H)
						["qg"] = 26969,	-- Raenah
						["coord"] = { 41.6, 53.4, BOREAN_TUNDRA },
						["requireSkill"] = TAILORING,
						["races"] = HORDE_ONLY,
						["lockCriteria"] = { 1,
							"questID", 13272,	-- Cloth Scavenging (N, Dalaran)
							"questID", 13268,	-- Cloth Scavenging (A, Howling Fjord)
							"questID", 13269,	-- Cloth Scavenging (H, Howling Fjord)
							"questID", 13265,	-- Cloth Scavenging (A, Borean Tundra)
							-- "questID", 13270,	-- Cloth Scavenging (H, Borean Tundra)
							"spellID", 59390,	-- Cloth Scavenging
							"spellID", 343634,	-- Shadowlands Cloth Scavenging
							"spellID", 392396,	-- Dragon Isles Cloth Scavenging
						},
					}),
					q(13412, {	-- Corastrasza
						["qg"] = 26110,	-- Librarian Serrah
						["coord"] = { 33.4, 34.3, BOREAN_TUNDRA },
					}),
					q(11711, {	-- Coward Delivery... Under 30 Minutes or it's Free
						["sourceQuest"] = 11709,	-- Nork Bloodfrenzy's Charge
						["qg"] = 25379,	-- Warden Nork Bloodfrenzy
						["coord"] = { 43.7, 54.4, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11932, {	-- Cowards and Fools
						["sourceQuest"] = 11604,	-- A Deserter
						["qg"] = 25395,	-- Private Brau
						["coord"] = { 56.6, 71.4, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11931, {	-- Cracking the Code
						["sourceQuest"] = 11919,	-- Drake Hunt
						["qg"] = 26117,	-- Raelorasz
						["coord"] = { 33.3, 34.5, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/3 Shimmering Rune
								["provider"] = { "i", 35629 },	-- Shimmering Rune
								["cr"] = 25719,	-- Coldarra Spellbinder
							}),
							objective(2, {	-- 0/1 Azure Codex
								["provider"] = { "i", 35628 },	-- Azure Codex
								["cr"] = 25720,	-- Inquisitor Caleras
							}),
						},
					}),
					q(12471, {	-- Cruelty of the Kvaldir
						["description"] = "Offered once you kill the |cFFFFD700Riplash Myrmidon|r attacking the prisoner.",
						["qg"] = 25636,	-- Captured Tuskarr Prisoner
						["coord"] = { 44.0, 77.8, BOREAN_TUNDRA },
					}),
					q(11920, {	-- Cultists Among Us
						["description"] = "Must have or complete |cFFFFD700A Soldier in Need|r to see this quest.",
						["sourceQuest"] = 11789,	-- A Soldier In Need
						["provider"] = { "o", 187851 },	-- Cultist Shrine
						["coord"] = { 57.5, 69.1, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11602, {	-- Cutting Off the Source
						["sourceQuest"] = 11598,	-- Taking Back Mightstone Quarry
						["qg"] = 25279,	-- Overlord Razgor
						["coord"] = { 43.1, 54.9, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Nerub'ar Egg Sac Destroyed
								["provider"] = { "o", 187655 },	-- Nerub'ar Egg Sac
							}),
							i(36883),	-- Combatant Greatsword
							i(36881),	-- Medic's Morning Star
							i(36879),	-- Soldier's Spiked Mace
							i(36880),	-- Vicious Spellblade
							i(36882),	-- Warsong Longbow
							i(36878),	-- Writhing Longstaff
						},
					}),
					q(11688, {	-- Damned Filthy Swine
						["qg"] = 25607,	-- Farmer Torp
						["coord"] = { 37.9, 52.3, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Unliving Swine slain
								["provider"] = { "n", 25600 },	-- Unliving Swine
							}),
						},
					}),
					q(11889, {	-- Death From Above
						["sourceQuest"] = 11797,	-- The Siege
						["qg"] = 25816,	-- Sergeant Hammerhill
						["coord"] = { 56.3, 69.5, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Scourged Flamespitter slain
								["provider"] = { "n", 25582 },	-- Scourged Flamespitter
							}),
						},
					}),
					q(11909, {	-- Defeat the Gearmaster
						["sourceQuest"] = 11899,	-- Souls of the Decursed
						["qg"] = 25602,	-- Greatmother Taiga
						["coord"] = { 77.3, 36.8, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37522),	-- Earthborn Greaves
							i(37547),	-- Fireborn Warhammer
							i(37537),	-- Stave of the Spiritcaller
							i(37535),	-- Stave of the Windborn
							i(37122),	-- Taut Driftwood Bow
						},
					}),
					q(11723, {	-- Deploy the Shake-n-Quake!
						["sourceQuest"] = 11718,	-- A Bot in Mammoth's Clothing
						["qg"] = 25780,	-- Abner Fizzletorque
						["coord"] = { 57.0, 20.1, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(37516),	-- Chilled Greaves
							i(37437),	-- Plainhunter's Chestpiece
							i(37375),	-- Rhinohide Gloves
							i(37228),	-- Sweltering Cuffs
						},
					}),
					q(11645, {	-- Dirty, Stinkin' Snobolds!
						["sourceQuest"] = 11708,	-- The Mechagnomes
						["qg"] = 25477,	-- Crafty Wobblesprocket
						["coord"] = { 58.1, 18.3, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Crafty's Stuff
								["providers"] = {
									{ "i", 34787 },	-- Crafty's Stuff
									{ "o", 187689 },	-- Crafty's Stuff
								},
							}),
						},
					}),
					q(11707, {	-- Distress Call
						["sourceQuest"] = 11897,	-- Plug the Sinkholes	-- TODO: this doesn't appear to be correct but I didn't catch exactly when it became available
						["qg"] = 25737,	-- Airman Skyhopper
						["coord"] = { 58.8, 68.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11682, {	-- Dragonspeak
						["sourceQuest"] = 11681,	-- Rescuing Evanor
						["qg"] = 25785,	-- Archmage Evanor
						["coord"] = { 46.3, 32.3, BOREAN_TUNDRA },
					}),
					q(11919, {	-- Drake Hunt
						["sourceQuest"] = 11936,	-- Hatching a Plan
						["qg"] = 26117,	-- Raelorasz
						["coord"] = { 33.3, 34.5, BOREAN_TUNDRA },
						["groups"] = {
							i(37382),	-- Charred Drakehide Belt
							i(37435),	-- Flame-Infused Bindings
							i(37513),	-- Helm of the Crimson Drakonid
							i(37226),	-- Sweltering Robes
						},
					}),
					q(11940, {	-- Drake Hunt
						["sourceQuest"] = 11919,	-- Drake Hunt
						["qg"] = 26117,	-- Raelorasz
						["coord"] = { 33.3, 34.5, BOREAN_TUNDRA },
						["maxReputation"] = { FACTION_THE_WYRMREST_ACCORD, EXALTED },	-- The Wyrmrest Accord, Exalted.
						["isDaily"] = true,
					}),
					q(11866, {	-- Ears of Our Enemies
						["sourceQuest"] = 11864,	-- A Mission Statement
						["qg"] = 25809,	-- Archdruid Lathorius
						["coord"] = { 57.1, 44.3, BOREAN_TUNDRA },
					}),
					q(11795, {	-- Emergency Protocol: Section 8.2, Paragraph C
						["sourceQuest"] = 11728,	-- Lupus Pupus
						["qg"] = 25807,	-- Iggy "Tailspin" Cogtoggle
						["coord"] = { 61.6, 35.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11796, {	-- Emergency Protocol: Section 8.2, Paragraph D
						["sourceQuest"] = 11795,	-- Emergency Protocol: Section 8.2, Paragraph C
						["qg"] = 25807,	-- Iggy "Tailspin" Cogtoggle
						["coord"] = { 61.6, 35.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11887, {	-- Emergency Supplies
						["qg"] = 25984,	-- Crashed Recon Pilot
						["coord"] = { 64.0, 35.7, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11792, {	-- Enemies of the Light
						["sourceQuest"] = 11791,	-- Notify Arlos
						["qg"] = 25285,	-- Harbinger Vurenn
						["coord"] = { 56.6, 72.4, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Cultist Communique
								["provider"] = { "i", 35122 },	-- Cultist Communique
								["cr"] = 25651,	-- Cultist Necrolyte
							}),
							i(38213),	-- Harbinger's Wrath
							i(36888),	-- Marshwalker Legguards
							i(36938),	-- Mightstone Breastplate
							i(36937),	-- Tundrastrider Coif
						},
					}),
					q(11672, {	-- Enlistment Day
						-- #if AFTER 4.0.3.13277
						["sourceQuest"] = 28709,	-- Hero's Call: Borean Tundra! [7.3.5+] / Hero's Call: Northrend!
						-- #endif
						["qg"] = 25307,	-- Recruitment Officer Blythe
						["coord"] = { 57.8, 67.5, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11570, {	-- Escape from the Winterfin Caverns
						["sourceQuest"] = 11571,	-- Learning to Communicate
						["qg"] = 25208,	-- Lurgglbr
						["coord"] = { 37.7, 23.0, BOREAN_TUNDRA },
						["groups"] = {
							i(37044),	-- Amphibious Speargun
							i(37036),	-- Fish-Eye Poker
							i(37042),	-- Glimmering Orca Tooth
							i(37039),	-- Mrgl Blade
							i(37041),	-- Scepter of the Winterfin
							i(37046),	-- Shell Smasher
						},
					}),
					q(11664, {	-- Escaping the Mist
						["qg"] = 25504,	-- Mootoo the Younger
						["coord"] = { 31.8, 52.3, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37399),	-- Floodplain Shoulderpads
							i(37212),	-- Transborean Wraps
							i(37422),	-- Westrift Wristguards
							i(37028, {	-- Condor-Bone Star
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					q(11683, {	-- Fallen Necropolis
						["sourceQuest"] = 11677,	-- Stop the Plague
						["qg"] = 25604,	-- Sage Highmesa
						["coord"] = { 74.6, 23.6, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/20 Talramas Scourge Destroyed
								["providers"] = {
									{ "n", 25660},	-- Festering Ghoul
									{ "n", 24957},	-- Cult Plaguebringer
									{ "n", 25678},	-- Doctor Razorgrin
									{ "n", 25682},	-- Lich-Lord Chillwinter
									{ "n", 25684},	-- Talramas Abomination
									{ "n", 26126},	-- Bone Warrior
								},
							}),
							i(37518),	-- Amberplate Waistguard
							i(37239),	-- Layered Frost Sandals
							i(37355),	-- Reinforced Caribou-Hide Chestguard
							i(37560),	-- Vial of Renewal
						},
					}),
					q(11635, {	-- Farseer Grimwalker's Spirit
						["sourceQuest"] = 11631,	-- Vision of Air
						["qg"] = 25339,	-- Spirit Talker Snarlfang
						["coord"] = { 50.2, 9.7, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11928, {	-- Farshire
						["sourceQuest"] = 11897,	-- Plug the Sinkholes
						["qg"] = 25816,	-- Sergeant Hammerhill
						["coord"] = { 56.3, 69.5, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11678, {	-- Find Bristlehorn
						["sourceQuest"] = 11677,
						["qg"] = 25604,	-- Sage Highmesa
						["coord"] = { 74.6, 23.6, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11725, {	-- Finding Pilot Tailspin
						["sourceQuest"] = 11712,	-- Re-Cursive
						["qg"] = 25590,	-- Fizzcrank Fullthrottle
						["coord"] = { 56.9, 18.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11956, {	-- Finding the Phylactery	-- aa
						["qg"] = 26170,	-- Thassarian
						["coord"] = { 84.7, 41.6, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Tanathal's Phylactery
								["provider"] = { "i", 35687 },	-- Tanathal's Phylactery
								["cr"] = 26225,	-- Phylactery Guardian
							}),
						},
					}),
					q(11705, {	-- Foolish Endeavors
						["sourceQuest"] = 11703,	-- Get to Getry
						["qgs"] = {
							25729,	-- Shadowstalker Getry
							-- #if AFTER SL
							176304,	-- Shadowstalker Getry
							-- #endif
						},
						["coord"] = { 34.5, 46.4, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37475),	-- Benign Crusader's Plate
							i(37277),	-- Ermine Ruff Cloak
							i(37545),	-- Graven Shoveltusk Pendant
							i(37447),	-- Reinforced Mendicant's Cowl
						},
					}),
					q(11904, {	-- Fruits of Our Labor
						["sourceQuest"] = 11903,	-- It's Time for Action
						["qg"] = 26083,	-- Gerald Green
						["coord"] = { 58.2, 62.8, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Ore Cart released
								["provider"] = { "o", 188104 },	-- Cart Release
							}),
						},
					}),
					q(11715, {	-- Fueling the Project
						["sourceQuest"] = 11713,	-- Scouting the Sinkholes
						["qg"] = 25780,	-- Abner Fizzletorque
						["coord"] = { 57.0, 20.1, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11793, {	-- Further Investigation
						["sourceQuest"] = 11792,	-- Enemies of the Light
						["qg"] = 25285,	-- Harbinger Vurenn
						["coord"] = { 56.6, 72.4, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11619, {	-- Gamel the Cruel
						["sourceQuest"] = 11613,	-- Karuk's Oath
						["qg"] = 25435,	-- Karuk
						["coord"] = { 47.1, 75.4, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Gamel the Cruel slain
								["provider"] = { "n", 26449 },	-- Gamel the Cruel
							}),
							i(37541),	-- Giant Turtle Collar
							i(37523),	-- Rigid Tuskring
							i(37419),	-- Seaspeaker Mantle
							i(37209),	-- Wharfmaster's Hat
						},
					}),
					q(11721, {	-- Gammothra the Tormentor
						["sourceQuest"] = 11720,	-- The Invasion of Gammoth
						["qg"] = 25380,	-- Primal Mighthorn
						["coord"] = { 52.1, 52.8, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Head of Gammothra
								["provider"] = { "i", 34980 },	-- Head of Gammothra
								["crs"] = {
									25789,	-- Gammothra the Tormentor
									25790,	-- Weakened Gammothra
								},
							}),
						},
					}),
					q(13004, {	-- Gem Perfection (A)
						["qg"] = 26997,	-- Alestos
						["coord"] = { 57.4, 72.2, BOREAN_TUNDRA },
						["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 },
						["cost"] = {
							{ "i", 36929, 2 },	-- Huge Citrine
							{ "i", 36932, 2 },	-- Dark Jade
							{ "i", 36926, 2 },	-- Shadow Crystal
						},
						["requireSkill"] = JEWELCRAFTING,
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(41888, {	-- Small Velvet Bag
								["description"] = "Contains a 'perfect' gem.",
							}),
							r(55534, {	-- Gem Perfection
								["requireSkill"] = JEWELCRAFTING,
							}),
						},
					}),
					q(13002, {	-- Gem Perfection (H)
						["qg"] = 26982,	-- Geba'li
						["coord"] = { 41.6, 53.4, BOREAN_TUNDRA },
						["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 },
						["cost"] = {
							{ "i", 36929, 2 },	-- Huge Citrine
							{ "i", 36932, 2 },	-- Dark Jade
							{ "i", 36926, 2 },	-- Shadow Crystal
						},
						["requireSkill"] = JEWELCRAFTING,
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(41888, {	-- Small Velvet Bag
								["description"] = "Contains a 'perfect' gem.",
							}),
							r(55534, {	-- Gem Perfection
								["requireSkill"] = JEWELCRAFTING,
							}),
						},
					}),
					q(11673, {	-- Get Me Outa Here!
						["qg"] = 25589,	-- Bonker Togglevolt
						["coord"] = { 55.5, 12.5, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(37047),	-- Branch of Everlasting Flame
							i(37528),	-- Dry Earth Circle
							i(37573, {	-- Idol of the Plainstalker
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(37574, {	-- Libram of Furious Blows
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(37049),	-- Lost Marksman's Rifle
							i(37575, {	-- Totem of the Tundra
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					q(11703, {	-- Get to Getry
						["sourceQuest"] = 11686,	-- The Warsong Farms
						["qg"] = 25437,	-- Shadowstalker Ickoris
						["coord"] = { 38.0, 52.5, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11873, {	-- Give Fizzcrank the News
						["sourceQuest"] = 11796,	-- Emergency Protocol: Section 8.2, Paragraph D
						["qg"] = 25807,	-- Iggy "Tailspin" Cogtoggle
						["coord"] = { 61.6, 35.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(37478),	-- Amberplate Grips
							i(37275),	-- Mantle of Congealed Anger
							i(37351),	-- Reinforced Caribou-Hide Leggings
							i(37443),	-- Spiked Magmoth Helm
						},
					}),
					q(11563, {	-- Grmmurggll Mrllggrl Glrggl!!!
						["sourceQuest"] = 11562,	-- I'm Being Blackmailed By My Cleaner
						["qg"] = 25205,	-- Mrmrglmr
						["coord"] = { 41.9, 12.7, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Glrggl's Head
								["provider"] = { "i", 34617 },	-- Glrggl's Head
								["cr"] = 25203,	-- Glrggl
							}),
						},
					}),
					q(11653, {	-- Hah... You're Not So Big Now!
						["sourceQuest"] = 11650,	-- Just a Few More Things...
						["qg"] = 25477,	-- Crafty Wobblesprocket
						["coord"] = { 58.1, 18.3, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(37388),	-- Reinforced Elastic Band
							i(37428),	-- Ring-Ridden Wrist Protectors
							i(37526),	-- Thin Dexterity Enhancing Tube
							i(37272),	-- Wizzlenob Shoulder Covers
						},
					}),
					q(11617, {	-- Hampering Their Escape
						["sourceQuest"] = 11612,	-- Reclaiming the Quarry
						["qg"] = 25292,	-- Etaruk
						["coord"] = { 54.2, 36.1, BOREAN_TUNDRA },
					}),
					q(11869, {	-- Happy as a Clam
						["sourceQuest"] = 11864,	-- A Mission Statement
						["qg"] = 25810,	-- Hierophant Cenius
						["coord"] = { 57.3, 44.0, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/10 Loot Crazed Diver slain
								["provider"] = { "n", 25836 },	-- Loot Crazed Diver
							}),
						},
					}),
					q(11936, {	-- Hatching a Plan
						["sourceQuest"] = 11918,	-- Basic Training
						["qg"] = 26117,	-- Raelorasz
						["coord"] = { 33.3, 34.5, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/5 Dragon Eggs destroyed
								["provider"] = { "o", 188133 },	-- Blue Dragon Egg
							}),
						},
					}),
					q(11916, {	-- Hellscream's Champion
						["sourceQuests"] = {
							11722,	-- Trophies of Gammoth
							11705,	-- Foolish Endeavors
							11652,	-- The Plains of Nasam
						},
						["qg"] = 25237,	-- Garrosh Hellscream
						["coord"] = { 41.4, 53.6, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(38237),	-- Axe of Frozen Death
							i(38238),	-- Borean Smasher
							i(38242),	-- Fang of the Desolate Soul
							i(38241),	-- Fury of the Raging Dragon
							i(38240),	-- Staff of the Purposeful Mendicant
							i(38239),	-- Tower of the Infinite Mind
						},
					}),
					q(11585, {	-- Hellscream's Vigil
						["sourceQuests"] = {
							-- #if AFTER CATA
							28711,	-- Warchief's Command: Borean Tundra! [7.3.5+] / Warchief's Command: Northrend!
							-- #endif
							10172,	-- There Is No Hope
						},
						["altQuests"] = { 11586 },	-- Hellscream's Vigil
						["qg"] = 25273,	-- Warsong Recruitment Officer
						["coords"] = {
							{ 41.6, 53.9, BOREAN_TUNDRA },
							{ 43.0, 55.6, BOREAN_TUNDRA },
						},
						["races"] = HORDE_ONLY,
					}),
					q(11586, {	-- Hellscream's Vigil
						["description"] = "This version of the quest is only available if you have NOT completed the quest 'There Is No Hope' from Greatmother Geyah in Nagrand (Outland). However, it seems that everyone is receiving this version curently.",
						-- #if AFTER CATA
						["sourceQuest"] = 28711,	-- Warchief's Command: Borean Tundra! [7.3.5+] / Warchief's Command: Northrend!
						-- #endif
						["altQuests"] = { 11585 },	-- Hellscream's Vigil
						["qg"] = 25273,	-- Warsong Recruitment Officer
						["coords"] = {
							{ 41.6, 53.9, BOREAN_TUNDRA },
							{ 43.0, 55.6, BOREAN_TUNDRA },
						},
						["races"] = HORDE_ONLY,
						["lockCriteria"] = { 1, "questID", 10172 },	-- There Is No Hope
					}),
					q(11876, {	-- Help Those That Cannot Help Themselves
						["sourceQuest"] = 11864,	-- A Mission Statement
						["qg"] = 25809,	-- Archdruid Lathorius
						["coord"] = { 57.1, 44.3, BOREAN_TUNDRA },
					}),
					heroscall(q(28709, {	-- Hero's Call: Borean Tundra! [7.3.5+] / Hero's Call: Northrend!
						["timeline"] = { ADDED_4_0_3 },
						["isBreadcrumb"] = true,
						-- #if BEFORE 7.3.5
						-- Cataclysm: Minimum is level 68. (TODO: Confirm this.)
						-- Cataclysm: Maximum is level 78 (TODO: Test max level between 74 and 79)
						["lvl"] = { 68, 78 },
						-- #endif
					})),
					q(11660, {	-- Horn of the Ancient Mariner
						["qg"] = 25476,	-- Waltor of Pal'ea
						["coord"] = { 32.3, 54.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Horn of the Ancient Mariner
								["provider"] = { "i", 34813 },	-- Horn of the Ancient Mariner
								["cr"] = 25479,	-- Kvaldir Mistweaver
							}),
						},
					}),
					q(11562, {	-- I'm Being Blackmailed By My Cleaner
						["sourceQuest"] = 11560,	-- Oh Noes, the Tadpoles!
						["qg"] = 25197,	-- King Mrgl-Mrgl
						["coord"] = { 43.4, 13.9, BOREAN_TUNDRA },
					}),
					q(11699, {	-- I'm Stuck in this Damned Cage... But Not For Long!
						["sourceQuest"] = 11697,	-- Rats, Tinky Went into the Necropolis!
						["qg"] = 25714,	-- Tinky Wickwhistle
						["coord"] = { 69.8, 14.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Engine-Core Crystal
								["provider"] = { "i", 34957 },	-- Engine-Core Crystal
								["cr"] = 25660,	-- Festering Ghoul
							}),
							objective(2, {	-- 0/1 Magical Gyroscope
								["provider"] = { "i", 34958 },	-- Magical Gyroscope
								["cr"] = 25678,	-- Doctor Razorgrin
							}),
							objective(3, {	-- 0/1 Piloting Scourgestone
								["provider"] = { "i", 34959 },	-- Piloting Scourgestone
								["cr"] = 25682,	-- Lich-Lord Chillwinter
							}),
						},
					}),
					q(11603, {	-- In Wine, Truth
						["sourceQuest"] = 11601,	-- Lost and Found
						["qg"] = 25245,	-- James Deacon
						["coord"] = { 58.2, 68.0, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Kul Tiras Wine
								["providers"] = {
									{ "i", 34714 },	-- Kul Tiras Wine
									{ "o", 188131 },	-- Wine Crate
								},
							}),
						},
					}),
					q(11655, {	-- Into the Mist
						["qg"] = 25476,	-- Waltor of Pal'ea
						["coord"] = { 32.3, 54.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Tuskarr Relic
								["provider"] = { "i", 34814 },	-- Tuskarr Relic
								["crs"] = {
									25479,	-- Kvaldir Mistweaver
									25496,	-- Kvaldir Mist Lord
									25497,	-- Orabus the Helmsman
									32576,	-- Orabus the Helmsman
								},
							}),
						},
					}),
					q(11670, {	-- It Was The Orcs, Honest!
						["sourceQuest"] = 11658,	-- Plan B
						["qg"] = 25477,	-- Crafty Wobblesprocket
						["coord"] = { 58.1, 18.3, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(37054),	-- Frostbiter
							i(37231),	-- Frostspeaker Collar
							i(37073),	-- Hungering Greatstaff
							i(37072),	-- Jagged Icefist
							i(37357),	-- Shivering Healer's Cloak
						},
					}),
					q(11903, {	-- It's Time for Action
						["sourceQuest"] = 11902,	-- Pernicious Evidence
						["qg"] = 26083,	-- Gerald Green
						["coord"] = { 58.2, 62.8, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/14 Plagued Scavenger slain
								["provider"] = { "n", 25650 },	-- Plagued Scavenger
							}),
							i(37402),	-- Floodplain Vest
							i(37484),	-- Mendicant's Treads
							i(37543),	-- Pugnacious Collar
							i(37208),	-- Transborean Bracers
						},
					}),
					q(11650, {	-- Just a Few More Things...
						["sourceQuest"] = 11645,	-- Dirty, Stinkin' Snobolds!
						["qg"] = 25477,	-- Crafty Wobblesprocket
						["coord"] = { 58.1, 18.3, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11637, {	-- Kaganishu
						["sourceQuest"] = 11635,	-- Farseer Grimwalker's Spirit
						["qg"] = 25425,	-- Farseer Grimwalker's Spirit
						["coord"] = { 56.1, 9.1, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11613, {	-- Karuk's Oath
						["sourceQuests"] = {
							12141,	-- A Diplomatic Mission
							11662,	-- Seek Out Karuk!
						},
						["qg"] = 25435,	-- Karuk
						["coord"] = { 47.1, 75.4, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/6 Skadir Raider slain
								["provider"] = { "n", 25522 },	-- Skadir Raider
							}),
							objective(2, {	-- 0/5 Skadir Longboatsman slain
								["provider"] = { "n", 25521 },	-- Skadir Longboatsman
							}),
							i(37025),	-- Blubber Carver
							i(37021),	-- Claw of the Tuskarr
							i(37023),	-- Compact Arrow Launcher
							i(37024),	-- Medicine Stick
							i(37022),	-- Shark Stabber
							i(37026),	-- Spirit Channeller's Rod
						},
					}),
					q(11879, {	-- Kaw the Mammoth Destroyer
						["sourceQuest"] = 11878,	-- Khu'nok Will Know
						["qg"] = 25862,	-- Khu'nok the Behemoth
						["coord"] = { 59.4, 30.4, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Kaw's War Halberd
								["providers"] = {
									{ "i", 35234 },	-- Kaw's War Halberd
									{ "o", 188066 },	-- Kaw's War Halberd
								},
							}),
							i(37005),	-- D.E.H.T.A. Overshirt
							i(37008),	-- Ethical Epaulets
							i(37007),	-- Faux Leather Hood
							i(37009),	-- Moral Sabatons
						},
					}),
					q(11914, {	-- Keep the Secret Safe
						["sourceQuest"] = 11912,	-- Nuts for Berries
						["qg"] = 26110,	-- Librarian Serrah
						["coord"] = { 33.4, 34.3, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/5 Nexus Mana Essence
								["provider"] = { "i", 35493 },	-- Nexus Mana Essence
								["cr"] = 25721,	-- Arcane Serpent
							}),
							i(37434),	-- Cauterizing Chain Strand
							i(37512),	-- Gauntlets of the Crimson Guardian
							i(37383),	-- Seared Scale Cape
							i(37559),	-- Serrah's Star
						},
					}),
					q(11946, {	-- Keristrasza
						["description"] = "Use the |cFFFFFFFFAugmented Arcane Prison|r in your bags to summon |cFFFFD700Keristrasza|r. If you do not have the item in your bags, talk to |cFFFFD700Raelorasz|r to get one.",
						["sourceQuest"] = 11943,	-- The Cell
						["qg"] = 26206,	-- Keristrasza
						["coord"] = { 33.3, 34.1, BOREAN_TUNDRA },
					}),
					q(11569, {	-- Keymaster Urmgrgl
						["sourceQuest"] = 11571,	-- Learning to Communicate
						["qg"] = 28375,	-- Glrglrglr
						["coord"] = { 37.8, 23.1, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Urmgrgl's Key
								["provider"] = { "i", 34600 },	-- Urmgrgl's Key
								["cr"] = 25210,	-- Keymaster Urmgrgl
							}),
						},
					}),
					q(11878, {	-- Khu'nok Will Know
						["sourceQuest"] = 11876,	-- Help Those That Cannot Help Themselves
						["qg"] = 25809,	-- Archdruid Lathorius
						["coord"] = { 57.1, 44.3, BOREAN_TUNDRA },
					}),
					q(11704, {	-- King Mrgl-Mrgl (A)
						["sourceQuest"] = 11708,	-- The Mechagnomes
						["qg"] = 25702,	-- Mordle Cogspinner
						["coord"] = { 57.5, 18.6, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11702, {	-- King Mrgl-Mrgl (H)
						["qg"] = 25736,	-- Supply Master Taz'ishi
						["coord"] = { 48.9, 10.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(12019, {	-- Last Rites
						["sourceQuest"] = 11942,	-- Words of Power
						["qg"] = 26170,	-- Thassarian
						["coord"] = { 84.7, 41.6, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(38237),	-- Axe of Frozen Death
							i(38238),	-- Borean Smasher
							i(38242),	-- Fang of the Desolate Soul
							i(38241),	-- Fury of the Raging Dragon
							i(38240),	-- Staff of the Purposeful Mendicant
							i(38239),	-- Tower of the Infinite Mind
						},
					}),
					q(11610, {	-- Leading the Ancestors Home
						["sourceQuest"] = 11609,	-- Picking Up the Pieces
						["provider"] = { "o", 187565 },	-- Elder Atkanok
						["coord"] = { 54.6, 35.7, BOREAN_TUNDRA },
						["groups"] = {
							i(37514),	-- Freed Shackles
							i(37548),	-- Iceflow Collar
							i(37227),	-- Seafarer Mantle
							i(37380),	-- Whalehunter Leggings
						},
					}),
					q(11571, {	-- Learning to Communicate
						["sourceQuests"] = {
							11702,	-- King Mrgl-Mrgl
							11704,	-- King Mrgl-Mrgl
						},
						["qg"] = 25197,	-- King Mrgl-Mrgl
						["coord"] = { 43.5, 13.9, BOREAN_TUNDRA },
					}),
					q(11788, {	-- Lefty Loosey, Righty Tighty
						["sourceQuest"] = 11712,	-- Re-Cursive
						["qg"] = 25747,	-- Jinky Wingnut
						["coord"] = { 57.4, 18.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Twonky slain
								["provider"] = { "n", 25830 },	-- Twonky
							}),
							objective(2, {	-- 0/1 ED-210 slain
								["provider"] = { "n", 25831 },	-- ED-210
							}),
							objective(3, {	-- 0/1 Max Blasto slain
								["provider"] = { "n", 25832 },	-- Max Blasto
							}),
							objective(4, {	-- 0/1 The Grinder slain
								["provider"] = { "n", 25833 },	-- The Grinder
							}),
						},
					}),
					q(11700, {	-- Let Bixie Know
						["sourceQuest"] = 11699,	-- I'm Stuck in this Damned Cage... But Not For long!
						["qg"] = 25714,	-- Tinky Wickwhistle
						["coord"] = { 69.8, 14.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11881, {	-- Load'er Up!
						["qg"] = 25849,	-- Fezzix Geartwist
						["coord"] = { 77.4, 36.9, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11601, {	-- Lost and Found
						["sourceQuest"] = 11600,	-- The Late William Allerton
						["qg"] = 25251,	-- Leryssa
						["coord"] = { 58.7, 68.3, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11728, {	-- Lupus Pupus
						["sourceQuest"] = 11726,	-- A Little Bit of Spice
						["qg"] = 25807,	-- Iggy "Tailspin" Cogtoggle
						["coord"] = { 61.6, 35.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Microfilm
								["providers"] = {
									{ "i", 35123 },	-- Microfilm
									{ "o", 187981 },	-- Wolf Droppings
								},
							}),
						},
					}),
					q(11636, {	-- Magic Carpet Ride
						["sourceQuest"] = 11634,	-- Wind Master To'bor
						["qg"] = 25289,	-- Wind Master To'bor
						["coord"] = { 42.0, 54.5, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11724, {	-- Massive Moth Omelet?
						["provider"] = { "o", 187905 },	-- Massive Glowing Egg
						["coord"] = { 48.5, 59.0, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11730, {	-- Master and Servant
						["sourceQuest"] = 11729,	-- The Ultrasonic Screwdriver
						["qg"] = 25477,	-- Crafty Wobblesprocket
						["coord"] = { 58.1, 18.3, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(37479),	-- Amberplate Legguards
							i(37270),	-- Layered Frost Robes
							i(37353),	-- Reinforced Caribou-Hide Helm
							i(37441),	-- Spiked Magmoth Mantle
						},
					}),
					q(11895, {	-- Master the Storm
						["sourceQuest"] = 11890,	-- What Are They Up To?
						["qg"] = 25982,	-- Sage Earth and Sky
						["coord"] = { 77.2, 38.4, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11676, {	-- Merciful Freedom
						["sourceQuest"] = 11618,
						["qg"] = 25438,	-- Shadowstalker Canarius
						["coord"] = { 37.9, 52.5, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11616, {	-- Message to Hellscream
						["sourceQuest"] = 11615,	-- Nerub'ar Secrets
						["qg"] = 25394,	-- Shadowstalker Barthus
						["coord"] = { 43.2, 55.0, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11698, {	-- Might As Well Wipe Out the Scourge
						["sourceQuest"] = 11694,	-- There's Something Going On In Those Caves
						["qg"] = 25705,	-- Bixie Wrenchshanker
						["coord"] = { 73.4, 18.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/20 Talramas Scourge Destroyed
								["providers"] = {
									{ "n", 25660},	-- Festering Ghoul
									{ "n", 24957},	-- Cult Plaguebringer
									{ "n", 25678},	-- Doctor Razorgrin
									{ "n", 25682},	-- Lich-Lord Chillwinter
									{ "n", 25684},	-- Talramas Abomination
									{ "n", 26126},	-- Bone Warrior
								},
							}),
							i(37518),	-- Amberplate Waistguard
							i(37239),	-- Layered Frost Sandals
							i(37355),	-- Reinforced Caribou-Hide Chestguard
							i(37560),	-- Vial of Renewal
						},
					}),
					q(11901, {	-- Military? What Military?
						["sourceQuest"] = 11928,	-- Farshire
						["qg"] = 26083,	-- Gerald Green
						["coord"] = { 58.2, 62.8, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11643, {	-- Mobu's Pneumatic Tank Transjigamarig
						["sourceQuest"] = 11642,	-- Tank Ain't Gonna Fix Itself
						["qg"] = 25475,	-- Mobu
						["coord"] = { 32.0, 54.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Pneumatic Tank Transjigamarig
								["providers"] = {
									{ "i", 34785 },	-- Pneumatic Tank Transjigamarig
									{ "o", 187683 },	-- Pneumatic Tank Transjigamarig
								},
							}),
						},
					}),
					q(11576, {	-- Monitoring the Rift: Cleftcliff Anomaly
						["qg"] = 25291,	-- Librarian Garren
						["coord"] = { 44.9, 33.3, BOREAN_TUNDRA },
					}),
					q(11582, {	-- Monitoring the Rift: Sundered Chasm
						["sourceQuest"] = 11576,	-- Monitoring the Rift: Cleftcliff Anomaly
						["qg"] = 25291,	-- Librarian Garren
						["coord"] = { 44.9, 33.3, BOREAN_TUNDRA },
					}),
					q(12728, {	-- Monitoring the Rift: Winterfin Cavern
						["sourceQuest"] = 11582,	-- Monitoring the Rift: Sundered Chasm
						["qg"] = 25291,	-- Librarian Garren
						["coord"] = { 44.9, 33.3, BOREAN_TUNDRA },
						["groups"] = {
							i(37282),	-- Cavernous Gauntlets
							i(37471),	-- Girdle of Ripped Space
							i(37320),	-- Spaulders of Echoing Truth
							i(37458),	-- Wristguards of Rocky Horror
						},
					}),
					q(11649, {	-- Motes of the Enraged
						["sourceQuest"] = 11627,	-- Boiling Point
						["qg"] = 25376,	-- Imperean
						["coord"] = { 46.5, 9.3, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Tempest Mote
								["provider"] = { "i", 34800 },	-- Tempest Mote
								["cr"] = 25415,	-- Enraged Tempest
							}),
						},
					}),
					q(11950, {	-- Muahit's Wisdom
						["sourceQuest"] = 11949,	-- Not Without a Fight!
						["qg"] = 26169,	-- Ataika
						["coord"] = { 63.7, 46.1, BOREAN_TUNDRA },
					}),
					q(11967, {	-- Mustering the Reds
						["sourceQuest"] = 11957,	-- Saragosa's End
						["qg"] = 26206,	-- Keristrasza
					}),
					q(11884, {	-- Nedar, Lord of Rhinos...
						["sourceQuest"] = 11864,	-- A Mission Statement
						["qg"] = 25812,	-- Killinger the Den Watcher
						["coord"] = { 57.1, 43.9, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Nedar, Lord of Rhinos slain
								["provider"] = { "n", 25801 },	-- Nedar, Lord of Rhinos
							}),
							objective(2, {	-- 0/1 "Lunchbox" slain
								["provider"] = { "n", 25968 },	-- "Lunchbox"
							}),
							i(37406),	-- Denwatcher's Leggings
							i(37414),	-- Farseer's Headpiece
							i(37520),	-- Plainkeeper Blockade
							i(37203),	-- Regenerative Cloth
						},
					}),
					q(11615, {	-- Nerub'ar Secrets
						["sourceQuest"] = 11614,	-- Untold Truths
						["qg"] = 25328,	-- Shadowstalker Luther
						["coord"] = { 40.0, 52.0, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11647, {	-- Neutralizing the Cauldrons
						["sourceQuest"] = 11633,	-- Blending In
						["qg"] = 24709,	-- Sage Aeire
						["coord"] = { 75.8, 37.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37517),	-- Chilled Pauldrons
							i(37234),	-- Layered Frost Hood
							i(37356),	-- Rhinohide Wristwraps
							i(37439),	-- Spiked Magmoth Gloves
						},
					}),
					q(11575, {	-- Nick of Time
						["sourceQuest"] = 11897,	-- Plug the Sinkholes
						["qg"] = 25249,	-- Midge
						["coord"] = { 58.4, 67.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11709, {	-- Nork Bloodfrenzy's Charge
						["sourceQuest"] = 11705,	-- Foolish Endeavors
						["qg"] = 25237,	-- Garrosh Hellscream
						["coord"] = { 41.3, 53.5, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(13088, {	-- Northern Cooking
						["qg"] = 26989,	-- Quest Giver: Rollick MacKreel <Cooking Trainer>
						["coord"] = { 57.93, 71.54, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							recipe(57421),	-- Northern Stew
						},
					}),
					q(13090, {	-- Northern Cooking
						["qg"] = 26972,	-- Orn Tenderhoof <Cooking Trainer>
						["coord"] = { 42.0, 54.1, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							recipe(57421),	-- Northern Stew
						},
					}),
					q(11871, {	-- Not On Our Watch
						["sourceQuest"] = 11870,	-- The Abandoned Reach
						["qg"] = 25838,	-- Hierophant Liandra
						["coord"] = { 57.8, 55.1, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/12 Shipment of Animal Parts
								["providers"] = {
									{ "i", 35222 },	-- Shipment of Animal Parts
									{ "o", 188015 },	-- Shipment of Animal Parts
									{ "o", 188016 },	-- Shipment of Animal Parts
									{ "o", 188017 },	-- Shipment of Animal Parts
									{ "o", 188018 },	-- Shipment of Animal Parts
								},
							}),
						},
					}),
					q(11949, {	-- Not Without a Fight!
						["qg"] = 26169,	-- Ataika
						["coord"] = { 63.7, 46.1, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/12 Kvaldir Raider slain
								["provider"] = { "n", 25760 },	-- Kvaldir Raider
							}),
							i(37525),	-- Deep Sea Tuskring
							i(37211),	-- Iceflow Footwraps
							i(37486),	-- Landlocked Wristguards
							i(37421),	-- Waverunner Waistband
						},
					}),
					q(11791, {	-- Notify Arlos
						["sourceQuest"] = 11920,	-- Cultists Among Us
						["qg"] = 25299,	-- Admiral Cantlebree
						["coord"] = { 57.7, 69.1, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11912, {	-- Nuts for Berries
						["qg"] = 26110,	-- Librarian Serrah
						["coord"] = { 33.4, 34.3, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/10 Frostberry
								["providers"] = {
									{ "i", 35492 },	-- Frostberry
									{ "o", 188113 },	-- Frostberry Bush
								},
							}),
						},
					}),
					q(11693, {	-- Oh Great... Plagued Magnataur!
						["sourceQuest"] = 11692,	-- Check in With Bixie
						["qg"] = 25705,	-- Bixie Wrenchshanker
						["coord"] = { 73.4, 18.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Plagued Magnataur slain
								["providers"] = {
									{ "n", 25615},	-- Plagued Magnataur
									{ "n", 24954},	-- Aged Magnataur
								},
							}),
						},
					}),
					q(11560, {	-- Oh Noes, the Tadpoles!
						["sourceQuest"] = 11559,	-- Winterfin Commerce
						["qg"] = 25197,	-- King Mrgl-Mrgl
						["coord"] = { 43.4, 13.9, BOREAN_TUNDRA },
						["groups"] = {
							i(37034),	-- Lobstrock Slicer
							i(37527),	-- Shimmering Band
							i(37508),	-- Sinking Pauldrons
							i(37558),	-- Tidal Boon
						},
					}),
					q(11962, {	-- One Last Delivery
						["sourceQuest"] = 11904,	-- Fruits of Our Labor
						["qg"] = 26083,	-- Gerald Green
						["coord"] = { 58.2, 62.8, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11661, {	-- Orabus the Helmsman
						["sourceQuest"] = 11660,	-- Horn of the Ancient Mariner
						["qg"] = 25476,	-- Waltor of Pal'ea
						["coord"] = { 32.3, 54.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Orabus the Helmsman slain
								["provider"] = { "n", 32576 },	-- Orabus the Helmsman
							}),
							i(37402),	-- Floodplain Vest
							i(37484),	-- Mendicant's Treads
							i(37543),	-- Pugnacious Collar
							i(37208),	-- Transborean Bracers
						},
					}),
					q(11894, {	-- Patching Up
						["sourceQuest"] = 11893,	-- The Power of the Elements
						["qg"] = 25849,	-- Fezzix Geartwist
						["coord"] = { 77.4, 36.9, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37388),	-- Reinforced Elastic Band
							i(37428),	-- Ring-Ridden Wrist Protectors
							i(37526),	-- Thin Dexterity Enhancing Tube
							i(37272),	-- Wizzlenob Shoulder Covers
						},
					}),
					q(11606, {	-- Patience is a Virtue that We Don't Need
						["sourceQuests"] = {
							11595,	-- The Defense of Warsong Hold
							11596,	-- The Defense of Warsong Hold
							11597,	-- The Defense of Warsong Hold
						},
						["qg"] = 25327,	-- Quartermaster Holgoth
						["coord"] = { 43.3, 55.3, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 Warsong Munitions
								["providers"] = {
									{ "i", 34709 },	-- Warsong Munitions
									{ "o", 187659 },	-- Warsong Munitions Crate
									{ "o", 187660 },	-- Warsong Munitions Crate
									{ "o", 187661 },	-- Warsong Munitions Crate
								},
							}),
						},
					}),
					q(11902, {	-- Pernicious Evidence
						["sourceQuest"] = 11901,	-- Military? What Military?
						["provider"] = { "o", 188085 },	-- Plagued Grain
						["coord"] = { 56.8, 55.5, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11609, {	-- Picking Up the Pieces
						["sourceQuest"] = 11607,	-- The Lost Spirits
						["provider"] = { "o", 187565 },	-- Elder Atkanok
						["coord"] = { 54.6, 35.7, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/6 Tuskarr Ritual Object
								["providers"] = {
									{ "i", 34713 },	-- Tuskarr Ritual Object
									{ "o", 187670 },	-- Tuskarr Ritual Object
									{ "o", 187671 },	-- Tuskarr Ritual Object
								},
							}),
						},
					}),
					q(11658, {	-- Plan B
						["sourceQuest"] = 11653,	-- Hah... You're Not So Big Now!
						["qg"] = 25477,	-- Crafty Wobblesprocket
						["coord"] = { 58.1, 18.3, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Warsong Outfit
								["provider"] = { "i", 34842 },	-- Warsong Outfit
								["crs"] = {
									25342,	-- Dead Caravan Guard
								},
							}),
							objective(2, {	-- 0/1 Warsong Banner
								["providers"] = {
									{ "i", 34690 },	-- Warsong Banner
									{ "o", 187577 },	-- Warsong Banner
								},
							}),
						},
					}),
					q(11897, {	-- Plug the Sinkholes
						["sourceQuest"] = 11889,	-- Death From Above
						["qg"] = 25816,	-- Sergeant Hammerhill
						["coord"] = { 56.3, 69.5, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(36885),	-- Marshwalker Chestpiece
							i(36887),	-- Mightstone Pauldrons
							i(36884),	-- Transborean Cover
							i(36886),	-- Westrift Leggings
						},
					}),
					q(11717, {	-- Pollen from the Source
						["sourceQuest"] = 11716,	-- The Wondrous Bloodspore
						["qg"] = 25381,	-- Bloodmage Laurith
						["coord"] = { 52.0, 52.5, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Bloodspore Moth Pollen
								["provider"] = { "i", 34976 },	-- Bloodspore Moth Pollen
								["crs"] = {
									25464,	-- Bloodspore Moth
									25498,	-- Aspatha the Broodmother
								},
							}),
						},
					}),
					q(11945, {	-- Preparing for the Worst
						["qg"] = 26213,	-- Utaik
						["coord"] = { 64.0, 45.7, BOREAN_TUNDRA },
						["maxReputation"] = { FACTION_THE_KALUAK, EXALTED },	-- The Kalu'ak, Exalted.
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/8 Kaskala Supplies
								["providers"] = {
									{ "i",  35711 },	-- Kaskala Supplies
									{ "o", 188164 },	-- Kaskala Supplies
								},
							}),
						},
					}),
					q(11587, {	-- Prison Break
						["sourceQuests"] = {
							11574,	-- Too Close for Comfort
							11575,	-- Nick of Time
						},
						["qg"] = 25262,	-- Librarian Donathan
						["coord"] = { 45.2, 33.3, BOREAN_TUNDRA },
					}),
					q(11594, {	-- Put Them to Rest
						["sourceQuest"] = 11591,	-- Report to Steeljaw's Caravan
						["qg"] = 25336,	-- Grunt Ragefist
						["coord"] = { 48.3, 19.3, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11941, {	-- Puzzling...
						["provider"] = { "i", 35648 },	-- Scintillating Fragment
						["crs"] = { 25719 },	-- Coldarra Spellbinder
					}),
					q(11697, {	-- Rats, Tinky Went into the Necropolis!
						["sourceQuest"] = 11694,	-- There's Something Going On In Those Caves
						["qg"] = 25705,	-- Bixie Wrenchshanker
						["coord"] = { 73.4, 18.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11712, {	-- Re-Cursive
						["sourceQuest"] = 11708,	-- The Mechagnomes
						["qg"] = 25747,	-- Jinky Wingnut
						["coord"] = { 57.4, 18.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(37517),	-- Chilled Pauldrons
							i(37234),	-- Layered Frost Hood
							i(37356),	-- Rhinohide Wristwraps
							i(37439),	-- Spiked Magmoth Gloves
						},
					}),
					q(11900, {	-- Reading the Meters
						["qg"] = 25314,	-- Archmage Berinand
						["coord"] = { 32.9, 34.3, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Nexus Geological Reading
								["provider"] = { "o", 188100 },	-- Coldarra Geological Monitor
							}),
							objective(2, {	-- 0/1 Southern Coldarra Reading
								["provider"] = { "o", 188101 },	-- Coldarra Geological Monitor
							}),
							objective(3, {	-- 0/1 Northern Coldarra Reading
								["provider"] = { "o", 188102 },	-- Coldarra Geological Monitor
							}),
							objective(4, {	-- 0/1 Western Coldarra Reading
								["provider"] = { "o", 188103 },	-- Coldarra Geological Monitor
							}),
						},
					}),
					q(11612, {	-- Reclaiming the Quarry
						["qg"] = 25292,	-- Etaruk
						["coord"] = { 54.2, 36.0, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/12 Beryl Treasure Hunter slain
								["provider"] = { "n", 25353 },	-- Beryl Treasure Hunter
							}),
						},
					}),
					q(11908, {	-- Reference Material
						["sourceQuest"] = 11902,	-- Pernicious Evidence
						["qg"] = 26084,	-- Jeremiah Hawning
						["coord"] = { 58.1, 62.9, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Fields, Factories and Workshops
								["providers"] = {
									{ "i", 35481 },	-- Fields, Factories and Workshops
									{ "o", 188120 },	-- Fields, Factories and Workshops
								},
							}),
						},
					}),
					q(11679, {	-- Reforging the Key
						["sourceQuest"] = 11671,	-- A Race Against Time
						["qg"] = 25262,	-- Librarian Donathan
						["coord"] = { 45.2, 33.3, BOREAN_TUNDRA },
					}),
					q(11618, {	-- Reinforcements Incoming...
						["sourceQuest"] = 11616,	-- Message to Hellscream
						["qg"] = 25237,	-- Garrosh Hellscream
						["coord"] = { 41.3, 53.5, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11591, {	-- Report to Steeljaw's Caravan
						["qg"] = 25326,	-- Overlord Bor'gorok
						["coord"] = { 49.6, 10.5, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(12035, {	-- Repurposed Technology
						["sourceQuest"] = 11908,	-- Reference Material
						["qg"] = 26084,	-- Jeremiah Hawning
						["coord"] = { 58.1, 62.9, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(37403),	-- Marshwalker Boots
							i(37482),	-- Mightstone Legplates
							i(37206),	-- Weathered Worker Cloak
							i(37417),	-- Westrift Handcovers
						},
					}),
					q(11681, {	-- Rescuing Evanor
						["sourceQuest"] = 11680,	-- Taking Wing
						["qg"] = 25356,	-- Warmage Anzim
						["coord"] = { 46.3, 37.3, BOREAN_TUNDRA },
						["groups"] = {
							i(37387),	-- Charred Treads
							i(37429),	-- Glimmering Ringmail Gloves
							i(37509),	-- Seething Waistguard
							i(37224),	-- Sweltering Belt
						},
					}),
					q(11638, {	-- Return My Remains
						["sourceQuest"] = 11637,	-- Kaganishu
						["qg"] = 25425,	-- Farseer Grimwalker's Spirit
						["coord"] = { 56.1, 9.1, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Farseer Grimwalker's Remains
								["providers"] = {
									{ "i", 34773 },	-- Farseer Grimwalker's Remains
									{ "o", 187673 },	-- Farseer Grimwalker's Remains
								},
							}),
							i(37047),	-- Branch of Everlasting Flame
							i(37528),	-- Dry Earth Circle
							i(37573, {	-- Idol of the Plainstalker
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(37049),	-- Lost Marksman's Rifle
							i(37574, {	-- Libram of Furious Blows
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(37575, {	-- Totem of the Tundra
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					q(11629, {	-- Return to the Spirit Talker
						["sourceQuest"] = 11649,	-- Motes of the Enraged
						["qg"] = 25376,	-- Imperean
						["coord"] = { 46.5, 9.3, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11689, {	-- Return with the Bad News
						["sourceQuest"] = 11687,	-- The Doctor and the Lich-Lord
						["qg"] = 25604,	-- Sage Highmesa
						["coord"] = { 74.6, 23.6, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37519),	-- Amberplate Headguard
							i(37074),	-- Greatmother's Talisman of Cleansing
							i(37354),	-- Reinforced Caribou-Hide Boots
							i(37529),	-- Shivering Healer's Ring
							i(37440),	-- Spiked Magmoth Chestpiece
						},
					}),
					q(11639, {	-- Revenge Upon Magmoth
						["sourceQuest"] = 11631,	-- Vision of Air
						["qg"] = 25374,	-- Ortrosh
						["coord"] = { 50.0, 10.1, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Magmoth Shaman slain
								["provider"] = { "n", 25428 },	-- Magmoth Shaman
							}),
							objective(2, {	-- 0/5 Magmoth Forager slain
								["provider"] = { "n", 25429 },	-- Magmoth Forager
							}),
							objective(3, {	-- 0/3 Magmoth Crusher slain
								["provider"] = { "n", 25434 },	-- Magmoth Crusher
							}),
							objective(4, {	-- 0/3 Mate of Magmothregar slain
								["provider"] = { "n", 25432 },	-- Mate of Magmothregar
							}),
							i(37479),	-- Amberplate Legguards
							i(37270),	-- Layered Frost Robes
							i(37353),	-- Reinforced Caribou-Hide Helm
							i(37441),	-- Spiked Magmoth Mantle
						},
					}),
					q(11888, {	-- Ride to Taunka'le Village
						["sourceQuests"] = {
							11595,	-- The Defense of Warsong Hold
							11596,	-- The Defense of Warsong Hold
							11597,	-- The Defense of Warsong Hold
						},
						["qg"] = 25978,	-- Ambassador Talonga
						["coord"] = { 41.7, 54.6, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11674, {	-- Sage Highmesa is Missing
						["qg"] = 25602,	-- Greatmother Taiga
						["coord"] = { 77.3, 36.8, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11957, {	-- Saragosa's End
						["sourceQuest"] = 11951,	-- Bait and Switch
						["qg"] = 26206,	-- Keristrasza
						["groups"] = {
							objective(1, {	-- 0/1 Saragosa's Corpse
								["provider"] = { "i", 35709 },	-- Saragosa's Corpse
								["cr"] = 26232,	-- Saragosa
							}),
							i(37456),	-- Cauterizing Chain Leggings
							i(37280),	-- Flame Hardened Waistband
							i(37322),	-- Flame Hardened Wristbindings
							i(37562),	-- Fury of the Crimson Drake
						},
					}),
					q(11713, {	-- Scouting the Sinkholes (A)
						["sourceQuest"] = 11873,	-- Give Fizzcrank the News
						["qg"] = 25780,	-- Abner Fizzletorque
						["coord"] = { 57.0, 20.1, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11684, {	-- Scouting the Sinkholes (H)
						["qg"] = 24702,	-- Greatfather Mahan
						["coord"] = { 77.0, 37.8, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11910, {	-- Secrets of the Ancients
						["qg"] = 25314,	-- Archmage Berinand
						["coord"] = { 32.9, 34.3, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/3 Glacial Splinter
								["provider"] = { "i", 35483 },	-- Glacial Splinter
								["cr"] = 25709,	-- Glacial Ancient
							}),
							objective(2, {	-- 0/3 Magic-Bound Splinter
								["provider"] = { "i", 35484 },	-- Magic-Bound Splinter
								["cr"] = 25707,	-- Magic-bound Ancient
							}),
						},
					}),
					q(11662, {	-- Seek Out Karuk!
						["sourceQuests"] = {
							11656,	-- Burn in Effigy
							11661,	-- Orabus the Helmsman
						},
						["qg"] = 25476,	-- Waltor of Pal'ea
						["coord"] = { 32.3, 54.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11663, {	-- Sharing Intelligence
						["sourceQuest"] = 11648,	-- The Art of Persuasion
						["qg"] = 25480,	-- Librarian Normantis
						["coord"] = { 46.3, 32.8, BOREAN_TUNDRA },
					}),
					q(11659, {	-- Shatter the Orbs!
						["sourceQuest"] = 11654,	-- The Spire of Blood
						["qg"] = 25516,	-- Snow Tracker Grumm
						["coord"] = { 87.5, 19.9, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11628, {	-- Shrouds of the Scourge
						["sourceQuest"] = 11894,	-- Patching Up
						["qg"] = 24703,	-- Chieftain Wintergale
						["coord"] = { 75.8, 37.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Scourged Mammoth Pelt
								["provider"] = { "i", 34775 },	-- Scourged Mammoth Pelt
								["cr"] = 25452,	-- Scourged Mammoth
							}),
						},
					}),
					q(11899, {	-- Souls of the Decursed
						["sourceQuest"] = 11895,	-- Master the Storm
						["qg"] = 25602,	-- Greatmother Taiga
						["coord"] = { 77.3, 36.8, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11961, {	-- Spirits Watch Over Us
						["sourceQuest"] = 11950,	-- Muahit's Wisdom
						["qg"] = 26218,	-- Elder Muahit
						["coord"] = { 67.2, 54.8, BOREAN_TUNDRA },
					}),
					q(11969, {	-- Springing the Trap
						["sourceQuest"] = 11967,	-- Mustering the Reds
						["qg"] = 26117,	-- Raelorasz
						["coord"] = { 33.3, 34.5, BOREAN_TUNDRA },
						["groups"] = {
							i(37080),	-- Crimson Will
							i(37076),	-- Fiery Prod
							i(37078),	-- Rod of the Crimson Keeper
							i(37564),	-- Scaled Flame Cloak
							i(37075),	-- Serrated Scale Shank
							i(37077),	-- Smoldering Talon
						},
					}),
					q(11677, {	-- Stop the Plague
						["sourceQuest"] = 11675,	-- A Proper Death
						["qg"] = 25604,	-- Sage Highmesa
						["coord"] = { 74.6, 23.6, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37507),	-- Chilled Shoulderplates
							i(37427),	-- Plainhunter's Waistband
							i(37391),	-- Rhinohide Mask
							i(37223),	-- Sweltering Handwraps
						},
					}),
					q(11564, {	-- Succulent Orca Stew
						["sourceQuest"] = 11562,	-- I'm Being Blackmailed By My Cleaner
						["qg"] = 25211,	-- Cleaver Bmurglbrm
						["coord"] = { 42.0, 13.1, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/7 Succulent Orca Blubber
								["provider"] = { "i", 34618 },	-- Succulent Orca Blubber
								["crs"] = {
									25203,	-- Glrggl
									25204,	-- Glimmer Bay Orca
								},
							}),
							i(39691),	-- Succulent Orca Stew
						},
					}),
					q(11644, {	-- Super Strong Metal Plates!
						["sourceQuest"] = 11642,	-- Tank Ain't Gonna Fix Itself
						["qg"] = 25475,	-- Mobu
						["coord"] = { 32.0, 54.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Super Strong Metal Plate
								["providers"] = {
									{ "i", 34786 },	-- Super Strong Metal Plate
									{ "o", 187684 },	-- Super Strong Metal Plate
									{ "o", 187685 },	-- Super Strong Metal Plate
									{ "o", 187686 },	-- Super Strong Metal Plate
									{ "o", 187687 },	-- Super Strong Metal Plate
								},
							}),
						},
					}),
					q(11566, {	-- Surrender... Not!
						["sourceQuest"] = 11565,	-- The Spare Suit
						["qg"] = 25197,	-- King Mrgl-Mrgl
						["coord"] = { 43.4, 13.9, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Claw of Claximus
								["provider"] = { "i", 34621 },	-- Claw of Claximus
								["cr"] = 25209,	-- Claximus
							}),
							i(37506),	-- Bogstrok Plate Gloves
							i(37215),	-- Lost Sea Oculus
							i(258220, {	-- Murloc Driftwood Hut (DECOR!)
								["timeline"] = { ADDED_12_0_0 },
							}),
							i(37426),	-- Rusty Mesh Leggings
							i(37392),	-- Soggy Hide Pauldrons
						},
					}),
					q(11944, {	-- Surrounded!
						["sourceQuest"] = 12086,	-- The Son of Karkut
						["qg"] = 26187,	-- Corporal Venn
						["coord"] = { 82.0, 46.4, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/7 Ziggurat Defender slain
								["provider"] = { "n", 26202 },	-- Ziggurat Defender
							}),
							i(37505),	-- Battle Leader's Breastplate
							i(37394),	-- Marshwalker Waistguard
							i(37424),	-- Plainhunter's Epaulets
							i(37214),	-- Sweltering Leggings
						},
					}),
					q(11913, {	-- Take No Chances
						["sourceQuest"] = 11902,	-- Pernicious Evidence
						["qg"] = 26085,	-- Wendy Darren
						["coord"] = { 58.2, 62.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(37481),	-- Chestguard of Salved Wounds
							i(37404),	-- Floodplain Cover
							i(37524),	-- Scout's Signet Ring
							i(37205),	-- Transborean Mantle
						},
					}),
					q(11611, {	-- Taken by the Scourge
						["sourceQuests"] = {
							11595,	-- The Defense of Warsong Hold
							11596,	-- The Defense of Warsong Hold
							11597,	-- The Defense of Warsong Hold
						},
						["qg"] = 25280,	-- Foreman Mortuus
						["coord"] = { 42.0, 56.1, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37403),	-- Marshwalker Boots
							i(37482),	-- Mightstone Legplates
							i(37206),	-- Weathered Worker Cloak
							i(37417),	-- Westrift Handcovers
						},
					}),
					q(11598, {	-- Taking Back Mightstone Quarry
						["sourceQuests"] = {
							11595,	-- The Defense of Warsong Hold
							11596,	-- The Defense of Warsong Hold
							11597,	-- The Defense of Warsong Hold
						},
						["qg"] = 25279,	-- Overlord Razgor
						["coord"] = { 43.1, 54.9, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 Nerub'ar slain
								["providers"] = {
									{ "n", 25382},	-- Nerub'ar Proxy
									{ "n", 24562},	-- Nerub'ar Invader
									{ "n", 24566},	-- Nerub'ar Skitterer
									{ "n", 25294},	-- Nerub'ar Web Lord
									{ "n", 25445},	-- Nerub'ar Corpse Harvester
									{ "n", 25451},	-- Nerub'ar Sky Darkener
								},
							}),
						},
					}),
					q(11680, {	-- Taking Wing
						["sourceQuest"] = 11679,	-- Reforging the Key
						["qg"] = 24795,	-- Surristrasz
						["coord"] = { 45.3, 34.4, BOREAN_TUNDRA },
					}),
					q(11642, {	-- Tank Ain't Gonna Fix Itself
						["sourceQuest"] = 11636,	-- Magic Carpet Ride
						["qg"] = 25329,	-- Annihilator Grek'lor
						["coord"] = { 32.2, 54.0, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11651, {	-- Tanks a lot...
						["sourceQuests"] = {
							11643,	-- Mobu's Pneumatic Tank Transjigamarig
							11644,	-- Super Strong Metal Plates!
						},
						["qg"] = 25475,	-- Mobu
						["coord"] = { 32.0, 54.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11599, {	-- Thassarian, My Brother
						["sourceQuests"] = {
							11897,	-- Plug the Sinkholes
							11927,	-- Word on the Street
						},
						["qg"] = 25251,	-- Leryssa
						["coord"] = { 58.7, 68.3, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12088, {	-- Thassarian, the Death Knight
						["sourceQuest"] = 11944,	-- Surrounded!
						["qg"] = 26187,	-- Corporal Venn
						["coord"] = { 82.0, 46.4, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11870, {	-- The Abandoned Reach
						["sourceQuest"] = 11869,	-- Happy as a Clam
						["qg"] = 25810,	-- Hierophant Cenius
						["coord"] = { 57.3, 44.0, BOREAN_TUNDRA },
					}),
					q(11648, {	-- The Art of Persuasion
						["sourceQuest"] = 11646,	-- The Borean Inquisition
						["qg"] = 25480,	-- Librarian Normantis
						["coord"] = { 46.3, 32.8, BOREAN_TUNDRA },
					}),
					q(11892, {	-- The Assassination of Harold Lane
						["sourceQuests"] = {
							11866,	-- Ears of Our Enemies
							11884,	-- Nedar, Lord of the Rhinos...
							11879,	-- Kaw the Mammoth Destroyer
							11868,	-- The Culler Cometh
							11872,	-- The Nefarious Clam Master...
						},
						["qg"] = 25809,	-- Archdruid Lathorius
						["coord"] = { 57.1, 44.3, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Harold Lane slain
								["provider"] = { "n", 25804 },	-- Harold Lane
							}),
							ach(561),	-- D.E.H.T.A's Little P.I.T.A.
							i(38250),	-- Activist's Signet of Blasting
							i(38252),	-- Band of Wholesome Preservation
							i(38251),	-- Ring of Indignant Rage
						},
					}),
					q(11630, {	-- The Bad Earth
						["sourceQuest"] = 11628,	-- Shrouds of the Scourge
						["qg"] = 24703,	-- Chieftain Wintergale
						["coord"] = { 75.8, 37.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Scourged Earth
								["providers"] = {
									{ "i", 34774 },	-- Scourged Earth
									{ "o", 187677 },	-- Scourged Earth
								},
							}),
						},
					}),
					q(11646, {	-- The Borean Inquisition
						["sourceQuest"] = 11590,	-- Abduction
						["qg"] = 25262,	-- Librarian Donathan
						["coord"] = { 45.2, 33.3, BOREAN_TUNDRA },
					}),
					q(11943, {	-- The Cell
						["sourceQuest"] = 11941,	-- Puzzling...
						["qg"] = 26117,	-- Raelorasz
						["coord"] = { 33.3, 34.5, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Energy Core
								["provider"] = { "i", 35669 },	-- Energy Core
								["cr"] = 25712,	-- Warbringer Goredrak
							}),
							objective(2, {	-- 0/1 Prison Casing
								["provider"] = { "i", 35668 },	-- Prison Casing
								["crs"] = {
									25716,	-- General Cerulean
									52923,	-- Dragonspawn Supplicant
								},
							}),
						},
					}),
					q(11868, {	-- The Culler Cometh
						["sourceQuest"] = 11865,	-- Unfit for Death
						["qg"] = 25811,	-- Zaza
						["coord"] = { 56.7, 44.0, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Karen "I Don't Caribou" the Culler slain
								["provider"] = { "n", 25803 },	-- Karen "I Don't Caribou" the Culler
							}),
							i(36998),	-- Assailant Shroud
							i(37002),	-- Binder's Links
							i(36939),	-- Nymph Stockings
							i(37004),	-- Plainwatcher Legplates
						},
					}),
					q(11706, {	-- The Collapse
						["sourceQuest"] = 11695,	-- The Horn of Elemental Fury
						["qg"] = 24730,	-- Wind Tamer Barah
						["coord"] = { 75.5, 35.7, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37516),	-- Chilled Greaves
							i(37437),	-- Plainhunter's Chestpiece
							i(37375),	-- Rhinohide Gloves
							i(37228),	-- Sweltering Cuffs
						},
					}),
					q(11595, {	-- The Defense of Warsong Hold
						["description"] = "This version of the quest is only available if you have completed the quest 'The Lord of Blackrock' from the Head of Nefarian and do NOT have the Scarab Lord title.",
						["sourceQuests"] = {
							11585,	-- Hellscream's Vigil
							11586,	-- Hellscream's Vigil
						},
						["qg"] = 25256,	-- High Overlord Saurfang
						["coord"] = { 41.3, 53.6, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11596, {	-- The Defense of Warsong Hold
						["description"] = "This version of the quest is only available if you have NOT completed the quest 'The Lord of Blackrock' from the Head of Nefarian and do NOT have the Scarab Lord title.",
						["sourceQuests"] = {
							11585,	-- Hellscream's Vigil
							11586,	-- Hellscream's Vigil
						},
						["qg"] = 25256,	-- High Overlord Saurfang
						["coord"] = { 41.3, 53.6, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11597, {	-- The Defense of Warsong Hold
						["description"] = "This version of the quest is only available if you have the Scarab Lord title.",
						["sourceQuests"] = {
							11585,	-- Hellscream's Vigil
							11586,	-- Hellscream's Vigil
						},
						["qg"] = 25256,	-- High Overlord Saurfang
						["coord"] = { 41.3, 53.6, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11687, {	-- The Doctor and the Lich-Lord
						["sourceQuest"] = 11678,	-- Find Bristlehorn
						["qg"] = 25658,	-- Longrunner Bristlehorn
						["coord"] = { 69.7, 12.6, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Doctor Razorgrin slain
								["provider"] = { "n", 25678 },	-- Doctor Razorgrin
							}),
							objective(2, {	-- 0/1 Lich-Lord Chillwinter slain
								["provider"] = { "n", 25682 },	-- Lich-Lord Chillwinter
							}),
						},
					}),
					q(11626, {	-- The Emissary
						["sourceQuest"] = 11625,	-- The Tirdent of Naz'jan
						["qg"] = 25450,	-- Veehja
						["coord"] = { 43.6, 80.55, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Leviroth slain
								["provider"] = { "n", 26452 },	-- Leviroth
							}),
							i(37213),	-- Iceflow Wristwraps
							i(37487),	-- Seabone Legplates
							i(37423),	-- Sharkproof Coif
							i(37396),	-- Whalehunter Gloves
						},
					}),
					q(11929, {	-- The Fall of Taunka'le Village
						["sourceQuest"] = 11898,	-- Breaking Through
						["qg"] = 24703,	-- Chieftain Wintergale
						["coord"] = { 75.8, 37.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11798, {	-- The Gearmaster
						["sourceQuest"] = 11788,	-- Lefty Loosey, Righty Tighty
						["qg"] = 25747,	-- Jinky Wingnut
						["coord"] = { 57.4, 18.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(37442),	-- Chilled Mail Boots
							i(37530),	-- Icy Ripper Fang
							i(37274),	-- Mender's Cover
							i(37352),	-- Regenerative Hide Harness
						},
					}),
					q(11685, {	-- The Heart of the Elements
						["sourceQuest"] = 11684,	-- Scouting the Sinkholes
						["qg"] = 24702,	-- Greatfather Mahan
						["coord"] = { 77.0, 37.8, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Elemental Heart
								["provider"] = { "i", 34956 },	-- Elemental Heart
								["cr"] = 25715,	-- Frozen Elemental
							}),
						},
					}),
					q(11605, {	-- The Honored Ancestors
						["provider"] = { "o", 187565 },	-- Elder Atkanok
						["coord"] = { 54.6, 35.7, BOREAN_TUNDRA },
					}),
					q(11593, {	-- The Honored Dead
						["qg"] = 25336,	-- Grunt Ragefist
						["coord"] = { 48.3, 19.3, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11695, {	-- The Horn of Elemental Fury
						["sourceQuest"] = 11685,	-- The Heart of the Elements
						["qg"] = 24730,	-- Wind Tamer Barah
						["coord"] = { 75.5, 35.7, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Upper Horn Half
								["providers"] = {
									{ "i", 34964 },	-- Upper Horn Half
									{ "o", 187886 },	-- Burblegobble's Bauble
								},
							}),
							objective(2, {	-- 0/1 Lower Horn Half
								["providers"] = {
									{ "i", 34963 },	-- Lower Horn Half
									{ "o", 187885 },	-- Gurgleboggle's Bauble
								},
							}),
						},
					}),
					q(11794, {	-- The Hunt is On
						["sourceQuest"] = 11793,	-- Further Investigation
						["qg"] = 25826,	-- Vindicator Yaala
						["coord"] = { 58.5, 67.3, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Cultist in docks defeated
								["provider"] = { "n", 25827 },	-- Tom Hegger
							}),
							objective(2, {	-- 0/1 Cultist in jail defeated
								["provider"] = { "n", 25828 },	-- Guard Mitchells
							}),
							objective(3, {	-- 0/1 Cultist in kitchen defeated
								["provider"] = { "n", 25248 },	-- "Salty" John Thorpe
							}),
							i(37405),	-- Marshwalker Pauldrons
							i(37415),	-- Tundrastrider Ringmail
							i(37480),	-- Mightstone Helm
							i(37204),	-- Transborean Leggings
						},
					}),
					q(11720, {	-- The Invasion of Gammoth
						["sourceQuest"] = 11719,	-- A Suitable Test Subject
						["qg"] = 25381,	-- Bloodmage Laurith
						["coord"] = { 52.0, 52.5, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11600, {	-- The Late William Allerton
						["sourceQuest"] = 11599,	-- Thassarian, My Brother
						["qg"] = 25385,	-- William Allerton
						["coord"] = { 56.0, 55.4, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(37483),	-- Seabone Heaume
							i(37207),	-- Seafarer Boots
							i(37418),	-- Seaspeaker Legguards
							i(37556),	-- Talisman of the Tundra
						},
					}),
					q(12157, {	-- The Lost Courier
						["qg"] = 26186,	-- Private Casey
						["coord"] = { 82.0, 46.4, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11607, {	-- The Lost Spirits
						["sourceQuest"] = 11605,	-- The Honored Ancestors
						["provider"] = { "o", 187565 },	-- Elder Atkanok
						["coord"] = { 54.6, 35.7, BOREAN_TUNDRA },
					}),
					q(11708, {	-- The Mechagnomes
						["sourceQuest"] = 11707,	-- Distress Call
						["qg"] = 25590,	-- Fizzcrank Fullthrottle
						["coord"] = { 56.9, 18.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11872, {	-- The Nefarious Clam Master...
						["sourceQuest"] = 11871,	-- Not On Our Watch
						["qg"] = 25838,	-- Hierophant Liandra
						["coord"] = { 57.7, 55.1, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Clam Master K slain
								["provider"] = { "n", 25800 },	-- Clam Master K
							}),
							i(37019),	-- Borean Ward
							i(37015),	-- Dowsing Rod
							i(37018),	-- G.E.H.T.A.
							i(37017),	-- Nimble Blade
							i(37014),	-- Rod of Poacher Punishment
							i(37016),	-- Wand of the Keeper
						},
					}),
					q(11652, {	-- The Plains of Nasam
						["sourceQuest"] = 11651,	-- Tanks a lot...
						["qg"] = 25329,	-- Annihilator Grek'lor
						["coord"] = { 32.2, 54.0, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37476),	-- Grek'lor's Breastplate of Bloodrage
							i(37276),	-- Grek'lor's Loungewear
							i(37446),	-- Tank Commander's Treads
							i(37325),	-- Warsong Scout Spaulders
						},
					}),
					q(11893, {	-- The Power of the Elements
						["sourceQuest"] = 11881,	-- Load'er Up!
						["qg"] = 25983,	-- Dorain Frosthoof
						["coord"] = { 77.6, 36.9, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11797, {	-- The Siege
						["sourceQuest"] = 11727,	-- A Time for Heroes
						["qg"] = 25816,	-- Sergeant Hammerhill
						["coord"] = { 56.3, 69.5, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Crypt Crawler slain
								["provider"] = { "n", 25227 },	-- Crypt Crawler
							}),
							i(36883),	-- Combatant Greatsword
							i(36881),	-- Medic's Morning Star
							i(36879),	-- Soldier's Spiked Mace
							i(38208),	-- Valiance Longbow
							i(36880),	-- Vicious Spellblade
							i(36878),	-- Writhing Longstaff
						},
					}),
					q(11624, {	-- The Sky Will Know
						["sourceQuest"] = 12486,	-- To Bor'gorok Outpost, Quickly!
						["qg"] = 25339,	-- Spirit Talker Snarlfang
						["coord"] = { 50.2, 9.7, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(12086, {	-- The Son of Karkut
						["sourceQuest"] = 11932,	-- Cowards and Fools
						["qg"] = 26169,	-- Ataika
						["coord"] = { 63.8, 46.1, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11565, {	-- The Spare Suit
						["sourceQuest"] = 11563,	-- Grmmurggll Mrllggrl Glrggl!!!
						["qg"] = 25205,	-- Mrmrglmr
						["coord"] = { 41.9, 12.7, BOREAN_TUNDRA },
					}),
					q(11907, {	-- The Sub-Chieftains
						["sourceQuest"] = 11896,	-- Weakness to Lightning
						["qg"] = 25982,	-- Sage Earth and Sky
						["coord"] = { 77.2, 38.4, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Twonky slain
								["provider"] = { "n", 25830 },	-- Twonky
							}),
							objective(2, {	-- 0/1 ED-210 slain
								["provider"] = { "n", 25831 },	-- ED-210
							}),
							objective(3, {	-- 0/1 Max Blasto slain
								["provider"] = { "n", 25832 },	-- Max Blasto
							}),
							objective(4, {	-- 0/1 The Grinder slain
								["provider"] = { "n", 25833 },	-- The Grinder
							}),
							i(37054),	-- Frostbiter
							i(37231),	-- Frostspeaker Collar
							i(37073),	-- Hungering Greatstaff
							i(37072),	-- Jagged Icefist
							i(37357),	-- Shivering Healer's Cloak
						},
					}),
					q(11968, {	-- The Tides Turn
						["sourceQuest"] = 11961,	-- Spirits Watch Over Us
						["qg"] = 26218,	-- Elder Muahit
						["coord"] = { 67.2, 54.8, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Heigarr the Horrible slain
								["provider"] = { "n", 26266 },	-- Heigarr the Horrible
							}),
							i(37030),	-- Blubber Grinder
							i(37032),	-- Edge of the Tuskarr
							i(37029),	-- Fin Carver
							i(37033),	-- Manual of the Tides
							i(37031),	-- Zook's Walking Stick
						},
					}),
					q(11625, {	-- The Trident of Naz'jan
						["sourceQuest"] = 11620,	-- A Father's Words
						["qg"] = 25450,	-- Veehja
						["coord"] = { 43.6, 80.55, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/1 Trident of Naz'jan
								["provider"] = { "i", 35774 },	-- Trident of Naz'jan
								["cr"] = 26451,	-- Ragnar Drakkarlund
							}),
						},
					}),
					q(11729, {	-- The Ultrasonic Screwdriver
						["provider"] = { "i", 34984 },	-- The Ultrasonic Screwdriver
						["races"] = ALLIANCE_ONLY,
						["crs"] = {
							25753,	-- Sentry-Bot 57-K
							25752,	-- Scavenge-bot 004-A8
							25758,	-- Defendo-tank 66D
							25793,	-- 55-D Collect-A-Tron
						},
					}),
					q(11686, {	-- The Warsong Farms
						["sourceQuest"] = 11618,	-- Reinforcements Incoming...
						["qg"] = 25437,	-- Shadowstalker Ickoris
						["coord"] = { 38.0, 52.5, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11716, {	-- The Wondrous Bloodspore
						["qg"] = 25381,	-- Bloodmage Laurith
						["coord"] = { 52.0, 52.5, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Bloodspore Carpel
								["providers"] = {
									{ "i", 34974 },	-- Bloodspore Carpel
									{ "o", 187902 },	-- Bloodspore Carpel
								},
							}),
						},
					}),
					q(11561, {	-- Them!
						["sourceQuest"] = 11559,	-- Winterfin Commerce
						["qg"] = 25199,	-- Brglmurgl
						["coord"] = { 42.8, 13.6, BOREAN_TUNDRA },
						["groups"] = {
							objective(1, {	-- 0/15 Winterfin murlocs slain
								["providers"] = {
									{ "n", 25217},	-- Winterfin Warrior
									{ "n", 25215},	-- Winterfin Shorestriker
									{ "n", 25216},	-- Winterfin Oracle
								},
							}),
						},
					}),
					q(11694, {	-- There's Something Going On In Those Caves
						["sourceQuest"] = 11693,	-- Oh Great... Plagued Magnataur!
						["qg"] = 25705,	-- Bixie Wrenchshanker
						["coord"] = { 73.4, 18.7, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(37507),	-- Chilled Shoulderplates
							i(37427),	-- Plainhunter's Waistband
							i(37391),	-- Rhinohide Mask
							i(37223),	-- Sweltering Handwraps
						},
					}),
					q(12486, {	-- To Bor'gorok Outpost, Quickly!
						["sourceQuests"] = {
							11595,	-- The Defense of Warsong Hold
							11596,	-- The Defense of Warsong Hold
							11597,	-- The Defense of Warsong Hold
						},
						["qg"] = 25272,	-- Sauranok the Mystic
						["coord"] = { 41.4, 53.7, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11574, {	-- Too Close For Comfort
						["sourceQuests"] = {
							11595,	-- The Defense of Warsong Hold
							11596,	-- The Defense of Warsong Hold
							11597,	-- The Defense of Warsong Hold
						},
						["qg"] = 25247,	-- Endorah
						["coord"] = { 41.7, 54.7, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(12117, {	-- Travel to Moa'ki Harbor
						["sourceQuest"] = 11968,	-- The Tides Turn
						["qg"] = 28382,	-- Hotawa
						["coord"] = { 67.2, 54.8, BOREAN_TUNDRA },
						["isBreadcrumb"] = true,
						["groups"] = {
							i(37546),	-- Choker of the Northern Wind
							i(37566),	-- Durable Worghide Cape
							i(37319),	-- Grips of the Windswept Plains
							i(37283),	-- Wandering Healer's Kilt
						},
					}),
					q(11733, {	-- Traversing the Rift
						["sourceQuest"] = 11682,	-- Dragonspeak
						["qg"] = 24795,	-- Surristrasz
						["coord"] = { 45.3, 34.4, BOREAN_TUNDRA },
					}),
					q(11722, {	-- Trophies of Gammoth
						["sourceQuest"] = 11721,	-- Gammothra the Tormentor
						["qg"] = 25380,	-- Primal Mighthorn
						["coord"] = { 52.1, 52.8, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37405),	-- Marshwalker Pauldrons
							i(37480),	-- Mightstone Helm
							i(37204),	-- Transborean Leggings
							i(37415),	-- Tundrastrider Ringmail
						},
					}),
					q(11865, {	-- Unfit for Death
						["sourceQuest"] = 11864,	-- A Mission Statement
						["qg"] = 25811,	-- Zaza
						["coord"] = { 56.7, 44.0, BOREAN_TUNDRA },
					}),
					q(11614, {	-- Untold Truths
						["sourceQuest"] = 11598,	-- Taking Back Mightstone Quarry
						["qg"] = 25394,	-- Shadowstalker Barthus
						["coord"] = { 43.2, 55.0, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11714, {	-- Vermin Extermination
						["sourceQuest"] = 11711,	-- Coward Delivery... Under 30 Minutes or it's Free
						["qg"] = 25440,	-- Scout Tungok
						["coord"] = { 52.9, 51.6, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Bloodspore Harvester slain
								["provider"] = { "n", 25467 },	-- Bloodspore Harvester
							}),
							objective(2, {	-- 0/5 Bloodspore Firestarter slain
								["provider"] = { "n", 25470 },	-- Bloodspore Firestarter
							}),
							objective(3, {	-- 0/2 Bloodspore Roaster slain
								["provider"] = { "n", 25468 },	-- Bloodspore Roaster
							}),
							i(37481),	-- Chestguard of Salved Wounds
							i(37404),	-- Floodplain Cover
							i(37524),	-- Scout's Signet Ring
							i(37205),	-- Transborean Mantle
						},
					}),
					q(11654, {	-- The Spire of Blood
						["provider"] = { "i", 34815 },	-- Vial of Fresh Blood
						["races"] = HORDE_ONLY,
						["crs"] = { 26115 },	-- Darkfallen Bloodbearer
					}),
					q(11631, {	-- Vision of Air
						["sourceQuest"] = 11629,	-- Return to the Spirit Talker
						["qg"] = 25339,	-- Spirit Talker Snarlfang
						["coord"] = { 50.2, 9.7, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37442),	-- Chilled Mail Boots
							i(37530),	-- Icy Ripper Fang
							i(37274),	-- Mender's Cover
							i(37352),	-- Regenerative Hide Harness
						},
					}),
					warchiefscommand(q(28711, {	-- Warchief's Command: Borean Tundra! [7.3.5+] / Warchief's Command: Northrend!
						["timeline"] = { ADDED_4_0_3 },
						["isBreadcrumb"] = true,
						-- #if BEFORE 7.3.5
						-- Cataclysm: Minimum is level 68. (TODO: Confirm this.)
						-- Cataclysm: Maximum is level 77. (TODO: Test max level)
						["lvl"] = { 68, 77 },
						-- #endif
					})),
					q(11592, {	-- We Strike!
						["qg"] = 25335,	-- Longrunner Proudhoof
						["coord"] = { 48.3, 19.7, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37271),	-- Dusk Watcher's Belt
							i(37393),	-- Shadewrap Gloves
							i(37425),	-- Tundrastrider Boots
							i(37557),	-- Warsong's Fervor
						},
					}),
					q(11896, {	-- Weakness to Lightning
						["sourceQuest"] = 11895,	-- Master the Storm
						["qg"] = 25982,	-- Sage Earth and Sky
						["coord"] = { 77.2, 38.4, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11963, {	-- Weapons for Farshire
						["sourceQuest"] = 11962,	-- One Last Delivery
						["qg"] = 25235,	-- Hilda Stoneforge
						["coord"] = { 57.3, 66.6, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11890, {	-- What Are They Up To?
						["sourceQuest"] = 11888,	-- Ride to Taunka'le Village
						["qg"] = 25982,	-- Sage Earth and Sky
						["coord"] = { 77.2, 38.4, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11632, {	-- What the Cold Wind Brings...
						["description"] = "Must kill |cFFFFD700Ith'rix the Harvester|r during the Warsong Hold attack, then loot the carapace.",
						["provider"] = { "i", 34777 },	-- Ith'rix's Hardened Carapace
						["coord"] = { 43.1, 56.7, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(37505),	-- Battle Leader's Breastplate
							i(37394),	-- Marshwalker Waistguard
							i(37424),	-- Plainhunter's Epaulets
							i(37214),	-- Sweltering Leggings
						},
					}),
					q(11710, {	-- What's the Matter with the Transmatter?
						["sourceQuest"] = 11708,	-- The Mechagnomes
						["qg"] = 25702,	-- Mordle Cogspinner
						["coord"] = { 57.5, 18.6, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 Fizzcrank Spare Parts
								["providers"] = {
									{ "i", 34972 },	-- Fizzcrank Spare Parts
									{ "o", 187897 },	-- Fizzcrank Spare Parts
									{ "o", 187898 },	-- Fizzcrank Spare Parts
									{ "o", 187899 },	-- Fizzcrank Spare Parts
									{ "o", 187900 },	-- Fizzcrank Spare Parts
									{ "o", 187901 },	-- Fizzcrank Spare Parts
								},
							}),
						},
					}),
					q(11634, {	-- Wind Master To'bor
						["sourceQuest"] = 11602,	-- Cutting Off the Source
						["qg"] = 25279,	-- Overlord Razgor
						["coord"] = { 43.1, 54.9, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
					}),
					q(11559, {	-- Winterfin Commerce
						["sourceQuest"] = 11571,	-- Learning to Communicate
						["qg"] = 25197,	-- King Mrgl-Mrgl
						["coord"] = { 43.5, 13.9, BOREAN_TUNDRA },
					}),
					q(11927, {	-- Word on the Street
						["sourceQuest"] = 11897,	-- Plug the Sinkholes
						["qg"] = 26155,	-- Mark Hanes
						["coord"] = { 56.7, 69.5, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11942, {	-- Words of Power (A)
						["sourceQuest"] = 11938,	-- Buying Some Time
						["qg"] = 26170,	-- Thassarian
						["coord"] = { 84.7, 41.6, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 High Priest Andorath's Scroll
								["provider"] = { "i", 35355 },	-- High Priest Andorath's Scroll
								["cr"] = 25392,	-- High Priest Andorath
							}),
							objective(2, {	-- 0/1 High Priest Naferset's Scroll
								["provider"] = { "i", 35353 },	-- High Priest Naferset's Scroll
								["cr"] = 26076,	-- High Priest Naferset
							}),
							objective(3, {	-- 0/1 High Priest Talet-Kha's Scroll
								["provider"] = { "i", 35354 },	-- High Priest Talet-Kha's Scroll
								["cr"] = 26073,	-- High Priest Talet-Kha
							}),
						},
					}),
					q(11640, {	-- Words of Power (H)
						["sourceQuest"] = 11633,	-- Blending In
						["qg"] = 24703,	-- Chieftain Wintergale
						["coord"] = { 75.8, 37.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 High Priest Naferset's Scroll
								["provider"] = { "i", 35353 },	-- High Priest Naferset's Scroll
								["cr"] = 26076,	-- High Priest Naferset
							}),
							objective(2, {	-- 0/1 High Priest Talet-Kha's Scroll
								["provider"] = { "i", 35354 },	-- High Priest Talet-Kha's Scroll
								["cr"] = 26073,	-- High Priest Talet-Kha
							}),
							objective(3, {	-- 0/1 High Priest Andorath's Scroll
								["provider"] = { "i", 35355 },	-- High Priest Andorath's Scroll
								["cr"] = 25392,	-- High Priest Andorath
							}),
						},
					}),
				}),
				n(RARES, {
					n(32358, {	-- Fumblub Gearwind
						["coords"] = {
							{ 67.0, 23.0, BOREAN_TUNDRA },
							{ 63.6, 28.4, BOREAN_TUNDRA },
							{ 69.6, 31.4, BOREAN_TUNDRA },
						},
						["groups"] = {
							i(44666),	-- Fumblub's Seat Cushion
						},
					}),
					n(32361, {	-- Icehorn
						["coords"] = {
							{ 81.4, 31.4, BOREAN_TUNDRA },
							{ 91.6, 32.6, BOREAN_TUNDRA },
							{ 85.8, 34.6, BOREAN_TUNDRA },
							{ 88.6, 39.8, BOREAN_TUNDRA },
							{ 80.6, 46.2, BOREAN_TUNDRA },
							{ 84.6, 46.8, BOREAN_TUNDRA },
						},
						["groups"] = {
							i(44667),	-- Mammoth-Hair Crown
						},
					}),
					n(32357, {	-- Old Crystalbark
						["coords"] = {
							{ 21.0, 30.0, BOREAN_TUNDRA },
							{ 23.0, 27.0, BOREAN_TUNDRA },
							{ 33.8, 30.8, BOREAN_TUNDRA },
						},
						["groups"] = {
							i(44649),	-- Crystalbark's Toenail
						},
					}),
				}),
				-- #if AFTER 6.2.2.20444
				n(TREASURES, {
					o(244447, {	-- White Murloc Egg
						["description"] = "Found beneath Riplash Ruins. There is an obscured underwater cave outside the northeastern end of the ruins. Two white murloc eggs can be found in the end of the cave, but only the one on the ground can be looted.",
						["coord"] = { 56.0, 88.0, BOREAN_TUNDRA },
						["timeline"] = { ADDED_6_2_2 },
						["groups"] = {
							i(22780),	-- White Murloc Egg (Terky)
						},
					}),
				}),
				-- #endif
				n(VENDORS, {
					n(25206, {	-- Ahlurglgr <Clam Vendor>
						["coord"] = { 43.0, 13.8, BOREAN_TUNDRA },
						["groups"] = {
							i(258220, {	-- Murloc Driftwood Hut (DECOR!)
								["timeline"] = { ADDED_12_0_0 },
							}),
							i(36783, {	-- Northsea Pearl
								["cost"] = { { "i", 34597, 30 } },	-- 30x Winterfin Clam
							}),
							i(37462, {	-- Sea King's Crown
								["cost"] = { { "i", 34597, 30 } },	-- 30x Winterfin Clam
							}),
							i(36784, {	-- Siren's Tear
								["cost"] = { { "i", 34597, 100 } },	-- 100x Winterfin Clam
								["isLimited"] = true,
							}),
							i(37461, {	-- Tidebreaker Trident
								["cost"] = { { "i", 34597, 50 } },	-- 50x Winterfin Clam
							}),
							i(37463, {	-- Winterfin Patch of Honor
								["cost"] = { { "i", 34597, 30 } },	-- 30x Winterfin Clam
							}),
						},
					}),
					n(27012, {	-- Beem Goldsprocket <Trade Goods>
						["coord"] = { 57.7, 72.32, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["sym"] = {
							{ "select","itemID",
								38426,	-- Eternium Thread
							},
						},
					}),
					n(26941, {	-- Brokkan Bear-Arms <Trade Goods>
						["coord"] = { 41.34, 34.61, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["sym"] = {
							{ "select","itemID",
								38426,	-- Eternium Thread
							},
						},
					}),
					n(35131, {	-- Durgan Thunderbeak <Gryphon Keeper>
						["coord"] = { 58.9, 68.1, BOREAN_TUNDRA },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(25471),	-- Ebon Gryphon (MOUNT!)
							i(25470),	-- Golden Gryphon (MOUNT!)
							i(25472),	-- Snowy Gryphon (MOUNT!)
							i(25473),	-- Swift Blue Gryphon (MOUNT!)
							i(25528),	-- Swift Green Gryphon (MOUNT!)
							i(25529),	-- Swift Purple Gryphon (MOUNT!)
							i(25527),	-- Swift Red Gryphon (MOUNT!)
						},
					}),
					n(32565, bubbleDownSelf({ ["races"] = HORDE_ONLY, }, {	-- Gara Skullcrush <Horde Expedition Quartermaster>
						["coord"] = { 41.4, 53.7, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = bubbleDownClassicRep(FACTION_HORDE_EXPEDITION, {
							{		-- Neutral
							}, {	-- Friendly
							}, {	-- Honored
							}, {	-- Revered
								i(38452),	-- Bulwark of the Warchief
								i(38460),	-- Charged Wand of the Cleft
								i(38458),	-- Darkspear Orb
								i(38456),	-- Sin'dorei Recurve Bow
								i(38454),	-- Warsong Punisher
								i(38461),	-- Warsong Shanker
								i(38462),	-- Warsong Stormshield
							}, {	-- Exalted
								i(50373, {	-- Arcanum of the Savage Gladiator
									["timeline"] = { REMOVED_5_0_4 },
									["filterID"] = CONSUMABLES,
								}),
								i(44938, {	-- Plans: Titanium Plating [H] (RECIPE!)
									["timeline"] = { ADDED_3_0_8 },
								}),
								i(44502),	-- Schematic: Mechano-Hog (RECIPE!)
							},
						}),
					})),
					-- #if AFTER CATA
					n(27147, {	-- Librarian Erickson <Enchanting Supplies>
						["coord"] = { 46.7, 32.5, BOREAN_TUNDRA },
					}),
					-- #endif
					n(27142, {	-- Librarian Jeffers <Jewelcrafting Supplies>
						["coord"] = { 46.26, 32.84, BOREAN_TUNDRA },
					}),
					n(27139, {	-- Librarian Whitley <Wands>
						["coord"] = { 46.4, 32.6, BOREAN_TUNDRA },
						["groups"] = {
							i(40019),	-- Wand of Amber
							i(40021),	-- Wand of Crystal
							i(40020),	-- Wand of Jade
							i(40018),	-- Wand of Onyx
						},
					}),
					n(32564, bubbleDownSelf({ ["races"] = ALLIANCE_ONLY, }, {	-- Logistics Officer Silverstone <Alliance Vanguard Quartermaster>
						["coord"] = { 57.7, 66.4, BOREAN_TUNDRA },
						["groups"] = bubbleDownClassicRep(FACTION_ALLIANCE_VANGUARD, {
							{		-- Neutral
							}, {	-- Friendly
							}, {	-- Honored
							}, {	-- Revered
								i(38464),	-- Gnomish Magician's Quill
								i(38455),	-- Hammer of the Alliance Vanguard
								i(38463),	-- Lordaeron's Resolve
								i(38459),	-- Orb of the Eastern Kingdons
								i(38457),	-- Sawed-Off Hand Cannon
								i(38453),	-- Shield of the Lion-Hearted
								i(38465),	-- Vanguard Soldier's Dagger
							}, {	-- Exalted
								i(50372, {	-- Arcanum of the Savage Gladiator
									["timeline"] = { REMOVED_5_0_4 },
									["filterID"] = CONSUMABLES,
								}),
								i(44937, {	-- Plans: Titanium Plating [A] (RECIPE!)
									["timeline"] = { ADDED_3_0_8 },
								}),
								i(44503),	-- Schematic: Mekgineer's Chopper (RECIPE!)
							},
						}),
					})),
					n(26697, {	-- Tewah Chillmane <Leather Armor Merchant>
						["coord"] = { 76.6, 37.2, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(42084),	-- Snowhide Belt
							i(42092),	-- Snowhide Bracers
							i(42094),	-- Snowhide Cap
							i(42088),	-- Snowhide Hoof-Warmers
							i(42097),	-- Snowhide Mitts
							i(42098),	-- Snowhide Pants
							i(42099),	-- Snowhide Vest
						},
					}),
					n(35132, {	-- Tohfo Skyhoof <Wind Rider Keeper>
						["coord"] = { 42.2, 55.4, BOREAN_TUNDRA },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(25475),	-- Blue Wind Rider (MOUNT!)
							i(25476),	-- Green Wind Rider (MOUNT!)
							i(25532),	-- Swift Yellow Wind Rider (MOUNT!)
							i(25531),	-- Swift Green Wind Rider (MOUNT!)
							i(25533),	-- Swift Purple Wind Rider (MOUNT!)
							i(25477),	-- Swift Red Wind Rider (MOUNT!)
							i(25474),	-- Tawny Wind Rider (MOUNT!)
						},
					}),
					n(
					-- #if AFTER 7.3.5
					129141,	-- Tonraq <Spearcrafter>
					-- #else
					27188,	-- Tonraq <Spearcrafter>
					-- #endif
					{
						["coord"] = { 77.8, 52.2, BOREAN_TUNDRA },
						["groups"] = {
							i(39987),	-- Tuskarr Fishing Spear
							i(39995, {	-- Tuskarr Javelin
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
				}),
				n(ZONE_DROPS, {
					i(140785, {	-- Hardened Circuitboard Plating
						["coords"] = {
							-- Defendo-tank 66D
							{ 59.2, 18.4, BOREAN_TUNDRA },
							{ 64.2, 17.2, BOREAN_TUNDRA },
							{ 67.0, 24.6, BOREAN_TUNDRA },
							{ 63.8, 27.8, BOREAN_TUNDRA },
							-- Fizzcrank Mechagnome
							{ 59.0, 16.4, BOREAN_TUNDRA },
							{ 65.4, 17.6, BOREAN_TUNDRA },
							{ 62.6, 21.6, BOREAN_TUNDRA },
							{ 65.2, 28.4, BOREAN_TUNDRA },
							-- Scavenge-bot 004-A8
							{ 59.2, 17.6, BOREAN_TUNDRA },
							{ 65.6, 17.6, BOREAN_TUNDRA },
							{ 61.6, 22.2, BOREAN_TUNDRA },
							{ 65.0, 28.6, BOREAN_TUNDRA },
							-- Sentry-bot 57-K
							{ 58.6, 16.8, BOREAN_TUNDRA },
							{ 63.4, 29.0, BOREAN_TUNDRA },
							{ 64.8, 23.6, BOREAN_TUNDRA },
							{ 68.0, 26.6, BOREAN_TUNDRA },
						},
						["timeline"] = { ADDED_7_0_3 },
						["crs"] = {
							25758,	-- Defendo-tank 66D
							25814,	-- Fizzcrank Mechagnome
							25752,	-- Scavenge-bot 004-A8
							25753,	-- Sentry-bot 57-K
						},
					}),
					i(34597, {	-- Winterfin Clam
						["provider"] = { "o", 187367 },	-- Winterfin Clam
						["coords"] = {
							{ 38.1, 15.3, BOREAN_TUNDRA },
							{ 42.5, 14.2, BOREAN_TUNDRA },
							{ 43.3, 19.7, BOREAN_TUNDRA },
							{ 37.7, 23.2, BOREAN_TUNDRA },
						},
						["crs"] = {
							25210,	-- Keymaster Urmgrgl
							25216,	-- Winterfin Oracle
							25215,	-- Winterfin Shorestriker
							25217,	-- Winterfin Warrior
						},
						["_allowObjectProvider"] = true,
					}),
				}),
			},
		}),
	})),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_2 } }, {
	m(NORTHREND, {
		m(BOREAN_TUNDRA, {
			n(TREASURES, {
				q(39783),	-- Battle Pet - Terky
			}),
		}),
	}),
})));
