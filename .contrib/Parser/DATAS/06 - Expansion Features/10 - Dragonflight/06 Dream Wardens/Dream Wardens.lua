-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local CURRENCY_DREAM_INFUSION = 2777;
DREAM_INFUSION = createHeader({
	readable = "Dream Infusion",
	icon = 1394953,
	text = {
		en = "Dream Infusion",
		ru = "Настой Сна",
		cn = "梦境注能",
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	n(DREAM_WARDENS, {
		faction(FACTION_DREAM_WARDENS),
		n(ACHIEVEMENTS, {
			ach(19230, {	-- Friends in the Dream
				["minReputation"] = { FACTION_DREAM_WARDENS, 15 },	-- Dream Wardens Renown 15
				["timeline"] = { REMOVED_11_0_7 },
			}),
			ach(41176, {	-- Friends in the Dream
				["minReputation"] = { FACTION_DREAM_WARDENS, 15 },	-- Dream Wardens Renown 15
				["timeline"] = { ADDED_11_0_7 },
			}),
			ach(19235, {	-- Warden of the Dream
				["minReputation"] = { FACTION_DREAM_WARDENS, 20 },	-- Dream Wardens Renown 20
				["timeline"] = { REMOVED_11_0_7 },
			}),
			ach(41177, {	-- Warden of the Dream
				["minReputation"] = { FACTION_DREAM_WARDENS, 20 },	-- Dream Wardens Renown 20
				["timeline"] = { ADDED_11_0_7 },
			}),
		}),
		n(DREAM_INFUSION, bubbleDownSelf({ ["minReputation"] = { FACTION_DREAM_WARDENS, 5 } }, {
			q(78430, {	-- Mean Green Infusion Machine
				["sourceQuests"] = { 78386 },	-- Emerald Reawakening (TODO: may be become available without renown after done once?)
				["provider"] = { "n", 211209 },	-- Elianna
				["coord"] = { 50.2, 61.8, EMERALD_DREAM },
				["g"] = {
					i(205160),	-- Rithro (PET!)
				},
			}),
			q(78431, {	-- Green Dream Team
				["sourceQuests"] = { 78430 },	-- Mean Green Infusion Machine
				["provider"] = { "n", 211209 },	-- Elianna
				["coord"] = { 50.2, 61.8, EMERALD_DREAM },
				["repeatable"] = true,	-- TODO: ShadowBrooks remove repeatable flag once blizzard fixes quest
				["g"] = {
					i(210776),	-- Lesser Dream Infusion
				},
			}),
			q(78598, {	-- Dream Infusion
				["sourceQuests"] = { 78431 },	-- Green Dream Team
				["provider"] = { "n", 211209 },	-- Elianna
				["coord"] = { 50.2, 61.8, EMERALD_DREAM },
				["repeatable"] = true,
				["g"] = {
					currency(CURRENCY_DREAM_INFUSION),
				},
			}),
			q(78595, {	-- Dream Infused
				["description"] = "Requires Renown 18",
				["provider"] = { "n", 211962 },	-- Merlsysra
				["g"] = {
					currency(CURRENCY_DREAM_INFUSION),
				},
			}),
			n(VENDORS, {
				n(211209, {	-- Elianna <Dream Infuser>
					["coord"] = { 50.2, 61.8, EMERALD_DREAM },
					["g"] = bubbleDownFiltered({
						["cost"] = {{"c", CURRENCY_DREAM_INFUSION, 1}},
					},FILTERFUNC_itemID,{
						filter(BATTLE_PETS, {
							i(210785, {	-- Snorr (PET!)
								["cost"] = {{ "i", 210776, 1 }},	-- 1x Lesser Dream Infusion
							}),
							i(210553, {	-- Dreamborne Scarab (PET!)
								["providers"] = {
									{"n",203292},	-- Endmite
								},
							}),
							i(210555, {	-- Dreamhoof (PET!)
								["providers"] = {
									{"i",210692},	-- Juniper
									{"n",211288},	-- Leyhart
									{"i",210691},	-- Spruce
								},
							}),
							i(210777, {	-- Drowsey (PET!)
								["providers"] = {
									{"i",205121},	-- Tricky
								},
							}),
							i(210567, {	-- Memorie (PET!)
								["providers"] = {
									{"n",211177},	-- Fol'ya Pup
									{"i",210570},	-- Napps
									{"i",210571},	-- Snoozles
								},
							}),
							i(210652, {	-- Somnolet (PET!)
								["providers"] = {
									-- {"i",???},	-- Dustie
									{"n",211182},	-- Sapnibbler
									{"i",210648},	-- Seedle
								},
							}),
							i(210505, {	-- Reverie (PET!)
								["providers"] = {
									{"i",193484},	-- Pilot
								},
							}),
						}),
						filter(MOUNTS, {
							i(210831),	-- Delugen (MOUNT!)
							i(210948),	-- Imagiwing (MOUNT!)
							i(210946),	-- Mammyth (MOUNT!)
							i(210969),	-- Salatrancer (MOUNT!)
							i(210945),	-- Stargrazer (MOUNT!)
							i(210833),	-- Talont (MOUNT!)
						}),
					}),
				}),
			}),
		})),
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
		n(VENDORS, {
			n(208156, {	-- Moon Priestress Lasara <Renown Quatermaster>
				["coord"] = { 50.3, 61.6, EMERALD_DREAM },
				["g"] = bubbleDownRep(FACTION_DREAM_WARDENS, {
					{		-- RENOWN 1 --
					}, {	-- RENOWN 2 --
					}, {	-- RENOWN 3 --
					}, {	-- RENOWN 4 --
					}, {	-- RENOWN 5 --
					}, {	-- RENOWN 6 --
						i(210482, {	-- Flourishing Whimsydrake: Back Fins (MM!)
							["cost"] = { { "c", DRAGON_SUPPLIES, 225 } },
						}),
						i(210483, {	-- Flourishing Whimsydrake: Ridged Brow (MM!)
							["cost"] = { { "c", DRAGON_SUPPLIES, 225 } },
						}),
						i(210484, {	-- Flourishing Whimsydrake: Underbite Snout (MM!)
							["cost"] = { { "c", DRAGON_SUPPLIES, 225 } },
						}),
					}, {	-- RENOWN 7 --
						i(210702, {	-- Solar Synthesis Gloves
							["cost"] = { { "c", DRAGON_SUPPLIES, 300 } },
						}),
						i(210706, {	-- Drowsed Shepherd's Gloves
							["cost"] = { { "c", DRAGON_SUPPLIES, 300 } },
						}),
						i(210700, {	-- Auburn Scavenger Gauntlets
							["cost"] = { { "c", DRAGON_SUPPLIES, 300 } },
						}),
						i(210704, {	-- Fallen Protector Handguards
							["cost"] = { { "c", DRAGON_SUPPLIES, 300 } },
						}),
					}, {	-- RENOWN 8 --
					}, {	-- RENOWN 9 --
					}, {	-- RENOWN 10 --
					}, {	-- RENOWN 11 --
					}, {	-- RENOWN 12 --
					}, {	-- RENOWN 13 --
						i(210485, {	-- Flourishing Whimsydrake: Long Snout (MM!)
							["cost"] = { { "c", DRAGON_SUPPLIES, 450 } },
						}),
						i(210487, {	-- Flourishing Whimsydrake: Neck Fins (MM!)
							["cost"] = { { "c", DRAGON_SUPPLIES, 450 } },
						}),
						i(210486, {	-- Flourishing Whimsydrake: Horns (MM!)
							["cost"] = { { "c", DRAGON_SUPPLIES, 450 } },
						}),
					}, {	-- RENOWN 14 --
						i(210703, {	-- Solar Synthesis Crown
							["cost"] = { { "c", DRAGON_SUPPLIES, 600 } },
						}),
						i(210707, {	-- Drowsed Shepherd's Hood
							["cost"] = { { "c", DRAGON_SUPPLIES, 600 } },
						}),
						i(210701, {	-- Auburn Scavenger Helm
							["cost"] = { { "c", DRAGON_SUPPLIES, 600 } },
						}),
						i(210705, {	-- Fallen Protector Greathelm
							["cost"] = { { "c", DRAGON_SUPPLIES, 600 } },
						}),
					}, {	-- RENOWN 15 --
						i(210692, {	-- Juniper (PET!)
							["cost"] = { { "c", DRAGON_SUPPLIES, 375 } },
						}),
						i(210691, {	-- Spruce (PET!)
							["cost"] = { { "c", DRAGON_SUPPLIES, 375 } },
						}),
					}, {	-- RENOWN 16 --
						iensemble(210790, {	-- Ensemble: Elegant Green Dragon Outerwear
							["cost"] = { { "c", DRAGON_SUPPLIES, 500 } },
						}),
						i(210677, {	-- Survivalist's Shovel
							["cost"] = { { "c", DRAGON_SUPPLIES, 300 } },
						}),
						i(210685, {	-- Ranger's Longbow
							["cost"] = { { "c", DRAGON_SUPPLIES, 300 } },
						}),
						i(210680, {	-- Caretaker's Trowel
							["cost"] = { { "c", DRAGON_SUPPLIES, 300 } },
						}),
						i(210679, {	-- Cultivator's Watering Can
							["cost"] = { { "c", DRAGON_SUPPLIES, 300 } },
						}),
						i(210676, {	-- Elderwood Cane
							["cost"] = { { "c", DRAGON_SUPPLIES, 300 } },
						}),
					}, {	-- RENOWN 17 --
						i(209951, {	-- Lunar Dreamstag (MOUNT!)
							["cost"] = { { "c", DRAGON_SUPPLIES, 1200 } },
						}),
						i(209949, {	-- Suntouched Dreamstag (MOUNT!)
							["cost"] = { { "c", DRAGON_SUPPLIES, 1200 } },
						}),
					}, {	-- RENOWN 18 --
						i(211495),	-- Dreambound Augment Rune
					}, {	-- RENOWN 19 --
						i(210479, {	-- Flourishing Whimsydrake: Night Scales (MM!)
							["cost"] = { { "c", DRAGON_SUPPLIES, 1250 } },
						}),
						i(210481, {	-- Flourishing Whimsydrake: Sunset Scales (MM!)
							["cost"] = { { "c", DRAGON_SUPPLIES, 1250 } },
						}),
					}, {	-- RENOWN 20 --
						i(208066, {	-- Small Dreamseed
							["cost"] = { { "c", DRAGON_SUPPLIES, 100 } },
						}),
						i(208067, {	-- Plump Dreamseed
							["cost"] = { { "c", DRAGON_SUPPLIES, 500 } },
						}),
						i(208047, {	-- Gigantic Dreamseed
							["cost"] = { { "c", DRAGON_SUPPLIES, 1500 } },
						}),
					},
				}),
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {
	m(DRAGON_ISLES, {
		n(DREAM_WARDENS, {
			n(DREAM_INFUSION, {
				--Summoning battle pets near Elanna / unlocks for battle pets
				-- q(78847),	-- summon Dreamborne Scarab (i: 210553) (spellID 426137)
				q(78854),	-- unlock ability to buy Dreamborne Scarab (i: 210553) (require: Endmite (i: ?)) (spellID 429058)
				-- q(78848),	-- summon Dreamhoof (i: 210555) (spellID 426148)
				q(78888),	-- unlock ability to buy Dreamhoof (i: 210555) (require: Juniper (i: 210692)) (spellID 426545)
				q(78855),	-- unlock ability to buy Dreamhoof (i: 210555) (require: Leyhart (i: ?)) (spellID 429064)
				q(78889),	-- unlock ability to buy Dreamhoof (i: 210555) (require: Spruce (i: 210691)) (spellID 426544)
				-- q(78852),	-- summon Drowsey (i: 210777) (spellID 427044)
				q(78859),	-- unlock ability to buy Drowsey (i: 210777) (require: any ZC snail? (mine was Tricky)) (spellID 429073 / 429074)
				-- q(78849),	-- summon Memorie (i: 210567) (spellID 426168)
				q(78856),	-- unlock ability to buy Memorie (i: 210567) (require: Fol'ya Pup (i: ?)) (spellID 429068)
				q(78885),	-- unlock ability to buy Memorie (i: 210567) (require: Napps (i: ?)) (spellID 426187)
				q(78884),	-- unlock ability to buy Memorie (i: 210567) (require: Snoozles (i: ?)) (spellID 426193)
				-- q(78851),	-- summon Reverie (i: 210505) (spellID 426037)
				q(78858),	-- unlock ability to buy Reverie (i: 210505) (require: any Duckling? (mine was Pilot)) (spellID 429055 / 429053)
				-- q(78846),	-- summon Snorr (i: 210785) (spellID 427104)
				q(78853),	-- unlock ability to buy Snorr (i: 210785) (require: any dragon whelping from DF? (mine was Axel) (spellIDs 408323, 408325, 408328, 408330, 408332)
				-- q(78850),	-- summon Somnolet (i: 210652) (spellID 426357)
				q(78886),	-- unlock ability to buy Somnolet (i: 210652) (require: Dustie (i: ?)) (spellID 426355)
				q(78857),	-- unlock ability to buy Somnolet (i: 210652) (require: Sapnibbler (i: ?)) (spellID 429070)
				q(78887),	-- unlock ability to buy Somnolet (i: 210652) (require: Seedle (i: 210648)) (spellID 426343)
				--unsure what it should unlock but fire when you summon pets
				-- q(78882),	-- summon Elmer (i: 210690) (spellID 426540)
				-- q(78883),	-- summon Snoots (i: 210689) (spellID 426539)
			}),
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
	}),
})));