-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
THE_FOUR_HORSEMEN = createHeader({
	readable = "The Four Horsemen",
	icon = 132264,
	text = {
		en = "The Four Horsemen",
		es = "Los Cuatro Jinetes",
		de = "Die Vier Reiter",
		fr = "Les quatre cavaliers",
		it = "I Cavalieri dell'Apocalisse",
		pt = "Os Quatro Cavaleiros",
		ru = "Четыре Всадника",
		ko = "4인 기사단",
		cn = "天啓四骑士",
		tw = "四騎士",
	},
});
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC,
-- #if BEFORE WRATH
applyclassicphase(PHASE_SIX,
-- #endif
{
	inst(754, bubbleDownSelf({ ["timeline"] = { REMOVED_3_0_2 } }, {	-- Naxxramas
		-- #if BEFORE MOP
		["lore"] = "An ancient Nerubian ziggurat, Naxxramas was torn free from the ground by agents of the Lich King to serve as Kel'Thuzad's base of operations as he spreads the plague throughout Lordaeron.\n\nDue to Kel'Thuzad fighting a war against the Scarlet Crusade, the Argent Dawn, the Forsaken and the humans of the Alliance, as well as constant incursions of adventurers from every race and nation into the Scourge-controlled Plaguelands on a daily basis, his forces have been severely taxed to maintain the security of his necropolis. But now that the gates of Naxxramas are open, Kel'Thuzad's new forces are rapidly sweeping away all opposition to the Scourge.",
		-- #endif
		-- #if SEASON_OF_DISCOVERY
		["description"] = "[TBC] \nNAXX is the raid that opened in SoD Phase 7. \nThe Loot and Quest information is still unclear. It will be added after the wowhead guide is updated.",
		-- #endif
		-- #if BEFORE WRATH
		["zone-text-areaID"] = 3456,	-- Naxxramas
		["sourceQuest"] = 9121,	-- The Dread Citadel - Naxxramas [Honored]
		-- #endif
		-- #if AFTER CATA
		["sharedLockout"] = 1,
		-- #endif
		["mapID"] = NAXXRAMAS,
		["maps"] = { NAXXRAMAS_LEVEL2, NAXXRAMAS_LEVEL3, NAXXRAMAS_LEVEL4, NAXXRAMAS_LEVEL5, NAXXRAMAS_LEVEL6 },
		["isRaid"] = true,
		-- #if BEFORE WRATH
		["lvl"] = 60,
		-- #endif
		["groups"] = {
			-- #if AFTER WRATH
			d(9, applyclassicphase(PHASE_SIX, {	-- 40 Player (Legacy)
				["sourceQuest"] = 9121,	-- The Dread Citadel - Naxxramas [Honored]
				-- #if AFTER LEGION
				["ignoreBonus"] = true,
				-- #endif
				["lvl"] = 60,
				["groups"] = {
			-- #endif
					header(HEADERS.Item, 22631, {	-- Atiesh, Greatstaff of the Guardian (Priest)
						-- #if BEFORE WRATH
						["lore"] = "Atiesh is one of the most coveted legendaries in the game. In addition to being Best-In-Slot for some specs, it also provides a Unique Party-Wide Bufff:\n\nWarlock: 33 Spell Power and Healing\nMage: 2% Crit\nPriest: 62 Healing\nDruid: 11 Mp5",
						-- #endif
						["classes"] = { PRIEST, MAGE, WARLOCK, DRUID },
						["maps"] = { CAVERNS_OF_TIME },
						["isRaid"] = true,
						["groups"] = {
							ach(425, {	-- Atiesh, Greatstaff of the Guardian
								["providers"] = {
									{ "i", 22631 },	-- Atiesh, Greatstaff of the Guardian (Priest)
									{ "i", 22589 },	-- Atiesh, Greatstaff of the Guardian (Mage)
									{ "i", 22630 },	-- Atiesh, Greatstaff of the Guardian (Warlock)
									{ "i", 22632 },	-- Atiesh, Greatstaff of the Guardian (Druid)
								},
								["classes"] = { PRIEST, MAGE, WARLOCK, DRUID },
							}),
							q(9251, {	-- Atiesh, the Befouled Greatstaff
								["qg"] = 15192,	-- Anachronos
								["sourceQuest"] = 9250,	-- Frame of Atiesh
								["maps"] = { TEMPLE_OF_AHNQIRAJ },
								["classes"] = { PRIEST, MAGE, WARLOCK, DRUID },
								["lvl"] = 60,
								["groups"] = {
									objective(1, {	-- 0/1 Staff Head of Atiesh
										["provider"] = { "i", 22733 },	-- Staff Head of Atiesh
									}),
									objective(2, {	-- 0/1 Base of Atiesh
										["provider"] = { "i", 22734 },	-- Base of Atiesh
									}),
								},
							}),
							q(9257, {	-- Atiesh, Greatstaff of the Guardian [Priest]
								["qg"] = 15192,	-- Anachronos
								["sourceQuest"] = 9251,	-- Atiesh, the Befouled Greatstaff
								["maps"] = { STRATHOLME },
								["classes"] = { PRIEST },
								["cost"] = {
									{ "i", 22737, 1 },	-- Atiesh, Greatstaff of the Guardian
								},
								["groups"] = {
									i(22631),	-- Atiesh, Greatstaff of the Guardian (Priest)
								},
							}),
							q(9270, {	-- Atiesh, Greatstaff of the Guardian [Mage]
								["qg"] = 15192,	-- Anachronos
								["sourceQuest"] = 9251,	-- Atiesh, the Befouled Greatstaff
								["maps"] = { STRATHOLME },
								["classes"] = { MAGE },
								["cost"] = {
									{ "i", 22737, 1 },	-- Atiesh, Greatstaff of the Guardian
								},
								["groups"] = {
									i(22589),	-- Atiesh, Greatstaff of the Guardian (Mage)
								},
							}),
							q(9271, {	-- Atiesh, Greatstaff of the Guardian [Warlock]
								["qg"] = 15192,	-- Anachronos
								["sourceQuest"] = 9251,	-- Atiesh, the Befouled Greatstaff
								["maps"] = { STRATHOLME },
								["classes"] = { WARLOCK },
								["cost"] = {
									{ "i", 22737, 1 },	-- Atiesh, Greatstaff of the Guardian
								},
								["groups"] = {
									i(22630),	-- Atiesh, Greatstaff of the Guardian (Warlock)
								},
							}),
							q(9269, {	-- Atiesh, Greatstaff of the Guardian [Druid]
								["qg"] = 15192,	-- Anachronos
								["sourceQuest"] = 9251,	-- Atiesh, the Befouled Greatstaff
								["maps"] = { STRATHOLME },
								["classes"] = { DRUID },
								["cost"] = {
									{ "i", 22737, 1 },	-- Atiesh, Greatstaff of the Guardian
								},
								["groups"] = {
									i(22632),	-- Atiesh, Greatstaff of the Guardian (Druid)
								},
							}),
							q(9250, {	-- Frame of Atiesh
								["provider"] = { "i", 22727 },	-- Frame of Atiesh
								["description"] = "Collect 40 of the Splinters to craft the Frame of Atiesh. This starts the quest chain for Atiesh. You will need to coordinate with your guild to get priority on Splinters.",
								["classes"] = { PRIEST, MAGE, WARLOCK, DRUID },
								["cost"] = {
									{ "i", 22726, 40 },	-- Splinter of Atiesh
								},
								["lvl"] = 60,
							}),
						},
					}),
					-- #if ANYCLASSIC
					n(ACHIEVEMENTS, {
						applyclassicphase(SOM_PHASE_ONE, i(191481, {	-- Tabard of Mastery
							["description"] = "This was obtained from killing Kel'Thuzad in Naxxramas40 on 'Season of Mastery' realms, while entire raid having the buff Undying Vanquisher that meant no one died before killing Kel'Thuzad in that raid lockout, (you could obtain Rune of Teleportation: Frostwyrm's Lair to bypass most of the raid making it so you only had to kill Sapphiron and Kel'Thuzad to obtain this aswell)\n\nSince 'Season of Mastery' servers are no longer available, this tabard is now unobtainable in classic, maybe it comes back in 'Season of Discovery?' who knows.",
							["timeline"] = { ADDED_1_14_3, REMOVED_1_15_0 },	-- Might not be available in SOD.
						})),
					}),
					-- #endif
					n(QUESTS, {
						cl(WARRIOR, {
							q(9037, {	-- Dreadnaught Helmet
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22353, 1 },	-- Desecrated Helmet
									{ "i", 22375, 15 },	-- Wartorn Plate Scrap
									{ "i", 12360, 5 },	-- Arcanite Bar
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22418),	-- Dreadnaught Helmet
								},
							}),
							q(9038, {	-- Dreadnaught Pauldrons
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22354, 1 },	-- Desecrated Pauldrons
									{ "i", 22375, 12 },	-- Wartorn Plate Scrap
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22419),	-- Dreadnaught Pauldrons
								},
							}),
							q(9034, {	-- Dreadnaught Breastplate
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22349, 1 },	-- Desecrated Breastplate
									{ "i", 22375, 25 },	-- Wartorn Plate Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22416),	-- Dreadnaught Breastplate
								},
							}),
							q(9042, {	-- Dreadnaught Bracers
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22355, 1 },	-- Desecrated Bracers
									{ "i", 22375, 6 },	-- Wartorn Plate Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22423),	-- Dreadnaught Bracers
								},
							}),
							q(9040, {	-- Dreadnaught Gauntlets
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22357, 1 },	-- Desecrated Gauntlets
									{ "i", 22375, 8 },	-- Wartorn Plate Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22421),	-- Dreadnaught Gauntlets
								},
							}),
							q(9041, {	-- Dreadnaught Waistguard
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22356, 1 },	-- Desecrated Waistguard
									{ "i", 22375, 8 },	-- Wartorn Plate Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22422),	-- Dreadnaught Waistguard
								},
							}),
							q(9036, {	-- Dreadnaught Legplates
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22352, 1 },	-- Desecrated Legplates
									{ "i", 22375, 20 },	-- Wartorn Plate Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22417),	-- Dreadnaught Legplates
								},
							}),
							q(9039, {	-- Dreadnaught Sabatons
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22358, 1 },	-- Desecrated Sabatons
									{ "i", 22375, 12 },	-- Wartorn Plate Scrap
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22420),	-- Dreadnaught Sabatons
								},
							}),
						}),
						cl(PALADIN, {
							q(9045, {	-- Redemption Headpiece
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22360, 1 },	-- Desecrated Headpiece
									{ "i", 22375, 15 },	-- Wartorn Plate Scrap
									{ "i", 12360, 5 },	-- Arcanite Bar
									{ "i", 15407, 2 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22428),	-- Redemption Headpiece
								},
							}),
							q(9046, {	-- Redemption Spaulders
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22361, 1 },	-- Desecrated Spaulders
									{ "i", 22375, 12 },	-- Wartorn Plate Scrap
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22429),	-- Redemption Spaulders
								},
							}),
							q(9043, {	-- Redemption Tunic
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22350, 1 },	-- Desecrated Tunic
									{ "i", 22375, 25 },	-- Wartorn Plate Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22425),	-- Redemption Tunic
								},
							}),
							q(9050, {	-- Redemption Wristguards
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22362, 1 },	-- Desecrated Wristguards
									{ "i", 22375, 6 },	-- Wartorn Plate Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 2 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22424),	-- Redemption Wristguards
								},
							}),
							q(9048, {	-- Redemption Handguards
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22364, 1 },	-- Desecrated Handguards
									{ "i", 22375, 8 },	-- Wartorn Plate Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22426),	-- Redemption Handguards
								},
							}),
							q(9049, {	-- Redemption Girdle
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22363, 1 },	-- Desecrated Girdle
									{ "i", 22375, 8 },	-- Wartorn Plate Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 20725, 3 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22431),	-- Redemption Girdle
								},
							}),
							q(9044, {	-- Redemption Legguards
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22359, 1 },	-- Desecrated Legguards
									{ "i", 22375, 20 },	-- Wartorn Plate Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22427),	-- Redemption Legguards
								},
							}),
							q(9047, {	-- Redemption Boots
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22365, 1 },	-- Desecrated Boots
									{ "i", 22375, 12 },	-- Wartorn Plate Scrap
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22430),	-- Redemption Boots
								},
							}),
						}),
						cl(HUNTER, {
							q(9056, {	-- Cryptstalker Headpiece
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22360, 1 },	-- Desecrated Headpiece
									{ "i", 22374, 15 },	-- Wartorn Chain Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22438),	-- Cryptstalker Headpiece
								},
							}),
							q(9057, {	-- Cryptstalker Spaulders
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22361, 1 },	-- Desecrated Spaulders
									{ "i", 22374, 12 },	-- Wartorn Chain Scrap
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22439),	-- Cryptstalker Spaulders
								},
							}),
							q(9054, {	-- Cryptstalker Tunic
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22350, 1 },	-- Desecrated Tunic
									{ "i", 22374, 25 },	-- Wartorn Chain Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22436),	-- Cryptstalker Tunic
								},
							}),
							q(9061, {	-- Cryptstalker Wristguards
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22362, 1 },	-- Desecrated Wristguards
									{ "i", 22374, 6 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 2 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22443),	-- Cryptstalker Wristguards
								},
							}),
							q(9059, {	-- Cryptstalker Handguards
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22364, 1 },	-- Desecrated Handguards
									{ "i", 22374, 8 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22441),	-- Cryptstalker Handguards
								},
							}),
							q(9060, {	-- Cryptstalker Girdle
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22363, 1 },	-- Desecrated Girdle
									{ "i", 22374, 8 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 20725, 3 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22442),	-- Cryptstalker Girdle
								},
							}),
							q(9055, {	-- Cryptstalker Legguards
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22359, 1 },	-- Desecrated Legguards
									{ "i", 22374, 20 },	-- Wartorn Chain Scrap
									{ "i", 12360, 3 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22437),	-- Cryptstalker Legguards
								},
							}),
							q(9058, {	-- Cryptstalker Boots
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22365, 1 },	-- Desecrated Boots
									{ "i", 22374, 12 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 20725, 3 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22440),	-- Cryptstalker Boots
								},
							}),
						}),
						cl(ROGUE, {
							q(9079,	{	-- Bonescythe Helmet
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22353, 1 },	-- Desecrated Helmet
									{ "i", 22373, 15 },	-- Wartorn Leather Scrap
									{ "i", 15407, 8 },	-- Cured Rugged Hide
									{ "i", 20725, 1 },	-- Nexus Crystal
									{ "g", 750000 },	-- 75g
								},
								["lvl"] = 60,
								["groups"] = {
									i(22478),	-- Bonescythe Helmet
								},
							}),
							q(9080,	{	-- Bonescythe Pauldrons
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22354, 1 },	-- Desecrated Pauldrons
									{ "i", 22373, 12 },	-- Wartorn Leather Scrap
									{ "i", 15407, 5 },	-- Cured Rugged Hide
									{ "i", 20725, 1 },	-- Nexus Crystal
									{ "g", 500000 },	-- 50g
								},
								["lvl"] = 60,
								["groups"] = {
									i(22479),	-- Bonescythe Pauldrons
								},
							}),
							q(9077,	{	-- Bonescythe Breastplate
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22349, 1 },	-- Desecrated Breastplate
									{ "i", 22373, 25 },	-- Wartorn Leather Scrap
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "i", 15407, 6 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22476),	-- Bonescythe Breastplate
								},
							}),
							q(9084,	{	-- Bonescythe Bracers
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22355, 1 },	-- Desecrated Bracers
									{ "i", 22373, 6 },	-- Wartorn Leather Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 2 },	-- Cured Rugged Hide
									{ "g", 100000 },	-- 10g
								},
								["lvl"] = 60,
								["groups"] = {
									i(22483),	-- Bonescythe Bracers
								},
							}),
							q(9082,	{	-- Bonescythe Gauntlets
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22357, 1 },	-- Desecrated Gauntlets
									{ "i", 22373, 8 },	-- Wartorn Leather Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22481),	-- Bonescythe Gauntlets
								},
							}),
							q(9083,	{	-- Bonescythe Waistguard
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22356, 1 },	-- Desecrated Waistguard
									{ "i", 22373, 8 },	-- Wartorn Leather Scrap
									{ "i", 15407, 5 },	-- Cured Rugged Hide
									{ "i", 20725, 1 },	-- Nexus Crystal
									{ "g", 150000 },	-- 15g
								},
								["lvl"] = 60,
								["groups"] = {
									i(22482),	-- Bonescythe Waistguard
								},
							}),
							q(9078,	{	-- Bonescythe Legplates
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22352, 1 },	-- Desecrated Legplates
									{ "i", 22373, 20 },	-- Wartorn Leather Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 8 },	-- Cured Rugged Hide
									{ "g", 1000000 },	-- 100g
								},
								["lvl"] = 60,
								["groups"] = {
									i(22477),	-- Bonescythe Legplates
								},
							}),
							q(9081,	{	-- Bonescythe Sabatons
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22358, 1 },	-- Desecrated Sabatons
									{ "i", 22373, 12 },	-- Wartorn Leather Scrap
									{ "i", 15407, 3 },	-- Cured Rugged Hide
									{ "i", 20725, 2 },	-- Nexus Crystal
									{ "g", 250000 },	-- 25g
								},
								["lvl"] = 60,
								["groups"] = {
									i(22480),	-- Bonescythe Sabatons
								},
							}),
						}),
						cl(PRIEST, {
							q(9113, {	-- Circlet of Faith
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22367, 1 },	-- Desecrated Circlet
									{ "i", 22376, 15 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 3 },	-- Mooncloth
									{ "i", 20725, 3 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22514),	-- Circlet of Faith
								},
							}),
							q(9114, {	-- Shoulderpads of Faith
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22368, 1 },	-- Desecrated Shoulderpads
									{ "i", 22376, 12 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 2 },	-- Mooncloth
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22515),	-- Shoulderpads of Faith
								},
							}),
							q(9111, {	-- Robe of Faith
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22351, 1 },	-- Desecrated Robe
									{ "i", 22376, 25 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22512),	-- Robe of Faith
								},
							}),
							q(9118, {	-- Bindings of Faith
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22369, 1 },	-- Desecrated Bindings
									{ "i", 22376, 6 },	-- Wartorn Cloth Scrap
									{ "i", 12363, 1 },	-- Arcane Crystal
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22519),	-- Bindings of Faith
								},
							}),
							q(9116, {	-- Gloves of Faith
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22371, 1 },	-- Desecrated Gloves
									{ "i", 22376, 8 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
								},
								["lvl"] = 60,
								["groups"] = {
									i(22517),	-- Gloves of Faith
								},
							}),
							q(9117, {	-- Belt of Faith
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22370, 1 },	-- Desecrated Belt
									{ "i", 22376, 8 },	-- Wartorn Cloth Scrap
									{ "i", 12363, 2 },	-- Arcane Crystal
									{ "i", 14342, 2 },	-- Mooncloth
								},
								["lvl"] = 60,
								["groups"] = {
									i(22518),	-- Belt of Faith
								},
							}),
							q(9112, {	-- Leggings of Faith
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22366, 1 },	-- Desecrated Leggings
									{ "i", 22376, 20 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22513),	-- Leggings of Faith
								},
							}),
							q(9115, {	-- Sandals of Faith
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22372, 1 },	-- Desecrated Sandals
									{ "i", 22376, 12 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 2 },	-- Mooncloth
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22516),	-- Sandals of Faith
								},
							}),
						}),
						cl(SHAMAN, {
							q(9070, {	-- Earthshatter Headpiece
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22360, 1 },	-- Desecrated Headpiece
									{ "i", 22374, 15 },	-- Wartorn Chain Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22466),	-- Earthshatter Headpiece
								},
							}),
							q(9071, {	-- Earthshatter Spaulders
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22361, 1 },	-- Desecrated Spaulders
									{ "i", 22374, 12 },	-- Wartorn Chain Scrap
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "i", 14342, 2 },	-- Mooncloth
								},
								["lvl"] = 60,
								["groups"] = {
									i(22467),	-- Earthshatter Spaulders
								},
							}),
							q(9068, {	-- Earthshatter Tunic
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22350, 1 },	-- Desecrated Tunic
									{ "i", 22374, 25 },	-- Wartorn Chain Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22464),	-- Earthshatter Tunic
								},
							}),
							q(9075, {	-- Earthshatter Wristguards
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22362, 1 },	-- Desecrated Wristguards
									{ "i", 22374, 6 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 2 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22471),	-- Earthshatter Wristguards
								},
							}),
							q(9073, {	-- Earthshatter Handguards
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22364, 1 },	-- Desecrated Handguards
									{ "i", 22374, 8 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22469),	-- Earthshatter Handguards
								},
							}),
							q(9074, {	-- Earthshatter Girdle
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22363, 1 },	-- Desecrated Girdle
									{ "i", 22374, 8 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 20725, 3 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22470),	-- Earthshatter Girdle
								},
							}),
							q(9069, {	-- Earthshatter Legguards
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22359, 1 },	-- Desecrated Legguards
									{ "i", 22374, 20 },	-- Wartorn Chain Scrap
									{ "i", 12360, 3 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22465),	-- Earthshatter Legguards
								},
							}),
							q(9072, {	-- Earthshatter Boots
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22365, 1 },	-- Desecrated Boots
									{ "i", 22374, 12 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 20725, 3 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22468),	-- Earthshatter Boots
								},
							}),
						}),
						cl(MAGE, {
							q(9097, {	-- Frostfire Circlet
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22367, 1 },	-- Desecrated Circlet
									{ "i", 22376, 15 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 3 },	-- Mooncloth
									{ "i", 20725, 3 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22498),	-- Frostfire Circlet
								},
							}),
							q(9098, {	-- Frostfire Shoulderpads
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22368, 1 },	-- Desecrated Shoulderpads
									{ "i", 22376, 12 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 2 },	-- Mooncloth
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22499),	-- Frostfire Shoulderpads
								},
							}),
							q(9095, {	-- Frostfire Robe
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22351, 1 },	-- Desecrated Robe
									{ "i", 22376, 25 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22496),	-- Frostfire Robe
								},
							}),
							q(9102, {	-- Frostfire Bindings
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22369, 1 },	-- Desecrated Bindings
									{ "i", 22376, 6 },	-- Wartorn Cloth Scrap
									{ "i", 12363, 1 },	-- Arcane Crystal
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22503),	-- Frostfire Bindings
								},
							}),
							q(9100, {	-- Frostfire Gloves
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22371, 1 },	-- Desecrated Gloves
									{ "i", 22376, 8 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
								},
								["lvl"] = 60,
								["groups"] = {
									i(22501),	-- Frostfire Gloves
								},
							}),
							q(9101, {	-- Frostfire Belt
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22370, 1 },	-- Desecrated Belt
									{ "i", 22376, 8 },	-- Wartorn Cloth Scrap
									{ "i", 12363, 2 },	-- Arcane Crystal
									{ "i", 14342, 2 },	-- Mooncloth
								},
								["lvl"] = 60,
								["groups"] = {
									i(22502),	-- Frostfire Belt
								},
							}),
							q(9096, {	-- Frostfire Leggings
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22366, 1 },	-- Desecrated Leggings
									{ "i", 22376, 20 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22497),	-- Frostfire Leggings
								},
							}),
							q(9099, {	-- Frostfire Sandals
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22372, 1 },	-- Desecrated Sandals
									{ "i", 22376, 12 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 2 },	-- Mooncloth
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22500),	-- Frostfire Sandals
								},
							}),
						}),
						cl(WARLOCK, {
							q(9105, {	-- Plagueheart Circlet
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22367, 1 },	-- Desecrated Circlet
									{ "i", 22376, 15 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 3 },	-- Mooncloth
									{ "i", 14344, 3 },	-- Large Brilliant Shard
								},
								["lvl"] = 60,
								["groups"] = {
									i(22506),	-- Plagueheart Circlet
								},
							}),
							q(9106, {	-- Plagueheart Shoulderpads
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22368, 1 },	-- Desecrated Shoulderpads
									{ "i", 22376, 12 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 2 },	-- Mooncloth
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22507),	-- Plagueheart Shoulderpads
								},
							}),
							q(9103, {	-- Plagueheart Robe
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22351, 1 },	-- Desecrated Robe
									{ "i", 22376, 25 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22504),	-- Plagueheart Robe
								},
							}),
							q(9110, {	-- Plagueheart Bindings
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22369, 1 },	-- Desecrated Bindings
									{ "i", 22376, 6 },	-- Wartorn Cloth Scrap
									{ "i", 12363, 1 },	-- Arcane Crystal
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22511),	-- Plagueheart Bindings
								},
							}),
							q(9108, {	-- Plagueheart Gloves
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22371, 1 },	-- Desecrated Gloves
									{ "i", 22376, 8 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
								},
								["lvl"] = 60,
								["groups"] = {
									i(22509),	-- Plagueheart Gloves
								},
							}),
							q(9109, {	-- Plagueheart Belt
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22370, 1 },	-- Desecrated Belt
									{ "i", 22376, 8 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 2 },	-- Mooncloth
									{ "i", 12363, 2 },	-- Arcane Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22510),	-- Plagueheart Belt
								},
							}),
							q(9104, {	-- Plagueheart Leggings
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22366, 1 },	-- Desecrated Leggings
									{ "i", 22376, 20 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22505),	-- Plagueheart Leggings
								},
							}),
							q(9107, {	-- Plagueheart Sandals
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22372, 1 },	-- Desecrated Sandals
									{ "i", 22376, 12 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 2 },	-- Mooncloth
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["lvl"] = 60,
								["groups"] = {
									i(22508),	-- Plagueheart Sandals
								},
							}),
						}),
						cl(DRUID, {
							q(9088,	{	-- Dreamwalker Headpiece
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22360, 1 },	-- Desecrated Headpiece
									{ "i", 22373, 15 },	-- Wartorn Leather Scrap
									{ "i", 15407, 6 },	-- Cured Rugged Hide
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22490),	-- Dreamwalker Headpiece
								},
							}),
							q(9089,	{	-- Dreamwalker Spaulders
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22361, 1 },	-- Desecrated Spaulders
									{ "i", 22373, 12 },	-- Wartorn Leather Scrap
									{ "i", 15407, 5 },	-- Cured Rugged Hide
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22491),	-- Dreamwalker Spaulders
								},
							}),
							q(9086,	{	-- Dreamwalker Tunic
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22350, 1 },	-- Desecrated Tunic
									{ "i", 22373, 25 },	-- Wartorn Leather Scrap
									{ "i", 15407, 6 },	-- Cured Rugged Hide
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22488),	-- Dreamwalker Tunic
								},
							}),
							q(9093,	{	-- Dreamwalker Wristguards
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22362, 1 },	-- Desecrated Wristguards
									{ "i", 22373, 6 },	-- Wartorn Leather Scrap
									{ "i", 15407, 2 },	-- Cured Rugged Hide
									{ "i", 12363, 1 },	-- Arcane Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22495),	-- Dreamwalker Wristguards
								},
							}),
							q(9091,	{	-- Dreamwalker Handguards
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22364, 1 },	-- Desecrated Handguards
									{ "i", 22373, 8 },	-- Wartorn Leather Scrap
									{ "i", 15407, 5 },	-- Cured Rugged Hide
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22493),	-- Dreamwalker Handguards
								},
							}),
							q(9092,	{	-- Dreamwalker Girdle
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22363, 1 },	-- Desecrated Girdle
									{ "i", 22373, 8 },	-- Wartorn Leather Scrap
									{ "i", 15407, 2 },	-- Cured Rugged Hide
									{ "i", 14342, 3 },	-- Mooncloth
								},
								["lvl"] = 60,
								["groups"] = {
									i(22494),	-- Dreamwalker Girdle
								},
							}),
							q(9087,	{	-- Dreamwalker Legguards
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22359, 1 },	-- Desecrated Legguards
									{ "i", 22373, 20 },	-- Wartorn Leather Scrap
									{ "i", 15407, 8 },	-- Cured Rugged Hide
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["lvl"] = 60,
								["groups"] = {
									i(22489),	-- Dreamwalker Legguards
								},
							}),
							q(9090,	{	-- Dreamwalker Boots
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["sourceQuest"] = 9033,	-- Echoes of War
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["repeatable"] = true,
								["cost"] = {
									{ "i", 22365, 1 },	-- Desecrated Boots
									{ "i", 22373, 12 },	-- Wartorn Leather Scrap
									{ "i", 15407, 2 },	-- Cured Rugged Hide
									{ "i", 14342, 3 },	-- Mooncloth
								},
								["lvl"] = 60,
								["groups"] = {
									i(22492),	-- Dreamwalker Boots
								},
							}),
						}),
						q(9033, {	-- Echoes of War
							["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
							["sourceQuests"] = {
								9121,	-- The Dread Citadel - Naxxramas
								9122,	-- The Dread Citadel - Naxxramas
								9123,	-- The Dread Citadel - Naxxramas
							},
							["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
							["lvl"] = 60,
							["groups"] = {
								objective(1, {	-- 0/8 Deathknight Captain slain
									["provider"] = { "n", 16145 },	-- Deathknight Captain
								}),
								objective(2, {	-- 0/3 Venom Stalker slain
									["provider"] = { "n", 15976 },	-- Venom Stalker
								}),
								objective(3, {	-- 0/5 Living Monstrosity slain
									["provider"] = { "n", 16021 },	-- Living Monstrosity
								}),
								objective(4, {	-- 0/5 Stoneskin Gargoyle slain
									["provider"] = { "n", 16168 },	-- Stoneskin Gargoyle
								}),
							},
						}),
						q(9237, {	-- Glacial Cloak
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["OnUpdate"] = [[_.OnUpdateForOmarionsHandbook]],
							["cost"] = {
								{ "i", 22682, 5 },	-- Frozen Rune
								{ "i",  7080, 2 },	-- Essence of Water
								{ "i", 14048, 4 },	-- Bolt of Runecloth
								{ "i", 14227, 4 },	-- Ironweb Spider Silk
								{ "g", 2000000 },	-- 200g
							},
							["lvl"] = 60,
							["groups"] = {
								i(22658),	-- Glacial Cloak
							},
						}),
						q(9239, {	-- Glacial Gloves
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["classes"] = { PRIEST, MAGE, WARLOCK },
							["OnUpdate"] = [[_.OnUpdateForOmarionsHandbook]],
							["cost"] = {
								{ "i", 22682, 5 },	-- Frozen Rune
								{ "i",  7080, 4 },	-- Essence of Water
								{ "i", 14048, 4 },	-- Bolt of Runecloth
								{ "i", 14227, 2 },	-- Ironweb Spider Silk
								{ "g", 2000000 },	-- 200g
							},
							["lvl"] = 60,
							["groups"] = {
								i(22654),	-- Glacial Gloves
							},
						}),
						q(9240, {	-- Glacial Vest
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["classes"] = { PRIEST, MAGE, WARLOCK },
							["OnUpdate"] = [[_.OnUpdateForOmarionsHandbook]],
							["cost"] = {
								{ "i", 22682, 8 },	-- Frozen Rune
								{ "i",  7080, 6 },	-- Essence of Water
								{ "i", 14048, 8 },	-- Bolt of Runecloth
								{ "i", 14227, 4 },	-- Ironweb Spider Silk
								{ "g", 3000000 },	-- 300g
							},
							["lvl"] = 60,
							["groups"] = {
								i(22652),	-- Glacial Vest
							},
						}),
						q(9238, {	-- Glacial Wrists
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["classes"] = { PRIEST, MAGE, WARLOCK },
							["OnUpdate"] = [[_.OnUpdateForOmarionsHandbook]],
							["cost"] = {
								{ "i", 22682, 4 },	-- Frozen Rune
								{ "i",  7080, 2 },	-- Essence of Water
								{ "i", 14048, 2 },	-- Bolt of Runecloth
								{ "i", 14227, 2 },	-- Ironweb Spider Silk
								{ "g", 2000000 },	-- 200g
							},
							["lvl"] = 60,
							["groups"] = {
								i(22655),	-- Glacial Wrists
							},
						}),
						q(9235, {	-- Icebane Bracers
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["classes"] = { WARRIOR, PALADIN },
							["OnUpdate"] = [[_.OnUpdateForOmarionsHandbook]],
							["cost"] = {
								{ "i", 22682, 4 },	-- Frozen Rune
								{ "i", 7080, 2 },	-- Essence of Water
								{ "i", 12359, 12 },	-- Thorium Bar
								{ "i", 12360, 2 },	-- Arcanite Bar
								{ "g", 2000000 },	-- 200g
							},
							["lvl"] = 60,
							["groups"] = {
								i(22671),	-- Icebane Bracers
							},
						}),
						q(9236, {	-- Icebane Breastplate
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["classes"] = { WARRIOR, PALADIN },
							["OnUpdate"] = [[_.OnUpdateForOmarionsHandbook]],
							["cost"] = {
								{ "i", 22682, 8 },	-- Frozen Rune
								{ "i", 7080, 4 },	-- Essence of Water
								{ "i", 12359, 16 },	-- Thorium Bar
								{ "i", 12360, 2 },	-- Arcanite Bar
								{ "g", 3000000 },	-- 300g
							},
							["lvl"] = 60,
							["groups"] = {
								i(22669),	-- Icebane Breastplate
							},
						}),
						q(9234, {	-- Icebane Gauntlets
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["classes"] = { WARRIOR, PALADIN },
							["OnUpdate"] = [[_.OnUpdateForOmarionsHandbook]],
							["cost"] = {
								{ "i", 22682, 5 },	-- Frozen Rune
								{ "i", 7080, 2 },	-- Essence of Water
								{ "i", 12359, 12 },	-- Thorium Bar
								{ "i", 12360, 2 },	-- Arcanite Bar
								{ "g", 2000000 },	-- 200g
							},
							["lvl"] = 60,
							["groups"] = {
								i(22670),	-- Icebane Gauntlets
							},
						}),
						q(9244, {	-- Icy Scale Bracers
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["classes"] = { HUNTER, SHAMAN },
							["OnUpdate"] = [[_.OnUpdateForOmarionsHandbook]],
							["cost"] = {
								{ "i", 22682, 4 },	-- Frozen Rune
								{ "i",  7080, 5 },	-- Essence of Water
								{ "i", 15407, 3 },	-- Cured Rugged Hide
								{ "i", 15408, 16 },	-- Heavy Scorpid Scale
								{ "g", 2000000 },	-- 200g
							},
							["lvl"] = 60,
							["groups"] = {
								i(22665),	-- Icy Scale Bracers
							},
						}),
						q(9246, {	-- Icy Scale Breastplate
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["classes"] = { HUNTER, SHAMAN },
							["OnUpdate"] = [[_.OnUpdateForOmarionsHandbook]],
							["cost"] = {
								{ "i", 22682, 8 },	-- Frozen Rune
								{ "i",  7080, 7 },	-- Essence of Water
								{ "i", 15407, 5 },	-- Cured Rugged Hide
								{ "i", 15408, 24 },	-- Heavy Scorpid Scale
								{ "g", 3000000 },	-- 300g
							},
							["lvl"] = 60,
							["groups"] = {
								i(22664),	-- Icy Scale Breastplate
							},
						}),
						q(9245, {	-- Icy Scale Gauntlets
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["classes"] = { HUNTER, SHAMAN },
							["OnUpdate"] = [[_.OnUpdateForOmarionsHandbook]],
							["cost"] = {
								{ "i", 22682, 5 },	-- Frozen Rune
								{ "i",  7080, 5 },	-- Essence of Water
								{ "i", 15407, 3 },	-- Cured Rugged Hide
								{ "i", 15408, 16 },	-- Heavy Scorpid Scale
								{ "g", 2000000 },	-- 200g
							},
							["lvl"] = 60,
							["groups"] = {
								i(22666),	-- Icy Scale Gauntlets
							},
						}),
						q(9233, {	-- Omarion's Handbook
							["provider"] = { "i", 22719 },	-- Omarion's Handbook
							["description"] = "You must not have a profession above 270 skill for you to get this item from Omarion.",
							["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
							["OnUpdate"] = [[_.OnUpdateForOmarionsHandbook]],
							["lvl"] = 60,
						}),
						q(9241, {	-- Polar Bracers
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["classes"] = { ROGUE, DRUID },
							["OnUpdate"] = [[_.OnUpdateForOmarionsHandbook]],
							["cost"] = {
								{ "i", 22682, 4 },	-- Frozen Rune
								{ "i",  7080, 3 },	-- Essence of Water
								{ "i", 12810, 12 },	-- Enchanted Leather
								{ "i", 15407, 3 },	-- Cured Rugged Hide
								{ "g", 2000000 },	-- 200g
							},
							["lvl"] = 60,
							["groups"] = {
								i(22663),	-- Polar Bracers
							},
						}),
						q(9242, {	-- Polar Gloves
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["classes"] = { ROGUE, DRUID },
							["OnUpdate"] = [[_.OnUpdateForOmarionsHandbook]],
							["cost"] = {
								{ "i", 22682, 5 },	-- Frozen Rune
								{ "i",  7080, 3 },	-- Essence of Water
								{ "i", 15407, 3 },	-- Cured Rugged Hide
								{ "i", 12810, 12 },	-- Enchanted Leather
								{ "g", 2000000 },	-- 200g
							},
							["lvl"] = 60,
							["groups"] = {
								i(22662),	-- Polar Gloves
							},
						}),
						q(9243, {	-- Polar Tunic
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["classes"] = { ROGUE, DRUID },
							["OnUpdate"] = [[_.OnUpdateForOmarionsHandbook]],
							["cost"] = {
								{ "i", 22682, 8 },	-- Frozen Rune
								{ "i",  7080, 5 },	-- Essence of Water
								{ "i", 15407, 5 },	-- Cured Rugged Hide
								{ "i", 12810, 16 },	-- Enchanted Leather
								{ "g", 3000000 },	-- 300g
							},
							["lvl"] = 60,
							["groups"] = {
								i(22661),	-- Polar Tunic
							},
						}),
						q(9230, {	-- Ramaladni's Icy Grasp
							["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
							["sourceQuest"] = 9229,	-- The Fate of Ramaldni
							["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
							["cost"] = {
								{ "i", 22682, 1 },	-- Frozen Rune
								{ "i", 12361, 1 },	-- Blue Sapphire
								{ "i", 12360, 1 },	-- Arcanite Bar
							},
							["lvl"] = 60,
							["groups"] = {
								i(22707),	-- Ramaladni's Icy Grasp
							},
						}),
						q(9121, {	-- The Dread Citadel - Naxxramas [Honored]
							["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
							["minReputation"] = { FACTION_ARGENT_DAWN, HONORED },	-- Argent Dawn, Honored.
							["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
							["altQuests"] = {
								9122,	-- The Dread Citadel - Naxxramas [Revered]
								9123,	-- The Dread Citadel - Naxxramas [Exalted]
								9378,	-- Attunement [HIDDEN QUEST TRIGGER]
							},
							["cost"] = {
								{ "i", 12363, 5 },	-- Arcane Crystal
								{ "i", 14344, 2 },	-- Large Brilliant Shard
								{ "i", 20725, 2 },	-- Nexus Crystal
								{ "i", 12811, 1 },	-- Righteous Orb
								{ "g", 600000 },	-- 60g
							},
							["lvl"] = 60,
						}),
						q(9122, {	-- The Dread Citadel - Naxxramas [Revered]
							["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
							["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
							["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
							["altQuests"] = {
								9121,	-- The Dread Citadel - Naxxramas [Honored]
								9123,	-- The Dread Citadel - Naxxramas [Exalted]
								9378,	-- Attunement [HIDDEN QUEST TRIGGER]
							},
							["cost"] = {
								{ "i", 12363, 2 },	-- Arcane Crystal
								{ "i", 20725, 1 },	-- Nexus Crystal
								{ "g", 300000 },	-- 30g
							},
							["lvl"] = 60,
						}),
						q(9123, {	-- The Dread Citadel - Naxxramas [Exalted]
							["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
							["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
							["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
							["altQuests"] = {
								9121,	-- The Dread Citadel - Naxxramas [Honored]
								9122,	-- The Dread Citadel - Naxxramas [Revered]
								9378,	-- Attunement [HIDDEN QUEST TRIGGER]
							},
							["lvl"] = 60,
						}),
						q(9120, {	-- The Fall of Kel'Thuzad
							["provider"] = { "i", 22520 },	-- The Phylactery of Kel'Thuzad
							["lvl"] = 60,
							["groups"] = {
								i(23206),	-- Mark of the Champion
								i(23207),	-- Mark of the Champion
							},
						}),
						q(9229, {	-- The Fate of Ramaladni
							["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
							["sourceQuest"] = 9033,	-- Echoes of War
							["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
							["lvl"] = 60,
							["groups"] = {
								objective(1, {	-- 0/1 Fate of Ramaladni
									["provider"] = { "i", 22708 },	-- Fate of Ramaladni
								}),
							},
						}),
						q(9232, {	-- The Only Song I Know...
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["sourceQuest"] = 9033,	-- Echoes of War
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["cost"] = {
								{ "i", 22682, 2 },	-- Frozen Rune
								{ "i",  7080, 2 },	-- Essence of Water
								{ "i", 12361, 2 },	-- Blue Sapphire
								{ "g", 300000 },	-- 30g
							},
							["lvl"] = 60,
							["groups"] = {
								i(22700),	-- Glacial Leggings
								i(22699),	-- Icebane Leggings
								i(22702),	-- Icy Scale Leggings
								i(22701),	-- Polar Leggings
							},
						}),
					}),
					n(ZONE_DROPS, {
						i(22708),	-- Fate of Ramaladni
						i(22682, {	-- Frozen Rune
							["description"] = "Use a Word of Thawing on Frozen Rune objects around Naxx to collect 3-6 of these.",
							["cost"] = { { "i", 23055, 1 } },	-- Word of Thawing
						}),
						i(22374),	-- Wartorn Chain Scrap
						i(22376),	-- Wartorn Cloth Scrap
						i(22373),	-- Wartorn Leather Scrap
						i(22375),	-- Wartorn Plate Scrap
						i(23055, {	-- Word of Thawing
							["description"] = "These can be used to loot the Frozen Runes scattered around the inside of Naxxramas.",
						}),
						i(23221),	-- Misplaced Servo Arm
						i(23044),	-- Harbinger of Doom
						i(23238),	-- Stygian Buckler
						i(23664),	-- Pauldrons of Elemental Fury
						i(23667),	-- Spaulders of the Grand Crusader
						i(23226),	-- Ghoul Skin Tunic
						i(23069),	-- Necro-Knight's Garb
						i(23666),	-- Belt of the Grand Crusader
						i(23663),	-- Girdle of Elemental Fury
						i(23665),	-- Leggings of Elemental Fury
						i(23668),	-- Leggings of the Grand Crusader
						i(23237),	-- Ring of the Eternal Flame
					}),
					n(COMMON_BOSS_DROPS, {
						-- Helms
						-- Thaddius Only

						-- Shoulders
						i(22354, {	-- Desecrated Pauldrons
							["crs"] = {
								16028,	-- Patchwerk
								15931,	-- Grobbulus
								15932,	-- Gluth
							},
						}),
						i(22368, {	-- Desecrated Shoulderpads
							["crs"] = {
								16028,	-- Patchwerk
								15931,	-- Grobbulus
								15932,	-- Gluth
							},
						}),
						i(22361, {	-- Desecrated Spaulders
							["crs"] = {
								16028,	-- Patchwerk
								15931,	-- Grobbulus
								15932,	-- Gluth
							},
						}),

						-- Chest
						-- Four Horsemen Only

						-- Bracers
						i(22369, {	-- Desecrated Bindings
							["crs"] = {
								15956,	-- Anub'Rekhan
								15953,	-- Grand Widow Faerlina
								15932,	-- Gluth
							},
						}),
						i(22355, {	-- Desecrated Bracers
							["crs"] = {
								15956,	-- Anub'Rekhan
								15953,	-- Grand Widow Faerlina
								15932,	-- Gluth
							},
						}),
						i(22362, {	-- Desecrated Wristguards
							["crs"] = {
								15956,	-- Anub'Rekhan
								15953,	-- Grand Widow Faerlina
								15932,	-- Gluth
							},
						}),

						-- Gloves
						-- Maexxna Only

						-- Belts
						i(22370, {	-- Desecrated Belt
							["crs"] = {
								15954,	-- Noth the Plaguebringer
								15936,	-- Heigan the Unclean
								15932,	-- Gluth
							},
						}),
						i(22363, {	-- Desecrated Girdle
							["crs"] = {
								15954,	-- Noth the Plaguebringer
								15936,	-- Heigan the Unclean
								15932,	-- Gluth
							},
						}),
						i(22356, {	-- Desecrated Waistguard
							["crs"] = {
								15954,	-- Noth the Plaguebringer
								15936,	-- Heigan the Unclean
								15932,	-- Gluth
							},
						}),

						-- Legs
						-- Loatheb Only

						-- Boots
						i(22365, {	-- Desecrated Boots
							["crs"] = {
								16061,	-- Instructor Razuvious
								16060,	-- Gothik the Harvester
								15932,	-- Gluth
							},
						}),
						i(22358, {	-- Desecrated Sabatons
							["crs"] = {
								16061,	-- Instructor Razuvious
								16060,	-- Gothik the Harvester
								15932,	-- Gluth
							},
						}),
						i(22372, {	-- Desecrated Sandals
							["crs"] = {
								16061,	-- Instructor Razuvious
								16060,	-- Gothik the Harvester
								15932,	-- Gluth
							},
						}),

						i(22726, {	-- Splinter of Atiesh
							["classes"] = { PRIEST, MAGE, WARLOCK, DRUID },
							["crs"] = {
								15956,	-- Anub'Rekhan
								15953,	-- Grand Widow Faerlina
								15952,	-- Maexxna
								15954,	-- Noth the Plaguebringer
								15936,	-- Heigan the Unclean
								16011,	-- Loatheb
								16061,	-- Instructor Razuvious
								16060,	-- Gothik the Harvester
								16062,	-- Highlord Mograine <The Ashbringer>
								16028,	-- Patchwerk
								15931,	-- Grobbulus
								15932,	-- Gluth
								15928,	-- Thaddius
							},
						}),
					}),
					n(NAXX_ARACHNID_QUARTER, {
						["icon"] = 135442,
						["groups"] = {
							n(15956, {	-- Anub'Rekhan
								i(22937),	-- Gem of Nerubis
								i(22935),	-- Touch of Frost
								i(22938),	-- Cryptfiend Silk Cloak
								i(22936),	-- Wristguards of Vengeance
								i(22939),	-- Band of Unanswered Prayers
							}),
							n(15953, {	-- Grand Widow Faerlina
								i(22942),	-- The Widow's Embrace
								i(22806),	-- Widow's Remorse
								i(22943),	-- Malice Stone Pendant
								i(22940),	-- Icebane Pauldrons
								i(22941),	-- Polar Shoulder Pads
							}),
							n(15952, {	-- Maexxna
								i(22357),	-- Desecrated Gauntlets
								i(22371),	-- Desecrated Gloves
								i(22364),	-- Desecrated Handguards
								i(22804),	-- Maexxna's Fang
								i(22807),	-- Wraith Blade
								i(22947),	-- Pendant of Forgotten Names
								i(23220),	-- Crystal Webbed Robe
								i(22954),	-- Kiss of the Spider
							}),
						},
					}),
					n(NAXX_PLAGUE_QUARTER, {
						["icon"] = 136182,
						["groups"] = {
							n(15954, {	-- Noth the Plaguebringer
								i(22816),	-- Hatchet of Sundered Bone
								i(23029),	-- Noth's Frigid Heart
								i(23030),	-- Cloak of the Scourge
								i(23031),	-- Band of the Inevitable
								i(23028),	-- Hailstone Band
								i(23006),	-- Libram of Light
								i(23005),	-- Totem of Flowing Water
							}),
							n(15936, {	-- Heigan the Unclean
								i(23019),	-- Icebane Helmet
								i(23033),	-- Icy Scale Coif
								i(23035),	-- Preceptor's Hat
								i(23036),	-- Necklace of Necropsy
								i(23068),	-- Legplates of Carnage
							}),
							n(16011, {	-- Loatheb
								i(22366),	-- Desecrated Leggings
								i(22359),	-- Desecrated Legguards
								i(22352),	-- Desecrated Legplates
								i(22800),	-- Brimstone Staff
								i(23039),	-- The Eye of Nerub
								i(23038),	-- Band of Unnatural Forces
								i(23037),	-- Ring of Spiritual Fervor
								i(23042),	-- Loatheb's Reflection
							}),
						},
					}),
					n(NAXX_MILITARY_QUARTER, {
						["icon"] = 136225,
						["groups"] = {
							n(16365, {	-- Master Craftsman Omarion <Brotherhood of the Light>
								["lore"] = "Omarion is an artisan blacksmithing, leatherworking, and tailoring craftsman. Unfortunately he was gravely injured inside Naxxramas and doesn't have much time left. He is willing to teach other master crafters his knowledge so it doesn't die with him.\n\nOmarion can teach the following plans and patterns to master craftsmen who have the required reputation with the Argent Dawn.",
								["timeline"] = { ADDED_1_11_1 },
								["groups"] = {
									i(22719, {	-- Omarion's Handbook
										["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
										["description"] = "Non-crafters can take his handbook to Craftsman Wilhelm at Light's Hope Chapel who can make all the items as well, as long as the players provide the materials and pay a hefty fee.",
									}),
									{
										["itemID"] = 22685,	-- Pattern: Glacial Cloak
										["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
									},
									{
										["itemID"] = 22684,	-- Pattern: Glacial Gloves
										["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
									},
									{
										["itemID"] = 22686,	-- Pattern: Glacial Vest
										["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
									},
									{
										["itemID"] = 22687,	-- Pattern: Glacial Wrists
										["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
									},
									r(28244, {	-- Icebane Bracers (RECIPE!)
										["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
										["requireSkill"] = BLACKSMITHING,
									}),
									r(28242, {	-- Icebane Breastplate (RECIPE!)
										["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
										["requireSkill"] = BLACKSMITHING,
									}),
									r(28243, {	-- Icebane Gauntlets (RECIPE!)
										["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
										["requireSkill"] = BLACKSMITHING,
									}),
									r(28224, {	-- Icy Scale Bracers (RECIPE!)
										["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
										["requireSkill"] = LEATHERWORKING,
									}),
									r(28222, {	-- Icy Scale Breastplate (RECIPE!)
										["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Revered.
										["requireSkill"] = LEATHERWORKING,
									}),
									r(28223, {	-- Icy Scale Gauntlets (RECIPE!)
										["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
										["requireSkill"] = LEATHERWORKING,
									}),
									r(28221, {	-- Polar Bracers (RECIPE!)
										["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
										["requireSkill"] = LEATHERWORKING,
									}),
									r(28220, {	-- Polar Gloves (RECIPE!)
										["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
										["requireSkill"] = LEATHERWORKING,
									}),
									r(28219, {	-- Polar Tunic (RECIPE!)
										["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Revered.
										["requireSkill"] = LEATHERWORKING,
									}),
								},
							}),
							n(16061, {	-- Instructor Razuvious
								i(23014),	-- Iblis, Blade of the Fallen Seraph
								i(23009),	-- Wand of the Whispering Dead
								i(23017),	-- Veil of Eclipse
								i(23219),	-- Girdle of the Mentor
								i(23018),	-- Signet of the Fallen Defender
								i(23004),	-- Idol of Longevity
							}),
							n(16060, {	-- Gothik the Harvester
								i(23032),	-- Glacial Headdress
								i(23020),	-- Polar Helmet
								i(23023),	-- Sadist's Collar
								i(23021),	-- The Soul Harvester's Bindings
								i(23073),	-- Boots of Displacement
							}),
							n(THE_FOUR_HORSEMEN, {
								["qgs"] = {
									16062,	-- Highlord Mograine <The Ashbringer>
									16065,	-- Lady Blaumeux
									16063,	-- Sir Zeliek
									16064,	-- Thane Korth'azz
								},
								["provider"] = { "o", 181366 },	-- Four Horseman Chest
								["modelScale"] = 2,
								["groups"] = {
									i(22349),	-- Desecrated Breastplate
									i(22351),	-- Desecrated Robe
									i(22350),	-- Desecrated Tunic
									-- #if ANYCLASSIC
									i(13262, {	-- Ashbringer
										["lore"] = "This is here so that you can quickly compare the Corrupted Ashbringer with the original Ashbringer model. It was never available to players.\n\nThis weapon was eventually turned into an Artifact weapon with an updated model for the Legion expansion for Retribution Paladins.",
										["timeline"] = { CREATED_1_11_1 },
										["collectible"] = false,
									}),
									-- #endif
									i(22691),	-- Corrupted Ashbringer
									i(22809),	-- Maul of the Redeemed Crusader
									i(22811),	-- Soulstring
									i(23071),	-- Leggings of Apocalypse
									i(23025),	-- Seal of the Damned
									i(23027),	-- Warmth of Forgiveness
								},
							}),
						},
					}),
					n(NAXX_CONSTRUCT_QUARTER, {
						["icon"] = 136118,
						["groups"] = {
							n(16028, {	-- Patchwerk
								["modelScale"] = 2,
								["groups"] = {
									i(22815),	-- Severance
									i(22818),	-- The Plague Bearer
									i(22820),	-- Wand of Fates
									i(22960),	-- Cloak of Suturing
									i(22961),	-- Band of Reanimation
								},
							}),
							n(15931, {	-- Grobbulus
								["modelScale"] = 3,
								["groups"] = {
									i(22803),	-- Midnight Haze
									i(22988),	-- The End of Dreams
									i(22810),	-- Toxin Injector
									i(22968),	-- Glacial Mantle
									i(22967),	-- Icy Scale Spaulders
								},
							}),
							n(15932, {	-- Gluth
								i(22813),	-- Claymore of Unholy Might
								i(23075),	-- Death's Bargain
								i(22994),	-- Digested Hand of Power
								i(22981),	-- Gluth's Missing Collar
								i(22983),	-- Rime Covered Mantle
							}),
							n(15928, {	-- Thaddius
								i(22367),	-- Desecrated Circlet
								i(22360),	-- Desecrated Headpiece
								i(22353),	-- Desecrated Helmet
								i(22801),	-- Spire of Twilight
								i(22808),	-- The Castigator
								i(23000),	-- Plated Abomination Ribcage
								i(23070),	-- Leggings of Polarity
								i(23001),	-- Eye of Diminution
							}),
						},
					}),
					n(NAXX_UPPER_NECROPOLIS, {
						["icon"] = 134155,
						["groups"] = {
							n(15989, {	-- Sapphiron
								["modelScale"] = 2,
								["groups"] = {
									i(23242),	-- Claw of the Frost Wyrm
									i(23043),	-- The Face of Death
									i(23049),	-- Sapphiron's Left Eye
									i(23048),	-- Sapphiron's Right Eye
									i(23050),	-- Cloak of the Necropolis
									i(23045),	-- Shroud of Dominion
									i(23072, {	-- Fists of the Unrelenting
										-- #if BEFORE TBC
										["description"] = "These were made available after the TBC Prepatch.",
										-- #endif
										["timeline"] = { CREATED_1_11_1, ADDED_2_0_1, REMOVED_3_0_2 },
									}),
									i(23047),	-- Eye of the Dead
									i(23040),	-- Glyph of Deflection
									i(23041),	-- Slayer's Crest
									i(23046),	-- The Restrained Essence of Sapphiron
									i(23549),	-- Fortitude of the Scourge
									i(23548),	-- Might of the Scourge
									i(23545),	-- Power of the Scourge
									i(23547),	-- Resilience of the Scourge
								},
							}),
							n(15990, {	-- Kel'Thuzad
								i(22520),	-- The Phylactery of Kel'Thuzad
								i(22733, {	-- Staff Head of Atiesh
									["classes"] = { PRIEST, MAGE, WARLOCK, DRUID },
								}),
								i(22821),	-- Doomfinger
								i(23054),	-- Gressil, Dawn of Ruin
								i(23056),	-- Hammer of the Twisting Nether
								i(22802),	-- Kingsfall
								i(22798),	-- Might of Menethil
								i(22812),	-- Nerubian Slavemaker
								i(22799),	-- Soulseeker
								i(23577),	-- The Hungering Cold
								i(22819),	-- Shield of Condemnation
								i(23057),	-- Gem of Trapped Innocents
								i(23053),	-- Stormrage's Talisman of Seething
								i(23060),	-- Bonescythe Ring
								i(23062),	-- Frostfire Ring
								i(23063),	-- Plagueheart Ring
								i(23061),	-- Ring of Faith
								i(23066),	-- Ring of Redemption
								i(23067),	-- Ring of the Cryptstalker
								i(23059),	-- Ring of the Dreadnaught
								i(23064),	-- Ring of the Dreamwalker
								i(23065),	-- Ring of the Earthshatterer
							}),
						},
					}),
			-- #if AFTER WRATH
				},
			})),
			-- #endif
		},
	})),
}
-- #if BEFORE WRATH
)
-- #endif
));