----------------
-- ENCHANTING --
----------------
local HEAVENLY_SHARD = 52721;
local MAELSTORM_CRYSTAL = 52722
local SECRET_OF_DRAENOR_ENCHANTING = 119293;
APPRENTICE_JOURNEYMAN_ENCHANTING = {
	r(7411, {	-- Enchanting (Apprentice)
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 5,
		-- #endif
		["rank"] = 1,
	}),
	r(7412, {	-- Enchanting (Journeyman)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 10,
		-- #endif
		["rank"] = 2,
	}),
	r(7413, {	-- Enchanting (Expert)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		-- #if SEASON_OF_DISCOVERY
		["OnUpdate"] = [[function(t)
			t.lvl = _.Settings:GetUnobtainableFilter(]] .. SOD_PHASE_ONE .. [[) and 26 or 20;
		end]],
		-- #else
		["lvl"] = 20,
		-- #endif
		-- #endif
		["rank"] = 3,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264455, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Enchanting
	applyclassicphase(BFA_PHASE_ONE, r(300381, {	-- Disenchant
		["collectible"] = false,
		["timeline"] = { ADDED_8_0_1_LAUNCH },
	})),
	r(13262, {	-- Disenchant
		["collectible"] = false,
	}),
	n(ARMOR_ENCHANTMENTS, {
		r(7857),	-- Health
		r(13538),	-- Lesser Absorption
		applyclassicphase(WRATH_PHASE_ONE, r(63746, {["timeline"] = {ADDED_3_1_0}})),	-- Lesser Accuracy
		r(7861, {["timeline"] = {REMOVED_5_0_4}}),	-- Lesser Fire Resistance
		r(7748),	-- Lesser Health
		r(13622),	-- Lesser Intellect
		r(13421),	-- Lesser Protection
		r(13501),	-- Lesser Stamina
		r(13607),	-- Mana
		r(7426),	-- Minor Absorption
		r(7779),	-- Minor Agility
		r(7428),	-- Minor Deflection / Minor Dodge[CATA+]
		r(7418),	-- Minor Health[Bracer]
		r(7420),	-- Minor Health[Chest]
		r(7771),	-- Minor Protection
		r(7454, {["timeline"] = {REMOVED_5_0_4}}),	-- Minor Resistance
		r(7863),	-- Minor Stamina[Boot]
		r(7457),	-- Minor Stamina[Bracer]
		r(13626),	-- Minor Stats
		-- #if AFTER 2.3.0
		r(20023),	-- Greater Agility[Boot]
		r(20012),	-- Greater Agility[Glove]
		r(20008),	-- Greater Intellect
		r(20014, {["timeline"] = {REMOVED_5_0_4}}),	-- Greater Resistance
		r(20013),	-- Greater Strength
		r(20028),	-- Major Mana
		-- #endif
		-- #if AFTER 4.1.0
		r(13646),	-- Lesser Dodge
		-- #endif
	}),
	filter(MISC, {
		r(7421),	-- Runed Copper Rod
		r(13628, {["timeline"] = {REMOVED_5_0_4}}),	-- Runed Gold Rod
		r(7795, {["timeline"] = {REMOVED_5_0_4}}),	-- Runed Silver Rod
		applyclassicphase(LEGION_PHASE_ONE, r(217637, {["timeline"] = {ADDED_7_0_3_LAUNCH}})),	-- Tome of Illusions: Azeroth
	}),
	n(WEAPONS, {
		r(14807),	-- Greater Magic Wand
		r(14293),	-- Lesser Magic Wand
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(13529),	-- Lesser Impact
		r(13485),	-- Lesser Spirit / Lesser Versatility[LEGION+]
		r(13503),	-- Lesser Striking
		r(7745),	-- Minor Impact
		r(13378),	-- Minor Stamina
		r(7788),	-- Minor Striking
		-- #if AFTER 2.3.0
		r(20016),	-- Superior Spirit / Vitality[LEGION+]
		-- #endif
	}),
};
EXPERT_ARTISAN_ENCHANTING = {
	r(13920, {	-- Enchanting (Artisan)
		["timeline"] = { REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		-- #if SEASON_OF_DISCOVERY
		["OnUpdate"] = [[function(t)
			t.lvl = _.Settings:GetUnobtainableFilter(]] .. SOD_PHASE_ONE .. [[) and 41 or 35;
		end]],
		-- #else
		["lvl"] = 35,
		-- #endif
		-- #endif
		["rank"] = 4,
	}),
	n(ARMOR_ENCHANTMENTS, {
		r(13935),	-- Agility[Boot]
		r(13815),	-- Agility[Glove]
		r(13635),	-- Defense
		r(13657, {["timeline"] = {REMOVED_5_0_4}}),	-- Fire Resistance
		r(13746),	-- Greater Defense
		r(13640),	-- Greater Health
		r(13663),	-- Greater Mana
		r(13939),	-- Greater Strength
		r(13822),	-- Intellect
		r(13637),	-- Lesser Agility
		r(13644),	-- Lesser Stamina
		r(13700),	-- Lesser Stats
		r(13948),	-- Minor Haste
		r(13890),	-- Minor Speed
		r(13794, {["timeline"] = {REMOVED_5_0_4}}),	-- Resistance
		r(13642),	-- Spirit / Versatility[LEGION+]
		r(13836),	-- Stamina[Boot]
		r(13648),	-- Stamina[Bracer]
		r(13941),	-- Stats
		r(13661),	-- Strength[Bracer]
		r(13887),	-- Strength[Glove]
		r(13858),	-- Superior Health
		r(13917),	-- Superior Mana
	}),
	filter(MISC, {
		r(17181),	-- Enchanted Leather
		r(17180),	-- Enchanted Thorium Bar
		r(13702, {["timeline"] = {REMOVED_5_0_4}}),	-- Runed Truesilver Rod
	}),
	n(WEAPONS, {
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_TWO, r(439134)),	-- Greater Mystic Wand
		-- #endif
		r(14810),	-- Greater Mystic Wand
		r(14809),	-- Lesser Mystic Wand
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(13937),	-- Greater Impact
		r(13905),	-- Greater Spirit / Greater Versatility[LEGION+]
		r(13943),	-- Greater Striking
		r(13695),	-- Impact
		r(13631),	-- Lesser Stamina
		r(13659),	-- Spirit / Versatility[LEGION+]
		r(13693),	-- Striking
	}),
};
CLASSIC_ENCHANTING = appendGroups(APPRENTICE_JOURNEYMAN_ENCHANTING,
-- #if AFTER 2.1.0
EXPERT_ARTISAN_ENCHANTING
-- #else
	{}
-- #endif
);
TBC_ENCHANTING = applyclassicphase(TBC_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_2_0_5 } }, {
	r(28029, {	-- Enchanting (Master)
		["timeline"] = { ADDED_2_0_5, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 50,
		-- #endif
		["rank"] = 5,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264460, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Outland Enchanting
	applyclassicphase(BFA_PHASE_ONE, r(300382, {	-- Disenchant
		["collectible"] = false,
		["timeline"] = { ADDED_8_0_1_LAUNCH },
	})),
	n(ARMOR_ENCHANTMENTS, {
		r(33996),	-- Assault
		r(33993),	-- Blasting
		r(27899),	-- Brawn
		r(27957),	-- Exceptional Health
		r(34004),	-- Greater Agility
		r(34002),	-- Lesser Assault
		r(27961),	-- Major Armor
		r(34001),	-- Major Intellect
		r(33990),	-- Major Spirit / Major Versatility[LEGION+]
		r(33995),	-- Major Strength
		r(33991),	-- Restore Mana Prime / Versatility Prime[LEGION+]
		r(27905),	-- Stats
	}),
	filter(MISC, {
		r(42615, {["timeline"] = {ADDED_2_2_0}}),	-- Small Prismatic Shard
		r(42613, {["timeline"] = {ADDED_2_2_0, REMOVED_7_3_5}}),	-- Nexus Transformation
		r(28027),	-- Prismatic Sphere
		r(32664, {["timeline"] = {ADDED_2_0_5, REMOVED_5_0_4}}),	-- Runed Fel Iron Rod
		applyclassicphase(LEGION_PHASE_ONE, r(217641, {["timeline"] = {ADDED_7_0_3_LAUNCH}})),	-- Tome of Illusions: Outland
		r(28028),	-- Void Sphere
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(44383, {["timeline"] = {ADDED_2_3_0}}),	-- Resilience / Armor[MOP+]
		r(27944),	-- Tough Shield / Lesser Dodge[CATA+]
	}),
}));
WRATH_ENCHANTING = applyclassicphase(WRATH_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_3_0_3 } }, {
	r(51313, {	-- Enchanting (Grand Master)
		["timeline"] = { ADDED_3_0_3, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #else
		["lvl"] = 65,
		-- #endif
		["rank"] = 6,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264462, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Northrend Enchanting
	applyclassicphase(BFA_PHASE_ONE, r(302690, {	-- Disenchant
		["collectible"] = false,
		["timeline"] = { ADDED_8_0_1_LAUNCH },
	})),
	n(ARMOR_ENCHANTMENTS, {
		r(60606, {["timeline"] = {ADDED_3_1_0}}),	-- Assault[Boot]
		r(44645, {["timeline"] = {ADDED_3_0_3, REMOVED_6_0_2}}),	-- Assault[Ring]
		r(60668, {["timeline"] = {ADDED_3_1_0}}),	-- Crusher
		r(44555),	-- Exceptional Intellect
		r(27958),	-- Exceptional Mana
		r(44592),	-- Exceptional Spellpower
		r(44598),	-- Expertise / Haste[WOD+][Bracer]
		r(44484),	-- Expertise / Haste[WOD+][Glove]
		r(44506),	-- Gatherer
		r(44513),	-- Greater Assault
		r(47766),	-- Greater Defense / Greater Dodge[CATA+]
		r(44528),	-- Greater Fortitude
		r(44509),	-- Greater Mana Restoration / Greater Versatility[LEGION+]
		r(44635),	-- Greater Spellpower[Bracer]
		r(44636, {["timeline"] = {ADDED_3_0_3, REMOVED_6_0_2}}),	-- Greater Spellpower[Ring]
		r(44508),	-- Greater Spirit / Greater Versatility[LEGION+]
		r(44616),	-- Greater Stats
		r(44584),	-- Greater Vitality
		r(60623, {["timeline"] = {ADDED_3_1_0}}),	-- Icewalker
		r(60663, {["timeline"] = {ADDED_3_1_0}}),	-- Major Agility[Cloak]
		r(44529),	-- Major Agility[Glove]
		r(44593),	-- Major Spirit / Major Versatility[LEGION+]
		r(44492),	-- Mighty Health
		r(44582),	-- Minor Power
		r(44488),	-- Precision
		r(60609, {["timeline"] = {ADDED_3_1_0}}),	-- Speed
		r(59636, {["timeline"] = {ADDED_3_0_3, REMOVED_6_0_2}}),	-- Stamina[Ring]
		r(60616, {["timeline"] = {ADDED_3_1_0}}),	-- Striking / Assault[MOP+]
		r(47900, {["timeline"] = {ADDED_3_1_0}}),	-- Super Health
		r(44623),	-- Super Stats
		r(44589),	-- Superior Agility[Boot]
		r(44500),	-- Superior Agility[Cloak]
	}),
	filter(MISC, {
		applyclassicphase(WRATH_PHASE_THREE, r(69412, {["timeline"] = {ADDED_3_2_2}})),	-- Abyssal Shatter
		r(60619, {["timeline"] = {ADDED_3_0_3, REMOVED_5_0_4}}),	-- Runed Titanium Rod
		applyclassicphase(LEGION_PHASE_ONE, r(217644, {["timeline"] = {ADDED_7_0_3_LAUNCH}})),	-- Tome of Illusions: Northrend
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(44489),	-- Defense / Dodge[CATA+]
		r(44633),	-- Exceptional Agility
		r(44629),	-- Exceptional Spellpower
		r(44510),	-- Exceptional Spirit / Exceptional Versatility[LEGION+]
		r(60653, {["timeline"] = {ADDED_3_1_0}}),	-- Greater Intellect
		r(60621, {["timeline"] = {ADDED_3_1_0}}),	-- Greater Potency
		r(44630),	-- Greater Savagery
		r(62959, {["timeline"] = {ADDED_3_1_0}}),	-- Spellpower
	}),
}));
CATA_ENCHANTING = applyclassicphase(CATA_PHASE_ONE, bubbleDown({ ["timeline"] = { ADDED_4_0_3 } }, {
	r(74258, {	-- Enchanting (Illustrious)
		["timeline"] = { ADDED_4_0_3, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 7,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264464, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Cataclysm Enchanting
	applyclassicphase(BFA_PHASE_ONE, r(302691, {	-- Disenchant
		["collectible"] = false,
		["timeline"] = { ADDED_8_0_1_LAUNCH },
	})),
	n(ARMOR_ENCHANTMENTS, {
		r(74216, {["timeline"] = {ADDED_4_0_3, REMOVED_6_0_2}}),	-- Agility
		r(74201),	-- Critical Strike[Bracer]
		r(74230),	-- Critical Strike[Cloak]
		r(74189),	-- Earthen Vitality
		r(74212),	-- Exceptional Strength
		r(74237),	-- Exceptional Versatility[Bracer]
		r(74231),	-- Exceptional Versatility[Chest]
		r(74239),	-- Greater Haste[Bracer]
		r(74220),	-- Greater Haste[Glove]
		r(74240),	-- Greater Intellect
		r(74218, {["timeline"] = {ADDED_4_0_3, REMOVED_6_0_2}}),	-- Greater Stamina
		r(74199),	-- Haste[Boot]
		r(74198),	-- Haste[Glove]
		r(74202),	-- Intellect[Cloak]
		r(74217, {["timeline"] = {ADDED_4_0_3, REMOVED_6_0_2}}),	-- Intellect[Ring]
		r(74192),	-- Lesser Power
		r(74213),	-- Major Agility
		r(74238),	-- Mastery[Boot]
		r(74132),	-- Mastery[Glove]
		r(74214),	-- Mighty Resilience / Mighty Armor[MOP+]
		r(74191),	-- Mighty Stats
		r(74232),	-- Precision[Bracer]
		r(74236),	-- Precision[Boot]
		r(74234),	-- Protection
		r(74193),	-- Speed
		r(74200),	-- Stamina
		r(74215, {["timeline"] = {ADDED_4_0_3, REMOVED_6_0_2}}),	-- Strength
		r(74229),	-- Superior Dodge
	}),
	filter(MISC, {
		r(104698, {["timeline"] = {ADDED_4_0_3}}),	-- Maelstrom Shatter
		r(217645, {["timeline"] = {ADDED_7_0_3}}),	-- Tome of Illusions: Cataclysm
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(74197),	-- Avalanche
		r(74211),	-- Elemental Slayer
		r(74225),	-- Heartsong
		r(74223),	-- Hurricane
		r(74226),	-- Mastery
		r(74195),	-- Mending
		r(95471),	-- Mighty Agility
		r(74207),	-- Protection
		r(74235),	-- Superior Intellect
	}),
}));
COMMON_CATACLYSM_ENCHANTING_RECIPES = applyclassicphase(CATA_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_4_0_3 } }, {
	i(64411, {	-- Formula: Enchant Boots - Assassin's Step (RECIPE!)
		["cost"] = {{ "i", HEAVENLY_SHARD, 5 }},
	}),
	i(64412, {	-- Formula: Enchant Boots - Lavawalker (RECIPE!)
		["cost"] = {{ "i", HEAVENLY_SHARD, 5 }},
	}),
	i(52738, {	-- Formula: Enchant Bracer - Greater Critical Strike (RECIPE!)
		["cost"] = {{ "i", HEAVENLY_SHARD, 5 }},
	}),
	i(64413, {	-- Formula: Enchant Bracer - Greater Speed (RECIPE!)
		["cost"] = {{ "i", HEAVENLY_SHARD, 5 }},
	}),
	i(52740, {	-- Formula: Enchant Chest - Greater Stamina (RECIPE!)
		["cost"] = {{ "i", HEAVENLY_SHARD, 5 }},
	}),
	i(52739, {	-- Formula: Enchant Chest - Peerless Stats (RECIPE!)
		["cost"] = {{ "i", HEAVENLY_SHARD, 5 }},
	}),
	i(52737, {	-- Formula: Enchant Cloak - Greater Critical Strike (RECIPE!)
		["cost"] = {{ "i", HEAVENLY_SHARD, 5 }},
	}),
	i(64414, {	-- Formula: Enchant Gloves - Greater Mastery (RECIPE!)
		["cost"] = {{ "i", HEAVENLY_SHARD, 5 }},
	}),
	i(64415, {	-- Formula: Enchant Gloves - Mighty Strength (RECIPE!)
		["cost"] = {{ "i", HEAVENLY_SHARD, 5 }},
	}),
	i(52736, {	-- Formula: Enchant Weapon - Landslide (RECIPE!)
		["cost"] = {{ "i", MAELSTORM_CRYSTAL, 5 }},
	}),
	i(52733, {	-- Formula: Enchant Weapon - Power Torrent (RECIPE!)
		["cost"] = {{ "i", MAELSTORM_CRYSTAL, 5 }},
	}),
	i(52735, {	-- Formula: Enchant Weapon - Windwalk (RECIPE!)
		["cost"] = {{ "i", MAELSTORM_CRYSTAL, 5 }},
	}),
	i(65359, {	-- Formula: Runed Elementium Rod (RECIPE!)
		["cost"] = {{ "i", HEAVENLY_SHARD, 1 }},
		["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
	}),
}));
MOP_ENCHANTING = applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	r(110400, {	-- Enchanting (Zen Master)
		["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1_LAUNCH },
		-- #if NOT ANYCLASSIC
		["collectible"] = false,
		-- #endif
		["rank"] = 8,
	}),
	applyclassicphase(BFA_PHASE_ONE, r(264467, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Pandaria Enchanting
	applyclassicphase(BFA_PHASE_ONE, r(302692, {	-- Disenchant
		["collectible"] = false,
		["timeline"] = { ADDED_8_0_1_LAUNCH },
	})),
	n(ARMOR_ENCHANTMENTS, {
		r(104398),	-- Accuracy
		r(104409),	-- Blurred Speed
		r(104395),	-- Glorious Stats
		r(103461, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Greater Agility
		r(104407),	-- Greater Haste[Boot]
		r(104416),	-- Greater Haste[Glove]
		r(103462, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Greater Intellect
		r(104408),	-- Greater Precision
		r(104401),	-- Greater Protection
		r(103463, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Greater Stamina
		r(103465, {["timeline"] = {ADDED_5_0_4, REMOVED_6_0_2}}),	-- Greater Strength
		r(104385),	-- Major Dodge
		r(104338),	-- Mastery
		r(104393),	-- Mighty Versatility
		r(104414),	-- Pandaren's Step
		r(104392),	-- Super Armor / MOP: Super Resilience
		r(104419),	-- Super Strength
		r(104404),	-- Superior Critical Strike
		r(104417),	-- Superior Haste
		r(104403),	-- Superior Intellect
		r(104420),	-- Superior Mastery
		r(104397),	-- Superior Stamina
	}),
	filter(MISC, {
		r(116498),	-- Ethereal Shard
		r(118238),	-- Ethereal Shatter
		r(118237),	-- Mysterious Diffusion
		r(116497),	-- Mysterious Essence
		r(116499),	-- Sha Crystal
		r(118239),	-- Sha Shatter
		r(217650, {["timeline"] = {ADDED_7_0_3}}),	-- Tome of Illusions: Pandaria
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(104440),	-- Colossus
		r(104430),	-- Elemental Force
		r(130758),	-- Greater Parry
		r(104445),	-- Major Intellect
		r(104425),	-- Windsong
	}),
}));
DRAENOR_ENCHANTING = applyclassicphase(WOD_PHASE_ONE, i(111922, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	["description"] = "This is a reward for completing the introductory Enchanting questline that can drop from any Draenor mob. Also sold at the Enchanter's Study for 100 gold.",
	["g"] = {
		r(158716, {	-- Enchanting (Draenor Master)
			["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_8_0_1_LAUNCH },
			-- #if NOT ANYCLASSIC
			["collectible"] = false,
			-- #endif
			["rank"] = 9,
		}),
		applyclassicphase(BFA_PHASE_ONE, r(264469, {["timeline"] = {ADDED_8_0_1_LAUNCH}})),	-- Draenor Enchanting
		applyclassicphase(BFA_PHASE_ONE, r(302693, {	-- Disenchant
			["collectible"] = false,
			["timeline"] = { ADDED_8_0_1_LAUNCH },
		})),
		r(158907),	-- Breath of Critical Strike
		r(158908),	-- Breath of Haste
		r(158909),	-- Breath of Mastery
		r(158910, {["timeline"] = {ADDED_6_0_3_LAUNCH, REMOVED_7_0_3}}),	-- Breath of Multistrike
		r(158911),	-- Breath of Versatility
		r(162948),	-- Enchanted Dust
		r(169091),	-- Luminous Shard
		r(177043),	-- Secrets of Draenor Enchanting
		r(169092),	-- Temporal Crystal
		r(159236),	-- Mark of the Shattered Hand
	},
})));
COMMON_DRAENOR_ENCHANTING_RECIPES = applyclassicphase(WOD_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	i(118394, {	-- Formula: Enchant Cloak - Breath of Critical Strike (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118429, {	-- Formula: Enchant Cloak - Breath of Haste (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118430, {	-- Formula: Enchant Cloak - Breath of Mastery (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118431, {	-- Formula: Enchant Cloak - Breath of Multistrike (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_7_0_3 },
	}),
	i(118432, {	-- Formula: Enchant Cloak - Breath of Versatility (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118433, {	-- Formula: Enchant Cloak - Gift of Critical Strike (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118434, {	-- Formula: Enchant Cloak - Gift of Haste (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118435, {	-- Formula: Enchant Cloak - Gift of Mastery (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118436, {	-- Formula: Enchant Cloak - Gift of Multistrike (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_7_0_3 },
	}),
	i(118437, {	-- Formula: Enchant Cloak - Gift of Versatility (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118438, {	-- Formula: Enchant Neck - Breath of Critical Strike (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118439, {	-- Formula: Enchant Neck - Breath of Haste (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118440, {	-- Formula: Enchant Neck - Breath of Mastery (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118441, {	-- Formula: Enchant Neck - Breath of Multistrike (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_7_0_3 },
	}),
	i(118442, {	-- Formula: Enchant Neck - Breath of Versatility (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118443, {	-- Formula: Enchant Neck - Gift of Critical Strike (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118444, {	-- Formula: Enchant Neck - Gift of Haste (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118445, {	-- Formula: Enchant Neck - Gift of Mastery (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118446, {	-- Formula: Enchant Neck - Gift of Multistrike (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_7_0_3 },
	}),
	i(118447, {	-- Formula: Enchant Neck - Gift of Versatility (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118453, {	-- Formula: Enchant Ring - Gift of Critical Strike (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118454, {	-- Formula: Enchant Ring - Gift of Haste (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118455, {	-- Formula: Enchant Ring - Gift of Mastery (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118456, {	-- Formula: Enchant Ring - Gift of Multistrike (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
		["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_7_0_3 },
	}),
	i(118457, {	-- Formula: Enchant Ring - Gift of Versatility (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
	}),
	i(118463, {	-- Formula: Enchant Weapon - Mark of Blackrock (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 5 }},
	}),
	i(118467, {	-- Formula: Enchant Weapon - Mark of Bleeding Hollow (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 5 }},
	}),
	i(118462, {	-- Formula: Enchant Weapon - Mark of Shadowmoon (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 5 }},
	}),
	i(118461, {	-- Formula: Enchant Weapon - Mark of the Frostwolf (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 5 }},
	}),
	i(118458, {	-- Formula: Enchant Weapon - Mark of the Thunderlord (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 5 }},
	}),
	i(118460, {	-- Formula: Enchant Weapon - Mark of Warsong (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 5 }},
	}),
	i(138882, {	-- Formula: Tome of Illusions: Draenor (RECIPE!)
		["cost"] = {{ "i", SECRET_OF_DRAENOR_ENCHANTING, 1 }},
		["timeline"] = { ADDED_7_0_3 },
	}),
}));
BFA_ENCHANTING = applyclassicphase(BFA_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	r(302695, {["collectible"] = false}),	-- Disenchant
	n(ARMOR_ENCHANTMENTS, {
		r(271433),	-- Cooled Hearthing
		r(255075),	-- Pact of Critical Strike [Rank 1]
		r(255090),	-- Pact of Critical Strike [Rank 2]
		r(255076),	-- Pact of Haste [Rank 1]
		r(255091),	-- Pact of Haste [Rank 2]
		r(255077),	-- Pact of Mastery [Rank 1]
		r(255092),	-- Pact of Mastery [Rank 2]
		r(255078),	-- Pact of Versatility [Rank 1]
		r(255093),	-- Pact of Versatility [Rank 2]
		r(271366),	-- Safe Hearthing
		r(255071),	-- Seal of Critical Strike [Rank 1]
		r(255086),	-- Seal of Critical Strike [Rank 2]
		r(255072),	-- Seal of Haste [Rank 1]
		r(255087),	-- Seal of Haste [Rank 2]
		r(255073),	-- Seal of Mastery [Rank 1]
		r(255088),	-- Seal of Mastery [Rank 2]
		r(255074),	-- Seal of Versatility [Rank 1]
		r(255089),	-- Seal of Versatility [Rank 2]
	}),
	filter(MISC, {
		r(287270, {["timeline"] = {ADDED_8_1_0}}),	-- Aqueous Invocation
		r(278418),	-- Disenchanting Rod
		r(286665, {["timeline"] = {ADDED_8_1_0}}),	-- Sanguinated Expulsion
		r(286644, {["timeline"] = {ADDED_8_1_0}}),	-- Sanguinated Invocation
		r(290360, {["timeline"] = {ADDED_8_1_0}}),	-- Umbra Shatter
		r(290361, {["timeline"] = {ADDED_8_1_0}}),	-- Veiled Shatter
	}),
	n(WEAPONS, {
		r(265110),	-- Enchanter's Sorcerous Scepter [Rank 1]
		r(265111),	-- Enchanter's Sorcerous Scepter [Rank 2]
		r(265106),	-- Enchanter's Umbral Wand
		r(269715),	-- Honorable Combatant's Sorcerous Scepter [Rank 1]
		r(282851, {["timeline"] = {ADDED_8_1_0}}),	-- Sinister Combatant's Sorcerous Scepter [Rank 1]
		r(305936, {["timeline"] = {ADDED_8_3_0}}),	-- Uncanny Combatant's Sorcerous Scepter [Rank 1]
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(255103),	-- Coastal Surge [Rank 1]
		r(255104),	-- Coastal Surge [Rank 2]
		r(268907),	-- Deadly Navigation [Rank 1]
		r(268908),	-- Deadly Navigation [Rank 2]
		r(255141),	-- Gale-Force Striking [Rank 1]
		r(255142),	-- Gale-Force Striking [Rank 2]
		r(268901),	-- Masterful Navigation [Rank 1]
		r(268902),	-- Masterful Navigation [Rank 2]
		r(268894),	-- Quick Navigation [Rank 1]
		r(268895),	-- Quick Navigation [Rank 2]
		r(255110),	-- Siphoning [Rank 1]
		r(255111),	-- Siphoning [Rank 2]
		r(268913),	-- Stalwart Navigation [Rank 1]
		r(268914),	-- Stalwart Navigation [Rank 2]
		r(255129),	-- Torrent of Elements [Rank 1]
		r(255130),	-- Torrent of Elements [Rank 2]
		r(268852),	-- Versatile Navigation [Rank 1]
		r(268878),	-- Versatile Navigation [Rank 2]
	}),
}));
NAZJATAR_ENCHANTING = applyclassicphase(BFA_PHASE_THREE, sharedData({ ["timeline"] = { ADDED_8_2_0 } }, {
	n(ARMOR_ENCHANTMENTS, {
		r(298009),	-- Accord of Critical Strike [Rank 1]
		r(298010),	-- Accord of Critical Strike [Rank 2]
		r(297989),	-- Accord of Haste [Rank 1]
		r(297994),	-- Accord of Haste [Rank 2]
		r(297995),	-- Accord of Mastery [Rank 1]
		r(298001),	-- Accord of Mastery [Rank 2]
		r(297993),	-- Accord of Versatility [Rank 1]
		r(297991),	-- Accord of Versatility [Rank 2]
	}),
	filter(MISC, {
		r(301412),	-- Light-Step Hoofplates
	}),
	n(WEAPONS, {
		r(294781),	-- Notorious Combatant's Sorcerous Scepter [Rank 1]
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(298440),	-- Force Multiplier [Rank 1]
		r(298439),	-- Force Multiplier [Rank 2]
		r(298433),	-- Machinist's Brilliance [Rank 1]
		r(300769),	-- Machinist's Brilliance [Rank 2]
		r(298442),	-- Naga Hide [Rank 1]
		r(298441),	-- Naga Hide [Rank 2]
		r(298438),	-- Oceanic Restoration [Rank 1]
		r(298437),	-- Oceanic Restoration [Rank 2]
	}),
}));
SL_ENCHANTING = applyclassicphase(SHADOWLANDS_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	r(309832),	-- Shadowlands Enchanting
	r(324750, {["collectible"] = false}),	-- Disenchant
	n(ARMOR_ENCHANTMENTS, {
		r(309532),	-- Agile Soulwalker
		r(309612),	-- Bargain of Critical Strike
		r(309613),	-- Bargain of Haste
		r(309614),	-- Bargain of Mastery
		r(309615),	-- Bargain of Versatility
		r(309534),	-- Eternal Agility
		r(323761),	-- Eternal Bounds
		r(309535),	-- Eternal Bulwark
		r(342316),	-- Eternal Insight
		r(309609),	-- Eternal Intellect
		r(323760),	-- Eternal Skirmish
		r(324773),	-- Eternal Stats
		r(309526),	-- Eternal Strength
		r(309530),	-- Fortified Avoidance
		r(309531),	-- Fortified Leech
		r(309528),	-- Fortified Speed
		r(309608),	-- Illuminated Soul
		r(323762),	-- Sacred Stats
		r(309610),	-- Shaded Hearthing
		r(309524),	-- Shadowlands Gathering
		r(323609),	-- Soul Treads
		r(323755),	-- Soul Vitality
		r(309525),	-- Strength of Soul
		r(309616),	-- Tenet of Critical Strike
		r(309617),	-- Tenet of Haste
		r(309618),	-- Tenet of Mastery
		r(309619),	-- Tenet of Versatility
	}),
	filter(MISC, {
		r(343684),	-- Crafter's Mark I
		r(343680),	-- Novice Crafter's Mark
	}),
	filter(REAGENTS, {
		r(309636),	-- Enchanted Elethium Bar
		r(309637),	-- Enchanted Heavy Callous Hide
		r(309638),	-- Enchanted Lightless Silk
		r(309645),	-- Eternal Crystal
	}),
	n(WEAPONS, {
		r(265105),	-- Enchanted Twilight Wand
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(309622),	-- Ascended Vigor
		r(309627),	-- Celestial Guidance
		r(309621),	-- Eternal Grace
		r(309620),	-- Lightless Force
		r(309623),	-- Sinful Revelation
	}),
}));
DF_ENCHANTING = applyclassicphase(DF_PHASE_ONE, sharedData({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	r(366255),	-- Dragon Isles Enchanting
	r(392888, {["collectible"] = false}),	-- Disenchant
	r(389191),	-- Recraft Equipment
	n(ARMOR_ENCHANTMENTS, {
		r(389292),	-- Devotion of Critical Strike
		r(389293),	-- Devotion of Haste
		r(389294),	-- Devotion of Mastery
		r(389295),	-- Devotion of Versatility
		r(389297),	-- Writ of Avoidance [Bracers]
		r(389397),	-- Writ of Avoidance [Cloak]
		r(388930),	-- Writ of Critical Strike
		r(389135),	-- Writ of Haste
		r(389298),	-- Writ of Leech [Bracers]
		r(389398),	-- Writ of Leech [Cloak]
		r(389136),	-- Writ of Mastery
		r(389300),	-- Writ of Speed [Bracers]
		r(389400),	-- Writ of Speed [Cloak]
		r(389151),	-- Writ of Versatility
	}),
	filter(MISC, {
		r(391810),	-- Illusory Adornment: Air
		r(391811),	-- Illusory Adornment: Earth
		r(390951),	-- Illusory Adornment: Fire
		r(391809),	-- Illusory Adornment: Frost
		r(391806),	-- Scepter of Spectacle: Air
		r(391807),	-- Scepter of Spectacle: Earth
		r(391196),	-- Scepter of Spectacle: Fire
		r(391197),	-- Scepter of Spectacle: Frost
	}),
	filter(PROFESSION_EQUIPMENT, {
		r(390823),	-- Runed Draconium Rod
		r(394189),	-- Runed Serevite Rod
	}),
	n(WEAPONS, {
		r(391176),	-- Enchanted Writhebark Wand
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(389537),	-- Burning Writ
		r(389540),	-- Earthen Writ
		r(389543),	-- Frozen Writ
		r(389542),	-- Sophic Writ
		r(389546),	-- Wafting Writ
	}),
}));
TWW_ENCHANTING = bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	r(423334),	-- Khaz Algar Enchanting
	r(455970, {["collectible"] = false}),	-- Disenchant
	r(425138),	-- Recraft Equipment
	n(ARMOR_ENCHANTMENTS, {
		r(445358),	-- Glimmering Critical Strike
		r(445384),	-- Glimmering Haste
		r(445381),	-- Glimmering Mastery
		r(445340),	-- Glimmering Versatility
		r(445351),	-- Oathsworn's Tenacity
		r(445392),	-- Whisper of Armored Avoidance
		r(445374),	-- Whisper of Armored Leech
		r(445376),	-- Whisper of Armored Speed
		r(445344),	-- Whisper of Silken Avoidance
		r(445348),	-- Whisper of Silken Leech
		r(445373),	-- Whisper of Silken Speed
	}),
	filter(MISC, {
		r(445338),	-- Algari Mana Oil
		r(470726),	-- Gleaming Shatter
		r(445365),	-- Gleeful Glamour - Pandaren
		r(445360),	-- Illusory Adornment: Runes
	}),
	filter(PROFESSION_EQUIPMENT, {
		r(445361),	-- Runed Bismuth Rod
	}),
	filter(REAGENTS, {
		r(445371),	-- Mirror Powder
	}),
	n(WEAPONS, {
		r(445324),	-- Enchanted Spearwood Wand
	}),
	n(WEAPON_ENCHANTMENTS, {
		r(445379),	-- Council's Guile
		r(445385),	-- Stonebound Artistry
		r(445317),	-- Stormrider's Fury
	}),
});