-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.BFA, {
	n(WAR_EFFORT, {
		n(FOLLOWERS, bubbleDownSelf({
			["collectible"] = false,
			["u"] = UNLEARNABLE,	-- Temporary troops
		}, {
			follower(1063),	-- Alliance:Dwarven Riflemen \\ Horde:Tauren Earthshakers
			follower(1064),	-- Alliance:Gnomeregan Mechano-Tanks \\ Horde:Forsaken Dreadguards
			follower(1066),	-- Alliance:Darnassian Sentinels \\ Horde:Darkspear Shaman
			follower(1067),	-- Alliance:7th Legion Shocktroopers \\ Horde:Shattered Hand Specialist
			follower(1070),	-- Alliance:Exodar Peacekeeper \\ Horde:Silvermoon Sorceress
			follower(1071),	-- Alliance:Bloodfang Stalkers \\ Horde:Goblin Sappers
			follower(1073),	-- Alliance:Tushui Monks \\ Horde:Huojin Monks
			follower(1177),	-- Alliance:Lightforged Dragoons \\ Horde:Nightborne Warpcasters
			follower(1178),	-- Alliance:Veiled Riftblades \\ Horde:Highmountain Warbraves
			follower(1179),	-- Alliance:Dark Iron Shadowcasters \\ Horde:Mag'har Outriders
			follower(1184),	-- Alliance:Kul Tiran Marines \\ Horde:Zandalari Wingriders
			follower(1185),	-- Alliance:Mechagnome Spidercrawlers \\ Horde:Vulpera Sharpshooters
		})),
	}),
}));