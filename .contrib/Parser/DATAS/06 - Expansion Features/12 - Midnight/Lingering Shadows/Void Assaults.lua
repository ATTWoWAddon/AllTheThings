-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

local FIELD_ACCOLADE = 3405;
local DARK_PARTICLE = 267051;
local LEVELING_BOX_SYM = {
	{"select","headerID",VOID_ASSAULTS},{"pop"},
	{"where","headerID",EVENT_COMPLETION},{"pop"},
	{"where","headerID",LEVELING_CHARACTERS},{"pop"},
}
local COSMETIC_BOX_SYM = {
	{"select","headerID",VOID_ASSAULTS},{"pop"},
	{"where","headerID",EVENT_COMPLETION},{"pop"},
	{"where","filterID",COSMETIC},{"pop"},
}
local COSMETIC_AND_LEVELING_BOX_SYM = {
	{"select","headerID",VOID_ASSAULTS},{"pop"},
	{"where","headerID",EVENT_COMPLETION},{"pop"},
	{"where","filterID",COSMETIC},{"finalize"},

	{"select","headerID",VOID_ASSAULTS},{"pop"},
	{"select","headerID",EVENT_COMPLETION},{"pop"},
	{"where","headerID",LEVELING_CHARACTERS},{"pop"},
}

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MID, {
	["groups"] = sharedData({
		["maps"] = {
			MAP.MIDNIGHT.EVERSONG_WOODS,
			MAP.MIDNIGHT.ZULAMAN,
		},
		["timeline"] = { ADDED_12_0_5 },
	}, {
		header(HEADERS.Achievement, 41052, {	-- Lingering Shadows
			n(VOID_ASSAULTS, {
				n(ACHIEVEMENTS, {	-- Achievements do not reward Mounts and Pets. They unlock the ability for you to buy them from the vendor.
					ach(62574),	-- Accolade to Rest
					ach(62573),	-- Air Traffic Controller
					ach(62572),	-- Battery Bombardment
					ach(62518),	-- Cosmic Exterminator
					ach(62570, {	-- Cosmic Slayer
						["crs"] = {
							252609,	-- Void-Corrupted Dart Frog
							263912,	-- Void-Corrupted Springclaw Patriarch
						},
					}),
					ach(62571, {	-- Everybody Gets One
						["crs"] = {
							264269,	-- Brilliant Hawkstrider
							264270,	-- Gloombelly Toad
						},
					}),
					ach(63325, {	-- Omnium Folio Studies
						["timeline"] = { ADDED_12_0_7 },
						["maps"] = {
							MAP.MIDNIGHT.EVERSONG_WOODS,
							MAP.MIDNIGHT.ISLE_OF_QUELDANAS,
							MAP.MIDNIGHT.SILVERMOON_CITY,
						},
						["groups"] = { i(276083) },	-- Sunstrider Omnium Simulacrum (DECOR!)
					}),
					ach(62513),	-- Outstanding in the Field
					ach(62569),	-- Traces in the Dark
					ach(62606, {	-- The Sunstrider Omnium
						["timeline"] = { ADDED_12_0_7 },
						["maps"] = {
							MAP.MIDNIGHT.EVERSONG_WOODS,
							MAP.MIDNIGHT.ISLE_OF_QUELDANAS,
							MAP.MIDNIGHT.SILVERMOON_CITY,
						},
					}),
					ach(62498, {	-- Void Assault: Eversong
						["maps"] = { MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					ach(62499, {	-- Void Assault: Zul'Aman
						["maps"] = { MAP.MIDNIGHT.ZULAMAN },
					}),
					ach(62509, {	-- Void Bane: Eversong
						["maps"] = { MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					ach(62512, {	-- Void Bane: Zul'Aman
						["maps"] = { MAP.MIDNIGHT.ZULAMAN },
					}),
					ach(62508, {	-- Void Eradicator: Eversong
						["maps"] = { MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					ach(62511, {	-- Void Eradicator: Zul'Aman
						["maps"] = { MAP.MIDNIGHT.ZULAMAN },
					}),
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
					ach(62507, {	-- Void Smasher: Eversong
						["maps"] = { MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					ach(62510, {	-- Void Smasher: Zul'Aman
						["maps"] = { MAP.MIDNIGHT.ZULAMAN },
					}),
				}),
				n(DROPS, {
					i(268809),	-- Enchanted Naga Scroll (QS!)
					i(266448),	-- Hal'hadar Battery Core (QS!)
					i(268808),	-- Permafrosted Keystone (QS!)
					i(268807),	-- Torn Twilight Missive (QS!)
				}),
				n(EVENT_COMPLETION, {
					filter(BATTLE_PETS, {
						i(270990, {	-- Curious Lynx Kitten (PET!)
							["description"] = "This pet can drop only during Void Assault in Eversong Woods.",
						}),
						i(270988, {	-- Wriggling Capybara (PET!)
							["description"] = "This pet can drop only during Void Assault in Zul'Aman.",
						}),
					}),
					filter(COSMETIC, {
						i(271013),	-- Adherent's Wriggling Backstabber (COSMETIC!)
						i(270992),	-- Amani Hex Crest (COSMETIC!)
						i(271028),	-- Amani War Spear (COSMETIC!)
						i(271037),	-- Battle Shaman's Ritual Staff (COSMETIC!)
						i(271041),	-- Blade of the Deeplurk Honorguard (COSMETIC!)
						i(270997),	-- Blood Oath Tome (COSMETIC!)
						i(271045),	-- Crystal Focus Spellslinger (COSMETIC!)
						i(271008),	-- Cultist's Sacrificial Kris (COSMETIC!)
						i(271039),	-- Curved Blade of the Drained Loa (COSMETIC!)
						i(271009),	-- Daggerspine Trident Tine (COSMETIC!)
						i(271015),	-- Deep Fathom Claw (COSMETIC!)
						i(271018),	-- Deepcrawler Pincher (COSMETIC!)
						i(271004),	-- Deepcrawler Recurve Bow (COSMETIC!)
						i(271027),	-- Deeplurk Battle Trident (COSMETIC!)
						i(271026),	-- Deeplurk Myrmidon's Trident (COSMETIC!)
						i(271044),	-- Deeplurk Shock Wand (COSMETIC!)
						i(271035),	-- Deeplurk Sorceress' Stave (COSMETIC!)
						i(270994),	-- Deepsea Behemoth Scale (COSMETIC!)
						i(271024),	-- Diseased Piranha Fetish (COSMETIC!)
						i(271029),	-- Fathom-Coral Lightstaff (COSMETIC!)
						i(270998),	-- Fetish of the Vanquished Foe (COSMETIC!)
						i(270999),	-- Forest Berserker's Hatchet (COSMETIC!)
						i(271050),	-- Forest Hunter's Quiver (COSMETIC!)
						i(271036),	-- Forest Shaman's Voodoo Staff (COSMETIC!)
						i(271006),	-- Forest Stalker's Bow (COSMETIC!)
						i(271012),	-- Forest Tiki Twinblade (COSMETIC!)
						i(271011),	-- Frostdeep Spider's Fang (COSMETIC!)
						i(271010),	-- Glistening Sin'dorei Twinblade (COSMETIC!)
						i(271016),	-- Golden Phoenix's Beak (COSMETIC!)
						i(271001),	-- Greataxe of the Forest Tribe (COSMETIC!)
						i(270996),	-- Hex-Horn Buckler (COSMETIC!)
						i(271030),	-- Living Stave of the Deepdweller (COSMETIC!)
						i(271021),	-- Loa Battle Font (COSMETIC!)
						i(271042),	-- Myrmidon's Cutlass (COSMETIC!)
						i(272144),	-- Onyx Bloodknight Bladestaff (COSMETIC!)
						i(271031),	-- Onyx Bloodknight Stave (COSMETIC!)
						i(271038),	-- Ornate Blade of the Royal Guard (COSMETIC!)
						i(271020),	-- Phoenix Wing Basher (COSMETIC!)
						i(271022),	-- Ritual Overseer's Mace (COSMETIC!)
						i(271034),	-- Ritual Overseer's Polestaff (COSMETIC!)
						i(271049),	-- Ritual Weaver's Spellstick (COSMETIC!)
						i(270995),	-- Sin'dorei Crystal Focus (COSMETIC!)
						i(271019),	-- Sin'dorei Magister's Gavel (COSMETIC!)
						i(271033),	-- Skull-Bearer's Ritual Stave (COSMETIC!)
						i(271047),	-- Spell-Infused Wriggling Tentacles (COSMETIC!)
						i(270991),	-- Sunfury Great Bulwark (COSMETIC!)
						i(271003),	-- Sunfury Phoenix Bow (COSMETIC!)
						i(271023),	-- Swingable Piranha (COSMETIC!)
						i(271032),	-- Tiki-Bearer's Ritual Staff (COSMETIC!)
						i(271043),	-- Twilight Assassin's Glaive (COSMETIC!)
						i(271002),	-- Twilight Berserker's Cleaver (COSMETIC!)
						i(270993),	-- Twilight Blade Barrier (COSMETIC!)
						i(271040),	-- Twilight Captain's Short Sword (COSMETIC!)
						i(271025),	-- Twilight Guardian's Maul (COSMETIC!)
						i(271000),	-- Twilight Gut Ripper (COSMETIC!)
						i(271007),	-- Twilight Ritualist's Stiletto (COSMETIC!)
						i(271014),	-- Twilight Scout's Sticher (COSMETIC!)
						i(271017),	-- Twilight Slug Belcher (COSMETIC!)
						i(271005),	-- Violet Thalassian Greatbow (COSMETIC!)
						i(271046),	-- Voodoo Hex Stick (COSMETIC!)
						i(271048),	-- Wriggling Tentacle Fetish (COSMETIC!)
					}),
					n(LEVELING_CHARACTERS, {
						n(ARMOR, {
							n(BACK, {
								i(270966),	-- Ranger Recruit's Cloak
							}),
							filter(CLOTH, {
								i(270944),	-- Ranger Recruit's Crown
								i(270959),	-- Ranger Recruit's Cuffs
								i(270953),	-- Ranger Recruit's Mantle
								i(270942),	-- Ranger Recruit's Mitts
								i(270948),	-- Ranger Recruit's Pants
								i(270936),	-- Ranger Recruit's Robes
								i(270956),	-- Ranger Recruit's Sash
								i(270968),	-- Ranger Recruit's Slippers
							}),
							filter(FINGER_F, {
								i(270964),	-- Ranger Recruit's Loop
								i(270963),	-- Ranger Recruit's Ring
							}),
							filter(LEATHER, {
								i(270958),	-- Ranger Recruit's Belt
								i(270940),	-- Ranger Recruit's Gloves
								i(270946),	-- Ranger Recruit's Hood
								i(270939),	-- Ranger Recruit's Jerkin
								i(270951),	-- Ranger Recruit's Shoulderpads
								i(270950),	-- Ranger Recruit's Tights
								i(270970),	-- Ranger Recruit's Treads
								i(270962),	-- Ranger Recruit's Wraps
							}),
							filter(MAIL, {
								i(270969),	-- Ranger Recruit's Boots
								i(270949),	-- Ranger Recruit's Breeches
								i(270938),	-- Ranger Recruit's Chainmail
								i(270943),	-- Ranger Recruit's Grips
								i(270945),	-- Ranger Recruit's Helmet
								i(270954),	-- Ranger Recruit's Spaulders
								i(270957),	-- Ranger Recruit's Waistguard
								i(270961),	-- Ranger Recruit's Wristguards
							}),
							filter(NECK_F, {
								i(270965),	-- Ranger Recruit's Chain
							}),
							filter(PLATE, {
								i(270937),	-- Ranger Recruit's Breastplate
								i(270941),	-- Ranger Recruit's Gauntlets
								i(270955),	-- Ranger Recruit's Girdle
								i(270967),	-- Ranger Recruit's Helm
								i(270947),	-- Ranger Recruit's Legguards
								i(270952),	-- Ranger Recruit's Pauldrons
								i(270935),	-- Ranger Recruit's Sabatons
								i(270960),	-- Ranger Recruit's Vambraces
							}),
							filter(TRINKET_F, {
								i(270986),	-- Ranger Recruit's Medallion
							}),
						}),
						n(WEAPONS, {
							i(270975),	-- Ranger Recruit's Acolyte's Blade
							i(270983),	-- Ranger Recruit's Battle Stave
							i(270974),	-- Ranger Recruit's Blade
							i(270985),	-- Ranger Recruit's Cleaver
							i(270981),	-- Ranger Recruit's Fetish
							i(270976),	-- Ranger Recruit's Glaive
							i(270979),	-- Ranger Recruit's Longbow
							i(270972),	-- Ranger Recruit's Mace
							i(270977),	-- Ranger Recruit's Polearm
							i(270978),	-- Ranger Recruit's Shield
							i(270973),	-- Ranger Recruit's Skullcracker
							i(270971),	-- Ranger Recruit's Spellblade
							i(270984),	-- Ranger Recruit's Staff
							i(270982),	-- Ranger Recruit's Stiletto
							i(270980),	-- Ranger Recruit's Wand
						}),
					}),
					-- Currencies
					currency(FIELD_ACCOLADE),
					i(DARK_PARTICLE),
					-- Boxes given to Max Level Characters
					i(270933, {	-- Bulging Field Pouch
						["sym"] = COSMETIC_BOX_SYM,
					}),
					i(270244),	-- Field Pouch
					i(270247, {	-- Field Satchel
						["sym"] = {
							{ "select", "itemID", 270990 },{ "finalize" },	-- Curious Lynx Kitten (PET!)
							{ "select", "itemID", 270988 },{ "finalize" },	-- Wriggling Capybara (PET!)
							unpack(COSMETIC_BOX_SYM),
						},
					}),
					i(270932, {	-- Wriggling Field Pouch
						["sym"] = { { "select", "itemID",
							270990,	-- Curious Lynx Kitten (PET!)
							270988,	-- Wriggling Capybara (PET!)
						}},
					}),
					-- Boxes given to Leveling Characters
					i(271222, {	-- Bulging Recruit's Field Pouch
						["description"] = "Earned with characters under level 90.",
						["sym"] = COSMETIC_AND_LEVELING_BOX_SYM,
					}),
					i(270934, {	-- Recruit's Field Pouch
						["description"] = "Earned with characters under level 90.",
						["sym"] = LEVELING_BOX_SYM,
					}),
					i(270987, {	-- Recruit's Field Satchel
						["description"] = "Earned with characters under level 90.",
						["sym"] = LEVELING_BOX_SYM,
					}),
					i(271221, {	-- Wriggling Recruit's Field Pouch
						["description"] = "Earned with characters under level 90.",
						["sym"] = {
							{ "select", "itemID", 270990 },{ "finalize" },	-- Curious Lynx Kitten (PET!)
							{ "select", "itemID", 270988 },{ "finalize" },	-- Wriggling Capybara (PET!)
							unpack(LEVELING_BOX_SYM),
						},
					}),
				}),
				n(QUESTS, {
					q(94380, {	-- Ranger Captain's Summons
						["qg"] = 257459,	-- Farstrider Scout
						["coord"] = { 49.4, 65.5, MAP.MIDNIGHT.SILVERMOON_CITY },
						["isBreadcrumb"] = true,
					}),
					q(96080, {	-- Void Strike
						["sourceQuest"] = 94380,	-- Ranger Captain's Summons
						["qg"] = 257411,	-- Ranger Captain Lilatha
						["coord"] = { 48.1, 49.7, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							-- Box given to Max Level Characters
							i(264914),	-- Ranger's Cache
							-- Box given to Leveling Characters
							i(272125, {	-- Recruit's Cache
								["sym"] = LEVELING_BOX_SYM,
							}),
						},
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
					-- Repeatable Quests, Assaults are weekly per zone. 1 week is in Eversong, 1 week is in Zul'Aman
					q(94385, {	-- Void Assaults: Eversong Woods
						["sourceQuest"] = 94381,	-- Outfitting and Allies
						["qg"] = 257411,	-- Ranger Captain Lilatha
						["coord"] = { 48.1, 49.7, MAP.MIDNIGHT.SILVERMOON_CITY },
						["isWeekly"] = true,
						["groups"] = {
							-- Box given to Max Level Characters
							i(264914),	-- Ranger's Cache
							-- Box given to Leveling Characters
							i(272125, {	-- Recruit's Cache
								["sym"] = LEVELING_BOX_SYM,
							}),
						},
					}),
					q(94386, {	-- Void Assaults: Zul'Aman
						["sourceQuest"] = 94381,	-- Outfitting and Allies
						["qg"] = 257415,	-- Kul'amara the Fierce
						["coord"] = { 48.1, 49.9, MAP.MIDNIGHT.SILVERMOON_CITY },
						["isWeekly"] = true,
						["groups"] = {
							-- Box given to Max Level Characters
							i(264914),	-- Ranger's Cache
							-- Box given to Leveling Characters
							i(272125, {	-- Recruit's Cache
								["sym"] = LEVELING_BOX_SYM,
							}),
						},
					}),
					header(HEADERS.Achievement, 62569, {	-- Traces in the Dark
						q(94920, {	-- Hal'hadar Battery Core
							["provider"] = { "i", 266448 },	-- Hal'hadar Battery Core (QS!)
						}),
						q(95071, {	-- Enchanted Naga Scroll
							["provider"] = { "i", 268809 },	-- Enchanted Naga Scroll (QS!)
						}),
						q(95070, {	-- Permafrosted Keystone
							["provider"] = { "i", 268808 },	-- Permafrosted Keystone (QS!)
						}),
						q(95069, {	-- Torn Twilight Missive
							["provider"] = { "i", 268807 },	-- Torn Twilight Missive (QS!)
						}),
					}),
					header(HEADERS.Achievement, 62606, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_7 } }, {	-- The Sunstrider Omnium
						q(96223, {	-- The Magister's Call
							["qg"] = 265903,	-- Magister's Missive
							["coord"] = { 47.9, 62.8, MAP.MIDNIGHT.SILVERMOON_CITY },
						}),
						q(96224, {	-- The Magister's Conundrum
							["sourceQuest"] = 96223,	-- The Magister's Call
							["qg"] = 264063,	-- Magister Umbric
							["coord"] = { 38.9, 48.6, MAP.MIDNIGHT.SILVERMOON_CITY },
						}),
						q(96227, {	-- Lycaneum Chaos
							["sourceQuest"] = 96224,	-- The Magister's Conundrum
							["qg"] = 264066,	-- Grand Magister Rommath
							["coord"] = { 63.6, 14.0, 2649 },	-- The Lycaneum, Magister's Terrace
						}),
						q(96226, {	-- Omnium Anomalies
							["sourceQuest"] = 96224,	-- The Magister's Conundrum
							["qg"] = 264065,	-- Magister Umbric
							["coord"] = { 61.7, 13.4, 2649 },	-- The Lycaneum, Magister's Terrace
						}),
						q(96228, {	-- The Shadowed Spire
							["sourceQuests"] = {
								96227,	-- Lycaneum Chaos
								96226,	-- Omnium Anomalies
							},
							["qg"] = 264065,	-- Magister Umbric
							["coord"] = { 61.7, 13.4, 2649 },	-- The Lycaneum, Magister's Terrace
						}),
						q(96230, {	-- Unravelling the Wards
							["sourceQuests"] = {
								96227,	-- Lycaneum Chaos
								96226,	-- Omnium Anomalies
							},
							["qg"] = 264066,	-- Grand Magister Rommath
							["coord"] = { 63.6, 14.0, 2649 },	-- The Lycaneum, Magister's Terrace
						}),
						q(96231, {	-- Unravelling the Wards
							["sourceQuest"] = 96230,	-- Unravelling the Wards
							["qg"] = 264945,	-- Grand Magister Rommath
							["coord"] = { 58.9, 57.3, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
							["groups"] = { i(274261) },	-- Grand Magister's Key-Cipher (QI!)
						}),
						q(96229, {	-- The Void Reveals
							["sourceQuest"] = 96228,	-- The Shadowed Spire
							["qg"] = 264067,	-- Magister Umbric
							["coord"] = { 62.6, 63.1, MAP.MIDNIGHT.EVERSONG_WOODS },
							["groups"] = { i(274036) },	-- Void Magicule (QI!)
						}),
						q(96232, {	-- Return to the Omnium
							["sourceQuests"] = {
								96229,	-- The Void Reveals
								96231,	-- Unravelling the Wards
							},
							["qg"] = 264787,	-- Magister Umbric
							["coord"] = { 62.5, 62.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						}),
						q(96238, {	-- Return to the Omnium
							["sourceQuests"] = {
								96229,	-- The Void Reveals
								96231,	-- Unravelling the Wards
							},
							["qg"] = 264945,	-- Grand Magister Rommath
							["coord"] = { 58.9, 57.3, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
						}),
						q(96233, {	-- The Omnium Reawakens
							["sourceQuests"] = {
								96227,	-- Lycaneum Chaos
								96226,	-- Omnium Anomalies
							},
							["qg"] = 264066,	-- Grand Magister Rommath
							["coord"] = { 63.6, 13.8, 2649 },	-- The Lycaneum, Magister's Terrace
						}),
					})),
					header(HEADERS.Achievement, 63325, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_7 } }, {	-- Omnium Folio Studies
						q(96410, {	-- Seeking Knowledge: The Omnium Folio
							["sourceQuest"] = 96233,	-- The Omnium Reawakens
							["qg"] = 264069,	-- Magister Umbric
							["coord"] = { 60.4, 10.4, 2649 },	-- The Lycaneum, Magister's Terrace
						}),
						q(96831, {	-- Magister's Summons
							["sourceQuest"] = 96410,	-- Seeking Knowledge: The Omnium Folio
							["description"] = "You can accept this quest from your Adventure Journal after first weekly reset, following the completion of the previous 'Seeking Knowledge' quest.",	-- Or will it pop-up on first log-in when eligible?
							["isBreadcrumb"] = true,
							["isWeekly"] = true,	-- Unflags at first relog. This is a breadcrumb for all the 'Seeking Knowledge Week X of 5' quests.	-- Exo
						}),
						q(96441, {	-- Seeking Knowledge Week 2 of 5: Ritualized Arcana
							["sourceQuests"] = {
								96831,	-- Magister's Summons
								96410,	-- Seeking Knowledge: The Omnium Folio
							},
							["qg"] = 264069,	-- Magister Umbric
							["coord"] = { 60.4, 10.4, 2649 },	-- The Lycaneum, Magister's Terrace
							["groups"] = { i(274576) },	-- Ritualized Arcana (QI!)
						}),
						------ Stay awhile and listen ------
						hqt(97139, {	-- Stay awhile and listen: Grand Magister Rommath
							["name"] = "Stay awhile and listen: Grand Magister Rommath",
							["description"] = "Dialogue becomes available after completing 'Seeking Knowledge Week 2 of 5: Ritualized Arcana' (96441).",
							["sourceQuest"] = 96441,	-- Seeking Knowledge Week 2 of 5: Ritualized Arcana
							["qg"] = 264070,	-- Grand Magister Rommath
							["coord"] = { 59.7, 10.9, 2649 },	-- The Lycaneum, Magister's Terrace
						}),
						--
						q(96442, {	-- Seeking Knowledge Week 3 of 5: Leyline Assaults
							["sourceQuests"] = {
								96831,	-- Magister's Summons
								96441,	-- Seeking Knowledge Week 2 of 5: Ritualized Arcana
							},
							["qg"] = 264070,	-- Grand Magister Rommath
							["coord"] = { 59.7, 10.9, 2649 },	-- The Lycaneum, Magister's Terrace
							["groups"] = { i(274577) },	-- Dark-Ley Coalescence (QI!)
						}),
					})),
				}),
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(VOID_ASSAULTS, {
		["timeline"] = { ADDED_12_0_5 },
		["groups"] = {
			n(QUESTS, {
				q(92589, {["isRepeatable"] = true,}),	-- <DNT> Last Scenario Step Quest, Triggers after completing any Void Ritual
				q(94456, {["isRepeatable"] = true,}),	-- <DNT> Last Scenario Step Quest, Triggers after completing a Void Incursion
				q(96100, {["timeline"] = { ADDED_12_0_7 }}),	-- Triggered when accepting "Seeking Knowledge: The Omnium Folio' (96410)
			}),
		},
	}),
}));
