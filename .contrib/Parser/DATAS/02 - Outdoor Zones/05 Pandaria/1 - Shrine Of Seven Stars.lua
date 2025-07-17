---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(PANDARIA, {
	m(393, {	-- Shrine of Seven Stars
		["lore"] = "The Shrine of Seven Stars is an ancient mogu structure located south of Mogu'shan Palace in the eastern part of the Vale of Eternal Blossoms. It has been claimed by the Alliance and serves as the main hub of the faction in the continent of Pandaria, as opposed to the sanctuary cities serving as main hubs for both factions in previous expansions.",
		["isRaid"] = true,
		["races"] = ALLIANCE_ONLY,
		["icon"] = 462673,
		["maps"] = {
		--	393,	-- The Emperor's Step
			394,	-- The Imperial Exchange
		},
		["lvl"] = 78,
		["g"] = {
			n(QUESTS, sharedData({
				["races"] = ALLIANCE_ONLY,
			},{
				q(32007, {	-- A Worthy Challenge: Darkmaster Gandling
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
					["u"] = REMOVED_FROM_GAME,
				}),
				q(32005, {	-- A Worthy Challenge: Durand
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
					["u"] = REMOVED_FROM_GAME,
				}),
				q(32006, {	-- A Worthy Challenge: Flameweaver Koegler
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
					["u"] = REMOVED_FROM_GAME,
				}),
				q(32003, {	-- A Worthy Challenge: Raigonn
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
					["u"] = REMOVED_FROM_GAME,
				}),
				q(31998, {	-- A Worthy Challenge: Sha of Doubt
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
					["u"] = REMOVED_FROM_GAME,
				}),
				q(32001, {	-- A Worthy Challenge: Sha of Hatred
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
					["u"] = REMOVED_FROM_GAME,
				}),
				q(32004, {	-- A Worthy Challenge: Wing Leader Ner'onok
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
					["u"] = REMOVED_FROM_GAME,
				}),
				q(32002, {	-- A Worthy Challenge: Xin the Weaponmaster
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
					["u"] = REMOVED_FROM_GAME,
				}),
				q(32000, {	-- A Worthy Challenge: Yan-zhu the Uncasked
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
					["u"] = REMOVED_FROM_GAME,
				}),
				q(33248, {	-- Proving Grounds
					["coord"] = { 47.23, 49.71, 393 },
					["provider"] = { "n", 64101 },	-- Taijin the Cyclone
				}),
				q(32683, {	-- So You Want to Be a Blacksmith...
					["provider"] = { "n", 64085 },	-- Cullen Hammerbrow
					["coord"] = { 71.27, 50.52, 393 },
					["requireSkill"] = BLACKSMITHING,
					["timeline"] = { REMOVED_8_0_1 },	-- no longer available due to the profession level changes
				}),
				--[[
				q(31390, {	-- The Klaxxi
				}),
				]]--
				--[[
				q(31386, {	-- The Shado-Pan Offensive
				}),
				]]--
			})),
			n(VENDORS, sharedData({
				["races"] = ALLIANCE_ONLY,
			},{
				n(64085, {	-- Cullen Hammerbrow <Blacksmithing Supplies>
					["coord"] = { 71.2, 50.5, 393 },
					["g"] = COMMON_MOP_BLACKSMITHING_RECIPES,
				}),
				n(64084, {	-- Jojo <Cooking Supplies>
					["coord"] = { 63.0, 26.8, 393 },
					["g"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(66678, {	-- Krystel <Spirit of Harmony Vendor>
					["coord"] = { 84.6, 60.4, VALE_OF_ETERNAL_BLOSSOMS },
					["races"] = IGNORED_VALUE,	-- technically available both factions
					["groups"] = sharedData({
						["cost"] = {{"i",76061,1}},	-- Spirit of Harmony
					},{
						i(72094),	-- Black Trillium Ore
						i(74247),	-- Ethereal Shard
						i(72092),	-- Ghost Iron Ore
						i(72238),	-- Golden Lotus
						i(72093),	-- Kyparite
						i(72120),	-- Mist-Touched Leather
						i(74250),	-- Mysterious Essence
						-- i(89610),	-- Pandaria Herbs (non-specific content)
						i(79101),	-- Prismatic Scale
						i(76734),	-- Serpent's Eye
						i(74249),	-- Spirit Dust
						i(79255),	-- Starlight Ink
						i(72103),	-- White Trillium Ore
						i(72988),	-- Windwool Cloth
					}),
				}),
				n(64052, {	-- Raishen the Needle <Tailoring Supplies>
					["requireSkill"] = TAILORING,
					["coord"] = { 64.7, 44.1, 393 },
					["g"] = {
						i(86361, {	-- Pattern: Contender's Satin Amice (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86367, {	-- Pattern: Contender's Satin Belt (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86360, {	-- Pattern: Contender's Satin Cowl (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86365, {	-- Pattern: Contender's Satin Cuffs (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86366, {	-- Pattern: Contender's Satin Footwraps (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86363, {	-- Pattern: Contender's Satin Handwraps (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86364, {	-- Pattern: Contender's Satin Pants (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86362, {	-- Pattern: Contender's Satin Raiment (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86353, {	-- Pattern: Contender's Silk Amice (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86359, {	-- Pattern: Contender's Silk Belt (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86352, {	-- Pattern: Contender's Silk Cowl (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86357, {	-- Pattern: Contender's Silk Cuffs (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86358, {	-- Pattern: Contender's Silk Footwraps (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86355, {	-- Pattern: Contender's Silk Handwraps (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86356, {	-- Pattern: Contender's Silk Pants (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
						i(86354, {	-- Pattern: Contender's Silk Raiment (RECIPE!)
							["cost"] = { { "i", 76061, 1 }, },	-- 1x Spirit of Harmony
						}),
					},
				}),
				n(64096, {	-- Serenka <First Aid Supplies>
					["coord"] = { 47.2, 61.2, 393 },
					["g"] = {
						i(44694),	-- Antiseptic-Soaked Dressing
						i(44693),	-- Wound Dressing
					},
				}),
				n(64094, {	-- Tanner Pang <Leatherworking & Skinning Supplies>
					["coord"] = { 75.6, 50.2, 393 },
					["g"] = COMMON_MOP_LEATHERWORKING_RECIPES,
				}),
			})),
		},
	}),
}));