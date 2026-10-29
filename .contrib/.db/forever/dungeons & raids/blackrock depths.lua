-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local DETENTION_BLOCK = createHeader({
	readable = "Detention Block",
	icon = 236718,
	text = {
		en = [[~DUNGEON_FLOOR_BLACKROCKDEPTHS1]],
	},
});
local SHADOWFORGE_CITY = createHeader({
	readable = "Shadowforge City",
	icon = 236718,
	text = {
		en = [[~DUNGEON_FLOOR_BLACKROCKDEPTHS2]],
	},
});
ExportDB.OnTooltipDB.ThoriumBrotherhood = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		addRepInfo(tooltipInfo, reputation, "Turn In Blood & Cores (1x each)", 200, 42000);
		addRepInfo(tooltipInfo, reputation, "Turn In Core Leather (2x each)", 150, 42000);
		addRepInfo(tooltipInfo, reputation, "Turn In Dark Iron Ore (10x each)", 50, 42000);
	end
end]];

instanceroot(228, {	-- Blackrock Depths
	lore = "Once the capital city of the Dark Iron dwarves, this volcanic labyrinth now serves as the seat of power for Ragnaros the Firelord. Ragnaros has uncovered the secret to creating life from stone and plans to build an army of unstoppable golems to aid him in conquering the whole of Blackrock Mountain. Obsessed with defeating Nefarian and his draconic minions, Ragnaros will go to any extreme to achieve final victory.",
	icon = 136326,
	zoneTextAreaID = 1584,	-- Blackrock Depths
	description = "The best route for a full clear is to enter Shadowforge City first time through the Dark Iron Highway. The Detention Block can be cleared whenever.",
	mapID = MAP.BLACKROCK_DEPTHS,
	coord = { 39.06, 18.12, MAP.BLACKROCK_MOUNTAIN_LEVEL3 },
	lvl = 42,
	groups = {
		n(FACTIONS, {
			faction(FACTION_THORIUM_BROTHERHOOD, {	-- Thorium Brotherhood
				maps = { MAP.SEARING_GORGE },
				OnTooltip = [[_.OnTooltipDB.ThoriumBrotherhood]],
			}),
		}),
		n(QUESTS, {
			--[[Commented out due to MC
			q(7604, {	-- A Binding Contract
				provider = { "i", 18628 },	-- Thorium Brotherhood Contract
				lvl = 60,
				groups = {
					i(18592),	-- Plans: Sulfuron Hammer (RECIPE!)
				},
			}),
			--]]
			q(4264, {	-- A Crumpled Up Note
				description = "After completing the Abandoned Hope quest, kill trash until this item drops for you. If your group has not yet killed the Dark Keeper, they have a fairly high chance to drop this item as well.",
				sourceQuest = 4242,	-- Abandoned Hope
				provider = { "i", 11446 },	-- A Crumpled Up Note
				races = ALLIANCE_ONLY,
				lvl = 50,
			}),
			q(4282, {	-- A Shred of Hope
				sourceQuest = 4264,	-- A Crumpled Up Note
				qg = 9023,	-- Marshal Windsor
				races = ALLIANCE_ONLY,
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Marshal Windsor's Lost Information
						provider = { "i", 11464 },	-- Marshal Windsor's Lost Information
					}),
					objective(2, {	-- 0/1 Marshal Windsor's Lost Information
						provider = { "i", 11465 },	-- Marshal Windsor's Lost Information
					}),
				},
			}),
			q(4022, {	-- A Taste of Flame (1/2) (A)
				description = "If you completed the quest 'Trinkets...' in Searing Gorge, you can complete this quest immediately without having to fight the elite dragon by bringing the Black Dragonflight Molt with you.",
				sourceQuest = 3481,	-- Trinkets...
				altQuests = { 4023 },	-- A Taste of Flame
				qg = 9459,	-- Cyrus Therepentous
				coord = { 95.09, 31.56, MAP.BURNING_STEPPES },
				cost = {{ "i", 10575, 1 }},	-- 1x Black Dragonflight Molt
				lvl = 52,
			}),
			q(4023, {	-- A Taste of Flame (1/2) (B)
				altQuests = { 4022 },	-- A Taste of Flame (1/2) (A)
				qg = 9459,	-- Cyrus Therepentous
				coord = { 95.09, 31.56, MAP.BURNING_STEPPES },
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 Black Dragonflight Molt
						provider = { "i", 10575 },	-- Black Dragonflight Molt
						coord = { 93.2, 32.6, MAP.BURNING_STEPPES },
						cr = 9461,	-- Frenzied Black Drake <Cyrus's Minion>
					}),
				},
			}),
			q(4024, {	-- A Taste of Flame (2/2)
				sourceQuests = {
					4022,	-- A Taste of Flame (1/2) (A)
					4023,	-- A Taste of Flame (1/2) (B)
				},
				qg = 9459,	-- Cyrus Therepentous
				coord = { 95.09, 31.56, MAP.BURNING_STEPPES },
				groups = {
					objective(1, {	-- 0/1 Encased Fiery Essence
						provider = { "i", 11230 },	-- Encased Fiery Essence
						cost = { { "i", 11231, 1 } },	-- 1x Altered Black Dragonflight Molt
						cr = 9016,	-- Bael'Gar
					}),
					i(12066),	-- Shaleskin Cape
					i(12082),	-- Wyrmhide Spaulders
					i(12083),	-- Valconian Sash
				},
			}),
			q(4242, {	-- Abandoned Hope
				sourceQuest = 4241,	-- Marshal Windsor
				qg = 9023,	-- Marshal Windsor
				races = ALLIANCE_ONLY,
				groups = {
					i(12018),	-- Conservator Helm
					i(12021),	-- Shieldplate Sabatons
					i(12041),	-- Windshear Leggings
				},
			}),
			q(3981, {	-- Commander Gor'shak
				sourceQuest = 3906,	-- Disharmony of Flame
				qg = 9081,	-- Galamav the Marksman <Kargath Expeditionary Force>
				coord = { 5.8, 47.6, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 48,
			}),
			q(3801, {	-- Dark Iron Legacy (1/2)
				description = "You must be a ghost in order to interact with this quest giver. He's in the middle of Blackrock Mountain on the floating island on top of his tomb.",
				qg = 8888,	-- Franclorn Forgewright
				maps = { MAP.BLACKROCK_MOUNTAIN },
				lvl = 48,
			}),
			q(3802, {	-- Dark Iron Legacy (2/2)
				sourceQuest = 3801,	-- Dark Iron Legacy (1/2)
				providers = {
					{ "n",   8888 },	-- Franclorn Forgewright
					{ "o", 164689 },	-- Monument of Franclorn Forgewright
				},
				maps = { MAP.BLACKROCK_MOUNTAIN },
				lvl = 48,
				groups = {
					objective(1, {	-- 0/1 Ironfel
						provider = { "i", 10999 },	-- Ironfel
						cr = 9056,	-- Fineous Darkvire <Chief Architect>
					}),
					i(11000),	-- Shadowforge Key
				},
			}),
			q(3906, {	-- Disharmony of Flame
				qg = 9084,	-- Thunderheart <Kargath Expeditionary Force>
				coord = { 3.3, 48.3, MAP.BADLANDS },
				maps = { MAP.BLACKROCK_MOUNTAIN },
				races = HORDE_ONLY,
				lvl = 48,
				groups = {
					objective(1, {	-- 0/1 Overmaster Pyron slain
						provider = { "n", 9026 },	-- Overmaster Pyron
					}),
				},
			}),
			q(3907, {	-- Disharmony of Fire
				sourceQuest = 3906,	-- Disharmony of Flame
				qg = 9084,	-- Thunderheart <Kargath Expeditionary Force>
				coord = { 3.3, 48.3, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 48,
				groups = {
					objective(1, {	-- 0/1 Lord Incendius slain
						provider = { "n", 9017 },	-- Lord Incendius
					}),
					objective(2, {	-- 0/1 Tablet of Kurniya
						provider = { "i", 11126 },	-- Tablet of Kurniya
					}),
					i(12112),	-- Crypt Demon Bracers
					i(12114),	-- Nightfall Gloves
					i(12115),	-- Stalwart Clutch
					i(12113),	-- Sunborne Cape
				},
			}),
			q(4182, {	-- Dragonkin Menace
				description = "You should finish this full quest chain up to Marshal Windsor before joining a Blackrock Depths group.",
				qg = 9562,	-- Helendis Riverhorn
				coord = { 85.8, 69.0, MAP.BURNING_STEPPES },
				races = ALLIANCE_ONLY,
				lvl = 48,
				groups = {
					objective(1, {	-- 0/15 Black Broodling slain
						provider = { "n", 7047 },	-- Black Broodling
					}),
					objective(2, {	-- 0/10 Black Dragonspawn slain
						provider = { "n", 7040 },	-- Black Dragonspawn
					}),
					objective(3, {	-- 0/1 Black Drake slain
						provider = { "n", 7044 },	-- Black Drake
					}),
					objective(4, {	-- 0/4 Black Wyrmkin slain
						provider = { "n", 7041 },	-- Black Wyrmkin
					}),
				},
			}),
			q(6646, {	-- Favor Amongst the Brotherhood, Blood of the Mountain
				qg = 12944,	-- Lokhtos Darkbargainer
				maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
				cost = {{ "i", 11382, 1 }},	-- 1x Blood of the Mountain
				repeatable = true,
				lvl = 60,
			}),
			q(6645, {	-- Favor Amongst the Brotherhood, Core Leather
				qg = 12944,	-- Lokhtos Darkbargainer
				maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
				cost = {{ "i", 17012, 2 }},	-- 2x Core Leather
				repeatable = true,
				lvl = 60,
			}),
			q(6642, {	-- Favor Amongst the Brotherhood, Dark Iron Ore
				qg = 12944,	-- Lokhtos Darkbargainer
				maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
				cost = {{ "i", 11370, 10 }},	-- 10x Dark Iron Ore
				repeatable = true,
				lvl = 60,
			}),
			q(6643, {	-- Favor Amongst the Brotherhood, Fiery Core
				qg = 12944,	-- Lokhtos Darkbargainer
				maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
				cost = {{ "i", 17010, 1 }},	-- 1x Fiery Core
				repeatable = true,
				lvl = 60,
			}),
			q(6644, {	-- Favor Amongst the Brotherhood, Lava Core
				qg = 12944,	-- Lokhtos Darkbargainer
				maxReputation = { FACTION_THORIUM_BROTHERHOOD, EXALTED },
				cost = {{ "i", 17011, 1 }},	-- 1x Lava Core
				repeatable = true,
				lvl = 60,
			}),
			q(4122, {	-- Grark Lorkrub
				sourceQuests = 4082,	-- KILL ON SIGHT: High Ranking Dark Iron Officials
				providers = {
					{ "n", 9080 },	-- Lexlort <Kargath Expeditionary Force>
					{ "i", 11286 },	-- Thorium Shackles
				},
				coord = { 5.9, 47.6, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 52,
			}),
			q(4126, {	-- Hurley Blackbreath
				sourceQuest = 4128,	-- Ragnar Thunderbrew
				qg = 1267,	-- Ragnar Thunderbrew
				coord = { 46.8, 52.4, MAP.DUN_MOROGH },
				races = ALLIANCE_ONLY,
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Lost Thunderbrew Recipe
						provider = { "i", 11312 },	-- Lost Thunderbrew Recipe
					}),
					i(12000),	-- Limb Cleaver
					i(11964),	-- Swiftstrike Cudgel
					i(12003),	-- Dark Dwarven Lager
				},
			}),
			q(4263, {	-- Incendius!
				sourceQuest = 4262,	-- Overmaster Pyron
				qg = 9561,	-- Jalinda Sprig
				coord = { 85.4, 70.1, MAP.BURNING_STEPPES },
				races = ALLIANCE_ONLY,
				lvl = 48,
				groups = {
					objective(1, {	-- 0/1 Lord Incendius slain
						provider = { "n", 9017 },	-- Lord Incendius
					}),
					i(12112),	-- Crypt Demon Bracers
					i(12114),	-- Nightfall Gloves
					i(12115),	-- Stalwart Clutch
					i(12113),	-- Sunborne Cape
				},
			}),
			q(4322, {	-- Jail Break!
				sourceQuest = 4282,	-- A Shred of Hope
				qg = 9023,	-- Marshal Windsor
				races = ALLIANCE_ONLY,
				lvl = 50,
				groups = {
					i(12061),	-- Blade of Reckoning
					i(12062),	-- Skilled Fighting Blade
					i(12065),	-- Ward of the Elements
				},
			}),
			q(4341, {	-- Kharan Mighthammer
				sourceQuest = 3701,	-- The Smoldering Ruins of Thaurissan (2/2)
				qg = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
				coord = { 39.09, 56.19, MAP.IRONFORGE },
				races = ALLIANCE_ONLY,
				lvl = 50,
			}),
			q(4342, {	-- Kharan's Tale
				sourceQuest = 4341,	-- Kharan Mighthammer
				qg = 9021,	-- Kharan Mighthammer
				races = ALLIANCE_ONLY,
				lvl = 50,
			}),
			q(4081, {	-- KILL ON SIGHT: Dark Iron Dwarves
				provider = { "o", 164867 },	-- WANTED
				coord = { 3.9, 47.4, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 48,
				groups = {
					objective(1, {	-- 0/10 Anvilrage Guardsman slain
						provider = { "n", 8891 },	-- Anvilrage Guardsman
					}),
					objective(2, {	-- 0/10 Anvilrage Warden slain
						provider = { "n", 8890 },	-- Anvilrage Warden
					}),
					objective(3, {	-- 0/10 Anvilrage Footman slain
						provider = { "n", 8892 },	-- Anvilrage Footman
					}),
				},
			}),
			q(4082, {	-- KILL ON SIGHT: High Ranking Dark Iron Officials
				sourceQuest = 4081,	-- KILL ON SIGHT: Dark Iron Dwarves
				provider = { "o", 164868 },	-- KILL ON SIGHT
				coord = { 3.9, 47.4, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 48,
				groups = {
					objective(1, {	-- 0/10 Anvilrage Medic slain
						provider = { "n", 8894 },	-- Anvilrage Medic
					}),
					objective(2, {	-- 0/10 Anvilrage Soldier slain
						provider = { "n", 8893 },	-- Anvilrage Soldier
					}),
					objective(3, {	-- 0/10 Anvilrage Officer slain
						provider = { "n", 8895 },	-- Anvilrage Officer
					}),
				},
			}),
			q(4134, {	-- Lost Thunderbrew Recipe
				sourceQuest = 4133,	-- Vivian Lagrave
				qg = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
				coord = { 2.9, 47.8, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Lost Thunderbrew Recipe
						provider = { "i", 11312 },	-- Lost Thunderbrew Recipe
					}),
					i(12000),	-- Limb Cleaver
					i(11964),	-- Swiftstrike Cudgel
				},
			}),
			q(4241, {	-- Marshal Windsor
				sourceQuest = 4224,	-- The True Masters (6/6)
				qg = 9560,	-- Marshal Maxwell
				coord = { 84.74, 69.02, MAP.BURNING_STEPPES },
				races = ALLIANCE_ONLY,
				lvl = 48,
			}),
			q(4132, {	-- Operation: Death to Angerforge
				sourceQuest = 4121,	-- Precarious Predicament
				qg = 9077,	-- Warlord Goretooth <Kargath Expeditionary Force>
				coord = { 5.8, 47.5, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 General Angerforge slain
						provider = { "n", 9033 },	-- General Angerforge
					}),
					i(12059),	-- Conqueror's Medallion
				},
			}),
			q(4262, {	-- Overmaster Pyron
				qg = 9561,	-- Jalinda Sprig
				coord = { 85.4, 70.1, MAP.BURNING_STEPPES },
				maps = { MAP.BLACKROCK_MOUNTAIN },
				races = ALLIANCE_ONLY,
				lvl = 48,
				groups = {
					objective(1, {	-- 0/1 Overmaster Pyron slain
						provider = { "n", 9026 },	-- Overmaster Pyron
					}),
				},
			}),
			q(4121, {	-- Precarious Predicament
				sourceQuest = 4122,	-- Grark Lorkrub
				qg = 9520,	-- Grark Lorkrub
				coord = { 40.2, 34.2, MAP.BURNING_STEPPES },
				races = HORDE_ONLY,
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 Thorium Shackles
						provider = { "i", 11286 },	-- Thorium Shackles
					}),
					objective(2, {	-- Prisoner Transport
						provider = { "i", 11286 },	-- Thorium Shackles
					}),
				},
			}),
			q(4128, {	-- Ragnar Thunderbrew
				qg = 9540,	-- Enohar Thunderbrew
				coord = { 63.6, 20.6, MAP.BLASTED_LANDS },
				maps = { MAP.DUN_MOROGH },
				races = ALLIANCE_ONLY,
				isBreadcrumb = true,
				lvl = 50,
			}),
			q(4136, {	-- Ribbly Screwspigot
				sourceQuest = 4324,	-- Yuka Screwspigot
				qg = 9544,	-- Yuka Screwspigot
				coord = { 66.1, 21.9, MAP.BURNING_STEPPES },
				lvl = 48,
				groups = {
					objective(1, {	-- 0/1 Ribbly's Head
						provider = { "i", 11313 },	-- Ribbly's Head
					}),
					i(11963),	-- Penance Spaulders
					i(12049),	-- Splintsteel Armor
					i(11865),	-- Rancor Boots
				},
			}),
			q(4295, {	-- Rocknot's Ale
				qg = 9503,	-- Private Rocknot
				cost = { { "i", 11325, 2 } },	-- 2x Dark Iron Ale Mug
				repeatable = true,
			}),
			q(6402, {	-- Stormwind Rendezvous
				sourceQuest = 4322,	-- Jail Break!
				qg = 9560,	-- Marshal Maxwell
				coord = { 84.7, 69.0, MAP.BURNING_STEPPES },
				races = ALLIANCE_ONLY,
				lvl = 50,
			}),
			q(4361, {	-- The Bearer of Bad News
				sourceQuest = 4342,	-- Kharan's Tale
				qg = 9021,	-- Kharan Mighthammer
				races = ALLIANCE_ONLY,
				lvl = 50,
			}),
			q(6501, {	-- The Dragon's Eye
				description = "Go to Haleh in Winterspring. Use the blue rune on the ground inside the cave to reach her. Don't bother going to Dustwallow Marsh.",
				sourceQuest = 6403,	-- The Great Masquerade
				providers = {
					{ "n", 1748 },	-- Highlord Bolvar Fordragon
					{ "i", 16662 },	-- Fragment of the Dragon's Eye
				},
				coord = { 78.2, 18.1, MAP.STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 50,
			}),
			q(4002, {	-- The Eastern Kingdoms
				sourceQuest = 4001,	-- What Is Going On? (2/2)
				qg = 4949,	-- Thrall <Warchief>
				coord = { 31.61, 37.83, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 48,
			}),
			q(4362, {	-- The Fate of the Kingdom
				sourceQuest = 4361,	-- The Bearer of Bad News
				qg = 2784,	-- King Magni Bronzebeard <Lord of Ironforge>
				coord = { 39.09, 56.19, MAP.IRONFORGE },
				races = ALLIANCE_ONLY,
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 Emperor Dagran Thaurissan slain
						provider = { "n", 9019 },	-- Emperor Dagran Thaurissan
					}),
				},
			}),
			q(6403, {	-- The Great Masquerade
				description = "This quest can be solo'd. Do NOT touch anything and let Bolvar take care of the dragons. They do heavy AOE, you will likely die unless you're in a raid group of 20+.",
				sourceQuest = 6402,	-- Stormwind Rendezvous
				qg = 12580,	-- Reginald Windsor
				coord = { 64.7, 76.8, MAP.STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 50,
			}),
			q(4286, {	-- The Good Stuff
				qg = 9177,	-- Oralius
				coord = { 84.6, 68.7, MAP.BURNING_STEPPES },
				races = ALLIANCE_ONLY,
				lvl = 50,
				groups = {
					objective(1, {	-- 0/20 Dark Iron Fanny Pack
						provider = { "i", 11468 },	-- Dark Iron Fanny Pack
					}),
					i(11883),	-- A Dingy Fanny Pack
				},
			}),
			q(4123, {	-- The Heart of the Mountain
				qg = 9536,	-- Maxwort Uberglint
				coord = { 65.2, 23.9, MAP.BURNING_STEPPES },
				lvl = 50,
				groups = {
					objective(1, {	-- 0/1 The Heart of the Mountain
						provider = { "i", 11309 },	-- The Heart of the Mountain
					}),
				},
			}),
			q(7201, {	-- The Last Element
				sourceQuest = 3906,	-- Disharmony of Flame
				qg = 9078,	-- Shadowmage Vivian Lagrave <Kargath Expeditionary Force>
				coord = { 2.9, 47.76, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 50,
				groups = {
					objective(1, {	-- 0/10 Essence of the Elements
						provider = { "i", 11129 },	-- Essence of the Elements
					}),
					i(12038),	-- Lagrave's Seal
				},
			}),
			q(4201, {	-- The Love Potion
				qg = 9500,	-- Mistress Nagmara
				maps = { MAP.AZSHARA, MAP.UNGORO_CRATER },
				lvl = 50,
				groups = {
					objective(1, {	-- 0/4 Gromsblood
						provider = { "i", 8846 },	-- Gromsblood
					}),
					objective(2, {	-- 0/10 Giant Silver Vein
						provider = { "i", 11405 },	-- Giant Silver Vein
						coord = { 68.0, 17.0, MAP.AZSHARA },
						crs = {
							6146,	-- Cliff Breaker
							6147,	-- Cliff Thunderer
							6148,	-- Cliff Walker
						},
					}),
					objective(3, {	-- 0/1 Nagmara's Filled Vial
						provider = { "i", 11413 },	-- Nagmara's Filled Vial
						cost = { { "i", 11412, 1 } },	-- 1x Nagmara's Vial
						coord = { 31.0, 49.0, MAP.UNGORO_CRATER },
					}),
					i(11962),	-- Manacle Cuffs
					i(11866),	-- Nagmara's Whipping Belt
				},
			}),
			q(4004, {	-- The Princess Saved?
				sourceQuest = 4003,	-- The Royal Rescue
				qg = 8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
				maps = { MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 48,
				groups = {
					i(12545),	-- Eye of Orgrimmar
					i(12544),	-- Thrall's Resolve
				},
			}),
			q(4363, {	-- The Princess's Surprise
				sourceQuest = 4362,	-- The Fate of the Kingdom
				qg = 8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
				maps = { MAP.IRONFORGE },
				races = ALLIANCE_ONLY,
				lvl = 50,
				groups = {
					i(12548),	-- Magni's Will
					i(12543),	-- Songstone of Ironforge
				},
			}),
			q(4061, {	-- The Rise of the Machines (1/3)
				qg = 9079,	-- Hierophant Theodora Mulvadania <Kargath Expeditionary Force>
				coord = { 3.02, 47.81, MAP.BADLANDS },
				maps = { MAP.BURNING_STEPPES },
				races = HORDE_ONLY,
				lvl = 52,
				groups = {
					objective(1, {	-- 0/10 Fractured Elemental Shard
						provider = { "i", 11266 },	-- Fractured Elemental Shard
						crs = {
							7032,	-- Greater Obsidian Elemental
							8981,	-- Malfunctioning Reaver
							7039,	-- War Reaver
						},
					}),
				},
			}),
			q(4062, {	-- The Rise of the Machines (2/3)
				sourceQuest = 4061,	-- The Rise of the Machines (1/3)
				providers = {
					{ "n", 9079 },	-- Hierophant Theodora Mulvadania <Kargath Expeditionary Force>
					{ "i", 11267 },	-- Elemental Shard Sample
				},
				coord = { 3.02, 47.81, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 52,
			}),
			q(4063, {	-- The Rise of the Machines (3/3)
				sourceQuest = 4062,	-- The Rise of the Machines (2/3)
				qg = 2921,	-- Lotwil Veriatus
				coord = { 25.95, 44.87, MAP.BADLANDS },
				races = HORDE_ONLY,
				lvl = 52,
				groups = {
					objective(1, {	-- 0/1 Head of Argelmach
						provider = { "i", 11268 },	-- Head of Argelmach
					}),
					objective(2, {	-- 0/10 Intact Elemental Core
						provider = { "i", 11269 },	-- Intact Elemental Core
					}),
					i(12110),	-- Raincaster Drape
					i(12109),	-- Azure Moon Amice
					i(12111),	-- Lavaplate Gauntlets
					i(12108),	-- Basaltscale Armor
				},
			}),
			q(4003, {	-- The Royal Rescue
				sourceQuest = 4002,	-- The Eastern Kingdoms
				qg = 4949,	-- Thrall <Warchief>
				coord = { 31.61, 37.83, MAP.ORGRIMMAR },
				races = HORDE_ONLY,
				lvl = 48,
				groups = {
					objective(1, {	-- 0/1 Emperor Dagran Thaurissan slain
						provider = { "n", 9019 },	-- Emperor Dagran Thaurissan
					}),
				},
			}),
			q(3702, {	-- The Smoldering Ruins of Thaurissan (1/2)
				qg = 8879,	-- Royal Historian Archesonus
				coord = { 38.37, 55.31, MAP.IRONFORGE },
				races = ALLIANCE_ONLY,
				lvl = 50,
			}),
			q(3701, {	-- The Smoldering Ruins of Thaurissan (2/2)
				sourceQuest = 3702,	-- The Smoldering Ruins of Thaurissan (1/2)
				qg = 8879,	-- Royal Historian Archesonus
				coord = { 38.37, 55.31, MAP.IRONFORGE },
				maps = { MAP.BURNING_STEPPES },
				races = ALLIANCE_ONLY,
				lvl = 50,
				groups = {
					objective(1, {	-- 0/12 Information Recovered
						provider = { "o", 153556 },	-- Thaurissan Relic
					}),
					i(12102),	-- Ring of the Aristocrat
				},
			}),
			q(4083, {	-- The Spectral Chalice
				description = "If you are a miner with 230 skill, speak with Gloom'rel to have him summon the Spectral Chalice.\n\nAfter you deposit the required items, speak to Gloom'rel again to learn how to smelt Dark Iron Ore.",
				provider = { "o", 164869 },	-- Spectral Chalice
				cost = {
					{ "i", 3577, 20 },	-- 20x Gold Bar
					{ "i", 7910, 2 },	-- 2x Star Ruby
					{ "i", 6037, 10 },	-- 10x Truesilver Bar
				},
				requireSkill = MINING,
				learnedAt = 230,
				cr = 9037,	-- Gloom'rel
				lvl = 40,
				groups = {
					r(14891),	-- Smelt Dark Iron
				},
			}),
			q(4183, {	-- The True Masters (1/6)
				sourceQuest = 4182,	-- Dragonkin Menace
				qg = 9562,	-- Helendis Riverhorn
				qi = 11366,	-- Helendis Riverhorn's Letter
				coord = { 85.8, 69.0, MAP.BURNING_STEPPES },
				races = ALLIANCE_ONLY,
				lvl = 48,
			}),
			q(4184, {	-- The True Masters (2/6)
				sourceQuest = 4183,	-- The True Masters (1/6)
				qg = 344,	-- Magistrate Solomon
				qi = 11367,	-- Solomon's Plea to Bolvar
				coord = { 24.9, 44.4, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 48,
			}),
			q(4185, {	-- The True Masters (3/6)
				sourceQuest = 4184,	-- The True Masters (2/6)
				qg = 1748,	-- Highlord Bolvar Fordragon
				coord = { 78.2, 18.1, MAP.STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 48,
				groups = {
					objective(1, {	-- Advice from Lady Prestor
						provider = { "n", 1749 },	-- Lady Katrana Prestor
					}),
				},
			}),
			q(4186, {	-- The True Masters (4/6)
				sourceQuest = 4185,	-- The True Masters (3/6)
				providers = {
					{ "n", 1748 },	-- Highlord Bolvar Fordragon
					{ "i", 11368 },	-- Bolvar's Decree
				},
				coord = { 78.2, 18.1, MAP.STORMWIND_CITY },
				races = ALLIANCE_ONLY,
				lvl = 48,
			}),
			q(4223, {	-- The True Masters (5/6)
				sourceQuest = 4186,	-- The True Masters (4/6)
				qg = 344,	-- Magistrate Solomon
				coord = { 24.9, 44.4, MAP.REDRIDGE_MOUNTAINS },
				races = ALLIANCE_ONLY,
				lvl = 48,
			}),
			q(4224, {	-- The True Masters (6/6)
				sourceQuest = 4223,	-- The True Masters (5/6)
				qg = 9560,	-- Marshal Maxwell
				coord = { 84.74, 69.02, MAP.BURNING_STEPPES },
				races = ALLIANCE_ONLY,
				lvl = 48,
				groups = {
					objective(1, {	-- Ragged John's Story
						provider = { "n", 9563 },	-- Ragged John
						coord = { 65.0, 23.8, MAP.BURNING_STEPPES },
					}),
				},
			}),
			q(4133, {	-- Vivian Lagrave
				qg = 5204,	-- Apothecary Zinge <Royal Apothecary Society>
				coord = { 50.1, 68.0, MAP.UNDERCITY },
				races = HORDE_ONLY,
				isBreadcrumb = true,
				lvl = 50,
			}),
			q(3982, {	-- What Is Going On? (1/2)
				sourceQuest = 3981,	-- Commander Gor'shak
				qg = 9020,	-- Commander Gor'shak <Kargath Expeditionary Force>
				races = HORDE_ONLY,
				lvl = 48,
			}),
			q(4001, {	-- What Is Going On? (2/2)
				sourceQuest = 3982,	-- What Is Going On? (1/2)
				qg = 9020,	-- Commander Gor'shak <Kargath Expeditionary Force>
				races = HORDE_ONLY,
				lvl = 48,
				groups = {
					objective(1, {	-- Information Gathered from Kharan
						provider = { "n", 9021 },	-- Kharan Mighthammer
					}),
				},
			}),
			q(4324, {	-- Yuka Screwspigot
				qg = 9706,	-- Yorba Screwspigot
				coord = { 67.0, 24.0, MAP.TANARIS },
				isBreadcrumb = true,
				lvl = 48,
			}),
		}),
		n(VENDORS, {
			--[[Commented out until confirmed
			n(12944, bubbleDownClassicRep(FACTION_THORIUM_BROTHERHOOD, {	-- Lokhtos Darkbargainer <The Thorium Brotherhood>
				{	-- Neutral
					i(18628, {	-- Thorium Brotherhood Contract
						description = "With a Sulfuron Ingot in your bags, speak with Lokhtos and click on the new chat option to obtain a Thorium Brotherhood Contract.",
						cost = {{ "i", 17203, 1 }},	-- Sulfuron Ingot
						lvl = 60,
					}),
				},
				{	-- Friendly
					i(19444),	-- Formula: Enchant Weapon - Strength (RECIPE!)
					i(17022),	-- Pattern: Corehound Boots (RECIPE!)
					i(17018),	-- Pattern: Flarecore Gloves (RECIPE!)
					i(17023),	-- Pattern: Molten Helm (RECIPE!)
					i(17051),	-- Plans: Dark Iron Bracers (RECIPE!)
					i(20761),	-- Recipe: Transmute Elemental Fire (RECIPE!)
				},
				{	-- Honored
					i(19448),	-- Formula: Enchant Weapon - Mighty Spirit (RECIPE!)
					i(17025),	-- Pattern: Black Dragonscale Boots (RECIPE!)
					i(17017),	-- Pattern: Flarecore Mantle (RECIPE!)
					i(19219),	-- Pattern: Flarecore Robe (RECIPE!)
					i(19330),	-- Pattern: Lava Belt (RECIPE!)
					i(17060),	-- Plans: Dark Iron Destroyer (RECIPE!)
					i(19206),	-- Plans: Dark Iron Helm (RECIPE!)
					i(17059),	-- Plans: Dark Iron Reaver (RECIPE!)
					i(17049),	-- Plans: Fiery Chain Girdle (RECIPE!)
				},
				{	-- Revered
					i(19449),	-- Formula: Enchant Weapon - Mighty Intellect (RECIPE!)
					i(19331),	-- Pattern: Chromatic Gauntlets (RECIPE!)
					i(19332),	-- Pattern: Corehound Belt (RECIPE!)
					i(19220),	-- Pattern: Flarecore Leggings (RECIPE!)
					i(19333),	-- Pattern: Molten Belt (RECIPE!)
					i(19208),	-- Plans: Black Amnesty (RECIPE!)
					i(19209),	-- Plans: Blackfury (RECIPE!)
					i(19207),	-- Plans: Dark Iron Gauntlets (RECIPE!)
					i(17052),	-- Plans: Dark Iron Leggings (RECIPE!)
					i(17053),	-- Plans: Fiery Chain Shoulders (RECIPE!)
				},
				{	-- Exalted
					i(19211),	-- Plans: Blackguard (RECIPE!)
					i(19212),	-- Plans: Nightfall (RECIPE!)
					i(19210),	-- Plans: Ebon Hand (RECIPE!)
					i(20040),	-- Plans: Dark Iron Boots (RECIPE!)
				},
			})),
			--]]
			n(9499, {	-- Plugger Spazzring
				--[[Commented out until confirmed
				i(15759),	-- Pattern: Black Dragonscale Breastplate (RECIPE!)
				i(13483),	-- Recipe: Transmute Fire to Earth (RECIPE!)
				--]]
				i(11325),	-- Dark Iron Ale Mug
			}),
		}),
		n(TREASURES, {
			i(11614, {	-- Plans: Dark Iron Mail (RECIPE!)
				description = "|cFFFFD700Plans: Dark Iron Mail|r can spawn in one of four spots.\n\n|cFFFFFFFFLocation 1:|r Located in the |cFFFFD700West Garrison|r. After going up the ramp from where |cFFFFD700General Angerforge|r is located on your left are some tables. It will be located in the back corner where the Fireguard Destroyer is and two tables in front of it. This table is close to the table that has vases on it that is near the keg.\n\n|cFFFFFFFFLocation 2:|r In |cFFFFD700Golem Lord Argelmach's|r room. When you walk into the room it will be in the back left corner where in between barrels. There will be two barrels to the left and one barrel to the right of it.\n\n|cFFFFFFFFLocation 3:|r In |cFFFFD700The Manufactory|r, on a bench.\n\n|cFFFFFFFFLocation 4:|r After leaving the room with |cFFFFD700Ambassador Flamelash|r you will cross a bridge that leads into the |cFFFFD700Mold Foundry|r. Once you enter the room you will continue straight until you see the ramp. Instead of going down the ramp you will jump off the ledge to the right of the ramp. After landing on the ground you will see the plans located here.",
				provider = { "o", 173232 },	-- Blacksmithing Plans
			}),
			i(11615, {	-- Plans: Dark Iron Shoulders (RECIPE!)
				description = "|cFFFFD700Plans: Dark Iron Shoulders|r spawn in one of two spots.\n\n|cFFFFFFFFLocation 1:|r In |cFFFFD700General Angerforge's|r room. They are sitting on the bottom shelf next to the floating crystal.\n\n|cFFFFFFFFLocation 2:|r On the ground in the |cFFFFD700Detention Block|r. After passing Lexlort you will continue down into the room. When you come across the first split into two rooms you will enter the room on the left. They will be located on the seat behind the bench which is located next to the 3 red jugs.",
				provider = { "o", 173232 },	-- Blacksmithing Plans
			}),
			i(18235, {	-- Schematic: Field Repair Bot 74A (RECIPE!)
				description = "On the floor next to Golem Lord Argelmach.",
				provider = { "o", 179552 },	-- Schematic: Field Repair Bot 74A
			}),
		}),
		n(ZONE_DROPS, {
			i(11468),	-- Dark Iron Fanny Pack
			i(18945),	-- Dark Iron Residue
			--i(22528),	-- Dark Iron Scraps //Commented out until confirmed
			i(11129),	-- Essence of the Elements
			i(11269, {	-- Intact Elemental Core
				crs = {
					8908,	-- Molten War Golem
					8906,	-- Ragereaver Golem
					8905,	-- Warbringer Construct
					8907,	-- Wrath Hammer Construct
				},
			}),
			i(15781, {	-- Pattern: Black Dragonscale Leggings (RECIPE!)
				cr = 8903,	-- Anvilrage Captain
			}),
			i(15770, {	-- Pattern: Black Dragonscale Shoulders (RECIPE!)
				cr = 8898,	-- Anvilrage Marshal
			}),
			i(11611, {	-- Plans: Dark Iron Sunderer (RECIPE!)
				crs = {
					9554,	-- Hammered Patron
					10043,	-- Ribbly's Crony
				},
			}),
			i(16049, {	-- Schematic: Dark Iron Bomb (RECIPE!)
				cr = 8920,	-- Weapon Technician
			}),
			i(16048, {	-- Schematic: Dark Iron Rifle (RECIPE!)
				cr = 8897,	-- Doomforge Craftsman
			}),
			i(18654, {	-- Schematic: Gnomish Alarm-O-Bot (RECIPE!)
				cr = 8920,	-- Weapon Technician
			}),
			i(16053, {	-- Schematic: Master Engineer's Goggles (RECIPE!)
				cr = 8900,	-- Doomforge Arcanasmith
			}),
			i(18661, {	-- Schematic: World Enlarger (RECIPE!)
				cr = 8920,	-- Weapon Technician
			}),
			i(12546),	-- Aristocratic Cuffs
			i(12555),	-- Battlechaser's Greaves
			i(12552),	-- Blisterbane Wrap
			i(12549),	-- Braincage
			i(12535),	-- Doomforged Straightedge
			i(12542),	-- Funeral Pyre Vestment
			i(12547),	-- Mar Alom's Grip
			i(11078),	-- Relic Coffer Key
			i(12527),	-- Ribsplitter
			i(12550),	-- Runed Golem Shackles
			i(12531),	-- Searing Needle
			i(12532),	-- Spire of the Stoneshaper
			i(12551),	-- Stoneshield Cloak
			i(12528),	-- The Judge's Gavel
		}),
		n(DETENTION_BLOCK, {
			e(369, {	-- High Interrogator Gerstahn
				creatureID = 9018,
				groups = {
					i(11140),	-- Prison Cell Key
					i(11626),	-- Blackveil Cape
					i(11625),	-- Enthralled Sphere
					i(11624),	-- Kentic Amice
					--i(22240),	-- Greaves of Withering Despaire \\Commented out until confirmed
				},
			}),
			e(370, {	-- Lord Roccor
				creatureID = 9025,
				groups = {
					i(11813),	-- Formula: Smoking Heart of the Mountain (RECIPE!)
					i(11632),	-- Earthslag Shoulders
					i(11630),	-- Rockshard Pellets
					i(11631),	-- Stoneshell Guard
					--i(22234),	-- Mantle of Lost Hope \\Commented out until confirmed
					--i(22397),	-- Idol of Ferocity \\Commented out until confirmed
				},
			}),
			e(371, {	-- Houndmaster Grebmar
				creatureID = 9319,
				groups = {
					i(11627),	-- Fleetfoot Greaves
					i(11628),	-- Houndmaster's Bow
					i(11629),	-- Houndmaster's Rifle
					i(11623),	-- Spritecaster Cape
				},
			}),
			e(372, {	-- Ring of Law
				description = "Approaching the center of the ring will start an event, and the High Justice will appear and approach one of the gates and release three waves of non-elite enemies, followed by one of six possible mini-bosses.",
				creatureID = 10096,	-- High Justice Grimstone
				groups = {
					n(9031, {	-- Anub'shiah
						i(11678),	-- Carapace of Anub'shiah
						i(11677),	-- Graverot Cape
						i(11731),	-- Savage Gladiator Greaves
						i(11675),	-- Shadefiend Boots
					}),
					n(9029, {	-- Eviscerator
						i(11686),	-- Girdle of Beastial Fury
						i(11679),	-- Rubicund Armguards
						i(11730),	-- Savage Gladiator Grips
						i(11685),	-- Splinthide Shoulders
					}),
					n(9027, {	-- Gorosh the Dervish
						i(11726),	-- Savage Gladiator Chain
						--i(22257),	-- Bloodclot Band \\Commented out until confirmed
						--i(22266),	-- Flarethorn \\Commented out until confirmed
						--i(22271),	-- Leggings of Frenzied Magic \\Commented out until confirmed
					}),
					n(9028, {	-- Grizzle
						i(11610),	-- Plans: Dark Iron Pulverizer (RECIPE!)
						i(11722),	-- Dregmetal Spaulders
						i(11702),	-- Grizzle's Skinner
						i(11703),	-- Stonewall Girdle
						--i(22270),	-- Entrenching Boots \\Commented out until confirmed
					}),
					n(9032, {	-- Hedrum the Creeper
						i(11635),	-- Hookfang Shanker
						i(11729),	-- Savage Gladiator Helm
						i(11634),	-- Silkweb Gloves
						i(11633),	-- Spiderfang Carapace
					}),
					n(9030, {	-- Ok'thor the Breaker
						i(11662),	-- Ban'thok Sash
						i(11824),	-- Cyclopean Band
						i(11665),	-- Ogreseer Fists
						i(11728),	-- Savage Gladiator Leggings
					}),
					n(16059, {	-- Theldren
						description = "Requires Banner of Provocation (Dungeon Set 2 Questline) to summon this boss. Loot the grey chest on the grey grate after killing the mobs. You must use the banner before the non-elites are killed.\nSummon Location: Ring of Law.",
						providers = {
							{ "i", 21986 },	-- Banner of Provocation
							{ "o", 181074 },	-- Arena Spoils
						},
						groups = {
							i(22047),	-- Top Piece of Lord Valthalak's Amulet
							i(22305),	-- Ironweave Mantle
							i(22317),	-- Lefty's Brass Knuckle
							i(22318),	-- Malgen's Long Bow
							i(22330),	-- Shroud of Arcane Mastery
						},
					}),
				},
			}),
			e(377, {	-- Bael'gar
				creatureID = 9016,
				groups = {
					i(11803),	-- Force of Magma
					i(11802),	-- Lavacrest Leggings
					i(11805),	-- Rubidium Hammer
					i(11807),	-- Sash of the Burning Heart
				},
			}),
			e(374, {	-- Lord Incendius
				creatureID = 9017,
				groups = {
					--i(21987),	-- Incendicite of Incendius \\Commented out until confirmed
					i(11126),	-- Tablet of Kurniya
					i(11764),	-- Cinderhide Armsplints
					i(11767),	-- Emberplate Armguards
					i(11766),	-- Flameweave Cuffs
					i(11768),	-- Incendic Bracers
					i(11765),	-- Pyremail Wristguards
					--i(19268),	-- Ace of Elementals \\Commented out until confirmed
				},
			}),
			e(376, {	-- Fineous Darkvire <Chief Architect>
				creatureID = 9056,
				groups = {
					i(11840),	-- Master Builder's Shirt
					i(11839),	-- Chief Architect's Monocle
					i(11842),	-- Land Surveyor's Mantle
					i(11841),	-- Senior Designer's Pantaloons
					--i(22223),	-- Foreman's Head Protector \\Commented out until confirmed
				},
			}),
		}),
		n(SHADOWFORGE_CITY, {
			e(373, {	-- Pyromancer Loregrain
				creatureID = 9024,
				groups = {
					i(11207),	-- Formula: Enchant Weapon - Fiery Weapon (RECIPE!)
					i(11747),	-- Flamestrider Robes
					i(11750),	-- Kindling Stave
					i(11748),	-- Pyric Caduceus
					i(11749),	-- Searingscale Leggings
				},
			}),
			e(375, {	-- Warder Stilgiss
				creatureID = 9041,
				groups = {
					i(11784),	-- Arbiter's Blade
					i(11782),	-- Boreal Mantle
					i(11783),	-- Chillsteel Girdle
					--i(22241),	-- Dark Warder's Pauldrons \\Commented out until confirmed
				},
			}),
			n(9042, {	-- Verek
				i(11755),	-- Verek's Collar
				--i(22242),	-- Verek's Leash \\Commented out until confirmed
			}),
			n(9476, {	-- Watchman Doomgrip
				description = "Watchman Doomgrip spawns once all twelve Relic Coffers have been opened using Relic Coffer Keys that can drop from any Dark Iron mob in the instance. Upon defeating all enemies, a hidden door beneath the Dark Coffer will open allowing access to the Secret Safe as well as the Heart of the Mountain.",
				cost = { { "i", 11078, 12 } },	-- 12x Relic Coffer Key
				groups = {
					o(160836, {	-- Relic Coffer
						description = "Relic Coffer Keys can drop from any Dark Iron mob in the instance.",
						groups = {
							i(11944),	-- Dark Iron Baby Booties
							i(11945),	-- Dark Iron Ring
							i(11937),	-- Fat Sack of Coins
							i(11946),	-- Fire Opal Necklace
							i(11938),	-- Sack of Gems
							i(11966),	-- Small Sack of Coins
						},
					}),
					o(165554, {	-- Heart of the Mountain
						description = "This spawns after defeating Watchman Doomgrip.",
						groups = {
							i(11309),	-- The Heart of the Mountain
						},
					}),
					o(161495, {	-- Secret Safe
						description = "This spawns after defeating Watchman Doomgrip.",
						groups = {
							--i(22205),	-- Black Steel Bindings \\Commented out until confirmed
							i(11926),	-- Deathdealer Breastplate
							i(11929),	-- Haunting Specter Leggings
							--i(22255),	-- Magma Forged Band \\Commented out until confirmed
							--i(22256),	-- Mana Shaping Handwraps \\Commented out until confirmed
							i(11923),	-- The Hammer of Grace
							--i(22254),	-- Wand of Eternal Light \\Commented out until confirmed
							i(11920),	-- Wraith Scythe
						},
					}),
				},
			}),
			o(164820, {	-- Dark Keeper Nameplate
				description = "Inspect the portrait in front of the coffer room. Opening it will tell you the name of the Dark Keeper you need and where he is located. Only one will spawn each reset.\n\n|cff3399ffDark Keepers:|r\n\n|cFFFFD700Dark Keeper Bethek|r spawns inside the vault room as soon as you open the portrait.\n\n|cFFFFD700Dark Keeper Ofgut|r is located in |cFFFFD700General Angerforge's|r room. When you come down the stairs and are looking straight at |cFFFFD700General Angerforge|r, you will see him located directly to the left near the crystal.\n\n|cFFFFD700Dark Keeper Pelver|r is located in |cFFFFD700The Domicile|r. For quicker access, you can take any of the mole machines and click |cFFFFD700Into the Domicile|r and he will be on top of it.\n\n|cFFFFD700Dark Keeper Uggel|r is quite a close walk; go outside the vault room and turn right to the last room. He is near the entrance where all the golems are.\n\n|cFFFFD700Dark Keeper Vorfalk|r is located at the |cFFFFD700Grim Guzzler|r. When you first enter the room after coming from the bridge, he will be located on your right side in the corner (in front of the band's playing spot).\n\n|cFFFFD700Dark Keeper Zimrel|r is located on the second floor of the |cFFFFD700Ring of Law|r. When entering this floor from the |cFFFFD700East Garrison|r (room with the Shadowforge Lock), you will go around to your right and he will be sitting in the middle of the seats.",
				crs = {
					9438,	-- Dark Keeper Bethek
					9442,	-- Dark Keeper Ofgut
					9443,	-- Dark Keeper Pelver
					9439,	-- Dark Keeper Uggel
					9437,	-- Dark Keeper Vorfalk
					9441,	-- Dark Keeper Zimrel
				},
				groups = {
					o(160845, {	-- Dark Coffer
						sharedDescription = "Is used to turn in Librams.",
						cost = {{ "i", 11197, 1 }},	-- 1x Dark Keeper Key
						groups = {
							i(11752),	-- Black Blood of the Tormented
							i(11751),	-- Burning Essence
							i(11753),	-- Eye of Kajal
						},
					}),
					i(11197),	-- Dark Keeper Key
				},
			}),
			e(378, {	-- General Angerforge
				creatureID = 9033,
				groups = {
					i(11464),	-- Marshal Windsor's Lost Information
					i(11816),	-- Angerforge's Battle Axe
					i(11810),	-- Force of Will
					i(11815),	-- Hand of Justice
					i(11817),	-- Lord General's Sword
					i(11820),	-- Royal Decorated Armor
					i(11821),	-- Warstrife Leggings
				},
			}),
			e(379, {	-- Golem Lord Argelmach
				creatureID = 8983,
				groups = {
					i(11268),	-- Head of Argelmach
					i(11465),	-- Marshal Windsor's Lost Information
					i(11823),	-- Luminary Kilt
					i(11669),	-- Naglering
					i(11822),	-- Omnicast Boots
					i(11819),	-- Second Wind
				},
			}),
			e(380, {	-- Hurley Blackbreath
				creatureID = 9537,
				provider = { "o", 164911 },	-- Thunderbrew Lager Keg
				description = "Break the 3 Thunderbrew Lager Kegs to start the encounter.",
				groups = {
					i(11312),	-- Lost Thunderbrew Recipe
					i(18043),	-- Coal Miner Boots
					--i(22275),	-- Firemoss Boots \\Commented out until confirmed
					i(18044),	-- Hurley's Tankard
					i(11735),	-- Ragefury Eyepatch
				},
			}),
			e(9543, {	-- Ribbly Screwspigot
				creatureID = 9543,
				description = "Speak to him to start the encounter.",
				groups = {
					i(11313),	-- Ribbly's Head
					i(11612),	-- Plans: Dark Iron Plate (RECIPE!)
					i(2663),	-- Ribbly's Bandolier
					i(2662),	-- Ribbly's Quiver
					i(11742),	-- Wayfarer's Knapsack
				},
			}),
			e(383, {	-- Plugger Spazzring
				creatureID = 9499,
				groups = {
					i(18653),	-- Schematic: Goblin Jumper Cables XL (RECIPE!)
					i(12791),	-- Barman Shanker
					i(12793),	-- Mixologist's Tunic
				},
			}),
			e(381, {	-- Phalanx
				creatureID = 9502,
				description = "Private Rocknot must be sent into a drunken rage to aggro Phalanx.\nTo do that, give him 6 dark iron ale mugs, which can be bought from Plugger Spazzring.\nRocknot will break one of the kegs, it'll blow the door open and Phalanx will be angry.",
				groups = {
					i(11744),	-- Bloodfist
					i(11745),	-- Fists of Phalanx
					--i(22212),	-- Golem Fitted Pauldrons \\Commented out until confirmed
					i(11746),	-- Golem Skull Helm
					i(11743),	-- Rockfist
					--i(22204),	-- Wristguards of Renown \\Commented out until confirmed
				},
			}),
			e(384, {	-- Ambassador Flamelash
				creatureID = 9156,
				groups = {
					i(11832),	-- Burst of Knowledge
					i(11812),	-- Cape of the Fire Salamander
					i(11808),	-- Circle of Flame
					i(11809),	-- Flame Wrath
					i(11814),	-- Molten Fists
				},
			}),
			n(8923, {	-- Panzor the Invincible
				description = "This is a Rare Creature and, as such, is not always present.",
				groups = {
					i(11785),	-- Rock Golem Bulwark
					i(11787),	-- Shalehusk Boots
					--i(22245),	-- Soot Encrusted Footwear \\Commented out until confirmed
					i(11786),	-- Stone of the Earth
				},
			}),
			e(385, {	-- The Seven
				creatureID = 9039,	-- Doom'rel
				provider = { "o", 169243 },	-- Chest of The Seven
				modelScale = 3,
				groups = {
					i(11922),	-- Blood-Etched Blade
					i(11926),	-- Deathdealer Breastplate
					i(11925),	-- Ghostshroud
					i(11929),	-- Haunting Specter Leggings
					i(11921),	-- Impervious Giant
					i(11927),	-- Legplates of the Eternal Guardian
					i(11923),	-- The Hammer of Grace
					i(11920),	-- Wraith Scythe
				},
			}),
			e(386, {	-- Magmus
				creatureID = 9938,
				groups = {
					i(22275),	-- Firemoss Boots
					i(11746),	-- Golem Skull Helm
					--i(22208),	-- Lavastone Hammer \\Commented out until confirmed
					--i(22400),	-- Libram of Truth \\Commented out until confirmed
					i(11935),	-- Magmus Stone
					--i(22395),	-- Totem of Rage \\Commented out until confirmed
				},
			}),
			n(8929, {	-- Princess Moira Bronzebeard <Princess of Ironforge> / Thaurissan High Priest
				description = "In order to be eligible for this loot, you need to have completed The Fate of the Kingdom or The Royal Rescue.",
				sourceQuests = {
					4362,	-- The Fate of the Kingdom
					4003,	-- The Royal Rescue
				},
				groups = {
					i(12557),	-- Ebonsteel Spaulders
					i(12554),	-- Hands of the Exalted Herald
					i(12556),	-- High Priestess Boots
					i(12553),	-- Swiftwalker Boots
				},
			}),
			e(387, {	-- Emperor Dagran Thaurissan
				creatureID = 9019,
				groups = {
					i(11931),	-- Dreadforge Retaliatior
					i(11934),	-- Emperor's Seal
					i(11932),	-- Guiding Stave of Wisdom
					i(12556),	-- High Priestess Boots
					i(11933),	-- Imperial Jewel
					i(11684),	-- Ironfoe
					i(16724),	-- Lightforge Gauntlets
					i(11924),	-- Robes of the Royal Crown
					--(22207),	-- Sash of the Grand Hunt \\Commented out until confirmed
					i(12553),	-- Swiftwalker Boots
					i(11928),	-- Thaurissan's Royal Scepter
					i(11930),	-- The Emperor's New Cape
					--(22204),	-- Wristguards of Renown \\Commented out until confirmed
					i(12033),	-- Thaurissan Family Jewels
				},
			}),
		}),
	},
});