----------------
-- ENCHANTING --
----------------
ENCHANTING_RECIPES = {
	APPRENTICE = {
		r(7411, {	-- Enchanting (Apprentice)
			["lvl"] = 5,
			["rank"] = 1,
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
			r(1245321, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Novice's Practice Wand
		}),
	};
	JOURNEYMAN = {
		r(7412, {	-- Enchanting (Journeyman)
			["lvl"] = 10,
			["rank"] = 2,
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
	};
	EXPERT = {
		r(7413, {	-- Enchanting (Expert)
			["lvl"] = 20,
			["rank"] = 3,
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
	};
	ARTISAN = {
		r(13920, {	-- Enchanting (Artisan)
			["lvl"] = 35,
			["rank"] = 4,
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
	};
	COMMON_RECIPES = {
		i(6342, {	-- Formula: Enchant Chest - Minor Intellect (RECIPE!)
			["isLimited"] = true,
		}),
		i(20753),	-- Formula: Lesser Wizard Oil (RECIPE!)
		i(20752),	-- Formula: Minor Mana Oil (RECIPE!)
		i(20758),	-- Formula: Minor Wizard Oil (RECIPE!)
		i(22307),	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
	};
	MERCHANTS_FAVOR_RECIPES_ALLIANCE = bubbleDownClassicRep(AZEROTH_COMMERCE_AUTHORITY, {
		{	-- Neutral
			i(271624, {	-- Enchanting Certification
				cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
			}),
			i(249479, {	-- Formula: Enchant Weapon - Insight (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249480, {	-- Formula: Enchant Weapon - Recovery (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249481, {	-- Formula: Enchant Weapon - Revelation (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249482, {	-- Formula: Glimmering Staff (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249476, {	-- Formula: Mystic Mushroom (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249484, {	-- Formula: Orb of Mystic Insight (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249485, {	-- Formula: Orb of Souls (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249478, {	-- Formula: Polished Driftwood Icon (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249483, {	-- Formula: Soulstaff (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249477, {	-- Formula: Tenets of the Silver Hand (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
		}, {	-- Friendly
			i(249510, {	-- Formula: Enchant Chest - Absorption (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249504, {	-- Formula: Enchant Necklace - Agility (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249505, {	-- Formula: Enchant Necklace - Deflection (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249503, {	-- Formula: Enchant Necklace - Healing Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249502, {	-- Formula: Enchant Necklace - Spell Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249496, {	-- Formula: Enchant Necklace - Strength (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249507, {	-- Formula: Dreamstaff (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249494, {	-- Formula: Libram of Invocation (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249506, {	-- Formula: Radiant Staff (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249493, {	-- Formula: Talons of Wrath (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249495, {	-- Formula: Totem of Ancestral Protection (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249508, {	-- Formula: Truesilver Conduit (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249509, {	-- Formula: Twisting Essence Jar (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
		}, {	-- Honored
			i(249537, {	-- Formula: Brilliant Wand (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(249526, {	-- Formula: Enchant 2H Weapon - Mighty Healing Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249525, {	-- Formula: Enchant 2H Weapon - Mighty Spell Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(274394, {	-- Formula: Enchant 2H Weapon - Spellblasting (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(274399, {	-- Formula: Enchant Cloak - Agility (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(274401, {	-- Formula: Enchant Bracer - Greater Spellpower (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249539, {	-- Formula: Enchant Bracer - Superior Deflection (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249538, {	-- Formula: Enchant Bracer - Superior Intellect (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249534, {	-- Formula: Enchant Gloves - Arcane Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249536, {	-- Formula: Enchant Gloves - Holy Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249535, {	-- Formula: Enchant Gloves - Natural Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(274398, {	-- Formula: Enchant Gloves - Superior Strength (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(274393, {	-- Formula: Enchant Off-Hand - Wisdom (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249529, {	-- Formula: Idol of the Dream (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249530, {	-- Formula: Libram of Holy Alacrity (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249532, {	-- Formula: Totem of Thunder (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
		}, {	-- Revered
		}, {	-- Exalted
		},
	});
	MERCHANTS_FAVOR_RECIPES_HORDE = bubbleDownClassicRep(DUROTAR_SUPPLY_AND_LOGISTICS, {
		{	-- Neutral
			i(271624, {	-- Enchanting Certification
				cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
			}),
			i(249479, {	-- Formula: Enchant Weapon - Insight (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249480, {	-- Formula: Enchant Weapon - Recovery (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249481, {	-- Formula: Enchant Weapon - Revelation (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249482, {	-- Formula: Glimmering Staff (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249476, {	-- Formula: Mystic Mushroom (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249484, {	-- Formula: Orb of Mystic Insight (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249485, {	-- Formula: Orb of Souls (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249478, {	-- Formula: Polished Driftwood Icon (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249483, {	-- Formula: Soulstaff (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
			i(249477, {	-- Formula: Tenets of the Silver Hand (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 45}},
			}),
		}, {	-- Friendly
			i(249510, {	-- Formula: Enchant Chest - Absorption (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249504, {	-- Formula: Enchant Necklace - Agility (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249505, {	-- Formula: Enchant Necklace - Deflection (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249503, {	-- Formula: Enchant Necklace - Healing Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249502, {	-- Formula: Enchant Necklace - Spell Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249496, {	-- Formula: Enchant Necklace - Strength (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249507, {	-- Formula: Dreamstaff (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249494, {	-- Formula: Libram of Invocation (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249506, {	-- Formula: Radiant Staff (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249493, {	-- Formula: Talons of Wrath (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249495, {	-- Formula: Totem of Ancestral Protection (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249508, {	-- Formula: Truesilver Conduit (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
			i(249509, {	-- Formula: Twisting Essence Jar (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120}},
			}),
		}, {	-- Honored
			i(249537, {	-- Formula: Brilliant Wand (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 180}},
			}),
			i(249526, {	-- Formula: Enchant 2H Weapon - Mighty Healing Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249525, {	-- Formula: Enchant 2H Weapon - Mighty Spell Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(274394, {	-- Formula: Enchant 2H Weapon - Spellblasting (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(274399, {	-- Formula: Enchant Cloak - Agility (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(274401, {	-- Formula: Enchant Bracer - Greater Spellpower (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249539, {	-- Formula: Enchant Bracer - Superior Deflection (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249538, {	-- Formula: Enchant Bracer - Superior Intellect (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249534, {	-- Formula: Enchant Gloves - Arcane Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249536, {	-- Formula: Enchant Gloves - Holy Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249535, {	-- Formula: Enchant Gloves - Natural Power (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(274398, {	-- Formula: Enchant Gloves - Superior Strength (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(274393, {	-- Formula: Enchant Off-Hand - Wisdom (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249529, {	-- Formula: Idol of the Dream (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249530, {	-- Formula: Libram of Holy Alacrity (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
			i(249532, {	-- Formula: Totem of Thunder (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 240}},
			}),
		}, {	-- Revered
		}, {	-- Exalted
		},
	});
};
