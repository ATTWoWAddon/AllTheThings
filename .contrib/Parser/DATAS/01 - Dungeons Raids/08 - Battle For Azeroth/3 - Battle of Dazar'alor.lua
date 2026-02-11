-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_1_0 } }, {
	inst(1176, {	-- Battle of Dazar'alor
		["coords"] = {
			{ 70.5, 35.3, BORALUS },	-- Alliance
			{ 38.8, 2.40, DAZARALOR },	-- Horde
		},
		["maps"] = {
			1352,	-- Port of Zandalar
			1357,	-- The Zocalo
			1353,	-- Halls of Opulence
			1354,	-- Loa's Sanctum
			1356,	-- Walk of Kings
			1358,	-- Heart of the Empire
			1364,	-- The Great Sea
			1367,	-- Boralus
		},
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(40961, {	-- Batle of Dazar'alor
					["timeline"] = { ADDED_11_0_7 },
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						13290,	-- Death's Bargain
						13289,	-- Defense of Dazar'alor
						13287,	-- Empire's Fall
						13288,	-- Might of the Alliance
						13286,	-- Siege of Dazar'alor
						13291,	-- Victory or Death
					}},
				}),
				ach(13385),	-- Daz'aling Attire
				ach(13315, {	-- Glory of the Dazar'alor Raider
					["sym"] = {{"meta_achievement",
						13316,	-- Can I Get a Hek Hek Hek Yeah?
						13325,	-- Walk the Dinosaur
						13345,	-- Praise the Sunflower
						13383,	-- Barrel of Monkeys
						13410,	-- Snow Fun Allowed
						13401,	-- I Got Next!
						13431,	-- Hidden Dragon
						13430,	-- De Lurker Be'loa
						13425,	-- We Got Spirit, How About You?
					}},
					["groups"] = {
						i(166539),	-- Dazar'alor Windreaver (MOUNT!)
					},
				}),
				ach(13319),	-- Battle of Dazar'alor Guild Run (H)
				ach(13320),	-- Battle of Dazar'alor Guild Run (A)
				-- TODO: this requires further revision....
				a(ach(13286)),	-- Siege of Dazar'alor (A)
				h(ach(13289)),	-- Defense of Dazar'alor (H)
				a(ach(13287)),	-- Empire's Fall (A)
				h(ach(13290)),	-- Death's Bargain (H)
				a(ach(13288)),	-- Might of the Alliance (A)
				h(ach(13291)),	-- Victory or Death (H)
			}),
			n(COMMON_BOSS_DROPS, {
				i(165703),	-- Breath of Bwonsamdi
				i(165693),	-- Vantus Rune Technique: Battle of Dazar'alor [Rank 1] (RECIPE!)
				i(165694),	-- Vantus Rune Technique: Battle of Dazar'alor [Rank 2] (RECIPE!)
				i(165695),	-- Vantus Rune Technique: Battle of Dazar'alor [Rank 3] (RECIPE!)
			}),
			d(DIFFICULTY.RAID.MULTI.ALL, {
				-- e(2344, {	-- Champion of the Light	-- 2333 Horde
				-- 	["crs"] = {
				-- 		144683,	-- Ra'wani Kanae (A)
				-- 		144680,	-- Frida Ironbellows (H)
				-- 	},
				-- 	["groups"] = {
				-- 	},
				-- }),
				-- e(2323, {	-- Jadefire Masters	-- 2341 Horde
				-- 	["crs"] = {
				-- 		144692,	-- Anathos Firecaller (A)
				-- 		144691,	-- Ma'ra Grimfang (A)
				-- 		144693,	-- Manceroy Flamefist (H)
				-- 		144690,	-- Mestrah <The Illuminated> (H)
				-- 	},
				-- 	["groups"] = {
				-- 	},
				-- }),
				-- e(2340, {	-- Grong, the Revenant	-- 2325 Horde
				-- 	["crs"] = {
				-- 		144638,	-- Grong the Revenant (A)
				-- 		148117,	-- Grong the Revenant (H)
				-- 	},
				-- 	["groups"] = {
				-- 	},
				-- }),
				-- e(2342, {	-- Opulence
				-- 	["crs"] = {
				-- 		145261,	-- Opulence
				-- 		145274,	-- Yalat's Bulwark
				-- 		145273,	-- The Hand of In'zashi
				-- 	},
				-- 	["groups"] = {
				-- 	},
				-- }),
				e(2330, {	-- Loa Council / Conclave of the Chosen
					["crs"] = {
						144941,	-- Akunda's Aspect
						144767,	-- Gonk's Aspect
						144963,	-- Kimbul's Aspect
						144747,	-- Pa'ku's Aspect
					},
					["groups"] = {
						i(165846),	-- Child of Pa'ku (PET!)
						i(165847),	-- Thunder Lizard Runt (PET!)
					},
				}),
				e(2335, {	-- King Rastakhan
					["crs"] = {
						145644,	-- Bwonsamdi
						145616,	-- King Rastakhan
						146492,	-- Phantom of Rage
						146322,	-- Siegebreaker Roka
					},
					["groups"] = {
						i(165696),	-- Formula: Enchanted Tiki Mask (RECIPE!)
						ig(168129),	-- Essence of the Troll Dynasty
					},
				}),
				e(2334, {	-- High Tinker Mekkatorque
					["crs"] = { 144796 },	-- High Tinker Mekkatorque
					["groups"] = {
						i(166276),	-- Schematic: Unstable Temporal Time Shifter (RECIPE!)
					},
				}),
				-- e(2337, cr(146256, {	-- Stormwall Blockade / Laminaria
				-- 	["crs"] = {
				-- 		146253,	-- Brother Joseph
				-- 		146251,	-- Sister Katherine
				-- 	},
				-- 	["groups"] = {
				-- 	},
				-- })),
				e(2343, {	-- Lady Jaina Proudmoore
					["crs"] = { 146409 },	-- Lady Jaina Proudmoore
					["groups"] = {
						i(166582),	-- Technique: Glyph of the Tides (RECIPE!)
					},
				}),
			}),
			d(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["crs"] = {
					177193,	-- Kiku
					177208,	-- Eppu
				},
				["coords"] = {
					{ 74.0, 13.4, BORALUS },	-- Kiku
					{ 68.0, 33.6, THE_GREAT_SEAL },	-- Eppu
				},
			}),
			d(DIFFICULTY.RAID.LFR, {
				n(ZONE_DROPS, {
					i(165765),	-- Cord of Zandalari Resolve
					i(165564),	-- Last Stand Greatbelt
					i(165545),	-- Waistguard of Elemental Resistance
					i(165518),	-- Warbeast Hide Cinch
					i(165509),	-- Slippers of Encroaching Tide
					i(165520),	-- Silent Pillager's Footpads
					i(165547),	-- City Crusher Sabatons
					i(165563),	-- Boots of the Dark Iron Raider
					i(165925),	-- Drape of Valiant Defense
				}),
				header(HEADERS.LFGDungeonByFaction, 1945.1948, {	-- Siege of Dazar'alor (A) / Defense of Dazar'alor (H)
					e(2344, {	-- Champion of the Light	-- 2333 Horde
						["crs"] = {
							144683,	-- Ra'wani Kanae (A)
							144680,	-- Frida Ironbellows (H)
						},
						["groups"] = {
							crit(43867, {	-- Champion of the Light (A)
								["races"] = ALLIANCE_ONLY,
								["achievementID"] = 13286,	-- Siege of Dazar'alor
							}),
							crit(43867, {	-- Champion of the Light (H)
								["races"] = HORDE_ONLY,
								["achievementID"] = 13289,	-- Defense of Dazar'alor
							}),
							i(165586),	-- Dawnbreaker
							i(165919),	-- Desecrated Blade of the Disciples
							i(165584),	-- Sunburst Crest
							i(165519),	-- Cowl of Righteous Resolve
							i(165921),	-- Pauldrons of Ancestral Vengeance
							i(165550),	-- Breastplate of Divine Purification
							i(165834),	-- Divine Fury Raiment
							i(165517),	-- Bracers of Regal Devotion
							i(165501),	-- Bracers of Zealous Calling
							i(165549),	-- Crusade Pummelers
							i(165514),	-- Gloves of Spiritual Grace
							i(165533),	-- Lightgrace Sabatons
							i(165569),	-- Ward of Envelopment
						},
					}),
					e(2323, {	-- Jadefire Masters	-- 2341 Horde
						["crs"] = {
							144692,	-- Anathos Firecaller (A)
							144691,	-- Ma'ra Grimfang (A)
							144693,	-- Manceroy Flamefist (H)
							144690,	-- Mestrah <The Illuminated> (H)
						},
						["groups"] = {
							crit(43884, {	-- Jadefire Masters (A)
								["races"] = ALLIANCE_ONLY,
								["achievementID"] = 13286,	-- Siege of Dazar'alor
							}),
							crit(43876, {	-- Jadefire Masters (H)
								["races"] = HORDE_ONLY,
								["achievementID"] = 13289,	-- Defense of Dazar'alor
							}),
							i(165587),	-- Phoenixfire Staff
							i(165500),	-- Blazewing Hood
							i(165548),	-- Helm of Tempered Jade
							i(165777),	-- Ma'ra's Boneblade Mantle
							i(165516),	-- Mestrah's Singing Spaulders
							i(165540),	-- Mistfire Raiment
							i(165764),	-- Firecaller's Handwraps
							i(165531),	-- Grips of Harmonious Spirits
							i(165503),	-- Manceroy's Flamefists
							i(165552),	-- Embersear Waistguard
							i(165521),	-- Cranedancer Leggings
							i(165565),	-- Band of Multi-Sided Strikes
							i(165568),	-- Invocation of Yu'lon
						},
					}),
					e(2340, {	-- Grong, the Revenant	-- 2325 Horde
						["crs"] = {
							144637,	-- Grong (H)
							144638,	-- Grong the Revenant (A)
							148117,	-- Grong the Revenant (H)
						},
						["groups"] = {
							crit(43868, {	-- Grong, the Revenant (A)
								["races"] = ALLIANCE_ONLY,
								["achievementID"] = 13286,	-- Siege of Dazar'alor
							}),
							crit(43875, {	-- Grong, the Revenant (H)
								["races"] = HORDE_ONLY,
								["achievementID"] = 13289,	-- Defense of Dazar'alor
							}),
							i(165589),	-- Hornridged Crusher
							i(165920),	-- Apetagonizer's Claw
							i(165588),	-- Bonelash Paw
							i(165582),	-- Cursed Monkey Palm
							i(165535),	-- Simian Berserker's Helm
							i(165922),	-- Bristling Fur-Lined Amice
							i(165555),	-- Spaulders of the Gorilla King
							i(165513),	-- Silverback Cloak
							i(165515),	-- Grongpelt Vest
							i(165534),	-- Ape Wrangler's Wristguards
							i(165551),	-- Splinter-Bone Vambraces
							i(165525),	-- Stretched Sinew Waistcord
							i(165499),	-- Leggings of Dire Research
							i(165574),	-- Grong's Primal Rage
						},
					}),
				}),
				header(HEADERS.LFGDungeonByFaction, 1946.1949, {	-- Empire's Fall (A) / Death's Bargain (H)
					e(2342, {	-- Opulence
						["crs"] = {
							145261,	-- Opulence
							145274,	-- Yalat's Bulwark
							145273,	-- The Hand of In'zashi
						},
						["groups"] = {
							crit(43869, {	-- Opulence (A)
								["races"] = ALLIANCE_ONLY,
								["achievementID"] = 13287,	-- Empire's Fall
							}),
							crit(43869, {	-- Opulence (H)
								["races"] = HORDE_ONLY,
								["achievementID"] = 13290,	-- Death's Bargain
							}),
							i(165591),	-- Bloodtooth, the Soulfeaster
							i(165592),	-- Goblet of Glittering Favor
							i(165593),	-- Greed's Folly
							i(165526),	-- Crown of A'akul's Dark Reign
							i(165821),	-- Crown of Bloody Succession
							i(165818),	-- Crown of the Seducer
							i(165820),	-- Electrified Crown of Rahu'ai
							i(165524),	-- Amethyst-Studded Bindings
							i(165538),	-- Goldenscale Girdle
							i(165504),	-- Waistcord of Flowing Silk
							i(165541),	-- Boots of the Gilded Path
							i(165561),	-- Coinage Stampers
							i(165573),	-- Diamond-Laced Refracting Prism
							i(165571),	-- Incandescent Sliver
						},
					}),
					e(2330, {	-- Loa Council / Conclave of the Chosen
						["crs"] = {
							144941,	-- Akunda's Aspect
							144767,	-- Gonk's Aspect
							144963,	-- Kimbul's Aspect
							144747,	-- Pa'ku's Aspect
						},
						["groups"] = {
							crit(43870, {	-- Loa Council/Conclave of the Chosen (A)
								["races"] = ALLIANCE_ONLY,
								["achievementID"] = 13287,	-- Empire's Fall
							}),
							crit(43870, {	-- Loa Council/Conclave of the Chosen (H)
								["races"] = HORDE_ONLY,
								["achievementID"] = 13290,	-- Death's Bargain
							}),
							i(165594),	-- Akunda's Shocksplitter
							i(165595),	-- Blade of Encroaching Death
							i(165599),	-- Pterrorwing Longbow
							i(165507),	-- Mantle of the Skyterror
							i(165562),	-- Ridgeplate Pauldrons
							i(165512),	-- Loa Exultant's Shroud
							i(165532),	-- Gonk's Scale Robes
							i(165833),	-- Vestments of Indomitable Will
							i(165560),	-- Arcing Thunderlizard Legplates
							i(165502),	-- Lightfeather Footpads
							a(i(166418)),	-- Crest of Pa'ku (Alliance)
							h(i(165581)),	-- Crest of Pa'ku (Horde)
							i(165579),	-- Kimbul's Razor Claw
						},
					}),
					e(2335, {	-- King Rastakhan
						["crs"] = {
							145644,	-- Bwonsamdi
							145616,	-- King Rastakhan
							146492,	-- Phantom of Rage
							146322,	-- Siegebreaker Roka
						},
						["groups"] = {
							crit(43871, {	-- King Rastakhan (A)
								["races"] = ALLIANCE_ONLY,
								["achievementID"] = 13287,	-- Empire's Fall
							}),
							crit(43871, {	-- King Rastakhan (H)
								["races"] = HORDE_ONLY,
								["achievementID"] = 13290,	-- Death's Bargain
							}),
							i(165597),	-- Deathspeaker Spire
							i(165596),	-- Last Fang of Rezan
							i(165537),	-- Mantle of the Soulbinder's Caress
							i(165523),	-- Phantom Stalker Shoulders
							i(165832),	-- Breastplate of the Deathbound
							i(165498),	-- Vestments of the Afterlife
							i(165558),	-- Roka's Bonecrushing Manacles
							i(165536),	-- Deathhunter's Legguards
							i(165567),	-- Seal of the Zandalari Empire
							i(165577),	-- Bwonsamdi's Bargain
							i(165578),	-- Mirror of Entwined Fate
						},
					}),
				}),
				header(HEADERS.LFGDungeonByFaction, 1947.1950, {	-- Might of the Alliance (A) / Victory or Death (H)
					e(2334, {	-- High Tinker Mekkatorque
						["crs"] = { 144796 },	-- High Tinker Mekkatorque
						["groups"] = {
							crit(43872, {	-- High Tinker Mekkatorque (A)
								["races"] = ALLIANCE_ONLY,
								["achievementID"] = 13288,	-- Might of the Alliance
							}),
							crit(43872, {	-- High Tinker Mekkatorque (H)
								["races"] = HORDE_ONLY,
								["achievementID"] = 13291,	-- Victory of Death
							}),
							i(165598),	-- Servo-Claw Smasher
							i(165600),	-- Twin-Pipe Buster Cannon
							i(165543),	-- Target-Tracking Headgear
							i(165825),	-- Dyno-Sprocket Spaulders
							i(165497),	-- Giga-Charged Shoulderpads
							i(165924),	-- High Tinker's Cape
							i(165830),	-- Mekkatorque's Bomber Jacket
							i(165508),	-- Lever Stabilizing Wristwraps
							i(165522),	-- Mech-Jockey Grips
							i(165580),	-- Ramping Amplitude Gigavolt Engine
							i(165572),	-- Variable Intensity Gigavolt Oscillating Reactor
						},
					}),
					e(2337, cr(146256, {	-- Stormwall Blockade / Laminaria
						["crs"] = {
							146253,	-- Brother Joseph
							146251,	-- Sister Katherine
						},
						["groups"] = {
							crit(43873, {	-- Stormwall Blockade (A)
								["races"] = ALLIANCE_ONLY,
								["achievementID"] = 13288,	-- Might of the Alliance
							}),
							crit(43873, {	-- Stormwall Blockade (H)
								["races"] = HORDE_ONLY,
								["achievementID"] = 13291,	-- Victory of Death
							}),
							i(165602),	-- Crash of Tides
							i(165590),	-- Docksplitter Siege Hook
							i(165601),	-- Storm-Toothed Kasuyu
							i(165603),	-- Siren's Song
							i(165585),	-- Blockade Bulwark
							i(165822),	-- Cowl of Tideborne Omens
							i(165819),	-- Tidemother's Cover
							i(165923),	-- Tidal Shroud Spaulders
							i(165557),	-- Sea Swell Chestplate
							i(165546),	-- Slimy Kelpweavers
							i(165556),	-- Stormwrought Gauntlets
							i(165528),	-- Kelp-Laced Greaves
							i(165506),	-- Wavecaller Leggings
						},
					})),
					e(2343, {	-- Lady Jaina Proudmoore
						["crs"] = { 146409 },	-- Lady Jaina Proudmoore
						["groups"] = {
							crit(43874, {	-- Jaina Proudmoore (A)
								["races"] = ALLIANCE_ONLY,
								["achievementID"] = 13288,	-- Might of the Alliance
							}),
							crit(43874, {	-- Jaina Proudmoore (H)
								["races"] = HORDE_ONLY,
								["achievementID"] = 13291,	-- Victory of Death
							}),
							i(166518),	-- G.M.O.D. (MOUNT!  Moved from High Tinker Mekkatorque in 2.26.19 hotfix, change to LFR only)
							i(165604),	-- Daelin Proudmoore's Saber
							i(165583),	-- Fogbreaker, Light of the Sea
							i(165823),	-- Glaciercrest Helm
							i(165824),	-- Admiralty's Ceremonial Epaulets
							i(165831),	-- Flag Officer's Overcoat
							i(165505),	-- Robes of Biting Cold
							i(165542),	-- Icebinder's Bracers
							i(165559),	-- Hullplate Girdle
							i(165527),	-- Embossed Deckwalkers
							i(165566),	-- Lord Admiral's Signet
							i(165570),	-- Everchill Anchor
							i(165576),	-- Tidestorm Codex
						},
					}),
				}),
			}),
			d(DIFFICULTY.RAID.MULTI.NORMAL_PLUS, {
				e(2344, {	-- Champion of the Light	-- 2333 Horde
					["crs"] = {
						144683,	-- Ra'wani Kanae (A)
						144680,	-- Frida Ironbellows (H)
					},
					["groups"] = {
						ach(13316),	-- Can I Get a Hek Hek Hek Yeah?
					},
				}),
				e(2323, {	-- Jadefire Masters	-- 2341 Horde
					["crs"] = {
						144692,	-- Anathos Firecaller (A)
						144691,	-- Ma'ra Grimfang (A)
						144693,	-- Manceroy Flamefist (H)
						144690,	-- Mestrah <The Illuminated> (H)
					},
					["groups"] = {
						ach(13431),	-- Hidden Dragon
					},
				}),
				e(2340, {	-- Grong, the Revenant	-- 2325 Horde
					["crs"] = {
						144638,	-- Grong the Revenant (A)
						148117,	-- Grong the Revenant (H)
					},
					["groups"] = {
						ach(13383),	-- Barrel of Monkeys
					},
				}),
				e(2342, {	-- Opulence
					["crs"] = {
						145261,	-- Opulence
						145274,	-- Yalat's Bulwark
						145273,	-- The Hand of In'zashi
					},
					["groups"] = {
						ach(13345),	-- Praise the Sunflower
					},
				}),
				e(2330, {	-- Loa Council / Conclave of the Chosen
					["crs"] = {
						144941,	-- Akunda's Aspect
						144767,	-- Gonk's Aspect
						144963,	-- Kimbul's Aspect
						144747,	-- Pa'ku's Aspect
					},
					["groups"] = {
						ach(13325),	-- Walk the Dinosaur
					},
				}),
				e(2335, {	-- King Rastakhan
					["crs"] = {
						145644,	-- Bwonsamdi
						145616,	-- King Rastakhan
						146492,	-- Phantom of Rage
						146322,	-- Siegebreaker Roka
					},
					["groups"] = {
						ach(13425),	-- We Got Spirit, How About You?
					},
				}),
				e(2334, {	-- High Tinker Mekkatorque
					["crs"] = { 144796 },	-- High Tinker Mekkatorque
					["groups"] = {
						ach(13401),	-- I Got Next!
						i(166518),	-- G.M.O.D. (MOUNT!)
					},
				}),
				e(2337, cr(146256, {	-- Stormwall Blockade / Laminaria
					["crs"] = {
						146253,	-- Brother Joseph
						146251,	-- Sister Katherine
					},
					["groups"] = {
						ach(13430),	-- De Lurker Be'loa
					},
				})),
				e(2343, {	-- Lady Jaina Proudmoore
					["crs"] = { 146409 },	-- Lady Jaina Proudmoore
					["groups"] = {
						ach(13410),	-- Snow Fun Allowed
					},
				}),
			}),
			d(DIFFICULTY.RAID.NORMAL, {
				n(ZONE_DROPS, {
					i(165765),	-- Cord of Zandalari Resolve
					i(165518),	-- Warbeast Hide Cinch
					i(165545),	-- Waistguard of Elemental Resistance
					i(165564),	-- Last Stand Greatbelt
					i(165509),	-- Slippers of Encroaching Tide
					i(165520),	-- Silent Pillager's Footpads
					i(165547),	-- City Crusher Sabatons
					i(165563),	-- Boots of the Dark Iron Raider
					i(165925),	-- Drape of Valiant Defense
				}),
				e(2344, {	-- Champion of the Light	-- 2333 Horde
					["crs"] = {
						144683,	-- Ra'wani Kanae (A)
						144680,	-- Frida Ironbellows (H)
					},
					["groups"] = {
						i(165586),	-- Dawnbreaker
						i(165919),	-- Desecrated Blade of the Disciples
						i(165584),	-- Sunburst Crest
						i(165519),	-- Cowl of Righteous Resolve
						i(165921),	-- Pauldrons of Ancestral Vengeance
						i(165550),	-- Breastplate of Divine Purification
						i(165834),	-- Divine Fury Raiment
						i(165517),	-- Bracers of Regal Devotion
						i(165501),	-- Bracers of Zealous Calling
						i(165549),	-- Crusade Pummelers
						i(165514),	-- Gloves of Spiritual Grace
						i(165533),	-- Lightgrace Sabatons
						i(165569),	-- Ward of Envelopment
					},
				}),
				e(2323, {	-- Jadefire Masters	-- 2341 Horde
					["crs"] = {
						144692,	-- Anathos Firecaller (A)
						144691,	-- Ma'ra Grimfang (A)
						144693,	-- Manceroy Flamefist (H)
						144690,	-- Mestrah <The Illuminated> (H)
					},
					["groups"] = {
						i(165587),	-- Phoenixfire Staff
						i(165500),	-- Blazewing Hood
						i(165548),	-- Helm of Tempered Jade
						i(165777),	-- Ma'ra's Boneblade Mantle
						i(165516),	-- Mestrah's Singing Spaulders
						i(165540),	-- Mistfire Raiment
						i(165764),	-- Firecaller's Handwraps
						i(165531),	-- Grips of Harmonious Spirits
						i(165503),	-- Manceroy's Flamefists
						i(165552),	-- Embersear Waistguard
						i(165521),	-- Cranedancer Leggings
						i(165565),	-- Band of Multi-Sided Strikes
						i(165568),	-- Invocation of Yu'lon
					},
				}),
				e(2340, {	-- Grong, the Revenant	-- 2325 Horde
					["crs"] = {
						144638,	-- Grong the Revenant (A)
						148117,	-- Grong the Revenant (H)
					},
					["groups"] = {
						i(165589),	-- Hornridged Crusher
						i(165920),	-- Apetagonizer's Claw
						i(165588),	-- Bonelash Paw
						i(165582),	-- Cursed Monkey Palm
						i(165535),	-- Simian Berserker's Helm
						i(165922),	-- Bristling Fur-Lined Amice
						i(165555),	-- Spaulders of the Gorilla King
						i(165513),	-- Silverback Cloak
						i(165515),	-- Grongpelt Vest
						i(165534),	-- Ape Wrangler's Wristguards
						i(165551),	-- Splinter-Bone Vambraces
						i(165525),	-- Stretched Sinew Waistcord
						i(165499),	-- Leggings of Dire Research
						i(165574),	-- Grong's Primal Rage
					},
				}),
				e(2342, {	-- Opulence
					["crs"] = {
						145261,	-- Opulence
						145274,	-- Yalat's Bulwark
						145273,	-- The Hand of In'zashi
					},
					["groups"] = {
						i(165591),	-- Bloodtooth, the Soulfeaster
						i(165592),	-- Goblet of Glittering Favor
						i(165593),	-- Greed's Folly
						i(165526),	-- Crown of A'akul's Dark Reign
						i(165821),	-- Crown of Bloody Succession
						i(165818),	-- Crown of the Seducer
						i(165820),	-- Electrified Crown of Rahu'ai
						i(165524),	-- Amethyst-Studded Bindings
						i(165538),	-- Goldenscale Girdle
						i(165504),	-- Waistcord of Flowing Silk
						i(165541),	-- Boots of the Gilded Path
						i(165561),	-- Coinage Stampers
						i(165573),	-- Diamond-Laced Refracting Prism
						i(165571),	-- Incandescent Sliver
					},
				}),
				e(2330, {	-- Loa Council / Conclave of the Chosen
					["crs"] = {
						144941,	-- Akunda's Aspect
						144767,	-- Gonk's Aspect
						144963,	-- Kimbul's Aspect
						144747,	-- Pa'ku's Aspect
					},
					["groups"] = {
						i(165594),	-- Akunda's Shocksplitter
						i(165595),	-- Blade of Encroaching Death
						i(165599),	-- Pterrorwing Longbow
						i(165507),	-- Mantle of the Skyterror
						i(165562),	-- Ridgeplate Pauldrons
						i(165512),	-- Loa Exultant's Shroud
						i(165532),	-- Gonk's Scale Robes
						i(165833),	-- Vestments of Indomitable Will
						i(165560),	-- Arcing Thunderlizard Legplates
						i(165502),	-- Lightfeather Footpads
						a(i(166418)),	-- Crest of Pa'ku (Alliance)
						h(i(165581)),	-- Crest of Pa'ku (Horde)
						i(165579),	-- Kimbul's Razor Claw
					},
				}),
				e(2335, {	-- King Rastakhan
					["crs"] = {
						145644,	-- Bwonsamdi
						145616,	-- King Rastakhan
						146492,	-- Phantom of Rage
						146322,	-- Siegebreaker Roka
					},
					["groups"] = {
						i(165597),	-- Deathspeaker Spire
						i(165596),	-- Last Fang of Rezan
						i(165537),	-- Mantle of the Soulbinder's Caress
						i(165523),	-- Phantom Stalker Shoulders
						i(165832),	-- Breastplate of the Deathbound
						i(165498),	-- Vestments of the Afterlife
						i(165558),	-- Roka's Bonecrushing Manacles
						i(165536),	-- Deathhunter's Legguards
						i(165567),	-- Seal of the Zandalari Empire
						i(165577),	-- Bwonsamdi's Bargain
						i(165578),	-- Mirror of Entwined Fate
					},
				}),
				e(2334, {	-- High Tinker Mekkatorque
					["crs"] = { 144796 },	-- High Tinker Mekkatorque
					["groups"] = {
						i(165598),	-- Servo-Claw Smasher
						i(165600),	-- Twin-Pipe Buster Cannon
						i(165543),	-- Target-Tracking Headgear
						i(165825),	-- Dyno-Sprocket Spaulders
						i(165497),	-- Giga-Charged Shoulderpads
						i(165924),	-- High Tinker's Cape
						i(165830),	-- Mekkatorque's Bomber Jacket
						i(165508),	-- Lever Stabilizing Wristwraps
						i(165522),	-- Mech-Jockey Grips
						i(165580),	-- Ramping Amplitude Gigavolt Engine
						i(165572),	-- Variable Intensity Gigavolt Oscillating Reactor
					},
				}),
				e(2337, cr(146256, {	-- Stormwall Blockade / Laminaria
					["crs"] = {
						146253,	-- Brother Joseph
						146251,	-- Sister Katherine
					},
					["groups"] = {
						i(165602),	-- Crash of Tides
						i(165590),	-- Docksplitter Siege Hook
						i(165601),	-- Storm-Toothed Kasuyu
						i(165603),	-- Siren's Song
						i(165585),	-- Blockade Bulwark
						i(165822),	-- Cowl of Tideborne Omens
						i(165819),	-- Tidemother's Cover
						i(165923),	-- Tidal Shroud Spaulders
						i(165557),	-- Sea Swell Chestplate
						i(165546),	-- Slimy Kelpweavers
						i(165556),	-- Stormwrought Gauntlets
						i(165528),	-- Kelp-Laced Greaves
						i(165506),	-- Wavecaller Leggings
					},
				})),
				e(2343, {	-- Lady Jaina Proudmoore
					["crs"] = { 146409 },	-- Lady Jaina Proudmoore
					["groups"] = {
						i(165604),	-- Daelin Proudmoore's Saber
						i(165583),	-- Fogbreaker, Light of the Sea
						i(165823),	-- Glaciercrest Helm
						i(165824),	-- Admiralty's Ceremonial Epaulets
						i(165831),	-- Flag Officer's Overcoat
						i(165505),	-- Robes of Biting Cold
						i(165542),	-- Icebinder's Bracers
						i(165559),	-- Hullplate Girdle
						i(165527),	-- Embossed Deckwalkers
						i(165566),	-- Lord Admiral's Signet
						i(165570),	-- Everchill Anchor
						i(165576),	-- Tidestorm Codex
					},
				}),
			}),
			d(DIFFICULTY.RAID.HEROIC, {
				n(ZONE_DROPS, {
					i(165765),	-- Cord of Zandalari Resolve
					i(165518),	-- Warbeast Hide Cinch
					i(165545),	-- Waistguard of Elemental Resistance
					i(165564),	-- Last Stand Greatbelt
					i(165509),	-- Slippers of Encroaching Tide
					i(165520),	-- Silent Pillager's Footpads
					i(165547),	-- City Crusher Sabatons
					i(165563),	-- Boots of the Dark Iron Raider
					i(165925),	-- Drape of Valiant Defense
				}),
				e(2344, {	-- Champion of the Light	-- 2333 Horde
					["crs"] = {
						144683,	-- Ra'wani Kanae (A)
						144680,	-- Frida Ironbellows (H)
					},
					["groups"] = {
						i(165586),	-- Dawnbreaker
						i(165919),	-- Desecrated Blade of the Disciples
						i(165584),	-- Sunburst Crest
						i(165519),	-- Cowl of Righteous Resolve
						i(165921),	-- Pauldrons of Ancestral Vengeance
						i(165550),	-- Breastplate of Divine Purification
						i(165834),	-- Divine Fury Raiment
						i(165517),	-- Bracers of Regal Devotion
						i(165501),	-- Bracers of Zealous Calling
						i(165549),	-- Crusade Pummelers
						i(165514),	-- Gloves of Spiritual Grace
						i(165533),	-- Lightgrace Sabatons
						i(165569),	-- Ward of Envelopment
					},
				}),
				e(2323, {	-- Jadefire Masters	-- 2341 Horde
					["crs"] = {
						144692,	-- Anathos Firecaller (A)
						144691,	-- Ma'ra Grimfang (A)
						144693,	-- Manceroy Flamefist (H)
						144690,	-- Mestrah <The Illuminated> (H)
					},
					["groups"] = {
						i(165587),	-- Phoenixfire Staff
						i(165500),	-- Blazewing Hood
						i(165548),	-- Helm of Tempered Jade
						i(165777),	-- Ma'ra's Boneblade Mantle
						i(165516),	-- Mestrah's Singing Spaulders
						i(165540),	-- Mistfire Raiment
						i(165764),	-- Firecaller's Handwraps
						i(165531),	-- Grips of Harmonious Spirits
						i(165503),	-- Manceroy's Flamefists
						i(165552),	-- Embersear Waistguard
						i(165521),	-- Cranedancer Leggings
						i(165565),	-- Band of Multi-Sided Strikes
						i(165568),	-- Invocation of Yu'lon
					},
				}),
				e(2340, {	-- Grong, the Revenant	-- 2325 Horde
					["crs"] = {
						144638,	-- Grong the Revenant (A)
						148117,	-- Grong the Revenant (H)
					},
					["groups"] = {
						i(165589),	-- Hornridged Crusher
						i(165920),	-- Apetagonizer's Claw
						i(165588),	-- Bonelash Paw
						i(165582),	-- Cursed Monkey Palm
						i(165535),	-- Simian Berserker's Helm
						i(165922),	-- Bristling Fur-Lined Amice
						i(165555),	-- Spaulders of the Gorilla King
						i(165513),	-- Silverback Cloak
						i(165515),	-- Grongpelt Vest
						i(165534),	-- Ape Wrangler's Wristguards
						i(165551),	-- Splinter-Bone Vambraces
						i(165525),	-- Stretched Sinew Waistcord
						i(165499),	-- Leggings of Dire Research
						i(165574),	-- Grong's Primal Rage
					},
				}),
				e(2342, {	-- Opulence
					["crs"] = {
						145261,	-- Opulence
						145274,	-- Yalat's Bulwark
						145273,	-- The Hand of In'zashi
					},
					["groups"] = {
						i(165591),	-- Bloodtooth, the Soulfeaster
						i(165592),	-- Goblet of Glittering Favor
						i(165593),	-- Greed's Folly
						i(165526),	-- Crown of A'akul's Dark Reign
						i(165821),	-- Crown of Bloody Succession
						i(165818),	-- Crown of the Seducer
						i(165820),	-- Electrified Crown of Rahu'ai
						i(165524),	-- Amethyst-Studded Bindings
						i(165538),	-- Goldenscale Girdle
						i(165504),	-- Waistcord of Flowing Silk
						i(165541),	-- Boots of the Gilded Path
						i(165561),	-- Coinage Stampers
						i(165573),	-- Diamond-Laced Refracting Prism
						i(165571),	-- Incandescent Sliver
					},
				}),
				e(2330, {	-- Loa Council / Conclave of the Chosen
					["crs"] = {
						144941,	-- Akunda's Aspect
						144767,	-- Gonk's Aspect
						144963,	-- Kimbul's Aspect
						144747,	-- Pa'ku's Aspect
					},
					["groups"] = {
						i(165594),	-- Akunda's Shocksplitter
						i(165595),	-- Blade of Encroaching Death
						i(165599),	-- Pterrorwing Longbow
						i(165507),	-- Mantle of the Skyterror
						i(165562),	-- Ridgeplate Pauldrons
						i(165512),	-- Loa Exultant's Shroud
						i(165532),	-- Gonk's Scale Robes
						i(165833),	-- Vestments of Indomitable Will
						i(165560),	-- Arcing Thunderlizard Legplates
						i(165502),	-- Lightfeather Footpads
						a(i(166418)),	-- Crest of Pa'ku (Alliance)
						h(i(165581)),	-- Crest of Pa'ku (Horde)
						i(165579),	-- Kimbul's Razor Claw
					},
				}),
				e(2335, {	-- King Rastakhan
					["crs"] = {
						145644,	-- Bwonsamdi
						145616,	-- King Rastakhan
						146492,	-- Phantom of Rage
						146322,	-- Siegebreaker Roka
					},
					["groups"] = {
						i(165597),	-- Deathspeaker Spire
						i(165596),	-- Last Fang of Rezan
						i(165537),	-- Mantle of the Soulbinder's Caress
						i(165523),	-- Phantom Stalker Shoulders
						i(165832),	-- Breastplate of the Deathbound
						i(165498),	-- Vestments of the Afterlife
						i(165558),	-- Roka's Bonecrushing Manacles
						i(165536),	-- Deathhunter's Legguards
						i(165567),	-- Seal of the Zandalari Empire
						i(165577),	-- Bwonsamdi's Bargain
						i(165578),	-- Mirror of Entwined Fate
					},
				}),
				e(2334, {	-- High Tinker Mekkatorque
					["crs"] = { 144796 },	-- High Tinker Mekkatorque
					["groups"] = {
						i(165598),	-- Servo-Claw Smasher
						i(165600),	-- Twin-Pipe Buster Cannon
						i(165543),	-- Target-Tracking Headgear
						i(165825),	-- Dyno-Sprocket Spaulders
						i(165497),	-- Giga-Charged Shoulderpads
						i(165924),	-- High Tinker's Cape
						i(165830),	-- Mekkatorque's Bomber Jacket
						i(165508),	-- Lever Stabilizing Wristwraps
						i(165522),	-- Mech-Jockey Grips
						i(165580),	-- Ramping Amplitude Gigavolt Engine
						i(165572),	-- Variable Intensity Gigavolt Oscillating Reactor
					},
				}),
				e(2337, cr(146256, {	-- Stormwall Blockade / Laminaria
					["crs"] = {
						146253,	-- Brother Joseph
						146251,	-- Sister Katherine
					},
					["groups"] = {
						i(165602),	-- Crash of Tides
						i(165590),	-- Docksplitter Siege Hook
						i(165601),	-- Storm-Toothed Kasuyu
						i(165603),	-- Siren's Song
						i(165585),	-- Blockade Bulwark
						i(165822),	-- Cowl of Tideborne Omens
						i(165819),	-- Tidemother's Cover
						i(165923),	-- Tidal Shroud Spaulders
						i(165557),	-- Sea Swell Chestplate
						i(165546),	-- Slimy Kelpweavers
						i(165556),	-- Stormwrought Gauntlets
						i(165528),	-- Kelp-Laced Greaves
						i(165506),	-- Wavecaller Leggings
					},
				})),
				e(2343, {	-- Lady Jaina Proudmoore
					["crs"] = { 146409 },	-- Lady Jaina Proudmoore
					["groups"] = {
						ach(13322, {	-- Ahead of the Curve: Lady Jaina Proudmoore
							["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 },
						}),
						i(165604),	-- Daelin Proudmoore's Saber
						i(165583),	-- Fogbreaker, Light of the Sea
						i(165823),	-- Glaciercrest Helm
						i(165824),	-- Admiralty's Ceremonial Epaulets
						i(165831),	-- Flag Officer's Overcoat
						i(165505),	-- Robes of Biting Cold
						i(165542),	-- Icebinder's Bracers
						i(165559),	-- Hullplate Girdle
						i(165527),	-- Embossed Deckwalkers
						i(165566),	-- Lord Admiral's Signet
						i(165570),	-- Everchill Anchor
						i(165576),	-- Tidestorm Codex
					},
				}),
			}),
			d(DIFFICULTY.RAID.MYTHIC, {
				n(ZONE_DROPS, {
					i(165765),	-- Cord of Zandalari Resolve
					i(165518),	-- Warbeast Hide Cinch
					i(165545),	-- Waistguard of Elemental Resistance
					i(165564),	-- Last Stand Greatbelt
					i(165509),	-- Slippers of Encroaching Tide
					i(165520),	-- Silent Pillager's Footpads
					i(165547),	-- City Crusher Sabatons
					i(165563),	-- Boots of the Dark Iron Raider
					i(165925),	-- Drape of Valiant Defense
				}),
				e(2344, {	-- Champion of the Light	-- 2333 Horde
					["crs"] = {
						144683,	-- Ra'wani Kanae (A)
						144680,	-- Frida Ironbellows (H)
					},
					["groups"] = {
						ach(13292),	-- Mythic: Champion of the Light
						i(165586),	-- Dawnbreaker
						i(165919),	-- Desecrated Blade of the Disciples
						i(165584),	-- Sunburst Crest
						i(165519),	-- Cowl of Righteous Resolve
						i(165921),	-- Pauldrons of Ancestral Vengeance
						i(165550),	-- Breastplate of Divine Purification
						i(165834),	-- Divine Fury Raiment
						i(165517),	-- Bracers of Regal Devotion
						i(165501),	-- Bracers of Zealous Calling
						i(165549),	-- Crusade Pummelers
						i(165514),	-- Gloves of Spiritual Grace
						i(165533),	-- Lightgrace Sabatons
						i(165569),	-- Ward of Envelopment
					},
				}),
				e(2323, {	-- Jadefire Masters	-- 2341 Horde
					["crs"] = {
						144692,	-- Anathos Firecaller (A)
						144691,	-- Ma'ra Grimfang (A)
						144693,	-- Manceroy Flamefist (H)
						144690,	-- Mestrah <The Illuminated> (H)
					},
					["groups"] = {
						ach(13298, {	-- Mythic: Jadefire Masters (A)
							["races"] = ALLIANCE_ONLY,
						}),
						ach(13295, {	-- Mythic: Jadefire Masters (H)
							["races"] = HORDE_ONLY,
						}),
						i(165587),	-- Phoenixfire Staff
						i(165500),	-- Blazewing Hood
						i(165548),	-- Helm of Tempered Jade
						i(165777),	-- Ma'ra's Boneblade Mantle
						i(165516),	-- Mestrah's Singing Spaulders
						i(165540),	-- Mistfire Raiment
						i(165764),	-- Firecaller's Handwraps
						i(165531),	-- Grips of Harmonious Spirits
						i(165503),	-- Manceroy's Flamefists
						i(165552),	-- Embersear Waistguard
						i(165521),	-- Cranedancer Leggings
						i(165565),	-- Band of Multi-Sided Strikes
						i(165568),	-- Invocation of Yu'lon
					},
				}),
				e(2340, {	-- Grong, the Revenant	-- 2325 Horde
					["crs"] = {
						144638,	-- Grong the Revenant (A)
						148117,	-- Grong the Revenant (H)
					},
					["groups"] = {
						ach(13293),	-- Mythic: Grong
						i(165589),	-- Hornridged Crusher
						i(165920),	-- Apetagonizer's Claw
						i(165588),	-- Bonelash Paw
						i(165582),	-- Cursed Monkey Palm
						i(165535),	-- Simian Berserker's Helm
						i(165922),	-- Bristling Fur-Lined Amice
						i(165555),	-- Spaulders of the Gorilla King
						i(165513),	-- Silverback Cloak
						i(165515),	-- Grongpelt Vest
						i(165534),	-- Ape Wrangler's Wristguards
						i(165551),	-- Splinter-Bone Vambraces
						i(165525),	-- Stretched Sinew Waistcord
						i(165499),	-- Leggings of Dire Research
						i(165574),	-- Grong's Primal Rage
					},
				}),
				e(2342, {	-- Opulence
					["crs"] = {
						145261,	-- Opulence
						145274,	-- Yalat's Bulwark
						145273,	-- The Hand of In'zashi
					},
					["groups"] = {
						ach(13299),	-- Mythic: Opulence
						i(165591),	-- Bloodtooth, the Soulfeaster
						i(165592),	-- Goblet of Glittering Favor
						i(165593),	-- Greed's Folly
						i(165526),	-- Crown of A'akul's Dark Reign
						i(165821),	-- Crown of Bloody Succession
						i(165818),	-- Crown of the Seducer
						i(165820),	-- Electrified Crown of Rahu'ai
						i(165524),	-- Amethyst-Studded Bindings
						i(165538),	-- Goldenscale Girdle
						i(165504),	-- Waistcord of Flowing Silk
						i(165541),	-- Boots of the Gilded Path
						i(165561),	-- Coinage Stampers
						i(165573),	-- Diamond-Laced Refracting Prism
						i(165571),	-- Incandescent Sliver
					},
				}),
				e(2330, {	-- Loa Council / Conclave of the Chosen
					["crs"] = {
						144941,	-- Akunda's Aspect
						144767,	-- Gonk's Aspect
						144963,	-- Kimbul's Aspect
						144747,	-- Pa'ku's Aspect
					},
					["groups"] = {
						ach(13300),	-- Mythic: Conclave of the Chosen
						i(165848),	-- Spawn of Krag'wa (PET!)
						i(165594),	-- Akunda's Shocksplitter
						i(165595),	-- Blade of Encroaching Death
						i(165599),	-- Pterrorwing Longbow
						i(165507),	-- Mantle of the Skyterror
						i(165562),	-- Ridgeplate Pauldrons
						i(165512),	-- Loa Exultant's Shroud
						i(165532),	-- Gonk's Scale Robes
						i(165833),	-- Vestments of Indomitable Will
						i(165560),	-- Arcing Thunderlizard Legplates
						i(165502),	-- Lightfeather Footpads
						a(i(166418)),	-- Crest of Pa'ku (Alliance)
						h(i(165581)),	-- Crest of Pa'ku (Horde)
						i(165579),	-- Kimbul's Razor Claw
					},
				}),
				e(2335, {	-- King Rastakhan
					["crs"] = {
						145644,	-- Bwonsamdi
						145616,	-- King Rastakhan
						146492,	-- Phantom of Rage
						146322,	-- Siegebreaker Roka
					},
					["groups"] = {
						ach(13311),	-- Mythic: King Rastakhan
						i(165597),	-- Deathspeaker Spire
						i(165596),	-- Last Fang of Rezan
						i(165537),	-- Mantle of the Soulbinder's Caress
						i(165523),	-- Phantom Stalker Shoulders
						i(165832),	-- Breastplate of the Deathbound
						i(165498),	-- Vestments of the Afterlife
						i(165558),	-- Roka's Bonecrushing Manacles
						i(165536),	-- Deathhunter's Legguards
						i(165567),	-- Seal of the Zandalari Empire
						i(165577),	-- Bwonsamdi's Bargain
						i(165578),	-- Mirror of Entwined Fate
					},
				}),
				e(2334, {	-- High Tinker Mekkatorque
					["crs"] = { 144796 },	-- High Tinker Mekkatorque
					["groups"] = {
						ach(13312),	-- Mythic: Mekkatorque
						i(165598),	-- Servo-Claw Smasher
						i(165600),	-- Twin-Pipe Buster Cannon
						i(165543),	-- Target-Tracking Headgear
						i(165825),	-- Dyno-Sprocket Spaulders
						i(165497),	-- Giga-Charged Shoulderpads
						i(165924),	-- High Tinker's Cape
						i(165830),	-- Mekkatorque's Bomber Jacket
						i(165508),	-- Lever Stabilizing Wristwraps
						i(165522),	-- Mech-Jockey Grips
						i(165580),	-- Ramping Amplitude Gigavolt Engine
						i(165572),	-- Variable Intensity Gigavolt Oscillating Reactor
					},
				}),
				e(2337, cr(146256, {	-- Stormwall Blockade / Laminaria
					["crs"] = {
						146253,	-- Brother Joseph
						146251,	-- Sister Katherine
					},
					["groups"] = {
						ach(13313),	-- Mythic: Stormwall Blockade
						i(165602),	-- Crash of Tides
						i(165590),	-- Docksplitter Siege Hook
						i(165601),	-- Storm-Toothed Kasuyu
						i(165603),	-- Siren's Song
						i(165585),	-- Blockade Bulwark
						i(165822),	-- Cowl of Tideborne Omens
						i(165819),	-- Tidemother's Cover
						i(165923),	-- Tidal Shroud Spaulders
						i(165557),	-- Sea Swell Chestplate
						i(165546),	-- Slimy Kelpweavers
						i(165556),	-- Stormwrought Gauntlets
						i(165528),	-- Kelp-Laced Greaves
						i(165506),	-- Wavecaller Leggings
					},
				})),
				e(2343, {	-- Lady Jaina Proudmoore
					["crs"] = { 146409 },	-- Lady Jaina Proudmoore
					["groups"] = {
						ach(13314, {	-- Mythic: Lady Jaina Proudmoore
							title(386),	-- <Name>, Hero of Dazar'alor
						}),
						ach(13321),	-- Mythic: Lady Jaina Proudmoore Guild Run
						ach(13323, {	-- Cutting Edge: Lady Jaina Proudmoore
							["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 },
						}),
						ach(13326, bubbleDownSelf({["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 } }, {	-- Hall of Fame: Lady Jaina Proudmoore (Alliance)
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								title(384),	-- <Name>, Famed Conqueror of Dazar'alor
							},
						})),
						ach(13327, bubbleDownSelf({["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 } }, {	-- Hall of Fame: Lady Jaina Proudmoore (Horde)
							["races"] = HORDE_ONLY,
							["groups"] = {
								title(385),	-- <Name>, Famed Defender of Dazar'alor
							},
						})),
						i(166705),	-- Glacial Tidestorm (MOUNT!)
						i(165604),	-- Daelin Proudmoore's Saber
						i(165583),	-- Fogbreaker, Light of the Sea
						i(165823),	-- Glaciercrest Helm
						i(165824),	-- Admiralty's Ceremonial Epaulets
						i(165831),	-- Flag Officer's Overcoat
						i(165505),	-- Robes of Biting Cold
						i(165542),	-- Icebinder's Bracers
						i(165559),	-- Hullplate Girdle
						i(165527),	-- Embossed Deckwalkers
						i(165566),	-- Lord Admiral's Signet
						i(165570),	-- Everchill Anchor
						i(165576),	-- Tidestorm Codex
					},
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {
	inst(1176, {	-- Battle of Dazar'alor
		q(55026),	-- Killing Opulence (H)
		q(55027),	-- Killing Opulence (M)
		q(54963),	-- LFR, cinematic at the start of Siege of Dazar'alor wing
		q(55024),	-- LFR, moving into the hallway after Opulence (not a killID -- this triggered in chat while i was in combat with the trash in the hall)
		q(55025),	-- triggered after killing Conclave on normal
	}),
})));
