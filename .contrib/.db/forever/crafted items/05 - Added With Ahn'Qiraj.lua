---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
-- CRIEVE NOTE: This was originally added with the release of Phase 5 and Ahn'Qiraj.
root(ROOTS.Craftables, {
	--[[
	prof(BLACKSMITHING, {
		n(ARMOR, {
			i(22194),	-- Black Grasp of the Destroyer
			i(22191),	-- Obsidian Mail Tunic
			i(22196),	-- Thick Obsidian Breastplate
		}),
		n(WEAPONS, {
			i(22198),	-- Jagged Obsidian Shield
		}),
	}),
	--]]
	prof(COOKING, {
		i(21023),	-- Dirge's Kickin' Chimaerok Chops
	}),
	--[[
	prof(ENCHANTING, {
		header(HEADERS.Spell, 13262, {	-- Disenchant
			i(20725, {	-- Nexus Crystal 
				["description"] = "Obtained from disenchanting all epic (purple) quality gear within the ilvl bracket 60-83.",
			}),
		}),
		--[[
		-- Enchanters can't enchant scrolls in Forever
		-- ... or can they?
		i(),	-- Enchant Cloak - Dodge
		i(),	-- Enchant Cloak - Subtlety
		i(),	-- Enchant Cloak - Stealth
		i(),	-- Enchant Gloves - Fire Power
		i(),	-- Enchant Gloves - Frost Power
		i(),	-- Enchant Gloves - Healing Power
		i(),	-- Enchant Gloves - Threat
		i(),	-- Enchant Gloves - Superior Agility
		i(),	-- Enchant Gloves - Shadow Power
	}),
	--]]
	prof(MINING, {
		spell(2575, {	-- Mining
			i(22203, {	-- Large Obsidian Shard
				["maps_disp"] = {
					MAP.RUINS_OF_AHNQIRAJ,
					MAP.TEMPLE_OF_AHNQIRAJ,
					MAP.SILITHUS,
				},
				["providers"] = {
					{ "o", 181069 },	-- Large Obsidian Chunk
					{ "o", 181068 },	-- Small Obsidian Chunk
				},
			}),
			i(22202, {	-- Small Obsidian Shard
				["maps_disp"] = {
					MAP.RUINS_OF_AHNQIRAJ,
					MAP.TEMPLE_OF_AHNQIRAJ,
					MAP.SILITHUS,
				},
				["providers"] = {
					{ "o", 181069 },	-- Large Obsidian Chunk
					{ "o", 181068 },	-- Small Obsidian Chunk
				},
			}),
		}),
	}),
	prof(POISONS, {
		i(20844),	-- Deadly Poison V
	}),
});