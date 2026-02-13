--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

MIDSUMMER_FIRE_FESTIVAL_HEADER = createHeader({
	readable = "Midsummer Fire Festival",
	constant = "MIDSUMMER_FIRE_FESTIVAL_HEADER",
	icon = [[~_.asset("Holiday_Midsummer")]],
	eventID = EVENTS.MIDSUMMER_FIRE_FESTIVAL,
	-- #if BEFORE WRATH
	eventSchedule = {
		1,	-- Recurring
		6, 21, 10, 0,	-- 06/21 at 10:00 AM
		7, 5, 10, 0		-- 07/05 at 10:00 AM
	},
	-- #endif
	text = {
		en = "Midsummer Fire Festival",	-- Category 161 is "Midsummer", perhaps this is fine to use instead?
		de = "Sonnenwendfest",
		es = "Festival del Fuego del Solsticio de Verano",
		mx = "Festival del Fuego del Solsticio de Verano",
		fr = "Fête du Feu du solstice d’été",
		it = "Fuochi di Mezza Estate",
		ko = "한여름 불꽃축제",
		pt = "Festival do Fogo do Solstício",
		ru = "Огненный Солнцеворот",
		cn = "仲夏火焰节",
		tw = "仲夏火焰節慶",
	},
});
local ALLIANCE_BONFIRE_OBJECT_DATA = {
	readable = "Alliance Bonfire",
	consolidate = true,	-- This tells parser that we need to export this as a group to clean up duplicated data.
	dynamic = true,	-- This tells parser to not include it in the export of ObjectDB when it consolidates it.
	icon = 135777,
	model = 200079,
	text = {
		en = "Alliance Bonfire",
		de = "Freudenfeuer der Allianz",
		es = "Fogata de la Alianza",
		mx = "Fogata de la Alianza",
		fr = "Feu de joie de l'Alliance",
		it = "Falò dell'Alleanza",
		ko = "얼라이언스 화톳불",
		pt = "Fogueira da Aliança",
		ru = "Большой костер Альянса",
		cn = "联盟篝火",
		-- TODO: tw = "",
	},
};
local HORDE_BONFIRE_OBJECT_DATA = {
	readable = "Horde Bonfire",
	consolidate = true,	-- This tells parser that we need to export this as a group to clean up duplicated data.
	dynamic = true,	-- This tells parser to not include it in the export of ObjectDB when it consolidates it.
	icon = 135805,
	model = 200079,
	text = {
		en = "Horde Bonfire",
		de = "Freudenfeuer der Horde",
		es = "Fogata de la Horda",
		mx = "Fogata de la Horda",
		fr = "Feu de joie de la Horde",
		it = "Falò dell'Orda",
		ko = "호드 화톳불",
		pt = "Fogueira da Horda",
		ru = "Большой костер Орды",
		cn = "部落篝火",
		-- TODO: tw = "",
	},
};

local ObjectDB = ObjectDB;
function abonfire(questID, t)
	t = q(questID, t);
	t.races = ALLIANCE_ONLY;
	t.isYearly = true;
	if t.provider and t.provider[1] == "o" then
		ObjectDB[t.provider[2]] = HORDE_BONFIRE_OBJECT_DATA;
	elseif t.providers then
		for i,provider in ipairs(t.providers) do
			if provider and provider[1] == "o" then
				ObjectDB[provider[2]] = HORDE_BONFIRE_OBJECT_DATA;
			end
		end
	end
	return t;
end
function hbonfire(questID, t)
	t = q(questID, t);
	t.races = HORDE_ONLY;
	t.isYearly = true;
	if t.provider and t.provider[1] == "o" then
		ObjectDB[t.provider[2]] = ALLIANCE_BONFIRE_OBJECT_DATA;
	elseif t.providers then
		for i,provider in ipairs(t.providers) do
			if provider and provider[1] == "o" then
				ObjectDB[provider[2]] = ALLIANCE_BONFIRE_OBJECT_DATA;
			end
		end
	end
	return t;
end
function honortheflame(questID, t)
	t = q(questID, t);
	t.isYearly = true;
	return t;
end

local EARTHEN_RING_ELDER_ID = 26221;	-- Earthen Ring Elder
local EARTHEN_RING_ELDER_COORDS = {
	-- #if BEFORE DF
	{ 49.4, 72.0, STORMWIND_CITY },
	-- #else
	{ 47.8, 72.1, STORMWIND_CITY },	-- Trading post moved vendor
	-- #endif
	{ 47.2, 37.6, ORGRIMMAR },
	{ 64.8, 27.4, IRONFORGE },
	{ 21.4, 24.4, THUNDER_BLUFF },
	-- #if AFTER CATA
	{ 62.2, 49.2, DARNASSUS },
	-- #else
	{ 56.2, 92.2, TELDRASSIL },
	-- #endif
	{ 67.0, 13.0, UNDERCITY },
	{ 43.2, 25.8, THE_EXODAR },
	{ 68.8, 42.6, SILVERMOON_CITY },
	{ 60.4, 30.8, SHATTRATH_CITY },
};

local FESTIVAL_FLAMEKEEPER_ID = 16788;	-- Festival Flamekeeper
local FESTIVAL_FLAMEKEEPER_COORDS = {
	{ 38.5, 61.1, STORMWIND_CITY },
	{ 63.6, 24.7, IRONFORGE },
	{ 56.5, 92.0, TELDRASSIL },
	{ 21.6, 26.2, THUNDER_BLUFF },
	{ 62.1, 66.8, TIRISFAL_GLADES },
	{ 46.2, 37.7, ORGRIMMAR },
};

local FESTIVAL_MASTER_FIRE_EATER_ID = 25975;	-- Master Fire Eater
local FESTIVAL_MASTER_FIRE_EATER_COORDS = {
	-- #if AFTER CATA
	{ 63.0, 47.6, DARNASSUS },
	{ 49.8, 72.0, STORMWIND_CITY },
	-- #elseif AFTER WRATH
	{ 50.1, 72.6, STORMWIND_CITY },
	-- #else
	{ 50.1, 72.6, STORMWIND_CITY },
	-- #endif
	{ 65.2, 25.4, IRONFORGE },
	-- #if BEFORE CATA
	{ 56.6, 92.0, TELDRASSIL },
	-- #endif
	{ 41.2, 24.4, THE_EXODAR },
};

local FESTIVAL_MASTER_FLAME_EATER_ID = 26113;	-- Master Flame Eater
local FESTIVAL_MASTER_FLAME_EATER_COORDS = {
	{ 46.6, 37.2, ORGRIMMAR },
	{ 21.2, 26.2, THUNDER_BLUFF },
	{ 68.6, 8.00, UNDERCITY },
	{ 69.6, 42.4, SILVERMOON_CITY },
};

local FESTIVAL_LOREMASTER_ID = 16817;	-- Festival Loremaster
local FESTIVAL_LOREMASTER_COORDS = {
	-- #if AFTER CATA
	{ 49.6, 72.0, STORMWIND_CITY },
	{ 64.0, 25.8, IRONFORGE },
	{ 62.2, 48.6, DARNASSUS },
	-- #else
	{ 38.5, 61.1, STORMWIND_CITY },
	{ 63.6, 24.7, IRONFORGE },
	{ 56.6, 92.3, TELDRASSIL },
	-- #endif
	-- #if AFTER TBC
	{ 61.4, 31.9, SHATTRATH_CITY },
	{ 41.6, 25.3, THE_EXODAR },
	-- #endif
};

local FESTIVAL_TALESPINNER_ID = 16818;	-- Festival Talespinner
local FESTIVAL_TALESPINNER_COORDS = {
	-- #if AFTER CATA
	{ 47.8, 38.4, ORGRIMMAR },
	{ 21.4, 27.8, THUNDER_BLUFF },
	-- #else
	{ 46.8, 38.0, ORGRIMMAR },
	{ 21.3, 26.4, THUNDER_BLUFF },
	-- #endif
	{ 67.6, 8.3, UNDERCITY },
	-- #if AFTER TBC
	{ 62.2, 32.0, SHATTRATH_CITY },
	{ 69.8, 43.0, SILVERMOON_CITY },
	-- #endif
};

-- #if AFTER WRATH
local FLAME_STEAL_LEVEL_REQUIREMENT = 1;	-- Level requirement reduced to 1 after Wrath. (haha have fun with that!)
-- #else
local FLAME_STEAL_LEVEL_REQUIREMENT = 50;
-- #endif
local FLAME_STEAL_REWARDS = {
	i(23247),	-- Burning Blossom x25
	i(23211),	-- Toasted Smorc
	i(23326),	-- Midsummer Sausage
	i(23327),	-- Fire-toasted Bun
	i(23435),	-- Elderberry Pie
	-- #if AFTER WRATH
	i(23246),	-- Fiery Festival Brew
	i(34684),	-- Handful of Summer Petals
	-- #endif
};

local MERCHANT_GROUPS = {
	i(122338, {	-- Ancient Heirloom Armor Casing
		["cost"] = { { "i", 23247, 350 } },	-- Burning Blossom
		["timeline"] = { ADDED_6_1_0 },
	}),
	i(167731, {	-- Battle-Hardened Heirloom Armor Casing
		["cost"] = { { "i", 23247, 600 } },	-- Burning Blossom
		["timeline"] = { ADDED_8_1_5 },
	}),
	i(187997, {	-- Eternal Heirloom Armor Casing
		["cost"] = { { "i", 23247, 600 } },	-- Burning Blossom
		["timeline"] = { ADDED_9_1_5 },
	}),
	i(122340, {	-- Timeworn Heirloom Armor Casing
		["cost"] = { { "i", 23247, 600 } },	-- Burning Blossom
		["timeline"] = { ADDED_6_1_0 },
	}),
	i(151614, {	-- Weathered Heirloom Armor Casing
		["cost"] = { { "i", 23247, 600 } },	-- Burning Blossom
		["timeline"] = { ADDED_7_2_5 },
	}),
	i(116439, {	-- Blazing Cindercrawler (PET!)
		["cost"] = { { "i", 23247, 350 } },	-- Burning Blossom
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(34686, {	-- Brazier of Dancing Flames (TOY!)
		["cost"] = { { "i", 23247, 350 } },	-- Burning Blossom
		["timeline"] = { ADDED_2_4_0 },
	}),
	i(116440, {	-- Burning Defender's Medallion (TOY!)
		["cost"] = { { "i", 23247, 500 } },	-- Burning Blossom
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(116435, {	-- Cozy Bonfire (TOY!)
		["cost"] = { { "i", 23247, 350 } },	-- Burning Blossom
		["timeline"] = { ADDED_6_0_2 },
	}),
	i(166746, {	-- Fire Eater's Hearthstone (TOY!)
		["cost"] = { { "i", 23247, 300 } },	-- Burning Blossom
		["timeline"] = { ADDED_8_1_5 },
	}),
	i(188701, {	-- Fire Festival Batons (TOY!)
		["cost"] = { { "i", 23247, 50 } },	-- Burning Blossom
		["timeline"] = { ADDED_9_2_0 },
	}),
	i(206038, {	-- Flamin' Ring of Flashiness (TOY!)
		["cost"] = { { "i", 23247, 500 } },	-- Burning Blossom
		["timeline"] = { ADDED_10_1_0 },
	}),
	i(242742, {	-- Grand Belt of the Fire Festival (COSMETIC!)
		["cost"] = { { "i", 23247, 150 } },	-- Burning Blossom
		["timeline"] = { ADDED_11_1_7 },
	}),
	i(242740, {	-- Grand Helm of the Fire Festival (COSMETIC!)
		["cost"] = { { "i", 23247, 350 } },	-- Burning Blossom
		["timeline"] = { ADDED_11_1_7 },
	}),
	i(242741, {	-- Grand Mantle of the Fire Festival (COSMETIC!)
		["cost"] = { { "i", 23247, 350 } },	-- Burning Blossom
		["timeline"] = { ADDED_11_1_7 },
	}),
	i(74278, {	-- Helm of the Fire Festival
		["cost"] = { { "i", 23247, 350 } },	-- Burning Blossom
		["timeline"] = { ADDED_4_3_0 },
	}),
	i(188699, {	-- Insulated Dancing Insoles (TOY!)
		["cost"] = { { "i", 23247, 100 } },	-- Burning Blossom
		["timeline"] = { ADDED_9_2_0 },
	}),
	i(141714, {	-- Igneous Flameling (PET!)
		["cost"] = { { "i", 23247, 350 } },	-- Burning Blossom
		["timeline"] = { ADDED_7_1_0 },
	}),
	i(220787, {	-- Mantle of Midsummer
		["cost"] = { { "i", 23247, 350 } },	-- Burning Blossom
		["timeline"] = { ADDED_10_2_7 },
	}),
	i(220785, {	-- Midsummer Safeguard
		["cost"] = { { "i", 23247, 350 } },	-- Burning Blossom
		["timeline"] = { ADDED_10_2_7 },
	}),
	i(141649, {	-- Set of Matches (TOY!)
		["cost"] = { { "i", 23247, 500 } },	-- Burning Blossom
		["timeline"] = { ADDED_7_1_0 },
	}),
	i(188695, {	-- Summer Cranial Skillet (TOY!)
		["cost"] = { { "i", 23247, 150 } },	-- Burning Blossom
		["timeline"] = { ADDED_9_2_0 },
	}),
	-- #if AFTER 2.4.0.7994
	-- This item was originally exclusively available as a quest reward.
	i(23083, {	-- Captured Flame (PET!)
		["cost"] = { { "i", 23247, 350 } },	-- Burning Blossom
	}),
	-- #endif
	-- #if AFTER 2.4.0.7994
	-- This item was originally exclusively available as a quest reward.
	i(23324, {	-- Mantle of the Fire Festival
		["cost"] = { { "i", 23247, 100 } },	-- Burning Blossom
	}),
	-- #endif
	i(34685, {	-- Vestment of Summer
		["cost"] = { { "i", 23247, 100 } },	-- Burning Blossom
		["timeline"] = { ADDED_2_4_0 },
	}),
	i(34683, {	-- Sandals of Summer
		["cost"] = { { "i", 23247, 200 } },	-- Burning Blossom
		["timeline"] = { ADDED_2_4_0 },
	}),
	i(34599, {	-- Juggling Torch
		-- #if AFTER WRATH
		["description"] = "You will need 10 of these torches to complete the |cffffff00Torch Juggler|r achievement.",
		-- #endif
		["cost"] = { { "i", 23247, 5 } },	-- Burning Blossom
		["timeline"] = { ADDED_2_4_0 },
	}),
	i(23215, {	-- Bag of Smorc Ingredients
		["cost"] = { { "i", 23247, 5 } },	-- Burning Blossom
		["timeline"] = { ADDED_2_4_0 },
	}),
	-- #if AFTER 2.4.0.7994
	i(23435, {	-- Elderberry Pie
		["cost"] = { { "i", 23247, 5 } },	-- Burning Blossom
	}),
	i(23327, {	-- Fire-Toasted Bun
		["cost"] = { { "i", 23247, 5 } },	-- Burning Blossom
	}),
	i(23326, {	-- Midsummer Sausage
		["cost"] = { { "i", 23247, 5 } },	-- Burning Blossom
	}),
	i(23211, {	-- Toasted Smorc
		["cost"] = { { "i", 23247, 5 } },	-- Burning Blossom
	}),
	i(23246, {	-- Fiery Festival Brew
		["cost"] = { { "i", 23247, 5 } },	-- Burning Blossom
	}),
	-- #endif
	i(34684, {	-- Handful of Summer Petals
		["cost"] = { { "i", 23247, 2 } },	-- Burning Blossom
		["timeline"] = { ADDED_2_4_0 },
	}),
};

local HUGE_SNOWBALL = i(35557);	-- Huge Snowball

root(ROOTS.Holidays, applyevent(EVENTS.MIDSUMMER_FIRE_FESTIVAL, n(MIDSUMMER_FIRE_FESTIVAL_HEADER, {
	n(25740, {	-- Ahune
		-- #if AFTER WRATH
		["description"] = "You can loot one satchel per character per day by queueing for 'The Frost Lord Ahune' via the Dungeon Finder.",
		-- #else
		["questID"] = 11691,	-- Summon Ahune (Daily) [TODO: Check if this is the same quest ID for the dungeon finder too]
		["description"] = "Ahune is a frost elemental in Neptulon's service. The Twilight's Hammer planned to have him battle Ragnaros to start an elemental war on Azeroth.",
		-- #endif
		["maps"] = { COILFANG_RESERVOIR_SLAVE_PENS },
		["timeline"] = { ADDED_2_4_0 },
		["provider"] = { "o", 188192 },	-- Ice Chest
		["isDaily"] = true,
		["groups"] = {
			ach(263, {	-- Ice the Frost Lord
				["timeline"] = { ADDED_3_0_2 },
			}),
			i(149753, {	-- Knapsack of Chilled Goods [Uncommon Quality]
				["timeline"] = { ADDED_7_2_5 },
				["groups"] = {
					i(117373, {	-- Frostscythe of Lord Ahune
						["timeline"] = { ADDED_6_0_2 },
					}),
				},
			}),
			i(117394, {	-- Satchel of Chilled Goods [Epic Quality]
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(117373, {	-- Frostscythe of Lord Ahune
						["timeline"] = { ADDED_6_0_2 },
					}),
					i(53641, {	-- Frigid Frostling (PET!)
						["timeline"] = { ADDED_3_3_3 },
					}),
					i(138838, {	-- Illusion: Deathfrost (ILLUSION!)
						["timeline"] = { ADDED_7_0_3 },
					}),
					hqt(83134, {	-- Has rolled for Ahune Special Loot (Daily Accountwide)
						["name"] = "Has rolled for Ahune Special Loot (Daily Accountwide)",
						["description"] = "Items under this group only have a chance to drop on your first kill per day for your warband.",
						["timeline"] = { ADDED_10_2_7 },
						["isDaily"] = true,
						["groups"] = {
							i(224163, {	-- Cliffside Wylderdrake: Midsummer Fire Festival Armor (MM!)
								["timeline"] = { ADDED_10_2_7 },
							}),
							i(244356, {	-- Crown of the Frost Lord (COSMETIC!)
								["timeline"] = { ADDED_11_1_7 },
							}),
							i(244422, {	-- Glazfuris, Scythe of the Deep Chill (COSMETIC!)
								["timeline"] = { ADDED_11_1_7 },
							}),
							i(246571, {	-- Glazfuris, Spire of the Deep Chill (COSMETIC!)
								["timeline"] = { ADDED_11_1_7 },
							}),
							i(244423, {	-- Rethfuras, Scorched Scythe of Cinders (COSMETIC!)
								["timeline"] = { ADDED_11_1_7 },
							}),
							i(246570, {	-- Rethfuras, Scorched Stave of Cinders (COSMETIC!)
								["timeline"] = { ADDED_11_1_7 },
							}),
						},
					}),
				},
			}),
			i(54536, {	-- Satchel of Chilled Goods
				["timeline"] = { ADDED_3_3_3, REMOVED_6_0_2 },
				["groups"] = {
					i(95426, {	-- Frostscythe of Lord Ahune [Level 90]
						["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
					}),

					-- WOUTER NOTE: Blizzard added 403 ilvl items specific to Cata Classic, probably because Midsummer happened a 2nd time in late Dragon Soul
					-- #if ANYCLASSIC
					i(248747, {	-- Frostscythe of Lord Ahune [Level 85 - ilvl 403]
						["timeline"] = { ADDED_4_4_2, REMOVED_5_0_4 },
					}),
					-- #endif

					i(69771, {	-- Frostscythe of Lord Ahune [Level 85]
						["timeline"] = {
							ADDED_4_0_1,
							-- #if ANYCLASSIC
							REMOVED_4_4_2,
							-- #else
							REMOVED_5_0_4,
							-- #endif
						},
					}),
					i(54806, {	-- Frostscythe of Lord Ahune [Level 80]
						["timeline"] = { ADDED_3_3_3, REMOVED_4_0_1 },
					}),
					i(53641),	-- Frigid Frostling (PET!)
				},
			}),
			i(35723, {	-- Shards of Ahune
				["description"] = "This item can be looted and completed once per character.",
				["timeline"] = { ADDED_2_4_0 },
			}),
			i(138838, {	-- Illusion: Deathfrost (ILLUSION!)
				["timeline"] = { ADDED_7_0_3 },
			}),
			applyclassicphase(TBC_PHASE_THREE, i(35498, {["timeline"]={ADDED_2_4_2}})),	-- Formula: Enchant Weapon - Deathfrost (RECIPE!)

			-- #if BEFORE 4.2.0
			-- This item was apparently a drop from Ahune originally, but was removed and added to the Molten Front with 4.2.0.
			-- Between Patch 3.3.3 and 4.2.0 it had no available source.
			i(34955, {	-- Searing Scorchling (PET!)
				["timeline"] = { REMOVED_3_3_3, ADDED_4_2_0 },
			}),
			-- #endif

			-- WoD+ Rewards (Scalable)
			i(117372, {	-- Cloak of the Frigid Winds
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(117374, {	-- Icebound Cloak
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(117375, {	-- Shroud of Winter's Chill
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(117376, {	-- The Frost Lord's Battle Shroud
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(117377, {	-- The Frost Lord's War Cloak
				["timeline"] = { ADDED_6_0_2 },
			}),

			-- Pandaria Rewards
			i(95425, {	-- Cloak of the Frigid Winds [Level 90]
				["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			}),
			i(95427, {	-- Icebound Cloak [Level 90]
				["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			}),
			i(95428, {	-- Shroud of Winter's Chill [Level 90]
				["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			}),
			i(95429, {	-- The Frost Lord's Battle Shroud [Level 90]
				["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			}),
			i(95430, {	-- The Frost Lord's War Cloak [Level 90]
				["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			}),

			-- WOUTER NOTE: Blizzard added 403 ilvl items specific to Cata Classic, probably because Midsummer happened a 2nd time in late Dragon Soul
			-- #if ANYCLASSIC
			i(248751, {	-- Cloak of the Frigid Winds [Level 85]
				["timeline"] = { ADDED_4_4_2, REMOVED_5_0_4 },
			}),
			i(248752, {	-- Icebound Cloak [Level 85]
				["timeline"] = { ADDED_4_4_2, REMOVED_5_0_4 },
			}),
			i(248750, {	-- Shroud of Winter's Chill [Level 85]
				["timeline"] = { ADDED_4_4_2, REMOVED_5_0_4 },
			}),
			i(248749, {	-- The Frost Lord's Battle Shroud [Level 85]
				["timeline"] = { ADDED_4_4_2, REMOVED_5_0_4 },
			}),
			i(248748, {	-- The Frost Lord's War Cloak [Level 85]
				["timeline"] = { ADDED_4_4_2, REMOVED_5_0_4 },
			}),
			-- #endif

			-- Cataclysm Rewards
			i(69769, {	-- Cloak of the Frigid Winds [Level 85]
				["timeline"] = {
					ADDED_4_0_1,
					-- #if ANYCLASSIC
					REMOVED_4_4_2,
					-- #else
					REMOVED_5_0_4,
					-- #endif
				},
			}),
			i(69770, {	-- Icebound Cloak [Level 85]
				["timeline"] = {
					ADDED_4_0_1,
					-- #if ANYCLASSIC
					REMOVED_4_4_2,
					-- #else
					REMOVED_5_0_4,
					-- #endif
				},
			}),
			i(69768, {	-- Shroud of Winter's Chill [Level 85]
				["timeline"] = {
					ADDED_4_0_1,
					-- #if ANYCLASSIC
					REMOVED_4_4_2,
					-- #else
					REMOVED_5_0_4,
					-- #endif
				},
			}),
			i(69767, {	-- The Frost Lord's Battle Shroud [Level 85]
				["timeline"] = {
					ADDED_4_0_1,
					-- #if ANYCLASSIC
					REMOVED_4_4_2,
					-- #else
					REMOVED_5_0_4,
					-- #endif
				},
			}),
			i(69766, {	-- The Frost Lord's War Cloak [Level 85]
				["timeline"] = {
					ADDED_4_0_1,
					-- #if ANYCLASSIC
					REMOVED_4_4_2,
					-- #else
					REMOVED_5_0_4,
					-- #endif
				},
			}),

			i(54805, {	-- Cloak of the Frigid Winds [Level 80]
				["timeline"] = { ADDED_3_3_3, REMOVED_4_0_1 },
			}),
			i(54801, {	-- Icebound Cloak [Level 80]
				["timeline"] = { ADDED_3_3_3, REMOVED_4_0_1 },
			}),
			i(54804, {	-- Shroud of Winter's Chill [Level 80]
				["timeline"] = { ADDED_3_3_3, REMOVED_4_0_1 },
			}),
			i(54803, {	-- The Frost Lord's Battle Shroud [Level 80]
				["timeline"] = { ADDED_3_3_3, REMOVED_4_0_1 },
			}),
			i(54802, {	-- The Frost Lord's War Cloak [Level 80]
				["timeline"] = { ADDED_3_3_3, REMOVED_4_0_1 },
			}),

			-- Original Rewards
			i(35514, {	-- Frostscythe of Lord Ahune [Level 70]
				["timeline"] = { REMOVED_3_3_3 },
			}),
			i(35507, {	-- Amulet of Bitter Hatred [Level 70]
				["timeline"] = { REMOVED_3_3_3 },
			}),
			i(35509, {	-- Amulet of Glacial Tranquility [Level 70]
				["timeline"] = { REMOVED_3_3_3 },
			}),
			i(35508, {	-- Choker of the Arctic Flow [Level 70]
				["timeline"] = { REMOVED_3_3_3 },
			}),
			i(35511, {	-- Hailstone Pendant [Level 70]
				["timeline"] = { REMOVED_3_3_3 },
			}),
			i(35497, {	-- Cloak of the Frigid Winds [Level 70]
				["timeline"] = { REMOVED_3_3_3 },
			}),
			i(35496, {	-- Icebound Cloak [Level 70]
				["timeline"] = { REMOVED_3_3_3 },
			}),
			i(35494, {	-- Shroud of Winter's Chill [Level 70]
				["timeline"] = { REMOVED_3_3_3 },
			}),
			i(35495, {	-- The Frost Lord's War Cloak [Level 70]
				["timeline"] = { REMOVED_3_3_3 },
			}),
			HUGE_SNOWBALL,
		},
	}),
	-- #if AFTER WRATH
	n(ACHIEVEMENTS, {
		n(FACTION_HEADER_ALLIANCE, bubbleDown({ ["races"] = ALLIANCE_ONLY }, {
			ach(1038, {	-- The Flame Warden (Alliance)
				-- Meta Achievement should symlink the contained Achievements from Source
				["sym"] = {{"meta_achievement",
					1034,				-- The Fires of Azeroth (A)
					1035,				-- Desecration of the Horde (A)
					263,				-- Ice the Frost Lord
					271,				-- Burning Hot Pole Dance
					1145,				-- King of the Fire Festival
					272,				-- Torch Juggler
				}},
				["timeline"] = { ADDED_3_0_2 },
				["groups"] = {
					title(44),				-- Flame Warden
				},
			}),
			ach(1035, {	-- Desecration of the Horde (A)
				["sym"] = {{"meta_achievement",
					1028,	-- Extinguishing Eastern Kingdoms (A)
					1029,	-- Extinguishing Kalimdor (A)
					1030,	-- Extinguishing Outland (A)
					-- #if AFTER 4.3.0.15005
					6007,	-- Extinguishing Northrend (A)
					6013,	-- Extinguishing the Cataclysm (A)
					-- #endif
				}},
				["timeline"] = { ADDED_3_0_2 },
			}),
			ach(1034, {	-- The Fires of Azeroth (A)
				["sym"] = {{"meta_achievement",
					1022,	-- Flame Warden of Eastern Kingdoms (A)
					1023,	-- Flame Warden of Kalimdor (A)
					1024,	-- Flame Warden of Outland (A)
					-- #if AFTER 4.3.0.15005
					6008,	-- Flame Warden of Northrend (A)
					6011,	-- Flame Warden of Cataclysm (A)
					-- #endif
				}},
				["timeline"] = { ADDED_3_0_2 },
			}),

			ach(11276, {	-- Extinguishing Draenor (A)
				["timeline"] = { ADDED_7_2_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(1028, {	-- Extinguishing Eastern Kingdoms (A)
				["timeline"] = { ADDED_3_0_2 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(1029, {	-- Extinguishing Kalimdor (A)
				["timeline"] = { ADDED_3_0_2 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(6007, {	-- Extinguishing Northrend (A)
				["timeline"] = { ADDED_4_3_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(1030, {	-- Extinguishing Outland (A)
				["timeline"] = { ADDED_3_0_2 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(8042, {	-- Extinguishing Pandaria (A)
				["timeline"] = { ADDED_5_2_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(6013, {	-- Extinguishing the Cataclysm (A)
				["timeline"] = { ADDED_4_3_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(11278, {	-- Extinguishing the Broken Isles (A)
				["timeline"] = { ADDED_7_2_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(13343, {	-- Extinguishing Zandalar (A)
				["timeline"] = { ADDED_8_1_5 },
				["sym"] = {{ "achievement_criteria" }},
			}),

			ach(6011, {	-- Flame Warden of Cataclysm (A)
				["timeline"] = { ADDED_4_3_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(11283, {	-- Flame Warden of Draenor (A)
				["timeline"] = { ADDED_7_2_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(1022, {	-- Flame Warden of Eastern Kingdoms (A)
				["timeline"] = { ADDED_3_0_2 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(1023, {	-- Flame Warden of Kalimdor (A)
				["timeline"] = { ADDED_3_0_2 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(41631, {	-- Flame Warden of Khaz Algar (A) (automated)
				["timeline"] = { ADDED_11_1_5 },
			}),
			ach(13341, {	-- Flame Warden of Kul Tiras (A)
				["timeline"] = { ADDED_8_1_5 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(6008, {	-- Flame Warden of Northrend (A)
				["timeline"] = { ADDED_4_3_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(1024, {	-- Flame Warden of Outland (A)
				["timeline"] = { ADDED_3_0_2 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(8045, {	-- Flame Warden of Pandaria (A)
				["timeline"] = { ADDED_5_2_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(11280, {	-- Flame Warden of the Broken Isles (A)
				["timeline"] = { ADDED_7_2_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(17737, {	-- Flame Warden of the Dragon Isles (A)
				["timeline"] = { ADDED_10_1_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(41631, {	-- Flame Warden of Khaz Algar (A)
				["timeline"] = { ADDED_11_1_7 },
				["sym"] = {{ "achievement_criteria" }},
			}),
		})),
		n(FACTION_HEADER_HORDE, bubbleDown({ ["races"] = HORDE_ONLY }, {
			ach(1039, {	-- The Flame Keeper (Horde)
				-- Meta Achievement should symlink the contained Achievements from Source
				["sym"] = {{"meta_achievement",
					1036,				-- The Fires of Azeroth (H)
					1037,				-- Desecration of the Alliance (H)
					263,				-- Ice the Frost Lord
					271,				-- Burning Hot Pole Dance
					1145,				-- King of the Fire Festival
					272,				-- Torch Juggler
				}},
				["timeline"] = { ADDED_3_0_2 },
				["groups"] = {
					title(45),				-- Flame Keeper
				},
			}),
			ach(1037, {	-- Desecration of the Alliance (H)
				["sym"] = {{"meta_achievement",
					1031,	-- Extinguishing Eastern Kingdoms (H)
					1032,	-- Extinguishing Kalimdor (H)
					1033,	-- Extinguishing Outland (H)
					-- #if AFTER 4.3.0.15005
					6010,	-- Extinguishing Northrend (H)
					6014,	-- Extinguishing the Cataclysm (H)
					-- #endif
				}},
				["timeline"] = { ADDED_3_0_2 },
			}),
			ach(1036, {	-- The Fires of Azeroth (H)
				["sym"] = {{"meta_achievement",
					1025,	-- Flame Keeper of Eastern Kingdoms (H)
					1026,	-- Flame Keeper of Kalimdor (H)
					1027,	-- Flame Keeper of Outland (H)
					-- #if AFTER 4.3.0.15005
					6009,	-- Flame Keeper of Northrend (H)
					6012,	-- Flame Keeper of Cataclysm (H)
					-- #endif
				}},
				["timeline"] = { ADDED_3_0_2 },
			}),

			ach(11277, {	-- Extinguishing Draenor (H)
				["timeline"] = { ADDED_7_2_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(1031, {	-- Extinguishing Eastern Kingdoms (H)
				["timeline"] = { ADDED_3_0_2 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(1032, {	-- Extinguishing Kalimdor (H)
				["timeline"] = { ADDED_3_0_2 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(13342, {	-- Extinguishing Kul Tiras (H)
				["timeline"] = { ADDED_8_1_5 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(6010, {	-- Extinguishing Northrend (H)
				["timeline"] = { ADDED_4_3_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(1033, {	-- Extinguishing Outland (H)
				["timeline"] = { ADDED_3_0_2 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(8043, {	-- Extinguishing Pandaria (H)
				["timeline"] = { ADDED_5_2_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(11279, {	-- Extinguishing the Broken Isles (H)
				["timeline"] = { ADDED_7_2_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(6014, {	-- Extinguishing the Cataclysm (H)
				["timeline"] = { ADDED_4_3_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),

			ach(6012, {	-- Flame Keeper of Cataclysm (H)
				["timeline"] = { ADDED_4_3_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(11284, {	-- Flame Keeper of Draenor (H)
				["timeline"] = { ADDED_7_2_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(1025, {	-- Flame Keeper of Eastern Kingdoms (H)
				["timeline"] = { ADDED_3_0_2 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(1026, {	-- Flame Keeper of Kalimdor (H)
				["timeline"] = { ADDED_3_0_2 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(41632, {	-- Flame Keeper of Khaz Algar (H) (automated)
				["timeline"] = { ADDED_11_1_5 },
			}),
			ach(6009, {	-- Flame Keeper of Northrend (H)
				["timeline"] = { ADDED_4_3_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(1027, {	-- Flame Keeper of Outland (H)
				["timeline"] = { ADDED_3_0_2 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(8044, {	-- Flame Keeper of Pandaria (H)
				["timeline"] = { ADDED_5_2_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(11282, {	-- Flame Keeper of the Broken Isles (H)
				["timeline"] = { ADDED_7_2_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(17738, {	-- Flame Keeper of the Dragon Isles (H)
				["timeline"] = { ADDED_10_1_0 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(13340, {	-- Flame Keeper of Zandalar (H)
				["timeline"] = { ADDED_8_1_5 },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(41632, {	-- Flame Keeper of Khaz Algar (A)
				["timeline"] = { ADDED_11_1_7 },
				["sym"] = {{ "achievement_criteria" }},
			}),
		})),
		ach(271, {	-- Burning Hot Pole Dance
			["description"] = "You need the Mantle of the Fire Festival, Vestment of Summer, and the Sandals of Summer to complete the Midsummer set.",
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(263, {	-- Ice the Frost Lord
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(1145, {	-- King of the Fire Festival
			["sourceQuests"] = { 9365, 9339 },	-- A Thief's Reward (A, H)
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(272, {	-- Torch Juggler
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { NORTHREND_DALARAN },
		}),
	}),
	-- #endif
	n(QUESTS, {
		q(9319, {	-- A Light in Dark Places
			["qg"] = FESTIVAL_FLAMEKEEPER_ID,
			-- #if BEFORE TBC
			["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
			["maps"] = {
				DIRE_MAUL,
				BLACKROCK_SPIRE,
				LBRS_TAZZALOR,
				LBRS_SKITTERWEB_TUNNELS,
				LBRS_HORDEMAR_CITY,
				LBRS_HALL_OF_BLACKHAND,
				LBRS_HALYCONS_LAIR,
				LBRS_CHAMBER_OF_BATTLE,
				STRATHOLME,
				SCHOLOMANCE,
			},
			-- #endif
			["timeline"] = { REMOVED_2_4_0 },
			["isYearly"] = true,	-- NOTE: Crieve tested the flags for this quest with the ATT guild, it was not reset. (meaning it's a yearly repeatable)
			["lvl"] = lvlsquish(50, 1, 1),
			["groups"] = {
				-- #if BEFORE TBC
				objective(1),	-- Flame of Dire Maul
				objective(2),	-- Flame of Blackrock Spire
				objective(3),	-- Flame of Stratholme
				objective(4),	-- Flame of the Scholomance
				-- #endif
				-- #if BEFORE 2.4.0.7994
				i(23083, {	-- Captured Flame (PET!)
					["timeline"] = { ADDED_1_11_1 },
				}),
				-- #endif
				i(23247),	-- Burning Blossom
			},
		}),
		q(9386, {	-- A Light in Dark Places
			["sourceQuest"] = 9319,	-- A Light in Dark Places
			["qg"] = FESTIVAL_FLAMEKEEPER_ID,
			-- #if BEFORE TBC
			["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
			["maps"] = {
				DIRE_MAUL,
				BLACKROCK_SPIRE,
				LBRS_TAZZALOR,
				LBRS_SKITTERWEB_TUNNELS,
				LBRS_HORDEMAR_CITY,
				LBRS_HALL_OF_BLACKHAND,
				LBRS_HALYCONS_LAIR,
				LBRS_CHAMBER_OF_BATTLE,
				STRATHOLME,
				SCHOLOMANCE,
			},
			-- #endif
			["timeline"] = { REMOVED_2_4_0 },
			["isYearly"] = true,
			["lvl"] = lvlsquish(50, 1, 1),
			["groups"] = {
				-- #if BEFORE TBC
				objective(1),	-- Flame of Dire Maul
				objective(2),	-- Flame of Blackrock Spire
				objective(3),	-- Flame of Stratholme
				objective(4),	-- Flame of the Scholomance
				-- #endif
				i(23247),	-- Burning Blossom
			},
		}),
		q(9365, {	-- A Thief's Reward (A)
			["sourceQuests"] = {
				9324,	-- Stealing Orgrimmar's Flame
				9325,	-- Stealing Thunder Bluff's Flame
				-- #if AFTER TBC
				11935,	-- Stealing Silvermoon's Flame
				-- #endif
				9326,	-- Stealing the Undercity's Flame
			},
			["qg"] = FESTIVAL_LOREMASTER_ID,
			["coords"] = FESTIVAL_LOREMASTER_COORDS,
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(50, 1, 1),
			["groups"] = {
				i(23323),	-- Crown of the Fire Festival
			},
		}),
		q(9339, {	-- A Thief's Reward (H)
			["sourceQuests"] = {
				9332,	-- Stealing Darnassus's Flame
				9331,	-- Stealing Ironforge's Flame
				9330,	-- Stealing Stormwind's Flame
				-- #if AFTER TBC
				11933,	-- Stealing the Exodar's Flame
				-- #endif
			},
			["qg"] = FESTIVAL_TALESPINNER_ID,
			["coords"] = FESTIVAL_TALESPINNER_COORDS,
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(50, 1, 1),
			["groups"] = {
				i(23323),	-- Crown of the Fire Festival
			},
		}),
		q(11696, {	-- Ahune is Here!
			["sourceQuest"] = 11955,	-- Ahune, the Frost Lord
			["qg"] = 25710,	-- Numa Cloudsister
			["timeline"] = { ADDED_2_4_0, REMOVED_4_0_1 },
			["maps"] = { COILFANG_RESERVOIR_SLAVE_PENS },
			["lvl"] = lvlsquish(65, 15, 15),
		}),
		q(11955, {	-- Ahune, the Frost Lord
			["sourceQuest"] = 11891,	-- An Innocent Disguise
			["qg"] = EARTHEN_RING_ELDER_ID,
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { ADDED_2_4_0, REMOVED_4_0_1 },
			["isBreadcrumb"] = true,
			["lvl"] = lvlsquish(65, 15, 15),
		}),
		q(11891, {	-- An Innocent Disguise
			["description"] = "Use your Totemic Beacon to summon the quest giver.",
			["sourceQuest"] = 11886,	-- Unusual Activity
			["qg"] = 25324,	-- Earthen Ring Guide
			["coord"] = { 10.2, 15.3, ASHENVALE },
			["timeline"] = { ADDED_2_4_0 },
			["cost"] = { { "i", 35828, 1 } },	-- Totemic Beacon
			["lvl"] = lvlsquish(16, 1, 1),
			["groups"] = {
				objective(1, {	-- Listen to the plan of the Twilight Cultists
					["provider"] = { "i", 35237 },	-- Orb of the Crawler
					["coord"] = { 9.1, 12.5, ASHENVALE },
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(9389, {	-- Flickering Flames in Eastern Kingdoms
			-- #if BEFORE TBC
			["coords"] = appendGroups(FESTIVAL_TALESPINNER_COORDS, appendGroups(FESTIVAL_LOREMASTER_COORDS, {})),
			["maps"] = {
				HILLSBRAD_FOOTHILLS,
				SILVERPINE_FOREST,
				WESTFALL,
				WETLANDS
			},
			["icon"] = 134467,
			-- #endif
			["qgs"] = {
				FESTIVAL_LOREMASTER_ID,
				FESTIVAL_TALESPINNER_ID,
			},
			["timeline"] = { REMOVED_2_4_0 },
			["lvl"] = 1,
			-- #if BEFORE TBC
			["groups"] = {
				objective(1, {	-- Flame of Hillsbrad
					["coord"] = { 54.2, 34.9, HILLSBRAD_FOOTHILLS },
				}),
				objective(2, {	-- Flame of Silverpine
					["coord"] = { 54.3, 69.6, SILVERPINE_FOREST },
				}),
				objective(3, {	-- Flame of Westfall
					["coord"] = { 33.2, 80.4, WESTFALL },
				}),
				objective(4, {	-- Flame of the Wetlands
					["coord"] = { 51.1, 17.2, WETLANDS },
				}),
				i(23211),	-- Toasted Smorc
				i(23326),	-- Midsummer Sausage
				i(23327),	-- Fire-toasted Bun
				i(23435),	-- Elderberry Pie
			},
			-- #endif
		}),
		q(9388, {	-- Flickering Flames in Kalimdor
			-- #if BEFORE TBC
			["coords"] = appendGroups(FESTIVAL_TALESPINNER_COORDS, appendGroups(FESTIVAL_LOREMASTER_COORDS, {})),
			["maps"] = {
				ASHENVALE,
				THE_BARRENS,
				DARKSHORE,
				STONETALON_MOUNTAINS,
			},
			["icon"] = 134467,
			-- #endif
			["qgs"] = {
				FESTIVAL_LOREMASTER_ID,
				FESTIVAL_TALESPINNER_ID,
			},
			["timeline"] = { REMOVED_2_4_0 },
			["lvl"] = 1,
			-- #if BEFORE TBC
			["groups"] = {
				objective(1, {	-- Flame of Ashenvale
					["coord"] = { 64.7, 71.7, ASHENVALE },
				}),
				objective(2, {	-- Flame of the Barrens
					["coord"] = { 58.9, 37.4, THE_BARRENS },
				}),
				objective(3, {	-- Flame of Darkshore
					["coord"] = { 41.4, 90.9, DARKSHORE },
				}),
				objective(4, {	-- Flame of Stonetalon
					["coord"] = { 59.6, 70.0, STONETALON_MOUNTAINS },
				}),
				i(23211),	-- Toasted Smorc
				i(23326),	-- Midsummer Sausage
				i(23327),	-- Fire-toasted Bun
				i(23435),	-- Elderberry Pie
			},
			-- #endif
		}),
		q(11964, {	-- Incense for the Summer Scorchlings (A)
			["qg"] = FESTIVAL_LOREMASTER_ID,
			["coords"] = FESTIVAL_LOREMASTER_COORDS,
			["timeline"] = { ADDED_2_4_0 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(23247),	-- Burning Blossom
				i(35725),	-- Summer Incense (QI!)
			},
		}),
		q(11966, {	-- Incense for the Festival Scorchlings (H)
			["qg"] = FESTIVAL_TALESPINNER_ID,
			["coords"] = FESTIVAL_TALESPINNER_COORDS,
			["timeline"] = { ADDED_2_4_0 },
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(23247),	-- Burning Blossom
				i(35725),	-- Summer Incense (QI!)
			},
		}),
		q(29092, {	-- Inform the Elder (A)
			["description"] = "Use your Totemic Beacon to summon the quest giver.",
			["sourceQuest"] = 11891,	-- An Innocent Disguise
			["qg"] = 25324,	-- Earthen Ring Guide
			["coord"] = { 16.0, 20.8, ASHENVALE },
			["timeline"] = { ADDED_4_0_1 },
			["cost"] = { { "i", 35828, 1 } },	-- Totemic Beacon
			["races"] = ALLIANCE_ONLY,
			["lvl"] = lvlsquish(16, 1, 1),
		}),
		q(12012, {	-- Inform the Elder (H)
			["description"] = "Use your Totemic Beacon to summon the quest giver.",
			["sourceQuest"] = 11891,	-- An Innocent Disguise
			["qg"] = 25324,	-- Earthen Ring Guide
			["coord"] = { 16.0, 20.8, ASHENVALE },
			["timeline"] = { ADDED_2_4_0 },
			["cost"] = { { "i", 35828, 1 } },	-- Totemic Beacon
			-- #if AFTER CATA
			-- NOTE: This quest was originally served to both Horde and Alliance, but with Cataclysm, a new version specifically for the Alliance was added.
			["races"] = HORDE_ONLY,
			-- #endif
			["lvl"] = lvlsquish(16, 1, 1),
		}),
		q(11924, {	-- More Torch Catching (A)
			["sourceQuest"] = 11657,	-- Torch Catching (A)
			["qg"] = FESTIVAL_MASTER_FIRE_EATER_ID,
			["coords"] = FESTIVAL_MASTER_FIRE_EATER_COORDS,
			["timeline"] = { ADDED_2_4_0 },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Catch 4 torches in a row.
					["provider"] = { "i", 34833 },	-- Unlit Torches
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11925, {	-- More Torch Catching (H)
			["sourceQuest"] = 11923,	-- Torch Catching (H)
			["qg"] = FESTIVAL_MASTER_FLAME_EATER_ID,
			["coords"] = FESTIVAL_MASTER_FLAME_EATER_COORDS,
			["timeline"] = { ADDED_2_4_0 },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Catch 4 torches in a row.
					["provider"] = { "i", 34833 },	-- Unlit Torches
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11921, {	-- More Torch Tossing (A)
			["sourceQuest"] = 11657,	-- Torch Catching (A)
			["qg"] = FESTIVAL_MASTER_FIRE_EATER_ID,
			["coords"] = FESTIVAL_MASTER_FIRE_EATER_COORDS,
			["timeline"] = { ADDED_2_4_0, REMOVED_10_2_7 },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Hit 8 braziers.
					["provider"] = { "i", 34862 },	-- Practice Torches
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11926, {	-- More Torch Tossing (H)
			["sourceQuest"] = 11923,	-- Torch Catching (H)
			["qg"] = FESTIVAL_MASTER_FLAME_EATER_ID,
			["coords"] = FESTIVAL_MASTER_FLAME_EATER_COORDS,
			["timeline"] = { ADDED_2_4_0, REMOVED_10_2_7 },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Hit 8 braziers.
					["provider"] = { "i", 34862 },	-- Practice Torches
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		{	-- More Torch Tossing
			["allianceQuestData"] = q(82080, {	-- More Torch Tossing (A)
				["sourceQuest"] = 11657,	-- Torch Catching (A)
				["qg"] = FESTIVAL_MASTER_FIRE_EATER_ID,
				["coords"] = FESTIVAL_MASTER_FIRE_EATER_COORDS,
			}),
			["hordeQuestData"] = q(82109, {	-- More Torch Tossing (H)
				["sourceQuest"] = 11923,	-- Torch Catching (H)
				["qg"] = FESTIVAL_MASTER_FLAME_EATER_ID,
				["coords"] = FESTIVAL_MASTER_FLAME_EATER_COORDS,
			}),
			["timeline"] = { ADDED_10_2_7 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Hit 8 braziers.
					["provider"] = { "i", 34862 },	-- Practice Torches
				}),
				i(23247),	-- Burning Blossom
			},
		},
		q(11882, {	-- Playing with Fire (A)
			["qgs"] = {
				25962,	-- Fire Eater (A)
				-- #if AFTER 11.1.7
				240483,	-- Flame Eater
				-- #endif
			},
			-- #if AFTER 11.1.7
			["coord"] = { 47.2, 53.6, DORNOGAL },
			-- #endif
			["timeline"] = { ADDED_2_4_0 },
			["races"] = ALLIANCE_ONLY,
		}),
		q(11915, {	-- Playing with Fire (H)
			["qgs"] = {
				25994,	-- Fire Eater (H)
				-- #if AFTER 11.1.7
				240483,	-- Flame Eater
				-- #endif
			},
			-- #if AFTER 11.1.7
			["coord"] = { 47.2, 53.6, DORNOGAL },
			-- #endif
			["timeline"] = { ADDED_2_4_0 },
			["races"] = HORDE_ONLY,
		}),
		q(11972, {	-- Shards of Ahune
			["altQuests"] = { 11976 },	-- Ice Shards (Never Implemented?)
			["provider"] = { "i", 35723 },	-- Shards of Ahune
			["timeline"] = { ADDED_2_4_0 },
			-- #if BEFORE WRATH
			["lvl"] = 65,
			-- #elseif BEFORE CATA
			["lvl"] = 75,
			-- #elseif BEFORE MOP
			["lvl"] = 75,
			-- #elseif BEFORE WOD
			["lvl"] = 75,
			-- #else
			["lvl"] = 1,	-- Documentation suggests the level requirement was removed with WOD.
			-- #endif
			["groups"] = {
				i(35279),	-- Tabard of Summer Skies
				i(35280),	-- Tabard of Summer Flames
			},
		}),
		q(9332, {	-- Stealing Darnassus's Flame
			["provider"] = { "i", 23184 },	-- Flame of Darnassus (Provided)
			-- #if AFTER CATA
			["coord"] = { 64.1, 46.7, DARNASSUS },
			-- #else
			["coord"] = { 56.6, 92.3, TELDRASSIL },
			["maps"] = { DARNASSUS },
			-- #endif
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(9331, {	-- Stealing Ironforge's Flame
			["provider"] = { "i", 23183 },	-- Flame of Ironforge (Provided)
			["coords"] = {
				-- #if AFTER CATA
				{ 65.2, 24.7, IRONFORGE },
				-- #else
				{ 64.6, 24.8, IRONFORGE },
				-- #endif
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(9324, {	-- Stealing Orgrimmar's Flame
			["provider"] = { "i", 23179 },	-- Flame of Orgrimmar (Provided)
			["coords"] = {
				-- #if AFTER CATA
				{ 46.5, 37.6, ORGRIMMAR },
				-- #else
				{ 46.9, 38.7, ORGRIMMAR },
				-- #endif
			},
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(11935, {	-- Stealing Silvermoon's Flame
			["provider"] = { "i", 35568 },	-- Flame of Silvermoon (Provided)
			["coord"] = { 69.7, 42.7, SILVERMOON_CITY },
			["timeline"] = { ADDED_2_0_1 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(9330, {	-- Stealing Stormwind's Flame
			["provider"] = { "i", 23182 },	-- Flame of Stormwind (Provided)
			["coords"] = {
				-- #if AFTER CATA
				{ 49.8, 72.9, STORMWIND_CITY },
				-- #else
				{ 38.9, 62.3, STORMWIND_CITY },
				-- #endif
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(11933, {	-- Stealing the Exodar's Flame
			["provider"] = { "i", 35569 },	-- Flame of the Exodar (Provided)
			["coord"] = { 40.8, 26.3, THE_EXODAR },
			["timeline"] = { ADDED_2_0_1 },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(9326, {	-- Stealing the Undercity's Flame
			["provider"] = { "i", 23181 },	-- Flame of the Undercity (Provided)
			["coords"] = {
				-- #if AFTER CATA
				{ 68.7, 8.50, UNDERCITY },
				-- #else
				{ 62.6, 66.9, UNDERCITY },
				-- #endif
			},
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(9325, {	-- Stealing Thunder Bluff's Flame
			["provider"] = { "i", 23180 },	-- Flame of Thunder Bluff (Provided)
			["coords"] = {
				-- #if AFTER CATA
				{ 21.9, 27.3, THUNDER_BLUFF },
				-- #else
				{ 21.1, 25.6, THUNDER_BLUFF },
				-- #endif
			},
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
			["groups"] = FLAME_STEAL_REWARDS,
		}),
		q(11917, {	-- Striking Back [Level 22, Ashenvale]	-- The level requirement was removed in 9.0.5, all "Striking Back" quests could be completed daily.
			["sourceQuests"] = {
				12012,	-- Inform the Elder (Both)
				-- #if AFTER CATA
				29092,	-- Inform the Elder (A)
				-- #endif
			},
			["qg"] = EARTHEN_RING_ELDER_ID,
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { ADDED_2_4_0 },
			["maps"] = { ASHENVALE },
			["isDaily"] = true,
			-- #if BEFORE 9.0.5
			["lvl"] = { 16, 25 },
			-- #endif
			["groups"] = {
				objective(1, {	-- Frostwave Lieutenant slain
					["provider"] = { "n", 26116 },	-- Frostwave Lieutenant
					["coord"] = { 9.6, 12.2, ASHENVALE },
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11947, {	-- Striking Back [Level 32, Desolace]
			["sourceQuests"] = {
				12012,	-- Inform the Elder (Both)
				-- #if AFTER CATA
				29092,	-- Inform the Elder (A)
				-- #endif
			},
			["qg"] = EARTHEN_RING_ELDER_ID,
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { ADDED_2_4_0 },
			["maps"] = { DESOLACE },
			["isDaily"] = true,
			-- #if BEFORE 9.0.5
			["lvl"] = { 26, 38 },
			-- #endif
			["groups"] = {
				objective(1, {	-- Hailstone Lieutenant slain
					["provider"] = { "n", 26178 },	-- Hailstone Lieutenant
					["coord"] = { 39.2, 30.6, DESOLACE },
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11948, {	-- Striking Back [Level 43, Stranglethorn Vale]
			["sourceQuests"] = {
				12012,	-- Inform the Elder (Both)
				-- #if AFTER CATA
				29092,	-- Inform the Elder (A)
				-- #endif
			},
			["qg"] = EARTHEN_RING_ELDER_ID,
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { ADDED_2_4_0 },
			["maps"] = {
				-- #if BEFORE CATA
				STRANGLETHORN_VALE,
				-- #else
				NORTHERN_STRANGLETHORN,
				-- #endif
			},
			["isDaily"] = true,
			-- #if BEFORE 9.0.5
			["lvl"] = { 39, 44 },
			-- #endif
			["groups"] = {
				objective(1, {	-- Chillwind Lieutenant slain
					["provider"] = { "n", 26204 },	-- Chillwind Lieutenant
					["coords"] = {
						-- #if BEFORE CATA
						{ 21.0, 22.0, STRANGLETHORN_VALE },
						-- #else
						{ 21.6, 41.4, NORTHERN_STRANGLETHORN },
						-- #endif
					},
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11952, {	-- Striking Back [Level 51, Burning Steppes]
			["sourceQuests"] = {
				12012,	-- Inform the Elder (Both)
				-- #if AFTER CATA
				29092,	-- Inform the Elder (A)
				-- #endif
			},
			["qg"] = EARTHEN_RING_ELDER_ID,
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { ADDED_2_4_0 },
			["maps"] = { BURNING_STEPPES },
			["isDaily"] = true,
			-- #if BEFORE 9.0.5
			["lvl"] = { 45, 53 },
			-- #endif
			["groups"] = {
				objective(1, {	-- Frigid Lieutenant slain
					["provider"] = { "n", 26214 },	-- Frigid Lieutenant
					["coord"] = { 15.6, 33.2, BURNING_STEPPES },
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11953, {	-- Striking Back [Level 60, Silithus]
			["sourceQuests"] = {
				12012,	-- Inform the Elder (Both)
				-- #if AFTER CATA
				29092,	-- Inform the Elder (A)
				-- #endif
			},
			["qg"] = EARTHEN_RING_ELDER_ID,
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { ADDED_2_4_0 },
			["maps"] = { SILITHUS },
			["isDaily"] = true,
			-- #if BEFORE 9.0.5
			["lvl"] = { 54, 60 },
			-- #endif
			["groups"] = {
				objective(1, {	-- Glacial Lieutenant slain
					["provider"] = { "n", 26215 },	-- Glacial Lieutenant
					["coord"] = { 69.0, 20.6, SILITHUS },
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11954, {	-- Striking Back [Level 67, Hellfire Peninsula]
			["sourceQuests"] = {
				12012,	-- Inform the Elder (Both)
				-- #if AFTER CATA
				29092,	-- Inform the Elder (A)
				-- #endif
			},
			["qg"] = EARTHEN_RING_ELDER_ID,
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { ADDED_2_4_0 },
			["maps"] = { HELLFIRE_PENINSULA },
			["isDaily"] = true,
			-- #if BEFORE 9.0.5
			["lvl"] = 61,
			-- #endif
			["groups"] = {
				objective(1, {	-- Glacial Templar slain
					["provider"] = { "n", 26216 },	-- Glacial Templar
					["coords"] = {
						{ 84.2, 47.0, HELLFIRE_PENINSULA },
						{ 84.2, 53.4, HELLFIRE_PENINSULA },
					},
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(9367, {	-- The Festival of Fire (A)
			-- #if BEFORE TBC
			["icon"] = 134467,
			["groups"] = {
				objective(1, {	-- Flame of Stormwind
					["coord"] = { 38.9, 62.3, STORMWIND_CITY },
				}),
				objective(2, {	-- Flame of Ironforge
					["coord"] = { 64.6, 24.8, IRONFORGE },
				}),
				objective(3, {	-- Flame of Darnassus
					["coord"] = { 56.6, 92.3, TELDRASSIL },
				}),
				i(23246),	-- Fiery Festival Brew
				i(23247),	-- Burning Blossom
			},
			-- #endif
			["qg"] = FESTIVAL_LOREMASTER_ID,
			-- #if BEFORE TBC
			["coords"] = FESTIVAL_LOREMASTER_COORDS,
			-- #endif
			["timeline"] = { REMOVED_2_4_0 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = 1,
		}),
		q(9368, {	-- The Festival of Fire (H)
			-- #if BEFORE TBC
			["icon"] = 134467,
			["groups"] = {
				objective(1, {	-- Flame of Orgrimmar
					["coord"] = { 46.9, 38.7, ORGRIMMAR },
				}),
				objective(2, {	-- Flame of Thunder Bluff
					["coord"] = { 21.1, 25.6, THUNDER_BLUFF },
				}),
				objective(3, {	-- Flame of the Undercity
					["coord"] = { 62.6, 66.9, UNDERCITY },
				}),
				i(23246),	-- Fiery Festival Brew
				i(23247),	-- Burning Blossom
			},
			-- #endif
			["qg"] = FESTIVAL_TALESPINNER_ID,
			-- #if BEFORE TBC
			["coords"] = FESTIVAL_TALESPINNER_COORDS,
			-- #endif
			["timeline"] = { REMOVED_2_4_0 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = 1,
		}),
		q(11970, {	-- The Master of Summer Lore (A)
			["qgs"] = {
				18927,	-- Human Commoner
				19148,	-- Dwarf Commoner
				19171,	-- Draenei Commoner
				19172,	-- Gnome Commoner
				19173,	-- Night Elf Commoner
				20102,	-- Goblin Commoner
				-- #if AFTER 11.1.7
				220307,	-- Holiday Enthusiast
				220870,	-- Holiday Enthusiast
				-- #endif
			},
			["timeline"] = { ADDED_2_4_0 },
			["maps"] = {
				STORMWIND_CITY,
				IRONFORGE,
				-- #if AFTER CATA
				DARNASSUS,
				-- #else
				TELDRASSIL,
				-- #endif
				THE_EXODAR,
				TANARIS,
				WINTERSPRING,
				NETHERSTORM,
				-- #if BEFORE CATA
				THE_BARRENS,
				STRANGLETHORN_VALE,
				-- #else
				NORTHERN_BARRENS,
				THE_CAPE_OF_STRANGLETHORN,
				-- #endif
				-- #if AFTER WRATH
				THE_STORM_PEAKS,
				NORTHREND_DALARAN,
				-- #endif
				-- #if AFTER MOP
				ISLE_OF_THUNDER,
				-- #endif
				-- #if AFTER TWW
				DORNOGAL
				-- #endif
			},
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 1,
			["groups"] = {
				i(23247),	-- Burning Blossom
			},
		}),
		q(11971, {	-- The Spinner of Summer Tales (H)
			["qgs"] = {
				19169,	-- Blood Elf Commoner
				19175,	-- Orc Commoner
				19176,	-- Tauren Commoner
				19177,	-- Troll Commoner
				19178,	-- Forsaken Commoner
				20102,	-- Goblin Commoner
				-- #if AFTER 11.1.7
				220307,	-- Holiday Enthusiast
				220870,	-- Holiday Enthusiast
				-- #endif
			},
			["timeline"] = { ADDED_2_4_0 },
			["maps"] = {
				ORGRIMMAR,
				THUNDER_BLUFF,
				UNDERCITY,
				EVERSONG_WOODS,
				SILVERMOON_CITY,
				SHATTRATH_CITY,
				TANARIS,
				WINTERSPRING,
				NETHERSTORM,
				-- #if BEFORE CATA
				THE_BARRENS,
				STRANGLETHORN_VALE,
				-- #else
				NORTHERN_BARRENS,
				THE_CAPE_OF_STRANGLETHORN,
				-- #endif
				-- #if AFTER WRATH
				THE_STORM_PEAKS,
				NORTHREND_DALARAN,
				-- #endif
				-- #if AFTER MOP
				ISLE_OF_THUNDER,
				-- #endif
				-- #if AFTER TWW
				DORNOGAL
				-- #endif
			},
			["races"] = HORDE_ONLY,
			["lvl"] = 1,
			["groups"] = {
				i(23247),	-- Burning Blossom
			},
		}),
		q(11657, {	-- Torch Catching (A)
			["sourceQuest"] = 11731,	-- Torch Tossing (A)
			["qg"] = FESTIVAL_MASTER_FIRE_EATER_ID,
			["coords"] = FESTIVAL_MASTER_FIRE_EATER_COORDS,
			["timeline"] = { ADDED_2_4_0 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				objective(1, {	-- Catch 4 torches in a row.
					["provider"] = { "i", 34833 },	-- Unlit Torches
				}),
				i(34599),	-- Juggling Torch
				i(23247),	-- Burning Blossom
			},
		}),
		q(11923, {	-- Torch Catching (H)
			["sourceQuest"] = 11922,	-- Torch Tossing (H)
			["qg"] = FESTIVAL_MASTER_FLAME_EATER_ID,
			["coords"] = FESTIVAL_MASTER_FLAME_EATER_COORDS,
			["timeline"] = { ADDED_2_4_0 },
			["races"] = HORDE_ONLY,
			["groups"] = {
				objective(1, {	-- Catch 4 torches in a row.
					["provider"] = { "i", 34833 },	-- Unlit Torches
				}),
				i(34599),	-- Juggling Torch
				i(23247),	-- Burning Blossom
			},
		}),
		q(11731, {	-- Torch Tossing (A)
			["qg"] = FESTIVAL_MASTER_FIRE_EATER_ID,
			["coords"] = FESTIVAL_MASTER_FIRE_EATER_COORDS,
			["timeline"] = { ADDED_2_4_0, REMOVED_10_2_7 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				objective(1, {	-- Hit 8 braziers.
					["provider"] = { "i", 34862 },	-- Practice Torches
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(11922, {	-- Torch Tossing (H)
			["qg"] = FESTIVAL_MASTER_FLAME_EATER_ID,
			["coords"] = FESTIVAL_MASTER_FLAME_EATER_COORDS,
			["timeline"] = { ADDED_2_4_0, REMOVED_10_2_7 },
			["races"] = HORDE_ONLY,
			["groups"] = {
				objective(1, {	-- Hit 8 braziers.
					["provider"] = { "i", 34862 },	-- Practice Torches
				}),
				i(23247),	-- Burning Blossom
			},
		}),
		q(82087, {	-- Torch Tossing (A)
			["qg"] = FESTIVAL_MASTER_FIRE_EATER_ID,
			["coords"] = FESTIVAL_MASTER_FIRE_EATER_COORDS,
			["timeline"] = { ADDED_10_2_7 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = { i(23247) },	-- Burning Blossom
		}),
		q(82105, {	-- Torch Tossing (H)
			["qg"] = FESTIVAL_MASTER_FLAME_EATER_ID,
			["coords"] = FESTIVAL_MASTER_FLAME_EATER_COORDS,
			["timeline"] = { ADDED_10_2_7 },
			["races"] = HORDE_ONLY,
			["groups"] = { i(23247) },	-- Burning Blossom
		}),
		q(11886, {	-- Unusual Activity
			["qg"] = EARTHEN_RING_ELDER_ID,
			["coords"] = EARTHEN_RING_ELDER_COORDS,
			["timeline"] = { ADDED_2_4_0 },
			["maps"] = { ASHENVALE },
			["cost"] = { { "i", 35828, 1 } },	-- Totemic Beacon
			["lvl"] = lvlsquish(16, 1, 1),
			["groups"] = {
				objective(1, {	-- 0/1 Twilight Correspondence
					["provider"] = { "i", 35277 },	-- Twilight Correspondence
					["coord"] = { 16.0, 20.8, ASHENVALE },
					["crs"] = {
						25863,	-- Twilight Firesworn <Twilight's Hammer>
						25866,	-- Twilight Flameguard <Twilight's Hammer>
						25924,	-- Twilight Speaker Viktor <Twilight's Hammer>
					},
				}),
			},
		}),
		q(9322, {	-- Wild Fires in Kalimdor
			-- #if BEFORE TBC
			["icon"] = 134467,
			-- #endif
			["qg"] = FESTIVAL_FLAMEKEEPER_ID,
			-- #if BEFORE TBC
			["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
			["maps"] = {
				AZSHARA,
				SILITHUS,
				UNGORO_CRATER,
				WINTERSPRING,
			},
			-- #endif
			["timeline"] = { REMOVED_2_4_0 },
			["isYearly"] = true,
			["lvl"] = 1,
			["groups"] = {
				-- #if BEFORE TBC
				objective(1, {	-- Flame of Azshara
					["coord"] = { 41.5, 43.3, AZSHARA },
				}),
				objective(2, {	-- Flame of Silithus
					["coord"] = { 81.2, 18.4, SILITHUS },
				}),
				objective(3, {	-- Flame of Un'Goro
					["coord"] = { 70.1, 76.2, UNGORO_CRATER },
				}),
				objective(4, {	-- Flame of Winterspring
					["coord"] = { 30.6, 43.2, WINTERSPRING },
				}),
				-- #endif
				i(23379, {	-- Cinder Bracers
					["timeline"] = { REMOVED_2_4_0 },
				}),
				-- #if BEFORE TBC
				i(23247),	-- Burning Blossom
				-- #endif
			},
		}),
		q(9323, {	-- Wild Fires in the Eastern Kingdoms
			-- #if BEFORE TBC
			["icon"] = 134467,
			["groups"] = {
				objective(1, {	-- Flame of the Blasted Lands
					["coord"] = { 54.4, 31.8, BLASTED_LANDS },
				}),
				objective(2, {	-- Flame of the Plaguelands
					["coord"] = { 57.6, 73.2, EASTERN_PLAGUELANDS },
				}),
				objective(3, {	-- Flame of the Hinterlands
					["coord"] = { 62.2, 53.5, THE_HINTERLANDS },
				}),
				objective(4, {	-- Flame of Searing Gorge
					["coord"] = { 33.0, 73.5, SEARING_GORGE },
				}),
				-- #if BEFORE 2.4.0.7994
				i(23324),	-- Mantle of the Fire Festival
				-- #endif
				i(23247),	-- Burning Blossom
			},
			-- #endif
			["qg"] = FESTIVAL_FLAMEKEEPER_ID,
			-- #if BEFORE TBC
			["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
			["maps"] = {
				BLASTED_LANDS,
				EASTERN_PLAGUELANDS,
				THE_HINTERLANDS,
				SEARING_GORGE,
			},
			-- #endif
			["timeline"] = { REMOVED_2_4_0 },
			["isYearly"] = true,
			["lvl"] = 1,
		}),

		-- Bonfire Descecration Quests
		n(FACTION_HEADER_ALLIANCE, {
			["timeline"] = { ADDED_2_4_0 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				abonfire(11764, {	-- Desecrate this Fire! — Arathi Highlands
					["provider"] = { "o", 187947 },	-- Horde Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 69.0, 43.1, ARATHI_HIGHLANDS },
						-- #else
						{ 74.0, 41.7, ARATHI_HIGHLANDS },
						-- #endif
					},
				}),
				abonfire(11765, {	-- Desecrate this Fire! — Ashenvale
					["provider"] = { "o", 187948 },	-- Horde Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 51.6, 66.8, ASHENVALE },
						-- #else
						{ 70.0, 69.2, ASHENVALE },
						-- #endif
					},
				}),
				abonfire(28919, {	-- Desecrate this Fire! — Azshara
					["provider"] = { "o", 207991 },	-- Horde Bonfire
					["coord"] = { 60.4, 53.5, AZSHARA },
					["timeline"] = { ADDED_4_0_1 },
				}),
				abonfire(11766, {	-- Desecrate this Fire! — Badlands
					["provider"] = { "o", 187954 },	-- Horde Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 24.1, 37.3, BADLANDS },
						-- #else
						{ 4.9, 49.1, BADLANDS },
						-- #endif
					},
				}),
				abonfire(11767, {	-- Desecrate this Fire! — Blade's Edge Mountains
					["provider"] = { "o", 187955 },	-- Horde Bonfire
					["coord"] = { 49.9, 59.0, BLADES_EDGE_MOUNTAINS },
				}),
				abonfire(28917, {	-- Desecrate this Fire! — Blasted Lands
					["provider"] = { "o", 207989 },	-- Horde Bonfire
					["coord"] = { 46.3, 14.4, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				abonfire(13441, {	-- Desecrate this Fire! — Borean Tundra
					["provider"] = { "o", 194033 },	-- Horde Bonfire
					["coord"] = { 51.1, 11.9, BOREAN_TUNDRA },
					["timeline"] = { ADDED_3_0_2 },
				}),
				abonfire(11768, {	-- Desecrate this Fire! — Burning Steppes
					["provider"] = { "o", 187956 },	-- Horde Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 51.5, 29.3, BURNING_STEPPES },
						-- #else
						{ 62.1, 29.0, BURNING_STEPPES },
						-- #endif
					},
				}),
				abonfire(13457, {	-- Desecrate this Fire! — Crystalsong Forest
					["provider"] = { "o", 194046 },	-- Horde Bonfire
					["coord"] = { 80.5, 53.0, CRYSTALSONG_FOREST },
					["timeline"] = { ADDED_3_0_2 },
				}),
				abonfire(11769, {	-- Desecrate this Fire! — Desolace
					["provider"] = { "o", 187957 },	-- Horde Bonfire
					["coord"] = { 26.1, 77.4, DESOLACE },
				}),
				abonfire(13451, {	-- Desecrate this Fire! — Dragonblight
					["provider"] = { "o", 194037 },	-- Horde Bonfire
					["coord"] = { 38.5, 48.4, DRAGONBLIGHT },
					["timeline"] = { ADDED_3_0_2 },
				}),
				abonfire(11770, {	-- Desecrate this Fire! — Durotar
					["provider"] = { "o", 187958 },	-- Horde Bonfire
					["coord"] = { 52.0, 47.0, DUROTAR },
				}),
				abonfire(11771, {	-- Desecrate this Fire! — Dustwallow Marsh
					["provider"] = { "o", 187959 },	-- Horde Bonfire
					["coord"] = { 33.2, 30.8, DUSTWALLOW_MARSH },
				}),
				abonfire(11772, {	-- Desecrate this Fire! — Eversong Woods
					["provider"] = { "o", 187960 },	-- Horde Bonfire
					["coord"] = { 46.3, 50.3, EVERSONG_WOODS },
				}),
				abonfire(11773, {	-- Desecrate this Fire! — Feralas
					["provider"] = { "o", 187961 },	-- Horde Bonfire
					["coord"] = { 72.5, 47.6, FERALAS },
				}),
				abonfire(44583, {	-- Desecrate this Fire! — Frostfire Ridge
					["provider"] = { "o", 259870 },	-- Horde Bonfire
					["coord"] = { 72.8, 65.2, FROSTFIRE_RIDGE },
					["timeline"] = { ADDED_6_0_2 },
				}),
				abonfire(11774, {	-- Desecrate this Fire! — Ghostlands
					["provider"] = { "o", 187962 },	-- Horde Bonfire
					["coord"] = { 47.0, 25.9, GHOSTLANDS },
				}),
				abonfire(13454, {	-- Desecrate this Fire! — Grizzly Hills
					["provider"] = { "o", 194042 },	-- Horde Bonfire
					["coord"] = { 19.1, 61.3, GRIZZLY_HILLS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				abonfire(11775, {	-- Desecrate this Fire! — Hellfire Peninsula
					["provider"] = { "o", 187963 },	-- Horde Bonfire
					["coord"] = { 57.3, 41.8, HELLFIRE_PENINSULA },
				}),
				abonfire(11776, {	-- Desecrate this Fire! — Hillsbrad Foothills
					["provider"] = { "o", 187964 },	-- Horde Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 54.5, 50.1, HILLSBRAD_FOOTHILLS },
						-- #else
						{ 58.4, 25.1, HILLSBRAD_FOOTHILLS },
						-- #endif
					},
				}),
				abonfire(13453, {	-- Desecrate this Fire! — Howling Fjord
					["provider"] = { "o", 194039 },	-- Horde Bonfire
					["coord"] = { 48.4, 13.5, HOWLING_FJORD },
					["timeline"] = { ADDED_3_0_2 },
				}),
				abonfire(11777, {	-- Desecrate this Fire! — Mulgore
					["provider"] = { "o", 187965 },	-- Horde Bonfire
					["coord"] = { 52.0, 59.3, MULGORE },
				}),
				abonfire(11778, {	-- Desecrate this Fire! — Nagrand (Outland)
					["provider"] = { "o", 187966 },	-- Horde Bonfire
					["coord"] = { 51.1, 34.2, NAGRAND },
				}),
				abonfire(54746, {	-- Desecrate this Fire! — Nazmir
					["provider"] = { "o", 316796 },	-- Horde Bonfire
					["coord"] = { 40.0, 74.0, NAZMIR },
					["timeline"] = { ADDED_8_0_1 },
				}),
				abonfire(11799, {	-- Desecrate this Fire! — Netherstorm
					["provider"] = { "o", 187949 },	-- Horde Bonfire
					["coord"] = { 32.3, 68.4, NETHERSTORM },
				}),
				abonfire(11783, {	-- Desecrate this Fire! — Northern Barrens / The Barrens
					["provider"] = { "o", 187971 },	-- Horde Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 49.9, 54.2, NORTHERN_BARRENS },
						-- #else
						{ 52.2, 27.9, THE_BARRENS },
						-- #endif
					},
				}),
				abonfire(28911, {	-- Desecrate this Fire! — Northern Stranglethorn
					["provider"] = { "o", 207983 },	-- Horde Bonfire
					["coord"] = { 40.7, 52.0, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_1 },
				}),
				abonfire(11779, {	-- Desecrate this Fire! — Shadowmoon Valley (Outland)
					["provider"] = { "o", 187967 },	-- Horde Bonfire
					["coord"] = { 33.6, 30.3, SHADOWMOON_VALLEY },
				}),
				abonfire(13450, {	-- Desecrate this Fire! — Sholazar Basin
					["provider"] = { "o", 194034 },	-- Horde Bonfire
					["coord"] = { 47.3, 61.7, SHOLAZAR_BASIN },
					["timeline"] = { ADDED_3_0_2 },
				}),
				abonfire(11800, {	-- Desecrate this Fire! — Silithus
					["provider"] = { "o", 187950 },	-- Horde Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 50.8, 41.8, SILITHUS },
						-- #else
						{ 46.5, 44.9, SILITHUS },
						-- #endif
					},
				}),
				abonfire(11580, {	-- Desecrate this Fire! — Silverpine Forest
					["provider"] = { "o", 187559 },	-- Horde Bonfire
					["coord"] = { 49.6, 38.7, SILVERPINE_FOREST },
				}),
				abonfire(28914, {	-- Desecrate this Fire! — Southern Barrens
					["provider"] = { "o", 207986 },	-- Horde Bonfire
					["coord"] = { 40.7, 67.2, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				abonfire(11780, {	-- Desecrate this Fire! — Stonetalon Mountains
					["provider"] = { "o", 187968 },	-- Horde Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 53.0, 62.4, STONETALON_MOUNTAINS },
						-- #else
						{ 50.6, 60.3, STONETALON_MOUNTAINS },
						-- #endif
					},
				}),
				abonfire(13455, {	-- Desecrate this Fire! — Storm Peaks
					["provider"] = { "o", 194043 },	-- Horde Bonfire
					["coord"] = { 40.3, 85.6, THE_STORM_PEAKS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				abonfire(44627, {	-- Desecrate this Fire! — Suramar
					["provider"] = { "o", 259926 },	-- Horde Bonfire
					["coord"] = { 30.3, 45.4, SURAMAR },
					["timeline"] = { ADDED_7_0_3 },
				}),
				abonfire(11781, {	-- Desecrate this Fire! — Swamp of Sorrows
					["provider"] = { "o", 187969 },	-- Horde Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 76.7, 14.4, SWAMP_OF_SORROWS },
						-- #else
						{ 46.9, 46.5, SWAMP_OF_SORROWS },
						-- #endif
					},
				}),
				abonfire(11802, {	-- Desecrate this Fire! — Tanaris
					["provider"] = { "o", 187952 },	-- Horde Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 49.8, 28.2, TANARIS },
						-- #else
						{ 49.8, 27.1, TANARIS },
						-- #endif
					},
				}),
				abonfire(11782, {	-- Desecrate this Fire! — Terokkar Forest
					["provider"] = { "o", 187970 },	-- Horde Bonfire
					["coord"] = { 51.9, 43.3, TEROKKAR_FOREST },
				}),
				abonfire(11801, {	-- Desecrate this Fire! — The Cape of Stranglethorn / Stranglethorn Vale
					["provider"] = { "o", 187951 },	-- Horde Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 50.6, 70.8, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 33.0, 75.4, STRANGLETHORN_VALE },
						-- #endif
					},
				}),
				abonfire(11784, {	-- Desecrate this Fire! — The Hinterlands
					["provider"] = { "o", 187972 },	-- Horde Bonfire
					["coord"] = { 76.4, 74.5, THE_HINTERLANDS },
				}),
				abonfire(11785, {	-- Desecrate this Fire! — Thousand Needles
					["provider"] = { "o", 187973 },	-- Horde Bonfire
					["coord"] = { 42.5, 52.9, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_1 },	-- Freewind Post got destroyed with Cataclysm
				}),
				abonfire(11786, {	-- Desecrate this Fire! — Tirisfal Glades
					["provider"] = { "o", 187974 },	-- Horde Bonfire
					["coord"] = { 57.0, 51.9, TIRISFAL_GLADES },
				}),
				abonfire(28944, {	-- Desecrate this Fire! — Twilight Highlands
					["provider"] = { "o", 208090 },	-- Horde Bonfire
					["coord"] = { 53.3, 46.5, TWILIGHT_HIGHLANDS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				abonfire(28948, {	-- Desecrate this Fire! — Uldum
					["provider"] = { "o", 208094 },	-- Horde Bonfire
					["coord"] = { 53.0, 34.4, ULDUM },
					["timeline"] = { ADDED_4_0_1 },
				}),
				abonfire(28920, {	-- Desecrate this Fire! — Un'Goro Crater
					["provider"] = { "o", 207992 },	-- Horde Bonfire
					["coord"] = { 56.3, 65.8, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_1 },
				}),
				abonfire(32496, {	-- Desecrate this Fire! — Vale of Eternal Blossoms
					["provider"] = { "o", 217852 },	-- Horde Bonfire
					["coord"] = { 77.9, 33.9, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4 },
				}),
				abonfire(54749, {	-- Desecrate this Fire! — Vol'dun
					["provider"] = { "o", 316801 },	-- Horde Bonfire
					["coord"] = { 55.9, 47.4, VOLDUN },
					["timeline"] = { ADDED_8_0_1 },
				}),
				abonfire(28918, {	-- Desecrate this Fire! — Western Plaguelands
					["provider"] = { "o", 207990 },	-- Horde Bonfire
					["coord"] = { 28.9, 56.8, WESTERN_PLAGUELANDS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				abonfire(11803, {	-- Desecrate this Fire! — Winterspring
					["provider"] = { "o", 187953 },	-- Horde Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 58.2, 47.3, WINTERSPRING },
						-- #else
						{ 59.8, 35.4, WINTERSPRING },
						-- #endif
					},
				}),
				abonfire(11787, {	-- Desecrate this Fire! — Zangarmarsh
					["provider"] = { "o", 187975 },	-- Horde Bonfire
					["coord"] = { 35.6, 51.9, ZANGARMARSH },
				}),
				abonfire(54744, {	-- Desecrate this Fire! — Zuldazar
					["provider"] = { "o", 316795 },	-- Horde Bonfire
					["coord"] = { 53.3, 48.1, ZULDAZAR },
					["timeline"] = { ADDED_8_0_1 },
				}),
				abonfire(13458, {	-- Desecrate this Fire! — Zul'Drak
					["provider"] = { "o", 194048 },	-- Horde Bonfire
					["coord"] = { 43.2, 71.4, ZULDRAK },
					["timeline"] = { ADDED_3_0_2 },
				}),
			},
		}),
		n(FACTION_HEADER_HORDE, {
			["timeline"] = { ADDED_2_4_0 },
			["groups"] = {
				hbonfire(11732, {	-- Desecrate this Fire! — Arathi Highlands
					["provider"] = { "o", 187914 },	-- Alliance Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 44.8, 46.1, ARATHI_HIGHLANDS },
						-- #else
						{ 50.3, 44.9, ARATHI_HIGHLANDS },
						-- #endif
					},
				}),
				hbonfire(11734, {	-- Desecrate this Fire! — Ashenvale
					["provider"] = { "o", 187916 },	-- Alliance Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 86.7, 41.4, ASHENVALE },
						-- #else
						{ 37.8, 55.0, ASHENVALE },
						-- #endif
					},
				}),
				hbonfire(11735, {	-- Desecrate this Fire! — Azuremyst Isle
					["provider"] = { "o", 187917 },	-- Alliance Bonfire
					["coord"] = { 44.7, 52.5, AZUREMYST_ISLE },
				}),
				hbonfire(28912, {	-- Desecrate this Fire! — Badlands
					["provider"] = { "o", 207984 },	-- Alliance Bonfire
					["coord"] = { 18.5, 56.1, BADLANDS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				hbonfire(11736, {	-- Desecrate this Fire! — Blade's Edge Mountains
					["provider"] = { "o", 187919 },	-- Alliance Bonfire
					["coord"] = { 41.8, 65.9, BLADES_EDGE_MOUNTAINS },
				}),
				hbonfire(11737, {	-- Desecrate this Fire! — Blasted Lands
					["provider"] = { "o", 187920 },	-- Alliance Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 55.2, 15.3, BLASTED_LANDS },
						-- #else
						{ 59.0, 17.2, BLASTED_LANDS },
						-- #endif
					},
				}),
				hbonfire(11738, {	-- Desecrate this Fire! — Bloodmyst Isle
					["provider"] = { "o", 187921 },	-- Alliance Bonfire
					["coord"] = { 56.0, 68.5, BLOODMYST_ISLE },
				}),
				hbonfire(13440, {	-- Desecrate this Fire! — Borean Tundra
					["provider"] = { "o", 194032 },	-- Alliance Bonfire
					["coord"] = { 55.1, 20.2, BOREAN_TUNDRA },
					["timeline"] = { ADDED_3_0_2 },
				}),
				hbonfire(11739, {	-- Desecrate this Fire! — Burning Steppes
					["provider"] = { "o", 187922 },	-- Alliance Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 68.6, 59.9, BURNING_STEPPES },
						-- #else
						{ 80.5, 62.4, BURNING_STEPPES },
						-- #endif
					},
				}),
				hbonfire(13447, {	-- Desecrate this Fire! — Crystalsong Forest
					["provider"] = { "o", 194045 },	-- Alliance Bonfire
					["coord"] = { 77.7, 74.9, CRYSTALSONG_FOREST },
					["timeline"] = { ADDED_3_0_2 },
				}),
				hbonfire(11740, {	-- Desecrate this Fire! — Darkshore
					["provider"] = { "o", 187923 },	-- Alliance Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 49.0, 22.5, DARKSHORE },
						-- #else
						{ 37.1, 45.9, DARKSHORE },
						-- #endif
					},
				}),
				hbonfire(11741, {	-- Desecrate this Fire! — Desolace
					["provider"] = { "o", 187924 },	-- Alliance Bonfire
					["coord"] = { 65.8, 17.0, DESOLACE },
				}),
				hbonfire(13443, {	-- Desecrate this Fire! — Dragonblight
					["provider"] = { "o", 194036 },	-- Alliance Bonfire
					["coord"] = { 75.1, 43.7, DRAGONBLIGHT },
					["timeline"] = { ADDED_3_0_2 },
				}),
				hbonfire(54742, {	-- Desecrate this Fire! — Drustvar
					["provider"] = { "o", 316793 },	-- Alliance Bonfire
					["coord"] = { 40.2, 47.3, DRUSTVAR },
					["timeline"] = { ADDED_8_0_1 },
				}),
				hbonfire(11742, {	-- Desecrate this Fire! — Dun Morogh
					["provider"] = { "o", 187925 },	-- Alliance Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 53.8, 44.7, DUN_MOROGH },
						-- #else
						{ 46.6, 46.5, DUN_MOROGH },
						-- #endif
					},
				}),
				hbonfire(11743, {	-- Desecrate this Fire! — Duskwood
					["provider"] = { "o", 187926 },	-- Alliance Bonfire
					["coord"] = { 73.2, 54.9, DUSKWOOD },
				}),
				hbonfire(11744, {	-- Desecrate this Fire! — Dustwallow Marsh
					["provider"] = { "o", 187927 },	-- Alliance Bonfire
					["coord"] = { 62.1, 40.3, DUSTWALLOW_MARSH },
				}),
				hbonfire(11745, {	-- Desecrate this Fire! — Elwynn Forest
					["provider"] = { "o", 187928 },	-- Alliance Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 43.2, 63.0, ELWYNN_FOREST },
						-- #else
						{ 43.2, 62.8, ELWYNN_FOREST },
						-- #endif
					},
				}),
				hbonfire(11746, {	-- Desecrate this Fire! — Feralas
					["provider"] = { "o", 187929 },	-- Alliance Bonfire
					["coord"] = { 46.6, 43.8, FERALAS },
				}),
				hbonfire(13445, {	-- Desecrate this Fire! — Grizzly Hills
					["provider"] = { "o", 194040 },	-- Alliance Bonfire
					["coord"] = { 34.1, 60.7, GRIZZLY_HILLS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				hbonfire(11747, {	-- Desecrate this Fire! — Hellfire Peninsula
					["provider"] = { "o", 187930 },	-- Alliance Bonfire
					["coord"] = { 61.9, 58.5, HELLFIRE_PENINSULA },
				}),
				hbonfire(11748, {	-- Desecrate this Fire! — Hillsbrad Foothills
					["provider"] = { "o", 187931 },	-- Alliance Bonfire
					["coord"] = { 50.4, 47.1, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_1 },	-- Southshore got destroyed with Cataclysm
				}),
				hbonfire(13444, {	-- Desecrate this Fire! — Howling Fjord
					["provider"] = { "o", 194038 },	-- Alliance Bonfire
					["coord"] = { 57.7, 15.7, HOWLING_FJORD },
					["timeline"] = { ADDED_3_0_2 },
				}),
				hbonfire(11749, {	-- Desecrate this Fire! — Loch Modan
					["provider"] = { "o", 187932 },	-- Alliance Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 32.3, 40.4, LOCH_MODAN },
						-- #else
						{ 32.6, 40.5, LOCH_MODAN },
						-- #endif
					},
				}),
				hbonfire(11750, {	-- Desecrate this Fire! — Nagrand (Outland)
					["provider"] = { "o", 187933 },	-- Alliance Bonfire
					["coord"] = { 49.7, 69.6, NAGRAND },
				}),
				hbonfire(11759, {	-- Desecrate this Fire! — Netherstorm
					["provider"] = { "o", 187942 },	-- Alliance Bonfire
					["coord"] = { 31.1, 62.7, NETHERSTORM },
				}),
				hbonfire(28910, {	-- Desecrate this Fire! — Northern Stranglethorn
					["provider"] = { "o", 207982 },	-- Alliance Bonfire
					["coord"] = { 51.6, 63.3, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_1 },
				}),
				hbonfire(11751, {	-- Desecrate this Fire! — Redridge Mountains
					["provider"] = { "o", 187934 },	-- Alliance Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 24.4, 53.9, REDRIDGE_MOUNTAINS },
						-- #else
						{ 24.9, 59.3, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				hbonfire(11752, {	-- Desecrate this Fire! — Shadowmoon Valley (Outland)
					["provider"] = { "o", 187935 },	-- Alliance Bonfire
					["coord"] = { 39.6, 54.3, SHADOWMOON_VALLEY },
				}),
				hbonfire(44582, {	-- Desecrate this Fire! — Shadowmoon Valley (WoD)
					["provider"] = { "o", 259871 },	-- Alliance Bonfire
					["coord"] = { 42.8, 35.9, DRAENOR_SHADOWMOON_VALLEY },
					["timeline"] = { ADDED_6_0_2 },
				}),
				hbonfire(13442, {	-- Desecrate this Fire! — Sholazar Basin
					["provider"] = { "o", 194035 },	-- Alliance Bonfire
					["coord"] = { 47.9, 66.0, SHOLAZAR_BASIN },
					["timeline"] = { ADDED_3_0_2 },
				}),
				hbonfire(11760, {	-- Desecrate this Fire! — Silithus
					["provider"] = { "o", 187943 },	-- Alliance Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 60.5, 33.4, SILITHUS },
						-- #else
						{ 57.7, 34.9, SILITHUS },
						-- #endif
					},
				}),
				hbonfire(28913, {	-- Desecrate this Fire! — Southern Barrens
					["provider"] = { "o", 207985 },	-- Alliance Bonfire
					["coord"] = { 48.2, 72.4, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				hbonfire(28915, {	-- Desecrate this Fire! — Stonetalon Mountains
					["provider"] = { "o", 207987 },	-- Alliance Bonfire
					["coord"] = { 49.6, 51.1, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				hbonfire(13446, {	-- Desecrate this Fire! — Storm Peaks
					["provider"] = { "o", 194044 },	-- Alliance Bonfire
					["coord"] = { 41.4, 87.0, THE_STORM_PEAKS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				hbonfire(54739, {	-- Desecrate this Fire! — Stormsong Valley
					["provider"] = { "o", 316791 },	-- Alliance Bonfire
					["coord"] = { 36.0, 51.5, STORMSONG_VALLEY },
					["timeline"] = { ADDED_8_0_1 },
				}),
				hbonfire(44624, {	-- Desecrate this Fire! — Suramar
					["provider"] = { "o", 259927 },	-- Alliance Bonfire
					["coord"] = { 22.8, 58.2, SURAMAR },
					["timeline"] = { ADDED_7_0_3 },
				}),
				hbonfire(28916, {	-- Desecrate this Fire! — Swamp of Sorrows
					["provider"] = { "o", 207988 },	-- Alliance Bonfire
					["coord"] = { 70.1, 14.8, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				hbonfire(11762, {	-- Desecrate this Fire! — Tanaris
					["provider"] = { "o", 187945 },	-- Alliance Bonfire
					["coord"] = { 52.7, 30.0, TANARIS },
				}),
				hbonfire(11753, {	-- Desecrate this Fire! — Teldrassil
					["provider"] = { "o", 187936 },	-- Alliance Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 54.7, 52.7, TELDRASSIL },
						-- #else
						{ 54.9, 60.5, TELDRASSIL },
						-- #endif
					},
				}),
				hbonfire(11754, {	-- Desecrate this Fire! — Terokkar Forest
					["provider"] = { "o", 187937 },	-- Alliance Bonfire
					["coord"] = { 54.2, 55.4, TEROKKAR_FOREST },
				}),
				hbonfire(11761, {	-- Desecrate this Fire! — The Cape of Stranglethorn / Stranglethorn Vale
					["provider"] = { "o", 187944 },	-- Alliance BonfireA
					["coords"] = {
						-- #if AFTER CATA
						{ 51.7, 67.3, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 33.8, 73.3, STRANGLETHORN_VALE },
						-- #endif
					},
				}),
				hbonfire(11755, {	-- Desecrate this Fire! — The Hinterlands
					["provider"] = { "o", 187938 },	-- Alliance Bonfire
					["coord"] = { 14.5, 50.0, THE_HINTERLANDS },
				}),
				hbonfire(54736, {	-- Desecrate this Fire! — Tiragarde Sound
					["provider"] = { "o", 316788 },	-- Alliance Bonfire
					["coord"] = { 76.3, 49.7, TIRAGARDE_SOUND },
					["timeline"] = { ADDED_8_0_1 },
				}),
				hbonfire(28943, {	-- Desecrate this Fire! — Twilight Highlands
					["provider"] = { "o", 208089 },	-- Alliance Bonfire
					["coord"] = { 47.0, 28.3, TWILIGHT_HIGHLANDS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				hbonfire(28947, {	-- Desecrate this Fire! — Uldum
					["provider"] = { "o", 208093 },	-- Alliance Bonfire
					["coord"] = { 53.4, 32.0, ULDUM },
					["timeline"] = { ADDED_4_0_1 },
				}),
				hbonfire(28921, {	-- Desecrate this Fire! — Un'Goro Crater
					["provider"] = { "o", 207993 },	-- Alliance Bonfire
					["coord"] = { 60.0, 62.9, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_1 },
				}),
				hbonfire(32503, {	-- Desecrate this Fire! — Vale of Eternal Blossoms
					["provider"] = { "o", 217851 },	-- Alliance Bonfire
					["coord"] = { 79.8, 37.0, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4 },
				}),
				hbonfire(11756, {	-- Desecrate this Fire! — Western Plaguelands
					["provider"] = { "o", 187939 },	-- Alliance Bonfire
					["coord"] = { 43.6, 82.5, WESTERN_PLAGUELANDS },
				}),
				hbonfire(11581, {	-- Desecrate this Fire! — Westfall
					["provider"] = { "o", 187564 },	-- Alliance Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 45.2, 62.3, WESTFALL },
						-- #else
						{ 56.1, 53.9, WESTFALL },
						-- #endif
					},
				}),
				hbonfire(11757, {	-- Desecrate this Fire! — Wetlands
					["provider"] = { "o", 187940 },	-- Alliance Bonfire
					["coord"] = { 13.3, 47.3, WETLANDS },
				}),
				hbonfire(11763, {	-- Desecrate this Fire! — Winterspring
					["provider"] = { "o", 187946 },	-- Alliance Bonfire
					["coords"] = {
						-- #if AFTER CATA
						{ 61.3, 47.1, WINTERSPRING },
						-- #else
						{ 62.7, 35.4, WINTERSPRING },
						-- #endif
					},
				}),
				hbonfire(11758, {	-- Desecrate this Fire! — Zangarmarsh
					["provider"] = { "o", 187941 },	-- Alliance Bonfire
					["coord"] = { 68.6, 52.0, ZANGARMARSH },
				}),
				hbonfire(13449, {	-- Desecrate this Fire! — Zul'Drak
					["provider"] = { "o", 194049 },	-- Alliance Bonfire
					["coord"] = { 40.4, 61.0, ZULDRAK },
					["timeline"] = { ADDED_3_0_2 },
				}),
			},
		}),

		-- Honor the Flame Quests
		n(FACTION_HEADER_ALLIANCE, {
			["timeline"] = { ADDED_2_4_0 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				honortheflame(11804, {	-- Honor the Flame — Arathi Highlands
					["qg"] = 25887,	-- Arathi Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 44.3, 45.8, ARATHI_HIGHLANDS },
						-- #else
						{ 50.0, 44.8, ARATHI_HIGHLANDS },
						-- #endif
					},
				}),
				honortheflame(11805, {	-- Honor the Flame — Ashenvale
					["qg"] = 25883,	-- Ashenvale Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 87.0, 42.0, ASHENVALE },
						-- #else
						{ 37.8, 54.7, ASHENVALE },
						-- #endif
					},
				}),
				honortheflame(11806, {	-- Honor the Flame — Azuremyst Isle
					["qg"] = 25888,	-- Azuremyst Isle Flame Warden
					["coord"] = { 44.0, 53.0, AZUREMYST_ISLE },
				}),
				honortheflame(28925, {	-- Honor the Flame — Badlands
					["qg"] = 51585,	-- Badlands Flame Warden
					["coord"] = { 18.9, 56.1, BADLANDS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(11807, {	-- Honor the Flame — Blade's Edge Mountains
					["qg"] = 25889,	-- Blade's Edge Flame Warden
					["coord"] = { 42.0, 66.0, BLADES_EDGE_MOUNTAINS },
				}),
				honortheflame(11808, {	-- Honor the Flame — Blasted Lands
					["qg"] = 25890,	-- Blasted Lands Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 55.5, 15.0, BLASTED_LANDS },
						-- #else
						{ 59.3, 17.0, BLASTED_LANDS },
						-- #endif
					},
				}),
				honortheflame(11809, {	-- Honor the Flame — Bloodmyst Isle
					["qg"] = 25891,	-- Bloodmyst Isle Flame Warden
					["coords"] = {
						{ 55.8, 67.9, BLOODMYST_ISLE },
					},
				}),
				honortheflame(13485, {	-- Honor the Flame — Borean Tundra
					["qg"] = 32801,	-- Borean Tundra Flame Warden
					["coord"] = { 55.0, 20.0, BOREAN_TUNDRA },
					["timeline"] = { ADDED_3_0_2 },
				}),
				honortheflame(11810, {	-- Honor the Flame — Burning Steppes
					["qg"] = 25892,	-- Burning Steppes Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 68.2, 60.6, BURNING_STEPPES },
						-- #else
						{ 80.3, 62.9, BURNING_STEPPES },
						-- #endif
					},
				}),
				honortheflame(13491, {	-- Honor the Flame — Crystalsong Forest
					["qg"] = 32807,	-- Crystalsong Forest Flame Warden
					["coord"] = { 78.0, 75.0, CRYSTALSONG_FOREST },
					["timeline"] = { ADDED_3_0_2 },
				}),
				honortheflame(11811, {	-- Honor the Flame — Darkshore
					["qg"] = 25893,	-- Darkshore Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 49.0, 23.0, DARKSHORE },
						-- #else
						{ 37.0, 46.2, DARKSHORE },
						-- #endif
					},
				}),
				honortheflame(11812, {	-- Honor the Flame — Desolace
					["qg"] = 25894,	-- Desolace Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 65.0, 17.0, DESOLACE },
						-- #else
						{ 66.1, 17.1, DESOLACE },
						-- #endif
					},
				}),
				honortheflame(13487, {	-- Honor the Flame — Dragonblight
					["qg"] = 32803,	-- Dragonblight Flame Warden
					["coord"] = { 75.0, 44.0, DRAGONBLIGHT },
					["timeline"] = { ADDED_3_0_2 },
				}),
				honortheflame(54743, {	-- Honor the Flame — Drustvar
					["qg"] = 148934,	-- Drustvar Flame Warden
					["coord"] = { 40.2, 47.7, DRUSTVAR },
					["timeline"] = { ADDED_8_0_1 },
				}),
				honortheflame(11813, {	-- Honor the Flame — Dun Morogh
					["qg"] = 25895,	-- Dun Morogh Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 53.8, 45.2, DUN_MOROGH },
						-- #else
						{ 46.7, 46.9, DUN_MOROGH },
						-- #endif
					},
				}),
				honortheflame(11814, {	-- Honor the Flame — Duskwood
					["qg"] = 25896,	-- Duskwood Flame Warden
					["coord"] = { 73.8, 54.7, DUSKWOOD },
				}),
				honortheflame(11815, {	-- Honor the Flame — Dustwallow Marsh
					["qg"] = 25897,	-- Dustwallow Marsh Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 62.0, 40.0, DUSTWALLOW_MARSH },
						-- #else
						{ 61.8, 40.5, DUSTWALLOW_MARSH },
						-- #endif
					},
				}),
				honortheflame(11816, {	-- Honor the Flame — Elwynn Forest
					["qg"] = 25898,	-- Elwynn Forest Flame Warden
					["coord"] = { 43.5, 62.7, ELWYNN_FOREST },
				}),
				honortheflame(11817, {	-- Honor the Flame — Feralas
					["qg"] = 25899,	-- Feralas Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 47.0, 44.0, FERALAS },
						-- #else
						{ 28.3, 43.9, FERALAS },
						-- #endif
					},
				}),
				honortheflame(13489, {	-- Honor the Flame — Grizzly Hills
					["qg"] = 32805,	-- Grizzly Hills Flame Warden
					["coord"] = { 34.0, 61.0, GRIZZLY_HILLS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				honortheflame(11818, {	-- Honor the Flame — Hellfire Peninsula
					["qg"] = 25900,	-- Hellfire Peninsula Flame Warden
					["coord"] = { 62.0, 58.0, HELLFIRE_PENINSULA },
				}),
				honortheflame(11819, {	-- Honor the Flame — Hillsbrad Foothills
					["qg"] = 25901,	-- Hillsbrad Flame Warden
					["coord"] = { 50.4, 47.6, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_1 },	-- Southshore got destroyed with Cataclysm
				}),
				honortheflame(13488, {	-- Honor the Flame — Howling Fjord
					["qg"] = 32804,	-- Howling Fjord Flame Warden
					["coord"] = { 58.0, 16.0, HOWLING_FJORD },
					["timeline"] = { ADDED_3_0_2 },
				}),
				honortheflame(11820, {	-- Honor the Flame — Loch Modan
					["qg"] = 25902,	-- Loch Modan Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 32.3, 41.0, LOCH_MODAN },
						-- #else
						{ 32.6, 41.0, LOCH_MODAN },
						-- #endif
					},
				}),
				honortheflame(11821, {	-- Honor the Flame — Nagrand (Outland)
					["qg"] = 25903,	-- Nagrand Flame Warden
					["coord"] = { 49.6, 69.5, NAGRAND },
				}),
				honortheflame(11830, {	-- Honor the Flame — Netherstorm
					["qg"] = 25913,	-- Netherstorm Flame Warden
					["coord"] = { 31.0, 63.0, NETHERSTORM },
				}),
				honortheflame(28922, {	-- Honor the Flame — Northern Stranglethorn
					["qg"] = 51574,	-- Northern Stranglethorn Flame Warden
					["coord"] = { 52.0, 63.6, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(11822, {	-- Honor the Flame — Redridge Mountains
					["qg"] = 25904,	-- Redridge Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 25.0, 53.5, REDRIDGE_MOUNTAINS },
						-- #else
						{ 25.2, 59.0, REDRIDGE_MOUNTAINS },
						-- #endif
					},
				}),
				honortheflame(11823, {	-- Honor the Flame — Shadowmoon Valley (Outland)
					["qg"] = 25905,	-- Shadowmoon Valley Flame Warden
					["coord"] = { 40.0, 55.0, SHADOWMOON_VALLEY },
				}),
				honortheflame(44579, {	-- Honor the Flame — Shadowmoon Valley (WoD)
					["qg"] = 114500,	-- Shadowmoon Valley Flame Warden
					["coord"] = { 42.6, 36.0, DRAENOR_SHADOWMOON_VALLEY },
					["timeline"] = { ADDED_6_0_2 },
				}),
				honortheflame(13486, {	-- Honor the Flame — Sholazar Basin
					["qg"] = 32802,	-- Sholazar Basin Flame Warden
					["coord"] = { 48.1, 66.4, SHOLAZAR_BASIN },
					["timeline"] = { ADDED_3_0_2 },
				}),
				honortheflame(11831, {	-- Honor the Flame — Silithus
					["qg"] = 25914,	-- Silithus Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 60.0, 33.0, SILITHUS },
						-- #else
						{ 57.5, 35.2, SILITHUS },
						-- #endif
					},
				}),
				honortheflame(28926, {	-- Honor the Flame — Southern Barrens
					["qg"] = 51586,	-- Southern Barrens Flame Warden
					["coord"] = { 48.0, 72.0, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(28928, {	-- Honor the Flame — Stonetalon Mountains
					["qg"] = 51588,	-- Stonetalon Mountains Flame Warden
					["coord"] = { 49.0, 51.0, STONETALON_MOUNTAINS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(13490, {	-- Honor the Flame — Storm Peaks
					["qg"] = 32806,	-- Storm Peaks Flame Warden
					["coord"] = { 42.0, 87.0, THE_STORM_PEAKS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				honortheflame(54741, {	-- Honor the Flame — Stormsong Valley
					["qg"] = 148932,	-- Stormsong Valley Flame Warden
					["coord"] = { 35.8, 51.2, STORMSONG_VALLEY },
					["timeline"] = { ADDED_8_0_1 },
				}),
				honortheflame(44613, {	-- Honor the Flame — Suramar
					["qg"] = 114519,	-- Suramar Flame Warden
					["coord"] = { 23.0, 58.4, SURAMAR },
					["timeline"] = { ADDED_7_0_3 },
				}),
				honortheflame(28929, {	-- Honor the Flame — Swamp of Sorrows
					["qg"] = 51602,	-- Swamp of Sorrows Flame Warden
					["coord"] = { 70.1, 15.4, SWAMP_OF_SORROWS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(11833, {	-- Honor the Flame — Tanaris
					["qg"] = 25916,	-- Tanaris Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 52.6, 30.3, TANARIS },
						-- #else
						{ 52.8, 29.4, TANARIS },
						-- #endif
					},
				}),
				honortheflame(11824, {	-- Honor the Flame — Teldrassil
					["qg"] = 25906,	-- The Teldrassil Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 54.8, 52.9, TELDRASSIL },
						-- #else
						{ 55.1, 60.4, TELDRASSIL },
						-- #endif
					},
				}),
				honortheflame(11825, {	-- Honor the Flame — Terokkar Forest
					["qg"] = 25907,	-- Terokkar Forest Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						-- Coords are 54.1, 55.5 in retail currently July 2025
						{ 55.0, 55.0, TEROKKAR_FOREST },
						-- #else
						{ 54.1, 55.5, TEROKKAR_FOREST },
						-- #endif
					},
				}),
				honortheflame(11832, {	-- Honor the Flame — The Cape of Stranglethorn / Stranglethorn Vale
					["qg"] = 25915,	-- Cape of Stranglethorn Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 51.9, 67.8, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 33.9, 73.5, STRANGLETHORN_VALE },
						-- #endif
					},
				}),
				honortheflame(11826, {	-- Honor the Flame — The Hinterlands
					["qg"] = 25908,	-- The Hinterlands Flame Warden
					["coord"] = { 14.4, 50.2, THE_HINTERLANDS },
				}),
				honortheflame(54737, {	-- Honor the Flame — Tiragarde Sound
					["qg"] = 148917,	-- Tiragarde Sound Flame Warden
					["coord"] = { 76.3, 49.9, TIRAGARDE_SOUND },
					["timeline"] = { ADDED_8_0_1 },
				}),
				honortheflame(28945, {	-- Honor the Flame — Twilight Highlands
					["qg"] = 51650,	-- Twilight Highlands Flame Warden
					["coord"] = { 47.2, 29.0, TWILIGHT_HIGHLANDS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(28950, {	-- Honor the Flame — Uldum
					["qg"] = 51653,	-- Uldum Flame Warden
					["coord"] = { 53.0, 32.0, ULDUM },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(28932, {	-- Honor the Flame — Un'goro Crater
					["qg"] = 51606,	-- Un'Goro Crater Flame Warden
					["coord"] = { 60.0, 63.0, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(32510, {	-- Honor the Flame — Vale of Eternal Blossoms
					["qg"] = 69572,	-- Vale of Eternal Blossoms Flame Warden
					["coord"] = { 79.6, 37.2, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4 },
				}),
				honortheflame(11827, {	-- Honor the Flame — Western Plaguelands
					["qg"] = 25909,	-- Western Plaguelands Flame Warden
					["coord"] = { 43.5, 82.2, WESTERN_PLAGUELANDS },
				}),
				honortheflame(11583, {	-- Honor the Flame — Westfall
					["qg"] = 25910,	-- Westfall Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 44.6, 62.1, WESTFALL },
						-- #else
						{ 55.9, 53.5, WESTFALL },
						-- #endif
					},
				}),
				honortheflame(11828, {	-- Honor the Flame — Wetlands
					["qg"] = 25911,	-- Wetlands Flame Warden
					["coord"] = { 13.5, 47.1, WETLANDS },
				}),
				honortheflame(11834, {	-- Honor the Flame — Winterspring
					["qg"] = 25917,	-- Winterspring Flame Warden
					["coords"] = {
						-- #if AFTER CATA
						{ 61.2, 47.2, WINTERSPRING },
						-- #else
						{ 62.6, 35.4, WINTERSPRING },
						-- #endif
					},
				}),
				honortheflame(11829, {	-- Honor the Flame — Zangarmarsh
					["qg"] = 25912,	-- Zangarmarsh Flame Warden
					["coord"] = { 69.0, 52.0, ZANGARMARSH },
				}),
				honortheflame(13492, {	-- Honor the Flame — Zul'Drak
					["qg"] = 32808,	-- Zul'Drak Flame Warden
					["coord"] = { 41.0, 61.0, ZULDRAK },
					["timeline"] = { ADDED_3_0_2 },
				}),
			},
		}),
		n(FACTION_HEADER_HORDE, {
			["timeline"] = { ADDED_2_4_0 },
			["races"] = HORDE_ONLY,
			["groups"] = {
				honortheflame(11840, {	-- Honor the Flame — Arathi Highlands
					["qg"] = 25923,	-- Arathi Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 69.4, 42.6, ARATHI_HIGHLANDS },
						-- #else
						{ 74.2, 41.5, ARATHI_HIGHLANDS },
						-- #endif
					},
				}),
				honortheflame(11841, {	-- Honor the Flame — Ashenvale
					["qg"] = 25884,	-- Ashenvale Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 51.4, 66.1, ASHENVALE },
						-- #else
						{ 70.1, 69.3, ASHENVALE },
						-- #endif
					},
				}),
				honortheflame(28923, {	-- Honor the Flame — Azshara
					["qg"] = 51575,	-- Azshara Flame Keeper
					["coord"] = { 60.8, 53.5, AZSHARA },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(11842, {	-- Honor the Flame — Badlands
					["qg"] = 25925,	-- Badlands Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 23.1, 37.4, BADLANDS },
						-- #else
						{ 4.7, 48.6, BADLANDS },
						-- #endif
					},
				}),
				honortheflame(11843, {	-- Honor the Flame — Blade's Edge Mountains
					["qg"] = 25926,	-- Blade's Edge Flame Keeper
					["coord"] = { 50.0, 59.0, BLADES_EDGE_MOUNTAINS },
				}),
				honortheflame(28930, {	-- Honor the Flame — Blasted Lands
					["qg"] = 51603,	-- Blasted Lands Flame Keeper
					["coord"] = { 46.2, 13.8, BLASTED_LANDS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(13493, {	-- Honor the Flame — Borean Tundra
					["qg"] = 32809,	-- Borean Tundra Flame Keeper
					["coord"] = { 51.0, 12.0, BOREAN_TUNDRA },
					["timeline"] = { ADDED_3_0_2 },
				}),
				honortheflame(11844, {	-- Honor the Flame — Burning Steppes
					["qg"] = 25927,	-- Burning Steppes Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 51.1, 29.2, BURNING_STEPPES },
						-- #else
						{ 61.8, 29.1, BURNING_STEPPES },
						-- #endif
					},
				}),
				honortheflame(13499, {	-- Honor the Flame — Crystalsong Forest
					["qg"] = 32815,	-- Crystalsong Forest Flame Keeper
					["coord"] = { 80.0, 53.0, CRYSTALSONG_FOREST },
					["timeline"] = { ADDED_3_0_2 },
				}),
				honortheflame(11845, {	-- Honor the Flame — Desolace
					["qg"] = 25928,	-- Desolace Flame Keeper
					["coord"] = { 26.1, 76.9, DESOLACE },
				}),
				honortheflame(13495, {	-- Honor the Flame — Dragonblight
					["qg"] = 32811,	-- Dragonblight Flame Keeper
					["coord"] = { 39.0, 48.0, DRAGONBLIGHT },
					["timeline"] = { ADDED_3_0_2 },
				}),
				honortheflame(11846, {	-- Honor the Flame — Durotar
					["qg"] = 25929,	-- Durotar Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 52.2, 47.3, DUROTAR },
						-- #else
						{ 52.0, 47.0, DUROTAR },
						-- #endif
					},
				}),
				honortheflame(11847, {	-- Honor the Flame — Dustwallow Marsh
					["qg"] = 25930,	-- Dustwallow Marsh Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 33.0, 30.0, DUSTWALLOW_MARSH },
						-- #else
						{ 33.4, 30.9, DUSTWALLOW_MARSH },
						-- #endif
					},
				}),
				honortheflame(11848, {	-- Honor the Flame — Eversong Woods
					["qg"] = 25931,	-- Eversong Woods Flame Keeper
					["coord"] = { 46.4, 50.6, EVERSONG_WOODS },
				}),
				honortheflame(11849, {	-- Honor the Flame — Feralas
					["qg"] = 25932,	-- Feralas Flame Keeper
					["coord"] = { 72.4, 47.8, FERALAS },
				}),
				honortheflame(44580, {	-- Honor the Flame — Frostfire Ridge
					["qg"] = 114499,	-- Frostfire Ridge Flame Keeper
					["coord"] = { 72.6, 65.0, FROSTFIRE_RIDGE },
					["timeline"] = { ADDED_6_0_2 },
				}),
				honortheflame(11850, {	-- Honor the Flame — Ghostlands
					["qg"] = 25933,	-- Ghostlands Flame Keeper
					["coord"] = { 46.9, 26.3, GHOSTLANDS },
				}),
				honortheflame(13497, {	-- Honor the Flame — Grizzly Hills
					["qg"] = 32813,	-- Grizzly Hills Flame Keeper
					["coord"] = { 19.0, 61.0, GRIZZLY_HILLS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				honortheflame(11851, {	-- Honor the Flame — Hellfire Peninsula
					["qg"] = 25934,	-- Hellfire Peninsula Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 55.0, 40.0, HELLFIRE_PENINSULA },
						-- #else
						{ 57.1, 42.0, HELLFIRE_PENINSULA },
						-- #endif
					},
				}),
				honortheflame(11853, {	-- Honor the Flame — Hillsbrad Foothills
					["qg"] = 25935,	-- Hillsbrad Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 54.7, 50.1, HILLSBRAD_FOOTHILLS },
						-- #else
						{ 58.6, 25.4, HILLSBRAD_FOOTHILLS },
						-- #endif
					},
				}),
				honortheflame(13496, {	-- Honor the Flame — Howling Fjord
					["qg"] = 32812,	-- Howling Fjord Flame Keeper
					["coord"] = { 48.0, 13.0, HOWLING_FJORD },
					["timeline"] = { ADDED_3_0_2 },
				}),
				honortheflame(11852, {	-- Honor the Flame — Mulgore
					["qg"] = 25936,	-- Mulgore Flame Keeper
					["coord"] = { 51.8, 59.3, MULGORE },
				}),
				honortheflame(11854, {	-- Honor the Flame — Nagrand (Outland)
					["qg"] = 25937,	-- Nagrand Flame Keeper
					["coord"] = { 51.0, 34.0, NAGRAND },
				}),
				honortheflame(54747, {	-- Honor the Flame — Nazmir
					["qg"] = 148950,	-- Nazmir Flame Keeper
					["coord"] = { 40.0, 74.3, NAZMIR },
					["timeline"] = { ADDED_8_0_1 },
				}),
				honortheflame(11835, {	-- Honor the Flame — Netherstorm
					["qg"] = 25918,	-- Netherstorm Flame Keeper
					["coord"] = { 32.0, 68.0, NETHERSTORM },
				}),
				honortheflame(11859, {	-- Honor the Flame — Northern Barrens / The Barrens
					["qg"] = 25943,	-- The Northern Barrens Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 50.0, 55.0, NORTHERN_BARRENS },
						-- #else
						{ 52.2, 28.0, THE_BARRENS },
						-- #endif
					},
				}),
				honortheflame(28924, {	-- Honor the Flame — Northern Stranglethorn
					["qg"] = 51582,	-- Northern Stranglethorn Vale Flame Keeper
					["coord"] = { 40.6, 50.9, NORTHERN_STRANGLETHORN },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(11855, {	-- Honor the Flame — Shadowmoon Valley (Outland)
					["qg"] = 25938,	-- Shadowmoon Valley Flame Keeper
					["coord"] = { 33.4, 30.5, SHADOWMOON_VALLEY },
				}),
				honortheflame(13494, {	-- Honor the Flame — Sholazar Basin
					["qg"] = 32810,	-- Sholazar Basin Flame Keeper
					["coord"] = { 47.0, 62.0, SHOLAZAR_BASIN },
					["timeline"] = { ADDED_3_0_2 },
				}),
				honortheflame(11836, {	-- Honor the Flame — Silithus
					["qg"] = 25919,	-- Silithus Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 50.9, 41.3, SILITHUS },
						-- #else
						{ 46.5, 44.4, SILITHUS },
						-- #endif
					},
				}),
				honortheflame(11584, {	-- Honor the Flame — Silverpine Forest
					["qg"] = 25939,	-- Silverpine Forest Flame Keeper
					["coord"] = { 49.6, 38.2, SILVERPINE_FOREST },
				}),
				honortheflame(28927, {	-- Honor the Flame — Southern Barrens
					["qg"] = 51587,	-- The Southern Barrens Flame Keeper
					["coord"] = { 41.0, 68.0, SOUTHERN_BARRENS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(11856, {	-- Honor the Flame — Stonetalon Mountains
					["qg"] = 25940,	-- Stonetalon Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 52.9, 62.5, STONETALON_MOUNTAINS },
						-- #else
						{ 50.5, 60.5, STONETALON_MOUNTAINS },
						-- #endif
					},
				}),
				honortheflame(13498, {	-- Honor the Flame — Storm Peaks
					["qg"] = 32814,	-- Storm Peaks Flame Keeper
					["coord"] = { 40.0, 86.0, THE_STORM_PEAKS },
					["timeline"] = { ADDED_3_0_2 },
				}),
				honortheflame(44614, {	-- Honor the Flame — Suramar
					["qg"] = 114518,	-- Suramar Flame Keeper
					["coord"] = { 30.4, 45.4, SURAMAR },
					["timeline"] = { ADDED_7_0_3 },
				}),
				honortheflame(11857, {	-- Honor the Flame — Swamp of Sorrows
					["qg"] = 25941,	-- Swamp of Sorrows Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 76.3, 13.8, SWAMP_OF_SORROWS },
						-- #else
						{ 46.7, 47.0, SWAMP_OF_SORROWS },
						-- #endif
					},
				}),
				honortheflame(11838, {	-- Honor the Flame — Tanaris
					["qg"] = 25921,	-- Tanaris Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 49.8, 27.9, TANARIS },
						-- #else
						{ 49.8, 26.9, TANARIS },
						-- #endif
					},
				}),
				honortheflame(11858, {	-- Honor the Flame — Terokkar Forest
					["qg"] = 25942,	-- Terokkar Forest Flame Keeper
					["coord"] = { 52.0, 43.0, TEROKKAR_FOREST },
				}),
				honortheflame(11837, {	-- Honor the Flame — The Cape of Stranglethorn / Stranglethorn Vale
					["qg"] = 25920,	-- Cape of Stranglethorn Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 50.4, 70.4, THE_CAPE_OF_STRANGLETHORN },
						-- #else
						{ 32.9, 75.2, STRANGLETHORN_VALE },
						-- #endif
					},
				}),
				honortheflame(11860, {	-- Honor the Flame — The Hinterlands
					["qg"] = 25944,	-- The Hinterlands Flame Keeper
					["coord"] = { 76.6, 75.0, THE_HINTERLANDS },
				}),
				honortheflame(11861, {	-- Honor the Flame — Thousand Needles
					["qg"] = 25945,	-- Thousand Needles Flame Warden
					["coord"] = { 42.3, 52.9, THOUSAND_NEEDLES },
					["timeline"] = { REMOVED_4_0_1 },	-- Freewind Post got destroyed with Cataclysm
				}),
				honortheflame(11862, {	-- Honor the Flame — Tirisfal Glades
					["qg"] = 25946,	-- Tirisfal Glades Flame Keeper
					["coord"] = { 57.2, 51.8, TIRISFAL_GLADES },
				}),
				honortheflame(28946, {	-- Honor the Flame — Twilight Highlands
					["qg"] = 51651,	-- Twilight Highlands Flame Keeper
					["coord"] = { 53.1, 46.2, TWILIGHT_HIGHLANDS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(28949, {	-- Honor the Flame — Uldum
					["qg"] = 51652,	-- Uldum Flame Keeper
					["coord"] = { 53.2, 34.5, ULDUM },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(28933, {	-- Honor the Flame — Un'goro Crater
					["qg"] = 51607,	-- Un'Goro Flame Keeper
					["coord"] = { 56.0, 66.0, UNGORO_CRATER },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(32509, {	-- Honor the Flame — Vale of Eternal Blossoms
					["qg"] = 69551,	-- Vale of Eternal Blossoms Flame Keeper
					["coord"] = { 77.8, 33.1, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4 },
				}),
				honortheflame(54750, {	-- Honor the Flame — Vol'dun
					["qg"] = 148986,	-- Vol'dun Flame Keeper
					["coord"] = { 56.0, 47.8, VOLDUN },
					["timeline"] = { ADDED_8_0_1 },
				}),
				honortheflame(28931, {	-- Honor the Flame — Western Plaguelands
					["qg"] = 51604,	-- Western Plaguelands Flame Keeper
					["coord"] = { 29.2, 57.3, WESTERN_PLAGUELANDS },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(11839, {	-- Honor the Flame — Winterspring
					["qg"] = 25922,	-- Winterspring Flame Keeper
					["coords"] = {
						-- #if AFTER CATA
						{ 58.1, 47.5, WINTERSPRING },
						-- #else
						{ 59.9, 35.6, WINTERSPRING },
						-- #endif
					},
				}),
				honortheflame(11863, {	-- Honor the Flame — Zangarmarsh
					["qg"] = 25947,	-- Zangarmarsh Flame Keeper
					["coord"] = { 35.3, 51.6, ZANGARMARSH },
				}),
				honortheflame(54745, {	-- Honor the Flame — Zuldazar
					["qg"] = 148944,	-- Zuldazar Flame Keeper
					["coord"] = { 53.3, 48.1, ZULDAZAR },
					["timeline"] = { ADDED_8_0_1 },
				}),
				honortheflame(13500, {	-- Honor the Flame — Zul'Drak
					["qg"] = 32816,	-- Zul'Drak Flame Keeper
					["coord"] = { 43.0, 71.0, ZULDRAK },
					["timeline"] = { ADDED_3_0_2 },
				}),
			},
		}),
		n(FACTION_HEADER_NEUTRAL, {
			["timeline"] = { ADDED_4_0_1 },
			["groups"] = {
				honortheflame(44574, {	-- Honor the Flame — Azsuna
					["qg"] = 114492,	-- Azsuna Flame Guardian
					["coord"] = { 48.2, 29.6, AZSUNA },
					["timeline"] = { ADDED_7_0_3 },
				}),
				honortheflame(29036, {	-- Honor the Flame — Deepholm
					["qg"] = 51698,	-- Deepholm Flame Guardian
					["coord"] = { 49.4, 51.4, DEEPHOLM },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(32497, {	-- Honor the Flame — Dread Wastes
					["qg"] = 69522,	-- Dread Wastes Flame Guardian
					["coord"] = { 56.1, 69.5, DREAD_WASTES },
					["timeline"] = { ADDED_5_0_4 },
				}),
				honortheflame(44573, {	-- Honor the Flame — Gorgrond
					["qg"] = 114491,	-- Gorgrond Flame Guardian
					["coord"] = { 43.8, 93.8, GORGROND },
					["timeline"] = { ADDED_6_0_2 },
				}),
				honortheflame(44576, {	-- Honor the Flame — Highmountain
					["qg"] = 114494,	-- Highmountain Flame Guardian
					["coord"] = { 55.4, 84.4, HIGHMOUNTAIN },
					["timeline"] = { ADDED_7_0_3 },
				}),
				honortheflame(29030, {	-- Honor the Flame — Hyjal
					["qg"] = 51682,	-- Hyjal Flame Guardian
					["coord"] = { 62.8, 22.6, MOUNT_HYJAL },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(32498, {	-- Honor the Flame — Jade Forest
					["qg"] = 69529,	-- Jade Forest Flame Guardian
					["coord"] = { 47.2, 47.2, THE_JADE_FOREST },
					["timeline"] = { ADDED_5_0_4 },
				}),
				honortheflame(32499, {	-- Honor the Flame — Krasarang Wilds
					["qg"] = 69533,	-- Krasarang Wilds Flame Guardian
					["coord"] = { 73.9, 9.4, KRASARANG_WILDS },
					["timeline"] = { ADDED_5_0_4 },
				}),
				honortheflame(32500, {	-- Honor the Flame — Kun-Lai Summit
					["qg"] = 69535,	-- Kun-Lai Summit Flame Guardian
					["coord"] = { 71.1, 90.9, KUN_LAI_SUMMIT },
					["timeline"] = { ADDED_5_0_4 },
				}),
				honortheflame(44572, {	-- Honor the Flame — Nagrand (WoD)
					["qg"] = 114490,	-- Nagrand Flame Guardian
					["coord"] = { 80.4, 47.6, DRAENOR_NAGRAND },
					["timeline"] = { ADDED_6_0_2 },
				}),
				honortheflame(75617, {	-- Honor the Flame — Ohn'ahran Plains
					["qg"] = 204413,	-- Ohn'ahran Plains Flame Guardian
					["coord"] = { 63.9, 35.0, OHNAHRAN_PLAINS },
					["timeline"] = { ADDED_10_1_0 },
				}),
				honortheflame(44570, {	-- Honor the Flame — Spires of Arak
					["qg"] = 114488,	-- Spires of Arak Flame Guardian
					["coord"] = { 48.0, 44.6, SPIRES_OF_ARAK },
					["timeline"] = { ADDED_6_0_2 },
				}),
				honortheflame(44577, {	-- Honor the Flame — Stormheim
					["qg"] = 114496,	-- Stormheim Flame Guardian
					["coord"] = { 32.4, 42.2, STORMHEIM },
					["timeline"] = { ADDED_7_0_3 },
				}),
				honortheflame(44571, {	-- Honor the Flame — Talador
					["qg"] = 114489,	-- Talador Flame Guardian
					["coord"] = { 43.4, 71.8, TALADOR },
					["timeline"] = { ADDED_6_0_2 },
				}),
				honortheflame(75640, {	-- Honor the Flame — The Azure Span
					["qg"] = 204414,	-- Azure Span Flame Guardian
					["coord"] = { 12.2, 47.6, THE_AZURE_SPAN },
					["timeline"] = { ADDED_10_1_0 },
				}),
				honortheflame(75647, {	-- Honor the Flame — The Forbidden Reach
					["qg"] = 204416,	-- Forbidden Reach Flame Guardian
					["coord"] = { 35.0, 60.9, THE_FORBIDDEN_REACH },
					["timeline"] = { ADDED_10_1_0 },
				}),
				honortheflame(75398, {	-- Honor the Flame — The Waking Shores
					["qg"] = 203749,	-- Waking Shores Flame Guardian
					["coord"] = { 46.0, 82.9, THE_WAKING_SHORES },
					["timeline"] = { ADDED_10_1_0 },
				}),
				honortheflame(32501, {	-- Honor the Flame — Townlong Steppes
					["qg"] = 69536,	-- Townlong Steppes Flame Guardian
					["coord"] = { 71.5, 56.3, TOWNLONG_STEPPES },
					["timeline"] = { ADDED_5_0_4 },
				}),
				honortheflame(75645, {	-- Honor the Flame — Valdrakken
					["qg"] = 204415,	-- Thaldraszus Flame Guardian
					["coord"] = { 53.4, 62.3, VALDRAKKEN },
					["timeline"] = { ADDED_10_1_0 },
				}),
				honortheflame(32502, {	-- Honor the Flame — Valley of the Four Winds
					["qg"] = 69550,	-- Valley of the Four Winds Flame Guardian
					["coord"] = { 51.8, 51.4, VALLEY_OF_THE_FOUR_WINDS },
					["timeline"] = { ADDED_5_0_4 },
				}),
				honortheflame(44575, {	-- Honor the Flame — Val'sharah
					["qg"] = 114493,	-- Val'sharah Flame Guardian
					["coord"] = { 44.8, 58.0, VALSHARAH },
					["timeline"] = { ADDED_7_0_3 },
				}),
				honortheflame(29031, {	-- Honor the Flame — Vashj'ir
					["qg"] = 51697,	-- Vashj'ir Flame Guardian
					["coord"] = { 49.4, 42.0, VASHJIR_SHIMMERING_EXPANSE },
					["timeline"] = { ADDED_4_0_1 },
				}),
				honortheflame(75650, {	-- Honor the Flame — Zaralek Cavern
					["qg"] = 204417,	-- Zaralek Cavern Flame Guardian
					["coord"] = { 55.2, 55.4, ZARALEK_CAVERN },
					["timeline"] = { ADDED_10_1_0 },
				}),
				honortheflame(87356, {	-- Honor the Flame - Azj-Kahet
					["qg"] = 238339,	-- Azj-Kahet Flame Guardian
					["coord"] = { 55.54, 43.43, AZJ_KAHET },
					["timeline"] = { ADDED_11_1_7 },
				}),
				honortheflame(87355, {	-- Honor the Flame - Hallowfall
					["qg"] = 238338,	-- Hallowfall Guardian
					["coord"] = { 42.45, 51.59, HALLOWFALL },
					["timeline"] = { ADDED_11_1_7 },
				}),
				honortheflame(87342, {	-- Honor the Flame - Isle of Dorn
					["qg"] = 238236,	-- Isle of Dorn Flame Guardian
					["coord"] = { 48.52, 51.66, DORNOGAL },
					["timeline"] = { ADDED_11_1_7 },
				}),
				honortheflame(87357, {	-- Honor the Flame - The Ringing Deeps
					["qg"] = 238340,	-- The Ringing Deeps Guardian
					["coord"] = { 43.65, 32.59, THE_RINGING_DEEPS },
					["timeline"] = { ADDED_11_1_7 },
				}),
			},
		}),
	}),
	n(VENDORS, {
		n(26123, {	-- Midsummer Supplier (Alliance Vendor)
			["coords"] = {
				-- #if AFTER CATA
				{ 49.2, 71.8, STORMWIND_CITY },
				{ 64.6, 26.6, IRONFORGE },
				{ 62.0, 48.6, DARNASSUS },
				{ 42.6, 25.6, THE_EXODAR },
				-- #else
				{ 38.0, 61.6, STORMWIND_CITY },
				{ 64.8, 26.0, IRONFORGE },
				{ 56.0, 92.2, TELDRASSIL },
				{ 42.5, 26.0, THE_EXODAR },
				-- #endif
			},
			["timeline"] = { ADDED_2_4_0 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = MERCHANT_GROUPS,
		}),
		n(26124, {	-- Midsummer Merchant (Horde Vendor)
			["coords"] = {
				-- #if AFTER CATA
				{ 47.8, 37.4, ORGRIMMAR },
				{ 19.8, 24.6, THUNDER_BLUFF },
				{ 67.8, 11.2, UNDERCITY },
				{ 70.6, 44.0, SILVERMOON_CITY },
				-- #else
				{ 47.4, 39.2, ORGRIMMAR },
				{ 20.9, 24.2, THUNDER_BLUFF },
				{ 68.1, 11.2, UNDERCITY },
				{ 70.4, 44.3, SILVERMOON_CITY },
				-- #endif
			},
			["timeline"] = { ADDED_2_4_0 },
			["races"] = HORDE_ONLY,
			["groups"] = MERCHANT_GROUPS,
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.TBC, bubbleDownSelf({ ["timeline"] = { ADDED_2_4_0 } }, {
		applyevent(EVENTS.MIDSUMMER_FIRE_FESTIVAL, n(MIDSUMMER_FIRE_FESTIVAL_HEADER, {
			n(QUESTS, {
				q(11976),	-- Cross completes on completion of Shards of Ahune
			}),
		})),
	})),
	expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 } }, {
		applyevent(EVENTS.MIDSUMMER_FIRE_FESTIVAL, n(MIDSUMMER_FIRE_FESTIVAL_HEADER, {
			n(QUESTS, {
				q(28761),	-- obsolete "Honor the Flame" quest according to Wowhead, triggered together with "Honor the Flame" 11834 in Winterspring
			}),
		})),
	})),
});

-- Remove the holiday flag.
HUGE_SNOWBALL.u = nil;
