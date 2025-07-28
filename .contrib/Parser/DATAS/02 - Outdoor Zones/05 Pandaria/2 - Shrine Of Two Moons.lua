---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(PANDARIA, {
	m(391, {	-- Shrine of Two Moons
		["lore"] = "The Shrine of Two Moons is an ancient mogu structure located north of Mogu'shan Palace in the eastern part of the Vale of Eternal Blossoms. The Golden Lotus have allowed use of the shrine by the Horde, and it serves as the main hub for the faction in the continent of Pandaria, as opposed to the sanctuary cities serving as main hubs for both factions in previous expansions.",
		["isRaid"] = true,
		["races"] = HORDE_ONLY,
		["icon"] = 462674,
		["maps"] = { 392 },	-- upper level
		["lvl"] = 78,
		["groups"] = {
			n(QUESTS, sharedData({
				["races"] = HORDE_ONLY,
			},{
				-- q(31511),	-- A Witness to History
				q(31528, {	-- A Worthy Challenge: Darkmaster Gandling
					["isDaily"] = true,
					["u"] = REMOVED_FROM_GAME,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31526, {	-- A Worthy Challenge: Durand
					["isDaily"] = true,
					["u"] = REMOVED_FROM_GAME,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31527, {	-- A Worthy Challenge: Flameweaver Koegler
					["isDaily"] = true,
					["u"] = REMOVED_FROM_GAME,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31524, {	-- A Worthy Challenge: Raigonn
					["isDaily"] = true,
					["u"] = REMOVED_FROM_GAME,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31520, {	-- A Worthy Challenge: Sha of Doubt
					["isDaily"] = true,
					["u"] = REMOVED_FROM_GAME,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31522, {	-- A Worthy Challenge: Sha of Hatred
					["isDaily"] = true,
					["u"] = REMOVED_FROM_GAME,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31525, {	-- A Worthy Challenge: Wing Leader Ner'onok
					["isDaily"] = true,
					["u"] = REMOVED_FROM_GAME,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31523, {	-- A Worthy Challenge: Xin the Weaponmaster
					["isDaily"] = true,
					["u"] = REMOVED_FROM_GAME,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31519, {	-- A Worthy Challenge: Yan-zhu the Uncasked
					["isDaily"] = true,
					["u"] = REMOVED_FROM_GAME,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(33249, {	-- Proving Grounds
					["qg"] = 66998,	-- Jinho the Wind Breaker
					["coord"] = { 46.6, 56.5, 392 },
				}),
				q(32726, {	-- So You Want to Be a Blacksmith...
					["qg"] = 64058,	-- Jorunga Stonehoof
					["timeline"] = { REMOVED_8_0_1 },	-- no longer available due to the profession level changes
					["requireSkill"] = BLACKSMITHING,
				}),
				-- q(31391),	-- The Klaxxi
				-- q(31388),	-- The Shado-Pan Offensive
			})),
			n(VENDORS, sharedData({
				["races"] = HORDE_ONLY,
			},{
				n(64067, {	-- Barleyflower <Cooking Supplies>
					["coord"] = { 68.7, 69.5, 392 },
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(66685, {	-- Danky <Spirit of Harmony Vendor>
					["coord"] = { 61.6, 21.6, VALE_OF_ETERNAL_BLOSSOMS },
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
				n(64051, {	-- Esha the Loommaiden <Tailoring Supplies>
					["requireSkill"] = TAILORING,
					["coord"] = { 31.5, 53.6, 391 },
					["groups"] = {
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
				n(64062, {	-- Gentle Dari <First Aid Supplies>
					["coord"] = { 32.6, 73.7, 391 },
					["groups"] = {
						i(44694),	-- Antiseptic-Soaked Dressing
						i(44693),	-- Wound Dressing
					},
				}),
				n(64058, {	-- Jorunga Stonehoof <Blacksmithing Supplies>
					["coord"] = { 26.0, 46.2, 391 },
					["groups"] = COMMON_MOP_BLACKSMITHING_RECIPES,
				}),
				n(64054, {	-- Krogo Darkhide <Leatherworking & Skinning Supplies>
					["coord"] = { 30.5, 46.5, 391 },
					["groups"] = COMMON_MOP_LEATHERWORKING_RECIPES,
				}),
				n(64126, {	-- Stephen Wong <Cooking Supplies>
					["coord"] = { 27.5, 65.0, 391 },
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
			})),
		},
	}),
}));