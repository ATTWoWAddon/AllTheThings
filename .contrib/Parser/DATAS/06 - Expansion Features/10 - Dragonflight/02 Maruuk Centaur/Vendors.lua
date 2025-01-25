-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local DENSE_HIDE = 193217;
local IRIDESCENT_PLUME = 201401;
local OCASSIONAL_SAND = 194562;
local SEREVITE_ORE = 190396;
local TUFT_OF_PRIMAL_WOOL = 201405;
local RESILIENT_LEATHER = 193210;
local AWAKENED_AIR = 190327;
local TALLSTRIDER_SINEW = 201404;
local DRACONIUM_ORE = 188658;
local RUNED_WRITHEBARK = 194863;
local LARGE_STURDY_FEMUR = 201402;
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(MARUUK_CENTAUR, {
		n(VENDORS, {
			n(195547, {	-- Farrier Rondare
				["coord"] = { 62.5, 42.5, OHNAHRAN_PLAINS },
				["sym"] = {{"select","itemID",
					------ RENOWN 7 ------
					200483,	-- Nokhud Battle Helm
					200491,	-- Nokhud Champion's Helm
					200490,	-- Nokhud Reaver's Helm
					200492,	-- Nokhud Warlord's Helm
					200486,	-- Ohn'ir Dayligt Visor
					200484,	-- Ohn'ir Dawnlight Hat
					200485,	-- Ohn'ir Dusklight Cap
					200481,	-- Ohn'ir Midnight Helm
					200482,	-- Shikaar Harrier's Visor
					200487,	-- Shikaar Hunter's Visor
					200488,	-- Shikaar Huntmaster's Visor
					200489,	-- Shikaar Scout's Visor
					------ RENOWN 13 ------
					200499,	-- Nokhud Battle Shoulderpads
					200500,	-- Nokhud Champion's Shoulderpads
					200501,	-- Nokhud Reaver's Shoulderpads
					200495,	-- Nokhud Warlord's Shoulderpads
					200498,	-- Shikaar Harrier's Shoulderpads
					200497,	-- Shikaar Hunter's Shoulderpads
					200496,	-- Shikaar Huntmaster's Shoulderpads
					200494,	-- Shikaar Scout's Shoulderpads
					200493,	-- Ohn'ir Daylight Shoulderpads
					200504,	-- Ohn'ir Dawnlight Shoulderpads
					200503,	-- Ohn'ir Dusklight Shoulderpads
					200502,	-- Ohn'ir Midnight Shoulderpads
					------ RENOWN 21 ------
					200546,	-- Clan Nokhud Pennant
					200547,	-- Clan Ohn'ir Pennant
					200545,	-- Clan Shikaar Pennant
					200543,	-- Clan Teerai Pennant
				}},
			}),
			n(186650, {	-- Farrier Roscha
				["coord"] = { 84.4, 25.0, OHNAHRAN_PLAINS },
				["g"] = {
					i(198400),	-- Lucky Horseshoe
					i(198436),	-- Hunting Horseshoe
					i(198437),	-- Caravan Horseshoe
				},
			}),
			n(196707, {	-- Quartermaster Huseng
				["coord"] = { 60.4, 37.7, OHNAHRAN_PLAINS },
				["g"] = bubbleDownRep(FACTION_MARUUK_CENTAUR, {
					{		-- RENOWN 1 --
					}, {	-- RENOWN 2 --
					}, {	-- RENOWN 3 --
						i(200551, {	-- Comfortable Pile of Pelts (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
								{ "i", DENSE_HIDE, 2 },
							},
						}),
						i(198402, {	-- Maruuk Cooking Pot (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
								{ "i", SEREVITE_ORE, 2 },
							},
						}),
						i(200550, {	-- Very Comfortable Pelt (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
								{ "i", DENSE_HIDE, 2 },
							},
						}),
					}, {	-- RENOWN 4 --
					}, {	-- RENOWN 5 --
						i(197630, {	-- Windborne Velocidrake: Feathered Neck (MM!)
							["timeline"] = { ADDED_10_0_7 },
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(197596, {	-- Windborne Velocidrake: Horned Jaw (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(197604, {	-- Windborne Velocidrake: Ox Horns (MM!)
							["timeline"] = { ADDED_10_0_7 },
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(197610, {	-- Windborne Velocidrake: Yellow Horns (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
					}, {	-- RENOWN 6 --
					}, {	-- RENOWN 7 --
						i(201323, {	-- Essence of Awakening
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
								{ "i", OCASSIONAL_SAND, 1 },
							},
						}),
						i(200483, {	-- Nokhud Battle Helm
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", SEREVITE_ORE, 10 },
							},
						}),
						i(200491, {	-- Nokhud Champion's Helm
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", SEREVITE_ORE, 10 },
							},
						}),
						i(200490, {	-- Nokhud Reaver's Helm
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", SEREVITE_ORE, 10 },
							},
						}),
						i(200492, {	-- Nokhud Warlord's Helm
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", SEREVITE_ORE, 10 },
							},
						}),
						i(200486, {	-- Ohn'ir Dayligt Visor
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", IRIDESCENT_PLUME, 2 },
							},
						}),
						i(200484, {	-- Ohn'ir Dawnlight Hat
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", IRIDESCENT_PLUME, 2 },
							},
						}),
						i(200485, {	-- Ohn'ir Dusklight Cap
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", IRIDESCENT_PLUME, 2 },
							},
						}),
						i(200481, {	-- Ohn'ir Midnight Helm
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", IRIDESCENT_PLUME, 2 },
							},
						}),
						i(200482, {	-- Shikaar Harrier's Visor
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", IRIDESCENT_PLUME, 2 },
							},
						}),
						i(200487, {	-- Shikaar Hunter's Visor
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", IRIDESCENT_PLUME, 2 },
							},
						}),
						i(200488, {	-- Shikaar Huntmaster's Visor
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", IRIDESCENT_PLUME, 2 },
							},
						}),
						i(200489, {	-- Shikaar Scout's Visor
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", IRIDESCENT_PLUME, 2 },
							},
						}),
					}, {	-- RENOWN 8 --
						i(199814, {	-- Formula: Enchant Boots - Plainsrunner's Breeze (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(199813, {	-- Formula: Enchant Chest - Sustained Strength (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(193618, {	-- Hoofhelper (PET!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", RESILIENT_LEATHER, 20 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
					}, {	-- RENOWN 9 --
					}, {	-- RENOWN 10 --
					}, {	-- RENOWN 11 --
						i(200613, {	-- Aylaag Windstone Fragment
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(200457, {	-- Ohn'ahran Plainswalker Boots
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(200458, {	-- Ohn'ahran Plainswalker Greaves
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(200460, {	-- Ohn'ahran Plainswalker Moccasins
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(200459, {	-- Ohn'ahran Plainswalker Slippers
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
					}, {	-- RENOWN 12 --
					}, {	-- RENOWN 13 --
						i(193870, {	-- Pattern: Allied Legguards of Sansok Khan (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(193878, {	-- Pattern: Ancestor's Dew Drippers (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(194480, {	-- Plans: Obsidian Halberd (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(194478, {	-- Plans: Obsidian Seared Facesmasher (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(194477, {	-- Plans: Obsidian Seared Runeaxe (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(191547, {	-- Recipe: Alacritous Alchemist Stone (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(200499, {	-- Nokhud Battle Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", RESILIENT_LEATHER, 20 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
							},
						}),
						i(200500, {	-- Nokhud Champion's Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", RESILIENT_LEATHER, 20 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
							},
						}),
						i(200501, {	-- Nokhud Reaver's Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", RESILIENT_LEATHER, 20 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
							},
						}),
						i(200495, {	-- Nokhud Warlord's Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", RESILIENT_LEATHER, 20 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
							},
						}),
						i(200498, {	-- Shikaar Harrier's Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", RESILIENT_LEATHER, 20 },
							},
						}),
						i(200497, {	-- Shikaar Hunter's Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", RESILIENT_LEATHER, 20 },
							},
						}),
						i(200496, {	-- Shikaar Huntmaster's Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", RESILIENT_LEATHER, 20 },
							},
						}),
						i(200494, {	-- Shikaar Scout's Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", RESILIENT_LEATHER, 20 },
							},
						}),
						i(200493, {	-- Ohn'ir Daylight Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", RESILIENT_LEATHER, 20 },
								{ "i", IRIDESCENT_PLUME, 2 },
							},
						}),
						i(200504, {	-- Ohn'ir Dawnlight Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", RESILIENT_LEATHER, 20 },
								{ "i", IRIDESCENT_PLUME, 2 },
							},
						}),
						i(200503, {	-- Ohn'ir Dusklight Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", RESILIENT_LEATHER, 20 },
								{ "i", IRIDESCENT_PLUME, 2 },
							},
						}),
						i(200502, {	-- Ohn'ir Midnight Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", RESILIENT_LEATHER, 20 },
								{ "i", IRIDESCENT_PLUME, 2 },
							},
						}),
					}, {	-- RENOWN 14 --
					}, {	-- RENOWN 15 --
						i(198902, {	-- Technique: Windborne Velocidrake: Black Fur (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 25 },
							},
						}),
						i(197587, {	-- Windborne Velocidrake: Feathered Back (MM!)
							["timeline"] = { ADDED_10_0_7 },
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(197591, {	-- Windborne Velocidrake: Hairy Head (MM!)
							["timeline"] = { ADDED_10_0_7 },
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(197618, {	-- Windborne Velocidrake: Long Snout (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(197623, {	-- Windborne Velocidrake: Spiked Tail (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
					}, {	-- RENOWN 16 --
					}, {	-- RENOWN 17 --
						i(200541, {	-- Fur-Lined Safeguard
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", DRACONIUM_ORE, 5 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
							},
						}),
						i(200540, {	-- Improvised Maruuk Barrier
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", RUNED_WRITHEBARK, 10 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
							},
						}),
						i(200539, {	-- Khansguard Shield
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", DRACONIUM_ORE, 5 },
								{ "i", RESILIENT_LEATHER, 20 },
							},
						}),
						i(200520, {	-- Mammothbone Knife
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", LARGE_STURDY_FEMUR, 1 },
							},
						}),
						i(200521, {	-- Maruuk Boneblade
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", LARGE_STURDY_FEMUR, 1 },
							},
						}),
						i(200522, {	-- Maruukai Smith's Tongs
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(200525, {	-- Massive Stone Sledgehammer
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
							},
						}),
						i(200518, {	-- Nokhud Goliath's Spear
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", DRACONIUM_ORE, 5 },
							},
						}),
						i(200524, {	-- Nokhud Warhammer
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", SEREVITE_ORE, 10 },
							},
						}),
						i(200517, {	-- Nokhud Warspear
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", DRACONIUM_ORE, 5 },
							},
						}),
						i(200510, {	-- Huntstrider Spear
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 5 },
							},
						}),
						i(200523, {	-- Smith's Stoneworked Mallet
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
							},
						}),
						i(200511, {	-- Stonework Greatspear
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", DRACONIUM_ORE, 5 },
							},
						}),
						i(200512, {	-- Teerai Warspear
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 5 },
							},
						}),
						i(200534, {	-- Toghus Poleaxe
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", DRACONIUM_ORE, 5 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
							},
						}),
					}, {	-- RENOWN 18 --
						i(198463),	-- Pattern: Expert Alchemist's Hat (RECIPE!)
						i(198462),	-- Pattern: Flameproof Apron (RECIPE!)
						i(198457),	-- Pattern: Masterwork Smock (RECIPE!)
						i(198464, {	-- Pattern: Reinforced Pack (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(194499),	-- Plans: Khaz'gorite Leatherworker's Knife (RECIPE!)
						i(194497),	-- Plans: Khaz'gorite Skinning Knife (RECIPE!)
					}, {	-- RENOWN 19 --
						i(197011, {	-- Cliffside Wylderdrake: Green Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_AIR, 1 },
							},
						}),
						i(197143, {	-- Highland Drake: Green Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_AIR, 1 },
							},
						}),
						i(197389, {	-- Renewed Proto-Drake: Green Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_AIR, 1 },
							},
						}),
						i(203352, {	-- Winding Slitherdrake: Green Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_AIR, 1 },
							},
							["timeline"] = { ADDED_10_1_0 },
						}),
					}, {	-- RENOWN 20 --
					}, {	-- RENOWN 21 --
						i(200546),	-- Clan Nokhud Pennant
						i(200547),	-- Clan Ohn'ir Pennant
						i(200545),	-- Clan Shikaar Pennant
						i(200543),	-- Clan Teerai Pennant
					}, {	-- RENOWN 22 --
						i(197982),	-- Pattern: Finished Prototype Explorer's Barding (RECIPE!)
						i(198713),	-- Plans: Prototype Explorer's Barding Framework (RECIPE!)
						i(191588),	-- Recipe: Exultant Incense (RECIPE!)
						i(198937),	-- Technique: Contract: Maruuk Centaur (RECIPE!)
					}, {	-- RENOWN 23 --
					}, {	-- RENOWN 24 --
						i(200465, {	-- Maruuk Harrier's Hauberk
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(200466, {	-- Maruuk Scout's Vest
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(200467, {	-- Maruuk Spiritual Vestments
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(200464, {	-- Maruuk Warrior's Chestplate
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
					}, {	-- RENOWN 25 --
					},
				}),
			}),
			n(195529, {	-- Weaponmaster Aloom <Renown Weaponsmith>
				["coord"] = { 62.4, 42.2, OHNAHRAN_PLAINS },
				["sym"] = {{"select","itemID",
					------ RENOWN 17 ------
					200541,	-- Fur-Lined Safeguard
					200540,	-- Improvised Maruuk Barrier
					200539,	-- Khansguard Shield
					200520,	-- Mammothbone Knife
					200521,	-- Maruuk Boneblade
					200522,	-- Maruukai Smith's Tongs
					200525,	-- Massive Stone Sledgehammer
					200518,	-- Nokhud Goliath's Spear
					200524,	-- Nokhud Warhammer
					200517,	-- Nokhud Warspear
					200510,	-- Huntstrider Spear
					200523,	-- Smith's Stoneworked Mallet
					200511,	-- Stonework Greatspear
					200512,	-- Teerai Warspear
					200534,	-- Toghus Poleaxe
				}},
			}),
		}),
	}),
})));