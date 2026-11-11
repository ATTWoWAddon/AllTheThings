---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local CRAFTSMANS_WRIT_QUEST = function(id, itemID, cost)
	return applyclassicphase(PHASE_SIX, q(id, {	-- Craftsman's Writ - Quest
		provider = { "i", itemID },	-- Craftsman's Writ - Item
		cost = { cost },
		repeatable = true,
		lvl = 55,
		groups = {
			i(22524),	-- Insignia of the Crusade
			i(22523),	-- Insignia of the Dawn
		},
	}));
end

maproot(EASTERN_KINGDOMS, EASTERN_PLAGUELANDS, {
	lore =
		"Eastern Plaguelands is heavily-ravaged from the Scourge. The Argent Dawn has made some progress after The Lich King's defeat, but the zone is still full of Undead. Players explore Eastern Plaguelands primarily through escorting a Worgen merchant, Fiona, and her band of merry travelers she picks up along the way. The Plaguelands are the site for some of the most gripping storylines, including the Battle for Darrowshire and the fate of the Stratholme residents.",
	icon = 236760,
	groups = {
		m(NEW_AVALON, {
			lore = "New Avalon is located just east of Tyr's Hand in the Eastern Plaguelands. The town encompasses Scarlet Hold, the New Avalon Orchard, the Scarlet Tavern, the Chapel of the Crimson Flame, the New Avalon Town Hall, and the New Avalon Forge. The Scarlet Overlook and King's Harbor are located to the southeast, and Havenshire is to the north.",
			groups = {
				n(QUESTS, {
					q(87459, {	-- Scarlet Activities
						qg = 11036,	-- Leonid Barthalomew the Revered <The Argent Dawn>
						coord = { 81.6, 57.8, EASTERN_PLAGUELANDS },
					}),
					q(87493, {	-- Unrest at Tyr's Hand
						qg = 11036,	-- Leonid Barthalomew the Revered <The Argent Dawn>
						coord = { 81.6, 57.8, EASTERN_PLAGUELANDS },
						sourceQuest = 87459,	-- Scarlet Activities
					}),
					q(87497, {	-- The Schism
						qg = 239032,	-- Commander Beatrix
						coord = { 67.8, 83.2, EASTERN_PLAGUELANDS },
						sourceQuest = 87493,	-- Unrest at Tyr's Hand
					}),
					q(89562, {	-- My Old Enemy
						qg = 11036,	-- Leonid Barthalomew the Revered <The Argent Dawn>
						coord = { 81.6, 57.8, EASTERN_PLAGUELANDS },
						sourceQuest = 87497,	-- The Schism
					}),
					--••••• 5 Leonid's Burden Leonid's Burden
					--•••••• 6 The Wrecked Caravan The Wrecked Caravan
					--••••••• 7 Something New Something New
					--•••••••• 8 Servants of Death Servants of Death
					--••••••••• 9 A Personal Matter A Personal Matter
					--•••••••••• 10 The Culling The Culling
					--••••••••••• 11 Terrordale Terrordale
					--•••••••••••• 12 Stomping Out The Infestation Stomping Out The Infestation
					--••••••••••••• 13 Loss Loss
					--•••••••••••••• 14 The Right Path The Right Path
					-- The Scarlet Reclamation Questline
					q(87498, {	-- The Scarlet Reclamation
						qg = 11036,	-- Leonid Barthalomew the Revered <The Argent Dawn>
						coord = { 81.6, 57.8, EASTERN_PLAGUELANDS },
						sourceQuest = 87497,	-- The Schism
					}),
					--••••• 5 Gathering Intelligence Gathering Intelligence - Unlocks New Avalon New Avalon and Weakening The Defenses Weakening The Defenses

					--•••••• 6 New Avalon New Avalon

					--•••••• 6 Weakening The Defenses Weakening The Defenses
					--••••••• 7 Report to Lord Tyrosus Report to Lord Tyrosus
					--•••••••• 8 The Wrath of the Dawn The Wrath of the Dawn
					--••••••••• 9 Decapitation Strike Decapitation Strike
					--•••••••••• 10 Red = Dead Red = Dead
					q(87518, {	-- Fall of the Grand Crusader
						qg = 239337,	-- Lord Maxwell Tyrosus <The Argent Dawn>
					--	coord = { 81.6, 57.8, SCARLET_ENCLAVE },
						maps = { SCARLET_ENCLAVE },
					--	sourceQuest = 87517,	-- Red = Dead
						groups = {
							i(243229),	-- Hearthstone of the Dawn
						},
					}),
				}),
				n(PROFESSIONS, {
					prof(ENCHANTING, {
						description = "Before you can enter the Mage Tower to pick up the books, you will need to complete a small puzzle. First use the Scarlet Insignia, to disguise yourself then head to the Mage Tower within New Avalon.\nRun through the Stone Arches, and you will get a buff called Mystical Refraction this allows you to see colored crystals in the area.\nYou need to blend the color of the crystals to match the Mage Tower Portal door. You blend these by running under the floating tree.\nOnce you have solved the puzzle, simply walk through the portal to enter the Mage Tower. Once inside you will be greeted with Distracted Scarlet Wizards who you must avoid.\nOnce in, you will find the books on the bookcases throughout.\nEach book equals a different enchanting formula. Once you have looted the book, disenchant it then use 15 Illusion Dust, and 1 Righteous Orb to learn the enchant.",
						groups = {
							i(242268, {	-- If You Give a Crusader an Enchant
								i(241191),	-- Formula: Enchant Weapon - Grand Crusader
							}),
							i(242363, {	-- Who, What, Where, When, and Die! Five Keys to a Good Inquisition
								i(242361),	-- Formula: Enchant 2H Weapon - Grand Inquisitor
							}),
							i(242267, {	-- From Arcanist to Archmage
								i(241195),	-- Formula: Enchant 2H Weapon - Grand Arcanist
							}),
							i(242266, {	-- World of Wardcraft
								i(241201),	-- Formula: Enchant Weapon - Grand Sorcerer
							}),
						},
					}),
				}),
				n(VENDORS, {
					n(28512),	-- Quartermaster Ozorg
				}),
				n(ZONE_DROPS, {
					i(238309),	-- Pattern: Scarlet Infiltrator's Bracers
					i(238310),	-- Pattern: Scarlet Infiltrator's Gloves
					i(238311),	-- Pattern: Scarlet Infiltrator's Belt
					i(238312),	-- Pattern: Scarlet Infiltrator's Trousers
					i(238313),	-- Pattern: Scarlet Infiltrator's Shoes
					i(238317),	-- Pattern: Scarlet Huntsman's Wristguards
					i(238318),	-- Pattern: Scarlet Huntsman's Handguards
					i(238319),	-- Pattern: Scarlet Huntsman's Clasp
					i(238320),	-- Pattern: Scarlet Huntsman's Legguards
					i(238321),	-- Pattern: Scarlet Huntsman's Boots
					i(238325),	-- Plans: Scarlet Soldier's Protectors
					i(238326),	-- Plans: Scarlet Soldier's Grips
					i(238327),	-- Plans: Scarlet Soldier's Waistguard
					i(238328),	-- Plans: Scarlet Soldier's Legplates
					i(238329),	-- Plans: Scarlet Soldier's Stompers
				}),
			},
		}),
		n(ACHIEVEMENTS, {
			ach(771),	-- Explore Eastern Plaguelands
			achWithRep(946, FACTION_ARGENT_DAWN, {	-- The Argent Dawn
				maps = { WESTERN_PLAGUELANDS },
			}),
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
				icon = 134501,
				maps = {
					WESTERN_PLAGUELANDS,
					SCHOLOMANCE,
					STRATHOLME,
					NAXXRAMAS,
				},
			}),
		}),
		n(FLIGHT_PATHS, {
			fp(87, {	-- Crown Guard Tower, Eastern Plaguelands
				description = "If Plaguewood Tower is controlled by your faction, you can fly to this tower.",
				collectible = false,
			}),
			fp(86, {	-- Eastwall Tower, Eastern Plaguelands
				description = "If Plaguewood Tower is controlled by your faction, you can fly to this tower.",
				collectible = false,
			}),
			fp(67, {	-- Light's Hope Chapel, Eastern Plaguelands
				cr = 12617,	-- Khaelyn Steelwing <Gryphon Master>
				coords = {
					{ 81.6, 59.2, EASTERN_PLAGUELANDS },
				},
				races = ALLIANCE_ONLY,
			}),
			fp(68, {	-- Light's Hope Chapel, Eastern Plaguelands
				cr = 12636,	-- Georgia <Bat Handler>
				coords = {
					{ 80.2, 57.0, EASTERN_PLAGUELANDS },
				},
				races = HORDE_ONLY,
			}),
			fp(85, {	-- Northpass Tower, Eastern Plaguelands
				description = "If Plaguewood Tower is controlled by your faction, you can fly to this tower.",
				collectible = false,
			}),
			fp(84, {	-- Plaguewood Tower, Eastern Plaguelands
				crs = {
					17209,	-- William Kielar <Spectral Gryphon Master>
				},
				coords = {
					{ 22.2, 31.4, EASTERN_PLAGUELANDS },
				},
				description = "If this tower is controlled by your faction, you can fly from this tower to the other towers your faction controls.",
				collectible = false,
			}),
		}),
		lockpicking({
			o(179498, {	-- Scarlet Footlocker
				coords = {
					{ 80.8, 85.2, EASTERN_PLAGUELANDS },
					{ 83.8, 80.1, EASTERN_PLAGUELANDS },
					{ 87.9, 82.3, EASTERN_PLAGUELANDS },
				},
				requireSkill = LOCKPICKING,
				learnedAt = 250,
			}),
		}),
		n(QUESTS, {
			applyclassicphase(SOD_PHASE_FOUR, q(84332, {	-- A Thane's Gratitude
				sourceQuest = 84414,	-- Send Me On Me Way!
				provider = { "o", 462236 },	-- Mysterious Chest
				coord = { 27.4, 85.8, EASTERN_PLAGUELANDS },
				timeline = { ADDED_1_15_3 },
				classes = { PALADIN },
				lvl = 50,
				groups = {
					recipe(440788),	-- Engrave Cloak - Shield of Righteousness
					i(227935),	-- Hammer of the Fallen Thane
				},
			})),
			q(7621, {	-- A Warning
				qg = 14494,	-- Eris Havenfire
				coords = {
					{ 20.8, 18.4, EASTERN_PLAGUELANDS },
				},
				classes = { PRIEST },
				lvl = 60,
			}),
			applyclassicphase(SOD_PHASE_FOUR, q(84330, {	-- A Wee Bit O' Necromancy
				sourceQuest = 84319,	-- Oh No Ye Don't!
				providers = {
					{ "i", 227687 },	-- Orthas' Favorite Gold Tooth
					{ "n", 228619 },	-- Orthas <Dwarven Spirit>
				},
				coord = { 33.8, 28.8, EASTERN_PLAGUELANDS },
				timeline = { ADDED_1_15_3 },
				maps = { STRATHOLME },
				classes = { PALADIN },
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Necrotic Runestone
						provider = { "i", 227690 },	-- Necrotic Runestone
						cr = 10438,	-- Maleki the Pallid
					}),
				},
			})),
			q(5503, {	-- Argent Dawn Commission
				qg = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
				coords = {
					{ 81.4, 59.8, EASTERN_PLAGUELANDS },
				},
				lvl = 50,
				groups = {
					i(12846),	-- Argent Dawn Commission
				},
			}),
			q(6164, {	-- Augustus' Receipt Book
				qg = 12384,	-- Augustus the Touched
				coords = {
					{ 14.4, 33.6, EASTERN_PLAGUELANDS },
				},
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Augustus' Receipt Book
						providers = {
							{ "i",  15884 },	-- Augustus' Receipt Book
							{ "o", 177789 },	-- Augustus' Receipt Book
						},
						coords = {
							{ 17.5, 31.2, EASTERN_PLAGUELANDS },
						},
					}),
				},
			}),
			q(5152, {	-- Auntie Marlene
				sourceQuest = 5149,	-- Pamela's Doll
				qg = 10926,	-- Pamela Redpath
				coords = {
					{ 36.4, 90.8, EASTERN_PLAGUELANDS },
				},
				lvl = 50,
			}),
			applyclassicphase(PHASE_SIX, q(9131, {	-- Binding the Dreadnaught
				qg = 16112,	-- Korfax, Champion of the Light
				coords = {
					{ 81.8, 58.1, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 22528, 30 } },	-- Dark Iron Scraps
				lvl = 55,
				groups = {
					i(22523),	-- Insignia of the Dawn
				},
			})),
			q(5543, {	-- Blood Tinged Skies
				qg = 1855,	-- Tirion Fordring
				coords = {
					{ 7.6, 43.6, EASTERN_PLAGUELANDS },
				},
				lvl = 52,
				groups = {
					objective(1, {	-- 0/30 Plaguebat slain
						provider = { "n", 8600 },	-- Plaguebat
					}),
				},
			}),
			applyclassicphase(PHASE_SIX, q(9665, {	-- Bolstering Our Defenses
				qg = 17072,	-- Emmisary Gormok
				coords = {
					{ 80.0, 57.4, EASTERN_PLAGUELANDS },
				},
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- Capture Crown Guard Tower
						coord = { 39.7, 75.4, EASTERN_PLAGUELANDS },
					}),
					objective(2, {	-- Capture Eastwall Tower
						coord = { 67.4, 48.0, EASTERN_PLAGUELANDS },
					}),
					objective(3, {	-- Capture Northpass Tower
						coord = { 56.6, 24.4, EASTERN_PLAGUELANDS },
					}),
					objective(4, {	-- Capture Plaguewood Tower
						coord = { 22.0, 32.0, EASTERN_PLAGUELANDS },
					}),
				},
			})),
			applyclassicphase(PHASE_SIX, q(9127, {	-- Bone Fragments
				sourceQuest = 9126,	-- Bonescythe Digs
				qg = 16131,	-- Rohan the Assassin
				coords = {
					{ 81.4, 58.5, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 22526, 30 } },	-- Bone Fragments
				repeatable = true,
				lvl = 55,
				groups = {
					i(22524),	-- Insignia of the Crusade
				},
			})),
			applyclassicphase(PHASE_SIX, q(9126, {	-- Bonescythe Digs
				qg = 16131,	-- Rohan the Assassin
				coords = {
					{ 81.4, 58.5, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 22526, 30 } },	-- Bone Fragments
				lvl = 55,
				groups = {
					i(22524),	-- Insignia of the Crusade
				},
			})),
			q(5544, {	-- Carrion Grubbage
				qg = 1855,	-- Tirion Fordring
				coords = {
					{ 7.6, 43.6, EASTERN_PLAGUELANDS },
				},
				lvl = 52,
				groups = {
					objective(1, {	-- 0/15 Slab of Carrion Worm Meat
						provider = { "i", 13853 },	-- Slab of Carrion Worm Meat
						crs = {
							8605,	-- Carrion Devourer
							8603,	-- Carrion Grub
						},
					}),
				},
			}),
			q(5517, {	-- Chromatic Mantle of the Dawn
				sourceQuest = 5513,	-- Mantles of the Dawn
				altQuests = {
					5517,	-- Chromatic Mantle of the Dawn
					5521,	-- Chromatic Mantle of the Dawn
					5524,	-- Chromatic Mantle of the Dawn
				},
				qg = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
				coords = {
					{ 81.6, 60.0, EASTERN_PLAGUELANDS },
				},
				minReputation = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn
				cost = { { "i", 12844, 25 } },	-- Argent Dawn Valor Token
				lvl = 55,
				groups = {
					i(18182),	-- Chromatic Mantle of the Dawn
				},
			}),
			applyclassicphase(PHASE_SIX, q(9129, {	-- Core of Elements
				sourceQuest = 9128,	-- The Elemental Equation
				qg = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
				coords = {
					{ 81.5, 58.3, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 22527, 30 } },	-- Core of Elements
				repeatable = true,
				lvl = 55,
				groups = {
					i(22523),	-- Insignia of the Dawn
				},
			})),
			q(5508, {	-- Corruptor's Scourgestones
				qg = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
				coords = {
					{ 81.4, 59.8, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 12843, 1 } },	-- Corruptor's Scourgestone
				repeatable = true,
				lvl = 50,
				groups = {
					i(12844),	-- Argent Dawn Valor Token
				},
			}),
			applyclassicphase(PHASE_SIX, q(9142, {	-- Craftsman's Writ
				sourceQuest = 9141,	-- They Call Me "The Rooster"
				qg = 16212,	-- Dispatch Commander Metz <The Argent Dawn>
				coords = {
					{ 81.1, 57.5, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 12844, 1 } },	-- Argent Dawn Valor Token
				repeatable = true,
				lvl = 55,
				groups = {
					i(22568),	-- Sealed Craftsman's Writ
				},
			})),
			applyclassicphase(PHASE_SIX, q(9125, {	-- Crypt Fiend Parts
				sourceQuest = 9124,	-- Cryptstalker Armor Doesn't Make Itself...
				qg = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
				coords = {
					{ 82.5, 58.6, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 22525, 30 } },	-- Crypt Fiend Parts
				repeatable = true,
				lvl = 55,
				groups = {
					i(22524),	-- Insignia of the Crusade
				},
			})),
			applyclassicphase(PHASE_SIX, q(9124, {	-- Cryptstalker Armor Doesn't Make Itself...
				qg = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
				coords = {
					{ 82.5, 58.6, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 22525, 30 } },	-- Crypt Fiend Parts
				lvl = 55,
				groups = {
					i(22524),	-- Insignia of the Crusade
				},
			})),
			applyclassicphase(PHASE_SIX, q(9132, {	-- Dark Iron Scraps
				sourceQuest = 9131,	-- Binding the Dreadnaught
				qg = 16112,	-- Korfax, Champion of the Light
				coords = {
					{ 81.8, 58.1, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 22528, 30 } },	-- Dark Iron Scraps
				repeatable = true,
				lvl = 55,
				groups = {
					i(22523),	-- Insignia of the Dawn
				},
			})),
			q(5211, {	-- Defenders of Darrowshire
				sourceQuest = 5241,	-- Uncle Carlin
				qg = 11063,	-- Carlin Redpath
				coords = {
					{ 81.4, 59.8, EASTERN_PLAGUELANDS },
				},
				lvl = 50,
				groups = {
					objective(1, {	-- 0/15 Darrowshire Spirits Freed
						provider = { "n", 11064 },	-- Darrowshire Spirit
						crs = {
							8530,	-- Cannibal Ghoul
							8531,	-- Gibbering Ghoul
							8532,	-- Diseased Flayer
						},
					}),
				},
			}),
			q(5542, {	-- Demon Dogs
				qg = 1855,	-- Tirion Fordring
				coords = {
					{ 7.6, 43.6, EASTERN_PLAGUELANDS },
				},
				lvl = 52,
				groups = {
					objective(1, {	-- 0/20 Plaguehound Runt slain
						provider = { "n", 8596 },	-- Plaguehound Runt
					}),
					objective(2, {	-- 0/5 Plaguehound slain
						provider = { "n", 8597 },	-- Plaguehound
					}),
					objective(3, {	-- 0/5 Frenzied Plaguehound slain
						provider = { "n", 8598 },	-- Frenzied Plaguehound
					}),
				},
			}),
			q(6135, {	-- Duskwing, Oh How I Hate Thee...
				sourceQuests = {
					6133,	-- The Ranger Lord's Behest
					6022,	-- To Kill With Purpose
					6042,	-- Un-Life's Little Annoyances
				},
				qg = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
				coords = {
					{ 26.6, 74.8, EASTERN_PLAGUELANDS },
				},
				races = HORDE_ONLY,
				lvl = 56,
				groups = {
					objective(1, {	-- 0/1 Patch of Duskwing's Fur
						provider = { "i", 15850 },	-- Patch of Duskwing's Fur
						cr = 11897,	-- Duskwing
					}),
					i(16994),	-- Duskwing Gloves
					i(16995),	-- Duskwing Mantle
				},
			}),
			applyclassicphase(PHASE_SIX, q(9228, {	-- Epic Armaments of Battle - Exalted Amongst the Dawn
				qg = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
				coords = {
					{ 81.6, 60.0, EASTERN_PLAGUELANDS },
				},
				minReputation = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn
				cost = {
					{ "i", 22524, 27 },	-- Insignia of the Crusade
					{ "i", 22523, 27 },	-- Insignia of the Dawn
				},
				repeatable = true,
				lvl = 55,
				groups = {
					i(22657),	-- Amulet of the Dawn
					i(22667),	-- Bracers of Hope
					i(22668),	-- Bracers of Subterfuge
					i(22659),	-- Medallion of the Dawn
					i(22678),	-- Talisman of Ascendance
					i(22656),	-- The Purifier
				},
			})),
			applyclassicphase(PHASE_SIX, q(9222, {	-- Epic Armaments of Battle - Friend of the Dawn
				qg = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
				coords = {
					{ 81.6, 60.0, EASTERN_PLAGUELANDS },
				},
				minReputation = { FACTION_ARGENT_DAWN, FRIENDLY },	-- Argent Dawn
				maxReputation = { FACTION_ARGENT_DAWN, HONORED },	-- Argent Dawn
				cost = {
					{ "i", 22524, 110 },	-- Insignia of the Crusade
					{ "i", 22523, 110 },	-- Insignia of the Dawn
				},
				repeatable = true,
				lvl = 55,
				groups = {
					i(22657),	-- Amulet of the Dawn
					i(22667),	-- Bracers of Hope
					i(22668),	-- Bracers of Subterfuge
					i(22659),	-- Medallion of the Dawn
					i(22678),	-- Talisman of Ascendance
					i(22656),	-- The Purifier
				},
			})),
			applyclassicphase(PHASE_SIX, q(9224, {	-- Epic Armaments of Battle - Honored Amongst the Dawn
				qg = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
				coords = {
					{ 81.6, 60.0, EASTERN_PLAGUELANDS },
				},
				minReputation = { FACTION_ARGENT_DAWN, HONORED },	-- Argent Dawn
				maxReputation = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn
				cost = {
					{ "i", 22524, 75 },	-- Insignia of the Crusade
					{ "i", 22523, 75 },	-- Insignia of the Dawn
				},
				repeatable = true,
				lvl = 55,
				groups = {
					i(22657),	-- Amulet of the Dawn
					i(22667),	-- Bracers of Hope
					i(22668),	-- Bracers of Subterfuge
					i(22659),	-- Medallion of the Dawn
					i(22678),	-- Talisman of Ascendance
					i(22656),	-- The Purifier
				},
			})),
			applyclassicphase(PHASE_SIX, q(9225, {	-- Epic Armaments of Battle - Revered Amongst the Dawn
				qg = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
				coords = {
					{ 81.6, 60.0, EASTERN_PLAGUELANDS },
				},
				minReputation = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn
				maxReputation = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn
				cost = {
					{ "i", 22524, 45 },	-- Insignia of the Crusade
					{ "i", 22523, 45 },	-- Insignia of the Dawn
				},
				repeatable = true,
				lvl = 55,
				groups = {
					i(22657),	-- Amulet of the Dawn
					i(22667),	-- Bracers of Hope
					i(22668),	-- Bracers of Subterfuge
					i(22659),	-- Medallion of the Dawn
					i(22678),	-- Talisman of Ascendance
					i(22656),	-- The Purifier
				},
			})),
			applyclassicphase(PHASE_SIX, q(9664, {	-- Establishing New Outposts
				qg = 17069,	-- Emissary Whitebeard
				coords = {
					{ 81.3, 59.4, EASTERN_PLAGUELANDS },
				},
				races = ALLIANCE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- Capture Crown Guard Tower
						coord = { 39.7, 75.4, EASTERN_PLAGUELANDS },
					}),
					objective(2, {	-- Capture Eastwall Tower
						coord = { 67.4, 48.0, EASTERN_PLAGUELANDS },
					}),
					objective(3, {	-- Capture Northpass Tower
						coord = { 56.6, 24.4, EASTERN_PLAGUELANDS },
					}),
					objective(4, {	-- Capture Plaguewood Tower
						coord = { 22.0, 32.0, EASTERN_PLAGUELANDS },
					}),
				},
			})),
			q(5246, {	-- Fragments of the Past (1/2)
				sourceQuest = 5245,	-- Troubled Spirits of Kel'Theril
				qg = 10304,	-- Aurora Skycaller
				coords = {
					{ 53.4, 22.0, EASTERN_PLAGUELANDS },
				},
				maps = { AZSHARA },
				races = ALLIANCE_ONLY,
				lvl = 53,
				groups = {
					objective(1, {	-- 0/1 Sacred Highborne Writings
						providers = {
							{ "i",  13313 },	-- Sacred Highborne Writings
							{ "o", 176356 },	-- Sacred Highborne Writings
						},
						coord = { 41.4, 52.5, AZSHARA },
					}),
				},
			}),
			q(5247, {	-- Fragments of the Past (2/2)
				sourceQuest = 5246,	-- Fragments of the Past (1/2)
				qg = 10304,	-- Aurora Skycaller
				coords = {
					{ 53.4, 22.0, EASTERN_PLAGUELANDS },
				},
				maps = { DIRE_MAUL, FERALAS, UNGORO_CRATER },
				cost = {
					{ "i", 12655, 1 },	-- Enchanted Thorium Bar
					{ "i", 11562, 5 },	-- Crystal Restore
				},
				races = ALLIANCE_ONLY,
				lvl = 53,
				groups = {
					objective(3, {	-- 0/1 Vial of Dire Water
						providers = {
							{ "i",  16973 },	-- Vial of Dire Water
							{ "o", 178224 },	-- Dire Pool
							{ "i",  16974 },	-- Empty Water Vial
						},
						coord = { 42.70, 68.63, FERALAS },
					}),
				},
			}),
			q(6024, {	-- Hameya's Plea
				providers = {
					{ "o", 177667 },	-- Torn Scroll
					{ "o", 177675 },	-- Mound of Dirt
				},
				coords = {
					{ 27.3, 85.3, EASTERN_PLAGUELANDS },
					{ 28.1, 86.1, EASTERN_PLAGUELANDS },
				},
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Hameya's Key
						provider = { "i", 15767 },	-- Hameya's Key
						coords = {
							{ 70.6, 18.8, EASTERN_PLAGUELANDS },
						},
						cr = 12248,	-- Infiltrator Hameya
					}),
					i(15814),	-- Hameya's Slayer
					i(15815),	-- Hameya's Cloak
				},
			}),
			q(5168, {	-- Heroes of Darrowshire
				sourceQuest = 5210,	-- Brother Carlin
				qg = 11063,	-- Carlin Redpath
				coords = {
					{ 81.4, 59.8, EASTERN_PLAGUELANDS },
				},
				maps = { WESTERN_PLAGUELANDS },
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Davil's Libram
						providers = {
							{ "i",  12954 },	-- Davil's Libram
							{ "o", 176206 },	-- Davil's Libram
						},
						coord = { 42.4, 18.9, WESTERN_PLAGUELANDS },
					}),
					objective(2, {	-- 0/1 Redpath's Shield
						providers = {
							{ "i",  12955 },	-- Redpath's Shield
							{ "o", 176207 },	-- Redpath's Shield
						},
						coord = { 63.7, 57.2, WESTERN_PLAGUELANDS },
					}),
				},
			}),
			q(5942, {	-- Hidden Treasures
				sourceQuest = 5721,	-- The Battle of Darrowshire
				providers = {
					{ "n",  10926 },	-- Pamela Redpath
					{ "o", 177544 },	-- Joseph's Chest
					{ "i",  15328 },	-- Joseph's Key
				},
				coords = {
					{ 36.4, 90.8, EASTERN_PLAGUELANDS },
				},
				lvl = 50,
				groups = {
					i(15855),	-- Ring of Protection
					i(15856),	-- Archlight Talisman
					i(15857),	-- Magebane Scion
				},
			}),
			q(5509, {	-- Invader's Scourgestones
				qg = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
				coords = {
					{ 81.4, 59.8, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 12841, 10 } },	-- Invader's Scourgestones
				repeatable = true,
				lvl = 50,
				groups = {
					i(12844),	-- Argent Dawn Valor Token
				},
			}),
			q(5513, {	-- Mantles of the Dawn
				qg = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
				coords = {
					{ 81.6, 60.0, EASTERN_PLAGUELANDS },
				},
				minReputation = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn
				cost = { { "i", 12844, 10 } },	-- Argent Dawn Valor Token
				lvl = 55,
			}),
			q(5206, {	-- Marauders of Darrowshire
				sourceQuests = {
					5181,	-- Villains of Darrowshire
					5168,	-- Heroes of Darrowshire
					5154,	-- The Annals of Darrowshire
				},
				qg = 11063,	-- Carlin Redpath
				coords = {
					{ 81.4, 59.8, EASTERN_PLAGUELANDS },
				},
				lvl = 50,
				groups = {
					objective(1, {	-- 0/5 Resonating Skull
						providers = {
							{ "i", 13155 },	-- Resonating Skull
							{ "i", 13156 },	-- Mystic Crystal
							{ "i", 13157 },	-- Fetid Skull
						},
						cr = 8529,	-- Scourge Champion
					}),
					i(13159),	-- Bone Dust
				},
			}),
			q(5510, {	-- Minion's Scourgestones
				qg = 11039,	-- Duke Nicholas Zverenhoff <The Argent Dawn>
				coords = {
					{ 81.4, 59.8, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 12840, 20 } },	-- Minion's Scourgestone
				repeatable = true,
				lvl = 50,
				groups = {
					i(12844),	-- Argent Dawn Valor Token
				},
			}),
			q(6146, {	-- Nathanos' Ruse
				sourceQuests = {
					6145,	-- The Crimson Courier
				},
				qg = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
				coords = {
					{ 26.6, 74.8, EASTERN_PLAGUELANDS },
				},
				races = HORDE_ONLY,
				lvl = 56,
				groups = {
					objective(1, {	-- 0/1 The Grand Crusader's Command
						provider = { "i", 13852 },	-- The Grand Crusader's Command
					}),
					i(15876, {	-- Nathanos' Chest
						groups = {
							i(15875),	-- Rotten Apple
							i(13852),	-- The Grand Crusader's Command
						},
					}),
				},
			}),
			applyclassicphase(SOD_PHASE_FOUR, q(84318, {	-- Oi!
				providers = {
					{ "n", 228620 },	-- Slack-Jawed Ghoul <Dwarf-Sized Ghoul>
					{ "i", 227687 },	-- Orthas' Favorite Gold Tooth
					{ "n", 228619 },	-- Orthas <Dwarven Spirit>
				},
				coord = { 34.2, 80.4, EASTERN_PLAGUELANDS },
				timeline = { ADDED_1_15_3 },
				classes = { PALADIN },
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Ornate Warhammer
						providers = {
							{ "i", 227686 },	-- Ornate Warhammer
							{ "o", 461639 },	-- Orthas' Hammer
						},
						coord = { 61.3, 69.2, EASTERN_PLAGUELANDS },
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_FOUR, q(84319, {	-- Oh No Ye Don't!
				sourceQuest = 84318,	-- Oi!
				providers = {
					{ "i", 227687 },	-- Orthas' Favorite Gold Tooth
					{ "n", 228619 },	-- Orthas <Dwarven Spirit>
				},
				coord = { 61.3, 69.2, EASTERN_PLAGUELANDS },
				timeline = { ADDED_1_15_3 },
				classes = { PALADIN },
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Partially-Digested Plate Armor
						provider = { "i", 227689 },	-- Partially-Digested Plate Armor
						coord = { 33.8, 28.8, EASTERN_PLAGUELANDS },
						crs = {
							8543,	-- Stitched Horror
							8545,	-- Abomination
						},
					}),
				},
			})),
			q(5149, {	-- Pamela's Doll
				sourceQuests = {
					5142,	-- Little Pamela
					5601,	-- Sister Pamela
				},
				qg = 10926,	-- Pamela Redpath
				coords = {
					{ 36.4, 90.8, EASTERN_PLAGUELANDS },
				},
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Pamela's Doll
						provider = { "i", 12885 },	-- Pamela's Doll
						cost = {
							{ "i", 12886, 1 },	-- Pamela's Doll's Head
							{ "i", 12887, 1 },	-- Pamela's Doll's Left Side
							{ "i", 12888, 1 },	-- Pamela's Doll's Right Side
						},
					}),
				},
			}),
			q(5941, {	-- Return to Chromie
				sourceQuest = 5206,	-- Marauders of Darrowshire
				qg = 11063,	-- Carlin Redpath
				qi = 15314,	-- Bundle of Relics
				coords = {
					{ 81.4, 59.8, EASTERN_PLAGUELANDS },
				},
				lvl = 50,
			}),
			q(6147, {	-- Return to Nathanos
				sourceQuest = 6146,	-- Nathanos' Ruse
				qg = 11898,	-- Crusader Lord Valdelmar
				coords = {
					{ 88.2, 86.2, EASTERN_PLAGUELANDS },
				},
				races = HORDE_ONLY,
				lvl = 56,
			}),
			applyclassicphase(PHASE_SIX, q(9136, {	-- Savage Flora
				qg = 16135,	-- Rayne <Cenarion Circle>
				coords = {
					{ 81.2, 59.0, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 22529, 30 } },	-- Savage Frond
				lvl = 55,
				groups = {
					i(22524),	-- Insignia of the Crusade
					i(22523),	-- Insignia of the Dawn
				},
			})),
			applyclassicphase(PHASE_SIX, q(9137, {	-- Savage Fronds
				sourceQuest = 9136,	-- Savage Flora
				qg = 16135,	-- Rayne <Cenarion Circle>
				coords = {
					{ 81.2, 59.0, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 22529, 30 } },	-- Savage Frond
				repeatable = true,
				lvl = 55,
				groups = {
					i(22524),	-- Insignia of the Crusade
					i(22523),	-- Insignia of the Dawn
				},
			})),
			applyclassicphase(SOD_PHASE_FOUR, q(84414, {	-- Send Me On Me Way!
				sourceQuest = 84330,	-- A Wee Bit O' Necromancy
				qg = 229018,	-- Rotting Dwarf Corpse
				coord = { 27.6, 86.0, EASTERN_PLAGUELANDS },
				timeline = { ADDED_1_15_3 },
				classes = { PALADIN },
				lvl = 50,
				groups = {
					objective(1, {	-- Send Orthas' Spirit On His Way
						provider = { "o", 462236 },	-- Mysterious Chest
						coord = { 27.4, 85.8, EASTERN_PLAGUELANDS },
					}),
				},
			})),
			applyclassicphase(PHASE_SIX, q(88724, {	-- Superior Armaments of Battle - Exalted Amongst the Dawn
				qg = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
				coords = {
					{ 81.6, 60.0, EASTERN_PLAGUELANDS },
				},
				minReputation = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn
				cost = {
					{ "i", 22524, 6 },	-- Insignia of the Crusade
					{ "i", 22523, 6 },	-- Insignia of the Dawn
				},
				repeatable = true,
				lvl = 55,
				groups = {
					i(237284),	-- Supply Bag
					i(237285),	-- Band of Resolution
					i(237286),	-- Band of Piety
					i(237287),	-- Verimonde's Last Resort
					i(237288),	-- Sanctified Leather Helm
					i(237289),	-- Leggings of the Plague Hunter
				},
			})),
			applyclassicphase(PHASE_SIX, q(88721, {	-- Superior Armaments of Battle - Friend of the Dawn
				qg = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
				coords = {
					{ 81.6, 60.0, EASTERN_PLAGUELANDS },
				},
				minReputation = { FACTION_ARGENT_DAWN, FRIENDLY },	-- Argent Dawn
				maxReputation = { FACTION_ARGENT_DAWN, HONORED },	-- Argent Dawn
				cost = {
					{ "i", 22524, 30 },	-- Insignia of the Crusade
					{ "i", 22523, 30 },	-- Insignia of the Dawn
				},
				repeatable = true,
				lvl = 55,
				groups = {
					i(237284),	-- Supply Bag
					i(237285),	-- Band of Resolution
					i(237286),	-- Band of Piety
					i(237287),	-- Verimonde's Last Resort
					i(237288),	-- Sanctified Leather Helm
					i(237289),	-- Leggings of the Plague Hunter
				},
			})),
			applyclassicphase(PHASE_SIX, q(88722, {	-- Superior Armaments of Battle - Honored Amongst the Dawn
				qg = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
				coords = {
					{ 81.6, 60.0, EASTERN_PLAGUELANDS },
				},
				minReputation = { FACTION_ARGENT_DAWN, HONORED },	-- Argent Dawn
				maxReputation = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn
				cost = {
					{ "i", 22524, 20 },	-- Insignia of the Crusade
					{ "i", 22523, 20 },	-- Insignia of the Dawn
				},
				repeatable = true,
				lvl = 55,
				groups = {
					i(237284),	-- Supply Bag
					i(237285),	-- Band of Resolution
					i(237286),	-- Band of Piety
					i(237287),	-- Verimonde's Last Resort
					i(237288),	-- Sanctified Leather Helm
					i(237289),	-- Leggings of the Plague Hunter
				},
			})),
			applyclassicphase(PHASE_SIX, q(88723, {	-- Superior Armaments of Battle - Revered Amongst the Dawn
				qg = 11536,	-- Quartermaster Miranda Breechlock <The Argent Dawn>
				coords = {
					{ 81.6, 60.0, EASTERN_PLAGUELANDS },
				},
				minReputation = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn
				maxReputation = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn
				cost = {
					{ "i", 22524, 7 },	-- Insignia of the Crusade
					{ "i", 22523, 7 },	-- Insignia of the Dawn
				},
				repeatable = true,
				lvl = 55,
				groups = {
					i(237284),	-- Supply Bag
					i(237285),	-- Band of Resolution
					i(237286),	-- Band of Piety
					i(237287),	-- Verimonde's Last Resort
					i(237288),	-- Sanctified Leather Helm
					i(237289),	-- Leggings of the Plague Hunter
				},
			})),
			q(6026, {	-- That's Asking A Lot
				qg = 11033,	-- Smokey LaRue
				coords = {
					{ 80.6, 58.0, EASTERN_PLAGUELANDS },
				},
				cost = {
					{ "i", 10562, 8 },	-- Hi-Explosive Bomb
					{ "i", 10560, 8 },	-- Unstable Trigger
					{ "i", 12359, 2 },	-- Thorium Bar
					{ "i", 11128, 1 },	-- Golden Rod
				},
				lvl = 54,
			}),
			applyclassicphase(SOD_PHASE_FOUR, q(84590, {	-- The Balance of Light and Shadow
				sourceQuest = 7621,	-- A Warning
				qg = 14494,	-- Eris Havenfire
				qi = 228749,	-- Splinter of Nordrassil
				coords = {
					{ 20.8, 18.4, EASTERN_PLAGUELANDS },
				},
				timeline = { ADDED_1_15_3 },
				cost = {
					{ "i", 18646, 1 },	-- The Eye of Divinity
					{ "i", 18665, 1 },	-- The Eye of Shadow
				},
				classes = { PRIEST },
				lvl = 60,
				groups = {
					i(228336),	-- Anathema
					i(228335),	-- Benediction
				},
			})),
			q(7622, {	-- The Balance of Light and Shadow
				sourceQuest = 7621,	-- A Warning
				qg = 14494,	-- Eris Havenfire
				qi = 18659,	-- Splinter of Nordrassil
				coords = {
					{ 20.8, 18.4, EASTERN_PLAGUELANDS },
				},
				timeline = { REMOVED_1_15_3 },
				cost = {
					{ "i", 18646, 1 },	-- The Eye of Divinity
					{ "i", 18665, 1 },	-- The Eye of Shadow
				},
				classes = { PRIEST },
				lvl = 60,
				groups = {
					i(18609),	-- Anathema
					i(18608),	-- Benediction
				},
			}),
			q(5721, {	-- The Battle of Darrowshire
				sourceQuest = 5941,	-- Return to Chromie
				qg = 10667,	-- Chromie
				coord = { 39.4, 66.8, WESTERN_PLAGUELANDS },
				lvl = 55,
				groups = {
					objective(1, {	-- Accept Redpath's Forgiveness
						providers = {
							{ "n", 10936 },	-- Joseph Redpath
							{ "i", 15209 },	-- Relic Bundle
						},
						coord = { 39.0, 91.2, EASTERN_PLAGUELANDS },
					}),
					i(15723),	-- Tea with Sugar
				},
			}),
			q(6144, {	-- The Call to Command
				sourceQuests = {
					6135,	-- Duskwing, Oh How I Hate Thee...
					6136,	-- The Corpulent One
				},
				qg = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
				coords = {
					{ 26.6, 74.8, EASTERN_PLAGUELANDS },
				},
				maps = { UNDERCITY },
				races = HORDE_ONLY,
				lvl = 56,
			}),
			q(5961, {	-- The Champion of the Banshee Queen
				qg = 10181,	-- Lady Sylvanas Windrunner <Banshee Queen>
				coord = { 57.8, 91.8, UNDERCITY },
				races = HORDE_ONLY,
				lvl = 54,
			}),
			q(6136, {	-- The Corpulent One
				qg = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
				sourceQuest = 6133,	-- The Ranger Lord's Behest
				coords = {
					{ 26.6, 74.8, EASTERN_PLAGUELANDS },
				},
				races = HORDE_ONLY,
				lvl = 56,
				groups = {
					objective(1, {	-- 0/1 Borelgore slain
						provider = { "n", 11896 },	-- Borelgore
					}),
					i(17002),	-- Ichor Spitter
					i(17003),	-- Skullstone Hammer
					i(17004),	-- Sarah's Guide
				},
			}),
			q(6145, {	-- The Crimson Courier
				sourceQuest = 6144,	-- The Call to Command
				qgs = {
					2425,	-- Varimathras
				},
				coords = {
					{ 56.2, 92.6, UNDERCITY },
				},
				races = HORDE_ONLY,
				lvl = 56,
				groups = {
					objective(1, {	-- 0/1 The Grand Crusader's Command
						provider = { "i", 15868 },	-- The Grand Crusader's Command
						cr = 12337,	-- Crimson Courier
					}),
				},
			}),
			applyclassicphase(PHASE_SIX, q(9128, {	-- The Elemental Equation
				qg = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
				coords = {
					{ 81.5, 58.3, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 22527, 30 } },	-- Core of Elements
				lvl = 55,
				groups = {
					i(22523),	-- Insignia of the Dawn
				},
			})),
			applyclassicphase(PHASE_SIX, q(9211, {	-- The Ice Guard
				qg = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
				coords = {
					{ 81.4, 58.2, EASTERN_PLAGUELANDS },
				},
				cost = {
					{ "i", 22524, 10 },	-- Insignia of the Crusade
					{ "g", 300000 },	-- 30g
				},
				repeatable = true,
				lvl = 60,
				groups = {
					i(22636),	-- Ice Guard
				},
			})),
			q(6133, {	-- The Ranger Lord's Behest
				qg = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
				coords = {
					{ 26.6, 74.8, EASTERN_PLAGUELANDS },
				},
				races = HORDE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/8 Pathstrider slain
						provider = { "n", 8565 },	-- Pathstrider
					}),
					objective(2, {	-- 0/8 Ranger slain
						provider = { "n", 8564 },	-- Ranger
					}),
					objective(3, {	-- 0/8 Woodsman slain
						provider = { "n", 8563 },	-- Woodsman
					}),
					objective(4, {	-- 0/1 Quel'Thalas Registry
						providers = {
							{ "i",  15847 },	-- Quel'Thalas Registry
							{ "o", 177747 },	-- Quel'Thalas Registry
						},
						coord = { 52.1, 18.5, EASTERN_PLAGUELANDS },
					}),
				},
			}),
			q(6148, {	-- The Scarlet Oracle, Demetria
				sourceQuest = 6147,	-- Return to Nathanos
				qg = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
				coords = {
					{ 26.6, 74.8, EASTERN_PLAGUELANDS },
				},
				races = HORDE_ONLY,
				lvl = 56,
				groups = {
					objective(1, {	-- 0/1 Demetria slain
						provider = { "n", 12339 },	-- Demetria <The Scarlet Oracle>
					}),
					i(16996),	-- Gorewood Bow
					i(16997),	-- Stormrager
					i(16998),	-- Sacred Protector
				},
			}),
			applyclassicphase(PHASE_SIX, q(9213, {	-- The Shadow Guard
				qg = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
				coords = {
					{ 81.4, 58.2, EASTERN_PLAGUELANDS },
				},
				cost = {
					{ "i", 22524, 10 },	-- Insignia of the Crusade
					{ "g", 300000 },	-- 30g
				},
				repeatable = true,
				lvl = 60,
				groups = {
					i(22638),	-- Shadow Guard
				},
			})),
			applyclassicphase(PHASE_SIX, q(9141, {	-- They Call Me "The Rooster"
				qg = 16212,	-- Dispatch Commander Metz <The Argent Dawn>
				coords = {
					{ 81.1, 57.5, EASTERN_PLAGUELANDS },
				},
				cost = { { "i", 12844, 1 } },	-- Argent Dawn Valor Token
				lvl = 55,
				groups = {
					i(22568),	-- Sealed Craftsman's Writ
				},
			})),
			q(6022, {	-- To Kill With Purpose
				qg = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
				coords = {
					{ 26.6, 74.8, EASTERN_PLAGUELANDS },
				},
				races = HORDE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Coagulated Rot
						providers = {
							{ "i", 15448 },	-- Coagulated Rot
						},
						crs = {
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
						provider = { "i", 15454 },	-- Mortar and Pestle
						cost = { { "i", 15447, 7 } },	-- Living Rot
					}),
					i(15454),	-- Mortar and Pestle
					i(15447, {	-- Living Rot
						description = "PROTIP: Do NOT loot these until you have a couple of creatures killed nearby. The timer starts the second you pick it up.",
					}),
				},
			}),
			q(5248, {	-- Tormented By the Past
				sourceQuest = 5247,	-- Fragments of the Past
				qg = 10304,	-- Aurora Skycaller
				qi = 13347,	-- Crystal of Zin-Malor
				coords = {
					{ 53.4, 22.0, EASTERN_PLAGUELANDS },
				},
				races = ALLIANCE_ONLY,
				lvl = 53,
			}),
			q(6042, {	-- Un-Life's Little Annoyances
				qg = 11878,	-- Nathanos Blightcaller <Champion of the Banshee Queen>
				coords = {
					{ 26.6, 74.8, EASTERN_PLAGUELANDS },
				},
				races = HORDE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/20 Noxious Plaguebat slain
						provider = { "n", 8601 },	-- Noxious Plaguebat
					}),
					objective(2, {	-- 0/20 Monstrous Plaguebat slain
						provider = { "n", 8602 },	-- Monstrous Plaguebat
					}),
				},
			}),
			q(5241, {	-- Uncle Carlin
				sourceQuest = 5149,	-- Pamela's Doll
				qg = 10926,	-- Pamela Redpath
				coords = {
					{ 36.4, 90.8, EASTERN_PLAGUELANDS },
				},
				lvl = 50,
			}),
			q(5181, {	-- Villains of Darrowshire
				sourceQuest = 5210,	-- Brother Carlin
				qg = 11063,	-- Carlin Redpath
				coords = {
					{ 81.4, 59.8, EASTERN_PLAGUELANDS },
				},
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Skull of Horgus
						providers = {
							{ "i",  12956 },	-- Skull of Horgus
							{ "o", 176208 },	-- Horgus' Skull
						},
						coord = { 51.1, 49.9, EASTERN_PLAGUELANDS },
					}),
					objective(2, {	-- 0/1 Shattered Sword of Marduk
						providers = {
							{ "i",  12957 },	-- Shattered Sword of Marduk
							{ "o", 176209 },	-- Shattered Sword of Marduk
						},
						coord = { 53.9, 65.8, EASTERN_PLAGUELANDS },
					}),
				},
			}),
			q(6041, {	-- When Smokey Sings, I Get Violent
				sourceQuest = 6026,	-- That's Asking A Lot
				qg = 11033,	-- Smokey LaRue
				coords = {
					{ 80.6, 58.0, EASTERN_PLAGUELANDS },
				},
				lvl = 54,
				groups = {
					objective(1, {	-- 0/8 Scourge Structures Destroyed
						providers = {
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
			applyclassicphase(PHASE_SIX, q(9165, {	-- Writ of Safe Passage
				description = "Twice per day, Guard Didier starts a caravan westward. Simply protect him and the mules, but if any of them die, it's over. After the caravan arrives at its destination, he will offer this quest.",
				qg = 16226,	-- Guard Didier <Brotherhood of the Light>
				coords = {
					{ 80.0, 58.0, EASTERN_PLAGUELANDS },
				},
				repeatable = true,
				lvl = 55,
				groups = {
					objective(1, {	-- Writ of Safe Passage Signed
						provider = { "i", 22593 },	-- Writ of Safe Passage
					}),
					i(22524),	-- Insignia of the Crusade
					i(22523),	-- Insignia of the Dawn
				},
			})),
			q(6021, {	-- Zaeldarr the Outcast
				qg = 11038,	-- Caretaker Alen <The Argent Dawn>
				coords = {
					{ 79.4, 63.8, EASTERN_PLAGUELANDS },
				},
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Zaeldarr's Head
						provider = { "i", 15785 },	-- Zaeldarr's Head
						coord = { 27.6, 85.2, EASTERN_PLAGUELANDS },
						cr = 12250,	-- Zaeldarr the Outcast
					}),
				},
			}),
		}),
		n(RARES, {
			n(10824, {	-- Death-Hunter Hawkspear [CATA+] / Ranger Lord Hawkspear
				coords = {
					{ 53.4, 16.0, EASTERN_PLAGUELANDS },
				},
			}),
			n(10827, {	-- Deathspeaker Selendre <Cult of the Damned>
				coords = {
					{ 41.4, 49.2, EASTERN_PLAGUELANDS },
					{ 82.8, 40.0, EASTERN_PLAGUELANDS },
					{ 85.8, 46.2, EASTERN_PLAGUELANDS },
				},
			}),
			n(10817, {	-- Duggan Wildhammer
				coords = {
					{ 49.4, 63.2, EASTERN_PLAGUELANDS },
					{ 41.8, 69.8, EASTERN_PLAGUELANDS },
					{ 32.8, 83.0, EASTERN_PLAGUELANDS },
					{ 25.8, 88.6, EASTERN_PLAGUELANDS },
					{ 19.8, 64.4, EASTERN_PLAGUELANDS },
					{ 15.8, 79.2, EASTERN_PLAGUELANDS },
				},
				races = HORDE_ONLY,
			}),
			n(10825, {	-- Gish the Unmoving
				coords = {
					{ 51.6, 43.8, EASTERN_PLAGUELANDS },
					{ 53.6, 44.6, EASTERN_PLAGUELANDS },
					{ 54.8, 50.6, EASTERN_PLAGUELANDS },
					{ 57.0, 53.8, EASTERN_PLAGUELANDS },
					{ 63.0, 55.6, EASTERN_PLAGUELANDS },
					{ 67.0, 57.0, EASTERN_PLAGUELANDS },
					{ 72.6, 56.8, EASTERN_PLAGUELANDS },
				},
			}),
			n(10821, {	-- Hed'mush the Rotting
				coords = {
					{ 55.6, 25.4, EASTERN_PLAGUELANDS },
					{ 67.4, 50.2, EASTERN_PLAGUELANDS },
					{ 39.0, 74.6, EASTERN_PLAGUELANDS },
				},
			}),
			n(10828, {	-- Lynnia Abbendis <The Fallen Hope> [CATA+] / High General Abbendis
				coords = {
					{ 80.6, 85.6, EASTERN_PLAGUELANDS },
					{ 88.4, 86.6, EASTERN_PLAGUELANDS },
				},
			}),
			n(10826, {	-- Lord Darkscythe
				coords = {
					{ 26.0, 33.4, EASTERN_PLAGUELANDS },
					{ 35.0, 24.8, EASTERN_PLAGUELANDS },
					{ 39.2, 27.0, EASTERN_PLAGUELANDS },
					{ 43.6, 28.8, EASTERN_PLAGUELANDS },
					{ 40.0, 36.4, EASTERN_PLAGUELANDS },
				},
				groups = {
					i(16039),	-- Ta'Kierthan Songblade
				},
			}),
			n(16184, {	-- Nerubian Overseer
				coords = {
					{ 7.4, 43.6, EASTERN_PLAGUELANDS },
					{ 9.6, 37.8, EASTERN_PLAGUELANDS },
					{ 15.2, 32.6, EASTERN_PLAGUELANDS },
					{ 20.2, 31.6, EASTERN_PLAGUELANDS },
				},
			}),
			n(10822, {	-- Warlord Thresh'jin
				coords = {
					{ 65.6, 21.8, EASTERN_PLAGUELANDS },
					{ 68.8, 20.8, EASTERN_PLAGUELANDS },
					{ 70.8, 19.8, EASTERN_PLAGUELANDS },
					{ 72.4, 13.0, EASTERN_PLAGUELANDS },
				},
			}),
			n(10823, {	-- Zul'Brin Warpbranch
				coords = {
					{ 68.2, 21.2, EASTERN_PLAGUELANDS },
					{ 69.4, 16.4, EASTERN_PLAGUELANDS },
					{ 72.6, 18.8, EASTERN_PLAGUELANDS },
					{ 72.6, 13.4, EASTERN_PLAGUELANDS },
				},
			}),
		}),
		n(REWARDS, {
			description = "These are rewarded from multiple quests in the zone. Refer to the individual item tooltips for more information.",
			groups = {
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
					groups = {
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
					},
				}),
			},
		}),
		n(TREASURES, {
			o(176213, {	-- Blood of Heroes
				description = "This item can be found sporatically on the ground in the Plaguelands.",
				coords = {
					-- Plaguewood
					{ 34.5, 25.8, EASTERN_PLAGUELANDS },
					{ 38.8, 26.7, EASTERN_PLAGUELANDS },
					{ 33.6, 32.6, EASTERN_PLAGUELANDS },
					{ 38.5, 31.1, EASTERN_PLAGUELANDS },
					{ 36.7, 38.1, EASTERN_PLAGUELANDS },
					{ 38.9, 36.1, EASTERN_PLAGUELANDS },
					{ 44.9, 32.9, EASTERN_PLAGUELANDS },
					{ 49.1, 35.5, EASTERN_PLAGUELANDS },

					-- Blackwood Lake
					{ 47.5, 40.8, EASTERN_PLAGUELANDS },
					{ 50.3, 45.5, EASTERN_PLAGUELANDS },
					{ 53.5, 50.7, EASTERN_PLAGUELANDS },

					-- Light's Hope
					{ 66.1, 53.1, EASTERN_PLAGUELANDS },
					{ 73.8, 51.1, EASTERN_PLAGUELANDS },
					{ 76.2, 50.7, EASTERN_PLAGUELANDS },
					{ 75.6, 55.3, EASTERN_PLAGUELANDS },
					{ 74.7, 58.7, EASTERN_PLAGUELANDS },
					{ 78.5, 57.5, EASTERN_PLAGUELANDS },
					{ 80.5, 59.6, EASTERN_PLAGUELANDS },
					{ 78.7, 67.3, EASTERN_PLAGUELANDS },

					-- Tirion's House
					{ 7.1, 50.7, EASTERN_PLAGUELANDS },
					{ 8.1, 54.4, EASTERN_PLAGUELANDS },
					{ 14.2, 64.7, EASTERN_PLAGUELANDS },
					{ 20.0, 60.9, EASTERN_PLAGUELANDS },
					{ 20.5, 66.9, EASTERN_PLAGUELANDS },

					-- Crypt
					{ 22.1, 85.0, EASTERN_PLAGUELANDS },
					{ 24.3, 88.2, EASTERN_PLAGUELANDS },
					{ 28.8, 85.9, EASTERN_PLAGUELANDS },

					-- Nathanos's House
					{ 31.5, 73.9, EASTERN_PLAGUELANDS },
					{ 27.3, 64.0, EASTERN_PLAGUELANDS },
					{ 30.9, 65.5, EASTERN_PLAGUELANDS },
					{ 26.7, 69.5, EASTERN_PLAGUELANDS },
					{ 26.3, 70.5, EASTERN_PLAGUELANDS },
					{ 26.0, 74.7, EASTERN_PLAGUELANDS },
					{ 27.1, 75.5, EASTERN_PLAGUELANDS },
					{ 32.0, 71.0, EASTERN_PLAGUELANDS },
					{ 34.3, 67.8, EASTERN_PLAGUELANDS },
					{ 29.2, 78.8, EASTERN_PLAGUELANDS },
					{ 37.1, 65.7, EASTERN_PLAGUELANDS },
					{ 37.6, 68.5, EASTERN_PLAGUELANDS },
					{ 36.9, 70.6, EASTERN_PLAGUELANDS },
					{ 35.9, 75.8, EASTERN_PLAGUELANDS },
					{ 24.5, 76.9, EASTERN_PLAGUELANDS },
					{ 34.0, 80.2, EASTERN_PLAGUELANDS },

					-- Mushroom Kingdom
					{ 40.0, 49.9, EASTERN_PLAGUELANDS },
					{ 38.5, 54.0, EASTERN_PLAGUELANDS },

					-- The Infectis Scar
					{ 41.5, 65.7, EASTERN_PLAGUELANDS },
					{ 46.3, 64.0, EASTERN_PLAGUELANDS },
					{ 55.5, 58.7, EASTERN_PLAGUELANDS },
					{ 41.5, 79.7, EASTERN_PLAGUELANDS },
					{ 42.5, 75.7, EASTERN_PLAGUELANDS },
					{ 48.9, 67.2, EASTERN_PLAGUELANDS },
					{ 46.2, 70.8, EASTERN_PLAGUELANDS },
					{ 46.5, 74.8, EASTERN_PLAGUELANDS },
					{ 47.9, 80.0, EASTERN_PLAGUELANDS },
					{ 50.5, 77.3, EASTERN_PLAGUELANDS },
					{ 51.8, 70.3, EASTERN_PLAGUELANDS },
					{ 56.2, 63.9, EASTERN_PLAGUELANDS },
					{ 59.3, 62.2, EASTERN_PLAGUELANDS },
					{ 58.5, 64.9, EASTERN_PLAGUELANDS },
					{ 59.9, 67.5, EASTERN_PLAGUELANDS },
					{ 57.5, 72.0, EASTERN_PLAGUELANDS },
					{ 61.8, 70.2, EASTERN_PLAGUELANDS },
					{ 63.6, 67.7, EASTERN_PLAGUELANDS },
					{ 67.6, 66.8, EASTERN_PLAGUELANDS },

					-- Lake Mereldar
					{ 56.5, 76.1, EASTERN_PLAGUELANDS },
					{ 57.8, 76.2, EASTERN_PLAGUELANDS },
					{ 59.5, 76.0, EASTERN_PLAGUELANDS },
					{ 59.2, 80.8, EASTERN_PLAGUELANDS },
					{ 57.1, 81.9, EASTERN_PLAGUELANDS },
					{ 59.2, 80.8, EASTERN_PLAGUELANDS },
					{ 64.7, 81.0, EASTERN_PLAGUELANDS },

					-- Tyr's Hand
					{ 68.2, 70.6, EASTERN_PLAGUELANDS },
					{ 70.7, 69.5, EASTERN_PLAGUELANDS },
					{ 73.4, 69.8, EASTERN_PLAGUELANDS },
					{ 76.6, 72.5, EASTERN_PLAGUELANDS },
					{ 69.0, 71.5, EASTERN_PLAGUELANDS },
					{ 68.3, 74.6, EASTERN_PLAGUELANDS },
					{ 68.6, 78.5, EASTERN_PLAGUELANDS },
					{ 68.8, 80.6, EASTERN_PLAGUELANDS },
					{ 69.0, 83.5, EASTERN_PLAGUELANDS },
					{ 70.6, 80.8, EASTERN_PLAGUELANDS },
					{ 71.1, 75.3, EASTERN_PLAGUELANDS },
					{ 73.6, 76.9, EASTERN_PLAGUELANDS },
					{ 72.3, 78.5, EASTERN_PLAGUELANDS },
					{ 76.1, 78.2, EASTERN_PLAGUELANDS },
					{ 73.3, 82.2, EASTERN_PLAGUELANDS },
					{ 74.1, 83.8, EASTERN_PLAGUELANDS },
					{ 74.8, 83.5, EASTERN_PLAGUELANDS },
				},
				groups = {
					i(12938),	-- Blood of Heroes
				},
			}),
			o(176116, {	-- Pamela's Doll's Head
				sourceQuests = {
					5149,	-- Pamela's Doll
				},
				coords = {
					{ 39.6, 90.1, EASTERN_PLAGUELANDS },
					{ 38.1, 92.5, EASTERN_PLAGUELANDS },
					{ 39.6, 92.5, EASTERN_PLAGUELANDS },
				},
				groups = { i(12886) },	-- Pamela's Doll's Head (QI!)
			}),
			o(176142, {	-- Pamela's Doll's Left Side
				sourceQuests = {
					5149,	-- Pamela's Doll
				},
				coords = {
					{ 38.2, 92.1, EASTERN_PLAGUELANDS },
					{ 29.6, 90.2, EASTERN_PLAGUELANDS },
					{ 39.6, 92.7, EASTERN_PLAGUELANDS },
				},
				groups = { i(12887) },	-- Pamela's Doll's Left Side (QI!)
			}),
			o(176143, {	-- Pamela's Doll's Right Side
				sourceQuests = {
					5149,	-- Pamela's Doll
				},
				coords = {
					{ 38.6, 92.7, EASTERN_PLAGUELANDS },
					{ 39.5, 92.5, EASTERN_PLAGUELANDS },
					{ 39.6, 90.0, EASTERN_PLAGUELANDS },
				},
				groups = { i(12888) },	-- Pamela's Doll's Right Side (QI!)
			}),
			applyclassicphase(SOD_PHASE_FOUR, i(226418, {	-- Rune of Holy Specialization
				provider = { "o", 457094 },	-- The True Nature of the Light
				coord = { 83.6, 78.1, EASTERN_PLAGUELANDS },
				timeline = { ADDED_1_15_3 },
				classes = { PALADIN, PRIEST },
				groups = {
					recipe(453702, {	-- Engrave Ring - Holy Specialization
						classes = { PALADIN, PRIEST },
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_FOUR, i(226410, {	-- Rune of Ranged Weapon Specialization
				provider = { "o", 457090 },	-- Famous (and Infamous) Rangers of Azeroth
				coord = { 26.2, 74.8, EASTERN_PLAGUELANDS },
				timeline = { ADDED_1_15_3 },
				classes = { WARRIOR, HUNTER, ROGUE },
				groups = {
					recipe(453692, {	-- Engrave Ring - Ranged Weapon Specialization
						classes = { WARRIOR, HUNTER, ROGUE },
					}),
				},
			})),
		}),
		n(VENDORS, {
			n(12384, {	-- Agustus the Touched
				description = "Vendor will not sell anything until you complete his quest.",
				sourceQuests = {
					6164,	-- Augustus' Receipt Book
				},
				coords = {
					{ 14.4, 33.6, EASTERN_PLAGUELANDS },
				},
				groups = {
					i(15902, {	-- A Crazy Grab Bag
						description = "Contains a random green item. In later expansions due to gold inflation, this might not be a bad purchase, but if you're trying to buy it before say Legion, don't bother.",
						cost = { { "g", 80000 } },	-- 8g
						isLimited = true,
					}),
				},
			}),
			n(12941, {	-- Jase Farlane <Trade Supplies>
				coords = {
					{ 80.6, 57.6, EASTERN_PLAGUELANDS },
				},
				groups = {
					i(15756, {	-- Pattern: Runic Leather Headband (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(11536, {	-- Quartermaster Miranda Breechlock <The Argent Crusade>
				coords = {
					{ 81.6, 60.0, EASTERN_PLAGUELANDS },
				},
				groups = bubbleDownClassicRep(FACTION_ARGENT_DAWN, {
					{	-- Neutral
					},
					{	-- Friendly
						i(13724),	-- Enriched Manna Biscuit
					},
					{	-- Honored
						applyclassicphase(PHASE_THREE_ENCHANTS, i(19446)),	-- Formula: Enchant Bracer - Argent Versatility / CLASSIC: Formula: Enchant Bracer - Mana Regeneration (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19216)),	-- Pattern: Argent Boots (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19328)),	-- Pattern: Dawn Treaders (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19203)),	-- Plans: Girdle of the Dawn (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19442)),	-- Recipe: Powerful Anti-Venom (RECIPE!)
						i(13482),	-- Recipe: Transmute Air to Fire (RECIPE!)
						i(22014, {	-- Hallowed Brazier
							cost = { { "g", 1500000 } },	-- 150g
						}),

						applyclassicphase(SOD_PHASE_FOUR, i(227813, {	-- Drinkable Stratholme Holy Water
							timeline = { ADDED_1_15_3 },
							cost = { { "i", 13180, 1 } },	-- Stratholme Holy Water
						})),
						-- EPIC CRAFTED ITEMS UPGRADES
						applyclassicphase(SOD_PHASE_FOUR, i(227816, {	-- Argent Elite Boots
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i", 19056, 1 },	-- Argent Boots
								{ "i", 12843, 2 },	-- Corruptor's Scourgestone
								{ "i", 12753, 2 },	-- Skin of Shadow
							},
							requireSkill = TAILORING,
							learnedAt = 290,
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227888, {	-- Argent Elite Shoulders
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i", 19059, 1 },	-- Argent Shoulders
								{ "i", 12843, 4 },	-- Corruptor's Scourgestone
								{ "i", 12753, 3 },	-- Skin of Shadow
							},
							requireSkill = TAILORING,
							learnedAt = 290,
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227815, {	-- Fine Dawn Treaders
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i", 19052, 1 },	-- Dawn Treaders
								{ "i", 12843, 3 },	-- Corruptor's Scourgestone
								{ "i", 12753, 2 },	-- Skin of Shadow
							},
							requireSkill = LEATHERWORKING,
							learnedAt = 290,
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227818, {	-- Glowing Mantle of the Dawn
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i", 19058, 1 },	-- Golden Mantle of the Dawn
								{ "i", 12843, 4 },	-- Corruptor's Scourgestone
								{ "i", 12753, 3 },	-- Skin of Shadow
							},
							requireSkill = LEATHERWORKING,
							learnedAt = 290,
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227814, {	-- Radiant Girdle of the Dawn
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i", 19051, 1 },	-- Girdle of the Dawn
								{ "i", 12843, 2 },	-- Corruptor's Scourgestone
								{ "i", 12735, 2 },	-- Frayed Abomination Stitching
							},
							requireSkill = BLACKSMITHING,
							learnedAt = 290,
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227817, {	-- Radiant Gloves of the Dawn
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i", 19057, 1 },	-- Gloves of the Dawn
								{ "i", 12843, 3 },	-- Corruptor's Scourgestone
								{ "i", 12735, 2 },	-- Frayed Abomination Stitching
							},
							requireSkill = BLACKSMITHING,
							learnedAt = 290,
						})),
						applyclassicphase(SOD_PHASE_FOUR, i(227859, {	-- Shimmering Dawnbringer Shoulders
							timeline = { ADDED_1_15_3 },
							cost = {
								{ "i", 12625, 1 },	-- Dawnbringer Shoulders
								{ "i", 12843, 4 },	-- Corruptor's Scourgestone
								{ "i", 12735, 3 },	-- Frayed Abomination Stitching
							},
							requireSkill = BLACKSMITHING,
							learnedAt = 290,
						})),
					},
					{	-- Revered
						i(18171, {	-- Arcane Mantle of the Dawn
							description = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							sourceQuests = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18169, {	-- Flame Mantle of the Dawn
							description = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							sourceQuests = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18170, {	-- Frost Mantle of the Dawn
							description = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							sourceQuests = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18172, {	-- Nature Mantle of the Dawn
							description = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							sourceQuests = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						i(18173, {	-- Shadow Mantle of the Dawn
							description = "You must have first completed 'Mantles of the Dawn' in order to purchase this.",
							sourceQuests = {
								5504,	-- Mantles of the Dawn
								5507,	-- Mantles of the Dawn
								5513,	-- Mantles of the Dawn
							},
						}),
						applyclassicphase(PHASE_THREE_ENCHANTS, i(19447)),	-- Formula: Enchant Bracer - Healing Power (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19217)),	-- Pattern: Argent Shoulders (RECIPE!)
						applyclassicphase(PHASE_THREE_RECIPES, i(19329)),	-- Pattern: Golden Mantle of the Dawn (RECIPE!)
						-- CRIEVE NOTE: With SOD phase 4, they put this recipe directly on the vendor. Interesting.
						applyclassicphase(SOD_PHASE_FOUR, i(12698, {	-- Plans: Dawnbringer Shoulders (RECIPE!)
							timeline = { ADDED_1_15_3 },
						})),
						applyclassicphase(PHASE_THREE_RECIPES, i(19205)),	-- Plans: Gloves of the Dawn (RECIPE!)
						i(13810),	-- Blessed Sunfruit
						i(13813),	-- Blessed Sunfruit Juice
					},
					{	-- Exalted
						i(18182, {	-- Chromatic Mantle of the Dawn
							description = "You must have first completed 'Chromatic Mantle of the Dawn' in order to purchase this.",
							sourceQuests = {
								5517,	-- Chromatic Mantle of the Dawn
								5521,	-- Chromatic Mantle of the Dawn
								5524,	-- Chromatic Mantle of the Dawn
							},
						}),
						applyclassicphase(SOD_PHASE_FOUR, i(227819, {	-- Blessed Flame Mantle of the Dawn
							description = "You must have first completed 'Chromatic Mantle of the Dawn' in order to purchase this.",
							sourceQuests = {
								5517,	-- Chromatic Mantle of the Dawn
								5521,	-- Chromatic Mantle of the Dawn
								5524,	-- Chromatic Mantle of the Dawn
							},
							timeline = { ADDED_1_15_3 },
						})),
					},
				}),
			}),
		}),
		n(ZONE_DROPS, {
			applyclassicphase(PHASE_SIX, i(22526)),	-- Bone Fragments
			i(12843, {	-- Corruptor's Scourgestone / Inert Corruptor's Scourgestone
				description = "Can drop from any Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
			}),
			i(12841, {	-- Invader's Scourgestone / Inert Invader's Scourgestone
				description = "Can drop from any Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
			}),
			i(12840, {	-- Minion's Scourgestone / Inert Minion's Scourgestone
				description = "Can drop from weak Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
			}),
			i(16242, {	-- Formula: Enchant Chest - Major Mana (RECIPE!)
				cr = 9452,	-- Scarlet Enchanter
			}),
			i(16222, {	-- Formula: Enchant Shield - Vitality / TBC-10.1.5:Formula: Enchant Shield - Superior Versatility / CLASSIC: Formula: Enchant Shield - Superior Spirit (RECIPE!)
				cr = 9447,	-- Scarlet Warder
			}),
			i(18512, {	-- Larval Acid
				crs = {
					8605,	-- Carrion Devourer
					8603,	-- Carrion Grub
				},
			}),
			i(20768, {	-- Oozing Bag
				crs = {
					8603,	-- Carrion Grub
					8605,	-- Carrion Devourer
				},
				groups = {
					i(20769),	-- Disgusting Oozeling (PET!)
				},
			}),
			i(14477, {	-- Pattern: Ghostweave Gloves (RECIPE!)
				cr = 8538,	-- Unseen Servant
			}),
			i(14480, {	-- Pattern: Ghostweave Vest (RECIPE!)
				cr = 8538,	-- Unseen Servant
			}),
			i(14485, {	-- Pattern: Wizardweave Leggings (RECIPE!)
				cr = 8551,	-- Dark Summoner
			}),
			i(14500, {	-- Pattern: Wizardweave Robe (RECIPE!)
				cr = 8526,	-- Dark Caster
			}),
			i(14505, {	-- Pattern: Wizardweave Turban (RECIPE!)
				cr = 8526,	-- Dark Caster
			}),
			i(13479, {	-- Recipe: Elixir of the Sages (RECIPE!)
				crs = {
					9451,	-- Scarlet Archmage
					9449,	-- Scarlet Cleric
					9450,	-- Scarlet Curate
					9452,	-- Scarlet Enchanter
				},
			}),
			i(13499, {	-- Recipe: Greater Shadow Protection Potion (RECIPE!)
				coords = {
					{ 41.0, 50.2, EASTERN_PLAGUELANDS },
					{ 67.8, 39.8, EASTERN_PLAGUELANDS },
					{ 83.6, 44.0, EASTERN_PLAGUELANDS },
				},
				timeline = { ADDED_1_11_1 },
				crs = {
					8546,	-- Dark Adept <Cult of the Damned>
					8550,	-- Shadowmage <Cult of the Damned>
				},
			}),
			i(12811, {	-- Righteous Orb
				description = "Can drop from any Scarlet Crusade member in Stratholme in addition to the Scarlet Oracle and the Crimson Elite in the Plaguelands.",
				cr = 12339,	-- Demetria <The Scarlet Oracle>
			}),
			i(16056, {	-- Schematic: Flawless Arcanite Rifle (RECIPE!)
				description = "Can kill Mossflayer Scout and Mossflayer Cannibal to get Shadowhunters.",
				coords = {
					{ 72.8, 15.2, EASTERN_PLAGUELANDS },
					{ 68.8, 20.6, EASTERN_PLAGUELANDS },
					{ 65.4, 22.6, EASTERN_PLAGUELANDS },
				},
				timeline = { ADDED_1_11_1 },
				cr = 8561,	-- Mossflayer Shadowhunter
			}),
		}),
	},
});

