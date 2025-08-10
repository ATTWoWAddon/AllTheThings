-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	inst(1179, {	-- The Eternal Palace
		["isRaid"] = true,
		["coord"] = { 50.5, 11.9, NAZJATAR },
		["maps"] = {
			1512,	-- Dais of Eternity
			1513,	-- Halls of the Chosen
			1514,	-- Darkest Depths
			1516,	-- The Traverse
			1517,	-- The Hatchery
			1518,	-- The Queen's Court
			1519,	-- Precipice of Dreams
			1520,	-- The Last Prison
		},
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(13718, {	-- The Grand Reception
                    crit(45786, {	-- Abyssal Commander Sivara
                        ["_encounter"] = { 2352, DIFFICULTY.RAID.LFR },
                    }),
                    crit(45787, {	-- Blackwater Behemoth
                        ["_encounter"] = { 2347, DIFFICULTY.RAID.LFR },
                    }),
                    crit(45788, {	-- Radiance of Azshara
                        ["_encounter"] = { 2353, DIFFICULTY.RAID.LFR },
                    }),
                }),
				ach(13719, {	-- Depths of the Devoted
                    crit(45794, {	-- Lady Ashvane
                        ["_encounter"] = { 2354, DIFFICULTY.RAID.LFR },
                    }),
                    crit(45795, {	-- Orgozoa
                        ["_encounter"] = { 2351, DIFFICULTY.RAID.LFR },
                    }),
                    crit(45796, {	-- The Queen's Court
                        ["_encounter"] = { 2359, DIFFICULTY.RAID.LFR },
                    }),
                }),
				ach(13725, {	-- The Circle of Stars
                    crit(45797, {	-- Za'qul, Harbinger of Ny'alotha
                        ["_encounter"] = { 2349, DIFFICULTY.RAID.LFR },
                    }),
                    crit(45798, {	-- Queen Azshara
                        ["_encounter"] = { 2361, DIFFICULTY.RAID.LFR },
                    }),
                }),
				ach(40962, {	-- The Eternal Palace
					["timeline"] = { ADDED_11_0_7 },
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						13719,	-- Depths of the Devoted
						13725,	-- The Circle of Stars
						13718,	-- The Grand Reception
					}},
				}),
				ach(13687, {	-- Glory of the Eternal Raider
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						13684,	-- You and What Army?
						13628,	-- Intro to Marine Biology
						13767,	-- Fun Run
						13629,	-- Simple Geometry
						13724,	-- A Smack of Jellyfish
						13633,	-- If It Please the Court
						13716,	-- Lactose Intolerant
						13768,	-- The Best of Us
					}},
					["groups"] = {
						i(167171),	-- Azshari Bloatray (MOUNT!)
					},
				}),
				ach(13571),	-- Under the Seams
				-- Guild Achievement
				ach(13734),	-- The Eternal Palace Guild Run
			}),
			n(AZERITE_ESSENCES, {
				i(168328, {	-- Hardened Azerite Formation (Rank 1)
					["cost"] = { { "i", 169694, 9 } },	-- 9x Aqueous Reliquary
				}),
				i(168536, {	-- Recrystallizing Azerite Formation (Rank 2)
					["cost"] = { { "i", 169694, 18 } },	-- 18x Aqueous Reliquary
				}),
				i(168537, {	-- Tempered Azerite Formation (Rank 3)
					["cost"] = { { "i", 169694, 36 } },	-- 36x Aqueous Reliquary
				}),
				i(168854, {	-- Animated Elemental Heart (Rank 1)
					["cost"] = { { "i", 169694, 9 } },	-- 9x Aqueous Reliquary
				}),
				i(168855, {	-- Pulsing Elemental Heart (Rank 2)
					["cost"] = { { "i", 169694, 18 } },	-- 18x Aqueous Reliquary
				}),
				i(168856, {	-- Resonating Elemental Heart (Rank 3)
					["cost"] = { { "i", 169694, 36 } },	-- 36x Aqueous Reliquary
				}),
				i(168941, {	-- Vitality Redistribution Lattice (Rank 1)
					["cost"] = { { "i", 169694, 9 } },	-- 9x Aqueous Reliquary
				}),
				i(168942, {	-- Mesh of Expanding Vitality (Rank 2)
					["cost"] = { { "i", 169694, 18 } },	-- 18x Aqueous Reliquary
				}),
				i(168943, {	-- Grid of Bursting Vitality (Rank 3)
					["cost"] = { { "i", 169694, 36 } },	-- 36x Aqueous Reliquary
				}),
			}),
			petbattle(filter(BATTLE_PETS, {
				pet(2657),	-- Blackchasm Crawler (PET!)
				pet(2658),	-- Chitterspine Deepstalker (PET!)
				pet(2659),	-- Trench Slug (PET!)
			})),
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					151881,	-- Abyssal Commander Sivara
					150653,	-- Blackwater Behemoth
					152364,	-- Radiance of Azshara
					152236,	-- Lady Ashvane
					152128,	-- Orgozoa
					152852,	-- Pashmar the Fanatical
					152853,	-- Silivaz the Zealous
					150859,	-- Za'qul, Harbinger of Ny'alotha
					152910,	-- Queen Azshara
				},
				["groups"] = {
					i(169329),	-- Eternal Ornament (QI!)
					i(168625),	-- Vantus Rune Technique: The Eternal Palace [Rank 1] (RECIPE!)
					i(168626),	-- Vantus Rune Technique: The Eternal Palace [Rank 2] (RECIPE!)
					i(168627),	-- Vantus Rune Technique: The Eternal Palace [Rank 3] (RECIPE!)
				},
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
					i(169930),	-- Handwraps of Unhindered Resonance
					i(169929),	-- Cuffs of Soothing Currents
					i(169932),	-- Brineweaver Guardian's Gloves
					i(169931),	-- Skulker's Blackwater Bands
					i(169934),	-- Deepcrawler's Handguards
					i(169933),	-- Abyssal Bubbler's Bracers
					i(169936),	-- Gauntlets of Crashing Tides
					i(169935),	-- Brutish Myrmidon's Vambraces
					i(168602),	-- Cloak of Blessed Depths
				}),
				header(HEADERS.Achievement, 13718, {	-- The Grand Reception
					e(2352, {	-- Abyssal Commander Sivara
						["crs"] = { 151881 },	-- Abyssal Commander Sivara
						["groups"] = {
							i(168306),	-- Shiver Venom Lance
							i(168276),	-- Claw of the Myrmidon
							i(168901),	-- Royal Scaleguard's Battleaxe
							i(168903),	-- Scepter of the Azsh'ari
							i(168818),	-- Sivar's Slitherblade
							i(168273),	-- Shiver Venom Crossbow
							i(168477),	-- Tidebinder's Driftglobe
							i(168345),	-- Helm of the Inexorable Tide
							i(168359),	-- Abyssal Commander's Mantle
							i(168361),	-- Naga Centaur's Shellplate
							i(168341),	-- Siren Mystic's Vestments
							i(168387),	-- Palace Sentinel Vambraces
							i(168377),	-- Tideblood Bracers
							i(168386),	-- Gauntlets of Overflowing Chill
							i(168384),	-- Wavespine Clutch
							i(168371),	-- Seawrath Legwraps
							i(168390),	-- Sabatons of the Stalwart
							i(168905),	-- Shiver Venom Relic
						},
					}),
					e(2347, {	-- Blackwater Behemoth
						["crs"] = { 150653 },	-- Blackwater Behemoth
						["groups"] = {
							i(168900),	-- Diver's Folly
							i(168397),	-- Fang of the Behemoth
							i(168353),	-- Hood of Lightless Depths
							i(168342),	-- Fathom-Feeder's Mantle
							i(168362),	-- Trench Tyrant's Shoulderplates
							i(168343),	-- Blackwater Shimmerscale Vest
							i(168376),	-- Anglerfish Feelers
							i(168885),	-- Undercove Crushers
							i(168379),	-- Ship Swallower's Belt
							i(168389),	-- Fleetwrecker's Greaves
							i(168383),	-- Pelagos Predator's Legguards
							i(168373),	-- Eelskin Flippers
							i(168385),	-- Slipstreamer's Saltwalkers
							i(169304),	-- Leviathan's Lure
							i(169312),	-- Luminous Jellyweed
							i(169360),	-- Mindlost Bloodfrenzy (PET!)
						},
					}),
					e(2353, {	-- Radiance of Azshara
						["crs"] = { 152364 },	-- Radiance of Azshara
						["groups"] = {
							i(168478),	-- Monstrosity's Shipbreaker
							i(168475),	-- Bulwark of the Seaborn Avatar
							i(168336),	-- Handmaiden's Cowl of Sacrifice
							i(168360),	-- Warhelm of Dread Waters
							i(168348),	-- Shoulderpads of Frothing Rage
							i(168355),	-- Servitor's Heartguard
							i(168382),	-- Arcanamental Bindings
							i(168372),	-- Sea Sculptor's Cuffs
							i(168375),	-- Gloves of Unschackled Arcana
							i(168381),	-- Grips of the Scaled Arcanist
							i(168374),	-- Belt of Blind Devotion
							i(168388),	-- Storm-Tempered Girdle
							i(168378),	-- Leggings of the Stormborn
							i(168380),	-- Ancient Tempest Striders
							i(169313),	-- Phial of the Frigid Tempest
							i(169694),	-- Aqueous Reliquary
							i(170163),	-- Technique: Glyph of the Dark Depths (RECIPE!)
						},
					}),
				}),
				header(HEADERS.Achievement, 13719, {	-- Depths of the Devoted
					e(2354, {	-- Lady Ashvane
						["crs"] = { 152236 },	-- Lady Ashvane
						["groups"] = {
							i(168904),	-- Current-Weaver's Gavel
							i(168347),	-- Helm of Hideous Transformation
							i(168354),	-- Shoulderguards of Crushing Depths
							i(168367),	-- Barnacle-Crusted Breastplate
							i(168335),	-- Robes of Sunken Nobility
							i(168883),	-- Cultured Pearl Armbands
							i(168870),	-- Tanglekelp Waistwrap
							i(168876),	-- Priscilla's Fishnets
							i(168877),	-- Coralshell Warboots
							i(168889),	-- Boralus Noble's Seal
							i(169305),	-- Aquipotent Nautilus
							i(169311),	-- Arcing Razor Coral
							i(169310),	-- Ashvane's Bloodthirsty Coral
							i(169358),	-- Lightless Ambusher (PET!)
						},
					}),
					e(2351, {	-- Orgozoa
						["crs"] = { 152128 },	-- Orgozoa
						["groups"] = {
							i(168274),	-- Aqua-Pulse Trident
							i(168897),	-- Tentacle Crusher
							i(168893),	-- Hatchery Scraper
							i(168899),	-- Orgozoa's Paralytic Barb
							i(168894),	-- Squidhunter Speargun
							i(168476),	-- Great Reef Barrier
							i(168365),	-- Greathelm of the Tender
							i(168339),	-- Incubator's Bellcap
							i(168346),	-- Tidal Drifter's Shoulders
							i(168604),	-- Drape of the Hatcher
							i(168352),	-- Scalemail of Unnatural Selection
							i(168872),	-- Cephalid's Sash
							i(168875),	-- Formcrafter's Pants
							i(169319),	-- Dribbling Inkpod
							i(169309),	-- Zoatroid Egg Sac
						},
					}),
					e(2359, {	-- The Queen's Court
						["crs"] = {
							152852,	-- Pashmar the Fanatical
							152853,	-- Silivaz the Zealous
						},
						["groups"] = {
							i(168892),	-- Court Dagger of Sentencing
							i(168898),	-- Pashmar's Finial
							i(168896),	-- Stormtamer's Orb
							i(168357),	-- Silivaz's Skullguard
							i(168338),	-- Amice of the Reef Witch
							i(168364),	-- Pauldrons of Fanatical Might
							i(168350),	-- Tunic of the Sycophant
							i(168881),	-- Naga Executor's Greatbelt
							i(168886),	-- Hands of the Fanatic
							i(168879),	-- Ardent Worshipper's Boots
							i(168890),	-- Ring of the Highborne Courtier
							i(169315),	-- Edicts of the Faithless
							i(169316),	-- Stay of Execution
							i(169694),	-- Aqueous Reliquary
						},
					}),
				}),
				header(HEADERS.Achievement, 13725, {	-- The Circle of Stars
					e(2349, {	-- Za'qul, Harbinger of Ny'alotha
						["crs"] = { 150859 },	-- Za'qul, Harbinger of Ny'alotha
						["groups"] = {
							i(168902),	-- Dream's End
							i(168301),	-- Sever, Edge of Madness
							i(168349),	-- Shroud of Unmooring Whispers
							i(169588),	-- Gardbrace of Fractured Reality
							i(168391),	-- Cloak of Ill Tidings
							i(168363),	-- Dark Passenger's Breastplate
							i(168337),	-- Vestments of Creeping Terror
							i(168884),	-- Bindings of the Herald
							i(168882),	-- Shackles of Dissonance
							i(169308),	-- Chain of Suffering
							i(169307),	-- Vision of Demise
							i(169306),	-- Za'qul's Portal Key
							i(169362),	-- Nameless Octopode (PET!)
						},
					}),
					e(2361, {	-- Queen Azshara
						["crs"] = { 152910 },	-- Queen Azshara
						["groups"] = {
							i(168854),	-- Animated Elemental Heart
							i(168941),	-- Vitality Redistribution Lattice
							i(168275),	-- Anu-Azshara, Staff of the Eternal
							i(168887),	-- Gloves of Incomparable Beauty
							i(168888),	-- Handguards of the Highest-Born
							i(168871),	-- Beloved Monarch's Waistwrap
							i(168869),	-- Eternity Keeper's Greatbelt
							i(168874),	-- Cherished Empress's Leggings
							i(168873),	-- Tide Goddess's Wargreaves
							i(168880),	-- Slippers of the Sorceress-Queen
							i(168878),	-- Vethan's Icewalkers
							i(168891),	-- Cursed Lover's Ring
							i(169314),	-- Azshara's Font of Power
							i(169694),	-- Aqueous Reliquary
							i(169348),	-- Zanj'ir Poker (PET!)
						},
					}),
				}),
			}),
			d(DIFFICULTY.RAID.MULTI.NORMAL_PLUS, {
				["groups"] = {
					e(2352, {	-- Abyssal Commander Sivara
						["crs"] = { 151881 },	-- Abyssal Commander Sivara	-- Abyssal Commander Sivara
						["groups"] = {
							ach(13684),	-- You and What Army?
						},
					}),
					e(2347, {	-- Blackwater Behemoth
						["crs"] = { 150653 },	-- Blackwater Behemoth
						["groups"] = {
							ach(13628),	-- Intro to Marine Biology
							i(169360),	-- Mindlost Bloodfrenzy (PET!)
						},
					}),
					e(2353, {	-- Radiance of Azshara
						["crs"] = { 152364 },	-- Radiance of Azshara
						["groups"] = {
							ach(13767),	-- Fun Run
							i(169694),	-- Aqueous Reliquary
							i(170163),	-- Technique: Glyph of the Dark Depths (RECIPE!)
						},
					}),
					e(2354, {	-- Lady Ashvane
						["crs"] = { 152236 },	-- Lady Ashvane
						["groups"] = {
							ach(13629),	-- Simple Geometry
							i(169358),	-- Lightless Ambusher (PET!)
						},
					}),
					e(2351, {	-- Orgozoa
						["crs"] = { 152128 },	-- Orgozoa
						["groups"] = {
							ach(13724),	-- A Smack of Jellyfish
						},
					}),
					e(2359, {	-- The Queen's Court
						["crs"] = {
							152852,	-- Pashmar the Fanatical
							152853,	-- Silivaz the Zealous
						},
						["groups"] = {
							ach(13633),	-- If It Please the Court
							i(169694),	-- Aqueous Reliquary
						},
					}),
					e(2349, {	-- Za'qul, Harbinger of Ny'alotha
						["crs"] = { 150859 },	-- Za'qul, Harbinger of Ny'alotha
						["groups"] = {
							ach(13716),	-- Lactose Intolerant
							i(169362),	-- Nameless Octopode (PET!)
						},
					}),
					e(2361, {	-- Queen Azshara
						["crs"] = { 152910 },	-- Queen Azshara
						["groups"] = {
							ach(13768),	-- The Best of Us
							i(169694),	-- Aqueous Reliquary
							i(169348),	-- Zanj'ir Poker (PET!)
						},
					}),
				},
			}),
			d(DIFFICULTY.RAID.NORMAL, {
				n(ZONE_DROPS, {
					i(169930),	-- Handwraps of Unhindered Resonance
					i(169929),	-- Cuffs of Soothing Currents
					i(169932),	-- Brineweaver Guardian's Gloves
					i(169931),	-- Skulker's Blackwater Bands
					i(169934),	-- Deepcrawler's Handguards
					i(169933),	-- Abyssal Bubbler's Bracers
					i(169936),	-- Gauntlets of Crashing Tides
					i(169935),	-- Brutish Myrmidon's Vambraces
					i(168602),	-- Cloak of Blessed Depths
					i(170199, {	-- Zanj'ir Weapon Rack (TOY!)
						["crs"] = {
							155920,	-- Azsh'ari Galeblade
							155619,	-- Zanj'ir Honor Guard
						},
					}),
				}),
				e(2352, {	-- Abyssal Commander Sivara
					["crs"] = { 151881 },	-- Abyssal Commander Sivara	-- Abyssal Commander Sivara
					["groups"] = {
						i(168306),	-- Shiver Venom Lance
						i(168276),	-- Claw of the Myrmidon
						i(168901),	-- Royal Scaleguard's Battleaxe
						i(168903),	-- Scepter of the Azsh'ari
						i(168818),	-- Sivar's Slitherblade
						i(168273),	-- Shiver Venom Crossbow
						i(168477),	-- Tidebinder's Driftglobe
						i(168345),	-- Helm of the Inexorable Tide
						i(168359),	-- Abyssal Commander's Mantle
						i(168361),	-- Naga Centaur's Shellplate
						i(168341),	-- Siren Mystic's Vestments
						i(168387),	-- Palace Sentinel Vambraces
						i(168377),	-- Tideblood Bracers
						i(168386),	-- Gauntlets of Overflowing Chill
						i(168384),	-- Wavespine Clutch
						i(168371),	-- Seawrath Legwraps
						i(168390),	-- Sabatons of the Stalwart
						i(168905),	-- Shiver Venom Relic
					},
				}),
				e(2347, {	-- Blackwater Behemoth
					["crs"] = { 150653 },	-- Blackwater Behemoth
					["groups"] = {
						i(168900),	-- Diver's Folly
						i(168397),	-- Fang of the Behemoth
						i(168353),	-- Hood of Lightless Depths
						i(168342),	-- Fathom-Feeder's Mantle
						i(168362),	-- Trench Tyrant's Shoulderplates
						i(168343),	-- Blackwater Shimmerscale Vest
						i(168376),	-- Anglerfish Feelers
						i(168885),	-- Undercove Crushers
						i(168379),	-- Ship Swallower's Belt
						i(168389),	-- Fleetwrecker's Greaves
						i(168383),	-- Pelagos Predator's Legguards
						i(168373),	-- Eelskin Flippers
						i(168385),	-- Slipstreamer's Saltwalkers
						i(169304),	-- Leviathan's Lure
						i(169312),	-- Luminous Jellyweed
					},
				}),
				e(2353, {	-- Radiance of Azshara
					["crs"] = { 152364 },	-- Radiance of Azshara
					["groups"] = {
						i(168478),	-- Monstrosity's Shipbreaker
						i(168475),	-- Bulwark of the Seaborn Avatar
						i(168336),	-- Handmaiden's Cowl of Sacrifice
						i(168360),	-- Warhelm of Dread Waters
						i(168348),	-- Shoulderpads of Frothing Rage
						i(168355),	-- Servitor's Heartguard
						i(168382),	-- Arcanamental Bindings
						i(168372),	-- Sea Sculptor's Cuffs
						i(168375),	-- Gloves of Unschackled Arcana
						i(168381),	-- Grips of the Scaled Arcanist
						i(168374),	-- Belt of Blind Devotion
						i(168388),	-- Storm-Tempered Girdle
						i(168378),	-- Leggings of the Stormborn
						i(168380),	-- Ancient Tempest Striders
						i(169313),	-- Phial of the Frigid Tempest
					},
				}),
				e(2354, {	-- Lady Ashvane
					["crs"] = { 152236 },	-- Lady Ashvane
					["groups"] = {
						i(168904),	-- Current-Weaver's Gavel
						i(168347),	-- Helm of Hideous Transformation
						i(168354),	-- Shoulderguards of Crushing Depths
						i(168367),	-- Barnacle-Crusted Breastplate
						i(168335),	-- Robes of Sunken Nobility
						i(168883),	-- Cultured Pearl Armbands
						i(168870),	-- Tanglekelp Waistwrap
						i(168876),	-- Priscilla's Fishnets
						i(168877),	-- Coralshell Warboots
						i(168889),	-- Boralus Noble's Seal
						i(169305),	-- Aquipotent Nautilus
						i(169311),	-- Arcing Razor Coral
						i(169310),	-- Ashvane's Bloodthirsty Coral
					},
				}),
				e(2351, {	-- Orgozoa
					["crs"] = { 152128 },	-- Orgozoa
					["groups"] = {
						i(168274),	-- Aqua-Pulse Trident
						i(168897),	-- Tentacle Crusher
						i(168893),	-- Hatchery Scraper
						i(168899),	-- Orgozoa's Paralytic Barb
						i(168894),	-- Squidhunter Speargun
						i(168476),	-- Great Reef Barrier
						i(168365),	-- Greathelm of the Tender
						i(168339),	-- Incubator's Bellcap
						i(168346),	-- Tidal Drifter's Shoulders
						i(168604),	-- Drape of the Hatcher
						i(168352),	-- Scalemail of Unnatural Selection
						i(168872),	-- Cephalid's Sash
						i(168875),	-- Formcrafter's Pants
						i(169319),	-- Dribbling Inkpod
						i(169309),	-- Zoatroid Egg Sac
					},
				}),
				e(2359, {	-- The Queen's Court
					["crs"] = {
						152852,	-- Pashmar the Fanatical
						152853,	-- Silivaz the Zealous
					},
					["groups"] = {
						i(168892),	-- Court Dagger of Sentencing
						i(168898),	-- Pashmar's Finial
						i(168896),	-- Stormtamer's Orb
						i(168357),	-- Silivaz's Skullguard
						i(168338),	-- Amice of the Reef Witch
						i(168364),	-- Pauldrons of Fanatical Might
						i(168350),	-- Tunic of the Sycophant
						i(168881),	-- Naga Executor's Greatbelt
						i(168886),	-- Hands of the Fanatic
						i(168879),	-- Ardent Worshipper's Boots
						i(168890),	-- Ring of the H ighborne Courtier
						i(169315),	-- Edicts of the Faithless
						i(169316),	-- Stay of Execution
					},
				}),
				e(2349, {	-- Za'qul, Harbinger of Ny'alotha
					["crs"] = { 150859 },	-- Za'qul, Harbinger of Ny'alotha
					["groups"] = {
						i(168902),	-- Dream's End
						i(168301),	-- Sever, Edge of Madness
						i(168349),	-- Shroud of Unmooring Whispers
						i(169588),	-- Gardbrace of Fractured Reality
						i(168391),	-- Cloak of Ill Tidings
						i(168363),	-- Dark Passenger's Breastplate
						i(168337),	-- Vestments of Creeping Terror
						i(168884),	-- Bindings of the Herald
						i(168882),	-- Shackles of Dissonance
						i(169308),	-- Chain of Suffering
						i(169307),	-- Vision of Demise
						i(169306),	-- Za'qul's Portal Key
					},
				}),
				e(2361, {	-- Queen Azshara
					["crs"] = { 152910 },	-- Queen Azshara
					["groups"] = {
						i(168854),	-- Animated Elemental Heart
						i(168941),	-- Vitality Redistribution Lattice
						i(168275),	-- Anu-Azshara, Staff of the Eternal
						i(168887),	-- Gloves of Incomparable Beauty
						i(168888),	-- Handguards of the Highest-Born
						i(168871),	-- Beloved Monarch's Waistwrap
						i(168869),	-- Eternity Keeper's Greatbelt
						i(168874),	-- Cherished Empress's Leggings
						i(168873),	-- Tide Goddess's Wargreaves
						i(168880),	-- Slippers of the Sorceress-Queen
						i(168878),	-- Vethan's Icewalkers
						i(168891),	-- Cursed Lover's Ring
						i(169314),	-- Azshara's Font of Power
					},
				}),
			}),
			d(DIFFICULTY.RAID.MULTI.HEROIC_PLUS, {
				cr(150859, e(2349, {	-- Za'qul, Harbinger of Ny'alotha
					i(168868),	-- Pauldrons of Za'qul
				})),
			}),
			d(DIFFICULTY.RAID.HEROIC, {
				n(ZONE_DROPS, {
					i(169930),	-- Handwraps of Unhindered Resonance
					i(169929),	-- Cuffs of Soothing Currents
					i(169932),	-- Brineweaver Guardian's Gloves
					i(169931),	-- Skulker's Blackwater Bands
					i(169934),	-- Deepcrawler's Handguards
					i(169933),	-- Abyssal Bubbler's Bracers
					i(169936),	-- Gauntlets of Crashing Tides
					i(169935),	-- Brutish Myrmidon's Vambraces
					i(168602),	-- Cloak of Blessed Depths
				}),
				e(2352, {	-- Abyssal Commander Sivara
					["crs"] = { 151881 },	-- Abyssal Commander Sivara
					["groups"] = {
						i(168306),	-- Shiver Venom Lance
						i(168276),	-- Claw of the Myrmidon
						i(168901),	-- Royal Scaleguard's Battleaxe
						i(168903),	-- Scepter of the Azsh'ari
						i(168818),	-- Sivar's Slitherblade
						i(168273),	-- Shiver Venom Crossbow
						i(168477),	-- Tidebinder's Driftglobe
						i(168345),	-- Helm of the Inexorable Tide
						i(168359),	-- Abyssal Commander's Mantle
						i(168361),	-- Naga Centaur's Shellplate
						i(168341),	-- Siren Mystic's Vestments
						i(168387),	-- Palace Sentinel Vambraces
						i(168377),	-- Tideblood Bracers
						i(168386),	-- Gauntlets of Overflowing Chill
						i(168384),	-- Wavespine Clutch
						i(168371),	-- Seawrath Legwraps
						i(168390),	-- Sabatons of the Stalwart
						i(168905),	-- Shiver Venom Relic
					},
				}),
				e(2347, {	-- Blackwater Behemoth
					["crs"] = { 150653 },	-- Blackwater Behemoth
					["groups"] = {
						i(168900),	-- Diver's Folly
						i(168397),	-- Fang of the Behemoth
						i(168353),	-- Hood of Lightless Depths
						i(168342),	-- Fathom-Feeder's Mantle
						i(168362),	-- Trench Tyrant's Shoulderplates
						i(168343),	-- Blackwater Shimmerscale Vest
						i(168376),	-- Anglerfish Feelers
						i(168885),	-- Undercove Crushers
						i(168379),	-- Ship Swallower's Belt
						i(168389),	-- Fleetwrecker's Greaves
						i(168383),	-- Pelagos Predator's Legguards
						i(168373),	-- Eelskin Flippers
						i(168385),	-- Slipstreamer's Saltwalkers
						i(169304),	-- Leviathan's Lure
						i(169312),	-- Luminous Jellyweed
					},
				}),
				e(2353, {	-- Radiance of Azshara
					["crs"] = { 152364 },	-- Radiance of Azshara
					["groups"] = {
						i(168478),	-- Monstrosity's Shipbreaker
						i(168475),	-- Bulwark of the Seaborn Avatar
						i(168336),	-- Handmaiden's Cowl of Sacrifice
						i(168360),	-- Warhelm of Dread Waters
						i(168348),	-- Shoulderpads of Frothing Rage
						i(168355),	-- Servitor's Heartguard
						i(168382),	-- Arcanamental Bindings
						i(168372),	-- Sea Sculptor's Cuffs
						i(168375),	-- Gloves of Unschackled Arcana
						i(168381),	-- Grips of the Scaled Arcanist
						i(168374),	-- Belt of Blind Devotion
						i(168388),	-- Storm-Tempered Girdle
						i(168378),	-- Leggings of the Stormborn
						i(168380),	-- Ancient Tempest Striders
						i(169313),	-- Phial of the Frigid Tempest
					},
				}),
				e(2354, {	-- Lady Ashvane
					["crs"] = { 152236 },	-- Lady Ashvane
					["groups"] = {
						i(168904),	-- Current-Weaver's Gavel
						i(168347),	-- Helm of Hideous Transformation
						i(168354),	-- Shoulderguards of Crushing Depths
						i(168367),	-- Barnacle-Crusted Breastplate
						i(168335),	-- Robes of Sunken Nobility
						i(168883),	-- Cultured Pearl Armbands
						i(168870),	-- Tanglekelp Waistwrap
						i(168876),	-- Priscilla's Fishnets
						i(168877),	-- Coralshell Warboots
						i(168889),	-- Boralus Noble's Seal
						i(169305),	-- Aquipotent Nautilus
						i(169311),	-- Arcing Razor Coral
						i(169310),	-- Ashvane's Bloodthirsty Coral
					},
				}),
				e(2351, {	-- Orgozoa
					["crs"] = { 152128 },	-- Orgozoa
					["groups"] = {
						i(168274),	-- Aqua-Pulse Trident
						i(168897),	-- Tentacle Crusher
						i(168893),	-- Hatchery Scraper
						i(168899),	-- Orgozoa's Paralytic Barb
						i(168894),	-- Squidhunter Speargun
						i(168476),	-- Great Reef Barrier
						i(168365),	-- Greathelm of the Tender
						i(168339),	-- Incubator's Bellcap
						i(168346),	-- Tidal Drifter's Shoulders
						i(168604),	-- Drape of the Hatcher
						i(168352),	-- Scalemail of Unnatural Selection
						i(168872),	-- Cephalid's Sash
						i(168875),	-- Formcrafter's Pants
						i(169319),	-- Dribbling Inkpod
						i(169309),	-- Zoatroid Egg Sac
					},
				}),
				e(2359, {	-- The Queen's Court
					["crs"] = {
						152852,	-- Pashmar the Fanatical
						152853,	-- Silivaz the Zealous
					},
					["groups"] = {
						i(168892),	-- Court Dagger of Sentencing
						i(168898),	-- Pashmar's Finial
						i(168896),	-- Stormtamer's Orb
						i(168357),	-- Silivaz's Skullguard
						i(168338),	-- Amice of the Reef Witch
						i(168364),	-- Pauldrons of Fanatical Might
						i(168350),	-- Tunic of the Sycophant
						i(168881),	-- Naga Executor's Greatbelt
						i(168886),	-- Hands of the Fanatic
						i(168879),	-- Ardent Worshipper's Boots
						i(168890),	-- Ring of the H ighborne Courtier
						i(169315),	-- Edicts of the Faithless
						i(169316),	-- Stay of Execution
					},
				}),
				e(2349, {	-- Za'qul, Harbinger of Ny'alotha
					["crs"] = { 150859 },	-- Za'qul, Harbinger of Ny'alotha
					["groups"] = {
						i(168902),	-- Dream's End
						i(168301),	-- Sever, Edge of Madness
						i(168349),	-- Shroud of Unmooring Whispers
						i(169588),	-- Gardbrace of Fractured Reality
						i(168391),	-- Cloak of Ill Tidings
						i(168363),	-- Dark Passenger's Breastplate
						i(168337),	-- Vestments of Creeping Terror
						i(168884),	-- Bindings of the Herald
						i(168882),	-- Shackles of Dissonance
						i(169308),	-- Chain of Suffering
						i(169307),	-- Vision of Demise
						i(169306),	-- Za'qul's Portal Key
					},
				}),
				e(2361, {	-- Queen Azshara
					["crs"] = { 152910 },	-- Queen Azshara
					["groups"] = {
						ach(13784, {	-- Ahead of the Curve: Queen
							["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 },
						}),
						i(168942),	-- Mesh of Expanding Vitality
						i(168855),	-- Pulsing Elemental Hearth
						i(168275),	-- Anu-Azshara, Staff of the Eternal
						i(168887),	-- Gloves of Incomparable Beauty
						i(168888),	-- Handguards of the Highest-Born
						i(168871),	-- Beloved Monarch's Waistwrap
						i(168869),	-- Eternity Keeper's Greatbelt
						i(168874),	-- Cherished Empress's Leggings
						i(168873),	-- Tide Goddess's Wargreaves
						i(168880),	-- Slippers of the Sorceress-Queen
						i(168878),	-- Vethan's Icewalkers
						i(168891),	-- Cursed Lover's Ring
						i(169314),	-- Azshara's Font of Power
					},
				}),
			}),
			d(DIFFICULTY.RAID.MYTHIC, {
				n(ZONE_DROPS, {
					i(169930),	-- Handwraps of Unhindered Resonance
					i(169929),	-- Cuffs of Soothing Currents
					i(169932),	-- Brineweaver Guardian's Gloves
					i(169931),	-- Skulker's Blackwater Bands
					i(169934),	-- Deepcrawler's Handguards
					i(169933),	-- Abyssal Bubbler's Bracers
					i(169936),	-- Gauntlets of Crashing Tides
					i(169935),	-- Brutish Myrmidon's Vambraces
					i(168602),	-- Cloak of Blessed Depths
				}),
				e(2352, {	-- Abyssal Commander Sivara
					["crs"] = { 151881 },	-- Abyssal Commander Sivara
					["groups"] = {
						ach(13726),	-- Mythic: Abyssal Commander Sivara
						i(168306),	-- Shiver Venom Lance
						i(168276),	-- Claw of the Myrmidon
						i(168901),	-- Royal Scaleguard's Battleaxe
						i(168903),	-- Scepter of the Azsh'ari
						i(168818),	-- Sivar's Slitherblade
						i(168273),	-- Shiver Venom Crossbow
						i(168477),	-- Tidebinder's Driftglobe
						i(168345),	-- Helm of the Inexorable Tide
						i(168359),	-- Abyssal Commander's Mantle
						i(168361),	-- Naga Centaur's Shellplate
						i(168341),	-- Siren Mystic's Vestments
						i(168387),	-- Palace Sentinel Vambraces
						i(168377),	-- Tideblood Bracers
						i(168386),	-- Gauntlets of Overflowing Chill
						i(168384),	-- Wavespine Clutch
						i(168371),	-- Seawrath Legwraps
						i(168390),	-- Sabatons of the Stalwart
						i(168905),	-- Shiver Venom Relic
					},
				}),
				e(2347, {	-- Blackwater Behemoth
					["crs"] = { 150653 },	-- Blackwater Behemoth
					["groups"] = {
						ach(13728),	-- Mythic: Blackwater Behemoth
						i(168900),	-- Diver's Folly
						i(168397),	-- Fang of the Behemoth
						i(168353),	-- Hood of Lightless Depths
						i(168342),	-- Fathom-Feeder's Mantle
						i(168362),	-- Trench Tyrant's Shoulderplates
						i(168343),	-- Blackwater Shimmerscale Vest
						i(168376),	-- Anglerfish Feelers
						i(168885),	-- Undercove Crushers
						i(168379),	-- Ship Swallower's Belt
						i(168389),	-- Fleetwrecker's Greaves
						i(168383),	-- Pelagos Predator's Legguards
						i(168373),	-- Eelskin Flippers
						i(168385),	-- Slipstreamer's Saltwalkers
						i(169304),	-- Leviathan's Lure
						i(169312),	-- Luminous Jellyweed
					},
				}),
				e(2353, {	-- Radiance of Azshara
					["crs"] = { 152364 },	-- Radiance of Azshara
					["groups"] = {
						ach(13727),	-- Mythic: Radiance of Azshara
						i(168478),	-- Monstrosity's Shipbreaker
						i(168475),	-- Bulwark of the Seaborn Avatar
						i(168336),	-- Handmaiden's Cowl of Sacrifice
						i(168360),	-- Warhelm of Dread Waters
						i(168348),	-- Shoulderpads of Frothing Rage
						i(168355),	-- Servitor's Heartguard
						i(168382),	-- Arcanamental Bindings
						i(168372),	-- Sea Sculptor's Cuffs
						i(168375),	-- Gloves of Unschackled Arcana
						i(168381),	-- Grips of the Scaled Arcanist
						i(168374),	-- Belt of Blind Devotion
						i(168388),	-- Storm-Tempered Girdle
						i(168378),	-- Leggings of the Stormborn
						i(168380),	-- Ancient Tempest Striders
						i(169313),	-- Phial of the Frigid Tempest
					},
				}),
				e(2354, {	-- Lady Ashvane
					["crs"] = { 152236 },	-- Lady Ashvane
					["groups"] = {
						ach(13729),	-- Mythic: Lady Ashvane
						i(168904),	-- Current-Weaver's Gavel
						i(168347),	-- Helm of Hideous Transformation
						i(168354),	-- Shoulderguards of Crushing Depths
						i(168367),	-- Barnacle-Crusted Breastplate
						i(168335),	-- Robes of Sunken Nobility
						i(168883),	-- Cultured Pearl Armbands
						i(168870),	-- Tanglekelp Waistwrap
						i(168876),	-- Priscilla's Fishnets
						i(168877),	-- Coralshell Warboots
						i(168889),	-- Boralus Noble's Seal
						i(169305),	-- Aquipotent Nautilus
						i(169311),	-- Arcing Razor Coral
						i(169310),	-- Ashvane's Bloodthirsty Coral
					},
				}),
				e(2351, {	-- Orgozoa
					["crs"] = { 152128 },	-- Orgozoa
					["groups"] = {
						ach(13730),	-- Mythic: Orgozoa
						i(168274),	-- Aqua-Pulse Trident
						i(168897),	-- Tentacle Crusher
						i(168893),	-- Hatchery Scraper
						i(168899),	-- Orgozoa's Paralytic Barb
						i(168894),	-- Squidhunter Speargun
						i(168476),	-- Great Reef Barrier
						i(168365),	-- Greathelm of the Tender
						i(168339),	-- Incubator's Bellcap
						i(168346),	-- Tidal Drifter's Shoulders
						i(168604),	-- Drape of the Hatcher
						i(168352),	-- Scalemail of Unnatural Selection
						i(168872),	-- Cephalid's Sash
						i(168875),	-- Formcrafter's Pants
						i(169319),	-- Dribbling Inkpod
						i(169309),	-- Zoatroid Egg Sac
					},
				}),
				e(2359, {	-- The Queen's Court
					["crs"] = {
						152852,	-- Pashmar the Fanatical
						152853,	-- Silivaz the Zealous
					},
					["groups"] = {
						ach(13731),	-- Mythic:The Queen's Court
						i(168892),	-- Court Dagger of Sentencing
						i(168898),	-- Pashmar's Finial
						i(168896),	-- Stormtamer's Orb
						i(168357),	-- Silivaz's Skullguard
						i(168338),	-- Amice of the Reef Witch
						i(168364),	-- Pauldrons of Fanatical Might
						i(168350),	-- Tunic of the Sycophant
						i(168881),	-- Naga Executor's Greatbelt
						i(168886),	-- Hands of the Fanatic
						i(168879),	-- Ardent Worshipper's Boots
						i(168890),	-- Ring of the H ighborne Courtier
						i(169315),	-- Edicts of the Faithless
						i(169316),	-- Stay of Execution
					},
				}),
				e(2349, {	-- Za'qul, Harbinger of Ny'alotha
					["crs"] = { 150859 },	-- Za'qul, Harbinger of Ny'alotha
					["groups"] = {
						ach(13732),	-- Mythic: Za'qul
						i(168902),	-- Dream's End
						i(168301),	-- Sever, Edge of Madness
						i(168349),	-- Shroud of Unmooring Whispers
						i(169588),	-- Gardbrace of Fractured Reality
						i(168391),	-- Cloak of Ill Tidings
						i(168363),	-- Dark Passenger's Breastplate
						i(168337),	-- Vestments of Creeping Terror
						i(168884),	-- Bindings of the Herald
						i(168882),	-- Shackles of Dissonance
						i(169308),	-- Chain of Suffering
						i(169307),	-- Vision of Demise
						i(169306),	-- Za'qul's Portal Key
					},
				}),
				e(2361, {	-- Queen Azshara
					["crs"] = { 152910 },	-- Queen Azshara
					["groups"] = {
						ach(13733, {	-- Mythic: Queen Azshara
							title(404),	-- the Eternal
						}),
						ach(13740),	-- Mythic: Queen Azshara Guild Run
						ach(13785, {	-- Cutting Edge: Queen Azshara
							["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 },
						}),
						ach(13787, bubbleDownSelf({["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 } }, {	-- Hall of Fame: Queen Azshara (A)
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								title(409),	-- <Name>, Famed Slayer of Azshara
							},
						})),
						ach(13788, bubbleDownSelf({["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 } }, {	-- Hall of Fame: Queen Azshara (H)
							["races"] = HORDE_ONLY,
							["groups"] = {
								title(409),	-- <Name>, Famed Slayer of Azshara
							},
						})),
						i(168538, bubbleDownSelf({["timeline"] = { ADDED_8_2_0, REMOVED_9_0_1 } }, {	-- Dazzling Azerite Formation (Rank 4)
							["classes"] = TANKS,
						})),
						i(168857, bubbleDownSelf({["timeline"] = { ADDED_8_2_0, REMOVED_9_0_1 } }, {	-- Sparkling Elemental Heart (Rank 4)
						})),
						i(168944, bubbleDownSelf({["timeline"] = { ADDED_8_2_0, REMOVED_9_0_1 } }, {	-- Web of Unbridled Vitality (Rank 4)
							["classes"] = HEALERS,
						})),
						i(168275),	-- Anu-Azshara, Staff of the Eternal
						i(168887),	-- Gloves of Incomparable Beauty
						i(168888),	-- Handguards of the Highest-Born
						i(168871),	-- Beloved Monarch's Waistwrap
						i(168869),	-- Eternity Keeper's Greatbelt
						i(168874),	-- Cherished Empress's Leggings
						i(168873),	-- Tide Goddess's Wargreaves
						i(168880),	-- Slippers of the Sorceress-Queen
						i(168878),	-- Vethan's Icewalkers
						i(168891),	-- Cursed Lover's Ring
						i(169314),	-- Azshara's Font of Power
					},
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	inst(1179, {	-- The Eternal Palace
		-- Aqueous Reliquary LootIDs (This is a guess ... have to determine which ID is for which difficulty, - sadidorf)
		q(56961),	-- Radiance of Azshara Aqueous Reliquary LFR? LootID
		q(56962),	-- Radiance of Azshara Aqueous Reliquary NHC? LootID
		q(56964),	-- Radiance of Azshara Aqueous Reliquary HC? LootID
		q(56965),	-- Queen's Court Aqueous Reliquary LFR? LootID
		q(56966),	-- Queen's Court Aqueous Reliquary NHC? LootID
		q(56968),	-- Queen's Court Aqueous Reliquary HC? LootID
		q(56963),	-- Radiance of Azshara Aqueous Reliquary Mythic? LootID

		q(56948),	-- creating rank 1 Condensed Life-Force from Aqueous Reliquaries
		q(56949),	-- creating rank 2 Condensed Life-Force from Aqueous Reliquaries
		q(56525),	-- Killing heroic Azshara
		q(56967),	-- Mythic: The Queen's Court

		q(55754),	-- Abyssal Commander Sivara HC LootID
		q(55757),	-- Blackwater Behemoth HC LootID
		q(55755),	-- Radiance of Azshara HC LootID
		q(55758),	-- Lady Ashvane HC LootID
		q(55756),	-- Orgozoa HC LootID
		q(55760),	-- Queen's Court HC LootID
		q(55759),	-- Za'qul post-encounter RP
		q(56527),	-- Queen Azshara killed (LFR)
		q(56526),	-- Queen Azshara killed (Normal)
		q(55761),	-- Queen Azshara killed (Heroic)
		q(56524),	-- Queen Azshara killed (Mythic)
	}),
})));
