-------------------
-- BLACKSMITHING --
-------------------
BLACKSMITHING_RECIPES = {
	APPRENTICE = {
		r(2018, {	-- Blacksmithing (Apprentice)
			["lvl"] = 5,
			["rank"] = 1,
		}),
		n(ARMOR, {
			r(2663),	-- Copper Bracers
			r(2661),	-- Copper Chain Belt
			r(3319),	-- Copper Chain Boots
			r(2662),	-- Copper Chain Pants
			r(1252229, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Gemmed Copper Boots
			r(1252231, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Glowing Copper Boots
			r(12260),	-- Rough Copper Vest
			r(2666),	-- Runed Copper Belt
			r(3323),	-- Runed Copper Gauntlets
			r(3324),	-- Runed Copper Pants
			r(1252230, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Strange Copper Boots
		}),
		filter(MISC, {
			r(2665),	-- Coarse Sharpening Stone
			r(3116),	-- Coarse Weightstone
			r(2660),	-- Rough Sharpening Stone
			r(3115),	-- Rough Weightstone
		}),
		filter(REAGENTS, {
			r(1245287, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Copper Rod
			r(3320),	-- Rough Grinding Stone
		}),
		n(WEAPONS, {
			r(2738),	-- Copper Axe
			r(3293),	-- Copper Battle Axe
			r(9983),	-- Copper Claymore
			r(8880),	-- Copper Dagger
			r(2737),	-- Copper Mace
			r(2739),	-- Copper Shortsword
			r(7408),	-- Heavy Copper Maul
			r(3294),	-- Thick War Axe
		}),
	},
	JOURNEYMAN = {
		r(3100, {	-- Blacksmithing (Journeyman)
			["lvl"] = 10,
			["rank"] = 2,
		}),
		n(ARMOR, {
			r(1252250, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Acolyte's Chain Helm
			r(1252245, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Acolyte's Chain Leggings
			r(1252240, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Acolyte's Chain Shirt
			r(1252251, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Crusader's Chain Helm
			r(1252246, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Crusader's Chain Leggings
			r(1252241, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Crusader's Chain Shirt
			r(1252248, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Guard's Chain Helm
			r(1252243, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Guard's Chain Leggings
			r(2672),	-- Patterned Bronze Bracers
			r(1252249, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Protector's Chain Helm
			r(1252244, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Protector's Chain Leggings
			r(1252239, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Protector's Chain Shirt
			r(7817),	-- Rough Bronze Boots
			r(2670),	-- Rough Bronze Cuirass
			r(2668),	-- Rough Bronze Leggings
			r(3328),	-- Rough Bronze Shoulders
			r(2664),	-- Runed Copper Bracers
			r(2675),	-- Shining Silver Breastplate
			r(3331),	-- Silvered Bronze Boots
			r(3333),	-- Silvered Bronze Gauntlets
			r(1252247, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Veteran's Chain Helm
			r(1252242, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Veteran's Chain Leggings
			r(1252237, {["timeline"] = {TIMELINE.ADDED_1_60_1}}),	-- Veteran's Chain Shirt
		}),
		filter(MISC, {
			r(2674),	-- Heavy Sharpening Stone
			r(3117),	-- Heavy Weightstone
			r(19666),	-- Silver Skeleton Key
		}),
		filter(REAGENTS, {
			r(3326),	-- Coarse Grinding Stone
			r(3337),	-- Heavy Grinding Stone
			r(7818),	-- Silver Rod
		}),
		n(WEAPONS, {
			r(3491),	-- Big Bronze Knife
			r(2740),	-- Bronze Mace
			r(6517),	-- Pearl-handled Dagger
			r(2741),	-- Bronze Axe
			r(2742),	-- Bronze Shortsword
			r(3296),	-- Heavy Bronze Mace
			r(3292),	-- Heavy Copper Broadsword
			r(9985),	-- Bronze Warhammer
			r(9987),	-- Bronze Battle Axe
			r(9986),	-- Bronze Greatsword
		}),
	},
	EXPERT = {
		r(3538, {	-- Blacksmithing (Expert)
			["lvl"] = 20,
			["rank"] = 3,
		}),
		n(ARMOR, {
			r(7223),	-- Golden Scale Bracers
			r(3501),	-- Green Iron Bracers
			r(3508),	-- Green Iron Hauberk
			r(3502),	-- Green Iron Helm
			r(3506),	-- Green Iron Leggings
			r(9928),	-- Heavy Mithril Gauntlet
			r(9926),	-- Heavy Mithril Shoulder
			r(9931),	-- Mithril Plate Pants
			r(9916),	-- Steel Breastplate
			r(9935),	-- Steel Plate Helm
		}),
		filter(MISC, {
			r(19667),	-- Golden Skeleton 
			r(8768),	-- Iron Buckle
			r(9918),	-- Solid Sharpening Stone
			r(9921),	-- Solid Weightstone
			r(19668),	-- Truesilver Skeleton Key
		}),
		filter(REAGENTS, {
			r(14379),	-- Golden Rod
			r(9920),	-- Solid Grinding Stone
			r(14380),	-- Truesilver Rod
		}),
		n(WEAPONS, {
			r(15972),	-- Glinting Steel Dagger
			r(9993),	-- Heavy Mithril Axe
		}),
	},
	ARTISAN = {
		r(9785, {	-- Blacksmithing (Artisan)
			["lvl"] = 35,
			["rank"] = 4,
		}),
		n(ARMOR, {
			r(9968),	-- Heavy Mithril Boots
			r(9959),	-- Heavy Mithril Breastplate
			r(9961),	-- Mithril Coif
			r(1252292),	-- Shining Mithril Helm
		}),
		filter(MISC, {
			r(19669),	-- Arcanite Skeleton Key
			r(16639),	-- Dense Grinding Stone
			r(16641),	-- Dense Sharpening Stone
			r(16640),	-- Dense Weightstone
		}),
		filter(REAGENTS, {
			r(20201),	-- Arcanite Rod
		}),
		n(WEAPONS, {
			r(10001),	-- Big Black Mace
		}),
	},
	WEAPONSMITHING = {
		r(WEAPONSMITH),
		r(MASTER_AXESMITH),
		r(MASTER_HAMMERSMITH),
		r(MASTER_SWORDSMITH),
		r(10011),	-- Blight
		r(10007),	-- Phantom Blade
		r(10003),	-- The Shatterer
		r(10015),	-- Truesilver Champion
	};
	ARMORSMITHING = {
		r(ARMORSMITH),
		r(9974),	-- Truesilver Breastplate
		r(9954),	-- Truesilver Gauntlets
	};
	MERCHANTS_FAVOR_RECIPES_ALLIANCE = bubbleDownClassicRep(AZEROTH_COMMERCE_AUTHORITY, {
		{	-- Neutral
			i(271622, {	-- Blacksmithing Certification
				cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
			}),
			i(251358, {	-- Plans: Acolyte's Boots (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251368, {	-- Plans: Acolyte's Chain Belt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251363, {	-- Plans: Acolyte's Gloves (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251383, {	-- Plans: Acolyte's Silvered Chain Helm (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251378, {	-- Plans: Acolyte's Silvered Chain Leggings (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251373, {	-- Plans: Acolyte's Silvered Chain Shirt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251369, {	-- Plans: Crusader's Chain Belt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251359, {	-- Plans: Crusader's Boots (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251364, {	-- Plans: Crusader's Gloves (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251384, {	-- Plans: Crusader's Silvered Chain Helm (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251379, {	-- Plans: Crusader's Silvered Chain Leggings (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251374, {	-- Plans: Crusader's Silvered Chain Shirt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251356, {	-- Plans: Guard's Boots (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251366, {	-- Plans: Guard's Chain Belt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251361, {	-- Plans: Guard's Gloves (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251381, {	-- Plans: Guard's Silvered Chain Helm (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251376, {	-- Plans: Guard's Silvered Chain Leggings (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251371, {	-- Plans: Guard's Silvered Chain Shirt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251357, {	-- Plans: Protector's Boots (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251367, {	-- Plans: Protector's Chain Belt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251362, {	-- Plans: Protector's Gloves (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251382, {	-- Plans: Protector's Silvered Chain Helm (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251377, {	-- Plans: Protector's Silvered Chain Leggings (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251372, {	-- Plans: Protector's Silvered Chain Shirt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251355, {	-- Plans: Veteran's Boots (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251365, {	-- Plans: Veteran's Chain Belt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251360, {	-- Plans: Veteran's Gloves (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251380, {	-- Plans: Veteran's Silvered Chain Helm (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251375, {	-- Plans: Veteran's Silvered Chain Leggings (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251370, {	-- Plans: Veteran's Silvered Chain Shirt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
		}, {	-- Friendly
			i(251422, {	-- Plans: Justicar's Gauntlet (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251432, {	-- Plans: Justicar's Pauldrons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251418, {	-- Plans: Officer's Gauntlet (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251428, {	-- Plans: Officer's Pauldrons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251421, {	-- Plans: Prefect's Gauntlet (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251431, {	-- Plans: Prefect's Pauldrons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251419, {	-- Plans: Sentinel's Gauntlet (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251429, {	-- Plans: Sentinel's Pauldrons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251420, {	-- Plans: Warder's Gauntlet (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251430, {	-- Plans: Warder's Pauldrons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
		}, {	-- Honored
			i(251447, {	-- Plans: Enriched Thorium Breastplate (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(251449, {	-- Plans: Enriched Thorium Helm (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(251448, {	-- Plans: Enriched Thorium Leggings (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(251417, {	-- Plans: Justicar's Sabatons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251427, {	-- Plans: Justicar's Waistguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251437, {	-- Plans: Justicar's Wristguards (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251471, {	-- Plans: Legionite Glaive (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(251413, {	-- Plans: Officer's Sabatons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251423, {	-- Plans: Officer's Waistguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251433, {	-- Plans: Officer's Wristguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251416, {	-- Plans: Prefect's Sabatons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251426, {	-- Plans: Prefect's Waistguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251436, {	-- Plans: Prefect's Wristguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251414, {	-- Plans: Sentinel's Sabatons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251424, {	-- Plans: Sentinel's Waistguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251434, {	-- Plans: Sentinel's Wristguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251466, {	-- Plans: Thorium Cestus (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251465, {	-- Plans: Thorium Greatmace (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251415, {	-- Plans: Warder's Sabatons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251425, {	-- Plans: Warder's Waistguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251435, {	-- Plans: Warder's Wristguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
		}, {	-- Revered
		}, {	-- Exalted
		},
	});
	MERCHANTS_FAVOR_RECIPES_HORDE = bubbleDownClassicRep(DUROTAR_SUPPLY_AND_LOGISTICS, {
		{	-- Neutral
			i(271622, {	-- Blacksmithing Certification
				cost = {{ "c", MERCHANTS_FAVOR, 1000 }},
			}),
			i(251358, {	-- Plans: Acolyte's Boots (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251368, {	-- Plans: Acolyte's Chain Belt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251363, {	-- Plans: Acolyte's Gloves (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251383, {	-- Plans: Acolyte's Silvered Chain Helm (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251378, {	-- Plans: Acolyte's Silvered Chain Leggings (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251373, {	-- Plans: Acolyte's Silvered Chain Shirt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251369, {	-- Plans: Crusader's Chain Belt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251359, {	-- Plans: Crusader's Boots (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251364, {	-- Plans: Crusader's Gloves (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251384, {	-- Plans: Crusader's Silvered Chain Helm (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251379, {	-- Plans: Crusader's Silvered Chain Leggings (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251374, {	-- Plans: Crusader's Silvered Chain Shirt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251356, {	-- Plans: Guard's Boots (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251366, {	-- Plans: Guard's Chain Belt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251361, {	-- Plans: Guard's Gloves (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251381, {	-- Plans: Guard's Silvered Chain Helm (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251376, {	-- Plans: Guard's Silvered Chain Leggings (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251371, {	-- Plans: Guard's Silvered Chain Shirt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251357, {	-- Plans: Protector's Boots (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251367, {	-- Plans: Protector's Chain Belt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251362, {	-- Plans: Protector's Gloves (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251382, {	-- Plans: Protector's Silvered Chain Helm (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251377, {	-- Plans: Protector's Silvered Chain Leggings (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251372, {	-- Plans: Protector's Silvered Chain Shirt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251355, {	-- Plans: Veteran's Boots (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251365, {	-- Plans: Veteran's Chain Belt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251360, {	-- Plans: Veteran's Gloves (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251380, {	-- Plans: Veteran's Silvered Chain Helm (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251375, {	-- Plans: Veteran's Silvered Chain Leggings (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
			i(251370, {	-- Plans: Veteran's Silvered Chain Shirt (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 30 }},
			}),
		}, {	-- Friendly
			i(251422, {	-- Plans: Justicar's Gauntlet (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251432, {	-- Plans: Justicar's Pauldrons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251418, {	-- Plans: Officer's Gauntlet (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251428, {	-- Plans: Officer's Pauldrons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251421, {	-- Plans: Prefect's Gauntlet (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251431, {	-- Plans: Prefect's Pauldrons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251419, {	-- Plans: Sentinel's Gauntlet (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251429, {	-- Plans: Sentinel's Pauldrons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251420, {	-- Plans: Warder's Gauntlet (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
			i(251430, {	-- Plans: Warder's Pauldrons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 60 }},
			}),
		}, {	-- Honored
			i(251447, {	-- Plans: Enriched Thorium Breastplate (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(251449, {	-- Plans: Enriched Thorium Helm (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(251448, {	-- Plans: Enriched Thorium Leggings (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(251417, {	-- Plans: Justicar's Sabatons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251427, {	-- Plans: Justicar's Waistguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251437, {	-- Plans: Justicar's Wristguards (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251471, {	-- Plans: Legionite Glaive (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 120 }},
			}),
			i(251413, {	-- Plans: Officer's Sabatons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251423, {	-- Plans: Officer's Waistguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251433, {	-- Plans: Officer's Wristguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251416, {	-- Plans: Prefect's Sabatons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251426, {	-- Plans: Prefect's Waistguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251436, {	-- Plans: Prefect's Wristguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251414, {	-- Plans: Sentinel's Sabatons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251424, {	-- Plans: Sentinel's Waistguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251434, {	-- Plans: Sentinel's Wristguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251466, {	-- Plans: Thorium Cestus (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251465, {	-- Plans: Thorium Greatmace (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251415, {	-- Plans: Warder's Sabatons (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251425, {	-- Plans: Warder's Waistguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
			i(251435, {	-- Plans: Warder's Wristguard (RECIPE!)
				cost = {{ "c", MERCHANTS_FAVOR, 90}},
			}),
		}, {	-- Revered
		}, {	-- Exalted
		},
	});
};
