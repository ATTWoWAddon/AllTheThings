-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(311, {	-- Scarlet Halls
		["coord"] = { 78.0, 56.8, SCARLET_MONASTERY_ENTRANCE },
		["timeline"] = { ADDED_5_0_4 },
		["maps"] = { SCARLET_HALLS_TRAINING_GROUNDS, SCARLET_HALLS_ATHENAEUM },
		["lvl"] = lvlsquish(21, 21, 10),
		["groups"] = {
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC, {
				e(654, {	-- Armsmaster Harlan
					["creatureID"] = 58632,	-- Armsmaster Harlan
					["groups"] = {
						i(23192, {	-- Tabard of the Scarlet Crusade
							["timeline"] = { ADDED_5_3_0 },
						}),
					},
				}),
				e(656, {	-- Flameweaver Koegler
					["creatureID"] = 59150,	-- Flameweaver Koegler
					["groups"] = {
						ach(7413),	-- Scarlet Halls
						ach(7434),	-- Scarlet Halls Guild Run
						o(212968, {	-- Ancient Tome
							["coord"] = { 48.4, 20.0, SCARLET_HALLS_ATHENAEUM },
							["groups"] = {
								i(82469, {	-- Ancient Tome of Teleport: Dalaran (CI!)
									["description"] = "Can be looted from a bookshelf if the boss didn't burn them.",
								}),
							},
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				n(QUESTS, {
					q(31493, {	-- Just for Safekeeping, Of Course
						["qg"] = 64738,	-- Hooded Crusader
						["groups"] = {
							objective(1, {	-- 0/1 Codex of the Crusade
								["provider"] = { "i", 87267 },	-- Codex of the Crusade
								["cr"] = 59150,	-- Flameweaver Koegler
							}),
						},
					}),
					q(31490, {	-- Rank and File
						["qg"] = 64738,	-- Hooded Crusader
					}),
				}),
				n(ZONE_DROPS, {
					i(7754),	-- Harbinger Boots
					i(7786),	-- Headsplitter
					i(7787),	-- Resplendent Guardian
					i(8226),	-- The Butcher
					i(7727),	-- Watchman Pauldrons
				}),
				e(660, {	-- Houndmaster Braun
					["creatureID"] = 59303,	-- Houndmaster Braun
					["groups"] = {
						i(88264),	-- Houndmaster's Compound Crossbow
						i(88268),	-- Canine Commander's Breastplate
						i(88267),	-- Commanding Bracers
						i(88266),	-- Hound Trainer's Gloves
						i(88265),	-- Beastbinder Ring
					},
				}),
				e(654, {	-- Armsmaster Harlan
					["creatureID"] = 58632,	-- Armsmaster Harlan
					["groups"] = {
						i(88272),	-- The Gleaming Ravager
						i(88273),	-- Armsmaster's Sealed Locket
						i(88271),	-- Harlan's Shoulders
						i(88270),	-- Lightblade Bracer
						i(88269),	-- Scarlet Sandals
						i(132550, {	-- Scarlet Chain Footpads
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				e(656, {	-- Flameweaver Koegler
					["creatureID"] = 59150,	-- Flameweaver Koegler
					["groups"] = {
						i(88278),	-- Mograine's Immaculate Might
						i(88274),	-- Koegler's Ritual Knife
						i(88280),	-- Melted Hypnotic Blade
						i(88275),	-- Scorched Scarlet Key
						i(88281),	-- Temperature-Sensing Necklace
						i(88279),	-- Robes of Koegler
						i(88282),	-- Vellum-Ripper Gloves
						i(88276),	-- Bindburner Belt
						i(88283),	-- Bradbury's Entropic Legguards
						i(88277),	-- Pyretic Legguards
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = lvlsquish(90, 90, 35),
				["groups"] = {
					n(QUESTS, {
						q(31497, {	-- Just for Safekeeping, Of Course
							["qg"] = 64764,	-- Hooded Crusader
							["groups"] = {
								objective(1, {	-- 0/1 Codex of the Crusade
									["provider"] = { "i", 87268 },	-- Codex of the Crusade
									["cr"] = 59150,	-- Flameweaver Koegler
								}),
								i(87370),	-- Waistguard of the Phalanx
								i(87371),	-- Scarlet Champion's Belt
								i(87372),	-- Verdone's Chewed Waistplate
								i(87373),	-- Belt of Singed Shame
								i(87374),	-- Bucket Tosser's Girdle
								i(87375),	-- Cord of Bloody Evangelism
								i(87376),	-- Scholarly Cord
								i(87377),	-- Scarlet Archer's Links
								i(87378),	-- Loksey's Lost Belt
							},
						}),
						q(31495, {	-- Rank and File
							["qg"] = 64764,	-- Hooded Crusader
						}),
					}),
					e(660, {	-- Houndmaster Braun
						["creatureID"] = 59303,	-- Houndmaster Braun
						["groups"] = {
							ach(6684),	-- Humane Society
							i(144190, {	-- Houndmaster's Compound Crossbow
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(143966, {	-- Canine Commander's Breastplate
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144191, {	-- Commanding Bracers
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144192, {	-- Hound Trainer's Gloves
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144177, {	-- Beastbinder Ring
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(81693, {	-- Houndmaster's Compound Crossbow
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81696, {	-- Canine Commander's Breastplate
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81694, {	-- Commanding Bracers
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81695, {	-- Hound Trainer's Gloves
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81563, {	-- Beastbinder Ring
								["timeline"] = { REMOVED_7_1_5 },
							}),
						},
					}),
					e(654, {	-- Armsmaster Harlan
						["creatureID"] = 58632,	-- Armsmaster Harlan
						["groups"] = {
							ach(6427),	-- Mosh Pit
							i(144193, {	-- The Gleaming Ravager
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144182, {	-- Armsmaster's Sealed Locket
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144006, {	-- Harlan's Shoulder
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144194, {	-- Lightblade Bracer
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144007, {	-- Scarlet Sandals
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(81697, {	-- The Gleaming Ravager
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81568, {	-- Armsmaster's Sealed Locket
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81698, {	-- Harlan's Shoulder
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81700, {	-- Lightblade Bracer
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81699, {	-- Scarlet Sandals
								["timeline"] = { REMOVED_7_1_5 },
							}),
						},
					}),
					e(656, {	-- Flameweaver Koegler
						["creatureID"] = 59150,	-- Flameweaver Koegler
						["groups"] = {
							ach(6760),	-- Heroic: Scarlet Halls
							ach(6769),	-- Heroic: Scarlet Halls Guild Run
							i(144196, {	-- Mograine's Immaculate Might
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144195, {	-- Koegler's Ritual Knife
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144198, {	-- Melted Hypnotic Blade
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144178, {	-- Scorched Scarlet Key
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144179, {	-- Temperature-Sensing Necklace
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144009, {	-- Robes of Koegler
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144199, {	-- Vellum-Ripper Gloves
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144197, {	-- Bindburner Belt
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144010, {	-- Bradbury's Entropic Legguards
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144008, {	-- Pyretic Legguards
								["timeline"] = { ADDED_7_1_5 },
							}),
							i(144220, {	-- Vithrak, Gaze of the Deadman
								["timeline"] = { ADDED_7_1_5 },
							}),

							i(82814, {	-- Mograine's Immaculate Might
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(82813, {	-- Koegler's Ritual Knife
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(82816, {	-- Melted Hypnotic Blade
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81564, {	-- Scorched Scarlet Key
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(81565, {	-- Temperature-Sensing Necklace
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(82817, {	-- Robes of Koegler
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(82818, {	-- Vellum-Ripper Gloves
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(82815, {	-- Bindburner Belt
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(82819, {	-- Bradbury's Entropic Legguards
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(82812, {	-- Pyretic Legguards
								["timeline"] = { REMOVED_7_1_5 },
							}),
							i(87550, {	-- Vithrak, Gaze of the Deadman
								["timeline"] = { REMOVED_7_1_5 },
							}),
						},
					}),
				},
			}),
			d(DIFFICULTY.DUNGEON.CHALLENGE_MODE, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 } }, {
				challengemaster(ach(8436, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {	-- Challenge Master: Scarlet Halls
					title(243),	-- Flameweaver <Name>
				}))),
				ach(6895),	-- Scarlet Halls Challenger
				ach(6908),	-- Scarlet Halls: Bronze
				ach(6909),	-- Scarlet Halls: Silver
				ach(6910, {	-- Scarlet Halls: Gold
					spell(131231),	-- Path of the Scarlet Blade
				}),
				-- #if ANYCLASSIC
				ach(61972, {	-- Scarlet Halls: Platinum
					i(265416),	-- Platinum Battle Banner
				}),
				-- #endif
			})),
			-- #if ANYCLASSIC
			applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_MSV, n(CELESTIAL_DUNGEON_DIFFICULTY, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.CELESTIAL_DUNGEON_DIFFICULTY_BUFFS,
				["timeline"] = { ADDED_5_5_0 },
				["groups"] = {
					e(656, {	-- Flameweaver Koegler
						["creatureID"] = 59150,	-- Flameweaver Koegler
						["groups"] = appendGroups(
						{
							ach(60897),	-- Celestial: Scarlet Halls
						},
						-- #if BEFORE 5.5.3
						{	-- Season 1 Drops
							applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_TOES, i(86906)),	-- Kilrak, Jaws of Terror (Terrace)
							i(86778),	-- Steelskin, Qiang's Impervious Shield
							i(86753),	-- Cloak of Peacock Feathers
							i(89967),	-- Feng's Seal of Binding
							applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_HOF, i(86858)),	-- Seal of the Profane (HoF)
						},
						-- #elseif BEFORE 5.5.5
						applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING_CELESTIAL_DUNGEONS, {	-- Season 2 Drops
							i(95961),	-- Abandoned Zandalari Firecord
							i(95962),	-- Abandoned Zandalari Shadowgirdle
							i(95685),	-- Amulet of the Primal Turtle
							i(95711),	-- Breath of the Hydra
							i(95630),	-- Chestplate of Violent Detonation
							i(95740),	-- Chilblain Spaulders
							i(95765),	-- Clear-Mind Helm
							i(95819),	-- Grips of Slicing Electricity
							i(95713),	-- Hood of Smoldering Flesh
							i(95641),	-- Horridon's Last Gasp
							i(95658),	-- Horridon's Tusk Fragment
							i(95712),	-- Inscribed Bag of Hydra-Spawn
							i(95739),	-- Leggings of Pulsing Blood
							i(95821),	-- Lei Shen's Grounded Carapace
							i(95738),	-- Lifedrainer's Sordid Grip
							i(95793),	-- Passionfire Choker
							i(95659),	-- Petrified Eye of the Basilisk
							i(95792),	-- Robes of the Moon Lotus
							i(95960),	-- Scalehide Spurs
							i(95684),	-- Shell-Coated Wristplates
							i(95794),	-- Shield of Twinned Despair
							i(95767),	-- Spaulders of Primordial Growth
						}),
						-- #else
						applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR_CELESTIAL_DUNGEONS,{	-- Season 3 Drops
							
						}),
						-- #endif
						{}),
					}),
				},
			})),
			-- #endif
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		inst(311, {
			q(31636),	-- Scarlet Halls Challenge Mode - Bronze Addition (Nth)
			q(31630),	-- Scarlet Halls Challenge Mode - Consolation (Nth)
			q(31650),	-- Scarlet Halls Challenge Mode - Gold Addition (Nth)
			q(31643),	-- Scarlet Halls Challenge Mode - Silver Addition (Nth)
		}),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
		inst(311, {
			q(35606),	-- Scarlet Halls Reward Quest - Normal completion
			q(35607),	-- Scarlet Halls - Bonus Objective Reward Quest - kill Armsmaster Harlan
			q(35608),	-- Scarlet Halls Reward Quest - Heroic completion
			q(35609),	-- Scarlet Halls - Bonus Objective Reward Quest - kill Armsmaster Harlan (Heroic)
		}),
	})),
});
