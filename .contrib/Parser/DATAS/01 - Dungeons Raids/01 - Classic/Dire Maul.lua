-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
WARPWOOD_QUARTER = createHeader({
	readable = "Warpwood Quarter",
	icon = 236292,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL5.." (East)"]],
		fr = [[~DUNGEON_FLOOR_DIREMAUL5.." (Est)"]],
		ru = [[~DUNGEON_FLOOR_DIREMAUL5.." (Восток)"]],
		cn = [[~DUNGEON_FLOOR_DIREMAUL5.." (东)"]],
		tw = [[~DUNGEON_FLOOR_DIREMAUL5.." (東)"]],
	},
	description = {
		en = "This part of the instance can be accessed from the eastern-most portal. (right side)",
		tw = "副本的這部分可以從最東邊的傳送門進入。（右側）",
	},
});
GORDOK_COMMONS = createHeader({
	readable = "Gordok Commons",
	icon = 236695,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL1.." (North)"]],
		fr = [[~DUNGEON_FLOOR_DIREMAUL1.." (Nord)"]],
		ru = [[~DUNGEON_FLOOR_DIREMAUL1.." (Север)"]],
		cn = [[~DUNGEON_FLOOR_DIREMAUL1.." (北)"]],
		tw = [[~DUNGEON_FLOOR_DIREMAUL1.." (北)"]],
	},
	description = {
		en = "This part of the instance can be accessed from the northern-most portal.",
		tw = "副本的這部分可以從最北邊的傳送門進入。",
	},
});
CAPITAL_GARDENS = createHeader({
	readable = "Capital Gardens",
	icon = 134162,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL2.." (West)"]],
		fr = [[~DUNGEON_FLOOR_DIREMAUL2.." (Ouest)"]],
		ru = [[~DUNGEON_FLOOR_DIREMAUL2.." (Запад)"]],
		cn = [[~DUNGEON_FLOOR_DIREMAUL2.." (西)"]],
		tw = [[~DUNGEON_FLOOR_DIREMAUL2.." (西)"]],
	},
	description = {
		en = "This part of the instance can be accessed from the western-most portal. (left side)",
		tw = "副本的這部分可以從最西邊的傳送門進入。（左側）",
	},
});
local DIREMAUL_SUBMAP = function(mapID, headerID, t)
	t.creatureID = headerID;
	local oldMaps = t.maps;
	if oldMaps then
		local maps = {};
		for i,m in ipairs(oldMaps) do
			if m ~= mapID then
				table.insert(maps, m);
			end
		end
		if #maps > 0 then
			t.maps = maps;
		else
			t.maps = nil;
		end
	end
	return m(mapID, t);
end
local WARPWOOD_QUARTER_MAPS = {
	DIRE_MAUL_WARPWOOD_QUARTER,
};
local GORDOK_COMMONS_MAPS = {
	DIRE_MAUL_GORDOK_COMMONS,
};
local CAPITAL_GARDENS_MAPS = {
	DIRE_MAUL_CAPITAL_GARDENS,
	DIRE_MAUL_COURT_OF_THE_HIGHBORNE,
	DIRE_MAUL_PRISON_OF_IMMOLTHAR,
};
local ALL_DIREMAUL_MAPS = {
	DIRE_MAUL_WARPWOOD_QUARTER,
	DIRE_MAUL_GORDOK_COMMONS,
	DIRE_MAUL_CAPITAL_GARDENS,
	DIRE_MAUL_COURT_OF_THE_HIGHBORNE,
	DIRE_MAUL_PRISON_OF_IMMOLTHAR,
};
-- #if BEFORE 4.0.3
local OnTooltipForShendralar = [[function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		_.Modules.FactionData.AddReputationTooltipInfo(tooltipInfo, reputation, "Libram Turn Ins",
-- #if AFTER TBC
		500,
-- #else
		200,
-- #endif
		42000);
	end
end]];
local OnTooltipForSteamweedle = [[function(t, tooltipInfo)
	tinsert(tooltipInfo, { left = "This is a hidden reputation. It might not count towards reputation achievements.", r=1,g=1,b=1, wrap=true });
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		if reputation < 20999 then
			tinsert(tooltipInfo, { left = "To 11999 Honored:", r=1,g=1,b=1 });
			addRepInfo(tooltipInfo, reputation, " Kill Venture Co. (STV)", 2.5, 20999);
			addRepInfo(tooltipInfo, reputation, " Kill Southsea Pirates. (Tanaris & Barrens)", 2.5, 20999);
		end
		addRepInfo(tooltipInfo, reputation, "Complete Zapping Quests (Feralas)", 25, 42000);
		addRepInfo(tooltipInfo, reputation, "Complete Free Knot! (Dire Maul)",
-- #if AFTER TBC
		350,
-- #else
		150,
-- #endif
		42000);

		addRepInfo(tooltipInfo, reputation, "Complete The Gordok Ogre Suit (Dire Maul)",
-- #if AFTER TBC
		75,
-- #else
		50,
-- #endif
		42000);
	end
end]];
-- #endif
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, applyclassicphase(PHASE_ONE_DIREMAUL, {
	inst(230, {	-- Dire Maul
		-- #if BEFORE MOP
		["lore"] = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
		-- #endif
		["zone-text-areas"] = {
			2557,	-- Dire Maul
			3217,	-- "The Maul" now points to Dire Maul.
			-- #if AFTER CATA
			-- This areaID doesn't exist until Cataclysm!
			4992,	-- "Broken Commons" now points to Dire Maul.
			-- #endif
		},
		["maps"] = {
			DIRE_MAUL,
			DIRE_MAUL_SHRINE_OF_ELDRETHARR,
		},
		["lvl"] = lvlsquish(44, 44, 15),
		["groups"] = {
			n(ACHIEVEMENTS, {
				achWithRep(5788, FACTION_SHENDRALAR, {	-- Agent of the Shen'dralar [Shen'dralar Exalted]
					["maps"] = CAPITAL_GARDENS_MAPS,
					["timeline"] = { REMOVED_4_0_3 },
				}),
				ach(644, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 }, }, {	-- King of Dire Maul
					["maps"] = merge(WARPWOOD_QUARTER_MAPS, GORDOK_COMMONS_MAPS, CAPITAL_GARDENS_MAPS),
					["groups"] = {
						crit(545, {	-- Alzzin the Wildshaper
							["_npcs"] = { 11492 },	-- Alzzin the Wildshaper
						}),
						crit(546, {	-- Immol'thar
							["_npcs"] = { 11496 },	-- Immol'thar
						}),
						-- #if ANYCLASSIC
						crit(547, {	-- King Gordok
							["_npcs"] = { 11501 },	-- King Gordok
						}),
						-- #else
						crit(18535, {	-- King Gordok
							["_npcs"] = { 11501 },	-- King Gordok
						}),
						-- #endif
					},
				})),
				ach(5053, {	-- King of Dire Maul Guild Run
					["timeline"] = { ADDED_4_0_3 },
				}),
			}),
			n(FACTIONS, {
				faction(FACTION_SHENDRALAR, {	-- Shen'dralar
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					-- #if BEFORE 4.0.3
					["OnTooltip"] = OnTooltipForShendralar,
					-- #endif
				}),
				faction(FACTION_STEAMWHEEDLE_CARTEL, {	-- Steamwheedle Cartel
					["icon"] = 133784,
					-- #if BEFORE 4.0.3
					["OnTooltip"] = OnTooltipForSteamweedle,
					-- #endif
					["maps"] = merge(GORDOK_COMMONS_MAPS, {
						FERALAS,
						STRANGLETHORN_VALE,
						TANARIS,
						THE_BARRENS,
						WINTERSPRING,
					}),
					-- #if AFTER 4.0.3
					["description"] = "This is a hidden reputation. It might not count towards reputation achievements.",
					["collectible"] = false,
					-- #endif
				}),
			}),
			n(QUESTS, {
				q(1193, {	-- A Broken Trap
					["provider"] = { "o", 179485 },	-- Broken Trap
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = GORDOK_COMMONS_MAPS,
					-- #if BEFORE 4.0.3
					["description"] = "Use the items on the Broken Trap to trap Guard Slip'kik. It takes a few seconds to finish fixing the trap.\n\nYou must activate this trap in order to do the Tribute Run.",
					["cost"] = {
						{ "i", 15994, 1 },	-- Thorium Widget
						{ "i", 3829, 1 },	-- Frost Oil
					},
					-- #endif
					["repeatable"] = true,
					["lvl"] = lvlsquish(56, 56, 15),
				}),
				q(27118, {	-- A Broken Trap
					["provider"] = { "o", 179485 },	-- Broken Trap
					["description"] = "You must trap Guard Slip'kik in order to qualify for the full Tribute loot table.",
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = GORDOK_COMMONS_MAPS,
					["repeatable"] = true,
					["lvl"] = lvlsquish(42, 42, 15),
				}),
				q(7463, {	-- Arcane Refreshment
					["qg"] = 14368,	-- Lorekeeper Lydros
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = merge(WARPWOOD_QUARTER_MAPS, CAPITAL_GARDENS_MAPS),
					["classes"] = { MAGE },
					["lvl"] = 60,
					-- #if BEFORE 4.0.3
					["groups"] = {
						objective(1, {	-- 0/1 Hydrospawn Essence
							["provider"] = { "i", 18299 },	-- Hydrospawn Essence
						}),
						recipe(10140),	-- Conjure Water (Rank 7)
					},
					-- #endif
				}),
				q(27104, {	-- Alzzin the Wildshaper
					["qg"] = 44969,	-- Furgus Warpwood
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = WARPWOOD_QUARTER_MAPS,
					["lvl"] = lvlsquish(36, 36, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Zevrim Thornhoof slain
							["provider"] = { "n", 11490 },	-- Zevrim Thornhoof
						}),
						objective(2, {	-- 0/1 Alzzin the Wildshaper slain
							["provider"] = { "n", 11492 },	-- Alzzin the Wildshaper
						}),
						i(65948),	-- Warpwood Bark Vest
						i(65972),	-- Warpwood Bow
						i(65922),	-- Warpwood Leaf Mantle
						i(65993),	-- Warpwood Shield
					},
				}),
				q(27105, {	-- An Unwelcome Guest
					["qg"] = 44969,	-- Furgus Warpwood
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = WARPWOOD_QUARTER_MAPS,
					["lvl"] = lvlsquish(36, 36, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Hydrospawn Essence
							["provider"] = { "i", 18299 },	-- Hydrospawn Essence
						}),
					},
				}),
				q(7492, {	-- Camp Mojache
					["qgs"] = {
						10879,	-- Harbinger Balthazad
						10880,	-- Warcaller Gorlach
						10881,	-- Bluff Runner Windstrider
					},
					["coords"] = {
						{ 46.6, 64.6, ORGRIMMAR },
						{ 41.4, 54.2, THUNDER_BLUFF },
						{ 69.2, 49.2, UNDERCITY },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FERALAS },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 54,
				}),
				-- #if SEASON_OF_DISCOVERY
				q(84550, {	-- Codex of Defense
					["providers"] = {
						{ "i", 228692 },	-- Codex of Defense
						{ "n",  14383 },	-- Lorekeeper Kildrath
					},
					["timeline"] = { ADDED_1_15_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["classes"] = { WARRIOR },
					["lvl"] = 54,
					["groups"] = {
						i(228465, {	-- Royal Seal of Eldre'Thalas
							["timeline"] = { ADDED_1_15_3 },
						}),
					},
				}),
				-- #endif
				q(7499, {	-- Codex of Defense
					["providers"] = {
						{ "i", 18357 },	-- Codex of Defense
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["maps"] = CAPITAL_GARDENS_MAPS,
					["classes"] = { WARRIOR },
					["lvl"] = 54,
					["groups"] = {
						i(18466, {	-- Royal Seal of Eldre'Thalas
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7631, {	-- Dreadsteed of Xoroth
					["providers"] = {
						{ "n", 14436 },	-- Mor'zul Bloodbringer
						{ "i", 18818 },	-- Mor'zul's Instructions
					},
					["sourceQuest"] = 7629,	-- Imp Delivery
					["coord"] = { 12.6, 31.6, BURNING_STEPPES },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["classes"] = { WARLOCK },
					["lvl"] = 60,
					["group"] = {
						ach(2357, {	-- Dreadsteed of Xoroth
							["sourceQuest"] = 7631,	-- Dreadsteed of Xoroth
							["timeline"] = { REMOVED_4_0_3 },
							["classes"] = { WARLOCK },
						}),
						mount(23161, {	-- Dreadsteed (MOUNT!)
							["providers"] = {
								{ "n", 14502 },	-- Xorothian Dreadsteed
								{ "n", 14504 },	-- Dreadsteed Spirit
							},
							["classes"] = { WARLOCK },
						}),
					},
				}),
				{	-- Elven Legends
					["allianceQuestData"] = q(7482, {	-- Elven Legends (A)
						["qg"] = 14374,	-- Scholar Runethorn
						["coord"] = { 31.2, 43.9, FERALAS },
					}),
					["hordeQuestData"] = q(7481, {	-- Elven Legends (H)
						["qg"] = 14373,	-- Sage Korolusk
						["coord"] = { 75.3, 43.8, FERALAS },
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- Master Telmius Dreamseeker Found
							["provider"] = { "o", 179544 },	-- Skeletal Remains of Telmius Dreamseeker
						}),
					},
				},
				applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
					["providers"] = {
						-- #IF BEFORE 4.0.3
						{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
						-- #ENDIF
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					["requireSkill"] =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					["maps"] = {
						236,	-- Capital Gardens
						BLACKROCK_SPIRE,
						LBRS_TAZZALOR,
						LBRS_SKITTERWEB_TUNNELS,
						LBRS_HORDEMAR_CITY,
						LBRS_HALL_OF_BLACKHAND,
						LBRS_HALYCONS_LAIR,
						LBRS_CHAMBER_OF_BATTLE,
					},
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 18779, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume I
						{ "i", 18780, 1 },	-- Top Half of Advanced Armorsmithing: Volume I
					},
					["groups"] = {
						i(12727, {	-- Plans: Enchanted Thorium Breastplate (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				})),
				applyclassicphase(PHASE_THREE_RECIPES, q(7650, {	-- Enchanted Thorium Platemail: Volume II
					["providers"] = {
						-- #IF BEFORE 4.0.3
						{ "i", 18770 },	-- Enchanted Thorium Platemail (Volume II)
						-- #ENDIF
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					["requireSkill"] =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					["maps"] = {
						236,	-- Capital Gardens
						STRATHOLME, SCHOLOMANCE
					},
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 18781, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume II
						{ "i", 18782, 1 },	-- Top Half of Advanced Armorsmithing: Volume II
					},
					["lvl"] = 50,
					["groups"] = {
						i(12726, {	-- Plans: Enchanted Thorium Leggings (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				})),
				applyclassicphase(PHASE_THREE_RECIPES, q(7651, {	-- Enchanted Thorium Platemail: Volume III
					["providers"] = {
						-- #if BEFORE 4.0.3
						{ "i", 18771 },	-- Enchanted Thorium Platemail (Volume III)
						-- #endif
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					["requireSkill"] =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					["maps"] = merge(CAPITAL_GARDENS_MAPS, {
						BLACKROCK_SPIRE,
						LBRS_TAZZALOR,
						LBRS_SKITTERWEB_TUNNELS,
						LBRS_HORDEMAR_CITY,
						LBRS_HALL_OF_BLACKHAND,
						LBRS_HALYCONS_LAIR,
						LBRS_CHAMBER_OF_BATTLE,
						STRATHOLME
					}),
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 18783, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume III
						{ "i", 18784, 1 },	-- Top Half of Advanced Armorsmithing: Volume III
					},
					["lvl"] = 50,
					["groups"] = {
						i(12725, {	-- Plans: Enchanted Thorium Helm (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				})),
				q(7494, {	-- Feathermoon Stronghold
					["qgs"] = {
						2198,	-- Crier Goodman
						10877,	-- Courier Hammerfall
						10878,	-- Herald Moonstalker
					},
					["coords"] = {
						{ 39, 63.6, DARNASSUS },
						{ 30.5, 67, IRONFORGE },
						{ 54.8, 62.6, STORMWIND_CITY },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { FERALAS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 54,
				}),
				q(5525, {	-- Free Knot!
					["qg"] = 14338,	-- Knot Thimblejack
					-- #if BEFORE 4.0.3
					["description"] = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
					["cost"] = { { "i", 18250, 1 } },	-- Gordok Shackle Key
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = GORDOK_COMMONS_MAPS,
					["lvl"] = 54,
				}),
				q(7429, {	-- Free Knot! (repeatable)
					["qg"] = 14338,	-- Knot Thimblejack
					["sourceQuest"] = 5525,	-- Free Knot!
					-- #if BEFORE 4.0.3
					["description"] = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
					["cost"] = { { "i", 18250, 1 } },	-- Gordok Shackle Key
					-- #endif
					["maxReputation"] = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },	-- Steamwheedle Cartel, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = GORDOK_COMMONS_MAPS,
					["repeatable"] = true,
					["lvl"] = 54,
				}),
				q(7505, {	-- Frost Shock and You
					["providers"] = {
						{ "i", 18363 },	-- Frost Shock and You
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["classes"] = { SHAMAN },
					["lvl"] = 54,
					["groups"] = {
						i(18471, {	-- Royal Seal of Eldre'Thalas
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				q(84548, {	-- Garona: A Study on Stealth and Treachery
					["providers"] = {
						{ "i", 228691 },	-- Garona: A Study on Stealth and Treachery
						{ "n",  14383 },	-- Lorekeeper Kildrath
					},
					["timeline"] = { ADDED_1_15_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["classes"] = { ROGUE },
					["lvl"] = 54,
					["groups"] = {
						i(228464, {	-- Royal Seal of Eldre'Thalas
							["timeline"] = { ADDED_1_15_3 },
						}),
					},
				}),
				-- #endif
				q(7498, {	-- Garona: A Study on Stealth and Treachery
					["providers"] = {
						{ "i", 18356 },	-- Garona: A Study on Stealth and Treachery
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["maps"] = CAPITAL_GARDENS_MAPS,
					["classes"] = { ROGUE },
					["lvl"] = 54,
					["groups"] = {
						i(18465, {	-- Royal Seal of Eldre'Thalas
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7502, {	-- Harnessing Shadows
					["providers"] = {
						{ "i", 18360 },	-- Harnessing Shadows
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["classes"] = { WARLOCK },
					["lvl"] = 54,
					["groups"] = {
						i(18467, {	-- Royal Seal of Eldre'Thalas
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7504, {	-- Holy Bologna: What the Light Won't Tell You
					["providers"] = {
						{ "i", 18362 },	-- Holy Bologna: What the Light Won't Tell You
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["classes"] = { PRIEST },
					["lvl"] = 54,
					["groups"] = {
						i(18469, {	-- Royal Seal of Eldre'Thalas
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27125, {	-- King of the Gordok [Alliance]
					["qg"] = 45040,	-- Druid of the Talon
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = GORDOK_COMMONS_MAPS,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(42, 42, 15),
					["groups"] = {
						objective(1, {	-- 0/1 King Gordok slain
							["provider"] = { "n", 11501 },	-- King Gordok
						}),
						i(65976),	-- Pauldrons of Tribute
						i(65927),	-- Slippers of Tribute
						i(65997),	-- Tribute Gun
						i(65952),	-- Wristbands of Tribute
					},
				}),
				q(27128, {	-- King of the Gordok [Horde]
					["qg"] = 45052,	-- Stonemaul Ogre
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = GORDOK_COMMONS_MAPS,
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(42, 42, 15),
					["groups"] = {
						objective(1, {	-- 0/1 King Gordok slain
							["provider"] = { "n", 11501 },	-- King Gordok
						}),
						i(66036),	-- Pauldrons of Tribute
						i(66018),	-- Slippers of Tribute
						i(66043),	-- Tribute Gun
						i(66027),	-- Wristbands of Tribute
					},
				}),
				q(7488, {	-- Lethtendris's Web [Alliance]
					["qg"] = 7877,	-- Latronicus Moonspear
					["sourceQuest"] = 7494,	-- Feathermoon Stronghold
					["coord"] = { 30.4, 46.2, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = WARPWOOD_QUARTER_MAPS,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/1 Lethtendris's Web
							["provider"] = { "i", 18426 },	-- Lethtendris's Web
						}),
						i(18491, {	-- Lorespinner
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7489, {	-- Lethtendris's Web [Horde]
					["qg"] = 7776,	-- Talo Thornhoof
					["sourceQuest"] = 7492,	-- Camp Mojache
					["coord"] = { 76.2, 43.8, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = WARPWOOD_QUARTER_MAPS,
					["races"] = HORDE_ONLY,
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/1 Lethtendris's Web
							["provider"] = { "i", 18426 },	-- Lethtendris's Web
						}),
						i(18491, {	-- Lorespinner
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27108, {	-- Lethtendris's Web
					["qg"] = 44971,	-- "Ambassador" Dagg'thol
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = WARPWOOD_QUARTER_MAPS,
					["lvl"] = lvlsquish(36, 36, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Lethtendris's Web
							["provider"] = { "i", 18426 },	-- Lethtendris's Web
						}),
					},
				}),
				q(7484, {	-- Libram of Focus
					["qg"] = 14368,	-- Lorekeeper Lydros
					["sourceQuests"] = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["cost"] = {
						{ "i", 18333, 1 },	-- Libram of Focus
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 4 },	-- Large Brilliant Shard
						{ "i", 12753, 2 },	-- Skin of Shadow
					},
					["maxReputation"] = { FACTION_SHENDRALAR, EXALTED },	-- Shen'dralar, Exalted.
					["repeatable"] = true,
					["lvl"] = 57,
					["groups"] = {
						i(18330, {	-- Arcanum of Focus
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7485, {	-- Libram of Protection
					["qg"] = 14368,	-- Lorekeeper Lydros
					["sourceQuests"] = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["cost"] = {
						{ "i", 18334, 1 },	-- Libram of Protection
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 12735, 1 },	-- Frayed Abomination Stitching
					},
					["maxReputation"] = { FACTION_SHENDRALAR, EXALTED },	-- Shen'dralar, Exalted.
					["repeatable"] = true,
					["lvl"] = 57,
					["groups"] = {
						i(18331, {	-- Arcanum of Protection
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7483, {	-- Libram of Rapidity
					["qg"] = 14368,	-- Lorekeeper Lydros
					["sourceQuests"] = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["cost"] = {
						{ "i", 18332, 1 },	-- Libram of Rapidity
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 12938, 2 },	-- Blood of Heroes
					},
					["maxReputation"] = { FACTION_SHENDRALAR, EXALTED },	-- Shen'dralar, Exalted.
					["repeatable"] = true,
					["lvl"] = 57,
					["groups"] = {
						i(18329, {	-- Arcanum of Rapidity
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7441, {	-- Pusillin and the Elder Azj'Tordin
					["qg"] = 14355,	-- Azj'Tordin
					["coord"] = { 76.7, 37.2, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = WARPWOOD_QUARTER_MAPS,
					["lvl"] = 54,
					["groups"] = {
						objective(1, {	-- 0/1 Book of Incantations
							["provider"] = { "i", 18261 },	-- Book of Incantations
						}),
						i(18410, {	-- Sprinter's Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(18411, {	-- Spry Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27107, {	-- Pusillin The Thief
					["qg"] = 44971,	-- "Ambassador" Dagg'thol
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = WARPWOOD_QUARTER_MAPS,
					["lvl"] = lvlsquish(36, 36, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Book of Incantations
							["provider"] = { "i", 18261 },	-- Book of Incantations
						}),
					},
				}),
				q(27129, {	-- Saving Warpwood [A]
					["qg"] = 40032,	-- Telaron Windflight
					["coord"] = { 50.7, 17.2, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(27130, {	-- Saving Warpwood [H]
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["coord"] = { 74.9, 42.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(27103, {	-- Shards of the Felvine
					["qg"] = 44969,	-- Furgus Warpwood
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = WARPWOOD_QUARTER_MAPS,
					["lvl"] = lvlsquish(36, 36, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Sealed Reliquary of Purity
							["provider"] = { "i", 18540 },	-- Sealed Reliquary of Purity
							["cost"] = {
								{ "i", 18539, 1 },	-- Reliquary of Purity
								{ "i", 18501, 1 },	-- Felvine Shard
							},
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				q(84549, {	-- The Arcanist's Cookbook
					["providers"] = {
						{ "i", 228693 },	-- The Arcanist's Cookbook
						{ "n",  14383 },	-- Lorekeeper Kildrath
					},
					["timeline"] = { ADDED_1_15_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["classes"] = { MAGE },
					["lvl"] = 54,
					["groups"] = {
						i(228466, {	-- Royal Seal of Eldre'Thalas
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #endif
				q(7500, {	-- The Arcanist's Cookbook
					["providers"] = {
						{ "i", 18358 },	-- The Arcanist's Cookbook
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["maps"] = CAPITAL_GARDENS_MAPS,
					["classes"] = { MAGE },
					["lvl"] = 54,
					["groups"] = {
						i(18468, {	-- Royal Seal of Eldre'Thalas
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27112, { -- The Cursed Remains
					["qg"] = 44991,	-- Estulan
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["lvl"] = lvlsquish(39, 39, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Magister Kalendris slain
							["provider"] = { "n", 11487 },	-- Magister Kalendris
						}),
						objective(2, {	-- 0/1 Illyanna Ravenoak slain
							["provider"] = { "n", 11488 },	-- Illyanna Ravenoak
						}),
					},
				}),
				q(27109, {	-- The Warped Defender
					["qg"] = 44999,
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["lvl"] = lvlsquish(39, 39, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Tendris Warpwood slain
							["provider"] = { "n", 11489 },	-- Tendris Warpwood
						}),
					},
				}),
				q(7506, {	-- The Emerald Dream...
					["providers"] = {
						{ "i", 18364 },	-- The Emerald Dream
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["classes"] = { DRUID },
					["lvl"] = 54,
					["groups"] = {
						i(18470, {	-- Royal Seal of Eldre'Thalas
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5518, {	-- The Gordok Ogre Suit
					["qg"] = 14338,	-- Knot Thimblejack
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = GORDOK_COMMONS_MAPS,
					["cost"] = {
						{ "i", 14048, 4 },	-- Bolt of Runecloth
						{ "i", 8170, 8 },	-- Rugged Leather
						{ "i", 14341, 2 },	-- Rune Thread
						{ "i", 18240, 1 },	-- Ogre Tannin
					},
					["lvl"] = 56,
					["groups"] = {
						r(22813, {	-- Gordok Ogre Suit
							["timeline"] = { REMOVED_4_0_3 },
							["requireSkill"] = TAILORING,
						}),
						r(22815, {	-- Gordok Ogre Suit
							["timeline"] = { REMOVED_4_0_3 },
							["requireSkill"] = LEATHERWORKING,
						}),
						i(18258, {	-- Gordok Ogre Suit
							["description"] = "Before using this, clear the trash before Captain Kromcrush. Tell your group to stay back while you talk to Kromcrush with this disguise on. If they aggro him, your group will fail the Tribute Run.",
						}),
					},
				}),
				q(5519, {	-- The Gordok Ogre Suit
					["qg"] = 14338,	-- Knot Thimblejack
					["sourceQuest"] = 5518,	-- The Gordok Ogre Suit
					["maxReputation"] = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },	-- Steamwheedle Cartel, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = GORDOK_COMMONS_MAPS,
					["cost"] = {
						{ "i", 14048, 4 },	-- Bolt of Runecloth
						{ "i", 8170, 8 },	-- Rugged Leather
						{ "i", 14341, 2 },	-- Rune Thread
						{ "i", 18240, 1 },	-- Ogre Tannin
					},
					["repeatable"] = true,
					["lvl"] = 56,
					["groups"] = {
						i(18258),	-- Gordok Ogre Suit
					},
				}),
				q(27119, {	-- The Gordok Ogre Suit
					["qg"] = 14338,	-- Knot Thimblejack
					["cost"] = { { "i", 18240, 1 } },	-- Ogre Tannin
					["maps"] = GORDOK_COMMONS_MAPS,
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(42, 42, 15),
					["groups"] = {
						i(18258),	-- Gordok Ogre Suit
					},
				}),
				q(27120, {	-- The Gordok Ogre Suit
					["qg"] = 14338,	-- Knot Thimblejack
					["sourceQuest"] = 27119,	-- The Gordok Ogre Suit
					["cost"] = { { "i", 18240, 1 } },	-- Ogre Tannin
					["maps"] = GORDOK_COMMONS_MAPS,
					["timeline"] = { ADDED_4_0_3 },
					["repeatable"] = true,
					["lvl"] = lvlsquish(42, 42, 15),
					["groups"] = {
						i(18258),	-- Gordok Ogre Suit
					},
				}),
				q(5528, {	-- The Gordok Taste Test
					["qg"] = 14322,	-- Stomper Kreeg <The Drunk>
					["description"] = "With Stomper Kreeg left alive, kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.\n\nHe sells these items after you have completed the quest and if you are Friendly with him.",
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = GORDOK_COMMONS_MAPS,
					["lvl"] = 56,
					["groups"] = {
						i(18269),	-- Gordok Green Grog
						i(18284),	-- Kreeg's Stout Beatdown
					},
				}),
				q(27114, {	-- The Gordok Taste Test
					["qg"] = 14322,	-- Stomper Kreeg <The Drunk>
					["description"] = "With Stomper Kreeg left alive, kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.\n\nHe sells these items after you have completed the quest and if you are Friendly with him.",
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = GORDOK_COMMONS_MAPS,
					["lvl"] = lvlsquish(42, 42, 15),
					["groups"] = {
						i(18269),	-- Gordok Green Grog
						i(18284),	-- Kreeg's Stout Beatdown
					},
				}),
				q(7503, {	-- The Greatest Race of Hunters
					["providers"] = {
						{ "i", 18361 },	-- The Greatest Race of Hunters
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["classes"] = { HUNTER },
					["lvl"] = 54,
					["groups"] = {
						i(18473, {	-- Royal Seal of Eldre'Thalas
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27131, {	-- The Highborne [A]
					["qg"] = 40032,	-- Telaron Windflight
					["coord"] = { 50.7, 17.2, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(27132, {	-- The Highborne [H]
					["qg"] = 7875,	-- Hadoken Swiftstrider
					["coord"] = { 74.9, 42.4, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				-- #if SEASON_OF_DISCOVERY
				q(84551, {	-- The Light and How To Swing It
					["providers"] = {
						{ "i", 228690 },	-- The Light and How to Swing It
						{ "n",  14382 },	-- Lorekeeper Mykos
					},
					["timeline"] = { ADDED_1_15_3 },
					["maps"] = CAPITAL_GARDENS_MAPS,
					["classes"] = { PALADIN },
					["lvl"] = 54,
					["groups"] = {
						i(228467, {	-- Royal Seal of Eldre'Thalas
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #endif
				q(7501, {	-- The Light and How To Swing It
					["providers"] = {
						{ "i", 18359 },	-- The Light and How to Swing It
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["maps"] = CAPITAL_GARDENS_MAPS,
					["classes"] = { PALADIN },
					["lvl"] = 54,
					["groups"] = {
						i(18472, {	-- Royal Seal of Eldre'Thalas
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7461, {	-- The Madness Within
					["qg"] = 14358,	-- Shen'dralar Ancient
					["maps"] = CAPITAL_GARDENS_MAPS,
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 56,
					["groups"] = {
						objective(1, {	-- 0/1 Immol'thar slain
							["provider"] = { "n", 11496 },	-- Immol'thar
						}),
						objective(2, {	-- 0/1 Prince Tortheldrin slain
							["provider"] = { "n", 11486 },	-- Prince Tortheldrin
						}),
					},
				}),
				q(27110, {	-- The Madness Within
					["qg"] = 14358,	-- Shen'dralar Ancient
					["maps"] = CAPITAL_GARDENS_MAPS,
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(36, 36, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Immol'thar slain
							["provider"] = { "n", 11496 },	-- Immol'thar
						}),
						objective(2, {	-- 0/1 Prince Tortheldrin slain
							["provider"] = { "n", 11486 },	-- Prince Tortheldrin
						}),
					},
				}),
				q(27113, {	-- The Shen'dralar Ancient
					["qg"] = 44991,	-- Estulan
					["maps"] = CAPITAL_GARDENS_MAPS,
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(39, 39, 15),
				}),
				q(7877, {	-- The Treasure of the Shen'dralar
					["providers"] = {
						{ "n",  14358 },	-- Shen'dralar Ancient
						{ "o", 179517 },	-- Treasure of the Shen'dralar
					},
					["sourceQuest"] = 7461,	-- The Madness Within
					["maps"] = CAPITAL_GARDENS_MAPS,
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 57,
					["groups"] = {
						i(18421, {	-- Backwood Helm
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(18420, {	-- Bonecrusher
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(18424, {	-- Sedge Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27111, {	-- The Treasure of the Shen'dralar
					["providers"] = {
						{ "n",  14358 },	-- Shen'dralar Ancient
						{ "o", 179517 },	-- Treasure of the Shen'dralar
					},
					["sourceQuest"] = 27110,	-- The Madness Within
					["maps"] = CAPITAL_GARDENS_MAPS,
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(39, 39, 15),
					["groups"] = {
						i(65949),	-- Dire Maul
						i(65973),	-- Grimm's Cigar Cutter
						i(65924),	-- Shen'dralar Trident
						i(65994),	-- Staff of Athen'a
					},
				}),
				q(7703, {	-- Unfinished Gordok Business
					["qg"] = 14325,	-- Captain Kromcrush
					["description"] = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
					["maps"] = merge(WARPWOOD_QUARTER_MAPS, GORDOK_COMMONS_MAPS, CAPITAL_GARDENS_MAPS),
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 60,
					-- #if BEFORE 4.0.3
					["groups"] = {
						objective(1, {	-- 0/1 Gauntlet of Gordok Might
							["provider"] = { "i", 18336 },	-- Gauntlet of Gordok Might
						}),
						i(18367),	-- Gordok's Gauntlets
						i(18368),	-- Gordok's Gloves
						i(18366),	-- Gordok's Handguards
						i(18369),	-- Gordok's Handwraps
					},
					-- #endif
				}),
				q(27124, {	-- Unfinished Gordok Business
					["qg"] = 14325,	-- Captain Kromcrush
					["description"] = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
					["maps"] = GORDOK_COMMONS_MAPS,
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(42, 42, 15),
					["groups"] = {
						i(18367),	-- Gordok's Gauntlets
						i(18368),	-- Gordok's Gloves
						i(18366),	-- Gordok's Handguards
						i(18369),	-- Gordok's Handwraps
					},
				}),
			}),
			n(ZONE_DROPS, {
				["maps"] = ALL_DIREMAUL_MAPS,
				["groups"] = {
					i(12662),	-- Demonic Rune
					i(18640),	-- Happy Fun Rock
					i(18333, {	-- Libram of Focus
						-- #if AFTER 4.0.3
						["description"] = "This still drops despite being completely worthless.",
						-- #endif
					}),
					i(18334, {	-- Libram of Protection
						-- #if AFTER 4.0.3
						["description"] = "This still drops despite being completely worthless.",
						-- #endif
					}),
					i(18332, {	-- Libram of Rapidity
						-- #if AFTER 4.0.3
						["description"] = "This still drops despite being completely worthless.",
						-- #endif
					}),
					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(21982, {	-- Ogre Warbeads
						["timeline"] = { REMOVED_4_0_3 },
						-- #if BEFORE 4.0.3
						["crs"] = {
							11441,	-- Gordok Brute
							14351,	-- Gordok Bushwacker
							11445,	-- Gordok Captain
							11440,	-- Gordok Enforcer
							11444,	-- Gordok Mage-Lord
							11442,	-- Gordok Mauler
							11443,	-- Gordok Ogre-Mage
							11450,	-- Gordok Reaver
							11448,	-- Gordok Warlock
						},
						-- #endif
					})),
				},
			}),
			n(COMMON_BOSS_DROPS, {
				["provider"] = { "o", 179547 },	-- A Dusty Tome
				-- #if BEFORE 4.0.3
				["description"] = "The following items can drop from any boss in Dire Maul and also from Dusty Tomes on the ground.",
				-- #endif
				["maps"] = ALL_DIREMAUL_MAPS,
				["groups"] = {
					-- #if SEASON_OF_DISCOVERY
					i(228692, {	-- Codex of Defense
						["timeline"] = { ADDED_1_15_3 },
					}),
					-- #endif
					i(18357, {	-- Codex of Defense
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					i(18360, {	-- Harnessing Shadows
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(18363, {	-- Frost Shock and You
						["timeline"] = { REMOVED_4_0_3 },
					}),
					-- #if SEASON_OF_DISCOVERY
					i(228691, {	-- Garona: A Study on Stealth and Treachery
						["timeline"] = { ADDED_1_15_3 },
					}),
					-- #endif
					i(18356, {	-- Garona: A Study on Stealth and Treachery
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					i(18362, {	-- Holy Bologna: What the Light Won't Tell You
						["timeline"] = { REMOVED_4_0_3 },
					}),
					-- #if SEASON_OF_DISCOVERY
					i(228680, {	-- Nostro's Compendium of Dragon Slaying
						["timeline"] = { ADDED_1_15_3 },
					}),
					-- #endif
					i(18401, {	-- Nostro's Compendium of Dragon Slaying
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					-- #if SEASON_OF_DISCOVERY
					i(228693, {	-- The Arcanist's Cookbook
						["timeline"] = { ADDED_1_15_3 },
					}),
					-- #endif
					i(18358, {	-- The Arcanist's Cookbook
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					i(18364, {	-- The Emerald Dream
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(18361, {	-- The Greatest Race of Hunters
						["timeline"] = { REMOVED_4_0_3 },
					}),
					-- #if SEASON_OF_DISCOVERY
					i(228690, {	-- The Light and How to Swing It
						["timeline"] = { ADDED_1_15_3 },
					}),
					-- #endif
					i(18359, {	-- The Light and How to Swing It
						["timeline"] = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
				},
			}),
			o(179547, {	-- A Dusty Tome
				["maps"] = ALL_DIREMAUL_MAPS,
				["groups"] = {
					i(18365, {	-- A Thoroughly Read Copy of "Nat Pagle's Guide to Extreme Anglin'."
						-- #if BEFORE 7.0.3
						["lore"] = "This item is utterly worthless, however there was a rumor that this item could be used to obtain the original Ashbringer via fishing.",
						-- #endif
						["description"] =
							-- #if AFTER 7.0.3
							"Required for the Retribution Paladin Hidden Artifact Appearance.  This can be found in various places throughout all the wings of Dire Maul.\n\n North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\n East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\n West: By the southern generator in Immol'thar's room.",
							-- #else
							"This can be found in various places throughout all the wings of Dire Maul.\n\n North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\n East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\n West: By the southern generator in Immol'thar's room.",
							-- #endif
					}),
				},
			}),
			DIREMAUL_SUBMAP(239, WARPWOOD_QUARTER, {	-- Warpwood Quarter (East)
				["coord"] = { 64.83, 30.24, FERALAS },	-- Dire Maul [East]
				["maps"] = WARPWOOD_QUARTER_MAPS,
				["groups"] = {
					n(ZONE_DROPS, {
						i(18289, {	-- Barbed Thorn Necklace
							["crs"] = {
								11461,	-- Warpwood Guardian
								11462,	-- Warpwood Treant
								13021,	-- Warpwood Crusher
								11464,	-- Warpwood Tangler
								11465,	-- Warpwood Stomper
							},
						}),
						i(18296, {	-- Marksman Bands
							["crs"] = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
							},
						}),
						i(18295, {	-- Phasing Boots
							["cr"] = 13196,	-- Phase Lasher
						}),
						i(18603, {	-- Satyr Blood
							["timeline"] = { REMOVED_4_0_3 },
							["classes"] = { WARLOCK },
							-- #if BEFORE 4.0.3
							["crs"] = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
								11453,	-- Wildspawn Trickster
							},
							-- #endif
						}),
						i(18298, {	-- Unbridled Leggings
							["crs"] = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
							},
						}),
					}),
					n(14354, {	-- Pusillin
						["description"] = "Talk to him and then chase him. Eventually he will go up a ramp and become killable.",
						["groups"] = {
							i(18249, {	-- Crescent Key
								["description"] =
									-- #if AFTER 5.2.0
									"This key no longer has any practical use, and disappears from the inventory like a conjured item.", -- Removed with 4.0.3, and started dropping again with 5.2.0 for no apparent reason.
									-- #elseif AFTER 4.0.3
									"This key no longer has any practical use.",
									-- #else
									"This key is required to enter the Gordok Commons and Capital Gardens.",
									-- #endif
							}),
							i(18261),	-- Book of Incantations
							i(207297, {	-- Grimoire of the Felblaze Imp (CI!)
								["timeline"] = { ADDED_10_1_5 },
							}),
							i(18267),	-- Recipe: Runn Tum Tuber Surprise (RECIPE!)
						},
					}),
					n(14349, {	-- Pimgib
						i(18354, {	-- Pimgib's Collar
							["classes"] = { WARLOCK },
						}),
					}),
					e(404, {	-- Lethtendris
						["creatureID"] = 14327,
						["groups"] = {
							i(18426),	-- Lethtendris's Web
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228051, {	-- Quel'dorei Channeling Rod
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18311, {	-- Quel'dorei Channeling Rod
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18301),	-- Lethtendris' Wand
							i(18325),	-- Felhide Cap
							i(18302),	-- Band of Vigor
						},
					}),
					e(403, {	-- Hydrospawn
						["creatureID"] = 13280,
						["groups"] = {
							i(18299),	-- Hydrospawn Essence
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228052, {	-- Waveslicer
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18324, {	-- Waveslicer
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228054, {	-- Tempest Talisman
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18317, {	-- Tempest Talisman
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18305),	-- Breakwater Legguards
							i(18307),	-- Riptide Shoes
							i(18322),	-- Waterspout Boots
							applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
						},
					}),
					e(402, {	-- Zevrim Thornhoof
						["creatureID"] = 11490,
						["groups"] = {
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228050, {	-- Satyr's Bow
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18323, {	-- Satyr's Bow
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18308),	-- Clever Hat
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228053, {	-- Fervent Helm
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18319, {	-- Fervent Helm
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18313),	-- Helm of Awareness
							i(18306),	-- Gloves of Shadowy Mist
							-- #if AFTER 6.0.2
							-- This ring may have moved from Zevrim, will need to verify.
							i(18315),	-- Ring of Demonic Potency
							-- #endif
						},
					}),
					n(11491, {	-- Old Ironbark
						["description"] = "Talk to him for him to break down the door.",
					}),
					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n(16097, -- Isalien
					-- #if BEFORE 4.0.3
					bubbleDown({
						["timeline"] = { REMOVED_4_0_3 },
						-- #if NOT ANYCLASSIC
						["u"] = CONDITIONALLY_AVAILABLE,
						-- #endif
					},
					-- #endif
					{
						["description"] = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.",
						["cost"] = {
							{ "i", 22050, 1 },	-- Brazier of Beckoning [Isalien]
							{ "i", 22057, 1 },	-- Brazier of Invocation
						},
						-- #if AFTER 4.0.3
						-- This init function unmarks the removed from game flag for folks with the brazier.
						["OnInit"] = FUNCTION_TEMPLATES.OnInit.BrazierAccess,
						-- #endif
						["groups"] = {
							objective(2, {	-- 0/1 Left Piece of Lord Valthalak's Amulet
								["questID"] = 8967,	-- The Left Piece of Lord Valthalak's Amulet [WARLOCK, DRUID]
								["provider"] = { "i", 21984 },	-- Left Piece of Lord Valthalak's Amulet
							}),
							objective(2, {	-- 0/1 Right Piece of Lord Valthalak's Amulet
								["questID"] = 8990,	-- The Right Piece of Lord Valthalak's Amulet [WARRIOR, ROGUE]
								["provider"] = { "i", 22046 },	-- Right Piece of Lord Valthalak's Amulet
							}),
							i(22315),	-- Hammer of Revitalization
							i(22314),	-- Huntsman's Harpoon
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228066, {	-- Ironweave Gloves
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(22304, {	-- Ironweave Gloves
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(22472),	-- Boots of Ferocity
							i(22401, {	-- Libram of Hope
								["timeline"] = { DELETED_5_0_4 },
							}),
							i(22345, {	-- Totem of Rebirth
								["timeline"] = { DELETED_5_0_4 },
							}),
						},
					}
					-- #if BEFORE 4.0.3
					)
					-- #endif
					)),
					e(405, {	-- Alzzin the Wildshaper
						["creatureID"] = 11492,
						["groups"] = {
							i(18501, {	-- Felvine Shard
								["description"] = "Spawns under the vines near the last boss in Dire Maul East.",
								["provider"] = { "o", 179559 },	-- Felvine Shard
							}),
							i(18321),	-- Energetic Rod
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228056, {	-- Fiendish Machete
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18310, {	-- Fiendish Machete
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18328),	-- Shadewood Cloak
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228055, {	-- Energized Chestplate
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18312, {	-- Energized Chestplate
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18309),	-- Gloves of Restoration
							i(18326),	-- Razor Gauntlets
							i(18327),	-- Whipvine Cord
							i(18318),	-- Merciful Greaves
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228699, {	-- Ring of Demonic Guile
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18314, {	-- Ring of Demonic Guile
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if BEFORE 6.0.2
							-- This ring may have moved to Zevrim, will need to verify.
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228057, {	-- Ring of Demonic Potency
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18315, {	-- Ring of Demonic Potency
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #endif
						},
					}),
				},
			}),
			DIREMAUL_SUBMAP(235, GORDOK_COMMONS, {		-- Gordok Commons (North)
				["coord"] = { 62.48, 24.48, FERALAS },	-- Dire Maul [North]
				["maps"] = GORDOK_COMMONS_MAPS,
				-- #if BEFORE 4.0.3
				["cost"] = { { "i", 18249, 1 } },	-- Crescent Key
				-- #endif
				["groups"] = {
					n(ZONE_DROPS, bubbleDown({ ["timeline"] = { REMOVED_4_0_3, ADDED_10_1_5 } }, {
						i(18250, {	-- Gordok Shackle Key
							-- #if BEFORE 4.0.3
							["description"] = "NOTE: Do NOT Free Knot if you are doing a Tribute Run. He runs away.",
							-- #endif
							["crs"] = {
								14325,	-- Captain Kromcrush
								14321,	-- Guard Fengus
								14326,	-- Guard Mol'dar
								14323,	-- Guard Slip'kik
								11441,	-- Gordok Brute
								14351,	-- Gordok Bushwacker
								11445,	-- Gordok Captain
								11444,	-- Gordok Mage-Lord
								11450,	-- Gordok Reaver
								11448,	-- Gordok Warlock
							},
						}),
					})),
					n(QUESTS, bubbleDown({ ["timeline"] = { ADDED_10_1_5 } }, {
						q(77194, {	-- Free Knot!
							["qg"] = 14338,	-- Knot Thimblejack
							["description"] = "This quest becomes obtainable once a Gordok Shackle Key is looted. Completing it increases your reputation with the Steamwheedle Cartel whitout lowering your reputation with the Bloodsail Buccaneers.",
							["cost"] = {
								{ "i", 18250, 1 },	-- Gordok Shackle Key
							},
							["repeatable"] = true,
							["groups"] = {
								i(208028, {	-- Knot Thimblejack's Cache
									i(208031),	-- Convenient Crate
									i(18517),	-- Pattern: Chromatic Cloak (RECIPE!)
									i(18514),	-- Pattern: Girdle of Insight (RECIPE!)
									i(18518),	-- Pattern: Hide of the Wild (RECIPE!)
									i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
									i(18519),	-- Pattern: Shifting Cloak (RECIPE!)
									i(18516),	-- Pattern: Swift Flight Bracers (RECIPE!)
								}),
							},
						}),
					})),
					n(COMMON_BOSS_DROPS, {
						["description"] = "The following items can drop from any of the guards.",
						["crs"] = {
							14326,	-- Guard Mol'dar
							14321,	-- Guard Fengus
							14323,	-- Guard Slip'kik
						},
						["groups"] = {
							-- #if AFTER 7.3.5
							i(18498),	-- Hedgecutter
							-- #endif
							i(18462),	-- Jagged Bone Fist
							i(18463),	-- Ogre Pocket Knife
							i(18460),	-- Unsophisticated Hand Cannon
							-- #if AFTER 7.3.5
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228060, {	-- Heliotrope Cloak
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18496, {	-- Heliotrope Cloak
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228058, {	-- Bulky Iron Spaulders
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18493, {	-- Bulky Iron Spaulders
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228059, {	-- Denwatcher's Shoulders
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18494, {	-- Denwatcher's Shoulders
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #endif
							i(18450),	-- Robe of Combustion
							i(18451),	-- Hyena Hide Belt
							-- #if BEFORE 7.3.5
							i(18459),	-- Gallant's Wristguards (7.3.5 - Moved to Cho'Rush the Observer)
							i(18458),	-- Modest Armguards (7.3.5 - Moved to Captain Kromcrush)
							-- #endif
							-- #if AFTER 7.3.5
							i(18497),	-- Sublime Wristguards
							-- #endif
							i(18464),	-- Gordok Nose Ring
						},
					}),
					e(411, {	-- Guard Mol'dar
						["creatureID"] = 14326,
						-- #if BEFORE 4.0.3
						["description"] = "If you do not have a way to open the inner door, you can kill him for the Inner Door Key.\n\nDoing so will invalidate your Tribute Run.",
						-- #endif
						["groups"] = {
							-- #if BEFORE 7.3.5
							i(18498),	-- Hedgecutter
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228060, {	-- Heliotrope Cloak
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18496, {	-- Heliotrope Cloak
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228058, {	-- Bulky Iron Spaulders
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18493, {	-- Bulky Iron Spaulders
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228059, {	-- Denwatcher's Shoulders
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18494, {	-- Denwatcher's Shoulders
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18497),	-- Sublime Wristguards
							-- #endif
							i(18268, {	-- Gordok Inner Door Key
								["timeline"] = { DELETED_4_0_3 },
							}),
						},
					}),
					e(412, {	-- Stomper Kreeg
						["creatureID"] = 14322,
						["groups"] = {
							i(18425),	-- Kreeg's Mug
							-- #if AFTER 6.0.2
							i(18464),	-- Gordok Nose Ring
							-- #endif
							n(VENDORS, {
								["description"] = "After becoming the king, you can come back to Kreeg to buy some drinks.",
								["groups"] = {
									i(18269),	-- Gordok Green Grog
									i(18284),	-- Kreeg's Stout Beatdown
									i(18288),	-- Molasses Firewater
									i(18287),	-- Evermurky
								},
							}),
						},
					}),
					e(413, {	-- Guard Fengus
						["creatureID"] = 14321,
						["description"] =
							-- #if AFTER 4.0.3
							"Avoid him. His chest is empty.",
							-- #else
							"Avoid him and loot his chest for a key to open the door.",
							-- #endif
						-- #if BEFORE 4.0.3
						["groups"] = {
							i(18266, {	-- Gordok Courtyard Key
								["provider"] = { "o", 179516 },	-- Fengus's Chest
							}),
						},
						-- #endif
					}),
					e(414, {	-- Guard Slip'kik
						["creatureID"] = 14323,
						-- #if BEFORE 7.3.5
						["groups"] = {
							i(18498),	-- Hedgecutter
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228060, {	-- Heliotrope Cloak
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18496, {	-- Heliotrope Cloak
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228058, {	-- Bulky Iron Spaulders
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18493, {	-- Bulky Iron Spaulders
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228059, {	-- Denwatcher's Shoulders
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18494, {	-- Denwatcher's Shoulders
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18497),	-- Sublime Wristguards
						},
						-- #endif
					}),
					o(179501, -- Knot Thimblejack's Cache
						bubbleDownSelf({ ["timeline"] = { REMOVED_4_0_3 } }, {
						["sourceQuest"] = 5525,	-- Free Knot!
						-- #if BEFORE 4.0.3
						["cost"] = { { "i", 18250, 1 } },	-- Gordok Shackle Key
						-- #endif
						["groups"] = {
							i(18240),	-- Ogre Tannin
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228477, {	-- Pattern: Embroidered Belt of the Archmage (RECIPE!)
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18414, {	-- Pattern: Belt of the Archmage (RECIPE!)
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(227910, {	-- Pattern: Brilliant Chromatic Cloak (RECIPE!)
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18517, {	-- Pattern: Chromatic Cloak (RECIPE!)
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
							i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228319, {	-- Pattern: Girdle of Arcane Insight (RECIPE!)
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18514, {	-- Pattern: Girdle of Insight (RECIPE!)
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18518),	-- Pattern: Hide of the Wild (RECIPE!)
							i(18416),	-- Pattern: Inferno Gloves (RECIPE!)
							i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
							i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228276, {	-- Pattern: Mastercrafted Shifting Cloak (RECIPE!)
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18519, {	-- Pattern: Shifting Cloak (RECIPE!)
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18516, {	-- Pattern: Swift Flight Bracers (RECIPE!)
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228301, {	-- Pattern: Swift Flight Vambraces (RECIPE!)
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
						},
					})),
					o(179499, {	-- Ogre Tannin Basket
						["description"] = "Beware! Looting the Ogre Tannin will cause a Gordok Bushwacker to spawn. Quote is homage to the movie The Silence of the Lambs.\n\n'NO! It puts the tannin in the basket, or it gets the mallet again!'",
						["qg"] = 14351,	-- Gordok Bushwacker
						["groups"] = {
							i(18240),	-- Ogre Tannin
						},
					}),
					e(415, {	-- Captain Kromcrush
						["creatureID"] = 14325,
						["description"] =
							-- #if AFTER 4.0.3
							"Use the Gordok Ogre Suit to skip him for the Tribute Run. (Talk to him)",
							-- #else
							"In order to get to this boss, you must use the Inner Door Key or have an engineer open the door using a Seaforium Charge.\n\nUse the Gordok Ogre Suit to skip him. (talk to him)",
							-- #endif
						-- #if BEFORE 4.0.3
						["cost"] = {
							{ "i", 18268, 1 },	-- Gordok Inner Door Key
							{ "i", 18258, 1 },	-- Gordok Ogre Suit
						},
						-- #endif
						["groups"] = {
							i(18502),	-- Monstrous Glaive
							i(18503),	-- Kromcrush's Chestplate
							-- #if AFTER 7.3.5
							i(18458),	-- Modest Armguards (7.3.5 - Moved from Guards)
							-- #endif
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228068, {	-- Mugger's Belt
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18505, {	-- Mugger's Belt
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18507),	-- Boots of the Full Moon
						},
					}),
					e(416, {	-- Cho'Rush the Observer
						["creatureID"] = 14324,
						["groups"] = {
							i(18484),	-- Cho'Rush's Blade
							i(18483),	-- Mana Channeling Wand
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228064, {	-- Observer's Shield
								["description"] = "This doesn't appear to have been added yet.",
								["timeline"] = { CREATED_1_15_3 },
							})),
							-- #endif
							i(18485, {	-- Observer's Shield
								-- #if SEASON_OF_DISCOVERY
								-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
								--["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228062, {	-- Insightful Hood
								["description"] = "This doesn't appear to have been added yet.",
								["timeline"] = { CREATED_1_15_3 },
							})),
							-- #endif
							i(18490, {	-- Insightful Hood
								-- #if SEASON_OF_DISCOVERY
								-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
								--["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if AFTER 7.3.5
							i(18459),	-- Gallant's Wristguards (7.3.5 - Moved from Guards)
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved from King Gordok)
							-- #endif
						},
					}),
					e(417, {	-- King Gordok
						["creatureID"] = 11501,
						["groups"] = {
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228478, {	-- Barbarous Blade
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18520, {	-- Barbarous Blade
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18523),	-- Brightly Glowing Stone
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228480, {	-- Crown of the Ogre King
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18526, {	-- Crown of the Ogre King
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18525),	-- Bracers of Prosperity
							-- #if BEFORE 7.3.5
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
							-- #endif
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228479, {	-- Leggings of Destruction
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18524, {	-- Leggings of Destruction
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18521),	-- Grimy Metal Boots
							i(18522),	-- Band of the Ogre King
							applyclassicphase(PHASE_THREE_DMF_CARDS, i(19258)),	-- Ace of Warlords
							i(18780, {	-- Top Half of Advanced Armorsmithing: Volume I
								["timeline"] = { DELETED_4_0_3 },
							}),
						},
					}),
					n(14338, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {	-- Knot Thimblejack
						["groups"] = {
							r(22813, {	-- Gordok Ogre Suit
								["requireSkill"] = TAILORING,
								["sourceQuest"] = 27119,	-- The Gordok Ogre Suit
							}),
							r(22815, {	-- Gordok Ogre Suit
								["requireSkill"] = LEATHERWORKING,
								["sourceQuest"] = 27119,	-- The Gordok Ogre Suit
							}),
						},
					})),
					o(179564, {	-- Gordok Tribute Chest
						["description"] = "Speak with Mizzle after killing |cFFFFD700King Gordok|r to spawn the Tribute Chest.\n\nA full Tribute Run (5 items) requires leaving all bosses alive except King Gordok, and also requires activating the Frost Trap & fooling Kromcrush with the Ogre Suit, granted by the Goblin near the trap.",
						["qg"] = 14353,	-- Mizzle the Crafty
						["modelScale"] = 3,
						["groups"] = {
							i(18655),	-- Schematic: Major Recombobulator (RECIPE!)
							i(18499),	-- Barrier Shield
							i(18479),	-- Carrion Scorpid Helm
							i(18537),	-- Counterattack Lodestone
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228065, {	-- Cyclone Spaulders
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18528, {	-- Cyclone Spaulders
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18529),	-- Elemental Plate Girdle
							i(18533),	-- Gordok Bracers of Power
							i(18478),	-- Hyena Hide Jerkin
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228474, {	-- Mindsurge Robe
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18532, {	-- Mindsurge Robe
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18476),	-- Mud Stained Boots
							i(18475),	-- Oddly Magical Belt
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228070, {	-- Ogre Forged Hauberk
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18530, {	-- Ogre Forged Hauberk
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18482),	-- Ogre Toothpick Shooter
							i(18495),	-- Redoubt Cloak
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228484, {	-- Rod of the Ogre Magi
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18534, {	-- Rod of the Ogre Magi
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18480),	-- Scarab Plate Helm
							i(18477),	-- Shaggy Leggings
							i(18481),	-- Skullcracking Mace
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228469, {	-- Tarnished Elven Ring
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18500, {	-- Tarnished Elven Ring
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228486, {	-- Treant's Bane
								["description"] = "There's no evidence that this version has dropped yet. @Crieve if you get one to drop.",
								["timeline"] = { CREATED_1_15_3 },
							})),
							-- #endif
							i(18538, {	-- Treant's Bane
								-- #if SEASON_OF_DISCOVERY
								-- CRIEVE NOTE: There's no evidence that the reitemized version has dropped yet.
								--["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228473, {	-- Unyielding Maul
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18531, {	-- Unyielding Maul
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
						},
					}),
				},
			}),
			DIREMAUL_SUBMAP(236, CAPITAL_GARDENS, {		-- Capital Gardens (West)
				["coord"] = { 60.32, 30.17, FERALAS },	-- Dire Maul [West]
				["maps"] = CAPITAL_GARDENS_MAPS,
				-- #if BEFORE 4.0.3
				["cost"] = { { "i", 18249, 1 } },	-- Crescent Key
				-- #endif
				["groups"] = {
					n(VENDORS, {
						n(14371, {	-- Shen'dralar Provisioner
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228303, {	-- Pattern: Incandescent Mooncloth Robe (RECIPE!)
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18487, {	-- Pattern: Mooncloth Robe
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
						}),
					}),
					n(ZONE_DROPS, {
						i(18339, {	-- Eidolon Cloak
							["crs"] = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						i(18340, {	-- Eidolon Talisman
							["crs"] = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(22224, {	-- Jeering Spectre's Essence
							["crs"] = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11469,	-- Eldreth Seether
								11470,	-- Eldreth Sorcerer
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						})),
						i(18337, {	-- Orphic Bracers
							["crs"] = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
						i(18343, {	-- Petrified Band
							["crs"] = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(4402, {	-- Small Flame Sac
							["crs"] = {
								14398,	-- Eldreth Darter
							},
						}),
						i(18344, {	-- Stonebark Gauntlets
							["crs"] = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18338, {	-- Wand of Arcane Potency
							["crs"] = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
					}),
					e(408, {	-- Magister Kalendris
						["creatureID"] = 11487,
						["groups"] = {
							applyclassicphase(PHASE_FIVE_RECIPES, i(22309)),	-- Pattern: Big Bag of Enchantment (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228067, {	-- Elder Magus Pendant
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18397, {	-- Elder Magus Pendant
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18374),	-- Flamescarred Shoulders
							i(18350),	-- Amplifying Cloak
							i(18351),	-- Magically Sealed Bracers
							i(18371),	-- Mindtap Talisman
						},
					}),
					n(11467, {	-- Tsu'zee
						["description"] = "This is a Rare Creature and, as such, is not always present.",
						["groups"] = {
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228061, {	-- Brightspark Gloves
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18387, {	-- Brightspark Gloves
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18346),	-- Threadbare Trousers
							i(18345),	-- Murmuring Ring
						},
					}),
					e(407, {	-- Illyanna Ravenoak
						["creatureID"] = 11488,
						["groups"] = {
							i(18347),	-- Well Balanced Axe
							i(18383),	-- Force Imbued Gauntlets
							i(18349),	-- Gauntlets of Accuracy
							-- #if AFTER 7.3.5
							i(18377),	-- Quickdraw Gloves (7.3.5 - Moved from Immol'thar)
							-- #endif
							i(18386),	-- Padre's Trousers
						},
					}),
					e(406, {	-- Tendris Warpwood
						["creatureID"] = 11489,
						["groups"] = {
							i(18353),	-- Stoneflower Staff
							i(18352),	-- Petrified Bark Shield
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228063, {	-- Warpwood Bindings
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18393, {	-- Warpwood Bindings
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228468, {	-- Tanglemoss Leggings
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18390, {	-- Tanglemoss Leggings
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_SEVEN, i(235787, {	-- Ancient Ironwood Branch (QI!)
								["timeline"] = { ADDED_1_15_6 },
							})),
							-- #endif
						},
					}),
					e(409, {	-- Immol'thar
						["creatureID"] = 11496,
						["groups"] = {
							i(18372),	-- Blade of the New Moon
							i(18381),	-- Evil Eye Pendant
							i(18384),	-- Bile-Etched Spaulders
							i(18389),	-- Cloak of the Cosmos
							i(18385),	-- Robe of Everlasting Night
							i(18394),	-- Demon Howl Wristguards
							-- #if BEFORE 7.3.5
							i(18377),	-- Quickdraw Gloves (7.3.5 - Moved to Illyanna Ravenoak)
							-- #endif
							i(18391),	-- Eyestalk Cord
							i(18379),	-- Odious Greaves
							i(18370),	-- Vigilance Charm
							applyclassicphase(TBC_PHASE_ONE, i(24345, {	-- Book of Cower IV
								["spellID"] = 31709,	-- Cower IV
								["timeline"] = { REMOVED_4_0_1 },
								["classes"] = { DRUID },
								["rank"] = 4,
							})),
						},
					}),
					n(14506, -- Lord Hel'nurath
						bubbleDown({
							-- #if BEFORE 4.0.3
							["timeline"] = { REMOVED_4_0_3 },
							-- #else
							["u"] = CONDITIONALLY_AVAILABLE,
							-- #endif
						}, {
						["description"] =
							-- #if AFTER CATA
							"|cff3399ffSTEP 1:|r Warlock with (Dreadsteed of Xoroth) FOS\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs,  Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 8.2,35.8)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once creatures stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
							-- #else
							"|cff3399ffSTEP 1:|r Find a Warlock that is on or has completed Dreadsteed of Xoroth.\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs, Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 12.4, 31.6)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once creatures stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
							-- #endif
						["sourceQuest"] = 7631,	-- Dreadsteed of Xoroth
						["cost"] = {
							{ "i", 18670, 1 },	-- Xorothian Glyphs
							{ "i", 18629, 1 },	-- Black Lodestone
							{ "i", 18663, 1 },	-- J'eevee's Jar
						},
						["groups"] = {
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228475, {	-- Diabolic Mantle
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18757, {	-- Diabolic Mantle
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18755),	-- Xorothian Firestick
							i(18756),	-- Dreadguard Protector
							i(18754),	-- Fel Hardened Bracers
						},
					})),
					e(410, {	-- Prince Tortheldrin
						["creatureID"] = 11486,
						["groups"] = {
							i(18336, {	-- Gauntlet of Gordok Might
								["provider"] = { "o", 179545 },	-- The Prince's Chest
								["description"] = "In the corner of the room that the Prince is in, next to the bookshelves, there is a small chest on the ground that contains the gauntlet. You must kill the Prince in order for the chest to be interactable.",
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228472, {	-- Distracting Dagger
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18392, {	-- Distracting Dagger
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18396),	-- Mind Carver
							i(18376),	-- Timeworn Mace
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228471, {	-- Stoneshatter
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18388, {	-- Stoneshatter
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18382),	-- Fluctuating Cloak
							i(18373),	-- Chestplate of Tranquility
							i(18375),	-- Bracers of the Eclipse
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228069, {	-- Eldritch Reinforced Legplates
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18380, {	-- Eldritch Reinforced Legplates
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228470, {	-- Silvermoon Leggings
								["timeline"] = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18378, {	-- Silvermoon Leggings
								-- #if SEASON_OF_DISCOVERY
								["timeline"] = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18395),	-- Emerald Flame Ring
						},
					}),
				},
			}),
		},
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(230, {
		q(35890),	-- Dire Maul (Warpwood Quarter) Reward Quest - Normal completion
		q(35891),	-- Dire Maul (Capital Gardens) Reward Quest - Normal completion
		q(35892),	-- Dire Maul (Gordok Commons) Reward Quest - Normal completion
		q(35894),	-- Dire Maul (Bonus) Reward Quest
		q(35956),	-- Dire Maul (Everything) Reward Quest
	}),
})));