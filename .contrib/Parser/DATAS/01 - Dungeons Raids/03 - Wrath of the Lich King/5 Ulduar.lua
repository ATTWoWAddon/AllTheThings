-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local revampAch = function(id, t)
	-- Crieve NOTE: Didn't feel like indenting and stuff. :)
	t = ach(id, t);
	t.timeline = { ADDED_3_1_0, REMOVED_7_3_5 };
	return t;
end
root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_TWO, {
	inst(759, bubbleDownSelf({ ["timeline"] = { ADDED_3_1_0 } }, {	-- Ulduar
		["mapID"] = ULDUAR,
		["maps"] = { 148, 149, 150, 151, 152 },
		["coord"] = { 41.5, 17.9, THE_STORM_PEAKS },
		-- #if AFTER CATA
		["sharedLockout"] = 1,
		-- #endif
		["isRaid"] = true,
		["lvl"] = lvlsquish(80, 80, 30),
		["groups"] = {
			applyclassicphase(WRATH_PHASE_TWO_HAMMERPRIO,
			header(HEADERS.Item, 46017, {	-- Val'anyr, Hammer of Ancient Kings
				["description"] = "Collect 30 x |cFFFF8000Fragment of Val'anyr|r from the bosses of Ulduar. Hard modes have higher drop chances.",
				["classes"] = { PALADIN, PRIEST, SHAMAN, MONK, DRUID, EVOKER },
				["isRaid"] = true,
				["groups"] = {
					ach(3142, {	-- Val'anyr, Hammer of Ancient Kings
						["provider"] = { "i", 46017 },	-- Val'anyr, Hammer of Ancient Kings
						["classes"] = { PALADIN, PRIEST, SHAMAN, MONK, DRUID, EVOKER },
					}),
					q(13622, {	-- Ancient History
						["provider"] = { "i", 45039 },	-- Shattered Fragments of Val'anyr
						["cost"] = { { "i", 45038, 30 } },	-- Fragment of Val'anyr
					}),
					q(13629, {	-- Val'anyr, Hammer of Ancient Kings
						["provider"] = { "o", 194555 },	-- Archivum Console
						["sourceQuest"] = 13622,	-- Ancient History
						["groups"] = {
							objective(1, {	-- 0/1 Reforged Hammer of Ancient Kings
								["provider"] = { "i", 45897 },	-- Reforged Hammer of Ancient Kings
								["cost"] = { { "i", 45896, 1 } },	-- Unbound Fragments of Val'anyr
								["cr"] = 33288,	-- Yogg-Saron
							}),
							i(46017)	-- Val'anyr, Hammer of Ancient Kings
						},
					}),
				},
			})),
			-- #if AFTER 7.3.5.25727
			n(ACHIEVEMENTS, {
				ach(12401, {	-- Glory of the Ulduar Raider
					["timeline"] = { ADDED_7_3_5 },
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						12320,	-- Orbit-uary
						12325,	-- Stokin' the Furnace
						12322,	-- Iron Dwarf, Medium Rare
						12330,	-- Heartbreaker
						12334,	-- I Choose You, Steelbreaker
						12338,	-- Disarmed
						12341,	-- Crazy Cat Lady
						12347,	-- I Could Say That This Cache Was Rare
						12352,	-- Lose Your Illusion
						12366,	-- Knock, Knock, Knock on Wood
						12369,	-- Firefighter
						12373,	-- I Love the Smell of Saronite in the Morning
						12387,	-- One Light in the Darkness
					}},
					["groups"] = {
						i(45802),	-- Rusted Proto-Drake (MOUNT!)
						i(45801),	-- Ironbound Proto-Drake (MOUNT!)
					},
				}),
				ach(12311, {	-- The Secrets of Ulduar
					["timeline"] = { ADDED_7_3_5 },
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						12297,	-- The Siege of Ulduar
						12302,	-- The Antechamber of Ulduar
						12309,	-- The Keepers of Ulduar
						12310,	-- The Descent into Madness
					}},
				}),
				ach(12297, {	-- The Siege of Ulduar
					["timeline"] = { ADDED_7_3_5 },
					["groups"] = {
						crit(39267, {	-- Flame Leviathan
							["timeline"] = { ADDED_7_3_5 },
							["_npcs"] = { 33113 },
						}),
						crit(39268, {	-- Razorscale
							["timeline"] = { ADDED_7_3_5 },
							["_npcs"] = { 33186 },
						}),
						crit(39270, {	-- Ignis the Furnace Master
							["timeline"] = { ADDED_7_3_5 },
							["_npcs"] = { 33118 },
						}),
						crit(39269, {	-- XT-002 Deconstructor
							["timeline"] = { ADDED_7_3_5 },
							["_npcs"] = { 33293 },
						}),
					},
				}),
				ach(12302, {	-- The Antechamber of Ulduar
					["timeline"] = { ADDED_7_3_5 },
					["groups"] = {
						crit(39285, {	-- Assembly of Iron
							["timeline"] = { ADDED_7_3_5 },
							["_npcs"] = { 32867 },
						}),
						crit(39287, {	-- Kologarn
							["timeline"] = { ADDED_7_3_5 },
							["_npcs"] = { 32930 },
						}),
						crit(39286, {	-- Auriaya
							["timeline"] = { ADDED_7_3_5 },
							["_npcs"] = { 33515 },
						}),
					},
				}),
				ach(12309, {	-- The Keepers of Ulduar
					["timeline"] = { ADDED_7_3_5 },
					["groups"] = {
						crit(39289, {	-- Hodir
							["timeline"] = { ADDED_7_3_5 },
							["_npcs"] = { 32845 },
						}),
						crit(39291, {	-- Thorim
							["timeline"] = { ADDED_7_3_5 },
							["_npcs"] = { 32865 },
						}),
						crit(39292, {	-- Freya
							["timeline"] = { ADDED_7_3_5 },
							["_npcs"] = { 32906 },
						}),
						crit(39293, {	-- Mimiron
							["timeline"] = { ADDED_7_3_5 },
							["_npcs"] = { 33350 },
						}),
					},
				}),
				ach(12310, {	-- The Descent into Madness
					["timeline"] = { ADDED_7_3_5 },
					["groups"] = {
						crit(39294, {	-- General Vezax
							["timeline"] = { ADDED_7_3_5 },
							["_npcs"] = { 33271 },
						}),
						crit(39295, {	-- Yogg-Saron
							["timeline"] = { ADDED_7_3_5 },
							["_npcs"] = { 33288 },
						}),
					},
				}),
				ach(12312, {	-- Dwarfageddon
					["timeline"] = { ADDED_7_3_5 },
					["crs"] = {
						33236,	-- Steelforged Defender
						33572,	-- Steelforged Defender
					},
				}),
				ach(12360, {	-- Lumberjacked
					["description"] = "Must be killed before killing Freya or they will despawn.",
					["timeline"] = { ADDED_7_3_5 },
					["providers"] = {
						{ "n", 32915 },	-- Elder Brightleaf
						{ "n", 32913 },	-- Elder Ironbranch
						{ "n", 32914 },	-- Elder Stonebark
					},
				}),
				ach(11751),	-- Mogg-Saron
			}),
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					33113,	-- Flame Leviathan
					33118,	-- Ignis the Furnace Master
					33186,	-- Razorscale
					33293,	-- XT-002 Deconstructor
					32871,	-- Algalon the Observer
					32927,	-- Runemaster Molgeim
					32857,	-- Stormcaller Brundir
					32867,	-- Steelbreaker
					32930,	-- Kologarn
					33515,	-- Auriaya
					32845,	-- Hodir
					32865,	-- Thorim
					32906,	-- Freya
					33350,	-- Mimiron
					33271,	-- General Vezax
					33288,	-- Yogg-Saron
				},
				["groups"] = {
					-- #if BEFORE 4.0.1
					currency(221),	-- Emblem of Conquest
					-- #endif
					applyclassicphase(WRATH_PHASE_TWO_HAMMERPRIO, i(45038)),	-- Fragment of Val'anyr
					i(45087),	-- Runed Orb
				},
			}),
			-- #endif
			d(DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL, {
				["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					-- #if AFTER 7.3.5.25727
					n(ACHIEVEMENTS, {
						ach(2957, {	-- Glory of the Ulduar Raider (10 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							-- Meta Achievement
							["sym"] = {{"meta_achievement",
								3056,	-- Orbit-uary (10 player)
								2930,	-- Stokin' the Furnace (10 player)
								2923,	-- Iron Dwarf, Medium Rare (10 player)
								3058,	-- Heartbreaker (10 player)
								2941,	-- I Choose You, Steelbreaker (10 player)
								2953,	-- Disarmed (10 player)
								3006,	-- Crazy Cat Lady (10 player)
								3182,	-- I Could Say That This Cache Was Rare (10 player)
								3176,	-- Lose Your Illusion (10 player)
								3179,	-- Knock, Knock, Knock on Wood (10 player)
								3180,	-- Firefighter (10 player)
								3181,	-- I Love the Smell of Saronite in the Morning (10 player)
								3158,	-- One Light in the Darkness (10 player)
							}},
							["groups"] = {
								i(45802),	-- Rusted Proto-Drake (MOUNT!)
							},
						}),
						revampAch(2919),	-- A Quick Shave (10 player)
						revampAch(3159),	-- Alone in the Darkness (10 player)
						revampAch(3158),	-- One Light in the Darkness (10 player)
						revampAch(3141),	-- Two Lights in the Darkness (10 player)
						revampAch(3157),	-- Three Lights in the Darkness (10 player)
						revampAch(2945),	-- But I'm On Your Side (10 player)
						revampAch(2947),	-- Can't Do That While Stunned (10 player)
						ach(2903, bubbleDownSelf({	-- Champion of Ulduar
							["timeline"] = { ADDED_3_1_0, REMOVED_4_0_1 },
						},{
							title(127),	-- , Champion of Ulduar
						})),
						revampAch(2961),	-- Cheese the Freeze (10 player)
						revampAch(2980),	-- Con-speed-atory (10 player)
						revampAch(3006),	-- Crazy Cat Lady (10 player)
						revampAch(2985),	-- Deforestation (10 player)
						revampAch(2953),	-- Disarmed (10 player)
						revampAch(2971),	-- Don't Stand in the Lightning (10 player)
						revampAch(3008),	-- Drive Me Crazy (10 player)
						revampAch(3097),	-- Dwarfageddon (10 player)
						revampAch(3180),	-- Firefighter (10 player)
						revampAch(2982),	-- Getting Back to Nature (10 player)
						revampAch(2967),	-- Getting Cold in Here (10 player)
						ach(3004, {	-- He Feeds On Your Tears (10 player)
							["timeline"] = { REMOVED_4_0_3 },
						}),
						revampAch(3012),	-- He's Not Getting Any Older (10 player)
						revampAch(3058),	-- Heartbreaker (10 player)
						revampAch(2927),	-- Hot Pocket (10 player)
						revampAch(2939),	-- I Choose You, Runemaster Molgeim (10 player)
						revampAch(2941),	-- I Choose You, Steelbreaker (10 player)
						revampAch(2940),	-- I Choose You, Stormcaller Brundir (10 player)
						revampAch(3182),	-- I Could Say That This Cache Was Rare (10 player)
						revampAch(2963),	-- I Have the Coolest Friends (10 player)
						revampAch(3181),	-- I Love the Smell of Saronite in the Morning (10 player)
						revampAch(2973),	-- I'll Take You All On (10 player)
						revampAch(2955),	-- If Looks Could Kill (10 player)
						revampAch(3015),	-- In His House He Waits Dreaming (10 player)
						revampAch(2923),	-- Iron Dwarf, Medium Rare (10 player)
						revampAch(3009),	-- Kiss and Make Up (10 player)
						revampAch(3177),	-- Knock on Wood (10 player)
						revampAch(3178),	-- Knock, Knock on Wood (10 player)
						revampAch(3179),	-- Knock, Knock, Knock on Wood (10 player)
						revampAch(3176),	-- Lose Your Illusion (10 player)
						revampAch(2979),	-- Lumberjacked (10 player)
						ach(11751, {["timeline"] = {ADDED_7_2_0}}),	-- Mogg-Saron (Ulduar)
						revampAch(2937),	-- Must Deconstruct Faster (10 player)
						revampAch(2931),	-- Nerf Engineering (10 player)
						revampAch(2934),	-- Nerf Gravity Bombs (10 player)
						revampAch(2933),	-- Nerf Scrapbots (10 player)
						revampAch(3076),	-- Nine Lives (10 player)
						revampAch(3138),	-- Not-So-Friendly Fire (10 player)
						revampAch(2915),	-- Nuked from Orbit (10 player)
						revampAch(3036),	-- Observed (10 player)
						revampAch(3056),	-- Orbit-uary (10 player)
						revampAch(2914),	-- Orbital Devastation (10 player)
						revampAch(2913),	-- Orbital Bombardment (10 player)
						revampAch(2959),	-- Rubble and Roll (10 player)
						revampAch(2989),	-- Set Up Us the Bomb (10 player)
						revampAch(2996),	-- Shadowdodger (10 player)
						revampAch(2925),	-- Shattered (10 player)
						revampAch(2911),	-- Shutout (10 player)
						revampAch(2977),	-- Siffed (10 player)
						revampAch(2969),	-- Staying Buffed All Winter (10 player)
						revampAch(2930),	-- Stokin' the Furnace (10 player)
						revampAch(3003),	-- Supermassive (10 player)
						revampAch(2909),	-- Take Out Those Turrets (10 player)
						revampAch(2888),	-- The Antechamber of Ulduar (10 player)
						revampAch(2892),	-- The Descent into Madness (10 player)
						revampAch(2890),	-- The Keepers of Ulduar (10 player)
						ach(2894, {	-- The Secrets of Ulduar (10 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							-- Meta Achievement
							["sym"] = {{"meta_achievement",
								2886,	-- The Siege of Ulduar (10 player)
								2888,	-- The Antechamber of Ulduar (10 player)
								2890,	-- The Keepers of Ulduar (10 player)
								2892,	-- The Descent into Madness (10 player)
							}},
						}),
						revampAch(2886),	-- The Siege of Ulduar (10 player)
						revampAch(3014),	-- They're Coming Out of the Walls (10 player)
						revampAch(2907),	-- Three Car Garage (10 player)
						revampAch(2905),	-- Unbroken (10 player)
						revampAch(2975),	-- Who Needs Bloodlust? (10 player)
						revampAch(2951),	-- With Open Arms (10 player)
					}),
					-- #else
					n(ACHIEVEMENTS, {
						ach(2957, {	-- Glory of the Ulduar Raider (10 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							-- Meta Achievement
							["sym"] = {{"meta_achievement",
								3056,	-- Orbit-uary (10 player)
								2930,	-- Stokin' the Furnace (10 player)
								2923,	-- Iron Dwarf, Medium Rare (10 player)
								3058,	-- Heartbreaker (10 player)
								2941,	-- I Choose You, Steelbreaker (10 player)
								2953,	-- Disarmed (10 player)
								3006,	-- Crazy Cat Lady (10 player)
								3182,	-- I Could Say That This Cache Was Rare (10 player)
								3176,	-- Lose Your Illusion (10 player)
								3179,	-- Knock, Knock, Knock on Wood (10 player)
								3180,	-- Firefighter (10 player)
								3181,	-- I Love the Smell of Saronite in the Morning (10 player)
								3158,	-- One Light in the Darkness (10 player)
							}},
							["groups"] = {
								i(45802),	-- Rusted Proto-Drake (MOUNT!)
							},
						}),
						ach(2903, bubbleDownSelf({	-- Champion of Ulduar
							["timeline"] = { ADDED_3_1_0, REMOVED_4_0_1 },
						},{
							title(127),	-- , Champion of Ulduar
						})),
						ach(2894, {	-- The Secrets of Ulduar (10 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							-- Meta Achievement
							["sym"] = {{"meta_achievement",
								2886,	-- The Siege of Ulduar (10 player)
								2888,	-- The Antechamber of Ulduar (10 player)
								2890,	-- The Keepers of Ulduar (10 player)
								2892,	-- The Descent into Madness (10 player)
							}},
						}),
						ach(2888, {	-- The Antechamber of Ulduar (10 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							["groups"] = {
								crit(10580, {	-- Assembly of Iron
									["_encounter"] = { 1641, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
								}),
								crit(9992, {	-- Auriaya
									["_encounter"] = { 1643, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
								}),
								crit(9978, {	-- Kologarn
									["_encounter"] = { 1642, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
								}),
							},
						}),
						ach(2892, {	-- The Descent into Madness (10 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							["groups"] = {
								crit(9948, {	-- General Vezax
									["_encounter"] = { 1648, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
								}),
								crit(5643, {	-- Yogg-Saron
									["_encounter"] = { 1649, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
								}),
							},
						}),
						ach(2890, {	-- The Keepers of Ulduar (10 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							["groups"] = {
								crit(10560, {	-- Hodir
									["_encounter"] = { 1644, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
								}),
								crit(10558, {	-- Thorim
									["_encounter"] = { 1645, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
								}),
								crit(10559, {	-- Freya
									["_encounter"] = { 1646, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
								}),
								crit(9947, {	-- Mimiron
									["_encounter"] = { 1647, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
								}),
							},
						}),
						ach(2886, {	-- The Siege of Ulduar (10 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							["groups"] = {
								crit(9968, {	-- Flame Leviathan
									["_encounter"] = { 1637, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
								}),
								crit(9970, {	-- Razorscale
									["_encounter"] = { 1639, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
								}),
								crit(9972, {	-- Ignis the Furnace Master
									["_encounter"] = { 1638, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
								}),
								crit(9974, {	-- XT-002 Deconstructor
									["_encounter"] = { 1640, DIFFICULTY.LEGACY_RAID.PLAYER10_NORMAL },
								}),
							},
						}),
						ach(3097, {	-- Dwarfageddon (10 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							["crs"] = {
								33236,	-- Steelforged Defender
								33572,	-- Steelforged Defender
							},
						}),
						ach(2979, {	-- Lumberjacked (10 player)
							["providers"] = {
								{ "n", 32915 },	-- Elder Brightleaf
								{ "n", 32913 },	-- Elder Ironbranch
								{ "n", 32914 },	-- Elder Stonebark
							},
							["description"] = "Must be killed before killing Freya or they will despawn.",
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
						}),
					}),
					n(QUESTS, {
						q(13614, {	-- Algalon
							["qg"] = 33957,	-- Prospector Loren
							["providers"] = {
								{ "n", 33957 },	-- Prospector Loren
								{ "i", 45791 },	-- Sigils of the Watchers
							},
							["sourceQuests"] = {
								13606,	-- Freya's Sigil
								13609,	-- Hodir's Sigil
								13611,	-- Mimiron's Sigil
								13610,	-- Thorim's Sigil
							},
							["timeline"] = { REMOVED_7_3_5 },
							["groups"] = {
								i(45796, {	-- Celestial Planetarium Key
									["timeline"] = { REMOVED_4_2_0 },
								}),
								i(45875, {	-- Sack of Ulduar Spoils
									["sym"] = { { "select", "itemID", 45087 } },	-- Runed Orb
								}),
							},
						}),
						q(13631, {	-- All Is Well That Ends Well
							["providers"] = {
								{ "i", 46052 },	-- Reply-Code Alpha
								{ "n", 16128 },	-- Rhonin <Leader of the Kirin Tor>
							},
							["maps"] = { NORTHREND_DALARAN },
							["groups"] = {
								i(46320),	-- Drape of the Skyherald
								i(46321),	-- Sunglimmer Drape
								i(46322),	-- Brann's Sealing Ring
								i(46323),	-- Starshine Signet
							},
						}),
						q(13604, {	-- Archivum Data Disc
							["provider"] = { "i", 45506 },	-- Archivum Data Disc
						}),
						q(13606, {	-- Freya's Sigil
							["qg"] = 33957,	-- Prospector Loren
							["sourceQuest"] = 13607,	-- The Celestial Planetarium
							["timeline"] = { REMOVED_7_3_5 },
							["groups"] = {
								objective(1, {	-- 0/1 Freya's Sigil
									["provider"] = { "i", 45788 },	-- Freya's Sigil
									["cr"] = 32906,	-- Freya
								}),
							},
						}),
						q(13609, {	-- Hodir's Sigil
							["qg"] = 33957,	-- Prospector Loren
							["sourceQuest"] = 13607,	-- The Celestial Planetarium
							["timeline"] = { REMOVED_7_3_5 },
							["groups"] = {
								objective(1, {	-- 0/1 Hodir's Sigil
									["provider"] = { "i", 45786 },	-- Hodir's Sigil
									["cr"] = 32845,	-- Hodir
								}),
							},
						}),
						q(13611, {	-- Mimiron's Sigil
							["qg"] = 33957,	-- Prospector Loren
							["sourceQuest"] = 13607,	-- The Celestial Planetarium
							["timeline"] = { REMOVED_7_3_5 },
							["groups"] = {
								objective(1, {	-- 0/1 Mimiron's Sigil
									["provider"] = { "i", 45787 },	-- Mimiron's Sigil
									["cr"] = 33350,	-- Mimiron
								}),
							},
						}),
						q(13607, {	-- The Celestial Planetarium
							["qg"] = 33957,	-- Prospector Loren
							["sourceQuest"] = 13604,	-- Archivum Data Disc
							["timeline"] = { REMOVED_7_3_5 },
						}),
						q(13610, {	-- Thorim's Sigil
							["qg"] = 33957,	-- Prospector Loren
							["sourceQuest"] = 13607,	-- The Celestial Planetarium
							["timeline"] = { REMOVED_7_3_5 },
							["groups"] = {
								objective(1, {	-- 0/1 Thorim's Sigil
									["provider"] = { "i", 45784 },	-- Thorim's Sigil
									["cr"] = 32865,	-- Thorim
								}),
							},
						}),
					}),
					n(ZONE_DROPS, {
						i(46351),	-- Bloodcrush Cudgel
						i(46350),	-- Pillar of Fortitude
						i(46342),	-- Golemheart Longbow
						i(46339),	-- Mimiron's Repeater
						i(46343),	-- Fervor of the Protectorate
						i(46344),	-- Iceshear Mantle
						i(46341),	-- Drape of the Spellweaver
						i(46347),	-- Cloak of the Dormant Blaze
						i(46345),	-- Bracers of Righteous Reformation
						i(46340),	-- Adamant Handguards
						i(46346),	-- Boots of Unsettled Prey
					}),
					e(1637, {	-- Flame Leviathan
						["creatureID"] = 33113,	-- Flame Leviathan
						["groups"] = {
							revampAch(3056, {	-- Orbit-uary (10 player)
								i(45300),	-- Mantle of Fiery Vengeance
								i(45293),	-- Handguards of Potent Cures
								i(45295),	-- Gilded Steel Legplates
								i(45297),	-- Shimmering Seal
								i(45296, {	-- Twirling Blades (10 Man)
									["timeline"] = { REMOVED_5_0_4 },
								}),
							}),
							revampAch(2915),	-- Nuked from Orbit (10 player)
							revampAch(2914),	-- Orbital Devastation (10 player)
							revampAch(2913),	-- Orbital Bombardment (10 player)
							revampAch(2911),	-- Shutout (10 player)
							revampAch(2909),	-- Take Out Those Turrets (10 player)
							revampAch(2907, {	-- Three Car Garage (10 player)
								-- TODO: Add vehicle npcIDs
								crit(10046),	-- Salvaged Chopper
								crit(10047),	-- Salvaged Siege Engine
								crit(10048),	-- Salvaged Demolisher
							}),
							revampAch(2905),	-- Unbroken (10 player)
							i(45282),	-- Ironsoul
							i(45287),	-- Firesoul
							i(45284),	-- Kinetic Ripper
							i(45289),	-- Lifespark Visage
							i(45285),	-- Might of the Leviathan
							i(45288),	-- Firestrider Chestguard
							i(45291),	-- Combustion Bracers
							i(45283),	-- Flamewatch Armguards
							i(45292),	-- Energy Siphon
							i(45286),	-- Pyrite Infuser
						},
					}),
					e(1638, {	-- Ignis the Furnace Master
						["creatureID"] = 33118,	-- Ignis the Furnace Master
						["groups"] = {
							revampAch(2927),	-- Hot Pocket (10 player)
							revampAch(2925),	-- Shattered (10 player)
							revampAch(2930),	-- Stokin' the Furnace (10 player)
							i(142086, {	-- Magma Rageling (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(45311),	-- Relentless Edge
							i(45309),	-- Rifle of the Platinum Guard
							i(45314),	-- Igniter Rod
							i(45321),	-- Pauldrons of Tempered Will
							i(45318),	-- Drape of Fuming Anger
							i(45317),	-- Shawl of the Caretaker
							i(45316),	-- Armbraces of the Vibrant Flame
							i(45310),	-- Gauntlets of the Iron Furnace
							i(45312),	-- Gloves of Smoldering Touch
							i(45313),	-- Furnace Stone
						},
					}),
					e(1639, {	-- Razorscale
						["creatureID"] = 33186,	-- Razorscale
						["groups"] = {
							revampAch(2919),	-- A Quick Shave (10 player)
							revampAch(2923),	-- Iron Dwarf, Medium Rare (10 player)
							i(142087, {	-- Ironbound Proto-Whelp (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(45298),	-- Razorscale Talon
							i(45299),	-- Dragonsteel Faceplate
							i(45305),	-- Breastplate of the Afterlife
							i(45301),	-- Bracers of the Smothering Inferno
							i(45306),	-- Binding of the Dragon Matriarch
							i(45304),	-- Stormtempered Girdle
							i(45307),	-- Ironscale Leggings
							i(45302),	-- Treads of the Invader
							i(45303),	-- Band of Draconic Guile
							i(45308),	-- Eye of the Broodmother
						},
					}),
					e(1640, {	-- XT-002 Deconstructor
						["creatureID"] = 33293,	-- XT-002 Deconstructor
						["groups"] = {
							revampAch(3058, {	-- Heartbreaker (10 player)
								i(45868),	-- Aesir's Edge
								i(45870),	-- Magnetized Projectile Emitter
								i(45867),	-- Breastplate of the Stoneshaper
								i(45869),	-- Fluxing Energy Coils
								i(45871),	-- Seal of Ulduar
							}),
							revampAch(2937),	-- Must Deconstruct Faster (10 player)
							revampAch(2931, {	-- Nerf Engineering (10 player)
								["cr"] = 33343,	-- XS-013 Scrapbot
							}),
							revampAch(2934),	-- Nerf Gravity Bombs (10 player)
							revampAch(2933, {	-- Nerf Scrapbots (10 player)
								["crs"] = {
									33346,	-- XE-321 Boombot
									33343,	-- XS-013 Scrapbot
								},
							}),
							i(45685),	-- Plasma Foil
							i(45682),	-- Pulsing Spellshield
							i(45687),	-- Helm of Veiled Energies
							i(45677),	-- Treacherous Shoulderpads
							i(45676),	-- Chestplate of Vicious Potency
							i(45686),	-- Vest of the Glowing Crescent
							i(45680),	-- Armbands of the Construct
							i(45679),	-- Gloves of Taut Grip
							i(45694),	-- Conductive Cord
							i(45675),	-- Power Enhancing Loop
						},
					}),
					e(1650, {	-- Algalon the Observer
						["creatureID"] = 32871,	-- Algalon the Observer
						["groups"] = {
							-- #if ANYCLASSIC
							ach(17341, {	-- Cutting Edge: Ulduar
								["OnUpdate"] = [[function(t)
									if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_THREE .. [[) then
										t.u = ]] .. REMOVED_FROM_GAME .. [[;
										t.rwp = nil;
									else
										t.u = ]] .. WRATH_PHASE_TWO .. [[;
										t.rwp = 30200;
									end
								end]],
							}),
							-- #endif
							ach(3004, {	-- He Feeds On Your Tears (10 player)
								["timeline"] = { REMOVED_4_0_3 },
							}),
							revampAch(3036, {	-- Observed (10 player)
								title(129),	-- Starcaller
							}),
							ach(5020, {	-- Observed - Guild Edition
								["timeline"] = { ADDED_4_0_3 },
							}),
							revampAch(3003, {	-- Supermassive (10 player)
								crit(10780),	-- Close 3 Black Holes within 10 seconds
								crit(10781),	-- Defeat Algalon the Observer
							}),
							ach(3316, {	-- Herald of the Titans
								["description"] = "While your current character may now be too high level to earn it, it's good for players to know it exist.",
								-- If Classic actually goes to WoD, feel free to add variations of lock criteria for the multiple level squishes
								-- #if AFTER SHADOWLANDS
								["lockCriteria"] = { 1, "lvl", 31 },
								-- #else
								["lockCriteria"] = { 1, "lvl", 80 },
								-- #endif
								["groups"] = {
									title(131),	-- , Herald of the Titans
								},
							}),
							i(46052),	-- Reply-Code Alpha
							i(46047),	-- Pendant of the Somber Witness
							i(46040),	-- Strength of the Heavens
							i(46044),	-- Observer's Mantle
							i(46037),	-- Shoulderplates of the Celestial Watch
							i(46042),	-- Drape of the Messenger
							i(46039),	-- Breastplate of the Timeless
							i(46043),	-- Gloves of the Endless Dark
							i(46045),	-- Pulsar Gloves
							i(46041),	-- Starfall Girdle
							i(46049),	-- Zodiac Leggings
							i(46050),	-- Starlight Treads
							i(46048),	-- Band of Lights
							i(46046),	-- Nebula Band
							i(46038),	-- Dark Matter
							i(46051),	-- Meteorite Crystal
						},
					}),
					e(1641, {	-- Assembly of Iron
						["crs"] = {
							32867,	-- Steelbreaker
							32927,	-- Runemaster Molgeim
							32857,	-- Stormcaller Brundir
						},
						["groups"] = {
							revampAch(2945, {	-- But I'm On Your Side (10 player)
								["provider"] = { "i", 43499 },	-- Iron Boot Flask
								["description"] = "Use the \"Iron Boot Flask\" toy before engaging the boss.",
							}),
							revampAch(2947),	-- Can't Do That While Stunned (10 player)
							revampAch(2939),	-- I Choose You, Runemaster Molgeim (10 player)
							revampAch(2941, {	-- I Choose You, Steelbreaker (10 player)
								i(45448),	-- Perilous Bite
								i(45449),	-- The Masticator
								i(45447),	-- Watchful Eye of Fate
								i(45455),	-- Belt of the Crystal Tree
								i(45456),	-- Loop of the Agile
								i(45506),	-- Archivum Data Disc
							}),
							revampAch(2940),	-- I Choose You, Stormcaller Brundir (10 player)
							i(142088, {	-- Runeforged Servitor (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(45331),	-- Rune-Etched Nightblade
							i(45332),	-- Stormtip
							i(45329),	-- Circlet of True Sight
							i(45322),	-- Cloak of the Iron Council
							i(45423),	-- Runetouch Wristwraps
							i(45333),	-- Belt of the Iron Servant
							i(45324),	-- Leggings of Swift Reflexes
							i(45378),	-- Boots of the Petrified Forest
							i(45330),	-- Greaves of Iron Intensity
							i(45418),	-- Lady Maye's Sapphire Ring
						},
					}),
					e(1642, {	-- Kologarn
						["creatureID"] = 32930,	-- Kologarn
						["groups"] = {
							revampAch(2953),	-- Disarmed (10 player)
							revampAch(2955),	-- If Looks Could Kill (10 player)
							revampAch(2959),	-- Rubble and Roll (10 player)
							revampAch(2951),	-- With Open Arms (10 player)
							i(45695),	-- Spire of Withering Dreams
							i(45700),	-- Stoneguard
							i(45696),	-- Mark of the Unyielding
							i(45699),	-- Pendant of the Piercing Glare
							i(45697),	-- Shoulderguards of the Solemn Watch
							i(45704),	-- Shawl of the Shattered Giant
							i(45701),	-- Greaves of the Earthbinder
							i(45698),	-- Sabatons of the Iron Watcher
							i(45702),	-- Emerald Signet Ring
							i(45703),	-- Spark of Hope
						},
					}),
					e(1643, {	-- Auriaya
						["creatureID"] = 33515,	-- Auriaya
						["groups"] = {
							revampAch(3006),	-- Crazy Cat Lady (10 player)
							revampAch(3076, {	-- Nine Lives (10 player)
								["cr"] = 34035,	-- Feral Defender
							}),
							i(142089, {	-- Sanctum Cub (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(45713),	-- Nurturing Touch
							i(45707),	-- Shieldwall of the Breaker
							i(45864),	-- Cover of the Keepers
							i(45711),	-- Ironaya's Discarded Mantle
							i(45832),	-- Mantle of the Preserver
							i(45712),	-- Chestplate of Titanic Fury
							i(45865),	-- Raiments of the Corrupted
							i(45709),	-- Nimble Climber's Belt
							i(45708),	-- Archaedas' Lost Legplates
							i(45866),	-- Elemental Focus Stone
						},
					}),
					e(1644, {	-- Hodir
						["creatureID"] = 32845,	-- Hodir
						["groups"] = {
							revampAch(2961),	-- Cheese the Freeze (10 player)
							revampAch(2967),	-- Getting Cold in Here (10 player)
							revampAch(3182, {	-- I Could Say That This Cache Was Rare (10 player)
								i(45886),	-- Icecore Staff
								i(45876),	-- Shiver
								i(45887),	-- Ice Layered Barrier
								i(45877),	-- The Boreal Guard
								i(45888),	-- Bitter Cold Armguards
								i(45786),	-- Hodir's Sigil
							}),
							revampAch(2963),	-- I Have the Coolest Friends (10 player)
							revampAch(2969),	-- Staying Buffed All Winter (10 player)
							i(142090, {	-- Winter Rageling (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(138800, {	-- Illusion: Blade Ward (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(45650),	-- Leggings of the Wayward Conqueror
							i(45651),	-- Leggings of the Wayward Protector
							i(45652),	-- Leggings of the Wayward Vanquisher
							i(45458),	-- Stormedge
							i(45872),	-- Avalanche
							i(45464),	-- Cowl of Icy Breaths
							i(45873),	-- Winter's Frigid Embrace
							i(45874),	-- Signet of Winter
						},
					}),
					e(1645, {	-- Thorim
						["creatureID"] = 32865,	-- Thorim
						["groups"] = {
							revampAch(2971),	-- Don't Stand in the Lightning (10 player)
							revampAch(2973, {	-- I'll Take You All On (10 player)
								crit(10558),	-- Defeat Thorim
								crit(10287),	-- Participate in slaying Runic Colossus
								crit(10288),	-- Participate in slaying Ancient Rune Giant
							}),
							revampAch(3176, {	-- Lose Your Illusion (10 player)
								i(45930),	-- Combatant's Bootblade
								i(45933),	-- Pendant of the Shallow Grave
								i(45928),	-- Gauntlets of the Thunder Lord
								i(45931),	-- Mjolnir Runestone
								i(45929),	-- Sif's Remembrance
								i(45784),	-- Thorim's Sigil
							}),
							revampAch(2977),	-- Siffed (10 player)
							revampAch(2975),	-- Who Needs Bloodlust? (10 player)
							i(138800, {	-- Illusion: Blade Ward (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(45659),	-- Spaulders of the Wayward Conqueror
							i(45660),	-- Spaulders of the Wayward Protector
							i(45661),	-- Spaulders of the Wayward Vanquisher
							i(45892),	-- Legacy of Thunder
							i(45893),	-- Guise of the Midgard Serpent
							i(45927),	-- Handwraps of Resonance
							i(45895),	-- Belt of the Blood Pit
							i(45894),	-- Leggings of Unstable Discharge
						},
					}),
					e(1646, {	-- Freya
						["creatureID"] = 32906,	-- Freya
						["groups"] = {
							revampAch(2980),	-- Con-speed-atory (10 player)
							revampAch(2985),	-- Deforestation (10 player)
							revampAch(2982),	-- Getting Back to Nature (10 player)
							revampAch(3177),	-- Knock on Wood (10 player)
							revampAch(3178),	-- Knock, Knock on Wood (10 player)
							revampAch(3179, {	-- Knock, Knock, Knock on Wood (10 player)
								i(45947),	-- Serilas, Blood Blade of Invar One-Arm
								i(45294),	-- Petrified Ivy Sprig
								i(45945),	-- Seed of Budding Carnage
								i(45943),	-- Gloves of Whispering Winds
								i(45946),	-- Fire Orchid Signet
								i(45788),	-- Freya's Sigil
							}),
							i(142091, {	-- Snaplasher (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(138800, {	-- Illusion: Blade Ward (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(45644),	-- Gloves of the Wayward Conqueror
							i(45645),	-- Gloves of the Wayward Protector
							i(45646),	-- Gloves of the Wayward Vanquisher
							i(45934),	-- Unraveling Reach
							i(45935),	-- Ironbark Faceguard
							i(45941),	-- Chestguard of the Lasher
							i(45940),	-- Tunic of the Limber Stalker
							i(45936),	-- Legplates of Fluorishing Resolve
							i(46110, {	-- Alchemist's Cache
								["requireSkill"] = ALCHEMY,
							}),
						},
					}),
					e(1647, {	-- Mimiron
						["crs"] = {
							33350,	-- Mimiron
							33432,	-- Leviathan Mk II
							33651,	-- VX-001
							33670,	-- Aerial Command Unit
						},
						["groups"] = {
							revampAch(3180, {	-- Firefighter (10 player)
								i(45990),	-- Fusion Blade
								i(45993),	-- Mimiron's Flight Goggles
								i(45982),	-- Fused Alloy Legplates
								i(45988),	-- Greaves of the Iron Army
								i(45989),	-- Tempered Mercury Greaves
								i(45787),	-- Mimiron's Sigil
							}),
							revampAch(3138, {	-- Not-So-Friendly Fire (10 player)
								["cr"] = 34057,	-- Assault Bot
							}),
							revampAch(2989, {	-- Set Up Us the Bomb (10 player)
								crit(10543),	-- A Proximity Mine
								crit(10544),	-- A Rocket Strike
								crit(10545),	-- A Bomb Bot
							}),
							i(138800, {	-- Illusion: Blade Ward (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(142092, {	-- G0-R41-0N Ultratonk (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(45647),	-- Helm of the Wayward Conqueror
							i(45648),	-- Helm of the Wayward Protector
							i(45649),	-- Helm of the Wayward Vanquisher
							i(45972),	-- Pulse Baton
							i(45974),	-- Shoulderguards of Assimilation
							i(45973),	-- Stylish Power Cape
							i(45976),	-- Static Charge Handwraps
							i(45975),	-- Cable of the Metrognome
							i(140782, {	-- Neural Net Detangler
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					e(1648, {	-- General Vezax
						["creatureID"] = 33271,	-- General Vezax
						["groups"] = {
							revampAch(3181, {	-- I Love the Smell of Saronite in the Morning (10 player)
								i(46033),	-- Tortured Earth
								i(46035),	-- Aesuga, Hand of the Argent Champion
								i(46036),	-- Void Sabre
								i(46032),	-- Drape of the Faceless General
								i(46034),	-- Leggings of Profound Darkness
							}),
							revampAch(2996),	-- Shadowdodger (10 player)
							i(45996),	-- Hoperender
							i(46011),	-- Shadowbite
							i(46008),	-- Choker of the Abyss
							i(46015),	-- Pendant of Endless Despair
							i(46013),	-- Underworld Mantle
							i(46014),	-- Saronite Animus Cloak
							i(46012),	-- Vestments of the Piercing Light
							i(46009),	-- Bindings of the Depths
							i(45997),	-- Gauntlets of the Wretched
							i(46346),	-- Boots of Unsettled Prey
							i(46010),	-- Darkstone Ring
						},
					}),
					e(1649, {	-- Yogg-Saron
						["creatureID"] = 33288,	-- Yogg-Saron
						["groups"] = {
							-- #if ANYCLASSIC
							ach(17340, {	-- Ahead of the Curve: Yogg-Saron
								["OnUpdate"] = [[function(t)
									if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_THREE .. [[) then
										t.u = ]] .. REMOVED_FROM_GAME .. [[;
										t.rwp = nil;
									else
										t.u = ]] .. WRATH_PHASE_TWO .. [[;
										t.rwp = 30200;
									end
								end]],
							}),
							-- #endif
							revampAch(3159, {	-- Alone in the Darkness (10 player)
								i(46312),	-- Vanquished Clutches of Yogg-Saron
							}),
							ach(5019, {	-- Alone in the Darkness - Guild Edition
								["timeline"] = { ADDED_4_0_3 },
							}),
							revampAch(3158, {	-- One Light in the Darkness (10 player)
								i(46067),	-- Hammer of Crushing Whispers
								i(46097),	-- Caress of Insanity
								i(46068),	-- Amice of Inconceivable Horror
								i(46095),	-- Soul-Devouring Cinch
								i(46096),	-- Signet of Soft Lament
							}),
							revampAch(3141),	-- Two Lights in the Darkness (10 player)
							revampAch(3157),	-- Three Lights in the Darkness (10 player)
							revampAch(3008),	-- Drive Me Crazy (10 player)
							revampAch(3012),	-- He's Not Getting Any Older (10 player)
							revampAch(3015, {	-- In His House He Waits Dreaming (10 player)
								crit(10324),	-- The Assassination of King Llane
								crit(10325),	-- The Forging of the Demon Soul
								crit(10326),	-- The Tortured Champion
							}),
							revampAch(3009, {	-- Kiss and Make Up (10 player)
								["description"] = "During phase 2, when Sara is flying above Yogg-Saron, /kiss her while she's angry.",
								["crs"] = { 33134 },	-- Sara
							}),
							revampAch(3014),	-- They're Coming Out of the Walls (10 player)
							i(138801, {	-- Illusion: Blood Draining (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(142093, {	-- Creeping Tentacle (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(45635),	-- Chestguard of the Wayward Conqueror
							i(45636),	-- Chestguard of the Wayward Protector
							i(45637),	-- Chestguard of the Wayward Vanquisher
							i(46016),	-- Abaddon
							i(46025),	-- Devotion
							i(46024),	-- Kingsbane
							i(46031),	-- Touch of Madness
							i(46018),	-- Deliverance
							i(46028),	-- Faceguard of the Eyeless Horror
							i(46022),	-- Pendant of a Thousand Maws
							i(46019),	-- Leggings of the Insatiable
							i(46030),	-- Treads of the Dragon Council
							i(46021),	-- Royal Seal of King Llane
						},
					}),
					-- #endif
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL, {
				["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					-- #if AFTER 7.3.5.25727
					n(ACHIEVEMENTS, {
						ach(2958, {	-- Glory of the Ulduar Raider (25 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							-- Meta Achievement
							["sym"] = {{"meta_achievement",
								3057,	-- Orbit-uary (25 player)
								2929,	-- Stokin' the Furnace (25 player)
								2924,	-- Iron Dwarf, Medium Rare (25 player)
								3059,	-- Heartbreaker (25 player)
								2944,	-- I Choose You, Steelbreaker (25 player)
								2954,	-- Disarmed (25 player)
								3007,	-- Crazy Cat Lady (25 player)
								3184,	-- I Could Say That This Cache Was Rare (25 player)
								3183,	-- Lose Your Illusion (25 player)
								3187,	-- Knock, Knock, Knock on Wood (25 player)
								3189,	-- Firefighter (25 player)
								3188,	-- I Love the Smell of Saronite in the Morning (25 player)
								3163,	-- One Light in the Darkness (25 player)
							}},
							["groups"] = {
								i(45801),	-- Ironbound Proto-Drake (MOUNT!)
							},
						}),
						revampAch(2921),	-- A Quick Shave (25 player)
						revampAch(3164),	-- Alone in the Darkness (25 player)
						revampAch(3163),	-- One Light in the Darkness (25 player)
						revampAch(3162),	-- Two Lights in the Darkness (25 player)
						revampAch(3161),	-- Three Lights in the Darkness (25 player)
						revampAch(2946),	-- But I'm On Your Side (25 player)
						revampAch(2948),	-- Can't Do That While Stunned (25 player)
						revampAch(2962),	-- Cheese the Freeze (25 player)
						revampAch(2981),	-- Con-speed-atory (25 player)
						ach(2904, bubbleDownSelf({	-- Conqueror of Ulduar
							["timeline"] = { ADDED_3_1_0, REMOVED_4_0_1 },
						},{
							title(126),	-- , Conqueror of Ulduar
						})),
						revampAch(3007),	-- Crazy Cat Lady (25 player)
						revampAch(2984),	-- Deforestation (25 player)
						revampAch(2954),	-- Disarmed (25 player)
						revampAch(2972),	-- Don't Stand in the Lightning (25 player)
						revampAch(3010),	-- Drive Me Crazy (25 player)
						revampAch(3098),	-- Dwarfageddon (25 player)
						revampAch(3189),	-- Firefighter (25 player)
						revampAch(2983),	-- Getting Back to Nature (25 player)
						revampAch(2968),	-- Getting Cold in Here (25 player)
						ach(3005, {	-- He Feeds On Your Tears (25 player)
							["timeline"] = { REMOVED_4_0_3 },
						}),
						revampAch(3013),	-- He's Not Getting Any Older (25 player)
						revampAch(3059),	-- Heartbreaker (25 player)
						revampAch(2928),	-- Hot Pocket (25 player)
						revampAch(2942),	-- I Choose You, Runemaster Molgeim (25 player)
						revampAch(2944),	-- I Choose You, Steelbreaker (25 player)
						revampAch(2943),	-- I Choose You, Stormcaller Brundir (25 player)
						revampAch(3184),	-- I Could Say That This Cache Was Rare (25 player)
						revampAch(2965),	-- I Have the Coolest Friends (25 player)
						revampAch(3188),	-- I Love the Smell of Saronite in the Morning (25 player)
						revampAch(2974),	-- I'll Take You All On (25 player)
						revampAch(2956),	-- If Looks Could Kill (25 player)
						revampAch(3016),	-- In His House He Waits Dreaming (25 player)
						revampAch(2924),	-- Iron Dwarf, Medium Rare (25 player)
						revampAch(3011),	-- Kiss and Make Up (25 player)
						revampAch(3185),	-- Knock on Wood (25 player)
						revampAch(3186),	-- Knock, Knock on Wood (25 player)
						revampAch(3187),	-- Knock, Knock, Knock on Wood (25 player)
						revampAch(3183),	-- Lose Your Illusion (25 player)
						revampAch(3118),	-- Lumberjacked (25 player)
						revampAch(2938),	-- Must Deconstruct Faster (25 player)
						revampAch(2932),	-- Nerf Engineering (25 player)
						revampAch(2936),	-- Nerf Gravity Bombs (25 player)
						revampAch(2935),	-- Nerf Scrapbots (25 player)
						revampAch(3077),	-- Nine Lives (25 player)
						revampAch(2995),	-- Not-So-Friendly Fire (25 player)
						revampAch(2917),	-- Nuked from Orbit (25 player)
						revampAch(3037),	-- Observed (25 player)
						revampAch(3057),	-- Orbit-uary (25 player)
						revampAch(2918),	-- Orbital Bombardment (25 player)
						revampAch(2916),	-- Orbital Devastation (25 player)
						revampAch(2960),	-- Rubble and Roll (25 player)
						revampAch(3237),	-- Set Up Us the Bomb (25 player)
						revampAch(2997),	-- Shadowdodger (25 player)
						revampAch(2926),	-- Shattered (25 player)
						revampAch(2912),	-- Shutout (25 player)
						revampAch(2978),	-- Siffed (25 player)
						revampAch(2970),	-- Staying Buffed All Winter (25 player)
						revampAch(2929),	-- Stokin' the Furnace (25 player)
						revampAch(3002),	-- Supermassive (25 player)
						revampAch(2910),	-- Take Out Those Turrets (25 player)
						revampAch(2889),	-- The Antechamber of Ulduar (25 player)
						revampAch(2893),	-- The Descent into Madness (25 player)
						revampAch(2891),	-- The Keepers of Ulduar (25 player)
						ach(2895, {	-- The Secrets of Ulduar (25 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							-- Meta Achievement
							["sym"] = {{"meta_achievement",
								2887,	-- The Siege of Ulduar (25 player)
								2889,	-- The Antechamber of Ulduar (25 player)
								2891,	-- The Keepers of Ulduar (25 player)
								2893,	-- The Descent into Madness (25 player)
							}},
						}),
						revampAch(2887),	-- The Siege of Ulduar (25 player)
						revampAch(3017),	-- They're Coming Out of the Walls (25 player)
						revampAch(2908),	-- Three Car Garage (25 player)
						revampAch(2906),	-- Unbroken (25 player)
						revampAch(2976),	-- Who Needs Bloodlust? (25 player)
						revampAch(2952),	-- With Open Arms (25 player)
						ach(3259, {	-- Realm First! Celestial Defender
							["timeline"] = { ADDED_3_1_0, REMOVED_3_2_0 },
							["g"] = {
								title(125, {	-- <Name> the Celestial Defender
									["timeline"] = { ADDED_3_1_0, REMOVED_3_2_0 },
								}),
							},
						}),
						ach(3117, {	-- Realm First! Death's Demise
							["timeline"] = { ADDED_3_1_0, REMOVED_3_2_0 },
							["g"] = {
								title(124, {	-- <Name>, Death's Demise
								["timeline"] = { ADDED_3_1_0, REMOVED_3_2_0 },
								}),
							},
						}),
					}),
					-- #else
					n(ACHIEVEMENTS, {
						ach(2958, {	-- Glory of the Ulduar Raider (25 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							-- Meta Achievement
							["sym"] = {{"meta_achievement",
								3057,	-- Orbit-uary (25 player)
								2929,	-- Stokin' the Furnace (25 player)
								2924,	-- Iron Dwarf, Medium Rare (25 player)
								3059,	-- Heartbreaker (25 player)
								2944,	-- I Choose You, Steelbreaker (25 player)
								2954,	-- Disarmed (25 player)
								3007,	-- Crazy Cat Lady (25 player)
								3184,	-- I Could Say That This Cache Was Rare (25 player)
								3183,	-- Lose Your Illusion (25 player)
								3187,	-- Knock, Knock, Knock on Wood (25 player)
								3189,	-- Firefighter (25 player)
								3188,	-- I Love the Smell of Saronite in the Morning (25 player)
								3163,	-- One Light in the Darkness (25 player)
							}},
							["groups"] = {
								i(45801),	-- Ironbound Proto-Drake (MOUNT!)
							},
						}),
						ach(2904, bubbleDownSelf({	-- Conqueror of Ulduar
							["timeline"] = { ADDED_3_1_0, REMOVED_4_0_1 },
						},{
							title(126),	-- , Conqueror of Ulduar
						})),
						ach(2895, {	-- The Secrets of Ulduar (25 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							-- Meta Achievement
							["sym"] = {{"meta_achievement",
								2887,	-- The Siege of Ulduar (25 player)
								2889,	-- The Antechamber of Ulduar (25 player)
								2891,	-- The Keepers of Ulduar (25 player)
								2893,	-- The Descent into Madness (25 player)
							}},
						}),
						ach(2889, {	-- The Antechamber of Ulduar (25 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							["groups"] = {
								crit(10581, {	-- Assembly of Iron
									["_encounter"] = { 1641, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
								}),
								crit(9966, {	-- Auriaya
									["_encounter"] = { 1643, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
								}),
								crit(9979, {	-- Kologarn
									["_encounter"] = { 1642, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
								}),
							},
						}),
						ach(2893, {	-- The Descent into Madness (25 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							["groups"] = {
								crit(9964, {	-- General Vezax
									["_encounter"] = { 1648, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
								}),
								crit(9967, {	-- Yogg-Saron
									["_encounter"] = { 1649, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
								}),
							},
						}),
						ach(2891, {	-- The Keepers of Ulduar (25 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							["groups"] = {
								crit(10562, {	-- Hodir
									["_encounter"] = { 1644, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
								}),
								crit(10561, {	-- Thorim
									["_encounter"] = { 1645, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
								}),
								crit(10563, {	-- Freya
									["_encounter"] = { 1646, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
								}),
								crit(9963, {	-- Mimiron
									["_encounter"] = { 1647, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
								}),
							},
						}),
						ach(2887, {	-- The Siege of Ulduar (25 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							["groups"] = {
								crit(9969, {	-- Flame Leviathan
									["_encounter"] = { 1637, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
								}),
								crit(9955, {	-- Razorscale
									["_encounter"] = { 1639, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
								}),
								crit(9956, {	-- Ignis the Furnace Master
									["_encounter"] = { 1638, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
								}),
								crit(9957, {	-- XT-002 Deconstructor
									["_encounter"] = { 1640, DIFFICULTY.LEGACY_RAID.PLAYER25_NORMAL },
								}),
							},
						}),
						ach(3098, {	-- Dwarfageddon (25 player)
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
							["crs"] = {
								33236,	-- Steelforged Defender
								33572,	-- Steelforged Defender
							},
						}),
						ach(3118, {	-- Lumberjacked (25 player)
							["providers"] = {
								{ "n", 32915 },	-- Elder Brightleaf
								{ "n", 32913 },	-- Elder Ironbranch
								{ "n", 32914 },	-- Elder Stonebark
							},
							["description"] = "Must be killed before killing Freya or they will despawn.",
							["timeline"] = { ADDED_3_1_0, REMOVED_7_3_5 },
						}),
						ach(3259, {	-- Realm First! Celestial Defender
							["timeline"] = { ADDED_3_1_0, REMOVED_3_2_0 },
							["g"] = {
								title(125, {	-- <Name> the Celestial Defender
									["timeline"] = { ADDED_3_1_0, REMOVED_3_2_0 },
								}),
							},
						}),
						ach(3117, {	-- Realm First! Death's Demise
							["timeline"] = { ADDED_3_1_0, REMOVED_3_2_0 },
							["g"] = {
								title(124, {	-- <Name>, Death's Demise
								["timeline"] = { ADDED_3_1_0, REMOVED_3_2_0 },
								}),
							},
						}),
					}),
					applyclassicphase(WRATH_PHASE_TWO_HAMMERPRIO, n(QUALITY_LEGENDARY, {
						["description"] = "Collect 30 x |cFFFF8000Fragment of Val'anyr|r from the bosses in 25-Man Ulduar. Hard modes have higher drop chances.",
						["classes"] = { PALADIN, PRIEST, SHAMAN, MONK, DRUID, EVOKER },
						["title"] = "Val'anyr, Hammer of Ancient Kings",
						["icon"] = 253399,
						["isRaid"] = true,
						["groups"] = {
							ach(3142, {	-- Val'anyr, Hammer of Ancient Kings
								["provider"] = { "i", 46017 },	-- Val'anyr, Hammer of Ancient Kings
								["classes"] = { PALADIN, PRIEST, SHAMAN, MONK, DRUID, EVOKER },
							}),
							q(13622, {	-- Ancient History
								["provider"] = { "i", 45039 },	-- Shattered Fragments of Val'anyr
								["cost"] = { { "i", 45038, 30 } },	-- Fragment of Val'anyr
							}),
							q(13629, {	-- Val'anyr, Hammer of Ancient Kings
								["provider"] = { "o", 194555 },	-- Archivum Console
								["sourceQuest"] = 13622,	-- Ancient History
								["groups"] = {
									objective(1, {	-- 0/1 Reforged Hammer of Ancient Kings
										["provider"] = { "i", 45897 },	-- Reforged Hammer of Ancient Kings
										["cost"] = { { "i", 45896, 1 } },	-- Unbound Fragments of Val'anyr
										["cr"] = 33288,	-- Yogg-Saron
									}),
									i(46017)	-- Val'anyr, Hammer of Ancient Kings
								},
							}),
						},
					})),
					n(QUESTS, {
						q(13818, {	-- Heroic: Algalon
							["providers"] = {
								{ "n", 33957 },	-- Prospector Loren
								{ "i", 45855 },	-- Sigils of the Watchers
							},
							["sourceQuests"] = {
								13821,	-- Heroic: Freya's Sigil
								13822,	-- Heroic: Hodir's Sigil
								13824,	-- Heroic: Mimiron's Sigil
								13823,	-- Heroic: Thorim's Sigil
							},
							["groups"] = {
								i(45798),	-- Heroic Celestial Planetarium Key
								i(45878, {	-- Large Sack of Ulduar Spoils
									["sym"] = {
										{ "selectparent", 3 },	-- Select the difficulty header.
										{ "pop" },	-- Get the Rewards.
										{ "where", "headerID", COMMON_BOSS_DROPS },	-- Select the "Common Boss Drops" header.
										{ "pop" },	-- Get the Rewards.
										{ "exclude", "itemID", 46027, 46348, 45038 },	-- Exclude the Enchanting Recipes & Fragment
									},
								}),
							},
						}),
						q(13819, {	-- Heroic: All Is Well That Ends Well
							["providers"] = {
								{ "i", 46053 },	-- Reply-Code Alpha
								{ "n", 16128 },	-- Rhonin <Leader of the Kirin Tor>
							},
							["maps"] = { NORTHREND_DALARAN },
							["groups"] = {
								i(45588),	-- Drape of the Skyborn
								i(45618),	-- Sunglimmer Cloak
								i(45608),	-- Brann's Signet Ring
								i(45614),	-- Starshine Circle
							},
						}),
						q(13817, {	-- Heroic: Archivum Data Disc
							["provider"] = { "i", 45857 },	-- Heroic: Archivum Data Disc
						}),
						q(13821, {	-- Heroic: Freya's Sigil
							["qg"] = 33957,	-- Prospector Loren
							["sourceQuest"] = 13816,	-- Heroic: The Celestial Planetarium
							["groups"] = {
								objective(1, {	-- 0/1 Freya's Sigil
									["provider"] = { "i", 45814 },	-- Freya's Sigil
									["cr"] = 32906,	-- Freya
								}),
							},
						}),
						q(13822, {	-- Heroic: Hodir's Sigil
							["qg"] = 33957,	-- Prospector Loren
							["sourceQuest"] = 13816,	-- Heroic: The Celestial Planetarium
							["groups"] = {
								objective(1, {	-- 0/1 Hodir's Sigil
									["provider"] = { "i", 45815 },	-- Hodir's Sigil
									["cr"] = 32845,	-- Hodir
								}),
							},
						}),
						q(13824, {	-- Heroic: Mimiron's Sigil
							["qg"] = 33957,	-- Prospector Loren
							["sourceQuest"] = 13816,	-- Heroic: The Celestial Planetarium
							["groups"] = {
								objective(1, {	-- 0/1 Mimiron's Sigil
									["provider"] = { "i", 45816 },	-- Mimiron's Sigil
									["cr"] = 33350,	-- Mimiron
								}),
							},
						}),
						q(13816, {	-- Heroic: The Celestial Planetarium
							["qg"] = 33957,	-- Prospector Loren
							["sourceQuest"] = 13817,	-- Heroic: Archivum Data Disc
						}),
						q(13823, {	-- Heroic: Thorim's Sigil
							["qg"] = 33957,	-- Prospector Loren
							["sourceQuest"] = 13816,	-- Heroic: The Celestial Planetarium
							["groups"] = {
								objective(1, {	-- 0/1 Thorim's Sigil
									["provider"] = { "i", 45817 },	-- Thorim's Sigil
									["cr"] = 32865,	-- Thorim
								}),
							},
						}),
					}),
					n(ZONE_DROPS, {
						i(45605),	-- Daschal's Bite
						i(45539),	-- Pendant of Focused Energies
						i(45538),	-- Titanstone Pendant
						i(45543),	-- Shoulders of Misfortune
						i(45541),	-- Shroud of Alteration
						i(45549),	-- Grips of Chaos
						i(45548),	-- Belt of the Sleeper
						i(45547),	-- Relic Hunter's Cord
						i(45544),	-- Leggings of the Tortured Earth
						i(45542),	-- Greaves of the Stonewarder
						i(45540),	-- Bladebearer's Signet
						i(46138, {	-- Idol of the Flourishing Life
							["timeline"] = { REMOVED_5_0_4 },
						}),
					}),
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							33113,	-- Flame Leviathan
							33118,	-- Ignis the Furnace Master
							33186,	-- Razorscale
							33293,	-- XT-002 Deconstructor
							32871,	-- Algalon the Observer
							32927,	-- Runemaster Molgeim
							32857,	-- Stormcaller Brundir
							32867,	-- Steelbreaker
							32930,	-- Kologarn
							33515,	-- Auriaya
							32845,	-- Hodir
							32865,	-- Thorim
							32906,	-- Freya
							33350,	-- Mimiron
							33271,	-- General Vezax
							33288,	-- Yogg-Saron
						},
						["groups"] = {
							applyclassicphase(WRATH_PHASE_TWO_HAMMERPRIO, i(45038)),	-- Fragment of Val'anyr
							i(45087, {	-- Runed Orb
								["description"] = "Can also drop from defeating 10-Man Hard Mode bosses.",
							}),
							i(46027),	-- Formula: Enchant Weapon - Blade Ward (RECIPE!)
							i(46348),	-- Formula: Enchant Weapon - Blood Draining (RECIPE!)
							i(45100),	-- Pattern: Belt of Arctic Life (RECIPE!)
							i(45094),	-- Pattern: Belt of Dragons (RECIPE!)
							i(45096),	-- Pattern: Blue Belt of Chaos (RECIPE!)
							i(45095),	-- Pattern: Boots of Living Scale (RECIPE!)
							i(45101),	-- Pattern: Boots of Wintry Endurance (RECIPE!)
							i(45104),	-- Pattern: Cord of the White Dawn
							i(45098),	-- Pattern: Death-Warmed Belt (RECIPE!)
							i(45099),	-- Pattern: Footpads of Silence (RECIPE!)
							i(45097),	-- Pattern: Lightning Grounded Boots (RECIPE!)
							i(45102),	-- Pattern: Sash of Ancient Power
							i(45105),	-- Pattern: Savior's Slippers
							i(45103),	-- Pattern: Spellslinger's Slippers
							i(45089),	-- Plans: Battlelord's Plate Boots (RECIPE!)
							i(45088),	-- Plans: Belt of the Titans (RECIPE!)
							i(45092),	-- Plans: Indestructible Plate Girdle (RECIPE!)
							i(45090),	-- Plans: Plate Girdle of Righteousness (RECIPE!)
							i(45093),	-- Plans: Spiked Deathdealers (RECIPE!)
							i(45091),	-- Plans: Treads of Destiny (RECIPE!)
						},
					}),
					e(1637, {	-- Flame Leviathan
						["creatureID"] = 33113,	-- Flame Leviathan
						["groups"] = {
							revampAch(3057, {	-- Orbit-uary (25 player)
								i(45132),	-- Golden Saronite Dragon
								i(45133),	-- Pendant of Fiery Havoc
								i(45136),	-- Shoulderpads of Dormant Energies
								i(45134),	-- Plated Leggings of Ruination
								i(45135),	-- Boots of Fiery Resolution
							}),
							revampAch(2917),	-- Nuked from Orbit (25 player)
							revampAch(2916),	-- Orbital Devastation (25 player)
							revampAch(2918),	-- Orbital Bombardment (25 player)
							revampAch(2912),	-- Shutout (25 player)
							revampAch(2910),	-- Take Out Those Turrets (25 player)
							revampAch(2908, {	-- Three Car Garage (25 player)
								-- TODO: Add vehicle npcIDs
								crit(10049),	-- Salvaged Chopper
								crit(10050),	-- Salvaged Siege Engine
								crit(10051),	-- Salvaged Demolisher
							}),
							revampAch(2906),	-- Unbroken (25 player)
							i(45110),	-- Titanguard
							i(45115),	-- Leviathan Fueling Manual
							i(45107),	-- Iron Riveted War Helm
							i(45118),	-- Steamworker's Goggles
							i(45116),	-- Freya's Choker of Warding
							i(45108),	-- Mechanist's Bindings
							i(45111),	-- Mimiron's Inferno Couplings
							i(45117),	-- Constructor's Handwraps
							i(45109),	-- Gloves of the Fiery Behemoth
							i(45119),	-- Embrace of the Leviathan
							i(45113),	-- Glowing Ring of Reclamation
							i(45106),	-- Strength of the Automaton
							i(45112),	-- The Leviathan's Coil
							i(45086, {	-- Rising Sun (25 Man)
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(45114, {	-- Steamcaller's Totem
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					e(1638, {	-- Ignis the Furnace Master
						["creatureID"] = 33118,	-- Ignis the Furnace Master
						["groups"] = {
							revampAch(2928),	-- Hot Pocket (25 player)
							revampAch(2926),	-- Shattered (25 player)
							revampAch(2929),	-- Stokin' the Furnace (25 player)
							i(142086, {	-- Magma Rageling (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(45171),	-- Intensity
							i(45165),	-- Worldcarver
							i(45170),	-- Scepter of Creation
							i(45164),	-- Helm of the Furnace Master
							i(45186),	-- Soot-Covered Mantle
							i(45167),	-- Lifeforge Breastplate
							i(45187),	-- Wristguards of the Firetender
							i(45185),	-- Flamewrought Cinch
							i(45161),	-- Girdle of Embers
							i(45166),	-- Charred Saronite Greaves
							i(45162),	-- Flamestalker Boots
							i(45157),	-- Cindershard Ring
							i(45168),	-- Pyrelight Circle
							i(45158),	-- Heart of Iron
							i(45169, {	-- Totem of the Dancing Flame
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					e(1639, {	-- Razorscale
						["creatureID"] = 33186,	-- Razorscale
						["groups"] = {
							revampAch(2921),	-- A Quick Shave (25 player)
							revampAch(2924),	-- Iron Dwarf, Medium Rare (25 player)
							i(142087, {	-- Ironbound Proto-Whelp (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(45147),	-- Guiding Star
							i(45142),	-- Remorse
							i(45137),	-- Veranus' Bane
							i(45150),	-- Collar of the Wyrmhunter
							i(45140),	-- Razorscale Shoulderguards
							i(45138),	-- Drape of the Drakerider
							i(45149),	-- Bracers of the Broodmother
							i(45146),	-- Shackles of the Odalisque
							i(45151),	-- Belt of the Fallen Wyrm
							i(45139),	-- Dragonslayer's Brace
							i(45141),	-- Proto-Hide Leggings
							i(45143),	-- Saronite Mesh Legguards
							i(45148),	-- Living Flame
							i(45510, {	-- Libram of Discord
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(45144, {	-- Sigil of Deflection
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					e(1640, {	-- XT-002 Deconstructor
						["creatureID"] = 33293,	-- XT-002 Deconstructor
						["groups"] = {
							revampAch(3059, {	-- Heartbreaker (25 player)
								i(45442),	-- Sorthalis, Hammer of the Watchers
								i(45443),	-- Charm of Meticulous Timing
								i(45445),	-- Breastplate of the Devoted
								i(45446),	-- Grasps of Reason
								i(45444),	-- Gloves of the Steady Hand
							}),
							revampAch(2938),	-- Must Deconstruct Faster (25 player)
							revampAch(2932, {	-- Nerf Engineering (25 player)
								["cr"] = 33343,	-- XS-013 Scrapbot
							}),
							revampAch(2936),	-- Nerf Gravity Bombs (25 player)
							revampAch(2935, {	-- Nerf Scrapbots (25 player)
								["crs"] = {
									33346,	-- XE-321 Boombot
									33343,	-- XS-013 Scrapbot
								},
							}),
							i(45256),	-- Twisted Visage
							i(45246),	-- Golem-Shard Sticker
							i(45257),	-- Quartz Crystal Wand
							i(45253),	-- Mantle of Wavering Calm
							i(45251),	-- Shoulderplates of the Deconstructor
							i(45259),	-- Quartz-Studded Harness
							i(45252),	-- Horologist's Wristguards
							i(45248),	-- Clockwork Legplates
							i(45260),	-- Boots of Hasty Revival
							i(45249),	-- Brass-Lined Boots
							i(45258),	-- Sandals of Rash Temperament
							i(45250),	-- Crazed Construct Ring
							i(45247),	-- Signet of the Earthshaker
							i(45254, {	-- Sigil of the Vengeful Heart
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(45255, {	-- Thunderfall Totem
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					e(1650, {	-- Algalon the Observer
						["creatureID"] = 32871,	-- Algalon the Observer
						["groups"] = {
							-- #if ANYCLASSIC
							ach(17341, {	-- Cutting Edge: Ulduar
								["OnUpdate"] = [[function(t)
									if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_THREE .. [[) then
										t.u = ]] .. REMOVED_FROM_GAME .. [[;
										t.rwp = nil;
									else
										t.u = ]] .. WRATH_PHASE_TWO .. [[;
										t.rwp = 30200;
									end
								end]],
							}),
							-- #endif
							ach(3005, {	-- He Feeds On Your Tears (25 player)
								["timeline"] = { REMOVED_4_0_3 },
							}),
							revampAch(3037, {	-- Observed (25 player)
								title(130),	-- the Astral Walker
							}),
							ach(5020, {	-- Observed - Guild Edition
								["timeline"] = { ADDED_4_0_3 },
							}),
							revampAch(3002, {	-- Supermassive (25 player)
								crit(10782),	-- Close 3 Black Holes within 10 seconds
								crit(10783),	-- Defeat Algalon the Observer
							}),
							i(46053),	-- Reply-Code Alpha
							i(45613),	-- Dreambinder
							i(45612),	-- Constellus
							i(45607),	-- Fang of Oblivion
							i(45620),	-- Starshard Edge
							i(45570),	-- Skyforge Crossbow
							i(45587),	-- Bulwark of Algalon
							i(45617),	-- Cosmos
							i(45610),	-- Boundless Gaze
							i(45611),	-- Solar Bindings
							i(45665),	-- Pharos Gloves
							i(45616),	-- Star-Beaded Clutch
							i(45619),	-- Starwatcher's Binding
							i(45594),	-- Legplates of the Endless Void
							i(45615),	-- Planewalker Treads
							i(45599),	-- Sabatons of Lifeless Night
							i(45609),	-- Comet's Trail
						},
					}),
					e(1641, {	-- Assembly of Iron
						["crs"] = {
							32867,	-- Steelbreaker
							32927,	-- Runemaster Molgeim
							32857,	-- Stormcaller Brundir
						},
						["groups"] = {
							revampAch(2946, {	-- But I'm On Your Side (25 player)
								["provider"] = { "i", 43499 },	-- Iron Boot Flask
								["description"] = "Use the \"Iron Boot Flask\" toy before engaging the boss.",
							}),
							revampAch(2948),	-- Can't Do That While Stunned (25 player)
							revampAch(2942),	-- I Choose You, Runemaster Molgeim (25 player)
							revampAch(2944, {	-- I Choose You, Steelbreaker (25 player)
								i(45607),	-- Fang of Oblivion
								i(45243),	-- Sapphire Amulet of Renewal
								i(45245),	-- Shoulderpads of the Intruder
								i(45242),	-- Drape of Mortal Downfall
								i(45241),	-- Belt of Colossal Rage
								i(45244),	-- Greaves of Swift Vengeance
								i(45857),	-- Archivum Data Disc
							}),
							revampAch(2943),	-- I Choose You, Stormcaller Brundir (25 player)
							i(142088, {	-- Runeforged Servitor (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(45234),	-- Rapture
							i(45233),	-- Stormrune Edge
							i(45226),	-- Ancient Iron Heaume
							i(45193),	-- Insurmountable Fervor
							i(45236),	-- Unblinking Eye
							i(45227),	-- Iron-Studded Mantle
							i(45224),	-- Drape of the Lithe
							i(45237),	-- Phaelia's Vestments of the Sprouting Seed
							i(45240),	-- Raiments of the Iron Council
							i(45225),	-- Steelbreaker's Embrace
							i(45228),	-- Handguards of the Enclave
							i(45239),	-- Runeshaper's Gloves
							i(45238),	-- Overload Legwraps
							i(45232),	-- Runed Ironhide Boots
							i(45235),	-- Radiant Seal
						},
					}),
					e(1642, {	-- Kologarn
						["creatureID"] = 32930,	-- Kologarn
						["groups"] = {
							revampAch(2954),	-- Disarmed (25 player)
							revampAch(2956),	-- If Looks Could Kill (25 player)
							revampAch(2960),	-- Rubble and Roll (25 player)
							revampAch(2952),	-- With Open Arms (25 player)
							i(45266),	-- Malice
							i(45261),	-- Giant's Bane
							i(45271),	-- Ironmender
							i(45262),	-- Necklace of Unerring Mettle
							i(45265),	-- Shoulderpads of the Monolith
							i(45272),	-- Robes of the Umbral Brute
							i(45275),	-- Bracers of Unleashed Magic
							i(45264),	-- Decimator's Armguards
							i(45269),	-- Unfaltering Armguards
							i(45268),	-- Gloves of the Pythonic Guardian
							i(45273),	-- Handwraps of Plentiful Recovery
							i(45274),	-- Leggings of the Stoneweaver
							i(45267),	-- Saronite Plated Legguards
							i(45263),	-- Wrathstone
							i(45270, {	-- Idol of the Crying Wind
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					e(1643, {	-- Auriaya
						["creatureID"] = 33515,	-- Auriaya
						["groups"] = {
							revampAch(3007),	-- Crazy Cat Lady (25 player)
							revampAch(3077, {	-- Nine Lives (25 player)
								["cr"] = 34035,	-- Feral Defender
							}),
							i(142089, {	-- Sanctum Cub (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(45437),	-- Runescribed Blade
							i(45315),	-- Stonerender
							i(45327),	-- Siren's Cry
							i(45435),	-- Cowl of the Absolute
							i(45439),	-- Unwavering Stare
							i(45440),	-- Amice of the Stoic Watch
							i(45320),	-- Shoulderplates of the Eternal
							i(45319),	-- Cloak of the Makers
							i(45334),	-- Unbreakable Chestguard
							i(45325),	-- Gloves of the Stonereaper
							i(45434),	-- Greaves of the Rockmender
							i(45441),	-- Sandals of the Ancient Keeper
							i(45326),	-- Platinum Band of the Aesir
							i(45438),	-- Ring of the Faithful Servant
							i(45436, {	-- Libram of the Resolute
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					e(1644, {	-- Hodir
						["creatureID"] = 32845,	-- Hodir
						["groups"] = {
							revampAch(2962),	-- Cheese the Freeze (25 player)
							revampAch(2968),	-- Getting Cold in Here (25 player)
							revampAch(3184, {	-- I Could Say That This Cache Was Rare (25 player)
								i(45457),	-- Staff of Endless Winter
								i(45612),	-- Constellus
								i(45459),	-- Frigid Strength of Hodir
								i(45461),	-- Drape of Icy Intent
								i(45460),	-- Bindings of Winter Gale
								i(45462),	-- Gloves of the Frozen Glade
								i(45815),	-- Hodir's Sigil
							}),
							revampAch(2965),	-- I Have the Coolest Friends (25 player)
							revampAch(2970),	-- Staying Buffed All Winter (25 player)
							i(142090, {	-- Winter Rageling (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(138800, {	-- Illusion: Blade Ward (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(45632),	-- Breastplate of the Wayward Conqueror
							i(45633),	-- Breastplate of the Wayward Protector
							i(45634),	-- Breastplate of the Wayward Vanquisher
							i(45450),	-- Northern Barrier
							i(45453),	-- Winter's Icy Embrace
							i(45454),	-- Frost-Bound Chain Bracers
							i(45452),	-- Frostplate Greaves
							i(45451),	-- Frozen Loop
						},
					}),
					e(1645, {	-- Thorim
						["creatureID"] = 32865,	-- Thorim
						["groups"] = {
							revampAch(2972),	-- Don't Stand in the Lightning (25 player)
							revampAch(2974, {	-- I'll Take You All On (25 player)
								crit(39291),	-- Defeat Thorim
								crit(39438),	-- Participate in slaying Runic Colossus
								crit(39439),	-- Participate in slaying Ancient Rune Giant
							}),
							revampAch(3183, {	-- Lose Your Illusion (25 player)
								i(45570),	-- Skyforge Crossbow
								i(45470),	-- Wisdom's Hold
								i(45472),	-- Warhelm of the Champion
								i(45474),	-- Pauldrons of the Combatant
								i(45473),	-- Embrace of the Gladiator
								i(45471),	-- Fate's Clutch
								i(45817),	-- Thorim's Sigil
							}),
							revampAch(2978),	-- Siffed (25 player)
							revampAch(2976),	-- Who Needs Bloodlust? (25 player)
							i(138800, {	-- Illusion: Blade Ward (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(45638),	-- Crown of the Wayward Conqueror
							i(45639),	-- Crown of the Wayward Protector
							i(45640),	-- Crown of the Wayward Vanquisher
							i(45463),	-- Vulmir, the Northern Tempest
							i(45467),	-- Belt of the Betrayed
							i(45468),	-- Leggings of Lost Love
							i(45469),	-- Sif's Promise
							i(45466),	-- Scale of Fates
						},
					}),
					e(1646, {	-- Freya
						["creatureID"] = 32906,	-- Freya
						["groups"] = {
							revampAch(2981),	-- Con-speed-atory (25 player)
							revampAch(2984),	-- Deforestation (25 player)
							revampAch(2983),	-- Getting Back to Nature (25 player)
							revampAch(3185),	-- Knock on Wood (25 player)
							revampAch(3186),	-- Knock, Knock on Wood (25 player)
							revampAch(3187, {	-- Knock, Knock, Knock on Wood (25 player)
								i(45613),	-- Dreambinder
								i(45484),	-- Bladetwister
								i(45485),	-- Bronze Pendant of the Vanir
								i(45486),	-- Drape of the Sullen Goddess
								i(45487),	-- Handguards of Revitalization
								i(45488),	-- Leggings of the Enslaved Idol
								i(45814),	-- Freya's Sigil
							}),
							i(142091, {	-- Snaplasher (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(138800, {	-- Illusion: Blade Ward (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(45653),	-- Legplates of the Wayward Conqueror
							i(45654),	-- Legplates of the Wayward Protector
							i(45655),	-- Legplates of the Wayward Vanquisher
							i(45479),	-- The Lifebinder
							i(45480),	-- Nymph Heart Charm
							i(45481),	-- Gauntlets of Ruthless Reprisal
							i(45482),	-- Leggings of the Lifetender
							i(45483),	-- Boots of the Servant
							i(46110, {	-- Alchemist's Cache
								["requireSkill"] = ALCHEMY,
							}),
						},
					}),
					e(1647, {	-- Mimiron
						["crs"] = {
							33350,	-- Mimiron
							33432,	-- Leviathan Mk II
							33651,	-- VX-001
							33670,	-- Aerial Command Unit
						},
						["groups"] = {
							revampAch(3189, {	-- Firefighter (25 player)
								i(45494),	-- Delirium's Touch
								i(45620),	-- Starshard Edge
								i(45497),	-- Crown of Luminescence
								i(45496),	-- Titanskin Cloak
								i(45663),	-- Armbands of Bedlam
								i(45495),	-- Conductive Seal
								i(45816),	-- Mimiron's Sigil
							}),
							revampAch(2995, {	-- Not-So-Friendly Fire (25 player)
								["cr"] = 34057,	-- Assault Bot
							}),
							revampAch(3237, {	-- Set Up Us the Bomb (25 player)
								crit(10546),	-- A Proximity Mine
								crit(10547),	-- A Rocket Strike
								crit(10548),	-- A Bomb Bot
							}),
							i(138800, {	-- Illusion: Blade Ward (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(142092, {	-- G0-R41-0N Ultratonk (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(45641),	-- Gauntlets of the Wayward Conqueror
							i(45642),	-- Gauntlets of the Wayward Protector
							i(45643),	-- Gauntlets of the Wayward Vanquisher
							i(45489),	-- Insanity's Grip
							i(45492),	-- Malleable Steelweave Mantle
							i(45493),	-- Asimov's Drape
							i(45491),	-- Waistguard of the Creator
							i(45490),	-- Pandora's Plea
							i(140782, {	-- Neural Net Detangler
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					e(1648, {	-- General Vezax
						["creatureID"] = 33271,	-- General Vezax
						["groups"] = {
							revampAch(3188, {	-- I Love the Smell of Saronite in the Morning (25 player)
								i(45516),	-- Voidrethar, Dark Blade of Oblivion
								i(45517),	-- Pendulum of Infinity
								i(45519),	-- Vestments of the Blind Denizen
								i(45520),	-- Handwraps of the Vigilant
								i(45518),	-- Flare of the Heavens
							}),
							revampAch(2997),	-- Shadowdodger (25 player)
							i(45498),	-- Lotrafen, Spear of the Damned
							i(45511),	-- Scepter of Lost Souls
							i(45502),	-- Helm of the Faceless
							i(45514),	-- Mantle of the Unknowing
							i(45512),	-- Grips of the Unbroken
							i(45505),	-- Belt of Clinging Hope
							i(45508),	-- Belt of the Darkspeaker
							i(45504),	-- Darkcore Leggings
							i(45513),	-- Boots of the Forgotten Depths
							i(45501),	-- Boots of the Underdweller
							i(45503),	-- Metallic Loop of the Sufferer
							i(45515),	-- Ring of the Vacant Eye
							i(45507),	-- The General's Heart
							i(45509, {	-- Idol of the Corruptor
								["timeline"] = { REMOVED_5_0_4 },
							}),
							i(45145, {	-- Libram of the Sacred Shield
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					e(1649, {	-- Yogg-Saron
						["creatureID"] = 33288,	-- Yogg-Saron
						["groups"] = {
							-- #if ANYCLASSIC
							ach(17340, {	-- Ahead of the Curve: Yogg-Saron
								["OnUpdate"] = [[function(t)
									if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_THREE .. [[) then
										t.u = ]] .. REMOVED_FROM_GAME .. [[;
										t.rwp = nil;
									else
										t.u = ]] .. WRATH_PHASE_TWO .. [[;
										t.rwp = 30200;
									end
								end]],
							}),
							-- #endif
							revampAch(3164, {	-- Alone in the Darkness (25 player)
								ach(4626, {	-- And I'll Form the Head!
									["provider"] = { "i", 45693 },	-- Mimiron's Head
									["filterID"] = MOUNTS,
								}),
								i(45693),	-- Mimiron's Head (MOUNT!)
							}),
							ach(5019, {	-- Alone in the Darkness - Guild Edition
								["timeline"] = { ADDED_4_0_3 },
							}),
							revampAch(3163, {	-- One Light in the Darkness (25 player)
								i(45533),	-- Dark Edge of Depravity
								i(45536),	-- Legguards of Cunning Deception
								i(45537),	-- Treads of the False Oracle
								i(45534),	-- Seal of the Betrayed King
								i(45535),	-- Show of Faith
							}),
							revampAch(3162),	-- Two Lights in the Darkness (25 player)
							revampAch(3161),	-- Three Lights in the Darkness (25 player)
							revampAch(3010),	-- Drive Me Crazy (25 player)
							revampAch(3013),	-- He's Not Getting Any Older (25 player)
							revampAch(3016, {	-- In His House He Waits Dreaming (25 player)
								crit(10321),	-- The Assassination of King Llane
								crit(10322),	-- The Forging of the Demon Soul
								crit(10323),	-- The Tortured Champion
							}),
							revampAch(3011, {	-- Kiss and Make Up (25 player)
								["description"] = "During phase 2, when Sara is flying above Yogg-Saron, /kiss her while she's angry.",
								["crs"] = { 33134 },	-- Sara
							}),
							revampAch(3017),	-- They're Coming Out of the Walls (25 player)
							i(138801, {	-- Illusion: Blood Draining (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(142093, {	-- Creeping Tentacle (PET!)
								["timeline"] = { ADDED_7_1_0 },
							}),
							i(45656),	-- Mantle of the Wayward Conqueror
							i(45657),	-- Mantle of the Wayward Protector
							i(45658),	-- Mantle of the Wayward Vanquisher
							i(45521),	-- Earthshaper
							i(45527),	-- Soulscribe
							i(45532),	-- Cowl of Dark Whispers
							i(45523),	-- Garona's Guise
							i(45529),	-- Shawl of Haunted Memories
							i(45524),	-- Chestguard of Insidious Intent
							i(45531),	-- Chestguard of the Fallen God
							i(45525),	-- Godbane Signet
							i(45530),	-- Sanity's Bond
							i(45522),	-- Blood of the Old God
						},
					}),
					-- #endif
				},
			}),
			-- #if AFTER 7.3.5.25600
			d(DIFFICULTY.RAID.NORMAL, {
				n(QUESTS, {
					q(13614, {	-- Algalon
						["qg"] = 33957,	-- Prospector Loren
						["providers"] = {
							{ "n", 33957 },	-- Prospector Loren
							{ "i", 45791 },	-- Sigils of the Watchers
						},
						["sourceQuests"] = {
							13606,	-- Freya's Sigil
							13609,	-- Hodir's Sigil
							13611,	-- Mimiron's Sigil
							13610,	-- Thorim's Sigil
						},
						["timeline"] = { REMOVED_7_3_5 },
						["groups"] = {
							i(45796, {	-- Celestial Planetarium Key
								["timeline"] = { REMOVED_4_2_0 },
							}),
							i(45875, {	-- Sack of Ulduar Spoils
								["sym"] = { { "select", "itemID", 45087 } },	-- Runed Orb
							}),
						},
					}),
					q(13631, {	-- All Is Well That Ends Well
						["providers"] = {
							{ "i", 46052 },	-- Reply-Code Alpha
							{ "n", 16128 },	-- Rhonin <Leader of the Kirin Tor>
						},
						["maps"] = { NORTHREND_DALARAN },
						["groups"] = {
							i(46320),	-- Drape of the Skyherald
							i(46321),	-- Sunglimmer Drape
							i(46322),	-- Brann's Sealing Ring
							i(46323),	-- Starshine Signet
						},
					}),
					q(13604, {	-- Archivum Data Disc
						["provider"] = { "i", 45506 },	-- Archivum Data Disc
					}),
					q(13606, {	-- Freya's Sigil
						["qg"] = 33957,	-- Prospector Loren
						["sourceQuest"] = 13607,	-- The Celestial Planetarium
						["timeline"] = { REMOVED_7_3_5 },
						["groups"] = {
							objective(1, {	-- 0/1 Freya's Sigil
								["provider"] = { "i", 45788 },	-- Freya's Sigil
								["cr"] = 32906,	-- Freya
							}),
						},
					}),
					q(13609, {	-- Hodir's Sigil
						["qg"] = 33957,	-- Prospector Loren
						["sourceQuest"] = 13607,	-- The Celestial Planetarium
						["timeline"] = { REMOVED_7_3_5 },
						["groups"] = {
							objective(1, {	-- 0/1 Hodir's Sigil
								["provider"] = { "i", 45786 },	-- Hodir's Sigil
								["cr"] = 32845,	-- Hodir
							}),
						},
					}),
					q(13611, {	-- Mimiron's Sigil
						["qg"] = 33957,	-- Prospector Loren
						["sourceQuest"] = 13607,	-- The Celestial Planetarium
						["timeline"] = { REMOVED_7_3_5 },
						["groups"] = {
							objective(1, {	-- 0/1 Mimiron's Sigil
								["provider"] = { "i", 45787 },	-- Mimiron's Sigil
								["cr"] = 33350,	-- Mimiron
							}),
						},
					}),
					q(13607, {	-- The Celestial Planetarium
						["qg"] = 33957,	-- Prospector Loren
						["sourceQuest"] = 13604,	-- Archivum Data Disc
						["timeline"] = { REMOVED_7_3_5 },
					}),
					q(13610, {	-- Thorim's Sigil
						["qg"] = 33957,	-- Prospector Loren
						["sourceQuest"] = 13607,	-- The Celestial Planetarium
						["timeline"] = { REMOVED_7_3_5 },
						["groups"] = {
							objective(1, {	-- 0/1 Thorim's Sigil
								["provider"] = { "i", 45784 },	-- Thorim's Sigil
								["cr"] = 32865,	-- Thorim
							}),
						},
					}),

					q(13818, {	-- Heroic: Algalon
						["providers"] = {
							{ "n", 33957 },	-- Prospector Loren
							{ "i", 45855 },	-- Sigils of the Watchers
						},
						["sourceQuests"] = {
							13821,	-- Heroic: Freya's Sigil
							13822,	-- Heroic: Hodir's Sigil
							13824,	-- Heroic: Mimiron's Sigil
							13823,	-- Heroic: Thorim's Sigil
						},
						["groups"] = {
							i(45798),	-- Heroic Celestial Planetarium Key
							i(45878, {	-- Large Sack of Ulduar Spoils
								["sym"] = {
									{ "select", "instanceID", 759 },	-- Ulduar
									{ "find", "difficultyID", DIFFICULTY.RAID.NORMAL },	-- Normal Raid
									{ "find", "headerID", COMMON_BOSS_DROPS },	-- Select the "Common Boss Drops" header.
									{ "pop" },	-- Get the Rewards.
									{ "exclude", "itemID", 46027, 46348, 45038 },	-- Exclude the Enchanting Recipes & Fragment
								},
							}),
						},
					}),
					q(13819, {	-- Heroic: All Is Well That Ends Well
						["providers"] = {
							{ "i", 46053 },	-- Reply-Code Alpha
							{ "n", 16128 },	-- Rhonin <Leader of the Kirin Tor>
						},
						["maps"] = { NORTHREND_DALARAN },
						["groups"] = {
							i(45588),	-- Drape of the Skyborn
							i(45618),	-- Sunglimmer Cloak
							i(45608),	-- Brann's Signet Ring
							i(45614),	-- Starshine Circle
						},
					}),
					q(13817, {	-- Heroic: Archivum Data Disc
						["provider"] = { "i", 45857 },	-- Heroic: Archivum Data Disc
					}),
					q(13821, {	-- Heroic: Freya's Sigil
						["qg"] = 33957,	-- Prospector Loren
						["sourceQuest"] = 13816,	-- Heroic: The Celestial Planetarium
						["groups"] = {
							objective(1, {	-- 0/1 Freya's Sigil
								["provider"] = { "i", 45814 },	-- Freya's Sigil
								["cr"] = 32906,	-- Freya
							}),
						},
					}),
					q(13822, {	-- Heroic: Hodir's Sigil
						["qg"] = 33957,	-- Prospector Loren
						["sourceQuest"] = 13816,	-- Heroic: The Celestial Planetarium
						["groups"] = {
							objective(1, {	-- 0/1 Hodir's Sigil
								["provider"] = { "i", 45815 },	-- Hodir's Sigil
								["cr"] = 32845,	-- Hodir
							}),
						},
					}),
					q(13824, {	-- Heroic: Mimiron's Sigil
						["qg"] = 33957,	-- Prospector Loren
						["sourceQuest"] = 13816,	-- Heroic: The Celestial Planetarium
						["groups"] = {
							objective(1, {	-- 0/1 Mimiron's Sigil
								["provider"] = { "i", 45816 },	-- Mimiron's Sigil
								["cr"] = 33350,	-- Mimiron
							}),
						},
					}),
					q(13816, {	-- Heroic: The Celestial Planetarium
						["qg"] = 33957,	-- Prospector Loren
						["sourceQuest"] = 13817,	-- Heroic: Archivum Data Disc
					}),
					q(13823, {	-- Heroic: Thorim's Sigil
						["qg"] = 33957,	-- Prospector Loren
						["sourceQuest"] = 13816,	-- Heroic: The Celestial Planetarium
						["groups"] = {
							objective(1, {	-- 0/1 Thorim's Sigil
								["provider"] = { "i", 45817 },	-- Thorim's Sigil
								["cr"] = 32865,	-- Thorim
							}),
						},
					}),
				}),
				n(ZONE_DROPS, {
					i(46351),	-- Bloodcrush Cudgel
					i(45605),	-- Daschal's Bite
					i(46350),	-- Pillar of Fortitude
					i(46342),	-- Golemheart Longbow
					i(46339),	-- Mimiron's Repeater
					i(46343),	-- Fervor of the Protectorate
					i(45539),	-- Pendant of Focused Energies
					i(45538),	-- Titanstone Pendant
					i(46344),	-- Iceshear Mantle
					i(45543),	-- Shoulders of Misfortune
					i(46341),	-- Drape of the Spellweaver
					i(46347),	-- Cloak of the Dormant Blaze
					i(45541),	-- Shroud of Alteration
					i(46345),	-- Bracers of Righteous Reformation
					i(46340),	-- Adamant Handguards
					i(45549),	-- Grips of Chaos
					i(45548),	-- Belt of the Sleeper
					i(45547),	-- Relic Hunter's Cord
					i(45544),	-- Leggings of the Tortured Earth
					i(46346),	-- Boots of Unsettled Prey
					i(45542),	-- Greaves of the Stonewarder
					i(45540),	-- Bladebearer's Signet
					i(46138, {	-- Idol of the Flourishing Life
						["timeline"] = { REMOVED_5_0_4 },
					}),
				}),
				n(COMMON_BOSS_DROPS, {
					["crs"] = {
						33113,	-- Flame Leviathan
						33118,	-- Ignis the Furnace Master
						33293,	-- XT-002 Deconstructor
						32871,	-- Algalon the Observer
						32927,	-- Runemaster Molgeim
						32857,	-- Stormcaller Brundir
						32867,	-- Steelbreaker
						32930,	-- Kologarn
						33515,	-- Auriaya
						32845,	-- Hodir
						32865,	-- Thorim
						32906,	-- Freya
						33350,	-- Mimiron
						33271,	-- General Vezax
						33288,	-- Yogg-Saron
					},
					["groups"] = {
						i(45087),	-- Runed Orb
						i(46027),	-- Formula: Enchant Weapon - Blade Ward (RECIPE!)
						i(46348),	-- Formula: Enchant Weapon - Blood Draining (RECIPE!)
						i(45100),	-- Pattern: Belt of Arctic Life (RECIPE!)
						i(45094),	-- Pattern: Belt of Dragons (RECIPE!)
						i(45096),	-- Pattern: Blue Belt of Chaos (RECIPE!)
						i(45095),	-- Pattern: Boots of Living Scale (RECIPE!)
						i(45101),	-- Pattern: Boots of Wintry Endurance (RECIPE!)
						i(45104),	-- Pattern: Cord of the White Dawn
						i(45098),	-- Pattern: Death-Warmed Belt (RECIPE!)
						i(45099),	-- Pattern: Footpads of Silence (RECIPE!)
						i(45097),	-- Pattern: Lightning Grounded Boots (RECIPE!)
						i(45102),	-- Pattern: Sash of Ancient Power
						i(45105),	-- Pattern: Savior's Slippers
						i(45103),	-- Pattern: Spellslinger's Slippers
						i(45089),	-- Plans: Battlelord's Plate Boots (RECIPE!)
						i(45088),	-- Plans: Belt of the Titans (RECIPE!)
						i(45092),	-- Plans: Indestructible Plate Girdle (RECIPE!)
						i(45090),	-- Plans: Plate Girdle of Righteousness (RECIPE!)
						i(45093),	-- Plans: Spiked Deathdealers (RECIPE!)
						i(45091),	-- Plans: Treads of Destiny (RECIPE!)
					},
				}),
				e(1637, {	-- Flame Leviathan
					["creatureID"] = 33113,	-- Flame Leviathan
					["groups"] = {
						ach(12320, {	-- Orbit-uary
							i(45132),	-- Golden Saronite Dragon
							i(45133),	-- Pendant of Fiery Havoc
							i(45300),	-- Mantle of Fiery Vengeance
							i(45136),	-- Shoulderpads of Dormant Energies
							i(45293),	-- Handguards of Potent Cures
							i(45295),	-- Gilded Steel Legplates
							i(45134),	-- Plated Leggings of Ruination
							i(45135),	-- Boots of Fiery Resolution
							i(45297),	-- Shimmering Seal
							i(45296, {	-- Twirling Blades (10 Man, iLvl 232)
								["timeline"] = { REMOVED_5_0_4 },
							}),
						}),
						ach(12319),	-- Nuked from Orbit
						ach(12318),	-- Orbital Devastation
						ach(12317),	-- Orbital Bombardment
						ach(12316),	-- Shutout
						ach(12315),	-- Take Out Those Turret
						ach(12314, {	-- Three Car Garage
							crit(39309),	-- Salvaged Chopper
							crit(39310),	-- Salvaged Siege Engine
							crit(39311),	-- Salvaged Demolisher
						}),
						ach(12313),	-- Unbroken
						i(45282),	-- Ironsoul
						i(45287),	-- Firesoul
						i(45284),	-- Kinetic Ripper
						i(45110),	-- Titanguard
						i(45115),	-- Leviathan Fueling Manual
						i(45107),	-- Iron Riveted War Helm
						i(45289),	-- Lifespark Visage
						i(45118),	-- Steamworker's Goggles
						i(45116),	-- Freya's Choker of Warding (
						i(45285),	-- Might of the Leviathan
						i(45288),	-- Firestrider Chestguard
						i(45291),	-- Combustion Bracers
						i(45283),	-- Flamewatch Armguards
						i(45108),	-- Mechanist's Bindings
						i(45111),	-- Mimiron's Inferno Couplings
						i(45117),	-- Constructor's Handwraps
						i(45109),	-- Gloves of the Fiery Behemoth
						i(45119),	-- Embrace of the Leviathan
						i(45113),	-- Glowing Ring of Reclamation
						i(45106),	-- Strength of the Automaton
						i(45112),	-- The Leviathan's Coil
						i(45292),	-- Energy Siphon
						i(45286),	-- Pyrite Infuser
						i(45086, {	-- Rising Sun (25 Man)
							["timeline"] = { REMOVED_5_0_4 },
						}),
						i(45114, {	-- Steamcaller's Totem
							["timeline"] = { REMOVED_5_0_4 },
						}),
					},
				}),
				e(1638, {	-- Ignis the Furnace Master
					["creatureID"] = 33118,	-- Ignis the Furnace Master
					["groups"] = {
						ach(12324),	-- Hot Pocket
						ach(12323),	-- Shattered
						ach(12325),	-- Stokin' the Furnace
						i(142086, {	-- Magma Rageling (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						i(45171),	-- Intensity
						i(45311),	-- Relentless Edge
						i(45165),	-- Worldcarver
						i(45309),	-- Rifle of the Platinum Guard
						i(45170),	-- Scepter of Creation
						i(45314),	-- Igniter Rod
						i(45164),	-- Helm of the Furnace Master
						i(45321),	-- Pauldrons of Tempered Will
						i(45186),	-- Soot-Covered Mantle
						i(45318),	-- Drape of Fuming Anger
						i(45317),	-- Shawl of the Caretaker
						i(45167),	-- Lifeforge Breastplate
						i(45316),	-- Armbraces of the Vibrant Flame
						i(45187),	-- Wristguards of the Firetender
						i(45310),	-- Gauntlets of the Iron Furnace
						i(45312),	-- Gloves of Smoldering Touch
						i(45185),	-- Flamewrought Cinch
						i(45161),	-- Girdle of Embers
						i(45166),	-- Charred Saronite Greaves
						i(45162),	-- Flamestalker Boots
						i(45157),	-- Cindershard Ring
						i(45168),	-- Pyrelight Circle
						i(45313),	-- Furnace Stone
						i(45158),	-- Heart of Iron
						i(45169, {	-- Totem of the Dancing Flame
							["timeline"] = { REMOVED_5_0_4 },
						}),
					},
				}),
				e(1639, {	-- Razorscale
					["creatureID"] = 33186,	-- Razorscale
					["groups"] = {
						ach(12321),	-- A Quick Shave
						ach(12322),	-- Iron Dwarf, Medium Rare
						i(142087, {	-- Ironbound Proto-Whelp (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						i(45147),	-- Guiding Star
						i(45298),	-- Razorscale Talon
						i(45142),	-- Remorse
						i(45137),	-- Veranus' Bane
						i(45150),	-- Collar of the Wyrmhunter
						i(45299),	-- Dragonsteel Faceplate
						i(45140),	-- Razorscale Shoulderguards
						i(45138),	-- Drape of the Drakerider
						i(45305),	-- Breastplate of the Afterlife
						i(45149),	-- Bracers of the Broodmother
						i(45301),	-- Bracers of the Smothering Inferno
						i(45146),	-- Shackles of the Odalisque
						i(45151),	-- Belt of the Fallen Wyrm
						i(45306),	-- Binding of the Dragon Matriarch
						i(45139),	-- Dragonslayer's Brace
						i(45304),	-- Stormtempered Girdle
						i(45307),	-- Ironscale Leggings
						i(45141),	-- Proto-Hide Leggings
						i(45143),	-- Saronite Mesh Legguards
						i(45302),	-- Treads of the Invader
						i(45303),	-- Band of Draconic Guile
						i(45308),	-- Eye of the Broodmother
						i(45148),	-- Living Flame
						i(45510, {	-- Libram of Discord
							["timeline"] = { REMOVED_5_0_4 },
						}),
						i(45144, {	-- Sigil of Deflection
							["timeline"] = { REMOVED_5_0_4 },
						}),
					},
				}),
				e(1640, {	-- XT-002 Deconstructor
					["creatureID"] = 33293,	-- XT-002 Deconstructor
					["groups"] = {
						ach(12330, {	-- Heartbreaker
							i(45868),	-- Aesir's Edge
							i(45442),	-- Sorthalis, Hammer of the Watchers
							i(45870),	-- Magnetized Projectile Emitter
							i(45443),	-- Charm of Meticulous Timing
							i(45445),	-- Breastplate of the Devoted
							i(45867),	-- Breastplate of the Stoneshaper
							i(45869),	-- Fluxing Energy Coils
							i(45446),	-- Grasps of Reason
							i(45444),	-- Gloves of the Steady Hand
							i(45871),	-- Seal of Ulduar
						}),
						ach(12329),	-- Must Deconstruct Faster
						ach(12326),	-- Nerf Engineering
						ach(12328),	-- Nerf Gravity Bombs
						ach(12327),	-- Nerf Scrapbots
						i(45256),	-- Twisted Visage
						i(45246),	-- Golem-Shard Sticker
						i(45685),	-- Plasma Foil
						i(45257),	-- Quartz Crystal Wand
						i(45682),	-- Pulsing Spellshield
						i(45687),	-- Helm of Veiled Energies
						i(45253),	-- Mantle of Wavering Calm
						i(45251),	-- Shoulderplates of the Deconstructor
						i(45677),	-- Treacherous Shoulderpads
						i(45676),	-- Chestplate of Vicious Potency
						i(45259),	-- Quartz-Studded Harness
						i(45686),	-- Vest of the Glowing Crescent
						i(45680),	-- Armbands of the Construct
						i(45252),	-- Horologist's Wristguards
						i(45679),	-- Gloves of Taut Grip
						i(45694),	-- Conductive Cord
						i(45248),	-- Clockwork Legplates
						i(45260),	-- Boots of Hasty Revival
						i(45249),	-- Brass-Lined Boots
						i(45258),	-- Sandals of Rash Temperament
						i(45250),	-- Crazed Construct Ring
						i(45675),	-- Power Enhancing Loop
						i(45247),	-- Signet of the Earthshaker
						i(45254, {	-- Sigil of the Vengeful Heart
							["timeline"] = { REMOVED_5_0_4 },
						}),
						i(45255, {	-- Thunderfall Totem
							["timeline"] = { REMOVED_5_0_4 },
						}),
					},
				}),
				e(1650, {	-- Algalon the Observer
					["creatureID"] = 32871,	-- Algalon the Observer
					["groups"] = {
						-- #if ANYCLASSIC
						ach(17341, {	-- Cutting Edge: Ulduar
							["OnUpdate"] = [[function(t)
								if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_THREE .. [[) then
									t.u = ]] .. REMOVED_FROM_GAME .. [[;
									t.rwp = nil;
								else
									t.u = ]] .. WRATH_PHASE_TWO .. [[;
									t.rwp = 30200;
								end
							end]],
						}),
						-- #endif
						ach(5020, {	-- Observed - Guild Edition
							["timeline"] = { ADDED_4_0_3 },
							["collectible"] = false,
						}),
						ach(12399, {	-- Observed
							title(129),	-- Starcaller
							title(130),	-- the Astral Walker
						}),
						ach(12400, {	-- Supermassive
							crit(39522),	-- Close 3 Black Holes within 10 seconds
							crit(39523),	-- Defeat Algalon the Observer
						}),
						ach(3316, {	-- Herald of the Titans
							-- If Classic actually goes to WoD, feel free to add variations of lock criteria for the multiple level squishes
							-- #if AFTER SHADOWLANDS
							["lockCriteria"] = { 1, "lvl", 31 },
							-- character above 30 without account-wide achievements shouldn't see forever-incomplete achievement
							["OnUpdate"] = [[function(t) if _.Level > 30 and not _.Settings.AccountWide.Achievements then t.collectible = false; end end]],
							-- #else
							["lockCriteria"] = { 1, "lvl", 80 },
							-- #endif
							["groups"] = {
								title(131),	-- , Herald of the Titans
							},
						}),
						i(46052),	-- Reply-Code Alpha
						i(46053),	-- Reply-Code Alpha
						i(45613),	-- Dreambinder
						i(45612),	-- Constellus
						i(45607),	-- Fang of Oblivion
						i(45620),	-- Starshard Edge
						i(45570),	-- Skyforge Crossbow
						i(45587),	-- Bulwark of Algalon
						i(45617),	-- Cosmos
						i(45610),	-- Boundless Gaze
						i(46047),	-- Pendant of the Somber Witness
						i(46040),	-- Strength of the Heavens
						i(46044),	-- Observer's Mantle
						i(46037),	-- Shoulderplates of the Celestial Watch
						i(46042),	-- Drape of the Messenger
						i(46039),	-- Breastplate of the Timeless
						i(45611),	-- Solar Bindings
						i(46043),	-- Gloves of the Endless Dark
						i(45665),	-- Pharos Gloves
						i(46045),	-- Pulsar Gloves
						i(45616),	-- Star-Beaded Clutch
						i(46041),	-- Starfall Girdle
						i(45619),	-- Starwatcher's Binding
						i(45594),	-- Legplates of the Endless Void
						i(46049),	-- Zodiac Leggings
						i(45615),	-- Planewalker Treads
						i(45599),	-- Sabatons of Lifeless Night
						i(46050),	-- Starlight Treads
						i(46048),	-- Band of Lights
						i(46046),	-- Nebula Band
						i(45609),	-- Comet's Trail
						i(46038),	-- Dark Matter
						i(46051),	-- Meteorite Crystal
					},
				}),
				e(1641, {	-- Assembly of Iron
					["crs"] = {
						32867,	-- Steelbreaker
						32927,	-- Runemaster Molgeim
						32857,	-- Stormcaller Brundir
					},
					["groups"] = {
						ach(12335, {	-- But I'm On Your Side!
							["description"] = "Use the \"Iron Boot Flask\" toy before engaging the boss.",
							["provider"] = { "i", 43499 },	-- Iron Boot Flask
						}),
						ach(12336),	-- Can't Do That While Stunned
						ach(12332),	-- I Choose You, Runemaster Molgeim
						ach(12334, {	-- I Choose You, Steelbreaker
							i(45607),	-- Fang of Oblivion
							i(45448),	-- Perilous Bite
							i(45449),	-- The Masticator
							i(45243),	-- Sapphire Amulet of Renewal
							i(45447),	-- Watchful Eye of Fate
							i(45245),	-- Shoulderpads of the Intruder
							i(45242),	-- Drape of Mortal Downfall
							i(45241),	-- Belt of Colossal Rage
							i(45455),	-- Belt of the Crystal Tree
							i(45244),	-- Greaves of Swift Vengeance
							i(45456),	-- Loop of the Agile
							i(45506),	-- Archivum Data Disc
							i(45857),	-- Archivum Data Disc
						}),
						ach(12333),	-- I Choose You, Stormcaller Brundir
						i(142088, {	-- Runeforged Servitor (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						i(45234),	-- Rapture
						i(45233),	-- Stormrune Edge
						i(45331),	-- Rune-Etched Nightblade
						i(45332),	-- Stormtip
						i(45226),	-- Ancient Iron Heaume
						i(45329),	-- Circlet of True Sight
						i(45193),	-- Insurmountable Fervor
						i(45236),	-- Unblinking Eye
						i(45227),	-- Iron-Studded Mantle
						i(45322),	-- Cloak of the Iron Council
						i(45224),	-- Drape of the Lithe
						i(45237),	-- Phaelia's Vestments of the Sprouting Seed
						i(45240),	-- Raiments of the Iron Council
						i(45225),	-- Steelbreaker's Embrace
						i(45423),	-- Runetouch Wristwraps
						i(45228),	-- Handguards of the Enclave
						i(45239),	-- Runeshaper's Gloves
						i(45333),	-- Belt of the Iron Servant
						i(45324),	-- Leggings of Swift Reflexes
						i(45238),	-- Overload Legwraps
						i(45378),	-- Boots of the Petrified Forest
						i(45330),	-- Greaves of Iron Intensity
						i(45232),	-- Runed Ironhide Boots
						i(45418),	-- Lady Maye's Sapphire Ring
						i(45235),	-- Radiant Seal
					},
				}),
				e(1642, {	-- Kologarn
					["creatureID"] = 32930,	-- Kologarn
					["groups"] = {
						ach(12338),	-- Disarmed
						ach(12339),	-- If Looks Could Kill
						ach(12340),	-- Rubble and Roll
						ach(12337),	-- With Open Arms
						i(45695),	-- Spire of Withering Dreams
						i(45266),	-- Malice
						i(45700),	-- Stoneguard
						i(45261),	-- Giant's Bane
						i(45271),	-- Ironmender
						i(45696),	-- Mark of the Unyielding
						i(45262),	-- Necklace of Unerring Mettle
						i(45699),	-- Pendant of the Piercing Glare
						i(45697),	-- Shoulderguards of the Solemn Watch
						i(45265),	-- Shoulderpads of the Monolith
						i(45704),	-- Shawl of the Shattered Giant
						i(45272),	-- Robes of the Umbral Brute
						i(45275),	-- Bracers of Unleashed Magic
						i(45264),	-- Decimator's Armguards
						i(45269),	-- Unfaltering Armguards
						i(45268),	-- Gloves of the Pythonic Guardian
						i(45273),	-- Handwraps of Plentiful Recovery
						i(45274),	-- Leggings of the Stoneweaver
						i(45267),	-- Saronite Plated Legguards
						i(45701),	-- Greaves of the Earthbinder
						i(45698),	-- Sabatons of the Iron Watcher
						i(45702),	-- Emerald Signet Ring
						i(45703),	-- Spark of Hope
						i(45263),	-- Wrathstone
						i(45270, {	-- Idol of the Crying Wind
							["timeline"] = { REMOVED_5_0_4 },
						}),
					},
				}),
				e(1643, {	-- Auriaya
					["creatureID"] = 33515,	-- Auriaya
					["groups"] = {
						ach(12341),	-- Crazy Cat Lady
						ach(12342),	-- Nine Lives
						i(142089, {	-- Sanctum Cub (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						i(45437),	-- Runescribed Blade
						i(45315),	-- Stonerender
						i(45713),	-- Nurturing Touch
						i(45327),	-- Siren's Cry
						i(45707),	-- Shieldwall of the Breaker
						i(45864),	-- Cover of the Keepers
						i(45435),	-- Cowl of the Absolute
						i(45439),	-- Unwavering Stare
						i(45440),	-- Amice of the Stoic Watch
						i(45711),	-- Ironaya's Discarded Mantle
						i(45832),	-- Mantle of the Preserver
						i(45320),	-- Shoulderplates of the Eternal
						i(45319),	-- Cloak of the Makers
						i(45712),	-- Chestplate of Titanic Fury
						i(45865),	-- Raiments of the Corrupted
						i(45334),	-- Unbreakable Chestguard
						i(45325),	-- Gloves of the Stonereaper
						i(45709),	-- Nimble Climber's Belt
						i(45708),	-- Archaedas' Lost Legplates
						i(45434),	-- Greaves of the Rockmender
						i(45441),	-- Sandals of the Ancient Keeper
						i(45326),	-- Platinum Band of the Aesir
						i(45438),	-- Ring of the Faithful Servant
						i(45866),	-- Elemental Focus Stone
						i(45436, {	-- Libram of the Resolute
							["timeline"] = { REMOVED_5_0_4 },
						}),
					},
				}),
				e(1644, {	-- Hodir
					["creatureID"] = 32845,	-- Hodir
					["groups"] = {
						ach(12343),	-- Cheese the Freeze
						ach(12345),	-- Getting Cold in Here
						ach(12347, {	-- I Could Say That This Cache Was Rare
							i(45886, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Icecore Staff
							i(45457, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Staff of Endless Winter
							i(45612, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Constellus
							i(45876, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Shiver
							i(45887, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Ice Layered Barrier
							i(45877, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- The Boreal Guard
							i(45459, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Frigid Strength of Hodir
							i(45461, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Drape of Icy Intent
							i(45460, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Bindings of Winter Gale
							i(45888, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Bitter Cold Armguards
							i(45462, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Gloves of the Frozen Glade
							i(45786),	-- Hodir's Sigil
							i(45815),	-- Hodir's Sigil
						}),
						ach(12344),	-- I Have the Coolest Friends
						ach(12346),	-- Staying Buffed All Winter
						i(142090, {	-- Winter Rageling (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						i(138800, {	-- Illusion: Blade Ward (ILLUSION!)
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(45632),	-- Breastplate of the Wayward Conqueror
						i(45633),	-- Breastplate of the Wayward Protector
						i(45634),	-- Breastplate of the Wayward Vanquisher
						i(45650),	-- Leggings of the Wayward Conqueror
						i(45651),	-- Leggings of the Wayward Protector
						i(45652),	-- Leggings of the Wayward Vanquisher
						i(45458),	-- Stormedge
						i(45872),	-- Avalanche
						i(45450),	-- Northern Barrier
						i(45464),	-- Cowl of Icy Breaths
						i(45873),	-- Winter's Frigid Embrace
						i(45453),	-- Winter's Icy Embrace
						i(45454),	-- Frost-Bound Chain Bracers
						i(45452),	-- Frostplate Greaves
						i(45451),	-- Frozen Loop
						i(45874),	-- Signet of Winter
					},
				}),
				e(1645, {	-- Thorim
					["creatureID"] = 32865,	-- Thorim
					["groups"] = {
						ach(12348),	-- Don't Stand in the Lightning
						ach(12349, {	-- I'll Take You All On
							crit(39291),	-- Defeat Thorim
							crit(39438),	-- Participate in slaying Runic Colossus
							crit(39439),	-- Participate in slaying Ancient Rune Giant
						}),
						ach(12352, {	-- Lose Your Illusion
							i(45930, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Combatant's Bootblade
							i(45570, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Skyforge Crossbow
							i(45470, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Wisdom's Hold
							i(45472, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Warhelm of the Champion
							i(45933, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Pendant of the Shallow Grave
							i(45474, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Pauldrons of the Combatant
							i(45473, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Embrace of the Gladiator
							i(45928, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Gauntlets of the Thunder Lord
							i(45471, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Fate's Clutch
							i(45931),	-- Mjolnir Runestone
							i(45929),	-- Sif's Remembrance
							i(45784),	-- Thorim's Sigil
							i(45817),	-- Thorim's Sigil
						}),
						ach(12351),	-- Siffed
						ach(12350),	-- Who Needs Bloodlust?
						i(138800, {	-- Illusion: Blade Ward (ILLUSION!)
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(45638),	-- Crown of the Wayward Conqueror
						i(45639),	-- Crown of the Wayward Protector
						i(45640),	-- Crown of the Wayward Vanquisher
						i(45659),	-- Spaulders of the Wayward Conqueror
						i(45660),	-- Spaulders of the Wayward Protector
						i(45661),	-- Spaulders of the Wayward Vanquisher
						i(45892),	-- Legacy of Thunder
						i(45463),	-- Vulmir, the Northern Tempest
						i(45893),	-- Guise of the Midgard Serpent
						i(45927),	-- Handwraps of Resonance
						i(45467),	-- Belt of the Betrayed
						i(45895),	-- Belt of the Blood Pit
						i(45468),	-- Leggings of Lost Love
						i(45894),	-- Leggings of Unstable Discharge
						i(45469),	-- Sif's Promise
						i(45466),	-- Scale of Fates
					},
				}),
				e(1646, {	-- Freya
					["creatureID"] = 32906,	-- Freya
					["groups"] = {
						ach(12361),	-- Con-speed-atory
						ach(12362),	-- Deforestation
						ach(12363),	-- Getting Back to Nature
						ach(12364),	-- Knock on Wood
						ach(12365),	-- Knock, Knock on Wood
						ach(12366, {	-- Knock, Knock, Knock on Wood
							i(45613, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Dreambinder
							i(45484, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Bladetwister
							i(45947, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Serilas, Blood Blade of Invar One-Arm
							i(45294, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Petrified Ivy Sprig
							i(45485, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Bronze Pendant of the Vanir
							i(45945, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Seed of Budding Carnage
							i(45486, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Drape of the Sullen Goddess
							i(45943, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Gloves of Whispering Winds
							i(45487, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Handguards of Revitalization
							i(45488, {["timeline"] = {REMOVED_7_3_5, ADDED_10_2_5}}),	-- Leggings of the Enslaved Idol
							i(45946),	-- Fire Orchid Signet
							i(45788),	-- Freya's Sigil
							i(45814),	-- Freya's Sigil
						}),
						i(142091, {	-- Snaplasher (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						i(138800, {	-- Illusion: Blade Ward (ILLUSION!)
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(45644),	-- Gloves of the Wayward Conqueror
						i(45645),	-- Gloves of the Wayward Protector
						i(45646),	-- Gloves of the Wayward Vanquisher
						i(45653),	-- Legplates of the Wayward Conqueror
						i(45654),	-- Legplates of the Wayward Protector
						i(45655),	-- Legplates of the Wayward Vanquisher
						i(45479),	-- The Lifebinder
						i(45934),	-- Unraveling Reach
						i(45935),	-- Ironbark Faceguard
						i(45480),	-- Nymph Heart Charm
						i(45941),	-- Chestguard of the Lasher
						i(45940),	-- Tunic of the Limber Stalker
						i(45481),	-- Gauntlets of Ruthless Reprisal
						i(45482),	-- Leggings of the Lifetender
						i(45936),	-- Legplates of Fluorishing Resolve
						i(45483),	-- Boots of the Servant
						i(46110, {	-- Alchemist's Cache
							["requireSkill"] = ALCHEMY,
						}),
					},
				}),
				e(1647, {	-- Mimiron
					["crs"] = {
						33350,	-- Mimiron
						33432,	-- Leviathan Mk II
						33651,	-- VX-001
						33670,	-- Aerial Command Unit
					},
					["groups"] = {
						ach(12369, {	-- Firefighter
							i(45494),	-- Delirium's Touch
							i(45990),	-- Fusion Blade
							i(45620),	-- Starshard Edge
							i(45497),	-- Crown of Luminescence
							i(45993),	-- Mimiron's Flight Goggles
							i(45496),	-- Titanskin Cloak
							i(45663),	-- Armbands of Bedlam
							i(45982),	-- Fused Alloy Legplates
							i(45988),	-- Greaves of the Iron Army
							i(45989),	-- Tempered Mercury Greaves
							i(45495),	-- Conductive Seal
							i(45787),	-- Mimiron's Sigil
							i(45816),	-- Mimiron's Sigil
						}),
						ach(12368),	-- Not-So-Friendly Fire
						ach(12367, {	-- Set Up Us the Bomb
							crit(39478),	-- A Proximity Mine
							crit(39479),	-- A Rocket Strike
							crit(39480),	-- A Bomb Bot
						}),
						i(138800, {	-- Illusion: Blade Ward (ILLUSION!)
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(142092, {	-- G0-R41-0N Ultratonk (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						i(45641),	-- Gauntlets of the Wayward Conqueror
						i(45642),	-- Gauntlets of the Wayward Protector
						i(45643),	-- Gauntlets of the Wayward Vanquisher
						i(45647),	-- Helm of the Wayward Conqueror
						i(45648),	-- Helm of the Wayward Protector
						i(45649),	-- Helm of the Wayward Vanquisher
						i(45489),	-- Insanity's Grip
						i(45972),	-- Pulse Baton
						i(45492),	-- Malleable Steelweave Mantle
						i(45974),	-- Shoulderguards of Assimilation
						i(45493),	-- Asimov's Drape
						i(45973),	-- Stylish Power Cape
						i(45976),	-- Static Charge Handwraps
						i(45975),	-- Cable of the Metrognome
						i(45491),	-- Waistguard of the Creator
						i(45490),	-- Pandora's Plea
						i(140782, {	-- Neural Net Detangler
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				e(1648, {	-- General Vezax
					["creatureID"] = 33271,	-- General Vezax
					["groups"] = {
						ach(12373, {	-- I Love the Smell of Saronite in the Morning
							i(46033),	-- Tortured Earth
							i(45516),	-- Voidrethar, Dark Blade of Oblivion
							i(46035),	-- Aesuga, Hand of the Argent Champion
							i(46036),	-- Void Sabre
							i(45517),	-- Pendulum of Infinity
							i(46032),	-- Drape of the Faceless General
							i(45519),	-- Vestments of the Blind Denizen
							i(45520),	-- Handwraps of the Vigilant
							i(46034),	-- Leggings of Profound Darkness
							i(45518),	-- Flare of the Heavens
						}),
						ach(12372),	-- Shadowdodger
						i(45996),	-- Hoperender
						i(45498),	-- Lotrafen, Spear of the Damned
						i(46011),	-- Shadowbite
						i(45511),	-- Scepter of Lost Souls
						i(45502),	-- Helm of the Faceless
						i(46008),	-- Choker of the Abyss
						i(46015),	-- Pendant of Endless Despair
						i(45514),	-- Mantle of the Unknowing
						i(46013),	-- Underworld Mantle
						i(46014),	-- Saronite Animus Cloak
						i(46012),	-- Vestments of the Piercing Light
						i(46009),	-- Bindings of the Depths
						i(45997),	-- Gauntlets of the Wretched
						i(45512),	-- Grips of the Unbroken
						i(45505),	-- Belt of Clinging Hope
						i(45508),	-- Belt of the Darkspeaker
						i(45504),	-- Darkcore Leggings
						i(45513),	-- Boots of the Forgotten Depths
						i(45501),	-- Boots of the Underdweller
						i(46010),	-- Darkstone Ring
						i(45503),	-- Metallic Loop of the Sufferer
						i(45515),	-- Ring of the Vacant Eye
						i(45507),	-- The General's Heart
						i(45509, {	-- Idol of the Corruptor
							["timeline"] = { REMOVED_5_0_4 },
						}),
						i(45145, {	-- Libram of the Sacred Shield
							["timeline"] = { REMOVED_5_0_4 },
						}),
					},
				}),
				e(1649, {	-- Yogg-Saron
					["creatureID"] = 33288,	-- Yogg-Saron
					["groups"] = {
						-- #if ANYCLASSIC
						ach(17340, {	-- Ahead of the Curve: Yogg-Saron
							["OnUpdate"] = [[function(t)
								if _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_THREE .. [[) then
									t.u = ]] .. REMOVED_FROM_GAME .. [[;
									t.rwp = nil;
								else
									t.u = ]] .. WRATH_PHASE_TWO .. [[;
									t.rwp = 30200;
								end
							end]],
						}),
						-- #endif
						ach(12388, {	-- Alone in the Darkness
							ach(4626, {	-- And I'll Form the Head!
								["provider"] = { "i", 45693 },	-- Mimiron's Head
								["filterID"] = MOUNTS,
							}),
							i(45693),	-- Mimiron's Head (MOUNT!)
							i(46312),	-- Vanquished Clutches of Yogg-Saron
						}),
						ach(5019, {	-- Alone in the Darkness - Guild Edition
							["timeline"] = { ADDED_4_0_3 },
						}),
						ach(12387, {	-- One Light in the Darkness
							i(45533),	-- Dark Edge of Depravity
							i(46067),	-- Hammer of Crushing Whispers
							i(46097),	-- Caress of Insanity
							i(46068),	-- Amice of Inconceivable Horror
							i(46095),	-- Soul-Devouring Cinch
							i(45536),	-- Legguards of Cunning Deception
							i(45537),	-- Treads of the False Oracle
							i(45534),	-- Seal of the Betrayed King
							i(46096),	-- Signet of Soft Lament
							i(45535),	-- Show of Faith
						}),
						ach(12386),	-- Two Lights in the Darkness
						ach(12385),	-- Three Lights in the Darkness
						ach(12395),	-- Drive Me Crazy
						ach(12396),	-- He's Not Getting Any Older
						ach(12398, {	-- In His House He Waits Dreaming
							crit(10321),	-- The Assassination of King Llane
							crit(39513),	-- The Forging of the Demon Soul
							crit(39514),	-- The Tortured Champion
						}),
						ach(12384, {	-- Kiss and Make Up
							["description"] = "During phase 2, when Sara is flying above Yogg-Saron, /kiss her while she's angry.",
							["crs"] = { 33134 },	-- Sara
						}),
						ach(12397),	-- They're Coming Out of the Walls
						i(138801, {	-- Illusion: Blood Draining (ILLUSION!)
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(142093, {	-- Creeping Tentacle (PET!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						i(45635),	-- Chestguard of the Wayward Conqueror
						i(45636),	-- Chestguard of the Wayward Protector
						i(45637),	-- Chestguard of the Wayward Vanquisher
						i(45656),	-- Mantle of the Wayward Conqueror
						i(45657),	-- Mantle of the Wayward Protector
						i(45658),	-- Mantle of the Wayward Vanquisher
						i(46016),	-- Abaddon
						i(46025),	-- Devotion
						i(45521),	-- Earthshaper
						i(46024),	-- Kingsbane
						i(45527),	-- Soulscribe
						i(46031),	-- Touch of Madness
						i(46018),	-- Deliverance
						i(45532),	-- Cowl of Dark Whispers
						i(46028),	-- Faceguard of the Eyeless Horror
						i(45523),	-- Garona's Guise
						i(46022),	-- Pendant of a Thousand Maws
						i(45529),	-- Shawl of Haunted Memories
						i(45524),	-- Chestguard of Insidious Intent
						i(45531),	-- Chestguard of the Fallen God
						i(46019),	-- Leggings of the Insatiable
						i(46030),	-- Treads of the Dragon Council
						i(45525),	-- Godbane Signet
						i(46021),	-- Royal Seal of King Llane
						i(45530),	-- Sanity's Bond
						i(45522),	-- Blood of the Old God
					},
				}),
			}),
			-- #endif
		},
	})),
})));