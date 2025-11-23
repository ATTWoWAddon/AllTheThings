-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
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

local COMMONLOOT = {
	filter(CLOAKS, {
		i(247591),	-- Drape of the Unworthy
		i(247592),	-- Mantle of the Victorious Dead
		i(247568),	-- Windwhipped Sailcloth
	}),
	filter(CLOTH, {
		i(247567),	-- Cinch of Light
		i(247571),	-- Helhound Hair Bracers
		i(247569),	-- Leggings of the Lower Planes
		i(247584),	-- Oiled Rigger's Handwraps
		i(247566),	-- Robes of Celestial Adornment
		i(247570),	-- Treads of the Drowned
	}),
	filter(LEATHER, {
		i(247585),	-- Gloves of Issued Challenge
		i(247587),	-- Helbeast Skin Tunic
		i(247573),	-- Moccasins of Silent Passage
		i(247575),	-- Sky-Valiant's Wristguards
		i(247572),	-- Strand of Whelk Shells
		i(247574),	-- Sucker-Scarred Leggings
	}),
	filter(MAIL, {
		i(247576),	-- Anchor Chain Waistguard
		i(247579),	-- Bite-Resistant Wristclamps
		i(247588),	-- Corroded Val'kyr Chainmail
		i(247589),	-- Kvaldir Exult's Grips
		i(247577),	-- Leggings of the Undaunted
		i(247578),	-- Radiant Soul Sabatons
	}),
	filter(PLATE, {
		i(247583),	-- Calcareous Wristclamps
		i(247586),	-- Gleaming Val'kyr Cuirass
		i(247581),	-- Goldrune Legplates
		i(247580),	-- Krakenbone Waistplate
		i(247582),	-- Lead-Soled Seabed Striders
		i(247590),	-- Reinforced Hound-Handler's Gauntlets
	}),
};

-- These items don't exist in Mythic difficulty (they do only as Normal and Heroic)
local COMMONLOOT_NORMAL_HEROIC = {
	filter(CLOTH, {
		i(249684),	-- Horns of Unwavering Faith
		i(249685),	-- Mantle of Unforgotten Souls
	}),
	filter(LEATHER, {
		i(249683),	-- Shoulderguards of Divine Arts
		i(249682),	-- Supreme Runecaster's Crown
	}),
	filter(MAIL, {
		i(249680),	-- Ordained Hunter's Crown
		i(249681),	-- Shoulders of the Dragonslayer
	}),
	filter(PLATE, {
		i(249678),	-- Helheim Hound's Visor
		i(249679),	-- Sovereign Valarjar Mantle
	}),
};

-- These items are copy of the Normal difficulty for Mythic, since it drops the same items
local COMMONLOOT_MYTHIC = {
	filter(CLOTH, {
		i(249684, {["ItemAppearanceModifierID"] = 0}),	-- Horns of Unwavering Faith
		i(249685, {["ItemAppearanceModifierID"] = 0}),	-- Mantle of Unforgotten Souls
	}),
	filter(LEATHER, {
		i(249683, {["ItemAppearanceModifierID"] = 0}),	-- Shoulderguards of Divine Arts
		i(249682, {["ItemAppearanceModifierID"] = 0}),	-- Supreme Runecaster's Crown
	}),
	filter(MAIL, {
		i(249680, {["ItemAppearanceModifierID"] = 0}),	-- Ordained Hunter's Crown
		i(249681, {["ItemAppearanceModifierID"] = 0}),	-- Shoulders of the Dragonslayer
	}),
	filter(PLATE, {
		i(249678, {["ItemAppearanceModifierID"] = 0}),	-- Helheim Hound's Visor
		i(249679, {["ItemAppearanceModifierID"] = 0}),	-- Sovereign Valarjar Mantle
	}),
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(RAIDS, {
		inst(861, {	-- Trial of Valor
			["coord"] = { 70.4, 69.4, STORMHEIM },
			["maps"] = { 806, 807, 808 },
			["isRaid"] = true,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42558, {	-- Raid Finder: Trial of Valor
						crit(108625, {	-- Odyn
							["_encounter"] = { ODYN, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108624, {	-- Guarm
							["_encounter"] = { GUARM, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108626, {	-- Helya
							["_encounter"] = { HELYA, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60860, {	-- Trial of Valor
						crit(107152, {	-- Odyn
							["_encounter"] = { ODYN, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107153, {	-- Guarm
							["_encounter"] = { GUARM, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(106071, {	-- Helya
							["_encounter"] = { HELYA, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(42639, {	-- Heroic: Trial of Valor
						crit(108619, {	-- Odyn
							["_encounter"] = { ODYN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108618, {	-- Guarm
							["_encounter"] = { GUARM, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108620, {	-- Helya
							["_encounter"] = { HELYA, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
					}),
					ach(42636, {	-- Mythic: Trial of Valor
						crit(108622, {	-- Odyn
							["_encounter"] = { ODYN, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108621, {	-- Guarm
							["_encounter"] = { GUARM, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108623, {	-- Helya
							["_encounter"] = { HELYA, DIFFICULTY.RAID.MYTHIC },
						}),
					}),
					ach(61024, {	-- The Deathless Champion
						["classes"] = { DEATHKNIGHT, PALADIN, WARRIOR },
						["groups"] = { iensemble(241596) },	-- Ensemble: Funerary Plate of the Chosen Dead
					}),
					ach(61027, {	-- The Deathless Magus
						["classes"] = { MAGE, PRIEST, WARLOCK },
						["groups"] = { iensemble(241608) },	-- Ensemble: Regalia of the Chosen Dead
					}),
					ach(61025, {	-- The Deathless Marauder
						["classes"] = { HUNTER, SHAMAN },
						["groups"] = { iensemble(241599) },	-- Ensemble: Chains of the Chosen Dead
					}),
					ach(61026, {	-- The Deathless Wanderer
						["classes"] = { DEMONHUNTER, DRUID, MONK, ROGUE },
						["groups"] = { iensemble(241603) },	-- Ensemble: Garb of the Chosen Dead
					}),
				}),
				n(RAID_GEAR_CONVERSION, bubbleDown({ ["modID"] = 4 }, {
					filter(CLOAKS, {
						i_RAID_GEAR_CONVERSION(247591),	-- Drape of the Unworthy
						i_RAID_GEAR_CONVERSION(247592),	-- Mantle of the Victorious Dead
						i_RAID_GEAR_CONVERSION(247568),	-- Windwhipped Sailcloth
					}),
					filter(CLOTH, {
						i_RAID_GEAR_CONVERSION(247567),	-- Cinch of Light
						i_RAID_GEAR_CONVERSION(247571),	-- Helhound Hair Bracers
						i_RAID_GEAR_CONVERSION(249684),	-- Horns of Unwavering Faith
						i_RAID_GEAR_CONVERSION(247569),	-- Leggings of the Lower Planes
						i_RAID_GEAR_CONVERSION(249685),	-- Mantle of Unforgotten Souls
						i_RAID_GEAR_CONVERSION(247584),	-- Oiled Rigger's Handwraps
						i_RAID_GEAR_CONVERSION(247566),	-- Robes of Celestial Adornment
						i_RAID_GEAR_CONVERSION(247570),	-- Treads of the Drowned
					}),
					filter(LEATHER, {
						i_RAID_GEAR_CONVERSION(247585),	-- Gloves of Issued Challenge
						i_RAID_GEAR_CONVERSION(247587),	-- Helbeast Skin Tunic
						i_RAID_GEAR_CONVERSION(247573),	-- Moccasins of Silent Passage
						i_RAID_GEAR_CONVERSION(249683),	-- Shoulderguards of Divine Arts
						i_RAID_GEAR_CONVERSION(247575),	-- Sky-Valiant's Wristguards
						i_RAID_GEAR_CONVERSION(247572),	-- Strand of Whelk Shells
						i_RAID_GEAR_CONVERSION(247574),	-- Sucker-Scarred Leggings
						i_RAID_GEAR_CONVERSION(249682),	-- Supreme Runecaster's Crown
					}),
					filter(MAIL, {
						i_RAID_GEAR_CONVERSION(247576),	-- Anchor Chain Waistguard
						i_RAID_GEAR_CONVERSION(247579),	-- Bite-Resistant Wristclamps
						i_RAID_GEAR_CONVERSION(247588),	-- Corroded Val'kyr Chainmail
						i_RAID_GEAR_CONVERSION(247589),	-- Kvaldir Exult's Grips
						i_RAID_GEAR_CONVERSION(247577),	-- Leggings of the Undaunted
						i_RAID_GEAR_CONVERSION(249680),	-- Ordained Hunter's Crown
						i_RAID_GEAR_CONVERSION(247578),	-- Radiant Soul Sabatons
						i_RAID_GEAR_CONVERSION(249681),	-- Shoulders of the Dragonslayer
					}),
					filter(PLATE, {
						i_RAID_GEAR_CONVERSION(247583),	-- Calcareous Wristclamps
						i_RAID_GEAR_CONVERSION(247586),	-- Gleaming Val'kyr Cuirass
						i_RAID_GEAR_CONVERSION(247581),	-- Goldrune Legplates
						i_RAID_GEAR_CONVERSION(249678),	-- Helheim Hound's Visor
						i_RAID_GEAR_CONVERSION(247580),	-- Krakenbone Waistplate
						i_RAID_GEAR_CONVERSION(247582),	-- Lead-Soled Seabed Striders
						i_RAID_GEAR_CONVERSION(247590),	-- Reinforced Hound-Handler's Gauntlets
						i_RAID_GEAR_CONVERSION(249679),	-- Sovereign Valarjar Mantle
					}),
				})),
				Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
					header(HEADERS.Achievement, 42558, {	-- Raid Finder: Trial of Valor
						BossOnly(ODYN),
						BossOnly(GUARM),
						BossOnly(HELYA),
					}),
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
					BossOnly(ODYN),
					BossOnly(GUARM),
					BossOnly(HELYA),
				}),
				Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
					CommonBossDrops(clone(COMMONLOOT_NORMAL_HEROIC))
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
					BossOnly(ODYN),
					BossOnly(GUARM),
					BossOnly(HELYA),
				}),
				Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
					CommonBossDrops(clone(COMMONLOOT_NORMAL_HEROIC))
				}),
				Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
					CommonBossDrops(clone(COMMONLOOT_MYTHIC)),
					BossOnly(ODYN),
					BossOnly(GUARM),
					BossOnly(HELYA),
				}),
			},
		}),
	}),
})));
