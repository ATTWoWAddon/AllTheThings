-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local NADOX = 580;
local TALDARAM = 581;
local JEDOGA = 582;
local AMANITAR = 583;
local VOLAZJ = 584;

------ EncounterToCRS ------
local EncounterToCRS = {
	[NADOX] = { 29309 },	-- Elder Nadox
	[TALDARAM] = { 29308 },	-- Prince Taldaram
	[JEDOGA] = { 29310 },	-- Jedoga Shadowseeker
	[AMANITAR] = { 30258 },	-- Amanitar
	[VOLAZJ] = { 29311 },	-- Herald Volazj
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	inst(271, {	-- Ahn'kahet: The Old Kingdom
		["mapID"] = AHNKAHET_THE_OLD_KINGDOM,
		["coord"] = { 28.3, 51.6, DRAGONBLIGHT },
		["lvl"] = lvlsquish(68, 68, 15),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(481, {	-- Ahn'kahet: The Old Kingdom
					-- #if AFTER 7.3.5
					crit(5439, {	-- Prince Taldaram
						["_encounter"] = { TALDARAM, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5440, {	-- Elder Nadox
						["_encounter"] = { NADOX, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5441, {	-- Jedoga Shadowseeker
						["_encounter"] = { JEDOGA, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					-- #else
					crit(5439, {	-- Prince Taldaram
						["_encounter"] = { TALDARAM, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5440, {	-- Elder Nadox
						["_encounter"] = { NADOX, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5441, {	-- Jedoga Shadowseeker
						["_encounter"] = { JEDOGA, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #if ANYCLASSIC
					-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
					crit(5624, {	-- Herald Volazj
						["_encounter"] = { VOLAZJ, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #else
					crit(5442, {	-- Herald Volazj
						["_encounter"] = { VOLAZJ, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
					-- #endif
				}),
				-- #if ANYCLASSIC
				applyclassicphase(WRATH_PHASE_TWO, ach(17291, {	-- Defense Protocol Alpha: Ahn'kahet: The Old Kingdom
					crit(57731, {	-- Elder Nadox
						["_encounter"] = { NADOX, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57733, {	-- Prince Taldaram
						["_encounter"] = { TALDARAM, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57734, {	-- Amanitar
						["_encounter"] = { AMANITAR, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57732, {	-- Jedoga Shadowseeker
						["_encounter"] = { JEDOGA, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57730, {	-- Herald Volazj
						["_encounter"] = { VOLAZJ, DEFENSE_PROTOCOL_ALPHA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_THREE, ach(18593, {	-- Defense Protocol Beta: Ahn'kahet: The Old Kingdom
					crit(60583, {	-- Elder Nadox
						["_encounter"] = { NADOX, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60586, {	-- Prince Taldaram
						["_encounter"] = { TALDARAM, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60585, {	-- Amanitar
						["_encounter"] = { AMANITAR, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60584, {	-- Jedoga Shadowseeker
						["_encounter"] = { JEDOGA, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60582, {	-- Herald Volazj
						["_encounter"] = { VOLAZJ, DEFENSE_PROTOCOL_BETA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_FOUR, ach(19430, {	-- Defense Protocol Gamma: Ahn'kahet: The Old Kingdom
					crit(63330, {	-- Elder Nadox
						["_encounter"] = { NADOX, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63332, {	-- Prince Taldaram
						["_encounter"] = { TALDARAM, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63333, {	-- Amanitar
						["_encounter"] = { AMANITAR, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63331, {	-- Jedoga Shadowseeker
						["_encounter"] = { JEDOGA, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63329, {	-- Herald Volazj
						["_encounter"] = { VOLAZJ, DEFENSE_PROTOCOL_GAMMA },
					}),
				})),
				-- #endif
				ach(492, {	-- Heroic: Ahn'kahet: The Old Kingdom
					crit(6851, {	-- Prince Taldaram
						["_encounter"] = { TALDARAM, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6852, {	-- Elder Nadox
						["_encounter"] = { NADOX, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6853, {	-- Jedoga Shadowseeker
						["_encounter"] = { JEDOGA, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(5611, {	-- Herald Volazj
						["_encounter"] = { VOLAZJ, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(5054, {	-- Amanitar
						["_encounter"] = { AMANITAR, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(13190, {	-- All Things in Good Time
					["qg"] = 26653,	-- Kilix the Unraveler
					["coord"] = { 26.2, 50.6, DRAGONBLIGHT },
					["isDaily"] = true,
					["lvl"] = lvlsquish(80, 80, 30),
					["groups"] = {
						objective(1, {	-- Ahn'kahar Watcher Corpse Burned
							["provider"] = { "i", 43494 },	-- Ahn'kahar Watcher's Corpse
							["cr"] = 31104,	-- Ahn'kahar Watcher
						}),
					},
				}),
				q(13204, {	-- Funky Fungi
					["provider"] = { "i", 43512 },	-- Ooze-Covered Fungus
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(73, 73, 15),
					["groups"] = {
						objective(1, {	-- 0/6 Grotesque Fungus
							["provider"] = { "i", 43511 },	-- Grotesque Fungus
						}),
					},
				}),
				q(29825, {	-- Pupil No More
					["qg"] = 55658,	-- Seer Ixit
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(71, 71, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Elder Nadox slain
							["provider"] = { "n", 29309 },	-- Elder Nadox
						}),
					},
				}),
				q(29826, {	-- Reclaiming Ahn'Kahet
					["sourceQuest"] = 29825,	-- Pupil No More
					["qg"] = 55658,	-- Seer Ixit
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(71, 71, 15),
					["groups"] = {
						objective(1, {	-- 0/3 Eye of Taldaram slain
							["provider"] = { "n", 30285 },	-- Eye of Taldaram
						}),
						objective(2, {	-- 0/1 Bonegrinder slain
							["provider"] = { "n", 30284 },	-- Bonegrinder
						}),
						objective(3, {	-- 0/1 Prince Taldaram slain
							["provider"] = { "n", 29308 },	-- Prince Taldaram
						}),
					},
				}),
				q(13187, {	-- The Faceless Ones
					-- #if AFTER 4.3.0.14732
					["qg"] = 55658,	-- Seer Ixit
					["sourceQuest"] = 29826,	-- Reclaiming Ahn'Kahet
					-- #else
					["provider"] =  {"n", 26653 },	-- Kilix the Unraveler
					["coord"] = { 26.2, 50.6, DRAGONBLIGHT },
					-- #endif
					["lvl"] = lvlsquish(71, 71, 15),
					["groups"] = {
						objective(1, {	-- 0/3 Forgotten One slain
							["provider"] = { "n", 30414 },	-- Forgotten One
						}),
						objective(2, {	-- 0/1 Herald Volazj slain
							["provider"] = { "n", 29311 },	-- Herald Volazj
						}),
						i(44353),	-- Epaulets of the Faceless Ones
						i(44350),	-- Mantle of Thwarted Evil
						i(44351),	-- Shoulderpads of Abhorrence
						i(44352),	-- Shoulderplates of the Abolished
					},
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(35615),	-- Glowworm Cavern Bindings
					i(43512, {	-- Ooze-Covered Fungus (QS!)
						["timeline"] = { REMOVED_4_3_0 },
						["cr"] = 30329,	-- Savage Cave Beast
					}),
					i(35616, { ["timeline"] = { CREATED_3_0_2, ADDED_7_3_5 } }),	-- Spored Tendrils Spaulders
					i(37624),	-- Stained-Glass Shard Ring
					i(37625),	-- Web Winder Gloves
				}),
				BossOnly(NADOX, {
					i(35607),	-- Ahn'kahar Handwraps
					i(35606),	-- Blade of Nadox
					i(37592),	-- Brood Plague Helmet
					i(35608),	-- Crawler-Emblem Belt
					i(37594),	-- Elder Headpiece
					i(37591),	-- Nerubian Shield Ring
					i(37593),	-- Sprinting Shoulderpads
				}),
				BossOnly(TALDARAM, {
					i(37612),	-- Bonegrinder Breastplate
					i(37613),	-- Flame Sphere Bindings
					i(37614),	-- Gauntlets of the Plundering Geist
					i(35611),	-- Gloves of the Blood Prince
					i(37595),	-- Necklace of Taldaram
					i(35610),	-- Slasher's Amulet
					i(35609),	-- Talisman of Scourge Command
				}),
				BossOnly(JEDOGA, {
					i(43279),	-- Battlechest of the Twilight Cult
					i(43278),	-- Cloak of the Darkcaster
					i(43281),	-- Edge of Oblivion
					i(43280),	-- Faceguard of the Hammer Clan
					i(44191, { ["timeline"] = { ADDED_6_2_0 } }),	-- Ice-Rimed Chopper
					i(43277),	-- Jedoga's Greatring
					i(43282),	-- Shadowseeker's Pendant
					i(43283),	-- Subterranean Waterfall Shroud
				}),
				BossOnly(VOLAZJ, {
					i(37620),	-- Bracers of the Herald
					i(37623),	-- Fiery Obelisk Handguards
					i(37618),	-- Greaves of Ancient Evil
					i(37616),	-- Kilt of the Forgotten One
					i(35612),	-- Mantle of Echoing Bats
					i(35613),	-- Pyramid Embossed Belt
					i(37622),	-- Skirt of the Old Kingdom
					i(37617),	-- Staff of Sinister Claws
					i(37615),	-- Titanium Compound Bow
					i(35614),	-- Volazj's Sabatons
					i(37619),	-- Wand of Ahn'kahet
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				CommonBossDrops({
					currency(101, { ["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 } }),	-- Emblem of Heroism
				}),
				BossOnly(NADOX, {
					ach(2038),	-- Respect Your Elders
				}),
				BossOnly(TALDARAM),
				BossOnly(AMANITAR, {
					i(43284),	-- Amanitar Skullbow
					i(43285),	-- Amulet of the Spell Flinger
					i(43286),	-- Legguards of Swarming Attacks
					i(43287),	-- Silken Bridge Handwraps
				}),
				BossOnly(JEDOGA, {
					ach(2056),	-- Volunteer Work
				}),
				BossOnly(VOLAZJ, {
					i(43821, { ["timeline"] = { REMOVED_4_0_1 } }),	-- Faceless One's Withered Brain (QI!)
					--
					ach(5098, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Ahn'kahet: The Old Kingdom Guild Run
					ach(1862),	-- Volazj's Quick Demise
					i(41790),	-- Design: Precise Scarlet Ruby (RECIPE!)
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(43512, {	-- Ooze-Covered Fungus
						["timeline"] = { REMOVED_4_3_0 },
						["cr"] = 30329,	-- Savage Cave Beast
					}),
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				n(ZONE_DROPS, {
					i(35615),	-- Glowworm Cavern Bindings
					i(35616),	-- Spored Tendrils Spaulders
				}),
				BossOnly(NADOX, {
					i(35607),	-- Ahn'kahar Handwraps
					i(35606),	-- Blade of Nadox
					i(35608),	-- Crawler-Emblem Belt
				}),
				BossOnly(TALDARAM, {
					i(35611),	-- Gloves of the Blood Prince
					i(35610),	-- Slasher's Amulet
					i(35609),	-- Talisman of Scourge Command
				}),
				BossOnly(JEDOGA, {
					i(43279),	-- Battlechest of the Twilight Cult
					i(43278),	-- Cloak of the Darkcaster
					i(43277),	-- Jedoga's Greatring
				}),
				BossOnly(VOLAZJ, {
					i(35612),	-- Mantle of Echoing Bats
					i(35613),	-- Pyramid Embossed Belt
					i(35614),	-- Volazj's Sabatons
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				n(ZONE_DROPS, {
					i(37624),	-- Stained-Glass Shard Ring
					i(37625),	-- Web Winder Gloves
				}),
				CommonBossDrops({
					currency(101, { ["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 } }),	-- Emblem of Heroism
				}),
				BossOnly(NADOX, {
					ach(2038),	-- Respect Your Elders
					i(37592),	-- Brood Plague Helmet
					i(37594),	-- Elder Headpiece
					i(37591),	-- Nerubian Shield Ring
					i(37593),	-- Sprinting Shoulderpads
				}),
				BossOnly(TALDARAM, {
					i(37612),	-- Bonegrinder Breastplate
					i(37613),	-- Flame Sphere Bindings
					i(37614),	-- Gauntlets of the Plundering Geist
					i(37595),	-- Necklace of Taldaram
				}),
				BossOnly(AMANITAR, {
					i(43284),	-- Amanitar Skullbow
					i(43285),	-- Amulet of the Spell Flinger
					i(43286),	-- Legguards of Swarming Attacks
					i(43287),	-- Silken Bridge Handwraps
				}),
				BossOnly(JEDOGA, {
					ach(2056),	-- Volunteer Work
					i(43281),	-- Edge of Oblivion
					i(43280),	-- Faceguard of the Hammer Clan
					i(44191, { ["timeline"] = { ADDED_6_2_0 } }),	-- Ice-Rimed Chopper
					i(43282),	-- Shadowseeker's Pendant
					i(43283),	-- Subterranean Waterfall Shroud
				}),
				BossOnly(VOLAZJ, {
					i(43821, { ["timeline"] = { REMOVED_4_0_1 } }),	-- Faceless One's Withered Brain (QI!)
					--
					ach(5098, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: Ahn'kahet: The Old Kingdom Guild Run
					ach(1862),	-- Volazj's Quick Demise
					i(37620),	-- Bracers of the Herald
					i(41790),	-- Design: Precise Scarlet Ruby (RECIPE!)
					i(37623),	-- Fiery Obelisk Handguards
					i(37618),	-- Greaves of Ancient Evil
					i(37616),	-- Kilt of the Forgotten One
					i(37622),	-- Skirt of the Old Kingdom
					i(37617),	-- Staff of Sinister Claws
					i(37615),	-- Titanium Compound Bow
					i(37619),	-- Wand of Ahn'kahet
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_TWO, n(DEFENSE_PROTOCOL_ALPHA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(394437, 412470, 424201),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(NADOX, {
						i(39263),	-- Dissevered Leggings
						i(39249),	-- Shoulderplates of Bloodshed
						i(39255),	-- Staff of the Plague Beast
					}),
					BossOnly(TALDARAM, {
						i(39247),	-- Cuffs of Dark Shadows
						i(39260),	-- Helm of the Corrupted Mind
						i(39251),	-- Necrogenic Belt
						i(39254),	-- Saltarello Shoes
					}),
					BossOnly(AMANITAR, {
						i(39247),	-- Cuffs of Dark Shadows
						i(39260),	-- Helm of the Corrupted Mind
						i(39251),	-- Necrogenic Belt
					}),
					BossOnly(JEDOGA, {
						i(39246),	-- Amulet of Autopsy
						i(39258),	-- Legplates of Inescapable Death
						i(39250),	-- Ring of Holy Cleansing
						i(39248),	-- Tunic of the Lost Pack
					}),
					BossOnly(VOLAZJ, {
						i(43998),	-- Chestguard of Flagrant Prowess
						i(39417),	-- Death's Bite
						i(40486),	-- Necklace of the Glittering Chamber
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(412470, 424201),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(NADOX, {
						i(45310),	-- Gauntlets of the Iron Furnace
						i(45314),	-- Igniter Rod
					}),
					BossOnly(TALDARAM, {
						i(46019),	-- Leggings of the Insatiable
						i(45321),	-- Pauldrons of Tempered Will
					}),
					BossOnly(AMANITAR, {
						i(45309),	-- Rifle of the Platinum Guard
						i(45317),	-- Shawl of the Caretaker
					}),
					BossOnly(JEDOGA, {
						i(45702),	-- Emerald Signet Ring
						i(45701),	-- Greaves of the Earthbinder
					}),
					BossOnly(VOLAZJ, {
						i(45696),	-- Mark of the Unyielding
						i(45699),	-- Pendant of the Piercing Glare
						i(45704),	-- Shawl of the Shattered Giant
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424201),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(NADOX),
					BossOnly(TALDARAM),
					BossOnly(AMANITAR),
					BossOnly(JEDOGA),
					BossOnly(VOLAZJ),
				},
			})),
			-- #endif
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(271, {
		q(35489),	-- Ahn'kahet: The Old Kingdom Reward Quest - Normal completion
		q(35490),	-- Ahn'kahet: The Old Kingdom Reward Quest - Heroic completion
		q(35493),	-- Ahn'kahet: The Old Kingdom Bonus Reward - kill Amanitar (Heroic only)
	}),
}));
