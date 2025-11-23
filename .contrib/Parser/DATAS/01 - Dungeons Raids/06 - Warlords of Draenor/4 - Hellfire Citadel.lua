-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_2_0 } }, {
	inst(669, {	-- Hellfire Citadel
		["mapID"] = 661,
		["coord"] = { 45.56, 53.61, TANAAN_JUNGLE },
		["maps"] = { 662, 663, 664, 665, 666, 667, 668, 669, 670 },
		["isRaid"] = true,
		["lvl"] = 100,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(11631, {["timeline"] = {ADDED_7_2_0}}),	-- Extreme Makeover: Fel Edition (Hellfire Citadel)
				ach(10149, {	-- Glory of the Hellfire Raider
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						10026,	-- Nearly Indestructible
						10057,	-- Turning the Tide
						10013,	-- Waves Came Crashing Down All Around
						10054,	-- Don't Fear the Reaper
						9972,	-- A Race Against Slime
						9979,	-- Get In My Belly!
						9988,	-- Pro Toss
						10086,	-- I'm a Soul Man
						10012,	-- This Land Was Green and Good Until...
						10087,	-- You Gotta Keep 'em Separated
						9989,	-- Non-Lethal Enforcer
						10030,	-- Bad Manner(oth)
						10073,	-- Echoes of Doomfire
					}},
					["groups"] = {
						i(127140),	-- Infernal Direwolf (MOUNT!)
					},
				}),
				ach(10023, {	-- Hellbreach
					crit(28075, {	-- Hellfire Assault
						["_encounter"] = { 1426, DIFFICULTY.RAID.LFR },
					}),
					crit(28076, {	-- Iron Reaver
						["_encounter"] = { 1425, DIFFICULTY.RAID.LFR },
					}),
					crit(28077, {	-- Kormrok
						["_encounter"] = { 1392, DIFFICULTY.RAID.LFR },
					}),
				}),
				ach(10024, {	-- Halls of Blood
					crit(28078, {	-- Hellfire High Council
						["_encounter"] = { 1432, DIFFICULTY.RAID.LFR },
					}),
					crit(28079, {	-- Kilrogg Deadeye
						["_encounter"] = { 1396, DIFFICULTY.RAID.LFR },
					}),
					crit(28080, {	-- Gorefiend
						["_encounter"] = { 1372, DIFFICULTY.RAID.LFR },
					}),
				}),
				ach(10025, {	-- Bastion of Shadows
					crit(28081, {	-- Shadow-Lord Iskar
						["_encounter"] = { 1433, DIFFICULTY.RAID.LFR },
					}),
					crit(28082, {	-- Socrethar the Eternal
						["_encounter"] = { 1427, DIFFICULTY.RAID.LFR },
					}),
					crit(28083, {	-- Tyrant Velhari
						["_encounter"] = { 1394, DIFFICULTY.RAID.LFR },
					}),
				}),
				ach(10020, {	-- Destructor's Rise
					crit(28067, {	-- Fel Lord Zakuun
						["_encounter"] = { 1391, DIFFICULTY.RAID.LFR },
					}),
					crit(28068, {	-- Xhul'horac
						["_encounter"] = { 1447, DIFFICULTY.RAID.LFR },
					}),
					crit(28069, {	-- Mannoroth
						["_encounter"] = { 1395, DIFFICULTY.RAID.LFR },
					}),
				}),
				ach(10019, {	-- The Black Gate
					crit(28066, {	-- Archimonde
						["provider"] = { "n", 91331 },	-- Archimonde
						["_encounter"] = { 1438, DIFFICULTY.RAID.LFR },
					}),
				}),
			}),
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					95068,	-- Hellfire Assault
					90284,	-- Iron Reaver
					90435,	-- Kormrok
					92146,	-- Hellfire High Council
					90378,	-- Kilrogg
					90199,	-- Gorefiend
					90316,	-- Shadow-Lord Iskar
					92330,	-- Socrethar
					90269,	-- Tyrant Velhari
					89890,	-- Fel Lord Zakuun
					93068,	-- Xhul
					91349,	-- Manno
					91331,	-- Archi
				},
				["groups"] = {
					un(REMOVED_FROM_GAME, i(127115)),	-- Tome of Chaos
				},
			}),
			d(DIFFICULTY.RAID.MULTI.ALL, {
				cr(90284, e(1425, {	-- Iron Reaver
				})),
				cr(90378, e(1396, {	-- Kilrogg Deadeye
				})),
				cr(90316, e(1433, {	-- Shadow-Lord Iskar
				})),
				cr(91331, e(1438, {	-- Archimonde
					i(212780, {	-- Grimoire of the Felbrute Tyrant (CI!)
						["timeline"] = { ADDED_10_2_5 },
					}),
				})),
			}),
			d(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["crs"] = { 94870 },	-- Seer Kazal <Shadowmoon Exile>
			}),
			d(DIFFICULTY.RAID.LFR, {
				header(HEADERS.Achievement, 10023, {	-- Hellbreach
					cr(95068, e(1426, {	-- Hellfire Assault (Siegemaster Mar'tak)
						i(128092),	-- Wicked Bonecarver's Knife
						i(128098),	-- Snub-Nosed Iron Rifle
						i(128081),	-- Iron Dragoon's Coif
						i(128110),	-- Fel Iron Roller Chain
						i(128111),	-- Hand-Welded Gorget
						i(128028),	-- Sooty Felcult Robes
						i(128030),	-- Fel Mechanic's Sparkguard Bracers
						i(128029),	-- Manacles of Enforced Labor
						i(128073),	-- Ironspike Knuckled Gauntlets
						i(128071),	-- Blackfuse Company Tool Belt
						i(128031),	-- Siegesmith's Chain Leggings
						i(128050),	-- Engine-Kicking Boots
						i(128142),	-- Pledge of Iron Loyalty
					})),
					cr(90284, e(1425, {	-- Iron Reaver
						i(128094),	-- Spiked Torque Wrench
						i(128118),	-- Demonhorn Buckler
						i(128053),	-- Liquid-Cooled Mantle
						i(128060),	-- Double-Polished Chain Pauldrons
						i(128102),	-- Unfired Ejection Parachute
						i(128105),	-- Commander's Seat Cushion Cover
						i(128076),	-- Fel-Steamed Leather Tunic
						i(128067),	-- Pulley Chain Wristwraps
						i(128058),	-- Roughly Soldered Wristclamps
						i(128033),	-- Assembly Worker's Legguards
						i(128075),	-- Double-Padded Slippers
						i(128168),	-- Shrapnel-Studded Boots
						i(128141),	-- Crackling Fel-Spark Plug
						i(128256, {	-- Equipment Blueprint: Gyroscopic Internal Stabilizer
							["questID"] = 39364,	-- Equipment Blueprint: Gyroscopic Internal Stabilizer
						}),
					})),
					cr(90435, e(1392, {	-- Kormrok
						i(128134),	-- Demonbreaker Helm
						i(128132),	-- Rancorbite Hood
						i(128128),	-- Felfume Hood
						i(128130),	-- Ironpelt Helm
						i(128107),	-- Glowing String of Pebbles
						i(128104),	-- Splashcover Cloak
						i(128103),	-- Sigil-Stitched Drape
						i(128057),	-- Chestplate of Potential Energy
						i(128059),	-- Goop-Proof Gloves
						i(128056),	-- Industrial Lifting Belt
						i(128064),	-- Sludge-Resistant Waders
						i(128117),	-- Stone Runeband
						i(128143),	-- Fragmented Runestone Etching
					})),
				}),
				header(HEADERS.Achievement, 10024, {	-- Halls of Blood
					e(1432, {	-- Hellfire High Council
						["crs"] = {
							92142,	-- Blademaster Jubei'thos
							92144,	-- Dia Darkwhisper
							92146,	-- Gurtogg Bloodboil
						},
						["groups"] = {
							i(128097),	-- Riverspike Cleaver
							i(128100),	-- Spring-Loaded Jawstaff
							i(128095),	-- Viscera-Stained Longsword
							i(128191),	-- Hellfire Mindblade
							i(128065),	-- Fel-Crazed Pauldrons
							i(128061),	-- Wailing Woe Pauldrons
							i(128184),	-- Gorget of Induced Madness
							i(128077),	-- Gauntlets of Reckless Assault
							i(128068),	-- Blade-Chipped Waistguard
							i(128089),	-- Sash of Guttural Intonation
							i(128062),	-- Void-Pact Leggings
							i(128040),	-- Bladewalk Boots
							i(128114),	-- Hazy Voidstone Band
							i(128115),	-- Shadowmoon Ancestry Ring
							i(128140),	-- Smoldering Felblade Remnant
						},
					}),
					cr(90378, e(1396, {	-- Kilrogg Deadeye
						i(128093),	-- Demonhorn Spike
						i(128192),	-- Balanced Machete
						i(128074),	-- Hollowheart Helm
						i(128109),	-- Pendant of Precognition
						i(128049),	-- Pauldrons of Perceived Depths
						i(128078),	-- Goresoaked Ritual Robes
						i(128087),	-- Bloodsurge Bracers
						i(128042),	-- Ribwrencher Gauntlets
						i(128047),	-- Cinch of the Bleeding Hollow
						i(128070),	-- Boots of Final Salvation
						i(128167),	-- Sandals of Sanguine Supplication
						i(128116),	-- Band of Impending Doom
						i(128113),	-- Ring of Fortuitous Foresight
						i(128147),	-- Teardrop of Blood
						i(128144),	-- Vial of Vile Viscera
						ig(138808, {	-- Illusion: Mark of the Bleeding Hollow (ILLUSION!)
							["timeline"] = { ADDED_7_0_3 },
						}),
					})),
					cr(90199, e(1372, {	-- Gorefiend
						i(128101),	-- Soulcult Ritual Staff
						i(128196),	-- Limbcarver Hatchet
						i(128200),	-- Deserter's Honor
						i(128079),	-- Boisterous Bellower's Hood
						i(128106),	-- Greatcloak of the Terrible Feast
						i(128072),	-- Bulging Chain Vest
						i(128069),	-- Gloves of Great Engorgement
						i(128135),	-- Demonbreaker Legplates
						i(128129),	-- Felfume Pantaloons
						i(128131),	-- Ironpelt Leggings
						i(128133),	-- Rancorbite Leggings
						i(128148),	-- Fetid Salivation
					})),
				}),
				header(HEADERS.Achievement, 10025, {	-- Bastion of Shadows
					cr(90316, e(1433, {	-- Shadow-Lord Iskar
						i(128096),	-- Demonspine Wand
						i(128041),	-- Beaked Hood of Betrayal
						i(128186),	-- Cursefeather Cloak
						i(128082),	-- Corrupted Talonguard Chestplate
						i(128086),	-- Bracers of Supreme Despair
						i(128083),	-- Feather-Embellished Wristclasps
						i(128055),	-- Chakram-Gripping Gloves
						i(128063),	-- Phantasmal Cummerbund
						i(128180),	-- Flickering Nightstone Band
						i(128296),	-- Soul Prison Solitaire
						i(128179),	-- Talon-Link Loop
						i(128146),	-- Ensnared Orb of the Sky
						ig(127749),	-- Corrupted Nest Guardian (PET!)
						TempForceMisc(ig(127771, {	-- Gemcutter Module: Critical Strike
							["description"] = "Take this recipe to the \"Apexis Gemcutter\" in Tanaan Jungle to learn. If you have this recipe already you will need to revisit the vendor to cache the recipe.",
							["requireSkill"] = JEWELCRAFTING,
						})),
					})),
					cr(92330, e(1427, {	-- Socrethar the Eternal
						i(128197),	-- Felgore Double Blade
						i(128195),	-- Toxin-Tipped Bolt Launcher
						i(128119),	-- Decaying Draenic Shield
						i(128036),	-- Hood of Unhealthy Fixation
						i(128051),	-- Automated Shoulderplates
						i(128046),	-- Shoulderguards of Wrought Destruction
						i(128182),	-- Tenacious Dominator's Gorget
						i(128190),	-- Haunting Nightmare Cloak
						i(128085),	-- Constructbreaker's Chestguard
						i(128084),	-- Socrethar's Ceremonial CUffs
						i(128035),	-- Crystal-Buckle Belt
						i(128088),	-- Girdle of Bound Agony
						i(128145),	-- Howling Soul Gem
					})),
					cr(90269, e(1394, {	-- Tyrant Velhari
						i(128099),	-- Spiked Gnarlroot Greatclub
						i(128045),	-- Mantle of Unrestrained Contempt
						i(128181),	-- Thorny Choker of Suffering
						i(128108),	-- Willbreaker Brooch
						i(128188),	-- Impertinent Student's Cloak
						i(128090),	-- Harbinger's Desecrated Chain Shirt
						i(128139),	-- Demonbreaker Gauntlets
						i(128136),	-- Felfume Gloves
						i(128137),	-- Ironpelt Mitts
						i(128138),	-- Rancorbite Grips
						i(128149),	-- Accusation of Inferiority
					})),
				}),
				header(HEADERS.Achievement, 10020, {	-- Destructor's Rise
					cr(89890, e(1391, {	-- Fel Lord Zakuun
						i(128202),	-- Ironblade Knuckles
						i(128043),	-- Gaze of Superiority
						i(128183),	-- Chain of Agonizing Woe
						i(128185),	-- Voidswirling Throat-Globe
						i(128189),	-- Bloodcrystal Chaincloak
						i(128174),	-- Bindings of Imminent Fury
						i(128175),	-- Manacles of the Demon General
						i(128038),	-- Brittleskin Wraps
						i(128300),	-- Befouled Demonhide Belt
						i(128299),	-- Withering Wastwrap
						i(128066),	-- Imp-Infested Legplates
						i(128178),	-- Zakuun's Smoldering Seal
					})),
					cr(93068, e(1447, {	-- Xhul'horac
						i(128187),	-- Voidthread Spineguard
						i(128176),	-- Bracers of Tainted Magic
						i(128298),	-- Girdle of Volatile Duality
						i(128295),	-- Shadowfel Cord
						i(128091),	-- Stoic Netherfel Legplates
						i(128032),	-- Demonbreaker Crushers
						i(128052),	-- Felfume Slippers
						i(128054),	-- Ironpelt Boots
						i(128080),	-- Rancorbite Sabatons
					})),
					cr(91349, e(1395, {	-- Mannoroth
						i(128198),	-- Irontalon Staff
						i(128193),	-- Serrated Bloodritual Dagger
						i(128194),	-- Snarlwood Recurve Bow
						i(128112),	-- Fel-Light Lantern
						i(128034),	-- Pit Lord's Cowl
						i(128123),	-- Demonbreaker Pauldrons
						i(128120),	-- Felfume Mantle
						i(128121),	-- Ironpelt Pauldrons
						i(128122),	-- Rancorbite Spaulders
						i(128177),	-- Demonforged Iron Bracers
						i(128037),	-- Leggings of Wasted Flesh
						i(128170),	-- Hellstorm Sabatons
						i(128297),	-- Mark of the Destructor
					})),
				}),
				header(HEADERS.Achievement, 10019, {	-- The Black Gate
					cr(91331, e(1438, {	-- Archimonde
						i(128199),	-- Fractured Soulgem Staff
						i(128201),	-- Greatsword of Chaos
						i(128044),	-- Voidsight Hood
						i(128127),	-- Demonbreaker Chestplate
						i(128124),	-- Felfume Robes
						i(128125),	-- Ironpelt Jerkin
						i(128126),	-- Rancorbite Chain Shirt
						i(128048),	-- Vintage Draenic Handguards
						i(128039),	-- Shadeflesh Legguards
						i(128171),	-- Stompers of Echoing Doom
						i(128152),	-- Decree of Demonic Sovereignty
						i(128154),	-- Grasp of the Defiler
						i(128151),	-- Portent of Disaster
						i(128150),	-- Pressure-Compressed Loop
						i(128153),	-- Unquenchable Doomfire Censer
					})),
				}),
			}),
			d(DIFFICULTY.RAID.MULTI.NORMAL_PLUS, {
				cr(95068, e(1426, {	-- Hellfire Assault (Siegemaster Mar'tak)
					ach(10026, {	-- Nearly Indestructible
						["crs"] = { 90018 },	-- Hellfire Cannon
					}),
					i(128256, {	-- Equipment Blueprint: Gyroscopic Internal Stabilizer
						["questID"] = 39364,	-- Equipment Blueprint: Gyroscopic Internal Stabilizer
					}),
				})),
				cr(90284, e(1425, {	-- Iron Reaver
					ach(10057, {	-- Turning the Tide
						["description"] = "When the boss casts Barrage, simply stand at the North or South walls and try to get at least 2-3 Guardians within the frontal cone to kill them. There are 5 Guardians at each wall, 10 Guardians in all, very easy to solo at max level.",
						["crs"] = { 94808 },	-- Hellfire Guardian
					}),
				})),
				cr(90435, e(1392, {	-- Kormrok
					ach(10013),	-- Waves Came Crashing Down All Around
				})),
				e(1432, {	-- Hellfire High Council
					["crs"] = {
						92142,	-- Blademaster Jubei'thos
						92144,	-- Dia Darkwhisper
						92146,	-- Gurtogg Bloodboil
					},
					["groups"] = {
						ach(10054),	-- Don't Fear the Reaper
					},
				}),
				cr(90378, e(1396, {	-- Kilrogg Deadeye
					ach(9972, {	-- A Race Against Slime
						["crs"] = { 90980 },	-- Ariok
						["groups"] = {
							follower(474),	-- Ariok
						},
					}),
					ig(138808, {	-- Illusion: Mark of the Bleeding Hollow (ILLUSION!)
						["timeline"] = { ADDED_7_0_3 },
					}),
				})),
				cr(90199, e(1372, {	-- Gorefiend
					ach(9979, {	-- Get In My Belly!
						["crs"] = { 93145 },	-- Soul of the Crone
					}),
				})),
				cr(90316, e(1433, {	-- Shadow-Lord Iskar
					ach(9988, {	-- Pro Toss
						["description"] = "Pull the boss and burn him before he transitions. As long as no one touched the Eye of Anzu, you will earn the achievement.",
					}),
					ig(127749),	-- Corrupted Nest Guardian (PET!)
					TempForceMisc(ig(127771, {	-- Gemcutter Module: Critical Strike
						["description"] = "Take this recipe to the \"Apexis Gemcutter\" in Tanaan Jungle to learn. If you have this recipe already you will need to revisit the vendor to cache the recipe.",
						["requireSkill"] = JEWELCRAFTING,
					})),
				})),
				cr(92330, e(1427, {	-- Socrethar the Eternal
					ach(10086, {	-- I'm a Soul Man
						["crs"] = { 91938 },	-- Haunting Soul
					}),
				})),
				cr(90269, e(1394, {	-- Tyrant Velhari
					ach(9989, {	-- Non-Lethal Enforcer
						["crs"] = { 90270 },	-- Ancient Enforcer
					}),
				})),
				cr(89890, e(1391, {	-- Fel Lord Zakuun
					ach(10012),	-- This Land Was Green and Good Until...
				})),
				cr(93068, e(1447, {	-- Xhul'horac
					ach(10087),	-- You Gotta Keep 'em Separated
				})),
				cr(91349, e(1395, {	-- Mannoroth
					ach(10030, {	-- Bad Manner(oth)
						["crs"] = { 91241 },	-- Doom Lord
					}),
				})),
				cr(91331, e(1438, {	-- Archimonde
					ach(10073),	-- Echoes of Doomfire
					ach(9680, {	-- Time is a Flat Circle
						["timeline"] = { ADDED_6_2_0, REMOVED_7_0_3 },
					}),
					un(REMOVED_FROM_GAME, i(127785)),	-- Crystallized Fel
				})),
			}),
			d(DIFFICULTY.RAID.NORMAL, {
				n(QUESTS, {
					q(39502, {	-- The Fel Spire (Normal)
						["description"] = "Finishing this quest will grant you immediate access to the Destructor's Rise on Normal difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Heroic or Mythic version first.|r\n",
						["sourceQuests"] = { 39499 },	-- Well of Souls (Normal)
						["provider"] = { "n", 95659 },	-- Archmage Khadgar
						["lockCriteria"] = { 1,
							"questID", 39504,	-- The Fel Spire (Heroic)
							"questID", 39505,	-- The Fel Spire (Mythic)
						},
						["DisablePartySync"] = true,
						["groups"] = { i(128419) },	-- Fel Essence (QI!)
					}),
					q(39499, {	-- Well of Souls (Normal)
						["description"] = "Finishing this quest will grant you immediate access to the Upper Citadel on Normal difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Heroic or Mythic version first.|r\n",
						["provider"] = { "n", 95659 },	-- Archmage Khadgar
						["lockCriteria"] = { 1,
							"questID", 39500,	-- Well of Souls (Heroic)
							"questID", 39501,	-- Well of Souls (Mythic)
						},
						["DisablePartySync"] = true,
						["groups"] = { i(128416) },	-- Soul Remnant (QI!)
					}),
				}),
				n(ZONE_DROPS, {
					i(124182),	-- Cord of Unhinged Malice
					i(124323),	-- Cruel Hope Crushers
					i(124311),	-- Cursed Demonchain Belt
					i(124150),	-- Dessicated Soulrender Slippers
					i(124277),	-- Flayed Demonskin Belt
					i(124350),	-- Girdle of Demonic Wrath
					i(124252),	-- Jungle Assassin's Footpads
					i(124288),	-- Unhallowed Voidlink Boots
					i(118840),	-- Firecrystal Chain
				}),
				cr(95068, e(1426, {	-- Hellfire Assault (Siegemaster Mar'tak)
					i(124365),	-- Blackfuse Company Utility Knife
					i(124370),	-- Felfire Munitions Launcher
					i(124356),	-- Smoldercore Bulwark
					i(124216),	-- Bolt-Latched Felsteel Gorget
					i(124207),	-- Faulty Detonator Cord
					i(124270),	-- Rangefinder's Spaulders
					i(124132),	-- Forward Observer's Camouflage Cloak
					i(124136),	-- Sparkburnt Welder's Cloak
					i(124168),	-- Felgrease-Smudged Robes
					i(124278),	-- Gorebound Wristguards
					i(124183),	-- Powder-Singed Bracers
					i(124324),	-- Flamebelcher's Insulated Mitts
					i(124289),	-- Hand Loader Gauntlets
					i(124335),	-- Blastproof Legguards
					i(124298),	-- Iron Dragoon's Pantaloons
					i(124320),	-- Shell-Resistant Stompers
					i(124201),	-- Mar'tak's Rugged Seal
					i(124190),	-- Sootstained Felsworn Signet
					i(124231),	-- Flickering Felspark
				})),
				cr(90284, e(1425, {	-- Iron Reaver
					i(124373),	-- Iron Skullcrusher
					i(124354),	-- Felforged Aegis
					i(124213),	-- Voltage Regulation Diode
					i(124174),	-- Pilot's Pauldrons
					i(124145),	-- Ironthread Greatcloak
					i(124315),	-- Stamped Felsteel Chestplate
					i(124351),	-- Hot-Rolled Iron Bracers
					i(124253),	-- Insulated Wirer's Gloves
					i(124309),	-- Torch-Brazed Waistguard
					i(124264),	-- Rivet-Studded Leggings
					i(124285),	-- Die-Cast Ringmail Sabatons
					i(124148),	-- Pedal-Pushing Sandals
					i(124249),	-- Spiked Irontoe Slippers
					i(124196),	-- Flanged Gasket
					i(124223),	-- Fel-Spring Coil
					i(124227),	-- Iron Reaver Piston
				})),
				cr(90435, e(1392, {	-- Kormrok
					un(REMOVED_FROM_GAME, i(127956, {	-- Helm of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1392 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127966, {	-- Helm of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1392 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127959, {	-- Helm of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1392 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124162),	-- Deathrattle Mask (Warlock)
					i(124333),	-- Helm of the Ceaseless Vigil (Paladin)
					i(124161),	-- Pious Cowl (Priest)
					i(139627),	-- Ferroleather Hood (Demon Hunter)
					i(124297),	-- Crown of the Living Mountain (Shaman)
					i(124334),	-- Faceguard of Iron Wrath (Warrior)
					i(124296),	-- Hood of the Savage Hunt (Hunter)
					i(124262),	-- Mask of the Hurricane's Eye (Monk)
					i(124160),	-- Cowl of the Arcanic Conclave (Mage)
					i(124332),	-- Demongaze Helm (Death Knight)
					i(124263),	-- Felblade Hood (Rogue)
					i(124261),	-- Oathclaw Helm (Druid)
					i(124377),	-- Rune-Infused Spear
					i(124358),	-- Runeaxe of the Breaker
					i(124363),	-- Runic Magnaron Tooth
					i(124341),	-- Fel-Inscribed Shoulderplates
					i(124304),	-- Rugged Stoneshaped Pauldrons
					i(124211),	-- Glowing Firestone
					i(124217),	-- Shadowgorged Iron Choker
					i(124139),	-- Polymorphic Cloak of Absorption
					i(124243),	-- Tunic of Reformative Runes
					i(124151),	-- Craggy Gloves of Grasping
					i(124180),	-- Sludge-Soaked Waistband
					i(124187),	-- Pit-Extracted Stone Signet
					i(124239),	-- Imbued Stone Sigil
					i(124235),	-- Rumbling Pebble
				})),
				e(1432, {	-- Hellfire High Council
					["crs"] = {
						92142,	-- Blademaster Jubei'thos
						92144,	-- Dia Darkwhisper
						92146,	-- Gurtogg Bloodboil
					},
					["groups"] = {
						i(124388),	-- Fel-Burning Blade
						i(124385),	-- Blazing Demonhilt Sword
						i(124383),	-- Mindbender's Flameblade
						i(124258),	-- Gurtogg's Discarded Hood
						i(124271),	-- Blood-Tanned Pauldrons
						i(124220),	-- Spiked Bloodstone Pendant
						i(124142),	-- Rugged Bloodcaked Drape
						i(124133),	-- Windswept Wanderer's Drape
						i(124312),	-- Bloody Berserker's Bracers
						i(124184),	-- Cursed Blood Bracers
						i(124347),	-- Girdle of Savage Resolve
						i(124336),	-- Acid-Etched Legplates
						i(124163),	-- Dia's Nightmarish Leggings
						i(124299),	-- Kilt of Self-Reflection
						i(124193),	-- Shimmering Voidstone Band
						i(124228),	-- Desecrated Shadowmoon Insignia
						i(124224),	-- Mirror of the Blademaster
					},
				}),
				cr(90378, e(1396, {	-- Kilrogg Deadeye
					i(124379),	-- Bite of the Bleeding Hollow
					i(124364),	-- Fallen Warlord's Mindcarver
					i(124366),	-- Ruinous Gutripper
					i(124330),	-- Helm of Precognition
					i(124305),	-- Pauldrons of Rapid Coagulation
					i(124208),	-- Heartseeking Skull Pendant
					i(124137),	-- Shawl of Sanguinary Ritual
					i(124169),	-- Ancient Gorestained Wrap
					i(124281),	-- Jungle Flayer's Chestguard
					i(124279),	-- Bloodcult Bracers
					i(124325),	-- Crimson Throatgrabbers
					i(124152),	-- Velvet Bloodweaver Gloves
					i(124321),	-- Stompers of Brazen Terror
					i(124250),	-- Toxicologist's Treated Boots
					i(124197),	-- Congealed Globule Loop
					i(124232),	-- Intuition's Gift
					i(124240),	-- Warlord's Unseeing Eye
				})),
				cr(90199, e(1372, {	-- Gorefiend
					un(REMOVED_FROM_GAME, i(127955, {	-- Leggings of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1372 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127965, {	-- Leggings of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1372 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127960, {	-- Leggings of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1372 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124167),	-- Deathrattle Leggings (Warlock)
					i(124339),	-- Greaves of the Ceaseless Vigil (Paladin)
					i(124166),	-- Pious Leggings (Priest)
					i(139628),	-- Ferroleather Leggings (Demon Hunter)
					i(124302),	-- Leggings of the Living Mountain (Shaman)
					i(124301),	-- Leggings of the Savage Hunt (Hunter)
					i(124340),	-- Legplates of Iron Wrath (Warrior)
					i(124268),	-- Legwraps of the Hurricane's Eye (Monk)
					i(124338),	-- Demongaze Legplates (Death Knight)
					i(124269),	-- Felblade Leggings (Rogue)
					i(124267),	-- Oathclaw Leggings (Druid)
					i(124165),	-- Pantaloons of the Arcanic Conclave (Mage)
					i(124380),	-- Spur of the Great Devourer
					i(124359),	-- Voracious Souleater
					i(124205),	-- Gibbering Madness
					i(124157),	-- Cowl of a Thousand Hungers
					i(124342),	-- Soulgorged Pauldrons
					i(124391),	-- Choker of Forbidden Indulgence
					i(124140),	-- Cloak of Insatiable Greed
					i(124146),	-- Drape of Gluttony
					i(124244),	-- Chestguard of Gnawing Desire
					i(124290),	-- Mitts of Eternal Famishment
					i(124348),	-- Ravenous Girdle
					i(124188),	-- Serrated Demontooth Ring
					i(124236),	-- Unending Hunger
				})),
				cr(90316, e(1433, {	-- Shadow-Lord Iskar
					i(124387),	-- Shadowrend Talonblade
					i(124390),	-- Deceiver's Felbeak Wand
					i(124294),	-- Coif of Untrue Sight
					i(124259),	-- Helm of Imagined Horrors
					i(124175),	-- Amice of Phantasmal Power
					i(124218),	-- Corrupted Talonguard Pendant
					i(124134),	-- Cloak of Desperate Temerity
					i(124316),	-- Chestguard of Ill Fate
					i(124170),	-- Raiment of Divine Clarity
					i(124282),	-- Vestment of Illusory Might
					i(124352),	-- Wristplate of the Wretched
					i(124275),	-- Belt of Misconceived Loyalty
					i(124286),	-- Surefooted Chain Treads
					i(124198),	-- Band of Enthralling Delusion
					i(124202),	-- Filigreed Loop of Zealotry
					i(124194),	-- Ring of Foul Temptation
					i(124241),	-- Anzu's Cursed Plume
					i(124229),	-- Unblinking Gaze of Sethe
				})),
				cr(92330, e(1427, {	-- Socrethar the Eternal
					un(REMOVED_FROM_GAME, i(127954, {	-- Gauntlets of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127964, {	-- Gauntlets of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127958, {	-- Gauntlets of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124156),	-- Deathrattle Gloves (Warlock)
					i(124328),	-- Gauntlets of the Ceaseless Vigil (Paladin)
					i(124155),	-- Pious Handwraps (Priest)
					i(139626),	-- Ferroleather Gloves (Demon Hunter)
					i(124256),	-- Fistwraps of the Hurricane's Eye (Monk)
					i(124329),	-- Gauntlets of Iron Wrath (Warrior)
					i(124293),	-- Gauntlets of the Living Mountain (Shaman)
					i(124292),	-- Gloves of the Savage Hunt (Hunter)
					i(124327),	-- Demongaze Gauntlets (Death Knight)
					i(124257),	-- Felblade Gloves (Rogue)
					i(124154),	-- Gloves of the Arcanic Conclave (Mage)
					i(124255),	-- Oathclaw Gauntlets (Druid)
					i(124386),	-- Felstricken Sha'tari Crystalsword
					i(124384),	-- Saber of Twisted Virtue
					i(124362),	-- Felcrystal Impaler
					i(124357),	-- Soulwarped Tower Shield
					i(124331),	-- Casque of Foul Concentration
					i(124221),	-- Contained Fel Orb Locket
					i(124141),	-- Drape of Beckoned Souls
					i(124143),	-- Soulbinder's Greatcloak
					i(124245),	-- Tunic of the Soulbinder
					i(124313),	-- Chain Wristguards of the Stricken
					i(124185),	-- Pristine Man'ari Cuffs
					i(124191),	-- Seal of the Traitorous Councilor
					i(124233),	-- Demonic Phylactery
					i(124225),	-- Soul Capacitor
				})),
				cr(90269, e(1394, {	-- Tyrant Velhari
					i(124375),	-- Maul of Tyranny
					i(124376),	-- Warhammer of Arrogance
					i(124355),	-- Fallen Defender of Argus
					i(124306),	-- Pauldrons of Contempt
					i(124219),	-- Choker of Sneering Superiority
					i(124186),	-- Contemptious Wristguards
					i(124326),	-- Gauntlets of Derision
					i(124153),	-- Satin Gloves of Injustice
					i(124300),	-- Haughty Chain Legguards
					i(124251),	-- Oppressor's Merciless Treads
					i(124287),	-- Spiked Throatcrusher Boots
					i(124192),	-- Loathful Encrusted Band
					i(124195),	-- Pompous Ceremonial Ring
					i(124226),	-- Malicious Censer
					i(124242),	-- Tyrant's Decree
				})),
				cr(89890, e(1391, {	-- Fel Lord Zakuun
					i(124360),	-- Hellrender
					i(124368),	-- Demonblade Eviscerator
					i(124369),	-- Mindscythe of the Legion
					i(124209),	-- Chain of Lidless Eyes
					i(124214),	-- Choker of Whispered Promises
					i(124138),	-- Cloak of Hideous Unity
					i(124283),	-- Ringmail of Madness Accordant
					i(124280),	-- Manacles of the Multitudes
					i(124310),	-- Girdle of the Legion General
					i(124181),	-- Sash of Unending Anguish
					i(124265),	-- Leggings of Eternal Terror
					i(124337),	-- Legguards of Grievous Consonances
					i(124149),	-- Bloody Dagger-Heeled Pumps
					i(124203),	-- Zakuun's Signet of Command
					i(124237),	-- Discordant Chorus
				})),
				cr(93068, e(1447, {	-- Xhul'horac
					un(REMOVED_FROM_GAME, i(127957, {	-- Shoulders of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1447 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127967, {	-- Shoulders of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127961, {	-- Shoulders of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124179),	-- Deathrattle Shoulderpads (Warlock)
					i(124178),	-- Pious Mantle (Priest)
					i(124345),	-- Shoulderplates of the Ceaseless Vigil (Paladin)
					i(139629),	-- Ferroleather Spaulders (Demon Hunter)
					i(124273),	-- Mantle of the Hurricane's Eye (Monk)
					i(124346),	-- Pauldrons of Iron Wrath (Warrior)
					i(124308),	-- Pauldrons of the Living Mountain (Shaman)
					i(124307),	-- Pauldrons of the Savage Hunt (Hunter)
					i(124344),	-- Demongaze Pauldrons (Death Knight)
					i(124274),	-- Felblade Spaulders (Rogue)
					i(124177),	-- Mantle of the Arcanic Conclave (Mage)
					i(124272),	-- Oathclaw Mantle (Druid)
					i(124381),	-- Voidcore Greatstaff
					i(124374),	-- Fiendsbreath Warmace
					i(124371),	-- Hammer of Wicked Infusion
					i(124158),	-- Countenance of the Revenant
					i(124260),	-- Hood of Unknowable Secrets
					i(124295),	-- Sinister Felborne Helmet
					i(124212),	-- Vial of Immiscible Liquid
					i(124147),	-- Void Lord's Wizened Cloak
					i(124353),	-- Breach-Scarred Wristplates
					i(124199),	-- Loop of Beckoned Shadows
					i(124189),	-- Portal Key Signet
					i(124234),	-- Unstable Felshadow Emulsion
				})),
				cr(91349, e(1395, {	-- Mannoroth
					un(REMOVED_FROM_GAME, i(127953, {	-- Chest of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1395 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127963, {	-- Chest of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127962, {	-- Chest of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124318),	-- Cuirass of the Ceaseless Vigil (Paladin)
					i(124173),	-- Deathrattle Robe (Warlock)
					i(124172),	-- Pious Raiment (Priest)
					i(139625),	-- Ferroleather Chestguard (Demon Hunter)
					i(124319),	-- Breastplate of Iron Wrath (Warrior)
					i(124284),	-- Hauberk of the Savage Hunt (Hunter)
					i(124247),	-- Robe of the Hurricane's Eye (Monk)
					i(124303),	-- Robe of the Living Mountain (Shaman)
					i(124317),	-- Demongaze Chestplate (Death Knight)
					i(124248),	-- Felblade Chestguard (Rogue)
					i(124246),	-- Oathclaw Vestment (Druid)
					i(124171),	-- Robe of the Arcanic Conclave (Mage)
					i(124378),	-- Xu'tenash, Glaive of Ruin
					i(124367),	-- Fang of the Pit
					i(124361),	-- Cursed Demonbone Longbow
					i(124206),	-- Thumping Demonheart Fetish
					i(124215),	-- Locket of Unholy Reconstitution
					i(124135),	-- Cloak of Tangible Dread
					i(124314),	-- Bracers of Fel Empowerment
					i(124349),	-- Annihilan's Waistplate
					i(124266),	-- Empowered Demonskin Kilt
					i(124164),	-- Leggings of the Iron Summoner
					i(124204),	-- Mannoroth's Calcified Eye
					i(124238),	-- Empty Drinking Horn
					i(124230),	-- Prophecy of Fear
				})),
				cr(91331, e(1438, {	-- Archimonde
					un(REMOVED_FROM_GAME, i(127969, {	-- Badge of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1438 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "not", "itemID", 127969 },		-- don't include itself
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127970, {	-- Badge of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1438 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "not", "itemID", 127970 },		-- don't include itself
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127968, {	-- Badge of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1438 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 3 },			-- only keep this difficulty
							{ "not", "itemID", 127968 },		-- don't include itself
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124389),	-- Calamity's Edge
					i(124382),	-- Edict of Argus
					i(124372),	-- Gavel of the Eredar
					i(124159),	-- Demon Prince's Ascendant Crown
					i(124210),	-- Choker of the Great Betrayer
					i(124222),	-- World Ender's Gorget
					i(124343),	-- Doomcrier's Shoulderplates
					i(124176),	-- Mantle of the Eredar Lord
					i(124144),	-- Cloak of Incendiary Wrath
					i(124291),	-- Eredar Fel-Chain Gloves
					i(124254),	-- Felfinger Runegloves
					i(124200),	-- Demonbuckle Sash of Argus
					i(124276),	-- Waistwrap of Banishment
					i(124322),	-- Treads of the Defiler
					i(139630),	-- Etching of Sargeras
					i(124522),	-- Fragment of the Dark Star
					i(124518),	-- Libram of Vindication
					i(124519),	-- Repudiation of War
					i(124521),	-- Core of the Primal Elements
					i(124517),	-- Sacred Draenic Incense
					i(124515),	-- Talisman of the Master Tracker
					i(124523),	-- Worldbreaker's Resolve
					i(124520),	-- Bleeding Hollow Toxin Vessel
					i(124513),	-- Reaper's Harvest
					i(124514),	-- Seed of Creation
					i(124516),	-- Tome of Shifting Words
				})),
			}),
			d(DIFFICULTY.RAID.HEROIC, {
				n(QUESTS, {
					q(40962, {	-- Dark Waters
						["sourceQuest"] = 40904,	-- Shadow of the Defiler
						["qg"] = 102432,	-- Malfurion Stormrage
						["coord"] = { 36.4, 41.6, MOONGLADE },
						["timeline"] = { REMOVED_7_0_3 },
						["lvl"] = 100,
						["groups"] = {
							i(128422, {	-- Grove Warden (MOUNT!)
								["timeline"] = { REMOVED_7_0_3 },
							}),
						},
					}),
					q(40904, {	-- Shadow of the Defiler
						["provider"] = { "i", 133762 },	-- Remnant of Chaos
						["timeline"] = { REMOVED_7_0_3 },
						["maps"] = { MOONGLADE },
					}),
					q(39504, {	-- The Fel Spire (Heroic)
						["description"] = "Finishing this quest will grant you immediate access to the Destructor's Rise on Heroic difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Mythic version first.|r\n",
						["sourceQuests"] = { 39500 },	-- Well of Souls (Heroic)
						["provider"] = { "n", 95659 },	-- Archmage Khadgar
						["lockCriteria"] = { 1, "questID", 39505 },	-- The Fel Spire (Mythic)
						["DisablePartySync"] = true,
						["groups"] = { i(128420) },	-- Fel Essence (QI!)
					}),
					q(39500, {	-- Well of Souls (Heroic)
						["description"] = "Finishing this quest will grant you immediate access to the Upper Citadel on Heroic difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Mythic version first.|r\n",
						["provider"] = { "n", 95659 },	-- Archmage Khadgar
						["lockCriteria"] = { 1, "questID", 39501 },	-- Well of Souls (Mythic)
						["DisablePartySync"] = true,
						["groups"] = { i(128417) },	-- Soul Remnant (QI!)
					}),
				}),
				n(ZONE_DROPS, {
					i(124182),	-- Cord of Unhinged Malice
					i(124323),	-- Cruel Hope Crushers
					i(124311),	-- Cursed Demonchain Belt
					i(124150),	-- Dessicated Soulrender Slippers
					i(124277),	-- Flayed Demonskin Belt
					i(124350),	-- Girdle of Demonic Wrath
					i(124252),	-- Jungle Assassin's Footpads
					i(124288),	-- Unhallowed Voidlink Boots
					i(118840),	-- Firecrystal Chain
				}),
				cr(95068, e(1426, {	-- Hellfire Assault (Siegemaster Mar'tak)
					i(124365),	-- Blackfuse Company Utility Knife
					i(124370),	-- Felfire Munitions Launcher
					i(124356),	-- Smoldercore Bulwark
					i(124216),	-- Bolt-Latched Felsteel Gorget
					i(124207),	-- Faulty Detonator Cord
					i(124270),	-- Rangefinder's Spaulders
					i(124132),	-- Forward Observer's Camouflage Cloak
					i(124136),	-- Sparkburnt Welder's Cloak
					i(124168),	-- Felgrease-Smudged Robes
					i(124278),	-- Gorebound Wristguards
					i(124183),	-- Powder-Singed Bracers
					i(124324),	-- Flamebelcher's Insulated Mitts
					i(124289),	-- Hand Loader Gauntlets
					i(124335),	-- Blastproof Legguards
					i(124298),	-- Iron Dragoon's Pantaloons
					i(124320),	-- Shell-Resistant Stompers
					i(124201),	-- Mar'tak's Rugged Seal
					i(124190),	-- Sootstained Felsworn Signet
					i(124231),	-- Flickering Felspark
				})),
				cr(90284, e(1425, {	-- Iron Reaver
					i(124373),	-- Iron Skullcrusher
					i(124354),	-- Felforged Aegis
					i(124213),	-- Voltage Regulation Diode
					i(124174),	-- Pilot's Pauldrons
					i(124145),	-- Ironthread Greatcloak
					i(124315),	-- Stamped Felsteel Chestplate
					i(124351),	-- Hot-Rolled Iron Bracers
					i(124253),	-- Insulated Wirer's Gloves
					i(124309),	-- Torch-Brazed Waistguard
					i(124264),	-- Rivet-Studded Leggings
					i(124285),	-- Die-Cast Ringmail Sabatons
					i(124148),	-- Pedal-Pushing Sandals
					i(124249),	-- Spiked Irontoe Slippers
					i(124196),	-- Flanged Gasket
					i(124223),	-- Fel-Spring Coil
					i(124227),	-- Iron Reaver Piston
				})),
				cr(90435, e(1392, {	-- Kormrok
					un(REMOVED_FROM_GAME, i(127956, {	-- Helm of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1392 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127966, {	-- Helm of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1392 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127959, {	-- Helm of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1392 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124162),	-- Deathrattle Mask (Warlock)
					i(124333),	-- Helm of the Ceaseless Vigil (Paladin)
					i(124161),	-- Pious Cowl (Priest)
					i(139627),	-- Ferroleather Hood (Demon Hunter)
					i(124297),	-- Crown of the Living Mountain (Shaman)
					i(124334),	-- Faceguard of Iron Wrath (Warrior)
					i(124296),	-- Hood of the Savage Hunt (Hunter)
					i(124262),	-- Mask of the Hurricane's Eye (Monk)
					i(124160),	-- Cowl of the Arcanic Conclave (Mage)
					i(124332),	-- Demongaze Helm (Death Knight)
					i(124263),	-- Felblade Hood (Rogue)
					i(124261),	-- Oathclaw Helm (Druid)
					i(124377),	-- Rune-Infused Spear
					i(124358),	-- Runeaxe of the Breaker
					i(124363),	-- Runic Magnaron Tooth
					i(124341),	-- Fel-Inscribed Shoulderplates
					i(124304),	-- Rugged Stoneshaped Pauldrons
					i(124211),	-- Glowing Firestone
					i(124217),	-- Shadowgorged Iron Choker
					i(124139),	-- Polymorphic Cloak of Absorption
					i(124243),	-- Tunic of Reformative Runes
					i(124151),	-- Craggy Gloves of Grasping
					i(124180),	-- Sludge-Soaked Waistband
					i(124187),	-- Pit-Extracted Stone Signet
					i(124239),	-- Imbued Stone Sigil
					i(124235),	-- Rumbling Pebble
				})),
				e(1432, {	-- Hellfire High Council
					["crs"] = {
						92142,	-- Blademaster Jubei'thos
						92144,	-- Dia Darkwhisper
						92146,	-- Gurtogg Bloodboil
					},
					["groups"] = {
						i(124388),	-- Fel-Burning Blade
						i(124385),	-- Blazing Demonhilt Sword
						i(124383),	-- Mindbender's Flameblade
						i(124258),	-- Gurtogg's Discarded Hood
						i(124271),	-- Blood-Tanned Pauldrons
						i(124220),	-- Spiked Bloodstone Pendant
						i(124142),	-- Rugged Bloodcaked Drape
						i(124133),	-- Windswept Wanderer's Drape
						i(124312),	-- Bloody Berserker's Bracers
						i(124184),	-- Cursed Blood Bracers
						i(124347),	-- Girdle of Savage Resolve
						i(124336),	-- Acid-Etched Legplates
						i(124163),	-- Dia's Nightmarish Leggings
						i(124299),	-- Kilt of Self-Reflection
						i(124193),	-- Shimmering Voidstone Band
						i(124228),	-- Desecrated Shadowmoon Insignia
						i(124224),	-- Mirror of the Blademaster
					},
				}),
				cr(90378, e(1396, {	-- Kilrogg Deadeye
					i(124379),	-- Bite of the Bleeding Hollow
					i(124364),	-- Fallen Warlord's Mindcarver
					i(124366),	-- Ruinous Gutripper
					i(124330),	-- Helm of Precognition
					i(124305),	-- Pauldrons of Rapid Coagulation
					i(124208),	-- Heartseeking Skull Pendant
					i(124137),	-- Shawl of Sanguinary Ritual
					i(124169),	-- Ancient Gorestained Wrap
					i(124281),	-- Jungle Flayer's Chestguard
					i(124279),	-- Bloodcult Bracers
					i(124325),	-- Crimson Throatgrabbers
					i(124152),	-- Velvet Bloodweaver Gloves
					i(124321),	-- Stompers of Brazen Terror
					i(124250),	-- Toxicologist's Treated Boots
					i(124197),	-- Congealed Globule Loop
					i(124232),	-- Intuition's Gift
					i(124240),	-- Warlord's Unseeing Eye
				})),
				cr(90199, e(1372, {	-- Gorefiend
					un(REMOVED_FROM_GAME, i(127955, {	-- Leggings of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1372 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127965, {	-- Leggings of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1372 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127960, {	-- Leggings of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1372 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124167),	-- Deathrattle Leggings (Warlock)
					i(124339),	-- Greaves of the Ceaseless Vigil (Paladin)
					i(124166),	-- Pious Leggings (Priest)
					i(139628),	-- Ferroleather Leggings (Demon Hunter)
					i(124302),	-- Leggings of the Living Mountain (Shaman)
					i(124301),	-- Leggings of the Savage Hunt (Hunter)
					i(124340),	-- Legplates of Iron Wrath (Warrior)
					i(124268),	-- Legwraps of the Hurricane's Eye (Monk)
					i(124338),	-- Demongaze Legplates (Death Knight)
					i(124269),	-- Felblade Leggings (Rogue)
					i(124267),	-- Oathclaw Leggings (Druid)
					i(124165),	-- Pantaloons of the Arcanic Conclave (Mage)
					i(124380),	-- Spur of the Great Devourer
					i(124359),	-- Voracious Souleater
					i(124205),	-- Gibbering Madness
					i(124157),	-- Cowl of a Thousand Hungers
					i(124342),	-- Soulgorged Pauldrons
					i(124391),	-- Choker of Forbidden Indulgence
					i(124140),	-- Cloak of Insatiable Greed
					i(124146),	-- Drape of Gluttony
					i(124244),	-- Chestguard of Gnawing Desire
					i(124290),	-- Mitts of Eternal Famishment
					i(124348),	-- Ravenous Girdle
					i(124188),	-- Serrated Demontooth Ring
					i(124236),	-- Unending Hunger
				})),
				cr(90316, e(1433, {	-- Shadow-Lord Iskar
					i(124387),	-- Shadowrend Talonblade
					i(124390),	-- Deceiver's Felbeak Wand
					i(124294),	-- Coif of Untrue Sight
					i(124259),	-- Helm of Imagined Horrors
					i(124175),	-- Amice of Phantasmal Power
					i(124218),	-- Corrupted Talonguard Pendant
					i(124134),	-- Cloak of Desperate Temerity
					i(124316),	-- Chestguard of Ill Fate
					i(124170),	-- Raiment of Divine Clarity
					i(124282),	-- Vestment of Illusory Might
					i(124352),	-- Wristplate of the Wretched
					i(124275),	-- Belt of Misconceived Loyalty
					i(124286),	-- Surefooted Chain Treads
					i(124198),	-- Band of Enthralling Delusion
					i(124202),	-- Filigreed Loop of Zealotry
					i(124194),	-- Ring of Foul Temptation
					i(124241),	-- Anzu's Cursed Plume
					i(124229),	-- Unblinking Gaze of Sethe
				})),
				cr(92330, e(1427, {	-- Socrethar the Eternal
					un(REMOVED_FROM_GAME, i(127954, {	-- Gauntlets of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127964, {	-- Gauntlets of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127958, {	-- Gauntlets of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124156),	-- Deathrattle Gloves (Warlock)
					i(124328),	-- Gauntlets of the Ceaseless Vigil (Paladin)
					i(124155),	-- Pious Handwraps (Priest)
					i(139626),	-- Ferroleather Gloves (Demon Hunter)
					i(124256),	-- Fistwraps of the Hurricane's Eye (Monk)
					i(124329),	-- Gauntlets of Iron Wrath (Warrior)
					i(124293),	-- Gauntlets of the Living Mountain (Shaman)
					i(124292),	-- Gloves of the Savage Hunt (Hunter)
					i(124327),	-- Demongaze Gauntlets (Death Knight)
					i(124257),	-- Felblade Gloves (Rogue)
					i(124154),	-- Gloves of the Arcanic Conclave (Mage)
					i(124255),	-- Oathclaw Gauntlets (Druid)
					i(124386),	-- Felstricken Sha'tari Crystalsword
					i(124384),	-- Saber of Twisted Virtue
					i(124362),	-- Felcrystal Impaler
					i(124357),	-- Soulwarped Tower Shield
					i(124331),	-- Casque of Foul Concentration
					i(124221),	-- Contained Fel Orb Locket
					i(124141),	-- Drape of Beckoned Souls
					i(124143),	-- Soulbinder's Greatcloak
					i(124245),	-- Tunic of the Soulbinder
					i(124313),	-- Chain Wristguards of the Stricken
					i(124185),	-- Pristine Man'ari Cuffs
					i(124191),	-- Seal of the Traitorous Councilor
					i(124233),	-- Demonic Phylactery
					i(124225),	-- Soul Capacitor
				})),
				cr(90269, e(1394, {	-- Tyrant Velhari
					i(124375),	-- Maul of Tyranny
					i(124376),	-- Warhammer of Arrogance
					i(124355),	-- Fallen Defender of Argus
					i(124306),	-- Pauldrons of Contempt
					i(124219),	-- Choker of Sneering Superiority
					i(124186),	-- Contemptious Wristguards
					i(124326),	-- Gauntlets of Derision
					i(124153),	-- Satin Gloves of Injustice
					i(124300),	-- Haughty Chain Legguards
					i(124251),	-- Oppressor's Merciless Treads
					i(124287),	-- Spiked Throatcrusher Boots
					i(124192),	-- Loathful Encrusted Band
					i(124195),	-- Pompous Ceremonial Ring
					i(124226),	-- Malicious Censer
					i(124242),	-- Tyrant's Decree
				})),
				cr(89890, e(1391, {	-- Fel Lord Zakuun
					i(124360),	-- Hellrender
					i(124368),	-- Demonblade Eviscerator
					i(124369),	-- Mindscythe of the Legion
					i(124209),	-- Chain of Lidless Eyes
					i(124214),	-- Choker of Whispered Promises
					i(124138),	-- Cloak of Hideous Unity
					i(124283),	-- Ringmail of Madness Accordant
					i(124280),	-- Manacles of the Multitudes
					i(124310),	-- Girdle of the Legion General
					i(124181),	-- Sash of Unending Anguish
					i(124265),	-- Leggings of Eternal Terror
					i(124337),	-- Legguards of Grievous Consonances
					i(124149),	-- Bloody Dagger-Heeled Pumps
					i(124203),	-- Zakuun's Signet of Command
					i(124237),	-- Discordant Chorus
				})),
				cr(93068, e(1447, {	-- Xhul'horac
					un(REMOVED_FROM_GAME, i(127957, {	-- Shoulders of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1447 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127967, {	-- Shoulders of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127961, {	-- Shoulders of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124179),	-- Deathrattle Shoulderpads (Warlock)
					i(124178),	-- Pious Mantle (Priest)
					i(124345),	-- Shoulderplates of the Ceaseless Vigil (Paladin)
					i(139629),	-- Ferroleather Spaulders (Demon Hunter)
					i(124273),	-- Mantle of the Hurricane's Eye (Monk)
					i(124346),	-- Pauldrons of Iron Wrath (Warrior)
					i(124308),	-- Pauldrons of the Living Mountain (Shaman)
					i(124307),	-- Pauldrons of the Savage Hunt (Hunter)
					i(124344),	-- Demongaze Pauldrons (Death Knight)
					i(124274),	-- Felblade Spaulders (Rogue)
					i(124177),	-- Mantle of the Arcanic Conclave (Mage)
					i(124272),	-- Oathclaw Mantle (Druid)
					i(124381),	-- Voidcore Greatstaff
					i(124374),	-- Fiendsbreath Warmace
					i(124371),	-- Hammer of Wicked Infusion
					i(124158),	-- Countenance of the Revenant
					i(124260),	-- Hood of Unknowable Secrets
					i(124295),	-- Sinister Felborne Helmet
					i(124212),	-- Vial of Immiscible Liquid
					i(124147),	-- Void Lord's Wizened Cloak
					i(124353),	-- Breach-Scarred Wristplates
					i(124199),	-- Loop of Beckoned Shadows
					i(124189),	-- Portal Key Signet
					i(124234),	-- Unstable Felshadow Emulsion
				})),
				cr(91349, e(1395, {	-- Mannoroth
					un(REMOVED_FROM_GAME, i(127953, {	-- Chest of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1395 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127963, {	-- Chest of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127962, {	-- Chest of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124318),	-- Cuirass of the Ceaseless Vigil (Paladin)
					i(124173),	-- Deathrattle Robe (Warlock)
					i(124172),	-- Pious Raiment (Priest)
					i(139625),	-- Ferroleather Chestguard (Demon Hunter)
					i(124319),	-- Breastplate of Iron Wrath (Warrior)
					i(124284),	-- Hauberk of the Savage Hunt (Hunter)
					i(124247),	-- Robe of the Hurricane's Eye (Monk)
					i(124303),	-- Robe of the Living Mountain (Shaman)
					i(124317),	-- Demongaze Chestplate (Death Knight)
					i(124248),	-- Felblade Chestguard (Rogue)
					i(124246),	-- Oathclaw Vestment (Druid)
					i(124171),	-- Robe of the Arcanic Conclave (Mage)
					i(124378),	-- Xu'tenash, Glaive of Ruin
					i(124367),	-- Fang of the Pit
					i(124361),	-- Cursed Demonbone Longbow
					i(124206),	-- Thumping Demonheart Fetish
					i(124215),	-- Locket of Unholy Reconstitution
					i(124135),	-- Cloak of Tangible Dread
					i(124314),	-- Bracers of Fel Empowerment
					i(124349),	-- Annihilan's Waistplate
					i(124266),	-- Empowered Demonskin Kilt
					i(124164),	-- Leggings of the Iron Summoner
					i(124204),	-- Mannoroth's Calcified Eye
					i(124238),	-- Empty Drinking Horn
					i(124230),	-- Prophecy of Fear
				})),
				cr(91331, e(1438, {	-- Archimonde
					un(REMOVED_FROM_GAME, ach(10044)),	-- Ahead of the Curve: The Black Gate
					i(133762, {	-- Remnant of Chaos
						["timeline"] = { REMOVED_7_0_3 },
					}),
					un(REMOVED_FROM_GAME, i(127969, {	-- Badge of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1438 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "not", "itemID", 127969 },		-- don't include itself
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127970, {	-- Badge of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1438 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "not", "itemID", 127970 },		-- don't include itself
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127968, {	-- Badge of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1438 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 5 },			-- only keep this difficulty
							{ "not", "itemID", 127968 },		-- don't include itself
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124389),	-- Calamity's Edge
					i(124382),	-- Edict of Argus
					i(124372),	-- Gavel of the Eredar
					i(124159),	-- Demon Prince's Ascendant Crown
					i(124210),	-- Choker of the Great Betrayer
					i(124222),	-- World Ender's Gorget
					i(124343),	-- Doomcrier's Shoulderplates
					i(124176),	-- Mantle of the Eredar Lord
					i(124144),	-- Cloak of Incendiary Wrath
					i(124291),	-- Eredar Fel-Chain Gloves
					i(124254),	-- Felfinger Runegloves
					i(124200),	-- Demonbuckle Sash of Argus
					i(124276),	-- Waistwrap of Banishment
					i(124322),	-- Treads of the Defiler
					i(139630),	-- Etching of Sargeras
					i(124522),	-- Fragment of the Dark Star
					i(124518),	-- Libram of Vindication
					i(124519),	-- Repudiation of War
					i(124521),	-- Core of the Primal Elements
					i(124517),	-- Sacred Draenic Incense
					i(124515),	-- Talisman of the Master Tracker
					i(124523),	-- Worldbreaker's Resolve
					i(124520),	-- Bleeding Hollow Toxin Vessel
					i(124513),	-- Reaper's Harvest
					i(124514),	-- Seed of Creation
					i(124516),	-- Tome of Shifting Words
				})),
			}),
			d(DIFFICULTY.RAID.MYTHIC, {
				n(QUESTS, {
					q(39505, {	-- The Fel Spire (Mythic)
						["description"] = "Finishing this quest will grant you immediate access to the Destructor's Rise on Mythic difficulty each week.",
						["sourceQuests"] = { 39501 },	-- Well of Souls (Mythic)
						["provider"] = { "n", 95659 },	-- Archmage Khadgar
						["groups"] = { i(128421) },	-- Fel Essence (QI!)
					}),
					q(39501, {	-- Well of Souls (Mythic)
						["description"] = "Finishing this quest will grant you immediate access to the Upper Citadel on Mythic difficulty each week.",
						["provider"] = { "n", 95659 },	-- Archmage Khadgar
						["groups"] = { i(128418) },	-- Soul Remnant (QI!)
					}),
				}),
				n(ZONE_DROPS, {
					i(124182),	-- Cord of Unhinged Malice
					i(124323),	-- Cruel Hope Crushers
					i(124311),	-- Cursed Demonchain Belt
					i(124150),	-- Dessicated Soulrender Slippers
					i(124277),	-- Flayed Demonskin Belt
					i(124350),	-- Girdle of Demonic Wrath
					i(124252),	-- Jungle Assassin's Footpads
					i(124288),	-- Unhallowed Voidlink Boots
					i(118840),	-- Firecrystal Chain
				}),
				cr(95068, e(1426, {	-- Hellfire Assault (Siegemaster Mar'tak)
					ach(10027),	-- Mythic: Hellfire Assault
					i(124365),	-- Blackfuse Company Utility Knife
					i(124370),	-- Felfire Munitions Launcher
					i(124356),	-- Smoldercore Bulwark
					i(124216),	-- Bolt-Latched Felsteel Gorget
					i(124207),	-- Faulty Detonator Cord
					i(124270),	-- Rangefinder's Spaulders
					i(124132),	-- Forward Observer's Camouflage Cloak
					i(124136),	-- Sparkburnt Welder's Cloak
					i(124168),	-- Felgrease-Smudged Robes
					i(124278),	-- Gorebound Wristguards
					i(124183),	-- Powder-Singed Bracers
					i(124324),	-- Flamebelcher's Insulated Mitts
					i(124289),	-- Hand Loader Gauntlets
					i(124335),	-- Blastproof Legguards
					i(124298),	-- Iron Dragoon's Pantaloons
					i(124320),	-- Shell-Resistant Stompers
					i(124201),	-- Mar'tak's Rugged Seal
					i(124190),	-- Sootstained Felsworn Signet
					i(124231),	-- Flickering Felspark
				})),
				cr(90284, e(1425, {	-- Iron Reaver
					ach(10032),	-- Mythic: Iron Reaver
					i(124373),	-- Iron Skullcrusher
					i(124354),	-- Felforged Aegis
					i(124213),	-- Voltage Regulation Diode
					i(124174),	-- Pilot's Pauldrons
					i(124145),	-- Ironthread Greatcloak
					i(124315),	-- Stamped Felsteel Chestplate
					i(124351),	-- Hot-Rolled Iron Bracers
					i(124253),	-- Insulated Wirer's Gloves
					i(124309),	-- Torch-Brazed Waistguard
					i(124264),	-- Rivet-Studded Leggings
					i(124285),	-- Die-Cast Ringmail Sabatons
					i(124148),	-- Pedal-Pushing Sandals
					i(124249),	-- Spiked Irontoe Slippers
					i(124196),	-- Flanged Gasket
					i(124223),	-- Fel-Spring Coil
					i(124227),	-- Iron Reaver Piston
				})),
				cr(90435, e(1392, {	-- Kormrok
					ach(10033),	-- Mythic: Kormrok
					un(REMOVED_FROM_GAME, i(127956, {	-- Helm of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1392 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127966, {	-- Helm of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1392 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127959, {	-- Helm of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1392 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124162),	-- Deathrattle Mask (Warlock)
					i(124333),	-- Helm of the Ceaseless Vigil (Paladin)
					i(124161),	-- Pious Cowl (Priest)
					i(139627),	-- Ferroleather Hood (Demon Hunter)
					i(124297),	-- Crown of the Living Mountain (Shaman)
					i(124334),	-- Faceguard of Iron Wrath (Warrior)
					i(124296),	-- Hood of the Savage Hunt (Hunter)
					i(124262),	-- Mask of the Hurricane's Eye (Monk)
					i(124160),	-- Cowl of the Arcanic Conclave (Mage)
					i(124332),	-- Demongaze Helm (Death Knight)
					i(124263),	-- Felblade Hood (Rogue)
					i(124261),	-- Oathclaw Helm (Druid)
					i(124377),	-- Rune-Infused Spear
					i(124358),	-- Runeaxe of the Breaker
					i(124363),	-- Runic Magnaron Tooth
					i(124341),	-- Fel-Inscribed Shoulderplates
					i(124304),	-- Rugged Stoneshaped Pauldrons
					i(124211),	-- Glowing Firestone
					i(124217),	-- Shadowgorged Iron Choker
					i(124139),	-- Polymorphic Cloak of Absorption
					i(124243),	-- Tunic of Reformative Runes
					i(124151),	-- Craggy Gloves of Grasping
					i(124180),	-- Sludge-Soaked Waistband
					i(124187),	-- Pit-Extracted Stone Signet
					i(124239),	-- Imbued Stone Sigil
					i(124235),	-- Rumbling Pebble
				})),
				e(1432, {	-- Hellfire High Council
					["crs"] = {
						92142,	-- Blademaster Jubei'thos
						92144,	-- Dia Darkwhisper
						92146,	-- Gurtogg Bloodboil
					},
					["groups"] = {
						ach(10034),	-- Mythic: Hellfire High Council
						i(124388),	-- Fel-Burning Blade
						i(124385),	-- Blazing Demonhilt Sword
						i(124383),	-- Mindbender's Flameblade
						i(124258),	-- Gurtogg's Discarded Hood
						i(124271),	-- Blood-Tanned Pauldrons
						i(124220),	-- Spiked Bloodstone Pendant
						i(124142),	-- Rugged Bloodcaked Drape
						i(124133),	-- Windswept Wanderer's Drape
						i(124312),	-- Bloody Berserker's Bracers
						i(124184),	-- Cursed Blood Bracers
						i(124347),	-- Girdle of Savage Resolve
						i(124336),	-- Acid-Etched Legplates
						i(124163),	-- Dia's Nightmarish Leggings
						i(124299),	-- Kilt of Self-Reflection
						i(124193),	-- Shimmering Voidstone Band
						i(124228),	-- Desecrated Shadowmoon Insignia
						i(124224),	-- Mirror of the Blademaster
					},
				}),
				cr(90378, e(1396, {	-- Kilrogg Deadeye
					ach(10035),	-- Mythic: Kilrogg Deadeye
					i(124379),	-- Bite of the Bleeding Hollow
					i(124364),	-- Fallen Warlord's Mindcarver
					i(124366),	-- Ruinous Gutripper
					i(124330),	-- Helm of Precognition
					i(124305),	-- Pauldrons of Rapid Coagulation
					i(124208),	-- Heartseeking Skull Pendant
					i(124137),	-- Shawl of Sanguinary Ritual
					i(124169),	-- Ancient Gorestained Wrap
					i(124281),	-- Jungle Flayer's Chestguard
					i(124279),	-- Bloodcult Bracers
					i(124325),	-- Crimson Throatgrabbers
					i(124152),	-- Velvet Bloodweaver Gloves
					i(124321),	-- Stompers of Brazen Terror
					i(124250),	-- Toxicologist's Treated Boots
					i(124197),	-- Congealed Globule Loop
					i(124232),	-- Intuition's Gift
					i(124240),	-- Warlord's Unseeing Eye
				})),
				cr(90199, e(1372, {	-- Gorefiend
					ach(10253),	-- Mythic: Gorefiend
					un(REMOVED_FROM_GAME, i(127955, {	-- Leggings of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1372 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127965, {	-- Leggings of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1372 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127960, {	-- Leggings of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1372 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124167),	-- Deathrattle Leggings (Warlock)
					i(124339),	-- Greaves of the Ceaseless Vigil (Paladin)
					i(124166),	-- Pious Leggings (Priest)
					i(139628),	-- Ferroleather Leggings (Demon Hunter)
					i(124302),	-- Leggings of the Living Mountain (Shaman)
					i(124301),	-- Leggings of the Savage Hunt (Hunter)
					i(124340),	-- Legplates of Iron Wrath (Warrior)
					i(124268),	-- Legwraps of the Hurricane's Eye (Monk)
					i(124338),	-- Demongaze Legplates (Death Knight)
					i(124269),	-- Felblade Leggings (Rogue)
					i(124267),	-- Oathclaw Leggings (Druid)
					i(124165),	-- Pantaloons of the Arcanic Conclave (Mage)
					i(124380),	-- Spur of the Great Devourer
					i(124359),	-- Voracious Souleater
					i(124205),	-- Gibbering Madness
					i(124157),	-- Cowl of a Thousand Hungers
					i(124342),	-- Soulgorged Pauldrons
					i(124391),	-- Choker of Forbidden Indulgence
					i(124140),	-- Cloak of Insatiable Greed
					i(124146),	-- Drape of Gluttony
					i(124244),	-- Chestguard of Gnawing Desire
					i(124290),	-- Mitts of Eternal Famishment
					i(124348),	-- Ravenous Girdle
					i(124188),	-- Serrated Demontooth Ring
					i(124236),	-- Unending Hunger
				})),
				cr(90316, e(1433, {	-- Shadow-Lord Iskar
					ach(10037),	-- Mythic: Shadow-Lord Iskar
					i(124387),	-- Shadowrend Talonblade
					i(124390),	-- Deceiver's Felbeak Wand
					i(124294),	-- Coif of Untrue Sight
					i(124259),	-- Helm of Imagined Horrors
					i(124175),	-- Amice of Phantasmal Power
					i(124218),	-- Corrupted Talonguard Pendant
					i(124134),	-- Cloak of Desperate Temerity
					i(124316),	-- Chestguard of Ill Fate
					i(124170),	-- Raiment of Divine Clarity
					i(124282),	-- Vestment of Illusory Might
					i(124352),	-- Wristplate of the Wretched
					i(124275),	-- Belt of Misconceived Loyalty
					i(124286),	-- Surefooted Chain Treads
					i(124198),	-- Band of Enthralling Delusion
					i(124202),	-- Filigreed Loop of Zealotry
					i(124194),	-- Ring of Foul Temptation
					i(124241),	-- Anzu's Cursed Plume
					i(124229),	-- Unblinking Gaze of Sethe
				})),
				cr(92330, e(1427, {	-- Socrethar the Eternal
					ach(10040),	-- Mythic: Socrethar the Eternal
					un(REMOVED_FROM_GAME, i(127954, {	-- Gauntlets of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127964, {	-- Gauntlets of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127958, {	-- Gauntlets of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124156),	-- Deathrattle Gloves (Warlock)
					i(124328),	-- Gauntlets of the Ceaseless Vigil (Paladin)
					i(124155),	-- Pious Handwraps (Priest)
					i(139626),	-- Ferroleather Gloves (Demon Hunter)
					i(124256),	-- Fistwraps of the Hurricane's Eye (Monk)
					i(124329),	-- Gauntlets of Iron Wrath (Warrior)
					i(124293),	-- Gauntlets of the Living Mountain (Shaman)
					i(124292),	-- Gloves of the Savage Hunt (Hunter)
					i(124327),	-- Demongaze Gauntlets (Death Knight)
					i(124257),	-- Felblade Gloves (Rogue)
					i(124154),	-- Gloves of the Arcanic Conclave (Mage)
					i(124255),	-- Oathclaw Gauntlets (Druid)
					i(124386),	-- Felstricken Sha'tari Crystalsword
					i(124384),	-- Saber of Twisted Virtue
					i(124362),	-- Felcrystal Impaler
					i(124357),	-- Soulwarped Tower Shield
					i(124331),	-- Casque of Foul Concentration
					i(124221),	-- Contained Fel Orb Locket
					i(124141),	-- Drape of Beckoned Souls
					i(124143),	-- Soulbinder's Greatcloak
					i(124245),	-- Tunic of the Soulbinder
					i(124313),	-- Chain Wristguards of the Stricken
					i(124185),	-- Pristine Man'ari Cuffs
					i(124191),	-- Seal of the Traitorous Councilor
					i(124233),	-- Demonic Phylactery
					i(124225),	-- Soul Capacitor
				})),
				cr(90269, e(1394, {	-- Tyrant Velhari
					ach(10041),	-- Mythic: Tyrant Velhari
					i(124375),	-- Maul of Tyranny
					i(124376),	-- Warhammer of Arrogance
					i(124355),	-- Fallen Defender of Argus
					i(124306),	-- Pauldrons of Contempt
					i(124219),	-- Choker of Sneering Superiority
					i(124186),	-- Contemptious Wristguards
					i(124326),	-- Gauntlets of Derision
					i(124153),	-- Satin Gloves of Injustice
					i(124300),	-- Haughty Chain Legguards
					i(124251),	-- Oppressor's Merciless Treads
					i(124287),	-- Spiked Throatcrusher Boots
					i(124192),	-- Loathful Encrusted Band
					i(124195),	-- Pompous Ceremonial Ring
					i(124226),	-- Malicious Censer
					i(124242),	-- Tyrant's Decree
				})),
				cr(89890, e(1391, {	-- Fel Lord Zakuun
					ach(10038),	-- Mythic: Fel Lord Zakuun
					i(124360),	-- Hellrender
					i(124368),	-- Demonblade Eviscerator
					i(124369),	-- Mindscythe of the Legion
					i(124209),	-- Chain of Lidless Eyes
					i(124214),	-- Choker of Whispered Promises
					i(124138),	-- Cloak of Hideous Unity
					i(124283),	-- Ringmail of Madness Accordant
					i(124280),	-- Manacles of the Multitudes
					i(124310),	-- Girdle of the Legion General
					i(124181),	-- Sash of Unending Anguish
					i(124265),	-- Leggings of Eternal Terror
					i(124337),	-- Legguards of Grievous Consonances
					i(124149),	-- Bloody Dagger-Heeled Pumps
					i(124203),	-- Zakuun's Signet of Command
					i(124237),	-- Discordant Chorus
				})),
				cr(93068, e(1447, {	-- Xhul'horac
					ach(10039),	-- Mythic: Xhul'horac
					un(REMOVED_FROM_GAME, i(127957, {	-- Shoulders of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1447 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127967, {	-- Shoulders of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127961, {	-- Shoulders of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124179),	-- Deathrattle Shoulderpads (Warlock)
					i(124178),	-- Pious Mantle (Priest)
					i(124345),	-- Shoulderplates of the Ceaseless Vigil (Paladin)
					i(139629),	-- Ferroleather Spaulders (Demon Hunter)
					i(124273),	-- Mantle of the Hurricane's Eye (Monk)
					i(124346),	-- Pauldrons of Iron Wrath (Warrior)
					i(124308),	-- Pauldrons of the Living Mountain (Shaman)
					i(124307),	-- Pauldrons of the Savage Hunt (Hunter)
					i(124344),	-- Demongaze Pauldrons (Death Knight)
					i(124274),	-- Felblade Spaulders (Rogue)
					i(124177),	-- Mantle of the Arcanic Conclave (Mage)
					i(124272),	-- Oathclaw Mantle (Druid)
					i(124381),	-- Voidcore Greatstaff
					i(124374),	-- Fiendsbreath Warmace
					i(124371),	-- Hammer of Wicked Infusion
					i(124158),	-- Countenance of the Revenant
					i(124260),	-- Hood of Unknowable Secrets
					i(124295),	-- Sinister Felborne Helmet
					i(124212),	-- Vial of Immiscible Liquid
					i(124147),	-- Void Lord's Wizened Cloak
					i(124353),	-- Breach-Scarred Wristplates
					i(124199),	-- Loop of Beckoned Shadows
					i(124189),	-- Portal Key Signet
					i(124234),	-- Unstable Felshadow Emulsion
				})),
				cr(91349, e(1395, {	-- Mannoroth
					ach(10042),	-- Mythic: Mannoroth
					un(REMOVED_FROM_GAME, i(127953, {	-- Chest of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1395 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127963, {	-- Chest of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127962, {	-- Chest of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1427 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "is", "sourceID" },						-- only items with a sourceID
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124318),	-- Cuirass of the Ceaseless Vigil (Paladin)
					i(124173),	-- Deathrattle Robe (Warlock)
					i(124172),	-- Pious Raiment (Priest)
					i(139625),	-- Ferroleather Chestguard (Demon Hunter)
					i(124319),	-- Breastplate of Iron Wrath (Warrior)
					i(124284),	-- Hauberk of the Savage Hunt (Hunter)
					i(124247),	-- Robe of the Hurricane's Eye (Monk)
					i(124303),	-- Robe of the Living Mountain (Shaman)
					i(124317),	-- Demongaze Chestplate (Death Knight)
					i(124248),	-- Felblade Chestguard (Rogue)
					i(124246),	-- Oathclaw Vestment (Druid)
					i(124171),	-- Robe of the Arcanic Conclave (Mage)
					i(124378),	-- Xu'tenash, Glaive of Ruin
					i(124367),	-- Fang of the Pit
					i(124361),	-- Cursed Demonbone Longbow
					i(124206),	-- Thumping Demonheart Fetish
					i(124215),	-- Locket of Unholy Reconstitution
					i(124135),	-- Cloak of Tangible Dread
					i(124314),	-- Bracers of Fel Empowerment
					i(124349),	-- Annihilan's Waistplate
					i(124266),	-- Empowered Demonskin Kilt
					i(124164),	-- Leggings of the Iron Summoner
					i(124204),	-- Mannoroth's Calcified Eye
					i(124238),	-- Empty Drinking Horn
					i(124230),	-- Prophecy of Fear
				})),
				cr(91331, e(1438, {	-- Archimonde
					un(REMOVED_FROM_GAME, ach(10044)),	-- Ahead of the Curve: The Black Gate
					un(REMOVED_FROM_GAME, ach(10045)),	-- Cutting Edge: The Black Gate
					un(REMOVED_FROM_GAME, ach(10380)),	-- Realm First! Archimonde
					ach(10043, {	-- Mythic: Archimonde
						title(319),		-- , Defiler's End
					}),
					ach(10176),	-- Mythic: Archimonde Guild Run
					ig(123890),	-- Felsteel Annihilator (MOUNT!)
					i(133762, {	-- Remnant of Chaos
						["timeline"] = { REMOVED_7_0_3 },
					}),
					un(REMOVED_FROM_GAME, i(127969, {	-- Badge of Hellfire's Conqueror
						["sym"] = {
							{ "select", "encounterID", 1438 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "not", "itemID", 127969 },		-- don't include itself
							{ "contains", "c", DEMONHUNTER, PALADIN, PRIEST, WARLOCK },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127970, {	-- Badge of Hellfire's Protector
						["sym"] = {
							{ "select", "encounterID", 1438 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "not", "itemID", 127970 },		-- don't include itself
							{ "contains", "c", HUNTER, MONK, SHAMAN, WARRIOR },	-- only keep items for these classes
						},
					})),
					un(REMOVED_FROM_GAME, i(127968, {	-- Badge of Hellfire's Vanquisher
						["sym"] = {
							{ "select", "encounterID", 1438 },	-- This encounter
							{ "pop" },							-- pop the encounter Headers
							{ "where", "modID", 6 },			-- only keep this difficulty
							{ "not", "itemID", 127968 },		-- don't include itself
							{ "contains", "c", DEATHKNIGHT, DRUID, MAGE, ROGUE },	-- only keep items for these classes
						},
					})),
					i(124389),	-- Calamity's Edge
					i(124382),	-- Edict of Argus
					i(124372),	-- Gavel of the Eredar
					i(124159),	-- Demon Prince's Ascendant Crown
					i(124210),	-- Choker of the Great Betrayer
					i(124222),	-- World Ender's Gorget
					i(124343),	-- Doomcrier's Shoulderplates
					i(124176),	-- Mantle of the Eredar Lord
					i(124144),	-- Cloak of Incendiary Wrath
					i(124291),	-- Eredar Fel-Chain Gloves
					i(124254),	-- Felfinger Runegloves
					i(124200),	-- Demonbuckle Sash of Argus
					i(124276),	-- Waistwrap of Banishment
					i(124322),	-- Treads of the Defiler
					i(139630),	-- Etching of Sargeras
					i(124522),	-- Fragment of the Dark Star
					i(124518),	-- Libram of Vindication
					i(124519),	-- Repudiation of War
					i(124521),	-- Core of the Primal Elements
					i(124517),	-- Sacred Draenic Incense
					i(124515),	-- Talisman of the Master Tracker
					i(124523),	-- Worldbreaker's Resolve
					i(124520),	-- Bleeding Hollow Toxin Vessel
					i(124513),	-- Reaper's Harvest
					i(124514),	-- Seed of Creation
					i(124516),	-- Tome of Shifting Words
				})),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_2_0 } }, {
	inst(669, {
		-- q(8152),	-- Achimonde Normal. (Was also doing 39830)??
	}),
})));
