-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(NECROLORD, {
		["customCollect"] = "SL_COV_NEC",
		["maps"] = { SEAT_OF_THE_PRIMUS },
		["g"] = {
			n(COVENANT_CALLINGS, sharedData({
				["sourceQuests"] = { 59609 },	-- No Rest For the Dead
				["repeatable"] = true,
				["customCollect"] = "SL_COV_NEC",
			}, {
				q(62694, {	-- A Calling in Maldraxxus
					["sourceQuests"] = { 62835 },	-- A Call to Service
					["description"] = "Will only be offered as the initial 'Calling' during the Covenant introduction.",
					["provider"] = { "n", 158339 },	-- Sergeant Romark
					["coord"] = { 47.7, 29.1, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60423, {	-- A Call to Ardenweald
					["provider"] = { "n", 167210 },	-- Tabulator Killham
					["coord"] = { 59.6, 43.5, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(181475),	-- Bounty of the Grove Wardens
					},
				}),
				q(60426, {	-- A Call to Bastion
					["provider"] = { "n", 167210 },	-- Tabulator Killham
					["coord"] = { 59.6, 43.5, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60433, {	-- A Call to Revendreth
					["provider"] = { "n", 167210 },	-- Tabulator Killham
					["coord"] = { 59.6, 43.5, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60390, {	-- Aiding Ardenweald
					["provider"] = { "n", 158339 },	-- Sergeant Romark
					["coord"] = { 54.2, 68.8, MALDRAXXUS },
					["g"] = {
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60393, {	-- Aiding Bastion
					["provider"] = { "n", 158339 },	-- Sergeant Romark
					["coord"] = { 54.2, 68.8, MALDRAXXUS },
					["g"] = {
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60396, {	-- Aiding Maldraxxus
					["provider"] = { "n", 158339 },	-- Sergeant Romark
					["coords"] = {
						{ 54.2, 68.8, MALDRAXXUS },
						{ 47.8, 29.1, SEAT_OF_THE_PRIMUS },
					},
					["g"] = {
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60398, {	-- Aiding Revendreth
					["provider"] = { "n", 158339 },	-- Sergeant Romark
					["coord"] = { 54.2, 68.8, MALDRAXXUS },
					["g"] = {
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60464, {	-- Anima Appeal
					["provider"] = { "n", 167205 },	-- Yondare Hex
					--["coord"] = { , MALDRAXXUS },
					["g"] = {
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60459, {	-- Anima Salvage
					["provider"] = { "n", 167207 },	-- Sabbath Nightshade
					["coord"] = { 43.2, 47.8, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(184561),	-- Anima Embers (QI!)
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60440, {	-- Challenges in Ardenweald
					["provider"] = { "n", 167208 },	-- Grandmaster Vole
					["coord"] = { 56.5, 44.0, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(181733),	-- Tribute of the Duty-Bound
					},
				}),
				q(60443, {	-- Challenges in Bastion
					["provider"] = { "n", 167208 },	-- Grandmaster Vole
					["coord"] = { 56.5, 44.0, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(181733),	-- Tribute of the Duty-Bound
					},
				}),
				q(60445, {	-- Challenges in Maldraxxus
					["provider"] = { "n", 167208 },	-- Grandmaster Vole
					["coord"] = { 56.5, 44.0, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(181733),	-- Tribute of the Duty-Bound
					},
				}),
				q(60449, {	-- Challenges in Revendreth
					["provider"] = { "n", 167208 },	-- Grandmaster Vole
					["coord"] = { 56.5, 44.0, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(181733),	-- Tribute of the Duty-Bound
					},
				}),
				q(60416, {	-- Rare Resources
					["provider"] = { "n", 167201 },	-- Gatherer Zaya
					["coord"] = { 46.8, 38.6, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(179327),	-- Coin of Brokerage (QI!)
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60455, {	-- Storm the Maw
					["provider"] = { "n", 167207 },	-- Sabbath Nightshade
					["coord"] = { 43.2, 47.8, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(181733),	-- Tribute of the Duty-Bound
					},
				}),
				q(60408, {	-- Training Our Forces
					["provider"] = { "n", 167209 },	-- Niall Kugal
					["coord"] = { 51.8, 28.8, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(181732),	-- Tribute of the Ambitious [Live Reward]
					},
				}),
				q(60402, {	-- Training in Ardenweald
					["provider"] = { "n", 167209 },	-- Niall Kugal
					["coord"] = { 51.8, 28.8, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60405, {	-- Training in Bastion
					["provider"] = { "n", 167209 },	-- Niall Kugal
					["coord"] = { 51.8, 28.8, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60411, {	-- Training in Revendreth
					["provider"] = { "n", 167209 },	-- Niall Kugal
					["coord"] = { 51.8, 28.8, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(181556),	-- Tribute of the Court
					},
				}),
				q(60429, {	-- Troubles at Home
					["provider"] = { "n", 167210 },	-- Tabulator Killham <Battle Reckoner>
					["coord"] = { 59.7, 43.7, SEAT_OF_THE_PRIMUS },
					["g"] = {
						i(181733),	-- Tribute of the Duty-Bound
					},
				}),
			})),
		},
	}),
})));