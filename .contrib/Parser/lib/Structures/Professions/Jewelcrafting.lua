-------------------
-- JEWELCRAFTING --
-------------------
CLASSIC_JEWELCRAFTING = applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_2_0_5 } }, {
	r(25229, {	-- Jewelcrafting(Apprentice)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 5,
		-- #endif
		["rank"] = 1,
	}),
	r(25230, {	-- Jewelcrafting (Journeyman)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 10,
		-- #endif
		["rank"] = 2,
	}),
	r(28894, {	-- Jewelcrafting (Expert)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 20,
		-- #endif
		["rank"] = 3,
	}),
	r(28895, {	-- Jewelcrafting (Artisan)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 35,
		-- #endif
		["rank"] = 4,
	}),
	r(31252),	-- Prospecting
	applyclassicphase(BFA_PHASE_ONE, r(264532, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Jewelcrafting
	n(ARMOR, {
		r(25321),	-- Moonsoul Crown
	}),
	filter(FINGER_F, {
		r(26874),	-- Aquamarine Signet
		r(25493),	-- Braided Copper Ring
		r(37818),	-- Bronze Band of Force
		r(25621),	-- Citrine Ring of Rapid Healing
		r(36526),	-- Diamond Focus Ring
		r(25280),	-- Elegant Silver Ring
		r(34961),	-- Emerald Lion Ring
		r(25620),	-- Engraved Truesilver Ring
		r(25287),	-- Gloom Band
		r(34960),	-- Glowing Thorium Band
		r(25613),	-- Golden Dragon Ring
		r(34955),	-- Golden Ring of Power
		r(26926),	-- Heavy Copper Ring
		r(36524),	-- Heavy Jade Ring
		r(25305),	-- Heavy Silver Ring
		r(25283),	-- Inlaid Malachite Ring
		r(26907),	-- Onslaught Ring
		r(36525),	-- Red Ring of Destruction
		r(25317),	-- Ring of Silver Might
		r(25318),	-- Ring of Twilight Shadows
		r(26903),	-- Sapphire Signet
		r(26902),	-- Simple Opal Ring
		r(25284),	-- Simple Pearl Ring
		r(25490),	-- Solid Bronze Ring
		r(25619, {["timeline"] = {ADDED_4_0_3}}),	-- The Jade Eye
		r(32179),	-- Tigerseye Band
		r(34959),	-- Truesilver Commander's Ring
		r(26885),	-- Truesilver Healing Ring
		r(26925),	-- Woven Copper Ring
	}),
	filter(MISC, {
		r(32801),	-- Coarse Stone Statue
		r(32809),	-- Dense Stone Statue
		r(32807),	-- Heavy Stone Statue
		r(32259),	-- Rough Stone Statue
		r(32808),	-- Solid Stone Statue
	}),
	filter(NECK_F, {
		r(26876),	-- Aquamarine Pendant of the Warrior
		r(25498),	-- Barbaric Iron Collar
		r(36523),	-- Brilliant Necklace
		r(38175),	-- Bronze Torc
		r(26911),	-- Living Emerald Pendant
		r(32178),	-- Malachite Pendant
		r(26928),	-- Ornate Tigerseye Necklace
		r(25610, {["timeline"] = {ADDED_4_1_0}}),	-- Pendant of the Agate Shield
		r(26883),	-- Ruby Pendant of Fire
		r(26908),	-- Sapphire Pendant of Winter Night
		r(26927),	-- Thick Bronze Necklace
	}),
	filter(REAGENTS, {
		r(25278),	-- Bronze Setting
		r(25255),	-- Delicate Copper Wire
		r(25615),	-- Mithril Filigree
		r(26880),	-- Thorium Setting
	}),
	filter(TRINKET_F, {
		r(26872),	-- Figurine - Jade Owl
	}),
	n(WEAPONS, {
		r(25612, {["timeline"] = {ADDED_4_0_3}}),	-- Heavy Iron Knuckles
	}),
}));
TBC_JEWELCRAFTING = applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_2_0_5 } }, {
	r(28897, {	-- Jewelcrafting (Master)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 50,
		-- #endif
		["rank"] = 5,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264534, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Outland Jewelcrafting
	n(ARMOR, {
		applyclassicphase(TBC_PHASE_TWO, r(41418, {["timeline"] = {ADDED_2_1_0}})),	-- Crown of the Sea Witch
	}),
	filter(GEMS, {
		-- #if BEFORE CATA
		r(28905, {["timeline"] = {ADDED_3_0_2}}),	-- Bold Blood Garnet
		r(34590, {["timeline"] = {ADDED_3_0_2}}),	-- Bright Blood Garnet
		r(28938, {["timeline"] = {ADDED_3_0_2, REMOVED_4_0_3}}),	-- Brilliant Golden Draenite
		r(28914, {["timeline"] = {ADDED_3_0_2}}),	-- Glinting Flame Spessarite
		r(28925, {["timeline"] = {ADDED_3_0_2}}),	-- Glowing Shadow Draenite
		r(28910, {["timeline"] = {ADDED_3_0_2}}),	-- Inscribed Flame Spessarite
		r(28917, {["timeline"] = {ADDED_3_0_2}}),	-- Jagged Deep Peridot
		r(41420, {["timeline"] = {ADDED_2_1_0}}),	-- Purified Jaggal Pearl
		r(41429, {["timeline"] = {ADDED_2_1_0}}),	-- Purified Shadow Pearl
		r(28916, {["timeline"] = {ADDED_3_0_2}}),	-- Radiant Deep Peridot
		r(28948, {["timeline"] = {ADDED_3_0_2}}),	-- Rigid Golden Draenite
		r(34069, {["timeline"] = {ADDED_3_0_2, REMOVED_4_0_3}}),	-- Smooth Golden Draenite
		r(28950, {["timeline"] = {ADDED_3_0_2}}),	-- Solid Azure Moonstone
		r(28936, {["timeline"] = {ADDED_3_0_2}}),	-- Sovereign Shadow Draenite
		r(28953, {["timeline"] = {ADDED_3_0_2}}),	-- Sparkling Azure Moonstone
		r(28903, {["timeline"] = {ADDED_3_0_2}}),	-- Teardrop Blood Garnet
		-- #else
		r(28905, {["timeline"] = {ADDED_3_0_2}}),	-- Bold Blood Garnet
		r(28903, {["timeline"] = {ADDED_3_0_2}}),	-- Brilliant Blood Garnet
		r(34590, {["timeline"] = {ADDED_3_0_2}}),	-- Delicate Blood Garnet
		r(28914, {["timeline"] = {ADDED_3_0_2}}),	-- Glinting Shadow Draenite
		r(28910, {["timeline"] = {ADDED_3_0_2}}),	-- Inscribed Flame Spessarite
		r(28917, {["timeline"] = {ADDED_3_0_2}}),	-- Jagged Deep Peridot
		r(41420, {["timeline"] = {ADDED_2_1_0}}),	-- Purified Jaggal Pearl
		r(41429, {["timeline"] = {ADDED_2_1_0}}),	-- Purified Shadow Pearl
		r(28916, {["timeline"] = {ADDED_3_0_2}}),	-- Radiant Deep Peridot
		r(28948, {["timeline"] = {ADDED_3_0_2}}),	-- Rigid Azure Moonstone
		r(28950, {["timeline"] = {ADDED_3_0_2}}),	-- Solid Azure Moonstone
		r(28936, {["timeline"] = {ADDED_3_0_2}}),	-- Sovereign Shadow Draenite
		r(28953, {["timeline"] = {ADDED_3_0_2}}),	-- Sparkling Azure Moonstone
		r(28925, {["timeline"] = {ADDED_3_0_2}}),	-- Timeless Shadow Draenite
		-- #endif
	}),
	filter(FINGER_F, {
		r(31050),	-- Azure Moonstone Ring
		r(26916),	-- Band of Natural Fire
		r(41414, {["timeline"] = {ADDED_2_1_0}}),	-- Brilliant Pearl Band
		r(31048),	-- Fel Iron Blood Ring
		r(31049),	-- Golden Draenite Ring
		r(31052),	-- Heavy Adamantite Ring
		r(41415, {["timeline"] = {ADDED_2_1_0}}),	-- The Black Pearl
	}),
	filter(MISC, {
		r(47280, {["timeline"] = {ADDED_2_4_0}}),	-- Brilliant Glass
	}),
	filter(NECK_F, {
		applyclassicphase(TBC_PHASE_TWO, r(40514, {["timeline"] = {ADDED_2_1_0}})),	-- Necklace of the Deep
		r(31051),	-- Thick Adamantite Necklace
	}),
	filter(REAGENTS, {
		r(38068),	-- Mercurial Adamantite
	}),
	--- REMOVED RECIPES ---
	r(34069, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}),	-- Smooth Golden Draenite
	r(28938, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}),	-- Brilliant Golden Draenite
	r(31089, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Bright Living Ruby [REMOVED 4.0.3]
	r(31096, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Brilliant Dawnstone [REMOVED 4.0.3]
	r(28924, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Dazzling Deep Peridot [REMOVED: 4.0.3]
	r(28907, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Delicate Blood Garnet [REMOVED: 4.0.3]
	r(31110, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Regal Talasite [REMOVED 4.0.3]
	r(31099, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Gleaming Dawnstone [REMOVED 4.0.3]
	r(28957, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Lustrous Azure Moonstone [REMOVED: 4.0.3]
	r(31094, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Lustrous Star of Elune [REMOVED 4.0.3]
	r(31105, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Royal Nightseye [REMOVED 4.0.3]
	r(28906, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Runed Blood Garnet [REMOVED: 4.0.3]
	r(31087, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Teardrop Living Ruby [REMOVED 4.0.3]
	r(31100, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Thick Dawnstone [REMOVED 4.0.3]


	r(39463, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Balanced Nightseye [REMOVED 4.0.3]
	r(39452, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Great Dawnstone [REMOVED 4.0.3]
	r(39462, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Infused Nightseye  [REMOVED 4.0.3]

	r(39729, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Balanced Shadowsong Amethyst [REMOVED: 4.0.3]
	r(39712, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Bright Crimson Spinel [REMOVED: 4.0.3]
	r(39719, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Brilliant Lionseye [REMOVED: 4.0.3]

	r(39722, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Gleaming Lionseye [REMOVED 4.0.3]
	r(39725, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Great Lionseye [REMOVED: 4.0.3]
	r(39730, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Infused Shadowsong Amethyst [REMOVED: 4.0.3]
	r(39735, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Luminous Pyrestone [REMOVED: 4.0.3]
	r(39717, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Lustrous Empyrean Sapphire [REMOVED 4.0.3]
	r(39732, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Royal Shadowsong Amethyst [REMOVED: 4.0.3]
	r(39710, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Teardrop Crimson [REMOVED: 4.0.3]
	r(39723, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Thick Lionseye [REMOVED: 4.0.3]

	r(39451, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Great Golden Draenite [REMOVED: 4.0.3]
	r(39455, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Balanced Shadow Draenite [REMOVED: 4.0.3]
	r(39458, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Infused Shadow Draenite [REMOVED: 4.0.3]

	r(48789, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Purified Shadowsong Amethyst [REMOVED: 4.0.3]
	r(46404, {["timeline"] = {ADDED_4_0_3, REMOVED_4_0_3}}), -- Reckless Noble Topaz [REMOVED: 4.0.3]







}));
COMMON_CATACLYSM_JEWELCRAFTING_RECIPES = {
	i(52409, {	-- Design: Accurate Demonseye
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52419, {	-- Design: Adept Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52421, {	-- Design: Artful Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52437, {	-- Design: Austere Shadowspirit Diamond
		["cost"] = { { "c", 361, 4 }, },	-- 4x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52461, {	-- Design: Band of Blades
		["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52381, {	-- Design: Bold Chimera's Eye
		["cost"] = { { "c", 361, 2 }, },	-- 2x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52362, {	-- Design: Bold Inferno Ruby
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52435, {	-- Design: Bracing Shadowspirit Diamond
		["cost"] = { { "c", 361, 4 }, },	-- 4x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52464, {	-- Design: Brazen Elementium Medallion
		["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52449, {	-- Design: Brilliant Chimera's Eye
		["cost"] = { { "c", 361, 2 }, },	-- 2x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52387, {	-- Design: Brilliant Inferno Ruby
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52434, {	-- Design: Chaotic Shadowspirit Diamond
		["cost"] = { { "c", 361, 4 }, },	-- 4x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52413, {	-- Design: Deadly Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52401, {	-- Design: Defender's Demonseye
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52416, {	-- Design: Deft Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52447, {	-- Design: Delicate Chimera's Eye
		["cost"] = { { "c", 361, 2 }, },	-- 2x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52380, {	-- Design: Delicate Inferno Ruby
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52441, {	-- Design: Destructive Shadowspirit Diamond
		["cost"] = { { "c", 361, 4 }, },	-- 4x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52438, {	-- Design: Effulgent Shadowspirit Diamond
		["cost"] = { { "c", 361, 4 }, },	-- 4x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52460, {	-- Design: Elementium Destroyer's Ring
		["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52467, {	-- Design: Elementium Guardian
		["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52463, {	-- Design: Elementium Moebius Band
		["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52439, {	-- Design: Ember Shadowspirit Diamond
		["cost"] = { { "c", 361, 4 }, },	-- 4x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52443, {	-- Design: Enigmatic Shadowspirit Diamond
		["cost"] = { { "c", 361, 4 }, },	-- 4x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52465, {	-- Design: Entwined Elementium Choker
		["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52405, {	-- Design: Etched Demonseye
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52436, {	-- Design: Eternal Shadowspirit Diamond
		["cost"] = { { "c", 361, 4 }, },	-- 4x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52466, {	-- Design: Eye of Many Deaths
		["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52415, {	-- Design: Fierce Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52420, {	-- Design: Fine Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52448, {	-- Design: Flashing Chimera's Eye
		["cost"] = { { "c", 361, 2 }, },	-- 2x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52384, {	-- Design: Flashing Inferno Ruby
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52433, {	-- Design: Fleet Shadowspirit Diamond
		["cost"] = { { "c", 361, 4 }, },	-- 4x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52428, {	-- Design: Forceful Dream Emerald
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52445, {	-- Design: Forlorn Shadowspirit Diamond
		["cost"] = { { "c", 361, 4 }, },	-- 4x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52398, {	-- Design: Fractured Amberjewel
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52459, {	-- Design: Fractured Chimera's Eye
		["cost"] = { { "c", 361, 2 }, },	-- 2x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52406, {	-- Design: Glinting Demonseye
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52403, {	-- Design: Guardian's Demonseye
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52444, {	-- Design: Impassive Shadowspirit Diamond
		["cost"] = { { "c", 361, 4 }, },	-- 4x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52412, {	-- Design: Inscribed Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52425, {	-- Design: Jagged Dream Emerald
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52422, {	-- Design: Keen Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52429, {	-- Design: Lightning Dream Emerald
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(68360, {	-- Design: Lucent Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52396, {	-- Design: Mystic Amberjewel
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52457, {	-- Design: Mystic Chimera's Eye
		["cost"] = { { "c", 361, 2 }, },	-- 2x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52424, {	-- Design: Nimble Dream Emerald
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52426, {	-- Design: Piercing Dream Emerald
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52410, {	-- Design: Polished Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52414, {	-- Design: Potent Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52442, {	-- Design: Powerful Shadowspirit Diamond
		["cost"] = { { "c", 361, 4 }, },	-- 4x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52450, {	-- Design: Precise Chimera's Eye
		["cost"] = { { "c", 361, 2 }, },	-- 2x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52389, {	-- Design: Precise Inferno Ruby
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52430, {	-- Design: Puissant Dream Emerald
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(69853, {	-- Design: Punisher's Band
		["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52404, {	-- Design: Purified Demonseye
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52397, {	-- Design: Quick Amberjewel
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52458, {	-- Design: Quick Chimera's Eye
		["cost"] = { { "c", 361, 2 }, },	-- 2x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52417, {	-- Design: Reckless Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52423, {	-- Design: Regal Dream Emerald
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52411, {	-- Design: Resolute Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(68361, {	-- Design: Resplendent Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52407, {	-- Design: Retaliating Demonseye
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52440, {	-- Design: Revitalizing Shadowspirit Diamond
		["cost"] = { { "c", 361, 4 }, },	-- 4x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52454, {	-- Design: Rigid Chimera's Eye
		["cost"] = { { "c", 361, 2 }, },	-- 2x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52393, {	-- Design: Rigid Ocean Sapphire
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52462, {	-- Design: Ring of Warring Elements
		["cost"] = { { "c", 361, 5 }, },	-- 5x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52432, {	-- Design: Sensei's Dream Emerald
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52400, {	-- Design: Shifting Demonseye
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52418, {	-- Design: Skillful Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52395, {	-- Design: Smooth Amberjewel
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52456, {	-- Design: Smooth Chimera's Eye
		["cost"] = { { "c", 361, 2 }, },	-- 2x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52451, {	-- Design: Solid Chimera's Eye
		["cost"] = { { "c", 361, 2 }, },	-- 2x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52390, {	-- Design: Solid Ocean Sapphire
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52399, {	-- Design: Sovereign Demonseye
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52452, {	-- Design: Sparkling Chimera's Eye
		["cost"] = { { "c", 361, 2 }, },	-- 2x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52391, {	-- Design: Sparkling Ocean Sapphire
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52427, {	-- Design: Steady Dream Emerald
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52453, {	-- Design: Stormy Chimera's Eye
		["cost"] = { { "c", 361, 2 }, },	-- 2x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52392, {	-- Design: Stormy Ocean Sapphire
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52394, {	-- Design: Subtle Amberjewel
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52455, {	-- Design: Subtle Chimera's Eye
		["cost"] = { { "c", 361, 2 }, },	-- 2x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52402, {	-- Design: Timeless Demonseye
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52408, {	-- Design: Veiled Demonseye
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(68742, {	-- Design: Vivid Dream Emerald
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(68359, {	-- Design: Willful Ember Topaz
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52431, {	-- Design: Zen Dream Emerald
		["cost"] = { { "c", 361, 3 }, },	-- 3x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
		["f"] = RECIPES,
	}),
	i(52196, {	-- Chimera's Eye
		["cost"] = { { "c", 361, 1 }, },	-- 1x Illustrious Jewelcrafter's Token
		["timeline"] = { ADDED_4_0_3 },
		["requireSkill"] = JEWELCRAFTING,
	}),
};
MOP_EPIC_GEM_RECIPES = sharedData({ ["timeline"] = { ADDED_5_0_4 } }, {
	applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, r(136274, {	-- Assassin's Serpent's Eye
		["timeline"] = { ADDED_5_2_0 },
	})),
	r(122675),	-- Bold Serpent's Eye
	r(122676),	-- Brilliant Serpent's Eye
	r(122674),	-- Delicate Serpent's Eye
	r(122685),	-- Flashing Serpent's Eye
	r(122684),	-- Fractured Serpent's Eye
	applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, r(136270, {	-- Lucent Serpent's Eye
		["timeline"] = { ADDED_5_2_0 },
	})),
	applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, r(136275, {	-- Mysterious Serpent's Eye
		["timeline"] = { ADDED_5_2_0 },
	})),
	r(122683),	-- Precise Serpent's Eye
	r(122682),	-- Quick Serpent's Eye
	applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, r(136269, {	-- Resplendent Serpent's Eye
		["timeline"] = { ADDED_5_2_0 },
	})),
	r(122681),	-- Rigid Serpent's Eye
	r(122680),	-- Smooth Serpent's Eye
	r(122678),	-- Solid Serpent's Eye
	r(122677),	-- Sparkling Serpent's Eye
	r(122679),	-- Subtle Serpent's Eye
	applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, r(136273, {	-- Tense Serpent's Eye
		["timeline"] = { ADDED_5_2_0 },
	})),
	applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, r(136272, {	-- Willful Serpent's Eye
		["timeline"] = { ADDED_5_2_0 },
	})),
});
BFA_JEWELCRAFTING = applyclassicphase(BFA_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	r(382973, {["timeline"] = {ADDED_10_0_0}}),	-- Kul Tiras and Zandalar Prospecting
	r(287272, {["timeline"] = {ADDED_8_1_0}}),	-- Aqueous Recalibration
	r(256611, {["timeline"] = {ADDED_8_1_5}}),	-- Mass Prospect Monelite
	r(256622, {["timeline"] = {ADDED_8_1_5}}),	-- Mass Prospect Platinum
	r(256613, {["timeline"] = {ADDED_8_1_5}}),	-- Mass Prospect Storm Silver
	r(286651, {["timeline"] = {ADDED_8_1_0}}),	-- Sanguinated Recalibration
	filter(FINGER_F, {
		r(256510),	-- Amberblaze Loop [Rank 1]
		r(256514),	-- Amberblaze Loop [Rank 2]
		r(272227),	-- Golden Beryl Ring
		r(289105, {["timeline"] = {ADDED_8_1_0}}),	-- Kraken's Eye Loop
		r(272228),	-- Kubiline Ring
		r(272230),	-- Kyanite Ring
		r(256511),	-- Owlseye Loop [Rank 1]
		r(256516),	-- Owlseye Loop [Rank 2]
		r(256513),	-- Royal Quartz Loop [Rank 1]
		r(256520),	-- Royal Quartz Loop [Rank 2]
		r(272226),	-- Solstone Ring
		r(256512),	-- Tidal Amethyst Loop [Rank 1]
		r(256518),	-- Tidal Amethyst Loop [Rank 2]
		r(289179, {["timeline"] = {ADDED_8_1_0}}),	-- Tidal Kraken's Eye Loop
	}),
	filter(GEMS, {
		r(256696),	-- Deadly Amberblaze
		r(256689),	-- Deadly Solstone
		r(256701),	-- Kraken's Eye of Agility
		r(256702),	-- Kraken's Eye of Intellect
		r(256700),	-- Kraken's Eye of Strength
		r(256692),	-- Masterful Kubiline
		r(256698),	-- Masterful Tidal Amethyst
		r(256693),	-- Natant Rubellite
		r(256694),	-- Quick Golden Beryl
		r(256699),	-- Quick Owlseye
		r(256691),	-- Straddling Viridium
		r(256690),	-- Versatile Kyanite
		r(256695),	-- Versatile Royal Quartz
	}),
	filter(MISC, {
		r(278419),	-- Kaleidoscopic Lens
	}),
	n(WEAPONS, {
		r(269734),	-- Honorable Combatant's Intuitive Staff [Rank 1]
		r(256255),	-- Laribole Staff of Alacrity [Rank 1]
		r(256256),	-- Laribole Staff of Alacrity [Rank 2]
		r(256254),	-- Rubellite Staff of Intuition
		r(256258),	-- Scarlet Diamond Staff of Intuition [Rank 1]
		r(256259),	-- Scarlet Diamond Staff of Intuition [Rank 2]
		r(282343, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Intuitive Staff [Rank 1]
		r(305168, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Intuitive Staff [Rank 1]
		r(256253),	-- Viridium Staff of Alacrity
	}),
}));
NAZJATAR_JEWELCRAFTING = applyclassicphase(BFA_PHASE_THREE, sharedData({ ["timeline"] = { ADDED_8_2_0 } }, {
	r(300619),	-- Mass Prospect Osmenite
	filter(FINGER_F, {
		r(299016),	-- Leviathan's Eye Loop
	}),
	filter(GEMS, {
		r(298798),	-- Deadly Lava Lazuli
		r(298800),	-- Leviathan's Eye of Agility
		r(298801),	-- Leviathan's Eye of Intellect
		r(298799),	-- Leviathan's Eye of Strength
		r(298797),	-- Masterful Sea Currant
		r(298796),	-- Quick Sand Spinel
		r(300756),	-- Straddling Sage Agate
		r(298794),	-- Versatile Dark Opal
	}),
	n(WEAPONS, {
		r(294793),	-- Notorious Combatant's Intuitive Staff
	}),
}));
SL_JEWELCRAFTING = applyclassicphase(SL_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	r(311967),	-- Shadowlands Jewelcrafting
	r(325248),	-- Shadowlands Prospecting \\ Prospecting
	r(311953),	-- Mass Prospect Elethium
	r(311948),	-- Mass Prospect Laestrite
	r(311950),	-- Mass Prospect Oxxein
	r(311951),	-- Mass Prospect Phaedrum
	r(359492, {["timeline"] = {ADDED_9_2_0}}),	-- Mass Prospect Progenium
	r(311952),	-- Mass Prospect Sinvyr
	r(311949),	-- Mass Prospect Solenium
	filter(FINGER_F, {
		r(311880),	-- Deadly Laestrite Band
		r(311884),	-- Deadly Sinvyr Ring
		r(311882),	-- Masterful Laestrite Band
		r(311886),	-- Masterful Phaedrum Ring
		r(311881),	-- Quick Laestrite Band
		r(311885),	-- Quick Oxxein Ring
		r(327920, {	-- Shadowghast Ring [Rank 1]
			["sourceQuests"] = { 62800 },	-- The Vessels of Jewels
		}),
		r(311883),	-- Versatile Laestrite Band
		r(311887),	-- Versatile Solenium Ring
	}),
	filter(GEMS, {
		r(311863),	-- Deadly Jewel Cluster
		r(311868),	-- Deadly Jewel Doublet
		r(311864),	-- Masterful Jewel Cluster
		r(311869),	-- Masterful Jewel Doublet
		r(311865),	-- Quick Jewel Cluster
		r(311871),	-- Quick Jewel Doublet
		r(311867),	-- Straddling Jewel Doublet
		r(311859),	-- Versatile Jewel Cluster
		r(311866),	-- Versatile Jewel Doublet
	}),
	filter(MISC, {
		r(343697),	-- Crafter's Mark I
		r(343693),	-- Novice Crafter's Mark
	}),
	filter(NECK_F, {
		r(311902),	-- Deadly Laestrite Choker
		r(311906),	-- Deadly Sinvyr Necklace
		r(311904),	-- Masterful Laestrite Choker
		r(311908),	-- Masterful Phaedrum Necklace
		r(311903),	-- Quick Laestrite Choker
		r(311907),	-- Quick Oxxein Necklace
		r(327921, {	-- Shadowghast Necklace [Rank 1]
			["sourceQuests"] = { 62800 },	-- The Vessels of Jewels
		}),
		r(311905),	-- Versatile Laestrite Choker
		r(311909),	-- Versatile Solenium Necklace
	}),
}));
DF_JEWELCRAFTING = applyclassicphase(DF_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	r(366250),	-- Dragon Isles Jewelcrafting
	r(374627),	-- Dragon Isles Prospecting
	r(395696),	-- Dragon Isles Crushing
	n(ARMOR, {
		r(376233),	-- Band of New Beginnings
		r(374494),	-- Pendant of Impending Perils
	}),
	filter(GEMS, {
		r(374437),	-- Crafty Queen's Ruby
		r(374439),	-- Energized Vibrant Emerald
		r(374461),	-- Forceful Nozdorite
		r(374460),	-- Jagged Nozdorite
		r(374462),	-- Puissant Nozdorite
		r(374440),	-- Sensei's Sundered Onyx
		r(374441),	-- Solid Eternity Amber
		r(374463),	-- Steady Nozdorite
		r(374438),	-- Zen Mystic Sapphire
	}),
	filter(MISC, {
		r(389194),	-- Recraft Equipment
		r(374506),	-- Revitalizing Red Carving
		r(374550),	-- Timewatcher's Patience
	}),
	filter(PROFESSION_EQUIPMENT, {
		r(374530),	-- Bold-Print Bifocals
		r(374537),	-- Chromatic Focus
		r(374531),	-- Left-Handed Magnifying Glass
		r(374532),	-- Sundered Onyx Loupes
	}),
	filter(REAGENTS, {
		r(374477),	-- Draconic Vial
		r(374553),	-- Elemental Harmony
		r(374478),	-- Frameless Lens
		r(374480),	-- Glossy Stone
		r(374475),	-- Shimmering Clasp
	}),
}));
TWW_JEWELCRAFTING = bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	r(423339),	-- Khaz Algar Jewelcrafting
	r(434018),	-- Algari Prospecting
	n(ARMOR, {
		r(435379),	-- Malleable Band
		r(435380),	-- Malleable Pendant
	}),
	filter(GEMS, {
		r(434537),	-- Deadly Amber
		r(434549),	-- Deadly Ruby
		r(434539),	-- Masterful Amber
		r(434547),	-- Masterful Onyx
		r(434538),	-- Quick Amber
		r(434542),	-- Quick Emerald
		r(434540),	-- Versatile Amber
		r(434563),	-- Versatile Sapphire
	}),
	filter(MISC, {
		r(435337),	-- Algari Amber Prism
	}),
	filter(PROFESSION_EQUIPMENT, {
		r(435373),	-- Incanter's Shard
		r(435371),	-- Radiant Loupes
		r(435375),	-- Right-Handed Magnifying Glass
		r(435377),	-- Storyteller's Glasses
		}),
	filter(REAGENTS, {
		r(435325),	-- Decorative Lens
		r(435324),	-- Engraved Gemcutter
		r(435323),	-- Gilded Vial
		r(435327),	-- Inverted Prism
		r(435326),	-- Marbled Stone
	}),
});
