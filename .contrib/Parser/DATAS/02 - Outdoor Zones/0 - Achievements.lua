---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	-- TODO: some of these are lacking lots of information! (crs/coords/etc.)
	n(ACHIEVEMENTS, {
		ach(973, {		-- 5 Daily Quests Completed
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(974, {		-- 50 Daily Quests Completed
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(975, {		-- 200 Daily Quests Completed
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(976, {		-- 500 Daily Quests Completed
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(977, {		-- 1000 Daily Quests Completed
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(5751, {		-- 2500 Daily Quests Completed
			["timeline"] = { ADDED_4_1_0 },
		}),
		ach(7410, {		-- 5000 Daily Quests Completed
			["timeline"] = { ADDED_5_0_4 },
		}),
		ach(7411, {		-- 10000 Daily Quests Completed
			["timeline"] = { ADDED_5_0_4 },
		}),
		ach(4956, {		-- 5 Dungeon Quests Completed
			["timeline"] = { ADDED_4_0_3 },
		}),
		ach(4957, {		-- 20 Dungeon Quests Completed
			["timeline"] = { ADDED_4_0_3 },
		}),
		ach(503, {		-- 50 Quests Completed
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(504, {		-- 100 Quests Completed
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(505, {		-- 250 Quests Completed
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(506, {		-- 500 Quests Completed
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(507, {		-- 1000 Quests Completed
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(508, {		-- 1500 Quests Completed
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(32, {		-- 2000 Quests Completed
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(978, {		-- 3000 Quests Completed
			["timeline"] = { ADDED_3_0_2 },
			["g"] = {
				title(42),		-- <Name> the Seeker
			},
		}),
		ach(11126, {	-- 50 World Quests Completed
			["timeline"] = { ADDED_7_0_3 },
		}),
		ach(11127, {	-- 200 World Quests Completed
			["timeline"] = { ADDED_7_0_3 },
		}),
		ach(11128, {	-- 500 World Quests Completed
			["timeline"] = { ADDED_7_0_3 },
		}),
		ach(11129, {	-- 1000 World Quests Completed
			["timeline"] = { ADDED_7_0_3 },
		}),
		ach(11130, {	-- 2500 World Quests Completed
			["timeline"] = { ADDED_7_0_3 },
		}),
		ach(11131, {	-- 5000 World Quests Completed
			["timeline"] = { ADDED_7_0_3 },
		}),
		ach(11132, {	-- 10,000 World Quests Completed
			["timeline"] = { ADDED_7_0_3 },
		}),
		ach(31, {		-- A Simple Re-Quest
			["timeline"] = { ADDED_3_0_2 },
		}),
		applyclassicphase(PHASE_ONE, achWithReps(948, {	-- Ambassador of the Alliance
		FACTION_DARNASSUS, FACTION_GNOMEREGAN, FACTION_IRONFORGE, FACTION_STORMWIND,		-- Exalted Darnassus, Gnomeregan, Ironforge, Stormwind City
			-- #if AFTER TBC
			FACTION_EXODAR,	-- Exalted Exodar
			-- #endif
			-- #if AFTER CATA
			FACTION_GILNEAS,	-- Exalted Gilnaes
			-- #endif
		}, {
			["timeline"] = { ADDED_3_0_2 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = applyclassicphase(WRATH_PHASE_ONE, {
				title(98),	-- Ambassador <Name>
			}),
		})),
		applyclassicphase(PHASE_ONE, achWithReps(762, {	-- Ambassador of the Horde
			FACTION_DARKSPEAR_TROLLS, FACTION_ORGRIMMAR, FACTION_THUNDER_BLUFF, FACTION_UNDERCITY,	-- Exalted Darkspear Trolls, Orgrimmar, Thunder Bluff, Undercity
			-- #if AFTER TBC
			FACTION_SILVERMOON_CITY,	-- Exalted Silvermoon City
			-- #endif
			-- #if AFTER CATA
			FACTION_BILGEWATER_CARTEL,	-- Exalted Bilgewater Cartel
			-- #endif
		}, {
			["timeline"] = { ADDED_3_0_2 },
			["races"] = HORDE_ONLY,
			["groups"] = applyclassicphase(WRATH_PHASE_ONE, {
				title(98),	-- Ambassador <Name>
			}),
		})),
		petbattle(ach(9069, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 }, }, {	-- An Awfully Big Adventure
			["provider"] = { "i", 113216 },	-- Elekk Plushie
			["groups"] = {
				i(120121),	-- Trunks (PET!)
				crit(25118, {	-- Aki the Chosen (Pandaria - Vale of Eternal Blossoms)
					["_npcs"] = { 66741 },	-- Aki the Chosen
				}),
				crit(26969, {	-- Ashlei (Draenor - Shadowmoon Valley)
					["_npcs"] = { 87124 },	-- Ashlei <Grand Master Pet Tamer>
				}),
				crit(26970, {	-- Beegle Blastfuse (Northrend - Howling Fjord)
					["_npcs"] = { 66635 },	-- Beegle Blastfuse <Master Pet Tamer>
				}),
				crit(26971, {	-- Blingtron 4000 (Pandaria - Celestial Tournament)
					["_npcs"] = { 71933 },	-- Blingtron 4000
				}),
				crit(27471, {	-- Bloodknight Antari (Outland - Shadowmoon Valley)
					["_npcs"] = { 66557 },	-- Bloodknight Antari <Grand Master Pet Tamer>
				}),
				crit(26972, {	-- Bordin Steadyfist
					["_npcs"] = { 66815 },	-- Bordin Steadyfist <Master Pet Tamer>
				}),
				crit(26973, {	-- Brok
					["_npcs"] = { 66819 },	-- Brok <Master Pet Tamer>
				}),
				crit(26974, {	-- Burning Pandaren Spirit
					["_npcs"] = { 68463 },	-- Burning Pandaren Spirit <Grand Master Pet Tamer>
				}),
				crit(26975, {	-- Chen Stormstout (Pandaria - Celestial Tournament)
					["_npcs"] = { 71927 },	-- Chen Stormstout
				}),
				crit(26976, {	-- Christoph VonFeasel (Darkmoon Island)
					["_quests"] = { 36471 },	-- A New Darkmoon Challenger!
					--["_npcs"] = { 85519 },	-- Christoph VonFeasel <Grand Master Pet Tamer>
				}),
				crit(26977, {	-- Courageous Yon
					["_npcs"] = { 66738 },	-- Courageous Yon <Grand Master Pet Tamer>
				}),
				crit(26978, {	-- Cymre Brightblade
					["_npcs"] = { 83837 },	-- Cymre Brightblade <Grand Master Pet Tamer>
				}),
				crit(26979, {	-- Dr. Ion Goldbloom (Pandaria - Celestial Tournament)
					["_npcs"] = { 71934 },	-- Dr. Ion Goldbloom <Jurassic Expedition>
				}),
				crit(26980, {	-- Farmer Nishi
					["_npcs"] = { 66734 },	-- Farmer Nishi <Grand Master Pet Tamer>
				}),
				crit(26981, {	-- Flowing Pandaren Spirit
					["_npcs"] = { 68462 },	-- Flowing Pandaren Spirit <Grand Master Pet Tamer>
				}),
				crit(26982, {	-- Gargra
					["_npcs"] = { 87122 },	-- Gargra <Grand Master Pet Tamer>
				}),
				crit(26983, {	-- Goz Banefury
					["_npcs"] = { 66822 },	-- Goz Banefury <Master Pet Tamer>
				}),
				crit(26984, {	-- Gutretch
					["_npcs"] = { 66639 },	-- Gutretch <Master Pet Tamer>
				}),
				crit(26985, {	-- Hyuna of the Shrines
					["_npcs"] = { 66730 },	-- Hyuna of the Shrines <Grand Master Pet Tamer>
				}),
				crit(26986, {	-- Jeremy Feasel (Darkmoon Island)
					["_quests"] = { 32175 },	-- Darkmoon Pet Battle!
					--["_npcs"] = { 67370 },	-- Jeremy Feasel <Master Pet Tamer>
				}),
				crit(26987, {	-- Lorewalker Cho (Pandaria - Celestial Tournament)
					["_npcs"] = { 71926 },	-- Lorewalker Cho
				}),
				crit(26988, {	-- Lydia Accoste
					["_npcs"] = { 66522 },	-- Lydia Accoste <Grand Master Pet Tamer>
				}),
				crit(26989, {	-- Major Payne
					["_npcs"] = { 66675 },	-- Major Payne
				}),
				crit(26990, {	-- Mo'ruk
					["_npcs"] = { 66733 },	-- Mo'ruk <Grand Master Pet Tamer>
				}),
				crit(26991, {	-- Morulu The Elder
					["_npcs"] = { 66553 },	-- Morulu The Elder <Master Pet Tamer>
				}),
				crit(26992, {	-- Narrok (Outland)
					["_npcs"] = { 66552 },	-- Narrok <Master Pet Tamer>
				}),
				crit(26993, {	-- Nearly Headless Jacob
					["_npcs"] = { 66636 },	-- Nearly Headless Jacob <Master Pet Tamer>
				}),
				crit(26994, {	-- Nicki Tinytech
					["_npcs"] = { 66550 },	-- Nicki Tinytech <Master Pet Tamer>
				}),
				crit(26995, {	-- Obalis
					["_npcs"] = { 66824 },	-- Obalis <Grand Master Pet Tamer>
				}),
				crit(26996, {	-- Okrut Dragonwaste
					["_npcs"] = { 66638 },	-- Okrut Dragonwaste <Master Pet Tamer>
				}),
				crit(26997, {	-- Ras'an
					["_npcs"] = { 66551 },	-- Ras'an <Master Pet Tamer>
				}),
				crit(26998, {	-- Seeker Zusshi
					["_npcs"] = { 66918 },	-- Seeker Zusshi <Grand Master Pet Tamer>
				}),
				crit(26999, {	-- Shademaster Kiryn (Pandaria - Celestial Tournament)
					["_npcs"] = { 71930 },	-- Shademaster Kiryn
				}),
				crit(27000, {	-- Stone Cold Trixxy (Kalimdor - Winterspring)
					["_npcs"] = { 66466 },	-- Stone Cold Trixxy <Grand Master Pet Tamer>
				}),
				crit(27001, {	-- Sully "The Pickle" McLeary (Pandaria - Celestial Tournament)
					["_npcs"] = { 71929 },	-- Sully "The Pickle" McLeary <SI:7>
				}),
				crit(27002, {	-- Taralune (Draenor - Talador)
					["_npcs"] = { 87125 },	-- Taralune <Grand Master Pet Tamer>
				}),
				crit(27003, {	-- Taran Zhu (Pandaria - Celestial Tournament)
					["_npcs"] = { 71931 },	-- Taran Zhu <Lord of the Shado-Pan>
				}),
				crit(27004, {	-- Tarr the Terrible (Draenor - Nagrand)
					["_npcs"] = { 87110 },	-- Tarr the Terrible <Grand Master Pet Tamer>
				}),
				crit(27005, {	-- Thundering Pandaren Spirit (Pandaria - Kun-Lai Summit)
					["_npcs"] = { 68465 },	-- Thundering Pandaren Spirit <Grand Master Pet Tamer>
				}),
				crit(27006, {	-- Vesharr (Draenor - Spires of Arak)
					["_npcs"] = { 87123 },	-- Vesharr <Grand Master Pet Tamer>
				}),
				crit(27007, {	-- Wastewalker Shu (Pandaria - Dread Wastes)
					["_npcs"] = { 66739 },	-- Wastewalker Shu <Grand Master Pet Tamer>
				}),
				crit(27008, {	-- Whispering Pandaren Spirit (Pandaria - The Jade Forest)
					["_npcs"] = { 68464 },	-- Whispering Pandaren Spirit <Grand Master Pet Tamer>
				}),
				crit(27009, {	-- Wise Mari (Pandaria - Celestial Tournament)
					["_npcs"] = { 71932 },	-- Wise Mari <Waterspeaker>
				}),
				crit(27010, {	-- Wrathion (Pandaria - Celestial Tournament)
					["_npcs"] = { 71924 },	-- Wrathion <The Black Prince>
				}),
			},
		}))),
		applyclassicphase(BFA_PHASE_ONE, ach(12988, {	-- Battle for Azeroth Explorer
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				12556,	-- Explore Tiragarde Sound
				12557,	-- Explore Drustvar
				12558,	-- Explore Stormsong Valley
				12559,	-- Explore Zuldazar
				12561,	-- Explore Nazmir
				12560,	-- Explore Vol'dun
			}},
			["timeline"] = { ADDED_8_0_1 },
		})),
		petbattle(ach(12930, {	-- Battle Safari (Kul Tiras and Zandalar)
			["timeline"] = { ADDED_8_0_1 },
			["g"] = {
				i(163634),		-- Dreadtick Leecher (PET!)
				crit(41273),		-- Shadowback Crawler
				crit(41274),		-- River Frog
				crit(41275),		-- Freshwater Crawler
				crit(41276),		-- Vale Marmot
				crit(41277),		-- Valley Chicken
				crit(41278),		-- Sandyback Crawler
				crit(41279),		-- River Otter
				crit(41281),		-- Parasitic Boarfly
				crit(41282),		-- Shack Crab
				crit(41283),		-- Inland Croaker
				crit(41284),		-- Giant Woodworm
				crit(41285),		-- Shore Butterfly
				crit(41286),		-- Barrier Hermit
				crit(41287),		-- Coastal Scuttler
				crit(41289),		-- Golden Beetle
				crit(41288),		-- Bloodfever Tarantula
				crit(41290),		-- Elusive Skimmer
				crit(41291),		-- Leafy Flutterwing
				crit(41292),		-- Young Sand Sifter
				crit(41293),		-- Sticky Oozeling
				crit(41294),		-- Returned Hatchling
				crit(41295),		-- Glutted Bleeder
				crit(41296),		-- Spectral Raven
				crit(41297),		-- Boghopper
				crit(41298),		-- Hermit Crab
				crit(41299),		-- Coastal Bounder
				crit(41280),		-- Honey Bee
			},
		})),
		applyclassicphase(CATA_PHASE_ONE, ach(4868, {	-- Cataclysm Explorer [7.0.3] / Explore Cataclysm
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				4864,	-- Explore Deepholm
				4863,	-- Explore Hyjal
				4866,	-- Explore Twilight Highlands
				4865,	-- Explore Uldum
				4825,	-- Explore Vashj'ir
			}},
			["timeline"] = { ADDED_4_0_3 },
		})),
		header(HEADERS.Achievement, 13279, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 }, }, {	-- Family Battler
			petbattle(ach(13279, {	-- Family Battler
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					13270,	-- Beast Mode
					13271,	-- Critters with Huge Teeth
					13272,	-- Dragons Make Everything Better
					13273,	-- Element of Success
					13274,	-- Fun With Flying
					13280,	-- Hobbyist Aquarist
					13281,	-- Human Resources
					13277,	-- Machine Learning
					13275,	-- Magician's Secrets
					13278,	-- Not Quite Dead Yet
				}},
			})),
			petbattle(ach(13270, {	-- Beast Mode
				crit(43620, {	-- Burly
					["cr"] = 141479,	-- Burly
					["coord"] = { 67.6, 12.8, TIRAGARDE_SOUND },
				}),
				crit(43611, {	-- Captain Hermes
					["cr"] = 139489,	-- Captain Hermes
					["coord"] = { 21.4, 66.4, DRUSTVAR },
				}),
				crit(43619, {	-- Delia Hanako
					["cr"] = 141292,	-- Delia Hanako
					["coord"] = { 59.6, 33.2, TIRAGARDE_SOUND },
				}),
				crit(43613, {	-- Dilbert McClint
					["cr"] = 140461,	-- Dilbert McClint
					["coord"] = { 63.6, 59.6, DRUSTVAR },
				}),
				crit(43612, {	-- Eddie Fixit
					["cr"] = 140315,	-- Eddie Fixit
					["coord"] = { 36.5, 33.7, STORMSONG_VALLEY },
				}),
				crit(43616, {	-- Ellie Vern
					["cr"] = 141002,	-- Ellie Vern
					["coord"] = { 65.0, 50.8, STORMSONG_VALLEY },
				}),
				crit(43614, {	-- Fizzie Sparkwhistle
					["cr"] = 140813,	-- Fizzie Sparkwhistle
					["coord"] = { 38.1, 38.5, DRUSTVAR },
				}),
				crit(43622, {	-- Grady Prett
					["cr"] = 141799,	-- Grady Prett
					["coord"] = { 36.0, 54.6, NAZMIR },
				}),
				crit(43627, {	-- Karaga
					["cr"] = 142096,	-- Karaga
					["coord"] = { 70.6, 29.6, ZULDAZAR },
				}),
				crit(43624, {	-- Keeyo
					["coord"] = { 57.0, 49.0, VOLDUN },
					["cr"] = 141879,	-- Keeyo
				}),
				crit(43623, {	-- Korval Darkbeard
					["cr"] = 141814,	-- Korval Darkbeard
					["coord"] = { 43.0, 38.8, NAZMIR },
				}),
				crit(43626, {	-- Kusa
					["coord"] = { 45.0, 46.4, VOLDUN },
					["cr"] = 142054,	-- Kusa
				}),
				crit(43618, {	-- Kwint
					["cr"] = 141077,	-- Kwint
					["coord"] = { 86.2, 38.6, TIRAGARDE_SOUND },
				}),
				crit(43617, {	-- Leana Darkwind
					["cr"] = 141046,	-- Leana Darkwind
					["coord"] = { 77.2, 29.0, STORMSONG_VALLEY },
				}),
				crit(43621, {	-- Lozu
					["cr"] = 141529,	-- Lozu
					["coord"] = { 72.8, 48.6, NAZMIR },
				}),
				crit(43615, {	-- Michael Skarn
					["cr"] = 140880,	-- Michael Skarn
					["coord"] = { 61.0, 17.6, DRUSTVAR },
				}),
				crit(43625, {	-- Sizzik
					["coord"] = { 26.6, 54.8, VOLDUN },
					["cr"] = 141945,	-- Sizzik
				}),
				crit(43628, {	-- Talia Sparkbrow
					["cr"] = 142114,	-- Talia Sparkbrow
					["coord"] = { 48.4, 35.0, ZULDAZAR },
				}),
				crit(43629, {	-- Zujai
					["cr"] = 142234,	-- Zujai
					["coord"] = { 50.6, 24.0, ZULDAZAR },
				}),
			})),
			petbattle(ach(13271, {	-- Critters with Huge Teeth
				crit(43641, {	-- Burly
					["cr"] = 141479,	-- Burly
					["coord"] = { 67.6, 12.8, TIRAGARDE_SOUND },
				}),
				crit(43631, {	-- Captain Hermes
					["cr"] = 139489,	-- Captain Hermes
					["coord"] = { 21.4, 66.4, DRUSTVAR },
				}),
				crit(43640, {	-- Delia Hanako
					["cr"] = 141292,	-- Delia Hanako
					["coord"] = { 59.6, 33.2, TIRAGARDE_SOUND },
				}),
				crit(43633, {	-- Dilbert McClint
					["cr"] = 140461,	-- Dilbert McClint
					["coord"] = { 63.6, 59.6, DRUSTVAR },
				}),
				crit(43632, {	-- Eddie Fixit
					["cr"] = 140315,	-- Eddie Fixit
					["coord"] = { 36.5, 33.7, STORMSONG_VALLEY },
				}),
				crit(43636, {	-- Ellie Vern
					["cr"] = 141002,	-- Ellie Vern
					["coord"] = { 65.0, 50.8, STORMSONG_VALLEY },
				}),
				crit(43634, {	-- Fizzie Sparkwhistle
					["cr"] = 140813,	-- Fizzie Sparkwhistle
					["coord"] = { 38.1, 38.5, DRUSTVAR },
				}),
				crit(43644, {	-- Grady Prett
					["cr"] = 141799,	-- Grady Prett
					["coord"] = { 36.0, 54.6, NAZMIR },
				}),
				crit(43649, {	-- Karaga
					["cr"] = 142096,	-- Karaga
					["coord"] = { 70.6, 29.6, ZULDAZAR },
				}),
				crit(43646, {	-- Keeyo
					["coord"] = { 57.0, 49.0, VOLDUN },
					["cr"] = 141879,	-- Keeyo
				}),
				crit(43645, {	-- Korval Darkbeard
					["cr"] = 141814,	-- Korval Darkbeard
					["coord"] = { 43.0, 38.8, NAZMIR },
				}),
				crit(43648, {	-- Kusa
					["coord"] = { 45.0, 46.4, VOLDUN },
					["cr"] = 142054,	-- Kusa
				}),
				crit(43639, {	-- Kwint
					["cr"] = 141077,	-- Kwint
					["coord"] = { 86.2, 38.6, TIRAGARDE_SOUND },
				}),
				crit(43638, {	-- Leana Darkwind
					["cr"] = 141046,	-- Leana Darkwind
					["coord"] = { 77.2, 29.0, STORMSONG_VALLEY },
				}),
				crit(43643, {	-- Lozu
					["cr"] = 141529,	-- Lozu
					["coord"] = { 72.8, 48.6, NAZMIR },
				}),
				crit(43635, {	-- Michael Skarn
					["cr"] = 140880,	-- Michael Skarn
					["coord"] = { 61.0, 17.6, DRUSTVAR },
				}),
				crit(43647, {	-- Sizzik
					["coord"] = { 26.6, 54.8, VOLDUN },
					["cr"] = 141945,	-- Sizzik
				}),
				crit(43650, {	-- Talia Sparkbrow
					["cr"] = 142114,	-- Talia Sparkbrow
					["coord"] = { 48.4, 35.0, ZULDAZAR },
				}),
				crit(43651, {	-- Zujai
					["cr"] = 142234,	-- Zujai
					["coord"] = { 50.6, 24.0, ZULDAZAR },
				}),
			})),
			petbattle(ach(13272, {	-- Dragons Make Everything Better
				crit(43661, {	-- Burly
					["cr"] = 141479,	-- Burly
					["coord"] = { 67.6, 12.8, TIRAGARDE_SOUND },
				}),
				crit(43652, {	-- Captain Hermes
					["cr"] = 139489,	-- Captain Hermes
					["coord"] = { 21.4, 66.4, DRUSTVAR },
				}),
				crit(43660, {	-- Delia Hanako
					["cr"] = 141292,	-- Delia Hanako
					["coord"] = { 59.6, 33.2, TIRAGARDE_SOUND },
				}),
				crit(43654, {	-- Dilbert McClint
					["cr"] = 140461,	-- Dilbert McClint
					["coord"] = { 63.6, 59.6, DRUSTVAR },
				}),
				crit(43653, {	-- Eddie Fixit
					["cr"] = 140315,	-- Eddie Fixit
					["coord"] = { 36.5, 33.7, STORMSONG_VALLEY },
				}),
				crit(43657, {	-- Ellie Vern
					["cr"] = 141002,	-- Ellie Vern
					["coord"] = { 65.0, 50.8, STORMSONG_VALLEY },
				}),
				crit(43655, {	-- Fizzie Sparkwhistle
					["cr"] = 140813,	-- Fizzie Sparkwhistle
					["coord"] = { 38.1, 38.5, DRUSTVAR },
				}),
				crit(43663, {	-- Grady Prett
					["cr"] = 141799,	-- Grady Prett
					["coord"] = { 36.0, 54.6, NAZMIR },
				}),
				crit(43668, {	-- Karaga
					["cr"] = 142096,	-- Karaga
					["coord"] = { 70.6, 29.6, ZULDAZAR },
				}),
				crit(43665, {	-- Keeyo
					["coord"] = { 57.0, 49.0, VOLDUN },
					["cr"] = 141879,	-- Keeyo
				}),
				crit(43664, {	-- Korval Darkbeard
					["cr"] = 141814,	-- Korval Darkbeard
					["coord"] = { 43.0, 38.8, NAZMIR },
				}),
				crit(43667, {	-- Kusa
					["coord"] = { 45.0, 46.4, VOLDUN },
					["cr"] = 142054,	-- Kusa
				}),
				crit(43659, {	-- Kwint
					["cr"] = 141077,	-- Kwint
					["coord"] = { 86.2, 38.6, TIRAGARDE_SOUND },
				}),
				crit(43658, {	-- Leana Darkwind
					["cr"] = 141046,	-- Leana Darkwind
					["coord"] = { 77.2, 29.0, STORMSONG_VALLEY },
				}),
				crit(43662, {	-- Lozu
					["cr"] = 141529,	-- Lozu
					["coord"] = { 72.8, 48.6, NAZMIR },
				}),
				crit(43656, {	-- Michael Skarn
					["cr"] = 140880,	-- Michael Skarn
					["coord"] = { 61.0, 17.6, DRUSTVAR },
				}),
				crit(43666, {	-- Sizzik
					["coord"] = { 26.6, 54.8, VOLDUN },
					["cr"] = 141945,	-- Sizzik
				}),
				crit(43669, {	-- Talia Sparkbrow
					["cr"] = 142114,	-- Talia Sparkbrow
					["coord"] = { 48.4, 35.0, ZULDAZAR },
				}),
				crit(43670, {	-- Zujai
					["cr"] = 142234,	-- Zujai
					["coord"] = { 50.6, 24.0, ZULDAZAR },
				}),
			})),
			petbattle(ach(13273, {	-- Element of Success
				crit(43689, {	-- Burly
					["cr"] = 141479,	-- Burly
					["coord"] = { 67.6, 12.8, TIRAGARDE_SOUND },
				}),
				crit(43671, {	-- Captain Hermes
					["cr"] = 139489,	-- Captain Hermes
					["coord"] = { 21.4, 66.4, DRUSTVAR },
				}),
				crit(43679, {	-- Delia Hanako
					["cr"] = 141292,	-- Delia Hanako
					["coord"] = { 59.6, 33.2, TIRAGARDE_SOUND },
				}),
				crit(43673, {	-- Dilbert McClint
					["cr"] = 140461,	-- Dilbert McClint
					["coord"] = { 63.6, 59.6, DRUSTVAR },
				}),
				crit(43672, {	-- Eddie Fixit
					["cr"] = 140315,	-- Eddie Fixit
					["coord"] = { 36.5, 33.7, STORMSONG_VALLEY },
				}),
				crit(43676, {	-- Ellie Vern
					["cr"] = 141002,	-- Ellie Vern
					["coord"] = { 65.0, 50.8, STORMSONG_VALLEY },
				}),
				crit(43674, {	-- Fizzie Sparkwhistle
					["cr"] = 140813,	-- Fizzie Sparkwhistle
					["coord"] = { 38.1, 38.5, DRUSTVAR },
				}),
				crit(43691, {	-- Grady Prett
					["cr"] = 141799,	-- Grady Prett
					["coord"] = { 36.0, 54.6, NAZMIR },
				}),
				crit(43696, {	-- Karaga
					["cr"] = 142096,	-- Karaga
					["coord"] = { 70.6, 29.6, ZULDAZAR },
				}),
				crit(43693, {	-- Keeyo
					["coord"] = { 57.0, 49.0, VOLDUN },
					["cr"] = 141879,	-- Keeyo
				}),
				crit(43692, {	-- Korval Darkbeard
					["cr"] = 141814,	-- Korval Darkbeard
					["coord"] = { 43.0, 38.8, NAZMIR },
				}),
				crit(43695, {	-- Kusa
					["coord"] = { 45.0, 46.4, VOLDUN },
					["cr"] = 142054,	-- Kusa
				}),
				crit(43678, {	-- Kwint
					["cr"] = 141077,	-- Kwint
					["coord"] = { 86.2, 38.6, TIRAGARDE_SOUND },
				}),
				crit(43677, {	-- Leana Darkwind
					["cr"] = 141046,	-- Leana Darkwind
					["coord"] = { 77.2, 29.0, STORMSONG_VALLEY },
				}),
				crit(43690, {	-- Lozu
					["cr"] = 141529,	-- Lozu
					["coord"] = { 72.8, 48.6, NAZMIR },
				}),
				crit(43675, {	-- Michael Skarn
					["cr"] = 140880,	-- Michael Skarn
					["coord"] = { 61.0, 17.6, DRUSTVAR },
				}),
				crit(43694, {	-- Sizzik
					["coord"] = { 26.6, 54.8, VOLDUN },
					["cr"] = 141945,	-- Sizzik
				}),
				crit(43697, {	-- Talia Sparkbrow
					["cr"] = 142114,	-- Talia Sparkbrow
					["coord"] = { 48.4, 35.0, ZULDAZAR },
				}),
				crit(43698, {	-- Zujai
					["cr"] = 142234,	-- Zujai
					["coord"] = { 50.6, 24.0, ZULDAZAR },
				}),
			})),
			petbattle(ach(13274, {	-- Fun With Flying
				crit(43708, {	-- Burly
					["cr"] = 141479,	-- Burly
					["coord"] = { 67.6, 12.8, TIRAGARDE_SOUND },
				}),
				crit(43699, {	-- Captain Hermes
					["cr"] = 139489,	-- Captain Hermes
					["coord"] = { 21.4, 66.4, DRUSTVAR },
				}),
				crit(43707, {	-- Delia Hanako
					["cr"] = 141292,	-- Delia Hanako
					["coord"] = { 59.6, 33.2, TIRAGARDE_SOUND },
				}),
				crit(43701, {	-- Dilbert McClint
					["cr"] = 140461,	-- Dilbert McClint
					["coord"] = { 63.6, 59.6, DRUSTVAR },
				}),
				crit(43700, {	-- Eddie Fixit
					["cr"] = 140315,	-- Eddie Fixit
					["coord"] = { 36.5, 33.7, STORMSONG_VALLEY },
				}),
				crit(43704, {	-- Ellie Vern
					["cr"] = 141002,	-- Ellie Vern
					["coord"] = { 65.0, 50.8, STORMSONG_VALLEY },
				}),
				crit(43702, {	-- Fizzie Sparkwhistle
					["cr"] = 140813,	-- Fizzie Sparkwhistle
					["coord"] = { 38.1, 38.5, DRUSTVAR },
				}),
				crit(43710, {	-- Grady Prett
					["cr"] = 141799,	-- Grady Prett
					["coord"] = { 36.0, 54.6, NAZMIR },
				}),
				crit(43715, {	-- Karaga
					["cr"] = 142096,	-- Karaga
					["coord"] = { 70.6, 29.6, ZULDAZAR },
				}),
				crit(43712, {	-- Keeyo
					["coord"] = { 57.0, 49.0, VOLDUN },
					["cr"] = 141879,	-- Keeyo
				}),
				crit(43711, {	-- Korval Darkbeard
					["cr"] = 141814,	-- Korval Darkbeard
					["coord"] = { 43.0, 38.8, NAZMIR },
				}),
				crit(43714, {	-- Kusa
					["coord"] = { 45.0, 46.4, VOLDUN },
					["cr"] = 142054,	-- Kusa
				}),
				crit(43706, {	-- Kwint
					["cr"] = 141077,	-- Kwint
					["coord"] = { 86.2, 38.6, TIRAGARDE_SOUND },
				}),
				crit(43705, {	-- Leana Darkwind
					["cr"] = 141046,	-- Leana Darkwind
					["coord"] = { 77.2, 29.0, STORMSONG_VALLEY },
				}),
				crit(43709, {	-- Lozu
					["cr"] = 141529,	-- Lozu
					["coord"] = { 72.8, 48.6, NAZMIR },
				}),
				crit(43703, {	-- Michael Skarn
					["cr"] = 140880,	-- Michael Skarn
					["coord"] = { 61.0, 17.6, DRUSTVAR },
				}),
				crit(43713, {	-- Sizzik
					["coord"] = { 26.6, 54.8, VOLDUN },
					["cr"] = 141945,	-- Sizzik
				}),
				crit(43716, {	-- Talia Sparkbrow
					["cr"] = 142114,	-- Talia Sparkbrow
					["coord"] = { 48.4, 35.0, ZULDAZAR },
				}),
				crit(43717, {	-- Zujai
					["cr"] = 142234,	-- Zujai
					["coord"] = { 50.6, 24.0, ZULDAZAR },
				}),
			})),
			petbattle(ach(13280, {	-- Hobbyist Aquarist
				crit(43600, {	-- Burly
					["cr"] = 141479,	-- Burly
					["coord"] = { 67.6, 12.8, TIRAGARDE_SOUND },
				}),
				crit(43591, {	-- Captain Hermes
					["cr"] = 139489,	-- Captain Hermes
					["coord"] = { 21.4, 66.4, DRUSTVAR },
				}),
				crit(43599, {	-- Delia Hanako
					["cr"] = 141292,	-- Delia Hanako
					["coord"] = { 59.6, 33.2, TIRAGARDE_SOUND },
				}),
				crit(43593, {	-- Dilbert McClint
					["cr"] = 140461,	-- Dilbert McClint
					["coord"] = { 63.6, 59.6, DRUSTVAR },
				}),
				crit(43592, {	-- Eddie Fixit
					["cr"] = 140315,	-- Eddie Fixit
					["coord"] = { 36.5, 33.7, STORMSONG_VALLEY },
				}),
				crit(43596, {	-- Ellie Vern
					["cr"] = 141002,	-- Ellie Vern
					["coord"] = { 65.0, 50.8, STORMSONG_VALLEY },
				}),
				crit(43594, {	-- Fizzie Sparkwhistle
					["cr"] = 140813,	-- Fizzie Sparkwhistle
					["coord"] = { 38.1, 38.5, DRUSTVAR },
				}),
				crit(43602, {	-- Grady Prett
					["cr"] = 141799,	-- Grady Prett
					["coord"] = { 36.0, 54.6, NAZMIR },
				}),
				crit(43607, {	-- Karaga
					["cr"] = 142096,	-- Karaga
					["coord"] = { 70.6, 29.6, ZULDAZAR },
				}),
				crit(43604, {	-- Keeyo
					["coord"] = { 57.0, 49.0, VOLDUN },
					["cr"] = 141879,	-- Keeyo
				}),
				crit(43603, {	-- Korval Darkbeard
					["cr"] = 141814,	-- Korval Darkbeard
					["coord"] = { 43.0, 38.8, NAZMIR },
				}),
				crit(43606, {	-- Kusa
					["coord"] = { 45.0, 46.4, VOLDUN },
					["cr"] = 142054,	-- Kusa
				}),
				crit(43598, {	-- Kwint
					["cr"] = 141077,	-- Kwint
					["coord"] = { 86.2, 38.6, TIRAGARDE_SOUND },
				}),
				crit(43597, {	-- Leana Darkwind
					["cr"] = 141046,	-- Leana Darkwind
					["coord"] = { 77.2, 29.0, STORMSONG_VALLEY },
				}),
				crit(43601, {	-- Lozu
					["cr"] = 141529,	-- Lozu
					["coord"] = { 72.8, 48.6, NAZMIR },
				}),
				crit(43595, {	-- Michael Skarn
					["cr"] = 140880,	-- Michael Skarn
					["coord"] = { 61.0, 17.6, DRUSTVAR },
				}),
				crit(43605, {	-- Sizzik
					["coord"] = { 26.6, 54.8, VOLDUN },
					["cr"] = 141945,	-- Sizzik
				}),
				crit(43608, {	-- Talia Sparkbrow
					["cr"] = 142114,	-- Talia Sparkbrow
					["coord"] = { 48.4, 35.0, ZULDAZAR },
				}),
				crit(43609, {	-- Zujai
					["cr"] = 142234,	-- Zujai
					["coord"] = { 50.6, 24.0, ZULDAZAR },
				}),
			})),
			petbattle(ach(13281, {	-- Human Resources
				crit(43730, {	-- Burly
					["cr"] = 141479,	-- Burly
					["coord"] = { 67.6, 12.8, TIRAGARDE_SOUND },
				}),
				crit(43721, {	-- Captain Hermes
					["cr"] = 139489,	-- Captain Hermes
					["coord"] = { 21.4, 66.4, DRUSTVAR },
				}),
				crit(43729, {	-- Delia Hanako
					["cr"] = 141292,	-- Delia Hanako
					["coord"] = { 59.6, 33.2, TIRAGARDE_SOUND },
				}),
				crit(43723, {	-- Dilbert McClint
					["cr"] = 140461,	-- Dilbert McClint
					["coord"] = { 63.6, 59.6, DRUSTVAR },
				}),
				crit(43722, {	-- Eddie Fixit
					["cr"] = 140315,	-- Eddie Fixit
					["coord"] = { 36.5, 33.7, STORMSONG_VALLEY },
				}),
				crit(43726, {	-- Ellie Vern
					["cr"] = 141002,	-- Ellie Vern
					["coord"] = { 65.0, 50.8, STORMSONG_VALLEY },
				}),
				crit(43724, {	-- Fizzie Sparkwhistle
					["cr"] = 140813,	-- Fizzie Sparkwhistle
					["coord"] = { 38.1, 38.5, DRUSTVAR },
				}),
				crit(43732, {	-- Grady Prett
					["cr"] = 141799,	-- Grady Prett
					["coord"] = { 36.0, 54.6, NAZMIR },
				}),
				crit(43737, {	-- Karaga
					["cr"] = 142096,	-- Karaga
					["coord"] = { 70.6, 29.6, ZULDAZAR },
				}),
				crit(43734, {	-- Keeyo
					["coord"] = { 57.0, 49.0, VOLDUN },
					["cr"] = 141879,	-- Keeyo
				}),
				crit(43733, {	-- Korval Darkbeard
					["cr"] = 141814,	-- Korval Darkbeard
					["coord"] = { 43.0, 38.8, NAZMIR },
				}),
				crit(43736, {	-- Kusa
					["coord"] = { 45.0, 46.4, VOLDUN },
					["cr"] = 142054,	-- Kusa
				}),
				crit(43728, {	-- Kwint
					["cr"] = 141077,	-- Kwint
					["coord"] = { 86.2, 38.6, TIRAGARDE_SOUND },
				}),
				crit(43727, {	-- Leana Darkwind
					["cr"] = 141046,	-- Leana Darkwind
					["coord"] = { 77.2, 29.0, STORMSONG_VALLEY },
				}),
				crit(43731, {	-- Lozu
					["cr"] = 141529,	-- Lozu
					["coord"] = { 72.8, 48.6, NAZMIR },
				}),
				crit(43725, {	-- Michael Skarn
					["cr"] = 140880,	-- Michael Skarn
					["coord"] = { 61.0, 17.6, DRUSTVAR },
				}),
				crit(43735, {	-- Sizzik
					["coord"] = { 26.6, 54.8, VOLDUN },
					["cr"] = 141945,	-- Sizzik
				}),
				crit(43738, {	-- Talia Sparkbrow
					["cr"] = 142114,	-- Talia Sparkbrow
					["coord"] = { 48.4, 35.0, ZULDAZAR },
				}),
				crit(43739, {	-- Zujai
					["cr"] = 142234,	-- Zujai
					["coord"] = { 50.6, 24.0, ZULDAZAR },
				}),
			})),
			petbattle(ach(13277, {	-- Machine Learning
				crit(43768, {	-- Burly
					["cr"] = 141479,	-- Burly
					["coord"] = { 67.6, 12.8, TIRAGARDE_SOUND },
				}),
				crit(43759, {	-- Captain Hermes
					["cr"] = 139489,	-- Captain Hermes
					["coord"] = { 21.4, 66.4, DRUSTVAR },
				}),
				crit(43767, {	-- Delia Hanako
					["cr"] = 141292,	-- Delia Hanako
					["coord"] = { 59.6, 33.2, TIRAGARDE_SOUND },
				}),
				crit(43761, {	-- Dilbert McClint
					["cr"] = 140461,	-- Dilbert McClint
					["coord"] = { 63.6, 59.6, DRUSTVAR },
				}),
				crit(43760, {	-- Eddie Fixit
					["cr"] = 140315,	-- Eddie Fixit
					["coord"] = { 36.5, 33.7, STORMSONG_VALLEY },
				}),
				crit(43764, {	-- Ellie Vern
					["cr"] = 141002,	-- Ellie Vern
					["coord"] = { 65.0, 50.8, STORMSONG_VALLEY },
				}),
				crit(43762, {	-- Fizzie Sparkwhistle
					["cr"] = 140813,	-- Fizzie Sparkwhistle
					["coord"] = { 38.1, 38.5, DRUSTVAR },
				}),
				crit(43770, {	-- Grady Prett
					["cr"] = 141799,	-- Grady Prett
					["coord"] = { 36.0, 54.6, NAZMIR },
				}),
				crit(43775, {	-- Karaga
					["cr"] = 142096,	-- Karaga
					["coord"] = { 70.6, 29.6, ZULDAZAR },
				}),
				crit(43772, {	-- Keeyo
					["coord"] = { 57.0, 49.0, VOLDUN },
					["cr"] = 141879,	-- Keeyo
				}),
				crit(43771, {	-- Korval Darkbeard
					["cr"] = 141814,	-- Korval Darkbeard
					["coord"] = { 43.0, 38.8, NAZMIR },
				}),
				crit(43774, {	-- Kusa
					["coord"] = { 45.0, 46.4, VOLDUN },
					["cr"] = 142054,	-- Kusa
				}),
				crit(43766, {	-- Kwint
					["cr"] = 141077,	-- Kwint
					["coord"] = { 86.2, 38.6, TIRAGARDE_SOUND },
				}),
				crit(43765, {	-- Leana Darkwind
					["cr"] = 141046,	-- Leana Darkwind
					["coord"] = { 77.2, 29.0, STORMSONG_VALLEY },
				}),
				crit(43769, {	-- Lozu
					["cr"] = 141529,	-- Lozu
					["coord"] = { 72.8, 48.6, NAZMIR },
				}),
				crit(43763, {	-- Michael Skarn
					["cr"] = 140880,	-- Michael Skarn
					["coord"] = { 61.0, 17.6, DRUSTVAR },
				}),
				crit(43773, {	-- Sizzik
					["coord"] = { 26.6, 54.8, VOLDUN },
					["cr"] = 141945,	-- Sizzik
				}),
				crit(43776, {	-- Talia Sparkbrow
					["cr"] = 142114,	-- Talia Sparkbrow
					["coord"] = { 48.4, 35.0, ZULDAZAR },
				}),
				crit(43777, {	-- Zujai
					["cr"] = 142234,	-- Zujai
					["coord"] = { 50.6, 24.0, ZULDAZAR },
				}),
			})),
			petbattle(ach(13275, {	-- Magician's Secrets
				crit(43749, {	-- Burly
					["cr"] = 141479,	-- Burly
					["coord"] = { 67.6, 12.8, TIRAGARDE_SOUND },
				}),
				crit(43740, {	-- Captain Hermes
					["cr"] = 139489,	-- Captain Hermes
					["coord"] = { 21.4, 66.4, DRUSTVAR },
				}),
				crit(43748, {	-- Delia Hanako
					["cr"] = 141292,	-- Delia Hanako
					["coord"] = { 59.6, 33.2, TIRAGARDE_SOUND },
				}),
				crit(43742, {	-- Dilbert McClint
					["cr"] = 140461,	-- Dilbert McClint
					["coord"] = { 63.6, 59.6, DRUSTVAR },
				}),
				crit(43741, {	-- Eddie Fixit
					["cr"] = 140315,	-- Eddie Fixit
					["coord"] = { 36.5, 33.7, STORMSONG_VALLEY },
				}),
				crit(44012, {	-- Ellie Vern
					["cr"] = 141002,	-- Ellie Vern
					["coord"] = { 65.0, 50.8, STORMSONG_VALLEY },
				}),
				crit(43743, {	-- Fizzie Sparkwhistle
					["cr"] = 140813,	-- Fizzie Sparkwhistle
					["coord"] = { 38.1, 38.5, DRUSTVAR },
				}),
				crit(43751, {	-- Grady Prett
					["cr"] = 141799,	-- Grady Prett
					["coord"] = { 36.0, 54.6, NAZMIR },
				}),
				crit(43756, {	-- Karaga
					["cr"] = 142096,	-- Karaga
					["coord"] = { 70.6, 29.6, ZULDAZAR },
				}),
				crit(43753, {	-- Keeyo
					["coord"] = { 57.0, 49.0, VOLDUN },
					["cr"] = 141879,	-- Keeyo
				}),
				crit(43752, {	-- Korval Darkbeard
					["cr"] = 141814,	-- Korval Darkbeard
					["coord"] = { 43.0, 38.8, NAZMIR },
				}),
				crit(43755, {	-- Kusa
					["coord"] = { 45.0, 46.4, VOLDUN },
					["cr"] = 142054,	-- Kusa
				}),
				crit(43747, {	-- Kwint
					["cr"] = 141077,	-- Kwint
					["coord"] = { 86.2, 38.6, TIRAGARDE_SOUND },
				}),
				crit(43746, {	-- Leana Darkwind
					["cr"] = 141046,	-- Leana Darkwind
					["coord"] = { 77.2, 29.0, STORMSONG_VALLEY },
				}),
				crit(43750, {	-- Lozu
					["cr"] = 141529,	-- Lozu
					["coord"] = { 72.8, 48.6, NAZMIR },
				}),
				crit(43744, {	-- Michael Skarn
					["cr"] = 140880,	-- Michael Skarn
					["coord"] = { 61.0, 17.6, DRUSTVAR },
				}),
				crit(43754, {	-- Sizzik
					["coord"] = { 26.6, 54.8, VOLDUN },
					["cr"] = 141945,	-- Sizzik
				}),
				crit(43757, {	-- Talia Sparkbrow
					["cr"] = 142114,	-- Talia Sparkbrow
					["coord"] = { 48.4, 35.0, ZULDAZAR },
				}),
				crit(43758, {	-- Zujai
					["cr"] = 142234,	-- Zujai
					["coord"] = { 50.6, 24.0, ZULDAZAR },
				}),
			})),
			petbattle(ach(13278, {	-- Not Quite Dead Yet
				crit(43787, {	-- Burly
					["cr"] = 141479,	-- Burly
					["coord"] = { 67.6, 12.8, TIRAGARDE_SOUND },
				}),
				crit(43778, {	-- Captain Hermes
					["cr"] = 139489,	-- Captain Hermes
					["coord"] = { 21.4, 66.4, DRUSTVAR },
				}),
				crit(43786, {	-- Delia Hanako
					["cr"] = 141292,	-- Delia Hanako
					["coord"] = { 59.6, 33.2, TIRAGARDE_SOUND },
				}),
				crit(43780, {	-- Dilbert McClint
					["cr"] = 140461,	-- Dilbert McClint
					["coord"] = { 63.6, 59.6, DRUSTVAR },
				}),
				crit(43779, {	-- Eddie Fixit
					["cr"] = 140315,	-- Eddie Fixit
					["coord"] = { 36.5, 33.7, STORMSONG_VALLEY },
				}),
				crit(43783, {	-- Ellie Vern
					["cr"] = 141002,	-- Ellie Vern
					["coord"] = { 65.0, 50.8, STORMSONG_VALLEY },
				}),
				crit(43781, {	-- Fizzie Sparkwhistle
					["cr"] = 140813,	-- Fizzie Sparkwhistle
					["coord"] = { 38.1, 38.5, DRUSTVAR },
				}),
				crit(43789, {	-- Grady Prett
					["cr"] = 141799,	-- Grady Prett
					["coord"] = { 36.0, 54.6, NAZMIR },
				}),
				crit(43794, {	-- Karaga
					["cr"] = 142096,	-- Karaga
					["coord"] = { 70.6, 29.6, ZULDAZAR },
				}),
				crit(43791, {	-- Keeyo
					["coord"] = { 57.0, 49.0, VOLDUN },
					["cr"] = 141879,	-- Keeyo
				}),
				crit(43790, {	-- Korval Darkbeard
					["cr"] = 141814,	-- Korval Darkbeard
					["coord"] = { 43.0, 38.8, NAZMIR },
				}),
				crit(43793, {	-- Kusa
					["coord"] = { 45.0, 46.4, VOLDUN },
					["cr"] = 142054,	-- Kusa
				}),
				crit(43785, {	-- Kwint
					["cr"] = 141077,	-- Kwint
					["coord"] = { 86.2, 38.6, TIRAGARDE_SOUND },
				}),
				crit(43784, {	-- Leana Darkwind
					["cr"] = 141046,	-- Leana Darkwind
					["coord"] = { 77.2, 29.0, STORMSONG_VALLEY },
				}),
				crit(43788, {	-- Lozu
					["cr"] = 141529,	-- Lozu
					["coord"] = { 72.8, 48.6, NAZMIR },
				}),
				crit(43782, {	-- Michael Skarn
					["cr"] = 140880,	-- Michael Skarn
					["coord"] = { 61.0, 17.6, DRUSTVAR },
				}),
				crit(43792, {	-- Sizzik
					["coord"] = { 26.6, 54.8, VOLDUN },
					["cr"] = 141945,	-- Sizzik
				}),
				crit(43795, {	-- Talia Sparkbrow
					["cr"] = 142114,	-- Talia Sparkbrow
					["coord"] = { 48.4, 35.0, ZULDAZAR },
				}),
				crit(43796, {	-- Zujai
					["cr"] = 142234,	-- Zujai
					["coord"] = { 50.6, 24.0, ZULDAZAR },
				}),
			})),
		})),
		ach(9924, bubbleDownSelf({ ["timeline"] = { ADDED_6_1_0 }, }, {	-- Field Photographer
			title(307),	-- Field Photographer <Name>
			crit(27865),	-- Onyxia's Lair
			crit(27863),	-- The Frozen Throne
			crit(27866),	-- The Dark Portal
			crit(27867),	-- Dalaran
			crit(27868),	-- Janeiro's Point
			crit(27870),	-- Vale of Eternal Blossoms
			crit(27871),	-- Temple of Karabor
			crit(27873),	-- Deeprun Tram
			crit(27875),	-- Hearthglen
			crit(27874),	-- Thandol Span
			crit(27876),	-- Karazhan
			crit(27877),	-- Battle, Ring, Gurubashi Arena
			crit(27878),	-- The Deadmines
			crit(27879),	-- Naxxramas
			crit(27880),	-- Wyrmrest Temple
			crit(27952),	-- Shattrath City (Outland)
			crit(27953),	-- Nordrassil
			crit(27954),	-- Light's Hope Chapel
			crit(27955),	-- Deathwing's Fall
			crit(27956),	-- Darkshire
			crit(27957),	-- The Shaper's Terrace
			crit(27958),	-- Wintergrasp Fortress
			crit(27959),	-- Vashj'ir
			crit(27960),	-- Valley of Kings
			crit(27961),	-- Westfall Lighthouse
			crit(27962),	-- Throne of the Elements
			crit(27963),	-- The Twin Colossals
			crit(27964),	-- Mount Neverest
			crit(27965),	-- Moonglade
			crit(27966),	-- The Stormspire
			crit(27967),	-- Caverns of Time
			crit(27968),	-- Blackrock Mountain
			crit(27969),	-- The Scarab Dais
			crit(27970),	-- Ravenholdt Manor
			crit(27971),	-- Echo Isles
			crit(27972),	-- Uther's Tomb
			crit(27973),	-- Daggercap Bay
			crit(27974),	-- Throne of Kil'jaeden
			crit(27975),	-- Sunsong Ranch
			crit(27976),	-- Turtle Beach
			crit(27977),	-- Auchindoun (Draenor)
			crit(27978),	-- Halls of Origination
			crit(27869, { ["races"] = HORDE_ONLY }),	-- Orgrimmar
			crit(27864, { ["races"] = ALLIANCE_ONLY }),	-- Stormwind City
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(941, {	-- Hemet Nesingwary: The Collected Quests
			-- #if BEFORE WRATH
			["OnClick"] = [[_.CommonAchievementHandlers.META_OnClick]],
			["OnTooltip"] = [[_.CommonAchievementHandlers.META_OnTooltip]],
			["OnUpdate"] = [[function(t) return _.CommonAchievementHandlers.META_OnUpdate(t, 939, 938, 940); end]],
			-- #else
			["maps"] = {
				NAGRAND,
				-- #if AFTER CATA
				NORTHERN_STRANGLETHORN,
				-- #else
				STRANGLETHORN_VALE,
				-- #endif
				SHOLAZAR_BASIN,
			},
			["sym"] = {{"meta_achievement",
				939,	-- Hills Like White Elekk
				938,	-- The Snows of Northrend
				940,	-- The Green Hills of Stranglethorn
			}},
			-- #endif
		})),
		ach(1833, {	-- It's Happy Hour Somewhere
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(5752, {	-- Justly Rewarded
			["timeline"] = { ADDED_4_1_0 },
		}),
		applyclassicphase(CATA_PHASE_ONE, ach(4875, {	-- Loremaster of Cataclysm (A)
			["sym"] = {{"meta_achievement",
				4870,	-- Coming Down the Mountain
				4871,	-- Deep into Deepholm
				4873,	-- Fading into Twilight [A]
				-- #if AFTER 5.0.4
				5501,	-- Fading into Twilight [H]
				-- #endif
				4869,	-- Sinking into Vashj'ir [A]
				-- #if AFTER 5.0.4
				4982,	-- Sinking into Vashj'ir [H]
				-- #endif
				4872,	-- Unearthing Uldum
			}},
			["timeline"] = { ADDED_4_0_3 },
			-- #if BEFORE 5.0.4
			["races"] = ALLIANCE_ONLY,
			-- #endif
		})),
		applyclassicphase(CATA_PHASE_ONE, ach(4983, {	-- Loremaster of Cataclysm (H)
			["sym"] = {{"meta_achievement",
				4870,	-- Coming Down the Mountain
				4871,	-- Deep into Deepholm
				5501,	-- Fading into Twilight [H]
				4982,	-- Sinking into Vashj'ir [H]
				4872,	-- Unearthing Uldum
			}},
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			["races"] = HORDE_ONLY,
		})),
		ach(13512, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 }, }, {	-- Master Calligrapher
			crit(44853, {	-- Master of Calligraphy - Circle
				["_quests"] = {
					55340,	-- Calligraphy [A]
				},
			}),
			crit(44854, {	-- Master of Calligraphy - Square
				["_quests"] = {
					55264,	-- Calligraphy [A]
				},
			}),
			crit(44855, {	-- Master of Calligraphy - Triangle
				["_quests"] = {
					55341,	-- Calligraphy [A]
				},
			}),
			crit(44853, {	-- Master of Calligraphy - Circle
				["_quests"] = {
					55342,	-- Calligraphy [H]
				},
			}),
			crit(44854, {	-- Master of Calligraphy - Square
				["_quests"] = {
					55343,	-- Calligraphy [H]
				},
			}),
			crit(44855, {	-- Master of Calligraphy - Triangle
				["_quests"] = {
					55344,	-- Calligraphy [H]
				},
			}),
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1576, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 }, }, {	-- Of Blood and Anguish
			["maps"] = { NAGRAND, ZULDRAK },
			["groups"] = {
				crit(5799, {	-- The Champion of Anguish
					["_quests"] = { 12948 },	-- The Champion of Anguish
				}),
				crit(5798, {	-- The Ring of Blood: The Final Challenge
					["_quests"] = { 9977 },	-- The Ring of Blood: The Final Challenge
				}),
			},
		}))),
		ach(2556, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 }, }, {	-- Pest Control
			crit(9364),	-- Larva (Naxxramas, Ghostlands)
			crit(9366),	-- Water Snake (Orgrimmar, Northern Stranglethorn, Durotar, Twilight Highlands)
			crit(9372),	-- Spider (Eastern Plaguelands, Gilneas, Winterspring, The Hinterlands, Zul'Aman, Drak'Tharon Keep, Ahn'kahet: The Old Kingdom, Icecrown Citadel, Teldrassil, Utgarde Pinnacle, Dustwallow Marsh, Sethekk Halls, The Culling of Stratholme, Pit of Saron, Elwynn Forest and Sunken Temple)
			crit(9818),	-- Squirrel (Tol Barad, Dalaran, Darkshore, Darnassus)
			crit(9373),	-- Underbelly Rat (Dalaran - NR?)
			crit(9360),	-- Devouring Maggot (Howling Fjord)
			crit(9367),	-- Mouse (Dustwallow Marsh, Wetlands)
			crit(9374),	-- Zul'Drak Rat (Zul'Dra)
			crit(9369),	-- Roach (Ashenvale, Gilneas City, The Cape of Stranglethorn, Desolace, Dire Maul, Ahn'kahet: The Old Kingdom, Icecrown Citadel, Thousand Needles, Kezan, Northern Stranglethorn, Stonetalon Mountains, Undercity, Azjol-Nerub, Duskwood, Howling Fjord, Mana-Tombs, Maraudon and Redridge Mountains)
			crit(9371),	-- Snake (Wailing Caverns, Tol Barad, Sunken Temple, Maraudon, Feralas, Northern Stranglethorn, Howling Fjord, Dustwallow Marsh, Gilneas, Gundrak, Zangarmarsh, Nagrand, Sethekk Halls and The Steamvault)
			crit(9359),	-- Crystal Spider (Winterspring, The Nexus)
			crit(9358),	-- Adder (Durotar, Southern Barrens, Northern Stranglethorn, Sethekk Halls, Hellfire Peninsula, The Slave Pens, The Underbog, Blasted Lands, Mana-Tombs, Northern Barrens)
			crit(9365),	-- Maggot (The Hinterlands, Undercity, Ashenvale, Naxxramas, Hillsbrad Foothills, Howling Fjord, Ghostlands)
			crit(9370),	-- Scorpion (Eastern Plaguelands, Twilight Highlands, Thousand Needles)
			crit(9362),	-- Fjord Rat (Howling Fjord)
			crit(9361),	-- Fire Beetle (Mount Hyjal, Searing Gorge, Blackrock Mountain, Blasted Lands, Un'Goro Crater)
			crit(9363),	-- Gold Beetle (Halls of Stone, Badlands, Tanaris, Halls of Lightning)
			crit(9368),	-- Rat (Ashenvale, Dire Maul, The Lost Isles, Gilneas, Loch Modan, The Deadmines, Stormwind City, Arathi Highlands, Darkshore, Nagrand, Terokkar Forest, Scholomance, Tirisfal Glades, Howling Fjord, The Cape of Stranglethorn, The Culling of Stratholme, Azshara, Desolace, Gilneas City, Maraudon, Sunken Temple and The Hinterlands)
		})),
		petbattle(ach(6607, {	-- Taming Azeroth
			["sym"] = {{"meta_achievement",
				6604,	-- Taming Outland
				6605,	-- Taming Northrend
				7525,	-- Taming Cataclysm
				6606,	-- Taming Pandaria
				6603,	-- Taming Eastern Kingdoms (A)
				6602,	-- Taming Kalimdor (H)
			}},
			["timeline"] = { ADDED_5_0_4 },
			["groups"] = {
				title(207),	-- Tamer
			},
		})),
		petbattle(ach(7525, {	-- Taming Cataclysm
			["timeline"] = { ADDED_5_0_4 },
			["g"] = {
				crit(21858),	-- Brok [Mount Hyjal)
				crit(21859),	-- Bordin Steadyfist [Deepholm)
				crit(21860),	-- Goz Banefury [Twilight Highlands)
				crit(21861),	-- Obalis [Uldum)
			},
		})),
		petbattle(ach(6601, {	-- Taming the Wild [1)
			["timeline"] = { ADDED_5_0_4 },
		})),
		petbattle(ach(7498, {	-- Taming the Great Outdoors [15)
			["timeline"] = { ADDED_5_0_4 },
		})),
		petbattle(ach(7499, {	-- Taming the World (40)
			["timeline"] = { ADDED_5_0_4 },
			["g"] = {
				i(92738),	-- Safari Hat (TOY!)
			},
		})),
		petbattle(ach(13695, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {	-- Team Aquashock
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				13694,	-- Nazjatari Safari
				13693,	-- Mecha-Safari
				13626,	-- Nautical Nuisances of Nazjatar
				13625,	-- Mighty Minions of Mechagon
			}},
			["g"] = {
				i(169349),	-- Kelpfin (PET!)
			},
		}))),
		ach(1182, {	-- The Bread Winner
			["timeline"] = { ADDED_3_0_2 },
		}),
		applyclassicphase(TBC_PHASE_ONE, achWithReps(942, { FACTION_KURENAI, FACTION_SPOREGGAR, FACTION_TIMBERMAW_HOLD }, {	-- The Diplomat
			["maps"] = { FELWOOD, ZANGARMARSH, NAGRAND },
			["races"] = ALLIANCE_ONLY,
			["groups"] = applyclassicphase(WRATH_PHASE_ONE, {
				title(48),	-- <Name> the Diplomat
			}),
		})),
		applyclassicphase(TBC_PHASE_ONE, achWithReps(943, { FACTION_THE_MAGHAR, FACTION_SPOREGGAR, FACTION_TIMBERMAW_HOLD }, {	-- The Diplomat
			["maps"] = { FELWOOD, ZANGARMARSH, NAGRAND },
			["races"] = HORDE_ONLY,
			["groups"] = applyclassicphase(WRATH_PHASE_ONE, {
				title(48),	-- <Name> the Diplomat
			}),
		})),
		ach(4958, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 }, }, {		-- The First Rule of Ring of Blood is You Don't Talk About Ring of Blood
			["maps"] = { NAGRAND, ZULDRAK, TWILIGHT_HIGHLANDS },
			["groups"] = {
				crit(5798, {	-- Ring of Blood in Nagrand
					["_quests"] = { 9977 },	-- The Ring of Blood: The Final Challenge
				}),
				crit(5799, {	-- Amphitheater of Anguish in Zul'Drak
					["_quests"] = { 12948 },	-- The Champion of Anguish
				}),
				crit(13918, {	-- Crucible of Carnage in Twilight Highlands
					["_quests"] = { 27868 },	-- The Crucible of Carnage: The Twilight Terror!
				}),
			},
		})),
		ach(5794, {	-- Time Flies When You're Having Fun
			["timeline"] = { ADDED_4_2_0 },
		}),
		applyclassicphase(WRATH_PHASE_ONE, ach(1681, {	-- The Loremaster (A)
			["sym"] = {{"meta_achievement",
				1678,	-- Loremaster of Kalimdor (A)
				1676,	-- Loremaster of Eastern Kingdoms (A)
				1262,	-- Loremaster of Outland (A)
				41,		-- Loremaster of Northrend (A)
				-- #if AFTER CATA
				4875,	-- Loremaster of Cataclysm (A)
				-- #endif
			}},
			["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				title(93),	-- Loremaster <Name>
				i(43300),	-- Loremaster's Colors
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1682, {	-- The Loremaster (H)
			["sym"] = {{"meta_achievement",
				1680,	-- Loremaster of Kalimdor (H)
				1677,	-- Loremaster of Eastern Kingdoms (H)
				1274,	-- Loremaster of Outland (H)
				1360,	-- Loremaster of Northrend (H)
				-- #if AFTER CATA
				4983,	-- Loremaster of Cataclysm (H)
				-- #endif
			}},
			["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
			["races"] = HORDE_ONLY,
			["groups"] = {
				title(93),	-- Loremaster <Name>
				i(43300),	-- Loremaster's Colors
			},
		})),
		ach(5518, bubbleDownSelf({["timeline"] = { ADDED_4_0_3_LAUNCH } }, {	-- Stood in the Fire
			-- #IF AFTER MOP
			["description"] = "Achievement can be completed in Dragon Soul.",
			-- #ENDIF
			["maps"] = {
				-- #IF BEFORE MOP
				MOUNT_HYJAL,
				ULDUM,
				TWILIGHT_HIGHLANDS,
				-- Not sure Deathwing ever flew through Vashjir zones... not much land there
				-- #ELSE
				-- Dragon Soul Maps
				409,
				412,	-- Dragon Soul: Eye of Eternity
				415,	-- Dragon Soul: The Maelstrom
				410,
				411,
				413,
				414,
				-- #ENDIF
			},
		})),
		ach(4827, bubbleDownSelf({["timeline"] = { ADDED_4_0_3_LAUNCH } }, {	-- Surveying the Damage
			-- TODO coord here instead of individual zone files
			crit(14068, {	-- The Battlescar in Southern Barrens
				-- ["coord"] = { X, Y, MAP },
			}),
			crit(14060, {	-- The Sundering in Stranglethorn
				-- ["coord"] = { X, Y, MAP },
			}),
			crit(1020, {	-- The Scar of the Worldbreaker in Badlands
				-- ["coord"] = { X, Y, MAP },
			}),
			crit(1314, {	-- The Ruins of Auberdine in Darkshore
				-- ["coord"] = { X, Y, MAP },
			}),
			crit(1407, {	-- The Valley of the Watchers in Tanaris
				-- ["coord"] = { X, Y, MAP },
			}),
			crit(14096, {	-- Thunder Peak in Ashenvale
				-- ["coord"] = { X, Y, MAP },
			}),
			crit(14087, {	-- Southfury Watershed in Durotar
				-- ["coord"] = { X, Y, MAP },
			}),
			crit(1373, {	-- Cenarion Wildlands in Desolace
				-- ["coord"] = { X, Y, MAP },
			}),
			crit(1347, {	-- The Shimmering Deep in Thousand Needles
				-- ["coord"] = { X, Y, MAP },
			}),
			crit(14046, {	-- The Greymane Wall in Silverpine
				-- ["coord"] = { X, Y, MAP },
			}),
			crit(14156, {	-- The Raging Chasm in Westfall
				-- ["coord"] = { X, Y, MAP },
			}),
			crit(1174, {	-- The Stonewrought Dam in Loch Modan
				-- ["coord"] = { X, Y, MAP },
			}),
			crit(15114, {	-- Ruins of Southshore in Hillsbrad Foothills
				-- ["coord"] = { X, Y, MAP },
			}),
		})),
		ach(7520, {		-- The Loremaster
			["sym"] = {{"meta_achievement",
				1676,	-- Loremaster of Eastern Kingdoms
				1678,	-- Loremaster of Kalimdor
				1262,	-- Loremaster of Outland
				41,		-- Loremaster of Northrend
				4875,	-- Loremaster of Cataclysm
				6541,	-- Loremaster of Pandaria
				-- #if AFTER WOD
				9833,	-- Loremaster of Draenor (A)
				9923,	-- Loremaster of Draenor (H)
				-- #endif
				-- #if AFTER LEGION
				11157,	-- Loremaster of Legion
				-- #endif
				-- #if AFTER BFA
				12593,	-- Loremaster of Kul Tiras (A)
				13294,	-- Loremaster of Zandalar (H)
				-- #endif
				-- #if AFTER SHADOWLANDS
				14280,	-- Loremaster of Shadowlands
				-- #endif
			}},
			["timeline"] = { ADDED_5_0_4 },
			["groups"] = {
				title(93),		-- Loremaster <Name>
				i(43300),		-- Loremaster's Colors
			},
		}),
		ach(1206, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- To All The Squirrels I've Loved Before
			-- TODO: really would prefer an actual coords for each criteria instead of maps
			crit(3741, {	-- Borean Frog (Borean Tundra)
				["crs"] = { 25677 },	-- Borean Frog
				["coords"] = {
					{ 72.6, 41.0, BOREAN_TUNDRA },
					{ 72.8, 34.6, BOREAN_TUNDRA },
					{ 73.0, 38.6, BOREAN_TUNDRA },
					{ 74.4, 34.2, BOREAN_TUNDRA },
				},
			}),
			crit(3744, {	-- Cat (Eversong Woods, Elwynn Forest, Arathi Highlands, Gilneas City)
				["maps"] = { EVERSONG_WOODS, ELWYNN_FOREST, ARATHI_HIGHLANDS },
				["crs"] = { 6368 },	-- Cat
			}),
			crit(21278, {	-- Cat (Eversong Woods, Elwynn Forest, Arathi Highlands, Gilneas City)
				["maps"] = { EVERSONG_WOODS, ELWYNN_FOREST, ARATHI_HIGHLANDS },
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
			crit(3745, {	-- Chicken (Elwynn Forest, Tirisfal Glades, Westfall, Northern Barrens, Redridge Mountains, Azuremyst Isle, Duskwood and Howling Fjord)
				["maps"] = { ELWYNN_FOREST, TIRISFAL_GLADES, WESTFALL, NORTHERN_BARRENS, REDRIDGE_MOUNTAINS, AZUREMYST_ISLE, DUSKWOOD, HOWLING_FJORD },
				["crs"] = { 620 },	-- Chicken
			}),
			crit(21279, {	-- Chicken (Elwynn Forest, Tirisfal Glades, Westfall, Northern Barrens, Redridge Mountains, Azuremyst Isle, Duskwood and Howling Fjord)
				["maps"] = { ELWYNN_FOREST, TIRISFAL_GLADES, WESTFALL, NORTHERN_BARRENS, REDRIDGE_MOUNTAINS, AZUREMYST_ISLE, DUSKWOOD, HOWLING_FJORD },
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
			crit(3746, {	-- Cow (Elwynn Forest, Stormwind City, Arathi Highlands, Redridge Mountains)
				["maps"] = {
					ARATHI_HIGHLANDS,
					REDRIDGE_MOUNTAINS,
					-- #if BEFORE CATA
					HILLSBRAD_FOOTHILLS,
					-- #endif
				},
				["crs"] = { 2442 },	-- Cow
				["coords"] = {
					{ 42.6, 62.8, ELWYNN_FOREST },
					{ 45.6, 55.4, ELWYNN_FOREST },
					{ 57.0, 71.8, ELWYNN_FOREST },
					{ 78.0, 61.4, ELWYNN_FOREST },
				},
			}),
			crit(3748, {	-- Deer (Darkshore, Darnassus, Elwynn Forest, Gilneas, Ashenvale, Teldrassil, Feralas, Western Plaguelands, The Hinterlands, Moonglade, Azuremyst Isle, Dire Maul, Gilneas City, Hillsbrad Foothills, Northern Barrens)
				["maps"] = { DARKSHORE, DARNASSUS, ELWYNN_FOREST, ASHENVALE, TELDRASSIL, FERALAS, WESTERN_PLAGUELANDS, THE_HINTERLANDS, MOONGLADE, AZUREMYST_ISLE, HILLSBRAD_FOOTHILLS },
				["crs"] = { 883 },	-- Deer
			}),
			crit(21281, {	-- Deer (Darkshore, Darnassus, Elwynn Forest, Gilneas, Ashenvale, Teldrassil, Feralas, Western Plaguelands, The Hinterlands, Moonglade, Azuremyst Isle, Dire Maul, Gilneas City, Hillsbrad Foothills, Northern Barrens)
				["maps"] = { DARKSHORE, DARNASSUS, ELWYNN_FOREST, ASHENVALE, TELDRASSIL, FERALAS, WESTERN_PLAGUELANDS, THE_HINTERLANDS, MOONGLADE, AZUREMYST_ISLE, HILLSBRAD_FOOTHILLS },
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
			crit(3749, {	-- Ewe (Ruins of Gilneas, Shattrath City)
				["crs"] = { 19665 },	-- Ewe
				["coords"] = {
					-- requires weird phasing requirements...
					-- { 45.4, 17.2, RUINS_OF_GILNEAS },
					-- { 49.8, 22.8, RUINS_OF_GILNEAS },
					-- { 53.8, 20.8, RUINS_OF_GILNEAS },
					-- { 55.0, 12.0, RUINS_OF_GILNEAS },
					{ 58.7, 23.7, SHATTRATH_CITY },
				},
			}),
			crit(3750, {	-- Fawn (Teldrassil, Elwynn Forest)
				["maps"] = {
					-- #if AFTER CATA
					TELDRASSIL,
					-- #endif
					ELWYNN_FOREST,
				},
				["crs"] = { 890 },	-- Fawn
			}),
			crit(21282, {	-- Fawn (Teldrassil, Elwynn Forest)
				["maps"] = {
					-- #if AFTER CATA
					TELDRASSIL,
					-- #endif
					ELWYNN_FOREST,
				},
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
			crit(3751, {	-- Small Frog (Darnassus, Southern Barrens, Arathi Highlands, Sunken Temple, Gundrak, Northern Barrens, Teldrassil, Zangarmarsh)
				["maps"] = {
					-- #if AFTER CATA
					ARATHI_HIGHLANDS,
					DARNASSUS,
					NORTHERN_BARRENS,
					SOUTHERN_BARRENS,
					TELDRASSIL,
					-- #endif
					EVERSONG_WOODS,
					GUNDRAK,
					GUNDRAK_FLOOR2,
					MARAUDON,
					ZANGARMARSH,
				},
				["crs"] = { 13321 },	-- Small Frog
				["coords"] = {
					{ 50.2, 66.6, ELWYNN_FOREST },
					{ 74.4, 45.0, SWAMP_OF_SORROWS },
				},
			}),
			crit(21283, {	-- Small Frog (Darnassus, Southern Barrens, Arathi Highlands, Sunken Temple, Gundrak, Northern Barrens, Teldrassil, Zangarmarsh)
				["maps"] = { DARNASSUS, ARATHI_HIGHLANDS, GUNDRAK, GUNDRAK_FLOOR2, NORTHERN_BARRENS, TELDRASSIL, ZANGARMARSH },
				["timeline"] = { ADDED_5_0_4 },
				["crs"] = { 61071 },	-- Small Frog (Battle Pet)
			}),
			crit(3752, {	-- Gazelle (Desolace, Mulgore, Northern Barrens, Southern Barrens)
				["maps"] = {
					-- #if AFTER CATA
					DESOLACE,
					MULGORE,
					NORTHERN_BARRENS,
					SOUTHERN_BARRENS,
					-- #else
					THE_BARRENS,
					-- #endif
				},
				["crs"] = { 4166 },	-- Gazelle
			}),
			crit(21284, {	-- Gazelle (Desolace, Mulgore, Northern Barrens, Southern Barrens)
				["maps"] = {
					-- #if AFTER CATA
					DESOLACE,
					MULGORE,
					NORTHERN_BARRENS,
					SOUTHERN_BARRENS,
					-- #else
					THE_BARRENS,
					-- #endif
				},
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
			crit(3753, {	-- Hare (Durotar, The Hinterlands)
				["maps"] = { DUROTAR, THE_HINTERLANDS },
				["crs"] = { 5951 },	-- Hare
			}),
			crit(21285, {	-- Hare (Durotar, The Hinterlands)
				["maps"] = { DUROTAR, THE_HINTERLANDS },
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
			crit(3754, {	-- Parrot (Un'Goro Crater, Swamp of Sorrows, Northern Stranglethorn, The Cape of Stranglethorn)
				["maps"] = {
					UNGORO_CRATER,
					-- #if AFTER CATA
					SWAMP_OF_SORROWS,
					NORTHERN_STRANGLETHORN,
					THE_CAPE_OF_STRANGLETHORN,
					-- #endif
				},
				["crs"] = { 9600 },	-- Parrot
			}),
			crit(21286, {	-- Parrot (Un'Goro Crater, Swamp of Sorrows, Northern Stranglethorn, The Cape of Stranglethorn)
				["maps"] = {
					UNGORO_CRATER,
					-- #if AFTER CATA
					SWAMP_OF_SORROWS,
					NORTHERN_STRANGLETHORN,
					THE_CAPE_OF_STRANGLETHORN,
					-- #endif
				},
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
			crit(3761, {	-- Prairie Dog (Mulgore, Northern Barrens, Stonetalon Mountains, Arathi Highlands, Southern Barrens, Desolace and Westfall)
				["maps"] = {
					MULGORE, STONETALON_MOUNTAINS, ARATHI_HIGHLANDS, DESOLACE, WESTFALL,
					-- #if AFTER CATA
					NORTHERN_BARRENS,
					SOUTHERN_BARRENS,
					-- #else
					THE_BARRENS,
					-- #endif
				},
				["crs"] = { 2620 },	-- Prairie Dog
			}),
			crit(21292, {	-- Prairie Dog (Mulgore, Northern Barrens, Stonetalon Mountains, Arathi Highlands, Southern Barrens, Desolace and Westfall)
				["maps"] = {
					MULGORE, STONETALON_MOUNTAINS, ARATHI_HIGHLANDS, DESOLACE, WESTFALL,
					-- #if AFTER CATA
					NORTHERN_BARRENS,
					SOUTHERN_BARRENS,
					-- #else
					THE_BARRENS,
					-- #endif
				},
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
			crit(3755, {	-- Rabbit (Elwynn Forest, Darkshore, Stormwind City, Dun Morogh, Stonetalon Mountains, Dalaran, Feralas, Scarlet Monastery, Mount Hyjal, Duskwood, Moonglade, Azshara, Teldrassil, Western Plaguelands, Tirisfal Glades, Mulgore, Azuremyst Isle, Silvermoon City, Hillsbrad Foothills, Howling Fjord, Redridge Mountains)
				["maps"] = { ELWYNN_FOREST, DARKSHORE, DUN_MOROGH, STONETALON_MOUNTAINS, NORTHREND_DALARAN, FERALAS, DUSKWOOD, MOONGLADE, AZSHARA, TELDRASSIL, WESTERN_PLAGUELANDS, TIRISFAL_GLADES, MULGORE, AZUREMYST_ISLE, HILLSBRAD_FOOTHILLS, HOWLING_FJORD, REDRIDGE_MOUNTAINS },
				["crs"] = { 721 },	-- Rabbit
			}),
			crit(21287, {	-- Rabbit (Elwynn Forest, Darkshore, Stormwind City, Dun Morogh, Stonetalon Mountains, Dalaran, Feralas, Scarlet Monastery, Mount Hyjal, Duskwood, Moonglade, Azshara, Teldrassil, Western Plaguelands, Tirisfal Glades, Mulgore, Azuremyst Isle, Silvermoon City, Hillsbrad Foothills, Howling Fjord, Redridge Mountains)
				["maps"] = { ELWYNN_FOREST, DARKSHORE, DUN_MOROGH, STONETALON_MOUNTAINS, NORTHREND_DALARAN, FERALAS, DUSKWOOD, MOONGLADE, AZSHARA, TELDRASSIL, WESTERN_PLAGUELANDS, TIRISFAL_GLADES, MULGORE, AZUREMYST_ISLE, HILLSBRAD_FOOTHILLS, HOWLING_FJORD, REDRIDGE_MOUNTAINS },
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
			crit(3756, {	-- Ram (Loch Modan, Wetlands, Arathi Highlands, Ruins of Gilneas)
				["crs"] = { 2098 },	-- Ram
				["coords"] = {
					{ 25.8, 67.2, LOCH_MODAN },
					{ 71.6, 71.4, LOCH_MODAN },
					{ 74.6, 48.0, LOCH_MODAN },
					{ 76.4, 43.6, LOCH_MODAN },
					{ 16.2, 72.2, WETLANDS },
					{ 48.0, 67.8, WETLANDS },
					-- #if AFTER CATA
					{ 86.8, 72.2, ARATHI_HIGHLANDS},
					-- #endif
				},
			}),
			crit(21288, {	-- Ram (Loch Modan, Wetlands, Arathi Highlands, Ruins of Gilneas)
				["maps"] = {
					LOCH_MODAN,
					WETLANDS,
					-- #if AFTER CATA
					ARATHI_HIGHLANDS,
					-- #endif
				},
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
			crit(3757, {	-- Sheep (Uldum, Gilneas, Gilneas City, Howling Fjord, Redridge Mountains)
				["maps"] = { ELWYNN_FOREST, HILLSBRAD_FOOTHILLS, ALTERAC_MOUNTAINS, WESTFALL, LOCH_MODAN, HOWLING_FJORD, REDRIDGE_MOUNTAINS },
				["crs"] = { 1933 },	-- Sheep
			}),
			crit(21289, {	-- Sheep (Uldum, Gilneas, Gilneas City, Howling Fjord, Redridge Mountains)
				["maps"] = { ELWYNN_FOREST, HILLSBRAD_FOOTHILLS, ALTERAC_MOUNTAINS, WESTFALL, LOCH_MODAN, HOWLING_FJORD, REDRIDGE_MOUNTAINS },
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
			crit(3747, {	-- Shore Crab (Borean Tundra, Azshara, The Lost Isles, Twilight Highlands, Northern Stranglethorn, Dragonblight, The Cape of Stranglethorn, Blackfathom Deeps)
				["maps"] = { COILFANG_RESERVOIR_STEAMVAULT, BOREAN_TUNDRA, AZSHARA, STRANGLETHORN_VALE, BLACKFATHOM_DEEPS },
				-- #IF BEFORE 5.2
				["crs"] = { 6827 },	-- Crab
				-- #ENDIF
			}),
			crit(21280, {	-- Shore Crab (Borean Tundra, Azshara, The Lost Isles, Twilight Highlands, Northern Stranglethorn, Dragonblight, The Cape of Stranglethorn, Blackfathom Deeps)
				["maps"] = { COILFANG_RESERVOIR_STEAMVAULT, BOREAN_TUNDRA, AZSHARA, STRANGLETHORN_VALE, BLACKFATHOM_DEEPS },
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
			crit(3758, {	-- Skunk (Duskwood, Azshara, Gilneas, Howling Fjord, Terokkar Forest, Azuremyst Isle, Gilneas City, Bloodmyst Isle)
				["maps"] = { DUSKWOOD, AZSHARA, HOWLING_FJORD, TEROKKAR_FOREST, AZUREMYST_ISLE, BLOODMYST_ISLE },
				["crs"] = { 17467 },	-- Skunk
			}),
			crit(21290, {	-- Skunk (Duskwood, Azshara, Gilneas, Howling Fjord, Terokkar Forest, Azuremyst Isle, Gilneas City, Bloodmyst Isle)
				["maps"] = { DUSKWOOD, AZSHARA, HOWLING_FJORD, TEROKKAR_FOREST, AZUREMYST_ISLE, BLOODMYST_ISLE },
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
			crit(3615, {	-- Squirrel (Tol Barad Peninsula, Dalaran, Darkshore, Darnassus)
				["maps"] = { NORTHREND_DALARAN, DARKSHORE, DARNASSUS },
				["crs"] = { 1412 },	-- Squirrel
			}),
			crit(21273, {	-- Squirrel (Tol Barad Peninsula, Dalaran, Darkshore, Darnassus)
				["maps"] = { NORTHREND_DALARAN, DARKSHORE, DARNASSUS },
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
			crit(3739, {	-- Steam Frog (Borean Tundra)
				["crs"] = { 25679 },	-- Steam Frog
				["coords"] = {
					{ 60.8, 47.8, BOREAN_TUNDRA },
					{ 64.6, 40.8, BOREAN_TUNDRA },
					{ 68.6, 40.4, BOREAN_TUNDRA },
					{ 78.8, 28.2, BOREAN_TUNDRA },
				},
			}),
			crit(3759, {	-- Swine (Durotar, Northern Barrens)
				["maps"] = { DUROTAR, NORTHERN_BARRENS },
				["crs"] = { 10685 },	-- Swine
			}),
			crit(3760, {	-- Toad (Orgrimmar, Teldrassil, Darnassus, Gilneas, Hillsbrad Foothills, Howling Fjord)
				["maps"] = { ORGRIMMAR, TELDRASSIL, DARNASSUS, HILLSBRAD_FOOTHILLS, HOWLING_FJORD },
				["crs"] = { 1420 },	-- Toad
			}),
			crit(21291, {	-- Toad (Orgrimmar, Teldrassil, Darnassus, Gilneas, Hillsbrad Foothills, Howling Fjord)
				["maps"] = { ORGRIMMAR, TELDRASSIL, DARNASSUS, HILLSBRAD_FOOTHILLS, HOWLING_FJORD },
				["timeline"] = { ADDED_7_3_5 },	-- maybe earlier idk
			}),
		})),
		ach(5548, bubbleDownSelf({["timeline"] = { ADDED_4_0_3_LAUNCH } }, {	-- To All the Squirrels Who Cared for Me
			-- TODO map/coord here instead of individual zone files - Not all spawn locations added
			crit(ifclassic(16222, 16214), {	-- Alpine Chipmunk (Winterspring, Mount Hyjal, Stonetalon Mountains)
				["provider"] = { "n", 49779 },	-- Alpine Chipmunk
				["coord"] = { 50, 17, MOUNT_HYJAL },
			}),
			crit(16215, {	-- Baradin Fox Kit (Tol Barad)
				["provider"] = { "n", 48630 },	-- Baradin Fox Kit
				["coord"] = { 44, 26, TOL_BARAD },
			}),
			crit(ifclassic(16224, 16216), {	-- Grotto Vole (Mount Hyjal)
				["provider"] = { "n", 50419 },	-- Grotto Vole
				["coord"] = { 54, 17, MOUNT_HYJAL },
			}),
			crit(ifclassic(16223, 16217), {	-- Highlands Turkey (Twilight Highlands)
				["provider"] = { "n", 48706 },	-- Highlands Turkey
				["coord"] = { 29, 53, TWILIGHT_HIGHLANDS },
			}),
			crit(ifclassic(62981, 16219), {	-- Mac Frog (Uldum)
				["provider"] = { "n", 50491 },	-- Mac Frog
				["coord"] = { 55, 34, ULDUM },
			}),
			crit(ifclassic(62980, 16218), {	-- Oasis Moth (Uldum, Lost City of the Tol'vir)
				["provider"] = { "n", 50496 },	-- Oasis Moth
				["coord"] = { 53, 34, ULDUM },
			}),
			crit(ifclassic(62982, 16220), {	-- Rattlesnake (Twilight Highlands, Tanaris)
				["provider"] = { "n", 48686 },	-- Rattlesnake
				["coord"] = { 57, 15, TWILIGHT_HIGHLANDS },
			}),
			crit(ifclassic(62983, 16221), {	-- Rock Viper (Mount Hyjal, Desolace, Silithus)
				["provider"] = { "n", 50481 },	-- Rock Viper
				["coord"] = { 38, 51 , MOUNT_HYJAL },
			}),
			crit(ifclassic(62984, 16222), {	-- Rockchewer Whelk (Shimmering Expanse)
				["provider"] = { "n", 48848 },	-- Rockchewer Whelk
				["coord"] = { 54, 41, VASHJIR_SHIMMERING_EXPANSE },
			}),
			crit(ifclassic(62985, 16223), {	-- Sassy Cat (Tol Barad)
				["provider"] = { "n", 47682 },	-- Sassy Cat
				["coord"] = { 72, 38, TOL_BARAD_PENINSULA },
			}),
			crit(ifclassic(62986, 16224), {	-- Sea Cucumber (Shimmering Expanse, Abyssal Depths)
				["provider"] = { "n", 48802 },	-- Sea Cucumber
				["coord"] = { 54, 41, VASHJIR_SHIMMERING_EXPANSE },
			}),
			crit(ifclassic(62987, 16225), {	-- Wharf Rat (Tol Barad Peninsula, The Cape of Stranglethorn
				["provider"] = { "n", 47667 },	-- Wharf Rat
				["coord"] = { 27, 40, TOL_BARAD_PENINSULA },
			}),
			crit(ifclassic(62988, 16226), {	-- Yellow-Bellied Marmot (Twilight Highlands)
				["provider"] = { "n", 48683 },	-- Yellow-Bellied Marmot
				["coord"] = { 56, 13, TWILIGHT_HIGHLANDS },
			}),
		})),
		ach(1244, bubbleDownSelf({["timeline"] = { ADDED_3_0_2 } }, {	-- Well Read

		})),
		petbattle(ach(41092, bubbleDownSelf({["timeline"] = { ADDED_11_1_0 } }, {	-- Undermine Safari (also includes Zandalar locations)
			crit(70951, {	-- Wily Rat
				["crs"] = { 231477 },	-- Wily Rat
				-- ["coords"] = {

				-- },
			}),
			crit(70952, {	-- Underroach
				["crs"] = { 231481 },	-- Underroach
				-- ["coords"] = {

				-- },
			}),
			crit(70953, {	-- Bombshell Crab
				["crs"] = { 231550 },	-- Bombshell Crab
				-- ["coords"] = {

				-- },
			}),
			crit(70954, {	-- Venture Crab
				["crs"] = { 231567 },	-- Venture Crab
				-- ["coords"] = {

				-- },
			}),
			crit(70955, {	-- Cave Crab
				["crs"] = { 231570 },	-- Cave Crab
				-- ["coords"] = {

				-- },
			}),
			crit(70956, {	-- Kaja Crab
				["crs"] = { 231572 },	-- Kaja Crab
				-- ["coords"] = {

				-- },
			}),
			crit(70957, {	-- Varmint Mark II
				["crs"] = { 231577 },	-- Varmint Mark II
				-- ["coords"] = {

				-- },
			}),
			crit(70958, {	-- Lime Roboclucker
				["crs"] = { 231579 },	-- Lime Roboclucker
				-- ["coords"] = {

				-- },
			}),
			crit(70959, {	-- Tropical Frog
				["crs"] = { 231616 },	-- Tropical Frog
				-- ["coords"] = {

				-- },
			}),
			crit(70960, {	-- Spring-Loaded Ribbitron
				["crs"] = { 231684 },	-- Spring-Loaded Ribbitron
				-- ["coords"] = {

				-- },
			}),
			crit(70961, {	-- Hemospore
				["crs"] = { 222592 },	-- Hemospore
				-- ["coords"] = {

				-- },
			}),
			crit(70962, {	-- Frenzied Bloodtick
				["crs"] = { 222420 },	-- Frenzied Bloodtick
				-- ["coords"] = {

				-- },
			}),
			i(205013),	-- Lettuce (PET!)
		}))),
		applyclassicphase(WRATH_PHASE_ONE, ach(46, {	-- Universal Explorer [7.0.3] / World Explorer
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				42,	-- Eastern Kingdoms Explorer
				43,	-- Kalimdor Explorer
				44,	-- Outland Explorer
				45,	-- Northrend Explorer
				-- #if AFTER CATA
				4868,	-- Cataclysm Explorer
				-- #endif
				-- #if AFTER 5.0.4
				6974,	-- Pandaria Explorer
				-- #endif
				-- #if AFTER 6.0.1
				8935,	-- Draenor Explorer
				-- #endif
				-- #if AFTER 7.0.1
				11188,	-- Broken Isles Explorer
				-- #endif
				-- #if AFTER 8.0.1
				12988,	-- Battle for Azeroth Explorer
				-- #endif
			}},
			["groups"] = {
				title(47),	-- <Name> the Explorer
			},
		})),
		ach(13144, {	-- Wide World of Quests
			["timeline"] = { ADDED_8_0_1 },
			["g"] = {
				crit(42566, {
					["_quests"] = 50483,	-- Underlord Xerxiz
				}),
				crit(42349, {
					["_quests"] = 51431,	-- Soul Goliath
				}),
			},
		}),
		petbattle(ach(6590, {		-- World Safari
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				6586,	-- Eastern Kingdoms Safari
				6585,	-- Kalimdor Safari
				6587,	-- Outland Safari
				6588,	-- Northrend Safari
				6589,	-- Pandaria Safari
			}},
			["timeline"] = { ADDED_5_0_4 },
			["g"] = {
				title(199),		-- Zookeeper <Name>
			},
		})),
	}),
	n(TREASURES, bubbleDownSelf({["timeline"] = { ADDED_3_0_2 } }, {
		o(175738, {	-- Aegwynn and the Dragon Hunt
			["coords"] = {
				-- #if AFTER CATA
				{ 85.7, 23.7, STORMWIND_CITY },
				-- #else
				{ 76.4, 29.6, STORMWIND_CITY },
				-- #endif
				{ 56.5, 30.2, WESTFALL },
				{ 61.7, 52.1, TIRISFAL_GLADES },
			},
			["maps"] = { SCARLET_MONASTERY },
		}),
		o(21581, {	-- Aftermath of the Second War
			["coords"] = {
				-- #if AFTER CATA
				{ 85.2, 26.1, STORMWIND_CITY },
				{ 60.1, 13.6, BLASTED_LANDS },
				{ 54.2, 31.0, DARNASSUS },
				-- #else
				{ 76.1, 32.0, STORMWIND_CITY },
				{ 64.3, 15.5, BLASTED_LANDS },
				{ 54.4, 13.0, DARNASSUS },
				-- #endif
			},
			["maps"] = { SCARLET_MONASTERY },
		}),
		o(175734, {	-- Arathor and the Troll Wars
			["coords"] = {
				{ 62.6, 20.4, HILLSBRAD_FOOTHILLS },
				{ 48.3, 58.6, HILLSBRAD_FOOTHILLS },
				{ 77.1, 9.1, IRONFORGE },
			},
			["maps"] = { SCARLET_MONASTERY },
		}),
		o(175758, {	-- Archimonde's Return and the Flight to Kalimdor
			["coords"] = {
				-- #if AFTER LEGION
				{ 29.5, 24.1, STORMWIND_CITY },
				-- #endif
				{ 51.8, 74.5, STORMWIND_CITY },
				-- #if AFTER CATA
				{ 68.0, 74.5, NORTHERN_BARRENS },
				-- #else
				{ 62.4, 38.8, THE_BARRENS },
				-- #endif
				{ 66.4, 7.7, DESOLACE },
			},
			["maps"] = { SCARLET_MONASTERY },
		}),
		o(21582, {	-- Beyond the Dark Portal
			["coords"] = {
				-- #if AFTER LEGION
				{ 44.0, 71.7, STORMWIND_CITY },
				-- #endif
				-- #if AFTER CATA
				{ 84.6, 24.3, STORMWIND_CITY },
				{ 60.9, 20.2, BLASTED_LANDS },
				{ 40.7, 73.8, THE_CAPE_OF_STRANGLETHORN },
				-- #else
				{ 76.3, 29.0, STORMWIND_CITY },
				{ 65.2, 22.9, BLASTED_LANDS },
				{ 26.9, 77.3, STRANGLETHORN_VALE },
				-- #endif
			},
			["maps"] = { SCARLET_MONASTERY },
		}),
		o(175726, {	-- Charge of the Dragonflights
			["coords"] = {
				{ 76.1, 10.5, IRONFORGE },
				{ 9.9, 56.9, WETLANDS },
				-- #if AFTER CATA
				{ 68.4, 69.1, NORTHERN_BARRENS },
				-- #else
				{ 62.7, 36.2, THE_BARRENS },
				-- #endif
				{ 60.8, 50.6, TIRISFAL_GLADES },
				{ 34.8, 49.7, ASHENVALE },
			},
		}),
		o(175761, {	-- Civil War in the Plaguelands
			["coords"] = {
				-- #if AFTER LEGION
				{ 44.0, 71.6, STORMWIND_CITY },
				-- #endif
				-- #if AFTER CATA
				{ 85.0, 23.4, STORMWIND_CITY },
				{ 38.8, 44.1, NORTHSHIRE_VALLEY },
				{ 57.4, 45.4, HILLSBRAD_FOOTHILLS },
				-- #else
				{ 76.4, 32.4, STORMWIND_CITY },
				{ 49.5, 39.6, ELWYNN_FOREST },
				{ 51.3, 58.5, HILLSBRAD_FOOTHILLS },
				-- #endif
				{ 76.8, 12.8, IRONFORGE },
				{ 67.6, 37.3, UNDERCITY },
			},
			["maps"] = {
				SCARLET_MONASTERY,
				-- #if BEFORE CATA
				NORTHSHIRE_VALLEY,
				-- #endif
				STRATHOLME,
			},
		}),
		o(175855, {	-- Empires' Fall
			["coords"] = {
				-- #if AFTER CATA
				{ 42.0, 73.7, THE_CAPE_OF_STRANGLETHORN },
				{ 52.5, 26.9, TANARIS },
				-- #else
				{ 27.8, 77.3, STRANGLETHORN_VALE },
				{ 52.6, 27.8, TANARIS },
				-- #endif
			},
		}),
		o(175731, {	-- Exile of the High Elves
			["coords"] = {
				-- #if AFTER CATA
				{ 67.1, 73.4, NORTHERN_BARRENS },
				{ 39.7, 39.8, DARNASSUS },
				-- #else
				{ 61.9, 38.7, THE_BARRENS },
				{ 34.1, 26.0, DARNASSUS },
				-- #endif
				{ 61.9, 57.8, UNDERCITY },
			},
			-- #if BEFORE MOP
			["maps"] = { SCHOLOMANCE },
			-- #endif
		}),
		o(175749, {	-- Icecrown and the Frozen Throne
			["coords"] = {
				{ 43.8, 65.7, ELWYNN_FOREST },
				{ 56.1, 50.8, UNDERCITY },
			},
			["maps"] = {
				SCARLET_MONASTERY,
				-- #if BEFORE MOP
				SCHOLOMANCE,
				-- #endif
				STRATHOLME,
			},
		}),
		o(175736, {	-- Ironforge - the Awakening of the Dwarves
			["coords"] = {
				{ 35.5, 49.0, LOCH_MODAN },
				{ 74.8, 9.1, IRONFORGE },
				-- #if AFTER CATA
				{ 50.5, 86.9, SOUTHERN_BARRENS },
				{ 40.0, 76.8, TANARIS },
				-- #else
				{ 49.4, 84.4, THE_BARRENS },
				{ 36.9, 76.9, TANARIS },
				-- #endif
				{ 31.6, 49.5, MULGORE },
			},
			["maps"] = { BLACKROCK_DEPTHS },
		}),
		o(175754, {	-- Kel'Thuzad and the Forming of the Scourge
			["coords"] = {
				-- #if AFTER CATA
				{ 56.7, 47.5, HILLSBRAD_FOOTHILLS },
				-- #else
				{ 51.6, 58.6, HILLSBRAD_FOOTHILLS },
				-- #endif
				{ 56.2, 51.0, UNDERCITY },
			},
			["maps"] = {
				SCARLET_MONASTERY,
				-- #if BEFORE MOP
				SCHOLOMANCE,
				-- #endif
				STRATHOLME,
			},
		}),
		o(175741, {	-- Kil'jaeden and the Shadow Pact
			-- #if AFTER CATA
			["description"] = "Stratholme: Found in the room with Commander Malor.",
			-- #endif
			["coords"] = {
				-- #if AFTER LEGION
				{ 29.4, 23.9, STORMWIND_CITY },
				-- #endif
				{ 74.1, 45.4, DUSKWOOD },
			},
			["maps"] = {
				-- #if BEFORE MOP
				SCHOLOMANCE,
				-- #endif
				STRATHOLME,
			},
		}),
		o(175751, {	-- Lethargy of the Orcs
			["coords"] = {
				-- #if AFTER CATA
				{ 65.5, 46.7, SOUTHERN_BARRENS },
				-- #else
				{ 61.8, 55.2, THE_BARRENS },
				-- #endif
				{ 85.3, 69.8, ELWYNN_FOREST },
			},
		}),
		o(175729, {	-- Mount Hyjal and Illidan's Gift
			["coords"] = {
				{ 51.9, 74.7, STORMWIND_CITY },
				-- #if AFTER CATA
				{ 66.9, 74.6, NORTHERN_BARRENS },
				-- #else
				{ 61.8, 39.4, THE_BARRENS },
				{ 36.6, 44.0, DARKSHORE },
				-- #endif
				{ 73.7, 44.5, DUSKWOOD },
			},
		}),
		o(175763, {	-- Old Hatreds - The Colonization of Kalimdor
			["coords"] = {
				-- #if AFTER CATA
				{ 51.0, 30.2, TANARIS },
				-- #else
				{ 51.0, 29.4, TANARIS },
				-- #endif
			},
			-- #if BEFORE MOP
			["maps"] = { SCHOLOMANCE },
			-- #endif
		}),
		o(175760, {	-- Rise of the Blood Elves
			["coords"] = {
				-- #if AFTER CATA
				{ 69.2, 33.1, ARATHI_HIGHLANDS },
				{ 50.0, 33.5, DARNASSUS },
				-- #else
				{ 74.1, 32.4, ARATHI_HIGHLANDS },
				{ 49.1, 16.7, DARNASSUS },
				-- #endif
				{ 64.6, 69.4, ELWYNN_FOREST },
			},
			-- #if BEFORE MOP
			["maps"] = { SCHOLOMANCE },
			-- #endif
		}),
		o(175742, {	-- Rise of the Horde
			["coords"] = {
				{ 59.6, 58.1, DUROTAR },
				{ 77.0, 12.8, IRONFORGE },
				-- #if AFTER CATA
				{ 49.5, 55.3, SWAMP_OF_SORROWS },
				-- #else
				{ 47.8, 54.7, SWAMP_OF_SORROWS },
				-- #endif
			},
		}),
		o(175724, {	-- Sargeras and the Betrayal
			["coords"] = {
				-- #if AFTER LEGION
				{ 29.5, 24.1, STORMWIND_CITY },
				-- #endif
				-- #if AFTER CATA
				{ 69.4, 32.8, ARATHI_HIGHLANDS },
				{ 34.6, 49.5, ASHENVALE },
				{ 67.0, 74.9, NORTHERN_BARRENS },
				-- #else
				{ 74.2, 32.1, ARATHI_HIGHLANDS },
				{ 34.5, 49.5, ASHENVALE },
				{ 61.9, 39.6, THE_BARRENS },
				-- #endif
			},
			-- #if BEFORE MOP
			["maps"] = { SCHOLOMANCE },
			-- #endif
		}),
		o(175757, {	-- Sunwell - The Fall of Quel'Thalas
			["coords"] = {
				-- #if AFTER CATA
				{ 41.0, 74.4, THE_CAPE_OF_STRANGLETHORN },
				-- #else
				{ 27.1, 77.7, STRANGLETHORN_VALE },
				-- #endif
				{ 34.5, 50.0, ASHENVALE },
			},
		}),
		o(175746, {	-- The Alliance of Lordaeron
			["coords"] = {
				-- #if AFTER CATA
				{ 85.2, 26.3, STORMWIND_CITY },
				{ 54.7, 50.3, DUN_MOROGH },
				{ 57.2, 45.5, HILLSBRAD_FOOTHILLS },
				-- #else
				{ 76.1, 32.0, STORMWIND_CITY },
				{ 47.6, 52.0, DUN_MOROGH },
				{ 63.7, 20.7, HILLSBRAD_FOOTHILLS },
				-- #endif
				{ 72.1, 48.0, DUSKWOOD },
				{ 77.0, 12.4, IRONFORGE },
			},
		}),
		o(175750, {	-- The Battle of Grim Batol
			["coords"] = {
				-- #if AFTER LEGION
				{ 86.6, 36.5, STORMWIND_CITY },
				-- #elseif AFTER CATA
				{ 86.5, 36.1, STORMWIND_CITY },
				-- #else
				{ 84.1, 35.0, STORMWIND_CITY },
				-- #endif
				{ 75.7, 10.9, IRONFORGE },
				{ 31.5, 49.4, MULGORE },
				-- #if BEFORE CATA
				{ 10.8, 60.8, WETLANDS },
				-- #endif
			},
		}),
		o(175759, {	-- The Betrayer Ascendant
			["coords"] = {
				-- #if AFTER CATA
				{ 62.0, 74.6, DARNASSUS },
				-- #else
				{ 66.5, 76.6, DARNASSUS },
				-- #endif
				{ 68.6, 64.1, SILVERMOON_CITY },
			},
		}),
		o(175748, {	-- The Birth of the Lich King
			["coords"] = {
				{ 72.1, 46.4, DUSKWOOD },
				-- #if AFTER CATA
				{ 58.0, 46.1, HILLSBRAD_FOOTHILLS },
				-- #else
				{ 52.1, 58.5, HILLSBRAD_FOOTHILLS },
				-- #endif
			},
			["maps"] = {
				-- #if BEFORE MOP
				SCHOLOMANCE,
				-- #endif
				STRATHOLME,
			},
		}),
		o(175745, {	-- The Dark Portal and the Fall of Stormwind
			["coords"] = {
				-- #if AFTER CATA
				{ 87.1, 35.9, STORMWIND_CITY },
				{ 62.5, 16.1, BLASTED_LANDS },
				{ 26.2, 42.2, REDRIDGE_MOUNTAINS },
				{ 49.5, 55.4, SWAMP_OF_SORROWS },
				-- #else
				{ 83.0, 36.3, STORMWIND_CITY },
				{ 66.8, 18.3, BLASTED_LANDS },
				{ 26.8, 45.8, REDRIDGE_MOUNTAINS },
				{ 47.7, 55.0, SWAMP_OF_SORROWS },
				-- #endif
			},
			-- #if BEFORE MOP
			["maps"] = { SCHOLOMANCE },
			-- #endif
		}),
		o(175733, {	-- The Founding of Quel'Thalas
			["coords"] = {
				-- #if BEFORE CATA
				{ 36.6, 43.8, DARKSHORE },
				-- #endif
				{ 73.6, 45.1, DUSKWOOD },
			},
			-- #if BEFORE MOP
			["maps"] = { SCHOLOMANCE },
			-- #endif
		}),
		o(175735, {	-- The Guardians of Tirisfal
			["coords"] = {
				-- #if AFTER LEGION
				{ 85.0, 26.7, STORMWIND_CITY },
				-- #elseif AFTER CATA
				{ 85.1, 26.2, STORMWIND_CITY },
				-- #else
				{ 76.0, 32.0, STORMWIND_CITY },
				-- #endif
				{ 66.9, 36.1, NORTHREND_DALARAN },
			},
			["maps"] = { KARAZHAN },
		}),
		o(175747, {	-- The Invasion of Draenor
			-- #if AFTER CATA
			["description"] = "Scholomance: East side wall, near north-east corner of Lilian Voss encounter room.",
			-- #endif
			["maps"] = { SCHOLOMANCE },
		}),
		o(21583, {	-- The Kaldorei and the Well of Eternity
			["coords"] = {
				-- #if AFTER LEGION
				{ 29.5, 24.1, STORMWIND_CITY },
				-- #endif
				-- #if AFTER CATA
				{ 84.6, 25.9, STORMWIND_CITY },
				-- #else
				{ 75.3, 29.8, STORMWIND_CITY },
				-- #endif
				{ 67.3, 49.8, TANARIS },
				-- #if BEFORE CATA
				{ 10.4, 60.6, WETLANDS },
				-- #endif
			},
		}),
		o(175740, {	-- The Last Guardian
			["coords"] = {
				-- #if AFTER LEGION
				{ 29.9, 24.7, STORMWIND_CITY },
				-- #endif
				{ 37.2, 46.9, LOCH_MODAN },
				{ 52.6, 53.0, WESTFALL },
			},
			["maps"] = { KARAZHAN },
		}),
		o(175762, {	-- The Lich King Triumphant
			["maps"] = {
				-- #if BEFORE MOP
				SCHOLOMANCE,
				-- #endif
				STRATHOLME,
			},
		}),
		o(175752, {	-- The New Horde
			["coords"] = {
				-- #if AFTER CATA
				{ 86.1, 25.5, STORMWIND_CITY },
				{ 65.5, 46.7, SOUTHERN_BARRENS },
				{ 49.2, 55.4, SWAMP_OF_SORROWS },
				-- #else
				{ 75.7, 32.0, STORMWIND_CITY },
				{ 47.6, 55.0, SWAMP_OF_SORROWS },
				{ 61.9, 54.9, THE_BARRENS },
				-- #endif
			},
		}),
		o(175725, {	-- The Old Gods and the Ordering of Azeroth
			["coords"] = {
				-- #if AFTER CATA
				{ 54.2, 38.7, DARNASSUS },
				-- #else
				{ 55.3, 24.2, DARNASSUS },
				-- #endif
				{ 76.1, 10.8, IRONFORGE },
				{ 56.1, 50.6, UNDERCITY },
				-- #if BEFORE CATA
				{ 9.8, 57.6, WETLANDS },
				-- #endif
			},
			["maps"] = {
				BLACKROCK_DEPTHS,
				-- #if BEFORE MOP
				SCHOLOMANCE,
				-- #endif
			},
		}),
		o(175756, {	-- The Scourge of Lordaeron
			["coords"] = {
				{ 34.8, 49.8, ASHENVALE },
				-- #if AFTER CATA
				{ 41.8, 73.4, THE_CAPE_OF_STRANGLETHORN },
				-- #else
				{ 27.6, 77.1, STRANGLETHORN_VALE },
				-- #endif
				{ 56.9, 47.5, WESTFALL },
			},
			["maps"] = {
				SCARLET_MONASTERY,
				-- #if BEFORE MOP
				SCHOLOMANCE,
				-- #endif
				STRATHOLME,
			},
		}),
		o(175732, {	-- The Sentinels and the Long Vigil
			["coords"] = {
				{ 30.9, 42.8, FERALAS },
				-- #if AFTER CATA
				{ 42.1, 73.6, THE_CAPE_OF_STRANGLETHORN },
				-- #else
				{ 27.9, 77.2, STRANGLETHORN_VALE },
				-- #endif
			},
		}),
		o(175737, {	-- The Seven Kingdoms
			-- #if AFTER CATA
			["description"] = "Stratholme: Found in the room with Commander Malor.",
			-- #endif
			["maps"] = {
				-- #if BEFORE MOP
				SCHOLOMANCE,
				-- #endif
				STRATHOLME,
			},
		}),
		o(175854, {	-- The Twin Empires
			["coords"] = {
				-- #if AFTER CATA
				{ 52.5, 26.9, TANARIS },
				{ 42.0, 73.7, THE_CAPE_OF_STRANGLETHORN },
				-- #else
				{ 27.8, 77.3, STRANGLETHORN_VALE },
				{ 52.6, 27.8, TANARIS },
				-- #endif
			},
		}),
		o(175727, {	-- The War of the Ancients
			["coords"] = {
				-- #if AFTER CATA
				{ 49.9, 33.1, DARNASSUS },
				-- #else
				{ 49.1, 16.1, DARNASSUS },
				-- #endif
				-- #if AFTER LEGION
				{ 85.5, 23.5, STORMWIND_CITY },
				{ 29.5, 24.1, STORMWIND_CITY },
				-- #elseif AFTER CATA
				{ 85.3, 23.3, STORMWIND_CITY },
				-- #else
				{ 36.5, 72.2, STORMWIND_CITY },
				-- #endif
			},
			["maps"] = { SCARLET_MONASTERY },
		}),
		o(175730, {	-- The World Tree and the Emerald Dream
			["coords"] = {
				-- #if AFTER CATA
				{ 54.8, 24.8, DARNASSUS },
				-- #else
				{ 56.2, 4.0, DARNASSUS },
				-- #endif
				-- #if AFTER LEGION
				{ 85.5, 23.5, STORMWIND_CITY },
				-- #elseif AFTER CATA
				{ 85.3, 23.3, STORMWIND_CITY },
				-- #else
				{ 35.4, 63.3, STORMWIND_CITY },
				-- #endif
			},
			["maps"] = { SCARLET_MONASTERY },
		}),
		o(175753, {	-- War of the Spider
			["coords"] = {
				-- #if AFTER LEGION
				{ 86.7, 35.8, STORMWIND_CITY },
				{ 44.1, 72.1, STORMWIND_CITY },
				-- #elseif AFTER CATA
				{ 86.7, 35.9, STORMWIND_CITY },
				-- #else
				{ 83.2, 33.2, STORMWIND_CITY },
				-- #endif
			},
			["maps"] = {
				SCARLET_MONASTERY,
				-- #if BEFORE MOP
				SCHOLOMANCE,
				-- #endif
				STRATHOLME,
			},
		}),
		o(175739, {	-- War of the Three Hammers
			["coords"] = {
				-- #if AFTER CATA
				{ 32.6, 49.5, MULGORE },
				{ 28.9, 41.3, REDRIDGE_MOUNTAINS },
				{ 50.1, 86.5, SOUTHERN_BARRENS },
				{ 66.5, 43.5, STORMWIND_CITY },
				-- #else
				{ 31.6, 49.4, MULGORE },
				{ 30.0, 44.7, REDRIDGE_MOUNTAINS },
				{ 69.6, 41.1, STORMWIND_CITY },
				{ 49.1, 84.1, THE_BARRENS },
				-- #endif
				{ 75.0, 9.0, IRONFORGE },
				{ 14.1, 44.1, THE_HINTERLANDS },
			},
			["maps"] = {
				BLACKROCK_DEPTHS,
				SCARLET_MONASTERY,
			},
		}),
		o(175856, {	-- Wrath of Soulflayer
			["coords"] = {
				-- #if AFTER CATA
				{ 52.5, 26.9, TANARIS },
				{ 42.0, 73.7, THE_CAPE_OF_STRANGLETHORN },
				-- #else
				{ 27.8, 77.3, STRANGLETHORN_VALE },
				{ 52.6, 27.8, TANARIS },
				-- #endif
			},
		}),
	})),
})