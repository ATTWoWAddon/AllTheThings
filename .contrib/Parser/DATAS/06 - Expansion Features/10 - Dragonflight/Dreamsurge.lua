---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- Most Dreambound Item only turns into a single other Item
local function DreamboundBOA(itemID, vendorItemID)
	local i = i(itemID);
	i.sym = {{"select","itemID",vendorItemID}};
	return i;
end
local DREAMSURGE_COALESCENCE = 207026;
local DREAMSURGE_CHRYSALIS
-- #if AFTER 10.2.6.54358
DREAMSURGE_CHRYSALIS = 224297;
-- #elseif BEFORE 10.2.0
DREAMSURGE_CHRYSALIS = 208153;
-- #else
DREAMSURGE_CHRYSALIS = 210254;
-- #endif
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(DREAMSURGE, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {
		n(QUESTS, {
			q(77423, {	-- Surging Dreams
				["provider"] = { "n", 211031 },	-- Archdruid Hamuul Runetotem
				["coord"] = { 50.6, 57.4, VALDRAKKEN },
				["isBreadcrumb"] = true,
				["timeline"] = { ADDED_10_1_7, REMOVED_10_2_0 },
			}),
			q(77414, {	-- Dreamsurge Investigation
				["sourceQuests"] = { 77423 },	-- Surging Dreams
				["provider"] = { "n", 208649 },	-- Archdruid Hamuul Runetotem
				["coords"] = {
					{ 51.2, 43.3, THALDRASZUS },
					{ 58.3, 67.7, THE_WAKING_SHORES },
					{ 64.1, 41.7, OHNAHRAN_PLAINS },
					{ 45.6, 39.8, THE_AZURE_SPAN },
				},
				["g"] = {
					i(209833, {	-- Crate of Dreambound Armor
						["sym"] = {{"select","itemID",
							208918,	-- Dreambound Cloth Gloves
							208917,	-- Dreambound Cloth Boots
							208911,	-- Dreambound Cloth Belt
							208908,	-- Dreambound Cloth Bracers
							208903,	-- Dreambound Cloth Spaulders
							208900,	-- Dreambound Cloth Leggings
							208895,	-- Dreambound Cloth Chestpiece
							208891,	-- Dreambound Cloth Helm
							208921,	-- Dreambound Leather Gloves
							208914,	-- Dreambound Leather Boots
							208913,	-- Dreambound Leather Belt
							208906,	-- Dreambound Leather Bracers
							208905,	-- Dreambound Leather Spaulders
							208898,	-- Dreambound Leather Leggings
							208897,	-- Dreambound Leather Chestpiece
							208893,	-- Dreambound Leather Helm
							208920,	-- Dreambound Mail Gloves
							208915,	-- Dreambound Mail Boots
							208912,	-- Dreambound Mail Belt
							208907,	-- Dreambound Mail Bracers
							208904,	-- Dreambound Mail Spaulders
							208899,	-- Dreambound Mail Leggings
							208896,	-- Dreambound Mail Chestpiece
							208892,	-- Dreambound Mail Helm
							208919,	-- Dreambound Plate Gloves
							208916,	-- Dreambound Plate Boots
							208910,	-- Dreambound Plate Belt
							208909,	-- Dreambound Plate Bracers
							208902,	-- Dreambound Plate Spaulders
							208901,	-- Dreambound Plate Leggings
							208894,	-- Dreambound Plate Chestpiece
							208890,	-- Dreambound Plate Helm
							208922,	-- Dreambound Cloak
						}},
					}),
				},
			}),
			q(77251, {	-- Shaping the Dreamsurge
				["provider"] = { "n", 208649 },	-- Archdruid Hamuul Runetotem
				["coords"] = {
					{ 51.2, 43.3, THALDRASZUS },
					{ 58.3, 67.7, THE_WAKING_SHORES },
					{ 64.1, 41.7, OHNAHRAN_PLAINS },
					{ 45.6, 39.8, THE_AZURE_SPAN },
				},
				["isWeekly"] = true,
				["g"] = {
					ach(19008),	-- Dream Shaper
					i(208153, {	-- Dreamsurge Chrysalis
						["timeline"] = { ADDED_10_1_7, REMOVED_10_2_0 },
					}),
					i(210254, {	-- Dreamsurge Chrysalis
						["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
					}),
					i(224297, {	-- Dreamsurge Cradle
						["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
					}),
					i(215364, {	-- Cache of Dreams
						["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
					}),
				},
			}),
		}),
		n(RARES, sharedData({
			["provider"] = { "o", 406383 },	-- Firelands Portal (vignette), Thaldraszus
			["g"] = {
				i(209419),	-- Charred Elemental Remains
			},
		}, {
			n(209754, {	-- Allied Cinderrager
				["coords"] = {
					{ 61.9, 26.5, THALDRASZUS },
					{ 41.2, 77.5, THE_WAKING_SHORES },
					{ 24.3, 60.9, OHNAHRAN_PLAINS },
					{ 32.6, 39.6, THE_AZURE_SPAN },
				},
			}),
			n(209837, {	-- Flamewing Ascendant
				["coords"] = {
					{ 62.4, 26.0, THALDRASZUS },
					{ 41.2, 77.5, THE_WAKING_SHORES },
					{ 24.3, 60.9, OHNAHRAN_PLAINS },
					{ 32.6, 39.6, THE_AZURE_SPAN },
				},
			}),
			n(209491, {	-- Molten General
				["coords"] = {
					{ 61.8, 26.3, THALDRASZUS },
					{ 41.2, 77.5, THE_WAKING_SHORES },
					{ 24.3, 60.9, OHNAHRAN_PLAINS },
					{ 32.6, 39.6, THE_AZURE_SPAN },
				},
			}),
			n(209753, {	-- Planesborn Annihilator
				["coords"] = {
					{ 61.7, 26.2, THALDRASZUS },
					{ 41.2, 77.5, THE_WAKING_SHORES },
					{ 24.3, 60.9, OHNAHRAN_PLAINS },
					{ 32.6, 39.6, THE_AZURE_SPAN },
				},
			}),
			n(206825, {	-- Waking Dream
				["description"] = "Can be found in Dreamsurge zone, interact with it to start event, kill all npcs that came out and portal is closed.",
				["maps"] = { THALDRASZUS, THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN },	-- otherwise too many coords
				["questID"] = 78273,
				["isDaily"] = true,
			}),
		})),
		n(REWARDS, {
			["maps"] = {
				OHNAHRAN_PLAINS,
				THALDRASZUS,
				THE_AZURE_SPAN,
				THE_WAKING_SHORES,
			},
			["groups"] = {
				i(DREAMSURGE_COALESCENCE, {
					["description"] = "10 per WQ, 25 per rare kill in zone where Dreamsurge is active",
				}),
				i(192807, {	-- Renewed Magmammoth (MOUNT!)
					["cost"] = {{ "i", 209419, 20 }},	-- Charred Elemental Remains
				}),
			},
		}),
		n(VENDORS, {
			n(210608, {	-- Celestine of the Harvest
				["coords"] = {
					{ 51.1, 43.4, THALDRASZUS },
					{ 58.4, 67.8, THE_WAKING_SHORES },
					{ 64.2, 41.6, OHNAHRAN_PLAINS},
					{ 45.6, 39.7, THE_AZURE_SPAN },
				},
				["g"] = bubbleDownFiltered({
					["cost"] = {{ "i", DREAMSURGE_COALESCENCE, 100 }},
				},FILTERFUNC_itemID,{
					filter(CLOTH, {
						DreamboundBOA(208918, 209409),	-- Dreambound Cloth Gloves
						DreamboundBOA(208917, 209410),	-- Dreambound Cloth Boots
						DreamboundBOA(208911, 209406),	-- Dreambound Cloth Belt
						DreamboundBOA(208908, 209405),	-- Dreambound Cloth Bracers
						DreamboundBOA(208903, 209380),	-- Dreambound Cloth Spaulders
						DreamboundBOA(208900, 209407),	-- Dreambound Cloth Leggings
						DreamboundBOA(208895, 209411),	-- Dreambound Cloth Chestpiece
						DreamboundBOA(208891, 209408),	-- Dreambound Cloth Helm
					}),
					filter(LEATHER, {
						DreamboundBOA(208921, 209403),	-- Dreambound Leather Gloves
						DreamboundBOA(208914, 209404),	-- Dreambound Leather Boots
						DreamboundBOA(208913, 209400),	-- Dreambound Leather Belt
						DreamboundBOA(208906, 209399),	-- Dreambound Leather Bracers
						DreamboundBOA(208905, 209381),	-- Dreambound Leather Spaulders
						DreamboundBOA(208898, 209401),	-- Dreambound Leather Leggings
						DreamboundBOA(208897, 209382),	-- Dreambound Leather Chestpiece
						DreamboundBOA(208893, 209402),	-- Dreambound Leather Helm
					}),
					filter(MAIL, {
						DreamboundBOA(208920, 209396),	-- Dreambound Mail Gloves
						DreamboundBOA(208915, 209397),	-- Dreambound Mail Boots
						DreamboundBOA(208912, 209392),	-- Dreambound Mail Belt
						DreamboundBOA(208907, 209391),	-- Dreambound Mail Bracers
						DreamboundBOA(208904, 209393),	-- Dreambound Mail Spaulders
						DreamboundBOA(208899, 209394),	-- Dreambound Mail Leggings
						DreamboundBOA(208896, 209398),	-- Dreambound Mail Chestpiece
						DreamboundBOA(208892, 209395),	-- Dreambound Mail Helm
					}),
					filter(PLATE, {
						DreamboundBOA(208919, 209387),	-- Dreambound Plate Gloves
						DreamboundBOA(208916, 209388),	-- Dreambound Plate Boots
						DreamboundBOA(208910, 209384),	-- Dreambound Plate Belt
						DreamboundBOA(208909, 209383),	-- Dreambound Plate Bracers
						DreamboundBOA(208902, 209385),	-- Dreambound Plate Spaulders
						DreamboundBOA(208901, 209386),	-- Dreambound Plate Leggings
						DreamboundBOA(208894, 209389),	-- Dreambound Plate Chestpiece
						DreamboundBOA(208890, 209390),	-- Dreambound Plate Helm
					}),
					n(BACK, {
						i(208922, {	-- Dreambound Cloak
							["sym"] = {{"select","itemID",
								209414,	-- Dreambound Drape
								209413,	-- Dreambound Cape
								209412,	-- Dreambound Greatcloak
								209357,	-- Dreambound Shawl
							}},
						}),
					}),
					filter(FINGER_F, {
						i(208923, {	-- Dreambound Ring
							["sym"] = {{"select","itemID",
								209368,	-- Dreambound Loop
								209367,	-- Dreambound Signet
								209358,	-- Dreambound Band
							}},
						}),
					}),
					filter(NECK_F, {
						DreamboundBOA(208924, 209356),	-- Dreambound Necklace
					}),
					n(WEAPONS, {
						i(208926, {	-- Dreambound Weapon
							["sym"] = {{"select","itemID",
								209379,	-- Dreambound Barrier
								209378,	-- Dreambound Scepter
								209377,	-- Dreambound Wand
								209376,	-- Dreambound Polearm
								209375,	-- Dreambound Rifle
								209374,	-- Dreambound Spellblade
								209373,	-- Dreambound Shank
								209372,	-- Dreambound Kris
								209371,	-- Dreambound Sword
								209370,	-- Dreambound Blade
								209369,	-- Dreambound Greatsword
								209366,	-- Dreambound Hacker
								209365,	-- Dreambound Cleaver
								209364,	-- Dreambound Censer
								209363,	-- Dreambound Mallet
								209362,	-- Dreambound Cudgel
								209361,	-- Dreambound Halberd
								209360,	-- Dreambound Staff
								209359,	-- Dreambound Warglaive
							}},
						}),
					}),

					i(198824, {	-- Duskwing Ohuna (MOUNT!)
						["cost"] = {{ "i", DREAMSURGE_COALESCENCE, 1000 }},
					}),
					i(205024, {	-- Cheddar (PET!)
						["cost"] = {{ "i", DREAMSURGE_COALESCENCE, 250 }},
					}),
					i(205010, {	-- Crimson Swoglet (PET!)
						["cost"] = {{ "i", DREAMSURGE_COALESCENCE, 250 }},
					}),
					i(209858, {	-- Dreamsurge Remnant (TOY!)
						["cost"] = {{ "i", DREAMSURGE_COALESCENCE, 500 }},
					}),
					i(209944, {	-- Friendsurge Defenders (TOY!)
						["cost"] = {{ "i", DREAMSURGE_COALESCENCE, 500 }},
					}),
				}),
			}),
			n(208649, {	-- Archdruid Hamuul Runetotem
				["coords"] = {
					{ 51.2, 43.3, THALDRASZUS },
					{ 58.4, 67.7, THE_WAKING_SHORES },
					{ 64.1, 41.7, OHNAHRAN_PLAINS },
					{ 45.6, 39.8, THE_AZURE_SPAN },
				},
				["g"] = bubbleDownFiltered({
					["cost"] = {{ "i", DREAMSURGE_CHRYSALIS, 1 }},
				},FILTERFUNC_itemID,{
					n(BACK, {
						i(209414),	-- Dreambound Drape
						i(209413),	-- Dreambound Cape
						i(209412),	-- Dreambound Greatcloak
						i(209357),	-- Dreambound Shawl
					}),
					filter(FINGER_F, {
						i(209368),	-- Dreambound Loop
						i(209367),	-- Dreambound Signet
						i(209358),	-- Dreambound Band
					}),
					filter(NECK_F, {
						i(209356),	-- Dreambound Choker
					}),
					filter(CLOTH, {
						i(209411),	-- Dreambound Vestment
						i(209410),	-- Dreambound Sandals
						i(209409),	-- Dreambound Mitts
						i(209408),	-- Dreambound Crown
						i(209407),	-- Dreambound Pants
						i(209406),	-- Dreambound Cord
						i(209405),	-- Dreambound Cuffs
						i(209380),	-- Dreambound Shoulderpads
					}),
					filter(LEATHER, {
						i(209404),	-- Dreambound Waders
						i(209403),	-- Dreambound Handwraps
						i(209402),	-- Dreambound Cowl
						i(209401),	-- Dreambound Breeches
						i(209400),	-- Dreambound Sash
						i(209399),	-- Dreambound Bindings
						i(209382),	-- Dreambound Vest
						i(209381),	-- Dreambound Epaulets
					}),
					filter(MAIL, {
						i(209398),	-- Dreambound Chainmail
						i(209397),	-- Dreambound Striders
						i(209396),	-- Dreambound Grips
						i(209395),	-- Dreambound Coif
						i(209394),	-- Dreambound Greaves
						i(209393),	-- Dreambound Shoulderguards
						i(209392),	-- Dreambound Cinch
						i(209391),	-- Dreambound Vambraces
					}),
					filter(PLATE, {
						i(209390),	-- Dreambound Faceplate
						i(209389),	-- Dreambound Breastplate
						i(209388),	-- Dreambound Sabatons
						i(209387),	-- Dreambound Gauntlets
						i(209386),	-- Dreambound Legguards
						i(209385),	-- Dreambound Mantle
						i(209384),	-- Dreambound Girdle
						i(209383),	-- Dreambound Armplates
					}),
					n(WEAPONS, {
						i(209379),	-- Dreambound Barrier
						i(209378),	-- Dreambound Scepter
						i(209377),	-- Dreambound Wand
						i(209376),	-- Dreambound Polearm
						i(209375),	-- Dreambound Rifle
						i(209374),	-- Dreambound Spellblade
						i(209373),	-- Dreambound Shank
						i(209372),	-- Dreambound Kris
						i(209371),	-- Dreambound Sword
						i(209370),	-- Dreambound Blade
						i(209369),	-- Dreambound Greatsword
						i(209366),	-- Dreambound Hacker
						i(209365),	-- Dreambound Cleaver
						i(209364),	-- Dreambound Censer
						i(209363),	-- Dreambound Mallet
						i(209362),	-- Dreambound Cudgel
						i(209361),	-- Dreambound Halberd
						i(209360),	-- Dreambound Staff
						i(209359),	-- Dreambound Warglaive
					}),
					i(213541),	-- Whelpling's Bountiful Chest
					i(209831),	-- Wyrm's Bountiful Chest
				}),
			}),
		}),
	})),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_1_7 } }, {
	n(DREAMSURGE, {
		q(78276),	-- 1st kill day / weekly
		q(77794),	-- after 'some' boss kills for 'Birth of Flames' event
	}),
})));