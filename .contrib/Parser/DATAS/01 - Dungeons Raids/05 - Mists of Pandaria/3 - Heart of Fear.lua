-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	applyclassicphase(MOP_PHASE_LANDFALL, inst(330, {	-- Heart of Fear
		["isRaid"] = true,
		["coord"] = { 39.0, 34.9, DREAD_WASTES },	-- Heart of Fear
		["maps"] = {
			474,	-- Oratorium of the Voice
			475,	-- Heart of Fear
		},
		["sharedLockout"] = 1,
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(6718, {	-- The Dread Approach
					crit(19628, {	-- Imperial Vizier Zor'lok
						["_encounter"] = { 745, DIFFICULTY.RAID.FINDER },
					}),
					crit(19629, {	-- Blade Lord Ta'yak
						["_encounter"] = { 744, DIFFICULTY.RAID.FINDER },
					}),
					crit(19632, {	-- Garalon
						["_encounter"] = { 713, DIFFICULTY.RAID.FINDER },
					}),
				}),
				ach(6845, {	-- Nightmare of Shek'zeer
					crit(19631, {	-- Wind Lord Mel'jarak
						["_encounter"] = { 741, DIFFICULTY.RAID.FINDER },
					}),
					crit(19633, {	-- Amber-Shaper Un'sok
						["_encounter"] = { 737, DIFFICULTY.RAID.FINDER },
					}),
					crit(19634, {	-- Grand Empress Shek'zeer
						["_encounter"] = { 743, DIFFICULTY.RAID.FINDER },
					}),
				}),
				ach(6669),	-- Heart of Fear Guild Run
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
				["description"] = "Loot from this LFR is NOT tradeable to others in group.",
				["ignoreBonus"] = true,
				["g"] = {
					i(95619, {	-- Amber Encased Treasure Pouch
						["description"] = "Since the introduction of Legacy Loot this bag is only obtainable if you queue up as a Level 91-100 for the intended raid.  If you are 101+ then you will need to seek out each item based on their original sources.  This change occured in Patch 8.0.1",
						["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },
						["sym"] = {
							{ "select", "itemID", 95618 },
							{ "pop" },
						},
					}),
					header(HEADERS.Achievement, 6718, {	-- The Dread Approach
						e(745, {	-- Imperial Vizier Zor'lok
							["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
							["g"] = {
								i(86854),	-- Articulated Legplates
								i(86815),	-- Attenuating Bracers
								i(86811),	-- Boots of the Still Breath
								i(86816),	-- Chestplate of the Forbidden Tower
								i(86814),	-- Fragment of Fear Made Flesh
								i(86817),	-- Gauntlets of Undesired Gifts
								i(86819),	-- Gloves of Grasping Claws
								i(86812),	-- Hisek's Chrysanthemum Cape
								i(86818),	-- Mail of Screaming Secrets
								i(89952),	-- Pheromone-Coated Choker
								i(89953),	-- Scent-Soaked Sandals
								i(86813),	-- Vizier's Ruby Signet
								i(89954),	-- Warbelt of Sealed Pods
								i(87823),	-- Zor'lok's Fizzing Chestguard
								i(167058, {	-- Kor'thik Swarmling (PET!)
									["timeline"] = { ADDED_8_1_5 },
								}),
							},
						}),
						e(744, {	-- Blade Lord Ta'yak
							["crs"] = { 62543 },	-- Blade Lord Ta'yak
							["g"] = {
								i(86825),	-- Boots of the Blowing Wind
								i(86821),	-- Bracers of Unseen Strikes
								i(86826),	-- Bracers of Tempestuous Fury
								i(86824),	-- Choker of the Unleashed Storm
								i(86827),	-- Drape of Gathering Clouds
								i(89957),	-- Hood of Stilled Winds
								i(90739),	-- Kaz'tik's Stormseizer Gauntlets
								i(89956),	-- Pauldrons of the Broken Blade
								i(86820),	-- Ring of the Bladed Tempest
								i(89955),	-- Sword Dancer's Leggings
								i(86829),	-- Tornado-Summoning Censer
								i(86828),	-- Twisting Wind Bracers
								i(86822),	-- Waistplate of Overwhelming Assault
								i(86823),	-- Windblade Talons
								i(167053, {	-- Amberglow Stinger (PET!)
									["timeline"] = { ADDED_8_1_5 },
								}),
							},
						}),
						e(713, {	-- Garalon
							["crs"] = {
								62164,	-- Garalon	-- Maybe Outside Version
								63191 ,	-- Garalon	-- In Raid Version
							},
							["g"] = {
								i(86834),	-- Bonebreaker Gauntlets
								i(86832),	-- Garalon's Hollow Skull
								i(89958),	-- Garalon's Graven Carapace
								i(86837),	-- Grasps of Panic
								i(86833),	-- Grips of the Leviathan
								i(86831),	-- Legbreaker Greatcloak
								i(86835),	-- Necklace of Congealed Weaknesses
								i(86830),	-- Ring of the Shattered Shell
								i(86838),	-- Robes of Eighty Lights
								i(86836),	-- Sandals of the Unbidden
								i(89959),	-- Shoulders of Foaming Fluids
								i(86840),	-- Stormwake Mistcloak
								i(89960),	-- Vestments of Steaming Ichor
								i(86839),	-- Xaril's Hood of Intoxicating Vapors
								i(167054, {	-- Spawn of Garalon (PET!)
									["timeline"] = { ADDED_8_1_5 },
								}),
							},
						}),
					}),
					header(HEADERS.Achievement, 6845, {	-- Nightmare of Shek'zeer
						e(741, {	-- Wind Lord Mel'jarak
							["crs"] = { 62397 },	-- Wind Lord Mel'jarak
							["g"] = {
								i(89271, {	-- Gauntlets of the Shadowy Conqueror
									["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								}),
								i(89272),	-- Gauntlets of the Shadowy Protector
								i(89270),	-- Gauntlets of the Shadowy Vanquisher
								i(86853),	-- Cloak of Raining Blades
								i(86912),	-- Clutches of Dying Hope
								i(86852),	-- Impaling Treads
								i(86856),	-- Korven's Amber-Sealed Beetle
								i(86851),	-- Painful Thorned Ring
								i(86911),	-- Robes of Torn Nightmares
								i(86855),	-- Wingslasher Pauldrons
							},
						}),
						e(737, {	-- Amber-Shaper Un'sok
							["crs"] = { 62511 },	-- Amber-Shaper Un'sok
							["g"] = {
								i(89268, {	-- Leggings of the Shadowy Conqueror
									["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								}),
								i(89269),	-- Leggings of the Shadowy Protector
								i(89267),	-- Leggings of the Shadowy Vanquisher
								i(86857),	-- Belt of Malleable Amber
								i(86861),	-- Monstrous Stompers
								i(86863),	-- Scimitar of Seven Stars
								i(86858),	-- Seal of the Profane
								i(86860),	-- Shoulderpads of Misshapen Life
								i(86859),	-- Treads of Deadly Secretions
								i(86862),	-- Un'sok's Amber Scalpel
								i(167055, {	-- Living Amber (PET!)
									["timeline"] = { ADDED_8_1_5 },
								}),
							},
						}),
						e(743, {	-- Grand Empress Shek'zeer
							["crs"] = { 62837 },	-- Grand Empress Shek'zeer
							["g"] = {
								i(89265, {	-- Chest of the Shadowy Conqueror
									["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
								}),
								i(89266),	-- Chest of the Shadowy Protector
								i(89264),	-- Chest of the Shadowy Vanquisher
								i(86864),	-- Claws of Shek'zeer
								i(86866),	-- Crown of the Doomed Empress
								i(89962),	-- Hood of Dark Dreams
								i(86865),	-- Kri'tak, Imperial Scepter of the Swarm
								i(86867),	-- Leggings of Shadow Infestation
								i(89963),	-- Legplates of Regal Reinforcement
								i(89961),	-- Shadow Heart Spaulders
								i(167056, {	-- Ravenous Prideling (PET!)
									["timeline"] = { ADDED_8_1_5 },
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
				e(745, {	-- Imperial Vizier Zor'lok
					["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
					["g"] = {
						ach(6937),	-- Overzealous
						i(167058, {	-- Kor'thik Swarmling (PET!)
							["timeline"] = { ADDED_8_1_5 },
						}),
					},
				}),
				e(744, {	-- Blade Lord Ta'yak
					["crs"] = { 62543 },	-- Blade Lord Ta'yak
					["g"] = {
						ach(6936),	-- Candle in the Wind
						i(167053, {	-- Amberglow Stinger (PET!)
							["timeline"] = { ADDED_8_1_5 },
						}),
					},
				}),
				e(713, {	-- Garalon
					["crs"] = { 62164 },	-- Garalon
					["g"] = {
						ach(6553),	-- Like an Arrow to the Face
						i(167054, {	-- Spawn of Garalon (PET!)
							["timeline"] = { ADDED_8_1_5 },
						}),
					},
				}),
				e(741, {	-- Wind Lord Mel'jarak
					["crs"] = { 62397 },	-- Wind Lord Mel'jarak
					["g"] = {
						ach(6683),	-- Less Than Three
					},
				}),
				e(737, {	-- Amber-Shaper Un'sok
					["crs"] = { 62511 },	-- Amber-Shaper Un'sok
					["g"] = {
						ach(6518),	-- I Heard You Like Amber...
						i(167055, {	-- Living Amber (PET!)
							["timeline"] = { ADDED_8_1_5 },
						}),
					},
				}),
				e(743, {	-- Grand Empress Shek'zeer
					["crs"] = { 62837 },	-- Grand Empress Shek'zeer
					["g"] = {
						ach(6922, {	-- Timing is Everything
							crit(21105, {	-- Defeat 2 Kor'thik Reavers within 10 seconds of each other
								["cr"] = 63591,	-- Kor'thik Reaver
							}),
							crit(21107, {	-- Defeat Grand Empress Shek'zeer
							}),
						}),
						ach(8246, {	-- Ahead of the Curve: Grand Empress Shek'zeer
							["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
						}),
						i(167056, {	-- Ravenous Prideling (PET!)
							["timeline"] = { ADDED_8_1_5 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL, {
				["ignoreBonus"] = true,
				["g"] = {
					n(ZONE_DROPS, {
						i(86192),	-- Darting Damselfly Cuffs
						i(86186),	-- Gleaming Moth Cuffs
						i(86188),	-- Inlaid Cricket Bracers
						i(86042),	-- Jade Charioteer Figurine
						i(86043),	-- Jade Bandit Figurine
						i(86044),	-- Jade Magistrate Figurine
						i(86045),	-- Jade Courtesan Figurine
						i(86046),	-- Jade Warlord Figurine
						i(86189),	-- Jagged Hornet Bracers
						i(86184),	-- Luminescent Firefly Wristguards
						i(86187),	-- Pearlescent Butterfly Wristbands
						i(86191),	-- Plated Locust Bracers
						i(86190),	-- Serrated Wasp Bracers
						i(86183),	-- Shining Cicada Bracers
						i(86185),	-- Smooth Beetle Wristbands
					}),
					e(745, {	-- Imperial Vizier Zor'lok
						["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
						["g"] = {
							i(86203),	-- Articulated Leggings
							i(86157),	-- Attenuating Bracers
							i(86153),	-- Boots of the Still Breath
							i(86158),	-- Chestplate of the Forbidden Tower
							i(86156),	-- Fragment of Fear Made Flesh
							i(86159),	-- Gauntlets of Undesired Gifts
							i(86161),	-- Gloves of Grasping Claws
							i(86154),	-- Hisek's Chrysanthemum Cape
							i(86160),	-- Mail of Screaming Secrets
							i(89827),	-- Pheromone-Coated Choker
							i(89829),	-- Scent-Soaked Sandals
							i(86155),	-- Vizier's Ruby Signet
							i(89826),	-- Warbelt of Sealed Pods
							i(87824),	-- Zor'lok's Fizzing Chestguard
						},
					}),
					e(744, {	-- Blade Lord Ta'yak
						["crs"] = { 62543 },	-- Blade Lord Ta'yak
						["g"] = {
							i(86167),	-- Boots of the Blowing Wind
							i(86163),	-- Bracers of Unseen Strikes
							i(86168),	-- Bracers of Tempestuous Fury
							i(86166),	-- Choker of the Unleashed Storm
							i(86169),	-- Drape of Gathering Clouds
							i(89831),	-- Hood of Stilled Winds
							i(90738),	-- Kaz'tik's Stormseizer Gauntlets
							i(89828),	-- Pauldrons of the Broken Blade
							i(86162),	-- Ring of the Bladed Tempest
							i(89830),	-- Sword Dancer's Leggings
							i(86171),	-- Tornado-Summoning Censer
							i(86170),	-- Twisting Wind Bracers
							i(86164),	-- Waistplate of Overwhelming Assault
							i(86165),	-- Windblade Talons
						},
					}),
					e(713, {	-- Garalon
						["crs"] = { 62164 },	-- Garalon
						["g"] = {
							i(86176),	-- Bonebreaker Gauntlets
							i(89832),	-- Garalon's Graven Carapace
							i(86174),	-- Garlon's Hollow Skull
							i(86179),	-- Grasps of Panic
							i(86175),	-- Grips of the Leviathan
							i(86173),	-- Legbreaker Greatcloak
							i(86177),	-- Necklace of Congealed Weaknesses
							i(86172),	-- Ring of the Shattered Shell
							i(86180),	-- Robes of Eighty Lights
							i(86178),	-- Sandals of the Unbidden
							i(89833),	-- Shoulders of Foaming Fluids
							i(86182),	-- Stormwake Mistcloak
							i(89834),	-- Vestments of Steaming Ichor
							i(86181),	-- Xaril's Hood of Intoxicating Vapors
						},
					}),
					e(741, {	-- Wind Lord Mel'jarak
						["crs"] = { 62397 },	-- Wind Lord Mel'jarak
						["g"] = {
							i(89240, {	-- Gauntlets of the Shadowy Conqueror
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
							}),
							i(89241),	-- Gauntlets of the Shadowy Protector
							i(89242),	-- Gauntlets of the Shadowy Vanquisher
							i(86202),	-- Cloak of Raining Blades
							i(86514),	-- Clutches of Dying Hope
							i(86201),	-- Impaling Treads
							i(86205),	-- Korven's Amber-Sealed Beetle
							i(86200),	-- Painful Thorned Ring
							i(86513),	-- Robes of Torn Nightmares
							i(86204),	-- Wingslasher Pauldrons
						},
					}),
					e(737, {	-- Amber-Shaper Un'sok
						["crs"] = { 62511 },	-- Amber-Shaper Un'sok
						["g"] = {
							i(89243, {	-- Leggings of the Shadowy Conqueror
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
							}),
							i(89244),	-- Leggings of the Shadowy Protector
							i(89245),	-- Leggings of the Shadowy Vanquisher
							i(86210),	-- Belt of Malleable Amber
							i(86214),	-- Monstrous Stompers
							i(86219),	-- Scimitar of Seven Stars
							i(86211),	-- Seal of the Profane
							i(86213),	-- Shoulderpads of Misshapen Life
							i(86212),	-- Treads of Deadly Secretions
							i(86217),	-- Un'sok's Amber Scalpel
						},
					}),
					e(743, {	-- Grand Empress Shek'zeer
						["crs"] = { 62837 },	-- Grand Empress Shek'zeer
						["g"] = {
							i(89237, {	-- Chest of the Shadowy Conqueror
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
							}),
							i(89238),	-- Chest of the Shadowy Protector
							i(89239),	-- Chest of the Shadowy Vanquisher
							i(86226),	-- Claws of Shek'zeer
							i(86228),	-- Crown of the Doomed Empress
							i(89835),	-- Hood of Dark Dreams
							i(86227),	-- Kri'tak, Imperial Scepter of the Swarm
							i(86229),	-- Leggings of Shadow Infestation
							i(89837),	-- Legplates of Regal Reinforcement
							i(89836),	-- Shadow Heart Spaulders
						},
					}),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.HEROIC, {
				["ignoreBonus"] = true,
				["g"] = {
					n(ZONE_DROPS, {
						i(86192),	-- Darting Damselfly Cuffs
						i(86186),	-- Gleaming Moth Cuffs
						i(86188),	-- Inlaid Cricket Bracers
						i(86042),	-- Jade Charioteer Figurine
						i(86043),	-- Jade Bandit Figurine
						i(86044),	-- Jade Magistrate Figurine
						i(86045),	-- Jade Courtesan Figurine
						i(86046),	-- Jade Warlord Figurine
						i(86189),	-- Jagged Hornet Bracers
						i(86184),	-- Luminescent Firefly Wristguards
						i(86187),	-- Pearlescent Butterfly Wristbands
						i(86191),	-- Plated Locust Bracers
						i(86190),	-- Serrated Wasp Bracers
						i(86183),	-- Shining Cicada Bracers
						i(86185),	-- Smooth Beetle Wristbands
					}),
					e(745, {	-- Imperial Vizier Zor'lok
						["crs"] = { 62980 },	-- Imperial Vizier Zor'lok
						["g"] = {
							ach(6725),	-- Heroic: Imperial Vizier Zor'lok
							i(86944),	-- Articulated Legplates
							i(86948),	-- Attenuating Bracers
							i(86943),	-- Boots of the Still Breath
							i(86952),	-- Chestplate of the Forbidden Tower
							i(86949),	-- Fragment of Fear Made Flesh
							i(86950),	-- Gauntlets of Undesired Gifts
							i(86947),	-- Gloves of Grasping Claws
							i(86945),	-- Hisek's Chrysanthemum Cape
							i(86951),	-- Mail of Screaming Secrets
							i(89917),	-- Pheromone-Coated Choker
							i(89918),	-- Scent-Soaked Sandals
							i(86946),	-- Vizier's Ruby Signet
							i(89919),	-- Warbelt of Sealed Pods
							i(87822),	-- Zor'lok's Fizzing Chestguard
						},
					}),
					e(744, {	-- Blade Lord Ta'yak
						["crs"] = { 62543 },	-- Blade Lord Ta'yak
						["g"] = {
							ach(6726),	-- Heroic: Blade Lord Ta'yak
							i(86959),	-- Boots of the Blowing Wind
							i(86954),	-- Bracers of Unseen Strikes
							i(86962),	-- Bracers of Tempestuous Fury
							i(86953),	-- Choker of the Unleashed Storm
							i(86961),	-- Drape of Gathering Clouds
							i(89922),	-- Hood of Stilled Winds
							i(90740),	-- Kaz'tik's Stormseizer Gauntlets
							i(89921),	-- Pauldrons of the Broken Blade
							i(86957),	-- Ring of the Bladed Tempest
							i(89920),	-- Sword Dancer's Leggings
							i(86960),	-- Tornado-Summoning Censer
							i(86958),	-- Twisting Wind Bracers
							i(86955),	-- Waistplate of Overwhelming Assault
							i(86956),	-- Windblade Talons
						},
					}),
					e(713, {	-- Garalon
						["crs"] = { 62164 },	-- Garalon
						["g"] = {
							ach(6727),	-- Heroic: Garalon
							i(86964),	-- Bonebreaker Gauntlets
							i(86966),	-- Garalon's Hollow Skull
							i(89923),	-- Garalon's Graven Carapace
							i(86973),	-- Grasps of Panic
							i(86965),	-- Grips of the Leviathan
							i(86963),	-- Legbreaker Greatcloak
							i(86967),	-- Necklace of Congealed Weaknesses
							i(86968),	-- Ring of the Shattered Shell
							i(86972),	-- Robes of Eighty Lights
							i(86969),	-- Sandals of the Unbidden
							i(89924),	-- Shoulders of Foaming Fluids
							i(86971),	-- Stormwake Mistcloak
							i(89925),	-- Vestments of Steaming Ichor
							i(86970),	-- Xaril's Hood of Intoxicating Vapors
						},
					}),
					e(741, {	-- Wind Lord Mel'jarak
						["crs"] = { 62397 },	-- Wind Lord Mel'jarak
						["g"] = {
							ach(6728),	-- Heroic: Wind Lord Mel'jarak
							i(89256, {	-- Gauntlets of the Shadowy Conqueror
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
							}),
							i(89257),	-- Gauntlets of the Shadowy Protector
							i(89255),	-- Gauntlets of the Shadowy Vanquisher
							i(86980),	-- Cloak of Raining Blades
							i(86977),	-- Clutches of Dying Hope
							i(86979),	-- Impaling Treads
							i(86976),	-- Korven's Amber-Sealed Beetle
							i(86974),	-- Painful Thorned Ring
							i(86975),	-- Robes of Torn Nightmares
							i(86978),	-- Wingslasher Pauldrons
						},
					}),
					e(737, {	-- Amber-Shaper Un'sok
						["crs"] = { 62511 },	-- Amber-Shaper Un'sok
						["g"] = {
							ach(6729),	-- Heroic: Amber-Shaper Un'sok
							i(89253, {	-- Leggings of the Shadowy Conqueror
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
							}),
							i(89254),	-- Leggings of the Shadowy Protector
							i(89252),	-- Leggings of the Shadowy Vanquisher
							i(86981),	-- Belt of Malleable Amber
							i(86985),	-- Monstrous Stompers
							i(86987),	-- Scimitar of Seven Stars
							i(86982),	-- Seal of the Profane
							i(86986),	-- Shoulderpads of Misshapen Life
							i(86984),	-- Treads of Deadly Secretions
							i(86983),	-- Un'sok's Amber Scalpel
						},
					}),
					e(743, {	-- Grand Empress Shek'zeer
						["crs"] = { 62837 },	-- Grand Empress Shek'zeer
						["g"] = {
							ach(6730),	-- Heroic: Grand Empress Shek'zeer
							ach(7486, {	-- Cutting Edge: Grand Empress Shek'zeer
								["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
							}),
							ach(6677),	-- Heroic: Grand Empress Shek'zeer Guild Run
							ach(6679, {	-- Realm First! Grand Empress Shek'zeer
								["timeline"] = { ADDED_5_0_4, REMOVED_5_1_0 },
							}),
							i(89250, {	-- Chest of the Shadowy Conqueror
								["description"] = "Paladin completionists will want to turn this into the vendor since one piece can be awarded in any spec.",
							}),
							i(89251),	-- Chest of the Shadowy Protector
							i(89249),	-- Chest of the Shadowy Vanquisher
							i(86988),	-- Claws of Shek'zeer
							i(86991),	-- Crown of the Doomed Empress
							i(89927),	-- Hood of Dark Dreams
							i(86990),	-- Kri'tak, Imperial Scepter of the Swarm
							i(86989),	-- Leggings of Shadow Infestation
							i(89928),	-- Legplates of Regal Reinforcement
							i(89926),	-- Shadow Heart Spaulders
						},
					}),
				},
			}),
		},
	})),
})));
