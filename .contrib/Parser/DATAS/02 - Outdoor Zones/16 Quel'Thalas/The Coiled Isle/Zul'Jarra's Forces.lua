---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		header(HEADERS.Faction, FACTION_ZULJARRAS_FORCES, {
			["icon"] = 7903180,
			["groups"] = {
				faction(FACTION_ZULJARRAS_FORCES),
				title(778, {	-- <Name>, Hash'ura of Zul'jarra
					["minReputation"] = { FACTION_ZULJARRAS_FORCES, 20 },	-- Zul'Jarra's Forces, Renown 20
				}),
				n(QUESTS, sharedData({
					["provider"] = { "n", 268228 },	-- Jan'sari the Watchful <Renown Quartermaster>
					["coord"] = { 58.8, 45.0, MAP.MIDNIGHT.THE_COILED_ISLE },
				}, bubbleDownRep(FACTION_ZULJARRAS_FORCES, {
					{		-- RENOWN 1 --
					}, {	-- RENOWN 2 --
						q(97382, {
							i(276642),	-- Corroded Cursebreaker's Bracers
							i(276644),	-- Corroded Cursebreaker's Cuffs
							i(276641),	-- Corroded Cursebreaker's Vambraces
							i(276643),	-- Corroded Cursebreaker's Wristwraps
						}),
					}, {	-- RENOWN 3 --
					}, {	-- RENOWN 4 --
					}, {	-- RENOWN 5 --
					}, {	-- RENOWN 6 --
						q(97670),	-- A Handful of Voidlight Marl
					}, {	-- RENOWN 7 --
					}, {	-- RENOWN 8 --
					}, {	-- RENOWN 9 --
					}, {	-- RENOWN 10 --
					}, {	-- RENOWN 11 --
					}, {	-- RENOWN 12 --
					}, {	-- RENOWN 13 --
					}, {	-- RENOWN 14 --
					}, {	-- RENOWN 15 --
					}, {	-- RENOWN 16 --
					}, {	-- RENOWN 17 --
					}, {	-- RENOWN 18 --
					}, {	-- RENOWN 19 --
					}, {	-- RENOWN 20 --
						------ Paragon ------
					},
				}))),
				n(VENDORS, {
					n(268228, {	-- Jan'sari the Watchful <Renown Quartermaster>
						["coord"] = { 58.8, 45.0, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = bubbleDownRep(FACTION_ZULJARRAS_FORCES, {
							{		-- RENOWN 1 --
							}, {	-- RENOWN 2 --
								i(276249, {	-- Cloak of the Hash'ura (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
							}, {	-- RENOWN 3 --
								i(263316, {	-- Amani Storage Crate (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
								i(249765, {	-- Amani Supply Sack (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
								i(264331, {	-- Amani Wayfarer's Torch (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
							}, {	-- RENOWN 4 --
							}, {	-- RENOWN 5 --
								i(275310, {	-- Formula: Keen Hex Mask (RECIPE!)
									["cost"] = { { "c", ARTISAN_MOXIE.ENCHANTING, 150 } },
								}),
								i(273073, {	-- Formula: Rite of the Hash'ey (RECIPE!)
									["cost"] = { { "c", ARTISAN_MOXIE.ENCHANTING, 150 } },
								}),
								i(275332, {	-- Pattern: Flat Snakeskin Canopy (RECIPE!)
									["cost"] = { { "c", ARTISAN_MOXIE.LEATHERWORKING, 150 } },
								}),
								i(275304, {	-- Plans: Amani Forgemaster's Workbench (RECIPE!)
									["cost"] = { { "c", ARTISAN_MOXIE.BLACKSMITHING, 150 } },
								}),
								i(271885, {	-- Recipe: Concentrated Silvermoon Health Potion (RECIPE!)
									["cost"] = { { "c", ARTISAN_MOXIE.ALCHEMY, 150 } },
								}),
								i(275300, {	-- Recipe: Loa's Gathering (RECIPE!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 1500 } },
								}),
								i(277820, {	-- Recipe: Ula'tek Snakehead Lure (RECIPE!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 1500 } },
								}),
								i(275316, {	-- Schematic: Coiled Hookshot (RECIPE!)
									["cost"] = { { "c", ARTISAN_MOXIE.ENGINEERING, 150 } },
								}),
								i(277967, {	-- Technique: Contract: Zul'jarra's Forces (RECIPE!)
									["cost"] = { { "c", ARTISAN_MOXIE.INSCRIPTION, 150 } },
								}),
								i(272196, {	-- Technique: Vantus Rune: Tides (RECIPE!)
									["cost"] = { { "c", ARTISAN_MOXIE.INSCRIPTION, 150 } },
								}),
							}, {	-- RENOWN 6 --
								i(274500, {	-- Demystifyin': Alchemy (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ALCHEMY, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(274515, {	-- Demystifyin': Blacksmithing (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.BLACKSMITHING, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(274511, {	-- Demystifyin': Enchanting (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(274516, {	-- Demystifyin': Engineering (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENGINEERING, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(274513, {	-- Demystifyin': Herbalism (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.HERBALISM, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(274514, {	-- Demystifyin': Inscription (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.INSCRIPTION, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(274510, {	-- Demystifyin': Jewelcrafting (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.JEWELCRAFTING, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(274507, {	-- Demystifyin': Leatherworking (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.LEATHERWORKING, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(274509, {	-- Demystifyin': Mining (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.MINING, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(274508, {	-- Demystifyin': Skinning (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.SKINNING, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(274512, {	-- Demystifyin': Tailoring (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.TAILORING, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
							}, {	-- RENOWN 7 --
								i(269779, {	-- Fanged Scaleskin Pouch (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
								i(269778, {	-- Stitched Blisterfang Bag (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
								i(277280, {	-- Vilescar Weapon Rack (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								}),
							}, {	-- RENOWN 8 --
							}, {	-- RENOWN 9 --
							}, {	-- RENOWN 10 --
								i(276250, {	-- Tabard of the Hash'ura (TABARD!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
							}, {	-- RENOWN 11 --
								i(277275, {	-- Charmed Blisterfang Urn (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
								i(277273, {	-- Cracked Vilescar Urn (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
								i(277271, {	-- Wrapped Scaleskin Urn (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
							}, {	-- RENOWN 12 --
								i(276248, {	-- Snek'zali (PET!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
								}),
							}, {	-- RENOWN 13 --
								i(276925, {	-- Idol of Ula'tek (TOY!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 4000 } },
								}),
							}, {	-- RENOWN 14 --
							}, {	-- RENOWN 15 --
								i(276459, {	-- Amani Ritual Candles (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
								i(264271, {	-- Amani Ritual Totem (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								}),
								i(276457, {	-- Amani Worship Candle (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
								iensemble(276841, {	-- Arsenal: Armaments of the Loa (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
							}, {	-- RENOWN 16 --
								i(276251, {	-- Shoulderguards of the Hash'ura (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
							}, {	-- RENOWN 17 --
								i(276802, {	-- Indigo Coiled Horror (MOUNT!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 6000 } },
								}),
							}, {	-- RENOWN 18 --
								i(271177, {	-- Opened Serpentine Reliquary (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								}),
								i(277323, {	-- Sealed Serpentine Reliquary (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								}),
								i(267377, {	-- Ula'tek Ritual Monolith (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								}),
								iensemble(276608, {	-- Ensemble: Battlegear of Halazzi's Chosen (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
								iensemble(276609, {	-- Ensemble: Chainmail of Jan'alai's Chosen (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
								iensemble(276607, {	-- Ensemble: Vestments of Akil'zon's Chosen (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
								iensemble(276610, {	-- Ensemble: Warplate of Nalorakk's Chosen (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
							}, {	-- RENOWN 19 --
								i(276551, {	-- Violet-Backed Skyfang (MOUNT!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 8000 } },
								}),
							}, {	-- RENOWN 20 --
								i(277326, {	-- Axe of Akil'zon (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
								i(277327, {	-- Mantle of Nalorakk (COSMETIC!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
							},
						}),
					}),
				}),
			},
		}),
	}),
}));
