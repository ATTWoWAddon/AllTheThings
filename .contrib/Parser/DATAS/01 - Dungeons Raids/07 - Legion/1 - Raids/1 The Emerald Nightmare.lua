-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local NYTHENDRA = 1703;
local ELERETHE = 1744;
local ILGYNOTH = 1738;
local URSOC = 1667;
local DRAGONS_NIGHTMARE = 1704;
local CENARIUS = 1750
local XAVIUS = 1726;

------ EncounterToCRS ------
local EncounterToCRS = {
	[NYTHENDRA] = { 102672 },	-- Nythendra
	[ELERETHE] = { 106087 },	-- Elerethe Renferal
	[ILGYNOTH] = { 105393 },	-- Il'gynoth, Heart of Corruption
	[URSOC] = { 100497 },	-- Ursoc
	[DRAGONS_NIGHTMARE] = {	-- Dragons of Nightmare
		102679,	-- Ysondre
		102681,	-- Taerar
		102682,	-- Lethon
		102683,	-- Emeriss
	},
	[CENARIUS] = { 104636 },	-- Cenarius
	[XAVIUS] = { 103769 },	-- Xavius <Nightmare Lord>
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[NYTHENDRA] = {
		i(139191),	-- Ancient Dreamwoven Mantle
		i(139212),	-- Creeping String of Larva
		i(139251),	-- Despoiled Dragonscale
		i(139214),	-- Greyed Dragonscale Coif
		i(139236),	-- Grubby Silver Ring
		i(139224),	-- Insect-Etched Chestplate
		i(139197),	-- Lifeless Buckled Girdle
		i(139252),	-- Preserved Worldseed
		i(139320),	-- Ravaged Seed Pod
		i(139249),	-- Shaladrassil's Blossom
		i(139200),	-- Stained Maggot Squishers
		i(139321),	-- Swarming Plaguehive
		i(139250),	-- Unwaking Slumber
		i(139235),	-- Wristclamps of Mad Dreams
	};
	[ELERETHE] = {
		i(139219),	-- Black Venom Sabatons
		i(139322),	-- Cocoon of Enforced Solitude
		i(139253),	-- Fel-Bloated Venom Sac
		i(138221),	-- Gossamer-Spun Greatcloak
		i(139204),	-- Mask of Multitudinous Eyes
		i(139221),	-- Patient Ambusher's Hauberk
		i(138217),	-- Pliable Spider Silk Cinch
		i(139190),	-- Ragged Horrorweave Leggings
		i(139255),	-- Scything Quill
		i(139254),	-- Shrieking Bloodstone
		i(137008),	-- Stormfury Diamond
		i(139230),	-- Storm-Battered Legplates
		i(139323),	-- Twisting Wind
		i(139229),	-- Venom-Fanged Barbute
		i(139209),	-- Wristwraps of Broken Trust
	};
	[ILGYNOTH] = {
		i(139188),	-- Celestially Aligned Hood
		i(139187),	-- Clasp of Cosmic Insignificance
		i(139259),	-- Cube of Malice
		i(139237),	-- Dreadful Cyclopean Signet
		i(139202),	-- Dreamsculptor's Gloves
		i(139213),	-- Gauntlets of Malevolent Intent
		i(139324),	-- Goblet of Nightmarish Ichor
		i(139257),	-- Gore-Drenched Fetish
		i(139206),	-- Otherworldy Leather Mantle
		i(139233),	-- Pauldrons of Shifting Runes
		i(139258),	-- Radiating Metallic Shard
		i(139254),	-- Shrieking Bloodstone
		i(139215),	-- Singular Chain Leggings
		i(139256),	-- Sloshing Core of Hatred
		i(139325),	-- Spontaneous Appendages
		i(139227),	-- Waistplate of Nameless Horror
		i(139326),	-- Wriggling Sinew
	};
	[URSOC] = {
		i(139260),	-- Bloodied Bear Fang
		i(139329),	-- Bloodthirsty Instinct
		i(139195),	-- Crimson Wool-Lined Slippers
		i(139239),	-- Cursed Beartooth Necklace
		i(139330),	-- Heightened Senses
		i(139217),	-- Matted Fur Pauldrons
		i(139226),	-- Primal Gauntlets of Rage
		i(139196),	-- Ragged Fur Wristwraps
		i(139262),	-- Reverberating Femur
		i(139208),	-- Scarred Ragefang Chestpiece
		i(139220),	-- Scored Ironclaw Sabatons
		i(139201),	-- Splotched Bloodfur Leggings
		i(139234),	-- Trampling Warboots
		i(139261),	-- Tuft of Ironfur
		i(139327),	-- Unbridled Fury
		i(139328),	-- Ursoc's Rending Paw
	};
	[DRAGONS_NIGHTMARE] = {
		i(138228),	-- Bioluminescent Mushroom
		i(139205),	-- Cowl of Fright
		i(138218),	-- Dragonbone Wristclamps
		i(138219),	-- Dragonspur Wristguards
		i(138215),	-- Dreamscale Inlaid Vestments
		i(138227),	-- Entrancing Stone
		i(138214),	-- Gauntlets of the Demented Mind
		i(138212),	-- Handwraps of Delusional Power
		i(138216),	-- Horror Inscribed Chestguard
		i(138211),	-- Malignant Sabatons
		i(138220),	-- Mindrend Band
		i(138226),	-- Nightmare Engulfed Jewel
		i(138225),	-- Phantasmal Echo
		i(138224),	-- Unstable Horrorslime
		i(138222),	-- Vial of Nightmare Fog
	};
	[CENARIUS] = {
		i(139263),	-- Blessing of Cenarius
		i(139194),	-- Cozy Dryad Hoof-Socks
		i(139231),	-- Crown of Steely Brambles
		i(139248),	-- Evergreen Vinewrap Drape
		i(139225),	-- Fitted Ironbark Gauntlets
		i(139198),	-- Forest-Lord's Waistwrap
		i(139207),	-- Grove Keeper's Robe
		i(139333),	-- Horn of Cenarius
		i(139211),	-- Laughing Sister's Pouch-Chain
		i(139192),	-- Mantle of Perpetual Bloom
		i(139334),	-- Nature's Call
		i(139265),	-- Radiant Dragon Egg
		i(139218),	-- Thorny Bramblemail Pauldrons
		i(139264),	-- Uplifting Emerald
	};
	[XAVIUS] = {
		i(139267),	-- Azsharan Councillor's Clasp
		i(139332),	-- Blackened Portalstone Necklace
		i(139199),	-- Boots of Endless Betrayal
		i(139336),	-- Bough of Corruption
		i(139269),	-- Crystallized Drop of Eternity
		i(139216),	-- Disjointed Linkage Leggings
		i(139228),	-- Eon-Tempered Waistplate
		i(139266),	-- Fragment of Eternal Spite
		i(139335),	-- Grotesque Statuette
		i(139189),	-- Hood of Darkened Visions
		i(139193),	-- Maddening Robe of Secrets
		i(139222),	-- Manacles of the Nightmare Colossus
		i(139232),	-- Midnight Herald's Pauldrons
		i(139268),	-- Nightmarish Elm Branch
		i(139203),	-- Repulsive Leathery Pants
		i(139238),	-- Twice-Warped Azsharan Signet
	};
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(141694),	-- Gauntlets of Fractured Dreams
	i(140993),	-- Gloves of Murmured Promises
	i(140996),	-- Grips of Silent Screams
	i(141696),	-- Pendant of Liquid Horror
	i(141695),	-- Tarnished Dreamkeeper's Gauntlets
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

root(ROOTS.Instances, expansion(EXPANSION.LEGION, {
	inst(768, {	-- The Emerald Nightmare
		["coord"] = { 56.3, 36.9, VALSHARAH },
		["maps"] = {
			777,
			778,
			779,
			780,
			781,
			782,
			783,
			784,
			785,
			786,
			787,
			788,
			789,
		},
		["isRaid"] = true,
		["lvl"] = 110,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(10818, {	-- Darkbough
					crit(31428, {	-- Nythendra
						["_encounter"] = { NYTHENDRA, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(31429, {	-- Elerethe Renferal
						["_encounter"] = { ELERETHE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(31430, {	-- Il'gynoth, Heart of Corruption
						["_encounter"] = { ILGYNOTH, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(10819, {	-- Tormented Guardians
					crit(31431, {	-- Ursoc
						["_encounter"] = { URSOC, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(31433, {	-- Dragons of Nightmare
						["_encounter"] = { DRAGONS_NIGHTMARE, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(31432, {	-- Cenarius
						["_encounter"] = { CENARIUS, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(10820, {	-- Rift of Aln
					crit(31434, {	-- Xavius
						["_encounter"] = { XAVIUS, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(42029, {	-- The Emerald Nightmare (automated)
					["timeline"] = { ADDED_11_1_7 },
				}),
				ach(10866),	-- The Emerald Nightmare Guild Run
			}),
			petbattle(filter(BATTLE_PETS, {
				pet(1722, {	-- Dream Whelpling (PET!)
					["description"] = "Once you defeat Xavius these will spawn in the area after him."
				}),
			})),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				BossOnly(NYTHENDRA, {
					i(139636),	-- Vantus Rune Technique: Nythendra [Rank 1] (RECIPE!)
					i(137748),	-- Vantus Rune Technique: Nythendra [Rank 2] (RECIPE!)
				}),
				BossOnly(ELERETHE, {
					i(128611),	-- Formula: Enchant Neck - Mark of the Distant Army [Rank 3] (RECIPE!)
					i(139640),	-- Vantus Rune Technique: Elerethe Renferal [Rank 1] (RECIPE!)
					i(137752),	-- Vantus Rune Technique: Elerethe Renferal [Rank 2] (RECIPE!)
				}),
				BossOnly(ILGYNOTH, {
					i(139637),	-- Vantus Rune Technique: Il'gynoth, The Heart of Corruption [Rank 1] (RECIPE!)
					i(137749),	-- Vantus Rune Technique: Il'gynoth, The Heart of Corruption [Rank 2] (RECIPE!)
				}),
				BossOnly(URSOC, {
					i(141917),	-- Formula: Enchant Neck - Mark of the Heavy Hide [Rank 3] (RECIPE!)
					i(139635),	-- Vantus Rune Technique: Ursoc [Rank 1] (RECIPE!)
					i(137747),	-- Vantus Rune Technique: Ursoc [Rank 2] (RECIPE!)
				}),
				BossOnly(DRAGONS_NIGHTMARE, {
					i(136903),	-- Nightmare Whelpling (PET!)
					i(139638),	-- Vantus Rune Technique: Dragons of Nightmare [Rank 1] (RECIPE!)
					i(137750),	-- Vantus Rune Technique: Dragons of Nightmare [Rank 2] (RECIPE!)
				}),
				BossOnly(CENARIUS, {
					i(127934),	-- Recipe: Spirit Cauldron [Rank 2] (RECIPE!)
					i(139641),	-- Vantus Rune Technique: Cenarius [Rank 1] (RECIPE!)
					i(137753),	-- Vantus Rune Technique: Cenarius [Rank 2] (RECIPE!)
				}),
				BossOnly(XAVIUS, {
					i(128612),	-- Formula: Enchant Neck - Mark of the Hidden Satyr [Rank 3] (RECIPE!)
					i(138827),	-- Illusion: Nightmare (ILLUSION!)
					i(139639),	-- Vantus Rune Technique: Xavius [Rank 1] (RECIPE!)
					i(137751),	-- Vantus Rune Technique: Xavius [Rank 2] (RECIPE!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["cr"] = 111246,	-- Archmage Timear
				["coord"] = { 63.7, 55.0, LEGION_DALARAN },
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroups({
				ZoneDrops({}),
				header(HEADERS.LFGDungeon, 1287, {	-- Darkbough
					Boss(NYTHENDRA),
					Boss(ELERETHE),
					Boss(ILGYNOTH),
				}),
				header(HEADERS.LFGDungeon, 1288, {	-- Tormented Guardians
					Boss(URSOC),
					Boss(DRAGONS_NIGHTMARE),
					Boss(CENARIUS),
				}),
				header(HEADERS.LFGDungeon, 1289, {	-- Rift of Aln
					Boss(XAVIUS),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				CommonBossDrops({
					i(139706),	-- Corrupted Essence
					i(139771, {	-- Seething Essence
						i(139706),	-- Corrupted Essence
					}),
				}),
				BossOnly(NYTHENDRA, {
					ach(10555, {	-- Buggy Fight
						["cr"] = 105097,	-- Glow Bug
					}),
				}),
				BossOnly(ELERETHE, {
					ach(10771, {	-- Webbing Crashers
						["cr"] = 112078,	-- Pulsing Egg Sac
					}),
				}),
				BossOnly(ILGYNOTH, {
					ach(10830, {	-- Took the Red Eye Down
						["crs"] = {
							105304,	-- Dominator Tentacle
							105322,	-- Deathglare Tentacle
							105591,	-- Nightmare Horror
							105383,	-- Corruptor Tentacle
						},
					}),
					i(139569, {	-- Claw of N'Zoth
						-- ["sourceQuest"] = , TODO
					}),
				}),
				BossOnly(URSOC, {
					ach(10753, {	-- Scare Bear
						["cr"] = 111263,	-- Tur Ragepaw
					}),
					i(139557, {	-- Last Breath of the Forest
						-- ["sourceQuest"] = , TODO
					}),
					i(139553, {	-- Mark of the Glade Guardian
						-- ["sourceQuest"] = , TODO
					}),
				}),
				BossOnly(DRAGONS_NIGHTMARE, {
					ach(10663),	-- Imagined Dragons World Tour
					i(139562, {	-- Breath of the Undying Serpent
						-- ["sourceQuest"] = , TODO
					}),
				}),
				BossOnly(CENARIUS, {
					ach(10772, {	-- Use the Force(s)
						crit(31349, {	-- Dryads Uncleansed
							["cr"] = 105495,	-- Twisted Sister
						}),
						crit(31350, {	-- Treants Uncleansed
							["cr"] = 105468,	-- Nightmare Ancient
						}),
						crit(31351, {	-- Wisps Uncleansed
							["cr"] = 113774,	-- Corrupted Wisp
						}),
						crit(31348, {	-- Drakes Uncleansed
							["cr"] = 105494,	-- Rotten Drake
						}),
					}),
				}),
				BossOnly(XAVIUS, {
					ach(10755),	-- I Attack the Darkness
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
				ZoneDrops({}),
				n(QUESTS, {
					q(44283, {	-- The Emerald Nightmare: Piercing the Veil (Normal)
						["description"] = "Finishing this quest will grant you immediate access to Cenarius on Normal difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Heroic or Mythic version first.|r\n",
						["altQuests"] = {
							44284,	-- The Emerald Nightmare: Piercing the Veil (Heroic)
							44285,	-- The Emerald Nightmare: Piercing the Veil (Mythic)
						},
						["qg"] = 106482,	-- Malfurion Stormrage
						["groups"] = { i(141303) },	-- Essence of Clarity (QI!)
					}),
				}),
				Boss(NYTHENDRA),
				Boss(ELERETHE),
				Boss(ILGYNOTH),
				Boss(URSOC),
				Boss(DRAGONS_NIGHTMARE),
				Boss(CENARIUS),
				Boss(XAVIUS),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				BossOnly(XAVIUS, {
					ach(11194, {	-- Ahead of the Curve: Xavius
						["timeline"] = { REMOVED_7_1_0 },
					}),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
				ZoneDrops({}),
				n(QUESTS, {
					q(44284, {	-- The Emerald Nightmare: Piercing the Veil [Heroic]
						["description"] = "Finishing this quest will grant you immediate access to Cenarius on Heroic difficulty each week.\n\n|cfffd1818This quest becomes unobtainable if you complete the Mythic version first.|r\n",
						["altQuests"] = { 44285 },	-- The Emerald Nightmare: Piercing the Veil (Mythic)
						["qg"] = 106482,	-- Malfurion Stormrage
						["groups"] = { i(141304) },	-- Essence of Clarity (QI!)
					}),
				}),
				Boss(NYTHENDRA),
				Boss(ELERETHE),
				Boss(ILGYNOTH),
				Boss(URSOC),
				Boss(DRAGONS_NIGHTMARE),
				Boss(CENARIUS),
				Boss(XAVIUS, {
					i(141006),	-- The First Satyr's Spaulders [Heroic and Mythic only!]
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				ZoneDrops({}),
				n(QUESTS, {
					q(44285, {	-- The Emerald Nightmare: Piercing the Veil [Mythic]
						["description"] = "Finishing this quest will grant you immediate access to Cenarius on Mythic difficulty each week.\n",
						["qg"] = 106482,	-- Malfurion Stormrage
						["groups"] = { i(141305) },	-- Essence of Clarity (QI!)
					}),
				}),
				Boss(NYTHENDRA, {
					ach(10821),	-- Mythic: Nythendra
				}),
				Boss(ELERETHE, {
					ach(10822),	-- Mythic: Elerethe Renferal
				}),
				Boss(ILGYNOTH, {
					ach(10823),	-- Mythic: Il'gynoth
				}),
				Boss(URSOC, {
					ach(10824),	-- Mythic: Ursoc
				}),
				Boss(DRAGONS_NIGHTMARE, {
					ach(10825),	-- Mythic: Dragons of Nightmare
				}),
				Boss(CENARIUS, {
					ach(10826),	-- Mythic: Cenarius
				}),
				Boss(XAVIUS, {
					ach(11191, {	-- Cutting Edge: Xavius
						["timeline"] = { REMOVED_7_1_0 },
					}),
					i(141006),	-- The First Satyr's Spaulders [Heroic and Mythic only!]
					ach(10854, {	-- Realm First! Xavius
						["u"] = REMOVED_FROM_GAME,
					}),
					ach(10827, {	-- Mythic: Xavius
					ach(11238),	-- Mythic: Xavius Guild Run
						title(341),	-- The Dreamer
					}),
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	inst(768, {
		q(44142),	-- Nythendra
		q(44143),	-- Il'gynoth, Heart of Corruption
		q(44144),	-- Elerethe Renferal
		q(44145),	-- Ursoc
		q(44146),	-- Dragons of Nightmare
		q(44147),	-- Cenarius
		q(44148),	-- Xavius
	}),
})));
