-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	applyclassicphase(MOP_PHASE_LANDFALL, inst(320, {	-- Terrace of Endless Spring
		["isRaid"] = true,
		["coord"] = { 48.4, 61.4, THE_VEILED_STAIR },
		["maps"] = { 456 },	-- Terrace of Endless Spring
		["sharedLockout"] = 1,
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(6689, {	-- Terrace of Endless Spring
					crit(19518, {	-- Protectors of the Endless
						["_encounter"] = { 683, DIFFICULTY.RAID.FINDER },
					}),
					crit(19519, {	-- Tsulong
						["_encounter"] = { 742, DIFFICULTY.RAID.FINDER },
					}),
					crit(19520, {	-- Lei Shi
						["_encounter"] = { 729, DIFFICULTY.RAID.FINDER },
					}),
					crit(19521, {	-- Sha of Fear
						["_encounter"] = { 709, DIFFICULTY.RAID.FINDER },
					}),
				}),
				ach(6670),	-- Terrace of Endless Spring Guild Run
			}),
			n(COMMON_BOSS_DROPS, {
				i(87208, {	-- Sigil of Power
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
				}),
				i(87209, {	-- Sigil of Wisdom
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
				}),
			}),
			d(DIFFICULTY.RAID.FINDER, {	-- Queue NPC
				["crs"] = { 80633 },	-- Lorewalker Han <Raid Finder Storyteller>
				["coord"] = { 83.0, 30.6, VALE_OF_ETERNAL_BLOSSOMS },
			}),
			d(DIFFICULTY.RAID.FINDER, {
				["ignoreBonus"] = true,
				["g"] = {
					i(95617, {	-- Dividends of the Everlasting Spring
						["description"] = "Since the introduction of Legacy Loot, this bag is only obtainable if you queue up as a Level 91-100 for the intended raid.  If you are 101+ then you will need to seek out each item based on their original sources.  This change occured in Patch 8.0.1.",
						["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },
						["sym"] = {
							{ "select", "itemID", 95618 },
							{ "pop" },
						},
					}),
					header(HEADERS.Achievement, 6689, {	-- Terrace of Endless Spring
						e(683, {	-- Protectors of the Endless
							["crs"] = {
								60586,	-- Elder Asani
								60585,	-- Elder Regail
								60583,	-- Protector Kaolan
							},
							["g"] = {
								i(86878),	-- Asani's Uncleansed Sandals
								i(86868),	-- Bracers of Defiled Earth
								i(86876),	-- Casque of Expelled Corruption
								i(86874),	-- Cloak of Overwhelming Corruption
								i(86875),	-- Cuffs of the Corrupted Waters
								i(86870),	-- Deepwater Greatboots
								i(86872),	-- Kaolan's Withering Necklace
								i(89978),	-- Legguards of Failing Purification
								i(86877),	-- Lightning Prisoner's Boots
								i(86869),	-- Regail's Band of the Endless
								i(86909),	-- Regail's Crackling Dagger
								i(86871),	-- Shackle of Eversparks
								i(89979),	-- Waterborne Shoulderguards
								i(86873),	-- Watersoul Signet
							},
						}),
						e(742, {	-- Tsulong
							["crs"] = { 62442 },	-- Tsulong
							["g"] = {
								i(86884),	-- Belt of Embodied Terror
								i(86900),	-- Binder's Chain of Unending Summer
								i(86883),	-- Daybreak Drape
								i(86880),	-- Dread Shadow Ring
								i(89983),	-- Fear-Blackened Leggings
								i(86879),	-- Gao-Rei, Staff of the Legendary Protector
								i(89980),	-- Gauntlets of the Shadow's Caress
								i(89981),	-- Grasps of Serpentine Might
								i(86895),	-- Healer's Belt of Final Winter
								i(86896),	-- Invoker's Belt of Final Winter
								i(86886),	-- Loshan, Terror Incarnate
								i(86902),	-- Mender's Girdle of Endless Spring
								i(86904),	-- Patroller's Girdle of Endless Spring
								i(86903),	-- Protector's Girdle of Endless Spring
								i(86901),	-- Ranger's Chain of Unending Summer
								i(86888),	-- Sandals of the Blackest Night
								i(89982),	-- Shoulderpads of Twisted Fate
								i(86887),	-- Sollerets of Instability
								i(86897),	-- Sorcerer's Belt of Final Winter
								i(86885),	-- Spirits of the Sun
								i(86899),	-- Stalker's Cord of Eternal Autumn
								i(86881),	-- Stuff of Nightmares
								i(86882),	-- Sunwrought Mail Hauberk
								i(86898),	-- Weaver's Cord of Eternal Autumn
								i(167051, {	-- Azure Windseeker (PET!)
									["timeline"] = { ADDED_8_1_5 },
								}),
							},
						}),
						e(729, {	-- Lei Shi
							["crs"] = { 62983 },	-- Lei Shi
							["g"] = {
								i(89277, {	-- Shoulders of the Shadowy Conqueror
									["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								}),
								i(89278),	-- Shoulders of the Shadowy Protector
								i(89276),	-- Shoulders of the Shadowy Vanquisher
								i(86900),	-- Binder's Chain of Unending Summer
								i(86891),	-- Cuirass of the Animated Protector
								i(86894),	-- Darkmist Vortex
								i(86895),	-- Healer's Belt of Final Winter
								i(86896),	-- Invoker's Belt of Final Winter
								i(86893),	-- Jin'ya, Orb of the Waterspeaker
								i(86902),	-- Mender's Girdle of Endless Spring
								i(86904),	-- Patroller's Girdle of Endless Spring
								i(86903),	-- Protector's Girdle of Endless Spring
								i(86901),	-- Ranger's Chain of Unending Summer
								i(86892),	-- Robes of the Unknown Fear
								i(86897),	-- Sorcerer's Belt of Final Winter
								i(86910),	-- Spiritsever
								i(86899),	-- Stalker's Cord of Eternal Autumn
								i(86889),	-- Taoren, the Soul Burner
								i(86890),	-- Terror in the Mists
								i(86898),	-- Weaver's Cord of Eternal Autumn
								i(167052, {	-- Spirit of the Spring (PET!)
									["timeline"] = { ADDED_8_1_5 },
								}),
							},
						}),
						e(709, {	-- Sha of Fear
							["crs"] = { 60999 },	-- Sha of Fear
							["g"] = {
								i(89274, {	-- Helm of the Shadowy Conqueror
									["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								}),
								i(89275),	-- Helm of the Shadowy Protector
								i(89273),	-- Helm of the Shadowy Vanquisher
								i(87210),	-- Chimera of Fear
								i(86908),	-- Dreadwoven Leggings of Failure
								i(86907),	-- Essence of Terror
								i(86906),	-- Kilrak, Jaws of Terror
								i(89984),	-- Robes of Pinioned Eyes
								i(89986),	-- Shadowgrip Girdle
								i(86905),	-- Shin'ka, Execution of Dominion
								i(89985),	-- Wrap of Instant Petrification
								i(138805, {	-- Illusion: Jade Spirit (ILLUSION!)
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(122199, {	-- Music Roll: Heart of Pandaria
									["timeline"] = { ADDED_6_1_0 },
								}),
							},
						}),
					}),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.ALL, {
				n(ZONE_DROPS, {
					i(86238),	-- Pattern: Chestguard of Nemeses (RECIPE!)
					i(86272),	-- Pattern: Fists of Lightning (RECIPE!)
					i(86279),	-- Pattern: Liferuned Leather Gloves (RECIPE!)
					i(86280),	-- Pattern: Murderer's Gloves (RECIPE!)
					i(86281),	-- Pattern: Nightfire Robe (RECIPE!)
					i(86283),	-- Pattern: Raiment of Blood and Bone (RECIPE!)
					i(86284),	-- Pattern: Raven Lord's Gloves (RECIPE!)
					i(86297),	-- Pattern: Stormbreaker Chestguard (RECIPE!)
					i(86379),	-- Pattern: Robe of Eternal Rule (RECIPE!)
					i(86380),	-- Pattern: Imperial Silk Gloves (RECIPE!)
					i(86381),	-- Pattern: Legacy of the Emperor (RECIPE!)
					i(86382),	-- Pattern: Touch of the Light (RECIPE!)
					i(87408),	-- Plans: Unyielding Bloodplate (RECIPE!)
					i(87409),	-- Plans: Gauntlets of Battle Command (RECIPE!)
					i(87410),	-- Plans: Ornate Battleplate of the Master (RECIPE!)
					i(87411),	-- Plans: Bloodforged Warfists (RECIPE!)
					i(87412),	-- Plans: Chestplate of Limitless Faith (RECIPE!)
					i(87413),	-- Plans: Gauntlets of Unbound Devotion (RECIPE!)
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC, {
				e(683, {	-- Protectors of the Endless
					["crs"] = {
						60586,	-- Elder Asani
						60585,	-- Elder Regail
						60583,	-- Protector Kaolan
					},
					["g"] = {
						ach(6717, {	-- Power Overwhelming
							crit(19624, {	-- Protector Kaolan defeated last
								["cr"] = 60583,	-- Protector Kaolan
							}),
							crit(19625, {	-- Elder Regail defeated last
								["cr"] = 60585,	-- Elder Regail
							}),
							crit(19626, {	-- Elder Asani defeated last
								["cr"] = 60586,	-- Elder Asani
							}),
						}),
					},
				}),
				e(742, {	-- Tsulong
					["crs"] = { 62442 },	-- Tsulong
					["g"] = {
						ach(6933),	-- Who's Got Two Green Thumbs?
						i(167051, {	-- Azure Windseeker (PET!)
							["timeline"] = { ADDED_8_1_5 },
						}),
					},
				}),
				e(729, {	-- Lei Shi
					["crs"] = { 62983 },	-- Lei Shi
					["g"] = {
						ach(6824),	-- Face Clutchers
						i(167052, {	-- Spirit of the Spring (PET!)
							["timeline"] = { ADDED_8_1_5 },
						}),
					},
				}),
				e(709, {	-- Sha of Fear
					["crs"] = { 60999 },	-- Sha of Fear
					["g"] = {
						ach(6825),	-- The Mind-Killer
						ach(8248, {	-- Ahead of the Curve: Sha of Fear
							["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
						}),
						i(138805, {	-- Illusion: Jade Spirit (ILLUSION!)
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(122199, {	-- Music Roll: Heart of Pandaria
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL, {
				["ignoreBonus"] = true,
				["g"] = {
					e(683, {	-- Protectors of the Endless
						["crs"] = {
							60583,	-- Protector Kaolan
							60586,	-- Elder Asani
							60585,	-- Elder Regail
						},
						["g"] = {
							n(QUALITY_ELITE, {
								["description"] = "You must kill Protector Kaolan last!",
								["g"] = {
									i(90528),	-- Asani's Uncleansed Sandals (Elite)
									i(90520),	-- Bracers of Defiled Earth (Elite)
									i(90530),	-- Casque of Expelled Corruption (Elite)
									i(90526),	-- Cloak of Overwhelming Corruption (Elite)
									i(90524),	-- Cuffs of the Corrupted Waters (Elite)
									i(90521),	-- Deepwater Greatboots (Elite)
									i(90523),	-- Kaolan's Withering Necklace (Elite)
									i(90518),	-- Legguards of Failing Purification (Elite)
									i(90529),	-- Lightning Prisoner's Boots (Elite)
									i(90517),	-- Regail's Band of the Endless (Elite)
									i(90527),	-- Regail's Crackling Dagger (Elite)
									i(90522),	-- Shackle of Eversparks (Elite)
									i(90519),	-- Waterborne Shoulderguards (Elite)
									i(90525),	-- Watersoul Signet (Elite)
								},
							}),
							i(86320),	-- Asani's Uncleansed Sandals
							i(86230),	-- Bracers of Defiled Earth
							i(86318),	-- Casque of Expelled Corruption
							i(86316),	-- Cloak of Overwhelming Corruption
							i(86317),	-- Cuffs of the Corrupted Waters
							i(86232),	-- Deepwater Greatboots
							i(86234),	-- Kaolan's Withering Necklace
							i(89841),	-- Legguards of Failing Purification
							i(86319),	-- Lightning Prisoner's Boots
							i(86231),	-- Regail's Band of the Endless
							i(86390),	-- Regail's Crackling Dagger
							i(86233),	-- Shackle of Eversparks
							i(89885),	-- Waterborne Shoulderguards
							i(86315),	-- Watersoul Signet
						},
					}),
					e(742, {	-- Tsulong
						["crs"] = { 62442 },	-- Tsulong
						["g"] = {
							i(86326),	-- Belt of Embodied Terror
							i(86342),	-- Binder's Chain of Unending Summer
							i(86325),	-- Daybreak Drape
							i(86322),	-- Dread Shadow Ring
							i(89884),	-- Fear-Blackened Leggings
							i(86321),	-- Gao-Rei, Staff of the Legendary Protector
							i(89842),	-- Gauntlets of the Shadow's Caress
							i(89843),	-- Grasps of Serpentine Might
							i(86337),	-- Healer's Belt of Final Winter
							i(86338),	-- Invoker's Belt of Final Winter
							i(86328),	-- Loshan, Terror Incarnate
							i(86383),	-- Mender's Girdle of Endless Spring
							i(86385),	-- Patroller's Girdle of Endless Spring
							i(86384),	-- Protector's Girdle of Endless Spring
							i(86343),	-- Ranger's Girdle of Unending Summer
							i(86330),	-- Sandals of the Blackest Night
							i(89883),	-- Shoulderpads of Twisted Fate
							i(86329),	-- Sollerets of Instability
							i(86339),	-- Sorceror's Belt of Final Winter
							i(86327),	-- Spirits of the Sun
							i(86341),	-- Stalker's Cord of Eternal Autumn
							i(86323),	-- Stuff of Nightmares
							i(86324),	-- Sunwrought Mail Hauberk
							i(86340),	-- Weaver's Cord of Eternal Autumn
						},
					}),
					e(729, {	-- Lei Shi
						["crs"] = { 62983 },	-- Lei Shi
						["g"] = {
							i(89246, {	-- Shoulders of the Shadowy Conqueror
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
							}),
							i(89247),	-- Shoulders of the Shadowy Protector
							i(89248),	-- Shoulders of the Shadowy Vanquisher
							i(86342),	-- Binder's Chain of Unending Summer
							i(86333),	-- Cuirass of the Animated Protector
							i(86336),	-- Darkmist Vortex
							i(86337),	-- Healer's Belt of Final Winter
							i(86338),	-- Invoker's Belt of Final Winter
							i(86335),	-- Jin'ya, Orb of the Waterspeaker
							i(86383),	-- Mender's Girdle of Endless Spring
							i(86385),	-- Patroller's Girdle of Endless Spring
							i(86384),	-- Protector's Girdle of Endless Spring
							i(86343),	-- Ranger's Chain of Unending Summer
							i(86334),	-- Robes of the Unknown Fear
							i(86339),	-- Sorceror's Belt of Final Winter
							i(86391),	-- Spiritsever
							i(86341),	-- Stalker's Cord of Eternal Autumn
							i(86331),	-- Taoren, the Soul Burner
							i(86332),	-- Terror in the Mists
							i(86340),	-- Weaver's Cord of Eternal Autumn
						},
					}),
					e(709, {	-- Sha of Fear
						["crs"] = { 60999 },	-- Sha of Fear
						["g"] = {
							i(89235, {	-- Helm of the Shadowy Conqueror
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
							}),
							i(89236),	-- Helm of the Shadowy Protector
							i(89234),	-- Helm of the Shadowy Vanquisher
							i(87210),	-- Chimera of Fear
							i(86389),	-- Dreadwoven Leggings of Failure
							i(86388),	-- Essence of Terror
							i(86387),	-- Kilrak, Jaws of Terror
							i(89887),	-- Robes of Pinioned Eyes
							i(89839),	-- Shadowgrip Girdle
							i(86386),	-- Shin'ka, Execution of Dominion
							i(89886),	-- Wrap of Instant Petrification
						},
					}),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.HEROIC, {
				["ignoreBonus"] = true,
				["g"] = {
					e(683, {	-- Protectors of the Endless
						["crs"] = {
							60583,	-- Protector Kaolan
							60586,	-- Elder Asani
							60585,	-- Elder Regail
						},
						["g"] = {
							ach(6731),	-- Heroic: Protectors of the Endless
							n(QUALITY_ELITE, {
								["description"] = "You must kill Protector Kaolan last!",
								["g"] = {
									i(90514),	-- Asani's Uncleansed Sandals (Elite)
									i(90506),	-- Bracers of Defiled Earth (Elite)
									i(90516),	-- Casque of Expelled Corruption (Elite)
									i(90512),	-- Cloak of Overwhelming Corruption (Elite)
									i(90510),	-- Cuffs of the Corrupted Waters (Elite)
									i(90507),	-- Deepwater Greatboots (Elite)
									i(90509),	-- Kaolan's Withering Necklace (Elite)
									i(90504),	-- Legguards of Failing Purification (Elite)
									i(90515),	-- Lightning Prisoner's Boots (Elite)
									i(90503),	-- Regail's Band of the Endless (Elite)
									i(90513),	-- Regail's Crackling Dagger (Elite)
									i(90508),	-- Shackle of Eversparks (Elite)
									i(90505),	-- Waterborne Shoulderguards (Elite)
									i(90511),	-- Watersoul Signet (Elite)
								},
							}),
							i(87153),	-- Asani's Uncleansed Sandals
							i(87145),	-- Bracers of Defiled Earth
							i(87155),	-- Casque of Expelled Corruption
							i(87150),	-- Cloak of Overwhelming Corruption
							i(87149),	-- Cuffs of the Corrupted Waters
							i(87146),	-- Deepwater Greatboots
							i(87148),	-- Kaolan's Withering Necklace
							i(89943),	-- Legguards of Failing Purification
							i(87154),	-- Lightning Prisoner's Boots
							i(87144),	-- Regail's Band of the Endless
							i(87152),	-- Regail's Crackling Dagger
							i(87147),	-- Shackle of Eversparks
							i(89944),	-- Waterborne Shoulderguards
							i(87151),	-- Watersoul Signet
						},
					}),
					e(742, {	-- Tsulong
						["crs"] = { 62442 },	-- Tsulong
						["g"] = {
							ach(6732),	-- Heroic: Tsulong
							i(87161),	-- Belt of Embodied Terror
							i(87183),	-- Binder's Chain of Unending Summer
							i(87159),	-- Daybreak Drape
							i(87158),	-- Dread Shadow Ring
							i(89948),	-- Fear-Blackened Leggings
							i(87156),	-- Gao-Rei, Staff of the Legendary Protector
							i(89945),	-- Gauntlets of the Shadow's Caress
							i(89946),	-- Grasps of Serpentine Might
							i(87178),	-- Healer's Belt of Final Winter
							i(87177),	-- Invoker's Belt of Final Winter
							i(87164),	-- Loshan, Terror Incarnate
							i(87184),	-- Mender's Girdle of Endless Spring
							i(87186),	-- Patroller's Girdle of Endless Spring
							i(87185),	-- Protector's Girdle of Endless Spring
							i(87182),	-- Ranger's Chain of Unending Summer
							i(87162),	-- Sandals of the Blackest Night
							i(89947),	-- Shoulderpads of Twisted Fate
							i(87165),	-- Sollerets of Instability
							i(87179),	-- Sorceror's Belt of Final Winter
							i(87163),	-- Spirits of the Sun
							i(87180),	-- Stalker's Cord of Eternal Autumn
							i(87160),	-- Stuff of Nightmares
							i(87157),	-- Sunwrought Mail Hauberk
							i(87181),	-- Weaver's Cord of Eternal Autumn
						},
					}),
					e(729, {	-- Lei Shi
						["crs"] = { 62983 },	-- Lei Shi
						["g"] = {
							ach(6733),	-- Heroic: Lei Shi
							i(89262, {	-- Shoulders of the Shadowy Conqueror
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
							}),
							i(89263),	-- Shoulders of the Shadowy Protector
							i(89261),	-- Shoulders of the Shadowy Vanquisher
							i(87183),	-- Binder's Chain of Unending Summer
							i(87171),	-- Cuirass of the Animated Protector
							i(87172),	-- Darkmist Vortex
							i(87178),	-- Healer's Belt of Final Winter
							i(87177),	-- Invoker's Belt of Final Winter
							i(87170),	-- Jin'ya, Orb of the Waterspeaker
							i(87184),	-- Mender's Girdle of Endless Spring
							i(87186),	-- Patroller's Girdle of Endless Spring
							i(87185),	-- Protector's Girdle of Endless Spring
							i(87182),	-- Ranger's Chain of Unending Summer
							i(87169),	-- Robes of the Unknown Fear
							i(87179),	-- Sorceror's Belt of Final Winter
							i(87166),	-- Spiritsever
							i(87180),	-- Stalker's Cord of Eternal Autumn
							i(87168),	-- Taoren, the Soul Burner
							i(87167),	-- Terror in the Mists
							i(87181),	-- Weaver's Cord of Eternal Autumn
						},
					}),
					e(709, {	-- Sha of Fear
						["crs"] = { 60999 },	-- Sha of Fear
						["g"] = {
							ach(6734, {	-- Heroic: Sha of Fear
								title(198),	-- the Fearless
							}),
							ach(7487, {	-- Cutting Edge: Sha of Fear
								["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
							}),
							ach(6676),	-- Heroic: Sha of Fear Guild Run
							ach(6678, {	-- Realm First! Sha of Fear
								["timeline"] = { ADDED_5_0_4, REMOVED_5_1_0 },
							}),
							i(89259, {	-- Helm of the Shadowy Conqueror
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
							}),
							i(89260),	-- Helm of the Shadowy Protector
							i(89258),	-- Helm of the Shadowy Vanquisher
							i(87210),	-- Chimera of Fear
							i(87174),	-- Dreadwoven Leggings of Failure
							i(87175),	-- Essence of Terror
							i(87173),	-- Kilrak, Jaws of Terror
							i(89949),	-- Robes of Pinioned Eyes
							i(89951),	-- Shadowgrip Girdle
							i(87176),	-- Shin'ka, Execution of Dominion
							i(89950),	-- Wrap of Instant Petrification
						},
					}),
				},
			}),
		},
	})),
})));
