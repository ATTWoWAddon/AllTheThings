-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local SELIN = 530;
local VEXALLUS = 531;
local DELRISSA = 532;
local KAEL = 533;

------ EncounterToCRS ------
local EncounterToCRS = {
	[SELIN] = { 24723 },	-- Selin Fireheart
	[VEXALLUS] = { 24744 },	-- Vexallus
	[DELRISSA] = { 24560 },	-- Priestess Delrissa
	[KAEL] = { 24664 },	-- Kael'thas Sunstrider
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_FIVE, {
	inst(249, bubbleDownSelf({ ["timeline"] = { ADDED_2_4_0 } }, {	-- Magisters' Terrace
		["lore"] = "Situated on a ridge in northeastern Quel'Danas, Magisters' Terrace serves as a convenient base for Kael'thas and his underlings as they assist the proceedings in the Sunwell Plateau. Kael'thas stands poised to desecrate the ancient lands of his people with an incomparable evil. Should he succeed, the Legion's darkness will rapidly spread to all corners of Azeroth, extinguishing everything in its path.",
		-- #if BEFORE MOP
		["zone-text-areaID"] = 4095,	-- Magisters' Terrace
		-- #endif
		["coord"] = { 61.23, 30.94, ISLE_OF_QUELDANAS },	-- Magister's Terrace, Isle of Quel'Danas
		["maps"] = {
			MAGISTERS_TERRACE,	-- Grand Magister's Asylum
			349,	-- Observation Grounds
		},
		["lvl"] = lvlsquish(65, 65, 25),
		["groups"] = {
			n(QUESTS, {
				q(29686, {	-- A Radical Notion
					["qg"] = 55007,	-- Exarch Larethor
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(68, 68, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Volatile Essence
							["provider"] = { "i", 73084 },	-- Volatile Essence
						}),
					},
				}),
				q(11492, {	-- Hard to Kill
					["sourceQuest"] = 11490,	-- The Scryer's Scryer
					["qg"] = 24848,	-- Kalecgos
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(70, 70, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Head of Kael'thas
							["provider"] = { "i", 34157 },	-- Head of Kael'thas
						}),
						i(35487),	-- Delicate Crimson Spinel
						i(35488),	-- Brilliant Crimson Spinel
					},
				}),
				q(29685, {	-- Hard to Kill
					["sourceQuest"] = 11490,	-- The Scryer's Scryer
					["qg"] = 24848,	-- Kalecgos
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(68, 68, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Head of Kael'thas
							["provider"] = { "i", 34157 },	-- Head of Kael'thas
						}),
						i(35487),	-- Delicate Crimson Spinel
						i(35488),	-- Brilliant Crimson Spinel
					},
				}),
				q(11488, {	-- Magisters' Terrace
					["sourceQuests"] = {
						11481,	-- Crisis at the Sunwell
						11482,	-- Duty Calls
					},
					["qg"] = 24813,	-- Exarch Larethor
					["coord"] = { 47.4, 30.7, ISLE_OF_QUELDANAS },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(70, 70, 25),
				}),
				q(29682, {	-- Magisters' Terrace
					["sourceQuests"] = {
						11481,	-- Crisis at the Sunwell
						11482,	-- Duty Calls
					},
					["qg"] = 24967,	-- Captain Theris Dawnhearth
					["coord"] = { 47.4, 30.4, ISLE_OF_QUELDANAS },
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(68, 68, 25),
				}),
				q(29684, {	-- Severed Communications
					["sourceQuest"] = 29682,	-- Magisters' Terrace
					["qg"] = 55007,	-- Exarch Larethor
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(68, 68, 25),
				}),
				q(11490, {	-- The Scryer's Scryer
					["sourceQuests"] = {
						-- #if AFTER 4.3.0
						29684,	-- Severed Communications
						-- #else
						11488,	-- Magisters' Terrace
						-- #endif
					},
					["lvl"] =
						-- #if AFTER 4.3.0
						lvlsquish(68, 68, 25),
						-- #else
						lvlsquish(70, 70, 25),
						-- #endif
					["qg"] = 24822,	-- Tyrith
					["groups"] = {
						objective(1, {	-- Scrying Orb Activated
							["provider"] = { "o", 189292 },	-- Scrying Orb
						}),
					},
				}),
				q(29687, {	-- Twisted Associations
					["qg"] = 55007,	-- Exarch Larethor
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(68, 68, 25),
					["groups"] = {
						objective(1, {	-- Selin Fireheart slain
							["provider"] = { "n", 24723 },	-- Selin Fireheart
						}),
						objective(2, {	-- Priestess Delrissa slain
							["provider"] = { "n", 24560 },	-- Priestess Delrissa
						}),
					},
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(35516),	-- Sun Touched Satchel
				}),
				BossOnly(SELIN, {
					i(34697),	-- Bindings of Raging Fire
					i(34698),	-- Bracers of the Forest Stalker
					i(34702),	-- Cloak of Swift Mending
					i(34602),	-- Eversong Bracers
					i(34700),	-- Gauntlets of Divine Blessings
					i(34604),	-- Jaded Crystal Dagger
					i(34701),	-- Leggings of the Betrayed
					i(34601),	-- Shoulderplates of Everlasting Pain
					i(34699),	-- Sun-Forged Cleaver
				}),
				BossOnly(VEXALLUS, {
					i(73084),	-- Volatile Essence (QI!)
					--
					i(34704),	-- Band of Arcane Alacrity
					i(34706),	-- Band of Determination
					i(34707),	-- Boots of Resuscitation
					i(34705),	-- Bracers of Divine Infusion
					i(34605),	-- Breastplate of Fierce Survival
					i(34708),	-- Cloak of the Coming Night
					i(34606),	-- Edge of Oppression
					i(34607),	-- Fel-Tinged Mantle
					i(34703),	-- Landro's Dancing Blade
					i(34608),	-- Rod of the Blazing Light
				}),
				BossOnly(DELRISSA, {
					i(35756),	-- Formula: Enchant Cloak - Greater Dodge / TBC: Formula: Enchant Cloak - Steelweave (RECIPE!)
					i(34790),	-- Battle-Mace of the High Priestess
					i(34789),	-- Bracers of Slaughter
					i(34792),	-- Cloak of the Betrayed
					i(34473),	-- Commendation of Kael'thas
					i(34788),	-- Duskhallow Mantle
					i(34791),	-- Gauntlets of the Tranquil Waves
					i(34472),	-- Shard of Contempt
					i(34470),	-- Timbal's Focusing Crystal
					i(34471),	-- Vial of the Sunwell
				}),
				BossOnly(KAEL, {
					filter(RECIPES, {
						i(35305),	-- Design: Brilliant Living Ruby (RECIPE!) [BoP]
						i(35306, {	-- Design: Delicate Living Ruby (RECIPE!) [BoP]
							["timeline"] = { ADDED_2_4_0, REMOVED_4_0_3 },
						}),
						i(35307),	-- Design: Rigid Star of Elune (RECIPE!) [BoP]
						i(35304),	-- Design: Solid Star of Elune (RECIPE!) [BoP]
						i(35297),	-- Formula: Enchant Boots - Boar's Speed (RECIPE!)
						i(35299),	-- Formula: Enchant Boots - Cat's Swiftness (RECIPE!)
						i(35298),	-- Formula: Enchant Boots - Vitality (RECIPE!)
						i(35302),	-- Pattern: Cobrascale Gloves (RECIPE!)
						i(35303),	-- Pattern: Gloves of the Living Touch (RECIPE!)
						i(35301),	-- Pattern: Netherdrake Gloves (RECIPE!)
						i(35308),	-- Pattern: Unyielding Bracers (RECIPE!)
						i(35309),	-- Pattern: Unyielding Girdle (RECIPE!)
						i(35300),	-- Pattern: Windstrike Gloves (RECIPE!)
						i(35296),	-- Plans: Adamantite Weapon Chain (RECIPE!)
						i(35294),	-- Recipe: Elixir of Empowerment (RECIPE!)
						i(35295),	-- Recipe: Haste Potion (BoP Version) (RECIPE!)
						i(35310),	-- Schematic: Healing Potion Injector (RECIPE!) [BoP]
						i(35311),	-- Schematic: Mana Potion Injector (RECIPE!) [BoP]
					}),
					i(34157),	-- Head of Kael'thas (QI!)
					--
					ach(661),	-- Magister's Terrace
					i(34794),	-- Axe of Shattered Dreams
					i(34798),	-- Band of Celerity
					i(34616),	-- Breeching Comet
					i(34810),	-- Cloak of Blade Turning
					i(34793),	-- Cord of Reconstruction
					i(34611),	-- Cudgel of Consecration
					i(34808),	-- Gloves of Arcane Acuity
					i(34612),	-- Greaves of the Penitent Knight
					i(34799),	-- Hauberk of the War Bringer
					i(34795),	-- Helm of Sanctification
					i(34625),	-- Kharmaa's Ring of Fate
					i(34615),	-- Netherforce Chestplate
					i(35504),	-- Phoenix Hatchling (PET!)
					i(34609),	-- Quickening Blade of the Prince
					i(34796),	-- Robes of the Summer Flame
					i(34610),	-- Scarlet Sin'dorei Robes
					i(34613),	-- Shoulderpads of the Silvermoon Retainer
					i(34797),	-- Sun-Infused Focus Staff
					i(34809),	-- Sunrage Treads
					i(34807),	-- Sunstrider Warboots
					i(34614),	-- Tunic of the Ranger Lord
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(DELRISSA, {
					i(34783, { ["timeline"] = { REMOVED_5_0_4 } }),	-- Nightstrike
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(70, 70, 30) }).AddGroups({
				n(COMMON_BOSS_DROPS, {
					i(35275, {	-- Orb of Sin'dorei (TOY!)
						["crs"] = {
							24723,	-- Selin Fireheart
							24744,	-- Vexallus
							24560,	-- Priestess Delrissa
							24664,	-- Kael'thas Sunstrider
						},
					}),
				}),
				BossOnly(DELRISSA, {
					i(34603, { ["timeline"] = { REMOVED_5_0_4 } }),	-- Distracting Blades
				}),
				BossOnly(KAEL, {
					i(34160),	-- The Signet Ring of Prince Kael'thas (QI!)
					--
					ach(682),	-- Heroic: Magister's Terrace
					ach(5082, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Magister's Terrace Guild Run
					ach(884, {	-- Swift White Hawkstrider
						["provider"] = { "i", 35513 },	-- Swift White Hawkstrider
						["filterID"] = MOUNTS,
					}),
					i(35513),	-- Swift White Hawkstrider (MOUNT!)
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(35516),	-- Sun Touched Satchel
				}),
				BossOnly(VEXALLUS, {
					i(73084),	-- Volatile Essence (QI!)
				}),
				BossOnly(DELRISSA, {
					i(35756),	-- Formula: Enchant Cloak - Greater Dodge / TBC: Formula: Enchant Cloak - Steelweave (RECIPE!)
				}),
				BossOnly(KAEL, {
					filter(RECIPES, {
						-- #if BEFORE CATA
						i(35306, {	-- Design: Bright Living Ruby (RECIPE!) [BoP]
							["timeline"] = { ADDED_2_4_0, REMOVED_4_0_3 },
						}),
						i(35307),	-- Design: Rigid Dawnstone (RECIPE!) [BoP]
						i(35305),	-- Design: Runed Living Ruby (RECIPE!) [BoP]
						i(35304),	-- Design: Solid Star of Elune (RECIPE!) [BoP]
						-- #else
						i(35305),	-- Design: Brilliant Living Ruby (RECIPE!) [BoP]
						i(35306, {	-- Design: Delicate Living Ruby (RECIPE!) [BoP]
							["timeline"] = { ADDED_2_4_0, REMOVED_4_0_3 },
						}),
						i(35307),	-- Design: Rigid Star of Elune (RECIPE!) [BoP]
						i(35304),	-- Design: Solid Star of Elune (RECIPE!) [BoP]
						-- #endif
						i(35297),	-- Formula: Enchant Boots - Boar's Speed (RECIPE!)
						i(35299),	-- Formula: Enchant Boots - Cat's Swiftness (RECIPE!)
						i(35298),	-- Formula: Enchant Boots - Vitality (RECIPE!)
						i(35302),	-- Pattern: Cobrascale Gloves (RECIPE!)
						i(35303),	-- Pattern: Gloves of the Living Touch (RECIPE!)
						i(35301),	-- Pattern: Netherdrake Gloves (RECIPE!)
						i(35308),	-- Pattern: Unyielding Bracers (RECIPE!)
						i(35309),	-- Pattern: Unyielding Girdle (RECIPE!)
						i(35300),	-- Pattern: Windstrike Gloves (RECIPE!)
						i(35296),	-- Plans: Adamantite Weapon Chain (RECIPE!)
						i(35294),	-- Recipe: Elixir of Empowerment (RECIPE!)
						i(35295),	-- Recipe: Haste Potion (BoP Version) (RECIPE!)
						i(35310),	-- Schematic: Healing Potion Injector (RECIPE!) [BoP]
						i(35311),	-- Schematic: Mana Potion Injector (RECIPE!) [BoP]
					}),
					i(34157),	-- Head of Kael'thas (QI!)
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(SELIN, {
					i(34697),	-- Bindings of Raging Fire
					i(34698),	-- Bracers of the Forest Stalker
					i(34702),	-- Cloak of Swift Mending
					i(34700),	-- Gauntlets of Divine Blessings
					i(34701),	-- Leggings of the Betrayed
					i(34699),	-- Sun-Forged Cleaver
				}),
				BossOnly(VEXALLUS, {
					i(34704),	-- Band of Arcane Alacrity
					i(34706),	-- Band of Determination
					i(34707),	-- Boots of Resuscitation
					i(34705),	-- Bracers of Divine Infusion
					i(34708),	-- Cloak of the Coming Night
					i(34703),	-- Landro's Dancing Blade
				}),
				BossOnly(DELRISSA, {
					i(34790),	-- Battle-Mace of the High Priestess
					i(34789),	-- Bracers of Slaughter
					i(34792),	-- Cloak of the Betrayed
					i(34788),	-- Duskhallow Mantle
					i(34791),	-- Gauntlets of the Tranquil Waves
					i(34783, { ["timeline"] = { REMOVED_5_0_4 } }),	-- Nightstrike
				}),
				BossOnly(KAEL, {
					ach(661),	-- Magister's Terrace
					i(35504),	-- Phoenix Hatchling (PET!)
					i(34794),	-- Axe of Shattered Dreams
					i(34798),	-- Band of Celerity
					i(34810),	-- Cloak of Blade Turning
					i(34793),	-- Cord of Reconstruction
					i(34808),	-- Gloves of Arcane Acuity
					i(34799),	-- Hauberk of the War Bringer
					i(34795),	-- Helm of Sanctification
					i(34625),	-- Kharmaa's Ring of Fate
					i(34796),	-- Robes of the Summer Flame
					i(34797),	-- Sun-Infused Focus Staff
					i(34809),	-- Sunrage Treads
					i(34807),	-- Sunstrider Warboots
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, {
				["description"] = "You must completed the 'Hard to Kill' quest chain on Normal Mode before Heroic Mode becomes available.",
				["sourceQuest"] = 11492,	-- Hard to Kill
				["lvl"] = lvlsquish(70, 70, 30),
			}).AddGroups({
				n(COMMON_BOSS_DROPS, {
					i(35275, {	-- Orb of Sin'dorei (TOY!)
						["crs"] = {
							24723,	-- Selin Fireheart
							24744,	-- Vexallus
							24560,	-- Priestess Delrissa
							24664,	-- Kael'thas Sunstrider
						},
					}),
				}),
				BossOnly(SELIN, {
					i(34603, { ["timeline"] = { REMOVED_5_0_4 } }),	-- Distracting Blades
					i(34602),	-- Eversong Bracers
					i(34604),	-- Jaded Crystal Dagger
					i(34601),	-- Shoulderplates of Everlasting Pain
				}),
				BossOnly(VEXALLUS, {
					i(34605),	-- Breastplate of Fierce Survival
					i(34606),	-- Edge of Oppression
					i(34607),	-- Fel-Tinged Mantle
					i(34608),	-- Rod of the Blazing Light
				}),
				BossOnly(DELRISSA, {
					i(34473),	-- Commendation of Kael'thas
					i(34472),	-- Shard of Contempt
					i(34470),	-- Timbal's Focusing Crystal
					i(34471),	-- Vial of the Sunwell
				}),
				BossOnly(KAEL, {
					i(34160),	-- The Signet Ring of Prince Kael'thas (QI!)
					--
					ach(682),	-- Heroic: Magister's Terrace
					ach(5082, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Magister's Terrace Guild Run
					ach(884, {	-- Swift White Hawkstrider
						["provider"] = { "i", 35513 },	-- Swift White Hawkstrider
						["filterID"] = MOUNTS,
					}),
					i(34616),	-- Breeching Comet
					i(34611),	-- Cudgel of Consecration
					i(34612),	-- Greaves of the Penitent Knight
					i(34615),	-- Netherforce Chestplate
					i(34609),	-- Quickening Blade of the Prince
					i(34610),	-- Scarlet Sin'dorei Robes
					i(34613),	-- Shoulderpads of the Silvermoon Retainer
					i(35513),	-- Swift White Hawkstrider (MOUNT!)
					i(34614),	-- Tunic of the Ranger Lord
				}),
			}),
			-- #endif
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(249, {
		q(35531),	-- Magisters' Terrace Reward Quest - Normal completion
		q(35532),	-- Magisters' Terrace Reward Quest - Heroic completion
	}),
})));
