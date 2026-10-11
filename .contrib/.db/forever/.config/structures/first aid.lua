---------------
-- FIRST AID --
---------------
FIRST_AID_RECIPES = {
	APPRENTICE_JOURNEYMAN = {
		r(3273, {	-- First Aid (Apprentice)
			["lvl"] = 5,
			["rank"] = 1,
		}),
		r(3274, {	-- First Aid (Journeyman)
			["lvl"] = 10,
			["rank"] = 2,
		}),
		r(3275),	-- Linen Bandage
		r(3276),	-- Heavy Linen Bandage
		r(1244431),	-- Minor Healing Potion
		r(7934),	-- Anti-Venom
		r(3277),	-- Wool Bandage
		r(1244432),	-- Lesser Healing Potion
		r(1259342),	-- Simple Poultice
		r(3278),	-- Heavy Wool Bandage
		r(1259347),	-- Woolen Tourniquet
		r(1244433),	-- Healing Potion
		r(7928),	-- Silk Bandage
	};
	EXPERT = {
		i(16084, {	-- Expert First Aid - Under Wraps (RECIPE!)
			["lvl"] = 20,
			["rank"] = 3,
		}),
		i(16112),	-- Manual: Heavy Silk Bandage (RECIPE!)
		i(16113),	-- Manual: Mageweave Bandage (RECIPE!)
	};
	ARTISAN = {
		r(10841),	-- Heavy Mageweave Bandage
		r(18629),	-- Runecloth Bandage
		r(18630),	-- Heavy Runecloth Bandage
	};
};
