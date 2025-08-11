-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
	inst(946, {	-- Antorus, the Burning Throne
		["isRaid"] = true,
		["coord"] = { 54.9, 62.3, ANTORAN_WASTES },
		["maps"] = {
			909,	-- Antorus, the Burning Throne
			910,	-- Gaze of the Legion
			911,	-- Halls of the Boundless Reach
			912,	-- Elunaria
			913,	-- Elarian Sanctuary
			914,	-- The Exhaust
			915,	-- The Burning Throne
			916,	-- Chamber of Anguish
			917,	-- The World Soul
			918,	-- Seat of the Pantheon
			919,	-- Upper Deck
			920,	-- Lower Deck
		},
		["lvl"] = { 45 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(42032, {	-- Antorus, the Burning Throne (automated)
					["timeline"] = { ADDED_11_1_7 },
				}),
				ach(12020),	-- Argussy Up (Antorus, the Burning Throne)
				ach(11988, {	-- Light's Breach
                    crit(37232, {	-- Garothi Worldbreaker
                        ["_encounter"] = { 1992, DIFFICULTY.RAID.LFR },
                    }),
                    crit(37233, {	-- Felhounds of Sargeras
                        ["_encounter"] = { 1987, DIFFICULTY.RAID.LFR },
                    }),
                    crit(37234, {	-- Antoran High Command
                        ["_encounter"] = { 1997, DIFFICULTY.RAID.LFR },
                    }),
                }),
				ach(11989, {	-- Hope's End
                    crit(37236, {	-- Eonar the Life-Bender
                        ["_encounter"] = { 2025, DIFFICULTY.RAID.LFR },
                    }),
                    crit(37235, {	-- Portal Keeper Hasabel
                        ["_encounter"] = { 1985, DIFFICULTY.RAID.LFR },
                    }),
                    crit(37237, {	-- Imonar the Soulhunter
                        ["_encounter"] = { 2009, DIFFICULTY.RAID.LFR },
                    }),
                }),
				ach(11990, {	-- Forbidden Descent
                    crit(37238, {	-- Kin'garoth
                        ["_encounter"] = { 2004, DIFFICULTY.RAID.LFR },
                    }),
                    crit(37239, {	-- Varimathras
                        ["_encounter"] = { 1983, DIFFICULTY.RAID.LFR },
                    }),
                    crit(37240, {	-- The Coven of Shivarra
                        ["_encounter"] = { 1986, DIFFICULTY.RAID.LFR },
                    }),
                }),
				ach(11991, {	-- Seat of the Pantheon
                    crit(37241, {	-- Aggramar
                        ["_encounter"] = { 1984, DIFFICULTY.RAID.LFR },
                    }),
                    crit(37242, {	-- Argus the Unmaker
                        ["_encounter"] = { 2031, DIFFICULTY.RAID.LFR },
                    }),
                }),
				ach(11987, {	-- Glory of the Argus Raider (NORMAL+ ONLY)
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						11949,	-- Hard to Kill
						11948,	-- Together We Stand
						11930,	-- Worm-monger
						11928,	-- Portal Combat
						11915,	-- Don't Sweat the Technique
						12065,	-- Hounds Good To Me
						12129,	-- This is the War Room!
						12067,	-- Spheres of Influence
						12030,	-- The World Revolves Around Me
						12046,	-- Remember the Titans
						12257,	-- Stardust Crusaders
					}},
					["groups"] = {
						i(152815),		-- Antoran Gloomhound (MOUNT!)
					},
				}),
				ach(12112),	-- Antorus, the Burning Throne Guild Run
			}),
			n(QUESTS, {
				q(48954, {	-- Blood of a Titan
					["provider"] = { "i", 152900 },	-- Blood of the Unmaker
					["timeline"] = { ADDED_7_3_0, REMOVED_8_0_1 },
					["groups"] = {
						i(152901, {	-- Violet Spellwing (MOUNT!)
							["timeline"] = { ADDED_7_3_0, REMOVED_8_0_1 },
						}),
					},
				}),
				q(49077, {	-- Moments of Reflection
					["provider"] = { "n", 129429 },	-- Alor'idal Crystal
					["groups"] = { i(153555) },	-- Alor'idal Crystal (QI!)
				}),
			}),
			d(DIFFICULTY.RAID.MULTI.ALL, {
				n(COMMON_BOSS_DROPS, {
					["crs"] = {
						122450,	-- Garothi Worldbreaker
						122135,	-- Felhounds of Sargeras — Shatug
						122477,	-- Felhounds of Sargeras — F'harg
						122367,	-- Antoran High Command — Admiral Svirax
						122369,	-- Antoran High Command — Chief Engineer Ishkar
						122333,	-- Antoran High Command — General Erodus
						122500,	-- Eonar the Life-Bender — Essence of Eonar
						124445,	-- Eonar the Life-Binder — The Paraxis
						122104,	-- Portal Keeper Hasabel
						124158,	-- Imonar the Soulhunter
						122578,	-- Kin'garoth
						122366,	-- Varimathras
						122467,	-- The Coven of Shivarra — Asara, Mother of Night
						122469,	-- The Coven of Shivarra — Diima, Mother of Gloom
						122468,	-- The Coven of Shivarra — Noura, Mother of Flames
						121975,	-- Aggramar
						124828,	-- Argus the Unmaker
					},
					["groups"] = {
						i(151654),	-- Vantus Rune Technique: Antorus, the Burning Throne [Rank 1] (RECIPE!)
						i(151655),	-- Vantus Rune Technique: Antorus, the Burning Throne [Rank 2] (RECIPE!)
						i(151656),	-- Vantus Rune Technique: Antorus, the Burning Throne [Rank 3] (RECIPE!)
					},
				}),
				e(1987, {	-- Felhounds of Sargeras
					["crs"] = {
						122477,	-- F'harg
						122135,	-- Shatug
					},
					["groups"] = {
						i(152816),	-- Antoran Charhound (MOUNT!)
						i(151726),	-- Design: Empyrial Cosmic Crown (Rank 3)
						i(151729),	-- Design: Empyrial Deep Crown (Rank 3)
						i(151732),	-- Design: Empyrial Elemental Crown (Rank 3)
						i(151735),	-- Design: Empyrial Titan Crown (Rank 3)
						i(208051, {	-- Grimoire of the Antoran Felhunter (CI!)
							["timeline"] = { ADDED_10_1_5 },
						}),
					},
				}),
				e(1997, {	-- Antoran High Command
					["crs"] = {
						122367,	-- Admiral Svirax
						122369,	-- Chief Engineer Ishkar
						122333,	-- General Erodus
					},
					["groups"] = {
						i(151742),	-- Pattern: Fiendish Shoulderguards [Rank 3] (RECIPE!)
						i(151745),	-- Pattern: Fiendish Spaulders [Rank 3] (RECIPE!)
					},
				}),
				cr(122104, e(1985, {	-- Portal Keeper Hasabel
					o(405307, {	-- Singed Grimoire
						i(208050, {	-- Grimoire of the Xorothian Felhunter (CI!)
							["description"] = "1. Defeat Portal Keeper Hasabel in Antorus, the Burning Throne, while wearing a staff transmogged into Zhar'doom, Greatstaff of the Devourer.\n2. Enter the Orange portal of the boss encounter to be teleported to a different platform.\n3. Interact with the deactivated portal near the center of the platform while wearing the transmogged staff and select <Channel the power of your weapon into the gateway.>",
							["timeline"] = { ADDED_10_1_5 },
							["providers"] = {
								{ "i", 32374, },	-- Zhar'doom, Greatstaff of the Devourer
								{ "i", 150517, },	-- Zhar'doom, Greatstaff of the Devourer (TW)
							},
						}),
					}),


					i(213014, {	-- Grimoire of the Xorothian Darkglare (CI!)
						["timeline"] = { ADDED_10_2_5 },
					}),
					i(151748),	-- Pattern: Lightweave Breeches [Rank 3] (RECIPE!)
				})),
				cr(121975, e(1984, {	-- Aggramar
					i(152094),	-- Taeshalach
				})),
				cr(124828, e(2031, {	-- Argus the Unmaker
					i(153115),	-- Scythe of the Unmaker [BLUE]
				})),
			}),
			d(DIFFICULTY.RAID.LFR, {
				["crs"] = { 111246 },	-- Archmage Timear
				["coord"] = { 63.7, 55.0, LEGION_DALARAN },
				["groups"] = {
					n(ZONE_DROPS, {
						i(152084),	-- Gloves of Abhorrent Strategies
						i(152085),	-- Cuffs of the Viridian Flameweavers
						i(153018),	-- Corrupted Mantle of the Felseekers
						i(151993),	-- Leggings of the Sable Stalkers
						i(152087),	-- Sinuous Kerapteron Bindings
						i(152413),	-- Felflame Inferno Shoulderpads
						i(152088),	-- Horror Fiend-Scale Breastplate
						i(152089),	-- Wristguards of Ominous Forging
						i(152682),	-- Greaves of the Felblade Defenders
						i(152090),	-- Impenetrable Garothi Breastplate
						i(152091),	-- Wristguards of the Dark Keepers
						i(153019),	-- Hulking Demolisher Legplates
					}),
					header(HEADERS.Achievement, 11988, {	-- Light's Breach [Garothi / Hounds / High Command]
						cr(122450, e(1992, {	-- Garothi Worldbreaker
							i(151943),	-- Crown of Relentless Annihilation
							i(151988),	-- Shoulderpads of the Demonic Blitz
							i(151937),	-- Cloak of  the Burning Vanguard
							i(152017),	-- Soul-Tempered Chestplate
							i(151998),	-- Heedless Eradication Gauntlets
							i(151951),	-- Enhanced Worldscorcher Cinch
							i(152002),	-- Battalion-Shattering Leggings
							i(151987),	-- Breach-Blocker Legguards
							i(152009),	-- Doomwalker Warboots
							i(151956),	-- Garothi Feedback Conduit
							i(151962),	-- Prototype Personnel Decimator
							i(152031),	-- Doomfire Dynamo
							i(152036),	-- Hellfire Ignition Switch
							i(152028),	-- Spurting Reaver Heart
							i(152039),	-- Viscous Reaver-Coolant
						})),
						e(1987, {	-- Felhounds of Sargeras
							["crs"] = {
								122477,	-- F'Harg
								122135,	-- Shatug
							},
							["groups"] = {
								i(152000),	-- Shadowfused Chain Coif
								i(151973),	-- Collar of Null-Flame
								i(152004),	-- Pauldrons of the Soulburner
								i(151949),	-- Soul-Siphon Mantle
								i(151980),	-- Harness of Oppressing Dark
								i(151947),	-- Vestments of Enflamed Blight
								i(152012),	-- Molten Bite Handguards
								i(152021),	-- Flamelicked Girdle
								i(151983),	-- Vicious Flamepaws
								i(153544),	-- Eye of F'Harg
								i(152645),	-- Eye of Shatug
								i(151974),	-- Eye of Shatug — this one isn't in DJ, but it dropped in LFR on May 11, 2020 and was "Unsorted."
								i(151968),	-- Shadow-Singed Fang
								i(152056),	-- Corrupting Dewclaw
								i(152291),	-- Fraternal Fervor
								i(152027),	-- Gravitational Condensate
							},
						}),
						e(1997, {	-- Antoran High Command
							["crs"] = {
								122367,	-- Admiral Svirax
								122369,	-- Chief Engineer Ishkar
								122333,	-- General Erodus
							},
							["groups"] = {
								i(151985),	-- General Erodus' Tricorne
								i(152019),	-- Pauldrons of the Eternal Offensive
								i(152125),	-- Bearmantle Cloak
								i(152143),	-- Cloak of Chi'Ji
								i(152161),	-- Cloak of the Dashing Scoundrel
								i(152167),	-- Drape of Venerated Spirits
								i(152113),	-- Dreadwake Greatcloak
								i(152119),	-- Felreaper Drape
								i(152154),	-- Gilded Seraph's Drape
								i(152172),	-- Grim Inquisitor's Cloak
								i(152179),	-- Juggernaut Cloak
								i(152149),	-- Light's Vanguard Greatcloak
								i(152136),	-- Runebound Cape
								i(152131),	-- Serpentstalker Drape
								i(151994),	-- Fleet Commander's Hauberk
								i(151992),	-- Fiendish Logistician's Wristwraps
								i(151953),	-- Man'ari Pyromancer Cuffs
								i(152006),	-- Depraved Tactician's Waistguard
								i(152424),	-- Legwraps of the Seasoned Exterminator
								i(152011),	-- Eredar Warcouncil Sabatons
								i(151957),	-- Ishkar's Felshield Emitter
								i(151969),	-- Terminus Signaling Beacon
								i(152293),	-- Fasces of the Endless Legions
								i(152043),	-- Lightshield Amplifier
								i(152295),	-- Svirax's Grim Trophy
								i(152032),	-- Twisted Engineer's Fel-Infuser
							},
						}),
					}),
					header(HEADERS.Achievement, 11989, {	-- Hope's End [Eonar / Hasabel / Imonar]
						e(2025, {	-- Eonar the Life-Bender
							["crs"] = {
								122500,	-- Essence of Eonar
								124445,	-- The Paraxis
							},
							["groups"] = {
								i(152681),	-- Headdress of Living Brambles
								i(152013),	-- Helmet of the Hidden Sanctuary
								i(152124),	-- Bearmantle Harness
								i(152112),	-- Dreadwake Bonecage
								i(152118),	-- Felreaper Vest
								i(152158),	-- Gilded Seraph's Robes
								i(152176),	-- Grim Inquisitor's Robes
								i(152178),	-- Juggernaut Breastplate
								i(152148),	-- Light's Vanguard  Breastplate
								i(152166),	-- Robes of Venerated Spirits
								i(152140),	-- Runebound Tunic
								i(152130),	-- Serpentstalker Tunic
								i(152142),	-- Tunic of Chi'Ji
								i(152160),	-- Vest of the Dashing Scoundrel
								i(152023),	-- Vambraces of  Life's Assurance
								i(151952),	-- Cord of Blossoming Petals
								i(152007),	-- Sash of the Gilded Rose
								i(151981),	-- Life-Bearing Footpads
								i(152688),	-- Loop of the Life-Binder
								i(151970),	-- Vitality Resonator
								i(152061),	-- Droplets of the Cleansing Storm
								i(152047),	-- Ironvine Thorn
								i(152044),	-- Spark of Everburning Light
								i(152054),	-- Unwavering Soul Essence
							},
						}),
						cr(122104, e(1985, {	-- Portal Keeper Hasabel
							i(152001),	-- Nexus Conductor's Headgear
							i(151965),	-- Vulcanarcore Pendant
							i(152008),	-- Reality-Splitting Wristguards
							i(151941),	-- Aranasi Shadow-Weaver's Gloves
							i(152086),	-- Grips of Hungering Shadows
							i(152020),	-- Nathrezim Battle Girdle
							i(151990),	-- Portal Keeper's Cincture
							i(151945),	-- Lady Dacidion's Silk Slippers
							i(152063),	-- Seal of the Portalmaster
							i(151976),	-- Riftworld Codex
							i(151958),	-- Tarratus Keystone
							i(152035),	-- Blazing Dreadsteed Horseshoe
							i(152057),	-- Crepuscular Skitterer Egg
							i(152049),	-- Fel-Engraved Handbell
							i(152041),	-- Sublimating Portal Frost
						})),
						cr(124158, e(2009, {	-- Imonar the Soulhunter
							i(151944),	-- Soulhunter's Cowl
							i(152416),	-- Shoulderguards of Indomitable Purpose
							i(151989),	-- Spaulders of the Relentless Tracker
							i(151938),	-- Drape of the Spirited Hunt
							i(152687),	-- Imonar's Demi-Gauntlets
							i(151999),	-- Preysnare Vicegrips
							i(152128),	-- Bearmantle Legguards
							i(152116),	-- Dreadwake Legplates
							i(152122),	-- Felreaper Leggings
							i(152157),	-- Gilded  Seraph's Leggings
							i(152175),	-- Grim Inquisitor's Leggings
							i(152182),	-- Juggernaut Legplates
							i(152146),	-- Leggings of Chi'Ji
							i(152170),	-- Leggings of Venerated Spirits
							i(152152),	-- Light's Vanguard Legplates
							i(152164),	-- Pants of the Dashing Scoundrel
							i(152139),	-- Runebound Leggings
							i(152134),	-- Serpentstalker Legguards
							i(151996),	-- Deft Soulhunter's Sabatons
							i(151939),	-- Whisperstep Runners
							i(152024),	-- Fallen Magi's Seerstone
							i(152042),	-- Hoarfrost-Beast Talon
							i(152050),	-- Mysterious Petrified Egg
							i(152045),	-- Venerated Puresoul Idol
						})),
					}),
					header(HEADERS.Achievement, 11990, {	-- Forbidden Descent [Kin'garoth / Varimathras / Coven]
						cr(122578, e(2004, {	-- Kin'garoth
							i(152014),	-- Titan-Subjugator's Visage
							i(151948),	-- Magma-Spattered Smock
							i(152280),	-- Scalding Shatterguards
							i(152126),	-- Bearmantle Paws
							i(152114),	-- Dreadwake Gauntlets
							i(152120),	-- Felreaper Gloves
							i(152155),	-- Gilded Seraph's Handwraps
							i(152162),	-- Gloves of the Dashing Scoundrel
							i(152168),	-- Gloves of Venerated Spirits
							i(152173),	-- Grim Inquisitor's Gloves
							i(152144),	-- Grips of Chi'Ji
							i(152180),	-- Juggernaut Gauntlets
							i(152150),	-- Light's Vanguard Gauntlets
							i(152137),	-- Runebound Gloves
							i(152132),	-- Serpentstalker Grips
							i(152412),	-- Depraved Machinist's Footpads
							i(152064),	-- Band of the Sargerite Smith
							i(151955),	-- Acrid Catalyst Injector
							i(151975),	-- Apocalypse Drive
							i(151963),	-- Forgefiend's Fabricator
							i(152048),	-- Decimator Crankshaft
							i(152051),	-- Eidolon of Life
							i(152055),	-- Kin'garoth's Oil-Sump
							i(152034),	-- Obliterator Propellant
						})),
						cr(122366, e(1983, {	-- Varimathras
							i(151966),	-- Riveted Choker of Delirium
							i(151995),	-- Robes of the Forsaken Dreadlord
							i(151979),	-- Vest of Unfathomable Anguish
							i(151954),	-- Blood-Drenched Bindings
							i(152281),	-- Varimathras' Shattered Manacles
							i(151991),	-- Belt of Fractured Sanity
							i(151942),	-- Cord of Surging Hysteria
							i(152015),	-- Greaves of Mercurial Alliegance
							i(151997),	-- Nathrezim Shade-Walkers
							i(151960),	-- Carafe of Searing Light
							i(151964),	-- Seeping Scourgewing
							i(152092),	-- Nathrezim Incisor
							i(152060),	-- Neuroshock Electrode
							i(152025),	-- Thu'rayan Lash
							i(152037),	-- Tormentor's Brand
						})),
						e(1986, {	-- The Coven of Shivarra
							["crs"] = {
								122467,	-- Asara, Mother of Night
								122469,	-- Diima, Mother of Gloom
								122468,	-- Noura, Mother of Flames
							},
							["groups"] = {
								i(152129),	-- Bearmantle Shoulders
								i(152117),	-- Dreadwake Pauldrons
								i(152123),	-- Felreaper Spaulders
								i(152159),	-- Gilded Seraph's Amice
								i(152177),	-- Grim Inquisitor's Shoulderguards
								i(152183),	-- Juggernaut Pauldrons
								i(152153),	-- Light's Vanguard Shoulderplates
								i(152147),	-- Meditation Spheres of Chi'Ji
								i(152171),	-- Pauldrons of Venerated Spirits
								i(152141),	-- Runebound Mantle
								i(152135),	-- Serpentstalker Mantle
								i(152165),	-- Shoulderpads of the Dashing Scoundrel
								i(152414),	-- Bracers of Wanton Morality
								i(151984),	-- Lurid Grips of the Obscene
								i(151946),	-- Fervent Twilight Legwraps
								i(152003),	-- Legguards of Numbing Glooom
								i(152010),	-- Burning Coven Sabatons
								i(152284),	-- Zealous Tormentor's Ring
								i(151977),	-- Dilma's Glacial Aegis
								i(152289),	-- Highfather's Machination
								i(151971),	-- Sheath of Asara
								i(152046),	-- Coven Prayer Bead
								i(152040),	-- Frigid Gloomstone
								i(152029),	-- Shivarran Cachabon
								i(152058),	-- Stormcaller's Fury
							},
						}),
					}),
					header(HEADERS.Achievement, 11991, {	-- Seat of the Pantheon [Aggramar / Argus]
						cr(121975, e(1984, {	-- Aggramar
							i(152127),	-- Bearmantle Headdress
							i(152163),	-- Cavalier Hat of the Dashing Scoundrel
							i(152145),	-- Douli of Chi'Ji
							i(152115),	-- Dreadwake Helm
							i(152121),	-- Felreaper Hood
							i(152156),	-- Gilded Seraph's Crown
							i(152174),	-- Grim Inquisitor's Death Mas
							i(152169),	-- Headdress of Venerated Spirits
							i(152181),	-- Juggernaut Helm
							i(152151),	-- Light's Vanguard Helm
							i(152138),	-- Runebound Collar
							i(152133),	-- Serpentstalker Helmet
							i(151950),	-- Fallen Avenger's Amice
							i(152062),	-- Greatcloak of the Dark Pantheon
							i(152018),	-- Breastplate of Molten Rebirth
							i(152022),	-- Grond-Father Girdle
							i(152683),	-- World-Ravager Waistguard
							i(152282),	-- Caustic Titanspite Legguards
							i(152684),	-- Greatboots of the Searing Tempest
							i(151940),	-- Sandals of the Reborn Colossus
							i(152093),	-- Gorshalach's Legacy
							i(151978),	-- Smoldering Titanguard
							i(152026),	-- Prototype Titan-Disc
							i(152038),	-- Pyretic Bronze Clasp
							i(152033),	-- Sliver of Corruption
							i(152052),	-- Sporemound Seedling
						})),
						cr(124828, e(2031, {	-- Argus the Unmaker
							i(152423),	-- Helm of the Awakened Soul
							i(152283),	-- Chain of the Unmaker
							i(152005),	-- Pauldrons of Colossal Burden
							i(152679),	-- Gambeson of Sargeras' Corruption
							i(151982),	-- Vest of Waning Life
							i(152680),	-- Handwraps of Inevitable Doom
							i(152686),	-- Nascent Deathbringer's Clutches
							i(151986),	-- Death-Enveloping Cincture
							i(152016),	-- Cosmos-Culling Legplates
							i(151972),	-- Sullied Seal of the Pantheon
							i(155853),	-- Conch of the Thunderer
							i(155848),	-- Condensed Blight Orb
							i(155847),	-- Cruor of the Avenger
							i(155849),	-- Flickering Ember of Rage
							i(155846),	-- Miniaturized Cosmic Beacon
							i(155855),	-- Mote of the Forgemaster
							i(155851),	-- Reorigination Spark
							i(155850),	-- Rime of the Spirit Realm
							i(155854),	-- Root of the Lifebinder
							i(155852),	-- Volatile Soul Fragment
						})),
					}),
				},
			}),
			d(DIFFICULTY.RAID.MULTI.NORMAL_PLUS, {
				cr(122450, e(1992, {	-- Garothi Worldbreaker
					ach(11930, {	-- Worm-monger
						["crs"] = { 124436 },	-- Blightscale Worm
					}),
					i(151713),	-- Plans: Empyrial Breastplate (Rank 3)
				})),
				e(1987, {	-- Felhounds of Sargeras
					["crs"] = {
						122477,	-- F'harg
						122135,	-- Shatug
					},
					["groups"] = {
						ach(12065),	-- Hounds Good To Me
					},
				}),
				e(1997, {	-- Antoran High Command
					["crs"] = {
						122367,	-- Admiral Svirax
						122369,	-- Chief Engineer Ishkar
						122333,	-- General Erodus
					},
					["groups"] = {
						ach(12129),	-- This is the War Room!
					},
				}),
				e(2025, {	-- Eonar the Life-Bender
					["crs"] = {
						122500,	-- Essence of Eonar
						124445,	-- The Paraxis
					},
					["groups"] = {
						ach(12067),	-- Spheres of Influence
					},
				}),
				cr(122104, e(1985, {	-- Portal Keeper Hasabel
					ach(11928),	-- Portal Combat
				})),
				cr(124158, e(2009, {	-- Imonar the Soulhunter
					ach(11949),	-- Hard to Kill
				})),
				cr(122578, e(2004, {	-- Kin'garoth
					ach(12030),	-- The World Revolves Around Me
				})),
				cr(122366, e(1983, {	-- Varimathras
					ach(11948),	-- Together We Stand
				})),
				e(1986, {	-- The Coven of Shivarra
					["crs"] = {
						122467,	-- Asara, Mother of Night
						122469,	-- Diima, Mother of Gloom
						122468,	-- Noura, Mother of Flames
					},
					["groups"] = {
						ach(12046),	-- Remember the Titans
					},
				}),
				cr(121975, e(1984, {	-- Aggramar
					ach(11915, {	-- Don't Sweat the Technique
						["crs"] = { 123531 },	-- Manifestation of Taeshalach
					}),
				})),
				cr(124828, e(2031, {	-- Argus the Unmaker
					ach(12257),	-- Stardust Crusaders
				})),
			}),
			d(DIFFICULTY.RAID.NORMAL, {
				n(QUESTS, {
					q(49032, {	-- Antorus, the Burning Throne: Dark Passage (Normal)
						["description"] = "Finishing this quest will grant you immediate access to Imonar the Soulhunter on Normal difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Heroic or Mythic version first.|r\n",
						["altQuests"] = {
							49075,	-- Antorus, the Burning Throne: Dark Passage (Heroic)
							49076,	-- Antorus, the Burning Throne: Dark Passage (Mythic)
						},
						["provider"] = { "n", 125512 },	-- High Exarch Turalyon
						["groups"] = { i(152902) },	-- Rune of Passage (QI!)
					}),
					q(49133, {	-- Antorus, the Burning Throne: The Heart of Argus (Normal)
						["description"] = "Finishing this quest will grant you immediate access to Aggramar on Normal difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Heroic or Mythic version first.|r\n",
						["sourceQuests"] = { 49032 },	-- Antorus, the Burning Throne: Dark Passage (Normal)
						["altQuests"] = {
							49134,	-- Antorus, the Burning Throne: The Heart of Argus (Heroic)
							49135,	-- Antorus, the Burning Throne: The Heart of Argus (Mythic)
						},
						["provider"] = { "n", 125682 },	-- Prophet Velen
						["groups"] = { i(152908) },	-- Sigil of the Dark Titan (QI!)
					}),
				}),
				n(ZONE_DROPS, {
					i(152084),	-- Gloves of Abhorrent Strategies
					i(152085),	-- Cuffs of the Viridian Flameweavers
					i(153018),	-- Corrupted Mantle of the Felseekers
					i(151993),	-- Leggings of the Sable Stalkers
					i(152087),	-- Sinuous Kerapteron Bindings
					i(152413),	-- Felflame Inferno Shoulderpads
					i(152088),	-- Horror Fiend-Scale Breastplate
					i(152089),	-- Wristguards of Ominous Forging
					i(152682),	-- Greaves of the Felblade Defenders
					i(152090),	-- Impenetrable Garothi Breastplate
					i(152091),	-- Wristguards of the Dark Keepers
					i(153019),	-- Hulking Demolisher Legplates
				}),
				cr(122450, e(1992, {	-- Garothi Worldbreaker
					i(151943),	-- Crown of Relentless Annihilation
					i(151988),	-- Shoulderpads of the Demonic Blitz
					i(151937),	-- Cloak of  the Burning Vanguard
					i(152017),	-- Soul-Tempered Chestplate
					i(151998),	-- Heedless Eradication Gauntlets
					i(151951),	-- Enhanced Worldscorcher Cinch
					i(152002),	-- Battalion-Shattering Leggings
					i(151987),	-- Breach-Blocker Legguards
					i(152009),	-- Doomwalker Warboots
					i(151956),	-- Garothi Feedback Conduit
					i(151962),	-- Prototype Personnel Decimator
					i(152031),	-- Doomfire Dynamo
					i(152036),	-- Hellfire Ignition Switch
					i(152028),	-- Spurting Reaver Heart
					i(152039),	-- Viscous Reaver-Coolant
				})),
				e(1987, {	-- Felhounds of Sargeras
					["crs"] = {
						122477,	-- F'harg
						122135,	-- Shatug
					},
					["groups"] = {
						i(152000),	-- Shadowfused Chain Coif
						i(151973),	-- Collar of Null-Flame
						i(152004),	-- Pauldrons of the Soulburner
						i(151949),	-- Soul-Siphon Mantle
						i(151980),	-- Harness of Oppressing Dark
						i(151947),	-- Vestments of Enflamed Blight
						i(152012),	-- Molten Bite Handguards
						i(152021),	-- Flamelicked Girdle
						i(151983),	-- Vicious Flamepaws
						i(153544),	-- Eye of F'Harg
						i(152645),	-- Eye of Shatug
						i(151974),	-- Eye of Shatug — this one isn't in DJ, but it dropped in LFR on May 11, 2020 and was "Unsorted."
						i(151968),	-- Shadow-Singed Fang
						i(152056),	-- Corrupting Dewclaw
						i(152291),	-- Fraternal Fervor
						i(152027),	-- Gravitational Condensate
					},
				}),
				e(1997, {	-- Antoran High Command
					["crs"] = {
						122367,	-- Admiral Svirax
						122369,	-- Chief Engineer Ishkar
						122333,	-- General Erodus
					},
					["groups"] = {
						i(151985),	-- General Erodus' Tricorne
						i(152019),	-- Pauldrons of the Eternal Offensive
						i(152125),	-- Bearmantle Cloak
						i(152143),	-- Cloak of Chi'Ji
						i(152161),	-- Cloak of the Dashing Scoundrel
						i(152167),	-- Drape of Venerated Spirits
						i(152113),	-- Dreadwake Greatcloak
						i(152119),	-- Felreaper Drape
						i(152154),	-- Gilded Seraph's Drape
						i(152172),	-- Grim Inquisitor's Cloak
						i(152179),	-- Juggernaut Cloak
						i(152149),	-- Light's Vanguard Greatcloak
						i(152136),	-- Runebound Cape
						i(152131),	-- Serpentstalker Drape
						i(151994),	-- Fleet Commander's Hauberk
						i(151992),	-- Fiendish Logistician's Wristwraps
						i(151953),	-- Man'ari Pyromancer Cuffs
						i(152006),	-- Depraved Tactician's Waistguard
						i(152424),	-- Legwraps of the Seasoned Exterminator
						i(152011),	-- Eredar Warcouncil Sabatons
						i(151957),	-- Ishkar's Felshield Emitter
						i(151969),	-- Terminus Signaling Beacon
						i(152293),	-- Fasces of the Endless Legions
						i(152043),	-- Lightshield Amplifier
						i(152295),	-- Svirax's Grim Trophy
						i(152032),	-- Twisted Engineer's Fel-Infuser
					},
				}),
				e(2025, {	-- Eonar the Life-Bender
					["crs"] = {
						122500,	-- Essence of Eonar
						124445,	-- The Paraxis
					},
					["groups"] = {
						i(152681),	-- Headdress of Living Brambles
						i(152013),	-- Helmet of the Hidden Sanctuary
						i(152124),	-- Bearmantle Harness
						i(152112),	-- Dreadwake Bonecage
						i(152118),	-- Felreaper Vest
						i(152158),	-- Gilded Seraph's Robes
						i(152176),	-- Grim Inquisitor's Robes
						i(152178),	-- Juggernaut Breastplate
						i(152148),	-- Light's Vanguard  Breastplate
						i(152166),	-- Robes of Venerated Spirits
						i(152140),	-- Runebound Tunic
						i(152130),	-- Serpentstalker Tunic
						i(152142),	-- Tunic of Chi'Ji
						i(152160),	-- Vest of the Dashing Scoundrel
						i(152023),	-- Vambraces of  Life's Assurance
						i(151952),	-- Cord of Blossoming Petals
						i(152007),	-- Sash of the Gilded Rose
						i(151981),	-- Life-Bearing Footpads
						i(152688),	-- Loop of the Life-Binder
						i(151970),	-- Vitality Resonator
						i(152061),	-- Droplets of the Cleansing Storm
						i(152047),	-- Ironvine Thorn
						i(152044),	-- Spark of Everburning Light
						i(152054),	-- Unwavering Soul Essence
					},
				}),
				cr(122104, e(1985, {	-- Portal Keeper Hasabel
					i(152001),	-- Nexus Conductor's Headgear
					i(151965),	-- Vulcanarcore Pendant
					i(152008),	-- Reality-Splitting Wristguards
					i(151941),	-- Aranasi Shadow-Weaver's Gloves
					i(152086),	-- Grips of Hungering Shadows
					i(152020),	-- Nathrezim Battle Girdle
					i(151990),	-- Portal Keeper's Cincture
					i(151945),	-- Lady Dacidion's Silk Slippers
					i(152063),	-- Seal of the Portalmaster
					i(151976),	-- Riftworld Codex
					i(151958),	-- Tarratus Keystone
					i(152035),	-- Blazing Dreadsteed Horseshoe
					i(152057),	-- Crepuscular Skitterer Egg
					i(152049),	-- Fel-Engraved Handbell
					i(152041),	-- Sublimating Portal Frost
				})),
				cr(124158, e(2009, {	-- Imonar the Soulhunter
					i(151944),	-- Soulhunter's Cowl
					i(152416),	-- Shoulderguards of Indomitable Purpose
					i(151989),	-- Spaulders of the Relentless Tracker
					i(151938),	-- Drape of the Spirited Hunt
					i(152687),	-- Imonar's Demi-Gauntlets
					i(151999),	-- Preysnare Vicegrips
					i(152128),	-- Bearmantle Legguards
					i(152116),	-- Dreadwake Legplates
					i(152122),	-- Felreaper Leggings
					i(152157),	-- Gilded  Seraph's Leggings
					i(152175),	-- Grim Inquisitor's Leggings
					i(152182),	-- Juggernaut Legplates
					i(152146),	-- Leggings of Chi'Ji
					i(152170),	-- Leggings of Venerated Spirits
					i(152152),	-- Light's Vanguard Legplates
					i(152164),	-- Pants of the Dashing Scoundrel
					i(152139),	-- Runebound Leggings
					i(152134),	-- Serpentstalker Legguards
					i(151996),	-- Deft Soulhunter's Sabatons
					i(151939),	-- Whisperstep Runners
					i(152024),	-- Fallen Magi's Seerstone
					i(152042),	-- Hoarfrost-Beast Talon
					i(152050),	-- Mysterious Petrified Egg
					i(152045),	-- Venerated Puresoul Idol
				})),
				cr(122578, e(2004, {	-- Kin'garoth
					i(152014),	-- Titan-Subjugator's Visage
					i(151948),	-- Magma-Spattered Smock
					i(152280),	-- Scalding Shatterguards
					i(152126),	-- Bearmantle Paws
					i(152114),	-- Dreadwake Gauntlets
					i(152120),	-- Felreaper Gloves
					i(152155),	-- Gilded Seraph's Handwraps
					i(152162),	-- Gloves of the Dashing Scoundrel
					i(152168),	-- Gloves of Venerated Spirits
					i(152173),	-- Grim Inquisitor's Gloves
					i(152144),	-- Grips of Chi'Ji
					i(152180),	-- Juggernaut Gauntlets
					i(152150),	-- Light's Vanguard Gauntlets
					i(152137),	-- Runebound Gloves
					i(152132),	-- Serpentstalker Grips
					i(152412),	-- Depraved Machinist's Footpads
					i(152064),	-- Band of the Sargerite Smith
					i(151955),	-- Acrid Catalyst Injector
					i(151975),	-- Apocalypse Drive
					i(151963),	-- Forgefiend's Fabricator
					i(152048),	-- Decimator Crankshaft
					i(152051),	-- Eidolon of Life
					i(152055),	-- Kin'garoth's Oil-Sump
					i(152034),	-- Obliterator Propellant
				})),
				cr(122366, e(1983, {	-- Varimathras
					i(151966),	-- Riveted Choker of Delirium
					i(151995),	-- Robes of the Forsaken Dreadlord
					i(151979),	-- Vest of Unfathomable Anguish
					i(151954),	-- Blood-Drenched Bindings
					i(152281),	-- Varimathras' Shattered Manacles
					i(151991),	-- Belt of Fractured Sanity
					i(151942),	-- Cord of Surging Hysteria
					i(152015),	-- Greaves of Mercurial Alliegance
					i(151997),	-- Nathrezim Shade-Walkers
					i(151960),	-- Carafe of Searing Light
					i(151964),	-- Seeping Scourgewing
					i(152092),	-- Nathrezim Incisor
					i(152060),	-- Neuroshock Electrode
					i(152025),	-- Thu'rayan Lash
					i(152037),	-- Tormentor's Brand
				})),
				e(1986, {	-- The Coven of Shivarra
					["crs"] = {
						122467,	-- Asara, Mother of Night
						122469,	-- Diima, Mother of Gloom
						122468,	-- Noura, Mother of Flames
					},
					["groups"] = {
						i(152129),	-- Bearmantle Shoulders
						i(152117),	-- Dreadwake Pauldrons
						i(152123),	-- Felreaper Spaulders
						i(152159),	-- Gilded Seraph's Amice
						i(152177),	-- Grim Inquisitor's Shoulderguards
						i(152183),	-- Juggernaut Pauldrons
						i(152153),	-- Light's Vanguard Shoulderplates
						i(152147),	-- Meditation Spheres of Chi'Ji
						i(152171),	-- Pauldrons of Venerated Spirits
						i(152141),	-- Runebound Mantle
						i(152135),	-- Serpentstalker Mantle
						i(152165),	-- Shoulderpads of the Dashing Scoundrel
						i(152414),	-- Bracers of Wanton Morality
						i(151984),	-- Lurid Grips of the Obscene
						i(151946),	-- Fervent Twilight Legwraps
						i(152003),	-- Legguards of Numbing Glooom
						i(152010),	-- Burning Coven Sabatons
						i(152284),	-- Zealous Tormentor's Ring
						i(151977),	-- Dilma's Glacial Aegis
						i(152289),	-- Highfather's Machination
						i(151971),	-- Sheath of Asara
						i(152046),	-- Coven Prayer Bead
						i(152040),	-- Frigid Gloomstone
						i(152029),	-- Shivarran Cachabon
						i(152058),	-- Stormcaller's Fury
					},
				}),
				cr(121975, e(1984, {	-- Aggramar
					i(152127),	-- Bearmantle Headdress
					i(152163),	-- Cavalier Hat of the Dashing Scoundrel
					i(152145),	-- Douli of Chi'Ji
					i(152115),	-- Dreadwake Helm
					i(152121),	-- Felreaper Hood
					i(152156),	-- Gilded Seraph's Crown
					i(152174),	-- Grim Inquisitor's Death Mas
					i(152169),	-- Headdress of Venerated Spirits
					i(152181),	-- Juggernaut Helm
					i(152151),	-- Light's Vanguard Helm
					i(152138),	-- Runebound Collar
					i(152133),	-- Serpentstalker Helmet
					i(151950),	-- Fallen Avenger's Amice
					i(152062),	-- Greatcloak of the Dark Pantheon
					i(152018),	-- Breastplate of Molten Rebirth
					i(152022),	-- Grond-Father Girdle
					i(152683),	-- World-Ravager Waistguard
					i(152282),	-- Caustic Titanspite Legguards
					i(152684),	-- Greatboots of the Searing Tempest
					i(151940),	-- Sandals of the Reborn Colossus
					i(152093),	-- Gorshalach's Legacy
					i(151978),	-- Smoldering Titanguard
					i(152026),	-- Prototype Titan-Disc
					i(152038),	-- Pyretic Bronze Clasp
					i(152033),	-- Sliver of Corruption
					i(152052),	-- Sporemound Seedling
				})),
				cr(124828, e(2031, {	-- Argus the Unmaker
					i(152423),	-- Helm of the Awakened Soul
					i(152283),	-- Chain of the Unmaker
					i(152005),	-- Pauldrons of Colossal Burden
					i(152679),	-- Gambeson of Sargeras' Corruption
					i(151982),	-- Vest of Waning Life
					i(152680),	-- Handwraps of Inevitable Doom
					i(152686),	-- Nascent Deathbringer's Clutches
					i(151986),	-- Death-Enveloping Cincture
					i(152016),	-- Cosmos-Culling Legplates
					i(151972),	-- Sullied Seal of the Pantheon
					i(154172),	-- Aman'Thul's Vision
					i(154173),	-- Aggramar's Conviction
					i(154175),	-- Eonar's Compassion
					i(154174),	-- Golganneth's Vitality
					i(154176),	-- Khaz'goroth's Courage
					i(154177),	-- Norgannon's Prowess
					i(155831),	-- Pantheon's Blessing
					i(155853),	-- Conch of the Thunderer
					i(155848),	-- Condensed Blight Orb
					i(155847),	-- Cruor of the Avenger
					i(155849),	-- Flickering Ember of Rage
					i(155846),	-- Miniaturized Cosmic Beacon
					i(155855),	-- Mote of the Forgemaster
					i(155851),	-- Reorigination Spark
					i(155850),	-- Rime of the Spirit Realm
					i(155854),	-- Root of the Lifebinder
					i(155852),	-- Volatile Soul Fragment
				})),
			}),
			d(DIFFICULTY.RAID.HEROIC, {
				n(QUESTS, {
					q(49075, {	-- Antorus, the Burning Throne: Dark Passage (Heroic)
						["description"] = "Finishing this quest will grant you immediate access to Imonar the Soulhunter on Heroic difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Mythic version first.|r\n",
						["altQuests"] = { 49076 },	-- Antorus, the Burning Throne: Dark Passage (Mythic)
						["provider"] = { "n", 125512 },	-- High Exarch Turalyon
						["groups"] = { i(152906) },	-- Rune of Passage (QI!)
					}),
					q(49134, {	-- Antorus, the Burning Throne: The Heart of Argus (Heroic)
						["description"] = "Finishing this quest will grant you immediate access to Aggramar on Heroic difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Mythic version first.|r\n",
						["sourceQuests"] = { 49075 },	-- Antorus, the Burning Throne: Dark Passage (Heroic)
						["altQuests"] = { 49135 },	-- Antorus, the Burning Throne: The Heart of Argus (Mythic)
						["provider"] = { "n", 125682 },	-- Prophet Velen
						["groups"] = { i(152909) },	-- Sigil of the Dark Titan (QI!)
					}),
				}),
				n(ZONE_DROPS, {
					i(152084),	-- Gloves of Abhorrent Strategies
					i(152085),	-- Cuffs of the Viridian Flameweavers
					i(153018),	-- Corrupted Mantle of the Felseekers
					i(151993),	-- Leggings of the Sable Stalkers
					i(152087),	-- Sinuous Kerapteron Bindings
					i(152413),	-- Felflame Inferno Shoulderpads
					i(152088),	-- Horror Fiend-Scale Breastplate
					i(152089),	-- Wristguards of Ominous Forging
					i(152682),	-- Greaves of the Felblade Defenders
					i(152090),	-- Impenetrable Garothi Breastplate
					i(152091),	-- Wristguards of the Dark Keepers
					i(153019),	-- Hulking Demolisher Legplates
				}),
				cr(122450, e(1992, {	-- Garothi Worldbreaker
					i(151943),	-- Crown of Relentless Annihilation
					i(151988),	-- Shoulderpads of the Demonic Blitz
					i(151937),	-- Cloak of  the Burning Vanguard
					i(152017),	-- Soul-Tempered Chestplate
					i(151998),	-- Heedless Eradication Gauntlets
					i(151951),	-- Enhanced Worldscorcher Cinch
					i(152002),	-- Battalion-Shattering Leggings
					i(151987),	-- Breach-Blocker Legguards
					i(152009),	-- Doomwalker Warboots
					i(151956),	-- Garothi Feedback Conduit
					i(151962),	-- Prototype Personnel Decimator
					i(152031),	-- Doomfire Dynamo
					i(152036),	-- Hellfire Ignition Switch
					i(152028),	-- Spurting Reaver Heart
					i(152039),	-- Viscous Reaver-Coolant
				})),
				e(1987, {	-- Felhounds of Sargeras
					["crs"] = {
						122477,	-- F'harg
						122135,	-- Shatug
					},
					["groups"] = {
						i(152000),	-- Shadowfused Chain Coif
						i(151973),	-- Collar of Null-Flame
						i(152004),	-- Pauldrons of the Soulburner
						i(151949),	-- Soul-Siphon Mantle
						i(151980),	-- Harness of Oppressing Dark
						i(151947),	-- Vestments of Enflamed Blight
						i(152012),	-- Molten Bite Handguards
						i(152021),	-- Flamelicked Girdle
						i(151983),	-- Vicious Flamepaws
						i(153544),	-- Eye of F'Harg
						i(152645),	-- Eye of Shatug
						i(151974),	-- Eye of Shatug — this one isn't in DJ, but it dropped in LFR on May 11, 2020 and was "Unsorted."
						i(151968),	-- Shadow-Singed Fang
						i(152056),	-- Corrupting Dewclaw
						i(152291),	-- Fraternal Fervor
						i(152027),	-- Gravitational Condensate
						i(152059),	-- Whistling Ulna
					},
				}),
				e(1997, {	-- Antoran High Command
					["crs"] = {
						122367,	-- Admiral Svirax
						122369,	-- Chief Engineer Ishkar
						122333,	-- General Erodus
					},
					["groups"] = {
						i(151985),	-- General Erodus' Tricorne
						i(152019),	-- Pauldrons of the Eternal Offensive
						i(152125),	-- Bearmantle Cloak
						i(152143),	-- Cloak of Chi'Ji
						i(152161),	-- Cloak of the Dashing Scoundrel
						i(152167),	-- Drape of Venerated Spirits
						i(152113),	-- Dreadwake Greatcloak
						i(152119),	-- Felreaper Drape
						i(152154),	-- Gilded Seraph's Drape
						i(152172),	-- Grim Inquisitor's Cloak
						i(152179),	-- Juggernaut Cloak
						i(152149),	-- Light's Vanguard Greatcloak
						i(152136),	-- Runebound Cape
						i(152131),	-- Serpentstalker Drape
						i(151994),	-- Fleet Commander's Hauberk
						i(151992),	-- Fiendish Logistician's Wristwraps
						i(151953),	-- Man'ari Pyromancer Cuffs
						i(152006),	-- Depraved Tactician's Waistguard
						i(152424),	-- Legwraps of the Seasoned Exterminator
						i(152011),	-- Eredar Warcouncil Sabatons
						i(151957),	-- Ishkar's Felshield Emitter
						i(151969),	-- Terminus Signaling Beacon
						i(152293),	-- Fasces of the Endless Legions
						i(152043),	-- Lightshield Amplifier
						i(152295),	-- Svirax's Grim Trophy
						i(152032),	-- Twisted Engineer's Fel-Infuser
					},
				}),
				e(2025, {	-- Eonar the Life-Bender
					["crs"] = {
						122500,	-- Essence of Eonar
						124445,	-- The Paraxis
					},
					["groups"] = {
						i(152681),	-- Headdress of Living Brambles
						i(152013),	-- Helmet of the Hidden Sanctuary
						i(152124),	-- Bearmantle Harness
						i(152112),	-- Dreadwake Bonecage
						i(152118),	-- Felreaper Vest
						i(152158),	-- Gilded Seraph's Robes
						i(152176),	-- Grim Inquisitor's Robes
						i(152178),	-- Juggernaut Breastplate
						i(152148),	-- Light's Vanguard  Breastplate
						i(152166),	-- Robes of Venerated Spirits
						i(152140),	-- Runebound Tunic
						i(152130),	-- Serpentstalker Tunic
						i(152142),	-- Tunic of Chi'Ji
						i(152160),	-- Vest of the Dashing Scoundrel
						i(152023),	-- Vambraces of  Life's Assurance
						i(151952),	-- Cord of Blossoming Petals
						i(152007),	-- Sash of the Gilded Rose
						i(151981),	-- Life-Bearing Footpads
						i(152688),	-- Loop of the Life-Binder
						i(151970),	-- Vitality Resonator
						i(152061),	-- Droplets of the Cleansing Storm
						i(152047),	-- Ironvine Thorn
						i(152044),	-- Spark of Everburning Light
						i(152054),	-- Unwavering Soul Essence
					},
				}),
				cr(122104, e(1985, {	-- Portal Keeper Hasabel
					i(152001),	-- Nexus Conductor's Headgear
					i(151965),	-- Vulcanarcore Pendant
					i(152008),	-- Reality-Splitting Wristguards
					i(151941),	-- Aranasi Shadow-Weaver's Gloves
					i(152086),	-- Grips of Hungering Shadows
					i(152020),	-- Nathrezim Battle Girdle
					i(151990),	-- Portal Keeper's Cincture
					i(151945),	-- Lady Dacidion's Silk Slippers
					i(152063),	-- Seal of the Portalmaster
					i(151976),	-- Riftworld Codex
					i(151958),	-- Tarratus Keystone
					i(152035),	-- Blazing Dreadsteed Horseshoe
					i(152057),	-- Crepuscular Skitterer Egg
					i(152049),	-- Fel-Engraved Handbell
					i(152041),	-- Sublimating Portal Frost
				})),
				cr(124158, e(2009, {	-- Imonar the Soulhunter
					i(151944),	-- Soulhunter's Cowl
					i(152416),	-- Shoulderguards of Indomitable Purpose
					i(151989),	-- Spaulders of the Relentless Tracker
					i(151938),	-- Drape of the Spirited Hunt
					i(152687),	-- Imonar's Demi-Gauntlets
					i(151999),	-- Preysnare Vicegrips
					i(152128),	-- Bearmantle Legguards
					i(152116),	-- Dreadwake Legplates
					i(152122),	-- Felreaper Leggings
					i(152157),	-- Gilded  Seraph's Leggings
					i(152175),	-- Grim Inquisitor's Leggings
					i(152182),	-- Juggernaut Legplates
					i(152146),	-- Leggings of Chi'Ji
					i(152170),	-- Leggings of Venerated Spirits
					i(152152),	-- Light's Vanguard Legplates
					i(152164),	-- Pants of the Dashing Scoundrel
					i(152139),	-- Runebound Leggings
					i(152134),	-- Serpentstalker Legguards
					i(151996),	-- Deft Soulhunter's Sabatons
					i(151939),	-- Whisperstep Runners
					i(152024),	-- Fallen Magi's Seerstone
					i(152042),	-- Hoarfrost-Beast Talon
					i(152050),	-- Mysterious Petrified Egg
					i(152045),	-- Venerated Puresoul Idol
				})),
				cr(122578, e(2004, {	-- Kin'garoth
					i(152014),	-- Titan-Subjugator's Visage
					i(151948),	-- Magma-Spattered Smock
					i(152280),	-- Scalding Shatterguards
					i(152126),	-- Bearmantle Paws
					i(152114),	-- Dreadwake Gauntlets
					i(152120),	-- Felreaper Gloves
					i(152155),	-- Gilded Seraph's Handwraps
					i(152162),	-- Gloves of the Dashing Scoundrel
					i(152168),	-- Gloves of Venerated Spirits
					i(152173),	-- Grim Inquisitor's Gloves
					i(152144),	-- Grips of Chi'Ji
					i(152180),	-- Juggernaut Gauntlets
					i(152150),	-- Light's Vanguard Gauntlets
					i(152137),	-- Runebound Gloves
					i(152132),	-- Serpentstalker Grips
					i(152412),	-- Depraved Machinist's Footpads
					i(152064),	-- Band of the Sargerite Smith
					i(151955),	-- Acrid Catalyst Injector
					i(151975),	-- Apocalypse Drive
					i(151963),	-- Forgefiend's Fabricator
					i(152048),	-- Decimator Crankshaft
					i(152051),	-- Eidolon of Life
					i(152055),	-- Kin'garoth's Oil-Sump
					i(152034),	-- Obliterator Propellant
				})),
				cr(122366, e(1983, {	-- Varimathras
					i(151966),	-- Riveted Choker of Delirium
					i(151995),	-- Robes of the Forsaken Dreadlord
					i(151979),	-- Vest of Unfathomable Anguish
					i(151954),	-- Blood-Drenched Bindings
					i(152281),	-- Varimathras' Shattered Manacles
					i(151991),	-- Belt of Fractured Sanity
					i(151942),	-- Cord of Surging Hysteria
					i(152015),	-- Greaves of Mercurial Alliegance
					i(151997),	-- Nathrezim Shade-Walkers
					i(151960),	-- Carafe of Searing Light
					i(151964),	-- Seeping Scourgewing
					i(152092),	-- Nathrezim Incisor
					i(152060),	-- Neuroshock Electrode
					i(152025),	-- Thu'rayan Lash
					i(152037),	-- Tormentor's Brand
				})),
				e(1986, {	-- The Coven of Shivarra
					["crs"] = {
						122467,	-- Asara, Mother of Night
						122469,	-- Diima, Mother of Gloom
						122468,	-- Noura, Mother of Flames
					},
					["groups"] = {
						i(152129),	-- Bearmantle Shoulders
						i(152117),	-- Dreadwake Pauldrons
						i(152123),	-- Felreaper Spaulders
						i(152159),	-- Gilded Seraph's Amice
						i(152177),	-- Grim Inquisitor's Shoulderguards
						i(152183),	-- Juggernaut Pauldrons
						i(152153),	-- Light's Vanguard Shoulderplates
						i(152147),	-- Meditation Spheres of Chi'Ji
						i(152171),	-- Pauldrons of Venerated Spirits
						i(152141),	-- Runebound Mantle
						i(152135),	-- Serpentstalker Mantle
						i(152165),	-- Shoulderpads of the Dashing Scoundrel
						i(152414),	-- Bracers of Wanton Morality
						i(151984),	-- Lurid Grips of the Obscene
						i(151946),	-- Fervent Twilight Legwraps
						i(152003),	-- Legguards of Numbing Glooom
						i(152010),	-- Burning Coven Sabatons
						i(152284),	-- Zealous Tormentor's Ring
						i(151977),	-- Dilma's Glacial Aegis
						i(152289),	-- Highfather's Machination
						i(151971),	-- Sheath of Asara
						i(152046),	-- Coven Prayer Bead
						i(152040),	-- Frigid Gloomstone
						i(152029),	-- Shivarran Cachabon
						i(152058),	-- Stormcaller's Fury
					},
				}),
				cr(121975, e(1984, {	-- Aggramar
					i(152127),	-- Bearmantle Headdress
					i(152163),	-- Cavalier Hat of the Dashing Scoundrel
					i(152145),	-- Douli of Chi'Ji
					i(152115),	-- Dreadwake Helm
					i(152121),	-- Felreaper Hood
					i(152156),	-- Gilded Seraph's Crown
					i(152174),	-- Grim Inquisitor's Death Mas
					i(152169),	-- Headdress of Venerated Spirits
					i(152181),	-- Juggernaut Helm
					i(152151),	-- Light's Vanguard Helm
					i(152138),	-- Runebound Collar
					i(152133),	-- Serpentstalker Helmet
					i(151950),	-- Fallen Avenger's Amice
					i(152062),	-- Greatcloak of the Dark Pantheon
					i(152018),	-- Breastplate of Molten Rebirth
					i(152022),	-- Grond-Father Girdle
					i(152683),	-- World-Ravager Waistguard
					i(152282),	-- Caustic Titanspite Legguards
					i(152684),	-- Greatboots of the Searing Tempest
					i(151940),	-- Sandals of the Reborn Colossus
					i(152093),	-- Gorshalach's Legacy
					i(151978),	-- Smoldering Titanguard
					i(152026),	-- Prototype Titan-Disc
					i(152038),	-- Pyretic Bronze Clasp
					i(152033),	-- Sliver of Corruption
					i(152052),	-- Sporemound Seedling
				})),
				cr(124828, e(2031, {	-- Argus the Unmaker
					ach(12110, {	-- Ahead of the Curve: Argus the Unmaker
						["timeline"] = { ADDED_7_3_0, REMOVED_8_0_1 },
					}),
					i(152900, {	-- Blood of the Unmaker
						["timeline"] = { ADDED_7_3_0, REMOVED_8_0_1 },
					}),
					i(152423),	-- Helm of the Awakened Soul
					i(152283),	-- Chain of the Unmaker
					i(152005),	-- Pauldrons of Colossal Burden
					i(152679),	-- Gambeson of Sargeras' Corruption
					i(151982),	-- Vest of Waning Life
					i(152680),	-- Handwraps of Inevitable Doom
					i(152686),	-- Nascent Deathbringer's Clutches
					i(151986),	-- Death-Enveloping Cincture
					i(152016),	-- Cosmos-Culling Legplates
					i(151972),	-- Sullied Seal of the Pantheon
					i(154172),	-- Aman'Thul's Vision
					i(154173),	-- Aggramar's Conviction
					i(154175),	-- Eonar's Compassion
					i(154174),	-- Golganneth's Vitality
					i(154176),	-- Khaz'goroth's Courage
					i(154177),	-- Norgannon's Prowess
					i(155831),	-- Pantheon's Blessing
					i(155853),	-- Conch of the Thunderer
					i(155848),	-- Condensed Blight Orb
					i(155847),	-- Cruor of the Avenger
					i(155849),	-- Flickering Ember of Rage
					i(155846),	-- Miniaturized Cosmic Beacon
					i(155855),	-- Mote of the Forgemaster
					i(155851),	-- Reorigination Spark
					i(155850),	-- Rime of the Spirit Realm
					i(155854),	-- Root of the Lifebinder
					i(155852),	-- Volatile Soul Fragment
				})),
			}),
			d(DIFFICULTY.RAID.MYTHIC, {
				n(QUESTS, {
					q(49076, {	-- Antorus, the Burning Throne: Dark Passage (Mythic)
						["description"] = "Finishing this quest will grant you immediate access to Imonar the Soulhunter on Mythic difficulty each week.\n",
						["provider"] = { "n", 125512 },	-- High Exarch Turalyon
						["groups"] = { i(152907) },	-- Rune of Passage (QI!)
					}),
					q(49135, {	-- Antorus, the Burning Throne: The Heart of Argus (Mythic)
						["description"] = "Finishing this quest will grant you immediate access to Aggramar on Mythic difficulty each week.\n",
						["sourceQuests"] = { 49076 },	-- Antorus, the Burning Throne: Dark Passage (Mythic)
						["provider"] = { "n", 125682 },	-- Prophet Velen
						["groups"] = { i(152910) },	-- Sigil of the Dark Titan (QI!)
					}),
				}),
				n(ZONE_DROPS, {
					i(152084),	-- Gloves of Abhorrent Strategies
					i(152085),	-- Cuffs of the Viridian Flameweavers
					i(153018),	-- Corrupted Mantle of the Felseekers
					i(151993),	-- Leggings of the Sable Stalkers
					i(152087),	-- Sinuous Kerapteron Bindings
					i(152413),	-- Felflame Inferno Shoulderpads
					i(152088),	-- Horror Fiend-Scale Breastplate
					i(152089),	-- Wristguards of Ominous Forging
					i(152682),	-- Greaves of the Felblade Defenders
					i(152090),	-- Impenetrable Garothi Breastplate
					i(152091),	-- Wristguards of the Dark Keepers
					i(153019),	-- Hulking Demolisher Legplates
				}),
				cr(122450, e(1992, {	-- Garothi Worldbreaker
					ach(11992),	-- Mythic: Garothi Worldbreaker
					i(151943),	-- Crown of Relentless Annihilation
					i(151988),	-- Shoulderpads of the Demonic Blitz
					i(151937),	-- Cloak of  the Burning Vanguard
					i(152017),	-- Soul-Tempered Chestplate
					i(151998),	-- Heedless Eradication Gauntlets
					i(151951),	-- Enhanced Worldscorcher Cinch
					i(152002),	-- Battalion-Shattering Leggings
					i(151987),	-- Breach-Blocker Legguards
					i(152009),	-- Doomwalker Warboots
					i(151956),	-- Garothi Feedback Conduit
					i(151962),	-- Prototype Personnel Decimator
					i(152031),	-- Doomfire Dynamo
					i(152036),	-- Hellfire Ignition Switch
					i(152028),	-- Spurting Reaver Heart
					i(152039),	-- Viscous Reaver-Coolant
				})),
				e(1987, {	-- Felhounds of Sargeras
					["crs"] = {
						122477,	-- F'harg
						122135,	-- Shatug
					},
					["groups"] = {
						ach(11993),	-- Mythic: Hounds of Sargeras
						i(152000),	-- Shadowfused Chain Coif
						i(151973),	-- Collar of Null-Flame
						i(152004),	-- Pauldrons of the Soulburner
						i(151949),	-- Soul-Siphon Mantle
						i(151980),	-- Harness of Oppressing Dark
						i(151947),	-- Vestments of Enflamed Blight
						i(152012),	-- Molten Bite Handguards
						i(152021),	-- Flamelicked Girdle
						i(151983),	-- Vicious Flamepaws
						i(153544),	-- Eye of F'Harg
						i(152645),	-- Eye of Shatug
						i(151974),	-- Eye of Shatug — this one isn't in DJ, but it dropped in LFR on May 11, 2020 and was "Unsorted."
						i(151968),	-- Shadow-Singed Fang
						i(152056),	-- Corrupting Dewclaw
						i(152291),	-- Fraternal Fervor
						i(152027),	-- Gravitational Condensate
					},
				}),
				e(1997, {	-- Antoran High Command
					["crs"] = {
						122367,	-- Admiral Svirax
						122369,	-- Chief Engineer Ishkar
						122333,	-- General Erodus
					},
					["groups"] = {
						ach(11994),	-- Mythic: Antoran High Command
						i(151985),	-- General Erodus' Tricorne
						i(152019),	-- Pauldrons of the Eternal Offensive
						i(152125),	-- Bearmantle Cloak
						i(152143),	-- Cloak of Chi'Ji
						i(152161),	-- Cloak of the Dashing Scoundrel
						i(152167),	-- Drape of Venerated Spirits
						i(152113),	-- Dreadwake Greatcloak
						i(152119),	-- Felreaper Drape
						i(152154),	-- Gilded Seraph's Drape
						i(152172),	-- Grim Inquisitor's Cloak
						i(152179),	-- Juggernaut Cloak
						i(152149),	-- Light's Vanguard Greatcloak
						i(152136),	-- Runebound Cape
						i(152131),	-- Serpentstalker Drape
						i(151994),	-- Fleet Commander's Hauberk
						i(151992),	-- Fiendish Logistician's Wristwraps
						i(151953),	-- Man'ari Pyromancer Cuffs
						i(152006),	-- Depraved Tactician's Waistguard
						i(152424),	-- Legwraps of the Seasoned Exterminator
						i(152011),	-- Eredar Warcouncil Sabatons
						i(151957),	-- Ishkar's Felshield Emitter
						i(151969),	-- Terminus Signaling Beacon
						i(152293),	-- Fasces of the Endless Legions
						i(152043),	-- Lightshield Amplifier
						i(152295),	-- Svirax's Grim Trophy
						i(152032),	-- Twisted Engineer's Fel-Infuser
					},
				}),
				e(2025, {	-- Eonar the Life-Bender
					["crs"] = {
						122500,	-- Essence of Eonar
						124445,	-- The Paraxis
					},
					["groups"] = {
						ach(11996),	-- Mythic: Eonar
						i(152681),	-- Headdress of Living Brambles
						i(152013),	-- Helmet of the Hidden Sanctuary
						i(152124),	-- Bearmantle Harness
						i(152112),	-- Dreadwake Bonecage
						i(152118),	-- Felreaper Vest
						i(152158),	-- Gilded Seraph's Robes
						i(152176),	-- Grim Inquisitor's Robes
						i(152178),	-- Juggernaut Breastplate
						i(152148),	-- Light's Vanguard  Breastplate
						i(152166),	-- Robes of Venerated Spirits
						i(152140),	-- Runebound Tunic
						i(152130),	-- Serpentstalker Tunic
						i(152142),	-- Tunic of Chi'Ji
						i(152160),	-- Vest of the Dashing Scoundrel
						i(152023),	-- Vambraces of  Life's Assurance
						i(151952),	-- Cord of Blossoming Petals
						i(152007),	-- Sash of the Gilded Rose
						i(151981),	-- Life-Bearing Footpads
						i(152688),	-- Loop of the Life-Binder
						i(151970),	-- Vitality Resonator
						i(152061),	-- Droplets of the Cleansing Storm
						i(152047),	-- Ironvine Thorn
						i(152044),	-- Spark of Everburning Light
						i(152054),	-- Unwavering Soul Essence
					},
				}),
				cr(122104, e(1985, {	-- Portal Keeper Hasabel
					ach(11995),	-- Mythic: Portal Keeper Hasabel
					i(152001),	-- Nexus Conductor's Headgear
					i(151965),	-- Vulcanarcore Pendant
					i(152008),	-- Reality-Splitting Wristguards
					i(151941),	-- Aranasi Shadow-Weaver's Gloves
					i(152086),	-- Grips of Hungering Shadows
					i(152020),	-- Nathrezim Battle Girdle
					i(151990),	-- Portal Keeper's Cincture
					i(151945),	-- Lady Dacidion's Silk Slippers
					i(152063),	-- Seal of the Portalmaster
					i(151976),	-- Riftworld Codex
					i(151958),	-- Tarratus Keystone
					i(152035),	-- Blazing Dreadsteed Horseshoe
					i(152057),	-- Crepuscular Skitterer Egg
					i(152049),	-- Fel-Engraved Handbell
					i(152041),	-- Sublimating Portal Frost
				})),
				cr(124158, e(2009, {	-- Imonar the Soulhunter
					ach(11997),	-- Mythic: Imonar the Soulhunter
					i(151944),	-- Soulhunter's Cowl
					i(152416),	-- Shoulderguards of Indomitable Purpose
					i(151989),	-- Spaulders of the Relentless Tracker
					i(151938),	-- Drape of the Spirited Hunt
					i(152687),	-- Imonar's Demi-Gauntlets
					i(151999),	-- Preysnare Vicegrips
					i(152128),	-- Bearmantle Legguards
					i(152116),	-- Dreadwake Legplates
					i(152122),	-- Felreaper Leggings
					i(152157),	-- Gilded  Seraph's Leggings
					i(152175),	-- Grim Inquisitor's Leggings
					i(152182),	-- Juggernaut Legplates
					i(152146),	-- Leggings of Chi'Ji
					i(152170),	-- Leggings of Venerated Spirits
					i(152152),	-- Light's Vanguard Legplates
					i(152164),	-- Pants of the Dashing Scoundrel
					i(152139),	-- Runebound Leggings
					i(152134),	-- Serpentstalker Legguards
					i(151996),	-- Deft Soulhunter's Sabatons
					i(151939),	-- Whisperstep Runners
					i(152024),	-- Fallen Magi's Seerstone
					i(152042),	-- Hoarfrost-Beast Talon
					i(152050),	-- Mysterious Petrified Egg
					i(152045),	-- Venerated Puresoul Idol
				})),
				cr(122578, e(2004, {	-- Kin'garoth
					ach(11998),	-- Mythic: Kin'garoth
					i(152014),	-- Titan-Subjugator's Visage
					i(151948),	-- Magma-Spattered Smock
					i(152280),	-- Scalding Shatterguards
					i(152126),	-- Bearmantle Paws
					i(152114),	-- Dreadwake Gauntlets
					i(152120),	-- Felreaper Gloves
					i(152155),	-- Gilded Seraph's Handwraps
					i(152162),	-- Gloves of the Dashing Scoundrel
					i(152168),	-- Gloves of Venerated Spirits
					i(152173),	-- Grim Inquisitor's Gloves
					i(152144),	-- Grips of Chi'Ji
					i(152180),	-- Juggernaut Gauntlets
					i(152150),	-- Light's Vanguard Gauntlets
					i(152137),	-- Runebound Gloves
					i(152132),	-- Serpentstalker Grips
					i(152412),	-- Depraved Machinist's Footpads
					i(152064),	-- Band of the Sargerite Smith
					i(151955),	-- Acrid Catalyst Injector
					i(151975),	-- Apocalypse Drive
					i(151963),	-- Forgefiend's Fabricator
					i(152048),	-- Decimator Crankshaft
					i(152051),	-- Eidolon of Life
					i(152055),	-- Kin'garoth's Oil-Sump
					i(152034),	-- Obliterator Propellant
				})),
				cr(122366, e(1983, {	-- Varimathras
					ach(11999),	-- Mythic: Varimathras
					i(151966),	-- Riveted Choker of Delirium
					i(151995),	-- Robes of the Forsaken Dreadlord
					i(151979),	-- Vest of Unfathomable Anguish
					i(151954),	-- Blood-Drenched Bindings
					i(152281),	-- Varimathras' Shattered Manacles
					i(151991),	-- Belt of Fractured Sanity
					i(151942),	-- Cord of Surging Hysteria
					i(152015),	-- Greaves of Mercurial Alliegance
					i(151997),	-- Nathrezim Shade-Walkers
					i(151960),	-- Carafe of Searing Light
					i(151964),	-- Seeping Scourgewing
					i(152092),	-- Nathrezim Incisor
					i(152060),	-- Neuroshock Electrode
					i(152025),	-- Thu'rayan Lash
					i(152037),	-- Tormentor's Brand
				})),
				e(1986, {	-- The Coven of Shivarra
					["crs"] = {
						122467,	-- Asara, Mother of Night
						122469,	-- Diima, Mother of Gloom
						122468,	-- Noura, Mother of Flames
					},
					["groups"] = {
						ach(12000),	-- Mythic: The Coven of Shivarra
						i(152129),	-- Bearmantle Shoulders
						i(152117),	-- Dreadwake Pauldrons
						i(152123),	-- Felreaper Spaulders
						i(152159),	-- Gilded Seraph's Amice
						i(152177),	-- Grim Inquisitor's Shoulderguards
						i(152183),	-- Juggernaut Pauldrons
						i(152153),	-- Light's Vanguard Shoulderplates
						i(152147),	-- Meditation Spheres of Chi'Ji
						i(152171),	-- Pauldrons of Venerated Spirits
						i(152141),	-- Runebound Mantle
						i(152135),	-- Serpentstalker Mantle
						i(152165),	-- Shoulderpads of the Dashing Scoundrel
						i(152414),	-- Bracers of Wanton Morality
						i(151984),	-- Lurid Grips of the Obscene
						i(151946),	-- Fervent Twilight Legwraps
						i(152003),	-- Legguards of Numbing Glooom
						i(152010),	-- Burning Coven Sabatons
						i(152284),	-- Zealous Tormentor's Ring
						i(151977),	-- Dilma's Glacial Aegis
						i(152289),	-- Highfather's Machination
						i(151971),	-- Sheath of Asara
						i(152046),	-- Coven Prayer Bead
						i(152040),	-- Frigid Gloomstone
						i(152029),	-- Shivarran Cachabon
						i(152058),	-- Stormcaller's Fury
					},
				}),
				cr(121975, e(1984, {	-- Aggramar
					ach(12001),	-- Mythic: Aggramar
					i(152127),	-- Bearmantle Headdress
					i(152163),	-- Cavalier Hat of the Dashing Scoundrel
					i(152145),	-- Douli of Chi'Ji
					i(152115),	-- Dreadwake Helm
					i(152121),	-- Felreaper Hood
					i(152156),	-- Gilded Seraph's Crown
					i(152174),	-- Grim Inquisitor's Death Mas
					i(152169),	-- Headdress of Venerated Spirits
					i(152181),	-- Juggernaut Helm
					i(152151),	-- Light's Vanguard Helm
					i(152138),	-- Runebound Collar
					i(152133),	-- Serpentstalker Helmet
					i(151950),	-- Fallen Avenger's Amice
					i(152062),	-- Greatcloak of the Dark Pantheon
					i(152018),	-- Breastplate of Molten Rebirth
					i(152022),	-- Grond-Father Girdle
					i(152683),	-- World-Ravager Waistguard
					i(152282),	-- Caustic Titanspite Legguards
					i(152684),	-- Greatboots of the Searing Tempest
					i(151940),	-- Sandals of the Reborn Colossus
					i(152093),	-- Gorshalach's Legacy
					i(151978),	-- Smoldering Titanguard
					i(152026),	-- Prototype Titan-Disc
					i(152038),	-- Pyretic Bronze Clasp
					i(152033),	-- Sliver of Corruption
					i(152052),	-- Sporemound Seedling
				})),
				cr(124828, e(2031, {	-- Argus the Unmaker
					ach(12111, {	-- Cutting Edge: Argus the Unmaker
						["timeline"] = { ADDED_7_3_0, REMOVED_8_0_1 },
					}),
					ach(12258, {	-- Realm First! Argus the Unmaker
						["timeline"] = { ADDED_7_3_0, REMOVED_8_0_1 },
					}),
					ach(12002, {	-- Mythic: Argus the Unmaker
						title(364),		-- Titanslayer
					}),
					ach(12113),	-- Mythic: Argus the Unmaker Guild Run
					i(152789),	-- Shackled Ur'zul (MOUNT!)
					i(155880),	-- Scythe of the Unmaker [RED]
					i(152423),	-- Helm of the Awakened Soul
					i(152283),	-- Chain of the Unmaker
					i(152005),	-- Pauldrons of Colossal Burden
					i(152679),	-- Gambeson of Sargeras' Corruption
					i(151982),	-- Vest of Waning Life
					i(152680),	-- Handwraps of Inevitable Doom
					i(152686),	-- Nascent Deathbringer's Clutches
					i(151986),	-- Death-Enveloping Cincture
					i(152016),	-- Cosmos-Culling Legplates
					i(151972),	-- Sullied Seal of the Pantheon
					i(154172),	-- Aman'Thul's Vision
					i(154173),	-- Aggramar's Conviction
					i(154175),	-- Eonar's Compassion
					i(154174),	-- Golganneth's Vitality
					i(154176),	-- Khaz'goroth's Courage
					i(154177),	-- Norgannon's Prowess
					i(155831),	-- Pantheon's Blessing
					i(155853),	-- Conch of the Thunderer
					i(155848),	-- Condensed Blight Orb
					i(155847),	-- Cruor of the Avenger
					i(155849),	-- Flickering Ember of Rage
					i(155846),	-- Miniaturized Cosmic Beacon
					i(155855),	-- Mote of the Forgemaster
					i(155851),	-- Reorigination Spark
					i(155850),	-- Rime of the Spirit Realm
					i(155854),	-- Root of the Lifebinder
					i(155852),	-- Volatile Soul Fragment
				})),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {
		inst(946, {
			q(45460),	-- Garothi Worldbreaker
			q(48420),	-- Garothi Worldbreaker (triggered at the same time as above)
			q(45461),	-- Felhounds of Sargeras
			q(48422),	-- Felhounds of Sargeras (triggered at the same time as above)
			q(45462),	-- Antoran High Command
			q(48423),	-- Antoran High Command (triggered at the same time as above)
			q(45464),	-- Eonar
			q(48425),	-- Eonar (triggered at the same time as above)
			q(49357),	-- Eonar (triggered at the same time as above)
			q(49358),	-- Invasion battle - first kill
			q(49359),	-- Eonar - triggered after kill
			q(49360),	-- Eonar Mythic - first Kill
			q(45463),	-- Portal Keeper Hasabel
			q(48424),	-- Portal Keeper Hasabel (triggered at the same time as above)
			q(45465),	-- Imonar
			q(48426),	-- Imonar (triggered at the same time as above)
			q(45466),	-- Kingaroth
			q(48427),	-- Kingaroth (triggered at the same time as above)
			q(45467),	-- Varimathras
			q(48428),	-- Varimathras (triggered at the same time as above)
			q(45468),	-- The Coven of Shivarra
			q(48429),	-- The Coven of Shivarra (triggered at the same time as above)
			q(45469),	-- Aggramar
			q(48430),	-- Aggramar (triggered at the same time as above)
			q(49180),	-- Aggramar (triggered at the same time as above)
			q(48431),	-- Argus
			q(49184),	-- Argus (triggered at the same time as above)
			q(49361),	-- Argus (triggered at the same time as above)
			q(49363),	-- Argus Heroic
			q(49475),	-- Argus Heroic (triggered at the same time as above)
			q(49364),	-- Argus Mythic - first kill
			q(49717),	-- Argus Mythic - first kill
			q(49771),	-- Argus Mythic - first kill?
			q(49718),	-- Argus - first kill - received "Khaz'goroth's Courage" (itemID 154176 / "Aggramar's Conviction" (itemID 154173)
			q(49362),	-- full raid cleared
			q(48570),	-- Tracking Quest - triggers when the door opens to Kin'garoth
		}),
	})),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {
		inst(946, {
			q(77246, {["timeline"]={ADDED_10_1_5}}),	-- after <Channel the power of your weapon into the gateway.> for Grimoire of the Xorothian Felhunter (itemID 208050)
		}),
	})),
});
