-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

local WOD_REMOVED_RECIPE_STR = "In 9.0.1, Blizzard made this recipe unlearnable but the item still appears on the vendor even though it has no use and is no longer collectible.";
local ALCHEMICAL_CATALYST = 108996;
local BLACKROCK_ORE = 109118;
local CERULEAN_PIGMENT = 114931;
local LUMINOUS_SHARD = 111245;
local RAW_BEAST_HIDE = 110609;
local STARFLOWER = 109127;
local SUMPTUOUS_FUR = 111557;
local TRUE_IRON_ORE = 109119;
local PRIMAL_SPIRIT = i(120945, {	-- Primal Spirit
	["cost"] = {
		{ "i", 109118, 5 },	-- 5x Blackrock Ore
		{ "i", 109693, 5 },	-- 5x Draenic Dust
		{ "i", 109125, 5 },	-- 5x Fireweed
		{ "i", 110609, 5 },	-- 5x Raw Beast Hide
		{ "i", 111557, 5 },	-- 5x Sumptuous Fur
	},
});
local COOK_TRADER = sharedData({ ["timeline"] = { ADDED_6_1_0 } }, {
	i(122556),	-- Recipe: Buttered Sturgeon (RECIPE!)
	i(260556, {	-- Recipe: Hungry Human's Platter (RECIPE!)
		["timeline"] = { ADDED_11_2_7 },
	}),
	i(122557),	-- Recipe: Jumbo Sea Dog (RECIPE!)
	i(122558),	-- Recipe: Pickled Eel (RECIPE!)
	i(122559),	-- Recipe: Salty Squid Roll (RECIPE!)
	i(122555),	-- Recipe: Sleeper Sushi (RECIPE!)
	i(122560),	-- Recipe: Whiptail Fillet (RECIPE!)
});
local DUST_TRADER = {
	PRIMAL_SPIRIT,
	i(122711, {	-- Formula: Temporal Binding (RECIPE!)
		["cost"] = {{ "i", LUMINOUS_SHARD, 5 }},
	}),
};
local FUR_TRADER = {
	PRIMAL_SPIRIT,
	i(122716, {	-- Pattern: Primal Weaving (RECIPE!)
		["cost"] = {{ "i", SUMPTUOUS_FUR, 60 }},
	}),
	i(127724, {	-- Pattern: Mighty Hexweave Essence (RECIPE!)
		-- #IF AFTER 10.0.5
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #ENDIF
		["cost"] = {{ "i", SUMPTUOUS_FUR, 60 }},
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
	}),
	i(122549, {	-- Pattern: Powerful Hexweave Essence (RECIPE!)
		["cost"] = {{ "i", SUMPTUOUS_FUR, 60 }},
		["timeline"] = { ADDED_6_1_0, REMOVED_6_2_0 },
	}),
	i(127742, {	-- Pattern: Savage Hexweave Essence (RECIPE!)
		-- #IF AFTER 10.0.5
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #ENDIF
		["cost"] = {{ "i", SUMPTUOUS_FUR, 60 }},
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
	}),
};
local HERB_TRADER = {
	PRIMAL_SPIRIT,
	i(128161, {	-- Recipe: Elemental Distillate (RECIPE!)
		-- #if AFTER 9.0.1
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #endif
		["cost"] = {{ "i", ALCHEMICAL_CATALYST, 10 }},
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 }
	}),
	i(122710, {	-- Recipe: Primal Alchemy (RECIPE!)
		["cost"] = {{ "i", STARFLOWER, 60 }},
	}),
	i(122600, {	-- Recipe: Savage Blood (RECIPE!)
		["cost"] = {{ "i", ALCHEMICAL_CATALYST, 10 }},
	}),
	i(128160, {	-- Recipe: Wildswater (RECIPE!)
		-- #if AFTER 9.0.1
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #endif
		["cost"] = {{ "i", ALCHEMICAL_CATALYST, 10 }},
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 }
	}),
	i(128410, {	-- Technique: Mass Mill Fireweed (RECIPE!)
		["cost"] = {{ "i", CERULEAN_PIGMENT, 20 }},
	}),
	i(128409, {	-- Technique: Mass Mill Frostweed (RECIPE!)
		["cost"] = {{ "i", CERULEAN_PIGMENT, 20 }},
	}),
	i(128411, {	-- Technique: Mass Mill Gorgrond Flytrap (RECIPE!)
		["cost"] = {{ "i", CERULEAN_PIGMENT, 20 }},
	}),
	i(128413, {	-- Technique: Mass Mill Nagrand Arrowbloom (RECIPE!)
		["cost"] = {{ "i", CERULEAN_PIGMENT, 20 }},
	}),
	i(128412, {	-- Technique: Mass Mill Starflower (RECIPE!)
		["cost"] = {{ "i", CERULEAN_PIGMENT, 20 }},
	}),
	i(128414, {	-- Technique: Mass Mill Talador Orchid (RECIPE!)
		["cost"] = {{ "i", CERULEAN_PIGMENT, 20 }},
	}),
	i(127723, {	-- Technique: Mighty Ensorcelled Tarot (RECIPE!)
		-- #if AFTER 9.0.1
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #endif
		["cost"] = {{ "i", CERULEAN_PIGMENT, 20 }},
	}),
	i(127728, {	-- Technique: Mighty Weapon Crystal (RECIPE!)
		-- #if AFTER 9.0.1
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #endif
		["cost"] = {{ "i", CERULEAN_PIGMENT, 20 }},
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
	}),
	i(127741, {	-- Technique: Savage Ensorcelled Tarot (RECIPE!)
		-- #if AFTER 9.0.1
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #endif
		["cost"] = {{ "i", CERULEAN_PIGMENT, 20 }},
	}),
	i(127746, {	-- Technique: Savage Weapon Crystal (RECIPE!)
		-- #if AFTER 9.0.1
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #endif
		["cost"] = {{ "i", CERULEAN_PIGMENT, 20 }},
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
	}),
	i(122713, {	-- Technique: The Spirit of War (RECIPE!)
		["cost"] = {{ "i", CERULEAN_PIGMENT, 20 }},
	}),
	i(141642, {	-- Technique: Tome of the Clear Mind (RECIPE!)
		["cost"] = {{ "i", CERULEAN_PIGMENT, 20 }},
	}),
	i(122599, {	-- Tome of Sorcerous Elements (RECIPE!)
		["cost"] = {{ "i", ALCHEMICAL_CATALYST, 10 }},
		["groups"] = {
			r(181637),	-- Transmute: Sorcerous Air to Earth
			r(181633),	-- Transmute: Sorcerous Air to Fire
			r(181636),	-- Transmute: Sorcerous Air to Water
			r(181631),	-- Transmute: Sorcerous Earth to Air
			r(181632),	-- Transmute: Sorcerous Earth to Fire
			r(181635),	-- Transmute: Sorcerous Earth to Water
			r(181627),	-- Transmute: Sorcerous Fire to Air
			r(181625),	-- Transmute: Sorcerous Fire to Earth
			r(181628),	-- Transmute: Sorcerous Fire to Water
			r(181630),	-- Transmute: Sorcerous Water to Air
			r(181629),	-- Transmute: Sorcerous Water to Earth
			r(181634),	-- Transmute: Sorcerous Water to Fire
		},
	}),
	i(122605, {	-- Tome of the Stones (RECIPE!)
		["cost"] = {{ "i", ALCHEMICAL_CATALYST, 10 }},
		["groups"] = {
			r(181650),	-- Stone of Fire
			r(181648),	-- Stone of the Earth
			r(181649),	-- Stone of the Waters
			r(181647),	-- Stone of Wind
		},
	}),
};
local LEATHER_TRADER = {
	PRIMAL_SPIRIT,
	i(127722, {	-- Pattern: Mighty Burnished Essence (RECIPE!)
		-- #IF AFTER 10.0.5
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #ENDIF
		["cost"] = {{ "i", RAW_BEAST_HIDE, 60 }},
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
	}),
	i(122547, {	-- Pattern: Powerful Burnished Essence (RECIPE!)
		["cost"] = {{ "i", RAW_BEAST_HIDE, 60 }},
		["timeline"] = { ADDED_6_1_0, REMOVED_6_2_0 },
	}),
	i(127740, {	-- Pattern: Savage Burnished Essence (RECIPE!)
		-- #IF AFTER 10.0.5
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #ENDIF
		["cost"] = {{ "i", RAW_BEAST_HIDE, 60 }},
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
	}),
	i(122715, {	-- Pattern: Spiritual Leathercraft (RECIPE!)
		["cost"] = {{ "i", RAW_BEAST_HIDE, 60 }},
	}),
};
local ORE_TRADER = {
	PRIMAL_SPIRIT,
	i(127726, {	-- Design: Mighty Taladite Amplifier (RECIPE!)
		-- #IF AFTER 10.0.5
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #ENDIF
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
		["cost"] = {{ "i", BLACKROCK_ORE, 60 }},
	}),
	i(122551, {	-- Design: Powerful Taladite Amplifier (RECIPE!)
		["cost"] = {{ "i", BLACKROCK_ORE, 60 }},
		["timeline"] = { ADDED_6_1_0, REMOVED_6_2_0 },
	}),
	i(122714, {	-- Design: Primal Gemcutting (RECIPE!)
		["cost"] = {{ "i", TRUE_IRON_ORE, 60 }},
	}),
	i(127744, {	-- Design: Savage Taladite Amplifier (RECIPE!)
		-- #IF AFTER 10.0.5
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #ENDIF
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
		["cost"] = {{ "i", BLACKROCK_ORE, 60 }},
	}),
	i(127725, {	-- Plans: Mighty Steelforged Essence (RECIPE!)
		-- #IF AFTER 10.0.5
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #ENDIF
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
		["cost"] = {{ "i", BLACKROCK_ORE, 60 }},
	}),
	i(127727, {	-- Plans: Mighty Truesteel Essence (RECIPE!)
		-- #IF AFTER 10.0.5
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #ENDIF
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
		["cost"] = {{ "i", TRUE_IRON_ORE, 60 }},
	}),
	i(122550, {	-- Plans: Powerful Steelforged Essence (RECIPE!)
		["timeline"] = { ADDED_6_1_0, REMOVED_6_2_0 },
		["cost"] = {{ "i", BLACKROCK_ORE, 60 }},
	}),
	i(122552, {	-- Plans: Powerful Truesteel Essence (RECIPE!)
		["timeline"] = { ADDED_6_1_0, REMOVED_6_2_0 },
		["cost"] = {{ "i", TRUE_IRON_ORE, 60 }},
	}),
	i(122705, {	-- Plans: Riddle of Truesteel (RECIPE!)
		["cost"] = {{ "i", TRUE_IRON_ORE, 60 }},
	}),
	i(127743, {	-- Plans: Savage Steelforged Essence (RECIPE!)
		-- #IF AFTER 10.0.5
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #ENDIF
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
		["cost"] = {{ "i", BLACKROCK_ORE, 60 }},
	}),
	i(127745, {	-- Plans: Savage Truesteel Essence (RECIPE!)
		-- #IF AFTER 10.0.5
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #ENDIF
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
		["cost"] = {{ "i", TRUE_IRON_ORE, 60 }},
	}),
	i(127729, {	-- Schematic: Advanced Muzzlesprocket (RECIPE!)
		-- #IF AFTER 10.0.5
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #ENDIF
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
		["cost"] = {{ "i", TRUE_IRON_ORE, 60 }},
	}),
	i(127721, {	-- Schematic: Bi-Directional Fizzle Reducer (RECIPE!)
		-- #IF AFTER 10.0.5
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #ENDIF
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
		["cost"] = {{ "i", BLACKROCK_ORE, 60 }},
	}),
	i(127739, {	-- Schematic: Infrablue-Blocker Lenses (RECIPE!)
		-- #IF AFTER 10.0.5
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #ENDIF
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
		["cost"] = {{ "i", BLACKROCK_ORE, 60 }},
	}),
	i(122546, {	-- Schematic: Oglethorpe's Octagonal Lenses (RECIPE!)
		["timeline"] = { ADDED_6_1_0, REMOVED_6_2_0 },
		["cost"] = {{ "i", BLACKROCK_ORE, 60 }},
	}),
	i(122554, {	-- Schematic: Precision Scope Tuning Kit (RECIPE!)
		["timeline"] = { ADDED_6_1_0, REMOVED_6_2_0 },
		["cost"] = {{ "i", TRUE_IRON_ORE, 60 }},
	}),
	i(122712, {	-- Schematic: Primal Welding (RECIPE!)
		["cost"] = {{ "i", BLACKROCK_ORE, 60 }},
	}),
	i(127747, {	-- Schematic: Taladite Firing Pin (RECIPE!)
		-- #IF AFTER 10.0.5
		["description"] = WOD_REMOVED_RECIPE_STR,
		["collectible"] = false,	-- item still exists on vendor, but not usable/learnable so we have to mark it as not collectible
		-- #ENDIF
		["timeline"] = { ADDED_6_2_0, REMOVED_10_0_5 },
		["cost"] = {{ "i", TRUE_IRON_ORE, 60 }},
	}),
};

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(VENDORS, {
				n(90894, bubbleDownSelf({["timeline"] = { ADDED_6_1_0 } }, {	-- Alexi Hackercam <Ore Trader>
					["races"] = ALLIANCE_ONLY,
					["groups"] = ORE_TRADER,
				})),
				n(80159, {	-- Arsenio Zerep <Cook>
					["races"] = ALLIANCE_ONLY,
					["groups"] = COOK_TRADER,
				}),
				n(88779, {	-- Benjamin Brode <Traveling Merchant>
					i(119210, {	-- Hearthstone Board (TOY!)
						["cost"] = 10000000,	-- 1,000g
					}),
					i(119212),	-- Winning Hand (TOY!)
				}),
				n(91034, bubbleDownSelf({["timeline"] = { ADDED_6_1_0 } }, {	-- Calvo Klyne <Fur Trader>
					["races"] = HORDE_ONLY,
					["groups"] = FUR_TRADER,
				})),
				n(88633, {	-- Deluwin Whisperfield <Contracts>
					["description"] = "Sells contracts for followers not chosen during zone quests.",
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(119291, {	-- Contract: Artificer Andren
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(184) },	-- Apprentice Artificer Andren
						}),
						i(119288, {	-- Contract: Daleera Moonfang
							follower(463),	-- Daleera Moonfang
						}),
						i(119256, {	-- Contract: Glirin
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(211) },	-- Glirin
						}),
						i(119244, {	-- Contract: Hulda Shadowblade
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(453) },	-- Hulda Shadowblade
						}),
						i(119242, {	-- Contract: Magister Serena
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(154) },	-- Magister Serena
						}),
						i(119420, {	-- Contract: Miall
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(155) },	-- Miall
						}),
						i(119254, {	-- Contract: Pitfighter Vaandaam
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(176) },	-- Pitfighter Vaandaam
						}),
						i(119296, {	-- Contract: Rangari Chel
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(185) },	-- Rangari Chel
						}),
						i(119252, {	-- Contract: Rangari Erdanii
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(212) },	-- Rangari Erdanii
						}),
						i(119298, {	-- Contract: Ranger Kaalya
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(159) },	-- Rangari Kaalya
						}),
						i(119292, {	-- Contract: Vindicator Onaala
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(186) },	-- Vindicator Onaala
						}),
						i(119267, {	-- Contract: Ziri'ak
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(168) },	-- Ziri'ak
						}),
					},
				}),
				n(91025, bubbleDownSelf({["timeline"] = { ADDED_6_1_0 } }, {	-- Dorothy "Two" <Fur Trader>
					["races"] = ALLIANCE_ONLY,
					["groups"] = FUR_TRADER,
				})),
				n(91020, bubbleDownSelf({["timeline"] = { ADDED_6_1_0 } }, {	-- Enchantress Ismae <Dust Trader>
					["races"] = ALLIANCE_ONLY,
					["groups"] = DUST_TRADER,
				})),
				n(80285, {	-- Guh <Bladespire Trader>
					["description"] = "Must speak to him in |cFFFFD700Frostfire Ridge|r to invite him to your garrison.",
					["groups"] = {
						i(119430, {	-- Gas-Powered Stick
							["cost"] = 10000000,	-- 1,000g
						}),
					},
				}),
				n(91024, bubbleDownSelf({["timeline"] = { ADDED_6_1_0 } }, {	-- Jake the Fox <Leather Trader>
					["races"] = ALLIANCE_ONLY,
					["groups"] = LEATHER_TRADER,
				})),
				n(76928, {	-- Kraank <Food & Drink>
					["races"] = HORDE_ONLY,
					["groups"] = COOK_TRADER,
				}),
				n(88635, {	-- Nalya Battlehorn <Contracts>
					["description"] = "Sells contracts for followers not chosen during zone quests.",
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(119255, {	-- Contract: Bruto
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(176) },	-- Bruto
						}),
						i(119245, {	-- Contract: Dark Ranger Velonara
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(453) },	-- Dark Ranger Velonara
						}),
						i(122135, {	-- Contract: Greatmother Geyah
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(186) },	-- Greatmother Geyah
						}),
						i(122136, {	-- Contract: Kal'gor the Honorable
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(184) },	-- Kal'gor the Honorable
						}),
						i(119233, {	-- Contract: Kaz the Shrieker
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(159) },	-- Kaz the Shrieker
						}),
						i(119240, {	-- Contract: Lokra
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(185) },	-- Lokra
						}),
						i(119243, {	-- Contract: Magister Krelas
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(154) },	-- Magister Krelas
						}),
						i(119418, {	-- Contract: Morketh Bladehowl
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(155) },	-- Morketh Bladehowl
						}),
						i(119257, {	-- Contract: Penny Clobberbottom
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(211) },	-- Penny Clobberbottom
						}),
						i(119253, {	-- Contract: Spirit of Bony Xuk
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(212) },	-- Spirit of Bony Xuk
						}),
						i(114825, {	-- Contract: Ulna Thresher
							follower(463),	-- Ulna Thresher
						}),
						i(119267, {	-- Contract: Ziri'ak
							["cost"] = 50000000,	-- 5,000g
							["groups"] = { follower(168) },	-- Ziri'ak
						}),
					},
				}),
				n(91031, bubbleDownSelf({["timeline"] = { ADDED_6_1_0 } }, {	-- Nicholas Mitrik <Herb Trader>
					["races"] = HORDE_ONLY,
					["groups"] = HERB_TRADER,
				})),
				n(91029, bubbleDownSelf({["timeline"] = { ADDED_6_1_0 } }, {	-- Rath'thul Moonvale <Dust Trader>
					["races"] = HORDE_ONLY,
					["groups"] = DUST_TRADER,
				})),
				n(79619, {	-- Rezlak <Blueprints Vendor>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(111929),	-- Alchemy Lab, Level 2
						i(118215, {	-- Book of Garrison Blueprints [Can learn all lvl 1 blueprints except Salvage Yard]
							i(111812),	-- Alchemy Lab, Level 1
							i(111959, {	-- Barn, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 24,	-- Barn
							}),
							i(111956),	-- Barracks, Level 1
							i(111817),	-- Enchanter's Study, Level 1
							i(109258),	-- Engineering Works, Level 1
							i(116433, {	-- Frostwall Tavern, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 34,	-- Lunarfall Inn / Frostwall Tavern
							}),
							i(111814),	-- Gem Boutique, Level 1
							i(111962, {	-- Gladiator's Sanctum, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 159,	-- Gladiator's Sanctum
							}),
							i(116199, {	-- Goblin Workshop, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 162,	-- Gnomish Gearworks / Goblin Workshop
							}),
							i(111961, {	-- Lumbermill, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 40,	-- Lumber Mill
							}),
							i(111815),	-- Scribe's Quarters, Level 1
							i(116198, {	-- Spirit Lodge, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 37,	-- Mage Tower / Spirit Lodge
							}),
							i(112001, {	-- Stables, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 65,	-- Stables
							}),
							i(111958, {	-- Storehouse, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 51,	-- Storehouse
							}),
							i(111816),	-- Tailoring Emporium, Level 1
							i(111813),	-- The Forge, Level 1
							i(111818),	-- The Tannery, Level 1
							i(111963, {	-- Trading Post, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 111,	-- Trading Post
							}),
							i(116184, {	-- War Mill, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 8,	-- Dwarven Bunker / War Mill
							}),
						}),
						i(111957),	-- Salvage Yard, Level 1
						i(111968),	-- Barn, Level 2
						i(111970),	-- Barracks, Level 2
						i(111972),	-- Enchanter's Study, Level 2
						i(109256),	-- Engineering Works, Level 2
						i(111927),	-- Fishing Shack, Level 2
						i(116248),	-- Frostwall Mines, Level 2
						i(116431),	-- Frostwall Tavern, Level 2
						i(111974),	-- Gem Boutique, Level 2
						i(111980),	-- Gladiator's Sanctum, Level 2
						i(116200),	-- Goblin Workshop, Level 2
						i(109577),	-- Herb Garden, Level 2
						i(109254),	-- Lumber Mill, Level 2
						i(111998),	-- Menagerie, Level 2
						i(111976),	-- Salvage Yard, Level 2
						i(111978),	-- Scribe's Quarters, Level 2
						i(116196),	-- Spirit Lodge, Level 2
						i(112002),	-- Stables, Level 2
						i(111982),	-- Storehouse, Level 2
						i(111992),	-- Tailoring Emporium, Level 2
						i(111990),	-- The Forge, Level 2
						i(111988),	-- The Tannery, Level 2
						i(111986),	-- Trading Post, Level 2
						i(116185),	-- War Mill, Level 2
						-- TODO: this is weird...
						ach(9406, {		-- Working More Orders (250)
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = {
								i(111930),	-- Alchemy Lab, Level 3
								i(111973),	-- Enchanter's Study, Level 3
								i(109257),	-- Engineering Works, Level 3
								i(111975),	-- Gem Boutique, Level 3
								i(111979),	-- Scribe's Quarters, Level 3
								i(111993),	-- Tailoring Emporium, Level 3
								i(111991),	-- The Forge, Level 3
								i(111989),	-- The Tannery, Level 3
							},
						}),
						ach(9565, {	-- Master Trapper (125)
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111969) },	-- Barn, Level 3
						}),
						ach(9523, {	-- Patrolling Draenor
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111971) },	-- Barracks, Level 3
						}),
						ach(9462, {	-- Draenor Angler
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["sym"] = {{"meta_achievement",
								9461,		-- Sea Scorpion Angler
								9460,		-- Jawless Skulker Angler
								9459,		-- Fat Sleeper Angler
								9458,		-- Blind Lake Sturgeon Angler
								9457,		-- Blackwater Whiptail Angler
								9456,		-- Abyssal Gulper Eel Angler
								9455,		-- Fire Ammonite
							}},
							["groups"] = { i(111928) },		-- Fishing Shack, Level 3 [Blueprints]
						}),
						ach(9453, {	-- Draenic Stone Collector
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(116249) },	-- Frostwall Mines, Level 3
						}),
						ach(9703, {	-- Stay Awhile and Listen
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(116432) },	-- Frostwall Tavern, Level 3
						}),
						ach(9495, {	-- The Bone Collector
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111981) },	-- Gladiator's Sanctum, Level 3
						}),
						ach(9527, {	-- Terrific Technology
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(116201) },	-- Goblin Workshop, Level 3
						}),
						ach(9454, {	-- Draenic Seed Collector
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111997) },	-- Herb Garden, Level 3
						}),
						ach(9429, {	-- Upgrading the Mill
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(109255) },	-- Lumber Mill, Level 3
						}),
						ach(9463, {	-- Draenic Pet Battler
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111999) },	-- Menagerie, Level 3
						}),
						ach(9468, {	-- Salvaging Pays Off
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111977) },	-- Salvage Yard, Level 3
						}),
						ach(9497, {	-- Finding Your Waystones
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(116197) },	-- Spirit Lodge, Level 3
						}),
						ach(9526, {	-- Master of Mounts
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(112003) },	-- Stables, Level 3
						}),
						ach(9487, {	-- Got My Mind On My Draenor Money (10,000)
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111983) },	-- Storehouse, Level 3
						}),
						h(ach(9477, {	-- Savage Friends
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["_noautomation"] = true,
							["groups"] = { i(111987) },	-- Trading Post, Level 3
						})),
						ach(9129, {	-- Filling the Ranks
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(116186) },	-- War Mill, Level 3
						}),
					},
				}),
				n(91404, bubbleDownSelf({["timeline"] = { ADDED_6_1_0 } }, {	-- Samantha Scarlet <Herb Trader>
					["races"] = ALLIANCE_ONLY,
					["groups"] = HERB_TRADER,
				})),
				n(78564, {	-- Sergeant Crowler <Garrison Quartermaster> LVL3
					["cr"] = 88223,	-- LVL1 and LVL2 Quartermaster
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(248800, {	-- Architect's Drafting Table (DECOR!)
							["sourceQuest"] = 36615,	-- My Very Own Castle
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 1500 }},
						}),
						i(120348, {	-- Enchanted Crystal of Freezing
							["cost"] = {{ "c", GARRISON_RESOURCES, 60 }},
						}),
						i(120347, {	-- Enchanted Crystal of Replenishment
							["cost"] = {{ "c", GARRISON_RESOURCES, 60 }},
						}),
						i(120349, {	-- Enduring Vial of Swiftness
							["cost"] = {{ "c", GARRISON_RESOURCES, 60 }},
						}),
						i(120182, {	-- Excess Potion of Accelerated Learning
							["cost"] = {{ "c", GARRISON_RESOURCES, 100 }},
						}),
						i(122272, {	-- Follower Ability Retraining Manual
							["cost"] = {{ "c", GARRISON_RESOURCES, 1000 }},
						}),
						i(122273, {	-- Follower Trait Retraining Guide
							["cost"] = {{ "c", GARRISON_RESOURCES, 1000 }},
						}),
						i(248661, {	-- Northshire Scribe's Desk (DECOR!)
							["sourceQuest"] = 36592,	-- Bigger is Better
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 300 }},
						}),
						i(245275, {	-- Rolled Scroll (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 100 }},
						}),
						i(248810, {	-- Rough Wooden Chair (DECOR!)
							["sourceQuest"] = 35176,	-- Keeping it Together
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 100 }},
						}),
						i(122307, {	-- Rush Order: Barn
							["cost"] = {{ "c", GARRISON_RESOURCES, 1000 }},
						}),
						i(122490, {	-- Rush Order: Dwarven Bunker
							["cost"] = {{ "c", GARRISON_RESOURCES, 1000 }},
						}),
						i(122497, {	-- Rush Order: Garden Shipment
							["cost"] = {{ "c", GARRISON_RESOURCES, 300 }},
						}),
						i(122487, {	-- Rush Order: Gladiator's Sanctum
							["cost"] = {{ "c", GARRISON_RESOURCES, 1000 }},
						}),
						i(122500, {	-- Rush Order: Gnomish Gearworks
							["cost"] = {{ "c", GARRISON_RESOURCES, 1000 }},
						}),
						i(122503, {	-- Rush Order: Mine Shipment
							["cost"] = {{ "c", GARRISON_RESOURCES, 300 }},
						}),
						i(128373, {	-- Rush Order: Shipyard
							["cost"] = {{ "c", GARRISON_RESOURCES, 500 }},
						}),
						i(122423, {	-- Scouting Missive: Broken Precipice
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122417, {	-- Scouting Missive: Darktide Roost
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122404, {	-- Scouting Missive: Everbloom Wilds
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122406, {	-- Scouting Missive: Iron Siegeworks
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122414, {	-- Scouting Missive: Lost Veil Anzu
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122399, {	-- Scouting Missive: Magnarok
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122422, {	-- Scouting Missive: Mok'gol Watchpost
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122409, {	-- Scouting Missive: Pillars of Fate
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122410, {	-- Scouting Missive: Shattrath Harbor
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122407, {	-- Scouting Missive: Skettis
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122415, {	-- Scouting Missive: Socrethar's Rise
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122401, {	-- Scouting Missive: Stonefury Cliffs
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(133883, {	-- Scouting Missive: The Heart of Shattrath
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(133878, {	-- Scouting Missive: The Pit
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(248334, {	-- Stormwind Wooden Bench (DECOR!)
							["sourceQuest"] = 36404,	-- Clearing the Garden
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 300 }},
						}),
						i(248335, {	-- Stormwind Wooden Stool (DECOR!)
							["sourceQuest"] = 36202,	-- Anglin' In Our Garrison
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 100 }},
						}),
						i(248660, {	-- Stormwind Workbench (DECOR!)
							["sourceQuest"] = 34192,	-- Things Are Not Goren Our Way
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 300 }},
						}),
						i(141642, {	-- Technique: Tome of the Clear Mind (RECIPE!)
							["cost"] = {{ "i", 114931, 20 }},	-- 20x Cerulean Pigment
						}),
						i(248799, {	-- Wooden Storage Crate (DECOR!)
							["sourceQuest"] = 34586,	-- Establish Your Garrison
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 100 }},
						}),
					},
				}),
				n(79774, {	-- Sergeant Grimjaw <Garrison Quartermaster> LVL3
					["races"] = HORDE_ONLY,
					["cr"] = 88228,	-- LVL1 and LVL2 Quartermaster
					["groups"] = {
						i(120348, {	-- Enchanted Crystal of Freezing
							["cost"] = {{ "c", GARRISON_RESOURCES, 60 }},
						}),
						i(120347, {	-- Enchanted Crystal of Replenishment
							["cost"] = {{ "c", GARRISON_RESOURCES, 60 }},
						}),
						i(120349, {	-- Enduring Vial of Swiftness
							["cost"] = {{ "c", GARRISON_RESOURCES, 60 }},
						}),
						i(120182, {	-- Excess Potion of Accelerated Learning
							["cost"] = {{ "c", GARRISON_RESOURCES, 100 }},
						}),
						i(122272, {	-- Follower Ability Retraining Manual
							["cost"] = {{ "c", GARRISON_RESOURCES, 1000 }},
						}),
						i(122273, {	-- Follower Trait Retraining Guide
							["cost"] = {{ "c", GARRISON_RESOURCES, 1000 }},
						}),
						i(245438, {	-- Frostwolf Bookcase (DECOR!)
							["sourceQuest"] = 33527,	-- Last Steps
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 500 }},
						}),
						i(245443, {	-- Frostwolf Round Table (DECOR!)
							["sourceQuest"] = 34378,	-- Establish Your Garrison
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 300 }},
						}),
						i(244653, {	-- Orcish Scribe's Drafting Table (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 300 }},
						}),
						i(244315, {	-- Orcish Warlord's Planning Table (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 1500 }},
						}),
						i(122307, {	-- Rush Order: Barn
							["cost"] = {{ "c", GARRISON_RESOURCES, 1000 }},
						}),
						i(122496, {	-- Rush Order: Garden Shipment
							["cost"] = {{ "c", GARRISON_RESOURCES, 300 }},
						}),
						i(122487, {	-- Rush Order: Gladiator's Sanctum
							["cost"] = {{ "c", GARRISON_RESOURCES, 1000 }},
						}),
						i(122501, {	-- Rush Order: Goblin Workshop
							["cost"] = {{ "c", GARRISON_RESOURCES, 1000 }},
						}),
						i(122502, {	-- Rush Order: Mine Shipment
							["cost"] = {{ "c", GARRISON_RESOURCES, 300 }},
						}),
						i(128373, {	-- Rush Order: Shipyard
							["cost"] = {{ "c", GARRISON_RESOURCES, 500 }},
						}),
						i(122491, {	-- Rush Order: War Mill
							["cost"] = {{ "c", GARRISON_RESOURCES, 1000 }},
						}),
						i(122424, {	-- Scouting Missive: Broken Precipice
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122418, {	-- Scouting Missive: Darktide Roost
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122400, {	-- Scouting Missive: Everbloom Wilds
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122402, {	-- Scouting Missive: Iron Siegeworks
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122413, {	-- Scouting Missive: Lost Veil Anzu
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122403, {	-- Scouting Missive: Magnarok
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122421, {	-- Scouting Missive: Mok'gol Watchpost
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122411, {	-- Scouting Missive: Pillars of Fate
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122412, {	-- Scouting Missive: Shattrath Harbor
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122408, {	-- Scouting Missive: Skettis
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122416, {	-- Scouting Missive: Socrethar's Rise
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(122405, {	-- Scouting Missive: Stonefury Cliffs
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(133884, {	-- Scouting Missive: The Heart of Shattrath
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(133876, {	-- Scouting Missive: The Pit
							["cost"] = {{ "c", GARRISON_RESOURCES, 200 }},
						}),
						i(141642, {	-- Technique: Tome of the Clear Mind (RECIPE!)
							["cost"] = {{ "i", 114931, 20 }},	-- 20x Cerulean Pigment
						}),
						i(244316, {	-- Warsong Workbench (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 300 }},
						}),
						i(244320, {	-- Youngling's Courser Toys (DECOR!)
							["sourceQuest"] = 33470,	-- Pool of Visions
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 100 }},
						}),
					},
				}),
				n(85839, {	-- Sparz Boltwist <Blueprints Vendor>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(118215, {	-- Book of Garrison Blueprints [Can learn all lvl 1 blueprints except Salvage Yard]
							i(111812),	-- Alchemy Lab, Level 1
							i(111959, {	-- Barn, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 24,	-- Barn
							}),
							i(111956),	-- Barracks, Level 1
							i(111964, {	-- Dwarven Bunker, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 8,	-- Dwarven Bunker / War Mill
							}),
							i(111817),	-- Enchanter's Study, Level 1
							i(109258),	-- Engineering Works, Level 1
							i(111814),	-- Gem Boutique, Level 1
							i(111962, {	-- Gladiator's Sanctum, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 159,	-- Gladiator's Sanctum
							}),
							i(111924, {	-- Gnomish Gearworks, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 162,	-- Gnomish Gearworks / Goblin Workshop
							}),
							i(111961, {	-- Lumbermill, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 40,	-- Lumber Mill
							}),
							i(111960, {	-- Lunarfall Inn, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 34,	-- Lunarfall Inn / Frostwall Tavern
							}),
							i(111965, {	-- Mage Tower, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 37,	-- Mage Tower / Spirit Lodge
							}),
							i(111815),	-- Scribe's Quarters, Level 1
							i(112001, {	-- Stables, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 65,	-- Stables
							}),
							i(111958, {	-- Storehouse, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 51,	-- Storehouse
							}),
							i(111816),	-- Tailoring Emporium, Level 1
							i(111813),	-- The Forge, Level 1
							i(111818),	-- The Tannery, Level 1
							i(111963, {	-- Trading Post, Level 1 [Building must be attached in order for the blueprint to be collectible]
								["buildingID"] = 111,	-- Trading Post
							}),
						}),
						i(111957),	-- Salvage Yard, Level 1
						i(111929),	-- Alchemy Lab, Level 2
						i(111968),	-- Barn, Level 2
						i(111970),	-- Barracks, Level 2
						i(111966),	-- Dwarven Bunker, Level 2
						i(111972),	-- Enchanter's Study, Level 2
						i(109256),	-- Engineering Works, Level 2
						i(111927),	-- Fishing Shack, Level 2
						i(111974),	-- Gem Boutique, Level 2
						i(111980),	-- Gladiator's Sanctum, Level 2
						i(111984),	-- Gnomish Gearworks, Level 2
						i(109577),	-- Herb Garden, Level 2
						i(109254),	-- Lumber Mill, Level 2
						i(109576),	-- Lunarfall Excavation, Level 2
						i(107694),	-- Lunarfall Inn, Level 2
						i(109062),	-- Mage Tower, Level 2
						i(111998),	-- Menagerie, Level 2
						i(111976),	-- Salvage Yard, Level 2
						i(111978),	-- Scribe's Quarters, Level 2
						i(112002),	-- Stables, Level 2
						i(111982),	-- Storehouse, Level 2
						i(111992),	-- Tailoring Emporium, Level 2
						i(111990),	-- The Forge, Level 2
						i(111988),	-- The Tannery, Level 2
						i(111986),	-- Trading Post, Level 2
						-- TODO: this is weird...
						ach(9406, {		-- Working More Orders (250)
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = {
								i(111930),	-- Alchemy Lab, Level 3
								i(111973),	-- Enchanter's Study, Level 3
								i(109257),	-- Engineering Works, Level 3
								i(111975),	-- Gem Boutique, Level 3
								i(111979),	-- Scribe's Quarters, Level 3
								i(111993),	-- Tailoring Emporium, Level 3
								i(111991),	-- The Forge, Level 3
								i(111989),	-- The Tannery, Level 3
							},
						}),
						ach(9565, {	-- Master Trapper (125)
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111969) },	-- Barn, Level 3
						}),
						ach(9523, {	-- Patrolling Draenor
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111971) },	-- Barracks, Level 3
						}),
						ach(9129, {	-- Filling the Ranks
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111967) },	-- Dwarven Bunker, Level 3
						}),
						ach(9462, {	-- Draenor Angler
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["sym"] = {{"meta_achievement",
								9461,		-- Sea Scorpion Angler
								9460,		-- Jawless Skulker Angler
								9459,		-- Fat Sleeper Angler
								9458,		-- Blind Lake Sturgeon Angler
								9457,		-- Blackwater Whiptail Angler
								9456,		-- Abyssal Gulper Eel Angler
								9455,		-- Fire Ammonite
							}},
							["groups"] = { i(111928) },		-- Fishing Shack, Level 3 [Blueprints]
						}),
						ach(9495, {	-- The Bone Collector
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111981) },	-- Gladiator's Sanctum, Level 3
						}),
						ach(9527, {	-- Terrific Technology
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111985) },	-- Gnomish Gearworks, Level 3
						}),
						ach(9454, {	-- Draenic Seed Collector
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111997) },	-- Herb Garden, Level 3
						}),
						ach(9429, {	-- Upgrading the Mill
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(109255) },	-- Lumber Mill, Level 3
						}),
						ach(9453, {	-- Draenic Stone Collector
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111996) },	-- Lunarfall Excavation, Level 3
						}),
						ach(9703, {	-- Stay Awhile and Listen
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(109065) },	-- Lunarfall Inn, Level 3
						}),
						ach(9497, {	-- Finding Your Waystones
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(109063) },	-- Mage Tower, Level 3
						}),
						ach(9463, {	-- Draenic Pet Battler
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111999) },	-- Menagerie, Level 3
						}),
						ach(9468, {	-- Salvaging Pays Off
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111977) },	-- Salvage Yard, Level 3
						}),
						ach(9526, {	-- Master of Mounts
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(112003) },	-- Stables, Level 3
						}),
						ach(9487, {	-- Got My Mind On My Draenor Money (10,000)
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = { i(111983) },	-- Storehouse, Level 3
						}),
						a(ach(9478, {	-- Savage Friends
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["_noautomation"] = true,
							["groups"] = { i(111987) },	-- Trading Post, Level 3
						})),
					},
				}),
				n(76872, {	-- Supplymaster Eri <General Goods & Repairs>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(244324, {	-- Peon's Work Bucket (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "c", GARRISON_RESOURCES, 150 }},
						}),
					},
				}),
				n(95470, {	-- Trader Araanda <Local Supplies>
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(127868, {	-- Crusher (PET!)
							["cost"] = 10000000,	-- 1,000g
							["timeline"] = { ADDED_6_2_0 },
						}),
						i(128308),	-- Draenic Armor Set
						i(128307),	-- Draenic Weaponry
						i(127864),	-- Personal Spotlight (TOY!)
						i(116667, {	-- Rocktusk Battleboar (MOUNT!)
							["cost"] = 100000000,	-- 10,000g
						}),
						i(116655, {	-- Witherhide Cliffstomper (MOUNT!)
							["cost"] = 200000000,	-- 20,000g
						}),
					},
				}),
				n(95471, {	-- Trader Darakk <Local Supplies>
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(127868, {	-- Crusher (PET!)
							["cost"] = 10000000,	-- 1,000g
							["timeline"] = { ADDED_6_2_0 },
						}),
						i(128308),	-- Draenic Armor Set
						i(128307),	-- Draenic Weaponry
						i(127864),	-- Personal Spotlight (TOY!)
						i(116667, {	-- Rocktusk Battleboar (MOUNT!)
							["cost"] = 100000000,	-- 10,000g
						}),
						i(116655, {	-- Witherhide Cliffstomper (MOUNT!)
							["cost"] = 200000000,	-- 20,000g
						}),
					},
				}),
				n(91030, bubbleDownSelf({["timeline"] = { ADDED_6_1_0 } }, {	-- Trixxy Volt <Ore Trader>
					["races"] = HORDE_ONLY,
					["groups"] = ORE_TRADER,
				})),
				n(91033, bubbleDownSelf({["timeline"] = { ADDED_6_1_0 } }, {	-- Zeezu <Leather Trader>
					["races"] = HORDE_ONLY,
					["groups"] = LEATHER_TRADER,
				})),
			}),
		})),
	})
);
