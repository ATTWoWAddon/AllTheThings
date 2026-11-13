# Dire Maul: Lua and JSON, P1 → P4

[All six instances](../README.md) · [The shared schedule](../../schedule.json)

**Maintainer comparison guide.** P1 copies unmodified production source. Later Lua and control files are generated comparisons of proposed edits; the P2/P3 controls do not install a production migration loader.

Open Dire Maul separately from the Isalien summon. Keep her cost, provider, quest conditions and loot together. Other later quests, recipes and drops retain their own rules.

**Read down:** P1 → P2.1 → P2.2 → P3 → P4. These are migration steps, not game release phases. Open the complete source and diff blocks at each step.

## P1 — read the current source alternatives

Baseline: master `195b274be460432481e33bb63bfaf9e68bfeec06`. Each saved P1 adds an identifying first line, followed by the exact bytes of the corresponding production file. No phase configuration is introduced at P1.

| Alternative | Current human-authored production source | Complete P1 copy |
|---|---|---|

| Standard | `.contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Dire Maul.lua` | [standard.lua](p1/standard.lua) |

| Standalone SoD | `.contrib/.db/season of discovery/dungeons & raids/Dire Maul.lua` | [sod.lua](p1/sod.lua) |



SoD replaces the standard source root; these are alternatives, not files to load together. The standalone SoD source already includes its applicable original history and reworked records.

[sources.json](../full-source/sources.json) records generated verification provenance: the source commit, paths, alternatives and hashes. It is not another handwritten phase configuration.

<details>
<summary>Read the complete P1 standard.lua</summary>

```lua
-- P1 comparison: unmodified human-authored source from .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Dire Maul.lua.
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
	tooltipInfo[#tooltipInfo+1] = { left = "This is a hidden reputation. It might not count towards reputation achievements.", r=1,g=1,b=1, wrap=true }
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		if reputation < 20999 then
			tooltipInfo[#tooltipInfo+1] = { left = "To 11999 Honored:", r=1,g=1,b=1 }
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
				q(7499, {	-- Codex of Defense
					providers = {
						{ "i", 18357 },	-- Codex of Defense
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					timeline = { REMOVED_4_0_3 },
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
				q(7498, {	-- Garona: A Study on Stealth and Treachery
					providers = {
						{ "i", 18356 },	-- Garona: A Study on Stealth and Treachery
						{ "n", 14383 },	-- Lorekeeper Kildrath
					},
					timeline = { REMOVED_4_0_3 },
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
					timeline = { REMOVED_4_0_3 },
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
					timeline = { REMOVED_4_0_3 },
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
					i(18357, {	-- Codex of Defense
						timeline = { REMOVED_4_0_3 },
					}),
					i(18360, {	-- Harnessing Shadows
						timeline = { REMOVED_4_0_3 },
					}),
					i(18363, {	-- Frost Shock and You
						timeline = { REMOVED_4_0_3 },
					}),
					i(18356, {	-- Garona: A Study on Stealth and Treachery
						timeline = { REMOVED_4_0_3 },
					}),
					i(18362, {	-- Holy Bologna: What the Light Won't Tell You
						timeline = { REMOVED_4_0_3 },
					}),
					i(18401, {	-- Nostro's Compendium of Dragon Slaying
						timeline = { REMOVED_4_0_3 },
					}),
					i(18358, {	-- The Arcanist's Cookbook
						timeline = { REMOVED_4_0_3 },
					}),
					i(18364, {	-- The Emerald Dream
						timeline = { REMOVED_4_0_3 },
					}),
					i(18361, {	-- The Greatest Race of Hunters
						timeline = { REMOVED_4_0_3 },
					}),
					i(18359, {	-- The Light and How to Swing It
						timeline = { REMOVED_4_0_3 },
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
							i(18311),	-- Quel'dorei Channeling Rod
							i(18301),	-- Lethtendris' Wand
							i(18325),	-- Felhide Cap
							i(18302),	-- Band of Vigor
						},
					}),
					e(403, {	-- Hydrospawn
						creatureID = 13280,
						groups = {
							i(18299),	-- Hydrospawn Essence
							i(18324),	-- Waveslicer
							i(18317),	-- Tempest Talisman
							i(18305),	-- Breakwater Legguards
							i(18307),	-- Riptide Shoes
							i(18322),	-- Waterspout Boots
							applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
						},
					}),
					e(402, {	-- Zevrim Thornhoof
						creatureID = 11490,
						groups = {
							i(18323),	-- Satyr's Bow
							i(18308),	-- Clever Hat
							i(18319),	-- Fervent Helm
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
							i(22304),	-- Ironweave Gloves
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
							i(18310),	-- Fiendish Machete
							i(18328),	-- Shadewood Cloak
							i(18312),	-- Energized Chestplate
							i(18309),	-- Gloves of Restoration
							i(18326),	-- Razor Gauntlets
							i(18327),	-- Whipvine Cord
							i(18318),	-- Merciful Greaves
							i(18314),	-- Ring of Demonic Guile
							-- #if BEFORE 6.0.2
							-- This ring may have moved to Zevrim, will need to verify.
							i(18315),	-- Ring of Demonic Potency
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
							i(18496),	-- Heliotrope Cloak
							i(18493),	-- Bulky Iron Spaulders
							i(18494),	-- Denwatcher's Shoulders
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
							i(18496),	-- Heliotrope Cloak
							i(18493),	-- Bulky Iron Spaulders
							i(18494),	-- Denwatcher's Shoulders
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
							i(18496),	-- Heliotrope Cloak
							i(18493),	-- Bulky Iron Spaulders
							i(18494),	-- Denwatcher's Shoulders
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
							i(18414),	-- Pattern: Belt of the Archmage (RECIPE!)
							i(18517),	-- Pattern: Chromatic Cloak (RECIPE!)
							i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
							i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
							i(18514),	-- Pattern: Girdle of Insight (RECIPE!)
							i(18518),	-- Pattern: Hide of the Wild (RECIPE!)
							i(18416),	-- Pattern: Inferno Gloves (RECIPE!)
							i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
							i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
							i(18519),	-- Pattern: Shifting Cloak (RECIPE!)
							i(18516),	-- Pattern: Swift Flight Bracers (RECIPE!)
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
							i(18505),	-- Mugger's Belt
							i(18507),	-- Boots of the Full Moon
						},
					}),
					e(416, {	-- Cho'Rush the Observer
						creatureID = 14324,
						groups = {
							i(18484),	-- Cho'Rush's Blade
							i(18483),	-- Mana Channeling Wand
							i(18485),	-- Observer's Shield
							i(18490),	-- Insightful Hood
							-- #if AFTER 7.3.5
							i(18459),	-- Gallant's Wristguards (7.3.5 - Moved from Guards)
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved from King Gordok)
							-- #endif
						},
					}),
					e(417, {	-- King Gordok
						creatureID = 11501,
						groups = {
							i(18520),	-- Barbarous Blade
							i(18523),	-- Brightly Glowing Stone
							i(18526),	-- Crown of the Ogre King
							i(18525),	-- Bracers of Prosperity
							-- #if BEFORE 7.3.5
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
							-- #endif
							i(18524),	-- Leggings of Destruction
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
							i(18528),	-- Cyclone Spaulders
							i(18529),	-- Elemental Plate Girdle
							i(18533),	-- Gordok Bracers of Power
							i(18478),	-- Hyena Hide Jerkin
							i(18532),	-- Mindsurge Robe
							i(18476),	-- Mud Stained Boots
							i(18475),	-- Oddly Magical Belt
							i(18530),	-- Ogre Forged Hauberk
							i(18482),	-- Ogre Toothpick Shooter
							i(18495),	-- Redoubt Cloak
							i(18534),	-- Rod of the Ogre Magi
							i(18480),	-- Scarab Plate Helm
							i(18477),	-- Shaggy Leggings
							i(18481),	-- Skullcracking Mace
							i(18500),	-- Tarnished Elven Ring
							i(18538),	-- Treant's Bane
							i(18531),	-- Unyielding Maul
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
							i(18487),	-- Pattern: Mooncloth Robe (RECIPE!)
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
							i(18397),	-- Elder Magus Pendant
							i(18374),	-- Flamescarred Shoulders
							i(18350),	-- Amplifying Cloak
							i(18351),	-- Magically Sealed Bracers
							i(18371),	-- Mindtap Talisman
						},
					}),
					n(11467, {	-- Tsu'zee
						description = "This is a Rare Creature and, as such, is not always present.",
						groups = {
							i(18387),	-- Brightspark Gloves
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
							i(18393),	-- Warpwood Bindings
							i(18390),	-- Tanglemoss Leggings
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
							i(18757),	-- Diabolic Mantle
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
							i(18392),	-- Distracting Dagger
							i(18396),	-- Mind Carver
							i(18376),	-- Timeworn Mace
							i(18388),	-- Stoneshatter
							i(18382),	-- Fluctuating Cloak
							i(18373),	-- Chestplate of Tranquility
							i(18375),	-- Bracers of the Eclipse
							i(18380),	-- Eldritch Reinforced Legplates
							i(18378),	-- Silvermoon Leggings
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

<details>
<summary>Read the complete P1 sod.lua</summary>

```lua
-- P1 comparison: unmodified human-authored source from .contrib/.db/season of discovery/dungeons & raids/Dire Maul.lua.
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
local OnTooltipForShendralar = [[function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		_.Modules.FactionData.AddReputationTooltipInfo(tooltipInfo, reputation, "Libram Turn Ins",
		200,
		42000);
	end
end]];
local OnTooltipForSteamweedle = [[function(t, tooltipInfo)
	tooltipInfo[#tooltipInfo+1] = { left = "This is a hidden reputation. It might not count towards reputation achievements.", r=1,g=1,b=1, wrap=true }
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		if reputation < 20999 then
			tooltipInfo[#tooltipInfo+1] = { left = "To 11999 Honored:", r=1,g=1,b=1 }
			addRepInfo(tooltipInfo, reputation, " Kill Venture Co. (STV)", 2.5, 20999);
			addRepInfo(tooltipInfo, reputation, " Kill Southsea Pirates. (Tanaris & Barrens)", 2.5, 20999);
		end
		addRepInfo(tooltipInfo, reputation, "Complete Zapping Quests (Feralas)", 25, 42000);
		addRepInfo(tooltipInfo, reputation, "Complete Free Knot! (Dire Maul)",
		150,
		42000);

		addRepInfo(tooltipInfo, reputation, "Complete The Gordok Ogre Suit (Dire Maul)",
		50,
		42000);
	end
end]];

instanceroot(230, applyclassicphase(PHASE_ONE_DIREMAUL, {	-- Dire Maul
	lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
	zoneTextAreaIDs = {
		2557,	-- Dire Maul
		2577,	-- Eldreth Row
		3217,	-- "The Maul" now points to Dire Maul.
	},
	timeline = { ADDED_1_2_0 },
	maps = {
		DIRE_MAUL,
		DIRE_MAUL_SHRINE_OF_ELDRETHARR,
	},
	lvl = 44,
	groups = {
		n(ACHIEVEMENTS, {
			achWithRep(5788, FACTION_SHENDRALAR, {	-- Agent of the Shen'dralar [Shen'dralar Exalted]
				icon = 133736,	-- CRIEVE NOTE: The other icon doesn't exist in the game files yet
				maps = CAPITAL_GARDENS_MAPS,
			}),
			ach(644, {	-- King of Dire Maul
				maps = merge(WARPWOOD_QUARTER_MAPS, GORDOK_COMMONS_MAPS, CAPITAL_GARDENS_MAPS),
			}),
		}),
		n(FACTIONS, {
			faction(FACTION_SHENDRALAR, {	-- Shen'dralar
				maps = CAPITAL_GARDENS_MAPS,
				OnTooltip = OnTooltipForShendralar,
			}),
			faction(FACTION_STEAMWHEEDLE_CARTEL, {	-- Steamwheedle Cartel
				icon = 133784,
				OnTooltip = OnTooltipForSteamweedle,
				maps = merge(GORDOK_COMMONS_MAPS, {
					FERALAS,
					STRANGLETHORN_VALE,
					TANARIS,
					THE_BARRENS,
					WINTERSPRING,
				}),
			}),
		}),
		n(QUESTS, {
			q(1193, {	-- A Broken Trap
				description = "Use the items on the Broken Trap to trap Guard Slip'kik. It takes a few seconds to finish fixing the trap.\n\nYou must activate this trap in order to do the Tribute Run.",
				cost = {
					{ "i", 15994, 1 },	-- Thorium Widget
					{ "i", 3829, 1 },	-- Frost Oil
				},
				provider = { "o", 179485 },	-- Broken Trap
				maps = GORDOK_COMMONS_MAPS,
				repeatable = true,
				lvl = 56,
			}),
			q(7463, {	-- Arcane Refreshment
				qg = 14368,	-- Lorekeeper Lydros
				maps = merge(WARPWOOD_QUARTER_MAPS, CAPITAL_GARDENS_MAPS),
				classes = { MAGE },
				lvl = 60,
				groups = {
					objective(1, {	-- 0/1 Hydrospawn Essence
						provider = { "i", 18299 },	-- Hydrospawn Essence
					}),
					recipe(10140),	-- Conjure Water (Rank 7)
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
				maps = { FERALAS },
				races = HORDE_ONLY,
				isBreadcrumb = true,
				lvl = 54,
			}),
			q(5527, {	-- A Reliquary of Purity
				qg = 11801,	-- Rabine Saturna
				coord = { 51.7, 45.1, MOONGLADE },
				description = "The character must first visit Dire Maul, so that the Moonglade NPC will offer a conversation that unlocks the quest.",
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
				timeline = { REMOVED_1_15_3 },
				maps = CAPITAL_GARDENS_MAPS,
				classes = { WARRIOR },
				lvl = 54,
				groups = {
					i(18466),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7631, {	-- Dreadsteed of Xoroth
				sourceQuest = 7629,	-- Imp Delivery
				qg = 14436,	-- Mor'zul Bloodbringer
				qi = 18818,	-- Mor'zul's Instructions
				coord = { 12.6, 31.6, BURNING_STEPPES },
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
					{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
					{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
				},
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
					9788,	-- Armorsmith
				groups = {
					i(12727),	-- Plans: Enchanted Thorium Breastplate (RECIPE!)
				},
			})),
			applyclassicphase(PHASE_THREE_RECIPES, q(7650, {	-- Enchanted Thorium Platemail: Volume II
				providers = {
					{ "i", 18770 },	-- Enchanted Thorium Platemail (Volume II)
					{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
				},
				maps = {
					236,	-- Capital Gardens
					STRATHOLME, SCHOLOMANCE
				},
				cost = {
					{ "i", 18781, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume II
					{ "i", 18782, 1 },	-- Top Half of Advanced Armorsmithing: Volume II
				},
				requireSkill =
					9788,	-- Armorsmith
				lvl = 50,
				groups = {
					i(12726),	-- Plans: Enchanted Thorium Leggings (RECIPE!)
				},
			})),
			applyclassicphase(PHASE_THREE_RECIPES, q(7651, {	-- Enchanted Thorium Platemail: Volume III
				providers = {
					{ "i", 18771 },	-- Enchanted Thorium Platemail (Volume III)
					{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
				},
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
					9788,	-- Armorsmith
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
				maps = { FERALAS },
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
				lvl = 54,
			}),
			q(5525, {	-- Free Knot!
				description = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
				cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
				qg = 14338,	-- Knot Thimblejack
				maps = GORDOK_COMMONS_MAPS,
				lvl = 54,
			}),
			q(7429, {	-- Free Knot! (repeatable)
				description = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
				cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
				sourceQuest = 5525,	-- Free Knot!
				qg = 14338,	-- Knot Thimblejack
				maxReputation = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },
				maps = GORDOK_COMMONS_MAPS,
				repeatable = true,
				lvl = 54,
			}),
			q(7505, {	-- Frost Shock and You
				providers = {
					{ "i", 18363 },	-- Frost Shock and You
					{ "n", 14381 },	-- Lorekeeper Javon
				},
				maps = CAPITAL_GARDENS_MAPS,
				races = HORDE_ONLY,
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
				timeline = { REMOVED_1_15_3 },
				maps = CAPITAL_GARDENS_MAPS,
				classes = { ROGUE },
				lvl = 54,
				groups = {
					i(18465),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7502, {	-- Harnessing Shadows
				providers = {
					{ "i", 18360 },	-- Harnessing Shadows
					{ "n", 14382 },	-- Lorekeeper Mykos
				},
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
				maps = CAPITAL_GARDENS_MAPS,
				classes = { PRIEST },
				lvl = 54,
				groups = {
					i(18469),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7488, {	-- Lethtendris's Web [Alliance]
				sourceQuest = 7494,	-- Feathermoon Stronghold
				qg = 7877,	-- Latronicus Moonspear
				coord = { 30.4, 46.2, FERALAS },
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
			q(7484, {	-- Libram of Focus
				sourceQuests = {
					7481,	-- Elven Legends
					7482,	-- Elven Legends
				},
				qg = 14368,	-- Lorekeeper Lydros
				maxReputation = { FACTION_SHENDRALAR, EXALTED },
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
					i(228466),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7500, {	-- The Arcanist's Cookbook
				providers = {
					{ "i", 18358 },	-- The Arcanist's Cookbook
					{ "n", 14383 },	-- Lorekeeper Kildrath
				},
				timeline = { REMOVED_1_15_3 },
				maps = CAPITAL_GARDENS_MAPS,
				classes = { MAGE },
				lvl = 54,
				groups = {
					i(18468),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7506, {	-- The Emerald Dream...
				providers = {
					{ "i", 18364 },	-- The Emerald Dream
					{ "n", 14381 },	-- Lorekeeper Javon
				},
				maps = CAPITAL_GARDENS_MAPS,
				classes = { DRUID },
				lvl = 54,
				groups = {
					i(18470),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(5518, {	-- The Gordok Ogre Suit
				qg = 14338,	-- Knot Thimblejack
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
			q(5528, {	-- The Gordok Taste Test
				description = "With Stomper Kreeg left alive, kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.\n\nHe sells these items after you have completed the quest and if you are Friendly with him.",
				qg = 14322,	-- Stomper Kreeg <The Drunk>
				maps = GORDOK_COMMONS_MAPS,
				lvl = 56,
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
				maps = CAPITAL_GARDENS_MAPS,
				classes = { HUNTER },
				lvl = 54,
				groups = {
					i(18473),	-- Royal Seal of Eldre'Thalas
				},
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
					i(228467),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7501, {	-- The Light and How To Swing It
				providers = {
					{ "i", 18359 },	-- The Light and How to Swing It
					{ "n", 14382 },	-- Lorekeeper Mykos
				},
				timeline = { REMOVED_1_15_3 },
				maps = CAPITAL_GARDENS_MAPS,
				classes = { PALADIN },
				lvl = 54,
				groups = {
					i(18472),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7461, {	-- The Madness Within
				qg = 14358,	-- Shen'dralar Ancient
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
			q(7877, {	-- The Treasure of the Shen'dralar
				sourceQuest = 7461,	-- The Madness Within
				providers = {
					{ "n",  14358 },	-- Shen'dralar Ancient
					{ "o", 179517 },	-- Treasure of the Shen'dralar
				},
				maps = CAPITAL_GARDENS_MAPS,
				lvl = 57,
				groups = {
					i(18421),	-- Backwood Helm
					i(18420),	-- Bonecrusher
					i(18424),	-- Sedge Boots
				},
			}),
			q(7703, {	-- Unfinished Gordok Business
				description = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
				qg = 14325,	-- Captain Kromcrush
				maps = merge(WARPWOOD_QUARTER_MAPS, GORDOK_COMMONS_MAPS, CAPITAL_GARDENS_MAPS),
				lvl = 60,
				groups = {
					objective(1, {	-- 0/1 Gauntlet of Gordok Might
						provider = { "i", 18336 },	-- Gauntlet of Gordok Might
					}),
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
				i(18333),	-- Libram of Focus
				i(18334),	-- Libram of Protection
				i(18332),	-- Libram of Rapidity
				applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(21982, {	-- Ogre Warbeads
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
				})),
			},
		}),
		n(COMMON_BOSS_DROPS, {
			provider = { "o", 179547 },	-- A Dusty Tome
			description = "The following items can drop from any boss in Dire Maul and also from Dusty Tomes on the ground.",
			maps = ALL_DIREMAUL_MAPS,
			groups = {
				i(228692, {	-- Codex of Defense
					timeline = { ADDED_1_15_3 },
				}),
				i(18357, {	-- Codex of Defense
					timeline = { REMOVED_1_15_3 },
				}),
				i(18360),	-- Harnessing Shadows
				i(18363),	-- Frost Shock and You
				i(228691, {	-- Garona: A Study on Stealth and Treachery
					timeline = { ADDED_1_15_3 },
				}),
				i(18356, {	-- Garona: A Study on Stealth and Treachery
					timeline = { REMOVED_1_15_3 },
				}),
				i(18362),	-- Holy Bologna: What the Light Won't Tell You
				i(228680, {	-- Nostro's Compendium of Dragon Slaying
					timeline = { ADDED_1_15_3 },
				}),
				i(18401, {	-- Nostro's Compendium of Dragon Slaying
					timeline = { REMOVED_1_15_3 },
				}),
				i(228693, {	-- The Arcanist's Cookbook
					timeline = { ADDED_1_15_3 },
				}),
				i(18358, {	-- The Arcanist's Cookbook
					timeline = { REMOVED_1_15_3 },
				}),
				i(18364),	-- The Emerald Dream
				i(18361),	-- The Greatest Race of Hunters
				i(228690, {	-- The Light and How to Swing It
					timeline = { ADDED_1_15_3 },
				}),
				i(18359, {	-- The Light and How to Swing It
					timeline = { REMOVED_1_15_3 },
				}),
			},
		}),
		o(179547, {	-- A Dusty Tome
			maps = ALL_DIREMAUL_MAPS,
			groups = {
				i(18365, {	-- A Thoroughly Read Copy of "Nat Pagle's Guide to Extreme Anglin'."
					lore = "This item is utterly worthless, however there was a rumor that this item could be used to obtain the original Ashbringer via fishing.",
					description =
						"This can be found in various places throughout all the wings of Dire Maul.\n\n North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\n East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\n West: By the southern generator in Immol'thar's room.",
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
						classes = { WARLOCK },
						crs = {
							11454,	-- Wildspawn Betrayer
							11455,	-- Wildspawn Felsworn
							11457,	-- Wildspawn Hellcaller
							11452,	-- Wildspawn Rogue
							11451,	-- Wildspawn Satyr
							11456,	-- Wildspawn Shadowstalker
							11453,	-- Wildspawn Trickster
						},
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
								"This key is required to enter the Gordok Commons and Capital Gardens.",
						}),
						i(18261),	-- Book of Incantations
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
						applyclassicphase(SOD_PHASE_FOUR, i(228051, {	-- Quel'dorei Channeling Rod
							timeline = { ADDED_1_15_3 },
						})),
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
						applyclassicphase(SOD_PHASE_FOUR, i(228052, {	-- Waveslicer
							timeline = { ADDED_1_15_3 },
						})),
						i(18324, {	-- Waveslicer
							timeline = { REMOVED_1_15_3 },
						}),
						applyclassicphase(SOD_PHASE_FOUR, i(228054, {	-- Tempest Talisman
							timeline = { ADDED_1_15_3 },
						})),
						i(18317, {	-- Tempest Talisman
							timeline = { REMOVED_1_15_3 },
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
						applyclassicphase(SOD_PHASE_FOUR, i(228050, {	-- Satyr's Bow
							timeline = { ADDED_1_15_3 },
						})),
						i(18323, {	-- Satyr's Bow
							timeline = { REMOVED_1_15_3 },
						}),
						i(18308),	-- Clever Hat
						applyclassicphase(SOD_PHASE_FOUR, i(228053, {	-- Fervent Helm
							timeline = { ADDED_1_15_3 },
						})),
						i(18319, {	-- Fervent Helm
							timeline = { REMOVED_1_15_3 },
						}),
						i(18313),	-- Helm of Awareness
						i(18306),	-- Gloves of Shadowy Mist
					},
				}),
				n(11491, {	-- Old Ironbark
					description = "Talk to him for him to break down the door.",
				}),
				applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n_conditional(16097, {	-- Isalien
					description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
					cost = {
						{ "i", 22050, 1 },	-- Brazier of Beckoning [Isalien]
					},
					provider = { "i", 22057 },	-- Brazier of Invocation
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
						applyclassicphase(SOD_PHASE_FOUR, i(228066, {	-- Ironweave Gloves
							timeline = { ADDED_1_15_3 },
						})),
						i(22304, {	-- Ironweave Gloves
							timeline = { REMOVED_1_15_3 },
						}),
						i(22472),	-- Boots of Ferocity
						i(22401),	-- Libram of Hope
						i(22345),	-- Totem of Rebirth
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
						applyclassicphase(SOD_PHASE_FOUR, i(228056, {	-- Fiendish Machete
							timeline = { ADDED_1_15_3 },
						})),
						i(18310, {	-- Fiendish Machete
							timeline = { REMOVED_1_15_3 },
						}),
						i(18328),	-- Shadewood Cloak
						applyclassicphase(SOD_PHASE_FOUR, i(228055, {	-- Energized Chestplate
							timeline = { ADDED_1_15_3 },
						})),
						i(18312, {	-- Energized Chestplate
							timeline = { REMOVED_1_15_3 },
						}),
						i(18309),	-- Gloves of Restoration
						i(18326),	-- Razor Gauntlets
						i(18327),	-- Whipvine Cord
						i(18318),	-- Merciful Greaves
						applyclassicphase(SOD_PHASE_FOUR, i(228699, {	-- Ring of Demonic Guile
							timeline = { ADDED_1_15_3 },
						})),
						i(18314, {	-- Ring of Demonic Guile
							timeline = { REMOVED_1_15_3 },
						}),
						-- This ring may have moved to Zevrim, will need to verify.
						applyclassicphase(SOD_PHASE_FOUR, i(228057, {	-- Ring of Demonic Potency
							timeline = { ADDED_1_15_3 },
						})),
						i(18315, {	-- Ring of Demonic Potency
							timeline = { REMOVED_1_15_3 },
						}),
					},
				}),
			},
		}),
		DIREMAUL_SUBMAP(235, GORDOK_COMMONS, {		-- Gordok Commons (North)
			coord = { 62.48, 24.48, FERALAS },	-- Dire Maul [North]
			maps = GORDOK_COMMONS_MAPS,
			cost = { { "i", 18249, 1 } },	-- Crescent Key
			groups = {
				n(ZONE_DROPS, {
					i(18250, {	-- Gordok Shackle Key
						description = "NOTE: Do NOT Free Knot if you are doing a Tribute Run. He runs away.",
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
				n(COMMON_BOSS_DROPS, {
					description = "The following items can drop from any of the guards.",
					crs = {
						14326,	-- Guard Mol'dar
						14321,	-- Guard Fengus
						14323,	-- Guard Slip'kik
					},
					groups = {
						i(18462),	-- Jagged Bone Fist
						i(18463),	-- Ogre Pocket Knife
						i(18460),	-- Unsophisticated Hand Cannon
						i(18450),	-- Robe of Combustion
						i(18451),	-- Hyena Hide Belt
						i(18459),	-- Gallant's Wristguards (7.3.5 - Moved to Cho'Rush the Observer)
						i(18458),	-- Modest Armguards (7.3.5 - Moved to Captain Kromcrush)
						i(18464),	-- Gordok Nose Ring
					},
				}),
				e(411, {	-- Guard Mol'dar
					creatureID = 14326,
					description = "If you do not have a way to open the inner door, you can kill him for the Inner Door Key.\n\nDoing so will invalidate your Tribute Run.",
					groups = {
						i(18498),	-- Hedgecutter
						applyclassicphase(SOD_PHASE_FOUR, i(228060, {	-- Heliotrope Cloak
							timeline = { ADDED_1_15_3 },
						})),
						i(18496, {	-- Heliotrope Cloak
							timeline = { REMOVED_1_15_3 },
						}),
						applyclassicphase(SOD_PHASE_FOUR, i(228058, {	-- Bulky Iron Spaulders
							timeline = { ADDED_1_15_3 },
						})),
						i(18493, {	-- Bulky Iron Spaulders
							timeline = { REMOVED_1_15_3 },
						}),
						applyclassicphase(SOD_PHASE_FOUR, i(228059, {	-- Denwatcher's Shoulders
							timeline = { ADDED_1_15_3 },
						})),
						i(18494, {	-- Denwatcher's Shoulders
							timeline = { REMOVED_1_15_3 },
						}),
						i(18497),	-- Sublime Wristguards
						i(18268),	-- Gordok Inner Door Key
					},
				}),
				e(412, {	-- Stomper Kreeg
					creatureID = 14322,
					groups = {
						i(18425),	-- Kreeg's Mug
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
						"Avoid him and loot his chest for a key to open the door.",
					groups = {
						i(18266, {	-- Gordok Courtyard Key
							provider = { "o", 179516 },	-- Fengus's Chest
						}),
					},
				}),
				e(414, {	-- Guard Slip'kik
					creatureID = 14323,
					groups = {
						i(18498),	-- Hedgecutter
						applyclassicphase(SOD_PHASE_FOUR, i(228060, {	-- Heliotrope Cloak
							timeline = { ADDED_1_15_3 },
						})),
						i(18496, {	-- Heliotrope Cloak
							timeline = { REMOVED_1_15_3 },
						}),
						applyclassicphase(SOD_PHASE_FOUR, i(228058, {	-- Bulky Iron Spaulders
							timeline = { ADDED_1_15_3 },
						})),
						i(18493, {	-- Bulky Iron Spaulders
							timeline = { REMOVED_1_15_3 },
						}),
						applyclassicphase(SOD_PHASE_FOUR, i(228059, {	-- Denwatcher's Shoulders
							timeline = { ADDED_1_15_3 },
						})),
						i(18494, {	-- Denwatcher's Shoulders
							timeline = { REMOVED_1_15_3 },
						}),
						i(18497),	-- Sublime Wristguards
					},
				}),
				o(179501, {	-- Knot Thimblejack's Cache
					sourceQuest = 5525,	-- Free Knot!
					cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
					groups = {
						i(18240),	-- Ogre Tannin
						applyclassicphase(SOD_PHASE_FOUR, i(228477, {	-- Pattern: Embroidered Belt of the Archmage (RECIPE!)
							timeline = { ADDED_1_15_3 },
						})),
						i(18414, {	-- Pattern: Belt of the Archmage (RECIPE!)
							timeline = { REMOVED_1_15_3 },
						}),
						applyclassicphase(SOD_PHASE_FOUR, i(227910, {	-- Pattern: Brilliant Chromatic Cloak (RECIPE!)
							timeline = { ADDED_1_15_3 },
						})),
						i(18517, {	-- Pattern: Chromatic Cloak (RECIPE!)
							timeline = { REMOVED_1_15_3 },
						}),
						i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
						i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
						applyclassicphase(SOD_PHASE_FOUR, i(228319, {	-- Pattern: Girdle of Arcane Insight (RECIPE!)
							timeline = { ADDED_1_15_3 },
						})),
						i(18514, {	-- Pattern: Girdle of Insight (RECIPE!)
							timeline = { REMOVED_1_15_3 },
						}),
						i(18518),	-- Pattern: Hide of the Wild (RECIPE!)
						i(18416),	-- Pattern: Inferno Gloves (RECIPE!)
						i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
						i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
						applyclassicphase(SOD_PHASE_FOUR, i(228276, {	-- Pattern: Mastercrafted Shifting Cloak (RECIPE!)
							timeline = { ADDED_1_15_3 },
						})),
						i(18519, {	-- Pattern: Shifting Cloak (RECIPE!)
							timeline = { REMOVED_1_15_3 },
						}),
						i(18516, {	-- Pattern: Swift Flight Bracers (RECIPE!)
							timeline = { REMOVED_1_15_3 },
						}),
						applyclassicphase(SOD_PHASE_FOUR, i(228301, {	-- Pattern: Swift Flight Vambraces (RECIPE!)
							timeline = { ADDED_1_15_3 },
						})),
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
						"In order to get to this boss, you must use the Inner Door Key or have an engineer open the door using a Seaforium Charge.\n\nUse the Gordok Ogre Suit to skip him. (talk to him)",
					cost = {
						{ "i", 18268, 1 },	-- Gordok Inner Door Key
						{ "i", 18258, 1 },	-- Gordok Ogre Suit
					},
					groups = {
						i(18502),	-- Monstrous Glaive
						i(18503),	-- Kromcrush's Chestplate
						applyclassicphase(SOD_PHASE_FOUR, i(228068, {	-- Mugger's Belt
							timeline = { ADDED_1_15_3 },
						})),
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
						applyclassicphase(SOD_PHASE_FOUR, i(228064, {	-- Observer's Shield
							description = "This doesn't appear to have been added yet.",
							timeline = { CREATED_1_15_3 },
						})),
						i(18485, {	-- Observer's Shield
							-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
							-- timeline = { REMOVED_1_15_3 },
						}),
						applyclassicphase(SOD_PHASE_FOUR, i(228062, {	-- Insightful Hood
							description = "This doesn't appear to have been added yet.",
							timeline = { CREATED_1_15_3 },
						})),
						i(18490, {	-- Insightful Hood
							-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
							-- timeline = { REMOVED_1_15_3 },
						}),
					},
				}),
				e(417, {	-- King Gordok
					creatureID = 11501,
					groups = {
						applyclassicphase(SOD_PHASE_FOUR, i(228478, {	-- Barbarous Blade
							timeline = { ADDED_1_15_3 },
						})),
						i(18520, {	-- Barbarous Blade
							timeline = { REMOVED_1_15_3 },
						}),
						i(18523),	-- Brightly Glowing Stone
						applyclassicphase(SOD_PHASE_FOUR, i(228480, {	-- Crown of the Ogre King
							timeline = { ADDED_1_15_3 },
						})),
						i(18526, {	-- Crown of the Ogre King
							timeline = { REMOVED_1_15_3 },
						}),
						i(18525),	-- Bracers of Prosperity
						i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
						applyclassicphase(SOD_PHASE_FOUR, i(228479, {	-- Leggings of Destruction
							timeline = { ADDED_1_15_3 },
						})),
						i(18524, {	-- Leggings of Destruction
							timeline = { REMOVED_1_15_3 },
						}),
						i(18521),	-- Grimy Metal Boots
						i(18522),	-- Band of the Ogre King
						applyclassicphase(PHASE_THREE_DMF_CARDS, i(19258)),	-- Ace of Warlords
						i(18780),	-- Top Half of Advanced Armorsmithing: Volume I
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
						applyclassicphase(SOD_PHASE_FOUR, i(228065, {	-- Cyclone Spaulders
							timeline = { ADDED_1_15_3 },
						})),
						i(18528, {	-- Cyclone Spaulders
							timeline = { REMOVED_1_15_3 },
						}),
						i(18529),	-- Elemental Plate Girdle
						i(18533),	-- Gordok Bracers of Power
						i(18478),	-- Hyena Hide Jerkin
						applyclassicphase(SOD_PHASE_FOUR, i(228474, {	-- Mindsurge Robe
							timeline = { ADDED_1_15_3 },
						})),
						i(18532, {	-- Mindsurge Robe
							timeline = { REMOVED_1_15_3 },
						}),
						i(18476),	-- Mud Stained Boots
						i(18475),	-- Oddly Magical Belt
						applyclassicphase(SOD_PHASE_FOUR, i(228070, {	-- Ogre Forged Hauberk
							timeline = { ADDED_1_15_3 },
						})),
						i(18530, {	-- Ogre Forged Hauberk
							timeline = { REMOVED_1_15_3 },
						}),
						i(18482),	-- Ogre Toothpick Shooter
						i(18495),	-- Redoubt Cloak
						applyclassicphase(SOD_PHASE_FOUR, i(228484, {	-- Rod of the Ogre Magi
							timeline = { ADDED_1_15_3 },
						})),
						i(18534, {	-- Rod of the Ogre Magi
							timeline = { REMOVED_1_15_3 },
						}),
						i(18480),	-- Scarab Plate Helm
						i(18477),	-- Shaggy Leggings
						i(18481),	-- Skullcracking Mace
						applyclassicphase(SOD_PHASE_FOUR, i(228469, {	-- Tarnished Elven Ring
							timeline = { ADDED_1_15_3 },
						})),
						i(18500, {	-- Tarnished Elven Ring
							timeline = { REMOVED_1_15_3 },
						}),
						applyclassicphase(SOD_PHASE_FOUR, i(228486, {	-- Treant's Bane
							description = "There's no evidence that this version has dropped yet. @Crieve if you get one to drop.",
							timeline = { CREATED_1_15_3 },
						})),
						i(18538, {	-- Treant's Bane
							-- CRIEVE NOTE: There's no evidence that the reitemized version has dropped yet.
							-- timeline = { REMOVED_1_15_3 },
						}),
						applyclassicphase(SOD_PHASE_FOUR, i(228473, {	-- Unyielding Maul
							timeline = { ADDED_1_15_3 },
						})),
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
			cost = { { "i", 18249, 1 } },	-- Crescent Key
			groups = {
				n(VENDORS, {
					n(14371, {	-- Shen'dralar Provisioner
						applyclassicphase(SOD_PHASE_FOUR, i(228303, {	-- Pattern: Incandescent Mooncloth Robe (RECIPE!)
							timeline = { ADDED_1_15_3 },
						})),
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
						applyclassicphase(SOD_PHASE_FOUR, i(228067, {	-- Elder Magus Pendant
							timeline = { ADDED_1_15_3 },
						})),
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
						applyclassicphase(SOD_PHASE_FOUR, i(228061, {	-- Brightspark Gloves
							timeline = { ADDED_1_15_3 },
						})),
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
						i(18386),	-- Padre's Trousers
					},
				}),
				e(406, {	-- Tendris Warpwood
					creatureID = 11489,
					groups = {
						i(18353),	-- Stoneflower Staff
						i(18352),	-- Petrified Bark Shield
						applyclassicphase(SOD_PHASE_FOUR, i(228063, {	-- Warpwood Bindings
							timeline = { ADDED_1_15_3 },
						})),
						i(18393, {	-- Warpwood Bindings
							timeline = { REMOVED_1_15_3 },
						}),
						applyclassicphase(SOD_PHASE_FOUR, i(228468, {	-- Tanglemoss Leggings
							timeline = { ADDED_1_15_3 },
						})),
						i(18390, {	-- Tanglemoss Leggings
							timeline = { REMOVED_1_15_3 },
						}),
						applyclassicphase(SOD_PHASE_SEVEN, i(235787, {	-- Ancient Ironwood Branch (QI!)
							timeline = { ADDED_1_15_6 },
						})),
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
						i(18377),	-- Quickdraw Gloves (7.3.5 - Moved to Illyanna Ravenoak)
						i(18391),	-- Eyestalk Cord
						i(18379),	-- Odious Greaves
						i(18370),	-- Vigilance Charm
					},
				}),
				n_conditional(14506, {	-- Lord Hel'nurath
					description =
						"|cff3399ffSTEP 1:|r Find a Warlock that is on or has completed Dreadsteed of Xoroth.\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs, Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 12.4, 31.6)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once creatures stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
					sourceQuest = 7631,	-- Dreadsteed of Xoroth
					cost = {
						{ "i", 18670, 1 },	-- Xorothian Glyphs
						{ "i", 18629, 1 },	-- Black Lodestone
						{ "i", 18663, 1 },	-- J'eevee's Jar
					},
					groups = {
						applyclassicphase(SOD_PHASE_FOUR, i(228475, {	-- Diabolic Mantle
							timeline = { ADDED_1_15_3 },
						})),
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
							timeline = { ADDED_1_11_1 },
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
						applyclassicphase(SOD_PHASE_FOUR, i(228472, {	-- Distracting Dagger
							timeline = { ADDED_1_15_3 },
						})),
						i(18392, {	-- Distracting Dagger
							timeline = { REMOVED_1_15_3 },
						}),
						i(18396),	-- Mind Carver
						i(18376),	-- Timeworn Mace
						applyclassicphase(SOD_PHASE_FOUR, i(228471, {	-- Stoneshatter
							timeline = { ADDED_1_15_3 },
						})),
						i(18388, {	-- Stoneshatter
							timeline = { REMOVED_1_15_3 },
						}),
						i(18382),	-- Fluctuating Cloak
						i(18373),	-- Chestplate of Tranquility
						i(18375),	-- Bracers of the Eclipse
						applyclassicphase(SOD_PHASE_FOUR, i(228069, {	-- Eldritch Reinforced Legplates
							timeline = { ADDED_1_15_3 },
						})),
						i(18380, {	-- Eldritch Reinforced Legplates
							timeline = { REMOVED_1_15_3 },
						}),
						applyclassicphase(SOD_PHASE_FOUR, i(228470, {	-- Silvermoon Leggings
							timeline = { ADDED_1_15_3 },
						})),
						i(18378, {	-- Silvermoon Leggings
							timeline = { REMOVED_1_15_3 },
						}),
						i(18395),	-- Emerald Flame Ring
					},
				}),
			},
		}),
	},
}));
```

</details>

## P1 → P2.1 — add keys to each Lua alternative

**Author edits:** the production source above. Keep every existing legacy phase writer, ordinary requirement and acquisition route. Add a key where a rule belongs; a child inherits all ancestor rules and adds its own through **AND**. A pure `progressionKey` + `groups` envelope shares a rule without adding a visible output header.

### Standard

**Saved result:** [p2.1/standard.lua](p2.1/standard.lua), a generated comparison. The first changed lines below are exact hunks from the full diff.

```diff
--- p1/standard.lua
+++ p2.1/standard.lua
@@ -144,7 +145,7 @@
 -- #endif
 
 root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, applyclassicphase(PHASE_ONE_DIREMAUL, {
-	inst(230, {	-- Dire Maul
+	inst(230, { progressionKey = "dire-maul.common",	-- Dire Maul
 		-- #if BEFORE MOP
 		lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
 		-- #endif
@@ -382,7 +383,7 @@
 						}),
 					},
 				},
-				applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
+				{ progressionKey = "dire-maul.recipe-quests", groups = { applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
 					providers = {
 						-- #IF BEFORE 4.0.3
 						{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
@@ -1061,7 +1062,7 @@
 						description = "This still drops despite being completely worthless.",
 						-- #endif
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(21982, {	-- Ogre Warbeads
+					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
 						timeline = { REMOVED_4_0_3 },
 						-- #if BEFORE 4.0.3
 						crs = {
```

<details>
<summary>Show every P1 → P2.1 change in standard.lua</summary>

```diff
--- p1/standard.lua
+++ p2.1/standard.lua
@@ -1,4 +1,5 @@
--- P1 comparison: unmodified human-authored source from .contrib/.db/standard/01 - Dungeons Raids/01 - Classic/Dire Maul.lua.
+-- P2.1 generated comparison: complete standard source.
+-- Generated by evolution/full-source/generate_sets.py.
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
@@ -382,7 +383,7 @@
 						}),
 					},
 				},
-				applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
+				{ progressionKey = "dire-maul.recipe-quests", groups = { applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
 					providers = {
 						-- #IF BEFORE 4.0.3
 						{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
@@ -471,7 +472,7 @@
 					groups = {
 						i(12725),	-- Plans: Enchanted Thorium Helm (RECIPE!)
 					},
-				})),
+				})) } },
 				q(7494, {	-- Feathermoon Stronghold
 					qgs = {
 						2198,	-- Crier Goodman
@@ -1061,7 +1062,7 @@
 						description = "This still drops despite being completely worthless.",
 						-- #endif
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(21982, {	-- Ogre Warbeads
+					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
 						timeline = { REMOVED_4_0_3 },
 						-- #if BEFORE 4.0.3
 						crs = {
@@ -1076,7 +1077,7 @@
 							11448,	-- Gordok Warlock
 						},
 						-- #endif
-					})),
+					}) } }),
 				},
 			}),
 			n(COMMON_BOSS_DROPS, {
@@ -1232,7 +1233,7 @@
 							i(18305),	-- Breakwater Legguards
 							i(18307),	-- Riptide Shoes
 							i(18322),	-- Waterspout Boots
-							applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
+							applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } }),	-- Ace of Elementals
 						},
 					}),
 					e(402, {	-- Zevrim Thornhoof
@@ -1252,7 +1253,7 @@
 					n(11491, {	-- Old Ironbark
 						description = "Talk to him for him to break down the door.",
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n_conditional(16097, {	-- Isalien
+					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
 						description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
 						-- #if BEFORE 6.0.2
 						cost = {
@@ -1285,7 +1286,7 @@
 								timeline = { DELETED_5_0_4 },
 							}),
 						},
-					})),
+					}) } }),
 					e(405, {	-- Alzzin the Wildshaper
 						creatureID = 11492,
 						groups = {
@@ -1541,7 +1542,7 @@
 							i(18524),	-- Leggings of Destruction
 							i(18521),	-- Grimy Metal Boots
 							i(18522),	-- Band of the Ogre King
-							applyclassicphase(PHASE_THREE_DMF_CARDS, i(19258)),	-- Ace of Warlords
+							applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } }),	-- Ace of Warlords
 							i(18780, {	-- Top Half of Advanced Armorsmithing: Volume I
 								timeline = { DELETED_4_0_3 },
 							}),
@@ -1606,7 +1607,7 @@
 								11472,	-- Eldreth Spirit
 							},
 						}),
-						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(22224, {	-- Jeering Spectre's Essence
+						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
 							crs = {
 								11471,	-- Eldreth Apparition
 								11475,	-- Eldreth Phantasm
@@ -1615,7 +1616,7 @@
 								11473,	-- Eldreth Spectre
 								11472,	-- Eldreth Spirit
 							},
-						})),
+						}) } }),
 						i(18337, {	-- Orphic Bracers
 							crs = {
 								11480,	-- Arcane Aberration
@@ -1650,7 +1651,7 @@
 					e(408, {	-- Magister Kalendris
 						creatureID = 11487,
 						groups = {
-							applyclassicphase(PHASE_FIVE_RECIPES, i(22309)),	-- Pattern: Big Bag of Enchantment (RECIPE!)
+							applyclassicphase(PHASE_FIVE_RECIPES, { progressionKey = "dire-maul.later-recipes", groups = { i(22309) } }),	-- Pattern: Big Bag of Enchantment (RECIPE!)
 							i(18397),	-- Elder Magus Pendant
 							i(18374),	-- Flamescarred Shoulders
 							i(18350),	-- Amplifying Cloak
@@ -1702,12 +1703,12 @@
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
```

</details>

**Proposed control:** [p2.1/standard.migration.json](p2.1/standard.migration.json). It names only this alternative; `sources` is relative to the control file. Do not combine the alternative controls into one input build.

```json
{
  "$comment": "Generated proposed comparison control; select only this source alternative.",
  "schema": 1,
  "defaultStage": "P1",
  "cohorts": [
    {
      "id": "comparison-fixture-dire-maul",
      "stage": "P2.1",
      "sources": [
        "standard.lua"
      ]
    }
  ]
}
```

### Standalone SoD

**Saved result:** [p2.1/sod.lua](p2.1/sod.lua), a generated comparison. The first changed lines below are exact hunks from the full diff.

```diff
--- p1/sod.lua
+++ p2.1/sod.lua
@@ -130,6 +131,7 @@
 end]];
 
 instanceroot(230, applyclassicphase(PHASE_ONE_DIREMAUL, {	-- Dire Maul
+	progressionKey = "dire-maul.common",
 	lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
 	zoneTextAreaIDs = {
 		2557,	-- Dire Maul
@@ -307,7 +309,7 @@
 					}),
 				},
 			},
-			applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
+			{ progressionKey = "dire-maul.recipe-quests", groups = { applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
 				providers = {
 					{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
 					{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
@@ -753,7 +755,7 @@
 				i(18333),	-- Libram of Focus
 				i(18334),	-- Libram of Protection
 				i(18332),	-- Libram of Rapidity
-				applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(21982, {	-- Ogre Warbeads
+				applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
 					crs = {
 						11441,	-- Gordok Brute
 						14351,	-- Gordok Bushwacker
```

<details>
<summary>Show every P1 → P2.1 change in sod.lua</summary>

```diff
--- p1/sod.lua
+++ p2.1/sod.lua
@@ -1,4 +1,5 @@
--- P1 comparison: unmodified human-authored source from .contrib/.db/season of discovery/dungeons & raids/Dire Maul.lua.
+-- P2.1 generated comparison: complete sod source.
+-- Generated by evolution/full-source/generate_sets.py.
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
 -----------------------------------------------------
@@ -130,6 +131,7 @@
 end]];
 
 instanceroot(230, applyclassicphase(PHASE_ONE_DIREMAUL, {	-- Dire Maul
+	progressionKey = "dire-maul.common",
 	lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
 	zoneTextAreaIDs = {
 		2557,	-- Dire Maul
@@ -307,7 +309,7 @@
 					}),
 				},
 			},
-			applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
+			{ progressionKey = "dire-maul.recipe-quests", groups = { applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
 				providers = {
 					{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
 					{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
@@ -375,7 +377,7 @@
 				groups = {
 					i(12725),	-- Plans: Enchanted Thorium Helm (RECIPE!)
 				},
-			})),
+			})) } },
 			q(7494, {	-- Feathermoon Stronghold
 				qgs = {
 					2198,	-- Crier Goodman
@@ -753,7 +755,7 @@
 				i(18333),	-- Libram of Focus
 				i(18334),	-- Libram of Protection
 				i(18332),	-- Libram of Rapidity
-				applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(21982, {	-- Ogre Warbeads
+				applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
 					crs = {
 						11441,	-- Gordok Brute
 						14351,	-- Gordok Bushwacker
@@ -765,7 +767,7 @@
 						11450,	-- Gordok Reaver
 						11448,	-- Gordok Warlock
 					},
-				})),
+				}) } }),
 			},
 		}),
 		n(COMMON_BOSS_DROPS, {
@@ -891,9 +893,9 @@
 					creatureID = 14327,
 					groups = {
 						i(18426),	-- Lethtendris's Web
-						applyclassicphase(SOD_PHASE_FOUR, i(228051, {	-- Quel'dorei Channeling Rod
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228051, {	-- Quel'dorei Channeling Rod
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18311, {	-- Quel'dorei Channeling Rod
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -906,37 +908,37 @@
 					creatureID = 13280,
 					groups = {
 						i(18299),	-- Hydrospawn Essence
-						applyclassicphase(SOD_PHASE_FOUR, i(228052, {	-- Waveslicer
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228052, {	-- Waveslicer
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18324, {	-- Waveslicer
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, i(228054, {	-- Tempest Talisman
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228054, {	-- Tempest Talisman
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18317, {	-- Tempest Talisman
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18305),	-- Breakwater Legguards
 						i(18307),	-- Riptide Shoes
 						i(18322),	-- Waterspout Boots
-						applyclassicphase(PHASE_THREE_DMF_CARDS, i(19268)),	-- Ace of Elementals
+						applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } }),	-- Ace of Elementals
 					},
 				}),
 				e(402, {	-- Zevrim Thornhoof
 					creatureID = 11490,
 					groups = {
-						applyclassicphase(SOD_PHASE_FOUR, i(228050, {	-- Satyr's Bow
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228050, {	-- Satyr's Bow
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18323, {	-- Satyr's Bow
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18308),	-- Clever Hat
-						applyclassicphase(SOD_PHASE_FOUR, i(228053, {	-- Fervent Helm
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228053, {	-- Fervent Helm
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18319, {	-- Fervent Helm
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -947,7 +949,7 @@
 				n(11491, {	-- Old Ironbark
 					description = "Talk to him for him to break down the door.",
 				}),
-				applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n_conditional(16097, {	-- Isalien
+				applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
 					description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
 					cost = {
 						{ "i", 22050, 1 },	-- Brazier of Beckoning [Isalien]
@@ -964,9 +966,9 @@
 						}),
 						i(22315),	-- Hammer of Revitalization
 						i(22314),	-- Huntsman's Harpoon
-						applyclassicphase(SOD_PHASE_FOUR, i(228066, {	-- Ironweave Gloves
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228066, {	-- Ironweave Gloves
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(22304, {	-- Ironweave Gloves
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -974,7 +976,7 @@
 						i(22401),	-- Libram of Hope
 						i(22345),	-- Totem of Rebirth
 					},
-				})),
+				}) } }),
 				e(405, {	-- Alzzin the Wildshaper
 					creatureID = 11492,
 					groups = {
@@ -983,16 +985,16 @@
 							provider = { "o", 179559 },	-- Felvine Shard
 						}),
 						i(18321),	-- Energetic Rod
-						applyclassicphase(SOD_PHASE_FOUR, i(228056, {	-- Fiendish Machete
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228056, {	-- Fiendish Machete
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18310, {	-- Fiendish Machete
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18328),	-- Shadewood Cloak
-						applyclassicphase(SOD_PHASE_FOUR, i(228055, {	-- Energized Chestplate
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228055, {	-- Energized Chestplate
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18312, {	-- Energized Chestplate
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1000,16 +1002,16 @@
 						i(18326),	-- Razor Gauntlets
 						i(18327),	-- Whipvine Cord
 						i(18318),	-- Merciful Greaves
-						applyclassicphase(SOD_PHASE_FOUR, i(228699, {	-- Ring of Demonic Guile
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228699, {	-- Ring of Demonic Guile
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18314, {	-- Ring of Demonic Guile
 							timeline = { REMOVED_1_15_3 },
 						}),
 						-- This ring may have moved to Zevrim, will need to verify.
-						applyclassicphase(SOD_PHASE_FOUR, i(228057, {	-- Ring of Demonic Potency
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228057, {	-- Ring of Demonic Potency
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18315, {	-- Ring of Demonic Potency
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1062,21 +1064,21 @@
 					description = "If you do not have a way to open the inner door, you can kill him for the Inner Door Key.\n\nDoing so will invalidate your Tribute Run.",
 					groups = {
 						i(18498),	-- Hedgecutter
-						applyclassicphase(SOD_PHASE_FOUR, i(228060, {	-- Heliotrope Cloak
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18496, {	-- Heliotrope Cloak
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, i(228058, {	-- Bulky Iron Spaulders
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18493, {	-- Bulky Iron Spaulders
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, i(228059, {	-- Denwatcher's Shoulders
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18494, {	-- Denwatcher's Shoulders
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1113,21 +1115,21 @@
 					creatureID = 14323,
 					groups = {
 						i(18498),	-- Hedgecutter
-						applyclassicphase(SOD_PHASE_FOUR, i(228060, {	-- Heliotrope Cloak
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18496, {	-- Heliotrope Cloak
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, i(228058, {	-- Bulky Iron Spaulders
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18493, {	-- Bulky Iron Spaulders
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, i(228059, {	-- Denwatcher's Shoulders
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18494, {	-- Denwatcher's Shoulders
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1139,23 +1141,23 @@
 					cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
 					groups = {
 						i(18240),	-- Ogre Tannin
-						applyclassicphase(SOD_PHASE_FOUR, i(228477, {	-- Pattern: Embroidered Belt of the Archmage (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228477, {	-- Pattern: Embroidered Belt of the Archmage (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18414, {	-- Pattern: Belt of the Archmage (RECIPE!)
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, i(227910, {	-- Pattern: Brilliant Chromatic Cloak (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(227910, {	-- Pattern: Brilliant Chromatic Cloak (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18517, {	-- Pattern: Chromatic Cloak (RECIPE!)
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
 						i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
-						applyclassicphase(SOD_PHASE_FOUR, i(228319, {	-- Pattern: Girdle of Arcane Insight (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228319, {	-- Pattern: Girdle of Arcane Insight (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18514, {	-- Pattern: Girdle of Insight (RECIPE!)
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1163,18 +1165,18 @@
 						i(18416),	-- Pattern: Inferno Gloves (RECIPE!)
 						i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
 						i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
-						applyclassicphase(SOD_PHASE_FOUR, i(228276, {	-- Pattern: Mastercrafted Shifting Cloak (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228276, {	-- Pattern: Mastercrafted Shifting Cloak (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18519, {	-- Pattern: Shifting Cloak (RECIPE!)
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18516, {	-- Pattern: Swift Flight Bracers (RECIPE!)
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, i(228301, {	-- Pattern: Swift Flight Vambraces (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228301, {	-- Pattern: Swift Flight Vambraces (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 					},
 				}),
 				o(179499, {	-- Ogre Tannin Basket
@@ -1194,9 +1196,9 @@
 					groups = {
 						i(18502),	-- Monstrous Glaive
 						i(18503),	-- Kromcrush's Chestplate
-						applyclassicphase(SOD_PHASE_FOUR, i(228068, {	-- Mugger's Belt
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228068, {	-- Mugger's Belt
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18505, {	-- Mugger's Belt
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1208,18 +1210,18 @@
 					groups = {
 						i(18484),	-- Cho'Rush's Blade
 						i(18483),	-- Mana Channeling Wand
-						applyclassicphase(SOD_PHASE_FOUR, i(228064, {	-- Observer's Shield
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228064, {	-- Observer's Shield
 							description = "This doesn't appear to have been added yet.",
 							timeline = { CREATED_1_15_3 },
-						})),
+						}) } }),
 						i(18485, {	-- Observer's Shield
 							-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
 							-- timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, i(228062, {	-- Insightful Hood
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228062, {	-- Insightful Hood
 							description = "This doesn't appear to have been added yet.",
 							timeline = { CREATED_1_15_3 },
-						})),
+						}) } }),
 						i(18490, {	-- Insightful Hood
 							-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
 							-- timeline = { REMOVED_1_15_3 },
@@ -1229,30 +1231,30 @@
 				e(417, {	-- King Gordok
 					creatureID = 11501,
 					groups = {
-						applyclassicphase(SOD_PHASE_FOUR, i(228478, {	-- Barbarous Blade
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228478, {	-- Barbarous Blade
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18520, {	-- Barbarous Blade
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18523),	-- Brightly Glowing Stone
-						applyclassicphase(SOD_PHASE_FOUR, i(228480, {	-- Crown of the Ogre King
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228480, {	-- Crown of the Ogre King
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18526, {	-- Crown of the Ogre King
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18525),	-- Bracers of Prosperity
 						i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
-						applyclassicphase(SOD_PHASE_FOUR, i(228479, {	-- Leggings of Destruction
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228479, {	-- Leggings of Destruction
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18524, {	-- Leggings of Destruction
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18521),	-- Grimy Metal Boots
 						i(18522),	-- Band of the Ogre King
-						applyclassicphase(PHASE_THREE_DMF_CARDS, i(19258)),	-- Ace of Warlords
+						applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } }),	-- Ace of Warlords
 						i(18780),	-- Top Half of Advanced Armorsmithing: Volume I
 					},
 				}),
@@ -1265,57 +1267,57 @@
 						i(18499),	-- Barrier Shield
 						i(18479),	-- Carrion Scorpid Helm
 						i(18537),	-- Counterattack Lodestone
-						applyclassicphase(SOD_PHASE_FOUR, i(228065, {	-- Cyclone Spaulders
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228065, {	-- Cyclone Spaulders
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18528, {	-- Cyclone Spaulders
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18529),	-- Elemental Plate Girdle
 						i(18533),	-- Gordok Bracers of Power
 						i(18478),	-- Hyena Hide Jerkin
-						applyclassicphase(SOD_PHASE_FOUR, i(228474, {	-- Mindsurge Robe
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228474, {	-- Mindsurge Robe
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18532, {	-- Mindsurge Robe
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18476),	-- Mud Stained Boots
 						i(18475),	-- Oddly Magical Belt
-						applyclassicphase(SOD_PHASE_FOUR, i(228070, {	-- Ogre Forged Hauberk
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228070, {	-- Ogre Forged Hauberk
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18530, {	-- Ogre Forged Hauberk
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18482),	-- Ogre Toothpick Shooter
 						i(18495),	-- Redoubt Cloak
-						applyclassicphase(SOD_PHASE_FOUR, i(228484, {	-- Rod of the Ogre Magi
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228484, {	-- Rod of the Ogre Magi
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18534, {	-- Rod of the Ogre Magi
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18480),	-- Scarab Plate Helm
 						i(18477),	-- Shaggy Leggings
 						i(18481),	-- Skullcracking Mace
-						applyclassicphase(SOD_PHASE_FOUR, i(228469, {	-- Tarnished Elven Ring
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228469, {	-- Tarnished Elven Ring
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18500, {	-- Tarnished Elven Ring
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, i(228486, {	-- Treant's Bane
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228486, {	-- Treant's Bane
 							description = "There's no evidence that this version has dropped yet. @Crieve if you get one to drop.",
 							timeline = { CREATED_1_15_3 },
-						})),
+						}) } }),
 						i(18538, {	-- Treant's Bane
 							-- CRIEVE NOTE: There's no evidence that the reitemized version has dropped yet.
 							-- timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, i(228473, {	-- Unyielding Maul
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228473, {	-- Unyielding Maul
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18531, {	-- Unyielding Maul
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1330,9 +1332,9 @@
 			groups = {
 				n(VENDORS, {
 					n(14371, {	-- Shen'dralar Provisioner
-						applyclassicphase(SOD_PHASE_FOUR, i(228303, {	-- Pattern: Incandescent Mooncloth Robe (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228303, {	-- Pattern: Incandescent Mooncloth Robe (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18487, {	-- Pattern: Mooncloth Robe (RECIPE!)
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1355,7 +1357,7 @@
 							11472,	-- Eldreth Spirit
 						},
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, i(22224, {	-- Jeering Spectre's Essence
+					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
 						crs = {
 							11471,	-- Eldreth Apparition
 							11475,	-- Eldreth Phantasm
@@ -1364,7 +1366,7 @@
 							11473,	-- Eldreth Spectre
 							11472,	-- Eldreth Spirit
 						},
-					})),
+					}) } }),
 					i(18337, {	-- Orphic Bracers
 						crs = {
 							11480,	-- Arcane Aberration
@@ -1399,10 +1401,10 @@
 				e(408, {	-- Magister Kalendris
 					creatureID = 11487,
 					groups = {
-						applyclassicphase(PHASE_FIVE_RECIPES, i(22309)),	-- Pattern: Big Bag of Enchantment (RECIPE!)
-						applyclassicphase(SOD_PHASE_FOUR, i(228067, {	-- Elder Magus Pendant
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(PHASE_FIVE_RECIPES, { progressionKey = "dire-maul.later-recipes", groups = { i(22309) } }),	-- Pattern: Big Bag of Enchantment (RECIPE!)
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228067, {	-- Elder Magus Pendant
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18397, {	-- Elder Magus Pendant
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1415,9 +1417,9 @@
 				n(11467, {	-- Tsu'zee
 					description = "This is a Rare Creature and, as such, is not always present.",
 					groups = {
-						applyclassicphase(SOD_PHASE_FOUR, i(228061, {	-- Brightspark Gloves
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228061, {	-- Brightspark Gloves
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18387, {	-- Brightspark Gloves
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1439,21 +1441,21 @@
 					groups = {
 						i(18353),	-- Stoneflower Staff
 						i(18352),	-- Petrified Bark Shield
-						applyclassicphase(SOD_PHASE_FOUR, i(228063, {	-- Warpwood Bindings
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228063, {	-- Warpwood Bindings
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18393, {	-- Warpwood Bindings
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, i(228468, {	-- Tanglemoss Leggings
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228468, {	-- Tanglemoss Leggings
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18390, {	-- Tanglemoss Leggings
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_SEVEN, i(235787, {	-- Ancient Ironwood Branch (QI!)
+						applyclassicphase(SOD_PHASE_SEVEN, { progressionKey = "dire-maul.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
 							timeline = { ADDED_1_15_6 },
-						})),
+						}) } }),
 					},
 				}),
 				e(409, {	-- Immol'thar
@@ -1481,9 +1483,9 @@
 						{ "i", 18663, 1 },	-- J'eevee's Jar
 					},
 					groups = {
-						applyclassicphase(SOD_PHASE_FOUR, i(228475, {	-- Diabolic Mantle
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228475, {	-- Diabolic Mantle
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18757, {	-- Diabolic Mantle
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1513,32 +1515,32 @@
 							description = "In the corner of the room that the Prince is in, next to the bookshelves, there is a small chest on the ground that contains the gauntlet. You must kill the Prince in order for the chest to be interactable.",
 							provider = { "o", 179545 },	-- The Prince's Chest
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, i(228472, {	-- Distracting Dagger
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228472, {	-- Distracting Dagger
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18392, {	-- Distracting Dagger
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18396),	-- Mind Carver
 						i(18376),	-- Timeworn Mace
-						applyclassicphase(SOD_PHASE_FOUR, i(228471, {	-- Stoneshatter
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228471, {	-- Stoneshatter
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18388, {	-- Stoneshatter
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18382),	-- Fluctuating Cloak
 						i(18373),	-- Chestplate of Tranquility
 						i(18375),	-- Bracers of the Eclipse
-						applyclassicphase(SOD_PHASE_FOUR, i(228069, {	-- Eldritch Reinforced Legplates
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228069, {	-- Eldritch Reinforced Legplates
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18380, {	-- Eldritch Reinforced Legplates
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, i(228470, {	-- Silvermoon Leggings
-							timeline = { ADDED_1_15_3 },
-						})),
+						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228470, {	-- Silvermoon Leggings
+							timeline = { ADDED_1_15_3 },
+						}) } }),
 						i(18378, {	-- Silvermoon Leggings
 							timeline = { REMOVED_1_15_3 },
 						}),
```

</details>

**Proposed control:** [p2.1/sod.migration.json](p2.1/sod.migration.json). It names only this alternative; `sources` is relative to the control file. Do not combine the alternative controls into one input build.

```json
{
  "$comment": "Generated proposed comparison control; select only this source alternative.",
  "schema": 1,
  "defaultStage": "P1",
  "cohorts": [
    {
      "id": "comparison-fixture-dire-maul",
      "stage": "P2.1",
      "sources": [
        "sod.lua"
      ]
    }
  ]
}
```

## P2.1 → P2.2 — write timing in JSON

**Lua body: unchanged** — [standard.lua](p2.2/standard.lua) · [sod.lua](p2.2/sod.lua). The identification comment names the new stage. **Author edits:** [schedule.json](../../schedule.json). Put these entries at the named locations in that one handwritten file:

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

`rules` is shared with the smaller runnable examples; `fullSourceRules` covers additional complete-source owners where present. `unknown` remains unresolved and blocks promotion of the affected source. Retail reads no phase schedule.

<details>
<summary>Read the complete handwritten schedule.json</summary>

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

**Proposed control change:** P2.1 → P2.2. Legacy output remains authoritative while the new rule result is compared separately.

```diff
--- p2.1/standard.migration.json
+++ p2.2/standard.migration.json
@@ -5,7 +5,7 @@
   "cohorts": [
     {
       "id": "comparison-fixture-dire-maul",
-      "stage": "P2.1",
+      "stage": "P2.2",
       "sources": [
         "standard.lua"
       ]
```

```diff
--- p2.1/sod.migration.json
+++ p2.2/sod.migration.json
@@ -5,7 +5,7 @@
   "cohorts": [
     {
       "id": "comparison-fixture-dire-maul",
-      "stage": "P2.1",
+      "stage": "P2.2",
       "sources": [
         "sod.lua"
       ]
```

## P2.2 → P3 — change the proposed stage

**Lua body and timing JSON: unchanged.** The [P3 directory](p3/) contains the same annotated source alternatives. Change only each alternative’s stage in its generated comparison control:

```diff
--- p2.2/standard.migration.json
+++ p3/standard.migration.json
@@ -5,7 +5,7 @@
   "cohorts": [
     {
       "id": "comparison-fixture-dire-maul",
-      "stage": "P2.2",
+      "stage": "P3",
       "sources": [
         "standard.lua"
       ]
```

```diff
--- p2.2/sod.migration.json
+++ p3/sod.migration.json
@@ -5,7 +5,7 @@
   "cohorts": [
     {
       "id": "comparison-fixture-dire-maul",
-      "stage": "P2.2",
+      "stage": "P3",
       "sources": [
         "sod.lua"
       ]
```

This proposed switch makes the policy result authoritative after the source passes its migration checks. The unchanged old phase calls remain for an independent legacy comparison. These control files demonstrate the intended switch; they do not establish production promotion.

## P3 → P4 — select one complete source per flavor

**Timing JSON: unchanged.** Remove the old phase writers and any remaining flavor guards from the selected alternative. Keep ordinary version guards, timelines, quests, costs, providers and all acquisition routes. The standard and standalone SoD sources remain separate.

### SoD

**Before:** [p3/sod.lua](p3/sod.lua). **After:** [p4/sod.lua](p4/sod.lua), the complete generated comparison for this flavor.

<details>
<summary>Read the complete final sod.lua</summary>

```lua
-- P4 generated comparison: complete sod source.
-- Generated by evolution/full-source/generate_sets.py.
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
local OnTooltipForShendralar = [[function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		_.Modules.FactionData.AddReputationTooltipInfo(tooltipInfo, reputation, "Libram Turn Ins",
		200,
		42000);
	end
end]];
local OnTooltipForSteamweedle = [[function(t, tooltipInfo)
	tooltipInfo[#tooltipInfo+1] = { left = "This is a hidden reputation. It might not count towards reputation achievements.", r=1,g=1,b=1, wrap=true }
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		if reputation < 20999 then
			tooltipInfo[#tooltipInfo+1] = { left = "To 11999 Honored:", r=1,g=1,b=1 }
			addRepInfo(tooltipInfo, reputation, " Kill Venture Co. (STV)", 2.5, 20999);
			addRepInfo(tooltipInfo, reputation, " Kill Southsea Pirates. (Tanaris & Barrens)", 2.5, 20999);
		end
		addRepInfo(tooltipInfo, reputation, "Complete Zapping Quests (Feralas)", 25, 42000);
		addRepInfo(tooltipInfo, reputation, "Complete Free Knot! (Dire Maul)",
		150,
		42000);

		addRepInfo(tooltipInfo, reputation, "Complete The Gordok Ogre Suit (Dire Maul)",
		50,
		42000);
	end
end]];

instanceroot(230, {	-- Dire Maul
	progressionKey = "dire-maul.common",
	lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
	zoneTextAreaIDs = {
		2557,	-- Dire Maul
		2577,	-- Eldreth Row
		3217,	-- "The Maul" now points to Dire Maul.
	},
	timeline = { ADDED_1_2_0 },
	maps = {
		DIRE_MAUL,
		DIRE_MAUL_SHRINE_OF_ELDRETHARR,
	},
	lvl = 44,
	groups = {
		n(ACHIEVEMENTS, {
			achWithRep(5788, FACTION_SHENDRALAR, {	-- Agent of the Shen'dralar [Shen'dralar Exalted]
				icon = 133736,	-- CRIEVE NOTE: The other icon doesn't exist in the game files yet
				maps = CAPITAL_GARDENS_MAPS,
			}),
			ach(644, {	-- King of Dire Maul
				maps = merge(WARPWOOD_QUARTER_MAPS, GORDOK_COMMONS_MAPS, CAPITAL_GARDENS_MAPS),
			}),
		}),
		n(FACTIONS, {
			faction(FACTION_SHENDRALAR, {	-- Shen'dralar
				maps = CAPITAL_GARDENS_MAPS,
				OnTooltip = OnTooltipForShendralar,
			}),
			faction(FACTION_STEAMWHEEDLE_CARTEL, {	-- Steamwheedle Cartel
				icon = 133784,
				OnTooltip = OnTooltipForSteamweedle,
				maps = merge(GORDOK_COMMONS_MAPS, {
					FERALAS,
					STRANGLETHORN_VALE,
					TANARIS,
					THE_BARRENS,
					WINTERSPRING,
				}),
			}),
		}),
		n(QUESTS, {
			q(1193, {	-- A Broken Trap
				description = "Use the items on the Broken Trap to trap Guard Slip'kik. It takes a few seconds to finish fixing the trap.\n\nYou must activate this trap in order to do the Tribute Run.",
				cost = {
					{ "i", 15994, 1 },	-- Thorium Widget
					{ "i", 3829, 1 },	-- Frost Oil
				},
				provider = { "o", 179485 },	-- Broken Trap
				maps = GORDOK_COMMONS_MAPS,
				repeatable = true,
				lvl = 56,
			}),
			q(7463, {	-- Arcane Refreshment
				qg = 14368,	-- Lorekeeper Lydros
				maps = merge(WARPWOOD_QUARTER_MAPS, CAPITAL_GARDENS_MAPS),
				classes = { MAGE },
				lvl = 60,
				groups = {
					objective(1, {	-- 0/1 Hydrospawn Essence
						provider = { "i", 18299 },	-- Hydrospawn Essence
					}),
					recipe(10140),	-- Conjure Water (Rank 7)
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
				maps = { FERALAS },
				races = HORDE_ONLY,
				isBreadcrumb = true,
				lvl = 54,
			}),
			q(5527, {	-- A Reliquary of Purity
				qg = 11801,	-- Rabine Saturna
				coord = { 51.7, 45.1, MOONGLADE },
				description = "The character must first visit Dire Maul, so that the Moonglade NPC will offer a conversation that unlocks the quest.",
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
				timeline = { REMOVED_1_15_3 },
				maps = CAPITAL_GARDENS_MAPS,
				classes = { WARRIOR },
				lvl = 54,
				groups = {
					i(18466),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7631, {	-- Dreadsteed of Xoroth
				sourceQuest = 7629,	-- Imp Delivery
				qg = 14436,	-- Mor'zul Bloodbringer
				qi = 18818,	-- Mor'zul's Instructions
				coord = { 12.6, 31.6, BURNING_STEPPES },
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
					{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
					{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
				},
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
					9788,	-- Armorsmith
				groups = {
					i(12727),	-- Plans: Enchanted Thorium Breastplate (RECIPE!)
				},
			}),
			q(7650, {	-- Enchanted Thorium Platemail: Volume II
				providers = {
					{ "i", 18770 },	-- Enchanted Thorium Platemail (Volume II)
					{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
				},
				maps = {
					236,	-- Capital Gardens
					STRATHOLME, SCHOLOMANCE
				},
				cost = {
					{ "i", 18781, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume II
					{ "i", 18782, 1 },	-- Top Half of Advanced Armorsmithing: Volume II
				},
				requireSkill =
					9788,	-- Armorsmith
				lvl = 50,
				groups = {
					i(12726),	-- Plans: Enchanted Thorium Leggings (RECIPE!)
				},
			}),
			q(7651, {	-- Enchanted Thorium Platemail: Volume III
				providers = {
					{ "i", 18771 },	-- Enchanted Thorium Platemail (Volume III)
					{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
				},
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
					9788,	-- Armorsmith
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
				maps = { FERALAS },
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
				lvl = 54,
			}),
			q(5525, {	-- Free Knot!
				description = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
				cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
				qg = 14338,	-- Knot Thimblejack
				maps = GORDOK_COMMONS_MAPS,
				lvl = 54,
			}),
			q(7429, {	-- Free Knot! (repeatable)
				description = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
				cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
				sourceQuest = 5525,	-- Free Knot!
				qg = 14338,	-- Knot Thimblejack
				maxReputation = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },
				maps = GORDOK_COMMONS_MAPS,
				repeatable = true,
				lvl = 54,
			}),
			q(7505, {	-- Frost Shock and You
				providers = {
					{ "i", 18363 },	-- Frost Shock and You
					{ "n", 14381 },	-- Lorekeeper Javon
				},
				maps = CAPITAL_GARDENS_MAPS,
				races = HORDE_ONLY,
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
				timeline = { REMOVED_1_15_3 },
				maps = CAPITAL_GARDENS_MAPS,
				classes = { ROGUE },
				lvl = 54,
				groups = {
					i(18465),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7502, {	-- Harnessing Shadows
				providers = {
					{ "i", 18360 },	-- Harnessing Shadows
					{ "n", 14382 },	-- Lorekeeper Mykos
				},
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
				maps = CAPITAL_GARDENS_MAPS,
				classes = { PRIEST },
				lvl = 54,
				groups = {
					i(18469),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7488, {	-- Lethtendris's Web [Alliance]
				sourceQuest = 7494,	-- Feathermoon Stronghold
				qg = 7877,	-- Latronicus Moonspear
				coord = { 30.4, 46.2, FERALAS },
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
			q(7484, {	-- Libram of Focus
				sourceQuests = {
					7481,	-- Elven Legends
					7482,	-- Elven Legends
				},
				qg = 14368,	-- Lorekeeper Lydros
				maxReputation = { FACTION_SHENDRALAR, EXALTED },
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
					i(228466),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7500, {	-- The Arcanist's Cookbook
				providers = {
					{ "i", 18358 },	-- The Arcanist's Cookbook
					{ "n", 14383 },	-- Lorekeeper Kildrath
				},
				timeline = { REMOVED_1_15_3 },
				maps = CAPITAL_GARDENS_MAPS,
				classes = { MAGE },
				lvl = 54,
				groups = {
					i(18468),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7506, {	-- The Emerald Dream...
				providers = {
					{ "i", 18364 },	-- The Emerald Dream
					{ "n", 14381 },	-- Lorekeeper Javon
				},
				maps = CAPITAL_GARDENS_MAPS,
				classes = { DRUID },
				lvl = 54,
				groups = {
					i(18470),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(5518, {	-- The Gordok Ogre Suit
				qg = 14338,	-- Knot Thimblejack
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
			q(5528, {	-- The Gordok Taste Test
				description = "With Stomper Kreeg left alive, kill |cFFFFD700King Gordok|r to become king, and then return to the courtyard.\n\nHe sells these items after you have completed the quest and if you are Friendly with him.",
				qg = 14322,	-- Stomper Kreeg <The Drunk>
				maps = GORDOK_COMMONS_MAPS,
				lvl = 56,
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
				maps = CAPITAL_GARDENS_MAPS,
				classes = { HUNTER },
				lvl = 54,
				groups = {
					i(18473),	-- Royal Seal of Eldre'Thalas
				},
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
					i(228467),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7501, {	-- The Light and How To Swing It
				providers = {
					{ "i", 18359 },	-- The Light and How to Swing It
					{ "n", 14382 },	-- Lorekeeper Mykos
				},
				timeline = { REMOVED_1_15_3 },
				maps = CAPITAL_GARDENS_MAPS,
				classes = { PALADIN },
				lvl = 54,
				groups = {
					i(18472),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7461, {	-- The Madness Within
				qg = 14358,	-- Shen'dralar Ancient
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
			q(7877, {	-- The Treasure of the Shen'dralar
				sourceQuest = 7461,	-- The Madness Within
				providers = {
					{ "n",  14358 },	-- Shen'dralar Ancient
					{ "o", 179517 },	-- Treasure of the Shen'dralar
				},
				maps = CAPITAL_GARDENS_MAPS,
				lvl = 57,
				groups = {
					i(18421),	-- Backwood Helm
					i(18420),	-- Bonecrusher
					i(18424),	-- Sedge Boots
				},
			}),
			q(7703, {	-- Unfinished Gordok Business
				description = "Kill |cFFFFD700King Gordok|r, and then return to the courtyard.",
				qg = 14325,	-- Captain Kromcrush
				maps = merge(WARPWOOD_QUARTER_MAPS, GORDOK_COMMONS_MAPS, CAPITAL_GARDENS_MAPS),
				lvl = 60,
				groups = {
					objective(1, {	-- 0/1 Gauntlet of Gordok Might
						provider = { "i", 18336 },	-- Gauntlet of Gordok Might
					}),
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
				i(18333),	-- Libram of Focus
				i(18334),	-- Libram of Protection
				i(18332),	-- Libram of Rapidity
				{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
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
				}) } },
			},
		}),
		n(COMMON_BOSS_DROPS, {
			provider = { "o", 179547 },	-- A Dusty Tome
			description = "The following items can drop from any boss in Dire Maul and also from Dusty Tomes on the ground.",
			maps = ALL_DIREMAUL_MAPS,
			groups = {
				i(228692, {	-- Codex of Defense
					timeline = { ADDED_1_15_3 },
				}),
				i(18357, {	-- Codex of Defense
					timeline = { REMOVED_1_15_3 },
				}),
				i(18360),	-- Harnessing Shadows
				i(18363),	-- Frost Shock and You
				i(228691, {	-- Garona: A Study on Stealth and Treachery
					timeline = { ADDED_1_15_3 },
				}),
				i(18356, {	-- Garona: A Study on Stealth and Treachery
					timeline = { REMOVED_1_15_3 },
				}),
				i(18362),	-- Holy Bologna: What the Light Won't Tell You
				i(228680, {	-- Nostro's Compendium of Dragon Slaying
					timeline = { ADDED_1_15_3 },
				}),
				i(18401, {	-- Nostro's Compendium of Dragon Slaying
					timeline = { REMOVED_1_15_3 },
				}),
				i(228693, {	-- The Arcanist's Cookbook
					timeline = { ADDED_1_15_3 },
				}),
				i(18358, {	-- The Arcanist's Cookbook
					timeline = { REMOVED_1_15_3 },
				}),
				i(18364),	-- The Emerald Dream
				i(18361),	-- The Greatest Race of Hunters
				i(228690, {	-- The Light and How to Swing It
					timeline = { ADDED_1_15_3 },
				}),
				i(18359, {	-- The Light and How to Swing It
					timeline = { REMOVED_1_15_3 },
				}),
			},
		}),
		o(179547, {	-- A Dusty Tome
			maps = ALL_DIREMAUL_MAPS,
			groups = {
				i(18365, {	-- A Thoroughly Read Copy of "Nat Pagle's Guide to Extreme Anglin'."
					lore = "This item is utterly worthless, however there was a rumor that this item could be used to obtain the original Ashbringer via fishing.",
					description =
						"This can be found in various places throughout all the wings of Dire Maul.\n\n North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\n East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\n West: By the southern generator in Immol'thar's room.",
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
						classes = { WARLOCK },
						crs = {
							11454,	-- Wildspawn Betrayer
							11455,	-- Wildspawn Felsworn
							11457,	-- Wildspawn Hellcaller
							11452,	-- Wildspawn Rogue
							11451,	-- Wildspawn Satyr
							11456,	-- Wildspawn Shadowstalker
							11453,	-- Wildspawn Trickster
						},
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
								"This key is required to enter the Gordok Commons and Capital Gardens.",
						}),
						i(18261),	-- Book of Incantations
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
					},
				}),
				n(11491, {	-- Old Ironbark
					description = "Talk to him for him to break down the door.",
				}),
				{ progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
					description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
					cost = {
						{ "i", 22050, 1 },	-- Brazier of Beckoning [Isalien]
					},
					provider = { "i", 22057 },	-- Brazier of Invocation
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
						i(22401),	-- Libram of Hope
						i(22345),	-- Totem of Rebirth
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
						-- This ring may have moved to Zevrim, will need to verify.
						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228057, {	-- Ring of Demonic Potency
							timeline = { ADDED_1_15_3 },
						}) } },
						i(18315, {	-- Ring of Demonic Potency
							timeline = { REMOVED_1_15_3 },
						}),
					},
				}),
			},
		}),
		DIREMAUL_SUBMAP(235, GORDOK_COMMONS, {		-- Gordok Commons (North)
			coord = { 62.48, 24.48, FERALAS },	-- Dire Maul [North]
			maps = GORDOK_COMMONS_MAPS,
			cost = { { "i", 18249, 1 } },	-- Crescent Key
			groups = {
				n(ZONE_DROPS, {
					i(18250, {	-- Gordok Shackle Key
						description = "NOTE: Do NOT Free Knot if you are doing a Tribute Run. He runs away.",
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
				n(COMMON_BOSS_DROPS, {
					description = "The following items can drop from any of the guards.",
					crs = {
						14326,	-- Guard Mol'dar
						14321,	-- Guard Fengus
						14323,	-- Guard Slip'kik
					},
					groups = {
						i(18462),	-- Jagged Bone Fist
						i(18463),	-- Ogre Pocket Knife
						i(18460),	-- Unsophisticated Hand Cannon
						i(18450),	-- Robe of Combustion
						i(18451),	-- Hyena Hide Belt
						i(18459),	-- Gallant's Wristguards (7.3.5 - Moved to Cho'Rush the Observer)
						i(18458),	-- Modest Armguards (7.3.5 - Moved to Captain Kromcrush)
						i(18464),	-- Gordok Nose Ring
					},
				}),
				e(411, {	-- Guard Mol'dar
					creatureID = 14326,
					description = "If you do not have a way to open the inner door, you can kill him for the Inner Door Key.\n\nDoing so will invalidate your Tribute Run.",
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
						i(18268),	-- Gordok Inner Door Key
					},
				}),
				e(412, {	-- Stomper Kreeg
					creatureID = 14322,
					groups = {
						i(18425),	-- Kreeg's Mug
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
						"Avoid him and loot his chest for a key to open the door.",
					groups = {
						i(18266, {	-- Gordok Courtyard Key
							provider = { "o", 179516 },	-- Fengus's Chest
						}),
					},
				}),
				e(414, {	-- Guard Slip'kik
					creatureID = 14323,
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
				}),
				o(179501, {	-- Knot Thimblejack's Cache
					sourceQuest = 5525,	-- Free Knot!
					cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
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
						"In order to get to this boss, you must use the Inner Door Key or have an engineer open the door using a Seaforium Charge.\n\nUse the Gordok Ogre Suit to skip him. (talk to him)",
					cost = {
						{ "i", 18268, 1 },	-- Gordok Inner Door Key
						{ "i", 18258, 1 },	-- Gordok Ogre Suit
					},
					groups = {
						i(18502),	-- Monstrous Glaive
						i(18503),	-- Kromcrush's Chestplate
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
						i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228479, {	-- Leggings of Destruction
							timeline = { ADDED_1_15_3 },
						}) } },
						i(18524, {	-- Leggings of Destruction
							timeline = { REMOVED_1_15_3 },
						}),
						i(18521),	-- Grimy Metal Boots
						i(18522),	-- Band of the Ogre King
						{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } },	-- Ace of Warlords
						i(18780),	-- Top Half of Advanced Armorsmithing: Volume I
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
			cost = { { "i", 18249, 1 } },	-- Crescent Key
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
						i(18377),	-- Quickdraw Gloves (7.3.5 - Moved to Illyanna Ravenoak)
						i(18391),	-- Eyestalk Cord
						i(18379),	-- Odious Greaves
						i(18370),	-- Vigilance Charm
					},
				}),
				n_conditional(14506, {	-- Lord Hel'nurath
					description =
						"|cff3399ffSTEP 1:|r Find a Warlock that is on or has completed Dreadsteed of Xoroth.\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs, Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 12.4, 31.6)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once creatures stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
					sourceQuest = 7631,	-- Dreadsteed of Xoroth
					cost = {
						{ "i", 18670, 1 },	-- Xorothian Glyphs
						{ "i", 18629, 1 },	-- Black Lodestone
						{ "i", 18663, 1 },	-- J'eevee's Jar
					},
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
							timeline = { ADDED_1_11_1 },
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
});
```

</details>

<details>
<summary>Show every P3 sod → P4 sod change</summary>

```diff
--- p3/sod.lua
+++ p4/sod.lua
@@ -1,4 +1,4 @@
--- P3 generated comparison: complete sod source.
+-- P4 generated comparison: complete sod source.
 -- Generated by evolution/full-source/generate_sets.py.
 -----------------------------------------------------
 --   D U N G E O N S  &  R A I D S  M O D U L E    --
@@ -130,7 +130,7 @@
 	end
 end]];
 
-instanceroot(230, applyclassicphase(PHASE_ONE_DIREMAUL, {	-- Dire Maul
+instanceroot(230, {	-- Dire Maul
 	progressionKey = "dire-maul.common",
 	lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
 	zoneTextAreaIDs = {
@@ -309,7 +309,7 @@
 					}),
 				},
 			},
-			{ progressionKey = "dire-maul.recipe-quests", groups = { applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
+			{ progressionKey = "dire-maul.recipe-quests", groups = { q(7649, {	-- Enchanted Thorium Platemail: Volume I
 				providers = {
 					{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
 					{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
@@ -332,8 +332,8 @@
 				groups = {
 					i(12727),	-- Plans: Enchanted Thorium Breastplate (RECIPE!)
 				},
-			})),
-			applyclassicphase(PHASE_THREE_RECIPES, q(7650, {	-- Enchanted Thorium Platemail: Volume II
+			}),
+			q(7650, {	-- Enchanted Thorium Platemail: Volume II
 				providers = {
 					{ "i", 18770 },	-- Enchanted Thorium Platemail (Volume II)
 					{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
@@ -352,8 +352,8 @@
 				groups = {
 					i(12726),	-- Plans: Enchanted Thorium Leggings (RECIPE!)
 				},
-			})),
-			applyclassicphase(PHASE_THREE_RECIPES, q(7651, {	-- Enchanted Thorium Platemail: Volume III
+			}),
+			q(7651, {	-- Enchanted Thorium Platemail: Volume III
 				providers = {
 					{ "i", 18771 },	-- Enchanted Thorium Platemail (Volume III)
 					{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
@@ -377,7 +377,7 @@
 				groups = {
 					i(12725),	-- Plans: Enchanted Thorium Helm (RECIPE!)
 				},
-			})) } },
+			}) } },
 			q(7494, {	-- Feathermoon Stronghold
 				qgs = {
 					2198,	-- Crier Goodman
@@ -755,7 +755,7 @@
 				i(18333),	-- Libram of Focus
 				i(18334),	-- Libram of Protection
 				i(18332),	-- Libram of Rapidity
-				applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
+				{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
 					crs = {
 						11441,	-- Gordok Brute
 						14351,	-- Gordok Bushwacker
@@ -767,7 +767,7 @@
 						11450,	-- Gordok Reaver
 						11448,	-- Gordok Warlock
 					},
-				}) } }),
+				}) } },
 			},
 		}),
 		n(COMMON_BOSS_DROPS, {
@@ -893,9 +893,9 @@
 					creatureID = 14327,
 					groups = {
 						i(18426),	-- Lethtendris's Web
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228051, {	-- Quel'dorei Channeling Rod
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228051, {	-- Quel'dorei Channeling Rod
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18311, {	-- Quel'dorei Channeling Rod
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -908,37 +908,37 @@
 					creatureID = 13280,
 					groups = {
 						i(18299),	-- Hydrospawn Essence
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228052, {	-- Waveslicer
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228052, {	-- Waveslicer
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18324, {	-- Waveslicer
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228054, {	-- Tempest Talisman
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228054, {	-- Tempest Talisman
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18317, {	-- Tempest Talisman
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18305),	-- Breakwater Legguards
 						i(18307),	-- Riptide Shoes
 						i(18322),	-- Waterspout Boots
-						applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } }),	-- Ace of Elementals
+						{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
 					},
 				}),
 				e(402, {	-- Zevrim Thornhoof
 					creatureID = 11490,
 					groups = {
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228050, {	-- Satyr's Bow
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228050, {	-- Satyr's Bow
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18323, {	-- Satyr's Bow
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18308),	-- Clever Hat
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228053, {	-- Fervent Helm
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228053, {	-- Fervent Helm
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18319, {	-- Fervent Helm
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -949,7 +949,7 @@
 				n(11491, {	-- Old Ironbark
 					description = "Talk to him for him to break down the door.",
 				}),
-				applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
+				{ progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
 					description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
 					cost = {
 						{ "i", 22050, 1 },	-- Brazier of Beckoning [Isalien]
@@ -966,9 +966,9 @@
 						}),
 						i(22315),	-- Hammer of Revitalization
 						i(22314),	-- Huntsman's Harpoon
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228066, {	-- Ironweave Gloves
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228066, {	-- Ironweave Gloves
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(22304, {	-- Ironweave Gloves
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -976,7 +976,7 @@
 						i(22401),	-- Libram of Hope
 						i(22345),	-- Totem of Rebirth
 					},
-				}) } }),
+				}) } },
 				e(405, {	-- Alzzin the Wildshaper
 					creatureID = 11492,
 					groups = {
@@ -985,16 +985,16 @@
 							provider = { "o", 179559 },	-- Felvine Shard
 						}),
 						i(18321),	-- Energetic Rod
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228056, {	-- Fiendish Machete
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228056, {	-- Fiendish Machete
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18310, {	-- Fiendish Machete
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18328),	-- Shadewood Cloak
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228055, {	-- Energized Chestplate
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228055, {	-- Energized Chestplate
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18312, {	-- Energized Chestplate
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1002,16 +1002,16 @@
 						i(18326),	-- Razor Gauntlets
 						i(18327),	-- Whipvine Cord
 						i(18318),	-- Merciful Greaves
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228699, {	-- Ring of Demonic Guile
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228699, {	-- Ring of Demonic Guile
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18314, {	-- Ring of Demonic Guile
 							timeline = { REMOVED_1_15_3 },
 						}),
 						-- This ring may have moved to Zevrim, will need to verify.
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228057, {	-- Ring of Demonic Potency
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228057, {	-- Ring of Demonic Potency
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18315, {	-- Ring of Demonic Potency
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1064,21 +1064,21 @@
 					description = "If you do not have a way to open the inner door, you can kill him for the Inner Door Key.\n\nDoing so will invalidate your Tribute Run.",
 					groups = {
 						i(18498),	-- Hedgecutter
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18496, {	-- Heliotrope Cloak
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18493, {	-- Bulky Iron Spaulders
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18494, {	-- Denwatcher's Shoulders
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1115,21 +1115,21 @@
 					creatureID = 14323,
 					groups = {
 						i(18498),	-- Hedgecutter
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228060, {	-- Heliotrope Cloak
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18496, {	-- Heliotrope Cloak
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228058, {	-- Bulky Iron Spaulders
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18493, {	-- Bulky Iron Spaulders
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228059, {	-- Denwatcher's Shoulders
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18494, {	-- Denwatcher's Shoulders
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1141,23 +1141,23 @@
 					cost = { { "i", 18250, 1 } },	-- Gordok Shackle Key
 					groups = {
 						i(18240),	-- Ogre Tannin
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228477, {	-- Pattern: Embroidered Belt of the Archmage (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228477, {	-- Pattern: Embroidered Belt of the Archmage (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18414, {	-- Pattern: Belt of the Archmage (RECIPE!)
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(227910, {	-- Pattern: Brilliant Chromatic Cloak (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(227910, {	-- Pattern: Brilliant Chromatic Cloak (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18517, {	-- Pattern: Chromatic Cloak (RECIPE!)
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
 						i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228319, {	-- Pattern: Girdle of Arcane Insight (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228319, {	-- Pattern: Girdle of Arcane Insight (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18514, {	-- Pattern: Girdle of Insight (RECIPE!)
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1165,18 +1165,18 @@
 						i(18416),	-- Pattern: Inferno Gloves (RECIPE!)
 						i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
 						i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228276, {	-- Pattern: Mastercrafted Shifting Cloak (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228276, {	-- Pattern: Mastercrafted Shifting Cloak (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18519, {	-- Pattern: Shifting Cloak (RECIPE!)
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18516, {	-- Pattern: Swift Flight Bracers (RECIPE!)
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228301, {	-- Pattern: Swift Flight Vambraces (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228301, {	-- Pattern: Swift Flight Vambraces (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } },
 					},
 				}),
 				o(179499, {	-- Ogre Tannin Basket
@@ -1196,9 +1196,9 @@
 					groups = {
 						i(18502),	-- Monstrous Glaive
 						i(18503),	-- Kromcrush's Chestplate
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228068, {	-- Mugger's Belt
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228068, {	-- Mugger's Belt
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18505, {	-- Mugger's Belt
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1210,18 +1210,18 @@
 					groups = {
 						i(18484),	-- Cho'Rush's Blade
 						i(18483),	-- Mana Channeling Wand
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228064, {	-- Observer's Shield
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228064, {	-- Observer's Shield
 							description = "This doesn't appear to have been added yet.",
 							timeline = { CREATED_1_15_3 },
-						}) } }),
+						}) } },
 						i(18485, {	-- Observer's Shield
 							-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
 							-- timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228062, {	-- Insightful Hood
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228062, {	-- Insightful Hood
 							description = "This doesn't appear to have been added yet.",
 							timeline = { CREATED_1_15_3 },
-						}) } }),
+						}) } },
 						i(18490, {	-- Insightful Hood
 							-- CRIEVE NOTE: This doesn't appear to have been replaced yet.
 							-- timeline = { REMOVED_1_15_3 },
@@ -1231,30 +1231,30 @@
 				e(417, {	-- King Gordok
 					creatureID = 11501,
 					groups = {
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228478, {	-- Barbarous Blade
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228478, {	-- Barbarous Blade
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18520, {	-- Barbarous Blade
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18523),	-- Brightly Glowing Stone
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228480, {	-- Crown of the Ogre King
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228480, {	-- Crown of the Ogre King
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18526, {	-- Crown of the Ogre King
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18525),	-- Bracers of Prosperity
 						i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228479, {	-- Leggings of Destruction
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228479, {	-- Leggings of Destruction
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18524, {	-- Leggings of Destruction
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18521),	-- Grimy Metal Boots
 						i(18522),	-- Band of the Ogre King
-						applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } }),	-- Ace of Warlords
+						{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } },	-- Ace of Warlords
 						i(18780),	-- Top Half of Advanced Armorsmithing: Volume I
 					},
 				}),
@@ -1267,57 +1267,57 @@
 						i(18499),	-- Barrier Shield
 						i(18479),	-- Carrion Scorpid Helm
 						i(18537),	-- Counterattack Lodestone
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228065, {	-- Cyclone Spaulders
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228065, {	-- Cyclone Spaulders
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18528, {	-- Cyclone Spaulders
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18529),	-- Elemental Plate Girdle
 						i(18533),	-- Gordok Bracers of Power
 						i(18478),	-- Hyena Hide Jerkin
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228474, {	-- Mindsurge Robe
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228474, {	-- Mindsurge Robe
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18532, {	-- Mindsurge Robe
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18476),	-- Mud Stained Boots
 						i(18475),	-- Oddly Magical Belt
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228070, {	-- Ogre Forged Hauberk
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228070, {	-- Ogre Forged Hauberk
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18530, {	-- Ogre Forged Hauberk
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18482),	-- Ogre Toothpick Shooter
 						i(18495),	-- Redoubt Cloak
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228484, {	-- Rod of the Ogre Magi
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228484, {	-- Rod of the Ogre Magi
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18534, {	-- Rod of the Ogre Magi
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18480),	-- Scarab Plate Helm
 						i(18477),	-- Shaggy Leggings
 						i(18481),	-- Skullcracking Mace
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228469, {	-- Tarnished Elven Ring
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228469, {	-- Tarnished Elven Ring
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18500, {	-- Tarnished Elven Ring
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228486, {	-- Treant's Bane
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228486, {	-- Treant's Bane
 							description = "There's no evidence that this version has dropped yet. @Crieve if you get one to drop.",
 							timeline = { CREATED_1_15_3 },
-						}) } }),
+						}) } },
 						i(18538, {	-- Treant's Bane
 							-- CRIEVE NOTE: There's no evidence that the reitemized version has dropped yet.
 							-- timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228473, {	-- Unyielding Maul
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228473, {	-- Unyielding Maul
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18531, {	-- Unyielding Maul
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1332,9 +1332,9 @@
 			groups = {
 				n(VENDORS, {
 					n(14371, {	-- Shen'dralar Provisioner
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228303, {	-- Pattern: Incandescent Mooncloth Robe (RECIPE!)
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228303, {	-- Pattern: Incandescent Mooncloth Robe (RECIPE!)
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18487, {	-- Pattern: Mooncloth Robe (RECIPE!)
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1357,7 +1357,7 @@
 							11472,	-- Eldreth Spirit
 						},
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
+					{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
 						crs = {
 							11471,	-- Eldreth Apparition
 							11475,	-- Eldreth Phantasm
@@ -1366,7 +1366,7 @@
 							11473,	-- Eldreth Spectre
 							11472,	-- Eldreth Spirit
 						},
-					}) } }),
+					}) } },
 					i(18337, {	-- Orphic Bracers
 						crs = {
 							11480,	-- Arcane Aberration
@@ -1401,10 +1401,10 @@
 				e(408, {	-- Magister Kalendris
 					creatureID = 11487,
 					groups = {
-						applyclassicphase(PHASE_FIVE_RECIPES, { progressionKey = "dire-maul.later-recipes", groups = { i(22309) } }),	-- Pattern: Big Bag of Enchantment (RECIPE!)
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228067, {	-- Elder Magus Pendant
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.later-recipes", groups = { i(22309) } },	-- Pattern: Big Bag of Enchantment (RECIPE!)
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228067, {	-- Elder Magus Pendant
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18397, {	-- Elder Magus Pendant
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1417,9 +1417,9 @@
 				n(11467, {	-- Tsu'zee
 					description = "This is a Rare Creature and, as such, is not always present.",
 					groups = {
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228061, {	-- Brightspark Gloves
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228061, {	-- Brightspark Gloves
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18387, {	-- Brightspark Gloves
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1441,21 +1441,21 @@
 					groups = {
 						i(18353),	-- Stoneflower Staff
 						i(18352),	-- Petrified Bark Shield
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228063, {	-- Warpwood Bindings
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228063, {	-- Warpwood Bindings
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18393, {	-- Warpwood Bindings
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228468, {	-- Tanglemoss Leggings
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228468, {	-- Tanglemoss Leggings
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18390, {	-- Tanglemoss Leggings
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_SEVEN, { progressionKey = "dire-maul.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
+						{ progressionKey = "dire-maul.ironwood-branch", groups = { i(235787, {	-- Ancient Ironwood Branch (QI!)
 							timeline = { ADDED_1_15_6 },
-						}) } }),
+						}) } },
 					},
 				}),
 				e(409, {	-- Immol'thar
@@ -1483,9 +1483,9 @@
 						{ "i", 18663, 1 },	-- J'eevee's Jar
 					},
 					groups = {
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228475, {	-- Diabolic Mantle
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228475, {	-- Diabolic Mantle
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18757, {	-- Diabolic Mantle
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1515,32 +1515,32 @@
 							description = "In the corner of the room that the Prince is in, next to the bookshelves, there is a small chest on the ground that contains the gauntlet. You must kill the Prince in order for the chest to be interactable.",
 							provider = { "o", 179545 },	-- The Prince's Chest
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228472, {	-- Distracting Dagger
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228472, {	-- Distracting Dagger
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18392, {	-- Distracting Dagger
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18396),	-- Mind Carver
 						i(18376),	-- Timeworn Mace
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228471, {	-- Stoneshatter
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228471, {	-- Stoneshatter
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18388, {	-- Stoneshatter
 							timeline = { REMOVED_1_15_3 },
 						}),
 						i(18382),	-- Fluctuating Cloak
 						i(18373),	-- Chestplate of Tranquility
 						i(18375),	-- Bracers of the Eclipse
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228069, {	-- Eldritch Reinforced Legplates
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228069, {	-- Eldritch Reinforced Legplates
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18380, {	-- Eldritch Reinforced Legplates
 							timeline = { REMOVED_1_15_3 },
 						}),
-						applyclassicphase(SOD_PHASE_FOUR, { progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228470, {	-- Silvermoon Leggings
-							timeline = { ADDED_1_15_3 },
-						}) } }),
+						{ progressionKey = "dire-maul.sod-phase-four-additions", groups = { i(228470, {	-- Silvermoon Leggings
+							timeline = { ADDED_1_15_3 },
+						}) } },
 						i(18378, {	-- Silvermoon Leggings
 							timeline = { REMOVED_1_15_3 },
 						}),
@@ -1550,4 +1550,4 @@
 			},
 		}),
 	},
-}));
+});
```

</details>

### Progression / Anniversary / Era

**Before:** [p3/standard.lua](p3/standard.lua). **After:** [p4/classic.lua](p4/classic.lua), the complete generated comparison for this flavor.

<details>
<summary>Read the complete final classic.lua</summary>

```lua
-- P4 generated comparison: complete classic source.
-- Generated by evolution/full-source/generate_sets.py.
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
	tooltipInfo[#tooltipInfo+1] = { left = "This is a hidden reputation. It might not count towards reputation achievements.", r=1,g=1,b=1, wrap=true }
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		if reputation < 20999 then
			tooltipInfo[#tooltipInfo+1] = { left = "To 11999 Honored:", r=1,g=1,b=1 }
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
					timeline = { REMOVED_4_0_3 },
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
					timeline = { REMOVED_4_0_3 },
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
					timeline = { REMOVED_4_0_3 },
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
					timeline = { REMOVED_4_0_3 },
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
						timeline = { REMOVED_4_0_3 },
					}),
					i(18360, {	-- Harnessing Shadows
						timeline = { REMOVED_4_0_3 },
					}),
					i(18363, {	-- Frost Shock and You
						timeline = { REMOVED_4_0_3 },
					}),
					i(18356, {	-- Garona: A Study on Stealth and Treachery
						timeline = { REMOVED_4_0_3 },
					}),
					i(18362, {	-- Holy Bologna: What the Light Won't Tell You
						timeline = { REMOVED_4_0_3 },
					}),
					i(18401, {	-- Nostro's Compendium of Dragon Slaying
						timeline = { REMOVED_4_0_3 },
					}),
					i(18358, {	-- The Arcanist's Cookbook
						timeline = { REMOVED_4_0_3 },
					}),
					i(18364, {	-- The Emerald Dream
						timeline = { REMOVED_4_0_3 },
					}),
					i(18361, {	-- The Greatest Race of Hunters
						timeline = { REMOVED_4_0_3 },
					}),
					i(18359, {	-- The Light and How to Swing It
						timeline = { REMOVED_4_0_3 },
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
							i(18311),	-- Quel'dorei Channeling Rod
							i(18301),	-- Lethtendris' Wand
							i(18325),	-- Felhide Cap
							i(18302),	-- Band of Vigor
						},
					}),
					e(403, {	-- Hydrospawn
						creatureID = 13280,
						groups = {
							i(18299),	-- Hydrospawn Essence
							i(18324),	-- Waveslicer
							i(18317),	-- Tempest Talisman
							i(18305),	-- Breakwater Legguards
							i(18307),	-- Riptide Shoes
							i(18322),	-- Waterspout Boots
							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
						},
					}),
					e(402, {	-- Zevrim Thornhoof
						creatureID = 11490,
						groups = {
							i(18323),	-- Satyr's Bow
							i(18308),	-- Clever Hat
							i(18319),	-- Fervent Helm
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
							i(22304),	-- Ironweave Gloves
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
							i(18310),	-- Fiendish Machete
							i(18328),	-- Shadewood Cloak
							i(18312),	-- Energized Chestplate
							i(18309),	-- Gloves of Restoration
							i(18326),	-- Razor Gauntlets
							i(18327),	-- Whipvine Cord
							i(18318),	-- Merciful Greaves
							i(18314),	-- Ring of Demonic Guile
							-- #if BEFORE 6.0.2
							-- This ring may have moved to Zevrim, will need to verify.
							i(18315),	-- Ring of Demonic Potency
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
							i(18496),	-- Heliotrope Cloak
							i(18493),	-- Bulky Iron Spaulders
							i(18494),	-- Denwatcher's Shoulders
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
							i(18496),	-- Heliotrope Cloak
							i(18493),	-- Bulky Iron Spaulders
							i(18494),	-- Denwatcher's Shoulders
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
							i(18496),	-- Heliotrope Cloak
							i(18493),	-- Bulky Iron Spaulders
							i(18494),	-- Denwatcher's Shoulders
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
							i(18414),	-- Pattern: Belt of the Archmage (RECIPE!)
							i(18517),	-- Pattern: Chromatic Cloak (RECIPE!)
							i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
							i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
							i(18514),	-- Pattern: Girdle of Insight (RECIPE!)
							i(18518),	-- Pattern: Hide of the Wild (RECIPE!)
							i(18416),	-- Pattern: Inferno Gloves (RECIPE!)
							i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
							i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
							i(18519),	-- Pattern: Shifting Cloak (RECIPE!)
							i(18516),	-- Pattern: Swift Flight Bracers (RECIPE!)
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
							i(18505),	-- Mugger's Belt
							i(18507),	-- Boots of the Full Moon
						},
					}),
					e(416, {	-- Cho'Rush the Observer
						creatureID = 14324,
						groups = {
							i(18484),	-- Cho'Rush's Blade
							i(18483),	-- Mana Channeling Wand
							i(18485),	-- Observer's Shield
							i(18490),	-- Insightful Hood
							-- #if AFTER 7.3.5
							i(18459),	-- Gallant's Wristguards (7.3.5 - Moved from Guards)
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved from King Gordok)
							-- #endif
						},
					}),
					e(417, {	-- King Gordok
						creatureID = 11501,
						groups = {
							i(18520),	-- Barbarous Blade
							i(18523),	-- Brightly Glowing Stone
							i(18526),	-- Crown of the Ogre King
							i(18525),	-- Bracers of Prosperity
							-- #if BEFORE 7.3.5
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
							-- #endif
							i(18524),	-- Leggings of Destruction
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
							i(18528),	-- Cyclone Spaulders
							i(18529),	-- Elemental Plate Girdle
							i(18533),	-- Gordok Bracers of Power
							i(18478),	-- Hyena Hide Jerkin
							i(18532),	-- Mindsurge Robe
							i(18476),	-- Mud Stained Boots
							i(18475),	-- Oddly Magical Belt
							i(18530),	-- Ogre Forged Hauberk
							i(18482),	-- Ogre Toothpick Shooter
							i(18495),	-- Redoubt Cloak
							i(18534),	-- Rod of the Ogre Magi
							i(18480),	-- Scarab Plate Helm
							i(18477),	-- Shaggy Leggings
							i(18481),	-- Skullcracking Mace
							i(18500),	-- Tarnished Elven Ring
							i(18538),	-- Treant's Bane
							i(18531),	-- Unyielding Maul
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
							i(18487),	-- Pattern: Mooncloth Robe (RECIPE!)
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
							i(18397),	-- Elder Magus Pendant
							i(18374),	-- Flamescarred Shoulders
							i(18350),	-- Amplifying Cloak
							i(18351),	-- Magically Sealed Bracers
							i(18371),	-- Mindtap Talisman
						},
					}),
					n(11467, {	-- Tsu'zee
						description = "This is a Rare Creature and, as such, is not always present.",
						groups = {
							i(18387),	-- Brightspark Gloves
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
							i(18393),	-- Warpwood Bindings
							i(18390),	-- Tanglemoss Leggings
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
							i(18757),	-- Diabolic Mantle
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
							i(18392),	-- Distracting Dagger
							i(18396),	-- Mind Carver
							i(18376),	-- Timeworn Mace
							i(18388),	-- Stoneshatter
							i(18382),	-- Fluctuating Cloak
							i(18373),	-- Chestplate of Tranquility
							i(18375),	-- Bracers of the Eclipse
							i(18380),	-- Eldritch Reinforced Legplates
							i(18378),	-- Silvermoon Leggings
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
<summary>Show every P3 standard → P4 classic change</summary>

```diff
--- p3/standard.lua
+++ p4/classic.lua
@@ -1,4 +1,4 @@
--- P3 generated comparison: complete standard source.
+-- P4 generated comparison: complete classic source.
 -- Generated by evolution/full-source/generate_sets.py.
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
@@ -383,7 +383,7 @@
 						}),
 					},
 				},
-				{ progressionKey = "dire-maul.recipe-quests", groups = { applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
+				{ progressionKey = "dire-maul.recipe-quests", groups = { q(7649, {	-- Enchanted Thorium Platemail: Volume I
 					providers = {
 						-- #IF BEFORE 4.0.3
 						{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
@@ -413,8 +413,8 @@
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
@@ -440,8 +440,8 @@
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
@@ -472,7 +472,7 @@
 					groups = {
 						i(12725),	-- Plans: Enchanted Thorium Helm (RECIPE!)
 					},
-				})) } },
+				}) } },
 				q(7494, {	-- Feathermoon Stronghold
 					qgs = {
 						2198,	-- Crier Goodman
@@ -1062,7 +1062,7 @@
 						description = "This still drops despite being completely worthless.",
 						-- #endif
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
+					{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
 						timeline = { REMOVED_4_0_3 },
 						-- #if BEFORE 4.0.3
 						crs = {
@@ -1077,7 +1077,7 @@
 							11448,	-- Gordok Warlock
 						},
 						-- #endif
-					}) } }),
+					}) } },
 				},
 			}),
 			n(COMMON_BOSS_DROPS, {
@@ -1233,7 +1233,7 @@
 							i(18305),	-- Breakwater Legguards
 							i(18307),	-- Riptide Shoes
 							i(18322),	-- Waterspout Boots
-							applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } }),	-- Ace of Elementals
+							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
 						},
 					}),
 					e(402, {	-- Zevrim Thornhoof
@@ -1253,7 +1253,7 @@
 					n(11491, {	-- Old Ironbark
 						description = "Talk to him for him to break down the door.",
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
+					{ progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
 						description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
 						-- #if BEFORE 6.0.2
 						cost = {
@@ -1286,7 +1286,7 @@
 								timeline = { DELETED_5_0_4 },
 							}),
 						},
-					}) } }),
+					}) } },
 					e(405, {	-- Alzzin the Wildshaper
 						creatureID = 11492,
 						groups = {
@@ -1542,7 +1542,7 @@
 							i(18524),	-- Leggings of Destruction
 							i(18521),	-- Grimy Metal Boots
 							i(18522),	-- Band of the Ogre King
-							applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } }),	-- Ace of Warlords
+							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } },	-- Ace of Warlords
 							i(18780, {	-- Top Half of Advanced Armorsmithing: Volume I
 								timeline = { DELETED_4_0_3 },
 							}),
@@ -1607,7 +1607,7 @@
 								11472,	-- Eldreth Spirit
 							},
 						}),
-						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
+						{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
 							crs = {
 								11471,	-- Eldreth Apparition
 								11475,	-- Eldreth Phantasm
@@ -1616,7 +1616,7 @@
 								11473,	-- Eldreth Spectre
 								11472,	-- Eldreth Spirit
 							},
-						}) } }),
+						}) } },
 						i(18337, {	-- Orphic Bracers
 							crs = {
 								11480,	-- Arcane Aberration
@@ -1651,7 +1651,7 @@
 					e(408, {	-- Magister Kalendris
 						creatureID = 11487,
 						groups = {
-							applyclassicphase(PHASE_FIVE_RECIPES, { progressionKey = "dire-maul.later-recipes", groups = { i(22309) } }),	-- Pattern: Big Bag of Enchantment (RECIPE!)
+							{ progressionKey = "dire-maul.later-recipes", groups = { i(22309) } },	-- Pattern: Big Bag of Enchantment (RECIPE!)
 							i(18397),	-- Elder Magus Pendant
 							i(18374),	-- Flamescarred Shoulders
 							i(18350),	-- Amplifying Cloak
@@ -1703,12 +1703,12 @@
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
@@ -1769,7 +1769,7 @@
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

**Before:** [p3/standard.lua](p3/standard.lua). **After:** [p4/retail.lua](p4/retail.lua), the complete generated comparison for this flavor.

<details>
<summary>Read the complete final retail.lua</summary>

```lua
-- P4 generated comparison: complete retail source.
-- Generated by evolution/full-source/generate_sets.py.
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
	tooltipInfo[#tooltipInfo+1] = { left = "This is a hidden reputation. It might not count towards reputation achievements.", r=1,g=1,b=1, wrap=true }
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		if reputation < 20999 then
			tooltipInfo[#tooltipInfo+1] = { left = "To 11999 Honored:", r=1,g=1,b=1 }
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
					timeline = { REMOVED_4_0_3 },
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
					timeline = { REMOVED_4_0_3 },
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
					timeline = { REMOVED_4_0_3 },
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
					timeline = { REMOVED_4_0_3 },
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
						timeline = { REMOVED_4_0_3 },
					}),
					i(18360, {	-- Harnessing Shadows
						timeline = { REMOVED_4_0_3 },
					}),
					i(18363, {	-- Frost Shock and You
						timeline = { REMOVED_4_0_3 },
					}),
					i(18356, {	-- Garona: A Study on Stealth and Treachery
						timeline = { REMOVED_4_0_3 },
					}),
					i(18362, {	-- Holy Bologna: What the Light Won't Tell You
						timeline = { REMOVED_4_0_3 },
					}),
					i(18401, {	-- Nostro's Compendium of Dragon Slaying
						timeline = { REMOVED_4_0_3 },
					}),
					i(18358, {	-- The Arcanist's Cookbook
						timeline = { REMOVED_4_0_3 },
					}),
					i(18364, {	-- The Emerald Dream
						timeline = { REMOVED_4_0_3 },
					}),
					i(18361, {	-- The Greatest Race of Hunters
						timeline = { REMOVED_4_0_3 },
					}),
					i(18359, {	-- The Light and How to Swing It
						timeline = { REMOVED_4_0_3 },
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
							i(18311),	-- Quel'dorei Channeling Rod
							i(18301),	-- Lethtendris' Wand
							i(18325),	-- Felhide Cap
							i(18302),	-- Band of Vigor
						},
					}),
					e(403, {	-- Hydrospawn
						creatureID = 13280,
						groups = {
							i(18299),	-- Hydrospawn Essence
							i(18324),	-- Waveslicer
							i(18317),	-- Tempest Talisman
							i(18305),	-- Breakwater Legguards
							i(18307),	-- Riptide Shoes
							i(18322),	-- Waterspout Boots
							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
						},
					}),
					e(402, {	-- Zevrim Thornhoof
						creatureID = 11490,
						groups = {
							i(18323),	-- Satyr's Bow
							i(18308),	-- Clever Hat
							i(18319),	-- Fervent Helm
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
							i(22304),	-- Ironweave Gloves
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
							i(18310),	-- Fiendish Machete
							i(18328),	-- Shadewood Cloak
							i(18312),	-- Energized Chestplate
							i(18309),	-- Gloves of Restoration
							i(18326),	-- Razor Gauntlets
							i(18327),	-- Whipvine Cord
							i(18318),	-- Merciful Greaves
							i(18314),	-- Ring of Demonic Guile
							-- #if BEFORE 6.0.2
							-- This ring may have moved to Zevrim, will need to verify.
							i(18315),	-- Ring of Demonic Potency
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
							i(18496),	-- Heliotrope Cloak
							i(18493),	-- Bulky Iron Spaulders
							i(18494),	-- Denwatcher's Shoulders
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
							i(18496),	-- Heliotrope Cloak
							i(18493),	-- Bulky Iron Spaulders
							i(18494),	-- Denwatcher's Shoulders
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
							i(18496),	-- Heliotrope Cloak
							i(18493),	-- Bulky Iron Spaulders
							i(18494),	-- Denwatcher's Shoulders
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
							i(18414),	-- Pattern: Belt of the Archmage (RECIPE!)
							i(18517),	-- Pattern: Chromatic Cloak (RECIPE!)
							i(18418),	-- Pattern: Cloak of Warding (RECIPE!)
							i(18415),	-- Pattern: Felcloth Gloves (RECIPE!)
							i(18514),	-- Pattern: Girdle of Insight (RECIPE!)
							i(18518),	-- Pattern: Hide of the Wild (RECIPE!)
							i(18416),	-- Pattern: Inferno Gloves (RECIPE!)
							i(18515),	-- Pattern: Mongoose Boots (RECIPE!)
							i(18417),	-- Pattern: Mooncloth Gloves (RECIPE!)
							i(18519),	-- Pattern: Shifting Cloak (RECIPE!)
							i(18516),	-- Pattern: Swift Flight Bracers (RECIPE!)
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
							i(18505),	-- Mugger's Belt
							i(18507),	-- Boots of the Full Moon
						},
					}),
					e(416, {	-- Cho'Rush the Observer
						creatureID = 14324,
						groups = {
							i(18484),	-- Cho'Rush's Blade
							i(18483),	-- Mana Channeling Wand
							i(18485),	-- Observer's Shield
							i(18490),	-- Insightful Hood
							-- #if AFTER 7.3.5
							i(18459),	-- Gallant's Wristguards (7.3.5 - Moved from Guards)
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved from King Gordok)
							-- #endif
						},
					}),
					e(417, {	-- King Gordok
						creatureID = 11501,
						groups = {
							i(18520),	-- Barbarous Blade
							i(18523),	-- Brightly Glowing Stone
							i(18526),	-- Crown of the Ogre King
							i(18525),	-- Bracers of Prosperity
							-- #if BEFORE 7.3.5
							i(18527),	-- Harmonious Gauntlets (7.3.5 - Moved to Cho'Rush the Observer)
							-- #endif
							i(18524),	-- Leggings of Destruction
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
							i(18528),	-- Cyclone Spaulders
							i(18529),	-- Elemental Plate Girdle
							i(18533),	-- Gordok Bracers of Power
							i(18478),	-- Hyena Hide Jerkin
							i(18532),	-- Mindsurge Robe
							i(18476),	-- Mud Stained Boots
							i(18475),	-- Oddly Magical Belt
							i(18530),	-- Ogre Forged Hauberk
							i(18482),	-- Ogre Toothpick Shooter
							i(18495),	-- Redoubt Cloak
							i(18534),	-- Rod of the Ogre Magi
							i(18480),	-- Scarab Plate Helm
							i(18477),	-- Shaggy Leggings
							i(18481),	-- Skullcracking Mace
							i(18500),	-- Tarnished Elven Ring
							i(18538),	-- Treant's Bane
							i(18531),	-- Unyielding Maul
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
							i(18487),	-- Pattern: Mooncloth Robe (RECIPE!)
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
							i(18397),	-- Elder Magus Pendant
							i(18374),	-- Flamescarred Shoulders
							i(18350),	-- Amplifying Cloak
							i(18351),	-- Magically Sealed Bracers
							i(18371),	-- Mindtap Talisman
						},
					}),
					n(11467, {	-- Tsu'zee
						description = "This is a Rare Creature and, as such, is not always present.",
						groups = {
							i(18387),	-- Brightspark Gloves
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
							i(18393),	-- Warpwood Bindings
							i(18390),	-- Tanglemoss Leggings
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
							i(18757),	-- Diabolic Mantle
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
							i(18392),	-- Distracting Dagger
							i(18396),	-- Mind Carver
							i(18376),	-- Timeworn Mace
							i(18388),	-- Stoneshatter
							i(18382),	-- Fluctuating Cloak
							i(18373),	-- Chestplate of Tranquility
							i(18375),	-- Bracers of the Eclipse
							i(18380),	-- Eldritch Reinforced Legplates
							i(18378),	-- Silvermoon Leggings
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
<summary>Show every P3 standard → P4 retail change</summary>

```diff
--- p3/standard.lua
+++ p4/retail.lua
@@ -1,4 +1,4 @@
--- P3 generated comparison: complete standard source.
+-- P4 generated comparison: complete retail source.
 -- Generated by evolution/full-source/generate_sets.py.
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
@@ -383,7 +383,7 @@
 						}),
 					},
 				},
-				{ progressionKey = "dire-maul.recipe-quests", groups = { applyclassicphase(PHASE_THREE_RECIPES, q(7649, {	-- Enchanted Thorium Platemail: Volume I
+				{ progressionKey = "dire-maul.recipe-quests", groups = { q(7649, {	-- Enchanted Thorium Platemail: Volume I
 					providers = {
 						-- #IF BEFORE 4.0.3
 						{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
@@ -413,8 +413,8 @@
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
@@ -440,8 +440,8 @@
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
@@ -472,7 +472,7 @@
 					groups = {
 						i(12725),	-- Plans: Enchanted Thorium Helm (RECIPE!)
 					},
-				})) } },
+				}) } },
 				q(7494, {	-- Feathermoon Stronghold
 					qgs = {
 						2198,	-- Crier Goodman
@@ -1062,7 +1062,7 @@
 						description = "This still drops despite being completely worthless.",
 						-- #endif
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
+					{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(21982, {	-- Ogre Warbeads
 						timeline = { REMOVED_4_0_3 },
 						-- #if BEFORE 4.0.3
 						crs = {
@@ -1077,7 +1077,7 @@
 							11448,	-- Gordok Warlock
 						},
 						-- #endif
-					}) } }),
+					}) } },
 				},
 			}),
 			n(COMMON_BOSS_DROPS, {
@@ -1233,7 +1233,7 @@
 							i(18305),	-- Breakwater Legguards
 							i(18307),	-- Riptide Shoes
 							i(18322),	-- Waterspout Boots
-							applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } }),	-- Ace of Elementals
+							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19268) } },	-- Ace of Elementals
 						},
 					}),
 					e(402, {	-- Zevrim Thornhoof
@@ -1253,7 +1253,7 @@
 					n(11491, {	-- Old Ironbark
 						description = "Talk to him for him to break down the door.",
 					}),
-					applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
+					{ progressionKey = "dire-maul.isalien", groups = { n_conditional(16097, {	-- Isalien
 						description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
 						-- #if BEFORE 6.0.2
 						cost = {
@@ -1286,7 +1286,7 @@
 								timeline = { DELETED_5_0_4 },
 							}),
 						},
-					}) } }),
+					}) } },
 					e(405, {	-- Alzzin the Wildshaper
 						creatureID = 11492,
 						groups = {
@@ -1542,7 +1542,7 @@
 							i(18524),	-- Leggings of Destruction
 							i(18521),	-- Grimy Metal Boots
 							i(18522),	-- Band of the Ogre King
-							applyclassicphase(PHASE_THREE_DMF_CARDS, { progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } }),	-- Ace of Warlords
+							{ progressionKey = "dire-maul.darkmoon-cards", groups = { i(19258) } },	-- Ace of Warlords
 							i(18780, {	-- Top Half of Advanced Armorsmithing: Volume I
 								timeline = { DELETED_4_0_3 },
 							}),
@@ -1607,7 +1607,7 @@
 								11472,	-- Eldreth Spirit
 							},
 						}),
-						applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, { progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
+						{ progressionKey = "dire-maul.dungeon-set-2", groups = { i(22224, {	-- Jeering Spectre's Essence
 							crs = {
 								11471,	-- Eldreth Apparition
 								11475,	-- Eldreth Phantasm
@@ -1616,7 +1616,7 @@
 								11473,	-- Eldreth Spectre
 								11472,	-- Eldreth Spirit
 							},
-						}) } }),
+						}) } },
 						i(18337, {	-- Orphic Bracers
 							crs = {
 								11480,	-- Arcane Aberration
@@ -1651,7 +1651,7 @@
 					e(408, {	-- Magister Kalendris
 						creatureID = 11487,
 						groups = {
-							applyclassicphase(PHASE_FIVE_RECIPES, { progressionKey = "dire-maul.later-recipes", groups = { i(22309) } }),	-- Pattern: Big Bag of Enchantment (RECIPE!)
+							{ progressionKey = "dire-maul.later-recipes", groups = { i(22309) } },	-- Pattern: Big Bag of Enchantment (RECIPE!)
 							i(18397),	-- Elder Magus Pendant
 							i(18374),	-- Flamescarred Shoulders
 							i(18350),	-- Amplifying Cloak
@@ -1703,12 +1703,12 @@
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
@@ -1769,7 +1769,7 @@
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

### Select the source before Lua execution

**Generated comparison:** [p4/selection.json](p4/selection.json). Each value is one file path, or `null` when the source is absent. This does not load the standard source underneath the SoD source.

```json
{
  "$comment": "Generated comparison selection; choose one complete source before Lua execution.",
  "retail": {
    "dire-maul": "retail.lua"
  },
  "progression:main": {
    "dire-maul": "classic.lua"
  },
  "anniversary:main": {
    "dire-maul": "classic.lua"
  },
  "era:main": {
    "dire-maul": "classic.lua"
  },
  "sod:main": {
    "dire-maul": "sod.lua"
  }
}
```

The P4 migration control lists the available candidates; the selection above chooses which one enters a build. Here is the complete proposed [p4/migration.json](p4/migration.json):

```json
{
  "$comment": "Generated proposed comparison control; select one P4 source with selection.json.",
  "schema": 1,
  "defaultStage": "P1",
  "cohorts": [
    {
      "id": "comparison-fixture-dire-maul",
      "stage": "P4",
      "sources": [
        "retail.lua",
        "classic.lua",
        "sod.lua"
      ]
    }
  ]
}
```

## Key locations in the complete sources

| Record or group | Key | What inherits it |
|---|---|---|
| Instance `230` | `dire-maul.common` | The instance and its descendants; the key belongs on the instance, not the expansion header. |
| Isalien `16097` | `dire-maul.isalien` | The summon and its loot, including Hammer of Revitalization `22315`. |
| Other Dungeon Set 2 records | `dire-maul.dungeon-set-2` | The other records enclosed by that writer. They do not acquire Isalien’s rule. |
| Recipe quests, Darkmoon cards, later recipes and TBC pet training | Four separate entries under `fullSourceRules.dire-maul` | Each affected batch retains its own unresolved opening. |
| SoD additions and item `235787` | `dire-maul.sod-phase-four-additions`, `dire-maul.ironwood-branch` | The original phase-four additions and the later Ironwood Branch. |

```text
Instance 230 (standard inst / SoD instanceroot) — dire-maul.common
├─ ordinary bosses and loot — inherit the dungeon rule
├─ Isalien — adds dire-maul.isalien
│  └─ item(22315) — inherits both parent rules
└─ other later records — add their own batch rule
```

## Reproduce and check the comparison

Authors change production Lua and the shared schedule. The comparison tools generate these saved alternatives, controls, provenance and coverage files. Their role is identified at the top of each file.

```console
python .contrib/phase-examples/evolution/full-source/source_sets.py --check
python .contrib/phase-examples/evolution/full-source/generate.py --check
python .contrib/phase-examples/evolution/full-source/verify.py --lua lua5.1
python .contrib/phase-examples/prepare.py --check
```

[coverage.json](coverage.json) maps every legacy writer to its original source alternative, owner and proposed key. The checks compare P1 bytes with production and compare actual saved P2/P4 ordinary source tokens after flavor/version selection. They also check source selection, route multiplicity and Lua 5.1 syntax. These static checks do not execute every complete native file through the production Parser or supply an independent production legacy golden.

The full diff blocks include every changed hunk. Markdown normalizes line endings for display; the source checks retain exact P1 byte provenance.

[Choose another instance](../README.md)
