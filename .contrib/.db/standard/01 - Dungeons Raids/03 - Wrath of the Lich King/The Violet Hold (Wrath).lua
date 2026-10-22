-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local EREKEM = 626;
local MORAGG = 627;
local ICHORON = 628;
local XEVOZZ = 629;
local LEVANTHOR = 630;
local ZURAMAT = 631;
local CYANIGOSA = 632;

------ EncounterToCRS ------
local EncounterToCRS = {
	[EREKEM] = { 29315 },	-- Erekem
	[MORAGG] = { 29316 },	-- Moragg
	[ICHORON] = { 29313 },	-- Ichoron
	[XEVOZZ] = { 29266 },	-- Xevozz
	[LEVANTHOR] = { 29312 },	-- Levanthor
	[ZURAMAT] = { 29314 },	-- Zuramat the Obliterator
	[CYANIGOSA] = { 31134 },	-- Cyanigosa
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	inst(283, {	-- The Violet Hold (Wrath)
		["description"] = "The bosses are random on all difficulties.",
		["mapID"] = THE_VIOLET_HOLD_WRATH,
		["coord"] = { 66.6, 67.9, NORTHREND_DALARAN },
		["lvl"] = lvlsquish(75, 75, 15),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(1865, {	-- Lockdown!
					crit(7137, {	-- Xevozz
						["_encounter"] = { XEVOZZ, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(7138, {	-- Levanthor
						["_encounter"] = { LEVANTHOR, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(7139, {	-- Ichoron
						["_encounter"] = { ICHORON, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(7140, {	-- Zuramat the Obliterator
						["_encounter"] = { ZURAMAT, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(7141, {	-- Erekem
						["_encounter"] = { EREKEM, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(7142, {	-- Moragg
						["_encounter"] = { MORAGG, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(13159, {	-- Containment
					["sourceQuest"] = 13158,	-- Discretion is Key
					["qg"] = 31080,	-- Warden Alturas
					["coord"] = { 61.2, 63.2, NORTHREND_DALARAN },
					["timeline"] = { REMOVED_4_3_0 },
					["lvl"] = lvlsquish(75, 75, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Cyanigosa slain
							["provider"] = { "n", 31134 },	-- Cyanigosa
						}),
						-- #if BEFORE 4.0.3
						i(42482, {	-- The Violet Hold Key
							["timeline"] = { REMOVED_4_0_3 },
						}),
						-- #endif
						i(44343),	-- Conferred Pantaloons
						i(44345),	-- Dalaran Warden's Legplates
						i(44344),	-- Labyrinthine Legguards
						i(44342),	-- Tattooed Deerskin Leggings
					},
				}),
				q(29830, {	-- Containment
					["sourceQuest"] = 29829,	-- Discretion is Key
					["qg"] = 30658,	-- Lieutenant Sinclari
					["timeline"] = { ADDED_4_3_0 },
					["lvl"] = lvlsquish(75, 75, 15),
					["groups"] = {
						i(44343),	-- Conferred Pantaloons
						i(44345),	-- Dalaran Warden's Legplates
						i(44344),	-- Labyrinthine Legguards
						i(44342),	-- Tattooed Deerskin Leggings
					},
				}),
				q(13158, {	-- Discretion is Key
					["qg"] = 16128,	-- Rhonin
					["coord"] = { 30.6, 48.6, NORTHREND_DALARAN },
					["timeline"] = { REMOVED_4_3_0 },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(75, 75, 15),
				}),
				q(29829, {	-- Discretion is Key
					["qg"] = 16128,	-- Rhonin
					["coord"] = { 30.6, 48.6, NORTHREND_DALARAN },
					["timeline"] = { ADDED_4_3_0 },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(75, 75, 15),
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(35654),	-- Bindings of the Bastille
					i(37891),	-- Cast Iron Shackles
					i(37890),	-- Chain Gang Legguards
					i(35653),	-- Girdle of the Mystical Prison
					i(35652),	-- Incessant Torch
					i(37889),	-- Prison Manifest
				}),
				BossOnly(EREKEM, {
					i(157567, { ["timeline"] = { ADDED_7_3_5 } }),	-- Bodyguard's Treads
					i(43406),	-- Cloak of the Gushing Wound
					i(157583, { ["timeline"] = { ADDED_7_3_5 } }),	-- Protector's Buckler
					i(43405),	-- Sabatons of Erekem
					i(43363),	-- Screeching Cape
					i(43407),	-- Stormstrike Mace
					i(43375),	-- Trousers of the Arakkoa
				}),
				BossOnly(MORAGG, {
					i(43382),	-- Band of Eyes
					i(43410),	-- Moragg's Chestguard
					i(43409),	-- Saliva Corroded Pike
					i(43387),	-- Shoulderplates of the Beholder
					i(43408),	-- Solitaire of Reflecting Doom
					i(157566, { ["timeline"] = { ADDED_7_3_5 } }),	-- Vest of the Observant
				}),
				BossOnly(ICHORON, {
					i(157569, { ["timeline"] = { ADDED_7_3_5 } }),	-- Chain Leggings of the Tide
					i(37862),	-- Gauntlets of the Water Revenant
					i(37869),	-- Globule Signet
					i(35647),	-- Handguards of Rapid Pursuit
					i(35643),	-- Spaulders of Ichoron
					i(43401),	-- Water-Drenched Robe
				}),
				BossOnly(XEVOZZ, {
					i(157575, { ["timeline"] = { ADDED_7_3_5 } }),	-- Crystal of Ensnared Power
					i(37867),	-- Footwraps of Teleportation
					i(157571, { ["timeline"] = { ADDED_7_3_5 } }),	-- Gauntlets of Stuttering Reality
					i(37868),	-- Girdle of the Ethereal
					i(37861),	-- Necklace of Arcane Spheres
					i(35642),	-- Riot Shield
					i(35644),	-- Xevozz's Belt
				}),
				BossOnly(LEVANTHOR, {
					i(157570, { ["timeline"] = { ADDED_7_3_5 } }),	-- Helm of Cauterization
					i(35646),	-- Lava Burn Gloves
					i(37872),	-- Levanthor's Talisman
					i(157572, { ["timeline"] = { ADDED_7_3_5 } }),	-- Pauldrons of the Great Tide
					i(35645),	-- Poison Warden's Shotgun
					i(37871),	-- The Key
					i(37870),	-- Twin-Headed Boots
				}),
				BossOnly(ZURAMAT, {
					i(157568, { ["timeline"] = { ADDED_7_3_5 } }),	-- Helm of Dire Vision
					i(43358),	-- Pendant of Shadow Beams
					i(43403),	-- Shroud of Darkness
					i(43402),	-- The Obliterator Greaves
					i(43353),	-- Void Sentry Legplates
					i(43404),	-- Zuramat's Necklace
				}),
				BossOnly(CYANIGOSA, {
					ach(483),	-- The Violet Hold
					i(37884),	-- Azure Cloth Bindings
					i(43500),	-- Bolstered Legplates
					i(35650),	-- Boots of the Portal Guardian
					i(150845, { ["timeline"] = { ADDED_7_3_5 } }),	-- Bracers of Ley-Line Eradication
					i(37876),	-- Cyanigosa's Leggings
					i(37874),	-- Gauntlets of Capture
					i(37886),	-- Handgrips of the Savage Emissary
					i(35649),	-- Jailer's Baton
					i(37873),	-- Mark of the War Prisoner
					i(35651),	-- Plate Claws of the Dragon
					i(37875),	-- Spaulders of the Violet Hold
					i(37883),	-- Staff of Trickery
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				BossOnly(EREKEM),
				BossOnly(MORAGG),
				BossOnly(ICHORON, {
					ach(2041),	-- Dehydration
				}),
				BossOnly(XEVOZZ),
				BossOnly(LEVANTHOR),
				BossOnly(ZURAMAT, {
					ach(2153),	-- A Void Dance
				}),
				BossOnly(CYANIGOSA, {
					i(43823, { ["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 } }),	-- Head of Cyanigosa (QI!)
					--
					ach(494),	-- Heroic: The Violet Hold
					ach(5100, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: The Violet Hold Guild Run
					ach(1816),	-- Defenseless
					i(41791, {	-- Design: Subtle Autumn's Glow [CATA+] / Design: Thick Autumn's Glow [WRATH] (RECIPE!)
						["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 },
					}),
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				n(ZONE_DROPS, {
					i(35654),	-- Bindings of the Bastille
					i(35653),	-- Girdle of the Mystical Prison
					i(35652),	-- Incessant Torch
				}),
				BossOnly(EREKEM, {
					i(43363),	-- Screeching Cape
					i(43375),	-- Trousers of the Arakkoa
				}),
				BossOnly(MORAGG, {
					i(43382),	-- Band of Eyes
					i(43387),	-- Shoulderplates of the Beholder
				}),
				BossOnly(ICHORON, {
					i(35647),	-- Handguards of Rapid Pursuit
					i(35643),	-- Spaulders of Ichoron
				}),
				BossOnly(XEVOZZ, {
					i(35642),	-- Riot Shield
					i(35644),	-- Xevozz's Belt
				}),
				BossOnly(LEVANTHOR, {
					i(35646),	-- Lava Burn Gloves
					i(35645),	-- Poison Warden's Shotgun
				}),
				BossOnly(ZURAMAT, {
					i(43358),	-- Pendant of Shadow Beams
					i(43353),	-- Void Sentry Legplates
				}),
				BossOnly(CYANIGOSA, {
					ach(483),	-- The Violet Hold
					i(35650),	-- Boots of the Portal Guardian
					i(35649),	-- Jailer's Baton
					i(35651),	-- Plate Claws of the Dragon
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				n(ZONE_DROPS, {
					i(37891),	-- Cast Iron Shackles
					i(37890),	-- Chain Gang Legguards
					i(37889),	-- Prison Manifest
				}),
				BossOnly(EREKEM, {
					i(43406),	-- Cloak of the Gushing Wound
					i(43405),	-- Sabatons of Erekem
					i(43407),	-- Stormstrike Mace
				}),
				BossOnly(MORAGG, {
					i(43410),	-- Moragg's Chestguard
					i(43409),	-- Saliva Corroded Pike
					i(43408),	-- Solitaire of Reflecting Doom
				}),
				BossOnly(ICHORON, {
					ach(2041),	-- Dehydration
					i(37862),	-- Gauntlets of the Water Revenant
					i(37869),	-- Globule Signet
					i(43401),	-- Water-Drenched Robe
				}),
				BossOnly(XEVOZZ, {
					i(37867),	-- Footwraps of Teleportation
					i(37868),	-- Girdle of the Ethereal
					i(37861),	-- Necklace of Arcane Spheres
				}),
				BossOnly(LEVANTHOR, {
					i(37872),	-- Levanthor's Talisman
					i(37871),	-- The Key
					i(37870),	-- Twin-Headed Boots
				}),
				BossOnly(ZURAMAT, {
					ach(2153),	-- A Void Dance
					i(43403),	-- Shroud of Darkness
					i(43402),	-- The Obliterator Greaves
					i(43404),	-- Zuramat's Necklace
				}),
				BossOnly(CYANIGOSA, {
					i(43823, { ["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 } }),	-- Head of Cyanigosa (QI!)
					--
					ach(494),	-- Heroic: The Violet Hold
					ach(5100, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: The Violet Hold Guild Run
					ach(1816),	-- Defenseless
					i(37884),	-- Azure Cloth Bindings
					i(43500),	-- Bolstered Legplates
					i(37876),	-- Cyanigosa's Leggings
					i(41791, {	-- Design: Subtle Autumn's Glow [CATA+] / Design: Thick Autumn's Glow [WRATH] (RECIPE!)
						["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 },
					}),
					i(37874),	-- Gauntlets of Capture
					i(37886),	-- Handgrips of the Savage Emissary
					i(37873),	-- Mark of the War Prisoner
					i(37875),	-- Spaulders of the Violet Hold
					i(37883),	-- Staff of Trickery
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_TWO, n(DEFENSE_PROTOCOL_ALPHA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(394435, 412991, 424196),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(EREKEM, {
						i(39293),	-- Blackened Legplates of Feugen
						i(39275),	-- Contagion Gloves
						i(39281),	-- Infection Repulser
					}),
					BossOnly(MORAGG, {
						i(39280),	-- Leggings of Innumerable Barbs
						i(39292),	-- Repelling Charge
						i(39274),	-- Retcher's Shoulderpads
					}),
					BossOnly(ICHORON, {
						i(39279),	-- Blistered Belt of Decay
						i(39273),	-- Sullen Cloth Boots
						i(39291),	-- Torment of the Banished
					}),
					BossOnly(XEVOZZ, {
						i(39278),	-- Bands of Anxiety
						i(39272),	-- Drape of Surgery
						i(39285),	-- Handgrips of Turmoil
					}),
					BossOnly(LEVANTHOR, {
						i(39271),	-- Blade of Dormant Memories
						i(39307),	-- Iron Rings of Endurance
						i(39277),	-- Sealing Ring of Grobbulus
					}),
					BossOnly(ZURAMAT, {
						i(39282),	-- Bone-Linked Amulet
						i(39270),	-- Hatestrike
						i(39276),	-- The Skull of Ruin
					}),
					BossOnly(CYANIGOSA, {
						ach(17293),	-- Defense Protocol Alpha: The Violet Hold
						i(39420),	-- Anarchy
						i(40511),	-- Focusing Energy Epaulets
						i(39426),	-- Wand of the Archlich
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(412991, 424196),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							29315,	-- Erekem
							29316,	-- Moragg
							29313,	-- Ichoron
							29266,	-- Xevozz
							29312,	-- Levanthor
							29314,	-- Zuramat the Obliterator
						},
						["groups"] = {
							i(45941),	-- Chestguard of the Lasher
							i(45935),	-- Ironbark Faceguard
							i(45284),	-- Kinetic Ripper
							i(45936),	-- Legplates of Fluorishing Resolve
							i(45289),	-- Lifespark Visage
							i(45285),	-- Might of the Leviathan
							i(45940),	-- Tunic of the Limber Stalker
							i(45934),	-- Unraveling Reach
						},
					}),
					BossOnly(EREKEM),
					BossOnly(MORAGG),
					BossOnly(ICHORON),
					BossOnly(XEVOZZ),
					BossOnly(LEVANTHOR),
					BossOnly(ZURAMAT),
					BossOnly(CYANIGOSA, {
						ach(18595),	-- Defense Protocol Beta: The Violet Hold
						i(46009),	-- Bindings of the Depths
						i(46008),	-- Choker of the Abyss
						i(46010),	-- Darkstone Ring
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424196),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(CYANIGOSA, {
						ach(19432),	-- Defense Protocol Gamma: The Violet Hold
					}),
				},
			})),
			-- #endif
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(283, {
		q(35478),	-- The Violet Hold Reward Quest - Normal completion
		q(35480),	-- The Violet Hold Reward Quest - Heroic completion
	}),
}));
