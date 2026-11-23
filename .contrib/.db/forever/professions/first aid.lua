-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
profession(FIRST_AID, {
	header(HEADERS.SpellWithRank, 3273, {	-- First Aid (Apprentice)
		symselector = SymSelector.FIRST_AID_APPRENTICE,
		groups = {
			r(3273, {	-- First Aid (Apprentice)
				lvl = 5,
				rank = 1,
			}),
			r(3275),	-- Linen Bandage
			r(3276),	-- Heavy Linen Bandage
			r(1244431),	-- Minor Healing Potion
		},
	}),
	header(HEADERS.SpellWithRank, 3274, {	-- First Aid (Journeyman)
		symselector = SymSelector.FIRST_AID_JOURNEYMAN,
		groups = {
			r(3274, {	-- First Aid (Journeyman)
				lvl = 10,
				rank = 2,
			}),
			r(7934),	-- Anti-Venom
			r(3277),	-- Wool Bandage
			r(1244432),	-- Lesser Healing Potion
			r(1259342),	-- Simple Poultice
			r(3278),	-- Heavy Wool Bandage
			r(1259347),	-- Woolen Tourniquet
			r(1244433),	-- Healing Potion
		},
	}),
	header(HEADERS.SpellWithRank, 7924, {	-- First Aid (Expert)
		symselector = SymSelector.FIRST_AID_EXPERT,
		groups = {
			r(7928),	-- Silk Bandage
		},
	}),
	header(HEADERS.SpellWithRank, 10846, {	-- First Aid (Artisan)
		symselector = SymSelector.FIRST_AID_ARTISAN,
		groups = {
			r(10841),	-- Heavy Mageweave Bandage
			r(18629),	-- Runecloth Bandage
			r(18630),	-- Heavy Runecloth Bandage
		},
	}),
});
