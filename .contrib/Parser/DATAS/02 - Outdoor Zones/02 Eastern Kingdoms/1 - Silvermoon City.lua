---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local REDEMPTION = recipe(7328);	-- Redemption
local SUMMON_VOIDWALKER = recipe(697);	-- Summon Voidwalker
local ANDRA_ZYANDREL_GROUPS, QUELIS_GROUPS = {}, {};
local LYNA_GROUPS = {
	i(22565, {	-- Formula: Large Prismatic Shard (RECIPE!)
		["isLimited"] = true,
	}),
	i(22562, {	-- Formula: Superior Mana Oil (RECIPE!)
		["isLimited"] = true,
	}),
	i(22563, {	-- Formula: Superior Wizard Oil (RECIPE!)
		["isLimited"] = true,
	}),
};

root(ROOTS.Zones, m(EASTERN_KINGDOMS, applyclassicphase(TBC_PHASE_ONE, {
	m(SILVERMOON_CITY, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
		["lore"] = "Silvermoon City is the capital city of the blood elves. It is located in Eversong Woods, next to the tainted Dead Scar.",
		["icon"] = 255136,
		["isRaid"] = true,
		["groups"] = {
			battlepets({
				["sym"] = {{"select","speciesID",
					459,	-- Cat (PET!)
					385,	-- Mouse (PET!)
					378,	-- Rabbit (PET!)
				}},
			}),
			n(FACTIONS, {
				faction(FACTION_SILVERMOON_CITY, {	-- Silvermoon City
					-- #if AFTER CATA
					["provider"] = { "i", 45585 },	-- Silvermoon City Tabard
					-- #endif
					["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
					["races"] = HORDE_ONLY,
				}),
			}),
			-- #if BEFORE CATA
			n(PROFESSIONS, {
				prof(JEWELCRAFTING, {
					n(19775, {	-- Kalinda <Jewelcrafting Trainer>
						["coord"] = { 90.6, 73.8, SILVERMOON_CITY },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_JEWELCRAFTING,
					}),
				}),
			}),
			-- #endif
			n(QUESTS, {
				q(9725, {	-- A Demonstration of Loyalty
					["sourceQuest"] = 9723,	-- A Gesture of Commitment
					["qg"] = 25223,	-- Lord Solanar Bloodwrath
					["coord"] = { 92.0, 38.8, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { EASTERN_PLAGUELANDS },
					["races"] = { BLOODELF },
					["classes"] = { PALADIN },
					["lvl"] = lvlsquish(60, 60, 1),
					["groups"] = {
						objective(1, {	-- 0/15 Scourge Siege Engineer slain
							["provider"] = { "n", 17878 },	-- Scourge Siege Engineer
							["coord"] = { 55.8, 16.8, EASTERN_PLAGUELANDS },
						}),
						objective(2, {	-- 0/3 Scourge Meat Wagon destroyed
							["provider"] = { "o", 182058 },	-- Scourge Meat Wagon
							["coord"] = { 56.3, 17.3, EASTERN_PLAGUELANDS },
						}),
					},
				}),
				q(10372, {	-- A Discreet Inquiry
					["qg"] = 16684,	-- Zelanis <Rogue Trainer>
					["coord"] = { 79.7, 52.2, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { GHOSTLANDS },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(16, 16, 1),
				}),
				q(10361, {	-- A Donation of Mageweave
					["qg"] = 20612,	-- Sorim Lightsong
					["coord"] = { 56.6, 52.5, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3},
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(10362, {	-- A Donation of Runecloth
					["qg"] = 20612,	-- Sorim Lightsong
					["coord"] = { 56.6, 52.5, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3},
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(10360, {	-- A Donation of Silk
					["qg"] = 20612,	-- Sorim Lightsong
					["coord"] = { 56.6, 52.5, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3},
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(10359, {	-- A Donation of Wool
					["qg"] = 20612,	-- Sorim Lightsong
					["coord"] = { 56.6, 52.5, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3},
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(9723, {	-- A Gesture of Commitment
					["sourceQuest"] = 9722,	-- The Master's Path
					["providers"] = {
						{ "n", 25223 },	-- Lord Solanar Bloodwrath
						{ "i", 24277 },	-- Items for Magister Astalor Bloodsworn
					},
					["coord"] = { 92.0, 38.8, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 14047, 40 },	-- Runecloth
						{ "i", 8838, 10 },	-- Sungrass
						{ "i", 12360, 6 },	-- Arcanite Bar
						{ "i", 20520, 5 },	-- Dark Rune
						{ "g", 1500000 },	-- 150g
					},
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(60, 60, 1),
				}),
				q(9681, {	-- A Study in Power
					["sourceQuest"] = 9678,	-- The First Trial
					["qg"] = 17717,	-- Knight-Lord Bloodvalor
					["coord"] = { 89.3, 35.2, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(12, 12, 1),
				}),
				q(9721, {	-- A Summons from Lord Solanar
					["qg"] = 17717,	-- Knight-Lord Bloodvalor
					["coord"] = { 89.3, 35.2, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(60, 60, 1),
				}),
				q(10363, {	-- Additional Runecloth
					["sourceQuest"] = 10362,	-- A Donation of Runecloth
					["qg"] = 20612,	-- Sorim Lightsong
					["coord"] = { 56.6, 52.5, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3},
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(9627, {	-- Allegiance to the Horde [Blood Elf Only]
					["sourceQuest"] = 9626,	-- Meeting the Orcs
					["qgs"] = {
						-- #if AFTER LEGION
						14720,	-- High Overlord Saurfang
						-- #elseif AFTER WOD
						86832,	-- Vol'jin <Warchief>
						-- #elseif AFTER CATA
						39605,	-- Garrosh Hellscream <Warchief>
						-- #else
						4949,	-- Thrall <Warchief>
						-- #endif
					},
					["coords"] = {
						-- #if AFTER LEGION
						{ 48.6, 71.0, ORGRIMMAR },	-- High Overlord Saurfang
						-- #elseif AFTER WOD
						{ 48.2, 70.6, ORGRIMMAR },	-- Vol'jin <Warchief>
						-- #elseif AFTER CATA
						{ 48.2, 70.6, ORGRIMMAR },	-- Garrosh Hellscream <Warchief>
						-- #else
						{ 31.6, 37.8, ORGRIMMAR },	-- Thrall <Warchief>
						-- #endif
					},
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(15, 15, 1),
				}),
				q(9684, bubbleDown({ ["timeline"] = { REMOVED_4_0_3 } }, {	-- Claiming the Light
					["sourceQuest"] = 9681,	-- A Study in Power
					["qg"] = 17718,	-- Magister Astalor Bloodsworn
					["coord"] = { 89.3, 35.2, SILVERMOON_CITY },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(12, 12, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Filled Shimmering Vessel
							["providers"] = {
								{ "i", 24156 },	-- Filled Shimmering Vessel
								{ "i", 24157 },	-- Shimmering Vessel
							},
							["coord"] = { 92.1, 36.2, SILVERMOON_CITY },
							["cr"] = 17544,	-- M'uru
						}),
					},
				})),
				q(9621, {	-- Envoy to the Horde [Blood Elf Only]
					["sourceQuest"] = 9328,	-- Hero of the Sin'dorei
					["providers"] = {
						{ "n", 16802 },	-- Lor'themar Theron
						{ "i", 23929 },	-- Letter from Lor'themar Theron
					},
					["coord"] = { 54.0, 20.4, SILVERMOON_CITY },
					["maps"] = { UNDERCITY },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(15, 15, 1),
				}),
				q(9812, {	-- Envoy to the Horde [Non-Blood Elf Only]
					["sourceQuest"] = 9811,	-- Friend of the Sin'dorei
					["providers"] = {
						{ "n", 16802 },	-- Lor'themar Theron
						{ "i", 23929 },	-- Letter from Lor'themar Theron
					},
					["coord"] = { 54.0, 20.4, SILVERMOON_CITY },
					["maps"] = { UNDERCITY },
					["races"] = exclude(BLOODELF, HORDE_ONLY),
					["lvl"] = lvlsquish(15, 15, 1),
				}),
				q(9707, {	-- Forging the Weapon
					["sourceQuest"] = 9692,	-- The Path of the Adept
					["providers"] = {
						{ "n", 17717 },	-- Knight-Lord Bloodvalor
						{ "i", 24239 },	-- Crate of Materials
					},
					["coord"] = { 89.3, 35.2, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(20, 20, 1),
				}),
				q(9626, {	-- Meeting the Orcs [Blood Elf Only]
					["sourceQuest"] = 9621,	-- Envoy to the Horde [Blood Elf Only]
					["providers"] = {
						{ "n", 10181 },	-- Lady Sylvanas Windrunner <Warchief>
						{ "i", 23930 },	-- Letter Sealed by Sylvanas
					},
					["coord"] = { 57.8, 91.6, UNDERCITY },
					["maps"] = { ORGRIMMAR },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(15, 15, 1),
				}),
				q(9813, {	-- Meeting the Orcs [Non-Blood Elf Only]
					["sourceQuest"] = 9812,	-- Envoy to the Horde [Non-Blood Elf Only]
					["providers"] = {
						{ "n", 10181 },	-- Lady Sylvanas Windrunner <Warchief>
						{ "i", 23930 },	-- Letter Sealed by Sylvanas
					},
					["coord"] = { 57.8, 91.6, UNDERCITY },
					["maps"] = { ORGRIMMAR },
					["races"] = exclude(BLOODELF, HORDE_ONLY),
					["lvl"] = lvlsquish(15, 15, 1),
				}),
				q(9685, {	-- Redeeming the Dead
					["sourceQuest"] = 9684,	-- Claiming the Light
					["qg"] = 17717,	-- Knight-Lord Bloodvalor
					["coord"] = { 89.3, 35.2, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(12, 12, 1),
					["groups"] = {
						objective(1, {	-- Resurrect Sangrias Stillblade
							["providers"] = {
								{ "n", 17768 },	-- Blood Knight Stillblade
								{ "i", 24184 },	-- Filled Shimmering Vessel
							},
							["coord"] = { 80.4, 59.2, SILVERMOON_CITY },
						}),
						-- #if BEFORE CATA
						REDEMPTION,
						-- #endif
					},
				}),
				q(10788, {	-- Return to Talionia
					["qgs"] = {
						5875,	-- Gan'rul Bloodeye
						5675,	-- Carendin Halgar
					},
					["coords"] = {
						{ 48.2, 45.3, ORGRIMMAR },	-- Gan'rul Bloodeye
						{ 85.1, 26.0, UNDERCITY },	-- Carendin Halgar
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { BLOODELF },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				-- #if BEFORE WRATH
				-- Before Wrath, this quest chain was in the Ghostlands and has a higher level requirement.
				q(9134, {	-- Skymistress Gloaming
					["sourceQuest"] = 9133,	-- Fly to Silvermoon City
					["providers"] = {
						{ "n", 16191 },	-- Sathren Azuredawn
						{ "i", 22550 },	-- Quartermaster Lymel's Goods
					},
					["coord"] = { 53.9, 71.0, SILVERMOON_CITY },
					["maps"] = { EVERSONG_WOODS },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				-- #else
				q(9134, {	-- Skymistress Gloaming
					["sourceQuest"] = 9133,	-- Fly to Silvermoon City
					["providers"] = {
						{ "n", 16191 },	-- Sathren Azuredawn
						{ "i", 22550 },	-- Sathiel's Goods
					},
					["coord"] = { 53.9, 71.0, SILVERMOON_CITY },
					["maps"] = { EVERSONG_WOODS },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(5, 5, 1),
				}),
				-- #endif
				q(9710, {	-- The Blood-Tempered Ranseur
					["sourceQuest"] = 9707,	-- Forging the Weapon
					["qg"] = 16669,	-- Bemarrin
					["coord"] = { 79.4, 38.6, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(20, 20, 1),
					["groups"] = {
						i(25464, {	-- Blood-Tempered Ranseur
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(9678, {	-- The First Trial
					["sourceQuest"] = 9677,	-- Summons from Knight-Lord Bloodvalor
					["qg"] = 17717,	-- Knight-Lord Bloodvalor
					["coord"] = { 89.3, 35.2, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { GHOSTLANDS },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(12, 12, 1),
					["groups"] = {
						objective(1, {	-- Undergo the First Trial
							["provider"] = { "n", 17716 },	-- Sangrias Stillblade <Blood Knight>
							["coord"] = { 68.4, 8.6, GHOSTLANDS },
						}),
					},
				}),
				q(9722, {	-- The Master's Path
					["sourceQuest"] = 9721,	-- A Summons from Lord Solanar
					["qg"] = 25223,	-- Lord Solanar Bloodwrath
					["coord"] = { 92.0, 38.8, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(60, 60, 1),
				}),
				q(9692, {	-- The Path of the Adept
					["sourceQuest"] = 9691,	-- Return to Silvermoon
					["qg"] = 17717,	-- Knight-Lord Bloodvalor
					["coord"] = { 89.3, 35.2, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BLACKFATHOM_DEEPS, GHOSTLANDS, RAGEFIRE_CHASM, SHADOWFANG_KEEP },
					["cost"] = { { "i", 24223, 1 } },	-- Bloodvalor's Notes
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(20, 20, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Corrupted Kor Gem
							["provider"] = { "i", 6995 },	-- Corrupted Kor Gem
							["crs"] = {
								4803,	-- Blackfathom Oracle
								4805,	-- Blackfathom Sea Witch
								4802,	-- Blackfathom Tide Priestess
							},
						}),
						objective(2, {	-- 0/1 Crate of Bloodforged Ingots
							["providers"] = {
								{ "i",  24224 },	-- Crate of Bloodforged Ingots
								{ "o", 182011 },	-- Crate of Ingots
							},
						}),
						objective(3, {	-- 0/1 Blood of the Wrathful
							["providers"] = {
								{ "i",  24225 },	-- Blood of the Wrathful
								{ "o", 182024 },	-- Blood Filled Orb
							},
							["cr"] = 17830,	-- Zelemar the Wrathful
						}),
						objective(4, {	-- 0/1 Blood Knight Insignia
							["provider"] = { "i", 24226 },	-- Blood Knight Insignia
							["coord"] = { 34.8, 81.8, GHOSTLANDS },
							["cr"] = 17832,	-- Blood Knight Dawnstar
						}),
					},
				}),
				q(9619, {	-- The Rune of Summoning
					["sourceQuest"] = 9529,	-- The Stone
					["provider"] = { "o", 181698 },	-- Voidstone
					["coord"] = { 42.6, 15.7, GHOSTLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { BLOODELF },
					["classes"] = { WARLOCK },
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- Summoned Voidwalker slain
							["provider"] = { "i", 23732 },	-- Voidstone
							["cr"] = 5676,	-- Summoned Voidwalker
							["coord"] = { 26.0, 15.0, GHOSTLANDS },
						}),
						-- #if BEFORE CATA
						SUMMON_VOIDWALKER,
						-- #endif
					},
				}),
				q(9690, {	-- The Second Trial (1/2)
					["qg"] = 17717,	-- Knight-Lord Bloodvalor
					["coord"] = { 89.3, 35.2, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(20, 20, 1),
				}),
				q(9529, {	-- The Stone
					["sourceQuest"] = 10788,	-- Return to Talionia
					["qg"] = 16647,	-- Talionia <Warlock Trainer>
					["coord"] = { 74.4, 47.2, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { GHOSTLANDS },
					["races"] = { BLOODELF },
					["classes"] = { WARLOCK },
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(9735, {	-- True Masters of the Light (1/3)
					["sourceQuest"] = 9725,	-- A Demonstration of Loyalty
					["qg"] = 25223,	-- Lord Solanar Bloodwrath
					["coord"] = { 92.0, 38.8, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { EASTERN_PLAGUELANDS },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(60, 60, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Tyr's Hand Holy Water
							["providers"] = {
								{ "i",  24284 },	-- Tyr's Hand Holy Water
								{ "o", 182063 },	-- Basin of Holy Water
							},
							["coord"] = { 83.6, 77.6, EASTERN_PLAGUELANDS },
						}),
					},
				}),
				q(9736, {	-- True Masters of the Light (2/3)
					["sourceQuest"] = 9735,	-- True Masters of the Light (1/3)
					["qg"] = 25223,	-- Lord Solanar Bloodwrath
					["coord"] = { 92.0, 38.8, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 12800, 1 },	-- Azerothian Diamond
						{ "i", 18335, 1 },	-- Pristine Black Diamond
					},
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(60, 60, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Arcane Catalyst
							["provider"] = { "i", 24286 },	-- Arcane Catalyst
							["coord"] = { 54.5, 72.0, SILVERMOON_CITY },
							["cost"] = 500000,	-- 50g
							["cr"] = 16611,	-- Zalle <Reagents>
						}),
						objective(2, {	-- 0/1 Crepuscular Powder
							["provider"] = { "i", 24285 },	-- Crepuscular Powder
							["coord"] = { 80.4, 51.0, SILVERMOON_CITY },
							["cost"] = 1500000,	-- 150g
							["cr"] = 16683,	-- Darlia <Poison Supplies>
						}),
					},
				}),
				q(9737, {	-- True Masters of the Light (3/3)
					["sourceQuest"] = 9736,	-- True Masters of the Light (2/3)
					["qg"] = 25223,	-- Lord Solanar Bloodwrath
					["coord"] = { 92.0, 38.8, SILVERMOON_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRATHOLME },
					["classes"] = { PALADIN },
					["races"] = { BLOODELF },
					["lvl"] = lvlsquish(60, 60, 1),
					["groups"] = {
						objective(1, {	-- Remove Alonsus Chapel Protection
							["provider"] = { "i", 24287 },	-- Extinguishing Mixture
							["crs"] = {
								17910,	-- Gregor the Justiciar <Order of the Silver Hand>
								17914,	-- Vicar Hieronymus <Order of the Silver Hand>
								17913,	-- Aelmar the Vanquisher <Order of the Silver Hand>
								17912,	-- Nemas the Arbiter <Order of the Silver Hand>
								17911,	-- Cathela the Seeker <Order of the Silver Hand>
							},
						}),
						i(25549),	-- Blood Knight Tabard
						mount(34767, {	-- Thalassian Charger (MOUNT!)
							["classes"] = { PALADIN },
							["races"] = { BLOODELF },
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(16631, {	-- Andra <Clothier>
					["coord"] = { 65.2, 47.2, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						16059,	-- Common Brown Shirt
						3428,	-- Common Gray Shirt
						16060,	-- Common White Shirt
						837,	-- Heavy Weave Armor
						3589,	-- Heavy Weave Belt
						3590,	-- Heavy Weave Bracers
						839,	-- Heavy Weave Gloves
						838,	-- Heavy Weave Pants
						840,	-- Heavy Weave Shoes
					}},
				}),
				n(16619, {	-- Celana
					["coord"] = { 86.0, 36.6, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						3027,	-- Heavy Recurve Bow
						2507,	-- Laminated Recurve Bow
						3026,	-- Reinforced Bow
						2504,	-- Worn Shortbow
					}},
					["groups"] = {
						i(2506),	-- Hornwood Recurve Bow
						i(2505),	-- Polished Shortbow
					},
				}),
				n(16683, {	-- Darlia <Poison Supplies>
					["coord"] = { 80.4, 51.0, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					-- #if AFTER MOP
					["sym"] = {{"select","itemID",
						4565,	-- Simple Dagger
					}},
					-- #endif
				}),
				n(16638, {	-- Deynna <Tailoring Supplies>
					["coord"] = { 56.0, 51.8, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					-- #if AFTER CATA
					["sym"] = {{ "sub", "common_vendor", 5154 }},	-- Poranna Snowbraid <Tailoring Supplies>
					-- #endif
					["groups"] = {
						i(21892),	-- Pattern: Bolt of Imbued Netherweave (RECIPE!)
						i(21894, {	-- Pattern: Bolt of Soulcloth (RECIPE!)
							["isLimited"] = true,
						}),
						i(21896),	-- Pattern: Netherweave Robe (RECIPE!)
						i(21897),	-- Pattern: Netherweave Tunic (RECIPE!)
					},
				}),
				n(16670, {	-- Eriden <Blacksmithing Supplies>
					["coord"] = { 80.6, 37.0, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					-- #if AFTER CATA
					["sym"] = {{"sub", "common_recipes_vendor", 46359}},	-- Punra <Blacksmithing Supplies>
					-- #endif
					["groups"] = {
						i(23591, {	-- Plans: Adamantite Cleaver (RECIPE!)
							["isLimited"] = true,
						}),
						i(23592, {	-- Plans: Adamantite Dagger (RECIPE!)
							["isLimited"] = true,
						}),
						i(23590, {	-- Plans: Adamantite Maul (RECIPE!)
							["isLimited"] = true,
						}),
						i(23593, {	-- Plans: Adamantite Rapier (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(16666, {	-- Feledis <Axe Vendor>
					["coord"] = { 52.6, 63.6, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2523,	-- Bullova
						2522,	-- Crescent Axe
						2530,	-- Francisca
						2531,	-- Great Axe
					}},
				}),
				n(16624, {	-- Gelanthis <Jewelcrafting Supplies>
					["coord"] = { 90.8, 73.6, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {
						-- #if AFTER CATA
						{ "sub", "common_recipes_vendor", 50482 },	-- Marith Lazuria <Jewelcrafting Supplies>
						-- #endif
						{ "select","itemID",
							7341,	-- Cubic Zirconia Ring
							7340,	-- Flawless Diamond Solitaire
							7339,	-- Miniscule Diamond Ring
							7338,	-- Mood Ring
							7342,	-- Silver Piffeny Band
							7337,	-- The Rock
						},
					},
					["groups"] = {
						i(20854, {	-- Design: Amulet of the Moon (RECIPE!)
							["isLimited"] = true,
						}),
						i(20856, {	-- Design: Heavy Golden Necklace of Battle (RECIPE!)
							["isLimited"] = true,
						}),
						i(21948, {	-- Design: Opal Necklace of Impact (RECIPE!)
							["isLimited"] = true,
						}),
						i(20975, {	-- Design: The Jade Eye (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(17630, {	-- Innkeeper Jovia <Innkeeper>
					["coord"] = { 67.85, 72.9, SILVERMOON_CITY },	-- Wayfarer's Rest
					["races"] = HORDE_ONLY,
				}),
				n(16625, {	-- Keeli
					["coord"] = { 61.2, 86.4, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						847,	-- Chainmail Armor
						1845,	-- Chainmail Belt
						849,	-- Chainmail Boots
						1846,	-- Chainmail Bracers
						850,	-- Chainmail Gloves
						848,	-- Chainmail Pants
						2398,	-- Light Chain Armor
						2399,	-- Light Chain Belt
						2401,	-- Light Chain Boots
						2402,	-- Light Chain Bracers
						2403,	-- Light Chain Gloves
						2400,	-- Light Chain Leggings
						1853,	-- Scalemail Belt
						287,	-- Scalemail Boots
						1852,	-- Scalemail Bracers
						718,	-- Scalemail Gloves
						286,	-- Scalemail Pants
						285,	-- Scalemail Vest
					}},
				}),
				n(16610, {	-- Kredis <Tabard Vendor>
					["coord"] = { 78.6, 84.6, SILVERMOON_CITY },
					["sym"] = {{"sub", "common_vendor", 5188}},	-- Garyl <Tabard Vendor>
					["races"] = HORDE_ONLY,
				}),
				n(16635, {	-- Lyna <Enchanting Supplies>
					["coord"] = { 70.0, 24.6, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {
						-- #if AFTER CATA
						{"sub", "common_recipes_vendor", 3346},	-- Kithas <Enchanting Supplies>
						-- #endif
						{ "select","itemID",
							20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
							20752,	-- Formula: Minor Mana Oil (RECIPE!)
							20758,	-- Formula: Minor Wizard Oil (RECIPE!)
							-- #if BEFORE CATA
							6342,	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
							-- #endif
							22307,	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
						},
					},
					["groups"] = appendGroups(LYNA_GROUPS, {}),
				}),
				n(16620, {	-- Mathaleron
					["coord"] = { 86.0, 39.6, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						3024,	-- BKP 2700 "Enforcer"
						2511,	-- Hunter's Boomstick
						3023,	-- Large Bore Blunderbuss
						2509,	-- Ornate Blunderbuss
					}},
				}),
				n(16641, {	-- Melaris <Alchemy Supplies>
					["coord"] = { 67.0, 19.2, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["groups"] = sharedData({["isLimited"] = true}, {
						i(22900),	-- Recipe: Elixir of Camouflage (RECIPE!)
						i(23574),	-- Recipe: Transmute Primal Might (RECIPE!)
					}),
				}),
				n(16691, {	-- Noraelath
					["coord"] = { 55.6, 62.6, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2371,	-- Battered Leather Belt
						2373,	-- Battered Leather Boots
						2374,	-- Battered Leather Bracers
						2375,	-- Battered Leather Gloves
						2370,	-- Battered Leather Harness
						2372,	-- Battered Leather Pants
						236,	-- Cured Leather Armor
						1849,	-- Cured Leather Belt
						238,	-- Cured Leather Boots
						1850,	-- Cured Leather Bracers
						239,	-- Cured Leather Gloves
						237,	-- Cured Leather Pants
						1843,	-- Tanned Leather Belt
						843,	-- Tanned Leather Boots
						1844,	-- Tanned Leather Bracers
						844,	-- Tanned Leather Gloves
						846,	-- Tanned Leather Jerkin
						845,	-- Tanned Leather Pants
					}},
				}),
				n(16677, {	-- Quelis <Cooking Supplies>
					["coord"] = { 69.6, 71.2, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(QUELIS_GROUPS, {}),
				}),
				n(16678, {	-- Rahein <Blade Vendor>
					["coord"] = { 52.6, 64.6, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2520,	-- Broadsword
						2528,	-- Falchion
						2521,	-- Flamberge
						2526,	-- Main Gauche
						2534,	-- Rondel
						2529,	-- Zweihander
					}},
				}),
				n(16626, {	-- Tynna
					["coord"] = { 60.8, 86.6, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2451,	-- Crested Heater Shield
						17190,	-- Ornate Buckler
					}},
					["groups"] = {
						i(2424),	-- Brigandine Belt
						i(2426),	-- Brigandine Boots
						i(2427),	-- Brigandine Bracers
						i(2428),	-- Brigandine Gloves
						i(3894),	-- Brigandine Helm
						i(2425),	-- Brigandine Leggings
						i(2423),	-- Brigandine Vest
						i(8094),	-- Platemail Armor
						i(8088),	-- Platemail Belt
						i(8089),	-- Platemail Boots
						i(8090),	-- Platemail Bracers
						i(8091),	-- Platemail Gloves
						i(8092),	-- Platemail Helm
						i(8093),	-- Platemail Leggings
					},
				}),
				n(16442, {	-- Vinemaster Suntouched <Wine & Spirits Merchant>
					["coord"] = { 79.5, 58.5, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
				}),
				n(16637, {	-- Welethelon
					["coord"] = { 56.2, 60.2, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2527,	-- Battle Staff
						2525,	-- War Hammer
						2533,	-- War Maul
						2535,	-- War Staff
					}},
					["groups"] = {
						i(2532),	-- Morning Star
						i(2524),	-- Truncheon
					},
				}),
				n(16693, {	-- Winthren
					["coord"] = { 60.6, 86.6, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						17187,	-- Banded Buckler
						2446,	-- Kite Shield
						2445,	-- Large Metal Shield
						2398,	-- Light Chain Armor
						2399,	-- Light Chain Belt
						2401,	-- Light Chain Boots
						2402,	-- Light Chain Bracers
						2403,	-- Light Chain Gloves
						2400,	-- Light Chain Leggings
						17192,	-- Reinforced Targe
						17188,	-- Ringed Buckler
						1202,	-- Wall Shield
					}},
					["groups"] = {
						i(17183),	-- Dented Buckler
						i(1200),	-- Large Wooden Shield
						i(17185),	-- Round Buckler
						i(2376),	-- Worn Heater Shield
					},
				}),
				n(16782, {	-- Yatheon <Engineering Supplies>
					["coord"] = { 75.8, 40.6, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(23799, {	-- Schematic: Adamantite Rifle (RECIPE!)
							["isLimited"] = true,
						}),
						applyclassicphase(TBC_PHASE_TWO, i(23815, {	-- Schematic: Adamantite Shell Machine (RECIPE!)
							["timeline"] = { REMOVED_4_0_1 },
							["isLimited"] = true,
						})),
						i(23816, {	-- Schematic: Fel Iron Toolbox (RECIPE!)
							["isLimited"] = true,
						}),
						i(23811, {	-- Schematic: White Smoke Flare (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(30710, {	-- Zantasia <Inscription Trainer>
					["coord"] = { 69.6, 23.6, SILVERMOON_CITY },
					["timeline"] = { ADDED_3_0_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(137789, {	-- Technique: Songs of the Legion (RECIPE!)
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				n(16689, {	-- Zaralda <Leatherworking Supplies>
					["coord"] = { 84.6, 78.8, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = { {"sub", "common_vendor", 5565} },	-- Jillian Tanner <Leatherworking Supplies>
					["groups"] = {
						i(25726, {	-- Pattern: Comfortable Insoles (RECIPE!)
							["isLimited"] = true,
						}),
						i(25720, {	-- Pattern: Heavy Knothide Leather (RECIPE!)
							["timeline"] = { REMOVED_3_2_0},
							["requireSkill"] = LEATHERWORKING,
							["isLimited"] = true,
							["f"] = RECIPES,
						}),
					},
				}),
				n(16636, {	-- Zathanna
					["coord"] = { 69.8, 65.8, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						5239,	-- Blackbone Wand
						5210,	-- Burning Wand
						5236,	-- Combustible Wand
						5211,	-- Dusk Wand
						5209,	-- Gloom Wand
						5347,	-- Pestilent Wand
						5238,	-- Pitchwood Wand
						5208,	-- Smoldering Wand
					}},
				}),
				n(16664, {	-- Zelan <Mining Supplies>
					["coord"] = { 78.45, 42.55, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{ "sub", "common_vendor", 4599 }},	-- Sarah Killan <Mining Supplies>
				}),
				n(16623, {	-- Zyandrel <Cloth Armor Merchant>
					["coord"] = { 64.8, 48.6, SILVERMOON_CITY },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						16059,	-- Common Brown Shirt
						3428,	-- Common Gray Shirt
						16060,	-- Common White Shirt
						837,	-- Heavy Weave Armor
						3589,	-- Heavy Weave Belt
						3590,	-- Heavy Weave Bracers
						839,	-- Heavy Weave Gloves
						838,	-- Heavy Weave Pants
						840,	-- Heavy Weave Shoes
						3597,	-- Thick Cloth Belt
						3598,	-- Thick Cloth Bracers
						203,	-- Thick Cloth Gloves
						201,	-- Thick Cloth Pants
						202,	-- Thick Cloth Shoes
						200,	-- Thick Cloth Vest
						3606,	-- Woven Belt
						2367,	-- Woven Boots
						3607,	-- Woven Bracers
						2369,	-- Woven Gloves
						2366,	-- Woven Pants
						2364,	-- Woven Vest
					}},
				}),
			}),
			-- #if NOT ANYCLASSIC
			-- CRIEVE NOTE: I'm going to solve this a different way eventually.
			o(207325, {	-- Warchief's Command Board
				["coord"] = { 62.5, 60.5, SILVERMOON_CITY },
				["timeline"] = { ADDED_4_0_1 },
				["sym"] = WARCHIEFS_COMMAND_BOARD_SYMLINK,
				["races"] = HORDE_ONLY,
				["skipFill"] = true,
			}),
			-- #endif
		},
	})),
})));

-- Remove the phase requirement from Redemption.
REDEMPTION.u = nil;
SUMMON_VOIDWALKER.u = nil;

-- Add in items that aren't supposed to be marked with a phase release.
for i,o in ipairs({
	i(16059),	-- Common Brown Shirt
	i(3428),	-- Common Gray Shirt
	i(16060),	-- Common White Shirt
}) do table.insert(ANDRA_ZYANDREL_GROUPS, o); end
for i,o in ipairs({
	i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
	i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
}) do table.insert(QUELIS_GROUPS, o); end
for i,o in ipairs({
	i(20753),	-- Formula: Lesser Wizard Oil (RECIPE!)
	i(20752),	-- Formula: Minor Mana Oil (RECIPE!)
	i(20758),	-- Formula: Minor Wizard Oil (RECIPE!)
	i(22307),	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
}) do table.insert(LYNA_GROUPS, o); end
