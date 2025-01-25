-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.BFA, {
	n(ISLAND_EXPEDITIONS, {
		["description"] = "Island expeditions are a 3-player scenario.  Each faction will sail across the waters where they will harvest and steal any Azerite they can find from these islands.  Goblins and gnomes have been able to use their new technology to find islands which contain possible amounts of Azerite and will be providing maps for each of their respective factions.  Ships and queueing will take place in Dazar'alor for Horde and Boralus for Alliance. These are unlocked Account-Wide once you have finished the introduction questline on one character.",
		["crs"] = {
			143968,	--  Expedition Map [Alliance Side]
			143967,	--  Expedition Map [Horde Side]
		},
		["maps"] = {
			1501,	-- Crestfall
			1036,	-- Dread Chain
			1336,	-- Havenswood
			1337,	-- Jorundall
			1035,	-- Molten Cray
			1033,	-- Rotting Mire
			981,	-- Un'gol Ruins
			1032,	-- Skittering Hollow
			1502,	-- Snowblossom Village
			1034,	-- Verdant Wilds
			1037,	-- Whispering Reef
		},
	}),
}));
