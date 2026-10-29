-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

local RESIDUAL_MEMORIES = 3089;

root(ROOTS.WorldEvents, n(EXPANSION_PRELAUNCH, {
	expansionHeader(EXPANSION.TWW, { ADDED_11_0_0, REMOVED_TWW_LAUNCH }, {
		n(ACHIEVEMENTS, {
			ach(40796),	-- This Takes Me Back
		}),
		n(BONUS_OBJECTIVES, {
			description = "Can drop randomly from boss and memory events, Recruit drops respect usability but Dalaran Defender drops do not.",
			maps = { DUSTWALLOW_MARSH, DRAGONBLIGHT, SEARING_GORGE },
			sym = {	-- Symlink all armor and weapons from the Vendor
				{"select","npcID",223710},{"pop"},	-- Rememberance Amuul
				{"whereany","filterID",BACK_F,CLOTH,FINGER_F,LEATHER,MAIL,NECK_F,PLATE,TRINKET_F},{"finalize"},
				{"select","npcID",223710},{"pop"},	-- Rememberance Amuul
				{"where","headerID",WEAPONS},
			},
			groups = bubbleDownFiltered({
				sharedDescription = "These items only drop if your character is below Level 70 and on the correct armor/weapon type.\nExample: A Rogue will receive leather items and 1-handed weapons, but not bows.",
			},FILTERFUNC_itemID,{
				n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ races = ALLIANCE_ONLY },{
					n(ARMOR, {
						filter(BACK_F, {
							i(218032),	-- Recruit's Sturdy Cape [A]
							i(218279),	-- Recruit's Sturdy Cloak [A]
							i(218258),	-- Recruit's Sturdy Drape [A]
							i(218297),	-- Recruit's Sturdy Wrap [A]
						}),
						filter(CLOTH, {
							i(218296),	-- Recruit's Sturdy Bindings [A]
							i(218293),	-- Recruit's Sturdy Breeches [A]
							i(218292),	-- Recruit's Sturdy Hood [A]
							i(218294),	-- Recruit's Sturdy Mantle [A]
							i(218291),	-- Recruit's Sturdy Mitts [A]
							i(218295),	-- Recruit's Sturdy Sash [A]
							i(218290),	-- Recruit's Sturdy Slippers [A]
							i(218289),	-- Recruit's Sturdy Robes [A]
						}),
						filter(FINGER_F, {
							i(223632),	-- Signet of Lion's Favor [A]
						}),
						filter(LEATHER, {
							i(218277),	-- Recruit's Sturdy Cincture [A]
							i(218276),	-- Recruit's Sturdy Epaulets [A]
							i(218273),	-- Recruit's Sturdy Gloves [A]
							i(218275),	-- Recruit's Sturdy Leggings [A]
							i(218274),	-- Recruit's Sturdy Mask [A]
							i(218271),	-- Recruit's Sturdy Raiment [A]
							i(218272),	-- Recruit's Sturdy Treads [A]
							i(218278),	-- Recruit's Sturdy Wristbands [A]
						}),
						filter(MAIL, {
							i(218257),	-- Recruit's Sturdy Bracers [A]
							i(218250),	-- Recruit's Sturdy Chainmail [A]
							i(218256),	-- Recruit's Sturdy Cinch [A]
							i(218253),	-- Recruit's Sturdy Cowl [A]
							i(218252),	-- Recruit's Sturdy Gauntlets [A]
							i(218254),	-- Recruit's Sturdy Kilt [A]
							i(218255),	-- Recruit's Sturdy Spaulders [A]
							i(218251),	-- Recruit's Sturdy Striders [A]
						}),
						filter(PLATE, {
							i(218025),	-- Recruit's Sturdy Chestplate [A]
							i(218027),	-- Recruit's Sturdy Crushers [A]
							i(218030),	-- Recruit's Sturdy Girdle [A]
							i(218028),	-- Recruit's Sturdy Greathelm [A]
							i(218024),	-- Recruit's Sturdy Greaves [A]
							i(218029),	-- Recruit's Sturdy Pauldrons [A]
							i(218026),	-- Recruit's Sturdy Stompers [A]
							i(218031),	-- Recruit's Sturdy Vambraces [A]
						}),
						filter(NECK_F, {
							i(223627),	-- Scout's Dog Tags [A]
							i(223628),	-- Marksman's Dog Tags [A]
						}),
						filter(TRINKET_F, {
							i(223507),	-- Recruit's Pocket Watch [A]
							i(223516),	-- Recruit's Trumpet [A]
						}),
					}),
					n(WEAPONS, {
						i(218315),	-- Recruit's Sturdy Bow [A]
						i(218323),	-- Recruit's Sturdy Crescent [A]
						i(218313),	-- Recruit's Sturdy Greatsword [A]
						i(218321),	-- Recruit's Sturdy Longblade [A]
						i(218319),	-- Recruit's Sturdy Mallet [A]
						i(218316),	-- Recruit's Sturdy Maul [A]
						i(218312),	-- Recruit's Sturdy Polearm [A]
						i(218318),	-- Recruit's Sturdy Rod [A]
						i(218322),	-- Recruit's Sturdy Saber [A]
						i(218320),	-- Recruit's Sturdy Shank [A]
						i(218317),	-- Recruit's Sturdy Shield [A]
						i(218314),	-- Recruit's Sturdy Tome [A]
					}),
				})),
				filter(FINGER_F, {
					i(223631),	-- Adventurer's Lucky Ring
				}),
				n(FACTION_HEADER_HORDE, bubbleDownSelf({ races = HORDE_ONLY },{
					n(ARMOR, {
						filter(BACK_F, {
							i(218041),	-- Recruit's Sturdy Cape [H]
							i(218288),	-- Recruit's Sturdy Cloak [H]
							i(218267),	-- Recruit's Sturdy Drape [H]
							i(218306),	-- Recruit's Sturdy Wrap [H]
						}),
						filter(CLOTH, {
							i(218305),	-- Recruit's Sturdy Bindings [H]
							i(218302),	-- Recruit's Sturdy Breeches [H]
							i(218301),	-- Recruit's Sturdy Hood [H]
							i(218303),	-- Recruit's Sturdy Mantle [H]
							i(218300),	-- Recruit's Sturdy Mitts [H]
							i(218304),	-- Recruit's Sturdy Sash [H]
							i(218299),	-- Recruit's Sturdy Slippers [H]
							i(218298),	-- Recruit's Sturdy Robes [H]
						}),
						filter(FINGER_F, {
							i(223633),	-- Signet of Wolf's Favor [H]
						}),
						filter(LEATHER, {
							i(218286),	-- Recruit's Sturdy Cincture [H]
							i(218285),	-- Recruit's Sturdy Epaulets [H]
							i(218282),	-- Recruit's Sturdy Gloves [H]
							i(218284),	-- Recruit's Sturdy Leggings [H]
							i(218283),	-- Recruit's Sturdy Mask [H]
							i(218280),	-- Recruit's Sturdy Raiment [H]
							i(218281),	-- Recruit's Sturdy Treads [H]
							i(218287),	-- Recruit's Sturdy Wristbands [H]
						}),
						filter(MAIL, {
							i(218266),	-- Recruit's Sturdy Bracers [H]
							i(218259),	-- Recruit's Sturdy Chainmail [H]
							i(218265),	-- Recruit's Sturdy Cinch [H]
							i(218262),	-- Recruit's Sturdy Cowl [H]
							i(218261),	-- Recruit's Sturdy Gauntlets [H]
							i(218263),	-- Recruit's Sturdy Kilt [H]
							i(218264),	-- Recruit's Sturdy Spaulders [H]
							i(218260),	-- Recruit's Sturdy Striders [H]
						}),
						filter(PLATE, {
							i(218034),	-- Recruit's Sturdy Chestplate [H]
							i(218036),	-- Recruit's Sturdy Crushers [H]
							i(218039),	-- Recruit's Sturdy Girdle [H]
							i(218037),	-- Recruit's Sturdy Greathelm [H]
							i(217991),	-- Recruit's Sturdy Greaves [H]
							i(218038),	-- Recruit's Sturdy Pauldrons [H]
							i(218035),	-- Recruit's Sturdy Stompers [H]
							i(218040),	-- Recruit's Sturdy Vambraces [H]
						}),
						filter(NECK_F, {
							i(223630),	-- Scout's War-Chain [H]
							i(223629),	-- Marksman's War-Chain [H]
						}),
						filter(TRINKET_F, {
							i(223517),	-- Recruit's Warhorn [H]
							i(223508),	-- Recruit's Whetstone [H]
						}),
					}),
					n(WEAPONS, {
						i(218327),	-- Recruit's Sturdy Bow [H]
						i(218335),	-- Recruit's Sturdy Crescent
						i(218325),	-- Recruit's Sturdy Greataxe [H]
						i(218333),	-- Recruit's Sturdy Longblade [H]
						i(218331),	-- Recruit's Sturdy Mallet [H]
						i(218328),	-- Recruit's Sturdy Maul [H]
						i(218324),	-- Recruit's Sturdy Polearm [H]
						i(218330),	-- Recruit's Sturdy Rod [H]
						i(218334),	-- Recruit's Sturdy Saber [H]
						i(218332),	-- Recruit's Sturdy Shank [H]
						i(218329),	-- Recruit's Sturdy Shield [H]
						i(218326),	-- Recruit's Sturdy Tome [H]
					}),
				})),
			}),
		}),
		n(BOSSES, {
			m(EASTERN_KINGDOMS, {
				i(226256, {	-- Token of the Remembrancers
					description = "Drops once per week per character.",
					sym = {
						{"select","npcID",223710},{"pop"},	-- Rememberance Amuul
						{"whereany","filterID",BACK_F,CLOTH,FINGER_F,LEATHER,MAIL,NECK_F,PLATE,TRINKET_F},{"finalize"},
						{"select","npcID",223710},{"pop"},	-- Rememberance Amuul
						{"where","headerID",WEAPONS},
					},
				}),
				i(223646),	-- Memory of the Eastern Kingdoms
			}),
			m(KALIMDOR, {
				i(226256, {	-- Token of the Remembrancers
					description = "Drops once per week per character.",
					sym = {
						{"select","npcID",223710},{"pop"},	-- Rememberance Amuul
						{"whereany","filterID",BACK_F,CLOTH,FINGER_F,LEATHER,MAIL,NECK_F,PLATE,TRINKET_F},{"finalize"},
						{"select","npcID",223710},{"pop"},	-- Rememberance Amuul
						{"where","headerID",WEAPONS},
					},
				}),
				i(223644),	-- Memory of Kalimdor
			}),
			m(NORTHREND, {
				i(226256, {	-- Token of the Remembrancers
					description = "Drops once per week per character.",
					sym = {
						{"select","npcID",223710},{"pop"},	-- Rememberance Amuul
						{"whereany","filterID",BACK_F,CLOTH,FINGER_F,LEATHER,MAIL,NECK_F,PLATE,TRINKET_F},{"finalize"},
						{"select","npcID",223710},{"pop"},	-- Rememberance Amuul
						{"where","headerID",WEAPONS},
					},
				}),
				i(223642),	-- Memory of Northrend
			}),
		}),
		n(QUESTS, {
			q(82539, {	-- Radiant Echoes
				maps = { LEGION_DALARAN, AEGWYNNS_GALLERY },
				isBreadcrumb = true
			}),
			q(82540, {	-- Memories of Adventures Past
				sourceQuest = 82539,	-- Radiant Echoes
				-- sourceQuests = { 80500 },	-- The Bronzebeard Family (TODO: could be some additional hqt in future or will be up due to warbound change?)
				provider = { "n", 213627 },	-- Archmage Khadgar
				coord = { 42.9, 59.7, AEGWYNNS_GALLERY },	-- Legion Dalaran, Aegwynn's Gallery
			}),
			q(82689, {	-- Only Darkness
				provider = { "n", 224373 },	-- Echo of the Silver Hand
				coord = { 59.5, 52.0, DRAGONBLIGHT },
				isDaily = true,
				groups = { currency(RESIDUAL_MEMORIES) },
			}),
			q(78938, {	-- Champion of the Waterlords
				provider = { "n", 214399 },	-- Memory of a Duke
				coord = { 43.6, 67.3, SEARING_GORGE },
				isDaily = true,
				groups = { currency(RESIDUAL_MEMORIES) },
			}),
			q(82676, {	-- Broken Masquerade
				provider = { "n", 224367 },	-- Forgotten Hero
				coord = { 45.5, 57.7, DUSTWALLOW_MARSH },
				isDaily = true,
				groups = { currency(RESIDUAL_MEMORIES) },
			}),
		}),
		n(SPECIAL, {
			i(219325, {	-- Band of Radiant Echoes (HEIRLOOM!)
				cost = {
					{ "i", 223647, 1 },	-- 1x Lifeless Stone Ring
					{ "i", 223645, 1 },	-- 1x Essence of the Eastern Kingdoms
					{ "i", 223643, 1 },	-- 1x Essence of Kalimdor
					{ "i", 223641, 1 },	-- 1x Essence of Northrend
				},
			}),
			i(223645, {	-- Essence of the Eastern Kingdoms
				cost = { { "i", 223646, 20 } },	-- 20x Memory of the Eastern Kingdoms
			}),
			i(223643, {	-- Essence of Kalimdor
				cost = { { "i", 223644, 20 } },	-- 20x Memory of Kalimdor
			}),
			i(223641, {	-- Essence of Northrend
				cost = { { "i", 223642, 20 } },	-- 20x Memory of Northrend
			}),
		}),
		n(VENDORS, {
			n(223710, {	-- Rememberance Amuul
				coord = { 33.3, 84.6, AEGWYNNS_GALLERY },	-- Legion Dalaran, Aegwynn's Gallery
				groups = {
					filter(MISC, {
						i(218033, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Defender's Hefty Satchel
						i(223647, { cost = { { "c", RESIDUAL_MEMORIES, 25 } } }),	-- Lifeless Stone Ring
						i(219243, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Recruit's Reagent Bag
					}),
					filter(MOUNTS, {
						i(217985, { cost = { { "c", RESIDUAL_MEMORIES, 20000 } }, races = ALLIANCE_ONLY }),	-- Remembered Golden Gryphon [A] (MOUNT!)
						i(217987, { cost = { { "c", RESIDUAL_MEMORIES, 20000 } }, races = HORDE_ONLY }),	-- Remembered Wind Rider [H] (MOUNT!)
					}),
					filter(BATTLE_PETS, {
						i(218245, { cost = { { "c", RESIDUAL_MEMORIES, 10000 } } }),	-- Remembered Construct (PET!)
						i(218086, { cost = { { "c", RESIDUAL_MEMORIES, 10000 } } }),	-- Remembered Riverpaw (PET!)
						i(218246, { cost = { { "c", RESIDUAL_MEMORIES, 10000 } } }),	-- Remembered Spawn (PET!)
					}),
					filter(BACK_F, {
						i(218078, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Dalaran Defender's Cape
						i(218080, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Dalaran Defender's Cloak
						i(218081, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Dalaran Defender's Drape
						i(218079, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Dalaran Defender's Shawl
					}),
					filter(CLOTH, {
						i(218053, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Dalaran Defender's Clasps
						i(218050, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Coronet
						i(218052, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Greatbelt
						i(218051, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Leggings
						i(218048, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Loafers
						i(218054, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Mantle
						i(218049, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Mitts
						i(218047, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Robes
					}),
					filter(FINGER_F, {
						i(223635, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Dalaran Defender's Favor
						i(223634, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Ring of Returning Memories
					}),
					filter(LEATHER, {
						i(218059, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Buckle
						i(218056, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Grips
						i(218057, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Mask
						i(218058, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Pants
						i(218062, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Shoulderblades
						i(218055, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Treads
						i(218061, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Tunic
						i(218060, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Dalaran Defender's Wraps
					}),
					filter(MAIL, {
						i(218077, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Dalaran Defender's Armguards
						i(218076, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Cinch
						i(218070, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Chainmail
						i(218075, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Epaulets
						i(218072, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Grips
						i(218073, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Helmet
						i(218074, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Legguards
						i(218071, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Stompers
					}),
					filter(NECK_F, {
						i(223637, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Pendant of the Mage City
						i(223636, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Remembrancer's Radiant Jewels
					}),
					filter(PLATE, {
						i(218065, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Boots
						i(218069, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Dalaran Defender's Bracers
						i(218064, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Breastplate
						i(218068, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Clasp
						i(218066, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Gauntlets
						i(218006, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Greaves
						i(218063, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Helm
						i(218067, { cost = { { "c", RESIDUAL_MEMORIES, 3500 } } }),	-- Dalaran Defender's Spaulders
					}),
					filter(TRINKET_F, {
						i(223513, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Faded Ebony Scale
						i(223509, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Shriveled Ancient Tentacle
						i(220304, { cost = { { "c", RESIDUAL_MEMORIES, 2000 } } }),	-- Weathered Northrend Sigil
					}),
					n(WEAPONS, {
						i(219244, { cost = { { "c", RESIDUAL_MEMORIES, 3000 } } }),	-- Dalaran Defender's Aegis
						i(219229, { cost = { { "c", RESIDUAL_MEMORIES, 4000 } } }),	-- Dalaran Defender's Battleaxe
						i(219238, { cost = { { "c", RESIDUAL_MEMORIES, 8000 } } }),	-- Dalaran Defender's Battlestaff
						i(219235, { cost = { { "c", RESIDUAL_MEMORIES, 4000 } } }),	-- Dalaran Defender's Blade
						i(219232, { cost = { { "c", RESIDUAL_MEMORIES, 8000 } } }),	-- Dalaran Defender's Bolter
						i(219240, { cost = { { "c", RESIDUAL_MEMORIES, 8000 } } }),	-- Dalaran Defender's Broadsword
						i(219231, { cost = { { "c", RESIDUAL_MEMORIES, 4000 } } }),	-- Dalaran Defender's Carver
						i(219241, { cost = { { "c", RESIDUAL_MEMORIES, 8000 } } }),	-- Dalaran Defender's Club
						i(219236, { cost = { { "c", RESIDUAL_MEMORIES, 3000 } } }),	-- Dalaran Defender's Conduit
						i(219249, { cost = { { "c", RESIDUAL_MEMORIES, 4000 } } }),	-- Dalaran Defender's Crusher
						i(219252, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Dagger
						i(219253, { cost = { { "c", RESIDUAL_MEMORIES, 4000 } } }),	-- Dalaran Defender's Dirk
						i(219239, { cost = { { "c", RESIDUAL_MEMORIES, 8000 } } }),	-- Dalaran Defender's Greatsword
						i(219242, { cost = { { "c", RESIDUAL_MEMORIES, 8000 } } }),	-- Dalaran Defender's Hammer
						i(219230, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Hatchet
						i(219245, { cost = { { "c", RESIDUAL_MEMORIES, 8000 } } }),	-- Dalaran Defender's Impaler
						i(219248, { cost = { { "c", RESIDUAL_MEMORIES, 4000 } } }),	-- Dalaran Defender's Mace
						i(219251, { cost = { { "c", RESIDUAL_MEMORIES, 4000 } } }),	-- Dalaran Defender's Sabre
						i(219250, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Scepter
						i(219246, { cost = { { "c", RESIDUAL_MEMORIES, 8000 } } }),	-- Dalaran Defender's Spear
						i(219234, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Spellblade
						i(219237, { cost = { { "c", RESIDUAL_MEMORIES, 8000 } } }),	-- Dalaran Defender's Spire
						i(219247, { cost = { { "c", RESIDUAL_MEMORIES, 5000 } } }),	-- Dalaran Defender's Wand
					}),
				},
			}),
		}),
	}),
}))

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	n(EXPANSION_PRELAUNCH, {
		n(QUESTS, sharedData({ timeline = { ADDED_11_0_0, REMOVED_TWW_LAUNCH } }, {
			q(82687),	-- Triggered after 'Only Darkness' (questID 82689)
			q(82688),	-- Triggered after 'Only Darkness' (questID 82689)
			q(84083),	-- First Radiant 'boss' (of the week?) rewarding a Champion piece per character
		})),
	}),
}))
