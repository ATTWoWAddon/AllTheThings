---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_10_1_7 } }, {
			header(HEADERS.Achievement, 18854, {	-- Seeing Red
				n(QUESTS, {
					q(77408, {	-- Prophecy Stirs
						["qgs"] = {
							209790,	-- Virtos
							209803,	-- Knight-Lord Dranarus
						},
						["coords"] = {
							{ 77.8, 37.5, STORMWIND_CITY },
							{ 71.8, 44.6, ORGRIMMAR },
						},
						["groups"] = {
							i(208206),	-- Teleportation Crystal (QI!)
						},
					}),
					q(77409, {	-- Uncertainty
						["sourceQuests"] = { 77408 },	-- Prophecy Stirs
						["provider"] = { "n", 208815 },	-- Prophet Velen
						["coord"] = { 44.2, 26.4, THE_VINDICAAR },
					}),
					q(77410, {	-- Opening Wounds
						["sourceQuests"] = { 77409 },	-- Uncertainty
						["provider"] = { "n", 208830 },	-- Chieftan Hatuun
						["coord"] = { 53.8, 68.1, KROKUUN },
					}),
					q(77411, {	-- Contrition
						["sourceQuests"] = { 77410 },	-- Opening Wounds
						["provider"] = { "n", 208831 },	-- Arzal'kal
						["coord"] = { 53.7, 68.2, KROKUUN },
						["groups"] = {
							i(208203),	-- Brilliant Star (QI!)
						},
					}),
					q(77789, {	-- Severing Ties
						["sourceQuests"] = { 77410 },	-- Opening Wounds
						["provider"] = { "n", 208858 },	-- Arzal'kal
						["coord"] = { 63.5, 42.6, KROKUUN },
					}),
					q(77412, {	-- Proof and Promise
						["sourceQuests"] = {
							77411,	-- Contrition
							77789,	-- Severing Ties
						},
						["provider"] = { "n", 208836 },	-- Arzal'kal
						["coord"] = { 73, 32.3, KROKUUN },
						["groups"] = {
							ach(18854),	-- Seeing Red
							i(208658),	-- Mirror of Humility (TOY!)
						},
					}),
					q(77795, {	-- Scavenged Artifacts
						["sourceQuests"] = { 77412 },	-- Proof and Promise
						["provider"] = { "n", 125246 },	-- Gaal
						["coord"] = { 56.7, 68.6, KROKUUN },
					}),
				}),
				n(SPECIAL, sharedData({
					["sourceQuests"] = { 77795 },	-- Scavenged Artifacts
					["groups"] = {
						i(208691, {	-- Argunite Cluster
							["description"] = "Rewarded from any Allies of Arzaal after the questline. Contains a few random items related to Argus.",
							["sym"] = {{"select","itemID",
								151718,	-- Argulite
								151565,	-- Astral Glory
								151564,	-- Empyrium
								151566,	-- Fiendish Leather
								151722,	-- Florid Malachite
								151579,	-- Labradorite
								151567,	-- Lightweave Cloth
							},
							{"select","currencyID",1508}},	-- Veiled Argunite
						}),
					}
				}, {
					n(209860, {	-- Eranthi
						["coord"] = { 58.9 ,23.7, ANTORAN_WASTES },
						["questID"] = 77804,
					}),
					n(209855, {	-- Heraat
						["coord"] = { 56.4 ,52.2, KROKUUN },
						["questID"] = 77800,
					}),
					n(209853, {	-- Saatilu
						["coord"] = { 61.5 ,28.7, KROKUUN },
						["questID"] = 77799,
					}),
					n(209863, {	-- Tronaar
						["coord"] = { 51.9, 67.9, EREDATH },
						["questID"] = 77807,
					}),
					n(209861, {	-- Yazdan
						["coord"] = { 53.8, 52.9, ANTORAN_WASTES },
						["questID"] = 77805,
					}),
					n(209862, {	-- Zyaana
						["coord"] = { 55.1, 27.9, EREDATH },
						["questID"] = 77806,
					}),
				})),
				n(VENDORS, {
					n(125246, {	-- Gaal <Blacksmith>
						["sourceQuests"] = { 77795 },	-- Scavenged Artifacts
						["coord"] = { 56.7, 68.6, KROKUUN },
						["groups"] = {
							i(208684, {	-- Anchorite's Sorrow
								["cost"] = {
									{ "i", 151565, 40 },	-- 40x Astral Glory
									{ "i", 151579, 5 },		-- 5x Labradorite
									{ "c", 1508, 90 },		-- 90x Veiled Argunite
								},
							}),
							i(208755, {	-- Ancient Soulpriest's Staff
								["cost"] = {
									{ "i", 151567, 75 },	-- 75x Lightweave Cloth
									{ "i", 151718, 15 },	-- 15x Argulite
									{ "c", 1508, 90 },		-- 90x Veiled Argunite
								},
							}),
							i(208683, {	-- Arinor Ritual Baton
								["classes"] = { DEATHKNIGHT, DRUID, DEMONHUNTER, EVOKER, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARRIOR },	-- Manual filtering due blizzard returning them as valid for all classes
								["cost"] = {
									{ "i", 151565, 50 },	-- 50x Astral Glory
									{ "i", 151566, 40 },	-- 40x Fiendish Leather
									{ "c", 1508, 90 },		-- 90x Veiled Argunite
								},
							}),
							i(208677, {	-- Eredath Crystal Hammer
								["classes"] = { DEATHKNIGHT, DRUID, DEMONHUNTER, EVOKER, MONK, PALADIN, PRIEST, ROGUE, SHAMAN, WARRIOR },	-- Manual filtering due blizzard returning them as valid for all classes
								["cost"] = {
									{ "i", 151567, 75 },	-- 75x Lightweave Cloth
									{ "i", 151718, 15 },	-- 15x Argulite
									{ "c", 1508, 90 },		-- 90x Veiled Argunite
								},
							}),
							i(208662, {	-- Lightforged Seeker
								["cost"] = {
									{ "i", 151564, 50 },	-- 50x Empyrium
									{ "i", 151566, 30 },	-- 30x Fiendish Leather
									{ "c", 1508, 90 },		-- 90x Veiled Argunite
								},
							}),
							i(206195, {	-- Path of the Naaru (TOY!)
								["cost"] = {
									{ "i", 151567, 90 },	-- 90x Lightweave Cloth
									{ "i", 151564, 90 },	-- 90x Empyrium
									{ "c", 1508, 900 },		-- 900x Veiled Argunite
								},
							}),
							i(208685, {	-- Recovered Kaarinos Blade
								["cost"] = {
									{ "i", 151564, 50 },	-- 50x Empyrium
									{ "i", 151579, 15 },	-- 15x Labradorite
									{ "c", 1508, 90 },		-- 90x Veiled Argunite
								},
							}),
							i(208688, {	-- Telaasti Mining Pick
								["cost"] = {
									{ "i", 151564, 75 },	-- 75x Empyrium
									{ "i", 151722, 5 },		-- 5x Florid Malachite
									{ "c", 1508, 90 },		-- 90x Veiled Argunite
								},
							}),
							i(208686, {	-- Velenite Claymore
								["cost"] = {
									{ "i", 151564, 100 },	-- 100x Empyrium
									{ "i", 151718, 5 },		-- 5x Argulite
									{ "c", 1508, 90 },		-- 90x Veiled Argunite
								},
							}),
						},
					}),
				}),
			}),
		})),
	}),
});
