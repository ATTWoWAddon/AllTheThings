-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.LEGION, {
	inst(800, {	-- Court of Stars
		["coord"] = { 51.0, 65.6, SURAMAR },
		["maps"] = { 761, 762, 763 },
		["g"] = {
			n(WORLD_QUESTS, {
				q(42769, {	-- Court of Stars: Bring Me the Eyes
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42781, {	-- Court of Stars: Disarmning the Watch
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42784, {	-- Court of Stars: The Deceitful Student
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42783, {	-- Court of Stars: They Bloom at Night
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42764, {	-- Court of Stars: Wraith in the Machine
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.HEROIC_PLUS, {
				cr(104215, e(1718, {	-- Patrol Captain Gerdo
				})),
				cr(104217, e(1719, {	-- Talixae Flamewreath
					i(201994, {	-- Felsworn Covenant Crossbow
						["timeline"] = { ADDED_11_0_2 },
					}),
				})),
				cr(104218, e(1720, {	-- Advisor Melandrus
					i(137856),	-- Design: Righteous Dawnlight Medallion [Rank 3] (RECIPE!)
					i(128594),	-- Formula: Enchant Neck - Mark of the Distant Army [Rank 2] (RECIPE!)
					i(137929),	-- Pattern: Gravenscale Grips [Rank 3] (RECIPE!)
					i(127926),	-- Recipe: Potion of Deadly Grace [Rank 2] (RECIPE!)
					i(201995, {	-- Crux of Blind Faith
						["timeline"] = { ADDED_11_0_2 },
					}),
					i(201996, {	-- Edge of the First Blade
						["timeline"] = { ADDED_11_0_2 },
					}),
				})),
			}),
			n(MYTHIC_PLUS, sharedDataSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 } }, {
				i(201995),	-- Crux of Blind Faith
				i(201996),	-- Edge of the First Blade
				i(201994),	-- Felsworn Covenant Crossbow
			})),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				cr(104215, e(1718, {	-- Patrol Captain Gerdo
					i(134268),	-- Arcane Defender's Gauntlets
					i(134415),	-- Arcanist's Resonant Robes
					i(137483),	-- Cape of the Duskwatch
					i(137482),	-- Duskwatch Guard's Boots
					i(134480),	-- Epaulets of Deceitful Intent
					i(137484),	-- Flask of the Solemn Night
					i(137480),	-- Guileful Intruder Handguards
					i(134296),	-- Ley Dragoon's Wristbraces
					i(134308),	-- Manawracker Sandals
					i(134280),	-- Swordsinger's Wristguards
					i(137490),	-- Self-Forging Credentials
				})),
				cr(104217, e(1719, {	-- Talixae Flamewreath
					i(134529),	-- Chain of Scorched Bones
					i(134473),	-- Collar of Fiery Allegiance
					i(137488),	-- Cord of Wicked Pyromania
					i(134374),	-- Felbat Leather Pauldrons
					i(134460),	-- Fevermelt Legguards
					i(137485),	-- Infernal Writ
					i(134503),	-- Inferno Breastplate
					i(134385),	-- Mardum Chain Gloves
					i(134392),	-- Netherwhisper Hood
					i(134360),	-- Portalguard Shoulders
					i(137491),	-- Felsworn Covenant
					i(137492),	-- Flamewreath Spark
				})),
				cr(104218, e(1720, {	-- Advisor Melandrus
					i(134432),	-- Amice of the Unfurling Tempest
					i(134271),	-- Arcane Defender's Pants
					i(137489),	-- Arcane-Bound Gale Chain
					i(137497),	-- Footpads of the Swift Balestra
					i(134513),	-- Helmet of Reverent Loyalty
					i(134542),	-- Jeweled Signet of Melandrus
					i(134298),	-- Ley Dragoon's Stompers
					i(137498),	-- Luminous Bladesworn Hauberk
					i(134310),	-- Manawracker Bindings
					i(137499),	-- Roaring Breeze Waistguard
					i(137487),	-- Strand of the Stars
					i(137496),	-- Suramar Magistrate Leggings
					i(134287),	-- Swordsinger's Belt
					i(134447),	-- Veil of Unseen Strikes
					i(137486),	-- Windscar Whetstone
					i(137495),	-- Crux of Blind Faith
					i(137493),	-- Edge of the First Blade
				})),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["ItemAppearanceModifierID"] = 0,
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(10611, {	-- Dropping Some Eaves
							["description"] = "Don't let any of the 5 Sentries complete their Sound Alarm cast, disable the 5 beacons before engaging the first boss, kill all 3 demons separately before pulling Talixae and then guess spy on the first try.",
						}),
					}),
					cr(104215, e(1718, {	-- Patrol Captain Gerdo
						ach(10610),	-- Waiting for Gerdo
						i(134268),	-- Arcane Defender's Gauntlets
						i(134415),	-- Arcanist's Resonant Robes
						i(137483),	-- Cape of the Duskwatch
						i(137482),	-- Duskwatch Guard's Boots
						i(134480),	-- Epaulets of Deceitful Intent
						i(137484),	-- Flask of the Solemn Night
						i(137480),	-- Guileful Intruder Handguards
						i(134296),	-- Ley Dragoon's Wristbraces
						i(134308),	-- Manawracker Sandals
						i(134280),	-- Swordsinger's Wristguards
						i(137490),	-- Self-Forging Credentials
					})),
					cr(104217, e(1719, {	-- Talixae Flamewreath
						i(134529),	-- Chain of Scorched Bones
						i(134473),	-- Collar of Fiery Allegiance
						i(137488),	-- Cord of Wicked Pyromania
						i(134374),	-- Felbat Leather Pauldrons
						i(134460),	-- Fevermelt Legguards
						i(137485),	-- Infernal Writ
						i(134503),	-- Inferno Breastplate
						i(134385),	-- Mardum Chain Gloves
						i(134392),	-- Netherwhisper Hood
						i(134360),	-- Portalguard Shoulders
						i(137491),	-- Felsworn Covenant
						i(137492),	-- Flamewreath Spark
					})),
					cr(104218, e(1720, {	-- Advisor Melandrus
						ach(10816),	-- Mythic: Court of Stars
						ach(10865),	-- Mythic: Court of Stars Guild Run
						i(134432),	-- Amice of the Unfurling Tempest
						i(134271),	-- Arcane Defender's Pants
						i(137489),	-- Arcane-Bound Gale Chain
						i(137497),	-- Footpads of the Swift Balestra
						i(134513),	-- Helmet of Reverent Loyalty
						i(134542),	-- Jeweled Signet of Melandrus
						i(134298),	-- Ley Dragoon's Stompers
						i(137498),	-- Luminous Bladesworn Hauberk
						i(134310),	-- Manawracker Bindings
						i(137499),	-- Roaring Breeze Waistguard
						i(137487),	-- Strand of the Stars
						i(137496),	-- Suramar Magistrate Leggings
						i(134287),	-- Swordsinger's Belt
						i(134447),	-- Veil of Unseen Strikes
						i(137486),	-- Windscar Whetstone
						i(137495),	-- Crux of Blind Faith
						i(137493),	-- Edge of the First Blade
					})),
				},
			}),
		},
	}),
}));