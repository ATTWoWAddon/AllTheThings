-------------------------------------------------------------------
--	  E X P A N S I O N   F E A T U R E S	M O D U L E	   --
-------------------------------------------------------------------

-- Exo Note: Technically, this is 1 event with 2 components: Void Assaults (Strikes and Incursions, Outdoor content) and Ritual Sites (Delve-like, "Indoor"/Phased content). They share Quests, Currencies, Vendors...

VOID_ASSAULTS = createHeader({
	readable = "Void Assaults",
	icon = 7501330,
	text = {
		en = "Void Assaults",
		--de = "Void Assaults",
		--es = "Void Assaults",
		--mx = "Void Assaults",
		--fr = "Void Assaults",
		--it = "Void Assaults",
		--ko = "Void Assaults",
		--pt = "Void Assaults",
		--ru = "Void Assaults",
		--cn = "Void Assaults",
		--tw = "Void Assaults",
	},
});
RITUAL_SITES = createHeader({
	readable = "Ritual Sites",
	icon = 136194,
	text = {
		en = "Ritual Sites",
		--de = "Ritual Sites",
		--es = "Ritual Sites",
		--mx = "Ritual Sites",
		--fr = "Ritual Sites",
		--it = "Ritual Sites",
		--ko = "Ritual Sites",
		--pt = "Ritual Sites",
		--ru = "Ritual Sites",
		--cn = "Ritual Sites",
		--tw = "Ritual Sites",
	},
});

local FIELD_ACCOLADE = 3405;
local DARK_PARTICLE = 267051;

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MID, {
	["groups"] = sharedData({
		["maps"] = {
			MAP.MIDNIGHT.EVERSONG_WOODS,
			MAP.MIDNIGHT.ZULAMAN,
		},
		["timeline"] = { ADDED_12_0_5 },
	}, {
		n(VOID_ASSAULTS, {
			faction(FACTION_RITUAL_SITES),
			-- Void Rift: Bitter Bark; 30.8, 43.6, Zul'Aman
			-- Void Ritual: Grizzly 31.6, 71.0, ZulAman
			-- Swarming Skies: Jan'alai, 53.1, 21.1, Zulaman
			n(ACHIEVEMENTS, {	-- Achievements do not reward Mounts and Pets. They unlock the ability for you to buy them from the vendor.
				ach(62574),	-- Accolade to Rest
				ach(62573),	-- Air Traffic Controller
				ach(62572),	-- Battery Bombardment
				ach(62518),	-- Cosmic Exterminator
				ach(62570),	-- Cosmic Slayer
				ach(62571),	-- Everybody Gets One
				ach(62513),	-- Outstanding in the Field
				ach(62569),	-- Traces in the Dark
				ach(62498),	-- Void Assault: Eversong
				ach(62499),	-- Void Assault: Zul'Aman
				ach(62509),	-- Void Bane: Eversong
				ach(62512),	-- Void Bane: Zul'Aman
				ach(62508),	-- Void Eradicator: Eversong
				ach(62511),	-- Void Eradicator: Zul'Aman
				ach(62563, {	-- Void Response Team
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						62518,	-- Cosmic Exterminator
						62513,	-- Outstanding in the Field
						62498,	-- Void Assault: Eversong
						62499,	-- Void Assault: Zul'Aman
						62508,	-- Void Eradicator: Eversong
						62511,	-- Void Eradicator: Zul'Aman
					}},
				}),
				ach(62568),	-- Void Shmoid
				ach(62507),	-- Void Smasher: Eversong
				ach(62510),	-- Void Smasher: Zul'Aman
			}),
			n(QUESTS, {
				q(94380, {	-- Ranger Captain's Summons
					["description"] = "Can be accepted the first time you get into Silvermoon.",
					["qg"] = 257459,	-- Farstrider Scout (mobileNPC)
					["maps"] = { MAP.MIDNIGHT.SILVERMOON_CITY },
					["isBreadcrumb"] = true,
				}),
				q(96080, {	-- Void Strike
					["sourceQuest"] = 94380,	-- Ranger Captain's Summons
					["qg"] = 257411,	-- Ranger Captain Lilatha
					["coord"] = { 48.1, 49.7, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(94381, {	-- Outfitting and Allies
					["sourceQuest"] = 96080,	-- Void Strike
					["qg"] = 257411,	-- Ranger Captain Lilatha
					["coord"] = { 48.1, 49.7, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(94383, {	-- Ritual Interest
					["description"] = "Becomes available after accepting 'Outfitting and Allies' (94381).",
					["sourceQuest"] = 96080,	-- Void Strike
					["qg"] = 257415,	-- Kul'amara the Fierce
					["coord"] = { 48.1, 49.9, MAP.MIDNIGHT.SILVERMOON_CITY },
					-- This quest unlocks the 'Ritual Sites' faction
				}),
				q(94382, {	-- Ritual Problems
					["sourceQuest"] = 94383,	-- Ritual Interest
					["qg"] = 257416,	-- Lady Darkglen
					["coord"] = { 47.7, 49.6, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				-- Sorted but unsorted (not sure what sourceQuest or action for it)
				q(95550, {	-- Thin Their Ranks
					--["sourceQuest"] = ???,	-- ???
					["qg"] = 257411,	-- Ranger Captain Lilatha
					["coord"] = { 48.1, 49.7, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(95552, {	-- Dark Obelisk Investigation
					--["sourceQuest"] = ???,	-- ???
					["qg"] = 257416,	-- Lady Darkglen
					["coord"] = { 47.7, 49.7, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(95553, {	-- Manifested Density
					--["sourceQuest"] = ???,	-- ???
					["qg"] = 257411,	-- Ranger Captain Lilatha
					["coord"] = { 48.1, 49.7, MAP.MIDNIGHT.SILVERMOON_CITY },
				}),
				q(95549, {	-- Raising Magical Alarms
					--["sourceQuest"] = ???,	-- ???
					["qg"] = 257416,	-- Lady Darkglen
					["coord"] = { 47.7, 49.7, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(271094),	-- Lady Darkglen's Device (QI!)
					},
				}),
				-- Repeatable Quests, Assaults are weekly per zone. 1 week is in Eversong, 1 week is in Zul'Aman
				q(94385, {	-- Void Assaults: Eversong Woods
					["sourceQuest"] = 94381,	-- Outfitting and Allies
					["qg"] = 257411,	-- Ranger Captain Lilatha
					["coord"] = { 48.1, 49.7, MAP.MIDNIGHT.SILVERMOON_CITY },
					["isWeekly"] = true,
				}),
				q(94386, {	-- Void Assaults: Zul'Aman
					["sourceQuest"] = 94381,	-- Outfitting and Allies
					["qg"] = 257415,	-- Kul'amara the Fierce
					["coord"] = { 48.1, 49.9, MAP.MIDNIGHT.SILVERMOON_CITY },
					["isWeekly"] = true,
				}),
			}),
			n(REWARDS, {
				-- Currencies
				currency(FIELD_ACCOLADE),
				i(DARK_PARTICLE),
				-- Gear
				n(ARMOR, {
					-- Tier 2, WoW's 20th Anniversary: Void Assaults Recolors
					-- These come from the Cache of Void Touched Armaments sold by Maren Silverwing
					clWithoutLock(DEATHKNIGHT, {
						i(263734),	-- Void Rider's Breastplate
						i(263742),	-- Void Rider's Cloak
						i(263741),	-- Void Rider's Girdle
						i(263736),	-- Void Rider's Gloves
						i(263737),	-- Void Rider's Helm
						i(263738),	-- Void Rider's Leggings
						i(263739),	-- Void Rider's Pauldrons
						i(263735),	-- Void Rider's Sabatons
						i(263743),	-- Void Rider's Vambraces
					}),
					clWithoutLock(DEMONHUNTER, {
						i(263752),	-- Voidwalker's Bracers
						i(263751),	-- Voidwalker's Cloak
						i(263750),	-- Voidwalker's Cord
						i(263746),	-- Voidwalker's Gloves
						i(263744),	-- Voidwalker's Harness
						i(263748),	-- Voidwalker's Leggings
						i(263745),	-- Voidwalker's Sandals
						i(263749),	-- Voidwalker's Shoulderblades
						i(263747),	-- Voidwalker's Skullcap
					}),
					clWithoutLock(DRUID, {
						i(263759),	-- Voidrage Belt
						i(263754),	-- Voidrage Boots
						i(263761),	-- Voidrage Bracers
						i(263762),	-- Voidrage Chestguard
						i(263760),	-- Voidrage Cloak
						i(263756),	-- Voidrage Cover
						i(263755),	-- Voidrage Handguards
						i(263757),	-- Voidrage Legguards
						i(263758),	-- Voidrage Pauldrons
						i(263753),	-- Voidrage Robe
					}),
					clWithoutLock(EVOKER, {
						i(263763),	-- Void-Warder's Breastplate
						i(263765),	-- Void-Warder's Claws
						i(263770),	-- Void-Warder's Cloak
						i(263766),	-- Void-Warder's Crown
						i(263769),	-- Void-Warder's Girdle
						i(263767),	-- Void-Warder's Legplates
						i(263768),	-- Void-Warder's Pauldrons
						i(263764),	-- Void-Warder's Talons
						i(263771),	-- Void-Warder's Vambraces
					}),
					clWithoutLock(HUNTER, {
						i(263779),	-- Voidstalker's Belt
						i(263781),	-- Voidstalker's Bracers
						i(263772),	-- Voidstalker's Breastplate
						i(263780),	-- Voidstalker's Cloak
						i(263774),	-- Voidstalker's Gauntlets
						i(263773),	-- Voidstalker's Greaves
						i(263775),	-- Voidstalker's Helm
						i(263777),	-- Voidstalker's Legguards
						i(263778),	-- Voidstalker's Spaulders
					}),
					clWithoutLock(MAGE, {
						i(263788),	-- Voidwind Belt
						i(263790),	-- Voidwind Bindings
						i(263791),	-- Voidwind Blouse
						i(263783),	-- Voidwind Boots
						i(263789),	-- Voidwind Cloak
						i(263785),	-- Voidwind Crown
						i(263784),	-- Voidwind Gloves
						i(263787),	-- Voidwind Mantle
						i(263786),	-- Voidwind Pants
						i(263782),	-- Voidwind Robes
					}),
					clWithoutLock(MONK, {
						i(263800),	-- Bindings of the Void Acolyte
						i(263799),	-- Cloak of the Void Acolyte
						i(263798),	-- Cord of the Void Acolyte
						i(263794),	-- Grips of the Void Acolyte
						i(263795),	-- Helm of the Void Acolyte
						i(263796),	-- Pants of the Void Acolyte
						i(263797),	-- Spaulders of the Void Acolyte
						i(263793),	-- Talons of the Void Acolyte
						i(263792),	-- Vest of the Void Acolyte
					}),
					clWithoutLock(PALADIN, {
						i(263807),	-- Void's Judgment Belt
						i(263809),	-- Void's Judgment Bindings
						i(263801),	-- Void's Judgment Breastplate
						i(263808),	-- Void's Judgment Cloak
						i(263804),	-- Void's Judgment Crown
						i(263803),	-- Void's Judgment Gauntlets
						i(263810),	-- Void's Judgment Greaves
						i(263805),	-- Void's Judgment Legplates
						i(263802),	-- Void's Judgment Sabatons
						i(263806),	-- Void's Judgment Spaulders
					}),
					clWithoutLock(PRIEST, {
						i(263817),	-- Belt of Voidcendence
						i(263819),	-- Bindings of Voidcendence
						i(263820),	-- Blouse of Voidcendence
						i(263812),	-- Boots of Voidcendence
						i(263818),	-- Cloak of Voidcendence
						i(263814),	-- Halo of Voidcendence
						i(263813),	-- Handguards of Voidcendence
						i(263815),	-- Leggings of Voidcendence
						i(263816),	-- Pauldrons of Voidcendence
						i(263811),	-- Robes of Voidcendence
					}),
					clWithoutLock(ROGUE, {
						i(263828),	-- Voidfang Belt
						i(263823),	-- Voidfang Boots
						i(263830),	-- Voidfang Bracers
						i(263821),	-- Voidfang Chestpiece
						i(263829),	-- Voidfang Cloak
						i(263824),	-- Voidfang Gloves
						i(263825),	-- Voidfang Hood
						i(263826),	-- Voidfang Pants
						i(263827),	-- Voidfang Spaulders
					}),
					clWithoutLock(SHAMAN, {
						i(263837),	-- Belt of Void Storms
						i(263839),	-- Bracers of Void Storms
						i(263831),	-- Breastplate of Void Storms
						i(263838),	-- Cloak of Void Storms
						i(263836),	-- Epaulets of Void Storms
						i(263833),	-- Gauntlets of Void Storms
						i(263840),	-- Greaves of Void Storms
						i(263834),	-- Helmet of Void Storms
						i(263835),	-- Kilt of Void Storms
						i(263832),	-- Sabatons of Void Storms
					}),
					clWithoutLock(WARLOCK, {
						i(263847),	-- Void Nemesis' Belt
						i(263850),	-- Void Nemesis' Blouse
						i(263842),	-- Void Nemesis' Boots
						i(263849),	-- Void Nemesis' Bracers
						i(263848),	-- Void Nemesis' Cloak
						i(263843),	-- Void Nemesis' Gloves
						i(263845),	-- Void Nemesis' Leggings
						i(263841),	-- Void Nemesis' Robes
						i(263844),	-- Void Nemesis' Skullcap
						i(263846),	-- Void Nemesis' Spaulders
					}),
					clWithoutLock(WARRIOR, {
						i(263860),	-- Bracelets of Voidwrath
						i(263851),	-- Breastplate of Voidwrath
						i(263858),	-- Cloak of Voidwrath
						i(263853),	-- Gauntlets of Voidwrath
						i(263854),	-- Helm of Voidwrath
						i(263855),	-- Legplates of Voidwrath
						i(263856),	-- Pauldrons of Voidwrath
						i(263852),	-- Sabatons of Voidwrath
						i(263857),	-- Waistband of Voidwrath
					}),
					filter(FINGER_F, {
						i(263888),	-- Void-Laced Band
						i(263890),	-- Void-Laced Ring
						i(263889),	-- Void-Laced Signet
					}),
					filter(NECK_F, {
						i(263893),	-- Void-Laced Necklace
						i(263891),	-- Void-Laced Pendant
						i(263892),	-- Void-Laced Torc
					}),
				}),
				n(WEAPONS, {
					i(263905),	-- Void-Touched Apprentice's Gavel
					i(263903),	-- Void-Touched Basher
					i(263911),	-- Void-Touched Battle Baton
					i(263910),	-- Void-Touched Beacon Staff
					i(263906),	-- Void-Touched Bulwark
					i(263920),	-- Void-Touched Dueling Blade
					i(263898),	-- Void-Touched Fang
					i(263917),	-- Void-Touched Flaredblade
					i(263925),	-- Void-Touched Foci
					i(263904),	-- Void-Touched Gavel
					i(263927),	-- Void-Touched Glaiveblade
					i(263923),	-- Void-Touched Greatblade
					i(263924),	-- Void-Touched Greatbow
					i(263926),	-- Void-Touched Greatwand
					i(263918),	-- Void-Touched Guard's Blade
					i(263900),	-- Void-Touched Gutter
					i(263914),	-- Void-Touched Hammer
					i(263922),	-- Void-Touched Mageblade
					i(263912),	-- Void-Touched Magister's Baton
					i(263919),	-- Void-Touched Magister's Sword
					i(263908),	-- Void-Touched Poleaxe
					i(263894),	-- Void-Touched Rifle
					i(263901),	-- Void-Touched Sacrificial Knife
					i(263913),	-- Void-Touched Smasher
					i(263907),	-- Void-Touched Spade
					i(263921),	-- Void-Touched Sunfury Blade
					i(263909),	-- Void-Touched Sunfury Stave
					i(263916),	-- Void-Touched Tome
					i(263915),	-- Void-Touched Torch
					i(263902),	-- Void-Touched Twinblade
				}),
				filter(MISC, {
				}),
				filter(REAGENTS, {
				}),
				filter(RECIPES, {
				}),
				-- Boxes
				i(270244),	-- Field Pouch
				i(270247),	-- Field Satchel
				i(264914),	-- Ranger's Cache	// Pinnacle Cache - Midnight Season 1
			}),
			n(VENDORS, {
				n(255473, {	-- Maren Silverwing <Quartermaster>
					["coord"] = { 48.0, 49.2, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(263928, {	-- Cache of Void-Touched Armaments (Champion)
							["cost"] = { { "c", FIELD_ACCOLADE, 75 } },
						}),
						i(263929, {	-- Cache of Void-Touched Armaments (Heroic)
							["cost"] = { { "c", FIELD_ACCOLADE, 500 } },
						}),
						i(268996, {	-- Field Accolade (Automatically converts to 10x FIELD_ACCOLADE currency when bought)
							["cost"] = { { "i", DARK_PARTICLE, 100 } },
						}),
					},
				}),
				n(255495, {	-- Rae'ana <Historian and Research Supplier>
					["coord"] = { 47.7, 50.5, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = sharedData({
						["minReputation"] = { FACTION_RITUAL_SITES, 3 },
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}, {
						i(271158, {	-- Dark Obelisk (DECOR!)
							["minReputation"] = { FACTION_RITUAL_SITES, 7 },
							["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
						}),
						i(273142),	-- Runic Parchment (DECOR!)
						i(273135),	-- Void Elf Floating Desk (DECOR!)
						i(273159, {	-- Void Elf Scribe's Desk (DECOR!)
							["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
						}),
						i(273157),	-- Void Flame Candle (DECOR!)
						i(273147),	-- Void Inkwell (DECOR!)
					}),
				}),
				n(255503, {	-- Sergeant Vornin <Animal Handler>
					["coord"] = { 48.7, 50.4, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(270989, {	-- Cappy (PET!)
							["sourceAchievement"] = 62518,	-- Cosmic Exterminator
							["cost"] = { { "c", VOIDLIGHT_MARL, 1800 } },
						}),
						i(264348, {	-- Unbound Manawyrm (MOUNT!)
							["sourceAchievements"] = {
								62562,	-- Ritual Site Disruptor
								62563,	-- Void Response Team
							},
							["cost"] = { { "c", VOIDLIGHT_MARL, 6000 } },
						}),
						i(270331, {	-- Void-Infused Mindbreaker Fry (PET!)
							["minReputation"] = { FACTION_RITUAL_SITES, 6 },
							["cost"] = { { "c", VOIDLIGHT_MARL, 1800 } },
						}),
						i(270330, {	-- Void-Touched Dragonhawk Egg (PET!)
							["minReputation"] = { FACTION_RITUAL_SITES, 6 },
							["cost"] = { { "c", VOIDLIGHT_MARL, 1800 } },
						}),
						i(268578, {	-- Void-Touched Hawkstrider (MOUNT!)
							["minReputation"] = { FACTION_RITUAL_SITES, 8 },
							["cost"] = { { "c", VOIDLIGHT_MARL, 4500 } },
						}),
					},
				}),
				n(255476, {	-- Triam Dawnsetter <Cosmetic Equipment Salvager>
					["coord"] = { 48.2, 49.1, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = sharedData({
						["cost"] = {
							{ "c", FIELD_ACCOLADE, 5 },
							{ "c", VOIDLIGHT_MARL, 150 },
						},
					}, {	-- All of these are (COSMETIC!) and are sorted in the alphabetic order of the class: DK, DH, Druid, Evoker, Hunter, Mage, Monk, Paladin, Priest, Rogue, Shaman, Warlock, Warrior
						i(264320, {	-- Cache of Void-Touched Belts
							i(263591),	-- Void Rider's Girdle
							i(263600),	-- Voidwalker's Cord
							i(263609),	-- Voidrage Belt
							i(263619),	-- Void-Warder's Girdle
							i(263628),	-- Voidstalker's Belt
							i(263637),	-- Voidwind Belt
							i(263647),	-- Cord of the Void Acolyte
							i(263656),	-- Void's Judgment Belt
							i(263666),	-- Belt of Voidcendence
							i(263676),	-- Voidfang Belt
							i(263685),	-- Belt of Void Storms
							i(263695),	-- Void Nemesis' Belt
							i(263705),	-- Waistband of Voidwrath
						}),
						i(264322, {	-- Cache of Void-Touched Boots
							i(263586),	-- Void Rider's Sabatons
							i(263595),	-- Voidwalker's Sandals
							i(263604),	-- Voidrage Boots
							i(263614),	-- Void-Warder's Talons
							i(263623),	-- Voidstalker's Greaves
							i(263632),	-- Voidwind Boots
							i(263642),	-- Talons of the Void Acolyte
							i(263651),	-- Void's Judgment Sabatons
							i(263661),	-- Boots of Voidcendence
							i(263671),	-- Voidfang Boots
							i(263680),	-- Sabatons of Void Storms
							i(263690),	-- Void Nemesis' Boots
							i(263700),	-- Sabatons of Voidwrath
						}),
						i(264318, {	-- Cache of Void-Touched Bracers
							i(263593),	-- Void Rider's Vambraces
							i(263602),	-- Voidwalker's Bracers
							i(263611),	-- Voidrage Bracers
							i(263621),	-- Void-Warder's Vambraces
							i(263630),	-- Voidstalker's Bracers
							i(263639),	-- Voidwind Bindings
							i(263649),	-- Bindings of the Void Acolyte
							i(263658),	-- Void's Judgment Bindings
							i(263668),	-- Bindings of Voidcendence
							i(263678),	-- Voidfang Bracers
							i(263687),	-- Bracers of Void Storms
							i(263697),	-- Void Nemesis' Bracers
							i(263707),	-- Bracelets of Voidwrath
						}),
						i(264317, {	-- Cache of Void-Touched Chestpieces
							i(263585),	-- Void Rider's Breastplate
							i(263594),	-- Voidwalker's Harness
							i(263612),	-- Voidrage Chestguard
							i(263603),	-- Voidrage Robe
							i(263613),	-- Void-Warder's Breastplate
							i(263622),	-- Voidstalker's Breastplate
							i(263640),	-- Voidwind Blouse
							i(263631),	-- Voidwind Robes
							i(263641),	-- Vest of the Void Acolyte
							i(263650),	-- Void's Judgment Breastplate
							i(263669),	-- Blouse of Voidcendence
							i(263660),	-- Robes of Voidcendence
							i(263670),	-- Voidfang Chestpiece
							i(263679),	-- Breastplate of Void Storms
							i(263698),	-- Void Nemesis' Blouse
							i(263689),	-- Void Nemesis' Robes
							i(263699),	-- Breastplate of Voidwrath
						}),
						i(264316, {	-- Cache of Void-Touched Cloaks
							i(263592),	-- Void Rider's Cloak
							i(263601),	-- Voidwalker's Cloak
							i(263610),	-- Voidrage Cloak
							i(263620),	-- Void-Warder's Cloak
							i(263629),	-- Voidstalker's Cloak
							i(263638),	-- Voidwind Cloak
							i(263648),	-- Cloak of the Void Acolyte
							i(263657),	-- Void's Judgment Cloak
							i(263667),	-- Cloak of Voidcendence
							i(263677),	-- Voidfang Cloak
							i(263686),	-- Cloak of Void Storms
							i(263696),	-- Void Nemesis' Cloak
							i(263706),	-- Cloak of Voidwrath
						}),
						i(264319, {	-- Cache of Void-Touched Gloves
							i(263587),	-- Void Rider's Gloves
							i(263596),	-- Voidwalker's Gloves
							i(263605),	-- Voidrage Handguards
							i(263615),	-- Void-Warder's Claws
							i(263624),	-- Voidstalker's Gauntlets
							i(263633),	-- Voidwind Gloves
							i(263643),	-- Grips of the Void Acolyte
							i(263652),	-- Void's Judgment Gauntlets
							i(263662),	-- Handguards of Voidcendence
							i(263672),	-- Voidfang Gloves
							i(263681),	-- Gauntlets of Void Storms
							i(263691),	-- Void Nemesis' Gloves
							i(263701),	-- Gauntlets of Voidwrath
						}),
						i(264314, {	-- Cache of Void-Touched Headgear
							i(263588),	-- Void Rider's Helm
							i(263597),	-- Voidwalker's Skullcap
							i(263606),	-- Voidrage Cover
							i(263616),	-- Void-Warder's Crown
							i(263625),	-- Voidstalker's Helm
							i(263634),	-- Voidwind Crown
							i(263644),	-- Helm of the Void Acolyte
							i(263653),	-- Void's Judgment Crown
							i(263663),	-- Halo of Voidcendence
							i(263673),	-- Voidfang Hood
							i(263682),	-- Helmet of Void Storms
							i(263692),	-- Void Nemesis' Skullcap
							i(263702),	-- Helm of Voidwrath
						}),
						i(264321, {	-- Cache of Void-Touched Legwear
							i(263589),	-- Void Rider's Leggings
							i(263598),	-- Voidwalker's Leggings
							i(263607),	-- Voidrage Legguards
							i(263617),	-- Void-Warder's Legplates
							i(263626),	-- Voidstalker's Legguards
							i(263635),	-- Voidwind Pants
							i(263645),	-- Pants of the Void Acolyte
							i(263654),	-- Void's Judgment Legplates
							i(263659),	-- Void's Judgment Greaves
							i(263664),	-- Leggings of Voidcendence
							i(263674),	-- Voidfang Pants
							i(263683),	-- Kilt of Void Storms
							i(263688),	-- Greaves of Void Storms
							i(263693),	-- Void Nemesis' Leggings
							i(263694),	-- Void Nemesis' Spaulders
							i(263703),	-- Legplates of Voidwrath
						}),
						i(264315, {	-- Cache of Void-Touched Shoulderwear
							i(263590),	-- Void Rider's Pauldrons
							i(263599),	-- Voidwalker's Shoulderblades
							i(263608),	-- Voidrage Pauldrons
							i(263618),	-- Void-Warder's Pauldrons
							i(263627),	-- Voidstalker's Spaulders
							i(263636),	-- Voidwind Mantle
							i(263646),	-- Spaulders of the Void Acolyte
							i(263655),	-- Void's Judgment Spaulders
							i(263665),	-- Pauldrons of Voidcendence
							i(263675),	-- Voidfang Spaulders
							i(263684),	-- Epaulets of Void Storms
							i(263694),	-- Void Nemesis' Spaulders
							i(263704),	-- Pauldrons of Voidwrath
						}),
						i(264323, {	-- Cache of Void-Touched Weapons
							["cost"] = {
								{ "c", FIELD_ACCOLADE, 10 },
								{ "c", VOIDLIGHT_MARL, 200 },
							},
							["groups"] = {
								i(263946),	-- Void-Touched Basher
								i(263954),	-- Void-Touched Battle Baton
								i(263949),	-- Void-Touched Bulwark
								i(263963),	-- Void-Touched Dueling Blade
								i(263942),	-- Void-Touched Fang
								i(263960),	-- Void-Touched Flaredblade
								i(263968),	-- Void-Touched Foci
								i(263970),	-- Void-Touched Glaiveblade
								i(263966),	-- Void-Touched Greatblade
								i(263967),	-- Void-Touched Greatbow
								i(263969),	-- Void-Touched Greatwand
								i(263943),	-- Void-Touched Gutter
								i(263941),	-- Void-Touched Rifle
								i(263956),	-- Void-Touched Smasher
								i(263950),	-- Void-Touched Spade
								i(273874),	-- Void-Touched Sunfury Poleaxe
								i(263952),	-- Void-Touched Sunfury Stave
								i(263959),	-- Void-Touched Tome
							},
						}),
					}),
				}),
			}),
			--[[n(WORLD_QUESTS, sharedData({
				["isWorldQuest"] = true,
			}, {
			})),--]]
		}),
		n(RITUAL_SITES, {
			m(BROKEN_THRONE, {
				--["icon"] = ,
				["coord"] = { 29.6, 77.9, MAP.MIDNIGHT.ZULAMAN },
				["groups"] = {
					o(645183, {	-- Ethereal Treasure
						["coord"] = { 40.9, 56.5, BROKEN_THRONE },
						["groups"] = {
							i(271429),	-- Ethereal Treasure (QS!/QI!)
						},
					}),
					o(649209, {	-- Misplaced Ritual Candle
						["coord"] = { 51.5, 47.9, BROKEN_THRONE },
						["groups"] = {
							i(271999),	-- Misplaced Ritual Candle
						},
					}),
					o(645184, {	-- Sculpted Treasure
						["coord"] = { 47.7, 66.5, BROKEN_THRONE },
						["groups"] = {
							i(271430),	-- Sculpted Treasure (QS!/QI!)
						},
					}),
					i(269828, {	-- Void-Corrupted Eagle Talon (MOUNT!)
						["cost"] = { { "i", 271999, 1 }, },	-- 1x Misplaced Ritual Candle
					}),
				},
			}),
			m(DAGGERSPINE_LANDING, {
				--["icon"] = ,
				["coord"] = { 37.6, 65.3, MAP.MIDNIGHT.EVERSONG_WOODS },
				["groups"] = {
					i(271644),	-- Ember of Power (QS!/QI!)
					o(644396, {	-- Tainted Bone Pile
						["coord"] = { 66.6, 63.7, DAGGERSPINE_LANDING },
						["groups"] = {
							i(270562),	-- Tainted Sample (QS!/QI!)
						},
					}),
					o(645182, {	-- Crystalline Treasure
						--["coord"] = { X, Y, DAGGERSPINE_LANDING },
						["groups"] = {
							i(271428),	-- Crystalline Treasure (QS!/QI!)
						},
					}),
					o(645181, {	-- Exquisite Treasure
						["coord"] = { 58.8, 49.1, DAGGERSPINE_LANDING },
						["groups"] = {
							i(271427),	-- Exquisite Treasure (QS!/QI!)
						},
					}),
				},
			}),
			n(ACHIEVEMENTS, {	-- Achievements do not reward Mounts and Pets. They unlock the ability for you to buy them from the vendor.
				ach(62547),	-- Challenge: Embers
				ach(62544),	-- Challenge: Magical Alarm Bells
				ach(62545),	-- Challenge: Malevolent Boons
				ach(62542),	-- Challenge: Manifestations
				ach(62543),	-- Challenge: Patrols!
				ach(62546),	-- Challenge: Reinforced
				ach(62541),	-- Challenge: Tainted Corpses
				ach(62540),	-- Challenge: Tendrils
				ach(62621),	-- Challenging Sites
				ach(62560),	-- Ember Still Burning
				ach(62555),	-- Expert Challenge: Embers
				ach(62552),	-- Expert Challenge: Magical Alarm Bells
				ach(62553),	-- Expert Challenge: Malevolent Boons
				ach(62550),	-- Expert Challenge: Manifestations
				ach(62551),	-- Expert Challenge: Patrols!
				ach(62554),	-- Expert Challenge: Reinforced
				ach(62549),	-- Expert Challenge: Tainted Corpses
				ach(62548),	-- Expert Challenge: Tendrils
				ach(62559),	-- Malevolence Shrugged
				ach(62537),	-- Neighborhood Ritual Team: Broken Throne
				ach(62539),	-- Neighborhood Ritual Team: Daggerspine Point
				ach(62536),	-- Neighborhood Ritual Watch: Broken Throne
				ach(62538),	-- Neighborhood Ritual Watch: Daggerspine Point
				ach(62558),	-- Patrol Ambusher
				ach(62556),	-- Quick Reflexes
				ach(62561),	-- Reinforcement Obliteration
				ach(62622),	-- Ritual Renown
				ach(62530),	-- Ritual Site Achiever
				ach(62531),	-- Ritual Site Adept
				ach(62524),	-- Ritual Site Challenge: Broken Throne
				ach(62527),	-- Ritual Site Challenge: Daggerspine Point
				ach(62562, {	-- Ritual Site Disruptor
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						62621,	-- Challenging Sites
						62622,	-- Ritual Renown
						62452,	-- Ritual Sites 320: Ritual Items and Their Uses in Quel'thelas
					}},
				}),
				ach(62525),	-- Ritual Site Extreme: Broken Throne
				ach(62528),	-- Ritual Site Extreme: Daggerspine Point
				ach(62532),	-- Ritual Site Handler
				ach(62533),	-- Ritual Site Master
				ach(62523),	-- Ritual Site Mastery: Broken Throne
				ach(62526),	-- Ritual Site Mastery: Daggerspine Point
				ach(62534),	-- Ritual Site Rogue: Broken Throne
				ach(62535),	-- Ritual Site Rogue: Daggerspine Point
				ach(62529),	-- Ritual Site Starter
				ach(62521),	-- Ritual Site: Broken Throne
				ach(62522),	-- Ritual Site: Daggerspine Point
				ach(62450),	-- Ritual Sites 101: An Introduction to Basic Magical Rituals
				ach(62451),	-- Ritual Sites 200: Intermediate Ritual Practices
				ach(62452),	-- Ritual Sites 320: Ritual Items and Their Uses in Quel'thelas
				ach(62453),	-- Ritual Sites 415: Applied Ritual Strategies
				ach(62454),	-- Ritual Sites 505: A Seminar in Void Ritual Nuance
			}),
			n(EVENT_COMPLETION, {
				i(269817),	-- Ritual Site Challenge Report: Tendrils (QS!)
			}),
			n(QUESTS, {
				q(95551, {	-- Misappropriated Treasures
					["providers"] = {
						--TODO: could be only Exquisite Treasure as started of quest, not sure
						{ "i", 271428 },	-- Crystalline Treasure (QS!/QI!)
						{ "i", 271429 },	-- Ethereal Treasure (QS!/QI!)
						{ "i", 271427 },	-- Exquisite Treasure (QS!/QI!)
						{ "i", 271430 },	-- Sculpted Treasure (QS!/QI!)
					},
				}),
				q(95547, {	-- Ritual Site Challenge Report: Tendrils
					["provider"] = { "i", 269817 },	-- Ritual Site Challenge Report: Tendrils (QS!)
				}),
				q(95548, {	-- Tainted Sample
					["provider"] = { "i", 270562 },	-- Tainted Sample (QS!/QI!)
				}),
				q(95554, {	-- Questionable Power
					["provider"] = { "i", 271644 },	-- Ember of Power (QS!/QI!)
				}),
			}),
			n(REWARDS, {
				currency(3429),	-- Ritual Site Reports
				i(271787),	-- Field Accolades
				i(271786),	-- Ritual Site Reports
				i(271973),	-- Ritual Spoils (on Broken Throne UI)
				i(271785),	-- Ritual Spoils (on Daggerspine Landing UI)
			}),
		}),
	}),
}))

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(VOID_ASSAULTS, {
		["timeline"] = { ADDED_12_0_5 },
		["groups"] = {
			n(QUESTS, {
				q(92589),	-- <DNT> Last Scenario Step Quest, Triggers after completing any Void Ritual
				q(94456),	-- <DNT> Last Scenario Step Quest, Triggers after completing a Void Incursion
			}),
		},
	}),
}))
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(RITUAL_SITES, {
		["timeline"] = { ADDED_12_0_5 },
		["groups"] = {
			n(QUESTS, {
				-- Daggerspine Landing
				q(95823),	-- after looting chest (Lady Selen'vjar Ritual Chest) in the end first time (of day & week), could be push quest for questID 95547 (Ritual Site Challenge Report: Tendrils)
				q(96146),	-- Dark Obelisk @ 66.3, 38.9, DAGGERSPINE_LANDING
				q(96147),	-- Dark Obelisk @ 64.7, 50.0, DAGGERSPINE_LANDING
				q(96148),	-- Dark Obelisk @ 61.9, 62.1, DAGGERSPINE_LANDING
				q(96149),	-- Dark Obelisk @ 63.8, 70.5, DAGGERSPINE_LANDING
				q(96150),	-- Dark Obelisk @ 39.5, 76.2, DAGGERSPINE_LANDING
				q(96151),	-- Dark Obelisk @ 35.0, 63.8, DAGGERSPINE_LANDING
				q(96152),	-- Dark Obelisk @ 50.4, 42.8, DAGGERSPINE_LANDING
				q(96153),	-- Dark Obelisk @ 44.8, 47.4, DAGGERSPINE_LANDING
				q(96154),	-- Dark Obelisk @ 42.5, 57.0, DAGGERSPINE_LANDING
			}),
		},
	}),
}))
