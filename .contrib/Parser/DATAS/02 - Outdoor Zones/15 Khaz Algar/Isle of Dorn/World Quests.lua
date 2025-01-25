---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(ISLE_OF_DORN, {
		n(WORLD_QUESTS, {
			["sourceQuests"] = {
				79197,	-- Surface Bound
				TWW_ACCOUNT_CAMPAIGN_QUEST,
			},
			["g"] = bubbleDownFiltered({ ["isWorldQuest"] = true, },FILTERFUNC_questID,{
				petbattle(q(82292, {	-- Rock Collector
					["provider"] = { "n", 223446 },	-- Collector Dyna
					["coord"] = { 34.9, 85.6, ISLE_OF_DORN },
				})),
				petbattle(q(82291, {	-- Robot Rumble
					["provider"] = { "n", 223407 },	-- Awakened Custodian
					["coord"] = { 48.2, 32.0, ISLE_OF_DORN },
				})),
				pvp(q(80394, {	-- Along for the Ride
					["coord"] = { 61.6, 21.4, ISLE_OF_DORN },
				})),
				q(82234, {	-- A Floral Flair for Every Ram
					["coord"] = { 40.2, 80.4, ISLE_OF_DORN },
				}),
				q(82470, {	-- Arcane Riddles
					["coord"] = { 30.8, 52.2, ISLE_OF_DORN },
					["g"] = {
						i(218454),	-- Titan Artifact (QI!)
					},
				}),
				q(81465, {	-- Artifacts Galore
					["coord"] = { 78.4, 26.7, ISLE_OF_DORN },
					["g"] = {
						o(437195, {	-- Titan Artifacts
							i(218454),	-- Titan Artifact (QI!)
						}),
					},
				}),
				q(82448, {	-- Book It to the Library
					["coord"] = { 25.5, 59.1, ISLE_OF_DORN },
				}),
				q(82456, {	-- Chew On This
					["coord"] = { 52.1, 55.8, ISLE_OF_DORN },
				}),
				q(81854, {	-- Coreway Maintenance Request
					["coord"] = { 31.6, 59.3, DORNOGAL },
				}),
				q(82658, {	-- Drop and Go
					--["coord"] = { 45.2, 65.0, ISLE_OF_DORN },	-- could be wrong, all Isle of Dorn missing quest zone highlights
					["g"] = {
						o(449528, {	-- Opal-Mining Tools
							i(224074),	-- Opal-Mining Tools (QI!)
						})
					}
				}),
				q(80395, {	-- Elemental Excavation
					["coord"] = { 74.8, 55.1, ISLE_OF_DORN },
					["g"] = {
						i(218124),	-- Element Extractor (QI!)
					}
				}),
				q(82225, {	-- Excavation Extravaganza
					["coord"] = { 61.9, 71.2, ISLE_OF_DORN },
				}),
				q(81639, {	-- Honey Thieving Nerubians
					["coord"] = { 78.9, 37.9, ISLE_OF_DORN },
					["g"] = {
						o(439463, {	-- Spilled Fire honey
							["coords"] = {
								{ 75.0, 36.5, ISLE_OF_DORN },
								{ 75.1, 38.1, ISLE_OF_DORN },
								{ 75.7, 37.7, ISLE_OF_DORN },
								{ 76.1, 36.3, ISLE_OF_DORN },
								{ 76.4, 37.1, ISLE_OF_DORN },
							},
							["g"] = { i(211811) },	-- Small Glob of Fire Honey (QI!)
						}),
					},
				}),
				q(81710, {	-- Mead for the Catalog
					["coord"] = { 77.5, 48.5, ISLE_OF_DORN },
				}),
				q(82455, {	-- No More Bread
					["coord"] = { 40, 63.6, ISLE_OF_DORN },
				}),
				q(82451, {	-- Preserving Plush Pals
					["coord"] = { 32.5, 53.3, ISLE_OF_DORN },
					["g"] = {
						i(223952),	-- Singed Plush (QI!)
					},
				}),
				q(81512, {	-- Props and Incense
					["coord"] = { 66.2, 58.5, ISLE_OF_DORN },
					["g"] = {
						i(218740),	-- Ashenfold (QI!)
						i(218739),	-- Pristine Horn (QI!)
					},
				}),
				q(82237, {	-- Rising the Falls
					["coord"] = { 56.8, 42.5, ISLE_OF_DORN },
				}),
				q(80295, {	-- Rocks, Water and Elemental Fodder
					--["coord"] = { 73.6, 55.1, ISLE_OF_DORN },	-- need proper coords from popup, cause wq area can be started @ 71.3, 46.4
					["g"] = {
						i(217343),	-- Living Coalesced Silt (QI!)
					},
				}),
				q(81803, {	-- Skyrider Racing - Basin Bypass
					["coord"] = { 53.5, 64.2, ISLE_OF_DORN },
				}),
				q(81799, {	-- Skyrider Racing - Dornogal Drift
					["coord"] = { 43.5, 11.7, DORNOGAL },	-- probably gonna need to move out of here
				}),
				q(81806, {	-- Skyrider Racing - Orecreg's Doglegs
					["coord"] = { 32.9, 74.6, ISLE_OF_DORN },
				}),
				q(81802, {	-- Skyrider Racing - Storm's Watch Survey
					["coord"] = { 38.6, 43.6, ISLE_OF_DORN },
				}),
				q(81804, {	-- Skyrider Racing - The Wold Ways
					["coord"] = { 62.0, 46.0, ISLE_OF_DORN },
				}),
				q(81805, {	-- Skyrider Racing - Thunderhead Trail
					["coord"] = { 58.3, 24.9, ISLE_OF_DORN },
				}),
				q(81621, {	-- Tunnels Be Gone!
					--["coord"] = { 63.9, 43.1, ISLE_OF_DORN },	-- could be wrong, all Isle of Dorn missing quest zone highlights
					["g"] = {
						i(219284),	-- Explosive Sticks (QI!)
					},
				}),
				q(81675, {	-- Water the Sheep
					["coord"] = { 58.4, 28.0, DORNOGAL },	-- probably gonna need to move out of here
					["g"] = {
						i(219525),	-- Globe of Nourishment (QI!)
					},
				}),
				q(81615, {	-- Wick Points
					["coord"] = { 62.4, 45.1, ISLE_OF_DORN },
				}),
				--
				q(82355, {	-- Special Assignment: Cinderbee Surge
					["coord"] = { 71.3, 40.7, ISLE_OF_DORN },
				}),
				q(82146, {	-- Special Assignment: Cinderbee Surge
					--["coord"] = { x, y, ISLE_OF_DORN },
				}),
				q(81650, {	-- Special Assignment: Titanic Resurgence
					["coord"] = { 71.7, 31.1, ISLE_OF_DORN },
				}),
				q(81649, {	-- Special Assignment: Titanic Resurgence
					["coord"] = { 73.0, 77.2, ISLE_OF_DORN },
				}),
				q(82154, {	-- Special Assignment: Titanic Resurgence
					["coord"] = { 73.0, 77.2, ISLE_OF_DORN },
				}),
				q(83069, {	-- Special Assignment: Titanic Resurgence
					--["coord"] = { x, y, ISLE_OF_DORN },
				}),
				q(83070, {	-- Special Assignment: Titanic Resurgence
					--["coord"] = { x, y, ISLE_OF_DORN },
				}),
				q(81647, {	-- Special Assignment: Titanic Resurgence
					["coord"] = { 31.8, 71.3, ISLE_OF_DORN },
				}),
			}),
		}),
	}),
})));