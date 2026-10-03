-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local GARGOLMAR = 527;
local OMOR = 528;
local VAZRUDEN = 529;

------ EncounterToCRS ------
local EncounterToCRS = {
	[GARGOLMAR] = { 17306 },	-- Watchkeeper Gargolmar
	[OMOR] = { 17308 },	-- Omor the Unscarred
	[VAZRUDEN] = { 17307 },	-- Vazruden the Herald
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_3 } }, {
	inst(248, {	-- Hellfire Ramparts
		["lore"] = "Hellfire Ramparts make up the first wing of Hellfire Citadel. The citadel itself sits in the center of the zone, in the middle of a broken-up wall that divided the zone before the conflict began. The Ramparts takes place atop this wall along the sides of the citadel.",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 3562,	-- Hellfire Ramparts
		-- #endif
		["mapID"] = HELLFIRE_CITADEL_RAMPARTS,
		["coord"] = { 47.65, 53.57, HELLFIRE_PENINSULA },	-- Hellfire Ramparts, Hellfire Peninsula
		["lvl"] = lvlsquish(57, 57, 10),
		["groups"] = {
			n(QUESTS, {
				{	-- Dark Tidings
					["allianceQuestData"] = q(9587, {	-- Dark Tidings (A)
						["provider"] = { "i", 23890 },	-- Ominous Letter
					}),
					["hordeQuestData"] = q(9588, {	-- Dark Tidings (H)
						["provider"] = { "i", 23892 },	-- Ominous Letter
					}),
					["timeline"] = { REMOVED_4_3_0 },
					["maps"] = { HELLFIRE_PENINSULA },
					["lvl"] = lvlsquish(59, 59, 10),
				},
				{	-- Demons in the Citadel
					["allianceQuestData"] = q(29529, {	-- Demons in the Citadel (A)
						["qg"] = 54603,	-- Advance Scout Chadwick
					}),
					["hordeQuestData"] = q(29530, {	-- Demons in the Citadel (H)
						["qg"] = 54606,	-- Stone Guard Stok'ton
					}),
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(57, 57, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Omor's Hoof
							["provider"] = { "i", 23886 },	-- Omor's Hoof
						}),
					},
				},
				{	-- Hitting Them Where It Hurts
					["allianceQuestData"] = q(29594, {	-- Hitting Them Where It Hurts (A)
						["qg"] = 54603,	-- Advance Scout Chadwick
					}),
					["hordeQuestData"] = q(29593, {	-- Hitting Them Where It Hurts (H)
						["qg"] = 54606,	-- Stone Guard Stok'ton
					}),
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(57, 57, 10),
					["groups"] = {
						objective(1, {	-- 0/3 Hellfire Supplies
							["providers"] = {
								{ "i",  72160 },	-- Hellfire Supplies
								{ "o", 209347 },	-- Hellfire Supplies
								{ "o", 209348 },	-- Hellfire Supplies
							},
						}),
					},
				},
				{	-- Invading the Citadel
					["allianceQuestData"] = q(29543, {	-- Invading the Citadel (A)
						["qg"] = 19309,	-- Sergeant Altumus
						["coord"] = { 61.6, 60.7, HELLFIRE_PENINSULA },
					}),
					["hordeQuestData"] = q(29542, {	-- Invading the Citadel (H)
						["qg"] = 19256,	-- Sergeant Shatterskull
						["coord"] = { 58.0, 41.2, HELLFIRE_PENINSULA },
					}),
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(59, 59, 10),
				},
				{	-- War on the Ramparts
					["allianceQuestData"] = q(29528, {	-- War on the Ramparts (A)
						["qg"] = 54603,	-- Advance Scout Chadwick
					}),
					["hordeQuestData"] = q(29527, {	-- War on the Ramparts (H)
						["qg"] = 54606,	-- Stone Guard Stok'ton
					}),
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(57, 57, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Gargolmar's Hand
							["provider"] = { "i", 23881 },	-- Gargolmar's Hand
						}),
						objective(2, {	-- 0/1 Nazan's Head
							["provider"] = { "i", 23901 },	-- Nazan's Head
						}),
						i(25715),	-- Jade Warrior Pauldrons
						i(25718),	-- Mantle of Magical Might
						i(25716),	-- Handguards of Precision
						i(25717),	-- Sure-Step Boots
					},
				},
				{	-- Weaken the Ramparts
					["allianceQuestData"] = q(9575, {	-- Weaken the Ramparts (A)
						["sourceQuest"] = 10142,	-- The Path of Anguish
						["qg"] = 17557,	-- Lieutenant Chadwick
						["coord"] = { 56.7, 66.3, HELLFIRE_PENINSULA },
					}),
					["hordeQuestData"] = q(9572, {	-- Weaken the Ramparts (H)
						["sourceQuest"] = 10124,	-- Forward Base: Reaver's Fall
						["qg"] = 17493,	-- Stone Guard Stok'ton
						["coord"] = { 55.2, 36.0, HELLFIRE_PENINSULA },
					}),
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(59, 59, 10),
					["groups"] = {
						objective(1, {	-- 0/1 Gargolmar's Hand
							["provider"] = { "i", 23881 },	-- Gargolmar's Hand
						}),
						objective(2, {	-- 0/1 Omor's Hoof
							["provider"] = { "i", 23886 },	-- Omor's Hoof
						}),
						objective(3, {	-- 0/1 Nazan's Head
							["provider"] = { "i", 23901 },	-- Nazan's Head
						}),
						i(25716),	-- Handguards of Precision
						i(25715),	-- Jade Warrior Pauldrons
						i(25718),	-- Mantle of Magical Might
						i(25717),	-- Sure-Step Boots
					},
				},
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				BossOnly(GARGOLMAR, {
					i(23881),	-- Gargolmar's Hand (QI!)
					--
					i(27449),	-- Blood Knight Defender
					i(27451),	-- Boots of the Darkwalker
					i(24023),	-- Bracers of Finesse
					i(27447),	-- Bracers of Just Rewards
					i(27448),	-- Cloak of the Everliving
					i(24021),	-- Light-Touched Breastplate
					i(24024),	-- Pauldrons of Arcane Rage
					i(24022),	-- Scale Leggings of the Skirmisher
					i(24020),	-- Shadowrend Longblade
					i(27450),	-- Wild Stalker Boots
				}),
				BossOnly(OMOR, {
					i(23886),	-- Omor's Hoof (QI!)
					--
					ach(647),	-- Hellfire Ramparts
					i(27895),	-- Band of Many Prisms
					i(24090),	-- Bloodstained Ravager Gauntlets
					i(27462),	-- Crimson Bracers of Gloom
					i(27906),	-- Crimsonforge Breastplate
					i(24069),	-- Crystalfire Staff
					i(27477),	-- Faol's Signet of Cleansing
					i(24073),	-- Garrote-String Necklace
					i(27478),	-- Girdle of the Blasted Reaches
					i(27466),	-- Headdress of Alacrity
					i(24094),	-- Heart Fire Warhammer
					i(24096),	-- Heartblood Prayer Beads
					i(27539),	-- Justice Bearer's Pauldrons
					i(27465),	-- Mana-Etched Gloves
					i(27464),	-- Omor's Unyielding Will
					i(27467),	-- Silent-Strider Kneeboots
					i(24091),	-- Tenacious Defender
					i(27463),	-- Terror Flame Dagger
					i(27476),	-- Truncheon of Five Hells
				}),
				BossOnly(VAZRUDEN, {
					a(i(23890)),	-- Ominous Letter [Alliance]
					h(i(23892)),	-- Ominous Letter [Horde]
				}),
				n(17536, {	-- Nazan
					i(23901),	-- Nazan's Head (QI!)
				}),
				o(185168, {	-- Reinforced Fel Iron Chest
					["description"] = "Available after defeating both Vazruden the Herald and Nazan.",
					["crs"] = { 17307, 17536 },	-- Vazruden and Nazan
					["groups"] = {
						i(27453),	-- Averinn's Ring of Slaying
						i(24045),	-- Band of Renewal
						i(27461),	-- Chestguard of the Prowler
						i(29346),	-- Feltooth Eviscerator
						i(24044),	-- Hellreaver
						i(27455),	-- Irondrake Faceguard
						i(24064),	-- Ironsole Clompers
						i(24046),	-- Kilt of Rolling Thunders
						i(27457),	-- Life Bearer's Gauntlets
						i(24083),	-- Lifegiver Britches
						i(27452),	-- Light Scribe Bands
						i(29238),	-- Lion's Heart Girdle
						i(24151),	-- Mok'Nathal Clan Ring
						i(24150),	-- Mok'Nathal Wildercloak
						i(27458),	-- Oceansong Kilt
						i(27456),	-- Raiments of Nature's Breath
						i(27460),	-- Reavers' Ring
						i(24063),	-- Shifting Sash of Midnight
						i(29264),	-- Tree-Mender's Belt
						i(24155),	-- Ursol's Claw
						i(27459),	-- Vambraces of Daring
						i(27454),	-- Volcanic Pauldrons
						i(24154),	-- Witching Band
						i(32077),	-- Wrath-Infused Gauntlets
					},
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(70, 70, 30) }).AddGroups({
				n(COMMON_BOSS_DROPS, {
					["crs"] = {
						17306,	-- Watchkeeper Gargolmar
						17308,	-- Omor the Unscarred
						17307,	-- Vazruden the Herald
					},
					["groups"] = {
						i(30593),	-- Potent Fire Opal
						i(30594),	-- Regal Chrysoprase
						i(30592),	-- Steady Chrysoprase
					},
				}),
				ach(667, {	-- Heroic: Hellfire Ramparts
					crit(3705, {	-- Omor the Unscarred
						["_encounter"] = { OMOR, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(3816, {	-- Vazruden
						["_encounter"] = { VAZRUDEN, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
				ach(5067, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Hellfire Ramparts Guild Run
				BossOnly(OMOR, {
					applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
				}),
				BossOnly(VAZRUDEN),
				n(17536, {	-- Nazan
					crit(3706, {	-- Nazan
						["achievementID"] = 667,
						["timeline"] = { ADDED_3_0_2 },
					}),
					i(33833),	-- Nazan's Riding Crop (QI!)
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				BossOnly(GARGOLMAR, {
					i(23881),	-- Gargolmar's Hand (QI!)
				}),
				BossOnly(OMOR, {
					i(23886),	-- Omor's Hoof (QI!)
				}),
				n(17536, {	-- Nazan
					i(23901),	-- Nazan's Head (QI!)
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(GARGOLMAR, {
					i(24023),	-- Bracers of Finesse
					i(24021),	-- Light-Touched Breastplate
					i(24024),	-- Pauldrons of Arcane Rage
					i(24022),	-- Scale Leggings of the Skirmisher
					i(24020),	-- Shadowrend Longblade
				}),
				BossOnly(OMOR, {
					ach(647),	-- Hellfire Ramparts
					i(24090),	-- Bloodstained Ravager Gauntlets
					i(24069),	-- Crystalfire Staff
					i(24073),	-- Garrote-String Necklace
					i(24094),	-- Heart Fire Warhammer
					i(24096),	-- Heartblood Prayer Beads
					i(24091),	-- Tenacious Defender
				}),
				BossOnly(VAZRUDEN, {
					a(i(23890)),	-- Ominous Letter [Alliance]
					h(i(23892)),	-- Ominous Letter [Horde]
				}),
				o(185168, {	-- Reinforced Fel Iron Chest
					["description"] = "Available after defeating both Vazruden the Herald and Nazan.",
					["crs"] = { 17307, 17536 },	-- Vazruden and Nazan
					["groups"] = {
						i(24045),	-- Band of Renewal
						i(24044),	-- Hellreaver
						i(24064),	-- Ironsole Clompers
						i(24046),	-- Kilt of Rolling Thunders
						i(24083),	-- Lifegiver Britches
						i(24151),	-- Mok'Nathal Clan Ring
						i(24150),	-- Mok'Nathal Wildercloak
						i(24063),	-- Shifting Sash of Midnight
						i(24155),	-- Ursol's Claw
						i(24154),	-- Witching Band
					},
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = {
					{ "i", 30622, 1 },	-- Flamewrought Key [A]
					{ "i", 30637, 1 },	-- Flamewrought Key [H]
					-- #if CLASSIC_ANNIVERSARY
					{ "i", 265830, 1 },	-- Communal Flamewrought Key [A]
					{ "i", 265826, 1 },	-- Communal Flamewrought Key [H]
					-- #endif
				},
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
			}).AddGroups({
				n(COMMON_BOSS_DROPS, {
					["crs"] = {
						17306,	-- Watchkeeper Gargolmar
						17308,	-- Omor the Unscarred
						17307,	-- Vazruden the Herald
					},
					["groups"] = {
						-- #if BEFORE CATA
						BADGE_OF_JUSTICE(1),
						-- #endif
						i(30593),	-- Potent Fire Opal
						i(30594),	-- Regal Chrysoprase
						i(30592),	-- Steady Chrysoprase
					},
				}),
				ach(667, {	-- Heroic: Hellfire Ramparts
					crit(3705, {	-- Omor the Unscarred
						["_encounter"] = { OMOR, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(3816, {	-- Vazruden
						["_encounter"] = { VAZRUDEN, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
				ach(5067, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Hellfire Ramparts Guild Run
				BossOnly(GARGOLMAR, {
					i(27449),	-- Blood Knight Defender
					i(27451),	-- Boots of the Darkwalker
					i(27447),	-- Bracers of Just Rewards
					i(27448),	-- Cloak of the Everliving
					i(27450),	-- Wild Stalker Boots
				}),
				BossOnly(OMOR, {
					i(27895),	-- Band of Many Prisms
					i(27462),	-- Crimson Bracers of Gloom
					i(27906),	-- Crimsonforge Breastplate
					i(27477),	-- Faol's Signet of Cleansing
					i(27478),	-- Girdle of the Blasted Reaches
					i(27466),	-- Headdress of Alacrity
					i(27539),	-- Justice Bearer's Pauldrons
					i(27465),	-- Mana-Etched Gloves
					i(27464),	-- Omor's Unyielding Will
					applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
					i(27467),	-- Silent-Strider Kneeboots
					i(27463),	-- Terror Flame Dagger
					i(27476),	-- Truncheon of Five Hells
				}),
				BossOnly(VAZRUDEN),
				n(17536, {	-- Nazan
					crit(3706, {	-- Nazan
						["achievementID"] = 667,
						["timeline"] = { ADDED_3_0_2 },
					}),
					i(33833),	-- Nazan's Riding Crop (QI!)
				}),
				o(185168, {	-- Reinforced Fel Iron Chest
					["description"] = "Available after defeating both Vazruden the Herald and Nazan.",
					["crs"] = { 17307, 17536 },	-- Vazruden and Nazan
					["groups"] = {
						i(27453),	-- Averinn's Ring of Slaying
						i(27461),	-- Chestguard of the Prowler
						i(29346),	-- Feltooth Eviscerator
						i(27455),	-- Irondrake Faceguard
						i(27457),	-- Life Bearer's Gauntlets
						i(27452),	-- Light Scribe Bands
						i(29238),	-- Lion's Heart Girdle
						i(27458),	-- Oceansong Kilt
						i(27456),	-- Raiments of Nature's Breath
						i(27460),	-- Reavers' Ring
						i(29264),	-- Tree-Mender's Belt
						i(27459),	-- Vambraces of Daring
						i(27454),	-- Volcanic Pauldrons
						i(32077),	-- Wrath-Infused Gauntlets
					},
				}),
			}),
			-- #endif
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(248, {
		q(35572),	-- Hellfire Ramparts Reward Quest - Normal completion
		q(35573),	-- Hellfire Ramparts Reward Quest - Heroic completion
	}),
})));
