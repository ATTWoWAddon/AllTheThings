-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local WARPWOOD_QUARTER = createHeader({
	readable = "Warpwood Quarter",
	icon = 236292,
	text = {
		en = [[~DUNGEON_FLOOR_DIREMAUL5.." (" .. L.EAST ..")"]],
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
		en = [[~DUNGEON_FLOOR_DIREMAUL1.." (" .. L.NORTH ..")"]],
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
		en = [[~DUNGEON_FLOOR_DIREMAUL2.." (" .. L.WEST ..")"]],
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
		for i, m in ipairs(oldMaps) do
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
	MAP.DIRE_MAUL_WARPWOOD_QUARTER,
};
local GORDOK_COMMONS_MAPS = {
	MAP.DIRE_MAUL_GORDOK_COMMONS,
};
local CAPITAL_GARDENS_MAPS = {
	MAP.DIRE_MAUL_CAPITAL_GARDENS,
	MAP.DIRE_MAUL_COURT_OF_THE_HIGHBORNE,
	MAP.DIRE_MAUL_PRISON_OF_IMMOLTHAR,
};
local ALL_DIREMAUL_MAPS = {
	MAP.DIRE_MAUL_WARPWOOD_QUARTER,
	MAP.DIRE_MAUL_GORDOK_COMMONS,
	MAP.DIRE_MAUL_CAPITAL_GARDENS,
	MAP.DIRE_MAUL_COURT_OF_THE_HIGHBORNE,
	MAP.DIRE_MAUL_PRISON_OF_IMMOLTHAR,
};
local OnTooltipForShendralar = [[function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		_.Modules.FactionData.AddReputationTooltipInfo(tooltipInfo, reputation, "Libram Turn Ins", 200, 42000);
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
		addRepInfo(tooltipInfo, reputation, "Complete Free Knot! (Dire Maul)", 150, 42000);
		addRepInfo(tooltipInfo, reputation, "Complete The Gordok Ogre Suit (Dire Maul)", 50, 42000);
	end
end]];

instanceroot(230, {	-- Dire Maul
	lore = "Dire Maul is a three-wing instance found in north-central Feralas. It was once a proud Highborne city called Eldre'Thalas, but now lies in ruins, overrun by ogres, satyrs, and undead. Only a tiny remnant of the original Highborne population remains in the form of a murderous sect called the Shen'dralar.",
	icon = 136333,
	zoneTextAreaIDs = {
		2557,	-- Dire Maul
		2577,	-- Eldreth Row
		3217,	-- "The Maul" now points to Dire Maul.
	},
	mapID = MAP.DIRE_MAUL,
	lvl = 44,
	groups = {
		n(FACTIONS, {
			faction(FACTION_SHENDRALAR, {
				icon = 133736,
				maps = CAPITAL_GARDENS_MAPS,
				OnTooltip = OnTooltipForShendralar,
			}),
			faction(FACTION_STEAMWHEEDLE_CARTEL, {
				icon = 133784,
				OnTooltip = OnTooltipForSteamweedle,
				maps = merge(GORDOK_COMMONS_MAPS, {
					MAP.FERALAS,
					MAP.STRANGLETHORN_VALE,
					MAP.TANARIS,
					MAP.THE_BARRENS,
					MAP.WINTERSPRING,
				}),
			}),
		}),
		n(QUESTS, {
			q(1193, {	-- A Broken Trap
				description = "Use the items on the Broken Trap to trap Guard Slip'kik. It takes a few seconds to finish fixing the trap.\n\nYou must activate this trap in order to do the Tribute Run.",
				provider = { "o", 179485 },	-- Broken Trap
				maps = GORDOK_COMMONS_MAPS,
				cost = {
					{ "i", 3829, 1 },	-- 1x Frost Oil
					{ "i", 15994, 1 },	-- 1x Thorium Widget
				},
				lvl = 56,
				repeatable = true,
			}),
			q(27118, {	-- A Broken Trap (TODO: verify quest name)
				description = "You must trap Guard Slip'kik in order to qualify for the full Tribute loot table.",
				provider = { "o", 179485 },	-- Broken Trap
				maps = GORDOK_COMMONS_MAPS,
				lvl = 42,
				repeatable = true,
			}),
			q(5527, {	-- A Reliquary of Purity
				description = "The character must first visit Dire Maul, so that the Moonglade NPC will offer a conversation that unlocks the quest.",
				qg = 11801,	-- Rabine Saturna
				coord = { 51.7, 45.1, MAP.MOONGLADE },
				maps = { MAP.SILITHUS },
				lvl = 56,
				groups = {
					objective(1, {	-- 0/1 Reliquary of Purity
						providers = {
							{ "i", 22201 },	-- Reliquary of Purity
							{ "o", 179565 },	-- Dusty Reliquary
						},
						coord = { 63.2, 55.4, MAP.SILITHUS },
					}),
				},
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
					{ 46.6, 64.6, MAP.ORGRIMMAR },
					{ 41.4, 54.2, MAP.THUNDER_BLUFF },
					{ 69.2, 49.2, MAP.UNDERCITY },
				},
				maps = { MAP.FERALAS },
				races = HORDE_ONLY,
				lvl = 54,
				isBreadcrumb = true,
			}),
			q(7499, {	-- Codex of Defense
				providers = {
					{ "i", 18357 },	-- Codex of Defense
					{ "n", 14383 },	-- Lorekeeper Kildrath
				},
				maps = CAPITAL_GARDENS_MAPS,
				classes = { WARRIOR },
				lvl = 54,
				groups = {
					i(18466),	-- Royal Seal of Eldre'Thalas
				},
			}),
			q(7631, {	-- Dreadsteed of Xoroth
				sourceQuest = 7629,	-- Imp Delivery
				providers = {
					{ "n", 14436 },	-- Mor'zul Bloodbringer
					{ "i", 18818 },	-- Mor'zul's Instructions
				},
				coord = { 12.6, 31.6, MAP.BURNING_STEPPES },
				maps = CAPITAL_GARDENS_MAPS,
				classes = { WARLOCK },
				lvl = 60,
				groups = {
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
					coord = { 31.2, 43.9, MAP.FERALAS },
				}),
				hordeQuestData = q(7481, {	-- Elven Legends (H)
					qg = 14373,	-- Sage Korolusk
					coord = { 75.3, 43.8, MAP.FERALAS },
				}),
				maps = CAPITAL_GARDENS_MAPS,
				lvl = 54,
				groups = {
					objective(1, {	-- Master Telmius Dreamseeker Found
						provider = { "o", 179544 },	-- Skeletal Remains of Telmius Dreamseeker
					}),
				},
			},
			--[[ Commented Out until Confirmed
			q(7649, {	-- Enchanted Thorium Platemail: Volume I
				providers = {
					{ "i", 18769 },	-- Enchanted Thorium Platemail (Volume I)
					{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
				},
				maps = merge(CAPITAL_GARDENS_MAPS, {
					MAP.BLACKROCK_SPIRE,
				}),
				cost = {
					{ "i", 18779, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume I
					{ "i", 18780, 1 },	-- Top Half of Advanced Armorsmithing: Volume I
				},
				requireSkill = ARMORSMITH,
				groups = {
					i(12727),	-- Plans: Enchanted Thorium Breastplate (RECIPE!)
				},
			}),
			q(7650, {	-- Enchanted Thorium Platemail: Volume II
				providers = {
					{ "i", 18770 },	-- Enchanted Thorium Platemail (Volume II)
					{ "n", 14368 },	-- Lorekeeper Lydros <House of Shen'dralar>
				},
				maps = merge(CAPITAL_GARDENS_MAPS, {
					MAP.STRATHOLME,
					MAP.SCHOLOMANCE,
				}),
				cost = {
					{ "i", 18781, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume II
					{ "i", 18782, 1 },	-- Top Half of Advanced Armorsmithing: Volume II
				},
				requireSkill = ARMORSMITH,
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
					MAP.BLACKROCK_SPIRE,
					MAP.STRATHOLME,
				}),
				cost = {
					{ "i", 18783, 1 },	-- Bottom Half of Advanced Armorsmithing: Volume III
					{ "i", 18784, 1 },	-- Top Half of Advanced Armorsmithing: Volume III
				},
				requireSkill = ARMORSMITH,
				lvl = 50,
				groups = {
					i(12725),	-- Plans: Enchanted Thorium Helm (RECIPE!)
				},
			}),
			--]]
			q(7494, {	-- Feathermoon Stronghold
				qgs = {
					2198,	-- Crier Goodman
					10877,	-- Courier Hammerfall
					10878,	-- Herald Moonstalker
				},
				coords = {
					{ 39.0, 63.6, MAP.DARNASSUS },
					{ 30.5, 67.0, MAP.IRONFORGE },
					{ 54.8, 62.6, MAP.STORMWIND_CITY },
				},
				maps = { MAP.FERALAS },
				races = ALLIANCE_ONLY,
				lvl = 54,
				isBreadcrumb = true,
			}),
			q(5525, {	-- Free Knot!
				description = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
				qg = 14338,	-- Knot Thimblejack
				maps = GORDOK_COMMONS_MAPS,
				cost = { { "i", 18250, 1 } },	-- 1x Gordok Shackle Key
				lvl = 54,
			}),
			q(7429, {	-- Free Knot! (Repeatable)
				description = "Freeing him gets you access to his Cache.\n\nNOTE: Do not free him until after you have finished your Tribute Run!",
				sourceQuest = 5525,	-- Free Knot!
				qg = 14338,	-- Knot Thimblejack
				maps = GORDOK_COMMONS_MAPS,
				maxReputation = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },
				cost = { { "i", 18250, 1 } },	-- 1x Gordok Shackle Key
				lvl = 54,
				repeatable = true,
			}),
			q(7505, {	-- Frost Shock and You
				providers = {
					{ "i", 18363 },	-- Frost Shock and You
					{ "n", 14381 },	-- Lorekeeper Javon
				},
				maps = CAPITAL_GARDENS_MAPS,
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
				coord = { 30.4, 46.2, MAP.FERALAS },
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
				coord = { 76.2, 43.8, MAP.FERALAS },
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
					{ "i", 14344, 4 },	-- 4x Large Brilliant Shard
					{ "i", 18333, 1 },	-- 1x Libram of Focus
					{ "i", 18335, 1 },	-- 1x Pristine Black Diamond
					{ "i", 12753, 2 },	-- 2x Skin of Shadow
				},
				lvl = 57,
				repeatable = true,
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
					{ "i", 12735, 1 },	-- 1x Frayed Abomination Stitching
					{ "i", 14344, 2 },	-- 2x Large Brilliant Shard
					{ "i", 18334, 1 },	-- 1x Libram of Protection
					{ "i", 18335, 1 },	-- 1x Pristine Black Diamond
				},
				lvl = 57,
				repeatable = true,
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
					{ "i", 12938, 2 },	-- 2x Blood of Heroes
					{ "i", 14344, 2 },	-- 2x Large Brilliant Shard
					{ "i", 18332, 1 },	-- 1x Libram of Rapidity
					{ "i", 18335, 1 },	-- 1x Pristine Black Diamond
				},
				lvl = 57,
				repeatable = true,
				groups = {
					i(18329),	-- Arcanum of Rapidity
				},
			}),
			q(7441, {	-- Pusillin and the Elder Azj'Tordin
				qg = 14355,	-- Azj'Tordin
				coord = { 76.7, 37.2, MAP.FERALAS },
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
			q(5526, {	-- Shards of the Felvine
				sourceQuest = 5527,	-- A Reliquary of Purity
				qg = 11801,	-- Rabine Saturna
				coord = { 51.7, 45.1, MAP.MOONGLADE },
				lvl = 56,
				groups = {
					objective(1, {	-- 0/1 Sealed Reliquary of Purity
						provider = { "i", 18540 },	-- Sealed Reliquary of Purity
						cost = {
							{ "i", 18501, 1 },	-- 1x Felvine Shard
							{ "i", 18539, 1 },	-- 1x Reliquary of Purity
						},
					}),
					i(18535),	-- Milli's Shield
					i(18536),	-- Milli's Lexicon
				},
			}),
			q(7500, {	-- The Arcanist's Cookbook
				providers = {
					{ "i", 18358 },	-- The Arcanist's Cookbook
					{ "n", 14383 },	-- Lorekeeper Kildrath
				},
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
					{ "i", 14048, 4 },	-- 4x Bolt of Runecloth
					{ "i", 18240, 1 },	-- 1x Ogre Tannin
					{ "i", 8170, 8 },	-- 8x Rugged Leather
					{ "i", 14341, 2 },	-- 2x Rune Thread
				},
				lvl = 56,
				groups = {
					--[[
					r(22813, {	-- Gordok Ogre Suit
						requireSkill = TAILORING,
					}),
					r(22815, {	-- Gordok Ogre Suit
						requireSkill = LEATHERWORKING,
					}),
					--]]
					i(18258, {	-- Gordok Ogre Suit
						description = "Before using this, clear the trash before Captain Kromcrush. Tell your group to stay back while you talk to Kromcrush with this disguise on. If they aggro him, your group will fail the Tribute Run.",
					}),
				},
			}),
			q(5519, {	-- The Gordok Ogre Suit (Repeatable)
				sourceQuest = 5518,	-- The Gordok Ogre Suit
				qg = 14338,	-- Knot Thimblejack
				maxReputation = { FACTION_STEAMWHEEDLE_CARTEL, EXALTED },
				maps = GORDOK_COMMONS_MAPS,
				cost = {
					{ "i", 14048, 4 },	-- 4x Bolt of Runecloth
					{ "i", 18240, 1 },	-- 1x Ogre Tannin
					{ "i", 8170, 8 },	-- 8x Rugged Leather
					{ "i", 14341, 2 },	-- 2x Rune Thread
				},
				lvl = 56,
				repeatable = true,
				groups = {
					i(18258),	-- Gordok Ogre Suit
				},
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
			q(7501, {	-- The Light and How To Swing It
				providers = {
					{ "i", 18359 },	-- The Light and How to Swing It
					{ "n", 14382 },	-- Lorekeeper Mykos
				},
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
				i(21982, {	-- Ogre Warbeads
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
				}),
			},
		}),
		n(COMMON_BOSS_DROPS, {
			provider = { "o", 179547 },	-- A Dusty Tome
			description = "The following items can drop from any boss in Dire Maul and also from Dusty Tomes on the ground.",
			maps = ALL_DIREMAUL_MAPS,
			groups = {
				i(18357),	-- Codex of Defense
				i(18360),	-- Harnessing Shadows
				i(18363),	-- Frost Shock and You
				i(18356),	-- Garona: A Study on Stealth and Treachery
				i(18362),	-- Holy Bologna: What the Light Won't Tell You
				i(18401),	-- Nostro's Compendium of Dragon Slaying
				i(18358),	-- The Arcanist's Cookbook
				i(18364),	-- The Emerald Dream
				i(18361),	-- The Greatest Race of Hunters
				i(18359),	-- The Light and How to Swing It
			},
		}),
		o(179547, {	-- A Dusty Tome
			maps = ALL_DIREMAUL_MAPS,
			groups = {
				i(18365, {	-- A Thoroughly Read Copy of "Nat Pagle's Extreme' Anglin."
					lore = "This item is utterly worthless, however there was a rumor that this item could be used to obtain the original Ashbringer via fishing.",
					description = "This can be found in various places throughout all the wings of Dire Maul.\n\n North: Southwest corner of Guard Fengus's courtyard or next to King Gordok and Cho'Rush the Observer.\n\n East: Eastern wall of the garden, the ledge above the garden, next to Lethtendris, or next to Alzzin the Wildshaper.\n\n West: By the southern generator in Immol'thar's room.",
				}),
			},
		}),
		DIREMAUL_SUBMAP(239, WARPWOOD_QUARTER, {	-- Warpwood Quarter (East)
			coord = { 64.83, 30.24, MAP.FERALAS },	-- Dire Maul [East]
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
							description = "This key is required to enter the Gordok Commons and Capital Gardens.",
						}),
						i(18267),	-- Recipe: Runn Tum Tuber Surprise (RECIPE!)
						i(18261),	-- Book of Incantations
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
						i(18302),	-- Band of Vigor
						i(18325),	-- Felhide Cap
						i(18301),	-- Lethtendris' Wand
						i(18311),	-- Quel'dorei Channeling Rod
					},
				}),
				e(403, {	-- Hydrospawn
					creatureID = 13280,
					groups = {
						i(18299),	-- Hydrospawn Essence
						--i(19268),	-- Ace of Elementals //Commented out until confirmed
						i(18305),	-- Breakwater Legguards
						i(18307),	-- Riptide Shoes
						i(18317),	-- Tempest Talisman
						i(18322),	-- Waterspout Boots
						i(18324),	-- Waveslicer
					},
				}),
				e(402, {	-- Zevrim Thornhoof
					creatureID = 11490,
					groups = {
						i(18308),	-- Clever Hat
						i(18319),	-- Fervent Helm
						i(18306),	-- Gloves of Shadowy Mist
						i(18313),	-- Helm of Awareness
						i(18323),	-- Satyr's Bow
					},
				}),
				n(11491, {	-- Old Ironbark
					description = "Talk to him for him to break down the door.",
				}),
				n(16097, {	-- Isalien
					description = "This boss can be summoned using items from the |cff3399ff(Dungeon Set 2 questline)|r.\nSummon Location: Alzzin the Wildshaper's room.",
					provider = { "i", 22057 },	-- Brazier of Invocation
					cost = {{ "i", 22050, 1 }},	-- 1x Brazier of Beckoning [Isalien]
					groups = {
						objective(1, {	-- 0/1 Left Piece of Lord Valthalak's Amulet
							questID = 8967,	-- The Left Piece of Lord Valthalak's Amulet [WARLOCK, DRUID]
							provider = { "i", 21984 },	-- Left Piece of Lord Valthalak's Amulet
						}),
						objective(2, {	-- 0/1 Right Piece of Lord Valthalak's Amulet
							questID = 8990,	-- The Right Piece of Lord Valthalak's Amulet [WARRIOR, ROGUE]
							provider = { "i", 22046 },	-- Right Piece of Lord Valthalak's Amulet
						}),
						i(22472),	-- Boots of Ferocity
						i(22315),	-- Hammer of Revitalization
						i(22314),	-- Huntsman's Harpoon
						i(22304),	-- Ironweave Gloves
						i(22401),	-- Libram of Hope
						i(22345),	-- Totem of Rebirth
					},
				}),
				e(405, {	-- Alzzin the Wildshaper
					creatureID = 11492,
					groups = {
						i(18501, {	-- Felvine Shard
							description = "Spawns under the vines near the last boss in Dire Maul East.",
							provider = { "o", 179559 },	-- Felvine Shard
						}),
						i(18321),	-- Energetic Rod
						i(18312),	-- Energized Chestplate
						i(18310),	-- Fiendish Machete
						i(18309),	-- Gloves of Restoration
						i(18318),	-- Merciful Greaves
						i(18326),	-- Razor Gauntlets
						i(18314),	-- Ring of Demonic Guile
						i(18328),	-- Shadewood Cloak
						i(18327),	-- Whipvine Cord
					},
				}),
			},
		}),
		DIREMAUL_SUBMAP(235, GORDOK_COMMONS, {		-- Gordok Commons (North)
			coord = { 62.48, 24.48, MAP.FERALAS },	-- Dire Maul [North]
			maps = GORDOK_COMMONS_MAPS,
			cost = {{ "i", 18249, 1 }},	-- 1x Crescent Key
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
						i(18459),	-- Gallant's Wristguards
						i(18464),	-- Gordok Nose Ring
						i(18451),	-- Hyena Hide Belt
						i(18462),	-- Jagged Bone Fist
						i(18458),	-- Modest Armguards
						i(18463),	-- Ogre Pocket Knife
						i(18450),	-- Robe of Combustion
						i(18460),	-- Unsophisticated Hand Cannon
					},
				}),
				e(411, {	-- Guard Mol'dar
					creatureID = 14326,
					description = "If you do not have a way to open the inner door, you can kill him for the Inner Door Key.\n\nDoing so will invalidate your Tribute Run.",
					groups = {
						i(18268),	-- Gordok Inner Door Key
						i(18493),	-- Bulky Iron Spaulders
						i(18494),	-- Denwatcher's Shoulders
						i(18498),	-- Hedgecutter
						i(18496),	-- Heliotrope Cloak
						i(18497),	-- Sublime Wristguards
					},
				}),
				e(412, {	-- Stomper Kreeg
					creatureID = 14322,
					groups = {
						i(18425),	-- Kreeg's Mug
						n(VENDORS, {
							description = "After becoming the king, you can come back to Kreeg to buy some drinks.",
							groups = {
								i(18287),	-- Evermurky
								i(18269),	-- Gordok Green Grog
								i(18284),	-- Kreeg's Stout Beatdown
								i(18288),	-- Molasses Firewater
							},
						}),
					},
				}),
				e(413, {	-- Guard Fengus
					creatureID = 14321,
					description = "Avoid him and loot his chest for a key to open the door.",
					groups = {
						i(18266, {	-- Gordok Courtyard Key
							provider = { "o", 179516 },	-- Fengus's Chest
						}),
					},
				}),
				e(414, {	-- Guard Slip'kik
					creatureID = 14323,
					groups = {
						i(18493),	-- Bulky Iron Spaulders
						i(18494),	-- Denwatcher's Shoulders
						i(18498),	-- Hedgecutter
						i(18496),	-- Heliotrope Cloak
						i(18497),	-- Sublime Wristguards
					},
				}),
				o(179501, {	-- Knot Thimblejack's Cache
					sourceQuest = 5525,	-- Free Knot!
					cost = {{ "i", 18250, 1 }},	-- 1x Gordok Shackle Key
					groups = {
						i(18240),	-- Ogre Tannin
						--[[ Commented out until confirmed
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
						--]]
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
					description = "In order to get to this boss, you must use the Inner Door Key or have an engineer open the door using a Seaforium Charge.\n\nUse the Gordok Ogre Suit to skip him. (talk to him)",
					cost = {
						{ "i", 18268, 1 },	-- 1x Gordok Inner Door Key
						{ "i", 18258, 1 },	-- 1x Gordok Ogre Suit
					},
					groups = {
						i(18507),	-- Boots of the Full Moon
						i(18503),	-- Kromcrush's Chestplate
						i(18502),	-- Monstrous Glaive
						i(18505),	-- Mugger's Belt
					},
				}),
				e(416, {	-- Cho'Rush the Observer
					creatureID = 14324,
					groups = {
						i(18484),	-- Cho'Rush's Blade
						i(18490),	-- Insightful Hood
						i(18483),	-- Mana Channeling Wand
						i(18485),	-- Observer's Shield
					},
				}),
				e(417, {	-- King Gordok
					creatureID = 11501,
					groups = {
						i(18780),	-- Top Half of Advanced Armorsmithing: Volume I
						--i(19258),	-- Ace of Warlords //Commented out until confirmed
						i(18522),	-- Band of the Ogre King
						i(18520),	-- Barbarous Blade
						i(18525),	-- Bracers of Prosperity
						i(18523),	-- Brightly Glowing Stone
						i(18526),	-- Crown of the Ogre King
						i(18521),	-- Grimy Metal Boots
						i(18527),	-- Harmonious Gauntlets
						i(18524),	-- Leggings of Destruction
					},
				}),
				o(179564, {	-- Gordok Tribute Chest
					description = "Speak with Mizzle after killing |cFFFFD700King Gordok|r to spawn the Tribute Chest.\n\nA full Tribute Run (5 items) requires leaving all bosses alive except King Gordok, and also requires activating the Frost Trap & fooling Kromcrush with the Ogre Suit, granted by the Goblin near the trap.",
					provider = { "n", 14353 },	-- Mizzle the Crafty
					modelScale = 3,
					groups = {
						--[[ Commented out until confirmed
						i(18655),	-- Schematic: Major Recombobulator (RECIPE!)
						--]]
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
			coord = { 60.32, 30.17, MAP.FERALAS },	-- Dire Maul [West]
			maps = CAPITAL_GARDENS_MAPS,
			cost = {{ "i", 18249, 1 }},	-- 1x Crescent Key
			groups = {
				n(VENDORS, {
					n(14371, {	-- Shen'dralar Provisioner
						--[[ Commented out until confirmed
						i(18487),	-- Pattern: Mooncloth Robe (RECIPE!)
						--]]
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
					i(22224, {	-- Jeering Spectre's Essence
						crs = {
							11471,	-- Eldreth Apparition
							11475,	-- Eldreth Phantasm
							11469,	-- Eldreth Seether
							11470,	-- Eldreth Sorcerer
							11473,	-- Eldreth Spectre
							11472,	-- Eldreth Spirit
						},
					}),
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
						--[[ Commented out until confirmed
						i(22309),	-- Pattern: Big Bag of Enchantment (RECIPE!)
						--]]
						i(18350),	-- Amplifying Cloak
						i(18397),	-- Elder Magus Pendant
						i(18374),	-- Flamescarred Shoulders
						i(18351),	-- Magically Sealed Bracers
						i(18371),	-- Mindtap Talisman
					},
				}),
				n(11467, {	-- Tsu'zee
					description = "This is a Rare Creature and, as such, is not always present.",
					groups = {
						i(18387),	-- Brightspark Gloves
						i(18345),	-- Murmuring Ring
						i(18346),	-- Threadbare Trousers
					},
				}),
				e(407, {	-- Illyanna Ravenoak
					creatureID = 11488,
					groups = {
						i(18383),	-- Force Imbued Gauntlets
						i(18349),	-- Gauntlets of Accuracy
						i(18386),	-- Padre's Trousers
						i(18347),	-- Well Balanced Axe
					},
				}),
				e(406, {	-- Tendris Warpwood
					creatureID = 11489,
					groups = {
						i(18352),	-- Petrified Bark Shield
						i(18353),	-- Stoneflower Staff
						i(18390),	-- Tanglemoss Leggings
						i(18393),	-- Warpwood Bindings
					},
				}),
				e(409, {	-- Immol'thar
					creatureID = 11496,
					groups = {
						i(18384),	-- Bile-Etched Spaulders
						i(18372),	-- Blade of the New Moon
						i(18389),	-- Cloak of the Cosmos
						i(18381),	-- Evil Eye Pendant
						i(18391),	-- Eyestalk Cord
						i(18379),	-- Odious Greaves
						i(18377),	-- Quickdraw Gloves
						i(18385),	-- Robe of Everlasting Night
						i(18370),	-- Vigilance Charm
					},
				}),
				n(14506, {	-- Lord Hel'nurath
					description = "|cff3399ffSTEP 1:|r Find a Warlock that is on or has completed Dreadsteed of Xoroth.\n|cff3399ffSTEP 2:|r Warlock buys Xorothian Glyphs, Black Lodestone & J'eevee's Jar from Gorzeeki Wildeyes. (Burning Steppes - 12.4, 31.6)\n|cff3399ffSTEP 3:|r Kill Immol'thar.\n|cff3399ffSTEP 4:|r Warlock uses J'eevee's Jar while standing on platform summoning Wheel of the Black March, Doomsday Candle, & Bell of Dethmoora.\n|cff3399ffSTEP 5:|r Kill stuff & use Black Lodestone to keep 3 artifacts active, this requires soul shards to do.\n|cff3399ffSTEP 6:|r Once creatures stop spawning, use Xorothian Glyphs to summon the dreadsteed.\n|cff3399ffSTEP 7:|r Kill Lord Hel'nurath & collect loot.",
					sourceQuest = 7631,	-- Dreadsteed of Xoroth
					cost = {
						{ "i", 18629, 1 },	-- 1x Black Lodestone
						{ "i", 18663, 1 },	-- 1x J'eevee's Jar
						{ "i", 18670, 1 },	-- 1x Xorothian Glyphs
					},
					groups = {
						i(18757),	-- Diabolic Mantle
						i(18756),	-- Dreadguard Protector
						i(18754),	-- Fel Hardened Bracers
						i(18755),	-- Xorothian Firestick
					},
				}),
				n(16032, {	-- Falrin Treeshaper
					description = "Found in the Dire Maul Library.",
					groups = {
						n(SPECIAL, {
							description = "Available if a specific Quest (9015) has been completed.",
							sourceQuest = 9015,	-- The Challenge
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
						i(18375),	-- Bracers of the Eclipse
						i(18373),	-- Chestplate of Tranquility
						i(18392),	-- Distracting Dagger
						i(18380),	-- Eldritch Reinforced Legplates
						i(18395),	-- Emerald Flame Ring
						i(18382),	-- Fluctuating Cloak
						i(18396),	-- Mind Carver
						i(18378),	-- Silvermoon Leggings
						i(18388),	-- Stoneshatter
						i(18376),	-- Timeworn Mace
					},
				}),
			},
		}),
	},
});