---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(PANDARIA, {
		m(TOWNLONG_STEPPES, {
			["lore"] = "Townlong Steppes is relatively small zone located in northwestern Pandaria. The main story that is played out here involves aiding the Shado-Pan on their pursuit against the Sha of Hatred, and aiding them in fending off the Osul yaungol and the aggressive mantid coming from the south.",
			["icon"] = 618796,
			["maps"] = { TOWNLONG_STEPPES_NIUZAO_CATACOMBS },
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(7310),	-- Defender of Gods
					ach(6977),	-- Explore Townlong Steppes
					ach(7309),	-- Fire in the Yaung-hole!
					ach(7298, {	-- Getting Around with the Shado-Pan
						crit(20453),	-- Fei Li
						crit(20456),	-- Taoshi
						crit(20461),	-- Protector Yi
						crit(20454),	-- Snow Blossom
						crit(20457),	-- Hawkmaster Nurong
						crit(20460),	-- Chao the Voice
						crit(20455),	-- Yalia Sagewhisper
						crit(20458),	-- Tenwu of the Red Smoke
						crit(20459),	-- Lao-Chin the Iron Belly
					}),
					ach(7308),	-- Know Your Role
					ach(7299),	-- Loner and a Rebel
					ach(6539),	-- One Steppe Forward, Two Steppes Back
					ach(7297, {	-- Proven Strength (Shado-Pan Garrison)
						crit(22174),	-- Fei Li
						crit(22168),	-- Snow Blossom
						crit(22169),	-- Yalia Sagewhisper
						crit(22174),	-- Protector Yi
						crit(22170),	-- Chao the Voice
						crit(22171),	-- Lao-Chin the Iron Belly
						crit(22174),	-- Taoshi
						crit(22173),	-- Tenwu of the Red Smoke
						crit(22172),	-- Hawkmaster Nurong
					}),
					ach(6366),	-- Shado-Pan
					ach(7307),	-- Silent Assassin
					ach(7479, {		-- The Shado-Master
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							6366,		-- Shado-Pan
							6470,		-- Heroic: Shado-Pan Monastery
							6480,		-- Settle Down, Bro
							7297,		-- Proven Strength
							7298,		-- Getting Around with the Shado-Pan
							7299,		-- Loner and a Rebel
							7307,		-- Silent Assassin
							7308,		-- Know Your Role
							7309,		-- Fire in the Yaung-hole!
							7310,		-- Defender of Gods
						}},
						["groups"] = {
							title(205),		-- Shado-Master
						},
					}),
					ach(7288),	-- Yak Attack (Niuzao Temple)
				}),
				battlepets({
					pet(732, {	-- Amber Moth (PET!)
						["coords"] = {
							{ 48.8, 78.2, TOWNLONG_STEPPES },
							{ 66.8, 80.6, TOWNLONG_STEPPES },
						},
					}),
					pet(733),	-- Grassland Hopper (PET!)
					pet(680),	-- Kuitan Mongoose (PET!)
					pet(737),	-- Mongoose (PET!)
					pet(739),	-- Mongoose Pup (PET!)
					pet(740),	-- Yakrat (PET!)
				}),
				explorationHeader({
					visit_exploration(6342,{coord={59.2,85.9,TOWNLONG_STEPPES}}),	-- Ambermarsh
					visit_exploration(6190,{coord={77.9,78.2,TOWNLONG_STEPPES}}),	-- Dampsoil Burrow
					visit_exploration(6348,{coord={51.6,52.3,TOWNLONG_STEPPES}}),	-- Deadtalker's Plateau
					exploration(6192),	-- Dusklight Bridge
					exploration(6191),	-- Dusklight Hollow
					visit_exploration(6194,{coord={51.0,84.0,TOWNLONG_STEPPES}}),	-- Farwatch Overlook
					visit_exploration(6550,{coord={35.1,47.9,TOWNLONG_STEPPES}}),	-- Fields of Niuzao
					exploration(6312),	-- Fire Camp Gai-Cho
					exploration(6163),	-- Fire Camp Osul
					visit_exploration(6411,{coord={32.0,75.4,TOWNLONG_STEPPES}}),	-- Forward Assault Camp
					visit_exploration(6390,{coord={61.6,47.4,TOWNLONG_STEPPES}}),	-- Gai-Cho Battlefield
					exploration(6187),	-- Gao-Ran Battlefront
					exploration(6171),	-- Hatred's Vice
					visit_exploration(6413,{coord={34.4,81.3,TOWNLONG_STEPPES}}),	-- Hollowed Out Tree
					visit_exploration(6423,{coord={16.9,42.7,TOWNLONG_STEPPES}}),	-- Ikz'ka Ridge
					exploration(6205),	-- Kri'vess
					visit_exploration(6421,{coord={27.4,54.1,TOWNLONG_STEPPES}}),	-- Kzzok Warcamp
					exploration(6166),	-- Longying Outpost
					exploration(6164),	-- Lower Sumprushes
					exploration(6213),	-- Niuzao Temple
					visit_exploration(6412,{coord={29.5,79.5,TOWNLONG_STEPPES}}),	-- Rear Staging Area
					exploration(6193),	-- Rensai's Watchpost
					exploration(6197),	-- Shado-Pan Garrison
					visit_exploration(6188,{coord={81.1,83.6,TOWNLONG_STEPPES}}),	-- Shallowstep Pass
					exploration(6307),	-- Shan'ze Dao
					exploration(6195),	-- Sik'vess
					exploration(6212),	-- Sra'thik Incursion
					visit_exploration(6422,{coord={27.1,41.1,TOWNLONG_STEPPES}}),	-- Sra'thik Swarmdock
					exploration(6314),	-- Sra'vess
					visit_exploration(6420,{coord={18.3,56.3,TOWNLONG_STEPPES}}),	-- The Feeding Pits
					visit_exploration(6392,{coord={56.8,43.6,TOWNLONG_STEPPES}}),	-- The Underbough
					visit_exploration(6189,{coord={54.6,86.0,TOWNLONG_STEPPES}}),	-- The Widening Deep
					exploration(6165),	-- Upper Sumprushes
				}),
				n(FACTIONS, {
					faction(FACTION_SHADO_PAN),	-- Shado-Pan
				}),
				n(FLIGHT_PATHS, {
					fp(1054, {	-- Gao-Ran Battlefront, Townlong Steppes
						["cr"] = 62903,	-- Kite Master Nenshi <Flight Master>
						["coord"] = { 74.4, 81.4, TOWNLONG_STEPPES },
					}),
					fp(1053, {	-- Longying Outpost, Townlong Steppes
						["cr"] = 62901,	-- Kite Master Wong <Flight Master>
						["coord"] = { 71.0, 57.2, TOWNLONG_STEPPES },
					}),
					fp(1055, {	-- Rensai's Watchpost, Townlong Steppes
						["cr"] = 62898,	-- Kite Master Li-Sen <Flight Master>
						["coord"] = { 54.2, 79.0, TOWNLONG_STEPPES },
					}),
					fp(1056, {	-- Shado-Pan Garrison, Townlong Steppes
						["cr"] = 62909,	-- Kite Master Yao-Li <Flight Master>
						["coord"] = { 50.0, 71.8, TOWNLONG_STEPPES },
					}),
				}),
				petbattles({
					n(68463, {	-- Burning Pandaren Spirit <Grand Master Pet Tamer>
						["coord"] = { 57.0, 42.2, TOWNLONG_STEPPES },
						["timeline"] = { ADDED_5_1_0 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(32434, {	-- Burning Pandaren Spirit
								["sourceQuest"] = 32428,	-- Pandaren Spirit Tamer
								["timeline"] = { ADDED_5_1_0 },
								["isDaily"] = true,
								["groups"] = {
									i(93146, {	-- Pandaren Spirit Pet Supplies
										["sym"] = {{"select","itemID",
											89139,	-- Chain Pet Leash
											44820,	-- Red Ribbon Pet Leash
											37460,	-- Rope Pet Leash
										}},
										["groups"] = {
											i(92798),	-- Pandaren Fire Spirit (PET!)
										},
									})
								},
							}),
						},
					}),
					n(66918, {	-- Seeker Zusshi <Grand Master Pet Tamer>
						["coord"] = { 36.2, 52.2, TOWNLONG_STEPPES },
						["timeline"] = { ADDED_5_0_4 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(31991, {	-- Grand Master Zusshi
								["sourceAchievement"] = 6606,	-- Taming Pandaria
								["timeline"] = { ADDED_5_0_4 },
								["isDaily"] = true,
								["groups"] = {
									i(89125),	-- Sack of Pet Supplies
								},
							}),
						},
					}),
				}),
				n(QUESTS, {
					q(31894, {	-- A Delicate Balance
						["sourceQuest"] = 30784,	-- The Point of No Return
						["qg"] = 60864,	-- Yalia Sagewhisper
						["coord"] = { 82.5, 73.0, TOWNLONG_STEPPES },
						["isBreadcrumb"] = true,
					}),
					q(30814, {	-- A Foot in the Door
						["sourceQuests"] = {
							-- #if AFTER 7.3.5
							49560,	-- Hero's Call: Townlong Steppes!
							49542,	-- Warchief's Command: Townlong Steppes!
							-- #endif
							31386,	-- The Shado-Pan Offensive (A)
							31388,	-- The Shado-Pan Offensive (H)
							30768,	-- My Husband...
							31695,	-- Beyond the Wall
						},
						["qg"] = 60688,	-- Taran Zhu
						["coord"] = { 71.1, 56.6, TOWNLONG_STEPPES },
					}),
					q(31198, {	-- A Morale Victory
						["qg"] = 63614,	-- Ling of the Six Pools
						["coord"] = { 49.0, 71.2, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(30964, {	-- A Proper Poultice
						["qg"] = 61625,	-- Provisioner Bamfu
						["coord"] = { 49.1, 71.3, TOWNLONG_STEPPES },
					}),
					q(30786, {	-- A Spear Through My Side, A Chain Through My Soul
						["sourceQuest"] = 31894,	-- A Delicate Balance
						["qg"] = 60857,	-- Orbiss
						["coord"] = { 67.9, 67.6, TOWNLONG_STEPPES },
					}),
					q(30928, {	-- A Trail of Fear
						["sourceQuest"] = 30925,	-- Niuzao's Price
						["qg"] = 61585,	-- Yak-Keeper Kyana
						["coord"] = { 39.1, 62.0, TOWNLONG_STEPPES },
					}),
					q(30901, {	-- Along the Southern Front
						["sourceQuest"] = 30900,	-- Terror of the Dread Wastes
						["qg"] = 61066,	-- Taran Zhu
						["coord"] = { 76.4, 82.4, TOWNLONG_STEPPES },
					}),
					q(30789, {	-- Arconiss
						["sourceQuest"] = 30787,	-- The Torches
						["qg"] = 60857,	-- Orbiss
						["coord"] = { 67.9, 67.6, TOWNLONG_STEPPES },
						["groups"] = {
							i(81319),	-- Stack of Torches (QI!)
						},
					}),
					q(30791, {	-- Arconiss Thirsts
						["sourceQuest"] = 30815,	-- The Death Of Me
						["qg"] = 60857,	-- Orbiss
						["coord"] = { 67.9, 67.6, TOWNLONG_STEPPES },
						["groups"] = {
							i(81260),	-- Clotted Rodent's Blood (QI!)
						},
					}),
					q(31114, {	-- Assault Deadtalker's Plateau
						["qg"] = 63009,	-- Master Snowdrift
						["coord"] = { 49.5, 70.5, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(31113, {	-- Assault Fire Camp Gai-Cho
						["qg"] = 63009,	-- Master Snowdrift
						["coord"] = { 49.5, 70.5, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(30892, {	-- Back on Their Feet
						["sourceQuest"] = 30891,	-- Treatment for the Troops
						["qg"] = 61470,	-- Septi the Herbalist
						["coord"] = { 75.8, 83.1, TOWNLONG_STEPPES },
						["groups"] = {
							i(82787),	-- Citron-Infused Bandages (QI!)
						},
					}),
					q(30929, {	-- Bad Yak
						["sourceQuests"] = {
							30923,	-- Set the Mantid Back
							30921,	-- The Motives of the Mantid
						},
						["qg"] = 61161,	-- Bluesaddle
						["coord"] = { 39.2, 62.0, TOWNLONG_STEPPES },
					}),
					q(30884, {	-- Behind the Battlefront
						["sourceQuest"] = 30785,	-- Gao-Ran Battlefront
						["qg"] = 61066,	-- Taran Zhu
						["coord"] = { 76.4, 82.4, TOWNLONG_STEPPES },
					}),
					q(31895, {	-- Better Off Dread
						["qg"] = 61584,	-- Sentinel Commander Qipan
						["coord"] = { 39.4, 61.9, TOWNLONG_STEPPES },
						["isBreadcrumb"] = true,
					}),
					q(31047, {	-- Born Free
						["qg"] = 62304,	-- Ban Bearheart
						["coord"] = { 49.0, 70.6, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(30888, {	-- Breach in the Defenses
						["sourceQuest"] = 30887,	-- Unwelcome Intruders
						["qg"] = 61468,	-- Taoshi
						["coord"] = { 79.4, 84.4, TOWNLONG_STEPPES },
						["groups"] = {
							i(81925),	-- Shado-Pan Flare (QI!)
						},
					}),
					q(31044, {	-- Bronze Claws
						["qg"] = 62304,	-- Ban Bearheart
						["coord"] = { 49.0, 70.6, TOWNLONG_STEPPES },
						["isDaily"] = true,
						["groups"] = {
							i(83153),	-- Bronze Claw (QI!)
						},
					}),
					q(31065, {	-- Buried Beneath
						["sourceQuests"] = { 30980 },	-- Heroes of the Shado-Pan
						["qg"] = 62274,	-- Taran Zhu
						["coord"] = { 54.0, 77.8, TOWNLONG_STEPPES },
					}),
					q(31120, {	-- Cheng Bo!
						["qg"] = 63009,	-- Master Snowdrift
						["coord"] = { 49.5, 70.5, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(31032, {	-- Choking the Skies
						["sourceQuest"] = 30976,	-- Joining the Hunt
						["qg"] = 62573,	-- Marksman Ye
						["coord"] = { 51.2, 83.0, TOWNLONG_STEPPES },
						["groups"] = {
							i(83768),	-- Wu Kao Torch (QI!)
							i(88589),	-- Cremating Torch (TOY!)
						},
					}),
					q(30898, {	-- Cutting the Swarm
						["sourceQuests"] = { 30895 },	-- Improvised Ammunition
						["qg"] = 61066,	-- Taran Zhu
						["coord"] = { 76.4, 82.4, TOWNLONG_STEPPES },
						["groups"] = {
							o_repeated({
								i(82723),	-- Volatile Dread Orb (QI!)
								o(211871),	-- Dread Orb
								o(211872),	-- Dread Orb
								o(211873),	-- Dread Orb
							}),
						},
					}),
					q(31043, {	-- Dark Arts
						["qg"] = 62304,	-- Ban Bearheart
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["isDaily"] = true,
						["groups"] = {
							i(83130),	-- Shan'ze Tablet (QI!)
						},
					}),
					q(31199, {	-- Destroy the Siege Weapons!
						["qg"] = 63614,	-- Ling of the Six Pools
						["coord"] = { 49.0, 71.3, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(30979, {	-- Devastation Below
						["sourceQuests"] = { 30978 },	-- Hostile Skies
						["qg"] = 61020,	-- Hawkmaster Nurong
						["coord"] = { 51.6, 87.2, TOWNLONG_STEPPES },
						["groups"] = {
							i(84587),	-- Farwatch Satin Hood
							i(84588),	-- Farwatch Hide Helm
							i(84589),	-- Earthmover Cap
							i(84590),	-- Farwatch Burnished Headcover
							i(84591),	-- Farwatch Silk Cowl
							i(84592),	-- Farwatch Leather Helm
							i(84593),	-- Osul Peak Cap
							i(84594),	-- Farwatch Heavy Helm
							i(84595),	-- Farwatch Armored Helm
						},
					}),
					q(30778, {	-- Dust to Dust
						["sourceQuest"] = 30777,	-- In Search of Suna
						["qg"] = 61261,	-- Ban Bearheart
						["coord"] = { 82.6, 73.0, TOWNLONG_STEPPES },
					}),
					q(31041, {	-- Egg Rescue!
						["qg"] = 62304,	-- Ban Bearheart
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["isDaily"] = true,
						["groups"] = {
							i(83129),	-- Cloudrunner Egg (QI!)
						},
					}),
					q(30970, {	-- Enraged By Hatred
						["sourceQuests"] = { 30901 },	-- Along the Southern Front
						["qg"] = 62436,	-- Taoshi
						["coord"] = { 67.3, 80.8, TOWNLONG_STEPPES },
						["groups"] = {
							i(83741),	-- Cloak of the Hollow
							i(83742),	-- Cloak of Seething Hatred
							i(83743),	-- Scorpion Drape
							i(83744),	-- Fleshripper Cape
							i(83745),	-- Dusklight Drape
						},
					}),
					q(30932, {	-- Father's Footsteps
						["sourceQuest"] = 30931,	-- My Father's Crossbow
						["qg"] = 61584,	-- Sentinel Commander Qipan
						["coord"] = { 39.4, 61.9, TOWNLONG_STEPPES },
					}),
					q(30769, {	-- First Assault
						["sourceQuest"] = 30814,	-- A Foot in the Door
						["qg"] = 60688,	-- Taran Zhu
						["coord"] = { 71.1, 56.6, TOWNLONG_STEPPES },
						["groups"] = {
							i(88095),	-- Mistborne Pauldrons
							i(88094),	-- Mistlurker Pauldrons
							i(88093),	-- Earthmover Pauldron
							i(88092),	-- Goldtalon Pauldron
							i(88091),	-- Swampwalker Pauldrons
							i(88090),	-- Steppebeast Pauldrons
							i(88089),	-- Osul Peak Pauldron
							i(88088),	-- Temple Guardian Pauldron
							i(88087),	-- Palewind Pauldron
						},
					}),
					q(31201, {	-- Friends, Not Food!
						["qg"] = 63614,	-- Ling of the Six Pools
						["coord"] = { 49.0, 71.3, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(31200, {	-- Fumigation
						["qg"] = 63614,	-- Ling of the Six Pools
						["coord"] = { 49.0, 71.3, TOWNLONG_STEPPES },
						["isDaily"] = true,
						["groups"] = {
							i(86532),	-- Bag of Shado-Pan Gas Bombs (QI!)
						},
					}),
					q(30785, {	-- Gao-Ran Battlefront
						["sourceQuests"] = { 30784 },	-- The Point of No Return
						["qg"] = 61261,	-- Ban Beartheart
						["coord"] = { 82.6, 73.0, TOWNLONG_STEPPES },
						["isBreadcrumb"] = true,	-- Hidden once completed Quests at Gao-Ran Battlefront
					}),
					q(30927, {	-- Give Them Peace
						["sourceQuest"] = 30925,	-- Niuzao's Price
						["qg"] = 61584,	-- Sentinel Commander Qipan
						["coord"] = { 39.4, 61.9, TOWNLONG_STEPPES },
					}),
					q(30788, {	-- Golgoss
						["sourceQuest"] = 30787,	-- The Torches
						["qg"] = 60857,	-- Orbiss
						["coord"] = { 67.9, 67.6, TOWNLONG_STEPPES },
						["groups"] = {
							i(81319),	-- Stack of Torches (QI!)
						},
					}),
					q(30790, {	-- Golgoss Hungers
						["sourceQuest"] = 30815,	-- The Death Of Me
						["qg"] = 60857,	-- Orbiss
						["coord"] = { 67.9, 67.6, TOWNLONG_STEPPES },
						["groups"] = {
							o_repeated({
								i(81250),	-- Snarlvine (QI!)
								o(211517),	-- Snarlvine
								o(211518),	-- Snarlvine
							}),
						},
					}),
					q(31048, {	-- Grave Consequences
						["qg"] = 62304,	-- Ban Bearheart
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(30977, {	-- Grounded Welcome
						["sourceQuest"] = 30976,	-- Joining the Hunt
						["qg"] = 62278,	-- Rensai Oakhide
						["coord"] = { 53.9, 78.1, TOWNLONG_STEPPES },
						["groups"] = {
							i(84596),	-- Farwatch Satin Robe
							i(84597),	-- Farwatch Hide Robes
							i(84598),	-- Earthmover Breastplate
							i(84599),	-- Farwatch Burnished Chestguard
							i(84600),	-- Farwatch Silk Robe
							i(84601),	-- Farwatch Leather Tunic
							i(84602),	-- Osul Peak Chestguard
							i(84603),	-- Farwatch Heavy Chestpiece
							i(84604),	-- Farwatch Armored Chestpiece
						},
					}),
					q(30783, {	-- Hatred Becomes Us
						["sourceQuest"] = 30827,	-- What Lies Beneath
						["qg"] = 60864,	-- Yalia Sagewhisper
						["coord"] = { 82.5, 73.0, TOWNLONG_STEPPES },
						["groups"] = {
							i(81417),	-- Totem of Harmony (QI!)
							i(88584),	-- Totem of Harmony (TOY!)
						},
					}),
					heroscall(q(49560, {	-- Hero's Call: Townlong Steppes!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 83,
					})),
					q(30980, {	-- Heroes of the Shado-Pan
						["sourceQuests"] = { 30979 },	-- Devastation Below
						["qg"] = 62786,	-- Hawkmaster Nurong
						["coord"] = { 53.9, 86.9, TOWNLONG_STEPPES },
					}),
					q(30978, {	-- Hostile Skies
						["sourceQuests"] = { 30899 },	-- In Skilled Hands
						["qg"] = 61020,	-- Hawkmaster Nurong
						["coord"] = { 51.6, 87.2, TOWNLONG_STEPPES },
						["groups"] = {
							i(88590),	-- Nurong's Gun
						},
					}),
					q(31045, {	-- Illusions Of The Past
						["qg"] = 62304,	-- Ban Bearheart
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(30895, {	-- Improvised Ammunition
						["sourceQuests"] = {
							30892,	-- Back on Their Feet
							30894,	-- Rummaging Through the Remains
							30893,	-- The Endless Swarm
						},
						["qg"] = 61066,	-- Taran Zhu
						["coord"] = { 76.4, 82.4, TOWNLONG_STEPPES },
						["groups"] = {
							o(211863, {
								i(82722),	-- Krik'thik Limb (QI!)
							}),
							i(88104),	-- Mistborne Pantaloons
							i(88103),	-- Mistlurker Pantaloons
							i(88102),	-- Earthmover Kilt
							i(88101),	-- Goldtalon Pantaloons
							i(88100),	-- Swampwalker Pantaloons
							i(88099),	-- Steppebeast Pantaloons
							i(88098),	-- Osul Peak Legguards
							i(88097),	-- Temple Guardian Pantaloons
							i(88096),	-- Palewind Pantaloons
						},
					}),
					q(30958, {	-- In Battle's Shadow
						["qg"] = 61583,	-- High Adept Paosha
						["coord"] = { 38.9, 62.5, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(30777, {	-- In Search of Suna
						["sourceQuests"] = { 30776 },	-- Jung Duk
						["qg"] = 60687,	-- Ban Bearheart
						["coord"] = { 71.0, 56.5, TOWNLONG_STEPPES },
					}),
					q(30899, {	-- In Skilled Hands
						["sourceQuests"] = { 30976 },	-- Joining the Hunt
						["qg"] = 62274,	-- Taran Zhu
						["coord"] = { 54.0, 78.0, TOWNLONG_STEPPES },
						["groups"] = {
							i(83023),	-- Shado-Pan Crossbow Bolt Bundle (QI!)
						},
					}),
					q(31049, {	-- In Sprite Of Everything
						["qgs"] = {
							62304,	-- Ban Bearheart
							62379,	-- Omnia Mage
							62295,	-- Omnia Mage
							62378,	-- Omnia Priest
						},
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(30897, {	-- In the Wrong Hands
						["sourceQuest"] = 30891,	-- Treatment for the Troops
						["qg"] = 61880,	-- Initiate Chao
						["coord"] = { 70.3, 86.6, TOWNLONG_STEPPES },
						["groups"] = {
							i(82783),	-- Initiate Chao's Sword (QI!)
							i(88586),	-- Chao Cookies
						},
					}),
					q(30972, {	-- Joining the Fight
						["sourceQuests"] = {
							30970,	-- Enraged By Hatred
							30971,	-- Taking Stock
						},
						["qg"] = 62124,	-- Initiate Pao-Me
						["coord"] = { 67.3, 80.6, TOWNLONG_STEPPES },
					}),
					q(30976, {	-- Joining the Hunt
						["sourceQuests"] = { 30975 },	-- The Taking of Dusklight Bridge
						["qg"] = 62736,	-- Taran Zhu
						["coord"] = { 61.1, 83.0, TOWNLONG_STEPPES },
					}),
					q(30776, {	-- Jung Duk
						["sourceQuests"] = {
							30773,	-- Pitching In
							30774,	-- Ranger Rescue
							30772,	-- Seeing Red
						},
						["qg"] = 60684,	-- Suna Silentstrike
						["coord"] = { 67.2, 52.2, TOWNLONG_STEPPES },
						["groups"] = {
							i(83689),	-- Mistborne Cord
							i(83690),	-- Mistlurker Belt
							i(83691),	-- Earthmover Waistguard
							i(83692),	-- Goldtalon Clasp
							i(83693),	-- Swampwalker Cord
							i(83694),	-- Steppebeast Belt
							i(83695),	-- Osul Peak Belt
							i(83696),	-- Temple Guardian Girdle
							i(83697),	-- Palewind Girdle
						},
					}),
					q(31063, {	-- Lao-Chin and Serevex
						["sourceQuest"] = 31065,	-- Buried Beneath
						["qg"] = 62274,	-- Taran Zhu
						["coord"] = { 54.0, 77.8, TOWNLONG_STEPPES },
					}),
					q(30781, {	-- Last Toll of the Yaungol
						["sourceQuest"] = 30777,	-- In Search of Suna
						["qg"] = 60903,	-- Xiao Tu
						["coord"] = { 82.7, 73.1, TOWNLONG_STEPPES },
						["groups"] = {
							i(83746),	-- Torch of Noon
							i(83747),	-- Torch of Dawn
							i(83748),	-- Torch of Dusk
							i(83749),	-- Hatred's Vise
							i(83750),	-- Sha-Blighted Blade
							i(83751),	-- Shado-Pan Ranger's Bow
							i(83752),	-- Hatred's Bite
							i(83753),	-- Dividing Edge
							i(83754),	-- Shado-Pan Ranger's Blade
							i(83755),	-- Bearheart's Club
						},
					}),
					q(31046, {	-- Little Hatchlings
						["qg"] = 62304,	-- Ban Bearheart
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(30793, {	-- Mists' Opportunity
						["sourceQuests"] = {
							30791,	-- Arconiss Thirsts
							30790,	-- Golgoss Hungers
							30792,	-- Orbiss Fades
						},
						["qg"] = 60857,	-- Orbiss
						["coord"] = { 67.9, 67.6, TOWNLONG_STEPPES },
						["groups"] = {
							i(83653),	-- Mistborne Mantle
							i(83654),	-- Mistlurker Spaulders
							i(83655),	-- Earthmover Spaulder
							i(83656),	-- Goldtalon Spaulders
							i(83657),	-- Swampwalker Amice
							i(83658),	-- Steppebeast Spaulders
							i(83659),	-- Osul Peak Spaulder
							i(83660),	-- Temple Guardian Shoulders
							i(83661),	-- Palewind Shoulders
						},
					}),
					q(31266, {	-- Mogu Incursions
						["qg"] = 63009,	-- Master Snowdrift
						["coord"] = { 49.5, 70.5, TOWNLONG_STEPPES },
						["minReputation"] = { FACTION_SHADO_PAN, EXALTED },
					}),
					q(30931, {	-- My Father's Crossbow
						["sourceQuests"] = {	-- [Discord 2023-8-2]
							30923,	-- Set the Mantid Back
							30921,	-- The Motives of the Mantid
						},
						["qg"] = 61539,	-- Ku-Mo
						["coord"] = { 43.8, 65.7, TOWNLONG_STEPPES },
						-- Note: this may be more dependent on phasing than sourceQuest, but this reliably made Ku-mo show up
						["groups"] = {
							i(81891),	-- Gunpowder Casks (QI!)
						},
					}),
					q(30922, {	-- Natural Antiseptic
						["qg"] = 61625,	-- Provisioner Bamfu
						["coord"] = { 49.1, 71.3, TOWNLONG_STEPPES },
					}),
					q(30925, {	-- Niuzao's Price
						["sourceQuests"] = { 30924 },	-- The Wisdom of Niuzao
						["qg"] = 61581,	-- Ogo the Younger
						["coord"] = { 39.3, 62.2, TOWNLONG_STEPPES },
						["groups"] = {
							i(83736),	-- Sigil of Compassion
							i(83737),	-- Sigil of Fidelity
							i(83738),	-- Sigil of Grace
							i(83739),	-- Sigil of Patience
							i(83740),	-- Sigil of Devotion
						},
					}),
					q(31064, {	-- Nurong and Rothek
						["sourceQuest"] = 31065,	-- Buried Beneath
						["qg"] = 62274,	-- Taran Zhu
						["coord"] = { 54.0, 77.8, TOWNLONG_STEPPES },
					}),
					q(31042, {	-- Onyx Hearts
						["qg"] = 62304,	-- Ban Bearheart
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["isDaily"] = true,
						["groups"] = {
							i(83138),	-- Onyx Heart (QI!)
						},
					}),
					q(30792, {	-- Orbiss Fades
						["sourceQuest"] = 30815,	-- The Death Of Me
						["qg"] = 60857,	-- Orbiss
						["coord"] = { 67.9, 67.6, TOWNLONG_STEPPES },
					}),
					q(30771, {	-- Perfect Pitch
						["sourceQuest"] = 30814,	-- A Foot in the Door
						["qg"] = 60688,	-- Taran Zhu
						["coord"] = { 71.1, 56.6, TOWNLONG_STEPPES },
						["groups"] = {
							o_repeated({
								i(81174),	-- Dark Pitch (QI!)
								o(211506),	-- Pitch Pot
								o(211507),	-- Pitch Pot
							}),
						},
					}),
					q(30930, {	-- Pick a Yak
						["sourceQuest"] = 30929,	-- Bad Yak
						["qg"] = 61161,	-- Bluesaddle
						["coord"] = { 35.4, 56.7, TOWNLONG_STEPPES },
						["groups"] = {
							i(82467),	-- Ruthers' Harness (TOY!)
							i(82468),	-- Yak Lasso (QI!)
						},
					}),
					q(30773, {	-- Pitching In
						["sourceQuests"] = {
							30769,	-- First Assault
							30771,	-- Perfect Pitch
							30770,	-- Running Rampant
						},
						["qg"] = 60687,	-- Ban Bearheart
						["coord"] = { 67.2, 52.2, TOWNLONG_STEPPES },
						["groups"] = {
							i(81193),	-- Ban's Explosives (QI!)
							i(88583),	-- Ban's Bag of Bombs
						},
					}),
					q(30774, {	-- Ranger Rescue
						["sourceQuests"] = {
							30769,	-- First Assault
							30771,	-- Perfect Pitch
							30770,	-- Running Rampant
						},
						["qg"] = 60684,	-- Suna Silentstrike
						["coord"] = { 67.2, 52.2, TOWNLONG_STEPPES },
						["groups"] = {
							i(81178),	-- Stone Key (QI!)
						},
					}),
					q(30960, {	-- Returning from the Pass
						["sourceQuests"] = {
							30888,	-- Breach in the Defenses
							30890,	-- The Restless Watch
						},
						["qg"] = 61468,	-- Taoshi
						["coord"] = { 79.4, 84.4, TOWNLONG_STEPPES },
					}),
					q(31061, {	-- Riding the Storm
						["qgs"] = {
							62304,	-- Ban Bearheart
							62295,	-- Omnia Mage
							62379,	-- Omnia Mage
							62378,	-- Omnia Priest
						},
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["isDaily"] = true,
						["groups"] = {
							i(83134),	-- Bronze Claws (QI!)
						},
					}),
					q(30894, {	-- Rummaging Through the Remains
						["sourceQuest"] = 30891,	-- Treatment for the Troops
						["qg"] = 61470,	-- Septi the Herbalist
						["coord"] = { 75.8, 83.1, TOWNLONG_STEPPES },
						["groups"] = {
							i(88585),	-- Dislodged Stinger
						},
					}),
					q(30770, {	-- Running Rampant
						["sourceQuest"] = 30814,	-- A Foot in the Door
						["qg"] = 60688,	-- Taran Zhu
						["coord"] = { 71.1, 56.6, TOWNLONG_STEPPES },
					}),
					q(30772, {	-- Seeing Red
						["sourceQuests"] = {
							30769,	-- First Assault
							30771,	-- Perfect Pitch
							30770,	-- Running Rampant
						},
						["qg"] = 60684,	-- Suna Silentstrike
						["coord"] = { 67.2, 52.2, TOWNLONG_STEPPES },
						["groups"] = {
							i(83671),	-- Mistborne Leggings
							i(83672),	-- Mistlurker Legguards
							i(83673),	-- Earthmover Leggings
							i(83674),	-- Goldtalon Legplates
							i(83675),	-- Swampwalker Trousers
							i(83676),	-- Steppebeast Legguards
							i(83677),	-- Osul Peak Kilt
							i(83678),	-- Temple Guardian Legguards
							i(83679),	-- Palewind Legguards
						},
					}),
					q(30933, {	-- Seeking Father
						["description"] = "This quest is not always available due to zone phasing issues.",
						["sourceQuest"] = 30932,	-- Father's Footsteps
						["qg"] = 65341,	-- Ku-Mo
						["coord"] = { 48.6, 71.0, TOWNLONG_STEPPES },
					}),
					q(30923, {	-- Set the Mantid Back
						["qg"] = 61482,	-- Tai Ho
						["coord"] = { 49.1, 71.2, TOWNLONG_STEPPES },
					}),
					q(30779, {	-- Slaying the Scavengers
						["sourceQuest"] = 30777,	-- In Search of Suna
						["qg"] = 61261,	-- Ban Bearheart
						["coord"] = { 82.6, 73.0, TOWNLONG_STEPPES },
					}),
					q(31116, {	-- Spirit Dust
						["qg"] = 63009,	-- Master Snowdrift
						["coord"] = { 49.5, 70.5, TOWNLONG_STEPPES },
						["isDaily"] = true,
						["groups"] = {
							i(84727),	-- Ancient Spirit Dust (QI!)
						},
					}),
					q(30782, {	-- Spiteful Spirits
						["sourceQuest"] = 30827,	-- What Lies Beneath
						["qg"] = 61261,	-- Ban Bearheart
						["coord"] = { 82.6, 73.0, TOWNLONG_STEPPES },
					}),
					q(31040, {	-- Spiteful Sprites (daily)
						["qg"] = 62304,	-- Ban Bearheart
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(31196, {	-- Sra'vess Wetwork
						["qg"] = 63614,	-- Ling of the Six Pools
						["coord"] = { 49.0, 71.3, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(31277, {	-- Surprise Attack!
						["sourceQuests"] = { 31266 },	-- Mogu Incursions
						["qg"] = 63009,	-- Master Snowdrift
						["coord"] = { 49.5, 70.5, TOWNLONG_STEPPES },
						["minReputation"] = { FACTION_SHADO_PAN, EXALTED },
						["groups"] = {
							i(87768),	-- Onyx Cloud Serpent (MOUNT!)
						},
					}),
					q(30971, {	-- Taking Stock
						["sourceQuest"] = 30901,	-- Along the Southern Front
						["qg"] = 62124,	-- Initiate Pao-Me
						["coord"] = { 67.3, 80.6, TOWNLONG_STEPPES },
						["groups"] = {
							o_repeated({
								i(83024),	-- Shadow-Pan Fire Arrows (QI!)
								o(212135),	-- Shadow-Pan Fire Arrows
								o(212136),	-- Shadow-Pan Fire Arrows
							}),
						},
					}),
					q(30981, {	-- Taoshi and Korvexxis
						["sourceQuest"] = 31065,	-- Buried Beneath
						["qg"] = 62274,	-- Taran Zhu
						["coord"] = { 54.0, 77.8, TOWNLONG_STEPPES },
					}),
					q(31204, {	-- Target of Opportunity: Sra'thik Hivelord
						["qgs"] = {
							63614,	-- Ling of the Six Pools
							63623,	-- Wu Kao Assassin
							63624,	-- Wu Kao Hawkmaster
							63622,	-- Wu Kao Rogue
						},
						["coord"] = { 49.0, 71.3, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(31203, {	-- Target of Opportunity: Sra'thik Swarmlord
						["qgs"] = {
							63614,	-- Ling of the Six Pools
							63623,	-- Wu Kao Assassin
							63624,	-- Wu Kao Hawkmaster
							63622,	-- Wu Kao Rogue
						},
						["coord"] = { 49.0, 71.3, TOWNLONG_STEPPES },
						["isDaily"] = true,
						["groups"] = {
							i(86534),	-- Shiny Shado-Pan Coin (QI!)
							i(86536),	-- Wu Kao Dart of Lethargy (QI!)
						},
					}),
					q(30900, {	-- Terror of the Dread Wastes
						["sourceQuests"] = { 30898 },	-- Cutting the Swarm
						["qg"] = 61021,	-- Taoshi
						["coord"] = { 74.2, 85.0, TOWNLONG_STEPPES },
						["groups"] = {
							i(83726),	-- Gao-Ran Ring
							i(83727),	-- Band of Terror
							i(83728),	-- Seal of Taran Zhu
							i(83729),	-- Ring of Norvakess
							i(83730),	-- Battlefront Band
						},
					}),
					q(30959, {	-- The Big Guns
						["qg"] = 61581,	-- Ogo the Younger
						["coord"] = { 39.3, 62.2, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(31197, {	-- The Bigger They Come...
						["qg"] = 63614,	-- Ling of the Six Pools
						["coord"] = { 49.0, 71.3, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(31127, {	-- The Challenger's Ring: Chao the Voice
						["description"] = "Only available when |cFFFFD700Yaungol|r themed dailies are available.",
						["qg"] = 63009,	-- Master Snowdrift
						["coord"] = { 49.5, 70.5, TOWNLONG_STEPPES },
						["minReputation"] = { FACTION_SHADO_PAN, HONORED },
					}),
					q(31220, {	-- The Challenger's Ring: Hawkmaster Nurong
						["description"] = "Only available when |cFFFFD700Mantid|r themed dailies are available.",
						["qg"] = 63614,	-- Ling of the Six Pools
						["coord"] = { 49.0, 71.3, TOWNLONG_STEPPES },
						["minReputation"] = { FACTION_SHADO_PAN, HONORED },
					}),
					q(31128, {	-- The Challenger's Ring: Lao-Chin the Iron Belly
						["description"] = "Only available when |cFFFFD700Yaungol|r themed dailies are available.",
						["qg"] = 63009,	-- Master Snowdrift
						["coord"] = { 49.5, 70.5, TOWNLONG_STEPPES },
						["minReputation"] = { FACTION_SHADO_PAN, REVERED },
					}),
					q(31038, {	-- The Challenger's Ring: Snow Blossom
						["description"] = "Only available when |cFFFFD700Mogu|r themed dailies are available.",
						["qg"] = 62304,	-- Ban Bearheart
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["minReputation"] = { FACTION_SHADO_PAN, HONORED },
					}),
					q(31221, {	-- The Challenger's Ring: Tenwu of the Red Smoke
						["description"] = "Only available when |cFFFFD700Mantid|r themed dailies are available.",
						["qg"] = 63614,	-- Ling of the Six Pools
						["coord"] = { 49.0, 71.3, TOWNLONG_STEPPES },
						["minReputation"] = { FACTION_SHADO_PAN, REVERED },
					}),
					q(31104, {	-- The Challenger's Ring: Yalia Sagewhisper
						["description"] = "Only available when |cFFFFD700Mogu|r themed dailies are available.",
						["qg"] = 62304,	-- Ban Bearheart
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["minReputation"] = { FACTION_SHADO_PAN, REVERED },
					}),
					q(31118, {	-- The Deadtalker Cipher
						["qg"] = 63009,	-- Master Snowdrift
						["coord"] = { 49.5, 70.5, TOWNLONG_STEPPES },
						["isDaily"] = true,
						["groups"] = {
							i(84759),	-- Ciphered Scroll (QI!)
						},
					}),
					q(30815, {	-- The Death of Me
						["sourceQuests"] = {
							30789,	-- Arconiss
							30788,	-- Golgoss
						},
						["qg"] = 60857,	-- Orbiss
						["coord"] = { 67.9, 67.6, TOWNLONG_STEPPES },
						["groups"] = {
							i(83756),	-- Sumprush Mace
							i(83757),	-- Halcyon Death
							i(83758),	-- Shield of Orbiss
							i(83759),	-- Shield of the Lurking Mist
							i(83760),	-- Contorted Blade
							i(83761),	-- Mist-Shaman's Barbs
						},
					}),
					q(30893, {	-- The Endless Swarm
						["sourceQuests"] = { 30960 },	-- Returning from the Pass
						["qg"] = 61066,	-- Taran Zhu
						["coord"] = { 76.4, 82.4, TOWNLONG_STEPPES },
						["groups"] = {
							i(83698),	-- Mistborne Gloves
							i(83699),	-- Mistlurker Gloves
							i(83700),	-- Earthmover Gaunlets
							i(83701),	-- Goldtalon Gloves
							i(83702),	-- Swampwalker Handguards
							i(83703),	-- Steppebeast Gloves
							i(83704),	-- Osul Peak Gauntlets
							i(83705),	-- Temple Guardian Gauntlets
							i(83706),	-- Palewind Gauntlets
						},
					}),
					q(31119, {	-- The Enemy of My Enemy... Is Still My Enemy!
						["qg"] = 63009,	-- Master Snowdrift
						["coord"] = { 49.5, 70.5, TOWNLONG_STEPPES },
						["isDaily"] = true,
						["groups"] = {
							o(212877, {	-- Highly Explosive Yaungol Oil Barrel
								["coords"] = {
									{ 61.4, 41.0, TOWNLONG_STEPPES },
									{ 61.4, 42.4, TOWNLONG_STEPPES },
									{ 61.4, 43.0, TOWNLONG_STEPPES },
									{ 61.4, 43.8, TOWNLONG_STEPPES },
									{ 61.7, 43.8, TOWNLONG_STEPPES },
									{ 62.3, 40.4, TOWNLONG_STEPPES },
									{ 62.3, 40.6, TOWNLONG_STEPPES },
									{ 62.4, 43.3, TOWNLONG_STEPPES },
									{ 63.0, 40.8, TOWNLONG_STEPPES },
									{ 63.4, 43.4, TOWNLONG_STEPPES },
									{ 63.5, 43.3, TOWNLONG_STEPPES },
									{ 63.5, 43.5, TOWNLONG_STEPPES },
									{ 63.8, 41.9, TOWNLONG_STEPPES },
								},
								["groups"] = { i(84762) },	-- Highly Explosive Yaungol Oil (QI!)
							}),
						},
					}),
					q(30775, {	-- The Exile
						["sourceQuests"] = {
							30769,	-- First Assault
							30771,	-- Perfect Pitch
							30770,	-- Running Rampant
						},
						["qg"] = 60735,	-- Katak the Defeated
						["coord"] = { 66.9, 51.4, TOWNLONG_STEPPES },
					}),
					q(30963, {	-- The Field Armorer
						["qg"] = 61625,	-- Provisioner Bamfu
						["coord"] = { 49.1, 71.3, TOWNLONG_STEPPES },
						["groups"] = {
							i(83680),	-- Mistborne Treads
							i(83681),	-- Mistlurker Footguards
							i(83682),	-- Earthmover Sabatons
							i(83683),	-- Goldtalon Greaves
							i(83684),	-- Swampwalker Treads
							i(83685),	-- Steppebeast Boots
							i(83686),	-- Osul Peak Sabatons
							i(83687),	-- Temple Guardian Warboots
							i(83688),	-- Palewind Warboots
						},
					}),
					q(31039, {	-- The Mogu Menace
						["qg"] = 62304,	-- Ban Bearheart
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(31106, {	-- The Mogu Menace
						["qg"] = 62304,	-- Ban Bearheart
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(31105, {	-- The Mogu Menace
						["qg"] = 62304,	-- Ban Bearheart
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(30921, {	-- The Motives of the Mantid
						["qg"] = 61482,	-- Tai Ho
						["coord"] = { 49.1, 71.2, TOWNLONG_STEPPES },
						["groups"] = {
							i(83707),	-- Mistborne Cuffs
							i(83708),	-- Mistlurker Bindings
							i(83709),	-- Earthmover Armbands
							i(83710),	-- Goldtalon Bracers
							i(83711),	-- Swampwalker Cuffs
							i(83712),	-- Steppebeast Armwraps
							i(83713),	-- Osul Peak Wristwraps
							i(83714),	-- Temple Guardian Armplates
							i(83715),	-- Palewind Bracers
						},
					}),
					q(30957, {	-- The Overwhelming Swarm
						["qg"] = 61584,	-- Sentinel Commander Qipan
						["coord"] = { 39.4, 61.9, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					q(30784, {	-- The Point of No Return
						["sourceQuests"] = {
							30783,	-- Hatred Becomes Us
							30782,	-- Spiteful Spirits
						},
						["qg"] = 61261,	-- Ban Bearheart
						["coord"] = { 82.6, 73.0, TOWNLONG_STEPPES },
						["groups"] = {
							i(81430),	-- Totem of Harmony (QI!)
							i(83662),	-- Mistborne Robe
							i(83663),	-- Mistlurker Tunic
							i(83664),	-- Earthmover Armor
							i(83665),	-- Goldtalon Chestguard
							i(83666),	-- Swampwalker Robe
							i(83667),	-- Steppebeast Tunic
							i(83668),	-- Osul Peak Armor
							i(83669),	-- Temple Guardian Chestpiece
							i(83670),	-- Palewind Chestpiece
						},
					}),
					q(30890, {	-- The Restless Watch
						["sourceQuest"] = 30887,	-- Unwelcome Intruders
						["qg"] = 61468,	-- Taoshi
						["coord"] = { 79.4, 84.4, TOWNLONG_STEPPES },
						["groups"] = {
							i(84610),	-- Ring of Shallowstep Pass
							i(84611),	-- Ring of the Watchful Eye
							i(84612),	-- Band of the Faithful Scout
							i(84613),	-- Taoshi's Signet
							i(84614),	-- Seal of the Restless Watch
						},
					}),
					q(31688, {	-- The Search for Restless Leng
						["sourceQuest"] = 31065,	-- Buried Beneath
						["qg"] = 62278,	-- Rensai Oakhide
						["coord"] = { 53.9, 78.1, TOWNLONG_STEPPES },
					}),
					q(30968, {	-- The Sha of Hatred
						["sourceQuests"] = {
							31063,	-- Lao-Chin and Serevex
							31064,	-- Nurong and Rothek
							30981,	-- Taoshi and Korvexxis
						},
						["qg"] = 62275,	-- Taran Zhu
						["coord"] = { 47.4, 78.8, TOWNLONG_STEPPES },
						["groups"] = {
							i(83644),	-- Mistborne Hood
							i(83645),	-- Mistlurker Helm
							i(83646),	-- Earthmover Helm
							i(83647),	-- Goldtalon Headcover
							i(83648),	-- Swampwalker Cowl
							i(83649),	-- Steppebeast Helm
							i(83650),	-- Osul Peak Helm
							i(83651),	-- Temple Guardian Helm
							i(83652),	-- Palewind Helm
						},
					}),
					q(31386, {	-- The Shado-Pan Offensive (A)
						["qg"] = 64030,	-- Lao Lang
						["coord"] = { 84.4, 61.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(31388, {	-- The Shado-Pan Offensive (H)
						["qg"] = 64002,	-- Sang-Bo
						["coord"] = { 63.0, 21.2, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30956, {	-- The Siege Swells
						["qg"] = 61580,	-- Ogo the Elder
						["coord"] = { 39.3, 62.2, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, q(32681, {	-- The Storm Gathers (A)
						["sourceQuest"] = 32679,	-- Thunder Calls (A)
						["qg"] = 70360,	-- Vareesa Windrunner
						["coord"] = { 49.8, 69.0, TOWNLONG_STEPPES },
						["timeline"] = { ADDED_5_2_0 },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(95567),	-- Kirin Tor Beacon (TOY!)
						},
					})),
					applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, q(32680, {	-- The Storm Gathers (H)
						["sourceQuest"] = 32678,	-- Thunder Calls (H)
						["qg"] = 70358,	-- Scout Captain Elsia
						["coord"] = { 50.7, 73.3, TOWNLONG_STEPPES },
						["timeline"] = { ADDED_5_2_0 },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(95568),	-- Sunreaver Beacon (TOY!)
						},
					})),
					q(30975, {	-- The Taking of Dusklight Bridge
						["sourceQuest"] = 30973,	-- Up In Flames
						["qg"] = 61016,	-- Lao-Chin the Iron Belly
						["coord"] = { 61.5, 79.3, TOWNLONG_STEPPES },
						["groups"] = {
							i(83721),	-- Bloodletter Band
							i(83722),	-- Dusklight Band
							i(83723),	-- Lao-Chin's Ring
							i(83724),	-- Kor'thik Seal
							i(83725),	-- Fleshrender Ring
						},
					}),
					q(30926, {	-- The Terrible Truth
						["sourceQuest"] = 30925,	-- Niuzao's Price
						["qg"] = 61580,	-- Ogo the Elder
						["coord"] = { 39.3, 62.2, TOWNLONG_STEPPES },
						["groups"] = {
							i(83731),	-- Mark of the Catacombs
							i(83732),	-- Sigil of the Catacombs
							i(83733),	-- Emblem of the Catacombs
							i(83734),	-- Medallion of the Catacombs
							i(83735),	-- Symbol of the Catacombs
						},
					}),
					q(31656, {	-- The Threat in the South
						["sourceQuests"] = { 30968 },	-- The Sha of Hatred
						["qg"] = 62802,	-- Taoshi
						["coord"] = { 46.1, 82.4, TOWNLONG_STEPPES },
						["isBreadcrumb"] = true,
					}),
					q(30787, {	-- The Torches
						["sourceQuests"] = { 30786 },	-- A Spear Through My Side, A Chain Through My Soul
						["qg"] = 60857,	-- Orbiss
						["coord"] = { 67.9, 67.6, TOWNLONG_STEPPES },
						["groups"] = {
							i(81176),	-- Mist-Shaman's Torch (QI!)
							i(84605),	-- Mist-Shaman Necklace
							i(84606),	-- Pendant of Orbiss
							i(84607),	-- Locket of the Sumprushes
							i(84608),	-- Pendant of Revenge
							i(84609),	-- Amulet of Longing
						},
					}),
					q(30924, {	-- The Wisdom of Niuzao
						["sourceQuests"] = {
							30923,	-- Set the Mantid Back
							30921,	-- The Motives of the Mantid
						},
						["qg"] = 61482,	-- Tai Ho
						["coord"] = { 49.1, 71.2, TOWNLONG_STEPPES },
					}),
					q(30896, {	-- Thieves and Troublemakers
						["sourceQuest"] = 30891,	-- Treatment for the Troops
						["qg"] = 61881,	-- Initiate Feng
						["coord"] = { 70.4, 86.3, TOWNLONG_STEPPES },
						["groups"] = {
							o_repeated({
								i(82342),	-- Violet Citron (QI!)
								o(211719),	-- Violet Citron
								o(211721),	-- Violet Citron
							}),
							i(88487),	-- Volatile Orb
						},
					}),
					q(31687, {	-- Thinning the Sik'thik
						["sourceQuest"] = 31065,	-- Buried Beneath
						["qg"] = 62278,	-- Rensai Oakhide
						["coord"] = { 53.9, 78.1, TOWNLONG_STEPPES },
						["groups"] = {
							i(83716),	-- Sik'thik Locket
							i(83717),	-- Oakhide Choker
							i(83718),	-- Rensai's Necklace
							i(83719),	-- Crossroads Pendant
							i(83720),	-- Watchpost Amulet
						},
					}),
					q(31110, {	-- Through the Portal
						["qg"] = 62810,	-- Moshu the Arcane
						["coord"] = { 28.8, 22.5, TOWNLONG_STEPPES },
						["groups"] = {
							i(84102),	-- Ancient Arcane Powder (QI!)
						},
					}),
					applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, q(32679, {	-- Thunder Calls (A)
						["qg"] = 64610,	-- Lyalia
						["coord"] = { 84.0, 58.8, VALE_OF_ETERNAL_BLOSSOMS },
						["timeline"] = { ADDED_5_2_0 },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					})),
					applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, q(32678, {	-- Thunder Calls (H)
						["qg"] = 64566,	-- Sunwalker Dezco
						["coord"] = { 62.8, 28.0, VALE_OF_ETERNAL_BLOSSOMS },
						["timeline"] = { ADDED_5_2_0 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					})),
					q(30780, {	-- Totemic Research
						["sourceQuest"] = 30777,	-- In Search of Suna
						["qg"] = 60864,	-- Yalia Sagewhisper
						["coord"] = { 82.5, 73.0, TOWNLONG_STEPPES },
						["groups"] = {
							o(211566, {	-- Palewind Totem
								i(81355),	-- Palewind Totem (QI!)
							}),
						},
					}),
					q(30889, {	-- Trap Setting
						["sourceQuest"] = 30887,	-- Unwelcome Intruders
						["qg"] = 61467,	-- Mao the Lookout
						["coord"] = { 79.3, 84.4, TOWNLONG_STEPPES },
					}),
					q(30891, {	-- Treatment for the Troops
						["qg"] = 61470,	-- Septi the Herbalist
						["coord"] = { 75.8, 83.1, TOWNLONG_STEPPES },
					}),
					q(30887, {	-- Unwelcome Intruders
						["sourceQuests"] = { 30884 },	-- Behind the Battlefront
						["qg"] = 61469,	-- Taoshi
						["coord"] = { 76.9, 78.7, TOWNLONG_STEPPES },
					}),
					q(30973, {	-- Up In Flames
						["sourceQuest"] = 30972,	-- Joining the Fight
						["qg"] = 62273,	-- Taran Zhu
						["coord"] = { 61.6, 79.3, TOWNLONG_STEPPES },
						["groups"] = {
							i(83136),	-- Quiver of Shado-Pan Fire Arrows (QI!)
							i(88113),	-- Mistborne Waistband
							i(88112),	-- Mistlurker Waistband
							i(88111),	-- Earthmover Belt
							i(88110),	-- Goldtalon Waistband
							i(88109),	-- Swampwalker Waistband
							i(88108),	-- Steppebeast Waistband
							i(88107),	-- Osul Peak Waistguard
							i(88106),	-- Temple Guardian Waistband
							i(88105),	-- Palewind Waistband
						},
					}),
					q(31117, {	-- Uruk!
						["qg"] = 63009,	-- Master Snowdrift
						["coord"] = { 49.5, 70.5, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					warchiefscommand(q(49542, {	-- Warchief's Command: Townlong Steppes!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 83,
					})),
					q(30827, {	-- What Lies Beneath
						["sourceQuests"] = {
							30778,	-- Dust to Dust
							30781,	-- Last Toll of the Yaungol
							30779,	-- Slaying the Scavengers
							30780,	-- Totemic Research
						},
						["qg"] = 60864,	-- Yalia Sagewhisper
						["coord"] = { 82.5, 73.0, TOWNLONG_STEPPES },
						["groups"] = {
							i(81356),	-- Shadow-Pan Torch (QI!)
						},
					}),
					q(31062, {	-- When The Dead Speak
						["qgs"] = {
							62304,	-- Ban Bearheart
							62295,	-- Omnia Mage
							62379,	-- Omnia Mage
							62378,	-- Omnia Priest
						},
						["coord"] = { 49.0, 70.4, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
					o(214175, {	-- Bag of Wu Kao Supplies
						["questID"] = 31466,
						["coord"] = { 49.0, 71.2, TOWNLONG_STEPPES },
						["isDaily"] = true,
					}),
				}),
				n(RARES, {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							50772,	-- Eshelon
							50355,	-- Kah'tir
							50734,	-- Lith'ik the Stalker
							50333,	-- Lon the Bull
							50344,	-- Norlaxx
							50791,	-- Siltriss the Sharpener
							50832,	-- The Yowler
							50820,	-- Yul Wildpaw
						},
						["groups"] = {
							i(87625),	-- Congealed Mist Amulet
							i(87623),	-- Razor-Sharp Chitin Choker
							i(87626),	-- Suna's Shattered Locket
							i(87624),	-- Yaungol Mist-Shaman's Amulet
							i(87622),	-- Yoke of Niuzao
							i(87217),	-- Small Bag of Goods
						},
					}),
					n(50772, {	-- Eshelon
						["coords"] = {
							{ 65.4, 87.6, TOWNLONG_STEPPES },
							{ 67.8, 87.6, TOWNLONG_STEPPES },
							{ 68.8, 89.0, TOWNLONG_STEPPES },
						},
						["groups"] = {
							i(87222),	-- Big Bag of Linens
						},
					}),
					n(66467, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- G'nathus
						["coords"] = {
							{ 17.8, 11.6, TOWNLONG_STEPPES },
							{ 20.4, 7.40, TOWNLONG_STEPPES },
							{ 36.4, 7.80, TOWNLONG_STEPPES },
						},
						["groups"] = {
							i(94595),	-- Spawn of G'nathus (PET!)
						},
					})),
					n(66900, {	-- Huggalon the Heart Watcher
						["coord"] = { 65.6, 23.8, TOWNLONG_STEPPES_NIUZAO_CATACOMBS },
						["description"] = "Located in the catacombs.",
						["groups"] = {
							i(90067),	-- B. F. F. Necklace (TOY!)
						},
					}),
					n(50355, {	-- Kah'tir
						["coord"] = { 63.0, 35.6, TOWNLONG_STEPPES },
						["groups"] = {
							i(87218, {	-- Big Bag of Arms
								["sym"] = {{"select","itemID",
									90723,	-- Arness's Scaled Leggings
									90721,	-- Cournith Waterstrider's Silken Finery
									87642,	-- Darkstaff of Annihilation
									87643,	-- Fangcracker Battlemace
									87650,	-- Fishsticker Crossbow
									90725,	-- Gaarn's Leggings of Infestation
									90719,	-- Go-Kan's Golden Trousers
									87646,	-- Needlefang Throatripper
									87652,	-- Ook-Breaker Mace
									87651,	-- Pathwalker Greatstaff
									87649,	-- Pool-Stirrer
									90717,	-- Qu'nas' Apocryphal Legplates
									90720,	-- Silent Leggings of the Ghostpaw
									90724,	-- Spriggin's Sproggin' Leggin'
									90718,	-- Torik-Ethis' Bloodied Legguards
								}},
								["groups"] = {
									-- likely intended from actual Rares, but not actually working as intended since MoP it seems
									i(90722),	-- Torik-Ethis' Gilded Legplates
									i(87641),	-- Yaungol Battle Barrier
								},
							}),
						},
					}),
					n(50734, {	-- Lith'ik the Stalker
						["coords"] = {
							{ 42.0, 78.4, TOWNLONG_STEPPES },
							{ 46.4, 74.4, TOWNLONG_STEPPES },
							{ 47.8, 84.2, TOWNLONG_STEPPES },
							{ 47.8, 88.6, TOWNLONG_STEPPES },
						},
						["groups"] = {
							i(87221),	-- Big Bag of Jewels
						},
					}),
					n(50333, {	-- Lon the Bull
						["coords"] = {
							{ 66.6, 44.4, TOWNLONG_STEPPES },
							{ 67.8, 49.2, TOWNLONG_STEPPES },
							{ 66.6, 52.8, TOWNLONG_STEPPES },
							{ 65.4, 50.6, TOWNLONG_STEPPES },
						},
						["groups"] = {
							i(87219),	-- Huge Bag of Herbs
						},
					}),
					n(50344, {	-- Norlaxx
						["coord"] = { 54.0, 63.4, TOWNLONG_STEPPES },
						["groups"] = {
							i(87220, {	-- Big Bag of Mysteries
								["sym"] = {{"select","itemID",87218},{"pop"}},	-- Big Bag of Arms
							}),
						},
					}),
					n(66938, {	-- Odd'nirok <Seer of Kril'mandar>
						["coord"] = { 42.3, 92.67, TOWNLONG_STEPPES },
						["groups"] = {
							i(90171),	-- Odd'nirok's Clamshell
						},
					}),
					n(50791, {	-- Siltriss the Sharpener
						["coord"] = { 59.2, 85.6, TOWNLONG_STEPPES },
						["groups"] = {
							i(87223),	-- Big Bag of Skins
						},
					}),
					n(50832, {  -- The Yowler
						["coord"] = { 67.6, 74.6, TOWNLONG_STEPPES },
						["groups"] = {
							i(87225),	-- Big Bag of Food
						},
					}),
					n(50820, {	-- Yul Wildpaw
						["coord"] = { 32.0, 61.8, TOWNLONG_STEPPES },
						["groups"] = {
							i(87224),	-- Big Bag of Wonders
						},
					}),
				}),
				n(TREASURES, {
					o(213961, {	-- Abandoned Crate of Goods
						["questID"] = 31427,	-- Abandoned Crate of Goods
						["coord"] = { 62.8, 34.1, TOWNLONG_STEPPES },
					}),
					o(213844, {	-- Amber Encased Moth
						["questID"] = 31426,
						["coord"] = { 65.8, 86.1, TOWNLONG_STEPPES },
						["groups"] = {
							i(86472),	-- Amber Encased Moth
						},
					}),
					o(213418, {	-- Dominance
						["coord"] = { 65.5, 50.0, TOWNLONG_STEPPES },
					}),
					o(213956, {	-- Fragment of Dread
						["questID"] = 31423,
						["coords"] = {
							{ 64.2, 20.3, TOWNLONG_STEPPES_NIUZAO_CATACOMBS },
							{ 37.7, 87.0, TOWNLONG_STEPPES_NIUZAO_CATACOMBS },
							{ 47.8, 89.0, TOWNLONG_STEPPES_NIUZAO_CATACOMBS },
							{ 56.5, 64.7, TOWNLONG_STEPPES_NIUZAO_CATACOMBS },
						},
						["description"] = "Entrance is at |cFFFFD70032.6 61.8|r. There are 4 possible spawn points.",
						["groups"] = {
							i(86516),	-- Fragment of Dread
						},
					}),
					o(213959, {	-- Hardened Sap of Kri'vess
						["questID"] = 31424,
						["description"] = "Located all around Kri'vess.",
						["coord"] = { 53.9, 58.4, TOWNLONG_STEPPES },
						["groups"] = {
							i(86517),	-- Hardened Sap of Kri'vess
						},
					}),
					o(213445, {	-- The Emperor's Burden - Part 5
						["coord"] = { 37.7, 62.9, TOWNLONG_STEPPES },
					}),
					o(213420, {	-- Trapped in a Strange Land
						["coord"] = { 84.1, 72.8, TOWNLONG_STEPPES },
					}),
					o(213960, {	-- Yaungol Fire Carrier
						["coords"] = {
							{ 66.2, 44.7, TOWNLONG_STEPPES },
							{ 66.8, 48.0, TOWNLONG_STEPPES },
						},
						["questID"] = 31425,
						["groups"] = {
							i(86518),	-- Yaungol Fire Carrier
						},
					}),
				}),
				n(VENDORS, {
					n(65171, {	-- Alin the Finder <Adventuring Supplies>
						["coord"] = { 71.4, 57.2, TOWNLONG_STEPPES },
						["sym"] = {{"sub","common_vendor",61749}},	-- The Metal Paw <Adventuring Supplies>
					}),
					applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, n(70346, {	-- Ao Pye <Shado-Pan Assault Quartermaster>
						["coord"] = { 38.0, 64.6, TOWNLONG_STEPPES },
						["timeline"] = { ADDED_5_2_0 },
						["groups"] = bubbleDownClassicRep(FACTION_SHADO_PAN_ASSAULT, {
							{		-- Neutral
								i(95146),	-- Destroyer's Battletags
								i(95143),	-- Flanker's Battletags
								i(95145),	-- Mender's Battletags
								i(95142),	-- Striker's Battletags
								i(95144),	-- Vanguard's Battletags
							}, {	-- Friendly
								i(95129),	-- Axebinder Wristguards
								i(95140),	-- Band of the Shado-Pan Assault
								i(95111),	-- Bloodstained Skullsqueezers
								i(95128),	-- Bonecrusher Bracers
								i(95135),	-- Bracers of Shielding Thought
								i(95076, {	-- Breastplate of Brutal Strikes
									["cost"] = 5084800,	-- 508g 48s
								}),
								i(94508),	-- Brutal Talisman of the Shado-Pan Assault
								i(95079, {	-- Carapace of Segmented Scale
									["cost"] = 5393300,	-- 539g 33s
								}),
								i(95123, {	-- Charfire Leggings
									["cost"] = 5198800,	-- 519g 88s
								}),
								i(95087),	-- Cracklebite Links
								i(95108),	-- Daggerfinger Clutches
								i(95088),	-- Darkfang Belt
								i(95118),	-- Dreamweaver Drape
								i(95081),	-- Fire Support Robes
								i(95090),	-- Firestrike Cord
								i(95106),	-- Flameweaver Handwraps
								i(95109),	-- Gauntlets of the Longbow
								i(95105),	-- Ghostbinder Grips
								i(95075, {	-- Gianttooth Chestplate
									["cost"] = 5065600,	-- 506g 56s
								}),
								i(95091),	-- Girdle of Glowing Light
								i(95107),	-- Gloves of Enduring Renewal
								i(95074, {	-- Hauberk of Gleaming Fire
									["cost"] = 5122600,	-- 512g 26s
								}),
								i(95134),	-- Hearthfire Armwraps
								i(95127, {	-- Homeguard Leggings
									["cost"] = 5412400,	-- 541g 24s
								}),
								i(95126, {	-- Kilt of Rising Thunder
									["cost"] = 5255900,	-- 525g 59s
								}),
								i(95125, {	-- Legguards of Hidden Knives
									["cost"] = 5237200,	-- 523g 72s
								}),
								i(95120),	-- Legguards of Renewal
								i(95116),	-- Longshot Forestcloak
								i(95141),	-- Loop of the Shado-Pan Assault
								i(95115),	-- Many-Layered Scalecloak
								i(95089),	-- Martiean's Splitleaf Girdle
								i(95086),	-- Nightflight Chain
								i(95131),	-- Powderburn Bracers
								i(95078, {	-- Raiment of Silent Stars
									["cost"] = 5431600,	-- 543g 16s
								}),
								i(95084),	-- Reinforced Spiritplate Girdle
								i(95139),	-- Ring of the Shado-Pan Assault
								i(95082),	-- Robes of Misty Bindings
								i(95077, {	-- Roofstalker Shaddowwrap
									["cost"] = 5412400,	-- 541g 24s
								}),
								i(95137),	-- Seal of the Shado-Pan Assault
								i(95117),	-- Shadowspike Cloak
								i(95138),	-- Signet of the Shado-Pan Assault
								i(95080, {	-- Skinsealer Tunic
									["cost"] = 5374600,	-- 537g 46s
								}),
								i(95130),	-- Softscar Armplates
								i(94509),	-- Soothing Talisman of the Shado-Pan Assault
								i(95114),	-- Spikeshard Greatcloak
								i(95132),	-- Spiritcaller Cuffs
								i(94507),	-- Steadfast Talisman of the Shado-Pan Assault
								i(95110),	-- Stoneward Gauntlets
								i(95083),	-- Swordhook Slingbelt
								i(95119, {	-- Thunderbeaker Legplates
									["cost"] = 5431600,	-- 543g 16s
								}),
								i(95112),	-- Totemshaper Gloves
								i(95113),	-- Touch of Soothing Mists
								i(95136),	-- Troll-Burner Bracers
								i(95124, {	-- Trousers of Waning Shadow
									["cost"] = 5218000,	-- 521g 80s
								}),
								i(95121),	-- Vaultbreaker Greaves
								i(94511),	-- Vicious Talisman of the Shado-Pan Assault
								i(94510),	-- Volatile Talisman of the Shado-Pan Assault
								i(95085),	-- Waistplate of Channeled Mending
								i(95133),	-- Willow-Weave Armbands
								i(95122, {	-- Wisp-Weave Pantaloons
									["cost"] = 5179700,	-- 517g 97s
								}),
							}, {	-- Honored
							}, {	-- Revered
							}, {	-- Exalted
								i(95102, {	-- Frost-Kissed Shoulderwraps
									["cost"] = 10000000,	-- 1,000g
								}),
								i(95101, {	-- Halo-Graced Mantle
									["cost"] = 10000000,	-- 1,000g
								}),
								i(95097, {	-- Heartroot Shoulderguards
									["cost"] = 10000000,	-- 1,000g
								}),
								i(95099, {	-- Lightning Strike Mantle
									["cost"] = 10000000,	-- 1,000g
								}),
								i(97131),	-- Shado-Pan Assault Tabard
								i(95104, {	-- Shoulderguards of Potentiation
									["cost"] = 10000000,	-- 1,000g
								}),
								i(95096, {	-- Shoulders of Demonic Dreams
									["cost"] = 10000000,	-- 1,000g
								}),
								i(95098, {	-- Sightblinder Shoulderguards
									["cost"] = 10000000,	-- 1,000g
								}),
								i(95103, {	-- Sparksmasher Pauldrons
									["cost"] = 10000000,	-- 1,000g
								}),
								i(95095, {	-- Targetblinder Spaulders
									["cost"] = 10000000,	-- 1,000g
								}),
								i(95100, {	-- Wallwalker Spaulders
									["cost"] = 10000000,	-- 1,000g
								}),
							},
						}),
					})),
					n(64607, {	-- Commander Lo Ping <Justice Quartermaster>
						["coord"] = { 37.8, 64.6, TOWNLONG_STEPPES },
						-- all items are available via faction vendors in/near main city
						["sym"] = {{"select","itemID",
							89527,	-- Amulet of Swirling Mists
							89532,	-- Bladesong Cloak
							89642,	-- Bracers of Eternal Resolve
							89648,	-- Bracers of Inner Light
							89660,	-- Brambleguard Leggings
							89655,	-- Brushcutter's Gloves
							89671,	-- Chestplate of the Stone Lion
							89533,	-- Cloak of Ancient Curses
							89537,	-- Cloak of the Silent Mountain
							89645,	-- Cruel Mercy Bracers
							89650,	-- Emperor's Riding Gloves
							89647,	-- Entombed Traitor's Wristguards
							89523,	-- Etched Golden Loop
							89656,	-- Gauntlets of Restraint
							89654,	-- Gloves of Forgotten Wisdom
							89531,	-- Gorget of Usurped Kings
							89670,	-- Inner Serenity Chestplate
							89651,	-- Krompf's Fine-Tuning Gloves
							89665,	-- Leggings of Ponderous Advance
							89663,	-- Leggings of Twisted Vines
							89659,	-- Leggings of Unfinished Conquest
							89522,	-- Mark of the Dancing Crane
							89232,	-- Mogu Rune of Paralysis
							89668,	-- Mountain Stream Ringmail
							89528,	-- Necklace of Jade Pearls
							89529,	-- Pendant of Endless Inquisiton
							89534,	-- Pressed Flower Cloak
							89667,	-- Refurbished Zandalari Vestment
							89535,	-- Ribcracker's Cloak
							89673,	-- Robe of Eternal Dynasty
							89672,	-- Robe of Quiet Meditation
							89646,	-- Runoff Wristguards
							89649,	-- Serrated Forearm Guards
							88995,	-- Shado-Pan Dragon Gun
							89526,	-- Signet of the Slumbering Emperor
							89662,	-- Snowpack Waders
							89524,	-- Sorcerer-King's Seal
							89658,	-- Subversive Leggings
							89644,	-- Sudden Insight Bracers
							89653,	-- Surehand Grips
							89525,	-- Thunderstone Ring
							89661,	-- Tough Mushanhide Leggings
							89643,	-- Tranquility Bindings
							89530,	-- Triumphant Conqueror's Chain
							89669,	-- Undergrowth Stalker Chestpiece
							89664,	-- Valiant's Shinguards
							89666,	-- Vestment of the Ascendant Tribe
							89657,	-- Wall Breaker Gauntlets
							89652,	-- Wandering Friar's Gloves
						}},
						["groups"] = {
							-- #if AFTER 6.0.1
							currency(697, {	-- Elder Charm of Good Fortune
								["cost"] = { { "c", 738, 20 } },	-- 20x Lesser Charm of Good Fortune
								["timeline"] = { ADDED_6_0_2 },
							}),
							-- #endif
						},
					}),
					n(64606, {	-- Commander Oxheart <Valor Quartermaster>
						["coord"] = { 37.8, 64.6, TOWNLONG_STEPPES },
						-- #if ANYCLASSIC
						["groups"] = {
							applyclassicphase(MOP_PHASE_LANDFALL, i(256883)),	-- Commendation of Justice
						},
						-- #endif
						-- Some items are available via faction vendors in/near main city
						["sym"] = {{"select","itemID",
							88741,	-- Gloves of Red Feathers
							88742,	-- Sunspeaker's Flared Gloves
							88743,	-- Ogo's Elder Gloves
							88744,	-- Fingers of the Loneliest Monk
							88745,	-- Sentinal Commander's Gauntlets
							88746,	-- Gloves of the Overwhelming Swrm
							88747,	-- Streetfighter's Iron Knuckles
							88748,	-- Ravenmane's Gloves
							88749,	-- Gauntlets of Jade Sutras
							88862,	-- Tankiss Warstompers
							88864,	-- Yu'lon Guardian Boots
							88865,	-- Bramblestaff Boots
							88866,	-- Steps of the War Serpent
							88867,	-- Sandals of the Elder Sage
							88868,	-- Tukka-Tuk's Hairy Boots
							88876,	-- Boots of the High Adept
							88877,	-- Storm-Sing Sandals
							88878,	-- Void Flame Slippers
							88879,	-- Braided Black and White Bracer
							88880,	-- Battle Shadow Bracers
							88881,	-- Fallen Sentinel Bracers
							88882,	-- Tiger-Striped Wristguards
							88883,	-- Brewmaster Chani's Bracers
							88884,	-- Quillpaw Family Bracers
							88885,	-- Clever Ashyo's Armbands
							88892,	-- Bracers of Inlaid Jade
							88893,	-- Minh's Beaten Bracers
							89055,	-- Klaxxi Lash of the Rescinder
							89056,	-- Klaxxi Lash of the Consumer
							89057,	-- Klaxxi Lash of the Doubter
							89058,	-- Klaxxi Lash of the Winnower
							89059,	-- Klaxxi Lash of the Precursor
							89060,	-- Klaxxi Lash of the Borrower
							89061,	-- Klaxxi Lash of the Harbinger
							89062,	-- Klaxxi Lash of the Orator
							89063,	-- Klaxxi Lash of the Seeker
							89064,	-- Bloodseeker's Solitaire
							89065,	-- Choker of the Klaxxi'va
							89066,	-- Paragon's Pale Pendant
							89067,	-- Links of the Lucid
							89068,	-- Wire of the Wakener
							89069,	-- Ring of the Golden Stair
							89070,	-- Anji's Keepsake
							89071,	-- Alani's Inflexible Ring
							89072,	-- Simple Harmonious Ring
							89073,	-- Leven's Circle of Hope
							89074,	-- Cloak of the Dark Disciple
							89075,	-- Yi's Cloak of Courage
							89076,	-- Blackguard Cape
							89077,	-- Cloak of Snow Blossoms
							89078,	-- Sagewhisper's Wrap
							89079,	-- Lao-Chin's Liquid Courage
							89080,	-- Scroll of Revered Ancestors
							89081,	-- Blossom of Pure Snow
							89082,	-- Hawkmaster's Talon
							89083,	-- Iron Belly Wok
							89087,	-- Poisoncrafter's Kilt
							89088,	-- Leggings of the Poisoned Soul
							89089,	-- Wind-Reaver Greaves
							89090,	-- Dreadsworn Slayer Legs
							89091,	-- Swarmkeeper's Leggings
							89092,	-- Locust Swarm Legguards
							89093,	-- Kovok's Riven Legguards
							89094,	-- Ambersmith Legplates
							89095,	-- Legguards of the Unscathed
							89096,	-- Six Pool's Open Helm
							89216,	-- Yi's Least Favorite Helmet
							89280,	-- Voice Amplifying Greathelm
							89291,	-- Hawkmaster's Headguard
							89296,	-- Nightwatcher's Helm
							89300,	-- Red Smoke Bandana
							89308,	-- Snowdrift Helm
							89337,	-- Firecracker Corona
							89338,	-- Yalia's Cowl
							89339,	-- Tenderheart Shoulders
							89340,	-- Mantle of the Golden Sun
							89341,	-- Imperion Spaulders
							89342,	-- Whitepetal Shouldergarb
							89343,	-- Mindbender Shoulders
							89344,	-- Windwalker Spaulders
							89345,	-- Stonetoe Spaulders
							89346,	-- Shoulders of Autumnlight
							89347,	-- Paleblade Shoulderguards
							89420,	-- Dawnblade's Chestguard
							89421,	-- Cuirass of the Twin Monoliths
							89423,	-- Battleguard of Guo-Lai
							89429,	-- Robes of the Setting Sun
							89430,	-- Breastplate of the Golden Pagoda
							89431,	-- Softfoot Silentwrap
							89432,	-- Mistfall Robes
							89433,	-- Vestments of Thundering Skies
							89434,	-- Robe of the Five Sisters
						}},
					}),
					n(64595, {	-- Rushi the Fox <Shado-Pan Quartermaster>
						["coord"] = { 48.8, 70.5, TOWNLONG_STEPPES },
						["groups"] = bubbleDownClassicRep(FACTION_SHADO_PAN, {
							{		-- Neutral
								i(89076),	-- Blackguard Cape
								i(89081),	-- Blossom of Pure Snow
								i(89660),	-- Brambleguard Leggings
								i(89655),	-- Brushcutter's Gloves
								i(89077),	-- Cloak of Snow Blossoms
								i(89074),	-- Cloak of the Dark Disciple
								i(89523),	-- Etched Golden Loop
								i(89337),	-- Firecracker Corona
								i(89656),	-- Gauntlets of Restraint
								i(89654),	-- Gloves of Forgotten Wisdom
								i(89291),	-- Hawkmaster's Headguard
								i(89082),	-- Hawkmaster's Talon
								i(89083),	-- Iron Belly Wok
								i(89079),	-- Lao-Chin's Liquid Courage
								i(89522),	-- Mark of the Dancing Crane
								i(89296),	-- Nightwatcher's Helm
								i(89300),	-- Red Smoke Bandana
								-- #if ANYCLASSIC
								i(247800, {	-- Recipe: Venerable Potion of Invisibility
									["timeline"] = { ADDED_5_5_0 },
								}),
								-- #endif
								i(89673),	-- Robe of Eternal Dynasty
								i(89672),	-- Robe of Quiet Meditation
								i(89078),	-- Sagewhisper's Wrap
								i(89080),	-- Scroll of Revered Ancestors
								i(88995),	-- Shado-Pan Dragon Gun
								i(89526),	-- Signet of the Slumbering Emperor
								i(89096),	-- Six Pool's Open Helm
								i(89308),	-- Snowdrift Helm
								i(89524),	-- Sorcerer-King's Seal
								i(89525),	-- Thunderstone Ring
								i(89661),	-- Tough Mushanhide Leggings
								i(89280),	-- Voice Amplyifying Greathelm
								i(89657),	-- Wall Breaker Gauntlets
								i(89338),	-- Yalia's Cowl
								i(89075),	-- Yi's Cloak of Courage
								i(89216),	-- Yi's Least Favorite Helmet
							}, {	-- Friendly
							}, {	-- Honored
								i(89302),	-- Stack of Bamboo
								i(89303),	-- Stack of Stone Blocks
								i(89301),	-- Stack of Wooden Boards
							}, {	-- Revered
								i(84584),	-- Formula: Enchant Weapon - Dancing Steel (RECIPE!)
								i(84583),	-- Formula: Enchant Weapon - Jade Spirit (RECIPE!)
								i(84580),	-- Formula: Enchant Weapon - River's Song (RECIPE!)
								i(138877, { ["timeline"] = { ADDED_7_0_3 } }),	-- Formula: Tome of Illusions: Secrets of the Shado-Pan (RECIPE!)
								i(93220),	-- Grand Commendation of the Shado-Pan
							}, {	-- Exalted
								i(89307, {	-- Blue Shado-Pan Riding Tiger (MOUNT!)
									["cost"] = 5000000,	-- 500g
								}),
								i(89305, {	-- Green Shado-Pan Riding Tiger (MOUNT!)
									["cost"] = 15000000,	-- 1,500g
								}),
								i(89306, {	-- Red Shado-Pan Riding Tiger (MOUNT!)
									["cost"] = 25000000,	-- 2,500g
								}),
								i(90846),	-- Replica Shado-Pan Helmet
								i(90845),	-- Replica Shado-Pan Helmet
								i(90844),	-- Replica Shado-Pan Helmet
								i(89801),	-- Replica Shado-Pan Helmet
								i(89800),	-- Shado-Pan Tabard
							},
						}),
					}),
					n(62737, {	-- Supplier Xin
						["coord"] = { 70.8, 55.8, TOWNLONG_STEPPES },
						["sym"] = {{"sub","common_vendor",65172}},	-- Len at Arms <Adventuring Supplies>
					}),
				}),
				n(ZONE_DROPS, {
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	m(PANDARIA, {
		m(TOWNLONG_STEPPES, {
			header(HEADERS.Faction, FACTION_SHADO_PAN, {
				n(QUESTS, {
					q(31123),	-- Chose Arms Warrior
					q(31124),	-- Chose Brewmaster
					q(31050),	-- Chose Fire Mage
					q(31051),	-- Chose Frost Mage
					q(31052),	-- Chose Priest
					q(31122),	-- Chose Prot Warrior
					q(31214),	-- FLAG - Chose Nurong
					q(31213),	-- FLAG - Chose Taoshi
					q(31212),	-- FLAG - Chose Tenwu
					q(31053),	-- Tracking Event: Started Shado-Pan Dailies
					q(31125),	-- Unlocked Chao
					q(31126),	-- Unlocked Lao-Chen
					q(31054),	-- Unlocked Yalia Sagewhisper
					-- q(?????),	-- Looting a Bag of Wu Kao Supplies - WRONG QUEST ID
				}),
			}),
			n(QUESTS, {
				q(31607),	-- Tracking Event: Finished Spiteful Spirits & Hatred Becomes Us
			}),
			-- #if ANYCLASSIC
			q(31697),	-- ACCIDENTAL COPY [reuse if you like] - completed with quest 30898
			-- #endif
		}),
	}),
})));
