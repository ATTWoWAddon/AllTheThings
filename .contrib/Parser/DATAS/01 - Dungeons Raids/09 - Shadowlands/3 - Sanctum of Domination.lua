-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local TARRAGRUE = 2435;
local EYE = 2442;
local NINE = 2439;
local NERZHUL = 2444;
local DORMAZAIN = 2445;
local PAINSMITH = 2443;
local GUARDIAN = 2446;
local FATESCRIBE = 2447;
local KELTHUZAD = 2440;
local SYLVANAS = 2441;

------ EncounterToCRS ------
local EncounterToCRS = {
	[TARRAGRUE] = {
		175611,	-- The Tarragrue
	},
	[EYE] = {
		175725,	-- Eye of the Jailer
		176531,	-- Deathseeker Eye
	},
	[NINE] = {
		177094,	-- Signe
		177095,	-- Kyra
		175726,	-- Skyja
	},
	[NERZHUL] = {
		175729,	-- Remnant of Ner'zhul
	},
	[DORMAZAIN] = {
		175727,	-- Soulrender Dormazain
	},
	[PAINSMITH] = {
		176523,	-- Painsmith Raznal
	},
	[GUARDIAN] = {
		175731,	-- Guardian of the First Ones
	},
	[FATESCRIBE] = {
		175730,	-- Fatescribe Roh-Kalo
	},
	[KELTHUZAD] = {
		175559,	-- Kel'Thuzad
	},
	[SYLVANAS] = {
		175732,	-- Sylvanas Windrunner
	},
};

------ All Bosses crs ------
local ALL_BOSSES = {};
for k,v in pairs(EncounterToCRS) do
	ALL_BOSSES = appendGroups(v, ALL_BOSSES);
end

------ EncounterToLoot ------
local EncounterToLoot = {
	[TARRAGRUE] = {
		i(186311),	-- Cavalier Oathbreaker's Grasps
		i(186318),	-- Champion's Gruesome Greaves
		i(186297),	-- Clasps of the Unfortunate Troubadour
		i(186303),	-- Colossus Slayer's Hauberk
		i(186381),	-- Elethium-Bladed Glaive
		i(186302),	-- Mistwrap Manacles
		i(186415),	-- Moriaz's Spare Targe
		i(186291),	-- Periapt of Pristine Preservation
		i(186281),	-- Phantasma-Forged Striders
		i(186298),	-- Smuggler's Plundered Pauldrons
		i(186285),	-- Sorcerer's Headlong Legwraps
		i(186422),	-- Tome of Monstrous Constructions
	},
	[EYE] = {
		i(186316),	-- Airborne Abductor's Vambraces
		i(186301),	-- Coiled Stygian Grapnel
		i(186383),	-- Gazepiercer
		i(186288),	-- Grasps of the Clairvoyant Sage
		i(186306),	-- Greaves of Extermination
		i(186418),	-- Guarm's Lost Chew Toy
		i(186295),	-- Loyal Kvaldir's Handwraps
		i(186296),	-- Mawsworn Eviscerator's Cuirass
		i(186403),	-- Stygian Lance of Passage
		i(186423),	-- Titanic Ocular Gland
	},
	[NINE] = {
		i(186313),	-- Agatha's Gothic Greaves
		i(186307),	-- Aradne's Lancer Legguards
		i(186339),	-- Brynja's Mournful Wristwraps
		i(186299),	-- Daschla's Defiant Treads
		i(186404),	-- Jotungeirr, Destiny's Call
		i(186346),	-- Kyra's Unending Protectors
		i(186286),	-- Mantle of Arthura's Chosen
		i(186425),	-- Scrawled Word of Recall
		i(186424),	-- Shard of Annhylde's Aegis
		i(186385),	-- Signe's Sonorous Scramaseax
		i(186384),	-- Skyja's Revenant Fury
		i(186290),	-- Sworn Oath of the Nine
	},
	[NERZHUL] = {
		i(186386),	-- Betrayer's Shadowspike
		i(186292),	-- Cap of Writhing Malevolence
		i(186304),	-- Crest of the Fallen
		i(186312),	-- Cuirass of the Lonely Citadel
		i(186315),	-- Dark Tormentor's Gaze
		i(186405),	-- Gnarled Staff of the Elder Shaman
		i(186308),	-- Grasps of Ancestral Whispers
		i(186287),	-- Hood of Vengeful Possession
		i(186428),	-- Shadowed Orb of Torment
		i(186378),	-- Weathered Talisman of the Shadowmoon
		i(186427),	-- Whispering Shard of Power
	},
	[DORMAZAIN] = {
		i(186294),	-- Agonizing Spiked Belt
		i(186289),	-- Cloak of Scarred Honor
		i(186283),	-- Cruel Overlord's Shackles
		i(186429),	-- Decanter of Endless Howling
		i(186387),	-- Dormazain's Tenderizer
		i(186407),	-- Hellscream's Requiem
		i(186305),	-- Pauldrons of Tyrannical Defiance
		i(186343),	-- Ragebound Leg Irons
		i(186314),	-- Ruinous Warchief's Shoulderguards
		i(186411),	-- Soulrent Outrider's Recurve
		i(186319),	-- Tormented Shadowcleft Boots
		i(186337),	-- Trenchant Warmonger Treads
	},
	[PAINSMITH] = {
		i(186388),	-- Cruciform Veinripper
		i(186431),	-- Ebonsoul Vise
		i(186392),	-- Exacting Mindslicer
		i(186293),	-- Flameclasp-Scorched Legguards
		i(186369),	-- Guillotine Gauntlets
		i(186333),	-- Hangman's Knotbinders
		i(186323),	-- Leggings of the Screaming Flames
		i(186375),	-- Miniature Breaking Wheel
		i(186282),	-- Sacrificer's Sacramental Cassock
		i(186391),	-- Shadowsteel Demoralizer
		i(186341),	-- Shadowsteel Facecage
		i(186430),	-- Tormented Rack Fragment
	},
	[GUARDIAN] = {
		i(186347),	-- Ancient Colossus Chassis
		i(186413),	-- Directional Meltdown Projector
		i(186317),	-- Disintegration-Proof Waistband
		i(186284),	-- Enigmatic Energy Circuit
		i(186344),	-- Hyperdense Greaves
		i(186416),	-- Infinity's Last Bulwark
		i(186409),	-- Pylon of the Great Purge
		i(186433),	-- Reactive Defense Matrix
		i(186432),	-- Salvaged Fusion Amplifier
		i(186354),	-- Sandals of Sacred Symmetry
		i(186374),	-- Self-Replicating Tissue
		i(186393),	-- Torch of Eternal Knowledge
		i(186363),	-- Unstable Energizer Boots
	},
	[FATESCRIBE] = {
		i(186352),	-- Binding of Dark Destinies
		i(186435),	-- Carved Ivory Keepsake
		i(186340),	-- Conjunction-Forged Chainmail
		i(186330),	-- Cowl of Haunting Precognition
		i(186345),	-- Demigaunts of Predestination
		i(186320),	-- Diviner's Draped Finery
		i(186348),	-- Fateforged Legplates
		i(186335),	-- Fate-Threaded Bindings
		i(186326),	-- Gloves of Forsaken Purpose
		i(186376),	-- Oscillating Ouroboros
		i(186419),	-- Record of Collapsing Realities
		i(186434),	-- Weave of Warped Fates
	},
	[KELTHUZAD] = {
		i(186365),	-- Bands of the Fallen House
		i(186338),	-- Ceremonial Construct Clasp
		i(186331),	-- Elite Aranakk Breeches
		i(186421),	-- Forbidden Necromantic Tome
		i(186324),	-- Frame of the False Margrave
		i(186379),	-- Interplanar Keystone
		i(187542, {	-- Jaithys, the Prison Blade
			["timeline"] = { ADDED_9_1_0, REMOVED_10_0_2_LAUNCH },	-- This Item Doesnt Seem to Drop Anymore -- 13th March 2024 by Cromation
		}),
		i(186410, {	-- Jaithys, the Prison Blade
			-- #if BEFORE 10.0.2
			["description"] = "Only available in the great Vault.",	-- Found as Drop 20.09.2023
			-- #endif
		}),
		i(186406),	-- Maledict Opus
		i(186437),	-- Relic of the Frozen Wastes
		i(186436),	-- Resonant Silver Bell
		i(186322),	-- Sash of Duplicitous Magics
		i(186336),	-- Spaulders of the Crooked Confidant
		i(186350),	-- Valorous Visage of Krexus
		i(186351),	-- Vyraz's Parade Cuffs
		-- Custom per difficulty
		-- 187056 The Devouring Cold
	},
	[SYLVANAS] = {
		i(186439),	-- Dark Ranger's Quiver
		i(186321),	-- Desecrator's Keening Wristwraps
		i(186342),	-- Epaulets of the Master Ranger
		i(186353),	-- Greaves of Haunting Ruination
		i(186417),	-- Guard of the Sundered Defender
		i(186438),	-- Old Warrior's Soul
		i(186349),	-- Spires of Broken Hope
		i(186377),	-- Tarnished Insignia of Quel'Thalas
		i(186325),	-- Veil of the Banshee Queen
		i(186332),	-- Windrunner's Baldric
		i(186334),	-- Witherheart Studded Breastplate
	},
}

------ Zone Drops ------
local ZoneDropLoot = {
	i(186371),	-- Ancient Brokensoul Bands
	i(186362),	-- Bindings of the Subjugated
	i(186367),	-- Bonded Soulsmelt Greaves
	i(186364),	-- Cord of Coerced Spirits
	i(186356),	-- Forlorn Prisoner's Strap
	i(186359),	-- Scoundrel's Harrowed Leggings
	i(186358),	-- Soulcaster's Woven Grips
	i(186373),	-- Towering Shadowghast Greatboots
	i(187252),	-- Ritualist's Spiked Mantle
}

local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

root(ROOTS.Instances, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_1_0 } }, {
	inst(1193, {	-- Sanctum of Domination
		["coord"] = { 69.8, 31.8, THE_MAW },
		["maps"] = {
			1998,	-- Tower of the Damned
			1999,	-- Shadowsteel Foundry
			2000,	-- The Torment Chambers
			2001,	-- Crown of Gorgoa
			2002,	-- Pinnacle of Domination
			2003,	-- Sanctum of Domination
			2004,	-- The Crucible
		},
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(15122, {	-- The Jailer's Vanguard
					crit(52470, {	-- The Tarragrue
						["_encounter"] = { TARRAGRUE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52472, {	-- The Eye of the Jailer
						["_encounter"] = { EYE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52474, {	-- The Nine
						["_encounter"] = { NINE, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(15123, {	-- The Dark Bastille
					crit(52476, {	-- Remnant of Ner'zhul
						["_encounter"] = { NERZHUL, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52478, {	-- Soulrender Dormazain
						["_encounter"] = { DORMAZAIN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52480, {	-- Painsmith Raznal
						["_encounter"] = { PAINSMITH, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(15124, {	-- Shackles of Fate
					crit(52482, {	-- Guardian of the First Ones
						["_encounter"] = { GUARDIAN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52484, {	-- Fatescribe Roh-Kalo
						["_encounter"] = { FATESCRIBE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52486, {	-- Kel'Thuzad
						["_encounter"] = { KELTHUZAD, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(15125, {	-- The Reckoning
					crit(52488, {	-- Sylvanas Windrunner
						["_encounter"] = { SYLVANAS, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(15126, {	-- Sanctum of Domination
					crit(52471, {	-- The Tarragrue
						["_encounter"] = { TARRAGRUE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52473, {	-- The Eye of the Jailer
						["_encounter"] = { EYE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52475, {	-- The Nine
						["_encounter"] = { NINE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52477, {	-- Remnant of Ner'zhul
						["_encounter"] = { NERZHUL, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52479, {	-- Soulrender Dormazain
						["_encounter"] = { DORMAZAIN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52481, {	-- Painsmith Raznal
						["_encounter"] = { PAINSMITH, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52483, {	-- Guardian of the First Ones
						["_encounter"] = { GUARDIAN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52485, {	-- Fatescribe Roh-Kalo
						["_encounter"] = { FATESCRIBE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52487, {	-- Kel'Thuzad
						["_encounter"] = { KELTHUZAD, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(52489, {	-- Sylvanas Windrunner
						["_encounter"] = { SYLVANAS, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(15127, {	-- Heroic: Sanctum of Domination
					crit(52344, {	-- The Tarragrue
						["_encounter"] = { TARRAGRUE, DIFFICULTY.RAID.HEROIC },
					}),
					crit(52345, {	-- The Eye of the Jailer
						["_encounter"] = { EYE, DIFFICULTY.RAID.HEROIC },
					}),
					crit(52346, {	-- The Nine
						["_encounter"] = { NINE, DIFFICULTY.RAID.HEROIC },
					}),
					crit(52348, {	-- Remnant of Ner'zhul
						["_encounter"] = { DORMAZAIN, DIFFICULTY.RAID.HEROIC },
					}),
					crit(52347, {	-- Soulrender Dormazain
						["_encounter"] = { NERZHUL, DIFFICULTY.RAID.HEROIC },
					}),
					crit(52349, {	-- Painsmith Raznal
						["_encounter"] = { PAINSMITH, DIFFICULTY.RAID.HEROIC },
					}),
					crit(52350, {	-- Guardian of the First Ones
						["_encounter"] = { GUARDIAN, DIFFICULTY.RAID.HEROIC },
					}),
					crit(52351, {	-- Fatescribe Roh-Kalo
						["_encounter"] = { FATESCRIBE, DIFFICULTY.RAID.HEROIC },
					}),
					crit(52352, {	-- Kel'Thuzad
						["_encounter"] = { KELTHUZAD, DIFFICULTY.RAID.HEROIC },
					}),
					crit(52353, {	-- Sylvanas Windrunner
						["_encounter"] = { SYLVANAS, DIFFICULTY.RAID.HEROIC },
					}),
				}),
				ach(15128, {	-- Mythic: Sanctum of Domination
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						15112,	-- Mythic: The Tarragrue
						15113,	-- Mythic: The Eye of the Jailer
						15114,	-- Mythic: The Nine
						15115,	-- Mythic: Remnant of Ner'zhul
						15116,	-- Mythic: Soulrender Dormazain
						15117,	-- Mythic: Painsmith Raznal
						15118,	-- Mythic: Guardian of the First Ones
						15119,	-- Mythic: Fatescribe Roh-Kalo
						15120,	-- Mythic: Kel'Thuzad
						15121,	-- Mythic: Sylvanas Windrunner
					}},
				}),
				ach(15130, {	-- Glory of the Dominant Raider
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						14998,	-- Name A Better Duo, I'll Wait
						15065,	-- Eye Wish You Were Here
						15003,	-- To the Nines
						15058,	-- I Used to Bullseye Deeprun Rats Back Home
						15105,	-- Tormentor's Tango
						15131,	-- Whack-A-Soul
						15132,	-- Knowledge is Power
						15040,	-- Flawless Fate
						15108,	-- Together Forever
						15133,	-- This World is a Prism
					}},
					["groups"] = {
						i(186653),	-- Hand of Hrestimorak (MOUNT!)
					},
				}),
				ach(15191, {	-- Rae'shalare, Death's Whisper
					["provider"] = { "i", 186414 },
					["classes"] = { HUNTER },
				}),
				ach(15110),		-- Dominating the Catwalk
				-- Fated
				ach(15667,	-- Fate of Domination
				bubbleDownSelf({ ["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH } }, {
					crit(53547, {	-- The Tarragrue
						["_encounter"] = { TARRAGRUE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53548, {	-- The Eye of the Jailer
						["_encounter"] = { EYE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53549, {	-- The Nine
						["_encounter"] = { NINE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53550, {	-- Remnant of Ner'zhul
						["_encounter"] = { NERZHUL, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53551, {	-- Soulrender Dormazain
						["_encounter"] = { DORMAZAIN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53552, {	-- Painsmith Raznal
						["_encounter"] = { PAINSMITH, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53553, {	-- Guardian of the First Ones
						["_encounter"] = { GUARDIAN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53554, {	-- Fatescribe Roh-Kalo
						["_encounter"] = { FATESCRIBE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53555, {	-- Kel'Thuzad
						["_encounter"] = { KELTHUZAD, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(53556, {	-- Sylvanas Windrunner
						["_encounter"] = { SYLVANAS, DIFFICULTY.RAID.MULTI.ALL },
					}),
				})),
				ach(15668,	-- Heroic: Fate of Domination
				bubbleDownSelf({ ["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH } }, {
					crit(53558, {	-- The Tarragrue
						["_encounter"] = { TARRAGRUE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53559, {	-- The Eye of the Jailer
						["_encounter"] = { EYE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53560, {	-- The Nine
						["_encounter"] = { NINE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53612, {	-- Soulrender Dormazain
						["_encounter"] = { DORMAZAIN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53562, {	-- Remnant of Ner'zhul
						["_encounter"] = { NERZHUL, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53563, {	-- Painsmith Raznal
						["_encounter"] = { PAINSMITH, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53564, {	-- Guardian of the First Ones
						["_encounter"] = { GUARDIAN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53565, {	-- Fatescribe Roh-Kalo
						["_encounter"] = { FATESCRIBE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53566, {	-- Kel'Thuzad
						["_encounter"] = { KELTHUZAD, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(53567, {	-- Sylvanas Windrunner
						["_encounter"] = { SYLVANAS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				})),
				ach(15669,	-- Mythic: Fate of Domination
				bubbleDownSelf({ ["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH } }, {
					crit(53570, {	-- The Tarragrue
						["_encounter"] = { TARRAGRUE, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53571, {	-- The Eye of the Jailer
						["_encounter"] = { EYE, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53572, {	-- The Nine
						["_encounter"] = { NINE, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53561, {	-- Soulrender Dormazain
						["_encounter"] = { DORMAZAIN, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53573, {	-- Remnant of Ner'zhul
						["_encounter"] = { NERZHUL, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53574, {	-- Painsmith Raznal
						["_encounter"] = { PAINSMITH, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53575, {	-- Guardian of the First Ones
						["_encounter"] = { GUARDIAN, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53576, {	-- Fatescribe Roh-Kalo
						["_encounter"] = { FATESCRIBE, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53577, {	-- Kel'Thuzad
						["_encounter"] = { KELTHUZAD, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(53578, {	-- Sylvanas Windrunner
						["_encounter"] = { SYLVANAS, DIFFICULTY.RAID.MYTHIC },
					}),
				})),
					-- Guild Achievements
				ach(15182),		-- Sanctum of Domination Guild Run
				ach(15183),		-- Heroic: Sanctum of Domination Guild Run
				ach(15184),		-- Mythic: Sylvanas Windrunner Guild Run
			}),
			CommonBossDrops({
				i(186671),	-- Vantus Rune Technique: Sanctum of Domination (RECIPE!)
				i(186599),	-- Stygian Ember
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				n(WORLD_QUESTS, {
					q(66694, {	-- Tempting Fate: Sanctum of Domination
						["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
						["isWorldQuest"] = true,
					}),
				}),
				BossOnly(TARRAGRUE, {
					i(182750),	-- Carnivorous Stalkers
					i(182610),	-- Ferocious Appetite
					i(182113),	-- Fleeting Wind
					i(180932),	-- Fueled by Violence
					i(183481),	-- Incessant Hunter
					i(181376),	-- Inner Fury
					i(182344),	-- Lost in Darkness
					i(182144),	-- Nature's Focus
					i(182139),	-- Rabid Shadows
					i(186599),	-- Stygian Ember
					i(183504),	-- Well-Placed Steel
					i(182456),	-- Wrench Evil
				}),
				BossOnly(EYE, {
					i(186554),	-- Eye of Allseeing (PET!)
					i(181738),	-- Artifice of the Archmage
					i(181963),	-- Blood Bond
					i(182478),	-- Corrupting Leer
					i(182462),	-- Expurgation
					i(183500),	-- Fade to Nothing
					i(181840),	-- Light's Inspiration
					i(182441),	-- Marksman's Advantage
					i(180896),	-- Safeguard
					i(181640),	-- Tumbling Technique
					i(183486),	-- Well-Honed Instincts
				}),
				BossOnly(NINE, {
					i(186656),	-- Sanctum Gloomcharger (MOUNT!)
					i(182657),	-- Deadly Chain
					i(181845),	-- Exaltation
					i(182340),	-- Fel Celerity
					i(181736),	-- Flame Accretion
					i(182135),	-- Focused Lightning
					i(183477),	-- Precise Alignment
					i(181641),	-- Rising Sun Revival
					i(182753),	-- Royal Decree
					i(182384),	-- Serrated Glaive
					i(182201),	-- Unleashed Frenzy
				}),
				BossOnly(NERZHUL, {
					i(183508),	-- Ambidexterity
					i(181705),	-- Celestial Effervescence
					i(182206),	-- Convocation of the Dead
					i(182752),	-- Fel Commando
					i(182464),	-- Harmony of the Tortollan
					i(182468),	-- Mortal Combo
					i(181842),	-- Power Unto Others
					i(181389),	-- Shivering Core
					i(182111),	-- Spiritual Resonance
					i(183464),	-- Tough as Bark
				}),
				BossOnly(DORMAZAIN, {
					i(186558),	-- Irongrasp (PET!)
					i(180844),	-- Brutal Vitality
					i(181834),	-- Chilled Resilience
					i(183076),	-- Diabolic Bloodstone
					i(183489),	-- Flash of Clarity
					i(181467),	-- Flow of Time
					i(181466),	-- Grounding Breath
					i(181847),	-- Lasting Spirit
					i(182448),	-- Light's Barding
					i(182317),	-- Shattered Restoration
					i(183513),	-- Stiletto Staccato
					i(182107),	-- Vital Accretion
				}),
				BossOnly(PAINSMITH, {
					i(182203),	-- Debilitating Malady
					i(182754),	-- Duplicitous Havoc
					i(182582),	-- Enkindled Spirit
					i(183396),	-- Flame Infusion
					i(181506),	-- Master Flame
					i(183496),	-- Nimble Fingers
					i(182125),	-- Pyroclastic Shock
					i(182604),	-- Roaring Fire
					i(183476),	-- Stellar Inspiration
					i(181709),	-- Unnerving Focus
					i(181465),	-- Xuen's Bond
				}),
				BossOnly(GUARDIAN, {
					i(187507),	-- Adaptive Armor Fragment
					i(183132),	-- Echoing Call
					i(181735),	-- Hack and Slash
					i(182145),	-- Heavy Rainfall
					i(182133),	-- Insatiable Appetite
					i(183487),	-- Layered Mane
					i(181827),	-- Move with Grace
					i(183503),	-- Poisoned Katar
					i(181505),	-- Resplendent Mist
					i(182307),	-- Shielding Words
					i(181769),	-- Tempest Barrier
				}),
				BossOnly(FATESCRIBE, {
					i(181509),	-- Arcane Prodigy
					i(182649),	-- Brutal Projectiles
					i(182470),	-- Demonic Momentum
					i(182324),	-- Felfire Haste
					i(183469),	-- Front of the Pack
					i(182684),	-- Resolute Defender
					i(183509),	-- Sleight of Hand
					i(181867),	-- Swift Penitence
					i(181624),	-- Swift Transference
					i(182108),	-- Thunderous Paws
				}),
				BossOnly(KELTHUZAD, {
					i(186550),	-- Mawsworn Minion (PET!)
					i(182136),	-- Chilled to the Core
					i(181698),	-- Cryo-Freeze
					i(183202),	-- Deadly Tandem
					i(181943),	-- Eradicating Blow
					i(183490),	-- Floral Recycling
					i(182141),	-- Holy Oration
					i(180847),	-- Inspiring Presence
					i(183499),	-- Quick Decisions
					i(182675),	-- Untempered Dedication
					i(182747),	-- Withering Bolt
				}),
				BossOnly(SYLVANAS, {
					i(180933),	-- Ashen Juggernaut
					i(183483),	-- Carnivorous Instinct
					i(183511),	-- Deeper Daggers
					i(186398),	-- Edge of Night
					i(181740),	-- Evasive Stride
					i(182385),	-- Growing Inferno
					i(182772),	-- Infernal Brand
					i(182208),	-- Lingering Plague
					i(182138),	-- Mind Devourer
					i(182476),	-- Resilience of the Hunter
					i(182127),	-- Shake the Foundations
					i(182559),	-- Templar's Vindication
					i(181383),	-- Unrelenting Cold
				}),
			}),
			-- #if AFTER 10.1.5
			Difficulty(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["crs"] = { 205959 },	-- Ta'elfar <Trader of Histories>
				["coord"] = { 41.3, 71.0, ORIBOS },
			}),
			-- #endif
			Difficulty(DIFFICULTY.RAID.LFR).AddGroups(bubbleDown({ ["timeline"] = { ADDED_9_1_0, REMOVED_10_0_2_LAUNCH, ADDED_10_1_5 } }, {
				ZoneDrops(),
				header(HEADERS.Achievement, 15122, {	-- The Jailer's Vanguard
					Boss(TARRAGRUE),
					Boss(EYE),
					Boss(NINE),
				}),
				header(HEADERS.Achievement, 15123, {	-- The Dark Bastille
					Boss(NERZHUL),
					Boss(DORMAZAIN),
					Boss(PAINSMITH),
				}),
				header(HEADERS.Achievement, 15124, {	-- Shackles of Fate
					Boss(GUARDIAN),
					Boss(FATESCRIBE),
					Boss(KELTHUZAD, {
						i(187056, {	-- The Devouring Cold
							i(187056, {	-- The Devouring Cold
								["bonusID"] = 7723,	-- Adjusted weapon [LFR]
							}),
						}),
					}),
				}),
				header(HEADERS.Achievement, 15125, {	-- The Reckoning
					Boss(SYLVANAS),
				}),
			})),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(TARRAGRUE, {
					ach(14998),	-- Name A Better Duo, I'll Wait
				}),
				BossOnly(EYE, {
					ach(15065, {	-- Eye Wish You Were Here
						crit(52128),	-- All players have Photoflash!
						crit(52129),	-- Eye of the Jailer has Photoflash!
					}),
				}),
				BossOnly(NINE, {
					ach(15003),	-- To the Nines
				}),
				BossOnly(NERZHUL, {
					ach(15058),	-- I Used to Bullseye Deeprun Rats Back Home
				}),
				BossOnly(DORMAZAIN, {
					ach(15105),	-- Tormentor's Tango
				}),
				BossOnly(PAINSMITH, {
					ach(15131),	-- Whack-A-Soul
				}),
				BossOnly(GUARDIAN, {
					ach(15132),	-- Knowledge is Power
				}),
				BossOnly(FATESCRIBE, {
					ach(15040),	-- Flawless Fate
				}),
				BossOnly(KELTHUZAD, {
					ach(15108),	-- Together Forever
				}),
				BossOnly(SYLVANAS, {
					ach(15133),	-- This World is a Prism
					i(186414),	-- Rae'shalare, Death's Whisper
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
				n(QUESTS, {
					q(64597, {	-- Sanctum of Domination - Damned If You Don't [N]
						["provider"] = { "n", 178592 },	-- Highlord Bolvar Fordragon
						["groups"] = {
							i(187529),	-- Phylactery Shard (QI!)
						},
					}),
				}),
				ZoneDrops(),
				Boss(TARRAGRUE),
				Boss(EYE),
				Boss(NINE),
				Boss(NERZHUL),
				Boss(DORMAZAIN),
				Boss(PAINSMITH),
				Boss(GUARDIAN),
				Boss(FATESCRIBE),
				Boss(KELTHUZAD, {
					i(187056, {	-- The Devouring Cold
						i(187056, {	-- The Devouring Cold
							["bonusID"] = 7720,	-- Adjusted weapon [Normal]
						}),
					}),
				}),
				Boss(SYLVANAS, {
					i(199181, {	-- Tips of Penitent Steel (Upgrade Legendary)(Fated)
						["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(TARRAGRUE),
				BossOnly(EYE),
				BossOnly(NINE),
				BossOnly(NERZHUL),
				BossOnly(DORMAZAIN),
				BossOnly(PAINSMITH),
				BossOnly(GUARDIAN),
				BossOnly(FATESCRIBE),
				BossOnly(KELTHUZAD),
				BossOnly(SYLVANAS, {
					ach(15134, {["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 }}),	-- Ahead of the Curve: Sylvanas Windrunner
					ig(182177),	-- Owlcat Soul (SS!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
				n(QUESTS, {
					q(64598, {	-- Sanctum of Domination - Damned If You Don't [H]
						["provider"] = { "n", 178592 },	-- Highlord Bolvar Fordragon
						["groups"] = {
							i(187530),	-- Phylactery Shard (QI!)
						},
					}),
				}),
				ZoneDrops(),
				Boss(TARRAGRUE),
				Boss(EYE),
				Boss(NINE),
				Boss(NERZHUL),
				Boss(DORMAZAIN),
				Boss(PAINSMITH),
				Boss(GUARDIAN),
				Boss(FATESCRIBE),
				Boss(KELTHUZAD, {
					i(187056, {	-- The Devouring Cold
						i(187056, {	-- The Devouring Cold
							["bonusID"] = 7724,	-- Adjusted weapon [Heroic]
						}),
					}),
				}),
				Boss(SYLVANAS, {
					i(187592),	-- Wraithwisp Sinew (Upgrade Legendary)
					i(199182, {	-- Fractured Soulsight (Upgrade Legendary) (Fated)
						["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				n(QUESTS, {
					q(64599, {	-- Sanctum of Domination - Damned If You Don't [M]
						["provider"] = { "n", 178592 },	-- Highlord Bolvar Fordragon
						["groups"] = {
							i(187531),	-- Phylactery Shard (QI!)
						},
					}),
				}),
				ZoneDrops(),
				Boss(TARRAGRUE, {
					ach(15112),	-- Mythic: The Tarragrue
				}),
				Boss(EYE, {
					ach(15113),	-- Mythic: The Eye of the Jailer
					i(186555),	-- Eye of Extermination (PET!)
				}),
				Boss(NINE, {
					ach(15114),	-- Mythic: The Nine
				}),
				Boss(NERZHUL, {
					ach(15115),	-- Mythic: Remnant of Ner'zhul
				}),
				Boss(DORMAZAIN, {
					ach(15116),	-- Mythic: Soulrender Dormazain
				}),
				Boss(PAINSMITH, {
					ach(15117),	-- Mythic: Painsmith Raznal
				}),
				Boss(GUARDIAN, {
					ach(15118),	-- Mythic: Guardian of the First Ones
				}),
				Boss(FATESCRIBE, {
					ach(15119),	-- Mythic: Fatescribe Roh-Kalo
				}),
				Boss(KELTHUZAD, {
					ach(15120),	-- Mythic: Kel'Thuzad
					i(187056, {	-- The Devouring Cold
						i(187056, {	-- The Devouring Cold
							["bonusID"] = 7725,	-- Adjusted weapon [Mythic]
						}),
					}),
				}),
				Boss(SYLVANAS, {
					ach(15121, {	-- Mythic: Sylvanas Windrunner
						title(447),	-- Breaker of Chains
					}),
					ach(15197, bubbleDownSelf({["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 } }, {	-- Hall of Fame: Sylvanas (Alliance)
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							title(448),	-- <Name>, Famed Bane of the Banshee Queen
						},
					})),
					ach(15196, bubbleDownSelf({["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 } }, {	-- Hall of Fame: Sylvanas (Horde)
						["races"] = HORDE_ONLY,
						["groups"] = {
							title(448),	-- <Name>, Famed Bane of the Banshee Queen
						},
					})),
					ach(15135, {["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 }}),	-- Cutting Edge: Sylvanas Windrunner
					ig(186642),	-- Vengeance (MOUNT!)
					i(187593),	-- Ethereal Fletching (Upgrade Legendary)
					i(199183, {	-- Condemned Queen's Grip (Upgrade Legendary)(fated)
						["timeline"] = { ADDED_9_2_5, REMOVED_10_0_2_LAUNCH },
					}),
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {
	inst(1193, {	-- Sanctum of Domination
		-- q(63074),	-- Stygian ember loot >-- seems a too low number for this.
		q(64604),	-- Stygian Ember from Bonesteel [] (Normal / Heroic)
		q(64616),	-- Stygian Ember from Bonesteel (Normal / Heroic)
		q(64674),	-- 1x Styigan Ember from Bonesteel (LFR)
		q(64683),	-- Stygian Ember from Bonesteel (Normal)
		q(64617),	-- Stygian Ember from Bonesteel (Heroic)
		q(64684),	-- Stygian Ember from Bonesteel (Heroic)
		q(64618),	-- Bonesteel (Mythic)
		q(64685),	-- Bonesteel (Mythic)
		q(70491),	-- Bonesteel - Fated - Rep/Flux
		q(70492),	-- Bonesteel - Fated - Rep/Flux
		q(70725),	-- Bonesteel - Fated - ?
		q(64603),	-- Stygian Ember from Soulember [176940] (Normal / Heroic)
		q(64613),	-- Stygian Ember from Soulember (Normal / Heroic)
		q(64673),	-- 1x Styigan Ember from Soulember (LFR)
		q(64680),	-- Stygian Ember from Soulember (Normal)
		q(64614),	-- Stygian Ember from Soulember (Heroic)
		q(64681),	-- Stygian Ember from Soulember (Heroic)
		q(64615),	-- Soulember (Mythic)
		q(64682),	-- Soulember (Mythic)
		q(70499),	-- Soulember - Fated - Rep/Flux
		q(70500),	-- Soulember - Fated - Rep/Flux
		q(70729),	-- Soulember - Fated - ?
		q(64602),	-- Stygian Ember from Hollowsoul [176879] (Normal / Heroic)
		q(64610),	-- Stygian Ember from Hollowsoul (Normal / Heroic)
		q(64677),	-- Stygian Ember from Hollowsoul (Normal)
		q(64611),	-- Stygian Ember from Hollowsoul (Heroic)
		q(64678),	-- Stygian Ember from Hollowsoul (Heroic)
		q(64612),	-- Hollowsoul (Mythic)
		q(64679),	-- Hollowsoul (Mythic)
		q(70495),	-- Hollowsoul - Fated - Rep/Flux
		q(70496),	-- Hollowsoul - Fated - Rep/Flux
		q(70727),	-- Hollowsoul - Fated - ?
		q(64676),	-- Borr-Gahn (LFR)
		q(64606),	-- Stygian Ember from Borr-Gahn [178824] (Heroic)
		q(64622),	-- Stygian Ember from Borr-Gahn (Heroic)
		q(64623),	-- Stygian Ember from Borr-Gahn (Heroic)
		q(64689),	-- Stygian Ember from Borr-Gahn (Normal)
		q(64690),	-- Stygian Ember from Borr-Gahn (Heroic)
		q(64624),	-- Borr-Gahn (Mythic)
		q(64691),	-- Borr-Gahn (Mythic)
		q(70493),	-- Borr-Gahn - Fated - Rep/Flux
		q(70494),	-- Borr-Gahn - Fated - Rep/Flux
		q(70726),	-- Borr-Gahn - Fated - ?
		q(64675),	-- Stygian Ember from Screamspike (LFR)
		q(64605),	-- Stygian Ember from Screamspike (Normal / Heroic)
		q(64619),	-- Stygian Ember from Screamspike (Normal / Heroic)
		q(64686),	-- Stygian Ember from Screamspike (Normal)
		q(64620),	-- Stygian Ember from Screamspike (Heroic)
		q(64687),	-- Stygian Ember from Screamspike (Heroic)
		q(64621),	-- Screamspike (Mythic)
		q(64688),	-- Screamspike (Mythic)
		q(70497),	-- Screamspike - Fated - Rep/Flux
		q(70498),	-- Screamspike - Fated - Rep/Flux
		q(70728),	-- Screamspike - Fated - ?
		q(64326),	-- The Tarragrue (Normal / Heroic) (Heroic-Week 2)
		q(64327),	-- The Tarragrue (Normal / Heroic) (Heroic-Week 2)
		q(64328),	-- The Tarragrue (Heroic) (Heroic-Week 2)
		q(64629),	-- The Tarragrue (Heroic-Week 2)
		q(64653),	-- The Tarragrue (Normal / Heroic) (Heroic-Week 2)
		q(64329),	-- The Tarragrue (Mythic)
		q(70471),	-- The Tarragrue - Fated - Rep/Flux
		q(70472),	-- The Tarragrue - Fated - Rep/Flux
		q(64330),	-- Eye of the Jailer (Normal / Heroic) (Heroic-Week 2)
		q(64331),	-- Eye of the Jailer (Normal / Heroic) (Heroic-Week 2)
		q(64332),	-- Eye of the Jailer (Heroic-Week 2)
		q(64333),	-- Eye of the Jailer (Mythic)
		q(64630),	-- Eye of the Jailer (Normal / Heroic) (Heroic-Week 2)
		q(64657),	-- Eye of the Jailer (Normal / Heroic) (Heroic-Week 2)
		q(70473),	-- Eye of the Jailer - Fated - Rep/Flux
		q(70474),	-- Eye of the Jailer - Fated - Rep/Flux
		q(64334),	-- The Nine (Normal / Heroic) (Heroic-Week 2)
		q(64474),	-- The Nine (Normal / Heroic) (Heroic-Week 2)
		q(64475),	-- The Nine (Heroic) (Heroic-Week 2)
		q(64631),	-- The Nine (Normal / Heroic) (Heroic-Week 2)
		q(64658),	-- The Nine (Normal / Heroic) (Heroic-Week 2)
		q(64476),	-- The Nine (Mythic)
		q(70475),	-- The Nine - Fated - Rep/Flux
		q(70476),	-- The Nine - Fated - Rep/Flux
		q(64481),	-- Soulrender Dormazain (Normal / Heroic) (Heroic-Week 2)
		q(64482),	-- Soulrender Dormazain (Normal / Heroic) (Heroic-Week 2)
		q(64483),	-- Soulrender Dormazain (Heroic) (Heroic-Week 2)
		q(64633),	-- Soulrender Dormazain (Normal / Heroic) (Heroic-Week 2)
		q(64660),	-- Soulrender Dormazain (Normal / Heroic) (Heroic-Week 2)
		q(64484),	-- Soulrender Dormazain (Mythic)
		q(70479),	-- Soulrender Dormazain - Fated - Rep/Flux
		q(70480),	-- Soulrender Dormazain - Fated - Rep/Flux
		q(64608),	-- Garrosh cinematic (Normal / Heroic) (spellID 358664)
		q(64477),	-- Remnant of Ner'zhul (Normal / Heroic) (Heroic-Week 2)
		q(64478),	-- Remnant of Ner'zhul (Normal / Heroic) (Heroic-Week 2)
		q(64479),	-- Remnant of Ner'zhul (Heroic) (Heroic-Week 2)
		q(64632),	-- Remnant of Ner'zhul (Normal / Heroic) (Heroic-Week 2)
		q(64659),	-- Remnant of Ner'zhul (Normal / Heroic) (Heroic-Week 2)
		q(64480),	-- Remnant of Ner'zhul (Mythic)
		q(70477),	-- Remnant of Ner'zhul - Fated - Rep/Flux
		q(70478),	-- Remnant of Ner'zhul - Fated - Rep/Flux
		q(64672),	-- Painsmith Raznal (LFR)/LFR Wing 2 Completed
		q(64485),	-- Painsmith Raznal (Normal / Heroic) (Heroic-Week 2)
		q(64486),	-- Painsmith Raznal (Normal / Heroic) (Heroic-Week 2)
		q(64487),	-- Painsmith Raznal (Heroic) (Heroic-Week 2)
		q(64634),	-- Painsmith Raznal (Normal / Heroic) (Heroic-Week 2)
		q(64661),	-- Painsmith Raznal (Normal / Heroic) (Heroic-Week 2)
		q(64488),	-- Painsmith Raznal (Mythic)
		q(70481),	-- Painsmith Raznal - Fated - Rep/Flux
		q(70482),	-- Painsmith Raznal - Fated - Rep/Flux
		q(64489),	-- Guardian of the First Ones (Normal / Heroic) (Heroic-Week 2)
		q(64490),	-- Guardian of the First Ones (Normal / Heroic) (Heroic-Week 2)
		q(64491),	-- Guardian of the First Ones (Heroic) (Heroic-Week 2)
		q(64635),	-- Guardian of the First Ones (Normal / Heroic) (Heroic-Week 2)
		q(64662),	-- Guardian of the First Ones (Normal / Heroic) (Heroic-Week 2)
		q(64492),	-- Guardian of the First Ones (Mythic)
		q(70483),	-- Guardian of the First Ones - Fated - Rep/Flux
		q(70484),	-- Guardian of the First Ones - Fated - Rep/Flux
		q(64493),	-- Fatescribe Roh-Kalo (Normal)? / (Heroic-Week 2)
		q(64494),	-- Fatescribe Roh-Kalo (Normal)? / (Heroic-Week 2)
		q(64495),	-- Fatescribe Roh-Kalo (Heroic)
		q(64496),	-- Fatescribe Roh-Kalo (Mythic)
		q(64636),	-- Fatescribe Roh-Kalo (Normal)? / (Heroic-Week 2)
		q(64663),	-- Fatescribe Roh-Kalo (Normal)? / (Heroic-Week 2)
		q(70485),	-- Fatescribe Roh-Kalo - Fated - Rep/Flux
		q(70486),	-- Fatescribe Roh-Kalo - Fated - Rep/Flux
		q(64497),	-- Kel'Thuzad (Normal)?
		q(64498),	-- Kel'Thuzad (Normal)?
		q(64499),	-- Kel'Thuzad (Heroic)
		q(64637),	-- Kel'Thuzad (Normal)?
		q(64664),	-- Kel'Thuzad (Normal)?
		q(64500),	-- Kel'Thuzad (Mythic)
		q(70487),	-- Kel'Thuzad - Fated - Rep/Flux
		q(70488),	-- Kel'Thuzad - Fated - Rep/Flux
		q(64501),	-- Sylvanas Windrunner (Normal)?
		q(64502),	-- Sylvanas Windrunner (Normal)?
		q(64638),	-- Sylvanas Windrunner (Normal)?
		q(64665),	-- Sylvanas Windrunner (Normal)?
		q(64503),	-- Sylvanas Windrunner (Heroic)
		q(64504),	-- Sylvanas Windrunner (Mythic)
		q(70489),	-- Sylvanas Windrunner - Fated - Rep/Flux
		q(70490),	-- Sylvanas Windrunner - Fated - Rep/Flux
		q(64707),	-- Sylvanas Windrunner Cinematic?
	}),
})));
