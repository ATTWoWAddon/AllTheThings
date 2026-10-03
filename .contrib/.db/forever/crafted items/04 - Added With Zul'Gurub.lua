---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
-- CRIEVE NOTE: This was originally added with the release of Phase 4 and Zul'Gurub.
root(ROOTS.Craftables, {
	--[[
	prof(ALCHEMY, {
		filter(CONSUMABLES, {
			i(20002),	-- Greater Dreamless Sleep Potion
			i(20007),	-- Mageblood Elixir
			i(20008),	-- Living Action Potion
			i(20004),	-- Major Troll's Blood Elixir
		}),
	}),
	prof(BLACKSMITHING, {
		n(ARMOR, {
			i(19690),	-- Bloodsoul Breastplate
			i(19692),	-- Bloodsoul Gauntlets
			i(19691),	-- Bloodsoul Shoulders
			i(19693),	-- Darksoul Breastplate
			i(19694),	-- Darksoul Leggings
			i(19695),	-- Darksoul Shoulders
		}),
	}),
	prof(ENCHANTING, {
		filter(MISC, {
			i(20748),	-- Brilliant Mana Oil
			i(20749),	-- Brilliant Wizard Oil
		}),
	}),
	--]]
	prof(ENGINEERING, {
		i(19999),	-- Bloodvine Goggles
		i(19998),	-- Bloodvine Lens
	}),
	prof(LEATHERWORKING, {
		n(ARMOR, {
			filter(LEATHER, {
				i(19688),	-- Blood Tiger Breastplate
				i(19689),	-- Blood Tiger Shoulders
				i(19687),	-- Primal Batskin Bracers
				i(19686),	-- Primal Batskin Gloves
				i(19685),	-- Primal Batskin Jerkin
			}),
		}),
	}),
	prof(TAILORING, {
		n(ARMOR, {
			i(19684),	-- Bloodvine Boots
			i(19683),	-- Bloodvine Leggings
			i(19682),	-- Bloodvine Vest
		}),
	}),
});
