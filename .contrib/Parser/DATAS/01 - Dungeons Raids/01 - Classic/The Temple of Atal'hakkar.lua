-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local ATALAI_DEFENDERS = createHeader({
	readable = "Atal'ai Defenders",
	icon = 134177,
	text = {
		en = "Atal'ai Defenders",
		de = "Verteidiger der Atal'ai",
		es = "Defensores Atal'ai",
		mx = "Defensores de Atal'ai",
		fr = "Défenseurs atal’ai",
		it = "",
		ko = "아탈라이 파수병",
		pt = "Defensores Atal'ai",
		ru = "Защитники Атал'ай",
		cn = "阿塔莱防御者",
		tw = "阿塔萊防衛者",
	},
	description = {
		en = "You must kill all 6 mini bosses around the room in order to unlock the way to Jammal'an the Prophet.",
	},
});
local ESSENCE_OF_ERANIKUS_PART_TWO_OnUpdate = [[function(t)
	if not t.collected and _.IsQuestFlaggedCompleted(3373) and ]] .. WOWAPI_GetItemCount(10455) .. [[ < 1 then
		if not _.Settings.AccountWide.Quests then
			t.u = ]] .. REMOVED_FROM_GAME .. [[;
		else
			t.u = nil;
		end
		t.description = "|cffaa0000You have completed the previous quest, but deleted the item needed to complete this quest. As such, you'll be unable to complete the quest chain. Sorry!|r";
	end
end]];
local ESSENCE_OF_ERANIKUS_OWN_WORDS_OnUpdate = [[function(t)
	if not _.IsQuestFlaggedCompleted(3374) and (_.IsQuestFlaggedCompleted(3373) and ]] .. WOWAPI_GetItemCount(10455) .. [[ < 1) then
		if not _.Settings.AccountWide.Quests then
			t.u = ]] .. REMOVED_FROM_GAME .. [[;
		else
			t.u = nil;
		end
		t.description = "|cffaa0000You deleted the item needed to complete the previous quest. As such, you'll be unable to complete this one. Sorry!|r";
	end
end]];
local SUNKEN_TEMPLE_ZONE_DROPS = n(ZONE_DROPS, {
	i(11318, {	-- Atal'ai Haze
		["crs"] = {
			8384,	-- Deep Lurker
			5226,	-- Murk Worm
			5228,	-- Saturated Ooze
			-- #if SEASON_OF_DISCOVERY
			224243,	-- Deep Lurker
			224242,	-- Saturated Ooze
			-- #endif
		},
	}),
	i(6181),	-- Fetish of Hakkar
	i(16216, {	-- Formula: Enchant Cloak - Greater Resistance
		["timeline"] = { DELETED_4_0_3 },
		["crs"] = {
			5259,	-- Atal'ai Witch Doctor
			-- #if SEASON_OF_DISCOVERY
			224263,	-- Atal'ai Witch Doctor
			-- #endif
		},
	}),
	i(78346, {	-- Pattern: Green Dragonscale Breastplate (New Version) (RECIPE!)
		["timeline"] = { ADDED_4_3_0 },
	}),
	i(15733, {	-- Pattern: Green Dragonscale Leggings (Old Version) (RECIPE!)
		["timeline"] = { REMOVED_4_0_3 },
	}),
	i(78345, {	-- Pattern: Green Dragonscale Leggings (New Version) (RECIPE!)
		["timeline"] = { ADDED_4_3_0 },
	}),
	i(10627),	-- Bludgeon of the Grinning Dog
	i(10628),	-- Deathblow
	i(10626),	-- Ragehammer
	i(10625),	-- Stealthblade
	i(10624),	-- Stinging Bow
	i(10623),	-- Winter's Bite
	i(10630),	-- Soulcatcher Halo
	i(10632),	-- Slimescale Bracers
	i(10631),	-- Murkwater Gauntlets
	i(10633),	-- Silvershell Leggings
	i(10629),	-- Mistwalker Boots
	i(10634),	-- Mindseye Circle
});
root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(237, {	-- The Temple of Atal'hakkar
		-- #if BEFORE MOP
		["lore"] = "Over a thousand years ago, the powerful Gurubashi Empire was torn apart by a massive civil war. An influential group of troll priests, known as the Atal'ai, attempted to bring back an ancient blood god named Hakkar the Soulflayer. Though the priests were defeated and ultimately exiled, the great troll empire buckled in upon itself. The exiled priests fled far to the north, into the Swamp of Sorrows. There they erected a great temple to Hakkar - where they could prepare for his arrival into the physical world. The great dragon Aspect, Ysera, learned of the Atal'ai's plans and smashed the temple beneath the marshes. To this day, the temple's drowned ruins are guarded by the green dragons who prevent anyone from getting in or out. However, it is believed that some of the fanatical Atal'ai may have survived Ysera's wrath - and recommitted themselves to the dark service of Hakkar.",
		-- #endif
		-- #if BEFORE WRATH
		["zone-text-areaID"] = 1417,	-- Sunken Temple
		-- #endif
		["mapID"] = TEMPLE_OF_ATALHAKKAR,
		["coords"] = {
			-- #if AFTER CATA
			{ 76.0, 45.2, SWAMP_OF_SORROWS },
			-- #else
			{ 69.2, 54.8, SWAMP_OF_SORROWS },
			-- #endif
		},
		-- #if SEASON_OF_DISCOVERY
		["sharedLockout"] = 1,
		["isRaid"] = true,
		-- #endif
		["lvl"] = 45,
		["groups"] = {
			-- #if SEASON_OF_DISCOVERY
			-- In Season of Discovery, this version of the instance has been deprecated and removed in favor of the raid.
			d(DIFFICULTY.DUNGEON.NORMAL, bubbleDownTimelineEventSelf(REMOVED_1_15_1, {
			-- #endif
			n(QUESTS, {
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(9053, {	-- A Better Ingredient
					["sourceQuest"] = 9051,	-- Toxic Test
					["qg"] = 9619,	-- Torwa Pathfinder
					["coord"] = { 71.6, 76.0, UNGORO_CRATER },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { DRUID },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Putrid Vine
							["provider"] = { "i", 22444 },	-- Putrid Vine
						}),
						i(53560, {	-- Moonshadow Staff
							["timeline"] = { CREATED_4_0_3 },
						}),
						i(22458, {	-- Moonshadow Stave
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(53561, {	-- Thicket's Embrace
							["timeline"] = { CREATED_4_0_3 },
						}),
						i(22272, {	-- Forest's Embrace
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(53562, {	-- Grizzled Hide
							["timeline"] = { CREATED_4_0_3 },
						}),
						i(22274, {	-- Grizzled Pelt
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				})),
				q(10593, {	-- An Ancient Evil
					["sourceQuest"] = 10592,	-- Wisdom of the Banshee Queen
					["qg"] = 10181,	-- Lady Sylvanas Windrunner <Banshee Queen>
					["coord"] = { 57.8, 92, UNDERCITY },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Putrid Vine
							["provider"] = { "i", 22444 },	-- Putrid Vine
						}),
						i(30696, {	-- Scourgebane
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8257, {	-- Blood of Morphaz
					["sourceQuest"] = 8256,	-- The Ichor of Undeath
					["qg"] = 8405,	-- Ogtinc
					["coord"] = { 42.2, 42.6, AZSHARA },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PRIEST },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Blood of Morphaz
							["provider"] = { "i", 20025 },	-- Blood of Morphaz
							["cr"] = 5719,	-- Morphaz
						}),
						i(19990, {	-- Blessed Prayer Beads
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20006, {	-- Circle of Hope
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20082, {	-- Woestave
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				})),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8413, {	-- Da Voodoo
					["sourceQuest"] = 8412,	-- Spirit Totem
					["qg"] = 6176,	-- Bath'rah the Windwatcher
					["coord"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE TBC
					["races"] = HORDE_ONLY,
					-- #endif
					["classes"] = { SHAMAN },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/2 Amber Voodoo Feather
							["provider"] = { "i", 20606 },	-- Amber Voodoo Feather
						}),
						objective(2, {	-- 0/2 Blue Voodoo Feather
							["provider"] = { "i", 20607 },	-- Blue Voodoo Feather
						}),
						objective(3, {	-- 0/2 Green Voodoo Feather
							["provider"] = { "i", 20608 },	-- Green Voodoo Feather
						}),
						i(20369, {	-- Azurite Fists
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20503, {	-- Enamored Water Spirit
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20556, {	-- Wildstaff
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				})),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8253, {	-- Destroy Morphaz
					["sourceQuest"] = 8252,	-- The Siren's Coral
					["qg"] = 8379,	-- Archmage Xylem
					["coord"] = { 29.6, 40.6, AZSHARA },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { MAGE },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Arcane Shard
							["provider"] = { "i", 20085 },	-- Arcane Shard
							["cr"] = 5719,	-- Morphaz
						}),
						i(20035, {	-- Glacial Spike
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20036, {	-- Fire Ruby
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20037, {	-- Arcane Crystal Pendant
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				})),
				q(27605, {	-- Eranikus
					["sourceQuest"] = 27915,	-- The Heart of the Temple
					["qg"] = 46077,	-- Lord Itharius
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(50, 50, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Shade of Eranikus slain
							["provider"] = { "n", 5709 },	-- Shade of Eranikus
						}),
						i(65931, {	-- Essence of Eranikus' Shade
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8418, {	-- Forging the Mightstone
					["sourceQuest"] = 8416,	-- Inert Scourgestones
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["coord"] = { 42.8, 84.0, WESTERN_PLAGUELANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/2 Amber Voodoo Feather
							["provider"] = { "i", 20606 },	-- Amber Voodoo Feather
						}),
						objective(2, {	-- 0/2 Blue Voodoo Feather
							["provider"] = { "i", 20607 },	-- Blue Voodoo Feather
						}),
						objective(3, {	-- 0/2 Green Voodoo Feather
							["provider"] = { "i", 20608 },	-- Green Voodoo Feather
						}),
						i(20504, {	-- Lightforged Blade
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20505, {	-- Chivalrous Signet
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20512, {	-- Sanctified Orb
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20620, {	-- Holy Mightstone
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				})),
				q(4143, {	-- Haze of Evil
					["sourceQuest"] = 4142,	-- A Visit to Gregan
					["qg"] = 7775,	-- Gregan Brewspewer
					["coord"] = { 45.1, 25.6, FERALAS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNGORO_CRATER },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/5 Atal'ai Haze
							["provider"] = { "i", 11318 },	-- Atal'ai Haze
						}),
					},
				}),
				q(3512, {	-- In Eranikus' Own Words
					["description"] = "This quest chain seems to be an incomplete one as there is no follow-up. Still an interesting quest chain as most people do not know about it. It essentially details how Eranikus is not actually dead and likely prepares the player for the Opening of AQ quest chain that does involve Eranikus once again.",
					["sourceQuest"] = 3374,	-- The Essence of Eranikus [Part 2]
					["qg"] = 5353,	-- Itharius
					["coord"] = { 13.7, 71.7, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WINTERSPRING },
					["lvl"] = 48,
					-- #if BEFORE 4.0.3
					["OnUpdate"] = ESSENCE_OF_ERANIKUS_OWN_WORDS_OnUpdate,
					-- #endif
				}),
				q(3446, {	-- Into the Depths
					["sourceQuest"] = 3444,	-- The Stone Circle
					["providers"] = {
						{ "n",  7771 },	-- Marvon Rivetseeker
						{ "i",  10466 },	-- Atal'ai Stone Circle
						{ "o", 148836 },	-- Altar of Hakkar
					},
					["coord"] = { 52.6, 45.8, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 46,
				}),
				q(1475, {	-- Into The Temple of Atal'Hakkar
					["sourceQuest"] = 1469,	-- Rhapsody's Tale
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["coord"] = { 64.2, 20.8, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/10 Atal'ai Tablet
							["providers"] = {
								{ "i", 6288 },	-- Atal'ai Tablet
								{ "o", 37099 },	-- Atal'ai Tablet
							},
							["description"] = "Scattered around the inside and outside of the instance.",
						}),
						i(1490, {	-- Guardian Talisman
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1446, {	-- Jammal'an the Prophet
					["qg"] = 5598,	-- Atal'ai Exile
					["coord"] = { 33.6, 75.2, THE_HINTERLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Jammal'an
							["provider"] = { "i", 6212 },	-- Head of Jammal'an
						}),
						i(11124, {	-- Helm of Exile
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11123, {	-- Rainstrider Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27604, {	-- Jammal'an the Prophet
					["qg"] = 46077,	-- Lord Itharius
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(50, 50, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Head of Jammal'an
							["provider"] = { "i", 6212 },	-- Head of Jammal'an
						}),
					},
				}),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8236, {	-- The Azure Key
					["sourceQuest"] = 8235,	-- Encoded Fragments
					["qg"] = 8379,	-- Archmage Xylem
					["coord"] = { 29.6, 40.6, AZSHARA },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["classes"] = { ROGUE },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Azure Key
							["provider"] = { "i", 20022 },	-- Azure Key
							["cr"] = 5719,	-- Morphaz
						}),
						i(19982, {	-- Duskbat Drape
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(19984, {	-- Ebon Mask
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20255, {	-- Whisperwalk Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				})),
				q(27633, {	-- The Blood God Hakkar
					["qg"] = 46077,	-- Lord Itharius
					["timeline"] = { ADDED_4_0_3 },
					["lvl"] = lvlsquish(50, 50, 20),
					["groups"] = {
						objective(1, {	-- 0/1 Avatar of Hakkar slain
							["providers"] = {
								{ "n", 8443 },	-- Avatar of Hakkar
								{ "n", 8440 },	-- Shade of Hakkar
							},
							["cost"] = { { "i", 10465, 1 } },	-- Egg of Hakkar
						}),
					},
				}),
				q(3373, {	-- The Essence of Eranikus
					["description"] = "Interact with the Essence Font located in the back corner of the room after you defeat Eranikus to turn in this quest and loot the Essence of Eranikus.",
					["providers"] = {
						{ "i",  10454 },	-- Essence of Eranikus
						{ "o", 148512 },	-- Essence Font
					},
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 48,
					["groups"] = {
						i(10455, {	-- Chained Essence of Eranikus
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(3374, {	-- The Essence of Eranikus [Part 2]
					["description"] = "You get the Oathstone by talking to Itharius, at the cave in the SW part of Swamp of Sorrows. You must have the Chained Essence first.",
					["sourceQuest"] = 3373,	-- The Essence of Eranikus
					["qg"] = 5353,	-- Itharius
					["provider"] = { "i", 10589 },	-- Oathstone of Ysera's Dragonflight
					["coord"] = { 13.7, 71.7, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 10455, 1 } },	-- Chained Essence of Eranikus
					["lvl"] = 48,
					-- #if BEFORE 4.0.3
					["OnUpdate"] = ESSENCE_OF_ERANIKUS_PART_TWO_OnUpdate,
					-- #endif
				}),
				q(3528, {	-- The God Hakkar
					["sourceQuest"] = 4787,	-- The Ancient Egg
					["qg"] = 8579,	-- Yeh'kinya
					["coord"] = { 66.8, 22.4, TANARIS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 40,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Egg of Hakkar
							["provider"] = { "i", 10662 },	-- Filled Egg of Hakkar
							["cr"] = 8443,	-- Avatar of Hakkar
							["cost"] = {
								{ "i", 10465, 1 },	-- Egg of Hakkar
								{ "i", 10663, 1 },	-- Essence of Hakkar
							},
						}),
						i(10749, {	-- Avenguard Helm
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10750, {	-- Lifeforce Dirk
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10751, {	-- Gemburst Circlet
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8232, {	-- The Green Drake
					["sourceQuest"] = 8231,	-- Wavethrashing
					["qg"] = 8405,	-- Ogtinc
					["coord"] = { 42.2, 42.6, AZSHARA },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { HUNTER },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Tooth of Morphaz
							["provider"] = { "i", 20019 },	-- Tooth of Morphaz
							["cr"] = 5719,	-- Morphaz
						}),
						i(19991, {	-- Devilsaur Eye
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(19992, {	-- Devilsaur Tooth
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20083, {	-- Hunting Spear
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				})),
				q(1445, {	-- The Temple of Atal'Hakkar
					["sourceQuest"] = 1424,	-- Pool of Tears
					["qg"] = 1443,	-- Fel'zerul
					["coord"] = { 64.2, 20.8, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 38,
					["groups"] = {
						objective(1, {	-- 0/20 Fetish of Hakkar
							["provider"] = { "i", 6181 },	-- Fetish of Hakkar
						}),
						i(1490, {	-- Guardian Talisman
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8422, {	-- Trolls of a Feather
					["sourceQuest"] = 8421,	-- The Wrong Stuff
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["coord"] = { 41.6, 45.0, FELWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/2 Amber Voodoo Feather
							["provider"] = { "i", 20606 },	-- Amber Voodoo Feather
						}),
						objective(2, {	-- 0/2 Blue Voodoo Feather
							["provider"] = { "i", 20607 },	-- Blue Voodoo Feather
						}),
						objective(3, {	-- 0/2 Green Voodoo Feather
							["provider"] = { "i", 20608 },	-- Green Voodoo Feather
						}),
						i(20534, {	-- Abyss Shard
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20530, {	-- Robes of Servitude
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20536, {	-- Soul Harvester
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				})),
				applyclassicphase(PHASE_FOUR_SUNKEN_TEMPLE_CLASS_QUESTS, q(8425, {	-- Voodoo Feathers
					["sourceQuest"] = 8424,	-- War on the Shadowsworn
					["qg"] = 7572,	-- Fallen Hero of the Horde
					["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/2 Amber Voodoo Feather
							["provider"] = { "i", 20606 },	-- Amber Voodoo Feather
						}),
						objective(2, {	-- 0/2 Blue Voodoo Feather
							["provider"] = { "i", 20607 },	-- Blue Voodoo Feather
						}),
						objective(3, {	-- 0/2 Green Voodoo Feather
							["provider"] = { "i", 20608 },	-- Green Voodoo Feather
						}),
						i(20130, {	-- Diamond Flask
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20517, {	-- Razorsteel Shoulders
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(20521, {	-- Fury Visor
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				})),
				q(4146, {	-- Zapper Fuel
					["sourceQuest"] = 4147,	-- Marvon's Workshop
					["providers"] = {
						{ "n", 8496 },	-- Liv Rizzlefix <Workshop Assistant>
						{ "i", 11319 },	-- Unloaded Zapper
					},
					["coord"] = { 62.5, 38.7, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/5 Atal'ai Haze
							["provider"] = { "i", 11318 },	-- Atal'ai Haze
						}),
					},
				}),
			}),
			-- #if AFTER 10.1.5
			prof(SKINNING, {
				i(20381),	-- Dreamscale
			}),
			-- #endif
			-- #if NOT SEASON_OF_DISCOVERY
			SUNKEN_TEMPLE_ZONE_DROPS,
			n(COMMON_BOSS_DROPS, {
				i(20606, {	-- Amber Voodoo Feather
					["crs"] = {
						5713,	-- Gasher
						5716,	-- Zul'Lor
					},
				}),
				i(20607, {	-- Blue Voodoo Feather
					["crs"] = {
						5715,	-- Hukku
						5717,	-- Mijan
					},
				}),
				i(20608, {	-- Green Voodoo Feather
					["crs"] = {
						5714,	-- Loro
						5712,	-- Zolo
					},
				}),
			}),
			-- #endif
			n(5708, {	-- Spawn of Hakkar
				["timeline"] = { REMOVED_4_0_3 },
				["groups"] = {
					i(10801, {	-- Slitherscale Boots
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(10802, {	-- Wingveil Cloak
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			o(148832, {	-- Atal'ai Statue
				["description"] = "Go to the Pit of Refuse.\n\nClear all of the trash as you travel around the circular platform. You'll notice balconies that dip out and overlook the center of the pit. Essentially, once it's all cleared, each of your party members should spread out and be assigned to a balcony with an Atal'ai Shrine. The shrines must be clicked in a specific order:\n\n    South (Bottom)\n    North (Top)\n    Southwest (Bottom Left)\n    Southeast (Bottom Right)\n    Northwest (Top Left)\n    Northeast (Top Right)\n\nOnce a statue has been clicked in the correct sequence, it'll turn green. If not, the person attempting to activate will gain a curse.",
				["timeline"] = { REMOVED_4_0_3 },
				["groups"] = {
					q(3447, {	-- Secret of the Circle
						["sourceQuest"] = 3444,	-- The Stone Circle
						["providers"] = {
							{ "n",   7771 },	-- Marvon Rivetseeker
							{ "o", 148838 },	-- Idol of Hakkar
						},
						["coord"] = { 52.6, 45.8, TANARIS },
						["timeline"] = { REMOVED_4_0_3 },
						["lvl"] = 46,
						["groups"] = {
							i(10773, {	-- Hakkari Urn
								["timeline"] = { REMOVED_4_0_3 },
								["groups"] = {
									i(10781, {	-- Hakkari Breastplate
										["timeline"] = { REMOVED_4_0_3 },
									}),
									i(10782, {	-- Hakkari Shroud
										["timeline"] = { REMOVED_4_0_3 },
									}),
									i(10780, {	-- Mark of Hakkar
										["timeline"] = { REMOVED_4_0_3 },
									}),
								},
							}),
						},
					}),
					n(8580, {	-- Atal'alarion
						["description"] = "Summoned by activating the Atal'ai Statues in the proper order.",
						["timeline"] = { REMOVED_4_0_3 },
						["groups"] = {
							i(22444, {	-- Putrid Vine
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(10799, {	-- Headspike
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(10800, {	-- Darkwater Bracers
								["timeline"] = { REMOVED_4_0_3 },
							}),
							i(10798, {	-- Atal'alarion Tusk Ring
								["timeline"] = { REMOVED_4_0_3 },
							}),
						},
					}),
				},
			}),
			n(ATALAI_DEFENDERS, {
				["providers"] = {
					{ "n", 5713 },	-- Gasher
					{ "n", 5715 },	-- Hukku
					{ "n", 5714 },	-- Loro
					{ "n", 5717 },	-- Mijan
					{ "n", 5712 },	-- Zolo
					{ "n", 5716 },	-- Zul'Lor
				},
				["timeline"] = { REMOVED_4_0_3 },
				["groups"] = {
					i(10783, {	-- Atal'ai Spaulders
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(10787, {	-- Atal'ai Gloves
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(10784, {	-- Atal'ai Breastplate
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(10788, {	-- Atal'ai Girdle
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(10785, {	-- Atal'ai Leggings
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(10786, {	-- Atal'ai Boots
						["timeline"] = { REMOVED_4_0_3 },
					}),
				},
			}),
			e(457, {	-- Avatar of Hakkar
				["crs"] = {
					8443,	-- Avatar of Hakkar
					8440,	-- Shade of Hakkar
				},
				-- #if AFTER 4.0.3
				["provider"] = { "o", 208321 },	-- Shrine of the Soulflayer
				-- #endif
				["description"] =
					-- #if AFTER 4.0.3
					"There is now a skull pile that you can click on in order to summon the boss.",
					-- #else
					"Requires the use of the Egg of Hakkar or Yeh'kinya's Scroll to summon.\n\nOnce you start the fight, the room will fill with a variety of creatures. You need to kill the 4 Wind Serpents that appear, and loot the blood off of them, and use it to douse one of the fires in each corner of the room.\n\nEvery time you douse a fire, a dragonkin will walk in and start channeling a spell on Hakkar. Do not let them complete this channel.\n\nThe boss spawns after all 4 flames are doused.",
					-- #endif
				-- #if BEFORE 4.0.3
				["cost"] = {
					{ "i", 10465, 1 },	-- Egg of Hakkar
					{ "i", 10818, 1 },	-- Yeh'kinya's Scroll
				},
				-- #endif
				["groups"] = {
					i(10663),	-- Essence of Hakkar
					i(10844),	-- Spire of Hakkar
					i(10838),	-- Might of Hakkar
					i(10843),	-- Featherskin Cape
					i(12462),	-- Embrace of the Wind Serpent
					i(10845),	-- Warrior's Embrace
					i(10842),	-- Windscale Sarong
					i(10846),	-- Bloodshot Greaves
				},
			}),
			-- #if BEFORE 6.0.2
			n(5711, {	-- Ogom the Wretched
				i(10803),	-- Blade of the Wretched
				i(10805),	-- Eater of the Dead
				i(10804),	-- Fist of the Damned
			}),
			n(5710, {	-- Jammal'an the Prophet
				i(6212),	-- Head of Jammal'an
				-- #if AFTER 6.0.2
				i(12465),	-- Nightfall Drape
				-- #endif
				i(10806),	-- Vestments of the Atal'ai Prophet
				i(10808),	-- Gloves of the Atal'ai Prophet
				i(10807),	-- Kilt of the Atal'ai Prophet
			}),
			-- #else
			e(458, {	-- Jammal'an the Prophet & Ogom the Wretched
				["crs"] = { 5710, 5711 },
				["groups"] = {
					i(6212),	-- Head of Jammal'an
					i(10803),	-- Blade of the Wretched
					i(10805),	-- Eater of the Dead
					i(10804),	-- Fist of the Damned
					-- #if AFTER 6.0.2
					i(12465),	-- Nightfall Drape
					-- #endif
					i(10806),	-- Vestments of the Atal'ai Prophet
					i(10808),	-- Gloves of the Atal'ai Prophet
					i(10807),	-- Kilt of the Atal'ai Prophet
				},
			}),
			-- #endif
			e(459, {	-- Wardens of the Dream
				-- #if BEFORE WRATH
				["description"] = "These four dragons come in pairs. You can tank them away from each other if you pull the one that's behind the other one and get really lucky.",
				-- #endif
				["crs"] = {
					5721,	-- Dreamscythe
					5722,	-- Hazzas
					5719,	-- Morphaz
					5720,	-- Weaver
				},
				["groups"] = {
					i(12463),	-- Drakefang Butcher
					i(12243),	-- Smoldering Claw
					i(10797),	-- Firebreather
					i(10796),	-- Drakestone
					i(12465),	-- Nightfall Drape
					i(12464),	-- Bloodfire Talons
					i(12466),	-- Dawnspire Cord
					i(10795),	-- Drakeclaw Band
				},
			}),
			e(463, {	-- Shade of Erankikus
				["creatureID"] = 5709,
				["groups"] = {
					ach(641),	-- Sunken Temple
					ach(5050, {	-- Sunken Temple Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(10454, {	-- Essence of Eranikus
						["timeline"] = { REMOVED_4_0_3 },
					}),
					i(10828),	-- Dire Nail
					i(10847),	-- Dragon's Call
					i(10837),	-- Tooth of Eranikus
					i(10836),	-- Rod of Corrosion
					i(10835),	-- Crest of Supremacy
					i(10833),	-- Horns of Eranikus
					i(10829),	-- Dragon's Eye [Classic] / The Dragon's Eye [WRATH+]
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			})),
			applyclassicphase(SOD_PHASE_THREE, d(DIFFICULTY.SOD.PLAYER20, bubbleDownSelf({ ["timeline"] = { ADDED_1_15_2, REMOVED_2_0_1 }, }, {
				["description"] = "This instance was converted from a normal difficulty dungeon into a 20-player raid instance.",
				["lvl"] = 50,
				["groups"] = {
					n(QUESTS, {
						q(82112, {	-- A Better Ingredient
							-- ["sourceQuest"] = 9051,	-- Toxic Test
							["qg"] = 9619,	-- Torwa Pathfinder
							["coord"] = { 71.6, 76.0, UNGORO_CRATER },
							["classes"] = { DRUID },
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/1 Putrid Vine
									["provider"] = { "i", 22444 },	-- Putrid Vine
									["cr"] = 218624,	-- Atal'alarion
								}),
								i(22458, {	-- Moonshadow Stave
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(22272, {	-- Forest's Embrace
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(22274, {	-- Grizzled Pelt
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(82081, {	-- A Broken Ritual (A)
							["providers"] = {
								{ "i", 221346 },	-- Scapula of the Fallen Avatar (A)
								{ "n",  14875 },	-- Molthor <Hand of Rastakhan>
							},
							["coord"] = { 15.0, 15.2, STRANGLETHORN_VALE },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 50,
							["groups"] = {
								i(220626),	-- Drakeclaw Band of the Berserker
								i(220629),	-- Drakeclaw Band of the Blood Prophet
								i(220628),	-- Drakeclaw Band of the Harbinger
								i(220630),	-- Drakeclaw Band of the Juggernaut
								i(220627),	-- Drakeclaw Band of the Stalker
							},
						}),
						q(82083, {	-- A Broken Ritual (H)
							["providers"] = {
								{ "i", 221363 },	-- Scapula of the Fallen Avatar (H)
								{ "n",  14875 },	-- Molthor <Hand of Rastakhan>
							},
							["coord"] = { 15.0, 15.2, STRANGLETHORN_VALE },
							["races"] = HORDE_ONLY,
							["lvl"] = 50,
							["groups"] = {
								i(220626),	-- Drakeclaw Band of the Berserker
								i(220629),	-- Drakeclaw Band of the Blood Prophet
								i(220628),	-- Drakeclaw Band of the Harbinger
								i(220630),	-- Drakeclaw Band of the Juggernaut
								i(220627),	-- Drakeclaw Band of the Stalker
							},
						}),
						q(82021, {	-- A Fortuitous Turn of Events
							["sourceQuest"] = 82020,	-- Return to Moonglade
							["qg"] = 222188,	-- Shadowy Figure
							["coord"] = { 52.0, 40.6, MOONGLADE },
							["lvl"] = 50,
						}),
						q(82017, {	-- An Amalagamation of Nightmares
							["sourceQuest"] = 82015,	-- Emotional Damage HQT
							["qg"] = 221477,	-- Field Captain Hannalah
							["coord"] = { 89.6, 40.6, ASHENVALE },
							["maps"] = { MOONGLADE },
							["lvl"] = 40,
							["groups"] = {
								objective(1, {	-- Seek out Loganaar in Moonglade
									["provider"] = { "n", 12042 },	-- Loganaar <Druid Trainer>
									["coord"] = { 52.4, 40.4, MOONGLADE },
								}),
							},
						}),
						n(createHeader({	-- Aura of Paralyzing Dread
							readable = "SOD - Nightmare Incursions - Aura of Paralyzing Dread",
							icon = 136147,
							text = {
								en = "Aura of Paralyzing Dread",
							},
							description = {
								en = "You need to be debuffed from the Nightmare Amalgam to proc this quest. (do not engage it, just run away)",
							},
						}), {
							["qg"] = 222198,	-- Nightmare Amalgamation
							["questID"] = 82014,	-- Aura of Paralyzing Dread HQT
							["coord"] = { 88.6, 68.2, ASHENVALE },
							["lvl"] = 40,
						}),
						q(82111, {	-- Blood of Morphaz
							-- ["sourceQuest"] = 8256,	-- The Ichor of Undeath
							["qg"] = 8405,	-- Ogtinc
							["coord"] = { 42.2, 42.6, AZSHARA },
							["classes"] = { PRIEST },
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/1 Blood of Morphaz
									["provider"] = { "i", 20025 },	-- Blood of Morphaz
									["cr"] = 221942,	-- Morphaz
								}),
								i(19990, {	-- Blessed Prayer Beads
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20006, {	-- Circle of Hope
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20082, {	-- Woestave
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(82113, {	-- Da Voodoo
							-- ["sourceQuest"] = 8412,	-- Spirit Totem
							["qg"] = 6176,	-- Bath'rah the Windwatcher
							["coord"] = { 80.4, 66.8, ALTERAC_MOUNTAINS },
							-- #if BEFORE TBC
							["races"] = HORDE_ONLY,
							-- #endif
							["classes"] = { SHAMAN },
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/2 Amber Voodoo Feather
									["provider"] = { "i", 20606 },	-- Amber Voodoo Feather
								}),
								objective(2, {	-- 0/2 Blue Voodoo Feather
									["provider"] = { "i", 20607 },	-- Blue Voodoo Feather
								}),
								objective(3, {	-- 0/2 Green Voodoo Feather
									["provider"] = { "i", 20608 },	-- Green Voodoo Feather
								}),
								i(20369, {	-- Azurite Fists
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20503, {	-- Enamored Water Spirit
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20556, {	-- Wildstaff
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(82114, {	-- Destroy Morphaz
							-- ["sourceQuest"] = 8252,	-- The Siren's Coral
							["qg"] = 8379,	-- Archmage Xylem
							["coord"] = { 29.6, 40.6, AZSHARA },
							["classes"] = { MAGE },
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/1 Arcane Shard
									["provider"] = { "i", 20085 },	-- Arcane Shard
									["cr"] = 221942,	-- Morphaz
								}),
								i(20035, {	-- Glacial Spike
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20036, {	-- Fire Ruby
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20037, {	-- Arcane Crystal Pendant
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						n(createHeader({	-- Emotional Damage
							readable = "SOD - Nightmare Incursions - Emotional Damage",
							icon = 237552,
							text = {
								en = "Emotional Damage",
							},
						}), {
							["qg"] = 221477,	-- Field Captain Hannalah
							["questID"] = 82015,	-- Emotional Damage HQT
							["sourceQuest"] = 82014,	-- Aura of Paralyzing Dread HQT
							["coord"] = { 89.6, 40.6, ASHENVALE },
							["lvl"] = 40,
						}),
						q(82106, {	-- Forging the Mightstone
							-- ["sourceQuest"] = 8416,	-- Inert Scourgestones
							["qg"] = 10838,	-- Commander Ashlam Valorfist
							["coord"] = { 42.8, 84.0, WESTERN_PLAGUELANDS },
							["classes"] = { PALADIN },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/2 Amber Voodoo Feather
									["provider"] = { "i", 20606 },	-- Amber Voodoo Feather
								}),
								objective(2, {	-- 0/2 Blue Voodoo Feather
									["provider"] = { "i", 20607 },	-- Blue Voodoo Feather
								}),
								objective(3, {	-- 0/2 Green Voodoo Feather
									["provider"] = { "i", 20608 },	-- Green Voodoo Feather
								}),
								i(20504, {	-- Lightforged Blade
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20505, {	-- Chivalrous Signet
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20512, {	-- Sanctified Orb
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20620, {	-- Holy Mightstone
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(82019, {	-- Going Under
							["sourceQuest"] = 82018,	-- Itharius
							["qg"] = 5353,	-- Itharius
							["coord"] = { 13.6, 71.6, SWAMP_OF_SORROWS },
							["lvl"] = 40,
						}),
						q(82099, {	-- Haze of Evil
							["sourceQuest"] = 4142,	-- A Visit to Gregan
							["qg"] = 7775,	-- Gregan Brewspewer
							["coord"] = { 45.1, 25.6, FERALAS },
							["maps"] = { UNGORO_CRATER },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/5 Atal'ai Haze
									["provider"] = { "i", 11318 },	-- Atal'ai Haze
								}),
							},
						}),
						q(82096, {	-- Into the Depths
							["providers"] = {
								{ "n",  7771 },	-- Marvon Rivetseeker
								{ "i",  10466 },	-- Atal'ai Stone Circle
								{ "o", 148836 },	-- Altar of Hakkar
							},
							["coord"] = { 52.6, 45.8, TANARIS },
							["lvl"] = 50,
						}),
						q(82098, {	-- Into The Temple of Atal'Hakkar
							["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
							["coord"] = { 64.2, 20.8, STORMWIND_CITY },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/10 Atal'ai Tablet
									["providers"] = {
										{ "i", 6288 },	-- Atal'ai Tablet
										{ "o", 37099 },	-- Atal'ai Tablet
									},
									["description"] = "Scattered around the inside and outside of the instance.",
								}),
								i(1490, {	-- Guardian Talisman
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(82018, {	-- Itharius
							["sourceQuest"] = 82017,	-- An Amalagamation of Nightmares
							["qg"] = 12042,	-- Loganaar <Druid Trainer>
							["coord"] = { 52.4, 40.4, MOONGLADE },
							["maps"] = { SWAMP_OF_SORROWS },
							["lvl"] = 40,
							["groups"] = {
								objective(1, {	-- Seek out Itharius in the Swamp of Sorrows
									["provider"] = { "n", 5353 },	-- Itharius
									["coord"] = { 13.6, 71.6, SWAMP_OF_SORROWS },
								}),
							},
						}),
						q(82104, {	-- Jammal'an the Prophet
							["qg"] = 5598,	-- Atal'ai Exile
							["coord"] = { 33.6, 75.2, THE_HINTERLANDS },
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/1 Head of Jammal'an
									["provider"] = { "i", 6212 },	-- Head of Jammal'an
								}),
								i(221782),	-- Helm of Exile
								i(223324),	-- Rainstrider Leggings
							},
						}),
						q(82020, {	-- Return to Moonglade
							["sourceQuest"] = 82019,	-- Going Under
							["qg"] = 5353,	-- Itharius
							["coord"] = { 13.6, 71.6, SWAMP_OF_SORROWS },
							["maps"] = { MOONGLADE },
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- Seek out Loganaar in Moonglade
									["provider"] = { "n", 12042 },	-- Loganaar <Druid Trainer>
									["coord"] = { 52.4, 40.4, MOONGLADE },
								}),
							},
						}),
						q(82097, {	-- Secret of the Circle
							["providers"] = {
								{ "n",   7771 },	-- Marvon Rivetseeker
								{ "o", 148838 },	-- Idol of Hakkar
							},
							["coord"] = { 52.6, 45.8, TANARIS },
							["lvl"] = 50,
							["groups"] = {
								i(10773, {	-- Hakkari Urn
									i(223325),	-- Hakkari Breastplate
									i(223326),	-- Hakkari Shroud
									i(223327),	-- Mark of Hakkar
								}),
							},
						}),
						q(82110, {	-- The Azure Key
							-- ["sourceQuest"] = 8235,	-- Encoded Fragments
							["qg"] = 8379,	-- Archmage Xylem
							["coord"] = { 29.6, 40.6, AZSHARA },
							["maps"] = { HILLSBRAD_FOOTHILLS },
							["classes"] = { ROGUE },
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/1 Azure Key
									["provider"] = { "i", 20022 },	-- Azure Key
									["cr"] = 221942,	-- Morphaz
								}),
								i(19982, {	-- Duskbat Drape
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(19984, {	-- Ebon Mask
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20255, {	-- Whisperwalk Boots
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(82022, {	-- The Bad News...
							["sourceQuest"] = 82021,	-- A Fortuitous Turn of Events
							["qg"] = 222188,	-- Shadowy Figure
							["coord"] = { 52.0, 40.6, MOONGLADE },
							["maps"] = { STRANGLETHORN_VALE },
							["lvl"] = 50,
							["groups"] = {
								q(82023, {	-- The Lost Vambraces
									["qg"] = 222444,	-- Injured Gnome <Knight of Some Renown>
									["coord"] = { 26.8, 77.2, STRANGLETHORN_VALE },
									["repeatable"] = true,
									["groups"] = {
										objective(1, {	-- 0/1 Decharged Void-Powered Vambraces
											["questID"] = 82022,	-- The Bad News...
											["providers"] = {
												{ "i", 220964 },	-- Decharged Void-Powered Vambraces
												{ "o", 441848 },	-- Small Burrow
											},
											["coord"] = { 40.8, 85.6, STRANGLETHORN_VALE },
											["cr"] = 222451,	-- Itty Bitty Murloc
										}),
									},
								}),
								i(220689),	-- Void-Powered Vambraces
							},
						}),
						q(82095, {	-- The God Hakkar
							["sourceQuest"] = 4787,	-- The Ancient Egg
							["qg"] = 8579,	-- Yeh'kinya
							["coord"] = { 66.8, 22.4, TANARIS },
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/1 Filled Egg of Hakkar
									["provider"] = { "i", 10662 },	-- Filled Egg of Hakkar
									["cr"] = 8443,	-- Avatar of Hakkar
									["cost"] = {
										{ "i", 10465, 1 },	-- Egg of Hakkar
										{ "i", 10663, 1 },	-- Essence of Hakkar
									},
								}),
								i(221781),	-- Avenguard Helm
								i(223329),	-- Lifeforce Dirk
								i(223328),	-- Gemburst Circlet
							},
						}),
						q(82108, {	-- The Green Drake
							-- ["sourceQuest"] = 8231,	-- Wavethrashing
							["qg"] = 8405,	-- Ogtinc
							["coord"] = { 42.2, 42.6, AZSHARA },
							["classes"] = { HUNTER },
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/1 Tooth of Morphaz
									["provider"] = { "i", 20019 },	-- Tooth of Morphaz
									["cr"] = 221942,	-- Morphaz
								}),
								i(19991, {	-- Devilsaur Eye
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(19992, {	-- Devilsaur Tooth
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20083, {	-- Hunting Spear
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(82102, {	-- The Essence of Eranikus
							["description"] = "Interact with the Essence Font located in the back corner of the room after you defeat Eranikus to turn in this quest and loot the Essence of Eranikus.",
							["providers"] = {
								{ "i", 221475 },	-- Essence of Eranikus
								{ "o", 148512 },	-- Essence Font
							},
							["lvl"] = 50,
							["groups"] = {
								i(221474),	-- Chained Essence of Eranikus
							},
						}),
						q(82100, {	-- The Temple of Atal'Hakkar
							["qg"] = 1443,	-- Fel'zerul
							["coord"] = { 64.2, 20.8, SWAMP_OF_SORROWS },
							["races"] = HORDE_ONLY,
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/20 Fetish of Hakkar
									["provider"] = { "i", 6181 },	-- Fetish of Hakkar
								}),
								i(1490, {	-- Guardian Talisman
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(82115, {	-- Trolls of a Feather
							-- ["sourceQuest"] = 8421,	-- The Wrong Stuff
							["qg"] = 14470,	-- Impsy <Niby's Minion>
							["coord"] = { 41.6, 45.0, FELWOOD },
							["classes"] = { WARLOCK },
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/2 Amber Voodoo Feather
									["provider"] = { "i", 20606 },	-- Amber Voodoo Feather
								}),
								objective(2, {	-- 0/2 Blue Voodoo Feather
									["provider"] = { "i", 20607 },	-- Blue Voodoo Feather
								}),
								objective(3, {	-- 0/2 Green Voodoo Feather
									["provider"] = { "i", 20608 },	-- Green Voodoo Feather
								}),
								i(20534, {	-- Abyss Shard
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20530, {	-- Robes of Servitude
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20536, {	-- Soul Harvester
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(82107, {	-- Voodoo Feathers
							-- ["sourceQuest"] = 8424,	-- War on the Shadowsworn
							["qg"] = 7572,	-- Fallen Hero of the Horde
							["coord"] = { 34.3, 66.2, SWAMP_OF_SORROWS },
							["classes"] = { WARRIOR },
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/2 Amber Voodoo Feather
									["provider"] = { "i", 20606 },	-- Amber Voodoo Feather
								}),
								objective(2, {	-- 0/2 Blue Voodoo Feather
									["provider"] = { "i", 20607 },	-- Blue Voodoo Feather
								}),
								objective(3, {	-- 0/2 Green Voodoo Feather
									["provider"] = { "i", 20608 },	-- Green Voodoo Feather
								}),
								i(20130, {	-- Diamond Flask
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20517, {	-- Razorsteel Shoulders
									["timeline"] = { REMOVED_4_0_3 },
								}),
								i(20521, {	-- Fury Visor
									["timeline"] = { REMOVED_4_0_3 },
								}),
							},
						}),
						q(81986, {	-- Waking the Nightmare
							["sourceQuest"] = 82022,	-- The Bad News...
							["qg"] = 222188,	-- Shadowy Figure
							["coord"] = { 52.0, 40.6, MOONGLADE },
							["maps"] = { ASHENVALE },
							["lvl"] = 50,
							["groups"] = {
								objective(1, {	-- 0/1 Nightmare Amalgamation slain
									["provider"] = { "n", 222198 },	-- Nightmare Amalgamation
									["coord"] = { 88.6, 68.2, ASHENVALE },
								}),
								objective(2, {	-- 0/1 Mantle of Nightmares
									["provider"] = { "i", 220570 },	-- Mantle of Nightmares
								}),
								i(220688),	-- Inert Mantle of Nightmares
							},
						}),
					}),
					SUNKEN_TEMPLE_ZONE_DROPS,
					n(COMMON_BOSS_DROPS, {
						i(20606, {	-- Amber Voodoo Feather
							["crs"] = {
								221637,	-- Gasher
								221640,	-- Zul'Lor
							},
						}),
						i(20607, {	-- Blue Voodoo Feather
							["crs"] = {
								218922,	-- Hukku
								218868,	-- Mijan
							},
						}),
						i(20608, {	-- Green Voodoo Feather
							["crs"] = {
								221638,	-- Loro
								221639,	-- Zolo
							},
						}),
						i(220636, {	-- Atal'ai Blood Icon
							["crs"] = {
								218624,	-- Atal'alarion <Guardian of the Idol>
								218819,	-- Festering Rotslime
								221637,	-- Gasher
								220833,	-- Dreamscythe
								218721,	-- Jammal'an the Prophet
								221943,	-- Hazzas
								218571,	-- Shade of Eranikus
								221394,	-- Avatar of Hakkar
							},
						}),
						i(220637, {	-- Atal'ai Ritual Token
							["crs"] = {
								218624,	-- Atal'alarion <Guardian of the Idol>
								218819,	-- Festering Rotslime
								221637,	-- Gasher
								220833,	-- Dreamscythe
								218721,	-- Jammal'an the Prophet
								221943,	-- Hazzas
								218571,	-- Shade of Eranikus
								221394,	-- Avatar of Hakkar
							},
						}),
						i(221312, {	-- Flask of Atal'ai Mojo
							["crs"] = {
								218624,	-- Atal'alarion <Guardian of the Idol>
								218819,	-- Festering Rotslime
								218721,	-- Jammal'an the Prophet
								218718,	-- Ogom the Wretched
								221394,	-- Avatar of Hakkar
								224260,	-- Atal'ai Corpse Eater
								224259,	-- Atal'ai Deathwalker
								224258,	-- Atal'ai High Priest
								5269,	-- Atal'ai Priest
								224250,	-- Atal'ai Warrior
								224263,	-- Atal'ai Witch Doctor
								5243,	-- Cursed Atal'ai
								5261,	-- Enthralled Atal'ai
								221924,	-- Kazkaz the Unholy
								5263,	-- Mummified Atal'ai
								224262,	-- Unliving Atal'ai
							},
						}),
						i(221021, {	-- Nightmare Seed
							["crs"] = {
								218819,	-- Festering Rotslime
								221637,	-- Gasher
								220833,	-- Dreamscythe
								221943,	-- Hazzas
								218571,	-- Shade of Eranikus
								221394,	-- Avatar of Hakkar
								224255,	-- Nightmare Scalebane
								224253,	-- Nightmare Wanderer
								224256,	-- Nightmare Whelp
								224254,	-- Nightmare Wyrmkin
							},
						}),
					}),
					n(222290, {	-- Unfortunate Adventurer
						["description"] = "RIP Guzu <Demon>.\n\nGo watch 'The Fall of Guzu' by Hurricane on YouTube for context!",
					}),
					n(218624, {	-- Atal'alarion <Guardian of the Idol>
						["description"] = "Atal'alarion has three main abilities.\n\nThe primary danger on this boss is the Pillars of Might stacking 5% damage buff. To remove this, use his Demolishing Smash to get knocked back into the pillars from Pillars of Might. The player bodies will then destroy the pillars and reduce the stacking damage buff. Spreading out around the boss helps to minimize the total movement required to destroy every pillar.",
						["groups"] = {
							i(220567),	-- Bloodied Headspike
							i(220580),	-- Madness of the Avatar
							i(220568),	-- Temple Explorer's Gun Axe
							i(220602),	-- Sewer Turtle Half-Shell
							i(220511),	-- Greathelm of the Nightmare
							i(220615),	-- Panther Fur Cloak
							i(220527),	-- Atal'ai Berserker's Mantle
							i(220529),	-- Spaulders of Fanaticism
							i(220537),	-- Dreamer's Darkwater Bracers
							i(220539),	-- Warbands of Sacrifice
							i(220554),	-- Atal'alarion's Tusk Band
							i(220561),	-- Tenacious Troll Kickers
							i(220635),	-- Atal'alarion's Enchanted Boulder
						},
					}),
					n(218819, {	-- Festering Rotslime
						["description"] = "Kite the boss through the corridor.\n\nPlayers should focus on continuously moving between Gunk casts to avoid the poison pools. Gunk must be cleansed ASAP.\n\nThe boss will gain speed from Slime Time throughout the fight, to stop this: kill the Atal'ai Slab, Atal'ai Mask, Atal'ai Candle, and Atal'ai Drum objects which are located along the corridor. Ideally, have the melee focus on this to avoid getting Devoured themselves.",
						["groups"] = {
							i(220569),	-- Blistering Ragehammer
							i(220571),	-- Stinging Longbow
							i(220518),	-- Ba'ham's Dusty Hat
							i(220538),	-- Cursed Slimescale Bracers
							i(220540),	-- Corruption Laden Handguards
							i(220541),	-- Disease-Ridden Plate Fists
							i(220545),	-- Foul Smelling Fighter's Gloves
							i(220546),	-- Hands of the Tormented
							i(220542),	-- Polluted Murkwater Gauntlets
							i(220550),	-- Temple Looter's Waistband
							i(220552),	-- Waistguard of Pain
							i(220565),	-- Ethereal Mistwalker Boots
							i(221484),	-- Witch Doctor's Hex Stick
							i(221281),	-- Ace of Plagues
						},
					}),
					n(ATALAI_DEFENDERS, {
						["description"] = "The Atal'ai Defenders are the third boss encounter in The Temple of Atal'Hakkar.\n\nGasher & Mijan's abilities are the most threatening.\n\nOnce killed, each boss will respawn as an undead. Do not attack them, instead use Shackle Undead and Freezing Trap to CC them.",
						["groups"] = {
							n(221637, {	-- Gasher
								["description"] = "|cffff0000Fervor|r can cause him to deal a lot of damage, focus him down fast; if needed, the tank can run away from Gasher while still in range of casters to minimize the damage taken if Gasher gets high stacks.\n\nSpinning Axes - Spawns spinning axes around him, this deals minor cleave damage.",
								["groups"] = {
									i(220674),	-- Debased Stealthblade
									i(220591),	-- Mijan's Restorative Rod
									i(220572),	-- Rinzo's Rapid Repeater
									i(220516),	-- Gasher's Forgotten Visor
									i(220522),	-- Soulcatcher Crown
									i(220611),	-- Hukku's Hex Cape
									i(220528),	-- Atal'ai Huntsman's Shoulders
									i(220532),	-- Reinforced Atal'ai Spaulders
									i(220533),	-- Reforged Atal'ai Breastplate
									i(220548),	-- Atal'ai Hexxer's Gloves
									i(220555),	-- Atal'ai Serpentscale Girdle
									i(220558),	-- Atal'ai Assassin's Leggings
									i(220560),	-- Silvershell Legplates
									i(220638),	-- Unorthodox Hex Stick
								},
							}),
							n(218922, {	-- Hukku
								["description"] = "Curse of Blood - Dispellable curse which increases a player's damage taken. This can be interrupted.",
							}),
							n(221638, {	-- Loro
								["description"] = "Demoralizing Shout - Interruptable AoE debuff which reduces player's attack power by 40.",
							}),
							n(218868, {	-- Mijan
								["description"] = "|cffff0000Mijan's Atal'ai Serpent Totems|r should be interrupted and killed asap in order to minimize damage taken. These can deal a fair bit of damage if they happen to focus the same player.\n\nRenew - Interruptable self heal ability, make sure to have someone focused on kicking this to increase kill time.\n\nThorns - Dispellable self thorns buff, should be removed to minimize melee players' damage taken.",
							}),
							n(221639, {	-- Zolo
								["description"] = "Chain lightning increases damage which each subsequent hit, this can be interrupted.",
							}),
							n(221640, {	-- Zul'Lor
								["description"] = "Frailty - Reduces all attributes of nearby enemies by 10 for 1 min. Can be dispelled.",
							}),
						},
					}),
					n(220833, {	-- Dreamscythe
						["provider"] = { "n", 220864 },	-- Weaver
						["description"] = "The bosses cast Acid Breath, so you should two tank this fight. DPS Dreamscythe to 80% and Weaver to 60%. Avoid facing either boss into the raid.\n\nFor positioning, you really want to avoid getting knocked back into both the outside poison pool which surrounds the boss arena, as well as the middle pit which will cause you to die from fall damage by either of the wing buffet abilities. To avoid the pit you should either stand next to it so that you get knocked back parallel to it; or stand right against it to get knocked over to the opposite side of it. Doing either, depending on what's easier for you at that moment, will gain you uptime on casting.\n\nIdeally, have all of the damage dealers focusing a single boss as the bosses share health pools. This way you'll be focusing a fully debuffed target.",
						["groups"] = {
							i(220584),	-- Flamebreath Blade
							i(220587),	-- Sacrificial Dream Dagger
							i(220594),	-- Scythe of the Dream
							i(220566),	-- Smolder Claw
							i(220581),	-- Snake Clobberer
							i(220521),	-- Hakkari Ritualist's Headdress
							i(220519),	-- Voodoo Feathered Headdress
							i(220609),	-- Drape of Nightfall
							i(220536),	-- Atal'ai Medicine Man's Wrists
							i(220544),	-- Bloodflare Talons
							i(220549),	-- Dawnspire Strap
							i(220551),	-- Devotee's Sash of the Emerald Dream
							i(221298),	-- Ace of Nightmares
						},
					}),
					n(218721, {	-- Jammal'an the Prophet
						["provider"] = { "n", 218718 },	-- Ogom the Wretched
						["description"] = "This fight has two different versions which rotate every week.\n\nOne where Ogom the Wretched dies first, making Jammal'an the Prophet the main boss.\n Mass Penance is a spoopy mechanic.\n\nThe other where Jammal'an the Prophet dies first, making Ogom the Wretched the main boss.\n Avoid Consecration.",
						["groups"] = {
							i(220576),	-- Axe of the Atal'ai Executioner
							i(220575),	-- Eater of the Damned
							i(220578),	-- Fist of the Forsaken
							i(220586),	-- Hubris the Bandit Brander
							i(220583),	-- Vile Blade of the Wretched
							i(220601),	-- Hakkari Witch Doctor's Guard
							i(220515),	-- Enchanted Emerald Helmet
							i(220624),	-- Bloodstained Charm of Valor
							i(220623),	-- Jin'do's Lost Locket
							i(220625),	-- Resilience of the Exiled
							i(220535),	-- Garments of the Atal'ai Prophet
							i(220547),	-- Gloves of the Fallen Atal'ai Prophet
							i(220556),	-- Kilt of the Fallen Atal'ai Prophet
							i(220605),	-- Libram of Sacrilege
						},
					}),
					n(221943, {	-- Hazzas
						["provider"] = { "n", 221942 },	-- Morphaz
						["description"] = "Keep the boss stationary to avoid the frontal Corrupted Breath and Backfire from the tail. Tanks swap every 2-3 stacks. Big heals for Dreamer's Lament ability!\n\nAt 80%, Hazzas will cast Animate Flame which will summon elementals. Stack & nuke them. They also drop fire on the floor. You can use the fire to avoid being sent downstairs to Morphaz during Lucid Dreaming.\n\nAt 30%, Hazzas will cast Lucid Dreaming again and then begin casting Eternal Slumber. You must bear the damage check and the cast will be canceled.\n\nDodge Falling Rocks.",
						["groups"] = {
							i(220596),	-- Ancient Divining Rod
							i(220965),	-- Scalebane Greataxe
							i(220589),	-- Serpent's Striker
							i(220599),	-- Drakestone of the Blood Prophet
							i(220597),	-- Drakestone of the Dream Harbinger
							i(220598),	-- Drakestone of the Nightmare Harbinger
							i(220512),	-- Immaculate Goldsteel Helmet
							i(220514),	-- Visor of Verdant Feathers
							i(220543),	-- Emerald Scalemail Gloves
							i(220553),	-- Belt of the Forsaken Worshipper
							i(220559),	-- Revitalized Drake Scale Leggings
							i(220563),	-- Boots of the Atal'ai Blood Shaman
							i(220606),	-- Idol of the Dream
							i(220607),	-- Totem of Tormented Ancestry
							i(221298),	-- Ace of Nightmares
						},
					}),
					n(218571, {	-- Shade of Eranikus
						["description"] = "The boss casts Corrosive Breath and has a tail sweep. Tanks should swap after each breath.\n\nDispell Lethargic Poison. Interupt Bellowing Roar!\n\nWhen the boss casts Deep Slumber, you'll want everyone to stack close to the boss so that when the boss casts Waking Nightmare, everyone can jump into the pool and to get afflicted and then move out asap to avoid getting CC'd again.\n\nAt 70%, the boss will summon two Lumbering Dreamwalkers. Kill them and interupt their Deep Slumber casts. Kill any whelplings that spawn.\n\nAt 40%, he'll repeat this and then summon two Nightmare Scalebanes. These cast Acid Rain that can be interupted, so the raid should spread out to avoid this.",
						["groups"] = {
							i(221475),	-- Essence of Eranikus
							i(220585),	-- Degraded Dire Nail
							i(220582),	-- Dragon's Cry
							i(220573),	-- Dreadstalker's Hunting Bow
							i(220595),	-- Nightmare Focus Staff
							i(220574),	-- Sharpened Tooth of Eranikus
							i(220579),	-- Witch Doctor's Stick of Mojo
							i(220600),	-- Crest of Preeminence
							i(220604),	-- Nightmare Trophy
							i(220603),	-- Rod of Irreversible Corrosion
							i(220523),	-- Visage of the Exiled
							i(220622),	-- Perfectly Preserved Dragon's Eye
							i(220564),	-- Restored Slitherscale Boots
							i(221298),	-- Ace of Nightmares
						},
					}),
					n(221394, {	-- Avatar of Hakkar
						["description"] = "Have all the ranged stacked and then kill the four Atal'ai Ritualists.\n\nOnce Hakkari Bloodkeeper casts Bubbling Blood, move out of it. He'll ocasionally cast Spirit Chains, move out of the group before getting dispelled. (it will spread otherwise) Frightsome Howl should be dispelled immediately.\n\nAfter 33 seconds the Bloodkeeper will resurrect Hakkar and pass on some of the damage dealt to him during that time.\n\nDecurse Curse of Tongues, and dispel the Insanity mind control that'll happen once in a while.\n\nThe boss will occasionally cast Corrupted Blood, afflicted players should move out of the raid as fast as they can, and move to the front of the boss (away from the tank) to then get hit by Drain Blood. This will dispel the debuff. Move back afterwards and then kill the boss.",
						["groups"] = {
							i(221346),	-- Scapula of the Fallen Avatar (A)
							i(221363),	-- Scapula of the Fallen Avatar (H)
							i(220620),	-- Wind Serpent Skull (PET!)
							i(220686),	-- Chieftain's Bane
							i(220588),	-- Cobra Fang Claw
							i(220577),	-- Might of the Blood Loa
							i(220590),	-- Spire of Hakkari Worship
							i(220608),	-- Featherskin Drape
							i(220534),	-- Eternal Embrace of the Wind Serpent
							i(220530),	-- Will of the Atal'ai Warrior
							i(220557),	-- Cursed Windscale Sarong
							i(220562),	-- Bloodshot Battle Greaves
							i(220633),	-- Atal'ai Blood Ritual Badge
							i(220634),	-- Atal'ai Blood Ritual Charm
							i(220632),	-- Atal'ai Blood Ritual Medallion
						},
					}),
				},
			}))),
			-- #endif
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(237, {
		q(35582),	-- Sunken Temple Reward Quest - Normal completion
	}),
})));
