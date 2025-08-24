-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, n(EXPANSION_PRELAUNCH, bubbleDown({ ["timeline"] = { ADDED_9_0_1, REMOVED_9_0_2_LAUNCH } }, {
	expansion(EXPANSION.SL, {
		n(ACHIEVEMENTS, {
			ach(14750, {	-- Death Rising
				["sourceQuests"] = { 60871, 60869 },	-- With Hope in Hand (A, H)
				["maps"] = {
					ICECROWN,	-- achievement pops in your capital, but all the SQs are in Icecrown so it's probably helpful to see it there
					ORGRIMMAR,
					STORMWIND_CITY,
				},
			}),
		}),
		n(QUESTS, {
			-------------------------- Week 1 --------------------------
			q(60113, {	-- An Urgent Request (A)
				["lvl"] = { 50 },
			}),
			q(60115, {	-- An Urgent Request (H)
				["lvl"] = { 50 },
			}),
			q(60116, {	-- Cause for Distraction (A)
				["sourceQuest"] = 60113,	-- An Urgent Request (A)
				["qg"] = 167329,	-- Genn Greymane
				["coord"] = { 39.4, 64.1, STORMWIND_CITY },
				["lvl"] = { 50 },
			}),
			q(60669, {	-- Cause for Distraction (H)
				["sourceQuest"] = 60115,	-- An Urgent Request (H)
				["qg"] = 169928,	-- Lor'themar Theron
				["coord"] = { 49.2, 73.7, ORGRIMMAR },
				["lvl"] = { 50 },
			}),
			q(60117, {	-- Return of the Crusade (A)
				["sourceQuest"] = 60116,	-- Cause for Distraction (A)
				["qg"] = 167329,	-- Genn Greymane
				["coord"] = { 39.4, 64.1, STORMWIND_CITY },
				["lvl"] = { 50 },
			}),
			q(60670, {	-- Return of the Crusade (H)
				["sourceQuest"] = 60669,	-- Cause for Distraction (H)
				["qg"] = 169928,	-- Lor'themar Theron
				["coord"] = { 49.2, 73.7, ORGRIMMAR },
				["lvl"] = { 50 },
			}),
			q(59876, {	-- Field Reports (A)
				["sourceQuest"] = 60117,	-- Return of the Crusade (A)
				["qg"] = 166383,	-- Commander Gregor
				["coord"] = { 65.7, 77.1, STORMWIND_CITY },
				["lvl"] = { 50 },
				["groups"] = {
					i(177958),	-- Duskwood Report (QI!)
					i(177960),	-- Elwynn Report (QI!)
					i(177959),	-- Redridge Report (QI!)
				},
			}),
			q(60725, {	-- Field Reports (H)
				["sourceQuest"] = 60670,	-- Return of the Crusade (H)
				["qg"] = 169878,	-- Commander Throgg
				["coord"] = { 52.9, 77.3, ORGRIMMAR },
				["lvl"] = { 50 },
				["groups"] = {
					i(180232),	-- Dranosh'ar Blockade Report (QI!)
					i(180233),	-- Far Watch Post Report (QI!)
					i(180231),	-- Razor Hill Report (QI!)
				},
			}),
			q(60766, {	-- Damned Intruders (A)
				["sourceQuest"] = 59876,	-- Field Reports (A)
				["qg"] = 166184,	-- Lieutenant Vernon
				["coord"] = { 73.50, 47.20, DUSKWOOD },
				["lvl"] = { 50 },
			}),
			q(60759, {	-- Damned Intruders (H)
				["sourceQuest"] = 60725,	-- Field Reports (H)
				["qg"] = 170084,	-- Lieutenant Althera
				["coord"] = { 49.5, 59.4, NORTHERN_BARRENS },
				["lvl"] = { 50 },
			}),
			q(60767, {	-- Return of the Scourge (A)
				["sourceQuest"] = 60766,	-- Damned Intruders (A)
				["qg"] = 166184,	-- Lieutenant Vernon
				["coord"] = { 73.50, 47.20, DUSKWOOD },
				["lvl"] = { 50 },
				["groups"] = {
					i(178170),	-- Vernon's Field Report (QI!)
				},
			}),
			q(60761, {	-- Return of the Scourge (H)
				["sourceQuest"] = 60759,	-- Damned Intruders (H)
				["qg"] = 170084,	-- Lieutenant Althera
				["coord"] = { 49.4, 59.3, NORTHERN_BARRENS },
				["lvl"] = { 50 },
				["groups"] = {
					i(180269),	-- Althera's Field Report (QI!)
				},
			}),
			q(61486, {	-- The Banshee's Champion (A)
				["sourceQuest"] = 60767,	-- Return of the Scourge (A)
				["qg"] = 172510,	-- Light's Hope Messenger
				["coord"] = { 65.55, 77.0, STORMWIND_CITY },
				["lvl"] = { 50 },
			}),
			q(61488, {	-- The Banshee's Champion (H)
				["sourceQuest"] = 60761,	-- Return of the Scourge (H)
				["qg"] = 172514,	-- Light's Hope Messenger
				["coord"] = { 53.0, 77.0, ORGRIMMAR },
				["lvl"] = { 50 },
			}),
			q(59877, {	-- A Message from Icecrown (A)
				["sourceQuest"] = 60767,	-- Return of the Scourge (A)
				["qg"] = 166383,	-- Commander Gregor
				["coord"] = { 65.7, 77.1, STORMWIND_CITY },
				["lvl"] = { 50 },
			}),
			q(60727, {	-- A Message from Icecrown (H)
				["sourceQuest"] = 60761,	-- Return of the Scourge (H)
				["qg"] = 169878,	-- Commander Throgg
				["coord"] = { 52.9, 77.2, ORGRIMMAR },
				["lvl"] = { 50 },
			}),
			q(60169, {	-- Securing the Area
				["sourceQuests"] = {
					59877,	-- A Message from Icecrown (A)
					60727,	-- A Message from Icecrown (H)
				},
				["qg"] = 167045,	-- Justicar Mariel Trueheart
				["coord"] = { 71.0, 22.0, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(60003, {	-- A Valiant Effort (A)
				["sourceQuest"] = 59877,	-- A Message from Icecrown (A)
				["qg"] = 168123,	-- Crusader Renn
				["coord"] = { 71.0, 22.0, ICECROWN },
				["lvl"] = { 50 },
				["groups"] = {
					i(183797),	-- Crusader's Dressing (A) (QI!)
				},
			}),
			q(60004, {	-- A Valiant Effort (H)
				["sourceQuest"] = 60727,	-- A Message from Icecrown (H)
				["qg"] = 168123,	-- Crusader Renn
				["coord"] = { 71.0, 22.0, ICECROWN },
				["lvl"] = { 50 },
				["groups"] = {
					i(183689),	-- Crusader's Dressing (H) (QI!)
				},
			}),
			q(62157, {	-- Scouting from a Safe Distance
				["sourceQuests"] = {
					60003,	-- A Valiant Effort (A)
					60004,	-- A Valiant Effort (H)
					60169,	-- Securing the Area
				},
				["qg"] = 168123,	-- Crusader Renn
				["coord"] = { 71.0, 22.0, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(60827, {	-- Advancing the Effort
				["sourceQuest"] = 62157,	-- Scouting from a Safe Distance
				["qg"] = 168123,	-- Crusader Renn
				["coord"] = { 71.0, 22.0, ICECROWN },
				["lvl"] = { 50 },
			}),
			-------------------------- Dailies --------------------------
			q(59863, {	-- Combat Nullifier 07-X
				["sourceQuest"] = 62157,	-- Scouting from a Safe Distance
				["qg"] = 173124,	-- Binkie Brightgear
				["coord"] = { 73.1, 35.6, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(59783, {	-- Cultist Captors
				["sourceQuest"] = 62157,	-- Scouting from a Safe Distance
				["qg"] = 168880,	-- Sentry Joren
				["coord"] = { 66.0, 21.9, ICECROWN },
				["lvl"] = { 50 },
				["groups"] = {
					i(181497),	-- Interrogator's Key (QI!)
				},
			}),
			q(62553, {	-- Delaying Their Efforts
				["sourceQuest"] = 62157,	-- Scouting from a Safe Distance
				["qg"] = 167045,	-- Justicar Mariel Trueheart
				["coord"] = { 71.0, 21.9, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(60841, {	-- Evacuation Effort
				["sourceQuest"] = 62157,	-- Scouting from a Safe Distance
				["qg"] = 167045,	-- Justicar Mariel Trueheart
				["coord"] = { 71.0, 21.9, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(62262, {	-- Fungal Feeding
				["sourceQuest"] = 62157,	-- Scouting from a Safe Distance
				["qg"] = 167572,	-- Crystal Brightspark
				["coord"] = { 71.6, 21.0, ICECROWN },
				["lvl"] = { 50 },
				["groups"] = {
					i(183139),	-- Mature Spore Sample (QI!)
				},
			}),
			q(59782, {	-- The Deathspeaker's Devout
				["sourceQuest"] = 62157,	-- Scouting from a Safe Distance
				["qg"] = 168880,	-- Sentry Joren
				["coord"] = { 66.0, 21.9, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(59878, {	-- Too Many Whelps
				["sourceQuest"] = 62157,	-- Scouting from a Safe Distance
				["qg"] = 167045,	-- Justicar Mariel Trueheart
				["coord"] = { 71.0, 21.9, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(59839, {	-- WARNING: This is Only a Test!
				["sourceQuest"] = 62157,	-- Scouting from a Safe Distance
				["qg"] = 172905,	-- Fizzix Blastbolt
				["coord"] = { 66.0, 22.4, ICECROWN },
				["lvl"] = { 50 },
			}),
			-------------------------- Week 2 --------------------------
			q(62162, {	-- A Message from the Justicar (A)
				["description"] = "Only available if you've done \"Advancing the Effort\" in week 1.",
				["sourceQuest"] = 60827,	-- Advancing the Effort
				["qg"] = 166383,	-- Commander Gregor
				["coord"] = { 65.7, 77.1, STORMWIND_CITY },
				["isBreadcrumb"] = true,
				["lvl"] = { 50 },
			}),
			q(61112, {	-- A Hunger for Flesh (A)
				["provider"] = { "i", 180712 },	-- Partially Digested Cloth
				["maps"] = { STORMWIND_CITY },
				["crs"] = {
					174621,	-- Bloodthirsty Ghoul
					171447,	-- Infectious Zombie
				},
				["lvl"] = { 50 },
			}),
			q(62163, {	-- A Message from the Justicar (H)
				["description"] = "Only available if you've done \"Advancing the Effort\" in week 1.",
				["sourceQuest"] = 60827,	-- Advancing the Effort
				["qg"] = 169878,	-- Commander Throgg
				["coord"] = { 52.9, 77.3, ORGRIMMAR },
				["isBreadcrumb"] = true,
				["lvl"] = { 50 },
			}),
			q(61114, {	-- A Hunger for Flesh (H)
				["provider"] = { "i", 180719 },	-- Partially Digested Leather
				["maps"] = { ORGRIMMAR },
				["crs"] = {
					174621,	-- Bloodthirsty Ghoul
					171447,	-- Infectious Zombie
				},
				["lvl"] = { 50 },
			}),
			q(60828, {	-- A New Foothold
				["sourceQuests"] = {
					62162,	-- A Message from the Justicar (A)
					62163,	-- A Message from the Justicar (H)
					62157,	-- Scouting from a Safe Distance
				},
				["qg"] = 168123,	-- Crusader Renn
				["coord"] = { 71.0, 22.0, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(60843, {	-- Cult Couture
				["sourceQuest"] = 60828,	-- A New Foothold
				["qg"] = 170467,	-- Crusader Renn
				["coord"] = { 44.9, 44.7, ICECROWN },
				["lvl"] = { 50 },
				["groups"] = {
					i(181253),	-- Collaborator's Hood (QI!)
					i(181254),	-- Collaborator's Robe (QI!)
				},
			}),
			q(62185, {	-- Fighting for Attention
				["sourceQuest"] = 60828,	-- A New Foothold
				["qg"] = 170467,	-- Crusader Renn
				["coord"] = { 44.9, 44.7, ICECROWN },
				["lvl"] = { 50 },
				["groups"] = {
					i(183698),	-- Torturer's Key (QI!)
				},
			}),
			q(60861, {	-- Secrets in Shadows
				["sourceQuests"] = {
					60843,	-- Cult Couture
					62185,	-- Fighting for Attention
				},
				["qg"] = 170467,	-- Crusader Renn
				["coord"] = { 44.9, 44.7, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(62225, {	-- Bursting the Bubble
				["sourceQuest"] = 60861,	-- Secrets in Shadows
				["provider"] = { "o", 357758 },	-- Plague Barrel
				["coord"] = { 61.4, 63.8, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(60867, {	-- A Message from Above
				["sourceQuest"] = 62225,	-- Bursting the Bubble
				["qg"] = 170467,	-- Crusader Renn
				["coord"] = { 44.9, 44.7, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(60932, {	-- Only Shadows Remain
				["sourceQuest"] = 60867,	-- A Message from Above
				["qg"] = 170467,	-- Crusader Renn
				["coord"] = { 44.9, 44.7, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(60871, {	-- With Hope in Hand (A)
				["sourceQuest"] = 60932,	-- Only Shadows Remain
				["qg"] = 170467,	-- Crusader Renn
				["coord"] = { 44.9, 44.7, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(60869, {	-- With Hope in Hand (H)
				["sourceQuest"] = 60932,	-- Only Shadows Remain
				["qg"] = 170467,	-- Crusader Renn
				["coord"] = { 44.9, 44.7, ICECROWN },
				["lvl"] = { 50 },
			}),
			-------------------------- Dailies --------------------------
			q(62365, {	-- Careful Creations
				["sourceQuest"] = 60932,	-- Only Shadows Remain
				["qg"] = 173997,	-- Darkrider Arly
				["coord"] = { 35.3, 66.3, ICECROWN },
				["lvl"] = { 50 },
				["groups"] = {
					i(183442),	-- Experimental Fluid (QI!)
				},
			}),
			q(62295, {	-- Cleaning Out the Vault
				["sourceQuest"] = 60932,	-- Only Shadows Remain
				["qg"] = 173869,	-- Crusader Renn
				["coord"] = { 42.8, 29.9, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(59847, {	-- Defending the Rampart
				["sourceQuest"] = 60932,	-- Only Shadows Remain
				["qg"] = 170467,	-- Crusader Renn
				["coord"] = { 44.9, 44.7, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(62584, {	-- Frontline Resupply
				["sourceQuest"] = 60932,	-- Only Shadows Remain
				["qg"] = 170467,	-- Crusader Renn
				["coord"] = { 44.9, 44.7, ICECROWN },
				["lvl"] = { 50 },
				["groups"] = {
					i(183832),	-- Salvaged Supplies (QI!)
				},
			}),
			q(59851, {	-- Frozen Solid
				["sourceQuest"] = 60932,	-- Only Shadows Remain
				["qg"] = 170467,	-- Crusader Renn
				["coord"] = { 44.9, 44.7, ICECROWN },
				["lvl"] = { 50 },
				["groups"] = {
					i(182199),	-- Brightspark's Bottled Blaze (QI!)
				},
			}),
			q(59772, {	-- Research Ruination
				["sourceQuest"] = 60932,	-- Only Shadows Remain
				["qg"] = 170467,	-- Crusader Renn
				["coord"] = { 44.9, 44.7, ICECROWN },
				["lvl"] = { 50 },
				-- i know i picked it up in this area, but not sure about the provider. didn't realize it wasn't added until i turned it in
			}),
			q(59838, {	-- Scourge War Machines
				["sourceQuest"] = 60932,	-- Only Shadows Remain
				["qg"] = 170467,	-- Crusader Renn
				["coord"] = { 44.9, 44.7, ICECROWN },
				["lvl"] = { 50 },
				["groups"] = {
					i(182313),	-- Satchel Charges (QI!)
				},
			}),
			q(62484, {	-- Werk In Progress
				["sourceQuest"] = 60932,	-- Only Shadows Remain
				["qg"] = 173997,	-- Darkrider Arly
				["coord"] = { 35.3, 66.3, ICECROWN },
				["lvl"] = { 50 },
			}),
			q(62473, {	-- What's Old is New
				["sourceQuest"] = 60932,	-- Only Shadows Remain
				["qg"] = 167577,	-- Brollen Wheatbeard
				["coord"] = { 72.08, 20.72, ICECROWN },
				["lvl"] = { 50 },
				["groups"] = {
					i(183757),	-- Jagged Blade (QI!)
					i(183758),	-- Battleworn Chainmail (QI!)
				},
			}),
			-- repeatables below
			q(62401, {	-- Strange Scourgestones
				["qg"] = 169718,	-- Veteran Crusader Aliocha Segard
				["coord"] = { 71.0, 21.6, ICECROWN },
				["lvl"] = { 50 },
				["groups"] = {
					i(12844),	-- Argent Dawn Valor Token
				},
			}),
			q(62293, {	-- Darkened Scourgestones
				["sourceQuest"] = 62401,	-- Strange Scourgestones
				["qg"] = 169718,	-- Veteran Crusader Aliocha Segard
				["coord"] = { 71.0, 21.6, ICECROWN },
				["cost"] = { { "i", 180720, 25 } },	-- 25x Darkened Scourgestone
				["repeatable"] = true,
				["lvl"] = { 50 },
				["groups"] = {
					i(12844),	-- Argent Dawn Valor Token
				},
			}),
			q(62292, {	-- Pitch Black Scourgestones
				["sourceQuest"] = 62401,	-- Strange Scourgestones
				["qg"] = 169718,	-- Veteran Crusader Aliocha Segard
				["coord"] = { 71.0, 21.6, ICECROWN },
				["cost"] = { { "i", 183200, 25 } },	-- 25x Pitch Black Scourgestone
				["repeatable"] = true,
				["lvl"] = { 50 },
				["groups"] = {
					i(12844),	-- Argent Dawn Valor Token
				},
			}),
		}),
		n(RARES, {
			n(169035, {	-- Nathanos Blightcaller
				["coord"] = { 23.5, 68.4, EASTERN_PLAGUELANDS },
				["isRaid"] = true,
				["questID"] = 60542,
				["isWorldQuest"] = true,
				-- ["questID"] = 60541, -- didn't get this when he died
				-- ["altQuests"] = {
					-- 60542,	-- This is the world quest ID. Not sure if it's repeatable, so using the loot tracker on Nathanos directly and we can add the quest itself later if it's relevant
				-- },
				["groups"] = {
					-- world quest grants the equivalent of a darkshore cache. Not sure yet if he has his own loot table
					-- the cache has a special item string... blah only drops weapons and apparently is guaranteed (finally)
					-- i(165614),	-- Apothecary Spellstaff
					-- i(166482),	-- Deathguard's Greatsword
					-- i(166802),	-- Plaguebringer's Spellblade
				},
			}),
			n(COMMON_BOSS_DROPS, {
				i(183616),	-- Accursed Keepsake
			}),
			-- rares spawn every 20 minutes
			n(174065, {	-- Blood Queen Lana'thel (6)
				["coord"] = { 49.6, 32.3, ICECROWN },
				["questID"] = 62343,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183646),	-- Chestguard of Siphoned Vitality
					i(183648),	-- Veincrusher Gauntlets
					i(183647),	-- Bloodspatter
				},
			}),
			n(174058, {	-- Bronjahm (13)
				["coord"] = { 70.6, 38.5, ICECROWN },
				["questID"] = 62336,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183675),	-- Cold Sweat Mitts
					i(183634),	-- Papa's Mint Condition Bag
					i(183639),	-- Gaze of Bewilderment
					i(183635),	-- Grieving Gauntlets
				},
			}),
			n(174048, {	-- Elder Nadox (3)
				["coord"] = { 44.2, 49.2, ICECROWN },
				["questID"] = 62326,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183673),	-- Nerubian Aegis Ring
					i(183641),	-- Shoulderpads of Corpal Rigidity
					i(183624),	-- Serrated Blade of Nadox
				},
			}),
			n(174054, {	-- Falric (17)
				["coord"] = { 50.2, 88.1, ICECROWN },
				["questID"] = 62332,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183664),	-- Bracer of Ground Molars
					i(183667),	-- Geistslicer
					i(183665),	-- Valonforth's Marred Pauldrons
				},
			}),
			n(174056, {	-- Forgemaster Garfrost (15)
				["coord"] = { 59.1, 72.5, ICECROWN },
				["questID"] = 62334,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183666),	-- Legguards of the Frosty Fathoms
					i(183631),	-- Ring of Carnelian and Sinew
					i(183630),	-- Garfrost's Two-Ton Bludgeon
				},
			}),
			n(174061, {	-- Ingvar the Plunderer (10)
				["coord"] = { 52.3, 52.6, ICECROWN },
				["questID"] = 62339,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183659),	-- Annhylde's Band
					i(183658),	-- Ingvar's Monolithic Skullcleaver
					i(183668),	-- Razor-Barbed Leather Belt
				},
			}),
			n(174050, {	-- Krik'thir the Gatewatcher (1)
				["coord"] = { 67.5, 58.2, ICECROWN },
				["questID"] = 62328,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183682),	-- Cinch of the Servant
					i(183683),	-- Skittering Vestments
					i(183681),	-- Webrending Machete
				},
			}),
			n(174063, {	-- Lady Deathwhisper (8)
				["coord"] = { 51.2, 78.6, ICECROWN },
				["questID"] = 62341,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183653),	-- Deathwhisper Vestment
					i(183655),	-- Handgrips of Rime and Sleet
					i(183652),	-- Zod's Echoing Longbow - confirmed
				},
			}),
			n(174055, {	-- Marwyn (16)
				["coord"] = { 58.2, 83.5, ICECROWN },
				["questID"] = 62333,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183687),	-- Frayed Flesh-Stitched Shoulderguards
					i(183663),	-- Sightless Capuchin of Ulmaas
					i(183662),	-- Frostsworn Rattleshirt
				},
			}),
			n(174067, {	-- Noth the Plaguebringer (4)
				["coord"] = { 31.5, 70.4, ICECROWN },
				["questID"] = 62345,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183642),	-- Robes of Rasped Breaths
					i(183676),	-- Hailstone Loop
					i(183654),	-- Etched Dragonbone Stompers
				},
			}),
			n(174052, {	-- Novos the Summoner (19)
				["coord"] = { 77.9, 66.2, ICECROWN },
				["questID"] = 62330,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183671),	-- Necromantic Wristwraps
					i(183672),	-- Cuirass of Undeath
					i(183627),	-- Summoner's Granite Gavel
				},
			}),
			n(174066, {	-- Patchwerk (5)
				["coord"] = { 36.5, 67.7, ICECROWN },
				["questID"] = 62344,
				["isRepeatable"] = true,
				["description"] = "Inside the Sanctum of Reanimation at the Fleshworks.",
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183645),	-- Cinch of the Tortured
					i(183644),	-- Regurgitator's Shoulderpads
					i(183643),	-- Severance of Mortality
				},
			}),
			n(174060, {	-- Prince Keleseth (11)
				["coord"] = { 53.9, 44.7, ICECROWN },
				["questID"] = 62338,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183678),	-- Keleseth's Influencer
					i(183661),	-- Drake Stablers Gauntlets
					i(183680),	-- Royal Sanguine Cloak
				},
			}),
			n(174049, {	-- Prince Taldaram (2)
				["coord"] = { 30.0, 62.4, ICECROWN },
				["questID"] = 62327,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183679),	-- Taldaram's Supple Slippers
					i(183625),	-- Reforged Necklace of Taldaram
					i(183677),	-- Blood-Drinker's Belt (reported on discord)
				},
			}),
			n(174064, {	-- Professor Putricide (7)
				["coord"] = { 57.1, 30.5, ICECROWN },
				["questID"] = 62342,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183649),	-- Bag of Discarded Entrails
					i(183651),	-- Chestplate of Septic Sutures
					i(183650),	-- Miniscule Abomination in a Jar
				},
			}),
			n(174057, {	-- Scourgelord Tyrannus (14)
				["coord"] = { 47.1, 66.0, ICECROWN },
				["questID"] = 62335,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183674),	-- Rimewoven Pantaloons
					i(183633),	-- Fringed Wyrmleather Leggings
					i(183632),	-- Protector of Stolen Souls
				},
			}),
			n(174062, {	-- Skadi the Ruthless (9)
				["coord"] = { 57.7, 56.0, ICECROWN },
				["questID"] = 62340,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(44151),	-- Blue Proto-Drake (MOUNT!)
					i(183670),	-- Skadi's Saronite Belt
					i(183656),	-- Drake Rider's Jerkin
					i(183657),	-- Skadi's Scaled Sollerets
				},
			}),
			n(174059, {	-- The Black Knight (12)
				["coord"] = { 64.9, 22.1, ICECROWN },
				["questID"] = 62337,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183638),	-- Phantasmic Kris
					i(183637),	-- Shoulderpads of the Notorious Knave
					i(183636),	-- Helm of the Violent Fracas
				},
			}),
			n(174053, {	-- The Prophet Tharon'ja (18)
				["coord"] = { 80.3, 61.4, ICECROWN },
				["questID"] = 62331,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183686),	-- Breeches of the Skeletal Serpent
					i(183685),	-- Phantasmic Seal of the Prophet
					i(183684),	-- Tharaon'ja's Protectorate
				},
			}),
			n(174051, {	-- Trollgore (20)
				["coord"] = { 58.3, 39.3, ICECROWN },
				["questID"] = 62329,
				["isRepeatable"] = true,
				["groups"] = {
					i(183200),	-- Pitch Black Scourgestone
					i(183669),	-- Cowl of the Rampaging Trollgore
					i(183626),	-- Troll Gorer
					i(183640),	-- Leggings of Disreputable Charms
				},
			}),
		}),
		n(VENDORS, {
			-- Big list of items from multiple vendors.. feels messy doing it like this
			-- TODO: think we have better tech now to consolidate all this somehow, look into this...
			n(165840, {	-- Quartermaster Lungren
				["coord"] = { 53.1, 76.9, ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["groups"] = bubbleDown({
					["cost"] = { { "c", 1754, 15 } },	-- Argent Commendation
					["sharedDescription"] = "While available on the vendor, the currency required to buy the item is unobtainable.",
				},{
					i(183552, {	-- Argent Conscript's Drape
						["classes"] = { MAGE, PRIEST, WARLOCK },
					}),
					i(183553, {	-- Argent Conscript's Cloak
						["classes"] = { ROGUE, MONK, DRUID, DEMONHUNTER },
					}),
					i(183554, {	-- Argent Conscript's Lined Cloak
						["classes"] = { HUNTER, SHAMAN },
					}),
					i(183555, {	-- Argent Conscript's Cape
						["classes"] = { DEATHKNIGHT, PALADIN, WARRIOR },
					}),
					i(183538),	-- Argent Conscript's Treads
					i(183576),	-- Argent Conscript's Gloves
					i(183575),	-- Argent Conscript's Skullcap
					i(183539),	-- Argent Conscript's Leggings
					i(183535),	-- Argent Conscript's Robe
					i(183574),	-- Argent Conscript's Mantle
					i(183577),	-- Argent Conscript's Cord
					i(183541),	-- Argent Conscript's Bracers
					i(183537),	-- Argent Conscript's Tunic
					i(183581),	-- Argent Conscript's Boots
					i(183580),	-- Argent Conscript's Grips
					i(183579),	-- Argent Conscript's Mask
					i(183540),	-- Argent Conscript's Leggings
					i(183578),	-- Argent Conscript's Pauldrons
					i(183582),	-- Argent Conscript's Belt
					i(183544),	-- Argent Conscript's Wriststraps
					i(183536),	-- Argent Conscript's Mail Shirt
					i(183587),	-- Argent Conscript's Folded Boots
					i(183586),	-- Argent Conscript's Overgloves
					i(183585),	-- Argent Conscript's Helmet
					i(183584),	-- Argent Conscript's Pants
					i(183583),	-- Argent Conscript's Shoulderguards
					i(183588),	-- Argent Conscript's Cinch
					i(183543),	-- Argent Conscript's Wristclamps
					i(183593),	-- Argent Conscript's Breastplate
					i(183594),	-- Argent Conscript's Greaves
					i(183592),	-- Argent Conscript's Gauntlets
					i(183591),	-- Argent Conscript's Tuskhelm
					i(183590),	-- Argent Conscript's Greaves
					i(183589),	-- Argent Conscript's Spaulders
					i(183595),	-- Argent Conscript's Buckle
					i(183542),	-- Argent Conscript's Wristplates
					i(180454),	-- Anti-Doom Broom
					i(183621, {	-- Putrid Geist (PET!)
						["cost"] = { { "c", 1754, 20 } },
					}),
				}),
			}),
			n(169718, {	-- Veteran Crusader Aliocha Segard
				["coord"] = { 71.04, 21.66, ICECROWN },
				["groups"] = bubbleDown({
					["cost"] = { { "c", 1754, 15 } },	-- Argent Commendation
					["sharedDescription"] = "While available on the vendor, the currency required to buy the item is unobtainable.",
				},{
					-- Alliance items
					i(183524, {	-- Argent Conscript's Drape
						["classes"] = { MAGE, PRIEST, WARLOCK },
					}),
					i(183525),	-- Argent Conscript's Robe
					i(183526),	-- Argent Conscript's Tunic
					i(183527),	-- Argent Conscript's Treads
					i(183528),	-- Argent Conscript's Grips
					i(183529),	-- Argent Conscript's Leggings
					i(183530),	-- Argent Conscript's Pants
					i(183531),	-- Argent Conscript's Leggings
					i(183532),	-- Argent Conscript's Bracers
					i(183533),	-- Argent Conscript's Wristclamps
					i(183534),	-- Argent Conscript's Wriststraps
					i(183545),	-- Argent Conscript's Mantle
					i(183546),	-- Argent Conscript's Circlet
					i(183547),	-- Argent Conscript's Gloves
					i(183548),	-- Argent Conscript's Cord
					i(183549, {	-- Argent Conscript's Cloak
						["classes"] = { ROGUE, MONK, DRUID, DEMONHUNTER },
					}),
					i(183550, {	-- Argent Conscript's Cape
						["classes"] = { HUNTER, SHAMAN },
					}),
					i(183551, {	-- Argent Conscript's Lined Cloak
						["classes"] = { DEATHKNIGHT, PALADIN, WARRIOR },
					}),
					i(183556),	-- Argent Conscript's Pauldrons
					i(183557),	-- Argent Conscript's Cowl
					i(183558),	-- Argent Conscript's Boots
					i(183559),	-- Argent Conscript's Belt
					i(183560),	-- Argent Conscript's Shoulderguards
					i(183561),	-- Argent Conscript's Helmet
					i(183562),	-- Argent Conscript's Overgloves
					i(183563),	-- Argent Conscript's Mail Shirt
					i(183564),	-- Argent Conscript's Folded Boots
					i(183565),	-- Argent Conscript's Cinch
					i(183566),	-- Argent Conscript's Wristplates
					i(183567),	-- Argent Conscript's Spaulders
					i(183568),	-- Argent Conscript's Greaves
					i(183569),	-- Argent Conscript's Greathelm
					i(183570),	-- Argent Conscript's Gauntlets
					i(183571),	-- Argent Conscript's Breastplate
					i(183572),	-- Argent Conscript's Greaves
					i(183573),	-- Argent Conscript's Buckle
					-- Horde items
					i(183552, {	-- Argent Conscript's Drape
						["classes"] = { MAGE, PRIEST, WARLOCK },
					}),
					i(183553, {	-- Argent Conscript's Cloak
						["classes"] = { ROGUE, MONK, DRUID, DEMONHUNTER },
					}),
					i(183554, {	-- Argent Conscript's Lined Cloak
						["classes"] = { HUNTER, SHAMAN },
					}),
					i(183555, {	-- Argent Conscript's Cape
						["classes"] = { DEATHKNIGHT, PALADIN, WARRIOR },
					}),
					i(183538),	-- Argent Conscript's Treads
					i(183576),	-- Argent Conscript's Gloves
					i(183575),	-- Argent Conscript's Skullcap
					i(183539),	-- Argent Conscript's Leggings
					i(183535),	-- Argent Conscript's Robe
					i(183574),	-- Argent Conscript's Mantle
					i(183577),	-- Argent Conscript's Cord
					i(183541),	-- Argent Conscript's Bracers
					i(183537),	-- Argent Conscript's Tunic
					i(183581),	-- Argent Conscript's Boots
					i(183580),	-- Argent Conscript's Grips
					i(183579),	-- Argent Conscript's Mask
					i(183540),	-- Argent Conscript's Leggings
					i(183578),	-- Argent Conscript's Pauldrons
					i(183582),	-- Argent Conscript's Belt
					i(183544),	-- Argent Conscript's Wriststraps
					i(183536),	-- Argent Conscript's Mail Shirt
					i(183587),	-- Argent Conscript's Folded Boots
					i(183586),	-- Argent Conscript's Overgloves
					i(183585),	-- Argent Conscript's Helmet
					i(183584),	-- Argent Conscript's Pants
					i(183583),	-- Argent Conscript's Shoulderguards
					i(183588),	-- Argent Conscript's Cinch
					i(183543),	-- Argent Conscript's Wristclamps
					i(183593),	-- Argent Conscript's Breastplate
					i(183594),	-- Argent Conscript's Greaves
					i(183592),	-- Argent Conscript's Gauntlets
					i(183591),	-- Argent Conscript's Tuskhelm
					i(183590),	-- Argent Conscript's Greaves
					i(183589),	-- Argent Conscript's Spaulders
					i(183595),	-- Argent Conscript's Buckle
					i(183542),	-- Argent Conscript's Wristplates
					-- Misc Items
					i(180454),	-- Anti-Doom Broom
					i(183621, {	-- Putrid Geist (PET!)
						["cost"] = { { "c", 1754, 20 } },
					}),
				}),
			}),
			n(165839, {	-- Quartermaster Renick <The Argent Crusade>
				["coord"] = { 65.4, 76.8, STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = bubbleDown({
					["cost"] = { { "c", 1754, 15 } },	-- Argent Commendation
					["sharedDescription"] = "While available on the vendor, the currency required to buy the item is unobtainable.",
				},{
					i(183524, {	-- Argent Conscript's Drape
						["classes"] = { MAGE, PRIEST, WARLOCK },
					}),
					i(183525),	-- Argent Conscript's Robe
					i(183526),	-- Argent Conscript's Tunic
					i(183527),	-- Argent Conscript's Treads
					i(183528),	-- Argent Conscript's Grips
					i(183529),	-- Argent Conscript's Leggings
					i(183530),	-- Argent Conscript's Pants
					i(183531),	-- Argent Conscript's Leggings
					i(183532),	-- Argent Conscript's Bracers
					i(183533),	-- Argent Conscript's Wristclamps
					i(183534),	-- Argent Conscript's Wriststraps
					i(183545),	-- Argent Conscript's Mantle
					i(183546),	-- Argent Conscript's Circlet
					i(183547),	-- Argent Conscript's Gloves
					i(183548),	-- Argent Conscript's Cord
					i(183549, {	-- Argent Conscript's Cloak
						["classes"] = { ROGUE, MONK, DRUID, DEMONHUNTER },
					}),
					i(183550, {	-- Argent Conscript's Cape
						["classes"] = { HUNTER, SHAMAN },
					}),
					i(183551, {	-- Argent Conscript's Lined Cloak
						["classes"] = { DEATHKNIGHT, PALADIN, WARRIOR },
					}),
					i(183556),	-- Argent Conscript's Pauldrons
					i(183557),	-- Argent Conscript's Cowl
					i(183558),	-- Argent Conscript's Boots
					i(183559),	-- Argent Conscript's Belt
					i(183560),	-- Argent Conscript's Shoulderguards
					i(183561),	-- Argent Conscript's Helmet
					i(183562),	-- Argent Conscript's Overgloves
					i(183563),	-- Argent Conscript's Mail Shirt
					i(183564),	-- Argent Conscript's Folded Boots
					i(183565),	-- Argent Conscript's Cinch
					i(183566),	-- Argent Conscript's Wristplates
					i(183567),	-- Argent Conscript's Spaulders
					i(183568),	-- Argent Conscript's Greaves
					i(183569),	-- Argent Conscript's Greathelm
					i(183570),	-- Argent Conscript's Gauntlets
					i(183571),	-- Argent Conscript's Breastplate
					i(183572),	-- Argent Conscript's Greaves
					i(183573),	-- Argent Conscript's Buckle
					i(180454),	-- Anti-Doom Broom
					i(183621, {	-- Putrid Geist (PET!)
						["cost"] = { { "c", 1754, 20 } },
					}),
				}),
			}),
			n(173791, {	-- Crusader Adevald Ironbeard
				["description"] = "While this vendor and his items are still available, the currency required to buy the items is not.\nTagging the vendor and his goods as removed as otherwise they would show up as collectible.",
				["coord"] = { 69.4, 23.3, ICECROWN },
				["groups"] = bubbleDown({
					["cost"] = { { "c", 1754, 15 } },	-- Argent Commendation
					["sharedDescription"] = "While available on the vendor, the currency required to buy the item is unobtainable.",
				},{
					-- Alliance items
					i(183524, {	-- Argent Conscript's Drape
						["classes"] = { MAGE, PRIEST, WARLOCK },
					}),
					i(183525),	-- Argent Conscript's Robe
					i(183526),	-- Argent Conscript's Tunic
					i(183527),	-- Argent Conscript's Treads
					i(183528),	-- Argent Conscript's Grips
					i(183529),	-- Argent Conscript's Leggings
					i(183530),	-- Argent Conscript's Pants
					i(183531),	-- Argent Conscript's Leggings
					i(183532),	-- Argent Conscript's Bracers
					i(183533),	-- Argent Conscript's Wristclamps
					i(183534),	-- Argent Conscript's Wriststraps
					i(183545),	-- Argent Conscript's Mantle
					i(183546),	-- Argent Conscript's Circlet
					i(183547),	-- Argent Conscript's Gloves
					i(183548),	-- Argent Conscript's Cord
					i(183549, {	-- Argent Conscript's Cloak
						["classes"] = { ROGUE, MONK, DRUID, DEMONHUNTER },
					}),
					i(183550, {	-- Argent Conscript's Cape
						["classes"] = { HUNTER, SHAMAN },
					}),
					i(183551, {	-- Argent Conscript's Lined Cloak
						["classes"] = { DEATHKNIGHT, PALADIN, WARRIOR },
					}),
					i(183556),	-- Argent Conscript's Pauldrons
					i(183557),	-- Argent Conscript's Cowl
					i(183558),	-- Argent Conscript's Boots
					i(183559),	-- Argent Conscript's Belt
					i(183560),	-- Argent Conscript's Shoulderguards
					i(183561),	-- Argent Conscript's Helmet
					i(183562),	-- Argent Conscript's Overgloves
					i(183563),	-- Argent Conscript's Mail Shirt
					i(183564),	-- Argent Conscript's Folded Boots
					i(183565),	-- Argent Conscript's Cinch
					i(183566),	-- Argent Conscript's Wristplates
					i(183567),	-- Argent Conscript's Spaulders
					i(183568),	-- Argent Conscript's Greaves
					i(183569),	-- Argent Conscript's Greathelm
					i(183570),	-- Argent Conscript's Gauntlets
					i(183571),	-- Argent Conscript's Breastplate
					i(183572),	-- Argent Conscript's Greaves
					i(183573),	-- Argent Conscript's Buckle
				-- Horde items
					i(183552, {	-- Argent Conscript's Drape
						["classes"] = { MAGE, PRIEST, WARLOCK },
					}),
					i(183553, {	-- Argent Conscript's Cloak
						["classes"] = { ROGUE, MONK, DRUID, DEMONHUNTER },
					}),
					i(183554, {	-- Argent Conscript's Lined Cloak
						["classes"] = { HUNTER, SHAMAN },
					}),
					i(183555, {	-- Argent Conscript's Cape
						["classes"] = { DEATHKNIGHT, PALADIN, WARRIOR },
					}),
					i(183538),	-- Argent Conscript's Treads
					i(183576),	-- Argent Conscript's Gloves
					i(183575),	-- Argent Conscript's Skullcap
					i(183539),	-- Argent Conscript's Leggings
					i(183535),	-- Argent Conscript's Robe
					i(183574),	-- Argent Conscript's Mantle
					i(183577),	-- Argent Conscript's Cord
					i(183541),	-- Argent Conscript's Bracers
					i(183537),	-- Argent Conscript's Tunic
					i(183581),	-- Argent Conscript's Boots
					i(183580),	-- Argent Conscript's Grips
					i(183579),	-- Argent Conscript's Mask
					i(183540),	-- Argent Conscript's Leggings
					i(183578),	-- Argent Conscript's Pauldrons
					i(183582),	-- Argent Conscript's Belt
					i(183544),	-- Argent Conscript's Wriststraps
					i(183536),	-- Argent Conscript's Mail Shirt
					i(183587),	-- Argent Conscript's Folded Boots
					i(183586),	-- Argent Conscript's Overgloves
					i(183585),	-- Argent Conscript's Helmet
					i(183584),	-- Argent Conscript's Pants
					i(183583),	-- Argent Conscript's Shoulderguards
					i(183588),	-- Argent Conscript's Cinch
					i(183543),	-- Argent Conscript's Wristclamps
					i(183593),	-- Argent Conscript's Breastplate
					i(183594),	-- Argent Conscript's Greaves
					i(183592),	-- Argent Conscript's Gauntlets
					i(183591),	-- Argent Conscript's Tuskhelm
					i(183590),	-- Argent Conscript's Greaves
					i(183589),	-- Argent Conscript's Spaulders
					i(183595),	-- Argent Conscript's Buckle
					i(183542),	-- Argent Conscript's Wristplates
				-- Misc Items
					i(180454),	-- Anti-Doom Broom
					i(183621, {	-- Putrid Geist (PET!)
						["cost"] = { { "c", 1754, 20 } },	-- 20x Argent Commendation
					}),
				}),
			}),
		}),
		n(ZONE_DROPS, {
			i(180720),	-- Darkened Scourgestone
			i(180712),	-- Partially Digested Cloth
			i(180719),	-- Partially Digested Leather
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_1 } }, {
	n(EXPANSION_PRELAUNCH, {
		n(QUESTS, {
			q(60490),	-- Triggers after completing "Advancing the Effort" and unlocking Icecrown dailies. Also triggered when starting the new phase at Ironwall Rampart. Maybe it's the zone story daily progression tracker?
			q(60541),	--
			q(60511),	-- Icecrown story - Advancing the effort (phase 2?). triggered after completing "Only Shadows Remain"
			q(62808),	-- triggered when logging into a previously-120 character
		}),
		n(WORLD_QUESTS, {
			q(62480),	-- triggered along with the Nathanos Blightcaller world quest (for killing Nathanos)
		}),
	}),
})));
