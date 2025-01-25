-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(ISKAARA_TUSKARR, {
		n(RENOWN, {
			n(QUESTS, bubbleDownRep(FACTION_ISKAARA_TUSKARR, {
				{		-- RENOWN 1 --
					q(72435, {	-- Orientation: Iskaara
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
					}),
				}, {	-- RENOWN 2 --
					q(70936, {	-- Stolen Tuskaar Totems
						["provider"] = { "n", 186448 },	-- Elder Poa
						["coord"] = { 12.4, 49.3, THE_AZURE_SPAN },
					}),
					q(72279, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198866),	-- Small Iskaaran Supply Pack
						},
					}),
					------ BoP Sacred Tuskarr Totem ------
					q(70926, {	-- Stolen Totems
						["sourceQuests"] = { 70936 },	-- Stolen Tuskaar Totems
						["provider"] = { "n", 186448 },	-- Elder Poa
						["coord"] = { 12.4, 49.3, THE_AZURE_SPAN },
						["maxReputation"] = { FACTION_ISKAARA_TUSKARR, 30 },
						["cost"] = {{ "i", 200071, 1 }},	-- 1x Sacred Tuskarr Totem
						["repeatable"] = true,
					}),
					q(70927, {	-- More Stolen Totems
						["sourceQuests"] = { 70936 },	-- Stolen Tuskaar Totems
						["provider"] = { "n", 186448 },	-- Elder Poa
						["coord"] = { 12.4, 49.3, THE_AZURE_SPAN },
						["maxReputation"] = { FACTION_ISKAARA_TUSKARR, 30 },
						["cost"] = {{ "i", 200071, 5 }},	-- 5x Sacred Tuskarr Totem
						["repeatable"] = true,
					}),
					------ BoA Sacred Tuskarr Totem ------
					q(71040, {	-- Stolen Totems
						["sourceQuests"] = { 70936 },	-- Stolen Tuskaar Totems
						["provider"] = { "n", 186448 },	-- Elder Poa
						["coord"] = { 12.4, 49.3, THE_AZURE_SPAN },
						["maxReputation"] = { FACTION_ISKAARA_TUSKARR, 30 },
						["cost"] = {{ "i", 200449, 1 }},	-- 1x Sacred Tuskarr Totem
						["repeatable"] = true,
					}),
					q(71041, {	-- More Stolen Totems
						["sourceQuests"] = { 70936 },	-- Stolen Tuskaar Totems
						["provider"] = { "n", 186448 },	-- Elder Poa
						["coord"] = { 12.4, 49.3, THE_AZURE_SPAN },
						["maxReputation"] = { FACTION_ISKAARA_TUSKARR, 30 },
						["cost"] = {{ "i", 200449, 5 }},	-- 5x Sacred Tuskarr Totem
						["repeatable"] = true,
					}),
				}, {	-- RENOWN 3 --
					q(70938, {	-- Community Feasts
						["description"] = "Spawns Anywhere on Dragon Isles.",
						["provider"] = { "n", 197631 },	-- Rowie
						["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
					}),
					q(72385, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198866),	-- Small Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 4 --
					q(70939, {	-- Cooking Utensils
						["provider"] = { "n", 186547 },	-- Lil Ki
						["coord"] = { 13.5, 48.7, THE_AZURE_SPAN },
						["g"] = {
							i(200749),	-- Tuskarr Clobbering Board
							i(200748),	-- Tuskarr Ulu Knife
							i(199892),	-- Tuskarr Traveling Soup Pot
						},
					}),
					q(72386, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198866),	-- Small Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 5 --
					q(70940, {	-- Tuskarr Champion's Tales
						["provider"] = { "n", 186448 },	-- Elder Poa
						["coord"] = { 12.4, 49.3, THE_AZURE_SPAN },
					}),
					q(72291, {	-- Story of a Memorable Victory
						-- ["sourceQuests"] = { 70940 },	-- Tuskarr Champion's Tales
						["provider"] = { "i", 201470 },	-- Story of a Memorable Victory
						["isWeekly"] = true,
					}),
					q(72875, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						-- technically not accurate, but no other way to lock this properly for first character
						["lockCriteria"] = { 1, "questID", 72387 },	-- Dragon Isles Supplies [Renown 6]
						["DisablePartySync"] = true,
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198866),	-- Small Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 6 --
					q(70953, {	-- Tuskarr Headwear
						["provider"] = { "n", 196018 },	-- Omapurita
						["coord"] = { 14.0, 49.3, THE_AZURE_SPAN },
						["g"] = {
							i(199538),	-- Azure Ear Warmer
							i(199535),	-- Crimson Ear Warmer
							i(199537),	-- Forest Green Ear Warmer
							i(199536),	-- Ocean Grey Ear Warmer
						},
					}),
					q(72387, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198866),	-- Small Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 7 --
					q(70954, {	-- Mounting Curiosity
						["provider"] = { "n", 196544 },	-- Norukk
						["coord"] = { 12.9, 48.6, THE_AZURE_SPAN },
						["g"] = {
							i(197101),	-- Highland Drake: Bushy Brow (MM!)
							i(197155, {	-- Highland Drake: Finned Neck (MM!)
								["timeline"] = { ADDED_10_0_7 },
							}),
							i(197114),	-- Highland Drake: Multi-Horned Head (MM!)
							i(197132),	-- Highland Drake: Spiked Cheek (MM!)
						},
					}),
					q(72388, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198866),	-- Small Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 8 --
					q(72389, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						-- technically not accurate, but no other way to lock this properly for first character
						["lockCriteria"] = { 1, "questID", 72390 },	-- Dragon Isles Supplies [Renown 9]
						["DisablePartySync"] = true,
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198866),	-- Small Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 9 --
					q(70959, {	-- Cute and Cuddly
						["description"] = "Runs around Iskaara.",
						["provider"] = { "n", 186564 },	-- Jiq
						["coord"] = { 13.5, 49.2, THE_AZURE_SPAN },
						["g"] = {
							i(193837),	-- Backswimmer Timbertooth (PET!)
							i(193225),	-- Whiskuk (PET!)
						},
					}),
					q(72390, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198866),	-- Small Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 10 --
					q(72391, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198866),	-- Small Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 11 --
					q(68863, {	-- A Lost Tribe
						["description"] = "Spawns Anywhere on Dragon Isles.",
						["provider"] = { "n", 197631 },	-- Rowie
						["maps"] = { THE_WAKING_SHORES, OHNAHRAN_PLAINS, THE_AZURE_SPAN, THALDRASZUS, VALDRAKKEN },
						["isBreadcrumb"] = true,
					}),
					q(68640, {	-- Sudden Isolation
						["sourceQuests"] = { 68863 },	-- A Lost Tribe
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
					}),
					q(66409, {	-- Pressing Matters
						["sourceQuests"] = { 68640 },	-- Sudden Isolation
						["provider"] = { "n", 188301 },	-- Guard Hakota
						["coord"] = { 55.1, 38.3, THE_WAKING_SHORES },
						["g"] = {
							i(191855),	-- Qalashi Trophy (QI!)
						},
					}),
					q(66410, {	-- Worst Impressions
						["sourceQuests"] = { 66409 },	-- Pressing Matters
						["provider"] = { "n", 188301 },	-- Guard Hakota
						["coord"] = { 55.1, 38.3, THE_WAKING_SHORES },
					}),
					q(66411, {	-- Troubled Waters
						["sourceQuests"] = { 66410 },	-- Worst Impressions
						["provider"] = { "n", 188283 },	-- Elder Unujaak
						["coord"] = { 53.7, 37.9, THE_WAKING_SHORES },
						["g"] = {
							i(192191),	-- Tuskarr Fishing Net (QI!)
							i(191858),	-- Succulent Snapper Meat (QI!)
						},
					}),
					q(66417, {	-- Salvaging Supplies
						["sourceQuests"] = { 66410 },	-- Worst Impressions
						["provider"] = { "n", 188285 },	-- Crafter Kuliqa
						["coord"] = { 53.6, 38.0, THE_WAKING_SHORES },
						["g"] = {
							i(191863),	-- Waterlogged Wood (QI!)
							i(191862),	-- Whalebone Fragment (QI!)
						},
					}),
					q(66413, {	-- Encroaching Heat
						["sourceQuests"] = { 66410 },	-- Worst Impressions
						["provider"] = { "o", 384405 },	-- Half-Boiled Fish
						["coord"] = { 53.1, 35.3, THE_WAKING_SHORES },
						["g"] = {
							i(201787),	-- Recipe: Filet of Fangs (RECIPE!)
							i(201786),	-- Recipe: Salt-Baked Fishcake (RECIPE!)
							i(201785),	-- Recipe: Seamoth Surprise (RECIPE!)
							i(201784),	-- Recipe: Timely Demise (RECIPE!)
							i(191859),	-- Half-Boiled Fish (QI!)
						},
					}),
					q(66418, {	-- Testing the Tuskaprsenal
						["sourceQuests"] = { 66417 },	-- Salvaging Supplies
						["provider"] = { "n", 188285 },	-- Crafter Kuliqa
						["coord"] = { 54.3, 38.7, THE_WAKING_SHORES },
						["g"] = {
							i(199830),	-- Tuskarr Training Dummy (TOY!)
						},
					}),
					q(66414, {	-- All But One
						["sourceQuests"] = {
							66418,	-- Testing the Tuskaprsenal
							66411,	-- Troubled Waters
						},
						["provider"] = { "n", 187323 },	-- Tutaqan
						["coord"] = { 53.7, 38.0, THE_WAKING_SHORES },
					}),
					q(66440, {	-- Closure
						["sourceQuests"] = { 66414 },	-- All But One
						["provider"] = { "n", 188283 },	-- Elder Unujaak
						["coord"] = { 55.0, 36.5, THE_WAKING_SHORES },
					}),
					q(66431, {	-- In Mourning
						["sourceQuests"] = { 66440 },	-- Closure
						["provider"] = { "n", 188283 },	-- Elder Unujaak
						["coord"] = { 53.6, 39.3, THE_WAKING_SHORES },
					}),
					q(66415, {	-- The Only Way Past Is Through
						["sourceQuests"] = { 66431 },	-- In Mourning
						["provider"] = { "n", 187323 },	-- Tutaqan
						["coord"] = { 53.9, 41.3, THE_WAKING_SHORES },
						["g"] = {
							i(200188),	-- Broken Fishing Pole (QI!)
							i(200191),	-- Ottuk Lure (QI!)
							i(200190),	-- Stuffed Duckling Toy (QI!)
						},
					}),
					q(66443, {	-- Calling the Hunting Party
						["description"] = "Automatically given after the previous quest.",
						["sourceQuests"] = { 66415 },	-- The Only Way Past Is Through
						["coord"] = { 53.9, 41.3, THE_WAKING_SHORES },
					}),
					q(66444, {	-- While the Iron Is Hot
						["sourceQuests"] = { 66443 },	-- Calling the Hunting Party
						["provider"] = { "n", 187323 },	-- Tutaqan
						["coord"] = { 53.9, 38.1, THE_WAKING_SHORES },
						["g"] = {
							r(390631),	-- Ottuk Taming (CI!)
							i(201783),	-- Tutaqan's Commendation
						},
					}),
					q(72392, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						-- technically not accurate, but no other way to lock this properly for first character
						-- 2024-05-16: This quest was no longer locked, possibly with 10.2.7
						-- #IF BEFORE 10.2.7
						["lockCriteria"] = { 1, "questID", 72393 },	-- Dragon Isles Supplies [Renown 12]
						["DisablePartySync"] = true,
						--["timeline"] = { REMOVED_11_0_0 },	-- This one was not removed probably
						-- #ENDIF
						["g"] = {
							i(198866),	-- Small Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 12 --
					q(70960, {	-- Trader's Apparel
						["provider"] = { "n", 196016 },	-- Lontupit
						["coord"] = { 14.0, 49.4, THE_AZURE_SPAN },
						["g"] = {
							i(199872),	-- Tuskarr Trader's Cloak
						},
					}),
					q(72393 , {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198866),	-- Small Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 13 --
					q(70955, {	-- Fascinating Fliers
						["provider"] = { "n", 196544 },	-- Norukk
						["coord"] = { 12.9, 48.6, THE_AZURE_SPAN },
						["g"] = {
							i(197153),	-- Highland Drake: Bladed Tail (MM!)
							i(197139),	-- Highland Drake: Large Spotted Pattern (MM!)
							i(197123),	-- Highland Drake: Thorn Horns (MM!)
						},
					}),
					q(72394 , {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198866),	-- Small Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 14 --
					q(70963, {	-- Wrist Support
						["provider"] = { "n", 186449 },	-- Arvik
						["coord"] = { 12.9, 48.8, THE_AZURE_SPAN },
					}),
					q(72318, {	-- Iskaaran Crafter's Knowledge
						["provider"] = { "n", 194059 },	-- Rokkutuk
						["coord"] = { 13.8, 50.0, THE_AZURE_SPAN },
						["requireSkill"] = ENCHANTING,
						["g"] = {
							i(201709),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72319, {	-- Iskaaran Crafter's Knowledge
						["provider"] = { "n", 194059 },	-- Rokkutuk
						["coord"] = { 13.8, 50.0, THE_AZURE_SPAN },
						["requireSkill"] = HERBALISM,
						["g"] = {
							i(201705),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72320, {	-- Iskaaran Crafter's Knowledge
						["provider"] = { "n", 194059 },	-- Rokkutuk
						["coord"] = { 13.8, 50.0, THE_AZURE_SPAN },
						["requireSkill"] = JEWELCRAFTING,
						["g"] = {
							i(201712),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72321, {	-- Iskaaran Crafter's Knowledge
						["provider"] = { "n", 194059 },	-- Rokkutuk
						["coord"] = { 13.8, 50.0, THE_AZURE_SPAN },
						["requireSkill"] = LEATHERWORKING,
						["g"] = {
							i(201713),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72322, {	-- Iskaaran Crafter's Knowledge
						["provider"] = { "n", 194059 },	-- Rokkutuk
						["coord"] = { 13.8, 50.0, THE_AZURE_SPAN },
						["requireSkill"] = SKINNING,
						["g"] = {
							i(201714),	-- Notebook of Crafting Knowledge
						},
					}),
				}, {	-- RENOWN 15 --
					q(70978, {	-- Dragon Isles Champion's Tales
						["provider"] = { "n", 186448 },	-- Elder Poa
						["coord"] = { 12.4, 49.3, THE_AZURE_SPAN },
					}),
					q(72292, {	-- Story of a Spectacular Victory
						-- ["sourceQuests"] = { 70978 },	-- Dragon Isles Champion's Tales (inaccurate)
						["provider"] = { "i", 201471 },	-- Story of a Spectacular Victory
						["isWeekly"] = true,
					}),
					q(72280, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198867),	-- Large Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 16 --
					q(70966, {	-- Trading Made Easier
						["provider"] = { "n", 187869 },	-- Tikukk
						["coord"] = { 12.6, 50.2, THE_AZURE_SPAN },
						["g"] = {
							i(199863),	-- Burgundy Tuskarr Backpack
							i(199862),	-- Dark Tuskarr Backpack
							i(199860),	-- Rustic Tuskarr Backpack
							i(199861),	-- Tan Tuskarr Backpack
						},
					}),
					q(72395, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198867),	-- Large Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 17 --
					q(70967, {	-- Fishy Entertainment
						["provider"] = { "n", 186554 },	-- Nunvuq
						["coord"] = { 13.8, 49.2, THE_AZURE_SPAN },
						["g"] = {
							i(199894),	-- Fisherman's Folly Rack (TOY!)
							i(199896),	-- Rubbery Fish Head (TOY!)
						},
					}),
					q(72632, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						["lockCriteria"] = { 1, "questID", 70967 },	-- Fishy Entertainment [Renown 17]
						["DisablePartySync"] = true,
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198867),	-- Large Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 18 --
					q(72633, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						-- technically not accurate, but no other way to lock this properly for first character
						["lockCriteria"] = { 1,
							"questID", 70956,	-- Of Azure Scales [Renown 19]
							"questID", 72634,	-- Dragon Isles Supplies [Renown 19]
						},
						["DisablePartySync"] = true,
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198867),	-- Large Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 19 --
					q(70956, {	-- Of Azure Scales
						["provider"] = { "n", 196544 },	-- Norukk
						["coord"] = { 12.9, 48.6, THE_AZURE_SPAN },
						-- TODO: this has some source quest? otherwise 72634 is offerred instead
						["altQuests"] = { 72634 },	-- Dragon Isles Supplies [Renown 19]
						["g"] = {
							i(197390),	-- Renewed Proto-Drake: Blue Scales (MM!)
							i(197612),	-- Windborne Velocidrake: Blue Scales (MM!)
							i(197012),	-- Cliffside Wylderdrake: Blue Scales (MM!)
							i(203350, {	-- Winding Slitherdrake: Blue Scales (MM!)
								["timeline"] = { ADDED_10_1_0 },
							}),
						},
					}),
					q(72634, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						["altQuests"] = { 70956 },	-- Of Azure Scales [Renown 19]
						["DisablePartySync"] = true,
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198867),	-- Large Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 20 --
					q(72635, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.3, THE_AZURE_SPAN },
						-- technically not accurate, but no other way to lock this properly for first character
						["lockCriteria"] = { 1, "questID", 70968 },	-- Of the Cloth, of the Community [Renown 21]
						["DisablePartySync"] = true,
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198867),	-- Large Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 21 --
					q(70968, {	-- Of the Cloth, of the Community
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.1, THE_AZURE_SPAN },
						["g"] = {
							i(198731),	-- Iskaara Tuskarr Tabard
						},
					}),
					q(72636, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.1, THE_AZURE_SPAN },
						-- technically not accurate, but no other way to lock this properly for first character
						["lockCriteria"] = { 1, "questID", 70964 },	-- Shrug it On! [Renown 22]
						["DisablePartySync"] = true,
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198867),	-- Large Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 22 --
					q(70964, {	-- Shrug it On!
						["provider"] = { "n", 186449 },	-- Arvik
						["coord"] = { 12.9, 48.8, THE_AZURE_SPAN },
					}),
				}, {	-- RENOWN 23 --
					q(70962, {	-- A Comfy Seat
						["provider"] = { "n", 196016 },	-- Lontupit
						["coord"] = { 14.0, 49.4, THE_AZURE_SPAN },
					}),
					q(72637, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.1, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198867),	-- Large Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 24 --
					q(70971, {	-- Arms for Every Arm
						["provider"] = { "n", 186186 },	-- Hanu
						["coords"] = {
							{ 13.5, 48.2, THE_AZURE_SPAN },
							{ 12.9, 48.7, THE_AZURE_SPAN },
						},
						["g"] = {
							i(199879),	-- Tuskarr Fisherman's Dagger
							i(199881),	-- Tuskarr Fisherman's Harpoon
							i(199880),	-- Tuskarr Leviathan's Hook
							i(199882),	-- Tuskarr Mystic's Stave
							i(199883),	-- Tuskarr Sharktooth Bolt-Thrower
							i(199878),	-- Tuskarr Timber Splitter
						},
					}),
					q(72323, {	-- Iskaaran Crafting Mastery
						["provider"] = { "n", 194059 },	-- Rokkutuk
						["coord"] = { 13.8, 50.0, THE_AZURE_SPAN },
						["requireSkill"] = ENCHANTING,
						["g"] = {
							i(201709),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72324, {	-- Iskaaran Crafting Mastery
						["provider"] = { "n", 194059 },	-- Rokkutuk
						["coord"] = { 13.8, 50.0, THE_AZURE_SPAN },
						["requireSkill"] = HERBALISM,
						["g"] = {
							i(201717),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72325, {	-- Iskaaran Crafting Mastery
						["provider"] = { "n", 194059 },	-- Rokkutuk
						["coord"] = { 13.8, 50.0, THE_AZURE_SPAN },
						["requireSkill"] = JEWELCRAFTING,
						["g"] = {
							i(201712),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72326, {	-- Iskaaran Crafting Mastery
						["provider"] = { "n", 194059 },	-- Rokkutuk
						["coord"] = { 13.8, 50.0, THE_AZURE_SPAN },
						["requireSkill"] = LEATHERWORKING,
						["g"] = {
							i(201713),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72327, {	-- Iskaaran Crafting Mastery
						["provider"] = { "n", 194059 },	-- Rokkutuk
						["coord"] = { 13.8, 50.0, THE_AZURE_SPAN },
						["requireSkill"] = SKINNING,
						["g"] = {
							i(201718),	-- Notebook of Crafting Knowledge
						},
					}),
					q(72638, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.1, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198867),	-- Large Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 25 --
					q(70972, {	-- Our Loyal, Lanky Steeds
						["provider"] = { "n", 186462 },	-- Tatto
						["coord"] = { 13.8, 49.7, THE_AZURE_SPAN },
						["g"] = {
							i(198872),	-- Brown Scouting Ottuk (MOUNT!)
							i(200118),	-- Yellow Scouting Ottuk (MOUNT!)
						},
					}),
					q(72639, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.1, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(198867),	-- Large Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 26 --
					q(70976, {	-- Slacking and Sledding
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.1, THE_AZURE_SPAN },
						["g"] = {
							i(199899),	-- Iskaara Tug Sled (TOY!)
							i(198827),	-- Magical Snow Sled (TOY!)
						},
					}),
					q(72281, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.1, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(199473),	-- Overflowing Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 27 --
					q(72640, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.1, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(199473),	-- Overflowing Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 28 --
					q(70961, {	-- Shouldering the Needed Armor
						["provider"] = { "n", 196016 },	-- Lontupit
						["coord"] = { 14.0, 49.4, THE_AZURE_SPAN },
						["g"] = {
							i(199539),	-- Blue Tufted Shoulderpads
							i(199540),	-- Green Tufted Shoulderpads
							i(199541),	-- Grey Tufted Shoulderpads
							i(199542),	-- Red Tufted Shoulderpads
						},
					}),
					q(72641, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.1, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(199473),	-- Overflowing Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 29 --
					q(70977, {	-- Scaps Packs
						["provider"] = { "n", 187680 },	-- Scaps
						["sourceQuests"] = { 66223 },	-- Can We Keep It?
						["coord"] = { 12.9, 48.6, THE_AZURE_SPAN },
						["g"] = {
							i(198337),	-- Azure Paw Pack
							i(198338),	-- Black Paw Pack
							i(198339),	-- Dark Paw Pack
							i(198340),	-- Red Paw Pack
							i(198341),	-- Tan Paw Pack
						},
					}),
					q(72642, {	-- Dragon Isles Supplies
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.1, THE_AZURE_SPAN },
						["timeline"] = { REMOVED_11_0_0 },
						["g"] = {
							i(199473),	-- Overflowing Iskaaran Supply Pack
						},
					}),
				}, {	-- RENOWN 30 --
					q(70969, {	-- Becoming One of Our Community
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.1, THE_AZURE_SPAN },
						["g"] = {
							title(476),	-- <Name> of Iskaara
						},
					}),
					q(72328, {	-- Out Ferocious, Armored Steeds
						["provider"] = { "n", 186462 },	-- Tatto
						["coord"] = { 13.8, 49.7, THE_AZURE_SPAN },
						["lockCriteria"] = {2,
							"spellID", 376910,	-- Brown War Ottuk (MOUNT!)
							"spellID", 376913,	-- Yellow War Ottuk (MOUNT!)
						},
						["g"] = {
							i(201426),	-- Brown War Ottuk (MOUNT!)
							i(201425),	-- Yellow War Ottuk (MOUNT!)
						},
					}),
					------ PARAGON ------
					q(66511, {	-- Renowned with the Iskaara Tuskarr
						["provider"] = { "n", 193006 },	-- Murik
						["coord"] = { 13.1, 49.1, THE_AZURE_SPAN },
						["isRepeatable"] = true,
						["g"] = {
							i(204379, {	-- Brimming Iskaaran Supply Pack
								["timeline"] = { ADDED_10_0_7 },
							}),
							i(199473, {	-- Overflowing Iskaaran Supply Pack
								["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_0_7 },
							}),
						},
					}),
				},
			})),
		}),
		i(200071),	-- Sacred Tuskarr Totem [BoP]
		i(200449),	-- Sacred Tuskarr Totem [BoA]
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(ISKAARA_TUSKARR, {
		n(QUESTS, {
			q(72781),	-- Triggered with 'Tuskarr Fishing Gear' (questID 71230) (spellID 397063)
			q(71184),	-- Triggered with 'While the Iron Is Hot' (questID 66444) (spellID 390818)
			q(72753),	-- Triggered with 'While the Iron Is Hot' (questID 66444) (spellID 397079)
			q(72400),	-- Triggered when hitting Renown 11
			q(72782),	-- Triggered with 'A Lost Tribe' (questID 68863) (spellID 397064)
		}),
	}),
})));