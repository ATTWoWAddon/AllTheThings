local Items = ItemDBConditional;

ExportDB.OnTooltipDB.MusicRollItem = [[~function(t,tooltipInfo)tinsert(tooltipInfo,{left=not(_.IsQuestFlaggedCompleted(38356)or _.IsQuestFlaggedCompleted(37961))and _.L.MUSIC_ROLLS_DESC.._.L.MUSIC_ROLLS_DESC_2 or _.L.MUSIC_ROLLS_DESC})end]]

local i = function(itemID, questID)
	Items[itemID] = { ["questID"] = questID, ["type"] = "characterUnlockQuestID", OnTooltip = [[_.OnTooltipDB.MusicRollItem]] };
end

-- Stash of Dusty Music Rolls
i(122201, 38069);		-- Music Roll: Stormwind (Unlocks Orgrimmar)
i(122210, 38070);		-- Music Roll: Orgrimmar (Unlocks Stormwind)
i(122203, 38073);		-- Music Roll: Ironforge (Unlocks Thunder Bluff)
i(122213, 38074);		-- Music Roll: Thunder Bluff (Unlocks Ironforge)
i(122205, 38077);		-- Music Roll: Night Song (Unlocks Undercity)
i(122212, 38078);		-- Music Roll: Undercity (Unlocks Night Song)
i(122206, 38079);		-- Music Roll: Gnomeregan (Unlocks Zul'Gurub Voodoo)
i(122215, 38080);		-- Music Roll: Zul'Gurub Voodoo (Unlocks Gnomeregan)
i(122207, 38081);		-- Music Roll: Tinkertown (Unlocks The Zandalari)
i(122216, 38082);		-- Music Roll: The Zandalari (Unlocks Tinkertown)
i(122208, 38083);		-- Music Roll: Exodar (Unlocks Silvermoon)
i(122217, 38084);		-- Music Roll: Silvermoon (Unlocks Exodar)
--i(122217, 38348);		-- Music Roll: Silvermoon (Unlocks Exodar)   [Note: Not sure why it unlocks two separate ID's]
i(122209, 38085);		-- Music Roll: Curse of the Worgen (Unlocks Rescue the Warchief)
i(122218, 38086);		-- Music Roll: Rescue the Warchief (Unlocks Curse of the Worgen)
i(122219, 38101);		-- Music Roll: Way of the Monk

-- Acquired from HandyNotes_AzerothsTopToons
i(122195, 38063);		-- [23242635] = { 38063, "Legends of Azeroth", "Inside the Blackwing Descent raid.\n\nDefeat Nefarian.\nThis is NOT a guaranteed drop." },
i(122231, 38093);		-- [46927479] = { 38093, "Karazhan Opera House", "Inside the Karazhan raid.\n\nComplete the Opera House event.\nThis is NOT a guaranteed drop." },
						-- [17713439] = { 38093, "Karazhan Opera House", "Inside the Karazhan raid.\n\nComplete the Opera House event.\nThis is NOT a guaranteed drop." },
i(122223, 38088);		-- [23503710] = { 38088, "Ghost", "Kill yourself somehow, then speak to the Forlorn Composer." },
i(122222, 38087);		-- [41285134] = { 38087, "Angelic", "Loot the Arena Master Chest in the center of the Gurubashi Battle Ring.\nOnly available once every four hours." },
						-- [46532626] = { 38087, "Angelic", "Loot the Arena Master Chest in the center of the Gurubashi Battle Ring.\nOnly available once every four hours." },
i(122234, 38096);		-- [17566754] = { 38096, "Faerie Dragon", "Loot the Faerie Dragon Nest in the center of the mushroom circle.\nOnly available while the Fey-Drunk Darters are casting their spell." },
i(122233, 38095);		-- [60148499] = { 38095, "Lament of the Highborne", "Inside Undercity.\n\nLoot the strongbox at the base of a pillar to the left of Sylvannas Windrunner." },
						-- [58119388] = { 38095, "Lament of the Highborne", "Loot the strongbox at the base of a pillar to the left of Sylvannas Windrunner." },

-- ALLIANCE ONLY:
i(122207, 38081);		-- [31393804] = { 38081, "Tinkertown", "Inside the Gnomeregan dungeon.\n\nKill mobs for [Grime-Encrusted Object], clean them at the Sparkle-Matic 5200 and open the box it gives you.\nThis is NOT a guaranteed drop." },
						-- [64946316] = { 38081, "Tinkertown", "Kill mobs for [Grime-Encrusted Object], clean them at the Sparkle-Matic 5200 and open the box it gives you.\nThis is NOT a guaranteed drop." },
						-- [32503700] = { 38081, "Tinkertown", "Inside the Gnomeregan dungeon.\n\nKill mobs for [Grime-Encrusted Object], clean them at the Sparkle-Matic 5200 and open the box it gives you.\nThis is NOT a guaranteed drop." },
i(122204, 38075);		-- [65802243] = { 38075, "Cold Mountain", "Inside Ironforge.\n\nGo fishing for a bit in the Folorn Cavern." },
						-- [47001983] = { 38075, "Cold Mountain", "Go fishing for a bit in the Folorn Cavern." },
-- HORDE ONLY:
i(122215, 38080);		-- [63852180] = { 38080, "Zul'Gurub Voo Doo", "Inside the Zul'Gurub dungeon.\n\nDefeat Jin'do the Godbreaker.\nThis is NOT a guaranteed drop." }
						-- [71953290] = { 38080, "Zul'Gurub Voo Doo", "Inside the Zul'Gurub dungeon.\n\nDefeat Jin'do the Godbreaker.\nThis is NOT a guaranteed drop." },
						-- [50933982] = { 38080, "Zul'Gurub Voo Doo", "Defeat Jin'do the Godbreaker.\nThis is NOT a guaranteed drop." },
-- Kalimdor
i(122226, 38090);		-- [56404923] = { 38090, "Magic", "Loot the Lost Sentinel's Pouch inside a large hollow tree trunk." }
i(122239, 38100);		-- [43007600] = { 38100, "Shalandis Isle", "Loot the chest on the top floor of the Temple of the Moon,\non the wall opposite Tyrande Whisperwind." },
i(122198, 38066);		-- [61705195] = { 38066, "The Shattering", "Inside the Dragon Soul raid.\n\nDefeat Madness of Deathwing.\nThis is NOT a guaranteed drop." },
i(122224, 38089);		-- [68007390] = { 38089, "Mountains", "Loot the Frozen Supplies in a nook at the base of the pillar." },

-- HORDE ONLY:
i(122214, 38076);		-- [35882188] = { 38076, "Mulgore Plains", "Inside Thunder Bluff.\n\nGo fishing for a bit in the Pools of Vision\nbeneath the Spirit Rise." },
						-- [25701640] = { 38076, "Mulgore Plains", "Go fishing for a bit in the Pools of Vision\nbeneath the Spirit Rise." },

-- Outland
i(122228, 38091);		-- [57384968] = { 38091, "The Black Temple", "Loot the Warden's Scrollcase inside the Warden's Cage." },
i(122196, 38064);		-- [70994642] = { 38064, "The Burning Legion", "Inside the Black Temple raid.\n\nDefeat Illidan.\nThis is NOT a guaranteed drop." },

-- Northrend
i(122197, 38065);		-- [87335092] = { 38065, "Wrath of the Lich King", "Inside the Naxxramas raid.\n\nDefeat Kel'Thuzad.\nThis is NOT a guaranteed drop." },
						-- [36542288] = { 38065, "Wrath of the Lich King", "Defeat Kel'Thuzad.\nThis is NOT a guaranteed drop." },
i(122237, 38098);		-- [19185606] = { 38098, "Mountains of Thunder", "Defeat Loken on Heroic difficulty.\nThis is NOT a guaranteed drop." },
						-- [45292148] = { 38098, "Mountains of Thunder", "Inside the Halls of Lightning dungeon.\n\nDefeat Loken on Heroic difficulty.\nThis is NOT a guaranteed drop." },

i(122229, 38092);		-- [49795290] = { 38092, "Invincible", "Defeat The Lich King.\nThis is NOT a guaranteed drop." }
						-- [53838714] = { 38092, "Invincible", "Inside the Icecrown Citadel raid.\n\nDefeat The Lich King.\nThis is NOT a guaranteed drop." }
i(122232, 38094);		-- [75951993] = { 38094, "The Argent Tournament", "Purchased from any city quartermaster for 25 [Champion's Seal]." }
						-- [75952363] = { 38094, "The Argent Tournament", "Purchased from any city quartermaster for 25 [Champion's Seal]." }
i(122236, 38097);		-- [57113318] = { 38097, "Totems of the Grizzlemaw", "Speak to Remington Brode, who patrols all over Grizzly Hills.\nHe starts at Amberpine Lodge, follows the road counter-clockwise to Conquest Hold,\nthen north to Westfall Brigade Encampment, and then south to Camp Oneqwah.\n\nWhen you find him select \"<Breathe deeply.>\",\"I'm looking for a song...\",\n\"A song about the wilderness.\", and \"Yes!\"" },
						-- [22026934] = { 38097, "Totems of the Grizzlemaw", "Speak to Remington Brode, who patrols all over Grizzly Hills.\nHe starts at Amberpine Lodge, follows the road counter-clockwise to Conquest Hold,\nthen north to Westfall Brigade Encampment, and then south to Camp Oneqwah.\n\nWhen you find him select \"<Breathe deeply.>\",\"I'm looking for a song...\",\n\"A song about the wilderness.\", and \"Yes!\"" },
-- Cataclysm
i(122238, 38099);		--[51507505] = { 38099, "Darkmoon Carousel", "Purchased from Chester for 90 [Darkmoon Prize Ticket]." }
-- Pandaria
i(122221, 38102);		--[82222928] = { 38102, "Song of Liu Lang", "Purchased from Tan Shin Tiao for 100 gold.\nRequires Revered with The Lorewalkers." },
i(122199, 38067);		--[48486149] = { 38067, "Heart of Pandaria", "Inside the Terrace of Endless Spring raid.\n\nDefeat Sha of Fear.\nThis is NOT a guaranteed drop." },
						--[38914829] = { 38067, "Heart of Pandaria", "Defeat Sha of Fear.\nThis is NOT a guaranteed drop." },
-- HORDE ONLY:
i(122211, 38072);		--[10605360] = { 38072, "War March", "Purchased from Ongrom Black Tooth for 500 [Lion's Landing Commission]." },
-- ALLIANCE ONLY:
i(122202, 38071);		--[89533354] = { 38071, "High Seas", "Purchased from Proveditor Grantley for 500 [Domination Point Commission]." },
-- Draenor
i(122200, 38068);		--[48363460] = { 38068, "A Siege of Worlds", "Defeat Blackhand.\nThis is NOT a guaranteed drop." },
						--[51562724] = { 38068, "A Siege of Worlds", "Inside the Blackrock Foundry raid.\n\nDefeat Blackhand.\nThis is NOT a guaranteed drop." },
