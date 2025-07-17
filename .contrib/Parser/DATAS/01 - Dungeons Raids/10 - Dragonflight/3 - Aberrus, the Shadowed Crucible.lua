-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
------ Encounter Constants ------
local KAZZARA = 2522;
local AMALGAMATION = 2529;
local EXPERIMENTS = 2530;
local ASSAULT = 2524;
local RASHOK = 2525;
local ZSKARN = 2532;
local MAGMORAX = 2527;
local NELTHARION = 2523;
local SARKARETH = 2520;

local ABERRUS_THE_SHADOWED_CRUCIBLE = 2403;

local SymRaidAberrus = function(ClassID, DiffID)
	return {{"sub","instance_tier",1208,DiffID,ClassID}};
end

------ EncounterToCRS ------
local EncounterToCRS = {
	[KAZZARA] = { 201261 },	-- Kazzara, the Hellforged
	[AMALGAMATION] = {
		201774,	-- Essence of Shadow
		201773,	-- Eternal Blaze
		201934,	-- Shadowflame Amalgamation
	},
	[EXPERIMENTS] = {
		200912,	-- Neldris <Experiment 4>
		200918,	-- Rionthus <Experiment 328>
		200913,	-- Thadrion <Experiment 147>
	},
	[ASSAULT] = {
		202791,	-- Ignara
		199659,	-- Warlord Kagni
	},
	[RASHOK] = { 201320 },	-- Rashok, the Elder
	[ZSKARN] = {
		202637,	-- Zskarn <the Vigilant Steward>
		202375, -- Zskarn <the Vigilant Steward>
	},
	[MAGMORAX] = { 201579 },	-- Magmorax
	[NELTHARION] = { 203133, 201668 },	-- Echo of Neltharion
	[SARKARETH] = {
		203284,		-- Scalecommander Sarkareth
		201754,		-- Scalecommander Sarkareth
	},
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[KAZZARA] = {
		i(202594),	-- Bloodstench Skinguards
		i(202576),	-- Dreadrift Stompers
		i(202616),	-- Enduring Dreadplate
		i(202573),	-- Etchings of the Captive Revenant
		i(202583),	-- Grasps of Welded Anguish
		i(202557),	-- Hellsteel Mutilator
		i(202559),	-- Infernal Shadelance
		i(202590),	-- Kazzara's Grafted Companion
		i(202600),	-- Reanimator's Wicked Cassock
		i(202589),	-- Sash of Abandoned Hope
		i(202612),	-- Screaming Black Dragonscale
		i(202602),	-- Violent Gravemask
	},
	[AMALGAMATION] = {
		i(202579),	-- Attendant's Concocting Cover
		i(202598),	-- Cuirass of Meticulous Mixture
		i(202617),	-- Elementium Pocket Anvil
		i(202572),	-- Entropic Convergence Loop
		i(202605),	-- Gloomfused Chemistry Belt
		i(202563),	-- Obsidian Stirring Staff
		i(202568),	-- Scholar's Thinking Cudgel
		i(202595),	-- Shoulderplates of Planar Isolation
		i(202596),	-- Tassets of Blistering Twilight
		i(202593),	-- Unstable Vial Handlers
		i(202615),	-- Vessel of Searing Shadow
	},
	[EXPERIMENTS] = {
		i(202624, {	-- Dreadful Mixing Fluid
			i(202462),	-- Lingering Phantom's Gauntlets
			i(202525),	-- Kinslayer's Bloodstained Grips
			i(202534),	-- Grips of the Sinister Savant
		}),
		i(202625, {	-- Mystic Mixing Fluid
			i(202516),	-- Handguards of the Autumn Blaze
			i(202480),	-- Ashen Predator's Skinners
			i(202552),	-- Underlight Conjurer's Gloves
		}),
		i(202626, {	-- Venerated Mixing Fluid
			i(202453),	-- Heartfire Sentinel's Protectors
			i(202543),	-- Grasp of the Furnace Seraph
			i(202471),	-- Knuckles of the Cinderwolf
		}),
		i(202638, {	-- Zenith Mixing Fluid
			i(202489),	-- Claws of Obsidian Secrets
			i(202507),	-- Fists of the Vermillion Forge
			i(202498),	-- Lurking Specter's Handgrips
			i(202444),	-- Handguards of the Onyx Crucible
		}),
		i(202652),	-- Discarded Creation's Restraint
		i(202588),	-- Exacting Augmenter's Sabatons
		i(202571),	-- Experiment 1, Kitewing
		i(202582),	-- Manacles of Cruel Progress
		i(202575),	-- Neldris's Sinewy Scapula
		i(203729),	-- Ominous Chromatic Essence
		i(202566),	-- Rionthus's Bladed Visage
		i(204318),	-- Thadrion's Erratic Arcanotrode
	},
	[ASSAULT] = {
		i(202604),	-- Boulder-Tossing Bands
		i(202607),	-- Brutal Dragonslayer's Trophy
		i(202574),	-- Flamebound Huntsman's Footpads
		i(202591),	-- Gatecrasher Giant's Coif
		i(202618),	-- Kagni's Scorching Talisman
		i(202580),	-- Mystic's Scalding Frame
		i(202597),	-- Obsidian Guard's Chausses
		i(202578),	-- Phoenix-Plume Gloves
		i(202577),	-- Seal of the Defiant Hordes
		i(204279),	-- Wallclimber's Incursion Hatchet
		i(202586),	-- Warlord's Volcanic Vest
		i(202613),	-- Zaqali Chaos Grapnel
	},
	[RASHOK] = {
		i(202634, {	-- Dreadful Cooling Fluid
			i(202460),	-- Lingering Phantom's Schynbalds
			i(202523),	-- Kinslayer's Legguards
			i(202532),	-- Leggings of the Sinister Savant
		}),
		i(202635, {	-- Mystic Cooling Fluid
			i(202514),	-- Pants of the Autumn Blaze
			i(202478),	-- Ashen Predator's Poleyns
			i(202550),	-- Underlight Conjurer's Trousers
		}),
		i(202636, {	-- Venerated Cooling Fluid
			i(202451),	-- Heartfire Sentinel's Faulds
			i(202541),	-- Breeches of the Furnace Seraph
			i(202469),	-- Braies of the Cinderwolf
		}),
		i(202640, {	-- Zenith Cooling Fluid
			i(202487),	-- Chausses of Obsidian Secrets
			i(202505),	-- Pantaloons of the Vermillion Forge
			i(202496),	-- Lurking Specter's Tights
			i(202442),	-- Legplates of the Onyx Crucible
		}),
		i(204319),	-- Bloodfire Extraction Conduit
		i(202569),	-- Djaruun, Pillar of the Elder Flame
		i(202655),	-- Elder's Volcanic Binding
		i(202614),	-- Rashok's Molten Heart
		i(202603),	-- Sandals of Ancient Fury
		i(202659),	-- Shackles of the Shadowed Bastille
		i(204466),	-- Tormentor's Siphoning Signet
		i(202592),	-- Unyielding Goliath's Burgonet
	},
	[ZSKARN] = {
		i(202631, {	-- Dreadful Ventilation Fluid
			i(202464),	-- Lingering Phantom's Plackart
			i(202527),	-- Kinslayer's Vest
			i(202536),	-- Cursed Robes of the Sinister Savant
		}),
		i(202632, {	-- Mystic Ventilation Fluid
			i(202518),	-- Chestroots of the Autumn Blaze
			i(202482),	-- Ashen Predator's Sling Vest
			i(202554),	-- Underlight Conjurer's Vestment
		}),
		i(202633, {	-- Venerated Ventilation Fluid
			i(202455),	-- Heartfire Sentinel's Brigandine
			i(202545),	-- Command of the Furnace Seraph
			i(202473),	-- Adornments of the Cinderwolf
		}),
		i(202639, {	-- Zenith Ventilation Fluid
			i(202491),	-- Hauberk of Obsidian Secrets
			i(202509),	-- Cuirass of the Vermillion Forge
			i(202500),	-- Lurking Specter's Brigandine
			i(202446),	-- Battlechest of the Onyx Crucible
		}),
		i(204393),	-- Clasps of the Diligent Steward
		i(202610),	-- Dragonfire Bomb Dispenser
		i(204467),	-- Drape of the Dracthyr Trials
		i(204391),	-- Failed Applicant's Footpads
		i(204322),	-- Failure Disposal Cannon
		i(204320),	-- Proctor's Tactical Cleaver
		i(204400),	-- Recycled Golemskin Waistguard
		i(202555),	-- Zskarn's Autopsy Scalpel
	},
	[MAGMORAX] = {
		i(202627, {	-- Dreadful Melting Fluid
			i(202461),	-- Lingering Phantom's Dreadhorns
			i(202524),	-- Kinslayer's Hood
			i(202533),	-- Grimhorns of the Sinister Savant
		}),
		i(202628, {	-- Mystic Melting Fluid
			i(202515),	-- Bough of the Autumn Blaze
			i(202479),	-- Ashen Predator's Faceguard
			i(202551),	-- Underlight Conjurer's Arcanocowl
		}),
		i(202629, {	-- Venerated Melting Fluid
			i(202452),	-- Heartfire Sentinel's Forgehelm
			i(202542),	-- Mask of the Furnace Seraph
			i(202470),	-- Spangenhelm of the Cinderwolf
		}),
		i(202630, {	-- Zenith Melting Fluid
			i(202488),	-- Crown of Obsidian Secrets
			i(202506),	-- Cover of the Vermillion Forge
			i(202497),	-- Lurking Specter's Visage
			i(202443),	-- Thraexhelm of the Onyx Crucible
		}),
		i(202560),	-- Claws of the Blazing Behemoth
		i(204394),	-- Cuffs of the Savage Serpent
		i(204395),	-- Hydratooth Girdle
		i(203996),	-- Igneous Flowstone
		i(202570),	-- Lavaflow Control Rod
		i(204397),	-- Magmorax's Fourth Collar
		i(204396),	-- Spittle-Resistant Sollerets
	},
	[NELTHARION] = {
		i(202621, {	-- Dreadful Corrupting Fluid
			i(202459),	-- Lingering Phantom's Shoulderplates
			i(202522),	-- Kinslayer's Tainted Spaulders
			i(202531),	-- Amice of the Sinister Savant
		}),
		i(202622, {	-- Mystic Corrupting Fluid
			i(202513),	-- Mantle of the Autumn Blaze
			i(202477),	-- Ashen Predator's Trophy
			i(202549),	-- Underlight Conjurer's Aurora
		}),
		i(202623, {	-- Venerated Corrupting Fluid
			i(202450),	-- Heartfire Sentinel's Steelwings
			i(202540),	-- Devotion of the Furnace Seraph
			i(202468),	-- Thunderpads of the Cinderwolf
		}),
		i(202637, {	-- Zenith Corrupting Fluid
			i(202486),	-- Wingspan of Obsidian Secrets
			i(202504),	-- Spines of the Vermillion Forge
			i(202495),	-- Lurking Specter's Shoulderblades
			i(202441),	-- Pauldrons of the Onyx Crucible
		}),
		i(202606),	-- Ashkandur, Fall of the Brotherhood
		i(202558),	-- Calamity's Herald
		i(204324),	-- Echo's Maddening Volume
		i(204201),	-- Neltharion's Call to Chaos
		i(204202),	-- Neltharion's Call to Dominance
		i(204211),	-- Neltharion's Call to Suffering
		i(204398),	-- Onyx Impostor's Birthright
		i(204392),	-- Treads of Fractured Realities
		i(202601),	-- Twisted Vision's Demigaunts
		i(203714),	-- Ward of Faceless Ire
	},
	[SARKARETH] = {
		i(203963),	-- Beacon to the Beyond
		i(204390),	-- Bonds of Desperate Ascension
		i(202585),	-- Coattails of the Rightful Heir
		i(204424),	-- Crechebound Soldier's Boots
		i(202565),	-- Erethos, the Empty Promise
		i(202564),	-- Fang of the Sundered Flame
		i(202587),	-- Oathbreaker's Obsessive Gauntlets
		i(204399),	-- Oblivion's Immortal Coil
		i(202599),	-- Sarkareth's Abyssal Embrace
		i(202584),	-- Scalecommander's Ebon Schynbalds
		-- Has special ItemAppearanceModifierID assignments
		-- i(204465),	-- Voice of the Silent Star
		i(217408, {	-- Awakened Tempostone
			["sym"] = GET_SYM_DF_S4_TIER_TOKENS(),
			["up"] = IGNORED_VALUE,
			["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
		}),
	},
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(204410),	-- Bands of Purified Purpose
	i(204411),	-- Crucible Curator's Wingspan
	i(204429),	-- Devoted Warden's Gaze
	i(204423),	-- Faulds of Failed Experiments
	i(204414),	-- Laboratory Assistant's Abductors
	i(204415),	-- Mantle of Sunless Kindling
	i(204430),	-- Sanctum Guard's Forgewalkers
	i(204422),	-- Sundered Edgelord's Breastplate
}

local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

root(ROOTS.Instances, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	inst(1208, {	-- Aberrus, the Shadowed Crucible
		["isRaid"] = true,
		["coord"] = { 48.6, 10.2, ZARALEK_CAVERN },
		["maps"] = {
			2166,	-- Molten Crucible
			2167,	-- Onyx Laboratory
			2168,	-- Defiant Ramparts
			2169,	-- Neltharion's Sanctum
			2170,	-- Edge of Oblivion
			2211,	-- Aberrus, the Shadowed Crucible (reported in #retail-errors on 3-July-2024)
		},
		["g"] = {
			header(HEADERS.Item, 204177, {	-- Nasz'uro, the Unbound Legacy
				i(204274, {	-- Ancient Memories
					["description"] = "You need to find an Evoker who is doing this quest.",
					["g"] = {
						r(407161, {	-- Immaculate Coalescing Dracothyst
							["requireSkill"] = JEWELCRAFTING,
							["u"] = TRAINING,
						}),
						r(407170, {	-- Inspired Order Recalibrator
							["requireSkill"] = ENGINEERING,
							["u"] = TRAINING,
						}),
						r(409224, {	-- Reclaimed Gauntlet Chassis
							["requireSkill"] = BLACKSMITHING,
							["u"] = TRAINING,
						}),
					},
				}),
				i(205257, {	-- Temporal Vestigial
					["description"] = "May drop from open world content. World Bosses drop 10 and rares drop 3.",
				}),
				n(QUESTS, bubbleDownSelf({
					["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
					["classes"] = { EVOKER },
				}, {
					q(74912, {	-- Neltharion's Legacy
						["provider"] = { "i", 204255 },	-- Cracked Titan Gem
					}),
					q(74913, {	-- Memories of an Artifact
						["sourceQuests"] = { 74912 },	-- Neltharion's Legacy
						["provider"] = { "n", 187669 },	-- Nozdormu
						["coord"] = { 60.8, 39.2, VALDRAKKEN },
					}),
					q(74923, {	-- It Takes a Village to Make an Artifact
						["sourceQuests"] = { 74913 },	-- Memories of an Artifact
						["provider"] = { "n", 187669 },	-- Nozdormu
						["coord"] = { 60.8, 39.2, VALDRAKKEN },
						["cost"] = {
							{ "i", 204854, 1 },	-- 1x Immaculate Coalescing Dracothyst
							{ "i", 204856, 1 },	-- 1x Inspired Order Recalibrator
							{ "i", 204832, 1 },	-- 1x Reclaimed Gauntlet Chassis
						},
						["g"] = {
							i(204274, {	-- Ancient Memories
								i(206163),	-- Temporal Gossamer
							}),
						},
					}),
					q(76158, {	-- Temporal Gossamer
						["sourceQuests"] = { 74913 },	-- Memories of an Artifact
						["provider"] = { "i", 206163 },	-- Temporal Gossamer
						["timeline"] = { ADDED_10_1_0, REMOVED_10_2_7 },
						["g"] = {
							i(204808),	-- Empowered Temporal Gossamer
							i(206165),	-- Major Resonating Vestigial (QI!)
							i(206166),	-- Strong Resonating Vestigial (QI!)
							i(206164),	-- Weak Resonating Vestigial (QI!)
						},
					}),
					q(74924, {	-- Nasz'uro, the Unbound Legacy
						["sourceQuests"] = { 74923 },	-- It Takes a Village to Make an Artifact
						["provider"] = { "n", 187669 },	-- Nozdormu
						["coord"] = { 60.8, 39.2, VALDRAKKEN },
						["maps"] = { 2176 },	-- The Maelstrom
						["g"] = {
							i(204177),	-- Nasz'uro, the Unbound Legacy
							ach(18256),	-- Nasz'uro, the Unbound Legacy
						},
					}),
				})),
			}),
			n(ACHIEVEMENTS, {
				ach(18163, {	-- Discarded Works
					crit(58866, {	-- Kazzara, the Hellforged
						["_encounter"] = { 2522, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(58867, {	-- The Amalgamation Chamber
						["_encounter"] = { 2529, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(58868, {	-- The Forgotten Experiments
						["_encounter"] = { 2530, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(18164, {	-- Fury of Giants
					crit(58869, {	-- Assault of the Zaqali
						["_encounter"] = { 2524, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(58870, {	-- Rashok, the Elder
						["_encounter"] = { 2525, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(58871, {	-- The Vigilant Steward, Zskarn
						["_encounter"] = { 2532, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(18165, {	-- Neltharion's Shadow
					crit(58881, {	-- Magmorax
						["_encounter"] = { 2527, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(58882, {	-- Echo of Neltharion
						["_encounter"] = { 2523, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(18167, {	-- Edge of the Void
					crit(58883, {	-- Scalecommander Sarkareth
						["_encounter"] = { 2520, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(18160, {	-- Aberrus, the Shadowed Crucible
					crit(58866, {	-- Kazzara, the Hellforged
						["_encounter"] = { 2522, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(58867, {	-- The Amalgamation Chamber
						["_encounter"] = { 2529, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(58868, {	-- The Forgotten Experiments
						["_encounter"] = { 2530, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(58869, {	-- Assault of the Zaqali
						["_encounter"] = { 2524, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(58870, {	-- Rashok, the Elder
						["_encounter"] = { 2525, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(58871, {	-- The Vigilant Steward, Zskarn
						["_encounter"] = { 2532, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(58881, {	-- Magmorax
						["_encounter"] = { 2527, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(58882, {	-- Echo of Neltharion
						["_encounter"] = { 2523, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(58883, {	-- Scalecommander Sarkareth
						["_encounter"] = { 2520, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(18161, {	-- Heroic: Aberrus, the Shadowed Crucible
					crit(59573, {	-- Kazzara, the Hellforged
						["_encounter"] = { 2522, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(59574, {	-- The Amalgamation Chamber
						["_encounter"] = { 2529, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(59575, {	-- The Forgotten Experiments
						["_encounter"] = { 2530, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(59576, {	-- Assault of the Zaqali
						["_encounter"] = { 2524, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(59577, {	-- Rashok, the Elder
						["_encounter"] = { 2525, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(59578, {	-- The Vigilant Steward, Zskarn
						["_encounter"] = { 2532, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(59579, {	-- Magmorax
						["_encounter"] = { 2527, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(59580, {	-- Echo of Neltharion
						["_encounter"] = { 2523, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(59581, {	-- Scalecommander Sarkareth
						["_encounter"] = { 2520, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				}),
				ach(18162, {	-- Mythic: Aberrus, the Shadowed Crucible
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18151,	-- Mythic: Kazzara, the Hellforged
						18152,	-- Mythic: The Amalgamation Chamber
						18153,	-- Mythic: The Forgotten Experiments
						18154,	-- Mythic: Assault of the Zaqali
						18155,	-- Mythic: Rashok, the Elder
						18156,	-- Mythic: The Vigilant Steward, Zskarn
						18157,	-- Mythic: Magmorax
						18158,	-- Mythic: Echo of Neltharion
						18159,	-- Mythic: Scalecommander Sarkareth
					}},
				}),
				ach(18251, {	-- Glory of the Aberrus Raider
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18229,	-- Cosplate
						18168,	-- I'll Make My Own Shadowflame
						18173,	-- Tabula Rasa
						18228,	-- Are You Even Trying?
						18230,	-- Whac-A-Swog
						18193,	-- Eggscellent Eggsecution
						18172,	-- Escar-Go-Go-Go
						18149,	-- Objects in Transit May Shatter
						17877,	-- We'll Never See That Again, Surely
					}},
					["g"] = {
						i(205205),	-- Shadowflame Shalewing (MOUNT!)
					},
				}),
				ach(17878, {	-- Me Want Bite
					["provider"] = { "i", 205684 },	-- Forbidden Flounder
				}),
				-- Awakened
				ach(19567, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Awakened Shadows
					crit(64957, {	-- Kazzara, the Hellforged
						["_encounter"] = { 2522, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64958, {	-- The Amalgamation Chamber
						["_encounter"] = { 2529, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64959, {	-- The Forgotten Experiments
						["_encounter"] = { 2530, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64960, {	-- Assault of the Zaqali
						["_encounter"] = { 2524, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64961, {	-- Rashok, the Elder
						["_encounter"] = { 2525, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64962, {	-- The Vigilant Steward, Zskarn
						["_encounter"] = { 2532, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64963, {	-- Magmorax
						["_encounter"] = { 2527, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64964, {	-- Echo of Neltharion
						["_encounter"] = { 2523, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
					crit(64965, {	-- Scalecommander Sarkareth
						["_encounter"] = { 2520, DIFFICULTY.RAID.MULTI.NORMAL_PLUS },
					}),
				})),
				ach(19568, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Heroic: Awakened Shadows
					crit(64966, {	-- Kazzara, the Hellforged
						["_encounter"] = { 2522, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(64967, {	-- The Amalgamation Chamber
						["_encounter"] = { 2529, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(64968, {	-- The Forgotten Experiments
						["_encounter"] = { 2530, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(64969, {	-- Assault of the Zaqali
						["_encounter"] = { 2524, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(64970, {	-- Rashok, the Elder
						["_encounter"] = { 2525, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(64971, {	-- The Vigilant Steward, Zskarn
						["_encounter"] = { 2532, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(64972, {	-- Magmorax
						["_encounter"] = { 2527, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(64973, {	-- Echo of Neltharion
						["_encounter"] = { 2523, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
					crit(64974, {	-- Scalecommander Sarkareth
						["_encounter"] = { 2520, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
					}),
				})),
				ach(19569, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH } }, {	-- Mythic: Awakened Shadows
					crit(64975, {	-- Kazzara, the Hellforged
						["_encounter"] = { 2522, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(64976, {	-- The Amalgamation Chamber
						["_encounter"] = { 2529, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(64977, {	-- The Forgotten Experiments
						["_encounter"] = { 2530, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(64978, {	-- Assault of the Zaqali
						["_encounter"] = { 2524, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(64979, {	-- Rashok, the Elder
						["_encounter"] = { 2525, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(64980, {	-- The Vigilant Steward, Zskarn
						["_encounter"] = { 2532, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(64981, {	-- Magmorax
						["_encounter"] = { 2527, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(64982, {	-- Echo of Neltharion
						["_encounter"] = { 2523, DIFFICULTY.RAID.MYTHIC },
					}),
					crit(64983, {	-- Scalecommander Sarkareth
						["_encounter"] = { 2520, DIFFICULTY.RAID.MYTHIC },
					}),
				})),
				ach(17765),	-- What We Wear In The Shadowflame
				-- Guild Achievements
				ach(18177),	-- Aberrus, the Shadowed Crucible Guild Run
				ach(18178),	-- Heroic: Aberrus, the Shadowed Crucible Guild Run
			}),
			-- #if AFTER 10.2.0
			-- #if BEFORE 11.0.0
			n(VENDORS, {
				n(205676, {	-- Norzko the Proud
					["coord"] = { 52.0, 25.6, ZARALEK_CAVERN },
					["g"] = bubbleDownFiltered({
						["cost"] = {{ "i", 204843, 1 }},	-- Draconic Mark of Mastery
						["bonusID"] = 7532,
					},FILTERFUNC_itemID,{
						cl(DEATHKNIGHT, {
							i(205810),	-- Lingering Phantom's Dreadhorns
							i(205811),	-- Lingering Phantom's Gauntlets
							i(205812),	-- Lingering Phantom's Plackart
							i(205809),	-- Lingering Phantom's Schynbalds
							i(205808),	-- Lingering Phantom's Shoulderplates
						}),
						cl(DEMONHUNTER, {
							i(205846),	-- Kinslayer's Bloodstained Grips
							i(205845),	-- Kinslayer's Hood
							i(205844),	-- Kinslayer's Legguards
							i(205843),	-- Kinslayer's Tainted Spaulders
							i(205847),	-- Kinslayer's Vest
						}),
						cl(DRUID, {
							i(205840),	-- Bough of the Autumn Blaze
							i(205842),	-- Chestroots of the Autumn Blaze
							i(205841),	-- Handguards of the Autumn Blaze
							i(205838),	-- Mantle of the Autumn Blaze
							i(205839),	-- Pants of the Autumn Blaze
						}),
						cl(EVOKER, {
							i(205824),	-- Chausses of Obsidian Secrets
							i(205826),	-- Claws of Obsidian Secrets
							i(205825),	-- Crown of Obsidian Secrets
							i(205827),	-- Hauberk of Obsidian Secrets
							i(205823),	-- Wingspan of Obsidian Secrets
						}),
						cl(HUNTER, {
							i(205820),	-- Ashen Predator's Faceguard
							i(205819),	-- Ashen Predator's Poleyns
							i(205821),	-- Ashen Predator's Skinners
							i(205822),	-- Ashen Predator's Sling Vest
							i(205818),	-- Ashen Predator's Trophy
						}),
						cl(MAGE, {
							i(205860),	-- Underlight Conjurer's Arcanocowl
							i(205858),	-- Underlight Conjurer's Aurora
							i(205861),	-- Underlight Conjurer's Gloves
							i(205859),	-- Underlight Conjurer's Trousers
							i(205862),	-- Underlight Conjurer's Vestment
						}),
						cl(MONK, {
							i(205835),	-- Cover of the Vermillion Forge
							i(205837),	-- Cuirass of the Vermillion Forge
							i(205836),	-- Fists of the Vermillion Forge
							i(205834),	-- Pantaloons of the Vermillion Forge
							i(205833),	-- Spines of the Vermillion Forge
						}),
						cl(PALADIN, {
							i(205807),	-- Heartfire Sentinel's Brigandine
							i(205804),	-- Heartfire Sentinel's Faulds
							i(205805),	-- Heartfire Sentinel's Forgehelm
							i(205806),	-- Heartfire Sentinel's Protectors
							i(205803),	-- Heartfire Sentinel's Steelwings
						}),
						cl(PRIEST, {
							i(205854),	-- Breeches of the Furnace Seraph
							i(205857),	-- Command of the Furnace Seraph
							i(205853),	-- Devotion of the Furnace Seraph
							i(205856),	-- Grasp of the Furnace Seraph
							i(205855),	-- Mask of the Furnace Seraph
						}),
						cl(ROGUE, {
							i(205832),	-- Lurking Specter's Brigandine
							i(205831),	-- Lurking Specter's Handgrips
							i(205828),	-- Lurking Specter's Shoulderblades
							i(205829),	-- Lurking Specter's Tights
							i(205830),	-- Lurking Specter's Visage
						}),
						cl(SHAMAN, {
							i(205817),	-- Adornments of the Cinderwolf
							i(205814),	-- Braies of the Cinderwolf
							i(205816),	-- Knuckles of the Cinderwolf
							i(205815),	-- Spangenhelm of the Cinderwolf
							i(205813),	-- Thunderpads of the Cinderwolf
						}),
						cl(WARLOCK, {
							i(205848),	-- Amice of the Sinister Savant
							i(205852),	-- Cursed Robes of the Sinister Savant
							i(205850),	-- Grimhorns of the Sinister Savant
							i(205851),	-- Grips of the Sinister Savant
							i(205849),	-- Leggings of the Sinister Savant
						}),
						cl(WARRIOR, {
							i(205802),	-- Battlechest of the Onyx Crucible
							i(205801),	-- Handguards  of the Onyx Crucible
							i(205799),	-- Legplates of the Onyx Crucible
							i(205798),	-- Pauldrons of the Onyx Crucible
							i(205800),	-- Thraexhelm of the Onyx Crucible
						}),
					}),
				}),
			}),
			-- #endif
			-- #endif
			CommonBossDrops({
				i(204857),	-- Ancient Elementium Fragment
				i(204464),	-- Shadowflame Essence
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				BossOnly(KAZZARA, {
					i(205145),	-- Plans: Shadowed Impact Buckler (RECIPE!)
				}),
				BossOnly(AMALGAMATION, {
					i(204696),	-- Recipe: Draconic Phial Cauldron (RECIPE!)
				}),
				BossOnly(EXPERIMENTS, {
					i(205140),	-- Pattern: Undulating Sporecloak (RECIPE!)
				}),
				BossOnly(ASSAULT, {
					i(205256, {	-- Satchel of Pilfered Recipes
						i(194642),	-- Design: Choker of Shielding (RECIPE!)
						TempForceMisc(ig(201740, {	-- Elemental Codex of Ultimate Power
							r(370543),	-- Elemental Potion of Ultimate Power (RECIPE!)
							r(370672),	-- Potion Cauldron of Ultimate Power (RECIPE!)
						})),
						i(194259),	-- Pattern: Allied Cinch of Time Dilation (RECIPE!)
						i(194266),	-- Pattern: Bronzed Grip Wrappings (RECIPE!)
						i(194260),	-- Pattern: Blue Dragon Soles (RECIPE!)
						i(193873),	-- Pattern: Old Spirit's Wristwraps (RECIPE!)
						i(193881),	-- Pattern: Scale Rein Grips (RECIPE!)
						i(193872),	-- Pattern: String of Spiritual Knick-Knacks (RECIPE!)
						i(193880),	-- Pattern: Wind Spirit's Lasso (RECIPE!)
						i(194489),	-- Plans: Allied Chestplate of Generosity (RECIPE!)
						i(194490),	-- Plans: Allied Wristguard of Companionship (RECIPE!)
						i(191597),	-- Recipe: Potion Absorption Inhibitor (RECIPE!)
						i(199227),	-- Schematic: Sophisticated Problem Solver (RECIPE!)
					}),
				}),
				BossOnly(RASHOK, {
					i(205144),	-- Plans: Shadowed Razing Annihilator (RECIPE!)
				}),
				BossOnly(ZSKARN, {
					i(205036),	-- Schematic: Tinker: Shadowflame Rockets (RECIPE!)
				}),
				BossOnly(MAGMORAX, {
					i(205684),	-- Forbidden Flounder
					i(204975),	-- Formula: Enchant Weapon - Shadowflame Wreathe (RECIPE!)
				}),
				BossOnly(NELTHARION, {
					i(204968),	-- Pattern: Shadowflame-Tempered Armor Patch (RECIPE!)
				}),
				BossOnly(SARKARETH, {
					i(204255),	-- Cracked Titan Gem
				}),
			}),
			Difficulty({DIFFICULTY.RAID.LFR,DIFFICULTY.RAID.NORMAL,DIFFICULTY.RAID.HEROIC}).AddGroups({
				BossOnly(SARKARETH, {
					i(206955),	-- Highland Drake: Embodiment of the Hellforged (MM!) [LFR, Normal, Heroic]
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroups(bubbleDown({ ["timeline"] = { ADDED_10_1_0, REMOVED_11_0_2 } }, {
				-- #if AFTER TWW
				o(382621, {	-- Revival Catalyst Console	-- LFR --
					["description"] = "The Revival Catalyst is a system that lets you convert Zaralek Cavern's Weekly Event Zone Items (Researchers & A Worthy Ally: Niffen) & LFR Mode Non-set items from the Aberrus Raid into your class' LFR Transmog Set.\n\nThe catalyst is in Tyrhold in Thaldraszus, Dragon Isles.\n\nMake sure to equip your item first before converting it.",
					["coord"] = { 60.6, 53.8, THALDRASZUS },
					["modelScale"] = 4,
					["g"] = bubbleDown({ ["modID"] = 4 }, {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAberrus(DEATHKNIGHT, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202458),	-- Lingering Phantom's Deathlink
								i(202456),	-- Lingering Phantom's Drape
								i(202463),	-- Lingering Phantom's Stompers
								i(202457),	-- Lingering Phantom's Vambraces
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAberrus(DEMONHUNTER, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202520),	-- Kinslayer's Bindings
								i(202526),	-- Kinslayer's Gaiters
								i(202521),	-- Kinslayer's Sash
								i(202519),	-- Kinslayer's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAberrus(DRUID, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202511),	-- Bands of the Autumn Blaze
								i(202510),	-- Foliage of the Autumn Blaze
								i(202512),	-- Garland of the Autumn Blaze
								i(202517),	-- Hooves of the Autumn Blaze
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAberrus(EVOKER, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202483),	-- Crest of Obsidian Secrets
								i(202490),	-- Greatboots of Obsidian Secrets
								i(202485),	-- Lasso of Obsidian Secrets
								i(202484),	-- Scalebands of Obsidian Secrets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAberrus(HUNTER, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202481),	-- Ashen Predator's Chasers
								i(202474),	-- Ashen Predator's Cloak
								i(202475),	-- Ashen Predator's Skinwraps
								i(202476),	-- Ashen Predator's Strap
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAberrus(MAGE, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202547),	-- Underlight Conjurer's Bracelets
								i(202546),	-- Underlight Conjurer's Cape -- TODO: Only One sourceID?!
								i(202548),	-- Underlight Conjurer's Charmbelt
								i(202553),	-- Underlight Conjurer's Treads
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAberrus(MONK, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202501),	-- Drape of the Vermillion Forge
								i(202503),	-- Blackbelt of the Vermillion Forge
								i(202502),	-- Coils of the Vermillion Forge
								i(202508),	-- Footpads of the Vermillion Forge
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAberrus(PALADIN, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202448),	-- Heartfire Sentinel's Blessed Bindings
								i(202454),	-- Heartfire Sentinel's Greatboots
								i(202447),	-- Heartfire Sentinel's Pelerine
								i(202449),	-- Heartfire Sentinel's Waistguard
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAberrus(PRIEST, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202538),	-- Cuffs of the Furnace Seraph
								i(202544),	-- Sabatons of the Furnace Seraph
								i(202539),	-- Sash of the Furnace Seraph
								i(202537),	-- Shroud of the Furnace Seraph
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAberrus(ROGUE, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202493),	-- Lurking Specter's Armwraps
								i(202492),	-- Lurking Specter's Capelet
								i(202494),	-- Lurking Specter's Edgeband
								i(202499),	-- Lurking Specter's Tabi
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAberrus(SHAMAN, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202467),	-- Faulds of the Cinderwolf
								i(202465),	-- Pelisse of the Cinderwolf
								i(202466),	-- Runebraces of the Cinderwolf
								i(202472),	-- Sollerets of the Cinderwolf
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAberrus(WARLOCK, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202535),	-- Sandals of the Sinister Savant
								i(202528),	-- Shawl of the Sinister Savant
								i(202530),	-- Skullstrap of the Sinister Savant
								i(202529),	-- Wristwraps of the Sinister Savant
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAberrus(WARRIOR, DIFFICULTY.RAID.LFR),
							["g"] = {
								i(202440),	-- Insignia of the Onyx Crucible
								i(202445),	-- Ironstriders of the Onyx Crucible
								i(202438),	-- Manteau of the Onyx Crucible
								i(202439),	-- Warbands of the Onyx Crucible
							},
						}),
					}),
				}),
				-- #endif
				ZoneDrops({
					i(204075, {	-- Whelping's Shadowflame Crest Fragment
						["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
						["up"] = IGNORED_VALUE,
					}),
				}),
				header(HEADERS.Achievement, 18163, {	-- Discarded Works
					Boss(KAZZARA),
					Boss(AMALGAMATION),
					Boss(EXPERIMENTS),
				}),
				header(HEADERS.Achievement, 18164, {	-- Fury of Giants
					Boss(ASSAULT),
					Boss(RASHOK),
					Boss(ZSKARN),
				}),
				header(HEADERS.Achievement, 18165, {	-- Neltharion's Shadow
					Boss(MAGMORAX),
					Boss(NELTHARION),
				}),
				header(HEADERS.Achievement, 18167, {	-- Edge of the Void
					Boss(SARKARETH, {
						i(206046, {	-- Void-Touched Curio
							["sym"] = {{"sub","instance_tier",1208,DIFFICULTY.RAID.LFR}},
							["up"] = IGNORED_VALUE,
						}),
						i(204465, {ItemAppearanceModifierID=0}),	-- Voice of the Silent Star
					}),
				}),
			})),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(KAZZARA, {
					ach(18229, {	-- Cosplate
						["crs"] = { 205674 },	-- Molten Vortex
					}),
				}),
				BossOnly(AMALGAMATION, {
					ach(18168, {	-- I'll Make My Own Shadowflame
						["crs"] = {
							205377,	-- Forgotten Specimen Tank
							205378,	-- Shadowflame Remnant
						},
					}),
				}),
				BossOnly(EXPERIMENTS, {
					ach(18173, {	-- Tabula Rasa
						["crs"] = { 205352 },	-- Nutraal
					}),
				}),
				BossOnly(ASSAULT, {
					ach(18228, {	-- Are You Even Trying?
						["crs"] = {
							201340,	-- Cave Rubble
							205664,	-- Magma Slug
							205663,	-- Rock Snail
							205666,	-- Cave Beetle
							205665,	-- Siege Mammoth
							205667,	-- Ember Mouse
							205627,	-- Zaqali Boltthrower
						},
					}),
				}),
				BossOnly(RASHOK, {
					ach(18230, {	-- Whac-A-Swog
						["crs"] = { 205630 },	-- Lost Lunker
					}),
				}),
				BossOnly(ZSKARN, {
					ach(18193, {	-- Eggscellent Eggsecution
						["provider"] = { "o", 402841 },	-- Delicate Experimental Egg
					}),
				}),
				BossOnly(MAGMORAX, {
					ach(18172, {	-- Escar-Go-Go-Go
						["crs"] = { 205437 },	-- Spicy Lava Snail
					}),
				}),
				BossOnly(NELTHARION, {
					ach(18149, {	-- Objects in Transit May Shatter
						["crs"] = {
							205340,	-- Expired Experiment
							205341,	-- Stack of Scrolls
							205342,	-- Neverburning Ebon Candle
							205343,	-- "Portable" Ebon Anvil
						},
					}),
				}),
				BossOnly(SARKARETH, {
					ach(17877),	-- We'll Never See That Again, Surely
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
				n(QUESTS, {
					q(76083, {	-- Aberrus, the Shadowed Crucible: Echoes of the Earth-Warder (N)
						["provider"] = { "n", 201574 },	-- Wrathion
						["g"] = {
							i(205994),	-- Tome of the Earth-Warder (N)
						},
					}),
				}),
				-- #if AFTER TWW
				o(382621, {	-- Revival Catalyst Console	-- NORMAL --
					["description"] = "The Revival Catalyst is a system that lets you convert Normal Mode Non-set items from the Aberrus Raid into your class' Normal Transmog Set.\n\nThe catalyst is in Tyrhold in Thaldraszus, Dragon Isles.\n\nMake sure to equip your item first before converting it.",
					["coord"] = { 60.6, 53.8, THALDRASZUS },
					["modelScale"] = 4,
					["g"] = {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAberrus(DEATHKNIGHT, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202458),	-- Lingering Phantom's Deathlink
								i(202456),	-- Lingering Phantom's Drape
								i(202463),	-- Lingering Phantom's Stompers
								i(202457),	-- Lingering Phantom's Vambraces
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAberrus(DEMONHUNTER, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202520),	-- Kinslayer's Bindings
								i(202526),	-- Kinslayer's Gaiters
								i(202521),	-- Kinslayer's Sash
								i(202519),	-- Kinslayer's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAberrus(DRUID, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202511),	-- Bands of the Autumn Blaze
								i(202510),	-- Foliage of the Autumn Blaze
								i(202512),	-- Garland of the Autumn Blaze
								i(202517),	-- Hooves of the Autumn Blaze
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAberrus(EVOKER, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202483),	-- Crest of Obsidian Secrets
								i(202490),	-- Greatboots of Obsidian Secrets
								i(202485),	-- Lasso of Obsidian Secrets
								i(202484),	-- Scalebands of Obsidian Secrets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAberrus(HUNTER, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202481),	-- Ashen Predator's Chasers
								i(202474),	-- Ashen Predator's Cloak
								i(202475),	-- Ashen Predator's Skinwraps
								i(202476),	-- Ashen Predator's Strap
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAberrus(MAGE, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202547),	-- Underlight Conjurer's Bracelets
								i(202546),	-- Underlight Conjurer's Cape -- TODO: Only One sourceID?!
								i(202548),	-- Underlight Conjurer's Charmbelt
								i(202553),	-- Underlight Conjurer's Treads
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAberrus(MONK, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202501),	-- Drape of the Vermillion Forge
								i(202503),	-- Blackbelt of the Vermillion Forge
								i(202502),	-- Coils of the Vermillion Forge
								i(202508),	-- Footpads of the Vermillion Forge
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAberrus(PALADIN, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202448),	-- Heartfire Sentinel's Blessed Bindings
								i(202454),	-- Heartfire Sentinel's Greatboots
								i(202447),	-- Heartfire Sentinel's Pelerine
								i(202449),	-- Heartfire Sentinel's Waistguard
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAberrus(PRIEST, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202538),	-- Cuffs of the Furnace Seraph
								i(202544),	-- Sabatons of the Furnace Seraph
								i(202539),	-- Sash of the Furnace Seraph
								i(202537),	-- Shroud of the Furnace Seraph
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAberrus(ROGUE, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202493),	-- Lurking Specter's Armwraps
								i(202492),	-- Lurking Specter's Capelet
								i(202494),	-- Lurking Specter's Edgeband
								i(202499),	-- Lurking Specter's Tabi
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAberrus(SHAMAN, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202467),	-- Faulds of the Cinderwolf
								i(202465),	-- Pelisse of the Cinderwolf
								i(202466),	-- Runebraces of the Cinderwolf
								i(202472),	-- Sollerets of the Cinderwolf
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAberrus(WARLOCK, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202535),	-- Sandals of the Sinister Savant
								i(202528),	-- Shawl of the Sinister Savant
								i(202530),	-- Skullstrap of the Sinister Savant
								i(202529),	-- Wristwraps of the Sinister Savant
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAberrus(WARRIOR, DIFFICULTY.RAID.NORMAL),
							["g"] = {
								i(202440),	-- Insignia of the Onyx Crucible
								i(202445),	-- Ironstriders of the Onyx Crucible
								i(202438),	-- Manteau of the Onyx Crucible
								i(202439),	-- Warbands of the Onyx Crucible
							},
						}),
					},
				}),
				-- #endif
				ZoneDrops({
					i(204076, {	-- Drake's Shadowflame Crest Fragment
						["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
						["up"] = IGNORED_VALUE,
					}),
				}),
				Boss(KAZZARA),
				Boss(AMALGAMATION),
				Boss(EXPERIMENTS),
				Boss(ASSAULT),
				Boss(RASHOK),
				Boss(ZSKARN),
				Boss(MAGMORAX),
				Boss(NELTHARION),
				Boss(SARKARETH, {
					i(206046, {	-- Void-Touched Curio
						["sym"] = {{"sub","instance_tier",1208,DIFFICULTY.RAID.NORMAL}},
						["up"] = IGNORED_VALUE,
					}),
					i(204465, {ItemAppearanceModifierID=1}),	-- Voice of the Silent Star
				}),
			}),
			-- This is needed for Achievement distribution
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(KAZZARA),
				BossOnly(AMALGAMATION),
				BossOnly(EXPERIMENTS),
				BossOnly(ASSAULT),
				BossOnly(RASHOK),
				BossOnly(ZSKARN),
				BossOnly(MAGMORAX),
				BossOnly(NELTHARION),
				BossOnly(SARKARETH, {
					i(204465, {up=IGNORED_VALUE, modID=5, ItemAppearanceModifierID=3}),	-- Voice of the Silent Star
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
				n(QUESTS, {
					q(76085, {	-- Aberrus, the Shadowed Crucible: Echoes of the Earth-Warder (H)
						["provider"] = { "n", 201574 },	-- Wrathion
						["g"] = {
							i(205996),	-- Tome of the Earth-Warder (H)
						},
					}),
				}),
				-- #if AFTER TWW
				o(382621, {	-- Revival Catalyst Console	-- HEROIC --
					["description"] = "The Revival Catalyst is a system that lets you convert Heroic Mode Non-set items from the Aberrus Raid into your class' Heroic Transmog Set.\n\nThe catalyst is in Tyrhold in Thaldraszus, Dragon Isles.\n\nMake sure to equip your item first before converting it.",
					["coord"] = { 60.6, 53.8, THALDRASZUS },
					["modelScale"] = 4,
					["g"] = bubbleDown({ ["modID"] = 5 }, {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAberrus(DEATHKNIGHT, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202458),	-- Lingering Phantom's Deathlink
								i(202456),	-- Lingering Phantom's Drape
								i(202463),	-- Lingering Phantom's Stompers
								i(202457),	-- Lingering Phantom's Vambraces
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAberrus(DEMONHUNTER, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202520),	-- Kinslayer's Bindings
								i(202526),	-- Kinslayer's Gaiters
								i(202521),	-- Kinslayer's Sash
								i(202519),	-- Kinslayer's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAberrus(DRUID, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202511),	-- Bands of the Autumn Blaze
								i(202510),	-- Foliage of the Autumn Blaze
								i(202512),	-- Garland of the Autumn Blaze
								i(202517),	-- Hooves of the Autumn Blaze
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAberrus(EVOKER, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202483),	-- Crest of Obsidian Secrets
								i(202490),	-- Greatboots of Obsidian Secrets
								i(202485),	-- Lasso of Obsidian Secrets
								i(202484),	-- Scalebands of Obsidian Secrets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAberrus(HUNTER, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202481),	-- Ashen Predator's Chasers
								i(202474),	-- Ashen Predator's Cloak
								i(202475),	-- Ashen Predator's Skinwraps
								i(202476),	-- Ashen Predator's Strap
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAberrus(MAGE, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202547),	-- Underlight Conjurer's Bracelets
								i(202546),	-- Underlight Conjurer's Cape -- TODO: Only One sourceID?!
								i(202548),	-- Underlight Conjurer's Charmbelt
								i(202553),	-- Underlight Conjurer's Treads
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAberrus(MONK, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202501),	-- Drape of the Vermillion Forge
								i(202503),	-- Blackbelt of the Vermillion Forge
								i(202502),	-- Coils of the Vermillion Forge
								i(202508),	-- Footpads of the Vermillion Forge
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAberrus(PALADIN, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202448),	-- Heartfire Sentinel's Blessed Bindings
								i(202454),	-- Heartfire Sentinel's Greatboots
								i(202447),	-- Heartfire Sentinel's Pelerine
								i(202449),	-- Heartfire Sentinel's Waistguard
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAberrus(PRIEST, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202538),	-- Cuffs of the Furnace Seraph
								i(202544),	-- Sabatons of the Furnace Seraph
								i(202539),	-- Sash of the Furnace Seraph
								i(202537),	-- Shroud of the Furnace Seraph
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAberrus(ROGUE, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202493),	-- Lurking Specter's Armwraps
								i(202492),	-- Lurking Specter's Capelet
								i(202494),	-- Lurking Specter's Edgeband
								i(202499),	-- Lurking Specter's Tabi
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAberrus(SHAMAN, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202467),	-- Faulds of the Cinderwolf
								i(202465),	-- Pelisse of the Cinderwolf
								i(202466),	-- Runebraces of the Cinderwolf
								i(202472),	-- Sollerets of the Cinderwolf
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAberrus(WARLOCK, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202535),	-- Sandals of the Sinister Savant
								i(202528),	-- Shawl of the Sinister Savant
								i(202530),	-- Skullstrap of the Sinister Savant
								i(202529),	-- Wristwraps of the Sinister Savant
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAberrus(WARRIOR, DIFFICULTY.RAID.HEROIC),
							["g"] = {
								i(202440),	-- Insignia of the Onyx Crucible
								i(202445),	-- Ironstriders of the Onyx Crucible
								i(202438),	-- Manteau of the Onyx Crucible
								i(202439),	-- Warbands of the Onyx Crucible
							},
						}),
					}),
				}),
				-- #endif
				ZoneDrops({
					i(204077, {	-- Wyrm's Shadowflame Crest Fragment
						["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
						["up"] = IGNORED_VALUE,
					}),
				}),
				Boss(KAZZARA),
				Boss(AMALGAMATION),
				Boss(EXPERIMENTS),
				Boss(ASSAULT),
				Boss(RASHOK),
				Boss(ZSKARN),
				Boss(MAGMORAX),
				Boss(NELTHARION),
				Boss(SARKARETH, {
					ach(18253, {["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 }}),	-- Ahead of the Curve: Scalecommander Sarkareth
					i(206046, {	-- Void-Touched Curio
						["sym"] = {{"sub","instance_tier",1208,DIFFICULTY.RAID.HEROIC}},
						["up"] = IGNORED_VALUE,
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				n(QUESTS, {
					q(76086, {	-- Aberrus, the Shadowed Crucible: Echoes of the Earth-Warder (M)
						["provider"] = { "n", 201574 },	-- Wrathion
						["g"] = {
							i(205997),	-- Tome of the Earth-Warder
						},
					}),
				}),
				n(ZONE_DROPS, sharedData({	-- First 2 week BoP version drops
					["timeline"] = { ADDED_10_1_0, REMOVED_10_1_0 },
				},{
					i(204413),	-- Bands of Purified Purpose
					i(204412),	-- Crucible Curator's Wingspan
					i(204427),	-- Devoted Warden's Gaze
					i(204421),	-- Faulds of Failed Experiments
					i(204416),	-- Laboratory Assistant's Abductors
					i(204417),	-- Mantle of Sunless Kindling
					i(204428),	-- Sanctum Guard's Forgewalkers
					i(204420),	-- Sundered Edgelord's Breastplate
				})),
				-- #if AFTER TWW
				o(382621, {	-- Revival Catalyst Console	-- MYTHIC --
					["description"] = "The Revival Catalyst is a system that lets you convert Mythic Mode Non-set items from the Aberrus Raid into your class' Mythic Transmog Set.\n\nThe catalyst is in Tyrhold in Thaldraszus, Dragon Isles.\n\nMake sure to equip your item first before converting it.",
					["coord"] = { 60.6, 53.8, THALDRASZUS },
					["modelScale"] = 4,
					["g"] = bubbleDown({ ["modID"] = 6 }, {
						cl(DEATHKNIGHT, {
							["sym"] = SymRaidAberrus(DEATHKNIGHT, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202458),	-- Lingering Phantom's Deathlink
								i(202456),	-- Lingering Phantom's Drape
								i(202463),	-- Lingering Phantom's Stompers
								i(202457),	-- Lingering Phantom's Vambraces
							},
						}),
						cl(DEMONHUNTER, {
							["sym"] = SymRaidAberrus(DEMONHUNTER, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202520),	-- Kinslayer's Bindings
								i(202526),	-- Kinslayer's Gaiters
								i(202521),	-- Kinslayer's Sash
								i(202519),	-- Kinslayer's Shawl
							},
						}),
						cl(DRUID, {
							["sym"] = SymRaidAberrus(DRUID, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202511),	-- Bands of the Autumn Blaze
								i(202510),	-- Foliage of the Autumn Blaze
								i(202512),	-- Garland of the Autumn Blaze
								i(202517),	-- Hooves of the Autumn Blaze
							},
						}),
						cl(EVOKER, {
							["sym"] = SymRaidAberrus(EVOKER, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202483),	-- Crest of Obsidian Secrets
								i(202490),	-- Greatboots of Obsidian Secrets
								i(202485),	-- Lasso of Obsidian Secrets
								i(202484),	-- Scalebands of Obsidian Secrets
							},
						}),
						cl(HUNTER, {
							["sym"] = SymRaidAberrus(HUNTER, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202481),	-- Ashen Predator's Chasers
								i(202474),	-- Ashen Predator's Cloak
								i(202475),	-- Ashen Predator's Skinwraps
								i(202476),	-- Ashen Predator's Strap
							},
						}),
						cl(MAGE, {
							["sym"] = SymRaidAberrus(MAGE, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202547),	-- Underlight Conjurer's Bracelets
								i(202546),	-- Underlight Conjurer's Cape -- TODO: Only One sourceID?!
								i(202548),	-- Underlight Conjurer's Charmbelt
								i(202553),	-- Underlight Conjurer's Treads
							},
						}),
						cl(MONK, {
							["sym"] = SymRaidAberrus(MONK, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202501),	-- Drape of the Vermillion Forge
								i(202503),	-- Blackbelt of the Vermillion Forge
								i(202502),	-- Coils of the Vermillion Forge
								i(202508),	-- Footpads of the Vermillion Forge
							},
						}),
						cl(PALADIN, {
							["sym"] = SymRaidAberrus(PALADIN, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202448),	-- Heartfire Sentinel's Blessed Bindings
								i(202454),	-- Heartfire Sentinel's Greatboots
								i(202447),	-- Heartfire Sentinel's Pelerine
								i(202449),	-- Heartfire Sentinel's Waistguard
							},
						}),
						cl(PRIEST, {
							["sym"] = SymRaidAberrus(PRIEST, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202538),	-- Cuffs of the Furnace Seraph
								i(202544),	-- Sabatons of the Furnace Seraph
								i(202539),	-- Sash of the Furnace Seraph
								i(202537),	-- Shroud of the Furnace Seraph
							},
						}),
						cl(ROGUE, {
							["sym"] = SymRaidAberrus(ROGUE, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202493),	-- Lurking Specter's Armwraps
								i(202492),	-- Lurking Specter's Capelet
								i(202494),	-- Lurking Specter's Edgeband
								i(202499),	-- Lurking Specter's Tabi
							},
						}),
						cl(SHAMAN, {
							["sym"] = SymRaidAberrus(SHAMAN, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202467),	-- Faulds of the Cinderwolf
								i(202465),	-- Pelisse of the Cinderwolf
								i(202466),	-- Runebraces of the Cinderwolf
								i(202472),	-- Sollerets of the Cinderwolf
							},
						}),
						cl(WARLOCK, {
							["sym"] = SymRaidAberrus(WARLOCK, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202535),	-- Sandals of the Sinister Savant
								i(202528),	-- Shawl of the Sinister Savant
								i(202530),	-- Skullstrap of the Sinister Savant
								i(202529),	-- Wristwraps of the Sinister Savant
							},
						}),
						cl(WARRIOR, {
							["sym"] = SymRaidAberrus(WARRIOR, DIFFICULTY.RAID.MYTHIC),
							["g"] = {
								i(202440),	-- Insignia of the Onyx Crucible
								i(202445),	-- Ironstriders of the Onyx Crucible
								i(202438),	-- Manteau of the Onyx Crucible
								i(202439),	-- Warbands of the Onyx Crucible
							},
						}),
					}),
				}),
				-- #endif
				ZoneDrops({
					i(204078, {	-- Aspect's Shadowflame Crest Fragment
						["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
					}),
				}),
				Boss(KAZZARA, {
					ach(18151),	-- Mythic: Kazzara, the Hellforged
				}),
				Boss(AMALGAMATION, {
					ach(18152),	-- Mythic: The Amalgamation Chamber
				}),
				Boss(EXPERIMENTS, {
					ach(18153),	-- Mythic: The Forgotten Experiments
				}),
				Boss(ASSAULT, {
					ach(18154),	-- Mythic: Assault of the Zaqali
				}),
				Boss(RASHOK, {
					ach(18155),	-- Mythic: Rashok, the Elder
				}),
				Boss(ZSKARN, {
					ach(18156),	-- Mythic: The Vigilant Steward, Zskarn
				}),
				Boss(MAGMORAX, {
					ach(18157),	-- Mythic: Magmorax
				}),
				Boss(NELTHARION, {
					ach(18158),	-- Mythic: Echo of Neltharion
				}),
				Boss(SARKARETH, {
					ach(18159, {	-- Mythic: Scalecommander Sarkareth
						title(505),	-- <Name>, Heir to the Void
					}),
					ach(18176, bubbleDownSelf({["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 } }, {	-- Hall of Fame: Scalecommander Sarkareth
						title(506),	-- <Name>, Famed Slayer of Sarkareth
					})),
					ach(18254, {["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 }}),	-- Cutting Edge: Scalecommander Sarkareth
					ach(18179),	-- Mythic: Scalecommander Sarkareth Guild Run
					i(205876),	-- Highland Drake: Embodiment of the Hellforged (MM!) [Mythic]
					i(206046, {	-- Void-Touched Curio
						["sym"] = {{"sub","instance_tier",1208,DIFFICULTY.RAID.MYTHIC}},
					}),
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
	inst(1208, {	-- Aberrus, the Shadowed Crucible
		-- Normal
		q(75732),	-- Kazzara
		q(75733),	-- The Amalgamation Chamber
		q(75734),	-- The Forgotten Experiments
		q(75735),	-- Assault of the Zaqali
		q(75736),	-- Rashok
		q(75737),	-- The Vigilant Steward, Zskarn
		q(75738),	-- Magmorax
		q(75739),	-- Echo of Neltharion
		q(75740),	-- Scalecommander Sarkareth
		-- Heroic
		-- None
		-- Mythic
		-- None

		q(76087),	-- Sarkareth HC kill on Evoker; Legendary 'higher chance' lockout?
		q(75659),	-- Sarkareth M kill on Evoker; Legendary 'higher chance' lockout?
		q(76088),	-- Normal Sarkareth Kill?
		q(76089),	-- Normal Sarkareth Kill?

		-- Nasz'uro, the Unbound Legacy
		q(75623),	-- Triggers when you receive the legendary during the last quest (spellID 408549)
	}),
})));