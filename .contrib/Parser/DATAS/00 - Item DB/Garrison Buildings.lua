local Items = ItemDBConditional;
local i = function(itemID, buildingID)
	Items[itemID] = { ["buildingID"] = buildingID };
end


-- SMALL BUILDINGS --
-- Alchemy Lab
i(111812, 76);	-- Level 1
i(111929, 119);	-- Level 2
i(111930, 120);	-- Level 3

-- Enchanter's Study
i(111817, 93);	-- Level 1
i(111972, 125);	-- Level 2
i(111973, 126);	-- Level 3

-- Engineering Works
i(109258, 91);	-- Level 1
i(109256, 123);	-- Level 2
i(109257, 124);	-- Level 3

-- Gem Boutique
i(111814, 96);	-- Level 1
i(111974, 131);	-- Level 2
i(111975, 132);	-- Level 3

-- Salvage Yard
i(111957, 52);	-- Level 1
i(111976, 140);	-- Level 2
i(111977, 141);	-- Level 3

-- Scribe's Quarters
i(111815, 95);	-- Level 1
i(111978, 129);	-- Level 2
i(111979, 130);	-- Level 3

-- Storehouse
i(111982, 142);	-- Level 2
i(111983, 143);	-- Level 3

-- Tailoring Emporium
i(111816, 94);	-- Level 1
i(111992, 127);	-- Level 2
i(111993, 128);	-- Level 3

-- The Forge
i(111813, 60);	-- Level 1
i(111990, 117);	-- Level 2
i(111991, 118);	-- Level 3

-- The Tannery
i(111818, 90);	-- Level 1
i(111988, 121);	-- Level 2
i(111989, 122);	-- Level 3


-- MEDIUM BUILDINGS --

-- Barn
i(111968, 25);	-- Level 2
i(111969, 133);	-- Level 3

-- Gladiator's Sanctum
i(111980, 160);	-- Level 2
i(111981, 161);	-- Level 3

-- Lumber Mill
i(109254, 41);	-- Level 2
i(109255, 138);	-- Level 3

-- Lunarfall Inn / Frostwall Tavern
i(107694, 35);	-- Level 2, Alliance
i(116431, 35);	-- Level 2, Horde
i(109065, 36);	-- Level 3, Alliance
i(116432, 36);	-- Level 3, Horde

-- Trading Post
i(111986, 144);	-- Level 2
i(111987, 145);	-- Level 3


-- LARGE BUILDINGS --

-- Barracks
i(111956, 26);	-- Level 1
i(111970, 27);	-- Level 2
i(111971, 28);	-- Level 3

-- Dwarven Bunker / War Mill
i(111966, 9);	-- Level 2, Alliance
i(116185, 9);	-- Level 2, Horde
i(111967, 10);	-- Level 3, Alliance
i(116186, 10);	-- Level 3, Horde

-- Gnomish Gearworks / Goblin Workshop
i(111984, 163);	-- Level 2, Alliance
i(116200, 163);	-- Level 2, Horde
i(111985, 164);	-- Level 3, Alliance
i(116201, 164);	-- Level 3, Horde

-- Mage Tower / Spirit Lodge
i(109062, 38);	-- Level 2, Alliance
i(116196, 38);	-- Level 2, Horde
i(109063, 39);	-- Level 3, Alliance
i(116197, 39);	-- Level 3, Horde

-- Stables
i(112002, 66);	-- Level 2
i(112003, 67);	-- Level 3


-- UNCHANGEABLE BUILDINGS --

-- Fishing Shack
i(109578, 64);	-- Level 1
i(111927, 134);	-- Level 2
i(111928, 135);	-- Level 3

-- Herb Garden
i(109577, 136);	-- Level 2
i(111997, 137);	-- Level 3

-- Lunarfall Excavation / Frostwall Mines
i(109576, 62);	-- Level 2, Alliance
i(116248, 62);	-- Level 2, Horde
i(111996, 63);	-- Level 3, Alliance
i(116249, 63);	-- Level 3, Horde

-- Pet Menagerie
i(111998, 167);	-- Level 2
i(111999, 168);	-- Level 3
