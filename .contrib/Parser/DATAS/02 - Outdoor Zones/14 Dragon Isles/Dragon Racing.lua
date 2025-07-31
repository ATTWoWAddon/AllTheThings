---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	skyriding(n(DRAGONRIDING_RACING, {
		n(WORLD_QUESTS, {
			["maps"] = {
				OHNAHRAN_PLAINS,
				THALDRASZUS,
				THE_AZURE_SPAN,
				THE_WAKING_SHORES,
			},
			["groups"] = {
				i(199192, {	-- Dragon Racer's Purse
					i(196979),	-- Cliffside Wylderdrake: Curled Head Horns (MM!)
					i(197017),	-- Cliffside Wylderdrake: Large Tail Spikes (MM!)
					i(196971),	-- Cliffside Wylderdrake: Spiked Brow (MM!)
					i(197128),	-- Highland Drake: Curled Back Horns (MM!)
					i(197152),	-- Highland Drake: Hooked Tail (MM!)
					i(197113),	-- Highland Drake: Swept Spiked Head (MM!)
					i(197366),	-- Renewed Proto-Drake: Dual Horned Crest (MM!)
					i(197387),	-- Renewed Proto-Drake: Thin Spined Jaw (MM!)
					i(197605),	-- Windborne Velocidrake: Curled Horns (MM!)
					i(197619),	-- Windborne Velocidrake: Hooked Snout (MM!)
				}),
				i(200609),	-- Dragon Racing Purse - First Place
				i(200610),	-- Dragon Racing Purse - Second Place
				i(200611),	-- Dragon Racing Purse - Third Place
			},
		}),
			n(WORLD_QUESTS, sharedData({
				["sourceQuests"] = {
					71232,	-- Renown of the Dragon Isles
					DF_ACCOUNT_CAMPAIGN_QUEST,
				},
				["sourceQuestNumRequired"] = 1,
				["maxReputation"] = { FACTION_VALDRAKKEN_ACCORD, 30 },
				["isWorldQuest"] = true,
				["sym"] = {{"select","itemID",199192}},	-- Dragon Racer's Purse
			}, {
				------ Waking Shores ------
				q(70415, {	-- Dragonrider Racing - Apex Canopy River Run
					["coord"] = { 23.2, 84.2, THE_WAKING_SHORES }
				}),
				q(70413, {	-- Dragonrider Racing - Emberflow Flight
					["coord"] = { 42.0, 67.2, THE_WAKING_SHORES }
				}),
				q(70382, {	-- Dragonrider Racing - Ruby Lifeshrine Loop
					["coord"] = { 63.2, 70.8, THE_WAKING_SHORES },
				}),
				q(70416, {	-- Dragonrider Racing - Uktulut Coaster
					["coord"] = { 55.4, 41.2, THE_WAKING_SHORES },
				}),
				q(70418, {	-- Dragonrider Racing - Wild Preserve Circuit
					["coord"] = { 42.6, 94.4, THE_WAKING_SHORES }
				}),
				q(70412, {	-- Dragonrider Racing - Wild Preserve Slalom
					["coord"] = { 47.0, 85.6, THE_WAKING_SHORES }
				}),
				q(70417, {	-- Dragonrider Racing - Wingrest Roundabout
					["coord"] = { 73.2, 34.0, THE_WAKING_SHORES }
				}),
				q(70410, {	-- Dragonrider Racing - Flashfrost Flyover
					["coord"] = { 62.8, 74.0, THE_WAKING_SHORES }
				}),
				------ Ohn'ahran Plains ------
				q(70422, {	-- Dragonrider Racing - Emerald Garden Ascent
					["coord"] = { 25.6, 55.0, OHNAHRAN_PLAINS }
				}),
				q(70420, {	-- Dragonrider Racing - Fen Flythrough
					["coord"] = { 86.2, 35.8, OHNAHRAN_PLAINS }
				}),
				q(70423, {	-- Dragonrider Racing - Maruukai Dash
					["coord"] = { 59.8, 35.4, OHNAHRAN_PLAINS },
				}),
				q(70424, {	-- Dragonrider Racing - Mirror of the Sky Dash
					["coord"] = { 47.4, 70.6, OHNAHRAN_PLAINS }
				}),
				q(70712, {	-- Dragonrider Racing - River Rapids Route
					["coord"] = { 43.8, 66.8, OHNAHRAN_PLAINS }
				}),
				q(70421, {	-- Dragonrider Racing - Ravine River Run
					["coord"] = { 80.8, 72.0, OHNAHRAN_PLAINS }
				}),
				q(70419, {	-- Dragonrider Racing - Sundapple Copse Circuit
					["coord"] = { 63.8, 30.4, OHNAHRAN_PLAINS }
				}),
				------ The Azure Span ------
				q(70430, {	-- Dragonrider Racing - Archive Ambit
					["coord"] = { 42.2, 56.8, THE_AZURE_SPAN }
				}),
				q(70425, {	-- Dragonrider Racing - Azure Span Sprint
					["coord"] = { 47.8, 40.8, THE_AZURE_SPAN },
				}),
				q(70426, {	-- Dragonrider Racing - Azure Span Slalom
					["coord"] = { 20.8, 22.6, THE_AZURE_SPAN },
				}),
				q(70429, {	-- Dragonrider Racing - Frostland Flyover
					["coord"] = { 48.4, 35.8, THE_AZURE_SPAN }
				}),
				q(70428, {	-- Dragonrider Racing - Iskaara Tour
					["coord"] = { 16.4, 49.4, THE_AZURE_SPAN }
				}),
				q(70427, {	-- Dragonrider Racing - Vakthros Ascent
					["coord"] = { 71.2, 24.6, THE_AZURE_SPAN }
				}),
				------ Thaldraszus ------
				q(70434, {	-- Dragonrider Racing - Academy Ascent
					["coord"] = { 60.2, 41.8, THALDRASZUS }
				}),
				q(70436, {	-- Dragonrider Racing - Caverns Criss-Cross
					["coord"] = { 58.0, 33.6, THALDRASZUS }
				}),
				q(70433, {	-- Dragonrider Racing - Cliffside Circuit
					["coord"] = { 37.6, 49.0, THALDRASZUS }
				}),
				q(70431, {	-- Dragonrider Racing - Flowing Forst Flight
					["coord"] = { 57.8, 75.0, THALDRASZUS }
				}),
				q(70435, {	-- Dragonrider Racing - Garden Gallivant
					["coord"] = { 39.4, 76.2, THALDRASZUS }
				}),
				q(70432, {	-- Dragonrider Racing - Tyrhold Trial
					["coord"] = { 57.2, 66.8, THALDRASZUS }
				}),
			})),
			i(191140),	-- Bronze Timepiece
	})),
})));
