-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["customCollect"] = "SL_COV_VEN" }, {
	n(VENTHYR, {
		n(SANCTUM_UPGRADES, {
			["icon"] = 3641397,
			["g"] = {
				n(COMMAND_TABLE, {
					n(TIER_ONE, {
						["icon"] = 3675495,
						["g"] = {
							n(FOLLOWERS, bubbleDownSelf({
								["collectible"] = false,
								["u"] = UNLEARNABLE,	-- Temporary troops
							}, {
								follower(1238),	-- Venthyr Nightblade
								follower(1246),	-- Venthyr Nightblade
								follower(1247),	-- Venthyr Nightblade
								follower(1322),	-- Venthyr Nightblade
								follower(1239),	-- Venthyr Soulcaster
								follower(1248),	-- Venthyr Soulcaster
								follower(1249),	-- Venthyr Soulcaster
								follower(1323),	-- Venthyr Soulcaster
							})),
							n(QUESTS, {
								q(59319, {	-- Advancing Our Efforts
									["sourceQuests"] = { 63064 },	-- Sanctum Upgrade: Adventures Scouting Map
									["provider"] = { "n", 164741 },	-- Tactician Sakaa
									["coord"] = { 57.8, 58.6, SINFALL_REACHES },
								}),
								q(63064, {	-- Sanctum Upgrade: Adventures Scouting Map
									["provider"] = { "n", 172605 },	-- Foreman Flatfinger
									["coord"] = { 55.4, 27.0, SINFALL_REACHES },
								}),
								q(61792, {	-- Adventurer: Bogdan
									["description"] = "Requires Renown 38.",
									["provider"] = { "n", 164741 },	-- Tactician Sakaa
									["coord"] = { 57.8, 58.6, SINFALL_REACHES },
									["g"] = {
										follower(1253),	-- Bogdan
									},
								}),
								q(64467, {	-- Adventurer: Chachi the Artiste
									["description"] = "Requires Renown 44.",
									["provider"] = { "n", 164741 },	-- Tactician Sakaa
									["coord"] = { 57.8, 58.6, SINFALL_REACHES },
									["g"] = {
										follower(1345),	-- Chachi the Artists
									},
								}),
								q(61789, {	-- Adventurer: Lost Sybille
									["description"] = "Requires Renown 27.",
									["provider"] = { "n", 164741 },	-- Tactician Sakaa
									["coord"] = { 57.8, 58.6, SINFALL_REACHES },
									["g"] = {
										follower(1254),	-- Lost Sybille
									},
								}),
								q(64469, {	-- Adventurer: Lucia
									["description"] = "Requires Renown 71.",
									["provider"] = { "n", 164741 },	-- Tactician Sakaa
									["coord"] = { 57.8, 58.6, SINFALL_REACHES },
									["g"] = {
										follower(1347),	-- Lucia
									},
								}),
								q(64468, {	-- Adventurer: Madame Iza
									["description"] = "Requires Renown 62.",
									["provider"] = { "n", 164741 },	-- Tactician Sakaa
									["coord"] = { 57.8, 58.6, SINFALL_REACHES },
									["g"] = {
										follower(1346),	-- Madame Iza
									},
								}),
								q(61729, {	-- Adventurer: Rahel
									["sourceQuests"] = { 63064 },	-- Sanctum Upgrade: Adventures Scouting Map
									["description"] = "Requires Renown 4.",
									["provider"] = { "n", 164741 },	-- Tactician Sakaa
									["coord"] = { 57.8, 58.6, SINFALL_REACHES },
									["g"] = {
										follower(1250),	-- Rahel
									},
								}),
								q(61786, {	-- Adventurer: Stonehead
								--	TODO: does this also require 58327, "Snacks for Stonehead"?  (quest text references you being friends with him)
									["sourceQuests"] = { 58444 },	-- Return to Sinfall
									["description"] = "Requires Renown 12.",
									["provider"] = { "n", 164741 },	-- Tactician Sakaa
									["coord"] = { 57.8, 58.6, SINFALL_REACHES },
									["g"] = {
										follower(1251),	-- Stonehead
									},
								}),
								q(61788, {	-- Adventurer: Simone
									["description"] = "Requires Renown 17.",
									["provider"] = { "n", 164741 },	-- Tactician Sakaa
									["coord"] = { 57.8, 58.6, SINFALL_REACHES },
									["g"] = {
										follower(1252),	-- Simone
									},
								}),
								q(61790, {	-- Adventurer: Vulca
									["description"] = "Requires Renown 33.",
									["provider"] = { "n", 164741 },	-- Tactician Sakaa
									["coord"] = { 57.8, 58.6, SINFALL_REACHES },
									["g"] = {
										follower(1255),	-- Vulca
									},
								}),
							}),
							n(REWARDS, {
								currency(1828),	-- Soul Ash
							}),
						},
					}),
				}),
			},
		}),
	}),
})));