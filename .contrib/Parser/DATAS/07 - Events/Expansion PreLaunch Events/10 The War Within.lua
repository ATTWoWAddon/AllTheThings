-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
local RESIDUAL_MEMORIES = 3089;
root(ROOTS.WorldEvents, n(EXPANSION_PRELAUNCH, bubbleDown({ ["timeline"] = { ADDED_11_0_0, REMOVED_TWW_LAUNCH } }, {
	expansion(EXPANSION.TWW, {
		n(ACHIEVEMENTS, {
			ach(40796),	-- This Takes Me Back
		}),
		n(BONUS_OBJECTIVES, {
			["description"] = "Can drop randomly from boss and memory events, Recruit drops respect usability but Dalaran Defender drops do not.",
			["maps"] = { DUSTWALLOW_MARSH, DRAGONBLIGHT, SEARING_GORGE },
			["sym"] = {	-- Symlink all armor and weapons from the Vendor
				{"select","npcID",223710},{"pop"},	-- Rememberance Amuul
				{"whereany","filterID",BACK_F,CLOTH,FINGER_F,LEATHER,MAIL,NECK_F,PLATE,TRINKET_F},{"finalize"},
				{"select","npcID",223710},{"pop"},	-- Rememberance Amuul
				{"where","headerID",WEAPONS},
			},
			["groups"] = bubbleDownFiltered({
				["sharedDescription"] = "These items only drop if your character is below Level 70 and on the correct armor/weapon type.\nExample: A Rogue will receive leather items and 1-handed weapons, but not bows.",
			},FILTERFUNC_itemID,{
				n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["races"] = ALLIANCE_ONLY },{
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
				n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["races"] = HORDE_ONLY },{
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
				i(226256, { -- Token of the Remembrancers
					["description"] = "Drops once per week per character.",
					["sym"] = {
						{"select","npcID",223710},{"pop"},	-- Rememberance Amuul
						{"whereany","filterID",BACK_F,CLOTH,FINGER_F,LEATHER,MAIL,NECK_F,PLATE,TRINKET_F},{"finalize"},
						{"select","npcID",223710},{"pop"},	-- Rememberance Amuul
						{"where","headerID",WEAPONS},
					},
				}),
				i(223646),	-- Memory of the Eastern Kingdoms
			}),
			m(KALIMDOR, {
				i(226256, { -- Token of the Remembrancers
					["description"] = "Drops once per week per character.",
					["sym"] = {
						{"select","npcID",223710},{"pop"},	-- Rememberance Amuul
						{"whereany","filterID",BACK_F,CLOTH,FINGER_F,LEATHER,MAIL,NECK_F,PLATE,TRINKET_F},{"finalize"},
						{"select","npcID",223710},{"pop"},	-- Rememberance Amuul
						{"where","headerID",WEAPONS},
					},
				}),
				i(223644),	-- Memory of Kalimdor
			}),
			m(NORTHREND, {
				i(226256, { -- Token of the Remembrancers
					["description"] = "Drops once per week per character.",
					["sym"] = {
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
				["maps"] = { LEGION_DALARAN, 629 },
				["isBreadcrumb"] = true,
			}),
			q(82540, {	-- Memories of Adventures Past
				-- ["sourceQuests"] = { 80500 },	-- The Bronzebeard Family (TODO: could be some additional hqt in future or will be up due to warbound change?)
				["sourceQuests"] = { 82539 },	-- Radiant Echoes
				["provider"] = { "n", 213627 },	-- Archmage Khadgar
				["coord"] = { 42.9, 59.7, 629 },	-- Legion Dalaran, Aegwynn's Gallery
			}),
			q(82689, {	-- Only Darkness
				["provider"] = { "n", 224373 },	-- Echo of the Silver Hand
				["coord"] = { 59.5, 52.0, DRAGONBLIGHT },
				["isDaily"] = true,
				["groups"] = {
					currency(RESIDUAL_MEMORIES),
				},
			}),
			q(78938, {	-- Champion of the Waterlords
				["provider"] = { "n", 214399 },	-- Memory of a Duke
				["coord"] = { 43.6, 67.3, SEARING_GORGE },
				["isDaily"] = true,
				["groups"] = {
					currency(RESIDUAL_MEMORIES),
				},
			}),
			q(82676, {	-- Broken Masquerade
				["provider"] = { "n", 224367 },	-- Forgotten Hero
				["coord"] = { 45.5, 57.7, DUSTWALLOW_MARSH },
				["isDaily"] = true,
				["groups"] = {
					currency(RESIDUAL_MEMORIES),
				},
			}),
		}),
		n(SPECIAL, {
			i(219325, {	-- Band of Radiant Echoes (HEIRLOOM!)
				["cost"] = {
					{"i", 223647, 1},	-- 1x Lifeless Stone Ring
					{"i", 223645, 1},	-- 1x Essence of the Eastern Kingdoms
					{"i", 223643, 1},	-- 1x Essence of Kalimdor
					{"i", 223641, 1},	-- 1x Essence of Northrend
				},
			}),
			i(223645, {	-- Essence of the Eastern Kingdoms
				["cost"] = {{"i", 223646, 20}},	-- 20x Memory of the Eastern Kingdoms
			}),
			i(223643, {	-- Essence of Kalimdor
				["cost"] = {{"i", 223644, 20}},	-- 20x Memory of Kalimdor
			}),
			i(223641, {	-- Essence of Northrend
				["cost"] = {{"i", 223642, 20}},	-- 20x Memory of Northrend
			}),
		}),
		n(VENDORS, {
			n(223710, {	-- Rememberance Amuul
				["coord"] = { 33.3, 84.6, 629 },	-- Legion Dalaran, Aegwynn's Gallery
				["groups"] = {
					filter(MISC, {
						i(218033, {	-- Defender's Hefty Satchel
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
						i(223647, {	-- Lifeless Stone Ring
							["cost"] = {{"c", RESIDUAL_MEMORIES, 25}},
						}),
						i(219243, {	-- Recruit's Reagent Bag
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
					}),
					filter(MOUNTS, {
						i(217985, {	-- Remembered Golden Gryphon [A] (MOUNT!)
							["cost"] = {{"c", RESIDUAL_MEMORIES, 20000}},
							["races"] = ALLIANCE_ONLY,
						}),
						i(217987, {	-- Remembered Wind Rider [H] (MOUNT!)
							["cost"] = {{"c", RESIDUAL_MEMORIES, 20000}},
							["races"] = HORDE_ONLY,
						}),
					}),
					filter(BATTLE_PETS, {
						i(218245, {	-- Remembered Construct (PET!)
							["cost"] = {{"c", RESIDUAL_MEMORIES, 10000}},
						}),
						i(218086, {	-- Remembered Riverpaw (PET!)
							["cost"] = {{"c", RESIDUAL_MEMORIES, 10000}},
						}),
						i(218246, {	-- Remembered Spawn (PET!)
							["cost"] = {{"c", RESIDUAL_MEMORIES, 10000}},
						}),
					}),
					filter(BACK_F, {
						i(218078, {	-- Dalaran Defender's Cape
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
						i(218080, {	-- Dalaran Defender's Cloak
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
						i(218081, {	-- Dalaran Defender's Drape
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
						i(218079, {	-- Dalaran Defender's Shawl
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
					}),
					filter(CLOTH, {
						i(218053, {	-- Dalaran Defender's Clasps
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
						i(218050, {	-- Dalaran Defender's Coronet
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(218052, {	-- Dalaran Defender's Greatbelt
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
						i(218051, {	-- Dalaran Defender's Leggings
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(218048, {	-- Dalaran Defender's Loafers
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
						i(218054, {	-- Dalaran Defender's Mantle
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
						i(218049, {	-- Dalaran Defender's Mitts
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
						i(218047, {	-- Dalaran Defender's Robes
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
					}),
					filter(FINGER_F, {
						i(223635, {	-- Dalaran Defender's Favor
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
						i(223634, {	-- Ring of Returning Memories
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
					}),
					filter(LEATHER, {
						i(218059, {	-- Dalaran Defender's Buckle
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
						i(218056, {	-- Dalaran Defender's Grips
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
						i(218057, {	-- Dalaran Defender's Mask
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(218058, {	-- Dalaran Defender's Pants
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(218062, {	-- Dalaran Defender's Shoulderblades
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
						i(218055, {	-- Dalaran Defender's Treads
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
						i(218061, {	-- Dalaran Defender's Tunic
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(218060, {	-- Dalaran Defender's Wraps
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
					}),
					filter(MAIL, {
						i(218077, {	-- Dalaran Defender's Armguards
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
						i(218076, {	-- Dalaran Defender's Cinch
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
						i(218070, {	-- Dalaran Defender's Chainmail
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(218075, {	-- Dalaran Defender's Epaulets
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
						i(218072, {	-- Dalaran Defender's Grips
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
						i(218073, {	-- Dalaran Defender's Helmet
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(218074, {	-- Dalaran Defender's Legguards
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(218071, {	-- Dalaran Defender's Stompers
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
					}),
					filter(NECK_F, {
						i(223637, {	-- Pendant of the Mage City
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
						i(223636, {	-- Remembrancer's Radiant Jewels
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
					}),
					filter(PLATE, {
						i(218065, {	-- Dalaran Defender's Boots
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
						i(218069, {	-- Dalaran Defender's Bracers
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
						i(218064, {	-- Dalaran Defender's Breastplate
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(218068, {	-- Dalaran Defender's Clasp
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
						i(218066, {	-- Dalaran Defender's Gauntlets
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
						i(218006, {	-- Dalaran Defender's Greaves
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(218063, {	-- Dalaran Defender's Helm
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(218067, {	-- Dalaran Defender's Spaulders
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3500}},
						}),
					}),
					filter(TRINKET_F, {
						i(223513, {	-- Faded Ebony Scale
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
						i(223509, {	-- Shriveled Ancient Tentacle
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
						i(220304, {	-- Weathered Northrend Sigil
							["cost"] = {{"c", RESIDUAL_MEMORIES, 2000}},
						}),
					}),
					n(WEAPONS, {
						i(219244, {	-- Dalaran Defender's Aegis
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3000}},
						}),
						i(219229, {	-- Dalaran Defender's Battleaxe
							["cost"] = {{"c", RESIDUAL_MEMORIES, 4000}},
						}),
						i(219238, {	-- Dalaran Defender's Battlestaff
							["cost"] = {{"c", RESIDUAL_MEMORIES, 8000}},
						}),
						i(219235, {	-- Dalaran Defender's Blade
							["cost"] = {{"c", RESIDUAL_MEMORIES, 4000}},
						}),
						i(219232, {	-- Dalaran Defender's Bolter
							["cost"] = {{"c", RESIDUAL_MEMORIES, 8000}},
						}),
						i(219240, {	-- Dalaran Defender's Broadsword
							["cost"] = {{"c", RESIDUAL_MEMORIES, 8000}},
						}),
						i(219231, {	-- Dalaran Defender's Carver
							["cost"] = {{"c", RESIDUAL_MEMORIES, 4000}},
						}),
						i(219241, {	-- Dalaran Defender's Club
							["cost"] = {{"c", RESIDUAL_MEMORIES, 8000}},
						}),
						i(219236, {	-- Dalaran Defender's Conduit
							["cost"] = {{"c", RESIDUAL_MEMORIES, 3000}},
						}),
						i(219249, {	-- Dalaran Defender's Crusher
							["cost"] = {{"c", RESIDUAL_MEMORIES, 4000}},
						}),
						i(219252, {	-- Dalaran Defender's Dagger
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(219253, {	-- Dalaran Defender's Dirk
							["cost"] = {{"c", RESIDUAL_MEMORIES, 4000}},
						}),
						i(219239, {	-- Dalaran Defender's Greatsword
							["cost"] = {{"c", RESIDUAL_MEMORIES, 8000}},
						}),
						i(219242, {	-- Dalaran Defender's Hammer
							["cost"] = {{"c", RESIDUAL_MEMORIES, 8000}},
						}),
						i(219230, {	-- Dalaran Defender's Hatchet
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(219245, {	-- Dalaran Defender's Impaler
							["cost"] = {{"c", RESIDUAL_MEMORIES, 8000}},
						}),
						i(219248, {	-- Dalaran Defender's Mace
							["cost"] = {{"c", RESIDUAL_MEMORIES, 4000}},
						}),
						i(219251, {	-- Dalaran Defender's Sabre
							["cost"] = {{"c", RESIDUAL_MEMORIES, 4000}},
						}),
						i(219250, {	-- Dalaran Defender's Scepter
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(219246, {	-- Dalaran Defender's Spear
							["cost"] = {{"c", RESIDUAL_MEMORIES, 8000}},
						}),
						i(219234, {	-- Dalaran Defender's Spellblade
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
						i(219237, {	-- Dalaran Defender's Spire
							["cost"] = {{"c", RESIDUAL_MEMORIES, 8000}},
						}),
						i(219247, {	-- Dalaran Defender's Wand
							["cost"] = {{"c", RESIDUAL_MEMORIES, 5000}},
						}),
					}),
				},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_0 } }, {
	n(EXPANSION_PRELAUNCH, {
		n(QUESTS, {
			q(82687),	-- Triggered after 'Only Darkness' (questID 82689)
			q(82688),	-- Triggered after 'Only Darkness' (questID 82689)
			q(84083),	-- First Radiant 'boss' (of the week?) rewarding a Champion piece per character
		}),
		q(82416),	-- Summoning Remembered Riverpaw for the first time
	}),
})));
