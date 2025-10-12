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
						-- TODO: Upon confirmation, leave the one that drops, remove the one that does not and remove this commented-out section.
						-- 11.2.5 Blue Post states that Violet Spellwing will drop from Argus the Unmaker on Heroic or Mythic
						-- Since it is not yet clear whether QS! will drop or the mount itself, both are listed.
						-- https://worldofwarcraft.blizzard.com/en-us/news/24240007
						i(152900),	-- Blood of the Unmaker (QS!) / Violet Spellwing (MOUNT!)
						i(152901),	-- Kirin Tor Summoning Crystal / Violet Spellwing (MOUNT!)
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
					BossOnly(ARGUS, {
						-- TODO: Upon confirmation, leave the one that drops, remove the one that does not and remove this commented-out section.
						-- 11.2.5 Blue Post states that Violet Spellwing will drop from Argus the Unmaker on Heroic or Mythic
						-- Since it is not yet clear whether QS! will drop or the mount itself, both are listed.
						-- https://worldofwarcraft.blizzard.com/en-us/news/24240007
						i(152900),	-- Blood of the Unmaker (QS!) / Violet Spellwing (MOUNT!)
						i(152901),	-- Kirin Tor Summoning Crystal / Violet Spellwing (MOUNT!)
					}),
				}),
			},
		}),
	}),
})));
