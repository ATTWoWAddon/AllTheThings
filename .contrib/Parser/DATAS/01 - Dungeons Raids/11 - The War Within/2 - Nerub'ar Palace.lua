-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
------ Encounter Constants ------
local ULGRAX = 2607;
local BLOODBOUND_HORROR = 2611;
local SIKRAN = 2599;
local RASHANAN = 2609;
local OVINAX = 2612;
local KYVEZA = 2601;
local SILKEN_COURT = 2608;
local ANSUREK = 2602;

------ EncounterToCRS ------
local EncounterToCRS = {
	[ULGRAX] = { 215657 },	-- Ulgrax the Devourer
	[BLOODBOUND_HORROR] = { 214502 },	-- The Bloodbound Horror
	[SIKRAN] = { 214503 },	-- Sikran <Captain of the Sureki>
	[RASHANAN] = { 214504 },	-- Rasha'nan
	[OVINAX] = { 214506 },	-- Broodtwister Ovi'nax
	[KYVEZA] = { 217748 },	-- Nexus-Princess Ky'veza
	[SILKEN_COURT] = {
		217489,	-- Anub'arash <The Thousand Scars>
		217491,	-- Skeinspinner Takazj
	},
	[ANSUREK] = { 218370 },	-- Queen Ansurek
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[ULGRAX] = {
		i(212419),	-- Bile-Soaked Harness
		i(212426),	-- Crunchy Intruder's Wristband
		i(212425),	-- Devourer's Taut Innards
		i(212428),	-- Final Meal's Horns
		i(219915),	-- Foul Behemoth's Chelicera
		i(212442),	-- Greatbelt of the Hungerer
		i(212386),	-- Husk of Swallowing Darkness
		i(212423),	-- Rebel's Drained Marrowslacks
		i(212446),	-- Royal Emblem of Nerub-ar
		i(212424),	-- Seasoned Earthen Boulderplates
		i(212388),	-- Ulgrax's Morsel-Masher
		i(212431),	-- Undermoth-Lined Footpads
		i(212409),	-- Venom-Etched Claw
	};
	[BLOODBOUND_HORROR] = {
		i(212451),	-- Aberrant Spellforge
		i(212439),	-- Beacons of the False Dawn
		i(212417),	-- Beyond's Dark Visage
		i(212422),	-- Bloodbound Horror's Legplates
		i(212395),	-- Blood-Kissed Kukri
		i(225590),	-- Boots of the Black Bulwark
		i(219917),	-- Creeping Coagulum
		i(212421),	-- Goresplattered Membrane
		i(212447),	-- Key to the Unseeming
		i(212414),	-- Lost Watcher's Remains
		i(212438),	-- Polluted Spectre's Wraps
		i(212404),	-- Scepter of Manifested Miasma
		i(212430),	-- Shattered Eye Cincture
	};
	[SIKRAN] = {
		i(225618, {	-- Dreadful Stalwart's Emblem
			i(212003),	-- Exhumed Centurion's Gauntlets
			i(212066),	-- Claws of the Hypogeal Nemesis
			i(212075),	-- Hexflame Coven's Sleeves
		}),
		i(225619, {	-- Mystic Stalwart's Emblem
			i(212057),	-- Eviscerators of the Greatlynx
			i(212021),	-- Lightless Scavenger's Mitts
			i(212093),	-- Jeweled Gauntlets of Violet Rebirth
		}),
		i(225620, {	-- Venerated Stalwart's Emblem
			i(211994),	-- Entombed Seraph's Castigation
			i(212084),	-- Living Luster's Touch
			i(212012),	-- Covenant of the Forgotten Reservoir
		}),
		i(225621, {	-- Zenith Stalwart's Emblem
			i(212030),	-- Rippers of the Destroyer
			i(212048),	-- Gatecrasher's Protectors
			i(212039),	-- K'areshi Phantom's Grips
			i(211985),	-- Warsculptor's Crushers
		}),
		i(212445),	-- Chitin-Spiked Jackboots
		i(212416),	-- Cosmic-Tinged Treads
		i(212392),	-- Duelist's Dancing Steel
		i(212405),	-- Flawless Phase Blade
		i(212413),	-- Honored Executioner's Perforator
		i(212449),	-- Sikran's Endless Arsenal
		i(212399),	-- Splintershot Silkbow
		i(225577),	-- Sureki Zealot's Insignia
		i(212415),	-- Throne Defender's Bangles
		i(212427),	-- Visor of the Ascended Captain
	};
	[RASHANAN] = {
		i(225630, {	-- Dreadful Obscenity's Idol
			i(212000),	-- Exhumed Centurion's Spikes
			i(212063),	-- War-Mantle of the Hypogeal Nemesis
			i(212072),	-- Hexflame Coven's Altar
		}),
		i(225631, {	-- Mystic Obscenity's Idol
			i(212054),	-- Maw of the Greatlynx
			i(212018),	-- Lightless Scavenger's Taxidermy
			i(212090),	-- Beacons of Violet Rebirth
		}),
		i(225632, {	-- Venerated Obscenity's Idol
			i(211991),	-- Entombed Seraph's Plumes
			i(212081),	-- Living Luster's Dominion
			i(212009),	-- Concourse of the Forgotten Reservoir
		}),
		i(225633, {	-- Zenith Obscenity's Idol
			i(212027),	-- Fumaroles of the Destroyer
			i(212045),	-- Gatecrasher's Enduring Effigy
			i(212036),	-- K'areshi Phantom's Shoulderpads
			i(211982),	-- Warsculptor's Horned Spaulders
		}),
		i(225583),	-- Behemoth's Eroded Cinch
		i(212398),	-- Bludgeons of Blistering Wind
		i(212440),	-- Devotee's Discarded Headdress
		i(212448),	-- Locket of Broken Memories
		i(212391),	-- Predator's Feasthooks
		i(225586),	-- Rasha'nan's Grotesque Talons
		i(212437),	-- Ravaged Lamplighter's Manacles
		i(212453),	-- Skyterror's Corrosive Organ
		i(225574),	-- Wings of Shattered Sorrow
	};
	[OVINAX] = {
		i(225614, {	-- Dreadful Blasphemer's Effigy
			i(212005),	-- Exhumed Centurion's Breastplate
			i(212068),	-- Chestguard of the Hypogeal Nemesis
			i(212077),	-- Hexflame Coven's Ritual Harness
		}),
		i(225615, {	-- Mystic Blasphemer's Effigy
			i(212059),	-- Hide of the Greatlynx
			i(212023),	-- Lightless Scavenger's Tunic
			i(212095),	-- Runecoat of Violet Rebirth
		}),
		i(225616, {	-- Venerated Blasphemer's Effigy
			i(211996),	-- Entombed Seraph's Breastplate
			i(212086),	-- Living Luster's Raiment
			i(212014),	-- Vestments of the Forgotten Reservoir
		}),
		i(225617, {	-- Zenith Blasphemer's Effigy
			i(212032),	-- Scales of the Destroyer
			i(212050),	-- Gatecrasher's Gi
			i(212041),	-- K'areshi Phantom's Nexus Wraps
			i(211987),	-- Warsculptor's Furred Plastron
		}),
		i(225580),	-- Accelerated Ascension Coil
		i(225582),	-- Assimilated Eggshell Slippers
		i(212418),	-- Black Blood Injectors
		i(212387),	-- Broodtwister's Grim Catalyst
		i(212452),	-- Gruesome Syringe
		i(220305),	-- Ovi'nax's Mercurial Egg
		i(225588),	-- Sanguine Experiment's Bandages
		i(212389),	-- Spire of Transfused Horrors
		i(225576),	-- Writhing Ringworm
	};
	[KYVEZA] = {
		i(225626, {	-- Dreadful Slayer's Icon
			i(212001),	-- Exhumed Centurion's Chausses
			i(212064),	-- Pantaloons of the Hypogeal Nemesis
			i(212073),	-- Hexflame Coven's Leggings
		}),
		i(225627, {	-- Mystic Slayer's Icon
			i(212055),	-- Leggings of the Greatlynx
			i(212019),	-- Lightless Scavenger's Stalkings
			i(212091),	-- Coattails of Violet Rebirth
		}),
		i(225628, {	-- Venerated Slayer's Icon
			i(211992),	-- Entombed Seraph's Greaves
			i(212082),	-- Living Luster's Trousers
			i(212010),	-- Sarong of the Forgotten Reservoir
		}),
		i(225629, {	-- Zenith Slayer's Icon
			i(212028),	-- Legguards of the Destroyer
			i(212046),	-- Gatecrasher's Kilt
			i(212037),	-- K'areshi Phantom's Leggings
			i(211983),	-- Warsculptor's Cuisses
		}),
		i(212441),	-- Bindings of the Starless Night
		i(225591),	-- Fleeting Massacre Footpads
		i(225581),	-- Ky'veza's Covert Clasps
		i(225589),	-- Nether Bounty's Greatbelt
		i(225636),	-- Regicide
		i(212400),	-- Shade-Touched Silencer
		i(221023),	-- Treacherous Transmitter
		i(212456),	-- Void Reaper's Contract
		i(219877),	-- Void Reaper's Warp Blade
	};
	[SILKEN_COURT] = {
		i(225622, {	-- Dreadful Conniver's Badge
			i(212002),	-- Exhumed Centurion's Galea
			i(212065),	-- Impalers of the Hypogeal Nemesis
			i(212074),	-- Hexflame Coven's All-Seeing Eye
		}),
		i(225623, {	-- Mystic Conniver's Badge
			i(212056),	-- Mask of the Greatlynx
			i(212020),	-- Lightless Scavenger's Skull
			i(212092),	-- Hood of Violet Rebirth
		}),
		i(225624, {	-- Venerated Conniver's Badge
			i(211993),	-- Entombed Seraph's Casque
			i(212083),	-- Living Luster's Semblance
			i(212011),	-- Noetic of the Forgotten Reservoir
		}),
		i(225625, {	-- Zenith Conniver's Badge
			i(212029),	-- Horns of the Destroyer
			i(212047),	-- Gatecrasher's Horns
			i(212038),	-- K'areshi Phantom's Emptiness
			i(211984),	-- Warsculptor's Barbute
		}),
		i(212407),	-- Anub'arash's Colossal Mandible
		i(212443),	-- Shattershell Greaves
		i(225575),	-- Silken Advisor's Favor
		i(225584),	-- Skeinspinner's Duplicitous Cuffs
		i(220202),	-- Spymaster's Web
		i(212450),	-- Swarmlord's Authority
		i(212397),	-- Takazj's Entropic Edict
		i(212432),	-- Thousand-Scar Impalers
		i(212429),	-- Whispering Voidlight Spaulders
	};
	[ANSUREK] = {
		i(225585),	-- Acrid Ascendant's Sash
		i(212401),	-- Ansurek's Final Judgment
		i(212436),	-- Clutches of Paranoia
		i(225579),	-- Crest of the Caustic Despot
		i(225587),	-- Devoted Offering's Irons
		i(212444),	-- Frame of Felled Insurgents
		i(212435),	-- Liquified Defector's Leggings
		i(212454),	-- Mad Queen's Mandate
		i(212433),	-- Omnivore's Venomous Camouflage
		i(212420),	-- Queensguard Carapace
		i(225578),	-- Seal of the Poisoned Pact
		i(212394),	-- Sovereign's Disdain
		i(212434),	-- Voidspoken Sarong
	};
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(225728),	-- Acidic Attendant's Loop
	i(225722),	-- Adorned Lynxborne Pauldrons
	i(225727),	-- Captured Earthen's Ironhorns
	i(225744),	-- Heritage Militia's Stompers
	i(225725),	-- Lurking Marauder's Binding
	i(225721),	-- Prime Slime Slippers
	i(225724),	-- Shrillwing Hunter's Prey
	i(225723),	-- Venom Stalker's Strap
	i(225720),	-- Web Acolyte's Hood
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

InstanceHelper.UpgradeMapping = {
	-- #IF AFTER 11.1
	[DIFFICULTY.RAID.LFR] = 0,
	[DIFFICULTY.RAID.NORMAL] = 0,
	[DIFFICULTY.RAID.HEROIC] = 0,
	-- #ELSE
	[DIFFICULTY.RAID.LFR] = 3,
	[DIFFICULTY.RAID.NORMAL] = 5,
	[DIFFICULTY.RAID.HEROIC] = 6,
	-- #ENDIF
};

root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	inst(1273, {	-- Nerub'ar Palace
		["isRaid"] = true,
		["coord"] = { 35.6, 71.6, AZJ_KAHET },
		["maps"] = {
			2291,	-- The Pulsing Pit
			2292,	-- Grand Rampart
			2293,	-- Terrace of Majesty
			2294,	-- The Narthex
			2295,	-- The Crown of Shadows
			2296,	-- The Crown of Shadows - Upper
		},
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(40247, {	-- The Skittering Battlements
					crit(67564, {	-- Ulgrax the Devourer
						["_encounter"] = { ULGRAX, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(67566, {	-- The Bloodbound Horror
						["_encounter"] = { BLOODBOUND_HORROR, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(67566, {	-- Sikran, Captain of the Sureki
						["_encounter"] = { SIKRAN, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(40248, {	-- Secrets of Nerub-ar Palace
					crit(67567, {	-- Rasha'nan
						["_encounter"] = { RASHANAN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(67568, {	-- Broodtwister Ovi'nax
						["_encounter"] = { OVINAX, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(67569, {	-- Nexus-Princess Ky'veza
						["_encounter"] = { KYVEZA, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(40249, {	-- A Queen's Fall
					crit(67570, {	-- The Silken Court
						["_encounter"] = { SILKEN_COURT, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(67571, {	-- Queen Ansurek
						["_encounter"] = { ANSUREK, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(40244, {	-- Nerub-ar Palace
					crit(67564, {	-- Ulgrax the Devourer
						["_encounter"] = { ULGRAX, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(67565, {	-- The Bloodborne Horror
						["_encounter"] = { BLOODBOUND_HORROR, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(67566, {	-- Sikran, Captain of the Sureki
						["_encounter"] = { SIKRAN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(67567, {	-- Rasha'nan
						["_encounter"] = { RASHANAN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(67568, {	-- Broodtwister Ovi'nax
						["_encounter"] = { OVINAX, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(67569, {	-- Nexus-Princess Ky'veza
						["_encounter"] = { KYVEZA, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(67570, {	-- The Silken Court
						["_encounter"] = { SILKEN_COURT, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(67571, {	-- Queen Ansurek
						["_encounter"] = { ANSUREK, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(40245, {	-- Heroic: Nerub-ar Palace
					crit(67572, {	-- Ulgrax the Devourer
						["_encounter"] = { ULGRAX, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(67573, {	-- The Bloodborne Horror
						["_encounter"] = { BLOODBOUND_HORROR, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(67574, {	-- Sikran, Captain of the Sureki
						["_encounter"] = { SIKRAN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(67575, {	-- Rasha'nan
						["_encounter"] = { RASHANAN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(67576, {	-- Broodtwister Ovi'nax
						["_encounter"] = { OVINAX, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(67577, {	-- Nexus-Princess Ky'veza
						["_encounter"] = { KYVEZA, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(67578, {	-- The Silken Court
						["_encounter"] = { SILKEN_COURT, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(67579, {	-- Queen Ansurek
						["_encounter"] = { ANSUREK, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				}),
				ach(40246, {	-- Mythic: Nerub-ar Palace
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						40236,	-- Mythic: Ulgrax the Devourer
						40237,	-- Mythic: The Bloodbound Horror
						40238,	-- Mythic: Sikran, Captain of the Sureki
						40239,	-- Mythic: Rasha'nan
						40240,	-- Mythic: Broodtwister Ovi'nax
						40241,	-- Mythic: Nexus-Princess Ky'veza
						40242,	-- Mythic: The Silken Court
						40243,	-- Mythic: Queen Ansurek
					}},
				}),
				ach(40232, {	-- Glory of the Nerub-ar Raider
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						40261,	-- Slimy Yet Satisfying
						40260,	-- You Can't See Me
						40255,	-- Sik Parry Bro
						40262,	-- Cowabunga
						40263,	-- Would You Still /love Me if I Was a Worm...
						40264,	-- Kill Streak
						40730,	-- Love is in the Lair
						40266,	-- Missed 'Em by That Much
					}},
					["g"] = {
						i(223266),	-- Shadowed Swarmite (MOUNT!)
					},
				}),
				ach(40469),	-- I'm Bringing Nerub-ack
				ach(40256),	-- Nerub-ar Palace Guild Run
				ach(40257),	-- Heroic: Nerub-ar Palace Guild Run
			}),
			n(FLIGHT_PATHS, sharedData({
				["collectible"] = false,	-- these are not collectible since they change/reset with difficulty-based lockout and progress
			},{
				fp(2933, {	-- Grand Rampart
					["crs"] = { 207469 },	-- Nerubian Swarmite Taxi
				}),
				fp(2934, {	-- The Pulsing Pit
					["crs"] = { 207469 },	-- Nerubian Swarmite Taxi
				}),
				fp(2971, {	-- The Pulsing Pit (One Way)
					["crs"] = { 207469 },	-- Nerubian Swarmite Taxi
				}),
				fp(2936, {	-- The Swaying Span (One Way)
					["crs"] = { 207469 },	-- Nerubian Swarmite Taxi
				}),
				fp(2935, {	-- Terrace of Majesty
					["crs"] = { 207469 },	-- Nerubian Swarmite Taxi
				}),
				fp(2937, {	-- The Narthex
					["crs"] = { 207469 },	-- Nerubian Swarmite Taxi
				}),
				fp(2984, {	-- The Ascending Reach
					["crs"] = { 207469 },	-- Nerubian Swarmite Taxi
				}),
				fp(3003, {	-- The Crown of Shadows
					["crs"] = { 207469 },	-- Nerubian Swarmite Taxi
				}),
			})),
			n(SPECIAL, {
				n(228081, {	-- Ethereum Void Reaper
					["description"] =
					-- #if BEFORE 11.0.7
					"This rare has a chance to spawn while using the Trinket, Treacherous Transmitter, in any outdoor Khaz Algar zone.",
					-- #else
					"This rare has a chance to spawn while using the Trinket, Treacherous Transmitter, in any outdoor zone.",
					-- #endif
					["crs"] = { 228078 },	-- Ethereum Void Reaper (Unsure which ID or both //Braghe)
					["provider"] = { "i", 221023 },	-- Treacherous Transmitter
					-- #if BEFORE 11.0.7
					["maps"] = {
						ISLE_OF_DORN,
						HALLOWFALL,
						THE_RINGING_DEEPS,
						AZJ_KAHET,
						AZJ_KAHET_LOWER,
					},
					-- #endif
					["g"] = {
						i(226810),	-- Infiltrator's Shroud (TOY!)
					},
				})
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				CommonBossDrops({
					currency(3093),	-- Nerub-ar Finery
				}),
				BossOnly(ULGRAX),
				BossOnly(BLOODBOUND_HORROR),
				BossOnly(SIKRAN, {
					i(223097),	-- Pattern: Adrenal Surge Clasp (RECIPE!)
				}),
				BossOnly(RASHANAN, {
					i(224435),	-- Pattern: Duskthread Lining (RECIPE!)
				}),
				BossOnly(OVINAX, {
					i(226190),	-- Recipe: Sticky Sweet Treat (RECIPE!)
				}),
				BossOnly(KYVEZA, {
					i(223048),	-- Plans: Siphoning Stiletto (RECIPE!)
				}),
				BossOnly(SILKEN_COURT, {
					i(223094),	-- Design: Magnificent Jeweler's Setting (RECIPE!)
				}),
				BossOnly(ANSUREK, {
					i(224147),	-- Sureki Skyrazor (MOUNT!)
					i(223144),	-- Formula: Enchant Weapon - Authority of the Depths (RECIPE!)
				}),
				n(QUESTS, {
					q(84286, {	-- The Finer Things
						["provider"] = { "n", 225184 },	-- Anub'azal
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroupsWithUpgrades({
				ZoneDrops({
				}),
				CommonBossDrops({
					currency(WEATHERED_HARBINGER_CREST, {
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
					}),
				}),
				header(HEADERS.Achievement, 40247, {	-- The Skittering Battlements
					Boss(ULGRAX),
					Boss(BLOODBOUND_HORROR),
					Boss(SIKRAN),
				}),
				header(HEADERS.Achievement, 40248, {	-- Secrets of Nerub-ar Palace
					Boss(RASHANAN, {
						i(225574, {	-- Wings of Shattered Sorrow
							["modID"] = 67,	-- unique modID for warband drop only
							["nomerge"] = true,
						}),
					}),
					Boss(OVINAX),
					Boss(KYVEZA),
				}),
				header(HEADERS.Achievement, 40249, {	-- A Queen's Fall
					Boss(SILKEN_COURT),
					Boss(ANSUREK, {
						i(225634, {	-- Web-Wrapped Curio
							["crs"] = 227003,	-- Kir'xal (Vendor)
							["sym"] = {{"sub","instance_tier",1273,DIFFICULTY.RAID.LFR}},
							["up"] = IGNORED_VALUE,
						}),
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(ULGRAX, {
					ach(40261),	-- Slimy Yet Satisfying
				}),
				BossOnly(BLOODBOUND_HORROR, {
					ach(40260),	-- You Can't See Me
				}),
				BossOnly(SIKRAN, {
					ach(40255),	-- Sik Parry Bro
				}),
				BossOnly(RASHANAN, {
					ach(40262),	-- Cowabunga
				}),
				BossOnly(OVINAX, {
					ach(40263),	-- Would You Still /love Me if I Was a Worm...
				}),
				BossOnly(KYVEZA, {
					ach(40264),	-- Kill Streak
				}),
				BossOnly(SILKEN_COURT, {
					ach(40730),	-- Love is in the Lair
				}),
				BossOnly(ANSUREK, {
					ach(40266),	-- Missed 'Em by That Much
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(CARVED_HARBINGER_CREST, {
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
					}),
				}),
				n(QUESTS, {
					q(82629,{	-- Nerub-ar Palace: For Nerubian Eyes Only
						["provider"] = { "n", 216971 },	-- Shadow Walker Tarvex
						["g"] = {
							i(224014),	-- Signet of the Skeinspiner (QI!)
							i(224011),	-- Signet of the Thousand Scars (QI!)
						},
					}),
				}),
				ZoneDrops({
				}),
				Boss(ULGRAX),
				Boss(BLOODBOUND_HORROR),
				Boss(SIKRAN),
				Boss(RASHANAN),
				Boss(OVINAX),
				Boss(KYVEZA),
				Boss(SILKEN_COURT),
				Boss(ANSUREK, {
					i(225634, {	-- Web-Wrapped Curio
						["crs"] = 227003,	-- Kir'xal (Vendor)
						["sym"] = {{"sub","instance_tier",1273,DIFFICULTY.RAID.NORMAL}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(ULGRAX),
				BossOnly(BLOODBOUND_HORROR),
				BossOnly(SIKRAN),
				BossOnly(RASHANAN),
				BossOnly(OVINAX),
				BossOnly(KYVEZA),
				BossOnly(SILKEN_COURT),
				BossOnly(ANSUREK, {
					ach(40253, {["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART }}),	-- Ahead of the Curve: Queen Ansurek
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroupsWithUpgrades({
				CommonBossDrops({
					currency(RUNED_HARBINGER_CREST, {
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
					}),
				}),
				n(QUESTS, {
					q(82638,{	-- Nerub-ar Palace: For Nerubian Eyes Only
						["provider"] = { "n", 216971 },	-- Shadow Walker Tarvex
						["g"] = {
							i(224015),	-- Signet of the Skeinspiner (QI!)
							i(224012),	-- Signet of the Thousand Scars (QI!)
						},
					}),
				}),
				ZoneDrops({
				}),
				Boss(ULGRAX),
				Boss(BLOODBOUND_HORROR),
				Boss(SIKRAN),
				Boss(RASHANAN),
				Boss(OVINAX),
				Boss(KYVEZA),
				Boss(SILKEN_COURT),
				Boss(ANSUREK, {
					i(225634, {	-- Web-Wrapped Curio
						["crs"] = 227003,	-- Kir'xal (Vendor)
						["sym"] = {{"sub","instance_tier",1273,DIFFICULTY.RAID.HEROIC}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				CommonBossDrops({
					currency(GILDED_HARBINGER_CREST, {
						["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
					}),
				}),
				n(QUESTS, {
					q(82639,{	-- Nerub-ar Palace: For Nerubian Eyes Only
						["provider"] = { "n", 216971 },	-- Shadow Walker Tarvex
						["g"] = {
							i(224016),	-- Signet of the Skeinspiner (QI!)
							i(224013),	-- Signet of the Thousand Scars (QI!)
						},
					}),
				}),
				ZoneDrops({
				}),
				Boss(ULGRAX, {
					ach(40236),	-- Mythic: Ulgrax the Devourer
				}),
				Boss(BLOODBOUND_HORROR, {
					ach(40237),	-- Mythic: The Bloodbound Horror
				}),
				Boss(SIKRAN, {
					ach(40238),	-- Mythic: Sikran, Captain of the Sureki
				}),
				Boss(RASHANAN, {
					ach(40239),	-- Mythic: Rasha'nan
				}),
				Boss(OVINAX, {
					ach(40240),	-- Mythic: Broodtwister Ovi'nax
				}),
				Boss(KYVEZA, {
					ach(40241),	-- Mythic: Nexus-Princess Ky'veza
				}),
				Boss(SILKEN_COURT, {
					ach(40242),	-- Mythic: The Silken Court
				}),
				Boss(ANSUREK, {
					ach(40243, {	-- Mythic: Queen Ansurek
						title(556),	-- Queenslayer <Name>
					}),
					ach(40254, {["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART }}),	-- Cutting Edge: Queen Ansurek
					ach(40259, bubbleDownSelf({["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART } }, {	-- Hall of Fame: Queen Ansurek
						title(561),	-- <Name>, Famed Slayer of Ansurek
					})),
					ach(40258),	-- Mythic: Queen Ansurek Guild Run
					i(224151),	-- Ascendant Skyrazor (MOUNT!)
					i(225634, {	-- Web-Wrapped Curio
						["crs"] = 227003,	-- Kir'xal (Vendor)
						["sym"] = {{"sub","instance_tier",1273,DIFFICULTY.RAID.MYTHIC}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			n(VENDORS, {
				--Raid vendor gear for curio
				n(227003, {	-- Kir'xal
					["coord"] = { 56.7, 46.1, NERUBAR_LOWER },
					["sym"] = {{"select","itemID",
						modItemId(225634,4),	--	Web-Wrapped Curio [L]
						modItemId(225634,3),	--	Web-Wrapped Curio [N]
						modItemId(225634,5),	--	Web-Wrapped Curio [H]
						modItemId(225634,6),	--	Web-Wrapped Curio [M]
					},{"pop"}},	-- Pop all Curios (this fills their symlinks)
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	inst(1273, bubbleDown({	-- Nerub'ar Palace
		["isWeekly"] = true,
	},{
		-- LFR/Normal/Heroic
		q(83508),	-- First trash pack
		q(83515),	-- Xur'khun the Defiled (trash)
		q(83505),	-- Foreseer Xix'amon (trash)
		q(83511),	-- Terrace of Majesty FP unlock
		q(83507),	-- trash after Rasha'nan
		q(84261),	-- Ulgrax the Devourer
		q(84263),	-- The Bloodbound Horror
		q(84265),	-- Sikran
		q(84267),	-- Rasha'nan
		q(84271),	-- Bloodtwister Ovi'nax
		q(84269),	-- Nexus-Princess Ky'veza
		q(84273),	-- The Silken Court
		q(84276),	-- Queen Ansurek
		-- Mythic
		q(84262),	-- Ulgrax the Devourer
		q(84264),	-- The Bloodbound Horror
		q(84266),	-- Sikran
		q(84268),	-- Rasha'nan
		q(84272),	-- Bloodtwister Ovi'nax
		q(84270),	-- Nexus-Princess Ky'veza
		q(84275),	-- The Silken Court
		q(84277),	-- Queen Ansurek

		q(84597, {["timeline"] = { ADDED_11_0_5 }}),	-- Bronze Celebration Token (Queen Ansurek [H])
	})),
	-- One-Time flags
	inst(1273, {
		-- The Finer Things (Account-Wide Buff tracking) (maybe do something neat to show current level)
		q(84562, {
			["name"]="Severed Threads Active",	-- 1st Turn in of 'The Finer Things' (84286)
			["g"] = {
				currency(3094),	-- Tracking Currency for Severed Threads stacks
			},
		}),
	})
})));