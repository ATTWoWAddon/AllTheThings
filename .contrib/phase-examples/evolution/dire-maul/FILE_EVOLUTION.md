# Dire Maul: Lua and JSON, P1 → P4

[All six instances](../README.md) · [The shared schedule](../../schedule.json)

Open Dire Maul separately from the Isalien summon. Keep the summon’s cost, provider, quest conditions and loot together. Other later quests, recipes and drops retain their own rules.

**Read down:** P1 → P2.1 → P2.2 → P3 → P4. These are migration steps, not game release phases. Each step below shows the file you would change and a complete saved version of the result.

## P1 — start with the existing Lua file

**Lua source:** `.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Dire Maul.lua`

**Saved P1 copy:** [Dire Maul.lua](../p1/Dire%20Maul.lua). Its first line identifies the copy; everything after that line is byte-for-byte the current production source. **No new JSON yet.**

<details>
<summary>Read the whole P1 file</summary>

```lua
-- P1 | Full authoring source at the start of migration. Original: .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Dire Maul.lua
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local WARPWOOD_QUARTER = createHeader({
	readable = "Warpwood Quarter",
	icon = 236292,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL5.." (" .. L.EAST ..")"]]
	},
	description = {
		en = "This part of the instance can be accessed from the eastern-most portal. (right side)",
		-- TODO: de = "",
		es = "Se puede acceder a esta parte de la mazmorra desde el portal más al este. (lado derecho)",
		mx = "Se puede acceder a esta parte del calabozo desde el portal más al este. (lado derecho)",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "该副本的此部分可从最东侧的入口进入。（右侧）",
		tw = "副本的這部分可以從最東邊的傳送門進入。（右側）",
	},
});
local GORDOK_COMMONS = createHeader({
	readable = "Gordok Commons",
	icon = 236695,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL1.." (" .. L.NORTH ..")"]]
	},
	description = {
		en = "This part of the instance can be accessed from the northern-most portal.",
		-- TODO: de = "",
		es = "Se puede acceder a esta parte de la mazmorra desde el portal más al norte.",
		mx = "Se puede acceder a esta parte del calabozo desde el portal más al norte.",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "该副本的此部分可从最北侧的入口进入。",
		tw = "副本的這部分可以從最北邊的傳送門進入。",
	},
});
local CAPITAL_GARDENS = createHeader({
	readable = "Capital Gardens",
	icon = 134162,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL2.." (" .. L.WEST ..")"]]
	},
	description = {
		en = "This part of the instance can be accessed from the western-most portal. (left side)",
		-- TODO: de = "",
		es = "Se puede acceder a esta parte de la mazmorra desde el portal más al oeste. (lado izquierdo)",
		mx = "Se puede acceder a esta parte del calabozo desde el portal más al oeste. (lado izquierdo)",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "该副本的此部分可从最西侧的入口进入。（左侧）",
		tw = "副本的這部分可以從最西邊的傳送門進入。（左側）",
	},
});

local DIREMAUL_SUBMAP = function(mapID, headerID, t)
	t.headerID = headerID;
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
		lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
		-- #endif
		-- #if BEFORE MOP
		zoneTextAreaIDs = {
			2557,	-- Dire Maul
			2577,	-- Eldreth Row
			3217,	-- "The Maul" now points to Dire Maul.
			-- #if AFTER CATA
			-- This areaID doesn't exist until Cataclysm!
			4992,	-- "Broken Commons" now points to Dire Maul.
			-- #endif
		},
		-- #endif
		timeline = { ADDED_1_2_0 },
		maps = {
			DIRE_MAUL,
			DIRE_MAUL_SHRINE_OF_ELDRETHARR,
		},
		lvl = lvlsquish(44, 44, 15),
		groups = {
			n(ACHIEVEMENTS, {
				achWithRep(5788, FACTION_SHENDRALAR, {	-- Agent of the Shen'dralar [Shen'dralar Exalted]
					-- #if BEFORE WRATH
					icon = 133736,	-- CRIEVE NOTE: The other icon doesn't exist in the game files yet
					-- #endif
					maps = CAPITAL_GARDENS_MAPS,
					timeline = { REMOVED_4_0_3 },
				}),
				ach(644, {	-- King of Dire Maul
					maps = merge(WARPWOOD_QUARTER_MAPS, GORDOK_COMMONS_MAPS, CAPITAL_GARDENS_MAPS),
				}),
				ach(5053, {	-- King of Dire Maul Guild Run
					timeline = { ADDED_4_0_3 },
				}),
			}),
			n(FACTIONS, {
				faction(FACTION_SHENDRALAR, {	-- Shen'dralar
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					-- #if BEFORE 4.0.3
					OnTooltip = OnTooltipForShendralar,
					-- #endif
				}),
				faction(FACTION_STEAMWHEEDLE_CARTEL, {	-- Steamwheedle Cartel
					icon = 133784,
					-- #if BEFORE 4.0.3
					OnTooltip = OnTooltipForSteamweedle,
					-- #endif
					maps = merge(GORDOK_COMMONS_MAPS, {
						FERALAS,
						STRANGLETHORN_VALE,
						TANARIS,
						THE_BARRENS,
						WINTERSPRING,
					}),
					-- #if AFTER 4.0.3
					description = "This is a hidden reputation. It might not count towards reputation achievements.",
					collectible = false,
					-- #endif
				}),
			}),
			n(QUESTS, {
				q(1193, {	-- A Broken Trap
					-- #if BEFORE 4.0.3
					description = "Use the items on the Broken Trap to trap Guard Slip'kik. It takes a few seconds to finish fixing the trap.\n\nYou must activate this trap in order to do the Tribute Run.",
					cost = {
						{ "i", 15994, 1 },	-- Thorium Widget
						{ "i", 3829, 1 },	-- Frost Oil
					},
					-- #endif
					provider = { "o", 179485 },	-- Broken Trap
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					repeatable = true,
					lvl = lvlsquish(56, 56, 15),
				}),
				q(27118, {	-- A Broken Trap
					description = "You must trap Guard Slip'kik in order to qualify for the full Tribute loot table.",
					provider = { "o", 179485 },	-- Broken Trap
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					repeatable = true,
					lvl = lvlsquish(42, 42, 15),
				}),
				q(7463, {	-- Arcane Refreshment
					qg = 14368,	-- Lorekeeper Lydros
					timeline = { REMOVED_4_0_3 },
					maps = merge(WARPWOOD_QUARTER_MAPS, CAPITAL_GARDENS_MAPS),
					classes = { MAGE },
					lvl = 60,
					-- #if BEFORE 4.0.3
					groups = {
						objective(1, {	-- 0/1 Hydrospawn Essence
							provider = { "i", 18299 },	-- Hydrospawn Essence
						}),
						recipe(10140),	-- Conjure Water (Rank 7)
					},
					-- #endif
				}),
				q(27104, {	-- Alzzin the Wildshaper
					qg = 44969,	-- Furgus Warpwood
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Zevrim Thornhoof slain
							provider = { "n", 11490 },	-- Zevrim Thornhoof
						}),
						objective(2, {	-- 0/1 Alzzin the Wildshaper slain
							provider = { "n", 11492 },	-- Alzzin the Wildshaper
						}),
						i(65948),	-- Warpwood Bark Vest
						i(65972),	-- Warpwood Bow
						i(65922),	-- Warpwood Leaf Mantle
						i(65993),	-- Warpwood Shield
					},
				}),
				q(27105, {	-- An Unwelcome Guest
					qg = 44969,	-- Furgus Warpwood
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Hydrospawn Essence
							provider = { "i", 18299 },	-- Hydrospawn Essence
						}),
					},
				}),
				q(7492, {	-- Camp Mojache
					qgs = {
						10879,	-- Harbinger Balthazad
						10880,	-- Warcaller Gorlach
						10881,	-- Bluff Runner Windstrider
					},
					coords = {
						{ 46.6, 64.6, ORGRIMMAR },
						{ 41.4, 54.2, THUNDER_BLUFF },
						{ 69.2, 49.2, UNDERCITY },
					},
					timeline = { REMOVED_4_0_3 },
					maps = { FERALAS },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = 54,
				}),
				q(5527, {	-- A Reliquary of Purity
					qg = 11801,	-- Rabine Saturna
					coord = { 51.7, 45.1, MOONGLADE },
					description = "The character must first visit Dire Maul, so that the Moonglade NPC will offer a conversation that unlocks the quest.",
					timeline = { REMOVED_4_0_3 },
					maps = { SILITHUS },
					lvl = 56,
					groups = {
						objective(1, {	-- 0/1 Reliquary of Purity
							providers = {
								{ "i", 22201 },	-- Reliquary of Purity
								{ "o", 179565 },	-- Dusty Reliquary
							},
							coord = { 63.2, 55.4, SILITHUS },
						}),
					},
				}),
				q(5526, {	-- Shards of the Felvine
					sourceQuest = 5527,	-- A Reliquary of Purity
					qg = 11801,	-- Rabine Saturna
					coord = { 51.7, 45.1, MOONGLADE },
					timeline = { REMOVED_4_0_3 },
					lvl = 56,
					groups = {
						objective(1, {	-- 0/1 Sealed Reliquary of Purity
							provider = { "i", 18540 },	-- Sealed Reliquary of Purity
							cost = {
								{ "i", 18539, 1 },	-- Reliquary of Purity
								{ "i", 18501, 1 },	-- Felvine Shard
							},
						}),
						i(18535),	-- Milli's Shield
						i(18536),	-- Milli's Lexicon
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				q(84550, {	-- Codex of Defense
					providers = {
						{ "i", 228692 },	-- Codex of Defense
						{ "n",  14383 },	-- Lorekeeper Kildrath
					},
					timeline = { ADDED_1_15_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { WARRIOR },
					lvl = 54,
					groups = {
						i(228465),	-- Royal Seal of Eldre'Thalas
					},
				}),
				-- #endif
				q(7499, {	-- Codex of Defense
					providers = {
						{ "i", 18357 },	-- Codex of Defense
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					timeline = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { WARRIOR },
					lvl = 54,
					groups = {
						i(18466, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7631, {	-- Dreadsteed of Xoroth
					sourceQuest = 7629,	-- Imp Delivery
					qg = 14436,	-- Mor'zul Bloodbringer
					qi = 18818,	-- Mor'zul's Instructions
					coord = { 12.6, 31.6, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { WARLOCK },
					lvl = 60,
					groups = {
						ach(2357, {	-- Dreadsteed of Xoroth
							sourceQuest = 7631,	-- Dreadsteed of Xoroth
							classes = { WARLOCK },
						}),
						mount(23161, {	-- Dreadsteed (MOUNT!)
							providers = {
								{ "n", 14502 },	-- Xorothian Dreadsteed
								{ "n", 14504 },	-- Dreadsteed Spirit
							},
							classes = { WARLOCK },
						}),
					},
				}),
				{	-- Elven Legends
					allianceQuestData = q(7482, {	-- Elven Legends (A)
						qg = 14374,	-- Scholar Runethorn
						coord = { 31.2, 43.9, FERALAS },
					}),
					hordeQuestData = q(7481, {	-- Elven Legends (H)
						qg = 14373,	-- Sage Korolusk
						coord = { 75.3, 43.8, FERALAS },
					}),
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = 54,
					groups = {
						objective(1, {	-- Master Telmius Dreamseeker Found
							provider = { "o", 179544 },	-- Skeletal Remains of Telmius Dreamseeker
						}),
					},
				},
				applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
					providers = {
						-- #IF BEFORE 4.0.3
						{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
						-- #ENDIF
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					timeline = { REMOVED_4_0_3 },
					maps = {
						236,	-- Capital Gardens
						BLACKROCK_SPIRE,
						LBRS_SKITTERWEB_TUNNELS,
						LBRS_HORDEMAR_CITY,
						LBRS_HALL_OF_BLACKHAND,
						LBRS_HALYCONS_LAIR,
						LBRS_CHAMBER_OF_BATTLE,
					},
					cost = {
						{ "i", 18779, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume I
						{ "i", 18780, 1 },	-- Top Half of Advanced Armorsmithing: Volume I
					},
					requireSkill =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					groups = {
						i(12727),	-- Plans: Enchanted Thorium Breastplate (RECIPE!)
					},
				})),
				applyclassicphase(PHASE_THREE_RECIPES, q(7650, {	-- Enchanted Thorium Platemail: Volume II
					providers = {
						-- #IF BEFORE 4.0.3
						{ "i", 18770 },	-- Enchanted Thorium Platemail (Volume II)
						-- #ENDIF
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					timeline = { REMOVED_4_0_3 },
					maps = {
						236,	-- Capital Gardens
						STRATHOLME, SCHOLOMANCE
					},
					cost = {
						{ "i", 18781, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume II
						{ "i", 18782, 1 },	-- Top Half of Advanced Armorsmithing: Volume II
					},
					requireSkill =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					lvl = 50,
					groups = {
						i(12726),	-- Plans: Enchanted Thorium Leggings (RECIPE!)
					},
				})),
				applyclassicphase(PHASE_THREE_RECIPES, q(7651, {	-- Enchanted Thorium Platemail: Volume III
					providers = {
						-- #if BEFORE 4.0.3
						{ "i", 18771 },	-- Enchanted Thorium Platemail (Volume III)
						-- #endif
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					timeline = { REMOVED_4_0_3 },
					maps = merge(CAPITAL_GARDENS_MAPS, {
						BLACKROCK_SPIRE,
						LBRS_SKITTERWEB_TUNNELS,
						LBRS_HORDEMAR_CITY,
						LBRS_HALL_OF_BLACKHAND,
						LBRS_HALYCONS_LAIR,
						LBRS_CHAMBER_OF_BATTLE,
						STRATHOLME
					}),
					cost = {
						{ "i", 18783, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume III
						{ "i", 18784, 1 },	-- Top Half of Advanced Armorsmithing: Volume III
					},
					requireSkill =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					lvl = 50,
					groups = {
						i(12725),	-- Plans: Enchanted Thorium Helm (RECIPE!)
					},
				})),
				q(7494, {	-- Feathermoon Stronghold
					qgs = {
						2198,	-- Crier Goodman
						10877,	-- Courier Hammerfall
						10878,	-- Herald Moonstalker
					},
					coords = {
						{ 39.0, 63.6, DARNASSUS },
						{ 30.5, 67.0, IRONFORGE },
						{ 54.8, 62.6, STORMWIND_CITY },
					},
					timeline = { REMOVED_4_0_3 },
					maps = { FERALAS },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = 54,
				}),
				q(5525, {	-- Free Knot!
					-- #if BEFORE 4.0.3
					description = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
					cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
					-- #endif
					qg = 14338,	-- Knot Thimblejack
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = 54,
				}),
				q(7429, {	-- Free Knot! (repeatable)
					-- #if BEFORE 4.0.3
					description = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
					cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
					-- #endif
					sourceQuest = 5525,	-- Free Knot!
					qg = 14338,	-- Knot Thimblejack
					maxReputation = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					repeatable = true,
					lvl = 54,
				}),
				q(7505, {	-- Frost Shock and You
					providers = {
						{ "i", 18363 },	-- Frost Shock and You
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					-- #if BEFORE TBC
					races = HORDE_ONLY,
					-- #endif
					classes = { SHAMAN },
					lvl = 54,
					groups = {
						i(18471),	-- Royal Seal of Eldre'Thalas
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				q(84548, {	-- Garona: A Study on Stealth and Treachery
					providers = {
						{ "i", 228691 },	-- Garona: A Study on Stealth and Treachery
						{ "n",  14383 },	-- Lorekeeper Kildrath
					},
					timeline = { ADDED_1_15_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { ROGUE },
					lvl = 54,
					groups = {
						i(228464),	-- Royal Seal of Eldre'Thalas
					},
				}),
				-- #endif
				q(7498, {	-- Garona: A Study on Stealth and Treachery
					providers = {
						{ "i", 18356 },	-- Garona: A Study on Stealth and Treachery
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					timeline = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { ROGUE },
					lvl = 54,
					groups = {
						i(18465, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7502, {	-- Harnessing Shadows
					providers = {
						{ "i", 18360 },	-- Harnessing Shadows
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { WARLOCK },
					lvl = 54,
					groups = {
						i(18467),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7504, {	-- Holy Bologna: What the Light Won't Tell You
					providers = {
						{ "i", 18362 },	-- Holy Bologna: What the Light Won't Tell You
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { PRIEST },
					lvl = 54,
					groups = {
						i(18469),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(27125, {	-- King of the Gordok [Alliance]
					sourceQuest = 27133,	-- Eyes in the Sky
					qg = 45040,	-- Druid of the Talon
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						objective(1, {	-- 0/1 King Gordok slain
							provider = { "n", 11501 },	-- King Gordok
						}),
						i(65976),	-- Pauldrons of Tribute
						i(65927),	-- Slippers of Tribute
						i(65997),	-- Tribute Gun
						i(65952),	-- Wristbands of Tribute
					},
				}),
				q(27128, {	-- King of the Gordok [Horde]
					qg = 45052,	-- Stonemaul Ogre
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					races = HORDE_ONLY,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						objective(1, {	-- 0/1 King Gordok slain
							provider = { "n", 11501 },	-- King Gordok
						}),
						i(66036),	-- Pauldrons of Tribute
						i(66018),	-- Slippers of Tribute
						i(66043),	-- Tribute Gun
						i(66027),	-- Wristbands of Tribute
					},
				}),
				q(7488, {	-- Lethtendris's Web [Alliance]
					sourceQuest = 7494,	-- Feathermoon Stronghold
					qg = 7877,	-- Latronicus Moonspear
					coord = { 30.4, 46.2, FERALAS },
					timeline = { REMOVED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					races = ALLIANCE_ONLY,
					lvl = 54,
					groups = {
						objective(1, {	-- 0/1 Lethtendris's Web
							provider = { "i", 18426 },	-- Lethtendris's Web
						}),
						i(18491),	-- Lorespinner
					},
				}),
				q(7489, {	-- Lethtendris's Web [Horde]
					sourceQuest = 7492,	-- Camp Mojache
					qg = 7776,	-- Talo Thornhoof
					coord = { 76.2, 43.8, FERALAS },
					timeline = { REMOVED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					races = HORDE_ONLY,
					lvl = 54,
					groups = {
						objective(1, {	-- 0/1 Lethtendris's Web
							provider = { "i", 18426 },	-- Lethtendris's Web
						}),
						i(18491),	-- Lorespinner
					},
				}),
				q(27108, {	-- Lethtendris's Web
					qg = 44971,	-- "Ambassador" Dagg'thol
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Lethtendris's Web
							provider = { "i", 18426 },	-- Lethtendris's Web
						}),
					},
				}),
				q(7484, {	-- Libram of Focus
					sourceQuests = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					qg = 14368,	-- Lorekeeper Lydros
					maxReputation = { FACTION_SHENDRALAR, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					cost = {
						{ "i", 18333, 1 },	-- Libram of Focus
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 4 },	-- Large Brilliant Shard
						{ "i", 12753, 2 },	-- Skin of Shadow
					},
					repeatable = true,
					lvl = 57,
					groups = {
						i(18330),	-- Arcanum of Focus
					},
				}),
				q(7485, {	-- Libram of Protection
					sourceQuests = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					qg = 14368,	-- Lorekeeper Lydros
					maxReputation = { FACTION_SHENDRALAR, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					cost = {
						{ "i", 18334, 1 },	-- Libram of Protection
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 12735, 1 },	-- Frayed Abomination Stitching
					},
					repeatable = true,
					lvl = 57,
					groups = {
						i(18331),	-- Arcanum of Protection
					},
				}),
				q(7483, {	-- Libram of Rapidity
					sourceQuests = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					qg = 14368,	-- Lorekeeper Lydros
					maxReputation = { FACTION_SHENDRALAR, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					cost = {
						{ "i", 18332, 1 },	-- Libram of Rapidity
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 12938, 2 },	-- Blood of Heroes
					},
					repeatable = true,
					lvl = 57,
					groups = {
						i(18329),	-- Arcanum of Rapidity
					},
				}),
				q(7441, {	-- Pusillin and the Elder Azj'Tordin
					qg = 14355,	-- Azj'Tordin
					coord = { 76.7, 37.2, FERALAS },
					timeline = { REMOVED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = 54,
					groups = {
						objective(1, {	-- 0/1 Book of Incantations
							provider = { "i", 18261 },	-- Book of Incantations
						}),
						i(18410),	-- Sprinter's Sword
						i(18411),	-- Spry Boots
					},
				}),
				q(27107, {	-- Pusillin The Thief
					qg = 44971,	-- "Ambassador" Dagg'thol
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Book of Incantations
							provider = { "i", 18261 },	-- Book of Incantations
						}),
					},
				}),
				q(27129, {	-- Saving Warpwood [A]
					qg = 40032,	-- Telaron Windflight
					coord = { 50.7, 17.2, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
				}),
				q(27130, {	-- Saving Warpwood [H]
					qg = 7875,	-- Hadoken Swiftstrider
					coord = { 74.9, 42.4, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				q(27103, {	-- Shards of the Felvine
					qg = 44969,	-- Furgus Warpwood
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Sealed Reliquary of Purity
							provider = { "i", 18540 },	-- Sealed Reliquary of Purity
							cost = {
								{ "i", 18539, 1 },	-- Reliquary of Purity
								{ "i", 18501, 1 },	-- Felvine Shard
							},
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				q(84549, {	-- The Arcanist's Cookbook
					providers = {
						{ "i", 228693 },	-- The Arcanist's Cookbook
						{ "n",  14383 },	-- Lorekeeper Kildrath
					},
					timeline = { ADDED_1_15_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { MAGE },
					lvl = 54,
					groups = {
						i(228466, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #endif
				q(7500, {	-- The Arcanist's Cookbook
					providers = {
						{ "i", 18358 },	-- The Arcanist's Cookbook
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					timeline = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { MAGE },
					lvl = 54,
					groups = {
						i(18468, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27112, {	-- The Cursed Remains
					qg = 44991,	-- Estulan
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
					groups = {
						objective(1, {	-- 0/1 Magister Kalendris slain
							provider = { "n", 11487 },	-- Magister Kalendris
						}),
						objective(2, {	-- 0/1 Illyanna Ravenoak slain
							provider = { "n", 11488 },	-- Illyanna Ravenoak
						}),
					},
				}),
				q(27109, {	-- The Warped Defender
					qg = 44999,
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
					groups = {
						objective(1, {	-- 0/1 Tendris Warpwood slain
							provider = { "n", 11489 },	-- Tendris Warpwood
						}),
					},
				}),
				q(7506, {	-- The Emerald Dream...
					providers = {
						{ "i", 18364 },	-- The Emerald Dream
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { DRUID },
					lvl = 54,
					groups = {
						i(18470),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(5518, {	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = {
						{ "i", 14048, 4 },	-- Bolt of Runecloth
						{ "i", 8170, 8 },	-- Rugged Leather
						{ "i", 14341, 2 },	-- Rune Thread
						{ "i", 18240, 1 },	-- Ogre Tannin
					},
					lvl = 56,
					groups = {
						r(22813, {	-- Gordok Ogre Suit
							requireSkill = TAILORING,
						}),
						r(22815, {	-- Gordok Ogre Suit
							requireSkill = LEATHERWORKING,
						}),
						i(18258, {	-- Gordok Ogre Suit
							description = "Before using this, clear the trash before Captain Kromcrush. Tell your group to stay back while you talk to Kromcrush with this disguise on. If they aggro him, your group will fail the Tribute Run.",
						}),
					},
				}),
				q(5519, {	-- The Gordok Ogre Suit
					sourceQuest = 5518,	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					maxReputation = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = {
						{ "i", 14048, 4 },	-- Bolt of Runecloth
						{ "i", 8170, 8 },	-- Rugged Leather
						{ "i", 14341, 2 },	-- Rune Thread
						{ "i", 18240, 1 },	-- Ogre Tannin
					},
					repeatable = true,
					lvl = 56,
					groups = { i(18258) },	-- Gordok Ogre Suit
				}),
				q(27119, {	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = { { "i", 18240, 1 } },	-- Ogre Tannin
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18258),	-- Gordok Ogre Suit
					},
				}),
				q(27120, {	-- The Gordok Ogre Suit
					sourceQuest = 27119,	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = { { "i", 18240, 1 } },	-- Ogre Tannin
					repeatable = true,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18258),	-- Gordok Ogre Suit
					},
				}),
				q(5528, {	-- The Gordok Taste Test
					description = "With Stomper Kreeg left alive, kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.\n\nHe sells these items after you have completed the quest and if you are Friendly with him.",
					qg = 14322,	-- Stomper Kreeg <The Drunk>
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = 56,
					groups = {
						i(18269),	-- Gordok Green Grog
						i(18284),	-- Kreeg's Stout Beatdown
					},
				}),
				q(27114, {	-- The Gordok Taste Test
					description = "With Stomper Kreeg left alive, kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.\n\nHe sells these items after you have completed the quest and if you are Friendly with him.",
					qg = 14322,	-- Stomper Kreeg <The Drunk>
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18269),	-- Gordok Green Grog
						i(18284),	-- Kreeg's Stout Beatdown
					},
				}),
				q(7503, {	-- The Greatest Race of Hunters
					providers = {
						{ "i", 18361 },	-- The Greatest Race of Hunters
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { HUNTER },
					lvl = 54,
					groups = {
						i(18473),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(27131, {	-- The Highborne [A]
					qg = 40032,	-- Telaron Windflight
					coord = { 50.7, 17.2, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
				}),
				q(27132, {	-- The Highborne [H]
					qg = 7875,	-- Hadoken Swiftstrider
					coord = { 74.9, 42.4, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				-- #if SEASON_OF_DISCOVERY
				q(84551, {	-- The Light and How To Swing It
					providers = {
						{ "i", 228690 },	-- The Light and How to Swing It
						{ "n",  14382 },	-- Lorekeeper Mykos
					},
					timeline = { ADDED_1_15_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { PALADIN },
					lvl = 54,
					groups = {
						i(228467, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #endif
				q(7501, {	-- The Light and How To Swing It
					providers = {
						{ "i", 18359 },	-- The Light and How to Swing It
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					timeline = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_3,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { PALADIN },
					lvl = 54,
					groups = {
						i(18472, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7461, {	-- The Madness Within
					qg = 14358,	-- Shen'dralar Ancient
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = 56,
					groups = {
						objective(1, {	-- 0/1 Immol'thar slain
							provider = { "n", 11496 },	-- Immol'thar
						}),
						objective(2, {	-- 0/1 Prince Tortheldrin slain
							provider = { "n", 11486 },	-- Prince Tortheldrin
						}),
					},
				}),
				q(27110, {	-- The Madness Within
					qg = 14358,	-- Shen'dralar Ancient
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Immol'thar slain
							provider = { "n", 11496 },	-- Immol'thar
						}),
						objective(2, {	-- 0/1 Prince Tortheldrin slain
							provider = { "n", 11486 },	-- Prince Tortheldrin
						}),
					},
				}),
				q(27113, {	-- The Shen'dralar Ancient
					qg = 44991,	-- Estulan
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
				}),
				q(7877, {	-- The Treasure of the Shen'dralar
					sourceQuest = 7461,	-- The Madness Within
					providers = {
						{ "n",  14358 },	-- Shen'dralar Ancient
						{ "o", 179517 },	-- Treasure of the Shen'dralar
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = 57,
					groups = {
						i(18421),	-- Backwood Helm
						i(18420),	-- Bonecrusher
						i(18424),	-- Sedge Boots
					},
				}),
				q(27111, {	-- The Treasure of the Shen'dralar
					sourceQuest = 27110,	-- The Madness Within
					providers = {
						{ "n",  14358 },	-- Shen'dralar Ancient
						{ "o", 179517 },	-- Treasure of the Shen'dralar
					},
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
					groups = {
						i(65949),	-- Dire Maul
						i(65973),	-- Grimm's Cigar Cutter
						i(65924),	-- Shen'dralar Trident
						i(65994),	-- Staff of Athen'a
					},
				}),
				q(7703, {	-- Unfinished Gordok Business
					description = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
					qg = 14325,	-- Captain Kromcrush
					timeline = { REMOVED_4_0_3 },
					maps = merge(WARPWOOD_QUARTER_MAPS, GORDOK_COMMONS_MAPS, CAPITAL_GARDENS_MAPS),
					lvl = 60,
					-- #if BEFORE 4.0.3
					groups = {
						objective(1, {	-- 0/1 Gauntlet of Gordok Might
							provider = { "i", 18336 },	-- Gauntlet of Gordok Might
						}),
						i(18367),	-- Gordok's Gauntlets
						i(18368),	-- Gordok's Gloves
						i(18366),	-- Gordok's Handguards
						i(18369),	-- Gordok's Handwraps
					},
					-- #endif
				}),
				q(27124, {	-- Unfinished Gordok Business
					description = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
					qg = 14325,	-- Captain Kromcrush
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18367),	-- Gordok's Gauntlets
						i(18368),	-- Gordok's Gloves
						i(18366),	-- Gordok's Handguards
						i(18369),	-- Gordok's Handwraps
					},
				}),
			}),
			n(TREASURES, {
				o(179526, {	-- Warpwood Pod
					i(18255),	-- Runn Tum Tuber
					i(18297),	-- Thornling Seed
				}),
			}),
			n(ZONE_DROPS, {
				maps = ALL_DIREMAUL_MAPS,
				groups = {
					i(12662),	-- Demonic Rune
					i(18640),	-- Happy Fun Rock
					i(18333, {	-- Libram of Focus
						-- #if AFTER 4.0.3
						description = "This still drops despite being completely worthless.",
						-- #endif
					}),
					i(18334, {	-- Libram of Protection
						-- #if AFTER 4.0.3
						description = "This still drops despite being completely worthless.",
						-- #endif
					}),
					i(18332, {	-- Libram of Rapidity
						-- #if AFTER 4.0.3
						description = "This still drops despite being completely worthless.",
						-- #endif
					}),
					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(21982, {	-- Ogre Warbeads
						timeline = { REMOVED_4_0_3 },
						-- #if BEFORE 4.0.3
						crs = {
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
				provider = { "o", 179547 },	-- A Dusty Tome
				-- #if BEFORE 4.0.3
				description = "The following items can drop from any boss in Dire Maul and also from Dusty Tomes on the ground.",
				-- #endif
				maps = ALL_DIREMAUL_MAPS,
				groups = {
					-- #if SEASON_OF_DISCOVERY
					i(228692, {	-- Codex of Defense
						timeline = { ADDED_1_15_3 },
					}),
					-- #endif
					i(18357, {	-- Codex of Defense
						timeline = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					i(18360, {	-- Harnessing Shadows
						timeline = { REMOVED_4_0_3 },
					}),
					i(18363, {	-- Frost Shock and You
						timeline = { REMOVED_4_0_3 },
					}),
					-- #if SEASON_OF_DISCOVERY
					i(228691, {	-- Garona: A Study on Stealth and Treachery
						timeline = { ADDED_1_15_3 },
					}),
					-- #endif
					i(18356, {	-- Garona: A Study on Stealth and Treachery
						timeline = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					i(18362, {	-- Holy Bologna: What the Light Won't Tell You
						timeline = { REMOVED_4_0_3 },
					}),
					-- #if SEASON_OF_DISCOVERY
					i(228680, {	-- Nostro's Compendium of Dragon Slaying
						timeline = { ADDED_1_15_3 },
					}),
					-- #endif
					i(18401, {	-- Nostro's Compendium of Dragon Slaying
						timeline = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					-- #if SEASON_OF_DISCOVERY
					i(228693, {	-- The Arcanist's Cookbook
						timeline = { ADDED_1_15_3 },
					}),
					-- #endif
					i(18358, {	-- The Arcanist's Cookbook
						timeline = {
							-- #if SEASON_OF_DISCOVERY
							REMOVED_1_15_3,
							-- #else
							REMOVED_4_0_3,
							-- #endif
						},
					}),
					i(18364, {	-- The Emerald Dream
						timeline = { REMOVED_4_0_3 },
					}),
					i(18361, {	-- The Greatest Race of Hunters
						timeline = { REMOVED_4_0_3 },
					}),
					-- #if SEASON_OF_DISCOVERY
					i(228690, {	-- The Light and How to Swing It
						timeline = { ADDED_1_15_3 },
					}),
					-- #endif
					i(18359, {	-- The Light and How to Swing It
						timeline = {
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
				maps = ALL_DIREMAUL_MAPS,
				groups = {
					i(18365, {	-- A Thoroughly Read Copy of "Nat Pagle's Guide to Extreme Anglin'."
						-- #if BEFORE 7.0.3
						lore = "This item is utterly worthless, however there was a rumor that this item could be used to obtain the original Ashbringer via fishing.",
						-- #endif
						description =
							-- #if AFTER 7.0.3
							"Required for the Retribution Paladin Hidden Artifact Appearance. This can be found in various places throughout all the wings of Dire Maul.\n\n North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\n East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\n West: By the southern generator in Immol'thar's room.",
							-- #else
							"This can be found in various places throughout all the wings of Dire Maul.\n\n North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\n East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\n West: By the southern generator in Immol'thar's room.",
							-- #endif
					}),
				},
			}),
			DIREMAUL_SUBMAP(239, WARPWOOD_QUARTER, {	-- Warpwood Quarter (East)
				coord = { 64.83, 30.24, FERALAS },	-- Dire Maul [East]
				maps = WARPWOOD_QUARTER_MAPS,
				groups = {
					n(ZONE_DROPS, {
						i(18289, {	-- Barbed Thorn Necklace
							crs = {
								11461,	-- Warpwood Guardian
								11462,	-- Warpwood Treant
								13021,	-- Warpwood Crusher
								11464,	-- Warpwood Tangler
								11465,	-- Warpwood Stomper
							},
						}),
						i(18296, {	-- Marksman Bands
							crs = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
							},
						}),
						i(18295, {	-- Phasing Boots
							cr = 13196,	-- Phase Lasher
						}),
						i(18603, {	-- Satyr Blood
							timeline = { REMOVED_4_0_3 },
							classes = { WARLOCK },
							-- #if BEFORE 4.0.3
							crs = {
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
							crs = {
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
						description = "Talk to him and then chase him. Eventually he will go up a ramp and become killable.",
						groups = {
							i(18249, {	-- Crescent Key
								description =
									-- #if AFTER 5.2.0
									"This key no longer has any practical use, and disappears from the inventory like a conjured item.",	-- Removed with 4.0.3, and started dropping again with 5.2.0 for no apparent reason.
									-- #elseif AFTER 4.0.3
									"This key no longer has any practical use.",
									-- #else
									"This key is required to enter the Gordok Commons and Capital Gardens.",
									-- #endif
							}),
							i(18261),	-- Book of Incantations
							i(207297, {	-- Grimoire of the Felblaze Imp (CI!)
								timeline = { ADDED_10_1_5 },
							}),
							i(18267),	-- Recipe: Runn Tum Tuber Surprise (RECIPE!)
							i(18255),	-- Runn Tum Tuber
						},
					}),
					n(14349, {	-- Pimgib
						i(18354, {	-- Pimgib's Collar
							classes = { WARLOCK },
						}),
					}),
					e(404, {	-- Lethtendris
						creatureID = 14327,
						groups = {
							i(18426),	-- Lethtendris's Web
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228051, {	-- Quel'dorei Channeling Rod
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18311, {	-- Quel'dorei Channeling Rod
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18301),	-- Lethtendris' Wand
							i(18325),	-- Felhide Cap
							i(18302),	-- Band of Vigor
						},
					}),
					e(403, {	-- Hydrospawn
						creatureID = 13280,
						groups = {
							i(18299),	-- Hydrospawn Essence
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228052, {	-- Waveslicer
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18324, {	-- Waveslicer
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228054, {	-- Tempest Talisman
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18317, {	-- Tempest Talisman
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18305),	-- Breakwater Legguards
							i(18307),	-- Riptide Shoes
							i(18322),	-- Waterspout Boots
							applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
						},
					}),
					e(402, {	-- Zevrim Thornhoof
						creatureID = 11490,
						groups = {
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228050, {	-- Satyr's Bow
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18323, {	-- Satyr's Bow
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18308),	-- Clever Hat
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228053, {	-- Fervent Helm
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18319, {	-- Fervent Helm
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
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
						description = "Talk to him for him to break down the door.",
					}),
					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n_conditional(16097, {	-- Isalien
						description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
						-- #if BEFORE 6.0.2
						cost = {
							{ "i", 22050, 1 },	-- Brazier of Beckoning [Isalien]
						},
						-- #endif
						provider = { "i", 22057 },	-- Brazier of Invocation
						-- #if AFTER 4.0.3
						sourceQuest = 8996,	-- Return to Bodley
						u_sqs = true,	-- remove the u flag if sourcequests are completed
						-- #endif
						timeline = { REMOVED_4_0_3 },
						groups = {
							objective(2, {	-- 0/1 Left Piece of Lord Valthalak's Amulet
								questID = 8967,	-- The Left Piece of Lord Valthalak's Amulet [WARLOCK, DRUID]
								provider = { "i", 21984 },	-- Left Piece of Lord Valthalak's Amulet
							}),
							objective(2, {	-- 0/1 Right Piece of Lord Valthalak's Amulet
								questID = 8990,	-- The Right Piece of Lord Valthalak's Amulet [WARRIOR, ROGUE]
								provider = { "i", 22046 },	-- Right Piece of Lord Valthalak's Amulet
							}),
							i(22315),	-- Hammer of Revitalization
							i(22314),	-- Huntsman's Harpoon
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228066, {	-- Ironweave Gloves
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(22304, {	-- Ironweave Gloves
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(22472),	-- Boots of Ferocity
							i(22401, {	-- Libram of Hope
								timeline = { DELETED_5_0_4 },
							}),
							i(22345, {	-- Totem of Rebirth
								timeline = { DELETED_5_0_4 },
							}),
						},
					})),
					e(405, {	-- Alzzin the Wildshaper
						creatureID = 11492,
						groups = {
							i(18501, {	-- Felvine Shard
								description = "Spawns under the vines near the last boss in Dire Maul East.",
								provider = { "o", 179559 },	-- Felvine Shard
							}),
							i(18321),	-- Energetic Rod
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228056, {	-- Fiendish Machete
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18310, {	-- Fiendish Machete
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18328),	-- Shadewood Cloak
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228055, {	-- Energized Chestplate
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18312, {	-- Energized Chestplate
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18309),	-- Gloves of Restoration
							i(18326),	-- Razor Gauntlets
							i(18327),	-- Whipvine Cord
							i(18318),	-- Merciful Greaves
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228699, {	-- Ring of Demonic Guile
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18314, {	-- Ring of Demonic Guile
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if BEFORE 6.0.2
							-- This ring may have moved to Zevrim, will need to verify.
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228057, {	-- Ring of Demonic Potency
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18315, {	-- Ring of Demonic Potency
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #endif
						},
					}),
				},
			}),
			DIREMAUL_SUBMAP(235, GORDOK_COMMONS, {		-- Gordok Commons (North)
				coord = { 62.48, 24.48, FERALAS },	-- Dire Maul [North]
				maps = GORDOK_COMMONS_MAPS,
				-- #if BEFORE 4.0.3
				cost = { { "i", 18249, 1 } },	-- Crescent Key
				-- #endif
				groups = {
					n(ZONE_DROPS, {
						i(18250, {	-- Gordok Shackle Key
							timeline = { REMOVED_4_0_3, ADDED_10_1_5 },
							-- #if BEFORE 4.0.3
							description = "NOTE: Do NOT Free Knot if you are doing a Tribute Run. He runs away.",
							-- #endif
							crs = {
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
					}),
					n(QUESTS, {
						q(77194, {	-- Free Knot!
							description = "This quest becomes obtainable once a Gordok Shackle Key is looted. Completing it increases your reputation with the Steamwheedle Cartel without lowering your reputation with the Bloodsail Buccaneers.",
							qg = 14338,	-- Knot Thimblejack
							timeline = { ADDED_10_1_5 },
							cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
							repeatable = true,
							groups = {
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
					}),
					n(COMMON_BOSS_DROPS, {
						description = "The following items can drop from any of the guards.",
						crs = {
							14326,	-- Guard Mol'dar
							14321,	-- Guard Fengus
							14323,	-- Guard Slip'kik
						},
						groups = {
							-- #if AFTER 7.3.5
							i(18498),	-- Hedgecutter
							-- #endif
							i(18462),	-- Jagged Bone Fist
							i(18463),	-- Ogre Pocket Knife
							i(18460),	-- Unsophisticated Hand Cannon
							-- #if AFTER 7.3.5
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228060, {	-- Heliotrope Cloak
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18496, {	-- Heliotrope Cloak
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228058, {	-- Bulky Iron Spaulders
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18493, {	-- Bulky Iron Spaulders
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228059, {	-- Denwatcher's Shoulders
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18494, {	-- Denwatcher's Shoulders
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
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
						creatureID = 14326,
						-- #if BEFORE 4.0.3
						description = "If you do not have a way to open the inner door, you can kill him for the Inner Door Key.\n\nDoing so will invalidate your Tribute Run.",
						-- #endif
						groups = {
							-- #if BEFORE 7.3.5
							i(18498),	-- Hedgecutter
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228060, {	-- Heliotrope Cloak
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18496, {	-- Heliotrope Cloak
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228058, {	-- Bulky Iron Spaulders
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18493, {	-- Bulky Iron Spaulders
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228059, {	-- Denwatcher's Shoulders
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18494, {	-- Denwatcher's Shoulders
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18497),	-- Sublime Wristguards
							-- #endif
							i(18268, {	-- Gordok Inner Door Key
								timeline = { DELETED_4_0_3 },
							}),
						},
					}),
					e(412, {	-- Stomper Kreeg
						creatureID = 14322,
						groups = {
							i(18425),	-- Kreeg's Mug
							-- #if AFTER 6.0.2
							i(18464),	-- Gordok Nose Ring
							-- #endif
							n(VENDORS, {
								description = "After becoming the king, you can come back to Kreeg to buy some drinks.",
								groups = {
									i(18269),	-- Gordok Green Grog
									i(18284),	-- Kreeg's Stout Beatdown
									i(18288),	-- Molasses Firewater
									i(18287),	-- Evermurky
								},
							}),
						},
					}),
					e(413, {	-- Guard Fengus
						creatureID = 14321,
						description =
							-- #if AFTER 4.0.3
							"Avoid him. His chest is empty.",
							-- #else
							"Avoid him and loot his chest for a key to open the door.",
							-- #endif
						-- #if BEFORE 4.0.3
						groups = {
							i(18266, {	-- Gordok Courtyard Key
								provider = { "o", 179516 },	-- Fengus's Chest
							}),
						},
						-- #endif
					}),
					e(414, {	-- Guard Slip'kik
						creatureID = 14323,
						-- #if BEFORE 7.3.5
						groups = {
							i(18498),	-- Hedgecutter
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228060, {	-- Heliotrope Cloak
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18496, {	-- Heliotrope Cloak
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228058, {	-- Bulky Iron Spaulders
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18493, {	-- Bulky Iron Spaulders
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228059, {	-- Denwatcher's Shoulders
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18494, {	-- Denwatcher's Shoulders
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18497),	-- Sublime Wristguards
						},
						-- #endif
					}),
					n(14338, {	-- Knot Thimblejack
						timeline = { ADDED_10_1_5 },
						groups = {
							r(22813, {	-- Gordok Ogre Suit
								requireSkill = TAILORING,
								sourceQuest = 27119,	-- The Gordok Ogre Suit
							}),
							r(22815, {	-- Gordok Ogre Suit
								requireSkill = LEATHERWORKING,
								sourceQuest = 27119,	-- The Gordok Ogre Suit
							}),
						},
					}),
					o(179501, {	-- Knot Thimblejack's Cache
						sourceQuest = 5525,	-- Free Knot!
						-- #if BEFORE 4.0.3
						cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
						-- #endif
						groups = {
							i(18240),	-- Ogre Tannin
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228477, {	-- Pattern: Embroidered Belt of the Archmage (RECIPE!)
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18414, {	-- Pattern: Belt of the Archmage (RECIPE!)
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(227910, {	-- Pattern: Brilliant Chromatic Cloak (RECIPE!)
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18517, {	-- Pattern: Chromatic Cloak (RECIPE!)
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
							i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228319, {	-- Pattern: Girdle of Arcane Insight (RECIPE!)
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18514, {	-- Pattern: Girdle of Insight (RECIPE!)
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18518),	-- Pattern: Hide of the Wild (RECIPE!)
							i(18416),	-- Pattern: Inferno Gloves (RECIPE!)
							i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
							i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228276, {	-- Pattern: Mastercrafted Shifting Cloak (RECIPE!)
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18519, {	-- Pattern: Shifting Cloak (RECIPE!)
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18516, {	-- Pattern: Swift Flight Bracers (RECIPE!)
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228301, {	-- Pattern: Swift Flight Vambraces (RECIPE!)
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
						},
					}),
					o(179499, {	-- Ogre Tannin Basket
						description = "Beware! Looting the Ogre Tannin will cause a Gordok Bushwacker to spawn. Quote is homage to the movie The Silence of the Lambs.\n\n'NO! It puts the tannin in the basket, or it gets the mallet again!'",
						groups = {
							i(18240),	-- Ogre Tannin
						},
					}),
					e(415, {	-- Captain Kromcrush
						creatureID = 14325,
						description =
							-- #if AFTER 4.0.3
							"Use the Gordok Ogre Suit to skip him for the Tribute Run. (Talk to him)",
							-- #else
							"In order to get to this boss, you must use the Inner Door Key or have an engineer open the door using a Seaforium Charge.\n\nUse the Gordok Ogre Suit to skip him. (talk to him)",
							-- #endif
						-- #if BEFORE 4.0.3
						cost = {
							{ "i", 18268, 1 },	-- Gordok Inner Door Key
							{ "i", 18258, 1 },	-- Gordok Ogre Suit
						},
						-- #endif
						groups = {
							i(18502),	-- Monstrous Glaive
							i(18503),	-- Kromcrush's Chestplate
							-- #if AFTER 7.3.5
							i(18458),	-- Modest Armguards (7.3.5 - Moved from Guards)
							-- #endif
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228068, {	-- Mugger's Belt
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18505, {	-- Mugger's Belt
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18507),	-- Boots of the Full Moon
						},
					}),
					e(416, {	-- Cho'Rush the Observer
						creatureID = 14324,
						groups = {
							i(18484),	-- Cho'Rush's Blade
							i(18483),	-- Mana Channeling Wand
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228064, {	-- Observer's Shield
								description = "This doesn't appear to have been added yet.",
								timeline = { CREATED_1_15_3 },
							})),
							-- #endif
							i(18485, {	-- Observer's Shield
								-- #if SEASON_OF_DISCOVERY
								-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
								-- timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228062, {	-- Insightful Hood
								description = "This doesn't appear to have been added yet.",
								timeline = { CREATED_1_15_3 },
							})),
							-- #endif
							i(18490, {	-- Insightful Hood
								-- #if SEASON_OF_DISCOVERY
								-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
								-- timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if AFTER 7.3.5
							i(18459),	-- Gallant's Wristguards (7.3.5 - Moved from Guards)
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved from King Gordok)
							-- #endif
						},
					}),
					e(417, {	-- King Gordok
						creatureID = 11501,
						groups = {
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228478, {	-- Barbarous Blade
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18520, {	-- Barbarous Blade
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18523),	-- Brightly Glowing Stone
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228480, {	-- Crown of the Ogre King
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18526, {	-- Crown of the Ogre King
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18525),	-- Bracers of Prosperity
							-- #if BEFORE 7.3.5
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
							-- #endif
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228479, {	-- Leggings of Destruction
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18524, {	-- Leggings of Destruction
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18521),	-- Grimy Metal Boots
							i(18522),	-- Band of the Ogre King
							applyclassicphase(PHASE_THREE_DMF_CARDS, i(19258)),	-- Ace of Warlords
							i(18780, {	-- Top Half of Advanced Armorsmithing: Volume I
								timeline = { DELETED_4_0_3 },
							}),
						},
					}),
					o(179564, {	-- Gordok Tribute Chest
						description = "Speak with Mizzle after killing |cFFFFD700King Gordok|r to spawn the Tribute Chest.\n\nA full Tribute Run (5 items) requires leaving all bosses alive except King Gordok, and also requires activating the Frost Trap & fooling Kromcrush with the Ogre Suit, granted by the Goblin near the trap.",
						provider = { "n", 14353 },	-- Mizzle the Crafty
						modelScale = 3,
						groups = {
							i(18655),	-- Schematic: Major Recombobulator (RECIPE!)
							i(18499),	-- Barrier Shield
							i(18479),	-- Carrion Scorpid Helm
							i(18537),	-- Counterattack Lodestone
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228065, {	-- Cyclone Spaulders
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18528, {	-- Cyclone Spaulders
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18529),	-- Elemental Plate Girdle
							i(18533),	-- Gordok Bracers of Power
							i(18478),	-- Hyena Hide Jerkin
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228474, {	-- Mindsurge Robe
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18532, {	-- Mindsurge Robe
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18476),	-- Mud Stained Boots
							i(18475),	-- Oddly Magical Belt
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228070, {	-- Ogre Forged Hauberk
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18530, {	-- Ogre Forged Hauberk
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18482),	-- Ogre Toothpick Shooter
							i(18495),	-- Redoubt Cloak
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228484, {	-- Rod of the Ogre Magi
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18534, {	-- Rod of the Ogre Magi
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18480),	-- Scarab Plate Helm
							i(18477),	-- Shaggy Leggings
							i(18481),	-- Skullcracking Mace
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228469, {	-- Tarnished Elven Ring
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18500, {	-- Tarnished Elven Ring
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228486, {	-- Treant's Bane
								description = "There's no evidence that this version has dropped yet. @Crieve if you get one to drop.",
								timeline = { CREATED_1_15_3 },
							})),
							-- #endif
							i(18538, {	-- Treant's Bane
								-- #if SEASON_OF_DISCOVERY
								-- CRIEVE NOTE: There's no evidence that the reitemized version has dropped yet.
								-- timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228473, {	-- Unyielding Maul
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18531, {	-- Unyielding Maul
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
						},
					}),
				},
			}),
			DIREMAUL_SUBMAP(236, CAPITAL_GARDENS, {		-- Capital Gardens (West)
				coord = { 60.32, 30.17, FERALAS },	-- Dire Maul [West]
				maps = CAPITAL_GARDENS_MAPS,
				-- #if BEFORE 4.0.3
				cost = { { "i", 18249, 1 } },	-- Crescent Key
				-- #endif
				groups = {
					n(VENDORS, {
						n(14371, {	-- Shen'dralar Provisioner
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228303, {	-- Pattern: Incandescent Mooncloth Robe (RECIPE!)
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18487, {	-- Pattern: Mooncloth Robe (RECIPE!)
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
						}),
					}),
					n(ZONE_DROPS, {
						i(18339, {	-- Eidolon Cloak
							crs = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						i(18340, {	-- Eidolon Talisman
							crs = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(22224, {	-- Jeering Spectre's Essence
							crs = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11469,	-- Eldreth Seether
								11470,	-- Eldreth Sorcerer
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						})),
						i(18337, {	-- Orphic Bracers
							crs = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
						i(18343, {	-- Petrified Band
							crs = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18344, {	-- Stonebark Gauntlets
							crs = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18338, {	-- Wand of Arcane Potency
							crs = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
					}),
					e(408, {	-- Magister Kalendris
						creatureID = 11487,
						groups = {
							applyclassicphase(PHASE_FIVE_RECIPES, i(22309)),	-- Pattern: Big Bag of Enchantment (RECIPE!)
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228067, {	-- Elder Magus Pendant
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18397, {	-- Elder Magus Pendant
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18374),	-- Flamescarred Shoulders
							i(18350),	-- Amplifying Cloak
							i(18351),	-- Magically Sealed Bracers
							i(18371),	-- Mindtap Talisman
						},
					}),
					n(11467, {	-- Tsu'zee
						description = "This is a Rare Creature and, as such, is not always present.",
						groups = {
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228061, {	-- Brightspark Gloves
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18387, {	-- Brightspark Gloves
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18346),	-- Threadbare Trousers
							i(18345),	-- Murmuring Ring
						},
					}),
					e(407, {	-- Illyanna Ravenoak
						creatureID = 11488,
						groups = {
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
						creatureID = 11489,
						groups = {
							i(18353),	-- Stoneflower Staff
							i(18352),	-- Petrified Bark Shield
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228063, {	-- Warpwood Bindings
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18393, {	-- Warpwood Bindings
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228468, {	-- Tanglemoss Leggings
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18390, {	-- Tanglemoss Leggings
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_SEVEN, i(235787, {	-- Ancient Ironwood Branch (QI!)
								timeline = { ADDED_1_15_6 },
							})),
							-- #endif
						},
					}),
					e(409, {	-- Immol'thar
						creatureID = 11496,
						groups = {
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
								timeline = { REMOVED_4_0_1 },
								classes = { DRUID },
								spellID = 31709,	-- Cower IV
								rank = 4,
							})),
						},
					}),
					n_conditional(14506, {	-- Lord Hel'nurath
						description =
							-- #if AFTER CATA
							"|cff3399ffSTEP 1:|r Warlock with (Dreadsteed of Xoroth) FOS\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs,  Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 8.2,35.8)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once creatures stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
							-- #else
							"|cff3399ffSTEP 1:|r Find a Warlock that is on or has completed Dreadsteed of Xoroth.\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs, Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 12.4, 31.6)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once creatures stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
							-- #endif
						sourceQuest = 7631,	-- Dreadsteed of Xoroth
						cost = {
							{ "i", 18670, 1 },	-- Xorothian Glyphs
							{ "i", 18629, 1 },	-- Black Lodestone
							{ "i", 18663, 1 },	-- J'eevee's Jar
						},
						timeline = { REMOVED_4_0_3 },
						groups = {
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228475, {	-- Diabolic Mantle
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18757, {	-- Diabolic Mantle
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18755),	-- Xorothian Firestick
							i(18756),	-- Dreadguard Protector
							i(18754),	-- Fel Hardened Bracers
						},
					}),
					n(16032, {	-- Falrin Treeshaper <House of Shen'dralar>
						description = "Found in the Dire Maul Library.",
						groups = {
							n(SPECIAL, {
								description = "Available if a specific Quest (9015) has been completed.",
								sourceQuest = 9015,	-- The Challenge
								timeline = { ADDED_1_11_1, REMOVED_4_0_3 },
								u_sqs = true,	-- remove the u flag if sourcequests are completed
								groups = {
									i(21986),	-- Banner of Provocation
								},
							}),
						},
					}),
					e(410, {	-- Prince Tortheldrin
						creatureID = 11486,
						groups = {
							i(18336, {	-- Gauntlet of Gordok Might
								description = "In the corner of the room that the Prince is in, next to the bookshelves, there is a small chest on the ground that contains the gauntlet. You must kill the Prince in order for the chest to be interactable.",
								provider = { "o", 179545 },	-- The Prince's Chest
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228472, {	-- Distracting Dagger
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18392, {	-- Distracting Dagger
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18396),	-- Mind Carver
							i(18376),	-- Timeworn Mace
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228471, {	-- Stoneshatter
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18388, {	-- Stoneshatter
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							i(18382),	-- Fluctuating Cloak
							i(18373),	-- Chestplate of Tranquility
							i(18375),	-- Bracers of the Eclipse
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228069, {	-- Eldritch Reinforced Legplates
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18380, {	-- Eldritch Reinforced Legplates
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
								-- #endif
							}),
							-- #if SEASON_OF_DISCOVERY
							applyclassicphase(SOD_PHASE_FOUR, i(228470, {	-- Silvermoon Leggings
								timeline = { ADDED_1_15_3 },
							})),
							-- #endif
							i(18378, {	-- Silvermoon Leggings
								-- #if SEASON_OF_DISCOVERY
								timeline = { REMOVED_1_15_3 },
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
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(230, {
		q(35890),	-- Dire Maul (Warpwood Quarter) Reward Quest - Normal completion
		q(35891),	-- Dire Maul (Capital Gardens) Reward Quest - Normal completion
		q(35892),	-- Dire Maul (Gordok Commons) Reward Quest - Normal completion
		q(35894),	-- Dire Maul (Bonus) Reward Quest
		q(35956),	-- Dire Maul (Everything) Reward Quest
	}),
}));
```

</details>

## P1 → P2.1 — add the keys to that Lua

**Author’s change:** edit the Lua source above. Keep its old phase calls. Add a key to the parent whose records share one opening; a child only needs another key when it has another rule.

**Saved result:** [p2.1/Dire Maul.lua](p2.1/Dire%20Maul.lua) — a generated comparison copy showing those proposed edits.

**Read these changed lines first.** They are exact hunks from the complete diff below. `-` is the old line; `+` is its replacement.

```diff
@@ -1440,7 +1441,7 @@
 					n(11491, {	-- Old Ironbark
 						description = "Talk to him for him to break down the door.",
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n_conditional(16097, {	-- Isalien
+					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
 						description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
 						-- #if BEFORE 6.0.2
 						cost = {
```

Descendants inherit the parent’s key. An additional child key combines with the parent rule using **AND**; it cannot bypass a closed parent. A pure `progressionKey` + `groups` table shares a rule across siblings and adds no visible output header.

<details>
<summary>Show every changed Lua line: P1 → P2.1</summary>

```diff
--- .contrib/phase-examples/evolution/p1/Dire Maul.lua
+++ .contrib/phase-examples/evolution/dire-maul/p2.1/Dire Maul.lua
@@ -1,4 +1,5 @@
--- P1 | Full authoring source at the start of migration. Original: .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Dire Maul.lua
+-- Generated comparison snapshot (P2.1 / P2.2 / P3): complete annotated source.
+-- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
 -----------------------------------------------------
@@ -144,7 +145,7 @@
 -- #endif
 
 root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, applyclassicphase(PHASE_ONE_DIREMAUL, {
-	inst(230, {	-- Dire Maul
+	inst(230, { progressionKey = "dire-maul.common",	-- Dire Maul
 		-- #if BEFORE MOP
 		lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
 		-- #endif
@@ -403,7 +404,7 @@
 						}),
 					},
 				},
-				applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
+				{ progressionKey = "dire-maul.recipe-quests", groups = { applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
 					providers = {
 						-- #IF BEFORE 4.0.3
 						{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
@@ -492,7 +493,7 @@
 					groups = {
 						i(12725),	-- Plans: Enchanted Thorium Helm (RECIPE!)
 					},
-				})),
+				})) } },
 				q(7494, {	-- Feathermoon Stronghold
 					qgs = {
 						2198,	-- Crier Goodman
@@ -1149,7 +1150,7 @@
 						description = "This still drops despite being completely worthless.",
 						-- #endif
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(21982, {	-- Ogre Warbeads
+					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
 						timeline = { REMOVED_4_0_3 },
 						-- #if BEFORE 4.0.3
 						crs = {
@@ -1164,7 +1165,7 @@
 							11448,	-- Gordok Warlock
 						},
 						-- #endif
-					})),
+					}) } }),
 				},
 			}),
 			n(COMMON_BOSS_DROPS, {
@@ -1361,9 +1362,9 @@
 						groups = {
 							i(18426),	-- Lethtendris's Web
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228051, {	-- Quel'dorei Channeling Rod
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228051, {	-- Quel'dorei Channeling Rod
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18311, {	-- Quel'dorei Channeling Rod
 								-- #if SEASON_OF_DISCOVERY
@@ -1380,9 +1381,9 @@
 						groups = {
 							i(18299),	-- Hydrospawn Essence
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228052, {	-- Waveslicer
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228052, {	-- Waveslicer
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18324, {	-- Waveslicer
 								-- #if SEASON_OF_DISCOVERY
@@ -1390,9 +1391,9 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228054, {	-- Tempest Talisman
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228054, {	-- Tempest Talisman
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18317, {	-- Tempest Talisman
 								-- #if SEASON_OF_DISCOVERY
@@ -1402,16 +1403,16 @@
 							i(18305),	-- Breakwater Legguards
 							i(18307),	-- Riptide Shoes
 							i(18322),	-- Waterspout Boots
-							applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
+							applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } }),	-- Ace of Elementals
 						},
 					}),
 					e(402, {	-- Zevrim Thornhoof
 						creatureID = 11490,
 						groups = {
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228050, {	-- Satyr's Bow
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228050, {	-- Satyr's Bow
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18323, {	-- Satyr's Bow
 								-- #if SEASON_OF_DISCOVERY
@@ -1420,9 +1421,9 @@
 							}),
 							i(18308),	-- Clever Hat
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228053, {	-- Fervent Helm
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228053, {	-- Fervent Helm
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18319, {	-- Fervent Helm
 								-- #if SEASON_OF_DISCOVERY
@@ -1440,7 +1441,7 @@
 					n(11491, {	-- Old Ironbark
 						description = "Talk to him for him to break down the door.",
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n_conditional(16097, {	-- Isalien
+					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
 						description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
 						-- #if BEFORE 6.0.2
 						cost = {
@@ -1465,9 +1466,9 @@
 							i(22315),	-- Hammer of Revitalization
 							i(22314),	-- Huntsman's Harpoon
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228066, {	-- Ironweave Gloves
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228066, {	-- Ironweave Gloves
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(22304, {	-- Ironweave Gloves
 								-- #if SEASON_OF_DISCOVERY
@@ -1482,7 +1483,7 @@
 								timeline = { DELETED_5_0_4 },
 							}),
 						},
-					})),
+					}) } }),
 					e(405, {	-- Alzzin the Wildshaper
 						creatureID = 11492,
 						groups = {
@@ -1492,9 +1493,9 @@
 							}),
 							i(18321),	-- Energetic Rod
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228056, {	-- Fiendish Machete
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228056, {	-- Fiendish Machete
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18310, {	-- Fiendish Machete
 								-- #if SEASON_OF_DISCOVERY
@@ -1503,9 +1504,9 @@
 							}),
 							i(18328),	-- Shadewood Cloak
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228055, {	-- Energized Chestplate
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228055, {	-- Energized Chestplate
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18312, {	-- Energized Chestplate
 								-- #if SEASON_OF_DISCOVERY
@@ -1517,9 +1518,9 @@
 							i(18327),	-- Whipvine Cord
 							i(18318),	-- Merciful Greaves
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228699, {	-- Ring of Demonic Guile
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228699, {	-- Ring of Demonic Guile
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18314, {	-- Ring of Demonic Guile
 								-- #if SEASON_OF_DISCOVERY
@@ -1529,9 +1530,9 @@
 							-- #if BEFORE 6.0.2
 							-- This ring may have moved to Zevrim, will need to verify.
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228057, {	-- Ring of Demonic Potency
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228057, {	-- Ring of Demonic Potency
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18315, {	-- Ring of Demonic Potency
 								-- #if SEASON_OF_DISCOVERY
@@ -1606,9 +1607,9 @@
 							i(18460),	-- Unsophisticated Hand Cannon
 							-- #if AFTER 7.3.5
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228060, {	-- Heliotrope Cloak
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18496, {	-- Heliotrope Cloak
 								-- #if SEASON_OF_DISCOVERY
@@ -1616,9 +1617,9 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228058, {	-- Bulky Iron Spaulders
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18493, {	-- Bulky Iron Spaulders
 								-- #if SEASON_OF_DISCOVERY
@@ -1626,9 +1627,9 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228059, {	-- Denwatcher's Shoulders
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18494, {	-- Denwatcher's Shoulders
 								-- #if SEASON_OF_DISCOVERY
@@ -1657,9 +1658,9 @@
 							-- #if BEFORE 7.3.5
 							i(18498),	-- Hedgecutter
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228060, {	-- Heliotrope Cloak
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18496, {	-- Heliotrope Cloak
 								-- #if SEASON_OF_DISCOVERY
@@ -1667,9 +1668,9 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228058, {	-- Bulky Iron Spaulders
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18493, {	-- Bulky Iron Spaulders
 								-- #if SEASON_OF_DISCOVERY
@@ -1677,9 +1678,9 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228059, {	-- Denwatcher's Shoulders
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18494, {	-- Denwatcher's Shoulders
 								-- #if SEASON_OF_DISCOVERY
@@ -1733,9 +1734,9 @@
 						groups = {
 							i(18498),	-- Hedgecutter
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228060, {	-- Heliotrope Cloak
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18496, {	-- Heliotrope Cloak
 								-- #if SEASON_OF_DISCOVERY
@@ -1743,9 +1744,9 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228058, {	-- Bulky Iron Spaulders
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18493, {	-- Bulky Iron Spaulders
 								-- #if SEASON_OF_DISCOVERY
@@ -1753,9 +1754,9 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228059, {	-- Denwatcher's Shoulders
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18494, {	-- Denwatcher's Shoulders
 								-- #if SEASON_OF_DISCOVERY
@@ -1787,9 +1788,9 @@
 						groups = {
 							i(18240),	-- Ogre Tannin
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228477, {	-- Pattern: Embroidered Belt of the Archmage (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228477, {	-- Pattern: Embroidered Belt of the Archmage (RECIPE!)
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18414, {	-- Pattern: Belt of the Archmage (RECIPE!)
 								-- #if SEASON_OF_DISCOVERY
@@ -1797,9 +1798,9 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(227910, {	-- Pattern: Brilliant Chromatic Cloak (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(227910, {	-- Pattern: Brilliant Chromatic Cloak (RECIPE!)
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18517, {	-- Pattern: Chromatic Cloak (RECIPE!)
 								-- #if SEASON_OF_DISCOVERY
@@ -1809,9 +1810,9 @@
 							i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
 							i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228319, {	-- Pattern: Girdle of Arcane Insight (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228319, {	-- Pattern: Girdle of Arcane Insight (RECIPE!)
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18514, {	-- Pattern: Girdle of Insight (RECIPE!)
 								-- #if SEASON_OF_DISCOVERY
@@ -1823,9 +1824,9 @@
 							i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
 							i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228276, {	-- Pattern: Mastercrafted Shifting Cloak (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228276, {	-- Pattern: Mastercrafted Shifting Cloak (RECIPE!)
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18519, {	-- Pattern: Shifting Cloak (RECIPE!)
 								-- #if SEASON_OF_DISCOVERY
@@ -1838,9 +1839,9 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228301, {	-- Pattern: Swift Flight Vambraces (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228301, {	-- Pattern: Swift Flight Vambraces (RECIPE!)
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 						},
 					}),
@@ -1871,9 +1872,9 @@
 							i(18458),	-- Modest Armguards (7.3.5 - Moved from Guards)
 							-- #endif
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228068, {	-- Mugger's Belt
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228068, {	-- Mugger's Belt
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18505, {	-- Mugger's Belt
 								-- #if SEASON_OF_DISCOVERY
@@ -1889,10 +1890,10 @@
 							i(18484),	-- Cho'Rush's Blade
 							i(18483),	-- Mana Channeling Wand
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228064, {	-- Observer's Shield
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228064, {	-- Observer's Shield
 								description = "This doesn't appear to have been added yet.",
 								timeline = { CREATED_1_15_3 },
-							})),
+							}) } }),
 							-- #endif
 							i(18485, {	-- Observer's Shield
 								-- #if SEASON_OF_DISCOVERY
@@ -1901,10 +1902,10 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228062, {	-- Insightful Hood
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228062, {	-- Insightful Hood
 								description = "This doesn't appear to have been added yet.",
 								timeline = { CREATED_1_15_3 },
-							})),
+							}) } }),
 							-- #endif
 							i(18490, {	-- Insightful Hood
 								-- #if SEASON_OF_DISCOVERY
@@ -1922,9 +1923,9 @@
 						creatureID = 11501,
 						groups = {
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228478, {	-- Barbarous Blade
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228478, {	-- Barbarous Blade
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18520, {	-- Barbarous Blade
 								-- #if SEASON_OF_DISCOVERY
@@ -1933,9 +1934,9 @@
 							}),
 							i(18523),	-- Brightly Glowing Stone
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228480, {	-- Crown of the Ogre King
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228480, {	-- Crown of the Ogre King
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18526, {	-- Crown of the Ogre King
 								-- #if SEASON_OF_DISCOVERY
@@ -1947,9 +1948,9 @@
 							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
 							-- #endif
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228479, {	-- Leggings of Destruction
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228479, {	-- Leggings of Destruction
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18524, {	-- Leggings of Destruction
 								-- #if SEASON_OF_DISCOVERY
@@ -1958,7 +1959,7 @@
 							}),
 							i(18521),	-- Grimy Metal Boots
 							i(18522),	-- Band of the Ogre King
-							applyclassicphase(PHASE_THREE_DMF_CARDS, i(19258)),	-- Ace of Warlords
+							applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } }),	-- Ace of Warlords
 							i(18780, {	-- Top Half of Advanced Armorsmithing: Volume I
 								timeline = { DELETED_4_0_3 },
 							}),
@@ -1974,9 +1975,9 @@
 							i(18479),	-- Carrion Scorpid Helm
 							i(18537),	-- Counterattack Lodestone
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228065, {	-- Cyclone Spaulders
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228065, {	-- Cyclone Spaulders
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18528, {	-- Cyclone Spaulders
 								-- #if SEASON_OF_DISCOVERY
@@ -1987,9 +1988,9 @@
 							i(18533),	-- Gordok Bracers of Power
 							i(18478),	-- Hyena Hide Jerkin
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228474, {	-- Mindsurge Robe
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228474, {	-- Mindsurge Robe
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18532, {	-- Mindsurge Robe
 								-- #if SEASON_OF_DISCOVERY
@@ -1999,9 +2000,9 @@
 							i(18476),	-- Mud Stained Boots
 							i(18475),	-- Oddly Magical Belt
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228070, {	-- Ogre Forged Hauberk
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228070, {	-- Ogre Forged Hauberk
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18530, {	-- Ogre Forged Hauberk
 								-- #if SEASON_OF_DISCOVERY
@@ -2011,9 +2012,9 @@
 							i(18482),	-- Ogre Toothpick Shooter
 							i(18495),	-- Redoubt Cloak
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228484, {	-- Rod of the Ogre Magi
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228484, {	-- Rod of the Ogre Magi
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18534, {	-- Rod of the Ogre Magi
 								-- #if SEASON_OF_DISCOVERY
@@ -2024,9 +2025,9 @@
 							i(18477),	-- Shaggy Leggings
 							i(18481),	-- Skullcracking Mace
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228469, {	-- Tarnished Elven Ring
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228469, {	-- Tarnished Elven Ring
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18500, {	-- Tarnished Elven Ring
 								-- #if SEASON_OF_DISCOVERY
@@ -2034,10 +2035,10 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228486, {	-- Treant's Bane
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228486, {	-- Treant's Bane
 								description = "There's no evidence that this version has dropped yet. @Crieve if you get one to drop.",
 								timeline = { CREATED_1_15_3 },
-							})),
+							}) } }),
 							-- #endif
 							i(18538, {	-- Treant's Bane
 								-- #if SEASON_OF_DISCOVERY
@@ -2046,9 +2047,9 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228473, {	-- Unyielding Maul
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228473, {	-- Unyielding Maul
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18531, {	-- Unyielding Maul
 								-- #if SEASON_OF_DISCOVERY
@@ -2069,9 +2070,9 @@
 					n(VENDORS, {
 						n(14371, {	-- Shen'dralar Provisioner
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228303, {	-- Pattern: Incandescent Mooncloth Robe (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228303, {	-- Pattern: Incandescent Mooncloth Robe (RECIPE!)
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18487, {	-- Pattern: Mooncloth Robe (RECIPE!)
 								-- #if SEASON_OF_DISCOVERY
@@ -2097,7 +2098,7 @@
 								11472,	-- Eldreth Spirit
 							},
 						}),
-						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(22224, {	-- Jeering Spectre's Essence
+						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
 							crs = {
 								11471,	-- Eldreth Apparition
 								11475,	-- Eldreth Phantasm
@@ -2106,7 +2107,7 @@
 								11473,	-- Eldreth Spectre
 								11472,	-- Eldreth Spirit
 							},
-						})),
+						}) } }),
 						i(18337, {	-- Orphic Bracers
 							crs = {
 								11480,	-- Arcane Aberration
@@ -2141,11 +2142,11 @@
 					e(408, {	-- Magister Kalendris
 						creatureID = 11487,
 						groups = {
-							applyclassicphase(PHASE_FIVE_RECIPES, i(22309)),	-- Pattern: Big Bag of Enchantment (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228067, {	-- Elder Magus Pendant
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(PHASE_FIVE_RECIPES, { progressionKey = "dire-maul.later-recipes", groups = { i(22309) } }),	-- Pattern: Big Bag of Enchantment (RECIPE!)
+							-- #if SEASON_OF_DISCOVERY
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228067, {	-- Elder Magus Pendant
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18397, {	-- Elder Magus Pendant
 								-- #if SEASON_OF_DISCOVERY
@@ -2162,9 +2163,9 @@
 						description = "This is a Rare Creature and, as such, is not always present.",
 						groups = {
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228061, {	-- Brightspark Gloves
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228061, {	-- Brightspark Gloves
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18387, {	-- Brightspark Gloves
 								-- #if SEASON_OF_DISCOVERY
@@ -2193,9 +2194,9 @@
 							i(18353),	-- Stoneflower Staff
 							i(18352),	-- Petrified Bark Shield
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228063, {	-- Warpwood Bindings
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228063, {	-- Warpwood Bindings
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18393, {	-- Warpwood Bindings
 								-- #if SEASON_OF_DISCOVERY
@@ -2203,9 +2204,9 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228468, {	-- Tanglemoss Leggings
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228468, {	-- Tanglemoss Leggings
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18390, {	-- Tanglemoss Leggings
 								-- #if SEASON_OF_DISCOVERY
@@ -2213,9 +2214,9 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_SEVEN, i(235787, {	-- Ancient Ironwood Branch (QI!)
+							applyclassicphase(SOD_PHASE_SEVEN, { progressionKey = "dire-maul.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
 								timeline = { ADDED_1_15_6 },
-							})),
+							}) } }),
 							-- #endif
 						},
 					}),
@@ -2234,12 +2235,12 @@
 							i(18391),	-- Eyestalk Cord
 							i(18379),	-- Odious Greaves
 							i(18370),	-- Vigilance Charm
-							applyclassicphase(TBC_PHASE_ONE, i(24345, {	-- Book of Cower IV
+							applyclassicphase(TBC_PHASE_ONE, { progressionKey = "dire-maul.tbc-pet-training", groups = { i(24345, {	-- Book of Cower IV
 								timeline = { REMOVED_4_0_1 },
 								classes = { DRUID },
 								spellID = 31709,	-- Cower IV
 								rank = 4,
-							})),
+							}) } }),
 						},
 					}),
 					n_conditional(14506, {	-- Lord Hel'nurath
@@ -2258,9 +2259,9 @@
 						timeline = { REMOVED_4_0_3 },
 						groups = {
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228475, {	-- Diabolic Mantle
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228475, {	-- Diabolic Mantle
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18757, {	-- Diabolic Mantle
 								-- #if SEASON_OF_DISCOVERY
@@ -2294,9 +2295,9 @@
 								provider = { "o", 179545 },	-- The Prince's Chest
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228472, {	-- Distracting Dagger
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228472, {	-- Distracting Dagger
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18392, {	-- Distracting Dagger
 								-- #if SEASON_OF_DISCOVERY
@@ -2306,9 +2307,9 @@
 							i(18396),	-- Mind Carver
 							i(18376),	-- Timeworn Mace
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228471, {	-- Stoneshatter
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228471, {	-- Stoneshatter
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18388, {	-- Stoneshatter
 								-- #if SEASON_OF_DISCOVERY
@@ -2319,9 +2320,9 @@
 							i(18373),	-- Chestplate of Tranquility
 							i(18375),	-- Bracers of the Eclipse
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228069, {	-- Eldritch Reinforced Legplates
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228069, {	-- Eldritch Reinforced Legplates
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18380, {	-- Eldritch Reinforced Legplates
 								-- #if SEASON_OF_DISCOVERY
@@ -2329,9 +2330,9 @@
 								-- #endif
 							}),
 							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, i(228470, {	-- Silvermoon Leggings
-								timeline = { ADDED_1_15_3 },
-							})),
+							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228470, {	-- Silvermoon Leggings
+								timeline = { ADDED_1_15_3 },
+							}) } }),
 							-- #endif
 							i(18378, {	-- Silvermoon Leggings
 								-- #if SEASON_OF_DISCOVERY
```

</details>

**Control setting:** `stage: "P2.1"` in [migration.json](p2.1/migration.json). This generated comparison control shows the proposed setting; the production Parser does not yet consume it. `sources` is relative to its folder.

```diff
--- /dev/null
+++ .contrib/phase-examples/evolution/dire-maul/p2.1/migration.json
@@ -0,0 +1,13 @@
+{
+  "schema": 1,
+  "defaultStage": "P1",
+  "cohorts": [
+    {
+      "id": "comparison-fixture-dire-maul",
+      "stage": "P2.1",
+      "sources": [
+        "Dire Maul.lua"
+      ]
+    }
+  ]
+}
```

## P2.1 → P2.2 — write the timing in JSON

**Lua: unchanged** — [the P2.2 copy](p2.2/Dire%20Maul.lua) is identical to P2.1.

**Author edits:** [.contrib/phase-examples/schedule.json](../../schedule.json). The entries below are handwritten timing rules. Put them at `rules.dire-maul` and `fullSourceRules.dire-maul` in that file:

```json
{
  "rules": {
    "dire-maul": {
      "dire-maul.common": {
        "default": "vanilla.1.dire-maul",
        "anniversary": "vanilla.2",
        "sod": "vanilla.4"
      },
      "dire-maul.isalien": {
        "default": "unknown",
        "anniversary": "vanilla.4"
      }
    }
  },
  "fullSourceRules": {
    "dire-maul": {
      "dire-maul.dungeon-set-2": "unknown",
      "dire-maul.recipe-quests": "unknown",
      "dire-maul.darkmoon-cards": "unknown",
      "dire-maul.later-recipes": "unknown",
      "dire-maul.sod-phase-four-additions": {
        "sod": "vanilla.4"
      },
      "dire-maul.ironwood-branch": {
        "sod": "vanilla.7"
      },
      "dire-maul.tbc-pet-training": "unknown"
    }
  }
}
```

`rules` is shared with the small runnable examples. `fullSourceRules` covers the additional records in the complete source. Both sections belong to this one file and use the same rule format.

`unknown` means the opening is unresolved. It never means open. An unresolved child rule affects that child’s source, while all parent requirements still apply. Retail does not read a phase schedule.

<details>
<summary>Read the complete schedule.json, including the other instances</summary>

```json
{
  "$comment": "Authoring input · P2.2, P3 and P4. Edit the release rules here, then run prepare.py. Retail uses its ordinary Lua tree.",
  "rules": {
    "blackwing-lair": {
      "$comment": "Change the raid opening on common. sameAs reuses its timing for this source. The two Nefarian loot lists stay separate.",
      "raid.bwl.common": { "default": "vanilla.3", "sod": "vanilla.5" },
      "raid.bwl.original": { "default": {"sameAs": "raid.bwl.common"}, "sod": "disabled" },
      "raid.bwl.sod20": { "sod": {"sameAs": "raid.bwl.common"} },
      "raid.bwl.draconic-for-dummies": "unknown"
    },
    "blackrock-depths": {
      "brd.dungeon": { "default": "start", "sod": "vanilla.3" },
      "brd.second-half": { "default": "start", "sod": "vanilla.4" },
      "brd.enthralled-sphere": { "sod": "vanilla.3" },
      "brd.angerforge-axe": { "sod": "vanilla.4" }
    },
    "demon-fall-canyon": {
      "dfc.dungeon": { "sod": "unknown" },
      "dfc.azgaloth": { "sod": "vanilla.5" },
      "dfc.ironwood-branch": { "sod": "vanilla.7" }
    },
    "dire-maul": {
      "dire-maul.common": { "default": "vanilla.1.dire-maul", "anniversary": "vanilla.2", "sod": "vanilla.4" },
      "dire-maul.isalien": { "default": "unknown", "anniversary": "vanilla.4" }
    },
    "temple-of-ahnqiraj": {
      "aq40.common": { "default": "unknown", "sod": "vanilla.6.raids" },
      "aq40.original": { "default": "start", "sod": "disabled" },
      "aq40.reworked": { "sod": {"sameAs": "aq40.common"} }
    },
    "gnomeregan": {
      "gnomeregan.dungeon": { "default": "start", "sod": "disabled" },
      "gnomeregan.raid10": { "sod": "vanilla.2" }
    }
  },
  "fullSourceRules": {
    "$comment": "Additional complete-source owners; unknown boundaries require independent review. These rules do not alter the compact examples.",
    "blackrock-depths": {
      "brd.sod-phase-three-additions": {"sod": "vanilla.3"},
      "brd.sod-phase-four-additions": {"sod": "vanilla.4"},
      "brd.enchants": "unknown",
      "brd.recipes": "unknown",
      "brd.dark-iron-recipes": "unknown",
      "brd.darkmoon-cards": "unknown",
      "brd.later-loot": "unknown",
      "brd.dungeon-set-2": "unknown",
      "brd.tbc-jewelcrafting": "unknown",
      "brd.dark-iron-brewer": "unknown"
    },
    "dire-maul": {
      "dire-maul.dungeon-set-2": "unknown",
      "dire-maul.recipe-quests": "unknown",
      "dire-maul.darkmoon-cards": "unknown",
      "dire-maul.later-recipes": "unknown",
      "dire-maul.sod-phase-four-additions": {"sod": "vanilla.4"},
      "dire-maul.ironwood-branch": {"sod": "vanilla.7"},
      "dire-maul.tbc-pet-training": "unknown"
    },
    "temple-of-ahnqiraj": {
      "aq40.atiesh-base": "unknown",
      "aq40.greater-scarab-coffer-key": "unknown"
    }
  },
  "calendars": {
    "progression": [
      "vanilla.1",
      "vanilla.1.dire-maul",
      "vanilla.2",
      "vanilla.3",
      "vanilla.4",
      "vanilla.5.war-effort",
      "vanilla.6"
    ],
    "era": {
      "sameAs": "progression"
    },
    "anniversary": [
      "vanilla.launch",
      "vanilla.1.raids",
      "vanilla.2",
      "vanilla.3",
      "vanilla.4",
      "vanilla.5.war-effort",
      "vanilla.6"
    ],
    "sod": [
      "vanilla.1",
      "vanilla.2",
      "vanilla.3",
      "vanilla.4",
      "vanilla.4.raids",
      "vanilla.5",
      "vanilla.6.scepter",
      "vanilla.6.war-effort",
      "vanilla.6.war-effort-end",
      "vanilla.6.war",
      "vanilla.6.raids",
      "vanilla.7"
    ]
  }
}
```

</details>

**Control change:** [P2.1](p2.1/migration.json) → [P2.2](p2.2/migration.json). The proposed migration still ships the legacy result and compares the new result separately.

```diff
--- .contrib/phase-examples/evolution/dire-maul/p2.1/migration.json
+++ .contrib/phase-examples/evolution/dire-maul/p2.2/migration.json
@@ -4,7 +4,7 @@
   "cohorts": [
     {
       "id": "comparison-fixture-dire-maul",
-      "stage": "P2.1",
+      "stage": "P2.2",
       "sources": [
         "Dire Maul.lua"
       ]
```

## P2.2 → P3 — change the stage value

**Lua: unchanged** — [the P3 copy](p3/Dire%20Maul.lua) still matches P2.1 and P2.2. **Timing JSON: unchanged.** Only the setting shown in the generated [migration.json](p3/migration.json) changes:

```diff
--- .contrib/phase-examples/evolution/dire-maul/p2.2/migration.json
+++ .contrib/phase-examples/evolution/dire-maul/p3/migration.json
@@ -4,7 +4,7 @@
   "cohorts": [
     {
       "id": "comparison-fixture-dire-maul",
-      "stage": "P2.2",
+      "stage": "P3",
       "sources": [
         "Dire Maul.lua"
       ]
```

This proposed stage makes the new result authoritative after the source passes its migration checks. Unknown timing still prevents promotion of the affected source. The old Lua calls remain available for the independent legacy comparison.

## P3 → P4 — select a complete source for each flavor

The three files retain the complete selected instance. Isalien’s ordinary requirements remain; other summons, such as Lord Hel’nurath, keep their own conditions rather than inheriting Isalien’s key.

**Remove:** the old `applyclassicphase` calls and flavor/season `#if` branches. **Keep:** version branches, timelines, quests, costs, loot and other ordinary requirements. **Timing JSON: unchanged.**

**Author’s Lua change:** split the source into the selected files below. Each linked file is a complete generated comparison of the proposed final source.

### SoD

**Before:** [complete P3 Lua](p3/Dire%20Maul.lua). **After:** [p4/sod.lua](p4/sod.lua).

<details>
<summary>Read the complete final sod.lua</summary>

```lua
-- Generated comparison snapshot (P4): complete sod source.
-- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local WARPWOOD_QUARTER = createHeader({
	readable = "Warpwood Quarter",
	icon = 236292,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL5.." (" .. L.EAST ..")"]]
	},
	description = {
		en = "This part of the instance can be accessed from the eastern-most portal. (right side)",
		-- TODO: de = "",
		es = "Se puede acceder a esta parte de la mazmorra desde el portal más al este. (lado derecho)",
		mx = "Se puede acceder a esta parte del calabozo desde el portal más al este. (lado derecho)",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "该副本的此部分可从最东侧的入口进入。（右侧）",
		tw = "副本的這部分可以從最東邊的傳送門進入。（右側）",
	},
});
local GORDOK_COMMONS = createHeader({
	readable = "Gordok Commons",
	icon = 236695,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL1.." (" .. L.NORTH ..")"]]
	},
	description = {
		en = "This part of the instance can be accessed from the northern-most portal.",
		-- TODO: de = "",
		es = "Se puede acceder a esta parte de la mazmorra desde el portal más al norte.",
		mx = "Se puede acceder a esta parte del calabozo desde el portal más al norte.",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "该副本的此部分可从最北侧的入口进入。",
		tw = "副本的這部分可以從最北邊的傳送門進入。",
	},
});
local CAPITAL_GARDENS = createHeader({
	readable = "Capital Gardens",
	icon = 134162,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL2.." (" .. L.WEST ..")"]]
	},
	description = {
		en = "This part of the instance can be accessed from the western-most portal. (left side)",
		-- TODO: de = "",
		es = "Se puede acceder a esta parte de la mazmorra desde el portal más al oeste. (lado izquierdo)",
		mx = "Se puede acceder a esta parte del calabozo desde el portal más al oeste. (lado izquierdo)",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "该副本的此部分可从最西侧的入口进入。（左侧）",
		tw = "副本的這部分可以從最西邊的傳送門進入。（左側）",
	},
});

local DIREMAUL_SUBMAP = function(mapID, headerID, t)
	t.headerID = headerID;
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

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(230, { progressionKey = "dire-maul.common",	-- Dire Maul
		-- #if BEFORE MOP
		lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
		-- #endif
		-- #if BEFORE MOP
		zoneTextAreaIDs = {
			2557,	-- Dire Maul
			2577,	-- Eldreth Row
			3217,	-- "The Maul" now points to Dire Maul.
			-- #if AFTER CATA
			-- This areaID doesn't exist until Cataclysm!
			4992,	-- "Broken Commons" now points to Dire Maul.
			-- #endif
		},
		-- #endif
		timeline = { ADDED_1_2_0 },
		maps = {
			DIRE_MAUL,
			DIRE_MAUL_SHRINE_OF_ELDRETHARR,
		},
		lvl = lvlsquish(44, 44, 15),
		groups = {
			n(ACHIEVEMENTS, {
				achWithRep(5788, FACTION_SHENDRALAR, {	-- Agent of the Shen'dralar [Shen'dralar Exalted]
					-- #if BEFORE WRATH
					icon = 133736,	-- CRIEVE NOTE: The other icon doesn't exist in the game files yet
					-- #endif
					maps = CAPITAL_GARDENS_MAPS,
					timeline = { REMOVED_4_0_3 },
				}),
				ach(644, {	-- King of Dire Maul
					maps = merge(WARPWOOD_QUARTER_MAPS, GORDOK_COMMONS_MAPS, CAPITAL_GARDENS_MAPS),
				}),
				ach(5053, {	-- King of Dire Maul Guild Run
					timeline = { ADDED_4_0_3 },
				}),
			}),
			n(FACTIONS, {
				faction(FACTION_SHENDRALAR, {	-- Shen'dralar
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					-- #if BEFORE 4.0.3
					OnTooltip = OnTooltipForShendralar,
					-- #endif
				}),
				faction(FACTION_STEAMWHEEDLE_CARTEL, {	-- Steamwheedle Cartel
					icon = 133784,
					-- #if BEFORE 4.0.3
					OnTooltip = OnTooltipForSteamweedle,
					-- #endif
					maps = merge(GORDOK_COMMONS_MAPS, {
						FERALAS,
						STRANGLETHORN_VALE,
						TANARIS,
						THE_BARRENS,
						WINTERSPRING,
					}),
					-- #if AFTER 4.0.3
					description = "This is a hidden reputation. It might not count towards reputation achievements.",
					collectible = false,
					-- #endif
				}),
			}),
			n(QUESTS, {
				q(1193, {	-- A Broken Trap
					-- #if BEFORE 4.0.3
					description = "Use the items on the Broken Trap to trap Guard Slip'kik. It takes a few seconds to finish fixing the trap.\n\nYou must activate this trap in order to do the Tribute Run.",
					cost = {
						{ "i", 15994, 1 },	-- Thorium Widget
						{ "i", 3829, 1 },	-- Frost Oil
					},
					-- #endif
					provider = { "o", 179485 },	-- Broken Trap
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					repeatable = true,
					lvl = lvlsquish(56, 56, 15),
				}),
				q(27118, {	-- A Broken Trap
					description = "You must trap Guard Slip'kik in order to qualify for the full Tribute loot table.",
					provider = { "o", 179485 },	-- Broken Trap
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					repeatable = true,
					lvl = lvlsquish(42, 42, 15),
				}),
				q(7463, {	-- Arcane Refreshment
					qg = 14368,	-- Lorekeeper Lydros
					timeline = { REMOVED_4_0_3 },
					maps = merge(WARPWOOD_QUARTER_MAPS, CAPITAL_GARDENS_MAPS),
					classes = { MAGE },
					lvl = 60,
					-- #if BEFORE 4.0.3
					groups = {
						objective(1, {	-- 0/1 Hydrospawn Essence
							provider = { "i", 18299 },	-- Hydrospawn Essence
						}),
						recipe(10140),	-- Conjure Water (Rank 7)
					},
					-- #endif
				}),
				q(27104, {	-- Alzzin the Wildshaper
					qg = 44969,	-- Furgus Warpwood
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Zevrim Thornhoof slain
							provider = { "n", 11490 },	-- Zevrim Thornhoof
						}),
						objective(2, {	-- 0/1 Alzzin the Wildshaper slain
							provider = { "n", 11492 },	-- Alzzin the Wildshaper
						}),
						i(65948),	-- Warpwood Bark Vest
						i(65972),	-- Warpwood Bow
						i(65922),	-- Warpwood Leaf Mantle
						i(65993),	-- Warpwood Shield
					},
				}),
				q(27105, {	-- An Unwelcome Guest
					qg = 44969,	-- Furgus Warpwood
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Hydrospawn Essence
							provider = { "i", 18299 },	-- Hydrospawn Essence
						}),
					},
				}),
				q(7492, {	-- Camp Mojache
					qgs = {
						10879,	-- Harbinger Balthazad
						10880,	-- Warcaller Gorlach
						10881,	-- Bluff Runner Windstrider
					},
					coords = {
						{ 46.6, 64.6, ORGRIMMAR },
						{ 41.4, 54.2, THUNDER_BLUFF },
						{ 69.2, 49.2, UNDERCITY },
					},
					timeline = { REMOVED_4_0_3 },
					maps = { FERALAS },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = 54,
				}),
				q(5527, {	-- A Reliquary of Purity
					qg = 11801,	-- Rabine Saturna
					coord = { 51.7, 45.1, MOONGLADE },
					description = "The character must first visit Dire Maul, so that the Moonglade NPC will offer a conversation that unlocks the quest.",
					timeline = { REMOVED_4_0_3 },
					maps = { SILITHUS },
					lvl = 56,
					groups = {
						objective(1, {	-- 0/1 Reliquary of Purity
							providers = {
								{ "i", 22201 },	-- Reliquary of Purity
								{ "o", 179565 },	-- Dusty Reliquary
							},
							coord = { 63.2, 55.4, SILITHUS },
						}),
					},
				}),
				q(5526, {	-- Shards of the Felvine
					sourceQuest = 5527,	-- A Reliquary of Purity
					qg = 11801,	-- Rabine Saturna
					coord = { 51.7, 45.1, MOONGLADE },
					timeline = { REMOVED_4_0_3 },
					lvl = 56,
					groups = {
						objective(1, {	-- 0/1 Sealed Reliquary of Purity
							provider = { "i", 18540 },	-- Sealed Reliquary of Purity
							cost = {
								{ "i", 18539, 1 },	-- Reliquary of Purity
								{ "i", 18501, 1 },	-- Felvine Shard
							},
						}),
						i(18535),	-- Milli's Shield
						i(18536),	-- Milli's Lexicon
					},
				}),
				q(84550, {	-- Codex of Defense
					providers = {
						{ "i", 228692 },	-- Codex of Defense
						{ "n",  14383 },	-- Lorekeeper Kildrath
					},
					timeline = { ADDED_1_15_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { WARRIOR },
					lvl = 54,
					groups = {
						i(228465),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7499, {	-- Codex of Defense
					providers = {
						{ "i", 18357 },	-- Codex of Defense
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					timeline = {
						REMOVED_1_15_3,
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { WARRIOR },
					lvl = 54,
					groups = {
						i(18466, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7631, {	-- Dreadsteed of Xoroth
					sourceQuest = 7629,	-- Imp Delivery
					qg = 14436,	-- Mor'zul Bloodbringer
					qi = 18818,	-- Mor'zul's Instructions
					coord = { 12.6, 31.6, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { WARLOCK },
					lvl = 60,
					groups = {
						ach(2357, {	-- Dreadsteed of Xoroth
							sourceQuest = 7631,	-- Dreadsteed of Xoroth
							classes = { WARLOCK },
						}),
						mount(23161, {	-- Dreadsteed (MOUNT!)
							providers = {
								{ "n", 14502 },	-- Xorothian Dreadsteed
								{ "n", 14504 },	-- Dreadsteed Spirit
							},
							classes = { WARLOCK },
						}),
					},
				}),
				{	-- Elven Legends
					allianceQuestData = q(7482, {	-- Elven Legends (A)
						qg = 14374,	-- Scholar Runethorn
						coord = { 31.2, 43.9, FERALAS },
					}),
					hordeQuestData = q(7481, {	-- Elven Legends (H)
						qg = 14373,	-- Sage Korolusk
						coord = { 75.3, 43.8, FERALAS },
					}),
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = 54,
					groups = {
						objective(1, {	-- Master Telmius Dreamseeker Found
							provider = { "o", 179544 },	-- Skeletal Remains of Telmius Dreamseeker
						}),
					},
				},
				{ progressionKey = "dire-maul.recipe-quests", groups = { q(7649, {	-- Enchanted Thorium Platemail: Volume I
					providers = {
						-- #IF BEFORE 4.0.3
						{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
						-- #ENDIF
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					timeline = { REMOVED_4_0_3 },
					maps = {
						236,	-- Capital Gardens
						BLACKROCK_SPIRE,
						LBRS_SKITTERWEB_TUNNELS,
						LBRS_HORDEMAR_CITY,
						LBRS_HALL_OF_BLACKHAND,
						LBRS_HALYCONS_LAIR,
						LBRS_CHAMBER_OF_BATTLE,
					},
					cost = {
						{ "i", 18779, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume I
						{ "i", 18780, 1 },	-- Top Half of Advanced Armorsmithing: Volume I
					},
					requireSkill =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					groups = {
						i(12727),	-- Plans: Enchanted Thorium Breastplate (RECIPE!)
					},
				}),
				q(7650, {	-- Enchanted Thorium Platemail: Volume II
					providers = {
						-- #IF BEFORE 4.0.3
						{ "i", 18770 },	-- Enchanted Thorium Platemail (Volume II)
						-- #ENDIF
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					timeline = { REMOVED_4_0_3 },
					maps = {
						236,	-- Capital Gardens
						STRATHOLME, SCHOLOMANCE
					},
					cost = {
						{ "i", 18781, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume II
						{ "i", 18782, 1 },	-- Top Half of Advanced Armorsmithing: Volume II
					},
					requireSkill =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					lvl = 50,
					groups = {
						i(12726),	-- Plans: Enchanted Thorium Leggings (RECIPE!)
					},
				}),
				q(7651, {	-- Enchanted Thorium Platemail: Volume III
					providers = {
						-- #if BEFORE 4.0.3
						{ "i", 18771 },	-- Enchanted Thorium Platemail (Volume III)
						-- #endif
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					timeline = { REMOVED_4_0_3 },
					maps = merge(CAPITAL_GARDENS_MAPS, {
						BLACKROCK_SPIRE,
						LBRS_SKITTERWEB_TUNNELS,
						LBRS_HORDEMAR_CITY,
						LBRS_HALL_OF_BLACKHAND,
						LBRS_HALYCONS_LAIR,
						LBRS_CHAMBER_OF_BATTLE,
						STRATHOLME
					}),
					cost = {
						{ "i", 18783, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume III
						{ "i", 18784, 1 },	-- Top Half of Advanced Armorsmithing: Volume III
					},
					requireSkill =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					lvl = 50,
					groups = {
						i(12725),	-- Plans: Enchanted Thorium Helm (RECIPE!)
					},
				}) } },
				q(7494, {	-- Feathermoon Stronghold
					qgs = {
						2198,	-- Crier Goodman
						10877,	-- Courier Hammerfall
						10878,	-- Herald Moonstalker
					},
					coords = {
						{ 39.0, 63.6, DARNASSUS },
						{ 30.5, 67.0, IRONFORGE },
						{ 54.8, 62.6, STORMWIND_CITY },
					},
					timeline = { REMOVED_4_0_3 },
					maps = { FERALAS },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = 54,
				}),
				q(5525, {	-- Free Knot!
					-- #if BEFORE 4.0.3
					description = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
					cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
					-- #endif
					qg = 14338,	-- Knot Thimblejack
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = 54,
				}),
				q(7429, {	-- Free Knot! (repeatable)
					-- #if BEFORE 4.0.3
					description = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
					cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
					-- #endif
					sourceQuest = 5525,	-- Free Knot!
					qg = 14338,	-- Knot Thimblejack
					maxReputation = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					repeatable = true,
					lvl = 54,
				}),
				q(7505, {	-- Frost Shock and You
					providers = {
						{ "i", 18363 },	-- Frost Shock and You
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					-- #if BEFORE TBC
					races = HORDE_ONLY,
					-- #endif
					classes = { SHAMAN },
					lvl = 54,
					groups = {
						i(18471),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(84548, {	-- Garona: A Study on Stealth and Treachery
					providers = {
						{ "i", 228691 },	-- Garona: A Study on Stealth and Treachery
						{ "n",  14383 },	-- Lorekeeper Kildrath
					},
					timeline = { ADDED_1_15_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { ROGUE },
					lvl = 54,
					groups = {
						i(228464),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7498, {	-- Garona: A Study on Stealth and Treachery
					providers = {
						{ "i", 18356 },	-- Garona: A Study on Stealth and Treachery
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					timeline = {
						REMOVED_1_15_3,
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { ROGUE },
					lvl = 54,
					groups = {
						i(18465, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7502, {	-- Harnessing Shadows
					providers = {
						{ "i", 18360 },	-- Harnessing Shadows
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { WARLOCK },
					lvl = 54,
					groups = {
						i(18467),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7504, {	-- Holy Bologna: What the Light Won't Tell You
					providers = {
						{ "i", 18362 },	-- Holy Bologna: What the Light Won't Tell You
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { PRIEST },
					lvl = 54,
					groups = {
						i(18469),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(27125, {	-- King of the Gordok [Alliance]
					sourceQuest = 27133,	-- Eyes in the Sky
					qg = 45040,	-- Druid of the Talon
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						objective(1, {	-- 0/1 King Gordok slain
							provider = { "n", 11501 },	-- King Gordok
						}),
						i(65976),	-- Pauldrons of Tribute
						i(65927),	-- Slippers of Tribute
						i(65997),	-- Tribute Gun
						i(65952),	-- Wristbands of Tribute
					},
				}),
				q(27128, {	-- King of the Gordok [Horde]
					qg = 45052,	-- Stonemaul Ogre
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					races = HORDE_ONLY,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						objective(1, {	-- 0/1 King Gordok slain
							provider = { "n", 11501 },	-- King Gordok
						}),
						i(66036),	-- Pauldrons of Tribute
						i(66018),	-- Slippers of Tribute
						i(66043),	-- Tribute Gun
						i(66027),	-- Wristbands of Tribute
					},
				}),
				q(7488, {	-- Lethtendris's Web [Alliance]
					sourceQuest = 7494,	-- Feathermoon Stronghold
					qg = 7877,	-- Latronicus Moonspear
					coord = { 30.4, 46.2, FERALAS },
					timeline = { REMOVED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					races = ALLIANCE_ONLY,
					lvl = 54,
					groups = {
						objective(1, {	-- 0/1 Lethtendris's Web
							provider = { "i", 18426 },	-- Lethtendris's Web
						}),
						i(18491),	-- Lorespinner
					},
				}),
				q(7489, {	-- Lethtendris's Web [Horde]
					sourceQuest = 7492,	-- Camp Mojache
					qg = 7776,	-- Talo Thornhoof
					coord = { 76.2, 43.8, FERALAS },
					timeline = { REMOVED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					races = HORDE_ONLY,
					lvl = 54,
					groups = {
						objective(1, {	-- 0/1 Lethtendris's Web
							provider = { "i", 18426 },	-- Lethtendris's Web
						}),
						i(18491),	-- Lorespinner
					},
				}),
				q(27108, {	-- Lethtendris's Web
					qg = 44971,	-- "Ambassador" Dagg'thol
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Lethtendris's Web
							provider = { "i", 18426 },	-- Lethtendris's Web
						}),
					},
				}),
				q(7484, {	-- Libram of Focus
					sourceQuests = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					qg = 14368,	-- Lorekeeper Lydros
					maxReputation = { FACTION_SHENDRALAR, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					cost = {
						{ "i", 18333, 1 },	-- Libram of Focus
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 4 },	-- Large Brilliant Shard
						{ "i", 12753, 2 },	-- Skin of Shadow
					},
					repeatable = true,
					lvl = 57,
					groups = {
						i(18330),	-- Arcanum of Focus
					},
				}),
				q(7485, {	-- Libram of Protection
					sourceQuests = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					qg = 14368,	-- Lorekeeper Lydros
					maxReputation = { FACTION_SHENDRALAR, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					cost = {
						{ "i", 18334, 1 },	-- Libram of Protection
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 12735, 1 },	-- Frayed Abomination Stitching
					},
					repeatable = true,
					lvl = 57,
					groups = {
						i(18331),	-- Arcanum of Protection
					},
				}),
				q(7483, {	-- Libram of Rapidity
					sourceQuests = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					qg = 14368,	-- Lorekeeper Lydros
					maxReputation = { FACTION_SHENDRALAR, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					cost = {
						{ "i", 18332, 1 },	-- Libram of Rapidity
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 12938, 2 },	-- Blood of Heroes
					},
					repeatable = true,
					lvl = 57,
					groups = {
						i(18329),	-- Arcanum of Rapidity
					},
				}),
				q(7441, {	-- Pusillin and the Elder Azj'Tordin
					qg = 14355,	-- Azj'Tordin
					coord = { 76.7, 37.2, FERALAS },
					timeline = { REMOVED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = 54,
					groups = {
						objective(1, {	-- 0/1 Book of Incantations
							provider = { "i", 18261 },	-- Book of Incantations
						}),
						i(18410),	-- Sprinter's Sword
						i(18411),	-- Spry Boots
					},
				}),
				q(27107, {	-- Pusillin The Thief
					qg = 44971,	-- "Ambassador" Dagg'thol
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Book of Incantations
							provider = { "i", 18261 },	-- Book of Incantations
						}),
					},
				}),
				q(27129, {	-- Saving Warpwood [A]
					qg = 40032,	-- Telaron Windflight
					coord = { 50.7, 17.2, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
				}),
				q(27130, {	-- Saving Warpwood [H]
					qg = 7875,	-- Hadoken Swiftstrider
					coord = { 74.9, 42.4, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				q(27103, {	-- Shards of the Felvine
					qg = 44969,	-- Furgus Warpwood
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Sealed Reliquary of Purity
							provider = { "i", 18540 },	-- Sealed Reliquary of Purity
							cost = {
								{ "i", 18539, 1 },	-- Reliquary of Purity
								{ "i", 18501, 1 },	-- Felvine Shard
							},
						}),
					},
				}),
				q(84549, {	-- The Arcanist's Cookbook
					providers = {
						{ "i", 228693 },	-- The Arcanist's Cookbook
						{ "n",  14383 },	-- Lorekeeper Kildrath
					},
					timeline = { ADDED_1_15_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { MAGE },
					lvl = 54,
					groups = {
						i(228466, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7500, {	-- The Arcanist's Cookbook
					providers = {
						{ "i", 18358 },	-- The Arcanist's Cookbook
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					timeline = {
						REMOVED_1_15_3,
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { MAGE },
					lvl = 54,
					groups = {
						i(18468, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27112, {	-- The Cursed Remains
					qg = 44991,	-- Estulan
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
					groups = {
						objective(1, {	-- 0/1 Magister Kalendris slain
							provider = { "n", 11487 },	-- Magister Kalendris
						}),
						objective(2, {	-- 0/1 Illyanna Ravenoak slain
							provider = { "n", 11488 },	-- Illyanna Ravenoak
						}),
					},
				}),
				q(27109, {	-- The Warped Defender
					qg = 44999,
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
					groups = {
						objective(1, {	-- 0/1 Tendris Warpwood slain
							provider = { "n", 11489 },	-- Tendris Warpwood
						}),
					},
				}),
				q(7506, {	-- The Emerald Dream...
					providers = {
						{ "i", 18364 },	-- The Emerald Dream
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { DRUID },
					lvl = 54,
					groups = {
						i(18470),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(5518, {	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = {
						{ "i", 14048, 4 },	-- Bolt of Runecloth
						{ "i", 8170, 8 },	-- Rugged Leather
						{ "i", 14341, 2 },	-- Rune Thread
						{ "i", 18240, 1 },	-- Ogre Tannin
					},
					lvl = 56,
					groups = {
						r(22813, {	-- Gordok Ogre Suit
							requireSkill = TAILORING,
						}),
						r(22815, {	-- Gordok Ogre Suit
							requireSkill = LEATHERWORKING,
						}),
						i(18258, {	-- Gordok Ogre Suit
							description = "Before using this, clear the trash before Captain Kromcrush. Tell your group to stay back while you talk to Kromcrush with this disguise on. If they aggro him, your group will fail the Tribute Run.",
						}),
					},
				}),
				q(5519, {	-- The Gordok Ogre Suit
					sourceQuest = 5518,	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					maxReputation = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = {
						{ "i", 14048, 4 },	-- Bolt of Runecloth
						{ "i", 8170, 8 },	-- Rugged Leather
						{ "i", 14341, 2 },	-- Rune Thread
						{ "i", 18240, 1 },	-- Ogre Tannin
					},
					repeatable = true,
					lvl = 56,
					groups = { i(18258) },	-- Gordok Ogre Suit
				}),
				q(27119, {	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = { { "i", 18240, 1 } },	-- Ogre Tannin
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18258),	-- Gordok Ogre Suit
					},
				}),
				q(27120, {	-- The Gordok Ogre Suit
					sourceQuest = 27119,	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = { { "i", 18240, 1 } },	-- Ogre Tannin
					repeatable = true,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18258),	-- Gordok Ogre Suit
					},
				}),
				q(5528, {	-- The Gordok Taste Test
					description = "With Stomper Kreeg left alive, kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.\n\nHe sells these items after you have completed the quest and if you are Friendly with him.",
					qg = 14322,	-- Stomper Kreeg <The Drunk>
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = 56,
					groups = {
						i(18269),	-- Gordok Green Grog
						i(18284),	-- Kreeg's Stout Beatdown
					},
				}),
				q(27114, {	-- The Gordok Taste Test
					description = "With Stomper Kreeg left alive, kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.\n\nHe sells these items after you have completed the quest and if you are Friendly with him.",
					qg = 14322,	-- Stomper Kreeg <The Drunk>
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18269),	-- Gordok Green Grog
						i(18284),	-- Kreeg's Stout Beatdown
					},
				}),
				q(7503, {	-- The Greatest Race of Hunters
					providers = {
						{ "i", 18361 },	-- The Greatest Race of Hunters
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { HUNTER },
					lvl = 54,
					groups = {
						i(18473),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(27131, {	-- The Highborne [A]
					qg = 40032,	-- Telaron Windflight
					coord = { 50.7, 17.2, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
				}),
				q(27132, {	-- The Highborne [H]
					qg = 7875,	-- Hadoken Swiftstrider
					coord = { 74.9, 42.4, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				q(84551, {	-- The Light and How To Swing It
					providers = {
						{ "i", 228690 },	-- The Light and How to Swing It
						{ "n",  14382 },	-- Lorekeeper Mykos
					},
					timeline = { ADDED_1_15_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { PALADIN },
					lvl = 54,
					groups = {
						i(228467, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7501, {	-- The Light and How To Swing It
					providers = {
						{ "i", 18359 },	-- The Light and How to Swing It
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					timeline = {
						REMOVED_1_15_3,
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { PALADIN },
					lvl = 54,
					groups = {
						i(18472, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7461, {	-- The Madness Within
					qg = 14358,	-- Shen'dralar Ancient
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = 56,
					groups = {
						objective(1, {	-- 0/1 Immol'thar slain
							provider = { "n", 11496 },	-- Immol'thar
						}),
						objective(2, {	-- 0/1 Prince Tortheldrin slain
							provider = { "n", 11486 },	-- Prince Tortheldrin
						}),
					},
				}),
				q(27110, {	-- The Madness Within
					qg = 14358,	-- Shen'dralar Ancient
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Immol'thar slain
							provider = { "n", 11496 },	-- Immol'thar
						}),
						objective(2, {	-- 0/1 Prince Tortheldrin slain
							provider = { "n", 11486 },	-- Prince Tortheldrin
						}),
					},
				}),
				q(27113, {	-- The Shen'dralar Ancient
					qg = 44991,	-- Estulan
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
				}),
				q(7877, {	-- The Treasure of the Shen'dralar
					sourceQuest = 7461,	-- The Madness Within
					providers = {
						{ "n",  14358 },	-- Shen'dralar Ancient
						{ "o", 179517 },	-- Treasure of the Shen'dralar
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = 57,
					groups = {
						i(18421),	-- Backwood Helm
						i(18420),	-- Bonecrusher
						i(18424),	-- Sedge Boots
					},
				}),
				q(27111, {	-- The Treasure of the Shen'dralar
					sourceQuest = 27110,	-- The Madness Within
					providers = {
						{ "n",  14358 },	-- Shen'dralar Ancient
						{ "o", 179517 },	-- Treasure of the Shen'dralar
					},
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
					groups = {
						i(65949),	-- Dire Maul
						i(65973),	-- Grimm's Cigar Cutter
						i(65924),	-- Shen'dralar Trident
						i(65994),	-- Staff of Athen'a
					},
				}),
				q(7703, {	-- Unfinished Gordok Business
					description = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
					qg = 14325,	-- Captain Kromcrush
					timeline = { REMOVED_4_0_3 },
					maps = merge(WARPWOOD_QUARTER_MAPS, GORDOK_COMMONS_MAPS, CAPITAL_GARDENS_MAPS),
					lvl = 60,
					-- #if BEFORE 4.0.3
					groups = {
						objective(1, {	-- 0/1 Gauntlet of Gordok Might
							provider = { "i", 18336 },	-- Gauntlet of Gordok Might
						}),
						i(18367),	-- Gordok's Gauntlets
						i(18368),	-- Gordok's Gloves
						i(18366),	-- Gordok's Handguards
						i(18369),	-- Gordok's Handwraps
					},
					-- #endif
				}),
				q(27124, {	-- Unfinished Gordok Business
					description = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
					qg = 14325,	-- Captain Kromcrush
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18367),	-- Gordok's Gauntlets
						i(18368),	-- Gordok's Gloves
						i(18366),	-- Gordok's Handguards
						i(18369),	-- Gordok's Handwraps
					},
				}),
			}),
			n(TREASURES, {
				o(179526, {	-- Warpwood Pod
					i(18255),	-- Runn Tum Tuber
					i(18297),	-- Thornling Seed
				}),
			}),
			n(ZONE_DROPS, {
				maps = ALL_DIREMAUL_MAPS,
				groups = {
					i(12662),	-- Demonic Rune
					i(18640),	-- Happy Fun Rock
					i(18333, {	-- Libram of Focus
						-- #if AFTER 4.0.3
						description = "This still drops despite being completely worthless.",
						-- #endif
					}),
					i(18334, {	-- Libram of Protection
						-- #if AFTER 4.0.3
						description = "This still drops despite being completely worthless.",
						-- #endif
					}),
					i(18332, {	-- Libram of Rapidity
						-- #if AFTER 4.0.3
						description = "This still drops despite being completely worthless.",
						-- #endif
					}),
					{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
						timeline = { REMOVED_4_0_3 },
						-- #if BEFORE 4.0.3
						crs = {
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
					}) } },
				},
			}),
			n(COMMON_BOSS_DROPS, {
				provider = { "o", 179547 },	-- A Dusty Tome
				-- #if BEFORE 4.0.3
				description = "The following items can drop from any boss in Dire Maul and also from Dusty Tomes on the ground.",
				-- #endif
				maps = ALL_DIREMAUL_MAPS,
				groups = {
					i(228692, {	-- Codex of Defense
						timeline = { ADDED_1_15_3 },
					}),
					i(18357, {	-- Codex of Defense
						timeline = {
							REMOVED_1_15_3,
						},
					}),
					i(18360, {	-- Harnessing Shadows
						timeline = { REMOVED_4_0_3 },
					}),
					i(18363, {	-- Frost Shock and You
						timeline = { REMOVED_4_0_3 },
					}),
					i(228691, {	-- Garona: A Study on Stealth and Treachery
						timeline = { ADDED_1_15_3 },
					}),
					i(18356, {	-- Garona: A Study on Stealth and Treachery
						timeline = {
							REMOVED_1_15_3,
						},
					}),
					i(18362, {	-- Holy Bologna: What the Light Won't Tell You
						timeline = { REMOVED_4_0_3 },
					}),
					i(228680, {	-- Nostro's Compendium of Dragon Slaying
						timeline = { ADDED_1_15_3 },
					}),
					i(18401, {	-- Nostro's Compendium of Dragon Slaying
						timeline = {
							REMOVED_1_15_3,
						},
					}),
					i(228693, {	-- The Arcanist's Cookbook
						timeline = { ADDED_1_15_3 },
					}),
					i(18358, {	-- The Arcanist's Cookbook
						timeline = {
							REMOVED_1_15_3,
						},
					}),
					i(18364, {	-- The Emerald Dream
						timeline = { REMOVED_4_0_3 },
					}),
					i(18361, {	-- The Greatest Race of Hunters
						timeline = { REMOVED_4_0_3 },
					}),
					i(228690, {	-- The Light and How to Swing It
						timeline = { ADDED_1_15_3 },
					}),
					i(18359, {	-- The Light and How to Swing It
						timeline = {
							REMOVED_1_15_3,
						},
					}),
				},
			}),
			o(179547, {	-- A Dusty Tome
				maps = ALL_DIREMAUL_MAPS,
				groups = {
					i(18365, {	-- A Thoroughly Read Copy of "Nat Pagle's Guide to Extreme Anglin'."
						-- #if BEFORE 7.0.3
						lore = "This item is utterly worthless, however there was a rumor that this item could be used to obtain the original Ashbringer via fishing.",
						-- #endif
						description =
							-- #if AFTER 7.0.3
							"Required for the Retribution Paladin Hidden Artifact Appearance. This can be found in various places throughout all the wings of Dire Maul.\n\n North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\n East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\n West: By the southern generator in Immol'thar's room.",
							-- #else
							"This can be found in various places throughout all the wings of Dire Maul.\n\n North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\n East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\n West: By the southern generator in Immol'thar's room.",
							-- #endif
					}),
				},
			}),
			DIREMAUL_SUBMAP(239, WARPWOOD_QUARTER, {	-- Warpwood Quarter (East)
				coord = { 64.83, 30.24, FERALAS },	-- Dire Maul [East]
				maps = WARPWOOD_QUARTER_MAPS,
				groups = {
					n(ZONE_DROPS, {
						i(18289, {	-- Barbed Thorn Necklace
							crs = {
								11461,	-- Warpwood Guardian
								11462,	-- Warpwood Treant
								13021,	-- Warpwood Crusher
								11464,	-- Warpwood Tangler
								11465,	-- Warpwood Stomper
							},
						}),
						i(18296, {	-- Marksman Bands
							crs = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
							},
						}),
						i(18295, {	-- Phasing Boots
							cr = 13196,	-- Phase Lasher
						}),
						i(18603, {	-- Satyr Blood
							timeline = { REMOVED_4_0_3 },
							classes = { WARLOCK },
							-- #if BEFORE 4.0.3
							crs = {
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
							crs = {
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
						description = "Talk to him and then chase him. Eventually he will go up a ramp and become killable.",
						groups = {
							i(18249, {	-- Crescent Key
								description =
									-- #if AFTER 5.2.0
									"This key no longer has any practical use, and disappears from the inventory like a conjured item.",	-- Removed with 4.0.3, and started dropping again with 5.2.0 for no apparent reason.
									-- #elseif AFTER 4.0.3
									"This key no longer has any practical use.",
									-- #else
									"This key is required to enter the Gordok Commons and Capital Gardens.",
									-- #endif
							}),
							i(18261),	-- Book of Incantations
							i(207297, {	-- Grimoire of the Felblaze Imp (CI!)
								timeline = { ADDED_10_1_5 },
							}),
							i(18267),	-- Recipe: Runn Tum Tuber Surprise (RECIPE!)
							i(18255),	-- Runn Tum Tuber
						},
					}),
					n(14349, {	-- Pimgib
						i(18354, {	-- Pimgib's Collar
							classes = { WARLOCK },
						}),
					}),
					e(404, {	-- Lethtendris
						creatureID = 14327,
						groups = {
							i(18426),	-- Lethtendris's Web
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228051, {	-- Quel'dorei Channeling Rod
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18311, {	-- Quel'dorei Channeling Rod
								timeline = { REMOVED_1_15_3 },
							}),
							i(18301),	-- Lethtendris' Wand
							i(18325),	-- Felhide Cap
							i(18302),	-- Band of Vigor
						},
					}),
					e(403, {	-- Hydrospawn
						creatureID = 13280,
						groups = {
							i(18299),	-- Hydrospawn Essence
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228052, {	-- Waveslicer
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18324, {	-- Waveslicer
								timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228054, {	-- Tempest Talisman
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18317, {	-- Tempest Talisman
								timeline = { REMOVED_1_15_3 },
							}),
							i(18305),	-- Breakwater Legguards
							i(18307),	-- Riptide Shoes
							i(18322),	-- Waterspout Boots
							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
						},
					}),
					e(402, {	-- Zevrim Thornhoof
						creatureID = 11490,
						groups = {
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228050, {	-- Satyr's Bow
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18323, {	-- Satyr's Bow
								timeline = { REMOVED_1_15_3 },
							}),
							i(18308),	-- Clever Hat
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228053, {	-- Fervent Helm
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18319, {	-- Fervent Helm
								timeline = { REMOVED_1_15_3 },
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
						description = "Talk to him for him to break down the door.",
					}),
					{ progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
						description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
						-- #if BEFORE 6.0.2
						cost = {
							{ "i", 22050, 1 },	-- Brazier of Beckoning [Isalien]
						},
						-- #endif
						provider = { "i", 22057 },	-- Brazier of Invocation
						-- #if AFTER 4.0.3
						sourceQuest = 8996,	-- Return to Bodley
						u_sqs = true,	-- remove the u flag if sourcequests are completed
						-- #endif
						timeline = { REMOVED_4_0_3 },
						groups = {
							objective(2, {	-- 0/1 Left Piece of Lord Valthalak's Amulet
								questID = 8967,	-- The Left Piece of Lord Valthalak's Amulet [WARLOCK, DRUID]
								provider = { "i", 21984 },	-- Left Piece of Lord Valthalak's Amulet
							}),
							objective(2, {	-- 0/1 Right Piece of Lord Valthalak's Amulet
								questID = 8990,	-- The Right Piece of Lord Valthalak's Amulet [WARRIOR, ROGUE]
								provider = { "i", 22046 },	-- Right Piece of Lord Valthalak's Amulet
							}),
							i(22315),	-- Hammer of Revitalization
							i(22314),	-- Huntsman's Harpoon
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228066, {	-- Ironweave Gloves
								timeline = { ADDED_1_15_3 },
							}) } },
							i(22304, {	-- Ironweave Gloves
								timeline = { REMOVED_1_15_3 },
							}),
							i(22472),	-- Boots of Ferocity
							i(22401, {	-- Libram of Hope
								timeline = { DELETED_5_0_4 },
							}),
							i(22345, {	-- Totem of Rebirth
								timeline = { DELETED_5_0_4 },
							}),
						},
					}) } },
					e(405, {	-- Alzzin the Wildshaper
						creatureID = 11492,
						groups = {
							i(18501, {	-- Felvine Shard
								description = "Spawns under the vines near the last boss in Dire Maul East.",
								provider = { "o", 179559 },	-- Felvine Shard
							}),
							i(18321),	-- Energetic Rod
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228056, {	-- Fiendish Machete
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18310, {	-- Fiendish Machete
								timeline = { REMOVED_1_15_3 },
							}),
							i(18328),	-- Shadewood Cloak
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228055, {	-- Energized Chestplate
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18312, {	-- Energized Chestplate
								timeline = { REMOVED_1_15_3 },
							}),
							i(18309),	-- Gloves of Restoration
							i(18326),	-- Razor Gauntlets
							i(18327),	-- Whipvine Cord
							i(18318),	-- Merciful Greaves
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228699, {	-- Ring of Demonic Guile
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18314, {	-- Ring of Demonic Guile
								timeline = { REMOVED_1_15_3 },
							}),
							-- #if BEFORE 6.0.2
							-- This ring may have moved to Zevrim, will need to verify.
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228057, {	-- Ring of Demonic Potency
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18315, {	-- Ring of Demonic Potency
								timeline = { REMOVED_1_15_3 },
							}),
							-- #endif
						},
					}),
				},
			}),
			DIREMAUL_SUBMAP(235, GORDOK_COMMONS, {		-- Gordok Commons (North)
				coord = { 62.48, 24.48, FERALAS },	-- Dire Maul [North]
				maps = GORDOK_COMMONS_MAPS,
				-- #if BEFORE 4.0.3
				cost = { { "i", 18249, 1 } },	-- Crescent Key
				-- #endif
				groups = {
					n(ZONE_DROPS, {
						i(18250, {	-- Gordok Shackle Key
							timeline = { REMOVED_4_0_3, ADDED_10_1_5 },
							-- #if BEFORE 4.0.3
							description = "NOTE: Do NOT Free Knot if you are doing a Tribute Run. He runs away.",
							-- #endif
							crs = {
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
					}),
					n(QUESTS, {
						q(77194, {	-- Free Knot!
							description = "This quest becomes obtainable once a Gordok Shackle Key is looted. Completing it increases your reputation with the Steamwheedle Cartel without lowering your reputation with the Bloodsail Buccaneers.",
							qg = 14338,	-- Knot Thimblejack
							timeline = { ADDED_10_1_5 },
							cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
							repeatable = true,
							groups = {
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
					}),
					n(COMMON_BOSS_DROPS, {
						description = "The following items can drop from any of the guards.",
						crs = {
							14326,	-- Guard Mol'dar
							14321,	-- Guard Fengus
							14323,	-- Guard Slip'kik
						},
						groups = {
							-- #if AFTER 7.3.5
							i(18498),	-- Hedgecutter
							-- #endif
							i(18462),	-- Jagged Bone Fist
							i(18463),	-- Ogre Pocket Knife
							i(18460),	-- Unsophisticated Hand Cannon
							-- #if AFTER 7.3.5
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18496, {	-- Heliotrope Cloak
								timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18493, {	-- Bulky Iron Spaulders
								timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18494, {	-- Denwatcher's Shoulders
								timeline = { REMOVED_1_15_3 },
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
						creatureID = 14326,
						-- #if BEFORE 4.0.3
						description = "If you do not have a way to open the inner door, you can kill him for the Inner Door Key.\n\nDoing so will invalidate your Tribute Run.",
						-- #endif
						groups = {
							-- #if BEFORE 7.3.5
							i(18498),	-- Hedgecutter
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18496, {	-- Heliotrope Cloak
								timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18493, {	-- Bulky Iron Spaulders
								timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18494, {	-- Denwatcher's Shoulders
								timeline = { REMOVED_1_15_3 },
							}),
							i(18497),	-- Sublime Wristguards
							-- #endif
							i(18268, {	-- Gordok Inner Door Key
								timeline = { DELETED_4_0_3 },
							}),
						},
					}),
					e(412, {	-- Stomper Kreeg
						creatureID = 14322,
						groups = {
							i(18425),	-- Kreeg's Mug
							-- #if AFTER 6.0.2
							i(18464),	-- Gordok Nose Ring
							-- #endif
							n(VENDORS, {
								description = "After becoming the king, you can come back to Kreeg to buy some drinks.",
								groups = {
									i(18269),	-- Gordok Green Grog
									i(18284),	-- Kreeg's Stout Beatdown
									i(18288),	-- Molasses Firewater
									i(18287),	-- Evermurky
								},
							}),
						},
					}),
					e(413, {	-- Guard Fengus
						creatureID = 14321,
						description =
							-- #if AFTER 4.0.3
							"Avoid him. His chest is empty.",
							-- #else
							"Avoid him and loot his chest for a key to open the door.",
							-- #endif
						-- #if BEFORE 4.0.3
						groups = {
							i(18266, {	-- Gordok Courtyard Key
								provider = { "o", 179516 },	-- Fengus's Chest
							}),
						},
						-- #endif
					}),
					e(414, {	-- Guard Slip'kik
						creatureID = 14323,
						-- #if BEFORE 7.3.5
						groups = {
							i(18498),	-- Hedgecutter
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18496, {	-- Heliotrope Cloak
								timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18493, {	-- Bulky Iron Spaulders
								timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18494, {	-- Denwatcher's Shoulders
								timeline = { REMOVED_1_15_3 },
							}),
							i(18497),	-- Sublime Wristguards
						},
						-- #endif
					}),
					n(14338, {	-- Knot Thimblejack
						timeline = { ADDED_10_1_5 },
						groups = {
							r(22813, {	-- Gordok Ogre Suit
								requireSkill = TAILORING,
								sourceQuest = 27119,	-- The Gordok Ogre Suit
							}),
							r(22815, {	-- Gordok Ogre Suit
								requireSkill = LEATHERWORKING,
								sourceQuest = 27119,	-- The Gordok Ogre Suit
							}),
						},
					}),
					o(179501, {	-- Knot Thimblejack's Cache
						sourceQuest = 5525,	-- Free Knot!
						-- #if BEFORE 4.0.3
						cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
						-- #endif
						groups = {
							i(18240),	-- Ogre Tannin
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228477, {	-- Pattern: Embroidered Belt of the Archmage (RECIPE!)
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18414, {	-- Pattern: Belt of the Archmage (RECIPE!)
								timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(227910, {	-- Pattern: Brilliant Chromatic Cloak (RECIPE!)
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18517, {	-- Pattern: Chromatic Cloak (RECIPE!)
								timeline = { REMOVED_1_15_3 },
							}),
							i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
							i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228319, {	-- Pattern: Girdle of Arcane Insight (RECIPE!)
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18514, {	-- Pattern: Girdle of Insight (RECIPE!)
								timeline = { REMOVED_1_15_3 },
							}),
							i(18518),	-- Pattern: Hide of the Wild (RECIPE!)
							i(18416),	-- Pattern: Inferno Gloves (RECIPE!)
							i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
							i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228276, {	-- Pattern: Mastercrafted Shifting Cloak (RECIPE!)
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18519, {	-- Pattern: Shifting Cloak (RECIPE!)
								timeline = { REMOVED_1_15_3 },
							}),
							i(18516, {	-- Pattern: Swift Flight Bracers (RECIPE!)
								timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228301, {	-- Pattern: Swift Flight Vambraces (RECIPE!)
								timeline = { ADDED_1_15_3 },
							}) } },
						},
					}),
					o(179499, {	-- Ogre Tannin Basket
						description = "Beware! Looting the Ogre Tannin will cause a Gordok Bushwacker to spawn. Quote is homage to the movie The Silence of the Lambs.\n\n'NO! It puts the tannin in the basket, or it gets the mallet again!'",
						groups = {
							i(18240),	-- Ogre Tannin
						},
					}),
					e(415, {	-- Captain Kromcrush
						creatureID = 14325,
						description =
							-- #if AFTER 4.0.3
							"Use the Gordok Ogre Suit to skip him for the Tribute Run. (Talk to him)",
							-- #else
							"In order to get to this boss, you must use the Inner Door Key or have an engineer open the door using a Seaforium Charge.\n\nUse the Gordok Ogre Suit to skip him. (talk to him)",
							-- #endif
						-- #if BEFORE 4.0.3
						cost = {
							{ "i", 18268, 1 },	-- Gordok Inner Door Key
							{ "i", 18258, 1 },	-- Gordok Ogre Suit
						},
						-- #endif
						groups = {
							i(18502),	-- Monstrous Glaive
							i(18503),	-- Kromcrush's Chestplate
							-- #if AFTER 7.3.5
							i(18458),	-- Modest Armguards (7.3.5 - Moved from Guards)
							-- #endif
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228068, {	-- Mugger's Belt
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18505, {	-- Mugger's Belt
								timeline = { REMOVED_1_15_3 },
							}),
							i(18507),	-- Boots of the Full Moon
						},
					}),
					e(416, {	-- Cho'Rush the Observer
						creatureID = 14324,
						groups = {
							i(18484),	-- Cho'Rush's Blade
							i(18483),	-- Mana Channeling Wand
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228064, {	-- Observer's Shield
								description = "This doesn't appear to have been added yet.",
								timeline = { CREATED_1_15_3 },
							}) } },
							i(18485, {	-- Observer's Shield
								-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
								-- timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228062, {	-- Insightful Hood
								description = "This doesn't appear to have been added yet.",
								timeline = { CREATED_1_15_3 },
							}) } },
							i(18490, {	-- Insightful Hood
								-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
								-- timeline = { REMOVED_1_15_3 },
							}),
							-- #if AFTER 7.3.5
							i(18459),	-- Gallant's Wristguards (7.3.5 - Moved from Guards)
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved from King Gordok)
							-- #endif
						},
					}),
					e(417, {	-- King Gordok
						creatureID = 11501,
						groups = {
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228478, {	-- Barbarous Blade
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18520, {	-- Barbarous Blade
								timeline = { REMOVED_1_15_3 },
							}),
							i(18523),	-- Brightly Glowing Stone
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228480, {	-- Crown of the Ogre King
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18526, {	-- Crown of the Ogre King
								timeline = { REMOVED_1_15_3 },
							}),
							i(18525),	-- Bracers of Prosperity
							-- #if BEFORE 7.3.5
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
							-- #endif
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228479, {	-- Leggings of Destruction
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18524, {	-- Leggings of Destruction
								timeline = { REMOVED_1_15_3 },
							}),
							i(18521),	-- Grimy Metal Boots
							i(18522),	-- Band of the Ogre King
							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } },	-- Ace of Warlords
							i(18780, {	-- Top Half of Advanced Armorsmithing: Volume I
								timeline = { DELETED_4_0_3 },
							}),
						},
					}),
					o(179564, {	-- Gordok Tribute Chest
						description = "Speak with Mizzle after killing |cFFFFD700King Gordok|r to spawn the Tribute Chest.\n\nA full Tribute Run (5 items) requires leaving all bosses alive except King Gordok, and also requires activating the Frost Trap & fooling Kromcrush with the Ogre Suit, granted by the Goblin near the trap.",
						provider = { "n", 14353 },	-- Mizzle the Crafty
						modelScale = 3,
						groups = {
							i(18655),	-- Schematic: Major Recombobulator (RECIPE!)
							i(18499),	-- Barrier Shield
							i(18479),	-- Carrion Scorpid Helm
							i(18537),	-- Counterattack Lodestone
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228065, {	-- Cyclone Spaulders
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18528, {	-- Cyclone Spaulders
								timeline = { REMOVED_1_15_3 },
							}),
							i(18529),	-- Elemental Plate Girdle
							i(18533),	-- Gordok Bracers of Power
							i(18478),	-- Hyena Hide Jerkin
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228474, {	-- Mindsurge Robe
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18532, {	-- Mindsurge Robe
								timeline = { REMOVED_1_15_3 },
							}),
							i(18476),	-- Mud Stained Boots
							i(18475),	-- Oddly Magical Belt
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228070, {	-- Ogre Forged Hauberk
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18530, {	-- Ogre Forged Hauberk
								timeline = { REMOVED_1_15_3 },
							}),
							i(18482),	-- Ogre Toothpick Shooter
							i(18495),	-- Redoubt Cloak
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228484, {	-- Rod of the Ogre Magi
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18534, {	-- Rod of the Ogre Magi
								timeline = { REMOVED_1_15_3 },
							}),
							i(18480),	-- Scarab Plate Helm
							i(18477),	-- Shaggy Leggings
							i(18481),	-- Skullcracking Mace
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228469, {	-- Tarnished Elven Ring
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18500, {	-- Tarnished Elven Ring
								timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228486, {	-- Treant's Bane
								description = "There's no evidence that this version has dropped yet. @Crieve if you get one to drop.",
								timeline = { CREATED_1_15_3 },
							}) } },
							i(18538, {	-- Treant's Bane
								-- CRIEVE NOTE: There's no evidence that the reitemized version has dropped yet.
								-- timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228473, {	-- Unyielding Maul
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18531, {	-- Unyielding Maul
								timeline = { REMOVED_1_15_3 },
							}),
						},
					}),
				},
			}),
			DIREMAUL_SUBMAP(236, CAPITAL_GARDENS, {		-- Capital Gardens (West)
				coord = { 60.32, 30.17, FERALAS },	-- Dire Maul [West]
				maps = CAPITAL_GARDENS_MAPS,
				-- #if BEFORE 4.0.3
				cost = { { "i", 18249, 1 } },	-- Crescent Key
				-- #endif
				groups = {
					n(VENDORS, {
						n(14371, {	-- Shen'dralar Provisioner
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228303, {	-- Pattern: Incandescent Mooncloth Robe (RECIPE!)
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18487, {	-- Pattern: Mooncloth Robe (RECIPE!)
								timeline = { REMOVED_1_15_3 },
							}),
						}),
					}),
					n(ZONE_DROPS, {
						i(18339, {	-- Eidolon Cloak
							crs = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						i(18340, {	-- Eidolon Talisman
							crs = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
							crs = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11469,	-- Eldreth Seether
								11470,	-- Eldreth Sorcerer
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}) } },
						i(18337, {	-- Orphic Bracers
							crs = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
						i(18343, {	-- Petrified Band
							crs = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18344, {	-- Stonebark Gauntlets
							crs = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18338, {	-- Wand of Arcane Potency
							crs = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
					}),
					e(408, {	-- Magister Kalendris
						creatureID = 11487,
						groups = {
							{ progressionKey = "dire-maul.later-recipes", groups = { i(22309) } },	-- Pattern: Big Bag of Enchantment (RECIPE!)
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228067, {	-- Elder Magus Pendant
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18397, {	-- Elder Magus Pendant
								timeline = { REMOVED_1_15_3 },
							}),
							i(18374),	-- Flamescarred Shoulders
							i(18350),	-- Amplifying Cloak
							i(18351),	-- Magically Sealed Bracers
							i(18371),	-- Mindtap Talisman
						},
					}),
					n(11467, {	-- Tsu'zee
						description = "This is a Rare Creature and, as such, is not always present.",
						groups = {
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228061, {	-- Brightspark Gloves
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18387, {	-- Brightspark Gloves
								timeline = { REMOVED_1_15_3 },
							}),
							i(18346),	-- Threadbare Trousers
							i(18345),	-- Murmuring Ring
						},
					}),
					e(407, {	-- Illyanna Ravenoak
						creatureID = 11488,
						groups = {
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
						creatureID = 11489,
						groups = {
							i(18353),	-- Stoneflower Staff
							i(18352),	-- Petrified Bark Shield
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228063, {	-- Warpwood Bindings
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18393, {	-- Warpwood Bindings
								timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228468, {	-- Tanglemoss Leggings
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18390, {	-- Tanglemoss Leggings
								timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
								timeline = { ADDED_1_15_6 },
							}) } },
						},
					}),
					e(409, {	-- Immol'thar
						creatureID = 11496,
						groups = {
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
							{ progressionKey = "dire-maul.tbc-pet-training", groups = { i(24345, {	-- Book of Cower IV
								timeline = { REMOVED_4_0_1 },
								classes = { DRUID },
								spellID = 31709,	-- Cower IV
								rank = 4,
							}) } },
						},
					}),
					n_conditional(14506, {	-- Lord Hel'nurath
						description =
							-- #if AFTER CATA
							"|cff3399ffSTEP 1:|r Warlock with (Dreadsteed of Xoroth) FOS\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs,  Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 8.2,35.8)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once creatures stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
							-- #else
							"|cff3399ffSTEP 1:|r Find a Warlock that is on or has completed Dreadsteed of Xoroth.\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs, Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 12.4, 31.6)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once creatures stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
							-- #endif
						sourceQuest = 7631,	-- Dreadsteed of Xoroth
						cost = {
							{ "i", 18670, 1 },	-- Xorothian Glyphs
							{ "i", 18629, 1 },	-- Black Lodestone
							{ "i", 18663, 1 },	-- J'eevee's Jar
						},
						timeline = { REMOVED_4_0_3 },
						groups = {
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228475, {	-- Diabolic Mantle
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18757, {	-- Diabolic Mantle
								timeline = { REMOVED_1_15_3 },
							}),
							i(18755),	-- Xorothian Firestick
							i(18756),	-- Dreadguard Protector
							i(18754),	-- Fel Hardened Bracers
						},
					}),
					n(16032, {	-- Falrin Treeshaper <House of Shen'dralar>
						description = "Found in the Dire Maul Library.",
						groups = {
							n(SPECIAL, {
								description = "Available if a specific Quest (9015) has been completed.",
								sourceQuest = 9015,	-- The Challenge
								timeline = { ADDED_1_11_1, REMOVED_4_0_3 },
								u_sqs = true,	-- remove the u flag if sourcequests are completed
								groups = {
									i(21986),	-- Banner of Provocation
								},
							}),
						},
					}),
					e(410, {	-- Prince Tortheldrin
						creatureID = 11486,
						groups = {
							i(18336, {	-- Gauntlet of Gordok Might
								description = "In the corner of the room that the Prince is in, next to the bookshelves, there is a small chest on the ground that contains the gauntlet. You must kill the Prince in order for the chest to be interactable.",
								provider = { "o", 179545 },	-- The Prince's Chest
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228472, {	-- Distracting Dagger
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18392, {	-- Distracting Dagger
								timeline = { REMOVED_1_15_3 },
							}),
							i(18396),	-- Mind Carver
							i(18376),	-- Timeworn Mace
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228471, {	-- Stoneshatter
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18388, {	-- Stoneshatter
								timeline = { REMOVED_1_15_3 },
							}),
							i(18382),	-- Fluctuating Cloak
							i(18373),	-- Chestplate of Tranquility
							i(18375),	-- Bracers of the Eclipse
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228069, {	-- Eldritch Reinforced Legplates
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18380, {	-- Eldritch Reinforced Legplates
								timeline = { REMOVED_1_15_3 },
							}),
							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228470, {	-- Silvermoon Leggings
								timeline = { ADDED_1_15_3 },
							}) } },
							i(18378, {	-- Silvermoon Leggings
								timeline = { REMOVED_1_15_3 },
							}),
							i(18395),	-- Emerald Flame Ring
						},
					}),
				},
			}),
		},
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(230, {
		q(35890),	-- Dire Maul (Warpwood Quarter) Reward Quest - Normal completion
		q(35891),	-- Dire Maul (Capital Gardens) Reward Quest - Normal completion
		q(35892),	-- Dire Maul (Gordok Commons) Reward Quest - Normal completion
		q(35894),	-- Dire Maul (Bonus) Reward Quest
		q(35956),	-- Dire Maul (Everything) Reward Quest
	}),
}));
```

</details>

<details>
<summary>Show every changed Lua line: P3 → sod.lua</summary>

```diff
--- .contrib/phase-examples/evolution/dire-maul/p3/Dire Maul.lua
+++ .contrib/phase-examples/evolution/dire-maul/p4/sod.lua
@@ -1,4 +1,4 @@
--- Generated comparison snapshot (P2.1 / P2.2 / P3): complete annotated source.
+-- Generated comparison snapshot (P4): complete sod source.
 -- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
@@ -144,7 +144,7 @@
 end]];
 -- #endif
 
-root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, applyclassicphase(PHASE_ONE_DIREMAUL, {
+root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
 	inst(230, { progressionKey = "dire-maul.common",	-- Dire Maul
 		-- #if BEFORE MOP
 		lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
@@ -327,7 +327,6 @@
 						i(18536),	-- Milli's Lexicon
 					},
 				}),
-				-- #if SEASON_OF_DISCOVERY
 				q(84550, {	-- Codex of Defense
 					providers = {
 						{ "i", 228692 },	-- Codex of Defense
@@ -341,18 +340,13 @@
 						i(228465),	-- Royal Seal of Eldre'Thalas
 					},
 				}),
-				-- #endif
 				q(7499, {	-- Codex of Defense
 					providers = {
 						{ "i", 18357 },	-- Codex of Defense
 						{ "n", 14383 },	-- Lorekeeper Kildrath
 					},
 					timeline = {
-						-- #if SEASON_OF_DISCOVERY
 						REMOVED_1_15_3,
-						-- #else
-						REMOVED_4_0_3,
-						-- #endif
 					},
 					maps = CAPITAL_GARDENS_MAPS,
 					classes = { WARRIOR },
@@ -404,7 +398,7 @@
 						}),
 					},
 				},
-				{ progressionKey = "dire-maul.recipe-quests", groups = { applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
+				{ progressionKey = "dire-maul.recipe-quests", groups = { q(7649, {	-- Enchanted Thorium Platemail: Volume I
 					providers = {
 						-- #IF BEFORE 4.0.3
 						{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
@@ -434,8 +428,8 @@
 					groups = {
 						i(12727),	-- Plans: Enchanted Thorium Breastplate (RECIPE!)
 					},
-				})),
-				applyclassicphase(PHASE_THREE_RECIPES, q(7650, {	-- Enchanted Thorium Platemail: Volume II
+				}),
+				q(7650, {	-- Enchanted Thorium Platemail: Volume II
 					providers = {
 						-- #IF BEFORE 4.0.3
 						{ "i", 18770 },	-- Enchanted Thorium Platemail (Volume II)
@@ -461,8 +455,8 @@
 					groups = {
 						i(12726),	-- Plans: Enchanted Thorium Leggings (RECIPE!)
 					},
-				})),
-				applyclassicphase(PHASE_THREE_RECIPES, q(7651, {	-- Enchanted Thorium Platemail: Volume III
+				}),
+				q(7651, {	-- Enchanted Thorium Platemail: Volume III
 					providers = {
 						-- #if BEFORE 4.0.3
 						{ "i", 18771 },	-- Enchanted Thorium Platemail (Volume III)
@@ -493,7 +487,7 @@
 					groups = {
 						i(12725),	-- Plans: Enchanted Thorium Helm (RECIPE!)
 					},
-				})) } },
+				}) } },
 				q(7494, {	-- Feathermoon Stronghold
 					qgs = {
 						2198,	-- Crier Goodman
@@ -550,7 +544,6 @@
 						i(18471),	-- Royal Seal of Eldre'Thalas
 					},
 				}),
-				-- #if SEASON_OF_DISCOVERY
 				q(84548, {	-- Garona: A Study on Stealth and Treachery
 					providers = {
 						{ "i", 228691 },	-- Garona: A Study on Stealth and Treachery
@@ -564,18 +557,13 @@
 						i(228464),	-- Royal Seal of Eldre'Thalas
 					},
 				}),
-				-- #endif
 				q(7498, {	-- Garona: A Study on Stealth and Treachery
 					providers = {
 						{ "i", 18356 },	-- Garona: A Study on Stealth and Treachery
 						{ "n", 14383 },	-- Lorekeeper Kildrath
 					},
 					timeline = {
-						-- #if SEASON_OF_DISCOVERY
 						REMOVED_1_15_3,
-						-- #else
-						REMOVED_4_0_3,
-						-- #endif
 					},
 					maps = CAPITAL_GARDENS_MAPS,
 					classes = { ROGUE },
@@ -803,7 +791,6 @@
 						}),
 					},
 				}),
-				-- #if SEASON_OF_DISCOVERY
 				q(84549, {	-- The Arcanist's Cookbook
 					providers = {
 						{ "i", 228693 },	-- The Arcanist's Cookbook
@@ -819,18 +806,13 @@
 						}),
 					},
 				}),
-				-- #endif
 				q(7500, {	-- The Arcanist's Cookbook
 					providers = {
 						{ "i", 18358 },	-- The Arcanist's Cookbook
 						{ "n", 14383 },	-- Lorekeeper Kildrath
 					},
 					timeline = {
-						-- #if SEASON_OF_DISCOVERY
 						REMOVED_1_15_3,
-						-- #else
-						REMOVED_4_0_3,
-						-- #endif
 					},
 					maps = CAPITAL_GARDENS_MAPS,
 					classes = { MAGE },
@@ -989,7 +971,6 @@
 					races = HORDE_ONLY,
 					isBreadcrumb = true,
 				}),
-				-- #if SEASON_OF_DISCOVERY
 				q(84551, {	-- The Light and How To Swing It
 					providers = {
 						{ "i", 228690 },	-- The Light and How to Swing It
@@ -1005,18 +986,13 @@
 						}),
 					},
 				}),
-				-- #endif
 				q(7501, {	-- The Light and How To Swing It
 					providers = {
 						{ "i", 18359 },	-- The Light and How to Swing It
 						{ "n", 14382 },	-- Lorekeeper Mykos
 					},
 					timeline = {
-						-- #if SEASON_OF_DISCOVERY
 						REMOVED_1_15_3,
-						-- #else
-						REMOVED_4_0_3,
-						-- #endif
 					},
 					maps = CAPITAL_GARDENS_MAPS,
 					classes = { PALADIN },
@@ -1150,7 +1126,7 @@
 						description = "This still drops despite being completely worthless.",
 						-- #endif
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
+					{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
 						timeline = { REMOVED_4_0_3 },
 						-- #if BEFORE 4.0.3
 						crs = {
@@ -1165,7 +1141,7 @@
 							11448,	-- Gordok Warlock
 						},
 						-- #endif
-					}) } }),
+					}) } },
 				},
 			}),
 			n(COMMON_BOSS_DROPS, {
@@ -1175,18 +1151,12 @@
 				-- #endif
 				maps = ALL_DIREMAUL_MAPS,
 				groups = {
-					-- #if SEASON_OF_DISCOVERY
 					i(228692, {	-- Codex of Defense
 						timeline = { ADDED_1_15_3 },
 					}),
-					-- #endif
 					i(18357, {	-- Codex of Defense
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
 							REMOVED_1_15_3,
-							-- #else
-							REMOVED_4_0_3,
-							-- #endif
 						},
 					}),
 					i(18360, {	-- Harnessing Shadows
@@ -1195,49 +1165,31 @@
 					i(18363, {	-- Frost Shock and You
 						timeline = { REMOVED_4_0_3 },
 					}),
-					-- #if SEASON_OF_DISCOVERY
 					i(228691, {	-- Garona: A Study on Stealth and Treachery
 						timeline = { ADDED_1_15_3 },
 					}),
-					-- #endif
 					i(18356, {	-- Garona: A Study on Stealth and Treachery
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
 							REMOVED_1_15_3,
-							-- #else
-							REMOVED_4_0_3,
-							-- #endif
 						},
 					}),
 					i(18362, {	-- Holy Bologna: What the Light Won't Tell You
 						timeline = { REMOVED_4_0_3 },
 					}),
-					-- #if SEASON_OF_DISCOVERY
 					i(228680, {	-- Nostro's Compendium of Dragon Slaying
 						timeline = { ADDED_1_15_3 },
 					}),
-					-- #endif
 					i(18401, {	-- Nostro's Compendium of Dragon Slaying
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
 							REMOVED_1_15_3,
-							-- #else
-							REMOVED_4_0_3,
-							-- #endif
-						},
-					}),
-					-- #if SEASON_OF_DISCOVERY
+						},
+					}),
 					i(228693, {	-- The Arcanist's Cookbook
 						timeline = { ADDED_1_15_3 },
 					}),
-					-- #endif
 					i(18358, {	-- The Arcanist's Cookbook
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
 							REMOVED_1_15_3,
-							-- #else
-							REMOVED_4_0_3,
-							-- #endif
 						},
 					}),
 					i(18364, {	-- The Emerald Dream
@@ -1246,18 +1198,12 @@
 					i(18361, {	-- The Greatest Race of Hunters
 						timeline = { REMOVED_4_0_3 },
 					}),
-					-- #if SEASON_OF_DISCOVERY
 					i(228690, {	-- The Light and How to Swing It
 						timeline = { ADDED_1_15_3 },
 					}),
-					-- #endif
 					i(18359, {	-- The Light and How to Swing It
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
 							REMOVED_1_15_3,
-							-- #else
-							REMOVED_4_0_3,
-							-- #endif
 						},
 					}),
 				},
@@ -1361,15 +1307,11 @@
 						creatureID = 14327,
 						groups = {
 							i(18426),	-- Lethtendris's Web
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228051, {	-- Quel'dorei Channeling Rod
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228051, {	-- Quel'dorei Channeling Rod
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18311, {	-- Quel'dorei Channeling Rod
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18301),	-- Lethtendris' Wand
 							i(18325),	-- Felhide Cap
@@ -1380,55 +1322,39 @@
 						creatureID = 13280,
 						groups = {
 							i(18299),	-- Hydrospawn Essence
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228052, {	-- Waveslicer
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228052, {	-- Waveslicer
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18324, {	-- Waveslicer
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228054, {	-- Tempest Talisman
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+								timeline = { REMOVED_1_15_3 },
+							}),
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228054, {	-- Tempest Talisman
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18317, {	-- Tempest Talisman
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18305),	-- Breakwater Legguards
 							i(18307),	-- Riptide Shoes
 							i(18322),	-- Waterspout Boots
-							applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } }),	-- Ace of Elementals
+							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
 						},
 					}),
 					e(402, {	-- Zevrim Thornhoof
 						creatureID = 11490,
 						groups = {
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228050, {	-- Satyr's Bow
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228050, {	-- Satyr's Bow
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18323, {	-- Satyr's Bow
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18308),	-- Clever Hat
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228053, {	-- Fervent Helm
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228053, {	-- Fervent Helm
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18319, {	-- Fervent Helm
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18313),	-- Helm of Awareness
 							i(18306),	-- Gloves of Shadowy Mist
@@ -1441,7 +1367,7 @@
 					n(11491, {	-- Old Ironbark
 						description = "Talk to him for him to break down the door.",
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
+					{ progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
 						description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
 						-- #if BEFORE 6.0.2
 						cost = {
@@ -1465,15 +1391,11 @@
 							}),
 							i(22315),	-- Hammer of Revitalization
 							i(22314),	-- Huntsman's Harpoon
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228066, {	-- Ironweave Gloves
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228066, {	-- Ironweave Gloves
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(22304, {	-- Ironweave Gloves
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(22472),	-- Boots of Ferocity
 							i(22401, {	-- Libram of Hope
@@ -1483,7 +1405,7 @@
 								timeline = { DELETED_5_0_4 },
 							}),
 						},
-					}) } }),
+					}) } },
 					e(405, {	-- Alzzin the Wildshaper
 						creatureID = 11492,
 						groups = {
@@ -1492,52 +1414,36 @@
 								provider = { "o", 179559 },	-- Felvine Shard
 							}),
 							i(18321),	-- Energetic Rod
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228056, {	-- Fiendish Machete
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228056, {	-- Fiendish Machete
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18310, {	-- Fiendish Machete
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18328),	-- Shadewood Cloak
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228055, {	-- Energized Chestplate
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228055, {	-- Energized Chestplate
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18312, {	-- Energized Chestplate
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18309),	-- Gloves of Restoration
 							i(18326),	-- Razor Gauntlets
 							i(18327),	-- Whipvine Cord
 							i(18318),	-- Merciful Greaves
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228699, {	-- Ring of Demonic Guile
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228699, {	-- Ring of Demonic Guile
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18314, {	-- Ring of Demonic Guile
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							-- #if BEFORE 6.0.2
 							-- This ring may have moved to Zevrim, will need to verify.
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228057, {	-- Ring of Demonic Potency
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228057, {	-- Ring of Demonic Potency
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18315, {	-- Ring of Demonic Potency
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							-- #endif
 						},
@@ -1606,35 +1512,23 @@
 							i(18463),	-- Ogre Pocket Knife
 							i(18460),	-- Unsophisticated Hand Cannon
 							-- #if AFTER 7.3.5
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18496, {	-- Heliotrope Cloak
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+								timeline = { REMOVED_1_15_3 },
+							}),
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18493, {	-- Bulky Iron Spaulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+								timeline = { REMOVED_1_15_3 },
+							}),
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18494, {	-- Denwatcher's Shoulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							-- #endif
 							i(18450),	-- Robe of Combustion
@@ -1657,35 +1551,23 @@
 						groups = {
 							-- #if BEFORE 7.3.5
 							i(18498),	-- Hedgecutter
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18496, {	-- Heliotrope Cloak
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+								timeline = { REMOVED_1_15_3 },
+							}),
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18493, {	-- Bulky Iron Spaulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+								timeline = { REMOVED_1_15_3 },
+							}),
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18494, {	-- Denwatcher's Shoulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18497),	-- Sublime Wristguards
 							-- #endif
@@ -1733,35 +1615,23 @@
 						-- #if BEFORE 7.3.5
 						groups = {
 							i(18498),	-- Hedgecutter
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18496, {	-- Heliotrope Cloak
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+								timeline = { REMOVED_1_15_3 },
+							}),
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18493, {	-- Bulky Iron Spaulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+								timeline = { REMOVED_1_15_3 },
+							}),
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18494, {	-- Denwatcher's Shoulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18497),	-- Sublime Wristguards
 						},
@@ -1787,62 +1657,42 @@
 						-- #endif
 						groups = {
 							i(18240),	-- Ogre Tannin
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228477, {	-- Pattern: Embroidered Belt of the Archmage (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228477, {	-- Pattern: Embroidered Belt of the Archmage (RECIPE!)
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18414, {	-- Pattern: Belt of the Archmage (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(227910, {	-- Pattern: Brilliant Chromatic Cloak (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+								timeline = { REMOVED_1_15_3 },
+							}),
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(227910, {	-- Pattern: Brilliant Chromatic Cloak (RECIPE!)
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18517, {	-- Pattern: Chromatic Cloak (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
 							i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228319, {	-- Pattern: Girdle of Arcane Insight (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228319, {	-- Pattern: Girdle of Arcane Insight (RECIPE!)
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18514, {	-- Pattern: Girdle of Insight (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18518),	-- Pattern: Hide of the Wild (RECIPE!)
 							i(18416),	-- Pattern: Inferno Gloves (RECIPE!)
 							i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
 							i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228276, {	-- Pattern: Mastercrafted Shifting Cloak (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228276, {	-- Pattern: Mastercrafted Shifting Cloak (RECIPE!)
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18519, {	-- Pattern: Shifting Cloak (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18516, {	-- Pattern: Swift Flight Bracers (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228301, {	-- Pattern: Swift Flight Vambraces (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+								timeline = { REMOVED_1_15_3 },
+							}),
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228301, {	-- Pattern: Swift Flight Vambraces (RECIPE!)
+								timeline = { ADDED_1_15_3 },
+							}) } },
 						},
 					}),
 					o(179499, {	-- Ogre Tannin Basket
@@ -1871,15 +1721,11 @@
 							-- #if AFTER 7.3.5
 							i(18458),	-- Modest Armguards (7.3.5 - Moved from Guards)
 							-- #endif
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228068, {	-- Mugger's Belt
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228068, {	-- Mugger's Belt
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18505, {	-- Mugger's Belt
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18507),	-- Boots of the Full Moon
 						},
@@ -1889,29 +1735,21 @@
 						groups = {
 							i(18484),	-- Cho'Rush's Blade
 							i(18483),	-- Mana Channeling Wand
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228064, {	-- Observer's Shield
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228064, {	-- Observer's Shield
 								description = "This doesn't appear to have been added yet.",
 								timeline = { CREATED_1_15_3 },
-							}) } }),
-							-- #endif
+							}) } },
 							i(18485, {	-- Observer's Shield
-								-- #if SEASON_OF_DISCOVERY
 								-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
 								-- timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228062, {	-- Insightful Hood
+							}),
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228062, {	-- Insightful Hood
 								description = "This doesn't appear to have been added yet.",
 								timeline = { CREATED_1_15_3 },
-							}) } }),
-							-- #endif
+							}) } },
 							i(18490, {	-- Insightful Hood
-								-- #if SEASON_OF_DISCOVERY
 								-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
 								-- timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							-- #if AFTER 7.3.5
 							i(18459),	-- Gallant's Wristguards (7.3.5 - Moved from Guards)
@@ -1922,44 +1760,32 @@
 					e(417, {	-- King Gordok
 						creatureID = 11501,
 						groups = {
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228478, {	-- Barbarous Blade
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228478, {	-- Barbarous Blade
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18520, {	-- Barbarous Blade
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18523),	-- Brightly Glowing Stone
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228480, {	-- Crown of the Ogre King
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228480, {	-- Crown of the Ogre King
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18526, {	-- Crown of the Ogre King
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18525),	-- Bracers of Prosperity
 							-- #if BEFORE 7.3.5
 							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
 							-- #endif
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228479, {	-- Leggings of Destruction
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228479, {	-- Leggings of Destruction
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18524, {	-- Leggings of Destruction
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18521),	-- Grimy Metal Boots
 							i(18522),	-- Band of the Ogre King
-							applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } }),	-- Ace of Warlords
+							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } },	-- Ace of Warlords
 							i(18780, {	-- Top Half of Advanced Armorsmithing: Volume I
 								timeline = { DELETED_4_0_3 },
 							}),
@@ -1974,87 +1800,59 @@
 							i(18499),	-- Barrier Shield
 							i(18479),	-- Carrion Scorpid Helm
 							i(18537),	-- Counterattack Lodestone
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228065, {	-- Cyclone Spaulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228065, {	-- Cyclone Spaulders
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18528, {	-- Cyclone Spaulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18529),	-- Elemental Plate Girdle
 							i(18533),	-- Gordok Bracers of Power
 							i(18478),	-- Hyena Hide Jerkin
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228474, {	-- Mindsurge Robe
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228474, {	-- Mindsurge Robe
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18532, {	-- Mindsurge Robe
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18476),	-- Mud Stained Boots
 							i(18475),	-- Oddly Magical Belt
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228070, {	-- Ogre Forged Hauberk
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228070, {	-- Ogre Forged Hauberk
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18530, {	-- Ogre Forged Hauberk
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18482),	-- Ogre Toothpick Shooter
 							i(18495),	-- Redoubt Cloak
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228484, {	-- Rod of the Ogre Magi
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228484, {	-- Rod of the Ogre Magi
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18534, {	-- Rod of the Ogre Magi
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18480),	-- Scarab Plate Helm
 							i(18477),	-- Shaggy Leggings
 							i(18481),	-- Skullcracking Mace
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228469, {	-- Tarnished Elven Ring
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228469, {	-- Tarnished Elven Ring
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18500, {	-- Tarnished Elven Ring
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228486, {	-- Treant's Bane
+								timeline = { REMOVED_1_15_3 },
+							}),
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228486, {	-- Treant's Bane
 								description = "There's no evidence that this version has dropped yet. @Crieve if you get one to drop.",
 								timeline = { CREATED_1_15_3 },
-							}) } }),
-							-- #endif
+							}) } },
 							i(18538, {	-- Treant's Bane
-								-- #if SEASON_OF_DISCOVERY
 								-- CRIEVE NOTE: There's no evidence that the reitemized version has dropped yet.
 								-- timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228473, {	-- Unyielding Maul
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228473, {	-- Unyielding Maul
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18531, {	-- Unyielding Maul
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 						},
 					}),
@@ -2069,15 +1867,11 @@
 				groups = {
 					n(VENDORS, {
 						n(14371, {	-- Shen'dralar Provisioner
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228303, {	-- Pattern: Incandescent Mooncloth Robe (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228303, {	-- Pattern: Incandescent Mooncloth Robe (RECIPE!)
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18487, {	-- Pattern: Mooncloth Robe (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 						}),
 					}),
@@ -2098,7 +1892,7 @@
 								11472,	-- Eldreth Spirit
 							},
 						}),
-						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
+						{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
 							crs = {
 								11471,	-- Eldreth Apparition
 								11475,	-- Eldreth Phantasm
@@ -2107,7 +1901,7 @@
 								11473,	-- Eldreth Spectre
 								11472,	-- Eldreth Spirit
 							},
-						}) } }),
+						}) } },
 						i(18337, {	-- Orphic Bracers
 							crs = {
 								11480,	-- Arcane Aberration
@@ -2142,16 +1936,12 @@
 					e(408, {	-- Magister Kalendris
 						creatureID = 11487,
 						groups = {
-							applyclassicphase(PHASE_FIVE_RECIPES, { progressionKey = "dire-maul.later-recipes", groups = { i(22309) } }),	-- Pattern: Big Bag of Enchantment (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228067, {	-- Elder Magus Pendant
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.later-recipes", groups = { i(22309) } },	-- Pattern: Big Bag of Enchantment (RECIPE!)
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228067, {	-- Elder Magus Pendant
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18397, {	-- Elder Magus Pendant
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18374),	-- Flamescarred Shoulders
 							i(18350),	-- Amplifying Cloak
@@ -2162,15 +1952,11 @@
 					n(11467, {	-- Tsu'zee
 						description = "This is a Rare Creature and, as such, is not always present.",
 						groups = {
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228061, {	-- Brightspark Gloves
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228061, {	-- Brightspark Gloves
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18387, {	-- Brightspark Gloves
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18346),	-- Threadbare Trousers
 							i(18345),	-- Murmuring Ring
@@ -2193,31 +1979,21 @@
 						groups = {
 							i(18353),	-- Stoneflower Staff
 							i(18352),	-- Petrified Bark Shield
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228063, {	-- Warpwood Bindings
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228063, {	-- Warpwood Bindings
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18393, {	-- Warpwood Bindings
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228468, {	-- Tanglemoss Leggings
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+								timeline = { REMOVED_1_15_3 },
+							}),
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228468, {	-- Tanglemoss Leggings
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18390, {	-- Tanglemoss Leggings
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_SEVEN, { progressionKey = "dire-maul.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
+								timeline = { REMOVED_1_15_3 },
+							}),
+							{ progressionKey = "dire-maul.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
 								timeline = { ADDED_1_15_6 },
-							}) } }),
-							-- #endif
+							}) } },
 						},
 					}),
 					e(409, {	-- Immol'thar
@@ -2235,12 +2011,12 @@
 							i(18391),	-- Eyestalk Cord
 							i(18379),	-- Odious Greaves
 							i(18370),	-- Vigilance Charm
-							applyclassicphase(TBC_PHASE_ONE, { progressionKey = "dire-maul.tbc-pet-training", groups = { i(24345, {	-- Book of Cower IV
+							{ progressionKey = "dire-maul.tbc-pet-training", groups = { i(24345, {	-- Book of Cower IV
 								timeline = { REMOVED_4_0_1 },
 								classes = { DRUID },
 								spellID = 31709,	-- Cower IV
 								rank = 4,
-							}) } }),
+							}) } },
 						},
 					}),
 					n_conditional(14506, {	-- Lord Hel'nurath
@@ -2258,15 +2034,11 @@
 						},
 						timeline = { REMOVED_4_0_3 },
 						groups = {
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228475, {	-- Diabolic Mantle
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228475, {	-- Diabolic Mantle
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18757, {	-- Diabolic Mantle
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18755),	-- Xorothian Firestick
 							i(18756),	-- Dreadguard Protector
@@ -2294,50 +2066,34 @@
 								description = "In the corner of the room that the Prince is in, next to the bookshelves, there is a small chest on the ground that contains the gauntlet. You must kill the Prince in order for the chest to be interactable.",
 								provider = { "o", 179545 },	-- The Prince's Chest
 							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228472, {	-- Distracting Dagger
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228472, {	-- Distracting Dagger
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18392, {	-- Distracting Dagger
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18396),	-- Mind Carver
 							i(18376),	-- Timeworn Mace
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228471, {	-- Stoneshatter
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228471, {	-- Stoneshatter
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18388, {	-- Stoneshatter
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18382),	-- Fluctuating Cloak
 							i(18373),	-- Chestplate of Tranquility
 							i(18375),	-- Bracers of the Eclipse
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228069, {	-- Eldritch Reinforced Legplates
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228069, {	-- Eldritch Reinforced Legplates
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18380, {	-- Eldritch Reinforced Legplates
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228470, {	-- Silvermoon Leggings
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+								timeline = { REMOVED_1_15_3 },
+							}),
+							{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228470, {	-- Silvermoon Leggings
+								timeline = { ADDED_1_15_3 },
+							}) } },
 							i(18378, {	-- Silvermoon Leggings
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
+								timeline = { REMOVED_1_15_3 },
 							}),
 							i(18395),	-- Emerald Flame Ring
 						},
@@ -2346,7 +2102,7 @@
 			}),
 		},
 	}),
-})));
+}));
 root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
 	inst(230, {
 		q(35890),	-- Dire Maul (Warpwood Quarter) Reward Quest - Normal completion
```

</details>

### Classic / Anniversary / Era

**Before:** [complete P3 Lua](p3/Dire%20Maul.lua). **After:** [p4/classic.lua](p4/classic.lua).

<details>
<summary>Read the complete final classic.lua</summary>

```lua
-- Generated comparison snapshot (P4): complete classic source.
-- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local WARPWOOD_QUARTER = createHeader({
	readable = "Warpwood Quarter",
	icon = 236292,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL5.." (" .. L.EAST ..")"]]
	},
	description = {
		en = "This part of the instance can be accessed from the eastern-most portal. (right side)",
		-- TODO: de = "",
		es = "Se puede acceder a esta parte de la mazmorra desde el portal más al este. (lado derecho)",
		mx = "Se puede acceder a esta parte del calabozo desde el portal más al este. (lado derecho)",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "该副本的此部分可从最东侧的入口进入。（右侧）",
		tw = "副本的這部分可以從最東邊的傳送門進入。（右側）",
	},
});
local GORDOK_COMMONS = createHeader({
	readable = "Gordok Commons",
	icon = 236695,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL1.." (" .. L.NORTH ..")"]]
	},
	description = {
		en = "This part of the instance can be accessed from the northern-most portal.",
		-- TODO: de = "",
		es = "Se puede acceder a esta parte de la mazmorra desde el portal más al norte.",
		mx = "Se puede acceder a esta parte del calabozo desde el portal más al norte.",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "该副本的此部分可从最北侧的入口进入。",
		tw = "副本的這部分可以從最北邊的傳送門進入。",
	},
});
local CAPITAL_GARDENS = createHeader({
	readable = "Capital Gardens",
	icon = 134162,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL2.." (" .. L.WEST ..")"]]
	},
	description = {
		en = "This part of the instance can be accessed from the western-most portal. (left side)",
		-- TODO: de = "",
		es = "Se puede acceder a esta parte de la mazmorra desde el portal más al oeste. (lado izquierdo)",
		mx = "Se puede acceder a esta parte del calabozo desde el portal más al oeste. (lado izquierdo)",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "该副本的此部分可从最西侧的入口进入。（左侧）",
		tw = "副本的這部分可以從最西邊的傳送門進入。（左側）",
	},
});

local DIREMAUL_SUBMAP = function(mapID, headerID, t)
	t.headerID = headerID;
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

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(230, { progressionKey = "dire-maul.common",	-- Dire Maul
		-- #if BEFORE MOP
		lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
		-- #endif
		-- #if BEFORE MOP
		zoneTextAreaIDs = {
			2557,	-- Dire Maul
			2577,	-- Eldreth Row
			3217,	-- "The Maul" now points to Dire Maul.
			-- #if AFTER CATA
			-- This areaID doesn't exist until Cataclysm!
			4992,	-- "Broken Commons" now points to Dire Maul.
			-- #endif
		},
		-- #endif
		timeline = { ADDED_1_2_0 },
		maps = {
			DIRE_MAUL,
			DIRE_MAUL_SHRINE_OF_ELDRETHARR,
		},
		lvl = lvlsquish(44, 44, 15),
		groups = {
			n(ACHIEVEMENTS, {
				achWithRep(5788, FACTION_SHENDRALAR, {	-- Agent of the Shen'dralar [Shen'dralar Exalted]
					-- #if BEFORE WRATH
					icon = 133736,	-- CRIEVE NOTE: The other icon doesn't exist in the game files yet
					-- #endif
					maps = CAPITAL_GARDENS_MAPS,
					timeline = { REMOVED_4_0_3 },
				}),
				ach(644, {	-- King of Dire Maul
					maps = merge(WARPWOOD_QUARTER_MAPS, GORDOK_COMMONS_MAPS, CAPITAL_GARDENS_MAPS),
				}),
				ach(5053, {	-- King of Dire Maul Guild Run
					timeline = { ADDED_4_0_3 },
				}),
			}),
			n(FACTIONS, {
				faction(FACTION_SHENDRALAR, {	-- Shen'dralar
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					-- #if BEFORE 4.0.3
					OnTooltip = OnTooltipForShendralar,
					-- #endif
				}),
				faction(FACTION_STEAMWHEEDLE_CARTEL, {	-- Steamwheedle Cartel
					icon = 133784,
					-- #if BEFORE 4.0.3
					OnTooltip = OnTooltipForSteamweedle,
					-- #endif
					maps = merge(GORDOK_COMMONS_MAPS, {
						FERALAS,
						STRANGLETHORN_VALE,
						TANARIS,
						THE_BARRENS,
						WINTERSPRING,
					}),
					-- #if AFTER 4.0.3
					description = "This is a hidden reputation. It might not count towards reputation achievements.",
					collectible = false,
					-- #endif
				}),
			}),
			n(QUESTS, {
				q(1193, {	-- A Broken Trap
					-- #if BEFORE 4.0.3
					description = "Use the items on the Broken Trap to trap Guard Slip'kik. It takes a few seconds to finish fixing the trap.\n\nYou must activate this trap in order to do the Tribute Run.",
					cost = {
						{ "i", 15994, 1 },	-- Thorium Widget
						{ "i", 3829, 1 },	-- Frost Oil
					},
					-- #endif
					provider = { "o", 179485 },	-- Broken Trap
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					repeatable = true,
					lvl = lvlsquish(56, 56, 15),
				}),
				q(27118, {	-- A Broken Trap
					description = "You must trap Guard Slip'kik in order to qualify for the full Tribute loot table.",
					provider = { "o", 179485 },	-- Broken Trap
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					repeatable = true,
					lvl = lvlsquish(42, 42, 15),
				}),
				q(7463, {	-- Arcane Refreshment
					qg = 14368,	-- Lorekeeper Lydros
					timeline = { REMOVED_4_0_3 },
					maps = merge(WARPWOOD_QUARTER_MAPS, CAPITAL_GARDENS_MAPS),
					classes = { MAGE },
					lvl = 60,
					-- #if BEFORE 4.0.3
					groups = {
						objective(1, {	-- 0/1 Hydrospawn Essence
							provider = { "i", 18299 },	-- Hydrospawn Essence
						}),
						recipe(10140),	-- Conjure Water (Rank 7)
					},
					-- #endif
				}),
				q(27104, {	-- Alzzin the Wildshaper
					qg = 44969,	-- Furgus Warpwood
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Zevrim Thornhoof slain
							provider = { "n", 11490 },	-- Zevrim Thornhoof
						}),
						objective(2, {	-- 0/1 Alzzin the Wildshaper slain
							provider = { "n", 11492 },	-- Alzzin the Wildshaper
						}),
						i(65948),	-- Warpwood Bark Vest
						i(65972),	-- Warpwood Bow
						i(65922),	-- Warpwood Leaf Mantle
						i(65993),	-- Warpwood Shield
					},
				}),
				q(27105, {	-- An Unwelcome Guest
					qg = 44969,	-- Furgus Warpwood
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Hydrospawn Essence
							provider = { "i", 18299 },	-- Hydrospawn Essence
						}),
					},
				}),
				q(7492, {	-- Camp Mojache
					qgs = {
						10879,	-- Harbinger Balthazad
						10880,	-- Warcaller Gorlach
						10881,	-- Bluff Runner Windstrider
					},
					coords = {
						{ 46.6, 64.6, ORGRIMMAR },
						{ 41.4, 54.2, THUNDER_BLUFF },
						{ 69.2, 49.2, UNDERCITY },
					},
					timeline = { REMOVED_4_0_3 },
					maps = { FERALAS },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = 54,
				}),
				q(5527, {	-- A Reliquary of Purity
					qg = 11801,	-- Rabine Saturna
					coord = { 51.7, 45.1, MOONGLADE },
					description = "The character must first visit Dire Maul, so that the Moonglade NPC will offer a conversation that unlocks the quest.",
					timeline = { REMOVED_4_0_3 },
					maps = { SILITHUS },
					lvl = 56,
					groups = {
						objective(1, {	-- 0/1 Reliquary of Purity
							providers = {
								{ "i", 22201 },	-- Reliquary of Purity
								{ "o", 179565 },	-- Dusty Reliquary
							},
							coord = { 63.2, 55.4, SILITHUS },
						}),
					},
				}),
				q(5526, {	-- Shards of the Felvine
					sourceQuest = 5527,	-- A Reliquary of Purity
					qg = 11801,	-- Rabine Saturna
					coord = { 51.7, 45.1, MOONGLADE },
					timeline = { REMOVED_4_0_3 },
					lvl = 56,
					groups = {
						objective(1, {	-- 0/1 Sealed Reliquary of Purity
							provider = { "i", 18540 },	-- Sealed Reliquary of Purity
							cost = {
								{ "i", 18539, 1 },	-- Reliquary of Purity
								{ "i", 18501, 1 },	-- Felvine Shard
							},
						}),
						i(18535),	-- Milli's Shield
						i(18536),	-- Milli's Lexicon
					},
				}),
				q(7499, {	-- Codex of Defense
					providers = {
						{ "i", 18357 },	-- Codex of Defense
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					timeline = {
						REMOVED_4_0_3,
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { WARRIOR },
					lvl = 54,
					groups = {
						i(18466, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7631, {	-- Dreadsteed of Xoroth
					sourceQuest = 7629,	-- Imp Delivery
					qg = 14436,	-- Mor'zul Bloodbringer
					qi = 18818,	-- Mor'zul's Instructions
					coord = { 12.6, 31.6, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { WARLOCK },
					lvl = 60,
					groups = {
						ach(2357, {	-- Dreadsteed of Xoroth
							sourceQuest = 7631,	-- Dreadsteed of Xoroth
							classes = { WARLOCK },
						}),
						mount(23161, {	-- Dreadsteed (MOUNT!)
							providers = {
								{ "n", 14502 },	-- Xorothian Dreadsteed
								{ "n", 14504 },	-- Dreadsteed Spirit
							},
							classes = { WARLOCK },
						}),
					},
				}),
				{	-- Elven Legends
					allianceQuestData = q(7482, {	-- Elven Legends (A)
						qg = 14374,	-- Scholar Runethorn
						coord = { 31.2, 43.9, FERALAS },
					}),
					hordeQuestData = q(7481, {	-- Elven Legends (H)
						qg = 14373,	-- Sage Korolusk
						coord = { 75.3, 43.8, FERALAS },
					}),
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = 54,
					groups = {
						objective(1, {	-- Master Telmius Dreamseeker Found
							provider = { "o", 179544 },	-- Skeletal Remains of Telmius Dreamseeker
						}),
					},
				},
				{ progressionKey = "dire-maul.recipe-quests", groups = { q(7649, {	-- Enchanted Thorium Platemail: Volume I
					providers = {
						-- #IF BEFORE 4.0.3
						{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
						-- #ENDIF
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					timeline = { REMOVED_4_0_3 },
					maps = {
						236,	-- Capital Gardens
						BLACKROCK_SPIRE,
						LBRS_SKITTERWEB_TUNNELS,
						LBRS_HORDEMAR_CITY,
						LBRS_HALL_OF_BLACKHAND,
						LBRS_HALYCONS_LAIR,
						LBRS_CHAMBER_OF_BATTLE,
					},
					cost = {
						{ "i", 18779, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume I
						{ "i", 18780, 1 },	-- Top Half of Advanced Armorsmithing: Volume I
					},
					requireSkill =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					groups = {
						i(12727),	-- Plans: Enchanted Thorium Breastplate (RECIPE!)
					},
				}),
				q(7650, {	-- Enchanted Thorium Platemail: Volume II
					providers = {
						-- #IF BEFORE 4.0.3
						{ "i", 18770 },	-- Enchanted Thorium Platemail (Volume II)
						-- #ENDIF
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					timeline = { REMOVED_4_0_3 },
					maps = {
						236,	-- Capital Gardens
						STRATHOLME, SCHOLOMANCE
					},
					cost = {
						{ "i", 18781, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume II
						{ "i", 18782, 1 },	-- Top Half of Advanced Armorsmithing: Volume II
					},
					requireSkill =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					lvl = 50,
					groups = {
						i(12726),	-- Plans: Enchanted Thorium Leggings (RECIPE!)
					},
				}),
				q(7651, {	-- Enchanted Thorium Platemail: Volume III
					providers = {
						-- #if BEFORE 4.0.3
						{ "i", 18771 },	-- Enchanted Thorium Platemail (Volume III)
						-- #endif
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					timeline = { REMOVED_4_0_3 },
					maps = merge(CAPITAL_GARDENS_MAPS, {
						BLACKROCK_SPIRE,
						LBRS_SKITTERWEB_TUNNELS,
						LBRS_HORDEMAR_CITY,
						LBRS_HALL_OF_BLACKHAND,
						LBRS_HALYCONS_LAIR,
						LBRS_CHAMBER_OF_BATTLE,
						STRATHOLME
					}),
					cost = {
						{ "i", 18783, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume III
						{ "i", 18784, 1 },	-- Top Half of Advanced Armorsmithing: Volume III
					},
					requireSkill =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					lvl = 50,
					groups = {
						i(12725),	-- Plans: Enchanted Thorium Helm (RECIPE!)
					},
				}) } },
				q(7494, {	-- Feathermoon Stronghold
					qgs = {
						2198,	-- Crier Goodman
						10877,	-- Courier Hammerfall
						10878,	-- Herald Moonstalker
					},
					coords = {
						{ 39.0, 63.6, DARNASSUS },
						{ 30.5, 67.0, IRONFORGE },
						{ 54.8, 62.6, STORMWIND_CITY },
					},
					timeline = { REMOVED_4_0_3 },
					maps = { FERALAS },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = 54,
				}),
				q(5525, {	-- Free Knot!
					-- #if BEFORE 4.0.3
					description = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
					cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
					-- #endif
					qg = 14338,	-- Knot Thimblejack
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = 54,
				}),
				q(7429, {	-- Free Knot! (repeatable)
					-- #if BEFORE 4.0.3
					description = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
					cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
					-- #endif
					sourceQuest = 5525,	-- Free Knot!
					qg = 14338,	-- Knot Thimblejack
					maxReputation = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					repeatable = true,
					lvl = 54,
				}),
				q(7505, {	-- Frost Shock and You
					providers = {
						{ "i", 18363 },	-- Frost Shock and You
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					-- #if BEFORE TBC
					races = HORDE_ONLY,
					-- #endif
					classes = { SHAMAN },
					lvl = 54,
					groups = {
						i(18471),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7498, {	-- Garona: A Study on Stealth and Treachery
					providers = {
						{ "i", 18356 },	-- Garona: A Study on Stealth and Treachery
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					timeline = {
						REMOVED_4_0_3,
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { ROGUE },
					lvl = 54,
					groups = {
						i(18465, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7502, {	-- Harnessing Shadows
					providers = {
						{ "i", 18360 },	-- Harnessing Shadows
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { WARLOCK },
					lvl = 54,
					groups = {
						i(18467),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7504, {	-- Holy Bologna: What the Light Won't Tell You
					providers = {
						{ "i", 18362 },	-- Holy Bologna: What the Light Won't Tell You
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { PRIEST },
					lvl = 54,
					groups = {
						i(18469),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(27125, {	-- King of the Gordok [Alliance]
					sourceQuest = 27133,	-- Eyes in the Sky
					qg = 45040,	-- Druid of the Talon
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						objective(1, {	-- 0/1 King Gordok slain
							provider = { "n", 11501 },	-- King Gordok
						}),
						i(65976),	-- Pauldrons of Tribute
						i(65927),	-- Slippers of Tribute
						i(65997),	-- Tribute Gun
						i(65952),	-- Wristbands of Tribute
					},
				}),
				q(27128, {	-- King of the Gordok [Horde]
					qg = 45052,	-- Stonemaul Ogre
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					races = HORDE_ONLY,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						objective(1, {	-- 0/1 King Gordok slain
							provider = { "n", 11501 },	-- King Gordok
						}),
						i(66036),	-- Pauldrons of Tribute
						i(66018),	-- Slippers of Tribute
						i(66043),	-- Tribute Gun
						i(66027),	-- Wristbands of Tribute
					},
				}),
				q(7488, {	-- Lethtendris's Web [Alliance]
					sourceQuest = 7494,	-- Feathermoon Stronghold
					qg = 7877,	-- Latronicus Moonspear
					coord = { 30.4, 46.2, FERALAS },
					timeline = { REMOVED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					races = ALLIANCE_ONLY,
					lvl = 54,
					groups = {
						objective(1, {	-- 0/1 Lethtendris's Web
							provider = { "i", 18426 },	-- Lethtendris's Web
						}),
						i(18491),	-- Lorespinner
					},
				}),
				q(7489, {	-- Lethtendris's Web [Horde]
					sourceQuest = 7492,	-- Camp Mojache
					qg = 7776,	-- Talo Thornhoof
					coord = { 76.2, 43.8, FERALAS },
					timeline = { REMOVED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					races = HORDE_ONLY,
					lvl = 54,
					groups = {
						objective(1, {	-- 0/1 Lethtendris's Web
							provider = { "i", 18426 },	-- Lethtendris's Web
						}),
						i(18491),	-- Lorespinner
					},
				}),
				q(27108, {	-- Lethtendris's Web
					qg = 44971,	-- "Ambassador" Dagg'thol
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Lethtendris's Web
							provider = { "i", 18426 },	-- Lethtendris's Web
						}),
					},
				}),
				q(7484, {	-- Libram of Focus
					sourceQuests = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					qg = 14368,	-- Lorekeeper Lydros
					maxReputation = { FACTION_SHENDRALAR, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					cost = {
						{ "i", 18333, 1 },	-- Libram of Focus
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 4 },	-- Large Brilliant Shard
						{ "i", 12753, 2 },	-- Skin of Shadow
					},
					repeatable = true,
					lvl = 57,
					groups = {
						i(18330),	-- Arcanum of Focus
					},
				}),
				q(7485, {	-- Libram of Protection
					sourceQuests = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					qg = 14368,	-- Lorekeeper Lydros
					maxReputation = { FACTION_SHENDRALAR, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					cost = {
						{ "i", 18334, 1 },	-- Libram of Protection
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 12735, 1 },	-- Frayed Abomination Stitching
					},
					repeatable = true,
					lvl = 57,
					groups = {
						i(18331),	-- Arcanum of Protection
					},
				}),
				q(7483, {	-- Libram of Rapidity
					sourceQuests = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					qg = 14368,	-- Lorekeeper Lydros
					maxReputation = { FACTION_SHENDRALAR, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					cost = {
						{ "i", 18332, 1 },	-- Libram of Rapidity
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 12938, 2 },	-- Blood of Heroes
					},
					repeatable = true,
					lvl = 57,
					groups = {
						i(18329),	-- Arcanum of Rapidity
					},
				}),
				q(7441, {	-- Pusillin and the Elder Azj'Tordin
					qg = 14355,	-- Azj'Tordin
					coord = { 76.7, 37.2, FERALAS },
					timeline = { REMOVED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = 54,
					groups = {
						objective(1, {	-- 0/1 Book of Incantations
							provider = { "i", 18261 },	-- Book of Incantations
						}),
						i(18410),	-- Sprinter's Sword
						i(18411),	-- Spry Boots
					},
				}),
				q(27107, {	-- Pusillin The Thief
					qg = 44971,	-- "Ambassador" Dagg'thol
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Book of Incantations
							provider = { "i", 18261 },	-- Book of Incantations
						}),
					},
				}),
				q(27129, {	-- Saving Warpwood [A]
					qg = 40032,	-- Telaron Windflight
					coord = { 50.7, 17.2, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
				}),
				q(27130, {	-- Saving Warpwood [H]
					qg = 7875,	-- Hadoken Swiftstrider
					coord = { 74.9, 42.4, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				q(27103, {	-- Shards of the Felvine
					qg = 44969,	-- Furgus Warpwood
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Sealed Reliquary of Purity
							provider = { "i", 18540 },	-- Sealed Reliquary of Purity
							cost = {
								{ "i", 18539, 1 },	-- Reliquary of Purity
								{ "i", 18501, 1 },	-- Felvine Shard
							},
						}),
					},
				}),
				q(7500, {	-- The Arcanist's Cookbook
					providers = {
						{ "i", 18358 },	-- The Arcanist's Cookbook
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					timeline = {
						REMOVED_4_0_3,
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { MAGE },
					lvl = 54,
					groups = {
						i(18468, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27112, {	-- The Cursed Remains
					qg = 44991,	-- Estulan
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
					groups = {
						objective(1, {	-- 0/1 Magister Kalendris slain
							provider = { "n", 11487 },	-- Magister Kalendris
						}),
						objective(2, {	-- 0/1 Illyanna Ravenoak slain
							provider = { "n", 11488 },	-- Illyanna Ravenoak
						}),
					},
				}),
				q(27109, {	-- The Warped Defender
					qg = 44999,
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
					groups = {
						objective(1, {	-- 0/1 Tendris Warpwood slain
							provider = { "n", 11489 },	-- Tendris Warpwood
						}),
					},
				}),
				q(7506, {	-- The Emerald Dream...
					providers = {
						{ "i", 18364 },	-- The Emerald Dream
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { DRUID },
					lvl = 54,
					groups = {
						i(18470),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(5518, {	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = {
						{ "i", 14048, 4 },	-- Bolt of Runecloth
						{ "i", 8170, 8 },	-- Rugged Leather
						{ "i", 14341, 2 },	-- Rune Thread
						{ "i", 18240, 1 },	-- Ogre Tannin
					},
					lvl = 56,
					groups = {
						r(22813, {	-- Gordok Ogre Suit
							requireSkill = TAILORING,
						}),
						r(22815, {	-- Gordok Ogre Suit
							requireSkill = LEATHERWORKING,
						}),
						i(18258, {	-- Gordok Ogre Suit
							description = "Before using this, clear the trash before Captain Kromcrush. Tell your group to stay back while you talk to Kromcrush with this disguise on. If they aggro him, your group will fail the Tribute Run.",
						}),
					},
				}),
				q(5519, {	-- The Gordok Ogre Suit
					sourceQuest = 5518,	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					maxReputation = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = {
						{ "i", 14048, 4 },	-- Bolt of Runecloth
						{ "i", 8170, 8 },	-- Rugged Leather
						{ "i", 14341, 2 },	-- Rune Thread
						{ "i", 18240, 1 },	-- Ogre Tannin
					},
					repeatable = true,
					lvl = 56,
					groups = { i(18258) },	-- Gordok Ogre Suit
				}),
				q(27119, {	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = { { "i", 18240, 1 } },	-- Ogre Tannin
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18258),	-- Gordok Ogre Suit
					},
				}),
				q(27120, {	-- The Gordok Ogre Suit
					sourceQuest = 27119,	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = { { "i", 18240, 1 } },	-- Ogre Tannin
					repeatable = true,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18258),	-- Gordok Ogre Suit
					},
				}),
				q(5528, {	-- The Gordok Taste Test
					description = "With Stomper Kreeg left alive, kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.\n\nHe sells these items after you have completed the quest and if you are Friendly with him.",
					qg = 14322,	-- Stomper Kreeg <The Drunk>
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = 56,
					groups = {
						i(18269),	-- Gordok Green Grog
						i(18284),	-- Kreeg's Stout Beatdown
					},
				}),
				q(27114, {	-- The Gordok Taste Test
					description = "With Stomper Kreeg left alive, kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.\n\nHe sells these items after you have completed the quest and if you are Friendly with him.",
					qg = 14322,	-- Stomper Kreeg <The Drunk>
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18269),	-- Gordok Green Grog
						i(18284),	-- Kreeg's Stout Beatdown
					},
				}),
				q(7503, {	-- The Greatest Race of Hunters
					providers = {
						{ "i", 18361 },	-- The Greatest Race of Hunters
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { HUNTER },
					lvl = 54,
					groups = {
						i(18473),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(27131, {	-- The Highborne [A]
					qg = 40032,	-- Telaron Windflight
					coord = { 50.7, 17.2, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
				}),
				q(27132, {	-- The Highborne [H]
					qg = 7875,	-- Hadoken Swiftstrider
					coord = { 74.9, 42.4, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				q(7501, {	-- The Light and How To Swing It
					providers = {
						{ "i", 18359 },	-- The Light and How to Swing It
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					timeline = {
						REMOVED_4_0_3,
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { PALADIN },
					lvl = 54,
					groups = {
						i(18472, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7461, {	-- The Madness Within
					qg = 14358,	-- Shen'dralar Ancient
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = 56,
					groups = {
						objective(1, {	-- 0/1 Immol'thar slain
							provider = { "n", 11496 },	-- Immol'thar
						}),
						objective(2, {	-- 0/1 Prince Tortheldrin slain
							provider = { "n", 11486 },	-- Prince Tortheldrin
						}),
					},
				}),
				q(27110, {	-- The Madness Within
					qg = 14358,	-- Shen'dralar Ancient
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Immol'thar slain
							provider = { "n", 11496 },	-- Immol'thar
						}),
						objective(2, {	-- 0/1 Prince Tortheldrin slain
							provider = { "n", 11486 },	-- Prince Tortheldrin
						}),
					},
				}),
				q(27113, {	-- The Shen'dralar Ancient
					qg = 44991,	-- Estulan
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
				}),
				q(7877, {	-- The Treasure of the Shen'dralar
					sourceQuest = 7461,	-- The Madness Within
					providers = {
						{ "n",  14358 },	-- Shen'dralar Ancient
						{ "o", 179517 },	-- Treasure of the Shen'dralar
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = 57,
					groups = {
						i(18421),	-- Backwood Helm
						i(18420),	-- Bonecrusher
						i(18424),	-- Sedge Boots
					},
				}),
				q(27111, {	-- The Treasure of the Shen'dralar
					sourceQuest = 27110,	-- The Madness Within
					providers = {
						{ "n",  14358 },	-- Shen'dralar Ancient
						{ "o", 179517 },	-- Treasure of the Shen'dralar
					},
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
					groups = {
						i(65949),	-- Dire Maul
						i(65973),	-- Grimm's Cigar Cutter
						i(65924),	-- Shen'dralar Trident
						i(65994),	-- Staff of Athen'a
					},
				}),
				q(7703, {	-- Unfinished Gordok Business
					description = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
					qg = 14325,	-- Captain Kromcrush
					timeline = { REMOVED_4_0_3 },
					maps = merge(WARPWOOD_QUARTER_MAPS, GORDOK_COMMONS_MAPS, CAPITAL_GARDENS_MAPS),
					lvl = 60,
					-- #if BEFORE 4.0.3
					groups = {
						objective(1, {	-- 0/1 Gauntlet of Gordok Might
							provider = { "i", 18336 },	-- Gauntlet of Gordok Might
						}),
						i(18367),	-- Gordok's Gauntlets
						i(18368),	-- Gordok's Gloves
						i(18366),	-- Gordok's Handguards
						i(18369),	-- Gordok's Handwraps
					},
					-- #endif
				}),
				q(27124, {	-- Unfinished Gordok Business
					description = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
					qg = 14325,	-- Captain Kromcrush
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18367),	-- Gordok's Gauntlets
						i(18368),	-- Gordok's Gloves
						i(18366),	-- Gordok's Handguards
						i(18369),	-- Gordok's Handwraps
					},
				}),
			}),
			n(TREASURES, {
				o(179526, {	-- Warpwood Pod
					i(18255),	-- Runn Tum Tuber
					i(18297),	-- Thornling Seed
				}),
			}),
			n(ZONE_DROPS, {
				maps = ALL_DIREMAUL_MAPS,
				groups = {
					i(12662),	-- Demonic Rune
					i(18640),	-- Happy Fun Rock
					i(18333, {	-- Libram of Focus
						-- #if AFTER 4.0.3
						description = "This still drops despite being completely worthless.",
						-- #endif
					}),
					i(18334, {	-- Libram of Protection
						-- #if AFTER 4.0.3
						description = "This still drops despite being completely worthless.",
						-- #endif
					}),
					i(18332, {	-- Libram of Rapidity
						-- #if AFTER 4.0.3
						description = "This still drops despite being completely worthless.",
						-- #endif
					}),
					{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
						timeline = { REMOVED_4_0_3 },
						-- #if BEFORE 4.0.3
						crs = {
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
					}) } },
				},
			}),
			n(COMMON_BOSS_DROPS, {
				provider = { "o", 179547 },	-- A Dusty Tome
				-- #if BEFORE 4.0.3
				description = "The following items can drop from any boss in Dire Maul and also from Dusty Tomes on the ground.",
				-- #endif
				maps = ALL_DIREMAUL_MAPS,
				groups = {
					i(18357, {	-- Codex of Defense
						timeline = {
							REMOVED_4_0_3,
						},
					}),
					i(18360, {	-- Harnessing Shadows
						timeline = { REMOVED_4_0_3 },
					}),
					i(18363, {	-- Frost Shock and You
						timeline = { REMOVED_4_0_3 },
					}),
					i(18356, {	-- Garona: A Study on Stealth and Treachery
						timeline = {
							REMOVED_4_0_3,
						},
					}),
					i(18362, {	-- Holy Bologna: What the Light Won't Tell You
						timeline = { REMOVED_4_0_3 },
					}),
					i(18401, {	-- Nostro's Compendium of Dragon Slaying
						timeline = {
							REMOVED_4_0_3,
						},
					}),
					i(18358, {	-- The Arcanist's Cookbook
						timeline = {
							REMOVED_4_0_3,
						},
					}),
					i(18364, {	-- The Emerald Dream
						timeline = { REMOVED_4_0_3 },
					}),
					i(18361, {	-- The Greatest Race of Hunters
						timeline = { REMOVED_4_0_3 },
					}),
					i(18359, {	-- The Light and How to Swing It
						timeline = {
							REMOVED_4_0_3,
						},
					}),
				},
			}),
			o(179547, {	-- A Dusty Tome
				maps = ALL_DIREMAUL_MAPS,
				groups = {
					i(18365, {	-- A Thoroughly Read Copy of "Nat Pagle's Guide to Extreme Anglin'."
						-- #if BEFORE 7.0.3
						lore = "This item is utterly worthless, however there was a rumor that this item could be used to obtain the original Ashbringer via fishing.",
						-- #endif
						description =
							-- #if AFTER 7.0.3
							"Required for the Retribution Paladin Hidden Artifact Appearance. This can be found in various places throughout all the wings of Dire Maul.\n\n North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\n East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\n West: By the southern generator in Immol'thar's room.",
							-- #else
							"This can be found in various places throughout all the wings of Dire Maul.\n\n North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\n East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\n West: By the southern generator in Immol'thar's room.",
							-- #endif
					}),
				},
			}),
			DIREMAUL_SUBMAP(239, WARPWOOD_QUARTER, {	-- Warpwood Quarter (East)
				coord = { 64.83, 30.24, FERALAS },	-- Dire Maul [East]
				maps = WARPWOOD_QUARTER_MAPS,
				groups = {
					n(ZONE_DROPS, {
						i(18289, {	-- Barbed Thorn Necklace
							crs = {
								11461,	-- Warpwood Guardian
								11462,	-- Warpwood Treant
								13021,	-- Warpwood Crusher
								11464,	-- Warpwood Tangler
								11465,	-- Warpwood Stomper
							},
						}),
						i(18296, {	-- Marksman Bands
							crs = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
							},
						}),
						i(18295, {	-- Phasing Boots
							cr = 13196,	-- Phase Lasher
						}),
						i(18603, {	-- Satyr Blood
							timeline = { REMOVED_4_0_3 },
							classes = { WARLOCK },
							-- #if BEFORE 4.0.3
							crs = {
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
							crs = {
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
						description = "Talk to him and then chase him. Eventually he will go up a ramp and become killable.",
						groups = {
							i(18249, {	-- Crescent Key
								description =
									-- #if AFTER 5.2.0
									"This key no longer has any practical use, and disappears from the inventory like a conjured item.",	-- Removed with 4.0.3, and started dropping again with 5.2.0 for no apparent reason.
									-- #elseif AFTER 4.0.3
									"This key no longer has any practical use.",
									-- #else
									"This key is required to enter the Gordok Commons and Capital Gardens.",
									-- #endif
							}),
							i(18261),	-- Book of Incantations
							i(207297, {	-- Grimoire of the Felblaze Imp (CI!)
								timeline = { ADDED_10_1_5 },
							}),
							i(18267),	-- Recipe: Runn Tum Tuber Surprise (RECIPE!)
							i(18255),	-- Runn Tum Tuber
						},
					}),
					n(14349, {	-- Pimgib
						i(18354, {	-- Pimgib's Collar
							classes = { WARLOCK },
						}),
					}),
					e(404, {	-- Lethtendris
						creatureID = 14327,
						groups = {
							i(18426),	-- Lethtendris's Web
							i(18311, {	-- Quel'dorei Channeling Rod
							}),
							i(18301),	-- Lethtendris' Wand
							i(18325),	-- Felhide Cap
							i(18302),	-- Band of Vigor
						},
					}),
					e(403, {	-- Hydrospawn
						creatureID = 13280,
						groups = {
							i(18299),	-- Hydrospawn Essence
							i(18324, {	-- Waveslicer
							}),
							i(18317, {	-- Tempest Talisman
							}),
							i(18305),	-- Breakwater Legguards
							i(18307),	-- Riptide Shoes
							i(18322),	-- Waterspout Boots
							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
						},
					}),
					e(402, {	-- Zevrim Thornhoof
						creatureID = 11490,
						groups = {
							i(18323, {	-- Satyr's Bow
							}),
							i(18308),	-- Clever Hat
							i(18319, {	-- Fervent Helm
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
						description = "Talk to him for him to break down the door.",
					}),
					{ progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
						description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
						-- #if BEFORE 6.0.2
						cost = {
							{ "i", 22050, 1 },	-- Brazier of Beckoning [Isalien]
						},
						-- #endif
						provider = { "i", 22057 },	-- Brazier of Invocation
						-- #if AFTER 4.0.3
						sourceQuest = 8996,	-- Return to Bodley
						u_sqs = true,	-- remove the u flag if sourcequests are completed
						-- #endif
						timeline = { REMOVED_4_0_3 },
						groups = {
							objective(2, {	-- 0/1 Left Piece of Lord Valthalak's Amulet
								questID = 8967,	-- The Left Piece of Lord Valthalak's Amulet [WARLOCK, DRUID]
								provider = { "i", 21984 },	-- Left Piece of Lord Valthalak's Amulet
							}),
							objective(2, {	-- 0/1 Right Piece of Lord Valthalak's Amulet
								questID = 8990,	-- The Right Piece of Lord Valthalak's Amulet [WARRIOR, ROGUE]
								provider = { "i", 22046 },	-- Right Piece of Lord Valthalak's Amulet
							}),
							i(22315),	-- Hammer of Revitalization
							i(22314),	-- Huntsman's Harpoon
							i(22304, {	-- Ironweave Gloves
							}),
							i(22472),	-- Boots of Ferocity
							i(22401, {	-- Libram of Hope
								timeline = { DELETED_5_0_4 },
							}),
							i(22345, {	-- Totem of Rebirth
								timeline = { DELETED_5_0_4 },
							}),
						},
					}) } },
					e(405, {	-- Alzzin the Wildshaper
						creatureID = 11492,
						groups = {
							i(18501, {	-- Felvine Shard
								description = "Spawns under the vines near the last boss in Dire Maul East.",
								provider = { "o", 179559 },	-- Felvine Shard
							}),
							i(18321),	-- Energetic Rod
							i(18310, {	-- Fiendish Machete
							}),
							i(18328),	-- Shadewood Cloak
							i(18312, {	-- Energized Chestplate
							}),
							i(18309),	-- Gloves of Restoration
							i(18326),	-- Razor Gauntlets
							i(18327),	-- Whipvine Cord
							i(18318),	-- Merciful Greaves
							i(18314, {	-- Ring of Demonic Guile
							}),
							-- #if BEFORE 6.0.2
							-- This ring may have moved to Zevrim, will need to verify.
							i(18315, {	-- Ring of Demonic Potency
							}),
							-- #endif
						},
					}),
				},
			}),
			DIREMAUL_SUBMAP(235, GORDOK_COMMONS, {		-- Gordok Commons (North)
				coord = { 62.48, 24.48, FERALAS },	-- Dire Maul [North]
				maps = GORDOK_COMMONS_MAPS,
				-- #if BEFORE 4.0.3
				cost = { { "i", 18249, 1 } },	-- Crescent Key
				-- #endif
				groups = {
					n(ZONE_DROPS, {
						i(18250, {	-- Gordok Shackle Key
							timeline = { REMOVED_4_0_3, ADDED_10_1_5 },
							-- #if BEFORE 4.0.3
							description = "NOTE: Do NOT Free Knot if you are doing a Tribute Run. He runs away.",
							-- #endif
							crs = {
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
					}),
					n(QUESTS, {
						q(77194, {	-- Free Knot!
							description = "This quest becomes obtainable once a Gordok Shackle Key is looted. Completing it increases your reputation with the Steamwheedle Cartel without lowering your reputation with the Bloodsail Buccaneers.",
							qg = 14338,	-- Knot Thimblejack
							timeline = { ADDED_10_1_5 },
							cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
							repeatable = true,
							groups = {
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
					}),
					n(COMMON_BOSS_DROPS, {
						description = "The following items can drop from any of the guards.",
						crs = {
							14326,	-- Guard Mol'dar
							14321,	-- Guard Fengus
							14323,	-- Guard Slip'kik
						},
						groups = {
							-- #if AFTER 7.3.5
							i(18498),	-- Hedgecutter
							-- #endif
							i(18462),	-- Jagged Bone Fist
							i(18463),	-- Ogre Pocket Knife
							i(18460),	-- Unsophisticated Hand Cannon
							-- #if AFTER 7.3.5
							i(18496, {	-- Heliotrope Cloak
							}),
							i(18493, {	-- Bulky Iron Spaulders
							}),
							i(18494, {	-- Denwatcher's Shoulders
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
						creatureID = 14326,
						-- #if BEFORE 4.0.3
						description = "If you do not have a way to open the inner door, you can kill him for the Inner Door Key.\n\nDoing so will invalidate your Tribute Run.",
						-- #endif
						groups = {
							-- #if BEFORE 7.3.5
							i(18498),	-- Hedgecutter
							i(18496, {	-- Heliotrope Cloak
							}),
							i(18493, {	-- Bulky Iron Spaulders
							}),
							i(18494, {	-- Denwatcher's Shoulders
							}),
							i(18497),	-- Sublime Wristguards
							-- #endif
							i(18268, {	-- Gordok Inner Door Key
								timeline = { DELETED_4_0_3 },
							}),
						},
					}),
					e(412, {	-- Stomper Kreeg
						creatureID = 14322,
						groups = {
							i(18425),	-- Kreeg's Mug
							-- #if AFTER 6.0.2
							i(18464),	-- Gordok Nose Ring
							-- #endif
							n(VENDORS, {
								description = "After becoming the king, you can come back to Kreeg to buy some drinks.",
								groups = {
									i(18269),	-- Gordok Green Grog
									i(18284),	-- Kreeg's Stout Beatdown
									i(18288),	-- Molasses Firewater
									i(18287),	-- Evermurky
								},
							}),
						},
					}),
					e(413, {	-- Guard Fengus
						creatureID = 14321,
						description =
							-- #if AFTER 4.0.3
							"Avoid him. His chest is empty.",
							-- #else
							"Avoid him and loot his chest for a key to open the door.",
							-- #endif
						-- #if BEFORE 4.0.3
						groups = {
							i(18266, {	-- Gordok Courtyard Key
								provider = { "o", 179516 },	-- Fengus's Chest
							}),
						},
						-- #endif
					}),
					e(414, {	-- Guard Slip'kik
						creatureID = 14323,
						-- #if BEFORE 7.3.5
						groups = {
							i(18498),	-- Hedgecutter
							i(18496, {	-- Heliotrope Cloak
							}),
							i(18493, {	-- Bulky Iron Spaulders
							}),
							i(18494, {	-- Denwatcher's Shoulders
							}),
							i(18497),	-- Sublime Wristguards
						},
						-- #endif
					}),
					n(14338, {	-- Knot Thimblejack
						timeline = { ADDED_10_1_5 },
						groups = {
							r(22813, {	-- Gordok Ogre Suit
								requireSkill = TAILORING,
								sourceQuest = 27119,	-- The Gordok Ogre Suit
							}),
							r(22815, {	-- Gordok Ogre Suit
								requireSkill = LEATHERWORKING,
								sourceQuest = 27119,	-- The Gordok Ogre Suit
							}),
						},
					}),
					o(179501, {	-- Knot Thimblejack's Cache
						sourceQuest = 5525,	-- Free Knot!
						-- #if BEFORE 4.0.3
						cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
						-- #endif
						groups = {
							i(18240),	-- Ogre Tannin
							i(18414, {	-- Pattern: Belt of the Archmage (RECIPE!)
							}),
							i(18517, {	-- Pattern: Chromatic Cloak (RECIPE!)
							}),
							i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
							i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
							i(18514, {	-- Pattern: Girdle of Insight (RECIPE!)
							}),
							i(18518),	-- Pattern: Hide of the Wild (RECIPE!)
							i(18416),	-- Pattern: Inferno Gloves (RECIPE!)
							i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
							i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
							i(18519, {	-- Pattern: Shifting Cloak (RECIPE!)
							}),
							i(18516, {	-- Pattern: Swift Flight Bracers (RECIPE!)
							}),
						},
					}),
					o(179499, {	-- Ogre Tannin Basket
						description = "Beware! Looting the Ogre Tannin will cause a Gordok Bushwacker to spawn. Quote is homage to the movie The Silence of the Lambs.\n\n'NO! It puts the tannin in the basket, or it gets the mallet again!'",
						groups = {
							i(18240),	-- Ogre Tannin
						},
					}),
					e(415, {	-- Captain Kromcrush
						creatureID = 14325,
						description =
							-- #if AFTER 4.0.3
							"Use the Gordok Ogre Suit to skip him for the Tribute Run. (Talk to him)",
							-- #else
							"In order to get to this boss, you must use the Inner Door Key or have an engineer open the door using a Seaforium Charge.\n\nUse the Gordok Ogre Suit to skip him. (talk to him)",
							-- #endif
						-- #if BEFORE 4.0.3
						cost = {
							{ "i", 18268, 1 },	-- Gordok Inner Door Key
							{ "i", 18258, 1 },	-- Gordok Ogre Suit
						},
						-- #endif
						groups = {
							i(18502),	-- Monstrous Glaive
							i(18503),	-- Kromcrush's Chestplate
							-- #if AFTER 7.3.5
							i(18458),	-- Modest Armguards (7.3.5 - Moved from Guards)
							-- #endif
							i(18505, {	-- Mugger's Belt
							}),
							i(18507),	-- Boots of the Full Moon
						},
					}),
					e(416, {	-- Cho'Rush the Observer
						creatureID = 14324,
						groups = {
							i(18484),	-- Cho'Rush's Blade
							i(18483),	-- Mana Channeling Wand
							i(18485, {	-- Observer's Shield
							}),
							i(18490, {	-- Insightful Hood
							}),
							-- #if AFTER 7.3.5
							i(18459),	-- Gallant's Wristguards (7.3.5 - Moved from Guards)
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved from King Gordok)
							-- #endif
						},
					}),
					e(417, {	-- King Gordok
						creatureID = 11501,
						groups = {
							i(18520, {	-- Barbarous Blade
							}),
							i(18523),	-- Brightly Glowing Stone
							i(18526, {	-- Crown of the Ogre King
							}),
							i(18525),	-- Bracers of Prosperity
							-- #if BEFORE 7.3.5
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
							-- #endif
							i(18524, {	-- Leggings of Destruction
							}),
							i(18521),	-- Grimy Metal Boots
							i(18522),	-- Band of the Ogre King
							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } },	-- Ace of Warlords
							i(18780, {	-- Top Half of Advanced Armorsmithing: Volume I
								timeline = { DELETED_4_0_3 },
							}),
						},
					}),
					o(179564, {	-- Gordok Tribute Chest
						description = "Speak with Mizzle after killing |cFFFFD700King Gordok|r to spawn the Tribute Chest.\n\nA full Tribute Run (5 items) requires leaving all bosses alive except King Gordok, and also requires activating the Frost Trap & fooling Kromcrush with the Ogre Suit, granted by the Goblin near the trap.",
						provider = { "n", 14353 },	-- Mizzle the Crafty
						modelScale = 3,
						groups = {
							i(18655),	-- Schematic: Major Recombobulator (RECIPE!)
							i(18499),	-- Barrier Shield
							i(18479),	-- Carrion Scorpid Helm
							i(18537),	-- Counterattack Lodestone
							i(18528, {	-- Cyclone Spaulders
							}),
							i(18529),	-- Elemental Plate Girdle
							i(18533),	-- Gordok Bracers of Power
							i(18478),	-- Hyena Hide Jerkin
							i(18532, {	-- Mindsurge Robe
							}),
							i(18476),	-- Mud Stained Boots
							i(18475),	-- Oddly Magical Belt
							i(18530, {	-- Ogre Forged Hauberk
							}),
							i(18482),	-- Ogre Toothpick Shooter
							i(18495),	-- Redoubt Cloak
							i(18534, {	-- Rod of the Ogre Magi
							}),
							i(18480),	-- Scarab Plate Helm
							i(18477),	-- Shaggy Leggings
							i(18481),	-- Skullcracking Mace
							i(18500, {	-- Tarnished Elven Ring
							}),
							i(18538, {	-- Treant's Bane
							}),
							i(18531, {	-- Unyielding Maul
							}),
						},
					}),
				},
			}),
			DIREMAUL_SUBMAP(236, CAPITAL_GARDENS, {		-- Capital Gardens (West)
				coord = { 60.32, 30.17, FERALAS },	-- Dire Maul [West]
				maps = CAPITAL_GARDENS_MAPS,
				-- #if BEFORE 4.0.3
				cost = { { "i", 18249, 1 } },	-- Crescent Key
				-- #endif
				groups = {
					n(VENDORS, {
						n(14371, {	-- Shen'dralar Provisioner
							i(18487, {	-- Pattern: Mooncloth Robe (RECIPE!)
							}),
						}),
					}),
					n(ZONE_DROPS, {
						i(18339, {	-- Eidolon Cloak
							crs = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						i(18340, {	-- Eidolon Talisman
							crs = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
							crs = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11469,	-- Eldreth Seether
								11470,	-- Eldreth Sorcerer
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}) } },
						i(18337, {	-- Orphic Bracers
							crs = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
						i(18343, {	-- Petrified Band
							crs = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18344, {	-- Stonebark Gauntlets
							crs = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18338, {	-- Wand of Arcane Potency
							crs = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
					}),
					e(408, {	-- Magister Kalendris
						creatureID = 11487,
						groups = {
							{ progressionKey = "dire-maul.later-recipes", groups = { i(22309) } },	-- Pattern: Big Bag of Enchantment (RECIPE!)
							i(18397, {	-- Elder Magus Pendant
							}),
							i(18374),	-- Flamescarred Shoulders
							i(18350),	-- Amplifying Cloak
							i(18351),	-- Magically Sealed Bracers
							i(18371),	-- Mindtap Talisman
						},
					}),
					n(11467, {	-- Tsu'zee
						description = "This is a Rare Creature and, as such, is not always present.",
						groups = {
							i(18387, {	-- Brightspark Gloves
							}),
							i(18346),	-- Threadbare Trousers
							i(18345),	-- Murmuring Ring
						},
					}),
					e(407, {	-- Illyanna Ravenoak
						creatureID = 11488,
						groups = {
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
						creatureID = 11489,
						groups = {
							i(18353),	-- Stoneflower Staff
							i(18352),	-- Petrified Bark Shield
							i(18393, {	-- Warpwood Bindings
							}),
							i(18390, {	-- Tanglemoss Leggings
							}),
						},
					}),
					e(409, {	-- Immol'thar
						creatureID = 11496,
						groups = {
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
							{ progressionKey = "dire-maul.tbc-pet-training", groups = { i(24345, {	-- Book of Cower IV
								timeline = { REMOVED_4_0_1 },
								classes = { DRUID },
								spellID = 31709,	-- Cower IV
								rank = 4,
							}) } },
						},
					}),
					n_conditional(14506, {	-- Lord Hel'nurath
						description =
							-- #if AFTER CATA
							"|cff3399ffSTEP 1:|r Warlock with (Dreadsteed of Xoroth) FOS\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs,  Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 8.2,35.8)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once creatures stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
							-- #else
							"|cff3399ffSTEP 1:|r Find a Warlock that is on or has completed Dreadsteed of Xoroth.\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs, Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 12.4, 31.6)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once creatures stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
							-- #endif
						sourceQuest = 7631,	-- Dreadsteed of Xoroth
						cost = {
							{ "i", 18670, 1 },	-- Xorothian Glyphs
							{ "i", 18629, 1 },	-- Black Lodestone
							{ "i", 18663, 1 },	-- J'eevee's Jar
						},
						timeline = { REMOVED_4_0_3 },
						groups = {
							i(18757, {	-- Diabolic Mantle
							}),
							i(18755),	-- Xorothian Firestick
							i(18756),	-- Dreadguard Protector
							i(18754),	-- Fel Hardened Bracers
						},
					}),
					n(16032, {	-- Falrin Treeshaper <House of Shen'dralar>
						description = "Found in the Dire Maul Library.",
						groups = {
							n(SPECIAL, {
								description = "Available if a specific Quest (9015) has been completed.",
								sourceQuest = 9015,	-- The Challenge
								timeline = { ADDED_1_11_1, REMOVED_4_0_3 },
								u_sqs = true,	-- remove the u flag if sourcequests are completed
								groups = {
									i(21986),	-- Banner of Provocation
								},
							}),
						},
					}),
					e(410, {	-- Prince Tortheldrin
						creatureID = 11486,
						groups = {
							i(18336, {	-- Gauntlet of Gordok Might
								description = "In the corner of the room that the Prince is in, next to the bookshelves, there is a small chest on the ground that contains the gauntlet. You must kill the Prince in order for the chest to be interactable.",
								provider = { "o", 179545 },	-- The Prince's Chest
							}),
							i(18392, {	-- Distracting Dagger
							}),
							i(18396),	-- Mind Carver
							i(18376),	-- Timeworn Mace
							i(18388, {	-- Stoneshatter
							}),
							i(18382),	-- Fluctuating Cloak
							i(18373),	-- Chestplate of Tranquility
							i(18375),	-- Bracers of the Eclipse
							i(18380, {	-- Eldritch Reinforced Legplates
							}),
							i(18378, {	-- Silvermoon Leggings
							}),
							i(18395),	-- Emerald Flame Ring
						},
					}),
				},
			}),
		},
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(230, {
		q(35890),	-- Dire Maul (Warpwood Quarter) Reward Quest - Normal completion
		q(35891),	-- Dire Maul (Capital Gardens) Reward Quest - Normal completion
		q(35892),	-- Dire Maul (Gordok Commons) Reward Quest - Normal completion
		q(35894),	-- Dire Maul (Bonus) Reward Quest
		q(35956),	-- Dire Maul (Everything) Reward Quest
	}),
}));
```

</details>

<details>
<summary>Show every changed Lua line: P3 → classic.lua</summary>

```diff
--- .contrib/phase-examples/evolution/dire-maul/p3/Dire Maul.lua
+++ .contrib/phase-examples/evolution/dire-maul/p4/classic.lua
@@ -1,4 +1,4 @@
--- Generated comparison snapshot (P2.1 / P2.2 / P3): complete annotated source.
+-- Generated comparison snapshot (P4): complete classic source.
 -- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
@@ -144,7 +144,7 @@
 end]];
 -- #endif
 
-root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, applyclassicphase(PHASE_ONE_DIREMAUL, {
+root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
 	inst(230, { progressionKey = "dire-maul.common",	-- Dire Maul
 		-- #if BEFORE MOP
 		lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
@@ -327,32 +327,13 @@
 						i(18536),	-- Milli's Lexicon
 					},
 				}),
-				-- #if SEASON_OF_DISCOVERY
-				q(84550, {	-- Codex of Defense
-					providers = {
-						{ "i", 228692 },	-- Codex of Defense
-						{ "n",  14383 },	-- Lorekeeper Kildrath
-					},
-					timeline = { ADDED_1_15_3 },
-					maps = CAPITAL_GARDENS_MAPS,
-					classes = { WARRIOR },
-					lvl = 54,
-					groups = {
-						i(228465),	-- Royal Seal of Eldre'Thalas
-					},
-				}),
-				-- #endif
 				q(7499, {	-- Codex of Defense
 					providers = {
 						{ "i", 18357 },	-- Codex of Defense
 						{ "n", 14383 },	-- Lorekeeper Kildrath
 					},
 					timeline = {
-						-- #if SEASON_OF_DISCOVERY
-						REMOVED_1_15_3,
-						-- #else
 						REMOVED_4_0_3,
-						-- #endif
 					},
 					maps = CAPITAL_GARDENS_MAPS,
 					classes = { WARRIOR },
@@ -404,7 +385,7 @@
 						}),
 					},
 				},
-				{ progressionKey = "dire-maul.recipe-quests", groups = { applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
+				{ progressionKey = "dire-maul.recipe-quests", groups = { q(7649, {	-- Enchanted Thorium Platemail: Volume I
 					providers = {
 						-- #IF BEFORE 4.0.3
 						{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
@@ -434,8 +415,8 @@
 					groups = {
 						i(12727),	-- Plans: Enchanted Thorium Breastplate (RECIPE!)
 					},
-				})),
-				applyclassicphase(PHASE_THREE_RECIPES, q(7650, {	-- Enchanted Thorium Platemail: Volume II
+				}),
+				q(7650, {	-- Enchanted Thorium Platemail: Volume II
 					providers = {
 						-- #IF BEFORE 4.0.3
 						{ "i", 18770 },	-- Enchanted Thorium Platemail (Volume II)
@@ -461,8 +442,8 @@
 					groups = {
 						i(12726),	-- Plans: Enchanted Thorium Leggings (RECIPE!)
 					},
-				})),
-				applyclassicphase(PHASE_THREE_RECIPES, q(7651, {	-- Enchanted Thorium Platemail: Volume III
+				}),
+				q(7651, {	-- Enchanted Thorium Platemail: Volume III
 					providers = {
 						-- #if BEFORE 4.0.3
 						{ "i", 18771 },	-- Enchanted Thorium Platemail (Volume III)
@@ -493,7 +474,7 @@
 					groups = {
 						i(12725),	-- Plans: Enchanted Thorium Helm (RECIPE!)
 					},
-				})) } },
+				}) } },
 				q(7494, {	-- Feathermoon Stronghold
 					qgs = {
 						2198,	-- Crier Goodman
@@ -550,32 +531,13 @@
 						i(18471),	-- Royal Seal of Eldre'Thalas
 					},
 				}),
-				-- #if SEASON_OF_DISCOVERY
-				q(84548, {	-- Garona: A Study on Stealth and Treachery
-					providers = {
-						{ "i", 228691 },	-- Garona: A Study on Stealth and Treachery
-						{ "n",  14383 },	-- Lorekeeper Kildrath
-					},
-					timeline = { ADDED_1_15_3 },
-					maps = CAPITAL_GARDENS_MAPS,
-					classes = { ROGUE },
-					lvl = 54,
-					groups = {
-						i(228464),	-- Royal Seal of Eldre'Thalas
-					},
-				}),
-				-- #endif
 				q(7498, {	-- Garona: A Study on Stealth and Treachery
 					providers = {
 						{ "i", 18356 },	-- Garona: A Study on Stealth and Treachery
 						{ "n", 14383 },	-- Lorekeeper Kildrath
 					},
 					timeline = {
-						-- #if SEASON_OF_DISCOVERY
-						REMOVED_1_15_3,
-						-- #else
 						REMOVED_4_0_3,
-						-- #endif
 					},
 					maps = CAPITAL_GARDENS_MAPS,
 					classes = { ROGUE },
@@ -803,34 +765,13 @@
 						}),
 					},
 				}),
-				-- #if SEASON_OF_DISCOVERY
-				q(84549, {	-- The Arcanist's Cookbook
-					providers = {
-						{ "i", 228693 },	-- The Arcanist's Cookbook
-						{ "n",  14383 },	-- Lorekeeper Kildrath
-					},
-					timeline = { ADDED_1_15_3 },
-					maps = CAPITAL_GARDENS_MAPS,
-					classes = { MAGE },
-					lvl = 54,
-					groups = {
-						i(228466, {	-- Royal Seal of Eldre'Thalas
-							timeline = { REMOVED_4_0_3 },
-						}),
-					},
-				}),
-				-- #endif
 				q(7500, {	-- The Arcanist's Cookbook
 					providers = {
 						{ "i", 18358 },	-- The Arcanist's Cookbook
 						{ "n", 14383 },	-- Lorekeeper Kildrath
 					},
 					timeline = {
-						-- #if SEASON_OF_DISCOVERY
-						REMOVED_1_15_3,
-						-- #else
 						REMOVED_4_0_3,
-						-- #endif
 					},
 					maps = CAPITAL_GARDENS_MAPS,
 					classes = { MAGE },
@@ -989,34 +930,13 @@
 					races = HORDE_ONLY,
 					isBreadcrumb = true,
 				}),
-				-- #if SEASON_OF_DISCOVERY
-				q(84551, {	-- The Light and How To Swing It
-					providers = {
-						{ "i", 228690 },	-- The Light and How to Swing It
-						{ "n",  14382 },	-- Lorekeeper Mykos
-					},
-					timeline = { ADDED_1_15_3 },
-					maps = CAPITAL_GARDENS_MAPS,
-					classes = { PALADIN },
-					lvl = 54,
-					groups = {
-						i(228467, {	-- Royal Seal of Eldre'Thalas
-							timeline = { REMOVED_4_0_3 },
-						}),
-					},
-				}),
-				-- #endif
 				q(7501, {	-- The Light and How To Swing It
 					providers = {
 						{ "i", 18359 },	-- The Light and How to Swing It
 						{ "n", 14382 },	-- Lorekeeper Mykos
 					},
 					timeline = {
-						-- #if SEASON_OF_DISCOVERY
-						REMOVED_1_15_3,
-						-- #else
 						REMOVED_4_0_3,
-						-- #endif
 					},
 					maps = CAPITAL_GARDENS_MAPS,
 					classes = { PALADIN },
@@ -1150,7 +1070,7 @@
 						description = "This still drops despite being completely worthless.",
 						-- #endif
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
+					{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
 						timeline = { REMOVED_4_0_3 },
 						-- #if BEFORE 4.0.3
 						crs = {
@@ -1165,7 +1085,7 @@
 							11448,	-- Gordok Warlock
 						},
 						-- #endif
-					}) } }),
+					}) } },
 				},
 			}),
 			n(COMMON_BOSS_DROPS, {
@@ -1175,18 +1095,9 @@
 				-- #endif
 				maps = ALL_DIREMAUL_MAPS,
 				groups = {
-					-- #if SEASON_OF_DISCOVERY
-					i(228692, {	-- Codex of Defense
-						timeline = { ADDED_1_15_3 },
-					}),
-					-- #endif
 					i(18357, {	-- Codex of Defense
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
-							REMOVED_1_15_3,
-							-- #else
 							REMOVED_4_0_3,
-							-- #endif
 						},
 					}),
 					i(18360, {	-- Harnessing Shadows
@@ -1195,49 +1106,22 @@
 					i(18363, {	-- Frost Shock and You
 						timeline = { REMOVED_4_0_3 },
 					}),
-					-- #if SEASON_OF_DISCOVERY
-					i(228691, {	-- Garona: A Study on Stealth and Treachery
-						timeline = { ADDED_1_15_3 },
-					}),
-					-- #endif
 					i(18356, {	-- Garona: A Study on Stealth and Treachery
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
-							REMOVED_1_15_3,
-							-- #else
 							REMOVED_4_0_3,
-							-- #endif
 						},
 					}),
 					i(18362, {	-- Holy Bologna: What the Light Won't Tell You
 						timeline = { REMOVED_4_0_3 },
 					}),
-					-- #if SEASON_OF_DISCOVERY
-					i(228680, {	-- Nostro's Compendium of Dragon Slaying
-						timeline = { ADDED_1_15_3 },
-					}),
-					-- #endif
 					i(18401, {	-- Nostro's Compendium of Dragon Slaying
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
-							REMOVED_1_15_3,
-							-- #else
 							REMOVED_4_0_3,
-							-- #endif
-						},
-					}),
-					-- #if SEASON_OF_DISCOVERY
-					i(228693, {	-- The Arcanist's Cookbook
-						timeline = { ADDED_1_15_3 },
-					}),
-					-- #endif
+						},
+					}),
 					i(18358, {	-- The Arcanist's Cookbook
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
-							REMOVED_1_15_3,
-							-- #else
 							REMOVED_4_0_3,
-							-- #endif
 						},
 					}),
 					i(18364, {	-- The Emerald Dream
@@ -1246,18 +1130,9 @@
 					i(18361, {	-- The Greatest Race of Hunters
 						timeline = { REMOVED_4_0_3 },
 					}),
-					-- #if SEASON_OF_DISCOVERY
-					i(228690, {	-- The Light and How to Swing It
-						timeline = { ADDED_1_15_3 },
-					}),
-					-- #endif
 					i(18359, {	-- The Light and How to Swing It
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
-							REMOVED_1_15_3,
-							-- #else
 							REMOVED_4_0_3,
-							-- #endif
 						},
 					}),
 				},
@@ -1361,15 +1236,7 @@
 						creatureID = 14327,
 						groups = {
 							i(18426),	-- Lethtendris's Web
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228051, {	-- Quel'dorei Channeling Rod
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18311, {	-- Quel'dorei Channeling Rod
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18301),	-- Lethtendris' Wand
 							i(18325),	-- Felhide Cap
@@ -1380,55 +1247,23 @@
 						creatureID = 13280,
 						groups = {
 							i(18299),	-- Hydrospawn Essence
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228052, {	-- Waveslicer
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18324, {	-- Waveslicer
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228054, {	-- Tempest Talisman
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18317, {	-- Tempest Talisman
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18305),	-- Breakwater Legguards
 							i(18307),	-- Riptide Shoes
 							i(18322),	-- Waterspout Boots
-							applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } }),	-- Ace of Elementals
+							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
 						},
 					}),
 					e(402, {	-- Zevrim Thornhoof
 						creatureID = 11490,
 						groups = {
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228050, {	-- Satyr's Bow
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18323, {	-- Satyr's Bow
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18308),	-- Clever Hat
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228053, {	-- Fervent Helm
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18319, {	-- Fervent Helm
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18313),	-- Helm of Awareness
 							i(18306),	-- Gloves of Shadowy Mist
@@ -1441,7 +1276,7 @@
 					n(11491, {	-- Old Ironbark
 						description = "Talk to him for him to break down the door.",
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
+					{ progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
 						description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
 						-- #if BEFORE 6.0.2
 						cost = {
@@ -1465,15 +1300,7 @@
 							}),
 							i(22315),	-- Hammer of Revitalization
 							i(22314),	-- Huntsman's Harpoon
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228066, {	-- Ironweave Gloves
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(22304, {	-- Ironweave Gloves
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(22472),	-- Boots of Ferocity
 							i(22401, {	-- Libram of Hope
@@ -1483,7 +1310,7 @@
 								timeline = { DELETED_5_0_4 },
 							}),
 						},
-					}) } }),
+					}) } },
 					e(405, {	-- Alzzin the Wildshaper
 						creatureID = 11492,
 						groups = {
@@ -1492,52 +1319,20 @@
 								provider = { "o", 179559 },	-- Felvine Shard
 							}),
 							i(18321),	-- Energetic Rod
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228056, {	-- Fiendish Machete
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18310, {	-- Fiendish Machete
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18328),	-- Shadewood Cloak
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228055, {	-- Energized Chestplate
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18312, {	-- Energized Chestplate
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18309),	-- Gloves of Restoration
 							i(18326),	-- Razor Gauntlets
 							i(18327),	-- Whipvine Cord
 							i(18318),	-- Merciful Greaves
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228699, {	-- Ring of Demonic Guile
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18314, {	-- Ring of Demonic Guile
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							-- #if BEFORE 6.0.2
 							-- This ring may have moved to Zevrim, will need to verify.
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228057, {	-- Ring of Demonic Potency
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18315, {	-- Ring of Demonic Potency
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							-- #endif
 						},
@@ -1606,35 +1401,11 @@
 							i(18463),	-- Ogre Pocket Knife
 							i(18460),	-- Unsophisticated Hand Cannon
 							-- #if AFTER 7.3.5
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18496, {	-- Heliotrope Cloak
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18493, {	-- Bulky Iron Spaulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18494, {	-- Denwatcher's Shoulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							-- #endif
 							i(18450),	-- Robe of Combustion
@@ -1657,35 +1428,11 @@
 						groups = {
 							-- #if BEFORE 7.3.5
 							i(18498),	-- Hedgecutter
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18496, {	-- Heliotrope Cloak
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18493, {	-- Bulky Iron Spaulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18494, {	-- Denwatcher's Shoulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18497),	-- Sublime Wristguards
 							-- #endif
@@ -1733,35 +1480,11 @@
 						-- #if BEFORE 7.3.5
 						groups = {
 							i(18498),	-- Hedgecutter
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18496, {	-- Heliotrope Cloak
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18493, {	-- Bulky Iron Spaulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18494, {	-- Denwatcher's Shoulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18497),	-- Sublime Wristguards
 						},
@@ -1787,62 +1510,22 @@
 						-- #endif
 						groups = {
 							i(18240),	-- Ogre Tannin
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228477, {	-- Pattern: Embroidered Belt of the Archmage (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18414, {	-- Pattern: Belt of the Archmage (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(227910, {	-- Pattern: Brilliant Chromatic Cloak (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18517, {	-- Pattern: Chromatic Cloak (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
 							i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228319, {	-- Pattern: Girdle of Arcane Insight (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18514, {	-- Pattern: Girdle of Insight (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18518),	-- Pattern: Hide of the Wild (RECIPE!)
 							i(18416),	-- Pattern: Inferno Gloves (RECIPE!)
 							i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
 							i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228276, {	-- Pattern: Mastercrafted Shifting Cloak (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18519, {	-- Pattern: Shifting Cloak (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18516, {	-- Pattern: Swift Flight Bracers (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228301, {	-- Pattern: Swift Flight Vambraces (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 						},
 					}),
 					o(179499, {	-- Ogre Tannin Basket
@@ -1871,15 +1554,7 @@
 							-- #if AFTER 7.3.5
 							i(18458),	-- Modest Armguards (7.3.5 - Moved from Guards)
 							-- #endif
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228068, {	-- Mugger's Belt
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18505, {	-- Mugger's Belt
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18507),	-- Boots of the Full Moon
 						},
@@ -1889,29 +1564,9 @@
 						groups = {
 							i(18484),	-- Cho'Rush's Blade
 							i(18483),	-- Mana Channeling Wand
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228064, {	-- Observer's Shield
-								description = "This doesn't appear to have been added yet.",
-								timeline = { CREATED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18485, {	-- Observer's Shield
-								-- #if SEASON_OF_DISCOVERY
-								-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
-								-- timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228062, {	-- Insightful Hood
-								description = "This doesn't appear to have been added yet.",
-								timeline = { CREATED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18490, {	-- Insightful Hood
-								-- #if SEASON_OF_DISCOVERY
-								-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
-								-- timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							-- #if AFTER 7.3.5
 							i(18459),	-- Gallant's Wristguards (7.3.5 - Moved from Guards)
@@ -1922,44 +1577,20 @@
 					e(417, {	-- King Gordok
 						creatureID = 11501,
 						groups = {
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228478, {	-- Barbarous Blade
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18520, {	-- Barbarous Blade
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18523),	-- Brightly Glowing Stone
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228480, {	-- Crown of the Ogre King
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18526, {	-- Crown of the Ogre King
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18525),	-- Bracers of Prosperity
 							-- #if BEFORE 7.3.5
 							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
 							-- #endif
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228479, {	-- Leggings of Destruction
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18524, {	-- Leggings of Destruction
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18521),	-- Grimy Metal Boots
 							i(18522),	-- Band of the Ogre King
-							applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } }),	-- Ace of Warlords
+							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } },	-- Ace of Warlords
 							i(18780, {	-- Top Half of Advanced Armorsmithing: Volume I
 								timeline = { DELETED_4_0_3 },
 							}),
@@ -1974,87 +1605,29 @@
 							i(18499),	-- Barrier Shield
 							i(18479),	-- Carrion Scorpid Helm
 							i(18537),	-- Counterattack Lodestone
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228065, {	-- Cyclone Spaulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18528, {	-- Cyclone Spaulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18529),	-- Elemental Plate Girdle
 							i(18533),	-- Gordok Bracers of Power
 							i(18478),	-- Hyena Hide Jerkin
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228474, {	-- Mindsurge Robe
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18532, {	-- Mindsurge Robe
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18476),	-- Mud Stained Boots
 							i(18475),	-- Oddly Magical Belt
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228070, {	-- Ogre Forged Hauberk
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18530, {	-- Ogre Forged Hauberk
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18482),	-- Ogre Toothpick Shooter
 							i(18495),	-- Redoubt Cloak
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228484, {	-- Rod of the Ogre Magi
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18534, {	-- Rod of the Ogre Magi
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18480),	-- Scarab Plate Helm
 							i(18477),	-- Shaggy Leggings
 							i(18481),	-- Skullcracking Mace
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228469, {	-- Tarnished Elven Ring
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18500, {	-- Tarnished Elven Ring
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228486, {	-- Treant's Bane
-								description = "There's no evidence that this version has dropped yet. @Crieve if you get one to drop.",
-								timeline = { CREATED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18538, {	-- Treant's Bane
-								-- #if SEASON_OF_DISCOVERY
-								-- CRIEVE NOTE: There's no evidence that the reitemized version has dropped yet.
-								-- timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228473, {	-- Unyielding Maul
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18531, {	-- Unyielding Maul
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 						},
 					}),
@@ -2069,15 +1642,7 @@
 				groups = {
 					n(VENDORS, {
 						n(14371, {	-- Shen'dralar Provisioner
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228303, {	-- Pattern: Incandescent Mooncloth Robe (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18487, {	-- Pattern: Mooncloth Robe (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 						}),
 					}),
@@ -2098,7 +1663,7 @@
 								11472,	-- Eldreth Spirit
 							},
 						}),
-						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
+						{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
 							crs = {
 								11471,	-- Eldreth Apparition
 								11475,	-- Eldreth Phantasm
@@ -2107,7 +1672,7 @@
 								11473,	-- Eldreth Spectre
 								11472,	-- Eldreth Spirit
 							},
-						}) } }),
+						}) } },
 						i(18337, {	-- Orphic Bracers
 							crs = {
 								11480,	-- Arcane Aberration
@@ -2142,16 +1707,8 @@
 					e(408, {	-- Magister Kalendris
 						creatureID = 11487,
 						groups = {
-							applyclassicphase(PHASE_FIVE_RECIPES, { progressionKey = "dire-maul.later-recipes", groups = { i(22309) } }),	-- Pattern: Big Bag of Enchantment (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228067, {	-- Elder Magus Pendant
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.later-recipes", groups = { i(22309) } },	-- Pattern: Big Bag of Enchantment (RECIPE!)
 							i(18397, {	-- Elder Magus Pendant
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18374),	-- Flamescarred Shoulders
 							i(18350),	-- Amplifying Cloak
@@ -2162,15 +1719,7 @@
 					n(11467, {	-- Tsu'zee
 						description = "This is a Rare Creature and, as such, is not always present.",
 						groups = {
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228061, {	-- Brightspark Gloves
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18387, {	-- Brightspark Gloves
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18346),	-- Threadbare Trousers
 							i(18345),	-- Murmuring Ring
@@ -2193,31 +1742,10 @@
 						groups = {
 							i(18353),	-- Stoneflower Staff
 							i(18352),	-- Petrified Bark Shield
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228063, {	-- Warpwood Bindings
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18393, {	-- Warpwood Bindings
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228468, {	-- Tanglemoss Leggings
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18390, {	-- Tanglemoss Leggings
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_SEVEN, { progressionKey = "dire-maul.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
-								timeline = { ADDED_1_15_6 },
-							}) } }),
-							-- #endif
+							}),
 						},
 					}),
 					e(409, {	-- Immol'thar
@@ -2235,12 +1763,12 @@
 							i(18391),	-- Eyestalk Cord
 							i(18379),	-- Odious Greaves
 							i(18370),	-- Vigilance Charm
-							applyclassicphase(TBC_PHASE_ONE, { progressionKey = "dire-maul.tbc-pet-training", groups = { i(24345, {	-- Book of Cower IV
+							{ progressionKey = "dire-maul.tbc-pet-training", groups = { i(24345, {	-- Book of Cower IV
 								timeline = { REMOVED_4_0_1 },
 								classes = { DRUID },
 								spellID = 31709,	-- Cower IV
 								rank = 4,
-							}) } }),
+							}) } },
 						},
 					}),
 					n_conditional(14506, {	-- Lord Hel'nurath
@@ -2258,15 +1786,7 @@
 						},
 						timeline = { REMOVED_4_0_3 },
 						groups = {
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228475, {	-- Diabolic Mantle
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18757, {	-- Diabolic Mantle
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18755),	-- Xorothian Firestick
 							i(18756),	-- Dreadguard Protector
@@ -2294,50 +1814,18 @@
 								description = "In the corner of the room that the Prince is in, next to the bookshelves, there is a small chest on the ground that contains the gauntlet. You must kill the Prince in order for the chest to be interactable.",
 								provider = { "o", 179545 },	-- The Prince's Chest
 							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228472, {	-- Distracting Dagger
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18392, {	-- Distracting Dagger
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18396),	-- Mind Carver
 							i(18376),	-- Timeworn Mace
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228471, {	-- Stoneshatter
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18388, {	-- Stoneshatter
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18382),	-- Fluctuating Cloak
 							i(18373),	-- Chestplate of Tranquility
 							i(18375),	-- Bracers of the Eclipse
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228069, {	-- Eldritch Reinforced Legplates
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18380, {	-- Eldritch Reinforced Legplates
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228470, {	-- Silvermoon Leggings
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18378, {	-- Silvermoon Leggings
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18395),	-- Emerald Flame Ring
 						},
@@ -2346,7 +1834,7 @@
 			}),
 		},
 	}),
-})));
+}));
 root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
 	inst(230, {
 		q(35890),	-- Dire Maul (Warpwood Quarter) Reward Quest - Normal completion
```

</details>

### Retail

**Before:** [complete P3 Lua](p3/Dire%20Maul.lua). **After:** [p4/retail.lua](p4/retail.lua).

<details>
<summary>Read the complete final retail.lua</summary>

```lua
-- Generated comparison snapshot (P4): complete retail source.
-- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local WARPWOOD_QUARTER = createHeader({
	readable = "Warpwood Quarter",
	icon = 236292,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL5.." (" .. L.EAST ..")"]]
	},
	description = {
		en = "This part of the instance can be accessed from the eastern-most portal. (right side)",
		-- TODO: de = "",
		es = "Se puede acceder a esta parte de la mazmorra desde el portal más al este. (lado derecho)",
		mx = "Se puede acceder a esta parte del calabozo desde el portal más al este. (lado derecho)",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "该副本的此部分可从最东侧的入口进入。（右侧）",
		tw = "副本的這部分可以從最東邊的傳送門進入。（右側）",
	},
});
local GORDOK_COMMONS = createHeader({
	readable = "Gordok Commons",
	icon = 236695,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL1.." (" .. L.NORTH ..")"]]
	},
	description = {
		en = "This part of the instance can be accessed from the northern-most portal.",
		-- TODO: de = "",
		es = "Se puede acceder a esta parte de la mazmorra desde el portal más al norte.",
		mx = "Se puede acceder a esta parte del calabozo desde el portal más al norte.",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "该副本的此部分可从最北侧的入口进入。",
		tw = "副本的這部分可以從最北邊的傳送門進入。",
	},
});
local CAPITAL_GARDENS = createHeader({
	readable = "Capital Gardens",
	icon = 134162,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL2.." (" .. L.WEST ..")"]]
	},
	description = {
		en = "This part of the instance can be accessed from the western-most portal. (left side)",
		-- TODO: de = "",
		es = "Se puede acceder a esta parte de la mazmorra desde el portal más al oeste. (lado izquierdo)",
		mx = "Se puede acceder a esta parte del calabozo desde el portal más al oeste. (lado izquierdo)",
		-- TODO: fr = "",
		-- TODO: it = "",
		-- TODO: ko = "",
		-- TODO: pt = "",
		-- TODO: ru = "",
		cn = "该副本的此部分可从最西侧的入口进入。（左侧）",
		tw = "副本的這部分可以從最西邊的傳送門進入。（左側）",
	},
});

local DIREMAUL_SUBMAP = function(mapID, headerID, t)
	t.headerID = headerID;
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

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(230, { progressionKey = "dire-maul.common",	-- Dire Maul
		-- #if BEFORE MOP
		lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
		-- #endif
		-- #if BEFORE MOP
		zoneTextAreaIDs = {
			2557,	-- Dire Maul
			2577,	-- Eldreth Row
			3217,	-- "The Maul" now points to Dire Maul.
			-- #if AFTER CATA
			-- This areaID doesn't exist until Cataclysm!
			4992,	-- "Broken Commons" now points to Dire Maul.
			-- #endif
		},
		-- #endif
		timeline = { ADDED_1_2_0 },
		maps = {
			DIRE_MAUL,
			DIRE_MAUL_SHRINE_OF_ELDRETHARR,
		},
		lvl = lvlsquish(44, 44, 15),
		groups = {
			n(ACHIEVEMENTS, {
				achWithRep(5788, FACTION_SHENDRALAR, {	-- Agent of the Shen'dralar [Shen'dralar Exalted]
					-- #if BEFORE WRATH
					icon = 133736,	-- CRIEVE NOTE: The other icon doesn't exist in the game files yet
					-- #endif
					maps = CAPITAL_GARDENS_MAPS,
					timeline = { REMOVED_4_0_3 },
				}),
				ach(644, {	-- King of Dire Maul
					maps = merge(WARPWOOD_QUARTER_MAPS, GORDOK_COMMONS_MAPS, CAPITAL_GARDENS_MAPS),
				}),
				ach(5053, {	-- King of Dire Maul Guild Run
					timeline = { ADDED_4_0_3 },
				}),
			}),
			n(FACTIONS, {
				faction(FACTION_SHENDRALAR, {	-- Shen'dralar
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					-- #if BEFORE 4.0.3
					OnTooltip = OnTooltipForShendralar,
					-- #endif
				}),
				faction(FACTION_STEAMWHEEDLE_CARTEL, {	-- Steamwheedle Cartel
					icon = 133784,
					-- #if BEFORE 4.0.3
					OnTooltip = OnTooltipForSteamweedle,
					-- #endif
					maps = merge(GORDOK_COMMONS_MAPS, {
						FERALAS,
						STRANGLETHORN_VALE,
						TANARIS,
						THE_BARRENS,
						WINTERSPRING,
					}),
					-- #if AFTER 4.0.3
					description = "This is a hidden reputation. It might not count towards reputation achievements.",
					collectible = false,
					-- #endif
				}),
			}),
			n(QUESTS, {
				q(1193, {	-- A Broken Trap
					-- #if BEFORE 4.0.3
					description = "Use the items on the Broken Trap to trap Guard Slip'kik. It takes a few seconds to finish fixing the trap.\n\nYou must activate this trap in order to do the Tribute Run.",
					cost = {
						{ "i", 15994, 1 },	-- Thorium Widget
						{ "i", 3829, 1 },	-- Frost Oil
					},
					-- #endif
					provider = { "o", 179485 },	-- Broken Trap
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					repeatable = true,
					lvl = lvlsquish(56, 56, 15),
				}),
				q(27118, {	-- A Broken Trap
					description = "You must trap Guard Slip'kik in order to qualify for the full Tribute loot table.",
					provider = { "o", 179485 },	-- Broken Trap
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					repeatable = true,
					lvl = lvlsquish(42, 42, 15),
				}),
				q(7463, {	-- Arcane Refreshment
					qg = 14368,	-- Lorekeeper Lydros
					timeline = { REMOVED_4_0_3 },
					maps = merge(WARPWOOD_QUARTER_MAPS, CAPITAL_GARDENS_MAPS),
					classes = { MAGE },
					lvl = 60,
					-- #if BEFORE 4.0.3
					groups = {
						objective(1, {	-- 0/1 Hydrospawn Essence
							provider = { "i", 18299 },	-- Hydrospawn Essence
						}),
						recipe(10140),	-- Conjure Water (Rank 7)
					},
					-- #endif
				}),
				q(27104, {	-- Alzzin the Wildshaper
					qg = 44969,	-- Furgus Warpwood
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Zevrim Thornhoof slain
							provider = { "n", 11490 },	-- Zevrim Thornhoof
						}),
						objective(2, {	-- 0/1 Alzzin the Wildshaper slain
							provider = { "n", 11492 },	-- Alzzin the Wildshaper
						}),
						i(65948),	-- Warpwood Bark Vest
						i(65972),	-- Warpwood Bow
						i(65922),	-- Warpwood Leaf Mantle
						i(65993),	-- Warpwood Shield
					},
				}),
				q(27105, {	-- An Unwelcome Guest
					qg = 44969,	-- Furgus Warpwood
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Hydrospawn Essence
							provider = { "i", 18299 },	-- Hydrospawn Essence
						}),
					},
				}),
				q(7492, {	-- Camp Mojache
					qgs = {
						10879,	-- Harbinger Balthazad
						10880,	-- Warcaller Gorlach
						10881,	-- Bluff Runner Windstrider
					},
					coords = {
						{ 46.6, 64.6, ORGRIMMAR },
						{ 41.4, 54.2, THUNDER_BLUFF },
						{ 69.2, 49.2, UNDERCITY },
					},
					timeline = { REMOVED_4_0_3 },
					maps = { FERALAS },
					races = HORDE_ONLY,
					isBreadcrumb = true,
					lvl = 54,
				}),
				q(5527, {	-- A Reliquary of Purity
					qg = 11801,	-- Rabine Saturna
					coord = { 51.7, 45.1, MOONGLADE },
					description = "The character must first visit Dire Maul, so that the Moonglade NPC will offer a conversation that unlocks the quest.",
					timeline = { REMOVED_4_0_3 },
					maps = { SILITHUS },
					lvl = 56,
					groups = {
						objective(1, {	-- 0/1 Reliquary of Purity
							providers = {
								{ "i", 22201 },	-- Reliquary of Purity
								{ "o", 179565 },	-- Dusty Reliquary
							},
							coord = { 63.2, 55.4, SILITHUS },
						}),
					},
				}),
				q(5526, {	-- Shards of the Felvine
					sourceQuest = 5527,	-- A Reliquary of Purity
					qg = 11801,	-- Rabine Saturna
					coord = { 51.7, 45.1, MOONGLADE },
					timeline = { REMOVED_4_0_3 },
					lvl = 56,
					groups = {
						objective(1, {	-- 0/1 Sealed Reliquary of Purity
							provider = { "i", 18540 },	-- Sealed Reliquary of Purity
							cost = {
								{ "i", 18539, 1 },	-- Reliquary of Purity
								{ "i", 18501, 1 },	-- Felvine Shard
							},
						}),
						i(18535),	-- Milli's Shield
						i(18536),	-- Milli's Lexicon
					},
				}),
				q(7499, {	-- Codex of Defense
					providers = {
						{ "i", 18357 },	-- Codex of Defense
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					timeline = {
						REMOVED_4_0_3,
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { WARRIOR },
					lvl = 54,
					groups = {
						i(18466, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7631, {	-- Dreadsteed of Xoroth
					sourceQuest = 7629,	-- Imp Delivery
					qg = 14436,	-- Mor'zul Bloodbringer
					qi = 18818,	-- Mor'zul's Instructions
					coord = { 12.6, 31.6, BURNING_STEPPES },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { WARLOCK },
					lvl = 60,
					groups = {
						ach(2357, {	-- Dreadsteed of Xoroth
							sourceQuest = 7631,	-- Dreadsteed of Xoroth
							classes = { WARLOCK },
						}),
						mount(23161, {	-- Dreadsteed (MOUNT!)
							providers = {
								{ "n", 14502 },	-- Xorothian Dreadsteed
								{ "n", 14504 },	-- Dreadsteed Spirit
							},
							classes = { WARLOCK },
						}),
					},
				}),
				{	-- Elven Legends
					allianceQuestData = q(7482, {	-- Elven Legends (A)
						qg = 14374,	-- Scholar Runethorn
						coord = { 31.2, 43.9, FERALAS },
					}),
					hordeQuestData = q(7481, {	-- Elven Legends (H)
						qg = 14373,	-- Sage Korolusk
						coord = { 75.3, 43.8, FERALAS },
					}),
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = 54,
					groups = {
						objective(1, {	-- Master Telmius Dreamseeker Found
							provider = { "o", 179544 },	-- Skeletal Remains of Telmius Dreamseeker
						}),
					},
				},
				{ progressionKey = "dire-maul.recipe-quests", groups = { q(7649, {	-- Enchanted Thorium Platemail: Volume I
					providers = {
						-- #IF BEFORE 4.0.3
						{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
						-- #ENDIF
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					timeline = { REMOVED_4_0_3 },
					maps = {
						236,	-- Capital Gardens
						BLACKROCK_SPIRE,
						LBRS_SKITTERWEB_TUNNELS,
						LBRS_HORDEMAR_CITY,
						LBRS_HALL_OF_BLACKHAND,
						LBRS_HALYCONS_LAIR,
						LBRS_CHAMBER_OF_BATTLE,
					},
					cost = {
						{ "i", 18779, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume I
						{ "i", 18780, 1 },	-- Top Half of Advanced Armorsmithing: Volume I
					},
					requireSkill =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					groups = {
						i(12727),	-- Plans: Enchanted Thorium Breastplate (RECIPE!)
					},
				}),
				q(7650, {	-- Enchanted Thorium Platemail: Volume II
					providers = {
						-- #IF BEFORE 4.0.3
						{ "i", 18770 },	-- Enchanted Thorium Platemail (Volume II)
						-- #ENDIF
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					timeline = { REMOVED_4_0_3 },
					maps = {
						236,	-- Capital Gardens
						STRATHOLME, SCHOLOMANCE
					},
					cost = {
						{ "i", 18781, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume II
						{ "i", 18782, 1 },	-- Top Half of Advanced Armorsmithing: Volume II
					},
					requireSkill =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					lvl = 50,
					groups = {
						i(12726),	-- Plans: Enchanted Thorium Leggings (RECIPE!)
					},
				}),
				q(7651, {	-- Enchanted Thorium Platemail: Volume III
					providers = {
						-- #if BEFORE 4.0.3
						{ "i", 18771 },	-- Enchanted Thorium Platemail (Volume III)
						-- #endif
						{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
					},
					timeline = { REMOVED_4_0_3 },
					maps = merge(CAPITAL_GARDENS_MAPS, {
						BLACKROCK_SPIRE,
						LBRS_SKITTERWEB_TUNNELS,
						LBRS_HORDEMAR_CITY,
						LBRS_HALL_OF_BLACKHAND,
						LBRS_HALYCONS_LAIR,
						LBRS_CHAMBER_OF_BATTLE,
						STRATHOLME
					}),
					cost = {
						{ "i", 18783, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume III
						{ "i", 18784, 1 },	-- Top Half of Advanced Armorsmithing: Volume III
					},
					requireSkill =
						-- #if AFTER TBC
						BLACKSMITHING,
						-- #else
						9788,	-- Armorsmith
						-- #endif
					lvl = 50,
					groups = {
						i(12725),	-- Plans: Enchanted Thorium Helm (RECIPE!)
					},
				}) } },
				q(7494, {	-- Feathermoon Stronghold
					qgs = {
						2198,	-- Crier Goodman
						10877,	-- Courier Hammerfall
						10878,	-- Herald Moonstalker
					},
					coords = {
						{ 39.0, 63.6, DARNASSUS },
						{ 30.5, 67.0, IRONFORGE },
						{ 54.8, 62.6, STORMWIND_CITY },
					},
					timeline = { REMOVED_4_0_3 },
					maps = { FERALAS },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = 54,
				}),
				q(5525, {	-- Free Knot!
					-- #if BEFORE 4.0.3
					description = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
					cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
					-- #endif
					qg = 14338,	-- Knot Thimblejack
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = 54,
				}),
				q(7429, {	-- Free Knot! (repeatable)
					-- #if BEFORE 4.0.3
					description = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
					cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
					-- #endif
					sourceQuest = 5525,	-- Free Knot!
					qg = 14338,	-- Knot Thimblejack
					maxReputation = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					repeatable = true,
					lvl = 54,
				}),
				q(7505, {	-- Frost Shock and You
					providers = {
						{ "i", 18363 },	-- Frost Shock and You
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					-- #if BEFORE TBC
					races = HORDE_ONLY,
					-- #endif
					classes = { SHAMAN },
					lvl = 54,
					groups = {
						i(18471),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7498, {	-- Garona: A Study on Stealth and Treachery
					providers = {
						{ "i", 18356 },	-- Garona: A Study on Stealth and Treachery
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					timeline = {
						REMOVED_4_0_3,
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { ROGUE },
					lvl = 54,
					groups = {
						i(18465, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7502, {	-- Harnessing Shadows
					providers = {
						{ "i", 18360 },	-- Harnessing Shadows
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { WARLOCK },
					lvl = 54,
					groups = {
						i(18467),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(7504, {	-- Holy Bologna: What the Light Won't Tell You
					providers = {
						{ "i", 18362 },	-- Holy Bologna: What the Light Won't Tell You
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { PRIEST },
					lvl = 54,
					groups = {
						i(18469),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(27125, {	-- King of the Gordok [Alliance]
					sourceQuest = 27133,	-- Eyes in the Sky
					qg = 45040,	-- Druid of the Talon
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						objective(1, {	-- 0/1 King Gordok slain
							provider = { "n", 11501 },	-- King Gordok
						}),
						i(65976),	-- Pauldrons of Tribute
						i(65927),	-- Slippers of Tribute
						i(65997),	-- Tribute Gun
						i(65952),	-- Wristbands of Tribute
					},
				}),
				q(27128, {	-- King of the Gordok [Horde]
					qg = 45052,	-- Stonemaul Ogre
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					races = HORDE_ONLY,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						objective(1, {	-- 0/1 King Gordok slain
							provider = { "n", 11501 },	-- King Gordok
						}),
						i(66036),	-- Pauldrons of Tribute
						i(66018),	-- Slippers of Tribute
						i(66043),	-- Tribute Gun
						i(66027),	-- Wristbands of Tribute
					},
				}),
				q(7488, {	-- Lethtendris's Web [Alliance]
					sourceQuest = 7494,	-- Feathermoon Stronghold
					qg = 7877,	-- Latronicus Moonspear
					coord = { 30.4, 46.2, FERALAS },
					timeline = { REMOVED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					races = ALLIANCE_ONLY,
					lvl = 54,
					groups = {
						objective(1, {	-- 0/1 Lethtendris's Web
							provider = { "i", 18426 },	-- Lethtendris's Web
						}),
						i(18491),	-- Lorespinner
					},
				}),
				q(7489, {	-- Lethtendris's Web [Horde]
					sourceQuest = 7492,	-- Camp Mojache
					qg = 7776,	-- Talo Thornhoof
					coord = { 76.2, 43.8, FERALAS },
					timeline = { REMOVED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					races = HORDE_ONLY,
					lvl = 54,
					groups = {
						objective(1, {	-- 0/1 Lethtendris's Web
							provider = { "i", 18426 },	-- Lethtendris's Web
						}),
						i(18491),	-- Lorespinner
					},
				}),
				q(27108, {	-- Lethtendris's Web
					qg = 44971,	-- "Ambassador" Dagg'thol
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Lethtendris's Web
							provider = { "i", 18426 },	-- Lethtendris's Web
						}),
					},
				}),
				q(7484, {	-- Libram of Focus
					sourceQuests = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					qg = 14368,	-- Lorekeeper Lydros
					maxReputation = { FACTION_SHENDRALAR, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					cost = {
						{ "i", 18333, 1 },	-- Libram of Focus
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 4 },	-- Large Brilliant Shard
						{ "i", 12753, 2 },	-- Skin of Shadow
					},
					repeatable = true,
					lvl = 57,
					groups = {
						i(18330),	-- Arcanum of Focus
					},
				}),
				q(7485, {	-- Libram of Protection
					sourceQuests = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					qg = 14368,	-- Lorekeeper Lydros
					maxReputation = { FACTION_SHENDRALAR, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					cost = {
						{ "i", 18334, 1 },	-- Libram of Protection
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 12735, 1 },	-- Frayed Abomination Stitching
					},
					repeatable = true,
					lvl = 57,
					groups = {
						i(18331),	-- Arcanum of Protection
					},
				}),
				q(7483, {	-- Libram of Rapidity
					sourceQuests = {
						7481,	-- Elven Legends
						7482,	-- Elven Legends
					},
					qg = 14368,	-- Lorekeeper Lydros
					maxReputation = { FACTION_SHENDRALAR, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					cost = {
						{ "i", 18332, 1 },	-- Libram of Rapidity
						{ "i", 18335, 1 },	-- Pristine Black Diamond
						{ "i", 14344, 2 },	-- Large Brilliant Shard
						{ "i", 12938, 2 },	-- Blood of Heroes
					},
					repeatable = true,
					lvl = 57,
					groups = {
						i(18329),	-- Arcanum of Rapidity
					},
				}),
				q(7441, {	-- Pusillin and the Elder Azj'Tordin
					qg = 14355,	-- Azj'Tordin
					coord = { 76.7, 37.2, FERALAS },
					timeline = { REMOVED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = 54,
					groups = {
						objective(1, {	-- 0/1 Book of Incantations
							provider = { "i", 18261 },	-- Book of Incantations
						}),
						i(18410),	-- Sprinter's Sword
						i(18411),	-- Spry Boots
					},
				}),
				q(27107, {	-- Pusillin The Thief
					qg = 44971,	-- "Ambassador" Dagg'thol
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Book of Incantations
							provider = { "i", 18261 },	-- Book of Incantations
						}),
					},
				}),
				q(27129, {	-- Saving Warpwood [A]
					qg = 40032,	-- Telaron Windflight
					coord = { 50.7, 17.2, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
				}),
				q(27130, {	-- Saving Warpwood [H]
					qg = 7875,	-- Hadoken Swiftstrider
					coord = { 74.9, 42.4, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				q(27103, {	-- Shards of the Felvine
					qg = 44969,	-- Furgus Warpwood
					timeline = { ADDED_4_0_3 },
					maps = WARPWOOD_QUARTER_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Sealed Reliquary of Purity
							provider = { "i", 18540 },	-- Sealed Reliquary of Purity
							cost = {
								{ "i", 18539, 1 },	-- Reliquary of Purity
								{ "i", 18501, 1 },	-- Felvine Shard
							},
						}),
					},
				}),
				q(7500, {	-- The Arcanist's Cookbook
					providers = {
						{ "i", 18358 },	-- The Arcanist's Cookbook
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					timeline = {
						REMOVED_4_0_3,
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { MAGE },
					lvl = 54,
					groups = {
						i(18468, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27112, {	-- The Cursed Remains
					qg = 44991,	-- Estulan
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
					groups = {
						objective(1, {	-- 0/1 Magister Kalendris slain
							provider = { "n", 11487 },	-- Magister Kalendris
						}),
						objective(2, {	-- 0/1 Illyanna Ravenoak slain
							provider = { "n", 11488 },	-- Illyanna Ravenoak
						}),
					},
				}),
				q(27109, {	-- The Warped Defender
					qg = 44999,
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
					groups = {
						objective(1, {	-- 0/1 Tendris Warpwood slain
							provider = { "n", 11489 },	-- Tendris Warpwood
						}),
					},
				}),
				q(7506, {	-- The Emerald Dream...
					providers = {
						{ "i", 18364 },	-- The Emerald Dream
						{ "n", 14381 },	-- Lorekeeper Javon
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { DRUID },
					lvl = 54,
					groups = {
						i(18470),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(5518, {	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = {
						{ "i", 14048, 4 },	-- Bolt of Runecloth
						{ "i", 8170, 8 },	-- Rugged Leather
						{ "i", 14341, 2 },	-- Rune Thread
						{ "i", 18240, 1 },	-- Ogre Tannin
					},
					lvl = 56,
					groups = {
						r(22813, {	-- Gordok Ogre Suit
							requireSkill = TAILORING,
						}),
						r(22815, {	-- Gordok Ogre Suit
							requireSkill = LEATHERWORKING,
						}),
						i(18258, {	-- Gordok Ogre Suit
							description = "Before using this, clear the trash before Captain Kromcrush. Tell your group to stay back while you talk to Kromcrush with this disguise on. If they aggro him, your group will fail the Tribute Run.",
						}),
					},
				}),
				q(5519, {	-- The Gordok Ogre Suit
					sourceQuest = 5518,	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					maxReputation = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = {
						{ "i", 14048, 4 },	-- Bolt of Runecloth
						{ "i", 8170, 8 },	-- Rugged Leather
						{ "i", 14341, 2 },	-- Rune Thread
						{ "i", 18240, 1 },	-- Ogre Tannin
					},
					repeatable = true,
					lvl = 56,
					groups = { i(18258) },	-- Gordok Ogre Suit
				}),
				q(27119, {	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = { { "i", 18240, 1 } },	-- Ogre Tannin
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18258),	-- Gordok Ogre Suit
					},
				}),
				q(27120, {	-- The Gordok Ogre Suit
					sourceQuest = 27119,	-- The Gordok Ogre Suit
					qg = 14338,	-- Knot Thimblejack
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					cost = { { "i", 18240, 1 } },	-- Ogre Tannin
					repeatable = true,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18258),	-- Gordok Ogre Suit
					},
				}),
				q(5528, {	-- The Gordok Taste Test
					description = "With Stomper Kreeg left alive, kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.\n\nHe sells these items after you have completed the quest and if you are Friendly with him.",
					qg = 14322,	-- Stomper Kreeg <The Drunk>
					timeline = { REMOVED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = 56,
					groups = {
						i(18269),	-- Gordok Green Grog
						i(18284),	-- Kreeg's Stout Beatdown
					},
				}),
				q(27114, {	-- The Gordok Taste Test
					description = "With Stomper Kreeg left alive, kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.\n\nHe sells these items after you have completed the quest and if you are Friendly with him.",
					qg = 14322,	-- Stomper Kreeg <The Drunk>
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18269),	-- Gordok Green Grog
						i(18284),	-- Kreeg's Stout Beatdown
					},
				}),
				q(7503, {	-- The Greatest Race of Hunters
					providers = {
						{ "i", 18361 },	-- The Greatest Race of Hunters
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					classes = { HUNTER },
					lvl = 54,
					groups = {
						i(18473),	-- Royal Seal of Eldre'Thalas
					},
				}),
				q(27131, {	-- The Highborne [A]
					qg = 40032,	-- Telaron Windflight
					coord = { 50.7, 17.2, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
				}),
				q(27132, {	-- The Highborne [H]
					qg = 7875,	-- Hadoken Swiftstrider
					coord = { 74.9, 42.4, FERALAS },
					timeline = { ADDED_4_0_3 },
					races = HORDE_ONLY,
					isBreadcrumb = true,
				}),
				q(7501, {	-- The Light and How To Swing It
					providers = {
						{ "i", 18359 },	-- The Light and How to Swing It
						{ "n", 14382 },	-- Lorekeeper Mykos
					},
					timeline = {
						REMOVED_4_0_3,
					},
					maps = CAPITAL_GARDENS_MAPS,
					classes = { PALADIN },
					lvl = 54,
					groups = {
						i(18472, {	-- Royal Seal of Eldre'Thalas
							timeline = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7461, {	-- The Madness Within
					qg = 14358,	-- Shen'dralar Ancient
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = 56,
					groups = {
						objective(1, {	-- 0/1 Immol'thar slain
							provider = { "n", 11496 },	-- Immol'thar
						}),
						objective(2, {	-- 0/1 Prince Tortheldrin slain
							provider = { "n", 11486 },	-- Prince Tortheldrin
						}),
					},
				}),
				q(27110, {	-- The Madness Within
					qg = 14358,	-- Shen'dralar Ancient
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(36, 36, 15),
					groups = {
						objective(1, {	-- 0/1 Immol'thar slain
							provider = { "n", 11496 },	-- Immol'thar
						}),
						objective(2, {	-- 0/1 Prince Tortheldrin slain
							provider = { "n", 11486 },	-- Prince Tortheldrin
						}),
					},
				}),
				q(27113, {	-- The Shen'dralar Ancient
					qg = 44991,	-- Estulan
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
				}),
				q(7877, {	-- The Treasure of the Shen'dralar
					sourceQuest = 7461,	-- The Madness Within
					providers = {
						{ "n",  14358 },	-- Shen'dralar Ancient
						{ "o", 179517 },	-- Treasure of the Shen'dralar
					},
					timeline = { REMOVED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = 57,
					groups = {
						i(18421),	-- Backwood Helm
						i(18420),	-- Bonecrusher
						i(18424),	-- Sedge Boots
					},
				}),
				q(27111, {	-- The Treasure of the Shen'dralar
					sourceQuest = 27110,	-- The Madness Within
					providers = {
						{ "n",  14358 },	-- Shen'dralar Ancient
						{ "o", 179517 },	-- Treasure of the Shen'dralar
					},
					timeline = { ADDED_4_0_3 },
					maps = CAPITAL_GARDENS_MAPS,
					lvl = lvlsquish(39, 39, 15),
					groups = {
						i(65949),	-- Dire Maul
						i(65973),	-- Grimm's Cigar Cutter
						i(65924),	-- Shen'dralar Trident
						i(65994),	-- Staff of Athen'a
					},
				}),
				q(7703, {	-- Unfinished Gordok Business
					description = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
					qg = 14325,	-- Captain Kromcrush
					timeline = { REMOVED_4_0_3 },
					maps = merge(WARPWOOD_QUARTER_MAPS, GORDOK_COMMONS_MAPS, CAPITAL_GARDENS_MAPS),
					lvl = 60,
					-- #if BEFORE 4.0.3
					groups = {
						objective(1, {	-- 0/1 Gauntlet of Gordok Might
							provider = { "i", 18336 },	-- Gauntlet of Gordok Might
						}),
						i(18367),	-- Gordok's Gauntlets
						i(18368),	-- Gordok's Gloves
						i(18366),	-- Gordok's Handguards
						i(18369),	-- Gordok's Handwraps
					},
					-- #endif
				}),
				q(27124, {	-- Unfinished Gordok Business
					description = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
					qg = 14325,	-- Captain Kromcrush
					timeline = { ADDED_4_0_3 },
					maps = GORDOK_COMMONS_MAPS,
					lvl = lvlsquish(42, 42, 15),
					groups = {
						i(18367),	-- Gordok's Gauntlets
						i(18368),	-- Gordok's Gloves
						i(18366),	-- Gordok's Handguards
						i(18369),	-- Gordok's Handwraps
					},
				}),
			}),
			n(TREASURES, {
				o(179526, {	-- Warpwood Pod
					i(18255),	-- Runn Tum Tuber
					i(18297),	-- Thornling Seed
				}),
			}),
			n(ZONE_DROPS, {
				maps = ALL_DIREMAUL_MAPS,
				groups = {
					i(12662),	-- Demonic Rune
					i(18640),	-- Happy Fun Rock
					i(18333, {	-- Libram of Focus
						-- #if AFTER 4.0.3
						description = "This still drops despite being completely worthless.",
						-- #endif
					}),
					i(18334, {	-- Libram of Protection
						-- #if AFTER 4.0.3
						description = "This still drops despite being completely worthless.",
						-- #endif
					}),
					i(18332, {	-- Libram of Rapidity
						-- #if AFTER 4.0.3
						description = "This still drops despite being completely worthless.",
						-- #endif
					}),
					{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
						timeline = { REMOVED_4_0_3 },
						-- #if BEFORE 4.0.3
						crs = {
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
					}) } },
				},
			}),
			n(COMMON_BOSS_DROPS, {
				provider = { "o", 179547 },	-- A Dusty Tome
				-- #if BEFORE 4.0.3
				description = "The following items can drop from any boss in Dire Maul and also from Dusty Tomes on the ground.",
				-- #endif
				maps = ALL_DIREMAUL_MAPS,
				groups = {
					i(18357, {	-- Codex of Defense
						timeline = {
							REMOVED_4_0_3,
						},
					}),
					i(18360, {	-- Harnessing Shadows
						timeline = { REMOVED_4_0_3 },
					}),
					i(18363, {	-- Frost Shock and You
						timeline = { REMOVED_4_0_3 },
					}),
					i(18356, {	-- Garona: A Study on Stealth and Treachery
						timeline = {
							REMOVED_4_0_3,
						},
					}),
					i(18362, {	-- Holy Bologna: What the Light Won't Tell You
						timeline = { REMOVED_4_0_3 },
					}),
					i(18401, {	-- Nostro's Compendium of Dragon Slaying
						timeline = {
							REMOVED_4_0_3,
						},
					}),
					i(18358, {	-- The Arcanist's Cookbook
						timeline = {
							REMOVED_4_0_3,
						},
					}),
					i(18364, {	-- The Emerald Dream
						timeline = { REMOVED_4_0_3 },
					}),
					i(18361, {	-- The Greatest Race of Hunters
						timeline = { REMOVED_4_0_3 },
					}),
					i(18359, {	-- The Light and How to Swing It
						timeline = {
							REMOVED_4_0_3,
						},
					}),
				},
			}),
			o(179547, {	-- A Dusty Tome
				maps = ALL_DIREMAUL_MAPS,
				groups = {
					i(18365, {	-- A Thoroughly Read Copy of "Nat Pagle's Guide to Extreme Anglin'."
						-- #if BEFORE 7.0.3
						lore = "This item is utterly worthless, however there was a rumor that this item could be used to obtain the original Ashbringer via fishing.",
						-- #endif
						description =
							-- #if AFTER 7.0.3
							"Required for the Retribution Paladin Hidden Artifact Appearance. This can be found in various places throughout all the wings of Dire Maul.\n\n North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\n East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\n West: By the southern generator in Immol'thar's room.",
							-- #else
							"This can be found in various places throughout all the wings of Dire Maul.\n\n North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\n East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\n West: By the southern generator in Immol'thar's room.",
							-- #endif
					}),
				},
			}),
			DIREMAUL_SUBMAP(239, WARPWOOD_QUARTER, {	-- Warpwood Quarter (East)
				coord = { 64.83, 30.24, FERALAS },	-- Dire Maul [East]
				maps = WARPWOOD_QUARTER_MAPS,
				groups = {
					n(ZONE_DROPS, {
						i(18289, {	-- Barbed Thorn Necklace
							crs = {
								11461,	-- Warpwood Guardian
								11462,	-- Warpwood Treant
								13021,	-- Warpwood Crusher
								11464,	-- Warpwood Tangler
								11465,	-- Warpwood Stomper
							},
						}),
						i(18296, {	-- Marksman Bands
							crs = {
								11454,	-- Wildspawn Betrayer
								11455,	-- Wildspawn Felsworn
								11457,	-- Wildspawn Hellcaller
								11452,	-- Wildspawn Rogue
								11451,	-- Wildspawn Satyr
								11456,	-- Wildspawn Shadowstalker
							},
						}),
						i(18295, {	-- Phasing Boots
							cr = 13196,	-- Phase Lasher
						}),
						i(18603, {	-- Satyr Blood
							timeline = { REMOVED_4_0_3 },
							classes = { WARLOCK },
							-- #if BEFORE 4.0.3
							crs = {
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
							crs = {
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
						description = "Talk to him and then chase him. Eventually he will go up a ramp and become killable.",
						groups = {
							i(18249, {	-- Crescent Key
								description =
									-- #if AFTER 5.2.0
									"This key no longer has any practical use, and disappears from the inventory like a conjured item.",	-- Removed with 4.0.3, and started dropping again with 5.2.0 for no apparent reason.
									-- #elseif AFTER 4.0.3
									"This key no longer has any practical use.",
									-- #else
									"This key is required to enter the Gordok Commons and Capital Gardens.",
									-- #endif
							}),
							i(18261),	-- Book of Incantations
							i(207297, {	-- Grimoire of the Felblaze Imp (CI!)
								timeline = { ADDED_10_1_5 },
							}),
							i(18267),	-- Recipe: Runn Tum Tuber Surprise (RECIPE!)
							i(18255),	-- Runn Tum Tuber
						},
					}),
					n(14349, {	-- Pimgib
						i(18354, {	-- Pimgib's Collar
							classes = { WARLOCK },
						}),
					}),
					e(404, {	-- Lethtendris
						creatureID = 14327,
						groups = {
							i(18426),	-- Lethtendris's Web
							i(18311, {	-- Quel'dorei Channeling Rod
							}),
							i(18301),	-- Lethtendris' Wand
							i(18325),	-- Felhide Cap
							i(18302),	-- Band of Vigor
						},
					}),
					e(403, {	-- Hydrospawn
						creatureID = 13280,
						groups = {
							i(18299),	-- Hydrospawn Essence
							i(18324, {	-- Waveslicer
							}),
							i(18317, {	-- Tempest Talisman
							}),
							i(18305),	-- Breakwater Legguards
							i(18307),	-- Riptide Shoes
							i(18322),	-- Waterspout Boots
							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
						},
					}),
					e(402, {	-- Zevrim Thornhoof
						creatureID = 11490,
						groups = {
							i(18323, {	-- Satyr's Bow
							}),
							i(18308),	-- Clever Hat
							i(18319, {	-- Fervent Helm
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
						description = "Talk to him for him to break down the door.",
					}),
					{ progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
						description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
						-- #if BEFORE 6.0.2
						cost = {
							{ "i", 22050, 1 },	-- Brazier of Beckoning [Isalien]
						},
						-- #endif
						provider = { "i", 22057 },	-- Brazier of Invocation
						-- #if AFTER 4.0.3
						sourceQuest = 8996,	-- Return to Bodley
						u_sqs = true,	-- remove the u flag if sourcequests are completed
						-- #endif
						timeline = { REMOVED_4_0_3 },
						groups = {
							objective(2, {	-- 0/1 Left Piece of Lord Valthalak's Amulet
								questID = 8967,	-- The Left Piece of Lord Valthalak's Amulet [WARLOCK, DRUID]
								provider = { "i", 21984 },	-- Left Piece of Lord Valthalak's Amulet
							}),
							objective(2, {	-- 0/1 Right Piece of Lord Valthalak's Amulet
								questID = 8990,	-- The Right Piece of Lord Valthalak's Amulet [WARRIOR, ROGUE]
								provider = { "i", 22046 },	-- Right Piece of Lord Valthalak's Amulet
							}),
							i(22315),	-- Hammer of Revitalization
							i(22314),	-- Huntsman's Harpoon
							i(22304, {	-- Ironweave Gloves
							}),
							i(22472),	-- Boots of Ferocity
							i(22401, {	-- Libram of Hope
								timeline = { DELETED_5_0_4 },
							}),
							i(22345, {	-- Totem of Rebirth
								timeline = { DELETED_5_0_4 },
							}),
						},
					}) } },
					e(405, {	-- Alzzin the Wildshaper
						creatureID = 11492,
						groups = {
							i(18501, {	-- Felvine Shard
								description = "Spawns under the vines near the last boss in Dire Maul East.",
								provider = { "o", 179559 },	-- Felvine Shard
							}),
							i(18321),	-- Energetic Rod
							i(18310, {	-- Fiendish Machete
							}),
							i(18328),	-- Shadewood Cloak
							i(18312, {	-- Energized Chestplate
							}),
							i(18309),	-- Gloves of Restoration
							i(18326),	-- Razor Gauntlets
							i(18327),	-- Whipvine Cord
							i(18318),	-- Merciful Greaves
							i(18314, {	-- Ring of Demonic Guile
							}),
							-- #if BEFORE 6.0.2
							-- This ring may have moved to Zevrim, will need to verify.
							i(18315, {	-- Ring of Demonic Potency
							}),
							-- #endif
						},
					}),
				},
			}),
			DIREMAUL_SUBMAP(235, GORDOK_COMMONS, {		-- Gordok Commons (North)
				coord = { 62.48, 24.48, FERALAS },	-- Dire Maul [North]
				maps = GORDOK_COMMONS_MAPS,
				-- #if BEFORE 4.0.3
				cost = { { "i", 18249, 1 } },	-- Crescent Key
				-- #endif
				groups = {
					n(ZONE_DROPS, {
						i(18250, {	-- Gordok Shackle Key
							timeline = { REMOVED_4_0_3, ADDED_10_1_5 },
							-- #if BEFORE 4.0.3
							description = "NOTE: Do NOT Free Knot if you are doing a Tribute Run. He runs away.",
							-- #endif
							crs = {
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
					}),
					n(QUESTS, {
						q(77194, {	-- Free Knot!
							description = "This quest becomes obtainable once a Gordok Shackle Key is looted. Completing it increases your reputation with the Steamwheedle Cartel without lowering your reputation with the Bloodsail Buccaneers.",
							qg = 14338,	-- Knot Thimblejack
							timeline = { ADDED_10_1_5 },
							cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
							repeatable = true,
							groups = {
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
					}),
					n(COMMON_BOSS_DROPS, {
						description = "The following items can drop from any of the guards.",
						crs = {
							14326,	-- Guard Mol'dar
							14321,	-- Guard Fengus
							14323,	-- Guard Slip'kik
						},
						groups = {
							-- #if AFTER 7.3.5
							i(18498),	-- Hedgecutter
							-- #endif
							i(18462),	-- Jagged Bone Fist
							i(18463),	-- Ogre Pocket Knife
							i(18460),	-- Unsophisticated Hand Cannon
							-- #if AFTER 7.3.5
							i(18496, {	-- Heliotrope Cloak
							}),
							i(18493, {	-- Bulky Iron Spaulders
							}),
							i(18494, {	-- Denwatcher's Shoulders
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
						creatureID = 14326,
						-- #if BEFORE 4.0.3
						description = "If you do not have a way to open the inner door, you can kill him for the Inner Door Key.\n\nDoing so will invalidate your Tribute Run.",
						-- #endif
						groups = {
							-- #if BEFORE 7.3.5
							i(18498),	-- Hedgecutter
							i(18496, {	-- Heliotrope Cloak
							}),
							i(18493, {	-- Bulky Iron Spaulders
							}),
							i(18494, {	-- Denwatcher's Shoulders
							}),
							i(18497),	-- Sublime Wristguards
							-- #endif
							i(18268, {	-- Gordok Inner Door Key
								timeline = { DELETED_4_0_3 },
							}),
						},
					}),
					e(412, {	-- Stomper Kreeg
						creatureID = 14322,
						groups = {
							i(18425),	-- Kreeg's Mug
							-- #if AFTER 6.0.2
							i(18464),	-- Gordok Nose Ring
							-- #endif
							n(VENDORS, {
								description = "After becoming the king, you can come back to Kreeg to buy some drinks.",
								groups = {
									i(18269),	-- Gordok Green Grog
									i(18284),	-- Kreeg's Stout Beatdown
									i(18288),	-- Molasses Firewater
									i(18287),	-- Evermurky
								},
							}),
						},
					}),
					e(413, {	-- Guard Fengus
						creatureID = 14321,
						description =
							-- #if AFTER 4.0.3
							"Avoid him. His chest is empty.",
							-- #else
							"Avoid him and loot his chest for a key to open the door.",
							-- #endif
						-- #if BEFORE 4.0.3
						groups = {
							i(18266, {	-- Gordok Courtyard Key
								provider = { "o", 179516 },	-- Fengus's Chest
							}),
						},
						-- #endif
					}),
					e(414, {	-- Guard Slip'kik
						creatureID = 14323,
						-- #if BEFORE 7.3.5
						groups = {
							i(18498),	-- Hedgecutter
							i(18496, {	-- Heliotrope Cloak
							}),
							i(18493, {	-- Bulky Iron Spaulders
							}),
							i(18494, {	-- Denwatcher's Shoulders
							}),
							i(18497),	-- Sublime Wristguards
						},
						-- #endif
					}),
					n(14338, {	-- Knot Thimblejack
						timeline = { ADDED_10_1_5 },
						groups = {
							r(22813, {	-- Gordok Ogre Suit
								requireSkill = TAILORING,
								sourceQuest = 27119,	-- The Gordok Ogre Suit
							}),
							r(22815, {	-- Gordok Ogre Suit
								requireSkill = LEATHERWORKING,
								sourceQuest = 27119,	-- The Gordok Ogre Suit
							}),
						},
					}),
					o(179501, {	-- Knot Thimblejack's Cache
						sourceQuest = 5525,	-- Free Knot!
						-- #if BEFORE 4.0.3
						cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
						-- #endif
						groups = {
							i(18240),	-- Ogre Tannin
							i(18414, {	-- Pattern: Belt of the Archmage (RECIPE!)
							}),
							i(18517, {	-- Pattern: Chromatic Cloak (RECIPE!)
							}),
							i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
							i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
							i(18514, {	-- Pattern: Girdle of Insight (RECIPE!)
							}),
							i(18518),	-- Pattern: Hide of the Wild (RECIPE!)
							i(18416),	-- Pattern: Inferno Gloves (RECIPE!)
							i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
							i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
							i(18519, {	-- Pattern: Shifting Cloak (RECIPE!)
							}),
							i(18516, {	-- Pattern: Swift Flight Bracers (RECIPE!)
							}),
						},
					}),
					o(179499, {	-- Ogre Tannin Basket
						description = "Beware! Looting the Ogre Tannin will cause a Gordok Bushwacker to spawn. Quote is homage to the movie The Silence of the Lambs.\n\n'NO! It puts the tannin in the basket, or it gets the mallet again!'",
						groups = {
							i(18240),	-- Ogre Tannin
						},
					}),
					e(415, {	-- Captain Kromcrush
						creatureID = 14325,
						description =
							-- #if AFTER 4.0.3
							"Use the Gordok Ogre Suit to skip him for the Tribute Run. (Talk to him)",
							-- #else
							"In order to get to this boss, you must use the Inner Door Key or have an engineer open the door using a Seaforium Charge.\n\nUse the Gordok Ogre Suit to skip him. (talk to him)",
							-- #endif
						-- #if BEFORE 4.0.3
						cost = {
							{ "i", 18268, 1 },	-- Gordok Inner Door Key
							{ "i", 18258, 1 },	-- Gordok Ogre Suit
						},
						-- #endif
						groups = {
							i(18502),	-- Monstrous Glaive
							i(18503),	-- Kromcrush's Chestplate
							-- #if AFTER 7.3.5
							i(18458),	-- Modest Armguards (7.3.5 - Moved from Guards)
							-- #endif
							i(18505, {	-- Mugger's Belt
							}),
							i(18507),	-- Boots of the Full Moon
						},
					}),
					e(416, {	-- Cho'Rush the Observer
						creatureID = 14324,
						groups = {
							i(18484),	-- Cho'Rush's Blade
							i(18483),	-- Mana Channeling Wand
							i(18485, {	-- Observer's Shield
							}),
							i(18490, {	-- Insightful Hood
							}),
							-- #if AFTER 7.3.5
							i(18459),	-- Gallant's Wristguards (7.3.5 - Moved from Guards)
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved from King Gordok)
							-- #endif
						},
					}),
					e(417, {	-- King Gordok
						creatureID = 11501,
						groups = {
							i(18520, {	-- Barbarous Blade
							}),
							i(18523),	-- Brightly Glowing Stone
							i(18526, {	-- Crown of the Ogre King
							}),
							i(18525),	-- Bracers of Prosperity
							-- #if BEFORE 7.3.5
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
							-- #endif
							i(18524, {	-- Leggings of Destruction
							}),
							i(18521),	-- Grimy Metal Boots
							i(18522),	-- Band of the Ogre King
							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } },	-- Ace of Warlords
							i(18780, {	-- Top Half of Advanced Armorsmithing: Volume I
								timeline = { DELETED_4_0_3 },
							}),
						},
					}),
					o(179564, {	-- Gordok Tribute Chest
						description = "Speak with Mizzle after killing |cFFFFD700King Gordok|r to spawn the Tribute Chest.\n\nA full Tribute Run (5 items) requires leaving all bosses alive except King Gordok, and also requires activating the Frost Trap & fooling Kromcrush with the Ogre Suit, granted by the Goblin near the trap.",
						provider = { "n", 14353 },	-- Mizzle the Crafty
						modelScale = 3,
						groups = {
							i(18655),	-- Schematic: Major Recombobulator (RECIPE!)
							i(18499),	-- Barrier Shield
							i(18479),	-- Carrion Scorpid Helm
							i(18537),	-- Counterattack Lodestone
							i(18528, {	-- Cyclone Spaulders
							}),
							i(18529),	-- Elemental Plate Girdle
							i(18533),	-- Gordok Bracers of Power
							i(18478),	-- Hyena Hide Jerkin
							i(18532, {	-- Mindsurge Robe
							}),
							i(18476),	-- Mud Stained Boots
							i(18475),	-- Oddly Magical Belt
							i(18530, {	-- Ogre Forged Hauberk
							}),
							i(18482),	-- Ogre Toothpick Shooter
							i(18495),	-- Redoubt Cloak
							i(18534, {	-- Rod of the Ogre Magi
							}),
							i(18480),	-- Scarab Plate Helm
							i(18477),	-- Shaggy Leggings
							i(18481),	-- Skullcracking Mace
							i(18500, {	-- Tarnished Elven Ring
							}),
							i(18538, {	-- Treant's Bane
							}),
							i(18531, {	-- Unyielding Maul
							}),
						},
					}),
				},
			}),
			DIREMAUL_SUBMAP(236, CAPITAL_GARDENS, {		-- Capital Gardens (West)
				coord = { 60.32, 30.17, FERALAS },	-- Dire Maul [West]
				maps = CAPITAL_GARDENS_MAPS,
				-- #if BEFORE 4.0.3
				cost = { { "i", 18249, 1 } },	-- Crescent Key
				-- #endif
				groups = {
					n(VENDORS, {
						n(14371, {	-- Shen'dralar Provisioner
							i(18487, {	-- Pattern: Mooncloth Robe (RECIPE!)
							}),
						}),
					}),
					n(ZONE_DROPS, {
						i(18339, {	-- Eidolon Cloak
							crs = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						i(18340, {	-- Eidolon Talisman
							crs = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}),
						{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
							crs = {
								11471,	-- Eldreth Apparition
								11475,	-- Eldreth Phantasm
								11469,	-- Eldreth Seether
								11470,	-- Eldreth Sorcerer
								11473,	-- Eldreth Spectre
								11472,	-- Eldreth Spirit
							},
						}) } },
						i(18337, {	-- Orphic Bracers
							crs = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
						i(18343, {	-- Petrified Band
							crs = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18344, {	-- Stonebark Gauntlets
							crs = {
								11459,	-- Ironbark Protector
								14303,	-- Petrified Guardian
								11458,	-- Petrified Treant
							},
						}),
						i(18338, {	-- Wand of Arcane Potency
							crs = {
								11480,	-- Arcane Aberration
								14399,	-- Arcane Torrent
								11483,	-- Mana Remnant
								11484,	-- Residual Monstrosity
							},
						}),
					}),
					e(408, {	-- Magister Kalendris
						creatureID = 11487,
						groups = {
							{ progressionKey = "dire-maul.later-recipes", groups = { i(22309) } },	-- Pattern: Big Bag of Enchantment (RECIPE!)
							i(18397, {	-- Elder Magus Pendant
							}),
							i(18374),	-- Flamescarred Shoulders
							i(18350),	-- Amplifying Cloak
							i(18351),	-- Magically Sealed Bracers
							i(18371),	-- Mindtap Talisman
						},
					}),
					n(11467, {	-- Tsu'zee
						description = "This is a Rare Creature and, as such, is not always present.",
						groups = {
							i(18387, {	-- Brightspark Gloves
							}),
							i(18346),	-- Threadbare Trousers
							i(18345),	-- Murmuring Ring
						},
					}),
					e(407, {	-- Illyanna Ravenoak
						creatureID = 11488,
						groups = {
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
						creatureID = 11489,
						groups = {
							i(18353),	-- Stoneflower Staff
							i(18352),	-- Petrified Bark Shield
							i(18393, {	-- Warpwood Bindings
							}),
							i(18390, {	-- Tanglemoss Leggings
							}),
						},
					}),
					e(409, {	-- Immol'thar
						creatureID = 11496,
						groups = {
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
							{ progressionKey = "dire-maul.tbc-pet-training", groups = { i(24345, {	-- Book of Cower IV
								timeline = { REMOVED_4_0_1 },
								classes = { DRUID },
								spellID = 31709,	-- Cower IV
								rank = 4,
							}) } },
						},
					}),
					n_conditional(14506, {	-- Lord Hel'nurath
						description =
							-- #if AFTER CATA
							"|cff3399ffSTEP 1:|r Warlock with (Dreadsteed of Xoroth) FOS\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs,  Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 8.2,35.8)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once creatures stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
							-- #else
							"|cff3399ffSTEP 1:|r Find a Warlock that is on or has completed Dreadsteed of Xoroth.\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs, Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 12.4, 31.6)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once creatures stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
							-- #endif
						sourceQuest = 7631,	-- Dreadsteed of Xoroth
						cost = {
							{ "i", 18670, 1 },	-- Xorothian Glyphs
							{ "i", 18629, 1 },	-- Black Lodestone
							{ "i", 18663, 1 },	-- J'eevee's Jar
						},
						timeline = { REMOVED_4_0_3 },
						groups = {
							i(18757, {	-- Diabolic Mantle
							}),
							i(18755),	-- Xorothian Firestick
							i(18756),	-- Dreadguard Protector
							i(18754),	-- Fel Hardened Bracers
						},
					}),
					n(16032, {	-- Falrin Treeshaper <House of Shen'dralar>
						description = "Found in the Dire Maul Library.",
						groups = {
							n(SPECIAL, {
								description = "Available if a specific Quest (9015) has been completed.",
								sourceQuest = 9015,	-- The Challenge
								timeline = { ADDED_1_11_1, REMOVED_4_0_3 },
								u_sqs = true,	-- remove the u flag if sourcequests are completed
								groups = {
									i(21986),	-- Banner of Provocation
								},
							}),
						},
					}),
					e(410, {	-- Prince Tortheldrin
						creatureID = 11486,
						groups = {
							i(18336, {	-- Gauntlet of Gordok Might
								description = "In the corner of the room that the Prince is in, next to the bookshelves, there is a small chest on the ground that contains the gauntlet. You must kill the Prince in order for the chest to be interactable.",
								provider = { "o", 179545 },	-- The Prince's Chest
							}),
							i(18392, {	-- Distracting Dagger
							}),
							i(18396),	-- Mind Carver
							i(18376),	-- Timeworn Mace
							i(18388, {	-- Stoneshatter
							}),
							i(18382),	-- Fluctuating Cloak
							i(18373),	-- Chestplate of Tranquility
							i(18375),	-- Bracers of the Eclipse
							i(18380, {	-- Eldritch Reinforced Legplates
							}),
							i(18378, {	-- Silvermoon Leggings
							}),
							i(18395),	-- Emerald Flame Ring
						},
					}),
				},
			}),
		},
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(230, {
		q(35890),	-- Dire Maul (Warpwood Quarter) Reward Quest - Normal completion
		q(35891),	-- Dire Maul (Capital Gardens) Reward Quest - Normal completion
		q(35892),	-- Dire Maul (Gordok Commons) Reward Quest - Normal completion
		q(35894),	-- Dire Maul (Bonus) Reward Quest
		q(35956),	-- Dire Maul (Everything) Reward Quest
	}),
}));
```

</details>

<details>
<summary>Show every changed Lua line: P3 → retail.lua</summary>

```diff
--- .contrib/phase-examples/evolution/dire-maul/p3/Dire Maul.lua
+++ .contrib/phase-examples/evolution/dire-maul/p4/retail.lua
@@ -1,4 +1,4 @@
--- Generated comparison snapshot (P2.1 / P2.2 / P3): complete annotated source.
+-- Generated comparison snapshot (P4): complete retail source.
 -- Generated by evolution/full-source/generate.py; edit schedule.json for release timing.
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
@@ -144,7 +144,7 @@
 end]];
 -- #endif
 
-root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, applyclassicphase(PHASE_ONE_DIREMAUL, {
+root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
 	inst(230, { progressionKey = "dire-maul.common",	-- Dire Maul
 		-- #if BEFORE MOP
 		lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
@@ -327,32 +327,13 @@
 						i(18536),	-- Milli's Lexicon
 					},
 				}),
-				-- #if SEASON_OF_DISCOVERY
-				q(84550, {	-- Codex of Defense
-					providers = {
-						{ "i", 228692 },	-- Codex of Defense
-						{ "n",  14383 },	-- Lorekeeper Kildrath
-					},
-					timeline = { ADDED_1_15_3 },
-					maps = CAPITAL_GARDENS_MAPS,
-					classes = { WARRIOR },
-					lvl = 54,
-					groups = {
-						i(228465),	-- Royal Seal of Eldre'Thalas
-					},
-				}),
-				-- #endif
 				q(7499, {	-- Codex of Defense
 					providers = {
 						{ "i", 18357 },	-- Codex of Defense
 						{ "n", 14383 },	-- Lorekeeper Kildrath
 					},
 					timeline = {
-						-- #if SEASON_OF_DISCOVERY
-						REMOVED_1_15_3,
-						-- #else
 						REMOVED_4_0_3,
-						-- #endif
 					},
 					maps = CAPITAL_GARDENS_MAPS,
 					classes = { WARRIOR },
@@ -404,7 +385,7 @@
 						}),
 					},
 				},
-				{ progressionKey = "dire-maul.recipe-quests", groups = { applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
+				{ progressionKey = "dire-maul.recipe-quests", groups = { q(7649, {	-- Enchanted Thorium Platemail: Volume I
 					providers = {
 						-- #IF BEFORE 4.0.3
 						{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
@@ -434,8 +415,8 @@
 					groups = {
 						i(12727),	-- Plans: Enchanted Thorium Breastplate (RECIPE!)
 					},
-				})),
-				applyclassicphase(PHASE_THREE_RECIPES, q(7650, {	-- Enchanted Thorium Platemail: Volume II
+				}),
+				q(7650, {	-- Enchanted Thorium Platemail: Volume II
 					providers = {
 						-- #IF BEFORE 4.0.3
 						{ "i", 18770 },	-- Enchanted Thorium Platemail (Volume II)
@@ -461,8 +442,8 @@
 					groups = {
 						i(12726),	-- Plans: Enchanted Thorium Leggings (RECIPE!)
 					},
-				})),
-				applyclassicphase(PHASE_THREE_RECIPES, q(7651, {	-- Enchanted Thorium Platemail: Volume III
+				}),
+				q(7651, {	-- Enchanted Thorium Platemail: Volume III
 					providers = {
 						-- #if BEFORE 4.0.3
 						{ "i", 18771 },	-- Enchanted Thorium Platemail (Volume III)
@@ -493,7 +474,7 @@
 					groups = {
 						i(12725),	-- Plans: Enchanted Thorium Helm (RECIPE!)
 					},
-				})) } },
+				}) } },
 				q(7494, {	-- Feathermoon Stronghold
 					qgs = {
 						2198,	-- Crier Goodman
@@ -550,32 +531,13 @@
 						i(18471),	-- Royal Seal of Eldre'Thalas
 					},
 				}),
-				-- #if SEASON_OF_DISCOVERY
-				q(84548, {	-- Garona: A Study on Stealth and Treachery
-					providers = {
-						{ "i", 228691 },	-- Garona: A Study on Stealth and Treachery
-						{ "n",  14383 },	-- Lorekeeper Kildrath
-					},
-					timeline = { ADDED_1_15_3 },
-					maps = CAPITAL_GARDENS_MAPS,
-					classes = { ROGUE },
-					lvl = 54,
-					groups = {
-						i(228464),	-- Royal Seal of Eldre'Thalas
-					},
-				}),
-				-- #endif
 				q(7498, {	-- Garona: A Study on Stealth and Treachery
 					providers = {
 						{ "i", 18356 },	-- Garona: A Study on Stealth and Treachery
 						{ "n", 14383 },	-- Lorekeeper Kildrath
 					},
 					timeline = {
-						-- #if SEASON_OF_DISCOVERY
-						REMOVED_1_15_3,
-						-- #else
 						REMOVED_4_0_3,
-						-- #endif
 					},
 					maps = CAPITAL_GARDENS_MAPS,
 					classes = { ROGUE },
@@ -803,34 +765,13 @@
 						}),
 					},
 				}),
-				-- #if SEASON_OF_DISCOVERY
-				q(84549, {	-- The Arcanist's Cookbook
-					providers = {
-						{ "i", 228693 },	-- The Arcanist's Cookbook
-						{ "n",  14383 },	-- Lorekeeper Kildrath
-					},
-					timeline = { ADDED_1_15_3 },
-					maps = CAPITAL_GARDENS_MAPS,
-					classes = { MAGE },
-					lvl = 54,
-					groups = {
-						i(228466, {	-- Royal Seal of Eldre'Thalas
-							timeline = { REMOVED_4_0_3 },
-						}),
-					},
-				}),
-				-- #endif
 				q(7500, {	-- The Arcanist's Cookbook
 					providers = {
 						{ "i", 18358 },	-- The Arcanist's Cookbook
 						{ "n", 14383 },	-- Lorekeeper Kildrath
 					},
 					timeline = {
-						-- #if SEASON_OF_DISCOVERY
-						REMOVED_1_15_3,
-						-- #else
 						REMOVED_4_0_3,
-						-- #endif
 					},
 					maps = CAPITAL_GARDENS_MAPS,
 					classes = { MAGE },
@@ -989,34 +930,13 @@
 					races = HORDE_ONLY,
 					isBreadcrumb = true,
 				}),
-				-- #if SEASON_OF_DISCOVERY
-				q(84551, {	-- The Light and How To Swing It
-					providers = {
-						{ "i", 228690 },	-- The Light and How to Swing It
-						{ "n",  14382 },	-- Lorekeeper Mykos
-					},
-					timeline = { ADDED_1_15_3 },
-					maps = CAPITAL_GARDENS_MAPS,
-					classes = { PALADIN },
-					lvl = 54,
-					groups = {
-						i(228467, {	-- Royal Seal of Eldre'Thalas
-							timeline = { REMOVED_4_0_3 },
-						}),
-					},
-				}),
-				-- #endif
 				q(7501, {	-- The Light and How To Swing It
 					providers = {
 						{ "i", 18359 },	-- The Light and How to Swing It
 						{ "n", 14382 },	-- Lorekeeper Mykos
 					},
 					timeline = {
-						-- #if SEASON_OF_DISCOVERY
-						REMOVED_1_15_3,
-						-- #else
 						REMOVED_4_0_3,
-						-- #endif
 					},
 					maps = CAPITAL_GARDENS_MAPS,
 					classes = { PALADIN },
@@ -1150,7 +1070,7 @@
 						description = "This still drops despite being completely worthless.",
 						-- #endif
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
+					{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
 						timeline = { REMOVED_4_0_3 },
 						-- #if BEFORE 4.0.3
 						crs = {
@@ -1165,7 +1085,7 @@
 							11448,	-- Gordok Warlock
 						},
 						-- #endif
-					}) } }),
+					}) } },
 				},
 			}),
 			n(COMMON_BOSS_DROPS, {
@@ -1175,18 +1095,9 @@
 				-- #endif
 				maps = ALL_DIREMAUL_MAPS,
 				groups = {
-					-- #if SEASON_OF_DISCOVERY
-					i(228692, {	-- Codex of Defense
-						timeline = { ADDED_1_15_3 },
-					}),
-					-- #endif
 					i(18357, {	-- Codex of Defense
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
-							REMOVED_1_15_3,
-							-- #else
 							REMOVED_4_0_3,
-							-- #endif
 						},
 					}),
 					i(18360, {	-- Harnessing Shadows
@@ -1195,49 +1106,22 @@
 					i(18363, {	-- Frost Shock and You
 						timeline = { REMOVED_4_0_3 },
 					}),
-					-- #if SEASON_OF_DISCOVERY
-					i(228691, {	-- Garona: A Study on Stealth and Treachery
-						timeline = { ADDED_1_15_3 },
-					}),
-					-- #endif
 					i(18356, {	-- Garona: A Study on Stealth and Treachery
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
-							REMOVED_1_15_3,
-							-- #else
 							REMOVED_4_0_3,
-							-- #endif
 						},
 					}),
 					i(18362, {	-- Holy Bologna: What the Light Won't Tell You
 						timeline = { REMOVED_4_0_3 },
 					}),
-					-- #if SEASON_OF_DISCOVERY
-					i(228680, {	-- Nostro's Compendium of Dragon Slaying
-						timeline = { ADDED_1_15_3 },
-					}),
-					-- #endif
 					i(18401, {	-- Nostro's Compendium of Dragon Slaying
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
-							REMOVED_1_15_3,
-							-- #else
 							REMOVED_4_0_3,
-							-- #endif
-						},
-					}),
-					-- #if SEASON_OF_DISCOVERY
-					i(228693, {	-- The Arcanist's Cookbook
-						timeline = { ADDED_1_15_3 },
-					}),
-					-- #endif
+						},
+					}),
 					i(18358, {	-- The Arcanist's Cookbook
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
-							REMOVED_1_15_3,
-							-- #else
 							REMOVED_4_0_3,
-							-- #endif
 						},
 					}),
 					i(18364, {	-- The Emerald Dream
@@ -1246,18 +1130,9 @@
 					i(18361, {	-- The Greatest Race of Hunters
 						timeline = { REMOVED_4_0_3 },
 					}),
-					-- #if SEASON_OF_DISCOVERY
-					i(228690, {	-- The Light and How to Swing It
-						timeline = { ADDED_1_15_3 },
-					}),
-					-- #endif
 					i(18359, {	-- The Light and How to Swing It
 						timeline = {
-							-- #if SEASON_OF_DISCOVERY
-							REMOVED_1_15_3,
-							-- #else
 							REMOVED_4_0_3,
-							-- #endif
 						},
 					}),
 				},
@@ -1361,15 +1236,7 @@
 						creatureID = 14327,
 						groups = {
 							i(18426),	-- Lethtendris's Web
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228051, {	-- Quel'dorei Channeling Rod
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18311, {	-- Quel'dorei Channeling Rod
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18301),	-- Lethtendris' Wand
 							i(18325),	-- Felhide Cap
@@ -1380,55 +1247,23 @@
 						creatureID = 13280,
 						groups = {
 							i(18299),	-- Hydrospawn Essence
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228052, {	-- Waveslicer
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18324, {	-- Waveslicer
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228054, {	-- Tempest Talisman
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18317, {	-- Tempest Talisman
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18305),	-- Breakwater Legguards
 							i(18307),	-- Riptide Shoes
 							i(18322),	-- Waterspout Boots
-							applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } }),	-- Ace of Elementals
+							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
 						},
 					}),
 					e(402, {	-- Zevrim Thornhoof
 						creatureID = 11490,
 						groups = {
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228050, {	-- Satyr's Bow
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18323, {	-- Satyr's Bow
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18308),	-- Clever Hat
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228053, {	-- Fervent Helm
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18319, {	-- Fervent Helm
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18313),	-- Helm of Awareness
 							i(18306),	-- Gloves of Shadowy Mist
@@ -1441,7 +1276,7 @@
 					n(11491, {	-- Old Ironbark
 						description = "Talk to him for him to break down the door.",
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
+					{ progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
 						description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
 						-- #if BEFORE 6.0.2
 						cost = {
@@ -1465,15 +1300,7 @@
 							}),
 							i(22315),	-- Hammer of Revitalization
 							i(22314),	-- Huntsman's Harpoon
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228066, {	-- Ironweave Gloves
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(22304, {	-- Ironweave Gloves
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(22472),	-- Boots of Ferocity
 							i(22401, {	-- Libram of Hope
@@ -1483,7 +1310,7 @@
 								timeline = { DELETED_5_0_4 },
 							}),
 						},
-					}) } }),
+					}) } },
 					e(405, {	-- Alzzin the Wildshaper
 						creatureID = 11492,
 						groups = {
@@ -1492,52 +1319,20 @@
 								provider = { "o", 179559 },	-- Felvine Shard
 							}),
 							i(18321),	-- Energetic Rod
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228056, {	-- Fiendish Machete
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18310, {	-- Fiendish Machete
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18328),	-- Shadewood Cloak
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228055, {	-- Energized Chestplate
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18312, {	-- Energized Chestplate
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18309),	-- Gloves of Restoration
 							i(18326),	-- Razor Gauntlets
 							i(18327),	-- Whipvine Cord
 							i(18318),	-- Merciful Greaves
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228699, {	-- Ring of Demonic Guile
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18314, {	-- Ring of Demonic Guile
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							-- #if BEFORE 6.0.2
 							-- This ring may have moved to Zevrim, will need to verify.
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228057, {	-- Ring of Demonic Potency
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18315, {	-- Ring of Demonic Potency
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							-- #endif
 						},
@@ -1606,35 +1401,11 @@
 							i(18463),	-- Ogre Pocket Knife
 							i(18460),	-- Unsophisticated Hand Cannon
 							-- #if AFTER 7.3.5
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18496, {	-- Heliotrope Cloak
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18493, {	-- Bulky Iron Spaulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18494, {	-- Denwatcher's Shoulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							-- #endif
 							i(18450),	-- Robe of Combustion
@@ -1657,35 +1428,11 @@
 						groups = {
 							-- #if BEFORE 7.3.5
 							i(18498),	-- Hedgecutter
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18496, {	-- Heliotrope Cloak
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18493, {	-- Bulky Iron Spaulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18494, {	-- Denwatcher's Shoulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18497),	-- Sublime Wristguards
 							-- #endif
@@ -1733,35 +1480,11 @@
 						-- #if BEFORE 7.3.5
 						groups = {
 							i(18498),	-- Hedgecutter
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18496, {	-- Heliotrope Cloak
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18493, {	-- Bulky Iron Spaulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18494, {	-- Denwatcher's Shoulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18497),	-- Sublime Wristguards
 						},
@@ -1787,62 +1510,22 @@
 						-- #endif
 						groups = {
 							i(18240),	-- Ogre Tannin
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228477, {	-- Pattern: Embroidered Belt of the Archmage (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18414, {	-- Pattern: Belt of the Archmage (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(227910, {	-- Pattern: Brilliant Chromatic Cloak (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18517, {	-- Pattern: Chromatic Cloak (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
 							i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228319, {	-- Pattern: Girdle of Arcane Insight (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18514, {	-- Pattern: Girdle of Insight (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18518),	-- Pattern: Hide of the Wild (RECIPE!)
 							i(18416),	-- Pattern: Inferno Gloves (RECIPE!)
 							i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
 							i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228276, {	-- Pattern: Mastercrafted Shifting Cloak (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18519, {	-- Pattern: Shifting Cloak (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18516, {	-- Pattern: Swift Flight Bracers (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228301, {	-- Pattern: Swift Flight Vambraces (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 						},
 					}),
 					o(179499, {	-- Ogre Tannin Basket
@@ -1871,15 +1554,7 @@
 							-- #if AFTER 7.3.5
 							i(18458),	-- Modest Armguards (7.3.5 - Moved from Guards)
 							-- #endif
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228068, {	-- Mugger's Belt
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18505, {	-- Mugger's Belt
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18507),	-- Boots of the Full Moon
 						},
@@ -1889,29 +1564,9 @@
 						groups = {
 							i(18484),	-- Cho'Rush's Blade
 							i(18483),	-- Mana Channeling Wand
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228064, {	-- Observer's Shield
-								description = "This doesn't appear to have been added yet.",
-								timeline = { CREATED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18485, {	-- Observer's Shield
-								-- #if SEASON_OF_DISCOVERY
-								-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
-								-- timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228062, {	-- Insightful Hood
-								description = "This doesn't appear to have been added yet.",
-								timeline = { CREATED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18490, {	-- Insightful Hood
-								-- #if SEASON_OF_DISCOVERY
-								-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
-								-- timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							-- #if AFTER 7.3.5
 							i(18459),	-- Gallant's Wristguards (7.3.5 - Moved from Guards)
@@ -1922,44 +1577,20 @@
 					e(417, {	-- King Gordok
 						creatureID = 11501,
 						groups = {
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228478, {	-- Barbarous Blade
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18520, {	-- Barbarous Blade
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18523),	-- Brightly Glowing Stone
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228480, {	-- Crown of the Ogre King
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18526, {	-- Crown of the Ogre King
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18525),	-- Bracers of Prosperity
 							-- #if BEFORE 7.3.5
 							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
 							-- #endif
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228479, {	-- Leggings of Destruction
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18524, {	-- Leggings of Destruction
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18521),	-- Grimy Metal Boots
 							i(18522),	-- Band of the Ogre King
-							applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } }),	-- Ace of Warlords
+							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } },	-- Ace of Warlords
 							i(18780, {	-- Top Half of Advanced Armorsmithing: Volume I
 								timeline = { DELETED_4_0_3 },
 							}),
@@ -1974,87 +1605,29 @@
 							i(18499),	-- Barrier Shield
 							i(18479),	-- Carrion Scorpid Helm
 							i(18537),	-- Counterattack Lodestone
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228065, {	-- Cyclone Spaulders
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18528, {	-- Cyclone Spaulders
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18529),	-- Elemental Plate Girdle
 							i(18533),	-- Gordok Bracers of Power
 							i(18478),	-- Hyena Hide Jerkin
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228474, {	-- Mindsurge Robe
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18532, {	-- Mindsurge Robe
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18476),	-- Mud Stained Boots
 							i(18475),	-- Oddly Magical Belt
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228070, {	-- Ogre Forged Hauberk
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18530, {	-- Ogre Forged Hauberk
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18482),	-- Ogre Toothpick Shooter
 							i(18495),	-- Redoubt Cloak
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228484, {	-- Rod of the Ogre Magi
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18534, {	-- Rod of the Ogre Magi
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18480),	-- Scarab Plate Helm
 							i(18477),	-- Shaggy Leggings
 							i(18481),	-- Skullcracking Mace
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228469, {	-- Tarnished Elven Ring
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18500, {	-- Tarnished Elven Ring
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228486, {	-- Treant's Bane
-								description = "There's no evidence that this version has dropped yet. @Crieve if you get one to drop.",
-								timeline = { CREATED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18538, {	-- Treant's Bane
-								-- #if SEASON_OF_DISCOVERY
-								-- CRIEVE NOTE: There's no evidence that the reitemized version has dropped yet.
-								-- timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228473, {	-- Unyielding Maul
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18531, {	-- Unyielding Maul
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 						},
 					}),
@@ -2069,15 +1642,7 @@
 				groups = {
 					n(VENDORS, {
 						n(14371, {	-- Shen'dralar Provisioner
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228303, {	-- Pattern: Incandescent Mooncloth Robe (RECIPE!)
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18487, {	-- Pattern: Mooncloth Robe (RECIPE!)
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 						}),
 					}),
@@ -2098,7 +1663,7 @@
 								11472,	-- Eldreth Spirit
 							},
 						}),
-						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
+						{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
 							crs = {
 								11471,	-- Eldreth Apparition
 								11475,	-- Eldreth Phantasm
@@ -2107,7 +1672,7 @@
 								11473,	-- Eldreth Spectre
 								11472,	-- Eldreth Spirit
 							},
-						}) } }),
+						}) } },
 						i(18337, {	-- Orphic Bracers
 							crs = {
 								11480,	-- Arcane Aberration
@@ -2142,16 +1707,8 @@
 					e(408, {	-- Magister Kalendris
 						creatureID = 11487,
 						groups = {
-							applyclassicphase(PHASE_FIVE_RECIPES, { progressionKey = "dire-maul.later-recipes", groups = { i(22309) } }),	-- Pattern: Big Bag of Enchantment (RECIPE!)
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228067, {	-- Elder Magus Pendant
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							{ progressionKey = "dire-maul.later-recipes", groups = { i(22309) } },	-- Pattern: Big Bag of Enchantment (RECIPE!)
 							i(18397, {	-- Elder Magus Pendant
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18374),	-- Flamescarred Shoulders
 							i(18350),	-- Amplifying Cloak
@@ -2162,15 +1719,7 @@
 					n(11467, {	-- Tsu'zee
 						description = "This is a Rare Creature and, as such, is not always present.",
 						groups = {
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228061, {	-- Brightspark Gloves
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18387, {	-- Brightspark Gloves
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18346),	-- Threadbare Trousers
 							i(18345),	-- Murmuring Ring
@@ -2193,31 +1742,10 @@
 						groups = {
 							i(18353),	-- Stoneflower Staff
 							i(18352),	-- Petrified Bark Shield
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228063, {	-- Warpwood Bindings
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18393, {	-- Warpwood Bindings
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228468, {	-- Tanglemoss Leggings
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18390, {	-- Tanglemoss Leggings
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_SEVEN, { progressionKey = "dire-maul.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
-								timeline = { ADDED_1_15_6 },
-							}) } }),
-							-- #endif
+							}),
 						},
 					}),
 					e(409, {	-- Immol'thar
@@ -2235,12 +1763,12 @@
 							i(18391),	-- Eyestalk Cord
 							i(18379),	-- Odious Greaves
 							i(18370),	-- Vigilance Charm
-							applyclassicphase(TBC_PHASE_ONE, { progressionKey = "dire-maul.tbc-pet-training", groups = { i(24345, {	-- Book of Cower IV
+							{ progressionKey = "dire-maul.tbc-pet-training", groups = { i(24345, {	-- Book of Cower IV
 								timeline = { REMOVED_4_0_1 },
 								classes = { DRUID },
 								spellID = 31709,	-- Cower IV
 								rank = 4,
-							}) } }),
+							}) } },
 						},
 					}),
 					n_conditional(14506, {	-- Lord Hel'nurath
@@ -2258,15 +1786,7 @@
 						},
 						timeline = { REMOVED_4_0_3 },
 						groups = {
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228475, {	-- Diabolic Mantle
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18757, {	-- Diabolic Mantle
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18755),	-- Xorothian Firestick
 							i(18756),	-- Dreadguard Protector
@@ -2294,50 +1814,18 @@
 								description = "In the corner of the room that the Prince is in, next to the bookshelves, there is a small chest on the ground that contains the gauntlet. You must kill the Prince in order for the chest to be interactable.",
 								provider = { "o", 179545 },	-- The Prince's Chest
 							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228472, {	-- Distracting Dagger
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18392, {	-- Distracting Dagger
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18396),	-- Mind Carver
 							i(18376),	-- Timeworn Mace
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228471, {	-- Stoneshatter
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18388, {	-- Stoneshatter
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18382),	-- Fluctuating Cloak
 							i(18373),	-- Chestplate of Tranquility
 							i(18375),	-- Bracers of the Eclipse
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228069, {	-- Eldritch Reinforced Legplates
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
 							i(18380, {	-- Eldritch Reinforced Legplates
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
-							}),
-							-- #if SEASON_OF_DISCOVERY
-							applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228470, {	-- Silvermoon Leggings
-								timeline = { ADDED_1_15_3 },
-							}) } }),
-							-- #endif
+							}),
 							i(18378, {	-- Silvermoon Leggings
-								-- #if SEASON_OF_DISCOVERY
-								timeline = { REMOVED_1_15_3 },
-								-- #endif
 							}),
 							i(18395),	-- Emerald Flame Ring
 						},
@@ -2346,7 +1834,7 @@
 			}),
 		},
 	}),
-})));
+}));
 root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
 	inst(230, {
 		q(35890),	-- Dire Maul (Warpwood Quarter) Reward Quest - Normal completion
```

</details>

### Add the file selection

**New setting shown in:** [p4/selection.json](p4/selection.json), a generated comparison file. The proposed loader selects the source before executing Lua. `null` selects no source for that instance.

```diff
--- /dev/null
+++ .contrib/phase-examples/evolution/dire-maul/p4/selection.json
@@ -0,0 +1,18 @@
+{
+  "$comment": "Generated comparison selection; choose the complete source before Lua execution.",
+  "retail": {
+    "dire-maul": "retail.lua"
+  },
+  "progression:main": {
+    "dire-maul": "classic.lua"
+  },
+  "anniversary:main": {
+    "dire-maul": "classic.lua"
+  },
+  "era:main": {
+    "dire-maul": "classic.lua"
+  },
+  "sod:main": {
+    "dire-maul": "sod.lua"
+  }
+}
```

### Update the control’s source list

```diff
--- .contrib/phase-examples/evolution/dire-maul/p3/migration.json
+++ .contrib/phase-examples/evolution/dire-maul/p4/migration.json
@@ -4,9 +4,11 @@
   "cohorts": [
     {
       "id": "comparison-fixture-dire-maul",
-      "stage": "P3",
+      "stage": "P4",
       "sources": [
-        "Dire Maul.lua"
+        "retail.lua",
+        "classic.lua",
+        "sod.lua"
       ]
     }
   ]
```

## Key locations in the complete source

| Record or group | Key | What inherits it |
|---|---|---|
| Instance `230` | `dire-maul.common` | The instance and its descendants; the key belongs on the instance, not the expansion header. |
| Isalien `16097` | `dire-maul.isalien` | The summon and its loot, including Hammer of Revitalization `22315`. |
| Other Dungeon Set 2 records | `dire-maul.dungeon-set-2` | The other records enclosed by that writer. They do not acquire Isalien’s rule. |
| Recipe quests, Darkmoon cards, later recipes and TBC pet training | Four separate entries under `fullSourceRules.dire-maul` | Each affected batch retains its own unresolved opening. |
| SoD additions and item `235787` | `dire-maul.sod-phase-four-additions`, `dire-maul.ironwood-branch` | The original phase-four additions and the later Ironwood Branch. |

```text
inst(230) — dire-maul.common
├─ ordinary bosses and loot — inherit the dungeon rule
├─ Isalien — adds dire-maul.isalien
│  └─ item(22315) — inherits both parent rules
└─ other later records — add their own batch rule
```

## Reproduce and check these files

The generator reproduces the comparison copies for this PR. Ordinary database maintenance still edits the Lua source itself; it does not require editing this Python tool. The production migration and stage switch remain proposed.

| File | Maintained by |
|---|---|
| [schedule.json](../../schedule.json) | Author: edit the timing rules here. |
| [full-source/generate.py](../full-source/generate.py) | Comparison setup: the proposed Lua edits and original-writer mappings. |
| Stage Lua, `migration.json`, `selection.json` | Generator: saved complete versions for this comparison. |
| [coverage.json](coverage.json) | Generator: all 59 original writer calls, with their source lines and replacement keys. |

From the repository root, using Lua 5.1:

```console
python .contrib/phase-examples/evolution/full-source/generate.py
python .contrib/phase-examples/evolution/full-source/verify.py --lua lua5.1
python .contrib/phase-examples/prepare.py --check
```

The checks compare P1’s raw payload with production, require identical P2.1/P2.2/P3 Lua, and read the saved P2/P4 files to compare all ordinary source tokens against P1 after selecting each branch. They also check key coverage and Lua 5.1 syntax across client versions and flavors. They do **not** execute these complete native files through the production Parser or establish an independent legacy golden.

The expanded full-file diffs contain every changed hunk; the short P2.1 view selects exact hunks from that full diff. Line endings are normalized for Markdown. `/dev/null` means the file is absent at the preceding migration step.

[Choose another instance](../README.md)
