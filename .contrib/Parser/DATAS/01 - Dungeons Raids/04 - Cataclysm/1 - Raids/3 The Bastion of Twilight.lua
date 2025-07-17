-------------------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CATA, {
	applyclassicphase(CATA_PHASE_ONE, inst(72, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 }, }, {	-- The Bastion of Twilight
		["mapID"] = 294,
		["coord"] = { 34.2, 77.7, TWILIGHT_HIGHLANDS },
		["maps"] = { 295, 296 },
		["sharedLockout"] = 1,
		["isRaid"] = true,
		["lvl"] = 85,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4850, {	-- The Bastion of Twilight
					crit(13577, {	-- Halfus Wyrmbreaker
						["_encounter"] = { 156, DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC },
					}),
					crit(13576, {	-- Valiona and Theralion
						["_encounter"] = { 157, DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC },
					}),
					crit(13578, {	-- Ascendant Council
						["_encounter"] = { 158, DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC },
					}),
					crit(13579, {	-- Cho'gall
						["_encounter"] = { 167, DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC },
					}),
				}),
				ach(4986),	-- The Bastion of Twilight Guild Run
				ach(11754, {	-- Glamour of Twilight (The Bastion of Twilight and Blackwing Descent)
					["timeline"] = { ADDED_7_2_0 },
					["maps"] = {
						285,	-- Blackwing Descent (The Broken Hall)
						286,	-- Blackwing Descent (Vault of the Shadowflame)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(60211),	-- Bracers of the Dark Pool
				i(59525),	-- Chelley's Staff of Dark Mending
				i(60210),	-- Crossfire Carbine
				-- #if BEFORE MOP
				i(68608, {	-- Dragonwreck Throwing Axe
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
				-- #endif
				i(59901),	-- Heaving Plates of Protection
				i(60201),	-- Phase-Twister Leggings
				i(59521),	-- Soul Blade
				i(60202),	-- Tsanga's Helm
				i(59520),	-- Unheeded Warning
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC, {
				e(156, {	-- Halfus Wyrmbreaker
					["creatureID"] = 44600,
					["groups"] = {
						ach(5300),	-- The Only Escape
					},
				}),
				e(157, {	-- Theralion and Valiona
					["crs"] = {
						45992,	-- Valiona
						45993,	-- Theralion
					},
					["groups"] = {
						ach(4852, {	-- Double Dragon
							crit(13576),	-- Valiona and Theralion
							crit(16015, {	-- Twilight Fiends killed
								["cr"] = 49864,	-- Twilight Fiend
							}),
						}),
						i(152969, {	-- Twilight Clutch-Sister (PET!)
							["timeline"] = { ADDED_7_3_0 },
						}),
					},
				}),
				e(158, {	-- Ascendant Council
					["crs"] = {
						43735,	-- Elementium Monstrosity
						43686,	-- Ignacious
						43687,	-- Feludius
						43688,	-- Arion
						43689,	-- Terrastra
					},
					["groups"] = {
						ach(5311),	-- Elementary
						i(152970,	{	-- Bound Stream (PET!)
							["timeline"] = { ADDED_7_3_0 },
						}),
					},
				}),
				e(167, {	-- Cho'gall
					["creatureID"] = 43324,
					["groups"] = {
						ach(5312),	-- The Abyss Will Gaze Back Into You
						i(152972, {	-- Faceless Minion (PET!)
							["timeline"] = { ADDED_7_3_0 },
						}),
						ig(175159, {	-- Sinister Shadows (RI!)
							["timeline"] = { ADDED_8_3_0 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL, {
				e(156, {	-- Halfus Wyrmbreaker
					["creatureID"] = 44600,
					["groups"] = {
						i(59474),	-- Malevolence
						i(59484),	-- Book of Binding Will
						i(59481),	-- Helm of the Nether Scion
						i(59483),	-- Wyrmbreaker's Amulet
						i(59471),	-- Pauldrons of the Great Ettin
						i(59482),	-- Robes of the Burning Acolyte
						i(59470),	-- Bracers of Impossible Strength
						i(59475),	-- Bracers of the Bronze Flight
						i(59472),	-- Proto-Handler's Gauntlets
						i(59476),	-- Legguards of the Emerald Brood
						i(59469),	-- Storm Rider's Boots
						i(59473),	-- Essence of the Cyclone
					},
				}),
				e(157, {	-- Theralion and Valiona
					["crs"] = {
						45992,	-- Valiona
						45993,	-- Theralion
					},
					["groups"] = {
						i(63536),	-- Blade of the Witching Hour
						i(63533),	-- Fang of Twilight
						i(63532),	-- Dragonheart Piercer
						i(63531),	-- Daybreaker Helm
						i(63534),	-- Helm of Eldritch Authority
						i(59517),	-- Necklace of Strife
						i(59512),	-- Valiona's Medallion
						i(59516),	-- Drape of the Twins
						i(63535),	-- Waistguard of Hatred
						i(59518),	-- Ring of Rivalry
						i(59519),	-- Theralion's Mirror
						i(59515),	-- Vial of Stolen Memories
					},
				}),
				e(158, {	-- Ascendant Council
					["crs"] = {
						43735,	-- Elementium Monstrosity
						43686,	-- Ignacious
						43687,	-- Feludius
						43688,	-- Arion
						43689,	-- Terrastra
					},
					["groups"] = {
						i(59513),	-- Scepter of Ice
						i(59504),	-- Arion's Crown
						i(59509),	-- Glaciated Helm
						i(59510),	-- Feludius' Mantle
						i(59507),	-- Glittering Epidermis
						i(59505),	-- Gravitational Pull
						i(59511),	-- Hydrolance Gloves
						i(59502),	-- Dispersing Belt
						i(59503),	-- Terrastra's Legguards
						i(59508),	-- Treads of Liquid Ice
						i(59506),	-- Crushing Weight
						i(59514),	-- Heart of Ignacious
					},
				}),
				e(167, {	-- Cho'gall
					["creatureID"] = 43324,
					["groups"] = {
						i(64315, {	-- Mantle of the Forlorn Conqueror
							["sym"] = SYMLINKS.TIER_ELEVEN.CONQ.SHOULDER,
						}),
						i(64316, {	-- Mantle of the Forlorn Protector
							["sym"] = SYMLINKS.TIER_ELEVEN.PROT.SHOULDER,
						}),
						i(64314, {	-- Mantle of the Forlorn Vanquisher
							["sym"] = SYMLINKS.TIER_ELEVEN.VANQ.SHOULDER,
						}),
						i(59330),	-- Shalug'doom, the Axe of Unmaking
						i(59494),	-- "Uhn'agh Fash, the Darkest Betrayal"
						i(63680),	-- Twilight's Hammer
						i(59487),	-- Helm of Maddening Whispers
						i(59490),	-- Membrane of C'Thun
						i(59486),	-- Battleplate of the Apocalypse
						i(59497),	-- Shackles of the End of Days
						i(59498),	-- Hands of the Twilight Council
						i(59485),	-- Coil of Ten-Thousand Screams
						i(59499),	-- Kilt of the Forgotten Battle
						i(59495),	-- Treads of Hideous Transformation
						i(59501),	-- Signet of the Fifth Circle
						i(59500),	-- Fall of Mortality
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.HEROIC, {
				e(156, {	-- Halfus Wyrmbreaker
					["creatureID"] = 44600,
					["groups"] = {
						ach(5118),	-- Heroic: Halfus Wyrmbreaker
						i(67423),	-- Chest of the Forlorn Conqueror
						i(67424),	-- Chest of the Forlorn Protector
						i(67425),	-- Chest of the Forlorn Vanquisher
						i(65139),	-- Malevolence
						i(65133),	-- Book of Binding Will
						i(65136),	-- Helm of the Nether Scion
						i(65134),	-- Wyrmbreaker's Amulet
						i(65142),	-- Pauldrons of the Great Ettin
						i(65135),	-- Robes of the Burning Acolyte
						i(65143),	-- Bracers of Impossible Strength
						i(65138),	-- Bracers of the Bronze Flight
						i(65141),	-- Proto-Handler's Gauntlets
						i(65137),	-- Legguards of the Emerald Brood
						i(65144),	-- Storm Rider's Boots
						i(65140),	-- Essence of the Cyclone
					},
				}),
				e(157, {	-- Theralion and Valiona
					["crs"] = {
						45992,	-- Valiona
						45993,	-- Theralion
					},
					["groups"] = {
						ach(5117),	-- Heroic: Valiona and Theralion
						i(65091),	-- Blade of the Witching Hour
						i(65094),	-- Fang of Twilight
						i(65095),	-- Dragonheart Piercer
						i(65096),	-- Daybreaker Helm
						i(65093),	-- Helm of Eldritch Authority
						i(65107),	-- Necklace of Strife
						i(65112),	-- Valiona's Medallion
						i(65108),	-- Drape of the Twins
						i(65092),	-- Waistguard of Hatred
						i(65106),	-- Ring of Rivalry
						i(65105),	-- Theralion's Mirror
						i(65109),	-- Vial of Stolen Memories
					},
				}),
				e(158, {	-- Ascendant Council
					["crs"] = {
						43735,	-- Elementium Monstrosity
						43686,	-- Ignacious
						43687,	-- Feludius
						43688,	-- Arion
						43689,	-- Terrastra
					},
					["groups"] = {
						ach(5119),	-- Heroic: Ascendant Council
						i(65111),	-- Scepter of Ice
						i(65120),	-- Arion's Crown
						i(65115),	-- Glaciated Helm
						i(65114),	-- Feludius' Mantle
						i(65117),	-- Glittering Epidermis
						i(65119),	-- Gravitational Pull
						i(65113),	-- Hydrolance Gloves
						i(65122),	-- Dispersing Belt
						i(65121),	-- Terrastra's Legguards
						i(65116),	-- Treads of Liquid Ice
						i(65118),	-- Crushing Weight
						i(65110),	-- Heart of Ignacious
					},
				}),
				e(167, {	-- Cho'gall
					["creatureID"] = 43324,
					["groups"] = {
						ach(5120),	-- Heroic: Cho'gall
						ach(5461),	-- Heroic: Cho'gall Guild Run
						i(65088),	-- Shoulders of the Forlorn Conqueror
						i(65087),	-- Shoulders of the Forlorn Protector
						i(65089),	-- Shoulders of the Forlorn Vanquisher
						i(65145),	-- Shalug'doom, the Axe of Unmaking
						i(65090),	-- Twilight's Hammer
						i(68600),	-- Uhn'agh Fash, the Darkest Betrayal
						i(65130),	-- Helm of Maddening Whispers
						i(65129),	-- Membrane of C'Thun
						i(65131),	-- Battleplate of the Apocalypse
						i(65127),	-- Shackles of the End of Days
						i(65126),	-- Hands of the Twilight Council
						i(65132),	-- Coil of Ten-Thousand Screams
						i(65125),	-- Kilt of the Forgotten Battle
						i(65128),	-- Treads of Hideous Transformation
						i(65123),	-- Signet of the Fifth Circle
						i(65124),	-- Fall of Mortality
					},
				}),
				e(168, {	-- Sinestra
					["creatureID"] = 45213,
					["groups"] = {
						un(REMOVED_FROM_GAME, ach(5313)),	-- I Can't Hear You Over the Sound of How Awesome I Am
						ach(5121, {	-- Heroic: Sinestra
							title(186),	-- Dragonslayer
						}),
						un(REMOVED_FROM_GAME, ach(5464)),	-- Heroic: Sinestra Guild Run
						un(REMOVED_FROM_GAME, ach(5411)),	-- Realm First! Sinestra
						i(60237),	-- Crown of the Twilight Queen
						i(60227),	-- Caelestrasz's Will
						i(60232),	-- Shroud of Endless Grief
						i(60234),	-- Bindings of Bleak Betrayal
						i(60238),	-- Bracers of the Dark Mother
						i(60228),	-- Bracers of the Mat'redor
						i(60231),	-- Belt of the Fallen Brood
						i(60230),	-- Twilight Scale Leggings
						i(60235),	-- Boots of Az'galada
						i(60236),	-- Nightmare Rider's Boots
						i(60229),	-- War-Torn Crushers
						i(60226),	-- Dargonax's Signet
						i(60233),	-- Shard of Woe
					},
				}),
			}),
		},
	}))),
}));