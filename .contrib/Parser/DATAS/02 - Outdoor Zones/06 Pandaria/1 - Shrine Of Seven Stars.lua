---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(PANDARIA, {
	m(SHRINE_OF_SEVEN_STARS, {	-- Shrine of Seven Stars
		["lore"] = "The Shrine of Seven Stars is an ancient mogu structure located south of Mogu'shan Palace in the eastern part of the Vale of Eternal Blossoms. It has been claimed by the Alliance and serves as the main hub of the faction in the continent of Pandaria, as opposed to the sanctuary cities serving as main hubs for both factions in previous expansions.",
		["isRaid"] = true,
		["races"] = ALLIANCE_ONLY,
		["icon"] = 462673,
		["maps"] = { SHRINE_OF_SEVEN_STARS_THE_IMPERIAL_EXCHANGE },	-- The Imperial Exchange
		["lvl"] = 78,
		["groups"] = {
			n(QUESTS, sharedData({
				["races"] = ALLIANCE_ONLY,
			},{
				q(32007, {	-- A Worthy Challenge: Darkmaster Gandling
					["qg"] = 64028,	-- Challenger Soong <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(32005, {	-- A Worthy Challenge: Durand
					["qg"] = 64028,	-- Challenger Soong <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(32006, {	-- A Worthy Challenge: Flameweaver Koegler
					["qg"] = 64028,	-- Challenger Soong <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(32003, {	-- A Worthy Challenge: Raigonn
					["qg"] = 64028,	-- Challenger Soong <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31998, {	-- A Worthy Challenge: Sha of Doubt
					["qg"] = 64028,	-- Challenger Soong <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(32001, {	-- A Worthy Challenge: Sha of Hatred
					["qg"] = 64028,	-- Challenger Soong <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(32004, {	-- A Worthy Challenge: Wing Leader Ner'onok
					["qg"] = 64028,	-- Challenger Soong <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(32002, {	-- A Worthy Challenge: Xin the Weaponmaster
					["qg"] = 64028,	-- Challenger Soong <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(32000, {	-- A Worthy Challenge: Yan-zhu the Uncasked
					["qg"] = 64028,	-- Challenger Soong <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(33248, applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, {	-- Proving Grounds
					["qg"] = 64101,	-- Taijin the Cyclone
					["coord"] = { 47.23, 49.71, SHRINE_OF_SEVEN_STARS },
					["timeline"] = { ADDED_5_4_0 },
				})),
				q(32683, applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, {	-- So You Want to Be a Blacksmith...
					["qg"] = 64085,	-- Cullen Hammerbrow
					["coord"] = { 71.27, 50.52, SHRINE_OF_SEVEN_STARS },
					["timeline"] = { ADDED_5_2_0, REMOVED_8_0_1 },	-- no longer available due to the profession level changes
					["requireSkill"] = BLACKSMITHING,
				})),
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
					["coord"] = { 71.2, 50.5, SHRINE_OF_SEVEN_STARS },
					["groups"] = COMMON_MOP_BLACKSMITHING_RECIPES,
				}),
				--[[	-- ToDo: ADD Challenge Mode Recolors
				n(64084, {	-- Jojo <Cooking Supplies>
					["coord"] = { 63.0, 26.8, SHRINE_OF_SEVEN_STARS },
					["groups"] = {
						i(265322, {	-- Cache of the Azure Challenger
							i(265329), -- Azure Bracers of the Golden King
							i(265321), -- Azure Chestplate of the Golden King
							i(265326), -- Azure Crown of the Golden King
							i(265323), -- Azure Girdle of the Golden King
							i(265324), -- Azure Greatboots of the Golden King
							i(265327), -- Azure Greaves of the Golden King
							i(265328), -- Azure Mantle of the Golden King
							i(265325), -- Azure Reach of the Golden King
						}),
						i(265316, {   -- Cache of the Golden Challenger
							i(265313), -- Golden Chestplate of the Holy Warrior
							i(265315), -- Golden Greathelm of the Holy Warrior
							i(265314), -- Golden Gauntlets of the Holy Warrior
							i(265312), -- Golden Greatboots of the Holy Warrior
							i(265317), -- Golden Legplates of the Holy Warrior
							i(265318), -- Golden Girdle of the Holy Warrior
							i(265319), -- Golden Wristguards of the Holy Warrior
							i(265320), -- Golden Shoulderplate of the Holy Warrior
						}),

					},
				}),--]]
				n(64084, {	-- Jojo <Cooking Supplies>
					["coord"] = { 63.0, 26.8, SHRINE_OF_SEVEN_STARS },
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(66678, {	-- Krystel <Spirit of Harmony Vendor>
					["coord"] = { 84.6, 60.4, VALE_OF_ETERNAL_BLOSSOMS },
					["races"] = IGNORED_VALUE,	-- technically available both factions
					["groups"] = sharedData({
						["cost"] = { { "i", 76061, 1 } },	-- Spirit of Harmony
					}, {
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
					["coord"] = { 64.7, 44.1, SHRINE_OF_SEVEN_STARS },
					["groups"] = sharedData({
						["cost"] = { { "i", 76061, 1 } },	-- Spirit of Harmony
					}, {
						i(86361),	-- Pattern: Contender's Satin Amice (RECIPE!)
						i(86367),	-- Pattern: Contender's Satin Belt (RECIPE!)
						i(86360),	-- Pattern: Contender's Satin Cowl (RECIPE!)
						i(86365),	-- Pattern: Contender's Satin Cuffs (RECIPE!)
						i(86366),	-- Pattern: Contender's Satin Footwraps (RECIPE!)
						i(86363),	-- Pattern: Contender's Satin Handwraps (RECIPE!)
						i(86364),	-- Pattern: Contender's Satin Pants (RECIPE!)
						i(86362),	-- Pattern: Contender's Satin Raiment (RECIPE!)
						i(86353),	-- Pattern: Contender's Silk Amice (RECIPE!)
						i(86359),	-- Pattern: Contender's Silk Belt (RECIPE!)
						i(86352),	-- Pattern: Contender's Silk Cowl (RECIPE!)
						i(86357),	-- Pattern: Contender's Silk Cuffs (RECIPE!)
						i(86358),	-- Pattern: Contender's Silk Footwraps (RECIPE!)
						i(86355),	-- Pattern: Contender's Silk Handwraps (RECIPE!)
						i(86356),	-- Pattern: Contender's Silk Pants (RECIPE!)
						i(86354),	-- Pattern: Contender's Silk Raiment (RECIPE!)
					}),
				}),
				n(64096, {	-- Serenka <First Aid Supplies>
					["coord"] = { 47.2, 61.2, SHRINE_OF_SEVEN_STARS },
					["groups"] = {
						i(44694),	-- Antiseptic-Soaked Dressing
						i(44693),	-- Wound Dressing
					},
				}),
				n(64094, {	-- Tanner Pang <Leatherworking & Skinning Supplies>
					["coord"] = { 75.6, 50.2, SHRINE_OF_SEVEN_STARS },
					["groups"] = COMMON_MOP_LEATHERWORKING_RECIPES,
				}),
			})),
		},
	}),
}));
