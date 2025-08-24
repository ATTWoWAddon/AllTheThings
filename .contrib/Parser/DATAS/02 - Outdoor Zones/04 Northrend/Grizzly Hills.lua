---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(NORTHREND, applyclassicphase(WRATH_PHASE_ONE, {
		m(GRIZZLY_HILLS, {
			["lore"] = "Grizzly Hills is a stunning but sinister pine forest in eastern Northrend. Players investigate Arugal and the curse of the Worgen, PvP for control of the Blackriver Logging Camp and Venture Bay, escort Harrison Jones and the rest of the Zul'Aman crew through troll ruins, and heal Vordrassil, a defective World Tree. Grizzly Hills is home to trappers, ice trolls, iron dwarves, and furbolgs.",
			["icon"] = 236766,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(1266),	-- Explore Grizzly Hills
					ach(37, {	-- Fo' Grizzle My Shizzle (A)
						["races"] = ALLIANCE_ONLY,
						-- #if AFTER 7.3.5
						["_doautomation"] = true,
						-- #else
						["sourceQuests"] = {
							12249,	-- Ursoc, the Bear God
							12153,	-- The Iron Thane and His Anvil
							12185,	-- Put on Your Best Face for Loken
							12068,	-- Voices From the Dust
							12164,	-- Hour of the Worg
							12152,	-- Jin'arrak's End
						},
						-- #endif
					}),
					ach(1357, {	-- Fo' Grizzle My Shizzle (H)
						["races"] = HORDE_ONLY,
						-- #if AFTER 7.3.5
						["_doautomation"] = true,
						-- #else
						["sourceQuests"] = {
							12236,	-- Ursoc, the Bear God
							12431,	-- The Conquest Pit: Final Showdown
							12199,	-- Bringing Down the Iron Thane
							12203,	-- Loken's Orders
							12164,	-- Hour of the Worg
							12068,	-- Voices From the Dust
							12152,	-- Jin'arrak's End
						},
						-- #endif
					}),
					pvp(ach(2016, {	-- Grizzled Veteran (A)
						["races"] = ALLIANCE_ONLY,
					})),
					pvp(ach(2017, {	-- Grizzled Veteran (H)
						["races"] = HORDE_ONLY,
					})),
				}),
				battlepets({
					["groups"] = {
						pet(647),	-- Grizzly Squirrel (PET!)
						pet(534),	-- Imperial Eagle Chick (PET!)
						pet(633),	-- Mountain Skunk (PET!)
					},
				}),
				explorationHeader({
					exploration(4204),	-- Amberpine Lodge
					exploration(4482),	-- Arriga Footbridge
					exploration(4262),	-- Ashwood Post
					visit_exploration(4239,{coord={34.6,56.0,GRIZZLY_HILLS}}),	-- Aspen Grove Post
					exploration(4217),	-- Blackriver Logging Camp
					exploration(4244),	-- Bloodmoon Isle
					exploration(4222),	-- Blue Sky Logging Grounds
					exploration(4214),	-- Boulder Hills
					exploration(4211),	-- Camp Oneqwah
					exploration(4206),	-- Conquest Hold
					visit_exploration(4270,{coord={44.6,25.9,GRIZZLY_HILLS}}),	-- Drak'atal Passage
					exploration(4210),	-- Drak'Tharon Keep
					exploration(4216),	-- Drakil'jin Ruins
					exploration(4220),	-- Dun Argol
					exploration(4212),	-- Eastwind Shore
					visit_exploration(4236,{coord={15.3,66.5,GRIZZLY_HILLS}}),	-- Evergreen Trading Post
					exploration(4240),	-- Forest's Edge Post
					exploration(4208),	-- Granite Springs
					exploration(395),	-- Grizzlemaw
					exploration(4266),	-- Harkor's Camp
					exploration(4218),	-- Heart's Blood Shrine
					visit_exploration(4235,{coord={48.8,33.9,GRIZZLY_HILLS}}),	-- Heartwood Trading Post
					visit_exploration(4219,{coord={55.2,23.6,GRIZZLY_HILLS}}),	-- Hollowstone Mine
					exploration(4229),	-- Prospector's Point
					exploration(4215),	-- Rage Fang Shrine
					exploration(4231),	-- Redwood Trading Post
					exploration(4255),	-- Ruins of Drak'Zin
					visit_exploration(4250,{coord={80.1,35.7,GRIZZLY_HILLS}}),	-- Ruins of Tethys
					visit_exploration(4245,{coord={87.6,25.7,GRIZZLY_HILLS}}),	-- Shadowfang Tower
					exploration(4199),	-- Silverbrook
					exploration(4251),	-- Silverbrook Hills
					visit_exploration(4205,{coord={61.8,39.7,GRIZZLY_HILLS}}),	-- Solstice Village
					exploration(4480),	-- The Forgotten Overlook
					visit_exploration(4249,{coord={74.2,43.0,GRIZZLY_HILLS}}),	-- The Path of Iron
					exploration(4221),	-- Thor Modan
					exploration(4366),	-- Ursoc's Den
					exploration(4242),	-- Venture Bay
					exploration(4207),	-- Voldrune
					visit_exploration(4456,{coord={28.8,72.2,GRIZZLY_HILLS}}),	-- Voldrune Dwelling
					exploration(4267),	-- Vordrassil Pass
					visit_exploration(4200,{coord={38.7,51.5,GRIZZLY_HILLS}}),	-- Vordrassil's Heart
					visit_exploration(4203,{coord={33.2,49.6,GRIZZLY_HILLS}}),	-- Vordrassil's Limb
					exploration(4202),	-- Vordrassil's Tears
					exploration(4159),	-- Westfall Brigade Encampment
					exploration(4238),	-- White Pine Trading Post
					exploration(4209),	-- Zeb'Halak
					visit_exploration(4475,{coord={14.3,38.2,GRIZZLY_HILLS}}),	-- Zim'bo's Hideout
				}),
				n(FLIGHT_PATHS, {
					fp(253, {	-- Amberpine Lodge
						["cr"] = 26880,	-- Vana Grey <Gryphon Master>
						["coord"] = { 31.2, 59.2, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(249, {	-- Camp Oneqwah
						["cr"] = 26853,	-- Makki Wintergale <Wind Rider Master>
						["coord"] = { 64.8, 46.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					fp(250, {	-- Conquest Hold
						["cr"] = 26852,	-- Kragh <Wind Rider Master>
						["coord"] = { 22.0, 64.4, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					fp(255, {	-- Westfall Brigade
						["cr"] = 26876,	-- Samuel Clearbook <Gryphon Master>
						["coord"] = { 59.8, 26.6, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
				}),
				n(QUESTS, {
					q(12138, {	-- ... Or Maybe We Don't (A)
						["sourceQuest"] = 12131,	-- We Have the Power
						["qg"] = 26883,	-- Raegar Breakbrow
						["coord"] = { 77.0, 48.6, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(36936),	-- Golem Control Unit (QI!)
						},
					}),
					q(12198, {	-- ... Or Maybe We Don't (H)
						["sourceQuest"] = 12197,	-- We Have the Power
						["qg"] = 27227,	-- Prospector Rokar
						["coord"] = { 65.1, 47.2, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12279, {	-- A Bear of an Appetite
						["qg"] = 26484,	-- Hugh Glass
						["coord"] = { 69.0, 40.0, GRIZZLY_HILLS },
					}),
					q(12220, {	-- A Dark Influence
						["sourceQuest"] = 12310,	-- A Swift Response
						["qg"] = 27295,	-- Hierophant Thayreen
						["coord"] = { 31.1, 59.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12176, {  -- A Minor Substitution
						["sourceQuest"] = 12175,	-- Gray Worg Hides
						["qg"] = 27037,	-- Hidetrader Jun'ik
						["coord"] = { 22.0, 65.1, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Grizzly Hide
								["provider"] = { "i", 37020 },	-- Grizzly Hide
								["crs"] = {
									26644,	-- Ursus Mauler
									27131,	-- Grizzly Bear
								},
							}),
							i(39034),	-- Bearskin Helm
							i(39099),	-- Carapace of the Fallen
							i(39064),	-- Hide-Lined Chestguard
							i(38735),	-- Specially Treated Robes
						},
					}),
					q(12160, {	-- A Name from the Past
						["sourceQuest"] = 12159,	-- Souls at Unrest
						["qg"] = 26932,	-- Petrov
						["coord"] = { 55.1, 23.3, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12246, {	-- A Possible Link (A)
						["sourceQuests"] = {
							12219,	-- The Failed World Tree
							12220,	-- A Dark Influence
						},
						["qg"] = 27295,	-- Hierophant Thayreen
						["coord"] = { 31.1, 59.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Crazed Furbolg Blood
								["provider"] = { "i", 37251 },	-- Crazed Furbolg Blood
								["crs"] = {
									26356,	-- Redfang Hunter
									26357,	-- Frostpaw Warrior
									26428,	-- Frostpaw Shaman
									26434,	-- Frostpaw Trapper
									26436,	-- Redfang Elder
								},
							}),
							i(39091),	-- Blood-Spattered Spaulders
							i(39053),	-- Helm of the Furbolg Purifier
							i(38726),	-- Instigator's Gloves
							i(39025),	-- Shackles of Sanity
						},
					}),
					q(12229, {  -- A Possible Link (H)
						["sourceQuests"] = {
							12213,	-- The Darkness Beneath
							12207,	-- Vordassil's Fall
						},
						["qg"] = 27262,	-- Windseer Grayhorn
						["coord"] = { 22.5, 62.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Crazed Furbolg Blood
								["provider"] = { "i", 37251 },	-- Crazed Furbolg Blood
								["crs"] = {
									26356,	-- Redfang Hunter
									26357,	-- Frostpaw Warrior
									26428,	-- Frostpaw Shaman
									26434,	-- Frostpaw Trapper
									26436,	-- Redfang Elder
								},
							}),
							i(39091),	-- Blood-Spattered Spaulders
							i(39053),	-- Helm of the Furbolg Purifier
							i(38726),	-- Instigator's Gloves
							i(39025),	-- Shackles of Sanity
						},
					}),
					q(12257, {	-- A Show of Strength
						["sourceQuest"] = 12468,	-- The Conqueror's Task
						["qg"] = 27388,	-- Sergeant Nazgrim
						["coord"] = { 21.0, 64.0, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/12 Dragonflayer Huscarl slain
								["provider"] = { "n", 27260 },	-- Dragonflayer Huscarl
							}),
						},
					}),
					q(12411, {	-- A Sister's Pledge
						["sourceQuest"] = 12330,	-- Anatoly Will Talk
						["qg"] = 26935,	-- Sasha
						["coord"] = { 57.5, 41.2, GRIZZLY_HILLS },
					}),
					q(12310, {	-- A Swift Response
						["sourceQuest"] = 12308,	-- Escape from Silverbrook
						["qg"] = 26875,	-- Lieutenant Dumont
						["coord"] = { 31.8, 60.1, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/7 Silverbrook Hunter slain
								["provider"] = { "n", 27546 },	-- Silverbrook Hunter
							}),
							objective(2, {	-- 0/1 Vladek slain
								["provider"] = { "n", 27547 },	-- Vladek
							}),
						},
					}),
					q(12294, {	-- A Tentative Pact
						["sourceQuest"] = 12293,	-- Close the Deal
						["qg"] = 27469,	-- Ivan
						["coord"] = { 34.7, 55.6, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					pvp(q(12446, {	-- Always Seeking Solvent (A)
						["sourceQuest"] = 12443,	-- Seeking Solvent
						["qg"] = 27495,	-- Barblefink
						["coord"] = { 23.0, 80.0, GRIZZLY_HILLS },
						["timeline"] = { REMOVED_4_0_1 },
						["cost"] = { { "i", 37664, 1 } },	-- Element 115
						["races"] = ALLIANCE_ONLY,
						["repeatable"] = true,
					})),
					pvp(q(12434, {	-- Always Seeking Solvent (H)
						["sourceQuest"] = 12433,	-- Seeking Solvent
						["qg"] = 27565,	-- Gurtor
						["coord"] = { 11.1, 76.6, GRIZZLY_HILLS },
						["timeline"] = { REMOVED_4_0_1 },
						["cost"] = { { "i", 37664, 1 } },	-- Element 115
						["races"] = HORDE_ONLY,
						["repeatable"] = true,
					})),
					q(12295, {	-- An Exercise in Diplomacy
						["sourceQuest"] = 12294,	-- A Tentative Pact
						["qg"] = 26875,	-- Lieutenant Dumont
						["coord"] = { 31.8, 60.1, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12074, {	-- An Expedient Ally
						["qg"] = 26666,	-- Scout Vor'takh
						["coord"] = { 65.1, 47.6, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(12165, {	-- An Intriguing Plan
						["sourceQuest"] = 12195,	-- The Unexpected 'Guest'
						["qg"] = 27221,	-- Tormak the Scarred
						["coord"] = { 65.2, 47.5, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12330, {	-- Anatoly Will Talk
						["sourceQuest"] = 12329,	-- Fate and Coincidence
						["qg"] = 26935,	-- Sasha
						["coord"] = { 57.5, 41.2, GRIZZLY_HILLS },
						["groups"] = {
							i(38748),	-- Seal of the Slumbering Wolf
							i(38744),	-- Solstice Signet
							i(38752),	-- Tatiana's Pendant
						},
					}),
					q(12413, {  -- Attack on Silverbrook
						["sourceQuest"] = 12412,	-- My Enemy's Friend
						["qg"] = 26860,	-- Conqueror Krenna
						["coord"] = { 20.6, 64.1, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Silverbrook Defender slain
								["provider"] = { "n", 27676 },	-- Silverbrook Defender
							}),
							i(39031),	-- Boots of Internal Strife
							i(38733),	-- Raiment of the Caged Beast
							i(39097),	-- Sabatons of Crushed Humanity
							i(38750),	-- Worgslayer's Ring
							i(39059),	-- Wristguard of the Tormented Soul
						},
					}),
					q(12154, {	-- Blackout
						["sourceQuest"] = 12138,	-- ... Or Maybe We Don't
						["qg"] = 26883,	-- Raegar Breakbrow
						["coord"] = { 77.0, 48.6, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(36935),	-- Raegar's Explosives (QI!)
						},
					}),
					pvp(q(12170, {	-- Blackriver Brawl
						["qg"] = 27120,	-- Raider Captain Kronn
						["coord"] = { 26.4, 65.8, GRIZZLY_HILLS },
						["maxReputation"] = { FACTION_HORDE_EXPEDITION, EXALTED },	-- Horde Expedition, Exalted.
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
						-- #if BEFORE CATA
						["groups"] = {
							currency(201),	-- Venture Coin
						},
						-- #endif
					})),
					pvp(q(12444, {	-- Blackriver Skirmish
						["qg"] = 27783,	-- Scout Captain Carter
						["coord"] = { 29.9, 59.7, GRIZZLY_HILLS },
						["maxReputation"] = { FACTION_VALIANCE_EXPEDITION, EXALTED },	-- Valiance Expedition, Exalted.
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
						-- #if BEFORE CATA
						["groups"] = {
							currency(201),	-- Venture Coin
						},
						-- #endif
					})),
					q(12199, {  -- Bringing Down the Iron Thane
						["sourceQuest"] = 12198,	-- ... Or Maybe We Don't
						["qg"] = 27227,	-- Prospector Rokar
						["coord"] = { 65.1, 47.2, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Iron Thane Furyhammer slain
								["provider"] = { "n", 26405 },	-- Iron Thane Furyhammer
							}),
							i(39015),	-- Crackpot Spaulders
							i(39076),	-- Golem-Rider's Greaves
							i(38711),	-- Grounded Gloves
							i(39044),	-- Short-Circuiting Boots
						},
					}),
					q(12002, {	-- Brothers in Battle
						["sourceQuest"] = 11998,	-- Softening the Blow
						["qg"] = 26226,	-- Brugar Stoneshear
						["coord"] = { 59.8, 27.5, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Runic Battle Golem slain
								["provider"] = { "n", 26284 },	-- Runic Battle Golem
							}),
						},
					}),
					q(12128, {	-- Check Up on Raegar
						["sourceQuest"] = 12014,	-- Steady as a Rock?
						["qg"] = 26226,	-- Brugar Stoneshear
						["coord"] = { 59.8, 27.5, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12247, {	-- Children of Ursoc
						["sourceQuests"] = {
							12219,	-- The Failed World Tree
							12220,	-- A Dark Influence
						},
						["qg"] = 27295,	-- Hierophant Thayreen
						["coord"] = { 31.1, 59.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12137, {	-- Chill Out, Mon
						["sourceQuest"] = 12121,	-- See You on the Other Side
						["qg"] = 26924,	-- Gan'jo
						["coord"] = { 69.4, 19.4, GRIZZLY_HILLS },
						["groups"] = {
							objective(1, {	-- 0/1 Snow of Eternal Slumber
								["providers"] = {
									{ "i", 36859 },	-- Snow of Eternal Slumber
									{ "o", 188518 },	-- Gan'jo's Chest
								},
							}),
							objective(2, {	-- 0/5 Drakkari Spirit Particles
								["providers"] = {
									{ "i", 36868 },	-- Drakkari Spirit Particles
									{ "o", 188525 },	-- Drakkari Spirit Particles
								},
							}),
						},
					}),
					q(12293, {	-- Close the Deal
						["sourceQuest"] = 12292,	-- Local Support
						["qg"] = 26875,	-- Lieutenant Dumont
						["coord"] = { 31.8, 60.1, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					pvp(q(12315, {	-- Crush Captain Brightwater!
						["qg"] = 27532,	-- General Khazgar
						["coord"] = { 10.0, 77.2, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
						-- #if BEFORE CATA
						["groups"] = {
							currency(201),	-- Venture Coin
						},
						-- #endif
					})),
					q(12184, {	-- Cultivating an Image (A)
						["sourceQuest"] = 12183,	-- Looking the Part
						["qg"] = 26885,	-- Mountaineer Kilian
						["coord"] = { 76.9, 48.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12202, {	-- Cultivating an Image (H)
						["sourceQuest"] = 12201,	-- The Overseer's Shadow
						["qg"] = 26666,	-- Scout Vor'takh
						["coord"] = { 65.1, 47.6, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12054, {	-- Deciphering the Journal
						["sourceQuest"] = 12026,	-- The Damaged Journal
						["qg"] = 26584,	-- Sage Paluna
						["coord"] = { 65.2, 47.7, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Spiritsbreath
								["provider"] = { "i", 36740 },	-- Spiritsbreath
								["cr"] = 26681,	-- Grumbald One-Eye
							}),
						},
					}),
					q(12178, {	-- Delivery to Krenna
						["sourceQuest"] = 12177,	-- Jun'ik's Coverup
						["qg"] = 27037,	-- Hidetrader Jun'ik
						["coord"] = { 22.0, 65.1, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12105, {	-- Descent into Darkness
						["provider"] = { "i", 36940 },	-- Mikhail's Journal
						["races"] = ALLIANCE_ONLY,
						["cr"] = 27546,	-- Silverbrook Hunter
						["groups"] = {
							i(38734),	-- Abandoned Hood
							i(39033),	-- Discarded Miner's Jerkin
							i(39060),	-- Patched Trapper Pauldrons
							i(39098),	-- Rusty Cave Stompers
						},
					}),
					q(12241, {	-- Destroy the Sapling
						["sourceQuests"] = {
							12229,	-- A Possible Link
							12231,	-- The Bear God's Offpsring
						},
						["qg"] = 27262,	-- Windseer Grayhorn
						["coord"] = { 22.5, 62.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12227, {	-- Doing Your Duty
						["sourceQuest"] = 12226,	-- Just Passing Through
						["qg"] = 27277,	-- Master Woodsman Anderhol
						["coord"] = { 32.1, 59.9, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(38745),	-- Fetid Loop
							i(38747),	-- Mildly Tarnished Ring
							i(38746),	-- Rancid Signet
						},
					}),
					pvp(q(12314, {	-- Down With Captain Zorna!
						["qg"] = 27520,	-- Baron Freeman
						["coord"] = { 22.1, 81.2, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
						-- #if BEFORE CATA
						["groups"] = {
							currency(201),	-- Venture Coin
						},
						-- #endif
					})),
					q(12120, {	-- Drak'aguul's Mallet
						["sourceQuest"] = 12116,	-- It Takes Guts...
						["qg"] = 26886,	-- Kraz
						["coord"] = { 73.9, 34.1, GRIZZLY_HILLS },
						["groups"] = {
							objective(1, {	-- 0/1 Drakil'jin Mallet
								["provider"] = { "i", 36826 },	-- Drakil'jin Mallet
								["cr"] = 26919,	-- Drak'aguul
							}),
							i(38730),	-- Bell-Ringer's Shoulderpads
							i(39095),	-- Hammer-Holder's Gauntlets
							i(39057),	-- Polished Staghorn Helm
							i(39029),	-- Waistguard of Expedient Procurement
						},
					}),
					q(12082, {	-- Dun-da-Dun-tah!
						["qg"] = 26814,	-- Harrison Jones
						["coord"] = { 69.4, 17.4, GRIZZLY_HILLS },
						["groups"] = {
							i(39028),	-- Coiled Leather Gauntlets
							i(39094),	-- Load-Bearing Girdle
							i(38729),	-- Sandals of Quick Escape
							i(39056),	-- Whip-Stitched Wristguards
						},
					}),
					q(12217, {	-- Eagle Eyes
						["sourceQuest"] = 12215,	-- Them or Us!
						["qg"] = 27277,	-- Master Woodsman Anderhol
						["coord"] = { 32.0, 59.9, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Imperial Eagle slain
								["provider"] = { "n", 26369 },	-- Imperial Eagle
							}),
						},
					}),
					q(12308, {	-- Escape from Silverbrook
						["sourceQuest"] = 12302,	-- Words of Warning
						["qg"] = 27499,	-- Caged Prisoner
						["coord"] = { 26.4, 31.8, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(39031),	-- Boots of Internal Strife
							i(38733),	-- Raiment of the Caged Beast
							i(39097),	-- Sabatons of Crushed Humanity
							i(38750),	-- Worgslayer's Ring
							i(39059),	-- Wristguard of the Tormented Soul
						},
					}),
					q(12453, {	-- Eyes Above
						["sourceQuest"] = 12412,	-- My Enemy's Friend
						["qg"] = 27262,	-- Windseer Grayhorn
						["coord"] = { 22.5, 62.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(38760),	-- Insignia of Bloody Fire
							i(38761),	-- Mendicant's Charm
							i(38762),	-- Talon of Hatred
						},
					}),
					q(12329, {	-- Fate and Coincidence
						["sourceQuest"] = 12327,	-- Out of Body Experience
						["qg"] = 27581,	-- Ruuna the Blind
						["coord"] = { 44.0, 47.9, GRIZZLY_HILLS },
					}),
					q(11984, {	-- Filling the Cages
						["sourceQuests"] = {
							12210,	-- Troll Season! (A)
							12208,	-- Good Troll Hunting (H)
						},
						["qg"] = 26424,	-- Samir
						["coord"] = { 16.1, 47.6, GRIZZLY_HILLS },
						["groups"] = {
							i(39116),	-- Grinder of Reverse Emancipation
							i(39142),	-- Mace of Helotry
							i(39129),	-- Spike of Renounced Autonomy
							i(39132),	-- Sword of the Caged Mind
							i(39131),	-- Warbling Crossbow
							i(39128),	-- Yoke Slasher
						},
					}),
					q(11981, {	-- Find Kurun!
						["qg"] = 26335,	-- Fallen Earthen Warrior
						["coord"] = { 63.6, 23.1, GRIZZLY_HILLS },
						["isBreadcrumb"] = true,
					}),
					q(12099, {	-- Free at Last
						["sourceQuest"] = 12094,	-- Latent Power
						["qg"] = 26420,	-- Gavrock
						["coord"] = { 79.7, 33.5, GRIZZLY_HILLS },
						["groups"] = {
							i(39119),	-- Bondsniper
							i(39109),	-- Branch of the Roaming Spirit
							i(39117),	-- Liberator's Blade
							i(39120),	-- Spire of Soaring Rumination
							i(39112),	-- Talon of Freedom
						},
					}),
					q(12196, {	-- From the Ground Up
						["sourceQuest"] = 12165,	-- An Intriguing Plan
						["qg"] = 27227,	-- Prospector Rokar
						["coord"] = { 65.1, 47.2, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 War Golem Part
								["providers"] = {
									{ "i", 36852 },	-- War Golem Part
									{ "o", 188501 },	-- War Golem Part
									{ "o", 188502 },	-- War Golem Part
									{ "o", 188503 },	-- War Golem Part
								},
							}),
						},
					}),
					q(12081, {	-- Gavrock
						["sourceQuest"] = 11985,	-- Into the Breach
						["qg"] = 26260,	-- Kurun
						["coord"] = { 65.7, 17.7, GRIZZLY_HILLS },
					}),
					q(12208, {	-- Good Troll Hunting
						["sourceQuest"] = 12412,	-- My Enemy's Friend
						["qg"] = 27266,	-- Sergeant Thurkin
						["coord"] = { 22.1, 64.7, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(12424, {	-- Gorgonna
						["sourceQuest"] = 12423,	-- Mikhail's Journal
						["qg"] = 26860,	-- Conqueror Krenna
						["coord"] = { 20.7, 64.1, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12175, {  -- Grey Worg Hides
						["qg"] = 27037,	-- Hidetrader Jun'ik
						["coord"] = { 22.0, 65.1, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/3 Gray Worg Hide
								["provider"] = { "i", 37010 },	-- Gray Worg Hide
								["cr"] = 26592,	-- Graymist Hunter
							}),
							i(38734),	-- Abandoned Hood
							i(39033),	-- Discarded Miner's Jerkin
							i(39060),	-- Patched Trapper Pauldrons
							i(39098),	-- Rusty Cave Stompers
						},
					}),
					q(12042, {	-- Heart of the Ancients
						["sourceQuest"] = 12007,	-- Sacrifices Must be Made
						["qg"] = 26543,	-- Image of Drakuru
						["coord"] = { 17.4, 36.3, GRIZZLY_HILLS },
					}),
					heroscall(q(39207, {	-- Hero's Call: Grizzly Hills!
						["altQuests"] = { 12511 },	-- The Hills Have Us
						["timeline"] = { ADDED_6_2_0 },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 63,
					})),
					q(12158, {	-- Hollowstone Mine
						["sourceQuests"] = {
							12105,	-- Descent into Darkness
							12109,	-- Report to Gryan Stoutmantle... Again
						},
						["qg"] = 26212,	-- Captain Gryan Stoutmantle
						["coord"] = { 59.4, 26.0, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12164, {	-- Hour of the Worg
						["sourceQuest"] = 12411,	-- A Sister's Pledge
						["qg"] = 26935,	-- Sasha
						["coord"] = { 57.5, 41.3, GRIZZLY_HILLS },
						["groups"] = {
							objective(1, {	-- 0/1 Varlam slain
								["provider"] = { "n", 27579 },	-- Varlam
							}),
							objective(2, {	-- 0/1 Selas slain
								["provider"] = { "n", 27580 },	-- Selas
							}),
							objective(3, {	-- 0/1 Goremaw slain
								["provider"] = { "n", 27578 },	-- Goremaw
							}),
							objective(4, {	-- 0/1 Shade of Arugal defeated
								["provider"] = { "n", 27018 },	-- Shade of Arugal
							}),
							i(39172),	-- Bone-Polished Iceplate Shoulders
							i(39171),	-- Fangsever Shoulderguards
							i(39170),	-- Furred Worgslayer Spaulders
							i(39169),	-- Keen Razorfang Spaulders
							i(39168),	-- Worg-Rendering Shoulderguards
						},
					}),
					q(12204, {	-- In the Name of Loken
						["sourceQuest"] = 12099,	-- Free at Last -- TODO: verify
						["qg"] = 26666,	-- Scout Vor'takh
						["coord"] = { 65.1, 47.6, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Hugh Glass Questioned
								["provider"] = { "n", 26484 },	-- Hugh Glass
							}),
							objective(2, {	-- 0/1 Gavrock Questioned
								["provider"] = { "n", 26420 },	-- Gavrock
							}),
						},
					}),
					q(11985, {	-- Into the Breach
						["sourceQuest"] = 12070,	-- Rallying the Troops
						["qg"] = 26260,	-- Kurun
						["coord"] = { 65.7, 17.7, GRIZZLY_HILLS },
						["groups"] = {
							objective(1, {	-- 0/1 Iron Thane Argrum slain
								["provider"] = { "n", 26348 },	-- Iron Thane Argrum
							}),
							i(39048),	-- Flame-Tested Chestguard
							i(38715),	-- Forge-Scarred Sandals
							i(39080),	-- Grips of Flawed Temper
							i(39019),	-- Iron-Shatter Leggings
						},
					}),
					q(12116, {	-- It Takes Guts....
						["qg"] = 26886,	-- Kraz
						["coord"] = { 73.9, 34.1, GRIZZLY_HILLS },
						["groups"] = {
							objective(1, {	-- 0/5 Drakkari Canopic Jar
								["providers"] = {
									{ "i", 36825 },	-- Drakkari Canopic Jar
									{ "o", 188499 },	-- Drakkari Canopic Jar
								},
							}),
						},
					}),
					q(12152, {	-- Jin'arrak's End
						["sourceQuest"] = 12137,	-- Chill Out, Mon
						["qg"] = 26886,	-- Kraz
						["coord"] = { 73.9, 34.1, GRIZZLY_HILLS },
						["groups"] = {
							objective(1, {	-- 0/1 Warlord Jin'arrak Destroyed
								["provider"] = { "n", 27199 },	-- Warlord Jin'arrak
							}),
							i(39114),	-- Axe of the Warlord's Demise
							i(39125),	-- Beaked Dagger
							i(39124),	-- Branch of Insightful Dreams
							i(39118),	-- Glowing Voodoo Orb
							i(39113),	-- Jagged Troll Render
							i(39127),	-- Serrated Cold-Iron Slicer
						},
					}),
					q(12177, {	-- Jun'ik's Coverup
						["sourceQuest"] = 12176,	-- A Minor Substitution
						["qg"] = 27037,	-- Hidetrader Jun'ik
						["coord"] = { 22.0, 65.1, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12226, {	-- Just Passing Through
						["sourceQuest"] = 12225,	-- Mmm... Amberseeds!
						["qg"] = 27277,	-- Master Woodsman Anderhol
						["coord"] = { 32.0, 59.9, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Blackroot Stalk
								["providers"] = {
									{ "i", 37246 },	-- Blackroot Stalk
									{ "o", 188670 },	-- Blackroot
								},
							}),
						},
					}),
					pvp(q(12284, {	-- Keep 'Em on Their Heels
						["qg"] = 27451,	-- Commander Bargok
						["coord"] = { 34.4, 33.0, GRIZZLY_HILLS },
						["maxReputation"] = { FACTION_WARSONG_OFFENSIVE, EXALTED },	-- Warsong Offensive, Exalted.
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					})),
					pvp(q(12316, {	-- Keep Them at Bay! (A)
						["qg"] = 27562,	-- Lieutenant Stuart
						["coord"] = { 22.0, 81.3, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
						-- #if BEFORE CATA
						["groups"] = {
							currency(201),	-- Venture Coin
						},
						-- #endif
					})),
					pvp(q(12317, {	-- Keep Them at Bay (H)
						["qg"] = 27563,	-- Centurion Kaggrum
						["coord"] = { 10.1, 77.3, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
						-- #if BEFORE CATA
						["groups"] = {
							currency(201),	-- Venture Coin
						},
						-- #endif
					})),
					pvp(q(12289, {	-- Kick 'Em While They're Down
						["qg"] = 27468,	-- Sergeant Hartsman
						["coord"] = { 39.3, 43.8, GRIZZLY_HILLS },
						["maxReputation"] = { FACTION_VALIANCE_EXPEDITION, EXALTED },	-- Valiance Expedition, Exalted.
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					})),
					q(12094, {	-- Latent Power
						["sourceQuest"] = 12093,	-- Runes of Compulsion
						["qg"] = 26420,	-- Gavrock
						["coord"] = { 79.7, 33.6, GRIZZLY_HILLS },
					}),
					pvp(q(12296, {	-- Life or Death
						["qg"] = 27484,	-- Rheanna
						["coord"] = { 40.4, 42.6, GRIZZLY_HILLS },
						["maxReputation"] = { FACTION_VALIANCE_EXPEDITION, EXALTED },	-- Valiance Expedition, Exalted.
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					})),
					q(12292, {	-- Local Support
						["sourceQuests"] = {
							12511,	-- The Hills Have Us
							-- #if AFTER 6.2.0.19953
							39207,	-- Hero's Call: Grizzly Hills!
							-- #endif
						},
						["qg"] = 26875,	-- Lieutenant Dumont
						["coord"] = { 31.8, 60.1, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Cedar Chest
								["providers"] = {
									{ "i", 37572 },	-- Cedar Chest
									{ "o", 189298 },	-- Cedar Chest
								},
							}),
							i(38732),	-- Bramble-Proof Leggings
							i(38759),	-- Injured Trapper's Cloak
							i(39058),	-- Legguards of Swift Pursuit
							i(39030),	-- Patchhide Pants
							i(39096),	-- Snaptooth Legplates
						},
					}),
					q(12203, {	-- Loken's Orders
						["sourceQuest"] = 12202,	-- Cultivating an Image
						["qg"] = 26666,
						["coord"] = { 65.1, 47.6, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12183, {	-- Looking the Part
						["sourceQuest"] = 12180,	-- The Captive Prospectors
						["qg"] = 26885,	-- Mountaineer Kilian
						["coord"] = { 76.9, 48.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Overseer's Uniform
								["provider"] = { "i", 37035 },	-- Overseer's Uniform
								["cr"] = 27177,	-- Iron Rune Overseer
							}),
						},
					}),
					pvp(q(12280, {	-- Making Repairs
						["qg"] = 27422,	-- Lurz
						["coord"] = { 34.4, 32.6, GRIZZLY_HILLS },
						["maxReputation"] = { FACTION_WARSONG_OFFENSIVE, EXALTED },	-- Warsong Offensive, Exalted.
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					})),
					q(12423, {	-- Mikhail's Journal
						["provider"] = { "i", 37830 },	-- Mikhail's Journal
						["races"] = HORDE_ONLY,
						["crs"] = { 27546 },	-- Silverbrook Hunter
					}),
					q(12225, {	-- Mmm... Amberseeds!
						["provider"] = { "o", 188667 },	-- Amberseed
						["coord"] = { 31.8, 59.5, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12414, {	-- Mounting Up
						["qg"] = 26377,	-- Squire Percy
						["coord"] = { 59.0, 26.6, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(37708, {	-- Stick
								["collectible"] = false,
							}),
						},
					}),
					q(12027, {	-- Mr. Floppy's Perilous Adventure
						["qg"] = 26588,	-- Emily
						["coord"] = { 49.2, 34.1, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(39018),	-- Boots of Safe Travel
							i(39079),	-- Bracers of the Chaperon
							i(39047),	-- Legguards of Unerring Navigation
							i(38714),	-- Path-Cutter's Cord
						},
					}),
					q(12412, {  -- My Enemy's Friend
						["sourceQuest"] = 12259,	-- The Thane of Voldrune
						["qg"] = 26860,	-- Conqueror Krenna
						["coord"] = { 20.7, 64.1, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Silverbrook Hunter slain
								["provider"] = { "n", 27546 },	-- Silverbrook Hunter
							}),
							objective(2, {	-- 0/1 Vladek slain
								["provider"] = { "n", 27547 },	-- Vladek
							}),
							i(38732),	-- Bramble-Proof Leggings
							i(38759),	-- Injured Trapper's Cloak
							i(39058),	-- Legguards of Swift Pursuit
							i(39030),	-- Patchhide Pants
							i(39096),	-- Snaptooth Legplates
						},
					}),
					q(12802, {	-- My Heart is in Your Hands
						["sourceQuest"] = 12042,	-- Heart of the Ancients
						["provider"] = { "o", 188365 },	-- Heart of the Ancients
						["coord"] = { 36.9, 32.3, GRIZZLY_HILLS },
					}),
					q(12113, {	-- Nice to Meat You
						["qg"] = 26884,	-- Harkor
						["coord"] = { 73.7, 34.0, GRIZZLY_HILLS },
						["groups"] = {
							objective(1, {	-- 0/10 Fibrous Worg Meat
								["provider"] = { "i", 36819 },	-- Fibrous Worg Meat
								["cr"] = 27408,	-- Duskhowl Prowler
							}),
							objective(2, {	-- 0/10 Shovelhorn Steak
								["provider"] = { "i", 36875 },	-- Shovelhorn Steak
								["cr"] = 26418,	-- Longhoof Grazer
							}),
						},
					}),
					q(12299, {	-- Northern Hospitality
						["sourceQuest"] = 12295,	-- An Exercise in Diplomacy
						["qg"] = 27486,	-- Sergei
						["coord"] = { 26.4, 35.7, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Conquest Hold Marauder slain
								["provider"] = { "n", 27424 },	-- Conquest Hold Marauder
							}),
							i(38762),	-- Insignia of Bloody Fire
							i(38760),	-- Mendicant's Charm
							i(38761),	-- Talon of Hatred
						},
					}),
					q(12451, {	-- Onward to Camp Oneqwah
						["sourceQuest"] = 12259,	-- The Thane of Voldrune
						["qg"] = 27388,	-- Sergeant Nazgrim
						["coord"] = { 21.0, 64.0, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12327, {	-- Out of Body Experience
						["sourceQuest"] = 12328,	-- Ruuna's Request
						["qg"] = 27581,	-- Ruuna the Blind
						["coord"] = { 44.0, 47.9, GRIZZLY_HILLS },
					}),
					pvp(q(12288, {	-- Overwhelmed!
						["qg"] = 27464,	-- Aumana
						["coord"] = { 33.8, 32.8, GRIZZLY_HILLS },
						["maxReputation"] = { FACTION_WARSONG_OFFENSIVE, EXALTED },	-- Warsong Offensive, Exalted.
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					})),
					pvp(q(12268, {	-- Pieces Parts
						["qg"] = 27416,	-- Pipthwack
						["coord"] = { 39.6, 43.3, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					})),
					q(12073, {	-- Pounding the Iron
						["sourceQuest"] = 12054,	-- Deciphering the Journal
						["qg"] = 26666,	-- Scout Vor'takh
						["coord"] = { 65.1, 47.6, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Iron Dwarf Defenders Killed
								["providers"] = {
									{ "n", 26270},	-- Iron Rune-Shaper
									{ "n", 26268},	-- Rune Reaver
								},
							}),
						},
					}),
					q(12185, {	-- Put on Your Best Face for Loken
						["sourceQuest"] = 12184,	-- Cultivating an Image
						["qg"] = 26885,	-- Mountaineer Kilian
						["coord"] = { 76.9, 48.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(39017),	-- Belt of Keen Hearing
							i(39046),	-- Shoulderpads of Imminent Disaster
							i(38713),	-- Spaulders of Foresight
							i(39078),	-- Whispering Stompers
						},
					}),
					q(11982, {	-- Raining Down Destruction
						["sourceQuests"] = {
							12074,	-- An Expedient Ally
							11981,	-- Find Kurun!
						},
						["qg"] = 26260,	-- Kurun
						["coord"] = { 65.7, 17.7, GRIZZLY_HILLS },
					}),
					q(12070, {	-- Rallying the Troops
						["sourceQuest"] = 11982,	-- Raining Down Destruction
						["qg"] = 26260,	-- Kurun
						["coord"] = { 65.7, 17.7, GRIZZLY_HILLS },
					}),
					q(12770, {	-- Reallocating Resources
						["altQuests"] = { 12789 },	-- Into the Breach
						["qg"] = 26212,	-- Captain Gryan Stoutmantle
						["coord"] = { 59.4, 26.0, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						-- NOTE: This quest is mutually exclusive with 12789 (Into the Breach) from Dragonblight
					}),
					q(12212, {	-- Replenishing the Storehouse
						["qg"] = 27277,	-- Master Woodsman Anderhol
						["coord"] = { 32.0, 59.9, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Succulent Venison
								["provider"] = { "i", 37185 },	-- Succulent Venison
								["cr"] = 26363,	-- Tallhorn Stag
							}),
						},
					}),
					q(12109, {	-- Report to Gryan Stoutmantle... Again
						["sourceQuest"] = 12105,	-- Descent into Darkness
						["qg"] = 26875,	-- Lieutenant Dumont
						["coord"] = { 31.8, 60.1, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					pvp(q(12437, {	-- Riding the Red Rocket (A)
						["qg"] = 27759,	-- Commander Howser
						["coord"] = { 14.8, 86.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					})),
					pvp(q(12432, {	-- Riding the Red Rocket (H)
						["qg"] = 27708,	-- General Gorlok
						["coord"] = { 14.8, 86.4, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					})),
					q(12093, {	-- Runes of Compulsion
						["sourceQuest"] = 12081,	-- Gavrock
						["qg"] = 26420,	-- Gavrock
						["coord"] = { 79.7, 33.6, GRIZZLY_HILLS },
						["groups"] = {
							objective(1, {	-- 0/1 Overseer Durval slain
								["provider"] = { "n", 26920 },	-- Overseer Durval
							}),
							objective(2, {	-- 0/1 Overseer Korgan slain
								["provider"] = { "n", 26921 },	-- Overseer Korgan
							}),
							objective(3, {	-- 0/1 Overseer Lochli slain
								["provider"] = { "n", 26922 },	-- Overseer Lochli
							}),
							objective(4, {	-- 0/1 Overseer Brunon slain
								["provider"] = { "n", 26923 },	-- Overseer Brunon
							}),
						},
					}),
					q(12161, {	-- Ruuna the Blind (A)
						["sourceQuest"] = 12160,	-- A Name from the Past
						["qg"] = 27582,	-- Private Arun
						["coord"] = { 59.1, 26.1, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12425, {	-- Ruuna the Blind (H)
						["sourceQuest"] = 12422,	-- Tactical Clemency
						["qg"] = 27102,	-- Gorgonna
						["coord"] = { 20.9, 64.0, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12328, {	-- Ruuna's Request
						["sourceQuests"] = {
							12161,	-- Ruuna the Blind (A)
							12425,	-- Ruuna the Blind (H)
						},
						["qg"] = 27581,	-- Ruuna the Blind
						["coord"] = { 44.0, 47.9, GRIZZLY_HILLS },
						["groups"] = {
							objective(1, {	-- 0/4 Gossamer Dust
								["provider"] = { "i", 37662 },	-- Gossamer Dust
								["cr"] = 27421,	-- Fern Feeder Moth
							}),
							i(38727),	-- Foreseer's Girdle
							i(39054),	-- Gossamer-Stained Grips
							i(39026),	-- Pauldrons of the Prophet
							i(39092),	-- Thought-Purifying Protector
						},
					}),
					q(12007, {	-- Sacrifices Must be Made
						["sourceQuest"] = 11991,	-- Subject to Interpretation
						["qg"] = 26500,	-- Image of Drakuru
						["coord"] = { 13.2, 60.8, GRIZZLY_HILLS },
					}),
					q(12134, {	-- Sasha's Hunt
						["sourceQuest"] = 12329,	-- Fate and Coincidence
						["qg"] = 26935,	-- Sasha
						["coord"] = { 57.5, 41.2, GRIZZLY_HILLS },
						["groups"] = {
							objective(1, {	-- 0/12 Solstice Hunter slain
								["provider"] = { "n", 26389 },	-- Solstice Hunter
							}),
							i(39011),	-- Bloody Bulwark
							i(38755),	-- Scepter of Passionate Reprisal
							i(39110),	-- Staff of Righteous Vengeance
							i(39010),	-- Wolfslayer's Crest
						},
					}),
					q(12190, {	-- Say Hello to My Little Friend
						["sourceQuest"] = 12483,	-- Shimmercap Stew
						["qg"] = 26519,	-- Prigmon
						["coord"] = { 15.7, 46.6, GRIZZLY_HILLS },
					}),
					q(12484, {	-- Scourgekabob
						["sourceQuest"] = 11990,	-- Vial of Visions
						["qg"] = 26519,	-- Prigmon
						["coord"] = { 15.7, 46.6, GRIZZLY_HILLS },
					}),
					q(12037, {	-- Search and Rescue
						["sourceQuest"] = 12029,	-- Seared Scourge
						["qg"] = 26604,	-- Mack Fearsen
						["coord"] = { 16.6, 48.2, GRIZZLY_HILLS },
						["groups"] = {
							i(39649),	-- Kurzel's Angst
							i(39648),	-- Kurzel's Rage
							i(39650),	-- Kurzel's Warband
						},
					}),
					q(12029, {	-- Seared Scourge
						["sourceQuest"] = 12484,	-- Scourgekabob
						["qg"] = 26604,	-- Mack Fearsen
						["coord"] = { 16.6, 48.2, GRIZZLY_HILLS },
					}),
					q(12038, {	-- Seared Scourge (daily)
						["sourceQuest"] = 12029,	-- Seared Scourge
						["qg"] = 26604,	-- Mack Fearsen
						["coord"] = { 16.6, 48.2, GRIZZLY_HILLS },
						["isDaily"] = true,
					}),
					q(12222, {	-- Secrets of the Flamebinders
						["sourceQuest"] = 12294,	-- A Tentative Pact
						["qg"] = 27391,	-- Woodsman Drake
						["coord"] = { 32.4, 59.9, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12121, {	-- See You on the Other Side
						["sourceQuest"] = 12120,	-- Drak'aguul's Mallet
						["qg"] = 26886,	-- Kraz
						["coord"] = { 73.9, 34.1, GRIZZLY_HILLS },
					}),
					pvp(q(12443, {	-- Seeking Solvent (A)
						["qg"] = 27495,	-- Barblefink
						["coord"] = { 23.0, 80.1, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						-- #if BEFORE CATA
						["groups"] = {
							currency(201),	-- Venture Coin
						},
						-- #endif
					})),
					pvp(q(12433, {	-- Seeking Solvent (H)
						["qg"] = 27565,	-- Gurtor
						["coord"] = { 11.1, 76.6, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						-- #if BEFORE CATA
						["groups"] = {
							currency(201),	-- Venture Coin
						},
						-- #endif
					})),
					q(12763, {	-- Shifting Priorities
						["qg"] = 26666,	-- Scout Vor'takh
						["coord"] = { 65.1, 47.6, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12483, {	-- Shimmercap Stew
						["sourceQuest"] = 12484,	-- Scourgekabob
						["qg"] = 26519,	-- Prigmon
						["coord"] = { 15.7, 46.6, GRIZZLY_HILLS },
						["groups"] = {
							objective(1, {	-- 0/5 Ice Serpent Eye
								["provider"] = { "i", 35798 },	-- Ice Serpent Eye
								["crs"] = {
									26446,	-- Ice Serpent
									29693,	-- Serpent Defender
								},
							}),
							objective(2, {	-- 0/5 Shimmering Snowcap
								["providers"] = {
									{ "i", 35782 },	-- Shimmering Snowcap
									{ "o", 188345 },	-- Shimmering Snowcaps
								},
							}),
							objective(3, {	-- 0/5 Sweetroot
								["providers"] = {
									{ "i", 37087 },	-- Sweetroot
									{ "o", 188601 },	-- Sweetroot
								},
							}),
						},
					}),
					pvp(q(12270, {	-- Shred the Alliance
						["qg"] = 27423,	-- Grekk
						["coord"] = { 34.4, 32.6, GRIZZLY_HILLS },
						["maxReputation"] = { FACTION_WARSONG_OFFENSIVE, EXALTED },	-- Warsong Offensive, Exalted.
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					})),
					pvp(q(12244, {	-- Shredder Repair
						["qg"] = 27371,	-- Synipus
						["coord"] = { 39.5, 43.5, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
					})),
					pvp(q(12323, {	-- Smoke 'Em Out (A)
						["qg"] = 27602,	-- Sergeant Downey
						["coord"] = { 21.9, 80.7, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
						-- #if BEFORE CATA
						["groups"] = {
							currency(201),	-- Venture Coin
						},
						-- #endif
					})),
					pvp(q(12324, {	-- Smoke 'Em Out (H)
						["qg"] = 27606,	-- Stone Guard Ragetotem
						["coord"] = { 11.3, 76.7, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
						-- #if BEFORE CATA
						["groups"] = {
							currency(201),	-- Venture Coin
						},
						-- #endif
					})),
					q(11998, {	-- Softening the Blow
						["qg"] = 26212,	-- Captain Gryan Stoutmantle
						["coord"] = { 59.4, 26.0, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12159, {	-- Souls at Unrest
						["sourceQuest"] = 12158,	-- Hollowstone Mine
						["qg"] = 26932,	-- Petrov
						["coord"] = { 55.1, 23.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(39034),	-- Bearskin Helm
							i(39099),	-- Carapace of the Fallen
							i(39064),	-- Hide-Lined Chestguard
							i(38735),	-- Specially Treated Robes
						},
					}),
					q(12014, {	-- Steady as a Rock?
						["sourceQuest"] = 12010,	-- The Fate of Orlond
						["qg"] = 26514,	-- Surveyor Orlond
						["coord"] = { 67.4, 15.2, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Thor Modan Stability Profile
								["providers"] = {
									{ "i", 35819 },	-- Thor Modan Stability Profile
									{ "o", 188367 },	-- Portable Seismograph
								},
							}),
							objective(2, {	-- 0/1 Portable Seismograph
								["provider"] = { "i", 35837 },	-- Portable Seismograph
								["cr"] = 26522,	-- Subterranean Thresher
							}),
							i(35837),	-- Portable Seismograph (QI!)
							o(188367, {	-- Portable Seismograph
								["groups"] = {
							objective(1, {	-- 0/1 Thor Modan Stability Profile
								["providers"] = {
									{ "i", 35819 },	-- Thor Modan Stability Profile
									{ "o", 188367 },	-- Portable Seismograph
								},
							}),
							objective(2, {	-- 0/1 Portable Seismograph
								["provider"] = { "i", 35837 },	-- Portable Seismograph
								["cr"] = 26522,	-- Subterranean Thresher
							}),
									i(35819),	-- Thor Modan Stability Profile (QI!)
								},
							}),
							i(38717),	-- Dusty Miner's Leggings
							i(39021),	-- Ectoplasm Stained Wristguards
							i(39050),	-- Ghostridden Waistguard
							i(39082),	-- Shocksteel Shoulderguards
						},
					}),
					q(11991, {	-- Subject to Interpretation
						["sourceQuest"] = 11990,	-- Vial of Visions
						["qg"] = 26423,	-- Drakuru
						["coord"] = { 16.4, 47.8, GRIZZLY_HILLS },
						["groups"] = {
							i(39020),	-- Drakuru's Ghastly Helm
							i(38716),	-- Ethereal Hood
							i(39049),	-- Helm of Spirit Links
							i(39081),	-- Spiritforged Helm
						},
					}),
					q(12436, {	-- Supplemental Income
						["qg"] = 26868,	-- Provisioner Lorkran
						["coord"] = { 22.6, 66.1, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Succulent Venison
								["provider"] = { "i", 37185 },	-- Succulent Venison
								["cr"] = 26363,	-- Tallhorn Stag
							}),
						},
					}),
					q(12422, {	-- Tactical Clemency
						["sourceQuest"] = 12424,	-- Gorgonna
						["qg"] = 27102,	-- Gorgonna
						["coord"] = { 20.9, 64.0, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12216, {	-- Take Their Rear!
						["sourceQuest"] = 12212,	-- Replenishing the Storehouse
						["qg"] = 27277,	-- Master Woodsman Anderhol
						["coord"] = { 32.0, 59.9, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Grizzly Flank
								["provider"] = { "i", 37200 },	-- Grizzly Flank
								["crs"] = {
									26644,	-- Ursus Mauler
									27131,	-- Grizzly Bear
								},
							}),
						},
					}),
					q(12300, {	-- Test of Mettle
						["sourceQuests"] = {
							12299,	-- Northern Hospitality
							12307,	-- Wolfsbane Root
						},
						["qg"] = 27486,	-- Sergei
						["coord"] = { 26.4, 35.7, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12231, {	-- The Bear God's Offspring
						["sourceQuests"] = {
							12213,	-- The Darkness Beneath
							12207,	-- Vordassil's Fall
						},
						["qg"] = 27262,	-- Windseer Grayhorn
						["coord"] = { 22.5, 62.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12180, {	-- The Captive Prospectors
						["sourceQuest"] = 12128,	-- Check Up on Raegar
						["qg"] = 26885,	-- Mountaineer Kilian
						["coord"] = { 76.9, 48.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12468, {	-- The Conqueror's Task
						["sourceQuests"] = {
							12487,	-- To Conquest Hold, But Be Careful!
							-- #if AFTER 6.2.0.19953
							39206,	-- Warchief's Command: Grizzly Hills!
							-- #endif
						},
						["qg"] = 26860,	-- Conqueror Krenna
						["coord"] = { 20.7, 64.1, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12427, {	-- The Conquest Pit: Bear Wrestling!
						["sourceQuests"] = {
							12178,	-- Delivery to Krenna
							-- TODO: verify the following:
							12413,	-- Attack on Silverbrook
							12422,	-- Tactical Clemency
						},
						["qg"] = 27719,	-- Grennix Shivwiggle
						["coord"] = { 22.4, 63.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12429, {	-- The Conquest Pit: Blood and Metal
						["sourceQuest"] = 12428,	-- The Conquest Pit: Mad Furbolg Fighting
						["qg"] = 27719,	-- Grennix Shivwiggle
						["coord"] = { 22.4, 63.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12430, {	-- The Conquest Pit: Death Is Likely
						["sourceQuest"] = 12429,	-- The Conquest Pit: Blood and metal
						["qg"] = 27719,	-- Grennix Shivwiggle
						["coord"] = { 22.4, 63.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12431, {  -- The Conquest Pit: Final Showdown
						["sourceQuest"] = 12430,	-- The Conquest Pit: Death Is Likely
						["qg"] = 27719,	-- Grennix Shivwiggle
						["coord"] = { 22.4, 63.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(39179),	-- Charged Earthlink Grips
							i(39181),	-- Grips of Torrential Power
							i(39182),	-- Handguards of Deluded Might
							i(39180),	-- Handguards of the Sanguine Gladiator
							i(39183),	-- Shining Buckle Gauntlets
						},
					}),
					q(12428, {	-- The Conquest Pit: Mad Furbolg Fighting
						["sourceQuest"] = 12427,	-- The Conquest Pit: Bear Wrestling!
						["qg"] = 27719,	-- Grennix Shivwiggle
						["coord"] = { 22.4, 63.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(11986, {	-- The Damaged Journal (A)
						["provider"] = { "o", 188261 },	-- Battered Journal
						["coord"] = { 64.2, 19.7, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12026, {	-- The Damaged Journal (H)
						["provider"] = { "o", 188261 },	-- Battered Journal
						["coord"] = { 64.2, 19.7, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12213, {	-- The Darkness Beneath
						["sourceQuest"] = 12413,	-- Attack on Silverbrook -- TODO: verify
						["qg"] = 27262,	-- Windseer Grayhorn
						["coord"] = { 22.5, 62.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12010, {	-- The Fate of Orlond
						["sourceQuest"] = 12003,	-- Uncovering the Tunnels
						["qg"] = 26226,	-- Brugar Stoneshear
						["coord"] = { 59.8, 27.5, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12219, {	-- The Failed World Tree
						["sourceQuest"] = 12310,	-- A Swift Response
						["qg"] = 27295,	-- Hierophant Thayreen
						["coord"] = { 31.1, 59.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Slime Sample
								["provider"] = { "i", 37199 },	-- Slime Sample
								["cr"] = 26366,	-- Entropic Ooze
							}),
							i(39052),	-- Acid-Resistant Hauberk
							i(39090),	-- Chestplate of Untimely Rewards
							i(38719),	-- Robe of Expurgation
							i(39023),	-- Wax-Coated Chestguard
						},
					}),
					q(12256, {	-- The Flamebinders' Secrets
						["sourceQuest"] = 12468,	-- The Conqueror's Task
						["qg"] = 27388,	-- Sergeant Nazgrim
						["coord"] = { 21.0, 64.0, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/3 Flame-Imbued Talisman
								["provider"] = { "i", 37229 },	-- Flame-Imbued Talisman
								["cr"] = 27259,	-- Dragonflayer Flamebinder
							}),
						},
					}),
					q(12511, {	-- The Hills Have Us
						-- #if AFTER 6.2.0
						["altQuests"] = { 39207 },	-- Hero's Call: Grizzly Hills!
						-- #endif
						["qg"] = 27317,	-- Gryphon Commander Urik
						["coord"] = { 77.1, 50.1, DRAGONBLIGHT },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(12415, {	-- The Horse Hollerer
						["qg"] = 26944,	-- Soulok Stormfury
						["coord"] = { 65.0, 47.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
					}),
					q(12153, {	-- The Iron Thane and His Anvil
						["sourceQuest"] = 12138,	-- ... Or Maybe We Don't
						["qg"] = 26883,	-- Raegar Breakbrow
						["coord"] = { 77.0, 48.6, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Iron Thane Furyhammer slain
								["provider"] = { "n", 26405 },	-- Iron Thane Furyhammer
							}),
							i(36865),	-- Golem Control Unit (QI!)
							i(39015),	-- Crackpot Spaulders
							i(39076),	-- Golem-Rider's Greaves
							i(38711),	-- Grounded Gloves
							i(39044),	-- Short-Circuiting Boots
						},
					}),
					q(12201, {	-- The Overseer's Shadow
						["sourceQuest"] = 12204,	-- in the Name of Loken
						["qg"] = 26666,	-- Scout Vor'takh
						["coord"] = { 65.1, 47.6, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Overseer's Uniform
								["provider"] = { "i", 37035 },	-- Overseer's Uniform
								["cr"] = 27177,	-- Iron Rune Overseer
							}),
						},
					}),
					q(12129, {	-- The Perfect Plan
						["sourceQuest"] = 12128,	-- Check Up on Raegar
						["qg"] = 26883,	-- Raegar Breakbrow
						["coord"] = { 77.0, 48.6, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(36848),	-- War Golem Blueprint (QI!) Obtained from combining all three sections
							i(36849),	-- Golem Blueprint Section 1 (QI!)
							i(36850),	-- Golem Blueprint Section 2 (QI!)
							i(36851),	-- Golem Blueprint Section 3 (QI!)
						},
					}),
					q(11988, {	-- The Runic Keystone
						["sourceQuest"] = 11986,	-- The Damaged Journal
						["qg"] = 26361,	-- Torthen Deepdig
						["coord"] = { 59.7, 27.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Runic Keystone Fragment
								["provider"] = { "i", 35747 },	-- Runic Keystone Fragment
								["crs"] = {
									26268,	-- Rune Reaver
									26270,	-- Iron Rune-Shaper
									26334,	-- Forgemaster Damrath
								},
							}),
						},
					}),
					q(11993, {	-- The Runic Prophecies (A)
						["sourceQuest"] = 11988,	-- The Runic Keystone
						["qg"] = 26361,	-- Torthen Deepdig
						["coord"] = { 59.7, 27.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 First Prophecy Deciphered
								["provider"] = { "o", 188264 },	-- First Rune Plate
							}),
							objective(2, {	-- 0/1 Second Prophecy Deciphered
								["provider"] = { "o", 188288 },	-- Second Rune Plate
							}),
							objective(3, {	-- 0/1 Third Prophecy Deciphered
								["provider"] = { "o", 188289 },	-- Third Rune Plate
							}),
							i(39013),	-- Discoverer's Mitts
							i(39043),	-- Trailbreaker's Spaulders
							i(38710),	-- Wayfinder's Bracers
							i(39075),	-- Waywalker's Girdle
						},
					}),
					q(12058, {  -- The Runic Prophecies (H)
						["sourceQuest"] = 12054,	-- Deciphering the Journal
						["qg"] = 26584,	-- Sage Paluna
						["coord"] = { 65.1, 47.7, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 First Prophecy Deciphered
								["provider"] = { "o", 188264 },	-- First Rune Plate
							}),
							objective(2, {	-- 0/1 Second Prophecy Deciphered
								["provider"] = { "o", 188288 },	-- Second Rune Plate
							}),
							objective(3, {	-- 0/1 Third Prophecy Deciphered
								["provider"] = { "o", 188289 },	-- Third Rune Plate
							}),
							i(39013),	-- Discoverer's Mitts
							i(39043),	-- Trailbreaker's Spaulders
							i(38710),	-- Wayfinder's Bracers
							i(39075),	-- Waywalker's Girdle
						},
					}),
					q(12255, {	-- The Thane of Voldrune (A)
						["sourceQuests"] = {
							12222,	-- Secrets of the Flamebinders
							12223,	-- Thinning the Ranks
						},
						["qg"] = 27391,	-- Woodsman Drake
						["coord"] = { 32.4, 59.9, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Thane Torvald Eriksson slain
								["provider"] = { "n", 27377 },	-- Thane Torvald Eriksson
							}),
							i(38712),	-- Headbinder's Crown
							i(39045),	-- Legguards of Refuted Feudalism
							i(39077),	-- Skull-Reshaper's Helm
							i(38749),	-- Thane Reaper's Signet
							i(39016),	-- Tunic of the Rectified Thane
						},
					}),
					q(12259, {  -- The Thane of Voldrune (H)
						["sourceQuests"] = {
							12257,	-- A Show of Strength
							12256,	-- The Flamebinders' Secrets
						},
						["qg"] = 27388,	-- Sergeant Nazgrim
						["coord"] = { 21.0, 64.0, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Thane Torvald Eriksson slain
								["provider"] = { "n", 27377 },	-- Thane Torvald Eriksson
							}),
							i(38712),	-- Headbinder's Crown
							i(39045),	-- Legguards of Refuted Feudalism
							i(39077),	-- Skull-Reshaper's Helm
							i(39016),	-- Tunic of the Rectified Thane
							i(38749),	-- Thane-Reaper's Signet
						},
					}),
					q(12195, {	-- The Unexpected 'Guest'
						["qg"] = 27221,	-- Tormak the Scarred
						["coord"] = { 65.2, 47.5, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Mature Stag Horn
								["provider"] = { "i", 37104 },	-- Mature Stag Horn
								["cr"] = 27230,	-- Silvercoat Stag
							}),
						},
					}),
					q(12215, {	-- Them or Us!
						["qg"] = 27277,	-- Master Woodsman Anderhol
						["coord"] = { 32.0, 59.9, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Graymist Hunter slain
								["provider"] = { "n", 26592 },	-- Graymist Hunter
							}),
						},
					}),
					q(12114, {	-- Therapy
						["qg"] = 26884,	-- Harkor
						["coord"] = { 73.7, 34.0, GRIZZLY_HILLS },
						["groups"] = {
							objective(1, {	-- 0/10 Drakkari Protector slain
								["provider"] = { "n", 26797 },	-- Drakkari Protector
							}),
							objective(2, {	-- 0/10 Drakkari Oracle slain
								["provider"] = { "n", 26795 },	-- Drakkari Oracle
							}),
							i(39093),	-- Chestguard of Expressed Fury
							i(39055),	-- Handguards of Extermination
							i(38728),	-- Kilt of Peaceful Reclamation
							i(39027),	-- Leggings of Anger Management
							i(38758),	-- Therapeutic Cloak
						},
					}),
					q(12223, {	-- Thinning the Ranks
						["sourceQuest"] = 12294,	-- A Tentative Pact
						["qg"] = 27391,	-- Woodsman Drake
						["coord"] = { 32.4, 59.9, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/12 Dragonflayer Huscarl slain
								["provider"] = { "n", 27260 },	-- Dragonflayer Huscarl
							}),
						},
					}),
					q(12210, {	-- Troll Season!
						["sourceQuest"] = 12212,	-- Replenishing the Storehouse
						["qg"] = 26875,	-- Lieutenant Dumont
						["coord"] = { 31.8, 60.1, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11989, {	-- Truce?
						["sourceQuest"] = 11984,	-- Filling the Cages
						["qg"] = 26423,	-- Drakuru
						["coord"] = { 16.4, 47.8, GRIZZLY_HILLS },
					}),
					q(12003, {	-- Uncovering the Tunnels
						["sourceQuest"] = 12002,	-- Brothers in Battle
						["qg"] = 26226,	-- Brugar Stoneshear
						["races"] = ALLIANCE_ONLY,
					}),
					q(12249, {	-- Ursoc, the Bear God (A)
						["sourceQuests"] = {
							12248,	-- Vordrassil's Sapling
							12250,	-- Vordrassil's Seeds
						},
						["qg"] = 27295,	-- Hierophant Thayreen
						["coord"] = { 31.1, 59.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(39173),	-- Bulwark of the Tormented God
							i(39178),	-- Greaves of Sanctified Dissolution
							i(39176),	-- Kilt of Deific Torment
							i(39175),	-- Leggings of Forceful Purification
							i(39174),	-- Legguards of Dissolved Hope
							i(39177),	-- Pants of Purified Wind
						},
					}),
					q(12236, {  -- Ursoc, the Bear God (H)
						["sourceQuests"] = {
							12241,	-- Destroy the Sapling
							12242,	-- Vordrassil's Seeds
						},
						["qg"] = 27262,	-- Windseer Grayhorn
						["coord"] = { 22.5, 62.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(39173),	-- Bulwark of the Tormented God
							i(39178),	-- Greaves of Sanctified Dissolution
							i(39176),	-- Kilt of Deific Torment
							i(39175),	-- Leggings of Forceful Purification
							i(39174),	-- Legguards of Dissolved Hope
							i(39177),	-- Pants of Purified Wind
						},
					}),
					q(11990, {	-- Vial of Visions
						["sourceQuest"] = 11989,	-- Truce?
						["qg"] = 26423,	-- Drakuru
						["coord"] = { 16.4, 47.8, GRIZZLY_HILLS },
						["groups"] = {
							objective(1, {	-- 0/3 Haze Leaf
								["providers"] = {
									{ "i", 37085 },	-- Haze Leaf
									{ "o", 188600 },	-- Hazewood Bush
								},
							}),
							objective(2, {	-- 0/1 Waterweed Frond
								["providers"] = {
									{ "i", 35795 },	-- Waterweed Frond
									{ "o", 188351 },	-- Waterweed
								},
							}),
						},
					}),
					q(12068, {	-- Voices From the Dust
						["sourceQuest"] = 12802,	-- My Heart is in Your Hands
						["qg"] = 26701,	-- Image of Drakuru
						["coord"] = { 44.9, 28.3, GRIZZLY_HILLS },
						["groups"] = {
							objective(1, {	-- 0/1 Drakkari Tablets
								["providers"] = {
									{ "i", 36757 },	-- Drakkari Tablets
									{ "o", 188461 },	-- Drakkari Tablets
								},
							}),
							i(39022),	-- Helm of Rising Smoke
							i(39051),	-- Plane-Shifted Boots
							i(39089),	-- Spiritforged Legguards
							i(38751),	-- Vengeful Spirit Beads
							i(38718),	-- Wispy Shoulderpads
						},
					}),
					q(12207, {  -- Vordrassil's Fall
						["sourceQuest"] = 12413,	-- Attack on Silverbrook
						["qg"] = 27262,	-- Windseer Grayhorn
						["coord"] = { 22.5, 62.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Slime Sample
								["provider"] = { "i", 37199 },	-- Slime Sample
								["cr"] = 26366,	-- Entropic Ooze
							}),
							i(39052),	-- Acid-Resistant Hauberk
							i(39090),	-- Chestplate of Untimely Rewards
							i(38719),	-- Robe of Expurgation
							i(39023),	-- Wax-Coated Chestguard
						},
					}),
					q(12248, {	-- Vordrassil's Sapling
						["sourceQuests"] = {
							12246,	-- A Possible Link
							12247,	-- Children of Ursoc
						},
						["qg"] = 27295,	-- Hierophant Thayreen
						["coord"] = { 31.1, 59.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12250, {	-- Vordrassil's Seeds (A)
						["sourceQuests"] = {
							12246,	-- A Possible Link
							12247,	-- Children of Ursoc
						},
						["qg"] = 27295,	-- Hierophant Thayreen
						["coord"] = { 31.1, 59.4, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Vordrassil's Seed
								["providers"] = {
									{ "i", 37302 },	-- Vordrassil's Seed
									{ "o", 188691 },	-- Vordrassil's Seed
								},
							}),
							i(38757),	-- Drape of the Possessive Soul
							i(38753),	-- Hoarder's Necklace
							i(38743),	-- Ring of the Tender
						},
					}),
					q(12242, {  -- Vordrassil's Seeds (H)
						["sourceQuests"] = {
							12229,	-- A Possible Link
							12231,	-- The Bear God's Offpsring
						},
						["qg"] = 27262,	-- Windseer Grayhorn
						["coord"] = { 22.5, 62.8, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Vordrassil's Seed
								["providers"] = {
									{ "i", 37302 },	-- Vordrassil's Seed
									{ "o", 188691 },	-- Vordrassil's Seed
								},
							}),
							i(38743),	-- Band of the Tender
							i(38757),	-- Drape of the Possessive Soul
							i(38753),	-- Hoarder's Necklace
						},
					}),
					warchiefscommand(q(39206, {	-- Warchief's Command: Grizzly Hills!
						["timeline"] = { ADDED_6_2_0 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					})),
					q(12131, {	-- We Have the Power (A)
						["sourceQuest"] = 12130,	-- Why Fabricate When You Can Appropriate
						["qg"] = 26883,	-- Raegar Breakbrow
						["coord"] = { 77.0, 48.6, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Durar's Power Cell
								["provider"] = { "i", 36857 },	-- Durar's Power Cell
								["cr"] = 26409,	-- Rune-Smith Durar
							}),
							objective(2, {	-- 0/1 Kathorn's Power Cell
								["provider"] = { "i", 36858 },	-- Kathorn's Power Cell
								["cr"] = 26410,	-- Rune-Smith Kathorn
							}),
							n(26409, {	-- Rune-Smith Durar
								["coord"] = { 74.9, 57.0, GRIZZLY_HILLS },
								["groups"] = {
							objective(1, {	-- 0/1 Durar's Power Cell
								["provider"] = { "i", 36857 },	-- Durar's Power Cell
								["cr"] = 26409,	-- Rune-Smith Durar
							}),
							objective(2, {	-- 0/1 Kathorn's Power Cell
								["provider"] = { "i", 36858 },	-- Kathorn's Power Cell
								["cr"] = 26410,	-- Rune-Smith Kathorn
							}),
									i(36857),	-- Durar's Power Cell
								},
							}),
							n(26410, {	-- Rune-Smith Kathorn
								["coord"] = { 76.8, 59.3, GRIZZLY_HILLS },
								["groups"] = {
							objective(1, {	-- 0/1 Durar's Power Cell
								["provider"] = { "i", 36857 },	-- Durar's Power Cell
								["cr"] = 26409,	-- Rune-Smith Durar
							}),
							objective(2, {	-- 0/1 Kathorn's Power Cell
								["provider"] = { "i", 36858 },	-- Kathorn's Power Cell
								["cr"] = 26410,	-- Rune-Smith Kathorn
							}),
									i(36858),	-- Kathorn's Power Cell
								},
							}),
						},
					}),
					q(12197, {	-- We Have the Power (H)
						["sourceQuest"] = 12196,	-- From the Ground Up
						["qg"] = 27227,	-- Prospector Rokar
						["coord"] = { 65.1, 47.2, GRIZZLY_HILLS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Durar's Power Cell
								["provider"] = { "i", 36857 },	-- Durar's Power Cell
								["cr"] = 26409,	-- Rune-Smith Durar
							}),
							objective(2, {	-- 0/1 Kathorn's Power Cell
								["provider"] = { "i", 36858 },	-- Kathorn's Power Cell
								["cr"] = 26410,	-- Rune-Smith Kathorn
							}),
						},
					}),
					q(12130, {	-- Why Fabricate When You Can Appropriate?
						["sourceQuest"] = 12129,	-- The Perfect Plan
						["qg"] = 26883,	-- Raegar Breakbrow
						["coord"] = { 77.0, 48.6, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 War Golem Part
								["providers"] = {
									{ "i", 36852 },	-- War Golem Part
									{ "o", 188501 },	-- War Golem Part
									{ "o", 188502 },	-- War Golem Part
									{ "o", 188503 },	-- War Golem Part
								},
							}),
							o_repeated({
								i(36852),	-- War Golem Part (QI!)
								o(188501),	-- War Golem Part
								o(188502),	-- War Golem Part
								o(188503),	-- War Golem Part
							}),
						},
					}),
					q(12307, {	-- Wolfsbane Root
						["qg"] = 27545,	-- Katja
						["coord"] = { 25.6, 33.3, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Wolfsbane Root
								["provider"] = { "o", 189313 },	-- Wolfsbane Root
							}),
							i(38756),	-- Drape of Horticultural Sanitization
							i(39105),	-- Girdle of Growing Vines
							i(39062),	-- Herbalist's Pauldrons
							i(38754),	-- Pruning Pendant
						},
					}),
					q(12302, {	-- Words of Warning
						["sourceQuest"] = 12300,	-- Test of Mettle
						["qg"] = 27497,	-- Captured Trapper
						["coord"] = { 21.9, 29.9, GRIZZLY_HILLS },
						["races"] = ALLIANCE_ONLY,
					}),
				}),
				n(RARES, {
					n(38453, {	-- Arcturis
						["description"] = "This is a highly sought-after Hunter Pet. If you see this mob, be a kind soul and announce to General chat instead of killing it.",
						["coord"] = { 31.2, 55.4, GRIZZLY_HILLS },
						["groups"] = {
							i(51958),	-- Pristine Glowbear Pelt
						},
					}),
					n(32422, {	-- Grocklar
						["coords"] = {
							{ 28.0, 41.8, GRIZZLY_HILLS },
							{ 10.8, 40.0, GRIZZLY_HILLS },
							{ 12.2, 44.6, GRIZZLY_HILLS },
							{ 13.2, 47.8, GRIZZLY_HILLS },
							{ 13.4, 52.6, GRIZZLY_HILLS },
							{ 12.8, 55.0, GRIZZLY_HILLS },
							{ 15.2, 50.6, GRIZZLY_HILLS },
							{ 21.4, 57.0, GRIZZLY_HILLS },
							{ 24.0, 55.4, GRIZZLY_HILLS },
							{ 24.0, 54.4, GRIZZLY_HILLS },
							{ 26.2, 56.4, GRIZZLY_HILLS },
							{ 24.8, 60.0, GRIZZLY_HILLS },
							{ 11.2, 71.0, GRIZZLY_HILLS },
							{ 13.4, 70.4, GRIZZLY_HILLS },
							{ 16.0, 69.6, GRIZZLY_HILLS },
							{ 18.4, 72.4, GRIZZLY_HILLS },
							{ 21.0, 72.0, GRIZZLY_HILLS },
							{ 21.8, 71.6, GRIZZLY_HILLS },
							{ 22.6, 73.6, GRIZZLY_HILLS },
						},
						["groups"] = {
							i(44675),	-- Rock-Giant's Pinky Cover
						},
					}),
					n(32429, {	-- Seething Hate
						["coords"] = {
							{ 28.6, 45.8, GRIZZLY_HILLS },
							{ 34.8, 48.6, GRIZZLY_HILLS },
							{ 40.0, 50.4, GRIZZLY_HILLS },
						},
						["groups"] = {
							i(44674),	-- Ichor-Stained Wraps
						},
					}),
					n(32438, {	-- Syreian the Bonecarver
						["coords"] = {
							{ 61.2, 35.2, GRIZZLY_HILLS },
							{ 63.4, 36.4, GRIZZLY_HILLS },
							{ 65.6, 33.6, GRIZZLY_HILLS },
							{ 66.6, 41.6, GRIZZLY_HILLS },
							{ 65.2, 29.4, GRIZZLY_HILLS },
							{ 67.6, 28.0, GRIZZLY_HILLS },
							{ 68.8, 26.0, GRIZZLY_HILLS },
							{ 69.0, 31.6, GRIZZLY_HILLS },
							{ 71.6, 35.0, GRIZZLY_HILLS },
							{ 75.2, 38.8, GRIZZLY_HILLS },
						},
						["groups"] = {
							i(44676),	-- Syreian's Leggings
						},
					}),
				}),
				n(VENDORS, {
					["description"] = "The PVP vendors in this zone (Grizzly D. Adams and Purkom) are only visible while your faction controls Venture Bay.",
					["groups"] = {
						n(27760, {	-- "Grizzly" D. Adams <Venture Coin Vendor>
							["coord"] = { 13.8, 86.4, GRIZZLY_HILLS },
							["races"] = ALLIANCE_ONLY,
							["groups"] = pvp({
								-- TODO: For Cata, we're gonna need to add the honor costs... yuck.
								moh(1, venture(70, i(38358))),	-- Arcane Revitalizer
								moh(1, venture(70, i(38359))),	-- Goblin Repetition Reducer
								venture(30, i(38360, {	-- Idol of Arcane Terror
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(38365, {	-- Idol of Perspicacious Attacks
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(38366, {	-- Idol of Pure Thoughts
									["timeline"] = { REMOVED_5_0_4 },
								})),
								moh(1, venture(50, i(38354))),	-- Oil-Stained Tarp
								venture(30, i(38357, {	-- Sharpened Throwing Gizmo
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(40875, {	-- Sigil of Arthritic Binding
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(40822, {	-- Sigil of the Frozen Conscience
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(40867, {	-- Sigil of the Wild Buck
									["timeline"] = { REMOVED_5_0_4 },
								})),
								moh(1, venture(50, i(38355))),	-- Thick Goblin Back Protector
								venture(30, i(38368, {	-- Totem of the Bay
									["timeline"] = { REMOVED_5_0_4 },
								})),
								moh(1, venture(30, i(38356))),	-- Venture Battle Wand
								moh(1, venture(50, i(38353))),	-- Venture Bay Buccaneer's Cape
								venture(30, i(38367, {	-- Venture Co. Flame Slicer
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(38364, {	-- Venture Co. Libram of Mostly Holy Deeds
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(38363, {	-- Venture Co. Libram of Protection
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(38362, {	-- Venture Co. Libram of Retribution
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(38361, {	-- Venture Co. Lightning Rod
									["timeline"] = { REMOVED_5_0_4 },
								})),
							}),
						}),
						n(26868, {	-- Provisioner Lorkran <General Goods>
							["coord"] = { 22.6, 66.0, GRIZZLY_HILLS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
								i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
							},
						}),
						n(27730, {	-- Purkom <Venture Coin Vendor>
							["coord"] = { 13.8, 86.2, GRIZZLY_HILLS },
							["races"] = HORDE_ONLY,
							["groups"] = pvp({
								-- TODO: For Cata, we're gonna need to add the honor costs... yuck.
								moh(1, venture(70, i(38358))),	-- Arcane Revitalizer
								moh(1, venture(70, i(38359))),	-- Goblin Repetition Reducer
								venture(30, i(38360, {	-- Idol of Arcane Terror
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(38365, {	-- Idol of Perspicacious Attacks
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(38366, {	-- Idol of Pure Thoughts
									["timeline"] = { REMOVED_5_0_4 },
								})),
								moh(1, venture(50, i(38354))),	-- Oil-Stained Tarp
								venture(30, i(38357, {	-- Sharpened Throwing Gizmo
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(40875, {	-- Sigil of Arthritic Binding
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(40822, {	-- Sigil of the Frozen Conscience
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(40867, {	-- Sigil of the Wild Buck
									["timeline"] = { REMOVED_5_0_4 },
								})),
								moh(1, venture(50, i(38355))),	-- Thick Goblin Back Protector
								venture(30, i(38368, {	-- Totem of the Bay
									["timeline"] = { REMOVED_5_0_4 },
								})),
								moh(1, venture(30, i(38356))),	-- Venture Battle Wand
								moh(1, venture(50, i(38353))),	-- Venture Bay Buccaneer's Cape
								venture(30, i(38367, {	-- Venture Co. Flame Slicer
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(38364, {	-- Venture Co. Libram of Mostly Holy Deeds
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(38363, {	-- Venture Co. Libram of Protection
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(38362, {	-- Venture Co. Libram of Retribution
									["timeline"] = { REMOVED_5_0_4 },
								})),
								venture(30, i(38361, {	-- Venture Co. Lightning Rod
									["timeline"] = { REMOVED_5_0_4 },
								})),
							}),
						}),
						n(91632, {	-- Remington Brode <Traveling Lumberjack>
							["description"] = "Patrols all over Grizzly Hills. When you find him select\n \"<Breathe deeply.>\",\n \"I'm looking for a song...\",\n \"A song about the wilderness.\",\n and \"Yes!\"",
							["timeline"] = { ADDED_6_1_0 },
							["groups"] = {
								i(122236, {	-- Music Roll: Totems of the Grizzlemaw
									["timeline"] = { ADDED_6_1_0 },
								}),
							},
						}),
						n(26229, {	-- Tiernan Anvilheart
							["races"] = ALLIANCE_ONLY,
							["coord"] = { 59.6, 27.8, GRIZZLY_HILLS },
							["sym"] = {{"select","itemID",
								30758,	-- Aldor Guardian Rifle
								30749,	-- Draenic Sparring Blade
								30750,	-- Draenic Warblade
							}},
						}),
					},
				}),
				n(ZONE_DROPS, {
					applyclassicphase(WRATH_PHASE_TWO, i(44981, {	-- Ashwood Brand
						["provider"] = { "i", 44986 },	-- Warts-B-Gone Lip Balm
						["coord"] = { 60.5, 51.5, GRIZZLY_HILLS },
						["description"] = "Kiss this frog.",
						["cr"] = 33224,	-- Maiden of Ashwood Lake
					})),
					i(41123, {	-- Plans: Reinforced Cobalt Helm (RECIPE!)
						["coord"] = { 68.4, 16.0, GRIZZLY_HILLS },
						["cr"] = 26270,	-- Iron Rune-Shaper
					}),
					i(46108, {	-- Technique: Rituals of the New Moon
						["crs"] = {
							27676,	-- Silverbrook Defender
							27546,	-- Silverbrook Hunter
							26679,	-- Silverbrook Trapper
							26708,	-- Silverbrook Villager
						},
					}),
				}),
			},
		}),
	})),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WRATH, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	m(NORTHREND, {
		m(GRIZZLY_HILLS, {
			n(QUESTS, {
				q(13524),	-- Escape from Silverbrook (Triggered when you complete the other Escape from Silverbrook quest.)
			}),
		}),
	}),
})));
