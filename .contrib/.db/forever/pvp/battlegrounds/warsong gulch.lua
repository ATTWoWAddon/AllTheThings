-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

local ALLIANCE_FIGHT_FOR_WSG_TIER_1 = {
	8372,	-- Fight for Warsong Gulch
	8399,	-- Fight for Warsong Gulch
	8400,	-- Fight for Warsong Gulch
	8401,	-- Fight for Warsong Gulch
	8402,	-- Fight for Warsong Gulch
	8403,	-- Fight for Warsong Gulch
};
local ALLIANCE_FIGHT_FOR_WSG_TIER_2 = {	-- Repeatables
	8386,	-- Fight for Warsong Gulch
	8404,	-- Fight for Warsong Gulch
	8405,	-- Fight for Warsong Gulch
	8406,	-- Fight for Warsong Gulch
	8407,	-- Fight for Warsong Gulch
	8408,	-- Fight for Warsong Gulch
};
local HORDE_BATTLE_FOR_WSG_TIER_1 = {
	8368,	-- Battle of Warsong Gulch
	8426,	-- Battle of Warsong Gulch
	8427,	-- Battle of Warsong Gulch
	8428,	-- Battle of Warsong Gulch
	8429,	-- Battle of Warsong Gulch
	8430,	-- Battle of Warsong Gulch
};
local HORDE_BATTLE_FOR_WSG_TIER_2 = {	-- Repeatables
	8389,	-- Battle of Warsong Gulch
	8431,	-- Battle of Warsong Gulch
	8432,	-- Battle of Warsong Gulch
	8433,	-- Battle of Warsong Gulch
	8434,	-- Battle of Warsong Gulch
	8435,	-- Battle of Warsong Gulch
};

ExportDB.OnTooltipDB.ForWarsongGulch = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation >= 0 and reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		addRepInfo(tooltipInfo, reputation, "Concerted Efforts", 100, 42000);
		local repPerFlagCapture = 35;
		addRepInfo(tooltipInfo, reputation, "Flags Captured", repPerFlagCapture, 42000);
		tinsert(tooltipInfo, { left = " Each capture is worth " .. repPerFlagCapture .. " rep, +10 on WSG Weekend.", r = 1, g = 1, b = 1 });
	end
end]];

battleground(MAP.WARSONG_GULCH, {
	["lore"] = "Warsong Gulch is a 10v10 capture-the-flag style battleground that traces the conflict between the Silverwing Sentinels seeking revenge on the orcs that chopped down the Ashenvale forest during the Third War.",
	["timeline"] = { TIMELINE.ADDED_1_60_1 },
	["icon"] = 236350,
	["groups"] = {
		n(ACHIEVEMENTS, {
			-- CRIEVE NOTE: Not sure which one is which.
			ach(62048, {	-- Master of Warsong Gulch
				--["races"] = HORDE_ONLY,
			}),
			ach(64028, {	-- Master of Warsong Gulch
				--["races"] = ALLIANCE_ONLY,
			}),
		}),
		n(FACTIONS, {
			faction(FACTION_SILVERWING_SENTINELS, {	-- Silverwing Sentinels
				["icon"] = 132279,
				["OnTooltip"] = [[_.OnTooltipDB.ForWarsongGulch]],
				["maps"] = { MAP.ASHENVALE },
				["races"] = ALLIANCE_ONLY,
			}),
			faction(FACTION_WARSONG_OUTRIDERS, {	-- Warsong Outriders
				["icon"] = 132366,
				["OnTooltip"] = [[_.OnTooltipDB.ForWarsongGulch]],
				["maps"] = { MAP.ASHENVALE },
				["races"] = HORDE_ONLY,
			}),
		}),
		n(QUESTS, {
			q(8368, {	-- Battle of Warsong Gulch
				["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
				["qg"] = 15350,	-- Horde Warbringer
				["coord"] = HORDE_WARBRINGER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = HORDE_ONLY,
				["lvl"] = { 10, 19 },
			}),
			q(8426, {	-- Battle of Warsong Gulch
				["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
				["qg"] = 15350,	-- Horde Warbringer
				["coord"] = HORDE_WARBRINGER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = HORDE_ONLY,
				["lvl"] = { 20, 29 },
			}),
			q(8427, {	-- Battle of Warsong Gulch
				["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
				["qg"] = 15350,	-- Horde Warbringer
				["coord"] = HORDE_WARBRINGER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = HORDE_ONLY,
				["lvl"] = { 30, 39 },
			}),
			q(8428, {	-- Battle of Warsong Gulch
				["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
				["qg"] = 15350,	-- Horde Warbringer
				["coord"] = HORDE_WARBRINGER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = HORDE_ONLY,
				["lvl"] = { 40, 49 },
			}),
			q(8429, {	-- Battle of Warsong Gulch
				["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
				["qg"] = 15350,	-- Horde Warbringer
				["coord"] = HORDE_WARBRINGER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = HORDE_ONLY,
				["lvl"] = { 50, 59 },
			}),
			q(8430, {	-- Battle of Warsong Gulch
				["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
				["qg"] = 15350,	-- Horde Warbringer
				["coord"] = HORDE_WARBRINGER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = HORDE_ONLY,
				["lvl"] = { 60, 69 },
			}),
			q(8389, {	-- Battle of Warsong Gulch
				["sourceQuest"] = 8368,	-- Battle of Warsong Gulch
				["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
				["qg"] = 15350,	-- Horde Warbringer
				["coord"] = HORDE_WARBRINGER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = { 10, 19 },
			}),
			q(8431, {	-- Battle of Warsong Gulch
				["sourceQuest"] = 8426,	-- Battle of Warsong Gulch
				["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
				["qg"] = 15350,	-- Horde Warbringer
				["coord"] = HORDE_WARBRINGER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = { 20, 29 },
			}),
			q(8432, {	-- Battle of Warsong Gulch
				["sourceQuest"] = 8427,	-- Battle of Warsong Gulch
				["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
				["qg"] = 15350,	-- Horde Warbringer
				["coord"] = HORDE_WARBRINGER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = { 30, 39 },
			}),
			q(8433, {	-- Battle of Warsong Gulch
				["sourceQuest"] = 8428,	-- Battle of Warsong Gulch
				["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
				["qg"] = 15350,	-- Horde Warbringer
				["coord"] = HORDE_WARBRINGER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = { 40, 49 },
			}),
			q(8434, {	-- Battle of Warsong Gulch
				["sourceQuest"] = 8429,	-- Battle of Warsong Gulch
				["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
				["qg"] = 15350,	-- Horde Warbringer
				["coord"] = HORDE_WARBRINGER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = { 50, 59 },
			}),
			q(8435, {	-- Battle of Warsong Gulch
				["sourceQuest"] = 8430,	-- Battle of Warsong Gulch
				["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
				["qg"] = 15350,	-- Horde Warbringer
				["coord"] = HORDE_WARBRINGER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = HORDE_ONLY,
				["repeatable"] = true,
				["lvl"] = { 60, 69 },
			}),
			q(8372, {	-- Fight for Warsong Gulch
				["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
				["qg"] = 15351,	-- Alliance Brigadier General
				["coord"] = ALLIANCE_BRIGADIER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = ALLIANCE_ONLY,
				["lvl"] = { 10, 19 },
			}),
			q(8399, {	-- Fight for Warsong Gulch
				["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
				["qg"] = 15351,	-- Alliance Brigadier General
				["coord"] = ALLIANCE_BRIGADIER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = ALLIANCE_ONLY,
				["lvl"] = { 20, 29 },
			}),
			q(8400, {	-- Fight for Warsong Gulch
				["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
				["qg"] = 15351,	-- Alliance Brigadier General
				["coord"] = ALLIANCE_BRIGADIER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = ALLIANCE_ONLY,
				["lvl"] = { 30, 39 },
			}),
			q(8401, {	-- Fight for Warsong Gulch
				["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
				["qg"] = 15351,	-- Alliance Brigadier General
				["coord"] = ALLIANCE_BRIGADIER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = ALLIANCE_ONLY,
				["lvl"] = { 40, 49 },
			}),
			q(8402, {	-- Fight for Warsong Gulch
				["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
				["qg"] = 15351,	-- Alliance Brigadier General
				["coord"] = ALLIANCE_BRIGADIER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = ALLIANCE_ONLY,
				["lvl"] = { 50, 59 },
			}),
			q(8403, {	-- Fight for Warsong Gulch
				["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
				["qg"] = 15351,	-- Alliance Brigadier General
				["coord"] = ALLIANCE_BRIGADIER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = ALLIANCE_ONLY,
				["lvl"] = { 60, 69 },
			}),
			q(8386, {	-- Fight for Warsong Gulch
				["sourceQuest"] = 8372,	-- Fight for Warsong Gulch
				["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
				["qg"] = 15351,	-- Alliance Brigadier General
				["coord"] = ALLIANCE_BRIGADIER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = { 10, 19 },
			}),
			q(8404, {	-- Fight for Warsong Gulch
				["sourceQuest"] = 8399,	-- Fight for Warsong Gulch
				["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
				["qg"] = 15351,	-- Alliance Brigadier General
				["coord"] = ALLIANCE_BRIGADIER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = { 20, 29 },
			}),
			q(8405, {	-- Fight for Warsong Gulch
				["sourceQuest"] = 8400,	-- Fight for Warsong Gulch
				["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
				["qg"] = 15351,	-- Alliance Brigadier General
				["coord"] = ALLIANCE_BRIGADIER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = { 30, 39 },
			}),
			q(8406, {	-- Fight for Warsong Gulch
				["sourceQuest"] = 8401,	-- Fight for Warsong Gulch
				["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
				["qg"] = 15351,	-- Alliance Brigadier General
				["coord"] = ALLIANCE_BRIGADIER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = { 40, 49 },
			}),
			q(8407, {	-- Fight for Warsong Gulch
				["sourceQuest"] = 8402,	-- Fight for Warsong Gulch
				["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
				["qg"] = 15351,	-- Alliance Brigadier General
				["coord"] = ALLIANCE_BRIGADIER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = { 50, 59 },
			}),
			q(8408, {	-- Fight for Warsong Gulch
				["sourceQuest"] = 8403,	-- Fight for Warsong Gulch
				["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
				["qg"] = 15351,	-- Alliance Brigadier General
				["coord"] = ALLIANCE_BRIGADIER_COORDS,
				["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				["races"] = ALLIANCE_ONLY,
				["repeatable"] = true,
				["lvl"] = { 60, 69 },
			}),
			q(7868, {	-- Outrider Advanced Care Package
				["qg"] = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
				["coord"] = { 46.6, 8.4, MAP.THE_BARRENS },
				["minReputation"] = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },	-- Warsong Outriders, Friendly.
				["races"] = HORDE_ONLY,
				["lvl"] = 45,
				["groups"] = {
					i(19153),	-- Outrider Advanced Care Package
				},
			}),
			q(7866, {	-- Outrider Basic Care Package
				["qg"] = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
				["coord"] = { 46.6, 8.4, MAP.THE_BARRENS },
				["minReputation"] = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },	-- Warsong Outriders, Friendly.
				["races"] = HORDE_ONLY,
				["lvl"] = { 25, 34 },
				["groups"] = {
					i(19154),	-- Outrider Basic Care Package
				},
			}),
			q(7867, {	-- Outrider Standard Care Package
				["qg"] = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
				["coord"] = { 46.6, 8.4, MAP.THE_BARRENS },
				["minReputation"] = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },	-- Warsong Outriders, Friendly.
				["races"] = HORDE_ONLY,
				["lvl"] = { 35, 44 },
				["groups"] = {
					i(19155),	-- Outrider Standard Care Package
				},
			}),
			q(7865, {	-- Sentinel Advanced Care Package
				["qg"] = 14753,	-- Illiyana Moonblaze
				["coord"] = { 61.6, 83.8, MAP.ASHENVALE },
				["minReputation"] = { FACTION_SILVERWING_SENTINELS, FRIENDLY },	-- Silverwing Sentinels, Friendly.
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 45,
				["groups"] = {
					i(19152),	-- Sentinel Advanced Care Package
				},
			}),
			q(7863, {	-- Sentinel Basic Care Package
				["qg"] = 14753,	-- Illiyana Moonblaze
				["coord"] = { 61.6, 83.8, MAP.ASHENVALE },
				["minReputation"] = { FACTION_SILVERWING_SENTINELS, FRIENDLY },	-- Silverwing Sentinels, Friendly.
				["races"] = ALLIANCE_ONLY,
				["lvl"] = { 25, 34 },
				["groups"] = {
					i(19150),	-- Sentinel Basic Care Package
				},
			}),
			q(7864, {	-- Sentinel Standard Care Package
				["qg"] = 14753,	-- Illiyana Moonblaze
				["coord"] = { 61.6, 83.8, MAP.ASHENVALE },
				["minReputation"] = { FACTION_SILVERWING_SENTINELS, FRIENDLY },	-- Silverwing Sentinels, Friendly.
				["races"] = ALLIANCE_ONLY,
				["lvl"] = { 35, 44 },
				["groups"] = {
					i(19151),	-- Sentinel Standard Care Package
				},
			}),
		}),
		n(REWARDS, {
			i(20558),	-- Warsong Gulch Mark of Honor
		}),
		n(VENDORS, {
			n(14754, {	-- Kelm Hargunth <Warsong Supply Officer>
				["coord"] = { 46.6, 8.4, MAP.THE_BARRENS },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(19505),	-- Warsong Battle Tabard
					i(19566),	-- Advisor's Gnarled Staff
					i(19567),	-- Advisor's Gnarled Staff
					i(19568),	-- Advisor's Gnarled Staff
					i(19569),	-- Advisor's Gnarled Staff
					i(20425),	-- Advisor's Gnarled Staff
					i(19550),	-- Legionnaire's Sword
					i(19551),	-- Legionnaire's Sword
					i(19552),	-- Legionnaire's Sword
					i(19553),	-- Legionnaire's Sword
					i(20430),	-- Legionnaire's Sword
					i(19558),	-- Outrider's Bow
					i(19559),	-- Outrider's Bow
					i(19560),	-- Outrider's Bow
					i(19561),	-- Outrider's Bow
					i(20437),	-- Outrider's Bow
					i(19542),	-- Scout's Blade
					i(19543),	-- Scout's Blade
					i(19544),	-- Scout's Blade
					i(19545),	-- Scout's Blade
					i(20441),	-- Scout's Blade
					i(19534),	-- Scout's Medallion
					i(19535),	-- Scout's Medallion
					i(19536),	-- Scout's Medallion
					i(19537),	-- Scout's Medallion
					i(20442),	-- Scout's Medallion
					i(19526),	-- Battle Healer's Cloak
					i(19527),	-- Battle Healer's Cloak
					i(19528),	-- Battle Healer's Cloak
					i(19529),	-- Battle Healer's Cloak
					i(20427),	-- Battle Healer's Cloak
					i(19578),	-- Berserker Bracers
					i(19580),	-- Berserker Bracers
					i(19581),	-- Berserker Bracers
					i(19595),	-- Dryad's Wrist Bindings
					i(19596),	-- Dryad's Wrist Bindings
					i(19597),	-- Dryad's Wrist Bindings
					i(19587),	-- Forest Stalker's Bracers
					i(19589),	-- Forest Stalker's Bracers
					i(19590),	-- Forest Stalker's Bracers
					i(19582),	-- Windtalker's Wristguards
					i(19583),	-- Windtalker's Wristguards
					i(19584),	-- Windtalker's Wristguards
					i(22673),	-- Outrider's Chain Leggings
					i(30498),	-- Outrider's Lamellar Legguards [Currently Sold for Gold, may change in the future!]
					i(22740),	-- Outrider's Leather Pants
					i(22741),	-- Outrider's Lizardhide Pants
					i(22676),	-- Outrider's Mail Leggings
					i(22651),	-- Outrider's Plate Legguards [Currently Sold for Gold, may change in the future!]
					i(22747),	-- Outrider's Silk Leggings
					i(19518),	-- Advisor's Ring
					i(19519),	-- Advisor's Ring
					i(19520),	-- Advisor's Ring
					i(19521),	-- Advisor's Ring
					i(20426),	-- Advisor's Ring
					i(19510),	-- Legionnaire's Band
					i(19511),	-- Legionnaire's Band
					i(19512),	-- Legionnaire's Band
					i(19513),	-- Legionnaire's Band
					i(20429),	-- Legionnaire's Band
					i(21567),	-- Rune of Duty
					i(21568),	-- Rune of Duty
					i(21565),	-- Rune of Perfection
					i(21566),	-- Rune of Perfection
				},
			}),
			n(14753, {	-- Illiyana Moonblaze <Silverwing Supply Officer>
				["coord"] = { 61.6, 83.8, MAP.ASHENVALE },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(19506),	-- Silverwing Battle Tabard
					i(19570),	-- Lorekeeper's Staff
					i(19571),	-- Lorekeeper's Staff
					i(19572),	-- Lorekeeper's Staff
					i(19573),	-- Lorekeeper's Staff
					i(20434),	-- Lorekeeper's Staff
					i(19562),	-- Outrunner's Bow
					i(19563),	-- Outrunner's Bow
					i(19564),	-- Outrunner's Bow
					i(19565),	-- Outrunner's Bow
					i(20438),	-- Outrunner's Bow
					i(19554),	-- Protector's Sword
					i(19555),	-- Protector's Sword
					i(19556),	-- Protector's Sword
					i(19557),	-- Protector's Sword
					i(20440),	-- Protector's Sword
					i(20443),	-- Sentinel's Blade
					i(19546),	-- Sentinel's Blade
					i(19547),	-- Sentinel's Blade
					i(19548),	-- Sentinel's Blade
					i(19549),	-- Sentinel's Blade
					i(19538),	-- Sentinel's Medallion
					i(19539),	-- Sentinel's Medallion
					i(19540),	-- Sentinel's Medallion
					i(19541),	-- Sentinel's Medallion
					i(20444),	-- Sentinel's Medallion
					i(19530),	-- Caretaker's Cape
					i(19531),	-- Caretaker's Cape
					i(19532),	-- Caretaker's Cape
					i(19533),	-- Caretaker's Cape
					i(20428),	-- Caretaker's Cape
					i(19578),	-- Berserker Bracers
					i(19580),	-- Berserker Bracers
					i(19581),	-- Berserker Bracers
					i(19595),	-- Dryad's Wrist Bindings
					i(19596),	-- Dryad's Wrist Bindings
					i(19597),	-- Dryad's Wrist Bindings
					i(19587),	-- Forest Stalker's Bracers
					i(19589),	-- Forest Stalker's Bracers
					i(19590),	-- Forest Stalker's Bracers
					i(19582),	-- Windtalker's Wristguards
					i(19583),	-- Windtalker's Wristguards
					i(19584),	-- Windtalker's Wristguards
					i(22748),	-- Sentinel's Chain Leggings
					i(30497),	-- Sentinel's Mail Leggings
					i(22753),	-- Sentinel's Lamellar Legguards [Currently Sold for Gold, may change in the future!]
					i(22749),	-- Sentinel's Leather Pants
					i(22750),	-- Sentinel's Lizardhide Pants
					i(22672),	-- Sentinel's Plate Legguards
					i(22752),	-- Sentinel's Silk Leggings
					i(19522),	-- Lorekeeper's Ring
					i(19523),	-- Lorekeeper's Ring
					i(19524),	-- Lorekeeper's Ring
					i(19525),	-- Lorekeeper's Ring
					i(20431),	-- Lorekeeper's Ring
					i(19514),	-- Protector's Band
					i(19516),	-- Protector's Band
					i(19515),	-- Protector's Band
					i(19517),	-- Protector's Band
					i(20439),	-- Protector's Band
					i(21567),	-- Rune of Duty
					i(21568),	-- Rune of Duty
					i(21565),	-- Rune of Perfection
					i(21566),	-- Rune of Perfection
				},
			}),
		}),
	},
});
