-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

------ Encounter Constants ------
local WORLDBREAKER = 1992;
local FELHOUNDS = 1987;
local HIGH_COMMAND = 1997;
local HASABEL = 1985;
local EONAR = 2025;
local IMONAR = 2009;
local KINGAROTH = 2004;
local VARIMATHRAS = 1983;
local COVEN = 1986;
local AGGRAMAR = 1984;
local ARGUS = 2031;

------ EncounterToCRS ------
local EncounterToCRS = {
	[WORLDBREAKER] = { 122450 },	-- Garothi Worldbreaker
	[FELHOUNDS] = {	-- Felhounds of Sargeras
		122477,	-- F'harg
		122135,	-- Shatug
	},
	[HIGH_COMMAND] = {	-- Antoran High Command
		122367,	-- Admiral Svirax
		122369,	-- Chief Engineer Ishkar
		122333,	-- General Erodus
	},
	[HASABEL] = { 122104 },		-- Portal Keeper Hasabel
	[EONAR] = {	-- Eonar the Life-Bender
		122500,	-- Essence of Eonar
		124445,	-- The Paraxis
	},
	[IMONAR] = { 124158 },	-- Imonar the Soulhunter
	[KINGAROTH] = { 122578 },	-- Kin'garoth
	[VARIMATHRAS] = { 122366 },	-- Varimathras
	[COVEN] = {	-- The Coven of Shivarra
		122467,	-- Asara, Mother of Night
		122469,	-- Diima, Mother of Gloom
		122468,	-- Noura, Mother of Flames
	},
	[AGGRAMAR] = { 121975 },	-- Aggramar
	[ARGUS] = { 124828 },	-- Argus the Unmaker
};

local COMMONLOOT = {
	filter(CLOAKS, {
		-- Regular items
		-- No cloaks were made for Remix here

		-- Set items
		i(247188),	-- Gilded Seraph's Drape
		i(247170),	-- Runebound Cape
		i(247206),	-- Grim Inquisitor's Cloak
		i(247195),	-- Cloak of the Dashing Scoundrel
		i(247177),	-- Cloak of Chi-Ji
		i(247159),	-- Bearmantle Cloak
		i(247153),	-- Felreaper Drape
		i(247165),	-- Serpentstalker Drape
		i(247201),	-- Drape of Venerated Spirits
		i(247213),	-- Juggernaut Cloak
		i(247183),	-- Light's Vanguard Greatcloak
		i(247147),	-- Dreadwake Greatcloak
	}),
	filter(CLOTH, {
		-- Regular items
		i(247632),	-- Blood-Drenched Bindings
		i(247627),	-- Cord of Surging Hysteria
		i(247630),	-- Cord of Blossoming Petals
		i(247629),	-- Enhanced Worldscorcher Cinch
		i(247628),	-- Lady Dacidion's Silk Slippers
		i(247631),	-- Man'ari Pyromancer Cuffs
		i(247626),	-- Sandals of the Reborn Colossus
		i(247625),	-- Whisperstep Runners

		-- Set items
		i(247189),	-- Gilded Seraph's Handwraps
		i(247190),	-- Gilded Seraph's Crown
		i(247191),	-- Gilded Seraph's Leggings
		i(247192),	-- Gilded Seraph's Robes
		i(247193),	-- Gilded Seraph's Amice
		i(247171),	-- Runebound Gloves
		i(247172),	-- Runebound Collar
		i(247173),	-- Runebound Leggings
		i(247174),	-- Runebound Tunic
		i(247175),	-- Runebound Mantle
		i(247207),	-- Grim Inquisitor's Gloves
		i(247208),	-- Grim Inquisitor's Death Mask
		i(247209),	-- Grim Inquisitor's Leggings
		i(247210),	-- Grim Inquisitor's Robes
		i(247211),	-- Grim Inquisitor's Shoulderguards
	}),
	filter(LEATHER, {
		-- Regular items
		i(247637),	-- Belt of Fractured Sanity
		i(247654),	-- Bracers of Wanton Morality
		i(247635),	-- Death-Enveloping Cincture
		i(247653),	-- Depraved Machinist's Footpads
		i(247638),	-- Fiendish Logistician's Wristwraps
		i(247633),	-- Life-Bearing Footpads
		i(247636),	-- Portal Keeper's Cincture
		i(247634),	-- Vicious Flamepaws

		-- Set items
		i(247194),	-- Vest of the Dashing Scoundrel
		i(247196),	-- Gloves of the Dashing Scoundrel
		i(247197),	-- Cavalier Hat of the Dashing Scoundrel
		i(247198),	-- Pants of the Dashing Scoundrel
		i(247199),	-- Shoulderpads of the Dashing Scoundrel
		i(247176),	-- Tunic of Chi-Ji
		i(247178),	-- Grips of Chi-Ji
		i(247179),	-- Douli of Chi-Ji
		i(247180),	-- Leggings of Chi-Ji
		i(247181),	-- Meditation Spheres of Chi-Ji
		i(247158),	-- Bearmantle Harness
		i(247160),	-- Bearmantle Paws
		i(247161),	-- Bearmantle Headdress
		i(247162),	-- Bearmantle Legguards
		i(247163),	-- Bearmantle Shoulders
		i(247152),	-- Felreaper Vest
		i(247154),	-- Felreaper Gloves
		i(247155),	-- Felreaper Hood
		i(247156),	-- Felreaper Leggings
		i(247157),	-- Felreaper Spaulders
	}),
	filter(MAIL, {
		-- Regular items
		i(247639),	-- Deft Soulhunter's Sabatons
		i(247641),	-- Depraved Tactician's Waistguard
		i(247656),	-- Greatboots of the Searing Tempest
		i(247640),	-- Nathrezim Shade-Walkers
		i(247643),	-- Reality-Splitting Wristguards
		i(247642),	-- Sash of the Gilded Rose
		i(247651),	-- Scalding Shatterguards
		i(247655),	-- World-Ravager Waistguard

		-- Set items
		i(247164),	-- Serpentstalker Tunic
		i(247166),	-- Serpentstalker Grips
		i(247167),	-- Serpentstalker Helmet
		i(247168),	-- Serpentstalker Legguards
		i(247169),	-- Serpentstalker Mantle
		i(247200),	-- Robes of Venerated Spirits
		i(247202),	-- Gloves of Venerated Spirits
		i(247203),	-- Headdress of Venerated Spirits
		i(247204),	-- Leggings of Venerated Spirits
		i(247205),	-- Pauldrons of Venerated Spirits
	}),
	filter(PLATE, {
		-- Regular items
		i(247645),	-- Burning Coven Sabatons
		i(247644),	-- Doomwalker Warboots
		i(247646),	-- Eredar Warcouncil Sabatons
		i(247648),	-- Flamelicked Girdle
		i(247649),	-- Grond-Father Girdle
		i(247647),	-- Nathrezim Battle Girdle
		i(247650),	-- Vambraces of Life's Assurance
		i(247652),	-- Varimathras' Shattered Manacles

		-- Set items
		i(247212),	-- Juggernaut Breastplate
		i(247214),	-- Juggernaut Gauntlets
		i(247215),	-- Juggernaut Helm
		i(247216),	-- Juggernaut Legplates
		i(247217),	-- Juggernaut Pauldrons
		i(247182),	-- Light's Vanguard Breastplate
		i(247184),	-- Light's Vanguard Gauntlets
		i(247185),	-- Light's Vanguard Helm
		i(247186),	-- Light's Vanguard Legplates
		i(247187),	-- Light's Vanguard Shoulderplates
		i(247146),	-- Dreadwake Bonecage
		i(247148),	-- Dreadwake Gauntlets
		i(247149),	-- Dreadwake Helm
		i(247150),	-- Dreadwake Legplates
		i(247151),	-- Dreadwake Pauldrons
	}),
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(RAIDS, {
		inst(946, {	-- Antorus, the Burning Throne
			["coord"] = { 54.9, 62.3, ANTORAN_WASTES },
			["maps"] = { 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920 },
			["isRaid"] = true,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42554, {	-- Raid Finder: Antorus the Burning Throne
						crit(108543, {	-- Garothi Worldbreaker
							["_encounter"] = { WORLDBREAKER, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108542, {	-- Hounds of Sargeras
							["_encounter"] = { FELHOUNDS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108541, {	-- Antoran High Command
							["_encounter"] = { HIGH_COMMAND, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108539, {	-- Eonar
							["_encounter"] = { EONAR, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108540, {	-- Portal Keeper Hasabel
							["_encounter"] = { HASABEL, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108538, {	-- Imonar the Soulhunter
							["_encounter"] = { IMONAR, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108537, {	-- Kin'garoth
							["_encounter"] = { KINGAROTH, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108536, {	-- Varimathras
							["_encounter"] = { VARIMATHRAS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108535, {	-- The Coven of Shivarra
							["_encounter"] = { COVEN, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108534, {	-- Aggramar
							["_encounter"] = { AGGRAMAR, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(108567, {	-- Argus the Unmaker
							["_encounter"] = { ARGUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60875),		-- Antorus the Burning Throne (automated)
					ach(60871, {	-- Light's Breach
						crit(107182, {	-- Garothi Worldbreaker
							["_encounter"] = { WORLDBREAKER, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107183, {	-- Hounds of Sargeras
							["_encounter"] = { FELHOUNDS, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107184, {	-- Antoran High Command
							["_encounter"] = { HIGH_COMMAND, DIFFICULTY.RAID.MULTI.ALL},
						}),
					}),
					ach(60872, {	-- Forbidden Descent
						crit(107186, {	-- Eonar
							["_encounter"] = { EONAR, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107185, {	-- Portal Keeper Hasabel
							["_encounter"] = { HASABEL, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(107187, {	-- Imonar the Soulhunter
							["_encounter"] = { IMONAR, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60873, {	-- Hope's End
						crit(107188, {	-- Kin'garoth
							["_encounter"] = { KINGAROTH, DIFFICULTY.RAID.MULTI.ALL},
						}),
						crit(107189, {	-- Varimathras
							["_encounter"] = { VARIMATHRAS, DIFFICULTY.RAID.MULTI.ALL},
						}),
						crit(107190, {	-- The Coven of Shivarra
							["_encounter"] = { COVEN, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(60874, {	-- Seat of the Pantheon
						crit(107191, {	-- Aggramar
							["_encounter"] = { AGGRAMAR, DIFFICULTY.RAID.MULTI.ALL },
						}),
						crit(106082, {	-- Argus the Unmaker
							["_encounter"] = { ARGUS, DIFFICULTY.RAID.MULTI.ALL },
						}),
					}),
					ach(42664, {	-- Heroic: Antorus the Burning Throne
						crit(108460, {	-- Garothi Worldbreaker
							["_encounter"] = { WORLDBREAKER, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108469, {	-- Hounds of Sargeras
							["_encounter"] = { FELHOUNDS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108468, {	-- Antoran High Command
							["_encounter"] = { HIGH_COMMAND, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108466, {	-- Eonar
							["_encounter"] = { EONAR, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108467, {	-- Portal Keeper Hasabel
							["_encounter"] = { HASABEL, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108465, {	-- Imonar the Soulhunter
							["_encounter"] = { IMONAR, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108464, {	-- Kin'garoth
							["_encounter"] = { KINGAROTH, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108463, {	-- Varimathras
							["_encounter"] = { VARIMATHRAS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108462, {	-- The Coven of Shivarra
							["_encounter"] = { COVEN, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108461, {	-- Aggramar
							["_encounter"] = { AGGRAMAR, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
						crit(108493, {	-- Argus the Unmaker
							["_encounter"] = { ARGUS, DIFFICULTY.RAID.MULTI.HEROIC_PLUS },
						}),
					}),
					ach(42583, {	-- Mythic: Antorus the Burning Throne
						iensemble(253201),	-- Felscorned Scythe of the Unmaker
						crit(108506, {	-- Garothi Worldbreaker
							["_encounter"] = { WORLDBREAKER, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108505, {	-- Hounds of Sargeras
							["_encounter"] = { FELHOUNDS, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108504, {	-- Antoran High Command
							["_encounter"] = { HIGH_COMMAND, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108502, {	-- Eonar
							["_encounter"] = { EONAR, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108503, {	-- Portal Keeper Hasabel
							["_encounter"] = { HASABEL, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108501, {	-- Imonar the Soulhunter
							["_encounter"] = { IMONAR, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108500, {	-- Kin'garoth
							["_encounter"] = { KINGAROTH, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108499, {	-- Varimathras
							["_encounter"] = { VARIMATHRAS, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108498, {	-- The Coven of Shivarra
							["_encounter"] = { COVEN, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108497, {	-- Aggramar
							["_encounter"] = { AGGRAMAR, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108530, {	-- Argus the Unmaker
							["_encounter"] = { ARGUS, DIFFICULTY.RAID.MYTHIC },
						}),
					}),
				}),
				n(RAID_GEAR_CONVERSION, bubbleDown({ ["modID"] = 4 }, {
					filter(CLOAKS, {
						-- Regular items
						-- No cloaks were made for Remix here

						-- Set items
						i_RAID_GEAR_CONVERSION(247188),	-- Gilded Seraph's Drape
						i_RAID_GEAR_CONVERSION(247170),	-- Runebound Cape
						i_RAID_GEAR_CONVERSION(247206),	-- Grim Inquisitor's Cloak
						i_RAID_GEAR_CONVERSION(247195),	-- Cloak of the Dashing Scoundrel
						i_RAID_GEAR_CONVERSION(247177),	-- Cloak of Chi-Ji
						i_RAID_GEAR_CONVERSION(247159),	-- Bearmantle Cloak
						i_RAID_GEAR_CONVERSION(247153),	-- Felreaper Drape
						i_RAID_GEAR_CONVERSION(247165),	-- Serpentstalker Drape
						i_RAID_GEAR_CONVERSION(247201),	-- Drape of Venerated Spirits
						i_RAID_GEAR_CONVERSION(247213),	-- Juggernaut Cloak
						i_RAID_GEAR_CONVERSION(247183),	-- Light's Vanguard Greatcloak
						i_RAID_GEAR_CONVERSION(247147),	-- Dreadwake Greatcloak
					}),
					filter(CLOTH, {
						-- Regular items
						i_RAID_GEAR_CONVERSION(247632),	-- Blood-Drenched Bindings
						i_RAID_GEAR_CONVERSION(247627),	-- Cord of Surging Hysteria
						i_RAID_GEAR_CONVERSION(247630),	-- Cord of Blossoming Petals
						i_RAID_GEAR_CONVERSION(247629),	-- Enhanced Worldscorcher Cinch
						i_RAID_GEAR_CONVERSION(247628),	-- Lady Dacidion's Silk Slippers
						i_RAID_GEAR_CONVERSION(247631),	-- Man'ari Pyromancer Cuffs
						i_RAID_GEAR_CONVERSION(247626),	-- Sandals of the Reborn Colossus
						i_RAID_GEAR_CONVERSION(247625),	-- Whisperstep Runners

						-- Set items
						i_RAID_GEAR_CONVERSION(247189),	-- Gilded Seraph's Handwraps
						i_RAID_GEAR_CONVERSION(247190),	-- Gilded Seraph's Crown
						i_RAID_GEAR_CONVERSION(247191),	-- Gilded Seraph's Leggings
						i_RAID_GEAR_CONVERSION(247192),	-- Gilded Seraph's Robes
						i_RAID_GEAR_CONVERSION(247193),	-- Gilded Seraph's Amice
						i_RAID_GEAR_CONVERSION(247171),	-- Runebound Gloves
						i_RAID_GEAR_CONVERSION(247172),	-- Runebound Collar
						i_RAID_GEAR_CONVERSION(247173),	-- Runebound Leggings
						i_RAID_GEAR_CONVERSION(247174),	-- Runebound Tunic
						i_RAID_GEAR_CONVERSION(247175),	-- Runebound Mantle
						i_RAID_GEAR_CONVERSION(247207),	-- Grim Inquisitor's Gloves
						i_RAID_GEAR_CONVERSION(247208),	-- Grim Inquisitor's Death Mask
						i_RAID_GEAR_CONVERSION(247209),	-- Grim Inquisitor's Leggings
						i_RAID_GEAR_CONVERSION(247210),	-- Grim Inquisitor's Robes
						i_RAID_GEAR_CONVERSION(247211),	-- Grim Inquisitor's Shoulderguards
					}),
					filter(LEATHER, {
						-- Regular items
						i_RAID_GEAR_CONVERSION(247637),	-- Belt of Fractured Sanity
						i_RAID_GEAR_CONVERSION(247654),	-- Bracers of Wanton Morality
						i_RAID_GEAR_CONVERSION(247635),	-- Death-Enveloping Cincture
						i_RAID_GEAR_CONVERSION(247653),	-- Depraved Machinist's Footpads
						i_RAID_GEAR_CONVERSION(247638),	-- Fiendish Logistician's Wristwraps
						i_RAID_GEAR_CONVERSION(247633),	-- Life-Bearing Footpads
						i_RAID_GEAR_CONVERSION(247636),	-- Portal Keeper's Cincture
						i_RAID_GEAR_CONVERSION(247634),	-- Vicious Flamepaws

						-- Set items
						i_RAID_GEAR_CONVERSION(247194),	-- Vest of the Dashing Scoundrel
						i_RAID_GEAR_CONVERSION(247196),	-- Gloves of the Dashing Scoundrel
						i_RAID_GEAR_CONVERSION(247197),	-- Cavalier Hat of the Dashing Scoundrel
						i_RAID_GEAR_CONVERSION(247198),	-- Pants of the Dashing Scoundrel
						i_RAID_GEAR_CONVERSION(247199),	-- Shoulderpads of the Dashing Scoundrel
						i_RAID_GEAR_CONVERSION(247176),	-- Tunic of Chi-Ji
						i_RAID_GEAR_CONVERSION(247178),	-- Grips of Chi-Ji
						i_RAID_GEAR_CONVERSION(247179),	-- Douli of Chi-Ji
						i_RAID_GEAR_CONVERSION(247180),	-- Leggings of Chi-Ji
						i_RAID_GEAR_CONVERSION(247181),	-- Meditation Spheres of Chi-Ji
						i_RAID_GEAR_CONVERSION(247158),	-- Bearmantle Harness
						i_RAID_GEAR_CONVERSION(247160),	-- Bearmantle Paws
						i_RAID_GEAR_CONVERSION(247161),	-- Bearmantle Headdress
						i_RAID_GEAR_CONVERSION(247162),	-- Bearmantle Legguards
						i_RAID_GEAR_CONVERSION(247163),	-- Bearmantle Shoulders
						i_RAID_GEAR_CONVERSION(247152),	-- Felreaper Vest
						i_RAID_GEAR_CONVERSION(247154),	-- Felreaper Gloves
						i_RAID_GEAR_CONVERSION(247155),	-- Felreaper Hood
						i_RAID_GEAR_CONVERSION(247156),	-- Felreaper Leggings
						i_RAID_GEAR_CONVERSION(247157),	-- Felreaper Spaulders
					}),
					filter(MAIL, {
						-- Regular items
						i_RAID_GEAR_CONVERSION(247639),	-- Deft Soulhunter's Sabatons
						i_RAID_GEAR_CONVERSION(247641),	-- Depraved Tactician's Waistguard
						i_RAID_GEAR_CONVERSION(247656),	-- Greatboots of the Searing Tempest
						i_RAID_GEAR_CONVERSION(247640),	-- Nathrezim Shade-Walkers
						i_RAID_GEAR_CONVERSION(247643),	-- Reality-Splitting Wristguards
						i_RAID_GEAR_CONVERSION(247642),	-- Sash of the Gilded Rose
						i_RAID_GEAR_CONVERSION(247651),	-- Scalding Shatterguards
						i_RAID_GEAR_CONVERSION(247655),	-- World-Ravager Waistguard

						-- Set items
						i_RAID_GEAR_CONVERSION(247164),	-- Serpentstalker Tunic
						i_RAID_GEAR_CONVERSION(247166),	-- Serpentstalker Grips
						i_RAID_GEAR_CONVERSION(247167),	-- Serpentstalker Helmet
						i_RAID_GEAR_CONVERSION(247168),	-- Serpentstalker Legguards
						i_RAID_GEAR_CONVERSION(247169),	-- Serpentstalker Mantle
						i_RAID_GEAR_CONVERSION(247200),	-- Robes of Venerated Spirits
						i_RAID_GEAR_CONVERSION(247202),	-- Gloves of Venerated Spirits
						i_RAID_GEAR_CONVERSION(247203),	-- Headdress of Venerated Spirits
						i_RAID_GEAR_CONVERSION(247204),	-- Leggings of Venerated Spirits
						i_RAID_GEAR_CONVERSION(247205),	-- Pauldrons of Venerated Spirits
					}),
					filter(PLATE, {
						-- Regular items
						i_RAID_GEAR_CONVERSION(247645),	-- Burning Coven Sabatons
						i_RAID_GEAR_CONVERSION(247644),	-- Doomwalker Warboots
						i_RAID_GEAR_CONVERSION(247646),	-- Eredar Warcouncil Sabatons
						i_RAID_GEAR_CONVERSION(247648),	-- Flamelicked Girdle
						i_RAID_GEAR_CONVERSION(247649),	-- Grond-Father Girdle
						i_RAID_GEAR_CONVERSION(247647),	-- Nathrezim Battle Girdle
						i_RAID_GEAR_CONVERSION(247650),	-- Vambraces of Life's Assurance
						i_RAID_GEAR_CONVERSION(247652),	-- Varimathras' Shattered Manacles

						-- Set items
						i_RAID_GEAR_CONVERSION(247212),	-- Juggernaut Breastplate
						i_RAID_GEAR_CONVERSION(247214),	-- Juggernaut Gauntlets
						i_RAID_GEAR_CONVERSION(247215),	-- Juggernaut Helm
						i_RAID_GEAR_CONVERSION(247216),	-- Juggernaut Legplates
						i_RAID_GEAR_CONVERSION(247217),	-- Juggernaut Pauldrons
						i_RAID_GEAR_CONVERSION(247182),	-- Light's Vanguard Breastplate
						i_RAID_GEAR_CONVERSION(247184),	-- Light's Vanguard Gauntlets
						i_RAID_GEAR_CONVERSION(247185),	-- Light's Vanguard Helm
						i_RAID_GEAR_CONVERSION(247186),	-- Light's Vanguard Legplates
						i_RAID_GEAR_CONVERSION(247187),	-- Light's Vanguard Shoulderplates
						i_RAID_GEAR_CONVERSION(247146),	-- Dreadwake Bonecage
						i_RAID_GEAR_CONVERSION(247148),	-- Dreadwake Gauntlets
						i_RAID_GEAR_CONVERSION(247149),	-- Dreadwake Helm
						i_RAID_GEAR_CONVERSION(247150),	-- Dreadwake Legplates
						i_RAID_GEAR_CONVERSION(247151),	-- Dreadwake Pauldrons
					}),
				})),
				Difficulty(DIFFICULTY.RAID.MULTI.ALL).AddGroups({
					header(HEADERS.Achievement, 60871, {	-- Light's Breach
						BossOnly(WORLDBREAKER),
						BossOnly(FELHOUNDS),
						BossOnly(HIGH_COMMAND),
					}),
					header(HEADERS.Achievement, 60872, {	-- Forbidden Descent
						BossOnly(EONAR),
						BossOnly(HASABEL),
						BossOnly(IMONAR),
					}),
					header(HEADERS.Achievement, 60873, {	-- Hope's End
						BossOnly(KINGAROTH),
						BossOnly(VARIMATHRAS),
						BossOnly(COVEN),
					}),
					header(HEADERS.Achievement, 60874, {	-- Seat of the Pantheon
						BossOnly(AGGRAMAR),
						BossOnly(ARGUS),
					}),
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.NORMAL_PLUS).AddGroups({
					BossOnly(WORLDBREAKER),
					BossOnly(FELHOUNDS),
					BossOnly(HIGH_COMMAND),
					BossOnly(EONAR),
					BossOnly(HASABEL),
					BossOnly(IMONAR),
					BossOnly(KINGAROTH),
					BossOnly(VARIMATHRAS),
					BossOnly(COVEN),
					BossOnly(AGGRAMAR, {
						i(253306),	-- Everflame of Hatred
					}),
					BossOnly(ARGUS, {
						i(253304),	-- Cosmic Soulsliver
					}),
				}),
				Difficulty(DIFFICULTY.RAID.NORMAL).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
				}),
				Difficulty(DIFFICULTY.RAID.MULTI.HEROIC_PLUS).AddGroups({
					BossOnly(WORLDBREAKER),
					BossOnly(FELHOUNDS),
					BossOnly(HIGH_COMMAND),
					BossOnly(EONAR),
					BossOnly(HASABEL),
					BossOnly(IMONAR),
					BossOnly(KINGAROTH),
					BossOnly(VARIMATHRAS),
					BossOnly(COVEN),
					BossOnly(AGGRAMAR),
					BossOnly(ARGUS, {
						i(152900),	-- Blood of the Unmaker (QS!) / Kirin Tor Summoning Crystal / Violet Spellwing (MOUNT!)
					}),
				}),
				Difficulty(DIFFICULTY.RAID.HEROIC).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
				}),
				Difficulty(DIFFICULTY.RAID.MYTHIC).AddGroups({
					CommonBossDrops(clone(COMMONLOOT)),
					BossOnly(WORLDBREAKER),
					BossOnly(FELHOUNDS),
					BossOnly(HIGH_COMMAND),
					BossOnly(EONAR),
					BossOnly(HASABEL),
					BossOnly(IMONAR),
					BossOnly(KINGAROTH),
					BossOnly(VARIMATHRAS),
					BossOnly(COVEN),
					BossOnly(AGGRAMAR),
					BossOnly(ARGUS),
				}),
			},
		}),
	}),
})));
