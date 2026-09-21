---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local CRAFTSMANS_WRIT_QUEST = function(id, itemID, cost)
	return q(id, {	-- Craftsman's Writ - Quest
		["provider"] = { "i", itemID },	-- Craftsman's Writ - Item
		["cost"] = { cost },
		["repeatable"] = true,
		["lvl"] = 55,
		["groups"] = {
			i(22524),	-- Insignia of the Crusade
			i(22523),	-- Insignia of the Dawn
		},
	});
end

root(ROOTS.Zones, m(MAP.EASTERN_KINGDOMS, {
	m(MAP.EASTERN_PLAGUELANDS, {
		["lore"] = "Eastern Plaguelands is heavily-ravaged from the Scourge. The Argent Dawn has made some progress after The Lich King's defeat, but the zone is still full of Undead. Players explore Eastern Plaguelands primarily through escorting a Worgen merchant, Fiona, and her band of merry travelers she picks up along the way. The Plaguelands are the site for some of the most gripping storylines, including the Battle for Darrowshire and the fate of the Stratholme residents.",
		["icon"] = 236760,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(771),	-- Explore Eastern Plaguelands
			}),
			explorationHeader({
				exploration(2624),	-- Blackwood Lake
				exploration(2264),	-- Corin's Crossing
				exploration(2263),	-- Crown Guard Tower
				exploration(2262),	-- Darrowshire
				exploration(2271),	-- Eastwall Tower
				exploration(2621),	-- Lake Mereldar
				exploration(2268),	-- Light's Hope Chapel
				exploration(2272),	-- Northdale
				exploration(2275),	-- Northpass Tower
				exploration(2622),	-- Pestilent Scar
				exploration(2277),	-- Plaguewood
				exploration(2276),	-- Quel'Lithien Lodge
				exploration(2279),	-- Stratholme
				exploration(2627),	-- Terrordale
				exploration(2258),	-- The Fungal Vale
				exploration(2623),	-- The Infectis Scar
				exploration(2260),	-- The Marris Stead
				exploration(2270),	-- The Noxious Glade
				exploration(2261),	-- The Undercroft
				exploration(2619),	-- Thondroril River
				exploration(2266),	-- Tyr's Hand
				exploration(2273),	-- Zul'Mashar
			}),
			n(FACTIONS, {
				faction(FACTION_ARGENT_DAWN, {	-- Argent Dawn
					["icon"] = 134501,
					["maps"] = {
						MAP.WESTERN_PLAGUELANDS,
						MAP.SCHOLOMANCE,
						MAP.STRATHOLME,
						MAP.NAXXRAMAS,
					},
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(87, {	-- Crown Guard Tower, Eastern Plaguelands
					["description"] = "If Plaguewood Tower is controlled by your faction, you can fly to this tower.",
					["collectible"] = false,
				}),
				fp(86, {	-- Eastwall Tower, Eastern Plaguelands
					["description"] = "If Plaguewood Tower is controlled by your faction, you can fly to this tower.",
					["collectible"] = false,
				}),
				fp(67, {	-- Light's Hope Chapel, Eastern Plaguelands
					["cr"] = 12617,	-- Khaelyn Steelwing <Gryphon Master>
					["coord"] = { 81.6, 59.2, MAP.EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(68, {	-- Light's Hope Chapel, Eastern Plaguelands
					["cr"] = 12636,	-- Georgia <Bat Handler>
					["coord"] = { 80.2, 57.0, MAP.EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
				}),
				fp(85, {	-- Northpass Tower, Eastern Plaguelands
					["description"] = "If Plaguewood Tower is controlled by your faction, you can fly to this tower.",
					["collectible"] = false,
				}),
				fp(84, {	-- Plaguewood Tower, Eastern Plaguelands
					["crs"] = {
						17209,	-- William Kielar <Spectral Gryphon Master>
					},
					["coord"] = { 22.2, 31.4, MAP.EASTERN_PLAGUELANDS },
					["description"] = "If this tower is controlled by your faction, you can fly from this tower to the other towers your faction controls.",
					["collectible"] = false,
				}),
			}),
			lockpicking({
				o(179498, {	-- Scarlet Footlocker
					["coords"] = {
						{ 80.8, 85.2, MAP.EASTERN_PLAGUELANDS },
						{ 83.8, 80.1, MAP.EASTERN_PLAGUELANDS },
						{ 87.9, 82.3, MAP.EASTERN_PLAGUELANDS },
					},
					["requireSkill"] = LOCKPICKING,
					["learnedAt"] = 250,
				}),
			}),
			n(QUESTS, {
				q(7621, {	-- A Warning
					["qg"] = 14494,	-- Eris Havenfire
					["coord"] = { 20.8, 18.4, MAP.EASTERN_PLAGUELANDS },
					["classes"] = { PRIEST },
					["lvl"] = 60,
				}),
				q(5503, {	-- Argent Dawn Commission
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						i(12846),	-- Argent Dawn Commission
					},
				}),
				q(6164, {	-- Augustus' Receipt Book
					["qg"] = 12384,	-- Augustus the Touched
					["coord"] = { 14.4, 33.6, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Augustus' Receipt Book
							["providers"] = {
								{ "i",  15884 },	-- Augustus' Receipt Book
								{ "o", 177789 },	-- Augustus' Receipt Book
							},
							["coord"] = { 17.5, 31.2, MAP.EASTERN_PLAGUELANDS },
						}),
					},
				}),
				q(5152, {	-- Auntie Marlene
					["sourceQuest"] = 5149,	-- Pamela's Doll
					["qg"] = 10926,	-- Pamela Redpath
					["coord"] = { 36.4, 90.8, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(9131, {	-- Binding the Dreadnaught
					["qg"] = 16112,	-- Korfax, Champion of the Light
					["coord"] = { 81.8, 58.1, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 22528, 30 } },	-- Dark Iron Scraps
					["lvl"] = 55,
					["groups"] = {
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(5543, {	-- Blood Tinged Skies
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.6, 43.6, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/30 Plaguebat slain
							["provider"] = { "n", 8600 },	-- Plaguebat
						}),
					},
				}),
				q(9665, {	-- Bolstering Our Defenses
					["qg"] = 17072,	-- Emmisary Gormok
					["coord"] = { 80.0, 57.4, MAP.EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- Capture Crown Guard Tower
							["coord"] = { 39.7, 75.4, MAP.EASTERN_PLAGUELANDS },
						}),
						objective(2, {	-- Capture Eastwall Tower
							["coord"] = { 67.4, 48.0, MAP.EASTERN_PLAGUELANDS },
						}),
						objective(3, {	-- Capture Northpass Tower
							["coord"] = { 56.6, 24.4, MAP.EASTERN_PLAGUELANDS },
						}),
						objective(4, {	-- Capture Plaguewood Tower
							["coord"] = { 22.0, 32.0, MAP.EASTERN_PLAGUELANDS },
						}),
					},
				}),
				q(9127, {	-- Bone Fragments
					["sourceQuest"] = 9126,	-- Bonescythe Digs
					["qg"] = 16131,	-- Rohan the Assassin
					["coord"] = { 81.4, 58.5, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 22526, 30 } },	-- Bone Fragments
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
					},
				}),
				q(9126, {	-- Bonescythe Digs
					["qg"] = 16131,	-- Rohan the Assassin
					["coord"] = { 81.4, 58.5, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 22526, 30 } },	-- Bone Fragments
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
					},
				}),
				q(5544, {	-- Carrion Grubbage
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.6, 43.6, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/15 Slab of Carrion Worm Meat
							["provider"] = { "i", 13853 },	-- Slab of Carrion Worm Meat
							["crs"] = {
								8605,	-- Carrion Devourer
								8603,	-- Carrion Grub
							},
						}),
					},
				}),
				q(5517, {	-- Chromatic Mantle of the Dawn
					["sourceQuest"] = 5513,	-- Mantles of the Dawn
					["altQuests"] = {
						5517,	-- Chromatic Mantle of the Dawn
						5521,	-- Chromatic Mantle of the Dawn
						5524,	-- Chromatic Mantle of the Dawn
					},
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, MAP.EASTERN_PLAGUELANDS },
					["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn
					["cost"] = { { "i", 12844, 25 } },	-- Argent Dawn Valor Token
					["lvl"] = 55,
					["groups"] = {
						i(18182),	-- Chromatic Mantle of the Dawn
					},
				}),
				q(9129, {	-- Core of Elements
					["sourceQuest"] = 9128,	-- The Elemental Equation
					["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
					["coord"] = { 81.5, 58.3, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 22527, 30 } },	-- Core of Elements
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(5508, {	-- Corruptor's Scourgestones
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 12843, 1 } },	-- Corruptor's Scourgestone
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(9142, {	-- Craftsman's Writ
					["sourceQuest"] = 9141,	-- They Call Me "The Rooster"
					["qg"] = 16212,	-- Dispatch Commander Metz <The Argent Dawn>
					["coord"] = { 81.1, 57.5, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 12844, 1 } },	-- Argent Dawn Valor Token
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(22568),	-- Sealed Craftsman's Writ
					},
				}),
				q(9125, {	-- Crypt Fiend Parts
					["sourceQuest"] = 9124,	-- Cryptstalker Armor Doesn't Make Itself...
					["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
					["coord"] = { 82.5, 58.6, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 22525, 30 } },	-- Crypt Fiend Parts
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
					},
				}),
				q(9124, {	-- Cryptstalker Armor Doesn't Make Itself...
					["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
					["coord"] = { 82.5, 58.6, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 22525, 30 } },	-- Crypt Fiend Parts
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
					},
				}),
				q(9132, {	-- Dark Iron Scraps
					["sourceQuest"] = 9131,	-- Binding the Dreadnaught
					["qg"] = 16112,	-- Korfax, Champion of the Light
					["coord"] = { 81.8, 58.1, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 22528, 30 } },	-- Dark Iron Scraps
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(5211, {	-- Defenders of Darrowshire
					["sourceQuest"] = 5241,	-- Uncle Carlin
					["qg"] = 11063,	-- Carlin Redpath
					["coord"] = { 81.4, 59.8, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/15 Darrowshire Spirits Freed
							["provider"] = { "n", 11064 },	-- Darrowshire Spirit
							["crs"] = {
								8530,	-- Cannibal Ghoul
								8531,	-- Gibbering Ghoul
								8532,	-- Diseased Flayer
							},
						}),
					},
				}),
				q(5542, {	-- Demon Dogs
					["qg"] = 1855,	-- Tirion Fordring
					["coord"] = { 7.6, 43.6, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/20 Plaguehound Runt slain
							["provider"] = { "n", 8596 },	-- Plaguehound Runt
						}),
						objective(2, {	-- 0/5 Plaguehound slain
							["provider"] = { "n", 8597 },	-- Plaguehound
						}),
						objective(3, {	-- 0/5 Frenzied Plaguehound slain
							["provider"] = { "n", 8598 },	-- Frenzied Plaguehound
						}),
					},
				}),
				q(6135, {	-- Duskwing, Oh How I Hate Thee...
					["sourceQuests"] = {
						6133,	-- The Ranger Lord's Behest
						6022,	-- To Kill With Purpose
						6042,	-- Un-Life's Little Annoyances
					},
					["qg"] = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
					["coord"] = { 26.6, 74.8, MAP.EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 56,
					["groups"] = {
						objective(1, {	-- 0/1 Patch of Duskwing's Fur
							["provider"] = { "i", 15850 },	-- Patch of Duskwing's Fur
							["cr"] = 11897,	-- Duskwing
						}),
						i(16994),	-- Duskwing Gloves
						i(16995),	-- Duskwing Mantle
					},
				}),
				q(9228, {	-- Epic Armaments of Battle - Exalted Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, MAP.EASTERN_PLAGUELANDS },
					["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn
					["cost"] = {
						{ "i", 22524, 27 },	-- Insignia of the Crusade
						{ "i", 22523, 27 },	-- Insignia of the Dawn
					},
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				}),
				q(9222, {	-- Epic Armaments of Battle - Friend of the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, MAP.EASTERN_PLAGUELANDS },
					["minReputation"] = { FACTION_ARGENT_DAWN, FRIENDLY },	-- Argent Dawn
					["maxReputation"] = { FACTION_ARGENT_DAWN, HONORED },	-- Argent Dawn
					["cost"] = {
						{ "i", 22524, 110 },	-- Insignia of the Crusade
						{ "i", 22523, 110 },	-- Insignia of the Dawn
					},
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				}),
				q(9224, {	-- Epic Armaments of Battle - Honored Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, MAP.EASTERN_PLAGUELANDS },
					["minReputation"] = { FACTION_ARGENT_DAWN, HONORED },	-- Argent Dawn
					["maxReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn
					["cost"] = {
						{ "i", 22524, 75 },	-- Insignia of the Crusade
						{ "i", 22523, 75 },	-- Insignia of the Dawn
					},
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				}),
				q(9225, {	-- Epic Armaments of Battle - Revered Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, MAP.EASTERN_PLAGUELANDS },
					["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn
					["maxReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn
					["cost"] = {
						{ "i", 22524, 45 },	-- Insignia of the Crusade
						{ "i", 22523, 45 },	-- Insignia of the Dawn
					},
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(22657),	-- Amulet of the Dawn
						i(22667),	-- Bracers of Hope
						i(22668),	-- Bracers of Subterfuge
						i(22659),	-- Medallion of the Dawn
						i(22678),	-- Talisman of Ascendance
						i(22656),	-- The Purifier
					},
				}),
				q(9664, {	-- Establishing New Outposts
					["qg"] = 17069,	-- Emissary Whitebeard
					["coord"] = { 81.3, 59.4, MAP.EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- Capture Crown Guard Tower
							["coord"] = { 39.7, 75.4, MAP.EASTERN_PLAGUELANDS },
						}),
						objective(2, {	-- Capture Eastwall Tower
							["coord"] = { 67.4, 48.0, MAP.EASTERN_PLAGUELANDS },
						}),
						objective(3, {	-- Capture Northpass Tower
							["coord"] = { 56.6, 24.4, MAP.EASTERN_PLAGUELANDS },
						}),
						objective(4, {	-- Capture Plaguewood Tower
							["coord"] = { 22.0, 32.0, MAP.EASTERN_PLAGUELANDS },
						}),
					},
				}),
				q(5246, {	-- Fragments of the Past (1/2)
					["sourceQuest"] = 5245,	-- Troubled Spirits of Kel'Theril
					["qg"] = 10304,	-- Aurora Skycaller
					["coord"] = { 53.4, 22.0, MAP.EASTERN_PLAGUELANDS },
					["maps"] = { MAP.AZSHARA },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
					["groups"] = {
						objective(1, {	-- 0/1 Sacred Highborne Writings
							["providers"] = {
								{ "i",  13313 },	-- Sacred Highborne Writings
								{ "o", 176356 },	-- Sacred Highborne Writings
							},
							["coord"] = { 41.4, 52.5, MAP.AZSHARA },
						}),
					},
				}),
				q(5247, {	-- Fragments of the Past (2/2)
					["sourceQuest"] = 5246,	-- Fragments of the Past (1/2)
					["qg"] = 10304,	-- Aurora Skycaller
					["coord"] = { 53.4, 22.0, MAP.EASTERN_PLAGUELANDS },
					["maps"] = { MAP.DIRE_MAUL, MAP.FERALAS, MAP.UNGORO_CRATER },
					["cost"] = {
						{ "i", 12655, 1 },	-- Enchanted Thorium Bar
						{ "i", 11562, 5 },	-- Crystal Restore
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
					["groups"] = {
						objective(3, {	-- 0/1 Vial of Dire Water
							["providers"] = {
								{ "i",  16973 },	-- Vial of Dire Water
								{ "o", 178224 },	-- Dire Pool
								{ "i",  16974 },	-- Empty Water Vial
							},
							["coord"] = { 42.70, 68.63, MAP.FERALAS },
						}),
					},
				}),
				q(6024, {	-- Hameya's Plea
					["providers"] = {
						{ "o", 177667 },	-- Torn Scroll
						{ "o", 177675 },	-- Mound of Dirt
					},
					["coords"] = {
						{ 27.3, 85.3, MAP.EASTERN_PLAGUELANDS },
						{ 28.1, 86.1, MAP.EASTERN_PLAGUELANDS },
					},
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/1 Hameya's Key
							["provider"] = { "i", 15767 },	-- Hameya's Key
							["coord"] = { 70.6, 18.8, MAP.EASTERN_PLAGUELANDS },
							["cr"] = 12248,	-- Infiltrator Hameya
						}),
						i(15814),	-- Hameya's Slayer
						i(15815),	-- Hameya's Cloak
					},
				}),
				q(5168, {	-- Heroes of Darrowshire
					["sourceQuest"] = 5210,	-- Brother Carlin
					["qg"] = 11063,	-- Carlin Redpath
					["coord"] = { 81.4, 59.8, MAP.EASTERN_PLAGUELANDS },
					["maps"] = { MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Davil's Libram
							["providers"] = {
								{ "i",  12954 },	-- Davil's Libram
								{ "o", 176206 },	-- Davil's Libram
							},
							["coord"] = { 42.4, 18.9, MAP.WESTERN_PLAGUELANDS },
						}),
						objective(2, {	-- 0/1 Redpath's Shield
							["providers"] = {
								{ "i",  12955 },	-- Redpath's Shield
								{ "o", 176207 },	-- Redpath's Shield
							},
							["coord"] = { 63.7, 57.2, MAP.WESTERN_PLAGUELANDS },
						}),
					},
				}),
				q(5942, {	-- Hidden Treasures
					["sourceQuest"] = 5721,	-- The Battle of Darrowshire
					["providers"] = {
						{ "n",  10926 },	-- Pamela Redpath
						{ "o", 177544 },	-- Joseph's Chest
						{ "i",  15328 },	-- Joseph's Key
					},
					["coord"] = { 36.4, 90.8, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						i(15855), 	-- Ring of Protection
						i(15856), 	-- Archlight Talisman
						i(15857), 	-- Magebane Scion
					},
				}),
				q(5509, {	-- Invader's Scourgestones
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 12841, 10 } },	-- Invader's Scourgestones
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(5513, {	-- Mantles of the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, MAP.EASTERN_PLAGUELANDS },
					["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn
					["cost"] = { { "i", 12844, 10 } },	-- Argent Dawn Valor Token
					["lvl"] = 55,
				}),
				q(5206, {	-- Marauders of Darrowshire
					["sourceQuests"] = {
						5181,	-- Villains of Darrowshire
						5168,	-- Heroes of Darrowshire
						5154,	-- The Annals of Darrowshire
					},
					["qg"] = 11063,	-- Carlin Redpath
					["coord"] = { 81.4, 59.8, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/5 Resonating Skull
							["providers"] = {
								{ "i", 13155 },	-- Resonating Skull
								{ "i", 13156 },	-- Mystic Crystal
								{ "i", 13157 },	-- Fetid Skull
							},
							["cr"] = 8529,	-- Scourge Champion
						}),
						i(13159),	-- Bone Dust
					},
				}),
				q(5510, {	-- Minion's Scourgestones
					["qg"] = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
					["coord"] = { 81.4, 59.8, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 12840, 20 } },	-- Minion's Scourgestone
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				}),
				q(6146, {	-- Nathanos' Ruse
					["sourceQuests"] = {
						6145,	-- The Crimson Courier
					},
					["qg"] = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
					["coord"] = { 26.6, 74.8, MAP.EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 56,
					["groups"] = {
						objective(1, {	-- 0/1 The Grand Crusader's Command
							["provider"] = { "i", 13852 },	-- The Grand Crusader's Command
						}),
						i(15876, {	-- Nathanos' Chest
							["groups"] = {
								i(15875),	-- Rotten Apple
								i(13852),	-- The Grand Crusader's Command
							},
						}),
					},
				}),
				q(5149, {	-- Pamela's Doll
					["sourceQuests"] = {
						5142,	-- Little Pamela
						5601,	-- Sister Pamela
					},
					["qg"] = 10926,	-- Pamela Redpath
					["coord"] = { 36.4, 90.8, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Pamela's Doll
							["provider"] = { "i", 12885 },	-- Pamela's Doll
							["cost"] = {
								{ "i", 12886, 1 },	-- Pamela's Doll's Head
								{ "i", 12887, 1 },	-- Pamela's Doll's Left Side
								{ "i", 12888, 1 },	-- Pamela's Doll's Right Side
							},
						}),
					},
				}),
				q(5941, {	-- Return to Chromie
					["sourceQuest"] = 5206,	-- Marauders of Darrowshire
					["providers"] = {
						{ "n", 11063 },	-- Carlin Redpath
						{ "i", 15314 },	-- Bundle of Relics
					},
					["coord"] = { 81.4, 59.8, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(6147, {	-- Return to Nathanos
					["sourceQuest"] = 6146,	-- Nathanos' Ruse
					["qg"] = 11898,	-- Crusader Lord Valdelmar
					["coord"] = { 88.2, 86.2, MAP.EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 56,
				}),
				q(9136, {	-- Savage Flora
					["qg"] = 16135,	-- Rayne <Cenarion Circle>
					["coord"] = { 81.2, 59.0, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 22529, 30 } },	-- Savage Frond
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9137, {	-- Savage Fronds
					["sourceQuest"] = 9136,	-- Savage Flora
					["qg"] = 16135,	-- Rayne <Cenarion Circle>
					["coord"] = { 81.2, 59.0, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 22529, 30 } },	-- Savage Frond
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9227, {	-- Superior Armaments of Battle - Exalted Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, MAP.EASTERN_PLAGUELANDS },
					["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn
					["cost"] = {
						{ "i", 22524, 6 },	-- Insignia of the Crusade
						{ "i", 22523, 6 },	-- Insignia of the Dawn
					},
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				}),
				q(9221, {	-- Superior Armaments of Battle - Friend of the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, MAP.EASTERN_PLAGUELANDS },
					["minReputation"] = { FACTION_ARGENT_DAWN, FRIENDLY },	-- Argent Dawn
					["maxReputation"] = { FACTION_ARGENT_DAWN, HONORED },	-- Argent Dawn
					["cost"] = {
						{ "i", 22524, 30 },	-- Insignia of the Crusade
						{ "i", 22523, 30 },	-- Insignia of the Dawn
					},
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				}),
				q(9223, {	-- Superior Armaments of Battle - Honored Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, MAP.EASTERN_PLAGUELANDS },
					["minReputation"] = { FACTION_ARGENT_DAWN, HONORED },	-- Argent Dawn
					["maxReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn
					["cost"] = {
						{ "i", 22524, 20 },	-- Insignia of the Crusade
						{ "i", 22523, 20 },	-- Insignia of the Dawn
					},
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				}),
				q(9226, {	-- Superior Armaments of Battle - Revered Amongst the Dawn
					["qg"] = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
					["coord"] = { 81.6, 60.0, MAP.EASTERN_PLAGUELANDS },
					["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn
					["maxReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn
					["cost"] = {
						{ "i", 22524, 7 },	-- Insignia of the Crusade
						{ "i", 22523, 7 },	-- Insignia of the Dawn
					},
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						i(22681),	-- Band of Piety
						i(22680),	-- Band of Resolution
						i(22688),	-- Verimonde's Last Resort
						i(22679),	-- Supply Bag
						i(22690),	-- Leggings of the Plague Hunter
						i(22689),	-- Sanctified Leather Helm
					},
				}),
				q(6026, {	-- That's Asking A Lot
					["qg"] = 11033,	-- Smokey LaRue
					["coord"] = { 80.6, 58.0, MAP.EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 10562, 8 },	-- Hi-Explosive Bomb
						{ "i", 10560, 8 },	-- Unstable Trigger
						{ "i", 12359, 2 },	-- Thorium Bar
						{ "i", 11128, 1 },	-- Golden Rod
					},
					["lvl"] = 54,
				}),
				q(7622, {	-- The Balance of Light and Shadow
					["sourceQuest"] = 7621,	-- A Warning
					["providers"] = {
						{ "n", 14494 },	-- Eris Havenfire
						{ "i", 18659 },	-- Splinter of Nordrassil
					},
					["coord"] = { 20.8, 18.4, MAP.EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 18646, 1 },	-- The Eye of Divinity
						{ "i", 18665, 1 },	-- The Eye of Shadow
					},
					["classes"] = { PRIEST },
					["lvl"] = 60,
					["groups"] = {
						i(18609),	-- Anathema
						i(18608),	-- Benediction
					},
				}),
				q(5721, {	-- The Battle of Darrowshire
					["sourceQuest"] = 5941,	-- Return to Chromie
					["qg"] = 10667,	-- Chromie
					["coord"] = { 39.4, 66.8, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- Accept Redpath's Forgiveness
							["providers"] = {
								{ "n", 10936 },	-- Joseph Redpath
								{ "i", 15209 },	-- Relic Bundle
							},
							["coord"] = { 39.0, 91.2, MAP.EASTERN_PLAGUELANDS },
						}),
						i(15723),	-- Tea with Sugar
					},
				}),
				q(6144, {	-- The Call to Command
					["sourceQuests"] = {
						6135,	-- Duskwing, Oh How I Hate Thee...
						6136,	-- The Corpulent One
					},
					["qg"] = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
					["coord"] = { 26.6, 74.8, MAP.EASTERN_PLAGUELANDS },
					["maps"] = { MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 56,
				}),
				q(5961, {	-- The Champion of the Banshee Queen
					["qg"] = 10181,	-- Lady Sylvanas Windrunner <Banshee Queen>
					["coord"] = { 57.8, 91.8, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
				}),
				q(6136, {	-- The Corpulent One
					["qg"] = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
					["sourceQuest"] = 6133,	-- The Ranger Lord's Behest
					["coord"] = { 26.6, 74.8, MAP.EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 56,
					["groups"] = {
						objective(1, {	-- 0/1 Borelgore slain
							["provider"] = { "n", 11896 },	-- Borelgore
						}),
						i(17002),	-- Ichor Spitter
						i(17003),	-- Skullstone Hammer
						i(17004),	-- Sarah's Guide
					},
				}),
				q(6145, {	-- The Crimson Courier
					["sourceQuest"] = 6144,	-- The Call to Command
					["qgs"] = {
						2425,	-- Varimathras
					},
					["coord"] = { 56.2, 92.6, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 56,
					["groups"] = {
						objective(1, {	-- 0/1 The Grand Crusader's Command
							["provider"] = { "i", 15868 },	-- The Grand Crusader's Command
							["cr"] = 12337,	-- Crimson Courier
						}),
					},
				}),
				q(9128, {	-- The Elemental Equation
					["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
					["coord"] = { 81.5, 58.3, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 22527, 30 } },	-- Core of Elements
					["lvl"] = 55,
					["groups"] = {
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(9211, {	-- The Ice Guard
					["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
					["coord"] = { 81.4, 58.2, MAP.EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 22524, 10 },	-- Insignia of the Crusade
						{ "g", 300000 },	-- 30g
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(22636),	-- Ice Guard
					},
				}),
				q(6133, {	-- The Ranger Lord's Behest
					["qg"] = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
					["coord"] = { 26.6, 74.8, MAP.EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/8 Pathstrider slain
							["provider"] = { "n", 8565 },	-- Pathstrider
						}),
						objective(2, {	-- 0/8 Ranger slain
							["provider"] = { "n", 8564 },	-- Ranger
						}),
						objective(3, {	-- 0/8 Woodsman slain
							["provider"] = { "n", 8563 },	-- Woodsman
						}),
						objective(4, {	-- 0/1 Quel'Thalas Registry
							["providers"] = {
								{ "i",  15847 },	-- Quel'Thalas Registry
								{ "o", 177747 },	-- Quel'Thalas Registry
							},
							["coord"] = { 52.1, 18.5, MAP.EASTERN_PLAGUELANDS },
						}),
					},
				}),
				q(6148, {	-- The Scarlet Oracle, Demetria
					["sourceQuest"] = 6147,	-- Return to Nathanos
					["qg"] = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
					["coord"] = { 26.6, 74.8, MAP.EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 56,
					["groups"] = {
						objective(1, {	-- 0/1 Demetria slain
							["provider"] = { "n", 12339 },	-- Demetria <The Scarlet Oracle>
						}),
						i(16996),	-- Gorewood Bow
						i(16997),	-- Stormrager
						i(16998),	-- Sacred Protector
					},
				}),
				q(9213, {	-- The Shadow Guard
					["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
					["coord"] = { 81.4, 58.2, MAP.EASTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 22524, 10 },	-- Insignia of the Crusade
						{ "g", 300000 },	-- 30g
					},
					["repeatable"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(22638),	-- Shadow Guard
					},
				}),
				q(9141, {	-- They Call Me "The Rooster"
					["qg"] = 16212,	-- Dispatch Commander Metz <The Argent Dawn>
					["coord"] = { 81.1, 57.5, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 12844, 1 } },	-- Argent Dawn Valor Token
					["lvl"] = 55,
					["groups"] = {
						i(22568),	-- Sealed Craftsman's Writ
					},
				}),
				q(6022, {	-- To Kill With Purpose
					["qg"] = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
					["coord"] = { 26.6, 74.8, MAP.EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/1 Coagulated Rot
							["providers"] = {
								{ "i", 15448 },	-- Coagulated Rot
							},
							["crs"] = {
								8526,	-- Dark Caster
								8531,	-- Gibbering Ghoul
								8541,	-- Hate Shrieker
								8525,	-- Scourge Warder
								8543,	-- Stitched Horror
								8538,	-- Unseen Servant
								12262,	-- Ziggurat Protector
							},
						}),
						i(15448, {	-- Coagulated Rot
							["provider"] = { "i", 15454 },	-- Mortar and Pestle
							["cost"] = { { "i", 15447, 7 } },	-- Living Rot
						}),
						i(15454),	-- Mortar and Pestle
						i(15447, {	-- Living Rot
							["description"] = "PROTIP: Do NOT loot these until you have a couple of creatures killed nearby. The timer starts the second you pick it up.",
						}),
					},
				}),
				q(5248, {	-- Tormented By the Past
					["sourceQuest"] = 5247,	-- Fragments of the Past
					["providers"] = {
						{ "n", 10304 },	-- Aurora Skycaller
						{ "i", 13347 },	-- Crystal of Zin-Malor
					},
					["coord"] = { 53.4, 22.0, MAP.EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 53,
				}),
				q(6042, {	-- Un-Life's Little Annoyances
					["qg"] = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
					["coord"] = { 26.6, 74.8, MAP.EASTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/20 Noxious Plaguebat slain
							["provider"] = { "n", 8601 },	-- Noxious Plaguebat
						}),
						objective(2, {	-- 0/20 Monstrous Plaguebat slain
							["provider"] = { "n", 8602 },	-- Monstrous Plaguebat
						}),
					},
				}),
				q(5241, {	-- Uncle Carlin
					["sourceQuest"] = 5149,	-- Pamela's Doll
					["qg"] = 10926,	-- Pamela Redpath
					["coord"] = { 36.4, 90.8, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(5181, {	-- Villains of Darrowshire
					["sourceQuest"] = 5210,	-- Brother Carlin
					["qg"] = 11063,	-- Carlin Redpath
					["coord"] = { 81.4, 59.8, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Skull of Horgus
							["providers"] = {
								{ "i",  12956 },	-- Skull of Horgus
								{ "o", 176208 },	-- Horgus' Skull
							},
							["coord"] = { 51.1, 49.9, MAP.EASTERN_PLAGUELANDS },
						}),
						objective(2, {	-- 0/1 Shattered Sword of Marduk
							["providers"] = {
								{ "i",  12957 },	-- Shattered Sword of Marduk
								{ "o", 176209 },	-- Shattered Sword of Marduk
							},
							["coord"] = { 53.9, 65.8, MAP.EASTERN_PLAGUELANDS },
						}),
					},
				}),
				q(6041, {	-- When Smokey Sings, I Get Violent
					["sourceQuest"] = 6026,	-- That's Asking A Lot
					["qg"] = 11033,	-- Smokey LaRue
					["coord"] = { 80.6, 58.0, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/8 Scourge Structures Destroyed
							["providers"] = {
								{ "i", 15736 },	-- Smokey's Special Compound
								{ "n", 12247 },	-- Scourge Structure
							},
						}),
						i(16992),	-- Smokey's Explosive Launcher
						i(16993),	-- Smokey's Fireshooter
						i(17523),	-- Smokey's Drape
						i(5951),	-- Moist Towelette
					},
				}),
				q(9165, {	-- Writ of Safe Passage
					["description"] = "Twice per day, Guard Didier starts a caravan westward. Simply protect him and the mules, but if any of them die, it's over. After the caravan arrives at its destination, he will offer this quest.",
					["qg"] = 16226,	-- Guard Didier <Brotherhood of the Light>
					["coord"] = { 80.0, 58.0, MAP.EASTERN_PLAGUELANDS },
					["repeatable"] = true,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- Writ of Safe Passage Signed
							["provider"] = { "i", 22593 },	-- Writ of Safe Passage
						}),
						i(22524),	-- Insignia of the Crusade
						i(22523),	-- Insignia of the Dawn
					},
				}),
				q(6021, {	-- Zaeldarr the Outcast
					["qg"] = 11038,	-- Caretaker Alen <The Argent Dawn>
					["coord"] = { 79.4, 63.8, MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Zaeldarr's Head
							["provider"] = { "i", 15785 },	-- Zaeldarr's Head
							["coord"] = { 27.6, 85.2, MAP.EASTERN_PLAGUELANDS },
							["cr"] = 12250,	-- Zaeldarr the Outcast
						}),
					},
				}),
			}),
			n(RARES, {
				n(10824, {	-- Death-Hunter Hawkspear [CATA+] / Ranger Lord Hawkspear
					["coord"] = { 53.4, 16.0, MAP.EASTERN_PLAGUELANDS },
				}),
				n(10827, {	-- Deathspeaker Selendre <Cult of the Damned>
					["coords"] = {
						{ 41.4, 49.2, MAP.EASTERN_PLAGUELANDS },
						{ 82.8, 40.0, MAP.EASTERN_PLAGUELANDS },
						{ 85.8, 46.2, MAP.EASTERN_PLAGUELANDS },
					},
				}),
				n(10817, {	-- Duggan Wildhammer
					["coords"] = {
						{ 49.4, 63.2, MAP.EASTERN_PLAGUELANDS },
						{ 41.8, 69.8, MAP.EASTERN_PLAGUELANDS },
						{ 32.8, 83.0, MAP.EASTERN_PLAGUELANDS },
						{ 25.8, 88.6, MAP.EASTERN_PLAGUELANDS },
						{ 19.8, 64.4, MAP.EASTERN_PLAGUELANDS },
						{ 15.8, 79.2, MAP.EASTERN_PLAGUELANDS },
					},
					["races"] = HORDE_ONLY,
				}),
				n(10825, {	-- Gish the Unmoving
					["coords"] = {
						{ 51.6, 43.8, MAP.EASTERN_PLAGUELANDS },
						{ 53.6, 44.6, MAP.EASTERN_PLAGUELANDS },
						{ 54.8, 50.6, MAP.EASTERN_PLAGUELANDS },
						{ 57.0, 53.8, MAP.EASTERN_PLAGUELANDS },
						{ 63.0, 55.6, MAP.EASTERN_PLAGUELANDS },
						{ 67.0, 57.0, MAP.EASTERN_PLAGUELANDS },
						{ 72.6, 56.8, MAP.EASTERN_PLAGUELANDS },
					},
				}),
				n(10821, {	-- Hed'mush the Rotting
					["coords"] = {
						{ 55.6, 25.4, MAP.EASTERN_PLAGUELANDS },
						{ 67.4, 50.2, MAP.EASTERN_PLAGUELANDS },
						{ 39.0, 74.6, MAP.EASTERN_PLAGUELANDS },
					},
				}),
				n(10828, {	-- Lynnia Abbendis <The Fallen Hope> [CATA+] / High General Abbendis
					["coords"] = {
						{ 80.6, 85.6, MAP.EASTERN_PLAGUELANDS },
						{ 88.4, 86.6, MAP.EASTERN_PLAGUELANDS },
					},
				}),
				n(10826, { 	-- Lord Darkscythe
					["coords"] = {
						{ 26.0, 33.4, MAP.EASTERN_PLAGUELANDS },
						{ 35.0, 24.8, MAP.EASTERN_PLAGUELANDS },
						{ 39.2, 27.0, MAP.EASTERN_PLAGUELANDS },
						{ 43.6, 28.8, MAP.EASTERN_PLAGUELANDS },
						{ 40.0, 36.4, MAP.EASTERN_PLAGUELANDS },
					},
					["groups"] = {
						i(16039),	-- Ta'Kierthan Songblade
					},
				}),
				n(16184, {	-- Nerubian Overseer
					["coords"] = {
						{ 7.4, 43.6, MAP.EASTERN_PLAGUELANDS },
						{ 9.6, 37.8, MAP.EASTERN_PLAGUELANDS },
						{ 15.2, 32.6, MAP.EASTERN_PLAGUELANDS },
						{ 20.2, 31.6, MAP.EASTERN_PLAGUELANDS },
					},
				}),
				n(10822, { 	-- Warlord Thresh'jin
					["coords"] = {
						{ 65.6, 21.8, MAP.EASTERN_PLAGUELANDS },
						{ 68.8, 20.8, MAP.EASTERN_PLAGUELANDS },
						{ 70.8, 19.8, MAP.EASTERN_PLAGUELANDS },
						{ 72.4, 13.0, MAP.EASTERN_PLAGUELANDS },
					},
				}),
				n(10823, {	-- Zul'Brin Warpbranch
					["coords"] = {
						{ 68.2, 21.2, MAP.EASTERN_PLAGUELANDS },
						{ 69.4, 16.4, MAP.EASTERN_PLAGUELANDS },
						{ 72.6, 18.8, MAP.EASTERN_PLAGUELANDS },
						{ 72.6, 13.4, MAP.EASTERN_PLAGUELANDS },
					},
				}),
			}),
			n(REWARDS, {
				["description"] = "These are rewarded from multiple quests in the zone. Refer to the individual item tooltips for more information.",
				["groups"] = {
					CRAFTSMANS_WRIT_QUEST(9188, 22609, { "i", 14104, 6 }),	-- Craftsman's Writ - Brightcloth Pants
					CRAFTSMANS_WRIT_QUEST(9178, 22600, { "i", 12643, 120 }),	-- Craftsman's Writ - Dense Weightstone
					CRAFTSMANS_WRIT_QUEST(9203, 22621, { "i", 13506, 1 }),	-- Craftsman's Writ - Flask of Petrification
					CRAFTSMANS_WRIT_QUEST(9197, 22615, { "i", 10725, 4 }),	-- Craftsman's Writ - Gnomish Battle Chicken
					CRAFTSMANS_WRIT_QUEST(9195, 22613, { "i", 10646, 20 }),	-- Craftsman's Writ - Goblin Sapper Charge
					CRAFTSMANS_WRIT_QUEST(9201, 22620, { "i", 13461, 15 }),	-- Craftsman's Writ - Greater Arcane Protection Potion
					CRAFTSMANS_WRIT_QUEST(9182, 22603, { "i", 12775, 3 }),	-- Craftsman's Writ - Huge Thorium Battleaxe
					CRAFTSMANS_WRIT_QUEST(9179, 22601, { "i", 12422, 3 }),	-- Craftsman's Writ - Imperial Plate Chest
					CRAFTSMANS_WRIT_QUEST(9206, 22624, { "i", 13757, 30 }),	-- Craftsman's Writ - Lightning Eel
					CRAFTSMANS_WRIT_QUEST(9202, 22618, { "i", 13446, 20 }),	-- Craftsman's Writ - Major Healing Potion
					CRAFTSMANS_WRIT_QUEST(9200, 22617, { "i", 13444, 10 }),	-- Craftsman's Writ - Major Mana Potion
					CRAFTSMANS_WRIT_QUEST(9205, 22623, { "i", 13890, 30 }),	-- Craftsman's Writ - Plated Armorfish
					CRAFTSMANS_WRIT_QUEST(9183, 22604, { "i", 12417, 3 }),	-- Craftsman's Writ - Radiant Circlet
					CRAFTSMANS_WRIT_QUEST(9185, 22606, { "i", 15564, 25 }),	-- Craftsman's Writ - Rugged Armor Kit
					CRAFTSMANS_WRIT_QUEST(9191, 22611, { "i", 14046, 8 }),	-- Craftsman's Writ - Runecloth Bag
					CRAFTSMANS_WRIT_QUEST(9190, 22610, { "i", 13864, 8 }),	-- Craftsman's Writ - Runecloth Boots
					CRAFTSMANS_WRIT_QUEST(9194, 22612, { "i", 13858, 8 }),	-- Craftsman's Writ - Runecloth Robe
					CRAFTSMANS_WRIT_QUEST(9187, 22608, { "i", 15095, 4 }),	-- Craftsman's Writ - Runic Leather Pants
					CRAFTSMANS_WRIT_QUEST(9204, 22622, { "i", 13422, 40 }),	-- Craftsman's Writ - Stonescale Eel
					CRAFTSMANS_WRIT_QUEST(9196, 22614, { "i", 15993, 20 }),	-- Craftsman's Writ - Thorium Grenade
					CRAFTSMANS_WRIT_QUEST(9198, 22616, { "i", 16000, 14 }),	-- Craftsman's Writ - Thorium Tube
					CRAFTSMANS_WRIT_QUEST(9181, 22602, { "i", 12792, 3 }),	-- Craftsman's Writ - Volcanic Hammer
					CRAFTSMANS_WRIT_QUEST(9186, 22607, { "i", 15088, 9 }),	-- Craftsman's Writ - Wicked Leather Belt
					CRAFTSMANS_WRIT_QUEST(9184, 22605, { "i", 15086, 10 }),	-- Craftsman's Writ - Wicked Leather Headband
					i(22568, {	-- Sealed Craftsman's Writ
						i(22609),	-- Craftsman's Writ - Brightcloth Pants
						i(22600),	-- Craftsman's Writ - Dense Weightstone
						i(22621),	-- Craftsman's Writ - Flask of Petrification
						i(22615),	-- Craftsman's Writ - Gnomish Battle Chicken
						i(22613),	-- Craftsman's Writ - Goblin Sapper Charge
						i(22620),	-- Craftsman's Writ - Greater Arcane Protection Potion
						i(22603),	-- Craftsman's Writ - Huge Thorium Battleaxe
						i(22601),	-- Craftsman's Writ - Imperial Plate Chest
						i(22624),	-- Craftsman's Writ - Lightning Eel
						i(22618),	-- Craftsman's Writ - Major Healing Potion
						i(22617),	-- Craftsman's Writ - Major Mana Potion
						i(22623),	-- Craftsman's Writ - Plated Armorfish
						i(22604),	-- Craftsman's Writ - Radiant Circlet
						i(22606),	-- Craftsman's Writ - Rugged Armor Kit
						i(22611),	-- Craftsman's Writ - Runecloth Bag
						i(22610),	-- Craftsman's Writ - Runecloth Boots
						i(22612),	-- Craftsman's Writ - Runecloth Robe
						i(22608),	-- Craftsman's Writ - Runic Leather Pants
						i(22622),	-- Craftsman's Writ - Stonescale Eel
						i(22614),	-- Craftsman's Writ - Thorium Grenade
						i(22616),	-- Craftsman's Writ - Thorium Tube
						i(22602),	-- Craftsman's Writ - Volcanic Hammer
						i(22607),	-- Craftsman's Writ - Wicked Leather Belt
						i(22605),	-- Craftsman's Writ - Wicked Leather Headband
					}),
				},
			}),
			n(TREASURES, {
				o(176213, {	-- Blood of Heroes
					["description"] = "This item can be found sporatically on the ground in the Plaguelands.",
					["coords"] = {
						-- Plaguewood
						{ 34.5, 25.8, MAP.EASTERN_PLAGUELANDS },
						{ 38.8, 26.7, MAP.EASTERN_PLAGUELANDS },
						{ 33.6, 32.6, MAP.EASTERN_PLAGUELANDS },
						{ 38.5, 31.1, MAP.EASTERN_PLAGUELANDS },
						{ 36.7, 38.1, MAP.EASTERN_PLAGUELANDS },
						{ 38.9, 36.1, MAP.EASTERN_PLAGUELANDS },
						{ 44.9, 32.9, MAP.EASTERN_PLAGUELANDS },
						{ 49.1, 35.5, MAP.EASTERN_PLAGUELANDS },

						-- Blackwood Lake
						{ 47.5, 40.8, MAP.EASTERN_PLAGUELANDS },
						{ 50.3, 45.5, MAP.EASTERN_PLAGUELANDS },
						{ 53.5, 50.7, MAP.EASTERN_PLAGUELANDS },

						-- Light's Hope
						{ 66.1, 53.1, MAP.EASTERN_PLAGUELANDS },
						{ 73.8, 51.1, MAP.EASTERN_PLAGUELANDS },
						{ 76.2, 50.7, MAP.EASTERN_PLAGUELANDS },
						{ 75.6, 55.3, MAP.EASTERN_PLAGUELANDS },
						{ 74.7, 58.7, MAP.EASTERN_PLAGUELANDS },
						{ 78.5, 57.5, MAP.EASTERN_PLAGUELANDS },
						{ 80.5, 59.6, MAP.EASTERN_PLAGUELANDS },
						{ 78.7, 67.3, MAP.EASTERN_PLAGUELANDS },

						-- Tirion's House
						{ 7.1, 50.7, MAP.EASTERN_PLAGUELANDS },
						{ 8.1, 54.4, MAP.EASTERN_PLAGUELANDS },
						{ 14.2, 64.7, MAP.EASTERN_PLAGUELANDS },
						{ 20.0, 60.9, MAP.EASTERN_PLAGUELANDS },
						{ 20.5, 66.9, MAP.EASTERN_PLAGUELANDS },

						-- Crypt
						{ 22.1, 85.0, MAP.EASTERN_PLAGUELANDS },
						{ 24.3, 88.2, MAP.EASTERN_PLAGUELANDS },
						{ 28.8, 85.9, MAP.EASTERN_PLAGUELANDS },

						-- Nathanos's House
						{ 31.5, 73.9, MAP.EASTERN_PLAGUELANDS },
						{ 27.3, 64.0, MAP.EASTERN_PLAGUELANDS },
						{ 30.9, 65.5, MAP.EASTERN_PLAGUELANDS },
						{ 26.7, 69.5, MAP.EASTERN_PLAGUELANDS },
						{ 26.3, 70.5, MAP.EASTERN_PLAGUELANDS },
						{ 26.0, 74.7, MAP.EASTERN_PLAGUELANDS },
						{ 27.1, 75.5, MAP.EASTERN_PLAGUELANDS },
						{ 32.0, 71.0, MAP.EASTERN_PLAGUELANDS },
						{ 34.3, 67.8, MAP.EASTERN_PLAGUELANDS },
						{ 29.2, 78.8, MAP.EASTERN_PLAGUELANDS },
						{ 37.1, 65.7, MAP.EASTERN_PLAGUELANDS },
						{ 37.6, 68.5, MAP.EASTERN_PLAGUELANDS },
						{ 36.9, 70.6, MAP.EASTERN_PLAGUELANDS },
						{ 35.9, 75.8, MAP.EASTERN_PLAGUELANDS },
						{ 24.5, 76.9, MAP.EASTERN_PLAGUELANDS },
						{ 34.0, 80.2, MAP.EASTERN_PLAGUELANDS },

						-- Mushroom Kingdom
						{ 40.0, 49.9, MAP.EASTERN_PLAGUELANDS },
						{ 38.5, 54.0, MAP.EASTERN_PLAGUELANDS },

						-- The Infectis Scar
						{ 41.5, 65.7, MAP.EASTERN_PLAGUELANDS },
						{ 46.3, 64.0, MAP.EASTERN_PLAGUELANDS },
						{ 55.5, 58.7, MAP.EASTERN_PLAGUELANDS },
						{ 41.5, 79.7, MAP.EASTERN_PLAGUELANDS },
						{ 42.5, 75.7, MAP.EASTERN_PLAGUELANDS },
						{ 48.9, 67.2, MAP.EASTERN_PLAGUELANDS },
						{ 46.2, 70.8, MAP.EASTERN_PLAGUELANDS },
						{ 46.5, 74.8, MAP.EASTERN_PLAGUELANDS },
						{ 47.9, 80.0, MAP.EASTERN_PLAGUELANDS },
						{ 50.5, 77.3, MAP.EASTERN_PLAGUELANDS },
						{ 51.8, 70.3, MAP.EASTERN_PLAGUELANDS },
						{ 56.2, 63.9, MAP.EASTERN_PLAGUELANDS },
						{ 59.3, 62.2, MAP.EASTERN_PLAGUELANDS },
						{ 58.5, 64.9, MAP.EASTERN_PLAGUELANDS },
						{ 59.9, 67.5, MAP.EASTERN_PLAGUELANDS },
						{ 57.5, 72.0, MAP.EASTERN_PLAGUELANDS },
						{ 61.8, 70.2, MAP.EASTERN_PLAGUELANDS },
						{ 63.6, 67.7, MAP.EASTERN_PLAGUELANDS },
						{ 67.6, 66.8, MAP.EASTERN_PLAGUELANDS },

						-- Lake Mereldar
						{ 56.5, 76.1, MAP.EASTERN_PLAGUELANDS },
						{ 57.8, 76.2, MAP.EASTERN_PLAGUELANDS },
						{ 59.5, 76.0, MAP.EASTERN_PLAGUELANDS },
						{ 59.2, 80.8, MAP.EASTERN_PLAGUELANDS },
						{ 57.1, 81.9, MAP.EASTERN_PLAGUELANDS },
						{ 59.2, 80.8, MAP.EASTERN_PLAGUELANDS },
						{ 64.7, 81.0, MAP.EASTERN_PLAGUELANDS },

						-- Tyr's Hand
						{ 68.2, 70.6, MAP.EASTERN_PLAGUELANDS },
						{ 70.7, 69.5, MAP.EASTERN_PLAGUELANDS },
						{ 73.4, 69.8, MAP.EASTERN_PLAGUELANDS },
						{ 76.6, 72.5, MAP.EASTERN_PLAGUELANDS },
						{ 69.0, 71.5, MAP.EASTERN_PLAGUELANDS },
						{ 68.3, 74.6, MAP.EASTERN_PLAGUELANDS },
						{ 68.6, 78.5, MAP.EASTERN_PLAGUELANDS },
						{ 68.8, 80.6, MAP.EASTERN_PLAGUELANDS },
						{ 69.0, 83.5, MAP.EASTERN_PLAGUELANDS },
						{ 70.6, 80.8, MAP.EASTERN_PLAGUELANDS },
						{ 71.1, 75.3, MAP.EASTERN_PLAGUELANDS },
						{ 73.6, 76.9, MAP.EASTERN_PLAGUELANDS },
						{ 72.3, 78.5, MAP.EASTERN_PLAGUELANDS },
						{ 76.1, 78.2, MAP.EASTERN_PLAGUELANDS },
						{ 73.3, 82.2, MAP.EASTERN_PLAGUELANDS },
						{ 74.1, 83.8, MAP.EASTERN_PLAGUELANDS },
						{ 74.8, 83.5, MAP.EASTERN_PLAGUELANDS },
					},
					["groups"] = {
						i(12938),	-- Blood of Heroes
					},
				}),
				o(176116, {	-- Pamela's Doll's Head
					["sourceQuests"] = {
						5149,	-- Pamela's Doll
					},
					["coords"] = {
						{ 39.6, 90.1, MAP.EASTERN_PLAGUELANDS },
						{ 38.1, 92.5, MAP.EASTERN_PLAGUELANDS },
						{ 39.6, 92.5, MAP.EASTERN_PLAGUELANDS },
					},
					["groups"] = { i(12886) },	-- Pamela's Doll's Head (QI!)
				}),
				o(176142, {	-- Pamela's Doll's Left Side
					["sourceQuests"] = {
						5149,	-- Pamela's Doll
					},
					["coords"] = {
						{ 38.2, 92.1, MAP.EASTERN_PLAGUELANDS },
						{ 29.6, 90.2, MAP.EASTERN_PLAGUELANDS },
						{ 39.6, 92.7, MAP.EASTERN_PLAGUELANDS },
					},
					["groups"] = { i(12887) },	-- Pamela's Doll's Left Side (QI!)
				}),
				o(176143, {	-- Pamela's Doll's Right Side
					["sourceQuests"] = {
						5149,	-- Pamela's Doll
					},
					["coords"] = {
						{ 38.6, 92.7, MAP.EASTERN_PLAGUELANDS },
						{ 39.5, 92.5, MAP.EASTERN_PLAGUELANDS },
						{ 39.6, 90.0, MAP.EASTERN_PLAGUELANDS },
					},
					["groups"] = { i(12888) },	-- Pamela's Doll's Right Side (QI!)
				}),
			}),
			n(VENDORS, {
				n(12384, {	-- Agustus the Touched
					["description"] = "Vendor will not sell anything until you complete his quest.",
					["sourceQuests"] = {
						6164,	-- Augustus' Receipt Book
					},
					["coord"] = { 14.4, 33.6, MAP.EASTERN_PLAGUELANDS },
					["groups"] = {
						i(15902, {	-- A Crazy Grab Bag
							["description"] = "Contains a random green item. In later expansions due to gold inflation, this might not be a bad purchase, but if you're trying to buy it before say Legion, don't bother.",
							["cost"] = { { "g", 80000 } },	-- 8g
							["isLimited"] = true,
						}),
					},
				}),
				n(12941, {	-- Jase Farlane <Trade Supplies>
					["coord"] = { 80.6, 57.6, MAP.EASTERN_PLAGUELANDS },
					["groups"] = {
						i(15756, {	-- Pattern: Runic Leather Headband (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(11536, {	-- Quartermaster Miranda Breechlock <The Argent Crusade>
					["coord"] = { 81.6, 60.0, MAP.EASTERN_PLAGUELANDS },
					["groups"] = bubbleDownClassicRep(FACTION_ARGENT_DAWN, {
						{	-- Neutral
						},
						{	-- Friendly
							i(13724),	-- Enriched Manna Biscuit
						},
						{	-- Honored
							i(19446),	-- Formula: Enchant Bracer - Argent Versatility / CLASSIC: Formula: Enchant Bracer - Mana Regeneration (RECIPE!)
							i(19216),	-- Pattern: Argent Boots (RECIPE!)
							i(19328),	-- Pattern: Dawn Treaders (RECIPE!)
							i(19203),	-- Plans: Girdle of the Dawn (RECIPE!)
							i(19442),	-- Recipe: Powerful Anti-Venom (RECIPE!)
							i(13482),	-- Recipe: Transmute Air to Fire (RECIPE!)
							i(22014, {	-- Hallowed Brazier
								["cost"] = { { "g", 1500000 } },	-- 150g
							}),

						},
						{	-- Revered
							i(18171, {	-- Arcane Mantle of the Dawn
								["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
								["sourceQuests"] = {
									5504,	-- Mantles of the Dawn
									5507,	-- Mantles of the Dawn
									5513,	-- Mantles of the Dawn
								},
							}),
							i(18169, {	-- Flame Mantle of the Dawn
								["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
								["sourceQuests"] = {
									5504,	-- Mantles of the Dawn
									5507,	-- Mantles of the Dawn
									5513,	-- Mantles of the Dawn
								},
							}),
							i(18170, {	-- Frost Mantle of the Dawn
								["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
								["sourceQuests"] = {
									5504,	-- Mantles of the Dawn
									5507,	-- Mantles of the Dawn
									5513,	-- Mantles of the Dawn
								},
							}),
							i(18172, {	-- Nature Mantle of the Dawn
								["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
								["sourceQuests"] = {
									5504,	-- Mantles of the Dawn
									5507,	-- Mantles of the Dawn
									5513,	-- Mantles of the Dawn
								},
							}),
							i(18173, {	-- Shadow Mantle of the Dawn
								["description"] = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
								["sourceQuests"] = {
									5504,	-- Mantles of the Dawn
									5507,	-- Mantles of the Dawn
									5513,	-- Mantles of the Dawn
								},
							}),
							i(19447),	-- Formula: Enchant Bracer - Healing Power (RECIPE!)
							i(19217),	-- Pattern: Argent Shoulders (RECIPE!)
							i(19329),	-- Pattern: Golden Mantle of the Dawn (RECIPE!)
							i(19205),	-- Plans: Gloves of the Dawn (RECIPE!)
							i(13810),	-- Blessed Sunfruit
							i(13813),	-- Blessed Sunfruit Juice
						},
						{	-- Exalted
							i(18182, {	-- Chromatic Mantle of the Dawn
								["description"] = "You must have first completed 'Chromatic Mantle of the Dawn' in order to purchase this.",
								["sourceQuests"] = {
									5517,	-- Chromatic Mantle of the Dawn
									5521,	-- Chromatic Mantle of the Dawn
									5524,	-- Chromatic Mantle of the Dawn
								},
							}),
						},
					}),
				}),
			}),
			n(ZONE_DROPS, {
				i(22526),	-- Bone Fragments
				i(12843, {	-- Corruptor's Scourgestone / Inert Corruptor's Scourgestone
					["description"] = "Can drop from any Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12841, {	-- Invader's Scourgestone / Inert Invader's Scourgestone
					["description"] = "Can drop from any Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12840, {	-- Minion's Scourgestone / Inert Minion's Scourgestone
					["description"] = "Can drop from weak Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(16242, {	-- Formula: Enchant Chest - Major Mana (RECIPE!)
					["cr"] = 9452,	-- Scarlet Enchanter
				}),
				i(16222, {	-- Formula: Enchant Shield - Vitality / TBC-10.1.5:Formula: Enchant Shield - Superior Versatility / CLASSIC: Formula: Enchant Shield - Superior Spirit (RECIPE!)
					["cr"] = 9447,	-- Scarlet Warder
				}),
				i(18512, {	-- Larval Acid
					["crs"] = {
						8605,	-- Carrion Devourer
						8603,	-- Carrion Grub
					},
				}),
				i(20768, {	-- Oozing Bag
					["crs"] = {
						8603,	-- Carrion Grub
						8605,	-- Carrion Devourer
					},
					["groups"] = {
						i(20769),	-- Disgusting Oozeling (PET!)
					},
				}),
				i(14477, {	-- Pattern: Ghostweave Gloves (RECIPE!)
					["cr"] = 8538,	-- Unseen Servant
				}),
				i(14480, {	-- Pattern: Ghostweave Vest (RECIPE!)
					["cr"] = 8538,	-- Unseen Servant
				}),
				i(14485, {	-- Pattern: Wizardweave Leggings (RECIPE!)
					["cr"] = 8551,	-- Dark Summoner
				}),
				i(14500, {	-- Pattern: Wizardweave Robe (RECIPE!)
					["cr"] = 8526,	-- Dark Caster
				}),
				i(14505, {	-- Pattern: Wizardweave Turban (RECIPE!)
					["cr"] = 8526,	-- Dark Caster
				}),
				i(13479, {	-- Recipe: Elixir of the Sages (RECIPE!)
					["crs"] = {
						9451,	-- Scarlet Archmage
						9449,	-- Scarlet Cleric
						9450,	-- Scarlet Curate
						9452,	-- Scarlet Enchanter
					},
				}),
				i(13499, {	-- Recipe: Greater Shadow Protection Potion (RECIPE!)
					["coords"] = {
						{ 41.0, 50.2, MAP.EASTERN_PLAGUELANDS },
						{ 67.8, 39.8, MAP.EASTERN_PLAGUELANDS },
						{ 83.6, 44.0, MAP.EASTERN_PLAGUELANDS },
					},
					["timeline"] = { ADDED_1_11_1 },
					["crs"] = {
						8546,	-- Dark Adept <Cult of the Damned>
						8550,	-- Shadowmage <Cult of the Damned>
					},
				}),
				i(12811, {	-- Righteous Orb
					["description"] = "Can drop from any Scarlet Crusade member in Stratholme in addition to the Scarlet Oracle and the Crimson Elite in the Plaguelands.",
					["cr"] = 12339,	-- Demetria <The Scarlet Oracle>
				}),
				i(16056, {	-- Schematic: Flawless Arcanite Rifle (RECIPE!)
					["description"] = "Can kill Mossflayer Scout and Mossflayer Cannibal to get Shadowhunters.",
					["coords"] = {
						{ 72.8, 15.2, MAP.EASTERN_PLAGUELANDS },
						{ 68.8, 20.6, MAP.EASTERN_PLAGUELANDS },
						{ 65.4, 22.6, MAP.EASTERN_PLAGUELANDS },
					},
					["timeline"] = { ADDED_1_11_1 },
					["cr"] = 8561,	-- Mossflayer Shadowhunter
				}),
			}),
		},
	}),
}));
