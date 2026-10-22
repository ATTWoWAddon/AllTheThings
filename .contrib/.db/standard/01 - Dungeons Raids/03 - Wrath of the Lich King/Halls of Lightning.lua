-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local BJARNGRIM = 597;
local VOLKHAN = 598;
local IONAR = 599;
local LOKEN = 600;

------ EncounterToCRS ------
local EncounterToCRS = {
	[BJARNGRIM] = { 28586 },	-- General Bjarngrim
	[VOLKHAN] = { 28587 },	-- Volkhan
	[IONAR] = { 28546 },	-- Ionar
	[LOKEN] = { 28923 },	-- Loken
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	inst(275, {	-- Halls of Lightning
		["lore"] = "Upon departing Azeroth, the titans entrusted loyal protectors with safeguarding Ulduar, an enigmatic city nestled in the mountains of the Storm Peaks. Designated supreme among his brethren was the guardian known as Loken, but with the power of the titan complex in his hands, he turned to darkness and plunged the region into chaos.",
		["mapID"] = HALLS_OF_LIGHTNING,
		["coord"] = { 38.0, 14.7, THE_STORM_PEAKS },
		["maps"] = { HALLS_OF_LIGHTNING_FLOOR2 },
		["lvl"] = lvlsquish(75, 75, 20),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(486, {	-- Halls of Lightning
					-- #if AFTER 7.3.5
					crit(5455, {	-- General Bjarngrim
						["_encounter"] = { BJARNGRIM, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5456, {	-- Ionar
						["_encounter"] = { IONAR, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5457, {	-- Volkhan
						["_encounter"] = { VOLKHAN, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5458, {	-- Loken
						["_encounter"] = { LOKEN, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					-- #else
					crit(5455, {	-- General Bjarngrim
						["_encounter"] = { BJARNGRIM, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5456, {	-- Ionar
						["_encounter"] = { IONAR, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5457, {	-- Volkhan
						["_encounter"] = { VOLKHAN, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #if ANYCLASSIC
					-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
					crit(5629, {	-- Loken
						["_encounter"] = { LOKEN, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #else
					crit(5458, {	-- Loken
						["_encounter"] = { LOKEN, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
					-- #endif
				}),
				-- #if ANYCLASSIC
				applyclassicphase(WRATH_PHASE_TWO, ach(17299, {	-- Defense Protocol Alpha: Halls of Lightning
					crit(57761, {	-- General Bjarngrim
						["_encounter"] = { BJARNGRIM, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57759, {	-- Volkhan
						["_encounter"] = { VOLKHAN, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57760, {	-- Ionar
						["_encounter"] = { IONAR, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57756, {	-- Loken
						["_encounter"] = { LOKEN, DEFENSE_PROTOCOL_ALPHA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_THREE, ach(18598, {	-- Defense Protocol Beta: Halls of Lightning
					crit(60604, {	-- General Bjarngrim
						["_encounter"] = { BJARNGRIM, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60602, {	-- Volkhan
						["_encounter"] = { VOLKHAN, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60603, {	-- Ionar
						["_encounter"] = { IONAR, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60601, {	-- Loken
						["_encounter"] = { LOKEN, DEFENSE_PROTOCOL_BETA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_FOUR, ach(19435, {	-- Defense Protocol Gamma: Halls of Lightning
					crit(63353, {	-- General Bjarngrim
						["_encounter"] = { BJARNGRIM, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63349, {	-- Volkhan
						["_encounter"] = { VOLKHAN, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63350, {	-- Ionar
						["_encounter"] = { IONAR, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63348, {	-- Loken
						["_encounter"] = { LOKEN, DEFENSE_PROTOCOL_GAMMA },
					}),
				})),
				-- #endif
				ach(497, {	-- Heroic: Halls of Lightning
					crit(6831, {	-- General Bjarngrim
						["_encounter"] = { BJARNGRIM, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6832, {	-- Ionar
						["_encounter"] = { IONAR, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6833, {	-- Volkhan
						["_encounter"] = { VOLKHAN, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(5616, {	-- Loken
						["_encounter"] = { LOKEN, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(29862, {	-- Clearing the Way
					["qg"] = 56027,	-- Stormherald Eljrrin
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(77, 77, 20),
					["groups"] = {
						objective(1, {	-- 0/3 Stormforged Mender slain
							["provider"] = { "n", 28582 },	-- Stormforged Mender
						}),
						objective(2, {	-- 0/3 Stormforged Tactician slain
							["provider"] = { "n", 28581 },	-- Stormforged Tactician
						}),
						objective(3, {	-- 0/1 General Bjarngrim slain
							["provider"] = { "n", 28586 },	-- General Bjarngrim
						}),
					},
				}),
				q(13109, {	-- Diametrically Opposed
					["qg"] = 30105,	-- King Jokkum
					["coord"] = { 65.4, 60.2, THE_STORM_PEAKS },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(77, 77, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Volkhan Defeated
							["provider"] = { "n", 28587 },	-- Volkhan
						}),
						i(43193),	-- Lightning-Infused Mantle
						i(43194),	-- Charred Leather Shoulderguards
						i(43195),	-- Stormforged Shoulders
						i(43197),	-- Pauldrons of Extinguished Hatred
						i(43198),	-- Mantle of Volkhan
					},
				}),
				q(29860, {	-- Diametrically Opposed
					["qg"] = 56027,	-- Stormherald Eljrrin
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(77, 77, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Volkhan Defeated
							["provider"] = { "n", 28587 },	-- Volkhan
						}),
						i(43193),	-- Lightning-Infused Mantle
						i(43194),	-- Charred Leather Shoulderguards
						i(43195),	-- Stormforged Shoulders
						i(43197),	-- Pauldrons of Extinguished Hatred
						i(43198),	-- Mantle of Volkhan
					},
				}),
				q(29863, {	-- Stormherald Eljrrin
					["sourceQuest"] = 13047,	-- The Reckoning
					["qg"] = 30105,	-- King Jokkum
					["coord"] = { 65.4, 60.1, THE_STORM_PEAKS },
					["timeline"] = { ADDED_4_3_0 },
					["isBreadcrumb"] = true,
				}),
				q(13108, {	-- Whatever it Takes!
					["sourceQuest"] = 13047,	-- The Reckoning
					["qg"] = 30105,	-- King Jokkum
					["coord"] = { 65.4, 60.2, THE_STORM_PEAKS },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(77, 77, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Loken's Tongue
							["provider"] = { "i", 43151 },	-- Loken's Tongue
							["cr"] = 28923,	-- Loken
						}),
						i(42844),	-- Robes of Lightning
						i(43207),	-- Hardened Tongue Tunic
						i(43208),	-- Lightningbringer's Hauberk
						i(43209),	-- Breastplate of Jagged Stone
					},
				}),
				q(29861, {	-- Whatever it Takes!
					["sourceQuest"] = 29863,	-- Stormherald Eljrrin
					["qg"] = 56027,	-- Stormherald Eljrrin
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(77, 77, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Loken's Tongue
							["provider"] = { "i", 43151 },	-- Loken's Tongue
							["cr"] = 28923,	-- Loken
						}),
						i(42844),	-- Robes of Lightning
						i(43207),	-- Hardened Tongue Tunic
						i(43208),	-- Lightningbringer's Hauberk
						i(43209),	-- Breastplate of Jagged Stone
					},
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(37858),	-- Awakened Handguards
					i(36999),	-- Boots of the Terrestrial Guardian
					i(37857),	-- Helm of the Lightning Halls
					i(37856),	-- Librarian's Paper Cutter
					i(42780),	-- Relics of Ulduar
					i(36997),	-- Sash of the Hardened Watcher
					i(37000),	-- Storming Vortex Bracers
				}),
				BossOnly(BJARNGRIM, {
					i(36979),	-- Bjarngrim Family Signet
					i(36980),	-- Hewn Sparring Quarterstaff
					i(37814),	-- Iron Dwarf Smith Pauldrons
					i(36982),	-- Mantle of Electrical Charges
					i(37818),	-- Patroller's War-Kilt
					i(157580, { ["timeline"] = { ADDED_7_3_5 } }),	-- Spark of the Forge
					i(37826),	-- The General's Steel Girdle
					i(37825),	-- Traditionally Dyed Handguards
				}),
				BossOnly(VOLKHAN, {
					i(37842),	-- Belt of Vivacity
					i(36983),	-- Cape of Seething Steam
					i(36984),	-- Eternally Folded Blade
					i(37843),	-- Giant-Hair Woven Gloves
					i(36986),	-- Kilt of Molten Golems
					i(37840),	-- Shroud of Reverberation
					i(37841),	-- Slag Footguards
					i(157579, { ["timeline"] = { ADDED_7_3_5 } }),	-- Slag-Stained Legplates
					i(36985),	-- Volkhan's Hood
				}),
				BossOnly(IONAR, {
					i(37846),	-- Charged-Bolt Grips
					i(37845),	-- Cord of Swirling Winds
					i(39535),	-- Ionar's Girdle
					i(39534),	-- Pauldrons of the Lightning Revenant
					i(37847),	-- Skywall Striders
					i(39536),	-- Thundercloud Grasps
					i(39657),	-- Tornado Cuffs
					i(37844),	-- Winged Talisman
				}),
				BossOnly(LOKEN, {
					i(37853),	-- Advanced Tooled-Leather Bands
					i(36989),	-- Ancient Measuring Rod
					i(36988),	-- Chaotic Spiral Amulet
					i(37852),	-- Colossal Skull-Clad Cleaver
					i(41799),	-- Design: Eternal Earthsiege Diamond (RECIPE!)
					i(36995),	-- Fists of Loken
					i(37850),	-- Flowing Sash of Order
					i(36996),	-- Hood of the Furtive Assassin
					i(36992),	-- Leather-Braced Chain Leggins
					i(37848),	-- Lightning Giant Staff
					i(37855),	-- Mail Girdle of the Audient Earth
					i(122237, { ["timeline"] = { ADDED_6_1_0 } }),	-- Music Roll: Mountains of Thunder
					i(37851),	-- Ornate Woolen Stola
					i(37849),	-- Planetary Helm
					i(36994),	-- Projectile Activator
					i(36991),	-- Raiments of the Titans
					i(36993),	-- Seal of the Pantheon
					i(37854),	-- Woven Bracae Leggings
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(BJARNGRIM, {
					i(36981, { ["timeline"] = { REMOVED_5_0_4 } }),	-- Hardened Vrykul Throwing Axe
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				CommonBossDrops({
					currency(101, { ["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 } }),	-- Emblem of Heroism
				}),
				BossOnly(BJARNGRIM, {
					ach(1834),	-- Lightning Struck
				}),
				BossOnly(VOLKHAN, {
					ach(2042),	-- Shatter Resistant
				}),
				BossOnly(IONAR),
				BossOnly(LOKEN, {
					i(43724, { ["timeline"] = { REMOVED_4_0_1 } }),	-- Celestial Ruby Ring (QI!)
					--
					ach(5103, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Halls of Lightning Guild Run
					ach(1867),	-- Timely Death
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(42780),	-- Relics of Ulduar
				}),
				BossOnly(LOKEN, {
					i(41799),	-- Design: Eternal Earthsiege Diamond (RECIPE!)
					i(122237, { ["timeline"] = { ADDED_6_1_0 } }),	-- Music Roll: Mountains of Thunder
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				n(ZONE_DROPS, {
					i(36999),	-- Boots of the Terrestrial Guardian
					i(36997),	-- Sash of the Hardened Watcher
					i(37000),	-- Storming Vortex Bracers
				}),
				BossOnly(BJARNGRIM, {
					i(36979),	-- Bjarngrim Family Signet
					i(36981, { ["timeline"] = { REMOVED_5_0_4 } }),	-- Hardened Vrykul Throwing Axe
					i(36980),	-- Hewn Sparring Quarterstaff
					i(36982),	-- Mantle of Electrical Charges
				}),
				BossOnly(VOLKHAN, {
					i(36983),	-- Cape of Seething Steam
					i(36984),	-- Eternally Folded Blade
					i(36986),	-- Kilt of Molten Golems
					i(36985),	-- Volkhan's Hood
				}),
				BossOnly(IONAR, {
					i(39535),	-- Ionar's Girdle
					i(39534),	-- Pauldrons of the Lightning Revenant
					i(39536),	-- Thundercloud Grasps
					i(39657),	-- Tornado Cuffs
				}),
				BossOnly(LOKEN, {
					i(36989),	-- Ancient Measuring Rod
					i(36988),	-- Chaotic Spiral Amulet
					i(36995),	-- Fists of Loken
					i(36996),	-- Hood of the Furtive Assassin
					i(36992),	-- Leather-Braced Chain Leggins
					i(36994),	-- Projectile Activator
					i(36991),	-- Raiments of the Titans
					i(36993),	-- Seal of the Pantheon
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				n(ZONE_DROPS, {
					i(37858),	-- Awakened Handguards
					i(37857),	-- Helm of the Lightning Halls
					i(37856),	-- Librarian's Paper Cutter
				}),
				CommonBossDrops({
					currency(101, { ["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 } }),	-- Emblem of Heroism
				}),
				BossOnly(BJARNGRIM, {
					ach(1834),	-- Lightning Struck
					i(37814),	-- Iron Dwarf Smith Pauldrons
					i(37818),	-- Patroller's War-Kilt
					i(37826),	-- The General's Steel Girdle
					i(37825),	-- Traditionally Dyed Handguards
				}),
				BossOnly(VOLKHAN, {
					ach(2042),	-- Shatter Resistant
					i(37842),	-- Belt of Vivacity
					i(37843),	-- Giant-Hair Woven Gloves
					i(37840),	-- Shroud of Reverberation
					i(37841),	-- Slag Footguards
				}),
				BossOnly(IONAR, {
					i(37846),	-- Charged-Bolt Grips
					i(37845),	-- Cord of Swirling Winds
					i(37847),	-- Skywall Striders
					i(37844),	-- Winged Talisman
				}),
				BossOnly(LOKEN, {
					i(43724, { ["timeline"] = { REMOVED_4_0_1 } }),	-- Celestial Ruby Ring (QI!)
					--
					ach(5103, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Halls of Lightning Guild Run
					ach(1867),	-- Timely Death
					i(37853),	-- Advanced Tooled-Leather Bands
					i(37852),	-- Colossal Skull-Clad Cleaver
					i(37850),	-- Flowing Sash of Order
					i(37848),	-- Lightning Giant Staff
					i(37855),	-- Mail Girdle of the Audient Earth
					i(37851),	-- Ornate Woolen Stola
					i(37849),	-- Planetary Helm
					i(37854),	-- Woven Bracae Leggings
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_TWO, n(DEFENSE_PROTOCOL_ALPHA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(394441, 413078, 424205),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(BJARNGRIM, {
						i(39189),	-- Boots of Persistence
						i(39141),	-- Deflection Band
						i(39192),	-- Gloves of Dark Gestures
					}),
					BossOnly(VOLKHAN, {
						i(39188),	-- Chivalric Chestguard
						i(39140),	-- Knife of Incision
						i(39191),	-- Splint-Bound Leggings
					}),
					BossOnly(IONAR, {
						i(39190),	-- Agonal Sash
						i(39146),	-- Collar of Dissolution
						i(39139),	-- Ravaging Sabatons
					}),
					BossOnly(LOKEN, {
						i(40526),	-- Gown of the Spell-Weaver
						i(40488),	-- Ice Spire Scepter
						i(40426),	-- Signet of the Accord
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(413078, 424205),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(BJARNGRIM, {
						i(46347),	-- Cloak of the Dormant Blaze
						i(46341),	-- Drape of the Spellweaver
					}),
					BossOnly(VOLKHAN, {
						i(46343),	-- Fervor of the Protectorate
						i(46342),	-- Golemheart Longbow
					}),
					BossOnly(IONAR, {
						i(46344),	-- Iceshear Mantle
						i(45677),	-- Treacherous Shoulderpads
					}),
					BossOnly(LOKEN, {
						i(45680),	-- Armbands of the Construct
						i(45676),	-- Chestplate of Vicious Potency
						i(46350),	-- Pillar of Fortitude
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424205),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(BJARNGRIM),
					BossOnly(VOLKHAN),
					BossOnly(IONAR),
					BossOnly(LOKEN),
				},
			})),
			-- #endif
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(275, {
		q(35456),	-- Halls of Lightning Reward Quest - Normal completion
		q(35457),	-- Halls of Lightning Reward Quest - ?
		q(35458),	-- Halls of Lightning Reward Quest - Heroic completion
	}),
}));
