-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local TROLLGORE = 588;
local NOVOS = 589;
local KING_DRED = 590;
local THARONJA = 591;

------ EncounterToCRS ------
local EncounterToCRS = {
	[TROLLGORE] = { 26630 },	-- Trollgore
	[NOVOS] = { 26631 },	-- Novos the Summoner
	[KING_DRED] = { 27483 },	-- King Dred
	[THARONJA] = { 26632 },	-- The Prophet Tharon'ja
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	inst(273, {	-- Drak'Tharon Keep
		["mapID"] = DRAKTHARON_KEEP,
		["coord"] = { 28.6, 86.9, ZULDRAK },
		["maps"] = { DRAKTHARON_KEEP_FLOOR2 },
		["lvl"] = lvlsquish(69, 69, 15),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(482, {	-- Drak'Tharon Keep
					-- #if AFTER 7.3.5
					crit(5443, {	-- Trollgore
						["_encounter"] = { TROLLGORE, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5444, {	-- Novos the Summoner
						["_encounter"] = { NOVOS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5445, {	-- King Dred
						["_encounter"] = { KING_DRED, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(9098, {	-- The Prophet Tharon'ja
						["_encounter"] = { THARONJA, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					-- #else
					crit(5443, {	-- Trollgore
						["_encounter"] = { TROLLGORE, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5444, {	-- Novos the Summoner
						["_encounter"] = { NOVOS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5445, {	-- King Dred
						["_encounter"] = { KING_DRED, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(9098, {	-- The Prophet Tharon'ja
						["_encounter"] = { THARONJA, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
				}),
				-- #if ANYCLASSIC
				applyclassicphase(WRATH_PHASE_TWO, ach(17292, {	-- Defense Protocol Alpha: Drak'Tharon Keep
					crit(57735, {	-- Trollgore
						["_encounter"] = { TROLLGORE, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57736, {	-- Novos the Summoner
						["_encounter"] = { NOVOS, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57737, {	-- King Dred
						["_encounter"] = { KING_DRED, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57738, {	-- The Prophet Tharon'ja
						["_encounter"] = { THARONJA, DEFENSE_PROTOCOL_ALPHA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_THREE, ach(18594, {	-- Defense Protocol Beta: Drak'Tharon Keep
					crit(60587, {	-- Trollgore
						["_encounter"] = { TROLLGORE, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60588, {	-- Novos the Summoner
						["_encounter"] = { NOVOS, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60589, {	-- King Dred
						["_encounter"] = { KING_DRED, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60590, {	-- The Prophet Tharon'ja
						["_encounter"] = { THARONJA, DEFENSE_PROTOCOL_BETA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_FOUR, ach(19431, {	-- Defense Protocol Gamma: Drak'Tharon Keep
					crit(63334, {	-- Trollgore
						["_encounter"] = { TROLLGORE, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63335, {	-- Novos the Summoner
						["_encounter"] = { NOVOS, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63336, {	-- King Dred
						["_encounter"] = { KING_DRED, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63337, {	-- The Prophet Tharon'ja
						["_encounter"] = { THARONJA, DEFENSE_PROTOCOL_GAMMA },
					}),
				})),
				-- #endif
				ach(493, {	-- Heroic: Drak'Tharon Keep
					crit(6813, {	-- Trollgore
						["_encounter"] = { TROLLGORE, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6814, {	-- Novos the Summoner
						["_encounter"] = { NOVOS, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6815, {	-- King Dred
						["_encounter"] = { KING_DRED, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(9261, {	-- The Prophet Tharon'ja
						["_encounter"] = { THARONJA, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(12238, {	-- Cleansing Drak'Tharon
					["sourceQuest"] = 12068,	-- Voices From the Dust
					-- #if AFTER 4.3.0.14890
					["altQuests"] = { 30120 },	-- Cleansing Drak'Tharon
					-- #endif
					["qg"] = 26787,	-- Image of Drakuru
					["qi"] = 35797,	-- Drakuru's Elixir
					["coord"] = { 71.7, 26.1, GRIZZLY_HILLS },
					["cost"] = { { "i", 38303, 5 } },	-- Enduring Mojo
					["lvl"] = lvlsquish(73, 73, 15),
					["groups"] = {
						i(40755),	-- Enticing Sabatons
						i(40757),	-- Shackles of Dark Whispers
						i(40756),	-- Shoulders of the Seducer
						i(40758),	-- Shroud of Temptation
					},
				}),
				q(30120, {	-- Cleansing Drak'Tharon
					["altQuests"] = { 12238 },	-- Cleansing Drak'Tharon
					["qg"] = 58149,	-- Image of Drakuru
					["qi"] = 35797,	-- Drakuru's Elixir
					["timeline"] = { ADDED_4_3_0 },
					["cost"] = { { "i", 38303, 5 } },	-- Enduring Mojo
					["lvl"] = lvlsquish(73, 73, 15),
					["groups"] = {
						i(40755),	-- Enticing Sabatons
						i(40757),	-- Shackles of Dark Whispers
						i(40756),	-- Shoulders of the Seducer
						i(40758),	-- Shroud of Temptation
					},
				}),
				q(13129, {	-- Head Games
					-- #if BEFORE 4.3.0.15005
					["sourceQuest"] = 12037,	-- Search and Rescue
					-- #endif
					["qgs"] = {
						-- #if AFTER 4.3.0.15005
						55677,	-- Kurzel
						-- #endif
						26664,	-- Kurzel
					},
					["lvl"] = lvlsquish(72, 72, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Ichor-Stained Cloth
							["provider"] = { "i", 43215 },	-- Ichor-Stained Cloth
							["cost"] = { { "i", 43214, 1 } },	-- Kurzel's Blouse Scrap
							["cr"] = 26631,	-- Novos the Summoner
						}),
						i(44368),	-- Accused Wristguards
						i(44369),	-- Disavowed Bracers
						i(44366),	-- Shameful Cuffs
						i(44367),	-- Scorned Bands
					},
				}),
				q(29828, {	-- What the Scourge Dred
					["qgs"] = {
						26664,	-- Kurzel
						29828,	-- Kurzel
					},
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(72, 72, 15),
					["groups"] = {
						objective(1, {	-- 0/1 King Dred's Tooth
							["provider"] = { "i", 74755 },	-- King Dred's Tooth
							["cr"] = 27483,	-- King Dred
						}),
					},
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(37800),	-- Aviary Guardsman's Hauberk
					i(35639),	-- Brighthelm of Guarding
					i(35640),	-- Darkweb Bindings
					i(38303, {	-- Enduring Mojo
						["crs"] = {
							27431,	-- Drakkari Commander
							26620,	-- Drakkari Guardian
							26639,	-- Drakkari Shaman
						},
					}),
					i(37799),	-- Reanimator's Cloak
					i(35641),	-- Scytheclaw Boots
					i(37801),	-- Waistguard of the Risen Knight
				}),
				BossOnly(TROLLGORE, {
					i(37714),	-- Batrider's Cord
					i(35620),	-- Berserker's Horns
					i(37715),	-- Cowl of the Dire Troll
					i(35619),	-- Infection Resistant Legguards
					i(37717),	-- Legs of Physical Regeneration
					i(37712),	-- Terrace Defence Boots
					i(35618),	-- Troll Butcherer
				}),
				BossOnly(NOVOS, {
					i(37722),	-- Breastplate of Undeath
					i(35631),	-- Crystal Pendant of Warding
					i(37721),	-- Cursed Lich Blade
					i(40490),	-- Necromantic Wristguards
					i(35632),	-- Robes of Novos
					i(157558, { ["timeline"] = { ADDED_7_3_5 } }),	-- Shoddily Stitched Shoulderguards
					i(35630),	-- Summoner's Stone Gavel
					i(37718),	-- Temple Crystal Fragment
				}),
				BossOnly(KING_DRED, {
					i(157561, { ["timeline"] = { ADDED_7_3_5 } }),	-- Dino-Toothed Waistguard
					i(37724),	-- Handler's Arm Strap
					i(37723),	-- Incisor Fragment
					i(37726),	-- King Dred's Helm
					i(37725),	-- Savage Wound Wrap
					i(35634),	-- Scabarous-Hide Helm
					i(35635),	-- Stable Master's Breeches
					i(35633),	-- Staff of the Great Reptile
				}),
				BossOnly(THARONJA, {
					i(35638),	-- Helmet of Living Flesh
					i(37784),	-- Keystone Great-Ring
					i(37791),	-- Leggings of the Winged Serpent
					i(37788),	-- Limb Regeneration Bracers
					i(37733),	-- Mojo Masked Crusher
					i(35637),	-- Muradin's Lost Greaves
					i(37798),	-- Overlook Handguards
					i(37732),	-- Spectral Seal of the Prophet
					i(37734),	-- Talisman of Troll Divinity
					i(35636),	-- Tharon'ja's Aegis
					i(37735),	-- Ziggurat Imprinted Chestguard
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				CommonBossDrops({
					currency(101, { ["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 } }),	-- Emblem of Heroism
				}),
				BossOnly(TROLLGORE, {
					ach(2151),	-- Consumption Junction
				}),
				BossOnly(NOVOS, {
					ach(2057),	-- Oh Novos!
				}),
				BossOnly(KING_DRED, {
					ach(2039),	-- Better Off Dred
				}),
				BossOnly(THARONJA, {
					i(43670, { ["timeline"] = { REMOVED_4_0_1 } }),	-- Prophet's Enchanted Tiki (QI!)
					--
					ach(5099, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Drak'Tharon Keep Guild Run
					i(41795, {	-- Design: Timeless Twilight Opal [CATA+] / Design: Timeless Forest Emerald (RECIPE!)
						["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 },
					}),
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(38303, {	-- Enduring Mojo
						["crs"] = {
							27431,	-- Drakkari Commander
							26620,	-- Drakkari Guardian
							26639,	-- Drakkari Shaman
						},
					}),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				n(ZONE_DROPS, {
					i(35639),	-- Brighthelm of Guarding
					i(35640),	-- Darkweb Bindings
					i(35641),	-- Scytheclaw Boots
				}),
				BossOnly(TROLLGORE, {
					i(35620),	-- Berserker's Horns
					i(35619),	-- Infection Resistant Legguards
					i(35618),	-- Troll Butcherer
				}),
				BossOnly(NOVOS, {
					i(35631),	-- Crystal Pendant of Warding
					i(35632),	-- Robes of Novos
					i(35630),	-- Summoner's Stone Gavel
				}),
				BossOnly(KING_DRED, {
					i(35634),	-- Scabarous-Hide Helm
					i(35635),	-- Stable Master's Breeches
					i(35633),	-- Staff of the Great Reptile
				}),
				BossOnly(THARONJA, {
					i(35638),	-- Helmet of Living Flesh
					i(35637),	-- Muradin's Lost Greaves
					i(35636),	-- Tharon'ja's Aegis
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				n(ZONE_DROPS, {
					i(37800),	-- Aviary Guardsman's Hauberk
					i(37799),	-- Reanimator's Cloak
					i(37801),	-- Waistguard of the Risen Knight
				}),
				CommonBossDrops({
					currency(101, { ["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 } }),	-- Emblem of Heroism
				}),
				BossOnly(TROLLGORE, {
					ach(2151),	-- Consumption Junction
					i(37714),	-- Batrider's Cord
					i(37715),	-- Cowl of the Dire Troll
					i(37717),	-- Legs of Physical Regeneration
					i(37712),	-- Terrace Defence Boots
				}),
				BossOnly(NOVOS, {
					ach(2057),	-- Oh Novos!
					i(37722),	-- Breastplate of Undeath
					i(37721),	-- Cursed Lich Blade
					i(40490),	-- Necromantic Wristguards
					i(37718),	-- Temple Crystal Fragment
				}),
				BossOnly(KING_DRED, {
					ach(2039),	-- Better Off Dred
					i(37724),	-- Handler's Arm Strap
					i(37723),	-- Incisor Fragment
					i(37726),	-- King Dred's Helm
					i(37725),	-- Savage Wound Wrap
				}),
				BossOnly(THARONJA, {
					i(43670, { ["timeline"] = { REMOVED_4_0_1 } }),	-- Prophet's Enchanted Tiki (QI!)
					--
					ach(5099, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Drak'Tharon Keep Guild Run
					i(41795, {	-- Design: Timeless Twilight Opal [CATA+] / Design: Timeless Forest Emerald (RECIPE!)
						["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 },
					}),
					i(37784),	-- Keystone Great-Ring
					i(37791),	-- Leggings of the Winged Serpent
					i(37788),	-- Limb Regeneration Bracers
					i(37733),	-- Mojo Masked Crusher
					i(37798),	-- Overlook Handguards
					i(37732),	-- Spectral Seal of the Prophet
					i(37734),	-- Talisman of Troll Divinity
					i(37735),	-- Ziggurat Imprinted Chestguard
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_TWO, n(DEFENSE_PROTOCOL_ALPHA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(394438, 413169, 424203),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(TROLLGORE, {
						i(39241),	-- Dark Shroud of the Scourge
						i(39245),	-- Demise
						i(39242),	-- Robes of Hoarse Breaths
					}),
					BossOnly(NOVOS, {
						i(39244),	-- Ring of the Fated
						i(39237),	-- Spaulders of Resumed Battle
						i(39236),	-- Trespasser's Boots
					}),
					BossOnly(KING_DRED, {
						i(39239),	-- Chestplate of the Risen Soldier
						i(39243),	-- Handgrips of the Foredoomed
						i(39240),	-- Noth's Curse
					}),
					BossOnly(THARONJA, {
						i(43995),	-- Enamored Cowl
						i(39416),	-- Kel'Thuzad's Reach
						i(43996),	-- Sabatons of Firmament
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(413169, 424203),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(TROLLGORE, {
						i(45698),	-- Sabatons of the Iron Watcher
						i(45697),	-- Shoulderguards of the Solemn Watch
					}),
					BossOnly(NOVOS, {
						i(45687),	-- Helm of Veiled Energies
						i(45703),	-- Spark of Hope
					}),
					BossOnly(KING_DRED, {
						i(45975),	-- Cable of the Metrognome
						i(45700),	-- Stoneguard
					}),
					BossOnly(THARONJA, {
						i(45303),	-- Band of Draconic Guile
						i(45972),	-- Pulse Baton
						i(45974),	-- Shoulderguards of Assimilation
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424203),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(TROLLGORE),
					BossOnly(NOVOS),
					BossOnly(KING_DRED),
					BossOnly(THARONJA),
				},
			})),
			-- #endif
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(273, {
		q(35483),	-- Drak'Tharon Keep Reward Quest - Normal completion
		q(35484),	-- Drak'Tharon Keep Reward Quest - Heroic completion
	}),
}));
