---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
-- CRIEVE NOTE: This was originally added with Phase 3 just after Blackwing Lair was released.
root(ROOTS.Craftables, {
	--[[
	prof(BLACKSMITHING, {
		prof(ARMORSMITH, {
			i(19164),	-- Dark Iron Gauntlets
			i(19148),	-- Dark Iron Helm
			i(12618),	-- Enchanted Thorium Breastplate
			i(12620),	-- Enchanted Thorium Helm
			i(12619),	-- Enchanted Thorium Leggings
		}),
		prof(WEAPONSMITH, {
			prof(MASTER_AXESMITH, {
				i(19169),	-- Nightfall
			}),
			prof(MASTER_HAMMERSMITH, {
				i(19170),	-- Ebon Hand
			}),
			prof(MASTER_SWORDSMITH, {
				i(19168),	-- Blackguard
			}),
			n(WEAPONS, {
				i(19166),	-- Black Amnesty
				i(19167),	-- Blackfury
			}),
		}),
		n(ARMOR, {
			i(19051),	-- Girdle of the Dawn
			i(19057),	-- Gloves of the Dawn
			i(19043),	-- Heavy Timbermaw Belt
			i(19048),	-- Heavy Timbermaw Boots
		}),
	}),
	--]]
	prof(COOKING, {
		i(20452),	-- Smoked Desert Dumplings
	}),
	prof(FIRST_AID, {
		i(19440),	-- Powerful Anti-Venom
	}),
	prof(LEATHERWORKING, {
		prof(10656, {	-- Dragonscale Leatherworking
			i(19157),	-- Chromatic Gauntlets
		}),
		prof(10658, {	-- Elemental Leatherworking
			i(19163),	-- Molten Belt
		}),
		prof(10660, {	-- Tribal Leatherworking
			i(19162),	-- Corehound Belt
		}),
		n(ARMOR, {
			filter(LEATHER, {
				i(19052),	-- Dawn Treaders
				i(19058),	-- Golden Mantle of the Dawn
				i(19149),	-- Lava Belt
				i(19044),	-- Might of the Timbermaw
				i(19049),	-- Timbermaw Brawlers
			}),
		}),
	}),
	prof(TAILORING, {
		n(ARMOR, {
			i(19056),	-- Argent Boots
			i(19059),	-- Argent Shoulders
			i(19165),	-- Flarecore Leggings
			i(19156),	-- Flarecore Robe
			i(19050),	-- Mantle of the Timbermaw
			i(20539),	-- Runed Stygian Belt
			i(20537),	-- Runed Stygian Boots
			i(20538),	-- Runed Stygian Leggings
			i(19047),	-- Wisdom of the Timbermaw
		}),
	}),
});
