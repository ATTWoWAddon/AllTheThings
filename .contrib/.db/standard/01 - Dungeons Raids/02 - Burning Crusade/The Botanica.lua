-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

------ Encounter Constants ------
local SARANNIS = 558;
local FREYWINN = 559;
local THORNGRIN = 560;
local LAJ = 561;
local WARP_SPLINTER = 562;

------ EncounterToCRS ------
local EncounterToCRS = {
	[SARANNIS] = { 17976 },	-- Commander Sarannis
	[FREYWINN] = { 17975 },	-- High Botanist Freywinn
	[THORNGRIN] = { 17978 },	-- Thorngrin the Tender
	[LAJ] = { 17980 },	-- Laj
	[WARP_SPLINTER] = { 17977 },	-- Warp Splinter
};

------ Boss Functions ------
local InstanceHelper = CreateInstanceHelper(EncounterToCRS)
local BossOnly, Difficulty, CommonBossDrops =
InstanceHelper.BossOnly, InstanceHelper.Difficulty, InstanceHelper.CommonBossDrops

root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(257, {	-- The Botanica
		lore = "Since Kael'thas and his blood elves seized Tempest Keep from the naaru they have had quite the time to investigate and find a usage for the technology in it. The Botanica appears to be the satellite chosen especially for this purpose. Here, blood elf scientists carry out experiments on the flora in Outland, how naaru technology can be used to create and manipulate living beings, and how all this can grant the blood elves new powers. It seems, however, that the results were not quite as expected, and thus some of the experiments have gotten out of control...",
		-- #if BEFORE MOP
		zoneTextAreaID = 3847,	-- The Botanica
		-- #endif
		mapID = TEMPEST_KEEP_BOTANICA,
		coord = { 71.74, 54.95, NETHERSTORM },	-- The Botanica, Netherstorm
		timeline = { ADDED_2_0_3 },
		lvl = lvlsquish(65, 65, 20),
		groups = {
			n(QUESTS, {
				q(29669, {	-- A Most Somber Task
					sourceQuest = 29667,	-- Culling the Herd
					timeline = { ADDED_4_3_0 },
					lvl = lvlsquish(67, 67, 20),
					groups = {
						objective(1, {	-- Warp Splinter slain
							provider = { "n", 17977 },	-- Warp Splinter
						}),
					},
				}),
				q(10257, {	-- Capturing the Keystone
					sourceQuest = 10256,	-- Finding the Keymaster
					qg = 19481,	-- Archmage Vargoth
					coord = { 58.3, 86.4, NETHERSTORM },
					lvl = lvlsquish(67, 67, 25),
					groups = {
						objective(1, {	-- 0/1 The Keystone
							provider = { "i", 28769 },	-- The Keystone
						}),
					},
				}),
				q(29667, {	-- Culling the Herd
					sourceQuest = 29660,	-- Saving the Botanica
					timeline = { ADDED_4_3_0 },
					lvl = lvlsquish(67, 67, 20),
					groups = {
						objective(1, {	-- 0/6 Mutate Fleshlasher slain
							provider = { "n", 19598 },	-- Mutate Fleshlasher
						}),
						objective(2, {	-- 0/6 Mutate Fear-Shrieker slain
							provider = { "n", 19513 },	-- Mutate Fear-Shrieker
						}),
						objective(3, {	-- 0/6 Mutate Horror slain
							provider = { "n", 19865 },	-- Mutate Horror
						}),
						objective(4, {	-- 0/1 Rapidly Evolving Frond
							provider = { "i", 72706 },	-- Rapidly Evolving Frond
						}),
					},
				}),
				q(29660, {	-- Saving the Botanica
					description = "Automatically provided upon starting the instance.",
					timeline = { ADDED_4_3_0 },
					lvl = lvlsquish(67, 67, 20),
					groups = {
						objective(1, {	-- Commander Sarannis slain
							provider = { "n", 17976 },	-- Commander Sarannis
						}),
						objective(2, {	-- High Botanist Freywinn slain
							provider = { "n", 17975 },	-- High Botanist Freywinn
						}),
						objective(3, {	-- Thorngrin the Tender slain
							provider = { "n", 17978 },	-- Thorngrin the Tender
						}),
					},
				}),
			}),
			-- #if AFTER 7.3.5
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(32902),	-- Bottled Nethergon Energy
					i(32905),	-- Bottled Nethergon Vapor
					i(24172, {	-- Design: Coronet of Verdant Flame (RECIPE!)
						cr = 18422,	-- Sunseeker Botanist
					}),
				}),
				BossOnly(SARANNIS, {
					i(28769),	-- The Keystone (QI!)
					--
					i(28296, { timeline = { REMOVED_5_0_4 } }),	-- Libram of the Lightbringer
					i(28304),	-- Prismatic Mittens of Mending
					i(28311),	-- Revenger
					i(28301),	-- Sarannis' Mystic Sheen
					i(28306),	-- Towering Mantle of the Hunt
					i(28350),	-- Warhelm of the Bold
					i(28347),	-- Warpscale Leggings
				}),
				BossOnly(FREYWINN, {
					i(28316),	-- Aegis of the Sunbird
					i(28228),	-- Beast Lord Cuirass
					i(28321),	-- Enchanted Thorium Torque
					i(28317),	-- Energis Armwraps
					i(28348),	-- Moonglade Cowl
					i(28318),	-- Obsidian Clodstompers
					i(23617),	-- Plans: Earthpeace Breastplate (RECIPE!)
					i(28315),	-- Stormreaver Warblades
				}),
				BossOnly(THORNGRIN, {
					i(28327),	-- Arcane Netherband
					i(28325),	-- Dreamer's Dragonstaff
					i(28324),	-- Gauntlets of Cruel Intention
					i(24310),	-- Pattern: Battlecast Pants (RECIPE!)
					i(28323),	-- Ring of Umbral Doom
					i(28322),	-- Runed Dagger of Solace
				}),
				BossOnly(LAJ, {
					i(72706, { timeline = { ADDED_4_3_0 } }),	-- Rapidly Evolving Frond (QI!)
					--
					i(28339),	-- Boots of the Shifting Sands
					i(28338),	-- Devil-Stitched Leggings
					i(28340),	-- Mantle of Autumn
					i(28328),	-- Mithril-Bark Cloak
					i(27739),	-- Spaulders of the Righteous
					i(28349),	-- Tidefury Helm
				}),
				BossOnly(WARP_SPLINTER, {
					ach(659),	-- The Botanica
					i(28370),	-- Bangle of Endless Blessings
					i(29258),	-- Boots of Ethereal Manipulation
					i(29262),	-- Boots of the Endless Hunt
					i(29359),	-- Feral Staff of Lashing
					i(32072),	-- Gauntlets of Dissension
					i(28367),	-- Greatsword of Forlorn Visions
					i(28229),	-- Incanter's Robe
					i(28343),	-- Jagged Bark Pendant
					i(28371),	-- Netherfury Cape
					i(24311),	-- Pattern: Whitemend Hood (RECIPE!)
					i(31085),	-- Top Shard of the Arcatraz Key
					i(28345),	-- Warp Splinter's Thorn
					i(28342),	-- Warp-Infused Drape
					i(28341),	-- Warpstaff of Arcanum
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, { lvl = lvlsquish(70, 70, 30) }).AddGroups({
				CommonBossDrops({
					i(30574),	-- Brutal Tanzanite
					i(30572),	-- Imperial Tanzanite
					i(30573),	-- Mysterious Fire Opal
				}),
				BossOnly(SARANNIS),
				BossOnly(FREYWINN),
				BossOnly(THORNGRIN),
				BossOnly(LAJ),
				BossOnly(WARP_SPLINTER, {
					ach(680),	-- Heroic: The Botanica
					ach(5080, { timeline = { ADDED_4_0_3 } }),	-- Heroic: The Botanica Guild Run
					applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
					i(33859),	-- Warp Splinter Clipping
				}),
			}),
			-- #else
			Difficulty(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC).AddGroups({
				n(ZONE_DROPS, {
					i(32902),	-- Bottled Nethergon Energy
					i(32905),	-- Bottled Nethergon Vapor
					i(24172, {	-- Design: Coronet of Verdant Flame (RECIPE!)
						cr = 18422,	-- Sunseeker Botanist
					}),
				}),
				BossOnly(SARANNIS, {
					i(28769),	-- The Keystone (QI!)
					--
					i(28296, { timeline = { REMOVED_5_0_4 } }),	-- Libram of the Lightbringer
					i(28304),	-- Prismatic Mittens of Mending
					i(28311),	-- Revenger
					i(28301),	-- Sarannis' Mystic Sheen
					i(28306),	-- Towering Mantle of the Hunt
				}),
				BossOnly(FREYWINN, {
					i(28316),	-- Aegis of the Sunbird
					i(28321),	-- Enchanted Thorium Torque
					i(28317),	-- Energis Armwraps
					i(28318),	-- Obsidian Clodstompers
					i(23617),	-- Plans: Earthpeace Breastplate (RECIPE!)
					i(28315),	-- Stormreaver Warblades
				}),
				BossOnly(THORNGRIN, {
					i(28327),	-- Arcane Netherband
					i(28325),	-- Dreamer's Dragonstaff
					i(28324),	-- Gauntlets of Cruel Intention
					i(24310),	-- Pattern: Battlecast Pants (RECIPE!)
					i(28323),	-- Ring of Umbral Doom
					i(28322),	-- Runed Dagger of Solace
				}),
				BossOnly(LAJ, {
					i(72706, { timeline = { ADDED_4_3_0 } }),	-- Rapidly Evolving Frond (QI!)
					--
					i(28339),	-- Boots of the Shifting Sands
					i(28338),	-- Devil-Stitched Leggings
					i(28340),	-- Mantle of Autumn
					i(28328),	-- Mithril-Bark Cloak
					i(27739),	-- Spaulders of the Righteous
				}),
				BossOnly(WARP_SPLINTER, {
					i(28370),	-- Bangle of Endless Blessings
					i(28228),	-- Beast Lord Cuirass
					i(28367),	-- Greatsword of Forlorn Visions
					i(28229),	-- Incanter's Robe
					i(28343),	-- Jagged Bark Pendant
					i(28348),	-- Moonglade Cowl
					i(28371),	-- Netherfury Cape
					i(24311),	-- Pattern: Whitemend Hood (RECIPE!)
					i(28349),	-- Tidefury Helm
					i(31085),	-- Top Shard of the Arcatraz Key
					i(28350),	-- Warhelm of the Bold
					i(28345),	-- Warp Splinter's Thorn
					i(28342),	-- Warp-Infused Drape
					i(28347),	-- Warpscale Leggings
					i(28341),	-- Warpstaff of Arcanum
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.NORMAL).AddGroups({
				BossOnly(WARP_SPLINTER, {
					ach(659),	-- The Botanica
				}),
			}),
			Difficulty(DIFFICULTY.DUNGEON.HEROIC, {
				-- #if BEFORE 4.2.0
				description = "You need to have a key to the instance in order to access this mode.",
				attunement = {
					-- #if CLASSIC_ANNIVERSARY
					{ "i", 265847 },	-- Communal Warpforged Key
					-- #endif
					{ "i", 30634 },	-- Warpforged Key
				},
				-- #endif
				lvl = lvlsquish(70, 70, 30),
			}).AddGroups({
				CommonBossDrops({
					-- #if BEFORE CATA
					applyclassicphase(TBC_PHASE_FOUR, BADGE_OF_JUSTICE(1)),
					-- #endif
					i(30574),	-- Brutal Tanzanite
					i(30572),	-- Imperial Tanzanite
					i(30573),	-- Mysterious Fire Opal
				}),
				BossOnly(SARANNIS),
				BossOnly(FREYWINN),
				BossOnly(THORNGRIN),
				BossOnly(LAJ),
				BossOnly(WARP_SPLINTER, {
					ach(680),	-- Heroic: The Botanica
					ach(5080, { timeline = { ADDED_4_0_3 } }),	-- Heroic: The Botanica Guild Run
					i(29258),	-- Boots of Ethereal Manipulation
					i(29262),	-- Boots of the Endless Hunt
					i(29359),	-- Feral Staff of Lashing
					i(32072),	-- Gauntlets of Dissension
					applyclassicphase(TBC_PHASE_ONE, i(23572)),	-- Primal Nether
					i(33859),	-- Warp Splinter Clipping
				}),
			}),
			-- #endif
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(257, {
		q(35525),	-- The Botanica Reward Quest - Normal completion
		q(35526),	-- The Botanica Reward Quest - Heroic completion
	}),
}));
