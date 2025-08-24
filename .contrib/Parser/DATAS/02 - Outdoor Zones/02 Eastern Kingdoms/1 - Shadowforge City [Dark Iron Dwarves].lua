---------------------------------------------------
--          Z O N E S       M O D U L E          --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(1186, {	-- Blackrock Depths: Shadowforge City
		["lore"] = "Known for their fiery tempers and fierce determination, Dark Iron dwarves have a turbulent history with the other clans. A failed coup in Ironforge ignited the War of the Three Hammers, and many of the Dark Iron once fought in the service of Ragnaros the Firelord. Though one faction of the dwarves is pledged to Queen-Regent Moira Thaurissan, others refuse to stand alongside their kin. The Alliance seeks a united Dark Iron clan to harness the power of azerite and aid their struggle against the Horde",
		["icon"] = 1786406,
		["timeline"] = { ADDED_8_0_1 },
		["races"] = { DARKIRON },
		["isRaid"] = true,
		["groups"] = {
			header(HEADERS.NPC, 143925, {	-- Dark Iron Mole Machine
				["icon"] = 1786409,
				["coord"] = { 61.44, 24.35, 1186 },	-- Shadowforge City
				["groups"] = {
					expansion(EXPANSION.CLASSIC, {
						molemachine(53591, 537, {	-- Fire Plume Ridge
							["coord"] = { 52.89, 55.76, UNGORO_CRATER },
						}),
						molemachine(53600, 1702, {	-- Honor's Stand
							["coord"] = { 39.11, 09.31, SOUTHERN_BARRENS },
						}),
						molemachine(53585, 348, {	-- Aerie Peak
							["coord"] = { 13.52, 46.81, THE_HINTERLANDS },
						}),
						molemachine(53587, 1584, {	-- Blackrock Depths
							["coord"] = { 33.4, 24.7, BLACKROCK_MOUNTAIN_LEVEL3 },
						}),
						molemachine(53594, 1438, {	-- Nethergarde Keep
							["coord"] = { 61.82, 12.74, BLASTED_LANDS },
						}),
					}),
					expansion(EXPANSION.TBC, {
						molemachine(53592, 3538, {	-- Honor Hold [Outlands]
							["coord"] = { 53.15, 64.89, HELLFIRE_PENINSULA },
						}),
						molemachine(53597, 3866, {	-- Skald [Outlands]
							["coord"] = { 72.41, 17.65, BLADES_EDGE_MOUNTAINS },
						}),
						molemachine(53599, 3746, {	-- The Hand of Gul'dan [Outlands]
							["coord"] = { 50.77, 35.28, SHADOWMOON_VALLEY },
						}),
					}),
					expansion(EXPANSION.WRATH, {
						molemachine(53586, 4658, {	-- Argent Tournament Grounds
							["coord"] = { 76.97, 18.68, ICECROWN },
						}),
						molemachine(53596, 4168, {	-- Ruby Dragonshrine
							["coord"] = { 45.34, 49.92, DRAGONBLIGHT },
						}),
					}),
					expansion(EXPANSION.CATA, {
						molemachine(53601, 5039, {	-- Sulfuron Spire
							["coord"] = { 57.16, 77.09, MOUNT_HYJAL },
						}),
					}),
					expansion(EXPANSION.MOP, {
						molemachine(53595, 6085, {	-- One Keg
							["coord"] = { 57.68, 62.81, KUN_LAI_SUMMIT },
						}),
						molemachine(53598, 6001, {	-- Stormstout Brewery
							["coord"] = { 31.51, 73.57, VALLEY_OF_THE_FOUR_WINDS },
						}),
					}),
					expansion(EXPANSION.WOD, {
						molemachine(53590, 7139, {	-- Elemental Plateau
							["coord"] = { 65.74, 08.24, DRAENOR_NAGRAND },
						}),
						molemachine(53588, 6892, {	-- The Pit
							["coord"] = { 46.69, 38.75, GORGROND },
						}),
					}),
					expansion(EXPANSION.LEGION, {
						molemachine(53589, 8648, {	-- Aalgen Point
							["coord"] = { 71.68, 48.01, BROKEN_SHORE },
						}),
						molemachine(53593, 7806, {	-- Neltharion's Vault
							["coord"] = { 44.66, 72.87, HIGHMOUNTAIN },
						}),
					}),
					expansion(EXPANSION.BFA, sharedDataSelf({ ["timeline"] = ADDED_11_0_5 }, {
						molemachine(80102, 9623, {	-- Tidebreak Summit
							["coord"] = { 64.21, 29.44, STORMSONG_VALLEY },
						}),
						molemachine(80101, nil, {	-- Wailing Tideways (has no known AreaID?)
							["name"] = "Wailing Tideways",
							["coord"] = { 88.22, 71.53, TIRAGARDE_SOUND },
						}),
						molemachine(80100, nil, {	-- Xibala Incursion (has no known AreaID?)
							["name"] = "Xibala Incursion",
							["coord"] = { 38.24, 72.38, ZULDAZAR },
						}),
						molemachine(80099, nil, {	-- Zalamar Invasion (has no known AreaID?)
							["name"] = "Zalamar Invasion",
							["coord"] = { 34.34, 45.15, NAZMIR },
						}),
					})),
					expansion(EXPANSION.SL, sharedDataSelf({ ["timeline"] = ADDED_11_0_5 }, {
						molemachine(80104, 11438, {	-- Scorched Crypt
							["coord"] = { 19.94, 38.81, REVENDRETH },
						}),
						molemachine(80106, 13455, {	-- Soryn's Meadow
							["coord"] = { 66.47, 50.55, ARDENWEALD },
						}),
						molemachine(80105, 11412, {	-- The Eternal Forge
							["coord"] = { 51.75, 13.14, BASTION },
						}),
						molemachine(80103, 13406, {	-- Valley of a Thousand Legs
							["coord"] = { 53.49, 59.79, MALDRAXXUS },
						}),
					})),
					expansion(EXPANSION.DF, sharedDataSelf({ ["timeline"] = ADDED_11_0_5 }, {
						molemachine(80107, 14012, {	-- The Slagmire
							["coord"] = { 32.36, 54.90, THE_WAKING_SHORES },
						}),
						molemachine(80108, 14017, {	-- Vakthros Summit
							["coord"] = { 80.09, 38.96, THE_AZURE_SPAN },
						}),
						molemachine(80109, 14655, {	-- Obsidian Rest
							["coord"] = { 52.73, 27.67, ZARALEK_CAVERN },
						}),
					})),
				},
			}),
		},
	}),
}))
