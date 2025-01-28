-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
CACHE_OF_MADNESS = createHeader({	-- This is the header for the event boss Cache of Madness.
	readable = "Cache of Madness",
	icon = 441139,
	text = {
		en = "Cache of Madness",
		fr = "L'antre de la Folie",
		ru = "Тайник Безумия",
		cn = "疯狂宝箱",
	},
	description = {
		-- #if AFTER 10.0.7
		en = "Requires Archaeology to activate. Activate all 4 of the artifacts to spawn the boss. If the boss you want doesn't spawn, do NOT kill the one that did. Instead, zone out and wait for 30 minutes. Once you zone back, there will sometimes be a new boss waiting for you.",
		-- #else
		en = "Requires Archaeology (225+) to activate. Activate all 4 of the artifacts to spawn the boss. If the boss you want doesn't spawn, do NOT kill the one that did. Instead, zone out and wait for 30 minutes. Once you zone back, there will sometimes be a new boss waiting for you.",
		-- #endif
	},
});
local BLOODSCALP_COIN = 19706;
local GURUBASHI_COIN = 19701;
local HAKKARI_COIN = 19700;
local RAZZASHI_COIN = 19699;
local SANDFURY_COIN = 19704;
local SKULLSPLITTER_COIN = 19705;
local VILEBRANCH_COIN = 19702;
local WITHERBARK_COIN = 19703;
local ZULIAN_COIN = 19698;
local BLUE_HAKKARI_BIJOU = 203765;
local BRONZE_HAKKARI_BIJOU = 203766;
local GOLD_HAKKARI_BIJOU = 203767;
local GREEN_HAKKARI_BIJOU = 203768;
local ORANGE_HAKKARI_BIJOU = 203769;
local PURPLE_HAKKARI_BIJOU = 203770;
local RED_HAKKARI_BIJOU = 203771;
local SILVER_HAKKARI_BIJOU = 203772;
local YELLOW_HAKKARI_BIJOU = 203773;
local ZANDALAR_BARGAINING_TOKEN = 203914;
root(ROOTS.Instances, expansion(EXPANSION.CATA, bubbleDown({ ["timeline"] = ADDED_4_1_0 }, {
	applyclassicphase(CATA_PHASE_RISE_OF_THE_ZANDALARI, inst(76, {	-- Zul'Gurub
		["mapID"] = ZULGURUB,
		["coord"] = { 72.0, 32.9, NORTHERN_STRANGLETHORN },	-- Zul'Gurub
		["isRaid"] = false,	-- prevent merging isRaid from Classic version
		["groups"] = {
			d(DIFFICULTY.DUNGEON.HEROIC, {
				header(HEADERS.Achievement, 17366, bubbleDown({ ["timeline"] = { ADDED_10_0_7 } }, {	-- Relics of a Fallen Empire
					["description"] = "To unlock the Zul'Gurub content of patch 10.0.7:\n\n1. Kill any two bosses to spawn Jin'do the Godbreaker. Cache of Madness does not count.\n\n2. Head to the Altar of the Light, and enter the ground floor using either side entrance.\n\n3. Look for a gong by the southern entrance. On the ground in front of it lays a Shattered Hakkari Bijou. Loot it.\n\n4. Go upstairs towards Jin'do the Godbreaker, and kill at least one Gurubashi Spirit Warrior on your way. (You will need it for the encounter!)\n\n5. Pull Jin'do the Godbreaker and burst him down until Phase 2 begins. (This phase begins even if you oneshot him.)\n\n6. Walk back downstairs and inside the ground floor where you found the Shattered Hakkari Bijou, and a Fragmented Hakkari Bijou lays in it's place. Loot it.\n\n7. Finish the boss encounter above by pulling a Gurubashi Spirit up to Hakkari's Chains, and wait until they break the chain protection with their ability 'Body Slam'. Then you can 'kill' the chains, and kill Jin'do.\n\n8. Combine the Shattered Hakkari Bijou with the Fragmented Hakkari Bijou, and accept the quest 'Restored Hakkari Bijou'.\n\n9. Travel to Dazar'alor in Zandalar. |CFFFF0000Beware Alliance players, this is a Horde city!|r You can get here using the ship service from Echo Isles in Durotar. From the Port of Zuldazar, fly eastwards to the southfacing building entrances. Above the transmogifier shop is the Yojamba Exchange, where you can turn in the quest at Rin'wosho the Trader.\n\n10. Zul'Gurub is now unlocked for your account, and the vendor Rin'Wosho with his wares can now be found at the beginning of the dungeon.\n\n11. Protip: Start the Gurubashi Tribute farm as early as possible as it is a decent source for coins. See the header for Brazier of Madness for more information.",
					["groups"] = {
						n(ACHIEVEMENTS, {
							ach(17367, {	-- Deadliest Cache
								crit(58126, {	-- Jostled Gurubashi Cache
									["provider"] = { "i", 203743 },	-- Jostled Gurubashi Cache
								}),
								crit(58125, {	-- Waterlogged Gurubashi Cache
									["provider"] = { "i", 203742 },	-- Waterlogged Gurubashi Cache
								}),
							}),
							ach(17366, {	-- Relics of a Fallen Empire
								["sourceQuest"] = 74576,	-- Restored Hakkari Bijou
								["timeline"] = { ADDED_10_0_7 }
							}),
						}),
						header(HEADERS.Item, 203757, {	-- Brazier of Madness
							["description"] = "To get started farming Gurubashi Tributes for recipes:\n\n1. Go to the site of the boss Cache of Madness.\n\n2. By the eastern wall is an altar. Here hangs Tablet of Madness, which teaches Alchemists with 300 skill points in classic alchemy how to create Gurubashi Mojo Madness.\n\n3. On the left side of the altar is an interactable brazier, which gives you the toy Brazier of Madness.\n\n4. The four main bosses Venoxia, Mandokir, Kilnara and Zanzil have piles of skull near them. Use the toy Blazier of Madness near one of these piles, and consume a Gurubashi Mojo Madness. This will transform you to a troll for one hour, and make you able to interact with the different piles of skulls to offer bijous for Gurubashi Tributes. The transformation will make you friendly to the mobs in the dungeon, so this should be done after killng the bosses.\n\n5. The different piles requires different bijous, and rewards 1-2 recipes and/or 3-7 coins. For more information see the header for Gurubashi Tribute.",
							["cost"] = {
								{ "i", BLUE_HAKKARI_BIJOU, 1 },
								{ "i", BRONZE_HAKKARI_BIJOU, 1 },
								{ "i", GOLD_HAKKARI_BIJOU, 1 },
								{ "i", GREEN_HAKKARI_BIJOU, 1 },
								{ "i", ORANGE_HAKKARI_BIJOU, 1 },
								{ "i", PURPLE_HAKKARI_BIJOU, 1 },
								{ "i", RED_HAKKARI_BIJOU, 1 },
								{ "i", SILVER_HAKKARI_BIJOU, 1 },
								{ "i", YELLOW_HAKKARI_BIJOU, 1 },
							},
							["groups"] = {
								i(203959, {	-- Gurubashi Tribute
									["description"] = "Venoxis' available offerings: 2x Silver Bijou / 3x Green Bijou / 3x Gold Bijou. Coords: 51.5, 55.8 Behind the Boss\n\nMandokir's available offerings: 2x Bronze Bijou / 3x Red Bijou / 3x Gold Bijou. Coords: 60.8, 80.9 Right side of Boss\n\nKilnara's available offerings: 2x Orange Bijou / 3x Yellow Bijou / 3x Gold Bijou. Coords: 47.5, 22.1 Behind Boss at the wall\n\nZanzil's available offerings: 2x Purple Bijou / 3x Blue Bijou / 3x Gold Bijou. Coords: 30.4, 19.9 North side of the Boss room, at the left wall.",
									["groups"] = {
										-- Epic
										i(203838),	-- Ancient Formula: Mindslave's Reach (RECIPE!)
										i(203847),	-- Ancient Pattern: Gurubashis Grasp (RECIPE!)
										i(203833),	-- Ancient Plans: Bloodherald (RECIPE!)
										i(203834),	-- Ancient Plans: Bloodlords Reaver (RECIPE!)
										i(203831),	-- Ancient Plans: Gurubashi Crusher (RECIPE!)
										i(203829),	-- Ancient Plans: Gurubashi Hexxer (RECIPE!)
										i(203826),	-- Ancient Plans: Venomfang (RECIPE!)
										i(203861),	-- Ancient Plans: Venomreaver (RECIPE!)
										i(203836),	-- Ancient Plans: Warblades of the Hakkari Reborn (RECIPE!)
										i(203840),	-- Ancient Technique: Judgment of the Gurubashi (RECIPE!)
										-- Blue
										i(203842),	-- Ancient Pattern: Animist's Footwraps (RECIPE!)
										i(203843),	-- Ancient Pattern: Animists Legguards (RECIPE!)
										i(203848),	-- Ancient Pattern: Bloodlords Embrace (RECIPE!)
										i(203968),	-- Ancient Pattern: Cord of Shriveled Heads (RECIPE!)
										i(203844),	-- Ancient Pattern: Gloves of the Tormentor (RECIPE!)
										i(203849),	-- Ancient Pattern: Gurubashi Tigerhide Cloak (RECIPE!)
										i(203850),	-- Ancient Pattern: Gurubashi Headdress (RECIPE!)
										i(203845),	-- Ancient Pattern: Junglefury Gauntlets (RECIPE!)
										i(203846),	-- Ancient Pattern: Junglefury Leggings (RECIPE!)
										i(203851),	-- Ancient Pattern: Ritualistic Legwarmers (RECIPE!)
										i(203835),	-- Ancient Plans: Fiery Bengeance (RECIPE!)
										i(203825),	-- Ancient Plans: Gurubashi Carver (RECIPE!)
										i(203828),	-- Ancient Plans: Gurubashi Grinder (RECIPE!)
										i(203824),	-- Ancient Plans: Gurubashi Headplate (RECIPE!)
										i(203827),	-- Ancient Plans: Gurubashi Poker (RECIPE!)
										i(203837),	-- Ancient Plans: Gurubashi Slicer (RECIPE!)
										i(203832),	-- Ancient Plans: Pitchfork of Mojo Madness (RECIPE!)
										i(203830),	-- Ancient Plans: Sceptre of Hexing (RECIPE!)
										i(203841),	-- Ancient Technique: Gurubashi Ceremonial Staff (RECIPE!)
										i(203839),	-- Ancient Technique: Gurubashi Hoodoo Stick (RECIPE!)
									},
								}),
							},
						}),
						n(COMMON_BOSS_DROPS, {
							["description"] = "Can drop from High Priest Venoxis, Bloodlord Mandokir, High Priestess Kilnara, Zanzil, and Jin'do the Godbreaker after completing the quest 'Restored Hakkari Bijou'.",
							-- Danny Donkey: Description above replaces crs below as otherwise the 10.0.7 common boss drops will appear under the respective bosses for all players after 10.0.7, even those who have not unlocked 'Relics of a Fallem Empire'.
							-- ["crs"] = {
								--52155,	-- High Priest Venoxis
								--52151,	-- Bloodlord Mandokir
								--52059,	-- High Priestess Kilnara
								--52053,	-- Zanzil
								--52148,	-- Jin'do the Godbreaker
							-- },
							["groups"] = sharedData({ ["modID"] = 0 }, {
								i(203842),	-- Ancient Pattern: Animist's Footwraps (RECIPE!)
								i(203843),	-- Ancient Pattern: Animists Legguards (RECIPE!)
								i(203848),	-- Ancient Pattern: Bloodlords Embrace (RECIPE!)
								i(203968),	-- Ancient Pattern: Cord of Shriveled Heads (RECIPE!)
								i(203844),	-- Ancient Pattern: Gloves of the Tormentor (RECIPE!)
								i(203849),	-- Ancient Pattern: Gurubashi Tigerhide Cloak (RECIPE!)
								i(203850),	-- Ancient Pattern: Gurubashi Headdress (RECIPE!)
								i(203845),	-- Ancient Pattern: Junglefury Gauntlets (RECIPE!)
								i(203846),	-- Ancient Pattern: Junglefury Leggings (RECIPE!)
								i(203851),	-- Ancient Pattern: Ritualistic Legwarmers (RECIPE!)
								i(203835),	-- Ancient Plans: Fiery Bengeance (RECIPE!)
								i(203825),	-- Ancient Plans: Gurubashi Carver (RECIPE!)
								i(203828),	-- Ancient Plans: Gurubashi Grinder (RECIPE!)
								i(203824),	-- Ancient Plans: Gurubashi Headplate (RECIPE!)
								i(203827),	-- Ancient Plans: Gurubashi Poker (RECIPE!)
								i(203837),	-- Ancient Plans: Gurubashi Slicer (RECIPE!)
								i(203832),	-- Ancient Plans: Pitchfork of Mojo Madness (RECIPE!)
								i(203830),	-- Ancient Plans: Sceptre of Hexing (RECIPE!)
								i(203841),	-- Ancient Technique: Gurubashi Ceremonial Staff (RECIPE!)
								i(203839),	-- Ancient Technique: Gurubashi Hoodoo Stick (RECIPE!)
								i(203774, {	-- Big Bag o' Bijous
								--[[["sym"] = {{"select","itemID",
										BLUE_HAKKARI_BIJOU,
										BRONZE_HAKKARI_BIJOU,
										GOLD_HAKKARI_BIJOU,
										GREEN_HAKKARI_BIJOU,
										ORANGE_HAKKARI_BIJOU,
										PURPLE_HAKKARI_BIJOU,
										RED_HAKKARI_BIJOU,
										SILVER_HAKKARI_BIJOU,
										YELLOW_HAKKARI_BIJOU,
									}},
								--]]
								}),
								i(BLUE_HAKKARI_BIJOU),
								i(BRONZE_HAKKARI_BIJOU),
								i(GOLD_HAKKARI_BIJOU),
								i(GREEN_HAKKARI_BIJOU),
								i(ORANGE_HAKKARI_BIJOU),
								i(PURPLE_HAKKARI_BIJOU),
								i(RED_HAKKARI_BIJOU),
								i(SILVER_HAKKARI_BIJOU),
								i(YELLOW_HAKKARI_BIJOU),
							}),
						}),
						n(PROFESSIONS, {
							prof(FISHING, bubbleDown({ ["modID"] = 0, }, {
								q(74579, {	-- Daily Zul'Gurub Cache
									["name"] = "Daily Zul'Gurub Cache",
									["isDaily"] = true,
								}),
								i(BLOODSCALP_COIN),
								i(GURUBASHI_COIN),
								i(203743, {	-- Jostled Gurubashi Cache
									["description"] = "You can fish only 1 out of the 2 caches per day. Requires the Mudskunk Aroma Buff which you randomly receive near the water.",
									["sym"] = {{"select","itemID",
										-- Items
										19945,	-- Lizardscale Eyepatch
										19947,	-- Nat Pagle's Broken Reel
										19944,	-- Nat Pagle's Fish Terminator
										19946,	-- Tigule's Harpoon
										22739,	-- Tome of Polymorph Turtle (CI!)
									}},
								}),
								i(HAKKARI_COIN),
								i(203912, {	-- Penny Pouch o' Paragons
									["sym"] = {{"select","itemID",
										-- Items
										19945,	-- Lizardscale Eyepatch
										19947,	-- Nat Pagle's Broken Reel
										19944,	-- Nat Pagle's Fish Terminator
										19946,	-- Tigule's Harpoon
										22739,	-- Tome of Polymorph Turtle (CI!)
									}},
								}),
								i(RAZZASHI_COIN),
								i(SANDFURY_COIN),
								i(SKULLSPLITTER_COIN),
								i(VILEBRANCH_COIN),
								i(203742, {	-- Waterlooged Gurubashi Cache
									["description"] = "You can fish only 1 out of the 2 caches per day. Requires the Mudskunk Aroma Buff which you randomly receive near the water.",
									["groups"] = {
										i(19945),	-- Lizardscale Eyepatch
										i(19947),	-- Nat Pagle's Broken Reel
										i(19944),	-- Nat Pagle's Fish Terminator
										i(19946),	-- Tigule's Harpoon
										i(22739),	-- Tome of Polymorph Turtle (CI!)
									},
								}),
								i(WITHERBARK_COIN),
								i(ZULIAN_COIN),
							})),
							prof(SKINNING, {
								i(19767, {	-- Primal Bat Leather
									["cr"] = 202341,	-- Ancient Bat
									["description"] = "Ancient Bats can be found on the following locations in Zul'Gurub:\n* Pack of 2 by crossroads between the first two bridges.\n* Pack of 2 behind a three just north down the path from the mentioned crossroad.\n* Pack of 3 between a wall and a hut on the eastern side of the second bridge.\n* Pack of 3 in the southwestern corner of Mandokir's Domain.\n* Pack of 2 in the northeastern corner of Mandokir's Domain.",
								}),
								i(19768, {	-- Primal Tiger Leather
									["cr"] = 202339,	-- Ancient Tiger
									["description"] = "Ancient Tigers can be found on the following locations in Zul'Gurub:\n* Pack of 2 west of the stairs by Mortaxx.\n* Pack of 2 east of the stairs by Mortaxx.\n* Pack of 3 east of the inn.\n* Pack of 3 northwest of the inn.\n* Pack of 3 outside of the eastern outer wall of Temple of Bethekk.",
								}),
							}),
						}),
						n(QUESTS, {
							q(74696, {	-- Gurubashi, Vilebranch, and Witherbark Coins
								["qg"] = 143138,	-- Rin'wosho the Trader
								["cost"] = {
									{ "i", GURUBASHI_COIN, 1 },
									{ "i", VILEBRANCH_COIN, 1 },
									{ "i", WITHERBARK_COIN, 1 },
								},
								["repeatable"] = true,
								["groups"] = {
									i(ZANDALAR_BARGAINING_TOKEN),
								},
							}),
							q(74576, {	-- Restored Hakkari Bijou
								["description"] = " Collect both, combine them & deliver them to Rin'wosho in Zandalar at 55.0 86.8",
								["provider"] = { "i", 203737 },	-- Restored Hakkari Bijou
								["coord"] = { 55.0, 86.8, DAZARALOR },
							}),
							q(74697, {	-- Sandfury, Skullsplitter, and Bloodscalp Coins
								["qg"] = 143138,	-- Rin'wosho the Trader
								["cost"] = {
									{ "i", BLOODSCALP_COIN, 1 },
									{ "i", SANDFURY_COIN, 1 },
									{ "i", SKULLSPLITTER_COIN, 1 },
								},
								["repeatable"] = true,
								["groups"] = {
									i(ZANDALAR_BARGAINING_TOKEN),
								},
							}),
							q(74695, {	-- Zulian, Razzashi, and Hakkari Coins
								["qg"] = 143138,	-- Rin'wosho the Trader
								["cost"] = {
									{ "i", HAKKARI_COIN, 1 },
									{ "i", RAZZASHI_COIN, 1 },
									{ "i", ZULIAN_COIN, 1 },
								},
								["repeatable"] = true,
								["groups"] = {
									i(ZANDALAR_BARGAINING_TOKEN),
								},
							}),
						}),
						n(TREASURES, {
							o(387496, {	-- Brazier of Madness
								["description"] = "Can be looted near the Cache of Madness event, to the left of the altar at 61.2, 45.6.",
								["groups"] = {
									i(203757),	-- Brazier of Madness (TOY!)
								},
							}),
							o(386669, {	-- Fragmented Hakkari Bijou
								["description"] = "The first Bijou named 'Fragmented Hakkari Bijou' is near the gong in the middle of the pyramid at roughly 48.6, 42.3.",
								["groups"] = {
									i(203736),	-- Fragmented Hakkari Bijou
								},
							}),
							i(203737, {	-- Restored Hakkari Bijou
								["cost"] = {
									{ "i", 203736, 1 },	-- Fragmented Hakkari Bijou
									{ "i", 203735, 1 },	-- Shattered Hakkari Bijou
								},
							}),
							o(386668, {	-- Shattered Hakkari Bijou
								["description"] = "The second Bijou named 'Shattered Hakkari Bijou' is at the same spot, but during phase 2 of the Jin'do Boss Encounter. In the middle of the pyramid at roughly 48.6, 42.3 ",
								["groups"] = {
									i(203735),	-- Shattered Hakkari Bijou
								},
							}),
							o(180368, {	-- Tablet of Madness
								["description"] = "Alchemists with 300 classic skill can interact with the Tablet of Madness to learn the recipe.",
								["requireSkill"] = ALCHEMY,
								["groups"] = {
									recipe(24266),	-- Gurubashi Mojo Madness
								},
							}),
						}),
						n(VENDORS, {
							n(143138, {	-- Rin'wosho the Trader <Zandalar Supplies & Repair>
								["sourceQuest"] = 74576, -- Restored Hakkari Bijou
								["groups"] = {
									cl(DRUID, {
										iensemble(203974, {	-- Ensemble: Zandalar Haruspec
											["cost"] = {
												{ "i", ZANDALAR_BARGAINING_TOKEN, 4 },
												{ "i", ORANGE_HAKKARI_BIJOU, 6 },
											},
										}),
									}),
									cl(HUNTER, {
										iensemble(203975, {	-- Ensemble: Zandalar Predator
											["cost"] = {
												{ "i", ZANDALAR_BARGAINING_TOKEN, 4 },
												{ "i", GREEN_HAKKARI_BIJOU, 6 },
											},
										}),
									}),
									cl(MAGE, {
										iensemble(203976, {	-- Ensemble: Zandalar Illusionist
											["cost"] = {
												{ "i", ZANDALAR_BARGAINING_TOKEN, 4 },
												{ "i", RED_HAKKARI_BIJOU, 6 },
											},
										}),
									}),
									cl(PALADIN, {
										iensemble(203977, {	-- Ensemble: Zandalar Freethinker
											["cost"] = {
												{ "i", ZANDALAR_BARGAINING_TOKEN, 4 },
												{ "i", GOLD_HAKKARI_BIJOU, 6 },
											},
										}),
									}),
									cl(PRIEST, {
										iensemble(203978, {	-- Ensemble: Zandalar Confessor
											["cost"] = {
												{ "i", ZANDALAR_BARGAINING_TOKEN, 4 },
												{ "i", SILVER_HAKKARI_BIJOU, 6 },
											},
										}),
									}),
									cl(ROGUE, {
										iensemble(203979, {	-- Ensemble: Zandalar Madcap
											["cost"] = {
												{ "i", ZANDALAR_BARGAINING_TOKEN, 4 },
												{ "i", YELLOW_HAKKARI_BIJOU, 6 },
											},
										}),
									}),
									cl(SHAMAN, {
										iensemble(203980, {	-- Ensemble: Zandalar Augur
											["cost"] = {
												{ "i", ZANDALAR_BARGAINING_TOKEN, 4 },
												{ "i", BLUE_HAKKARI_BIJOU, 6 },
											},
										}),
									}),
									cl(WARLOCK, {
										iensemble(203981, {	-- Ensemble: Zandalar Demoniac
											["cost"] = {
												{ "i", ZANDALAR_BARGAINING_TOKEN, 4 },
												{ "i", PURPLE_HAKKARI_BIJOU, 6 },
											},
										}),
									}),
									cl(WARRIOR, {
										iensemble(203982, {	-- Ensemble: Zandalar Vindicator
											["cost"] = {
												{ "i", ZANDALAR_BARGAINING_TOKEN, 4 },
												{ "i", BRONZE_HAKKARI_BIJOU, 6 },
											},
										}),
									}),
									iensemble(203983, {	-- Ensemble: Bloodtinged Cloth
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 6 },
											{ "i", BLUE_HAKKARI_BIJOU, 4 },
										},
									}),
									iensemble(203984, {	-- Ensemble: Blooddrenched Leather
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 6 },
											{ "i", YELLOW_HAKKARI_BIJOU, 4 },
										},
									}),
									iensemble(203985, {	-- Ensemble: Bloodstained Mail
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 6 },
											{ "i", GREEN_HAKKARI_BIJOU, 4 },
										},
									}),
									iensemble(203986, {	-- Ensemble: Bloodsoaked Plate
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 6 },
											{ "i", RED_HAKKARI_BIJOU, 4 },
										},
									}),
									i(20757, {	-- Formula: Brilliant Mana Oil (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 5 },
											{ "i", GOLD_HAKKARI_BIJOU, 5 },
										},
									}),
									i(20756, {	-- Formula: Brilliant Wizard Oil (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 5 },
											{ "i", GOLD_HAKKARI_BIJOU, 5 },
										},
									}),
									i(19772, {	-- Pattern: Blood Tiger Breastplate (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 6 },
											{ "i", ORANGE_HAKKARI_BIJOU, 4 },
										},
									}),
									i(19773, {	-- Pattern: Blood Tiger Shoulders (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 6 },
											{ "i", ORANGE_HAKKARI_BIJOU, 4 },
										},
									}),
									i(19766, {	-- Pattern: Bloodvine Boots (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 3 },
											{ "i", PURPLE_HAKKARI_BIJOU, 7 },
										},
									}),
									i(19765, {	-- Pattern: Bloodvine Leggings (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 3 },
											{ "i", PURPLE_HAKKARI_BIJOU, 7 },
										},
									}),
									i(19764, {	-- Pattern: Bloodvine Vest (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 3 },
											{ "i", PURPLE_HAKKARI_BIJOU, 7 },
										},
									}),
									i(19771, {	-- Pattern: Primal Batskin Bracers (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 6 },
											{ "i", ORANGE_HAKKARI_BIJOU, 4 },
										},
									}),
									i(19770, {	-- Pattern: Primal Batskin Gloves (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 6 },
											{ "i", ORANGE_HAKKARI_BIJOU, 4 },
										},
									}),
									i(19769, {	-- Pattern: Primal Batskin Jerkin (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 6 },
											{ "i", ORANGE_HAKKARI_BIJOU, 4 },
										},
									}),
									i(19776, {	-- Plans: Bloodsoul Breastplate (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 6 },
											{ "i", BRONZE_HAKKARI_BIJOU, 4 },
										},
									}),
									i(19778, {	-- Plans: Bloodsoul Gauntlets (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 6 },
											{ "i", BRONZE_HAKKARI_BIJOU, 4 },
										},
									}),
									i(19777, {	-- Plans: Bloodsoul Shoulders (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 7 },
											{ "i", BRONZE_HAKKARI_BIJOU, 3 },
										},
									}),
									i(19779, {	-- Plans: Darksoul Breastplate (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 6 },
											{ "i", BRONZE_HAKKARI_BIJOU, 4 },
										},
									}),
									i(19780, {	-- Plans: Darksoul Leggings (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 7 },
											{ "i", BRONZE_HAKKARI_BIJOU, 3 },
										},
									}),
									i(19781, {	-- Plans: Darksoul Shoulders (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 6 },
											{ "i", BRONZE_HAKKARI_BIJOU, 4 },
										},
									}),
									i(20012, {	-- Recipe: Greater Dreamless Sleep Potion (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 5 },
											{ "i", SILVER_HAKKARI_BIJOU, 5 },
										},
									}),
									i(20013, {	-- Recipe: Living Action Potion (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 5 },
											{ "i", SILVER_HAKKARI_BIJOU, 5 },
										},
									}),
									i(20011, {	-- Recipe: Mageblood Elixir[2.1.0+] (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 5 },
											{ "i", SILVER_HAKKARI_BIJOU, 5 },
										},
									}),
									i(20014, {	-- Recipe: Mighty Troll's Blood Elixir (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 5 },
											{ "i", SILVER_HAKKARI_BIJOU, 5 },
										},
									}),
									i(20000, {	-- Schematic: Bloodvine Goggles (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 5 },
											{ "i", GOLD_HAKKARI_BIJOU, 5 },
										},
									}),
									i(20001, {	-- Schematic: Bloodvine Lens (RECIPE!)
										["cost"] = {
											{ "i", ZANDALAR_BARGAINING_TOKEN, 5 },
											{ "i", GOLD_HAKKARI_BIJOU, 5 },
										},
									}),
								},
							}),
						}),
						n(ZONE_DROPS, bubbleDown({ ["modID"] = 0, }, {
							i(BLUE_HAKKARI_BIJOU),
							i(BRONZE_HAKKARI_BIJOU),
							i(GOLD_HAKKARI_BIJOU),
							i(GREEN_HAKKARI_BIJOU),
							i(ORANGE_HAKKARI_BIJOU),
							i(PURPLE_HAKKARI_BIJOU),
							i(RED_HAKKARI_BIJOU),
							i(SILVER_HAKKARI_BIJOU),
							i(YELLOW_HAKKARI_BIJOU),
							i(BLOODSCALP_COIN),
							i(GURUBASHI_COIN),
							i(HAKKARI_COIN),
							i(203912, {	-- Penny Pouch o' Paragons
								["sym"] = {{"select","itemID",
									-- Items
									19945,	-- Lizardscale Eyepatch
									19947,	-- Nat Pagle's Broken Reel
									19944,	-- Nat Pagle's Fish Terminator
									19946,	-- Tigule's Harpoon
									22739,	-- Tome of Polymorph Turtle (CI!)
								}},
							}),
							i(19943),	-- Massive Mojo
							i(RAZZASHI_COIN),
							i(SANDFURY_COIN),
							i(SKULLSPLITTER_COIN),
							i(VILEBRANCH_COIN),
							i(WITHERBARK_COIN),
							i(ZULIAN_COIN),
						})),
					},
				})),
				n(ACHIEVEMENTS, {
					ach(5744, {	-- Gurubashi Headhunter
						crit(16808, {	-- Gub
							["_npcs"] = { 52440 },	-- Gub
						}),
						crit(16809, {	-- Mortaxx
							["_npcs"] = { 52438 },	-- Mortaxx
						}),
						crit(16810, {	-- Kaulema
							["_npcs"] = { 52422 },	-- Kaulema
						}),
						crit(16811, {	-- Mor'Lek
							["_npcs"] = { 52405 },	-- Mor'Lek
						}),
						crit(16812, {	-- Hive Queen
							["_npcs"] = { 52442 },	-- Florawing Hive Queen
						}),
						crit(16813, {	-- Lost Offspring
							["_npcs"] = { 52418 },	-- Lost Offspring of Gahz'ranka
						}),
						crit(16814, {	-- Gurubashi Master Chef
							["_npcs"] = { 52392 },	-- Gurubashi Master Chef
						}),
						crit(17022, {	-- Tor-Tun
							["_npcs"] = { 52414 },	-- Tor-Tun
						}),
					}),
				}),
				n(QUESTS, {
					q(29155, {	-- A Shiny Reward
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							29153,	-- Booty Bay's Interests
							29154,	-- Booty Bay's Interests
						},
						["providers"] = {
							{ "n", 2496 },	-- Baron Revilgaz
							{ "n", 53151 },	-- Overseer Blingbang
						},
						["groups"] = {
							i(69262, {	-- Black Ice
								["timeline"] = { REMOVED_7_0_3 },
							}),
							i(133997, {	-- Black Ice (TOY!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(69863),	-- Golden Necklace
							i(69865),	-- Gem-Studded Bracelets
							i(69864),	-- Tarnished Crown
						},
					}),
					q(29253, {	-- A Shiny Reward
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							29251,	-- Booty Bay's Interests
							29252,	-- Booty Bay's Interests
						},
						["providers"] = {
							{ "n", 2496 },	-- Baron Revilgaz
							{ "n", 53151 },	-- Overseer Blingbang
						},
						["groups"] = {
							i(69262, {	-- Black Ice
								["timeline"] = { REMOVED_7_0_3 },
							}),
							i(133997, {	-- Black Ice (TOY!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(69863),	-- Golden Necklace
							i(69865),	-- Gem-Studded Bracelets
							i(69864),	-- Tarnished Crown
						},
					}),
					q(29208, {	-- An Old Friend
						["sourceQuests"] = {
							26775,	-- Be Raptor [Alliance]
							26362,	-- Be Raptor [Horde]
						},
						["qg"] = 52877,	-- Lashtail Hatchling
						["groups"] = {
							i(69251, {	-- Lashtail Hatchling (PET!)
								["timeline"] = { ADDED_4_1_0 },
							}),
						},
					}),
					q(29154, {	-- Booty Bay's Interests
						["qg"] = 53151,	-- Overseer Blingblang
						["races"] = ALLIANCE_ONLY,
					}),
					q(29252, {	-- Booty Bay's Interests
						["qg"] = 53151,	-- Overseer Blingblang
						["races"] = HORDE_ONLY,
					}),
					q(29241, {	-- Break the Godbreaker
						["qg"] = 53024,	-- Bloodslayer Zala
					}),
					q(29175, {	-- Break Their Spirits
						["qg"] = 53023,	-- Bloodslayer T'ara
					}),
					q(29242, {	-- Putting a Price on Priceless
						["qg"] = 53043,	-- Briney Boltcutter
					}),
					q(29173, {	-- Secondary Targets
						["qg"] = 53023,	-- Bloodslayer T'ara
					}),
					q(29172, {	-- The Beasts Within
						["qg"] = 53023,	-- Bloodslayer T'ara
					}),
					q(29262, {	-- Zul'Gurub Voodoo
						["provider"] = { "o", 208550 },	-- Voodoo Pile
						["isDaily"] = true,
						["description"] = "You need 425 Archaeology and a Troll Tablet to activate the \"Call of the Raptor\" buff which summons raptor hatchlings to attack your enemies.",
					}),
				}),
				n(ZONE_DROPS, {
					-- "Mini Bosses"
					n(52442, {	-- Florawing Hive Queen
						["questID"] = 53809,	-- KillID
						["isDaily"] = true,
						["groups"] = {
							i(69817),	-- Hive Queen's Honeycomb
						},
					}),
					n(52392, {	-- Gurubashi Master Chef
						i(69822),	-- Master Chef's Groceries
					}),
					n(52440, {	-- Gub
						i(69823),	-- Gub's Catch
					}),
					n(52422, {	-- Kaulema
						i(69818),	-- Giant Sack
					}),
					n(52418, {	-- Lost Offspring of Gahz'ranka
						i(70719),	-- Water-Filled Gills
					}),
					n(52438, {	-- Mortaxx
					--	i(52722),	-- Maelstrom Crystal
					}),
					n(52405, {	-- Mor'Lek
						i(69818),	-- Giant Sack
					}),
					n(52414),	-- Tor-Tun
					i(69802),	-- Band of the Gurubashi Berserker
					i(69803),	-- Gurubashi Punisher
					i(69800),	-- Spiritguard Drape
					i(69796),	-- Spiritcaller Cloak
				}),
				e(175, {	-- High Priest Venoxis
					["crs"] = { 52155 },	-- High Priest Venoxis
					["groups"] = {
						ach(5743),	-- It's Not Easy Being Green
						i(69600),	-- Belt of Slithering Serpents
						i(69603),	-- Breastplate of Serenity
						i(69604),	-- Coils of Hate
						i(69601),	-- Serpentine Leggings
						i(69602),	-- Signet of Venoxis
					},
				}),
				e(176, {	-- Bloodlord Mandokir
					["crs"] = { 52151 },	-- Bloodlord Mandokir
					["groups"] = {
						ach(5762),	-- Ohganot So Fast!
						i(68823),	-- Armored Razzashi Raptor (MOUNT!)
						i(69605),	-- Amulet of the Watcher
						i(69609),	-- Bloodlord's Protector
						i(69608),	-- Deathcharged Wristguards
						i(69606),	-- Hakkari Loa Drape
						i(69607),	-- Touch of Discord
					},
				}),
				n(CACHE_OF_MADNESS, {
					--[[ encounter IDs if we're ever able to use an array for them:
						177,	-- Gri'lek
						178,	-- Hazza'rah
						179,	-- Renataki
						180,	-- Wushoolay
					--]]
					["crs"] = {
						-- These artifacts are used to summon the boss.
						52446,	-- Ancient Dwarven Artifact
						52450,	-- Ancient Elven Artifact
						52454,	-- Ancient Fossil
						52452,	-- Ancient Troll Artifact
					},
					["groups"] = {
						n(DROPS, {
							["crs"] = {
								52258,	-- Gri'lek
								52271,	-- Hazzarah
								52269,	-- Renataki
								52286,	-- Wushoolay
							},
							["groups"] = {
								i(69630), -- Handguards of the Tormented
								i(69632), -- Lost Bag of Whammies
								i(69633), -- Plunderer's Gauntlets
								i(69631), -- Zulian Voodoo Stick
							},
						}),
						n(52258, {	-- Gri'lek
							i(69635), -- Amulet of Protection
							i(69634), -- Fasc's Preserved Boots
						}),
						n(52271, {	-- Hazza'rah
							i(69637), -- Gurubashi Destroyer
							i(69636), -- Thekal's Claws
						}),
						n(52269, {	-- Renataki
							i(69638), -- Arlokk's Claws
							i(69639), -- Renataki's Soul Slicer
						}),
						n(52286, {	-- Wushoolay
							i(69640), -- Kilt of Forgotten Rites
							i(69641), -- Troll Skull Chestplate
						}),
					},
				}),
				e(181, {	-- High Priestess Kilnara
					["crs"] = { 52059 },	-- High Priestess Kilnara
					["groups"] = {
						ach(5765),	-- Here, Kitty Kitty...
						i(68824),	-- Swift Zulian Panther (MOUNT!)
						i(69610),	-- Arlokk's Signet
						i(69612),	-- Claw-Fringe Mantle
						i(69613),	-- Leggings of the Pride
						i(69614),	-- Roaring Mask of Bethekk
						i(69611),	-- Sash of Anguish
						n(53088, {	-- Temple Rat
							["description"] = "Loot the rats and throw them to the awake Pride of Bethekk during the boss fight for the achievement 'Here, Kitty Kitty...'. Only one rat per cat counts.\n\nThe Temple Rat in the room adjacent to the boss room can be looted through the wall when it wanders close enough.",
						}),
					},
				}),
				e(184, {	-- Zanzil
					["crs"] = { 52053 },	-- Zanzil
					["groups"] = {
						i(69619),	-- Bone Plate Handguards
						i(69617),	-- Plumed Medicine Helm
						i(69616),	-- Spiritbinder Spaulders
						i(69615),	-- Zombie Walker Legguards
						i(69618),	-- Zulian Slicer
					},
				}),
				e(185, {	-- Jin'do the Godbreaker
					["crs"] = { 52148 },	-- Jin'do the Godbreaker
					["groups"] = {
						ach(5768),	-- Heroic: Zul'Gurub
						ach(5770),	-- Heroic: Zul'Gurub Guild Run
						ach(5759),	-- Spirit Twister
						i(69628),	-- Jeklik's Smasher
						i(69626),	-- Jin'do's Verdict
						i(69624),	-- Legacy of Arlokk
						i(69625),	-- Mandokir's Tribute
						i(69629),	-- Shield of the Blood God
						i(69622),	-- The Hexxer's Mask
						i(69620),	-- Twinblade of the Hakkari
						i(69621),	-- Twinblade of the Hakkari
						i(69623),	-- Vestments of the Soulflayer
						i(69627),	-- Zulian Ward
						h(i(122215, {	-- Music Roll: Zul'Gurub Voodoo
							["timeline"] = { ADDED_6_1_0 },
						})),
						n(52167, {	-- Gurubashi Spirit Warrior
							["description"] = "|CFFFF0000At least one MUST be killed prior to Jin'do the Godbreaker encounter Phase 2 start, otherwise fight will be impossible.|r\n\nIn Phase 2 their spirits will spawn and they must be pulled up to Hakkar's chains in order to break them with their ability 'Body Slam'.",
						}),
					},
				}),
			}),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.WOD, {
		q(35411),	-- Zul'Gurub Reward Quest - Heroic completion
		q(35412),	-- Zul'Gurub Bonus Objective Reward Quest - kill Cache of Madness
	}),
});