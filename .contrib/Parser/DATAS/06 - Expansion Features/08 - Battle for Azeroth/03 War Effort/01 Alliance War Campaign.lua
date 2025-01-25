-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.BFA, {
		n(WAR_EFFORT, {
			n(-236, {	-- Alliance War Campaign
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					ach(12510, {	-- Ready for War
						["races"] = ALLIANCE_ONLY,
						["maps"] = { BORALUS },
						["lvl"] = 110,
						["g"] = {
							crit(40201, {	-- Nazmir Foothold
								["sourceQuests"] = { 51967 },	-- Return to Boralus (Nazmir)
							}),
							crit(40202, {	-- Vol'dun Foothold
								["sourceQuests"] = { 51969 },	-- Return to Boralus (Vol'dun)
							}),
							crit(40203, {	-- Zuldazar Foothold
								["sourceQuests"] = { 51968 },	-- Return to Boralus (Zuldazar)
							}),
							crit(40573, {	-- Blood on the Sand
								["sourceQuests"] = { 52146 },	-- Blood on the Sand
							}),
							crit(40574, {	-- Chasing Darkness
								["sourceQuests"] = { 52219 },	-- Target: Blood Prince Dreven
							}),
							crit(40583, {	-- A Golden Opportunity
								["sourceQuests"] = { 52261 },	-- Gallywix Got Away
							}),
							crit(40869, {	-- Blood in the Water
								["sourceQuests"] = { 52496 },	-- A Clean Escape
							}),
							crit(40870, {	-- The Strike on Zuldazar
								["sourceQuests"] = { 52790 },	-- The Strike on Zuldazar
							}),
						},
					}),
					ach(13384, {	-- Kul Tirans Don't Look at Explosions
						["sourceQuests"] = { 54703 },	-- Express Delivery
						["races"] = ALLIANCE_ONLY,
					}),
					ach(13467, {	-- Tides of Vengeance
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							crit(44260, {	-- War Marches On
								["sourceQuests"] = { 53887 },	-- War Marches On
							}),
							crit(44261, {	-- The Sleeper Agent
								["sourceQuests"] = { 54206 },	-- The Sleeper Agent
							}),
							crit(44262, {	-- Mischief Managed
								["sourceQuests"] = { 54510 },	-- Mischief Managed
							}),
							crit(44263, {	-- He Who Walks in the Light
								["sourceQuests"] = { 54459 },	-- He Who Walks in the Light
							}),
						},
					}),
					a(ach(13925, {	-- The Fourth War
					--	not nesting 'ready for war' and 'tides of vengeance' achievements inside, because when you try to utilize the sourceQuests on 'the fourth war' it does not display properly.
						["sourceQuests"] = { 57002 },	-- Old Soldier
						["sym"] = {{"meta_achievement",
							12510,	-- Ready for War
							13467,	-- Tides of Vengeance
						}},
						["g"] = {
							title(412),	-- Veteran of the Fourth War
						},
					})),
					n(REWARDS, {
						["description"] = "You'll be offered these rewards at the end of your first foothold.",
						["modID"] = 25,
						["g"] = {
							-- 163 = azerite; 175 = azewrong
							-- Cloth
							i(163654),	-- 7th Legionnaire's Circlet
							i(163653),	-- 7th Legionnaire's Mantle
							i(163676),	-- 7th Legionnaire's Raiment
							i(175386),	-- 7th Legionnaire's Circlet
							i(175385),	-- 7th Legionnaire's Mantle
							i(175408),	-- 7th Legionnaire's Raiment
							-- Leather
							i(163656),	-- 7th Legionnaire's Mask
							i(163655),	-- 7th Legionnaire's Shoulderpads
							i(163657),	-- 7th Legionnaire's Tunic
							i(175388),	-- 7th Legionnaire's Mask
							i(175387),	-- 7th Legionnaire's Shoulderpads
							i(175389),	-- 7th Legionnaire's Tunic
							-- Mail
							i(163659),	-- 7th Legionnaire's Skullcap
							i(163658),	-- 7th Legionnaire's Spaulders
							i(163660),	-- 7th Legionnaire's Chainmail
							i(175391),	-- 7th Legionnaire's Skullcap
							i(175390),	-- 7th Legionnaire's Spaulders
							i(175392),	-- 7th Legionnaire's Chainmail
							-- Plate
							i(163662),	-- 7th Legionnaire's Helmet
							i(163661),	-- 7th Legionnaire's Pauldrons
							i(163663),	-- 7th Legionnaire's Breastplate
							i(175394),	-- 7th Legionnaire's Helmet
							i(175393),	-- 7th Legionnaire's Pauldrons
							i(175395),	-- 7th Legionnaire's Breastplate
						},
					}),
					n(QUESTS, {
						q(53052, {	-- Deeper Into Zandalar
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
							["description"] = "Conquer one foothold, then relog while in Zandalar.",
						}),
						q(47099, {	-- Get Your Bearings
							["coord"] = { 75.7, 23.5, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 121235 },	-- Taelia
						}),
						q(46729, {	-- The Old Knight
							["sourceQuests"] = { 47099 },	-- Get Your Bearings
							["coord"] = { 67.1, 15.3, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 124630 },	-- Taelia
						}),
						q(47186, {	-- Sanctum of Sages
							["sourceQuests"] = { 46729 },	-- The Old Knight
							["coord"] = { 68.1, 21.9, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 121235 },	-- Taelia
						}),
						q(47189, {	-- A Nation Divided
							["sourceQuests"] = { 47186 },	-- Sanctum of Sages
							["coord"] = { 68.1, 21.9, BORALUS },
							["provider"] = { "n", 121235 },	-- Taelia
							["groups"] = {
								ach(12582, {	-- Come Sail Away
									["races"] = ALLIANCE_ONLY,
								}),
							},
						}),
						q(52654, {	-- The War Campaign
							["sourceQuests"] = { 47189 },	-- A Nation Divided
							["provider"] = { "n", 120788 },	-- Genn Greymane
							["coord"] = { 68.0, 22.3, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(52544, {	-- The War Cache
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52654 },	-- The War Campaign
						}),
						q(53332, {	-- Time for War
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52544 },	-- The War Cache (automatically offered upon turn-in)
						}),
						q(51714, {	-- Mission from the King
							["provider"] = { "n", 135618 },	-- Falstad Wildhammer
							["coord"] = { 69.7, 27.6, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 53332 },	-- Time for War
							["g"] = {
								follower(1065),	-- Falstad Wildhammer — Follower
							},
						}),
						q(51715, {	-- War of Shadows
							["provider"] = { "n", 135614 },	-- Master Mathias Shaw
							["cost"] = { { "i", 160982, 1, } },	-- Recruitment Orders
							["coord"] = { 70.4, 27.1, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51714 },	-- Mission from the King
						}),
						q(53074, {	-- Reinforcements
							["provider"] = { "n", 135614 },	-- Master Mathias Shaw
							["coord"] = { 70.4, 27.1, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51715 },	-- War of Shadows
						}),
						q(51569, {	-- The Zandalar Campaign
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["lvl"] = 110,	-- Can pick a foothold at 110, 114, and 118
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52544 },	-- The War Cache (53332 was too far)
						}),
						q(51571, {	-- Foothold: Nazmir
							["lvl"] = 110,	-- Can pick a foothold at 110, 114, and 118
							["coord"] = { 69.4, 26.9, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51569 },	-- The Zandalar Campaign
							-- SQ could also be The Ongoing Campaign or The Final Foothold depending upon the order you do the zones in.
							-- I listed only the first one as a SQ since it'll be required for all 3 footholds.
						}),
						q(51088, {	-- Heart of Darkness
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51571 },	-- Foothold: Nazmir
						}),
						q(51572, {	-- Foothold: Vol'dun
							["lvl"] = 110,	-- Can pick a foothold at 110, 114, and 118
							["coord"] = { 69.4, 26.9, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51569 },	-- The Zandalar Campaign
							-- SQ could also be The Ongoing Campaign or The Final Foothold depending upon the order you do the zones in.
							-- I listed only the first one as a SQ since it'll be required for all 3 footholds.
						}),
						q(51283, {	-- Voyage to the West
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51572 },	-- Foothold: Vol'dun
						}),
						q(51570, {	-- Foothold: Zuldazar
							["lvl"] = 110,	-- Can pick a foothold at 110, 114, and 118
							["coord"] = { 69.4, 26.9, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51569 },	-- The Zandalar Campaign
							-- SQ could also be The Ongoing Campaign or The Final Foothold depending upon the order you do the zones in.
							-- I listed only the first one as a SQ since it'll be required for all 3 footholds.
						}),
						q(51308, {	-- Zuldazar Foothold
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["lvl"] = 110,	-- Can pick a foothold at 110, 114, and 118
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51570 },	-- Foothold: Zuldazar
						}),
						q(53583, {	-- Adapting Our Tactics
							["provider"] = { "n", 143846 },	-- Alleria Windrunner
							["coord"] = { 70.5, 27.3, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["description"] = "To get this quest and continue the campaign, you must complete one foothold of your choice.",
							-- Turning in this quest also grants credit for the Horde equivalent, 53602
						}),
						q(51961, {	-- The Ongoing Campaign
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["description"] = "To get this quest and continue the campaign, you must complete one foothold of your choice.",
							["sourceQuestNumRequired"] = 1,
							["sourceQuests"] = {
								53052,	-- Deeper Into Zandalar
								51967,	-- Return to Boralus
								-- last Vol'dun quest
								-- last Zuldazar quest
							},
						}),
						q(53055, {	-- Pushing Our Influence
							["description"] = "Automatically starts when you finish your second Foothold in Zandalar.",
							["isBreadcrumb"] = true,
							["DisablePartySync"] = true,
							["races"] = ALLIANCE_ONLY,
						}),
						q(52443, {	-- The Final Foothold
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["description"] = "To get this quest and continue the campaign, you must complete two footholds of your choice.",
							["sourceQuests"] = { 51961 },	-- The Ongoing Campaign
							-- Setting "The Ongoing Campaign" because it starts the second foothold, and you have to finish 2 footholds to unlock this.
						}),
					--	NAZMIR FOOTHOLD STARTS HERE
						q(51129, {	-- Dubious Offering
							["provider"] = { "n", 136432 },	-- Brann Bronzebeard
							["coord"] = { 62.0, 41.5, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51088 },	-- Heart of Darkness
						}),
						q(51167, {	-- Blood of Hir'eek
							["provider"] = { "n", 136641 },	-- Brann Bronzebeard
							["coord"] = { 31.2, 46.7, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51129 },	-- Dubious Offering
						}),
						q(51150, {	-- Honoring the Fallen
							["provider"] = { "n", 136641 },	-- Brann Bronzebeard
							["coord"] = { 31.2, 46.7, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51129 },	-- Dubious Offering
						}),
						q(51168, {	-- Zealots of Zalamar
							["provider"] = { "n", 136641 },	-- Brann Bronzebeard
							["coord"] = { 31.2, 46.7, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								51167,	-- Blood of Hir'eek
								51150,	-- Honoring the Fallen
							},
						}),
						q(51169, {	-- Flight from the Fall
							["provider"] = { "n", 136645 },	-- Brann Bronzebeard
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51168 },	-- Zealots of Zalamar
						}),
						q(51281, {	-- Zul'Nazman
							["provider"] = { "n", 136432 },	-- Brann Bronzebeard
							["coord"] = { 62.0, 41.5, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51169 },	-- Flight from the Fall
						}),
						q(51279, {	-- Nazmani Cultists
							["provider"] = { "n", 136675 },	-- Brann Bronzebeard
							["coord"] = { 49.9, 50.8, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51281 },	-- Zul'Nazman
						}),
						q(51280, {	-- Offerings to G'huun
							["provider"] = { "n", 136675 },	-- Brann Bronzebeard
							["coord"] = { 49.9, 50.8, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51281 },	-- Zul'Nazman
						}),
						q(51282, {	-- Captain Conrad
							["provider"] = { "n", 136675 },	-- Brann Bronzebeard
							["coord"] = { 45.7, 57.4, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								51279,	-- Nazmani Cultists
								51280,	-- Offerings to G'huun
							},
						}),
						q(51177, {	-- Lessons of the Damned
							["provider"] = { "n", 136568 },	-- Captain Conrad
							["coord"] = { 45.0, 57.2, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51282 },	-- Captain Conrad
						}),
						q(52013, {	-- Champion: John J. Keeshan
							["provider"] = { "n", 139609 },	-- John J. Keeshan
							["coord"] = { 61.8, 41.3, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51177 },	-- Lessons of the Damned
							["g"] = {
								follower(1069),	-- John J. Keeshan
							},
						}),
						q(51967, {	-- Return to Boralus (Nazmir)
							["sourceQuests"] = { 52013 },	-- Champion: John J. Keeshan
							["coord"] = { 62.0, 41.5, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 136432 },	-- Brann Bronzebeard
						}),
					--	VOL'DUN FOOTHOLD STARTS HERE
						q(51170, {	-- Ooh Rah!
							["provider"] = { "n", 137867 },	-- Halford Wyrmbane
							["coord"] = { 32.8, 34.8, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51283 },	-- Voyage to the West
						}),
						q(51229, {	-- Establish a Beachhead
							["provider"] = { "n", 137008 },	-- Sergeant Ermey
							["coord"] = { 39.6, 35.7, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51170 },	-- Ooh Rah!
						}),
						q(51349, {	-- Honor Bound
							["provider"] = { "n", 137213 },	-- Halford Wyrmbane
							["coord"] = { 37.7, 35.7, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51229 },	-- Establish a Beachhead
						}),
						q(51350, {	-- Unexpected Aid
							["provider"] = { "n", 137337 },	-- Sergeant Ermey
							["coord"] = { 39.0, 42.9, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51349 },	-- Honor Bound
							["g"] = {
								i(160044),	-- Prickly Pear Root (QI!)
							},
						}),
						q(51351, {	-- Poisoned Barbs
							["provider"] = { "n", 137337 },	-- Sergeant Ermey
							["coord"] = { 39.0, 42.9, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51349 },	-- Honor Bound
							["g"] = {
								i(159958),	-- Saltspine Barb (QI!)
							},
						}),
						q(51366, {	-- Antidote Application
							["provider"] = { "n", 137337 },	-- Sergeant Ermey
							["coord"] = { 39.0, 42.9, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								51351,	-- Poisoned Barbs
								51350,	-- Unexpected Aid
							},
						}),
						q(51369, {	-- Friends in Strange Places
							["provider"] = { "n", 137434 },	-- Vorrik
							["coord"] = { 38.9, 42.9, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51366 },	-- Antidote Application
						}),
						q(51391, {	-- Defang the Faithless
							["provider"] = { "n", 137537 },	-- Vorrik
							["coord"] = { 27.2, 53.9, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51369 },	-- Friends in Strange Places
						}),
						q(51394, {	-- Break the Siege
							["provider"] = { "n", 137537 },	-- Vorrik
							["coord"] = { 27.2, 53.9, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51369 },	-- Friends in Strange Places
						}),
						q(51389, {	-- Breaking Free
							["provider"] = { "n", 137543 },	-- Sergeant Ermey
							["coord"] = { 27.2, 53.9, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51369 },	-- Friends in Strange Places
						}),
						q(51395, {	-- The Keepers' Keys
							["provider"] = { "n", 129519 },	-- Vorrik
							["coord"] = { 27.5, 52.5, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								51389,	-- Breaking Free
								51394,	-- Break the Siege
								51391,	-- Defang the Faithless
							},
						}),
						q(51402, {	-- Reporting In
							["provider"] = { "n", 137543 },	-- Sergeant Ermey
							["coord"] = { 27.0, 52.5, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51395 },	-- The Keepers' Keys
						}),
						q(52008, {	-- Champion: Magister Umbric
							["provider"] = { "n", 139568 },	-- Magister Umbric
							["coord"] = { 37.5, 35.8, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51402 },	-- Reporting In
							["g"] = {
								follower(1072),	-- Magister Umbric
							},
						}),
						q(51969, {	-- Return to Boralus (Vol'dun)
							["provider"] = { "n", 137213 },	-- Halford Wyrmbane
							["coord"] = { 37.7, 35.7, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52008 },	-- Champion: Magister Umbric
							-- I did this foothold second and received a Glowing Azerite Crystal (250 Azerite) as my reward.
						}),
					--	ZULDAZAR FOOTHOLD STARS HERE
						q(51201, {	-- The Troll's Tale
							["provider"] = { "n", 136197 },	-- Brigadier Thom
							["coord"] = { 77.5, 54.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51308 },	-- Zuldazar Foothold
						}),
						q(51190, {	-- Granting a Reprieve
							["provider"] = { "n", 136197 },	-- Brigadier Thom
							["coord"] = { 77.5, 54.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51201 },	-- The Troll's Tale
						}),
						q(51544, {	-- Disarming the Cannons
							["provider"] = { "n", 136197 },	-- Brigadier Thom
							["coord"] = { 77.5, 54.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51201 },	-- The Troll's Tale
						}),
						q(51192, {	-- A Lack of Surplus
							["provider"] = { "n", 136192 },	-- Degdod
							["coord"] = { 77.1, 55.5, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51201 },	-- The Troll's Tale
							["g"] = {
								i(160249),	-- Bundle of Supplies (QI!)
							},
						}),
						q(51193, {	-- That One's Mine
							["provider"] = { "n", 136192 },	-- Degdod
							["coord"] = { 77.1, 55.5, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51201 },	-- The Troll's Tale
							["g"] = {
								i(159779),	-- Degdod's Hammer (QI!)
							},
						}),
						q(51191, {	-- Save Them All
							["provider"] = { "n", 136195 },	-- Medic Feorea
							["coord"] = { 77.1, 55.5, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51201 },	-- The Troll's Tale
							["g"] = {
								i(160433),	-- Bandages (QI!)
							},
						}),
						q(51418, {	-- Xibala
							["provider"] = { "n", 135620 },	-- Kelsey Steelspark
							["coord"] = { 77.4, 55.2, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								51192,	-- A Lack of Surplus
								51544,	-- Disarming the Cannons
								51190,	-- Granting a Reprieve
								51191,	-- Save Them All
								51193,	-- That One's Mine
							},
							-- Hidden quest 53384 completes as Kelsey Steelspark runs up
						}),
						q(51331, {	-- Mole Machinations
							["sourceQuests"] = { 51418 },	-- Xibala
							["provider"] = { "n", 137401 },	-- Anvil-Thane Thurgaden
							["coord"] = { 40.7, 70.8, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
						}),
						q(51309, {	-- Rocks of Ragnaros
							["sourceQuests"] = { 51418 },	-- Xibala
							["provider"] = { "n", 137401 },	-- Anvil-Thane Thurgaden
							["coord"] = { 40.7, 70.8, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["g"] = {
								i(159910),	-- Firelands Slag (QI!)
							},
						}),
						q(51359, {	-- Fragment of the Firelands
							["provider"] = { "n", 137401 },	-- Anvil-Thane Thurgaden
							["coord"] = { 40.7, 70.8, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								51331,	-- Mole Machinations
								51309,	-- Rocks of Ragnaros
							},
							["g"] = {
								i(160058),	-- Stabilize Magma Elemental (QI!)
							},
						}),
						q(52003, {	-- Champion: Kelsey Steelspark
							["provider"] = { "n", 135620 },	-- Kelsey Steelspark
							["coord"] = { 40.7, 70.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 51359 },	-- Fragment of the Firelands
							["g"] = {
								follower(1068),	-- Kelsey Steelspark
							},
						}),
						q(51968, {	-- Return to Boralus (Zuldazar)
							["provider"] = { "n", 135620 },	-- Kelsey Steelspark
							["coord"] = { 40.7, 70.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52003 },	-- Champion: Kelsey Steelspark
							-- I did this foothold third and received a Glowing Azerite Crystal (250 Azerite) as my reward.
						}),
					--	ALL 3 FOOTHOLDS END Here
						q(53063, {	-- A Mission of Unity
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["sourceQuests"] = {
								51967,	-- Return to Boralus (Nazmir Foothold)
								51968,	-- Return to Boralus (Zuldazar Valley Foothold)
								51969,	-- Return to Boralus (Vol'dun Foothold)
							},
							["isBreadcrumb"] = true,
							["DisablePartySync"] = true,
							["races"] = ALLIANCE_ONLY,
						}),
						q(51918, {	-- Uniting Kul Tiras - completed once per account
							["sourceQuests"] = { 52654 },	-- The War Campaign
							["altQuests"] = { 52450 },	-- Uniting Kul Tiras
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["g"] = {
								spell(273746),	-- World Quests
								i(141605, {	-- Flight Master Whistle
									["modID"] = 11,
								}),
							},
						}),
						q(52450, {	-- Uniting Kul Tiras - version that alts unlock at 50 - requires HoA and, afaik, nothing else
							["sourceQuests"] = { 52428 },	-- Infusing the Heart
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["g"] = {
								spell(273746),	-- World Quests
								i(141605, {	-- Flight Master Whistle
									["modID"] = 11,
								}),
							},
						}),
					--	BLOOD ON THE SAND STARTS HERE
						q(52026, {	-- Overseas Assassination
							["coord"] = { 69.2, 26.9, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
						}),
						q(52027, {	-- The Vol'dun Plan
							["provider"] = { "n", 139705 },	-- Halford Wyrmbane
							["coord"] = { 37.7, 35.8, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52026 },	-- Overseas Assassination
						}),
						q(52028, {	-- Comb the Desert
							["provider"] = { "n", 139705 },	-- Halford Wyrmbane
							["coord"] = { 37.7, 35.8, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52027 },	-- The Vol'dun Plan
						}),
						q(52029, {	-- Dirty Work
							["provider"] = { "n", 139719 },	-- Shandris Feathermoon
							["coord"] = { 40.7, 47.8, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52028 },	-- Comb the Desert
							["g"] = {
								i(161086),	-- Reliquary Orders (QI!)
							},
						}),
						q(52030, {	-- Keep Combing
							["provider"] = { "n", 139705 },	-- Halford Wyrmbane
							["coord"] = { 40.7, 47.8, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52029 },	-- Dirty Work
						}),
						q(52031, {	-- Classic Reliquary
							["provider"] = { "n", 139719 },	-- Shandris Feathermoon
							["coord"] = { 44.9, 58.7, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52030 },	-- Keep Combing
							["g"] = {
								i(161087),	-- Reliquary Map: Vol'dun (QI!)
							},
						}),
						q(52032, {	-- Never Stop Combing
							["provider"] = { "n", 139705 },	-- Halford Wyrmbane
							["coord"] = { 44.9, 58.7, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52031 },	-- Classic Reliquary
						}),
						q(52035, {	-- Improvised Survival
							["provider"] = { "n", 139705 },	-- Halford Wyrmbane
							["coord"] = { 41.0, 72.5, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52032 },	-- Never Stop Combing
							["g"] = {
								i(161241),	-- Zandalari Dunemelon (QI!)
								i(161240),	-- Zandalari Water Jug (QI!)
							},
						}),
						q(52034, {	-- A Message to the Zandalari
							["provider"] = { "n", 139719 },	-- Shandris Feathermoon
							["coord"] = { 41.0, 72.5, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52032 },	-- Never Stop Combing
						}),
						q(52036, {	-- They Have Alpacas Here
							["provider"] = { "n", 139722 },	-- Explosioneer Zoidfuse
							["coord"] = { 41.0, 72.5, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52032 },	-- Never Stop Combing
							["g"] = {
								i(161333),	-- Ultra-Safe Electrified Alpaca Lasso (QI!)
							},
						}),
						q(52038, {	-- Splitting Up
							["provider"] = { "n", 139705 },	-- Halford Wyrmbane
							["coord"] = { 41.0, 72.5, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								52034,	-- A Message to the Zandalari
								52035,	-- Improvised Survival
								52036,	-- They Have Alpacas Here
							},
						}),
						q(52040, {	-- Full of Arrows
							["provider"] = { "n", 139719 },	-- Shandris Feathermoon
							["coord"] = { 29.9, 78.5, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52038 },	-- Splitting Up
						}),
						q(52039, {	-- Delayed Deathification
							["provider"] = { "n", 139719 },	-- Shandris Feathermoon
							["coord"] = { 29.9, 78.5, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52038 },	-- Splitting Up
						}),
						q(52041, {	-- Report to Wyrmbane
							["provider"] = { "n", 139719 },	-- Shandris Feathermoon
							["coord"] = { 29.9, 78.5, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								52039,	-- Delayed Deathification
								52040,	-- Full of Arrows
							},
						}),
						q(52042, {	-- The Big Boom
							["provider"] = { "n", 139705 },	-- Halford Wyrmbane
							["coord"] = { 39.6, 83.9, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52041 },	-- Report to Wyrmbane
						}),
						q(52146, {	-- Blood on the Sand
							["provider"] = { "n", 139705 },	-- Halford Wyrmbane
							["coord"] = { 39.6, 83.9, VOLDUN },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52042 },	-- The Big Boom
						}),
					--	BETWEEN BLOOD ON THE SAND / CHASING DARKNESS
						q(53069, {	-- Operation: Blood Arrow
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
							["sourceQuests"] = { 52146 },	-- Blood on the Sand
							["minReputation"] = { FACTION_7TH_LEGION, FRIENDLY+4500 },
							["description"] = "Relog (outside of Boralus) if this doesn't appear upon hitting the reputation requirement",
							["DisablePartySync"] = true,
						}),
						q(52147, {	-- Crippling the Horde
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								52146,	-- Blood on the Sand
								53069,	-- Operation: Blood Arrow
							},
						}),
					--	CHASING DARKNESS STARTS HERE
						q(52150, {	-- How to Kill a Dark Ranger
							["sourceQuests"] = { 52147 },	-- Crippling the Horde
							["provider"] = { "n", 140258 },	-- Shandris Feathermoon
							["coord"] = { 61.9, 41.1, NAZMIR },
							["races"] = ALLIANCE_ONLY,
						}),
						q(52156, {	-- Tortollans in Distress
							["sourceQuests"] = { 52150 },	-- How to Kill a Dark Ranger
							["provider"] = { "n", 140258 },	-- Shandris Feathermoon
							["coord"] = { 61.9, 41.2, NAZMIR },
							["races"] = ALLIANCE_ONLY,
						}),
						q(52158, {	-- The Savage Hunt
							["sourceQuests"] = { 52150 },	-- How to Kill a Dark Ranger
							["provider"] = { "n", 139609 },	-- John J. Keeshan
							["coord"] = { 61.8, 41.3, NAZMIR },
							["races"] = ALLIANCE_ONLY,
						}),
						q(52170, {	-- Ending Areiel
							["sourceQuests"] = {
								52158,	-- The Savage Hunt
								52156,	-- Tortollans in Distress
							},
							["provider"] = { "n", 140258 },	-- Shandris Feathermoon
							["coord"] = { 51.2, 21.8, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["g"] = {
								i(161332),	-- Horde Missive (QI!)
							},
						}),
						q(52171, {	-- One Option: Fire
							["provider"] = { "n", 139609 },	-- John J. Keeshan
							["coord"] = { 51.2, 21.8, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								52158,	-- The Savage Hunt
								52156,	-- Tortollans in Distress
							},
						}),
						q(52172, {	-- They Can't Stay Here
							["provider"] = { "n", 139609 },	-- John J. Keeshan
							["coord"] = { 51.2, 21.8, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								52158,	-- The Savage Hunt
								52156,	-- Tortollans in Distress
							},
						}),
						q(52208, {	-- Meeting of the Minds
							["provider"] = { "n", 140258 },	-- Shandris Feathermoon
							["coord"] = { 51.2, 21.8, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								52170,	-- Ending Areiel
								52171,	-- One Option: Fire
								52172,	-- They Can't Stay Here
							},
							["g"] = {
								i(163196),	-- Invisibility Flask (QI!)
							},
						}),
						q(52219, {	-- Target: Blood Prince Dreven
							["provider"] = { "n", 140519 },	-- Shandris Feathermoon
							["coord"] = { 42.1, 39.7, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52208 },	-- Meeting of the Minds
						}),
					--	BETWEEN CHASING DARKNESS AND A GOLDEN OPPORTUNITY
						q(53070, {	-- Operation: Cutpurse
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
							["sourceQuests"] = { 52219 },	-- Target: Blood Prince Dreven
							["minReputation"] = { FACTION_7TH_LEGION, HONORED+3000 },
							["description"] = "Relog (outside of Boralus) if this doesn't appear upon hitting the reputation requirement",
							["DisablePartySync"] = true,
						}),
						q(52154, {	-- Our Next Target
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								53070,	-- Operation: Cutpurse
								52219,	-- Target: Blood Prince Dreven
							},
						}),
						q(52173, {	-- The Void Elves Stand Ready
							["provider"] = { "n", 140348 },	-- Magister Umbric
							["coord"] = { 69.4, 26.7, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52154 },	-- Our Next Target
						}),
					--	A GOLDEN OPPORTUNITY STARTS HERE
						q(52205, {	-- Bilgewater Bonanza Go Boom
							["provider"] = { "n", 140477 },	-- Magister Umbric
							["coord"] = { 40.6, 70.7, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52173 },	-- The Void Elves Stand Ready
						}),
						q(52204, {	-- The Void Solution
							["provider"] = { "n", 140477 },	-- Magister Umbric
							["coord"] = { 40.6, 70.7, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52173 },	-- The Void Elves Stand Ready
							["g"] = {
								i(161422),	-- Magister Umbric's Void Shard (QI!)
							},
						}),
						q(52203, {	-- Find the Paper Trail
							["provider"] = { "n", 140477 },	-- Magister Umbric
							["coord"] = { 40.6, 70.7, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52173 },	-- The Void Elves Stand Ready
							["g"] = {
								i(161420),	-- Orders from Gallywix (QI!)
							},
						}),
						q(52241, {	-- A Greedy Goblin's Paradise
							["provider"] = { "n", 140477 },	-- Magister Umbric
							["coord"] = { 40.6, 70.7, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								52205,	-- Bilgewater Bonanza Go Boom
								52203,	-- Find the Paper Trail
								52204,	-- The Void Solution
							},
						}),
						q(52247, {	-- Chasing Gallywix
							["provider"] = { "n", 140712 },	-- Magister Umbric
							["coord"] = { 40.3, 39.7, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52241 },	-- A Greedy Goblin's Paradise
						}),
						q(52259, {	-- I Take No Pleasure In This
							["provider"] = { "n", 140740 },	-- Magister Umbric
							["coord"] = { 21.5, 52.3, AZSHARA },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52247 },	-- Chasing Gallywix
						}),
						q(52260, {	-- We Have Him Cornered
							["provider"] = { "n", 140740 },	-- Magister Umbric
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52259 },	-- I Take No Pleasure In This
						}),
						q(52261, {	-- Gallywix Got Away
							["provider"] = { "n", 140740 },	-- Magister Umbric
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52260 },	-- We Have Him Cornered
						}),
					--	BETWEEN A GOLDEN OPPORTUNITY AND BLOOD IN THE WATER
						q(53071, {	-- Operation: Gryphon's Claw
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
							["sourceQuests"] = { 52261 },	-- Gallywix Got Away
							["minReputation"] = { FACTION_7TH_LEGION, HONORED+7500 },
							["description"] = "Relog (outside of Boralus) if this doesn't appear upon hitting the reputation requirement",
							["DisablePartySync"] = true,
						}),
						q(52308, {	-- Intercepted Orders
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								52261,	-- Gallywix Got Away
								53071,	-- Operation: Gryphon's Claw
							},
						}),
						q(52489, {	-- Hunting Blood Prince Dreven
							["sourceQuests"] = { 52308 },	-- Intercepted Orders
							["provider"] = { "n", 141356 },	-- Shandris Feathermoon
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["maps"] = { 1156 },	-- The Great Sea (scenario map)
						}),
					--	BLOOD IN THE WATER STARTS HERE
						q(52490, {	-- Behind Enemy Boats
							["sourceQuests"] = { 52489 },	-- Hunting Blood Prince Dreven
							["provider"] = { "n", 141567 },	-- Shandris Feathermoon
							["races"] = ALLIANCE_ONLY,
							["maps"] = { 1156 },	-- The Great Sea (scenario map)
						}),
						q(52491, {	-- Broadside Bedlam
							["sourceQuests"] = { 52490 },	-- Behind Enemy Boats
							["coord"] = { 36.8, 52.4, 1156 },	-- The Great Sea
							["races"] = ALLIANCE_ONLY,
						}),
						q(52492, {	-- The Wildhammer Specialty
							["sourceQuests"] = {
								52490,	-- Behind Enemy Boats
								52491,	-- Broadside Bedlam
							},
							["provider"] = { "n", 141541 },	-- Falstad Wildhammer
							["races"] = ALLIANCE_ONLY,
							["maps"] = { 1156 },	-- The Great Sea (scenario map)
						}),
						q(53131, {	-- Kings' Rest (Unlocks Kings' Rest)
							["sourceQuests"] = { 52492 },	-- The Wildhammer Specialty
							["provider"] = { "n", 142228 },	-- Shandris Feathermoon
							["races"] = ALLIANCE_ONLY,
						}),
						q(52493, {	-- An Unnatural Crew
							["sourceQuests"] = { 52492 },	-- The Wildhammer Specialty
							["provider"] = { "n", 142228 },	-- Shandris Feathermoon
							["coord"] = { 41.7, 56.9, 1156 },	-- The Great Sea
							["races"] = ALLIANCE_ONLY,
						}),
						q(52494, {	-- Foul Crystals for Foul People
							["sourceQuests"] = { 52492 },	-- The Wildhammer Specialty
							["provider"] = { "n", 142228 },	-- Shandris Feathermoon
							["coord"] = { 41.7, 56.9, 1156 },	-- The Great Sea
							["races"] = ALLIANCE_ONLY,
						}),
						q(52495, {	-- Ending the San'layn Threat
							["sourceQuests"] = {
								52493,	-- An Unnatural Crew
								52494,	-- Foul Crystals for Foul People
							},
							["provider"] = { "n", 142232 },	-- Shandris Feathermoon
							["coord"] = { 41.6, 55.3, 1156 },	-- The Great Sea
							["races"] = ALLIANCE_ONLY,
						}),
						q(52496, {	-- A Clean Escape
							["sourceQuests"] = { 52495 },	-- Ending the San'layn Threat
							["provider"] = { "n", 141567 },	-- Shandris Feathermoon
							["races"] = ALLIANCE_ONLY,
							["maps"] = { 1156 },	-- The Great Sea (scenario map)
						}),
					--	BETWEEN BLOOD IN THE WATER AND THE STRIKE ON ZULDAZAR
						q(53072, {	-- Operation: Heartstrike
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
							["sourceQuests"] = { 52496 },	-- A Clean Escape
							["minReputation"] = { FACTION_7TH_LEGION, REVERED },
							["description"] = "Relog (outside of Boralus) if this doesn't appear upon hitting the reputation requirement",
							["DisablePartySync"] = true,
						}),
						q(52473, {	-- Bringing Down the Fleet
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								52496,	-- A Clean Escape
								53072,	-- Operation: Heartstrike
							},
						}),
					--	THE STRIKE ON ZULDAZAR STARTS HERE
						q(52282, {	-- How to Sink a Zandalari Battleship
							["provider"] = { "n", 140257 },	-- Halford Wyrmbane
							["coord"] = { 40.7, 70.8, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52473 },	-- Bringing Down the Fleet
						}),
						q(52281, {	-- Under the Cover of Swiftwing
							["provider"] = { "n", 141287 },	-- Falstad Wildhammer
							["coord"] = { 40.7, 70.8, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52282 },	-- How to Sink a Zandalari Battleship
						}),
						q(52284, {	-- Ship Logs
							["provider"] = { "n", 141290 },	-- Kelsey Steelspark
							["coord"] = { 57.6, 87.5, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52281 },	-- Under the Cover of Swiftwing
							["g"] = {
								i(162264),	-- Kelsey's Jump Boots (QI!)
								i(162253),	-- Naval Records (QI!)
							},
						}),
						q(52283, {	-- Sabotaging the Pa'ku
							["provider"] = { "n", 141289 },	-- John J. Keeshan
							["coord"] = { 57.6, 87.5, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52281 },	-- Under the Cover of Swiftwing
						}),
						q(52285, {	-- The Enlarged Miniaturized Submarine
							["provider"] = { "n", 141290 },	-- Kelsey Steelspark
							["coord"] = { 57.6, 87.5, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								52283,	-- Sabotaging the Pa'ku
								52284,	-- Ship Logs
							},
						}),
						q(52290, {	-- My Enemy's Enemy is My Disguise
							["provider"] = { "n", 141291 },	-- Shandris Feathermoon
							["coord"] = { 48.8, 68.5, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52285 },	-- The Enlarged Miniaturized Submarine
						}),
						q(52286, {	-- Right Beneath Their Nose
							["provider"] = { "n", 141291 },	-- Shandris Feathermoon
							["coord"] = { 48.8, 68.5, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52290 },	-- My Enemy's Enemy is My Disguise
						}),
						q(52287, {	-- Intelligence Denial
							["provider"] = { "n", 141291 },	-- Shandris Feathermoon
							["coord"] = { 48.8, 68.5, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52290 },	-- My Enemy's Enemy is My Disguise
						}),
						q(52288, {	-- Void Vacation
							["provider"] = { "n", 141288 },	-- Magister Umbric
							["coord"] = { 48.8, 68.5, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52290 },	-- My Enemy's Enemy is My Disguise
							["g"] = {
								i(162450),	-- Portal Orb (QI!)
							},
						}),
						q(52289, {	-- Victory is Assured
							["provider"] = { "n", 141291 },	-- Shandris Feathermoon
							["coord"] = { 48.8, 68.5, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								52287,	-- Intelligence Denial
								52286,	-- Right Beneath Their Nose
								52288,	-- Void Vacation
							},
						}),
						q(52291, {	-- Victory Was Assured
							["provider"] = { "n", 140257 },	-- Halford Wyrmbane
							["coord"] = { 40.4, 71.5, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52289 },	-- Victory is Assured
						}),
						q(52788, {	-- Leave None Alive
							["provider"] = { "n", 141719 },	-- Halford Wyrmbane
							["coord"] = { 35.1, 77.2, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52291 },	-- Victory Was Assured
						}),
						q(52789, {	-- Silencing the Advisor
							["provider"] = { "n", 144024 },	-- Halford Wyrmbane
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52788 },	-- Leave None Alive
						}),
						q(52790, {	-- An End to the Killing
							["provider"] = { "n", 144024 },	-- Halford Wyrmbane
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 52789 },	-- Silencing the Advisor
						}),
						q(53098, {	-- Champion: Shandris Feathermoon
							["provider"] = { "n", 141291 },	-- Shandris Feathermoon
							["races"] = ALLIANCE_ONLY,
							["coord"] = { 85.7, 31.7, STORMWIND_CITY },
							["sourceQuests"] = { 52790 },	-- An End to the Killing
							["lvl"] = 120,
							["g"] = {
								follower(1062),	-- Shandris Feathermoon
							},
						}),
					--	BETWEEN READY FOR WAR AND TIDES OF VENGEANCE START
						q(53986, {	-- The Calm Before
							["provider"] = { "n", 135614 },	-- Master Mathias Shaw
							["coord"] = { 70.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 53098 },	-- Champion: Shandris Feathermoon
						}),
					--	WAR MARCHES ON STARTS HERE
						q(53888, {	-- To Anglepoint
							["provider"] = { "n", 145580 },	-- Lady Jaina Proudmoore
							["coord"] = { 67.0, 36.2, TIRAGARDE_SOUND },	-- technically in Boralus but shows up in TS
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 53986 },	-- The Calm Before
						}),
						q(53896, {	-- Stand Fast
							["provider"] = { "n", 145580 },	-- Lady Jaina Proudmoore
							["coord"] = { 42.1, 29.9, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 53888 },	-- To Anglepoint
						}),
						q(53910, {	-- Repel the Horde
							["sourceQuests"] = { 53896 },	-- Stand Fast
							["provider"] = { "n", 145580 },	-- Lady Jaina Proudmoore
							["coord"] = { 42.1, 29.9, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
						}),
						q(54519, {	-- Squad Goals
							["provider"] = { "n", 148015 },	-- Taelia Fordragon
							["coord"] = { 42.1, 29.9, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 53896 },	-- Stand Fast
						}),
						q(54518, {	-- Zero Zeppelins
							["provider"] = { "n", 145632 },	-- Okri Putterwrench
							["coord"] = { 42.1, 29.8, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54519 },	-- Squad Goals (not required to complete first, but must fully pick up the quest before Zero Zeppelins appears)
						}),
						q(53909, {	-- Besieged Allies
							["provider"] = { "n", 145580 },	-- Lady Jaina Proudmoore
							["coord"] = { 42.1, 29.9, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 53896 },	-- Stand Fast
						}),
						q(53916, {	-- Outrigger Outfitters
							["provider"] = { "n", 145593 },	-- Rosaline Madison
							["coord"] = { 41.5, 27.1, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 53909 },	-- Besieged Allies
							-- This quest was available before I turned in Squad Goals, Repel the Horde, or Zero Zeppelins.  Not sure if those 3 are optional or required further down the chain.  Assuming they are required for the next part, so listing them.
						}),
						q(53978, {	-- Gunpowder Plots
							["provider"] = { "n", 145593 },	-- Rosaline Madison
							["coord"] = { 41.5, 27.1, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								53916,	-- Outrigger Outfitters (definitely required)
								53909,	-- Besieged Allies
								54519,	-- Squad Goals
								54518,	-- Zero Zeppelins
							},
						}),
						q(54787, {	-- Masking for a Friend
							["provider"] = { "n", 145593 },	-- Rosaline Madison
							["coord"] = { 41.5, 27.1, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								53916,	-- Outrigger Outfitters (definitely required)
								53909,	-- Besieged Allies
								54519,	-- Squad Goals
								54518,	-- Zero Zeppelins
							},
							["g"] = {
								i(166682),	-- Blight Specialist Mask (QI!)
							},
						}),
						q(54559, {	-- Free Plumeria
							["provider"] = { "n", 145632 },	-- Okri Putterwrench
							["coord"] = { 41.5, 27.1, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								53916,	-- Outrigger Outfitters (definitely required)
								53909,	-- Besieged Allies
								54519,	-- Squad Goals
								54518,	-- Zero Zeppelins
							},
						}),
						q(53919, {	-- Shots Fired
							["sourceQuests"] = {
								54559,	-- Free Plumeria
								53978,	-- Gunpowder Plots
								54787,	-- Masking for a Friend
								53910,	-- Repel the Horde
							},
							["provider"] = { "n", 145593 },	-- Rosaline Madison
							["coord"] = { 37.5, 24.9, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
						}),
						q(53936, {	-- Stopping the Sappers
							["provider"] = { "n", 145580 },	-- Lady Jaina Proudmoore
							["coord"] = { 37.4, 24.9, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 53919 },	-- Shots Fired
						}),
						q(54703, {	-- Express Delivery
							["provider"] = { "n", 145580 },	-- Lady Jaina Proudmoore
							["coord"] = { 36.2, 29.8, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 53936 },	-- Stopping the Sappers
						}),
						q(53887, {	-- War Marches On
							["provider"] = { "n", 145580 },	-- Lady Jaina Proudmoore
							["coord"] = { 36.4, 30.7, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54703 },	-- Express Delivery
						}),
					--	BETWEEN WAR MARCHES ON AND THE SLEEPER AGENT
						q(54191, {	-- Changing Course
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
							["sourceQuests"] = { 53887 },	-- War Marches On
						}),
						q(54192, {	-- Sensitive Intel
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54191 },	-- Changing Course
						}),
					--	THE SLEEPER AGENT STARTS HERE
						q(54193, {	-- This is Huge!
							["provider"] = { "n", 147151 },	-- Kelsey Steelspark
							["coord"] = { 41.1, 70.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54192 },	-- Sensitive Intel
						}),
						q(54194, {	-- Real Big Power
							["provider"] = { "n", 147148 },	-- Megs
							["coord"] = { 41.1, 70.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54193 },	-- This is Huge
						}),
						q(54195, {	-- A Beast with Brains
							["provider"] = { "n", 147148 },	-- Megs
							["coord"] = { 41.1, 70.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54194 },	-- Real Big Power
						}),
						q(54196, {	-- Out of Options
							["provider"] = { "n", 147228 },	-- Grong
							["coord"] = { 48.2, 55.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54195 },	-- A Beast with Brains
						}),
						q(54197, {	-- Freedom for the Da'kani
							["provider"] = { "n", 147228 },	-- Grong
							["coord"] = { 48.2, 55.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54195 },	-- A Beast with Brains
						}),
						q(54198, {	-- Bittersweet Goodbyes
							["provider"] = { "n", 147293 },	-- Grong
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								54197,	-- Freedom for the Da'kani
								54196,	-- Out of Options
							},
						}),
						q(54199, {	-- The Needs of the Many
							["provider"] = { "n", 147228 },	-- Grong
							["coord"] = { 46.8, 50.5, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54198 },	-- Bittersweet Goodbyes
						}),
						q(54200, {	-- Bring the Base
							["provider"] = { "n", 147149 },	-- Morton Cogswald
							["coord"] = { 41.1, 70.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54199 },	-- The Needs of the Many
						}),
						q(54201, {	-- Fit for Grong
							["provider"] = { "n", 147311 },	-- Morton Cogswald
							["coord"] = { 41.1, 70.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54200 },	-- Bring the Base
							["g"] = {
								i(165759),	-- Azerite Infused Ore (QI!)
							},
						}),
						q(54202, {	-- Calibrate the Core
							["provider"] = { "n", 147148 },	-- Megs
							["coord"] = { 41.1, 70.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54200 },	-- Bring the Base
						}),
						q(54203, {	-- The Embiggining
							["provider"] = { "n", 147148 },	-- Megs
							["coord"] = { 41.1, 70.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								54202,	-- Calibrate the Core
								54201,	-- Fit for Grong
							},
						}),
						q(54204, {	-- Total Temple Destruction
							["provider"] = { "n", 147148 },	-- Megs
							["coord"] = { 41.1, 70.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54203 },	-- The Embiggining
						}),
						q(54205, {	-- A Nice Nap
							["provider"] = { "n", 147519 },	-- Kelsey Steelspark
							["coord"] = { 41.1, 70.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54204 },	-- Total Temple Destruction
							["g"] = {
								i(165815),	-- Tranquilizer Dart (QI!)
							},
						}),
						q(54206, {	-- The Sleeper Agent
							["provider"] = { "n", 147519 },	-- Kelsey Steelspark
							["coord"] = { 41.1, 70.6, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54205 },	-- A Nice Nap
						}),
					--	BETWEEN THE SLEEPER AGENT AND MISCHIEF MANAGED
						q(54171, {	-- The Abyssal Scepter
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54206 },	-- The Sleeper Agent
						}),
						q(54169, {	-- The Treasury Heist
							["sourceQuests"] = { 54171 },	-- The Abyssal Scepter
							["provider"] = { "n", 146982 },	-- Lady Jaina Proudmoore
							["coord"] = { 40.6, 70.7, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["maps"] = { 1348 },	-- Zandalari Treasury
						}),
						q(54510, {	-- Mischief Managed
							["sourceQuests"] = { 54169 },	-- The Treasury Heist
							["provider"] = { "n", 146982 },	-- Lady Jaina Proudmoore
							["coord"] = { 40.6, 70.7, ZULDAZAR },
							["races"] = ALLIANCE_ONLY,
							["modID"] = 5,
							["g"] = {
								i(163339),	-- 7th Legionnaire's Hood (Cloth)
								i(163337),	-- 7th Legionnaire's Amice (Cloth)
								i(163248),	-- 7th Legionnaire's Robes (Cloth)
								i(163380),	-- 7th Legionnaire's Visage (Leather)
								i(163377),	-- 7th Legionnaire's Mantle (Leather)
								i(163251),	-- 7th Legionnaire's Vest (Leather)
								i(163394),	-- 7th Legionnaire's Helm (Mail)
								i(163389),	-- 7th Legionnaire's Monnion (Mail)
								i(163398),	-- 7th Legionnaire's Chainmail (Mail)
								i(163405),	-- 7th Legionnaire's Shoulderplates (Plate)
								i(163410),	-- 7th Legionnaire's Headpiece (Plate)
								i(163418),	-- 7th Legionnaire's Chestguard (Plate)
							},
						}),
					--	BETWEEN MISCHIEF MANAGED AND HE WHO WALKS IN THE LIGHT
						q(54302, {	-- The Fall of Zuldazar
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54510 },	-- Mischief Managed
							-- Technically available before turning in this quest, but is the next part of the campaign.
						}),
						q(54303, {	-- The March to Nazmir
							["provider"] = { "n", 147819 },	-- Blademaster Telaamon
							["coord"] = { 39.1, 77.1, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54302 },	-- The Fall of Zuldazar
						}),
					--	HE WHO WALKS IN THE LIGHT STARTS HERE
						q(54310, {	-- Repurposing Their Village
							["provider"] = { "n", 147842 },	-- Lady Jaina Proudmoore
							["coord"] = { 30.9, 29.5, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54303 },	-- The March to Nazmir
						}),
						q(54404, {	-- Dark Iron Machinations
							["provider"] = { "n", 147843 },	-- Master Mathias Shaw
							["coord"] = { 30.9, 29.5, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54303 },	-- The March to Nazmir
						}),
						q(54312, {	-- Fog of War
							["provider"] = { "n", 147844 },	-- Blademaster Telaamon
							["coord"] = { 33.3, 45.9, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								54404,	-- Dark Iron Machinations
								54310,	-- Repurposing Their Village
							},
						}),
						q(54407, {	-- Lurking in the Swamp
							["provider"] = { "n", 147842 },	-- Lady Jaina Proudmoore
							["coord"] = { 33.6, 47.7, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54312 },	-- Fog of War
						}),
						q(54412, {	-- Zul'jan Deluge
							["provider"] = { "n", 147842 },	-- Lady Jaina Proudmoore
							["coord"] = { 35.7, 68.1, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54407 },	-- Lurking in the Swamp
						}),
						q(54417, {	-- Showing Our Might
							["provider"] = { "n", 147842 },	-- Lady Jaina Proudmoore
							["coord"] = { 44.2, 78.8, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54412 },	-- Zul'jan Deluge
						}),
						q(54421, {	-- Taming their Beasts
							["provider"] = { "n", 147843 },	-- Master Mathias Shaw
							["coord"] = { 44.2, 78.6, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54412 },	-- Zul'jan Deluge
						}),
						q(54418, {	-- The Mech of Death
							["provider"] = { "n", 147844 },	-- Blademaster Telaamon
							["coord"] = { 44.2, 78.6, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54412 },	-- Zul'jan Deluge
						}),
						q(54441, {	-- Taking the Blood Gate
							["provider"] = { "n", 147842 },	-- Lady Jaina Proudmoore
							["coord"] = { 50.4, 84.1, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								54417,	-- Showing Our Might
								54421,	-- Taming their Beasts
								54418,	-- The Mech of Death
							},
							["g"] = {
								i(166230),	-- Re-Discombobulator (QI!)
							},
						}),
						q(54459, {	-- He Who Walks in the Light
							["provider"] = { "n", 147842 },	-- Lady Jaina Proudmoore
							["coord"] = { 50.4, 84.1, NAZMIR },
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = { 54441 },	-- Taking the Blood Gate
							["g"] = {
								i(166230),	-- Re-Discombobulator (QI!)
							},
						}),
					--	AFTER TIDES OF VENGEANCE
						q(54485, {	-- Battle of Dazar'alor
							["sourceQuests"] = { 54459 },	-- He Who Walks in the Light
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
						}),
						q(54163, {	-- As the Dust Settles
							["sourceQuests"] = { 54459 },	-- He Who Walks in the Light
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
						}),
						q(54183, {	-- Dead Reckoning
							["sourceQuests"] = { 54163 },	-- As the Dust Settles
							["provider"] = { "n", 147885 },	-- Anduin Wrynn
							["coord"] = { 49.2, 85.4, BORALUS },
							["races"] = ALLIANCE_ONLY,
						}),
						q(55118, {	-- Loose Ends
							["sourceQuests"] = { 54459 },	-- He Who Walks in the Light
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.5, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
						}),
						q(55033, {	-- Ashes to Ashvane
							["sourceQuests"] = { 55118 },	-- Loose Ends
							["provider"] = { "n", 150796 },	-- Kelsey Steelspark
							["coord"] = { 80.1, 75.0, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
						}),
						q(55117, {	-- Correspondence Conundrum
							["sourceQuests"] = { 55118 },	-- Loose Ends
							["provider"] = { "n", 150796 },	-- Kelsey Steelspark
							["coord"] = { 80.1, 75.0, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
							["g"] = {
								i(167151),	-- A Pile of Betting Slips (QI!)
								i(167149),	-- An Annotated Recipe (QI!)
								i(167153),	-- Ashvane Shipping Record (QI!)
								i(167154),	-- Bad Poetry (QI!)
								i(167065),	-- Suspiciously Encrypted Letter (QI!)
							},
						}),
						q(55116, {	-- Getting a Clue
							["sourceQuests"] = {
								55033,	-- Ashes to Ashvane
								55117,	-- Correspondence Conundrum
							},
							["provider"] = { "n", 150796 },	-- Kelsey Steelspark
							["coord"] = { 80.1, 75.0, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
							["g"] = {
								i(167155),	-- Ashvane Cipher Ring (QI!)
							},
						}),
						q(55119, {	-- Reporting In!
							["sourceQuests"] = { 55116 },	-- Getting A Clue
							["provider"] = { "n", 150796 },	-- Kelsey Steelspark
							["coord"] = { 80.1, 75.0, TIRAGARDE_SOUND },
							["races"] = ALLIANCE_ONLY,
							["g"] = {
								i(167102),	-- A Decrypted Letter from Ashvane (QI!)
							},
						}),
						q(55044, {	-- Don't Shoot the Messenger
							["sourceQuests"] = { 55119 },	-- Reporting In!
							["provider"] = { "n", 135614 },	-- Master Mathias Shaw
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
						}),
						q(55045, {	-- My Brother's Keeper
							["sourceQuests"] = { 55044 },	-- Don't Shoot the Messenger
							["provider"] = { "n", 150574 },	-- Lady Jaina Proudmoore
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
						}),
						q(55171, {	-- Spy Versus Spy
							["sourceQuests"] = { 55045 },	-- My Brother's Keeper
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
						}),
						q(55087, {	-- The Gathering Storm
							["sourceQuests"] = { 55171 },	-- Spy Versus Spy
							["provider"] = { "n", 135612 },	-- Halford Wyrmbane
							["coord"] = { 69.4, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
						}),
						q(55179, {	-- Retaliation Coordination
							["sourceQuests"] = { 55087 },	-- The Gathering Storm
							["provider"] = { "n", 150633 },	-- Lady Jaina Proudmoore
							["coord"] = { 45.3, 62.6, BORALUS },
							["races"] = ALLIANCE_ONLY,
						}),
						q(55088, {	-- Lost in the Field
							["sourceQuests"] = { 55179 },	-- Retaliation Coordination
							["provider"] = { "n", 150637 },	-- Kelsey Steelspark
							["coord"] = { 48.2, 41.4, STORMSONG_VALLEY },
							["races"] = ALLIANCE_ONLY,
						}),
						q(55182, {	-- Reassembly Required
							["sourceQuests"] = { 55179 },	-- Retaliation Coordination
							["provider"] = { "n", 150637 },	-- Kelsey Steelspark
							["coord"] = { 48.2, 41.4, STORMSONG_VALLEY },
							["races"] = ALLIANCE_ONLY,
							["g"] = {
								i(167216),	-- Salvaged Parts (QI!)
							},
						}),
						q(55183, {	-- Seeking Higher Ground
							["sourceQuests"] = {
								55088,	-- Lost in the Field
								55182,	-- Reassembly Required
							},
							["provider"] = { "n", 150637 },	-- Kelsey Steelspark
							["coord"] = { 48.2, 41.4, STORMSONG_VALLEY },
							["races"] = ALLIANCE_ONLY,
						}),
						q(55185, {	-- Listen Up!
							["sourceQuests"] = { 55183 },	-- Seeking Higher Ground
							["provider"] = { "n", 150637 },	-- Kelsey Steelspark
							["coord"] = { 52.1, 39.2, STORMSONG_VALLEY },
							["races"] = ALLIANCE_ONLY,
						}),
						q(55089, {	-- Shaw's Shank Redemption
							["sourceQuests"] = { 55185 },	-- Listen Up!
							["provider"] = { "n", 150637 },	-- Kelsey Steelspark
							["coord"] = { 52.1, 39.2, STORMSONG_VALLEY },
							["races"] = ALLIANCE_ONLY,
						}),
						q(55090, {	-- A Gathering of Foes
							["sourceQuests"] = { 55089 },	-- Shaw's Shank Redemption
							["provider"] = { "n", 150640 },	-- Master Mathias Shaw
							["coord"] = { 48.8, 32.8, STORMSONG_VALLEY },
							["races"] = ALLIANCE_ONLY,
						}),
						-- Night Warrior appearance unlock
						q(53849, {	-- Waning Hope
							["sourceQuests"] = { 53847 },	-- On Whispered Winds
							["provider"] = { "n", 146050 },	-- Maiev Shadowsong
							["coord"] = { 86.6, 35.7, STORMWIND_CITY },
							["races"] = ALLIANCE_ONLY,
						}),
						q(53988, {	-- Shores of Fate
							["sourceQuests"] = { 53849 },	-- Waning Hope
							["provider"] = { "n", 146050 },	-- Maiev Shadowsong
							["coord"] = { 86.6, 35.7, STORMWIND_CITY },
							["races"] = ALLIANCE_ONLY,
						}),
						q(53989, {	-- Hope
							["sourceQuests"] = { 53988 },	-- Shores of Fate
							["provider"] = { "n", 146374 },	-- Shandris Feathermoon
							["coord"] = { 11.5, 17.6, ASHENVALE },
							["races"] = ALLIANCE_ONLY,
							["g"] = {
								o(310600, {	-- Ancient Kaldorei Tome
									["coord"] = { 9.9, 13.9, ASHENVALE },
									["g"] = { i(165232) },	-- Ancient Kaldorei Tome (QI!)
								}),
								o(310601, {	-- Discarded Nightsaber Bridle
									["coord"] = { 11.3, 13.7, ASHENVALE },
									["g"] = { i(165233) },	-- Discarded Nightsaber Bridle (QI!)
								}),
								o(310603, {	-- Bow of the High Priestess
									["coord"] = { 12.0, 15.4, ASHENVALE },
									["g"] = { i(165250) },	-- Elun'tara, Bow of the High Priestess (QI!)
								}),
							},
						}),
						q(54041, {	-- No Survivors
							["sourceQuests"] = { 53988 },	-- Shores of Fate
							["provider"] = { "n", 146375 },	-- Sira Moonwarden
							["coord"] = { 11.4, 17.8, ASHENVALE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(53990, {	-- In Darkest Night
							["coord"] = { 86.6, 35.7, STORMWIND_CITY },
							["races"] = ALLIANCE_ONLY,
							["provider"] = { "n", 146050 },	-- Maiev Shadowsong
							["sourceQuests"] = {
								53989,	-- Hope
								54041,	-- No Survivors
							},
						}),
						q(54871, {	-- We Are Coming
							["sourceQuests"] = { 53990 },	-- In Darkest Night
							["provider"] = { "n", 149612 },	-- Shandris Feathermoon
							["coord"] = { 69.5, 26.8, BORALUS },
							["races"] = ALLIANCE_ONLY,
						}),
					--	RISE OF AZSHARA (8.2)
						q(55784, {	-- Payment in Kind
							["sourceQuests"] = {
								55937,	-- Clearing Out the Cache
								54183,	-- Dead Reckoning
							},
							["coord"] = { 40.2, 55.2, 1355 },	-- Nazjatar
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 120,
							["provider"] = { "n", 150101 },	-- Lady Jaina Proudmoore
						}),
						q(55783, {	-- Stay of Execution
							["sourceQuests"] = { 55784 },	-- Payment in Kind
							["coord"] = { 85.7, 31.7, STORMWIND_CITY },
							["races"] = ALLIANCE_ONLY,
							["maps"] = {
								1479,	-- Baine Rescue (Scenario)
							},
							["lvl"] = 120,
							["provider"] = { "n", 107574 },	-- Anduin Wrynn
						}),
					--	8.2.5
						q(56494, {	-- The Eye of Battle
							["sourceQuests"] = { 55783 },	-- Stay of Execution
							["provider"] = { "n", 135614 },	-- Master Mathias Shaw
							["coord"] = { 70.5, 27.0, BORALUS },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 120,
						}),
						q(56719, {	-- This Ain't Mine
							["sourceQuests"] = { 56494 },	-- The Eye of Battle
							["provider"] = { "n", 155784 },	-- Anduin Wrynn
							["coord"] = { 54.0, 42.6, DUROTAR },
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 120,
						}),
						q(56979, {	-- Saving the Siege
							["sourceQuests"] = { 56719 },	-- This Ain't Mine
							["provider"] = { "n", 155784 },	-- Anduin Wrynn
							["coord"] = { 41.7, 56.2, 1535 },	-- Durotar (instanced version)
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 120,
						}),
						q(56980, {	-- Already Among Us
							["sourceQuests"] = { 56719 },	-- This Ain't Mine
							["provider"] = { "n", 155784 },	-- Anduin Wrynn
							["coord"] = { 41.7, 56.2, 1535 },	-- Durotar (instanced version)
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 120,
						}),
						q(56981, {	-- Strategic Deployment
							["sourceQuests"] = { 56719 },	-- This Ain't Mine
							["provider"] = { "n", 155784 },	-- Anduin Wrynn
							["coord"] = { 41.7, 56.2, 1535 },	-- Durotar (instanced version)
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 120,
						}),
						q(56982, {	-- Before the Gates of Orgrimmar
							["sourceQuests"] = {
								56980,	-- Already Among Us
								56979,	-- Saving the Siege
								56981,	-- Strategic Deployment
							},
							["provider"] = { "n", 155784 },	-- Anduin Wrynn
							["coord"] = { 41.7, 56.2, 1535 },	-- Durotar (instanced version)
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 120,
						}),
						q(56993, {	-- The Price of Victory
							["sourceQuests"] = { 56982 },	-- Before the Gates of Orgrimmar
							["provider"] = { "n", 155785 },	-- Lady Jaina Proudmoore
							["coord"] = { 36.0, 64.0, 1535 },	-- Durotar (instanced version)
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 120,
						}),
						q(57002, {	-- Old Soldier
							["sourceQuests"] = { 56993 },	-- The Price of Victory
							["provider"] = { "n", 155785 },	-- Lady Jaina Proudmoore
							["coord"] = { 36.0, 64.0, 1535 },	-- Durotar (instanced version)
							["races"] = ALLIANCE_ONLY,
							["lvl"] = 120,
						}),
					}),
				},
			}),
		}),
	})
);