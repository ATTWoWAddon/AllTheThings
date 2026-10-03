---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
-- CRIEVE NOTE: This was originally added with the release of Phase 6 and Naxxramas.
root(ROOTS.Craftables, {
	--[[
	prof(BLACKSMITHING, {
		n(ARMOR, {
			i(22671),	-- Icebane Bracers
			i(22669),	-- Icebane Breastplate
			i(22670),	-- Icebane Gauntlets
		}),
	}),
	--]]
	prof(LEATHERWORKING, {
		n(ARMOR, {
			filter(LEATHER, {
				i(22663),	-- Polar Bracers
				i(22662),	-- Polar Gloves
				i(22661),	-- Polar Tunic
			}),
			filter(MAIL, {
				i(22665),	-- Icy Scale Bracers
				i(22664),	-- Icy Scale Breastplate
				i(22666),	-- Icy Scale Gauntlets
			}),
		}),
	}),
	prof(TAILORING, {
		n(ARMOR, {
			i(22658),	-- Glacial Cloak
			i(22654),	-- Glacial Gloves
			i(22652),	-- Glacial Vest
			i(22655),	-- Glacial Wrists
		}),
	}),
});
