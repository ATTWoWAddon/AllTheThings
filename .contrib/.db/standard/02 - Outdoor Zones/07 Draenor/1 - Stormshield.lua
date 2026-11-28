---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(DRAENOR, STORMSHIELD, {
	icon = 374217,
	isRaid = true,
	races = ALLIANCE_ONLY,
	groups = {
		n(FLIGHT_PATHS, {
			fp(1420, {	-- Stormshield (Alliance), Ashran
				coord = { 30.6, 48.4, STORMSHIELD },
				races = ALLIANCE_ONLY,
			}),
		}),
		n(FOLLOWERS, {
			follower(467, {	-- Fen Tao
				description = "In order to obtain this follower you need to talk to him and let him finish his dialogue.",
				creatureID = 91483,	-- Fen Tao
				coord = { 45.3, 70.6, STORMSHIELD },
			}),
		}),
		n(PROFESSIONS, {
			prof(ALCHEMY, {
				n(87048, {	-- Katherine Joplin <Alchemy Recipes>
					coord = { 36.7, 68.6, STORMSHIELD },
					groups = appendGroups(COMMON_DRAENOR_ALCHEMY_RECIPES, {DRAENOR_ALCHEMY}),
				}),
			}),
			prof(BLACKSMITHING, {
				n(87062, {	-- Royce Bigbeard <Blacksmithing Plans>
					coord = { 49.0, 48.7, STORMSHIELD },
					groups = appendGroups(COMMON_DRAENOR_BLACKSMITHING_RECIPES, {DRAENOR_BLACKSMITHING}),
				}),
			}),
			prof(ENCHANTING, {
				n(87022, {	-- Bob <Enchanting Recipes>
					coord = { 56.9, 64.7, STORMSHIELD },
					groups = appendGroups(COMMON_DRAENOR_ENCHANTING_RECIPES, {DRAENOR_ENCHANTING}),
				}),
			}),
			prof(ENGINEERING, {
				n(87065, {	-- Sean Catchpole <Engineering Plans>
					coord = { 47.9, 39.9, STORMSHIELD },
					groups = appendGroups(COMMON_DRAENOR_ENGINEERING_RECIPES, {DRAENOR_ENGINEERING}),
				}),
			}),
			prof(JEWELCRAFTING, {
				n(87052, {	-- Artificer Harlaan <Jewelcrafting Designs>
					coord = { 44.2, 37.8, STORMSHIELD },
					groups = appendGroups(COMMON_DRAENOR_JEWELCRAFTING_RECIPES, {DRAENOR_JEWELCRAFTING}),
				}),
			}),
			prof(LEATHERWORKING, {
				n(87057, {	-- Leara Moonsilk <Leatherworking Patterns>
					coord = { 51.6, 41.6, STORMSHIELD },
					groups = appendGroups(COMMON_DRAENOR_LEATHERWORKING_RECIPES, {DRAENOR_LEATHERWORKING}),
				}),
			}),
			prof(TAILORING, {
				n(87049, {	-- Steven Cochrane <Tailoring Patterns>
					coord = { 51.0, 37.0, STORMSHIELD },
					groups = appendGroups(COMMON_DRAENOR_TAILORING_RECIPES, {DRAENOR_TAILORING}),
				}),
			}),
		}),
		n(QUESTS, {
			q(36630, {	-- A Surly Dwarf
				sourceQuest = 36629,	-- Inspiring Ashran
				qg = 86069,	-- Lieutenant Howell
				coord = { 35.6, 75.1, STORMSHIELD },
			}),
			q(37272, {	-- A Worthy Challenge: Gug'rokk
				qg = 88155,	-- Challenger Savina
				coord = { 52.0, 63.6, STORMSHIELD },
				isDaily = true,
				u = REMOVED_FROM_GAME,
				groups = { i(127831) },	-- Challenger's Strongbox
			}),
			q(37277, {	-- A Worthy Challenge: High Sage Viryx
				qg = 88155,	-- Challenger Savina
				coord = { 52.0, 63.6, STORMSHIELD },
				isDaily = true,
				u = REMOVED_FROM_GAME,
				groups = { i(127831) },	-- Challenger's Strongbox
			}),
			q(37275, {	-- A Worthy Challenge: Ner'zhul
				qg = 88155,	-- Challenger Savina
				coord = { 52.0, 63.6, STORMSHIELD },
				isDaily = true,
				u = REMOVED_FROM_GAME,
				groups = { i(127831) },	-- Challenger's Strongbox
			}),
			q(37274, {	-- A Worthy Challenge: Skullok, Son of Gruul
				qg = 88155,	-- Challenger Savina
				coord = { 52.0, 63.6, STORMSHIELD },
				isDaily = true,
				u = REMOVED_FROM_GAME,
				groups = { i(127831) },	-- Challenger's Strongbox
			}),
			q(37273, {	-- A Worthy Challenge: Skylord Tovra
				qg = 88155,	-- Challenger Savina
				coord = { 52.0, 63.6, STORMSHIELD },
				isDaily = true,
				u = REMOVED_FROM_GAME,
				groups = { i(127831) },	-- Challenger's Strongbox
			}),
			q(37279, {	-- A Worthy Challenge: Warlord Zaela
				qg = 88155,	-- Challenger Savina
				coord = { 52.0, 63.6, STORMSHIELD },
				isDaily = true,
				u = REMOVED_FROM_GAME,
				groups = { i(127831) },	-- Challenger's Strongbox
			}),
			q(37278, {	-- A Worthy Challenge: Yalnu
				qg = 88155,	-- Challenger Savina
				coord = { 52.0, 63.6, STORMSHIELD },
				isDaily = true,
				u = REMOVED_FROM_GAME,
				groups = { i(127831) },	-- Challenger's Strongbox
			}),
			q(36633, {	-- Delvar Ironfist
				sourceQuest = 36630,	-- A Surly Dwarf
				qg = 86084,	-- Delvar Ironfist
				coord = { 47.5, 30.8, STORMSHIELD },
				groups = { follower(216) },	-- Delvar Ironfist
			}),
			q(36626, {	-- Host Howell
				sourceQuest = 36624,	-- Ashran Appearance
				qg = 86095,	-- Private Tristan
				coord = { 32.0, 50.5, STORMSHIELD },
			}),
			q(36629, {	-- Inspiring Ashran
				sourceQuest = 36626,	-- Host Howell
				qg = 86069,	-- Lieutenant Howell
				coord = { 35.6, 75.1, STORMSHIELD },
			}),
			q(36055, {	-- Sealing Fate: Apexis Crystals
				qgs = {
					87391,	-- Fate-Twister Seress
					88570,	-- Fate-Twister Tiklal
				},
				coords = {
					{ 51.6, 61.9, STORMSHIELD },	-- Alliance
					{ 64.6, 62.0, WARSPEAR },	-- Horde
				},
				cost = { { "c", APEXIS_CRYSTAL, 500 } },
				isWeekly = true,
				lvl = 100,
			}),
			q(37458, {	-- Sealing Fate: Extended Honor
				sourceQuest = 36057,	-- Sealing Fate: Honor
				qgs = {
					87391,	-- Fate-Twister Seress
					88570,	-- Fate-Twister Tiklal
				},
				coords = {
					{ 51.6, 61.9, STORMSHIELD },	-- Alliance
					{ 64.6, 62.0, WARSPEAR },	-- Horde
				},
				cost = { { "c", HONOR, 1000 } },
				isWeekly = true,
				u = REMOVED_FROM_GAME,
			}),
			q(36056, {	-- Sealing Fate: Garrison Resources
				qgs = {
					87391,	-- Fate-Twister Seress
					88570,	-- Fate-Twister Tiklal
				},
				coords = {
					{ 51.6, 61.9, STORMSHIELD },	-- Alliance
					{ 64.6, 62.0, WARSPEAR },	-- Horde
				},
				cost = { { "c", GARRISON_RESOURCES, 1000 } },
				isWeekly = true,
				lvl = 100,
			}),
			q(36054, {	-- Sealing Fate: Gold
				qgs = {
					87391,	-- Fate-Twister Seress
					88570,	-- Fate-Twister Tiklal
				},
				coords = {
					{ 51.6, 61.9, STORMSHIELD },	-- Alliance
					{ 64.6, 62.0, WARSPEAR },	-- Horde
				},
				cost = 5000000,	-- 500g
				isWeekly = true,
				lvl = 100,
			}),
			q(37452, {	-- Sealing Fate: Heap of Apexis Crystals
				sourceQuest = 36055,	-- Sealing Fate: Apexis Crystals
				qgs = {
					87391,	-- Fate-Twister Seress
					88570,	-- Fate-Twister Tiklal
				},
				coords = {
					{ 51.6, 61.9, STORMSHIELD },	-- Alliance
					{ 64.6, 62.0, WARSPEAR },	-- Horde
				},
				cost = { { "c", APEXIS_CRYSTAL, 1000 } },
				isWeekly = true,
				lvl = 100,
			}),
			q(36057, {	-- Sealing Fate: Honor
				qgs = {
					87391,	-- Fate-Twister Seress
					88570,	-- Fate-Twister Tiklal
				},
				coords = {
					{ 51.6, 61.9, STORMSHIELD },	-- Alliance
					{ 64.6, 62.0, WARSPEAR },	-- Horde
				},
				cost = { { "c", HONOR, 500 } },
				isWeekly = true,
				u = REMOVED_FROM_GAME,
			}),
			q(37455, {	-- Sealing Fate: Immense Fortune of Gold
				sourceQuest = 37454,	-- Sealing Fate: Piles of Gold
				qgs = {
					87391,	-- Fate-Twister Seress
					88570,	-- Fate-Twister Tiklal
				},
				coords = {
					{ 51.6, 61.9, STORMSHIELD },	-- Alliance
					{ 64.6, 62.0, WARSPEAR },	-- Horde
				},
				cost = 20000000,	-- 2,000g
				isWeekly = true,
				lvl = 100,
			}),
			q(37459, {	-- Sealing Fate: Monumental Honor
				sourceQuest = 37458,	-- Sealing Fate: Extended Honor
				qgs = {
					87391,	-- Fate-Twister Seress
					88570,	-- Fate-Twister Tiklal
				},
				coords = {
					{ 51.6, 61.9, STORMSHIELD },	-- Alliance
					{ 64.6, 62.0, WARSPEAR },	-- Horde
				},
				cost = { { "c", HONOR, 2000 } },	-- 2000x Honor
				isWeekly = true,
				u = REMOVED_FROM_GAME,
			}),
			q(37453, {	-- Sealing Fate: Mountain of Apexis Crystals
				sourceQuest = 37452,	-- Sealing Fate: Heap of Apexis Crystals
				qgs = {
					87391,	-- Fate-Twister Seress
					88570,	-- Fate-Twister Tiklal
				},
				coords = {
					{ 51.6, 61.9, STORMSHIELD },	-- Alliance
					{ 64.6, 62.0, WARSPEAR },	-- Horde
				},
				cost = { { "c", APEXIS_CRYSTAL, 2000 } },
				isWeekly = true,
				lvl = 100,
			}),
			q(37454, {	-- Sealing Fate: Piles of Gold
				sourceQuest = 36054,	-- Sealing Fate: Gold
				qgs = {
					87391,	-- Fate-Twister Seress
					88570,	-- Fate-Twister Tiklal
				},
				coords = {
					{ 51.6, 61.9, STORMSHIELD },	-- Alliance
					{ 64.6, 62.0, WARSPEAR },	-- Horde
				},
				cost = 10000000,	-- 1,000g
				isWeekly = true,
				lvl = 100,
			}),
			q(37456, {	-- Sealing Fate: Stockpiled Garrison Resources
				sourceQuest = 36056,	-- Sealing Fate: Garrison Resources
				qgs = {
					87391,	-- Fate-Twister Seress
					88570,	-- Fate-Twister Tiklal
				},
				coords = {
					{ 51.6, 61.9, STORMSHIELD },	-- Alliance
					{ 64.6, 62.0, WARSPEAR },	-- Horde
				},
				cost = { { "c", GARRISON_RESOURCES, 2000 } },
				isWeekly = true,
				lvl = 100,
			}),
			q(37457, {	-- Sealing Fate: Tremendous Garrison Resources
				sourceQuest = 37456,	-- Sealing Fate: Stockpiled Garrison Resources
				qgs = {
					87391,	-- Fate-Twister Seress
					88570,	-- Fate-Twister Tiklal
				},
				coords = {
					{ 51.6, 61.9, STORMSHIELD },	-- Alliance
					{ 64.6, 62.0, WARSPEAR },	-- Horde
				},
				cost = { { "c", GARRISON_RESOURCES, 4000 } },
				isWeekly = true,
				lvl = 100,
			}),
		}),
		n(VENDORS, {
			races = ALLIANCE_ONLY,
			groups = {
				n(88155, {	-- Challenger Savina
					description = "You can only buy items from this vendor if you have Challenge Warlord: Gold Feat of Strength on your character.",
					coord = { 52.0, 63.6, STORMSHIELD },
					groups = bubbleDown({ u = REMOVED_FROM_GAME, }, {
						i(118401, {	-- Arcana Shard Spire
							cost = 10000000,	-- 1,000g
						}),
						iensemble(136854, {	-- Arsenal: Draenor Challenger's Armaments
							cost = 100000000,	-- 10,000g
						}),
						i(118396, {	-- Bloodmaw Gargoyle
							cost = 10000000,	-- 1,000g
						}),
						i(118395, {	-- Claws of Creation
							cost = 10000000,	-- 1,000g
						}),
						i(118409, {	-- Cloudsong Glaive
							cost = 10000000,	-- 1,000g
						}),
						i(118411, {	-- Crystal-Shot Longrifle
							cost = 10000000,	-- 1,000g
						}),
						i(118403, {	-- Dimension-Ripper's Staff
							cost = 10000000,	-- 1,000g
						}),
						i(118408, {	-- Elemental Crescent
							cost = 10000000,	-- 1,000g
						}),
						i(118397, {	-- Equus
							cost = 10000000,	-- 1,000g
						}),
						i(118407, {	-- Face of the Guardian
							cost = 10000000,	-- 1,000g
						}),
						i(118413, {	-- Flamegrinder
							cost = 10000000,	-- 1,000g
						}),
						i(118406, {	-- Furnace of the Great Machine
							cost = 10000000,	-- 1,000g
						}),
						i(118402, {	-- Greatstaff of Infinite Knowledge
							cost = 10000000,	-- 1,000g
						}),
						i(118412, {	-- Greatsword of the Inferno
							cost = 10000000,	-- 1,000g
						}),
						i(118404, {	-- Living Longbow
							cost = 10000000,	-- 1,000g
						}),
						i(118405, {	-- Shifting Felblade
							cost = 10000000,	-- 1,000g
						}),
						i(118398, {	-- Soul Eater
							cost = 10000000,	-- 1,000g
						}),
						i(118399, {	-- Sunblade
							cost = 10000000,	-- 1,000g
						}),
						i(118410, {	-- Tesseract Timepiece
							cost = 10000000,	-- 1,000g
						}),
						un(REMOVED_FROM_GAME, i(119032, {	-- Rusted Challenger's Strongbox
							description = "This box was from the WoD Challenge Mode Dailies.",
							groups = {
								un(REMOVED_FROM_GAME, i(118996)),	-- Blackfire Amulet
								un(REMOVED_FROM_GAME, i(118997)),	-- Blackfire Cape
								un(REMOVED_FROM_GAME, i(118998)),	-- Blackfire Crystal
								un(REMOVED_FROM_GAME, i(118999)),	-- Blackfire Ring
								un(REMOVED_FROM_GAME, i(118988)),	-- Blackfire Scepter
								un(REMOVED_FROM_GAME, i(118984)),	-- Blackfire Spellblade
								un(REMOVED_FROM_GAME, i(118995)),	-- Blackfire Wand
								un(REMOVED_FROM_GAME, i(119012)),	-- Blazemender Cabochon
								un(REMOVED_FROM_GAME, i(119016)),	-- Blazemender Cloak
								un(REMOVED_FROM_GAME, i(119006)),	-- Blazemender Loop
								un(REMOVED_FROM_GAME, i(118946)),	-- Bouldercrush Breastplate
								un(REMOVED_FROM_GAME, i(118947)),	-- Bouldercrush Gauntlets
								un(REMOVED_FROM_GAME, i(118948)),	-- Bouldercrush Girdle
								un(REMOVED_FROM_GAME, i(118949)),	-- Bouldercrush Helm
								un(REMOVED_FROM_GAME, i(118950)),	-- Bouldercrush Legplates
								un(REMOVED_FROM_GAME, i(118951)),	-- Bouldercrush Pauldrons
								un(REMOVED_FROM_GAME, i(118952)),	-- Bouldercrush Sabatons
								un(REMOVED_FROM_GAME, i(118953)),	-- Bouldercrush Shield
								un(REMOVED_FROM_GAME, i(118954)),	-- Bouldercrush Vambraces
								un(REMOVED_FROM_GAME, i(119007)),	-- Dark Night Band
								un(REMOVED_FROM_GAME, i(119009)),	-- Dark Night Choker
								un(REMOVED_FROM_GAME, i(119013)),	-- Dark Night Cloak
								un(REMOVED_FROM_GAME, i(119010)),	-- Doomchain Collar
								un(REMOVED_FROM_GAME, i(119014)),	-- Doomchain Drape
								un(REMOVED_FROM_GAME, i(119008)),	-- Doomchain Signet
								un(REMOVED_FROM_GAME, i(118979)),	-- Expeditious Axe
								un(REMOVED_FROM_GAME, i(119017)),	-- Expeditious Axe
								un(REMOVED_FROM_GAME, i(118981)),	-- Expeditious Bow
								un(REMOVED_FROM_GAME, i(118980)),	-- Expeditious Broadaxe
								un(REMOVED_FROM_GAME, i(118982)),	-- Expeditious Crossbow
								un(REMOVED_FROM_GAME, i(118983)),	-- Expeditious Dagger
								un(REMOVED_FROM_GAME, i(118994)),	-- Expeditious Greatsword
								un(REMOVED_FROM_GAME, i(118986)),	-- Expeditious Gun
								un(REMOVED_FROM_GAME, i(118989)),	-- Expeditious Hammer
								un(REMOVED_FROM_GAME, i(119018)),	-- Expeditious Knuckles
								un(REMOVED_FROM_GAME, i(118985)),	-- Expeditious Knuckles
								un(REMOVED_FROM_GAME, i(118987)),	-- Expeditious Mace
								un(REMOVED_FROM_GAME, i(119019)),	-- Expeditious Mace
								un(REMOVED_FROM_GAME, i(118990)),	-- Expeditious Spear
								un(REMOVED_FROM_GAME, i(118992)),	-- Expeditious Staff
								un(REMOVED_FROM_GAME, i(118991)),	-- Expeditious Staff
								un(REMOVED_FROM_GAME, i(118993)),	-- Expeditious Sword
								un(REMOVED_FROM_GAME, i(119020)),	-- Expeditious Sword
								un(REMOVED_FROM_GAME, i(118963)),	-- Ironburner Cord
								un(REMOVED_FROM_GAME, i(118964)),	-- Ironburner Cowl
								un(REMOVED_FROM_GAME, i(118965)),	-- Ironburner Handwraps
								un(REMOVED_FROM_GAME, i(118966)),	-- Ironburner Leggings
								un(REMOVED_FROM_GAME, i(118967)),	-- Ironburner Robe
								un(REMOVED_FROM_GAME, i(118968)),	-- Ironburner Sandals
								un(REMOVED_FROM_GAME, i(118969)),	-- Ironburner Spaulders
								un(REMOVED_FROM_GAME, i(118970)),	-- Ironburner Wristwraps
								un(REMOVED_FROM_GAME, i(118971)),	-- Longshot Belt
								un(REMOVED_FROM_GAME, i(118972)),	-- Longshot Bracers
								un(REMOVED_FROM_GAME, i(118973)),	-- Longshot Gauntlets
								un(REMOVED_FROM_GAME, i(118974)),	-- Longshot Greaves
								un(REMOVED_FROM_GAME, i(118975)),	-- Longshot Helm
								un(REMOVED_FROM_GAME, i(118976)),	-- Longshot Legguards
								un(REMOVED_FROM_GAME, i(118977)),	-- Longshot Shoulderguards
								un(REMOVED_FROM_GAME, i(118978)),	-- Longshot Vest
								un(REMOVED_FROM_GAME, i(119011)),	-- Mordant Gorget
								un(REMOVED_FROM_GAME, i(119015)),	-- Mordant Greatcloak
								un(REMOVED_FROM_GAME, i(119005)),	-- Mordant Signet
								un(REMOVED_FROM_GAME, i(118955)),	-- Railwalker Bindings
								un(REMOVED_FROM_GAME, i(118956)),	-- Railwalker Boots
								un(REMOVED_FROM_GAME, i(118957)),	-- Railwalker Britches
								un(REMOVED_FROM_GAME, i(118958)),	-- Railwalker Gloves
								un(REMOVED_FROM_GAME, i(118959)),	-- Railwalker Hood
								un(REMOVED_FROM_GAME, i(118960)),	-- Railwalker Jerkin
								un(REMOVED_FROM_GAME, i(118961)),	-- Railwalker Shoulders
								un(REMOVED_FROM_GAME, i(118962)),	-- Railwalker Waistband
								un(REMOVED_FROM_GAME, i(119021)),	-- Stonebinder Shield
							},
						})),
						un(REMOVED_FROM_GAME, i(127831, {	-- Challenger's Strongbox
							description = "This box was from the WoD Challenge Mode Dailies.",
							groups = {
								un(REMOVED_FROM_GAME, i(118997)),	-- Blackfire Cape
								un(REMOVED_FROM_GAME, i(118998)),	-- Blackfire Crystal
								un(REMOVED_FROM_GAME, i(118999)),	-- Blackfire Ring
								un(REMOVED_FROM_GAME, i(118988)),	-- Blackfire Scepter
								un(REMOVED_FROM_GAME, i(118984)),	-- Blackfire Spellblade
								un(REMOVED_FROM_GAME, i(118995)),	-- Blackfire Wand
								un(REMOVED_FROM_GAME, i(119012)),	-- Blazemender Cabochon
								un(REMOVED_FROM_GAME, i(119016)),	-- Blazemender Cloak
								un(REMOVED_FROM_GAME, i(119006)),	-- Blazemender Loop
								un(REMOVED_FROM_GAME, i(118946)),	-- Bouldercrush Breastplate
								un(REMOVED_FROM_GAME, i(118947)),	-- Bouldercrush Gauntlets
								un(REMOVED_FROM_GAME, i(118948)),	-- Bouldercrush Girdle
								un(REMOVED_FROM_GAME, i(118949)),	-- Bouldercrush Helm
								un(REMOVED_FROM_GAME, i(118950)),	-- Bouldercrush Legplates
								un(REMOVED_FROM_GAME, i(118951)),	-- Bouldercrush Pauldrons
								un(REMOVED_FROM_GAME, i(118952)),	-- Bouldercrush Sabatons
								un(REMOVED_FROM_GAME, i(118953)),	-- Bouldercrush Shield
								un(REMOVED_FROM_GAME, i(118954)),	-- Bouldercrush Vambraces
								un(REMOVED_FROM_GAME, i(119007)),	-- Dark Night Band
								un(REMOVED_FROM_GAME, i(119009)),	-- Dark Night Choker
								un(REMOVED_FROM_GAME, i(119013)),	-- Dark Night Cloak
								un(REMOVED_FROM_GAME, i(119010)),	-- Doomchain Collar
								un(REMOVED_FROM_GAME, i(119014)),	-- Doomchain Drape
								un(REMOVED_FROM_GAME, i(119008)),	-- Doomchain Signet
								un(REMOVED_FROM_GAME, i(118979)),	-- Expeditious Axe
								un(REMOVED_FROM_GAME, i(119017)),	-- Expeditious Axe
								un(REMOVED_FROM_GAME, i(118981)),	-- Expeditious Bow
								un(REMOVED_FROM_GAME, i(118980)),	-- Expeditious Broadaxe
								un(REMOVED_FROM_GAME, i(118982)),	-- Expeditious Crossbow
								un(REMOVED_FROM_GAME, i(118983)),	-- Expeditious Dagger
								un(REMOVED_FROM_GAME, i(118994)),	-- Expeditious Greatsword
								un(REMOVED_FROM_GAME, i(118986)),	-- Expeditious Gun
								un(REMOVED_FROM_GAME, i(118989)),	-- Expeditious Hammer
								un(REMOVED_FROM_GAME, i(119018)),	-- Expeditious Knuckles
								un(REMOVED_FROM_GAME, i(118985)),	-- Expeditious Knuckles
								un(REMOVED_FROM_GAME, i(118987)),	-- Expeditious Mace
								un(REMOVED_FROM_GAME, i(119019)),	-- Expeditious Mace
								un(REMOVED_FROM_GAME, i(118990)),	-- Expeditious Spear
								un(REMOVED_FROM_GAME, i(118992)),	-- Expeditious Staff
								un(REMOVED_FROM_GAME, i(118991)),	-- Expeditious Staff
								un(REMOVED_FROM_GAME, i(118993)),	-- Expeditious Sword
								un(REMOVED_FROM_GAME, i(119020)),	-- Expeditious Sword
								un(REMOVED_FROM_GAME, i(118963)),	-- Ironburner Cord
								un(REMOVED_FROM_GAME, i(118964)),	-- Ironburner Cowl
								un(REMOVED_FROM_GAME, i(118965)),	-- Ironburner Handwraps
								un(REMOVED_FROM_GAME, i(118966)),	-- Ironburner Leggings
								un(REMOVED_FROM_GAME, i(118967)),	-- Ironburner Robe
								un(REMOVED_FROM_GAME, i(118968)),	-- Ironburner Sandals
								un(REMOVED_FROM_GAME, i(118969)),	-- Ironburner Spaulders
								un(REMOVED_FROM_GAME, i(118970)),	-- Ironburner Wristwraps
								un(REMOVED_FROM_GAME, i(118971)),	-- Longshot Belt
								un(REMOVED_FROM_GAME, i(118972)),	-- Longshot Bracers
								un(REMOVED_FROM_GAME, i(118973)),	-- Longshot Gauntlets
								un(REMOVED_FROM_GAME, i(118974)),	-- Longshot Greaves
								un(REMOVED_FROM_GAME, i(118975)),	-- Longshot Helm
								un(REMOVED_FROM_GAME, i(118976)),	-- Longshot Legguards
								un(REMOVED_FROM_GAME, i(118977)),	-- Longshot Shoulderguards
								un(REMOVED_FROM_GAME, i(118978)),	-- Longshot Vest
								un(REMOVED_FROM_GAME, i(119011)),	-- Mordant Gorget
								un(REMOVED_FROM_GAME, i(119015)),	-- Mordant Greatcloak
								un(REMOVED_FROM_GAME, i(119005)),	-- Mordant Signet
								un(REMOVED_FROM_GAME, i(118955)),	-- Railwalker Bindings
								un(REMOVED_FROM_GAME, i(118956)),	-- Railwalker Boots
								un(REMOVED_FROM_GAME, i(118957)),	-- Railwalker Britches
								un(REMOVED_FROM_GAME, i(118958)),	-- Railwalker Gloves
								un(REMOVED_FROM_GAME, i(118959)),	-- Railwalker Hood
								un(REMOVED_FROM_GAME, i(118960)),	-- Railwalker Jerkin
								un(REMOVED_FROM_GAME, i(118961)),	-- Railwalker Shoulders
								un(REMOVED_FROM_GAME, i(118962)),	-- Railwalker Waistband
								un(REMOVED_FROM_GAME, i(119021)),	-- Stonebinder Shield
							},
						})),
					}),
				}),
				n(128756, {	-- Magister Langley <Stormshield Quartermaster>
					coord = { 54.8, 16.8, STORMSHIELD },
					groups = bubbleDownClassicRep(FACTION_WRYNNS_VANGUARD, {
						{		-- Neutral
						}, {	-- Friendly
							i(114126),	-- Disposable Pocket Flying Machine
						}, {	-- Honored
						}, {	-- Revered
						}, {	-- Exalted
							moh(100, i(116776, {	-- Pale Thorngrazer (MOUNT!)
								cost = { { "g", 50000000 } },	-- 5,000g
							})),
							i(115517),	-- Wrynn's Vanguard Tabard
						},
					}),
				}),
				n(92501, {	-- Dawn-Seeker Kasrek <Apexis Belt Trader>
					coord = { 51.2, 61.8, STORMSHIELD },
					groups = {
						i(119821, {	-- Contract: Dawnseeker Rukaryx
							cost = {
								{ "c", APEXIS_CRYSTAL, 5000 },
								{ "g", 50000000 },	-- 5,000g
							},
							groups = { follower(462) },	-- Dawnseeker Rukaryx
						}),
						i(115380, {	-- Crystal-Leaf Chain
							cost = 10000000,	-- 1,000g
						}),
						i(115381, {	-- Crystal-Plated Greatbelt
							cost = 10000000,	-- 1,000g
						}),
						i(115379, {	-- Crystalhide Belt
							cost = 10000000,	-- 1,000g
						}),
						i(122322, {	-- Ethereal Crystal-Leaf Chain
							cost = 200000000,	-- 20,000g
						}),
						i(122323, {	-- Ethereal Crystal-Plated Greatbelt
							cost = 200000000,	-- 20,000g
						}),
						i(116936, {	-- Exceptional Crystalhide Belt
							cost = 200000000,	-- 20,000g
						}),
						i(122320, {	-- Ethereal Windcrystal Cord
							cost = 200000000,	-- 20,000g
						}),
						i(116937, {	-- Exceptional Crystal-Leaf Chain
							cost = 50000000,	-- 5,000g
						}),
						i(116938, {	-- Exceptional Crystal-Plated Greatbelt
							cost = 50000000,	-- 5,000g
						}),
						i(122321, {	-- Ethereal Crystalhide Belt
							cost = 50000000,	-- 5,000g
						}),
						i(116935, {	-- Exceptional Windcrystal Cord
							cost = 50000000,	-- 5,000g
						}),
						i(116941, {	-- Flawless Crystal-Leaf Chain
							cost = 100000000,	-- 10,000g
						}),
						i(116942, {	-- Flawless Crystal-Plated Greatbelt
							cost = 100000000,	-- 10,000g
						}),
						i(116940, {	-- Flawless Crystalhide Belt
							cost = 100000000,	-- 10,000g
						}),
						i(116939, {	-- Flawless Windcrystal Cord
							cost = 100000000,	-- 10,000g
						}),
						i(116768, {	-- Mosshide Riverwallow (MOUNT!)
							cost = {
								{ "c", APEXIS_CRYSTAL, 5000 },
								{ "g", 500000000 },	-- 50,000g
							},
						}),
						i(115378, {	-- Windcrystal Cord
							cost = 10000000,	-- 1,000g
						}),
					},
				}),
				n(86391, {	-- Dawn-Seeker Krek <Apexis Leggings Trader>
					coord = { 50.7, 61.5, STORMSHIELD },
					sym = {{"select","itemID",
						116768,	-- Mosshide Riverwallow (MOUNT!)
						119821,	-- Contract: Dawnseeker Rukaryx
					}},
					groups = {
						i(115376, {	-- Crystal-Leaf Legguards
							cost = 10000000,	-- 1,000g
						}),
						i(115377, {	-- Crystal-Plated Legplates
							cost = 10000000,	-- 1,000g
						}),
						i(115375, {	-- Crystalhide Legguards
							cost = 10000000,	-- 1,000g
						}),
						i(122318, {	-- Ethereal Crystal-Leaf Legguards
							cost = 200000000,	-- 20,000g
						}),
						i(122319, {	-- Ethereal Crystal-Plated Legplates
							cost = 200000000,	-- 20,000g
						}),
						i(122317, {	-- Ethereal Crystalhide Legguards
							cost = 200000000,	-- 20,000g
						}),
						i(122316, {	-- Ethereal Windcrystal Leggings
							cost = 200000000,	-- 20,000g
						}),
						i(116929, {	-- Exceptional Crystal-Leaf Legguards
							cost = 50000000,	-- 5,000g
						}),
						i(116930, {	-- Exceptional Crystal-Plated Legplates
							cost = 50000000,	-- 5,000g
						}),
						i(116928, {	-- Exceptional Crystalhide Legguards
							cost = 50000000,	-- 5,000g
						}),
						i(116927, {	-- Exceptional Windcrystal Leggings
							cost = 50000000,	-- 5,000g
						}),
						i(116933, {	-- Flawless Crystal-Leaf Legguards
							cost = 100000000,	-- 10,000g
						}),
						i(116934, {	-- Flawless Crystal-Plated Legplates
							cost = 100000000,	-- 10,000g
						}),
						i(116932, {	-- Flawless Crystalhide Legguards
							cost = 100000000,	-- 10,000g
						}),
						i(116931, {	-- Flawless Windcrystal Leggings
							cost = 100000000,	-- 10,000g
						}),
						i(115374, {	-- Windcrystal Leggings
							cost = 10000000,	-- 1,000g
						}),
					},
				}),
				n(86387, {	-- Dawn-Seeker Rilak <Apexis Helm Trader>
					coord = { 50.0, 61.2, STORMSHIELD },
					sym = {{"select","itemID",
						116768,	-- Mosshide Riverwallow (MOUNT!)
						119821,	-- Contract: Dawnseeker Rukaryx
					}},
					groups = {
						i(116955, {	-- Crystal-Leaf Helm
							cost = 10000000,	-- 1,000g
						}),
						i(116956, {	-- Crystal-Plated Greathelm
							cost = 10000000,	-- 1,000g
						}),
						i(116954, {	-- Crystalhide Cowl
							cost = 10000000,	-- 1,000g
						}),
						i(122310, {	-- Ethereal Crystal-Leaf Helm
							cost = 200000000,	-- 20,000g
						}),
						i(122311, {	-- Ethereal Crystal-Plated Greathelm
							cost = 200000000,	-- 20,000g
						}),
						i(122309, {	-- Ethereal Crystalhide Cowl
							cost = 200000000,	-- 20,000g
						}),
						i(122308, {	-- Ethereal Windcrystal Hood
							cost = 200000000,	-- 20,000g
						}),
						i(116959, {	-- Exceptional Crystal-Leaf Helm
							cost = 50000000,	-- 5,000g
						}),
						i(116960, {	-- Exceptional Crystal-Plated Greathelm
							cost = 50000000,	-- 5,000g
						}),
						i(116958, {	-- Exceptional Crystalhide Cowl
							cost = 50000000,	-- 5,000g
						}),
						i(116957, {	-- Exceptional Windcrystal Hood
							cost = 50000000,	-- 5,000g
						}),
						i(115398, {	-- Flawless Crystal-Leaf Helm
							cost = 100000000,	-- 10,000g
						}),
						i(115399, {	-- Flawless Crystal-Plated Greathelm
							cost = 100000000,	-- 10,000g
						}),
						i(115397, {	-- Flawless Crystalhide Cowl
							cost = 100000000,	-- 10,000g
						}),
						i(115396, {	-- Flawless Windcrystal Hood
							cost = 100000000,	-- 10,000g
						}),
						i(116953, {	-- Windcrystal Hood
							cost = 10000000,	-- 1,000g
						}),
					},
				}),
				n(91321, {	-- Dawn-Seeker Skelak <Apexis Bracer Trader>
					coord = { 50.0, 61.6, STORMSHIELD },
					sym = {{"select","itemID",
						116768,	-- Mosshide Riverwallow (MOUNT!)
						119821,	-- Contract: Dawnseeker Rukaryx
					}},
					groups = {
						i(116967, {	-- Crystal-Leaf Bracers
							cost = 10000000,	-- 1,000g
						}),
						i(116968, {	-- Crystal-Plated Bracers
							cost = 10000000,	-- 1,000g
						}),
						i(116966, {	-- Crystalhide Bracers
							cost = 10000000,	-- 1,000g
						}),
						i(122314, {	-- Ethereal Crystal-Leaf Bracers
							cost = 200000000,	-- 20,000g
						}),
						i(122315, {	-- Ethereal Crystal-Plated Bracers
							cost = 200000000,	-- 20,000g
						}),
						i(122313, {	-- Ethereal Crystalhide Bracers
							cost = 200000000,	-- 20,000g
						}),
						i(122312, {	-- Ethereal Windcrystal Bracers
							cost = 200000000,	-- 20,000g
						}),
						i(116963, {	-- Exceptional Crystal-Leaf Bracers
							cost = 50000000,	-- 5,000g
						}),
						i(116964, {	-- Exceptional Crystal-Plated Bracers
							cost = 50000000,	-- 5,000g
						}),
						i(116962, {	-- Exceptional Crystalhide Bracers
							cost = 50000000,	-- 5,000g
						}),
						i(116961, {	-- Exceptional Windcrystal Bracers
							cost = 50000000,	-- 5,000g
						}),
						i(115401, {	-- Flawless Crystalhide Bracers
							cost = 100000000,	-- 10,000g
						}),
						i(115402, {	-- Flawless Crystal-Leaf Bracers
							cost = 100000000,	-- 10,000g
						}),
						i(115403, {	-- Flawless Crystal-Plated Bracers
							cost = 100000000,	-- 10,000g
						}),
						i(115400, {	-- Flawless Windcrystal Bracers
							cost = 100000000,	-- 10,000g
						}),
						i(116965, {	-- Windcrystal Bracers
							cost = 10000000,	-- 1,000g
						}),
					},
				}),
				n(86390, {	-- Dawn-Seeker Vallar <Apexis Glove Trader>
					coord = { 48.5, 62.3, STORMSHIELD },
					sym = {{"select","itemID",
						116768,	-- Mosshide Riverwallow (MOUNT!)
						119821,	-- Contract: Dawnseeker Rukaryx
					}},
					groups = {
						i(116945, {	-- Crystal-Leaf Gloves
							cost = 10000000,	-- 1,000g
						}),
						i(116946, {	-- Crystal-Plated Gauntlets
							cost = 10000000,	-- 1,000g
						}),
						i(116944, {	-- Crystalhide Grips
							cost = 10000000,	-- 1,000g
						}),
						i(122326, {	-- Ethereal Crystal-Leaf Gloves
							cost = 200000000,	-- 20,000g
						}),
						i(122327, {	-- Ethereal Crystal-Plated Gauntlets
							cost = 200000000,	-- 20,000g
						}),
						i(122325, {	-- Ethereal Crystalhide Grips
							cost = 200000000,	-- 20,000g
						}),
						i(122324, {	-- Ethereal Windcrystal Wraps
							cost = 200000000,	-- 20,000g
						}),
						i(115389, {	-- Exceptional Crystal-Leaf Gloves
							cost = 50000000,	-- 5,000g
						}),
						i(115390, {	-- Exceptional Crystal-Plated Gauntlets
							cost = 50000000,	-- 5,000g
						}),
						i(115388, {	-- Exceptional Crystalhide Grips
							cost = 50000000,	-- 5,000g
						}),
						i(115387, {	-- Exceptional Windcrystal Wraps
							cost = 50000000,	-- 5,000g
						}),
						i(116949, {	-- Flawless Crystal-Leaf Gloves
							cost = 100000000,	-- 10,000g
						}),
						i(116950, {	-- Flawless Crystal-Plated Gauntlets
							cost = 100000000,	-- 10,000g
						}),
						i(116948, {	-- Flawless Crystalhide Grips
							cost = 100000000,	-- 10,000g
						}),
						i(116947, {	-- Flawless Windcrystal Wraps
							cost = 100000000,	-- 10,000g
						}),
						i(116943, {	-- Windcrystal Wraps
							cost = 10000000,	-- 1,000g
						}),
					},
				}),
				n(86389, {	-- Dawn-Seeker Verroak <Apexis Cloak Trader>
					coord = { 49.4, 61.3, STORMSHIELD },
					sym = {{"select","itemID",
						116768,	-- Mosshide Riverwallow (MOUNT!)
						119821,	-- Contract: Dawnseeker Rukaryx
					}},
					groups = {
						i(116976, {	-- Crystal Reinforced Doomcloak
							cost = 10000000,	-- 1,000g
						}),
						i(116973, {	-- Crystal-Edged Bladecloak
							cost = 10000000,	-- 1,000g
						}),
						i(116974, {	-- Crystalclasp Stormcloak
							cost = 10000000,	-- 1,000g
						}),
						i(122332, {	-- Ethereal Crystal Reinforced Doomcloak
							cost = 200000000,	-- 20,000g
						}),
						i(122329, {	-- Ethereal Crystal-Edged Bladecloak
							cost = 200000000,	-- 20,000g
						}),
						i(122330, {	-- Ethereal Crystalclasp Stormcloak
							cost = 200000000,	-- 20,000g
						}),
						i(122331, {	-- Ethereal Refractory Heartcloak
							cost = 200000000,	-- 20,000g
						}),
						i(122328, {	-- Ethereal Shard-Covered Dreadcloak
							cost = 200000000,	-- 20,000g
						}),
						i(115394, {	-- Exceptional Crystal Reinforced Doomcloak
							cost = 50000000,	-- 5,000g
						}),
						i(115391, {	-- Exceptional Crystal-Edged Bladecloak
							cost = 50000000,	-- 5,000g
						}),
						i(115392, {	-- Exceptional Crystalclasp Stormcloak
							cost = 50000000,	-- 5,000g
						}),
						i(115393, {	-- Exceptional Refractory Heartcloak
							cost = 50000000,	-- 5,000g
						}),
						i(115395, {	-- Exceptional Shard-Covered Dreadcloak
							cost = 50000000,	-- 5,000g
						}),
						i(116972, {	-- Flawless Crystal Reinforced Doomcloak
							cost = 100000000,	-- 10,000g
						}),
						i(116969, {	-- Flawless Crystal-Edged Bladecloak
							cost = 100000000,	-- 10,000g
						}),
						i(116970, {	-- Flawless Crystalclasp Stormcloak
							cost = 100000000,	-- 10,000g
						}),
						i(116971, {	-- Flawless Refractory Heartcloak
							cost = 100000000,	-- 10,000g
						}),
						i(116951, {	-- Flawless Shard-Covered Dreadcloak
							cost = 100000000,	-- 10,000g
						}),
						i(116975, {	-- Refractory Heartcloak
							cost = 10000000,	-- 1,000g
						}),
						i(116952, {	-- Shard-Covered Dreadcloak
							cost = 10000000,	-- 1,000g
						}),
					},
				}),
				n(88482, {	-- Gazrix Gearlock <Steamwheedle "Preservation" Society Quartermaster>
					coord = { 43.1, 77.7, STORMSHIELD },
					sym = {{"sub","common_vendor",87394}},	-- Kwilax Fuseshiv <Reputation Vendor>
				}),
				n(87365, {	-- Grakis <Archaeology Fragments>
					coord = { 48.6, 33.5, STORMSHIELD },
					groups = {
						i(122606, {	-- Explorer's Notebook
							cost = { { "i", 87399, 5 } },	-- 5x  Restored Artifact
						}),
						i(117389, {	-- Draenor Archaeologist's Lodestone
							cost = { { "i", 87399, 1 } },	-- 1x  Restored Artifact
						}),
						i(117390, {	-- Draenor Archaeologist's Map
							cost = { { "i", 87399, 1 } },	-- 1x  Restored Artifact
						}),
						i(118729, {	-- Gorgrond Treasure Map (CI!)
							cost = { { "g", 1000000 } },	-- 100g
						}),
						i(118732, {	-- Nagrand Treasure Map (CI!)
							cost = { { "g", 1000000 } },	-- 100g
						}),
						i(118728, {	-- Shadowmoon Valley Treasure Map (CI!)
							cost = { { "g", 1000000 } },	-- 100g
						}),
						i(118731, {	-- Spires of Arak Treasure Map (CI!)
							cost = { { "g", 1000000 } },	-- 100g
						}),
						i(118730, {	-- Talador Treasure Map (CI!)
							cost = { { "g", 1000000 } },	-- 100g
						}),
					},
				}),
				n(87063, {	-- Joao Calhandro <Inscription Recipes>
					coord = { 62.0, 33.5, STORMSHIELD },
					groups = {
						i(111923, {	-- Secret of Draenor Inscription **Teaches laughing tarot, ocean tarot, savage tarot, war paints, card of omens, research warbinders ink, secrets of draenor inscription, Warbinder's ink
							recipe(169081),	-- War Paints
							recipe(167950),	-- Research: Warbinder's Ink
							recipe(175390),	-- Laughing Tarot
							recipe(175389),	-- Ocean Tarot
							recipe(175392),	-- Savage Tarot
							recipe(166669),	-- Card of Omens
							recipe(178497),	-- Warbinder's Ink
							i(120136),	-- Recipe: Secrets of Draenor Inscription
						}),
						i(118605, {	-- Technique: Crystalfire Spellstaff (RECIPE!)
							cost = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
						}),
						i(118606, {	-- Technique: Darkmoon Card of Draenor (RECIPE!)
							cost = { { "i", 119297, 5 } },	-- 5x Secret of Draenor Inscription
						}),
						i(120265, {	-- Technique: Ensorcelled Tarot (RECIPE!)
							description = "The item is still in game but you can't learn the recipe from it anymore (recipe removed in 9.0.1)",
							cost = { { "i", 119297, 5 } },	-- 5x Secret of Draenor Inscription
							collectible = false,
						}),
						i(118607, {	-- Technique: Etched-Blade Warstaff (RECIPE!)
							cost = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
						}),
						i(257025, {	-- Technique: Frostwall Elevated Brazier (RECIPE!)
							timeline = { ADDED_11_2_7 },
							cost = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
						}),
						i(202236, {	-- Technique: Impressive Weapon Crystal (RECIPE!)
							timeline = { ADDED_10_0_5 },
							cost = { { "i", 119297, 5 } },	-- 5x Secret of Draenor Inscription
						}),
						i(257028, {	-- Technique: Orcish Banded Barrel (RECIPE!)
							timeline = { ADDED_11_2_7 },
							cost = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
						}),
						i(262809, {	-- Technique: Orcish Fence (RECIPE!)
							timeline = { ADDED_11_2_7 },
							cost = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
						}),
						i(262810, {	-- Technique: Orcish Fencepost (RECIPE!)
							timeline = { ADDED_11_2_7 },
							cost = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
						}),
						i(202237, {	-- Technique: Remarkable Weapon Crystal (RECIPE!)
							timeline = { ADDED_10_0_5 },
							cost = { { "i", 119297, 5 } },	-- 5x Secret of Draenor Inscription
						}),
						i(118613, {	-- Technique: Shadowtome (RECIPE!)
							cost = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
						}),
						i(118614, {	-- Technique: Volatile Crystal (RECIPE!)
							cost = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
						}),
						i(118615, {	-- Technique: Warmaster's Firestick (RECIPE!)
							cost = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
						}),
						i(118610, {	-- Technique: Weapon Crystal (RECIPE!)
							description = "The item is still in game but you can't learn the recipe from it anymore (recipe removed in 9.0.1)",
							timeline = { ADDED_6_0_2, REMOVED_10_0_5 },
							cost = { { "i", 119297, 5 } },	-- 5x Secret of Draenor Inscription
							collectible = false,
						}),
						i(257027, {	-- Technique: Wooden Shipping Crate (RECIPE!)
							timeline = { ADDED_11_2_7 },
							cost = { { "i", 119297, 1 } },	-- 1x Secret of Draenor Inscription
						}),
						i(118608, { timeline = { CREATED_6_0_2 }}),	-- Technique: Greater Weapon Crystal (RECIPE!)
						i(120266, { timeline = { CREATED_6_0_2 }}),	-- Technique: Greater Ensorcelled Tarot (RECIPE!)
						i(122548, { timeline = { CREATED_6_1_0 }}),	-- Technique: Powerful Ensorcelled Tarot (RECIPE!)
						i(122553, { timeline = { CREATED_6_1_0 }}),	-- Technique: Powerful Weapon Crystal (RECIPE!)
					},
				}),
				n(85849, {	-- Kinkade Jakobs <Blueprints Trader>
					coord = { 29.7, 52.9, STORMSHIELD },
					groups = {
						i(111929, {	-- Alchemy Lab, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
						i(111968, {	-- Barn, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
						i(111970, {	-- Barracks, Level 2
							cost = { { "i", 116395, 1 } },	-- Comprehensive Outpost Construction Guide
						}),
						i(111966, {	-- Dwarven Bunker, Level 2
							cost = { { "i", 116395, 1 } },	-- Comprehensive Outpost Construction Guide
						}),
						i(111972, {	-- Enchanter's Study, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
						i(109256, {	-- Engineering Works, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
						i(111974, {	-- Gem Boutique, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
						i(111980, {	-- Gladiator's Sanctum, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
						i(111984, {	-- Gnomish Gearworks, Level 2
							cost = { { "i", 116395, 1 } },	-- Comprehensive Outpost Construction Guide
						}),
						i(109254, {	-- Lumber Mill, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
						i(107694, {	-- Lunarfall Inn, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
						i(109062, {	-- Mage Tower, Level 2
							cost = { { "i", 116395, 1 } },	-- Comprehensive Outpost Construction Guide
						}),
						i(111976, {	-- Salvage Yard, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
						i(111978, {	-- Scribe's Quarters, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
						i(112002, {	-- Stables, Level 2
							cost = { { "i", 116395, 1 } },	-- Comprehensive Outpost Construction Guide
						}),
						i(111982, {	-- Storehouse, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
						i(111992, {	-- Tailoring Emporium, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
						i(111990, {	-- The Forge, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
						i(111988, {	-- The Tannery, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
						i(111986, {	-- Trading Post, Level 2
							cost = { { "i", 116394, 1 } },	-- Outpost Building Assembly Notes
						}),
					},
				}),
				n(85946, {	-- Shadow-Sage Brakoss <Arakkoa Outcasts Quartermaster>
					coord = { 44.5, 75.0, STORMSHIELD },
					groups = bubbleDownClassicRep(FACTION_ARAKKOA_OUTCASTS, {
						{		-- Neutral
						}, {	-- Friendly
							i(118666, {	-- Arakkoa Elixir
								cost = { { "c", APEXIS_CRYSTAL, 1 } },
							}),
							i(258747, {	-- High Arakkoan Shelf (DECOR!)
								timeline = { ADDED_12_0_0 },
							}),
						}, {	-- Honored
							i(258743, {	-- Arakkoan Alchemy Tools
								timeline = { ADDED_12_0_0 },
							}),
							i(118682, {	-- Saberon Protector
								cost = 5000000,	-- 500g
							}),
						}, {	-- Revered
							i(258746, {	-- High Arakkoan Alchemist's Shelf
								timeline = { ADDED_12_0_0 },
							}),
							i(119143, {	-- Son of Sethe (PET!)
								cost = {
									{ "c", APEXIS_CRYSTAL, 2000 },
									{ "g", 10000000 },	-- 1,000g
								},
							}),
						}, {	-- Exalted
							i(119136),	-- Arakkoa Outcasts Tabard
							i(116772, {	-- Shadowmane Charger (MOUNT!)
								cost = {
									{ "c", APEXIS_CRYSTAL, 5000 },
									{ "g", 50000000 },	-- 5,000g
								},
							}),
						},
					}),
				}),
				n(85950, {	-- Trader Caerel <General Goods>
					coord = { 41.0, 59.6, STORMSHIELD },
					groups = sharedData({
						timeline = { ADDED_11_2_7 }
					},{
						i(251653, {	-- Draenethyst Lamppost (DECOR!)
							cost = {
								{ "c", GARRISON_RESOURCES, 1000 },
								{ "g", 5000000 },	-- 500g
							},
						}),
						i(251548, {	-- Draenic Fence (DECOR!)
							cost = {
								{ "c", APEXIS_CRYSTAL, 500 },
								{ "g", 3000000 },	-- 300g
							},
						}),
						i(251330, {	-- Draenic Fencepost (DECOR!)
							cost = {
								{ "c", APEXIS_CRYSTAL, 300 },
								{ "g", 1000000 },	-- 100g
							},
						}),
						i(251640, {	-- Draenic Forge (DECOR!)
							cost = {
								{ "c", APEXIS_CRYSTAL, 1000 },
								{ "g", 5000000 },	-- 500g
							},
						}),
						i(251477, {	-- Draenic Wooden Table (DECOR!)
							cost = {
								{ "c", GARRISON_RESOURCES, 1000 },
								{ "g", 5000000 },	-- 500g
							},
						}),
						i(251549, {	-- Emblem of the Naaru's Blessing (DECOR!)
							cost = { { "c", GARRISON_RESOURCES, 2000 } },
						}),
						i(245425, {	-- Hanging Draenethyst Light (DECOR!)
							cost = {
								{ "c", APEXIS_CRYSTAL, 500 },
								{ "g", 3000000 },	-- 300g
							},
						}),
						i(251654, {	-- Large Karabor Fountain (DECOR!)
							cost = {
								{ "c", APEXIS_CRYSTAL, 2000 },
								{ "g", 8000000 },	-- 800g
							},
						}),
					}),
				}),
				n(85932, {	-- Vindicator Nuurem <Council of Exarchs Quartermaster>
					coord = { 46.6, 76.7, STORMSHIELD },
					groups = bubbleDownClassicRep(FACTION_COUNCIL_OF_EXARCHS, {
						{		-- Neutral
						}, {	-- Friendly
							i(251483, {	-- Draenethyst Lantern (DECOR!)
								cost = { { "c", GARRISON_RESOURCES, 250 } },
								timeline = { ADDED_11_2_7 },
							}),
							i(118665, {	-- Exarch Elixir
								cost = { { "c", APEXIS_CRYSTAL, 1 } },
							}),
							i(285179, {	-- Ritual Embaari Arch (DECOR!))
								cost = { { "c", GARRISON_RESOURCES, 250 } },
								timeline = { ADDED_12_1_5 },
							}),
							i(245423, {	-- Spherical Draenic Topiary (DECOR!)
								cost = { { "c", GARRISON_RESOURCES, 250 } },
								timeline = { ADDED_11_2_7 },
							}),
						}, {	-- Honored
							i(251481, {	-- Elodor Armory Rack (DECOR!)
								cost = { { "c", GARRISON_RESOURCES, 500 } },
								timeline = { ADDED_11_2_7 },
							}),
							i(115472, {	-- Permanent Time Bubble (TOY!)
								cost = 10000000,	-- 1,000g
							}),
							i(251493, {	-- Small Karabor Fountain (DECOR!)
								cost = { { "c", GARRISON_RESOURCES, 500 } },
								timeline = { ADDED_11_2_7 },
							}),
							i(118680, {	-- Tranquility of the Exarchs
								cost = 5000000,	-- 500g
							}),
						}, {	-- Revered
							i(251484, {	-- "Dawning Hope" Mosaic (DECOR!)
								cost = { { "c", GARRISON_RESOURCES, 1000 } },
								timeline = { ADDED_11_2_7 },
							}),
							i(119162, {	-- Contract: Cleric Maluuf
								cost = 50000000,	-- 5,000g
								groups = { follower(459) },	-- Cleric Maluuf
							}),
							i(119142, {	-- Draenei Micro Defender (PET!)
								cost = {
									{ "c", APEXIS_CRYSTAL, 2000 },
									{ "g", 10000000 },	-- 1,000g
								},
							}),
							i(251476, {	-- Embroidered Embaari Tent (DECOR!)
								cost = { { "c", GARRISON_RESOURCES, 1000 } },
								timeline = { ADDED_11_2_7 },
							}),
							i(118663, {	-- Relic of Karabor
								cost = 25000000,	-- 2,500g
							}),
						}, {	-- Exalted
							i(119135),	-- Council of Exarchs Tabard
							i(116664, {	-- Dusty Rockhide (MOUNT!)
								cost = {
									{ "c", APEXIS_CRYSTAL, 5000 },
									{ "g", 50000000 },	-- 5,000g
								},
							}),
							i(251551, {	-- Grand Draenethyst Lamp (DECOR!)
								cost = { { "c", GARRISON_RESOURCES, 1500 } },
								timeline = { ADDED_11_2_7 },
							}),
							i(251479, {	-- Shadowmoon Greenhouse (DECOR!)
								cost = { { "c", GARRISON_RESOURCES, 1500 } },
								timeline = { ADDED_11_2_7 },
							}),
						},
					}),
				}),
			},
		}),
	},
});
