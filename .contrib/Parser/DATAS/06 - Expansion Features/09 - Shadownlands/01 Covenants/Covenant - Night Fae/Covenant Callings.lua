-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(NIGHT_FAE, {
		["customCollect"] = "SL_COV_NFA",
		["maps"] = {
			THE_TRUNK,	-- Heart of the Forest
			THE_ROOTS,	-- Heart of the Forest
			THE_CANOPY,	-- Heart of the Forest
		},
		["g"] = {
			n(COVENANT_CALLINGS, sharedData({
				["sourceQuests"] = { 62899 },	-- The Endless Forest
				["repeatable"] = true,
				["customCollect"] = "SL_COV_NFA",
			}, {
				q(62693, {	-- A Calling in Ardenweald
					["sourceQuests"] = { 62697 },	-- A Call to Service
					["description"] = "Will only be offered as the initial 'Calling' during the Covenant introduction.",
					["provider"] = { "n", 165702 },	-- Blodwyn
					["coord"] = { 53.8, 6.2, THE_TRUNK },
					["g"] = {
						i(181475),	-- Bounty of the Grove Wardens
					},
				}),
				q(60418, {	-- A Call to Bastion
					["provider"] = { "n", 167193 },	-- Featherlight
					["coords"] = {
						{ 59.9, 31.7, THE_TRUNK },
						{ 65.1, 53.8, THE_ROOTS },
					},
					["g"] = {
						i(181475),	-- Bounty of the Grove Wardens
					},
				}),
				q(60421, {	-- A Call to Revendreth
					["provider"] = { "n", 167193 },	-- Featherlight
					["coords"] = {
						{ 59.9, 32.4, THE_TRUNK },
						{ 65.1, 53.8, THE_ROOTS },
					},
					["g"] = {
						i(181556),	-- Tribute of the Court
					},
				}),
				q(60420, {	-- A Call to Maldraxxus
					["provider"] = { "n", 167193 },	-- Featherlight
					["coords"] = {
						{ 59.9, 32.1, THE_TRUNK },
						{ 65.1, 53.8, THE_ROOTS },
					},
					["g"] = {
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60381, {	-- Aiding Ardenweald
					["provider"] = { "n", 167195 },	-- Blodwyn
					["coord"] = { 53.7, 6.20, THE_TRUNK },
					["g"] = {
						i(181475),	-- Bounty of the Grove Wardens
					},
				}),
				q(60384, {	-- Aiding Bastion
					["provider"] = { "n", 167195 },	-- Blodwyn
					["coord"] = { 53.7, 6.53, THE_TRUNK },
					["g"] = {
						i(181372),	-- Tribute of the Ascended
					},
				}),
				q(60383, {	-- Aiding Maldraxxus
					["provider"] = { "n", 167195 },	-- Blodwyn
					["coord"] = { 53.1, 6.1, THE_TRUNK },
					["g"] = {
						i(181475),	-- Bounty of the Grove Wardens
					},
				}),
				q(60382, {	-- Aiding Revendreth
					["provider"] = { "n", 167195 },	-- Blodwyn
					["coord"] = { 53.7, 6.42, THE_TRUNK },
					["g"] = {
						i(181556),	-- Tribute of the Court
					},
				}),
				q(60462, {	-- Anima Appeal
					["provider"] = { "n", 167196 },	-- Sesselie
					["coord"] = { 48.9, 39.3, ARDENWEALD },
					["g"] = {
						i(181475),	-- Bounty of the Grove Wardens
					},
				}),
				q(60457, {	-- Anima Salvage
					["provider"] = { "n", 158553 },	-- Flutterby
					["coord"] = { 33.9, 43.5, ARDENWEALD },
					["g"] = {
						i(184561),	-- Anima Embers (QI!)
						i(181476),	-- Tribute of the Wild Hunt
					},
				}),
				q(60438, {	-- Challenges in Ardenweald
					["provider"] = { "n", 167206 },	-- Yanlar
					["coord"] = { 37.0, 25.3, THE_TRUNK },
					["g"] = {
						i(181476),	-- Tribute of the Wild Hunt
					},
				}),
				q(60437, {	-- Challenges in Bastion
					["provider"] = { "n", 167206 },	-- Yanlar
					["coords"] = {
						{ 37.1, 25.5, THE_TRUNK },
						{ 33.2, 44.5, THE_ROOTS },
					},
					["g"] = {
						i(181741),	-- Tribute of the Paragon
					},
				}),
				q(60436, {	-- Challenges in Maldraxxus
					["provider"] = { "n", 167206 },	-- Yanlar
					["coords"] = {
						{ 37.1, 25.5, THE_TRUNK },
						{ 33.2, 44.5, THE_ROOTS },
					},
					["g"] = {
						i(181733),	-- Tribute of the Duty-Bound
					},
				}),
				q(60435, {	-- Challenges in Revendreth
					["provider"] = { "n", 167206 },	-- Yanlar
					["coord"] = { 37.0, 26.2, THE_TRUNK },
					["g"] = {
						i(181476),	-- Tribute of the Wild Hunt
					},
				}),
				q(60414, {	-- Rare Resources
					["provider"] = { "n", 168513 },	-- Elder Shaper An'wyn
					["coord"] = { 43.6, 52.4, ARDENWEALD },
					["g"] = {
						i(179327),	-- Coin of Brokerage (QI!)
						i(181475),	-- Bounty of the Grove Wardens
					},
				}),
				q(60452, {	-- Storm the Maw
					["provider"] = { "n", 158553 },	-- Flutterby
					["coord"] = { 33.9, 43.5, THE_TRUNK },
					["g"] = {
						i(181476),	-- Tribute of the Wild Hunt
					},
				}),
				q(60388, {	-- Training Our Forces
					["provider"] = { "n", 158544 },	-- Lord Herne
					["coord"] = { 38.5, 70.7, THE_TRUNK },
					["g"] = {
						i(181475),	-- Bounty of the Grove Wardens
					},
				}),
				q(60387, {	-- Training in Bastion
					["provider"] = { "n", 158544 },	-- Lord Herne
					["coord"] = { 40.1, 71.5, THE_TRUNK },
					["g"] = {
						i(181372),	-- Tribute of the Ascended
					},
				}),
				q(60386, {	-- Training in Maldraxxus
					["provider"] = { "n", 158544 },	-- Lord Herne
					["coord"] = { 42.0, 73.5, THE_TRUNK },
					["g"] = {
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60385, {	-- Training in Revendreth
					["provider"] = { "n", 158544 },	-- Lord Herne
					["coord"] = { 40.9, 72.4, THE_TRUNK },
					["g"] = {
						i(181556),	-- Tribute of the Court
					},
				}),
				q(60419, {	-- Troubles at Home
					["provider"] = { "n", 167193 },	-- Featherlight
					["coord"] = { 59.7, 31.3, THE_TRUNK },
					["g"] = {
						i(181475),	-- Bounty of the Grove Wardens
					},
				}),
			})),
		},
	}),
})));