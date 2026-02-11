-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local TALOC = 2168;
local MOTHER = 2167;
local FETID_DEVOURER = 2146;
local ZEKVOZ = 2169;
local VECTIS = 2166;
local ZUL = 2195;
local MYTHRAX = 2194;
local GHUUN = 2147;

------ EncounterToCRS ------
local EncounterToCRS = {
	[TALOC] = {
		137119,	-- Taloc
		138959,	-- Coalesced Blood
		138530,	-- Volatile Droplet
	},
	[MOTHER] = {
		135452,	-- MOTHER
		136429,	-- Chamber 01
		137022,	-- Chamber 02
		137023,	-- Chamber 03
	},
	[FETID_DEVOURER] = {
		133298,	-- Fetid Devourer
		133492,	-- Corruption Corpuscle
	},
	[ZEKVOZ] = {
		134445,	-- Zek'voz
		135824,	-- Nerubian Voidweaver
		134503,	-- Silithid Warrior
	},
	[VECTIS] = {
		134442,	-- Vectis
	},
	[ZUL] = {
		138967,	-- Zul
	},
	[MYTHRAX] = {
		134546,	-- Mythrax the Unraveler
	},
	[GHUUN] = {
		132998,	-- G'huun
		138529,	-- Dark Young
	},
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[TALOC] = {
		i(160679),	-- Khor, Hammer of the Corrupted
		i(160680),	-- Titanspark Animator
		i(160637),	-- Crimson Colossus Armguards
		i(160629),	-- Rubywrought Sparkguards
		i(160618),	-- Gloves of Descending Madness
		i(160622),	-- Bloodstorm Buckle
		i(160639),	-- Greaves of Unending Vigil
		i(160631),	-- Legguards of Coalescing Plasma
		i(160714),	-- Volatile Walkers
		i(160652),	-- Construct Overcharger
		i(160651),	-- Vigilant's Bloodshaper
	},
	[MOTHER] = {
		i(160681),	-- Glaive of the Keepers
		i(160683),	-- Latticework Scalpel
		i(160682),	-- Mother's Twin Gaze
		i(160695),	-- Uldir Subject Manifest
		i(160634),	-- Gridrunner Galea
		i(160632),	-- Flame-Sterilized Spaulders
		i(160626),	-- Gloves of Involuntary Amputation
		i(160638),	-- Decontaminator's Greatbelt
		i(160615),	-- Leggings of Lingering Infestation
		i(160625),	-- Pathogenic Legwraps
		i(160645),	-- Rot-Scour Ring
	},
	[FETID_DEVOURER] = {
		i(160689),	-- Regurgitated Purifier's Flamestaff
		i(160685),	-- Biomelding Cleaver
		i(160616),	-- Horrific Amalgam's Hood
		i(160643),	-- Fetid Horror's Tanglecloak
		i(160619),	-- Jerkin of the Aberrant Chimera
		i(160635),	-- Waste Disposal Crushers
		i(160628),	-- Fused Monstrosity Stompers
		i(160648),	-- Frenetic Corpuscle
	},
	[ZEKVOZ] = {
		i(160688),	-- Void-Binder
		i(160687),	-- Containment Analysis Baton
		i(160613),	-- Mantle of Contained Corruption
		i(160627),	-- Chainvest of Assured Quality
		i(160617),	-- Void-Lashed Wristband
		i(160717),	-- Replicated Chitin Cord
		i(160633),	-- Titanspark Energy Girdle
		i(160718),	-- Greaves of Creeping Darkness
		i(160624),	-- Quarantine Protocol Treads
		i(160640),	-- Warboots of Absolute Eradication
		i(160647),	-- Ring of the Infinite Void
		i(160650),	-- Disc of Systematic Regression
	},
	[VECTIS] = {
		i(160678),	-- Bow of Virulent Infection
		i(160698),	-- Vector Deflector
		i(160623),	-- Hood of Pestilent Ichor
		i(160644),	-- Plasma-Spattered Greatcloak
		i(160636),	-- Chestguard of Virulent Mutagens
		i(160621),	-- Wristwraps of Coursing Miasma
		i(160715),	-- Mutagenic Protofluid Handwraps
		i(160734),	-- Cord of Animated Contagion
		i(160716),	-- Blighted Anima Greaves
		i(160649),	-- Inoculating Extract
		i(160655),	-- Syringe of Bloodborne Infirmity
	},
	[ZUL] = {
		i(160684),	-- Pursax, the Backborer
		i(160691),	-- Tusk of the Reborn Prophet
		i(160630),	-- Crest of the Undying Visionary
		i(160719),	-- Visage of the Ascended Prophet
		i(160620),	-- Usurper's Bloodcaked Spaulders
		i(160642),	-- Cloak of Rippling Whispers
		i(160722),	-- Chestplate of Apocalyptic Machinations
		i(160720),	-- Armbands of Sacrosanct Acts
		i(160723),	-- Imperious Vambraces
		i(160724),	-- Cincture of Profane Deeds
	},
	[MYTHRAX] = {
		i(160686),	-- Voror, Gleaming Blade of the Stalwart
		i(160692),	-- Luminous Edge of Virtue
		i(160696),	-- Codex of Imminent Ruin
		i(163596),	-- Cowl of Dark Portents
		i(160641),	-- Chitinspine Pauldrons
		i(160725),	-- C'thraxxi General's Hauberk
		i(160614),	-- Robes of the Unraveler
		i(160721),	-- Oblivion Crushers
		i(160646),	-- Band of Certain Annihilation
		i(160656),	-- Twitching Tentacle of Xalzaix
		i(160653),	-- Xalzaix's Veiled Eye
	},
	[GHUUN] = {
		i(160690),	-- Heptavium, Staff of Torturous Knowledge
		i(160693),	-- Lancet of the Deft Hand
		i(160694),	-- Re-Origination Pulse Rifle
		i(160699),	-- Bararicade of Purifying Resolve
		i(160732),	-- Helm of the Defiled Laboratorium
		i(160726),	-- Amice of Corrupting Horror
		i(160731),	-- Spaulders of Coagulated Viscera
		i(160728),	-- Tunic of the Sanguine Deity
		i(160727),	-- Cord of Septic Envelopment
		i(160733),	-- Hematocyst Stompers
		i(160729),	-- Striders of the Putrescent Path
		i(160654),	-- Vanquisheed Tendril of G'huun
	},
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(161071),	-- Bloody Experimenter's Wraps
	i(160612),	-- Spellbound Specimen Handlers
	i(161075),	-- Antiseptic Specimen Handlers
	i(161072),	-- Splatterguards
	i(161076),	-- Iron-Grip Specimen Handlers
	i(161073),	-- Reinforced Test Subject Shackles
	i(161074),	-- Crushproof Vambraces
	i(161077),	-- Fluid-Resistant Specimen Handlers
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

root(ROOTS.Instances, expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	inst(1031, {	-- Uldir
		["maps"] = {
			1148,	-- Ruin's Descent
			1149,	-- Hall of Sanitation
			1150,	-- Ring of Containment
			1151,	-- Archives of Eternity
			1152,	-- Plague Vault
			1153,	-- Gallery of Failures
			1154,	-- The Oblivion Door
			1155,	-- The Festering Core
		},
		["isRaid"] = true,
		["lvl"] = { 50 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(12537),	-- Uldir Guild Run
				ach(12991),	-- New Mog, G'huun This?
				ach(12806, {	-- Glory of the Uldir Raider
					["sym"] = {{"meta_achievement",
						12551,	-- Double Dribble
						12937,	-- Elevator Music
						12938,	-- Parental Controls
						12823,	-- Thrash Mouth - All Stars
						12828,	-- What's in the Box?
						12772,	-- Now We Got Bad Blood
						12830,	-- Edgelords
						12836,	-- Existential Crisis
					}},
					["groups"] = {
						i(163216),	-- Bloodgorged Crawg (MOUNT!)
					},
				}),
				ach(12521, {	-- Halls of Containment
					crit(40246, {	-- Taloc
						["_encounter"] = { TALOC, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(40247, {	-- MOTHER
						["_encounter"] = { MOTHER, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(40223, {	-- Zek'voz, Herald of N'zoth
						["_encounter"] = { ZEKVOZ, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(12522, {	-- Crimson Descent
					crit(40248, {	-- Vectis
						["_encounter"] = { VECTIS, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(40222, {	-- Fetid Devourer
						["_encounter"] = { FETID_DEVOURER, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(40224, {	-- Zul, Reborn
						["_encounter"] = { ZUL, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(12523, {	-- Heart of Corruption
					crit(40220, {	-- Mythrax the Unraveler
						["_encounter"] = { MYTHRAX, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(40221, {	-- G'huun
						["_encounter"] = { GHUUN, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(40960, {	-- Uldir
					["timeline"] = { ADDED_11_0_7 },
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						12522,	-- Crimson Descent
						12521,	-- Halls of Containment
						12523,	-- Heart of Corruption
					}},
				}),
			}),
			n(QUESTS, {
				spell(281237, {	-- Reorigination Array
					["description"] = "As mentioned above, Reorigination Array can stack up to 10 times, and the tooltip reveals how this system works. Every week, there is a hidden mini-quest to defeat 3 bosses in Uldir, this objective can be completed in any difficulty. You do not need to have any Azerite Armor from Uldir to progress in these quests. Completing this quest will reward you with one stack of Reorigination Array while in Uldir permanently.\n\nThe track of the complete upgrade system is achieved by a dozen different flag quests, listed below. Note, however, that these quests don't have database entries as they only serve as flags, but can be actually queried in-game for their completion. The first part of the system controls how many bosses have been killed in Uldir for that week:",
					["groups"] = {
						q(53568, {	-- Kill Credit 1
							["name"] = "Kill Credit 1",
							["icon"] = 1392920,
							["isWeekly"] = true,
						}),
						q(53569, {	-- Kill Credit 2
							["name"] = "Kill Credit 2",
							["icon"] = 1392921,
							["isWeekly"] = true,
						}),
						q(53570, {	-- Kill Credit 3
							["name"] = "Kill Credit 3",
							["icon"] = 1392922,
							["isWeekly"] = true,
						}),
						q(53571, {	-- Power Increased to Level 1
							["name"] = "Power Increased to Level 1",
							["icon"] = 2000859,
						}),
						q(53572, {	-- Power Increased to Level 2
							["name"] = "Power Increased to Level 2",
							["icon"] = 2000859,
							["sourceQuests"] = { 53571 },	-- Power Increased to Level 1
						}),
						q(53573, {	-- Power Increased to Level 3
							["name"] = "Power Increased to Level 3",
							["icon"] = 2000859,
							["sourceQuests"] = { 53572 },	-- Power Increased to Level 2
						}),
						q(53574, {	-- Power Increased to Level 4
							["name"] = "Power Increased to Level 4",
							["icon"] = 2000859,
							["sourceQuests"] = { 53573 },	-- Power Increased to Level 3
						}),
						q(53575, {	-- Power Increased to Level 5
							["name"] = "Power Increased to Level 5",
							["icon"] = 2000859,
							["sourceQuests"] = { 53574 },	-- Power Increased to Level 4
						}),
						q(53576, {	-- Power Increased to Level 6
							["name"] = "Power Increased to Level 6",
							["icon"] = 2000859,
							["sourceQuests"] = { 53575 },	-- Power Increased to Level 5
						}),
						q(53577, {	-- Power Increased to Level 7
							["name"] = "Power Increased to Level 7",
							["icon"] = 2000859,
							["sourceQuests"] = { 53576 },	-- Power Increased to Level 6
						}),
						q(53578, {	-- Power Increased to Level 8
							["name"] = "Power Increased to Level 8",
							["icon"] = 2000859,
							["sourceQuests"] = { 53577 },	-- Power Increased to Level 7
						}),
						q(53579, {	-- Power Increased to Level 9
							["name"] = "Power Increased to Level 9",
							["icon"] = 2000859,
							["sourceQuests"] = { 53578 },	-- Power Increased to Level 8
						}),
						q(53580, {	-- Power Increased to Level 10
							["name"] = "Power Increased to Level 10",
							["icon"] = 2000859,
							["sourceQuests"] = { 53579 },	-- Power Increased to Level 9
						}),
					},
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				CommonBossDrops({
					i(162521),	-- Recipe: Mystical Cauldron [Rank 3] (RECIPE!)
					i(162461),	-- Sanguicell
					i(162121),	-- Vantus Rune Technique: Uldir [Rank 1] (RECIPE!)
					i(162124),	-- Vantus Rune Technique: Uldir [Rank 2] (RECIPE!)
					i(162125),	-- Vantus Rune Technique: Uldir [Rank 3] (RECIPE!)
				}),
				BossOnly(TALOC, {
					i(163119),	-- Khor, Hammer of the Guardian (transmog item)
				}),
				BossOnly(MOTHER),
				BossOnly(ZEKVOZ),
				BossOnly(FETID_DEVOURER),
				BossOnly(VECTIS),
				BossOnly(ZUL),
				BossOnly(MYTHRAX),
				BossOnly(ZUL, {
					i(162422),	-- Pattern: Embroidered Deep Sea Bag [Rank 3] (RECIPE!)
				}),
				BossOnly(GHUUN),
			}),
			Difficulty(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["crs"] = {
					177193,	-- Kiku
					177208,	-- Eppu
				},
				["coords"] = {
					{ 74.0, 13.4, BORALUS },	-- Kiku
					{ 68.0, 33.6, THE_GREAT_SEAL },	-- Eppu
				},
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroups({
				ZoneDrops({}),
				header(HEADERS.LFGDungeon, 1731, {	-- Halls of Containment
					Boss(TALOC),
					Boss(MOTHER),
					Boss(ZEKVOZ),
				}),
				header(HEADERS.LFGDungeon, 1732, {	-- Crimson Descent
					Boss(FETID_DEVOURER),
					Boss(VECTIS),
					Boss(ZUL),
				}),
				header(HEADERS.LFGDungeon, 1733, {	-- Heart of Corruption
					Boss(MYTHRAX),
					Boss(GHUUN),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(TALOC, {
					ach(12937),	-- Elevator Music
				}),
				BossOnly(MOTHER, {
					ach(12938),	-- Parental Controls
				}),
				BossOnly(FETID_DEVOURER, {
					ach(12823),	-- Thrash Mouth - All Stars
				}),
				BossOnly(ZEKVOZ, {
					ach(12828),	-- What's in the Box?
				}),
				BossOnly(VECTIS, {
					ach(12772),	--  Now We Got Bad Blood
				}),
				BossOnly(ZUL, {
					ach(12830),	-- Edgelords
					i(166502),	-- Blood-Soaked Tome of Dark Whispers (CI!)
				}),
				BossOnly(MYTHRAX, {
					ach(12836),	-- Existential Crisis
				}),
				BossOnly(GHUUN, {
					ach(12551),	-- Double Dribble
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
				ZoneDrops({}),
				Boss(TALOC),
				Boss(MOTHER),
				Boss(ZEKVOZ),
				Boss(FETID_DEVOURER),
				Boss(VECTIS),
				Boss(ZUL),
				Boss(MYTHRAX),
				Boss(GHUUN),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(GHUUN, {
					ach(12536, {	-- Ahead of the Curve: G'huun
						["timeline"] = { ADDED_8_0_1, REMOVED_8_1_0 },
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
				ZoneDrops({}),
				Boss(TALOC),
				Boss(MOTHER),
				Boss(ZEKVOZ),
				Boss(FETID_DEVOURER),
				Boss(VECTIS),
				Boss(ZUL),
				Boss(MYTHRAX),
				Boss(GHUUN),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				ZoneDrops({}),
				Boss(TALOC, {
					ach(12524),	-- Mythic: Taloc
				}),
				Boss(MOTHER, {
					ach(12526),	-- Mythic: MOTHER
				}),
				Boss(ZEKVOZ, {
					ach(12527),	-- Mythic: Zek'voz, Herald of N'zoth
				}),
				Boss(FETID_DEVOURER, {
					ach(12530),	-- Mythic: Fetid Devourer
				}),
				Boss(VECTIS, {
					ach(12529),	-- Mythic: Vectis
				}),
				Boss(ZUL, {
					ach(12531),	-- Mythic: Zul, Reborn
				}),
				Boss(MYTHRAX, {
					ach(12532),	-- Mythic: Mythrax the Unraveler
				}),
				Boss(GHUUN, {
					ach(12535, {	-- Cutting Edge: G'huun
						["timeline"] = { ADDED_8_0_1, REMOVED_8_1_0 },
					}),
					ach(12533, {	-- Mythic: G'huun
						title(381),	-- <Name> the Purifier
					}),
					ach(13010),	-- Mythic: G'huun Guild Run
					ach(12542, applyDataSelf({["timeline"] = { ADDED_8_0_1, REMOVED_8_1_0 } }, {	-- Hall of Fame: G'huun (Alliance)
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							title(374),	-- <Name>, Famed Slayer of G'huun
						},
					})),
					ach(12543, applyDataSelf({["timeline"] = { ADDED_8_0_1, REMOVED_8_1_0 } }, {	-- Hall of Fame: G'huun (Horde)
						["races"] = HORDE_ONLY,
						["groups"] = {
							title(374),	-- <Name>, Famed Slayer of G'huun
						},
					})),
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	inst(1031, {	-- Uldir
		q(53269),	-- killed Taloc the Corrupted in LFR
		q(51736),	-- killed Taloc on Mythic
		q(51735),	-- killed MOTHER on Mythic
		q(51734),	-- killed Vectis on Mythic / Heroic
		q(51733),	-- killed Fetid Devourer on Mythic
		q(51730),	-- killed Mythrax the Unraveler on Mythic
		q(51732),	-- reported as triggering after doing "What's in the Box?" achievement, perhaps a kill quest
		q(51731),	-- reported as triggering after doing "Edgelords" achievement, perhaps a kill quest
		q(51729),	-- reported as triggering after doing "Double Dribble" achievement, perhaps a kill quest
	}),
})));
