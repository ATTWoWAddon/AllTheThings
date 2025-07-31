----------------------------------------------
--   P E T    B A T T L E    M O D U L E    --
----------------------------------------------
root(ROOTS.PetBattles, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	n(REWARDS, bubbleDown({ ["timeline"] = { ADDED_5_1_0 } }, {	-- These can drop very rarely from none trainer pet battle
		i(92679),	-- Flawless Aquatic Battle-Stone
		i(92741),	-- Flawless Battle-Stone
		i(92675),	-- Flawless Beast Battle-Stone
		i(92676),	-- Flawless Critter Battle-Stone
		i(92665),	-- Flawless Elemental Battle-Stone
		i(92677),	-- Flawless Flying Battle-Stone
		i(92682),	-- Flawless Humanoid Battle-Stone
		i(92678),	-- Flawless Magic Battle-Stone
		i(92680),	-- Flawless Mechanical Battle-Stone
		i(92681),	-- Flawless Undead Battle-Stone
	})),
	petbattle(n(REWARDS, {
		pvp(i(165944, {	-- A Shady Message [A] (CI!)
			["description"] = "Rewarded from winning PvP Pet Battles",
			["races"] = ALLIANCE_ONLY,
			["timeline"] = { ADDED_8_1_0 },
		})),
		pvp(i(166242, {	-- A Shady Message [H] (CI!)
			["description"] = "Rewarded from winning PvP Pet Battles",
			["races"] = HORDE_ONLY,
			["timeline"] = { ADDED_8_1_0 },
		})),
		i(89139),	-- Chain Pet Leash
		i(44820),	-- Red Ribbon Pet Leash
		i(37460),	-- Rope Pet Leash
		container(89125, {	-- Sack of Pet Supplies
			i(89587),	-- Porcupette (PET!)
			i(89139),	-- Chain Pet Leash
			i(44820),	-- Red Ribbon Pet Leash
			i(37460),	-- Rope Pet Leash
			-- #if AFTER 5.1.0
			i(92679),	-- Flawless Aquatic Battle-Stone
			i(92675),	-- Flawless Beast Battle-Stone
			i(92676),	-- Flawless Critter Battle-Stone
			i(92665),	-- Flawless Elemental Battle-Stone
			i(92677),	-- Flawless Flying Battle-Stone
			i(92682),	-- Flawless Humanoid Battle-Stone
			i(92678),	-- Flawless Magic Battle-Stone
			i(92680),	-- Flawless Mechanical Battle-Stone
			i(92681),	-- Flawless Undead Battle-Stone
			-- #endif
		}),

		-- This itemID is for the bugged Caged Pet tooltip.
		-- Keep it here to prevent NYI false reports whenever someone hovers over the tooltip.
		i(82800, {	-- Pet Cage (PET!) [NYI]
			["description"] = "|cffff0000This item serves as a placeholder for a Caged Pet.\nIt appears in chat tooltips when caging a pet, or as a tooltip when viewing pets in the guild bank.|r",
			["collectible"] = false,
		}),
	})),
}));
