---------------
-- TAILORING --
---------------
TAILORING_RECIPES = {
	APPRENTICE = {
		r(3908, {	-- Tailoring (Apprentice)
			lvl = 5,
			rank = 1,
		}),
		n(ARMOR, {
			r(2395),	-- Barbaric Linen Vest
			r(2394),	-- Blue Linen Shirt
			r(3914),	-- Brown Linen Pants
			r(7623),	-- Brown Linen Robe
			r(3915),	-- Brown Linen Shirt
			r(2385),	-- Brown Linen Vest
			r(3841),	-- Green Linen Bracers
			r(2396),	-- Green Linen Shirt
			r(3842),	-- Handstitched Linen Britches
			r(3840),	-- Heavy Linen Gloves
			r(8776),	-- Linen Belt
			r(2386),	-- Linen Boots
			r(2387),	-- Linen Cloak
			r(1257368),	-- Novice Arcanist's Sash
			r(1257369),	-- Novice Ardent's Sash
			r(2392),	-- Red Linen Shirt
			r(2397),	-- Reinforced Linen Cape
			r(8465),	-- Simple Dress
			r(12046),	-- Simple Kilt
			r(12045),	-- Simple Linen Boots
			r(12044),	-- Simple Linen Pants
			r(7624),	-- White Linen Robe
			r(2393),	-- White Linen Shirt
			r(2402),	-- Woolen Cape
		}),
		filter(BAGS, {
			r(3755),	-- Linen Bag
		}),
		filter(REAGENTS, {
			r(2963),	-- Bolt of Linen Cloth
			r(2964),	-- Bolt of Woolen Cloth
		}),
		
	};
	JOURNEYMAN = {
		r(3909, {	-- Tailoring (Journeyman)
			lvl = 10,
			rank = 2,
		}),
		n(ARMOR, {
			r(8760),	-- Azure Silk Hood
			r(8758),	-- Azure Silk Pants
			r(3859),	-- Azure Silk Vest
			r(1257429),	-- Black Slippers
			r(3848),	-- Double-stitched Woolen Shoulders
			r(1257428),	-- Fiery Slippers
			r(1257427),	-- Frothing Slippers
			r(1257426),	-- Gilded Slippers
			r(3852),	-- Gloves of Meditation
			r(1257430),	-- Golden Slippers
			r(2406),	-- Gray Woolen Shirt
			r(2399),	-- Green Woolen Vest
			r(3843),	-- Heavy Woolen Gloves
			r(3850),	-- Heavy Woolen Pants
			r(6690),	-- Lesser Wizard's Robe
			r(6521),	-- Pearl-clasped Cloak
			r(1257431),	-- Radiant Slippers
			r(3845),	-- Soft-soled Linen Boots
			r(3855),	-- Spidersilk Boots
			r(3866),	-- Stylish Red Shirt
			r(8467),	-- White Woolen Dress
			r(2401),	-- Woolen Boots
		}),
		filter(BAGS, {
			r(3813),	-- Small Silk Pack
			r(3757),	-- Woolen Bag
		}),
		filter(REAGENTS, {
			r(3839),	-- Bolt of Silk Cloth
		}),
	};
	EXPERT = {
		r(3910, {	-- Tailoring (Expert)
			lvl = 20,
			rank = 3,
		}),
		n(ARMOR, {
			r(8766),	-- Azure Silk Belt
			r(12053),	-- Black Mageweave Gloves
			r(12049),	-- Black Mageweave Leggings
			r(12050),	-- Black Mageweave Robe
			r(12048),	-- Black Mageweave Vest
			r(12069),	-- Cindercloth Robe
			r(8772),	-- Crimson Silk Belt
			r(8804),	-- Crimson Silk Gloves
			r(8799),	-- Crimson Silk Pantaloons
			r(8791),	-- Crimson Silk Vest
			r(12067),	-- Dreamweave Gloves
			r(12070),	-- Dreamweave Vest
			r(8764),	-- Earthen Vest
			r(3871),	-- Formal White Shirt
			r(8774),	-- Green Silken Shoulders
			r(3861),	-- Long Silken Cloak
			r(12061),	-- Orange Mageweave Shirt
			r(8489),	-- Red Swashbuckler's Shirt
			r(8770),	-- Robe of Power
			r(8762),	-- Silk Headband
			r(8483),	-- White Swashbuckler's Shirt
		}),
		filter(BAGS, {
			r(12065),	-- Mageweave Bag
		}),
		filter(REAGENTS, {
			r(3865),	-- Bolt of Mageweave
		}),
	};
	ARTISAN = {
		r(12180, {	-- Tailoring (Artisan)
			lvl = 35,
			rank = 4,
		}),
		n(ARMOR, {
			r(12073),	-- Black Mageweave Boots
			r(12072),	-- Black Mageweave Headband
			r(12074),	-- Black Mageweave Shoulders
			r(12088),	-- Cindercloth Boots
			r(12092),	-- Dreamweave Circlet
			r(18402),	-- Runecloth Belt
			r(12077),	-- Simple Black Dress
		}),
		filter(BAGS, {
			r(12079),	-- Red Mageweave Bag
		}),
		filter(REAGENTS, {
			r(18401),	-- Bolt of Runecloth
		}),
	};
	SHADOWEAVE = {
		r(12082),	-- Shadoweave Boots
		r(12071),	-- Shadoweave Gloves
		r(12052),	-- Shadoweave Pants
		r(12055),	-- Shadoweave Robe
		r(12076),	-- Shadoweave Shoulders
	};
	MERCHANTS_FAVOR_RECIPES_ALLIANCE = bubbleDownClassicRep(AZEROTH_COMMERCE_AUTHORITY, {
		{	-- Neutral
			i(253894, {	-- Pattern: Flame Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253954, {	-- Pattern: Flame Circlet (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253918, {	-- Pattern: Flame Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253966, {	-- Pattern: Flame Gown (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253992, {	-- Pattern: Flame Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253930, {	-- Pattern: Flame Sash (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253898, {	-- Pattern: Pearly Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253958, {	-- Pattern: Pearly Circlet (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253922, {	-- Pattern: Pearly Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253970, {	-- Pattern: Pearly Gown (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253996, {	-- Pattern: Pearly Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253934, {	-- Pattern: Pearly Sash (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253890, {	-- Pattern: Pristine Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253950, {	-- Pattern: Pristine Circlet (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253914, {	-- Pattern: Pristine Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253962, {	-- Pattern: Pristine Gown (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253988, {	-- Pattern: Pristine Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253926, {	-- Pattern: Pristine Sash (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253896, {	-- Pattern: Shadow Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253956, {	-- Pattern: Shadow Circlet (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253920, {	-- Pattern: Shadow Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253968, {	-- Pattern: Shadow Gown (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253994, {	-- Pattern: Shadow Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253932, {	-- Pattern: Shadow Sash (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253900, {	-- Pattern: Shining Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253960, {	-- Pattern: Shining Circlet (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253924, {	-- Pattern: Shining Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253972, {	-- Pattern: Shining Gown (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253998, {	-- Pattern: Shining Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253936, {	-- Pattern: Shining Sash (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253892, {	-- Pattern: Silky Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253952, {	-- Pattern: Silky Circlet (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253916, {	-- Pattern: Silky Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253964, {	-- Pattern: Silky Gown (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253990, {	-- Pattern: Silky Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253928, {	-- Pattern: Silky Sash (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(271627, {	-- Tailoring Certification
				cost = { { "c", MERCHANTS_FAVOR, 1000 } },
			}),
		}, {	-- Friendly
			i(254028, {	-- Pattern: Black Handwraps (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254088, {	-- Pattern: Black Waistcord (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254026, {	-- Pattern: Fiery Handwraps (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254086, {	-- Pattern: Fiery Waistcord (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254024, {	-- Pattern: Frothing Handwraps (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254084, {	-- Pattern: Frothing Waistcord (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254082, {	-- Pattern: Gilded Waistcord (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254030, {	-- Pattern: Golden Handwraps (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254090, {	-- Pattern: Golden Waistcord (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254036, {	-- Pattern: Mageweave Reagent Bag (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254066, {	-- Pattern: Netherflame Cuffs (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254054, {	-- Pattern: Netherflame Shoulders (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254062, {	-- Pattern: Nethergeld Cuffs (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254050, {	-- Pattern: Nethergeld Shoulders (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254072, {	-- Pattern: Netherlight Cuffs (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254060, {	-- Pattern: Netherlight Shoulders (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254064, {	-- Pattern: Netherfroth Cuffs (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254052, {	-- Pattern: Netherfroth Shoulders (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254068, {	-- Pattern: Netherpearl Cuffs (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254056, {	-- Pattern: Netherpearl Shoulders (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254070, {	-- Pattern: Nethershine Cuffs (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254058, {	-- Pattern: Nethershine Shoulders (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254032, {	-- Pattern: Radiant Handwraps (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254092, {	-- Pattern: Radiant Waistcord (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254080, {	-- Pattern: Runecloth Reagent Bag (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
		}, {	-- Honored
			i(254114, {	-- Pattern: Black Sandals (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(254112, {	-- Pattern: Fiery Sandals (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(254110, {	-- Pattern: Frothing Sandals (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(254108, {	-- Pattern: Gilded Sandals (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(254116, {	-- Pattern: Golden Sandals (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(254118, {	-- Pattern: Radiant Sandals (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
		}, {	-- Revered
		}, {	-- Exalted
		},
	});
	MERCHANTS_FAVOR_RECIPES_HORDE = bubbleDownClassicRep(DUROTAR_SUPPLY_AND_LOGISTICS, {
		{	-- Neutral
			i(253894, {	-- Pattern: Flame Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253954, {	-- Pattern: Flame Circlet (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253918, {	-- Pattern: Flame Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253966, {	-- Pattern: Flame Gown (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253992, {	-- Pattern: Flame Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253930, {	-- Pattern: Flame Sash (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253898, {	-- Pattern: Pearly Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253958, {	-- Pattern: Pearly Circlet (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253922, {	-- Pattern: Pearly Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253970, {	-- Pattern: Pearly Gown (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253996, {	-- Pattern: Pearly Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253934, {	-- Pattern: Pearly Sash (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253890, {	-- Pattern: Pristine Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253950, {	-- Pattern: Pristine Circlet (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253914, {	-- Pattern: Pristine Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253962, {	-- Pattern: Pristine Gown (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253988, {	-- Pattern: Pristine Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253926, {	-- Pattern: Pristine Sash (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253896, {	-- Pattern: Shadow Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253956, {	-- Pattern: Shadow Circlet (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253920, {	-- Pattern: Shadow Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253968, {	-- Pattern: Shadow Gown (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253994, {	-- Pattern: Shadow Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253932, {	-- Pattern: Shadow Sash (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253900, {	-- Pattern: Shining Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253960, {	-- Pattern: Shining Circlet (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253924, {	-- Pattern: Shining Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253972, {	-- Pattern: Shining Gown (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253998, {	-- Pattern: Shining Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253936, {	-- Pattern: Shining Sash (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253892, {	-- Pattern: Silky Boots (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253952, {	-- Pattern: Silky Circlet (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253916, {	-- Pattern: Silky Gloves (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253964, {	-- Pattern: Silky Gown (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253990, {	-- Pattern: Silky Leggings (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(253928, {	-- Pattern: Silky Sash (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 30 } },
			}),
			i(271627, {	-- Tailoring Certification
				cost = { { "c", MERCHANTS_FAVOR, 1000 } },
			}),
		}, {	-- Friendly
			i(254028, {	-- Pattern: Black Handwraps (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254088, {	-- Pattern: Black Waistcord (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254026, {	-- Pattern: Fiery Handwraps (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254086, {	-- Pattern: Fiery Waistcord (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254024, {	-- Pattern: Frothing Handwraps (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254084, {	-- Pattern: Frothing Waistcord (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254082, {	-- Pattern: Gilded Waistcord (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254030, {	-- Pattern: Golden Handwraps (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254090, {	-- Pattern: Golden Waistcord (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254036, {	-- Pattern: Mageweave Reagent Bag (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254066, {	-- Pattern: Netherflame Cuffs (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254054, {	-- Pattern: Netherflame Shoulders (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254062, {	-- Pattern: Nethergeld Cuffs (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254050, {	-- Pattern: Nethergeld Shoulders (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254072, {	-- Pattern: Netherlight Cuffs (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254060, {	-- Pattern: Netherlight Shoulders (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254064, {	-- Pattern: Netherfroth Cuffs (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254052, {	-- Pattern: Netherfroth Shoulders (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254068, {	-- Pattern: Netherpearl Cuffs (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254056, {	-- Pattern: Netherpearl Shoulders (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254070, {	-- Pattern: Nethershine Cuffs (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254058, {	-- Pattern: Nethershine Shoulders (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254032, {	-- Pattern: Radiant Handwraps (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254092, {	-- Pattern: Radiant Waistcord (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
			i(254080, {	-- Pattern: Runecloth Reagent Bag (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 60 } },
			}),
		}, {	-- Honored
			i(254114, {	-- Pattern: Black Sandals (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(254112, {	-- Pattern: Fiery Sandals (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(254110, {	-- Pattern: Frothing Sandals (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(254108, {	-- Pattern: Gilded Sandals (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(254116, {	-- Pattern: Golden Sandals (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
			i(254118, {	-- Pattern: Radiant Sandals (RECIPE!)
				cost = { { "c", MERCHANTS_FAVOR, 90 } },
			}),
		}, {	-- Revered
		}, {	-- Exalted
		},
	});
};
