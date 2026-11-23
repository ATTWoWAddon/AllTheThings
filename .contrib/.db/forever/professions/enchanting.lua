-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
profession(ENCHANTING, {
	n(ACHIEVEMENTS, {
		ach(62020, {	-- Artisan Enchanter
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62019, {	-- Expert Enchanter
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62018, {	-- Journeyman Enchanter
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
	}),
	header(HEADERS.SpellWithRank, 7411, {	-- Enchanting (Apprentice)
		symselector = SymSelector.ENCHANTING_APPRENTICE,
		groups = {
			r(7411, {	-- Enchanting (Apprentice)
				lvl = 5,
				rank = 1,
			}),
			r(13262),	-- Disenchant
			n(ARMOR_ENCHANTMENTS, {
				r(7418),	-- Enchant Bracer - Inferior Stamina
				r(7457),	-- Enchant Bracer - Minor Stamina
				r(7420),	-- Enchant Chest - Inferior Stamina
				r(7748),	-- Enchant Chest - Lesser Stamina
				r(7426),	-- Enchant Chest - Minor Absorption
				r(7771),	-- Enchant Cloak - Minor Protection
				r(7454),	-- Enchant Cloak - Minor Resistance
			}),
			filter(PROFESSION_EQUIPMENT, {
				r(7421),	-- Runed Copper Rod
			}),
			filter(REAGENTS, {
				r(1245320),	-- Dust to Motes
			}),
			n(WEAPONS, {
				r(14807),	-- Greater Magic Wand
				r(14293),	-- Lesser Magic Wand
				r(1245321, {timeline = {TIMELINE.ADDED_1_60_1}}),	-- Novice's Practice Wand
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 7412, {	-- Enchanting (Journeyman)
		symselector = SymSelector.ENCHANTING_JOURNEYMAN,
		groups = {
			r(7412, {	-- Enchanting (Journeyman)
				lvl = 10,
				rank = 2,
			}),
			n(ARMOR_ENCHANTMENTS, {
				r(7863),	-- Enchant Boots - Minor Stamina
				r(13622),	-- Enchant Bracer - Lesser Intellect
				r(13501),	-- Enchant Bracer - Lesser Stamina
				r(7779),	-- Enchant Bracer - Minor Agility
				r(7428),	-- Enchant Bracer - Minor Deflect
				r(13607),	-- Enchant Chest - Intellect
				r(13538),	-- Enchant Chest - Lesser Absorption
				r(13626),	-- Enchant Chest - Minor Stats
				r(7857),	-- Enchant Chest - Stamina
				r(7861),	-- Enchant Cloak - Lesser Fire Resistance
				r(13421),	-- Enchant Cloak - Lesser Protection
			}),
			filter(PROFESSION_EQUIPMENT, {
				r(13628),	-- Runed Gold Rod
				r(7795),	-- Runed Silver Rod
			}),
			n(WEAPON_ENCHANTMENTS, {
				r(13529),	-- Enchant 2H Weapon - Lesser Impact
				r(7745),	-- Enchant 2H Weapon - Minor Impact
				r(13485),	-- Enchant Shield - Lesser Spirit
				r(13378),	-- Enchant Shield - Minor Stamina
				r(13503),	-- Enchant Weapon - Lesser Striking
				r(7788),	-- Enchant Weapon - Minor Striking
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 7413, {	-- Enchanting (Expert)
		symselector = SymSelector.ENCHANTING_EXPERT,
		groups = {
			r(7413, {	-- Enchanting (Expert)
				lvl = 20,
				rank = 3,
			}),
			n(ARMOR_ENCHANTMENTS, {
				r(13637),	-- Enchant Boots - Lesser Agility
				r(13644),	-- Enchant Boots - Lesser Stamina
				r(13890),	-- Enchant Boots - Minor Speed
				r(13836),	-- Enchant Boots - Stamina
				r(13822),	-- Enchant Bracer - Intellect
				r(13642),	-- Enchant Bracer - Spirit
				r(13648),	-- Enchant Bracer - Stamina
				r(13661),	-- Enchant Bracer - Strength
				r(13663),	-- Enchant Chest - Greater Intellect
				r(13640),	-- Enchant Chest - Greater Stamina
				r(13700),	-- Enchant Chest - Lesser Stats
				r(13858),	-- Enchant Chest - Superior Stamina
				r(13635),	-- Enchant Cloak - Defense
				r(13657),	-- Enchant Cloak - Fire Resistance
				r(13746),	-- Enchant Cloak - Greater Defense
				r(13794),	-- Enchant Cloak - Resistance
				r(13815),	-- Enchant Gloves - Agility
				r(13887),	-- Enchant Gloves - Strength
			}),
			filter(PROFESSION_EQUIPMENT, {
				r(13702),	-- Runed Truesilver Rod
			}),
			n(WEAPONS, {
				r(14810),	-- Greater Mystic Wand
				r(439134),	-- Greater Mystic Wand (SOD??)
				r(14809),	-- Lesser Mystic Wand
			}),
			n(WEAPON_ENCHANTMENTS, {
				r(13695),	-- Enchant 2H Weapon - Impact
				r(13631),	-- Enchant Shield - Lesser Stamina
				r(13659),	-- Enchant Shield - Spirit
				r(13693),	-- Enchant Weapon - Striking
			}),
		},
	}),
	header(HEADERS.SpellWithRank, 13920, {	-- Enchanting (Artisan)
		symselector = SymSelector.ENCHANTING_ARTISAN,
		groups = {
			r(13920, {	-- Enchanting (Artisan)
				lvl = 35,
				rank = 4,
			}),
			n(ARMOR_ENCHANTMENTS, {
				r(13935),	-- Enchant Boots - Agility
				r(13939),	-- Enchant Bracer - Greater Strength
				r(13941),	-- Enchant Chest - Stats
				r(13917),	-- Enchant Chest - Superior Intellect
				r(13948),	-- Enchant Gloves - Minor Haste
			}),
			filter(REAGENTS, {
				r(17181),	-- Enchanted Leather
				r(17180),	-- Enchanted Thorium Bar
			}),
			n(WEAPON_ENCHANTMENTS, {
				r(13937),	-- Enchant 2H Weapon - Greater Impact
				r(13905),	-- Enchant Shield - Greater Spirit
				r(13943),	-- Enchant Weapon - Greater Striking
			}),
		},
	}),
});
