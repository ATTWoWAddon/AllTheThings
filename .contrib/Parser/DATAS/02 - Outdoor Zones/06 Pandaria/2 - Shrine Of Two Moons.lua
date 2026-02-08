---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(PANDARIA, {
	m(SHRINE_OF_TWO_MOONS, {	-- Shrine of Two Moons
		["lore"] = "The Shrine of Two Moons is an ancient mogu structure located north of Mogu'shan Palace in the eastern part of the Vale of Eternal Blossoms. The Golden Lotus have allowed use of the shrine by the Horde, and it serves as the main hub for the faction in the continent of Pandaria, as opposed to the sanctuary cities serving as main hubs for both factions in previous expansions.",
		["isRaid"] = true,
		["races"] = HORDE_ONLY,
		["icon"] = 462674,
		["maps"] = { SHRINE_OF_TWO_MOONS_THE_IMPERIAL_MERCANTILE },	-- upper level
		["lvl"] = 78,
		["groups"] = {
			n(QUESTS, sharedData({
				["races"] = HORDE_ONLY,
			},{
				-- q(31511),	-- A Witness to History
				q(31528, {	-- A Worthy Challenge: Darkmaster Gandling
					["qg"] = 63994,	-- Challenger Wuli <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31526, {	-- A Worthy Challenge: Durand
					["qg"] = 63994,	-- Challenger Wuli <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31527, {	-- A Worthy Challenge: Flameweaver Koegler
					["qg"] = 63994,	-- Challenger Wuli <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31524, {	-- A Worthy Challenge: Raigonn
					["qg"] = 63994,	-- Challenger Wuli <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31520, {	-- A Worthy Challenge: Sha of Doubt
					["qg"] = 63994,	-- Challenger Wuli <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31522, {	-- A Worthy Challenge: Sha of Hatred
					["qg"] = 63994,	-- Challenger Wuli <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31525, {	-- A Worthy Challenge: Wing Leader Ner'onok
					["qg"] = 63994,	-- Challenger Wuli <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31523, {	-- A Worthy Challenge: Xin the Weaponmaster
					["qg"] = 63994,	-- Challenger Wuli <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(31519, {	-- A Worthy Challenge: Yan-zhu the Uncasked
					["qg"] = 63994,	-- Challenger Wuli <Challenge Dungeons>
					["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					["isDaily"] = true,
					["_drop"] = { "g" },	-- drop Heroic Cache of Treasures
				}),
				q(33249, applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, {	-- Proving Grounds
					["qg"] = 66998,	-- Jinho the Wind Breaker
					["coord"] = { 46.6, 56.5, SHRINE_OF_TWO_MOONS_THE_IMPERIAL_MERCANTILE },
					["timeline"] = { ADDED_5_4_0 },
				})),
				q(32726, applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, {	-- So You Want to Be a Blacksmith...
					["qg"] = 64058,	-- Jorunga Stonehoof
					["timeline"] = { ADDED_5_2_0, REMOVED_8_0_1 },	-- no longer available due to the profession level changes
					["requireSkill"] = BLACKSMITHING,
				})),
				-- q(31391),	-- The Klaxxi
				-- q(31388),	-- The Shado-Pan Offensive
			})),
			n(VENDORS, sharedData({
				["races"] = HORDE_ONLY,
			},{
				n(64067, {	-- Barleyflower <Cooking Supplies>
					["coord"] = { 68.7, 69.5, SHRINE_OF_TWO_MOONS_THE_IMPERIAL_MERCANTILE },
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(66685, {	-- Danky <Spirit of Harmony Vendor>
					["coord"] = { 61.6, 21.6, VALE_OF_ETERNAL_BLOSSOMS },
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
				n(64051, {	-- Esha the Loommaiden <Tailoring Supplies>
					["requireSkill"] = TAILORING,
					["coord"] = { 31.5, 53.6, SHRINE_OF_TWO_MOONS },
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
				n(64062, {	-- Gentle Dari <First Aid Supplies>
					["coord"] = { 32.6, 73.7, SHRINE_OF_TWO_MOONS },
					["groups"] = {
						i(44694),	-- Antiseptic-Soaked Dressing
						i(44693),	-- Wound Dressing
					},
				}),
				n(64058, {	-- Jorunga Stonehoof <Blacksmithing Supplies>
					["coord"] = { 26.0, 46.2, SHRINE_OF_TWO_MOONS },
					["groups"] = COMMON_MOP_BLACKSMITHING_RECIPES,
				}),
				n(64054, {	-- Krogo Darkhide <Leatherworking & Skinning Supplies>
					["coord"] = { 30.5, 46.5, SHRINE_OF_TWO_MOONS },
					["groups"] = COMMON_MOP_LEATHERWORKING_RECIPES,
				}),
				n(64126, {	-- Stephen Wong <Cooking Supplies>
					["coord"] = { 27.5, 65.0, SHRINE_OF_TWO_MOONS },
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
			})),
		},
	}),
}));
