-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, {
	n(FACTIONS, sharedData({
		["sharedDescription"] = "This is a hidden reputation. It might not count towards reputation achievements.",
	},{
		-- CRIEVE NOTE: It is actually possible to max this out over several years.
		faction(469, {	-- Alliance
			["icon"] = 374217,
			["races"] = ALLIANCE_ONLY,
		}),
		faction(67, {	-- Horde
			["icon"] = 374221,
			["races"] = HORDE_ONLY,
		}),
	})),
	n(FACTIONS, sharedData({
		["sharedDescription"] = "This is a hidden reputation. It might not count towards reputation achievements.",
		["collectible"] = false,
	},{
		faction(891, {["races"] = ALLIANCE_ONLY}),			-- Alliance Forces
		faction(892, {["races"] = HORDE_ONLY}),				-- Horde Forces
		faction(1118, {["timeline"] = {ADDED_3_0_2}}),		-- Classic
		faction(980, {["timeline"] = {ADDED_2_0_1 }}),		-- The Burning Crusade
		faction(1097, {["timeline"] = {ADDED_3_0_2 }}),		-- Wrath of the Lich King
		faction(1162, {["timeline"] = {ADDED_4_0_1 }}),		-- Cataclysm
		faction(1245, {["timeline"] = {ADDED_5_0_4 }}),		-- Mists of Pandaria
		faction(1444, {["timeline"] = {ADDED_6_0_2 }}),		-- Warlords of Draenor
		faction(1834, {["timeline"] = {ADDED_7_0_3 }}),		-- Legion
		faction(2104, {["timeline"] = {ADDED_8_0_1 }}),		-- Battle for Azeroth
		faction(2414, {["timeline"] = {ADDED_9_0_1 }}),		-- Shadowlands
		faction(2506, {["timeline"] = {ADDED_10_0_0 }}),	-- Dragonflight
		faction(2569, {["timeline"] = {ADDED_11_0_2 }}),	-- The War Within
		faction(2698, {["timeline"] = {ADDED_12_0_1_LAUNCH }}),	-- Midnight
	})),
});
