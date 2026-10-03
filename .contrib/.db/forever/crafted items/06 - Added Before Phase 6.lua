---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
-- CRIEVE NOTE: This was originally added just before Phase 6 and the Scourge Invasion began.
root(ROOTS.Craftables, {
	--[[
	prof(BLACKSMITHING, {
		n(ARMOR, {
			i(22764),	-- Ironvine Belt
			i(22762),	-- Ironvine Breastplate
			i(22763),	-- Ironvine Gloves
		}),
	}),
	--]]
	prof(LEATHERWORKING, {
		n(ARMOR, {
			filter(LEATHER, {
				i(22761),	-- Bramblewood Belt
				i(22760),	-- Bramblewood Boots
				i(22759),	-- Bramblewood Helm
			}),
		}),
	}),
	prof(TAILORING, {
		n(ARMOR, {
			i(22660),	-- Gaea's Embrace
			i(22757),	-- Sylvan Crown
			i(22758),	-- Sylvan Shoulders
			i(22756),	-- Sylvan Vest
		}),
	}),
});
