-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
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
						i(25715),	-- Jade Warrior Pauldrons
						i(25718),	-- Mantle of Magical Might
						i(25716),	-- Handguards of Precision
						i(25717),	-- Sure-Step Boots
					},
				},
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(527, {	-- Watchkeeper Gargolmar
					["creatureID"] = 17306,
					["groups"] = {
						i(24020),	-- Shadowrend Longblade
						-- #if AFTER 7.3.5
						i(27449),	-- Blood Knight Defender
						-- #endif
						i(24024),	-- Pauldrons of Arcane Rage
						-- #if AFTER 7.3.5
						i(27448),	-- Cloak of the Everliving
						-- #endif
						i(24021),	-- Light-Touched Breastplate
						i(24023),	-- Bracers of Finesse
						-- #if AFTER 7.3.5
						i(27447),	-- Bracers of Just Rewards
						-- #endif
						i(24022),	-- Scale Leggings of the Skirmisher
						-- #if AFTER 7.3.5
						i(27451),	-- Boots of the Darkwalker
						i(27450),	-- Wild Stalker Boots
						-- #endif
						i(23881),	-- Gargolmar's Hand
					},
				}),
				e(528, {	-- Omor the Unscarred
					["creatureID"] = 17308,
					["groups"] = {
						ach(647),	-- Hellfire Ramparts
						i(24069),	-- Crystalfire Staff
						i(24094),	-- Heart Fire Warhammer
						-- #if AFTER 7.3.5
						i(27463),	-- Terror Flame Dagger
						i(27476),	-- Truncheon of Five Hells
						i(27477),	-- Faol's Signet of Cleansing
						i(27466),	-- Headdress of Alacrity
						-- #endif
						i(24073),	-- Garrote-String Necklace
						i(24096),	-- Heartblood Prayer Beads
						-- #if AFTER 7.3.5
						i(27464),	-- Omor's Unyielding Will
						i(27539),	-- Justice Bearer's Pauldrons
						i(27906),	-- Crimsonforge Breastplate
						i(27462),	-- Crimson Bracers of Gloom
						-- #endif
						i(24090),	-- Bloodstained Ravager Gauntlets
						-- #if AFTER 7.3.5
						i(27465),	-- Mana-Etched Gloves
						i(27478),	-- Girdle of the Blasted Reaches
						-- #endif
						i(24091),	-- Tenacious Defender
						-- #if AFTER 7.3.5
						i(27467),	-- Silent-Strider Kneeboots
						i(27895),	-- Band of Many Prisms
						-- #endif
						i(23886),	-- Omor's Hoof
					},
				}),
				e(529, {	-- Vazruden the Herald
					["creatureID"] = 17307,
					["groups"] = {
						i(23890, {	-- Ominous Letter [Alliance]
							["races"] = ALLIANCE_ONLY,
						}),
						i(23892, {	-- Ominous Letter [Horde]
							["races"] = HORDE_ONLY,
						}),
					},
				}),
				n(17536, {	-- Nazan
					i(23901),	-- Nazan's Head
				}),
				o(185168, {	-- Reinforced Fel Iron Chest
					["description"] = "Available after defeating both Vazruden the Herald and Nazan.",
					["crs"] = { 17307, 17536 },	-- Vazruden and Nazan
					["groups"] = {
						i(24044),	-- Hellreaver
						i(24155),	-- Ursol's Claw
						-- #if AFTER 7.3.5
						i(29346),	-- Feltooth Eviscerator
						i(27455),	-- Irondrake Faceguard
						i(27454),	-- Volcanic Pauldrons
						-- #endif
						i(24150),	-- Mok'Nathal Wildercloak
						-- #if AFTER 7.3.5
						i(27461),	-- Chestguard of the Prowler
						i(27456),	-- Raiments of Nature's Breath
						i(27452),	-- Light Scribe Bands
						i(27459),	-- Vambraces of Daring
						i(27457),	-- Life Bearer's Gauntlets
						i(32077),	-- Wrath-Infused Gauntlets
						i(29238),	-- Lion's Heart Girdle
						-- #endif
						i(24063),	-- Shifting Sash of Midnight
						-- #if AFTER 7.3.5
						i(29264),	-- Tree-Mender's Belt
						-- #endif
						i(24046),	-- Kilt of Rolling Thunders
						i(24083),	-- Lifegiver Britches
						-- #if AFTER 7.3.5
						i(27458),	-- Oceansong Kilt
						-- #endif
						i(24064),	-- Ironsole Clompers
						-- #if AFTER 7.3.5
						i(27453),	-- Averinn's Ring of Slaying
						-- #endif
						i(24045),	-- Band of Renewal
						i(24151),	-- Mok'Nathal Clan Ring
						-- #if AFTER 7.3.5
						i(27460),	-- Reavers' Ring
						-- #endif
						i(24154),	-- Witching Band
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				["description"] = "You need to have a key to the instance in order to access this mode.",
				["cost"] = {
					{ "i", 30622, 1 },	-- Flamewrought Key [A]
					{ "i", 30637, 1 },	-- Flamewrought Key [H]
				},
				-- #endif
				["lvl"] = lvlsquish(70, 70, 30),
				["groups"] = {
					ach(667, {	-- Heroic: Hellfire Ramparts
						crit(3705, {	-- Omor the Unscarred
							["_encounter"] = { 528, DIFFICULTY.DUNGEON.HEROIC },
						}),
						crit(3816, {	-- Vazruden
							["_encounter"] = { 529, DIFFICULTY.DUNGEON.HEROIC },
						}),
					}),
					ach(5067, {	-- Heroic: Hellfire Ramparts Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							17306,	-- Watchkeeper Gargolmar
							17308,	-- Omor the Unscarred
							17307,	-- Vazruden the Herald
						},
						["groups"] = {
							-- #if BEFORE CATA
							BADGE_OF_JUSTICE,
							-- #endif
							i(30593),	-- Potent Fire Opal
							i(30594),	-- Regal Chrysoprase
							i(30592),	-- Steady Chrysoprase
						},
					}),
					e(527, {	-- Watchkeeper Gargolmar
						["creatureID"] = 17306,
						["groups"] = {
							-- #if AFTER 7.3.5
							i(24020),	-- Shadowrend Longblade
							-- #endif
							i(27449),	-- Blood Knight Defender
							-- #if AFTER 7.3.5
							i(24024),	-- Pauldrons of Arcane Rage
							-- #endif
							i(27448),	-- Cloak of the Everliving
							-- #if AFTER 7.3.5
							i(24021),	-- Light-Touched Breastplate
							i(24023),	-- Bracers of Finesse
							-- #endif
							i(27447),	-- Bracers of Just Rewards
							-- #if AFTER 7.3.5
							i(24022),	-- Scale Leggings of the Skirmisher
							-- #endif
							i(27451),	-- Boots of the Darkwalker
							i(27450),	-- Wild Stalker Boots
							i(23881),	-- Gargolmar's Hand
						},
					}),
					e(528, {	-- Omor the Unscarred
						["creatureID"] = 17308,
						["groups"] = {
							-- #if AFTER 7.3.5
							i(24069),	-- Crystalfire Staff
							i(24094),	-- Heart Fire Warhammer
							-- #endif
							i(27463),	-- Terror Flame Dagger
							i(27476),	-- Truncheon of Five Hells
							i(27477),	-- Faol's Signet of Cleansing
							i(27466),	-- Headdress of Alacrity
							-- #if AFTER 7.3.5
							i(24073),	-- Garrote-String Necklace
							i(24096),	-- Heartblood Prayer Beads
							-- #endif
							i(27464),	-- Omor's Unyielding Will
							i(27539),	-- Justice Bearer's Pauldrons
							i(27906),	-- Crimsonforge Breastplate
							i(27462),	-- Crimson Bracers of Gloom
							-- #if AFTER 7.3.5
							i(24090),	-- Bloodstained Ravager Gauntlets
							-- #endif
							i(27465),	-- Mana-Etched Gloves
							i(27478),	-- Girdle of the Blasted Reaches
							-- #if AFTER 7.3.5
							i(24091),	-- Tenacious Defender
							-- #endif
							i(27467),	-- Silent-Strider Kneeboots
							i(27895),	-- Band of Many Prisms
							applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
							i(23886),	-- Omor's Hoof
						},
					}),
					e(529, {	-- Vazruden the Herald
						["creatureID"] = 17307,
						["groups"] = {
							i(23890, {	-- Ominous Letter [Alliance]
								["races"] = ALLIANCE_ONLY,
							}),
							i(23892, {	-- Ominous Letter [Horde]
								["races"] = HORDE_ONLY,
							}),
						},
					}),
					n(17536, {	-- Nazan
						crit(3706, {	-- Nazan
							["achievementID"] = 667,
							["timeline"] = { ADDED_3_0_2 },
						}),
						i(23901),	-- Nazan's Head
						i(33833),	-- Nazan's Riding Crop
					}),
					o(185168, {	-- Reinforced Fel Iron Chest
						["description"] = "Available after defeating both Vazruden the Herald and Nazan.",
						["crs"] = { 17307, 17536 },	-- Vazruden and Nazan
						["groups"] = {
							-- #if AFTER 7.3.5
							i(24044),	-- Hellreaver
							i(24155),	-- Ursol's Claw
							-- #endif
							i(29346),	-- Feltooth Eviscerator
							i(27455),	-- Irondrake Faceguard
							i(27454),	-- Volcanic Pauldrons
							-- #if AFTER 7.3.5
							i(24150),	-- Mok'Nathal Wildercloak
							-- #endif
							i(27461),	-- Chestguard of the Prowler
							i(27456),	-- Raiments of Nature's Breath
							i(27452),	-- Light Scribe Bands
							i(27459),	-- Vambraces of Daring
							i(27457),	-- Life Bearer's Gauntlets
							i(32077),	-- Wrath-Infused Gauntlets
							i(29238),	-- Lion's Heart Girdle
							-- #if AFTER 7.3.5
							i(24063),	-- Shifting Sash of Midnight
							-- #endif
							i(29264),	-- Tree-Mender's Belt
							-- #if AFTER 7.3.5
							i(24046),	-- Kilt of Rolling Thunders
							i(24083),	-- Lifegiver Britches
							-- #endif
							i(27458),	-- Oceansong Kilt
							-- #if AFTER 7.3.5
							i(24064),	-- Ironsole Clompers
							-- #endif
							i(27453),	-- Averinn's Ring of Slaying
							-- #if AFTER 7.3.5
							i(24045),	-- Band of Renewal
							i(24151),	-- Mok'Nathal Clan Ring
							-- #endif
							i(27460),	-- Reavers' Ring
							-- #if AFTER 7.3.5
							i(24154),	-- Witching Band
							-- #endif
						},
					}),
				},
			}),
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(248, {
		q(35572),	-- Hellfire Ramparts Reward Quest - Normal completion
		q(35573),	-- Hellfire Ramparts Reward Quest - Heroic completion
	}),
})));
