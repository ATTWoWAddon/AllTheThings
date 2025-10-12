-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local ODYN = 1819;
local GUARM = 1830;
local HELYA = 1829;

------ EncounterToCRS ------
local EncounterToCRS = {
	[ODYN] = { 114263 },	-- Odyn
	[GUARM] = {
		114344,	-- Guarm
		114323,	-- Guarm
	},
	[HELYA] = { 114537 },	-- Helya
};

------ EncounterToLoot ------
local EncounterToLoot = {
	[ODYN] = {
		i(142508),	-- Chains of the Valorous
		i(142411),	-- Cinch of Light
		i(142519),	-- Favor of the Prime Designate
		i(142431),	-- Gleaming Val'kyr Cuirass
		i(142430),	-- Gloves of Issued Challenge
		i(142425),	-- Goldrune Legplates
		i(142421),	-- Leggings of the Undaunted
		i(142540),	-- Mantle of the Victorious Dead
		i(142422),	-- Radiant Soul Sabatons
		i(142514),	-- Ravens' Sight
		i(142520),	-- Ring of Ascended Glory
		i(142410),	-- Robes of Celestial Adornment
		i(142419),	-- Sky-Valiant's Wristguards
		i(142511),	-- Unforged Titansteel
	};
	[GUARM] = {
		i(142512),	-- Accursed Cuspid
		i(142423),	-- Bite-Resistant Wristclamps
		i(142515),	-- Chilled Incisor
		i(142506),	-- Eye of Guarm
		i(142432),	-- Helbeast Skin Tunic
		i(142415),	-- Helhound Hair Bracers
		i(142434),	-- Kvaldir Exult's Grips
		i(142426),	-- Lead-Soled Seabed Striders
		i(142413),	-- Leggings of the Lower Planes
		i(142417),	-- Moccasins of Silent Passage
		i(142435),	-- Reinforced Hound-Handler's Gauntlets
		i(142516),	-- Sizzling Fang
		i(142412),	-- Windwhipped Sailcloth
	};
	[HELYA] = {
		i(142420),	-- Anchor Chain Waistguard
		i(142507),	-- Brinewater Slime in a Bottle
		i(142427),	-- Calcareous Wristclamps
		i(142433),	-- Corroded Val'kyr Chainmail
		i(142521),	-- Drape of the Unworthy
		i(142518),	-- Fury of the Sea
		i(142424),	-- Krakenbone Waistplate
		i(142429),	-- Oiled Rigger's Handwraps
		i(142510),	-- Phylactery of Unwilling Servitude
		i(142428),	-- Sea Fan Pendant
		i(142416),	-- Strand of Whelk Shells
		i(142418),	-- Sucker-Scarred Leggings
		i(142517),	-- Swell of the Tides
		i(142513),	-- Token of the Lightning Keeper
		i(142414),	-- Treads of the Drowned
	};
};

------ Zone Drops ----------
local ZoneDropLoot = {
	i(142541),	-- Drape of the Forgotten Souls
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS, EncounterToLoot, ZoneDropLoot)
local Boss, BossOnly, Difficulty, CommonBossDrops, ZoneDrops =
InstanceHelper.Boss, InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops, InstanceHelper.ZoneDrops

root(ROOTS.Instances, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_1_0 } }, {
	inst(861, {	-- Trial of Valor
		["coord"] = { 70.4, 69.4, STORMHEIM },
		["maps"] = { 806, 807, 808 },
		["isRaid"] = true,
		["lvl"] = 110,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(11762, {["timeline"] = {ADDED_7_2_0}}),	-- Can I Get A Helya (Trial of Valor)
				ach(11394, {	-- Trial of Valor
					crit(34578, {	-- Odyn
						["_encounter"] = { ODYN, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(34800, {	-- Guarm
						["_encounter"] = { GUARM, DIFFICULTY.RAID.MULTI.ALL },
					}),
					crit(34799, {	-- Helya
						["_encounter"] = { HELYA, DIFFICULTY.RAID.MULTI.ALL },
					}),
				}),
				ach(11426, {	-- Heroic: Trial of Valor
					crit(34839, {	-- Odyn
						["_encounter"] = { ODYN, DIFFICULTY.RAID.HEROIC },
					}),
					crit(34841, {	-- Guarm
						["_encounter"] = { GUARM, DIFFICULTY.RAID.HEROIC },
					}),
					crit(34840, {	-- Helya
						["_encounter"] = { HELYA, DIFFICULTY.RAID.HEROIC },
					}),
				}),
				ach(11403),	-- Trial of Valor Guild Run
			}),
			n(QUESTS, {
				q(44868, {	-- Trial of Valor: Odyn's Judgment
					["sourceQuest"] = 44729,	-- Trial of Valor: Odyn's Favor
					["provider"] = { "n", 114263 },	-- Odyn
				}),
				q(45088, {	-- Trial of Valor: The Lost Army
					["provider"] = { "n", 114263 },	-- Odyn
					["groups"] = {
						i(142487),	-- Valarjar Soul Fragment (QI!)
						--
						iensemble(143506, {	-- Ensemble: Vestment of the Chosen Dead
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(143510, {	-- Ensemble: Garb of the Chosen Dead
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(143514, {	-- Ensemble: Chains of the Chosen Dead
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(143518, {	-- Ensemble: Funerary Plate of the Chosen Dead
							["classes"] = PLATE_CLASSES,
						}),
					},
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
				CommonBossDrops({
					iensemble(143509, {	-- Ensemble: Vestment of the Chosen Dead
						["classes"] = CLOTH_CLASSES,
					}),
					iensemble(143513, {	-- Ensemble: Garb of the Chosen Dead
						["classes"] = LEATHER_CLASSES,
					}),
					iensemble(143517, {	-- Ensemble: Chains of the Chosen Dead
						["classes"] = MAIL_CLASSES,
					}),
					iensemble(143521, {	-- Ensemble: Funerary Plate of the Chosen Dead
						["classes"] = PLATE_CLASSES,
					}),
				}),
				BossOnly(ODYN, {
					i(142110),	-- Vantus Rune Technique: Odyn [Rank 1] (RECIPE!)
					i(142104),	-- Vantus Rune Technique: Odyn [Rank 2] (RECIPE!)
				}),
				BossOnly(GUARM, {
					i(142111),	-- Vantus Rune Technique: Guarm [Rank 1] (RECIPE!)
					i(142105),	-- Vantus Rune Technique: Guarm [Rank 2] (RECIPE!)
				}),
				BossOnly(HELYA, {
					i(142112),	-- Vantus Rune Technique: Helya [Rank 1] (RECIPE!)
					i(142106),	-- Vantus Rune Technique: Helya [Rank 2] (RECIPE!)
				}),
			}),
			Difficulty(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["cr"] = 111246,	-- Archmage Timear
				["coord"] = { 63.7, 55.0, LEGION_DALARAN },
			}),
			Difficulty(DIFFICULTY.RAID.LFR).AddGroups({
				ZoneDrops({}),
				header(HEADERS.LFGDungeon, 1411, {	-- Trial of Valor
					Boss(ODYN),
					Boss(GUARM),
					Boss(HELYA),
				}),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
				BossOnly(ODYN, {
					ach(11337),	-- You Runed Everything!
				}),
				BossOnly(GUARM, {
					ach(11386, {	-- Boneafide Tri Tip
						["crs"] = { 116404 },	-- Guarm's Chew Toy
					}),
				}),
				BossOnly(HELYA, {
					ach(11377),	-- Patient Zero
				}),
			}),
			Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
				ZoneDrops({}),
				Boss(ODYN),
				Boss(GUARM),
				Boss(HELYA),
			}),
			Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
				CommonBossDrops({
					iensemble(143507, {	-- Ensemble: Vestment of the Chosen Dead
						["classes"] = CLOTH_CLASSES,
						["crs"] = { 116245 },	-- Heroic Champion of the Chosen Dead
					}),
					iensemble(143511, {	-- Ensemble: Garb of the Chosen Dead
						["classes"] = LEATHER_CLASSES,
						["crs"] = { 116245 },	-- Heroic Champion of the Chosen Dead
					}),
					iensemble(143515, {	-- Ensemble: Chains of the Chosen Dead
						["classes"] = MAIL_CLASSES,
						["crs"] = { 116245 },	-- Heroic Champion of the Chosen Dead
					}),
					iensemble(143519, {	-- Ensemble: Funerary Plate of the Chosen Dead
						["classes"] = PLATE_CLASSES,
						["crs"] = { 116245 },	-- Heroic Champion of the Chosen Dead
					}),
				}),
				BossOnly(ODYN),
				BossOnly(GUARM),
				BossOnly(HELYA, {
					ach(11581, {	-- Ahead of the Curve: Helya
						["timeline"] = { REMOVED_7_2_0 },
					}),
				})
			}),
			Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
				ZoneDrops({}),
				Boss(ODYN),
				Boss(GUARM),
				Boss(HELYA),
			}),
			Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
				ZoneDrops({}),
				Boss(ODYN, {
					ach(11396),	-- Mythic: Odyn
				}),
				Boss(GUARM, {
					ach(11397),	-- Mythic: Guarm
				}),
				Boss(HELYA, {
					ach(11580, {	-- Cutting Edge: Helya
						["timeline"] = { REMOVED_7_2_0 },
					}),
					ach(11398),	-- Mythic: Helya
					ach(11404),	-- Mythic: Helya Guild Run
					un(REMOVED_FROM_GAME, ach(11405)),	-- Realm First! Helya
					ach(11387, {	-- The Chosen
						["crs"] = { 116229 },	-- Mythical Champion of the Chosen Dead
						["timeline"] = { REMOVED_8_0_1 },
						["groups"] = {
							title(347),	-- The Chosen
							iensemble(143508, {	-- Ensemble: Vestment of the Chosen Dead
								["classes"] = CLOTH_CLASSES,
							}),
							iensemble(143512, {	-- Ensemble: Garb of the Chosen Dead
								["classes"] = LEATHER_CLASSES,
							}),
							iensemble(143516, {	-- Ensemble: Chains of the Chosen Dead
								["classes"] = MAIL_CLASSES,
							}),
							iensemble(143520, {	-- Ensemble: Funerary Plate of the Chosen Dead
								["classes"] = PLATE_CLASSES,
							}),
						},
					}),
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_5 } }, {
	inst(861, {	-- Trial of Valor
		q(46661),	-- Odyn LFR
		q(46662),	-- Odyn Normal
		q(46663),	-- Odyn Heroic
		q(46664),	-- Odyn Mythic
		q(45429),	-- Odyn
		q(45430),	-- Guarm
		q(45431),	-- Helya
	}),
})));
