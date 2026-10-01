--------------------------------------------
--       E V E N T S    M O D U L E       --
--------------------------------------------
--[[
root(ROOTS.WorldEvents, {
	n(createHeader({
		readable = "The Scourge Invasion",
		icon = 135228,
		text = {
			en = "Scourge Invasion",
			-- TODO: de = "",
			es = "Invasión de la plaga",
			mx = "Invasión de la plaga",
			-- TODO: fr = "",
			-- TODO: it = "",
			-- TODO: ko = "",
			-- TODO: pt = "",
			ru = "Вторжение Плети",
			cn = "天灾入侵",
			tw = "天譴軍團入侵",
		},
		description = {
			en = "The Scourge Invasion was a world event in Patch 1.11 and again during the Wrath of the Lich King Pre-Patch during 3.0.1 that heralded the opening of Naxxramas, the citadel of the dreaded Kel'Thuzad.\n\nSeveral regions of Azeroth came under attack by Scourge forces. Members of the Argent Dawn organized a worldwide counter to the Scourge invasion, keeping an eye out for any necropolis sightings and passing on their information to all adventurers willing to aid them in their struggle.\n\nWith each victory against the Scourge, the defense grows stronger. As more and more invasion attempts are beaten back by the defenders, the Argent Dawn will be able to bestow increasingly more powerful blessings upon those fighting the invaders. If the mortal races focus on clearing the Scourge camps all over the world that have sprung up beneath each necropolis, perhaps the invasion can effectively be halted or even repelled. Those who wish to take up arms against the undead invaders should speak with a representative of the Argent Dawn to learn what regions need help and how the defense is holding up.",
			cn = "天灾入侵是1.11补丁中的一项世界事件，并在巫妖王之怒前置补丁3.0.1中再度开启，预示着令人闻风丧胆的克尔苏加德的要塞 ——纳克萨玛斯即将开放。\n\n艾泽拉斯的多个地区遭到了天灾军团部队的袭击。银色黎明的成员组织了一场对抗天灾入侵的全球反击，他们密切监视着任何浮空死灵城堡的动向，并将情报分享给所有愿意投身这场战斗的冒险者。\n\n每一次对天灾军团的胜利，都会让防线愈发坚固。随着越来越多的入侵企图被守军击退，银色黎明将为抗击入侵者的勇士们赋予越来越强大的祝福。\n\n如果凡人们齐心协力，清除散落在世界各地、每一座浮空死灵城堡下方出现的天灾营地，这场入侵或许就能被有效遏制，甚至彻底击退。\n\n凡有意拿起武器对抗亡灵入侵者的勇士，可与银色黎明的代表交谈，了解哪些地区需要支援，以及防线当前的状况。",
		},
	}), {
		["maps"] = {
			MAP.AZSHARA,
			MAP.BLASTED_LANDS,
			MAP.BURNING_STEPPES,
			MAP.EASTERN_PLAGUELANDS,
			MAP.TANARIS,
			MAP.WINTERSPRING,
		},
		["groups"] = {
			n(QUESTS, {
				{	-- Argent Dawn Gloves
					["allianceQuestData"] = q(9094, {	-- Argent Dawn Gloves [A]
						["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
						["coords"] = {
							{ 54.7, 62.2, MAP.STORMWIND_CITY },
							{ 34.0, 66.4, MAP.IRONFORGE },
							{ 64.3, 44.5, MAP.DARNASSUS },
							{ 81.0, 59.8, MAP.EASTERN_PLAGUELANDS },
						},
					}),
					["hordeQuestData"] = q(9333, {	-- Argent Dawn Gloves [H]
						["qg"] = 16787,	-- Argent Outfitter <The Argent Dawn>
						["coords"] = {
							{ 43.7, 52.6, MAP.THUNDER_BLUFF },
							{ 52.5, 73.7, MAP.ORGRIMMAR },
							{ 49.9, 29.4, MAP.UNDERCITY },
							{ 80.8, 59.6, MAP.EASTERN_PLAGUELANDS },
						},
					}),
					["sourceQuest"] = 9153,	-- Under the Shadow
					["cost"] = { { "i", 22484, 30 } },	-- Necrotic Rune
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(23084),	-- Gloves of Undead Cleansing
						i(23081),	-- Handwraps of Undead Slaying
						i(23082),	-- Handguards of Undead Slaying
						i(23078),	-- Gauntlets of Undead Slaying
					},
				},
				{	-- Blessed Wizard Oil
					["allianceQuestData"] = q(9318, {	-- Blessed Wizard Oil [A]
						["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
						["coords"] = {
							{ 54.7, 62.2, MAP.STORMWIND_CITY },
							{ 34.0, 66.4, MAP.IRONFORGE },
							{ 64.3, 44.5, MAP.DARNASSUS },
							{ 81.0, 59.8, MAP.EASTERN_PLAGUELANDS },
						},
					}),
					["hordeQuestData"] = q(9334, {	-- Blessed Wizard Oil [H]
						["qg"] = 16787,	-- Argent Outfitter <The Argent Dawn>
						["coords"] = {
							{ 43.7, 52.6, MAP.THUNDER_BLUFF },
							{ 52.5, 73.7, MAP.ORGRIMMAR },
							{ 49.9, 29.4, MAP.UNDERCITY },
							{ 80.8, 59.6, MAP.EASTERN_PLAGUELANDS },
						},
					}),
					["sourceQuest"] = 9153,	-- Under the Shadow
					["cost"] = { { "i", 22484, 8 } },	-- Necrotic Rune
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(23123),	-- Blessed Wizard Oil
					},
				},
				{	-- Consecrated Sharpening Stones
					["allianceQuestData"] = q(9317, {	-- Consecrated Sharpening Stones [A]
						["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
						["coords"] = {
							{ 54.7, 62.2, MAP.STORMWIND_CITY },
							{ 34.0, 66.4, MAP.IRONFORGE },
							{ 64.3, 44.5, MAP.DARNASSUS },
							{ 81.0, 59.8, MAP.EASTERN_PLAGUELANDS },
						},
					}),
					["hordeQuestData"] = q(9335, {	-- Consecrated Sharpening Stones [H]
						["qg"] = 16787,	-- Argent Outfitter <The Argent Dawn>
						["coords"] = {
							{ 43.7, 52.6, MAP.THUNDER_BLUFF },
							{ 52.5, 73.7, MAP.ORGRIMMAR },
							{ 49.9, 29.4, MAP.UNDERCITY },
							{ 80.8, 59.6, MAP.EASTERN_PLAGUELANDS },
						},
					}),
					["sourceQuest"] = 9153,	-- Under the Shadow
					["cost"] = { { "i", 22484, 8 } },	-- Necrotic Rune
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(23122),	-- Consecrated Sharpening Stone
					},
				},
				q(9292, {	-- Cracked Necrotic Crystal
					["description"] = "If you hear the yell across the city that they've invaded the Park, head for the canals between the Keep and the Park, that is where the elite abomination will be (heading from the Park to the Keep on the north side of the canal).\n\nWhen he dies, the crystal appears above his corpse and everyone (of the appropriate level) can click on it and get the quest regardless of who tagged him first.",
					["providers"] = {
						{ "n", 16431 },	-- Cracked Necrotic Crystal
						{ "i", 22949 },	-- Cracked Necrotic Crystal
					},
					["maps"] = { MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["lvl"] = 1,
					["groups"] = {
						i(23123),	-- Blessed Wizard Oil
						i(23122),	-- Consecrated Sharpening Stone
					},
				}),
				q(9304, {	-- Document from the Front
					["providers"] = {
						{ "i", 22975 },	-- A Smudged Document
						{ "i", 22948 },	-- A Smudged Document
					},
					["lvl"] = 45,
				}),
				q(9301, {	-- Envelope from the Front
					["providers"] = {
						{ "i", 22970 },	-- A Bloodstained Envelope
						{ "i", 22930 },	-- A Bloodstained Envelope
					},
					["lvl"] = 45,
				}),
				q(9310, {	-- Faint Necrotic Crystal
					["description"] = "If you hear the yell across the city that they've invaded the Sewers, head for the canals between the Sewers and the Royal Quarter, that is where the elite abomination will be.\n\nWhen he dies, the crystal appears above his corpse and everyone (of the appropriate level) can click on it and get the quest regardless of who tagged him first.",
					["providers"] = {
						{ "n", 16531 },	-- Faint Necrotic Crystal
						{ "i", 22950 },	-- Faint Necrotic Crystal
					},
					["maps"] = { MAP.TIRISFAL_GLADES, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["lvl"] = 1,
					["groups"] = {
						i(23123),	-- Blessed Wizard Oil
						i(23122),	-- Consecrated Sharpening Stone
					},
				}),
				q(9262, {	-- Investigate the Scourge of Darnassus
					["qg"] = 16495,	-- Lieutenant Beitha <The Argent Dawn>
					["coord"] = { 77.7, 42.7, MAP.DARNASSUS },
					["maps"] = { MAP.TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["lvl"] = 1,
					["groups"] = {
						objective(1, {	-- 0/3 Dim Necrotic Stone
							["provider"] = { "i", 22892 },	-- Dim Necrotic Stone
							["crs"] = {
								16423,	-- Spectral Apparition
								16422,	-- Skeletal Soldier
								16437,	-- Spectral Spirit
								16438,	-- Skeletal Trooper
							},
						}),
					},
				}),
				q(9261, {	-- Investigate the Scourge of Ironforge
					["qg"] = 16484,	-- Lieutenant Nevell <The Argent Dawn>
					["coord"] = { 53.2, 35.0, MAP.DUN_MOROGH },
					["maps"] = { MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["lvl"] = 1,
					["groups"] = {
						objective(1, {	-- 0/3 Dim Necrotic Stone
							["provider"] = { "i", 22892 },	-- Dim Necrotic Stone
							["crs"] = {
								16423,	-- Spectral Apparition
								16422,	-- Skeletal Soldier
								16437,	-- Spectral Spirit
								16438,	-- Skeletal Trooper
							},
						}),
					},
				}),
				q(9263, {	-- Investigate the Scourge of Orgrimmar
					["qg"] = 16493,	-- Lieutenant Dagel <The Argent Dawn>
					["coord"] = { 51.7, 83.3, MAP.ORGRIMMAR },
					["maps"] = { MAP.DUROTAR },
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["lvl"] = 1,
					["groups"] = {
						objective(1, {	-- 0/3 Dim Necrotic Stone
							["provider"] = { "i", 22892 },	-- Dim Necrotic Stone
							["crs"] = {
								16423,	-- Spectral Apparition
								16422,	-- Skeletal Soldier
								16437,	-- Spectral Spirit
								16438,	-- Skeletal Trooper
							},
						}),
					},
				}),
				q(9260, {	-- Investigate the Scourge of Stormwind
					["qg"] = 16478,	-- Lieutenant Orrin <The Argent Dawn>
					["coord"] = { 63.8, 75.5, MAP.STORMWIND_CITY },
					["maps"] = { MAP.ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["isYearly"] = true,
					["lvl"] = 1,
					["groups"] = {
						objective(1, {	-- 0/3 Dim Necrotic Stone
							["provider"] = { "i", 22892 },	-- Dim Necrotic Stone
							["crs"] = {
								16423,	-- Spectral Apparition
								16422,	-- Skeletal Soldier
								16437,	-- Spectral Spirit
								16438,	-- Skeletal Trooper
							},
						}),
					},
				}),
				q(9265, {	-- Investigate the Scourge of the Undercity
					["qg"] = 16494,	-- Lieutenant Rukag <The Argent Dawn>
					["coord"] = { 66.2, 21.4, MAP.UNDERCITY },
					["maps"] = { MAP.TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["lvl"] = 1,
					["groups"] = {
						objective(1, {	-- 0/3 Dim Necrotic Stone
							["provider"] = { "i", 22892 },	-- Dim Necrotic Stone
							["crs"] = {
								16423,	-- Spectral Apparition
								16422,	-- Skeletal Soldier
								16437,	-- Spectral Spirit
								16438,	-- Skeletal Trooper
							},
						}),
					},
				}),
				q(9264, {	-- Investigate the Scourge of Thunder Bluff
					["qg"] = 16490,	-- Lieutenant Lisande <The Argent Dawn>
					["coord"] = { 33.1, 59.9, MAP.THUNDER_BLUFF },
					["maps"] = { MAP.MULGORE },
					["races"] = HORDE_ONLY,
					["isYearly"] = true,
					["lvl"] = 1,
					["groups"] = {
						objective(1, {	-- 0/3 Dim Necrotic Stone
							["provider"] = { "i", 22892 },	-- Dim Necrotic Stone
							["crs"] = {
								16423,	-- Spectral Apparition
								16422,	-- Skeletal Soldier
								16437,	-- Spectral Spirit
								16438,	-- Skeletal Trooper
							},
						}),
					},
				}),
				q(9295, {	-- Letter from the Front
					["providers"] = {
						{ "i", 22977 },	-- A Torn Letter
						{ "i", 22932 },	-- A Torn Letter
					},
					["lvl"] = 45,
				}),
				q(9154, {	-- Light's Hope Chapel
					["providers"] = {
						{ "n", 16241 },	-- Argent Recruiter <The Argent Dawn>
						{ "n", 16255 },	-- Argent Scout <The Argent Dawn>
						{ "i", 22595 },	-- Call to Arms Announcement
					},
					["coords"] = {
						{ 64.5, 44.2, MAP.DARNASSUS },
						{ 77.3, 42.8, MAP.DARNASSUS },
						{ 53.1, 35.0, MAP.DUN_MOROGH },
						{ 35.3, 68.7, MAP.IRONFORGE },
						{ 53.1, 73.6, MAP.ORGRIMMAR },
						{ 51.7, 83.6, MAP.ORGRIMMAR },
						{ 55.0, 62.0, MAP.STORMWIND_CITY },
						{ 64.1, 75.0, MAP.STORMWIND_CITY },
						{ 32.9, 60.1, MAP.THUNDER_BLUFF },
						{ 43.5, 53.2, MAP.THUNDER_BLUFF },
						{ 49.5, 32.1, MAP.UNDERCITY },
						{ 65.9, 21.4, MAP.UNDERCITY },
					},
					["isYearly"] = true,
					["lvl"] = 50,
				}),
				{	-- Major Healing Potion
					["allianceQuestData"] = q(9321, {	-- Major Healing Potion [A]
						["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
						["coords"] = {
							{ 54.7, 62.2, MAP.STORMWIND_CITY },
							{ 34.0, 66.4, MAP.IRONFORGE },
							{ 64.3, 44.5, MAP.DARNASSUS },
							{ 81.0, 59.8, MAP.EASTERN_PLAGUELANDS },
						},
					}),
					["hordeQuestData"] = q(9336, {	-- Major Healing Potion [H]
						["qg"] = 16787,	-- Argent Outfitter <The Argent Dawn>
						["coords"] = {
							{ 43.7, 52.6, MAP.THUNDER_BLUFF },
							{ 52.5, 73.7, MAP.ORGRIMMAR },
							{ 49.9, 29.4, MAP.UNDERCITY },
							{ 80.8, 59.6, MAP.EASTERN_PLAGUELANDS },
						},
					}),
					["sourceQuest"] = 153,	-- Under the Shadow
					["cost"] = { { "i", 22484, 15 } },	-- Necrotic Rune
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(13446),	-- Major Healing Potion
					},
				},
				{	-- Major Mana Potion
					["allianceQuestData"] = q(9337, {	-- Major Mana Potion [A]
						["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
						["coords"] = {
							{ 54.7, 62.2, MAP.STORMWIND_CITY },
							{ 34.0, 66.4, MAP.IRONFORGE },
							{ 64.3, 44.5, MAP.DARNASSUS },
							{ 81.0, 59.8, MAP.EASTERN_PLAGUELANDS },
						},
					}),
					["hordeQuestData"] = q(9320, {	-- Major Mana Potion [H]
						["qg"] = 16787,	-- Argent Outfitter <The Argent Dawn>
						["coords"] = {
							{ 43.7, 52.6, MAP.THUNDER_BLUFF },
							{ 52.5, 73.7, MAP.ORGRIMMAR },
							{ 49.9, 29.4, MAP.UNDERCITY },
							{ 80.8, 59.6, MAP.EASTERN_PLAGUELANDS },
						},
					}),
					["sourceQuest"] = 9153,	-- Under the Shadow
					["cost"] = { { "i", 22484, 15 } },	-- Necrotic Rune
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(13444),	-- Major Mana Potion
					},
				},
				q(9302, {	-- Missive from the Front
					["providers"] = {
						{ "i", 22973 },	-- A Crumpled Missive
						{ "i", 22944 },	-- A Crumpled Missive
					},
					["lvl"] = 45,
				}),
				q(9299, {	-- Note from the Front
					["providers"] = {
						{ "i", 22972 },	-- A Careworn Note
						{ "i", 22945 },	-- A Careworn Note
					},
					["lvl"] = 45,
				}),
				q(9300, {	-- Page from the Front
					["providers"] = {
						{ "i", 22974 },	-- A Ragged Page
						{ "i", 22946 },	-- A Ragged Page
					},
					["lvl"] = 45,
				}),
				q(9085, {	-- Shadows of Doom
					["qg"] = 16361,	-- Commander Thomas Helleran <The Argent Dawn>
					["coord"] = { 81.1, 60.6, MAP.EASTERN_PLAGUELANDS },
					["isYearly"] = true,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Shadow of Doom slain
							["provider"] = { "n", 16143 },	-- Shadow of Doom
						}),
						i(23123),	-- Blessed Wizard Oil
						i(23122),	-- Consecrated Sharpening Stone
					},
				}),
				{	-- Tabard of the Argent Dawn
					["allianceQuestData"] = q(9341, {	-- Tabard of the Argent Dawn [A]
						["qg"] = 16786,	-- Argent Quartermaster <The Argent Dawn>
						["coords"] = {
							{ 54.7, 62.2, MAP.STORMWIND_CITY },
							{ 34.0, 66.4, MAP.IRONFORGE },
							{ 64.3, 44.5, MAP.DARNASSUS },
							{ 81.0, 59.8, MAP.EASTERN_PLAGUELANDS },
						},
					}),
					["hordeQuestData"] = q(9343, {	-- Tabard of the Argent Dawn [H]
						["qg"] = 16787,	-- Argent Outfitter <The Argent Dawn>
						["coords"] = {
							{ 43.7, 52.6, MAP.THUNDER_BLUFF },
							{ 52.5, 73.7, MAP.ORGRIMMAR },
							{ 49.9, 29.4, MAP.UNDERCITY },
							{ 80.8, 59.6, MAP.EASTERN_PLAGUELANDS },
						},
					}),
					["sourceQuest"] = 9153,	-- Under the Shadow
					["cost"] = { { "i", 22484, 10 } },	-- Necrotic Rune
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(22999),	-- Tabard of the Argent Dawn
					},
				},
				q(9247, {	-- The Keeper's Call
					["description"] = "You should receive this in the mail at level 60.",
					["providers"] = {
						{ "n", 16281 },	-- Keeper of the Rolls <The Argent Dawn>
						{ "i", 22723 },	-- A Letter from the Keeper of the Rolls [You get this in the mail.]
					},
					["coord"] = { 81.1, 60.5, MAP.EASTERN_PLAGUELANDS },
					["isYearly"] = true,
					["lvl"] = 60,
					["groups"] = {
						i(23123),	-- Blessed Wizard Oil
						i(23122),	-- Consecrated Sharpening Stone
					},
				}),
				q(9153, {	-- Under the Shadow
					["qg"] = 16361,	-- Commander Thomas Helleran <The Argent Dawn>
					["coord"] = { 81.1, 60.6, MAP.EASTERN_PLAGUELANDS },
					["cost"] = { { "i", 22484, 10 } },	-- Necrotic Rune
					["isYearly"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(23123),	-- Blessed Wizard Oil
						i(23122),	-- Consecrated Sharpening Stone
					},
				}),
			}),
			n(14684, {	-- Balzaphon
				["description"] = "Located in Stratholme.\n\nCan be found wandering in a circle around the fountain in the courtyard.",
				["maps"] = { MAP.STRATHOLME },
				["groups"] = {
					i(23124),	-- Staff of Balzaphon
					i(23125),	-- Chains of the Lich
					i(23126),	-- Waistband of Balzaphon
				},
			}),
			n(14686, {	-- Lady Falther'ess
				["description"] = "Located in Razorfen Downs.\n\nCan be found inside one of the prison cells, before the skeleton pile. Looks like a human female until you talk to her upon she transforms into a Banshee.",
				["maps"] = { MAP.RAZORFEN_DOWNS },
				["groups"] = {
					i(23177),	-- Lady Falther'ess' Finger
					i(23178),	-- Mantle of Lady Falther'ess
				},
			}),
			n(14695, {	-- Lord Blackwood
				["description"] = "Located in Scholomance.\n\nCan be found in the room just before the plagued hatchlings.",
				["maps"] = { MAP.SCHOLOMANCE },
				["groups"] = {
					i(23156),	-- Blackwood's Thigh
					i(23132),	-- Lord Blackwood's Blade
					i(23139),	-- Lord Blackwood's Buckler
				},
			}),
			n(14690, {	-- Revanchion
				["description"] = "Located in Dire Maul West.\n\nCan be found in the corridor above and behind Tendris Warpwood, the same one Magister Kalendris is in.",
				["maps"] = { MAP.DIRE_MAUL },
				["groups"] = {
					i(23127),	-- Cloak of Revanchion
					i(23129),	-- Bracers of Mending
					i(23128),	-- The Shadow's Grasp
				},
			}),
			n(14693, {	-- Scorn
				["description"] = "Located in Scarlet Monastery Graveyard.\n\nHe patrols the graveyard after killing the last boss.",
				["maps"] = { MAP.SCARLET_MONASTERY },
				["groups"] = {
					i(23168),	-- Scorn's Focal Dagger
					i(23169),	-- Scorn's Icy Choker
					i(23170),	-- The Frozen Clutch
				},
			}),
			n(14682, {	-- Sever
				["description"] = "Located in Shadowfang Keep.\n\nCan be found in the room up the ramp to the right of the entrance to the Butcher's room in the courtyard.",
				["maps"] = { MAP.SHADOWFANG_KEEP },
				["groups"] = {
					i(23171),	-- The Axe of Severing
					i(23173),	-- Abomination Skin Leggings
				},
			}),
			n(16143, {	-- Shadow of Doom
				["description"] = "To summon this mob, speak to the cultist and give them 8 runes. This will automatically tag that mob for your group.",
				["cost"] = { { "i", 22484, 8 } },	-- Necrotic Rune
				["groups"] = {
					i(22484),	-- Necrotic Rune
					i(23087),	-- Breastplate of Undead Slaying
					i(23088),	-- Chestguard of Undead Slaying
					i(23085),	-- Robe of Undead Cleansing
					i(23089),	-- Tunic of Undead Slaying
				},
			}),
			n(ZONE_DROPS, {
				["crs"] = {
					16383,	-- Flameshocker
					16141,	-- Ghoul Berserker
					16299,	-- Skeletal Shocktrooper
					16298,	-- Spectral Soldier
				},
				["groups"] = {
					i(22484),	-- Necrotic Rune
					i(22970),	-- A Bloodstained Envelope
					i(22972),	-- A Careworn Note
					i(22973),	-- A Crumpled Missive
					i(22974),	-- A Ragged Page
					i(22975),	-- A Smudged Document
					i(22977),	-- A Torn Letter
				},
			}),
			n(RARES, {
				["crs"] = {
					16380,	-- Bone Witch
					14697,	-- Lumbering Horror
					16379,	-- Spirit of the Damned
				},
				["groups"] = {
					i(23091),	-- Bracers of Undead Cleansing
					i(23093),	-- Wristwraps of Undead Slaying
					i(23092),	-- Wristguards of Undead Slaying
					i(23090),	-- Bracers of Undead Slaying
				},
			}),
			n(REWARDS, {
				["description"] = "The reports are mailed to you about 48 hours after you turn in the random drop letter quests and there is one unique flavor message per letter. I'm not sure if speaking to the npcs mentioned in the responses leads to more flavor text, but someone should probably look into that.",
				["groups"] = {
					i(23196, {	-- Greater Mark of the Dawn
						["description"] = "1 Stamina for every 2 levels for 1 Hour.\n\nAvailable after 150 Battles won.",
						["crs"] = {
							16436,	-- Argent Dawn Priest <The Argent Dawn>
							16434,	-- Argent Dawn Champion <The Argent Dawn>
						},
					}),
					i(23194, {	-- Lesser Mark of the Dawn
						["description"] = "1 Stamina for every 6 levels for 1 Hour.\n\nAvailable after 50 Battles won.",
						["crs"] = {
							16384,	-- Argent Dawn Initiate <The Argent Dawn>
							16395,	-- Argent Dawn Paladin <The Argent Dawn>
						},
					}),
					i(23195, {	-- Mark of the Dawn
						["description"] = "1 Stamina for every 3 levels for 1 Hour.\n\nAvailable after 100 Battles won.",
						["crs"] = {
							16435,	-- Argent Dawn Cleric <The Argent Dawn>
							16433,	-- Argent Dawn Crusader <The Argent Dawn>
						},
					}),
					i(23008),	-- Sealed Research Report
					i(23010),	-- Sealed Research Report
					i(23011),	-- Sealed Research Report
					i(23012),	-- Sealed Research Report
					i(23013),	-- Sealed Research Report
					i(23016),	-- Sealed Research Report
				},
			}),
		},
	}),
});
]]--
