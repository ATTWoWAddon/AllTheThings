-- Note!! This is needed because Blizzard keeps removing recipeID's from the itemDB
-- So this serves to preserve the ID's so they are always collectible

local Items = ItemDBConditional;
local i = function(itemID, spellID)
	Items[itemID] = { ["spellID"] = spellID };	-- NOTE: These spells are not actually 'learned' so we cannot use this data to track collection
end

i(111812, 161387);	-- Alchemy Lab, Level 1
i(111929, 161856);	-- Alchemy Lab, Level 2
i(111930, 161857);	-- Alchemy Lab, Level 3
i(111968, 162006);	-- Barn, Level 2
i(111969, 162020);	-- Barn, Level 3
i(111956, 161384);	-- Barracks, Level 1
i(111970, 162007);	-- Barracks, Level 2
i(111971, 162008);	-- Barracks, Level 3
i(111966, 162002);	-- Dwarven Bunker, Level 2
i(111967, 162003);	-- Dwarven Bunker, Level 3
i(111817, 161389);	-- Enchanter's Study, Level 1
i(111972, 162012);	-- Enchanter's Study, Level 2
i(111973, 162013);	-- Enchanter's Study, Level 3
i(109258, 156522);	-- Engineering Works, Level 1
i(109256, 156523);	-- Engineering Works, Level 2
i(109257, 156524);	-- Engineering Works, Level 3
i(111927, 161854);	-- Fishing Shack, Level 2
i(111928, 161855);	-- Fishing Shack, Level 3
i(116248, 171210);	-- Frostwall Mines, Level 2
i(116249, 171211);	-- Frostwall Mines, Level 3
i(116431, 171547);	-- Frostwall Tavern, Level 2
i(116432, 171546);	-- Frostwall Tavern, Level 3
i(111814, 161392);	-- Gem Boutique, Level 1
i(111974, 162018);	-- Gem Boutique, Level 2
i(111975, 162019);	-- Gem Boutique, Level 3
i(111980, 162034);	-- Gladiator's Sanctum, Level 2
i(111981, 162035);	-- Gladiator's Sanctum, Level 3
i(111984, 171219);	-- Gnomish Gearworks, Level 2
i(111985, 171220);	-- Gnomish Gearworks, Level 3
i(116200, 162024);	-- Goblin Workshop, Level 2
i(116201, 162025);	-- Goblin Workshop, Level 3
i(109577, 162046);	-- Herb Garden, Level 2
i(111997, 162047);	-- Herb Garden, Level 3
i(109254, 156521);	-- Lumber Mill, Level 2
i(109255, 156520);	-- Lumber Mill, Level 3
i(109576, 162044);	-- Lunarfall Excavation, Level 2
i(111996, 162045);	-- Lunarfall Excavation, Level 3
i(107694, 152461);	-- Lunarfall Inn, Level 2
i(109065, 155872);	-- Lunarfall Inn, Level 3
i(109062, 155868);	-- Mage Tower, Level 2
i(109063, 155870);	-- Mage Tower, Level 3
i(111998, 162042);	-- Menagerie, Level 2
i(111999, 162043);	-- Menagerie, Level 3
i(111957, 162030);	-- Salvage Yard, Level 1
i(111976, 162031);	-- Salvage Yard, Level 2
i(111977, 162032);	-- Salvage Yard, Level 3
i(111815, 161391);	-- Scribe's Quarters, Level 1
i(111978, 162015);	-- Scribe's Quarters, Level 2
i(111979, 162016);	-- Scribe's Quarters, Level 3
i(116196, 171216);	-- Spirit Lodge, Level 2
i(116197, 171217);	-- Spirit Lodge, Level 3
i(112002, 162049);	-- Stables, Level 2
i(112003, 162050);	-- Stables, Level 3
i(111982, 162037);	-- Storehouse, Level 2
i(111983, 162038);	-- Storehouse, Level 3
i(111816, 161390);	-- Tailoring Emporium, Level 1
i(111992, 162022);	-- Tailoring Emporium, Level 2
i(111993, 162023);	-- Tailoring Emporium, Level 3
i(111813, 161386);	-- The Forge, Level 1
i(111990, 162009);	-- The Forge, Level 2
i(111991, 162010);	-- The Forge, Level 3
i(111818, 161388);	-- The Tannery, Level 1
i(111988, 162017);	-- The Tannery, Level 2
i(111989, 162021);	-- The Tannery, Level 3
i(111986, 162040);	-- Trading Post, Level 2
i(111987, 162041);	-- Trading Post, Level 3
i(116185, 171213);	-- War Mill, Level 2
i(116186, 171214);	-- War Mill, Level 3
