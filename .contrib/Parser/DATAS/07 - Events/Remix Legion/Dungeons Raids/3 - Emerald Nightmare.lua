-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
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

local COMMONLOOT = {
	filter(CLOAKS, {
		i(247560),	-- Evergreen Vinewrap Drape
		i(247512),	-- Gossamer-Spun Greatcloak
	}),
	filter(CLOTH, {
		i(247517),	-- Ancient Dreamwoven Mantle
		i(247514),	-- Celestially Aligned Hood
		i(247513),	-- Clasp of Cosmic Insignificance
		i(247520),	-- Cozy Dryad Hoof-Socks
		i(247521),	-- Crimson Wool-Lined Slippers
		i(247507),	-- Dreamscale Inlaid Vestments
		i(247561),	-- Gloves of Murmured Promises
		i(247505),	-- Handwraps of Delusional Power
		i(247515),	-- Hood of Darkened Visions
		i(247519),	-- Maddening Robe of Secrets
		i(247518),	-- Mantle of Perpetual Bloom
		i(247509),	-- Pliable Spider Silk Cinch
		i(247516),	-- Ragged Horrorweave Leggings
		i(247522),	-- Ragged Fur Wristwraps
	}),
	filter(LEATHER, {
		i(247525),	-- Boots of Endless Betrayal
		i(247531),	-- Cowl of Fright
		i(247511),	-- Dragonspur Wristguards
		i(247528),	-- Dreamsculptor's Gloves
		i(247524),	-- Forest-Lord's Waistwrap
		i(247533),	-- Grove Keeper's Robe
		i(247523),	-- Lifeless Buckled Girdle
		i(247530),	-- Mask of Multitudinous Eyes
		i(247532),	-- Otherworldly Leather Mantle
		i(247529),	-- Repulsive Leathery Pants
		i(247534),	-- Scarred Ragefang Chestpiece
		i(247527),	-- Splotched Bloodfur Leggings
		i(247526),	-- Stained Maggot Squishers
		i(247535),	-- Wristwraps of Broken Trust
	}),
	filter(MAIL, {
		i(247544),	-- Black Venom Sabatons
		i(247537),	-- Creeping String of Larva
		i(247541),	-- Disjointed Linkage Leggings
		i(247564),	-- Gauntlets of Fractured Dreams
		i(247538),	-- Gauntlets of Malevolent Intent
		i(247506),	-- Gauntlets of the Demented Mind
		i(247539),	-- Greyed Dragonscale Coif
		i(247036),	-- Helm of Shackled Elements
		i(247536),	-- Laughing Sister's Pouch-Chain
		i(247504),	-- Malignant Sabatons
		i(247547),	-- Manacles of the Nightmare Colossus
		i(247542),	-- Matted Fur Pauldrons
		i(247546),	-- Patient Ambusher's Hauberk
		i(247545),	-- Scored Ironclaw Sabatons
		i(247540),	-- Singular Chain Leggings
		i(247543),	-- Thorny Bramblemail Pauldrons
	}),
	filter(PLATE, {
		i(247555),	-- Crown of Steely Brambles
		i(247510),	-- Dragonbone Wristclamps
		i(247552),	-- Eon-Tempered Waistplate
		i(247549),	-- Fitted Ironbark Gauntlets
		i(247508),	-- Horror Inscribed Chestguard
		i(247548),	-- Insect-Etched Chestplate
		i(247556),	-- Midnight Herald's Pauldrons
		i(247557),	-- Pauldrons of Shifting Runes
		i(247550),	-- Primal Gauntlets of Rage
		i(247554),	-- Storm-Battered Legplates
		i(247565),	-- Tarnished Dreamkeeper's Gauntlets
		i(247558),	-- Trampling Warboots
		i(247553),	-- Venom-Fanged Barbute
		i(247551),	-- Waistplate of Nameless Horror
		i(247559),	-- Wristclamps of Mad Dreams
	}),
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(RAIDS, {
		inst(768, {	-- The Emerald Nightmare
			["coord"] = { 56.3, 36.9, VALSHARAH },
			["maps"] = { 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789 },
			["isRaid"] = true,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42603, {	-- Raid Finder: Emerald Nightmare
						crit(108566, {	-- Nythendra
							["_encounter"] = { NYTHENDRA, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108565, {	-- Elerethe Renferal
							["_encounter"] = { ELERETHE, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108564, {	-- Il'gynoth, Heart of Corruption
							["_encounter"] = { ILGYNOTH, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108563, {	-- Ursoc
							["_encounter"] = { URSOC, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108562, {	-- Dragons of Nightmare
							["_encounter"] = { DRAGONS_NIGHTMARE, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108569, {	-- Cenarius
							["_encounter"] = { CENARIUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108569, {	-- Xavius
							["_encounter"] = { XAVIUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60859, {	-- The Emerald Nightmare
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60856,	-- Darkbough
							60857,	-- Tormented Guardians
							60858,	-- Rift of Aln
						}},
					}),
					ach(60856, {	-- Darkbough
						crit(107143, {	-- Nythendra
							["_encounter"] = { NYTHENDRA, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107144, {	-- Elerethe Renferal
							["_encounter"] = { ELERETHE, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107145, {	-- Il'gynoth, Heart of Corruption
							["_encounter"] = { ILGYNOTH, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60857, {	-- Tormented Guardians
						crit(107146, {	-- Ursoc
							["_encounter"] = { URSOC, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107147, {	-- Dragons of Nightmare
							["_encounter"] = { DRAGONS_NIGHTMARE, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107148, {	-- Cenarius
							["_encounter"] = { CENARIUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60858, {	-- Rift of Aln
						crit(106078, {	-- Xavius
							["_encounter"] = { XAVIUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(42531, {	-- Heroic: Emerald Nightmare
						crit(108492, {	-- Nythendra
							["_encounter"] = { NYTHENDRA, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108491, {	-- Elerethe Renferal
							["_encounter"] = { ELERETHE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108490, {	-- Il'gynoth, Heart of Corruption
							["_encounter"] = { ILGYNOTH, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108489, {	-- Ursoc
							["_encounter"] = { URSOC, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108488, {	-- Dragons of Nightmare
							["_encounter"] = { DRAGONS_NIGHTMARE, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108487, {	-- Cenarius
							["_encounter"] = { CENARIUS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108495, {	-- Xavius
							["_encounter"] = { XAVIUS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
					}),
					ach(42651, {	-- Mythic: Emerald Nightmare
						crit(108529, {	-- Nythendra
							["_encounter"] = { NYTHENDRA, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108528, {	-- Elerethe Renferal
							["_encounter"] = { ELERETHE, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108527, {	-- Il'gynoth, Heart of Corruption
							["_encounter"] = { ILGYNOTH, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108526, {	-- Ursoc
							["_encounter"] = { URSOC, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108525, {	-- Dragons of Nightmare
							["_encounter"] = { DRAGONS_NIGHTMARE, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108524, {	-- Cenarius
							["_encounter"] = { CENARIUS, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108532, {	-- Xavius
							["_encounter"] = { XAVIUS, DIFFICULTY.RAID.MYTHIC },
						}),
					}),
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
					header(HEADERS.Achievement, 60856, {	-- Darkbough
						BossOnly(NYTHENDRA),
						BossOnly(ELERETHE),
						BossOnly(ILGYNOTH),
					}),
					header(HEADERS.Achievement, 60857, {	-- Tormented Guardians
						BossOnly(URSOC),
						BossOnly(DRAGONS_NIGHTMARE),
						BossOnly(CENARIUS),
					}),
					header(HEADERS.Achievement, 60858, {	-- Rift of Aln
						BossOnly(XAVIUS),
					}),
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
					BossOnly(NYTHENDRA),
					BossOnly(ELERETHE),
					BossOnly(ILGYNOTH),
					BossOnly(URSOC),
					BossOnly(DRAGONS_NIGHTMARE),
					BossOnly(CENARIUS),
					BossOnly(XAVIUS, {
						i(242370),	-- Horns of the First Satyr
					}),
				}),
				Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
					BossOnly(NYTHENDRA),
					BossOnly(ELERETHE),
					BossOnly(ILGYNOTH),
					BossOnly(URSOC),
					BossOnly(DRAGONS_NIGHTMARE),
					BossOnly(CENARIUS),
					BossOnly(XAVIUS),
				}),
				Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
				}),
				Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
					BossOnly(NYTHENDRA),
					BossOnly(ELERETHE),
					BossOnly(ILGYNOTH),
					BossOnly(URSOC),
					BossOnly(DRAGONS_NIGHTMARE),
					BossOnly(CENARIUS),
					BossOnly(XAVIUS),
				}),
			},
		}),
	}),
})));
