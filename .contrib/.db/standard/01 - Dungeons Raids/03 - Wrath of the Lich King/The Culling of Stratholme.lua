-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local MEATHOOK = 611;
local SALRAMM = 612;
local CHRONOLORD = 613;
local MALGANIS = 614;

------ EncounterToCRS ------
local EncounterToCRS = {
	[MEATHOOK] = { 26529 },	-- Meathook
	[SALRAMM] = { 26530 },	-- Salramm the Fleshcrafter
	[CHRONOLORD] = { 26532 },	-- Chrono-Lord Epoch
	[MALGANIS] = { 26533 },	-- Mal'Ganis
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty =
InstanceHelper.BossOnly, InstanceHelper.Difficulty

root(ROOTS.Instances, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
	inst(279, {	-- The Culling of Stratholme
		["mapID"] = THE_CULLING_OF_STRATHOLME,
		["coord"] = { 56.9, 82.4, CAVERNS_OF_TIME },
		["maps"] = { THE_CULLING_OF_STRATHOLME_FLOOR2 },
		["lvl"] = lvlsquish(75, 75, 25),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(479, {	-- The Culling of Stratholme
					-- #if AFTER 7.3.5
					crit(5467, {	-- Meathook
						["_encounter"] = { MEATHOOK, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5469, {	-- Salramm the Fleshcrafter
						["_encounter"] = { SALRAMM, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					crit(5468, {	-- Chrono-Lord Epoch
						["_encounter"] = { CHRONOLORD, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					-- #if ANYCLASSIC
					-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
					crit(6432, {	-- Mal'Ganis
						["_encounter"] = { MALGANIS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #else
					crit(6433, {	-- Mal'Ganis
						["_encounter"] = { MALGANIS, DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC },
					}),
					-- #endif
					-- #else
					crit(5467, {	-- Meathook
						["_encounter"] = { MEATHOOK, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5469, {	-- Salramm the Fleshcrafter
						["_encounter"] = { SALRAMM, DIFFICULTY.DUNGEON.NORMAL },
					}),
					crit(5468, {	-- Chrono-Lord Epoch
						["_encounter"] = { CHRONOLORD, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #if ANYCLASSIC
					-- NOTE: This boss has a different criteriaUID in classic for some dumb reason. BLIZZARD.
					crit(6432, {	-- Mal'Ganis
						["_encounter"] = { MALGANIS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #else
					crit(6433, {	-- Mal'Ganis
						["_encounter"] = { MALGANIS, DIFFICULTY.DUNGEON.NORMAL },
					}),
					-- #endif
					-- #endif
				}),
				-- #if ANYCLASSIC
				applyclassicphase(WRATH_PHASE_TWO, ach(17302, {	-- Defense Protocol Alpha: The Culling of Stratholme
					crit(57771, {	-- Meathook
						["_encounter"] = { MEATHOOK, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57773, {	-- Salramm the Fleshcrafter
						["_encounter"] = { SALRAMM, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57772, {	-- Chrono-Lord Epoch
						["_encounter"] = { CHRONOLORD, DEFENSE_PROTOCOL_ALPHA },
					}),
					crit(57770, {	-- Mal'Ganis
						["_encounter"] = { MALGANIS, DEFENSE_PROTOCOL_ALPHA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_THREE, ach(18601, {	-- Defense Protocol Beta: The Culling of Stratholme
					crit(60614, {	-- Meathook
						["_encounter"] = { MEATHOOK, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60616, {	-- Salramm the Fleshcrafter
						["_encounter"] = { SALRAMM, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60615, {	-- Chrono-Lord Epoch
						["_encounter"] = { CHRONOLORD, DEFENSE_PROTOCOL_BETA },
					}),
					crit(60613, {	-- Mal'Ganis
						["_encounter"] = { MALGANIS, DEFENSE_PROTOCOL_BETA },
					}),
				})),
				applyclassicphase(WRATH_PHASE_FOUR, ach(19438, {	-- Defense Protocol Gamma: The Culling of Stratholme
					crit(63375, {	-- Meathook
						["_encounter"] = { MEATHOOK, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63377, {	-- Salramm the Fleshcrafter
						["_encounter"] = { SALRAMM, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63376, {	-- Chrono-Lord Epoch
						["_encounter"] = { CHRONOLORD, DEFENSE_PROTOCOL_GAMMA },
					}),
					crit(63374, {	-- Mal'Ganis
						["_encounter"] = { MALGANIS, DEFENSE_PROTOCOL_GAMMA },
					}),
				})),
				-- #endif
				ach(500, {	-- Heroic: The Culling of Stratholme
					crit(6805, {	-- Meathook
						["_encounter"] = { MEATHOOK, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6807, {	-- Salramm the Fleshcrafter
						["_encounter"] = { SALRAMM, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6806, {	-- Chrono-Lord Epoch
						["_encounter"] = { CHRONOLORD, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(6434, {	-- Mal'Ganis
						["_encounter"] = { MALGANIS, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			n(QUESTS, {
				q(13151, {	-- A Royal Escort
					["sourceQuest"] = 13149,	-- Dispelling Illusions
					["qg"] = 27915,	-- Chromie
					["lvl"] = lvlsquish(78, 78, 25),
					["groups"] = {
						objective(1, {	-- 0/1 Mal'Ganis Defeated
							["provider"] = { "n", 26533 },	-- Mal'Ganis
						}),
						i(44396),	-- Gloves of the Time Guardian
						i(44397),	-- Handwraps of Preserved History
						i(44398),	-- Grips of Chronological Events
						i(44399),	-- Gauntlets of The Culling
					},
				}),
				q(13149, {	-- Dispelling Illusions
					["qg"] = 26527,	-- Chromie
					["lvl"] = lvlsquish(78, 78, 25),
					["groups"] = {
						objective(1, {	-- Plagued Grain Crates Dispelled
							["provider"] = { "i", 37888 },	-- Arcane Disruptor
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(31021, {	-- Sophie Aaren <Florist>
					["coord"] = { 64.0, 55.2, THE_CULLING_OF_STRATHOLME_FLOOR2 },
					["groups"] = {
						i(43327),	-- Stratholme Lily
					},
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(37115),	-- Crusader's Square Pauldrons
					i(37116),	-- Epaulets of Market Row
					i(37699, { ["timeline"] = { CREATED_3_0_3, ADDED_7_3_5 } }),	-- Festival Lane Girdle
					i(37117),	-- King's Square Bracers
					i(37698, { ["timeline"] = { CREATED_3_0_3, ADDED_7_3_5 } }),	-- Spaulders of Elder's Square
					i(37697, { ["timeline"] = { CREATED_3_0_3, ADDED_7_3_5 } }),	-- Trade District Knife
				}),
				BossOnly(MEATHOOK, {
					i(37680),	-- Belt of Unified Souls
					i(37678),	-- Bile-Cured Gloves
					i(37079),	-- Enchanted Wire Stitching
					i(37083),	-- Kilt of Sewn Flesh
					i(37675),	-- Legplates of Steel Implants
					i(37081),	-- Meathook's Slicer
					i(37082),	-- Slaughterhouse Sabatons
					i(37679),	-- Spaulders of the Abomination
				}),
				BossOnly(SALRAMM, {
					i(37682),	-- Bindings of Dark Will
					i(37084),	-- Flowing Cloak of Command
					i(157563, { ["timeline"] = { ADDED_7_3_5 } }),	-- Freshly Sewn Leggings
					i(37684),	-- Forgotten Shadow Hood
					i(37681),	-- Gavel of the Fleshcrafter
					i(37683),	-- Necromancer's Amulet
					i(37088),	-- Spiked Metal Cilice
					i(37086),	-- Tome of Salramm
					i(37095),	-- Waistband of the Thuzadin
				}),
				BossOnly(CHRONOLORD, {
					i(37686, { ["timeline"] = { REMOVED_11_1_5 } }),	-- Cracked Epoch Grasps
					i(238993, { ["timeline"] = { ADDED_11_1_5 } }),	-- Cracked Epoch Grasps
					i(37687, { ["timeline"] = { REMOVED_11_1_5 } }),	-- Gloves of Distorted Time
					i(238991, { ["timeline"] = { ADDED_11_1_5 } }),	-- Gloves of Distorted Time
					i(37688),	-- Legplates of the Infinite Drakonid
					i(37685, { ["timeline"] = { REMOVED_11_1_5 } }),	-- Mobius Band
					i(238992, { ["timeline"] = { ADDED_11_1_5 } }),	-- Mobius Band
					i(37096),	-- Necklace of the Chrono-Lord
					i(37096, { ["timeline"] = { REMOVED_11_1_5 } }),	-- Necklace of the Chrono-Lord
					i(238990, { ["timeline"] = { ADDED_11_1_5 } }),	-- Necklace of the Chrono-Lord
					i(37106),	-- Ouroboros Belt
					i(37099),	-- Sempiternal Staff
					i(37105),	-- Treads of Altered History
				}),
				BossOnly(MALGANIS, {
					i(37112),	-- Beguiling Scepter
					i(37694),	-- Band of Guile
					i(37113),	-- Demonic Fabric Bands
					i(37109),	-- Discarded Silver Hand Spaulders
					i(37108),	-- Dreadlord's Blade
					i(37110),	-- Gauntlets of Dark Conversion
					i(37114),	-- Gloves of Northern Lordaeron
					i(37693),	-- Greed
					i(37695),	-- Legguards of Nature's Power
					i(37107),	-- Leeka's Shield
					i(37691),	-- Mantle of Deceit
					i(37689),	-- Pendant of the Nathrezim
					i(37692),	-- Pierce's Pistol
					i(37696),	-- Plague-Infected Bracers
					i(37690),	-- Pauldrons of Destiny
					i(43085),	-- Royal Crest of Lordaeron
					i(37111),	-- Soul Preserver
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				n(ACHIEVEMENTS, {
					ach(1872, {	-- Zombiefest!
						["description"] = "Gather zombies leading up to Meathook, but do not kill them.\n\nKill Meathook and wait for zombies to respawn; then gather and kill more zombies.",
						["cr"] = 27737,	-- Risen Zombie
					}),
				}),
				BossOnly(MEATHOOK),
				BossOnly(SALRAMM),
				BossOnly(CHRONOLORD),
				n(32273, {	-- Infinite Corruptor
					ach(1817),	-- The Culling of Time
					i(43951),	-- Bronze Drake (MOUNT!)
				}),
				BossOnly(MALGANIS, {
					ach(5106, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: The Culling of Stratholme Guild Run
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(MEATHOOK, {
					i(37081),	-- Meathook's Slicer
					i(37083),	-- Kilt of Sewn Flesh
					i(37082),	-- Slaughterhouse Sabatons
					i(37079),	-- Enchanted Wire Stitching
				}),
				BossOnly(SALRAMM, {
					i(37086),	-- Tome of Salramm
					i(37084),	-- Flowing Cloak of Command
					i(37088),	-- Spiked Metal Cilice
					i(37095),	-- Waistband of the Thuzadin
				}),
				BossOnly(CHRONOLORD, {
					i(37096, { ["timeline"] = { REMOVED_11_1_5 } }),	-- Necklace of the Chrono-Lord
					i(37106),	-- Ouroboros Belt
					i(37099),	-- Sempiternal Staff
					i(37105),	-- Treads of Altered History
				}),
				BossOnly(MALGANIS, {
					i(37112),	-- Beguiling Scepter
					i(37113),	-- Demonic Fabric Bands
					i(37109),	-- Discarded Silver Hand Spaulders
					i(37108),	-- Dreadlord's Blade
					i(37110),	-- Gauntlets of Dark Conversion
					i(37114),	-- Gloves of Northern Lordaeron
					i(37107),	-- Leeka's Shield
					i(37111),	-- Soul Preserver
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(37115),	-- Crusader's Square Pauldrons
					i(37116),	-- Epaulets of Market Row
					i(37699, { ["timeline"] = { CREATED_3_0_3, ADDED_7_3_5 } }),	-- Festival Lane Girdle
					i(37117),	-- King's Square Bracers
					i(37698, { ["timeline"] = { CREATED_3_0_3, ADDED_7_3_5 } }),	-- Spaulders of Elder's Square
					i(37697, { ["timeline"] = { CREATED_3_0_3, ADDED_7_3_5 } }),	-- Trade District Knife
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { ["lvl"] = lvlsquish(80, 80, 30) }).AddGroups({
				n(ACHIEVEMENTS, {
					ach(1872, {	-- Zombiefest!
						["description"] = "Gather zombies leading up to Meathook, but do not kill them.\n\nKill Meathook and wait for zombies to respawn; then gather and kill more zombies.",
						["cr"] = 27737,	-- Risen Zombie
					}),
				}),
				-- #if BEFORE CATA
				n(COMMON_BOSS_DROPS, {
					currency(101, {	-- Emblem of Heroism
						["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
					}),
				}),
				-- #endif
				BossOnly(MEATHOOK, {
					i(37679),	-- Spaulders of the Abomination
					i(37678),	-- Bile-Cured Gloves
					i(37680),	-- Belt of Unified Souls
					i(37675),	-- Legplates of Steel Implants
				}),
				BossOnly(SALRAMM, {
					i(37681),	-- Gavel of the Fleshcrafter
					i(37684),	-- Forgotten Shadow Hood
					i(37683),	-- Necromancer's Amulet
					i(37682),	-- Bindings of Dark Will
				}),
				BossOnly(CHRONOLORD, {
					i(37686, { ["timeline"] = { REMOVED_11_1_5 } }),	-- Cracked Epoch Grasps
					i(37687, { ["timeline"] = { REMOVED_11_1_5 } }),	-- Gloves of Distorted Time
					i(37688),	-- Legplates of the Infinite Drakonid
					i(37685, { ["timeline"] = { REMOVED_11_1_5 } }),	-- Mobius Band
				}),
				n(32273, {	-- Infinite Corruptor
					ach(1817),	-- The Culling of Time
					i(43951),	-- Bronze Drake (MOUNT!)
				}),
				BossOnly(MALGANIS, {
					ach(5106, { ["timeline"] = { ADDED_4_0_3 } }),	-- Heroic: The Culling of Stratholme Guild Run
					i(37694),	-- Band of Guile
					i(37693),	-- Greed
					i(37695),	-- Legguards of Nature's Power
					i(37691),	-- Mantle of Deceit
					i(37689),	-- Pendant of the Nathrezim
					i(37692),	-- Pierce's Pistol
					i(37696),	-- Plague-Infected Bracers
					i(37690),	-- Pauldrons of Destiny
					i(43085),	-- Royal Crest of Lordaeron
					-- #if BEFORE 4.0.1
					i(43697),	-- Artifact from the Nathrezim Homeworld
					-- #endif
				}),
			}),
			-- #endif
			-- #if ANYCLASSIC
			applyclassicphase(WRATH_PHASE_TWO, n(DEFENSE_PROTOCOL_ALPHA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(394444, 412867, 424210),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(MEATHOOK, {
						i(40429),	-- Crimson Steel
						i(43988),	-- Gale-Proof Cloak
						i(43992),	-- Volitant Amulet
					}),
					BossOnly(SALRAMM, {
						i(43991),	-- Legguards of Composure
						i(43989),	-- Remembrance Girdle
						i(40428),	-- Titan's Outlook
					}),
					BossOnly(CHRONOLORD, {
						i(43990),	-- Blade-Scarred Tunic
						i(40427),	-- Circle of Arcane Streams
						i(40430),	-- Majestic Dragon Figurine
					}),
					n(32273, {	-- Infinite Corruptor
						i(39473),	-- Contortion
						i(39470),	-- Medallion of the Disgraced
						i(39467),	-- Minion Bracers
						i(39427),	-- Omen of Ruin
						i(39468),	-- The Stray
					}),
					BossOnly(MALGANIS, {
						i(40475),	-- Barricade of Eternity
						i(39235),	-- Bone-Framed Bracers
						i(44658),	-- Chain of the Ancient Wyrm
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_THREE, n(DEFENSE_PROTOCOL_BETA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(412867, 424210),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(MEATHOOK, {
						i(45694),	-- Conductive Cord
						i(46339),	-- Mimiron's Repeater
					}),
					BossOnly(SALRAMM, {
						i(45679),	-- Gloves of Taut Grip
						i(45695),	-- Spire of Withering Dreams
					}),
					BossOnly(CHRONOLORD, {
						i(45685),	-- Plasma Foil
						i(45675),	-- Power Enhancing Loop
					}),
					n(32273, {	-- Infinite Corruptor
						i(45682),	-- Pulsing Spellshield
						i(45686),	-- Vest of the Glowing Crescent
					}),
					BossOnly(MALGANIS, {
						i(46016),	-- Abaddon
						i(46018),	-- Deliverance
						i(46025),	-- Devotion
					}),
				},
			})),
			applyclassicphase(WRATH_PHASE_FOUR, n(DEFENSE_PROTOCOL_GAMMA, {
				["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(424210),
				["lvl"] = lvlsquish(80, 80, 30),
				["groups"] = {
					BossOnly(MEATHOOK),
					BossOnly(SALRAMM),
					BossOnly(CHRONOLORD),
					BossOnly(MALGANIS),
				},
			})),
			-- #endif
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(279, {
		q(35472),	-- Culling of Stratholme Reward Quest - Normal completion
		q(35474),	-- Culling of Stratholme Reward Quest - Heroic completion
		q(35473),	-- Culling of Stratholme - Bonus Objective Reward - kill Infinite Corruptor (Heroic only)
	}),
})));
