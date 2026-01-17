-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
STORMING_THE_CITADEL = createHeader({
	readable = "Storming the Citadel",
	icon = 343640,
	text = {
		en = "Storming the Citadel",
		de = "Sturm auf die Zitadelle",
		es = "Asaltar la Ciudadela",
		-- TODO: mx = "",
		fr = "La prise de la citadelle",
		it = "Assalto alla rocca",
		ko = "성채 몰아치기",
		pt = "Invasão da Cidadela",
		ru = "Штурм цитадели",
		cn = "进攻堡垒",
		-- TODO: tw = "",
	},
});
THE_PLAGUEWORKS = createHeader({
	readable = "The Plagueworks",
	icon = 342919,
	text = {
		en = "The Plagueworks",
		de = "Die Seuchenwerke",
		es = "Los Talleres de la Peste",
		-- TODO: mx = "",
		fr = "La Pesterie",
		it = "Sale della Pestilenza",
		ko = "역병작업장",
		pt = "Antro da Peste",
		ru = "Чумодельня",
		cn = "天灾工厂",
		-- TODO: tw = "",
	},
});
THE_CRIMSON_HALLS = createHeader({
	readable = "The Crimson Halls",
	icon = 341981,
	text = {
		en = [[~C_Map.GetAreaInfo(4892)]],
	},
});
THE_FROSTWING_HALLS = createHeader({
	readable = "The Frostwing Halls",
	icon = 343638,
	text = {
		en = [[~C_Map.GetAreaInfo(7932)]],
		de = "Die Frostschwingenhallen",
		es = "Las Cámaras de Alaescarcha",
		-- TODO: mx = "",
		fr = "Les salles de l'Aile de givre",
		it = "Sale delle Ali del Gelo",
		ko = "서리날개 전당",
		pt = "Salões da Asa Gélida",
		ru = "Залы Ледокрылых",
		cn = "霜翼大厅",
		-- TODO: tw = "",
	},
});

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_FOUR, bubbleDown({ ["timeline"] = { ADDED_3_3_0 } }, {
	inst(758, {	-- Icecrown Citadel
		["mapID"] = ICECROWN_CITADEL,
		["coord"] = { 53.7, 87.0, ICECROWN },
		["maps"] = {
			187, 188, 189, 190, 191, 192, 193,
			-- #if AFTER LEGION
			699, 1359,	-- 1359 may be a specific scenario map - it was reported as missing in early 2019, but i couldn't find context for it
			-- #endif
		},
		-- #if AFTER CATA
		["sharedLockout"] = 1,
		-- #endif
		["isRaid"] = true,
		["lvl"] = 80,
		["groups"] = {
			applyclassicphase(WRATH_PHASE_FOUR_SHADOWMOURNE,
			header(HEADERS.Item, 49623, {	-- Shadowmourne
				["description"] = "These quests can only be completed on 25-Man Normal or Heroic difficulty.",
				["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
				["isRaid"] = true,
				["lvl"] = 80,
				["groups"] = {
					q(24545, {	-- The Sacred and the Corrupt
						["qg"] = 37120,	-- Highlord Darion Mograine
						["minReputation"] = { FACTION_THE_ASHEN_VERDICT, FRIENDLY },	-- The Ashen Verdict
						["maps"] = { DRAGONBLIGHT },
						["groups"] = {
							objective(1, {	-- 0/1 Light's Vengeance
								["providers"] = {
									{ "i",  49869 },	-- Light's Vengeance
									{ "o", 201937 },	-- Light's Vengeance
								},
								["coord"] = { 75.9, 20.8, DRAGONBLIGHT },
							}),
							objective(2, {	-- 0/25 Primordial Saronite
								["provider"] = { "i", 49908 },	-- Primordial Saronite
							}),
							objective(3, {	-- 0/1 Festergut's Acidic Blood
								["provider"] = { "i", 50226 },	-- Festergut's Acidic Blood
							}),
							objective(4, {	-- 0/1 Rotface's Acidic Blood
								["provider"] = { "i", 50231 },	-- Rotface's Acidic Blood
							}),
						},
					}),
					q(24743, {	-- Shadow's Edge
						["sourceQuest"] = 24545,	-- The Sacred and the Corrupt
						["qg"] = 37120,	-- Highlord Darion Mograine
						["groups"] = {
							i(49888),	-- Shadow's Edge
						},
					}),
					q(24547, {	-- A Feast of Souls
						["sourceQuest"] = 24743,	-- Shadow's Edge
						["qg"] = 37120,	-- Highlord Darion Mograine
						["groups"] = {
							objective(1, {	-- 0/50 Souls fed to Shadow's Edge
								["provider"] = { "i", 49888 },	-- Shadow's Edge
							}),
						},
					}),
					q(24749, {	-- Unholy Infusion
						["sourceQuest"] = 24547,	-- A Feast of Souls
						["qg"] = 37120,	-- Highlord Darion Mograine
						["groups"] = {
							objective(1, {	-- Infuse Shadow's Edge with Unholy power then slay Putricide.
								["providers"] = {
									{ "i", 49888 },	-- Shadow's Edge
									{ "n", 36678 },	-- Professor Putricide
								},
							}),
						},
					}),
					q(24756, {	-- Blood Infusion
						["sourceQuest"] = 24749,	-- Unholy Infusion
						["qg"] = 37120,	-- Highlord Darion Mograine
						["groups"] = {
							objective(1, {	-- Infuse Shadow's Edge with Blood then defeat Lana'thel.
								["providers"] = {
									{ "i", 49888 },	-- Shadow's Edge
									{ "n", 37955 },	-- Blood-Queen Lana'thel
								},
							}),
						},
					}),
					q(24757, {	-- Frost Infusion
						["sourceQuest"] = 24756,	-- Blood Infusion
						["qg"] = 37120,	-- Highlord Darion Mograine
						["groups"] = {
							objective(1, {	-- Infuse Shadow's Edge with Frost then slay Sindragosa.
								["providers"] = {
									{ "i", 49888 },	-- Shadow's Edge
									{ "n", 36853 },	-- Sindragosa
								},
							}),
						},
					}),
					q(24548, {	-- The Splintered Throne
						["description"] = "These can drop from any of the bosses on 25-Man Normal or Heroic. You need 50 of these, so this quest will take you several weeks to finish.",
						["sourceQuest"] = 24757,	-- Frost Infusion
						["qg"] = 37120,	-- Highlord Darion Mograine
						["groups"] = {
							objective(1, {	-- 0/50 Shadowfrost Shard
								["provider"] = { "i", 50274 },	-- Shadowfrost Shard
							}),
						},
					}),
					q(24912, {	-- Empowerment
						["sourceQuest"] = 24548,	-- The Splintered Throne
						["qg"] = 37120,	-- Highlord Darion Mograine
					}),
					q(24549, {	-- Shadowmourne...
						["sourceQuest"] = 24548,	-- The Splintered Throne
						["qg"] = 37120,	-- Highlord Darion Mograine
						["groups"] = {
							i(49623),	-- Shadowmourne
							ach(4623, { ["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT } }),	-- Shadowmourne
						},
					}),
					q(24748, {	-- The Lich King's Last Stand
						["sourceQuest"] = 24549,	-- Shadowmourne...
						["qg"] = 37120,	-- Highlord Darion Mograine
						["groups"] = {
							objective(1, {	-- Lich King Defeated
								["provider"] = { "n", 36597 },	-- The Lich King
							}),
						},
					}),
					i(51315, {	-- Sealed Chest
						["questID"] = 24914,	-- Personal Property
						["description"] = "Dropped by the Lich King on 25-Man difficulty while on the quest |cFFefc400The Lich King's Last Stand|r. Only your first kill will trigger the item to drop. You do NOT need to have Shadowmourne equipped.\n\nThis item contains a lot of BoE cosmetic items that sell very well. During its time, this was used to reward other members of the raid for assisting the guild master (more than likely) with Shadowmourne for the many months it took to complete the quest chain.\n\nIn addition to being very rewarding, these quests were some of the most treasured throughout World of Warcraft's long history.",
						["sourceQuest"] = 24549,	-- Shadowmourne...
						["qg"] = 36597,	-- The Lich King
						["provider"] = { "i", 51316 },	-- Unsealed Chest
						["groups"] = {
							i(51317, {	-- Alexandros' Soul Shard
								["questID"] = 24915,	-- Mograine's Reunion
								["description"] = "Alexandros: Darion, my son. At last I am able to lay my eyes upon you again. The Lich King tormented me without end, Darion. Endlessly he sought to break my will, to force me to serve him, to bind me to his blade. Finally, when events demanded his full attention, he left me. The one memory I clung to Darion, the one thought that kept me from giving in, it was your sacrifice, my son. That again saved me from eternal peril.\n\nDarion: Father, father, I… I feared for your sanity, father, for you, I would give my life a thousand times.",
								["groups"] = {
									i(52200, {	-- Crimson Deathcharger (MOUNT!)
										["b"] = 2,	-- Mounts don't inherently assign themselves as BoE, so the Ignore Filters for BoEs trigger wasn't picking this up.
									}),
								},
							}),
							i(51319, {	-- Arthas' Training Sword
								["questID"] = 24917,	-- Muradin's Lament
								["description"] = "Muradin: Oh lad, how I missed those endless days in Lordaeron, sharpening your skill with this dull blade. Forging you into a weapon meant to withstand the demands of a great destiny. Heh… You sure put them skills to use, didn't you lad?\n\nIf only I'd been able to stop you that day, how different things migha' been. If only I'da never discovered that accursed blade. Farewell, Arthas, my brother.",
								["groups"] = {
									i(52201)	-- Muradin's Favor (TOY!)
								},
							}),
							i(51320, {	-- Badge of the Silver Hand
								["questID"] = 24919,	-- The Lightbringer's Redemption
								["description"] = "Uther: Arthas... Alas, hero of Azeroth. You give me a greater gift than you know. Long have I struggled to forgive the prince for his terrible transgressions. My soul has been wracked with unbearable anxiety, dark thoughts, distancing me from the light.\n\nI recall clearly... the gleam of pride in his eye as he stood before me, eager to defeat the enemies of the light... eager to defend his people, no matter the cost. It is this memory of Arthas that I choose to keep in my heart.\n\nI shall always be in your debt, friend. Thank you.",
								["groups"] = {
									i(52252)	-- Tabard of the Lightbringer
								},
							}),
							i(51321, {	-- Blood of Sylvanas
								["questID"] = 24918,	-- Sylvanas' Vengeance
								["description"] = "Sylvanas: So, it is done. I had not dared to trust my senses. Too many times has the Lich King made me to be a fool. Finally, he has been made to pay for the atrocities he imposed upon my people.\n\nMay Azeroth never fail to remember the horrible price we paid for our weakness, for our pride. But what now, Hero? What of those freed from his grasp but still shackled to their mortal coils?\n\nLeave me. I have much to ponder.",
								["groups"] = {
									i(52253)	-- Sylvanas' Music Box (TOY!)
								},
							}),
							i(51318, {	-- Jaina's Locket
								["questID"] = 24916,	-- Jaina's Locket
								["description"] = "Jaina: What's this?\nHe... he kept it.. all this time he kept it!\n<Cries> I knew!\n<Cries> I sensed a part of him still alive... trapped... struggling. Oh Arthas!\nPerhaps he might someday remember from what he once was...\nBy the Light may he at last find rest, free from the icy grip of that terrible blade!",
								["groups"] = {
									i(52251, {	-- Jaina's Locket
										-- #if NOT ANYCLASSIC
										["ignoreSource"] = true,
										["collectible"] = false
										-- #endif
									})
								},
							}),
						},
					}),
				},
			})),
			n(ACHIEVEMENTS, {
				applyclassicphase(WRATH_PHASE_FOUR, ach(4602, {	-- Glory of the Icecrown Raider (10 player)
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						4628,	-- Heroic: Storming the Citadel (10 player)
						4629,	-- Heroic: The Plagueworks (10 player)
						4630,	-- Heroic: The Crimson Hall (10 player)
						4631,	-- Heroic: The Frostwing Halls (10 player)
						4534,	-- Boned (10 player)
						4535,	-- Full House (10 player)
						4536,	-- I'm on a Boat (10 player)
						4537,	-- I've Gone and Made a Mess (10 player)
						4538,	-- Dances with Oozes (10 player)
						4577,	-- Flu Shot Shortage (10 player)
						4578,	-- Nausea, Heartburn, Indigestion... (10 player)
						4582,	-- The Orb Whisperer (10 player)
						4539,	-- Once Bitten, Twice Shy (10 player)
						4579,	-- Portal Jockey (10 player)
						4580,	-- All You Can Eat (10 player)
						4601,	-- Been Waiting a Long Time for This (10 player)
					}},
					["timeline"] = { ADDED_3_0_2 },
					["groups"] = {
						i(51954),		-- Bloodbathed Frostbrood Vanquisher (MOUNT!)
					},
				})),
				applyclassicphase(WRATH_PHASE_FOUR, ach(4603, {	-- Glory of the Icecrown Raider (25 player)
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						4632,	-- Heroic: Storming the Citadel (25 player)
						4633,	-- Heroic: The Plagueworks (25 player)
						4634,	-- Heroic: The Crimson Hall (25 player)
						4635,	-- Heroic: The Frostwing Halls (25 player)
						4610,	-- Boned (25 player)
						4611,	-- Full House (25 player)
						4612,	-- I'm on a Boat (25 player)
						4613,	-- I've Gone and Made a Mess (25 player)
						4614,	-- Dances with Oozes (25 player)
						4615,	-- Flu Shot Shortage (25 player)
						4616,	-- Nausea, Heartburn, Indigestion... (25 player)
						4617,	-- The Orb Whisperer (25 player)
						4618,	-- Once Bitten, Twice Shy (25 player)
						4619,	-- Portal Jockey (25 player)
						4620,	-- All You Can Eat (25 player)
						4621,	-- Been Waiting a Long Time for This (25 player)
						4622,	-- Neck-Deep in Vile (25 player)
					}},
					["timeline"] = { ADDED_3_0_2 },
					["groups"] = {
						i(51955),		-- Icebound Frostbrood Vanquisher (MOUNT!)
					},
				})),
				ach(4532, {	-- Fall of the Lich King (10 player)
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						4531,	-- Storming the Citadel (10 player)
						4528,	-- The Plagueworks (10 player)
						4529,	-- The Crimson Hall (10 player)
						4527,	-- The Frostwing Halls (10 player)
						4530,	-- The Frozen Throne (10 player)
					}},
				}),
				ach(4608, {	-- Fall of the Lich King (25 player)
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						4604,	-- Storming the Citadel (25 player)
						4605,	-- The Plagueworks (25 player)
						4606,	-- The Crimson Hall (25 player)
						4607,	-- The Frostwing Halls (25 player)
						4597,	-- The Frozen Throne (25 player)
					}},
				}),
				ach(4636, {	-- Heroic: Fall of the Lich King (10 player)
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						4628,	-- Heroic: Storming the Citadel (10 player)
						4629,	-- Heroic: The Plagueworks (10 player)
						4630,	-- Heroic: The Crimson Hall (10 player)
						4631,	-- Heroic: The Frostwing Halls (10 player)
						4583,	-- Bane of the Fallen King
					}},
				}),
				ach(4637, {	-- Heroic: Fall of the Lich King (25 player)
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						4632,	-- Heroic: Storming the Citadel (25 player)
						4633,	-- Heroic: The Plagueworks (25 player)
						4634,	-- Heroic: The Crimson Hall (25 player)
						4635,	-- Heroic: The Frostwing Halls (25 player)
						4584,	-- The Light of Dawn
					}},
				}),
				achWithRep(4598, FACTION_THE_ASHEN_VERDICT, {	-- The Ashen Verdict
					title(141),	-- <Name> of the Ashen Verdict
				}),
				ach(11753, {["timeline"] = {ADDED_7_2_0}}),	-- Winter Catalog (Icecrown Citadel)
				ach(4576, {	-- Realm First! Fall of the Lich King
					["timeline"] = { ADDED_3_3_3, REMOVED_3_3_5 },
				}),
			}),
			n(FACTIONS, {
				faction(FACTION_THE_ASHEN_VERDICT),	-- The Ashen Verdict
			}),
			n(QUESTS, {
				q(24815, {	-- Choose Your Path
					["description"] = "If the quest does not appear when you hit Friendly, you may have to relog.",
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, FRIENDLY },	-- The Ashen Verdict
					["groups"] = {
						i(50375, {	-- Ashen Band of Courage
							["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
						}),
						i(50377, {	-- Ashen Band of Destruction
							["classes"] = { PALADIN, MAGE, DRUID, PRIEST, SHAMAN, WARLOCK, MONK, EVOKER },
						}),
						i(52569, {	-- Ashen Band of Might
							["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
						}),
						i(50376, {	-- Ashen Band of Vengeance
							["classes"] = { DRUID, HUNTER, ROGUE, SHAMAN, MONK, DEMONHUNTER },
						}),
						i(50378, {	-- Ashen Band of Wisdom
							["classes"] = { PALADIN, MAGE, DRUID, PRIEST, SHAMAN, WARLOCK, MONK, EVOKER },
						}),
					},
				}),
			-- Quest Chain: Path of Courage
				q(24827, {	-- Path of Courage (Honored)
					["sourceQuest"] = 24815,	-- Choose Your Path
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, HONORED },	-- The Ashen Verdict
					["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
					["groups"] = {
						i(50388, {	-- Ashen Band of Greater Courage
							["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
						}),
					},
				}),
				q(24834, {	-- Path of Courage (Revered)
					["sourceQuest"] = 24827,	-- Path of Courage (Honored)
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, REVERED },	-- The Ashen Verdict
					["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
					["groups"] = {
						i(50403, {	-- Ashen Band of Unmatched Courage
							["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
						}),
					},
				}),
				q(24835, {	-- Path of Courage (Exalted)
					["sourceQuest"] = 24834,	-- Path of Courage (Revered)
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, EXALTED },	-- The Ashen Verdict
					["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
					["groups"] = {
						i(50404, {	-- Ashen Band of Endless Courage
							["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
						}),
					},
				}),
				-- Quest Chain: Path of Destruction
				q(24828, {	-- Path of Destruction (Honored)
					["sourceQuest"] = 24815,	-- Choose Your Path
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, HONORED },	-- The Ashen Verdict
					["classes"] = { PALADIN, MAGE, DRUID, PRIEST, SHAMAN, WARLOCK, MONK, EVOKER },
					["groups"] = {
						i(50384, {	-- Ashen Band of Greater Destruction
							["classes"] = { PALADIN, MAGE, DRUID, PRIEST, SHAMAN, WARLOCK, MONK, EVOKER },
						}),
					},
				}),
				q(24823, {	-- Path of Destruction (Revered)
					["sourceQuest"] = 24828,	-- Path of Destruction [Honored]
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, REVERED },	-- The Ashen Verdict
					["classes"] = { PALADIN, MAGE, DRUID, PRIEST, SHAMAN, WARLOCK, MONK, EVOKER },
					["groups"] = {
						i(50397, {	-- Ashen Band of Unmatched Destruction
							["classes"] = { PALADIN, MAGE, DRUID, PRIEST, SHAMAN, WARLOCK, MONK, EVOKER },
						}),
					},
				}),
				q(24829, {	-- Path of Destruction (Exalted)
					["sourceQuest"] = 24823,	-- Path of Destruction (Revered)
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, EXALTED },	-- The Ashen Verdict
					["classes"] = { PALADIN, MAGE, DRUID, PRIEST, SHAMAN, WARLOCK, MONK, EVOKER },
					["groups"] = {
						i(50398, {	-- Ashen Band of Endless Destruction
							["classes"] = { PALADIN, MAGE, DRUID, PRIEST, SHAMAN, WARLOCK, MONK, EVOKER },
						}),
					},
				}),
				-- Quest Chain: Path of Might
				q(25239, {	-- Path of Might (Honored)
					["sourceQuest"] = 24815,	-- Choose Your Path
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, HONORED },	-- The Ashen Verdict
					["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
					["groups"] = {
						i(52570, {	-- Ashen Band of Greater Might
							["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
						}),
					},
				}),
				q(25240, {	-- Path of Might [Revered]
					["sourceQuest"] = 25239,	-- Path of Might [Honored]
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, REVERED },	-- The Ashen Verdict
					["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
					["groups"] = {
						i(52571, {	-- Ashen Band of Unmatched Might
							["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
						}),
					},
				}),
				q(25242, {	-- Path of Might [Exalted]
					["sourceQuest"] = 25240,	-- Path of Might [Revered]
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, EXALTED },	-- The Ashen Verdict
					["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
					["groups"] = {
						i(52572, {	-- Ashen Band of Endless Might
							["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
						}),
					},
				}),
				-- Quest Chain: Path of Vengeance
				q(24826, {	-- Path of Vengeance [Honored]
					["sourceQuest"] = 24815,	-- Choose Your Path
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, HONORED },	-- The Ashen Verdict
					["classes"] = { DRUID, HUNTER, ROGUE, SHAMAN, MONK, DEMONHUNTER },
					["groups"] = {
						i(50387, {	-- Ashen Band of Greater Vengeance
							["classes"] = { DRUID, HUNTER, ROGUE, SHAMAN, MONK, DEMONHUNTER },
						}),
					},
				}),
				q(24832, {	-- Path of Vengeance [Revered]
					["sourceQuest"] = 24826,	-- Path of Vengeance [Honored]
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, REVERED },	-- The Ashen Verdict
					["classes"] = { DRUID, HUNTER, ROGUE, SHAMAN, MONK, DEMONHUNTER },
					["groups"] = {
						i(50401, {	-- Ashen Band of Unmatched Vengeance
							["classes"] = { DRUID, HUNTER, ROGUE, SHAMAN, MONK, DEMONHUNTER },
						}),
					},
				}),
				q(24833, {	-- Path of Vengeance [Exalted]
					["sourceQuest"] = 24832,	-- Path of Vengeance [Revered]
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, EXALTED },	-- The Ashen Verdict
					["classes"] = { DRUID, HUNTER, ROGUE, SHAMAN, MONK, DEMONHUNTER },
					["groups"] = {
						i(50402, {	-- Ashen Band of Endless Vengeance
							["classes"] = { DRUID, HUNTER, ROGUE, SHAMAN, MONK, DEMONHUNTER },
						}),
					},
				}),
				-- Quest Chain: Path of Wisdom
				q(24825, {	-- Path of Wisdom [Honored]
					["sourceQuest"] = 24815,	-- Choose Your Path
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, HONORED },	-- The Ashen Verdict
					["classes"] = { PALADIN, MAGE, DRUID, PRIEST, SHAMAN, WARLOCK, MONK, EVOKER },
					["groups"] = {
						i(50386, {	-- Ashen Band of Greater Wisdom
							["classes"] = { PALADIN, MAGE, DRUID, PRIEST, SHAMAN, WARLOCK, MONK, EVOKER },
						}),
					},
				}),
				q(24830, {	-- Path of Wisdom [Revered]
					["sourceQuest"] = 24825,	-- Path of Wisdom [Honored]
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, REVERED },	-- The Ashen Verdict
					["classes"] = { PALADIN, MAGE, DRUID, PRIEST, SHAMAN, WARLOCK, MONK, EVOKER },
					["groups"] = {
						i(50399, {	-- Ashen Band of Unmatched Wisdom
							["classes"] = { PALADIN, MAGE, DRUID, PRIEST, SHAMAN, WARLOCK, MONK, EVOKER },
						}),
					},
				}),
				q(24831, {	-- Path of Wisdom [Exalted]
					["sourceQuest"] = 24830,	-- Path of Wisdom [Revered]
					["qg"] = 38316,	-- Ormus the Penitent
					["minReputation"] = { FACTION_THE_ASHEN_VERDICT, EXALTED },	-- The Ashen Verdict
					["classes"] = { PALADIN, MAGE, DRUID, PRIEST, SHAMAN, WARLOCK, MONK, EVOKER },
					["groups"] = {
						i(50400, {	-- Ashen Band of Endless Wisdom
							["classes"] = { PALADIN, MAGE, DRUID, PRIEST, SHAMAN, WARLOCK, MONK, EVOKER },
						}),
					},
				}),
				q(24819, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24820, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24821, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24822, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24836, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24837, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24838, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24839, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24840, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24841, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24842, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24843, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24844, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24845, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24846, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(24847, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(25246, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(25247, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(25248, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				q(25249, {	-- A Change of Heart
					["qg"] = 39509,	-- Aronen <Apprentice to Ormus>
					["isRepeatable"] = true,
				}),
				-- Weekly Raid Quests
				q(24874, {	-- Blood Quickening [10]
					["qg"] = 38551,	-- Alrin the Agile
					["timeline"] = { REMOVED_4_0_1 },
					["isWeekly"] = true,
					["lvl"] = 80,
					["groups"] = {
						objective(1, {	-- Minchar Rescued
							["provider"] = { "n", 38558 },	-- Infiltrator Minchar
						}),
						i(52006),	-- Sack of Frosty Treasures
					},
				}),
				q(24879, {	-- Blood Quickening [25]
					["qg"] = 38551,	-- Alrin the Agile
					["timeline"] = { REMOVED_4_0_1 },
					["isWeekly"] = true,
					["lvl"] = 80,
					["groups"] = {
						objective(1, {	-- Minchar Rescued
							["provider"] = { "n", 38558 },	-- Infiltrator Minchar
						}),
						i(52006),	-- Sack of Frosty Treasures
					},
				}),
				q(24869, {	-- Deprogramming [10]
					["qg"] = 38471,	-- Infiltrator Minchar
					["timeline"] = { REMOVED_4_0_1 },
					["isWeekly"] = true,
					["lvl"] = 80,
					["groups"] = {
						objective(1, {	-- Rescue Darnavan
							["provider"] = { "n", 38485 },	-- Darnavan
						}),
						i(52006),	-- Sack of Frosty Treasures
					},
				}),
				q(24875, {	-- Deprogramming [25]
					["qg"] = 38471,	-- Infiltrator Minchar
					["timeline"] = { REMOVED_4_0_1 },
					["isWeekly"] = true,
					["lvl"] = 80,
					["groups"] = {
						objective(1, {	-- Rescue Darnavan
							["provider"] = { "n", 38485 },	-- Darnavan
						}),
						i(52006),	-- Sack of Frosty Treasures
					},
				}),
				q(24873, {	-- Residue Rendezvous [10]
					["qg"] = 38501,	-- Alchemist Adrianna
					["timeline"] = { REMOVED_4_0_1 },
					["isWeekly"] = true,
					["lvl"] = 80,
					["groups"] = {
						objective(1, {	-- Return with two strains of Blight.
							["providers"] = {
								{ "n", 36626 },	-- Festergut
								{ "n", 36627 },	-- Rotface
							},
						}),
						i(52006),	-- Sack of Frosty Treasures
					},
				}),
				q(24878, {	-- Residue Rendezvous[25]
					["qg"] = 38501,	-- Alchemist Adrianna
					["timeline"] = { REMOVED_4_0_1 },
					["isWeekly"] = true,
					["lvl"] = 80,
					["groups"] = {
						objective(1, {	-- Return with two strains of Blight.
							["providers"] = {
								{ "n", 36626 },	-- Festergut
								{ "n", 36627 },	-- Rotface
							},
						}),
						i(52006),	-- Sack of Frosty Treasures
					},
				}),
				q(24872, {	-- Respite for a Tormented Soul [10]
					["qg"] = 38589,	-- Valithria Dreamwalker
					["timeline"] = { REMOVED_4_0_1 },
					["isWeekly"] = true,
					["lvl"] = 80,
					["groups"] = {
						objective(1, {	-- 0/1 Crystalline Essence of Sindragosa
							["providers"] = {
								{ "i", 51026 },	-- Crystalline Essence of Sindragosa
								{ "i", 50851 },	-- Pulsing Life Crystal
							},
							["cr"] = 36853,	-- Sindragosa
						}),
						i(52006),	-- Sack of Frosty Treasures
					},
				}),
				q(24880, {	-- Respite for a Tormented Soul [25]
					["qg"] = 38589,	-- Valithria Dreamwalker
					["timeline"] = { REMOVED_4_0_1 },
					["isWeekly"] = true,
					["lvl"] = 80,
					["groups"] = {
						objective(1, {	-- 0/1 Crystalline Essence of Sindragosa
							["providers"] = {
								{ "i", 51027 },	-- Crystalline Essence of Sindragosa
								{ "i", 50851 },	-- Pulsing Life Crystal
							},
							["cr"] = 36853,	-- Sindragosa
						}),
						i(52006),	-- Sack of Frosty Treasures
					},
				}),
				q(24871, {	-- Securing the Ramparts [10] (A)
					["qg"] = 38492,	-- Skybreaker Lieutenant
					["timeline"] = { REMOVED_4_0_1 },
					["isWeekly"] = true,
					["lvl"] = 80,
					["groups"] = {
						objective(1, {	-- 0/1 Rotting Frost Giant slain
							["provider"] = { "n", 38490 },	-- Rotting Frost Giant
						}),
						i(52006),	-- Sack of Frosty Treasures
					},
				}),
				q(24876, {	-- Securing the Ramparts [25] (A)
					["qg"] = 38492,	-- Skybreaker Lieutenant
					["timeline"] = { REMOVED_4_0_1 },
					["isWeekly"] = true,
					["lvl"] = 80,
					["groups"] = {
						objective(1, {	-- 0/1 Rotting Frost Giant slain
							["provider"] = { "n", 38494 },	-- Rotting Frost Giant
						}),
						i(52006),	-- Sack of Frosty Treasures
					},
				}),
				q(24870, {	-- Securing the Ramparts [10] (H)
					["qg"] = 38491,	-- Kor'kron Lieutenant
					["timeline"] = { REMOVED_4_0_1 },
					["isWeekly"] = true,
					["lvl"] = 80,
					["groups"] = {
						objective(1, {	-- 0/1 Rotting Frost Giant slain
							["provider"] = { "n", 38490 },	-- Rotting Frost Giant
						}),
						i(52006),	-- Sack of Frosty Treasures
					},
				}),
				q(24877, {	-- Securing the Ramparts [25] (H)
					["qg"] = 38491,	-- Kor'kron Lieutenant
					["timeline"] = { REMOVED_4_0_1 },
					["isWeekly"] = true,
					["lvl"] = 80,
					["groups"] = {
						objective(1, {	-- 0/1 Rotting Frost Giant slain
							["provider"] = { "n", 38494 },	-- Rotting Frost Giant
						}),
						i(52006),	-- Sack of Frosty Treasures
					},
				}),
			}),
			-- #if BEFORE 4.0.1
			n(REWARDS, {
				["sourceQuests"] = {
					24874,	-- Blood Quickening [10]
					24879,	-- Blood Quickening [25]
					24869,	-- Deprogramming [10]
					24875,	-- Deprogramming [25]
					24873,	-- Residue Rendezvous [10]
					24878,	-- Residue Rendezvous [25]
					24872,	-- Respite for a Tormented Soul [10]
					24880,	-- Respite for a Tormented Soul [25]
					24871,	-- Securing the Ramparts [10] (A)
					24876,	-- Securing the Ramparts [25] (A)
					24870,	-- Securing the Ramparts [10] (H)
					24877,	-- Securing the Ramparts [25] (H)
				},
				["description"] = "Rewarded for completing the Weekly Raid quests.",
				["groups"] = {
					i(52006, {	-- Sack of Frosty Treasures
						["timeline"] = { REMOVED_4_0_1 },
						["sym"] = {
							{
								"select", "itemID",
								50452,	-- Wodin's Lucky Necklace
								50020,	-- Raging Behemoth's Shoulderplates
								50449,	-- Stiffened Corpse Shoulderpads
								50001,	-- Ikfirus's Sack of Wonder
								49994,	-- The Lady's Brittle Bracers
								50015,	-- Belt of the Blood Nova
								50447,	-- Harbinger's Bone Band
								50453,	-- Ring of Rotting Sinew
								36931,	-- Ametrine
								36919,	-- Cardinal Ruby
								36934,	-- Eye of Zul
								36928,	-- Dreadstone
								36922,	-- King's Amber
								36925,	-- Majestic Zircon
							},
						},
					}),
				},
			}),
			-- #endif
			n(VENDORS, {
				cl(DEATHKNIGHT, {
					["cr"] = 38316,	-- Ormus the Penitent <Death Knight Armor>
					["groups"] = appendGroups(
						TIER_TEN_HEROIC_GROUPS.DEATHKNIGHT,
						TIER_TEN_NORMAL_GROUPS.DEATHKNIGHT,
						TIER_TEN_GROUPS.DEATHKNIGHT, {}),
				}),
				cl(DRUID, {
					["crs"] = {
						37999,	-- Alana Moonstrike <Druid Armor>
						37992,	-- Tortunok <Druid Armor>
					},
					["groups"] = appendGroups(
						TIER_TEN_HEROIC_GROUPS.DRUID,
						TIER_TEN_NORMAL_GROUPS.DRUID,
						TIER_TEN_GROUPS.DRUID, {}),
				}),
				cl(HUNTER, {
					["crs"] = {
						37993,	-- Gerardo the Suave <Hunter Armor>
						37998,	-- Talan Moonstrike <Hunter Armor>
					},
					["groups"] = appendGroups(
						TIER_TEN_HEROIC_GROUPS.HUNTER,
						TIER_TEN_NORMAL_GROUPS.HUNTER,
						TIER_TEN_GROUPS.HUNTER, {}),
				}),
				cl(MAGE, {
					["crs"] = {
						38283,	-- Malfus Grimfrost <Mage Armor>
						38284,	-- Uvlus Banefire <Mage Armor>
					},
					["groups"] = appendGroups(
						TIER_TEN_HEROIC_GROUPS.MAGE,
						TIER_TEN_NORMAL_GROUPS.MAGE,
						TIER_TEN_GROUPS.MAGE, {}),
				}),
				cl(PALADIN, {
					["cr"] = 37696,	-- Crusader Halford <Paladin Armor>
					["groups"] = appendGroups(
						TIER_TEN_HEROIC_GROUPS.PALADIN,
						TIER_TEN_NORMAL_GROUPS.PALADIN,
						TIER_TEN_GROUPS.PALADIN, {}),
				}),
				cl(PRIEST, {
					["cr"] = 38054,	-- Scott the Merciful <Priest Armor>
					["groups"] = appendGroups(
						TIER_TEN_HEROIC_GROUPS.PRIEST,
						TIER_TEN_NORMAL_GROUPS.PRIEST,
						TIER_TEN_GROUPS.PRIEST, {}),
				}),
				cl(ROGUE, {
					["crs"] = {
						37991,	-- Ikfirus the Vile <Rogue Armor>
						37997,	-- Yili <Rogue Armor>
					},
					["groups"] = appendGroups(
						TIER_TEN_HEROIC_GROUPS.ROGUE,
						TIER_TEN_NORMAL_GROUPS.ROGUE,
						TIER_TEN_GROUPS.ROGUE, {}),
				}),
				cl(SHAMAN, {
					["crs"] = {
						38840,	-- Jedebia <Shaman Armor>
						38841,	-- Vol'guk <Shaman Armor>
					},
					["groups"] = appendGroups(
						TIER_TEN_HEROIC_GROUPS.SHAMAN,
						TIER_TEN_NORMAL_GROUPS.SHAMAN,
						TIER_TEN_GROUPS.SHAMAN, {}),
				}),
				cl(WARLOCK, {
					["crs"] = {
						38181,	-- Haragg the Unseen <Warlock Armor>
						38182,	-- Niby the Almighty <Warlock Armor>
					},
					["groups"] = appendGroups(
						TIER_TEN_HEROIC_GROUPS.WARLOCK,
						TIER_TEN_NORMAL_GROUPS.WARLOCK,
						TIER_TEN_GROUPS.WARLOCK, {}),
				}),
				cl(WARRIOR, {
					["cr"] = 37688,	-- Crusader Grimtong <Warrior Armor>
					["groups"] = appendGroups(
						TIER_TEN_HEROIC_GROUPS.WARRIOR,
						TIER_TEN_NORMAL_GROUPS.WARRIOR,
						TIER_TEN_GROUPS.WARRIOR, {}),
				}),
				n(37687, {	-- Alchemist Finklestein
					i(49959, {	-- Pattern: Bladeborn Leggings (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49958, {	-- Pattern: Blessed Cenarion Boots (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49954, {	-- Pattern: Deathfrost Boots (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49965, {	-- Pattern: Draconic Bonesplinter Legguards (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49963, {	-- Pattern: Earthsoul Boots (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49961, {	-- Pattern: Footpads of Impending Death (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49953, {	-- Pattern: Leggings of Woven Death (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49957, {	-- Pattern: Legwraps of Unleashed Nature (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49962, {	-- Pattern: Lightning-Infused Leggings (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49955, {	-- Pattern: Lightweave Leggings (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49966, {	-- Pattern: Rock-Steady Treads (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49956, {	-- Pattern: Sandals of Consecration (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49974, {	-- Plans: Boots of Kingly Upheaval (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49972, {	-- Plans: Hellfrozen Bonegrinders (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(52023, {	-- Plans: Iceblade Arrow (RECIPE!)
						["timeline"] = { REMOVED_4_0_1 },
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49971, {	-- Plans: Legplates of Painful Death (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49973, {	-- Plans: Pillars of Might (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49970, {	-- Plans: Protectors of Life (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(49969, {	-- Plans: Puresteel Legplates (RECIPE!)
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
					i(52022, {	-- Plans: Shatter Rounds (RECIPE!)
						["timeline"] = { REMOVED_4_0_1 },
						["cost"] = { { "i", 49908, 1 }, },	-- 1x Primordial Saronite
					}),
				}),
				n(38858, {	-- Goodman the "Closer" <Legacy Justice Quartermaster>
					["sym"] = {
						{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_RELENTLESS, PVP_GLADIATOR },
						{"merge"},	-- Subroutines are automatically finalized, so merge back for further processing
						{"pop"},	-- Discard the Set header and acquire the children.
						{"exclude", "headerID", NECK, FINGER, TRINKET, BACK, WRIST, WAIST, FEET, WEAPONS },	-- Exclude Neck, Finger, Trinkets, Back, Wrist, Waist, Feet and Weapons
						{"isnt","c"},	-- Discard headers for Classes [c]
					},
					["groups"] = {
						emof(60, i(50993)),	-- Band of the Night Raven
						emof(60, i(50996)),	-- Belt of Omission
						emof(60, i(50994)),	-- Belt of Petrified Ivy
						emof(30, i(50458, {	-- Bizuri's Totem of Shattered Ice
							["timeline"] = { REMOVED_5_0_4 },
						})),
						emof(60, i(50980)),	-- Blizzard Keeper's Mitts
						emof(95, i(50965)),	-- Castle Breaker's Battleplate
						emof(60, i(50982)),	-- Cat Burglar's Grips
						emof(95, i(50968)),	-- Cataclysmic Chestguard
						emof(95, i(50969)),	-- Chestplate of Unspoken Truths
						emof(60, i(50997)),	-- Circle of Ossus
						emof(60, i(50356)),	-- Corroded Skeleton Key
						emof(50, i(50468)),	-- Drape of the Violet Tower
						emof(95, i(50975)),	-- Ermine Coronation Robes
						emof(60, i(50977)),	-- Gatecrasher's Gauntlets
						emof(60, i(50976)),	-- Gauntlets of Overexposure
						emof(60, i(50978)),	-- Gauntlets of the Kraken
						emof(60, i(50984)),	-- Gloves of Ambivalence
						emof(60, i(50983)),	-- Gloves of False Gestures
						emof(60, i(50981)),	-- Gloves of the Great Horned Owl
						emof(60, i(50355)),	-- Herkumi War Token
						emof(30, i(50454, {	-- Idol of the Black Willow
							["timeline"] = { REMOVED_5_0_4 },
						})),
						emof(30, i(50456, {	-- Idol of the Crying Moon
							["timeline"] = { REMOVED_5_0_4 },
						})),
						emof(30, i(50457, {	-- Idol of the Lunar Eclipse
							["timeline"] = { REMOVED_5_0_4 },
						})),
						emof(30, i(50460, {	-- Libram of Blinding Light
							["timeline"] = { REMOVED_5_0_4 },
						})),
						emof(30, i(50461, {	-- Libram of the Eternal Tower
							["timeline"] = { REMOVED_5_0_4 },
						})),
						emof(30, i(50455, {	-- Libram of Three Truths
							["timeline"] = { REMOVED_5_0_4 },
						})),
						emof(60, i(50989)),	-- Lich Killer's Lanyard
						emof(60, i(50979)),	-- Logsplitters
						emof(95, i(50970)),	-- Longstrider's Vest
						emof(60, i(50357)),	-- Maghia's Misguised Quill
						emof(95, i(50971)),	-- Mail of the Geyser
						emof(60, i(50987)),	-- Malevolent Girdle
						emof(95, i(50974)),	-- Meteor Chaser's Raiment
						emof(50, i(50467)),	-- Might of the Ocean Serpent
						emof(23, i(49908)),	-- Primordial Saronite
						emof(60, i(50358)),	-- Purified Lunar Dust
						emof(50, i(50470)),	-- Recovered Scarlet Onsalught Cape
						emof(50, i(50466)),	-- Sentinel's Winter Cloak
						emof(95, i(50972)),	-- Shadow Seeker's Tunic
						emof(30, i(50462, {	-- Sigil of the Bone Gryphon
							["timeline"] = { REMOVED_5_0_4 },
						})),
						emof(30, i(50459, {	-- Sigil of the Hanged Man
							["timeline"] = { REMOVED_5_0_4 },
						})),
						emof(30, i(50463, {	-- Totem of the Avalanche
							["timeline"] = { REMOVED_5_0_4 },
						})),
						emof(30, i(50464, {	-- Totem of the Surging Sea
							["timeline"] = { REMOVED_5_0_4 },
						})),
						emof(60, i(50995)),	-- Vengeful Noose
						emof(60, i(50991)),	-- Verdigris Chain Belt
						emof(95, i(50973)),	-- Vestments of Spruce and Fir
						emof(50, i(50469)),	-- Volde's Cloak of the Night Sky
						emof(60, i(50992)),	-- Waistband of Despair
					},
				}),
				n(37936, {	-- Morgan Dayblaze
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						3422,	-- Beautiful Wildflowers
						3420,	-- Black Rose
						3424,	-- Bouquet Of Black Roses
						3423,	-- Bouquet Of White Roses
						30749,	-- Draenic Sparring Blade
						30750,	-- Draenic Warblade
						3419,	-- Red Rose
						3421,	-- Simple Wildflowers
					}},
				}),
				n(37903, {	-- Shely Steelbowels
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						30749,	-- Draenic Sparring Blade
						30750,	-- Draenic Warblade
					}},
				}),
				n(37184, {	-- Zafod Boombox
					i(49278, {	-- Goblin Rocket Pack
						["collectible"] = false,	-- We can't collect it so we don't want it to hurt our numbers
						-- #if NOT ANYCLASSIC
						["u"] = UNLEARNABLE,
						-- #endif
					}),
				}),
			}),
			n(ZONE_DROPS, {
				i(50451),	-- Belt of the Lonely Noble
				i(50447),	-- Harbinger's Bone Band
				i(50450),	-- Leggings of Dubious Charms
				i(52019, {	-- Precious' Ribbon
					["cr"] = 37217,	-- Precious
				}),
				i(50453),	-- Ring of Rotting Sinew
				i(50444),	-- Rowan's Rifle of Silver Bullets
				i(50449),	-- Stiffened Corpse Shoulderpads
				i(50452),	-- Wodin's Lucky Necklace
			}),
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					36612,	-- Lord Marrowgar
					36855,	-- Lady Deathwhisper
					36939,	-- High Overlord Saurfang
					36948,	-- Muradin Bronzebeard
					37813,	-- Deathbringer Saurfang
					36626,	-- Festergut
					36627,	-- Rotface
					36678,	-- Professor Putricide
					37970,	-- Blood Prince Council
					37955,	-- Blood-Queen Lana'thel
					36789,	-- Valithria Dreamwalker
					36853,	-- Sindragosa
					36597,	-- The Lich King
				},
				["groups"] = {
					-- #if BEFORE 4.0.1
					currency(341),	-- Emblem of Frost
					-- #endif
					i(49908, {	-- Primordial Saronite
						["description"] = "Can drop from all bosses in Icecrown Citadel except in 10 player raid size on Normal difficulty.",
					}),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
				n(STORMING_THE_CITADEL, {
					ach(4531, {	-- Storming the Citadel (10 player)
						crit(12770, {	-- Lord Marrowgar
							["_encounter"] = { 1624, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(12773, {	-- Lady Deathwhisper
							["_encounter"] = { 1625, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(12771, {	-- Icecrown Gunship Battle
							["_encounter"] = { 1626, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(12772, {	-- Deathbringer Saurfang
							["_encounter"] = { 1628, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
					}),
					e(1624, {	-- Lord Marrowgar
						["creatureID"] = 36612,	-- Lord Marrowgar
						["groups"] = {
							ach(4534),	-- Boned (10 player)
							i(142094, {	-- Boneshard (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(50761),	-- Citadel Enforcer's Claymore
							i(50759),	-- Bone Warden's Splitter
							i(50760),	-- Bonebreaker Scepter
							i(50771),	-- Frost Needle
							i(50763),	-- Marrowgar's Scratching Choker
							i(50764),	-- Shawl of Nerubian Silk
							i(50774),	-- Coldwraith Bracers
							i(50773),	-- Cord of the Patronizing Practitioner
							i(50762),	-- Linked Scourge Vertebrae
							i(50775),	-- Corrupted Silverplate Leggings
							i(50772),	-- Ancient Skeletal Boots
							i(50339),	-- Sliver of Pure Ice
						},
					}),
					e(1625, {	-- Lady Deathwhisper
						["creatureID"] = 36855,	-- Lady Deathwhisper
						["groups"] = {
							ach(4535),	-- Full House (10 player)
							i(50776),	-- Njordar Bone Bow
							i(50781),	-- Scourgelord's Baton
							i(50779),	-- Deathspeaker Zealot's Helm
							i(50780),	-- Chestguard of the Frigid Noose
							i(50786),	-- Ghoul Commander's Cuirass
							i(50785),	-- Bracers of Dark Blessings
							i(50777),	-- Handgrips of Frost and Sleet
							i(50782),	-- Sister's Handshrouds
							i(50784),	-- Deathspeaker Disciple's Belt
							i(50778),	-- Soulthief's Braided Belt
							i(50783),	-- Boots of the Frozen Seed
							i(50342),	-- Whispering Fanged Skull
						},
					}),
					e(1626, {	-- Icecrown Gunship Battle [High Overlord Saurfang (A) / Muradin Bronzebeard (H)]
						-- This is a smart header that will change itself to the faction specific version on initial load.
						["providers"] = {
							{ "o", 201873 },	-- Gunship Armory (A)
							{ "o", 202180 },	-- Gunship Armory (H)
						},
						["crs"] = {
							36939,	-- High Overlord Saurfang
							36948,	-- Muradin Bronzebeard
						},
						["OnInit"] = [[function(t)
							t.objectID = t.providers[_.FactionID == Enum.FlightPathFaction.Horde and 2 or 1][2];
							t.providers = nil;
							return t;
						end]],
						["groups"] = {
							ach(4536),	-- I'm on a Boat (10 player)
							i(50787),	-- Frost Giant's Cleaver
							i(50793),	-- Midnight Sun
							i(50794),	-- Neverending Winter
							i(50797),	-- Ice-Reinforced Vrykul Helm
							i(50792),	-- Pauldrons of Lost Hope
							i(50791),	-- Saronite Gargoyle Cloak
							i(50796),	-- Bracers of Pale Illumination
							i(50789),	-- Icecrown Rampart Bracers
							i(50795),	-- Cord of Dark Suffering
							i(50788),	-- Bone Drake's Enameled Boots
							i(50790),	-- Abomination's Bloody Ring
							i(50340),	-- Muradin's Spyglass
						},
					}),
					e(1628, {	-- Deathbringer Saurfang
						["creatureID"] = 37813,	-- Deathbringer Saurfang
						["groups"] = {
							ach(4537),	-- I've Gone and Made a Mess (10 player)
							i(142095, {	-- Blood Boil (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(50805),	-- Mag'hari Chieftain's Staff
							i(50798),	-- Ramaladni's Blade of Culling
							i(50807),	-- Thaumaturge's Crackling Cowl
							i(50809),	-- Soulcleave Pendant
							i(50801),	-- Blade-Scored Carapace
							i(50800),	-- Hauberk of a Thousand Cuts
							i(50802),	-- Gargoyle Spit Bracers
							i(50799),	-- Scourge Stranglers
							i(50808),	-- Deathforged Legplates
							i(50806),	-- Leggings of Unrelenting Blood
							i(50804),	-- Icecrown Spire Sandals
							i(50803),	-- Saurfang's Cold-Forged Band
							i(139547, {	-- Runes of the Darkening [Death Knight Hidden Appearance]
								["sourceQuest"] = 38990,	-- The Call of Icecrown
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					n(37904, {	-- Brazie Getz
						["description"] = "After you kill Deathbringer Saurfang, this vendor shows up in the camp.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(49926),	-- Brazie's Black Book of Secrets
						},
					}),
				}),
				n(THE_PLAGUEWORKS, {
					ach(4528, {	-- The Plagueworks (10 player)
						crit(12759, {	-- Festergut
							["_encounter"] = { 1629, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(12760, {	-- Rotface
							["_encounter"] = { 1630, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(12761, {	-- Professor Putricide
							["_encounter"] = { 1631, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
					}),
					e(1629, {	-- Festergut
						["creatureID"] = 36626,	-- Festergut
						["groups"] = {
							ach(4577),	-- Flu Shot Shortage (10 player)
							i(50966),	-- Abracadaver
							i(50810),	-- Gutbuster
							i(50852),	-- Precious' Putrid Collar
							i(50988),	-- Bloodstained Surgeon's Shoulderguards
							i(50859),	-- Cloak of Many Skins
							i(50985),	-- Wrists of Septic Shock
							i(50967),	-- Festergut's Gaseous Gloves
							i(50811),	-- Festering Fingerguards
							i(50990),	-- Kilt of Untreated Wounds
							i(50858),	-- Plague-Soaked Leather Leggings
							i(50812),	-- Taldron's Long Neglected Boots
							i(50986),	-- Signet of Putrefaction
							i(50999, {	-- Gluth's Fetching Knife
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					e(1630, {	-- Rotface
						["creatureID"] = 36627,	-- Rotface
						["groups"] = {
							ach(4538),	-- Dances with Oozes (10 player)
							i(50998),	-- Shaft of Glacial Ice
							i(51003),	-- Abomination Knuckles
							i(51004),	-- Lockjaw
							i(51002),	-- Taldron's Short-Sighted Helm
							i(51008),	-- Choker of Filthy Diamonds
							i(51009),	-- Chestguard of the Failed Experiment
							i(51007),	-- Ether-Soaked Bracers
							i(51005),	-- Gloves of Broken Fingers
							i(51000),	-- Flesh-Shaper's Gurney Strap
							i(51006),	-- Shuffling Shoes
							i(51001),	-- Rotface's Rupturing Ring
						},
					}),
					e(1631, {	-- Professor Putricide
						["creatureID"] = 36678,	-- Professor Putricide
						["groups"] = {
							ach(4578),	-- Nausea, Heartburn, Indigestion... (10 player)
							i(142096, {	-- Blightbreath (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(51011),	-- Flesh-Carving Scalpel
							i(51010),	-- The Facelifter
							i(51013),	-- Discarded Bag of Entrails
							i(51012),	-- Infected Choker
							i(51016),	-- Pendant of Split Veins
							i(51014),	-- Scalpel-Sharpening Shoulderguards
							i(51015),	-- Shoulderpads of the Morbid Ritual
							i(51020),	-- Shoulders of Ruinous Senility
							i(51018),	-- Chestplate of Septic Stitches
							i(51017),	-- Cauterized Cord
							i(51019),	-- Rippling Flesh Kilt
							i(50341),	-- Unidentifiable Organ
						},
					}),
				}),
				n(THE_CRIMSON_HALLS, {
					ach(4529, {	-- The Crimson Hall (10 player)
						crit(12762, {	-- Blood Prince Council
							["_encounter"] = { 1632, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(12763, {	-- Blood-Queen Lana'thel
							["_encounter"] = { 1633, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
					}),
					e(1632, {	-- Blood Prince Council
						["crs"] = {
							37972,	-- Prince Keleseth
							37973,	-- Prince Taldaram
							37970,	-- Prince Valanar
						},
						["groups"] = {
							ach(4582),	-- The Orb Whisperer (10 player)
							i(51022),	-- Hersir's Greatspear
							i(51021),	-- Soulbreaker
							i(51326),	-- Wand of Ruby Claret
							i(51383),	-- Spaulders of the Blood Princes
							i(51382),	-- Heartsick Mender's Cape
							i(51379),	-- Bloodsoul Raiment
							i(51325),	-- Blood-Drinker's Girdle
							i(51025),	-- Battle-Maiden's Legguards
							i(51380),	-- Pale Corpse Boots
							i(51023),	-- Taldaram's Soft Slippers
							i(51381),	-- Cerise Coiled Ring
							i(51024),	-- Thrice Fanged Signet
						},
					}),
					e(1633, {	-- Blood-Queen Lana'thel
						["creatureID"] = 37955,	-- Blood-Queen Lana'thel
						["groups"] = {
							ach(4539, {	-- Once Bitten, Twice Shy (10 player)
								crit(12780),	-- Defeat Blood-Queen Lana'thel without becoming a vampire
								crit(13011),	-- Defeat Blood-Queen Lana'thel while a vampire
							}),
							i(51384),	-- Bloodsipper
							i(51553),	-- Lana'thel's Bloody Nail
							i(51385),	-- Stakethrower
							i(51554),	-- Cowl of Malefic Repose
							i(51548),	-- Collar of Haughty Disdain
							i(51552),	-- Shoulderpads of the Searing Kiss
							i(51551),	-- Chestguard of Siphoned Elements
							i(51386),	-- Throatrender Handguards
							i(51556),	-- Veincrusher Gauntlets
							i(51555),	-- Tightening Waistband
							i(51550),	-- Ivory-Inlaid Leggings
							i(51387),	-- Seal of the Twilight Queen
						},
					}),
				}),
				n(THE_FROSTWING_HALLS, {
					ach(4527, {	-- The Frostwing Halls (10 player)
						crit(12757, {	-- Valithria Dreamwalker
							["_encounter"] = { 1634, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
						crit(12758, {	-- Sindragosa
							["_encounter"] = { 1635, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
						}),
					}),
					e(1634, {	-- Valithria Dreamwalker
						["creatureID"] = 36789,	-- Valithria Dreamwalker
						["groups"] = {
							ach(4579),	-- Portal Jockey (10 player)
							i(51562),	-- Oxheart
							i(51582),	-- Sister Svalna's Aether Staff
							i(51561),	-- Dreamhunter's Carbine
							i(51585),	-- Sister Svalna's Spangenhelm
							i(51586),	-- Emerald Saint's Spaulders
							i(51565),	-- Skinned Whelp Shoulders
							i(51584),	-- Lich Wrappings
							i(51563),	-- Taiga Bindings
							i(51583),	-- Stormbringer Gloves
							i(51564),	-- Ironrope Belt of Ymirjar
							i(51777),	-- Leggings of the Refracted Mind
							i(51566),	-- Legguards of the Twisted Dream
						},
					}),
					e(1635, {	-- Sindragosa
						["creatureID"] = 36853,	-- Sindragosa
						["groups"] = {
							ach(4580),	-- All You Can Eat (10 player)
							i(142097, {	-- Soulbroken Whelpling (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(51788),	-- Bleak Coldarra Carver
							i(51784),	-- Splintershard
							i(51791),	-- Lost Pavise of the Blue Flight
							i(51779),	-- Rimetooth Pendant
							i(51792),	-- Shoulderguards of Crystalline Bone
							i(51790),	-- Robes of Azure Downfall
							i(51783),	-- Vambraces of the Frost Wyrm Queen
							i(51789),	-- Icicle Shapers
							i(51782),	-- Etched Dragonbone Girdle
							i(51786),	-- Legplates of Aetheric Strife
							i(51787),	-- Scourge Fanged Stompers
							i(51785),	-- Wyrmwing Treads
						},
					}),
					e(1636, {	-- The Lich King
						["creatureID"] = 36597,	-- The Lich King
						["groups"] = {
							ach(4601),	-- Been Waiting a Long Time for This (10 player)
							ach(4581),	-- Neck-Deep in Vile (10 player)
							ach(4530, {	-- The Frozen Throne (10 player)
								title(140),	-- the Kingslayer
							}),
							i(142098, {	-- Drudge Ghoul (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(138955, {	-- Illusion: Rune of Razorice (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
								["classes"] = { DEATHKNIGHT },
							}),
							i(51799),	-- Halion, Staff of Forgotten Love
							i(51797),	-- Tainted Twig of Nordrassil
							i(51796),	-- Warmace of Menethil
							i(51801),	-- Pugius, Fist of Defiance
							i(51800),	-- Stormfury, Black Blade of the Betrayer
							i(51803),	-- Tel'thas, Dagger of the Blood King
							i(51795),	-- Troggbane, Axe of the Frostborne King
							i(51798),	-- Valius, Gavel of the Lightbringer
							i(51802),	-- Windrunner's Heartseeker
							i(122229, {	-- Music Roll: Invincible
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(139547, {	-- Runes of the Darkening [Death Knight Hidden Appearance]
								["sourceQuest"] = 38990,	-- The Call of Icecrown
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC, {
				n(STORMING_THE_CITADEL, {
					ach(4628, {	-- Heroic: Storming the Citadel (10 player)
						crit(13090, {	-- Lord Marrowgar
							["_encounter"] = { 1624, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(13104, {	-- Lady Deathwhisper
							["_encounter"] = { 1625, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(13110, {	-- Icecrown Gunship Battle
							["_encounter"] = { 1626, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(13113, {	-- Deathbringer Saurfang
							["_encounter"] = { 1628, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
					}),
					e(1624, {	-- Lord Marrowgar
						["creatureID"] = 36612,	-- Lord Marrowgar
						["groups"] = {
							ach(4534),	-- Boned (10 player)
							i(142094, {	-- Boneshard (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(51936),	-- Citadel Enforcer's Claymore
							i(51938),	-- Bone Warden's Splitter
							i(51937),	-- Bonebreaker Scepter
							i(51932),	-- Frost Needle
							i(51934),	-- Marrowgar's Scratching Choker
							i(51933),	-- Shawl of Nerubian Silk
							i(51929),	-- Coldwraith Bracers
							i(51930),	-- Cord of the Patronizing Practitioner
							i(51935),	-- Linked Scourge Vertebrae
							i(51928),	-- Corrupted Silverplate Leggings
							i(51931),	-- Ancient Skeletal Boots
							i(50346),	-- Sliver of Pure Ice
						},
					}),
					e(1625, {	-- Lady Deathwhisper
						["creatureID"] = 36855,	-- Lady Deathwhisper
						["groups"] = {
							ach(4535),	-- Full House (10 player)
							i(51927),	-- Njordar Bone Bow
							i(51922),	-- Scourgelord's Baton
							i(51924),	-- Deathspeaker Zealot's Helm
							i(51923),	-- Chestguard of the Frigid Noose
							i(51917),	-- Ghoul Commander's Cuirass
							i(51918),	-- Bracers of Dark Blessings
							i(51926),	-- Handgrips of Frost and Sleet
							i(51921),	-- Sister's Handshrouds
							i(51919),	-- Deathspeaker Disciple's Belt
							i(51925),	-- Soulthief's Braided Belt
							i(51920),	-- Boots of the Frozen Seed
							i(50343),	-- Whispering Fanged Skull
						},
					}),
					e(1626, {	-- Icecrown Gunship Battle [High Overlord Saurfang (A) / Muradin Bronzebeard (H)]
						-- This is a smart header that will change itself to the faction specific version on initial load.
						["providers"] = {
							{ "o", 201873 },	-- Gunship Armory (A)
							{ "o", 202180 },	-- Gunship Armory (H)
						},
						["crs"] = {
							36939,	-- High Overlord Saurfang
							36948,	-- Muradin Bronzebeard
						},
						["OnInit"] = [[function(t)
							t.objectID = t.providers[_.FactionID == Enum.FlightPathFaction.Horde and 2 or 1][2];
							t.providers = nil;
							return t;
						end]],
						["groups"] = {
							ach(4536),	-- I'm on a Boat (10 player)
							i(51916),	-- Frost Giant's Cleaver
							i(51910),	-- Midnight Sun
							i(51909),	-- Neverending Winter
							i(51906),	-- Ice-Reinforced Vrykul Helm
							i(51911),	-- Pauldrons of Lost Hope
							i(51912),	-- Saronite Gargoyle Cloak
							i(51907),	-- Bracers of Pale Illumination
							i(51914),	-- Icecrown Rampart Bracers
							i(51908),	-- Cord of Dark Suffering
							i(51915),	-- Bone Drake's Enameled Boots
							i(51913),	-- Abomination's Bloody Ring
							i(50345),	-- Muradin's Spyglass
						},
					}),
					e(1628, {	-- Deathbringer Saurfang
						["creatureID"] = 37813,	-- Deathbringer Saurfang
						["groups"] = {
							ach(4537),	-- I've Gone and Made a Mess (10 player)
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(142095, {	-- Blood Boil (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(51898),	-- Mag'hari Chieftain's Staff
							i(51905),	-- Ramaladni's Blade of Culling
							i(51896),	-- Thaumaturge's Crackling Cowl
							i(51894),	-- Soulcleave Pendant
							i(51902),	-- Blade-Scored Carapace
							i(51903),	-- Hauberk of a Thousand Cuts
							i(51901),	-- Gargoyle Spit Bracers
							i(51904),	-- Scourge Stranglers
							i(51895),	-- Deathforged Legplates
							i(51897),	-- Leggings of Unrelenting Blood
							i(51899),	-- Icecrown Spire Sandals
							i(51900),	-- Saurfang's Cold-Forged Band
							i(139547, {	-- Runes of the Darkening [Death Knight Hidden Appearance]
								["sourceQuest"] = 38990,	-- The Call of Icecrown
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					n(37904, {	-- Brazie Getz
						["description"] = "After you kill Deathbringer Saurfang, this vendor shows up in the camp.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(49926),	-- Brazie's Black Book of Secrets
						},
					}),
				}),
				n(THE_PLAGUEWORKS, {
					ach(4629, {	-- Heroic: The Plagueworks (10 player)
						crit(13116, {	-- Festergut
							["_encounter"] = { 1629, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(13119, {	-- Rotface
							["_encounter"] = { 1630, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(13128, {	-- Professor Putricide
							["_encounter"] = { 1631, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
					}),
					e(1629, {	-- Festergut
						["creatureID"] = 36626,	-- Festergut
						["groups"] = {
							ach(4577),	-- Flu Shot Shortage (10 player)
							i(51887),	-- Abracadaver
							i(51893),	-- Gutbuster
							i(51890),	-- Precious' Putrid Collar
							i(51883),	-- Bloodstained Surgeon's Shoulderguards
							i(51888),	-- Cloak of Many Skins
							i(51885),	-- Wrists of Septic Shock
							i(51886),	-- Festergut's Gaseous Gloves
							i(51892),	-- Festering Fingerguards
							i(51882),	-- Kilt of Untreated Wounds
							i(51889),	-- Plague-Soaked Leather Leggings
							i(51891),	-- Taldron's Long Neglected Boots
							i(51884),	-- Signet of Putrefaction
						},
					}),
					e(1630, {	-- Rotface
						["creatureID"] = 36627,	-- Rotface
						["groups"] = {
							ach(4538),	-- Dances with Oozes (10 player)
							i(51881),	-- Shaft of Glacial Ice
							i(51876),	-- Abomination Knuckles
							i(51875),	-- Lockjaw
							i(51877),	-- Taldron's Short-Sighted Helm
							i(51871),	-- Choker of Filthy Diamonds
							i(51870),	-- Chestguard of the Failed Experiment
							i(51872),	-- Ether-Soaked Bracers
							i(51874),	-- Gloves of Broken Fingers
							i(51879),	-- Flesh-Shaper's Gurney Strap
							i(51873),	-- Shuffling Shoes
							i(51878),	-- Rotface's Rupturing Ring
							i(51880, {	-- Gluth's Fetching Knife
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					e(1631, {	-- Professor Putricide
						["creatureID"] = 36678,	-- Professor Putricide
						["groups"] = {
							ach(4578),	-- Nausea, Heartburn, Indigestion... (10 player)
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(142096, {	-- Blightbreath (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(51868),	-- Flesh-Carving Scalpel
							i(51869),	-- The Facelifter
							i(51866),	-- Discarded Bag of Entrails
							i(51867),	-- Infected Choker
							i(51863),	-- Pendant of Split Veins
							i(51865),	-- Scalpel-Sharpening Shoulderguards
							i(51864),	-- Shoulderpads of the Morbid Ritual
							i(51859),	-- Shoulders of Ruinous Senility
							i(51861),	-- Chestplate of Septic Stitches
							i(51862),	-- Cauterized Cord
							i(51860),	-- Rippling Flesh Kilt
							i(50344),	-- Unidentifiable Organ
						},
					}),
				}),
				n(THE_CRIMSON_HALLS, {
					ach(4630, {	-- Heroic: The Crimson Hall (10 player)
						crit(13122, {	-- Blood Prince Council
							["_encounter"] = { 1632, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(13131, {	-- Blood-Queen Lana'thel
							["_encounter"] = { 1633, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
					}),
					e(1632, {	-- Blood Prince Council
						["crs"] = {
							37972,	-- Prince Keleseth
							37973,	-- Prince Taldaram
							37970,	-- Prince Valanar
						},
						["groups"] = {
							ach(4582),	-- The Orb Whisperer (10 player)
							i(51857),	-- Hersir's Greatspear
							i(51858),	-- Soulbreaker
							i(51852),	-- Wand of Ruby Claret
							i(51847),	-- Spaulders of the Blood Princes
							i(51848),	-- Heartsick Mender's Cape
							i(51851),	-- Bloodsoul Raiment
							i(51853),	-- Blood-Drinker's Girdle
							i(51854),	-- Battle-Maiden's Legguards
							i(51850),	-- Pale Corpse Boots
							i(51856),	-- Taldaram's Soft Slippers
							i(51849),	-- Cerise Coiled Ring
							i(51855),	-- Thrice Fanged Signet
						},
					}),
					e(1633, {	-- Blood-Queen Lana'thel
						["creatureID"] = 37955,	-- Blood-Queen Lana'thel
						["groups"] = {
							ach(4539, {	-- Once Bitten, Twice Shy (10 player)
								crit(12780),	-- Defeat Blood-Queen Lana'thel without becoming a vampire
								crit(13011),	-- Defeat Blood-Queen Lana'thel while a vampire
							}),
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(51846),	-- Bloodsipper
							i(51838),	-- Lana'thel's Bloody Nail
							i(51845),	-- Stakethrower
							i(51837),	-- Cowl of Malefic Repose
							i(51842),	-- Collar of Haughty Disdain
							i(51839),	-- Shoulderpads of the Searing Kiss
							i(51840),	-- Chestguard of Siphoned Elements
							i(51844),	-- Throatrender Handguards
							i(51835),	-- Veincrusher Gauntlets
							i(51836),	-- Tightening Waistband
							i(51841),	-- Ivory-Inlaid Leggings
							i(51843),	-- Seal of the Twilight Queen
						},
					}),
				}),
				n(THE_FROSTWING_HALLS, {
					ach(4631, {	-- Heroic: The Frostwing Halls (10 player)
						crit(13125, {	-- Valithria Dreamwalker
							["_encounter"] = { 1634, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
						crit(13134, {	-- Sindragosa
							["_encounter"] = { 1635, DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC },
						}),
					}),
					e(1634, {	-- Valithria Dreamwalker
						["creatureID"] = 36789,	-- Valithria Dreamwalker
						["groups"] = {
							ach(4579),	-- Portal Jockey (10 player)
							i(51833),	-- Oxheart
							i(51828),	-- Sister Svalna's Aether Staff
							i(51834),	-- Dreamhunter's Carbine
							i(51825),	-- Sister Svalna's Spangenhelm
							i(51824),	-- Emerald Saint's Spaulders
							i(51830),	-- Skinned Whelp Shoulders
							i(51826),	-- Lich Wrappings
							i(51832),	-- Taiga Bindings
							i(51827),	-- Stormbringer Gloves
							i(51831),	-- Ironrope Belt of Ymirjar
							i(51823),	-- Leggings of the Refracted Mind
							i(51829),	-- Legguards of the Twisted Dream
						},
					}),
					e(1635, {	-- Sindragosa
						["creatureID"] = 36853,	-- Sindragosa
						["groups"] = {
							ach(4580),	-- All You Can Eat (10 player)
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(142097, {	-- Soulbroken Whelpling (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(51815),	-- Bleak Coldarra Carver
							i(51819),	-- Splintershard
							i(51812),	-- Lost Pavise of the Blue Flight
							i(51822),	-- Rimetooth Pendant
							i(51811),	-- Shoulderguards of Crystalline Bone
							i(51813),	-- Robes of Azure Downfall
							i(51820),	-- Vambraces of the Frost Wyrm Queen
							i(51814),	-- Icicle Shapers
							i(51821),	-- Etched Dragonbone Girdle
							i(51817),	-- Legplates of Aetheric Strife
							i(51816),	-- Scourge Fanged Stompers
							i(51818),	-- Wyrmwing Treads
						},
					}),
					e(1636, {	-- The Lich King
						["creatureID"] = 36597,	-- The Lich King
						["groups"] = {
							ach(4583, {	-- Bane of the Fallen King
								title(139),	-- Bane of the Fallen King
							}),
							ach(4601),	-- Been Waiting a Long Time for This (10 player)
							ach(4581),	-- Neck-Deep in Vile (10 player)
							ach(5023, {	-- The Frozen Throne - Guild Edition
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(142099, {	-- Wicked Soul (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(138955, {	-- Illusion: Rune of Razorice (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
								["classes"] = { DEATHKNIGHT },
							}),
							i(51943),	-- Halion, Staff of Forgotten Love
							i(51945),	-- Tainted Twig of Nordrassil
							i(51946),	-- Warmace of Menethil
							i(51941),	-- Pugius, Fist of Defiance
							i(51942),	-- Stormfury, Black Blade of the Betrayer
							i(51939),	-- Tel'thas, Dagger of the Blood King
							i(51947),	-- Troggbane, Axe of the Frostborne King
							i(51944),	-- Valius, Gavel of the Lightbringer
							i(51940),	-- Windrunner's Heartseeker
							i(122229, {	-- Music Roll: Invincible
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(139547, {	-- Runes of the Darkening [Death Knight Hidden Appearance]
								["sourceQuest"] = 38990,	-- The Call of Icecrown
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL, {
				n(COMMON_BOSS_DROPS, {
					["crs"] = {
						36612,	-- Lord Marrowgar
						36855,	-- Lady Deathwhisper
						36939,	-- High Overlord Saurfang
						36948,	-- Muradin Bronzebeard
						37813,	-- Deathbringer Saurfang
						36626,	-- Festergut
						36627,	-- Rotface
						36678,	-- Professor Putricide
						37970,	-- Blood Prince Council
						37955,	-- Blood-Queen Lana'thel
						36789,	-- Valithria Dreamwalker
						36853,	-- Sindragosa
						36597,	-- The Lich King
					},
					["groups"] = {
						i(50274),	-- Shadowfrost Shard
					},
				}),
				n(STORMING_THE_CITADEL, {
					ach(4604, {	-- Storming the Citadel (25 player)
						crit(12945, {	-- Lord Marrowgar
							["_encounter"] = { 1624, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
						}),
						crit(12948, {	-- Lady Deathwhisper
							["_encounter"] = { 1625, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
						}),
						crit(12947, {	-- Icecrown Gunship Battle
							["_encounter"] = { 1626, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
						}),
						crit(12946, {	-- Deathbringer Saurfang
							["_encounter"] = { 1628, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
						}),
					}),
					e(1624, {	-- Lord Marrowgar
						["creatureID"] = 36612,	-- Lord Marrowgar
						["groups"] = {
							ach(4610),	-- Boned (25 player)
							i(142094, {	-- Boneshard (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(50415),	-- Bryntroll, the Bone Arbiter
							i(49968),	-- Frozen Bonespike
							i(49976),	-- Bulwark of Smouldering Steel
							i(49952),	-- Snowserpent Mail Helm
							i(49975),	-- Bone Sentinel's Amulet
							i(49980),	-- Rusted Bonespike Pauldrons
							i(49951),	-- Gendarme's Cuirass
							i(49960),	-- Bracers of Dark Reckoning
							i(49979),	-- Handguards of Winter's Respite
							i(49978),	-- Crushing Coldwraith Belt
							i(49964),	-- Legguards of Lost Hope
							i(49950),	-- Frostbitten Fur Boots
							i(49949),	-- Band of the Bone Colossus
							i(49977),	-- Loop of the Endless Labyrinth
							i(49967),	-- Marrowgar's Frigid Eye
						},
					}),
					e(1625, {	-- Lady Deathwhisper
						["creatureID"] = 36855,	-- Lady Deathwhisper
						["groups"] = {
							ach(4611),	-- Full House (25 player)
							i(49992),	-- Nibelung
							i(49982),	-- Heartpierce
							i(50034),	-- Zod's Repeating Longbow
							i(49986),	-- Broken Ram Skull Helm
							i(49989),	-- Ahn'kahar Onyx Neckguard
							i(49987),	-- Cultist's Bloodsoaked Spaulders
							i(49991),	-- Shoulders of Mercy Killing
							i(49996),	-- Deathwhisper Raiment
							i(49994),	-- The Lady's Brittle Bracers
							i(49995),	-- Fallen Lord's Handguards
							i(49988),	-- Leggings of Northern Lights
							i(49983),	-- Blood-Soaked Saronite Stompers
							i(49993),	-- Necrophotic Greaves
							i(49985),	-- Juggernaut Band
							i(49990),	-- Ring of Maddening Whispers
						},
					}),
					e(1626, {	-- Icecrown Gunship Battle [High Overlord Saurfang (A) / Muradin Bronzebeard (H)]
						-- This is a smart header that will change itself to the faction specific version on initial load.
						["providers"] = {
							{ "o", 201873 },	-- Gunship Armory (A)
							{ "o", 202180 },	-- Gunship Armory (H)
						},
						["crs"] = {
							36939,	-- High Overlord Saurfang
							36948,	-- Muradin Bronzebeard
						},
						["OnInit"] = [[function(t)
							t.objectID = t.providers[_.FactionID == Enum.FlightPathFaction.Horde and 2 or 1][2];
							t.providers = nil;
							return t;
						end]],
						["groups"] = {
							ach(4612),	-- I'm on a Boat (25 player)
							i(50411),	-- Scourgeborne Waraxe
							i(50006),	-- Corp'rethar Ceremonial Crown
							i(50005),	-- Amulet of the Silent Eulogy
							i(50003),	-- Boneguard Commander's Pauldrons
							i(49998),	-- Shadowvault Slayer's Cloak
							i(50001),	-- Ikfirus' Sack of Wonder
							i(50002),	-- Polar Bear Claw Bracers
							i(50000),	-- Scourge Hunter's Vambraces
							i(50011),	-- Gunship Captain's Mittens
							i(50010),	-- Waistband of Righteous Fury
							i(50009),	-- Boots of Unnatural Growth
							i(50008),	-- Ring of Rapid Ascent
							i(49999),	-- Skeleton Lord's Circle
							i(50359),	-- Althor's Abacus
							i(50352),	-- Corpse Tongue Coin
						},
					}),
					e(1628, {	-- Deathbringer Saurfang
						["creatureID"] = 37813,	-- Deathbringer Saurfang
						["groups"] = {
							ach(4613),	-- I've Gone and Made a Mess (25 player)
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(142095, {	-- Blood Boil (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(50412),	-- Bloodvenom Blade
							i(50014),	-- Greatcloak of the Turned Champion
							i(50333),	-- Toskk's Maximized Wristguards
							i(50015),	-- Belt of the Blood Nova
							i(50362),	-- Deathbringer's Will
							i(139547, {	-- Runes of the Darkening [Death Knight Hidden Appearance]
								["sourceQuest"] = 38990,	-- The Call of Icecrown
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					n(37904, {	-- Brazie Getz
						["description"] = "After you kill Deathbringer Saurfang, this vendor shows up in the camp.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(49926),	-- Brazie's Black Book of Secrets
						},
					}),
				}),
				n(THE_PLAGUEWORKS, {
					ach(4605, {	-- The Plagueworks (25 player)
						crit(12949, {	-- Festergut
							["_encounter"] = { 1629, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
						}),
						crit(12950, {	-- Rotface
							["_encounter"] = { 1630, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
						}),
						crit(12951, {	-- Professor Putricide
							["_encounter"] = { 1631, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
						}),
					}),
					e(1629, {	-- Festergut
						["creatureID"] = 36626,	-- Festergut
						["groups"] = {
							i(50226, {	-- Festergut's Acidic Blood
								["description"] = "This can drop from Festergut on 25-Man Normal or Heroic.",
								["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
							}),
							ach(4615),	-- Flu Shot Shortage (25 player)
							i(50040),	-- Distant Land
							i(50035),	-- Black Bruise
							i(50060),	-- Faceplate of the Forgotten
							i(50061),	-- Holiday's Grace
							i(50059),	-- Horrific Flesh Epaulets
							i(50038),	-- Carapce of Forgotten Kings
							i(50037),	-- Fleshrending Gauntlets
							i(50064),	-- Unclean Surgical Gloves
							i(50036),	-- Belt of Broken Bones
							i(50063),	-- Lingering Illness
							i(50413),	-- Nerub'ar Stalker's Cord
							i(50042),	-- Gangrenous Leggings
							i(50041),	-- Leather of Stitched Scourge Parts
							i(50056),	-- Plaguebringer's Stained Pants
							i(50062),	-- Plague Scientist's Boots
							i(50414),	-- Might of Blight
						},
					}),
					e(1630, {	-- Rotface
						["creatureID"] = 36627,	-- Rotface
						["groups"] = {
							i(50231, {	-- Rotface's Acidic Blood
								["description"] = "This can drop from Rotface on 25-Man Normal or Heroic.",
								["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
							}),
							ach(4614),	-- Dances with Oozes (25 player)
							i(50016),	-- Rib Spreader
							i(50028),	-- Trauma
							i(50033),	-- Corpse-Impaling Spike
							i(50026),	-- Helm of the Elder Moon
							i(50023),	-- Bile-Encrusted Medallion
							i(50022),	-- Dual-Bladed Pauldrons
							i(50020),	-- Raging Behemoth's Shoulderplates
							i(50019),	-- Winding Sheet
							i(50024),	-- Blightborne Warplate
							i(50027),	-- Rot-Resistant Breastplate
							i(50030),	-- Bloodsunder's Bracers
							i(50032),	-- Death Surgeon's Sleeves
							i(50021),	-- Aldriana's Gloves of Secrecy
							i(50025),	-- Seal of Many Mouths
							i(50353),	-- Dislodged Foreign Object
						},
					}),
					e(1631, {	-- Professor Putricide
						["creatureID"] = 36678,	-- Professor Putricide
						["groups"] = {
							ach(4616),	-- Nausea, Heartburn, Indigestion... (25 player)
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(142096, {	-- Blightbreath (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(50179),	-- Last Word
							i(50068),	-- Rigormortis
							i(50067),	-- Astrylian's Sutured Cinch
							i(50069),	-- Professor's Bloodied Smock
							i(50351),	-- Tiny Abomination in a Jar
						},
					}),
				}),
				n(THE_CRIMSON_HALLS, {
					ach(4606, {	-- The Crimson Hall (25 player)
						crit(12952, {	-- Blood Prince Council
							["_encounter"] = { 1632, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
						}),
						crit(12953, {	-- Blood-Queen Lana'thel
							["_encounter"] = { 1633, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
						}),
					}),
					e(1632, {	-- Blood Prince Council
						["crs"] = {
							37972,	-- Prince Keleseth
							37973,	-- Prince Taldaram
							37970,	-- Prince Valanar
						},
						["groups"] = {
							ach(4617),	-- The Orb Whisperer (25 player)
							i(49919),	-- Cryptmaker
							i(50184),	-- Keleseth's Seducer
							i(50173),	-- Shadow Silk Spindle
							i(50073),	-- Geistlord's Punishment Sack
							i(50072),	-- Landsoul's Horned Greathelm
							i(50171),	-- Shoulders of Frost-Tipped Thorns
							i(50074),	-- Royal Crimson Cloak
							i(50177),	-- Mail of Crimson Coins
							i(50172),	-- Sanguine Silk Robes
							i(50175),	-- Crypt Keeper's Bracers
							i(50176),	-- San'layn Ritualist Gloves
							i(50075),	-- Taldaram's Plated Fists
							i(50071),	-- Treads of the Wasteland
							i(50174),	-- Incarnadine Band of Mending
							i(50170),	-- Valanar's Other Signet Ring
						},
					}),
					e(1633, {	-- Blood-Queen Lana'thel
						["creatureID"] = 37955,	-- Blood-Queen Lana'thel
						["groups"] = {
							ach(4618, {	-- Once Bitten, Twice Shy (25 player)
								crit(13012),	-- Defeat Blood-Queen Lana'thel without becoming a vampire
								crit(13013),	-- Defeat Blood-Queen Lana'thel while a vampire
							}),
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(50178),	-- Bloodfall
							i(50181),	-- Divine Light
							i(50065),	-- Icecrown Glacial Wall
							i(50182),	-- Blood Queen's Crimson Choker
							i(50180),	-- Lana'thel's Chain of Flagellation
							i(50354),	-- Bauble of True Blood
						},
					}),
				}),
				n(THE_FROSTWING_HALLS, {
					ach(4607, {	-- The Frostwing Halls (25 player)
						crit(12954, {	-- Valithria Dreamwalker
							["_encounter"] = { 1634, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
						}),
						crit(12955, {	-- Sindragosa
							["_encounter"] = { 1635, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
						}),
					}),
					e(1634, {	-- Valithria Dreamwalker
						["creatureID"] = 36789,	-- Valithria Dreamwalker
						["groups"] = {
							ach(4619),	-- Portal Jockey (25 player)
							i(138832, {	-- Illusion: Earthliving (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
								["classes"] = { SHAMAN },
							}),
							i(50183),	-- Lungbreaker
							i(50472),	-- Nightmare Ender
							i(50202),	-- Snowstorm Helm
							i(50195),	-- Noose of Malachite
							i(50205),	-- Frostbinder's Shredded Cape
							i(50418),	-- Robe of the Waking Nightmare
							i(50417),	-- Bracers of Eternal Dreaming
							i(50188),	-- Anub'ar Stalker's Gloves
							i(50187),	-- Coldwraith Links
							i(50199),	-- Leggings of Dying Candles
							i(50192),	-- Scourge Reaver's Legplates
							i(50416),	-- Boots of the Funeral March
							i(50190),	-- Grinning Skull Greatboots
							i(50185),	-- Devium's Eternally Cold Ring
							i(50186),	-- Frostbrood Sapphire Ring
						},
					}),
					e(1635, {	-- Sindragosa
						["creatureID"] = 36853,	-- Sindragosa
						["groups"] = {
							ach(4620),	-- All You Can Eat (25 player)
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(142097, {	-- Soulbroken Whelpling (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(50423),	-- Sundial of Eternal Dusk
							i(50421),	-- Sindragosa's Cruel Claw
							i(50424),	-- Memory of Malygos
							i(50360),	-- Phylactery of the Nameless Lich
							i(50361),	-- Sindragosa's Flawless Fang
						},
					}),
					e(1636, {	-- The Lich King
						["creatureID"] = 36597,	-- The Lich King
						["groups"] = {
							ach(4621),	-- Been Waiting a Long Time for This (25 player)
							ach(4622),	-- Neck-Deep in Vile (25 player)
							ach(4597, {	-- The Frozen Throne (25 player)
								title(140),	-- the Kingslayer
							}),
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(142098, {	-- Drudge Ghoul (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(138955, {	-- Illusion: Rune of Razorice (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
								["classes"] = { DEATHKNIGHT },
							}),
							i(50429),	-- Archus, Greatstaff of Antonidas
							i(50070),	-- Glorenzelg, High-Blade of the Silver Hand
							i(50425),	-- Oathbinder, Charge of the Ranger-General
							i(50427),	-- Bloodsurge, Kel'Thuzad's Blade of Agony
							i(50012),	-- Havoc's Call, Blade of Lordaeron Kings
							i(50426),	-- Heaven's Fall, Kryss of a Thousand Lies
							i(49997),	-- Mithrios, Bronzebeard's Legacy
							i(50428),	-- Royal Scepter of Terenas II
							i(49981),	-- Fal'inrush, Defender of Quel'Thalas
							i(122229, {	-- Music Roll: Invincible
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(139547, {	-- Runes of the Darkening [Death Knight Hidden Appearance]
								["sourceQuest"] = 38990,	-- The Call of Icecrown
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC, {
				n(COMMON_BOSS_DROPS, {
					["crs"] = {
						36612,	-- Lord Marrowgar
						36855,	-- Lady Deathwhisper
						36939,	-- High Overlord Saurfang
						36948,	-- Muradin Bronzebeard
						37813,	-- Deathbringer Saurfang
						36626,	-- Festergut
						36627,	-- Rotface
						36678,	-- Professor Putricide
						37970,	-- Blood Prince Council
						37955,	-- Blood-Queen Lana'thel
						36789,	-- Valithria Dreamwalker
						36853,	-- Sindragosa
						36597,	-- The Lich King
					},
					["groups"] = {
						i(50274),	-- Shadowfrost Shard
					},
				}),
				n(STORMING_THE_CITADEL, {
					ach(4632, {	-- Heroic: Storming the Citadel (25 player)
						crit(13091, {	-- Lord Marrowgar
							["_encounter"] = { 1624, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
						}),
						crit(13106, {	-- Lady Deathwhisper
							["_encounter"] = { 1625, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
						}),
						crit(13111, {	-- Icecrown Gunship Battle
							["_encounter"] = { 1626, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
						}),
						crit(13114, {	-- Deathbringer Saurfang
							["_encounter"] = { 1628, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
						}),
					}),
					e(1624, {	-- Lord Marrowgar
						["creatureID"] = 36612,	-- Lord Marrowgar
						["groups"] = {
							ach(4610),	-- Boned (25 player)
							i(142094, {	-- Boneshard (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(50709),	-- Bryntroll, the Bone Arbiter
							i(50608),	-- Frozen Bonespike
							i(50616),	-- Bulwark of Smouldering Steel
							i(50605),	-- Snowserpent Mail Helm
							i(50609),	-- Bone Sentinel's Amulet
							i(50617),	-- Rusted Bonespike Pauldrons
							i(50606),	-- Gendarme's Cuirass
							i(50611),	-- Bracers of Dark Reckoning
							i(50615),	-- Handguards of Winter's Respite
							i(50613),	-- Crushing Coldwraith Belt
							i(50612),	-- Legguards of Lost Hope
							i(50607),	-- Frostbitten Fur Boots
							i(50604),	-- Band of the Bone Colossus
							i(50614),	-- Loop of the Endless Labyrinth
							i(50610),	-- Marrowgar's Frigid Eye
						},
					}),
					e(1625, {	-- Lady Deathwhisper
						["creatureID"] = 36855,	-- Lady Deathwhisper
						["groups"] = {
							ach(4611),	-- Full House (25 player)
							i(50648),	-- Nibelung
							i(50641),	-- Heartpierce
							i(50638),	-- Zod's Repeating Crossbow
							i(50640),	-- Broken Ram Skull Helm
							i(50647),	-- Ahn'kahar Onyx Neckguard
							i(50646),	-- Cultist's Bloodsoaked Spaulders
							i(50643),	-- Shoulders of Mercy Killing
							i(50649),	-- Deathwhisper Raiment
							i(50651),	-- The Lady's Brittle Bracers
							i(50650),	-- Fallen Lord's Handguards
							i(50645),	-- Leggings of Northern Lights
							i(50639),	-- Blood-Soaked Saronite Stompers
							i(50652),	-- Necrophotic Greaves
							i(50642),	-- Juggernaut Band
							i(50644),	-- Ring of Maddening Whispers
						},
					}),
					e(1626, {	-- Icecrown Gunship Battle [High Overlord Saurfang (A) / Muradin Bronzebeard (H)]
						-- This is a smart header that will change itself to the faction specific version on initial load.
						["providers"] = {
							{ "o", 201873 },	-- Gunship Armory (A)
							{ "o", 202180 },	-- Gunship Armory (H)
						},
						["crs"] = {
							36939,	-- High Overlord Saurfang
							36948,	-- Muradin Bronzebeard
						},
						["OnInit"] = [[function(t)
							t.objectID = t.providers[_.FactionID == Enum.FlightPathFaction.Horde and 2 or 1][2];
							t.providers = nil;
							return t;
						end]],
						["groups"] = {
							ach(4612),	-- I'm on a Boat (25 player)
							i(50654),	-- Scourgeborne Waraxe
							i(50661),	-- Corp'rethar Ceremonial Crown
							i(50658),	-- Amulet of the Silent Eulogy
							i(50660),	-- Boneguard Commander's Pauldrons
							i(50653),	-- Shadowvault Slayer's Cloak
							i(50656),	-- Ikfirus' Sack of Wonder
							i(50659),	-- Polar Bear Claw Bracers
							i(50655),	-- Scourge Hunter's Vambraces
							i(50663),	-- Gunship Captain's Mittens
							i(50667),	-- Waistband of Righteous Fury
							i(50665),	-- Boots of Unnatural Growth
							i(50664),	-- Ring of Rapid Ascent
							i(50657),	-- Skeleton Lord's Circle
							i(50366),	-- Althor's Abacus
							i(50349),	-- Corpse Tongue Coin
						},
					}),
					e(1628, {	-- Deathbringer Saurfang
						["creatureID"] = 37813,	-- Deathbringer Saurfang
						["groups"] = {
							ach(4613),	-- I've Gone and Made a Mess (25 player)
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52030),	-- Conqueror's Mark of Sanctification (Heroic)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52029),	-- Protector's Mark of Sanctifaction (Heroic)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(52028),	-- Vanquisher's Mark of Sanctification (Heroic)
							i(142095, {	-- Blood Boil (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(50672),	-- Bloodvenom Blade
							i(50668),	-- Greatcloak of the Turned Champion
							i(50670),	-- Toskk's Maximized Wristguards
							i(50671),	-- Belt of the Blood Nova
							i(50363),	-- Deathbringer's Will
							i(139547, {	-- Runes of the Darkening [Death Knight Hidden Appearance]
								["sourceQuest"] = 38990,	-- The Call of Icecrown
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					n(37904, {	-- Brazie Getz
						["description"] = "After you kill Deathbringer Saurfang, this vendor shows up in the camp.",
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(49926),	-- Brazie's Black Book of Secrets
						},
					}),
				}),
				n(THE_PLAGUEWORKS, {
					ach(4633, {	-- Heroic: The Plagueworks (25 player)
						crit(13117, {	-- Festergut
							["_encounter"] = { 1629, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
						}),
						crit(13120, {	-- Rotface
							["_encounter"] = { 1630, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
						}),
						crit(13129, {	-- Professor Putricide
							["_encounter"] = { 1631, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
						}),
					}),
					e(1629, {	-- Festergut
						["creatureID"] = 36626,	-- Festergut
						["groups"] = {
							i(50226, {	-- Festergut's Acidic Blood
								["description"] = "This can drop from Festergut on 25-Man Normal or Heroic.",
								["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
							}),
							ach(4615),	-- Flu Shot Shortage (25 player)
							i(50695),	-- Distant Land
							i(50692),	-- Black Bruise
							i(50701),	-- Faceplate of the Forgotten
							i(50700),	-- Holiday's Grace
							i(50698),	-- Horrific Flesh Epaulets
							i(50689),	-- Carapace of Forgotten Kings
							i(50690),	-- Fleshrending Gauntlets
							i(50703),	-- Unclean Surgical Gloves
							i(50691),	-- Belt of Broken Bones
							i(50702),	-- Lingering Illness
							i(50688),	-- Nerub'ar Stalker's Cord
							i(50697),	-- Gangrenous Leggings
							i(50696),	-- Leather of Stitched Scourge Pants
							i(50694),	-- Plaguebringer's Stained Pants
							i(50699),	-- Plague Scientist's Boots
							i(50693),	-- Might of Blight
						},
					}),
					e(1630, {	-- Rotface
						["creatureID"] = 36627,	-- Rotface
						["groups"] = {
							i(50231, {	-- Rotface's Acidic Blood
								["description"] = "This can drop from Rotface on 25-Man Normal or Heroic.",
								["classes"] = { WARRIOR, PALADIN, DEATHKNIGHT },
							}),
							ach(4614),	-- Dances with Oozes (25 player)
							i(50676),	-- Rib Spreader
							i(50685),	-- Trauma
							i(50684),	-- Corpse-Impaling Spike
							i(50679),	-- Helm of the Elder Moon
							i(50682),	-- Bile-Encrusted Medallion
							i(50673),	-- Dual-Bladed Pauldrons
							i(50674),	-- Raging Behemoth's Shoulderplates
							i(50677),	-- Winding Sheet
							i(50681),	-- Blightborne Warplate
							i(50680),	-- Rot-Resistant Breastplate
							i(50687),	-- Bloodsunder's Bracers
							i(50686),	-- Death Surgeon's Sleeves
							i(50675),	-- Aldriana's Gloves of Secrecy
							i(50678),	-- Seal of Many Mouths
							i(50348),	-- Dislodged Foreign Object
						},
					}),
					e(1631, {	-- Professor Putricide
						["creatureID"] = 36678,	-- Professor Putricide
						["groups"] = {
							ach(4616),	-- Nausea, Heartburn, Indigestion... (25 player)
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52030),	-- Conqueror's Mark of Sanctification (Heroic)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52029),	-- Protector's Mark of Sanctifaction (Heroic)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(52028),	-- Vanquisher's Mark of Sanctification (Heroic)
							i(142096, {	-- Blightbreath (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(50708),	-- Last Word
							i(50704),	-- Rigormortis
							i(50707),	-- Astrylian's Sutured Cinch
							i(50705),	-- Professor's Bloodied Smock
							i(50706),	-- Tiny Abomination in a Jar
						},
					}),
				}),
				n(THE_CRIMSON_HALLS, {
					ach(4634, {	-- Heroic: The Crimson Hall (25 player)
						crit(13123, {	-- Blood Prince Council
							["_encounter"] = { 1632, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
						}),
						crit(13132, {	-- Blood-Queen Lana'thel
							["_encounter"] = { 1633, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
						}),
					}),
					e(1632, {	-- Blood Prince Council
						["crs"] = {
							37972,	-- Prince Keleseth
							37973,	-- Prince Taldaram
							37970,	-- Prince Valanar
						},
						["groups"] = {
							ach(4617),	-- The Orb Whisperer (25 player)
							i(50603),	-- Cryptmaker
							i(50710),	-- Keleseth's Seducer
							i(50719),	-- Shadow Silk Spindle
							i(50713),	-- Geistlord's Punishment Sack
							i(50712),	-- Landsoul's Horned Greathelm
							i(50715),	-- Shoulders of Frost-Tipped Thorns
							i(50718),	-- Royal Crimson Cloak
							i(50723),	-- Mail of Crimson Coins
							i(50717),	-- Sanguine Silk Robes
							i(50721),	-- Crypt Keeper's Bracers
							i(50722),	-- San'layn Ritualist Gloves
							i(50716),	-- Taldaram's Plated Fists
							i(50711),	-- Treads of the Wasteland
							i(50720),	-- Incarnadine Band of Mending
							i(50714),	-- Valanar's Other Signet Ring
						},
					}),
					e(1633, {	-- Blood-Queen Lana'thel
						["creatureID"] = 37955,	-- Blood-Queen Lana'thel
						["groups"] = {
							ach(4618, {	-- Once Bitten, Twice Shy (25 player)
								crit(13012),	-- Defeat Blood-Queen Lana'thel without becoming a vampire
								crit(13013),	-- Defeat Blood-Queen Lana'thel while a vampire
							}),
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52030),	-- Conqueror's Mark of Sanctification (Heroic)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52029),	-- Protector's Mark of Sanctifaction (Heroic)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(52028),	-- Vanquisher's Mark of Sanctification (Heroic)
							i(50727),	-- Bloodfall
							i(50725),	-- Dying Light
							i(50729),	-- Icecrown Glacial Wall
							i(50724),	-- Blood Queen's Crimson Choker
							i(50728),	-- Lana'thel's Chain of Flagellation
							i(50726),	-- Bauble of True Blood
						},
					}),
				}),
				n(THE_FROSTWING_HALLS, {
					ach(4635, {	-- Heroic: The Frostwing Halls (25 player)
						crit(13126, {	-- Valithria Dreamwalker
							["_encounter"] = { 1634, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
						}),
						crit(13135, {	-- Sindragosa
							["_encounter"] = { 1635, DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC },
						}),
					}),
					e(1634, {	-- Valithria Dreamwalker
						["creatureID"] = 36789,	-- Valithria Dreamwalker
						["groups"] = {
							ach(4619),	-- Portal Jockey (25 player)
							i(138832, {	-- Illusion: Earthliving (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
								["classes"] = { SHAMAN },
							}),
							i(50621),	-- Lungbreaker
							i(50631),	-- Nightmare Ender
							i(50626),	-- Snowstorm Helm
							i(50627),	-- Noose of Malachite
							i(50628),	-- Frostbinder's Shredded Cape
							i(50629),	-- Robe of the Waking Nightmare
							i(50630),	-- Bracers of Eternal Dreaming
							i(50619),	-- Anub'ar Stalker's Gloves
							i(50620),	-- Coldwraith Links
							i(50623),	-- Leggings of Dying Candles
							i(50624),	-- Scourge Reaver's Legplates
							i(50632),	-- Boots of the Funeral March
							i(50625),	-- Grinning Skull Greatboots
							i(50622),	-- Devium's Eternally Cold Ring
							i(50618),	-- Frostbrood Sapphire Ring
						},
					}),
					e(1635, {	-- Sindragosa
						["creatureID"] = 36853,	-- Sindragosa
						["groups"] = {
							ach(4620),	-- All You Can Eat (25 player)
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52030),	-- Conqueror's Mark of Sanctification (Heroic)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52029),	-- Protector's Mark of Sanctifaction (Heroic)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(52028),	-- Vanquisher's Mark of Sanctification (Heroic)
							i(142097, {	-- Soulbroken Whelpling (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(50635),	-- Sundial of Eternal Dusk
							i(50633),	-- Sindragosa's Cruel Claw
							i(50636),	-- Memory of Malygos
							i(50365),	-- Phylactery of the Nameless Lich
							i(50364),	-- Sindragosa's Flawless Fang
						},
					}),
					e(1636, {	-- The Lich King
						["creatureID"] = 36597,	-- The Lich King
						["groups"] = {
							ach(4621),	-- Been Waiting a Long Time for This (25 player)
							ach(4622),	-- Neck-Deep in Vile (25 player)
							ach(5023, {	-- The Frozen Throne - Guild Edition
								["timeline"] = { ADDED_4_0_3 },
							}),
							ach(4584, {	-- The Light of Dawn
								title(138),	-- the Light of Dawn
							}),
							ach(4625, {	-- Invincible's Reins
								["provider"] = { "i", 50818 },	-- Invincible's Reins
								["filterID"] = MOUNTS,
							}),
							i(50818),	-- Invincible (MOUNT!)
							i(52027),	-- Conqueror's Mark of Sanctification (Normal)
							i(52030),	-- Conqueror's Mark of Sanctification (Heroic)
							i(52026),	-- Protector's Mark of Sanctifaction (Normal)
							i(52029),	-- Protector's Mark of Sanctifaction (Heroic)
							i(52025),	-- Vanquisher's Mark of Sanctification (Normal)
							i(52028),	-- Vanquisher's Mark of Sanctification (Heroic)
							i(142099, {	-- Wicked Soul (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(138955, {	-- Illusion: Rune of Razorice (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
								["classes"] = { DEATHKNIGHT },
							}),
							i(50731),	-- Archus, Greatstaff of Antonidas
							i(50730),	-- Glorenzelg, High-Blade of the Silver Hand
							i(50735),	-- Oathbinder, Charge of the Ranger-General
							i(50732),	-- Bloodsurge, Kel'Thusad's Blade of Agony
							i(50737),	-- Havoc's Call, Blade of Lordaeron Kings
							i(50736),	-- Heaven's Fall, Kryss of a Thousand Lies
							i(50738),	-- Mithrios, Bronzebeard's Legacy
							i(50734),	-- Royal Scepter of Terenas II
							i(50733),	-- Fal'inrush, Defender of Quel'Thalas
							i(122229, {	-- Music Roll: Invincible
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(139547, {	-- Runes of the Darkening [Death Knight Hidden Appearance]
								["sourceQuest"] = 38990,	-- The Call of Icecrown
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
				}),
			}),
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WRATH, bubbleDownSelf({ ["timeline"] = { ADDED_3_3_0 } }, {
	inst(758, {
		q(24808, {["isRepeatable"]=true}),	-- Tank Ring Flag - doing "A Change of Heart" in ICC and choosing strength ring
		q(24809, {["isRepeatable"]=true}),	-- Healer Ring Flag - doing "A Change of Heart" in ICC and choosing intellect haste/versa ring
		q(24810, {["isRepeatable"]=true}),	-- Melee Ring Flag - doing "A Change of Heart" in ICC and choosing agility ring
		q(24811, {["isRepeatable"]=true}),	-- Caster Ring Flag - doing "Choose Your Path" in ICC and choosing intellect crit/haste ring
		q(25238, {["isRepeatable"]=true}),	-- Strength Ring Flag - doing "A Change of Heart" in ICC and choosing strength ring
	}),
})));
