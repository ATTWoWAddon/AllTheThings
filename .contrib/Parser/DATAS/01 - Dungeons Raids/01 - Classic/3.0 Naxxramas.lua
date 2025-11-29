-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
THE_FOUR_HORSEMEN = createHeader({
	readable = "The Four Horsemen",
	icon = 132264,
	text = {
		en = "The Four Horsemen",
		de = "Die Vier Reiter",
		es = "Los Cuatro Jinetes",
		mx = "Los Cuatro Jinetes",
		fr = "Les quatre cavaliers",
		it = "I Cavalieri dell'Apocalisse",
		ko = "4인 기사단",
		pt = "Os Quatro Cavaleiros",
		ru = "Четыре Всадника",
		cn = "天启四骑士",
		tw = "四騎士",
	},
});
ExportDB.OnUpdateDB.OMARIONS_HANDBOOK = [[~function(t)
	t.visible = true;
	t.collectible = nil;
	if _.MODE_DEBUG_OR_ACCOUNT or _.IsQuestFlaggedCompleted(9233) or C_QuestLog.IsOnQuest(9233) then
		return false;
	else
		for spellID,skills in pairs(_.CurrentCharacter.ActiveSkills) do
			if (spellID == 2018 or spellID == 2108 or spellID == 3908) and skills[1] > 270 then
				t.collectible = false;
				t.visible = false;
				return true;
			end
		end
	end
end]];
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC,
-- #if BEFORE WRATH
applyclassicphase(PHASE_SIX,
-- #endif
{
	inst(754, bubbleDownSelf({ ["timeline"] = { ADDED_1_11_0, REMOVED_3_0_2 } }, {	-- Naxxramas
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
		["mapID"] = NAXXRAMAS,
		["maps"] = { NAXXRAMAS_LEVEL2, NAXXRAMAS_LEVEL3, NAXXRAMAS_LEVEL4, NAXXRAMAS_LEVEL5, NAXXRAMAS_LEVEL6 },
		-- #if AFTER CATA
		["sharedLockout"] = 1,
		-- #endif
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
								["sourceQuest"] = 9250,	-- Frame of Atiesh
								["qg"] = 15192,	-- Anachronos
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
								["sourceQuest"] = 9251,	-- Atiesh, the Befouled Greatstaff
								["qg"] = 15192,	-- Anachronos
								["maps"] = { STRATHOLME },
								["cost"] = {
									{ "i", 22737, 1 },	-- Atiesh, Greatstaff of the Guardian
								},
								["classes"] = { PRIEST },
								["groups"] = {
									i(22631),	-- Atiesh, Greatstaff of the Guardian (Priest)
								},
							}),
							q(9270, {	-- Atiesh, Greatstaff of the Guardian [Mage]
								["sourceQuest"] = 9251,	-- Atiesh, the Befouled Greatstaff
								["qg"] = 15192,	-- Anachronos
								["maps"] = { STRATHOLME },
								["cost"] = {
									{ "i", 22737, 1 },	-- Atiesh, Greatstaff of the Guardian
								},
								["classes"] = { MAGE },
								["groups"] = {
									i(22589),	-- Atiesh, Greatstaff of the Guardian (Mage)
								},
							}),
							q(9271, {	-- Atiesh, Greatstaff of the Guardian [Warlock]
								["sourceQuest"] = 9251,	-- Atiesh, the Befouled Greatstaff
								["qg"] = 15192,	-- Anachronos
								["maps"] = { STRATHOLME },
								["cost"] = {
									{ "i", 22737, 1 },	-- Atiesh, Greatstaff of the Guardian
								},
								["classes"] = { WARLOCK },
								["groups"] = {
									i(22630),	-- Atiesh, Greatstaff of the Guardian (Warlock)
								},
							}),
							q(9269, {	-- Atiesh, Greatstaff of the Guardian [Druid]
								["sourceQuest"] = 9251,	-- Atiesh, the Befouled Greatstaff
								["qg"] = 15192,	-- Anachronos
								["maps"] = { STRATHOLME },
								["cost"] = {
									{ "i", 22737, 1 },	-- Atiesh, Greatstaff of the Guardian
								},
								["classes"] = { DRUID },
								["groups"] = {
									i(22632),	-- Atiesh, Greatstaff of the Guardian (Druid)
								},
							}),
							q(9250, {	-- Frame of Atiesh
								["description"] = "Collect 40 of the Splinters to craft the Frame of Atiesh. This starts the quest chain for Atiesh. You will need to coordinate with your guild to get priority on Splinters.",
								["provider"] = { "i", 22727 },	-- Frame of Atiesh
								["cost"] = {
									{ "i", 22726, 40 },	-- Splinter of Atiesh
								},
								["classes"] = { PRIEST, MAGE, WARLOCK, DRUID },
								["lvl"] = 60,
							}),
						},
					}),
					-- #if ANYCLASSIC
					n(ACHIEVEMENTS, {
						applyclassicphase(SOM_PHASE_ONE, ach(15637, {	-- The Immortal (Season of Mastery)
							["timeline"] = { ADDED_1_14_3, REMOVED_1_15_0 },	-- Was only available in Season of Mastery
						})),
						applyclassicphase(SOM_PHASE_ONE, i(191481, {	-- Tabard of Mastery
							["description"] = "This was obtained from killing Kel'Thuzad in Naxxramas40 on 'Season of Mastery' realms, while entire raid having the buff Undying Vanquisher that meant no one died before killing Kel'Thuzad in that raid lockout, (you could obtain Rune of Teleportation: Frostwyrm's Lair to bypass most of the raid making it so you only had to kill Sapphiron and Kel'Thuzad to obtain this aswell)\n\nSince 'Season of Mastery' servers are no longer available, this tabard is now unobtainable in classic, maybe it comes back in 'Season of Discovery?' who knows.",
							["timeline"] = { ADDED_1_14_3, REMOVED_1_15_0 },	-- Not be available in SOD.
						})),
					}),
					-- #endif
					n(QUESTS,
					-- #if SEASON_OF_DISCOVERY
					bubbleDown({ ["timeline"] = { REMOVED_1_15_6 } },
					-- #endif
					{
						cl(WARRIOR, {
							q(9037, {	-- Dreadnaught Helmet
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22353, 1 },	-- Desecrated Helmet
									{ "i", 22375, 15 },	-- Wartorn Plate Scrap
									{ "i", 12360, 5 },	-- Arcanite Bar
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22418),	-- Dreadnaught Helmet
								},
							}),
							q(9038, {	-- Dreadnaught Pauldrons
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22354, 1 },	-- Desecrated Pauldrons
									{ "i", 22375, 12 },	-- Wartorn Plate Scrap
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22419),	-- Dreadnaught Pauldrons
								},
							}),
							q(9034, {	-- Dreadnaught Breastplate
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22349, 1 },	-- Desecrated Breastplate
									{ "i", 22375, 25 },	-- Wartorn Plate Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22416),	-- Dreadnaught Breastplate
								},
							}),
							q(9042, {	-- Dreadnaught Bracers
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22355, 1 },	-- Desecrated Bracers
									{ "i", 22375, 6 },	-- Wartorn Plate Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22423),	-- Dreadnaught Bracers
								},
							}),
							q(9040, {	-- Dreadnaught Gauntlets
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22357, 1 },	-- Desecrated Gauntlets
									{ "i", 22375, 8 },	-- Wartorn Plate Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22421),	-- Dreadnaught Gauntlets
								},
							}),
							q(9041, {	-- Dreadnaught Waistguard
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22356, 1 },	-- Desecrated Waistguard
									{ "i", 22375, 8 },	-- Wartorn Plate Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22422),	-- Dreadnaught Waistguard
								},
							}),
							q(9036, {	-- Dreadnaught Legplates
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22352, 1 },	-- Desecrated Legplates
									{ "i", 22375, 20 },	-- Wartorn Plate Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22417),	-- Dreadnaught Legplates
								},
							}),
							q(9039, {	-- Dreadnaught Sabatons
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22358, 1 },	-- Desecrated Sabatons
									{ "i", 22375, 12 },	-- Wartorn Plate Scrap
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22420),	-- Dreadnaught Sabatons
								},
							}),
						}),
						cl(PALADIN, {
							q(9045, {	-- Redemption Headpiece
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22360, 1 },	-- Desecrated Headpiece
									{ "i", 22375, 15 },	-- Wartorn Plate Scrap
									{ "i", 12360, 5 },	-- Arcanite Bar
									{ "i", 15407, 2 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22428),	-- Redemption Headpiece
								},
							}),
							q(9046, {	-- Redemption Spaulders
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22361, 1 },	-- Desecrated Spaulders
									{ "i", 22375, 12 },	-- Wartorn Plate Scrap
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22429),	-- Redemption Spaulders
								},
							}),
							q(9043, {	-- Redemption Tunic
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22350, 1 },	-- Desecrated Tunic
									{ "i", 22375, 25 },	-- Wartorn Plate Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22425),	-- Redemption Tunic
								},
							}),
							q(9050, {	-- Redemption Wristguards
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22362, 1 },	-- Desecrated Wristguards
									{ "i", 22375, 6 },	-- Wartorn Plate Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 2 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22424),	-- Redemption Wristguards
								},
							}),
							q(9048, {	-- Redemption Handguards
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22364, 1 },	-- Desecrated Handguards
									{ "i", 22375, 8 },	-- Wartorn Plate Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22426),	-- Redemption Handguards
								},
							}),
							q(9049, {	-- Redemption Girdle
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22363, 1 },	-- Desecrated Girdle
									{ "i", 22375, 8 },	-- Wartorn Plate Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 20725, 3 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22431),	-- Redemption Girdle
								},
							}),
							q(9044, {	-- Redemption Legguards
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22359, 1 },	-- Desecrated Legguards
									{ "i", 22375, 20 },	-- Wartorn Plate Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22427),	-- Redemption Legguards
								},
							}),
							q(9047, {	-- Redemption Boots
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22365, 1 },	-- Desecrated Boots
									{ "i", 22375, 12 },	-- Wartorn Plate Scrap
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22430),	-- Redemption Boots
								},
							}),
						}),
						cl(HUNTER, {
							q(9056, {	-- Cryptstalker Headpiece
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22360, 1 },	-- Desecrated Headpiece
									{ "i", 22374, 15 },	-- Wartorn Chain Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22438),	-- Cryptstalker Headpiece
								},
							}),
							q(9057, {	-- Cryptstalker Spaulders
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22361, 1 },	-- Desecrated Spaulders
									{ "i", 22374, 12 },	-- Wartorn Chain Scrap
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22439),	-- Cryptstalker Spaulders
								},
							}),
							q(9054, {	-- Cryptstalker Tunic
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22350, 1 },	-- Desecrated Tunic
									{ "i", 22374, 25 },	-- Wartorn Chain Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22436),	-- Cryptstalker Tunic
								},
							}),
							q(9061, {	-- Cryptstalker Wristguards
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22362, 1 },	-- Desecrated Wristguards
									{ "i", 22374, 6 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 2 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22443),	-- Cryptstalker Wristguards
								},
							}),
							q(9059, {	-- Cryptstalker Handguards
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22364, 1 },	-- Desecrated Handguards
									{ "i", 22374, 8 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22441),	-- Cryptstalker Handguards
								},
							}),
							q(9060, {	-- Cryptstalker Girdle
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22363, 1 },	-- Desecrated Girdle
									{ "i", 22374, 8 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 20725, 3 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22442),	-- Cryptstalker Girdle
								},
							}),
							q(9055, {	-- Cryptstalker Legguards
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22359, 1 },	-- Desecrated Legguards
									{ "i", 22374, 20 },	-- Wartorn Chain Scrap
									{ "i", 12360, 3 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22437),	-- Cryptstalker Legguards
								},
							}),
							q(9058, {	-- Cryptstalker Boots
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
								["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22365, 1 },	-- Desecrated Boots
									{ "i", 22374, 12 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 20725, 3 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22440),	-- Cryptstalker Boots
								},
							}),
						}),
						cl(ROGUE, {
							q(9079,	{	-- Bonescythe Helmet
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22353, 1 },	-- Desecrated Helmet
									{ "i", 22373, 15 },	-- Wartorn Leather Scrap
									{ "i", 15407, 8 },	-- Cured Rugged Hide
									{ "i", 20725, 1 },	-- Nexus Crystal
									{ "g", 750000 },	-- 75g
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22478),	-- Bonescythe Helmet
								},
							}),
							q(9080,	{	-- Bonescythe Pauldrons
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22354, 1 },	-- Desecrated Pauldrons
									{ "i", 22373, 12 },	-- Wartorn Leather Scrap
									{ "i", 15407, 5 },	-- Cured Rugged Hide
									{ "i", 20725, 1 },	-- Nexus Crystal
									{ "g", 500000 },	-- 50g
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22479),	-- Bonescythe Pauldrons
								},
							}),
							q(9077,	{	-- Bonescythe Breastplate
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22349, 1 },	-- Desecrated Breastplate
									{ "i", 22373, 25 },	-- Wartorn Leather Scrap
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "i", 15407, 6 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22476),	-- Bonescythe Breastplate
								},
							}),
							q(9084,	{	-- Bonescythe Bracers
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22355, 1 },	-- Desecrated Bracers
									{ "i", 22373, 6 },	-- Wartorn Leather Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 2 },	-- Cured Rugged Hide
									{ "g", 100000 },	-- 10g
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22483),	-- Bonescythe Bracers
								},
							}),
							q(9082,	{	-- Bonescythe Gauntlets
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22357, 1 },	-- Desecrated Gauntlets
									{ "i", 22373, 8 },	-- Wartorn Leather Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22481),	-- Bonescythe Gauntlets
								},
							}),
							q(9083,	{	-- Bonescythe Waistguard
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22356, 1 },	-- Desecrated Waistguard
									{ "i", 22373, 8 },	-- Wartorn Leather Scrap
									{ "i", 15407, 5 },	-- Cured Rugged Hide
									{ "i", 20725, 1 },	-- Nexus Crystal
									{ "g", 150000 },	-- 15g
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22482),	-- Bonescythe Waistguard
								},
							}),
							q(9078,	{	-- Bonescythe Legplates
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22352, 1 },	-- Desecrated Legplates
									{ "i", 22373, 20 },	-- Wartorn Leather Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 8 },	-- Cured Rugged Hide
									{ "g", 1000000 },	-- 100g
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22477),	-- Bonescythe Legplates
								},
							}),
							q(9081,	{	-- Bonescythe Sabatons
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16131,	-- Rohan the Assassin <The Scarlet Crusade>
								["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22358, 1 },	-- Desecrated Sabatons
									{ "i", 22373, 12 },	-- Wartorn Leather Scrap
									{ "i", 15407, 3 },	-- Cured Rugged Hide
									{ "i", 20725, 2 },	-- Nexus Crystal
									{ "g", 250000 },	-- 25g
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22480),	-- Bonescythe Sabatons
								},
							}),
						}),
						cl(PRIEST, {
							q(9113, {	-- Circlet of Faith
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22367, 1 },	-- Desecrated Circlet
									{ "i", 22376, 15 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 3 },	-- Mooncloth
									{ "i", 20725, 3 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22514),	-- Circlet of Faith
								},
							}),
							q(9114, {	-- Shoulderpads of Faith
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22368, 1 },	-- Desecrated Shoulderpads
									{ "i", 22376, 12 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 2 },	-- Mooncloth
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22515),	-- Shoulderpads of Faith
								},
							}),
							q(9111, {	-- Robe of Faith
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22351, 1 },	-- Desecrated Robe
									{ "i", 22376, 25 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22512),	-- Robe of Faith
								},
							}),
							q(9118, {	-- Bindings of Faith
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22369, 1 },	-- Desecrated Bindings
									{ "i", 22376, 6 },	-- Wartorn Cloth Scrap
									{ "i", 12363, 1 },	-- Arcane Crystal
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22519),	-- Bindings of Faith
								},
							}),
							q(9116, {	-- Gloves of Faith
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["cost"] = {
									{ "i", 22371, 1 },	-- Desecrated Gloves
									{ "i", 22376, 8 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22517),	-- Gloves of Faith
								},
							}),
							q(9117, {	-- Belt of Faith
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22370, 1 },	-- Desecrated Belt
									{ "i", 22376, 8 },	-- Wartorn Cloth Scrap
									{ "i", 12363, 2 },	-- Arcane Crystal
									{ "i", 14342, 2 },	-- Mooncloth
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22518),	-- Belt of Faith
								},
							}),
							q(9112, {	-- Leggings of Faith
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22366, 1 },	-- Desecrated Leggings
									{ "i", 22376, 20 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22513),	-- Leggings of Faith
								},
							}),
							q(9115, {	-- Sandals of Faith
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
								["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22372, 1 },	-- Desecrated Sandals
									{ "i", 22376, 12 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 2 },	-- Mooncloth
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22516),	-- Sandals of Faith
								},
							}),
						}),
						cl(SHAMAN, {
							q(9070, {	-- Earthshatter Headpiece
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22360, 1 },	-- Desecrated Headpiece
									{ "i", 22374, 15 },	-- Wartorn Chain Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22466),	-- Earthshatter Headpiece
								},
							}),
							q(9071, {	-- Earthshatter Spaulders
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22361, 1 },	-- Desecrated Spaulders
									{ "i", 22374, 12 },	-- Wartorn Chain Scrap
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "i", 14342, 2 },	-- Mooncloth
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22467),	-- Earthshatter Spaulders
								},
							}),
							q(9068, {	-- Earthshatter Tunic
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22350, 1 },	-- Desecrated Tunic
									{ "i", 22374, 25 },	-- Wartorn Chain Scrap
									{ "i", 12360, 4 },	-- Arcanite Bar
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22464),	-- Earthshatter Tunic
								},
							}),
							q(9075, {	-- Earthshatter Wristguards
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22362, 1 },	-- Desecrated Wristguards
									{ "i", 22374, 6 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 2 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22471),	-- Earthshatter Wristguards
								},
							}),
							q(9073, {	-- Earthshatter Handguards
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22364, 1 },	-- Desecrated Handguards
									{ "i", 22374, 8 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22469),	-- Earthshatter Handguards
								},
							}),
							q(9074, {	-- Earthshatter Girdle
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22363, 1 },	-- Desecrated Girdle
									{ "i", 22374, 8 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 20725, 3 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22470),	-- Earthshatter Girdle
								},
							}),
							q(9069, {	-- Earthshatter Legguards
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22359, 1 },	-- Desecrated Legguards
									{ "i", 22374, 20 },	-- Wartorn Chain Scrap
									{ "i", 12360, 3 },	-- Arcanite Bar
									{ "i", 15407, 5 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22465),	-- Earthshatter Legguards
								},
							}),
							q(9072, {	-- Earthshatter Boots
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
								["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22365, 1 },	-- Desecrated Boots
									{ "i", 22374, 12 },	-- Wartorn Chain Scrap
									{ "i", 12360, 1 },	-- Arcanite Bar
									{ "i", 20725, 3 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22468),	-- Earthshatter Boots
								},
							}),
						}),
						cl(MAGE, {
							q(9097, {	-- Frostfire Circlet
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22367, 1 },	-- Desecrated Circlet
									{ "i", 22376, 15 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 3 },	-- Mooncloth
									{ "i", 20725, 3 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22498),	-- Frostfire Circlet
								},
							}),
							q(9098, {	-- Frostfire Shoulderpads
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22368, 1 },	-- Desecrated Shoulderpads
									{ "i", 22376, 12 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 2 },	-- Mooncloth
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22499),	-- Frostfire Shoulderpads
								},
							}),
							q(9095, {	-- Frostfire Robe
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22351, 1 },	-- Desecrated Robe
									{ "i", 22376, 25 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22496),	-- Frostfire Robe
								},
							}),
							q(9102, {	-- Frostfire Bindings
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22369, 1 },	-- Desecrated Bindings
									{ "i", 22376, 6 },	-- Wartorn Cloth Scrap
									{ "i", 12363, 1 },	-- Arcane Crystal
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22503),	-- Frostfire Bindings
								},
							}),
							q(9100, {	-- Frostfire Gloves
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22371, 1 },	-- Desecrated Gloves
									{ "i", 22376, 8 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22501),	-- Frostfire Gloves
								},
							}),
							q(9101, {	-- Frostfire Belt
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22370, 1 },	-- Desecrated Belt
									{ "i", 22376, 8 },	-- Wartorn Cloth Scrap
									{ "i", 12363, 2 },	-- Arcane Crystal
									{ "i", 14342, 2 },	-- Mooncloth
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22502),	-- Frostfire Belt
								},
							}),
							q(9096, {	-- Frostfire Leggings
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22366, 1 },	-- Desecrated Leggings
									{ "i", 22376, 20 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22497),	-- Frostfire Leggings
								},
							}),
							q(9099, {	-- Frostfire Sandals
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22372, 1 },	-- Desecrated Sandals
									{ "i", 22376, 12 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 2 },	-- Mooncloth
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22500),	-- Frostfire Sandals
								},
							}),
						}),
						cl(WARLOCK, {
							q(9105, {	-- Plagueheart Circlet
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22367, 1 },	-- Desecrated Circlet
									{ "i", 22376, 15 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 3 },	-- Mooncloth
									{ "i", 14344, 3 },	-- Large Brilliant Shard
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22506),	-- Plagueheart Circlet
								},
							}),
							q(9106, {	-- Plagueheart Shoulderpads
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22368, 1 },	-- Desecrated Shoulderpads
									{ "i", 22376, 12 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 2 },	-- Mooncloth
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22507),	-- Plagueheart Shoulderpads
								},
							}),
							q(9103, {	-- Plagueheart Robe
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22351, 1 },	-- Desecrated Robe
									{ "i", 22376, 25 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22504),	-- Plagueheart Robe
								},
							}),
							q(9110, {	-- Plagueheart Bindings
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22369, 1 },	-- Desecrated Bindings
									{ "i", 22376, 6 },	-- Wartorn Cloth Scrap
									{ "i", 12363, 1 },	-- Arcane Crystal
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22511),	-- Plagueheart Bindings
								},
							}),
							q(9108, {	-- Plagueheart Gloves
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22371, 1 },	-- Desecrated Gloves
									{ "i", 22376, 8 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22509),	-- Plagueheart Gloves
								},
							}),
							q(9109, {	-- Plagueheart Belt
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22370, 1 },	-- Desecrated Belt
									{ "i", 22376, 8 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 2 },	-- Mooncloth
									{ "i", 12363, 2 },	-- Arcane Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22510),	-- Plagueheart Belt
								},
							}),
							q(9104, {	-- Plagueheart Leggings
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22366, 1 },	-- Desecrated Leggings
									{ "i", 22376, 20 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 4 },	-- Mooncloth
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22505),	-- Plagueheart Leggings
								},
							}),
							q(9107, {	-- Plagueheart Sandals
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16133,	-- Mataus the Wrathcaster <The Scarlet Crusade>
								["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22372, 1 },	-- Desecrated Sandals
									{ "i", 22376, 12 },	-- Wartorn Cloth Scrap
									{ "i", 14342, 2 },	-- Mooncloth
									{ "i", 15407, 3 },	-- Cured Rugged Hide
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22508),	-- Plagueheart Sandals
								},
							}),
						}),
						cl(DRUID, {
							q(9088,	{	-- Dreamwalker Headpiece
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22360, 1 },	-- Desecrated Headpiece
									{ "i", 22373, 15 },	-- Wartorn Leather Scrap
									{ "i", 15407, 6 },	-- Cured Rugged Hide
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22490),	-- Dreamwalker Headpiece
								},
							}),
							q(9089,	{	-- Dreamwalker Spaulders
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22361, 1 },	-- Desecrated Spaulders
									{ "i", 22373, 12 },	-- Wartorn Leather Scrap
									{ "i", 15407, 5 },	-- Cured Rugged Hide
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22491),	-- Dreamwalker Spaulders
								},
							}),
							q(9086,	{	-- Dreamwalker Tunic
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22350, 1 },	-- Desecrated Tunic
									{ "i", 22373, 25 },	-- Wartorn Leather Scrap
									{ "i", 15407, 6 },	-- Cured Rugged Hide
									{ "i", 20725, 2 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22488),	-- Dreamwalker Tunic
								},
							}),
							q(9093,	{	-- Dreamwalker Wristguards
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22362, 1 },	-- Desecrated Wristguards
									{ "i", 22373, 6 },	-- Wartorn Leather Scrap
									{ "i", 15407, 2 },	-- Cured Rugged Hide
									{ "i", 12363, 1 },	-- Arcane Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22495),	-- Dreamwalker Wristguards
								},
							}),
							q(9091,	{	-- Dreamwalker Handguards
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22364, 1 },	-- Desecrated Handguards
									{ "i", 22373, 8 },	-- Wartorn Leather Scrap
									{ "i", 15407, 5 },	-- Cured Rugged Hide
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22493),	-- Dreamwalker Handguards
								},
							}),
							q(9092,	{	-- Dreamwalker Girdle
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22363, 1 },	-- Desecrated Girdle
									{ "i", 22373, 8 },	-- Wartorn Leather Scrap
									{ "i", 15407, 2 },	-- Cured Rugged Hide
									{ "i", 14342, 3 },	-- Mooncloth
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22494),	-- Dreamwalker Girdle
								},
							}),
							q(9087,	{	-- Dreamwalker Legguards
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22359, 1 },	-- Desecrated Legguards
									{ "i", 22373, 20 },	-- Wartorn Leather Scrap
									{ "i", 15407, 8 },	-- Cured Rugged Hide
									{ "i", 20725, 1 },	-- Nexus Crystal
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22489),	-- Dreamwalker Legguards
								},
							}),
							q(9090,	{	-- Dreamwalker Boots
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16135,	-- Rayne <Cenarion Circle>
								["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22365, 1 },	-- Desecrated Boots
									{ "i", 22373, 12 },	-- Wartorn Leather Scrap
									{ "i", 15407, 2 },	-- Cured Rugged Hide
									{ "i", 14342, 3 },	-- Mooncloth
								},
								["repeatable"] = true,
								["lvl"] = 60,
								["groups"] = {
									i(22492),	-- Dreamwalker Boots
								},
							}),
						}),
						q(9033, {	-- Echoes of War
							["sourceQuests"] = {
								9121,	-- The Dread Citadel - Naxxramas
								9122,	-- The Dread Citadel - Naxxramas
								9123,	-- The Dread Citadel - Naxxramas
							},
							["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
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
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
							["cost"] = {
								{ "i", 22682, 5 },	-- Frozen Rune
								{ "i",  7080, 2 },	-- Essence of Water
								{ "i", 14048, 4 },	-- Bolt of Runecloth
								{ "i", 14227, 4 },	-- Ironweb Spider Silk
								{ "g", 2000000 },	-- 200g
							},
							["lvl"] = 60,
							-- #if BEFORE WRATH
							["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
							-- #endif
							["groups"] = {
								i(22658),	-- Glacial Cloak
							},
						}),
						q(9239, {	-- Glacial Gloves
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["cost"] = {
								{ "i", 22682, 5 },	-- Frozen Rune
								{ "i",  7080, 4 },	-- Essence of Water
								{ "i", 14048, 4 },	-- Bolt of Runecloth
								{ "i", 14227, 2 },	-- Ironweb Spider Silk
								{ "g", 2000000 },	-- 200g
							},
							["classes"] = { PRIEST, MAGE, WARLOCK },
							["lvl"] = 60,
							-- #if BEFORE WRATH
							["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
							-- #endif
							["groups"] = {
								i(22654),	-- Glacial Gloves
							},
						}),
						q(9240, {	-- Glacial Vest
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
							["cost"] = {
								{ "i", 22682, 8 },	-- Frozen Rune
								{ "i",  7080, 6 },	-- Essence of Water
								{ "i", 14048, 8 },	-- Bolt of Runecloth
								{ "i", 14227, 4 },	-- Ironweb Spider Silk
								{ "g", 3000000 },	-- 300g
							},
							["classes"] = { PRIEST, MAGE, WARLOCK },
							["lvl"] = 60,
							-- #if BEFORE WRATH
							["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
							-- #endif
							["groups"] = {
								i(22652),	-- Glacial Vest
							},
						}),
						q(9238, {	-- Glacial Wrists
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["cost"] = {
								{ "i", 22682, 4 },	-- Frozen Rune
								{ "i",  7080, 2 },	-- Essence of Water
								{ "i", 14048, 2 },	-- Bolt of Runecloth
								{ "i", 14227, 2 },	-- Ironweb Spider Silk
								{ "g", 2000000 },	-- 200g
							},
							["classes"] = { PRIEST, MAGE, WARLOCK },
							["lvl"] = 60,
							-- #if BEFORE WRATH
							["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
							-- #endif
							["groups"] = {
								i(22655),	-- Glacial Wrists
							},
						}),
						q(9235, {	-- Icebane Bracers
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["cost"] = {
								{ "i", 22682, 4 },	-- Frozen Rune
								{ "i", 7080, 2 },	-- Essence of Water
								{ "i", 12359, 12 },	-- Thorium Bar
								{ "i", 12360, 2 },	-- Arcanite Bar
								{ "g", 2000000 },	-- 200g
							},
							["classes"] = { WARRIOR, PALADIN },
							["lvl"] = 60,
							-- #if BEFORE WRATH
							["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
							-- #endif
							["groups"] = {
								i(22671),	-- Icebane Bracers
							},
						}),
						q(9236, {	-- Icebane Breastplate
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
							["cost"] = {
								{ "i", 22682, 8 },	-- Frozen Rune
								{ "i", 7080, 4 },	-- Essence of Water
								{ "i", 12359, 16 },	-- Thorium Bar
								{ "i", 12360, 2 },	-- Arcanite Bar
								{ "g", 3000000 },	-- 300g
							},
							["classes"] = { WARRIOR, PALADIN },
							["lvl"] = 60,
							-- #if BEFORE WRATH
							["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
							-- #endif
							["groups"] = {
								i(22669),	-- Icebane Breastplate
							},
						}),
						q(9234, {	-- Icebane Gauntlets
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["cost"] = {
								{ "i", 22682, 5 },	-- Frozen Rune
								{ "i", 7080, 2 },	-- Essence of Water
								{ "i", 12359, 12 },	-- Thorium Bar
								{ "i", 12360, 2 },	-- Arcanite Bar
								{ "g", 2000000 },	-- 200g
							},
							["classes"] = { WARRIOR, PALADIN },
							["lvl"] = 60,
							-- #if BEFORE WRATH
							["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
							-- #endif
							["groups"] = {
								i(22670),	-- Icebane Gauntlets
							},
						}),
						q(9244, {	-- Icy Scale Bracers
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["cost"] = {
								{ "i", 22682, 4 },	-- Frozen Rune
								{ "i",  7080, 5 },	-- Essence of Water
								{ "i", 15407, 3 },	-- Cured Rugged Hide
								{ "i", 15408, 16 },	-- Heavy Scorpid Scale
								{ "g", 2000000 },	-- 200g
							},
							["classes"] = { HUNTER, SHAMAN },
							["lvl"] = 60,
							-- #if BEFORE WRATH
							["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
							-- #endif
							["groups"] = {
								i(22665),	-- Icy Scale Bracers
							},
						}),
						q(9246, {	-- Icy Scale Breastplate
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
							["cost"] = {
								{ "i", 22682, 8 },	-- Frozen Rune
								{ "i",  7080, 7 },	-- Essence of Water
								{ "i", 15407, 5 },	-- Cured Rugged Hide
								{ "i", 15408, 24 },	-- Heavy Scorpid Scale
								{ "g", 3000000 },	-- 300g
							},
							["classes"] = { HUNTER, SHAMAN },
							["lvl"] = 60,
							-- #if BEFORE WRATH
							["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
							-- #endif
							["groups"] = {
								i(22664),	-- Icy Scale Breastplate
							},
						}),
						q(9245, {	-- Icy Scale Gauntlets
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["cost"] = {
								{ "i", 22682, 5 },	-- Frozen Rune
								{ "i",  7080, 5 },	-- Essence of Water
								{ "i", 15407, 3 },	-- Cured Rugged Hide
								{ "i", 15408, 16 },	-- Heavy Scorpid Scale
								{ "g", 2000000 },	-- 200g
							},
							["classes"] = { HUNTER, SHAMAN },
							["lvl"] = 60,
							-- #if BEFORE WRATH
							["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
							-- #endif
							["groups"] = {
								i(22666),	-- Icy Scale Gauntlets
							},
						}),
						q(9233, {	-- Omarion's Handbook
							["description"] = "You must not have a profession above 270 skill for you to get this item from Omarion.",
							["provider"] = { "i", 22719 },	-- Omarion's Handbook
							["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
							["lvl"] = 60,
							-- #if BEFORE WRATH
							["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
							-- #endif
						}),
						q(9241, {	-- Polar Bracers
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["cost"] = {
								{ "i", 22682, 4 },	-- Frozen Rune
								{ "i",  7080, 3 },	-- Essence of Water
								{ "i", 12810, 12 },	-- Enchanted Leather
								{ "i", 15407, 3 },	-- Cured Rugged Hide
								{ "g", 2000000 },	-- 200g
							},
							["classes"] = { ROGUE, DRUID },
							["lvl"] = 60,
							-- #if BEFORE WRATH
							["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
							-- #endif
							["groups"] = {
								i(22663),	-- Polar Bracers
							},
						}),
						q(9242, {	-- Polar Gloves
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["cost"] = {
								{ "i", 22682, 5 },	-- Frozen Rune
								{ "i",  7080, 3 },	-- Essence of Water
								{ "i", 15407, 3 },	-- Cured Rugged Hide
								{ "i", 12810, 12 },	-- Enchanted Leather
								{ "g", 2000000 },	-- 200g
							},
							["classes"] = { ROGUE, DRUID },
							["lvl"] = 60,
							-- #if BEFORE WRATH
							["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
							-- #endif
							["groups"] = {
								i(22662),	-- Polar Gloves
							},
						}),
						q(9243, {	-- Polar Tunic
							["sourceQuest"] = 9233,	-- Omarion's Handbook
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
							["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
							["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
							["cost"] = {
								{ "i", 22682, 8 },	-- Frozen Rune
								{ "i",  7080, 5 },	-- Essence of Water
								{ "i", 15407, 5 },	-- Cured Rugged Hide
								{ "i", 12810, 16 },	-- Enchanted Leather
								{ "g", 3000000 },	-- 300g
							},
							["classes"] = { ROGUE, DRUID },
							["lvl"] = 60,
							-- #if BEFORE WRATH
							["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
							-- #endif
							["groups"] = {
								i(22661),	-- Polar Tunic
							},
						}),
						q(9230, {	-- Ramaladni's Icy Grasp
							["sourceQuest"] = 9229,	-- The Fate of Ramaldni
							["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
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
							["altQuests"] = {
								9122,	-- The Dread Citadel - Naxxramas [Revered]
								9123,	-- The Dread Citadel - Naxxramas [Exalted]
								9378,	-- Attunement [HIDDEN QUEST TRIGGER]
							},
							["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
							["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
							["minReputation"] = { FACTION_ARGENT_DAWN, HONORED },	-- Argent Dawn, Honored.
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
							["altQuests"] = {
								9121,	-- The Dread Citadel - Naxxramas [Honored]
								9123,	-- The Dread Citadel - Naxxramas [Exalted]
								9378,	-- Attunement [HIDDEN QUEST TRIGGER]
							},
							["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
							["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
							["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
							["cost"] = {
								{ "i", 12363, 2 },	-- Arcane Crystal
								{ "i", 20725, 1 },	-- Nexus Crystal
								{ "g", 300000 },	-- 30g
							},
							["lvl"] = 60,
						}),
						q(9123, {	-- The Dread Citadel - Naxxramas [Exalted]
							["altQuests"] = {
								9121,	-- The Dread Citadel - Naxxramas [Honored]
								9122,	-- The Dread Citadel - Naxxramas [Revered]
								9378,	-- Attunement [HIDDEN QUEST TRIGGER]
							},
							["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
							["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
							["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
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
							["sourceQuest"] = 9033,	-- Echoes of War
							["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
							["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
							["lvl"] = 60,
							["groups"] = {
								objective(1, {	-- 0/1 Fate of Ramaladni
									["provider"] = { "i", 22708 },	-- Fate of Ramaladni
								}),
							},
						}),
						q(9232, {	-- The Only Song I Know...
							["sourceQuest"] = 9033,	-- Echoes of War
							["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
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
					-- #if SEASON_OF_DISCOVERY
					),
					-- #endif
					n(ZONE_DROPS, {
						i(22708),	-- Fate of Ramaladni
						i(22682, {	-- Frozen Rune
							-- #if BEFORE WRATH
							["description"] = "Use a Word of Thawing on Frozen Rune objects around Naxx to collect 3-6 of these.",
							-- #endif
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
					-- #if SEASON_OF_DISCOVERY
					-- In Season of Discovery, this version of the instance has been deprecated and removed in favor of the raid.
					d(DIFFICULTY.LEGACY_RAID.PLAYER20, bubbleDownTimelineEventSelf(REMOVED_1_15_6, {
					-- #endif
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
										["description"] = "Non-crafters can take his handbook to Craftsman Wilhelm at Light's Hope Chapel who can make all the items as well, as long as the players provide the materials and pay a hefty fee.",
										["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
									}),
									r(28208, {	-- Glacial Cloak (RECIPE!)
										["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Revered.
										["requireSkill"] = TAILORING,
									}),
									r(28205, {	-- Glacial Gloves (RECIPE!)
										["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
										["requireSkill"] = TAILORING,
									}),
									r(28207, {	-- Glacial Vest (RECIPE!)
										["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Revered.
										["requireSkill"] = TAILORING,
									}),
									r(28209, {	-- Glacial Wrists (RECIPE!)
										["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
										["requireSkill"] = TAILORING,
									}),
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
								ach(15335, {	-- Survivor of the Damned (Season of Mastery)
									["timeline"] = { ADDED_1_14_3, REMOVED_1_15_0 },	-- Was only available in Season of Mastery
								}),
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
					-- #if SEASON_OF_DISCOVERY
					})),
					applyclassicphase(SOD_PHASE_SEVEN, d(DIFFICULTY.SOD.PLAYER20, bubbleDownSelf({ ["timeline"] = { ADDED_1_15_6 }, }, {
						n(QUESTS, {
							cl(WARRIOR, {
								q(9037, {	-- Dreadnaught Helmet
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
									["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22353, 1 },	-- Desecrated Helmet
										{ "i", 22375, 15 },	-- Wartorn Plate Scrap
										{ "i", 12360, 5 },	-- Arcanite Bar
										{ "i", 20725, 1 },	-- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236007),	-- Dreadnaught Helmet
										i(236016),	-- Dreadnaught Horns
									},
								}),
								q(9038, {	-- Dreadnaught Pauldrons
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
									["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22354, 1 },	-- Desecrated Pauldrons
										{ "i", 22375, 12 },	-- Wartorn Plate Scrap
										{ "i", 12360, 2 },	-- Arcanite Bar
										{ "i", 15407, 3 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236008),	-- Dreadnaught Pauldrons
										i(236017),	-- Dreadnaught Shoulders
									},
								}),
								q(9034, {	-- Dreadnaught Breastplate
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
									["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22349, 1 },	-- Desecrated Breastplate
										{ "i", 22375, 25 },	-- Wartorn Plate Scrap
										{ "i", 12360, 4 },	-- Arcanite Bar
										{ "i", 20725, 2 },	-- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236005),	-- Dreadnaught Breastplate
										i(236014),	-- Dreadnaught Cuirass
									},
								}),
								q(9042, {	-- Dreadnaught Bracers
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
									["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22355, 1 },	-- Desecrated Bracers
										{ "i", 22375, 6 },	-- Wartorn Plate Scrap
										{ "i", 12360, 1 },	-- Arcanite Bar
										{ "i", 20725, 1 },	-- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236012),	-- Dreadnaught Bracers
										i(236021),	-- Dreadnaught Wrists
									},
								}),
								q(9040, {	-- Dreadnaught Gauntlets
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
									["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22357, 1 },	-- Desecrated Gauntlets
										{ "i", 22375, 8 },	-- Wartorn Plate Scrap
										{ "i", 12360, 1 },	-- Arcanite Bar
										{ "i", 15407, 5 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236010),	-- Dreadnaught Gauntlets
										i(236019),	-- Dreadnaught Grips
									},
								}),
								q(9041, {	-- Dreadnaught Waistguard
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
									["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22356, 1 },	-- Desecrated Waistguard
										{ "i", 22375, 8 },	-- Wartorn Plate Scrap
										{ "i", 12360, 1 },	-- Arcanite Bar
										{ "i", 15407, 5 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236011),	-- Dreadnaught Waistguard
										i(236020),	-- Dreadnaught Belt
									},
								}),
								q(9036, {	-- Dreadnaught Legplates
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
									["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22352, 1 },	-- Desecrated Legplates
										{ "i", 22375, 20 },	-- Wartorn Plate Scrap
										{ "i", 12360, 4 },	-- Arcanite Bar
										{ "i", 15407, 3 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236006),	-- Dreadnaught Legplates
										i(236015),	-- Dreadnaught Tassets
									},
								}),
								q(9039, {	-- Dreadnaught Sabatons
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
									["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22358, 1 },	-- Desecrated Sabatons
										{ "i", 22375, 12 },	-- Wartorn Plate Scrap
										{ "i", 12360, 2 },	-- Arcanite Bar
										{ "i", 15407, 3 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236009),	-- Dreadnaught Sabatons
										i(236018),	-- Dreadnaught Greaves
									},
								}),
							}),
							cl(PALADIN, {
								-- Headpiece / Helmet / Crown
								q(9045, {	-- Redemption Headpiece
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22360, 1 },	-- Desecrated Headpiece
										{ "i", 22375, 15 },	-- Wartorn Plate Scrap
										{ "i", 12360, 5 },	-- Arcanite Bar
										{ "i", 15407, 2 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236117),	-- Redemption Headpiece
										i(236128),	-- Redemption Helmet
										i(236137),	-- Redemption Crown
									},
								}),

								-- Spaulders / Shoulderplates / Pauldrons
								q(9046, {	-- Redemption Spaulders
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22361, 1 },	-- Desecrated Spaulders
										{ "i", 22375, 12 },	-- Wartorn Plate Scrap
										{ "i", 12360, 2 },	-- Arcanite Bar
										{ "i", 20725, 2 },	-- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236122),	-- Redemption Spaulders
										i(236126),	-- Redemption Shoulderplates
										i(236135),	-- Redemption Pauldrons
									},
								}),

								-- Chest: Tunic / Breastplate / Chestguard
								q(9043, {	-- Redemption Tunic
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22350, 1 },	-- Desecrated Tunic
										{ "i", 22375, 25 },	-- Wartorn Plate Scrap
										{ "i", 12360, 4 },	-- Arcanite Bar
										{ "i", 15407, 3 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236115),	-- Redemption Tunic
										i(236132),	-- Redemption Breastplate
										i(236141),	-- Redemption Chestguard
									},
								}),

								-- Wristguards / Vambraces / Bracers
								q(9050, {	-- Redemption Wristguards
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22362, 1 },	-- Desecrated Wristguards
										{ "i", 22375, 6 },	-- Wartorn Plate Scrap
										{ "i", 12360, 1 },	-- Arcanite Bar
										{ "i", 15407, 2 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236119),	-- Redemption Wristguards
										i(236124),	-- Redemption Vambraces
										i(236133),	-- Redemption Bracers
									},
								}),

								-- Handguards / Gloves / Gauntlets
								q(9048, {	-- Redemption Handguards
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22364, 1 },	-- Desecrated Handguards
										{ "i", 22375, 8 },	-- Wartorn Plate Scrap
										{ "i", 12360, 1 },	-- Arcanite Bar
										{ "i", 15407, 5 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236118),	-- Redemption Handguards
										i(236129),	-- Redemption Gloves
										i(236138),	-- Redemption Gauntlets
									},
								}),

								-- Girdle / Belt / Waistguard
								q(9049, {	-- Redemption Girdle
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22363, 1 },	-- Desecrated Girdle
										{ "i", 22375, 8 },	-- Wartorn Plate Scrap
										{ "i", 12360, 1 },	-- Arcanite Bar
										{ "i", 20725, 3 },	-- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236120),	-- Redemption Girdle
										i(236125),	-- Redemption Belt
										i(236134),	-- Redemption Waistguard
									},
								}),

								-- Legguards / Leggings / Legplates
								q(9044, {	-- Redemption Legguards
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22359, 1 },	-- Desecrated Legguards
										{ "i", 22375, 20 },	-- Wartorn Plate Scrap
										{ "i", 12360, 4 },	-- Arcanite Bar
										{ "i", 20725, 2 },	-- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236121),	-- Redemption Legguards
										i(236127),	-- Redemption Leggings
										i(236136),	-- Redemption Legplates
									},
								}),

								-- Boots / Greaves / Sabatons
								q(9047, {	-- Redemption Boots
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22365, 1 },	-- Desecrated Boots
										{ "i", 22375, 12 },	-- Wartorn Plate Scrap
										{ "i", 12360, 2 },	-- Arcanite Bar
										{ "i", 15407, 3 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236123),	-- Redemption Boots
										i(236131),	-- Redemption Greaves
										i(236140),	-- Redemption Sabatons
									},
								}),
							}),
							cl(HUNTER, {
								q(9056, {	-- Cryptstalker Headpiece
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
									["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },	-- Eastern Plaguelands
									["cost"] = {
										{ "i", 22360, 1 },	-- Desecrated Headpiece
										{ "i", 22374, 15 },	-- Wartorn Chain Scrap
										{ "i", 12360, 4 },	-- Arcanite Bar
										{ "i", 20725, 2 },	-- Nexus Crystal
									},
									["repeatable"] = true,	-- Can be repeated
									["lvl"] = 60,	-- Required level
									["groups"] = {
										i(236046), -- Cryptstalker Headpiece
										i(236054), -- Cryptstalker Visor
									},
								}),

								q(9057, {	-- Cryptstalker Spaulders
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
									["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },	-- Eastern Plaguelands
									["cost"] = {
										{ "i", 22361, 1 },	-- Desecrated Spaulders
										{ "i", 22374, 12 },	-- Wartorn Chain Scrap
										{ "i", 12360, 2 },	-- Arcanite Bar
										{ "i", 15407, 3 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,	-- Can be repeated
									["lvl"] = 60,	-- Required level
									["groups"] = {
										i(236044), -- Cryptstalker Spaulders
										i(236052), -- Cryptstalker Pauldrons
									},
								}),

								q(9054, {	-- Cryptstalker Tunic
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
									["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },	-- Eastern Plaguelands
									["cost"] = {
										{ "i", 22350, 1 },	-- Desecrated Tunic
										{ "i", 22374, 25 },	-- Wartorn Chain Scrap
										{ "i", 12360, 4 },	-- Arcanite Bar
										{ "i", 15407, 3 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,	-- Can be repeated
									["lvl"] = 60,	-- Required level
									["groups"] = {
										i(236043), -- Cryptstalker Tunic
										i(236058), -- Cryptstalker Breastplate
									},
								}),

								q(9061, {	-- Cryptstalker Wristguards
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
									["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },	-- Eastern Plaguelands
									["cost"] = {
										{ "i", 22362, 1 },	-- Desecrated Wristguards
										{ "i", 22374, 6 },	-- Wartorn Chain Scrap
										{ "i", 12360, 1 },	-- Arcanite Bar
										{ "i", 15407, 2 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,	-- Can be repeated
									["lvl"] = 60,	-- Required level
									["groups"] = {
										i(236042), -- Cryptstalker Wristguards
										i(236050), -- Cryptstalker Vambraces
									},
								}),

								q(9059, {	-- Cryptstalker Handguards
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
									["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },	-- Eastern Plaguelands
									["cost"] = {
										{ "i", 22364, 1 },	-- Desecrated Handguards
										{ "i", 22374, 8 },	-- Wartorn Chain Scrap
										{ "i", 12360, 1 },	-- Arcanite Bar
										{ "i", 15407, 5 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,	-- Can be repeated
									["lvl"] = 60,	-- Required level
									["groups"] = {
										i(236047), -- Cryptstalker Handguards
										i(236055), -- Cryptstalker Gauntlets
									},
								}),

								q(9060, {	-- Cryptstalker Girdle
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
									["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },	-- Eastern Plaguelands
									["cost"] = {
										{ "i", 22363, 1 },	-- Desecrated Girdle
										{ "i", 22374, 8 },	-- Wartorn Chain Scrap
										{ "i", 12360, 1 },	-- Arcanite Bar
										{ "i", 20725, 3 },	-- Nexus Crystal
									},
									["repeatable"] = true,	-- Can be repeated
									["lvl"] = 60,	-- Required level
									["groups"] = {
										i(236048), -- Cryptstalker Girdle
										i(236051), -- Cryptstalker Belt
									},
								}),

								q(9055, {	-- Cryptstalker Legguards
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
									["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },	-- Eastern Plaguelands
									["cost"] = {
										{ "i", 22359, 1 },	-- Desecrated Legguards
										{ "i", 22374, 20 },	-- Wartorn Chain Scrap
										{ "i", 12360, 3 },	-- Arcanite Bar
										{ "i", 15407, 5 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,	-- Can be repeated
									["lvl"] = 60,	-- Required level
									["groups"] = {
										i(236045), -- Cryptstalker Legguards
										i(236053), -- Cryptstalker Leggings
									},
								}),

								q(9058, {	-- Cryptstalker Boots
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16132,	-- Huntsman Leopold <The Scarlet Crusade>
									["coord"] = { 82.5, 58.6, EASTERN_PLAGUELANDS },	-- Eastern Plaguelands
									["cost"] = {
										{ "i", 22365, 1 },	-- Desecrated Boots
										{ "i", 22374, 12 },	-- Wartorn Chain Scrap
										{ "i", 12360, 1 },	-- Arcanite Bar
										{ "i", 20725, 3 },	-- Nexus Crystal
									},
									["repeatable"] = true,	-- Can be repeated
									["lvl"] = 60,	-- Required level
									["groups"] = {
										i(236049), -- Cryptstalker Boots
										i(236057), -- Cryptstalker Greaves
									},
								}),
							}),
							cl(ROGUE, {
								q(9079, {  -- Bonescythe Helmet
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16131, -- Rohan the Assassin
									["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22353, 1 }, -- Desecrated Helmet
										{ "i", 22373, 15 }, -- Wartorn Leather Scrap
										{ "i", 15407, 8 }, -- Cured Rugged Hide
										{ "i", 20725, 1 }, -- Nexus Crystal
										{ "g", 750000 }, -- 75g
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236025), -- Bonescythe Helmet
										i(236037), -- Bonescythe Mask
									},
								}),

								q(9080, {  -- Bonescythe Pauldrons
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16131, -- Rohan the Assassin
									["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22354, 1 }, -- Desecrated Pauldrons
										{ "i", 22373, 12 }, -- Wartorn Leather Scrap
										{ "i", 15407, 5 }, -- Cured Rugged Hide
										{ "i", 20725, 1 }, -- Nexus Crystal
										{ "g", 500000 }, -- 50g
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236026), -- Bonescythe Pauldrons
										i(236035), -- Bonescythe Mantle
									},
								}),

								q(9077, {  -- Bonescythe Breastplate
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16131, -- Rohan the Assassin
									["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22349, 1 }, -- Desecrated Breastplate
										{ "i", 22373, 25 }, -- Wartorn Leather Scrap
										{ "i", 12360, 2 }, -- Arcanite Bar
										{ "i", 15407, 6 }, -- Cured Rugged Hide
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236023), -- Bonescythe Breastplate
										i(236039), -- Bonescythe Chestguard
									},
								}),

								q(9084, {  -- Bonescythe Bracers
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16131, -- Rohan the Assassin
									["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22355, 1 }, -- Desecrated Bracers
										{ "i", 22373, 6 }, -- Wartorn Leather Scrap
										{ "i", 12360, 1 }, -- Arcanite Bar
										{ "i", 15407, 2 }, -- Cured Rugged Hide
										{ "g", 100000 }, -- 10g
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236030), -- Bonescythe Bracers
										i(236040), -- Bonescythe Wristguards
									},
								}),

								q(9082, {  -- Bonescythe Gauntlets
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16131, -- Rohan the Assassin
									["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22357, 1 }, -- Desecrated Gauntlets
										{ "i", 22373, 8 }, -- Wartorn Leather Scrap
										{ "i", 12360, 1 }, -- Arcanite Bar
										{ "i", 15407, 5 }, -- Cured Rugged Hide
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236028), -- Bonescythe Gauntlets
										i(236038), -- Bonescythe Grips
									},
								}),

								q(9083, {  -- Bonescythe Waistguard
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16131, -- Rohan the Assassin
									["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22356, 1 }, -- Desecrated Waistguard
										{ "i", 22373, 8 }, -- Wartorn Leather Scrap
										{ "i", 15407, 5 }, -- Cured Rugged Hide
										{ "i", 20725, 1 }, -- Nexus Crystal
										{ "g", 150000 }, -- 15g
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236029), -- Bonescythe Waistguard
										i(236032), -- Bonescythe Belt
									},
								}),

								q(9078, {  -- Bonescythe Legplates
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16131, -- Rohan the Assassin
									["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22352, 1 }, -- Desecrated Legplates
										{ "i", 22373, 20 }, -- Wartorn Leather Scrap
										{ "i", 12360, 1 }, -- Arcanite Bar
										{ "i", 15407, 8 }, -- Cured Rugged Hide
										{ "g", 1000000 }, -- 100g
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236024), -- Bonescythe Legplates
										i(236036), -- Bonescythe Leggings
									},
								}),

								q(9081, {  -- Bonescythe Sabatons
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16131, -- Rohan the Assassin
									["coord"] = { 81.4, 58.5, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22358, 1 }, -- Desecrated Sabatons
										{ "i", 22373, 12 }, -- Wartorn Leather Scrap
										{ "i", 15407, 3 }, -- Cured Rugged Hide
										{ "i", 20725, 2 }, -- Nexus Crystal
										{ "g", 250000 }, -- 25g
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236027), -- Bonescythe Sabatons
										i(236033), -- Bonescythe Treads
									},
								}),
							}),
							cl(PRIEST, {
								q(9113, {	-- Circlet of Faith
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16113,	-- Father Inigo Montoy <Brotherhood of the Light>
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22367, 1 },	-- Desecrated Circlet
										{ "i", 22376, 15 },	-- Wartorn Cloth Scrap
										{ "i", 14342, 3 },	-- Mooncloth
										{ "i", 20725, 3 },	-- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236103), -- Circlet of Faith
										i(236110), -- Crown of Faith
									},
								}),
								q(9114, {	-- Shoulderpads of Faith
									["sourceQuest"] = 9033,
									["qg"] = 16113,
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22368, 1 },
										{ "i", 22376, 12 },
										{ "i", 14342, 2 },
										{ "i", 15407, 3 },
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236102), -- Shoulderpads of Faith
										i(236108), -- Mantle of Faith
									},
								}),
								q(9111, {	-- Robe of Faith
									["sourceQuest"] = 9033,
									["qg"] = 16113,
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22351, 1 },
										{ "i", 22376, 25 },
										{ "i", 14342, 4 },
										{ "i", 20725, 2 },
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236097), -- Robe of Faith
										i(236114), -- Garb of Faith
									},
								}),
								q(9118, {	-- Bindings of Faith
									["sourceQuest"] = 9033,
									["qg"] = 16113,
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22369, 1 },
										{ "i", 22376, 6 },
										{ "i", 12363, 1 },
										{ "i", 20725, 1 },
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236100), -- Bindings of Faith
										i(236106), -- Wrists of Faith
									},
								}),
								q(9116, {	-- Gloves of Faith
									["sourceQuest"] = 9033,
									["qg"] = 16113,
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22371, 1 },
										{ "i", 22376, 8 },
										{ "i", 14342, 4 },
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236104), -- Gloves of Faith
										i(236111), -- Hands of Faith
									},
								}),
								q(9117, {	-- Belt of Faith
									["sourceQuest"] = 9033,
									["qg"] = 16113,
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22370, 1 },
										{ "i", 22376, 8 },
										{ "i", 12363, 2 },
										{ "i", 14342, 2 },
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236098), -- Belt of Faith
										i(236107), -- Girdle of Faith
									},
								}),
								q(9112, {	-- Leggings of Faith
									["sourceQuest"] = 9033,
									["qg"] = 16113,
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22366, 1 },
										{ "i", 22376, 20 },
										{ "i", 14342, 4 },
										{ "i", 20725, 2 },
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236101), -- Leggings of Faith
										i(236109), -- Pants of Faith
									},
								}),
								q(9115, {	-- Sandals of Faith
									["sourceQuest"] = 9033,
									["qg"] = 16113,
									["coord"] = { 81.5, 58.2, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22372, 1 },
										{ "i", 22376, 12 },
										{ "i", 14342, 2 },
										{ "i", 15407, 3 },
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236099), -- Sandals of Faith
										i(236113), -- Boots of Faith
									},
								}),
							}),
							cl(SHAMAN, {
								q(9070, {	-- Earthshatter Headpiece
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
									["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22360, 1 },	-- Desecrated Headpiece
										{ "i", 22374, 15 },	-- Wartorn Chain Scrap
										{ "i", 12360, 4 },	-- Arcanite Bar
										{ "i", 20725, 2 },	-- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236144),	-- Earthshatter Headpiece
										i(236155),	-- Earthshatter Crown
										i(236165),	-- Earthshatter Faceguard
										i(236174),	-- Earthshatter Helmet
									},
								}),
								q(9071, {	-- Earthshatter Spaulders
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
									["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22361, 1 },	-- Desecrated Spaulders
										{ "i", 22374, 12 },	-- Wartorn Chain Scrap
										{ "i", 12360, 2 },	-- Arcanite Bar
										{ "i", 14342, 2 },	-- Mooncloth
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236145),	-- Earthshatter Spaulders
										i(236153),	-- Earthshatter Mantle
										i(236163),	-- Earthshatter Pauldrons
										i(236172),	-- Earthshatter Epaulets
									},
								}),
								q(9068, {	-- Earthshatter Tunic
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
									["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22350, 1 },	-- Desecrated Tunic
										{ "i", 22374, 25 },	-- Wartorn Chain Scrap
										{ "i", 12360, 4 },	-- Arcanite Bar
										{ "i", 15407, 3 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236147),	-- Earthshatter Tunic
										i(236154),	-- Earthshatter Kilt
										i(236169),	-- Earthshatter Chestguard
										i(236179),	-- Earthshatter Armor
									},
								}),
								q(9075, {	-- Earthshatter Wristguards
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
									["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22362, 1 },	-- Desecrated Wristguards
										{ "i", 22374, 6 },	-- Wartorn Chain Scrap
										{ "i", 12360, 1 },	-- Arcanite Bar
										{ "i", 15407, 2 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236149),	-- Earthshatter Wristguards
										i(236151),	-- Earthshatter Bindings
										i(236160),	-- Earthshatter Bracers
										i(236170),	-- Earthshatter Vambraces
									},
								}),
								q(9073, {	-- Earthshatter Handguards
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
									["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22364, 1 },	-- Desecrated Handguards
										{ "i", 22374, 8 },	-- Wartorn Chain Scrap
										{ "i", 12360, 1 },	-- Arcanite Bar
										{ "i", 15407, 5 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236142),	-- Earthshatter Handguards
										i(236156),	-- Earthshatter Mitts
										i(236166),	-- Earthshatter Gloves
										i(236175),	-- Earthshatter Grips
									},
								}),
								q(9074, {	-- Earthshatter Girdle
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
									["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22363, 1 },	-- Desecrated Girdle
										{ "i", 22374, 8 },	-- Wartorn Chain Scrap
										{ "i", 12360, 1 },	-- Arcanite Bar
										{ "i", 20725, 3 },	-- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236148),	-- Earthshatter Girdle
										i(236152),	-- Earthshatter Cord
										i(236162),	-- Earthshatter Waistguard
										i(236171),	-- Earthshatter Belt
									},
								}),
								q(9069, {	-- Earthshatter Legguards
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
									["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22359, 1 },	-- Desecrated Legguards
										{ "i", 22374, 20 },	-- Wartorn Chain Scrap
										{ "i", 12360, 3 },	-- Arcanite Bar
										{ "i", 15407, 5 },	-- Cured Rugged Hide
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236143),	-- Earthshatter Legguards
										i(236164),	-- Earthshatter Legplates
										i(236173),	-- Earthshatter Leggings
										i(236158),	-- Earthshatter Greaves
									},
								}),
								q(9072, {	-- Earthshatter Boots
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16134,	-- Rimblat Earthshatter <The Earthen Ring>
									["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22365, 1 },	-- Desecrated Boots
										{ "i", 22374, 12 },	-- Wartorn Chain Scrap
										{ "i", 12360, 1 },	-- Arcanite Bar
										{ "i", 20725, 3 },	-- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236146),	-- Earthshatter Boots
										i(236168),	-- Earthshatter Sabatons
										i(236177),	-- Earthshatter Treads
										i(236159),	-- Earthshatter Embrace
									},
								}),
							}),
							cl(MAGE, {
								q(9097, {	-- Frostfire Circlet
									["sourceQuest"] = 9033,	-- Echoes of War
									["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
									["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22367, 1 },	-- Desecrated Circlet
										{ "i", 22376, 15 },	-- Wartorn Cloth Scrap
										{ "i", 14342, 3 },	-- Mooncloth
										{ "i", 20725, 3 },	-- Nexus Crystal
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236083), -- Frostfire Circlet
										i(236091), -- Frostfire Hood
									},
								}),

								q(9098, {	-- Frostfire Shoulderpads
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16116, -- Archmage Angela Dosantos <Brotherhood of the Light>
									["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22368, 1 }, -- Desecrated Shoulderpads
										{ "i", 22376, 12 }, -- Wartorn Cloth Scrap
										{ "i", 14342, 2 }, -- Mooncloth
										{ "i", 15407, 3 }, -- Cured Rugged Hide
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236084), -- Frostfire Shoulderpads
										i(236089), -- Frostfire Mantle
									},
								}),

								q(9095, {	-- Frostfire Robe
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16116, -- Archmage Angela Dosantos <Brotherhood of the Light>
									["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22351, 1 }, -- Desecrated Robe
										{ "i", 22376, 25 }, -- Wartorn Cloth Scrap
										{ "i", 14342, 4 }, -- Mooncloth
										{ "i", 20725, 2 }, -- Nexus Crystal
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236081), -- Frostfire Robe
										i(236095), -- Frostfire Garb
									},
								}),

								q(9102, {	-- Frostfire Bindings
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16116, -- Archmage Angela Dosantos <Brotherhood of the Light>
									["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22369, 1 }, -- Desecrated Bindings
										{ "i", 22376, 6 }, -- Wartorn Cloth Scrap
										{ "i", 12363, 1 }, -- Arcane Crystal
										{ "i", 20725, 1 }, -- Nexus Crystal
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236077), -- Frostfire Bindings
										i(236087), -- Frostfire Wristwraps
									},
								}),

								q(9100, {	-- Frostfire Gloves
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16116, -- Archmage Angela Dosantos <Brotherhood of the Light>
									["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22371, 1 }, -- Desecrated Gloves
										{ "i", 22376, 8 }, -- Wartorn Cloth Scrap
										{ "i", 14342, 4 }, -- Mooncloth
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236082), -- Frostfire Gloves
										i(236092), -- Frostfire Mitts
									},
								}),

								q(9101, {	-- Frostfire Belt
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16116, -- Archmage Angela Dosantos <Brotherhood of the Light>
									["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22370, 1 }, -- Desecrated Belt
										{ "i", 22376, 8 }, -- Wartorn Cloth Scrap
										{ "i", 12363, 2 }, -- Arcane Crystal
										{ "i", 14342, 2 }, -- Mooncloth
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236078), -- Frostfire Belt
										i(236088), -- Frostfire Waistguard
									},
								}),

								q(9096, {	-- Frostfire Leggings
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16116, -- Archmage Angela Dosantos <Brotherhood of the Light>
									["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22366, 1 }, -- Desecrated Leggings
										{ "i", 22376, 20 }, -- Wartorn Cloth Scrap
										{ "i", 14342, 4 }, -- Mooncloth
										{ "i", 20725, 2 }, -- Nexus Crystal
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236079), -- Frostfire Leggings
										i(236090), -- Frostfire Pants
									},
								}),

								q(9099, {	-- Frostfire Sandals
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16116, -- Archmage Angela Dosantos <Brotherhood of the Light>
									["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22372, 1 }, -- Desecrated Sandals
										{ "i", 22376, 12 }, -- Wartorn Cloth Scrap
										{ "i", 14342, 2 }, -- Mooncloth
										{ "i", 15407, 3 }, -- Cured Rugged Hide
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236080), -- Frostfire Sandals
										i(236094), -- Frostfire Boots
									},
								}),
							}),
							cl(WARLOCK, {
								q(9105, {	-- Plagueheart Circlet
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16133, -- Mataus the Wrathcaster <The Scarlet Crusade>
									["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22367, 1 }, -- Desecrated Circlet
										{ "i", 22376, 15 }, -- Wartorn Cloth Scrap
										{ "i", 14342, 3 }, -- Mooncloth
										{ "i", 14344, 3 }, -- Large Brilliant Shard
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236064), -- Plagueheart Circlet
										i(236072), -- Plagueheart Crown
									},
								}),

								q(9106, {	-- Plagueheart Shoulderpads
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16133, -- Mataus the Wrathcaster <The Scarlet Crusade>
									["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22368, 1 }, -- Desecrated Shoulderpads
										{ "i", 22376, 12 }, -- Wartorn Cloth Scrap
										{ "i", 14342, 2 }, -- Mooncloth
										{ "i", 15407, 3 }, -- Cured Rugged Hide
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236065), -- Plagueheart Shoulderpads
										i(236070), -- Plagueheart Mantle
									},
								}),

								q(9103, {	-- Plagueheart Robe
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16133, -- Mataus the Wrathcaster <The Scarlet Crusade>
									["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22351, 1 }, -- Desecrated Robe
										{ "i", 22376, 25 }, -- Wartorn Cloth Scrap
										{ "i", 14342, 4 }, -- Mooncloth
										{ "i", 20725, 2 }, -- Nexus Crystal
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236062), -- Plagueheart Robe
										i(236076), -- Plagueheart Garb
									},
								}),

								q(9110, {	-- Plagueheart Bindings
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16133, -- Mataus the Wrathcaster <The Scarlet Crusade>
									["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22369, 1 }, -- Desecrated Bindings
										{ "i", 22376, 6 }, -- Wartorn Cloth Scrap
										{ "i", 12363, 1 }, -- Arcane Crystal
										{ "i", 20725, 1 }, -- Nexus Crystal
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236061), -- Plagueheart Bindings
										i(236068), -- Plagueheart Wristguards
									},
								}),

								q(9108, {	-- Plagueheart Gloves
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16133, -- Mataus the Wrathcaster <The Scarlet Crusade>
									["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22371, 1 }, -- Desecrated Gloves
										{ "i", 22376, 8 }, -- Wartorn Cloth Scrap
										{ "i", 14342, 4 }, -- Mooncloth
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236063), -- Plagueheart Gloves
										i(236073), -- Plagueheart Handguards
									},
								}),

								q(9109, {	-- Plagueheart Belt
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16133, -- Mataus the Wrathcaster <The Scarlet Crusade>
									["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22370, 1 }, -- Desecrated Belt
										{ "i", 22376, 8 }, -- Wartorn Cloth Scrap
										{ "i", 14342, 2 }, -- Mooncloth
										{ "i", 12363, 2 }, -- Arcane Crystal
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236066), -- Plagueheart Belt
										i(236069), -- Plagueheart Waistguard
									},
								}),

								q(9104, {	-- Plagueheart Leggings
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16133, -- Mataus the Wrathcaster <The Scarlet Crusade>
									["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22366, 1 }, -- Desecrated Leggings
										{ "i", 22376, 20 }, -- Wartorn Cloth Scrap
										{ "i", 14342, 4 }, -- Mooncloth
										{ "i", 20725, 2 }, -- Nexus Crystal
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236060), -- Plagueheart Leggings
										i(236071), -- Plagueheart Pants
									},
								}),

								q(9107, {	-- Plagueheart Sandals
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16133, -- Mataus the Wrathcaster <The Scarlet Crusade>
									["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS }, -- Eastern Plaguelands
									["cost"] = {
										{ "i", 22372, 1 }, -- Desecrated Sandals
										{ "i", 22376, 12 }, -- Wartorn Cloth Scrap
										{ "i", 14342, 2 }, -- Mooncloth
										{ "i", 15407, 3 }, -- Cured Rugged Hide
									},
									["repeatable"] = true, -- Can be repeated
									["lvl"] = 60, -- Required level
									["groups"] = {
										i(236059), -- Plagueheart Sandals
										i(236075), -- Plagueheart Boots
									},
								}),
							}),
							cl(DRUID, {
								q(9088, {	-- Dreamwalker Headpiece
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16135, -- Rayne <Cenarion Circle>
									["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22360, 1 }, -- Desecrated Headpiece
										{ "i", 22373, 15 }, -- Wartorn Leather Scrap
										{ "i", 15407, 6 }, -- Cured Rugged Hide
										{ "i", 20725, 2 }, -- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236182), -- Dreamwalker Headpiece
										i(236196), -- Dreamwalker Hood
										i(236205), -- Dreamwalker Headdress
										i(236214), -- Dreamwalker Cowl
									},
								}),

								q(9089, {	-- Dreamwalker Spaulders
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16135, -- Rayne <Cenarion Circle>
									["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22361, 1 }, -- Desecrated Spaulders
										{ "i", 22373, 12 }, -- Wartorn Leather Scrap
										{ "i", 15407, 5 }, -- Cured Rugged Hide
										{ "i", 20725, 1 }, -- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236189), -- Dreamwalker Spaulders
										i(236194), -- Dreamwalker Mantle
										i(236212), -- Dreamwalker Shoulderpads
										i(236203), -- Dreamwalker Pauldrons
									},
								}),

								q(9086, {	-- Dreamwalker Tunic
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16135, -- Rayne <Cenarion Circle>
									["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22350, 1 }, -- Desecrated Tunic
										{ "i", 22373, 25 }, -- Wartorn Leather Scrap
										{ "i", 15407, 6 }, -- Cured Rugged Hide
										{ "i", 20725, 2 }, -- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236186), -- Dreamwalker Tunic
										i(236200), -- Dreamwalker Leathers
										i(236209), -- Dreamwalker Armor
										i(236218), -- Dreamwalker Vest
									},
								}),

								q(9093, {	-- Dreamwalker Wristguards
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16135, -- Rayne <Cenarion Circle>
									["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22362, 1 }, -- Desecrated Wristguards
										{ "i", 22373, 6 }, -- Wartorn Leather Scrap
										{ "i", 15407, 2 }, -- Cured Rugged Hide
										{ "i", 12363, 1 }, -- Arcane Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236183), -- Dreamwalker Wristguards
										i(236192), -- Dreamwalker Bindings
										i(236201), -- Dreamwalker Bracers
										i(236210), -- Dreamwalker Wraps
									},
								}),

								q(9091, {	-- Dreamwalker Handguards
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16135, -- Rayne <Cenarion Circle>
									["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22364, 1 }, -- Desecrated Handguards
										{ "i", 22373, 8 }, -- Wartorn Leather Scrap
										{ "i", 15407, 5 }, -- Cured Rugged Hide
										{ "i", 20725, 1 }, -- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236184), -- Dreamwalker Handguards
										i(236197), -- Dreamwalker Mitts
										i(236206), -- Dreamwalker Gauntlets
										i(236215), -- Dreamwalker Grips
									},
								}),

								q(9092, {	-- Dreamwalker Girdle
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16135, -- Rayne <Cenarion Circle>
									["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22363, 1 }, -- Desecrated Girdle
										{ "i", 22373, 8 }, -- Wartorn Leather Scrap
										{ "i", 15407, 2 }, -- Cured Rugged Hide
										{ "i", 14342, 3 }, -- Mooncloth
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236187), -- Dreamwalker Girdle
										i(236193), -- Dreamwalker Cord
										i(236202), -- Dreamwalker Waistguard
										i(236211), -- Dreamwalker Sash
									},
								}),

								q(9087, {	-- Dreamwalker Legguards
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16135, -- Rayne <Cenarion Circle>
									["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22359, 1 }, -- Desecrated Legguards
										{ "i", 22373, 20 }, -- Wartorn Leather Scrap
										{ "i", 15407, 8 }, -- Cured Rugged Hide
										{ "i", 20725, 1 }, -- Nexus Crystal
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236188), -- Dreamwalker Legguards
										i(236195), -- Dreamwalker Kilt
										i(236204), -- Dreamwalker Leggings
										i(236213), -- Dreamwalker Trousers
									},
								}),

								q(9090, {	-- Dreamwalker Boots
									["sourceQuest"] = 9033, -- Echoes of War
									["qg"] = 16135, -- Rayne <Cenarion Circle>
									["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
									["cost"] = {
										{ "i", 22365, 1 }, -- Desecrated Boots
										{ "i", 22373, 12 }, -- Wartorn Leather Scrap
										{ "i", 15407, 2 }, -- Cured Rugged Hide
										{ "i", 14342, 3 }, -- Mooncloth
									},
									["repeatable"] = true,
									["lvl"] = 60,
									["groups"] = {
										i(236185), -- Dreamwalker Boots
										i(236199), -- Dreamwalker Sandals
										i(236208), -- Dreamwalker Sabatons
										i(236217), -- Dreamwalker Stompers
									},
								}),
							}),
							q(9033, {	-- Echoes of War
								["sourceQuests"] = {
									9121,	-- The Dread Citadel - Naxxramas
									9122,	-- The Dread Citadel - Naxxramas
									9123,	-- The Dread Citadel - Naxxramas
								},
								["qg"] = 16115,	-- Commander Eligor Dawnbringer <Brotherhood of the Light>
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
								["sourceQuest"] = 9233,	-- Omarion's Handbook
								["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
								["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
								["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
								["cost"] = {
									{ "i", 22682, 5 },	-- Frozen Rune
									{ "i",  7080, 2 },	-- Essence of Water
									{ "i", 14048, 4 },	-- Bolt of Runecloth
									{ "i", 14227, 4 },	-- Ironweb Spider Silk
									{ "g", 2000000 },	-- 200g
								},
								["lvl"] = 60,
								-- #if BEFORE WRATH
								["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
								-- #endif
								["groups"] = {
									i(22658),	-- Glacial Cloak
								},
							}),
							q(9239, {	-- Glacial Gloves
								["sourceQuest"] = 9233,	-- Omarion's Handbook
								["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
								["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22682, 5 },	-- Frozen Rune
									{ "i",  7080, 4 },	-- Essence of Water
									{ "i", 14048, 4 },	-- Bolt of Runecloth
									{ "i", 14227, 2 },	-- Ironweb Spider Silk
									{ "g", 2000000 },	-- 200g
								},
								["classes"] = { PRIEST, MAGE, WARLOCK },
								["lvl"] = 60,
								-- #if BEFORE WRATH
								["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
								-- #endif
								["groups"] = {
									i(22654),	-- Glacial Gloves
								},
							}),
							q(9240, {	-- Glacial Vest
								["sourceQuest"] = 9233,	-- Omarion's Handbook
								["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
								["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
								["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
								["cost"] = {
									{ "i", 22682, 8 },	-- Frozen Rune
									{ "i",  7080, 6 },	-- Essence of Water
									{ "i", 14048, 8 },	-- Bolt of Runecloth
									{ "i", 14227, 4 },	-- Ironweb Spider Silk
									{ "g", 3000000 },	-- 300g
								},
								["classes"] = { PRIEST, MAGE, WARLOCK },
								["lvl"] = 60,
								-- #if BEFORE WRATH
								["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
								-- #endif
								["groups"] = {
									i(22652),	-- Glacial Vest
								},
							}),
							q(9238, {	-- Glacial Wrists
								["sourceQuest"] = 9233,	-- Omarion's Handbook
								["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
								["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22682, 4 },	-- Frozen Rune
									{ "i",  7080, 2 },	-- Essence of Water
									{ "i", 14048, 2 },	-- Bolt of Runecloth
									{ "i", 14227, 2 },	-- Ironweb Spider Silk
									{ "g", 2000000 },	-- 200g
								},
								["classes"] = { PRIEST, MAGE, WARLOCK },
								["lvl"] = 60,
								-- #if BEFORE WRATH
								["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
								-- #endif
								["groups"] = {
									i(22655),	-- Glacial Wrists
								},
							}),
							q(9235, {	-- Icebane Bracers
								["sourceQuest"] = 9233,	-- Omarion's Handbook
								["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
								["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22682, 4 },	-- Frozen Rune
									{ "i", 7080, 2 },	-- Essence of Water
									{ "i", 12359, 12 },	-- Thorium Bar
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "g", 2000000 },	-- 200g
								},
								["classes"] = { WARRIOR, PALADIN },
								["lvl"] = 60,
								-- #if BEFORE WRATH
								["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
								-- #endif
								["groups"] = {
									i(22671),	-- Icebane Bracers
								},
							}),
							q(9236, {	-- Icebane Breastplate
								["sourceQuest"] = 9233,	-- Omarion's Handbook
								["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
								["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
								["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
								["cost"] = {
									{ "i", 22682, 8 },	-- Frozen Rune
									{ "i", 7080, 4 },	-- Essence of Water
									{ "i", 12359, 16 },	-- Thorium Bar
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "g", 3000000 },	-- 300g
								},
								["classes"] = { WARRIOR, PALADIN },
								["lvl"] = 60,
								-- #if BEFORE WRATH
								["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
								-- #endif
								["groups"] = {
									i(22669),	-- Icebane Breastplate
								},
							}),
							q(9234, {	-- Icebane Gauntlets
								["sourceQuest"] = 9233,	-- Omarion's Handbook
								["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
								["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22682, 5 },	-- Frozen Rune
									{ "i", 7080, 2 },	-- Essence of Water
									{ "i", 12359, 12 },	-- Thorium Bar
									{ "i", 12360, 2 },	-- Arcanite Bar
									{ "g", 2000000 },	-- 200g
								},
								["classes"] = { WARRIOR, PALADIN },
								["lvl"] = 60,
								-- #if BEFORE WRATH
								["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
								-- #endif
								["groups"] = {
									i(22670),	-- Icebane Gauntlets
								},
							}),
							q(9244, {	-- Icy Scale Bracers
								["sourceQuest"] = 9233,	-- Omarion's Handbook
								["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
								["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22682, 4 },	-- Frozen Rune
									{ "i",  7080, 5 },	-- Essence of Water
									{ "i", 15407, 3 },	-- Cured Rugged Hide
									{ "i", 15408, 16 },	-- Heavy Scorpid Scale
									{ "g", 2000000 },	-- 200g
								},
								["classes"] = { HUNTER, SHAMAN },
								["lvl"] = 60,
								-- #if BEFORE WRATH
								["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
								-- #endif
								["groups"] = {
									i(22665),	-- Icy Scale Bracers
								},
							}),
							q(9246, {	-- Icy Scale Breastplate
								["sourceQuest"] = 9233,	-- Omarion's Handbook
								["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
								["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
								["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
								["cost"] = {
									{ "i", 22682, 8 },	-- Frozen Rune
									{ "i",  7080, 7 },	-- Essence of Water
									{ "i", 15407, 5 },	-- Cured Rugged Hide
									{ "i", 15408, 24 },	-- Heavy Scorpid Scale
									{ "g", 3000000 },	-- 300g
								},
								["classes"] = { HUNTER, SHAMAN },
								["lvl"] = 60,
								-- #if BEFORE WRATH
								["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
								-- #endif
								["groups"] = {
									i(22664),	-- Icy Scale Breastplate
								},
							}),
							q(9245, {	-- Icy Scale Gauntlets
								["sourceQuest"] = 9233,	-- Omarion's Handbook
								["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
								["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22682, 5 },	-- Frozen Rune
									{ "i",  7080, 5 },	-- Essence of Water
									{ "i", 15407, 3 },	-- Cured Rugged Hide
									{ "i", 15408, 16 },	-- Heavy Scorpid Scale
									{ "g", 2000000 },	-- 200g
								},
								["classes"] = { HUNTER, SHAMAN },
								["lvl"] = 60,
								-- #if BEFORE WRATH
								["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
								-- #endif
								["groups"] = {
									i(22666),	-- Icy Scale Gauntlets
								},
							}),
							q(9233, {	-- Omarion's Handbook
								["description"] = "You must not have a profession above 270 skill for you to get this item from Omarion.",
								["provider"] = { "i", 22719 },	-- Omarion's Handbook
								["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
								["lvl"] = 60,
								-- #if BEFORE WRATH
								["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
								-- #endif
							}),
							q(9241, {	-- Polar Bracers
								["sourceQuest"] = 9233,	-- Omarion's Handbook
								["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
								["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22682, 4 },	-- Frozen Rune
									{ "i",  7080, 3 },	-- Essence of Water
									{ "i", 12810, 12 },	-- Enchanted Leather
									{ "i", 15407, 3 },	-- Cured Rugged Hide
									{ "g", 2000000 },	-- 200g
								},
								["classes"] = { ROGUE, DRUID },
								["lvl"] = 60,
								-- #if BEFORE WRATH
								["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
								-- #endif
								["groups"] = {
									i(22663),	-- Polar Bracers
								},
							}),
							q(9242, {	-- Polar Gloves
								["sourceQuest"] = 9233,	-- Omarion's Handbook
								["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
								["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
								["cost"] = {
									{ "i", 22682, 5 },	-- Frozen Rune
									{ "i",  7080, 3 },	-- Essence of Water
									{ "i", 15407, 3 },	-- Cured Rugged Hide
									{ "i", 12810, 12 },	-- Enchanted Leather
									{ "g", 2000000 },	-- 200g
								},
								["classes"] = { ROGUE, DRUID },
								["lvl"] = 60,
								-- #if BEFORE WRATH
								["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
								-- #endif
								["groups"] = {
									i(22662),	-- Polar Gloves
								},
							}),
							q(9243, {	-- Polar Tunic
								["sourceQuest"] = 9233,	-- Omarion's Handbook
								["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
								["coord"] = { 81.0, 59.6, EASTERN_PLAGUELANDS },
								["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
								["cost"] = {
									{ "i", 22682, 8 },	-- Frozen Rune
									{ "i",  7080, 5 },	-- Essence of Water
									{ "i", 15407, 5 },	-- Cured Rugged Hide
									{ "i", 12810, 16 },	-- Enchanted Leather
									{ "g", 3000000 },	-- 300g
								},
								["classes"] = { ROGUE, DRUID },
								["lvl"] = 60,
								-- #if BEFORE WRATH
								["OnUpdate"] = [[_.OnUpdateDB.OMARIONS_HANDBOOK]],
								-- #endif
								["groups"] = {
									i(22661),	-- Polar Tunic
								},
							}),
							q(9230, {	-- Ramaladni's Icy Grasp
								["sourceQuest"] = 9229,	-- The Fate of Ramaldni
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
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
								["altQuests"] = {
									9122,	-- The Dread Citadel - Naxxramas [Revered]
									9123,	-- The Dread Citadel - Naxxramas [Exalted]
									9378,	-- Attunement [HIDDEN QUEST TRIGGER]
								},
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["minReputation"] = { FACTION_ARGENT_DAWN, HONORED },	-- Argent Dawn, Honored.
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
								["altQuests"] = {
									9121,	-- The Dread Citadel - Naxxramas [Honored]
									9123,	-- The Dread Citadel - Naxxramas [Exalted]
									9378,	-- Attunement [HIDDEN QUEST TRIGGER]
								},
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
								["cost"] = {
									{ "i", 12363, 2 },	-- Arcane Crystal
									{ "i", 20725, 1 },	-- Nexus Crystal
									{ "g", 300000 },	-- 30g
								},
								["lvl"] = 60,
							}),
							q(9123, {	-- The Dread Citadel - Naxxramas [Exalted]
								["altQuests"] = {
									9121,	-- The Dread Citadel - Naxxramas [Honored]
									9122,	-- The Dread Citadel - Naxxramas [Revered]
									9378,	-- Attunement [HIDDEN QUEST TRIGGER]
								},
								["qg"] = 16116,	-- Archmage Angela Dosantos <Brotherhood of the Light>
								["coord"] = { 81.5, 58.3, EASTERN_PLAGUELANDS },
								["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
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
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16112,	-- Korfax, Champion of the Light <Brotherhood of the Light>
								["coord"] = { 81.8, 58.1, EASTERN_PLAGUELANDS },
								["lvl"] = 60,
								["groups"] = {
									objective(1, {	-- 0/1 Fate of Ramaladni
										["provider"] = { "i", 22708 },	-- Fate of Ramaladni
									}),
								},
							}),
							q(9232, {	-- The Only Song I Know...
								["sourceQuest"] = 9033,	-- Echoes of War
								["qg"] = 16376,	-- Craftsman Wilhelm <Brotherhood of the Light>
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
						n(16135, {	-- Rayne (DRUID)
							["coord"] = { 81.2, 59.0, EASTERN_PLAGUELANDS },
							["groups"] = {
								i(236190, {	-- Ring of the Dreamwalker
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
								i(236198, {	-- Band of the Dreamwalker
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
								i(236207, {	-- Loop of the Dreamwalker
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
								i(236216, {	-- Signet of the Dreamwalker
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
							},
						}),
						n(16132, {	-- Huntsman Leopold (HUNTER)
							["coord"] = { 81.6, 58.0, EASTERN_PLAGUELANDS },
							["groups"] = {
								i(236041, {	-- Ring of the Cryptstalker
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
								i(236056, {	-- Band of the Cryptstalker
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
							},
						}),
						n(16116, {	-- Archmage Angela Dosantos (MAGE)
							["coord"] = { 81.6, 58.0, EASTERN_PLAGUELANDS },
							["groups"] = {
								i(236085, {	-- Ring of the Frostfire
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
								i(236093, {	-- Band of the Frostfire
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
							},
						}),
						n(16115, {	-- Commander Eligor Dawnbringer  (PALADIN)
							["coord"] = { 81.6, 58.0, EASTERN_PLAGUELANDS },
							["groups"] = {
								i(236116, {	-- Ring of the Redemption
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
								i(236130, {	-- Band of the Redemption
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
								i(236139, {	-- Loop of the Redemption
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
							},
						}),
						n(16113, {	-- Father Inigo Montoy (PRIEST)
							["coord"] = { 81.6, 58.0, EASTERN_PLAGUELANDS },
							["groups"] = {
								i(236105, {	-- Ring of the Faith
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
								i(236112, {	-- Band of the Faith
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
							},
						}),
						n(16131, {	-- Rohan the Assassin (ROGUE)
							["coord"] = { 81.6, 58.0, EASTERN_PLAGUELANDS },
							["groups"] = {
								i(236031, {	-- Ring of the Bonescythe
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
								i(236034, {	-- Band of the Bonescythe
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
							},
						}),
						n(16134, {	-- Rimblat Earthshatter (SHAMAN)
							["coord"] = { 81.1, 59.0, EASTERN_PLAGUELANDS },
							["groups"] = {
								i(236150, {	-- Ring of the Earthshatterer
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
								i(236157, {	-- Band of the Earthshatterer
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
								i(236167, {	-- Loop of the Earthshatterer
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
								i(236176, {	-- Signet of the Earthshatterer
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
							},
						}),
						n(16133, {	-- Mataus the Wrathcaster (WARLOCK)
							["coord"] = { 81.4, 58.2, EASTERN_PLAGUELANDS },
							["groups"] = {
								i(236067, {	-- Ring of the Plagueheart   -- Update IDs if needed
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
								i(236074, {	-- Loop of the Plagueheart
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
							},
						}),
						n(16112, {	-- Korfax (WARRIOR)
							["coord"] = { 81.6, 58.0, EASTERN_PLAGUELANDS },
							["groups"] = {
								i(236022, {	-- Band of the Dreadnaught
									["cost"] = {
										{ "i", 12938, 1 },	-- Blood of Heroes
										{ "i", 12363, 3 },	-- Arcane Crystal
										{ "i", 237381, 1 },	-- Desecrated Ring
									},
								}),
							},
						}),
						n(COMMON_BOSS_DROPS, {
							-- Helms
							-- Thaddius Only

							-- Shoulders
							i(236237, {	-- Desecrated Pauldrons
								["crs"] = {
									16028,	-- Patchwerk
									15931,	-- Grobbulus
									15932,	-- Gluth
								},
							}),
							i(236240, {	-- Desecrated Shoulderpads
								["crs"] = {
									16028,	-- Patchwerk
									15931,	-- Grobbulus
									15932,	-- Gluth
								},
							}),
							i(236254, {	-- Desecrated Spaulders
								["crs"] = {
									16028,	-- Patchwerk
									15931,	-- Grobbulus
									15932,	-- Gluth
								},
							}),

							-- Chest
							-- Four Horsemen Only

							-- Bracers
							i(236245, {	-- Desecrated Bindings
								["crs"] = {
									15956,	-- Anub'Rekhan
									15953,	-- Grand Widow Faerlina
									15932,	-- Gluth
								},
							}),
							i(236235, {	-- Desecrated Bracers
								["crs"] = {
									15956,	-- Anub'Rekhan
									15953,	-- Grand Widow Faerlina
									15932,	-- Gluth
								},
							}),
							i(236247, {	-- Desecrated Wristguards
								["crs"] = {
									15956,	-- Anub'Rekhan
									15953,	-- Grand Widow Faerlina
									15932,	-- Gluth
								},
							}),

							-- Gloves
							-- Maexxna Only

							-- Belts
							i(236244, {	-- Desecrated Belt
								["crs"] = {
									15954,	-- Noth the Plaguebringer
									15936,	-- Heigan the Unclean
									15932,	-- Gluth
								},
							}),
							i(236252, {	-- Desecrated Girdle
								["crs"] = {
									15954,	-- Noth the Plaguebringer
									15936,	-- Heigan the Unclean
									15932,	-- Gluth
								},
							}),
							i(236232, {	-- Desecrated Waistguard
								["crs"] = {
									15954,	-- Noth the Plaguebringer
									15936,	-- Heigan the Unclean
									15932,	-- Gluth
								},
							}),

							-- Legs
							-- Loatheb Only

							-- Boots
							i(236248, {	-- Desecrated Boots
								["crs"] = {
									16061,	-- Instructor Razuvious
									16060,	-- Gothik the Harvester
									15932,	-- Gluth
								},
							}),
							i(236234, {	-- Desecrated Sabatons
								["crs"] = {
									16061,	-- Instructor Razuvious
									16060,	-- Gothik the Harvester
									15932,	-- Gluth
								},
							}),
							i(236239, {	-- Desecrated Sandals
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
									i(236255),	-- Wristguards of Vengeance
									i(236256),	-- Touch of Frost
									i(236257),	-- Gem of Nerubis
									i(236258),	-- Cryptfiend Silk Cloak
									i(236259),	-- Band of Unanswered Prayers
								}),
								n(15953, {	-- Grand Widow Faerlina
									i(236260),	-- Icebane Pauldrons
									i(236261),	-- Malice Stone Pendant
									i(236262),	-- Polar Shoulder Pads
									i(236263),	-- Widow's Remorse
									i(236264),	-- The Widow's Embrace
								}),
								n(15952, {	-- Maexxna
									i(236233),	-- Desecrated Gauntlets
									i(236243),	-- Desecrated Gloves									
									i(236250),	-- Desecrated Handguards
									i(236265),	-- Wraith Blade
									i(236266),	-- Pendant of Forgotten Names
									i(236267),	-- Crystal Webbed Robe
									i(236268),	-- Kiss of the Spider
									i(236269),	-- Maexxna's Fang
								}),
							},
						}),
						n(NAXX_PLAGUE_QUARTER, {
							["icon"] = 136182,
							["groups"] = {
								n(15954, {	-- Noth the Plaguebringer
									i(236270),	-- Hatchet of Sundered Bone
									i(236271),	-- Libram of Light
									i(236272),	-- Cloak of the Scourge
									i(236273),	-- Band of the Inevitable
									i(236274),	-- Hailstone Band
									i(236275),	-- Noth's Frigid Heart
									i(236276),	-- Totem of Flowing Water
								}),
								n(15936, {	-- Heigan the Unclean
									i(236277),	-- Necklace of Necropsy
									i(236278),	-- Glacial Headdress
									i(236279),	-- Preceptor's Hat
									i(236280),	-- Legplates of Carnage
									i(236281),	-- Icy Scale Coif
								}),
								n(16011, {	-- Loatheb
									i(236253),	-- Desecrated Legguards
									i(236238),	-- Desecrated Legplates
									i(236282),	-- Loatheb's Reflection
									i(236246),	-- Desecrated Leggings
									i(236283),	-- Ring of Spiritual Fervor
									i(236284),	-- Brimstone Staff
									i(236285),	-- The Eye of Nerub
									i(236286),	-- Band of Unnatural Forces
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
											["description"] = "Non-crafters can take his handbook to Craftsman Wilhelm at Light's Hope Chapel who can make all the items as well, as long as the players provide the materials and pay a hefty fee.",
											["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
										}),
										r(28208, {	-- Glacial Cloak (RECIPE!)
											["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Revered.
											["requireSkill"] = TAILORING,
										}),
										r(28205, {	-- Glacial Gloves (RECIPE!)
											["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
											["requireSkill"] = TAILORING,
										}),
										r(28207, {	-- Glacial Vest (RECIPE!)
											["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Revered.
											["requireSkill"] = TAILORING,
										}),
										r(28209, {	-- Glacial Wrists (RECIPE!)
											["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn, Revered.
											["requireSkill"] = TAILORING,
										}),
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
									i(236307),	-- Veil of Eclipse
									i(236308),	-- Idol of Longevity
									i(236309),	-- Girdle of the Mentor
									i(236310),	-- Wand of the Whispering Dead
									i(236311),	-- Signet of the Fallen Defender
									i(236312),	-- Iblis, Blade of the Fallen Seraph
								}),
								n(16060, {	-- Gothik the Harvester
									i(23032),	-- Glacial Headdress
									i(236313),	-- The Soul Harvester's Bindings
									i(236314),	-- Boots of Displacement
									i(236315),	-- Polar Helmet
									i(236316),	-- Sadist's Collar
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
										i(236231),	-- Desecrated Breastplate
										i(236242),	-- Desecrated Robe
										i(236251),	-- Desecrated Tunic
										-- #if ANYCLASSIC
										i(13262, {	-- Ashbringer
											["lore"] = "This is here so that you can quickly compare the Corrupted Ashbringer with the original Ashbringer model. It was never available to players.\n\nThis weapon was eventually turned into an Artifact weapon with an updated model for the Legion expansion for Retribution Paladins.",
											["timeline"] = { CREATED_1_11_1 },
											["collectible"] = false,
										}),
										-- #endif
									--	i(22691),	-- Corrupted Ashbringer
										i(236318),	-- Seal of the Damned
										i(236319),	-- Leggings of Apocalypse
										i(236320),	-- Warmth of Forgiveness
										i(236321),	-- Maul of the Redeemed Crusader
										i(236322),	-- Soulstring
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
										i(236287),	-- Severance
										i(236288),	-- The Plague Bearer
										i(236289),	-- Cloak of Suturing
										i(236290),	-- Wand of Fates
										i(236291),	-- Band of Reanimation
									},
								}),
								n(15931, {	-- Grobbulus
									["modelScale"] = 3,
									["groups"] = {
										i(236292),	-- Midnight Haze
										i(236293),	-- Toxin Injector
										i(236294),	-- Icy Scale Spaulders
										i(236295),	-- Glacial Mantle
										i(236297),	-- The End of Dreams
									},
								}),
								n(15932, {	-- Gluth
									i(236298),	-- Rime Covered Mantle
									i(236299),	-- Claymore of Unholy Might
									i(236300),	-- Gluth's Missing Collar
									i(236301),	-- Digested Hand of Power
									i(236296),	-- Death's Bargain
								}),
								n(15928, {	-- Thaddius
									i(236236),	-- Desecrated Helmet
									i(236249),	-- Desecrated Headpiece
									i(236241),	-- Desecrated Circlet
									i(236303),	-- Leggings of Polarity
									i(236302),	-- Eye of Diminution
									i(236304),	-- Plated Abomination Ribcage
									i(236305),	-- Spire of Twilight
									i(236306),	-- The Castigator
								}),
							},
						}),
						n(NAXX_UPPER_NECROPOLIS, {
							["icon"] = 134155,
							["groups"] = {
								n(15989, {	-- Sapphiron
									["modelScale"] = 2,
									["groups"] = {
										i(236328),	-- Sapphiron's Left Eye
										i(236329),	-- Eye of the Dead
										i(236330),	-- Sapphiron's Right Eye
										i(236327),	-- Cloak of the Necropolis
										i(236331),	-- The Restrained Essence of Sapphiron
										i(236333),	-- Shroud of Dominion
										i(236334),	-- Slayer's Crest
										i(236335),	-- Fists of the Unrelenting
										i(236336),	-- The Face of Death
										i(236337),	-- Glyph of Deflection
										i(236338),	-- Claw of the Frost Wyrm
										i(236323),	-- Resilience of the Scourge
										i(236324),	-- Power of the Scourge
										i(236325),	-- Fortitude of the Scourge
										i(236326),	-- Might of the Scourge
									},
								}),
								n(15990, {	-- Kel'Thuzad
									i(236350),	-- The Phylactery of Kel'Thuzad
									i(22733, {	-- Staff Head of Atiesh
										["classes"] = { PRIEST, MAGE, WARLOCK, DRUID },
									}),
									i(236339),	-- Gressil, Dawn of Ruin
									i(236340),	-- Might of Menethil
									i(236341),	-- The Hungering Cold
									i(236342),	-- Stormrage's Talisman of Seething
									i(236343),	-- Kingsfall
									i(236344),	-- Nerubian Slavemaker
									i(236345),	-- Gem of Trapped Innocents
									i(236346),	-- Soulseeker
									i(236347),	-- Shield of Condemnation
									i(236348),	-- Hammer of the Twisting Nether
									i(236349),	-- Doomfinger
									i(237381),	-- Desecrated Ring
									i(236662),	-- Reins of War
									i(236663),	-- Reins of Conquest
									i(236664),	-- Reins of Death
									i(236665),	-- Reins of Famine
								}),
							},
						}),
					}))),
					-- #endif
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
