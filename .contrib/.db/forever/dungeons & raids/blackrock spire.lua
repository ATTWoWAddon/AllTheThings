-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local LOWER_BLACKROCK_SPIRE = createHeader({
	readable = "Hordemar City (Lower)",
	icon = 136327,
	text = {
		en = [[~DUNGEON_FLOOR_BLACKROCKSPIRE3.." (" .. L.LOWER ..")"]],
	},
	description = {
		en = "Also known as 'Lower' Blackrock Spire.",
		es = "También conocida como 'Cumbre de Roca inferior'.",
		mx = "También conocida como 'Cumbre de Roca inferior'.",
		cn = "又称黑石塔下层。",
		tw = "又稱「黑石塔下層」。",
	},
});
local UPPER_BLACKROCK_SPIRE = createHeader({
	readable = "Dragonspire Hall (Upper)",
	icon = 134153,
	text = {
		en = [[~DUNGEON_FLOOR_UPPERBLACKROCKSPIRE1.." (" .. L.UPPER ..")"]],
	},
	description = {
		en = "One member of your group must have completed the Seal of Ascension quest chain in order for the fires to light and the door to open to this portion of the instance. Also known as 'Upper' Blackrock Spire.",
		es = "Un miembro de tu grupo debe haber completado la cadena de misiones del Sello de Ascensión para que se enciendan las hogueras y se abra la puerta a esta parte de la instancia. También conocida como la Cumbre de Roca Negra superior.",
		mx = "Un miembro de tu grupo debe haber completado la cadena de misiones del Sello de Ascensión para que se prendan las hogueras y se abra la puerta a esta parte de la instancia. También conocida como la Cumbre de Roca Negra superior.",
		cn = "你的队伍中必须有一名成员完成 “升腾之印（Seal of Ascension）” 任务链，才能点燃火焰并打开通往副本这一部分的门，即黑石塔上层（Upper Blackrock Spire）",
		tw = "隊伍中必須有一名成員完成晉升印章任務線，才能點燃火焰並開啟通往此副本區域的門。此處也稱為「黑石塔上層」。",
	},
});

instanceroot(229, {	-- Blackrock Spire
	lore = "The mighty fortress carved within the fiery bowels of Blackrock Mountain was designed by the master dwarf-mason, Franclorn Forgewright. Intended to be the symbol of Dark Iron power, the fortress was held by the sinister dwarves for centuries. However, Nefarian - the cunning son of the dragon, Deathwing - had other plans for the great keep. He and his draconic minions took control of the upper Spire and made war on the dwarves' holdings in the mountain's volcanic depths. Realizing that the dwarves were led by the mighty fire elemental, Ragnaros - Nefarian vowed to crush his enemies and claim the whole of Blackrock mountain for himself.",
	icon = 136327,
	zoneTextAreaID = 1583,	-- Blackrock Spire
	mapID = MAP.BLACKROCK_SPIRE,
	lvl = 50,
	groups = {
		n(QUESTS, {
			q(6601, {	-- Ascension...
				sourceQuest = 6585,	-- The Test of Skulls, Axtroz
				providers = {
					{ "n", 10321 },	-- Emberstrife
					{ "i", 16888 },	-- Dull Drakefire Amulet
				},
				coord = { 56.8, 87.4, MAP.DUSTWALLOW_MARSH },
				maps = { MAP.DESOLACE },
				races = HORDE_ONLY,
				lvl = 55,
			}),
			{	-- Bijou's Belongings
				allianceQuestData = q(5001),	-- Bijou's Belongings (A)
				hordeQuestData = q(4982, {	-- Bijou's Belongings (H)
					sourceQuest = 4981,	-- Operative Bijou
				}),
				qg = 10257,	-- Bijou
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Bijou's Belongings
						providers = {
							{ "i",  12345 },	-- Bijou's Belongings
							{ "o", 175334 },	-- Bijou's Belongings
						},
					}),
				},
			},
			q(4983, {	-- Bijou's Reconnaissance Report
				sourceQuest = 4982,	-- Bijou's Belongings (H)
				providers = {
					{ "n", 10257 },	-- Bijou
					{ "i", 12652 },	-- Bijou's Reconnaissance Report
				},
				maps = { MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					i(15858),	-- Freewind Gloves
					i(15859),	-- Seapost Girdle
				},
			}),
			q(7761, {	-- Blackhand's Command
				providers = {
					{ "n",   9046 },	-- Scarshield Quartermaster <Scarshield Legion>
					{ "i",  18987 },	-- Blackhand's Command
					{ "o", 179880 },	-- Drakkisath's Brand
				},
				coord = { 34.9, 27.9, MAP.BURNING_STEPPES },
				maps = { MAP.BLACKROCK_MOUNTAIN },
				lvl = 55,
			}),
			q(6602, {	-- Blood of the Black Dragon Champion
				sourceQuest = 6601,	-- Ascension...
				qg = 10182,	-- Rexxar <Champion of the Horde>
				coords = {
					{ 54.0, 3.2, MAP.DESOLACE },
					{ 62.8, 22.6, MAP.DESOLACE },
					{ 59.8, 37.6, MAP.DESOLACE },
					{ 52.0, 39.4, MAP.DESOLACE },
					{ 49.6, 56.4, MAP.DESOLACE },
					{ 55.6, 66.6, MAP.DESOLACE },
					{ 50.6, 75.2, MAP.DESOLACE },
					{ 40.8, 78.6, MAP.DESOLACE },
					{ 42.4, 96.8, MAP.DESOLACE },
				},
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Blood of the Black Dragon Champion
						provider = { "i", 16663 },	-- Blood of the Black Dragon Champion
					}),
					i(16309),	-- Drakefire Amulet
				},
			}),
			q(5068, {	-- Breastplate of Bloodthirst
				sourceQuest = 5047,	-- Pip Quickwit, At Your Service!
				qg = 10637,	-- Malyfous Darkhammer
				coord = { 61.0, 38.8, MAP.WINTERSPRING },
				maps = { MAP.SCHOLOMANCE, MAP.STRATHOLME },
				cost = {
					{ "i", 12731, 1 },	-- Pristine Hide of the Beast
					{ "i", 12735, 10 },	-- Frayed Abomination Stitching
					{ "i", 12360, 5 },	-- Arcanite Bar
					{ "i", 12753, 5 },	-- Skin of Shadow
					{ "g", 500000 },	-- 50 Gold
				},
				lvl = 57,
				repeatable = true,
				groups = {
					i(12757),	-- Breastplate of Bloodthirst
				},
			}),
			q(5166, {	-- Breastplate of the Chromatic Flight
				sourceQuest = 5164,	-- Catalogue of the Wayward
				provider = { "o", 176192 },	-- Catalogue of the Wayward
				coord = { 39.4, 66.7, MAP.WESTERN_PLAGUELANDS },
				maps = { MAP.STRATHOLME, MAP.EASTERN_PLAGUELANDS },
				cost = {
					{ "i", 12871, 1 },	-- Chromatic Carapace
					{ "i", 12607, 10 },	-- Brilliant Chromatic Scale
					{ "i", 12735, 10 },	-- Frayed Abomination Stitching
					{ "i", 12938, 10 },	-- Blood of Heroes
				},
				lvl = 57,
				groups = {
					i(12895),	-- Breastplate of the Chromatic Flight
				},
			}),
			q(5063, {	-- Cap of the Scarlet Savant
				sourceQuest = 5047,	-- Pip Quickwit, At Your Service!
				qg = 10637,	-- Malyfous Darkhammer
				coord = { 61.0, 38.8, MAP.WINTERSPRING },
				maps = { MAP.STRATHOLME },
				cost = {
					{ "i", 12731, 1 },	-- Pristine Hide of the Beast
					{ "i", 12735, 5 },	-- Frayed Abomination Stitching
					{ "i", 12363, 8 },	-- Arcanite Crystal
					{ "i", 12734, 5 },	-- Enchanted Scarlet Thread
					{ "g", 500000 },	-- 50 Gold
				},
				lvl = 57,
				repeatable = true,
				groups = {
					i(12752),	-- Cap of the Scarlet Savant
				},
			}),
			q(5164, {	-- Catalogue of the Wayward
				sourceQuest = 5162,	-- Wrath of the Blue Flight (2/2)
				qg = 10976,	-- Jeziba
				coord = { 39.4, 66.8, MAP.WESTERN_PLAGUELANDS },
				lvl = 57,
			}),
			q(8181, {	-- Confront Yeh'kinya
				sourceQuest = 4788,	-- The Final Tablets
				qg = 10460,	-- Prospector Ironboot
				coord = { 66.8, 24.0, MAP.TANARIS },
				lvl = 40,
				groups = {
					i(20218),	-- Faded Hakkari Cloak
					i(20219),	-- Tattered Hakkari Cape
				},
			}),
			q(4765, {	-- Delivery to Ridgewell
				sourceQuest = 4764,	-- Doomrigger's Clasp
				providers = {
					{ "n", 9565 },	-- Mayara Brightwing
					{ "i", 12437 },	-- Ridgewell's Crate
				},
				coord = { 84.8, 69.0, MAP.BURNING_STEPPES },
				races = ALLIANCE_ONLY,
				lvl = 57,
				groups = {
					i(15860),	-- Blinkstrike Armguards
					i(15861),	-- Swiftfoot Treads
				},
			}),
			q(4764, {	-- Doomrigger's Clasp
				sourceQuest = 4766,	-- Mayara Brightwing
				qg = 9565,	-- Mayara Brightwing
				coord = { 84.8, 69.0, MAP.BURNING_STEPPES },
				races = ALLIANCE_ONLY,
				lvl = 57,
				groups = {
					objective(1, {	-- 0/1 Doomrigger's Clasp
						providers = { { "i", 12352 } },	-- Doomrigger's Clasp
					}),
					o(175382, {	-- Doomrigger's Coffer
						description = "Can be found in a coffer in the Whelp Room behind a fallen column to the left of the ramp leading to the next room.\nNOTE: Most groups skip this room, so ask your group to clear to the column.",
						groups = {
							i(12352),	-- Doomrigger's Clasp
						},
					}),
				},
			}),
			q(6502, {	-- Drakefire Amulet
				sourceQuest = 6501,	-- The Dragon's Eye
				qg = 10929,	-- Haleh
				coord = { 54.55, 51.2, MAP.WINTERSPRING },
				races = ALLIANCE_ONLY,
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Blood of the Black Dragon Champion
						provider = { "i", 16663 },	-- Blood of the Black Dragon Champion
					}),
					i(16309),	-- Drakefire Amulet
				},
			}),
			q(4735, {	-- Egg Collection
				sourceQuest = 4734,	-- Egg Freezing
				qg = 10267,	-- Tinkee Steamboil
				coord = { 65.2, 23.8, MAP.BURNING_STEPPES },
				lvl = 57,
				groups = {
					objective(1, {	-- 0/8 Collected Dragon Egg
						providers = {
							{ "i",  12241 },	-- Collected Dragon Egg
							{ "o", 175124 },	-- Rookery Egg
						},
						cost = {
							{ "i", 12144, 1 },	-- Eggscilloscope
							{ "i", 12287, 1 },	-- Collectronic Module
						},
					}),
				},
			}),
			q(4734, {	-- Egg Freezing
				sourceQuest = 4907,	-- Tinkee Steamboil
				qg = 10267,	-- Tinkee Steamboil
				coord = { 65.2, 23.8, MAP.BURNING_STEPPES },
				lvl = 57,
				groups = {
					objective(1, {	-- Test the Eggscilliscope Prototype
						providers = {
							{ "i",  12286 },	-- Eggscilloscope Prototype
							{ "o", 175124 },	-- Rookery Egg
						},
					}),
					i(12144, {	-- Eggscilloscope
						description = "You don't need to keep this, but it might be nice to have just in case someone doesn't quite grasp the 'don't touch the eggs' rule.",
					}),
				},
			}),
			q(4941, {	-- Eitrigg's Wisdom
				sourceQuest = 4903,	-- Warlord's Command
				qg = 9077,	-- Warlord Goretooth <Kargath Expeditionary Force>
				coord = { 5.8, 47.6, MAP.BADLANDS },
				maps = { MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- Council with Eitrigg.
						provider = { "n", 3144 },	-- Eitrigg
						coord = { 34.4, 38.4, MAP.ORGRIMMAR },
					}),
				},
			}),
			q(6570, {	-- Emberstrife
				sourceQuest = 6569,	-- Oculus Illusions
				providers = {
					{ "n", 11872 },	-- Myranda the Hag
					{ "i", 16787 },	-- Amulet of Draconic Subversion
				},
				coord = { 50.8, 77.8, MAP.WESTERN_PLAGUELANDS },
				maps = { MAP.DUSTWALLOW_MARSH },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					i(16787),	-- Amulet of Draconic Subversion
				},
			}),
			q(4862, {	-- En-Ay-Es-Tee-Why
				qg = 10260,	-- Kibler
				coord = { 65.8, 22.0, MAP.BURNING_STEPPES },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/15 Spire Spider Egg
						providers = {
							{ "i",  12530 },	-- Spire Spider Egg
							{ "o", 175606 },	-- Spire Spider Egg
						},
						description = "Interacting with a spider egg may spawn baby spiders, beware!",
					}),
					i(12529),	-- Smolderweb Hatchling (PET!)
				},
			}),
			q(5124, {	-- Fiery Plate Gauntlets
				sourceQuest = 5103,	-- Hot Fiery Death
				qg = 10637,	-- Malyfous Darkhammer <The Thorium Brotherhood>
				coord = { 61.0, 38.8, MAP.WINTERSPRING },
				cost = {
					{ "i", 12812, 1 },	-- Unfired Plate Gauntlets
					{ "i", 12655, 6 },	-- Enchanted Thorium Bar
					{ "i", 7078, 2 },	-- Essence of Fire
					{ "i", 7910, 4 },	-- Star Ruby
				},
				requireSkill = ARMORSMITH,
				lvl = 55,
				groups = {
					i(12699),	-- Plans: Fiery Plate Gauntlets (RECIPE!)
					i(12631),	-- Fiery Plate Gauntlets
				},
			}),
			q(4974, {	-- For The Horde!
				sourceQuest = 4941,	-- Eitrigg's Wisdom
				qg = 4949,	-- Thrall <Warchief>
				coord = { 32.0, 37.8, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Head of Rend Blackhand
						provider = { "i", 12630 },	-- Head of Rend Blackhand
					}),
					i(13965),	-- Blackhand's Breadth
					i(13968),	-- Eye of the Beast
					i(13966),	-- Mark of Tyranny
				},
			}),
			q(5089, {	-- General Drakkisath's Command
				provider = { "i", 12780 },	-- General Drakkisath's Command
				races = ALLIANCE_ONLY,
				lvl = 55,
			}),
			q(5102, {	-- General Drakkisath's Demise
				sourceQuest = 5089,	-- General Drakkisath's Command
				qg = 9560,	-- Marshal Maxwell
				coord = { 84.6, 68.8, MAP.BURNING_STEPPES },
				races = ALLIANCE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 General Drakkisath slain
						provider = { "n", 10363 },	-- General Drakkisath
					}),
					i(13965),	-- Blackhand's Breadth
					i(13968),	-- Eye of the Beast
					i(13966),	-- Mark of Tyranny
				},
			}),
			q(5103, {	-- Hot Fiery Death
				description = "At the bottom floor of Lower Blackrock Spire near the lava.",
				provider = { "o", 176090 },	-- Human Remains
				requireSkill = ARMORSMITH,
				lvl = 55,
				groups = {
					i(12812, {	-- Unfired Plate Gauntlets
						provider = { "o", 176089 },	-- Unfired Plate Gauntlets
					}),
				},
			}),
			q(4729, {	-- Kibler's Exotic Pets
				qg = 10260,	-- Kibler
				coord = { 65.8, 22.0, MAP.BURNING_STEPPES },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Caged Worg Pup
						provider = { "i", 12263 },	-- Caged Worg Pup
						description = "Can be pulled outside of the room without engaging the boss.",
						cost = { { "i", 12262, 1 } },	-- Empty Worg Pup Cage
						cr = 10221,	-- Bloodaxe Worg Pup
					}),
					i(12264),	-- Worg Pup (PET!)
				},
			}),
			q(5067, {	-- Leggings of Arcana
				sourceQuest = 5047,	-- Pip Quickwit, At Your Service!
				qg = 10637,	-- Malyfous Darkhammer
				coord = { 61.0, 38.8, MAP.WINTERSPRING },
				maps = { MAP.SCHOLOMANCE, MAP.STRATHOLME },
				cost = {
					{ "i", 12731, 1 },	-- Pristine Hide of the Beast
					{ "i", 12735, 5 },	-- Frayed Abomination Stitching
					{ "i", 12360, 5 },	-- Arcanite Bar
					{ "i", 12736, 5 },	-- Frostwhisper's Embalming Fluid
					{ "g", 500000 },	-- 50 Gold
				},
				lvl = 57,
				repeatable = true,
				groups = {
					i(12756),	-- Leggings of Arcana
				},
			}),
			q(5167, {	-- Legplates of the Chromatic Defier
				sourceQuest = 5164,	-- Catalogue of the Wayward
				provider = { "o", 176192 },	-- Catalogue of the Wayward
				coord = { 39.4, 66.7, MAP.WESTERN_PLAGUELANDS },
				maps = { MAP.SCHOLOMANCE, MAP.STRATHOLME, MAP.EASTERN_PLAGUELANDS },
				cost = {
					{ "i", 12871, 1 },	-- Chromatic Carapace
					{ "i", 12607, 10 },	-- Brilliant Chromatic Scale
					{ "i", 12938, 10 },	-- Blood of Heroes
					{ "i", 12753, 5 },	-- Skin of Shadow
				},
				lvl = 57,
				groups = {
					i(12903),	-- Legguards of the Chromatic Defier
					i(12945),	-- Legplates of the Chromatic Defier
				},
			}),
			q(5126, {	-- Lorax's Tale
				description = "Have an Unforged Rune Covered Breastplate in your bags to make his dialog available.",
				providers = {
					{ "n", 10918 },	-- Lorax
					{ "i", 12806 },	-- Unforged Rune Covered Breastplate
				},
				coord = { 63.8, 73.8, MAP.WINTERSPRING },
				requireSkill = BLACKSMITHING,
				learnedAt = 275,
				lvl = 55,
			}),
			q(5081, {	-- Maxwell's Mission
				sourceQuest = 5002,	-- Message to Maxwell
				qg = 9560,	-- Marshal Maxwell
				coord = { 84.6, 68.8, MAP.BURNING_STEPPES },
				races = ALLIANCE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 War Master Voone slain
						provider = { "n", 9237 },	-- War Master Voone
					}),
					objective(2, {	-- 0/1 Highlord Omokk slain
						provider = { "n", 9196 },	-- Highlord Omokk
					}),
					objective(3, {	-- 0/1 Overlord Wyrmthalak slain
						provider = { "n", 9568 },	-- Overlord Wyrmthalak
					}),
					i(13961),	-- Halycon's Muzzle
					i(13958),	-- Wyrmthalak's Shackles
					i(13963),	-- Voone's Vice Grips
					i(13959),	-- Omokk's Girth Restrainer
					i(13962),	-- Vosh'gajin's Strand
				},
			}),
			q(4766, {	-- Mayara Brightwing
				altQuests = {
					4764,	-- Doomrigger's Clasp [NOT SURE, but this quest constantly resets to Not Complete on Blizzard's Side.]
				},
				qg = 2285,	-- Count Remington Ridgewell <House of Nobles>
				coord = { 74.0, 30.0, MAP.STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 57,
			}),
			q(5002, {	-- Message to Maxwell
				sourceQuest = 5001,	-- Bijou's Belongings (A)
				providers = {
					{ "n", 10257 },	-- Bijou
					{ "i", 12770 },	-- Bijou's Information
				},
				maps = { MAP.BURNING_STEPPES },
				races = ALLIANCE_ONLY,
				lvl = 55,
			}),
			q(4866, {	-- Mother's Milk
				description = "You need to setup a coordinated group ONLY for this. If the healer or ANYONE removes the poison, you have to reset and try again.\n\nBefore the group starts, set your hearth to Stormwind or have a mage for a quick port to Stormwind after the group has gotten their bites.",
				qg = 9563,	-- Ragged John
				coord = { 65.0, 23.6, MAP.BURNING_STEPPES },
				lvl = 55,
				groups = {
					objective(1, {	-- Milked
						provider = { "n", 10596 },	-- Mother Smolderweb
					}),
					i(15873),	-- Ragged John's Neverending Cup
				},
			}),
			q(6569, {	-- Oculus Illusions
				sourceQuest = 6568,	-- The Testament of Rexxar
				qg = 11872,	-- Myranda the Hag
				coord = { 50.8, 77.8, MAP.WESTERN_PLAGUELANDS },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/20 Black Dragonspawn Eye
						provider = { "i", 16786 },	-- Black Dragonspawn Eye
					}),
				},
			}),
			q(4981, {	-- Operative Bijou
				qg = 9080,	-- Lexlort <Kargath Expeditionary Force>
				coord = { 5.8, 47.6, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 55,
			}),
			q(5047, {	-- Pip Quickwit, At Your Service!
				description = "Kill The Beast in UBRS. Using Pip's Skinner and a 300 Skill Skinner, skin the boss and Pip Quickwit will appear. Everyone in the raid can pick up this quest at that time.",
				providers = {
					{ "n", 10776 },	-- Pip Quickwit
					{ "i", 12710 },	-- Glowing Hunk of the Beast's Flesh
				},
				maps = { MAP.WINTERSPRING },
				cr = 10430,	-- The Beast
				lvl = 57
			}),
			q(4701, {	-- Put Her Down
				qg = 9562,	-- Helendis Riverhorn
				coord = { 85.6, 69.0, MAP.BURNING_STEPPES },
				races = ALLIANCE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Halycon slain
						provider = { "n", 10220 },	-- Halycon
					}),
					i(15824),	-- Astoria Robes
					i(15827),	-- Jadescale Breastplate
					i(15825),	-- Traphook Jerkin
				},
			}),
			q(4742, {	-- Seal of Ascension (1/2)
				description = "Pickup this quest by going up to the hidden ledge in LBRS and speaking to the Infiltrator.",
				qg = 10299,	-- Scarshield Infiltrator <Scarshield Legion>
				cost = {
					{ "i", 12336, 1 },	-- Gemstone of Spirestone
					{ "i", 12335, 1 },	-- Gemstone of Smolderthorn
					{ "i", 12337, 1 },	-- Gemstone of Bloodaxe
					{ "i", 12219, 1 },	-- Unadorned Seal of Ascension
				},
				lvl = 57,
			}),
			q(4743, {	-- Seal of Ascension (2/2)
				description = "Ask your party to come with you to Dustwallow Marsh. You will not be able to solo this quest.\n\nOnly one person can complete this quest per Emberstrife cooldown. Your party will need to kill Emberstrife to reset the cooldown. (Respawn is about 5 minutes.)",
				sourceQuest = 4742,	-- Seal of Ascension (1/2)
				qg = 10299,	-- Scarshield Infiltrator <Scarshield Legion>
				maps = { MAP.DUSTWALLOW_MARSH },
				lvl = 57,
				groups = {
					objective(1, {	-- 0/1 Forged Seal of Ascension
						provider = { "i", 12324 },	-- Forged Seal of Ascension
						cost = {
							{ "i", 12323, 1 },	-- Unforged Seal of Ascension
							{ "i", 12300, 1 },	-- Orb of Draconic Energy
						},
						cr = 10321,	-- Emberstrife
					}),
					i(12339, {	-- Vaelan's Gift
						i(12323, {	-- Unforged Seal of Ascension
							description = "Use this once the dragon reaches 10-20% health.",
						}),
						i(12300, {	-- Orb of Draconic Energy
							description = "Use this once the dragon reaches 10% health. Instruct your party NOT to kill Emberstrife.",
						}),
					}),
					i(12344, {	-- Seal of Ascension
						description = "This item must be in your bags to open the door to UBRS.",
					}),
				},
			}),
			q(6567, {	-- The Champion of the Horde
				sourceQuest = 6566,	-- What the Wind Carries
				qg = 4949,	-- Thrall <Warchief>
				coord = { 32.0, 37.8, MAP.ORGRIMMAR },
				maps = { MAP.DESOLACE },
				races = HORDE_ONLY,
				lvl = 55,
			}),
			q(4768, {	-- The Darkstone Tablet
				sourceQuest = 4769,	-- Vivian Lagrave and the Darkstone Tablet
				qg = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
				coord = { 3.0, 47.6, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 57,
				groups = {
					objective(1, {	-- 0/1 Darkstone Tablet
						providers = { { "i", 12358 } },	-- Darkstone Tablet
					}),
					i(15860),	-- Blinkstrike Armguards
					i(15861),	-- Swiftfoot Treads
					o(175385, {	-- Darkstone Tablet
						description = "This is the white tablet leaning up against the wall in the Whelp Room.",
						groups = {
							i(12358),	-- Darkstone Tablet
						},
					}),
				},
			}),
			q(5127, {	-- The Demon Forge
				sourceQuest = 5126,	-- Lorax's Tale
				qg = 10918,	-- Lorax
				coord = { 63.8, 73.8, MAP.WINTERSPRING },
				requireSkill = ARMORSMITH,
				learnedAt = 275,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Soul Stained Pike
						provider = { "i", 12847 },	-- Soul Stained Pike
						cost = { { "i", 12848, 1 } },	-- Blood Stained Pike
						cr = 10899,	-- Goraluk Anvilcrack
					}),
					objective(2, {	-- 0/1 Unforged Rune Covered Breastplate
						provider = { "i", 12806 },	-- Unforged Rune Covered Breastplate
					}),
					i(12696),	-- Plans: Demon Forged Breastplate (RECIPE!)
					i(9224),	-- Potion of Demonslaying
					i(12849),	-- Demon Kissed Sack
				},
			}),
			q(4788, {	-- The Final Tablets
				sourceQuest = 5065,	-- The Lost Tablets of Mosh'aru
				qg = 10460,	-- Prospector Ironboot
				coord = { 66.8, 24.0, MAP.TANARIS },
				lvl = 40,
				groups = {
					objective(1, {	-- 0/1 Fifth Mosh'aru Tablet
						providers = {
							{ "i",  12740 },	-- Fifth Mosh'aru Tablet
							{ "o", 175949 },	-- Fifth Mosh'aru Tablet
						},
					}),
					objective(2, {	-- 0/1 Sixth Mosh'aru Tablet
						providers = {
							{ "i",  12741 },	-- Sixth Mosh'aru Tablet
							{ "o", 175950 },	-- Sixth Mosh'aru Tablet
						},
					}),
				},
			}),
			q(8182, {	-- The Hand of Rastakhan
				sourceQuest = 8181,	-- Confront Yeh'kinya
				qg = 10460,	-- Prospector Ironboot
				coord = { 66.8, 24.0, MAP.TANARIS },
				lvl = 40,
			}),
			q(5065, {	-- The Lost Tablets of Mosh'aru
				sourceQuest = 3528,	-- The God Hakkar
				qg = 10460,	-- Prospector Ironboot
				coord = { 66.8, 24.0, MAP.TANARIS },
				maps = { MAP.EASTERN_PLAGUELANDS },
				lvl = 40,
				groups = {
					objective(1, {	-- 0/1 Third Mosh'aru Tablet
						providers = {
							{ "i",  12411 },	-- Third Mosh'aru Tablet
							{ "o", 175487 },	-- Third Mosh'aru Tablet
						},
						coord = { 72.4, 13.0, MAP.EASTERN_PLAGUELANDS },
					}),
					objective(2, {	-- 0/1 Fourth Mosh'aru Tablet
						providers = {
							{ "i",  12412 },	-- Fourth Mosh'aru Tablet
							{ "o", 175488 },	-- Fourth Mosh'aru Tablet
						},
						coord = { 72.7, 15.7, MAP.EASTERN_PLAGUELANDS },
					}),
				},
			}),
			q(5160, {	-- The Matron Protectorate
				description = "Speak with Awbee in UBRS to accept this quest. Most tanks skip the two mobs near Awbee, so you should mention it to them.",
				providers = {
					{ "n", 10740 },	-- Awbee
					{ "i", 12923 },	-- Awbee's Scale
				},
				maps = { MAP.WINTERSPRING },
				lvl = 57,
			}),
			q(4724, {	-- The Pack Mistress
				qg = 9081,	-- Galamav the Marksman <Kargath Expeditionary Force>
				coord = { 5.8, 47.6, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Halycon slain
						provider = { "n", 10220 },	-- Halycon
					}),
					i(15824),	-- Astoria Robes
					i(15827),	-- Jadescale Breastplate
					i(15825),	-- Traphook Jerkin
				},
			}),
			q(6585, {	-- The Test of Skulls, Axtroz
				sourceQuests = {
					6584,	-- The Test of Skulls, Chronalis
					6582,	-- The Test of Skulls, Scryer
					6583,	-- The Test of Skulls, Somnus
				},
				qg = 10321,	-- Emberstrife
				coord = { 56.8, 87.4, MAP.DUSTWALLOW_MARSH },
				maps = { MAP.WETLANDS },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 The Skull of Axtroz
						provider = { "i", 16872 },	-- The Skull of Axtroz
						coord = { 83.4, 49.6, MAP.WETLANDS },
						cr = 12899,	-- Axtroz
					}),
				},
			}),
			q(6584, {	-- The Test of Skulls, Chronalis
				sourceQuest = 6570,	-- Emberstrife
				qg = 10321,	-- Emberstrife
				coord = { 56.8, 87.4, MAP.DUSTWALLOW_MARSH },
				maps = { MAP.TANARIS },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 The Skull of Chronalis
						provider = { "i", 16871 },	-- The Skull of Chronalis
						coord = { 64.4, 50.6, MAP.TANARIS },
						qg = 8197,	-- Chronalis
					}),
				},
			}),
			q(6582, {	-- The Test of Skulls, Scryer
				sourceQuest = 6570,	-- Emberstrife
				qg = 10321,	-- Emberstrife
				coord = { 56.8, 87.4, MAP.DUSTWALLOW_MARSH },
				maps = { MAP.WINTERSPRING },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 The Skull of Scryer
						provider = { "i", 16869 },	-- The Skull of Scryer
						coord = { 53.6, 55.8, MAP.WINTERSPRING },
						qg = 10664,	-- Scryer
					}),
				},
			}),
			q(6583, {	-- The Test of Skulls, Somnus
				sourceQuest = 6570,	-- Emberstrife
				qg = 10321,	-- Emberstrife
				coord = { 56.8, 87.4, MAP.DUSTWALLOW_MARSH },
				maps = { MAP.SWAMP_OF_SORROWS },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 The Skull of Somnus
						provider = { "i", 16870 },	-- The Skull of Somnus
						coord = { 80.2, 57.2, MAP.SWAMP_OF_SORROWS },
						qg = 12900,	-- Somnus
					}),
				},
			}),
			q(6568, {	-- The Testament of Rexxar
				sourceQuest = 6567,	-- The Champion of the Horde
				providers = {
					{ "n", 10182 },	-- Rexxar <Champion of the Horde>
					{ "i", 16785 },	-- Rexxar's Testament/Rokaro's Letter
				},
				coords = {
					{ 54.0, 3.2, MAP.DESOLACE },
					{ 62.8, 22.6, MAP.DESOLACE },
					{ 59.8, 37.6, MAP.DESOLACE },
					{ 52.0, 39.4, MAP.DESOLACE },
					{ 49.6, 56.4, MAP.DESOLACE },
					{ 55.6, 66.6, MAP.DESOLACE },
					{ 50.6, 75.2, MAP.DESOLACE },
					{ 40.8, 78.6, MAP.DESOLACE },
					{ 42.4, 96.8, MAP.DESOLACE },
				},
				maps = { MAP.WESTERN_PLAGUELANDS },
				races = HORDE_ONLY,
				lvl = 55,
			}),
			q(4809, {	-- Chillwind Horns
				sourceQuest = 4808,	-- Felnok Steelspring
				qg = 10468,	-- Felnok Steelspring
				coord = { 61.6, 38.6, MAP.WINTERSPRING },
				lvl = 50,
				groups = {
					objective(1, {	-- 0/8 Uncracked Chillwind Horn
						provider = { "i", 12444 },	-- Uncracked Chillwind Horn
						crs = {
							7447,	-- Fledgling Chillwind
							7448,	-- Chillwind Chimaera
							7449,	-- Chillwind Ravager
						},
					}),
				},
			}),
			q(4907, {	-- Tinkee Steamboil
				sourceQuest = 4810,	-- Return to Tinkee
				qg = 10468,	-- Felnok Steelspring
				coord = { 61.6, 38.6, MAP.WINTERSPRING },
				lvl = 57,
				isBreadcrumb = true,
			}),
			q(4867, {	-- Urok Doomhowl
				providers = {
					{ "n", 10799 },	-- Warosh <The Cursed>
					{ "i", 12730 },	-- Warosh's Scroll
				},
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Warosh's Mojo
						provider = { "i", 12712 },	-- Warosh's Mojo
					}),
					i(15867),	-- Prismcharm
				},
			}),
			q(4769, {	-- Vivian Lagrave and the Darkstone Tablet
				qg = 5204,	-- Apothecary Zinge <Royal Apothecary Society>
				coord = { 49.8, 68.2, MAP.UNDERCITY },
				races = HORDE_ONLY,
				lvl = 57,
				isBreadcrumb = true,
			}),
			q(4903, {	-- Warlord's Command
				description = "Talk to Warlord Goretooth and read through his full dialog for the item that starts the quest to be given to you.",
				providers = {
					{ "n", 9077 },	-- Warlord Goretooth <Kargath Expeditionary Force>
					{ "i", 12563 },	-- Warlord Goretooth's Command
				},
				coord = { 5.8, 47.6, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Overlord Wyrmthalak slain
						provider = { "n", 9568 },	-- Overlord Wyrmthalak
					}),
					objective(2, {	-- 0/1 Highlord Omokk slain
						provider = { "n", 9196 },	-- Highlord Omokk
					}),
					objective(3, {	-- 0/1 War Master Voone slain
						provider = { "n", 9237 },	-- War Master Voone
					}),
					objective(4, {	-- 0/1 Important Blackrock Documents
						providers = {
							{ "i",  12562 },	-- Important Blackrock Documents
							{ "o", 175785 },	-- Inconspicuous Documents
						},
						description = "On the ground next to Overlord Wyrmthalak.",
					}),
					i(13961),	-- Halycon's Muzzle
					i(13958),	-- Wyrmthalak's Shackles
					i(13963),	-- Voone's Vice Grips
					i(13959),	-- Omokk's Girth Restrainer
					i(13962),	-- Vosh'gajin's Strand
				},
			}),
			q(6566, {	-- What the Wind Carries
				sourceQuest = 4974,	-- For The Horde!
				qg = 4949,	-- Thrall <Warchief>
				coord = { 32.0, 37.8, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 55,
			}),
			q(5161, {	-- Wrath of the Blue Flight (1/2)
				sourceQuest = 5160,	-- The Matron Protectorate
				qg = 10929,	-- Haleh
				coord = { 54.4, 51.2, MAP.WINTERSPRING },
				lvl = 57,
			}),
			q(5162, {	-- Wrath of the Blue Flight (2/2)
				sourceQuest = 5161,	-- Wrath of the Blue Flight (1/2)
				qg = 10929,	-- Haleh
				coord = { 54.4, 51.2, MAP.WINTERSPRING },
				maps = { MAP.WESTERN_PLAGUELANDS },
				lvl = 57,
			}),
		}),
		n(ZONE_DROPS, {
			i(22138),	-- Blackrock Bracer
			i(16786),	-- Black Dragonspawn Eye
			i(16681, {	-- Beaststalker's Bindings
				cr = 9096,	-- Rage Talon Dragonspawn
			}),
			i(16680),	-- Beaststalker's Belt
			i(16736, {	-- Belt of Valor
				cr = 9268,	-- Smolderthorn Berserker
			}),
			i(16735),	-- Bracers of Valor
			i(16673),	-- Cord of Elements
			i(16696),	-- Devout Belt
			i(16703),	-- Dreadmist Bracers
			i(16685, {	-- Magister's Belt
				cr = 9239,	-- Smolderthorn Mystic
			}),
			i(16683),	-- Magister's Bindings
			i(16713),	-- Shadowcraft Belt
			i(16716, {	-- Wildheart Belt
				crs = {
					9692,	-- Bloodaxe Raider
					9258,	-- Scarshield Raider
				},
			}),
			i(16717, {	-- Wildheart Gloves
				crs = {
					9692,	-- Bloodaxe Raider
					9262,	-- Firebrand Invoker
				},
			}),
		}),
		n(LOWER_BLACKROCK_SPIRE, {
			n(ZONE_DROPS, {
				i(16244, {	-- Formula: Enchant Gloves - Greater Strength
					cr = 9198,	-- Spirestone Mystic
				}),
				i(16250, {	-- Formula: Enchant Weapon - Superior Striking (RECIPE!)
					cr = 9216,	-- Spirestone Warlord
				}),
				i(14513, {	-- Pattern: Robe of the Archmage (RECIPE!)
					cr = 9264,	-- Firebrand Pyromancer
				}),
				i(15749, {	-- Pattern: Volcanic Breastplate (RECIPE!)
					cr = 9259,	-- Firebrand Grunt
				}),
				i(15775, {	-- Pattern: Volcanic Shoulders (RECIPE!)
					cr = 9260,	-- Firebrand Legionnaire
				}),
				i(13494, {	-- Recipe: Greater Fire Protection Potion (RECIPE!)
					crs = {
						9262,	-- Firebrand Invoker
						9264,	-- Firebrand Pyromancer
					},
				}),
				i(21982, {	-- Ogre Warbeads
					crs = {
						9196,	-- Highlord Omokk
						10584,	-- Urok Doomhowl
						9218,	-- Spirestone Battle Lord
						9197,	-- Spirestone Battle Mage
						9199,	-- Spirestone Enforcer
						9217,	-- Spirestone Lord Magus
						9198,	-- Spirestone Mystic
						9201,	-- Spirestone Ogre Magus
						9200,	-- Spirestone Reaver
						9216,	-- Spirestone Warlord
					},
				}),
				i(12219),	-- Unadorned Seal of Ascension
			}),
			n(9257, {	-- Scarshield Warlock
				description = "DO NOT KILL this mob if you are trying to get the Burning Felguard to spawn.",
				groups = {
					i(9214, {	-- Grimoire of Inferno
						classes = { WARLOCK },
						spellID = 1122,	-- Inferno
					}),
					n(10263, {	-- Burning Felguard
						description = "This mob is infinitely farmable if you don't kill all of the Scarshield Warlocks.",
						groups = {
							i(13181),	-- Demonskin Gloves
							i(13182),	-- Phase Blade
						},
					}),
				},
			}),
			i(12533, {	-- Roughshod Pike
				description = "This item can be found along the back wall as you cross the 2nd bridge to the sleeping orc encampment just after Warosh.",
				provider = { "o", 175886 },	-- Roughshod Pike
			}),
			n(9218, {	-- Spirestone Battle Lord (Rare)
				description = "This is a Rare Creature and, as such, is not always present.",
				groups = {
					i(13285),	-- The Blackrock Slicers
					i(13284),	-- Swiftdart Battleboots
				},
			}),
			n(9219, {	-- Spirestone Butcher (Rare)
				description = "This is a Rare Creature and, as such, is not always present.",
				groups = {
					i(13286),	-- Rivenspike
					i(12608),	-- Butcher's Apron
				},
			}),
			n(9217, {	-- Spirestone Lord Magus (Rare)
				description = "This is a Rare Creature and, as such, is not always present.",
				groups = {
					i(13261),	-- Globe of D'sak
					i(13282),	-- Ogreseer Tower Boots
					i(13283),	-- Magus Ring
				},
			}),
			e(388, {	-- Highlord Omokk
				creatureID = 9196,	-- Highlord Omokk
				groups = {
					i(12534),	-- Omokk's Head
					i(12336),	-- Gemstone of Spirestone
					i(13167),	-- Fist of Omokk
					i(13166),	-- Slamshot Shoulders
					i(13168),	-- Plate of the Shaman King
					i(13170),	-- Skyshroud Leggings
					i(13169),	-- Tressermane Leggings
					i(16670),	-- Boots of Elements
				},
			}),
			e(389, {	-- Shadow Hunter Vosh'gajin
				creatureID = 9236,	-- Shadow Hunter Vosh'gajin
				groups = {
					i(12740, {	-- Fifth Mosh'aru Tablet
						description = "Located directly behind the boss.",
						provider = { "o", 175949 },	-- Fifth Mosh'aru Tablet
					}),
					i(13352),	-- Vosh'gajin's Snakestone
					i(12651),	-- Blackcrow
					i(12653),	-- Riphook
					i(13257),	-- Demonic Runed Spaulders
					i(12626),	-- Funeral Cuffs
					i(13255),	-- Trueaim Gauntlets
					i(16712),	-- Shadowcraft Gloves
					i(12654),	-- Doomshot
				},
			}),
			e(390, {	-- War Master Voone
				creatureID = 9237,	-- War Master Voone
				groups = {
					i(12741, {	-- Sixth Mosh'aru Tablet
						description = "Located directly behind the boss.",
						provider = { "o", 175950 },	-- Sixth Mosh'aru Tablet
					}),
					i(12335),	-- Gemstone of Smolderthorn
					i(12582),	-- Keris of Zul'Serak
					i(13175),	-- Voone's Twitchbow
					i(13177),	-- Talisman of Evasion
					i(13179),	-- Brazecore Armguards
					i(16676),	-- Beaststalker's Gloves
					i(22231),	-- Kayser's Boots of Precision
					i(13173),	-- Flightblade Throwing Axe
				},
			}),
			n(16080, {	-- Mor Grayhoof
				description = "This boss can be summoned using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits.\nSummon Location: The Beast's room. (Requires parkour inside LBRS to the ledge above the entrance portal to access the old UBRS areas)",
				provider = { "i", 22057 },	-- Brazier of Invocation
				cost = {{ "i", 22049, 1 }},	-- Brazier of Beckoning [Mor Grayhoof]
				groups = {
					objective(1, {	-- 0/1 Left Piece of Lord Valthalak's Amulet
						questID = 8966,	-- The Left Piece of Lord Valthalak's Amulet [WARRIOR, MAGE]
						provider = { "i", 21984 },	-- Left Piece of Lord Valthalak's Amulet
					}),
					objective(2, {	-- 0/1 Right Piece of Lord Valthalak's Amulet
						questID = 8989,	-- The Right Piece of Lord Valthalak's Amulet [DRUID, PALADIN, SHAMAN]
						provider = { "i", 22046 },	-- Right Piece of Lord Valthalak's Amulet
					}),
					i(22322),	-- The Jaw Breaker
					i(22319),	-- Tome of Divine Right
					i(22325),	-- Belt of the Trickster
					i(22306),	-- Ironweave Belt
					i(22398),	-- Idol of Rejuvenation
				},
			}),
			n(9596, {	-- Bannok Grimaxe (Rare)
				description = "This is a Rare Creature and, as such, is not always present.",
				groups = {
					i(12838),	-- Plans: Arcanite Reaper (RECIPE!)
					i(12621),	-- Demonfork
					i(12637),	-- Backusarian Gauntlets
					i(12634),	-- Chiselbrand Girdle
				},
			}),
			n(10376, {	-- Crystal Fang (Rare)
				description = "This is a Rare Creature and, as such, is not always present.",
				groups = {
					i(13218),	-- Fang of the Crystal Spider
					i(13185),	-- Sunderseer Mantle
					i(13184),	-- Fallbrush Handgrips
				},
			}),
			e(391, {	-- Mother Smolderweb
				creatureID = 10596,	-- Mother Smolderweb
				groups = {
					i(13183),	-- Venomspitter
					i(13244),	-- Gilded Gauntlets
					i(16715),	-- Wildheart Boots
					i(13213),	-- Smolderweb's Eye
				},
			}),
			e(392, {	-- Urok Doomhowl
				creatureID = 10584,	-- Urok Doomhowl
				provider = { "o", 175621 },	-- Urok's Tribute Pile
				description = "Summonable Boss. Loot a Roughshod Pike, found on the left wall after crossing the second bridge before heading to Highlord Omokk. Kill Highlord Omokk and loot his head. After killing Mother Smolderweb, head up and use the pike at the pile of skulls located at the corner of the square platform. This will summon waves of enemies and finally the boss.",
				cost = {
					{ "i", 12533, 1 },	-- Roughshod Pike
					{ "i", 12534, 1 },	-- Omokk's Head
				},
				groups = {
					i(12712),	-- Warosh's Mojo
					i(18784),	-- Top Half of Advanced Armorsmithing: Volume III
					i(13258),	-- Slaghide Gauntlets
					i(22232),	-- Marksman's Girdle
					i(13259),	-- Ribsteel Footguards
					i(13178),	-- Rosewine Circle
				},
			}),
			e(393, {	-- Quartermaster Zigris
				creatureID = 9736,	-- Quartermaster Zigris
				groups = {
					i(12835),	-- Plans: Annihilator (RECIPE!)
					i(13253),	-- Hands of Power
					i(13252),	-- Cloudrunner Girdle
					i(13247, {	-- Quartermaster Zigris' Footlocker
						description = "Contains a random green item.",
					}),
				},
			}),
			e(394, {	-- Halycon
				creatureID = 10220,	-- Halycon
				groups = {
					i(13212),	-- Halcyon's Spiked Collar
					i(22313),	-- Ironweave Bracers
					i(13211),	-- Slashclaw Bracers
					i(13210),	-- Pads of the Dread Wolf
				},
			}),
			e(395, {	-- Gizrul the Slavener
				creatureID = 10268,	-- Gizrul the Slavener
				description = "Summoned immediately after Halycon is defeated.",
				groups = {
					i(13205),	-- Rhombeard Protector
					i(16718),	-- Wildheart Spaulders
					i(13208),	-- Bleak Howler Armguards
					i(13206),	-- Wolfshear Leggings
				},
			}),
			n(9718, {	-- Ghok Bashguud <Bloodaxe Champion> (Rare)
				description = "This is a Rare Creature and, as such, is not always present.",
				groups = {
					i(13204),	-- Bashguuder
					i(13198),	-- Hurd Smasher
					i(13203),	-- Armswake Cloak
				},
			}),
			e(396, {	-- Overlord Wyrmthalak
				creatureID = 9568,	-- Overlord Wyrmthalak
				groups = {
					i(12780),	-- General Drakkisath's Command
					i(12337),	-- Gemstone of Bloodaxe
					i(13148),	-- Chillpike
					i(13163),	-- Relentless Scythe
					i(13161),	-- Trindlehaven Staff
					i(13162),	-- Reiver Claws
					i(16679),	-- Beaststalker's Mantle
					i(13143),	-- Mark of the Dragon Lord
					i(13164),	-- Heart of the Scale
					i(22321),	-- Heart of Wyrmthalak
				},
			}),
		}),
		n(UPPER_BLACKROCK_SPIRE, {
			cost = {{ "i", 12344, 1}},	-- Seal of Ascension
			groups = {
				n(ZONE_DROPS, {
					i(12607, {	-- Brilliant Chromatic Scale //Danny Donkey: This is an ordinary drop from these mobs, not from Skinning.
						crs = {
							10447,	-- Chromatic Dragonspawn
							10814,	-- Chromatic Elite Guard
							10442,	-- Chromatic Whelp
						},
					}),
					i(16247, {	-- Formula: Enchant 2H Weapon - Superior Impact (RECIPE!)
						cr = 10317,	-- Blackhand Elite <Blackhand Legion>
					}),
					i(24102, {	-- Manual of Eviscerate IX
						spellID = 31016,	-- Eviscerate IX
						classes = { ROGUE },
						rank = 9,
						cr = 10318,	-- Blackhand Assassin <Blackhand Legion>
					}),
					i(13260),	-- Wind Dancer Boots
				}),
				n(9816, {	-- Pyroguard Emberseer
					i(21988),	-- Ember of Emberseer
					i(17322),	-- Eye of the Emberseer
					i(12929),	-- Emberfury Talisman
					i(12905),	-- Wildfire Cape
					i(12927),	-- Truestrike Shoulders
					i(16672),	-- Gauntlets of Elements
					i(12926),	-- Flaming Band
					i(23320, {	-- Tablet of Flame Shock VI
						spellID = 29228,	-- Flame Shock VI
						classes = { SHAMAN },
						rank = 6,
					}),
				}),
				i(13371, {	-- Father Flame
					description = "Opening this will spawn 8 waves of drake adds in the Leeroy Jenkins room along with Solakar Flamewreath.",
					provider = { "o", 175245 },	-- Father Flame
				}),
				n(10264, {	-- Solakar Flamewreath
					description = "This is spawned by clicking on the Father Flame and killing 8 waves of drake adds in the Leeroy Jenkins room.",
					groups = {
						i(18657),	-- Schematic: Hyper-Radiant Flame Reflector (RECIPE!)
						i(16695),	-- Devout Mantle
						i(12603),	-- Nightbrace Tunic
						i(12609),	-- Polychromatic Visionwrap
						i(12606),	-- Crystallized Girdle
						i(12589),	-- Dustfeather Sash
					},
				}),
				n(10509, {	-- Jed Runewatcher
					description = "This is a Rare Creature and, as such, is not always present.",
					groups = {
						i(12605),	-- Serpentine Skuller
						i(12604),	-- Starfire Tiara
						i(12930),	-- Briarwood Reed
					},
				}),
				n(10899, {	-- Goraluk Anvilcrack
					i(18779),	-- Bottom Half of Advanced Armorsmithing: Volume I
					i(12848, {	-- Unforged Rune Covered Breastplate
						description = "Found on the rack behind Anvilcrack in Upper Blackrock Spire.",
						provider = { "o", 175970 },	-- Unforged Runic Breastplate
					}),
					i(12834),	-- Plans: Arcanite Champion (RECIPE!)
					i(12728),	-- Plans: Invulnerable Mail (RECIPE!)
					i(12837),	-- Plans: Masterwork Stormhammer (RECIPE!)
					i(18048),	-- Mastersmith's Hammer
					i(13502),	-- Handcrafted Mastersmith Girdle
					i(13498),	-- Handcrafted Mastersmith Leggings
					i(18047),	-- Flame Walkers
				}),
				n(10339, {	-- Gyth <Rend Blackhand's Mount>
					i(13522),	-- Recipe: Flask of Chromatic Resistance (RECIPE!)
					i(12871),	-- Chromatic Carapace
					i(12953),	-- Dragoneye Coif
					i(22225),	-- Dragonskin Cowl
					i(12952),	-- Gyth's Skull
					i(12960),	-- Tribal War Feathers
					i(16669),	-- Pauldrons of Elements
				}),
				n(10429, {	-- Warchief Rend Blackhand
					i(12630),	-- Head of Rend Blackhand
					i(12583),	-- Blackhand Doomsaw
					i(12940),	-- Dal'Rend's Sacred Charge
					i(12939),	-- Dal'Rend's Tribal Guardian
					i(12590),	-- Felstriker
					i(12587),	-- Eye of Rend
					i(12588),	-- Bonespike Shoulder
					i(16733),	-- Spaulders of Valor
					i(12936),	-- Battleborn Armbraces
					i(18104),	-- Feralsurge Girdle
					i(12935),	-- Warmaster Legguards
					i(18102),	-- Dragonrider Boots
					i(22247),	-- Faith Healer's Boots
					i(18103),	-- Band of Rumination
				}),
				n(10430, {	-- The Beast
					i(12731, {	-- Pristine Hide of the Beast
						description = "This can only be accomplished with the Zulian Slicer or Pip's Skinner.",
						requireSkill = SKINNING,
						learnedAt = 315,
						cost = {
							{ "i", 12709, 1 },	-- Pip's Skinner
							{ "i", 19901, 1 },	-- Zulian Slicer
						},
					}),
					i(24101, {	-- Book of Ferocious Bite V
						spellID = 31018,	-- Ferocious Bite V
						classes = { DRUID },
						rank = 5,
					}),
					i(12709),	-- Pip's Skinner
					i(12969),	-- Seeping Willow
					i(12967),	-- Bloodmoon Cloak
					i(12968),	-- Frostweaver Cape
					i(16729),	-- Lightforge Spaulders
					i(12966),	-- Blackmist Armguards
					i(12963),	-- Blademaster Leggings
					i(12965),	-- Spiritshroud Leggings
					i(12964),	-- Tristam Legguards
					i(22311),	-- Ironweave Boots
					i(19227),	-- Ace of Beasts
				}),
				n(16042, {	-- Lord Valthalak
					description = "This boss can be summoned using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits.\nSummon Location: War Master Voone's room.",
					provider = { "i", 22057 },	-- Brazier of Invocation
					cost = {{ "i", 22056, 1 }},	-- Brazier of Beckoning [Lord Valthalak]
					groups = {
						i(22336),	-- Draconian Aegis of the Legion
						i(22335),	-- Lord Valthalak's Staff of Command
						i(22302),	-- Ironweave Cowl
						i(22340),	-- Pendant of Celerity
						i(22337),	-- Shroud of Domination
						i(22343),	-- Handguards of Savagery
						i(22342),	-- Leggings of Torment
						i(22339),	-- Rune Band of Wizardry
					},
				}),
				n(10363, {	-- General Drakkisath
					i(16663),	-- Blood of the Black Dragon Champion
					i(15730),	-- Pattern: Red Dragonscale Breastplate (RECIPE!)
					i(13519),	-- Recipe: Flask of the Titans (RECIPE!)
					i(12592),	-- Blackblade of Shahram
					i(12602),	-- Draconian Deflector
					i(22253),	-- Tome of the Lost
					i(22267),	-- Spellweaver's Turban
					i(13141),	-- Tooth of Gnarr
					i(16674),	-- Beaststalker's Tunic
					i(16730),	-- Breastplate of Valor
					i(16690),	-- Devout Robe
					i(16700),	-- Dreadmist Robe
					i(16726),	-- Lightforge Breastplate
					i(16688),	-- Magister's Robes
					i(16721),	-- Shadowcraft Tunic
					i(16666),	-- Vest of Elements
					i(16706),	-- Wildheart Vest
					i(22269),	-- Shadow Prowler's Cloak
					i(13142),	-- Brigam Girdle
					i(13098),	-- Painweaver Band
					i(22268),	-- Draconic Infused Emblem
				}),
			},
		}),
	},
});