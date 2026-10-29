-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
instanceroot(2959, {	-- City of Dalaran
	lore = "The City of Dalaran features us clearing out the threats that have overrun the beloved city of mages after the Magic barrier surrounding the city was cleared. Dalaran was one of the original cities in Azeroth and was ruled by the Kirin Tor, a council of wizards who housed some of the most impressive libraries and research facilities in all of Azeroth within the Dalaran walls. ",
	icon = [[~_.asset("cityofdalaran")]],
	zoneTextAreaID = 16544,	-- City of Dalaran
	--coord = { , MAP.ALTERAC_MOUNTAINS },
	timeline = { TIMELINE.ADDED_1_60_1 },
	--lvl = 23,
	groups = {
		n(QUESTS, {
			--[[
			q(, {	-- 
				qg = ,	-- 
				coord = {  },
				races = HORDE_ONLY,
				lvl = 24,
				groups = {
					i(),	-- 
					i(),	-- 
					i(),	-- 
				},
			}),
			]]-- 
			q(92456, {	-- A Green Sample
				qg = 5502,	-- Shylamiir
				coord = { 31.4, 63.0, MAP.STORMWIND_CITY },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 24,
				groups = {
					objective(1, {	-- 0/1 Fel Infused Blossom
						provider = { "i", 251983 },	-- Fel Infused Blossom
					}),
					i(279835),	-- Vine Pruner's Cloak
					i(279836),	-- Thorn Protecting Girdle
				},
			}),
			q(92432, {	-- An Alarming Request
				qg = 247264,	-- Emissary Jacques
				coord = { 48.3, 60.1, MAP.HILLSBRAD_FOOTHILLS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.SILVERPINE_FOREST },
				races = ALLIANCE_ONLY,
				lvl = 30,
			}),
			q(92434, {	-- Blood in the Streets
				sourceQuests = {
					545,	-- Dalaran Patrols
					93680,	-- Key to the City
				},
				qg = 2410,	-- Magus Wordeen Voidglare
				qi = 279469,	-- Grimy Key
				coord = { 61.60, 20.85, MAP.HILLSBRAD_FOOTHILLS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.ALTERAC_MOUNTAINS, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 30,
			}),
			q(92459, {	-- Friend of the Kirin Tor
				sourceQuest = 92458,	-- Heart of Disruption [Alliance]
				qg = 269127,	-- Image of Archmage Modera
				qi = 251961,	-- Arcane Mote
				coord = { 68.6, 45.2, MAP.SILVERPINE_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 24,
			}),
			q(93689, {	-- Friend of the Kirin Tor
				-- TODO: Wowhead doesn't list the quest giver yet. Speak with Archmage Celindra in the City of Dalaran.
				timeline = { TIMELINE.CREATED_1_60_1 },
				lvl = 24,
			}),
			q(92458, {	-- Heart of Disruption [Alliance]
				sourceQuest = 92432,	-- An Alarming Request
				qg = 269127,	-- Image of Archmage Modera
				qi = 277507,	-- Dalaran Sewer Key
				coord = { 68.6, 45.2, MAP.SILVERPINE_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 24,
				groups = {
					objective(1, {	-- 0/1 Arcane Mote
						provider = { "i", 251961 },	-- Arcane Mote
						cr = 246020,	-- Shade of the Archmage
					}),
					i(279839),	-- Spellguard Pauldrons
					i(279840),	-- Renewing Footpads
					i(279841),	-- Defender of Dalaran
				},
			}),
			q(96984, {	-- Heart of Disruption [Horde]
				sourceQuest = 92434,	-- Blood in the Streets
				qg = 269127,	-- Image of Archmage Modera
				qi = 277507,	-- Dalaran Sewer Key
				coord = { 68.6, 45.2, MAP.SILVERPINE_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 24,
				groups = {
					objective(1, {	-- 0/1 Arcane Mote
						provider = { "i", 251961 },	-- Arcane Mote
						cr = 246020,	-- Shade of the Archmage
					}),
					i(279842),	-- Battle Spaulders
					i(279843),	-- Enchanted Sandals
					i(279844),	-- Striking Staff
				},
			}),
			q(93680, {	-- Key to the City
				qg = 2410,	-- Magus Wordeen Voidglare
				coord = { 61.60, 20.85, MAP.HILLSBRAD_FOOTHILLS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				maps = { MAP.ALTERAC_MOUNTAINS },
				races = HORDE_ONLY,
				lvl = 30,
				groups = {
					objective(1, {	-- 0/1 Grimy Key
						provider = { "i", 279469 },	-- Grimy Key
					}),
				},
			}),
			q(96987, {	-- Opportunistic Education
				qg = 268743,	-- Rexxie Copperclutch
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 24,
				groups = {
					objective(1, {	-- 0/1 The Founding of Dalaran
						provider = { "i", 275996 },	-- The Founding of Dalaran
					}),
					i(279845),	-- Solid Gold Band
					i(279846),	-- Larcenist's Belt
				},
			}),
			q(92489, {	-- Power Overwhelming
				qg = 5694,	-- High Sorcerer Andromath
				coord = { 48.7, 87.6, MAP.STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 24,
				groups = {
					objective(1, {	-- 0/1 Mana Elemental slain
						provider = { "n", 246016 },	-- Mana Elemental
					}),
					i(251962),	-- Violet Sash
					i(279849),	-- Runebound Gloves
				},
			}),
			q(97287, {	-- Shrewd Negotiations
				sourceQuest = 96984,	-- Heart of Disruption [Horde]
				qg = 2410,	-- Magus Wordeen Voidglare
				qi = 251961,	-- Arcane Mote
				coord = { 61.60, 20.85, MAP.HILLSBRAD_FOOTHILLS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 24,
			}),
			q(96988, {	-- Source of Power
				qg = 11044,	-- Doctor Martin Felben
				coord = { 46.6, 74.4, MAP.UNDERCITY },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 24,
				groups = {
					objective(1, {	-- 0/6 Cracked Sentry Core
						provider = { "i", 275997 },	-- Cracked Sentry Core
						cr = 246664,	-- Fragmented Sentry
					}),
					i(279847),	-- Unstable Power Core
					i(279848),	-- Construct Cloak
				},
			}),
			q(92457, {	-- Starving Arcane
				sourceQuest = 92432,	-- An Alarming Request
				qg = 269127,	-- Image of Archmage Modera
				coord = { 68.6, 45.2, MAP.SILVERPINE_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 24,
				groups = {
					objective(1, {	-- 0/8 Seeking Remnant slain
						provider = { "n", 247003 },	-- Seeking Remnant
					}),
					objective(2, {	-- 0/8 Saturated Remnant slain
						provider = { "n", 247001 },	-- Saturated Remnant
					}),
					objective(3, {	-- 0/8 Mana Echo slain
						provider = { "n", 246600 },	-- Mana Echo
					}),
					i(279837),	-- Fallen Guard's Pendant
					i(279838),	-- Arcane Infused Rod
				},
			}),
			q(96986, {	-- The Grave Knight
				qg = 2278,	-- Melisara
				coord = { 62.6, 20.6, MAP.HILLSBRAD_FOOTHILLS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 24,
				groups = {
					objective(1, {	-- 0/1 Atrexis the Grave Knight slain
						provider = { "n", 247126 },	-- Atrexis the Grave Knight
					}),
					i(251963),	-- Gravewalker Boots
					i(251965),	-- Undead Knight's Bracers
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(286992, {	-- Construct's Grips
				cr = 246664,	-- Fragmented Sentry
			}),
			i(286991, {	-- Roused Nature Footwraps
				cr = 247003,	-- Seeking Remnant
			}),
			i(286994, {	-- Tattered Kirin Tor Cloak
				cr = 247003,	-- Seeking Remnant
			}),
			i(286988, {	-- Violet Sorcerer's Leggings
				crs = {
					255066,	-- Fallen Mage
					255072,	-- Dark Caster
				},
			}),
			i(286987, {	-- Violet Sorcerer's Sandals
				crs = {
					255072,	-- Dark Caster
					269134,	-- Kirin Tor Necromancer
				},
			}),
			i(286989, {	-- Violet Sorcerer's Wraps
				crs = {
					255066,	-- Fallen Mage
					269134,	-- Kirin Tor Necromancer
				},
			}),
		}),
		e(3311, {	-- Atrexis the Grave Knight
			creatureID = 247126,	-- Atrexis the Grave Knight
			groups = {
				i(273033),	-- Gravespike Repeater
				i(273036),	-- Graveweave Bindings
				i(273032),	-- Bonebinder's Signet
			},
		}),
		e(3310, {	-- Lyn the Ignored TODO: Source the steps to unlock the attunement https://www.wowhead.com/forever/es/news/how-to-find-the-secret-boss-in-the-city-of-dalaran-dungeon-in-wow-forever-383366
			cost = { { "i", 275989, 1 } },	-- 1x Tome of Dalaran
			creatureID = 247032,	-- Lyn the Ignored
			groups = {
				i(273053),	-- Tendonscraper Dagger
				i(273055),	-- Bonepile Gaze
				i(273054),	-- Cartilage Shapers
			},
		}),
		e(3298, {	-- Arcane Anomaly
			creatureID = 245999,	-- Arcane Anomaly
			groups = {
				i(273034),	-- Ephemeral Grips
				i(273035),	-- Mana-Warped Chain Shirt
				i(273031),	-- Runemender's Seal
			},
		}),
		e(3299, {	-- Fel Ancient
			creatureID = 246003,	-- Fel Ancient
			groups = {
				i(273037),	-- Felbough Arm
				i(273039),	-- Blightleaf Rope
				i(273038),	-- Garb of Fallen Felbark
			},
		}),
		e(3301, {	-- Arcanic Enigma
			creatureID = 246016,	-- Arcanic Enigma
			groups = {
				i(273045),	-- Drape of Shifting Energy
				i(273044),	-- Violet Sorcerer's Robes
				i(273043),	-- Wand of Mana Concentration
			},
		}),
		e(3300, {	-- Mana Devourer
			creatureID = 246008,	-- Mana Devourer
			groups = {
				i(273040),	-- Spine of the Devourer
				i(273042),	-- Manascale Treads
				i(273041),	-- Slitherwrap Girdle
			},
		}),
		e(3312, {	-- Mana Wraith
			creatureID = 246931,	-- Mana Wraith
			groups = {
				--[[
				i(),	-- 
				i(),	-- 
				i(),	-- 
				]]-- 
			},
		}),
		e(3302, {	-- Unstable Sentinel
			creatureID = 246017,	-- Unstable Sentinel
			groups = {
				i(273046),	-- Guardian's Dualblade
				i(273048),	-- Refractory Scaleguards
				i(273047),	-- Unstable Crystalline Shoulderpads
				i(273099),	-- Blueprint: Spinning Wheel (RECIPE!)
			},
		}),
		e(3303, {	-- Shade of the Archmage
			creatureID = 246020,	-- Shade of the Archmage
			groups = {
				i(273052),	-- Ponderous Orb
				i(273051),	-- Violet Sorcerer's Mantle
				i(273049),	-- Archmagister's Faceted Pendant
				i(273103),	-- Blueprint: Arcane Salvager (RECIPE!)
			},
		}),
	},
});