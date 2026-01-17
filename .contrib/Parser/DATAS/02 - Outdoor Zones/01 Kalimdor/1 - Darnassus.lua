---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, {
	m(DARNASSUS, {
		["lore"] = "The atmosphere inside the city is quiet and tranquil. It does not have the feeling of confinement that one would feel in Stormwind or Ironforge, where the buildings are grouped close together. Darnassus is open to the sky, and the graceful bridges spanning the lake around which it is built set the buildings wide apart. The elegant bridges, beautiful groves, and leaf-covered pathways that dot the city's landscape are testaments to the night elves' reverence for nature. One of Darnassus's most notable structures is the stunning Temple of the Moon, the center of worship for High Priestess Tyrande Whisperwind and her Sisters of Elune. The prime reason why the city's population is so low is that it is isolated: Teldrassil is a small island away from the main mass of Azeroth, and the only way to gain access from another continent is to fly or sail to Rut'theran Village, a small settlement at the base of Teldrassil, and from there step into the glowing portal to the city proper. Darnassus is home to night elves of all vocations and remains a symbol of the night elves' rich culture and glorious history.",
		["icon"] = 255141,
		["isRaid"] = true,
		["groups"] = {
			-- #if AFTER 4.2.0
			n(ACHIEVEMENTS, {
				applyclassicphase(CATA_PHASE_ONE, ach(5848, {	-- Fish or Cut Bait: Darnassus
					["timeline"] = { ADDED_4_2_0 },
					["races"] = ALLIANCE_ONLY,
					["requireSkill"] = FISHING,
					["groups"] = {
						crit(17754, {	-- Happy as a Clam Digger
							["_quests"] = { 29321 },
						}),
						crit(17755, {	-- Stocking Up
							["_quests"] = { 29323 },
						}),
						crit(17756, {	-- The Sister's Pendant
							["_quests"] = { 29324 },
						}),
						crit(17757, {	-- A Slippery Snack
							["_quests"] = { 29325 },
						}),
						crit(17758, {	-- An Old Favorite
							["_quests"] = { 29359 },
						}),
					},
				})),
				applyclassicphase(CATA_PHASE_ONE, ach(5842, {	-- Let's Do Lunch: Darnassus
					["timeline"] = { ADDED_4_2_0 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						crit(17728, {	-- The Secret to Perfect Kimchi
							["_quests"] = { 29313 },
						}),
						crit(17729, {	-- Remembering the Ancestors
							["_quests"] = { 29314 },
						}),
						crit(17730, {	-- Back to Basics
							["_quests"] = { 29316 },
						}),
						crit(17731, {	-- Ribs for the Sentinels
							["_quests"] = { 29318 },
						}),
						crit(17732, {	-- Spice Bread Aplenty
							["_quests"] = { 29357 },
						}),
					},
				})),
			}),
			-- #endif
			battlepets({
				["sym"] = {{"select","speciesID",
					479,	-- Elfin Rabbit (PET!)
					478,	-- Forest Moth (PET!)
					452,	-- Red-Tailed Chipmunk (PET!)
					419,	-- Small Frog (PET!)
				}},
			}),
			n(FACTIONS, {
				faction(FACTION_DARNASSUS, {	-- Darnassus
					-- #if AFTER CATA
					["provider"] = { "i", 45579 },	-- Darnassus Tabard
					-- #else
					["icon"] = 236449,
					-- #endif
					["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
					["races"] = ALLIANCE_ONLY,
				}),
				applyclassicphase(CATA_PHASE_ONE, faction(FACTION_GILNEAS, {	-- Gilneas
					["provider"] = { "i", 64882 },	-- Gilneas Tabard
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
				})),
			}),
			-- #if AFTER 4.0.1.12984
			n(FLIGHT_PATHS, {
				fp(457, {	-- Darnassus, Teldrassil (A)
					["cr"] = 40552,	-- Leora <Hippogryph Master>
					["coord"] = { 36.61, 47.82, DARNASSUS },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			-- #endif
			-- #if NOT ANYCLASSIC
			-- CRIEVE NOTE: I'm going to solve this a different way eventually.
			o(207321, {	-- Hero's Call Board
				["coords"] = {
					{ 29.6, 48.4, DARNASSUS },
					{ 39.6, 11.6, DARNASSUS },
					{ 45.0, 50.5, DARNASSUS },
				},
				["timeline"] = { ADDED_4_0_1 },
				["sym"] = HEROS_CALL_BOARD_SYMLINK,
				["races"] = ALLIANCE_ONLY,
				["skipFill"] = true,
			}),
			-- #endif
			n(QUESTS, {
				q(7799, {	-- A Donation of Mageweave
					["qg"] = 14725,	-- Raedon Duskstriker
					["coord"] = { 64.0, 23.0, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7800, {	-- A Donation of Runecloth
					["qg"] = 14725,	-- Raedon Duskstriker
					["coord"] = { 64.0, 23.0, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				{	-- A Donation of Silk
					["qg"] = 14725,	-- Raedon Duskstriker
					-- #if AFTER TBC
					-- Blizzard did a dumb and moved the other quest over to the Exodar.
					["questID"] = 10354,	-- A Donation of Silk [DARN (TBC)]
					-- #else
					["questID"] = 7798,		-- A Donation of Silk [DARN (Classic)]
					-- #endif
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["coord"] = { 64.0, 23.0, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				},
				{	-- A Donation of Wool
					["qg"] = 14725,	-- Raedon Duskstriker
					-- #if AFTER TBC
					-- Blizzard did a dumb and moved the other quest over to the Exodar.
					["questID"] = 10352,	-- A Donation of Wool [DARN (TBC)]
					-- #else
					["questID"] = 7792,		-- A Donation of Wool [DARN (Classic)]
					-- #endif
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["coord"] = { 64.0, 23.0, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				},
				q(5647, {	-- A Lack of Fear
					["altQuests"] = {
						5641,	-- A Lack of Fear [Ironforge]
						5645,	-- A Lack of Fear [Stormwind City]
					},
					["qg"] = 11401,	-- Priestess Alathea <Priest Trainer>
					["coord"] = { 39.2, 81.0, DARNASSUS },
					["timeline"] = { REMOVED_2_3_0 },
					["maps"] = { IRONFORGE },
					["classes"] = { PRIEST },
					["races"] = { DWARF },
					["lvl"] = 20,
					-- #if BEFORE 2.3.0
					["groups"] = {
						recipe(6346),	-- Fear Ward
					},
					-- #endif
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29325, {	-- A Slippery Snack
					["qg"] = 4156,	-- Astaia
					["coord"] = { 49.0, 61.0, DARNASSUS },
					["timeline"] = { ADDED_4_1_0 },
					["maps"] = { TELDRASSIL },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/6 Baby Octopus
							["providers"] = {
								{ "i", 69915 },	-- Baby Octopus
								{ "n", 53522 },	-- Baby Octopus
							},
							["coord"] = { 57.0, 94.6, TELDRASSIL },
						}),
						i(67414),	-- Bag of Shiny Things
					},
				})),
				q(7801, {	-- Additional Runecloth [Darnassus]
					["sourceQuest"] = 7800,	-- A Donation of Runecloth
					["qg"] = 14725,	-- Raedon Duskstriker
					["coord"] = { 64.0, 23.0, DARNASSUS },
					["maxReputation"] = { FACTION_DARNASSUS, EXALTED },	-- Darnassus, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29359, {	-- An Old Favorite
					["qg"] = 4156,	-- Astaia
					["coord"] = { 49.0, 61.0, DARNASSUS },
					["timeline"] = { ADDED_4_1_0 },
					["maps"] = { TELDRASSIL },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/8 Kaldorei Herring
							["provider"] = { "i", 69987 },	-- Kaldorei Herring
							["coord"] = { 56.7, 92.7, TELDRASSIL },
						}),
						i(67414),	-- Bag of Shiny Things
					},
				})),
				-- #if AFTER CATA
				q(6342, {	-- An Unexpected Gift [CATA+] / Flight to Auberdine
					["sourceQuest"] = 6341,	-- To Darnassus [CATA+] / The Bounty of Teldrassil
					["providers"] = {
						{ "n", 7316 },	-- Sister Aquinne
						{ "i", 16262 },	-- Sister Aquinne's Note
					},
					["coord"] = { 36.0, 53.4, DARNASSUS },
					["races"] = { NIGHTELF },
				}),
				-- #endif
				-- #if NOT ANYCLASSIC
				q(5678, {	-- Arcane Feedback [Stormwind City]
					["altQuests"] = {
						5676,	-- Arcane Feedback [Stormwind City]
						5677,	-- Arcane Feedback [Ironforge]
					},
					["qg"] = 11401,	-- Priestess Alathea <Priest Trainer>
					["coord"] = { 40.0, 80.0, DARNASSUS },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = { HUMAN },
					["classes"] = { PRIEST },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13896,	-- Feedback (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(3763, {	-- Assisting Arch Druid Staghelm [Darnassus]
					["qg"] = 6735,	-- Innkeeper Saelienne
					["coord"] = { 67.4, 15.7, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(3790, {	-- Assisting Arch Druid Staghelm [Ironforge]
					["qg"] = 5111,	-- Innkeeper Firebrew
					["coord"] = { 18.1, 51.5, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(3789, {	-- Assisting Arch Druid Staghelm [Stormwind City]
					["qg"] = 6740,	-- Innkeeper Allison
					["coord"] = { 60.4, 75.3, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				q(10520, {	-- Assisting Arch Druid Staghelm [The Exodar]
					["qg"] = 16739,	-- Caregiver Breel <Innkeeper>
					["coord"] = { 59.6, 19.4, THE_EXODAR },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 47,
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29316, {	-- Back to Basics
					["qg"] = 4210,	-- Alegorn
					["coord"] = { 50.0, 36.6, DARNASSUS },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/6 Practice Making Rice Flour
							["provider"] = { "o", 208829 },	-- Rice Basket
						}),
						COOKING_AWARD,
					},
				})),
				applyclassicphase(CATA_PHASE_ONE, q(26383, {	-- Breaking Waves of Change [NON-WORGEN]
					["qg"] = 42936,	-- Sentinel Cordressa Briarbow
					["coord"] = { 43.8, 76.2, DARNASSUS },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { TELDRASSIL, DARKSHORE },
					["races"] = exclude(WORGEN, ALLIANCE_ONLY),
					["isBreadcrumb"] = true,
				})),
				applyclassicphase(CATA_PHASE_ONE, q(26385, {	-- Breaking Waves of Change [WORGEN]
					["qg"] = 48736,	-- Genn Greymane
					["coord"] = { 48.2, 14.6, DARNASSUS },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { TELDRASSIL, DARKSHORE },
					["races"] = { WORGEN },
					["isBreadcrumb"] = true,
				})),
				q(4510, {	-- Calm Before the Storm (2/2)
					["sourceQuest"] = 4508,	-- Calm Before the Storm (1/2)
					["providers"] = {
						{ "n", 7740 },	-- Gracina Spiritmight
						{ "i", 11843 },	-- Bank Voucher
					},
					["coord"] = { 42.0, 85.8, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						i(11870, {	-- Oblivion Orb
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11871, {	-- Snarkshaw Spaulders
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11872, {	-- Eschewal Greaves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				q(5640, {	-- Desperate Prayer
					["altQuests"] = {
						5634,	-- Desperate Prayer [Stormwind City #1]
						5635,	-- Desperate Prayer [Elwynn Forest]
						5636,	-- Desperate Prayer [Teldrassil]
						5637,	-- Desperate Prayer [Dun Morogh]
						5638,	-- Desperate Prayer [Stormwind City #2]
						5639,	-- Desperate Prayer [Ironforge]
					},
					["qg"] = 11401,	-- Priestess Alathea <Priest Trainer>
					["coord"] = { 39.6, 80.8, DARNASSUS },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = { HUMAN, DWARF },
					["classes"] = { PRIEST },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13908,	-- Desperate Prayer (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(2242, {	-- Destiny Calls
					["sourceQuest"] = 2241,	-- The Apple Falls
					["qg"] = 4163,	-- Syurna
					["coord"] = { 37.0, 21.9, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Sethir's Journal
							["provider"] = { "i", 7737 },	-- Sethir's Journal
							["description"] = "This item can only be pickpocketed.",
							["coord"] = { 37.6, 22.2, TELDRASSIL },
							["cr"] = 6909,	-- Sethir the Ancient
						}),
						i(7298, {	-- Blade of Cunning
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if ANYCLASSIC
				q(5672, {	-- Elune's Grace [Darnassus]
					["altQuests"] = {
						5675,	-- Elune's Grace [Ironforge]
						5673,	-- Elune's Grace [Stormwind City]
					},
					["qgs"] = {
						11401,	-- Priestess Alathea <Priest Trainer>
						11406,	-- High Priest Rohan <Priest Trainer>
						376,	-- High Priestess Laurena <Priest Trainer>
					},
					["coords"] = {
						{ 39.2, 81.0, DARNASSUS },
						{ 25.0, 8.2, IRONFORGE },
						{ 38.8, 26.6, STORMWIND_CITY },
					},
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { NIGHTELF },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 2651,	-- Elune's Grace (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				-- #if NOT ANYCLASSIC
				q(5672, {	-- Elune's Grace [Darnassus]
					["altQuests"] = {
						5675,	-- Elune's Grace [Ironforge]
						5673,	-- Elune's Grace [Stormwind City]
					},
					["qg"] = 11401,	-- Priestess Alathea <Priest Trainer>
					["coord"] = { 39.2, 81.0, DARNASSUS },
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { NIGHTELF },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 2651,	-- Elune's Grace (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(2260, {	-- Erion's Behest
					["sourceQuest"] = 2259,	-- Erion Shadewhisper
					["qg"] = 4214,	-- Erion Shadewhisper
					["coord"] = { 34.6, 25.6, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(7671, {	-- Frostsaber Replacement
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["qg"] = 4730,	-- Lelanai
					["coords"] = {
						-- #if AFTER CATA
						{ 42.6, 32.8, DARNASSUS },
						-- #else
						{ 38.3, 15.3, DARNASSUS },
						-- #endif
					},
					["timeline"] = { REMOVED_1_4_0 },
					["cost"] = { { "i", 12302, 1 } },	-- Ancient Frostsaber (MOUNT!)
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
					["sym"] = { { "select", "itemID",
						18766,
						18767,
						18902
					}},
				}),
				q(952, {	-- Grove of the Ancients
					["sourceQuest"] = 940,	-- Teldrassil
					["providers"] = {
						{ "n", 3516 },	-- Arch Druid Fandral Staghelm
						{ "i", 5390 },	-- Fandral's Message
					},
					["coord"] = { 34.8, 8.8, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 6,
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29321, {	-- Happy as a Clam Digger
					["qg"] = 4156,	-- Astaia
					["coord"] = { 49.0, 61.0, DARNASSUS },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/10 Teldrassil Clam
							["providers"] = {
								{ "i",  69910 },	-- Teldrassil Clam
								{ "o", 208831 },	-- Teldrassil Clam
							},
							["coord"] = { 53.0, 90.6, TELDRASSIL },
						}),
						i(67414),	-- Bag of Shiny Things
					},
				})),
				q(32664, {	-- Learn to Ride
					-- #if BEFORE 10.1.5
					-- #if AFTER SL
					["description"] = "This quest is available to Night Elves upon reaching level 10.",
					-- #else
					["description"] = "This quest is available to Night Elves upon reaching level 20.",
					-- #endif
					-- #endif
					["timeline"] = { ADDED_5_2_0, REMOVED_10_1_5 },
					["races"] = { NIGHTELF },
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
					["lvl"] = lvlsquish(10, 10, 10),
				}),
				q(14085, {	-- Learn to Ride in Darnassus
					["description"] = "The pamphlet that starts this quest is sent to Night Elves in their Mailbox upon reaching the specified level.",
					["provider"] = { "i", 46876 },	-- Riding Training Pamphlet
					["timeline"] = { ADDED_3_3_0, REMOVED_5_2_0 },
					["races"] = { NIGHTELF },
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["lvl"] = lvlsquish(20, 20, 10),
				}),
				q(4493, {	-- March of the Silithid (A)
					["sourceQuest"] = 162,	-- Rise of the Silithid (A)
					["qg"] = 7740,	-- Gracina Spiritmight
					["coord"] = { 42.0, 85.8, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { TANARIS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(1711, {	-- Mathiel's Armor
					["sourceQuest"] = 1710,	-- Sunscorched Shells
					["qg"] = 6142,	-- Mathiel
					["coord"] = { 59.2, 45.4, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(6973, {	-- Fire hardened Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1582, {	-- Moonglow Vest
					["qg"] = 6034,	-- Lotherias
					["coords"] = {
						-- #if AFTER CATA
						{ 60.4, 37.0, DARNASSUS },
						-- #else
						{ 64.4, 22.2, DARNASSUS },
						-- #endif
					},
					["cost"] = {
						{ "i", 2309, 5 },	-- Embossed Leather Boots
						{ "i", 2310, 5 },	-- Embossed Leather Cloak
						{ "i", 4239, 1 },	-- Embossed Leather Gloves
					},
					["requireSkill"] = LEATHERWORKING,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 8,
					["groups"] = {
						i(6710),	-- Pattern: Moonglow Vest (RECIPE!)
					},
				}),
				q(3781, {	-- Morrowgrain Research (1/2)
					["sourceQuest"] = 3764,	-- Un'Goro Soil
					["providers"] = {
						{ "n", 3516 },	-- Arch Druid Fandral Staghelm
						{ "i", 11103 },	-- Seed Voucher
					},
					["coord"] = { 34.8, 8.8, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						i(11022),	-- Packet of Tharlendris Seeds
					},
				}),
				q(3785, {	-- Morrowgrain Research (2/2)
					["sourceQuest"] = 3781,	-- Morrowgrain Research (1/2)
					["qg"] = 4217,	-- Mathrengyl Bearwalker
					["coord"] = { 35.2, 8.0, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11040, 10 } },	-- Morrowgrain
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 47,
					["groups"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				q(3803, {	-- Morrowgrain to Darnassus
					["sourceQuest"] = 3785,	-- Morrowgrain Research (2/2)
					["qg"] = 4217,	-- Mathrengyl Bearwalker
					["coord"] = { 35.2, 8.0, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 11040, 10 } },	-- Morrowgrain
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 47,
					["groups"] = {
						i(11887),	-- Cenarion Circle Cache
					},
				}),
				-- #if BEFORE CATA
				q(6344, {	-- Nessa Shadowsong / Reminders of Home [CATA+]
					["qg"] = 4241,	-- Mydrannul
					["coord"] = { 70.6, 45.3, DARNASSUS },
					["maps"] = { TELDRASSIL },
					["races"] = { NIGHTELF },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				-- #endif
				q(7672, {	-- Nightsaber Replacement
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["qg"] = 4730,	-- Lelanai
					["coords"] = {
						-- #if AFTER CATA
						{ 42.6, 32.8, DARNASSUS },
						-- #else
						{ 38.3, 15.3, DARNASSUS },
						-- #endif
					},
					["timeline"] = { REMOVED_1_4_0 },
					["cost"] = { { "i", 12303, 1 } },	-- Nightsaber (MOUNT!)
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
					["sym"] = { { "select", "itemID",
						18766,
						18767,
						18902
					}},
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29314, {	-- Remembering the Ancestors
					["providers"] = {
						{ "n",   4210 },	-- Alegorn
						{ "o", 208825 },	-- Shrine of the Ancestors
					},
					["coords"] = {
						{ 50.0, 36.6, DARNASSUS },
						{ 69.5, 40.5, DARNASSUS },
					},
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Blessed Rice Cakes
							["providers"] = {
								{ "i",  69900 },	-- Blessed Rice Cakes
								{ "o", 208818 },	-- Blessed Rice Cakes
							},
							["coord"] = { 43.5, 78.7, DARNASSUS },
						}),
						COOKING_AWARD,
					},
				})),
				-- #if AFTER CATA
				q(6343, {	-- Return to Nyoma [CATA+] / Return to Nessa
					["sourceQuest"] = 6342,	-- An Unexpected Gift [CATA+] / Flight to Auberdine
					["qg"] = 40552,	-- Leora
					["coord"] = { 36.5, 47.8, DARNASSUS },
					["maps"] = { TELDRASSIL },
					["races"] = { NIGHTELF },
				}),
				-- #endif
				applyclassicphase(CATA_PHASE_ONE, q(29318, {	-- Ribs for the Sentinels
					["qg"] = 4210,	-- Alegorn
					["coord"] = { 50.0, 36.6, DARNASSUS },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/5 Feed Ribs to Sentinels
							["providers"] = {
								{ "i", 69906 },	-- Delicious Ribs
								{ "i", 69904 },	-- Uncooked Ribs
							},
							["coord"] = { 52.6, 35.8, DARNASSUS },
							["cr"] = 4262,	-- Darnassus Sentinel
						}),
						COOKING_AWARD,
					},
				})),
				q(2520, {	-- Sathrah's Sacrifice
					["sourceQuest"] = 2518,	-- Tears of the Moon
					["qg"] = 7313,	-- Priestess A'moora
					["coord"] = { 36.4, 86.0, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- Offer the sacrifice at the fountain
							["provider"] = { "i", 8155 },	-- Sathrah's Sacrifice
						}),
						i(9600, {	-- Lace Pants
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9601, {	-- Cushioned Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78192, {	-- Secrets of the Light (1/2)
					["qg"] = 211188,	-- Maethra Slagheart
					["coord"] = { 38.2, 89.2, DARNASSUS },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { ASHENVALE },
					["classes"] = { PRIEST },
					["races"] = { NIGHTELF },
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/7 Forsaken Herbalist slain
							["provider"] = { "n", 3733 },	-- Forsaken Herbalist
							["coord"] = { 32.0, 21.8, ASHENVALE },
						}),
						objective(2, {	-- 0/9 Forsaken Seeker slain
							["provider"] = { "n", 3732 },	-- Forsaken Seeker
							["coord"] = { 31.6, 23.8, ASHENVALE },
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, q(78193, {	-- Secrets of the Light (2/2)
					["description"] = "Completing this quest will allow you to meditate in the same manner as the humans and dwarves.",
					["sourceQuest"] = 78192,	-- Secrets of the Light (1/2)
					["qg"] = 211188,	-- Maethra Slagheart
					["coord"] = { 38.2, 89.2, DARNASSUS },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { STORMWIND_CITY },
					["classes"] = { PRIEST },
					["races"] = { NIGHTELF },
					["lvl"] = 17,
					["groups"] = {
						recipe(424035, {	-- Secrets of the Light
							["classes"] = { PRIEST },
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, q(79078, {	-- Sharing the Faith
					["qg"] = 4092,	-- Lariia <Priest Trainer>
					["coord"] = { 40.0, 87.4, DARNASSUS },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PRIEST },
					["races"] = { NIGHTELF },
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- Pray over the Supplicant
							["provider"] = { "n", 215095 },	-- Supplicant
							["description"] = "You must first have your Meditation buff and then use /pray on the kneeling Supplicant.",
						}),
					},
				})),
				-- #endif
				q(1692, {	-- Smith Mathiel
					["sourceQuest"] = 1686,	-- The Shade of Elura
					["providers"] = {
						{ "n", 4088 },	-- Elanaria
						{ "i", 6812 },	-- Case of Elunite
					},
					["coord"] = { 57.4, 34.8, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29357, {	-- Spice Bread Aplenty
					["qg"] = 4210,	-- Alegorn
					["coord"] = { 50.0, 36.6, DARNASSUS },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/10 Spice Bread
							["provider"] = { "i", 30816 },	-- Spice Bread
							["coord"] = { 49.6, 36.6, DARNASSUS },
							["cr"] = 4223,	-- Fyldan <Cooking Supplies>
						}),
						COOKING_AWARD,
					},
				})),
				-- #if ANYCLASSIC
				q(5627, {	-- Stars of Elune / Returning Home [Darnassus]
					["altQuests"] = {
						5629,	-- Returning Home [Teldrassil]
						5630,	-- Returning Home [Dun Morogh]
						5628,	-- Returning Home [Elwynn Forest]
						5633,	-- Returning Home [Ironforge]
						5631,	-- Returning Home [Stormwind City]
						5632,	-- Returning Home [Stormwind City]
						-- NOTE: There is 10534 and 10539 also, but these are for DRAENEI and were never found on TBC Classic, so those two were likely never implemented. Starshards was a Night Elf Priest only spell.
					},
					["qgs"] = {
						11401,	-- Priestess Alathea <Priest Trainer>
						3600,	-- Laurna Morninglight <Priest Trainer>
						1226,	-- Maxan Anvol <Priest Trainer>
						377,	-- Priestess Josetta <Priest Trainer>
						5142,	-- Braenna Flintcrag <Priest Trainer>
						5489,	-- Brother Joshua <Priest Trainer>
						11397,	-- Nara Meideros <Priest Trainer>
					},
					["coords"] = {
						{ 39.2, 81.0, DARNASSUS },
						{ 55.6, 56.8, TELDRASSIL },
						{ 47.2, 52.2, DUN_MOROGH },
						{ 43.4, 65.6, ELWYNN_FOREST },
						{ 24.6, 9.2, IRONFORGE },
						{ 38.6, 26.8, STORMWIND_CITY },
						{ 20.8, 50.2, STORMWIND_CITY },
					},
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { NIGHTELF },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 10797,	-- Starshards (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				-- #if NOT ANYCLASSIC
				q(5627, {	-- Returning Home [Darnassus]
					["altQuests"] = {
						5628,	-- Returning Home [Elwynn Forest]
						5629,	-- Returning Home [Teldrassil]
						5630,	-- Returning Home [Dun Morogh]
						5631,	-- Returning Home [Stormwind City]
						5632,	-- Returning Home [Stormwind City]
						5633,	-- Returning Home [Ironforge]
					},
					["qg"] = 11401,	-- Priestess Alathea <Priest Trainer>
					["coord"] = { 39.2, 81.0, DARNASSUS },
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { NIGHTELF },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 10797,	-- Starshards (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				applyclassicphase(CATA_PHASE_ONE, q(29323, {	-- Stocking Up
					["qg"] = 4156,	-- Astaia
					["coord"] = { 49.0, 61.0, DARNASSUS },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/5 Lake Whitefish
							["provider"] = { "i", 69912 },	-- Lake Whitefish
						}),
						i(67414),	-- Bag of Shiny Things
					},
				})),
				q(1710, {	-- Sunscorched Shells
					["sourceQuest"] = 1703,	-- Mathiel
					["qg"] = 6142,	-- Mathiel
					["coord"] = { 59.2, 45.4, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THOUSAND_NEEDLES },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/20 Sunscorched Shell
							["providers"] = {
								{ "i", 6849 },	-- Sunscorched Shell
								{ "o", 89635 },	-- Sunscorched Shell
							},
							["coord"] = { 11.7, 37.1, THOUSAND_NEEDLES },
						}),
					},
				}),
				-- #if BEFORE CATA
				q(2518, {	-- Tears of the Moon
					["sourceQuest"] = 2519,	-- The Temple of the Moon
					["qg"] = 7313,	-- Priestess A'moora
					["coord"] = { 36.4, 86.0, DARNASSUS },
					["maps"] = { TELDRASSIL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- 0/1 Silvery Spinnerets
							["provider"] = { "i", 8344 },	-- Silvery Spinnerets
							["cr"] = 7319,	-- Lady Sathrah
							["coords"] = {
								{ 38.8, 26.0, TELDRASSIL },
								{ 42.0, 25.6, TELDRASSIL },
								{ 48.0, 25.6, TELDRASSIL },
							},
						}),
					},
				}),
				-- #endif
				q(942, {	-- The Absent Minded Prospector (4/5)
					["sourceQuest"] = 741,	-- The Absent Minded Prospector (3/5) (Darkshore)
					["providers"] = {
						{ "n", 2912 },	-- Chief Archaeologist Greywhisker
						{ "i", 4654 },	-- Mysterious Fossil
					},
					["coord"] = { 31.2, 84.2, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
				}),
				q(1039, {	-- The Barrens Port
					["sourceQuest"] = 1038,	-- Velinde's Effects
					["qg"] = 8026,	-- Thyn'tel Bladeweaver
					["coord"] = { 61.8, 39.4, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_BARRENS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29313, {	-- The Secret to Perfect Kimchi
					["qg"] = 4210,	-- Alegorn
					["coord"] = { 50.0, 36.6, DARNASSUS },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/8 Buried Kimchi Jar
							["providers"] = {
								{ "i",  69898 },	-- Buried Kimchi Jar
								{ "o", 208814 },	-- Buried Kimchi Jar
							},
							["coord"] = { 48.5, 34.0, DARNASSUS },
						}),
						COOKING_AWARD,
					},
				})),
				q(1686, {	-- The Shade of Elura
					["sourceQuest"] = 1683,	-- Vorlus Vilehoof
					["qg"] = 4088,	-- Elanaria
					["coord"] = { 57.8, 34.4, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DARKSHORE },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/8 Elunite Ore
							["providers"] = {
								{ "i", 6808 },	-- Elunite Ore
								{ "o", 86492 },	-- Crate of Elunite
							},
							["coord"] = { 33.1, 46.3, DARKSHORE },
						}),
						objective(2, {	-- 0/1 Elura's Medallion
							["provider"] = { "i", 6809 },	-- Elura's Medallion
							["coord"] = { 31.6, 44.8, DARKSHORE },
							["cr"] = 6133,	-- Shade of Elura
						}),
					},
				}),
				applyclassicphase(CATA_PHASE_ONE, q(29324, {	-- The Sister's Pendant
					["qg"] = 4156,	-- Astaia
					["coord"] = { 49.0, 61.0, DARNASSUS },
					["timeline"] = { ADDED_4_1_0 },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						i(69914, {	-- Giant Catfish
							objective(1, {	-- 0/1 Aquinne's Moon Pendant
								["questID"] = 29324,	-- The Sister's Pendant
								["provider"] = { "i", 69913 },	-- Aquinne's Moon Pendant
							}),
						}),
						i(67414),	-- Bag of Shiny Things
					},
				})),
				q(2519, {	-- The Temple of the Moon
					["qg"] = 7316,	-- Sister Aquinne
					["coord"] = { 29.0, 45.4, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 5,
				}),
				q(730, {	-- Trouble In Darkshore?
					["qg"] = 2912,	-- Chief Archaeologist Greywhisker
					["coord"] = { 31.2, 84.2, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 14,
				}),
				q(3764, {	-- Un'Goro Soil
					["sourceQuests"] = {
						3763,	-- Assisting Arch Druid Staghelm [Darnassus]
						3790,	-- Assisting Arch Druid Staghelm [Ironforge]
						3789,	-- Assisting Arch Druid Staghelm [Stormwind City]
						-- #if AFTER TBC
						10520,	-- Assisting Arch Druid Staghelm [The Exodar]
						-- #endif
					},
					["qg"] = 3516,	-- Arch Druid Fandral Staghelm
					["coord"] = { 35.2, 9.0, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNGORO_CRATER },
					["cost"] = {{ "i", 11018, 20 }},	-- Un'Goro Soil
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 47,
				}),
				q(1038, {	-- Velinde's Effects
					["sourceQuest"] = 1037,	-- Velinde Starsong (Ashenvale)
					["qg"] = 8026,	-- Thyn'tel Bladeweaver
					["coord"] = { 61.8, 39.4, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Velinde's Journal
							["providers"] = {
								{ "i", 5520 },	-- Velinde's Journal
								{ "o", 19877 },	-- Velinde's Locker
								{ "i", 5521 },	-- Velinde's Key
							},
							["coord"] = { 62.5, 83.1, DARNASSUS },
						}),
					},
				}),
				q(1683, {	-- Vorlus Vilehoof
					["sourceQuests"] = {
						1638,	-- A Warrior's Training
						1684,	-- Elanaria
						1679,	-- Muren Stormpike
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
					},
					["altQuests"] = {
						1665,	-- Bartleby's Mug
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
						1678,	-- Vejrek
						-- 1683,	-- Vorlus Vilehoof
					},
					["qg"] = 4088,	-- Elanaria
					["coord"] = { 57.3, 34.6, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { TELDRASSIL },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Horn of Vorlus
							["provider"] = { "i", 6805 },	-- Horn of Vorlus
							["coord"] = { 47.2, 63.6, TELDRASSIL },
							["cr"] = 6128,	-- Vorlus Vilehoof
						}),
						-- #if BEFORE CATA
						recipe(71),		-- Defensive Stance
						-- recipe(7386),	-- Sunder Armor	[TODO: Users are reporting they can't collect this.]
						recipe(355),	-- Taunt
						-- #endif
					},
				}),
				q(1693, {	-- Weapons of Elunite
					["sourceQuest"] = 1692,	-- Smith Mathiel
					["qg"] = 6142,	-- Mathiel
					["coord"] = { 59.2, 45.4, DARNASSUS },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(6966, {	-- Elunite Axe
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6967, {	-- Elunite Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6968, {	-- Elunite Hammer
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6969, {	-- Elunite Dagger
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
			}),
			-- #if BEFORE TBC
			n(RIDING_TRAINER, {
				n(4753, {	-- Jartsam <Nightsaber Riding Instructor>
					["coord"] = { 38.6, 16.0, DARNASSUS },
					["races"] = ALLIANCE_ONLY,

					-- Available to Night Elves without faction requirements.
					["minReputation"] = { FACTION_DARNASSUS, EXALTED },	-- Darnassus, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. NIGHTELF .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["groups"] = {
						recipe(828, {	-- Tiger Riding
							["cost"] = 200000,
							["lvl"] = 40,
						}),
					},
				}),
			}),
			-- #endif
			-- #if AFTER 6.1.0.19508
			n(TREASURES, {
				o(240625, {	-- High Priestess' Reliquary
					["description"] = "Loot the chest on the top floor of the Temple of the Moon, on the wall opposite Tyrande Whisperwind.",
					["coord"] = { 43.0, 75.8, DARNASSUS },
					["timeline"] = { ADDED_6_1_0 },
					["groups"] = {
						i(122239, {	-- Music Roll: Shalandis Isle
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
			}),
			-- #endif
			n(VENDORS, {
				n(4234, {	-- Andrus <Staff Merchant>
					["coord"] = { 54.6, 83.2, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2527,	-- Battle Staff
						2535,	-- War Staff
					}},
				}),
				n(4172, {	-- Anadyia
					["coord"] = { 54.6, 83.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2617,	-- Burning Robes
						2615,	-- Chromatic Robe
						2613,	-- Double Stitched Robes
						2612,	-- Plain Robe
						2614,	-- Robe Of Apprenticeship
						2616,	-- Shimmering Silk Robes
						2618,	-- Silver Dress Robes
					}},
				}),
				n(4203, {	-- Ariyell Skyshadow
					["coord"] = { 56.6, 52.8, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
					-- all done
						2025,	-- Bearded Axe
						15905,	-- Brass Knuckles
						1198,	-- Claymore
						2029,	-- Cleaver
						851,	-- Cutlass
						922,	-- Dacian Falx
						927,	-- Double Axe
						15904,	-- Deadly Fist Blades
						2024,	-- Espadon
						925,	-- Flail
						1197,	-- Giant Mace
						2030,	-- Gnarled Staff
						853,	-- Hatchet
						2028,	-- Hammer
						2207,	-- Jambiya
						2209,	-- Kris
						2507,	-- Laminated Recurve Bow
						928,	-- Long Staff
						924,	-- Maul
						852,	-- Mace
						854,	-- Quarter Staff
						3026,	-- Reinforced Bow
						2026,	-- Rock Hammer
						2027,	-- Scimitar
						15903,	-- Slicing Claw
						1196,	-- Tabar
					}},
					["groups"] = {
						i(15906, {	-- Left-Handed Brass Knuckles
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(15909, {	-- Left-Handed Blades
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(15907, {	-- Left-Handed Claw
							["timeline"] = { REMOVED_6_0_2 },
						}),
					},
				}),
				n(55285, {	-- Astrid Langstrump <Mountain Horse Handler>
					["coord"] = { 48.2, 21.8, DARNASSUS },
					-- Available to Worgen without faction requirements.
					["minReputation"] = { FACTION_GILNEAS, EXALTED },	-- Gilneas, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. WORGEN .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["timeline"] = { ADDED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(73838, {	-- Mountain Horse (MOUNT!)
							["timeline"] = { ADDED_4_3_0 },
						}),
						i(73839, {	-- Swift Mountain Horse (MOUNT!)
							["timeline"] = { ADDED_4_3_0 },
						}),
					},
				}),
				n(4240, {	-- Caynrus
					["coord"] = { 55.4, 74.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2451,	-- Crested Heater Shield
						1201,	-- Dull Heater Shield
						2448,	-- Heavy Pavise
						2446,	-- Kite Shield
						2445,	-- Large Metal Shield
						17189,	-- Metal Buckler
						17190,	-- Ornate Buckler
						17192,	-- Reinforced Targe
						17188,	-- Ringed Buckler
						17186,	-- Small Targe
					}},
					["groups"] = {
						i(2129),	-- Large Round Shield
						i(17184),	-- Small Shield
					},
				}),
				n(4216, {	-- Chardryn <Herbalism Supplies>
					["coord"] = { 49.55, 69.44, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22250, {	-- Herb Pouch
							["description"] = "Only select Herbalism Suppliers sells this pouch.",
							["providers"] = {
								{ "n", 4216},	-- Chardryn <Herbalism Supplies>
								{ "n", 5503},	-- Eldraeith <Herbalism Supplies> [TBC+] / <Herbalism Supplier>
								{ "n", 5138},	-- Gwina Stonebranch <Herbalism Supplies> [TBC+] / <Herbalism Supplier>
								{ "n", 4615},	-- Katrina Alliestar <Herbalism Supplies> [TBC+] / <Herbalism Supplier>
								{ "n", 3548},	-- Selina Weston <Alchemy & Herbalism Supplies>
								-- #if AFTER TBC
								{ "n", 16367},	-- Botanist Tyniarrel <Herbalism Trainer & Supplies>
								-- #endif
								-- #if AFTER CATA
								{ "n", 46742},	-- Brunda <Herbalism Supplies>
								-- #else
								{ "n", 3405},	-- Zeal'aya <Herbalism Supplies>
								-- #endif
							},
						}),
					},
				}),
				n(4164, {	-- Cylania
					["coord"] = { 56.8, 53.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						847,	-- Chainmail Armor
						1845,	-- Chainmail Belt
						849,	-- Chainmail Boots
						1846,	-- Chainmail Bracers
						850,	-- Chainmail Gloves
						848,	-- Chainmail Pants
						837,	-- Heavy Weave Armor
						3589,	-- Heavy Weave Belt
						3590,	-- Heavy Weave Bracers
						839,	-- Heavy Weave Gloves
						838,	-- Heavy Weave Pants
						840,	-- Heavy Weave Shoes
						3602,	-- Knitted Belt
						3603,	-- Knitted Bracers
						793,	-- Knitted Gloves
						794,	-- Knitted Pants
						792,	-- Knitted Sandals
						795,	-- Knitted Tunic
						2392,	-- Light Mail Armor
						2393,	-- Light Mail Belt
						2395,	-- Light Mail Boots
						2396,	-- Light Mail Bracers
						2397,	-- Light Mail Gloves
						2394,	-- Light Mail Leggings
						1839,	-- Rough Leather Belt
						796,	-- Rough Leather Boots
						1840,	-- Rough Leather Bracers
						797,	-- Rough Leather Gloves
						798,	-- Rough Leather Pants
						799,	-- Rough Leather Vest
						1843,	-- Tanned Leather Belt
						843,	-- Tanned Leather Boots
						1844,	-- Tanned Leather Bracers
						844,	-- Tanned Leather Gloves
						846,	-- Tanned Leather Jerkin
						845,	-- Tanned Leather Pants
					}},
				}),
				n(4236, {	-- Cyridan
					["coord"] = { 52.6, 77.0, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2142,	-- Cuirboulli Belt
						2143,	-- Cuirboulli Boots
						2144,	-- Cuirboulli Bracers
						2145,	-- Cuirboulli Gloves
						2146,	-- Cuirboulli Pants
						2141,	-- Cuirboulli Vest
						236,	-- Cured Leather Armor
						1849,	-- Cured Leather Belt
						238,	-- Cured Leather Boots
						1850,	-- Cured Leather Bracers
						239,	-- Cured Leather Gloves
						237,	-- Cured Leather Pants
						2471,	-- Reinforced Leather Belt
						2473,	-- Reinforced Leather Boots
						2474,	-- Reinforced Leather Bracers
						3893,	-- Reinforced Leather Cap
						2475,	-- Reinforced Leather Gloves
						2472,	-- Reinforced Leather Pants
						2470,	-- Reinforced Leather Vest
						1839,	-- Rough Leather Belt
						796,	-- Rough Leather Boots
						1840,	-- Rough Leather Bracers
						797,	-- Rough Leather Gloves
						798,	-- Rough Leather Pants
						799,	-- Rough Leather Vest
						2464,	-- Studded Belt
						2467,	-- Studded Boots
						2468,	-- Studded Bracers
						2463,	-- Studded Doublet
						2469,	-- Studded Gloves
						3890,	-- Studded Hat
						2465,	-- Studded Pants
						1843,	-- Tanned Leather Belt
						843,	-- Tanned Leather Boots
						1844,	-- Tanned Leather Bracers
						844,	-- Tanned Leather Gloves
						846,	-- Tanned Leather Jerkin
						845,	-- Tanned Leather Pants
					}},
					["groups"] = {
						i(2122),	-- Cracked Leather Belt
						i(2123),	-- Cracked Leather Boots
						i(2124),	-- Cracked Leather Bracers
						i(2125),	-- Cracked Leather Gloves
						i(2126),	-- Cracked Leather Pants
						i(2127),	-- Cracked Leather Vest
					},
				}),
				n(4180, {	-- Ealyshia Dewwhisper
					["coord"] = { 57.8, 71.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2523,	-- Bullova
						2521,	-- Flamberge
						2531,	-- Great Axe
						2525,	-- War Hammer
						2533,	-- War Maul
						2529,	-- Zweihander
					}},
				}),
				n(4168, {	-- Elynna <Tailoring Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 60.4, 36.8, DARNASSUS },
						-- #else
						{ 64.6, 21.6, DARNASSUS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER CATA
					["sym"] = {{ "sub", "common_vendor", 5154 }},	-- Poranna Snowbraid <Tailoring Supplies>
					-- #endif
					["groups"] = {
						i(6272, {	-- Pattern: Blue Linen Robe (RECIPE!)
							["isLimited"] = true,
						}),
						i(6275, {	-- Pattern: Greater Adept's Robe (RECIPE!)
							["isLimited"] = true,
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(215369)),	-- Pattern: Invoker's Cord (RECIPE!)
						applyclassicphase(SOD_PHASE_ONE, i(215370)),	-- Pattern: Invoker's Mantle (RECIPE!)
						-- #endif
						i(10311, {	-- Pattern: Orange Martial Shirt (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(4223, {	-- Fyldan <Cooking Supplies> [TBC+] / Fyldan <Cooking Supplier>
					["coords"] = {
						-- #if AFTER CATA
						{ 49.6, 36.6, DARNASSUS },
						-- #else
						{ 48.5, 21.6, DARNASSUS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER CATA
					["sym"] = {{"sub", "common_vendor", 49701}},	-- Jon Casper <Sous Chef>
					-- #endif
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(4232, {	-- Glorandiir <Axe Merchant>
					["coords"] = {
						-- #if AFTER CATA
						{ 60.2, 62.6, DARNASSUS },
						-- #else
						{ 64.2, 59.0, DARNASSUS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						926,	-- Battle Axe
						2025,	-- Bearded Axe
						2523,	-- Bullova
						2029,	-- Cleaver
						2522,	-- Crescent Axe
						927,	-- Double Axe
						2530,	-- Francisca
						2531,	-- Great Axe
						853,	-- Hatchet
						12249,	-- Merciless Axe
						1196,	-- Tabar
					}},
					["groups"] = {
						i(12249, {	-- Merciless Axe
							["isLimited"] = true,
						}),
					},
				}),
				n(52637, {	-- Hugo Letner <Engineering Supplies>
					["coord"] = { 50.0, 32.8, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["timeline"] = { ADDED_4_0_3 },
				}),
				n(6735, {	-- Innkeeper Saelienne <Innkeeper>
					["coords"] = {
						-- #if AFTER CATA
						{ 62.5, 32.8, DARNASSUS },
						-- #else
						{ 67.2, 15.8, DARNASSUS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				n(4231, {	-- Kieran <Weapon Merchant>
					["coord"] = { 61.0, 63.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						1194,	-- Bastard Sword
						2025,	-- Bearded Axe
						2479,	-- Broad Axe
						1198,	-- Claymore
						2029,	-- Cleaver
						2130,	-- Club
						2492,	-- Cudgel
						851,	-- Cutlass
						2139,	-- Dirk
						2024,	-- Espadon
						1197,	-- Giant Mace
						2488,	-- Gladius
						2030,	-- Gnarled Staff
						2134,	-- Hand Axe
						2028,	-- Hammer
						853,	-- Hatchet
						2207,	-- Jambiya
						2491,	-- Large Axe
						2480,	-- Large Club
						852,	-- Mace
						2208,	-- Poniard
						854,	-- Quarter Staff
						2026,	-- Rock Hammer
						2027,	-- Scimitar
						2131,	-- Shortsword
						2132,	-- Short Staff
						2494,	-- Stiletto
						1196,	-- Tabar
						2490,	-- Tomahawk
						2495,	-- Walking Stick
						2493,	-- Wooden Mallet
					}},
				}),
				n(3561, {	-- Kyrai
					["coord"] = { 38.8, 35.4, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER MOP
					["sym"] = {{"select","itemID",
						4565,	-- Simple Dagger
					}},
					-- #endif
				}),
				n(4173, {	-- Landria <Bow Merchant>
					["coords"] = {
						-- #if AFTER CATA
						{ 59.6, 67.6, DARNASSUS },
						-- #else
						{ 63.3, 66.3, DARNASSUS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						3027,	-- Heavy Recurve Bow
						3026,	-- Reinforced Bow
					}},
					["groups"] = {
						i(11303, {	-- Fine Shortbow
							["isLimited"] = true,
						}),
						i(11306, {	-- Sturdy Recurve
							["isLimited"] = true,
						}),
						i(11308, {	-- Sylvan Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(52641, {	-- Layna Karner <Blacksmithing Supplies>
					["coord"] = { 56.6, 52.6, DARNASSUS },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER 4.3.0
					["sym"] = {{ "sub", "common_recipes_vendor", 55684 }},	-- Jordan Smith <Blacksmithing Trainer & Supplies>
					-- #endif
					["groups"] = {
						i(12162, {	-- Plans: Hardened Iron Shortsword (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(4730, {	-- Lelanai <Saber Handler>
					["coords"] = {
						-- #if AFTER CATA
						{ 42.6, 32.8, DARNASSUS },
						-- #else
						{ 38.3, 15.3, DARNASSUS },
						-- #endif
					},
					-- Available to Night Elves without faction requirements.
					["minReputation"] = { FACTION_DARNASSUS, EXALTED },	-- Darnassus, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. NIGHTELF .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8632),	-- Spotted Frostsaber (MOUNT!)
						i(47100, {	-- Striped Dawnsaber (MOUNT!)
							["timeline"] = { ADDED_3_2_0 },
						}),
						i(8629),	-- Striped Nightsaber (MOUNT!)
						i(8631),	-- Striped Frostsaber (MOUNT!)
						i(18766),	-- Swift Frostsaber (MOUNT!)
						i(18767),	-- Swift Mistsaber (MOUNT!)
						i(18902),	-- Swift Stormsaber (MOUNT!)
						i(12302, {	-- Ancient Frostsaber (MOUNT!)
							["timeline"] = { REMOVED_1_4_0 },
						}),
						i(12303, {	-- Nightsaber (MOUNT!)
							["timeline"] = { REMOVED_1_4_0 },
						}),
					},
				}),
				n(50307, {	-- Lord Candren <Gilneas Quartermaster>
					["coord"] = { 37.1, 47.4, DARNASSUS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = bubbleDownClassicRep(FACTION_GILNEAS, {
						{		-- Neutral
							i(245620, {	-- Little Wolf's Loo (DECOR!)
								["sourceQuest"] = 14402,	-- Ready to Go
								["cost"] = 4500000,	-- 450g
							}),
							i(245518, {	-- Worgen's Chicken Coop (DECOR!)
								["sourceQuest"] = 24675,	-- Last Meal
								["cost"] = 1500000,	-- 150g
							}),
						}, {	-- Friendly
							i(64882, {	-- Gilneas Tabard
								["timeline"] = { ADDED_4_0_3 },
							}),
						}, {	-- Honored
							i(245605, {	-- Gilnean Stone Wall (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 3000000,	-- 300g
							}),
						}, {	-- Revered
							i(245603, {	-- Gilnean Noble's Trellis (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 3500000,	-- 350g
							}),
							i(67532, {	-- Gilnean Satchel
								["timeline"] = { ADDED_4_0_3 },
							}),
						}, {	-- Exalted
							i(64893, {	-- Cape of Gilneas
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(64892, {	-- Mantle of Gilneas
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(64894, {	-- Shroud of Gilneas
								["timeline"] = { ADDED_4_0_3 },
							}),
						},
					}),
				}),
				n(4177, {	-- Melea
					["coord"] = { 55.6, 75.0, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2419,	-- Augmented Chain Belt
						2420,	-- Augmented Chain Boots
						2421,	-- Augmented Chain Bracers
						2422,	-- Augmented Chain Gloves
						3891,	-- Augmented Chain Helm
						2418,	-- Augmented Chain Leggings
						2417,	-- Augmented Chain Vest
						2424,	-- Brigandine Belt
						2426,	-- Brigandine Boots
						2427,	-- Brigandine Bracers
						2428,	-- Brigandine Gloves
						3894,	-- Brigandine Helm
						2425,	-- Brigandine Leggings
						2423,	-- Brigandine Vest
						847,	-- Chainmail Armor
						1845,	-- Chainmail Belt
						849,	-- Chainmail Boots
						1846,	-- Chainmail Bracers
						850,	-- Chainmail Gloves
						848,	-- Chainmail Pants
						2451,	-- Crested Heater Shield
						2448,	-- Heavy Pavise
						17189,	-- Metal Buckler
						17190,	-- Ornate Buckler
						2392,	-- Light Mail Armor
						2393,	-- Light Mail Belt
						2395,	-- Light Mail Boots
						2396,	-- Light Mail Bracers
						2397,	-- Light Mail Gloves
						2394,	-- Light Mail Leggings
						2149,	-- Polished Scale Boots
						2150,	-- Polished Scale Bracers
						2151,	-- Polished Scale Gloves
						2152,	-- Polished Scale Leggings
						2153,	-- Polished Scale Vest
						8094,	-- Platemail Armor
						8088,	-- Platemail Belt
						8089,	-- Platemail Boots
						8090,	-- Platemail Bracers
						8091,	-- Platemail Gloves
						8092,	-- Platemail Helm
						8093,	-- Platemail Leggings
						2148,	-- Polished Scale Belt
						1853,	-- Scalemail Belt
						287,	-- Scalemail Boots
						1852,	-- Scalemail Bracers
						718,	-- Scalemail Gloves
						286,	-- Scalemail Pants
						285,	-- Scalemail Vest
					}},
					["groups"] = {
						i(2380),	-- Tarnished Chain Belt
						i(2383),	-- Tarnished Chain Boots
						i(2384),	-- Tarnished Chain Bracers
						i(2385),	-- Tarnished Chain Gloves
						i(2381),	-- Tarnished Chain Leggings
						i(2379),	-- Tarnished Chain Vest
					},
				}),
				n(4171, {	-- Merelyssa
					["coord"] = { 61.6, 63.8, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
					-- added all
						2520,	-- Broadsword
						1198,	-- Claymore
						851,	-- Cutlass
						922,	-- Dacian Falx
						2024,	-- Espadon
						2528,	-- Falchion
						2207,	-- Jambiya
						2209,	-- Kris
						923,	-- Longsword
						2526,	-- Main Gauche
						2208,	-- Poniad
						2534,	-- Rondel
						2027,	-- Scimitar
					}},
				}),
				n(50305, {	-- Moon Priestess Lasara <Darnassus Quartermaster>
					["coord"] = { 36.17, 48.49, DARNASSUS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(45579, {	-- Darnassus Tabard
							["timeline"] = { ADDED_3_1_0 },
						}),
						i(64887, {	-- Cape of Darnassus
							["minReputation"] = { FACTION_DARNASSUS, EXALTED },	-- Darnassus, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64888, {	-- Mantle of Darnassus
							["minReputation"] = { FACTION_DARNASSUS, EXALTED },	-- Darnassus, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64886, {	-- Shroud of Darnassus
							["minReputation"] = { FACTION_DARNASSUS, EXALTED },	-- Darnassus, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67526, {	-- Darnassian Satchel
							["minReputation"] = { FACTION_DARNASSUS, REVERED },	-- Darnassus, Revered.
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				n(4233, {	-- Mythidan
					["coord"] = { 60.4, 63.4, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						925,	-- Flail
						1197,	-- Giant Mace
						2030,	-- Gnarled Staff
						2028,	-- Hammer
						928,	-- Long Staff
						852,	-- Mace
						924,	-- Maul
						854,	-- Quarter Staff
						2026,	-- Rock Hammer
					}},
				}),
				n(4229, {	-- Mythrin'dir <Trade Supplies> [TBC+] / Mythrin'dir <General Trade Supplier>
					["coords"] = {
						-- #if AFTER CATA
						{ 58.2, 35.0, DARNASSUS },
						-- #else
						{ 61.0, 17.7, DARNASSUS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(20854, {	-- Design: Amulet of the Moon (RECIPE!)
							["timeline"] = { ADDED_2_0_5 },
							["isLimited"] = true,
						})),
						i(11223, {	-- Formula: Enchant Bracer - Dodge (RECIPE!) / Formula: Enchant Bracer - Deflection
							["isLimited"] = true,
						}),
						i(16217, {	-- Formula: Enchant Shield - Greater Stamina (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(209948, {	-- Relaeron <Caretaker>
					["description"] = "Use the musk and tame a Deer and then bring it to Relaeron.",
					["coord"] = { 39.8, 9.2, DARNASSUS },
					["cost"] = {{ "i", 208607, 1 }},	-- Deer Musk
					["maps"] = { TELDRASSIL },
					["crs"] = { 883 },	-- Deer
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(206032, {	-- Rune of Carve
							["classes"] = { HUNTER },
							["groups"] = {
								recipe(425758),	-- Engrave Gloves - Carve
							},
						}),
					},
				})),
				-- #endif
				n(52643, {	-- Rissa Halding <Mining Supplies>
					["coord"] = { 50.25, 32.6, DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{ "sub", "common_vendor", 4256 }},	-- Golnir Bouldertoe <Mining Supplies>
					["timeline"] = { ADDED_4_0_1 },
				}),
				n(4225, {	-- Saenorion <Leatherworking Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 60.0, 37.2, DARNASSUS },
						-- #else
						{ 63.7, 22.3, DARNASSUS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = { {"sub", "common_vendor", 5565} },	-- Jillian Tanner <Leatherworking Supplies>
					["groups"] = {
						i(18949, {	-- Pattern: Barbaric Bracers (RECIPE!)
							["isLimited"] = true,
						}),
						i(7451, {	-- Pattern: Green Whelp Bracers (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(5191, {	-- Shalumon <Tabard Vendor>
					["coords"] = {
						-- #if AFTER CATA
						{ 64.6, 37.8, DARNASSUS },
						-- #else
						{ 70.4, 23.2, DARNASSUS },
						-- #endif
					},
					["sym"] = {{"sub", "common_vendor", 5193}},	-- Rebecca Laughlin <Tabard Designer>
					["races"] = ALLIANCE_ONLY,
				}),
				n(8665, {	-- Shylenai <Owl Trainer>
					["coords"] = {
						-- #if AFTER CATA
						{ 64.0, 53.6, DARNASSUS },
						-- #else
						{ 69.8, 45.4, DARNASSUS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8500),	-- Great Horned Owl (PET!)
						i(8501),	-- Hawk Owl (PET!)
					},
				}),
				n(52644, {	-- Tarien Silverdew <Jewelcrafting Supplies>
					["coord"] = { 54.6, 29.8, DARNASSUS },
					["timeline"] = { ADDED_4_1_0 },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{ "sub", "common_recipes_vendor", 50480 }},	-- Isabel Jones <Jewelcrafting Supplies>
				}),
				n(4235, {	-- Turian <Thrown Weapons Merchant>
					["coords"] = {
						-- #if AFTER CATA
						{ 59.6, 67.4, DARNASSUS },
						-- #else
						{ 62.7, 65.6, DARNASSUS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(12247, {	-- Broad Bladed Knife
							["isLimited"] = true,
						}),
					},
				}),
				n(4226, {	-- Ulthir <Alchemy Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 54.6, 39.6, DARNASSUS },
						-- #else
						{ 55.8, 24.5, DARNASSUS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5642, {	-- Recipe: Free Action Potion (RECIPE!)
							["isLimited"] = true,
						}),
						i(5643, {	-- Recipe: Great Rage Potion (RECIPE!)
							["isLimited"] = true,
						}),
						i(13477, {	-- Recipe: Superior Mana Potion (RECIPE!)
							["timeline"] = { REMOVED_2_0_1 },	-- Moved to Trainers
						}),
					},
				}),
				n(4228, {	-- Vaean <Enchanting Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 56.5, 32.2, DARNASSUS },
						-- #else
						{ 58.6, 14.7, DARNASSUS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						-- #if AFTER CATA
						{"sub", "common_recipes_vendor", 1318},	-- Jessara Cordell <Enchanting Supplies>
						-- #endif
						{ "select","itemID",
							20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
							20752,	-- Formula: Minor Mana Oil (RECIPE!)
							20758,	-- Formula: Minor Wizard Oil (RECIPE!)
							-- #if BEFORE CATA
							6342,	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
							-- #endif
							22307,	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
						},
					},
				}),
				n(4175, {	-- Vinasia <Cloth Armor Merchant>
					["coords"] = {
						-- #if AFTER CATA
						{ 57.9, 71.8, DARNASSUS },
						-- #else
						{ 60.7, 72.5, DARNASSUS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2435,	-- Embroidered Armor
						3587,	-- Embroidered Belt
						2438,	-- Embroidered Boots
						3588,	-- Embroidered Bracers
						2440,	-- Embroidered Gloves
						3892,	-- Embroidered Hat
						2437,	-- Embroidered Pants
						837,	-- Heavy Weave Armor
						3589,	-- Heavy Weave Belt
						3590,	-- Heavy Weave Bracers
						839,	-- Heavy Weave Gloves
						838,	-- Heavy Weave Pants
						840,	-- Heavy Weave Shoes
						3602,	-- Knitted Belt
						3603,	-- Knitted Bracers
						793,	-- Knitted Gloves
						794,	-- Knitted Pants
						792,	-- Knitted Sandals
						795,	-- Knitted Tunic
						2160,	-- Padded Armor
						3591,	-- Padded Belt
						2156,	-- Padded Boots
						3592,	-- Padded Bracers
						2158,	-- Padded Gloves
						2159,	-- Padded Pants
						3593,	-- Russet Belt
						2432,	-- Russet Boots
						3594,	-- Russet Bracers
						2434,	-- Russet Gloves
						3889,	-- Russet Hat
						2431,	-- Russet Pants
						2429,	-- Russet Vest
						3597,	-- Thick Cloth Belt
						3598,	-- Thick Cloth Bracers
						203,	-- Thick Cloth Gloves
						201,	-- Thick Cloth Pants
						202,	-- Thick Cloth Shoes
						200,	-- Thick Cloth Vest
					}},
					["groups"] = {
						i(12256, {	-- Cindercloth Leggings
							["isLimited"] = true,
						}),
						i(2121),	-- Thin Cloth Armor
						i(3600),	-- Thin Cloth Bracers
						i(3599),	-- Thin Cloth Belt
						i(2119),	-- Thin Cloth Gloves
						i(2120),	-- Thin Cloth Pants
						i(2117),	-- Thin Cloth Shoes
					},
				}),
			}),
		},
	}),
}));
