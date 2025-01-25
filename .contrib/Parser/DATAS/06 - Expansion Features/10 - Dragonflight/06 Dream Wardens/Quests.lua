-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	n(DREAM_WARDENS, {
		n(RENOWN, {
			n(QUESTS, bubbleDownRep(FACTION_DREAM_WARDENS, {
				{		-- RENOWN 1 --
					q(78444, {	-- A Worthy Ally: Dream Wardens
						["sourceQuests"] = {
							77283,	-- A Multi-Front Battle
							77887,	-- 'World Quest Unlock' (spellID 421687)
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["isWeekly"] = true,
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
						["maxReputation"] = { FACTION_DREAM_WARDENS, 20 },
						["g"] = {
							i(210421),	-- Dream Wardens Insignia [Epic 500]
							i(210872, {	-- Satchel of Dreams
								["sym"] = {
									{"select", "itemID", 211389 },	-- Cache of Overblooming Treasures,
									{"pop"},
									{"exclude","itemID",211417},	-- Dream Wardens Insignia [Epic 1k]
									{"exclude","itemID",210243},	-- Technique: Contract: Dream Wardens (RECIPE!)
								},
								["g"] = {
									i(202172),	-- Overflowing Satchel of Coins
								},
							}),
							--[[ Discuss-
							i(210872, {	-- Satchel of Dreams
								["g"] = {
									i(202172),	-- Overflowing Satchel of Coins
								--	filter(CLOTH, {	-- Commented out due Tooltip Length
										i(210349),	-- Frigid Conservator's Gown
										i(210355),	-- Frigid Conservator's Mitts
										i(210357),	-- Frigid Conservator's Hood
										i(210361),	-- Frigid Conservator's Leggings
										i(210366),	-- Frigid Conservator's Shoulders
										i(210369),	-- Frigid Conservator's Sash
										i(210372),	-- Frigid Conservator's Bands
										i(210382),	-- Frigid Conservator's Wrap (cloak) / will leave it here until non-cloth confirm drop
										i(210391),	-- Frigid Conservator's Slippers
								--	}),
								--	filter(LEATHER, {	-- Commented out due Tooltip Length
										i(210352),	-- Crystalline Tender's Vest
										i(210353),	-- Crystalline Tender's Gloves
										i(210359),	-- Crystalline Tender's Guise
										i(210363),	-- Crystalline Tender's Trousers
										i(210364),	-- Crystalline Tender's Shoulderpads
										i(210371),	-- Crystalline Tender's Belt
										i(210375),	-- Crystalline Tender's Wristbands
										i(210381),	-- Crystalline Tender's Shroud (cloak) / will leave it here until non-leather confirm drop
										i(210393),	-- Crystalline Tender's Boots
								--	}),
								--	filter(MAIL, {	-- Commented out due Tooltip Length
										i(210351),	-- Winter Forager's Chestguard
										i(210356),	-- Winter Forager's Handguards
										i(210358),	-- Winter Forager's Helm
										i(210362),	-- Winter Forager's Legguards
										i(210367),	-- Winter Forager's Epaulets
										i(210370),	-- Winter Forager's Waistguard
										i(210374),	-- Winter Forager's Cuffs
										i(210392),	-- Winter Forager's Treads
										i(210407),	-- Winter Forager's Cape (cloak) / will leave it here until non-mail confirm drop
								--	}),
								--	filter(PLATE, {	-- Commented out due Tooltip Length
										i(210348),	-- Arctic Warden's Sabatons
										i(210350),	-- Arctic Warden's Chestplate
										i(210354),	-- Arctic Warden's Gauntlets
										i(210360),	-- Arctic Warden's Legplates
										i(210365),	-- Arctic Warden's Shoulderplates
										i(210368),	-- Arctic Warden's Girdle
										i(210373),	-- Arctic Warden's Bracers
										i(210390),	-- Arctic Warden's Warhelm
										i(210408),	-- Arctic Warden's Cloak (cloak) / will leave it here until non-plate confirm drop
								--	}),
								--	n(WEAPONS, {	-- Commented out due Tooltip Length
										i(210394),	-- Cold Conservator's Cane
										i(210384),	-- Cold Conservator's Implement
										i(210399),	-- Cold Conservator's Mallet
										i(210402),	-- Cold Conservator's Wand
										i(210389),	-- Crystalline Tender's Dirk
										i(210386),	-- Crystalline Tender's Glaive
										i(210405),	-- Crystalline Tender's Kris
										i(210395),	-- Crystalline Tender's Mace
										i(210385),	-- Frigid Forager's Branch
										i(210406),	-- Frigid Forager's Claymore
										i(210397),	-- Frigid Forager's Chopper
										i(210404),	-- Frigid Forager's Curve
										i(210396),	-- Frigid Forager's Longbow
										i(210398),	-- Frigid Forager's Handaxe
										i(210403),	-- Winter Forager's Spire
										i(210387),	-- Winter Warden's Blade
										i(210383),	-- Winter Warden's Bulwark
										i(210400),	-- Winter Warden's Gavel
										i(210401),	-- Winter Warden's Greatsword
								--	}),
								--	filter(FINGER_F, {	-- Commented out due Tooltip Length
										i(210376),	-- Beautiful Blizzard Binding
										i(210378),	-- Rime Ridden Ring
										i(210377),	-- Snipping Sleet Circle
								--	}),
								--	filter(NECK_F, {	-- Commented out due Tooltip Length
										i(210379),	-- Cold Crisp Collar
										i(210380),	-- Glittering Gelid Goldchain
								--	}),
								},
							}),--]]
						},
					}),
				}, {	-- RENOWN 2 --
					q(78579, {	-- Dragon Isles Supplies
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
						["DisablePartySync"] = true,
						["lockCriteria"] = { 1, "questID", 78386 },	-- Emerald Reawakening
						["timeline"] = { REMOVED_11_0_0 },
					}),
				}, {	-- RENOWN 3 --
					q(78385, {	-- Small Dreamseeds
						["provider"] = { "n", 211265 },	-- Sylvia Whisperbloom
						["coord"] = { 59.7, 16.9, EMERALD_DREAM },
					}),
				}, {	-- RENOWN 4 --
					q(78356, {	-- Whelpling's Dreaming Crest
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
						["timeline"] = { REMOVED_11_0_0 },
					}),
				}, {	-- RENOWN 5 --
					q(78386, {	-- Emerald Reawakening
						["provider"] = { "n", 211962 },	-- Melsysra
						["maps"] = { EMERALD_DREAM },	-- follow you around
					}),
					q(78580, {	-- Dragon Isles Supplies
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
						["DisablePartySync"] = true,
						["lockCriteria"] = { 1, "questID", 78386 },	-- Emerald Reawakening
						["timeline"] = { REMOVED_11_0_0 },
					}),
				}, {	-- RENOWN 6 --
				}, {	-- RENOWN 7 --
				}, {	-- RENOWN 8 --
					q(78358, {	-- Drake's Dreaming Crest
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
					}),
					q(78581, {	-- Dragon Isles Supplies
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
						["DisablePartySync"] = true,
						["lockCriteria"] = { 1, "questID", 78358 },	-- Drake's Dreaming Crest
						["timeline"] = { REMOVED_11_0_0 },
					}),
				}, {	-- RENOWN 9 --
					q(78387, {	-- Plump Dreamseeds
						["provider"] = { "n", 211265 },	-- Sylvia Whisperbloom
						["coord"] = { 59.7, 16.9, EMERALD_DREAM },
					}),
				}, {	-- RENOWN 10 --
					q(78363, {	-- The Tabard of Your Dreams
						["provider"] = { "n", 211962 },	-- Melsysra
						["maps"] = { EMERALD_DREAM },	-- follow you around
						["g"] = {
							i(210501),	-- Dream Wardens Tabard
						},
					}),
				}, {	-- RENOWN 11 --
					q(78582, {	-- Dragon Isles Supplies
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
						["DisablePartySync"] = true,
						["lockCriteria"] = { 1, "questID", 78364 },	-- Drake's Dreaming Crest
						["timeline"] = { REMOVED_11_0_0 },
					}),
				}, {	-- RENOWN 12 --
					q(78364, {	-- Drake's Dreaming Crest
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
					}),
					q(78583, {	-- Dragon Isles Supplies
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
						["DisablePartySync"] = true,
						["lockCriteria"] = { 1, "questID", 78364 },	-- Drake's Dreaming Crest
						["timeline"] = { REMOVED_11_0_0 },
					}),
				}, {	-- RENOWN 13 --
				}, {	-- RENOWN 14 --
				}, {	-- RENOWN 15 --
					q(78374, {	-- Flightstones
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
					}),
					q(78584, {	-- Dragon Isles Supplies
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
						["DisablePartySync"] = true,
						["lockCriteria"] = { 1, "questID", 78374 },	-- Flightstones
						["timeline"] = { REMOVED_11_0_0 },
					}),
				}, {	-- RENOWN 16 --
					q(78585, {	-- Dragon Isles Supplies
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
						["DisablePartySync"] = true,
						["lockCriteria"] = { 1, "questID", 78388 },		-- Gigantic Dreamseeds
						["timeline"] = { REMOVED_11_0_0 },
					}),
				}, {	-- RENOWN 17 --
					q(78388, {	-- Gigantic Dreamseeds
						["provider"] = { "n", 211265 },	-- Sylvia Whisperbloom
						["coord"] = { 59.7, 16.9, EMERALD_DREAM },
					}),
					q(78586, {	-- Dragon Isles Supplies
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
						["DisablePartySync"] = true,
						["lockCriteria"] = { 1, "questID", 78388 },		-- Gigantic Dreamseeds
						["timeline"] = { REMOVED_11_0_0 },
					}),
				}, {	-- RENOWN 18 --
					q(78587, {	-- Dragon Isles Supplies
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
						["DisablePartySync"] = true,
						["lockCriteria"] = { 1, "questID", 78372 },	-- Drake's Dreaming Crest
						["timeline"] = { REMOVED_11_0_0 },
					}),
				}, {	-- RENOWN 19 --
					q(78372, {	-- Drake's Dreaming Crest
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
					}),
				}, {	-- RENOWN 20 --
					q(78373, {	-- The Dream Thanks You
						["provider"] = { "n", 211962 },	-- Melsysra
						["maps"] = { EMERALD_DREAM },	-- follow you around
						["groups"] = {
							i(206960),	-- Enchanted Wyrm's Dreaming Crest
						},
					}),
					q(78588, {	-- Dragon Isles Supplies
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
						["DisablePartySync"] = true,
						["lockCriteria"] = { 1, "questID", 78373 },	-- The Dream Thanks You
						["timeline"] = { REMOVED_11_0_0 },
					}),
					title(532),	-- <Name>, Dream Defender
						-- RENOWN 20+++ --
					q(76425, {	--	Renowned with the Dream Wardens
						["provider"] = { "n", 208143 },	-- Keeper Amrymn
						["repeatable"] = true,
						["coord"] = { 50.2, 61.6, EMERALD_DREAM },
						["g"] = {
								i(210992, {	-- Overflowing Dream Warden Trove
							}),
						},
					}),
				},
			})),
		}),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	n(DREAM_WARDENS, {
		n(QUESTS, {
			q(78286),	-- Pop after turn in questID 78444 (first time)
			q(78625),	-- Pop after turn in questID 78444 (first time)
			--
			q(76573),	-- Pop right after renown 4 was reached (Blooming Proficiency I) (spellIDs 427685 & 425375)
			q(78709),	-- Pop right after renown 5 was reached (Infusion Unlock Tracking) (spellID 427978)
			q(76574),	-- Pop right after renown 8 was reached (Blooming Proficiency II) (spellIDs 427685 & 425375)
			q(76575),	-- Pop right after renown 12 was reached (Blooming Proficiency III) (spellIDs 427685 & 425375)
			q(78710),	-- Pop right after renown 12 was reached (Blooming Expertise) (?)
		}),
	}),
})));