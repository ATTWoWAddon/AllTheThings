---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

-- #if BEFORE WOD
local SEASON_MALEVOLENT_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_RISE_OF_THE_THUNDER_KING .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
	else
		t.u = ]] .. MOP_PHASE_ONE .. [[;
	end
end]];
-- #endif

root(ROOTS.Zones, {
	m(PANDARIA, {
		m(KUN_LAI_SUMMIT, {
			["lore"] = "Kun-Lai Summit is a zone in northern Pandaria, surrounded by the Vale of Eternal Blossoms to the south, the Townlong Steppes to the west, and the Jade Forest to the east. It is a vast area with majestic mountains, autumnal plains, and a lush coastal area. High atop the frigid northern peaks looms the Temple of the White Tiger, an ancient training ground protected by an elite force of martial priests, along with the spirit of the White Tiger itself, Xuen. Deeper into the mountains is the hideout of the Shado-pan clan: a mysterious order charged with protecting Pandaria from the dark things buried beneath its surface. When the isolated people of Kun-Lai are threatened by marauders from the west and a Zandalari troll menace invading its northern shores, they turn to the Alliance and Horde for help.",
			["icon"] = 617832,
			["timeline"] = { ADDED_5_0_4 },
			["maps"] = {
				380,	-- Howlingwind Cavern
				381,	-- Pranksters' Hollow
				382,	-- Knucklethump Hole
				383,	-- The Deeper (upper)
				384,	-- The Deeper (lower)
				385,	-- Tomb of Conquerors
				386,	-- Ruins of Korune (Upper Floor)
				387,	-- Ruins of Korune (Lower Floor)
				434,	-- The Ancient Passage
				843,	-- Shadow-Pan Showdown
			},
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(6976),	-- Explore Kun-Lai Summit
					ach(7286, {	-- Finish Them! (Temple of the White Tiger)
						crit(20440),	-- Brewmaster Chani
						crit(20442),	-- Lun-Chi
						crit(20443),	-- Clever Ashyo
						crit(20451),	-- Ken-Ken
						crit(20444),	-- Kang Bramblestaff
						crit(20445),	-- The Wrestler
						crit(20446),	-- Master Boom Boom
						crit(20447),	-- Master Windfur
						crit(20448),	-- Hackiss
						crit(20449),	-- Healiss
						crit(20450),	-- Tankiss
					}),
					ach(7386, {	-- Grand Expedition Yak
						["provider"] = { "i", 84101 },	-- Grand Expedition Yak
					}),
					ach(6537, {	-- Slum It in the Summit (A)
						["races"] = ALLIANCE_ONLY,
					}),
					ach(6538, {	-- Slum It in the Summit (H)
						["races"] = HORDE_ONLY,
					}),
				}),
				battlepets({
					pet(724),	-- Alpine Foxling (PET!)
					pet(725),	-- Alpine Foxling Kit (PET!)
					pet(747, {	-- Effervescent Glowfly (PET!)
						["coord"] = { 55.0, 89.2, KUN_LAI_SUMMIT },
					}),
					pet(1166, {	-- Kun-Lai Runt (PET!)
						["description"] = "This is a very good pet in PvE, but is breed-dependent. You may want to capture multiple breeds.",
						["timeline"] = { ADDED_5_1_0 },
					}),
					pet(726),	-- Plains Monitor (PET!)
					pet(727),	-- Prairie Mouse (PET!)
					pet(679),	-- Summit Kid (PET!)
					pet(728, {	-- Szechuan Chicken (PET!)
						["description"] = "Can sometimes be easier to find as a secondary pet. Can accompany almost any other pet in Kun-Lai.",
						["coord"] = { 60.0, 86.6, KUN_LAI_SUMMIT },
					}),
					pet(729),	-- Tolai Hare (PET!)
					pet(730),	-- Tolai Hare Pup (PET!)
					pet(731),	-- Zooey Snake (PET)
				}),
				explorationHeader({
					exploration(6076),	-- Auburn Bluffs
					exploration(6059),	-- Binan Village
					visit_exploration(6086,{coord={48.4,72.1,KUN_LAI_SUMMIT}}),	-- Broketooth Outpost
					exploration(6098),	-- Chow Farmstead
					exploration(6094),	-- Eastwind Rest
					visit_exploration(6124,{coord={47.4,80.1,KUN_LAI_SUMMIT}}),	-- Fire Camp Ordo
					exploration(6121),	-- Fire Camp Ruqin
					exploration(6152),	-- Fire Camp Yongqi
					exploration(6129),	-- Firebough Nook
					visit_exploration(6617,{coord={60.0,55.8,KUN_LAI_SUMMIT}}),	-- Garrosh'ar Advance
					exploration(6498),	-- Gate of the August Celestials
					visit_exploration(6389,{coord={59.4,53.0,KUN_LAI_SUMMIT}}),	-- Howlingwind Cavern
					visit_exploration(6469,{coord={58.7,54.1,KUN_LAI_SUMMIT}}),	-- Howlingwind Trail
					visit_exploration(6427,{coord={71.3,87.4,KUN_LAI_SUMMIT}}),	-- Inkgill Mere
					exploration(6406),	-- Isle of Reckoning
					visit_exploration(6088,{coord={50.8,61.9,KUN_LAI_SUMMIT}}),	-- Knucklethump Hole
					exploration(6157),	-- Kota Basecamp
					exploration(6156),	-- Kota Peak
					exploration(6062),	-- Kun-Lai Pass
					visit_exploration(6467,{coord={59.8,39.1,KUN_LAI_SUMMIT}}),	-- Mogu'shan Terrace
					exploration(6114),	-- Mogujia
					exploration(6185),	-- Mount Neverest
					exploration(6100),	-- Muskpaw Ranch
					visit_exploration(6180,{coord={44.7,52.2,KUN_LAI_SUMMIT}}),	-- Neverest Pinnacle
					exploration(6085),	-- One Keg
					visit_exploration(6462,{coord={63.5,41.9,KUN_LAI_SUMMIT}}),	-- Path of Conquerors
					exploration(6081),	-- Peak of Serenity
					visit_exploration(6099,{coord={73.2,73.6,KUN_LAI_SUMMIT}}),	-- Pranksters' Hollow
					visit_exploration(6530,{coord={44.6,89.3,KUN_LAI_SUMMIT}}),	-- Serpent's Spine
					exploration(6294),	-- Shado-Li Basin
					exploration(6128),	-- Shado-Pan Fallback
					exploration(6173),	-- Shado-Pan Monastery
					visit_exploration(6202,{coord={51.2,46.1,KUN_LAI_SUMMIT}}),	-- Shrine of the Merciless One
					exploration(6174),	-- Temple of the White Tiger
					visit_exploration(6527,{coord={51.2,38.0,KUN_LAI_SUMMIT}}),	-- Terrace of the Tiger
					visit_exploration(6073,{coord={70.5,75.6,KUN_LAI_SUMMIT}}),	-- The Autumn Plains
					exploration(6090),	-- The Burlap Trail
					exploration(6087),	-- The Dooker Dome
					visit_exploration(6468,{coord={57.1,35.5,KUN_LAI_SUMMIT}}),	-- The Emperor's Reach
					visit_exploration(6079,{coord={65.8,61.8,KUN_LAI_SUMMIT}}),	-- The Grummle Bazaar
					visit_exploration(6415,{coord={64.3,50.7,KUN_LAI_SUMMIT}}),	-- The Yaungol Advance
					exploration(6207),	-- The Zandalari Vanguard
					visit_exploration(6201,{coord={53.1,46.3,KUN_LAI_SUMMIT}}),	-- Tomb of Conquerors
					visit_exploration(6200,{coord={53.2,49.6,KUN_LAI_SUMMIT}}),	-- Tomb of Secrets
					visit_exploration(6199,{coord={56.1,45.8,KUN_LAI_SUMMIT}}),	-- Tomb of Shadows
					visit_exploration(6526,{coord={47.5,39.5,KUN_LAI_SUMMIT}}),	-- Training Grounds
					exploration(6198, {	-- Valley of Emperors
						-- CRIEVE NOTE: This appears to be unavailable after Legion, someone let me know if you RECENTLY collect this.
						["collectible"] = false,
					}),
					visit_exploration(6181,{coord={71.3,80.5,KUN_LAI_SUMMIT}}),	-- Waterspeaker's Sanctuary
					exploration(6095),	-- Westwind Rest
					visit_exploration(6206,{coord={62.8,41.1,KUN_LAI_SUMMIT}}),	-- Whispercloud Rise
					visit_exploration(6383,{coord={35.2,59.4,KUN_LAI_SUMMIT}}),	-- Winter's Blossom
					exploration(6154),	-- Yinying Village
					visit_exploration(6405,{coord={62.8,36.5,KUN_LAI_SUMMIT}}),	-- Zouchin Province
					visit_exploration(6168,{coord={57.7,20.4,KUN_LAI_SUMMIT}}),	-- Zouchin Strand
					exploration(6169),	-- Zouchin Village
				}),
				n(FLIGHT_PATHS, {
					fp(1017, {	-- Binan Village, Kun-Lai Summit
						["cr"] = 61474,	-- Jo the Wind Watcher <Flight Master>
						["coord"] = { 72.4, 94.0, KUN_LAI_SUMMIT },
					}),
					fp(1019, {	-- Eastwind Rest, Kun-Lai Summit
						["cr"] = 61745,	-- Soaring Paw <Flight Master>
						["coord"] = { 62.4, 80.6, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					fp(1023, {	-- Kota Basecamp, Kun-Lai Summit
						["cr"] = 60416,	-- Uncle Eastwind <Flight Master>
						["coord"] = { 42.8, 69.6, KUN_LAI_SUMMIT },
					}),
					fp(1022, {	-- One Keg, Kun-Lai Summit
						["cr"] = 61504,	-- Little Cleankite <Flight Master>
						["coord"] = { 57.6, 59.8, KUN_LAI_SUMMIT },
					}),
					fp(1117, {	-- Serpent's Spine, Kun-Lai Summit
						["cr"] = 65863,	-- Morla Skyblade <Flight Master>
						["coord"] = { 36.0, 83.6, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					fp(1024, {	-- Shado-Pan Fallback, Kun-Lai Summit
						["cr"] = 61473,	-- Kite Master Ni <Flight Master>
						["coord"] = { 43.8, 89.6, KUN_LAI_SUMMIT },
					}),
					fp(1018, {	-- Temple of the White Tiger, Kun-Lai Summit
						["cr"] = 61118,	-- Big Greenfeather <Flight Master>
						["coord"] = { 66.2, 50.6, KUN_LAI_SUMMIT },
					}),
					fp(1020, {	-- Westwind Rest, Kun-Lai Summit
						["cr"] = 61744,	-- Tabo the Flyer <Flight Master>
						["coord"] = { 54.0, 84.2, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1025, {	-- Winter's Blossom, Kun-Lai Summit
						["cr"] = 61512,	-- Kite Master Len <Flight Master>
						["coord"] = { 34.6, 59.0, KUN_LAI_SUMMIT },
					}),
					fp(1021, {	-- Zouchin Village, Kun-Lai Summit
						["cr"] = 61511,	-- Bo the Wind Claimer <Flight Master>
						["coord"] = { 62.4, 30.0, KUN_LAI_SUMMIT },
					}),
				}),
				petbattles({
					n(66738, {	-- Courageous Yon <Grand Master Pet Tamer>
						["coord"] = { 35.8, 73.6, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_5_0_4 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(31956, {	-- Grand Master Yon
								["sourceAchievement"] = 6606,	-- Taming Pandaria
								["timeline"] = { ADDED_5_0_4 },
								["isDaily"] = true,
								["groups"] = {
									i(89125),	-- Sack of Pet Supplies
								},
							}),
						},
					}),
					q(63435, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Temple Throwdown
						["qg"] = 176655,	-- Anthea <Carefree Pet Tamer>
						["coord"] = { 70.4, 51.4, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_9_1_0 },
						["isDaily"] = true,
						["groups"] = {
							i(184866, {	-- Grummlepouch
								i(89587),	-- Porcupette (PET!)
								i(184867),	-- Squibbles (PET!)
							}),
						},
					})),
					n(68465, {	-- Thundering Pandaren Spirit <Grand Master Pet Tamer>
						["coord"] = { 64.8, 93.6, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_5_1_0 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(32441, {	-- Thundering Pandaren Spirit
								["sourceQuest"] = 32428,	-- Pandaren Spirit Tamer
								["timeline"] = { ADDED_5_1_0 },
								["isDaily"] = true,
								["groups"] = {
									i(93149, {	-- Pandaren Spirit Pet Supplies
										["sym"] = {{"select","itemID",
											89139,	-- Chain Pet Leash
											44820,	-- Red Ribbon Pet Leash
											37460,	-- Rope Pet Leash
										}},
										["groups"] = {
											i(92800),	-- Pandaren Earth Spirit (PET!)
										},
									}),
								},
							}),
						},
					}),
				}),
				n(PROFESSIONS, {
					prof(LEATHERWORKING, {
						n(65121, {	-- Clean Pelt <Leatherworking Trainer>
							["coord"] = { 64.6, 60.8, KUN_LAI_SUMMIT },
							["groups"] = MOP_LEATHERWORKING,
						}),
					}),
				}),
				n(QUESTS, {
					q(30581, {	-- ... and the Pot, Too!
						["sourceQuests"] = {
							30569,	-- Trouble on the Farmstead (A)
							30570,	-- Trouble on the Farmstead (H)
						},
						["qg"] = 59636,	-- Uyen Chow
						["coord"] = { 60.1, 85.9, KUN_LAI_SUMMIT },
						["groups"] = {
							o_repeated({
								i(80227),	-- Root Vegetable (QI!)
								o(211017),	-- Root Vegetable
								o(211018),	-- Root Vegetable
								o(211019),	-- Root Vegetable
							}),
							o(211023, {	-- Cast Iron Pot
								i(80230),	-- Cast Iron Pot (QI!)
							}),
							i(88398),	-- Root Veggie Stew
						},
					}),
					q(31394, {	-- A Celestial Experience (A)
						["sourceQuests"] = { 31392 },	-- Temple of the White Tiger
						["qg"] = 64540,	-- Anduin Wrynn
						["coord"] = { 68.7, 43.1, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					q(31395, {	-- A Celestial Experience (H)
						["sourceQuests"] = { 31393 },	-- Temple of the White Tiger
						["qg"] = 64542,	-- Sunwalker Dezco
						["coord"] = { 68.7, 43.0, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					q(30746, {	-- A Fair Trade
						["sourceQuest"] = 30825,	-- Kota Blend
						["qg"] = 60503,	-- Uncle Keenbean
						["coord"] = { 42.4, 69.6, KUN_LAI_SUMMIT },
						["groups"] = {
							i(80944),	-- Bundle of Kafa'kota Berries (QI!)
						},
					}),
					q(30820, {	-- A Funeral
						["sourceQuest"] = 30819,	-- Preparing the Remains
						["qg"] = 60436,	-- Li Hai
						["coord"] = { 63.1, 29.3, KUN_LAI_SUMMIT },
						["groups"] = {
							i(82496),	-- Waterfall Mantle
							i(82497),	-- Mushan Hide Spaulders
							i(82498),	-- Dreaming Spirit Spaulder
							i(82499),	-- Serenity Spaulders
							i(82500),	-- Mindbender Amice
							i(82501),	-- Silentleaf Spaulders
							i(82502),	-- Yak Herder Spaulder
							i(82503),	-- Summit Guardian Shoulders
							i(82504),	-- Wallwatcher Shoulders
						},
					}),
					q(30808, {	-- A Grummle's Luck
						["qg"] = 59371,	-- Lucky Eightcoins
						["coord"] = { 64.7, 61.7, KUN_LAI_SUMMIT },
						["groups"] = {
							o_repeated({
								i(81293),	-- Stolen Luckydos (QI!)
								o(211536),	-- Stolen Bag of Luckydos
								o(211537),	-- Stolen Bag of Luckydos
								o(211538),	-- Stolen Bag of Luckydos
							}),
						},
					}),
					q(30715, {	-- A Line Unbroken
						["sourceQuest"] = 30699,	-- To Winter's Blossom
						["qg"] = 61819,	-- Ban Bearheart
						["coord"] = { 35.1, 59.6, KUN_LAI_SUMMIT },
					}),
					q(30599, {	-- A Monkey Idol
						["sourceQuests"] = {
							30603,	-- The Broketooth Ravage
							30602,	-- The Rabbitsfoot
						},
						["qg"] = 59452,	-- Brother Rabbitsfoot
						["coord"] = { 51.9, 67.2, KUN_LAI_SUMMIT },
						["groups"] = {
							i(80428),	-- Corpse of Dak Dak (QI!)
							i(80429),	-- Corpse of Ko Ko (QI!)
							i(80430),	-- Corpse of Tak Tak (QI!)
							i(88385),	-- Hozen Idol (TOY!)
						},
					}),
					q(30751, {	-- A Terrible Sacrifice
						["sourceQuest"] = 30724,	-- To the Wall!
						["qg"] = 61820,	-- Lao-Chin the Iron Belly
						["coord"] = { 29.2, 62.3, KUN_LAI_SUMMIT },
						["groups"] = {
							o(212003, {	-- Yaungol Oil Barrel
								i(82799),	-- Yaungol Oil Barrel (QI!)
							}),
						},
					}),
					q(31512, {	-- A Witness to History (A)
						["sourceQuests"] = { 31394 },	-- A Celestial Experience
						["qg"] = 64540,	-- Anduin Wrynn
						["coord"] = { 68.7, 43.1, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					q(31511, {	-- A Witness to History (H)
						["sourceQuests"] = { 31395 },	-- A Celestial Experience
						["qg"] = 64542,	-- Sunwalker Dezco
						["coord"] = { 68.7, 43.0, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					q(30506, {	-- Admiral Taylor has Awakened (3 versions of this quest from 3 different npc's but completing one gives credit for all 3)
						["sourceQuests"] = {
							30459,	-- All of the Arrows
							30457,	-- Call Out Their Leader
							30460,	-- Hit Medicine
						},
						["qg"] = 59076,	-- Commander Hsieh
						["coord"] = { 70.8, 90.4, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30507, {	-- Admiral Taylor has Awakened
						["sourceQuests"] = {
							30459,	-- All of the Arrows
							30457,	-- Call Out Their Leader
							30460,	-- Hit Medicine
						},
						["qg"] = 59073,	-- Mayor Bramblestaff
						["coord"] = { 72.2, 91.8, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30508, {	-- Admiral Taylor has Awakened
						["sourceQuests"] = {
							30459,	-- All of the Arrows
							30457,	-- Call Out Their Leader
							30460,	-- Hit Medicine
						},
						["qg"] = 59077,	-- Apothecary Cheng
						["coord"] = { 71.6, 92.8, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30459, {	-- All of the Arrows
						["qg"] = 59076,	-- Commander Hsieh
						["coord"] = { 70.7, 90.3, KUN_LAI_SUMMIT },
						["groups"] = {
							o(210759, {	-- Arrow for Commander Hsieh
								i(79806),	-- Arrow for Commander Hsieh (QI!)
							}),
						},
					}),
					q(30796, {	-- An End to Everything
						["description"] = "Use |cFFFFD700The Tongue of Ba-Shon|r.",
						["sourceQuest"] = 30795,	-- Staying Connected
						["qg"] = 61297,	-- Image of Lorewalker Cho
						["coord"] = { 57.3, 48.0, KUN_LAI_SUMMIT },
					}),
					q(30491, {	-- At the Yak Wash
						["sourceQuest"] = 30488,	-- The Missing Muskpaw
						["qg"] = 61693,	-- Muskpaw Jr.
						["coord"] = { 65.3, 62.3, 381 },
					}),
					q(30492, {	-- Back in Yak
						["sourceQuests"] = {
							30491,	-- At the Yak Wash
							30587,	-- Yakity Yak
						},
						["qg"] = 59354,	-- Muskpaw Jr.
						["coord"] = { 71.4, 69.2, KUN_LAI_SUMMIT },
						["groups"] = {
							i(82574),	-- Coin of Blessings
							i(82575),	-- Coin of Serendipity
							i(82576),	-- Coin of Luck
							i(82577),	-- Coin of Good Fortune
							i(82578),	-- Coin of Luckydo Coin
						},
					}),
					q(31253, {	-- Back to Eastwind Rest
						["sourceQuests"] = {
							30581,	-- ... and the Pot, Too!
							30571,	-- Farmhand Freedom
						},
						["qg"] = 59573,	-- Farmer Chow
						["coord"] = { 60.2, 85.7, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					q(31252, {	-- Back to Westwind Rest
						["sourceQuests"] = {
							30581,	-- ... and the Pot, Too!
							30571,	-- Farmhand Freedom
						},
						["qg"] = 59573,	-- Farmer Chow
						["coord"] = { 60.2, 85.7, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30651, {	-- Barrels of Fun (A)
						["sourceQuests"] = {
							31252,	-- Back to Westwind Rest
							30593,	-- Deanimate the Reanimated
							30619,	-- Mogu?! Oh No-gu!
							-- TODO: verify below
							30583,	-- Blue Dwarf Needs Food Badly
							30575,	-- Round 'Em Up
						},
						["qg"] = 59450,	-- Sully "The Pickle" McLeary
						["coord"] = { 54.1, 83.2, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(88577),	-- Explosive Barrel
						},
					}),
					q(30656, {	-- Barrels of Fun (H)
						["sourceQuests"] = {
							31253,	-- Back to Eastwind Rest
							30620,	-- Mogu?! Oh No-gu!
						},
						["qg"] = 59448,	-- Rivett Clutchpop
						["coord"] = { 62.7, 79.8, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["groups"] = {
							o(211312, {	-- Explosives Barrel
								i(80528),	-- Explosives Barrel (QI!)
							}),
							i(88577),	-- Explosive Barrel
						},
					}),
					q(31251, {	-- Best Meals Anywhere!
						["sourceQuest"] = 30515,	-- Challenge Accepted
						["qg"] = 59448,	-- Rivett Clutchpop
						["coord"] = { 62.7, 79.8, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(80245),	-- Kun-Lai Meaty Bits (QI!)
						},
					}),
					q(31847, {	-- Better Dead than Dread
						["qg"] = 61512,	-- Kite Master Len
						["coord"] = { 34.6, 59.0, KUN_LAI_SUMMIT },
						["isBreadcrumb"] = true,
						-- TODO: determine sourceQuest. exclusive with "The Threat in the South" from Townlong Steppes
					}),
					q(31695, {	-- Beyond the Wall
						["sourceQuests"] = {
							30660,	-- The Ordo Warbringer (A)
							30662,	-- The Ordo Warbringer (A)
							30661,	-- The Ordo Warbringer (H)
							30663,	-- The Ordo Warbringer (H)
						},
						["altQuests"] = {
							31386,	-- The Shado-Pan Offensive (A)
							31388,	-- The Shado-Pan Offensive (H)
						},
						["qgs"] = {
							63542,	-- Elder Tsulan
							63535,	-- Elder Shiao
						},
						["coords"] = {
							{ 54.1, 83.4, KUN_LAI_SUMMIT },
							{ 62.3, 79.6, KUN_LAI_SUMMIT },
						},
						["isBreadcrumb"] = true,
					}),
					q(30583, {	-- Blue Dwarf Needs Food Badly
						["sourceQuest"] = 30514,	-- Challenge Accepted
						["qg"] = 59450,	-- Sully "The Pickle" McLeary
						["coord"] = { 54.1, 83.2, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30604, {	-- Breaking Broketooth
						["sourceQuests"] = {
							30603,	-- The Broketooth Ravage
							30602,	-- The Rabbitsfoot
						},
						["qg"] = 59452,	-- Brother Rabbitsfoot
						["coord"] = { 51.9, 67.2, KUN_LAI_SUMMIT },
					}),
					q(30798, {	-- Breaking the Emperor's Shield
						["sourceQuest"] = 30799,	-- The Tomb of Shadows
						["qg"] = 61297,	-- Image of Lorewalker Cho
						["coord"] = { 57.3, 47.9, KUN_LAI_SUMMIT },
					}),
					q(30605, {	-- Bros Before Hozen
						["sourceQuests"] = {
							30599,	-- A Monkey Idol
							30604,	-- Breaking Broketooth
							30600,	-- No Pack Left Behind
						},
						["qg"] = 59452,	-- Brother Rabbitsfoot
						["coord"] = { 51.9, 67.2, KUN_LAI_SUMMIT },
						["groups"] = {
							i(88379),	-- Grummlecake
						},
					}),
					q(30807, {	-- By the Falls, For the Fallen
						["sourceQuest"] = 30794,	-- Emergency Care
						["qg"] = 60785,	-- Sage Liao
						["coord"] = { 60.6, 21.3, KUN_LAI_SUMMIT },
						["groups"] = {
							o(211510, {	-- Sage Liao's Belongings
								i(81177),	-- Pandaren Healing Draught (QI!)
							}),
						},
					}),
					q(30457, {	-- Call Out Their Leader
						["qg"] = 59073,	-- Mayor Bramblestaff
						["coord"] = { 72.2, 91.8, KUN_LAI_SUMMIT },
						["groups"] = {
							i(84542),	-- Bataari Hatchet
							i(84539),	-- Bataari Warshield
							i(84538),	-- Binan Blade
							i(84537),	-- Binan Greatsword
							i(84541),	-- Bramble Blade
							i(90467),	-- Bureaucrat's Handbook
							i(84540),	-- Flamecaller's Shield
							i(90468),	-- Mayor's Hand Fan
						},
					}),
					q(30514, {	-- Challenge Accepted (A)
						["sourceQuest"] = 30512,	-- Westwind Rest
						["qg"] = 63542,	-- Elder Tsulan
						["coord"] = { 56.3, 84.3, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30515, {	-- Challenge Accepted (H)
						["sourceQuest"] = 30513,	-- Eastwind Rest
						["qg"] = 63535,	-- Elder Shiao
						["coord"] = { 61.1, 82.2, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					q(30802, {	-- Chasing the Storm
						["sourceQuest"] = 30801,	-- Lessons from History
						["qg"] = 61297,	-- Image of Lorewalker Cho
						["coord"] = { 33.8, 63.1, 385 },
						["groups"] = {
							i(81890),	-- Blood-Revealed Map (QI!)
							i(82579),	-- Lorewalker's Mark
							i(82580),	-- Lorewalker's Emblem
							i(82581),	-- Lorewalker's Sigil
							i(82582),	-- Lorewalker's Medallion
							i(82583),	-- Lorewalker's Insignia
						},
					}),
					q(30816, {	-- Checking In
						["sourceQuest"] = 30935,	-- Fisherman's Tale
						["qg"] = 60436,	-- Li Hai
						["coord"] = { 63.1, 29.3, KUN_LAI_SUMMIT },
						["isBreadcrumb"] = true,
					}),
					q(31460, {	-- Cho's Missive (A)
						["sourceQuests"] = {
							30651,	-- Barrels of Fun
							30650,	-- Pandaren Prisoners
							30660,	-- The Ordo Warbringer
							30662,	-- The Ordo Warbringer
						},
						["qg"] = 59451,	-- Mishka
						["coord"] = { 53.6, 83.2, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(31459, {	-- Cho's Missive (H)
						["sourceQuests"] = {
							30656,	-- Barrels of Fun
							30655,	-- Pandaren Prisoners
							30661,	-- The Ordo Warbringer
							30663,	-- The Ordo Warbringer
						},
						["qg"] = 59449,	-- Shademaster Kiryn
						["coord"] = { 62.6, 80.7, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30828, {	-- Cleansing the Mere
						["sourceQuest"] = 30480,	-- The Ritual
						["qg"] = 60973,	-- Waterspeaker Gorai
						["coord"] = { 74.9, 88.5, KUN_LAI_SUMMIT },
					}),
					q(30487, {	-- Comin' Round the Mountain
						["sourceQuests"] = {
							30601,	-- Instant Courage
							30618,	-- Resupplying One Keg
							30621,	-- They Stole My Luck
						},
						["qg"] = 59696,	-- Uncle Cloverleaf
						["coord"] = { 57.2, 61.2, KUN_LAI_SUMMIT },
					}),
					q(57069, {	-- Cut Off the Heads
						["sourceQuest"] = 57068,	-- Kite Surveillance
						["qg"] = 156391,	-- Li Li Stormstout
						["coord"] = { 60.0, 75.6, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_8_3_0 },
						["lvl"] = 120,
					}),
					q(30593, {	-- Deanimate the Reanimated (A)
						["sourceQuest"] = 30514,	-- Challenge Accepted
						["qg"] = 59451,	-- Mishka
						["coord"] = { 53.6, 83.2, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30594, {	-- Deanimate the Reanimated (H)
						["sourceQuest"] = 30515,	-- Challenge Accepted
						["qg"] = 59449,	-- Shademaster Kiryn
						["coord"] = { 62.6, 80.7, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					q(30991, {	-- Do a Barrel Roll!
						["sourceQuests"] = {
							30751,	-- A Terrible Sacrifice
							30994,	-- Lao-Chin's Gambit
						},
						["qg"] = 61820,	-- Lao-Chin the Iron Belly
						["coord"] = { 31.8, 60.1, KUN_LAI_SUMMIT },
						["groups"] = {
							i(88531),	-- Lao Chin's Last Mug (TOY!)
						},
					}),
					q(30513, {	-- Eastwind Rest
						["sourceQuests"] = {
							30509,	-- General Nazgrim has Awakened
							30510,	-- General Nazgrim has Awakened
							30511,	-- General Nazgrim has Awakened
						},
						["qg"] = 59442,	-- General Nazgrim
						["coord"] = { 71.6, 93.1, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					q(30794, {	-- Emergency Care
						["sourceQuest"] = 30816,	-- Checking In
						["qg"] = 60694,	-- Sage Liao
						["coord"] = { 60.6, 21.3, KUN_LAI_SUMMIT },
					}),
					q(31011, {	-- Enemies At Our Door
						["sourceQuests"] = {
							30943,	-- Handle With Care
							30944,	-- It Takes A Village
							30942,	-- Make A Fighter Out of Me
							30945,	-- What's Yours Is mine
						},
						["qg"] = 61371,	-- Lorewalker Cho
						["coord"] = { 62.3, 29.0, KUN_LAI_SUMMIT },
					}),
					q(30468, {	-- Enraged Vengeance
						["qg"] = 59273,	-- Swordmistress Mei
						["coord"] = { 74.7, 88.6, KUN_LAI_SUMMIT },
						["groups"] = {
							i(84535),	-- Bodyguard's Dagger
							i(84529),	-- Bodyguard's Halberd
							i(84532),	-- Bodyguard's Rifle
							i(84536),	-- Hidden Pass Barbs
							i(84528),	-- Inkgill Blade
							i(84533),	-- Mei's Blade
							i(84534),	-- Ornate Mace
							i(84531),	-- Swordmistress' Blade
							i(84530),	-- Swordmistress' Greatsword
						},
					}),
					q(30571, {	-- Farmhand Freedom
						["sourceQuests"] = {
							30569,	-- Trouble on the Farmstead (A)
							30570,	-- Trouble on the Farmstead (H)
						},
						["qg"] = 59573,	-- Farmer Chow
						["coord"] = { 60.2, 85.7, KUN_LAI_SUMMIT },
					}),
					q(30834, {	-- Father and Child Reunion
						["sourceQuest"] = 30467,	-- My Son...
						["qg"] = 59272,	-- Wu-Peng
						["coord"] = { 74.6, 76.9, KUN_LAI_SUMMIT },
					}),
					q(30992, {	-- Finish This!
						["sourceQuest"] = 30991,	-- Do a Barrel Roll!
						["qg"] = 61820,	-- Lao-Chin the Iron Belly
						["coord"] = { 31.8, 60.1, KUN_LAI_SUMMIT },
					}),
					q(30935, {	-- Fisherman's Tale
						["sourceQuest"] = 30802,	-- Chasing the Storm
						["qg"] = 61297,	-- Image of Lorewalker Cho
						["coord"] = { 64.0, 73.3, KUN_LAI_SUMMIT },
					}),
					q(30489, {	-- Fresh Needle Scent
						["qg"] = 59353,	-- Lao Muskpaw
						["coord"] = { 71.6, 70.2, KUN_LAI_SUMMIT },
						["groups"] = {
							i(79952),	-- Pungent Sprite Needles (QI!)
						},
					}),
					q(30967, {	-- Free the Dissenters
						["qg"] = 60973,	-- Waterspeaker Gorai
						["coord"] = { 75.1, 87.9, KUN_LAI_SUMMIT },
					}),
					q(30509, {	-- General Nazgrim has Awakened (3 versions of this quest from 3 different npc's but completing one gives credit for all 3)
						["sourceQuests"] = {
							30459,	-- All of the Arrows
							30457,	-- Call Out Their Leader
							30460,	-- Hit Medicine
						},
						["qg"] = 59076,	-- Commander Hsieh
						["coord"] = { 70.7, 90.3, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					q(30510, {	-- General Nazgrim has Awakened
						["sourceQuests"] = {
							30459,	-- All of the Arrows
							30457,	-- Call Out Their Leader
							30460,	-- Hit Medicine
						},
						["qg"] = 59073,	-- Mayor Bramblestaff
						["coord"] = { 72.2, 91.8, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					q(30511, {	-- General Nazgrim has Awakened
						["sourceQuests"] = {
							30459,	-- All of the Arrows
							30457,	-- Call Out Their Leader
							30460,	-- Hit Medicine
						},
						["qg"] = 59077,	-- Apothecary Cheng
						["coord"] = { 71.5, 92.8, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					q(30824, {	-- Gourmet Kafa
						["qg"] = 60678,	-- Cousin Littlebrew
						["coord"] = { 40.2, 81.5, KUN_LAI_SUMMIT },
					}),
					q(30743, {	-- Gourmet Kafa
						["qg"] = 60596,	-- Cousin Gootfur
						["coord"] = { 42.3, 69.7, KUN_LAI_SUMMIT },
					}),
					q(30610, {	-- Grummle! Grummle! Grummle!
						["sourceQuests"] = {
							30607,	-- Hozen Love Their Keys
							30608,	-- The Snackrifice
							30606,	-- Thumping Knucklethump
						},
						["qg"] = 59894,	-- Brother Yakshoe
						["coord"] = { 52.0, 67.1, KUN_LAI_SUMMIT },
					}),
					q(30943, {	-- Handle With Care
						["sourceQuest"] = 30935,	-- Fisherman's Tale
						["qg"] = 61495,	-- Elder Shu
						["coord"] = { 63.4, 28.7, KUN_LAI_SUMMIT },
						["groups"] = {
							o(211684, {	-- Volatile Blooms
								i(82298),	-- Handful of Volatile Blooms (QI!)
							}),
						},
					}),
					heroscall(q(49559, {	-- Hero's Call: Kun-Lai Summit!
						["timeline"] = { ADDED_7_3_5 },
						["isBreadcrumb"] = true,
						["lvl"] = 82,
					})),
					q(30460, {	-- Hit Medicine
						["qg"] = 59077,	-- Apothecary Cheng
						["coord"] = { 71.5, 92.8, KUN_LAI_SUMMIT },
						["groups"] = {
							i(79819),	-- Dit Da Jow (QI!)
						},
					}),
					q(30682, {	-- Holed Up
						["qg"] = 60178,	-- Sya Zhong
						["coord"] = { 42.9, 88.3, KUN_LAI_SUMMIT },
						["groups"] = {
							i(88579),	-- Jin Warmkeg's Brew (TOY!)
						},
					}),
					q(30723, {	-- Honor, Even in Death
						["sourceQuest"] = 30699,	-- To Winter's Blossom
						["qg"] = 61816,	-- Lin Silentstrike
						["coord"] = { 34.9, 59.4, KUN_LAI_SUMMIT },
					}),
					q(30607, {	-- Hozen Love Their Keys
						["sourceQuest"] = 30605,	-- Bros Before Hozen
						["qg"] = 59894,	-- Brother Yakshoe
						["coord"] = { 50.5, 64.0, KUN_LAI_SUMMIT },
						["groups"] = {
							i(80535),	-- Yeti Shackle Key (QI!)
						},
					}),
					q(30652, {	-- In Tents Channeling (A)
						["sourceQuests"] = {
							31252,	-- Back to Westwind Rest
							30593,	-- Deanimate the Reanimated
							30619,	-- Mogu?! Oh No-gu!
							-- TODO: verify below
							30583,	-- Blue Dwarf Needs Food Badly
							30575,	-- Round 'Em Up
						},
						["qg"] = 59441,	-- Admiral Taylor
						["coord"] = { 53.8, 83.6, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30657, {	-- In Tents Channeling (H)
						["sourceQuests"] = {
							31253,	-- Back to Eastwind Rest
							30594,	-- Deanimate the Reanimated
							30620,	-- Mogu?! Oh No-gu!
							-- TODO: verify below
							31251,	-- Best Meals Anywhere!
							31256,	-- Round 'Em Up!
						},
						["qg"] = 59442,	-- General Nazgrim
						["coord"] = { 62.9, 80.1, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					q(30601, {	-- Instant Courage
						["sourceQuest"] = 30999,	-- Path Less Traveled
						["qg"] = 59696,	-- Uncle Cloverleaf
						["coord"] = { 57.2, 61.1, KUN_LAI_SUMMIT },
						["groups"] = {
							i(80308),	-- Fire Lotus Incense (QI!)
						},
					}),
					q(30944, {	-- It Takes A Village
						["sourceQuest"] = 30935,	-- Fisherman's Tale
						["qg"] = 61371,	-- Lorewalker Cho
						["coord"] = { 62.3, 29.0, KUN_LAI_SUMMIT },
					}),
					q(30797, {	-- It Was Almost Alive
						["sourceQuests"] = {
							30684,	-- Seeker's Folly
							31306,	-- Seeker's Folly
						},
						["provider"] = { "o", 211754 },	-- Curious Text
						["coord"] = { 57.1, 47.8, KUN_LAI_SUMMIT },
						["groups"] = {
							o(211780, {	-- Curious Text
								i(81892),	-- Curious Text (QI!)
							}),
						},
					}),
					q(30805, {	-- Justice
						["sourceQuest"] = 30794,	-- Emergency Care
						["qg"] = 60785,	-- Sage Liao
						["coord"] = { 60.6, 21.3, KUN_LAI_SUMMIT },
					}),
					q(30825, {	-- Kota Blend
						["qg"] = 60677,	-- Uncle Tallmug
						["coord"] = { 40.3, 81.5, KUN_LAI_SUMMIT },
						["groups"] = {
							o_repeated({
								i(81054),	-- Kafa'Kota Berry
								o(211454),	-- Kafa'kota Bush
								o(211480),	-- Kafa'kota Berries
							}),
						},
					}),
					q(30994, {	-- Lao-Chin's Gambit
						["sourceQuests"] = {
							30751,	-- A Terrible Sacrifice
							30750,	-- Off the Wall!
						},
						["qg"] = 61454,	-- Suna Silentstrike
						["coord"] = { 29.3, 62.2, KUN_LAI_SUMMIT },
					}),
					q(30801, {	-- Lessons from History
						["sourceQuest"] = 30800,	-- Stealing Their Thunder King
						["qg"] = 61297,	-- Image of Lorewalker Cho
						["coord"] = { 57.3, 47.9, KUN_LAI_SUMMIT },
					}),
					q(57075, {	-- Liquid Courage
						["sourceQuest"] = 57074,	-- Our Backs to the Gate
						["qg"] = 156938,	-- Li Li Stormstout
						["coord"] = { 55.5, 91.1, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_8_3_0 },
						["lvl"] = 120,
					}),
					q(30942, {	-- Make A Fighter Out of Me
						["sourceQuest"] = 30935,	-- Fisherman's Tale
						["qg"] = 61503,	-- Shomi
						["coord"] = { 63.7, 30.7, KUN_LAI_SUMMIT },
						["groups"] = {
							i(82599),	-- Shomi's Greatsword
							i(82600),	-- Shomi's Mace
							i(82601),	-- Shomi's Shield
							i(82602),	-- Shomi's Ward
							i(82603),	-- Shomi's Dagger
							i(82604),	-- Shomi's Axe
							i(90488),	-- Shomi's Crane
							i(90489),	-- Shomi's Fan
						},
					}),
					q(30619, {	-- Mogu?! Oh No-gu! (A)
						["sourceQuest"] = 30514,	-- Challenge Accepted
						["qg"] = 63542,	-- Elder Tsulan
						["coord"] = { 54.1, 83.4, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(82489),	-- Dreaming Spirit Helm
							i(82491),	-- Mindbender Cowl
							i(82488),	-- Mushan Hide Helm
							i(82490),	-- Serenity Headcover
							i(82492),	-- Silentleaf Helm
							i(82494),	-- Summit Guardian Helm
							i(82495),	-- Wallwatcher Helm
							i(82487),	-- Waterfall Hood
							i(82493),	-- Yak Herder Helm
						},
					}),
					q(30620, {	-- Mogu?! Oh No-gu! (H)
						["sourceQuest"] = 30515,	-- Challenge Accepted
						["qg"] = 63535,	-- Elder Shiao
						["coord"] = { 62.3, 79.6, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(82489),	-- Dreaming Spirit Helm
							i(82491),	-- Mindbender Cowl
							i(82488),	-- Mushan Hide Helm
							i(82490),	-- Serenity Headcover
							i(82492),	-- Silentleaf Helm
							i(82494),	-- Summit Guardian Helm
							i(82495),	-- Wallwatcher Helm
							i(82487),	-- Waterfall Hood
							i(82493),	-- Yak Herder Helm
						},
					}),
					q(57070, {	-- Mogu Massacre
						["sourceQuest"] = 57068,	-- Kite Surveillance
						["qg"] = 156391,	-- Li Li Stormstout
						["coord"] = { 60.0, 75.6, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_8_3_0 },
						["lvl"] = 120,
					}),
					q(31456, {	-- Muskpaw Ranch (A)
						["sourceQuests"] = {
							30660,	-- The Ordo Warbringer
							30662,	-- The Ordo Warbringer
						},
						["qg"] = 63754,	-- Farmhand Bo
						["coord"] = { 53.7, 84.1, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(31457, {	-- Muskpaw Ranch (H)
						["sourceQuests"] = {
							30661,	-- The Ordo Warbringer
							30663,	-- The Ordo Warbringer
						},
						["qg"] = 63751,	-- Farmhand Ko
						["coord"] = { 62.5, 79.4, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30768, {	-- My Husband...
						["sourceQuest"] = 30992,	-- Finish This!
						["altQuests"] = {
							31695,	-- Beyond the Wall
							31386,	-- The Shado-Pan Offensive (A)
							31388,	-- The Shado-Pan Offensive (H)
						},
						["qg"] = 61454,	-- Suna Silentstrike
						["coord"] = { 31.3, 61.6, KUN_LAI_SUMMIT },
						["isBreadcrumb"] = true,
					}),
					q(30467, {	-- My Son...
						["sourceQuests"] = {
							31451,	-- The Missing Merchant (H)
							31452,	-- The Missing Merchant (A)
						},
						["qg"] = 59263,	-- Merchant Shi
						["coord"] = { 74.9, 88.8, KUN_LAI_SUMMIT },
					}),
					q(57071, {	-- No Brew Left Behind
						["sourceQuest"] = 57068,	-- Kite Surveillance
						["qg"] = 156390,	-- Chen Stormstout
						["coord"] = { 59.9, 75.5, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_8_3_0 },
						["lvl"] = 120,
					}),
					q(30600, {	-- No Pack Left Behind
						["sourceQuests"] = {
							30603,	-- The Broketooth Ravage
							30602,	-- The Rabbitsfoot
						},
						["qg"] = 59452,	-- Brother Rabbitsfoot
						["coord"] = { 51.9, 67.2, KUN_LAI_SUMMIT },
						["groups"] = {
							i(80307),	-- Grummlepack (QI!)
							i(88397),	-- Grummlepack
						},
					}),
					q(30750, {	-- Off the Wall!
						["sourceQuest"] = 30724,	-- To the Wall!
						["qg"] = 61454,	-- Suna Silentstrike
						["coord"] = { 29.3, 62.2, KUN_LAI_SUMMIT },
					}),
					q(30614, {	-- Oil Stop
						["qg"] = 59402,	-- Slimy Inkstain
						["coord"] = { 65.4, 60.8, KUN_LAI_SUMMIT },
						["groups"] = {
							i(80312),	-- Empty Oil Vial (QI!)
							i(80311),	-- Filled Oil Vial (QI!)
						},
					}),
					q(30683, {	-- One Traveler's Misfortune
						["sourceQuest"] = 30487,	-- Comin' Round the Mountain
						["qg"] = 60175,	-- Lucky Bluestring
						["coord"] = { 48.1, 49.0, KUN_LAI_SUMMIT },
						["groups"] = {
							i(82505),	-- Waterfall Robe
							i(82506),	-- Mushan Hide Tunic
							i(82507),	-- Dreaming Spirit Armor
							i(82508),	-- Serenity Chestguard
							i(82509),	-- Mindbender Robe
							i(82510),	-- Silentleaf Tunic
							i(82511),	-- Yak Herder Armor
							i(82512),	-- Summit Guardian Chestpiece
							i(82513),	-- Wallwatcher Chestpiece
						},
					}),
					q(57074, {	-- Our Backs to the Gate
						["sourceQuests"] = {
							57069,	-- Cut Off the Heads
							57070,	-- Mogu Massacre
							57072,	-- Yak of All Trades
						},
						["qg"] = 156390,	-- Chen Stormstout
						["coord"] = { 59.9, 75.5, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_8_3_0 },
						["lvl"] = 120,
					}),
					q(30650, {	-- Pandaren Prisoners (A)
						["sourceQuests"] = {
							31252,	-- Back to Westwind Rest
							30593,	-- Deanimate the Reanimated
							30619,	-- Mogu?! Oh No-gu!
							-- TODO: verify below
							30583,	-- Blue Dwarf Needs Food Badly
							30575,	-- Round 'Em Up
						},
						["qg"] = 63542,	-- Elder Tsulan
						["coord"] = { 54.1, 83.4, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30655, {	-- Pandaren Prisoners (H)
						["sourceQuests"] = {
							31253,	-- Back to Eastwind Rest
							30620,	-- Mogu?! Oh No-gu!
						},
						["qg"] = 63535,	-- Elder Shiao
						["coord"] = { 62.3, 79.6, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					q(30999, {	-- Path Less Traveled
						["sourceQuests"] = {
							31460,	-- Cho's Missive (A)
							31459,	-- Cho's Missive (H)
						},
						["qg"] = 61847,	-- Lorewalker Cho
						["coord"] = { 57.3, 61.6, KUN_LAI_SUMMIT },
					}),
					q(32816, applyclassicphase(MOP_PHASE_ESCALATION, {	-- Path of the Last Emperor
						["sourceQuest"] = 32815,	-- The Old Seer
						["qg"] = 70980,	-- Seer Hao Pham Roo
						["timeline"] = { ADDED_5_3_0 },
						["groups"] = {
							i(247858, { ["timeline"] = {ADDED_11_2_7 } }),	-- Shaohao Ceremonial Bell (DECOR!)
							i(98140),	-- Boots of Boundless Patience
							i(98142),	-- Modest Sandals
							i(98141),	-- Sabatons of the Humble
							i(98145),	-- Self-Effacing Boots
							i(98143),	-- Subservient Greatboots
							i(98137),	-- Treads of Reticence
							i(98139),	-- Treads of Respect
							i(98144),	-- Unassuming Slippers
							i(98138),	-- Unpretentious Boots
						},
					})),
					q(30819, {	-- Preparing the Remains
						["sourceQuests"] = {
							30807,	-- By the Falls, For the Fallen
							30805,	-- Justice
							30806,	-- The Scent of Life
						},
						["qg"] = 60785,	-- Sage Liao
						["coord"] = { 60.6, 21.3, KUN_LAI_SUMMIT },
					}),
					q(30595, {	-- Profiting off of the Past
						["qg"] = 59821,	-- Bao Jian
						["coord"] = { 59.6, 78.2, KUN_LAI_SUMMIT },
						["groups"] = {
							o_repeated({
								i(80294),	-- Mogu Relic (QI!)
								o(211143),	-- Mogu Relic
								o(211147),	-- Mogu Relic
								o(211148),	-- Mogu Relic
							}),
						},
					}),
					q(30469, {	-- Repossession
						["qg"] = 59263,	-- Merchant Shi
						["coord"] = { 74.9, 88.8, KUN_LAI_SUMMIT },
						["groups"] = {
							o(210887, {	-- Untainted Supplies
								i(79880),	-- Stolen Supplies (QI!)
							}),
						},
					}),
					q(31228, {	-- Prophet Khar'zul
						["sourceQuest"] = 30946,	-- Revelations
						["qg"] = 63784,	-- Lorewalker Cho
						["coord"] = { 62.3, 29.0, KUN_LAI_SUMMIT },
						["groups"] = {
							i(82514),	-- Waterfall Leggings
							i(82515),	-- Mushan Hide Legguards
							i(82516),	-- Dreaming Spirit Kilt
							i(82517),	-- Serenity Legplates
							i(82518),	-- Mindbender Trousers
							i(82519),	-- Silentleaf Legguards
							i(82520),	-- Yak Herder Leggings
							i(82521),	-- Summit Guardian Legguards
							i(82522),	-- Wallwatcher Legguards
						},
					}),
					q(31809, {	-- Remnants of Anger
						["provider"] = { "i", 89317 },	-- Claw of Anger
						["maps"] = { TOWNLONG_STEPPES },
						["groups"] = {
							i(90912),	-- Angerforged Stompers
							i(90914),	-- Boots of Raging Haze
							i(90907),	-- Boots of Unbreakable Umbrage
							i(90908),	-- Crushing Treads of Anger
							i(90911),	-- Furyheart Treads
							i(90909),	-- Intemperate Greatboots
							i(90910),	-- Mindfire Sollerets
							i(90913),	-- Sandals of the Shadow
							i(90906),	-- Treads of Ardent Antagonism
						},
					}),
					q(30618, {	-- Resupplying One Keg
						["sourceQuest"] = 30999,	-- Path Less Traveled
						["qg"] = 59695,	-- Big Sal
						["coord"] = { 57.7, 61.7, KUN_LAI_SUMMIT },
						["groups"] = {
							o_repeated({
								i(80315),	-- Stolen Supplies (QI!)
								o(211266),	-- Stolen Supplies
								o(211268),	-- Stolen Supplies
								o(211269),	-- Stolen Supplies
								o(211270),	-- Stolen Supplies
							}),
							i(88070),	-- Waterfall Wristwraps
							i(88069),	-- Mushan Hide Wristwraps
							i(88068),	-- Dreaming Spirit Wristwraps
							i(88067),	-- Serenity Wristwraps
							i(88066),	-- Mindbender Wristwraps
							i(88065),	-- Silentleaf Wristwraps
							i(88064),	-- Yak Herder Wristwraps
							i(88063),	-- Summit Guardian Wristwraps
							i(88062),	-- Wallwatcher Wristwraps
						},
					}),
					q(57076, {	-- Return to Mistfall
						["sourceQuest"] = 57075,	-- Liquid Courage
						["qg"] = 156937,	-- Chen Stormstout
						["coord"] = { 55.4, 91.1, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_8_3_0 },
						["lvl"] = 120,
					}),
					q(30946, {	-- Revelations
						["sourceQuest"] = 31011,	-- Enemies At Our Door
						["qg"] = 63750,	-- Lorewalker Cho
						["coord"] = { 62.3, 29.0, KUN_LAI_SUMMIT },
					}),
					q(30617, {	-- Roadside Assistance
						["sourceQuest"] = 30616,	-- Traffic Issues
						["qg"] = 59597,	-- Smokey Sootassle
						["coord"] = { 64.8, 60.4, KUN_LAI_SUMMIT },
						["groups"] = {
							i(88381),	-- Silversage Incence (TOY!)
						},
					}),
					q(30575, {	-- Round 'Em Up (A)
						["sourceQuest"] = 30514,	-- Challenge Accepted
						["qg"] = 59441,	-- Admiral Taylor
						["coord"] = { 53.7, 82.6, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(84511),	-- Dreaming Spirit Monnion
							i(84517),	-- Kafa Armored Shoulders
							i(84512),	-- Kafa Burnished Spaulders
							i(84516),	-- Kafa Heavy Shoulders
							i(84510),	-- Kafa Hide Spaulders
							i(84514),	-- Kafa Leather Spaulders
							i(84509),	-- Kafa Satin Mantle
							i(84513),	-- Kafa Silk Amice
							i(84515),	-- Yak Herder Monnion
						},
					}),
					q(31256, {	-- Round 'Em Up (H)
						["sourceQuest"] = 30515,	-- Challenge Accepted
						["qg"] = 59442,	-- General Nazgrim
						["coord"] = { 62.9, 80.1, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(84511),	-- Dreaming Spirit Monnion
							i(84517),	-- Kafa Armored Shoulders
							i(84512),	-- Kafa Burnished Spaulders
							i(84516),	-- Kafa Heavy Shoulders
							i(84510),	-- Kafa Hide Spaulders
							i(84514),	-- Kafa Leather Spaulders
							i(84509),	-- Kafa Satin Mantle
							i(84513),	-- Kafa Silk Amice
							i(84515),	-- Yak Herder Monnion
						},
					}),
					q(30684, {	-- Seeker's Folly
						["sourceQuest"] = 30683,	-- One Traveler's Misfortune
						["qg"] = 60175,	-- Lucky Bluestring
						["coord"] = { 48.1, 49.0, KUN_LAI_SUMMIT },
					}),
					q(31306, {	-- Seeker's Folly
						["description"] = "This version becomes available if you abandon the first version.",
						["sourceQuest"] = 30683,	-- One Traveler's Misfortune
						["qg"] = 60180,	-- Lucky Bluestring
						["coord"] = { 48.0, 49.1, KUN_LAI_SUMMIT },
					}),
					q(30742, {	-- Shut it Down
						["qg"] = 60596,	-- Cousin Gootfur
						["coord"] = { 42.3, 69.7, KUN_LAI_SUMMIT },
					}),
					q(30823, {	-- Shut it Down
						["qg"] = 60678,	-- Cousin Littlebrew
						["coord"] = { 40.2, 81.5, KUN_LAI_SUMMIT },
					}),
					q(30795, {	-- Staying Connected
						["sourceQuest"] = 30829,	-- The Tongue of Ba-Shon
						["qg"] = 60795,	-- Lorewalker Cho
						["coord"] = { 43.7, 51.1, KUN_LAI_SUMMIT },
						["groups"] = {
							i(81712),	-- The Tongue of Ba-Shon (QI!)
						},
					}),
					q(30800, {	-- Stealing Their Thunder King
						["sourceQuest"] = 30798,	-- Breaking the Emperor's Shield
						["qg"] = 61297,	-- Image of Lorewalker Cho
						["coord"] = { 57.3, 47.9, KUN_LAI_SUMMIT },
						["groups"] = {
							o(211967, {	-- King's Coffer
								i(82764),	-- Bottom Fragment of Lei Shen's Tablet (QI!)
							}),
						},
					}),
					q(31392, {	-- Temple of the White Tiger (A)
						["qgs"] = {
							63751,	-- Farmhand Ko
							64448,	-- Hopsmaster Chang
							60289,	-- Leni Kelpenstout
							55809,	-- Peiji Goldendraft
							66247,	-- Tigermaster Liu-Do
							64521,	-- Wanderer Chu
						},
						["coords"] = {
							{ 72.0, 94.2, KUN_LAI_SUMMIT },
							{ 54.5, 77.1, KRASARANG_WILDS },	-- Leni Kelpenstout
							{ 45.7, 43.7, THE_JADE_FOREST },	-- Peiji Goldendraft
							{ 74.8, 81.3, TOWNLONG_STEPPES },	-- Tigermaster Liu-Do
							{ 55.8, 51.8, VALLEY_OF_THE_FOUR_WINDS },	-- Hopsmaster Chang
						},
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(31393, {	-- Temple of the White Tiger (H)
						["qgs"] = {
							63751,	-- Farmhand Ko
							64448,	-- Hopsmaster Chang
							60289,	-- Leni Kelpenstout
							55809,	-- Peiji Goldendraft
							66247,	-- Tigermaster Liu-Do
							64521,	-- Wanderer Chu
						},
						["coords"] = {
							{ 72.0, 94.2, KUN_LAI_SUMMIT },
							{ 54.5, 77.1, KRASARANG_WILDS },	-- Leni Kelpenstout
							-- TODO: Flew by the area before and it wasn't here. Possibly requires "Boom Goes the Doonamite!" ?
							{ 45.7, 43.7, THE_JADE_FOREST },	-- Peiji Goldendraft
							{ 74.8, 81.3, TOWNLONG_STEPPES },	-- Tigermaster Liu-Do
							{ 55.8, 51.8, VALLEY_OF_THE_FOUR_WINDS },	-- Hopsmaster Chang
						},
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30603, {	-- The Broketooth Ravage
						["sourceQuest"] = 30592,	-- The Burlap Trail: To Burlap Waystation
						["qg"] = 59806,	-- Brother Rabbitsfoot
						["coord"] = { 49.1, 70.4, KUN_LAI_SUMMIT },
						["groups"] = {
							i(81137),	-- Rabbitsfoot's Luckydo (QI!)
						},
					}),
					q(30747, {	-- The Burlap Grind
						["sourceQuest"] = 30746,	-- A Fair Trade
						["qg"] = 60679,	-- Nephew Burrberry
						["coord"] = { 42.5, 69.3, KUN_LAI_SUMMIT },
						["groups"] = {
							i(81183),	-- Flask of Kafa (QI!)
							i(82525),	-- Dreaming Spirit Sabatons
							i(82527),	-- Mindbender Treads
							i(82524),	-- Mushan Hide Footguards
							i(82526),	-- Serenity Greaves
							i(82528),	-- Silentleaf Boots
							i(82530),	-- Summit Guardian Warboots
							i(82531),	-- Wallwatcher Warboots
							i(82523),	-- Waterfall Treads
							i(82529),	-- Yak Herder Sabatons
						},
					}),
					q(30821, {	-- The Burlap Grind (daily)
						["sourceQuest"] = 30747,	-- The Burlap Grind
						["qg"] = 60679,	-- Nephew Burrberry
						["coord"] = { 42.5, 69.3, KUN_LAI_SUMMIT },
						["isDaily"] = true,
					}),
					q(30592, {	-- The Burlap Trail: To Burlap Waystation
						["qg"] = 59701,	-- Brother Lintpocket
						["coord"] = { 58.0, 61.4, KUN_LAI_SUMMIT },
						["groups"] = {
							i(88384),	-- Burlap Ritual Bag
						},
					}),
					q(30692, {	-- The Burlap Trail: To Kota Basecamp
						["sourceQuest"] = 30612,	-- The Leader Hozen
						["qg"] = 59703,	-- Brother Trailscenter
						["coord"] = { 51.6, 67.8, KUN_LAI_SUMMIT },
						["groups"] = {
							i(82584),	-- Snowfall Shawl
							i(82585),	-- Snowdrift Drape
							i(82586),	-- Snowblind Cape
							i(82587),	-- Snow Boulder Manteau
							i(82588),	-- Snowmask Cloak
						},
					}),
					q(30665, {	-- The Defense of Shado-Pan Fallback
						["sourceQuests"] = {
							30459,	-- All of the Arrows
							30457,	-- Call Out Their Leader
							30460,	-- Hit Medicine
						},
						["qg"] = 60161,	-- Shado-Master Chong
						["coord"] = { 44.4, 89.9, KUN_LAI_SUMMIT },
					}),
					q(30855, {	-- The Fall of Shai Hu
						["sourceQuest"] = 30828,	-- Cleansing the Mere
						["qg"] = 61065,	-- Waterspeaker Gorai
						["coord"] = { 74.9, 88.5, KUN_LAI_SUMMIT },
						["groups"] = {
							i(82552),	-- Dreaming Spirit Armbands
							i(82554),	-- Mindbender Cuffs
							i(82551),	-- Mushan Hide Bindings
							i(82553),	-- Serenity Bracers
							i(82555),	-- Silentleaf Armwraps
							i(82557),	-- Summit Guardian Armplates
							i(82558),	-- Wallwatcher Bracers
							i(82550),	-- Waterfall Cuffs
							i(82556),	-- Yak Herder Wristguards
						},
					}),
					q(30804, {	-- The Fearmaster
						["sourceQuest"] = 30582,	-- The Late Mrs. Muskpaw
						["qg"] = 59353,	-- Lao Muskpaw
						["coord"] = { 71.0, 69.1, KUN_LAI_SUMMIT },
						["groups"] = {
							i(84520),	-- Dreaming Spirit Boots
							i(84526),	-- Kafa Armored Warboots
							i(84521),	-- Kafa Burnished Greaves
							i(84525),	-- Kafa Heavy Warboots
							i(84519),	-- Kafa Hide Footguards
							i(84523),	-- Kafa Leather Boots
							i(84518),	-- Kafa Satin Treads
							i(84522),	-- Kafa Silk Treads
							i(84524),	-- Yak Herder Boots
						},
					}),
					q(30582, {	-- The Late Mrs. Muskpaw
						["provider"] = { "i", 80241 },	-- Muskpaw's Keepsake
						["coord"] = { 70.3, 71.9, KUN_LAI_SUMMIT },
						["cr"] = 59335,	-- Burilgi Despoiler
						["groups"] = {
							i(80241),	-- Muskpaw's Keepsake (QI!)
						},
					}),
					q(30612, {	-- The Leader Hozen
						["sourceQuests"] = {
							30610,	-- Grummel! Grummle! Grummle!
							30611,	-- Unleash The Yeti!
						},
						["qg"] = 59452,	-- Brother Rabbitsfoot
						["coord"] = { 45.9, 64.0, KUN_LAI_SUMMIT },
						["groups"] = {
							i(82541),	-- Waterfall Gloves
							i(82542),	-- Mushan Hide Gloves
							i(82543),	-- Dreaming Spirit Guantlets
							i(82544),	-- Serenity Gloves
							i(82545),	-- Mindbender Handguards
							i(82546),	-- Silentleaf Gloves
							i(82547),	-- Yak Herder Gauntlets
							i(82548),	-- Summit Guardian Gauntlets
							i(82549),	-- Wallwatcher Gauntlets
						},
					}),
					q(31452, {	-- The Missing Merchant (A)
						["sourceQuests"] = {
							30651,	-- Barrels of Fun
							30650,	-- Pandaren Prisoners
							30660,	-- The Ordo Warbringer
							30662,	-- The Ordo Warbringer
						},
						["qg"] = 63542,	-- Elder Tsulan
						["coord"] = { 54.1, 83.4, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(31451, {	-- The Missing Merchant (H)
						["sourceQuests"] = {
							30656,	-- Barrels of Fun
							30655,	-- Pandaren Prisoners
							30661,	-- The Ordo Warbringer
							30663,	-- The Ordo Warbringer
						},
						["qg"] = 63535,	-- Elder Shiao
						["coord"] = { 62.3, 79.6, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30488, {	-- The Missing Muskpaw
						["sourceQuests"] = {
							31456,	-- Muskpaw Ranch (A)
							31457,	-- Muskpaw Ranch (H)
						},
						["qg"] = 59353,	-- Lao Muskpaw
						["coord"] = { 71.6, 70.2, KUN_LAI_SUMMIT },
					}),
					q(30660, {	-- The Ordo Warbringer (A)
						["description"] = "Automatically granted after completing the criteria for |cFFFFD700In Tents Channeling|r.",
						["sourceQuest"] = 30652,	-- In Tents Channeling
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(82590),	-- Blazecaster's Wand
							i(82598),	-- Fireblaze Clobberer
							i(82594),	-- Fireblaze Rifle
							i(82596),	-- Ordo Handaxe
							i(82589),	-- Ordo Mace
							i(82592),	-- Warbringer's Axe
							i(82597),	-- Warbringer's Dagger
							i(82593),	-- Wind Blade
							i(82595),	-- Wind's Edge
							i(82591),	-- Wind's Rest Spear
						},
					}),
					q(30662, {	-- The Ordo Warbringer (A)
						["description"] = "Only available if you abandon the original version of the quest.",
						["sourceQuest"] = 30652,	-- In Tents Channeling
						["qg"] = 59441,	-- Admiral Taylor
						["coord"] = { 53.9, 83.4, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(82590),	-- Blazecaster's Wand
							i(82598),	-- Fireblaze Clobberer
							i(82594),	-- Fireblaze Rifle
							i(82596),	-- Ordo Handaxe
							i(82589),	-- Ordo Mace
							i(82592),	-- Warbringer's Axe
							i(82597),	-- Warbringer's Dagger
							i(82593),	-- Wind Blade
							i(82595),	-- Wind's Edge
							i(82591),	-- Wind's Rest Spear
						},
					}),
					q(30661, {	-- The Ordo Warbringer (H)
						["description"] = "Automatically granted after completing the criteria for |cFFFFD700In Tents Channeling|r.",
						["sourceQuest"] = 30657,	-- In Tents Channeling
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(82590),	-- Blazecaster's Wand
							i(82598),	-- Fireblaze Clobberer
							i(82594),	-- Fireblaze Rifle
							i(82596),	-- Ordo Handaxe
							i(82589),	-- Ordo Mace
							i(82592),	-- Warbringer's Axe
							i(82597),	-- Warbringer's Dagger
							i(82593),	-- Wind Blade
							i(82595),	-- Wind's Edge
							i(82591),	-- Wind's Rest Spear
						},
					}),
					q(30663, {	-- The Ordo Warbringer (H)
						["description"] = "Only available if you abandon the original version of the quest.",
						["sourceQuest"] = 30657,	-- In Tents Channeling
						["qg"] = 59442,	-- General Nazgrim
						["coord"] = { 62.4, 80.4, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(82590),	-- Blazecaster's Wand
							i(82598),	-- Fireblaze Clobberer
							i(82594),	-- Fireblaze Rifle
							i(82596),	-- Ordo Handaxe
							i(82589),	-- Ordo Mace
							i(82592),	-- Warbringer's Axe
							i(82597),	-- Warbringer's Dagger
							i(82593),	-- Wind Blade
							i(82595),	-- Wind's Edge
							i(82591),	-- Wind's Rest Spear
						},
					}),
					q(30602, {	-- The Rabbitsfoot
						["sourceQuest"] = 30592,	-- The Burlap Trail: To Burlap Waystation
						["qg"] = 59703,	-- Brother Trailscenter
						["coord"] = { 51.6, 67.8, KUN_LAI_SUMMIT },
					}),
					q(30480, {	-- The Ritual
						["sourceQuests"] = {
							30468,	-- Enraged Vengeance
							30967,	-- Free the Dissenters
							30496,	-- The Waterspeaker's Staff
						},
						["qg"] = 60973,	-- Waterspeaker Gorai
						["coord"] = { 75.1, 88.0, KUN_LAI_SUMMIT },
					}),
					q(31254, {	-- The Road to Kun-Lai
						-- #if AFTER 7.3.5
						["sourceQuests"] = { 49559 },	-- Hero's Call: Kun-Lai Summit!
						-- #endif
						["qgs"] = {
							63778,	-- Messenger Grummle
						},
						["coords"] = {
							{ 70.0, 23.6, VALLEY_OF_THE_FOUR_WINDS },	-- Messenger Grummle
						},
						["races"] = ALLIANCE_ONLY,
					}),
					q(31255, {	-- The Road to Kun-Lai
						-- #if AFTER 7.3.5
						["sourceQuest"] = 49541,	-- Warchief's Command: Kun-Lai Summit!
						-- #endif
						["qg"] = 63778,	-- Messenger Grummle
						["coords"] = {
							{ 70.0, 23.6, VALLEY_OF_THE_FOUR_WINDS },
							{ 41.7, 29.9, KRASARANG_WILDS },
							-- TODO: Flew by the area before and it wasn't here. Possibly requires "Boom Goes the Doonamite!" ?
							{ 45.7, 43.8, THE_JADE_FOREST },
						},
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(85694),	-- A Missive from Lorewalker Cho (QI!)
						},
					}),
					q(38936, {	-- The Road to Kun-Lai (Adventure guide)
						["description"] = "This quest needs to be accepted from the 'Adventure Guide'.",
						["isBreadcrumb"] = true,
					}),
					q(30806, {	-- The Scent of Life
						["sourceQuest"] = 30794,	-- Emergency Care
						["qg"] = 60785,	-- Sage Liao
						["coord"] = { 60.6, 21.3, KUN_LAI_SUMMIT },
						["groups"] = {
							i(80907),	-- Opalescent Blue Crab Shell (QI!)
							i(81261),	-- Stolen Pandaren Spices (QI!)
						},
					}),
					q(30608, {	-- The Snackrifice
						["sourceQuest"] = 30605,	-- Bros Before Hozen
						["qg"] = 59894,	-- Brother Yakshoe
						["coord"] = { 50.5, 64.0, KUN_LAI_SUMMIT },
						["groups"] = {
							i(82532),	-- Waterfall Cord
							i(82533),	-- Mushan Hide Belt
							i(82534),	-- Dreaming SPirit Waistguard
							i(82535),	-- Serenity Clasp
							i(82536),	-- Mindbender Cord
							i(82537),	-- Silentleaf Belt
							i(82538),	-- Yak Herder Belt
							i(82539),	-- Summit Guardian Girdle
							i(82540),	-- Wallwatcher Girdle
						},
					}),
					q(31455, {	-- The Shado-Pan (A)
						["sourceQuests"] = {
							30651,	-- Barrels of Fun
							30650,	-- Pandaren Prisoners
							30660,	-- The Ordo Warbringer
							30662,	-- The Ordo Warbringer
						},
						["qg"] = 59441,	-- Admiral Taylor
						["coord"] = { 53.9, 83.4, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(31453, {	-- The Shado-Pan (H)
						["sourceQuests"] = {
							30656,	-- Barrels of Fun
							30655,	-- Pandaren Prisoners
							30661,	-- The Ordo Warbringer
							30663,	-- The Ordo Warbringer
						},
						["qg"] = 59442,	-- General Nazgrim
						["coord"] = { 62.4, 80.4, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30799, {	-- The Tomb of Shadows
						["sourceQuest"] = 30797,	-- It Was Almost Alive
						["qg"] = 61297,	-- Image of Lorewalker Cho
						["coord"] = { 57.1, 47.8, KUN_LAI_SUMMIT },
						["groups"] = {
							o(211770, {	-- Shen Dynasty Tablet
								i(82393),	-- Shen Dynasty Rubbbing (QI!)
							}),
							o(211794, {	-- Qiang Dynasty Tablet
								i(82394),	-- Qiang Dynasty Rubbbing (QI!)
							}),
							o(211793, {	-- Wai Dynasty Tablet
								i(82393),	-- Wai Dynasty Rubbbing (QI!)
							}),
							i(82564),	-- Spiritbinder Band
							i(82565),	-- Flamefury Ring
							i(82566),	-- Jade Inlaid Signet
							i(82567),	-- Blue Mountain Signet
							i(82568),	-- Band of the Unsealed Tomb
						},
					}),
					q(30829, {	-- The Tongue of Ba-Shon
						["sourceQuests"] = {
							30684,	-- Seeker's Folly
							31306,	-- Seeker's Folly
						},
						["qg"] = 60795,	-- Lorewalker Cho
						["coord"] = { 43.7, 51.0, KUN_LAI_SUMMIT },
					}),
					q(30496, {	-- The Waterspeaker's Staff
						["qg"] = 60973,	-- Waterspeaker Gorai
						["coord"] = { 75.1, 87.9, KUN_LAI_SUMMIT },
						["groups"] = {
							i(81385),	-- Stolen Inkgill Ritual Staff (QI!)
						},
					}),
					q(30621, {	-- They Stole My Luck!
						["sourceQuest"] = 30999,	-- Path Less Traveled
						["qg"] = 59716,	-- Ji-Lu the Lucky
						["coord"] = { 57.3, 60.1, KUN_LAI_SUMMIT },
						["groups"] = {
							i(80316),	-- Lucky Virmen's Foot (QI!)
							i(80317),	-- Lucky Yak Shoe (QI!)
							i(80318),	-- Lucky Four Winds Clover (QI!)
							i(80319),	-- Lucky "Gold" Coin (QI!)
						},
					}),
					q(30606, {	-- Thumping Knucklethump
						["sourceQuest"] = 30605,	-- Bros Before Hozen
						["qg"] = 59894,	-- Brother Yakshoe
						["coord"] = { 50.5, 64.0, KUN_LAI_SUMMIT },
						["groups"] = {
							i(88086),	-- Mushan Hide Vest
							i(88085),	-- Dreaming Spirit Vest
							i(88084),	-- Serenity Vest
							i(88083),	-- Silentleaf Vest
							i(88082),	-- Yak Herder Vest
							i(88081),	-- Summit Guardian Vest
							i(88080),	-- Wallwatcher Vest
						},
					}),
					q(30724, {	-- To the Wall!
						["sourceQuests"] = {
							30715,	-- A Line Unbroken
							30723,	-- Honor, Even in Death
						},
						["qg"] = 61816,	-- Lin Silentstrike
						["coord"] = { 34.9, 59.3, KUN_LAI_SUMMIT },
					}),
					q(30699, {	-- To Winter's Blossom
						["sourceQuest"] = 30690,	-- Unmasking the Yaungol
						["qg"] = 60161,	-- Shado-Master Chong
						["coord"] = { 44.4, 89.9, KUN_LAI_SUMMIT },
					}),
					q(30616, {	-- Traffic Issues
						["qg"] = 59597,	-- Smokey Sootassle
						["coord"] = { 64.8, 60.4, KUN_LAI_SUMMIT },
						["groups"] = {
							i(82571),	-- Burlap Loop
							i(82572),	-- Fire Camp Ring
							i(82570),	-- Grummle Bazaar Keepsake
							i(82569),	-- Luckydo Ring
							i(82573),	-- Sootassle Band
						},
					}),
					q(30826, {	-- Trouble Brewing
						["qg"] = 60677,	-- Uncle Tallmug
						["coord"] = { 40.3, 81.5, KUN_LAI_SUMMIT },
					}),
					q(30745, {	-- Trouble Brewing
						["qg"] = 60503,	-- Uncle Keenbean
						["coord"] = { 42.5, 69.4, KUN_LAI_SUMMIT },
						-- TODO: is this version available after turning in "A Fair Trade"? looks phase-related
					}),
					q(30569, {	-- Trouble on the Farmstead (A)
						["sourceQuest"] = 30514,	-- Challenge Accepted
						["qg"] = 63754,	-- Farmhand Bo
						["coord"] = { 53.7, 84.1, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30570, {	-- Trouble on the Farmstead (H)
						["sourceQuest"] = 30515,	-- Challenge Accepted
						["qg"] = 63751,	-- Farmhand Ko
						["coord"] = { 62.5, 79.4, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					q(30670, {	-- Turnabout
						["sourceQuest"] = 30457,	-- Call Out Their Leader
						["qg"] = 60161,	-- Shado-Master Chong
						["coord"] = { 44.4, 89.9, KUN_LAI_SUMMIT },
						["groups"] = {
							i(81713),	-- Blind Rage Essence (QI!)
						},
					}),
					q(30752, {	-- Unbelievable!
						["sourceQuest"] = 30993,	-- Where are My Reinforcements?
						["qg"] = 61819,	-- Ban Bearheart
						["coord"] = { 35.3, 49.5, KUN_LAI_SUMMIT },
						["groups"] = {
							i(82559),	-- Growthtender Locket
							i(82560),	-- Brewdrinker Amulet
							i(82561),	-- Bearheart Necklace
							i(82562),	-- Brewdrinker Pendant
							i(82563),	-- Bearheart Amulet
						},
					}),
					q(30611, {	-- Unleash The Yeti!
						["sourceQuests"] = {
							30607,	-- Hozen Love Their Keys
							30608,	-- The Snackrifice
							30606,	-- Thumping Knucklethump
						},
						["qg"] = 59452,	-- Brother Rabbitsfoot
						["coord"] = { 51.9, 67.2, KUN_LAI_SUMMIT },
					}),
					q(30690, {	-- Unmasking the Yaungol
						["sourceQuests"] = {
							30665,	-- The Defense of Shado-Pan Fallback
							30670,	-- Turnabout
						},
						["qg"] = 60161,	-- Shado-Master Chong
						["coord"] = { 44.4, 89.9, KUN_LAI_SUMMIT },
						["groups"] = {
							i(81741),	-- Blinding Rage Trap (QI!)
							i(88079),	-- Waterfall Cap
							i(88078),	-- Mushan Hide Cap
							i(88077),	-- Dreaming Spirit Cap
							i(88076),	-- Serenity Cap
							i(88075),	-- Mindbender Cap
							i(88074),	-- Silentleaf Cap
							i(88073),	-- Yak Herder Cap
							i(88072),	-- Summit Guardian Cap
							i(88071),	-- Wallwatcher Cap
						},
					}),
					warchiefscommand(q(49541, {	-- Warchief's Command: Kun-Lai Summit!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 82,
					})),
					q(30512, {	-- Westwind Rest
						["sourceQuests"] = {
							30506,	-- Admiral Taylor has Awakened
							30507,	-- Admiral Taylor has Awakened
							30508,	-- Admiral Taylor has Awakened
						},
						["qg"] = 59441,	-- Admiral Taylor
						["coord"] = { 71.5, 93.0, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30945, {	-- What's Yours Is Mine
						["sourceQuest"] = 30935,	-- Fisherman's Tale
						["qg"] = 61496,	-- Steelbender Doshu
						["coord"] = { 63.3, 30.6, KUN_LAI_SUMMIT },
						["groups"] = {
							i(82299),	-- Blood-Stained Blade (QI!)
						},
					}),
					q(30993, {	-- Where are My Reinforcements?
						["sourceQuest"] = 30992,	-- Finish This!
						["qg"] = 61819,	-- Ban Bearheart
						["coord"] = { 31.2, 61.5, KUN_LAI_SUMMIT },
					}),
					q(57072, {	-- Yak of All Trades
						["sourceQuest"] = 57071,	-- No Brew Left Behind
						["qg"] = 157180,	-- Abandoned Stormstout Kegs
						["coord"] = { 58.5, 83.9, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_8_3_0 },
						["lvl"] = 120,
					}),
					q(30587, {	-- Yakity Yak
						["sourceQuest"] = 30488,	-- The Missing Muskpaw
						["coord"] = { 70.0, 71.8, KUN_LAI_SUMMIT },
						["cr"] = 59718,	-- Burilgi Despoiler
					}),
				}),
				n(RARES, {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							50817,	-- Ahone the Wanderer
							50341,	-- Borginn Darkfist
							50354,	-- Havak
							50332,	-- Korda Torros
							50789,	-- Nessos the Oracle
							50831,	-- Scritch
							50733,	-- Ski'thik
							50769,	-- Zai the Outcast
						},
						["groups"] = {
							i(87620),	-- Bracers of the Frozen Summit
							i(87617),	-- Bracers of the Serene Mountaintop
							i(87613),	-- Frozen Zandalari Bracer
							i(87618),	-- Ice Encrusted Bracer
							i(87614),	-- Kafa Picker's Bracers
							i(87616),	-- Mountain Trailblazer's Cuffs
							i(87619),	-- Terracotta Guardian's Bracer
							i(87621),	-- Wristguards of Great Fortune
							i(87615),	-- Yakwasher's Bracers
							i(87217),	-- Small Bag of Goods
						},
					}),
					n(50817, {	-- Ahone the Wanderer
						["coord"] = { 40.8, 42.5, KUN_LAI_SUMMIT },
						["groups"] = {
							i(86588),	-- Pandaren Firework Launcher (TOY!)
						},
					}),
					n(50341, {	-- Borginn Darkfist
						["coord"] = { 55.7, 43.4, KUN_LAI_SUMMIT },
						["groups"] = {
							i(86570),	-- Crate of Kidnapped Puppies
						},
					}),
					n(50354, {	-- Havak
						["coords"] = {
							{ 59.3, 73.7, KUN_LAI_SUMMIT },
							{ 57.5, 74.7, KUN_LAI_SUMMIT },
							{ 57.0, 76.0, KUN_LAI_SUMMIT },
						},
						["groups"] = {
							i(86573),	-- Shard of Archstone (TOY!)
						},
					}),
					n(66933, {	-- Kishak <Son of Kril'mandar>
						["coords"] = {
							{ 45.60, 19.61, KUN_LAI_SUMMIT },
							{ 42.58, 22.98, KUN_LAI_SUMMIT },
							{ 54.32, 21.65, KUN_LAI_SUMMIT },
							{ 49.38, 18.54, KUN_LAI_SUMMIT },
						},
						["groups"] = {
							i(90168),	-- Kishak's Clamshell
						},
					}),
					n(50332, {	-- Korda Torros
						["coords"] = {
							{ 47.89, 81.24, KUN_LAI_SUMMIT },
							{ 49.23, 80.59, KUN_LAI_SUMMIT },
							{ 51.60, 80.80, KUN_LAI_SUMMIT },
							{ 51.23, 79.59, KUN_LAI_SUMMIT },
						},
						["groups"] = {
							i(86566),	-- Forager's Gloves
						},
					}),
					n(50789, {	-- Nessos the Oracle
						["coord"] = { 63.8, 13.7, KUN_LAI_SUMMIT },
						["groups"] = {
							i(86584),	-- Hardened Shell (TOY!)
						},
					}),
					n(50831, {	-- Scritch
						["coords"] = {
							{ 44.8, 65.2, KUN_LAI_SUMMIT },
							{ 44.8, 63.6, KUN_LAI_SUMMIT },
							{ 47.2, 63.0, KUN_LAI_SUMMIT },
							{ 46.2, 61.5, KUN_LAI_SUMMIT },
						},
						["groups"] = {
							i(86592),	-- Hozen Peace Pipe
						},
					}),
					n(50733, {	-- Ski'thik
						["coord"] = { 36.71, 79.76, KUN_LAI_SUMMIT },
						["groups"] = {
							i(86577),	-- Rod of Ambershaping
						},
					}),
					n(50769, {	-- Zai the Outcast
						["coords"] = {
							{ 73.35, 76.31, KUN_LAI_SUMMIT },
							{ 74.41, 79.34, KUN_LAI_SUMMIT },
							{ 73.86, 77.21, KUN_LAI_SUMMIT },
						},
						["groups"] = {
							i(86581),	-- Farwater Conch (TOY!)
						},
					}),
				}),
				n(TREASURES, {
					o(214438, {	-- Ancient Mogu Tablet
						["description"] = "Entrance is at |cFFFFD70063.94 49.84|r.",
						["questID"] = 31420,
						["coord"] = { 64.2, 45.2, KUN_LAI_SUMMIT },
						["groups"] = {
							i(86471),	-- Ancient Mogu Tablet
						},
					}),
					o(213769, {	-- Hozen Treasure Cache
						["questID"] = 31414,	-- Hozen Treasure Cache
						["coord"] = { 49.5, 59.4, KUN_LAI_SUMMIT },
					}),
					o(213768, {	-- Hozen Warrior Spear
						["description"] = "Cave entrance is at |cFFFFD70052.8 71.3|r, go down and to the section with water, it is in a rock. Might take some time to spawn.",
						["questID"] = 31413,
						["coords"] = {
							{ 52.8, 71.3, KUN_LAI_SUMMIT },	-- Cave entrance
							{ 23.9, 68.1, 384 },	-- The Deeper
						},
						["groups"] = {
							i(86394),	-- Hozen Warrior Spear
						},
					}),
					n(64227, {	-- Frozen Trail Packer
						["coords"] = {
							{ 37.4, 77.9, KUN_LAI_SUMMIT },	-- Cave entrance
							{ 35.2, 76.4, KUN_LAI_SUMMIT },
						},
						["questID"] = 31304,
						["groups"] = {
							i(86125),	-- Kafa Press
						},
					}),
					o(213774, {	-- Lost Adventurer's Belongings
						["questID"] = 31418,	-- Lost Adventurer's Belongings
						["coord"] = { 36.7, 79.8, KUN_LAI_SUMMIT },
					}),
					o(214407, {	-- Mo-Mo's Treasure Chest
						["coord"] = { 47.8, 73.5, KUN_LAI_SUMMIT },
						["description"] = "Inside Mo-Mo's Cave",
						["questID"] = 31868,
					}),
					o(213438, {	-- Ren Yun the Blind
						["coord"] = { 44.7, 52.5, KUN_LAI_SUMMIT },
					}),
					o(213793, {	-- Rikktik's Tiny Chest
						["questID"] = 31419,
						["coord"] = { 52.5, 51.5, KUN_LAI_SUMMIT },
						["groups"] = {
							i(86430),	-- Rikktik's Tiny Chest
						},
					}),
					o(215783, {	-- Role Call
						["coord"] = { 74.5, 83.5, KUN_LAI_SUMMIT },
					}),
					o(213751, {	-- Sprite's Cloth Chest
						["description"] = "Cave entrance is at 73.2, 73.6. This chest might be personal loot and obey rules based on your current Spec, NOT your Loot Spec.",
						["coord"] = { 74.6, 74.8, 381 },
						["modelScale"] = 1.5,
						["questID"] = 31412,
						["groups"] = {
							i(86223, {	-- Agile Sprite Cloak
								["description"] = "Recommended to be an Agility DPS Spec (Hunter/Rogue) to guarantee this item.",	-- verified 2021-10-21 Hunter(Surv)
							}),
							i(86222, {	-- Precise Sprite Cloak
								["description"] = "Recommended to be in an Intellect DPS Spec (Mage/Warlock) to guarantee this item.",	-- verified 2021-10-18 Mage(Frost)
							}),
							i(86225, {	-- Strong Sprite Cloak
								["description"] = "Recommended to be in a Strength DPS Spec to guarantee this item.",	-- verified 2021-10-22 DK(Unholy)
							}),
							i(86221, {	-- Wise Sprite Cloak
								["description"] = "Recommended to be in a Healer Spec to guarantee this item.",	-- verified ?? Shaman(Resto)
							}),
							i(86224, {	-- Steadfast Sprite Cape
								["description"] = "Recommended to be in a Strength Tank Spec to guarantee this item.",	-- verified 2021-10-18 Paladin(Prot)
							}),
						},
					}),
					o(213842, {	-- Stash of Yaungol Weapons
						["coords"] = {
							{ 70.1, 63.9, KUN_LAI_SUMMIT },
							{ 71.1, 62.6, KUN_LAI_SUMMIT },
						},
						["modelScale"] = 3.2,
						["questID"] = 31421,
						["groups"] = {
							i(88723),	-- Sturdy Yaungol Spear
						},
					}),
					o(213771, {	-- Statue of Xuen
						["questID"] = 31416,	-- Statue of Xuen
						["coord"] = { 72.0, 33.9, KUN_LAI_SUMMIT },
						["groups"] = {
							i(86422),	-- Statue of Xuen
						},
					}),
					o(213770, {	-- Stolen Sprite Treasure
						["description"] = "Entrance is at |cFFFFD70059.5 52.9|r.",
						["questID"] = 31415,	-- Stolen Sprite Treasure
						["coord"] = { 41.6, 44.1, 380 },	-- Howlingwind Cavern
					}),
					o(213765, {	-- Tablet of Ren Yun
						["coord"] = { 44.7, 52.5, KUN_LAI_SUMMIT },
						["questID"] = 31417,	-- FLAG - Tablet of Ren Yun
						["groups"] = {
							i(86393),	-- Tablet of Ren Yun (RECIPE!)
						},
					}),
					o(213782, {	-- Terracotta Head
						["questID"] = 31422,
						["coord"] = { 59.2, 73.0, KUN_LAI_SUMMIT },
						["groups"] = {
							i(86427),	-- Terracotta Head
						},
					}),
					o(213328, {	-- The Defiant
						["description"] = "At the north end of the circular room at the back of the cave.",
						["coords"] = {
							{ 73.2, 94.6, KUN_LAI_SUMMIT },	-- entrance
							{ 54.9, 16.9, 434 },	-- actual object
						},
					}),
					o(215797, {	-- The Emperor's Burden - Part 2
						["coord"] = { 43.8, 51.2, KUN_LAI_SUMMIT },
					}),
					o(213443, {	-- The Emperor's Burden - Part 6
						["coord"] = { 67.7, 48.3, KUN_LAI_SUMMIT },
					}),
					o(213455, {	-- The Emperor's Burden - Part 7
						["coord"] = { 40.9, 42.3, KUN_LAI_SUMMIT },
					}),
					o(211994, {	-- The Hozen Ravage
						["coord"] = { 45.7, 61.9, KUN_LAI_SUMMIT },
					}),
					o(213331, {	-- Valley of the Emperors (Kun-Lai Summit)
						["coord"] = { 53.0, 46.58, KUN_LAI_SUMMIT },
						["description"] = "The scroll is in the first big room."
					}),
					o(213511, {	-- Victory in Kun-Lai
						["coord"] = { 63.1, 40.8, KUN_LAI_SUMMIT },
					}),
					o(213417, {	-- Yaungol Tactics
						["coord"] = { 50.5, 79.3, KUN_LAI_SUMMIT },
					}),
					o(215798, {	-- Yaungoil
						["coord"] = { 71.7, 63.0, KUN_LAI_SUMMIT },
					}),
				}),
				n(VENDORS, {
					n(65515, {	-- Acon Deathwielder <Glorious Conquest Quartermaster>
						-- Wouter NOTE: Blizzard added these NPCs to the Gate of the Setting Sun because they couldn't figure out how to make phasing work at their original location
						-- #if ANYCLASSIC
						["coords"] = {
							{ 7.3, 52.4, VALE_OF_ETERNAL_BLOSSOMS },
						},
						-- #endif
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
						-- #if BEFORE WOD
						["OnUpdate"] = SEASON_MALEVOLENT_ONUPDATE,
						["sym"] = {
							{"sub", "pvp_gear_base", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_ELITE },
							{"merge"},	-- Subroutines are automatically finalized, so merge back for further processing
							{"pop"},	-- Discard the Set header and acquire the children.
						},
						-- #endif
					}),
					n(75695, {	-- Acon Deathwielder <Grievous Gladiator>
						["coord"] = { 35.4, 83.2, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_6_0_2 },
						["groups"] = {
							n(WEAPONS, {
								moh(80, iensemble(144251, {	-- Arsenal: Grievous Gladiator's Weapons (H)
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(102982)),	-- Grievous Gladiator's Barrier
								moh(5, i(102793)),	-- Grievous Gladiator's Baton of Light
								moh(5, i(102798)),	-- Grievous Gladiator's Battle Staff
								moh(5, i(102806)),	-- Grievous Gladiator's Bonecracker
								moh(5, i(102797)),	-- Grievous Gladiator's Cleaver
								moh(5, i(102807)),	-- Grievous Gladiator's Decapitator
								moh(2, i(102983)),	-- Grievous Gladiator's Endgame
								moh(5, i(102804)),	-- Grievous Gladiator's Energy Staff
								moh(5, i(102787)),	-- Grievous Gladiator's Gavel
								moh(5, i(102796)),	-- Grievous Gladiator's Greatsword
								moh(5, i(102801)),	-- Grievous Gladiator's Hacker
								moh(5, i(102788)),	-- Grievous Gladiator's Longbow
								moh(5, i(102795)),	-- Grievous Gladiator's Mageblade
								moh(5, i(102803)),	-- Grievous Gladiator's Pike
								moh(5, i(102789)),	-- Grievous Gladiator's Pummeler
								moh(5, i(102809)),	-- Grievous Gladiator's Quickblade
								moh(2, i(102979)),	-- Grievous Gladiator's Redoubt
								moh(5, i(102805)),	-- Grievous Gladiator's Render
								moh(2, i(102980)),	-- Grievous Gladiator's Reprieve
								moh(2, i(102794)),	-- Grievous Gladiator's Rifle
								moh(5, i(102800)),	-- Grievous Gladiator's Ripper
								moh(5, i(102799)),	-- Grievous Gladiator's Shanker
								moh(2, i(102981)),	-- Grievous Gladiator's Shield Wall
								moh(5, i(102802)),	-- Grievous Gladiator's Slicer
								moh(5, i(102791)),	-- Grievous Gladiator's Spellblade
								moh(5, i(102790)),	-- Grievous Gladiator's Touch of Defeat
							}),
							cl(DEATHKNIGHT, {
								moh(12, iensemble(138662, {	-- Ensemble: Grievous Gladiator's Dreadplate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(102873)),	-- Grievous Gladiator's Dreadplate Chestpiece
								moh(2, i(102847)),	-- Grievous Gladiator's Dreadplate Gauntlets
								moh(3, i(102910)),	-- Grievous Gladiator's Dreadplate Helm
								moh(3, i(102848)),	-- Grievous Gladiator's Dreadplate Legguards
								moh(2, i(102849)),	-- Grievous Gladiator's Dreadplate Shoulders
							}),
							cl(DRUID, {
								moh(12, iensemble(138670, {	-- Ensemble: Grievous Gladiator's Dragonhide Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(102936)),	-- Grievous Gladiator's Dragonhide Gloves
								moh(3, i(102850)),	-- Grievous Gladiator's Dragonhide Helm
								moh(3, i(102851)),	-- Grievous Gladiator's Dragonhide Legguards
								moh(3, i(102937)),	-- Grievous Gladiator's Dragonhide Robes
								moh(2, i(102938)),	-- Grievous Gladiator's Dragonhide Spaulders
								moh(2, i(102854)),	-- Grievous Gladiator's Kodohide Gloves
								moh(3, i(102973)),	-- Grievous Gladiator's Kodohide Helm
								moh(3, i(102958)),	-- Grievous Gladiator's Kodohide Legguards
								moh(3, i(102918)),	-- Grievous Gladiator's Kodohide Robes
								moh(2, i(102855)),	-- Grievous Gladiator's Kodohide Spaulders
								moh(2, i(102893)),	-- Grievous Gladiator's Wyrmhide Gloves
								moh(3, i(102831)),	-- Grievous Gladiator's Wyrmhide Helm
								moh(3, i(102964)),	-- Grievous Gladiator's Wyrmhide Legguards
								moh(3, i(102811)),	-- Grievous Gladiator's Wyrmhide Robes
								moh(2, i(102897)),	-- Grievous Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								moh(12, iensemble(138668, {	-- Ensemble: Grievous Gladiator's Chain Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(102886)),	-- Grievous Gladiator's Chain Armor
								moh(2, i(102934)),	-- Grievous Gladiator's Chain Gauntlets
								moh(3, i(102887)),	-- Grievous Gladiator's Chain Helm
								moh(3, i(102867)),	-- Grievous Gladiator's Chain Leggings
								moh(2, i(102931)),	-- Grievous Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								moh(12, iensemble(138676, {	-- Ensemble: Grievous Gladiator's Silk Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(102870)),	-- Grievous Gladiator's Silk Amice
								moh(3, i(102864)),	-- Grievous Gladiator's Silk Cowl
								moh(2, i(102932)),	-- Grievous Gladiator's Silk Handguards
								moh(3, i(102912)),	-- Grievous Gladiator's Silk Robe
								moh(3, i(102845)),	-- Grievous Gladiator's Silk Trousers
							}),
							cl(MONK, {
								moh(12, iensemble(138672, {	-- Ensemble: Grievous Gladiator's Ironskin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(102824)),	-- Grievous Gladiator's Copperskin Gloves
								moh(3, i(102825)),	-- Grievous Gladiator's Copperskin Helm
								moh(3, i(102959)),	-- Grievous Gladiator's Copperskin Legguards
								moh(2, i(102974)),	-- Grievous Gladiator's Copperskin Spaulders
								moh(3, i(102960)),	-- Grievous Gladiator's Copperskin Tunic
								moh(2, i(102872)),	-- Grievous Gladiator's Ironskin Gloves
								moh(3, i(102909)),	-- Grievous Gladiator's Ironskin Helm
								moh(3, i(102853)),	-- Grievous Gladiator's Ironskin Legguards
								moh(2, i(102823)),	-- Grievous Gladiator's Ironskin Spaulders
								moh(3, i(102917)),	-- Grievous Gladiator's Ironskin Tunic
							}),
							cl(PALADIN, {
								moh(12, iensemble(138664, {	-- Ensemble: Grievous Gladiator's Scaled Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(102829)),	-- Grievous Gladiator's Ornamented Chestguard
								moh(2, i(102919)),	-- Grievous Gladiator's Ornamented Gloves
								moh(3, i(102832)),	-- Grievous Gladiator's Ornamented Headcover
								moh(3, i(102965)),	-- Grievous Gladiator's Ornamented Legplates
								moh(2, i(102894)),	-- Grievous Gladiator's Ornamented Spaulders
								moh(3, i(102944)),	-- Grievous Gladiator's Scaled Chestpiece
								moh(2, i(102827)),	-- Grievous Gladiator's Scaled Gauntlets
								moh(3, i(102976)),	-- Grievous Gladiator's Scaled Helm
								moh(3, i(102977)),	-- Grievous Gladiator's Scaled Legguards
								moh(2, i(102941)),	-- Grievous Gladiator's Scaled Shoulders
							}),
							cl(PRIEST, {
								moh(12, iensemble(138678, {	-- Ensemble: Grievous Gladiator's Satin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(102812)),	-- Grievous Gladiator's Mooncloth Gloves
								moh(3, i(102900)),	-- Grievous Gladiator's Mooncloth Helm
								moh(3, i(102901)),	-- Grievous Gladiator's Mooncloth Leggings
								moh(2, i(102947)),	-- Grievous Gladiator's Mooncloth Mantle
								moh(3, i(102878)),	-- Grievous Gladiator's Mooncloth Robe
								moh(2, i(102904)),	-- Grievous Gladiator's Satin Gloves
								moh(3, i(102948)),	-- Grievous Gladiator's Satin Hood
								moh(3, i(102818)),	-- Grievous Gladiator's Satin Leggings
								moh(2, i(102868)),	-- Grievous Gladiator's Satin Mantle
								moh(3, i(102819)),	-- Grievous Gladiator's Satin Robe
							}),
							cl(ROGUE, {
								moh(12, iensemble(138674, {	-- Ensemble: Grievous Gladiator's Leather Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(102860)),	-- Grievous Gladiator's Leather Gloves
								moh(3, i(102907)),	-- Grievous Gladiator's Leather Helm
								moh(3, i(102927)),	-- Grievous Gladiator's Leather Legguards
								moh(2, i(102928)),	-- Grievous Gladiator's Leather Spaulders
								moh(3, i(102924)),	-- Grievous Gladiator's Leather Tunic
							}),
							cl(SHAMAN, {
								moh(12, iensemble(138666, {	-- Ensemble: Grievous Gladiator's Ringmail Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(102956)),	-- Grievous Gladiator's Linked Armor
								moh(2, i(102939)),	-- Grievous Gladiator's Linked Gauntlets
								moh(3, i(102911)),	-- Grievous Gladiator's Linked Helm
								moh(3, i(102975)),	-- Grievous Gladiator's Linked Leggings
								moh(2, i(102826)),	-- Grievous Gladiator's Linked Spaulders
								moh(3, i(102940)),	-- Grievous Gladiator's Mail Armor
								moh(2, i(102889)),	-- Grievous Gladiator's Mail Gauntlets
								moh(3, i(102890)),	-- Grievous Gladiator's Mail Helm
								moh(3, i(102978)),	-- Grievous Gladiator's Mail Leggings
								moh(2, i(102834)),	-- Grievous Gladiator's Mail Spaulders
								moh(3, i(102914)),	-- Grievous Gladiator's Ringmail Armor
								moh(2, i(102971)),	-- Grievous Gladiator's Ringmail Gauntlets
								moh(3, i(102915)),	-- Grievous Gladiator's Ringmail Helm
								moh(3, i(102916)),	-- Grievous Gladiator's Ringmail Leggings
								moh(2, i(102852)),	-- Grievous Gladiator's Ringmail Spaulders
							}),
							cl(WARLOCK, {
								moh(12, iensemble(143826, {	-- Ensemble: Grievous Gladiator's Felweave Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(102879)),	-- Grievous Gladiator's Felweave Amice
								moh(3, i(102923)),	-- Grievous Gladiator's Felweave Cowl
								moh(2, i(102922)),	-- Grievous Gladiator's Felweave Handguards
								moh(3, i(102858)),	-- Grievous Gladiator's Felweave Raiment
								moh(3, i(102952)),	-- Grievous Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								moh(12, iensemble(138660, {	-- Ensemble: Grievous Gladiator's Plate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(102925)),	-- Grievous Gladiator's Plate Chestpiece
								moh(2, i(102815)),	-- Grievous Gladiator's Plate Gauntlets
								moh(3, i(102816)),	-- Grievous Gladiator's Plate Helm
								moh(3, i(102929)),	-- Grievous Gladiator's Plate Legguards
								moh(2, i(102882)),	-- Grievous Gladiator's Plate Shoulders
							}),
							n(BACK, {
								moh(1, i(102902)),	-- Grievous Gladiator's Cape of Cruelty
								moh(1, i(102839)),	-- Grievous Gladiator's Cape of Prowess
								moh(1, i(102966)),	-- Grievous Gladiator's Cloak of Alacrity
								moh(1, i(102967)),	-- Grievous Gladiator's Cloak of Prowess
								moh(1, i(102866)),	-- Grievous Gladiator's Drape of Cruelty
								moh(1, i(102953)),	-- Grievous Gladiator's Drape of Meditation
								moh(1, i(102969)),	-- Grievous Gladiator's Drape of Prowess
							}),
							n(WRIST, {
								moh(1, i(102821)),	-- Grievous Gladiator's Armbands of Meditation
								moh(1, i(102862)),	-- Grievous Gladiator's Armbands of Prowess
								moh(1, i(102968)),	-- Grievous Gladiator's Armplates of Alacrity
								moh(1, i(102899)),	-- Grievous Gladiator's Armplates of Proficiency
								moh(1, i(102908)),	-- Grievous Gladiator's Armwraps of Accuracy
								moh(1, i(102951)),	-- Grievous Gladiator's Armwraps of Alacrity
								moh(1, i(102888)),	-- Grievous Gladiator's Bindings of Meditation
								moh(1, i(102920)),	-- Grievous Gladiator's Bindings of Prowess
								moh(1, i(102962)),	-- Grievous Gladiator's Bracers of Meditation
								moh(1, i(102892)),	-- Grievous Gladiator's Bracers of Prowess
								moh(1, i(102884)),	-- Grievous Gladiator's Cuffs of Accuracy
								moh(1, i(102863)),	-- Grievous Gladiator's Cuffs of Meditation
								moh(1, i(102930)),	-- Grievous Gladiator's Cuffs of Prowess
								moh(1, i(102950)),	-- Grievous Gladiator's Wristguards of Accuracy
								moh(1, i(102885)),	-- Grievous Gladiator's Wristguards of Alacrity
							}),
							n(WAIST, {
								moh(1, i(102891)),	-- Grievous Gladiator's Belt of Cruelty
								moh(1, i(102972)),	-- Grievous Gladiator's Belt of Meditation
								moh(1, i(102961)),	-- Grievous Gladiator's Clasp of Cruelty
								moh(1, i(102945)),	-- Grievous Gladiator's Clasp of Meditation
								moh(1, i(102859)),	-- Grievous Gladiator's Cord of Accuracy
								moh(1, i(102881)),	-- Grievous Gladiator's Cord of Cruelty
								moh(1, i(102906)),	-- Grievous Gladiator's Cord of Meditation
								moh(1, i(102837)),	-- Grievous Gladiator's Girdle of Accuracy
								moh(1, i(102921)),	-- Grievous Gladiator's Girdle of Prowess
								moh(1, i(102842)),	-- Grievous Gladiator's Links of Accuracy
								moh(1, i(102814)),	-- Grievous Gladiator's Links of Cruelty
								moh(1, i(102905)),	-- Grievous Gladiator's Waistband of Accuracy
								moh(1, i(102844)),	-- Grievous Gladiator's Waistband of Cruelty
								moh(1, i(102874)),	-- Grievous Gladiator's Waistguard of Cruelty
								moh(1, i(102865)),	-- Grievous Gladiator's Waistguard of Meditation
							}),
							n(FEET, {
								moh(2, i(102913)),	-- Grievous Gladiator's Boots of Alacrity
								moh(2, i(102857)),	-- Grievous Gladiator's Boots of Cruelty
								moh(2, i(102828)),	-- Grievous Gladiator's Footguards of Alacrity (Leahter)
								moh(2, i(102861)),	-- Grievous Gladiator's Footguards of Alacrity (Mail)
								moh(2, i(102957)),	-- Grievous Gladiator's Footguards of Meditation (Leather)
								moh(2, i(102820)),	-- Grievous Gladiator's Footguards of Meditation (Mail)
								moh(2, i(102835)),	-- Grievous Gladiator's Greaves of Alacrity
								moh(2, i(102836)),	-- Grievous Gladiator's Greaves of Meditation
								moh(2, i(102843)),	-- Grievous Gladiator's Sabatons of Alacrity
								moh(2, i(102926)),	-- Grievous Gladiator's Sabatons of Cruelty
								moh(2, i(102817)),	-- Grievous Gladiator's Treads of Alacrity
								moh(2, i(102883)),	-- Grievous Gladiator's Treads of Cruelty
								moh(2, i(102949)),	-- Grievous Gladiator's Treads of Meditation
								moh(2, i(102942)),	-- Grievous Gladiator's Warboots of Alacrity
								moh(2, i(102895)),	-- Grievous Gladiator's Warboots of Cruelty
							}),
						},
					}),
					n(73145, {	-- Acon Deathwielder (5.4.7 Elite and removed Version)	-- Link for all the Items https://www.wowhead.com/npc=73145/acon-deathwielder#comments
						["races"] = HORDE_ONLY,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = {
						},
					}),
					n(59698, {	-- Brother Furtrim
						["coord"] = { 57.2, 61.0, KUN_LAI_SUMMIT },
						["groups"] = {
							i(264349, {	-- Kun-Lai Lacquered Rickshaw (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 10000000,	-- 1,000g
							}),
						},
					}),
					n(75693, {	-- Doris Chiltonius Season 12: Malevolent Gladiator Vendor. Items are tagged as S13
						["coord"] = { 35.4, 83.2, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_6_0_2 },
						["groups"] = {
							n(WEAPONS, {
								moh(80, iensemble(144243, {	-- Arsenal: Malevolent Gladiator's Weapons
									["timeline"] = { ADDED_7_1_5 },
								})),
								-- S12 Tag
								un(REMOVED_FROM_GAME, i(84911)),	-- Malevolent Gladiator's Barrier
								un(REMOVED_FROM_GAME, i(84787)),	-- Malevolent Gladiator's Battle Staff
								un(REMOVED_FROM_GAME, i(84970)),	-- Malevolent Gladiator's Bonecracker
								un(REMOVED_FROM_GAME, i(84785)),	-- Malevolent Gladiator's Bonegrinder
								un(REMOVED_FROM_GAME, i(84965)),	-- Malevolent Gladiator's Cleaver
								un(REMOVED_FROM_GAME, i(84791)),	-- Malevolent Gladiator's Decapitator
								un(REMOVED_FROM_GAME, i(84866)),	-- Malevolent Gladiator's Endgame
								un(REMOVED_FROM_GAME, i(84788)),	-- Malevolent Gladiator's Energy Staff
								un(REMOVED_FROM_GAME, i(84971)),	-- Malevolent Gladiator's Gavel
								un(REMOVED_FROM_GAME, i(84790)),	-- Malevolent Gladiator's Greatsword
								un(REMOVED_FROM_GAME, i(84966)),	-- Malevolent Gladiator's Hacker
								un(REMOVED_FROM_GAME, i(84896)),	-- Malevolent Gladiator's Longbow
								un(REMOVED_FROM_GAME, i(84786)),	-- Malevolent Gladiator's Pike
								un(REMOVED_FROM_GAME, i(84964)),	-- Malevolent Gladiator's Pummeler
								un(REMOVED_FROM_GAME, i(84969)),	-- Malevolent Gladiator's Quickblade
								un(REMOVED_FROM_GAME, i(84912)),	-- Malevolent Gladiator's Redoubt
								un(REMOVED_FROM_GAME, i(84963)),	-- Malevolent Gladiator's Render
								un(REMOVED_FROM_GAME, i(84867)),	-- Malevolent Gladiator's Reprieve
								un(REMOVED_FROM_GAME, i(84900)),	-- Malevolent Gladiator's Rifle
								un(REMOVED_FROM_GAME, i(84962)),	-- Malevolent Gladiator's Ripper
								un(REMOVED_FROM_GAME, i(84967)),	-- Malevolent Gladiator's Shanker
								un(REMOVED_FROM_GAME, i(84910)),	-- Malevolent Gladiator's Shield Wall
								un(REMOVED_FROM_GAME, i(84894)),	-- Malevolent Gladiator's Slasher
								un(REMOVED_FROM_GAME, i(84968)),	-- Malevolent Gladiator's Slicer
								un(REMOVED_FROM_GAME, i(84961)),	-- Malevolent Gladiator's Spellblade
								un(REMOVED_FROM_GAME, i(84789)),	-- Malevolent Gladiator's Staff
								-- S13 Tag
								moh(2, i(91482)),	-- Malevolent Gladiator's Barrier
								moh(5, i(91486)),	-- Malevolent Gladiator's Battle Staff
								moh(5, i(91759)),	-- Malevolent Gladiator's Bonecracker
								moh(5, i(91442)),	-- Malevolent Gladiator's Bonegrinder
								moh(5, i(91442)),	-- Malevolent Gladiator's Bonegrinder
								moh(5, i(91446)),	-- Malevolent Gladiator's Cleaver
								moh(5, i(91440)),	-- Malevolent Gladiator's Decapitator
								moh(2, i(91480)),	-- Malevolent Gladiator's Endgame
								moh(5, i(91560)),	-- Malevolent Gladiator's Energy Staff
								moh(5, i(91556)),	-- Malevolent Gladiator's Gavel
								moh(5, i(91444)),	-- Malevolent Gladiator's Greatsword
								moh(5, i(91757)),	-- Malevolent Gladiator's Hacker
								moh(5, i(91460)),	-- Malevolent Gladiator's Longbow
								moh(5, i(91660)),	-- Malevolent Gladiator's Pike
								moh(5, i(91448)),	-- Malevolent Gladiator's Pummeler
								moh(5, i(91450)),	-- Malevolent Gladiator's Quickblade
								moh(2, i(91558)),	-- Malevolent Gladiator's Redoubt
								moh(5, i(91749)),	-- Malevolent Gladiator's Render
								moh(2, i(91494)),	-- Malevolent Gladiator's Reprieve
								moh(5, i(91554)),	-- Malevolent Gladiator's Rifle
								moh(5, i(91745)),	-- Malevolent Gladiator's Ripper
								moh(5, i(91743)),	-- Malevolent Gladiator's Shanker
								moh(2, i(91771)),	-- Malevolent Gladiator's Shield Wall
								moh(5, i(91761)),	-- Malevolent Gladiator's Slicer
								moh(5, i(91484)),	-- Malevolent Gladiator's Spellblade
								moh(5, i(91535)),	-- Malevolent Gladiator's Staff
							}),
							cl(DEATHKNIGHT, {
								moh(12, iensemble(138704, {	-- Ensemble: Malevolent Gladiator's Dreadplate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84795),	-- Malevolent Gladiator's Dreadplate Chestpiece
								i(84835),	-- Malevolent Gladiator's Dreadplate Gauntlets
								i(84853),	-- Malevolent Gladiator's Dreadplate Helm
								i(84872),	-- Malevolent Gladiator's Dreadplate Legguards
								i(84918),	-- Malevolent Gladiator's Dreadplate Shoulders
								moh(3, i(91500)),	-- Malevolent Gladiator's Dreadplate Chestpiece
								moh(2, i(91502)),	-- Malevolent Gladiator's Dreadplate Gauntlets
								moh(3, i(91504)),	-- Malevolent Gladiator's Dreadplate Helm
								moh(3, i(91506)),	-- Malevolent Gladiator's Dreadplate Legguards
								moh(2, i(91508)),	-- Malevolent Gladiator's Dreadplate Shoulders
							}),
							cl(DRUID, {
								moh(12, iensemble(138708, {	-- Ensemble: Malevolent Gladiator's Dragonhide Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84832),	-- Malevolent Gladiator's Dragonhide Gloves
								i(84852),	-- Malevolent Gladiator's Dragonhide Helm
								i(84871),	-- Malevolent Gladiator's Dragonhide Legguards
								i(84901),	-- Malevolent Gladiator's Dragonhide Robes
								i(84916),	-- Malevolent Gladiator's Dragonhide Spaulders
								i(84833),	-- Malevolent Gladiator's Kodohide Gloves
								i(84850),	-- Malevolent Gladiator's Kodohide Helm
								i(84882),	-- Malevolent Gladiator's Kodohide Legguards
								i(84907),	-- Malevolent Gladiator's Kodohide Robes
								i(84927),	-- Malevolent Gladiator's Kodohide Spaulders
								i(84843),	-- Malevolent Gladiator's Wyrmhide Gloves
								i(84861),	-- Malevolent Gladiator's Wyrmhide Helm
								i(84880),	-- Malevolent Gladiator's Wyrmhide Legguards
								i(84906),	-- Malevolent Gladiator's Wyrmhide Robes
								i(84925),	-- Malevolent Gladiator's Wyrmhide Spaulders
								moh(2, i(91510)),	-- Malevolent Gladiator's Dragonhide Gloves
								moh(3, i(91512)),	-- Malevolent Gladiator's Dragonhide Helm
								moh(3, i(91514)),	-- Malevolent Gladiator's Dragonhide Legguards
								moh(3, i(91516)),	-- Malevolent Gladiator's Dragonhide Robes
								moh(2, i(91518)),	-- Malevolent Gladiator's Dragonhide Spaulders
								moh(2, i(91525)),	-- Malevolent Gladiator's Kodohide Gloves
								moh(3, i(91527)),	-- Malevolent Gladiator's Kodohide Helm
								moh(3, i(91529)),	-- Malevolent Gladiator's Kodohide Legguards
								moh(3, i(91531)),	-- Malevolent Gladiator's Kodohide Robes
								moh(2, i(91533)),	-- Malevolent Gladiator's Kodohide Spaulders
								moh(2, i(91542)),	-- Malevolent Gladiator's Wyrmhide Gloves
								moh(3, i(91544)),	-- Malevolent Gladiator's Wyrmhide Helm
								moh(3, i(91546)),	-- Malevolent Gladiator's Wyrmhide Legguards
								moh(3, i(91548)),	-- Malevolent Gladiator's Wyrmhide Robes
								moh(2, i(91550)),	-- Malevolent Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								moh(12, iensemble(138707, {	-- Ensemble: Malevolent Gladiator's Chain Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84796),	-- Malevolent Gladiator's Chain Armor
								i(84841),	-- Malevolent Gladiator's Chain Gauntlets
								i(84858),	-- Malevolent Gladiator's Chain Helm
								i(84874),	-- Malevolent Gladiator's Chain Leggings
								i(84921),	-- Malevolent Gladiator's Chain Spaulders
								moh(3, i(91575)),	-- Malevolent Gladiator's Chain Armor
								moh(2, i(91577)),	-- Malevolent Gladiator's Chain Gauntlets
								moh(3, i(91579)),	-- Malevolent Gladiator's Chain Helm
								moh(3, i(91581)),	-- Malevolent Gladiator's Chain Leggings
								moh(2, i(91583)),	-- Malevolent Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								moh(12, iensemble(138711, {	-- Ensemble: Malevolent Gladiator's Silk Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84917),	-- Malevolent Gladiator's Silk Amice
								i(84855),	-- Malevolent Gladiator's Silk Cowl
								i(84837),	-- Malevolent Gladiator's Silk Handguards
								i(84904),	-- Malevolent Gladiator's Silk Robe
								i(84875),	-- Malevolent Gladiator's Silk Trousers
								moh(2, i(91593)),	-- Malevolent Gladiator's Silk Amice
								moh(3, i(91587)),	-- Malevolent Gladiator's Silk Cowl
								moh(2, i(91585)),	-- Malevolent Gladiator's Silk Handguards
								moh(3, i(91591)),	-- Malevolent Gladiator's Silk Robe
								moh(3, i(91589)),	-- Malevolent Gladiator's Silk Trousers
							}),
							cl(MONK, {
								moh(12, iensemble(138709, {	-- Ensemble: Malevolent Gladiator's Ironskin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84836),	-- Malevolent Gladiator's Copperskin Gloves
								i(84854),	-- Malevolent Gladiator's Copperskin Helm
								i(84873),	-- Malevolent Gladiator's Copperskin Legguards
								i(84920),	-- Malevolent Gladiator's Copperskin Spaulders
								i(84903),	-- Malevolent Gladiator's Copperskin Tunic
								i(84839),	-- Malevolent Gladiator's Ironskin Gloves
								i(84857),	-- Malevolent Gladiator's Ironskin Helm
								i(84877),	-- Malevolent Gladiator's Ironskin Legguards
								i(84919),	-- Malevolent Gladiator's Ironskin Spaulders
								i(84902),	-- Malevolent Gladiator's Ironskin Tunic
								moh(2, i(91610)),	-- Malevolent Gladiator's Copperskin Gloves
								moh(3, i(91612)),	-- Malevolent Gladiator's Copperskin Helm
								moh(3, i(91614)),	-- Malevolent Gladiator's Copperskin Legguards
								moh(2, i(91616)),	-- Malevolent Gladiator's Copperskin Spaulders
								moh(3, i(91618)),	-- Malevolent Gladiator's Copperskin Tunic
								moh(2, i(91600)),	-- Malevolent Gladiator's Ironskin Gloves
								moh(3, i(91602)),	-- Malevolent Gladiator's Ironskin Helm
								moh(3, i(91604)),	-- Malevolent Gladiator's Ironskin Legguards
								moh(2, i(91606)),	-- Malevolent Gladiator's Ironskin Spaulders
								moh(3, i(91608)),	-- Malevolent Gladiator's Ironskin Tunic
							}),
							cl(PALADIN, {
								moh(12, iensemble(138705, {	-- Ensemble: Malevolent Gladiator's Scaled Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84793),	-- Malevolent Gladiator's Ornamented Chestguard
								i(84831),	-- Malevolent Gladiator's Ornamented Gloves
								i(84849),	-- Malevolent Gladiator's Ornamented Headcover
								i(84869),	-- Malevolent Gladiator's Ornamented Legplates
								i(84914),	-- Malevolent Gladiator's Ornamented Spaulders
								i(84794),	-- Malevolent Gladiator's Scaled Chestpiece
								i(84834),	-- Malevolent Gladiator's Scaled Gauntlets
								i(84851),	-- Malevolent Gladiator's Scaled Helm
								i(84870),	-- Malevolent Gladiator's Scaled Legguards
								i(84915),	-- Malevolent Gladiator's Scaled Shoulders
								moh(3, i(91640)),	-- Malevolent Gladiator's Ornamented Chestguard
								moh(2, i(91642)),	-- Malevolent Gladiator's Ornamented Gloves
								moh(3, i(91644)),	-- Malevolent Gladiator's Ornamented Headcover
								moh(3, i(91646)),	-- Malevolent Gladiator's Ornamented Legplates
								moh(2, i(91648)),	-- Malevolent Gladiator's Ornamented Spaulders
								moh(3, i(91620)),	-- Malevolent Gladiator's Scaled Chestpiece
								moh(2, i(91622)),	-- Malevolent Gladiator's Scaled Gauntlets
								moh(3, i(91624)),	-- Malevolent Gladiator's Scaled Helm
								moh(3, i(91626)),	-- Malevolent Gladiator's Scaled Legguards
								moh(2, i(91628)),	-- Malevolent Gladiator's Scaled Shoulders
							}),
							cl(PRIEST, {
								moh(12, iensemble(138712, {	-- Ensemble: Malevolent Gladiator's Satin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84846),	-- Malevolent Gladiator's Mooncloth Gloves
								i(84863),	-- Malevolent Gladiator's Mooncloth Helm
								i(84883),	-- Malevolent Gladiator's Mooncloth Leggings
								i(84928),	-- Malevolent Gladiator's Mooncloth Mantle
								i(84908),	-- Malevolent Gladiator's Mooncloth Robe
								i(84838),	-- Malevolent Gladiator's Satin Gloves
								i(84864),	-- Malevolent Gladiator's Satin Hood
								i(84884),	-- Malevolent Gladiator's Satin Leggings
								i(84929),	-- Malevolent Gladiator's Satin Mantle
								i(84909),	-- Malevolent Gladiator's Satin Robe
								moh(2, i(91662)),	-- Malevolent Gladiator's Mooncloth Gloves
								moh(3, i(91664)),	-- Malevolent Gladiator's Mooncloth Helm
								moh(3, i(91666)),	-- Malevolent Gladiator's Mooncloth Leggings
								moh(2, i(91670)),	-- Malevolent Gladiator's Mooncloth Mantle
								moh(3, i(91668)),	-- Malevolent Gladiator's Mooncloth Robe
								moh(2, i(91672)),	-- Malevolent Gladiator's Satin Gloves
								moh(3, i(91674)),	-- Malevolent Gladiator's Satin Hood
								moh(3, i(91676)),	-- Malevolent Gladiator's Satin Leggings
								moh(2, i(91680)),	-- Malevolent Gladiator's Satin Mantle
								moh(3, i(91678)),	-- Malevolent Gladiator's Satin Robe
							}),
							cl(ROGUE, {
								moh(12, iensemble(138710, {	-- Ensemble: Malevolent Gladiator's Leather Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84830),	-- Malevolent Gladiator's Leather Gloves
								i(84848),	-- Malevolent Gladiator's Leather Helm
								i(84868),	-- Malevolent Gladiator's Leather Legguards
								i(84913),	-- Malevolent Gladiator's Leather Spaulders
								i(84792),	-- Malevolent Gladiator's Leather Tunic
								moh(2, i(91695)),	-- Malevolent Gladiator's Leather Gloves
								moh(3, i(91697)),	-- Malevolent Gladiator's Leather Helm
								moh(3, i(91699)),	-- Malevolent Gladiator's Leather Legguards
								moh(2, i(91701)),	-- Malevolent Gladiator's Leather Spaulders
								moh(3, i(91693)),	-- Malevolent Gladiator's Leather Tunic
							}),
							cl(SHAMAN, {
								moh(12, iensemble(138706, {	-- Ensemble: Malevolent Gladiator's Ringmail Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84799),	-- Malevolent Gladiator's Linked Armor
								i(84844),	-- Malevolent Gladiator's Linked Gauntlets
								i(84862),	-- Malevolent Gladiator's Linked Helm
								i(84881),	-- Malevolent Gladiator's Linked Leggings
								i(84926),	-- Malevolent Gladiator's Linked Spaulders
								i(84798),	-- Malevolent Gladiator's Mail Armor
								i(84845),	-- Malevolent Gladiator's Mail Gauntlets
								i(84860),	-- Malevolent Gladiator's Mail Helm
								i(84879),	-- Malevolent Gladiator's Mail Leggings
								i(84924),	-- Malevolent Gladiator's Mail Spaulders
								i(84800),	-- Malevolent Gladiator's Ringmail Armor
								i(84847),	-- Malevolent Gladiator's Ringmail Gauntlets
								i(84865),	-- Malevolent Gladiator's Ringmail Helm
								i(84885),	-- Malevolent Gladiator's Ringmail Leggings
								i(84930),	-- Malevolent Gladiator's Ringmail Spaulders
								moh(3, i(91721)),	-- Malevolent Gladiator's Linked Armor
								moh(2, i(91723)),	-- Malevolent Gladiator's Linked Gauntlets
								moh(3, i(91725)),	-- Malevolent Gladiator's Linked Helm
								moh(3, i(91727)),	-- Malevolent Gladiator's Linked Leggings
								moh(2, i(91729)),	-- Malevolent Gladiator's Linked Spaulders
								moh(3, i(91733)),	-- Malevolent Gladiator's Mail Armor
								moh(2, i(91735)),	-- Malevolent Gladiator's Mail Gauntlets
								moh(3, i(91737)),	-- Malevolent Gladiator's Mail Helm
								moh(3, i(91739)),	-- Malevolent Gladiator's Mail Leggings
								moh(2, i(91741)),	-- Malevolent Gladiator's Mail Spaulders
								moh(3, i(91711)),	-- Malevolent Gladiator's Ringmail Armor
								moh(2, i(91713)),	-- Malevolent Gladiator's Ringmail Gauntlets
								moh(3, i(91715)),	-- Malevolent Gladiator's Ringmail Helm
								moh(3, i(91717)),	-- Malevolent Gladiator's Ringmail Leggings
								moh(2, i(91719)),	-- Malevolent Gladiator's Ringmail Spaulders
							}),
							cl(WARLOCK, {
								moh(12, iensemble(138713, {	-- Ensemble: Malevolent Gladiator's Felweave Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84923),	-- Malevolent Gladiator's Felweave Amice
								i(84859),	-- Malevolent Gladiator's Felweave Cowl
								i(84842),	-- Malevolent Gladiator's Felweave Handguards
								i(84905),	-- Malevolent Gladiator's Felweave Raiment
								i(84878),	-- Malevolent Gladiator's Felweave Trousers
								moh(2, i(91781)),	-- Malevolent Gladiator's Felweave Amice
								moh(3, i(91775)),	-- Malevolent Gladiator's Felweave Cowl
								moh(2, i(91773)),	-- Malevolent Gladiator's Felweave Handguards
								moh(3, i(91779)),	-- Malevolent Gladiator's Felweave Raiment
								moh(3, i(91777)),	-- Malevolent Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								moh(12, iensemble(138703, {	-- Ensemble: Malevolent Gladiator's Plate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								i(84797),	-- Malevolent Gladiator's Plate Chestpiece
								i(84840),	-- Malevolent Gladiator's Plate Gauntlets
								i(84856),	-- Malevolent Gladiator's Plate Helm
								i(84876),	-- Malevolent Gladiator's Plate Legguards
								i(84922),	-- Malevolent Gladiator's Plate Shoulders
								moh(3, i(91783)),	-- Malevolent Gladiator's Plate Chestpiece
								moh(2, i(91785)),	-- Malevolent Gladiator's Plate Gauntlets
								moh(3, i(91787)),	-- Malevolent Gladiator's Plate Helm
								moh(3, i(91789)),	-- Malevolent Gladiator's Plate Legguards
								moh(2, i(91791)),	-- Malevolent Gladiator's Plate Shoulders
							}),
							n(BACK, {
								moh(1, i(91453)),	-- Malevolent Gladiator's Cape of Cruelty
								moh(1, i(91454)),	-- Malevolent Gladiator's Cape of Prowess
								moh(1, i(91764)),	-- Malevolent Gladiator's Cloak of Alacrity
								moh(1, i(91765)),	-- Malevolent Gladiator's Cloak of Prowess
								moh(1, i(91477)),	-- Malevolent Gladiator's Drape of Cruelty
								moh(1, i(91479)),	-- Malevolent Gladiator's Drape of Meditation
								moh(1, i(91478)),	-- Malevolent Gladiator's Drape of Prowess
							}),
							n(WRIST, {
								moh(1, i(91710)),	-- Malevolent Gladiator's Armbands of Meditation
								moh(1, i(91709)),	-- Malevolent Gladiator's Armbands of Prowess
								moh(1, i(91659)),	-- Malevolent Gladiator's Armplates of Alacrity
								moh(1, i(91658)),	-- Malevolent Gladiator's Armplates of Proficiency
								moh(1, i(91599)),	-- Malevolent Gladiator's Armwraps of Accuracy
								moh(1, i(91692)),	-- Malevolent Gladiator's Armwraps of Alacrity
								moh(1, i(91524)),	-- Malevolent Gladiator's Bindings of Meditation
								moh(1, i(91541)),	-- Malevolent Gladiator's Bindings of Prowess
								moh(1, i(91639)),	-- Malevolent Gladiator's Bracers of Meditation
								moh(1, i(91638)),	-- Malevolent Gladiator's Bracers of Prowess
								moh(1, i(91474)),	-- Malevolent Gladiator's Cuffs of Accuracy
								moh(1, i(91476)),	-- Malevolent Gladiator's Cuffs of Meditation
								moh(1, i(91475)),	-- Malevolent Gladiator's Cuffs of Prowess
								moh(1, i(91574)),	-- Malevolent Gladiator's Wristguards of Accuracy
								moh(1, i(91573)),	-- Malevolent Gladiator's Wristguards of Alacrity
							}),
							n(WAIST, {
								moh(1, i(91537)),	-- Malevolent Gladiator's Belt of Cruelty
								moh(1, i(91520)),	-- Malevolent Gladiator's Belt of Meditation
								moh(1, i(91630)),	-- Malevolent Gladiator's Clasp of Cruelty
								moh(1, i(91632)),	-- Malevolent Gladiator's Clasp of Meditation
								moh(1, i(91464)),	-- Malevolent Gladiator's Cord of Accuracy
								moh(1, i(91462)),	-- Malevolent Gladiator's Cord of Cruelty
								moh(1, i(91466)),	-- Malevolent Gladiator's Cord of Meditation
								moh(1, i(91650)),	-- Malevolent Gladiator's Girdle of Accuracy
								moh(1, i(91652)),	-- Malevolent Gladiator's Girdle of Prowess
								moh(1, i(91567)),	-- Malevolent Gladiator's Links of Accuracy
								moh(1, i(91565)),	-- Malevolent Gladiator's Links of Cruelty
								moh(1, i(91688)),	-- Malevolent Gladiator's Waistband of Accuracy
								moh(1, i(91595)),	-- Malevolent Gladiator's Waistband of Cruelty
								moh(1, i(91731)),	-- Malevolent Gladiator's Waistguard of Cruelty
								moh(1, i(91703)),	-- Malevolent Gladiator's Waistguard of Meditation
							}),
							n(FEET, {
								moh(2, i(91597)),	-- Malevolent Gladiator's Boots of Alacrity
								moh(2, i(91690)),	-- Malevolent Gladiator's Boots of Cruelty
								moh(2, i(91539)),	-- Malevolent Gladiator's Footguards of Alacrity (Leahter)
								moh(2, i(91705)),	-- Malevolent Gladiator's Footguards of Alacrity (Mail)
								moh(2, i(91522)),	-- Malevolent Gladiator's Footguards of Meditation (Leather)
								moh(2, i(91707)),	-- Malevolent Gladiator's Footguards of Meditation (Mail)
								moh(2, i(91634)),	-- Malevolent Gladiator's Greaves of Alacrity
								moh(2, i(91636)),	-- Malevolent Gladiator's Greaves of Meditation
								moh(2, i(91571)),	-- Malevolent Gladiator's Sabatons of Alacrity
								moh(2, i(91569)),	-- Malevolent Gladiator's Sabatons of Cruelty
								moh(2, i(91470)),	-- Malevolent Gladiator's Treads of Alacrity
								moh(2, i(91468)),	-- Malevolent Gladiator's Treads of Cruelty
								moh(2, i(91472)),	-- Malevolent Gladiator's Treads of Meditation
								moh(2, i(91656)),	-- Malevolent Gladiator's Warboots of Alacrity
								moh(2, i(91654)),	-- Malevolent Gladiator's Warboots of Cruelty
							}),
						},
					}),
					n(65165, {	-- Doris Chiltonius <Conquest Quartermaster>
						-- Wouter NOTE: Blizzard added these NPCs to the Gate of the Setting Sun because they couldn't figure out how to make phasing work at their original location
						-- #if ANYCLASSIC
						["coords"] = {
							{ 7.5, 52.5, VALE_OF_ETERNAL_BLOSSOMS },
						},
						-- #endif
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
						-- #if BEFORE WOD
						["OnUpdate"] = SEASON_MALEVOLENT_ONUPDATE,
						["sym"] = {
							{"sub", "pvp_gear_base", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_GLADIATOR },
							{"merge"},	-- Subroutines are automatically finalized, so merge back for further processing
							{"pop"},	-- Discard the Set header and acquire the children.
						},
						-- #endif
					}),
					n(69965, {	-- Doris Chiltonius (Removed Season 14 Vendor)
						["races"] = HORDE_ONLY,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = {
						},
					}),
					n(65164, {	-- Lok'nor Bloodfist <Honor Quartermaster>
						-- Wouter NOTE: Blizzard added these NPCs to the Gate of the Setting Sun because they couldn't figure out how to make phasing work at their original location
						-- #if ANYCLASSIC
						["coords"] = {
							{ 7.1, 52.5, VALE_OF_ETERNAL_BLOSSOMS },
						},
						-- #endif
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
						-- #if BEFORE WOD
						["OnUpdate"] = SEASON_MALEVOLENT_ONUPDATE,
						["sym"] = {
							{"sub", "pvp_gear_base", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_HONOR },
							{"merge"},	-- Subroutines are automatically finalized, so merge back for further processing
							{"pop"},	-- Discard the Set header and acquire the children.
						},
						["groups"] = {
							-- #if ANYCLASSIC
							i(254315),	-- Formula: Enchant Weapon - Tyranny
							-- #endif
						},
						-- #endif
					}),
					n(69982, {	-- Lok'nor Bloodfist <Honor Quartermaster>
						["races"] = HORDE_ONLY,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = {
						},
					}),
					n(75690, {	-- Lok'nor Bloodfist <Dreadful Gladiator>
						["coord"] = { 35.4, 83.2, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_6_0_2 },
						["groups"] = {
							cl(DEATHKNIGHT, {
								moh(12, iensemble(138715, {	-- Ensemble: Dreadful Gladiator's Dreadplate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(84372)),	-- Dreadful Gladiator's Dreadplate Chestpiece
								moh(2, i(84373)),	-- Dreadful Gladiator's Dreadplate Gauntlets
								moh(3, i(84374)),	-- Dreadful Gladiator's Dreadplate Helm
								moh(3, i(84375)),	-- Dreadful Gladiator's Dreadplate Legguards
								moh(2, i(84376)),	-- Dreadful Gladiator's Dreadplate Shoulders
							}),
							cl(DRUID, {
								moh(12, iensemble(138719, {	-- Ensemble: Dreadful Gladiator's Dragonhide Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(84377)),	-- Dreadful Gladiator's Dragonhide Gloves
								moh(3, i(84378)),	-- Dreadful Gladiator's Dragonhide Helm
								moh(3, i(84379)),	-- Dreadful Gladiator's Dragonhide Legguards
								moh(3, i(84380)),	-- Dreadful Gladiator's Dragonhide Robes
								moh(2, i(84381)),	-- Dreadful Gladiator's Dragonhide Spaulders
								moh(2, i(84385)),	-- Dreadful Gladiator's Kodohide Gloves
								moh(3, i(84386)),	-- Dreadful Gladiator's Kodohide Helm
								moh(3, i(84387)),	-- Dreadful Gladiator's Kodohide Legguards
								moh(3, i(84388)),	-- Dreadful Gladiator's Kodohide Robes
								moh(2, i(84389)),	-- Dreadful Gladiator's Kodohide Spaulders
								moh(2, i(84393)),	-- Dreadful Gladiator's Wyrmhide Gloves
								moh(3, i(84394)),	-- Dreadful Gladiator's Wyrmhide Helm
								moh(3, i(84395)),	-- Dreadful Gladiator's Wyrmhide Legguards
								moh(3, i(84396)),	-- Dreadful Gladiator's Wyrmhide Robes
								moh(2, i(84397)),	-- Dreadful Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								moh(12, iensemble(138718, {	-- Ensemble: Dreadful Gladiator's Chain Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(84408)),	-- Dreadful Gladiator's Chain Armor
								moh(2, i(84409)),	-- Dreadful Gladiator's Chain Gauntlets
								moh(3, i(84410)),	-- Dreadful Gladiator's Chain Helm
								moh(3, i(84411)),	-- Dreadful Gladiator's Chain Leggings
								moh(2, i(84412)),	-- Dreadful Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								moh(12, iensemble(138722, {	-- Ensemble: Dreadful Gladiator's Silk Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(84417)),	-- Dreadful Gladiator's Silk Amice
								moh(3, i(84414)),	-- Dreadful Gladiator's Silk Cowl
								moh(2, i(84413)),	-- Dreadful Gladiator's Silk Handguards
								moh(3, i(84416)),	-- Dreadful Gladiator's Silk Robe
								moh(3, i(84415)),	-- Dreadful Gladiator's Silk Trousers
							}),
							cl(MONK, {
								moh(12, iensemble(138720, {	-- Ensemble: Dreadful Gladiator's Ironskin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(84548)),	-- Dreadful Gladiator's Copperskin Gloves
								moh(3, i(84549)),	-- Dreadful Gladiator's Copperskin Helm
								moh(3, i(84550)),	-- Dreadful Gladiator's Copperskin Legguards
								moh(2, i(84552)),	-- Dreadful Gladiator's Copperskin Spaulders
								moh(3, i(84551)),	-- Dreadful Gladiator's Copperskin Tunic
								moh(2, i(84543)),	-- Dreadful Gladiator's Ironskin Gloves
								moh(3, i(84544)),	-- Dreadful Gladiator's Ironskin Helm
								moh(3, i(84545)),	-- Dreadful Gladiator's Ironskin Legguards
								moh(2, i(84547)),	-- Dreadful Gladiator's Ironskin Spaulders
								moh(3, i(84546)),	-- Dreadful Gladiator's Ironskin Tunic
							}),
							cl(PALADIN, {
								moh(12, iensemble(138716, {	-- Ensemble: Dreadful Gladiator's Scaled Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(84429)),	-- Dreadful Gladiator's Ornamented Chestguard
								moh(2, i(84430)),	-- Dreadful Gladiator's Ornamented Gloves
								moh(3, i(84431)),	-- Dreadful Gladiator's Ornamented Headcover
								moh(3, i(84432)),	-- Dreadful Gladiator's Ornamented Legplates
								moh(2, i(84433)),	-- Dreadful Gladiator's Ornamented Spaulders
								moh(3, i(84418)),	-- Dreadful Gladiator's Scaled Chestpiece
								moh(2, i(84419)),	-- Dreadful Gladiator's Scaled Gauntlets
								moh(3, i(84420)),	-- Dreadful Gladiator's Scaled Helm
								moh(3, i(84421)),	-- Dreadful Gladiator's Scaled Legguards
								moh(2, i(84422)),	-- Dreadful Gladiator's Scaled Shoulders
							}),
							cl(PRIEST, {
								moh(12, iensemble(138723, {	-- Ensemble: Dreadful Gladiator's Satin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(84440)),	-- Dreadful Gladiator's Mooncloth Gloves
								moh(3, i(84441)),	-- Dreadful Gladiator's Mooncloth Helm
								moh(3, i(84442)),	-- Dreadful Gladiator's Mooncloth Leggings
								moh(2, i(84444)),	-- Dreadful Gladiator's Mooncloth Mantle
								moh(3, i(84443)),	-- Dreadful Gladiator's Mooncloth Robe
								moh(2, i(84445)),	-- Dreadful Gladiator's Satin Gloves
								moh(3, i(84446)),	-- Dreadful Gladiator's Satin Hood
								moh(3, i(84447)),	-- Dreadful Gladiator's Satin Leggings
								moh(2, i(84449)),	-- Dreadful Gladiator's Satin Mantle
								moh(3, i(84448)),	-- Dreadful Gladiator's Satin Robe
							}),
							cl(ROGUE, {
								moh(12, iensemble(138721, {	-- Ensemble: Dreadful Gladiator's Leather Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(84463)),	-- Dreadful Gladiator's Leather Gloves
								moh(3, i(84464)),	-- Dreadful Gladiator's Leather Helm
								moh(3, i(84465)),	-- Dreadful Gladiator's Leather Legguards
								moh(2, i(84466)),	-- Dreadful Gladiator's Leather Spaulders
								moh(3, i(84462)),	-- Dreadful Gladiator's Leather Tunic
							}),
							cl(SHAMAN, {
								moh(12, iensemble(138717, {	-- Ensemble: Dreadful Gladiator's Ringmail Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(84477)),	-- Dreadful Gladiator's Linked Armor
								moh(2, i(84478)),	-- Dreadful Gladiator's Linked Gauntlets
								moh(3, i(84479)),	-- Dreadful Gladiator's Linked Helm
								moh(3, i(84480)),	-- Dreadful Gladiator's Linked Leggings
								moh(2, i(84481)),	-- Dreadful Gladiator's Linked Spaulders
								moh(3, i(84483)),	-- Dreadful Gladiator's Mail Armor
								moh(2, i(84484)),	-- Dreadful Gladiator's Mail Gauntlets
								moh(3, i(84485)),	-- Dreadful Gladiator's Mail Helm
								moh(3, i(84486)),	-- Dreadful Gladiator's Mail Leggings
								moh(2, i(84487)),	-- Dreadful Gladiator's Mail Spaulders
								moh(3, i(84472)),	-- Dreadful Gladiator's Ringmail Armor
								moh(2, i(84473)),	-- Dreadful Gladiator's Ringmail Gauntlets
								moh(3, i(84474)),	-- Dreadful Gladiator's Ringmail Helm
								moh(3, i(84475)),	-- Dreadful Gladiator's Ringmail Leggings
								moh(2, i(84476)),	-- Dreadful Gladiator's Ringmail Spaulders
							}),
							cl(WARLOCK, {
								moh(12, iensemble(138724, {	-- Ensemble: Dreadful Gladiator's Felweave Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(84503)),	-- Dreadful Gladiator's Felweave Amice
								moh(3, i(84500)),	-- Dreadful Gladiator's Felweave Cowl
								moh(2, i(84499)),	-- Dreadful Gladiator's Felweave Handguards
								moh(3, i(84502)),	-- Dreadful Gladiator's Felweave Raiment
								moh(3, i(84501)),	-- Dreadful Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								moh(12, iensemble(138714, {	-- Ensemble: Dreadful Gladiator's Plate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(84504)),	-- Dreadful Gladiator's Plate Chestpiece
								moh(2, i(84505)),	-- Dreadful Gladiator's Plate Gauntlets
								moh(3, i(84506)),	-- Dreadful Gladiator's Plate Helm
								moh(3, i(84507)),	-- Dreadful Gladiator's Plate Legguards
								moh(2, i(84508)),	-- Dreadful Gladiator's Plate Shoulders
							}),
							n(BACK, {
								moh(1, i(84345)),	-- Dreadful Gladiator's Cape of Cruelty
								moh(1, i(84346)),	-- Dreadful Gladiator's Cape of Prowess
								moh(1, i(84491)),	-- Dreadful Gladiator's Cloak of Alacrity
								moh(1, i(84492)),	-- Dreadful Gladiator's Cloak of Prowess
								moh(1, i(84363)),	-- Dreadful Gladiator's Drape of Cruelty
								moh(1, i(84364)),	-- Dreadful Gladiator's Drape of Meditation
								moh(1, i(84362)),	-- Dreadful Gladiator's Drape of Prowess
							}),
							n(WRIST, {
								moh(1, i(84471)),	-- Dreadful  Gladiator's Armbands of Meditation
								moh(1, i(84470)),	-- Dreadful  Gladiator's Armbands of Prowess
								moh(1, i(84439)),	-- Dreadful Gladiator's Armplates of Alacrity
								moh(1, i(84438)),	-- Dreadful Gladiator's Armplates of Proficiency
								moh(1, i(84461)),	-- Dreadful Gladiator's Armwraps of Accuracy
								moh(1, i(84460)),	-- Dreadful Gladiator's Armwraps of Alacrity
								moh(1, i(84384)),	-- Dreadful Gladiator's Bindings of Meditation
								moh(1, i(84392)),	-- Dreadful Gladiator's Bindings of Prowess
								moh(1, i(84428)),	-- Dreadful Gladiator's Bracers of Meditation
								moh(1, i(84427)),	-- Dreadful Gladiator's Bracers of Prowess
								moh(1, i(84359)),	-- Dreadful Gladiator's Cuffs of Accuracy
								moh(1, i(84361)),	-- Dreadful Gladiator's Cuffs of Meditation
								moh(1, i(84360)),	-- Dreadful Gladiator's Cuffs of Prowess
								moh(1, i(84407)),	-- Dreadful Gladiator's Wristguards of Accuracy
								moh(1, i(84406)),	-- Dreadful Gladiator's Wristguards of Alacrity
							}),
							n(WAIST, {
								moh(1, i(84390)),	-- Dreadful Gladiator's Belt of Cruelty
								moh(1, i(84382)),	-- Dreadful Gladiator's Belt of Meditation
								moh(1, i(84423)),	-- Dreadful Gladiator's Clasp of Cruelty
								moh(1, i(84424)),	-- Dreadful Gladiator's Clasp of Meditation
								moh(1, i(84354)),	-- Dreadful Gladiator's Cord of Accuracy
								moh(1, i(84353)),	-- Dreadful Gladiator's Cord of Cruelty
								moh(1, i(84355)),	-- Dreadful Gladiator's Cord of Meditation
								moh(1, i(84434)),	-- Dreadful Gladiator's Girdle of Accuracy
								moh(1, i(84435)),	-- Dreadful Gladiator's Girdle of Prowess
								moh(1, i(84403)),	-- Dreadful Gladiator's Links of Accuracy
								moh(1, i(84402)),	-- Dreadful Gladiator's Links of Cruelty
								moh(1, i(84457)),	-- Dreadful Gladiator's Waistband of Accuracy
								moh(1, i(84456)),	-- Dreadful Gladiator's Waistband of Cruelty
								moh(1, i(84482)),	-- Dreadful Gladiator's Waistguard of Cruelty
								moh(1, i(84467)),	-- Dreadful Gladiator's Waistguard of Meditation
							}),
							n(FEET, {
								moh(2, i(84459)),	-- Dreadful Gladiator's Boots of Alacrity
								moh(2, i(84458)),	-- Dreadful Gladiator's Boots of Cruelty
								moh(2, i(84391)),	-- Dreadful Gladiator's Footguards of Alacrity (Leather)
								moh(2, i(84383)),	-- Dreadful Gladiator's Footguards of Meditation (Leather)
								moh(2, i(84468)),	-- Dreadful Gladiator's Footguards of Alacrity (Mail)
								moh(2, i(84469)),	-- Dreadful Gladiator's Footguards of Meditation (Mail)
								moh(2, i(84425)),	-- Dreadful Gladiator's Greaves of Alacrity
								moh(2, i(84426)),	-- Dreadful Gladiator's Greaves of Meditation
								moh(2, i(84405)),	-- Dreadful Gladiator's Sabatons of Alacrity
								moh(2, i(84404)),	-- Dreadful Gladiator's Sabatons of Cruelty
								moh(2, i(84357)),	-- Dreadful Gladiator's Treads of Alacrity
								moh(2, i(84356)),	-- Dreadful Gladiator's Treads of Cruelty
								moh(2, i(84358)),	-- Dreadful Gladiator's Treads of Meditation
								moh(2, i(84437)),	-- Dreadful Gladiator's Warboots of Alacrity
								moh(2, i(84436)),	-- Dreadful Gladiator's Warboots of Cruelty
							}),
						},
					}),
					n(70108, {	-- Roo Desvin >S13</Tyrannical Elite
						["races"] = HORDE_ONLY,
						["u"] = REMOVED_FROM_GAME,
						["groups"] = {
						},
					}),
					n(75688, {	-- Roo Desvin S13 Tyrannical Vendor
						["coord"] = { 35.4, 83.2, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_6_0_2 },
						["groups"] = {
							n(WEAPONS, {
								moh(80, iensemble(144245, {	-- Arsenal: Tyrannical Gladiator's Weapons (H)
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(100171)),	-- Tyrannical Gladiator's Barrier
								moh(5, i(99974)),	-- Tyrannical Gladiator's Battle Staff
								moh(5, i(99983)),	-- Tyrannical Gladiator's Bonecracker
								moh(5, i(99973)),	-- Tyrannical Gladiator's Cleaver
								moh(5, i(99984)),	-- Tyrannical Gladiator's Decapitator
								moh(2, i(100172)),	-- Tyrannical Gladiator's Endgame
								moh(5, i(99981)),	-- Tyrannical Gladiator's Energy Staff
								moh(5, i(99963)),	-- Tyrannical Gladiator's Gavel
								moh(5, i(99972)),	-- Tyrannical Gladiator's Greatsword
								moh(5, i(99978)),	-- Tyrannical Gladiator's Hacker
								moh(5, i(99987)),	-- Tyrannical Gladiator's Heavy Crossbow
								moh(5, i(99971)),	-- Tyrannical Gladiator's Mageblade
								moh(5, i(99965)),	-- Tyrannical Gladiator's Pummeler
								moh(5, i(99986)),	-- Tyrannical Gladiator's Quickblade
								moh(2, i(100168)),	-- Tyrannical Gladiator's Redoubt
								moh(5, i(99982)),	-- Tyrannical Gladiator's Render
								moh(2, i(100169)),	-- Tyrannical Gladiator's Reprieve
								moh(5, i(99977)),	-- Tyrannical Gladiator's Ripper
								moh(5, i(99976)),	-- Tyrannical Gladiator's Shanker
								moh(2, i(100170)),	-- Tyrannical Gladiator's Shield Wall
								moh(5, i(99979)),	-- Tyrannical Gladiator's Slicer
								moh(5, i(99967)),	-- Tyrannical Gladiator's Spellblade
								moh(5, i(99968)),	-- Tyrannical Gladiator's Staff
							}),
							cl(DEATHKNIGHT, {
								moh(12, iensemble(138684, {	-- Ensemble: Tyrannical Gladiator's Dreadplate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(100062)),	-- Tyrannical Gladiator's Dreadplate Chestpiece
								moh(2, i(100034)),	-- Tyrannical Gladiator's Dreadplate Gauntlets
								moh(3, i(100099)),	-- Tyrannical Gladiator's Dreadplate Helm
								moh(3, i(100035)),	-- Tyrannical Gladiator's Dreadplate Legguards
								moh(2, i(100036)),	-- Tyrannical Gladiator's Dreadplate Shoulders
							}),
							cl(DRUID, {
								moh(12, iensemble(138692, {	-- Ensemble: Tyrannical Gladiator's Dragonhide Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(100125)),	-- Tyrannical Gladiator's Dragonhide Gloves
								moh(3, i(100037)),	-- Tyrannical Gladiator's Dragonhide Helm
								moh(3, i(100038)),	-- Tyrannical Gladiator's Dragonhide Legguards
								moh(3, i(100126)),	-- Tyrannical Gladiator's Dragonhide Robes
								moh(2, i(100127)),	-- Tyrannical Gladiator's Dragonhide Spaulders
								moh(2, i(100041)),	-- Tyrannical Gladiator's Kodohide Gloves
								moh(3, i(100162)),	-- Tyrannical Gladiator's Kodohide Helm
								moh(3, i(100147)),	-- Tyrannical Gladiator's Kodohide Legguards
								moh(3, i(100107)),	-- Tyrannical Gladiator's Kodohide Robes
								moh(2, i(100042)),	-- Tyrannical Gladiator's Kodohide Spaulders
								moh(2, i(100082)),	-- Tyrannical Gladiator's Wyrmhide Gloves
								moh(3, i(100017)),	-- Tyrannical Gladiator's Wyrmhide Helm
								moh(3, i(100153)),	-- Tyrannical Gladiator's Wyrmhide Legguards
								moh(3, i(99988)),	-- Tyrannical Gladiator's Wyrmhide Robes
								moh(2, i(100086)),	-- Tyrannical Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								moh(12, iensemble(138690, {	-- Ensemble: Tyrannical Gladiator's Chain Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(100075)),	-- Tyrannical Gladiator's Chain Armor
								moh(2, i(100123)),	-- Tyrannical Gladiator's Chain Gauntlets
								moh(3, i(100076)),	-- Tyrannical Gladiator's Chain Helm
								moh(3, i(100054)),	-- Tyrannical Gladiator's Chain Leggings
								moh(2, i(100120)),	-- Tyrannical Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								moh(12, iensemble(138698, {	-- Ensemble: Tyrannical Gladiator's Silk Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(100059)),	-- Tyrannical Gladiator's Silk Amice
								moh(3, i(100051)),	-- Tyrannical Gladiator's Silk Cowl
								moh(2, i(100121)),	-- Tyrannical Gladiator's Silk Handguards
								moh(3, i(100101)),	-- Tyrannical Gladiator's Silk Robe
								moh(3, i(100032)),	-- Tyrannical Gladiator's Silk Trousers
							}),
							cl(MONK, {
								moh(12, iensemble(138694, {	-- Ensemble: Tyrannical Gladiator's Ironskin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(100010)),	-- Tyrannical Gladiator's Copperskin Gloves
								moh(3, i(100011)),	-- Tyrannical Gladiator's Copperskin Helm
								moh(3, i(100148)),	-- Tyrannical Gladiator's Copperskin Legguards
								moh(2, i(100163)),	-- Tyrannical Gladiator's Copperskin Spaulders
								moh(3, i(100149)),	-- Tyrannical Gladiator's Copperskin Tunic
								moh(2, i(100061)),	-- Tyrannical Gladiator's Ironskin Gloves
								moh(3, i(100098)),	-- Tyrannical Gladiator's Ironskin Helm
								moh(3, i(100040)),	-- Tyrannical Gladiator's Ironskin Legguards
								moh(2, i(100009)),	-- Tyrannical Gladiator's Ironskin Spaulders
								moh(3, i(100106)),	-- Tyrannical Gladiator's Ironskin Tunic
							}),
							cl(PALADIN, {
								moh(12, iensemble(138686, {	-- Ensemble: Tyrannical Gladiator's Scaled Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(100015)),	-- Tyrannical Gladiator's Ornamented Chestguard
								moh(2, i(100108)),	-- Tyrannical Gladiator's Ornamented Gloves
								moh(3, i(100018)),	-- Tyrannical Gladiator's Ornamented Headcover
								moh(3, i(100154)),	-- Tyrannical Gladiator's Ornamented Legplates
								moh(2, i(100083)),	-- Tyrannical Gladiator's Ornamented Spaulders
								moh(3, i(100133)),	-- Tyrannical Gladiator's Scaled Chestpiece
								moh(2, i(100013)),	-- Tyrannical Gladiator's Scaled Gauntlets
								moh(3, i(100165)),	-- Tyrannical Gladiator's Scaled Helm
								moh(3, i(100166)),	-- Tyrannical Gladiator's Scaled Legguards
								moh(2, i(100130)),	-- Tyrannical Gladiator's Scaled Shoulders
							}),
							cl(PRIEST, {
								moh(12, iensemble(138700, {	-- Ensemble: Tyrannical Gladiator's Satin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(99989)),	-- Tyrannical Gladiator's Mooncloth Gloves
								moh(3, i(100089)),	-- Tyrannical Gladiator's Mooncloth Helm
								moh(3, i(100090)),	-- Tyrannical Gladiator's Mooncloth Leggings
								moh(2, i(100136)),	-- Tyrannical Gladiator's Mooncloth Mantle
								moh(3, i(100067)),	-- Tyrannical Gladiator's Mooncloth Robe
								moh(2, i(100093)),	-- Tyrannical Gladiator's Satin Gloves
								moh(3, i(100137)),	-- Tyrannical Gladiator's Satin Hood
								moh(3, i(99996)),	-- Tyrannical Gladiator's Satin Leggings
								moh(2, i(100055)),	-- Tyrannical Gladiator's Satin Mantle
								moh(3, i(99998)),	-- Tyrannical Gladiator's Satin Robe
							}),
							cl(ROGUE, {
								moh(12, iensemble(138696, {	-- Ensemble: Tyrannical Gladiator's Leather Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(100047)),	-- Tyrannical Gladiator's Leather Gloves
								moh(3, i(100096)),	-- Tyrannical Gladiator's Leather Helm
								moh(3, i(100116)),	-- Tyrannical Gladiator's Leather Legguards
								moh(2, i(100117)),	-- Tyrannical Gladiator's Leather Spaulders
								moh(3, i(100113)),	-- Tyrannical Gladiator's Leather Tunic
							}),
							cl(SHAMAN, {
								moh(12, iensemble(138688, {	-- Ensemble: Tyrannical Gladiator's Ringmail Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(100145)),	-- Tyrannical Gladiator's Linked Armor
								moh(2, i(100128)),	-- Tyrannical Gladiator's Linked Gauntlets
								moh(3, i(100100)),	-- Tyrannical Gladiator's Linked Helm
								moh(3, i(100164)),	-- Tyrannical Gladiator's Linked Leggings
								moh(2, i(100012)),	-- Tyrannical Gladiator's Linked Spaulders
								moh(3, i(100129)),	-- Tyrannical Gladiator's Mail Armor
								moh(2, i(100078)),	-- Tyrannical Gladiator's Mail Gauntlets
								moh(3, i(100079)),	-- Tyrannical Gladiator's Mail Helm
								moh(3, i(100167)),	-- Tyrannical Gladiator's Mail Leggings
								moh(2, i(100020)),	-- Tyrannical Gladiator's Mail Spaulders
								moh(3, i(100103)),	-- Tyrannical Gladiator's Ringmail Armor
								moh(2, i(100160)),	-- Tyrannical Gladiator's Ringmail Gauntlets
								moh(3, i(100104)),	-- Tyrannical Gladiator's Ringmail Helm
								moh(3, i(100105)),	-- Tyrannical Gladiator's Ringmail Leggings
								moh(2, i(100039)),	-- Tyrannical Gladiator's Ringmail Spaulders
							}),
							cl(WARLOCK, {
								moh(12, iensemble(138702, {	-- Ensemble: Tyrannical Gladiator's Felweave Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(100068)),	-- Tyrannical Gladiator's Felweave Amice
								moh(3, i(100112)),	-- Tyrannical Gladiator's Felweave Cowl
								moh(2, i(100111)),	-- Tyrannical Gladiator's Felweave Handguards
								moh(3, i(100045)),	-- Tyrannical Gladiator's Felweave Raiment
								moh(3, i(100141)),	-- Tyrannical Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								moh(12, iensemble(138682, {	-- Ensemble: Tyrannical Gladiator's Plate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(100114)),	-- Tyrannical Gladiator's Plate Chestpiece
								moh(2, i(99992)),	-- Tyrannical Gladiator's Plate Gauntlets
								moh(3, i(99993)),	-- Tyrannical Gladiator's Plate Helm
								moh(3, i(100118)),	-- Tyrannical Gladiator's Plate Legguards
								moh(2, i(100071)),	-- Tyrannical Gladiator's Plate Shoulders
							}),
							n(BACK, {
								moh(1, i(100091)),	-- Tyrannical Gladiator's Cape of Cruelty
								moh(1, i(100025)),	-- Tyrannical Gladiator's Cape of Prowess
								moh(1, i(100155)),	-- Tyrannical Gladiator's Cloak of Alacrity
								moh(1, i(100156)),	-- Tyrannical Gladiator's Cloak of Prowess
								moh(1, i(100053)),	-- Tyrannical Gladiator's Drape of Cruelty
								moh(1, i(100142)),	-- Tyrannical Gladiator's Drape of Meditation
								moh(1, i(100158)),	-- Tyrannical Gladiator's Drape of Prowess
							}),
							n(WRIST, {
								moh(1, i(100004)),	-- Tyrannical Gladiator's Armbands of Meditation
								moh(1, i(100049)),	-- Tyrannical Gladiator's Armbands of Prowess
								moh(1, i(100157)),	-- Tyrannical Gladiator's Armplates of Alacrity
								moh(1, i(100088)),	-- Tyrannical Gladiator's Armplates of Proficiency
								moh(1, i(100097)),	-- Tyrannical Gladiator's Armwraps of Accuracy
								moh(1, i(100140)),	-- Tyrannical Gladiator's Armwraps of Alacrity
								moh(1, i(100077)),	-- Tyrannical Gladiator's Bindings of Meditation
								moh(1, i(100109)),	-- Tyrannical Gladiator's Bindings of Prowess
								moh(1, i(100151)),	-- Tyrannical Gladiator's Bracers of Meditation
								moh(1, i(100081)),	-- Tyrannical Gladiator's Bracers of Prowess
								moh(1, i(100073)),	-- Tyrannical Gladiator's Cuffs of Accuracy
								moh(1, i(100050)),	-- Tyrannical Gladiator's Cuffs of Meditation
								moh(1, i(100119)),	-- Tyrannical Gladiator's Cuffs of Prowess
								moh(1, i(100139)),	-- Tyrannical Gladiator's Wristguards of Accuracy
								moh(1, i(100074)),	-- Tyrannical Gladiator's Wristguards of Alacrity
							}),
							n(WAIST, {
								moh(1, i(100080)),	-- Tyrannical Gladiator's Belt of Cruelty
								moh(1, i(100161)),	-- Tyrannical Gladiator's Belt of Meditation
								moh(1, i(100150)),	-- Tyrannical Gladiator's Clasp of Cruelty
								moh(1, i(100134)),	-- Tyrannical Gladiator's Clasp of Meditation
								moh(1, i(100046)),	-- Tyrannical Gladiator's Cord of Accuracy
								moh(1, i(100070)),	-- Tyrannical Gladiator's Cord of Cruelty
								moh(1, i(100095)),	-- Tyrannical Gladiator's Cord of Meditation
								moh(1, i(100023)),	-- Tyrannical Gladiator's Girdle of Accuracy
								moh(1, i(100110)),	-- Tyrannical Gladiator's Girdle of Prowess
								moh(1, i(100028)),	-- Tyrannical Gladiator's Links of Accuracy
								moh(1, i(99991)),	-- Tyrannical Gladiator's Links of Cruelty
								moh(1, i(100094)),	-- Tyrannical Gladiator's Waistband of Accuracy
								moh(1, i(100030)),	-- Tyrannical Gladiator's Waistband of Cruelty
								moh(1, i(100063)),	-- Tyrannical Gladiator's Waistguard of Cruelty
								moh(1, i(100052)),	-- Tyrannical Gladiator's Waistguard of Meditation
							}),
							n(FEET, {
								moh(2, i(100102)),	-- Tyrannical Gladiator's Boots of Alacrity
								moh(2, i(100044)),	-- Tyrannical Gladiator's Boots of Cruelty
								moh(2, i(100014)),	-- Tyrannical Gladiator's Footguards of Alacrity (Leahter)
								moh(2, i(100048)),	-- Tyrannical Gladiator's Footguards of Alacrity (Mail)
								moh(2, i(100146)),	-- Tyrannical Gladiator's Footguards of Meditation (Leather)
								moh(2, i(100001)),	-- Tyrannical Gladiator's Footguards of Meditation (Mail)
								moh(2, i(100021)),	-- Tyrannical Gladiator's Greaves of Alacrity
								moh(2, i(100022)),	-- Tyrannical Gladiator's Greaves of Meditation
								moh(2, i(100029)),	-- Tyrannical Gladiator's Sabatons of Alacrity
								moh(2, i(100115)),	-- Tyrannical Gladiator's Sabatons of Cruelty
								moh(2, i(99994)),	-- Tyrannical Gladiator's Treads of Alacrity
								moh(2, i(100072)),	-- Tyrannical Gladiator's Treads of Cruelty
								moh(2, i(100138)),	-- Tyrannical Gladiator's Treads of Meditation
								moh(2, i(100131)),	-- Tyrannical Gladiator's Warboots of Alacrity
								moh(2, i(100084)),	-- Tyrannical Gladiator's Warboots of Cruelty
							}),
						},
					}),
					n(78461, {	-- Shonn Su (Prideful Gladiator Vendor)
						["coord"] = { 35.4, 83.2, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_6_0_2 },
						["groups"] = {
							elitepvp(i(120286, {	-- Enchanter's Illusion - Glorious Tyranny (ILLUSION!)
								["timeline"] = { ADDED_6_0_2 },
							})),
							n(WEAPONS, {
								moh(80, iensemble(144250, {	-- Arsenal: Prideful Gladiator's Weapons (H)
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(103364)),	-- Prideful Gladiator's Barrier
								moh(5, i(103507)),	-- Prideful Gladiator's Baton of Light
								moh(5, i(103366)),	-- Prideful Gladiator's Battle Staff
								moh(5, i(103509)),	-- Prideful Gladiator's Bonecracker
								moh(5, i(103339)),	-- Prideful Gladiator's Cleaver
								moh(5, i(103336)),	-- Prideful Gladiator's Decapitator
								moh(2, i(103363)),	-- Prideful Gladiator's Endgame
								moh(5, i(103406)),	-- Prideful Gladiator's Energy Staff
								moh(5, i(103404)),	-- Prideful Gladiator's Gavel
								moh(5, i(103338)),	-- Prideful Gladiator's Greatsword
								moh(5, i(103508)),	-- Prideful Gladiator's Hacker
								moh(5, i(103350)),	-- Prideful Gladiator's Longbow
								moh(5, i(103504)),	-- Prideful Gladiator's Mageblade
								moh(5, i(103461)),	-- Prideful Gladiator's Pike
								moh(5, i(103340)),	-- Prideful Gladiator's Pummeler
								moh(5, i(103341)),	-- Prideful Gladiator's Quickblade
								moh(2, i(103405)),	-- Prideful Gladiator's Redoubt
								moh(5, i(103503)),	-- Prideful Gladiator's Render
								moh(2, i(103373)),	-- Prideful Gladiator's Reprieve
								moh(2, i(103403)),	-- Prideful Gladiator's Rifle
								moh(5, i(103502)),	-- Prideful Gladiator's Ripper
								moh(5, i(103501)),	-- Prideful Gladiator's Shanker
								moh(2, i(103519)),	-- Prideful Gladiator's Shield Wall
								moh(5, i(103510)),	-- Prideful Gladiator's Slicer
								moh(5, i(103365)),	-- Prideful Gladiator's Spellblade
								moh(5, i(103374)),	-- Prideful Gladiator's Touch of Defeat
							}),
							cl(DEATHKNIGHT, {
								moh(12, iensemble(138640, {	-- Ensemble: Prideful Gladiator's Dreadplate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(103376)),	-- Prideful Gladiator's Dreadplate Chestpiece
								moh(2, i(103377)),	-- Prideful Gladiator's Dreadplate Gauntlets
								moh(3, i(103378)),	-- Prideful Gladiator's Dreadplate Helm
								moh(3, i(103379)),	-- Prideful Gladiator's Dreadplate Legguards
								moh(2, i(103380)),	-- Prideful Gladiator's Dreadplate Shoulders
							}),
							cl(DRUID, {
								moh(12, iensemble(138648, {	-- Ensemble: Prideful Gladiator's Dragonhide Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(103381)),	-- Prideful Gladiator's Dragonhide Gloves
								moh(3, i(103382)),	-- Prideful Gladiator's Dragonhide Helm
								moh(3, i(103383)),	-- Prideful Gladiator's Dragonhide Legguards
								moh(3, i(103384)),	-- Prideful Gladiator's Dragonhide Robes
								moh(2, i(103385)),	-- Prideful Gladiator's Dragonhide Spaulders
								moh(2, i(103389)),	-- Prideful Gladiator's Kodohide Gloves
								moh(3, i(103390)),	-- Prideful Gladiator's Kodohide Helm
								moh(3, i(103391)),	-- Prideful Gladiator's Kodohide Legguards
								moh(3, i(103392)),	-- Prideful Gladiator's Kodohide Robes
								moh(2, i(103393)),	-- Prideful Gladiator's Kodohide Spaulders
								moh(2, i(103398)),	-- Prideful Gladiator's Wyrmhide Gloves
								moh(3, i(103399)),	-- Prideful Gladiator's Wyrmhide Helm
								moh(3, i(103400)),	-- Prideful Gladiator's Wyrmhide Legguards
								moh(3, i(103401)),	-- Prideful Gladiator's Wyrmhide Robes
								moh(2, i(103402)),	-- Prideful Gladiator's Wyrmhide Spaulders
							}),
							cl(HUNTER, {
								moh(12, iensemble(138646, {	-- Ensemble: Prideful Gladiator's Chain Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(103416)),	-- Prideful Gladiator's Chain Armor
								moh(2, i(103417)),	-- Prideful Gladiator's Chain Gauntlets
								moh(3, i(103418)),	-- Prideful Gladiator's Chain Helm
								moh(3, i(103419)),	-- Prideful Gladiator's Chain Leggings
								moh(2, i(103420)),	-- Prideful Gladiator's Chain Spaulders
							}),
							cl(MAGE, {
								moh(12, iensemble(138654, {	-- Ensemble: Prideful Gladiator's Silk Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(103425)),	-- Prideful Gladiator's Silk Amice
								moh(3, i(103422)),	-- Prideful Gladiator's Silk Cowl
								moh(2, i(103421)),	-- Prideful Gladiator's Silk Handguards
								moh(3, i(103424)),	-- Prideful Gladiator's Silk Robe
								moh(3, i(103423)),	-- Prideful Gladiator's Silk Trousers
							}),
							cl(MONK, {
								moh(12, iensemble(138650, {	-- Ensemble: Prideful Gladiator's Ironskin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(103434)),	-- Prideful Gladiator's Copperskin Gloves
								moh(3, i(103435)),	-- Prideful Gladiator's Copperskin Helm
								moh(3, i(103436)),	-- Prideful Gladiator's Copperskin Legguards
								moh(2, i(103437)),	-- Prideful Gladiator's Copperskin Spaulders
								moh(3, i(103438)),	-- Prideful Gladiator's Copperskin Tunic
								moh(2, i(103429)),	-- Prideful Gladiator's Ironskin Gloves
								moh(3, i(103430)),	-- Prideful Gladiator's Ironskin Helm
								moh(3, i(103431)),	-- Prideful Gladiator's Ironskin Legguards
								moh(2, i(103432)),	-- Prideful Gladiator's Ironskin Spaulders
								moh(3, i(103433)),	-- Prideful Gladiator's Ironskin Tunic
							}),
							cl(PALADIN, {
								moh(12, iensemble(138642, {	-- Ensemble: Prideful Gladiator's Scaled Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(103450)),	-- Prideful Gladiator's Ornamented Chestguard
								moh(2, i(103451)),	-- Prideful Gladiator's Ornamented Gloves
								moh(3, i(103452)),	-- Prideful Gladiator's Ornamented Headcover
								moh(3, i(103453)),	-- Prideful Gladiator's Ornamented Legplates
								moh(2, i(103454)),	-- Prideful Gladiator's Ornamented Spaulders
								moh(3, i(103439)),	-- Prideful Gladiator's Scaled Chestpiece
								moh(2, i(103440)),	-- Prideful Gladiator's Scaled Gauntlets
								moh(3, i(103441)),	-- Prideful Gladiator's Scaled Helm
								moh(3, i(103442)),	-- Prideful Gladiator's Scaled Legguards
								moh(2, i(103443)),	-- Prideful Gladiator's Scaled Shoulders
							}),
							cl(PRIEST, {
								moh(12, iensemble(138656, {	-- Ensemble: Prideful Gladiator's Satin Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(103462)),	-- Prideful Gladiator's Mooncloth Gloves
								moh(3, i(103463)),	-- Prideful Gladiator's Mooncloth Helm
								moh(3, i(103464)),	-- Prideful Gladiator's Mooncloth Leggings
								moh(2, i(103466)),	-- Prideful Gladiator's Mooncloth Mantle
								moh(3, i(103465)),	-- Prideful Gladiator's Mooncloth Robe
								moh(2, i(103467)),	-- Prideful Gladiator's Satin Gloves
								moh(3, i(103468)),	-- Prideful Gladiator's Satin Hood
								moh(3, i(103469)),	-- Prideful Gladiator's Satin Leggings
								moh(2, i(103471)),	-- Prideful Gladiator's Satin Mantle
								moh(3, i(103470)),	-- Prideful Gladiator's Satin Robe
							}),
							cl(ROGUE, {
								moh(12, iensemble(138652, {	-- Ensemble: Prideful Gladiator's Leather Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(103476)),	-- Prideful Gladiator's Leather Gloves
								moh(3, i(103477)),	-- Prideful Gladiator's Leather Helm
								moh(3, i(103478)),	-- Prideful Gladiator's Leather Legguards
								moh(2, i(103479)),	-- Prideful Gladiator's Leather Spaulders
								moh(3, i(103475)),	-- Prideful Gladiator's Leather Tunic
							}),
							cl(SHAMAN, {
								moh(12, iensemble(138644, {	-- Ensemble: Prideful Gladiator's Ringmail Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(103490)),	-- Prideful Gladiator's Linked Armor
								moh(2, i(103491)),	-- Prideful Gladiator's Linked Gauntlets
								moh(3, i(103492)),	-- Prideful Gladiator's Linked Helm
								moh(3, i(103493)),	-- Prideful Gladiator's Linked Leggings
								moh(2, i(103494)),	-- Prideful Gladiator's Linked Spaulders
								moh(3, i(103496)),	-- Prideful Gladiator's Mail Armor
								moh(2, i(103497)),	-- Prideful Gladiator's Mail Gauntlets
								moh(3, i(103498)),	-- Prideful Gladiator's Mail Helm
								moh(3, i(103499)),	-- Prideful Gladiator's Mail Leggings
								moh(2, i(103500)),	-- Prideful Gladiator's Mail Spaulders
								moh(3, i(103485)),	-- Prideful Gladiator's Ringmail Armor
								moh(2, i(103486)),	-- Prideful Gladiator's Ringmail Gauntlets
								moh(3, i(103487)),	-- Prideful Gladiator's Ringmail Helm
								moh(3, i(103488)),	-- Prideful Gladiator's Ringmail Leggings
								moh(2, i(103489)),	-- Prideful Gladiator's Ringmail Spaulders
							}),
							cl(WARLOCK, {
								moh(12, iensemble(138658, {	-- Ensemble: Prideful Gladiator's Felweave Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(2, i(103524)),	-- Prideful Gladiator's Felweave Amice
								moh(3, i(103521)),	-- Prideful Gladiator's Felweave Cowl
								moh(2, i(103520)),	-- Prideful Gladiator's Felweave Handguards
								moh(3, i(103523)),	-- Prideful Gladiator's Felweave Raiment
								moh(3, i(103522)),	-- Prideful Gladiator's Felweave Trousers
							}),
							cl(WARRIOR, {
								moh(12, iensemble(138638, {	-- Ensemble: Prideful Gladiator's Plate Armor
									["timeline"] = { ADDED_7_1_5 },
								})),
								moh(3, i(103525)),	-- Prideful Gladiator's Plate Chestpiece
								moh(2, i(103526)),	-- Prideful Gladiator's Plate Gauntlets
								moh(3, i(103527)),	-- Prideful Gladiator's Plate Helm
								moh(3, i(103528)),	-- Prideful Gladiator's Plate Legguards
								moh(2, i(103529)),	-- Prideful Gladiator's Plate Shoulders
							}),
							n(BACK, {
								-- From Celestials/Vendor
								moh(1, i(103343)),	-- Prideful Gladiator's Cape of Cruelty
								moh(1, i(103344)),	-- Prideful Gladiator's Cape of Prowess
								moh(1, i(103512)),	-- Prideful Gladiator's Cloak of Alacrity
								moh(1, i(103513)),	-- Prideful Gladiator's Cloak of Prowess
								moh(1, i(103360)),	-- Prideful Gladiator's Drape of Cruelty
								moh(1, i(103362)),	-- Prideful Gladiator's Drape of Meditation
								moh(1, i(103361)),	-- Prideful Gladiator's Drape of Prowess
							}),
							n(WRIST, {
								-- From Celestials/Vendor
								moh(1, i(103484)),	-- Prideful Gladiator's Armbands of Meditation
								moh(1, i(103483)),	-- Prideful Gladiator's Armbands of Prowess
								moh(1, i(103460)),	-- Prideful Gladiator's Armplates of Alacrity
								moh(1, i(103459)),	-- Prideful Gladiator's Armplates of Proficiency
								moh(1, i(103428)),	-- Prideful Gladiator's Armwraps of Accuracy
								moh(1, i(103474)),	-- Prideful Gladiator's Armwraps of Alacrity
								moh(1, i(103388)),	-- Prideful Gladiator's Bindings of Meditation
								moh(1, i(103397)),	-- Prideful Gladiator's Bindings of Prowess
								moh(1, i(103449)),	-- Prideful Gladiator's Bracers of Meditation
								moh(1, i(103448)),	-- Prideful Gladiator's Bracers of Prowess
								moh(1, i(103357)),	-- Prideful Gladiator's Cuffs of Accuracy
								moh(1, i(103359)),	-- Prideful Gladiator's Cuffs of Meditation
								moh(1, i(103358)),	-- Prideful Gladiator's Cuffs of Prowess
								moh(1, i(103415)),	-- Prideful Gladiator's Wristguards of Accuracy
								moh(1, i(103414)),	-- Prideful Gladiator's Wristguards of Alacrity
							}),
							n(WAIST, {
								-- From Celestials/Vendor
								moh(1, i(103395)),	-- Prideful Gladiator's Belt of Cruelty
								moh(1, i(103386)),	-- Prideful Gladiator's Belt of Meditation
								moh(1, i(103444)),	-- Prideful Gladiator's Clasp of Cruelty
								moh(1, i(103445)),	-- Prideful Gladiator's Clasp of Meditation
								moh(1, i(103352)),	-- Prideful Gladiator's Cord of Accuracy
								moh(1, i(103351)),	-- Prideful Gladiator's Cord of Cruelty
								moh(1, i(103353)),	-- Prideful Gladiator's Cord of Meditation
								moh(1, i(103455)),	-- Prideful Gladiator's Girdle of Accuracy
								moh(1, i(103456)),	-- Prideful Gladiator's Girdle of Prowess
								moh(1, i(103411)),	-- Prideful Gladiator's Links of Accuracy
								moh(1, i(103410)),	-- Prideful Gladiator's Links of Cruelty
								moh(1, i(103472)),	-- Prideful Gladiator's Waistband of Accuracy
								moh(1, i(103426)),	-- Prideful Gladiator's Waistband of Cruelty
								moh(1, i(103495)),	-- Prideful Gladiator's Waistguard of Cruelty
								moh(1, i(103480)),	-- Prideful Gladiator's Waistguard of Meditation
								-- Vendor added in 7.2 only on horde side
								moh(1, i(147362)),	-- Prideful Gladiator's Cord of Prowess
							}),
							n(FEET, {
								-- From Celestials/Vendor
								moh(2, i(103427)),	-- Prideful Gladiator's Boots of Alacrity
								moh(2, i(103473)),	-- Prideful Gladiator's Boots of Cruelty
								moh(2, i(103396)),	-- Prideful Gladiator's Footguards of Alacrity (Leahter)
								moh(2, i(103481)),	-- Prideful Gladiator's Footguards of Alacrity (Mail)
								moh(2, i(103387)),	-- Prideful Gladiator's Footguards of Meditation (Leather)
								moh(2, i(103482)),	-- Prideful Gladiator's Footguards of Meditation (Mail)
								moh(2, i(103446)),	-- Prideful Gladiator's Greaves of Alacrity
								moh(2, i(103447)),	-- Prideful Gladiator's Greaves of Meditation
								moh(2, i(103413)),	-- Prideful Gladiator's Sabatons of Alacrity
								moh(2, i(103412)),	-- Prideful Gladiator's Sabatons of Cruelty
								moh(2, i(103355)),	-- Prideful Gladiator's Treads of Alacrity
								moh(2, i(103354)),	-- Prideful Gladiator's Treads of Cruelty
								moh(2, i(103356)),	-- Prideful Gladiator's Treads of Meditation
								moh(2, i(103458)),	-- Prideful Gladiator's Warboots of Alacrity
								moh(2, i(103457)),	-- Prideful Gladiator's Warboots of Cruelty
							}),
						},
					}),
					n(61749, {	-- The Metal Paw <Adventuring Supplies>
						["coord"] = { 71.4, 92.1, KUN_LAI_SUMMIT },
						["groups"] = {
							i(82690),	-- Mountainscaler Amulet
							i(82685),	-- Mountainscaler Armored Bracers
							i(82640),	-- Mountainscaler Armored Chestpiece
							i(82676),	-- Mountainscaler Armored Gauntlets
							i(82667),	-- Mountainscaler Armored Girdle
							i(82622),	-- Mountainscaler Armored Helm
							i(82649),	-- Mountainscaler Armored Legguards
							i(82631),	-- Mountainscaler Armored Shoulders
							i(82658),	-- Mountainscaler Armored Warboots
							i(82721),	-- Mountainscaler Axe
							i(82700),	-- Mountainscaler Badge
							i(82691),	-- Mountainscaler Band
							i(82718),	-- Mountainscaler Barrier
							i(82709),	-- Mountainscaler Battlemace
							i(82720),	-- Mountainscaler Blade
							i(82680),	-- Mountainscaler Burnished Bracers
							i(82635),	-- Mountainscaler Burnished Chestguard
							i(82662),	-- Mountainscaler Burnished Clasp
							i(82671),	-- Mountainscaler Burnished Gloves
							i(82653),	-- Mountainscaler Burnished Greaves
							i(82617),	-- Mountainscaler Burnished Headcover
							i(82644),	-- Mountainscaler Burnished Legplates
							i(82626),	-- Mountainscaler Burnished Spaulders
							i(82703),	-- Mountainscaler Cape
							i(82638),	-- Mountainscaler Chain Armor
							i(82674),	-- Mountainscaler Chain Gauntlets
							i(82620),	-- Mountainscaler Chain Helm
							i(82647),	-- Mountainscaler Chain Leggings
							i(82665),	-- Mountainscaler Chain Links
							i(82656),	-- Mountainscaler Chain Sabatons
							i(82629),	-- Mountainscaler Chain Spaulders
							i(82683),	-- Mountainscaler Chain Wristguards
							i(82687),	-- Mountainscaler Choker
							i(82705),	-- Mountainscaler Cloak
							i(82708),	-- Mountainscaler Combat Staff
							i(82711),	-- Mountainscaler Crossbow
							i(82714),	-- Mountainscaler Dagger
							i(82707),	-- Mountainscaler Diviner's Rod
							i(82702),	-- Mountainscaler Drape
							i(82698),	-- Mountainscaler Emblem
							i(82716),	-- Mountainscaler Greatsword
							i(82710),	-- Mountainscaler Handaxe
							i(82684),	-- Mountainscaler Heavy Armplates
							i(82639),	-- Mountainscaler Heavy Chestpiece
							i(82675),	-- Mountainscaler Heavy Gauntlets
							i(82666),	-- Mountainscaler Heavy Girdle
							i(82621),	-- Mountainscaler Heavy Helm
							i(82648),	-- Mountainscaler Heavy Legguards
							i(82630),	-- Mountainscaler Heavy Shoulders
							i(82657),	-- Mountainscaler Heavy Warboots
							i(82660),	-- Mountainscaler Hide Belt
							i(82678),	-- Mountainscaler Hide Bindings
							i(82651),	-- Mountainscaler Hide Footguards
							i(82669),	-- Mountainscaler Hide Gloves
							i(82615),	-- Mountainscaler Hide Helm
							i(82642),	-- Mountainscaler Hide Legguards
							i(82633),	-- Mountainscaler Hide Robes
							i(82624),	-- Mountainscaler Hide Spaulders
							i(82699),	-- Mountainscaler Insignia
							i(82682),	-- Mountainscaler Leather Armwraps
							i(82664),	-- Mountainscaler Leather Belt
							i(82655),	-- Mountainscaler Leather Boots
							i(82673),	-- Mountainscaler Leather Gloves
							i(82619),	-- Mountainscaler Leather Helm
							i(82646),	-- Mountainscaler Leather Legguards
							i(82628),	-- Mountainscaler Leather Spaulders
							i(82637),	-- Mountainscaler Leather Tunic
							i(82686),	-- Mountainscaler Locket
							i(82693),	-- Mountainscaler Loop
							i(82717),	-- Mountainscaler Mace
							i(82704),	-- Mountainscaler Manteau
							i(82696),	-- Mountainscaler Mark
							i(82697),	-- Mountainscaler Medal
							i(82706),	-- Mountainscaler Meditation Staff
							i(82688),	-- Mountainscaler Necklace
							i(82689),	-- Mountainscaler Pendant
							i(82692),	-- Mountainscaler Ring
							i(82679),	-- Mountainscaler Ringmail Armbands
							i(82634),	-- Mountainscaler Ringmail Armor
							i(82670),	-- Mountainscaler Ringmail Gauntlets
							i(82616),	-- Mountainscaler Ringmail Helm
							i(82643),	-- Mountainscaler Ringmail Leggings
							i(82652),	-- Mountainscaler Ringmail Sabatons
							i(82625),	-- Mountainscaler Ringmail Spaulders
							i(82661),	-- Mountainscaler Ringmail Waistguard
							i(82712),	-- Mountainscaler Saber
							i(82659),	-- Mountainscaler Satin Cord
							i(82677),	-- Mountainscaler Satin Cuffs
							i(82668),	-- Mountainscaler Satin Gloves
							i(82614),	-- Mountainscaler Satin Hood
							i(82641),	-- Mountainscaler Satin Leggings
							i(82623),	-- Mountainscaler Satin Mantle
							i(82632),	-- Mountainscaler Satin Robe
							i(82650),	-- Mountainscaler Satin Treads
							i(82713),	-- Mountainscaler Scepter
							i(82695),	-- Mountainscaler Seal
							i(82701),	-- Mountainscaler Shawl
							i(82719),	-- Mountainscaler Shield
							i(82694),	-- Mountainscaler Signet
							i(82627),	-- Mountainscaler Silk Amice
							i(82663),	-- Mountainscaler Silk Cord
							i(82618),	-- Mountainscaler Silk Cowl
							i(82681),	-- Mountainscaler Silk Cuffs
							i(82672),	-- Mountainscaler Silk Handguards
							i(82636),	-- Mountainscaler Silk Robe
							i(82654),	-- Mountainscaler Silk Treads
							i(82645),	-- Mountainscaler Silk Trousers
							i(82715),	-- Mountainscaler Smasher
						},
					}),
					n(64518, {	-- Uncle Bigpocket <Used Yak Salesgrummle>
						["coord"] = { 65.4, 61.6, KUN_LAI_SUMMIT },
						["groups"] = {
							i(87789, {	-- Blonde Riding Yak (MOUNT!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(84101, {	-- Grand Expedition Yak (MOUNT!)
								["cost"] = 1200000000,	-- 120,000g
							}),
							i(87788, {	-- Grey Riding Yak (MOUNT!)
								["cost"] = 30000000,	-- 3,000g
							}),
						},
					}),
				}),
				n(ZONE_DROPS, {
					applyclassicphase(MOP_PHASE_ESCALATION, i(97980, {	-- Hozen-Fur Fuse (QI!)
						["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3_LAUNCH },
						-- Wouter NOTE: in MoP Classic, this started dropping in Phase 2 (Landfall) already
						-- #if BEFORE 5.5.3
						["description"] = "This is not supposed to be in the game until Phase 4 and doesn't work yet, keep it in your bank until then.",
						-- #elseif BEFORE LEGION
						["description"] = "Best farmed by doing The Burlap Grind quest. This can take more than a few hundred kills to drop.",
						-- #endif
						["crs"] = {
							60742,	-- Broketooth Leaper
							60743,	-- Broketooth Ravager
							60753,	-- Ookin Marauder
							60752,	-- Ookin Shaman
							60746,	-- Silverback Piker
							60749,	-- Silverback Smasher
						},
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, i(97978, {	-- Knockoff Grumplefloot (QI!)
						["description"] = "Dance with Grandpa Grumplefloot to receive the Knockoff Grumplefloot.",
						["coord"] = { 65.0, 60.0, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3_LAUNCH },
					})),
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	m(PANDARIA, {
		m(KUN_LAI_SUMMIT, {
			n(QUESTS, {
				q(30453),	-- Binan Village Intro Event Tracking Event - triggeres when flying into Binan village through the Ancient Passage on mount
				q(31310),	-- Interrogation Tracking - triggers during "Revelations" (questID 30946)
				q(30854),	-- Lha-Po Tracking Quest - triggers after turning in "One Traveler's Misfortune" (questID 30683)
				q(31205),	-- Lorewalker Cho Tracking Quest - triggers after turning in "Fisherman's Tale" (questID 30935)
				q(31300),	-- Shomi Beach Tracking - triggeres shortly after killing Captain Ripflesh during "Justice" (questID 30805)
				q(31299),	-- Shomi Ruins Tracking - triggers when you walk into the Zandalari Vanguard Ruins / Zouchin Village
				q(31301),	-- Shomi Strand Tracking - triggers when you find Sage Liao in Zouchin Strand
				q(31463),	-- Spirit of Anger Defeated - triggers after second test during "A Celestial Experience" (questID 31394 & 31395)
				q(31462),	-- Spirit of Violence Defeated - triggers after first test during "A Celestial Experience" (questID 31394 & 31395)
				q(31461),	-- Spoke to Xuen - triggers during "A Celestial Experience" (questID 31394 & 31395)
				q(31464),	-- Opposing Faction Leader Defeated - triggers after third test during "A Celestial Experience" (questID 31394 & 31395)
				q(30647),	-- Tracking Quest: Opened the Golden Valley - triggers when the gates to the Vale of Eternal Blossom are opened
				q(31807),	-- Tracking Quest: Opened the Golden Valley II - triggers after the dialog finishes with the 4 celestials at the gates
				q(31298),	-- Zouchin Village - Intro Tracking
			}),
		}),
	}),
})));
