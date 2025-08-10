-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.LEGION, {
	inst(768, {	-- The Emerald Nightmare
		["isRaid"] = true,
		["coord"] = { 56.3, 36.9, VALSHARAH },
		["maps"] = {
			777,
			778,
			779,
			780,
			781,
			782,
			783,
			784,
			785,
			786,
			787,
			788,
			789,
		},
		["lvl"] = 110,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(10818, {	-- Darkbough
                    crit(31428, {	-- Nythendra
                        ["_encounter"] = { 1703, DIFFICULTY.RAID.LFR },
                    }),
                    crit(31429, {	-- Elerethe Renferal
                        ["_encounter"] = { 1744, DIFFICULTY.RAID.LFR },
                    }),
                    crit(31430, {	-- Il'gynoth, Heart of Corruption
                        ["_encounter"] = { 1738, DIFFICULTY.RAID.LFR },
                    }),
                }),
				ach(10819, {	-- Tormented Guardians
                    crit(31431, {	-- Ursoc
                        ["_encounter"] = { 1667, DIFFICULTY.RAID.LFR },
                    }),
                    crit(31433, {	-- Dragons of Nightmare
                        ["_encounter"] = { 1704, DIFFICULTY.RAID.LFR },
                    }),
                    crit(31432, {	-- Cenarius
                        ["_encounter"] = { 1750, DIFFICULTY.RAID.LFR },
                    }),
                }),
				ach(10820, {	-- Rift of Aln
                    crit(31434, {	-- Xavius
                        ["_encounter"] = { 1726, DIFFICULTY.RAID.LFR },
                    }),
                }),
				ach(42029, {	-- The Emerald Nightmare (automated)
					["timeline"] = { ADDED_11_1_7 },
				}),
				ach(10866),	-- The Emerald Nightmare Guild Run
			}),
			petbattle(filter(BATTLE_PETS, {
				pet(1722, {	-- Dream Whelpling (PET!)
					["description"] = "Once you defeat Xavius these will spawn in the area after him."
				}),
			})),
			d(DIFFICULTY.RAID.MULTI.ALL, {
				e(1703, {	-- Nythendra
					["crs"] = { 102672 },	-- Nythendra
					["groups"] = {
						i(139636),	-- Vantus Rune Technique: Nythendra [Rank 1] (RECIPE!)
						i(137748),	-- Vantus Rune Technique: Nythendra [Rank 2] (RECIPE!)
					},
				}),
				e(1744, {	-- Elerethe Renferal
					["crs"] = { 106087 },	-- Elerethe Renferal
					["groups"] = {
						i(128611),	-- Formula: Enchant Neck - Mark of the Distant Army [Rank 3] (RECIPE!)
						i(139640),	-- Vantus Rune Technique: Elerethe Renferal [Rank 1] (RECIPE!)
						i(137752),	-- Vantus Rune Technique: Elerethe Renferal [Rank 2] (RECIPE!)
					},
				}),
				e(1738, {	-- Il'gynoth, Heart of Corruption
					["crs"] = { 105393 },	--	Il'gynoth, Heart of Corruption
					["groups"] = {
						i(139637),	-- Vantus Rune Technique: Il'gynoth, The Heart of Corruption [Rank 1] (RECIPE!)
						i(137749),	-- Vantus Rune Technique: Il'gynoth, The Heart of Corruption [Rank 2] (RECIPE!)
					},
				}),
				e(1667, {	-- Ursoc
					["crs"] = { 100497 },	--	Ursoc
					["groups"] = {
						i(141917),	-- Formula: Enchant Neck - Mark of the Heavy Hide [Rank 3] (RECIPE!)
						i(139635),	-- Vantus Rune Technique: Ursoc [Rank 1] (RECIPE!)
						i(137747),	-- Vantus Rune Technique: Ursoc [Rank 2] (RECIPE!)
					},
				}),
				e(1704, {	-- Dragons of Nightmare
					["crs"] = {
						102679,	-- Ysondre
						102681,	-- Taerar
						102682,	-- Lethon
						102683,	-- Emeriss
					},
					["groups"] = {
						i(136903),	-- Nightmare Whelpling (PET!)
						i(139638),	-- Vantus Rune Technique: Dragons of Nightmare [Rank 1] (RECIPE!)
						i(137750),	-- Vantus Rune Technique: Dragons of Nightmare [Rank 2] (RECIPE!)
					},
				}),
				e(1750, {	-- Cenarius
					["crs"] = { 104636 },	--	Cenarius
					["groups"] = {
						i(127934),	-- Recipe: Spirit Cauldron [Rank 2] (RECIPE!)
						i(139641),	-- Vantus Rune Technique: Cenarius [Rank 1] (RECIPE!)
						i(137753),	-- Vantus Rune Technique: Cenarius [Rank 2] (RECIPE!)
					},
				}),
				e(1726, {	-- Xavius
					["crs"] = { 103769 },	--	Xavius
					["groups"] = {
						i(128612),	-- Formula: Enchant Neck - Mark of the Hidden Satyr [Rank 3] (RECIPE!)
						i(138827),	-- Illusion: Nightmare (ILLUSION!)
						i(139639),	-- Vantus Rune Technique: Xavius [Rank 1] (RECIPE!)
						i(137751),	-- Vantus Rune Technique: Xavius [Rank 2] (RECIPE!)
					},
				}),
			}),
			d(DIFFICULTY.RAID.LFR, {
				["crs"] = { 111246 },	-- Archmage Timear
				["coord"] = { 63.7, 55.0, LEGION_DALARAN },
				["groups"] = {
					n(ZONE_DROPS, {
						i(141696),	-- Pendant of Liquid Horror
						i(141694),	-- Gauntlets of Fractured Dreams
						i(140993),	-- Gloves of Murmured Promises
						i(140996),	-- Grips of Silent Screams
						i(141695),	-- Tarnished Dreamkeeper's Gauntlets
					}),
					header(HEADERS.Achievement, 10818, {	-- Darkbough
						cr(102672, e(1703, {	-- Nythendra
							i(139214),	-- Greyed Dragonscale Coif
							i(139191),	-- Ancient Dreamwoven Mantle
							i(139224),	-- Insect-Etched Chestplate
							i(139235),	-- Wristclamps of Mad Dreams
							i(139212),	-- Creeping String of Larva
							i(139197),	-- Lifeless Buckled Girdle
							i(139200),	-- Stained Maggot Squishers
							i(139236),	-- Grubby Silver Ring
							i(139320),	-- Ravaged Seed Pod
							i(139321),	-- Swarming Plaguehive
							i(139251),	-- Despoiled Dragonscale
							i(139252),	-- Preserved Worldseed
							i(139249),	-- Shaladrassil's Blossom
							i(139250),	-- Unwaking Slumber
							i(136820),	-- Nythendra's Heart
						})),
						cr(106087, e(1744, {	-- Elerethe Renferal
							i(139204),	-- Mask of Multitudinous Eyes
							i(139229),	-- Venom-Fanged Barbute
							i(138221),	-- Gossamer-Spun Greatcloak
							i(139221),	-- Patient Ambusher's Hauberk
							i(139209),	-- Wristwraps of Broken Trust
							i(138217),	-- Pliable Spider Silk Cinch
							i(139190),	-- Ragged Horrorweave Leggings
							i(139230),	-- Storm-Battered Legplates
							i(139219),	-- Black Venom Sabatons
							i(139322),	-- Cocoon of Enforced Solitude
							i(139323),	-- Twisting Wind
							i(139253),	-- Fel-Bloated Venom Sac
							i(139255),	-- Scything Quill
							i(139254),	-- Shrieking Bloodstone
							i(137008),	-- Stormfury Diamond
						})),
						cr(105393, e(1738, {	-- Il'gynoth, Heart of Corruption
							i(139188),	-- Celestially Aligned Hood
							i(139206),	-- Otherworldy Leather Mantle
							i(139233),	-- Pauldrons of Shifting Runes
							i(139187),	-- Clasp of Cosmic Insignificance
							i(139202),	-- Dreamsculptor's Gloves
							i(139213),	-- Gauntlets of Malevolent Intent
							i(139227),	-- Waistplate of Nameless Horror
							i(139215),	-- Singular Chain Leggings
							i(139237),	-- Dreadful Cyclopean Signet
							i(139324),	-- Goblet of Nightmarish Ichor
							i(139325),	-- Spontaneous Appendages
							i(139326),	-- Wriggling Sinew
							i(139259),	-- Cube of Malice
							i(139257),	-- Gore-Drenched Fetish
							i(139258),	-- Radiating Metallic Shard
							i(139254),	-- Shrieking Bloodstone
							i(139256),	-- Sloshing Core of Hatred
						})),
					}),
					header(HEADERS.Achievement, 10819, {	-- Tormented Guardians
						cr(100497, e(1667, {	-- Ursoc
							i(139239),	-- Cursed Beartooth Necklace
							i(139217),	-- Matted Fur Pauldrons
							i(139208),	-- Scarred Ragefang Chestpiece
							i(139196),	-- Ragged Fur Wristwraps
							i(139226),	-- Primal Gauntlets of Rage
							i(139201),	-- Splotched Bloodfur Leggings
							i(139195),	-- Crimson Wool-Lined Slippers
							i(139220),	-- Scored Ironclaw Sabatons
							i(139234),	-- Trampling Warboots
							i(139329),	-- Bloodthirsty Instinct
							i(139330),	-- Heightened Senses
							i(139327),	-- Unbridled Fury
							i(139328),	-- Ursoc's Rending Paw
							i(139260),	-- Bloodied Bear Fang
							i(139262),	-- Reverberating Femur
							i(139261),	-- Tuft of Ironfur
						})),
						e(1704, {	-- Dragons of Nightmare
							["crs"] = {
								102679,	-- Ysondre
								102681,	-- Taerar
								102682,	-- Lethon
								102683,	-- Emeriss
							},
							["groups"] = {
								i(139205),	-- Cowl of Fright
								i(138215),	-- Dreamscale Inlaid Vestments
								i(138216),	-- Horror Inscribed Chestguard
								i(138218),	-- Dragonbone Wristclamps
								i(138219),	-- Dragonspur Wristguards
								i(138214),	-- Gauntlets of the Demented Mind
								i(138212),	-- Handwraps of Delusional Power
								i(138211),	-- Malignant Sabatons
								i(138220),	-- Mindrend Band
								i(138225),	-- Phantasmal Echo
								i(138224),	-- Unstable Horrorslime
								i(138222),	-- Vial of Nightmare Fog
								i(138228),	-- Bioluminescent Mushroom
								i(138227),	-- Entrancing Stone
								i(138226),	-- Nightmare Engulfed Jewel
							},
						}),
						cr(104636, e(1750, {	-- Cenarius
							i(139231),	-- Crown of Steely Brambles
							i(139192),	-- Mantle of Perpetual Bloom
							i(139218),	-- Thorny Bramblemail Pauldrons
							i(139248),	-- Evergreen Vinewrap Drape
							i(139207),	-- Grove Keeper's Robe
							i(139225),	-- Fitted Ironbark Gauntlets
							i(139198),	-- Forest-Lord's Waistwrap
							i(139211),	-- Laughing Sister's Pouch-Chain
							i(139194),	-- Cozy Dryad Hoof-Socks
							i(139333),	-- Horn of Cenarius
							i(139334),	-- Nature's Call
							i(139263),	-- Blessing of Cenarius
							i(139265),	-- Radiant Dragon Egg
							i(139264),	-- Uplifting Emerald
						})),
					}),
					header(HEADERS.Achievement, 10820, {	-- Rift of Aln
						cr(103769, e(1726, {	-- Xavius <Nightmare Lord>
							i(139189),	-- Hood of Darkened Visions
							i(139332),	-- Blackened Portalstone Necklace
							i(139232),	-- Midnight Herald's Pauldrons
							i(139193),	-- Maddening Robe of Secrets
							i(139222),	-- Manacles of the Nightmare Colossus
							i(139228),	-- Eon-Tempered Waistplate
							i(139216),	-- Disjointed Linkage Leggings
							i(139203),	-- Repulsive Leathery Pants
							i(139199),	-- Boots of Endless Betrayal
							i(139238),	-- Twice-Warped Azsharan Signet
							i(139336),	-- Bough of Corruption
							i(139335),	-- Grotesque Statuette
							i(139267),	-- Azsharan Councillor's Clasp
							i(139269),	-- Crystallized Drop of Eternity
							i(139266),	-- Fragment of Eternal Spite
							i(139268),	-- Nightmarish Elm Branch
						})),
					}),
				},
			}),
			d(DIFFICULTY.RAID.MULTI.NORMAL_PLUS, {
				n(COMMON_BOSS_DROPS, {
					i(139706),	-- Corrupted Essence
					i(139771, {	-- Seething Essence
						i(139706),	-- Corrupted Essence
					}),
				}),
				cr(102672, e(1703, {	-- Nythendra
					ach(10555, {	-- Buggy Fight
						["crs"] = { 105097 },	-- Glow Bug
					}),
				})),
				cr(106087, e(1744, {	-- Elerethe Renferal
					ach(10771, {	-- Webbing Crashers
						["crs"] = { 112078 },	-- Pulsing Egg Sac
					}),
				})),
				cr(105393, e(1738, {	-- Il'gynoth, Heart of Corruption
					ach(10830, {	-- Took the Red Eye Down
						["crs"] = {
							105304,	-- Dominator Tentacle
							105322,	-- Deathglare Tentacle
							105591,	-- Nightmare Horror
							105383,	-- Corruptor Tentacle
						},
					}),
					i(139569, {	-- Claw of N'Zoth
						-- ["sourceQuest"] = , TODO
					}),
				})),
				cr(100497, e(1667, {	-- Ursoc
					ach(10753, {	-- Scare Bear
						["crs"] = { 111263 },	-- Tur Ragepaw
					}),
					i(139557, {	-- Last Breath of the Forest
						-- ["sourceQuest"] = , TODO
					}),
					i(139553, {	-- Mark of the Glade Guardian
						-- ["sourceQuest"] = , TODO
					}),
				})),
				e(1704, {	-- Dragons of Nightmare
					["crs"] = {
						102679,	-- Ysondre
						102681,	-- Taerar
						102682,	-- Lethon
						102683,	-- Emeriss
					},
					["groups"] = {
						ach(10663),	-- Imagined Dragons World Tour
						i(139562, {	-- Breath of the Undying Serpent
							-- ["sourceQuest"] = , TODO
						}),
					},
				}),
				cr(104636, e(1750, {	-- Cenarius
					ach(10772, {	-- Use the Force(s)
						crit(31349, {	-- Dryads Uncleansed
							["crs"] = { 105495 },	-- Twisted Sister
						}),
						crit(31350, {	-- Treants Uncleansed
							["crs"] = { 105468 },	-- Nightmare Ancient
						}),
						crit(31351, {	-- Wisps Uncleansed
							["crs"] = { 113774 },	-- Corrupted Wisp
						}),
						crit(31348, {	-- Drakes Uncleansed
							["crs"] = { 105494 },	-- Rotten Drake
						}),
					}),
				})),
				cr(103769, e(1726, {	-- Xavius <Nightmare Lord>
					ach(10755),	-- I Attack the Darkness
				})),
			}),
			d(DIFFICULTY.RAID.NORMAL, {
				n(QUESTS, {
					q(44283, {	-- The Emerald Nightmare: Piercing the Veil (Normal)
						["description"] = "Finishing this quest will grant you immediate access to Cenarius on Normal difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Heroic or Mythic version first.|r\n",
						["altQuests"] = {
							44284,	-- The Emerald Nightmare: Piercing the Veil (Heroic)
							44285,	-- The Emerald Nightmare: Piercing the Veil (Mythic)
						},
						["provider"] = { "n", 106482 },	-- Malfurion Stormrage
						["groups"] = { i(141303) },	-- Essence of Clarity (QI!)
					}),
				}),
				n(ZONE_DROPS, {
					i(141696),	-- Pendant of Liquid Horror
					i(141694),	-- Gauntlets of Fractured Dreams
					i(140993),	-- Gloves of Murmured Promises
					i(140996),	-- Grips of Silent Screams
					i(141695),	-- Tarnished Dreamkeeper's Gauntlets
				}),
				cr(102672, e(1703, {	-- Nythendra
					i(139214),	-- Greyed Dragonscale Coif
					i(139191),	-- Ancient Dreamwoven Mantle
					i(139224),	-- Insect-Etched Chestplate
					i(139235),	-- Wristclamps of Mad Dreams
					i(139212),	-- Creeping String of Larva
					i(139197),	-- Lifeless Buckled Girdle
					i(139200),	-- Stained Maggot Squishers
					i(139236),	-- Grubby Silver Ring
					i(139320),	-- Ravaged Seed Pod
					i(139321),	-- Swarming Plaguehive
					i(139251),	-- Despoiled Dragonscale
					i(139252),	-- Preserved Worldseed
					i(139249),	-- Shaladrassil's Blossom
					i(139250),	-- Unwaking Slumber
					i(136820),	-- Nythendra's Heart
				})),
				cr(105393, e(1738, {	-- Il'gynoth, Heart of Corruption
					i(139188),	-- Celestially Aligned Hood
					i(139206),	-- Otherworldy Leather Mantle
					i(139233),	-- Pauldrons of Shifting Runes
					i(139187),	-- Clasp of Cosmic Insignificance
					i(139202),	-- Dreamsculptor's Gloves
					i(139213),	-- Gauntlets of Malevolent Intent
					i(139227),	-- Waistplate of Nameless Horror
					i(139215),	-- Singular Chain Leggings
					i(139237),	-- Dreadful Cyclopean Signet
					i(139324),	-- Goblet of Nightmarish Ichor
					i(139325),	-- Spontaneous Appendages
					i(139326),	-- Wriggling Sinew
					i(139259),	-- Cube of Malice
					i(139257),	-- Gore-Drenched Fetish
					i(139258),	-- Radiating Metallic Shard
					i(139254),	-- Shrieking Bloodstone
					i(139256),	-- Sloshing Core of Hatred
				})),
				cr(106087, e(1744, {	-- Elerethe Renferal
					i(139204),	-- Mask of Multitudinous Eyes
					i(139229),	-- Venom-Fanged Barbute
					i(138221),	-- Gossamer-Spun Greatcloak
					i(139221),	-- Patient Ambusher's Hauberk
					i(139209),	-- Wristwraps of Broken Trust
					i(138217),	-- Pliable Spider Silk Cinch
					i(139190),	-- Ragged Horrorweave Leggings
					i(139230),	-- Storm-Battered Legplates
					i(139219),	-- Black Venom Sabatons
					i(139322),	-- Cocoon of Enforced Solitude
					i(139323),	-- Twisting Wind
					i(139253),	-- Fel-Bloated Venom Sac
					i(139255),	-- Scything Quill
					i(139254),	-- Shrieking Bloodstone
					i(137008),	-- Stormfury Diamond
				})),
				cr(100497, e(1667, {	-- Ursoc
					i(139239),	-- Cursed Beartooth Necklace
					i(139217),	-- Matted Fur Pauldrons
					i(139208),	-- Scarred Ragefang Chestpiece
					i(139196),	-- Ragged Fur Wristwraps
					i(139226),	-- Primal Gauntlets of Rage
					i(139201),	-- Splotched Bloodfur Leggings
					i(139195),	-- Crimson Wool-Lined Slippers
					i(139220),	-- Scored Ironclaw Sabatons
					i(139234),	-- Trampling Warboots
					i(139329),	-- Bloodthirsty Instinct
					i(139330),	-- Heightened Senses
					i(139327),	-- Unbridled Fury
					i(139328),	-- Ursoc's Rending Paw
					i(139260),	-- Bloodied Bear Fang
					i(139262),	-- Reverberating Femur
					i(139261),	-- Tuft of Ironfur
				})),
				e(1704, {	-- Dragons of Nightmare
					["crs"] = {
						102679,	-- Ysondre
						102681,	-- Taerar
						102682,	-- Lethon
						102683,	-- Emeriss
					},
					["groups"] = {
						i(139205),	-- Cowl of Fright
						i(138215),	-- Dreamscale Inlaid Vestments
						i(138216),	-- Horror Inscribed Chestguard
						i(138218),	-- Dragonbone Wristclamps
						i(138219),	-- Dragonspur Wristguards
						i(138214),	-- Gauntlets of the Demented Mind
						i(138212),	-- Handwraps of Delusional Power
						i(138211),	-- Malignant Sabatons
						i(138220),	-- Mindrend Band
						i(138225),	-- Phantasmal Echo
						i(138224),	-- Unstable Horrorslime
						i(138222),	-- Vial of Nightmare Fog
						i(138228),	-- Bioluminescent Mushroom
						i(138227),	-- Entrancing Stone
						i(138226),	-- Nightmare Engulfed Jewel
					},
				}),
				cr(104636, e(1750, {	-- Cenarius
					i(139231),	-- Crown of Steely Brambles
					i(139192),	-- Mantle of Perpetual Bloom
					i(139218),	-- Thorny Bramblemail Pauldrons
					i(139248),	-- Evergreen Vinewrap Drape
					i(139207),	-- Grove Keeper's Robe
					i(139225),	-- Fitted Ironbark Gauntlets
					i(139198),	-- Forest-Lord's Waistwrap
					i(139211),	-- Laughing Sister's Pouch-Chain
					i(139194),	-- Cozy Dryad Hoof-Socks
					i(139333),	-- Horn of Cenarius
					i(139334),	-- Nature's Call
					i(139263),	-- Blessing of Cenarius
					i(139265),	-- Radiant Dragon Egg
					i(139264),	-- Uplifting Emerald
				})),
				cr(103769, e(1726, {	-- Xavius <Nightmare Lord>
					i(139189),	-- Hood of Darkened Visions
					i(139332),	-- Blackened Portalstone Necklace
					i(139232),	-- Midnight Herald's Pauldrons
					i(139193),	-- Maddening Robe of Secrets
					i(139222),	-- Manacles of the Nightmare Colossus
					i(139228),	-- Eon-Tempered Waistplate
					i(139216),	-- Disjointed Linkage Leggings
					i(139203),	-- Repulsive Leathery Pants
					i(139199),	-- Boots of Endless Betrayal
					i(139238),	-- Twice-Warped Azsharan Signet
					i(139336),	-- Bough of Corruption
					i(139335),	-- Grotesque Statuette
					i(139267),	-- Azsharan Councillor's Clasp
					i(139269),	-- Crystallized Drop of Eternity
					i(139266),	-- Fragment of Eternal Spite
					i(139268),	-- Nightmarish Elm Branch
				})),
			}),
			d(DIFFICULTY.RAID.HEROIC, {
				n(QUESTS, {
					q(44284, {	-- The Emerald Nightmare: Piercing the Veil [Heroic]
						["description"] = "Finishing this quest will grant you immediate access to Cenarius on Heroic difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Mythic version first.|r\n",
						["altQuests"] = { 44285 },	-- The Emerald Nightmare: Piercing the Veil (Mythic)
						["provider"] = { "n", 106482 },	-- Malfurion Stormrage
						["groups"] = { i(141304) },	-- Essence of Clarity (QI!)
					}),
				}),
				n(ZONE_DROPS, {
					i(141696),	-- Pendant of Liquid Horror
					i(141694),	-- Gauntlets of Fractured Dreams
					i(140993),	-- Gloves of Murmured Promises
					i(140996),	-- Grips of Silent Screams
					i(141695),	-- Tarnished Dreamkeeper's Gauntlets
				}),
				cr(102672, e(1703, {	-- Nythendra
					i(139214),	-- Greyed Dragonscale Coif
					i(139191),	-- Ancient Dreamwoven Mantle
					i(139224),	-- Insect-Etched Chestplate
					i(139235),	-- Wristclamps of Mad Dreams
					i(139212),	-- Creeping String of Larva
					i(139197),	-- Lifeless Buckled Girdle
					i(139200),	-- Stained Maggot Squishers
					i(139236),	-- Grubby Silver Ring
					i(139320),	-- Ravaged Seed Pod
					i(139321),	-- Swarming Plaguehive
					i(139251),	-- Despoiled Dragonscale
					i(139252),	-- Preserved Worldseed
					i(139249),	-- Shaladrassil's Blossom
					i(139250),	-- Unwaking Slumber
					i(136820),	-- Nythendra's Heart
				})),
				cr(105393, e(1738, {	-- Il'gynoth, Heart of Corruption
					i(139188),	-- Celestially Aligned Hood
					i(139206),	-- Otherworldy Leather Mantle
					i(139233),	-- Pauldrons of Shifting Runes
					i(139187),	-- Clasp of Cosmic Insignificance
					i(139202),	-- Dreamsculptor's Gloves
					i(139213),	-- Gauntlets of Malevolent Intent
					i(139227),	-- Waistplate of Nameless Horror
					i(139215),	-- Singular Chain Leggings
					i(139237),	-- Dreadful Cyclopean Signet
					i(139324),	-- Goblet of Nightmarish Ichor
					i(139325),	-- Spontaneous Appendages
					i(139326),	-- Wriggling Sinew
					i(139259),	-- Cube of Malice
					i(139257),	-- Gore-Drenched Fetish
					i(139258),	-- Radiating Metallic Shard
					i(139254),	-- Shrieking Bloodstone
					i(139256),	-- Sloshing Core of Hatred
				})),
				cr(106087, e(1744, {	-- Elerethe Renferal
					i(139204),	-- Mask of Multitudinous Eyes
					i(139229),	-- Venom-Fanged Barbute
					i(138221),	-- Gossamer-Spun Greatcloak
					i(139221),	-- Patient Ambusher's Hauberk
					i(139209),	-- Wristwraps of Broken Trust
					i(138217),	-- Pliable Spider Silk Cinch
					i(139190),	-- Ragged Horrorweave Leggings
					i(139230),	-- Storm-Battered Legplates
					i(139219),	-- Black Venom Sabatons
					i(139322),	-- Cocoon of Enforced Solitude
					i(139323),	-- Twisting Wind
					i(139253),	-- Fel-Bloated Venom Sac
					i(139255),	-- Scything Quill
					i(139254),	-- Shrieking Bloodstone
					i(137008),	-- Stormfury Diamond
				})),
				cr(100497, e(1667, {	-- Ursoc
					i(139239),	-- Cursed Beartooth Necklace
					i(139217),	-- Matted Fur Pauldrons
					i(139208),	-- Scarred Ragefang Chestpiece
					i(139196),	-- Ragged Fur Wristwraps
					i(139226),	-- Primal Gauntlets of Rage
					i(139201),	-- Splotched Bloodfur Leggings
					i(139195),	-- Crimson Wool-Lined Slippers
					i(139220),	-- Scored Ironclaw Sabatons
					i(139234),	-- Trampling Warboots
					i(139329),	-- Bloodthirsty Instinct
					i(139330),	-- Heightened Senses
					i(139327),	-- Unbridled Fury
					i(139328),	-- Ursoc's Rending Paw
					i(139260),	-- Bloodied Bear Fang
					i(139262),	-- Reverberating Femur
					i(139261),	-- Tuft of Ironfur
				})),
				e(1704, {	-- Dragons of Nightmare
					["crs"] = {
						102679,	-- Ysondre
						102681,	-- Taerar
						102682,	-- Lethon
						102683,	-- Emeriss
					},
					["groups"] = {
						i(139205),	-- Cowl of Fright
						i(138215),	-- Dreamscale Inlaid Vestments
						i(138216),	-- Horror Inscribed Chestguard
						i(138218),	-- Dragonbone Wristclamps
						i(138219),	-- Dragonspur Wristguards
						i(138214),	-- Gauntlets of the Demented Mind
						i(138212),	-- Handwraps of Delusional Power
						i(138211),	-- Malignant Sabatons
						i(138220),	-- Mindrend Band
						i(138225),	-- Phantasmal Echo
						i(138224),	-- Unstable Horrorslime
						i(138222),	-- Vial of Nightmare Fog
						i(138228),	-- Bioluminescent Mushroom
						i(138227),	-- Entrancing Stone
						i(138226),	-- Nightmare Engulfed Jewel
					},
				}),
				cr(104636, e(1750, {	-- Cenarius
					i(139231),	-- Crown of Steely Brambles
					i(139192),	-- Mantle of Perpetual Bloom
					i(139218),	-- Thorny Bramblemail Pauldrons
					i(139248),	-- Evergreen Vinewrap Drape
					i(139207),	-- Grove Keeper's Robe
					i(139225),	-- Fitted Ironbark Gauntlets
					i(139198),	-- Forest-Lord's Waistwrap
					i(139211),	-- Laughing Sister's Pouch-Chain
					i(139194),	-- Cozy Dryad Hoof-Socks
					i(139333),	-- Horn of Cenarius
					i(139334),	-- Nature's Call
					i(139263),	-- Blessing of Cenarius
					i(139265),	-- Radiant Dragon Egg
					i(139264),	-- Uplifting Emerald
				})),
				cr(103769, e(1726, {	-- Xavius <Nightmare Lord>
					ach(11194, {	-- Ahead of the Curve: Xavius
						["u"] = REMOVED_FROM_GAME,
					}),
					i(139189),	-- Hood of Darkened Visions
					i(139332),	-- Blackened Portalstone Necklace
					i(139232),	-- Midnight Herald's Pauldrons
					i(139193),	-- Maddening Robe of Secrets
					i(141006),	-- The First Satyr's Spaulders [Heroic and Mythic only!]
					i(139222),	-- Manacles of the Nightmare Colossus
					i(139228),	-- Eon-Tempered Waistplate
					i(139216),	-- Disjointed Linkage Leggings
					i(139203),	-- Repulsive Leathery Pants
					i(139199),	-- Boots of Endless Betrayal
					i(139238),	-- Twice-Warped Azsharan Signet
					i(139336),	-- Bough of Corruption
					i(139335),	-- Grotesque Statuette
					i(139267),	-- Azsharan Councillor's Clasp
					i(139269),	-- Crystallized Drop of Eternity
					i(139266),	-- Fragment of Eternal Spite
					i(139268),	-- Nightmarish Elm Branch
				})),
			}),
			d(DIFFICULTY.RAID.MYTHIC, {
				n(QUESTS, {
					q(44285, {	-- The Emerald Nightmare: Piercing the Veil [Mythic]
						["description"] = "Finishing this quest will grant you immediate access to Cenarius on Mythic difficulty each week.\n",
						["provider"] = { "n", 106482 },	-- Malfurion Stormrage
						["groups"] = { i(141305) },	-- Essence of Clarity (QI!)
					}),
				}),
				n(ZONE_DROPS, {
					i(141696),	-- Pendant of Liquid Horror
					i(141694),	-- Gauntlets of Fractured Dreams
					i(140993),	-- Gloves of Murmured Promises
					i(140996),	-- Grips of Silent Screams
					i(141695),	-- Tarnished Dreamkeeper's Gauntlets
				}),
				cr(102672, e(1703, {	-- Nythendra
					ach(10821),	-- Mythic: Nythendra
					i(139214),	-- Greyed Dragonscale Coif
					i(139191),	-- Ancient Dreamwoven Mantle
					i(139224),	-- Insect-Etched Chestplate
					i(139235),	-- Wristclamps of Mad Dreams
					i(139212),	-- Creeping String of Larva
					i(139197),	-- Lifeless Buckled Girdle
					i(139200),	-- Stained Maggot Squishers
					i(139236),	-- Grubby Silver Ring
					i(139320),	-- Ravaged Seed Pod
					i(139321),	-- Swarming Plaguehive
					i(139251),	-- Despoiled Dragonscale
					i(139252),	-- Preserved Worldseed
					i(139249),	-- Shaladrassil's Blossom
					i(139250),	-- Unwaking Slumber
					i(136820),	-- Nythendra's Heart
				})),
				cr(105393, e(1738, {	-- Il'gynoth, Heart of Corruption
					ach(10823),	-- Mythic: Il'gynoth
					i(139188),	-- Celestially Aligned Hood
					i(139206),	-- Otherworldy Leather Mantle
					i(139233),	-- Pauldrons of Shifting Runes
					i(139187),	-- Clasp of Cosmic Insignificance
					i(139202),	-- Dreamsculptor's Gloves
					i(139213),	-- Gauntlets of Malevolent Intent
					i(139227),	-- Waistplate of Nameless Horror
					i(139215),	-- Singular Chain Leggings
					i(139237),	-- Dreadful Cyclopean Signet
					i(139324),	-- Goblet of Nightmarish Ichor
					i(139325),	-- Spontaneous Appendages
					i(139326),	-- Wriggling Sinew
					i(139259),	-- Cube of Malice
					i(139257),	-- Gore-Drenched Fetish
					i(139258),	-- Radiating Metallic Shard
					i(139254),	-- Shrieking Bloodstone
					i(139256),	-- Sloshing Core of Hatred
				})),
				cr(106087, e(1744, {	-- Elerethe Renferal
					ach(10822),	-- Mythic: Elerethe Renferal
					i(139204),	-- Mask of Multitudinous Eyes
					i(139229),	-- Venom-Fanged Barbute
					i(138221),	-- Gossamer-Spun Greatcloak
					i(139221),	-- Patient Ambusher's Hauberk
					i(139209),	-- Wristwraps of Broken Trust
					i(138217),	-- Pliable Spider Silk Cinch
					i(139190),	-- Ragged Horrorweave Leggings
					i(139230),	-- Storm-Battered Legplates
					i(139219),	-- Black Venom Sabatons
					i(139322),	-- Cocoon of Enforced Solitude
					i(139323),	-- Twisting Wind
					i(139253),	-- Fel-Bloated Venom Sac
					i(139255),	-- Scything Quill
					i(139254),	-- Shrieking Bloodstone
					i(137008),	-- Stormfury Diamond
				})),
				cr(100497, e(1667, {	-- Ursoc
					ach(10824),	-- Mythic: Ursoc
					i(139239),	-- Cursed Beartooth Necklace
					i(139217),	-- Matted Fur Pauldrons
					i(139208),	-- Scarred Ragefang Chestpiece
					i(139196),	-- Ragged Fur Wristwraps
					i(139226),	-- Primal Gauntlets of Rage
					i(139201),	-- Splotched Bloodfur Leggings
					i(139195),	-- Crimson Wool-Lined Slippers
					i(139220),	-- Scored Ironclaw Sabatons
					i(139234),	-- Trampling Warboots
					i(139329),	-- Bloodthirsty Instinct
					i(139330),	-- Heightened Senses
					i(139327),	-- Unbridled Fury
					i(139328),	-- Ursoc's Rending Paw
					i(139260),	-- Bloodied Bear Fang
					i(139262),	-- Reverberating Femur
					i(139261),	-- Tuft of Ironfur
				})),
				e(1704, {	-- Dragons of Nightmare
					["crs"] = {
						102679,	-- Ysondre
						102681,	-- Taerar
						102682,	-- Lethon
						102683,	-- Emeriss
					},
					["groups"] = {
						ach(10825),	-- Mythic: Dragons of Nightmare
						i(139205),	-- Cowl of Fright
						i(138215),	-- Dreamscale Inlaid Vestments
						i(138216),	-- Horror Inscribed Chestguard
						i(138218),	-- Dragonbone Wristclamps
						i(138219),	-- Dragonspur Wristguards
						i(138214),	-- Gauntlets of the Demented Mind
						i(138212),	-- Handwraps of Delusional Power
						i(138211),	-- Malignant Sabatons
						i(138220),	-- Mindrend Band
						i(138225),	-- Phantasmal Echo
						i(138224),	-- Unstable Horrorslime
						i(138222),	-- Vial of Nightmare Fog
						i(138228),	-- Bioluminescent Mushroom
						i(138227),	-- Entrancing Stone
						i(138226),	-- Nightmare Engulfed Jewel
					},
				}),
				cr(104636, e(1750, {	-- Cenarius
					ach(10826),	-- Mythic: Cenarius
					i(139231),	-- Crown of Steely Brambles
					i(139192),	-- Mantle of Perpetual Bloom
					i(139218),	-- Thorny Bramblemail Pauldrons
					i(139248),	-- Evergreen Vinewrap Drape
					i(139207),	-- Grove Keeper's Robe
					i(139225),	-- Fitted Ironbark Gauntlets
					i(139198),	-- Forest-Lord's Waistwrap
					i(139211),	-- Laughing Sister's Pouch-Chain
					i(139194),	-- Cozy Dryad Hoof-Socks
					i(139333),	-- Horn of Cenarius
					i(139334),	-- Nature's Call
					i(139263),	-- Blessing of Cenarius
					i(139265),	-- Radiant Dragon Egg
					i(139264),	-- Uplifting Emerald
				})),
				cr(103769, e(1726, {	-- Xavius <Nightmare Lord>
					ach(11194, {	-- Ahead of the Curve: Xavius
						["u"] = REMOVED_FROM_GAME,
					}),
					ach(11191, {	-- Cutting Edge: Xavius
						["u"] = REMOVED_FROM_GAME,
					}),
					ach(11238),	-- Mythic: Xavius Guild Run
					ach(10854, {	-- Realm First! Xavius
						["u"] = REMOVED_FROM_GAME,
					}),
					ach(10827, {	-- Mythic: Xavius
						title(341),	-- The Dreamer
					}),
					i(139189),	-- Hood of Darkened Visions
					i(139332),	-- Blackened Portalstone Necklace
					i(139232),	-- Midnight Herald's Pauldrons
					i(139193),	-- Maddening Robe of Secrets
					i(141006),	-- The First Satyr's Spaulders [Heroic and Mythic only!]
					i(139222),	-- Manacles of the Nightmare Colossus
					i(139228),	-- Eon-Tempered Waistplate
					i(139216),	-- Disjointed Linkage Leggings
					i(139203),	-- Repulsive Leathery Pants
					i(139199),	-- Boots of Endless Betrayal
					i(139238),	-- Twice-Warped Azsharan Signet
					i(139336),	-- Bough of Corruption
					i(139335),	-- Grotesque Statuette
					i(139267),	-- Azsharan Councillor's Clasp
					i(139269),	-- Crystallized Drop of Eternity
					i(139266),	-- Fragment of Eternal Spite
					i(139268),	-- Nightmarish Elm Branch
				})),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	inst(768, {
		q(44142),	-- Nythendra
		q(44143),	-- Il'gynoth, Heart of Corruption
		q(44144),	-- Elerethe Renferal
		q(44145),	-- Ursoc
		q(44146),	-- Dragons of Nightmare
		q(44147),	-- Cenarius
		q(44148),	-- Xavius
	}),
})));
