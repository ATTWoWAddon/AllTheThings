---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		header(HEADERS.Faction, FACTION_HARATI, {
			["icon"] = 7505704,
			["groups"] = {
				faction(FACTION_HARATI),
				n(ACHIEVEMENTS, {
					ach(62264, {	-- Hara'ti Champion
						["minReputation"] = { FACTION_HARATI, 20 },	-- Hara'ti, Renown 20
					}),
				}),
				title(665, {	-- Honorary Hara'ti <Name>
					["minReputation"] = { FACTION_HARATI, 20 },	-- Hara'ti, Renown 20
				}),
				n(QUESTS, sharedData({
					["provider"] = { "n", 240407 },	-- Naynar <Renown Quartermaster>
					["coord"] = { 50.9, 50.7, MAP.MIDNIGHT.HARANDAR },
				}, bubbleDownRep(FACTION_HARATI, {
					{		-- RENOWN 1 --
					}, {	-- RENOWN 2 --
					}, {	-- RENOWN 3 --
					}, {	-- RENOWN 4 --
						q(92890),	-- A Handful of Voidlight Marl
					}, {	-- RENOWN 5 --
					}, {	-- RENOWN 6 --
					}, {	-- RENOWN 7 --
					}, {	-- RENOWN 8 --
						q(93932, {	-- Legendary Prosperity
							i(263268),	-- Hara'ti Defender's Belt
							i(263267),	-- Hara'ti Defender's Cord
							i(263269),	-- Hara'ti Defender's Greatbelt
							i(263265),	-- Hara'ti Defender's Sash
						}),
					}, {	-- RENOWN 9 --
					}, {	-- RENOWN 10 --
						q(94794, {	-- Fine Fashion Funding
							i(FINERY_FUNDS),
						}),
					}, {	-- RENOWN 11 --
					}, {	-- RENOWN 12 --
					}, {	-- RENOWN 13 --
						q(92891),	-- A Cluster of Voidlight Marl
					}, {	-- RENOWN 14 --
					}, {	-- RENOWN 15 --
					}, {	-- RENOWN 16 --
					}, {	-- RENOWN 17 --
					}, {	-- RENOWN 18 --
					}, {	-- RENOWN 19 --
					}, {	-- RENOWN 20 --
						------ Paragon ------
						q(89035, {	-- Renowned with the Hara'ti
							["isRepeatable"] = true,
							["groups"] = { i(256055) },	-- Overflowing Hara'ti Trove
						}),
					},
				}))),
				n(VENDORS, {
					n(240407, {	-- Naynar <Renown Quartermaster>
						["coord"] = { 50.9, 50.7, MAP.MIDNIGHT.HARANDAR },
						["groups"] = bubbleDownRep(FACTION_HARATI, {
							{		-- RENOWN 1 --
							}, {	-- RENOWN 2 --
								i(267481, {	-- Aspiring Hara'ti Defender's Belt
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(267480, {	-- Aspiring Hara'ti Defender's Cord
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(267482, {	-- Aspiring Hara'ti Defender's Greatbelt
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(267479, {	-- Aspiring Hara'ti Defender's Sash
									["cost"] = { { "c", VOIDLIGHT_MARL, 750 } },
								}),
								i(256613, {	-- Cloak of the Hara'ti Elder
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								i(267257, {	-- Cloak of the Hara'ti Sage
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								i(267258, {	-- Cloak of the Hara'ti Seer
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
							}, {	-- RENOWN 3 --
								i(246402, {	-- Hollowed Harandar Gourds (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
								i(246408, {	-- Haranir Herb Rack (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
							}, {	-- RENOWN 4 --
							}, {	-- RENOWN 5 --
								i(256700, {	-- Design: Signet of Azerothian Blessings (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.JEWELCRAFTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(256745, {	-- Formula: Enchant Chest - Mark of the Rootwarden (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(256749, {	-- Formula: Enchant Tool - Haranir Multicrafting (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(256751, {	-- Formula: Enchant Weapon - Worldsoul Tenacity (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(256743, {	-- Formula: Gleeful Glamour - Haranir (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ENCHANTING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(259457, {	-- Pattern: Simple Haranir Table (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.LEATHERWORKING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(256639, {	-- Pattern: World Tree Rootwraps (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.LEATHERWORKING, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(258141, {	-- Recipe: Haranir Phial of Perception (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ALCHEMY, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(247500, {	-- Recipe: Rootbound Vat (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.ALCHEMY, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(263443, {	-- Technique: Contract: The Hara'ti (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.INSCRIPTION, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(258509, {	-- Technique: Harandar Signpost (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.INSCRIPTION, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
								i(258510, {	-- Technique: Magnificent Towering Bookcase (RECIPE!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.INSCRIPTION, 150 },
										{ "c", VOIDLIGHT_MARL, 1500 },
									},
								}),
							}, {	-- RENOWN 6 --
								i(258410, {	-- Traditions of the Haranir: Herbalism (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.HERBALISM, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
								i(258411, {	-- Traditions of the Haranir: Inscription (CI!)
									["cost"] = {
										{ "c", ARTISAN_MOXIE.INSCRIPTION, 75 },
										{ "c", VOIDLIGHT_MARL, 750 },
									},
								}),
							}, {	-- RENOWN 7 --
								i(251980, {	-- Fungarian Sack (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
								i(249768, {	-- Fungarian Barrel (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
								i(246959, {	-- Sealed Fungal Jar (DECOR!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
							}, {	-- RENOWN 8 --
							}, {	-- RENOWN 9 --
							}, {	-- RENOWN 10 --
								i(256615, {	-- Tabard of the Hara'ti Elder
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								i(267261, {	-- Tabard of the Hara'ti Sage
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								i(267262, {	-- Tabard of the Hara'ti Seer
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
							}, {	-- RENOWN 11 --
							}, {	-- RENOWN 12 --
								i(263039),	-- Harandar Flowering Lamp (DECOR!)
								i(263194),	-- Harandar Glowvine Sconce (DECOR!)
								i(263195),	-- Harandar Glowvine Lamppost (DECOR!)
							}, {	-- RENOWN 13 --
								i(256552, {	-- Verdant Rutaani Seed (TOY!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 4000 } },
								}),
							}, {	-- RENOWN 14 --
								i(259337, {	-- Munchy (PET!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 2500 } },
								}),
							}, {	-- RENOWN 15 --
								i(264267),	-- Rutaani Birdfeeder (DECOR!)
								i(264268),	-- Rutaani Birdbath (DECOR!)
								i(264269),	-- Rutaani Bird Perch (DECOR!)
							}, {	-- RENOWN 16 --
								i(246734, {	-- Fierce Grimlynx (MOUNT!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 6000 } },
								}),
							}, {	-- RENOWN 17 --
								i(256614, {	-- Shoulderguards of the Hara'ti Elder
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								i(267259, {	-- Shoulderguards of the Hara'ti Sage
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								i(267260, {	-- Shoulderguards of the Hara'ti Seer
									["cost"] = { { "c", VOIDLIGHT_MARL, 3000 } },
								}),
								iensemble(259073, {	-- Arsenal: Arms of the Hara'ti
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
							}, {	-- RENOWN 18 --
								i(263019),	-- Haranir Pennant (DECOR!)
							}, {	-- RENOWN 19 --
								i(252014, {	-- Cerulean Sporeglider (MOUNT!)
									["cost"] = { { "c", VOIDLIGHT_MARL, 8000 } },
								}),
							}, {	-- RENOWN 20 --
								iensemble(258014, {	-- Ensemble: Hara'ti Guardian's Armor
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
								iensemble(258010, {	-- Ensemble: Hara'ti Rootdancer's Garb
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
								iensemble(258012, {	-- Ensemble: Hara'ti Rootwarden's Wear
									["cost"] = { { "c", VOIDLIGHT_MARL, 5000 } },
								}),
								iensemble(258013, {	-- Ensemble: Hara'ti Scout's Outfit
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

--[[root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	header(HEADERS.Faction, FACTION_HARATI, {
		q(),	--
	}),
}));--]]
