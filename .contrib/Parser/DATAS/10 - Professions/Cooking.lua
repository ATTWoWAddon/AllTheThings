-----------------------------------------------------
--       P R O F E S S I O N S   M O D U L E       --
-----------------------------------------------------
local function AwardsCost(amount)
	return {
		-- #if BEFORE 5.0.4
		{"i",43016,amount},	-- Dalaran Cooking Award
		-- #else
		{"c",402,amount},	-- Ironpaw Token
		-- #endif
		-- #if AFTER 4.0.3
		{"c",81,amount},	-- Epicurean's Award
		-- #endif
	};
end
root(ROOTS.Professions, prof(COOKING, bubbleDownSelf({ ["requireSkill"] = COOKING }, {
	n(ACHIEVEMENTS, {
		applyclassicphase(WRATH_PHASE_ONE, ach(1563, {	-- Hail to the Chef [Alliance]
			["sym"] = {{"meta_achievement",
				1801,	-- Captain Rumsey's Lager
				1781,	-- Critter Gitter
				1785,	-- Dinner Impossible
				906,	-- Kickin' It Up a Notch
				125,	-- Northrend Cook
				1782,	-- Our Daily Bread [A]
				-- #if AFTER 5.0.4
				1783,	-- Our Daily Bread [H]
				-- #endif
				1780,	-- Second That Emotion
				1798,	-- Sous Chef
				877,	-- The Cake Is Not A Lie
				1779,	-- The Northrend Gourmet (45)
				1800,	-- The Outland Gourmet
			}},
			["timeline"] = { ADDED_3_0_2 },
			-- #if BEFORE 5.0.4
			["races"] = ALLIANCE_ONLY,
			-- #endif
			["groups"] = {
				title(52),	-- Chef <Name>
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1784, {	-- Hail to the Chef [Horde]
			["sym"] = {{"meta_achievement",
				1801,	-- Captain Rumsey's Lager
				1781,	-- Critter Gitter
				1785,	-- Dinner Impossible
				906,	-- Kickin' It Up a Notch
				125,	-- Northrend Cook
				1783,	-- Our Daily Bread [H]
				1780,	-- Second That Emotion
				1798,	-- Sous Chef
				877,	-- The Cake Is Not A Lie
				1779,	-- The Northrend Gourmet (45)
				1800,	-- The Outland Gourmet
			}},
			["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
			["races"] = HORDE_ONLY,
			["groups"] = {
				title(52),	-- Chef <Name>
			},
		})),
		ach(18817, {	-- Showoff Chef
			["timeline"] = { ADDED_10_1_7 },
			["rank"] = 450,
		}),
		ach(18816, {	-- Serious Chef
			["timeline"] = { ADDED_10_1_7 },
			["rank"] = 300,
		}),
		applyclassicphase(MOP_PHASE_LANDFALL, ach(7328, {	-- Ironpaw Chef
			["timeline"] = { ADDED_5_0_4 },
			["rank"] = 240,
		})),
		applyclassicphase(CATA_PHASE_ONE, ach(5471, {	-- Iron Chef
			["timeline"] = { ADDED_4_0_3_LAUNCH },
			["rank"] = 200,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1799, {	-- Chef de Cuisine
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 160,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1798, {	-- Sous Chef
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 100,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1797, {	-- Chef de Partie
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 75,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1796, {	-- Short Order Cook
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 50,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1795, {	-- Lunch Lady
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 25,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1998, {	-- Cooking Award
			["timeline"] = { ADDED_3_0_2 },
			["cost"] = AwardsCost(1),
			["rank"] = 1,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1999, {	-- 10 Cooking Awards
			["timeline"] = { ADDED_3_0_2 },
			["cost"] = AwardsCost(10),
			["rank"] = 10,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2000, {	-- 25 Cooking Awards
			["timeline"] = { ADDED_3_0_2 },
			["cost"] = AwardsCost(25),
			["rank"] = 25,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2001, {	-- 50 Cooking Awards
			["timeline"] = { ADDED_3_0_2 },
			["cost"] = AwardsCost(50),
			["rank"] = 50,
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2002, {	-- 100 Cooking Awards
			["timeline"] = { ADDED_3_0_2 },
			["cost"] = AwardsCost(100),
			["rank"] = 100,
		})),
	}),
	expansion(EXPANSION.CLASSIC, {
		ach(123, {	-- Artisan Cook / Classic Cook [8.0.1]
			-- #if BEFORE 8.0.1
			["spellID"] = 18260,	-- Cooking (Artisan)
			-- #if SEASON_OF_DISCOVERY
			["OnUpdate"] = [[function(t)
				if C_Seasons and C_Seasons.GetActiveSeason() == 2 then
					t.u = ]] .. SOD_PHASE_THREE .. [[;
				end
			end]],
			-- #endif
			["rank"] = 4,
			-- #endif
		}),
		ach(122, {	-- Expert Cook
			-- #if BEFORE 8.0.1
			["spellID"] = 3413,	-- Cooking (Expert)
			 -- #if SEASON_OF_DISCOVERY
			["OnUpdate"] = [[function(t)
				if C_Seasons and C_Seasons.GetActiveSeason() == 2 then
					t.u = ]] .. SOD_PHASE_TWO .. [[;
				end
			end]],
			-- #endif
			["rank"] = 3,
			-- #endif
		}),
		ach(121, {	-- Journeyman Cook
			-- #if BEFORE 8.0.1
			["spellID"] = 3102,	-- Cooking (Journeyman)
			["rank"] = 2,
			-- #endif
		}),
	}),
	expansion(EXPANSION.TBC, {
		applyclassicphase(TBC_PHASE_ONE, ach(124, {	-- Master Cook / Outland Cook [8.0.1+]
			["timeline"] = { ADDED_2_0_1 },
			-- #if BEFORE 8.0.1
			["spellID"] = 33359,	-- Cooking (Master)
			["rank"] = 5,
			-- #endif
		})),
		-- CRIEVE NOTE: Despite being classified as TBC, these achievements weren't available (or possible to do) prior to Wrath prepatch.
		applyclassicphase(WRATH_PHASE_ONE, ach(1801, {	-- Captain Rumsey's Lager
			["provider"] = { "i", 34832 },	-- Captain Rumsey's Lager
			["timeline"] = { ADDED_3_0_2 },
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(877, {	-- The Cake Is Not A Lie
			["provider"] = { "i", 33924 },	-- Delicious Chocolate Cake
			["timeline"] = { ADDED_3_0_2 },
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(1800, {	-- The Outland Gourmet
			["timeline"] = { ADDED_3_0_2 },
			["groups"] = {
				crit(1832, { ["provider"] = { "i", 33924 } } ),	-- Delicious Chocolate Cake
				crit(6759, { ["provider"] = { "i", 27661 } } ),	-- Blackened Trout
				crit(6760, { ["provider"] = { "i", 27651 } } ),	-- Buzzard Bites
				crit(6764, { ["provider"] = { "i", 30155 } } ),	-- Clam Bar
				crit(6765, { ["provider"] = { "i", 27662 } } ),	-- Feltail Delight
				crit(6766, { ["provider"] = { "i", 27655 } } ),	-- Ravager Dog
				crit(6767, { ["provider"] = { "i", 33866 } } ),	-- Stormchops
				crit(6768, { ["provider"] = { "i", 27663 } } ),	-- Blackened Sporefish
				crit(6770, { ["provider"] = { "i", 27657 } } ),	-- Blackened Basilisk
				crit(6771, { ["provider"] = { "i", 27664 } } ),	-- Grilled Mudfish
				crit(6772, { ["provider"] = { "i", 27665 } } ),	-- Poached Bluefish
				crit(6773, { ["provider"] = { "i", 33867 } } ),	-- Broiled Bloodfin
				crit(6774, { ["provider"] = { "i", 27666 } } ),	-- Golden Fish Sticks
				crit(6775, { ["provider"] = { "i", 33874 } } ),	-- Kibler's Bits
				crit(6776, { ["provider"] = { "i", 27658 } } ),	-- Roasted Clefthoof
				crit(6777, { ["provider"] = { "i", 27660 } } ),	-- Talbuk Steak
				crit(6778, { ["provider"] = { "i", 27659 } } ),	-- Warp Burger
				crit(6779, { ["provider"] = { "i", 31673 } } ),	-- Crunchy Serpent
				crit(6780, { ["provider"] = { "i", 31672 } } ),	-- Mok'Nathal Shortribs
				crit(6781, { ["provider"] = { "i", 33052 } } ),	-- Fisherman's Feast
				crit(6782, { ["provider"] = { "i", 33053 } } ),	-- Hot Buttered Trout
				crit(6783, { ["provider"] = { "i", 33825 } } ),	-- Skullfish Soup
				crit(6784, { ["provider"] = { "i", 27667 } } ),	-- Spicy Crawdad
				crit(6785, { ["provider"] = { "i", 33872 } } ),	-- Spicy Hot Talbuk
				crit(6786, { ["provider"] = { "i", 33048 } } ),	-- Stewed Trout
			},
		})),
	}),
	applyclassicphase(WRATH_PHASE_ONE, expansion(EXPANSION.WRATH, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {
		ach(125, {	-- Grand Master Cook / Northrend Cook [8.0.1+]
			-- #if BEFORE 8.0.1
			["spellID"] = 51296,	-- Cooking (Grand Master)
			["rank"] = 6,
			-- #endif
		}),
		ach(1781, {	-- Critter Gitter
			["cost"] = {{"i", 43004, 10}},	-- 10x Critter Bites
		}),
		ach(1785, {	-- Dinner Impossible
			crit(6626, { ["provider"] = { "i", 34753 }, ["maps"] = { ALTERAC_VALLEY, 1537 } } ),	-- Alterac Valley
			crit(6627, { ["provider"] = { "i", 34753 }, ["maps"] = ARATHI_BASIN } ),	-- Arathi Basin
			crit(6628, { ["provider"] = { "i", 34753 }, ["maps"] = { WARSONG_GULCH, 1339 } } ),	-- Warsong Gulch
			crit(6630, { ["provider"] = { "i", 34753 }, ["maps"] = { EYE_OF_THE_STORM, 397 } } ),	-- Eye of the Storm
		}),
		ach(1780, {	-- Second That Emotion
			crit(6450, { ["provider"] = { "i", 43491 } } ),	-- Bad Clams
			crit(6715, { ["provider"] = { "i", 43492 } } ),	-- Haunted Herring
			crit(6738, { ["provider"] = { "i", 43488 } } ),	-- Last Week's Mammoth
			crit(7093, { ["provider"] = { "i", 43490 } } ),	-- Tasty Cupcake
		}),
		ach(1777, {	-- The Northrend Gourmet (15)
			-- Identical Criteria as Main Achievement
			["sym"] = {{"select","achievementID",1779},{"pop"}},	-- The Northrend Gourmet (45)
			["rank"] = 15,
		}),
		ach(1778, {	-- The Northrend Gourmet (30)
			-- Identical Criteria as Main Achievement
			["sym"] = {{"select","achievementID",1779},{"pop"}},	-- The Northrend Gourmet (45)
			["rank"] = 30,
		}),
		ach(1779, {	-- The Northrend Gourmet (45)
			["rank"] = 45,
			["groups"] = {
				crit(6486, { ["provider"] = { "i", 43491 } } ),	-- Bad Clams
				crit(6487, { ["provider"] = { "i", 42942 } } ),	-- Baked Manta Ray
				crit(6488, { ["provider"] = { "i", 43268 } } ),	-- Dalaran Clam Chowder
				crit(6489, { ["provider"] = { "i", 34760 } } ),	-- Grilled Bonescale
				crit(6490, { ["provider"] = { "i", 34762 } } ),	-- Grilled Sculpin
				crit(6491, { ["provider"] = { "i", 43492 } } ),	-- Haunted Herring
				crit(6492, { ["provider"] = { "i", 43488 } } ),	-- Last Week's Mammoth
				crit(6493, { ["provider"] = { "i", 34748 } } ),	-- Mammoth Meal
				crit(6494, { ["provider"] = { "i", 34747 } } ),	-- Northern Stew
				crit(6495, { ["provider"] = { "i", 34765 } } ),	-- Pickled Fangtooth
				crit(6496, { ["provider"] = { "i", 34764 } } ),	-- Poached Nettlefish
				crit(6497, { ["provider"] = { "i", 34752 } } ),	-- Rhino Dogs
				crit(6498, { ["provider"] = { "i", 34751 } } ),	-- Roasted Worg
				crit(6499, { ["provider"] = { "i", 34761 } } ),	-- Sauteed Goby
				crit(6501, { ["provider"] = { "i", 34749 } } ),	-- Shoveltusk Steak
				crit(6502, { ["provider"] = { "i", 34759 } } ),	-- Smoked Rockfin
				crit(6503, { ["provider"] = { "i", 34763 } } ),	-- Smoked Salmon
				crit(6505, { ["provider"] = { "i", 43490 } } ),	-- Tasty Cupcake
				crit(6506, { ["provider"] = { "i", 34750 } } ),	-- Worm Delight
				crit(6507, { ["provider"] = { "i", 34753 } } ),	-- Great Feast
				crit(6508, { ["provider"] = { "i", 39520 } } ),	-- Kungaloosh
				crit(6509, { ["provider"] = { "i", 42999 } } ),	-- Blackened Dragonfin
				crit(6510, { ["provider"] = { "i", 42997 } } ),	-- Blackened Worg Steak
				crit(6511, { ["provider"] = { "i", 43004 } } ),	-- Critter Bites
				crit(6512, { ["provider"] = { "i", 42998 } } ),	-- Cuttlesteak
				crit(6513, { ["provider"] = { "i", 43000 } } ),	-- Dragonfin Filet
				crit(6514, { ["provider"] = { "i", 34767 } } ),	-- Firecracker Salmon
				crit(6515, { ["provider"] = { "i", 43015 } } ),	-- Fish Feast
				crit(6516, { ["provider"] = { "i", 43478 } } ),	-- Gigantic Feast
				crit(6517, { ["provider"] = { "i", 42995 } } ),	-- Hearty Rhino
				crit(6518, { ["provider"] = { "i", 34769 } } ),	-- Imperial Manta Steak
				crit(6587, { ["provider"] = { "i", 34754 } } ),	-- Mega Mammoth Meal
				crit(6588, { ["provider"] = { "i", 34758 } } ),	-- Mighty Rhino Dogs
				crit(6589, { ["provider"] = { "i", 34766 } } ),	-- Poached Northern Sculpin
				crit(6590, { ["provider"] = { "i", 42994 } } ),	-- Rhinolicious Wormsteak
				crit(6591, { ["provider"] = { "i", 43480 } } ),	-- Small Feast
				crit(6592, { ["provider"] = { "i", 42996 } } ),	-- Snapper Extreme
				crit(6593, { ["provider"] = { "i", 43005 } } ),	-- Spiced Mammoth Treats
				crit(6594, { ["provider"] = { "i", 34756 } } ),	-- Spiced Worm Burger
				crit(6595, { ["provider"] = { "i", 34768 } } ),	-- Spicy Blue Nettlefish
				crit(6596, { ["provider"] = { "i", 42993 } } ),	-- Spicy Fried Herring
				crit(6597, { ["provider"] = { "i", 34755 } } ),	-- Tender Shoveltusk Steak
				crit(6598, { ["provider"] = { "i", 43001 } } ),	-- Tracker Snacks
				crit(6599, { ["provider"] = { "i", 34757 } } ),	-- Very Burnt Worg
				crit(9421, { ["provider"] = { "i", 44953 } } ),	-- Worg Tartare
			},
		}),
	}))),
	applyclassicphase(CATA_PHASE_ONE, expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
		ach(4916, {	-- Illustrious Grand Master Cook / Cataclysmic Cook [8.0.1+]
			-- #if BEFORE 8.0.1
			["spellID"] = 88053,	-- Cooking (Illustrious)
			["rank"] = 7,
			-- #endif
		}),
		ach(5845, {	-- A Bunch of Lunch (A)
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				5842,	-- Let's Do Lunch: Darnassus
				5841,	-- Let's Do Lunch: Ironforge
				5474,	-- Let's Do Lunch: Stormwind
				-- #if AFTER 5.0.4
				5475,	-- Let's Do Lunch: Orgrimmar
				5843,	-- Let's Do Lunch: Thunder Bluff
				5844,	-- Let's Do Lunch: Undercity
				-- #endif
			}},
			["timeline"] = { ADDED_4_2_0 },
			-- #if BEFORE 5.0.4
			["races"] = ALLIANCE_ONLY,
			-- #endif
		}),
		ach(5846, {	-- A Bunch of Lunch (H)
			-- Meta Achievement
			-- #if BEFORE 5.0.4
			["sym"] = {{"meta_achievement",
				5475,	-- Let's Do Lunch: Orgrimmar
				5843,	-- Let's Do Lunch: Thunder Bluff
				5844,	-- Let's Do Lunch: Undercity
			}},
			-- #endif
			["timeline"] = { ADDED_4_2_0, REMOVED_5_0_4 },
			["races"] = HORDE_ONLY,
		}),
		ach(5779, {	-- You'll Feel Right as Rain
			["cost"] = {{"i", 62680, 91}},	-- 91x Chocolate Cookie
			["timeline"] = { ADDED_4_1_0 },
		}),
		ach(5472, {	-- The Cataclysmic Gourmet (15)
			-- Identical Criteria as Main Achievement
			["sym"] = {{"select","achievementID",5473},{"pop"}},	-- The Cataclysmic Gourmet (30)
		}),
		ach(5473, {	-- The Cataclysmic Gourmet (30)
			crit(15712, { ["provider"] = { "i", 62790 } } ),	-- Darkbrew Lager
			crit(15713, { ["provider"] = { "i", 62673 } } ),	-- Feathered Lure
			crit(15714, { ["provider"] = { "i", 62676 } } ),	-- Blackened Surprise
			crit(15715, { ["provider"] = { "i", 62674 } } ),	-- Highland Spirits
			crit(15716, { ["provider"] = { "i", 62675 } } ),	-- Starfire Espresso
			crit(15717, { ["provider"] = { "i", 62655 } } ),	-- Broiled Mountain Trout
			crit(15718, { ["provider"] = { "i", 62654 } } ),	-- Lavascale Fillet
			crit(15719, { ["provider"] = { "i", 62651 } } ),	-- Lightly Fried Lurker
			crit(15720, { ["provider"] = { "i", 62657 } } ),	-- Lurker Lunch
			crit(15721, { ["provider"] = { "i", 62653 } } ),	-- Salted Eye
			crit(15722, { ["provider"] = { "i", 62652 } } ),	-- Seasoned Crab
			crit(15723, { ["provider"] = { "i", 62656 } } ),	-- Whitecrest Gumbo
			crit(15724, { ["provider"] = { "i", 62677 } } ),	-- Fish Fry
			crit(15725, { ["provider"] = { "i", 62659 } } ),	-- Hearty Seafood Soup
			crit(15726, { ["provider"] = { "i", 62660 } } ),	-- Pickled Guppy
			crit(15727, { ["provider"] = { "i", 62658 } } ),	-- Tender Baked Turtle
			crit(15728, { ["provider"] = { "i", 62680 } } ),	-- Chocolate Cookie
			crit(15729, { ["provider"] = { "i", 62661 } } ),	-- Baked Rockfish
			crit(15730, { ["provider"] = { "i", 62665 } } ),	-- Basilisk Liverdog
			crit(15731, { ["provider"] = { "i", 62670 } } ),	-- Beer-Basted Crocolisk
			crit(15732, { ["provider"] = { "i", 62668 } } ),	-- Blackbelly Sushi
			crit(15733, { ["provider"] = { "i", 62664 } } ),	-- Crocolisk Au Gratin
			crit(15734, { ["provider"] = { "i", 62666 } } ),	-- Delicious Sagefish Tail
			crit(15735, { ["provider"] = { "i", 62662 } } ),	-- Grilled Dragon
			crit(15736, { ["provider"] = { "i", 62663 } } ),	-- Lavascale Minestrone
			crit(15737, { ["provider"] = { "i", 62667 } } ),	-- Mushroom Sauce Mudfish
			crit(15738, { ["provider"] = { "i", 62671 } } ),	-- Severed Sagefish Head
			crit(15739, { ["provider"] = { "i", 62669 } } ),	-- Skewered Eel
			crit(15740, { ["provider"] = { "i", 62289 } } ),	-- Broiled Dragon Feast
			crit(15741, { ["provider"] = { "i", 62649 } } ),	-- Fortune Cookie
			crit(15742, { ["provider"] = { "i", 62290 } } ),	-- Seafood Magnifique Feast
			crit(15743, { ["provider"] = { "i", 62672 } } ),	-- South Island Iced Tea
		}),
	}))),
	applyclassicphase(MOP_PHASE_LANDFALL, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		ach(6365, {	-- Zen Master Cook / Pandaria Cook [8.0.1+]
			-- #if BEFORE 8.0.1
			["spellID"] = 104381,	-- Cooking (Zen Master)
			["rank"] = 8,
			-- #endif
		}),
		ach(7306, {	-- Master of Pandaren Cooking
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				7305,	-- Master of the Brew
				7300,	-- Master of the Grill
				7304,	-- Master of the Oven
				7302,	-- Master of the Pot
				7303,	-- Master of the Steamer
				7301,	-- Master of the Wok
			}},
			["g"] = {
				title(202),	-- <Name>, Master of the Ways
			},
		}),
		ach(7305),		-- Master of the Brew
		ach(7300),		-- Master of the Grill
		ach(7304),		-- Master of the Oven
		ach(7302),		-- Master of the Pot
		ach(7303),		-- Master of the Steamer
		ach(7301),		-- Master of the Wok
		ach(7325, {	-- Now I Am the Master
			crit(20537, {	-- Obtain the Cooking School Bell
				["provider"] = { "i", 86425 },	-- Cooking School Bell
			}),
			crit(20538, {	-- Train your student to become an Expert in Cooking (Exalted)
				["_factions"] = { 1357 },	-- Nomi
			}),
		}),
		-- TODO: add providers for 'eating'/'cooking' the necessary foods
		ach(7329, {	-- Pandaren Cuisine
			["sym"] = {{ "achievement_criteria" }},
		}),
		ach(7330, {	-- Pandaren Delicacies
			["sym"] = {{ "achievement_criteria" }},
		}),
		ach(7326, {	-- The Pandaren Gourmet (15)
			-- Identical Criteria as Main Achievement
			["sym"] = {{"select","achievementID",7327},{"pop"}},	-- The Pandaren Gourmet (30)
		}),
		ach(7327, {	-- The Pandaren Gourmet (30)
			crit(20539, { ["provider"] = { "i", 86057 } } ),	-- Sliced Peaches
			crit(20540, { ["provider"] = { "i", 85504 } } ),	-- Krasarang Fritters
			crit(20541, { ["provider"] = { "i", 85501 } } ),	-- Viseclaw Soup
			crit(20542, { ["provider"] = { "i", 86026 } } ),	-- Perfectly Cooked Instant Noodles
			crit(20543, { ["provider"] = { "i", 81402 } } ),	-- Toasted Fish Jerky
			crit(20544, { ["provider"] = { "i", 81404 } } ),	-- Dried Needle Mushrooms
			crit(20545, { ["provider"] = { "i", 81400 } } ),	-- Pounded Rice Cake
			crit(20546, { ["provider"] = { "i", 81401 } } ),	-- Yak Cheese Curds
			crit(20547, { ["provider"] = { "i", 81403 } } ),	-- Dried Peaches
			crit(20548, { ["provider"] = { "i", 81405 } } ),	-- Boiled Silkworm Pupa
			crit(20549, { ["provider"] = { "i", 81406 } } ),	-- Roasted Barley Tea
			crit(20550, { ["provider"] = { "i", 74636 } } ),	-- Golden Carp Consomme
			crit(20551, { ["provider"] = { "i", 74641 } } ),	-- Fish Cake
			crit(20552, { ["provider"] = { "i", 81410 } } ),	-- Green Curry Fish
			crit(20553, { ["provider"] = { "i", 81412 } } ),	-- Blanched Needle Mushrooms
			crit(20554, { ["provider"] = { "i", 81408 } } ),	-- Red Bean Bun
			crit(20555, { ["provider"] = { "i", 81409 } } ),	-- Tangy Yogurt
			crit(20556, { ["provider"] = { "i", 81411 } } ),	-- Peach Pie
			crit(20557, { ["provider"] = { "i", 81413 } } ),	-- Skewered Peanut Chicken
			crit(20558, { ["provider"] = { "i", 81414 } } ),	-- Pearl Milk Tea
			crit(20559, { ["provider"] = { "i", 86069 } } ),	-- Rice Pudding
			crit(20560, { ["provider"] = { "i", 86070 } } ),	-- Wildfowl Ginseng Soup
			crit(20563, { ["provider"] = { "i", 74642 } } ),	-- Charbroiled Tiger Steak
			crit(20564, { ["provider"] = { "i", 74645 } } ),	-- Eternal Blossom Fish
			crit(20565, { ["provider"] = { "i", 74646 } } ),	-- Black Pepper Ribs and Shrimp
			crit(20566, { ["provider"] = { "i", 74643 } } ),	-- Sauteed Carrots
			crit(20567, { ["provider"] = { "i", 74647 } } ),	-- Valley Stir Fry
			crit(20568, { ["provider"] = { "i", 74648 } } ),	-- Sea Mist Rice Noodles
			crit(20569, { ["provider"] = { "i", 74644 } } ),	-- Swirling Mist Soup
			crit(20570, { ["provider"] = { "i", 74649 } } ),	-- Braised Turtle
			crit(20571, { ["provider"] = { "i", 75026 } } ),	-- Ginseng Tea
			crit(20572, { ["provider"] = { "i", 74651 } } ),	-- Shrimp Dumplings
			crit(20573, { ["provider"] = { "i", 74654 } } ),	-- Wildfowl Roast
			crit(20574, { ["provider"] = { "i", 75037 } } ),	-- Jade Witch Brew
			crit(20575, { ["provider"] = { "i", 74652 } } ),	-- Fire Spirit Salmon
			crit(20576, { ["provider"] = { "i", 74655 } } ),	-- Twin Fish Platter
			crit(20578, { ["provider"] = { "i", 86074 } } ),	-- Spicy Vegetable Chips
			crit(20579, { ["provider"] = { "i", 75038 } } ),	-- Mad Brewer's Breakfast
			crit(20580, { ["provider"] = { "i", 86073 } } ),	-- Spicy Salmon
			crit(20581, { ["provider"] = { "i", 74650 } } ),	-- Mogu Fish Stew
			crit(20582, { ["provider"] = { "i", 74653 } } ),	-- Steamed Crab Surprise
			crit(20583, { ["provider"] = { "i", 74656 } } ),	-- Chun Tian Spring Rolls
		}),
		faction(1357, {		-- Nomi (Faction)
			["description"] = "Summon Nomi once per day, complete the daily he gives and you'll soon (42+ days later), earn your Apron.\n\nThen this little bastard will learn nothing and burn all of your food in Dalaran.",
			["cr"] = 64337,	-- Nomi (Child)
			["groups"] = {
				q(31820, {	-- A Present for Teacher
					["providers"] = {
						{ "n", 64337 },	-- Nomi
						{ "i", 86425 },	-- Cooking School Bell
					},
					["description"] = "To get this quest you must Master all six of the Ways, complete the quest 'To Be a Master,' buy the Cooking School Bell for 50 Ironpaw Tokens, then max out your rep with Nomi.",
					["minReputation"] = { 1357, 6 },	-- Level 6, Best Friend
					["groups"] = {
						i(86468),	-- Apron
					},
				}),
			},
		}),
		n(QUESTS, {
			q(31281, {	-- So You Want to Be a Chef...
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 86057, 5 }},	-- 5x Sliced Peaches
			}),
			q(31302, {	-- Ready for Greatness
				["sourceQuests"] = { 31281 },	-- So You Want to be a Chef...
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 86069, 5 }},	-- 5x Rice Pudding
			}),
			q(31479, {	-- Way of the Brew
				["sourceQuests"] = { 31302 },	-- Ready for Greatness
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74845, 1 }},	-- 1x Ginseng
				["g"] = {
					r(125589),	-- Way of the Brew
				},
			}),
			q(31480, {	-- Have a Drink
				["sourceQuests"] = { 31479 },	-- Way of the Brew
				["provider"] = { "n", 58717 },	-- Bobo Ironpaw
				["coord"] = { 53.2, 52.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 75026, 1 }},	-- 1x Ginseng Tea
			}),
			q(31311, {	-- Way of the Grill
				["sourceQuests"] = { 31302 },	-- Ready for Greatness
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74833, 5 }},	-- 5x Raw Tiger Steak
				["g"] = {
					r(124694),	-- Way of the Grill
				},
			}),
			q(31467, {	-- Strong as a Tiger
				["sourceQuests"] = { 31311 },	-- Way of the Grill
				["provider"] = { "n", 58712 },	-- Kol Ironpaw
				["coord"] = { 53.0, 51.3, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74642, 5 }},	-- 5x Charbroiled Tiger Steak
			}),
			q(31478, {	-- Way of the Oven
				["sourceQuests"] = { 31302 },	-- Ready for Greatness
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74839, 5 }},	-- 5x Wildfowl Breast
				["g"] = {
					r(125588),	-- Way of the Oven
				},
			}),
			q(31477, {	-- Endurance
				["sourceQuests"] = { 31478 },	-- Way of the Oven
				["provider"] = { "n", 58716 },	-- Jian Ironpaw
				["coord"] = { 53.4, 51.6, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74654, 5 }},	-- 5x Wildfowl Roast
			}),
			q(31472, {	-- Way of the Pot
				["sourceQuests"] = { 31302 },	-- Ready for Greatness
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74856, 5 }},	-- 5x Jade Lungfish
				["g"] = {
					r(125586),	-- Way of the Pot
				},
			}),
			q(31474, {	-- The Soup of Contemplation
				["sourceQuests"] = { 31472 },	-- Way of the Pot
				["provider"] = { "n", 58714 },	-- Mei Mei Ironpaw
				["coord"] = { 52.5, 51.6, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74644, 5 }},	-- 5x Swirling Mist Soup
			}),
			q(31475, {	-- Way of the Steamer
				["sourceQuests"] = { 31302 },	-- Ready for Greatness
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74857, 5 }},	-- 5x Giant Mantis Shrimp
				["g"] = {
					r(125587),	-- Way of the Steamer
				},
			}),
			q(31476, {	-- The Spirit of Cooking
				["sourceQuests"] = { 31475 },	-- Way of the Steamer
				["provider"] = { "n", 58715 },	-- Yan Ironpaw
				["coord"] = { 52.5, 51.7, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74651, 5 }},	-- 5x Shrimp Dumplings
			}),
			q(31470, {	-- Way of the Wok
				["sourceQuests"] = { 31302 },	-- Ready for Greatness
				["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
				["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74841, 5 }},	-- 5x Juicycrunch Carrot
				["g"] = {
					r(125584),	-- Way of the Wok
				},
			}),
			q(31471, {	-- Agile as a Tiger
				["sourceQuests"] = { 31470 },	-- Way of the Wok
				["provider"] = { "n", 58713 },	-- Anthea Ironpaw
				["coord"] = { 52.7, 52.0, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 74643, 5 }},	-- 5x Sauteed Carrots
			}),
			q(31536, {	-- Preserving Freshness
				["sourceQuests"] = {
					31471,	-- Agile as a Tiger
					31477,	-- Endurance
					31480,	-- Have a Drink
					31467,	-- Strong as a Tiger
					31474,	-- The Soup of Contemplation
					31476,	-- The Spirit of Cooking
				},
				["provider"] = { "n", 64395 },	-- Nam Ironpaw
				["coord"] = { 53.5, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				["cost"] = {{ "i", 87658, 1 }},	-- 1x Empty Raw Tiger Steak Container
			}),
			header(HEADERS.Spell, 145062, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0 } }, {
				q(33018, {	-- Noodle Secrets Long Forgotten
					["sourceQuests"] = {
						31471,	-- Agile as a Tiger
						31477,	-- Endurance
						31480,	-- Have a Drink
						31467,	-- Strong as a Tiger
						31474,	-- The Soup of Contemplation
						31476,	-- The Spirit of Cooking
					},
					["provider"] = { "o", 221376 },	-- Old Sign Fragment
					["coord"] = { 52.1, 46.5, TIMELESS_ISLE },
				}),
				q(33020, {	-- The Lost Secret of the Secret Ingredient
					["sourceQuests"] = { 33018 },	-- Noodle Secrets Long Forgotten
					["provider"] = { "n", 72426 },	-- Lin Chao-Wei
					["coord"] = { 41.2, 73.4, TIMELESS_ISLE },
					["maps"] = { 429, 430 },	-- Temple of the Jade Serpent
				}),
				q(33107, {	-- Bad Feeling, Worse Result
					["sourceQuests"] = { 33020 },	-- The Lost Secret of the Secret Ingredient
					["provider"] = { "o", 221413 },	-- Lin Family Scroll
					["modelScale"] = 2,
					["coord"] = { 68.8, 58.4, 429 },	-- Temple of the Jade Serpent
					["maps"] = { 430 },	-- Temple of the Jade Serpent
				}),
				q(33021, {	-- Secrets Lost, Forever?
					["sourceQuests"] = { 33107 },	-- Bad Feeling, Worse Result
					["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
					["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
				}),
				q(33022, {	-- Catch and Carry
					["sourceQuests"] = { 33021 },	-- Secrets Lost, Forever?
					["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
					["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
					["g"] = {
						r(145038),	-- Noodle Cart Kit
					},
				}),
				q(33024, {	-- Is That A Real Measurement?
					["sourceQuests"] = { 33022 },	-- Catch and Carry
					["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
					["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
					["cost"] = {{ "i", 101661, 1 }},	-- 1x Noodle Cart Kit
					["maps"] = { 439, 440, 441, 442 },	-- Stormstout Brewery
					["g"] = {
						r(145061),	-- Deluxe Noodle Cart Kit
					},
				}),
				q(33026, {	-- These Aren't Your Fatty Goatsteaks
					["sourceQuests"] = { 33024 },	-- Is That a Real Measurement?
					["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
					["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
					["cost"] = {{ "i", 101661, 1 }},	-- 1x Deluxe Noodle Cart Kit
				}),
				q(33027, {	-- The Secret Ingredient Is...
					["sourceQuests"] = { 33026 },	-- These Aren't Your Fatty Goatsteaks
					["provider"] = { "n", 64231 },	-- Sungshin Ironpaw
					["coord"] = { 53.6, 51.2, VALLEY_OF_THE_FOUR_WINDS },
					["g"] = {
						r(145062),	-- Pandaren Treasure Noodle Cart Kit
					},
				}),
			})),
		}),
	}))),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
		ach(9500),	-- Draenor Cook
		ach(9502, {	-- Draenor Cuisine
			crit(25933),	-- Blackrock Barbecue
			crit(25934),	-- Blackrock Ham
			crit(25935),	-- Braised Riverbeast
			crit(25936),	-- Calamari Crepes
			crit(25937),	-- Clefthoof Sausages
			crit(25938),	-- Fat Sleeper Cakes
			crit(25939),	-- Fiery Calamari
			crit(25940),	-- Frosty Stew
			crit(25941),	-- Gorgrond Chowder
			crit(25942),	-- Grilled Gulper
			crit(25943),	-- Grilled Saberfish
			crit(25944),	-- Hearty Elekk Steak
			crit(25945),	-- Pan-Seared Talbuk
			crit(25946),	-- Rylak Crepes
			crit(25947),	-- Saberfish Broth
			crit(25948),	-- Skulker Chowder
			crit(25949),	-- Sleeper Surprise
			crit(25950),	-- Steamed Scorpion
			crit(25951),	-- Sturgeon Stew
			crit(25952),	-- Talador Surf and Turf
		}),
		ach(9501, {	-- The Draenor Gourmet
			crit(25911, { ["provider"] = { "i", 111449 } } ),	-- Blackrock Barbecue
			crit(25912, { ["provider"] = { "i", 111433 } } ),	-- Blackrock Ham
			crit(25913, { ["provider"] = { "i", 111436 } } ),	-- Braised Riverbeast
			crit(25914, { ["provider"] = { "i", 111453 } } ),	-- Calamari Crepes
			crit(25915, { ["provider"] = { "i", 111438 } } ),	-- Clefthoof Sausages
			crit(25916, { ["provider"] = { "i", 111444 } } ),	-- Fat Sleeper Cakes
			crit(25917, { ["provider"] = { "i", 111457 } } ),	-- Feast of Blood
			crit(25918, { ["provider"] = { "i", 111458 } } ),	-- Feast of the Waters
			crit(25919, { ["provider"] = { "i", 111445 } } ),	-- Fiery Calamari
			crit(25920, { ["provider"] = { "i", 111450 } } ),	-- Frosty Stew
			crit(25921, { ["provider"] = { "i", 111454 } } ),	-- Gorgrond Chowder
			crit(25922, { ["provider"] = { "i", 111441 } } ),	-- Grilled Gulper
			crit(25923, { ["provider"] = { "i", 111456 } } ),	-- Grilled Saberfish
			crit(25924, { ["provider"] = { "i", 111431 } } ),	-- Hearty Elekk Steak
			crit(25925, { ["provider"] = { "i", 111434 } } ),	-- Pan-Seared Talbuk
			crit(25926, { ["provider"] = { "i", 111437 } } ),	-- Rylak Crepes
			crit(25927, { ["provider"] = { "i", 111455 } } ),	-- Saberfish Broth
			crit(25928, { ["provider"] = { "i", 111446 } } ),	-- Skulker Chowder
			crit(25929, { ["provider"] = { "i", 111452 } } ),	-- Sleeper Surprise
			crit(25930, { ["provider"] = { "i", 111439 } } ),	-- Steamed Scorpion
			crit(25931, { ["provider"] = { "i", 111442 } } ),	-- Sturgeon Stew
			crit(25932, { ["provider"] = { "i", 111447 } } ),	-- Talador Surf and Turf
		}),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(10589),	-- Legion Cook
			ach(10593, {	-- Everything Tastes Better
				["cost"] = {{"i", 133681, 6}},	-- 6x Crispy Bacon
			}),
			ach(10592, {	-- Never A Day's Rest
				["provider"] = { "n", 101846 },	-- Nomi
				["coords"] = {
					{ 69.8, 38.6, LEGION_DALARAN },
					{ 40.2, 65.8, LEGION_DALARAN },
				},
			}),
			ach(10762, {	-- The Legion Menu
				crit(31253, { ["provider"] = { "i", 133557 } } ),	-- Salt and Pepper Shank
				crit(31254, { ["provider"] = { "i", 133561 } } ),	-- Deep-Fried Mossgill
				crit(31255, { ["provider"] = { "i", 133562 } } ),	-- Pickled Stormray
				crit(31256, { ["provider"] = { "i", 133563 } } ),	-- Faronaar Fizz
				crit(31257, { ["provider"] = { "i", 133564 } } ),	-- Spiced Rib Roast
				crit(31258, { ["provider"] = { "i", 133565 } } ),	-- Leybeque Ribs
				crit(31259, { ["provider"] = { "i", 133566 } } ),	-- Suramar Surf and Turf
				crit(31260, { ["provider"] = { "i", 133567 } } ),	-- Barracuda Mrglgagh
				crit(31261, { ["provider"] = { "i", 133568 } } ),	-- Koi-Scented Stormray
				crit(31262, { ["provider"] = { "i", 133569 } } ),	-- Drogbar-Style Salmon
				crit(31263, { ["provider"] = { "i", 133570 } } ),	-- The Hungry Magister
				crit(31264, { ["provider"] = { "i", 133571 } } ),	-- Azshari Salad
				crit(31265, { ["provider"] = { "i", 133572 } } ),	-- Nightborne Delicacy Platter
				crit(31266, { ["provider"] = { "i", 133573 } } ),	-- Seed-Battered Fish Plate
				crit(31267, { ["provider"] = { "i", 133574 } } ),	-- Fishbrul Special
				crit(31268, { ["provider"] = { "i", 133575 } } ),	-- Dried Mackerel Strips
				crit(31269, { ["provider"] = { "i", 133576 } } ),	-- Bear Tartare
				crit(31270, { ["provider"] = { "i", 133577 } } ),	-- Fighter Chow
				crit(31271, { ["provider"] = { "i", 133578 } } ),	-- Hearty Feast
				crit(31272, { ["provider"] = { "i", 133579 } } ),	-- Lavish Suramar Feast
				crit(31273, { ["provider"] = { "i", 133681 } } ),	-- Crispy Bacon
			}),
		}),
		n(QUESTS, {
			q(40990, {	-- A Good Recipe List
				["sourceQuests"] = {
					40988,	-- Too Many Cooks
					40989,	-- The Prodigal Sous Chef
				},
				["coord"] = { 69.8, 38.8, LEGION_DALARAN },
				["provider"] = { "n", 101846 },	-- Nomi
			}),
			q(40991, {	-- Opening the Test Kitchen
				["sourceQuests"] = { 40990 },	-- A Good Recipe List
				["provider"] = { "n", 101846 },	-- Nomi
				["g"] = {
					ach(10591),	-- All Grown Up
				},
			}),
			q(44581, {	-- Spicing Things Up
				["provider"] = { "n", 101846 },	-- Nomi
				["g"] = {
					i(133826),	-- Recipe: Dried Mackerel Strips [Rank 1] (RECIPE!)
				},
			}),
			q(40989, {	-- The Prodigal Sous Chef
				["description"] = "If you cooked with Nomi while questing in Pandaria, you will receive this quest instead of 'Too Many Chefs'.",
				["provider"] = { "n", 102546 },	-- Nomi
				["groups"] = {
					i(133826),	-- Recipe: Dried Mackerel Strips [Rank 1] (RECIPE!)
				},
			}),
			q(40988, {	-- Too Many Chefs
				["description"] = "If you did not cook with Nomi while questing in Pandaria, you will receive this quest instead of 'The Prodigal Sous Chef'.",
				["provider"] = { "n", 102546 },	-- Nomi
				["groups"] = {
					i(133826),	-- Recipe: Dried Mackerel Strips [Rank 1] (RECIPE!)
				},
			}),
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(12742, {	-- Kul Tiran Cook [A]
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12743, {	-- Zandalari Cook [H]
				["races"] = HORDE_ONLY,
			}),
			ach(12747, {	-- Catering for Combat
				["cost"] = {
					{ "i", 156525, 50 },	-- 50x Galley Banquet
					{ "i", 156526, 50 },	-- 50x Bountiful Captain's Feast
					-- #if AFTER 8.1.0
					{ "i", 166240, 50 },	-- 50x Sanguinated Feast
					-- #endif
					-- #if AFTER 8.2.0
					{ "i", 168315, 50 },	-- 50x Famine Evaluator And Snack Table
					-- #endif
				},
			}),
			ach(12744, {	-- The Kul Tiran Menu
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					crit(40770, { ["provider"] = { "i", 156526 } } ),	-- Bountiful Captain's Feast
					crit(40773, { ["provider"] = { "i", 156525 } } ),	-- Galley Banquet
					crit(40776, { ["provider"] = { "i", 154889 } } ),	-- Grilled Catfish
					crit(40780, { ["provider"] = { "i", 154882 } } ),	-- Honey-Glazed Haunches
					crit(40783, { ["provider"] = { "i", 154881 } } ),	-- Kul Tiramisu
					crit(40786, { ["provider"] = { "i", 154887 } } ),	-- Loa Loaf
					crit(40789, { ["provider"] = { "i", 154885 } } ),	-- Mon'Dazi
					crit(40792, { ["provider"] = { "i", 154883 } } ),	-- Ravenberry Tarts
					crit(40795, { ["provider"] = { "i", 154888 } } ),	-- Sailor's Pie
					crit(40798, { ["provider"] = { "i", 154891 } } ),	-- Seasoned Loins
					crit(40801, { ["provider"] = { "i", 154886 } } ),	-- Spiced Snapper
					crit(40804, { ["provider"] = { "i", 154884 } } ),	-- Swamp Fish 'n Chips
				},
			}),
			ach(12746, {	-- The Zandalari Menu
				["races"] = HORDE_ONLY,
				["g"] = {
					crit(40770, { ["provider"] = { "i", 156526 } } ),	-- Bountiful Captain's Feast
					crit(40773, { ["provider"] = { "i", 156525 } } ),	-- Galley Banquet
					crit(40776, { ["provider"] = { "i", 154889 } } ),	-- Grilled Catfish
					crit(40780, { ["provider"] = { "i", 154882 } } ),	-- Honey-Glazed Haunches
					crit(40783, { ["provider"] = { "i", 154881 } } ),	-- Kul Tiramisu
					crit(40786, { ["provider"] = { "i", 154887 } } ),	-- Loa Loaf
					crit(40789, { ["provider"] = { "i", 154885 } } ),	-- Mon'Dazi
					crit(40792, { ["provider"] = { "i", 154883 } } ),	-- Ravenberry Tarts
					crit(40795, { ["provider"] = { "i", 154888 } } ),	-- Sailor's Pie
					crit(40798, { ["provider"] = { "i", 154891 } } ),	-- Seasoned Loins
					crit(40801, { ["provider"] = { "i", 154886 } } ),	-- Spiced Snapper
					crit(40804, { ["provider"] = { "i", 154884 } } ),	-- Swamp Fish 'n Chips
				},
			}),
		}),
		n(QUESTS, {
			q(54469, {	-- Fresh Dishes (A)
				["provider"] = { "n", 136052 },	-- "Cap'n" Byron Mehlsack <Cooking Trainer>
				["coord"] = { 71.2, 10.8, BORALUS },
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
			}),
			q(54470, {	-- Fresh Dishes [H]
				["provider"] = { "n", 141549 },	-- T'sarah the Royal Chef <Cooking Trainer>
				["coord"] = { 28.5, 50.0, HALL_OF_CHRONICLERS },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_0, REMOVED_9_0_1 },	-- Might no be correct removed patch
			}),
		}),
	})),
	expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
		ach(14332),	-- Shadowlands Cook
	})),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(16631),	-- Dragon Isles Cook
			ach(17736, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- The Gift of Cheese
				["cost"] = {{ "i", 204848, 50 }},	-- 50x Charitable Cheddar
				["g"] = {
					i(204894, {	-- Roland (PET!)
						["description"] = "Roland will also teach your alts the recipes for Deviously Deviled Eggs and Charitable Cheddar, if you learned the recipes via the original source.",
						["groups"] = {
							r(407100),	-- Charitable Cheddar
							r(403018),	-- Deviously Deviled Eggs
						},
					}),
				},
			})),
		}),
		n(QUESTS, {
			q(72251, {	-- Dragon Isles Cooking
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Cooking.",
				["provider"] = { "n", 193121 },	-- Head Chef Stacks
				["coord"] = { 47.1, 82.7, THE_WAKING_SHORES },
				["lockCriteria"] = { 1, "spellID", 366256 },	-- Dragon Isles Cooking
			}),
			q(72250, {	-- Dragon Isles Cooking
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Cooking.",
				["provider"] = { "n", 198094 },	-- Head Chef Stacks
				["coord"] = { 76.4, 35.7, THE_WAKING_SHORES },
				["lockCriteria"] = { 1, "spellID", 366256 },	-- Dragon Isles Cooking
			}),
		}),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(ACHIEVEMENTS, {
			ach(19414),	-- Algari Cook
		}),
	})),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	n(PROFESSIONS, {
		prof(COOKING, {
			q(45341),	-- Tracking Quest - after obtaining the Chef's Hat toy (itemID 134020)
		}),
	}),
})));