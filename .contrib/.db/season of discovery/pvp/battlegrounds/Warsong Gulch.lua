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
		tooltipInfo[#tooltipInfo+1] = { left = " Each capture is worth " .. repPerFlagCapture .. " rep, +10 on WSG Weekend.", r = 1, g = 1, b = 1 }
		if reputation < ]] .. HONORED .. [[ then
			tooltipInfo[#tooltipInfo+1] = { left = " " }
			tooltipInfo[#tooltipInfo+1] = { left = "Battle for Ashenvale PvP World Event:" }
			addRepInfo(tooltipInfo, reputation, "  Defeat a Lieutenant (To Honored)", 200, ]] .. HONORED .. [[);
			addRepInfo(tooltipInfo, reputation, "  Win the Battle (To Honored)", 600, ]] .. HONORED .. [[);
		end
	end
end]];

-- Marks the shared Battlegrounds header as PvP.
root(ROOTS.PVP, pvp(n(BATTLEGROUNDS)));

battleground(WARSONG_GULCH, {
	timeline = { ADDED_1_5_0 },
	lore = "Warsong Gulch is a 10v10 capture-the-flag style battleground that traces the conflict between the Silverwing Sentinels seeking revenge on the orcs that chopped down the Ashenvale forest during the Third War.",
	icon = 236350,
	maps = {
		859,	-- Warsong Gulch
		1339,	-- Warsong Gulch
	},
	groups = {
		n(ACHIEVEMENTS, {
			applyclassicphase(PHASE_TWO, achWithRep(713, FACTION_SILVERWING_SENTINELS, {	-- Silverwing Sentinel (A)
				maps = { ASHENVALE },
				races = ALLIANCE_ONLY,
			})),
			applyclassicphase(PHASE_TWO, achWithRep(712, FACTION_WARSONG_OUTRIDERS, {	-- Warsong Outrider (H)
				maps = { ASHENVALE },
				races = HORDE_ONLY,
			})),
		}),
		n(FACTIONS, {
			faction(FACTION_SILVERWING_SENTINELS, {	-- Silverwing Sentinels
				icon = 132279,
				OnTooltip = [[_.OnTooltipDB.ForWarsongGulch]],
				maps = { ASHENVALE },
				races = ALLIANCE_ONLY,
			}),
			faction(FACTION_WARSONG_OUTRIDERS, {	-- Warsong Outriders
				icon = 132366,
				OnTooltip = [[_.OnTooltipDB.ForWarsongGulch]],
				maps = { ASHENVALE },
				races = HORDE_ONLY,
			}),
		}),
		n(QUESTS, {
			q(8368, {	-- Battle of Warsong Gulch
				altQuests = HORDE_BATTLE_FOR_WSG_TIER_1,
				qg = 15350,	-- Horde Warbringer
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = HORDE_ONLY,
				lvl = { 10, 19 },
			}),
			q(8426, {	-- Battle of Warsong Gulch
				altQuests = HORDE_BATTLE_FOR_WSG_TIER_1,
				qg = 15350,	-- Horde Warbringer
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = HORDE_ONLY,
				lvl = { 20, 29 },
			}),
			q(8427, {	-- Battle of Warsong Gulch
				altQuests = HORDE_BATTLE_FOR_WSG_TIER_1,
				qg = 15350,	-- Horde Warbringer
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = HORDE_ONLY,
				lvl = { 30, 39 },
			}),
			q(8428, {	-- Battle of Warsong Gulch
				altQuests = HORDE_BATTLE_FOR_WSG_TIER_1,
				qg = 15350,	-- Horde Warbringer
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = HORDE_ONLY,
				lvl = { 40, 49 },
			}),
			q(8429, {	-- Battle of Warsong Gulch
				altQuests = HORDE_BATTLE_FOR_WSG_TIER_1,
				qg = 15350,	-- Horde Warbringer
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = HORDE_ONLY,
				lvl = { 50, 59 },
			}),
			q(8430, {	-- Battle of Warsong Gulch
				altQuests = HORDE_BATTLE_FOR_WSG_TIER_1,
				qg = 15350,	-- Horde Warbringer
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = HORDE_ONLY,
				lvl = { 60, 69 },
			}),
			q(8389, {	-- Battle of Warsong Gulch
				sourceQuest = 8368,	-- Battle of Warsong Gulch
				altQuests = HORDE_BATTLE_FOR_WSG_TIER_2,
				qg = 15350,	-- Horde Warbringer
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = HORDE_ONLY,
				repeatable = true,
				lvl = { 10, 19 },
			}),
			q(8431, {	-- Battle of Warsong Gulch
				sourceQuest = 8426,	-- Battle of Warsong Gulch
				altQuests = HORDE_BATTLE_FOR_WSG_TIER_2,
				qg = 15350,	-- Horde Warbringer
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = HORDE_ONLY,
				repeatable = true,
				lvl = { 20, 29 },
			}),
			q(8432, {	-- Battle of Warsong Gulch
				sourceQuest = 8427,	-- Battle of Warsong Gulch
				altQuests = HORDE_BATTLE_FOR_WSG_TIER_2,
				qg = 15350,	-- Horde Warbringer
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = HORDE_ONLY,
				repeatable = true,
				lvl = { 30, 39 },
			}),
			q(8433, {	-- Battle of Warsong Gulch
				sourceQuest = 8428,	-- Battle of Warsong Gulch
				altQuests = HORDE_BATTLE_FOR_WSG_TIER_2,
				qg = 15350,	-- Horde Warbringer
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = HORDE_ONLY,
				repeatable = true,
				lvl = { 40, 49 },
			}),
			q(8434, {	-- Battle of Warsong Gulch
				sourceQuest = 8429,	-- Battle of Warsong Gulch
				altQuests = HORDE_BATTLE_FOR_WSG_TIER_2,
				qg = 15350,	-- Horde Warbringer
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = HORDE_ONLY,
				repeatable = true,
				lvl = { 50, 59 },
			}),
			q(8435, {	-- Battle of Warsong Gulch
				sourceQuest = 8430,	-- Battle of Warsong Gulch
				altQuests = HORDE_BATTLE_FOR_WSG_TIER_2,
				qg = 15350,	-- Horde Warbringer
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = HORDE_ONLY,
				repeatable = true,
				lvl = { 60, 69 },
			}),
			q(8372, {	-- Fight for Warsong Gulch
				altQuests = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
				qg = 15351,	-- Alliance Brigadier General
				coord = { 79.4, 18.2, STORMWIND_CITY },
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 10, 19 },
			}),
			q(8399, {	-- Fight for Warsong Gulch
				altQuests = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
				qg = 15351,	-- Alliance Brigadier General
				coord = { 79.4, 18.2, STORMWIND_CITY },
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 20, 29 },
			}),
			q(8400, {	-- Fight for Warsong Gulch
				altQuests = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
				qg = 15351,	-- Alliance Brigadier General
				coord = { 79.4, 18.2, STORMWIND_CITY },
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 30, 39 },
			}),
			q(8401, {	-- Fight for Warsong Gulch
				altQuests = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
				qg = 15351,	-- Alliance Brigadier General
				coord = { 79.4, 18.2, STORMWIND_CITY },
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 40, 49 },
			}),
			q(8402, {	-- Fight for Warsong Gulch
				altQuests = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
				qg = 15351,	-- Alliance Brigadier General
				coord = { 79.4, 18.2, STORMWIND_CITY },
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 50, 59 },
			}),
			q(8403, {	-- Fight for Warsong Gulch
				altQuests = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
				qg = 15351,	-- Alliance Brigadier General
				coord = { 79.4, 18.2, STORMWIND_CITY },
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 60, 69 },
			}),
			q(8386, {	-- Fight for Warsong Gulch
				sourceQuest = 8372,	-- Fight for Warsong Gulch
				altQuests = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
				qg = 15351,	-- Alliance Brigadier General
				coord = { 79.4, 18.2, STORMWIND_CITY },
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = ALLIANCE_ONLY,
				repeatable = true,
				lvl = { 10, 19 },
			}),
			q(8404, {	-- Fight for Warsong Gulch
				sourceQuest = 8399,	-- Fight for Warsong Gulch
				altQuests = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
				qg = 15351,	-- Alliance Brigadier General
				coord = { 79.4, 18.2, STORMWIND_CITY },
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = ALLIANCE_ONLY,
				repeatable = true,
				lvl = { 20, 29 },
			}),
			q(8405, {	-- Fight for Warsong Gulch
				sourceQuest = 8400,	-- Fight for Warsong Gulch
				altQuests = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
				qg = 15351,	-- Alliance Brigadier General
				coord = { 79.4, 18.2, STORMWIND_CITY },
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = ALLIANCE_ONLY,
				repeatable = true,
				lvl = { 30, 39 },
			}),
			q(8406, {	-- Fight for Warsong Gulch
				sourceQuest = 8401,	-- Fight for Warsong Gulch
				altQuests = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
				qg = 15351,	-- Alliance Brigadier General
				coord = { 79.4, 18.2, STORMWIND_CITY },
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = ALLIANCE_ONLY,
				repeatable = true,
				lvl = { 40, 49 },
			}),
			q(8407, {	-- Fight for Warsong Gulch
				sourceQuest = 8402,	-- Fight for Warsong Gulch
				altQuests = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
				qg = 15351,	-- Alliance Brigadier General
				coord = { 79.4, 18.2, STORMWIND_CITY },
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = ALLIANCE_ONLY,
				repeatable = true,
				lvl = { 50, 59 },
			}),
			q(8408, {	-- Fight for Warsong Gulch
				sourceQuest = 8403,	-- Fight for Warsong Gulch
				altQuests = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
				qg = 15351,	-- Alliance Brigadier General
				coord = { 79.4, 18.2, STORMWIND_CITY },
				cost = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
				races = ALLIANCE_ONLY,
				repeatable = true,
				lvl = { 60, 69 },
			}),
			q(7868, {	-- Outrider Advanced Care Package
				qg = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
				coords = {
					{ 46.6, 8.4, THE_BARRENS },
				},
				minReputation = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },
				races = HORDE_ONLY,
				lvl = 45,
				groups = {
					i(19153),	-- Outrider Advanced Care Package
				},
			}),
			q(7866, {	-- Outrider Basic Care Package
				qg = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
				coords = {
					{ 46.6, 8.4, THE_BARRENS },
				},
				minReputation = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },
				races = HORDE_ONLY,
				lvl = { 25, 34 },
				groups = {
					i(19154),	-- Outrider Basic Care Package
				},
			}),
			q(7867, {	-- Outrider Standard Care Package
				qg = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
				coords = {
					{ 46.6, 8.4, THE_BARRENS },
				},
				minReputation = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },
				races = HORDE_ONLY,
				lvl = { 35, 44 },
				groups = {
					i(19155),	-- Outrider Standard Care Package
				},
			}),
			q(7865, {	-- Sentinel Advanced Care Package
				qg = 14753,	-- Illiyana Moonblaze
				coords = {
					{ 61.6, 83.8, ASHENVALE },
				},
				minReputation = { FACTION_SILVERWING_SENTINELS, FRIENDLY },
				races = ALLIANCE_ONLY,
				lvl = 45,
				groups = {
					i(19152),	-- Sentinel Advanced Care Package
				},
			}),
			q(7863, {	-- Sentinel Basic Care Package
				qg = 14753,	-- Illiyana Moonblaze
				coords = {
					{ 61.6, 83.8, ASHENVALE },
				},
				minReputation = { FACTION_SILVERWING_SENTINELS, FRIENDLY },
				races = ALLIANCE_ONLY,
				lvl = { 25, 34 },
				groups = {
					i(19150),	-- Sentinel Basic Care Package
				},
			}),
			q(7864, {	-- Sentinel Standard Care Package
				qg = 14753,	-- Illiyana Moonblaze
				coords = {
					{ 61.6, 83.8, ASHENVALE },
				},
				minReputation = { FACTION_SILVERWING_SENTINELS, FRIENDLY },
				races = ALLIANCE_ONLY,
				lvl = { 35, 44 },
				groups = {
					i(19151),	-- Sentinel Standard Care Package
				},
			}),
		}),
		n(REWARDS, {
			i(20558),	-- Warsong Gulch Mark of Honor
		}),
		n(VENDORS, {
			n(14754, {	-- Kelm Hargunth <Warsong Supply Officer>
				coords = {
					{ 46.6, 8.4, THE_BARRENS },
				},
				races = HORDE_ONLY,
				groups = {
					applyclassicphase(SOD_PHASE_ONE, i(211499, {	-- Trainee's Outrider Wolf
						minReputation = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },
					})),
					moh(10, i(19505)),	-- Warsong Battle Tabard
					moh(3, i(19566)),	-- Advisor's Gnarled Staff
					moh(3, i(19567)),	-- Advisor's Gnarled Staff
					moh(3, i(19568)),	-- Advisor's Gnarled Staff
					moh(3, i(19569)),	-- Advisor's Gnarled Staff
					applyclassicphase(SOD_PHASE_ONE, i(212584, {	-- Advisor's Gnarled Staff
						minReputation = { FACTION_WARSONG_OUTRIDERS, REVERED },
					})),
					moh(3, i(20425)),	-- Advisor's Gnarled Staff
					moh(3, i(19550)),	-- Legionnaire's Sword
					moh(3, i(19551)),	-- Legionnaire's Sword
					moh(3, i(19552)),	-- Legionnaire's Sword
					moh(3, i(19553)),	-- Legionnaire's Sword
					applyclassicphase(SOD_PHASE_ONE, i(212586, {	-- Legionnaire's Sword
						minReputation = { FACTION_WARSONG_OUTRIDERS, REVERED },
					})),
					moh(3, i(20430)),	-- Legionnaire's Sword
					moh(3, i(19558)),	-- Outrider's Bow
					moh(3, i(19559)),	-- Outrider's Bow
					moh(3, i(19560)),	-- Outrider's Bow
					moh(3, i(19561)),	-- Outrider's Bow
					applyclassicphase(SOD_PHASE_ONE, i(212585, {	-- Outrider's Bow
						minReputation = { FACTION_WARSONG_OUTRIDERS, REVERED },
					})),
					moh(3, i(20437)),	-- Outrider's Bow
					moh(3, i(19542)),	-- Scout's Blade
					moh(3, i(19543)),	-- Scout's Blade
					moh(3, i(19544)),	-- Scout's Blade
					moh(3, i(19545)),	-- Scout's Blade
					applyclassicphase(SOD_PHASE_ONE, i(212587, {	-- Scout's Blade
						minReputation = { FACTION_WARSONG_OUTRIDERS, REVERED },
					})),
					moh(3, i(20441)),	-- Scout's Blade
					applyclassicphase(SOD_PHASE_ONE, i(211500, {	-- Resilient Cloth Headband
						minReputation = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },
					})),
					applyclassicphase(SOD_PHASE_ONE, i(211856, {	-- Resilient Mail Coif
						minReputation = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },
					})),
					applyclassicphase(SOD_PHASE_ONE, i(211857, {	-- Resilient Leather Mask
						minReputation = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },
					})),
					moh(1, i(19534)),	-- Scout's Medallion
					moh(1, i(19535)),	-- Scout's Medallion
					moh(1, i(19536)),	-- Scout's Medallion
					moh(1, i(19537)),	-- Scout's Medallion
					moh(1, i(20442)),	-- Scout's Medallion
					moh(1, i(19526)),	-- Battle Healer's Cloak
					moh(1, i(19527)),	-- Battle Healer's Cloak
					moh(1, i(19528)),	-- Battle Healer's Cloak
					moh(1, i(19529)),	-- Battle Healer's Cloak
					moh(1, i(20427)),	-- Battle Healer's Cloak
					moh(1, i(19578)),	-- Berserker Bracers
					moh(1, i(19580)),	-- Berserker Bracers
					moh(1, i(19581)),	-- Berserker Bracers
					moh(1, i(19595)),	-- Dryad's Wrist Bindings
					moh(1, i(19596)),	-- Dryad's Wrist Bindings
					moh(1, i(19597)),	-- Dryad's Wrist Bindings
					moh(1, i(19587)),	-- Forest Stalker's Bracers
					moh(1, i(19589)),	-- Forest Stalker's Bracers
					moh(1, i(19590)),	-- Forest Stalker's Bracers
					moh(1, i(19582)),	-- Windtalker's Wristguards
					moh(1, i(19583)),	-- Windtalker's Wristguards
					moh(1, i(19584)),	-- Windtalker's Wristguards
					applyclassicphase(SOD_PHASE_SIX, i(237820)),	-- Outrider's Silk Leggings
					applyclassicphase(SOD_PHASE_SIX, i(237821)),	-- Outrider's Lizardhide Pants
					applyclassicphase(SOD_PHASE_SIX, i(237822)),	-- Outrider's Leather Pants
					applyclassicphase(SOD_PHASE_SIX, i(237823)),	-- Outrider's Mail Leggings
					applyclassicphase(SOD_PHASE_SIX, i(237824)),	-- Outrider's Chain Leggings
					applyclassicphase(SOD_PHASE_SIX, i(237826)),	-- Outrider's Plate Legguards
					moh(1, i(19518)),	-- Advisor's Ring
					moh(1, i(19519)),	-- Advisor's Ring
					moh(1, i(19520)),	-- Advisor's Ring
					moh(1, i(19521)),	-- Advisor's Ring
					moh(1, i(20426)),	-- Advisor's Ring
					moh(1, i(19510)),	-- Legionnaire's Band
					moh(1, i(19511)),	-- Legionnaire's Band
					moh(1, i(19512)),	-- Legionnaire's Band
					moh(1, i(19513)),	-- Legionnaire's Band
					moh(1, i(20429)),	-- Legionnaire's Band
					applyclassicphase(PHASE_SIX, moh(1, i(21567))),	-- Rune of Duty
					applyclassicphase(PHASE_SIX, moh(1, i(21568))),	-- Rune of Duty
					applyclassicphase(PHASE_SIX, moh(1, i(21565))),	-- Rune of Perfection
					applyclassicphase(PHASE_SIX, moh(1, i(21566))),	-- Rune of Perfection
				},
			}),
			n(14753, {	-- Illiyana Moonblaze <Silverwing Supply Officer>
				coords = {
					{ 61.6, 83.8, ASHENVALE },
				},
				races = ALLIANCE_ONLY,
				groups = {
					applyclassicphase(SOD_PHASE_ONE, i(211498, {	-- Trainee's Sentinel Nightsaber
						minReputation = { FACTION_SILVERWING_SENTINELS, FRIENDLY },
					})),
					moh(10, i(19506)),	-- Silverwing Battle Tabard
					moh(3, i(19570)),	-- Lorekeeper's Staff
					moh(3, i(19571)),	-- Lorekeeper's Staff
					moh(3, i(19572)),	-- Lorekeeper's Staff
					moh(3, i(19573)),	-- Lorekeeper's Staff
					applyclassicphase(SOD_PHASE_ONE, i(212580, {	-- Lorekeeper's Staff
						minReputation = { FACTION_SILVERWING_SENTINELS, REVERED },
					})),
					moh(3, i(20434)),	-- Lorekeeper's Staff
					moh(3, i(19562)),	-- Outrunner's Bow
					moh(3, i(19563)),	-- Outrunner's Bow
					moh(3, i(19564)),	-- Outrunner's Bow
					moh(3, i(19565)),	-- Outrunner's Bow
					applyclassicphase(SOD_PHASE_ONE, i(212581, {	-- Outrunner's Bow
						minReputation = { FACTION_SILVERWING_SENTINELS, REVERED },
					})),
					moh(3, i(20438)),	-- Outrunner's Bow
					moh(3, i(19554)),	-- Protector's Sword
					moh(3, i(19555)),	-- Protector's Sword
					moh(3, i(19556)),	-- Protector's Sword
					moh(3, i(19557)),	-- Protector's Sword
					applyclassicphase(SOD_PHASE_ONE, i(212582, {	-- Protector's Sword
						minReputation = { FACTION_SILVERWING_SENTINELS, REVERED },
					})),
					moh(3, i(20440)),	-- Protector's Sword
					moh(3, i(20443)),	-- Sentinel's Blade
					moh(3, i(19546)),	-- Sentinel's Blade
					moh(3, i(19547)),	-- Sentinel's Blade
					moh(3, i(19548)),	-- Sentinel's Blade
					applyclassicphase(SOD_PHASE_ONE, i(212583, {	-- Sentinel's Blade
						minReputation = { FACTION_SILVERWING_SENTINELS, REVERED },
					})),
					moh(3, i(19549)),	-- Sentinel's Blade
					applyclassicphase(SOD_PHASE_ONE, i(211500, {	-- Resilient Cloth Headband
						minReputation = { FACTION_SILVERWING_SENTINELS, FRIENDLY },
					})),
					applyclassicphase(SOD_PHASE_ONE, i(211856, {	-- Resilient Mail Coif
						minReputation = { FACTION_SILVERWING_SENTINELS, FRIENDLY },
					})),
					applyclassicphase(SOD_PHASE_ONE, i(211857, {	-- Resilient Leather Mask
						minReputation = { FACTION_SILVERWING_SENTINELS, FRIENDLY },
					})),
					moh(1, i(19538)),	-- Sentinel's Medallion
					moh(1, i(19539)),	-- Sentinel's Medallion
					moh(1, i(19540)),	-- Sentinel's Medallion
					moh(1, i(19541)),	-- Sentinel's Medallion
					moh(1, i(20444)),	-- Sentinel's Medallion
					moh(1, i(19530)),	-- Caretaker's Cape
					moh(1, i(19531)),	-- Caretaker's Cape
					moh(1, i(19532)),	-- Caretaker's Cape
					moh(1, i(19533)),	-- Caretaker's Cape
					moh(1, i(20428)),	-- Caretaker's Cape
					moh(1, i(19578)),	-- Berserker Bracers
					moh(1, i(19580)),	-- Berserker Bracers
					moh(1, i(19581)),	-- Berserker Bracers
					moh(1, i(19595)),	-- Dryad's Wrist Bindings
					moh(1, i(19596)),	-- Dryad's Wrist Bindings
					moh(1, i(19597)),	-- Dryad's Wrist Bindings
					moh(1, i(19587)),	-- Forest Stalker's Bracers
					moh(1, i(19589)),	-- Forest Stalker's Bracers
					moh(1, i(19590)),	-- Forest Stalker's Bracers
					moh(1, i(19582)),	-- Windtalker's Wristguards
					moh(1, i(19583)),	-- Windtalker's Wristguards
					moh(1, i(19584)),	-- Windtalker's Wristguards
					applyclassicphase(SOD_PHASE_SIX, i(237814)),	-- Sentinel's Lamellar Legguards
					applyclassicphase(SOD_PHASE_SIX, i(237815)),	-- Sentinel's Silk Leggings
					applyclassicphase(SOD_PHASE_SIX, i(237817)),	-- Sentinel's Lizardhide Pants
					applyclassicphase(SOD_PHASE_SIX, i(237818)),	-- Sentinel's Leather Pants
					applyclassicphase(SOD_PHASE_SIX, i(237819)),	-- Sentinel's Chain Leggings
					applyclassicphase(SOD_PHASE_SIX, i(237825)),	-- Sentinel's Plate Legguards
					moh(1, i(19522)),	-- Lorekeeper's Ring
					moh(1, i(19523)),	-- Lorekeeper's Ring
					moh(1, i(19524)),	-- Lorekeeper's Ring
					moh(1, i(19525)),	-- Lorekeeper's Ring
					moh(1, i(20431)),	-- Lorekeeper's Ring
					moh(1, i(19514)),	-- Protector's Band
					moh(1, i(19516)),	-- Protector's Band
					moh(1, i(19515)),	-- Protector's Band
					moh(1, i(19517)),	-- Protector's Band
					moh(1, i(20439)),	-- Protector's Band
					applyclassicphase(PHASE_SIX, moh(1, i(21567))),	-- Rune of Duty
					applyclassicphase(PHASE_SIX, moh(1, i(21568))),	-- Rune of Duty
					applyclassicphase(PHASE_SIX, moh(1, i(21565))),	-- Rune of Perfection
					applyclassicphase(PHASE_SIX, moh(1, i(21566))),	-- Rune of Perfection
				},
			}),
		}),
	},
});
