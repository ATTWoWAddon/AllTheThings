-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
CAPTAINS = createHeader({
	readable = "Captains",
	icon = 236623,
	text = {
		en = "Captains",
		fr = "Capitaines",
		ru = "Капитаны",
		cn = "船长",
	},
	lore = {
		en = "These can be farmed infinitely by resetting the boss.",
	},
});
-- #if BEFORE CATA
local KEYL_LOCATION = { 51.8, 39.5, SILITHUS };
local WARDEN_LOCATION = { 51.1, 38.9, SILITHUS };
local WINDCALLER_LOCATION = { 52.0, 38.2, SILITHUS };
-- #else
local KEYL_LOCATION = { 59.4, 14.0, AHNQIRAJ_THE_FALLEN_KINGDOM };
local WARDEN_LOCATION = { 59.4, 14.0, AHNQIRAJ_THE_FALLEN_KINGDOM };
local WINDCALLER_LOCATION = { 59.4, 14.0, AHNQIRAJ_THE_FALLEN_KINGDOM };
-- #endif
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, applyclassicphase(PHASE_FIVE, {
	inst(743, {	-- Ruins of Ahn'Qiraj
		["lore"] = "Deep within the deserts of Silithus lies an ancient and powerful race of beings known as the Qiraji. One thousand years ago, the Night Elves and Bronze Dragonflight combined their considerable powers to seal the Qiraji behind the scarab wall with the help of the children of some of the aspects. This is remembered as the \"War of the Shifting Sands\".\n\nRecently it was discovered that some of the Qiraji were finding ways past the wall. Anachronos, the bronze dragon, helped the adventurers of Azeroth open the Scarab Wall to prevent more incursions. The mortal races have now banded together to confront the evil Qiraji in their own land. A champion has opened the gate and the Horde and Alliance have driven the armies of the Qiraji back into the ruins in retreat. It now falls to heroes to delve into the lair of the Qiraji and put an end to their masters once and for all",
		-- #if BEFORE WRATH
		["zone-text-areaID"] = 3429,	-- Ruins of Ahn'Qiraj
		-- #endif
		["coord"] = { 58.93, 14.26, AHNQIRAJ_THE_FALLEN_KINGDOM },
		["mapID"] = RUINS_OF_AHNQIRAJ,
		["sharedLockout"] = 1,
		["isRaid"] = true,
		["lvl"] = lvlsquish(50, 50, 25),
		["groups"] = {
			n(FACTIONS, {
				faction(FACTION_CENARION_CIRCLE, {	-- Cenarion Circle
					["icon"] = 132136,
					["maps"] = { SILITHUS },
				}),
			}),
			n(QUESTS, {
				cl(DRUID, bubbleDown({ ["classes"] = { DRUID } }, {
					q(8700, {	-- Band of Unending Life
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { FACTION_CENARION_CIRCLE, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = WINDCALLER_LOCATION,
						["classes"] = { DRUID },
						["cost"] = {
							{ "i", 20884, 1 },	-- Qiraji Magisterial Ring
							{ "i", 20873, 2 },	-- Alabaster Idol
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21408),	-- Band of Unending Life
						},
					}),
					q(8692, {	-- Cloak of Unending Life
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = KEYL_LOCATION,
						["classes"] = { DRUID },
						["cost"] = {
							{ "i", 20889, 1 },	-- Qiraji Regal Drape
							{ "i", 20872, 2 },	-- Vermillion Idol
							{ "i", 20864, 5 },	-- Bone Scarab
							{ "i", 20860, 5 },	-- Silver Scarab
						},
						["groups"] = {
							i(21409),	-- Cloak of Unending Life
						},
					}),
					q(8708, {	-- Mace of Unending Life
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { FACTION_CENARION_CIRCLE, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = WARDEN_LOCATION,
						["classes"] = { DRUID },
						["cost"] = {
							{ "i", 20890, 1 },	-- Qiraji Ornate Hilt
							{ "i", 20870, 2 },	-- Jasper Idol
							{ "i", 20862, 5 },	-- Crystal Scarab
							{ "i", 20858, 5 },	-- Stone Scarab
						},
						["groups"] = {
							i(21407),	-- Mace of Unending Life
						},
					}),
				})),
				cl(HUNTER, bubbleDown({ ["classes"] = { HUNTER } }, {
					q(8704, {	-- Signet of the Unseen Path
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { FACTION_CENARION_CIRCLE, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = WINDCALLER_LOCATION,
						["classes"] = { HUNTER },
						["cost"] = {
							{ "i", 20888, 1 },	-- Qiraji Ceremonial Ring
							{ "i", 20869, 2 },	-- Amber Idol
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21402),	-- Signet of the Unseen Path
						},
					}),
					q(8696, {	-- Cloak of the Unseen Path
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = KEYL_LOCATION,
						["classes"] = { HUNTER },
						["cost"] = {
							{ "i", 20889, 1 },	-- Qiraji Regal Drape
							{ "i", 20868, 2 },	-- Lambent Idol
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21403),	-- Cloak of the Unseen Path
						},
					}),
					q(8712, {	-- Scythe of the Unseen Path
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { FACTION_CENARION_CIRCLE, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = WARDEN_LOCATION,
						["classes"] = { HUNTER },
						["cost"] = {
							{ "i", 20886, 1 },	-- Qiraji Spiked Hilt
							{ "i", 20866, 2 },	-- Azure Idol
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21401),	-- Scythe of the Unseen Path
						},
					}),
				})),
				cl(MAGE, bubbleDown({ ["classes"] = { MAGE } }, {
					q(8699, {	-- Band of Vaulted Secrets
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { FACTION_CENARION_CIRCLE, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = WINDCALLER_LOCATION,
						["classes"] = { MAGE },
						["cost"] = {
							{ "i", 20884, 1 },	-- Qiraji Magisterial Ring
							{ "i", 20866, 2 },	-- Azure Idol
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21414),	-- Band of Vaulted Secrets
						},
					}),
					q(8691, {	-- Drape of Vaulted Secrets
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = KEYL_LOCATION,
						["classes"] = { MAGE },
						["cost"] = {
							{ "i", 20885, 1 },	-- Qiraji Martial Drape
							{ "i", 20873, 2 },	-- Alabaster Idol
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21415),	-- Drape of Vaulted Secrets
						},
					}),
					q(8707, {	-- Blade of Vaulted Secrets
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { FACTION_CENARION_CIRCLE, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = WARDEN_LOCATION,
						["classes"] = { MAGE },
						["cost"] = {
							{ "i", 20890, 1 },	-- Qiraji Ornate Hilt
							{ "i", 20871, 2 },	-- Obsidian Idol
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21413),	-- Blade of Vaulted Secrets
						},
					}),
				})),
				cl(PALADIN, bubbleDown({ ["classes"] = { PALADIN } }, {
					q(8703, {	-- Ring of Eternal Justice
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { FACTION_CENARION_CIRCLE, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = WINDCALLER_LOCATION,
						["classes"] = { PALADIN },
						["cost"] = {
							{ "i", 20884, 1 },	-- Qiraji Magisterial Ring
							{ "i", 20872, 2 },	-- Vermillion Idol
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21396),	-- Ring of Eternal Justice
						},
					}),
					q(8695, {	-- Cape of Eternal Justice
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = KEYL_LOCATION,
						["classes"] = { PALADIN },
						["cost"] = {
							{ "i", 20889, 1 },	-- Qiraji Regal Drape
							{ "i", 20871, 2 },	-- Obsidian Idol
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21397),	-- Cape of Eternal Justice
						},
					}),
					q(8711, {	-- Blade of Eternal Justice
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { FACTION_CENARION_CIRCLE, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = WARDEN_LOCATION,
						["classes"] = { PALADIN },
						["cost"] = {
							{ "i", 20886, 1 },	-- Qiraji Spiked Hilt
							{ "i", 20869, 2 },	-- Amber Idol
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21395),	-- Blade of Eternal Justice
						},
					}),
				})),
				cl(PRIEST, bubbleDown({ ["classes"] = { PRIEST } }, {
					q(8697, {	-- Ring of Infinite Wisdom
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { FACTION_CENARION_CIRCLE, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = WINDCALLER_LOCATION,
						["classes"] = { PRIEST },
						["cost"] = {
							{ "i", 20888, 1 },	-- Qiraji Ceremonial Ring
							{ "i", 20871, 2 },	-- Obsidian Idol
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21411),	-- Ring of Infinite Wisdom
						},
					}),
					q(8689, {	-- Shroud of Infinite Wisdom
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = KEYL_LOCATION,
						["classes"] = { PRIEST },
						["cost"] = {
							{ "i", 20885, 1 },	-- Qiraji Martial Drape
							{ "i", 20870, 2 },	-- Jasper Idol
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21412),	-- Shroud of Infinite Wisdom
						},
					}),
					q(8705, {	-- Gavel of Infinite Wisdom
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { FACTION_CENARION_CIRCLE, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = WARDEN_LOCATION,
						["classes"] = { PRIEST },
						["cost"] = {
							{ "i", 20890, 1 },	-- Qiraji Ornate Hilt
							{ "i", 20868, 2 },	-- Lambent Idol
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21410),	-- Gavel of Infinite Wisdom
						},
					}),
				})),
				cl(ROGUE, bubbleDown({ ["classes"] = { ROGUE } }, {
					q(8701, {	-- Band of Veiled Shadows
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { FACTION_CENARION_CIRCLE, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = WINDCALLER_LOCATION,
						["classes"] = { ROGUE },
						["cost"] = {
							{ "i", 20888, 1 },	-- Qiraji Ceremonial Ring
							{ "i", 20867, 2 },	-- Onyx Idol
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21405),	-- Band of Veiled Shadows
						},
					}),
					q(8693, {	-- Cloak of Veiled Shadows
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = KEYL_LOCATION,
						["classes"] = { ROGUE },
						["cost"] = {
							{ "i", 20885, 1 },	-- Qiraji Martial Drape
							{ "i", 20866, 2 },	-- Azure Idol
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21406),	-- Cloak of Veiled Shadows
						},
					}),
					q(8709, {	-- Dagger of Veiled Shadows
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { FACTION_CENARION_CIRCLE, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = WARDEN_LOCATION,
						["classes"] = { ROGUE },
						["cost"] = {
							{ "i", 20886, 1 },	-- Qiraji Spiked Hilt
							{ "i", 20872, 2 },	-- Vermillion Idol
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21404),	-- Dagger of Veiled Shadows
						},
					}),
				})),
				cl(SHAMAN, bubbleDown({ ["classes"] = { SHAMAN } }, {
					q(8698, {	-- Ring of the Gathering Storm
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { FACTION_CENARION_CIRCLE, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = WINDCALLER_LOCATION,
						["classes"] = { SHAMAN },
						["cost"] = {
							{ "i", 20884, 1 },	-- Qiraji Magisterial Ring
							{ "i", 20872, 2 },	-- Vermillion Idol
							{ "i", 20860, 5 },	-- Silver Scarab
							{ "i", 20864, 5 },	-- Bone Scarab
						},
						["groups"] = {
							i(21399),	-- Ring of the Gathering Storm
						},
					}),
					q(8690, {	-- Cloak of the Gathering Storm
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = KEYL_LOCATION,
						["classes"] = { SHAMAN },
						["cost"] = {
							{ "i", 20889, 1 },	-- Qiraji Regal Drape
							{ "i", 20871, 2 },	-- Obsidian Idol
							{ "i", 20863, 5 },	-- Clay Scarab
							{ "i", 20859, 5 },	-- Gold Scarab
						},
						["groups"] = {
							i(21400),	-- Cloak of the Gathering Storm
						},
					}),
					q(8706, {	-- Hammer of the Gathering Storm
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { FACTION_CENARION_CIRCLE, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = WARDEN_LOCATION,
						["classes"] = { SHAMAN },
						["cost"] = {
							{ "i", 20886, 1 },	-- Qiraji Spiked Hilt
							{ "i", 20869, 2 },	-- Amber Idol
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21398),	-- Hammer of the Gathering Storm
						},
					}),
				})),
				cl(WARLOCK, bubbleDown({ ["classes"] = { WARLOCK } }, {
					q(8702, {	-- Ring of Unspoken Names
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { FACTION_CENARION_CIRCLE, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = WINDCALLER_LOCATION,
						["classes"] = { WARLOCK },
						["cost"] = {
							{ "i", 20888, 1 },	-- Qiraji Ceremonial Ring
							{ "i", 20870, 2 },	-- Jasper Idol
							{ "i", 20858, 5 },	-- Stone Scarab
							{ "i", 20862, 5 },	-- Crystal Scarab
						},
						["groups"] = {
							i(21417),	-- Ring of Unspoken Names
						},
					}),
					q(8694, {	-- Shroud of Unspoken Names
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = KEYL_LOCATION,
						["classes"] = { WARLOCK },
						["cost"] = {
							{ "i", 20889, 1 },	-- Qiraji Regal Drape
							{ "i", 20869, 2 },	-- Amber Idol
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21418),	-- Shroud of Unspoken Names
						},
					}),
					q(8710, {	-- Kris of Unspoken Names
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { FACTION_CENARION_CIRCLE, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = WARDEN_LOCATION,
						["classes"] = { WARLOCK },
						["cost"] = {
							{ "i", 20890, 1 },	-- Qiraji Ornate Hilt
							{ "i", 20867, 2 },	-- Onyx Idol
							{ "i", 20859, 5 },	-- Gold Scarab
							{ "i", 20863, 5 },	-- Clay Scarab
						},
						["groups"] = {
							i(21416),	-- Kris of Unspoken Names
						},
					}),
				})),
				cl(WARRIOR, bubbleDown({ ["classes"] = { WARRIOR } }, {
					q(8556, {	-- Signet of Unyielding Strength
						["qg"] = 15498,	-- Windcaller Yessendra
						["minReputation"] = { FACTION_CENARION_CIRCLE, HONORED },	-- Cenarion Circle, Honored.
						["coord"] = WINDCALLER_LOCATION,
						["classes"] = { WARRIOR },
						["cost"] = {
							{ "i", 20884, 1 },	-- Qiraji Magisterial Ring
							{ "i", 20868, 2 },	-- Lambent Idol
							{ "i", 20861, 5 },	-- Bronze Scarab
							{ "i", 20865, 5 },	-- Ivory Scarab
						},
						["groups"] = {
							i(21393),	-- Signet of Unyielding Strength
						},
					}),
					q(8557, {	-- Drape of Unyielding Strength
						["qg"] = 15500,	-- Keyl Swiftclaw
						["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },	-- Cenarion Circle, Revered.
						["coord"] = KEYL_LOCATION,
						["classes"] = { WARRIOR },
						["cost"] = {
							{ "i", 20885, 1 },	-- Qiraji Martial Drape
							{ "i", 20867, 2 },	-- Onyx Idol
							{ "i", 20864, 5 },	-- Bone Scarab
							{ "i", 20860, 5 },	-- Silver Scarab
						},
						["groups"] = {
							i(21394),	-- Drape of Unyielding Strength
						},
					}),
					q(8558, {	-- Sickle of Unyielding Strength
						["qg"] = 15499,	-- Warden Haro
						["minReputation"] = { FACTION_CENARION_CIRCLE, EXALTED },	-- Cenarion Circle, Exalted.
						["coord"] = WARDEN_LOCATION,
						["classes"] = { WARRIOR },
						["cost"] = {
							{ "i", 20886, 1 },	-- Qiraji Spiked Hilt
							{ "i", 20873, 2 },	-- Alabaster Idol
							{ "i", 20862, 5 },	-- Crystal Scarab
							{ "i", 20858, 5 },	-- Stone Scarab
						},
						["groups"] = {
							i(21392),	-- Sickle of Unyielding Strength
						},
					}),
				})),
				q(8791, {	-- The Fall of Ossirian
					["provider"] = { "i", 21220 },	-- Head of Ossirian the Unscarred
					["maps"] = { SILITHUS },
					["lvl"] = 60,
					["groups"] = {
						i(21507),	-- Amulet of the Shifting Sands
						i(21504),	-- Charm of the Shifting Sands
						i(21505),	-- Choker of the Shifting Sands
						i(21506),	-- Pendant of the Shifting Sands
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(21801),	-- Antenna of Invigoration
				i(21804),	-- Coif of Elemental Fury
				i(21803),	-- Helm of the Holy Avenger
				i(21805),	-- Polished Obsidian Pauldrons
				i(21800),	-- Silithid Husked Launcher
				i(21802),	-- The Lost Kris of Zedd
				i(20873),	-- Alabaster Idol
				i(20869),	-- Amber Idol
				i(20866),	-- Azure Idol
				i(20870),	-- Jasper Idol
				i(20868),	-- Lambent Idol
				i(20871),	-- Obsidian Idol
				i(20867),	-- Onyx Idol
				i(20872),	-- Vermillion Idol
				i(20864),	-- Bone Scarab
				i(20861),	-- Bronze Scarab
				i(20863),	-- Clay Scarab
				i(20862),	-- Crystal Scarab
				i(20859),	-- Gold Scarab
				i(20865),	-- Ivory Scarab
				i(20860),	-- Silver Scarab
				i(20858),	-- Stone Scarab
				i(20768, {	-- Oozing Bag
					["cr"] = 15335,	-- Flesh Hunter
					["sym"] = {{"select","itemID", 20769}},	-- Disgusting Oozeling (PET!)
				}),
				i(21761, {	-- Scarab Coffer Key
					["timeline"] = {
						ADDED_1_13_0,
						DELETED_4_2_2
					},
				}),
				-- #if AFTER 4.0.1
				-- Class Books still drop after 4.0.1 but were converted to Gray items. Added them here so they don't appear as Unsorted as Ruins of AQ is the only source.	- Exo
				i(21294),	-- Book of Healing Touch XI
				i(21296),	-- Book of Rejuvenation XI
				i(21295),	-- Book of Starfire VII
				i(21284),	-- Codex of Greater Heal V
				i(21287),	-- Codex of Prayer of Healing V
				i(21285),	-- Codex of Renew X
				i(21283),	-- Grimoire of Corruption VII
				i(21282),	-- Grimoire of Immolate VIII
				i(21281),	-- Grimoire of Shadow Bolt X
				i(21307),	-- Guide: Aspect of the Hawk VII
				i(21304),	-- Guide: Multi-Shot V
				i(21306),	-- Guide: Serpent Sting IX
				i(21300),	-- Handbook of Backstab IX
				i(21302),	-- Handbook of Deadly Poison V
				i(21303),	-- Handbook of Feint V
				i(21289),	-- Libram: Blessing of Might VII
				i(21288),	-- Libram: Blessing of Wisdom VI
				i(21290),	-- Libram: Holy Light IX
				i(21298),	-- Manual of Battle Shout VII
				i(21297),	-- Manual of Heroic Strike IX
				i(21299),	-- Manual of Revenge VI
				i(21293),	-- Tablet of Grace of Air Totem III
				i(21291),	-- Tablet of Healing Wave X
				i(21292),	-- Tablet of Strength of Earth Totem V
				i(21280),	-- Tome of Arcane Missiles VIII
				i(21279),	-- Tome of Fireball XII
				i(21214),	-- Tome of Frostbolt XI
				-- #endif
			}),
			filter(RECIPES, {
				["crs"] = {
					15369,	-- Ayamiss the Hunter
					15370,	-- Buru the Gorger
					15341,	-- General Rajaxx
					15348,	-- Kurinnaxx
					15340,	-- Moam
					15339,	-- Ossirian the Unscarred
				},
				["groups"] = {
					-- Class Books
					-- #if BEFORE 4.0.1
					cl(DRUID, bubbleDown({ ["classes"] = { DRUID } }, {
						i(21294, {	-- Book of Healing Touch XI
							["spellID"] = 25297,	-- Healing Touch XI
							["rank"] = 11,
						}),
						i(21295, {	-- Book of Starfire VII
							["spellID"] = 25298,	-- Starfire VII
							["rank"] = 7,
						}),
						i(21296, {	-- Book of Rejuvenation XI
							["spellID"] = 25299,	-- Rejuvenation XI
							["rank"] = 11,
						}),
					})),
					cl(HUNTER, bubbleDown({ ["classes"] = { HUNTER } }, {
						i(21304, {	-- Guide: Multi-Shot V
							["spellID"] = 25294,	-- Multi-Shot V
							["rank"] = 5,
						}),
						i(21306, {	-- Guide: Serpent Sting IX
							["spellID"] = 25295,	-- Serpent Sting IX
							["rank"] = 9,
						}),
						i(21307, {	-- Guide: Aspect of the Hawk VII
							["spellID"] = 25296,	-- Aspect of the Hawk VII
							["rank"] = 7,
						}),
					})),
					cl(MAGE, bubbleDown({ ["classes"] = { MAGE } }, {
						i(21280, {	-- Tome of Arcane Missiles VIII
							["spellID"] = 25345,	-- Arcane Missiles VIII
							["rank"] = 8,
						}),
						i(21279, {	-- Tome of Fireball XII
							["spellID"] = 25306,	-- Fireball XII
							["rank"] = 12,
						}),
						i(21214, {	-- Tome of Frostbolt XI
							["spellID"] = 25304,	-- Frostbolt XI
							["rank"] = 11,
						}),
					})),
					cl(PALADIN, bubbleDown({ ["classes"] = { PALADIN } }, {
						i(21289, {	-- Libram: Blessing of Might VII
							["spellID"] = 25291,	-- Blessing of Might VII
							["rank"] = 7,
						}),
						i(21288, {	-- Libram: Blessing of Wisdom VI
							["spellID"] = 25290,	-- Blessing of Wisdom VI
							["rank"] = 6,
						}),
						i(21290, {	-- Libram: Holy Light IX
							["spellID"] = 25292,	-- Holy Light IX
							["rank"] = 9,
						}),
					})),
					cl(PRIEST, bubbleDown({ ["classes"] = { PRIEST } }, {
						i(21284, {	-- Codex of Greater Heal V
							["spellID"] = 25314,	-- Greater Heal V
							["rank"] = 5,
						}),
						i(21285, {	-- Codex of Renew X
							["spellID"] = 25315,	-- Renew X
							["rank"] = 10,
						}),
						i(21287, {	-- Codex of Prayer of Healing V
							["spellID"] = 25316,	-- Prayer of Healing V
							["rank"] = 5,
						}),
					})),
					cl(ROGUE, bubbleDown({ ["classes"] = { ROGUE } }, {
						i(21300, {	-- Handbook of Backstab IX
							["spellID"] = 25300,	-- Backstab IX
							["rank"] = 9,
						}),
						i(21302),	-- Handbook of Deadly Poison V (RECIPE!)
						i(21303, {	-- Handbook of Feint V
							["spellID"] = 25302,	-- Feint V
							["rank"] = 5,
						}),
					})),
					cl(SHAMAN, bubbleDown({ ["classes"] = { SHAMAN } }, {
						i(21293, {	-- Tablet of Grace of Air Totem III
							-- #if BEFORE 3.0.1
							["spellID"] = 25359,	-- Grace of Air Totem III
							["rank"] = 3,
							-- #endif
						}),
						i(21291, {	-- Tablet of Healing Wave X
							["spellID"] = 25357,	-- Healing Wave X
							["rank"] = 10,
						}),
						i(21292, {	-- Tablet of Strength of Earth Totem V
							["spellID"] = 25361,	-- Strength of Earth Totem V
							["rank"] = 5,
						}),
					})),
					cl(WARLOCK, bubbleDown({ ["classes"] = { WARLOCK } }, {
						i(21283, {	-- Grimoire of Corruption VII
							["spellID"] = 25311,	-- Corruption VII
							["rank"] = 7,
						}),
						i(21282, {	-- Grimoire of Immolate VIII
							["spellID"] = 25309,	-- Immolate VIII
							["rank"] = 8,
						}),
						i(21281, {	-- Grimoire of Shadow Bolt X
							["spellID"] = 25307,	-- Shadow Bolt X
							["rank"] = 10,
						}),
					})),
					cl(WARRIOR, bubbleDown({ ["classes"] = { WARRIOR } }, {
						i(21298, {	-- Manual of Battle Shout VII
							["spellID"] = 25289,	-- Battle Shout VII
							["rank"] = 7,
						}),
						i(21297, {	-- Manual of Heroic Strike IX
							["spellID"] = 25286,	-- Heroic Strike IX
							["rank"] = 9,
						}),
						i(21299, {	-- Manual of Revenge VI
							["spellID"] = 25288,	-- Revenge VI
							["rank"] = 6,
						}),
					})),
					-- #endif

					-- Enchants
					i(20736),	-- Formula: Enchant Cloak - Dodge (RECIPE!)
					i(20734),	-- Formula: Enchant Cloak - Stealth (RECIPE!)
					i(20729),	-- Formula: Enchant Gloves - Fire Power (RECIPE!)
					i(20728),	-- Formula: Enchant Gloves - Frost Power (RECIPE!)
					i(20730),	-- Formula: Enchant Gloves - Healing Power (RECIPE!)
					i(20727),	-- Formula: Enchant Gloves - Shadow Power (RECIPE!)
					i(20731),	-- Formula: Enchant Gloves - Superior Agility (RECIPE!)
				},
			}),
			n(COMMON_BOSS_DROPS, {
				i(20888, {	-- Qiraji Ceremonial Ring
					["crs"] = {
						15369,	-- Ayamiss the Hunter
						15370,	-- Buru the Gorger
						15341,	-- General Rajaxx
						15348,	-- Kurinnaxx
						15340,	-- Moam
						15339,	-- Ossirian the Unscarred
					},
				}),
				i(20884, {	-- Qiraji Magisterial Ring
					["crs"] = {
						15369,	-- Ayamiss the Hunter
						15370,	-- Buru the Gorger
						15341,	-- General Rajaxx
						15348,	-- Kurinnaxx
						15340,	-- Moam
						15339,	-- Ossirian the Unscarred
					},
				}),
				i(20885, {	-- Qiraji Martial Drape
					["crs"] = {
						15369,	-- Ayamiss the Hunter
						15370,	-- Buru the Gorger
						15341,	-- General Rajaxx
						15348,	-- Kurinnaxx
					},
				}),
				i(20889, {	-- Qiraji Regal Drape
					["crs"] = {
						15369,	-- Ayamiss the Hunter
						15370,	-- Buru the Gorger
						15341,	-- General Rajaxx
						15348,	-- Kurinnaxx
					},
				}),
				i(20890, {	-- Qiraji Ornate Hilt
					["crs"] = {
						15369,	-- Ayamiss the Hunter
						15370,	-- Buru the Gorger
						15339,	-- Ossirian the Unscarred
						15340,	-- Moam
					},
				}),
				i(20886, {	-- Qiraji Spiked Hilt
					["crs"] = {
						15369,	-- Ayamiss the Hunter
						15370,	-- Buru the Gorger
						15339,	-- Ossirian the Unscarred
						15340,	-- Moam
					},
				}),
				-- Key (Post 4.3 Only!)
				applyclassicphase(CATA_PHASE_ONE, i(76401, {	-- Scarab Coffer Key
					["timeline"] = { ADDED_4_3_0 },
					["crs"] = {
						15369,	-- Ayamiss the Hunter
						15370,	-- Buru the Gorger
						15341,	-- General Rajaxx
						15348,	-- Kurinnaxx
						15340,	-- Moam
						15339,	-- Ossirian the Unscarred
					},
				})),
			}),
			o(180691, {	-- Scarab Coffer
				["description"] = "These can be found along the walls of the instance and require a coffer key to open.",
				["cost"] = {
					-- #if ANYCLASSIC
					{ "i", 21761, 1, PHASE_ONE },	-- Scarab Coffer Key [pre-4.3]
					{ "i", 76401, 1, CATA_PHASE_ONE },	-- Scarab Coffer Key [4.3]
					-- #else
					{ "i", 76401, 1 },	-- Scarab Coffer Key [4.3]
					-- #endif
				},
				["groups"] = {
					i(20873),	-- Alabaster Idol
					i(20869),	-- Amber Idol
					i(20866),	-- Azure Idol
					i(20870),	-- Jasper Idol
					i(20868),	-- Lambent Idol
					i(20871),	-- Obsidian Idol
					i(20867),	-- Onyx Idol
					i(20872),	-- Vermillion Idol
					i(21156, {	-- Scarab Bag
						["description"] = "Contains a couple of random scarabs.",
					}),
				},
			}),
			e(1537, {	-- Kurinnaxx
				["creatureID"] = 15348,
				["groups"] = {
					i(22217, {	-- Kurinnaxx's Venom Sac
						["timeline"] = {
							ADDED_1_13_0,
							DELETED_4_2_2
						},
					}),
					i(21498),	-- Qiraji Sacrificial Dagger
					i(21499),	-- Vestments of the Shifting Sands
					i(21502),	-- Sand Reaver Wristguards
					i(21501),	-- Toughened Silithis Hide Gloves
					i(21503),	-- Belt of the Sand Reaver
					i(21500),	-- Belt of the Inquisition
				},
			}),
			n(15471, {	-- Lieutenant General Andorov
				["description"] = "In order to interact with this vendor, you must first talk to him to start the encounter with General Rajaxx and allow him to get at least one hit on the boss after the waves have completed.",
				["groups"] = {
					i(22219, {	-- Plans: Jagged Obsidian Shield (RECIPE!)
						["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },
						["isLimited"] = true,
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_5 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_SIX, i(234458, {	-- Plans: Jagged Obsidian Shield (RECIPE!)
						["minReputation"] = { FACTION_CENARION_CIRCLE, REVERED },
						["isLimited"] = true,
						["timeline"] = { ADDED_1_15_5 },
					})),
					-- #endif
					i(22221, {	-- Plans: Obsidian Mail Tunic (RECIPE!)
						["minReputation"] = { FACTION_CENARION_CIRCLE, EXALTED },
						["isLimited"] = true,
						-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_5 },
						-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_SIX, i(234461, {	-- Plans: Obsidian Mail Tunic (RECIPE!)
						["minReputation"] = { FACTION_CENARION_CIRCLE, EXALTED },
						["isLimited"] = true,
						["timeline"] = { ADDED_1_15_5 },
					})),
					-- #endif
				},
			}),
			e(1538, {	-- General Rajaxx
				["description"] = "Speak with Lieutenant General Andorov in order to start the encounter. Andorov must survive the fight in order to defeat the encounter.",
				["creatureID"] = 15341,
				["groups"] = {
					n(CAPTAINS, {
						["qgs"] = {
							15390,	-- Captain Xurrem
							15391,	-- Captain Qeez
							15389,	-- Captain Drenn
							15392,	-- Captain Tuubid
							15386,	-- Major Yeggeth
							15385,	-- Colonel Zarran
						},
						["groups"] = {
							i(21806),	-- Gavel of Qiraji Athority
							i(21809),	-- Fury of the Forgotten Swarm
							i(21810),	-- Treads of the Wandering Nomad
						},
					}),
					i(21492),	-- Manslayer of the Qiraji
					i(21496),	-- Bracers of Qiraji Command
					i(21494),	-- Southwind's Grasp
					i(21495),	-- Legplates of Qiraji Command
					i(21497),	-- Boots of the Qiraji General
					i(21493),	-- Boots of the Vanguard
				},
			}),
			e(1540, {	-- Buru the Gorger
				["creatureID"] = 15370,
				["groups"] = {
					i(21485),	-- Buru's Skull Fragment
					i(21487),	-- Slimy Scaled Gauntlets
					i(21486),	-- Gloves of the Swarm
					i(21491),	-- Scaled Bracers of the Gorger
					i(21490),	-- Slime Kickers
					i(21489),	-- Quicksand Waders
					i(21488),	-- Fetish of Chitinous Spikes
				},
			}),
			e(1541, {	-- Ayamiss the Hunter
				["creatureID"] = 15369,
				["groups"] = {
					i(21466),	-- Stinger of Ayamiss
					i(21478),	-- Bow of Taut Sinew
					i(21479),	-- Gauntlets of the Immovable
					i(21484),	-- Helm of Regrowth
					i(21480),	-- Scaled Silithid Gauntlets
					i(21481, {	-- Boots of the Desert Protector
						-- #if BEFORE 2.0.1
						-- Originally a faction specific drop for Paladins.
						["races"] = ALLIANCE_ONLY,
						-- #endif
					}),
					i(21482, {	-- Boots of the Fiery Sands
						-- #if BEFORE 10.1.
						["description"] = "This item was originally a Horde exclusive drop for Shamans during vanilla. Sometime after TBC Prepatch, this item disappeared from the loot table. Please @Crieve if you get it to drop.",
						-- #if AFTER 2.0.1
						["isBounty"] = true,
						-- #else
						["races"] = HORDE_ONLY,
						-- #endif
						-- #endif
						["timeline"] = {
							ADDED_1_13_0,
							REMOVED_2_0_1,	-- Classic WoWHead shows 0 new drops in WotLK since Classic. (902 recorded drops in both versions, which goes to show that this item no longer exists on the drop table)
							--REMOVED_4_2_2,
							ADDED_10_1_7,
						},
					}),
					i(21483),	-- Ring of the Desert Winds
				},
			}),
			e(1539, {	-- Moam
				["creatureID"] = 15340,
				["groups"] = {
					i(21471),	-- Talon of Furious Concentration
					i(21455),	-- Southwind Helm
					i(21472),	-- Dustwind Turbin
					i(21474),	-- Chitinous Shoulderguards
					i(21468),	-- Mantle of Maz'Nadir
					i(21470),	-- Cloak of the Savior
					i(21467),	-- Thick Silithis Chestguard
					i(21469),	-- Gauntlets of Southwind
					i(21479),	-- Gauntlets of the Immovable
					i(21475),	-- Legplates of the Destroyer
					i(21476),	-- Obsidian Scaled Leggings
					i(21477),	-- Ring of Fury
					i(21473),	-- Eye of Moam
					i(22220, {	-- Plans: Black Grasp of the Destroyer (RECIPE!)
					-- #if SEASON_OF_DISCOVERY
						["timeline"] = { REMOVED_1_15_5 },
					-- #endif
					}),
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_SIX, i(234085, {	--	Plans: Black Grasp of the Destroyer (RECIPE!)
						["timeline"] = { ADDED_1_15_5 },
					})),
					-- #endif
				},
			}),
			e(1542, {	-- Ossirian the Unscarred
				["creatureID"] = 15339,
				["groups"] = {
					ach(689, {	-- Ruins of Ahn'Qiraj
						-- #if BEFORE WRATH
						["sourceQuest"] = 8791,	-- The Fall of Ossirian
						-- #endif
					}),
					ach(5059, {	-- Ruins of Ahn'Qiraj Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(21220),	-- Head of Ossirian the Unscarred
					i(21452),	-- Staff of the Ruins
					i(21715),	-- Sand Polished Hammer
					i(21459),	-- Crossbow of Imminent Doom
					i(21460),	-- Helm of Domination
					i(21454),	-- Runic Stone Shoulders
					i(21456),	-- Sandstorm Cloak
					i(21457),	-- Bracers of Brutality
					i(21464),	-- Shackles of the Unscarred
					i(21462),	-- Gloves of Dark Wisdom
					i(21458),	-- Gauntlets of New Life
					i(21463),	-- Ossirian's Binding
					i(21461),	-- Leggings of the Black Blizzard
					i(21453),	-- Mantle of the Horusath
				},
			}),
		},
	}),
})));