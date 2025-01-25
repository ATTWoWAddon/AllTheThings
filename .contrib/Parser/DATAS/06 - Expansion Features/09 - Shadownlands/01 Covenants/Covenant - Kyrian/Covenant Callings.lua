-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
	n(KYRIAN, {
		["customCollect"] = "SL_COV_KYR",
		["maps"] = { ARCHONS_RISE },
		["g"] = {
			n(COVENANT_CALLINGS, sharedData({
				["sourceQuests"] = { 57904 },	-- Our Eternal Charge
				["repeatable"] = true,
				["customCollect"] = "SL_COV_KYR",
			},{
				q(62692, {	-- A Calling in Bastion
					["sourceQuests"] = { 62698 },	-- A Call to Service
					["description"] = "Will only be offered as the initial 'Calling' during the Covenant introduction.",
					["provider"] = { "n", 160470 },	-- Adjutant Nikos
					["coord"] = { 52.2, 47.0, BASTION },
					["g"] = {
						i(181372),	-- Tribute of the Ascended
					},
				}),
				q(60424, {	-- A Call to Ardenweald
					["provider"] = { "n", 160037 },	-- Polemarch Adrestes
					["coord"] = { 55.4, 42.3, ARCHONS_RISE },
					["g"] = {
						i(181475),	-- Bounty of the Grove Wardens
					},
				}),
				q(60434, {	-- A Call to Revendreth
					["provider"] = { "n", 160037 },	-- Polemarch Adrestes
					["coord"] = { 55.5, 42.1, ARCHONS_RISE },
					["g"] = {
						i(181556),	-- Tribute of the Court
					},
				}),
				q(60430, {	-- A Call to Maldraxxus
					["provider"] = { "n", 160037 },	-- Polemarch Adrestes
					["coord"] = { 55.5, 42.2, ARCHONS_RISE },
					["g"] = {
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60391, {	-- Aiding Ardenweald
					["provider"] = { "n", 160387 },	-- Hermestes
					["coord"] = { 41.0, 41.2, ARCHONS_RISE },
					["g"] = {
						i(181475),	-- Bounty of the Grove Wardens
					},
				}),
				q(60392, {	-- Aiding Bastion
					["provider"] = { "n", 160387 },	-- Hermestes
					["coord"] = { 41.0, 41.1, ARCHONS_RISE },
					["g"] = {
						i(181372),	-- Tribute of the Ascended
					},
				}),
				q(60395, {	-- Aiding Maldraxxus
					["provider"] = { "n", 160387 },	-- Hermestes
					["coord"] = { 40.9, 41.0, ARCHONS_RISE },
					["g"] = {
						i(181732),	-- Tribute of the Ambitious
					},
				}),
				q(60400, {	-- Aiding Revendreth
					["provider"] = { "n", 160387 },	-- Hermestes
					["coord"] = { 40.9, 41.0, ARCHONS_RISE },
					["g"] = {
						i(181556),	-- Tribute of the Court
					},
				}),
				q(60465, {	-- Anima Appeal
					["provider"] = { "n", 158773 },	-- Capheus
					["coord"] = { 64.0, 20.0, BASTION },
					["g"] = {
						i(181372),	-- Tribute of the Ascended
					},
				}),
				q(60458, {	-- Anima Salvage
					["provider"] = { "n", 160212 },	-- Soulguide Daelia
					["coord"] = { 59.4, 34.7, SANCTUM_OF_BINDING },
					["g"] = {
						i(184561),	-- Anima Embers (QI!)
						i(181372),	-- Tribute of the Ascended
					},
				}),
				q(60439, {	-- Challenges in Ardenweald
					["provider"] = { "n", 154627 },	-- Xandria
					["coord"] = { 62.1, 37.6, ARCHONS_RISE },
					["g"] = {
						i(181476),	-- Tribute of the Wild Hunt
					},
				}),
				q(60442, {	-- Challenges in Bastion
					["provider"] = { "n", 154627 },	-- Xandria
					["coord"] = { 62.0, 37.4, ARCHONS_RISE },
					["g"] = {
						i(181741),	-- Tribute of the Paragon
					},
				}),
				q(60447, {	-- Challenges in Maldraxxus
					["provider"] = { "n", 154627 },	-- Xandria
					["coord"] = { 61.9, 37.4, ARCHONS_RISE },
					["g"] = {
						i(181733),	-- Tribute of the Duty-Bound
					},
				}),
				q(60450, {	-- Challenges in Revendreth
					["provider"] = { "n", 154627 },	-- Xandria
					["coord"] = { 62.0, 37.3, ARCHONS_RISE },
					["g"] = {
						i(181557),	-- Favor of the Court
					},
				}),
				q(60415, {	-- Rare Resources
					["provider"] = { "n", 168519 },	-- Sika
					["coord"] = { 33.6, 44.7, ARCHONS_RISE },
					["g"] = {
						i(179327),	-- Coin of Brokerage (QI!)
						i(181372),	-- Tribute of the Ascended
					},
				}),
				q(60454, {	-- Storm the Maw
					["provider"] = { "n", 160212 },	-- Soulguide Daelia
					["coord"] = { 59.4, 34.4, SANCTUM_OF_BINDING },
					["g"] = {
						i(181741),	-- Tribute of the Paragon
					},
				}),
				q(60404, {	-- Training Our Forces
					["provider"] = { "n", 168517 },	-- Kalisthene
					["coord"] = { 37.3, 61.1, ARCHONS_RISE },
					["g"] = {
						i(181372),	-- Tribute of the Ascended
					},
				}),
				q(60403, {	-- Training in Ardenweald
					["provider"] = { "n", 168517 },	-- Kalisthene
					["coord"] = { 37.3, 61.0, ARCHONS_RISE },
					["g"] = {
						i(181475),	-- Bounty of the Grove Wardens
					},
				}),
				q(60407, {	-- Training in Maldraxxus
					["provider"] = { "n", 168517 },	-- Kalisthene
					--["coord"] = { , BASTION },
					["g"] = {
						i(181372),	-- Tribute of the Ascended
					},
				}),
				q(60412, {	-- Training in Revendreth
					["provider"] = { "n", 168517 },	-- Kalisthene
					["coord"] = { 37.2, 61.0, ARCHONS_RISE },
					["g"] = {
						i(181556),	-- Tribute of the Court
					},
				}),
				q(60425, {	-- Troubles at Home
					["provider"] = { "n", 160037 },	-- Polemarch Adrestes
					["coord"] = { 55.3, 42.4, ARCHONS_RISE },
					["g"] = {
						i(181372),	-- Tribute of the Ascended
					},
				}),
			})),
		},
	}),
})));