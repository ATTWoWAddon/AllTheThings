-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
profession(TAILORING, {
	n(ACHIEVEMENTS, {
		ach(62030, {	-- Artisan Tailor
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62029, {	-- Expert Tailor
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
		ach(62028, {	-- Journeyman Tailor
			timeline = { TIMELINE.ADDED_1_60_1 },
		}),
	}),
	n(MOONWELL, {
		coords = {
			{ 38.7, 85.2, MAP.DARNASSUS },	-- Temple of the Moon
			{ 35.6, 66.0, MAP.STORMWIND_CITY },	-- The Park
			{ 60.0, 72.0, MAP.ASHENVALE },	-- Moonwell of Cleansing
		},
		OnTooltip = FUNCTION_TEMPLATES.GenerateOnTooltipSpellCooldownRemaining(18560),	-- Mooncloth
		sym = { { "select", "itemID", 14342 } },	-- Mooncloth
	}),
	header(HEADERS.SpellWithRank, 3908, {	-- Tailoring (Apprentice)
		symselector = SymSelector.TAILORING_APPRENTICE,
		groups = {
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

		},
	}),
	header(HEADERS.SpellWithRank, 3909, {	-- Tailoring (Journeyman)
		symselector = SymSelector.TAILORING_JOURNEYMAN,
		groups = {
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
		},
	}),
	header(HEADERS.SpellWithRank, 3910, {	-- Tailoring (Expert)
		symselector = SymSelector.TAILORING_EXPERT,
		groups = {
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
		},
	}),
	header(HEADERS.SpellWithRank, 12180, {	-- Tailoring (Artisan)
		symselector = SymSelector.TAILORING_ARTISAN,
		groups = {
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
		},
	}),
	n(TRAINER_SHADOWEAVE, {
		symselector = SymSelector.TAILORING_SHADOWEAVE,
		groups = {
			r(12082),	-- Shadoweave Boots
			r(12071),	-- Shadoweave Gloves
			r(12052),	-- Shadoweave Pants
			r(12055),	-- Shadoweave Robe
			r(12076),	-- Shadoweave Shoulders
		},
	}),
});
