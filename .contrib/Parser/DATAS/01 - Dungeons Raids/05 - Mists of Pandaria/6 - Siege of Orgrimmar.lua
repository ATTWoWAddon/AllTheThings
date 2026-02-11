-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local TOKENS = {
	RAIDFINDER = {
		CONQUEROR = {	-- Paladin, Priest, Warlock
			ESSENCE = 105861,	-- Essence of the Cursed Conqueror
			HELM = 99672,		-- Helm of the Cursed Conquerer
			SHOULDERS = 99669,	-- Shoulders of the Cursed Conquerer
			CHEST = 99678,		-- Chest of the Cursed Conquerer
			GAUNTLETS = 99681,	-- Gauntlets of the Cursed Conquerer
			LEGS = 99675,		-- Leggings of the Cursed Conquerer
		},
		PROTECTOR = {	-- Warrior, Hunter, Shaman, Monk
			ESSENCE = 105860,	-- Essence of the Cursed Protector
			HELM = 99673,		-- Helm of the Cursed Protector
			SHOULDERS = 99670,	-- Shoulders of the Cursed Protector
			CHEST = 99679,		-- Chest of the Cursed Protector
			GAUNTLETS = 99667,	-- Gauntlets of the Cursed Protector
			LEGS = 99676,		-- Leggings of the Cursed Protector
		},
		VANQUISHER = {	-- Rogue, Death Knight, Mage, Druid
			ESSENCE = 105862,	-- Essence of the Cursed Vanquisher
			HELM = 99671,		-- Helm of the Cursed Vanquisher
			SHOULDERS = 99668,	-- Shoulders of the Cursed Vanquisher
			CHEST = 99677,		-- Chest of the Cursed Vanquisher
			GAUNTLETS = 99680,	-- Gauntlets of the Cursed Vanquisher
			LEGS = 99674,		-- Leggings of the Cursed Vanquisher
		},
	},
	NORMAL = {
		CONQUEROR = {	-- Paladin, Priest, Warlock
			ESSENCE = 105864,	-- Essence of the Cursed Conqueror
			HELM = 99749,		-- Helm of the Cursed Conquerer
			SHOULDERS = 99755,	-- Shoulders of the Cursed Conquerer
			CHEST = 99743,		-- Chest of the Cursed Conquerer
			GAUNTLETS = 99746,	-- Gauntlets of the Cursed Conquerer
			LEGS = 99752,		-- Leggings of the Cursed Conquerer
		},
		PROTECTOR = {	-- Warrior, Hunter, Shaman, Monk
			ESSENCE = 105863,	-- Essence of the Cursed Protector
			HELM = 99750,		-- Helm of the Cursed Protector
			SHOULDERS = 99756,	-- Shoulders of the Cursed Protector
			CHEST = 99744,		-- Chest of the Cursed Protector
			GAUNTLETS = 99747,	-- Gauntlets of the Cursed Protector
			LEGS = 99753,		-- Leggings of the Cursed Protector
		},
		VANQUISHER = {	-- Rogue, Death Knight, Mage, Druid
			ESSENCE = 105865,	-- Essence of the Cursed Vanquisher
			HELM = 99748,		-- Helm of the Cursed Vanquisher
			SHOULDERS = 99754,	-- Shoulders of the Cursed Vanquisher
			CHEST = 99742,		-- Chest of the Cursed Vanquisher
			GAUNTLETS = 99745,	-- Gauntlets of the Cursed Vanquisher
			LEGS = 99751,		-- Leggings of the Cursed Vanquisher
		},
	},
	HEROIC = {
		CONQUEROR = {	-- Paladin, Priest, Warlock
			ESSENCE = 105858,	-- Essence of the Cursed Conqueror
			HELM = 99689,		-- Helm of the Cursed Conquerer
			SHOULDERS = 99690,	-- Shoulders of the Cursed Conquerer
			CHEST = 99686,		-- Chest of the Cursed Conquerer
			GAUNTLETS = 99687,	-- Gauntlets of the Cursed Conquerer
			LEGS = 99688,		-- Leggings of the Cursed Conquerer
		},
		PROTECTOR = {	-- Warrior, Hunter, Shaman, Monk
			ESSENCE = 105857,	-- Essence of the Cursed Protector
			HELM = 99694,		-- Helm of the Cursed Protector
			SHOULDERS = 99695,	-- Shoulders of the Cursed Protector
			CHEST = 99691,		-- Chest of the Cursed Protector
			GAUNTLETS = 99692,	-- Gauntlets of the Cursed Protector
			LEGS = 99693,		-- Leggings of the Cursed Protector
		},
		VANQUISHER = {	-- Rogue, Death Knight, Mage, Druid
			ESSENCE = 105859,	-- Essence of the Cursed Vanquisher
			HELM = 99683,		-- Helm of the Cursed Vanquisher
			SHOULDERS = 99685,	-- Shoulders of the Cursed Vanquisher
			CHEST = 99696,		-- Chest of the Cursed Vanquisher
			GAUNTLETS = 99682,	-- Gauntlets of the Cursed Vanquisher
			LEGS = 99684,		-- Leggings of the Cursed Vanquisher
		},
	},
	MYTHIC = {
		CONQUEROR = {	-- Paladin, Priest, Warlock
			ESSENCE = 105867,	-- Essence of the Cursed Conqueror
			HELM = 99724,		-- Helm of the Cursed Conquerer
			SHOULDERS = 99718,	-- Shoulders of the Cursed Conquerer
			CHEST = 99715,		-- Chest of the Cursed Conquerer
			GAUNTLETS = 99721,	-- Gauntlets of the Cursed Conquerer
			LEGS = 99712,		-- Leggings of the Cursed Conquerer
		},
		PROTECTOR = {	-- Warrior, Hunter, Shaman, Monk
			ESSENCE = 105866,	-- Essence of the Cursed Protector
			HELM = 99725,		-- Helm of the Cursed Protector
			SHOULDERS = 99719,	-- Shoulders of the Cursed Protector
			CHEST = 99716,		-- Chest of the Cursed Protector
			GAUNTLETS = 99722,	-- Gauntlets of the Cursed Protector
			LEGS = 99713,		-- Leggings of the Cursed Protector
		},
		VANQUISHER = {	-- Rogue, Death Knight, Mage, Druid
			ESSENCE = 105868,	-- Essence of the Cursed Vanquisher
			HELM = 99723,		-- Helm of the Cursed Vanquisher
			SHOULDERS = 99717,	-- Shoulders of the Cursed Vanquisher
			CHEST = 99714,		-- Chest of the Cursed Vanquisher
			GAUNTLETS = 99720,	-- Gauntlets of the Cursed Vanquisher
			LEGS = 99726,		-- Leggings of the Cursed Vanquisher
		},
	},
};

-- This header represents the shared drops and achievements that can be earned in all current difficulties.
local CURRENT_ALL_DIFFICULTIES = DIFFICULTY.LEGACY_RAID.MULTI.ALL_PLUS_FLEX;
local CURRENT_NORMAL_PLUS_DIFFICULTIES = DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC_PLUS_FLEX;
local CURRENT_HEROIC_PLUS_DIFFICULTIES = DIFFICULTY.LEGACY_RAID.MULTI.NORMAL_HEROIC;
-- #if AFTER 6.0.2
CURRENT_ALL_DIFFICULTIES = DIFFICULTY.RAID.MULTI.ALL;
CURRENT_NORMAL_PLUS_DIFFICULTIES = DIFFICULTY.RAID.MULTI.NORMAL_PLUS;
CURRENT_HEROIC_PLUS_DIFFICULTIES = DIFFICULTY.RAID.MULTI.HEROIC_PLUS;
FLEXIBLE_BEFORE_WOD = createHeader({
	readable = "Flexible (5.4)",
	icon = [[~_.asset("Difficulty_Normal")]],
	text = {
		en = "Flexible (5.4)",
		-- TODO: de = "",
		-- TODO: es = "",
		-- TODO: mx = "",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		ru = "Гибкий (5.4)",
		cn = "弹性 (5.4)",
		tw = "彈性 (5.4)",
	},
	description = {
		en = "This version of the instance was the original Flexible difficulty mode. The loot all had unique item IDs for each difficulty tier as well as their Warforged variants similar to how ToT was done. Blizzard changed their design philosophy for the better with Patch 6.0 and chose to reuse an item's ID and apply a bonus ID rather than creating a brand new item ID with the same base stats.",
	},
});
-- #endif

local function FLEX_RAID_HEADER(t)
	-- #if AFTER 6.0.2
	if true then return n(FLEXIBLE_BEFORE_WOD, t); end
	-- #endif
	return d(DIFFICULTY.LEGACY_RAID.FLEXIBLE, t);
end

-- CRIEVE NOTE: TODO: These are reportedly tied to a weekly HQT. It might be worthwhile to refactor these to include that information.
local TWISTED_TREASURES_OF_THE_VALE = i(104275, {	-- Twisted Treasures of the Vale
	-- #if AFTER 8.0.1
	["description"] = "This item is awarded as a consolation prize to players who do not win loot after defeating a boss encounter in the Raid Finder mode of Siege of Orgrimmar.",
	-- #endif
	["timeline"] = { ADDED_5_4_0, REMOVED_8_0_1 },
	["sym"] = {MOP_SYM_PETS},
	["groups"] = {
		i(105824),	-- Aeth's Swiftcinder Cloak
		i(105816),	-- Brave Niunai's Cloak
		i(105812),	-- Cape of the Alpha
		i(105818),	-- Crimson Gauntlets of Death
		i(105815),	-- Drape of the Omega
		i(105823),	-- Gauntlets of Discarded Time
		i(105813),	-- Kalaena's Arcane Handwraps
		i(105819),	-- Keengrip Arrowpullers
		i(105820),	-- Marco's Crackling Gloves
		i(105821),	-- Romy's Reliable Grips
		i(105814),	-- Seebo's Sainted Touch
		i(105817),	-- Siid's Silent Stranglers
		i(105825),	-- Turtleshell Greatcloak
		i(105822),	-- Zoid's Molten Gauntlets
	},
});
local COALESCED_TURMOIL = i(105714, {	-- Coalesced Turmoil
	-- #if AFTER 8.0.1
	["description"] = "Since the introduction of Legacy Loot this bag is only obtainable if you queue up as a Level 91-100 for the intended raid. If you are 101+ then you will need to seek out each item based on their original sources. This change occured in Patch 8.0.1",
	-- #endif
	["timeline"] = { ADDED_5_4_0, REMOVED_8_0_1 },
	["crs"] = {
		72249,	-- Galakras
		71466,	-- Iron Juggernaut
		71859,	-- Earthbreaker Haromm [Kor'kron Dark Shaman]
		71858,	-- Wavebindeer Kardris [Kor'kron Dark Shaman]
		71515,	-- General Nazgrim
		71454,	-- Malkorok
		71889,	-- Spoils of Pandari
		71529,	-- Thok the Bloodthirsty
		71504,	-- Siegecrafter Blackfuse
		71153,	-- Hisek the Swarmkeeper [Paragons of the Klaxxi]
		71160,	-- Iyyokuk the Lucid [Paragons of the Klaxxi]
		71154,	-- Ka'roz the Locust [Paragons of the Klaxxi]
		71156,	-- Kaz'tik thee Manipulator [Paragons of the Klaxxi]
		71161,	-- Kil'ruk the Wind-Reaver [Paragons of the Klaxxi]
		71155,	-- Korven the Prime [Paragons of the Klaxxi]
		71158,	-- Rik'kal the Dissector [Paragons of the Klaxxi]
		71152,	-- Skeer the Bloodseaker [Paragons of the Klaxxi]
		71157,	-- Xaril the Poisoned Mind
		71865,	-- Garrosh Hellscream
	},
});

-- #if MOP
local CUTTING_EDGE_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. WOD_PHASE_ONE .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
		t.rwp = nil;
	else
		t.u = ]] .. MOP_PHASE_SIEGE_OF_ORGRIMMAR .. [[;
		t.rwp = 60002;
	end
end]];
-- #endif

root(ROOTS.Instances, expansion(EXPANSION.MOP, {
	applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, inst(369, {	-- Siege of Orgrimmar
		["mapID"] = 556,
		["coords"] = {
			{ 72.3, 44.3, VALE_OF_ETERNAL_BLOSSOMS },	-- old Vale
			-- #if AFTER BFA
			{ 72.3, 44.3, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- new Vale
			-- #endif
		},
		["timeline"] = { ADDED_5_4_0 },
		["maps"] = {
			557,
			558,
			559,
			560,
			561,
			562,
			563,
			564,
			565,
			566,
			567,
			568,
			569,
			570,
		},
		["isRaid"] = true,
		["lvl"] = 90,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(8458, {	-- Vale of Eternal Sorrows
					crit(23651, {	-- Immerseus
						["_encounter"] = { 852, CURRENT_ALL_DIFFICULTIES },
					}),
					crit(23653, {	-- The Fallen Protectors
						["_encounter"] = { 849, CURRENT_ALL_DIFFICULTIES },
					}),
					crit(23654, {	-- Norushen
						["_encounter"] = { 866, CURRENT_ALL_DIFFICULTIES },
					}),
					crit(23652, {	-- Sha of Pride
						["_encounter"] = { 867, CURRENT_ALL_DIFFICULTIES },
					}),
				}),
				ach(8459, {	-- Gates of Retribution
					crit(23655, {	-- Galakras
						["_encounter"] = { 881, CURRENT_ALL_DIFFICULTIES },
					}),
					crit(23656, {	-- Iron Juggernaut
						["_encounter"] = { 864, CURRENT_ALL_DIFFICULTIES },
					}),
					crit(23657, {	-- Kor'kron Dark Shaman
						["_encounter"] = { 856, CURRENT_ALL_DIFFICULTIES },
					}),
					crit(23658, {	-- General Nazgrim
						["_encounter"] = { 850, CURRENT_ALL_DIFFICULTIES },
					}),
				}),
				ach(8461, {	-- The Underhold
					crit(23659, {	-- Malkorok
						["_encounter"] = { 846, CURRENT_ALL_DIFFICULTIES },
					}),
					crit(23660, {	-- Spoils of Pandaria
						["_encounter"] = { 870, CURRENT_ALL_DIFFICULTIES },
					}),
					crit(23661, {	-- Thok the Bloodthirsty
						["_encounter"] = { 851, CURRENT_ALL_DIFFICULTIES },
					}),
				}),
				ach(8462, {	-- Downfall
					crit(23662, {	-- Siegecrafter Blackfuse
						["_encounter"] = { 865, CURRENT_ALL_DIFFICULTIES },
					}),
					crit(23906, {	-- Paragons of the Klaxxi
						["_encounter"] = { 853, CURRENT_ALL_DIFFICULTIES },
					}),
					crit(23664, {	-- Garrosh Hellscream
						["_encounter"] = { 869, CURRENT_ALL_DIFFICULTIES },
					}),
				}),
				ach(8454, {	-- Glory of the Orgrimmar Raider
					["sym"] = {{"meta_achievement",
						8536,	-- No More Tears
						8528,	-- Go Long
						8532,	-- None Shall Pass
						8521,	-- Swallow Your Pride
						8530,	-- The Immortal Vanguard
						8520,	-- Fire in the Hole!
						8453,	-- Rescue Raiders
						8448,	-- Gamon Will Save Us!
						8538,	-- Unlimited Potential
						8529,	-- Criss Cross
						8527,	-- Giant Dinosaur vs. Mega Snail
						8543,	-- Lasers and Magnets and Drills! Oh My!
						8531,	-- Now We are the Paragon
						8537,	-- Strike!
					}},
					["groups"] = {
						i(104208),	-- Spawn of Galakras (MOUNT!)
					},
				}),
				ach(11759, {["timeline"] = {ADDED_7_2_0}}),	-- Yaass'shaarj (Siege of Orgrimmar)
				ach(8510),	-- Siege of Orgrimmar Guild Run
			}),
			n(QUESTS, {
				q(33147, {	-- The Last Gasp of Y'Shaarj
					["provider"] = { "n", 73335 },	-- Fading Breath
					-- ["coord"] = { <coords>, <mapID> },	-- Siege of Orgrimmar
				}),
				{
					["aqd"] = q(33134, {	-- Warforged Seals (A)
						["qg"] = 64029,	-- Elder Lin
						["coord"] = { 85.2, 62.6, VALE_OF_ETERNAL_BLOSSOMS },
					}),
					["hqd"] = q(33133, {	-- Warforged Seals (H)
						["qg"] = 63996,	-- Elder Liao
						["coord"] = { 62.0, 20.6, VALE_OF_ETERNAL_BLOSSOMS },
					}),
					["timeline"] = { ADDED_5_4_0 },
					["cost"] = { { "c", 738, 50 } },	-- Lesser Charms of Good Fortune
					["repeatable"] = true,
					["groups"] = {
						currency(776),	-- Warforged Seal
					},
				},
				q(33138, {	-- Why Do We Fight?
					["sourceQuests"] = { 33147 },	-- The Last Gasp of Y'Shaarj
					["provider"] = { "n", 73318 },	-- Lorewalker Cho
					-- ["coord"] = { <coords>, <mapID> },	-- Siege of Orgrimmar
				}),
			}),
			n(VENDORS, {
				n(COMMON_VENDOR_ITEMS, {
					["aqd"] = {
						["provider"] = { "n", 73614 },	-- Tinkmaster Overspark <Alliance Supplies> [A]
					},
					["hqd"] = {
						["provider"] = { "n", 73715 },	-- Rivett Clutchpop <Horde Supplies> [H]
					},
					["description"] = "Vendor spawns in after opening gate after the Malkorok Boss fight in Kor'kron Barracks.",
					["groups"] = {
						i(23799, {	-- Schematic: Adamantite Rifle (RECIPE!)
							["isLimited"] = true,
						}),
						i(23807),	-- Schematic: Adamantite Scope (RECIPE!)
						i(23803),	-- Schematic: Cogspinner Goggles (RECIPE!)
						i(23816),	-- Schematic: Fel Iron Toolbox (RECIPE!)
						i(23805),	-- Schematic: Ultra-Spectropic Detection Goggles (RECIPE!)
					},
				}),
				n(SOO_RAID_FINDER_VENDOR, {
					["aqd"] = n(74020, {	-- Welbiz Cheerwhistle <Raid Finder Vendor> [A]
						["coord"] = { 41.0, 42.5, SHRINE_OF_SEVEN_STARS_THE_IMPERIAL_EXCHANGE },
					}),
					["hqd"] = n(73674, {	-- Blizzix Sparkshiv <Raid Finder Vendor> [H]
						["coord"] = { 42.9, 74.7, SHRINE_OF_TWO_MOONS_THE_IMPERIAL_MERCANTILE },
					}),
					["groups"] = {
						cl(WARRIOR, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(99046)),		-- Helmet of the Prehistoric Marauder
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(99036)),	-- Pauldrons of the Prehistoric Marauder
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(99047)),		-- Battleplate of the Prehistoric Marauder
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(99034)),	-- Gauntlets of the Prehistoric Marauder
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(99035)),		-- Legplates of the Prehistoric Marauder

							-- Tank
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(99032)),		-- Faceguard of the Prehistoric Marauder
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(99030)),	-- Shoulderguards of the Prehistoric Marauder
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(99037)),		-- Chestguard of the Prehistoric Marauder
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(99038)),	-- Handguards of the Prehistoric Marauder
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(99033)),		-- Legguards of the Prehistoric Marauder
						}),
						cl(PALADIN, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.HELM, i(98985)),		-- Helmet of Winged Triumph
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.SHOULDERS, i(98987)),	-- Pauldrons of Winged Triumph
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.CHEST, i(99052)),		-- Battleplate of Winged Triumph
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.GAUNTLETS, i(99002)),	-- Gauntlets of Winged Triumph
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.LEGS, i(98986)),		-- Legplates of Winged Triumph

							-- Healer
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.HELM, i(98979)),		-- Headguard of Winged Triumph
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.SHOULDERS, i(99076)),	-- Mantle of Winged Triumph
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.CHEST, i(99003)),		-- Breastplate of Winged Triumph
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.GAUNTLETS, i(98982)),	-- Gloves of Winged Triumph
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.LEGS, i(98980)),		-- Greaves of Winged Triumph

							-- Tank
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.HELM, i(99029)),		-- Faceguard of Winged Triumph
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.SHOULDERS, i(99027)),	-- Shoulderguards of Winged Triumph
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.CHEST, i(99031)),		-- Chestguard of Winged Triumph
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.GAUNTLETS, i(99028)),	-- Handguards of Winged Triumph
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.LEGS, i(99026)),		-- Legguards of Winged Triumph
						}),
						cl(DEATHKNIGHT, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(99057)),			-- Helmet of Cyclopean Dread
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(99059)),	-- Pauldrons of Cyclopean Dread
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(99066)),		-- Breastplate of Cyclopean Dread
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(99067)),	-- Gauntlets of Cyclopean Dread
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(99058)),			-- Greaves of Cyclopean Dread

							-- Tank
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(99049)),			-- Faceguard of Cyclopean Dread
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(99040)),	-- Shoulderguards of Cyclopean Dread
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(99060)),		-- Chestguard of Cyclopean Dread
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(99048)),	-- Handguards of Cyclopean Dread
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(99039)),			-- Legguards of Cyclopean Dread
						}),
						cl(HUNTER, {
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(99080)),		-- Headguard of the Unblinking Vigil
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(99082)),	-- Spaulders of the Unblinking Vigil
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(99085)),		-- Tunic of the Unblinking Vigil
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(99086)),	-- Gloves of the Unblinking Vigil
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(99081)),		-- Legguards of the Unblinking Vigil
						}),
						cl(ROGUE, {
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(99008)),			-- Helmet of the Barbed Assassin
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(99010)),	-- Spaulders of the Barbed Assassin
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(99006)),		-- Tunic of the Barbed Assassin
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(99007)),	-- Gloves of the Barbed Assassin
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(99009)),			-- Legguards of the Barbed Assassin
						}),
						cl(PRIEST, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.HELM, i(99020)),		-- Hood of the Ternion Glory
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.SHOULDERS, i(99005)),	-- Shoulderguards of the Ternion Glory
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.CHEST, i(99004)),		-- Raiment of the Ternion Glory
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.GAUNTLETS, i(99019)),	-- Gloves of the Ternion Glory
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.LEGS, i(99021)),		-- Leggings of Ternion Glory

							-- Healer
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.HELM, i(99024)),		-- Cowl of the Ternion Glory
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.SHOULDERS, i(99018)),	-- Mantle of the Ternion Glory
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.CHEST, i(99017)),		-- Robes of the Ternion Glory
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.GAUNTLETS, i(99023)),	-- Handwraps of the Ternion Glory
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.LEGS, i(99025)),		-- Legwraps of Ternion Glory
						}),
						cl(SHAMAN, {
							-- DPS (Enhance)
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(98983)),		-- Helmet of Celestial Harmony
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(98977)),	-- Spaulders of Celestial Harmony
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(98992)),		-- Cuirass of Celestial Harmony
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(98993)),	-- Grips of Celestial Harmony
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(98984)),		-- Legguards of Celestial Harmony

							-- DPS (Elemental)
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(99089)),		-- Headpiece of Celestial Harmony
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(99091)),	-- Shoulderwraps of Celestial Harmony
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(99087)),		-- Hauberk of Celestial Harmony
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(99088)),	-- Gloves of Celestial Harmony
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(99090)),		-- Leggings of Celestial Harmony

							-- Healer
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(98989)),		-- Faceguard of Celestial Harmony
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(98991)),	-- Mantle of Celestial Harmony
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(99011)),		-- Tunic of Celestial Harmony
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(98988)),	-- Handwraps of Celestial Harmony
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(98990)),		-- Legwraps of Celestial Harmony
						}),
						cl(MAGE, {
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(99084)),			-- Chronomancer Hood
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(99079)),	-- Chronomancer Mantle
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(99078)),		-- Chronomancer Robes
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(99083)),	-- Chronomancer Gloves
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(99077)),			-- Chronomancer Leggings
						}),
						cl(MONK, {
							-- DPS
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(99073)),		-- Headpiece of Seven Sacred Seals
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(99075)),	-- Spaulders of Seven Sacred Seals
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(99071)),		-- Tunic of Seven Sacred Seals
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(99072)),	-- Grips of Seven Sacred Seals
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(99074)),		-- Leggings of Seven Sacred Seals

							-- Healer
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(99069)),		-- Helm of Seven Sacred Seals
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(99062)),	-- Mantle of Seven Sacred Seals
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(99061)),		-- Vest of Seven Sacred Seals
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(99068)),	-- Handwraps of Seven Sacred Seals
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(99070)),		-- Legwraps of Seven Sacred Seals

							-- Tank
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.HELM, i(99065)),		-- Crown of Seven Sacred Seals
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.SHOULDERS, i(99051)),	-- Shoulderguards of Seven Sacred Seals
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.CHEST, i(99063)),		-- Chestguard of Seven Sacred Seals
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.GAUNTLETS, i(99064)),	-- Gauntlets of Seven Sacred Seals
							tokencost(TOKENS.RAIDFINDER.PROTECTOR.LEGS, i(99050)),		-- Legguards of Seven Sacred Seals
						}),
						cl(WARLOCK, {
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.HELM, i(99054)),		-- Hood of the Horned Nightmare
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.SHOULDERS, i(99045)),	-- Mantle of the Horned Nightmare
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.CHEST, i(99056)),		-- Robes of the Horned Nightmare
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.GAUNTLETS, i(99053)),	-- Gloves of the Horned Nightmare
							tokencost(TOKENS.RAIDFINDER.CONQUEROR.LEGS, i(99055)),		-- Leggings of the Horned Nightmare
						}),
						cl(DRUID, {
							-- DPS (Boomkin)
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(98995)),			-- Cover of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(98998)),	-- Shoulderwraps of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(98997)),		-- Vestment of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(98994)),	-- Gloves of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(98996)),			-- Leggings of the Shattered Vale

							-- DPS (Feral)
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(99043)),			-- Headpiece of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(99022)),	-- Spaulders of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(99041)),		-- Raiment of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(99042)),	-- Grips of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(99044)),			-- Legguards of the Shattered Vale

							-- Healer
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(99013)),			-- Helm of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(99016)),	-- Mantle of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(99015)),		-- Robes of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(99012)),	-- Handwraps of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(99014)),			-- Legwraps of the Shattered Vale

							-- Tank
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.HELM, i(99001)),			-- Headguard of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.SHOULDERS, i(98978)),	-- Shoulderguards of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.CHEST, i(98999)),		-- Tunic of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.GAUNTLETS, i(99000)),	-- Handguards of the Shattered Vale
							tokencost(TOKENS.RAIDFINDER.VANQUISHER.LEGS, i(98981)),			-- Breeches of the Shattered Vale
						}),

						-- Tokens
						tokencost(TOKENS.RAIDFINDER.CONQUEROR.ESSENCE, i(99672)),	-- Helm of the Cursed Conquerer
						tokencost(TOKENS.RAIDFINDER.PROTECTOR.ESSENCE, i(99673)),	-- Helm of the Cursed Protector
						tokencost(TOKENS.RAIDFINDER.VANQUISHER.ESSENCE, i(99671)),	-- Helm of the Cursed Vanquisher
						tokencost(TOKENS.RAIDFINDER.CONQUEROR.ESSENCE, i(99669)),	-- Shoulders of the Cursed Conquerer
						tokencost(TOKENS.RAIDFINDER.PROTECTOR.ESSENCE, i(99670)),	-- Shoulders of the Cursed Protector
						tokencost(TOKENS.RAIDFINDER.VANQUISHER.ESSENCE, i(99668)),	-- Shoulders of the Cursed Vanquisher
						tokencost(TOKENS.RAIDFINDER.CONQUEROR.ESSENCE, i(99678)),	-- Chest of the Cursed Conquerer
						tokencost(TOKENS.RAIDFINDER.PROTECTOR.ESSENCE, i(99679)),	-- Chest of the Cursed Protector
						tokencost(TOKENS.RAIDFINDER.VANQUISHER.ESSENCE, i(99677)),	-- Chest of the Cursed Vanquisher
						tokencost(TOKENS.RAIDFINDER.CONQUEROR.ESSENCE, i(99681)),	-- Gauntlets of the Cursed Conquerer
						tokencost(TOKENS.RAIDFINDER.PROTECTOR.ESSENCE, i(99667)),	-- Gauntlets of the Cursed Protector
						tokencost(TOKENS.RAIDFINDER.VANQUISHER.ESSENCE, i(99680)),	-- Gauntlets of the Cursed Vanquisher
						tokencost(TOKENS.RAIDFINDER.CONQUEROR.ESSENCE, i(99675)),	-- Leggings of the Cursed Conquerer
						tokencost(TOKENS.RAIDFINDER.PROTECTOR.ESSENCE, i(99676)),	-- Leggings of the Cursed Protector
						tokencost(TOKENS.RAIDFINDER.VANQUISHER.ESSENCE, i(99674)),	-- Leggings of the Cursed Vanquisher
					},
				}),
				n(SOO_RAID_NORMAL_VENDOR, {
					["aqd"] = n(74022, {	-- Thelett Shaleheart <Raid Vendor> [A]
						["coord"] = { 41.9, 42.9, SHRINE_OF_SEVEN_STARS_THE_IMPERIAL_EXCHANGE },
					}),
					["hqd"] = n(74010, {	-- Nadina Stargem <Raid Vendor> [H]
						["coord"] = { 43.3, 76.0, SHRINE_OF_TWO_MOONS_THE_IMPERIAL_MERCANTILE },
					}),
					["groups"] = {
						cl(WARRIOR, {
							-- DPS
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(99602)),		-- Helmet of the Prehistoric Marauder
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(99561)),	-- Pauldrons of the Prehistoric Marauder
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(99603)),		-- Battleplate of the Prehistoric Marauder
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(99559)),	-- Gauntlets of the Prehistoric Marauder
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(99560)),		-- Legplates of the Prehistoric Marauder

							-- Tank
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(99557)),		-- Faceguard of the Prehistoric Marauder
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(99597)),	-- Shoulderguards of the Prehistoric Marauder
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(99562)),		-- Chestguard of the Prehistoric Marauder
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(99563)),	-- Handguards of the Prehistoric Marauder
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(99558)),		-- Legguards of the Prehistoric Marauder
						}),
						cl(PALADIN, {
							-- DPS
							tokencost(TOKENS.NORMAL.CONQUEROR.HELM, i(99651)),		-- Helmet of Winged Triumph
							tokencost(TOKENS.NORMAL.CONQUEROR.SHOULDERS, i(99662)),	-- Pauldrons of Winged Triumph
							tokencost(TOKENS.NORMAL.CONQUEROR.CHEST, i(99566)),		-- Battleplate of Winged Triumph
							tokencost(TOKENS.NORMAL.CONQUEROR.GAUNTLETS, i(99625)),	-- Gauntlets of Winged Triumph
							tokencost(TOKENS.NORMAL.CONQUEROR.LEGS, i(99661)),		-- Legplates of Winged Triumph

							-- Healer
							tokencost(TOKENS.NORMAL.CONQUEROR.HELM, i(99665)),		-- Headguard of Winged Triumph
							tokencost(TOKENS.NORMAL.CONQUEROR.SHOULDERS, i(99656)),	-- Mantle of Winged Triumph
							tokencost(TOKENS.NORMAL.CONQUEROR.CHEST, i(99626)),		-- Breastplate of Winged Triumph
							tokencost(TOKENS.NORMAL.CONQUEROR.GAUNTLETS, i(99648)),	-- Gloves of Winged Triumph
							tokencost(TOKENS.NORMAL.CONQUEROR.LEGS, i(99666)),		-- Greaves of Winged Triumph

							-- Tank
							tokencost(TOKENS.NORMAL.CONQUEROR.HELM, i(99596)),		-- Faceguard of Winged Triumph
							tokencost(TOKENS.NORMAL.CONQUEROR.SHOULDERS, i(99594)),	-- Shoulderguards of Winged Triumph
							tokencost(TOKENS.NORMAL.CONQUEROR.CHEST, i(99598)),		-- Chestguard of Winged Triumph
							tokencost(TOKENS.NORMAL.CONQUEROR.GAUNTLETS, i(99595)),	-- Handguards of Winged Triumph
							tokencost(TOKENS.NORMAL.CONQUEROR.LEGS, i(99593)),		-- Legguards of Winged Triumph
						}),
						cl(DEATHKNIGHT, {
							-- DPS
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(99571)),			-- Helmet of Cyclopean Dread
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(99639)),	-- Pauldrons of Cyclopean Dread
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(99608)),		-- Breastplate of Cyclopean Dread
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(99609)),	-- Gauntlets of Cyclopean Dread
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(99572)),			-- Greaves of Cyclopean Dread

							-- Tank
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(99605)),			-- Faceguard of Cyclopean Dread
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(99652)),	-- Shoulderguards of Cyclopean Dread
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(99640)),		-- Chestguard of Cyclopean Dread
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(99604)),	-- Handguards of Cyclopean Dread
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(99564)),			-- Legguards of Cyclopean Dread
						}),
						cl(HUNTER, {
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(99660)),		-- Headguard of the Unblinking Vigil
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(99574)),	-- Spaulders of the Unblinking Vigil
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(99577)),		-- Tunic of the Unblinking Vigil
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(99578)),	-- Gloves of the Unblinking Vigil
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(99573)),		-- Legguards of the Unblinking Vigil
						}),
						cl(ROGUE, {
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(99631)),			-- Helmet of the Barbed Assassin
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(99635)),	-- Spaulders of the Barbed Assassin
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(99629)),		-- Tunic of the Barbed Assassin
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(99630)),	-- Gloves of the Barbed Assassin
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(99634)),			-- Legguards of the Barbed Assassin
						}),
						cl(PRIEST, {
							-- DPS
							tokencost(TOKENS.NORMAL.CONQUEROR.HELM, i(99587)),		-- Hood of the Ternion Glory
							tokencost(TOKENS.NORMAL.CONQUEROR.SHOULDERS, i(99628)),	-- Shoulderguards of the Ternion Glory
							tokencost(TOKENS.NORMAL.CONQUEROR.CHEST, i(99627)),		-- Raiment of the Ternion Glory
							tokencost(TOKENS.NORMAL.CONQUEROR.GAUNTLETS, i(99586)),	-- Gloves of the Ternion Glory
							tokencost(TOKENS.NORMAL.CONQUEROR.LEGS, i(99588)),		-- Leggings of Ternion Glory

							-- Healer
							tokencost(TOKENS.NORMAL.CONQUEROR.HELM, i(99591)),		-- Cowl of the Ternion Glory
							tokencost(TOKENS.NORMAL.CONQUEROR.SHOULDERS, i(99585)),	-- Mantle of the Ternion Glory
							tokencost(TOKENS.NORMAL.CONQUEROR.CHEST, i(99584)),		-- Robes of the Ternion Glory
							tokencost(TOKENS.NORMAL.CONQUEROR.GAUNTLETS, i(99590)),	-- Handwraps of the Ternion Glory
							tokencost(TOKENS.NORMAL.CONQUEROR.LEGS, i(99592)),		-- Legwraps of Ternion Glory
						}),
						cl(SHAMAN, {
							-- DPS (Enhance)
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(99649)),		-- Helmet of Celestial Harmony
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(99663)),	-- Spaulders of Celestial Harmony
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(99615)),		-- Cuirass of Celestial Harmony
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(99616)),	-- Grips of Celestial Harmony
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(99650)),		-- Legguards of Celestial Harmony

							-- DPS (Elemental)
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(99645)),		-- Headpiece of Celestial Harmony
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(99647)),	-- Shoulderwraps of Celestial Harmony
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(99579)),		-- Hauberk of Celestial Harmony
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(99580)),	-- Gloves of Celestial Harmony
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(99646)),		-- Leggings of Celestial Harmony

							-- Healer
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(99612)),		-- Faceguard of Celestial Harmony
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(99614)),	-- Mantle of Celestial Harmony
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(99636)),		-- Tunic of Celestial Harmony
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(99611)),	-- Handwraps of Celestial Harmony
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(99613)),		-- Legwraps of Celestial Harmony
						}),
						cl(MAGE, {
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(99576)),		-- Chronomancer Hood
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(99659)),	-- Chronomancer Mantle
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(99658)),		-- Chronomancer Robes
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(99575)),	-- Chronomancer Gloves
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(99657)),		-- Chronomancer Leggings
						}),
						cl(MONK, {
							-- DPS
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(99653)),		-- Headpiece of Seven Sacred Seals
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(99655)),	-- Spaulders of Seven Sacred Seals
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(99555)),		-- Tunic of Seven Sacred Seals
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(99556)),	-- Grips of Seven Sacred Seals
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(99654)),		-- Leggings of Seven Sacred Seals

							-- Healer
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(99553)),		-- Helm of Seven Sacred Seals
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(99642)),	-- Mantle of Seven Sacred Seals
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(99641)),		-- Vest of Seven Sacred Seals
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(99552)),	-- Handwraps of Seven Sacred Seals
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(99554)),		-- Legwraps of Seven Sacred Seals

							-- Tank
							tokencost(TOKENS.NORMAL.PROTECTOR.HELM, i(99607)),		-- Crown of Seven Sacred Seals
							tokencost(TOKENS.NORMAL.PROTECTOR.SHOULDERS, i(99565)),	-- Shoulderguards of Seven Sacred Seals
							tokencost(TOKENS.NORMAL.PROTECTOR.CHEST, i(99643)),		-- Chestguard of Seven Sacred Seals
							tokencost(TOKENS.NORMAL.PROTECTOR.GAUNTLETS, i(99644)),	-- Gauntlets of Seven Sacred Seals
							tokencost(TOKENS.NORMAL.PROTECTOR.LEGS, i(99606)),		-- Legguards of Seven Sacred Seals
						}),
						cl(WARLOCK, {
							tokencost(TOKENS.NORMAL.CONQUEROR.HELM, i(99568)),		-- Hood of the Horned Nightmare
							tokencost(TOKENS.NORMAL.CONQUEROR.SHOULDERS, i(99601)),	-- Mantle of the Horned Nightmare
							tokencost(TOKENS.NORMAL.CONQUEROR.CHEST, i(99570)),		-- Robes of the Horned Nightmare
							tokencost(TOKENS.NORMAL.CONQUEROR.GAUNTLETS, i(99567)),	-- Gloves of the Horned Nightmare
							tokencost(TOKENS.NORMAL.CONQUEROR.LEGS, i(99569)),		-- Leggings of the Horned Nightmare
						}),
						cl(DRUID, {
							-- DPS (Boomkin)
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(99618)),			-- Cover of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(99621)),	-- Shoulderwraps of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(99620)),		-- Vestment of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(99617)),	-- Gloves of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(99619)),			-- Leggings of the Shattered Vale

							-- DPS (Feral)
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(99599)),			-- Headpiece of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(99589)),	-- Spaulders of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(99632)),		-- Raiment of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(99633)),	-- Grips of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(99600)),			-- Legguards of the Shattered Vale

							-- Healer
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(99638)),			-- Helm of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(99583)),	-- Mantle of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(99582)),		-- Robes of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(99637)),	-- Handwraps of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(99581)),			-- Legwraps of the Shattered Vale

							-- Tank
							tokencost(TOKENS.NORMAL.VANQUISHER.HELM, i(99624)),			-- Headguard of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.SHOULDERS, i(99664)),	-- Shoulderguards of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.CHEST, i(99622)),		-- Tunic of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.GAUNTLETS, i(99623)),	-- Handguards of the Shattered Vale
							tokencost(TOKENS.NORMAL.VANQUISHER.LEGS, i(99610)),			-- Breeches of the Shattered Vale
						}),

						-- Tokens
						tokencost(TOKENS.NORMAL.CONQUEROR.ESSENCE, i(99749)),	-- Helm of the Cursed Conquerer
						tokencost(TOKENS.NORMAL.PROTECTOR.ESSENCE, i(99750)),	-- Helm of the Cursed Protector
						tokencost(TOKENS.NORMAL.VANQUISHER.ESSENCE, i(99748)),	-- Helm of the Cursed Vanquisher
						tokencost(TOKENS.NORMAL.CONQUEROR.ESSENCE, i(99755)),	-- Shoulders of the Cursed Conquerer
						tokencost(TOKENS.NORMAL.PROTECTOR.ESSENCE, i(99756)),	-- Shoulders of the Cursed Protector
						tokencost(TOKENS.NORMAL.VANQUISHER.ESSENCE, i(99754)),	-- Shoulders of the Cursed Vanquisher
						tokencost(TOKENS.NORMAL.CONQUEROR.ESSENCE, i(99743)),	-- Chest of the Cursed Conquerer
						tokencost(TOKENS.NORMAL.PROTECTOR.ESSENCE, i(99744)),	-- Chest of the Cursed Protector
						tokencost(TOKENS.NORMAL.VANQUISHER.ESSENCE, i(99742)),	-- Chest of the Cursed Vanquisher
						tokencost(TOKENS.NORMAL.CONQUEROR.ESSENCE, i(99746)),	-- Gauntlets of the Cursed Conquerer
						tokencost(TOKENS.NORMAL.PROTECTOR.ESSENCE, i(99747)),	-- Gauntlets of the Cursed Protector
						tokencost(TOKENS.NORMAL.VANQUISHER.ESSENCE, i(99745)),	-- Gauntlets of the Cursed Vanquisher
						tokencost(TOKENS.NORMAL.CONQUEROR.ESSENCE, i(99752)),	-- Leggings of the Cursed Conquerer
						tokencost(TOKENS.NORMAL.PROTECTOR.ESSENCE, i(99753)),	-- Leggings of the Cursed Protector
						tokencost(TOKENS.NORMAL.VANQUISHER.ESSENCE, i(99751)),	-- Leggings of the Cursed Vanquisher
					},
				}),
				n(SOO_RAID_HEROIC_VENDOR, {
					["aqd"] = n(74021, {	-- Clarice Chapmann <Heroic Vendor> [A]
						["coord"] = { 43.0, 45.5, SHRINE_OF_SEVEN_STARS_THE_IMPERIAL_EXCHANGE },
					}),
					["hqd"] = n(74012, {	-- Ki'agnuu <Heroic Vendor> [H]
						["coord"] = { 43.1, 78.7, SHRINE_OF_TWO_MOONS_THE_IMPERIAL_MERCANTILE },
					}),
					["groups"] = {
						cl(WARRIOR, {
							-- DPS
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(99206)),		-- Helmet of the Prehistoric Marauder
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(99200)),	-- Pauldrons of the Prehistoric Marauder
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(99197)),		-- Battleplate of the Prehistoric Marauder
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(99198)),	-- Gauntlets of the Prehistoric Marauder
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(99199)),		-- Legplates of the Prehistoric Marauder

							-- Tank
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(99203)),		-- Faceguard of the Prehistoric Marauder
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(99196)),	-- Shoulderguards of the Prehistoric Marauder
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(99201)),		-- Chestguard of the Prehistoric Marauder
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(99202)),	-- Handguards of the Prehistoric Marauder
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(99195)),		-- Legguards of the Prehistoric Marauder
						}),
						cl(PALADIN, {
							-- DPS
							tokencost(TOKENS.HEROIC.CONQUEROR.HELM, i(99138)),		-- Helmet of Winged Triumph
							tokencost(TOKENS.HEROIC.CONQUEROR.SHOULDERS, i(99132)),	-- Pauldrons of Winged Triumph
							tokencost(TOKENS.HEROIC.CONQUEROR.CHEST, i(99136)),		-- Battleplate of Winged Triumph
							tokencost(TOKENS.HEROIC.CONQUEROR.GAUNTLETS, i(99137)),	-- Gauntlets of Winged Triumph
							tokencost(TOKENS.HEROIC.CONQUEROR.LEGS, i(99139)),		-- Legplates of Winged Triumph

							-- Healer
							tokencost(TOKENS.HEROIC.CONQUEROR.HELM, i(99135)),		-- Headguard of Winged Triumph
							tokencost(TOKENS.HEROIC.CONQUEROR.SHOULDERS, i(99125)),	-- Mantle of Winged Triumph
							tokencost(TOKENS.HEROIC.CONQUEROR.CHEST, i(99133)),		-- Breastplate of Winged Triumph
							tokencost(TOKENS.HEROIC.CONQUEROR.GAUNTLETS, i(99134)),	-- Gloves of Winged Triumph
							tokencost(TOKENS.HEROIC.CONQUEROR.LEGS, i(99124)),		-- Greaves of Winged Triumph

							-- Tank
							tokencost(TOKENS.HEROIC.CONQUEROR.HELM, i(99128)),		-- Faceguard of Winged Triumph
							tokencost(TOKENS.HEROIC.CONQUEROR.SHOULDERS, i(99130)),	-- Shoulderguards of Winged Triumph
							tokencost(TOKENS.HEROIC.CONQUEROR.CHEST, i(99126)),		-- Chestguard of Winged Triumph
							tokencost(TOKENS.HEROIC.CONQUEROR.GAUNTLETS, i(99127)),	-- Handguards of Winged Triumph
							tokencost(TOKENS.HEROIC.CONQUEROR.LEGS, i(99129)),		-- Legguards of Winged Triumph
						}),
						cl(DEATHKNIGHT, {
							-- DPS
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(99194)),			-- Helmet of Cyclopean Dread
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(99187)),	-- Pauldrons of Cyclopean Dread
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(99192)),		-- Breastplate of Cyclopean Dread
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(99193)),	-- Gauntlets of Cyclopean Dread
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(99186)),			-- Greaves of Cyclopean Dread

							-- Tank
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(99190)),			-- Faceguard of Cyclopean Dread
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(99179)),	-- Shoulderguards of Cyclopean Dread
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(99188)),		-- Chestguard of Cyclopean Dread
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(99189)),	-- Handguards of Cyclopean Dread
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(99191)),			-- Legguards of Cyclopean Dread
						}),
						cl(HUNTER, {
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(99157)),		-- Headguard of the Unblinking Vigil
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(99159)),	-- Spaulders of the Unblinking Vigil
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(99167)),		-- Tunic of the Unblinking Vigil
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(99168)),	-- Gloves of the Unblinking Vigil
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(99158)),		-- Legguards of the Unblinking Vigil
						}),
						cl(ROGUE, {
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(99114)),			-- Helmet of the Barbed Assassin
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(99116)),	-- Spaulders of the Barbed Assassin
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(99112)),		-- Tunic of the Barbed Assassin
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(99113)),	-- Gloves of the Barbed Assassin
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(99115)),			-- Legguards of the Barbed Assassin
						}),
						cl(PRIEST, {
							-- DPS
							tokencost(TOKENS.HEROIC.CONQUEROR.HELM, i(99122)),	-- Hood of the Ternion Glory
							tokencost(TOKENS.HEROIC.CONQUEROR.SHOULDERS, i(99111)),	-- Shoulderguards of the Ternion Glory
							tokencost(TOKENS.HEROIC.CONQUEROR.CHEST, i(99110)),	-- Raiment of the Ternion Glory
							tokencost(TOKENS.HEROIC.CONQUEROR.GAUNTLETS, i(99121)),	-- Gloves of the Ternion Glory
							tokencost(TOKENS.HEROIC.CONQUEROR.LEGS, i(99123)),	-- Leggings of Ternion Glory

							-- Healer
							tokencost(TOKENS.HEROIC.CONQUEROR.HELM, i(99117)),	-- Cowl of the Ternion Glory
							tokencost(TOKENS.HEROIC.CONQUEROR.SHOULDERS, i(99120)),	-- Mantle of the Ternion Glory
							tokencost(TOKENS.HEROIC.CONQUEROR.CHEST, i(99119)),	-- Robes of the Ternion Glory
							tokencost(TOKENS.HEROIC.CONQUEROR.GAUNTLETS, i(99131)),	-- Handwraps of the Ternion Glory
							tokencost(TOKENS.HEROIC.CONQUEROR.LEGS, i(99118)),	-- Legwraps of Ternion Glory
						}),
						cl(SHAMAN, {
							-- DPS (Enhance)
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(99103)),		-- Helmet of Celestial Harmony
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(99105)),	-- Spaulders of Celestial Harmony
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(99101)),		-- Cuirass of Celestial Harmony
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(99102)),	-- Grips of Celestial Harmony
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(99104)),		-- Legguards of Celestial Harmony

							-- DPS (Elemental)
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(99093)),		-- Headpiece of Celestial Harmony
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(99095)),	-- Shoulderwraps of Celestial Harmony
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(99106)),		-- Hauberk of Celestial Harmony
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(99092)),	-- Gloves of Celestial Harmony
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(99094)),		-- Leggings of Celestial Harmony

							-- Healer
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(99109)),		-- Faceguard of Celestial Harmony
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(99100)),	-- Mantle of Celestial Harmony
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(99107)),		-- Tunic of Celestial Harmony
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(99108)),	-- Handwraps of Celestial Harmony
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(99099)),		-- Legwraps of Celestial Harmony
						}),
						cl(MAGE, {
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(99161)),			-- Chronomancer Hood
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(99153)),	-- Chronomancer Mantle
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(99152)),		-- Chronomancer Robes
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(99160)),	-- Chronomancer Gloves
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(99162)),			-- Chronomancer Leggings
						}),
						cl(MONK, {
							-- DPS
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(99156)),		-- Headpiece of Seven Sacred Seals
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(99146)),	-- Spaulders of Seven Sacred Seals
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(99154)),		-- Tunic of Seven Sacred Seals
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(99155)),	-- Grips of Seven Sacred Seals
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(99145)),		-- Leggings of Seven Sacred Seals

							-- Healer
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(99148)),		-- Helm of Seven Sacred Seals
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(99151)),	-- Mantle of Seven Sacred Seals
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(99150)),		-- Vest of Seven Sacred Seals
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(99147)),	-- Handwraps of Seven Sacred Seals
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(99149)),		-- Legwraps of Seven Sacred Seals

							-- Tank
							tokencost(TOKENS.HEROIC.PROTECTOR.HELM, i(99142)),		-- Crown of Seven Sacred Seals
							tokencost(TOKENS.HEROIC.PROTECTOR.SHOULDERS, i(99144)),	-- Shoulderguards of Seven Sacred Seals
							tokencost(TOKENS.HEROIC.PROTECTOR.CHEST, i(99140)),		-- Chestguard of Seven Sacred Seals
							tokencost(TOKENS.HEROIC.PROTECTOR.GAUNTLETS, i(99141)),	-- Gauntlets of Seven Sacred Seals
							tokencost(TOKENS.HEROIC.PROTECTOR.LEGS, i(99143)),		-- Legguards of Seven Sacred Seals
						}),
						cl(WARLOCK, {
							tokencost(TOKENS.HEROIC.CONQUEROR.HELM, i(99097)),		-- Hood of the Horned Nightmare
							tokencost(TOKENS.HEROIC.CONQUEROR.SHOULDERS, i(99205)),	-- Mantle of the Horned Nightmare
							tokencost(TOKENS.HEROIC.CONQUEROR.CHEST, i(99204)),		-- Robes of the Horned Nightmare
							tokencost(TOKENS.HEROIC.CONQUEROR.GAUNTLETS, i(99096)),	-- Gloves of the Horned Nightmare
							tokencost(TOKENS.HEROIC.CONQUEROR.LEGS, i(99098)),		-- Leggings of the Horned Nightmare
						}),
						cl(DRUID, {
							-- DPS (Boomkin)
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(99175)),			-- Cover of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(99169)),	-- Shoulderwraps of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(99177)),		-- Vestment of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(99174)),	-- Gloves of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(99176)),			-- Leggings of the Shattered Vale

							-- DPS (Feral)
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(99182)),			-- Headpiece of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(99184)),	-- Spaulders of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(99180)),		-- Raiment of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(99181)),	-- Grips of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(99183)),			-- Legguards of the Shattered Vale

							-- Healer
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(99178)),			-- Helm of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(99173)),	-- Mantle of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(99172)),		-- Robes of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(99185)),	-- Handwraps of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(99171)),			-- Legwraps of the Shattered Vale

							-- Tank
							tokencost(TOKENS.HEROIC.VANQUISHER.HELM, i(99164)),			-- Headguard of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.SHOULDERS, i(99166)),	-- Shoulderguards of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.CHEST, i(99170)),		-- Tunic of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.GAUNTLETS, i(99163)),	-- Handguards of the Shattered Vale
							tokencost(TOKENS.HEROIC.VANQUISHER.LEGS, i(99165)),			-- Breeches of the Shattered Vale
						}),

						-- Tokens
						tokencost(TOKENS.HEROIC.CONQUEROR.ESSENCE, i(99689)),	-- Helm of the Cursed Conquerer
						tokencost(TOKENS.HEROIC.PROTECTOR.ESSENCE, i(99694)),	-- Helm of the Cursed Protector
						tokencost(TOKENS.HEROIC.VANQUISHER.ESSENCE, i(99683)),	-- Helm of the Cursed Vanquisher
						tokencost(TOKENS.HEROIC.CONQUEROR.ESSENCE, i(99690)),	-- Shoulders of the Cursed Conquerer
						tokencost(TOKENS.HEROIC.PROTECTOR.ESSENCE, i(99695)),	-- Shoulders of the Cursed Protector
						tokencost(TOKENS.HEROIC.VANQUISHER.ESSENCE, i(99685)),	-- Shoulders of the Cursed Vanquisher
						tokencost(TOKENS.HEROIC.CONQUEROR.ESSENCE, i(99686)),	-- Chest of the Cursed Conqueror
						tokencost(TOKENS.HEROIC.PROTECTOR.ESSENCE, i(99691)),	-- Chest of the Cursed Protector
						tokencost(TOKENS.HEROIC.VANQUISHER.ESSENCE, i(99696)),	-- Chest of the Cursed Vanquisher
						tokencost(TOKENS.HEROIC.CONQUEROR.ESSENCE, i(99687)),	-- Gauntlets of the Cursed Conquerer
						tokencost(TOKENS.HEROIC.PROTECTOR.ESSENCE, i(99692)),	-- Gauntlets of the Cursed Protector
						tokencost(TOKENS.HEROIC.VANQUISHER.ESSENCE, i(99682)),	-- Gauntlets of the Cursed Vanquisher
						tokencost(TOKENS.HEROIC.CONQUEROR.ESSENCE, i(99688)),	-- Leggings of the Cursed Conquerer
						tokencost(TOKENS.HEROIC.PROTECTOR.ESSENCE, i(99693)),	-- Leggings of the Cursed Protector
						tokencost(TOKENS.HEROIC.VANQUISHER.ESSENCE, i(99684)),	-- Leggings of the Cursed Vanquisher
					},
				}),
				n(SOO_RAID_MYTHIC_VENDOR, {
					["aqd"] = n(74027, {	-- Lorry Warmheart <Mythic Vendor> [A]
						["coord"] = { 43.1, 46.8, SHRINE_OF_SEVEN_STARS_THE_IMPERIAL_EXCHANGE },
					}),
					["hqd"] = n(74019, {	-- Tu'aho Pathcutter <Mythic Vendor> [H]
						["coord"] = { 43.4, 80.4, SHRINE_OF_TWO_MOONS_THE_IMPERIAL_MERCANTILE },
					}),
					["groups"] = {
						cl(WARRIOR, {
							-- DPS
							tokencost(TOKENS.MYTHIC.PROTECTOR.HELM, i(99418)),		-- Helmet of the Prehistoric Marauder
							tokencost(TOKENS.MYTHIC.PROTECTOR.SHOULDERS, i(99414)),	-- Pauldrons of the Prehistoric Marauder
							tokencost(TOKENS.MYTHIC.PROTECTOR.CHEST, i(99411)),		-- Battleplate of the Prehistoric Marauder
							tokencost(TOKENS.MYTHIC.PROTECTOR.GAUNTLETS, i(99412)),	-- Gauntlets of the Prehistoric Marauder
							tokencost(TOKENS.MYTHIC.PROTECTOR.LEGS, i(99413)),		-- Legplates of the Prehistoric Marauder

							-- Tank
							tokencost(TOKENS.MYTHIC.PROTECTOR.HELM, i(99409)),		-- Faceguard of the Prehistoric Marauder
							tokencost(TOKENS.MYTHIC.PROTECTOR.SHOULDERS, i(99407)),	-- Shoulderguards of the Prehistoric Marauder
							tokencost(TOKENS.MYTHIC.PROTECTOR.CHEST, i(99415)),		-- Chestguard of the Prehistoric Marauder
							tokencost(TOKENS.MYTHIC.PROTECTOR.GAUNTLETS, i(99408)),	-- Handguards of the Prehistoric Marauder
							tokencost(TOKENS.MYTHIC.PROTECTOR.LEGS, i(99410)),		-- Legguards of the Prehistoric Marauder
						}),
						cl(PALADIN, {
							-- DPS
							tokencost(TOKENS.MYTHIC.CONQUEROR.HELM, i(99379)),		-- Helmet of Winged Triumph
							tokencost(TOKENS.MYTHIC.CONQUEROR.SHOULDERS, i(99373)),	-- Pauldrons of Winged Triumph
							tokencost(TOKENS.MYTHIC.CONQUEROR.CHEST, i(99387)),		-- Battleplate of Winged Triumph
							tokencost(TOKENS.MYTHIC.CONQUEROR.GAUNTLETS, i(99380)),	-- Gauntlets of Winged Triumph
							tokencost(TOKENS.MYTHIC.CONQUEROR.LEGS, i(99372)),		-- Legplates of Winged Triumph

							-- Healer
							tokencost(TOKENS.MYTHIC.CONQUEROR.HELM, i(99376)),		-- Headguard of Winged Triumph
							tokencost(TOKENS.MYTHIC.CONQUEROR.SHOULDERS, i(99378)),	-- Mantle of Winged Triumph
							tokencost(TOKENS.MYTHIC.CONQUEROR.CHEST, i(99374)),		-- Breastplate of Winged Triumph
							tokencost(TOKENS.MYTHIC.CONQUEROR.GAUNTLETS, i(99375)),	-- Gloves of Winged Triumph
							tokencost(TOKENS.MYTHIC.CONQUEROR.LEGS, i(99377)),		-- Greaves of Winged Triumph

							-- Tank
							tokencost(TOKENS.MYTHIC.CONQUEROR.HELM, i(99370)),		-- Faceguard of Winged Triumph
							tokencost(TOKENS.MYTHIC.CONQUEROR.SHOULDERS, i(99364)),	-- Shoulderguards of Winged Triumph
							tokencost(TOKENS.MYTHIC.CONQUEROR.CHEST, i(99368)),		-- Chestguard of Winged Triumph
							tokencost(TOKENS.MYTHIC.CONQUEROR.GAUNTLETS, i(99369)),	-- Handguards of Winged Triumph
							tokencost(TOKENS.MYTHIC.CONQUEROR.LEGS, i(99371)),		-- Legguards of Winged Triumph
						}),
						cl(DEATHKNIGHT, {
							-- DPS
							tokencost(TOKENS.MYTHIC.VANQUISHER.HELM, i(99337)),			-- Helmet of Cyclopean Dread
							tokencost(TOKENS.MYTHIC.VANQUISHER.SHOULDERS, i(99339)),	-- Pauldrons of Cyclopean Dread
							tokencost(TOKENS.MYTHIC.VANQUISHER.CHEST, i(99335)),		-- Breastplate of Cyclopean Dread
							tokencost(TOKENS.MYTHIC.VANQUISHER.GAUNTLETS, i(99336)),	-- Gauntlets of Cyclopean Dread
							tokencost(TOKENS.MYTHIC.VANQUISHER.LEGS, i(99338)),			-- Greaves of Cyclopean Dread

							-- Tank
							tokencost(TOKENS.MYTHIC.VANQUISHER.HELM, i(99323)),			-- Faceguard of Cyclopean Dread
							tokencost(TOKENS.MYTHIC.VANQUISHER.SHOULDERS, i(99325)),	-- Shoulderguards of Cyclopean Dread
							tokencost(TOKENS.MYTHIC.VANQUISHER.CHEST, i(99330)),		-- Chestguard of Cyclopean Dread
							tokencost(TOKENS.MYTHIC.VANQUISHER.GAUNTLETS, i(99331)),	-- Handguards of Cyclopean Dread
							tokencost(TOKENS.MYTHIC.VANQUISHER.LEGS, i(99324)),			-- Legguards of Cyclopean Dread
						}),
						cl(HUNTER, {
							tokencost(TOKENS.MYTHIC.PROTECTOR.HELM, i(99402)),		-- Headguard of the Unblinking Vigil
							tokencost(TOKENS.MYTHIC.PROTECTOR.SHOULDERS, i(99404)),	-- Spaulders of the Unblinking Vigil
							tokencost(TOKENS.MYTHIC.PROTECTOR.CHEST, i(99405)),		-- Tunic of the Unblinking Vigil
							tokencost(TOKENS.MYTHIC.PROTECTOR.GAUNTLETS, i(99406)),	-- Gloves of the Unblinking Vigil
							tokencost(TOKENS.MYTHIC.PROTECTOR.LEGS, i(99403)),		-- Legguards of the Unblinking Vigil
						}),
						cl(ROGUE, {
							tokencost(TOKENS.MYTHIC.VANQUISHER.HELM, i(99348)),			-- Helmet of the Barbed Assassin
							tokencost(TOKENS.MYTHIC.VANQUISHER.SHOULDERS, i(99350)),	-- Spaulders of the Barbed Assassin
							tokencost(TOKENS.MYTHIC.VANQUISHER.CHEST, i(99356)),		-- Tunic of the Barbed Assassin
							tokencost(TOKENS.MYTHIC.VANQUISHER.GAUNTLETS, i(99355)),	-- Gloves of the Barbed Assassin
							tokencost(TOKENS.MYTHIC.VANQUISHER.LEGS, i(99349)),			-- Legguards of the Barbed Assassin
						}),
						cl(PRIEST, {
							-- DPS
							tokencost(TOKENS.MYTHIC.CONQUEROR.HELM, i(99360)),		-- Hood of the Ternion Glory
							tokencost(TOKENS.MYTHIC.CONQUEROR.SHOULDERS, i(99363)),	-- Shoulderguards of the Ternion Glory
							tokencost(TOKENS.MYTHIC.CONQUEROR.CHEST, i(99362)),		-- Raiment of the Ternion Glory
							tokencost(TOKENS.MYTHIC.CONQUEROR.GAUNTLETS, i(99359)),	-- Gloves of the Ternion Glory
							tokencost(TOKENS.MYTHIC.CONQUEROR.LEGS, i(99361)),		-- Leggings of Ternion Glory

							-- Healer
							tokencost(TOKENS.MYTHIC.CONQUEROR.HELM, i(99366)),		-- Cowl of the Ternion Glory
							tokencost(TOKENS.MYTHIC.CONQUEROR.SHOULDERS, i(99358)),	-- Mantle of the Ternion Glory
							tokencost(TOKENS.MYTHIC.CONQUEROR.CHEST, i(99357)),		-- Robes of the Ternion Glory
							tokencost(TOKENS.MYTHIC.CONQUEROR.GAUNTLETS, i(99365)),	-- Handwraps of the Ternion Glory
							tokencost(TOKENS.MYTHIC.CONQUEROR.LEGS, i(99367)),		-- Legwraps of Ternion Glory
						}),
						cl(SHAMAN, {
							-- DPS (Enhance)
							tokencost(TOKENS.MYTHIC.PROTECTOR.HELM, i(99341)),		-- Helmet of Celestial Harmony
							tokencost(TOKENS.MYTHIC.PROTECTOR.SHOULDERS, i(99343)),	-- Spaulders of Celestial Harmony
							tokencost(TOKENS.MYTHIC.PROTECTOR.CHEST, i(99347)),		-- Cuirass of Celestial Harmony
							tokencost(TOKENS.MYTHIC.PROTECTOR.GAUNTLETS, i(99340)),	-- Grips of Celestial Harmony
							tokencost(TOKENS.MYTHIC.PROTECTOR.LEGS, i(99342)),		-- Legguards of Celestial Harmony

							-- DPS (Elemental)
							tokencost(TOKENS.MYTHIC.PROTECTOR.HELM, i(99332)),		-- Headpiece of Celestial Harmony
							tokencost(TOKENS.MYTHIC.PROTECTOR.SHOULDERS, i(99334)),	-- Shoulderwraps of Celestial Harmony
							tokencost(TOKENS.MYTHIC.PROTECTOR.CHEST, i(99344)),		-- Hauberk of Celestial Harmony
							tokencost(TOKENS.MYTHIC.PROTECTOR.GAUNTLETS, i(99345)),	-- Gloves of Celestial Harmony
							tokencost(TOKENS.MYTHIC.PROTECTOR.LEGS, i(99333)),		-- Leggings of Celestial Harmony

							-- Healer
							tokencost(TOKENS.MYTHIC.PROTECTOR.HELM, i(99353)),		-- Faceguard of Celestial Harmony
							tokencost(TOKENS.MYTHIC.PROTECTOR.SHOULDERS, i(99346)),	-- Mantle of Celestial Harmony
							tokencost(TOKENS.MYTHIC.PROTECTOR.CHEST, i(99351)),		-- Tunic of Celestial Harmony
							tokencost(TOKENS.MYTHIC.PROTECTOR.GAUNTLETS, i(99352)),	-- Handwraps of Celestial Harmony
							tokencost(TOKENS.MYTHIC.PROTECTOR.LEGS, i(99354)),		-- Legwraps of Celestial Harmony
						}),
						cl(MAGE, {
							tokencost(TOKENS.MYTHIC.VANQUISHER.HELM, i(99398)),			-- Chronomancer Hood
							tokencost(TOKENS.MYTHIC.VANQUISHER.SHOULDERS, i(99401)),	-- Chronomancer Mantle
							tokencost(TOKENS.MYTHIC.VANQUISHER.CHEST, i(99400)),		-- Chronomancer Robes
							tokencost(TOKENS.MYTHIC.VANQUISHER.GAUNTLETS, i(99397)),	-- Chronomancer Gloves
							tokencost(TOKENS.MYTHIC.VANQUISHER.LEGS, i(99399)),			-- Chronomancer Leggings
						}),
						cl(MONK, {
							-- DPS
							tokencost(TOKENS.MYTHIC.PROTECTOR.HELM, i(99393)),		-- Headpiece of Seven Sacred Seals
							tokencost(TOKENS.MYTHIC.PROTECTOR.SHOULDERS, i(99395)),	-- Spaulders of Seven Sacred Seals
							tokencost(TOKENS.MYTHIC.PROTECTOR.CHEST, i(99396)),		-- Tunic of Seven Sacred Seals
							tokencost(TOKENS.MYTHIC.PROTECTOR.GAUNTLETS, i(99392)),	-- Grips of Seven Sacred Seals
							tokencost(TOKENS.MYTHIC.PROTECTOR.LEGS, i(99394)),		-- Leggings of Seven Sacred Seals

							-- Healer
							tokencost(TOKENS.MYTHIC.PROTECTOR.HELM, i(99389)),		-- Helm of Seven Sacred Seals
							tokencost(TOKENS.MYTHIC.PROTECTOR.SHOULDERS, i(99381)),	-- Mantle of Seven Sacred Seals
							tokencost(TOKENS.MYTHIC.PROTECTOR.CHEST, i(99391)),		-- Vest of Seven Sacred Seals
							tokencost(TOKENS.MYTHIC.PROTECTOR.GAUNTLETS, i(99388)),	-- Handwraps of Seven Sacred Seals
							tokencost(TOKENS.MYTHIC.PROTECTOR.LEGS, i(99390)),		-- Legwraps of Seven Sacred Seals

							-- Tank
							tokencost(TOKENS.MYTHIC.PROTECTOR.HELM, i(99384)),		-- Crown of Seven Sacred Seals
							tokencost(TOKENS.MYTHIC.PROTECTOR.SHOULDERS, i(99386)),	-- Shoulderguards of Seven Sacred Seals
							tokencost(TOKENS.MYTHIC.PROTECTOR.CHEST, i(99382)),		-- Chestguard of Seven Sacred Seals
							tokencost(TOKENS.MYTHIC.PROTECTOR.GAUNTLETS, i(99383)),	-- Gauntlets of Seven Sacred Seals
							tokencost(TOKENS.MYTHIC.PROTECTOR.LEGS, i(99385)),		-- Legguards of Seven Sacred Seals
						}),
						cl(WARLOCK, {
							tokencost(TOKENS.MYTHIC.CONQUEROR.HELM, i(99425)),		-- Hood of the Horned Nightmare
							tokencost(TOKENS.MYTHIC.CONQUEROR.SHOULDERS, i(99417)),	-- Mantle of the Horned Nightmare
							tokencost(TOKENS.MYTHIC.CONQUEROR.CHEST, i(99416)),		-- Robes of the Horned Nightmare
							tokencost(TOKENS.MYTHIC.CONQUEROR.GAUNTLETS, i(99424)),	-- Gloves of the Horned Nightmare
							tokencost(TOKENS.MYTHIC.CONQUEROR.LEGS, i(99426)),		-- Leggings of the Horned Nightmare
						}),
						cl(DRUID, {
							-- DPS (Boomkin)
							tokencost(TOKENS.MYTHIC.VANQUISHER.HELM, i(99433)),			-- Cover of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.SHOULDERS, i(99428)),	-- Shoulderwraps of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.CHEST, i(99427)),		-- Vestment of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.GAUNTLETS, i(99432)),	-- Gloves of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.LEGS, i(99434)),			-- Leggings of the Shattered Vale

							-- DPS (Feral)
							tokencost(TOKENS.MYTHIC.VANQUISHER.HELM, i(99328)),			-- Headpiece of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.SHOULDERS, i(99322)),	-- Spaulders of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.CHEST, i(99326)),		-- Raiment of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.GAUNTLETS, i(99327)),	-- Grips of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.LEGS, i(99329)),			-- Legguards of the Shattered Vale

							-- Healer
							tokencost(TOKENS.MYTHIC.VANQUISHER.HELM, i(99436)),			-- Helm of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.SHOULDERS, i(99431)),	-- Mantle of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.CHEST, i(99430)),		-- Robes of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.GAUNTLETS, i(99435)),	-- Handwraps of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.LEGS, i(99429)),			-- Legwraps of the Shattered Vale

							-- Tank
							tokencost(TOKENS.MYTHIC.VANQUISHER.HELM, i(99421)),			-- Headguard of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.SHOULDERS, i(99423)),	-- Shoulderguards of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.CHEST, i(99419)),		-- Tunic of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.GAUNTLETS, i(99420)),	-- Handguards of the Shattered Vale
							tokencost(TOKENS.MYTHIC.VANQUISHER.LEGS, i(99422)),			-- Breeches of the Shattered Vale
						}),

						-- Tokens
						tokencost(TOKENS.MYTHIC.CONQUEROR.ESSENCE, i(99724)),	-- Helm of the Cursed Conquerer
						tokencost(TOKENS.MYTHIC.PROTECTOR.ESSENCE, i(99725)),	-- Helm of the Cursed Protector
						tokencost(TOKENS.MYTHIC.VANQUISHER.ESSENCE, i(99723)),	-- Helm of the Cursed Vanquisher
						tokencost(TOKENS.MYTHIC.CONQUEROR.ESSENCE, i(99718)),	-- Shoulders of the Cursed Conqueror
						tokencost(TOKENS.MYTHIC.PROTECTOR.ESSENCE, i(99719)),	-- Shoulders of the Cursed Protector
						tokencost(TOKENS.MYTHIC.VANQUISHER.ESSENCE, i(99717)),	-- Shoulders of the Cursed Vanquisher
						tokencost(TOKENS.MYTHIC.CONQUEROR.ESSENCE, i(99715)),	-- Chest of the Cursed Conquerer
						tokencost(TOKENS.MYTHIC.PROTECTOR.ESSENCE, i(99716)),	-- Chest of the Cursed Protector
						tokencost(TOKENS.MYTHIC.VANQUISHER.ESSENCE, i(99714)),	-- Chest of the Cursed Vanquisher
						tokencost(TOKENS.MYTHIC.CONQUEROR.ESSENCE, i(99721)),	-- Gauntlets of the Cursed Conquerer
						tokencost(TOKENS.MYTHIC.PROTECTOR.ESSENCE, i(99722)),	-- Gauntlets of the Cursed Protector
						tokencost(TOKENS.MYTHIC.VANQUISHER.ESSENCE, i(99720)),	-- Gauntlets of the Cursed Vanquisher
						tokencost(TOKENS.MYTHIC.CONQUEROR.ESSENCE, i(99712)),	-- Leggings of the Cursed Conquerer
						tokencost(TOKENS.MYTHIC.PROTECTOR.ESSENCE, i(99713)),	-- Leggings of the Cursed Protector
						tokencost(TOKENS.MYTHIC.VANQUISHER.ESSENCE, i(99726)),	-- Leggings of the Cursed Vanquisher
					},
				}),
				n(72157, {	-- Hagrus <Reagents>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5643),	-- Recipe: Great Rage Potion (RECIPE!)
						i(5640),	-- Recipe: Rage Potion (RECIPE!)
					},
				}),
			}),
			d(CURRENT_ALL_DIFFICULTIES, {				-- All Difficulties (Also placeholders for achievement criteria, do not delete!)
				cr(71543, e(852, {	-- Immerseus

				})),
				e(849, {	-- The Fallen Protectors
					["crs"] = {
						71479,	-- He Softfoot [The Fallen Protectors]
						71475,	-- Rook Stonetoe [The Fallen Protectors]
						71480,	-- Sun Tenderheart [The Fallen Protectors]
					},
				}),
				e(866, {	-- Norushen
					["crs"] = {
						72276,	-- Amalgam of Corruption
						71965,	-- Norushen
					},
				}),
				cr(71734, e(867, {	-- Sha of Pride
					i(104162),	-- Droplet of Y'Shaarj (PET!)
					i(104163),	-- Gooey Sha-ling (PET!)
				})),
				cr(72249, e(881, {	-- Galakras

				})),
				cr(71466, e(864, {	-- Iron Juggernaut
					i(140783, {	-- Predictive Combat Operations Databank
						["timeline"] = { ADDED_7_0_3 },
					}),
				})),
				cr(71859, e(856, {	-- Kor'kron Dark Shaman (Earthbreaker Haromm)

				})),
				cr(71515, e(850, {	-- General Nazgrim

				})),
				cr(71454, e(846, {	-- Malkorok

				})),
				cr(71889, e(870, {	-- Spoils of Pandaria (Secured Stockpile of Pandaren Spoils)

				})),
				cr(71529, e(851, {	-- Thok the Bloodthirsty

				})),
				cr(71504, e(865, {	-- Siegecrafter Blackfuse
					i(104158),	-- Blackfuse Bombling (PET!)
				})),
				e(853, {	-- Paragons of the Klaxxi
					["crs"] = {
						71153,	-- Hisek the Swarmkeeper
						71160,	-- Iyyokuk the Lucid
						71154,	-- Ka'roz the Locust
						71156,	-- Kaz'tik the Manipulator
						71161,	-- Kil'ruk the Wind-Reaver
						71155,	-- Korven the Prime
						71157,	-- Xaril the Poisoned Mind
						71158,	-- Rik'kal the Dissector
						71152,	-- Skeer the Bloodseeker
					},
					["groups"] = {
						i(104165),	-- Kovok (PET!)
						title(231, {	-- <Name> the Poisoned Mind
							["collectible"] = false,
						}),
						title(232, {	-- <Name> the Bloodseeker
							["collectible"] = false,
						}),
						title(233, {	-- <Name> the Locust
							["collectible"] = false,
						}),
						title(234, {	-- <Name> the Swarmkeeper
							["collectible"] = false,
						}),
						title(235, {	-- <Name> the Prime
							["collectible"] = false,
						}),
						title(236, {	-- <Name> the Manipulator
							["collectible"] = false,
						}),
						title(237, {	-- <Name> the Dissector
							["collectible"] = false,
						}),
						title(238, {	-- <Name> the Lucid
							["collectible"] = false,
						}),
						title(239, {	-- <Name> the Wind-Reaver
							["collectible"] = false,
						}),
					},
				}),
				cr(71865, e(869, {	-- Garrosh Hellscream
					i(253242, {["timeline"] = { ADDED_11_2_7 }}),	-- Horde Warlord's Throne (DECOR!)
				})),
			}),
			-- #if NOT ANYCLASSIC
			d(DIFFICULTY.LEGACY_RAID.FINDER, {			-- Raid Finder (Removed with Patch 6.0.2) >> Items marked "Raid Finder" after 6.0 <<
				-- #if AFTER 6.0.2
				["description"] = "This was the original Raid Finder difficulty. Previously, loot had unique item IDs for each difficulty tier as well as their Warforged variants similar to how ToT was done. Blizzard changed their design philosophy for the better with Patch 6.0 and chose to reuse an item's ID and apply a bonus ID rather than creating a brand new item ID with the same base stats.",
				-- #endif
				["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				["ignoreBonus"] = true,
				["groups"] = {
					-- #if BEFORE 6.0.2
					n(COMMON_BOSS_DROPS, {
						COALESCED_TURMOIL,
						TWISTED_TREASURES_OF_THE_VALE,
					}),
					-- #endif
					header(HEADERS.Achievement, 8458, {	-- Vale of Eternal Sorrows
						cr(71543, e(852, {	-- Immerseus
							i(104920),	-- Bolt-Burster Grips LFR
							i(104927),	-- Bracers of Purified Spirit LFR
							i(104917),	-- Bracers of Sordid Sleep LFR
							i(104913),	-- Bubble-Burst Bracers LFR
							i(104914),	-- Chestplate of Congealed Corrosion LFR
							i(104923),	-- Cloak of Misguided Power LFR
							i(104915),	-- Corruption-Rotted Gauntlets LFR
							i(104919),	-- Encapsulated Essence of Immerseus LFR
							i(104929),	-- Greatbelt of Living Waters LFR
							i(104911),	-- Hood of Blackened Tears LFR
							i(104922),	-- Hood of Swirling Senses LFR
							i(104921),	-- Ichor-Dripping Shoulderpads LFR
							i(104909),	-- Immerseus' Crystalline Eye LFR
							i(104918),	-- Pauldrons of Violent Eruption LFR
							i(104912),	-- Puddle Punishers LFR
							i(104924),	-- Purified Bindings of Immerseus LFR
							i(104926),	-- Salt Water Sandals LFR
							i(104925),	-- Seal of Eternal Sorrow LFR
							i(104928),	-- Soul-Soaked Gloves LFR
							i(104916),	-- Treads of Unchained Hate LFR
							i(104910),	-- Trident of Corrupted Waters LFR
							i(104930),	-- Waterwalker Greatboots LFR
						})),
						e(849, {	-- The Fallen Protectors
							["crs"] = {
								71479,	-- He Softfoot [The Fallen Protectors]
								71475,	-- Rook Stonetoe [The Fallen Protectors]
								71480,	-- Sun Tenderheart [The Fallen Protectors]
							},
							["groups"] = {
								i(104936),	-- Darkfallen Shoulderplates LFR
								i(104931),	-- Death Lotus Crossbow LFR
								i(104951),	-- Gaze of Echoing Despair LFR
								i(104939),	-- Gloomwrap Greatcloak LFR
								i(104950),	-- Grips of the Fallen Council LFR
								i(104934),	-- Grips of Unending Anguish LFR
								i(104944),	-- Lifebane Bracers LFR
								i(104945),	-- Petrified Pennyroyal Ring LFR
								i(104935),	-- Poisonbinder Girth LFR
								i(104946),	-- Purehearted Cricket Cage LFR
								i(104942),	-- Robes of the Tendered Heart LFR
								i(104940),	-- Rook's Unlucky Talisman LFR
								i(104948),	-- Sabatons of Defilement LFR
								i(104941),	-- Sha-Seared Sandals LFR
								i(104937),	-- Shockstriker Gauntlets LFR
								i(104949),	-- Shoulderguards of Dark Meditations LFR
								i(104943),	-- Shoulderpads of Dou Dou Chong LFR
								i(104947),	-- Shoulders of the Roiling Inferno LFR
								i(104932),	-- Softfoot's Last Resort LFR
								i(104938),	-- Sorrowpath Signet LFR
								i(104933),	-- Stonetoe's Tormented Treads LFR
							},
						}),
						e(866, {	-- Norushen
							["crs"] = {
								71965,	-- Norushen
								72276,	-- Amalgam of Corruption
							},
							["groups"] = {
								i(104964),	-- Blight Hurlers LFR
								i(104969),	-- Boots of Broken Reliance LFR
								i(104958),	-- Bracers of Blind Hatred LFR
								i(104963),	-- Bracers of Broken Causation LFR
								i(104971),	-- Bracers of Final Serenity LFR
								i(104970),	-- Confident Grips LFR
								i(104960),	-- Drape of the Despairing Pit LFR
								i(104961),	-- Fusion-Fire Core LFR
								i(104955),	-- Gloves of the Golden Protector LFR
								i(104956),	-- Leggings of Unabashed Anger LFR
								i(104968),	-- Norushen's Enigmatic Barrier LFR
								i(104952),	-- Norushen's Shortblade LFR
								i(104957),	-- Quarantine Shoulderguards LFR
								i(104959),	-- Rage-Blind Greathelm LFR
								i(104953),	-- Reality Ripper Ring LFR
								i(104966),	-- Rime-Rift Shoulders LFR
								i(104954),	-- Robes of the Blackened Watcher LFR
								i(104965),	-- Sash of the Last Guardian LFR
								i(104972),	-- Shadow-Binder's Kilt LFR
								i(104967),	-- Untainted Guardian's Chain LFR
								i(104973),	-- Wristplates of Broken Doubt LFR
								i(104962),	-- Xifeng, Longblade of the Titanic Guardian LFR
							},
						}),
						cr(71734, e(867, {	-- Sha of Pride
							-- #if BEFORE 6.0.2
							ig(99678),	-- Chest of the Cursed Conqueror
							ig(99679),	-- Chest of the Cursed Protector
							ig(99677),	-- Chest of the Cursed Vanquisher
							-- #endif
							i(104974),	-- Assurance of Consequence LFR
							i(104982),	-- Choker of the Final Word LFR
							i(104979),	-- Crown of Boastful Words LFR
							i(104977),	-- Gaze of Arrogance LFR
							i(104981),	-- Greatsword of Pride's Fall LFR
							i(104980),	-- Greaves of Sublime Superiority LFR
							i(104975),	-- Necklace of Fading Light LFR
							i(104976),	-- Prismatic Prison of Pride LFR
							i(104978),	-- Self-Reflecting Mask LFR
							i(104983),	-- Shield of Mockery LFR
						})),
					}),
					header(HEADERS.Achievement, 8459, {	-- Gates of Retribution
						cr(72249, e(881, {	-- Galakras
							i(104991),	-- Arcsmasher Bracers LFR
							i(104995),	-- Bone-Inlaid Sandals LFR
							i(104988),	-- Cannoneer's Multipocket Gunbelt LFR
							i(104984),	-- Dagryn's Discarded Longbow LFR
							i(104989),	-- Dagryn's Fuselight Bracers LFR
							i(105002),	-- Dragonmaw Emergency Strap LFR
							i(105001),	-- Drakebinder Greatstaff LFR
							i(104993),	-- Evil Eye of Galakras LFR
							i(105000),	-- Extinguished Ember of Galakras LFR
							i(104997),	-- Flameslinger's Fiery Cowl LFR
							i(104994),	-- Galakrond Control Band LFR
							i(105003),	-- Grips of Tidal Force LFR
							i(104987),	-- Korgra's Venom-Soaked Gauntlets LFR
							i(104992),	-- Krugruk's Rigid Shoulderplates LFR
							i(104996),	-- Scalebane Bracers LFR
							i(104999),	-- Shoulderpads of Pulsing Protection LFR
							i(104998),	-- Skydancer Boots LFR
							i(105004),	-- Smoldering Drakescale Bracers LFR
							i(104985),	-- Swift Serpent Signet LFR
							i(104990),	-- Thranok's Shattering Helm LFR
							i(104737),	-- Unrepentant Heels LFR
							i(105005),	-- Windfire Legplates LFR
						})),
						cr(71466, e(864, {	-- Iron Juggernaut
							i(105017),	-- Belt of Ominous Trembles LFR
							i(105027),	-- Borer Drill Boots LFR
							i(105019),	-- Bracers of the Broken Fault LFR
							i(105024),	-- Castlebreaker Bracers LFR
							i(105026),	-- Cavemaker Wristguards LFR
							i(105011),	-- Demolisher's Reinforced Belt LFR
							i(105014),	-- Earthbreaker's Steaming Chestplate LFR
							i(105020),	-- Earthripper Gloves LFR
							i(105016),	-- Juggernaut's Focusing Crystal LFR
							i(105015),	-- Juggernaut's Ignition Keys LFR
							i(105023),	-- Juggernaut's Power Core LFR
							i(105007),	-- Laser Burn Bracers LFR
							i(105022),	-- Laser-Slice Signet LFR
							i(105018),	-- Leggings of Furious Flame LFR
							i(105009),	-- Minelayer's Padded Boots LFR
							i(105010),	-- Precision Cutters LFR
							i(105008),	-- Ricocheting Shoulderguards LFR
							i(105006),	-- Seismic Bore LFR
							i(105021),	-- Shock Pulse Robes LFR
							i(105013),	-- Tar-Coated Gauntlets LFR
							i(105025),	-- Treads of Autonomic Motion LFR
							i(105012),	-- Wall-Borer Bracers LFR
						})),
						cr(71859, e(856, {	-- Kor'kron Dark Shaman (Earthbreaker Haromm)
							i(105035),	-- Ashen Wall Girdle LFR
							i(105041),	-- Ashflare Pendant LFR
							i(105045),	-- Belt of the Iron Prison LFR
							i(105036),	-- Bloodclaw Band LFR
							i(105034),	-- Breastplate of Shamanic Mirrors LFR
							i(105030),	-- Damron's Belt of Darkness LFR
							i(105044),	-- Darkfang Mask LFR
							i(105037),	-- Haromm's Frozen Crescent LFR
							i(105032),	-- Haromm's Horrifying Helm LFR
							i(105029),	-- Haromm's Talisman LFR
							i(105040),	-- Iron Wolf Hood LFR
							i(105043),	-- Kardris' Scepter LFR
							i(105042),	-- Kardris' Toxic Totem LFR
							i(105028),	-- Poisonmist Nightcloak LFR
							i(105038),	-- Ring of the Iron Tomb LFR
							i(105031),	-- Riou's Vigilant Leggings LFR
							i(105047),	-- Shackles of Stinking Slime LFR
							i(105046),	-- Shoulderguards of Foul Streams LFR
							i(105048),	-- Shoulderplates of Gushing Geysers LFR
							i(105039),	-- Toxic Tornado Treads LFR
							i(105033),	-- Wolf-Rider Spurs LFR
						})),
						cr(71515, e(850, {	-- General Nazgrim
							-- #if BEFORE 6.0.2
							ig(99681),	-- Gauntlets of the Cursed Conqueror
							ig(99667),	-- Gauntlets of the Cursed Protector
							ig(99680),	-- Gauntlets of the Cursed Vanquisher
							-- #endif
							i(105052),	-- Arcweaver Spell Sword LFR
							i(105058),	-- Bulwark of the Fallen General LFR
							i(105056),	-- Crown of Tragic Truth LFR
							i(105057),	-- Gar'tok, Strength of the Faithful LFR
							i(105051),	-- Nazgrim's Burnished Insignia LFR
							i(105049),	-- Nazgrim's Gutripper LFR
							i(105055),	-- Ravager's Pathwalkers LFR
							i(105054),	-- Robes of the Warrior's Fall LFR
							i(105050),	-- Sandals of Two Little Bees LFR
							i(105053),	-- Shoulderguards of the Righteous Stand LFR
							i(105059),	-- Spaulders of Kor'kron Fealty LFR
						})),
					}),
					header(HEADERS.Achievement, 8461, {	-- The Underhold
						cr(71454, e(846, {	-- Malkorok
							i(105075),	-- Black-Blooded Drape LFR
							i(105066),	-- Blood Rage Bracers LFR
							i(105078),	-- Boots of Perilous Infusion LFR
							i(105079),	-- Bracers of Averted Fatality LFR
							i(105080),	-- Ebon Blood Chestguard LFR
							i(105074),	-- Frenzied Crystal of Rage LFR
							i(105062),	-- Halberd of Inner Shadows LFR
							i(105072),	-- Hood of Perpetual Implosion LFR
							i(105061),	-- Kor'kron Hand Cannon LFR
							i(105063),	-- Lazahk's Lost Shadowrap LFR
							i(105067),	-- Legplates of Willful Doom LFR
							i(105065),	-- Malkorok's Giant Stompers LFR
							i(105069),	-- Malkorok's Skullcleaver LFR
							i(105068),	-- Malkorok's Tainted Dog Tags LFR
							i(105071),	-- Miasmic Skullbelt LFR
							i(105060),	-- Ring of Restless Energy LFR
							i(105073),	-- Robes of Riven Dreams LFR
							i(105076),	-- Seal of Sullen Fury LFR
							i(105081),	-- Terrorguard Chestplate LFR
							i(105070),	-- Vial of Living Corruption LFR
							i(105077),	-- Visage of the Monstrous LFR
							i(105064),	-- Wristguards of Ruination LFR
						})),
						cr(71889, e(870, {	-- Spoils of Pandaria (Secured Stockpile of Pandaren Spoils)
							i(105087),	-- Ancient Archer's Chestguard LFR
							i(105092),	-- Ancient Mogu Tower Shield LFR
							i(105086),	-- Arrowflight Girdle LFR
							i(105093),	-- Avool's Ancestral Bracers LFR
							i(105100),	-- Bracers of the Pristine Purifier LFR
							i(105099),	-- Chitin-Link Chain Belt LFR
							i(105083),	-- Enchanted Shao-Tien Saber LFR
							i(105088),	-- Helm of the Night Watchman LFR
							i(105096),	-- Immaculately Preserved Wand LFR
							i(105097),	-- Klaxxi Grips of Rejuvenation LFR
							i(105095),	-- Lost Necklace of the Mogu Empress LFR
							i(105085),	-- Mantid Carapace Augments LFR
							i(105094),	-- Mantid Vizier's Robes LFR
							i(105102),	-- Mogu Mindbender's Greaves LFR
							i(105090),	-- Ominous Mogu Greatboots LFR
							i(105084),	-- Pandaren Roofsprinters LFR
							i(105101),	-- Plate Belt of the War-Healer LFR
							i(105091),	-- Seal of the Forgotten Kings LFR
							i(105098),	-- Shado-Pan Reliquary Kilt LFR
							i(105082),	-- Sigil of Rampage LFR
							i(105089),	-- Untarnishable Greatbelt LFR
						})),
						cr(71529, e(851, {	-- Thok the Bloodthirsty
							-- #if BEFORE 6.0.2
							ig(99672),	-- Helm of the Cursed Conqueror
							ig(99673),	-- Helm of the Cursed Protector
							ig(99671),	-- Helm of the Cursed Vanquisher
							-- #endif
							i(105106),	-- Akolik's Acid-Soaked Robes LFR
							i(105112),	-- Britomart's Jagged Pike LFR
							i(105113),	-- Devilfang Band LFR
							i(105107),	-- Festering Primordial Globule LFR
							i(105104),	-- Gleaming Eye of the Devilsaur LFR
							i(105103),	-- Hvitserk's Formidable Shanker LFR
							i(105110),	-- Icy Blood Chestplate LFR
							i(105105),	-- Montak's Grips of Scorching Breath LFR
							i(105108),	-- Signet of the Dinomancers LFR
							i(105109),	-- Thok's Acid-Grooved Tooth LFR
							i(105111),	-- Thok's Tail Tip LFR
						})),
					}),
					header(HEADERS.Achievement, 8462, {	-- Downfall
						cr(71504, e(865, {	-- Siegecrafter Blackfuse
							-- #if BEFORE 6.0.2
							ig(99669),	-- Shoulders of the Cursed Conqueror
							ig(99670),	-- Shoulders of the Cursed Protector
							ig(99668),	-- Shoulders of the Cursed Vanquisher
							-- #endif
							i(105122),	-- Asgorathian Blood Seal LFR
							i(105124),	-- Blackfuse's Blasting Cord LFR
							i(105118),	-- Bomber's Blackened Wristwatch LFR
							i(105119),	-- Bracers of Infinite Pipes LFR
							i(105121),	-- Calixian Bladebreakers LFR
							i(105117),	-- Dysmorphic Samophlange of Discontinuity LFR
							i(105115),	-- Fusespark Gloves LFR
							i(105116),	-- Lever of the Megantholithic Apparatus LFR
							i(105120),	-- Powder-Stained Totemic Treads LFR
							i(105123),	-- Siegecrafter's Forge Hammer LFR
							i(105114),	-- Ticking Ebon Detonator LFR
						})),
						e(853, {	-- Paragons of the Klaxxi
							["crs"] = {
								71153,	-- Hisek the Swarmkeeper
								71160,	-- Iyyokuk the Lucid
								71154,	-- Ka'roz the Locust
								71156,	-- Kaz'tik the Manipulator
								71161,	-- Kil'ruk the Wind-Reaver
								71155,	-- Korven the Prime
								71157,	-- Xaril the Poisoned Mind
								71158,	-- Rik'kal the Dissector
								71152,	-- Skeer the Bloodseeker
							},
							["groups"] = {
								-- #if BEFORE 6.0.2
								ig(99675),	-- Leggings of the Cursed Conqueror
								ig(99676),	-- Leggings of the Cursed Protector
								ig(99674),	-- Leggings of the Cursed Vanquisher
								-- #endif
								i(105131),	-- Amber Parasite Wraps LFR
								i(105128),	-- Bracers of Sonic Projection LFR
								i(105132),	-- Chestguard of Toxic Injections LFR
								i(105133),	-- Gauntlets of Insane Calculations LFR
								i(105125),	-- Hisek's Reserve Longbow LFR
								i(105130),	-- Iyyokuk's Hereditary Seal LFR
								i(105126),	-- Kil'ruk's Band of Ascendancy LFR
								i(105135),	-- Kil'ruk's Furious Blade LFR
								i(105127),	-- Korven's Crimson Crescent LFR
								i(105129),	-- Rik'kal's Bloody Scalpel LFR
								i(105134),	-- Skeer's Bloodsoaked Talisman LFR
							},
						}),
						cr(71865, e(869, {	-- Garrosh Hellscream
							-- #if BEFORE 6.0.2
							ig(105861),	-- Essence of the Cursed Conqueror
							ig(105860),	-- Essence of the Cursed Protector
							ig(105862),	-- Essence of the Cursed Vanquisher
							-- #endif
							i(105148),	-- Belt of the Broken Pact LFR
							i(105150),	-- Black Blood of Y'Shaarj LFR
							i(105139),	-- Chestguard of Relentless Tyranny LFR
							i(105156),	-- Chestplate of Fallen Passion LFR
							i(105137),	-- Cord of Black Dreams LFR
							i(105155),	-- Cowl of Smoking Dreams LFR
							i(105147),	-- Curse of Hubris LFR
							i(105149),	-- Ebon Ritual Hood LFR
							i(105145),	-- Greathelm of the Warchief LFR
							i(105154),	-- Hopeglow Spaulders LFR
							i(105151),	-- Horned Mace of the Old Ones LFR
							i(105138),	-- Kor'kron Elite Skullmask LFR
							i(105136),	-- Kor'kron Spire of Supremacy LFR
							i(105142),	-- Legplates of Unthinking Strife LFR
							i(105157),	-- Mantle of Looming Darkness LFR
							i(105140),	-- Penetrating Gaze of Y'Shaarj LFR
							i(105152),	-- Revelations of Y'Shaarj LFR
							i(105153),	-- Seal of Karmic Return LFR
							i(105141),	-- Shoulderguards of Intended Power LFR
							i(105143),	-- Spaulders of the Fallen Warchief LFR
							i(105146),	-- Xal'atoh, Desecrated Image of Gorehowl LFR
						})),
					}),
				},
			}),
			d(DIFFICULTY.RAID.LFR, {					-- Raid Finder (Added with Patch 6.0.2)
				["crs"] = { 80633 },	-- Lorewalker Han <Raid Finder Storyteller>
				["coord"] = { 83.0, 30.6, VALE_OF_ETERNAL_BLOSSOMS },
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					-- #if AFTER 6.0.2
					n(COMMON_BOSS_DROPS, {
						COALESCED_TURMOIL,
						TWISTED_TREASURES_OF_THE_VALE,
					}),
					-- #endif
					header(HEADERS.Achievement, 8458, {	-- Vale of Eternal Sorrows
						cr(71543, e(852, {	-- Immerseus
							i(110784),	-- Trident of Corrupted Waters
							i(110785),	-- Encapsulated Essence of Immerseus
							i(112382),	-- Hood of Blackened Tears
							i(112424),	-- Hood of Swirling Senses
							i(110761),	-- Immerseus' Crystalline Eye
							i(112423),	-- Ichor-Dripping Shoulderpads
							i(112421),	-- Pauldrons of Violent Eruption
							i(112425),	-- Cloak of Misguided Power
							i(112417),	-- Chestplate of Congealed Corrosion
							i(112429),	-- Bracers of Purified Spirit
							i(112420),	-- Bracers of Sordid Sleep
							i(112416),	-- Bubble-Burst Bracers
							i(112422),	-- Bolt-Burster Grips
							i(112418),	-- Corruption-Rotted Gauntlets
							i(112445),	-- Soul-Soaked Gloves
							i(112447),	-- Greatbelt of Living Waters
							i(112383),	-- Puddle Punishers
							i(112428),	-- Salt Water Sandals
							i(112419),	-- Treads of Unchained Hate
							i(112448),	-- Waterwalker Greatboots
							i(112427),	-- Seal of Eternal Sorrow
							i(112426),	-- Purified Bindings of Immerseus
						})),
						e(849, {	-- The Fallen Protectors
							["crs"] = {
								71479,	-- He Softfoot [The Fallen Protectors]
								71475,	-- Rook Stonetoe [The Fallen Protectors]
								71480,	-- Sun Tenderheart [The Fallen Protectors]
							},
							["groups"] = {
								i(112477),	-- Softfoot's Last Resort
								i(112478),	-- Death Lotus Crossbow
								i(112491),	-- Purehearted Cricket Cage
								i(112496),	-- Gaze of Echoing Despair
								i(112481),	-- Darkfallen Shoulderplates
								i(112494),	-- Shoulderguards of Dark Meditations
								i(112488),	-- Shoulderpads of Dou Dou Chong
								i(112492),	-- Shoulders of the Roiling Inferno
								i(112485),	-- Gloomwrap Greatcloak
								i(112487),	-- Robes of the Tendered Heart
								i(112489),	-- Lifebane Bracers
								i(112495),	-- Grips of the Fallen Council
								i(112480),	-- Grips of Unending Anguish
								i(112483),	-- Shockstriker Gauntlets
								i(112482),	-- Poisonbinder Girth
								i(112493),	-- Sabatons of Defilement
								i(112486),	-- Sha-Seared Sandals
								i(112479),	-- Stonetoe's Tormented Treads
								i(112490),	-- Petrified Pennyroyal Ring
								i(112484),	-- Sorrowpath Signet
								i(112476),	-- Rook's Unlucky Talisman
							},
						}),
						e(866, {	-- Norushen
							["crs"] = {
								71965,	-- Norushen
								72276,	-- Amalgam of Corruption
							},
							["groups"] = {
								i(112547),	-- Norushen's Shortblade
								i(112546),	-- Xifeng, Longblade of the Titanic Guardian
								i(112560),	-- Norushen's Enigmatic Barrier
								i(112552),	-- Rage-Blind Greathelm
								i(112559),	-- Untainted Guardian's Chain
								i(112550),	-- Quarantine Shoulderguards
								i(112558),	-- Rime-Rift Shoulders
								i(112554),	-- Drape of the Despairing Pit
								i(112549),	-- Robes of the Blackened Watcher
								i(112545),	-- Bracers of Blind Hatred
								i(112555),	-- Bracers of Broken Causation
								i(112563),	-- Bracers of Final Serenity
								i(112565),	-- Wristplates of Broken Doubt
								i(112556),	-- Blight Hurlers
								i(112562),	-- Confident Grips
								i(112548),	-- Gloves of the Golden Protector
								i(112557),	-- Sash of the Last Guardian
								i(112551),	-- Leggings of Unabashed Anger
								i(112564),	-- Shadow-Binder's Kilt
								i(112561),	-- Boots of Broken Reliance
								i(112553),	-- Reality Ripper Ring
								i(112503),	-- Fusion-Fire Core
							},
						}),
						cr(71734, e(867, {	-- Sha of Pride
							ig(99678),	-- Chest of the Cursed Conqueror
							ig(99679),	-- Chest of the Cursed Protector
							ig(99677),	-- Chest of the Cursed Vanquisher
							i(112951),	-- Gaze of Arrogance
							i(112949),	-- Greatsword of Pride's Fall
							i(112950),	-- Shield of Mockery
							i(112702),	-- Crown of Boastful Words
							i(112952),	-- Self-Reflecting Mask
							i(112955),	-- Choker of the Final Word
							i(112954),	-- Necklace of Fading Light
							i(112953),	-- Greaves of Sublime Superiority
							i(112947),	-- Assurance of Consequence
							i(112948),	-- Prismatic Prison of Pride
						})),
					}),
					header(HEADERS.Achievement, 8459, {	-- Gates of Retribution
						cr(72249, e(881, {	-- Galakras
							i(112723),	-- Drakebinder Greatstaff
							i(112710),	-- Dagryn's Discarded Longbow
							i(112717),	-- Flameslinger's Fiery Cowl
							i(112713),	-- Thranok's Shattering Helm
							i(112705),	-- Kruguk's Rigid Shoulderplates
							i(112719),	-- Shoulderpads of Pulsing Protection
							i(112704),	-- Arcsmasher Bracers
							i(112712),	-- Dagryn's Fuselight Bracers
							i(112716),	-- Scalebone Bracers
							i(112727),	-- Smoldering Drakescale Bracers
							i(112726),	-- Grips of Tidal Force
							i(112707),	-- Korgra's Venom-Soaked Gauntlets
							i(112711),	-- Cannoneer's Multipocket Gunbelt
							i(112725),	-- Dragonmaw Emergency Strap
							i(112728),	-- Windfire Legplates
							i(112715),	-- Bone-Inlaid Sandals
							i(112718),	-- Skydancer Boots
							i(112706),	-- Unrepentant Heels
							i(112721),	-- Extinguished Ember of Galakras
							i(112714),	-- Galakrond Control Band
							i(112709),	-- Swift Serpent Signet
							i(112703),	-- Evil Eye of Galakras
						})),
						cr(71466, e(864, {	-- Iron Juggernaut
							i(112736),	-- Seismic Bore
							i(112748),	-- Juggernaut's Power Core
							i(112742),	-- Juggernaut's Ignition Keys
							i(112740),	-- Ricocheting Shoulderguards
							i(112741),	-- Earthbreaker's Steaming Chestplate
							i(112746),	-- Shock Pulse Robes
							i(112745),	-- Bracers of the Broken Fault
							i(112749),	-- Castlebreaker Bracers
							i(112751),	-- Cavemaker Wristguards
							i(112739),	-- Laser Burn Bracers
							i(112733),	-- Wall-Borer Bracers
							i(112946),	-- Earthripper Gloves
							i(112734),	-- Precision Cutters
							i(112732),	-- Tar-Coated Gauntlets
							i(112743),	-- Belt of Ominous Trembles
							i(112735),	-- Demolisher's Reinforced Belt
							i(112744),	-- Leggings of Furious Flame
							i(112752),	-- Borer Drill Boots
							i(112731),	-- Minelayer's Padded Boots
							i(112750),	-- Treads of Autonomic Motion
							i(112747),	-- Laser-Slice Signet
							i(112729),	-- Juggernaut's Focusing Crystal

						})),
						cr(71859, e(856, {	-- Kor'kron Dark Shaman (Earthbreaker Haromm)
							i(112759),	-- Haromm's Frozen Crescent
							i(112769),	-- Kardris' Scepter
							i(112770),	-- Darkfang Mask
							i(112762),	-- Haromm's Horrifying Helm
							i(112766),	-- Iron Wolf Hood
							i(112767),	-- Ashflare Pendant
							i(112772),	-- Shoulderguards of Foul Streams
							i(112774),	-- Shoulderplates of Gushing Geysers
							i(112764),	-- Poisonmist Nightcloak
							i(112755),	-- Breastplate of Shamanic Mirrors
							i(112773),	-- Shackles of Stinking Slime
							i(112763),	-- Ashen Wall Girdle
							i(112771),	-- Belt of the Iron Prison
							i(112760),	-- Damron's Belt of Darkness
							i(112761),	-- Riou's Vigilant Leggings
							i(112765),	-- Toxic Tornado Treads
							i(112757),	-- Wolf-Rider Spurs
							i(112756),	-- Bloodclaw Band
							i(112758),	-- Ring of the Iron Tomb
							i(112754),	-- Haromm's Talisman
							i(112768),	-- Kardris' Toxic Totem
						})),
						cr(71515, e(850, {	-- General Nazgrim
							ig(99681),	-- Gauntlets of the Cursed Conqueror
							ig(99667),	-- Gauntlets of the Cursed Protector
							ig(99680),	-- Gauntlets of the Cursed Vanquisher
							i(112785),	-- Gar'tok, Strength of the Faithful
							i(112787),	-- Arcweaver Spell Sword
							i(112780),	-- Naz'grim's Gutripper
							i(112781),	-- Bulwark of the Fallen General
							i(112789),	-- Crown of Tragic Truth
							i(112783),	-- Shoulderguards of the Righteous Stand
							i(112790),	-- Spaulders of Kor'kron Fealty
							i(112788),	-- Robes of the Warrior's Fall
							i(112779),	-- Ravager's Pathwalkers
							i(112782),	-- Sandals of Two Little Bees
							i(112778),	-- Nazgrim's Burnished Insignia
						})),
					}),
					header(HEADERS.Achievement, 8461, {	-- The Underhold
						cr(71454, e(846, {	-- Malkorok
							i(112805),	-- Halberd of Inner Shadows
							i(112804),	-- Malkorok's Skullcleaver
							i(112806),	-- Kor'kron Hand Cannon
							i(112818),	-- Visage of the Monstrous
							i(112813),	-- Hood of Perpetual Implosion
							i(112803),	-- Malkorok's Tainted Dog Tags
							i(112816),	-- Black-Blooded Drape
							i(112821),	-- Ebon Blood Chestguard
							i(112794),	-- Lazahk's Lost Shadowrap
							i(112814),	-- Robes of Riven Dreams
							i(112823),	-- Terrorguard Chestplate
							i(112793),	-- Blood Rage Bracers
							i(112820),	-- Bracers of Averted Fatality
							i(112797),	-- Wristguards of Ruination
							i(112808),	-- Miasmic Skullbelt
							i(112807),	-- Legplates of Willful Doom
							i(112819),	-- Boots of Perilous Infusion
							i(112796),	-- Malkorok's Giant Stompers
							i(112795),	-- Ring of Restless Energy
							i(112817),	-- Seal of Sullen Fury
							i(112815),	-- Frenzied Crystal of Rage
							i(112792),	-- Vial of Living Corruption
						})),
						cr(71889, e(870, {	-- Spoils of Pandaria (Secured Stockpile of Pandaren Spoils)
							i(112835),	-- Enchanted Shao-Tien Saber
							i(112841),	-- Immaculately Preserved Wand
							i(112829),	-- Ancient Mogu Tower Shield
							i(112832),	-- Helm of the Night Watchman
							i(112839),	-- Lost Necklace of the Mogu Empress
							i(112836),	-- Ancient Archer's Chestguard
							i(112838),	-- Mantid Vizier's Robes
							i(112837),	-- Avool's Ancestral Bracers
							i(112845),	-- Bracers of the Pristine Purifier
							i(112833),	-- Mantid Carapace Augments
							i(112842),	-- Klaxxi Grips of Rejuvenation
							i(112831),	-- Arrowflight Girdle
							i(112844),	-- Chitin-Link Chain Belt
							i(112846),	-- Plate Belt of the War-Healer
							i(112834),	-- Untarnishable Greatbelt
							i(112843),	-- Shado-Pan Reliquary Kilt
							i(112847),	-- Mogu Mindbender's Greaves
							i(112826),	-- Ominous Mogu Greatboots
							i(112827),	-- Pandaren Roofsprinters
							i(112828),	-- Seal of the Forgotten Kings
							i(112825),	-- Sigil of Rampage
						})),
						cr(71529, e(851, {	-- Thok the Bloodthirsty
							ig(99672),	-- Helm of the Cursed Conqueror
							ig(99673),	-- Helm of the Cursed Protector
							ig(99671),	-- Helm of the Cursed Vanquisher
							i(112862),	-- Britomart's Jagged Pike
							i(112853),	-- Hvitserk's Formidable Shanker
							i(112861),	-- Festering Primordial Globule
							i(112851),	-- Gleaming Eye of the Devilsaur
							i(112866),	-- Akolik's Acid-Soaked Robes
							i(112856),	-- Icy Blood Chestplate
							i(112854),	-- Montak's Grips of Scorching Breath
							i(112855),	-- Devilfang Band
							i(112852),	-- Signet of the Dinomancers
							i(112849),	-- Thok's Acid-Grooved Tooth
							i(112850),	-- Thok's Tail Tip
						})),
					}),
					header(HEADERS.Achievement, 8462, {	-- Downfall
						cr(71504, e(865, {	-- Siegecrafter Blackfuse
							ig(99669),	-- Shoulders of the Cursed Conqueror
							ig(99670),	-- Shoulders of the Cursed Protector
							ig(99668),	-- Shoulders of the Cursed Vanquisher
							i(112892),	-- Lever of the Megantholithic Apparatus
							i(112897),	-- Siegecrafter's Forge Hammer
							i(112894),	-- Blackfuse's Blasting Cord
							i(112896),	-- Bomber's Blackened Wristwatch
							i(112895),	-- Bracers of Infinite Pipes
							i(112882),	-- Calixian Bladebreakers
							i(112898),	-- Fusespark Gloves
							i(112890),	-- Powder-Stained Totemic Treads
							i(112883),	-- Asgorathian Blood Seal
							i(112877),	-- Dysmorphic Samophlange of Discontinuity
							i(112879),	-- Ticking Ebon Detonator
						})),
						e(853, {	-- Paragons of the Klaxxi
							["crs"] = {
								71153,	-- Hisek the Swarmkeeper
								71160,	-- Iyyokuk the Lucid
								71154,	-- Ka'roz the Locust
								71156,	-- Kaz'tik the Manipulator
								71161,	-- Kil'ruk the Wind-Reaver
								71155,	-- Korven the Prime
								71157,	-- Xaril the Poisoned Mind
								71158,	-- Rik'kal the Dissector
								71152,	-- Skeer the Bloodseeker
							},
							["groups"] = {
								ig(99675),	-- Leggings of the Cursed Conqueror
								ig(99676),	-- Leggings of the Cursed Protector
								ig(99674),	-- Leggings of the Cursed Vanquisher
								i(112921),	-- Kil'ruk's Furious Blade
								i(112920),	-- Korven's Crimson Crescent
								i(112922),	-- Rik'kal's Bloody Scalpel
								i(112918),	-- Hisek's Reserve Longbow
								i(112923),	-- Amber Parasite Wraps
								i(112919),	-- Chestguard of Toxic Injections
								i(112914),	-- Bracers of Sonic Projection
								i(112915),	-- Gauntlets of Insane Calculations
								i(112916),	-- Iyyokuk's Hereditary Seal
								i(112917),	-- Kil'ruk's Band of Ascendancy
								i(112913),	-- Skeer's Bloodsoaked Talisman
							},
						}),
						cr(71865, e(869, {	-- Garrosh Hellscream
							ig(105861),	-- Essence of the Cursed Conqueror
							ig(105860),	-- Essence of the Cursed Protector
							ig(105862),	-- Essence of the Cursed Vanquisher
							i(112932),	-- Kor'kron Spire of Supremacy
							i(112925),	-- Xal'atoh, Desecrated Image of Gorehowl
							i(112939),	-- Horned Mace of the Old Ones
							i(112940),	-- Revelations of Y'Shaarj
							i(112943),	-- Cowl of Smoking Dreams
							i(112937),	-- Ebon Ritual Hood
							i(112928),	-- Greathelm of the Warchief
							i(112926),	-- Kor'kron Elite Skullmask
							i(112930),	-- Penetrating Gaze of Y'Shaarj
							i(112942),	-- Hopeglow Spaulders
							i(112945),	-- Mantle of Looming Darkness
							i(112927),	-- Shoulderguards of Intended Power
							i(112934),	-- Spaulders of the Fallen Warchief
							i(112931),	-- Chestguard of Relentless Tyranny
							i(112944),	-- Chestplate of Fallen Passion
							i(112936),	-- Belt of the Broken Pact
							i(112929),	-- Cord of Black Dreams
							i(112941),	-- Seal of Karmic Return
							i(112933),	-- Legplates of Unthinking Strife
							i(112938),	-- Black Blood of Y'Shaarj
							i(112924),	-- Curse of Hubris
						})),
					}),
				},
			}),
			-- #endif
			d(CURRENT_NORMAL_PLUS_DIFFICULTIES, {		-- Flexible+ (5.4.0+) / Normal+ (6.0.2+)
				n(ZONE_DROPS, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
					i(113224),	-- Aeth's Swiftcinder Cloak
					i(113231),	-- Brave Niunai's Cloak
					i(113226),	-- Cape of the Alpha
					i(113230),	-- Drape of the Omega
					i(113223),	-- Turtleshell Greatcloak
					i(113225),	-- Kalaena's Arcane Handwraps
					i(113218),	-- Seebo's Sainted Touch
					i(113220),	-- Crimson Gauntlets of Death
					i(113221),	-- Siid's Silent Stranglers
					i(113222),	-- Keengrip Arrowpullers
					i(113227),	-- Marco's Crackling Gloves
					i(113228),	-- Gauntlets of Discarded Time
					i(113219),	-- Romy's Reliable Grips
					i(113229),	-- Zoid's Molten Gauntlets
				})),
				cr(71543, e(852, {	-- Immerseus
					ach(8536),	-- No More Tears
				})),
				e(849, {	-- The Fallen Protectors
					["crs"] = {
						71479,	-- He Softfoot [The Fallen Protectors]
						71475,	-- Rook Stonetoe [The Fallen Protectors]
						71480,	-- Sun Tenderheart [The Fallen Protectors]
					},
					["groups"] = {
						ach(8528),	-- Go Long
					},
				}),
				e(866, {	-- Norushen
					["crs"] = {
						72276,	-- Amalgam of Corruption
						71965,	-- Norushen
					},
					["groups"] = {
						ach(8532),	-- None Shall Pass
					},
				}),
				cr(71734, e(867, {	-- Sha of Pride
					ach(8521),	-- Swallow Your Pride
				})),
				cr(72249, e(881, {	-- Galakras
					ach(8530),	-- The Immortal Vanguard
				})),
				cr(71466, e(864, {	-- Iron Juggernaut
					ach(8520),	-- Fire in the Hole!
				})),
				cr(71859, e(856, {	-- Kor'kron Dark Shaman (Earthbreaker Haromm)
					["crs"] = {
						71859,	-- Earthbreaker Haromm
						71858,	-- Wavebinder Kardris
					},
					["groups"] = {
						ach(8453),	-- Rescue Raiders
						i(105751, {	-- Kor'kron Shaman's Treasure (Shaman Only)
							i(105745),	-- Kor'kron Dark Shaman Cowl
							i(105747),	-- Kor'kron Dark Shaman Shoulder
							i(105743),	-- Kor'kron Dark Shaman Vestment
							i(105748),	-- Kor'kron Dark Shaman Bracers
							i(105744),	-- Kor'kron Dark Shaman Gloves
							i(105741),	-- Kor'kron Dark Shaman Belt
							i(105746),	-- Kor'kron Dark Shaman Kilt
							i(105742),	-- Kor'kron Dark Shaman Treads
						}),
					},
				})),
				cr(71515, e(850, {	-- General Nazgrim
					ach(8448),	-- Gamon Will Save Us!
				})),
				cr(71454, e(846, {	-- Malkorok
					ach(8538),	-- Unlimited Potential
				})),
				cr(71889, e(870, {	-- Spoils of Pandaria (Secured Stockpile of Pandaren Spoils)
					ach(8529),	-- Criss Cross
				})),
				cr(71529, e(851, {	-- Thok the Bloodthirsty
					ach(8527),	-- Giant Dinosaur vs. Mega Snail
				})),
				cr(71504, e(865, {	-- Siegecrafter Blackfuse
					ach(8543, {	-- Lasers and Magnets and Drills! Oh My!
						crit(23772),	-- Deactivated Laser Turret
						crit(23773),	-- Deactivated Electromagnet
						crit(23774),	-- Deactivated Missile Turret
						crit(23775),	-- Disassembled Crawler Mines
					}),
				})),
				e(853, {	-- Paragons of the Klaxxi
					["crs"] = {
						71153,	-- Hisek the Swarmkeeper
						71160,	-- Iyyokuk the Lucid
						71154,	-- Ka'roz the Locust
						71156,	-- Kaz'tik the Manipulator
						71161,	-- Kil'ruk the Wind-Reaver
						71155,	-- Korven the Prime
						71157,	-- Xaril the Poisoned Mind
						71158,	-- Rik'kal the Dissector
						71152,	-- Skeer the Bloodseeker
					},
					["groups"] = {
						ach(8531),	-- Now We are the Paragon
					},
				}),
				cr(71865, e(869, {	-- Garrosh Hellscream
					ach(8537),	-- Strike!
				})),
			}),
			FLEX_RAID_HEADER({							-- Flexible (Removed with Patch 6.0.2) >> Items marked "Normal" after 6.0 <<
				["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				["ignoreBonus"] = true,
				["groups"] = {
					n(ZONE_DROPS, {
						i(105838),	-- Aeth's Swiftcinder Cloak Normal
						i(105830),	-- Brave Niunai's Cloak Normal
						i(105826),	-- Cape of the Alpha Normal
						i(105829),	-- Drape of the Omega Normal
						i(105839),	-- Turtleshell Greatcloak Normal
						i(105827),	-- Kalaena's Arcane Handwraps
						i(105828),	-- Seebo's Sainted Touch Normal
						i(105832),	-- Crimson Gauntlets of Death Normal
						i(105831),	-- Siid's Silent Stranglers Normal
						i(105833),	-- Keengrip Arrowpullers Normal
						i(105834),	-- Marco's Crackling Gloves Normal
						i(105837),	-- Gauntlets of Discarded Time Normal
						i(105835),	-- Romy's Reliable Grips Normal
						i(105836),	-- Zoid's Molten Gauntlets Normal
					}),
					cr(71543, e(852, {	-- Immerseus
						i(104671),	-- Bolt-Burster Grips Normal
						i(104678),	-- Bracers of Purified Spirit Normal
						i(104668),	-- Bracers of Sordid Sleep Normal
						i(104664),	-- Bubble-Burst Bracers Normal
						i(104665),	-- Chestplate of Congealed Corrosion Normal
						i(104674),	-- Cloak of Misguided Power Normal
						i(104666),	-- Corruption-Rotted Gauntlets Normal
						i(104670),	-- Encapsulated Essence of Immerseus Normal
						i(104680),	-- Greatbelt of Living Waters Normal
						i(104662),	-- Hood of Blackened Tears Normal
						i(104673),	-- Hood of Swirling Senses Normal
						i(104672),	-- Ichor-Dripping Shoulderpads Normal
						i(104660),	-- Immerseus' Crystalline Eye Normal
						i(104669),	-- Pauldrons of Violent Eruption Normal
						i(104663),	-- Puddle Punishers Normal
						i(104675),	-- Purified Bindings of Immerseus Normal
						i(104677),	-- Salt Water Sandals Normal
						i(104676),	-- Seal of Eternal Sorrow Normal
						i(104679),	-- Soul-Soaked Gloves Normal
						i(104667),	-- Treads of Unchained Hate Normal
						i(104661),	-- Trident of Corrupted Waters Normal
						i(104681),	-- Waterwalker Greatboots Normal
					})),
					e(849, {	-- The Fallen Protectors
						["crs"] = {
							71479,	-- He Softfoot [The Fallen Protectors]
							71475,	-- Rook Stonetoe [The Fallen Protectors]
							71480,	-- Sun Tenderheart [The Fallen Protectors]
						},
						["groups"] = {
							i(104687),	-- Darkfallen Shoulderplates Normal
							i(104682),	-- Death Lotus Crossbow Normal
							i(104702),	-- Gaze of Echoing Despair Normal
							i(104690),	-- Gloomwrap Greatcloak Normal
							i(104701),	-- Grips of the Fallen Council Normal
							i(104685),	-- Grips of Unending Anguish Normal
							i(104695),	-- Lifebane Bracers Normal
							i(104696),	-- Petrified Pennyroyal Ring Normal
							i(104686),	-- Poisonbinder Girth Normal
							i(104697),	-- Purehearted Cricket Cage Normal
							i(104693),	-- Robes of the Tendered Heart Normal
							i(104691),	-- Rook's Unlucky Talisman Normal
							i(104699),	-- Sabatons of Defilement Normal
							i(104692),	-- Sha-Seared Sandals Normal
							i(104688),	-- Shockstriker Gauntlets Normal
							i(104700),	-- Shoulderguards of Dark Meditations Normal
							i(104694),	-- Shoulderpads of Dou Dou Chong Normal
							i(104698),	-- Shoulders of the Roiling Inferno Normal
							i(104683),	-- Softfoot's Last Resort Normal
							i(104689),	-- Sorrowpath Signet Normal
							i(104684),	-- Stonetoe's Tormented Treads Normal
						},
					}),
					e(866, {	-- Norushen
						["crs"] = {
							72276,	-- Amalgam of Corruption
							71965,	-- Norushen
						},
						["groups"] = {
							i(104715),	-- Blight Hurlers Normal
							i(104720),	-- Boots of Broken Reliance Normal
							i(104709),	-- Bracers of Blind Hatred Normal
							i(104714),	-- Bracers of Broken Causation Normal
							i(104722),	-- Bracers of Final Serenity Normal
							i(104721),	-- Confident Grips Normal
							i(104711),	-- Drape of the Despairing Pit Normal
							i(104712),	-- Fusion-Fire Core Normal
							i(104706),	-- Gloves of the Golden Protector Normal
							i(104707),	-- Leggings of Unabashed Anger Normal
							i(104719),	-- Norushen's Enigmatic Barrier Normal
							i(104703),	-- Norushen's Shortblade Normal
							i(104708),	-- Quarantine Shoulderguards Normal
							i(104710),	-- Rage-Blind Greathelm Normal
							i(104704),	-- Reality Ripper Ring Normal
							i(104717),	-- Rime-Rift Shoulders Normal
							i(104705),	-- Robes of the Blackened Watcher Normal
							i(104716),	-- Sash of the Last Guardian Normal
							i(104723),	-- Shadow-Binder's Kilt Normal
							i(104718),	-- Untainted Guardian's Chain Normal
							i(104724),	-- Wristplates of Broken Doubt Normal
							i(104713),	-- Xifeng, Longblade of the Titanic Guardian Normal
						},
					}),
					cr(71734, e(867, {	-- Sha of Pride
						-- #if BEFORE 6.0.2
						ig(99743),	-- Chest of the Cursed Conqueror
						ig(99744),	-- Chest of the Cursed Protector
						ig(99742),	-- Chest of the Cursed Vanquisher
						-- #endif
						i(104725),	-- Assurance of Consequence Normal
						i(104733),	-- Choker of the Final Word Normal
						i(104730),	-- Crown of Boastful Words Normal
						i(104728),	-- Gaze of Arrogance Normal
						i(104732),	-- Greatsword of Pride's Fall Normal
						i(104731),	-- Greaves of Sublime Superiority Normal
						i(104726),	-- Necklace of Fading Light Normal
						i(104727),	-- Prismatic Prison of Pride Normal
						i(104729),	-- Self-Reflecting Mask Normal
						i(104734),	-- Shield of Mockery Normal
					})),
					cr(72249, e(881, {	-- Galakras
						i(104742),	-- Arcsmasher Bracers Normal
						i(104746),	-- Bone-Inlaid Sandals Normal
						i(104739),	-- Cannoneer's Multipocket Gunbelt Normal
						i(104735),	-- Dagryn's Discarded Longbow Normal
						i(104740),	-- Dagryn's Fuselight Bracers Normal
						i(104753),	-- Dragonmaw Emergency Strap Normal
						i(104752),	-- Drakebinder Greatstaff Normal
						i(104744),	-- Evil Eye of Galakras Normal
						i(104751),	-- Extinguished Ember of Galakras Normal
						i(104748),	-- Flameslinger's Fiery Cowl Normal
						i(104745),	-- Galakrond Control Band Normal
						i(104754),	-- Grips of Tidal Force Normal
						i(104738),	-- Korgra's Venom-Soaked Gauntlets Normal
						i(104743),	-- Krugruk's Rigid Shoulderplates Normal
						i(104747),	-- Scalebane Bracers Normal
						i(104750),	-- Shoulderpads of Pulsing Protection Normal
						i(104749),	-- Skydancer Boots Normal
						i(104755),	-- Smoldering Drakescale Bracers Normal
						i(104736),	-- Swift Serpent Signet Normal
						i(104741),	-- Thranok's Shattering Helm Normal
						i(103778),	-- Unrepentant Heels Normal
						i(104756),	-- Windfire Legplates Normal
					})),
					cr(71466, e(864, {	-- Iron Juggernaut
						i(104768),	-- Belt of Ominous Trembles Normal
						i(104778),	-- Borer Drill Boots Normal
						i(104770),	-- Bracers of the Broken Fault Normal
						i(104775),	-- Castlebreaker Bracers Normal
						i(104777),	-- Cavemaker Wristguards Normal
						i(104762),	-- Demolisher's Reinforced Belt Normal
						i(104765),	-- Earthbreaker's Steaming Chestplate Normal
						i(104771),	-- Earthripper Gloves Normal
						i(104767),	-- Juggernaut's Focusing Crystal Normal
						i(104766),	-- Juggernaut's Ignition Keys Normal
						i(104774),	-- Juggernaut's Power Core Normal
						i(104758),	-- Laser Burn Bracers Normal
						i(104773),	-- Laser-Slice Signet Normal
						i(104769),	-- Leggings of Furious Flame Normal
						i(104760),	-- Minelayer's Padded Boots Normal
						i(104761),	-- Precision Cutters Normal
						i(104759),	-- Ricocheting Shoulderguards Normal
						i(104757),	-- Seismic Bore Normal
						i(104772),	-- Shock Pulse Robes Normal
						i(104764),	-- Tar-Coated Gauntlets Normal
						i(104776),	-- Treads of Autonomic Motion Normal
						i(104763),	-- Wall-Borer Bracers Normal
					})),
					cr(71859, e(856, {	-- Kor'kron Dark Shaman (Earthbreaker Haromm)
						i(104786),	-- Ashen Wall Girdle Normal
						i(104792),	-- Ashflare Pendant Normal
						i(104796),	-- Belt of the Iron Prison Normal
						i(104787),	-- Bloodclaw Band Normal
						i(104785),	-- Breastplate of Shamanic Mirrors Normal
						i(104781),	-- Damron's Belt of Darkness Normal
						i(104795),	-- Darkfang Mask Normal
						i(104788),	-- Haromm's Frozen Crescent Normal
						i(104783),	-- Haromm's Horrifying Helm Normal
						i(104780),	-- Haromm's Talisman Normal
						i(104791),	-- Iron Wolf Hood Normal
						i(104794),	-- Kardris' Scepter Normal
						i(104793),	-- Kardris' Toxic Totem Normal
						i(104779),	-- Poisonmist Nightcloak Normal
						i(104789),	-- Ring of the Iron Tomb Normal
						i(104782),	-- Riou's Vigilant Leggings Normal
						i(104798),	-- Shackles of Stinking Slime Normal
						i(104797),	-- Shoulderguards of Foul Streams Normal
						i(104799),	-- Shoulderplates of Gushing Geysers Normal
						i(104790),	-- Toxic Tornado Treads Normal
						i(104784),	-- Wolf-Rider Spurs Normal
					})),
					cr(71515, e(850, {	-- General Nazgrim
						-- #if BEFORE 6.0.2
						ig(99746),	-- Gauntlets of the Cursed Conqueror
						ig(99747),	-- Gauntlets of the Cursed Protector
						ig(99745),	-- Gauntlets of the Cursed Vanquisher
						-- #endif
						i(104803),	-- Arcweaver Spell Sword Normal
						i(104809),	-- Bulwark of the Fallen General Normal
						i(104807),	-- Crown of Tragic Truth Normal
						i(104808),	-- Gar'tok, Strength of the Faithful Normal
						i(104802),	-- Nazgrim's Burnished Insignia Normal
						i(104800),	-- Nazgrim's Gutripper Normal
						i(104806),	-- Ravager's Pathwalkers Normal
						i(104805),	-- Robes of the Warrior's Fall Normal
						i(104801),	-- Sandals of Two Little Bees Normal
						i(104804),	-- Shoulderguards of the Righteous Stand Normal
						i(104810),	-- Spaulders of Kor'kron Fealty Normal
					})),
					cr(71454, e(846, {	-- Malkorok
						i(104826),	-- Black-Blooded Drape Normal
						i(104817),	-- Blood Rage Bracers Normal
						i(104829),	-- Boots of Perilous Infusion Normal
						i(104830),	-- Bracers of Averted Fatality Normal
						i(104831),	-- Ebon Blood Chestguard Normal
						i(104825),	-- Frenzied Crystal of Rage Normal
						i(104813),	-- Halberd of Inner Shadows Normal
						i(104823),	-- Hood of Perpetual Implosion Normal
						i(104812),	-- Kor'kron Hand Cannon Normal
						i(104814),	-- Lazahk's Lost Shadowrap Normal
						i(104818),	-- Legplates of Willful Doom Normal
						i(104816),	-- Malkorok's Giant Stompers Normal
						i(104820),	-- Malkorok's Skullcleaver Normal
						i(104819),	-- Malkorok's Tainted Dog Tags Normal
						i(104822),	-- Miasmic Skullbelt Normal
						i(104811),	-- Ring of Restless Energy Normal
						i(104824),	-- Robes of Riven Dreams Normal
						i(104827),	-- Seal of Sullen Fury Normal
						i(104832),	-- Terrorguard Chestplate Normal
						i(104821),	-- Vial of Living Corruption Normal
						i(104828),	-- Visage of the Monstrous Normal
						i(104815),	-- Wristguards of Ruination Normal
					})),
					cr(71889, e(870, {	-- Spoils of Pandaria (Secured Stockpile of Pandaren Spoils)
						i(104838),	-- Ancient Archer's Chestguard Normal
						i(104843),	-- Ancient Mogu Tower Shield Normal
						i(104837),	-- Arrowflight Girdle Normal
						i(104844),	-- Avool's Ancestral Bracers Normal
						i(104851),	-- Bracers of the Pristine Purifier Normal
						i(104850),	-- Chitin-Link Chain Belt Normal
						i(104834),	-- Enchanted Shao-Tien Saber Normal
						i(104839),	-- Helm of the Night Watchman Normal
						i(104847),	-- Immaculately Preserved Wand Normal
						i(104848),	-- Klaxxi Grips of Rejuvenation Normal
						i(104846),	-- Lost Necklace of the Mogu Empress Normal
						i(104836),	-- Mantid Carapace Augments Normal
						i(104845),	-- Mantid Vizier's Robes Normal
						i(104853),	-- Mogu Mindbender's Greaves Normal
						i(104841),	-- Ominous Mogu Greatboots Normal
						i(104835),	-- Pandaren Roofsprinters Normal
						i(104852),	-- Plate Belt of the War-Healer Normal
						i(104842),	-- Seal of the Forgotten Kings Normal
						i(104849),	-- Shado-Pan Reliquary Kilt Normal
						i(104833),	-- Sigil of Rampage Normal
						i(104840),	-- Untarnishable Greatbelt Normal
					})),
					cr(71529, e(851, {	-- Thok the Bloodthirsty
						-- #if BEFORE 6.0.2
						ig(99749),	-- Helm of the Cursed Conqueror
						ig(99750),	-- Helm of the Cursed Protector
						ig(99748),	-- Helm of the Cursed Vanquisher
						-- #endif
						i(104857),	-- Akolik's Acid-Soaked Robes Normal
						i(104863),	-- Britomart's Jagged Pike Normal
						i(104864),	-- Devilfang Band Normal
						i(104858),	-- Festering Primordial Globule Normal
						i(104855),	-- Gleaming Eye of the Devilsaur Normal
						i(104854),	-- Hvitserk's Formidable Shanker Normal
						i(104861),	-- Icy Blood Chestplate Normal
						i(104856),	-- Montak's Grips of Scorching Breath Normal
						i(104859),	-- Signet of the Dinomancers Normal
						i(104860),	-- Thok's Acid-Grooved Tooth Normal
						i(104862),	-- Thok's Tail Tip Normal
					})),
					cr(71504, e(865, {	-- Siegecrafter Blackfuse
						-- #if BEFORE 6.0.2
						ig(99755),	-- Shoulders of the Cursed Conqueror
						ig(99756),	-- Shoulders of the Cursed Protector
						ig(99754),	-- Shoulders of the Cursed Vanquisher
						-- #endif
						i(104873),	-- Asgorathian Blood Seal Normal
						i(104875),	-- Blackfuse's Blasting Cord Normal
						i(104869),	-- Bomber's Blackened Wristwatch Normal
						i(104870),	-- Bracers of Infinite Pipes Normal
						i(104872),	-- Calixian Bladebreakers Normal
						i(104868),	-- Dysmorphic Samophlange of Discontinuity Normal
						i(104866),	-- Fusespark Gloves Normal
						i(104867),	-- Lever of the Megantholithic Apparatus Normal
						i(104871),	-- Powder-Stained Totemic Treads Normal
						i(104874),	-- Siegecrafter's Forge Hammer Normal
						i(104865),	-- Ticking Ebon Detonator Normal
					})),
					e(853, {	-- Paragons of the Klaxxi
						["crs"] = {
							71153,	-- Hisek the Swarmkeeper
							71160,	-- Iyyokuk the Lucid
							71154,	-- Ka'roz the Locust
							71156,	-- Kaz'tik the Manipulator
							71161,	-- Kil'ruk the Wind-Reaver
							71155,	-- Korven the Prime
							71157,	-- Xaril the Poisoned Mind
							71158,	-- Rik'kal the Dissector
							71152,	-- Skeer the Bloodseeker
						},
						["groups"] = {
							-- #if BEFORE 6.0.2
							ig(99752),	-- Leggings of the Cursed Conqueror
							ig(99753),	-- Leggings of the Cursed Protector
							ig(99751),	-- Leggings of the Cursed Vanquisher
							-- #endif
							i(104882),	-- Amber Parasite Wraps Normal
							i(104879),	-- Bracers of Sonic Projection Normal
							i(104883),	-- Chestguard of Toxic Injections Normal
							i(104884),	-- Gauntlets of Insane Calculations Normal
							i(104876),	-- Hisek's Reserve Longbow Normal
							i(104881),	-- Iyyokuk's Hereditary Seal Normal
							i(104877),	-- Kil'ruk's Band of Ascendancy Normal
							i(104886),	-- Kil'ruk's Furious Blade Normal
							i(104878),	-- Korven's Crimson Crescent Normal
							i(104880),	-- Rik'kal's Bloody Scalpel Normal
							i(104885),	-- Skeer's Bloodsoaked Talisman Normal
						},
					}),
					cr(71865, e(869, {	-- Garrosh Hellscream
						-- #if BEFORE 6.0.2
						ig(105864),	-- Essence of the Cursed Conqueror
						ig(105863),	-- Essence of the Cursed Protector
						ig(105865),	-- Essence of the Cursed Vanquisher
						-- #endif
						i(104899),	-- Belt of the Broken Pact Normal
						i(104901),	-- Black Blood of Y'Shaarj Normal
						i(104890),	-- Chestguard of Relentless Tyranny Normal
						i(104907),	-- Chestplate of Fallen Passion Normal
						i(104888),	-- Cord of Black Dreams Normal
						i(104906),	-- Cowl of Smoking Dreams Normal
						i(104898),	-- Curse of Hubris Normal
						i(104900),	-- Ebon Ritual Hood Normal
						i(104896),	-- Greathelm of the Warchief Normal
						i(104905),	-- Hopeglow Spaulders Normal
						i(104902),	-- Horned Mace of the Old Ones Normal
						i(104889),	-- Kor'kron Elite Skullmask Normal
						i(104887),	-- Kor'kron Spire of Supremacy Normal
						i(104893),	-- Legplates of Unthinking Strife Normal
						i(104908),	-- Mantle of Looming Darkness Normal
						i(104891),	-- Penetrating Gaze of Y'Shaarj Normal
						i(104903),	-- Revelations of Y'Shaarj Normal
						i(104904),	-- Seal of Karmic Return Normal
						i(104892),	-- Shoulderguards of Intended Power Normal
						i(104894),	-- Spaulders of the Fallen Warchief Normal
						i(104897),	-- Xal'atoh, Desecrated Image of Gorehowl Normal
						n(HEIRLOOMS, {
							i(105674),	-- Hellscream's Barrier
							i(105672),	-- Hellscream's Cleaver
							i(105679),	-- Hellscream's Decapitator
							i(105678),	-- Hellscream's Doomblade
							i(105673),	-- Hellscream's Pig Sticker
							i(105671),	-- Hellscream's Razor
							i(105680),	-- Hellscream's Shield Wall
							i(105676),	-- Hellscream's Tome of Destruction
							i(105677),	-- Hellscream's War Staff
							i(105670),	-- Hellscream's Warbow
							i(105675),	-- Hellscream's Warmace
						}),
					})),
				},
			}),
			-- #if AFTER 6.0.2
			-- CRIEVE NOTE: This is necessary because 'Flexible' difficulty was repurposed to 'Normal', they use the same difficultyID and merge data in MOP Classic otherwise.
			d(DIFFICULTY.RAID.NORMAL, {					-- Normal (Added with Patch 6.0.2)
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					n(ZONE_DROPS, {
						i(113224),	-- Aeth's Swiftcinder Cloak
						i(113231),	-- Brave Niunai's Cloak
						i(113226),	-- Cape of the Alpha
						i(113230),	-- Drape of the Omega
						i(113223),	-- Turtleshell Greatcloak
						i(113225),	-- Kalaena's Arcane Handwraps
						i(113218),	-- Seebo's Sainted Touch
						i(113220),	-- Crimson Gauntlets of Death
						i(113221),	-- Siid's Silent Stranglers
						i(113222),	-- Keengrip Arrowpullers
						i(113227),	-- Marco's Crackling Gloves
						i(113228),	-- Gauntlets of Discarded Time
						i(113219),	-- Romy's Reliable Grips
						i(113229),	-- Zoid's Molten Gauntlets
					}),
					cr(71543, e(852, {	-- Immerseus
						i(110784),	-- Trident of Corrupted Waters
						i(110785),	-- Encapsulated Essence of Immerseus
						i(112382),	-- Hood of Blackened Tears
						i(112424),	-- Hood of Swirling Senses
						i(110761),	-- Immerseus' Crystalline Eye
						i(112423),	-- Ichor-Dripping Shoulderpads
						i(112421),	-- Pauldrons of Violent Eruption
						i(112425),	-- Cloak of Misguided Power
						i(112417),	-- Chestplate of Congealed Corrosion
						i(112429),	-- Bracers of Purified Spirit
						i(112420),	-- Bracers of Sordid Sleep
						i(112416),	-- Bubble-Burst Bracers
						i(112422),	-- Bolt-Burster Grips
						i(112418),	-- Corruption-Rotted Gauntlets
						i(112445),	-- Soul-Soaked Gloves
						i(112447),	-- Greatbelt of Living Waters
						i(112383),	-- Puddle Punishers
						i(112428),	-- Salt Water Sandals
						i(112419),	-- Treads of Unchained Hate
						i(112448),	-- Waterwalker Greatboots
						i(112427),	-- Seal of Eternal Sorrow
						i(112426),	-- Purified Bindings of Immerseus
					})),
					e(849, {	-- The Fallen Protectors
						["crs"] = {
							71479,	-- He Softfoot [The Fallen Protectors]
							71475,	-- Rook Stonetoe [The Fallen Protectors]
							71480,	-- Sun Tenderheart [The Fallen Protectors]
						},
						["groups"] = {
							i(112477),	-- Softfoot's Last Resort
							i(112478),	-- Death Lotus Crossbow
							i(112491),	-- Purehearted Cricket Cage
							i(112496),	-- Gaze of Echoing Despair
							i(112481),	-- Darkfallen Shoulderplates
							i(112494),	-- Shoulderguards of Dark Meditations
							i(112488),	-- Shoulderpads of Dou Dou Chong
							i(112492),	-- Shoulders of the Roiling Inferno
							i(112485),	-- Gloomwrap Greatcloak
							i(112487),	-- Robes of the Tendered Heart
							i(112489),	-- Lifebane Bracers
							i(112495),	-- Grips of the Fallen Council
							i(112480),	-- Grips of Unending Anguish
							i(112483),	-- Shockstriker Gauntlets
							i(112482),	-- Poisonbinder Girth
							i(112493),	-- Sabatons of Defilement
							i(112486),	-- Sha-Seared Sandals
							i(112479),	-- Stonetoe's Tormented Treads
							i(112490),	-- Petrified Pennyroyal Ring
							i(112484),	-- Sorrowpath Signet
							i(112476),	-- Rook's Unlucky Talisman
						},
					}),
					e(866, {	-- Norushen
						["crs"] = {
							72276,	-- Amalgam of Corruption
							71965,	-- Norushen
						},
						["groups"] = {
							i(112547),	-- Norushen's Shortblade
							i(112546),	-- Xifeng, Longblade of the Titanic Guardian
							i(112560),	-- Norushen's Enigmatic Barrier
							i(112552),	-- Rage-Blind Greathelm
							i(112559),	-- Untainted Guardian's Chain
							i(112550),	-- Quarantine Shoulderguards
							i(112558),	-- Rime-Rift Shoulders
							i(112554),	-- Drape of the Despairing Pit
							i(112549),	-- Robes of the Blackened Watcher
							i(112545),	-- Bracers of Blind Hatred
							i(112555),	-- Bracers of Broken Causation
							i(112563),	-- Bracers of Final Serenity
							i(112565),	-- Wristplates of Broken Doubt
							i(112556),	-- Blight Hurlers
							i(112562),	-- Confident Grips
							i(112548),	-- Gloves of the Golden Protector
							i(112557),	-- Sash of the Last Guardian
							i(112551),	-- Leggings of Unabashed Anger
							i(112564),	-- Shadow-Binder's Kilt
							i(112561),	-- Boots of Broken Reliance
							i(112553),	-- Reality Ripper Ring
							i(112503),	-- Fusion-Fire Core
						},
					}),
					cr(71734, e(867, {	-- Sha of Pride
						ig(99743),	-- Chest of the Cursed Conqueror
						ig(99744),	-- Chest of the Cursed Protector
						ig(99742),	-- Chest of the Cursed Vanquisher
						i(112951),	-- Gaze of Arrogance
						i(112949),	-- Greatsword of Pride's Fall
						i(112950),	-- Shield of Mockery
						i(112702),	-- Crown of Boastful Words
						i(112952),	-- Self-Reflecting Mask
						i(112955),	-- Choker of the Final Word
						i(112954),	-- Necklace of Fading Light
						i(112953),	-- Greaves of Sublime Superiority
						i(112947),	-- Assurance of Consequence
						i(112948),	-- Prismatic Prison of Pride
					})),
					cr(72249, e(881, {	-- Galakras
						i(112723),	-- Drakebinder Greatstaff
						i(112710),	-- Dagryn's Discarded Longbow
						i(112717),	-- Flameslinger's Fiery Cowl
						i(112713),	-- Thranok's Shattering Helm
						i(112705),	-- Kruguk's Rigid Shoulderplates
						i(112719),	-- Shoulderpads of Pulsing Protection
						i(112704),	-- Arcsmasher Bracers
						i(112712),	-- Dagryn's Fuselight Bracers
						i(112716),	-- Scalebone Bracers
						i(112727),	-- Smoldering Drakescale Bracers
						i(112726),	-- Grips of Tidal Force
						i(112707),	-- Korgra's Venom-Soaked Gauntlets
						i(112711),	-- Cannoneer's Multipocket Gunbelt
						i(112725),	-- Dragonmaw Emergency Strap
						i(112728),	-- Windfire Legplates
						i(112715),	-- Bone-Inlaid Sandals
						i(112718),	-- Skydancer Boots
						i(112706),	-- Unrepentant Heels
						i(112721),	-- Extinguished Ember of Galakras
						i(112714),	-- Galakrond Control Band
						i(112709),	-- Swift Serpent Signet
						i(112703),	-- Evil Eye of Galakras
					})),
					cr(71466, e(864, {	-- Iron Juggernaut
						i(112736),	-- Seismic Bore
						i(112748),	-- Juggernaut's Power Core
						i(112742),	-- Juggernaut's Ignition Keys
						i(112740),	-- Ricocheting Shoulderguards
						i(112741),	-- Earthbreaker's Steaming Chestplate
						i(112746),	-- Shock Pulse Robes
						i(112745),	-- Bracers of the Broken Fault
						i(112749),	-- Castlebreaker Bracers
						i(112751),	-- Cavemaker Wristguards
						i(112739),	-- Laser Burn Bracers
						i(112733),	-- Wall-Borer Bracers
						i(112946),	-- Earthripper Gloves
						i(112734),	-- Precision Cutters
						i(112732),	-- Tar-Coated Gauntlets
						i(112743),	-- Belt of Ominous Trembles
						i(112735),	-- Demolisher's Reinforced Belt
						i(112744),	-- Leggings of Furious Flame
						i(112752),	-- Borer Drill Boots
						i(112731),	-- Minelayer's Padded Boots
						i(112750),	-- Treads of Autonomic Motion
						i(112747),	-- Laser-Slice Signet
						i(112729),	-- Juggernaut's Focusing Crystal
					})),
					cr(71859, e(856, {	-- Kor'kron Dark Shaman (Earthbreaker Haromm)
						["crs"] = {
							71859,	-- Earthbreaker Haromm
							71858,	-- Wavebinder Kardris
						},
						["groups"] = {
							i(112759),	-- Haromm's Frozen Crescent
							i(112769),	-- Kardris' Scepter
							i(112770),	-- Darkfang Mask
							i(112762),	-- Haromm's Horrifying Helm
							i(112766),	-- Iron Wolf Hood
							i(112767),	-- Ashflare Pendant
							i(112772),	-- Shoulderguards of Foul Streams
							i(112774),	-- Shoulderplates of Gushing Geysers
							i(112764),	-- Poisonmist Nightcloak
							i(112755),	-- Breastplate of Shamanic Mirrors
							i(112773),	-- Shackles of Stinking Slime
							i(112763),	-- Ashen Wall Girdle
							i(112771),	-- Belt of the Iron Prison
							i(112760),	-- Damron's Belt of Darkness
							i(112761),	-- Riou's Vigilant Leggings
							i(112765),	-- Toxic Tornado Treads
							i(112757),	-- Wolf-Rider Spurs
							i(112756),	-- Bloodclaw Band
							i(112758),	-- Ring of the Iron Tomb
							i(112754),	-- Haromm's Talisman
							i(112768),	-- Kardris' Toxic Totem
						},
					})),
					cr(71515, e(850, {	-- General Nazgrim
						ig(99746),	-- Gauntlets of the Cursed Conqueror
						ig(99747),	-- Gauntlets of the Cursed Protector
						ig(99745),	-- Gauntlets of the Cursed Vanquisher
						i(112785),	-- Gar'tok, Strength of the Faithful
						i(112787),	-- Arcweaver Spell Sword
						i(112780),	-- Naz'grim's Gutripper
						i(112781),	-- Bulwark of the Fallen General
						i(112789),	-- Crown of Tragic Truth
						i(112783),	-- Shoulderguards of the Righteous Stand
						i(112790),	-- Spaulders of Kor'kron Fealty
						i(112788),	-- Robes of the Warrior's Fall
						i(112779),	-- Ravager's Pathwalkers
						i(112782),	-- Sandals of Two Little Bees
						i(112778),	-- Nazgrim's Burnished Insignia
					})),
					cr(71454, e(846, {	-- Malkorok
						i(112805),	-- Halberd of Inner Shadows
						i(112804),	-- Malkorok's Skullcleaver
						i(112806),	-- Kor'kron Hand Cannon
						i(112818),	-- Visage of the Monstrous
						i(112813),	-- Hood of Perpetual Implosion
						i(112803),	-- Malkorok's Tainted Dog Tags
						i(112816),	-- Black-Blooded Drape
						i(112821),	-- Ebon Blood Chestguard
						i(112794),	-- Lazahk's Lost Shadowrap
						i(112814),	-- Robes of Riven Dreams
						i(112823),	-- Terrorguard Chestplate
						i(112793),	-- Blood Rage Bracers
						i(112820),	-- Bracers of Averted Fatality
						i(112797),	-- Wristguards of Ruination
						i(112808),	-- Miasmic Skullbelt
						i(112807),	-- Legplates of Willful Doom
						i(112819),	-- Boots of Perilous Infusion
						i(112796),	-- Malkorok's Giant Stompers
						i(112795),	-- Ring of Restless Energy
						i(112817),	-- Seal of Sullen Fury
						i(112815),	-- Frenzied Crystal of Rage
						i(112792),	-- Vial of Living Corruption
					})),
					cr(71889, e(870, {	-- Spoils of Pandaria (Secured Stockpile of Pandaren Spoils)
						i(112835),	-- Enchanted Shao-Tien Saber
						i(112841),	-- Immaculately Preserved Wand
						i(112829),	-- Ancient Mogu Tower Shield
						i(112832),	-- Helm of the Night Watchman
						i(112839),	-- Lost Necklace of the Mogu Empress
						i(112836),	-- Ancient Archer's Chestguard
						i(112838),	-- Mantid Vizier's Robes
						i(112837),	-- Avool's Ancestral Bracers
						i(112845),	-- Bracers of the Pristine Purifier
						i(112833),	-- Mantid Carapace Augments
						i(112842),	-- Klaxxi Grips of Rejuvenation
						i(112831),	-- Arrowflight Girdle
						i(112844),	-- Chitin-Link Chain Belt
						i(112846),	-- Plate Belt of the War-Healer
						i(112834),	-- Untarnishable Greatbelt
						i(112843),	-- Shado-Pan Reliquary Kilt
						i(112847),	-- Mogu Mindbender's Greaves
						i(112826),	-- Ominous Mogu Greatboots
						i(112827),	-- Pandaren Roofsprinters
						i(112828),	-- Seal of the Forgotten Kings
						i(112825),	-- Sigil of Rampage
					})),
					cr(71529, e(851, {	-- Thok the Bloodthirsty
						ig(99749),	-- Helm of the Cursed Conqueror
						ig(99750),	-- Helm of the Cursed Protector
						ig(99748),	-- Helm of the Cursed Vanquisher
						i(112862),	-- Britomart's Jagged Pike
						i(112853),	-- Hvitserk's Formidable Shanker
						i(112861),	-- Festering Primordial Globule
						i(112851),	-- Gleaming Eye of the Devilsaur
						i(112866),	-- Akolik's Acid-Soaked Robes
						i(112856),	-- Icy Blood Chestplate
						i(112854),	-- Montak's Grips of Scorching Breath
						i(112855),	-- Devilfang Band
						i(112852),	-- Signet of the Dinomancers
						i(112849),	-- Thok's Acid-Grooved Tooth
						i(112850),	-- Thok's Tail Tip
					})),
					cr(71504, e(865, {	-- Siegecrafter Blackfuse
						ig(99755),	-- Shoulders of the Cursed Conqueror
						ig(99756),	-- Shoulders of the Cursed Protector
						ig(99754),	-- Shoulders of the Cursed Vanquisher
						i(112892),	-- Lever of the Megantholithic Apparatus
						i(112897),	-- Siegecrafter's Forge Hammer
						i(112894),	-- Blackfuse's Blasting Cord
						i(112896),	-- Bomber's Blackened Wristwatch
						i(112895),	-- Bracers of Infinite Pipes
						i(112882),	-- Calixian Bladebreakers
						i(112898),	-- Fusespark Gloves
						i(112890),	-- Powder-Stained Totemic Treads
						i(112883),	-- Asgorathian Blood Seal
						i(112877),	-- Dysmorphic Samophlange of Discontinuity
						i(112879),	-- Ticking Ebon Detonator
					})),
					e(853, {	-- Paragons of the Klaxxi
						["crs"] = {
							71153,	-- Hisek the Swarmkeeper
							71160,	-- Iyyokuk the Lucid
							71154,	-- Ka'roz the Locust
							71156,	-- Kaz'tik the Manipulator
							71161,	-- Kil'ruk the Wind-Reaver
							71155,	-- Korven the Prime
							71157,	-- Xaril the Poisoned Mind
							71158,	-- Rik'kal the Dissector
							71152,	-- Skeer the Bloodseeker
						},
						["groups"] = {
							ig(99752),	-- Leggings of the Cursed Conqueror
							ig(99753),	-- Leggings of the Cursed Protector
							ig(99751),	-- Leggings of the Cursed Vanquisher
							i(112921),	-- Kil'ruk's Furious Blade
							i(112920),	-- Korven's Crimson Crescent
							i(112922),	-- Rik'kal's Bloody Scalpel
							i(112918),	-- Hisek's Reserve Longbow
							i(112923),	-- Amber Parasite Wraps
							i(112919),	-- Chestguard of Toxic Injections
							i(112914),	-- Bracers of Sonic Projection
							i(112915),	-- Gauntlets of Insane Calculations
							i(112916),	-- Iyyokuk's Hereditary Seal
							i(112917),	-- Kil'ruk's Band of Ascendancy
							i(112913),	-- Skeer's Bloodsoaked Talisman
						},
					}),
					cr(71865, e(869, {	-- Garrosh Hellscream
						ig(105864),	-- Essence of the Cursed Conqueror
						ig(105863),	-- Essence of the Cursed Protector
						ig(105865),	-- Essence of the Cursed Vanquisher
						i(112932),	-- Kor'kron Spire of Supremacy
						i(112925),	-- Xal'atoh, Desecrated Image of Gorehowl
						i(112939),	-- Horned Mace of the Old Ones
						i(112940),	-- Revelations of Y'Shaarj
						i(112943),	-- Cowl of Smoking Dreams
						i(112937),	-- Ebon Ritual Hood
						i(112928),	-- Greathelm of the Warchief
						i(112926),	-- Kor'kron Elite Skullmask
						i(112930),	-- Penetrating Gaze of Y'Shaarj
						i(112942),	-- Hopeglow Spaulders
						i(112945),	-- Mantle of Looming Darkness
						i(112927),	-- Shoulderguards of Intended Power
						i(112934),	-- Spaulders of the Fallen Warchief
						i(112931),	-- Chestguard of Relentless Tyranny
						i(112944),	-- Chestplate of Fallen Passion
						i(112936),	-- Belt of the Broken Pact
						i(112929),	-- Cord of Black Dreams
						i(112941),	-- Seal of Karmic Return
						i(112933),	-- Legplates of Unthinking Strife
						i(112938),	-- Black Blood of Y'Shaarj
						i(112924),	-- Curse of Hubris
					})),
				},
			}),
			-- #endif
			d(CURRENT_HEROIC_PLUS_DIFFICULTIES, {		-- Normal+ (5.4.0+) / Heroic+ (6.0.2+)
				cr(71865, e(869, {	-- Garrosh Hellscream
					ach(8679, bubbleDownSelf({["races"] = ALLIANCE_ONLY}, {	-- Conqueror of Orgrimmar
						title(211),	-- Conqueror of Orgrimmar
					})),
					ach(8680, bubbleDownSelf({["races"] = HORDE_ONLY }, {	-- Liberator of Orgrimmar
						title(212),	-- Liberator of Orgrimmar
					})),
				})),
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.PLAYER10, {
				["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				["groups"] = {
					cr(71865, e(869, {	-- Garrosh Hellscream
						ach(8398, {	-- Ahead of the Curve: Garrosh Hellscream (10 player)
							-- #if MOP
							["OnUpdate"] = CUTTING_EDGE_ONUPDATE,
							-- #endif
							["groups"] = {
								i(104246, {	-- Reins of the Kor'kron War Wolf (MOUNT!)
									-- #if MOP
									["OnUpdate"] = CUTTING_EDGE_ONUPDATE,
									-- #endif
								}),
							},
						}),
					})),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.PLAYER25, {
				["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				["groups"] = {
					cr(71865, e(869, {	-- Garrosh Hellscream
						ach(8399, {	-- Ahead of the Curve: Garrosh Hellscream (25 player)
							-- #if MOP
							["OnUpdate"] = CUTTING_EDGE_ONUPDATE,
							-- #endif
							["groups"] = {
								i(104246, {	-- Reins of the Kor'kron War Wolf (MOUNT!)
									-- #if MOP
									["OnUpdate"] = CUTTING_EDGE_ONUPDATE,
									-- #endif
								}),
							},
						}),
					})),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.NORMAL, {	-- Normal (Removed with Patch 6.0.2) >> Items marked "Heroic" after 6.0 <<
				-- #if AFTER 6.0.2
				["description"] = "This was the original Normal difficulty. Previously, loot had unique item IDs for each difficulty tier as well as their Warforged variants similar to how ToT was done. Blizzard changed their design philosophy for the better with Patch 6.0 and chose to reuse an item's ID and apply a bonus ID rather than creating a brand new item ID with the same base stats.",
				-- #endif
				["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				["ignoreBonus"] = true,
				["groups"] = {
					n(ZONE_DROPS, {
						i(103846),	-- Aeth's Swiftcinder Cloak Heroic
						i(103960),	-- Brave Niunai's Cloak Heroic
						i(103935),	-- Cape of the Alpha Heroic
						i(103770),	-- Drape of the Omega Heroic
						i(103800),	-- Turtleshell Greatcloak Heroic
						i(103854),	-- Kalaena's Arcane Handwraps Heroic
						i(103753),	-- Seebo's Sainted Touch Heroic
						i(103859),	-- Crimson Gauntlets of Death Heroic
						i(103832),	-- Siid's Silent Stranglers Heroic
						i(103781),	-- Keengrip Arrowpullers Heroic
						i(103764),	-- Marco's Crackling Gloves Heroic
						i(103791),	-- Gauntlets of Discarded Time Heroic
						i(103818),	-- Romy's Reliable Grips Heroic
						i(103734),	-- Zoid's Molten Gauntlets Heroic
					}),
					cr(71543, e(852, {	-- Immerseus
						i(103752),	-- Bolt-Burster Grips Heroic
						i(103757),	-- Bracers of Purified Spirit Heroic
						i(103741),	-- Bracers of Sordid Sleep Heroic
						i(103738),	-- Bubble-Burst Bracers Heroic
						i(103736),	-- Chestplate of Congealed Corrosion Heroic
						i(103769),	-- Cloak of Misguided Power Heroic
						i(103733),	-- Corruption-Rotted Gauntlets Heroic
						i(103727),	-- Encapsulated Essence of Immerseus Heroic
						i(103966),	-- Greatbelt of Living Waters Heroic
						i(103728),	-- Hood of Blackened Tears Heroic
						i(103751),	-- Hood of Swirling Senses Heroic
						i(103755),	-- Ichor-Dripping Shoulderpads Heroic
						i(103749),	-- Immerseus' Crystalline Eye Heroic
						i(103747),	-- Pauldrons of Violent Eruption Heroic
						i(103730),	-- Puddle Punishers Heroic
						i(102293),	-- Purified Bindings of Immerseus Heroic
						i(103760),	-- Salt Water Sandals Heroic
						i(103771),	-- Seal of Eternal Sorrow Heroic
						i(103763),	-- Soul-Soaked Gloves Heroic
						i(103744),	-- Treads of Unchained Hate Heroic
						i(103726),	-- Trident of Corrupted Waters Heroic
						i(103766),	-- Waterwalker Greatboots Heroic
						n(WARFORGED, {
							i(105169),	-- Bolt-Burster Grips Heroic WF
							i(105176),	-- Bracers of Purified Spirit Heroic WF
							i(105166),	-- Bracers of Sordid Sleep Heroic WF
							i(105162),	-- Bubble-Burst Bracers Heroic WF
							i(105163),	-- Chestplate of Congealed Corrosion Heroic WF
							i(105172),	-- Cloak of Misguided Power Heroic WF
							i(105164),	-- Corruption-Rotted Gauntlets Heroic WF
							i(105168),	-- Encapsulated Essence of Immerseus Heroic WF
							i(105178),	-- Greatbelt of Living Waters Heroic WF
							i(105160),	-- Hood of Blackened Tears Heroic WF
							i(105171),	-- Hood of Swirling Senses Heroic WF
							i(105170),	-- Ichor-Dripping Shoulderpads Heroic WF
							i(105158),	-- Immerseus' Crystalline Eye Heroic WF
							i(105167),	-- Pauldrons of Violent Eruption Heroic WF
							i(105161),	-- Puddle Punishers Heroic WF
							i(105173),	-- Purified Bindings of Immerseus Heroic WF
							i(105175),	-- Salt Water Sandals Heroic WF
							i(105174),	-- Seal of Eternal Sorrow Heroic WF
							i(105177),	-- Soul-Soaked Gloves Heroic WF
							i(105165),	-- Treads of Unchained Hate Heroic WF
							i(105159),	-- Trident of Corrupted Waters Heroic WF
							i(105179),	-- Waterwalker Greatboots Heroic WF
						}),
					})),
					e(849, {	-- The Fallen Protectors
						["crs"] = {
							71479,	-- He Softfoot [The Fallen Protectors]
							71475,	-- Rook Stonetoe [The Fallen Protectors]
							71480,	-- Sun Tenderheart [The Fallen Protectors]
						},
						["groups"] = {
							i(103783),	-- Darkfallen Shoulderplates Heroic
							i(103776),	-- Death Lotus Crossbow Heroic
							i(103820),	-- Gaze of Echoing Despair Heroic
							i(103799),	-- Gloomwrap Greatcloak Heroic
							i(103817),	-- Grips of the Fallen Council Heroic
							i(103780),	-- Grips of Unending Anguish Heroic
							i(103809),	-- Lifebane Bracers Heroic
							i(103822),	-- Petrified Pennyroyal Ring Heroic
							i(103787),	-- Poisonbinder Girth Heroic
							i(103801),	-- Purehearted Cricket Cage Heroic
							i(103802),	-- Robes of the Tendered Heart Heroic
							i(102296),	-- Rook's Unlucky Talisman Heroic
							i(103812),	-- Sabatons of Defilement Heroic
							i(103804),	-- Sha-Seared Sandals Heroic
							i(103790),	-- Shockstriker Gauntlets Heroic
							i(103815),	-- Shoulderguards of Dark Meditations Heroic
							i(103807),	-- Shoulderpads of Dou Dou Chong Heroic
							i(103924),	-- Shoulders of the Roiling Inferno Heroic
							i(103775),	-- Softfoot's Last Resort Heroic
							i(103793),	-- Sorrowpath Signet Heroic
							i(103777),	-- Stonetoe's Tormented Treads Heroic
							n(WARFORGED, {
								i(105185),	-- Darkfallen Shoulderplates Heroic WF
								i(105180),	-- Death Lotus Crossbow Heroic WF
								i(105200),	-- Gaze of Echoing Despair Heroic WF
								i(105188),	-- Gloomwrap Greatcloak Heroic WF
								i(105199),	-- Grips of the Fallen Council Heroic WF
								i(105183),	-- Grips of Unending Anguish Heroic WF
								i(105193),	-- Lifebane Bracers Heroic WF
								i(105194),	-- Petrified Pennyroyal Ring Heroic WF
								i(105184),	-- Poisonbinder Girth Heroic WF
								i(105195),	-- Purehearted Cricket Cage Heroic WF
								i(105191),	-- Robes of the Tendered Heart Heroic WF
								i(105189),	-- Rook's Unlucky Talisman Heroic WF
								i(105197),	-- Sabatons of Defilement Heroic WF
								i(105190),	-- Sha-Seared Sandals Heroic WF
								i(105186),	-- Shockstriker Gauntlets Heroic WF
								i(105198),	-- Shoulderguards of Dark Meditations Heroic WF
								i(105192),	-- Shoulderpads of Dou Dou Chong Heroic WF
								i(105196),	-- Shoulders of the Roiling Inferno Heroic WF
								i(105181),	-- Softfoot's Last Resort Heroic WF
								i(105187),	-- Sorrowpath Signet Heroic WF
								i(105182),	-- Stonetoe's Tormented Treads Heroic WF
							}),
						},
					}),
					e(866, {	-- Norushen
						["crs"] = {
							72276,	-- Amalgam of Corruption
							71965,	-- Norushen
						},
						["groups"] = {
							i(103852),	-- Blight Hurlers Heroic
							i(103762),	-- Boots of Broken Reliance Heroic
							i(103740),	-- Bracers of Blind Hatred Heroic
							i(103849),	-- Bracers of Broken Causation Heroic
							i(103861),	-- Bracers of Final Serenity Heroic
							i(103858),	-- Confident Grips Heroic
							i(103845),	-- Drape of the Despairing Pit Heroic
							i(102295),	-- Fusion-Fire Core Heroic
							i(103830),	-- Gloves of the Golden Protector Heroic
							i(103838),	-- Leggings of Unabashed Anger Heroic
							i(103847),	-- Norushen's Enigmatic Barrier Heroic
							i(103827),	-- Norushen's Shortblade Heroic
							i(103836),	-- Quarantine Shoulderguards Heroic
							i(103839),	-- Rage-Blind Greathelm Heroic
							i(103841),	-- Reality Ripper Ring Heroic
							i(103857),	-- Rime-Rift Shoulders Heroic
							i(103834),	-- Robes of the Blackened Watcher Heroic
							i(103855),	-- Sash of the Last Guardian Heroic
							i(103942),	-- Shadow-Binder's Kilt Heroic
							i(103867),	-- Untainted Guardian's Chain Heroic
							i(103864),	-- Wristplates of Broken Doubt Heroic
							i(103826),	-- Xifeng, Longblade of the Titanic Guardian Heroic
							n(WARFORGED, {
								i(105213),	-- Blight Hurlers Heroic WF
								i(105218),	-- Boots of Broken Reliance Heroic WF
								i(105207),	-- Bracers of Blind Hatred Heroic WF
								i(105212),	-- Bracers of Broken Causation Heroic WF
								i(105220),	-- Bracers of Final Serenity Heroic WF
								i(105219),	-- Confident Grips Heroic WF
								i(105209),	-- Drape of the Despairing Pit Heroic WF
								i(105210),	-- Fusion-Fire Core Heroic WF
								i(105204),	-- Gloves of the Golden Protector Heroic WF
								i(105205),	-- Leggings of Unabashed Anger Heroic WF
								i(105217),	-- Norushen's Enigmatic Barrier Heroic WF
								i(105201),	-- Norushen's Shortblade Heroic WF
								i(105206),	-- Quarantine Shoulderguards Heroic WF
								i(105208),	-- Rage-Blind Greathelm Heroic WF
								i(105202),	-- Reality Ripper Ring Heroic WF
								i(105215),	-- Rime-Rift Shoulders Heroic WF
								i(105203),	-- Robes of the Blackened Watcher Heroic WF
								i(105214),	-- Sash of the Last Guardian Heroic WF
								i(105221),	-- Shadow-Binder's Kilt Heroic WF
								i(105216),	-- Untainted Guardian's Chain Heroic WF
								i(105222),	-- Wristplates of Broken Doubt Heroic WF
								i(105211),	-- Xifeng, Longblade of the Titanic Guardian Heroic WF
							}),
						},
					}),
					cr(71734, e(867, {	-- Sha of Pride
						-- #if BEFORE 6.0.2
						ig(99686),	-- Chest of the Cursed Conqueror
						ig(99691),	-- Chest of the Cursed Protector
						ig(99696),	-- Chest of the Cursed Vanquisher
						-- #endif
						i(102292),	-- Assurance of Consequence Heroic
						i(103883),	-- Choker of the Final Word Heroic
						i(103821),	-- Crown of Boastful Words Heroic
						i(103873),	-- Gaze of Arrogance Heroic
						i(103869),	-- Greatsword of Pride's Fall Heroic
						i(103878),	-- Greaves of Sublime Superiority Heroic
						i(103881),	-- Necklace of Fading Light Heroic
						i(102299),	-- Prismatic Prison of Pride Heroic
						i(103876),	-- Self-Reflecting Mask Heroic
						i(103870),	-- Shield of Mockery Heroic
						n(WARFORGED, {
							i(105223),	-- Assurance of Consequence Heroic WF
							i(105231),	-- Choker of the Final Word Heroic WF
							i(105228),	-- Crown of Boastful Words Heroic WF
							i(105226),	-- Gaze of Arrogance Heroic WF
							i(105230),	-- Greatsword of Pride's Fall Heroic WF
							i(105229),	-- Greaves of Sublime Superiority Heroic WF
							i(105224),	-- Necklace of Fading Light Heroic WF
							i(105225),	-- Prismatic Prison of Pride Heroic WF
							i(105227),	-- Self-Reflecting Mask Heroic WF
							i(105232),	-- Shield of Mockery Heroic WF
						}),
					})),
					cr(72249, e(881, {	-- Galakras
						i(103743),	-- Arcsmasher Bracers Heroic
						i(103805),	-- Bone-Inlaid Sandals Heroic
						i(103887),	-- Cannoneer's Multipocket Gunbelt Heroic
						i(103885),	-- Dagryn's Discarded Longbow Heroic
						i(103889),	-- Dagryn's Fuselight Bracers Heroic
						i(103905),	-- Dragonmaw Emergency Strap Heroic
						i(103875),	-- Drakebinder Greatstaff Heroic
						i(102298),	-- Evil Eye of Galakras Heroic
						i(103823),	-- Extinguished Ember of Galakras Heroic
						i(103900),	-- Flameslinger's Fiery Cowl Heroic
						i(103894),	-- Galakrond Control Band Heroic
						i(103765),	-- Grips of Tidal Force Heroic
						i(103831),	-- Korgra's Venom-Soaked Gauntlets Heroic
						i(103748),	-- Krugruk's Rigid Shoulderplates Heroic
						i(103850),	-- Scalebane Bracers Heroic
						i(103756),	-- Shoulderpads of Pulsing Protection Heroic
						i(103902),	-- Skydancer Boots Heroic
						i(103865),	-- Smoldering Drakescale Bracers Heroic
						i(103842),	-- Swift Serpent Signet Heroic
						i(103892),	-- Thranok's Shattering Helm Heroic
						i(105235),	-- Unrepentant Heels Heroic
						i(103907),	-- Windfire Legplates Heroic
						n(WARFORGED, {
							i(105240),	-- Arcsmasher Bracers Heroic WF
							i(105244),	-- Bone-Inlaid Sandals Heroic WF
							i(105237),	-- Cannoneer's Multipocket Gunbelt Heroic WF
							i(105233),	-- Dagryn's Discarded Longbow Heroic WF
							i(105238),	-- Dagryn's Fuselight Bracers Heroic WF
							i(105251),	-- Dragonmaw Emergency Strap Heroic WF
							i(105250),	-- Drakebinder Greatstaff Heroic WF
							i(105242),	-- Evil Eye of Galakras Heroic WF
							i(105249),	-- Extinguished Ember of Galakras Heroic WF
							i(105246),	-- Flameslinger's Fiery Cowl Heroic WF
							i(105243),	-- Galakrond Control Band Heroic WF
							i(105252),	-- Grips of Tidal Force Heroic WF
							i(105236),	-- Korgra's Venom-Soaked Gauntlets Heroic WF
							i(105241),	-- Krugruk's Rigid Shoulderplates Heroic WF
							i(105245),	-- Scalebane Bracers Heroic WF
							i(105248),	-- Shoulderpads of Pulsing Protection Heroic WF
							i(105247),	-- Skydancer Boots Heroic WF
							i(105253),	-- Smoldering Drakescale Bracers Heroic WF
							i(105234),	-- Swift Serpent Signet Heroic WF
							i(105239),	-- Thranok's Shattering Helm Heroic WF
							i(104488),	-- Unrepentant Heels Heroic WF
							i(105254),	-- Windfire Legplates Heroic WF
						}),
					})),
					cr(71466, e(864, {	-- Iron Juggernaut
						i(103898),	-- Belt of Ominous Trembles Heroic
						i(103767),	-- Borer Drill Boots Heroic
						i(103811),	-- Bracers of the Broken Fault Heroic
						i(103759),	-- Castlebreaker Bracers Heroic
						i(103863),	-- Cavemaker Wristguards Heroic
						i(103788),	-- Demolisher's Reinforced Belt Heroic
						i(103914),	-- Earthbreaker's Steaming Chestplate Heroic
						i(103754),	-- Earthripper Gloves Heroic
						i(102297),	-- Juggernaut's Focusing Crystal Heroic
						i(103916),	-- Juggernaut's Ignition Keys Heroic
						i(103918),	-- Juggernaut's Power Core Heroic
						i(103909),	-- Laser Burn Bracers Heroic
						i(103773),	-- Laser-Slice Signet Heroic
						i(103921),	-- Leggings of Furious Flame Heroic
						i(103731),	-- Minelayer's Padded Boots Heroic
						i(103782),	-- Precision Cutters Heroic
						i(103912),	-- Ricocheting Shoulderguards Heroic
						i(103908),	-- Seismic Bore Heroic
						i(103922),	-- Shock Pulse Robes Heroic
						i(103735),	-- Tar-Coated Gauntlets Heroic
						i(103813),	-- Treads of Autonomic Motion Heroic
						i(103739),	-- Wall-Borer Bracers Heroic
						n(WARFORGED, {
							i(105266),	-- Belt of Ominous Trembles Heroic WF
							i(105276),	-- Borer Drill Boots Heroic WF
							i(105268),	-- Bracers of the Broken Fault Heroic WF
							i(105273),	-- Castlebreaker Bracers Heroic WF
							i(105275),	-- Cavemaker Wristguards Heroic WF
							i(105260),	-- Demolisher's Reinforced Belt Heroic WF
							i(105263),	-- Earthbreaker's Steaming Chestplate Heroic WF
							i(105269),	-- Earthripper Gloves Heroic WF
							i(105265),	-- Juggernaut's Focusing Crystal Heroic WF
							i(105264),	-- Juggernaut's Ignition Keys Heroic WF
							i(105272),	-- Juggernaut's Power Core Heroic WF
							i(105256),	-- Laser Burn Bracers Heroic WF
							i(105271),	-- Laser-Slice Signet Heroic WF
							i(105267),	-- Leggings of Furious Flame Heroic WF
							i(105258),	-- Minelayer's Padded Boots Heroic WF
							i(105259),	-- Precision Cutters Heroic WF
							i(105257),	-- Ricocheting Shoulderguards Heroic WF
							i(105255),	-- Seismic Bore Heroic WF
							i(105270),	-- Shock Pulse Robes Heroic WF
							i(105262),	-- Tar-Coated Gauntlets Heroic WF
							i(105274),	-- Treads of Autonomic Motion Heroic WF
							i(105261),	-- Wall-Borer Bracers Heroic WF
						}),
					})),
					cr(71859, e(856, {	-- Kor'kron Dark Shaman (Earthbreaker Haromm)
						i(103932),	-- Ashen Wall Girdle Heroic
						i(103868),	-- Ashflare Pendant Heroic
						i(103940),	-- Belt of the Iron Prison Heroic
						i(103798),	-- Bloodclaw Band Heroic
						i(103737),	-- Breastplate of Shamanic Mirrors Heroic
						i(103927),	-- Damron's Belt of Darkness Heroic
						i(103877),	-- Darkfang Mask Heroic
						i(103926),	-- Haromm's Frozen Crescent Heroic
						i(103930),	-- Haromm's Horrifying Helm Heroic
						i(102301),	-- Haromm's Talisman Heroic
						i(103938),	-- Iron Wolf Hood Heroic
						i(103936),	-- Kardris' Scepter Heroic
						i(102300),	-- Kardris' Toxic Totem Heroic
						i(103934),	-- Poisonmist Nightcloak Heroic
						i(103895),	-- Ring of the Iron Tomb Heroic
						i(103929),	-- Riou's Vigilant Leggings Heroic
						i(103866),	-- Shackles of Stinking Slime Heroic
						i(103816),	-- Shoulderguards of Foul Streams Heroic
						i(103943),	-- Shoulderplates of Gushing Geysers Heroic
						i(103806),	-- Toxic Tornado Treads Heroic
						i(103880),	-- Wolf-Rider Spurs Heroic
						n(WARFORGED, {
							i(105284),	-- Ashen Wall Girdle Heroic WF
							i(105290),	-- Ashflare Pendant Heroic WF
							i(105294),	-- Belt of the Iron Prison Heroic WF
							i(105285),	-- Bloodclaw Band Heroic WF
							i(105283),	-- Breastplate of Shamanic Mirrors Heroic WF
							i(105279),	-- Damron's Belt of Darkness Heroic WF
							i(105293),	-- Darkfang Mask Heroic WF
							i(105286),	-- Haromm's Frozen Crescent Heroic WF
							i(105281),	-- Haromm's Horrifying Helm Heroic WF
							i(105278),	-- Haromm's Talisman Heroic WF
							i(105289),	-- Iron Wolf Hood Heroic WF
							i(105292),	-- Kardris' Scepter Heroic WF
							i(105291),	-- Kardris' Toxic Totem Heroic WF
							i(105277),	-- Poisonmist Nightcloak Heroic WF
							i(105287),	-- Ring of the Iron Tomb Heroic WF
							i(105280),	-- Riou's Vigilant Leggings Heroic WF
							i(105296),	-- Shackles of Stinking Slime Heroic WF
							i(105295),	-- Shoulderguards of Foul Streams Heroic WF
							i(105297),	-- Shoulderplates of Gushing Geysers Heroic WF
							i(105288),	-- Toxic Tornado Treads Heroic WF
							i(105282),	-- Wolf-Rider Spurs Heroic WF
						}),
					})),
					cr(71515, e(850, {	-- General Nazgrim
						-- #if BEFORE 6.0.2
						ig(99687),	-- Gauntlets of the Cursed Conqueror
						ig(99692),	-- Gauntlets of the Cursed Protector
						ig(99682),	-- Gauntlets of the Cursed Vanquisher
						-- #endif
						i(103946),	-- Arcweaver Spell Sword Heroic
						i(103872),	-- Bulwark of the Fallen General Heroic
						i(103949),	-- Crown of Tragic Truth Heroic
						i(103945),	-- Gar'tok, Strength of the Faithful Heroic
						i(102294),	-- Nazgrim's Burnished Insignia Heroic
						i(103829),	-- Nazgrim's Gutripper Heroic
						i(103732),	-- Ravager's Pathwalkers Heroic
						i(103947),	-- Robes of the Warrior's Fall Heroic
						i(103904),	-- Sandals of Two Little Bees Heroic
						i(103913),	-- Shoulderguards of the Righteous Stand Heroic
						i(103808),	-- Spaulders of Kor'kron Fealty Heroic
						n(WARFORGED, {
							i(105301),	-- Arcweaver Spell Sword Heroic WF
							i(105307),	-- Bulwark of the Fallen General Heroic WF
							i(105305),	-- Crown of Tragic Truth Heroic WF
							i(105306),	-- Gar'tok, Strength of the Faithful Heroic WF
							i(105300),	-- Nazgrim's Burnished Insignia Heroic WF
							i(105298),	-- Nazgrim's Gutripper Heroic WF
							i(105304),	-- Ravager's Pathwalkers Heroic WF
							i(105303),	-- Robes of the Warrior's Fall Heroic WF
							i(105299),	-- Sandals of Two Little Bees Heroic WF
							i(105302),	-- Shoulderguards of the Righteous Stand Heroic WF
							i(105308),	-- Spaulders of Kor'kron Fealty Heroic WF
						}),
					})),
					cr(71454, e(846, {	-- Malkorok
						i(103959),	-- Black-Blooded Drape Heroic
						i(103742),	-- Blood Rage Bracers Heroic
						i(103761),	-- Boots of Perilous Infusion Heroic
						i(103758),	-- Bracers of Averted Fatality Heroic
						i(103955),	-- Ebon Blood Chestguard Heroic
						i(102303),	-- Frenzied Crystal of Rage Heroic
						i(103952),	-- Halberd of Inner Shadows Heroic
						i(103939),	-- Hood of Perpetual Implosion Heroic
						i(103953),	-- Kor'kron Hand Cannon Heroic
						i(103835),	-- Lazahk's Lost Shadowrap Heroic
						i(103954),	-- Legplates of Willful Doom Heroic
						i(103879),	-- Malkorok's Giant Stompers Heroic
						i(103951),	-- Malkorok's Skullcleaver Heroic
						i(103917),	-- Malkorok's Tainted Dog Tags Heroic
						i(103899),	-- Miasmic Skullbelt Heroic
						i(103843),	-- Ring of Restless Energy Heroic
						i(103923),	-- Robes of Riven Dreams Heroic
						i(103772),	-- Seal of Sullen Fury Heroic
						i(103957),	-- Terrorguard Chestplate Heroic
						i(102306),	-- Vial of Living Corruption Heroic
						i(103848),	-- Visage of the Monstrous Heroic
						i(103890),	-- Wristguards of Ruination Heroic
						n(WARFORGED, {
							i(105324),	-- Black-Blooded Drape Heroic WF
							i(105315),	-- Blood Rage Bracers Heroic WF
							i(105327),	-- Boots of Perilous Infusion Heroic WF
							i(105328),	-- Bracers of Averted Fatality Heroic WF
							i(105329),	-- Ebon Blood Chestguard Heroic WF
							i(105323),	-- Frenzied Crystal of Rage Heroic WF
							i(105311),	-- Halberd of Inner Shadows Heroic WF
							i(105321),	-- Hood of Perpetual Implosion Heroic WF
							i(105310),	-- Kor'kron Hand Cannon Heroic WF
							i(105312),	-- Lazahk's Lost Shadowrap Heroic WF
							i(105316),	-- Legplates of Willful Doom Heroic WF
							i(105314),	-- Malkorok's Giant Stompers Heroic WF
							i(105318),	-- Malkorok's Skullcleaver Heroic WF
							i(105317),	-- Malkorok's Tainted Dog Tags Heroic WF
							i(105320),	-- Miasmic Skullbelt Heroic WF
							i(105309),	-- Ring of Restless Energy Heroic WF
							i(105322),	-- Robes of Riven Dreams Heroic WF
							i(105325),	-- Seal of Sullen Fury Heroic WF
							i(105330),	-- Terrorguard Chestplate Heroic WF
							i(105319),	-- Vial of Living Corruption Heroic WF
							i(105326),	-- Visage of the Monstrous Heroic WF
							i(105313),	-- Wristguards of Ruination Heroic WF
						}),
					})),
					cr(71889, e(870, {	-- Spoils of Pandaria (Secured Stockpile of Pandaren Spoils)
						i(103962),	-- Ancient Archer's Chestguard Heroic
						i(103871),	-- Ancient Mogu Tower Shield Heroic
						i(103888),	-- Arrowflight Girdle Heroic
						i(103851),	-- Avool's Ancestral Bracers Heroic
						i(103862),	-- Bracers of the Pristine Purifier Heroic
						i(103941),	-- Chitin-Link Chain Belt Heroic
						i(103961),	-- Enchanted Shao-Tien Saber Heroic
						i(103893),	-- Helm of the Night Watchman Heroic
						i(103964),	-- Immaculately Preserved Wand Heroic
						i(103860),	-- Klaxxi Grips of Rejuvenation Heroic
						i(103882),	-- Lost Necklace of the Mogu Empress Heroic
						i(103911),	-- Mantid Carapace Augments Heroic
						i(103803),	-- Mantid Vizier's Robes Heroic
						i(103768),	-- Mogu Mindbender's Greaves Heroic
						i(103745),	-- Ominous Mogu Greatboots Heroic
						i(103779),	-- Pandaren Roofsprinters Heroic
						i(103965),	-- Plate Belt of the War-Healer Heroic
						i(103796),	-- Seal of the Forgotten Kings Heroic
						i(103967),	-- Shado-Pan Reliquary Kilt Heroic
						i(102302),	-- Sigil of Rampage Heroic
						i(103933),	-- Untarnishable Greatbelt Heroic
						n(WARFORGED, {
							i(105336),	-- Ancient Archer's Chestguard Heroic WF
							i(105341),	-- Ancient Mogu Tower Shield Heroic WF
							i(105335),	-- Arrowflight Girdle Heroic WF
							i(105342),	-- Avool's Ancestral Bracers Heroic WF
							i(105349),	-- Bracers of the Pristine Purifier Heroic WF
							i(105348),	-- Chitin-Link Chain Belt Heroic WF
							i(105332),	-- Enchanted Shao-Tien Saber Heroic WF
							i(105337),	-- Helm of the Night Watchman Heroic WF
							i(105345),	-- Immaculately Preserved Wand Heroic WF
							i(105346),	-- Klaxxi Grips of Rejuvenation Heroic WF
							i(105344),	-- Lost Necklace of the Mogu Empress Heroic WF
							i(105334),	-- Mantid Carapace Augments Heroic WF
							i(105343),	-- Mantid Vizier's Robes Heroic WF
							i(105351),	-- Mogu Mindbender's Greaves Heroic WF
							i(105339),	-- Ominous Mogu Greatboots Heroic WF
							i(105333),	-- Pandaren Roofsprinters Heroic WF
							i(105350),	-- Plate Belt of the War-Healer Heroic WF
							i(105340),	-- Seal of the Forgotten Kings Heroic WF
							i(105347),	-- Shado-Pan Reliquary Kilt Heroic WF
							i(105331),	-- Sigil of Rampage Heroic WF
							i(105338),	-- Untarnishable Greatbelt Heroic WF
						}),
					})),
					cr(71529, e(851, {	-- Thok the Bloodthirsty
						-- #if BEFORE 6.0.2
						ig(99689),	-- Helm of the Cursed Conqueror
						ig(99694),	-- Helm of the Cursed Protector
						ig(99683),	-- Helm of the Cursed Vanquisher
						-- #endif
						i(104308),	-- Akolik's Acid-Soaked Robes Heroic
						i(103968),	-- Britomart's Jagged Pike Heroic
						i(103896),	-- Devilfang Band Heroic
						i(103919),	-- Festering Primordial Globule Heroic
						i(103750),	-- Gleaming Eye of the Devilsaur Heroic
						i(103828),	-- Hvitserk's Formidable Shanker Heroic
						i(103915),	-- Icy Blood Chestplate Heroic
						i(103853),	-- Montak's Grips of Scorching Breath Heroic
						i(103774),	-- Signet of the Dinomancers Heroic
						i(102304),	-- Thok's Acid-Grooved Tooth Heroic
						i(102305),	-- Thok's Tail Tip Heroic
						n(WARFORGED, {
							i(105355),	-- Akolik's Acid-Soaked Robes Heroic WF
							i(105361),	-- Britomart's Jagged Pike Heroic WF
							i(105362),	-- Devilfang Band Heroic WF
							i(105356),	-- Festering Primordial Globule Heroic WF
							i(105353),	-- Gleaming Eye of the Devilsaur Heroic WF
							i(105352),	-- Hvitserk's Formidable Shanker Heroic WF
							i(105359),	-- Icy Blood Chestplate Heroic WF
							i(105354),	-- Montak's Grips of Scorching Breath Heroic WF
							i(105357),	-- Signet of the Dinomancers Heroic WF
							i(105358),	-- Thok's Acid-Grooved Tooth Heroic WF
							i(105360),	-- Thok's Tail Tip Heroic WF
						}),
					})),
					cr(71504, e(865, {	-- Siegecrafter Blackfuse
						-- #if BEFORE 6.0.2
						ig(99690),	-- Shoulders of the Cursed Conqueror
						ig(99695),	-- Shoulders of the Cursed Protector
						ig(99685),	-- Shoulders of the Cursed Vanquisher
						-- #endif
						i(103794),	-- Asgorathian Blood Seal Heroic
						i(103884),	-- Blackfuse's Blasting Cord Heroic
						i(103910),	-- Bomber's Blackened Wristwatch Heroic
						i(103891),	-- Bracers of Infinite Pipes Heroic
						i(103792),	-- Calixian Bladebreakers Heroic
						i(102309),	-- Dysmorphic Samophlange of Discontinuity Heroic
						i(103970),	-- Fusespark Gloves Heroic
						i(103874),	-- Lever of the Megantholithic Apparatus Heroic
						i(103814),	-- Powder-Stained Totemic Treads Heroic
						i(103969),	-- Siegecrafter's Forge Hammer Heroic
						i(102311),	-- Ticking Ebon Detonator Heroic
						n(WARFORGED, {
							i(105371),	-- Asgorathian Blood Seal Heroic WF
							i(105373),	-- Blackfuse's Blasting Cord Heroic WF
							i(105367),	-- Bomber's Blackened Wristwatch Heroic WF
							i(105368),	-- Bracers of Infinite Pipes Heroic WF
							i(105370),	-- Calixian Bladebreakers Heroic WF
							i(105366),	-- Dysmorphic Samophlange of Discontinuity Heroic WF
							i(105364),	-- Fusespark Gloves Heroic WF
							i(105365),	-- Lever of the Megantholithic Apparatus Heroic WF
							i(105369),	-- Powder-Stained Totemic Treads Heroic WF
							i(105372),	-- Siegecrafter's Forge Hammer Heroic WF
							i(105363),	-- Ticking Ebon Detonator Heroic WF
						}),
					})),
					e(853, {	-- Paragons of the Klaxxi
						["crs"] = {
							71153,	-- Hisek the Swarmkeeper
							71160,	-- Iyyokuk the Lucid
							71154,	-- Ka'roz the Locust
							71156,	-- Kaz'tik the Manipulator
							71161,	-- Kil'ruk the Wind-Reaver
							71155,	-- Korven the Prime
							71157,	-- Xaril the Poisoned Mind
							71158,	-- Rik'kal the Dissector
							71152,	-- Skeer the Bloodseeker
						},
						["groups"] = {
							-- #if BEFORE 6.0.2
							ig(99688),	-- Leggings of the Cursed Conqueror
							ig(99693),	-- Leggings of the Cursed Protector
							ig(99684),	-- Leggings of the Cursed Vanquisher
							-- #endif
							i(103948),	-- Amber Parasite Wraps Heroic
							i(103810),	-- Bracers of Sonic Projection Heroic
							i(103956),	-- Chestguard of Toxic Injections Heroic
							i(103819),	-- Gauntlets of Insane Calculations Heroic
							i(103886),	-- Hisek's Reserve Longbow Heroic
							i(103824),	-- Iyyokuk's Hereditary Seal Heroic
							i(103844),	-- Kil'ruk's Band of Ascendancy Heroic
							i(103972),	-- Kil'ruk's Furious Blade Heroic
							i(103971),	-- Korven's Crimson Crescent Heroic
							i(103973),	-- Rik'kal's Bloody Scalpel Heroic
							i(102308),	-- Skeer's Bloodsoaked Talisman Heroic
							n(WARFORGED, {
								i(105380),	-- Amber Parasite Wraps Heroic WF
								i(105377),	-- Bracers of Sonic Projection Heroic WF
								i(105381),	-- Chestguard of Toxic Injections Heroic WF
								i(105382),	-- Gauntlets of Insane Calculations Heroic WF
								i(105374),	-- Hisek's Reserve Longbow Heroic WF
								i(105379),	-- Iyyokuk's Hereditary Seal Heroic WF
								i(105375),	-- Kil'ruk's Band of Ascendancy Heroic WF
								i(105384),	-- Kil'ruk's Furious Blade Heroic WF
								i(105376),	-- Korven's Crimson Crescent Heroic WF
								i(105378),	-- Rik'kal's Bloody Scalpel Heroic WF
								i(105383),	-- Skeer's Bloodsoaked Talisman Heroic WF
							}),
						},
					}),
					cr(71865, e(869, {	-- Garrosh Hellscream
						-- #if BEFORE 6.0.2
						ig(105858),	-- Essence of the Cursed Conqueror
						ig(105857),	-- Essence of the Cursed Protector
						ig(105859),	-- Essence of the Cursed Vanquisher
						-- #endif
						i(103856),	-- Belt of the Broken Pact Heroic
						i(102310),	-- Black Blood of Y'Shaarj Heroic
						i(103963),	-- Chestguard of Relentless Tyranny Heroic
						i(103958),	-- Chestplate of Fallen Passion Heroic
						i(103928),	-- Cord of Black Dreams Heroic
						i(103950),	-- Cowl of Smoking Dreams Heroic
						i(102307),	-- Curse of Hubris Heroic
						i(103901),	-- Ebon Ritual Hood Heroic
						i(103840),	-- Greathelm of the Warchief Heroic
						i(103925),	-- Hopeglow Spaulders Heroic
						i(103937),	-- Horned Mace of the Old Ones Heroic
						i(103729),	-- Kor'kron Elite Skullmask Heroic
						i(103974),	-- Kor'kron Spire of Supremacy Heroic
						i(104311),	-- Legplates of Unthinking Strife Heroic
						i(103944),	-- Mantle of Looming Darkness Heroic
						i(103931),	-- Penetrating Gaze of Y'Shaarj Heroic
						i(103920),	-- Revelations of Y'Shaarj Heroic
						i(103906),	-- Seal of Karmic Return Heroic
						i(103837),	-- Shoulderguards of Intended Power Heroic
						i(103784),	-- Spaulders of the Fallen Warchief Heroic
						i(103785),	-- Tusks of Mannoroth Heroic
						i(103649),	-- Xal'atoh, Desecrated Image of Gorehowl Heroic
						n(HEIRLOOMS, {
							i(104409),	-- Hellscream's Barrier
							i(104404),	-- Hellscream's Cleaver
							i(104405),	-- Hellscream's Decapitator
							i(104401),	-- Hellscream's Doomblade
							i(104403),	-- Hellscream's Pig Sticker
							i(104400),	-- Hellscream's Razor
							i(104407),	-- Hellscream's Shield Wall
							i(104408),	-- Hellscream's Tome of Destruction
							i(104406),	-- Hellscream's War Staff
							i(104399),	-- Hellscream's Warbow
							i(104402),	-- Hellscream's Warmace
						}),
						n(WARFORGED, {
							i(105397),	-- Belt of the Broken Pact Heroic WF
							i(105399),	-- Black Blood of Y'Shaarj Heroic WF
							i(105388),	-- Chestguard of Relentless Tyranny Heroic WF
							i(105405),	-- Chestplate of Fallen Passion Heroic WF
							i(105386),	-- Cord of Black Dreams Heroic WF
							i(105404),	-- Cowl of Smoking Dreams Heroic WF
							i(105396),	-- Curse of Hubris Heroic WF
							i(105398),	-- Ebon Ritual Hood Heroic WF
							i(105394),	-- Greathelm of the Warchief Heroic WF
							i(105403),	-- Hopeglow Spaulders Heroic WF
							i(105400),	-- Horned Mace of the Old Ones Heroic WF
							i(105387),	-- Kor'kron Elite Skullmask Heroic WF
							i(105385),	-- Kor'kron Spire of Supremacy Heroic WF
							i(105391),	-- Legplates of Unthinking Strife Heroic WF
							i(105406),	-- Mantle of Looming Darkness Heroic WF
							i(105389),	-- Penetrating Gaze of Y'Shaarj Heroic WF
							i(105401),	-- Revelations of Y'Shaarj Heroic WF
							i(105402),	-- Seal of Karmic Return Heroic WF
							i(105390),	-- Shoulderguards of Intended Power Heroic WF
							i(105392),	-- Spaulders of the Fallen Warchief Heroic WF
							i(105393),	-- Tusks of Mannoroth Heroic WF
							i(105395),	-- Xal'atoh, Desecrated Image of Gorehowl Heroic WF
						}),
					})),
				},
			}),
			d(DIFFICULTY.RAID.HEROIC, {					-- Heroic (Added with Patch 6.0.2)
				["timeline"] = { ADDED_6_0_2 },
				["ItemAppearanceModifierID"] = 0,
				["groups"] = {
					n(ZONE_DROPS, {
						i(113224),	-- Aeth's Swiftcinder Cloak
						i(113231),	-- Brave Niunai's Cloak
						i(113226),	-- Cape of the Alpha
						i(113230),	-- Drape of the Omega
						i(113223),	-- Turtleshell Greatcloak
						i(113225),	-- Kalaena's Arcane Handwraps
						i(113218),	-- Seebo's Sainted Touch
						i(113220),	-- Crimson Gauntlets of Death
						i(113221),	-- Siid's Silent Stranglers
						i(113222),	-- Keengrip Arrowpullers
						i(113227),	-- Marco's Crackling Gloves
						i(113228),	-- Gauntlets of Discarded Time
						i(113219),	-- Romy's Reliable Grips
						i(113229),	-- Zoid's Molten Gauntlets
					}),
					cr(71543, e(852, {	-- Immerseus
						i(110784),	-- Trident of Corrupted Waters
						i(110785),	-- Encapsulated Essence of Immerseus
						i(112382),	-- Hood of Blackened Tears
						i(112424),	-- Hood of Swirling Senses
						i(110761),	-- Immerseus' Crystalline Eye
						i(112423),	-- Ichor-Dripping Shoulderpads
						i(112421),	-- Pauldrons of Violent Eruption
						i(112425),	-- Cloak of Misguided Power
						i(112417),	-- Chestplate of Congealed Corrosion
						i(112429),	-- Bracers of Purified Spirit
						i(112420),	-- Bracers of Sordid Sleep
						i(112416),	-- Bubble-Burst Bracers
						i(112422),	-- Bolt-Burster Grips
						i(112418),	-- Corruption-Rotted Gauntlets
						i(112445),	-- Soul-Soaked Gloves
						i(112447),	-- Greatbelt of Living Waters
						i(112383),	-- Puddle Punishers
						i(112428),	-- Salt Water Sandals
						i(112419),	-- Treads of Unchained Hate
						i(112448),	-- Waterwalker Greatboots
						i(112427),	-- Seal of Eternal Sorrow
						i(112426),	-- Purified Bindings of Immerseus
					})),
					e(849, {	-- The Fallen Protectors
						["crs"] = {
							71479,	-- He Softfoot [The Fallen Protectors]
							71475,	-- Rook Stonetoe [The Fallen Protectors]
							71480,	-- Sun Tenderheart [The Fallen Protectors]
						},
						["groups"] = {
							i(112477),	-- Softfoot's Last Resort
							i(112478),	-- Death Lotus Crossbow
							i(112491),	-- Purehearted Cricket Cage
							i(112496),	-- Gaze of Echoing Despair
							i(112481),	-- Darkfallen Shoulderplates
							i(112494),	-- Shoulderguards of Dark Meditations
							i(112488),	-- Shoulderpads of Dou Dou Chong
							i(112492),	-- Shoulders of the Roiling Inferno
							i(112485),	-- Gloomwrap Greatcloak
							i(112487),	-- Robes of the Tendered Heart
							i(112489),	-- Lifebane Bracers
							i(112495),	-- Grips of the Fallen Council
							i(112480),	-- Grips of Unending Anguish
							i(112483),	-- Shockstriker Gauntlets
							i(112482),	-- Poisonbinder Girth
							i(112493),	-- Sabatons of Defilement
							i(112486),	-- Sha-Seared Sandals
							i(112479),	-- Stonetoe's Tormented Treads
							i(112490),	-- Petrified Pennyroyal Ring
							i(112484),	-- Sorrowpath Signet
							i(112476),	-- Rook's Unlucky Talisman
						},
					}),
					e(866, {	-- Norushen
						["crs"] = {
							72276,	-- Amalgam of Corruption
							71965,	-- Norushen
						},
						["groups"] = {
							i(112547),	-- Norushen's Shortblade
							i(112546),	-- Xifeng, Longblade of the Titanic Guardian
							i(112560),	-- Norushen's Enigmatic Barrier
							i(112552),	-- Rage-Blind Greathelm
							i(112559),	-- Untainted Guardian's Chain
							i(112550),	-- Quarantine Shoulderguards
							i(112558),	-- Rime-Rift Shoulders
							i(112554),	-- Drape of the Despairing Pit
							i(112549),	-- Robes of the Blackened Watcher
							i(112545),	-- Bracers of Blind Hatred
							i(112555),	-- Bracers of Broken Causation
							i(112563),	-- Bracers of Final Serenity
							i(112565),	-- Wristplates of Broken Doubt
							i(112556),	-- Blight Hurlers
							i(112562),	-- Confident Grips
							i(112548),	-- Gloves of the Golden Protector
							i(112557),	-- Sash of the Last Guardian
							i(112551),	-- Leggings of Unabashed Anger
							i(112564),	-- Shadow-Binder's Kilt
							i(112561),	-- Boots of Broken Reliance
							i(112553),	-- Reality Ripper Ring
							i(112503),	-- Fusion-Fire Core
						},
					}),
					cr(71734, e(867, {	-- Sha of Pride
						ig(99686),	-- Chest of the Cursed Conqueror
						ig(99691),	-- Chest of the Cursed Protector
						ig(99696),	-- Chest of the Cursed Vanquisher
						i(112951),	-- Gaze of Arrogance
						i(112949),	-- Greatsword of Pride's Fall
						i(112950),	-- Shield of Mockery
						i(112702),	-- Crown of Boastful Words
						i(112952),	-- Self-Reflecting Mask
						i(112955),	-- Choker of the Final Word
						i(112954),	-- Necklace of Fading Light
						i(112953),	-- Greaves of Sublime Superiority
						i(112947),	-- Assurance of Consequence
						i(112948),	-- Prismatic Prison of Pride
					})),
					cr(72249, e(881, {	-- Galakras
						i(112723),	-- Drakebinder Greatstaff
						i(112710),	-- Dagryn's Discarded Longbow
						i(112717),	-- Flameslinger's Fiery Cowl
						i(112713),	-- Thranok's Shattering Helm
						i(112705),	-- Kruguk's Rigid Shoulderplates
						i(112719),	-- Shoulderpads of Pulsing Protection
						i(112704),	-- Arcsmasher Bracers
						i(112712),	-- Dagryn's Fuselight Bracers
						i(112716),	-- Scalebone Bracers
						i(112727),	-- Smoldering Drakescale Bracers
						i(112726),	-- Grips of Tidal Force
						i(112707),	-- Korgra's Venom-Soaked Gauntlets
						i(112711),	-- Cannoneer's Multipocket Gunbelt
						i(112725),	-- Dragonmaw Emergency Strap
						i(112728),	-- Windfire Legplates
						i(112715),	-- Bone-Inlaid Sandals
						i(112718),	-- Skydancer Boots
						i(112706),	-- Unrepentant Heels
						i(112721),	-- Extinguished Ember of Galakras
						i(112714),	-- Galakrond Control Band
						i(112709),	-- Swift Serpent Signet
						i(112703),	-- Evil Eye of Galakras
					})),
					cr(71466, e(864, {	-- Iron Juggernaut
						i(112736),	-- Seismic Bore
						i(112748),	-- Juggernaut's Power Core
						i(112742),	-- Juggernaut's Ignition Keys
						i(112740),	-- Ricocheting Shoulderguards
						i(112741),	-- Earthbreaker's Steaming Chestplate
						i(112746),	-- Shock Pulse Robes
						i(112745),	-- Bracers of the Broken Fault
						i(112749),	-- Castlebreaker Bracers
						i(112751),	-- Cavemaker Wristguards
						i(112739),	-- Laser Burn Bracers
						i(112733),	-- Wall-Borer Bracers
						i(112946),	-- Earthripper Gloves
						i(112734),	-- Precision Cutters
						i(112732),	-- Tar-Coated Gauntlets
						i(112743),	-- Belt of Ominous Trembles
						i(112735),	-- Demolisher's Reinforced Belt
						i(112744),	-- Leggings of Furious Flame
						i(112752),	-- Borer Drill Boots
						i(112731),	-- Minelayer's Padded Boots
						i(112750),	-- Treads of Autonomic Motion
						i(112747),	-- Laser-Slice Signet
						i(112729),	-- Juggernaut's Focusing Crystal
					})),
					cr(71859, e(856, {	-- Kor'kron Dark Shaman (Earthbreaker Haromm)
						["crs"] = {
							71859,	-- Earthbreaker Haromm
							71858,	-- Wavebinder Kardris
						},
						["groups"] = {
							i(112759),	-- Haromm's Frozen Crescent
							i(112769),	-- Kardris' Scepter
							i(112770),	-- Darkfang Mask
							i(112762),	-- Haromm's Horrifying Helm
							i(112766),	-- Iron Wolf Hood
							i(112767),	-- Ashflare Pendant
							i(112772),	-- Shoulderguards of Foul Streams
							i(112774),	-- Shoulderplates of Gushing Geysers
							i(112764),	-- Poisonmist Nightcloak
							i(112755),	-- Breastplate of Shamanic Mirrors
							i(112773),	-- Shackles of Stinking Slime
							i(112763),	-- Ashen Wall Girdle
							i(112771),	-- Belt of the Iron Prison
							i(112760),	-- Damron's Belt of Darkness
							i(112761),	-- Riou's Vigilant Leggings
							i(112765),	-- Toxic Tornado Treads
							i(112757),	-- Wolf-Rider Spurs
							i(112756),	-- Bloodclaw Band
							i(112758),	-- Ring of the Iron Tomb
							i(112754),	-- Haromm's Talisman
							i(112768),	-- Kardris' Toxic Totem
						},
					})),
					cr(71515, e(850, {	-- General Nazgrim
						ig(99687),	-- Gauntlets of the Cursed Conqueror
						ig(99692),	-- Gauntlets of the Cursed Protector
						ig(99682),	-- Gauntlets of the Cursed Vanquisher
						i(112785),	-- Gar'tok, Strength of the Faithful
						i(112787),	-- Arcweaver Spell Sword
						i(112780),	-- Naz'grim's Gutripper
						i(112781),	-- Bulwark of the Fallen General
						i(112789),	-- Crown of Tragic Truth
						i(112783),	-- Shoulderguards of the Righteous Stand
						i(112790),	-- Spaulders of Kor'kron Fealty
						i(112788),	-- Robes of the Warrior's Fall
						i(112779),	-- Ravager's Pathwalkers
						i(112782),	-- Sandals of Two Little Bees
						i(112778),	-- Nazgrim's Burnished Insignia
					})),
					cr(71454, e(846, {	-- Malkorok
						i(112805),	-- Halberd of Inner Shadows
						i(112804),	-- Malkorok's Skullcleaver
						i(112806),	-- Kor'kron Hand Cannon
						i(112818),	-- Visage of the Monstrous
						i(112813),	-- Hood of Perpetual Implosion
						i(112803),	-- Malkorok's Tainted Dog Tags
						i(112816),	-- Black-Blooded Drape
						i(112821),	-- Ebon Blood Chestguard
						i(112794),	-- Lazahk's Lost Shadowrap
						i(112814),	-- Robes of Riven Dreams
						i(112823),	-- Terrorguard Chestplate
						i(112793),	-- Blood Rage Bracers
						i(112820),	-- Bracers of Averted Fatality
						i(112797),	-- Wristguards of Ruination
						i(112808),	-- Miasmic Skullbelt
						i(112807),	-- Legplates of Willful Doom
						i(112819),	-- Boots of Perilous Infusion
						i(112796),	-- Malkorok's Giant Stompers
						i(112795),	-- Ring of Restless Energy
						i(112817),	-- Seal of Sullen Fury
						i(112815),	-- Frenzied Crystal of Rage
						i(112792),	-- Vial of Living Corruption
					})),
					cr(71889, e(870, {	-- Spoils of Pandaria (Secured Stockpile of Pandaren Spoils)
						i(112835),	-- Enchanted Shao-Tien Saber
						i(112841),	-- Immaculately Preserved Wand
						i(112829),	-- Ancient Mogu Tower Shield
						i(112832),	-- Helm of the Night Watchman
						i(112839),	-- Lost Necklace of the Mogu Empress
						i(112836),	-- Ancient Archer's Chestguard
						i(112838),	-- Mantid Vizier's Robes
						i(112837),	-- Avool's Ancestral Bracers
						i(112845),	-- Bracers of the Pristine Purifier
						i(112833),	-- Mantid Carapace Augments
						i(112842),	-- Klaxxi Grips of Rejuvenation
						i(112831),	-- Arrowflight Girdle
						i(112844),	-- Chitin-Link Chain Belt
						i(112846),	-- Plate Belt of the War-Healer
						i(112834),	-- Untarnishable Greatbelt
						i(112843),	-- Shado-Pan Reliquary Kilt
						i(112847),	-- Mogu Mindbender's Greaves
						i(112826),	-- Ominous Mogu Greatboots
						i(112827),	-- Pandaren Roofsprinters
						i(112828),	-- Seal of the Forgotten Kings
						i(112825),	-- Sigil of Rampage
					})),
					cr(71529, e(851, {	-- Thok the Bloodthirsty
						ig(99689),	-- Helm of the Cursed Conqueror
						ig(99694),	-- Helm of the Cursed Protector
						ig(99683),	-- Helm of the Cursed Vanquisher
						i(112862),	-- Britomart's Jagged Pike
						i(112853),	-- Hvitserk's Formidable Shanker
						i(112861),	-- Festering Primordial Globule
						i(112851),	-- Gleaming Eye of the Devilsaur
						i(112866),	-- Akolik's Acid-Soaked Robes
						i(112856),	-- Icy Blood Chestplate
						i(112854),	-- Montak's Grips of Scorching Breath
						i(112855),	-- Devilfang Band
						i(112852),	-- Signet of the Dinomancers
						i(112849),	-- Thok's Acid-Grooved Tooth
						i(112850),	-- Thok's Tail Tip
					})),
					cr(71504, e(865, {	-- Siegecrafter Blackfuse
						ig(99690),	-- Shoulders of the Cursed Conqueror
						ig(99695),	-- Shoulders of the Cursed Protector
						ig(99685),	-- Shoulders of the Cursed Vanquisher
						i(112892),	-- Lever of the Megantholithic Apparatus
						i(112897),	-- Siegecrafter's Forge Hammer
						i(112894),	-- Blackfuse's Blasting Cord
						i(112896),	-- Bomber's Blackened Wristwatch
						i(112895),	-- Bracers of Infinite Pipes
						i(112882),	-- Calixian Bladebreakers
						i(112898),	-- Fusespark Gloves
						i(112890),	-- Powder-Stained Totemic Treads
						i(112883),	-- Asgorathian Blood Seal
						i(112877),	-- Dysmorphic Samophlange of Discontinuity
						i(112879),	-- Ticking Ebon Detonator
					})),
					e(853, {	-- Paragons of the Klaxxi
						["crs"] = {
							71153,	-- Hisek the Swarmkeeper
							71160,	-- Iyyokuk the Lucid
							71154,	-- Ka'roz the Locust
							71156,	-- Kaz'tik the Manipulator
							71161,	-- Kil'ruk the Wind-Reaver
							71155,	-- Korven the Prime
							71157,	-- Xaril the Poisoned Mind
							71158,	-- Rik'kal the Dissector
							71152,	-- Skeer the Bloodseeker
						},
						["groups"] = {
							ig(99688),	-- Leggings of the Cursed Conqueror
							ig(99693),	-- Leggings of the Cursed Protector
							ig(99684),	-- Leggings of the Cursed Vanquisher
							i(112921),	-- Kil'ruk's Furious Blade
							i(112920),	-- Korven's Crimson Crescent
							i(112922),	-- Rik'kal's Bloody Scalpel
							i(112918),	-- Hisek's Reserve Longbow
							i(112923),	-- Amber Parasite Wraps
							i(112919),	-- Chestguard of Toxic Injections
							i(112914),	-- Bracers of Sonic Projection
							i(112915),	-- Gauntlets of Insane Calculations
							i(112916),	-- Iyyokuk's Hereditary Seal
							i(112917),	-- Kil'ruk's Band of Ascendancy
							i(112913),	-- Skeer's Bloodsoaked Talisman
						},
					}),
					cr(71865, e(869, {	-- Garrosh Hellscream
						ig(105858),	-- Essence of the Cursed Conqueror
						ig(105857),	-- Essence of the Cursed Protector
						ig(105859),	-- Essence of the Cursed Vanquisher
						i(112935, { ["ItemAppearanceModifierID"] = 1 }),	-- Tusks of Mannoroth
						i(112932),	-- Kor'kron Spire of Supremacy
						i(112925),	-- Xal'atoh, Desecrated Image of Gorehowl
						i(112939),	-- Horned Mace of the Old Ones
						i(112940),	-- Revelations of Y'Shaarj
						i(112943),	-- Cowl of Smoking Dreams
						i(112937),	-- Ebon Ritual Hood
						i(112928),	-- Greathelm of the Warchief
						i(112926),	-- Kor'kron Elite Skullmask
						i(112930),	-- Penetrating Gaze of Y'Shaarj
						i(112942),	-- Hopeglow Spaulders
						i(112945),	-- Mantle of Looming Darkness
						i(112927),	-- Shoulderguards of Intended Power
						i(112934),	-- Spaulders of the Fallen Warchief
						i(112931),	-- Chestguard of Relentless Tyranny
						i(112944),	-- Chestplate of Fallen Passion
						i(112936),	-- Belt of the Broken Pact
						i(112929),	-- Cord of Black Dreams
						i(112941),	-- Seal of Karmic Return
						i(112933),	-- Legplates of Unthinking Strife
						i(112938),	-- Black Blood of Y'Shaarj
						i(112924),	-- Curse of Hubris
					})),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.MULTI.HEROIC, {	-- Heroic (Removed with Patch 6.0.2) >> Items marked "Mythic" after 6.0 <<
				-- #if AFTER 6.0.2
				["description"] = "This was the original Heroic difficulty. Previously, loot had unique item IDs for each difficulty tier as well as their Warforged variants similar to how ToT was done. Blizzard changed their design philosophy for the better with Patch 6.0 and chose to reuse an item's ID and apply a bonus ID rather than creating a brand new item ID with the same base stats.",
				-- #endif
				["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				["ignoreBonus"] = true,
				["groups"] = {
					n(ZONE_DROPS, {
						i(105852),	-- Aeth's Swiftcinder Cloak Mythic
						i(105844),	-- Brave Niunai's Cloak Mythic
						i(105840),	-- Cape of the Alpha Mythic
						i(105843),	-- Drape of the Omega Mythic
						i(105853),	-- Turtleshell Greatcloak Mythic
						i(105841),	-- Kalaena's Arcane Handwraps Mythic
						i(105842),	-- Seebo's Sainted Touch Mythic
						i(105846),	-- Crimson Gauntlets of Death Mythic
						i(105845),	-- Siid's Silent Stranglers Mythic
						i(105847),	-- Keengrip Arrowpullers Mythic
						i(105848),	-- Marco's Crackling Gloves Mythic
						i(105851),	-- Gauntlets of Discarded Time Mythic
						i(105849),	-- Romy's Reliable Grips Mythic
						i(105850),	-- Zoid's Molten Gauntlets Mythic
					}),
					cr(71543, e(852, {	-- Immerseus
						-- #if BEFORE 6.0.2
						ach(8463),	-- Heroic: Immerseus
						-- #endif
						i(104422),	-- Bolt-Burster Grips Mythic
						i(104429),	-- Bracers of Purified Spirit Mythic
						i(104419),	-- Bracers of Sordid Sleep Mythic
						i(104415),	-- Bubble-Burst Bracers Mythic
						i(104416),	-- Chestplate of Congealed Corrosion Mythic
						i(104425),	-- Cloak of Misguided Power Mythic
						i(104417),	-- Corruption-Rotted Gauntlets Mythic
						i(104421),	-- Encapsulated Essence of Immerseus Mythic
						i(104431),	-- Greatbelt of Living Waters Mythic
						i(104413),	-- Hood of Blackened Tears Mythic
						i(104424),	-- Hood of Swirling Senses Mythic
						i(104423),	-- Ichor-Dripping Shoulderpads Mythic
						i(104411),	-- Immerseus' Crystalline Eye Mythic
						i(104420),	-- Pauldrons of Violent Eruption Mythic
						i(104414),	-- Puddle Punishers Mythic
						i(104426),	-- Purified Bindings of Immerseus Mythic
						i(104428),	-- Salt Water Sandals Mythic
						i(104427),	-- Seal of Eternal Sorrow Mythic
						i(104430),	-- Soul-Soaked Gloves Mythic
						i(104418),	-- Treads of Unchained Hate Mythic
						i(104412),	-- Trident of Corrupted Waters Mythic
						i(104432),	-- Waterwalker Greatboots Mythic
						n(WARFORGED, {
							i(105418),	-- Bolt-Burster Grips Mythic WF
							i(105425),	-- Bracers of Purified Spirit Mythic WF
							i(105415),	-- Bracers of Sordid Sleep Mythic WF
							i(105411),	-- Bubble-Burst Bracers Mythic WF
							i(105412),	-- Chestplate of Congealed Corrosion Mythic WF
							i(105421),	-- Cloak of Misguided Power Mythic WF
							i(105413),	-- Corruption-Rotted Gauntlets Mythic WF
							i(105417),	-- Encapsulated Essence of Immerseus Mythic WF
							i(105427),	-- Greatbelt of Living Waters Mythic WF
							i(105409),	-- Hood of Blackened Tears Mythic WF
							i(105420),	-- Hood of Swirling Senses Mythic WF
							i(105419),	-- Ichor-Dripping Shoulderpads Mythic WF
							i(105407),	-- Immerseus' Crystalline Eye Mythic WF
							i(105416),	-- Pauldrons of Violent Eruption Mythic WF
							i(105410),	-- Puddle Punishers Mythic WF
							i(105422),	-- Purified Bindings of Immerseus Mythic WF
							i(105424),	-- Salt Water Sandals Mythic WF
							i(105423),	-- Seal of Eternal Sorrow Mythic WF
							i(105426),	-- Soul-Soaked Gloves Mythic WF
							i(105414),	-- Treads of Unchained Hate Mythic WF
							i(105408),	-- Trident of Corrupted Waters Mythic WF
							i(105428),	-- Waterwalker Greatboots Mythic WF
						}),
					})),
					e(849, {	-- The Fallen Protectors
						["crs"] = {
							71479,	-- He Softfoot [The Fallen Protectors]
							71475,	-- Rook Stonetoe [The Fallen Protectors]
							71480,	-- Sun Tenderheart [The Fallen Protectors]
						},
						["groups"] = {
							-- #if BEFORE 6.0.2
							ach(8465),	-- Heroic: Fallen Protectors
							-- #endif
							i(104438),	-- Darkfallen Shoulderplates Mythic
							i(104433),	-- Death Lotus Crossbow Mythic
							i(104453),	-- Gaze of Echoing Despair Mythic
							i(104441),	-- Gloomwrap Greatcloak Mythic
							i(104452),	-- Grips of the Fallen Council Mythic
							i(104436),	-- Grips of Unending Anguish Mythic
							i(104446),	-- Lifebane Bracers Mythic
							i(104447),	-- Petrified Pennyroyal Ring Mythic
							i(104437),	-- Poisonbinder Girth Mythic
							i(104448),	-- Purehearted Cricket Cage Mythic
							i(104444),	-- Robes of the Tendered Heart Mythic
							i(104442),	-- Rook's Unlucky Talisman Mythic
							i(104450),	-- Sabatons of Defilement Mythic
							i(104443),	-- Sha-Seared Sandals Mythic
							i(104439),	-- Shockstriker Gauntlets Mythic
							i(104451),	-- Shoulderguards of Dark Meditations Mythic
							i(104445),	-- Shoulderpads of Dou Dou Chong Mythic
							i(104449),	-- Shoulders of the Roiling Inferno Mythic
							i(104434),	-- Softfoot's Last Resort Mythic
							i(104440),	-- Sorrowpath Signet Mythic
							i(104435),	-- Stonetoe's Tormented Treads Mythic
							n(WARFORGED, {
								i(105434),	-- Darkfallen Shoulderplates Mythic WF
								i(105429),	-- Death Lotus Crossbow Mythic WF
								i(105449),	-- Gaze of Echoing Despair Mythic WF
								i(105437),	-- Gloomwrap Greatcloak Mythic WF
								i(105448),	-- Grips of the Fallen Council Mythic WF
								i(105432),	-- Grips of Unending Anguish Mythic WF
								i(105442),	-- Lifebane Bracers Mythic WF
								i(105443),	-- Petrified Pennyroyal Ring Mythic WF
								i(105433),	-- Poisonbinder Girth Mythic WF
								i(105444),	-- Purehearted Cricket Cage Mythic WF
								i(105440),	-- Robes of the Tendered Heart Mythic WF
								i(105438),	-- Rook's Unlucky Talisman Mythic WF
								i(105446),	-- Sabatons of Defilement Mythic WF
								i(105439),	-- Sha-Seared Sandals Mythic WF
								i(105435),	-- Shockstriker Gauntlets Mythic WF
								i(105447),	-- Shoulderguards of Dark Meditations Mythic WF
								i(105441),	-- Shoulderpads of Dou Dou Chong Mythic WF
								i(105445),	-- Shoulders of the Roiling Inferno Mythic WF
								i(105430),	-- Softfoot's Last Resort Mythic WF
								i(105436),	-- Sorrowpath Signet Mythic WF
								i(105431),	-- Stonetoe's Tormented Treads Mythic WF
							}),
						},
					}),
					e(866, {	-- Norushen
						["crs"] = {
							72276,	-- Amalgam of Corruption
							71965,	-- Norushen
						},
						["groups"] = {
							-- #if BEFORE 6.0.2
							ach(8466),	-- Heroic: Norushen
							-- #endif
							i(104466),	-- Blight Hurlers Mythic
							i(104471),	-- Boots of Broken Reliance Mythic
							i(104460),	-- Bracers of Blind Hatred Mythic
							i(104465),	-- Bracers of Broken Causation Mythic
							i(104473),	-- Bracers of Final Serenity Mythic
							i(104472),	-- Confident Grips Mythic
							i(104462),	-- Drape of the Despairing Pit Mythic
							i(104463),	-- Fusion-Fire Core Mythic
							i(104457),	-- Gloves of the Golden Protector Mythic
							i(104458),	-- Leggings of Unabashed Anger Mythic
							i(104470),	-- Norushen's Enigmatic Barrier Mythic
							i(104454),	-- Norushen's Shortblade Mythic
							i(104459),	-- Quarantine Shoulderguards Mythic
							i(104461),	-- Rage-Blind Greathelm Mythic
							i(104455),	-- Reality Ripper Ring Mythic
							i(104468),	-- Rime-Rift Shoulders Mythic
							i(104456),	-- Robes of the Blackened Watcher Mythic
							i(104467),	-- Sash of the Last Guardian Mythic
							i(104474),	-- Shadow-Binder's Kilt Mythic
							i(104469),	-- Untainted Guardian's Chain Mythic
							i(104475),	-- Wristplates of Broken Doubt Mythic
							i(104464),	-- Xifeng, Longblade of the Titanic Guardian Mythic
							n(WARFORGED, {
								i(105462),	-- Blight Hurlers Mythic WF
								i(105467),	-- Boots of Broken Reliance Mythic WF
								i(105456),	-- Bracers of Blind Hatred Mythic WF
								i(105461),	-- Bracers of Broken Causation Mythic WF
								i(105469),	-- Bracers of Final Serenity Mythic WF
								i(105468),	-- Confident Grips Mythic WF
								i(105458),	-- Drape of the Despairing Pit Mythic WF
								i(105459),	-- Fusion-Fire Core Mythic WF
								i(105453),	-- Gloves of the Golden Protector Mythic WF
								i(105454),	-- Leggings of Unabashed Anger Mythic WF
								i(105466),	-- Norushen's Enigmatic Barrier Mythic WF
								i(105450),	-- Norushen's Shortblade Mythic WF
								i(105455),	-- Quarantine Shoulderguards Mythic WF
								i(105457),	-- Rage-Blind Greathelm Mythic WF
								i(105451),	-- Reality Ripper Ring Mythic WF
								i(105464),	-- Rime-Rift Shoulders Mythic WF
								i(105452),	-- Robes of the Blackened Watcher Mythic WF
								i(105463),	-- Sash of the Last Guardian Mythic WF
								i(105470),	-- Shadow-Binder's Kilt Mythic WF
								i(105465),	-- Untainted Guardian's Chain Mythic WF
								i(105471),	-- Wristplates of Broken Doubt Mythic WF
								i(105460),	-- Xifeng, Longblade of the Titanic Guardian Mythic WF
							}),
						},
					}),
					cr(71734, e(867, {	-- Sha of Pride
						-- #if BEFORE 6.0.2
						ach(8467),	-- Heroic: Sha of Pride
						ig(99715),	-- Chest of the Cursed Conqueror
						ig(99716),	-- Chest of the Cursed Protector
						ig(99714),	-- Chest of the Cursed Vanquisher
						-- #endif
						i(104476),	-- Assurance of Consequence Mythic
						i(104484),	-- Choker of the Final Word Mythic
						i(104481),	-- Crown of Boastful Words Mythic
						i(104479),	-- Gaze of Arrogance Mythic
						i(104483),	-- Greatsword of Pride's Fall Mythic
						i(104482),	-- Greaves of Sublime Superiority Mythic
						i(104477),	-- Necklace of Fading Light Mythic
						i(104478),	-- Prismatic Prison of Pride Mythic
						i(104480),	-- Self-Reflecting Mask Mythic
						i(104485),	-- Shield of Mockery Mythic
						n(WARFORGED, {
							i(105472),	-- Assurance of Consequence Mythic WF
							i(105480),	-- Choker of the Final Word Mythic WF
							i(105477),	-- Crown of Boastful Words Mythic WF
							i(105475),	-- Gaze of Arrogance Mythic WF
							i(105479),	-- Greatsword of Pride's Fall Mythic WF
							i(105478),	-- Greaves of Sublime Superiority Mythic WF
							i(105473),	-- Necklace of Fading Light Mythic WF
							i(105474),	-- Prismatic Prison of Pride Mythic WF
							i(105476),	-- Self-Reflecting Mask Mythic WF
							i(105481),	-- Shield of Mockery Mythic WF
						}),
					})),
					cr(72249, e(881, {	-- Galakras
						-- #if BEFORE 6.0.2
						ach(8468),	-- Heroic: Galakras
						-- #endif
						i(104493),	-- Arcsmasher Bracers Mythic
						i(104497),	-- Bone-Inlaid Sandals Mythic
						i(104490),	-- Cannoneer's Multipocket Gunbelt Mythic
						i(104486),	-- Dagryn's Discarded Longbow Mythic
						i(104491),	-- Dagryn's Fuselight Bracers Mythic
						i(104504),	-- Dragonmaw Emergency Strap Mythic
						i(104503),	-- Drakebinder Greatstaff Mythic
						i(104495),	-- Evil Eye of Galakras Mythic
						i(104502),	-- Extinguished Ember of Galakras Mythic
						i(104499),	-- Flameslinger's Fiery Cowl Mythic
						i(104496),	-- Galakrond Control Band Mythic
						i(104505),	-- Grips of Tidal Force Mythic
						i(104489),	-- Korgra's Venom-Soaked Gauntlets Mythic
						i(104494),	-- Krugruk's Rigid Shoulderplates Mythic
						i(104498),	-- Scalebane Bracers Mythic
						i(104501),	-- Shoulderpads of Pulsing Protection Mythic
						i(104500),	-- Skydancer Boots Mythic
						i(104506),	-- Smoldering Drakescale Bracers Mythic
						i(104487),	-- Swift Serpent Signet Mythic
						i(104492),	-- Thranok's Shattering Helm Mythic
						i(105484),	-- Unrepentant Heels Mythic
						i(104507),	-- Windfire Legplates Mythic
						n(WARFORGED, {
							i(105489),	-- Arcsmasher Bracers Mythic WF
							i(105493),	-- Bone-Inlaid Sandals Mythic WF
							i(105486),	-- Cannoneer's Multipocket Gunbelt Mythic WF
							i(105482),	-- Dagryn's Discarded Longbow Mythic WF
							i(105487),	-- Dagryn's Fuselight Bracers Mythic WF
							i(105500),	-- Dragonmaw Emergency Strap Mythic WF
							i(105499),	-- Drakebinder Greatstaff Mythic WF
							i(105491),	-- Evil Eye of Galakras Mythic WF
							i(105498),	-- Extinguished Ember of Galakras Mythic WF
							i(105495),	-- Flameslinger's Fiery Cowl Mythic WF
							i(105492),	-- Galakrond Control Band Mythic WF
							i(105501),	-- Grips of Tidal Force Mythic WF
							i(105485),	-- Korgra's Venom-Soaked Gauntlets Mythic WF
							i(105490),	-- Krugruk's Rigid Shoulderplates Mythic WF
							i(105494),	-- Scalebane Bracers Mythic WF
							i(105497),	-- Shoulderpads of Pulsing Protection Mythic WF
							i(105496),	-- Skydancer Boots Mythic WF
							i(105502),	-- Smoldering Drakescale Bracers Mythic WF
							i(105483),	-- Swift Serpent Signet Mythic WF
							i(105488),	-- Thranok's Shattering Helm Mythic WF
							i(105488),	-- Unrepentant Heels Mythic WF
							i(105503),	-- Windfire Legplates Mythic WF
						}),
					})),
					cr(71466, e(864, {	-- Iron Juggernaut
						-- #if BEFORE 6.0.2
						ach(8469),	-- Heroic: Iron Juggernaut
						-- #endif
						i(104519),	-- Belt of Ominous Trembles Mythic
						i(104529),	-- Borer Drill Boots Mythic
						i(104521),	-- Bracers of the Broken Fault Mythic
						i(104526),	-- Castlebreaker Bracers Mythic
						i(104528),	-- Cavemaker Wristguards Mythic
						i(104513),	-- Demolisher's Reinforced Belt Mythic
						i(104516),	-- Earthbreaker's Steaming Chestplate Mythic
						i(104522),	-- Earthripper Gloves Mythic
						i(104518),	-- Juggernaut's Focusing Crystal Mythic
						i(104517),	-- Juggernaut's Ignition Keys Mythic
						i(104525),	-- Juggernaut's Power Core Mythic
						i(104509),	-- Laser Burn Bracers Mythic
						i(104524),	-- Laser-Slice Signet Mythic
						i(104520),	-- Leggings of Furious Flame Mythic
						i(104511),	-- Minelayer's Padded Boots Mythic
						i(104512),	-- Precision Cutters Mythic
						i(104510),	-- Ricocheting Shoulderguards Mythic
						i(104508),	-- Seismic Bore Mythic
						i(104523),	-- Shock Pulse Robes Mythic
						i(104515),	-- Tar-Coated Gauntlets Mythic
						i(104527),	-- Treads of Autonomic Motion Mythic
						i(104514),	-- Wall-Borer Bracers Mythic
						n(WARFORGED, {
							i(105515),	-- Belt of Ominous Trembles Mythic WF
							i(105525),	-- Borer Drill Boots Mythic WF
							i(105517),	-- Bracers of the Broken Fault Mythic WF
							i(105522),	-- Castlebreaker Bracers Mythic WF
							i(105524),	-- Cavemaker Wristguards Mythic WF
							i(105509),	-- Demolisher's Reinforced Belt Mythic WF
							i(105512),	-- Earthbreaker's Steaming Chestplate Mythic WF
							i(105518),	-- Earthripper Gloves Mythic WF
							i(105514),	-- Juggernaut's Focusing Crystal Mythic WF
							i(105513),	-- Juggernaut's Ignition Keys Mythic WF
							i(105521),	-- Juggernaut's Power Core Mythic WF
							i(105505),	-- Laser Burn Bracers Mythic WF
							i(105520),	-- Laser-Slice Signet Mythic WF
							i(105516),	-- Leggings of Furious Flame Mythic WF
							i(105507),	-- Minelayer's Padded Boots Mythic WF
							i(105508),	-- Precision Cutters Mythic WF
							i(105506),	-- Ricocheting Shoulderguards Mythic WF
							i(105504),	-- Seismic Bore Mythic WF
							i(105519),	-- Shock Pulse Robes Mythic WF
							i(105511),	-- Tar-Coated Gauntlets Mythic WF
							i(105523),	-- Treads of Autonomic Motion Mythic WF
							i(105510),	-- Wall-Borer Bracers Mythic WF
						}),
					})),
					cr(71859, e(856, {	-- Kor'kron Dark Shaman (Earthbreaker Haromm)
						-- #if BEFORE 6.0.2
						ach(8470),	-- Heroic: Kor'kron Dark Shaman
						-- #endif
						i(104537),	-- Ashen Wall Girdle Mythic
						i(104543),	-- Ashflare Pendant Mythic
						i(104547),	-- Belt of the Iron Prison Mythic
						i(104538),	-- Bloodclaw Band Mythic
						i(104536),	-- Breastplate of Shamanic Mirrors Mythic
						i(104532),	-- Damron's Belt of Darkness Mythic
						i(104546),	-- Darkfang Mask Mythic
						i(104539),	-- Haromm's Frozen Crescent Mythic
						i(104534),	-- Haromm's Horrifying Helm Mythic
						i(104531),	-- Haromm's Talisman Mythic
						i(104542),	-- Iron Wolf Hood Mythic
						i(104545),	-- Kardris' Scepter Mythic
						i(104544),	-- Kardris' Toxic Totem Mythic
						i(104530),	-- Poisonmist Nightcloak Mythic
						i(104540),	-- Ring of the Iron Tomb Mythic
						i(104533),	-- Riou's Vigilant Leggings Mythic
						i(104549),	-- Shackles of Stinking Slime Mythic
						i(104548),	-- Shoulderguards of Foul Streams Mythic
						i(104550),	-- Shoulderplates of Gushing Geysers Mythic
						i(104541),	-- Toxic Tornado Treads Mythic
						i(104535),	-- Wolf-Rider Spurs Mythic
						n(WARFORGED, {
							i(105533),	-- Ashen Wall Girdle Mythic WF
							i(105539),	-- Ashflare Pendant Mythic WF
							i(105543),	-- Belt of the Iron Prison Mythic WF
							i(105534),	-- Bloodclaw Band Mythic WF
							i(105532),	-- Breastplate of Shamanic Mirrors Mythic WF
							i(105528),	-- Damron's Belt of Darkness Mythic WF
							i(105542),	-- Darkfang Mask Mythic WF
							i(105535),	-- Haromm's Frozen Crescent Mythic WF
							i(105530),	-- Haromm's Horrifying Helm Mythic WF
							i(105527),	-- Haromm's Talisman Mythic WF
							i(105538),	-- Iron Wolf Hood Mythic WF
							i(105541),	-- Kardris' Scepter Mythic WF
							i(105540),	-- Kardris' Toxic Totem Mythic WF
							i(105526),	-- Poisonmist Nightcloak Mythic WF
							i(105536),	-- Ring of the Iron Tomb Mythic WF
							i(105529),	-- Riou's Vigilant Leggings Mythic WF
							i(105545),	-- Shackles of Stinking Slime Mythic WF
							i(105544),	-- Shoulderguards of Foul Streams Mythic WF
							i(105546),	-- Shoulderplates of Gushing Geysers Mythic WF
							i(105537),	-- Toxic Tornado Treads Mythic WF
							i(105531),	-- Wolf-Rider Spurs Mythic WF
						}),
					})),
					cr(71515, e(850, {	-- General Nazgrim
						-- #if BEFORE 6.0.2
						ach(8471),	-- Heroic: General Nazgrim
						ig(99721),	-- Gauntlets of the Cursed Conqueror
						ig(99722),	-- Gauntlets of the Cursed Protector
						ig(99720),	-- Gauntlets of the Cursed Vanquisher
						-- #endif
						i(104554),	-- Arcweaver Spell Sword Mythic
						i(104560),	-- Bulwark of the Fallen General Mythic
						i(104558),	-- Crown of Tragic Truth Mythic
						i(104559),	-- Gar'tok, Strength of the Faithful Mythic
						i(104553),	-- Nazgrim's Burnished Insignia Mythic
						i(104551),	-- Nazgrim's Gutripper Mythic
						i(104557),	-- Ravager's Pathwalkers Mythic
						i(104556),	-- Robes of the Warrior's Fall Mythic
						i(104552),	-- Sandals of Two Little Bees Mythic
						i(104555),	-- Shoulderguards of the Righteous Stand Mythic
						i(104561),	-- Spaulders of Kor'kron Fealty Mythic
						n(WARFORGED, {
							i(105550),	-- Arcweaver Spell Sword Mythic WF
							i(105556),	-- Bulwark of the Fallen General Mythic WF
							i(105554),	-- Crown of Tragic Truth Mythic WF
							i(105555),	-- Gar'tok, Strength of the Faithful Mythic WF
							i(105549),	-- Nazgrim's Burnished Insignia Mythic WF
							i(105547),	-- Nazgrim's Gutripper Mythic WF
							i(105553),	-- Ravager's Pathwalkers Mythic WF
							i(105552),	-- Robes of the Warrior's Fall Mythic WF
							i(105548),	-- Sandals of Two Little Bees Mythic WF
							i(105551),	-- Shoulderguards of the Righteous Stand Mythic WF
							i(105557),	-- Spaulders of Kor'kron Fealty Mythic WF
						}),
					})),
					cr(71454, e(846, {	-- Malkorok
						-- #if BEFORE 6.0.2
						ach(8472),	-- Heroic: Malkorok
						-- #endif
						i(104577),	-- Black-Blooded Drape Mythic
						i(104568),	-- Blood Rage Bracers Mythic
						i(104580),	-- Boots of Perilous Infusion Mythic
						i(104581),	-- Bracers of Averted Fatality Mythic
						i(104582),	-- Ebon Blood Chestguard Mythic
						i(104576),	-- Frenzied Crystal of Rage Mythic
						i(104564),	-- Halberd of Inner Shadows Mythic
						i(104574),	-- Hood of Perpetual Implosion Mythic
						i(104563),	-- Kor'kron Hand Cannon Mythic
						i(104565),	-- Lazahk's Lost Shadowrap Mythic
						i(104569),	-- Legplates of Willful Doom Mythic
						i(104567),	-- Malkorok's Giant Stompers Mythic
						i(104571),	-- Malkorok's Skullcleaver Mythic
						i(104570),	-- Malkorok's Tainted Dog Tags Mythic
						i(104573),	-- Miasmic Skullbelt Mythic
						i(104562),	-- Ring of Restless Energy Mythic
						i(104575),	-- Robes of Riven Dreams Mythic
						i(104578),	-- Seal of Sullen Fury Mythic
						i(104583),	-- Terrorguard Chestplate Mythic
						i(104572),	-- Vial of Living Corruption Mythic
						i(104579),	-- Visage of the Monstrous Mythic
						i(104566),	-- Wristguards of Ruination Mythic
						n(WARFORGED, {
							i(105573),	-- Black-Blooded Drape Mythic WF
							i(105564),	-- Blood Rage Bracers Mythic WF
							i(105576),	-- Boots of Perilous Infusion Mythic WF
							i(105577),	-- Bracers of Averted Fatality Mythic WF
							i(105578),	-- Ebon Blood Chestguard Mythic WF
							i(105572),	-- Frenzied Crystal of Rage Mythic WF
							i(105560),	-- Halberd of Inner Shadows Mythic WF
							i(105570),	-- Hood of Perpetual Implosion Mythic WF
							i(105559),	-- Kor'kron Hand Cannon Mythic WF
							i(105561),	-- Lazahk's Lost Shadowrap Mythic WF
							i(105565),	-- Legplates of Willful Doom Mythic WF
							i(105563),	-- Malkorok's Giant Stompers Mythic WF
							i(105567),	-- Malkorok's Skullcleaver Mythic WF
							i(105566),	-- Malkorok's Tainted Dog Tags Mythic WF
							i(105569),	-- Miasmic Skullbelt Mythic WF
							i(105558),	-- Ring of Restless Energy Mythic WF
							i(105571),	-- Robes of Riven Dreams Mythic WF
							i(105574),	-- Seal of Sullen Fury Mythic WF
							i(105579),	-- Terrorguard Chestplate Mythic WF
							i(105568),	-- Vial of Living Corruption Mythic WF
							i(105575),	-- Visage of the Monstrous Mythic WF
							i(105562),	-- Wristguards of Ruination Mythic WF
						}),
					})),
					cr(71889, e(870, {	-- Spoils of Pandaria (Secured Stockpile of Pandaren Spoils)
						-- #if BEFORE 6.0.2
						ach(8478),	-- Heroic: Spoils of Pandaria
						-- #endif
						i(104589),	-- Ancient Archer's Chestguard Mythic
						i(104594),	-- Ancient Mogu Tower Shield Mythic
						i(104588),	-- Arrowflight Girdle Mythic
						i(104595),	-- Avool's Ancestral Bracers Mythic
						i(104602),	-- Bracers of the Pristine Purifier Mythic
						i(104601),	-- Chitin-Link Chain Belt Mythic
						i(104585),	-- Enchanted Shao-Tien Saber Mythic
						i(104590),	-- Helm of the Night Watchman Mythic
						i(104598),	-- Immaculately Preserved Wand Mythic
						i(104599),	-- Klaxxi Grips of Rejuvenation Mythic
						i(104597),	-- Lost Necklace of the Mogu Empress Mythic
						i(104587),	-- Mantid Carapace Augments Mythic
						i(104596),	-- Mantid Vizier's Robes Mythic
						i(104604),	-- Mogu Mindbender's Greaves Mythic
						i(104592),	-- Ominous Mogu Greatboots Mythic
						i(104586),	-- Pandaren Roofsprinters Mythic
						i(104603),	-- Plate Belt of the War-Healer Mythic
						i(104593),	-- Seal of the Forgotten Kings Mythic
						i(104600),	-- Shado-Pan Reliquary Kilt Mythic
						i(104584),	-- Sigil of Rampage Mythic
						i(104591),	-- Untarnishable Greatbelt Mythic
						n(WARFORGED, {
							i(105585),	-- Ancient Archer's Chestguard Mythic WF
							i(105590),	-- Ancient Mogu Tower Shield Mythic WF
							i(105584),	-- Arrowflight Girdle Mythic WF
							i(105591),	-- Avool's Ancestral Bracers Mythic WF
							i(105598),	-- Bracers of the Pristine Purifier Mythic WF
							i(105597),	-- Chitin-Link Chain Belt Mythic WF
							i(105581),	-- Enchanted Shao-Tien Saber Mythic WF
							i(105586),	-- Helm of the Night Watchman Mythic WF
							i(105594),	-- Immaculately Preserved Wand Mythic WF
							i(105595),	-- Klaxxi Grips of Rejuvenation Mythic WF
							i(105593),	-- Lost Necklace of the Mogu Empress Mythic WF
							i(105583),	-- Mantid Carapace Augments Mythic WF
							i(105592),	-- Mantid Vizier's Robes Mythic WF
							i(105600),	-- Mogu Mindbender's Greaves Mythic WF
							i(105588),	-- Ominous Mogu Greatboots Mythic WF
							i(105582),	-- Pandaren Roofsprinters Mythic WF
							i(105599),	-- Plate Belt of the War-Healer Mythic WF
							i(105589),	-- Seal of the Forgotten Kings Mythic WF
							i(105596),	-- Shado-Pan Reliquary Kilt Mythic WF
							i(105580),	-- Sigil of Rampage Mythic WF
							i(105587),	-- Untarnishable Greatbelt Mythic WF
						}),
					})),
					cr(71529, e(851, {	-- Thok the Bloodthirsty
						-- #if BEFORE 6.0.2
						ach(8479),	-- Heroic: Thok the Bloodthirsty
						ig(99724),	-- Helm of the Cursed Conqueror
						ig(99725),	-- Helm of the Cursed Protector
						ig(99723),	-- Helm of the Cursed Vanquisher
						-- #endif
						i(104608),	-- Akolik's Acid-Soaked Robes Mythic
						i(104614),	-- Britomart's Jagged Pike Mythic
						i(104615),	-- Devilfang Band Mythic
						i(104609),	-- Festering Primordial Globule Mythic
						i(104606),	-- Gleaming Eye of the Devilsaur Mythic
						i(104605),	-- Hvitserk's Formidable Shanker Mythic
						i(104612),	-- Icy Blood Chestplate Mythic
						i(104607),	-- Montak's Grips of Scorching Breath Mythic
						i(104610),	-- Signet of the Dinomancers Mythic
						i(104611),	-- Thok's Acid-Grooved Tooth Mythic
						i(104613),	-- Thok's Tail Tip Mythic
						n(WARFORGED, {
							i(105604),	-- Akolik's Acid-Soaked Robes Mythic WF
							i(105610),	-- Britomart's Jagged Pike Mythic WF
							i(105611),	-- Devilfang Band Mythic WF
							i(105605),	-- Festering Primordial Globule Mythic WF
							i(105602),	-- Gleaming Eye of the Devilsaur Mythic WF
							i(105601),	-- Hvitserk's Formidable Shanker Mythic WF
							i(105608),	-- Icy Blood Chestplate Mythic WF
							i(105603),	-- Montak's Grips of Scorching Breath Mythic WF
							i(105606),	-- Signet of the Dinomancers Mythic WF
							i(105607),	-- Thok's Acid-Grooved Tooth Mythic WF
							i(105609),	-- Thok's Tail Tip Mythic WF
						}),
					})),
					cr(71504, e(865, {	-- Siegecrafter Blackfuse
						-- #if BEFORE 6.0.2
						ach(8480),	-- Heroic: Siegecrafter Blackfuse
						ig(99718),	-- Shoulders of the Cursed Conqueror
						ig(99719),	-- Shoulders of the Cursed Protector
						ig(99717),	-- Shoulders of the Cursed Vanquisher
						-- #endif
						i(104624),	-- Asgorathian Blood Seal Mythic
						i(104626),	-- Blackfuse's Blasting Cord Mythic
						i(104620),	-- Bomber's Blackened Wristwatch Mythic
						i(104621),	-- Bracers of Infinite Pipes Mythic
						i(104623),	-- Calixian Bladebreakers Mythic
						i(104619),	-- Dysmorphic Samophlange of Discontinuity Mythic
						i(104617),	-- Fusespark Gloves Mythic
						i(104618),	-- Lever of the Megantholithic Apparatus Mythic
						i(104622),	-- Powder-Stained Totemic Treads Mythic
						i(104625),	-- Siegecrafter's Forge Hammer Mythic
						i(104616),	-- Ticking Ebon Detonator Mythic
						n(WARFORGED, {
							i(105620),	-- Asgorathian Blood Seal Mythic WF
							i(105622),	-- Blackfuse's Blasting Cord Mythic WF
							i(105616),	-- Bomber's Blackened Wristwatch Mythic WF
							i(105617),	-- Bracers of Infinite Pipes Mythic WF
							i(105619),	-- Calixian Bladebreakers Mythic WF
							i(105615),	-- Dysmorphic Samophlange of Discontinuity Mythic WF
							i(105613),	-- Fusespark Gloves Mythic WF
							i(105614),	-- Lever of the Megantholithic Apparatus Mythic WF
							i(105618),	-- Powder-Stained Totemic Treads Mythic WF
							i(105621),	-- Siegecrafter's Forge Hammer Mythic WF
							i(105612),	-- Ticking Ebon Detonator Mythic WF
						}),
					})),
					e(853, {	-- Paragons of the Klaxxi
						["crs"] = {
							71153,	-- Hisek the Swarmkeeper
							71160,	-- Iyyokuk the Lucid
							71154,	-- Ka'roz the Locust
							71156,	-- Kaz'tik the Manipulator
							71161,	-- Kil'ruk the Wind-Reaver
							71155,	-- Korven the Prime
							71157,	-- Xaril the Poisoned Mind
							71158,	-- Rik'kal the Dissector
							71152,	-- Skeer the Bloodseeker
						},
						["groups"] = {
							-- #if BEFORE 6.0.2
							ach(8481),	-- Heroic: Paragons of the Klaxxi
							ig(99712),	-- Leggings of the Cursed Conqueror
							ig(99713),	-- Leggings of the Cursed Protector
							ig(99726),	-- Leggings of the Cursed Vanquisher
							-- #endif
							i(104633),	-- Amber Parasite Wraps Mythic
							i(104630),	-- Bracers of Sonic Projection Mythic
							i(104634),	-- Chestguard of Toxic Injections Mythic
							i(104635),	-- Gauntlets of Insane Calculations Mythic
							i(104627),	-- Hisek's Reserve Longbow Mythic
							i(104632),	-- Iyyokuk's Hereditary Seal Mythic
							i(104628),	-- Kil'ruk's Band of Ascendancy Mythic
							i(104637),	-- Kil'ruk's Furious Blade Mythic
							i(104629),	-- Korven's Crimson Crescent Mythic
							i(104631),	-- Rik'kal's Bloody Scalpel Mythic
							i(104636),	-- Skeer's Bloodsoaked Talisman Mythic
							n(WARFORGED, {
								i(105629),	-- Amber Parasite Wraps Mythic WF
								i(105626),	-- Bracers of Sonic Projection Mythic WF
								i(105630),	-- Chestguard of Toxic Injections Mythic WF
								i(105631),	-- Gauntlets of Insane Calculations Mythic WF
								i(105623),	-- Hisek's Reserve Longbow Mythic WF
								i(105628),	-- Iyyokuk's Hereditary Seal Mythic WF
								i(105624),	-- Kil'ruk's Band of Ascendancy Mythic WF
								i(105633),	-- Kil'ruk's Furious Blade Mythic WF
								i(105625),	-- Korven's Crimson Crescent Mythic WF
								i(105627),	-- Rik'kal's Bloody Scalpel Mythic WF
								i(105632),	-- Skeer's Bloodsoaked Talisman Mythic WF
							}),
						},
					}),
					cr(71865, e(869, {	-- Garrosh Hellscream
						-- #if BEFORE 6.0.2
						ach(8511),	-- Heroic: Garrosh Hellscream Guild Run
						ach(8482, {	-- Heroic: Garrosh Hellscream
							title(214),	-- , Hellscream's Downfall
						}),
						ig(105867),	-- Essence of the Cursed Conqueror
						ig(105866),	-- Essence of the Cursed Protector
						ig(105868),	-- Essence of the Cursed Vanquisher
						-- #endif
						i(104650),	-- Belt of the Broken Pact Mythic
						i(104652),	-- Black Blood of Y'Shaarj Mythic
						i(104641),	-- Chestguard of Relentless Tyranny Mythic
						i(104658),	-- Chestplate of Fallen Passion Mythic
						i(104639),	-- Cord of Black Dreams Mythic
						i(104657),	-- Cowl of Smoking Dreams Mythic
						i(104649),	-- Curse of Hubris Mythic
						i(104651),	-- Ebon Ritual Hood Mythic
						i(104647),	-- Greathelm of the Warchief Mythic
						i(104656),	-- Hopeglow Spaulders Mythic
						i(104653),	-- Horned Mace of the Old Ones Mythic
						i(104640),	-- Kor'kron Elite Skullmask Mythic
						i(104638),	-- Kor'kron Spire of Supremacy Mythic
						i(104644),	-- Legplates of Unthinking Strife Mythic
						i(104659),	-- Mantle of Looming Darkness Mythic
						i(104642),	-- Penetrating Gaze of Y'Shaarj Mythic
						i(104654),	-- Revelations of Y'Shaarj Mythic
						i(104655),	-- Seal of Karmic Return Mythic
						i(104643),	-- Shoulderguards of Intended Power Mythic
						i(104645),	-- Spaulders of the Fallen Warchief Mythic
						i(104646),	-- Tusks of Mannoroth Mythic
						i(104648),	-- Xal'atoh, Desecrated Image of Gorehowl Mythic
						n(HEIRLOOMS, {
							i(105687),	-- Hellscream's Barrier
							i(105685),	-- Hellscream's Cleaver
							i(105692),	-- Hellscream's Decapitator
							i(105691),	-- Hellscream's Doomblade
							i(105686),	-- Hellscream's Pig Sticker
							i(105684),	-- Hellscream's Razor
							i(105693),	-- Hellscream's Shield Wall
							i(105689),	-- Hellscream's Tome of Destruction
							i(105690),	-- Hellscream's War Staff
							i(105683),	-- Hellscream's Warbow
							i(105688),	-- Hellscream's Warmace
						}),
						n(WARFORGED, {
							i(105646),	-- Belt of the Broken Pact Mythic WF
							i(105648),	-- Black Blood of Y'Shaarj Mythic WF
							i(105637),	-- Chestguard of Relentless Tyranny Mythic WF
							i(105654),	-- Chestplate of Fallen Passion Mythic WF
							i(105635),	-- Cord of Black Dreams Mythic WF
							i(105653),	-- Cowl of Smoking Dreams Mythic WF
							i(105645),	-- Curse of Hubris Mythic WF
							i(105647),	-- Ebon Ritual Hood Mythic WF
							i(105643),	-- Greathelm of the Warchief Mythic WF
							i(105652),	-- Hopeglow Spaulders Mythic WF
							i(105649),	-- Horned Mace of the Old Ones Mythic WF
							i(105634),	-- Kor'kron Spire of Supremacy Mythic WF
							i(105636),	-- Kor'kron Elite Skullmask Mythic WF
							i(105640),	-- Legplates of Unthinking Strife Mythic WF
							i(105655),	-- Mantle of Looming Darkness Mythic WF
							i(105638),	-- Penetrating Gaze of Y'Shaarj Mythic WF
							i(105650),	-- Revelations of Y'Shaarj Mythic WF
							i(105651),	-- Seal of Karmic Return Mythic WF
							i(105639),	-- Shoulderguards of Intended Power Mythic WF
							i(105641),	-- Spaulders of the Fallen Warchief Mythic WF
							i(105642),	-- Tusks of Mannoroth Mythic WF
							i(105644),	-- Xal'atoh, Desecrated Image of Gorehowl Mythic WF
						}),
					})),
				},
			}),
			d(DIFFICULTY.RAID.MYTHIC, {					-- Mythic (Added with Patch 6.0.2)
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					n(ZONE_DROPS, {
						i(113224),	-- Aeth's Swiftcinder Cloak
						i(113231),	-- Brave Niunai's Cloak
						i(113226),	-- Cape of the Alpha
						i(113230),	-- Drape of the Omega
						i(113223),	-- Turtleshell Greatcloak
						i(113225),	-- Kalaena's Arcane Handwraps
						i(113218),	-- Seebo's Sainted Touch
						i(113220),	-- Crimson Gauntlets of Death
						i(113221),	-- Siid's Silent Stranglers
						i(113222),	-- Keengrip Arrowpullers
						i(113227),	-- Marco's Crackling Gloves
						i(113228),	-- Gauntlets of Discarded Time
						i(113219),	-- Romy's Reliable Grips
						i(113229),	-- Zoid's Molten Gauntlets
					}),
					cr(71543, e(852, {	-- Immerseus
						ach(8463),	-- Mythic: Immerseus
						i(110784),	-- Trident of Corrupted Waters
						i(110785),	-- Encapsulated Essence of Immerseus
						i(112382),	-- Hood of Blackened Tears
						i(112424),	-- Hood of Swirling Senses
						i(110761),	-- Immerseus' Crystalline Eye
						i(112423),	-- Ichor-Dripping Shoulderpads
						i(112421),	-- Pauldrons of Violent Eruption
						i(112425),	-- Cloak of Misguided Power
						i(112417),	-- Chestplate of Congealed Corrosion
						i(112429),	-- Bracers of Purified Spirit
						i(112420),	-- Bracers of Sordid Sleep
						i(112416),	-- Bubble-Burst Bracers
						i(112422),	-- Bolt-Burster Grips
						i(112418),	-- Corruption-Rotted Gauntlets
						i(112445),	-- Soul-Soaked Gloves
						i(112447),	-- Greatbelt of Living Waters
						i(112383),	-- Puddle Punishers
						i(112428),	-- Salt Water Sandals
						i(112419),	-- Treads of Unchained Hate
						i(112448),	-- Waterwalker Greatboots
						i(112427),	-- Seal of Eternal Sorrow
						i(112426),	-- Purified Bindings of Immerseus
					})),
					e(849, {	-- The Fallen Protectors
						["crs"] = {
							71479,	-- He Softfoot [The Fallen Protectors]
							71475,	-- Rook Stonetoe [The Fallen Protectors]
							71480,	-- Sun Tenderheart [The Fallen Protectors]
						},
						["groups"] = {
							ach(8465),	-- Mythic: Fallen Protectors
							i(112477),	-- Softfoot's Last Resort
							i(112478),	-- Death Lotus Crossbow
							i(112491),	-- Purehearted Cricket Cage
							i(112496),	-- Gaze of Echoing Despair
							i(112481),	-- Darkfallen Shoulderplates
							i(112494),	-- Shoulderguards of Dark Meditations
							i(112488),	-- Shoulderpads of Dou Dou Chong
							i(112492),	-- Shoulders of the Roiling Inferno
							i(112485),	-- Gloomwrap Greatcloak
							i(112487),	-- Robes of the Tendered Heart
							i(112489),	-- Lifebane Bracers
							i(112495),	-- Grips of the Fallen Council
							i(112480),	-- Grips of Unending Anguish
							i(112483),	-- Shockstriker Gauntlets
							i(112482),	-- Poisonbinder Girth
							i(112493),	-- Sabatons of Defilement
							i(112486),	-- Sha-Seared Sandals
							i(112479),	-- Stonetoe's Tormented Treads
							i(112490),	-- Petrified Pennyroyal Ring
							i(112484),	-- Sorrowpath Signet
							i(112476),	-- Rook's Unlucky Talisman
						},
					}),
					e(866, {	-- Norushen
						["crs"] = {
							72276,	-- Amalgam of Corruption
							71965,	-- Norushen
						},
						["groups"] = {
							ach(8466),	-- Mythic: Norushen
							i(112547),	-- Norushen's Shortblade
							i(112546),	-- Xifeng, Longblade of the Titanic Guardian
							i(112560),	-- Norushen's Enigmatic Barrier
							i(112552),	-- Rage-Blind Greathelm
							i(112559),	-- Untainted Guardian's Chain
							i(112550),	-- Quarantine Shoulderguards
							i(112558),	-- Rime-Rift Shoulders
							i(112554),	-- Drape of the Despairing Pit
							i(112549),	-- Robes of the Blackened Watcher
							i(112545),	-- Bracers of Blind Hatred
							i(112555),	-- Bracers of Broken Causation
							i(112563),	-- Bracers of Final Serenity
							i(112565),	-- Wristplates of Broken Doubt
							i(112556),	-- Blight Hurlers
							i(112562),	-- Confident Grips
							i(112548),	-- Gloves of the Golden Protector
							i(112557),	-- Sash of the Last Guardian
							i(112551),	-- Leggings of Unabashed Anger
							i(112564),	-- Shadow-Binder's Kilt
							i(112561),	-- Boots of Broken Reliance
							i(112553),	-- Reality Ripper Ring
							i(112503),	-- Fusion-Fire Core
						},
					}),
					cr(71734, e(867, {	-- Sha of Pride
						ach(8467),	-- Mythic: Sha of Pride
						ig(99715),	-- Chest of the Cursed Conqueror
						ig(99716),	-- Chest of the Cursed Protector
						ig(99714),	-- Chest of the Cursed Vanquisher
						i(112951),	-- Gaze of Arrogance
						i(112949),	-- Greatsword of Pride's Fall
						i(112950),	-- Shield of Mockery
						i(112702),	-- Crown of Boastful Words
						i(112952),	-- Self-Reflecting Mask
						i(112955),	-- Choker of the Final Word
						i(112954),	-- Necklace of Fading Light
						i(112953),	-- Greaves of Sublime Superiority
						i(112947),	-- Assurance of Consequence
						i(112948),	-- Prismatic Prison of Pride
					})),
					cr(72249, e(881, {	-- Galakras
						ach(8468),	-- Mythic: Galakras
						i(112723),	-- Drakebinder Greatstaff
						i(112710),	-- Dagryn's Discarded Longbow
						i(112717),	-- Flameslinger's Fiery Cowl
						i(112713),	-- Thranok's Shattering Helm
						i(112705),	-- Kruguk's Rigid Shoulderplates
						i(112719),	-- Shoulderpads of Pulsing Protection
						i(112704),	-- Arcsmasher Bracers
						i(112712),	-- Dagryn's Fuselight Bracers
						i(112716),	-- Scalebone Bracers
						i(112727),	-- Smoldering Drakescale Bracers
						i(112726),	-- Grips of Tidal Force
						i(112707),	-- Korgra's Venom-Soaked Gauntlets
						i(112711),	-- Cannoneer's Multipocket Gunbelt
						i(112725),	-- Dragonmaw Emergency Strap
						i(112728),	-- Windfire Legplates
						i(112715),	-- Bone-Inlaid Sandals
						i(112718),	-- Skydancer Boots
						i(112706),	-- Unrepentant Heels
						i(112721),	-- Extinguished Ember of Galakras
						i(112714),	-- Galakrond Control Band
						i(112709),	-- Swift Serpent Signet
						i(112703),	-- Evil Eye of Galakras
					})),
					cr(71466, e(864, {	-- Iron Juggernaut
						ach(8469),	-- Mythic: Iron Juggernaut
						i(112736),	-- Seismic Bore
						i(112748),	-- Juggernaut's Power Core
						i(112742),	-- Juggernaut's Ignition Keys
						i(112740),	-- Ricocheting Shoulderguards
						i(112741),	-- Earthbreaker's Steaming Chestplate
						i(112746),	-- Shock Pulse Robes
						i(112745),	-- Bracers of the Broken Fault
						i(112749),	-- Castlebreaker Bracers
						i(112751),	-- Cavemaker Wristguards
						i(112739),	-- Laser Burn Bracers
						i(112733),	-- Wall-Borer Bracers
						i(112946),	-- Earthripper Gloves
						i(112734),	-- Precision Cutters
						i(112732),	-- Tar-Coated Gauntlets
						i(112743),	-- Belt of Ominous Trembles
						i(112735),	-- Demolisher's Reinforced Belt
						i(112744),	-- Leggings of Furious Flame
						i(112752),	-- Borer Drill Boots
						i(112731),	-- Minelayer's Padded Boots
						i(112750),	-- Treads of Autonomic Motion
						i(112747),	-- Laser-Slice Signet
						i(112729),	-- Juggernaut's Focusing Crystal
					})),
					cr(71859, e(856, {	-- Kor'kron Dark Shaman (Earthbreaker Haromm)
						["crs"] = {
							71859,	-- Earthbreaker Haromm
							71858,	-- Wavebinder Kardris
						},
						["groups"] = {
							ach(8470),	-- Mythic: Kor'kron Dark Shaman
							i(112759),	-- Haromm's Frozen Crescent
							i(112769),	-- Kardris' Scepter
							i(112770),	-- Darkfang Mask
							i(112762),	-- Haromm's Horrifying Helm
							i(112766),	-- Iron Wolf Hood
							i(112767),	-- Ashflare Pendant
							i(112772),	-- Shoulderguards of Foul Streams
							i(112774),	-- Shoulderplates of Gushing Geysers
							i(112764),	-- Poisonmist Nightcloak
							i(112755),	-- Breastplate of Shamanic Mirrors
							i(112773),	-- Shackles of Stinking Slime
							i(112763),	-- Ashen Wall Girdle
							i(112771),	-- Belt of the Iron Prison
							i(112760),	-- Damron's Belt of Darkness
							i(112761),	-- Riou's Vigilant Leggings
							i(112765),	-- Toxic Tornado Treads
							i(112757),	-- Wolf-Rider Spurs
							i(112756),	-- Bloodclaw Band
							i(112758),	-- Ring of the Iron Tomb
							i(112754),	-- Haromm's Talisman
							i(112768),	-- Kardris' Toxic Totem
						},
					})),
					cr(71515, e(850, {	-- General Nazgrim
						ach(8471),	-- Mythic: General Nazgrim
						ig(99721),	-- Gauntlets of the Cursed Conqueror
						ig(99722),	-- Gauntlets of the Cursed Protector
						ig(99720),	-- Gauntlets of the Cursed Vanquisher
						i(112785),	-- Gar'tok, Strength of the Faithful
						i(112787),	-- Arcweaver Spell Sword
						i(112780),	-- Naz'grim's Gutripper
						i(112781),	-- Bulwark of the Fallen General
						i(112789),	-- Crown of Tragic Truth
						i(112783),	-- Shoulderguards of the Righteous Stand
						i(112790),	-- Spaulders of Kor'kron Fealty
						i(112788),	-- Robes of the Warrior's Fall
						i(112779),	-- Ravager's Pathwalkers
						i(112782),	-- Sandals of Two Little Bees
						i(112778),	-- Nazgrim's Burnished Insignia
					})),
					cr(71454, e(846, {	-- Malkorok
						ach(8472),	-- Mythic: Malkorok
						i(112805),	-- Halberd of Inner Shadows
						i(112804),	-- Malkorok's Skullcleaver
						i(112806),	-- Kor'kron Hand Cannon
						i(112818),	-- Visage of the Monstrous
						i(112813),	-- Hood of Perpetual Implosion
						i(112803),	-- Malkorok's Tainted Dog Tags
						i(112816),	-- Black-Blooded Drape
						i(112821),	-- Ebon Blood Chestguard
						i(112794),	-- Lazahk's Lost Shadowrap
						i(112814),	-- Robes of Riven Dreams
						i(112823),	-- Terrorguard Chestplate
						i(112793),	-- Blood Rage Bracers
						i(112820),	-- Bracers of Averted Fatality
						i(112797),	-- Wristguards of Ruination
						i(112808),	-- Miasmic Skullbelt
						i(112807),	-- Legplates of Willful Doom
						i(112819),	-- Boots of Perilous Infusion
						i(112796),	-- Malkorok's Giant Stompers
						i(112795),	-- Ring of Restless Energy
						i(112817),	-- Seal of Sullen Fury
						i(112815),	-- Frenzied Crystal of Rage
						i(112792),	-- Vial of Living Corruption
					})),
					cr(71889, e(870, {	-- Spoils of Pandaria (Secured Stockpile of Pandaren Spoils)
						ach(8478),	-- Mythic: Spoils of Pandaria
						i(112835),	-- Enchanted Shao-Tien Saber
						i(112841),	-- Immaculately Preserved Wand
						i(112829),	-- Ancient Mogu Tower Shield
						i(112832),	-- Helm of the Night Watchman
						i(112839),	-- Lost Necklace of the Mogu Empress
						i(112836),	-- Ancient Archer's Chestguard
						i(112838),	-- Mantid Vizier's Robes
						i(112837),	-- Avool's Ancestral Bracers
						i(112845),	-- Bracers of the Pristine Purifier
						i(112833),	-- Mantid Carapace Augments
						i(112842),	-- Klaxxi Grips of Rejuvenation
						i(112831),	-- Arrowflight Girdle
						i(112844),	-- Chitin-Link Chain Belt
						i(112846),	-- Plate Belt of the War-Healer
						i(112834),	-- Untarnishable Greatbelt
						i(112843),	-- Shado-Pan Reliquary Kilt
						i(112847),	-- Mogu Mindbender's Greaves
						i(112826),	-- Ominous Mogu Greatboots
						i(112827),	-- Pandaren Roofsprinters
						i(112828),	-- Seal of the Forgotten Kings
						i(112825),	-- Sigil of Rampage
					})),
					cr(71529, e(851, {	-- Thok the Bloodthirsty
						ach(8479),	-- Mythic: Thok the Bloodthirsty
						ig(99724),	-- Helm of the Cursed Conqueror
						ig(99725),	-- Helm of the Cursed Protector
						ig(99723),	-- Helm of the Cursed Vanquisher
						i(112862),	-- Britomart's Jagged Pike
						i(112853),	-- Hvitserk's Formidable Shanker
						i(112861),	-- Festering Primordial Globule
						i(112851),	-- Gleaming Eye of the Devilsaur
						i(112866),	-- Akolik's Acid-Soaked Robes
						i(112856),	-- Icy Blood Chestplate
						i(112854),	-- Montak's Grips of Scorching Breath
						i(112855),	-- Devilfang Band
						i(112852),	-- Signet of the Dinomancers
						i(112849),	-- Thok's Acid-Grooved Tooth
						i(112850),	-- Thok's Tail Tip
					})),
					cr(71504, e(865, {	-- Siegecrafter Blackfuse
						ach(8480),	-- Mythic: Siegecrafter Blackfuse
						ig(99718),	-- Shoulders of the Cursed Conqueror
						ig(99719),	-- Shoulders of the Cursed Protector
						ig(99717),	-- Shoulders of the Cursed Vanquisher
						i(112892),	-- Lever of the Megantholithic Apparatus
						i(112897),	-- Siegecrafter's Forge Hammer
						i(112894),	-- Blackfuse's Blasting Cord
						i(112896),	-- Bomber's Blackened Wristwatch
						i(112895),	-- Bracers of Infinite Pipes
						i(112882),	-- Calixian Bladebreakers
						i(112898),	-- Fusespark Gloves
						i(112890),	-- Powder-Stained Totemic Treads
						i(112883),	-- Asgorathian Blood Seal
						i(112877),	-- Dysmorphic Samophlange of Discontinuity
						i(112879),	-- Ticking Ebon Detonator
					})),
					e(853, {	-- Paragons of the Klaxxi
						["crs"] = {
							71153,	-- Hisek the Swarmkeeper
							71160,	-- Iyyokuk the Lucid
							71154,	-- Ka'roz the Locust
							71156,	-- Kaz'tik the Manipulator
							71161,	-- Kil'ruk the Wind-Reaver
							71155,	-- Korven the Prime
							71157,	-- Xaril the Poisoned Mind
							71158,	-- Rik'kal the Dissector
							71152,	-- Skeer the Bloodseeker
						},
						["groups"] = {
							ach(8481),	-- Mythic: Paragons of the Klaxxi
							ig(99712),	-- Leggings of the Cursed Conqueror
							ig(99713),	-- Leggings of the Cursed Protector
							ig(99726),	-- Leggings of the Cursed Vanquisher
							i(112921),	-- Kil'ruk's Furious Blade
							i(112920),	-- Korven's Crimson Crescent
							i(112922),	-- Rik'kal's Bloody Scalpel
							i(112918),	-- Hisek's Reserve Longbow
							i(112923),	-- Amber Parasite Wraps
							i(112919),	-- Chestguard of Toxic Injections
							i(112914),	-- Bracers of Sonic Projection
							i(112915),	-- Gauntlets of Insane Calculations
							i(112916),	-- Iyyokuk's Hereditary Seal
							i(112917),	-- Kil'ruk's Band of Ascendancy
							i(112913),	-- Skeer's Bloodsoaked Talisman
						},
					}),
					cr(71865, e(869, {	-- Garrosh Hellscream
						ach(8511),	-- Heroic: Garrosh Hellscream Guild Run
						ach(8482, {	-- Mythic: Garrosh Hellscream
							title(214),	-- , Hellscream's Downfall
						}),
						ig(105867),	-- Essence of the Cursed Conqueror
						ig(105866),	-- Essence of the Cursed Protector
						ig(105868),	-- Essence of the Cursed Vanquisher
						i(112935),	-- Tusks of Mannoroth
						i(104253),	-- Kor'kron Juggernaut (MOUNT!)
						i(112932),	-- Kor'kron Spire of Supremacy
						i(112925),	-- Xal'atoh, Desecrated Image of Gorehowl
						i(112939),	-- Horned Mace of the Old Ones
						i(112940),	-- Revelations of Y'Shaarj
						i(112943),	-- Cowl of Smoking Dreams
						i(112937),	-- Ebon Ritual Hood
						i(112928),	-- Greathelm of the Warchief
						i(112926),	-- Kor'kron Elite Skullmask
						i(112930),	-- Penetrating Gaze of Y'Shaarj
						i(112942),	-- Hopeglow Spaulders
						i(112945),	-- Mantle of Looming Darkness
						i(112927),	-- Shoulderguards of Intended Power
						i(112934),	-- Spaulders of the Fallen Warchief
						i(112931),	-- Chestguard of Relentless Tyranny
						i(112944),	-- Chestplate of Fallen Passion
						i(112936),	-- Belt of the Broken Pact
						i(112929),	-- Cord of Black Dreams
						i(112941),	-- Seal of Karmic Return
						i(112933),	-- Legplates of Unthinking Strife
						i(112938),	-- Black Blood of Y'Shaarj
						i(112924),	-- Curse of Hubris
					})),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER10_HEROIC, {
				["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				["groups"] = {
					cr(71865, e(869, {	-- Garrosh Hellscream
						ach(8400, {	-- Cutting Edge: Garrosh Hellscream (10 player)
							-- #if MOP
							["OnUpdate"] = CUTTING_EDGE_ONUPDATE,
							-- #endif
						}),
						ach(8512, {	-- Realm First! Garrosh Hellscream (10 player)
							-- #if MOP
							["OnUpdate"] = CUTTING_EDGE_ONUPDATE,
							-- #endif
						}),
					})),
				},
			}),
			d(DIFFICULTY.LEGACY_RAID.PLAYER25_HEROIC, {
				["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
				["groups"] = {
					cr(71865, e(869, {	-- Garrosh Hellscream
						ach(8401, {	-- Cutting Edge: Garrosh Hellscream (25 player)
							-- #if MOP
							["OnUpdate"] = CUTTING_EDGE_ONUPDATE,
							-- #endif
						}),
						ach(8513, {	-- Realm First! Garrosh Hellscream (25 player)
							-- #if MOP
							["OnUpdate"] = CUTTING_EDGE_ONUPDATE,
							-- #endif
						}),
					})),
				},
			}),
		},
	})),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0 } }, {
		inst(369, {
			q(33345),	-- Dark Shaman Weekly Attempt
			q(33047),	-- Short-Supply Reward - Completed after looting an heirloom from Garrosh
		}),
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
		inst(369, {
			q(42509),	-- Iron Juggernaut for Hunters attempting/receiving "Pile of Juggernaut Parts" (137654)
			q(42538),	-- Siegecrafter Blackfuse for Hunters attempting/receiving "Blackfuse's Power Core" (138097)
		}),
	})),
});
