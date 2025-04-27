---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, applyclassicphase(TBC_PHASE_ONE, {
	m(BLOODMYST_ISLE, {
		["lore"] = "Bloodmyst Isle is a low-level zone covering the struggles of the Draenei to rebuild their civilization. It gets its distinctive red look from the corrupting red crystals found on the Exodar, the Draenei's spaceship that crashed.",
		["icon"] = 236721,
		["timeline"] = { ADDED_2_0_1 },
		["lvl"] = 10,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4926, {	-- Bloodmyst Isle Quests
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						9700,	-- I Shoot Magic Into the Darkness
						9711,	-- Matis the Cruel
						9740,	-- The Sun Gate
						9579,	-- Galaen's Fate
						9741,	-- Critters of the Void
						10065,	-- Cutting a Path
						10067,	-- Fouled Water Spirits
						10066,	-- Oh, the Tangled Webs They Weave
						9683,	-- Ending the Bloodcurse
						9689,	-- Razormaw
						9759,	-- Ending Their World
					},
					-- #endif
				}),
				explorationAch(861),	-- Explore Bloodmyst Isle
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					628,	-- Infected Fawn (PET!)
					627,	-- Infected Squirrel (PET!)
					417,	-- Rat (PET!)
					397,	-- Skunk (PET!)
				}},
				["groups"] = {
					pet(465),	-- Ravager Hatchling (PET!)
				},
			}),
			explorationHeader({
				exploration(3597),	-- Amberweb Pass
				exploration(3593),	-- Axxarien
				exploration(3583),	-- Beryl Coast
				exploration(3594),	-- Blacksilt Shore
				exploration(3585),	-- Bladewood
				exploration(3584),	-- Blood Watch
				exploration(3612),	-- Bloodcurse Isle
				exploration(3600),	-- Bristlelimb Enclave
				exploration(3602),	-- Kessel's Crossing
				exploration(3908),	-- Middenvale
				exploration(3910),	-- Mystwood
				exploration(3592),	-- Nazzivian
				exploration(3601),	-- Ragefeather Ridge
				exploration(3591),	-- Ruins of Loreth'Aran
				exploration(3599),	-- Talon Stand
				exploration(3603),	-- Tel'athion's Camp
				exploration(3604),	-- The Bloodcursed Reef
				exploration(3906),	-- The Bloodwash
				exploration(3589),	-- The Crimson Reach
				exploration(3588),	-- The Cryo-Core
				exploration(3595),	-- The Foul Pool
				exploration(3596),	-- The Hidden Reef
				exploration(3909),	-- The Lost Fold
				exploration(3586),	-- The Vector Coil
				exploration(3587),	-- The Warp Piston
				exploration(3907),	-- Veridian Point
				exploration(3608),	-- Vindicator's Rest
				exploration(3590),	-- Wrathscale Lair
				exploration(3598),	-- Wyrmscar Island
			}),
			n(FLIGHT_PATHS, {
				fp(93, {	-- Blood Watch, Bloodmyst Isle [Alliance]
					["cr"] = 17554,	-- Laando <Hippogryph Master>
					["coord"] = { 57.6, 54.0, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(9624, {	-- A Favorite Treat
					["qg"] = 17599,	-- Aonar
					["coord"] = { 63.4, 88.7, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(9, 9, 1),
					["groups"] = {
						objective(1, {	-- 0/10 Sand Pear
							["providers"] = {
								{ "i",  23927 },	-- Sand Pear
								{ "o", 181854 },	-- Sand Pear
							},
						}),
						i(26018),	-- Elekk Handler's Leathers
						i(26031),	-- Elekk Rider's Plate
						-- #if AFTER LEGION
						i(131264),	-- Elekk Tender's Chain
						-- #endif
						i(26004),	-- Farmhand's Vest
						i(24072),	-- Sand Pear Pie
					},
				}),
				q(9550, {	-- A Map to Where?
					["provider"] = { "i", 23837 },	-- Weathered Treasure Map
					["sourceQuest"] = 9549,	-- Artifacts of the Blacksilt
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(13, 13, 1),
				}),
				q(9634, {	-- Alien Predators
					["qg"] = 17586,	-- Vorkhan the Elekk Herder
					-- #if AFTER CATA
					["sourceQuests"] = {
						28559,	-- Hero's Call: Bloodmyst Isle!
						9625,	-- Elekks Are Serious Business
					},
					-- #else
					["sourceQuest"] = 9625,	-- Elekks Are Serious Business
					-- #endif
					["coord"] = { 63.0, 87.9, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(8, 8, 1),
					["groups"] = {
						objective(1, {	-- 0/10 Bloodmyst Hatchling slain
							["provider"] = { "n", 17525 },	-- Bloodmyst Hatchling
						}),
						i(26051),	-- 2 Stone Sledgehammer
						i(26053),	-- Elekk Handler's Blade
						-- #if AFTER LEGION
						i(156993),	-- Long-Reach Elekk Prod [Actually 7.3.5, not 7.0.3]
						-- #endif
						i(26049),	-- Old Elekk Prod
						i(27389),	-- Surplus Bastard Sword
					},
				}),
				q(9549, {	-- Artifacts of the Blacksilt
					["qg"] = 17421,	-- Clopper Wizbang
					-- #if AFTER CATA
					["sourceQuest"] = 10063,	-- Explorers' League, Is That Something for Gnomes?
					-- #else
					["sourceQuest"] = 9548,	-- Pilfered Equipment
					-- #endif
					["coord"] = { 42.1, 21.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(13, 13, 1),
					["groups"] = {
						objective(1, {	-- 0/3 Crude Murloc Idol
							["provider"] = { "i", 23834 },	-- Crude Murloc Idol
							["cr"] = 17330,	-- Blacksilt Seer
						}),
						objective(2, {	-- 0/6 Crude Murloc Knife
							["provider"] = { "i", 23833 },	-- Crude Murloc Knife
							["crs"] = {
								17328,	-- Blacksilt Shorestriker
								17329,	-- Blacksilt Warrior
							},
						}),
						i(23837),	-- Weathered Treasure Map
					},
				}),
				q(9698, {	-- Audience with the Prophet
					["qg"] = 17825,	-- Interrogator Elysia
					["sourceQuest"] = 9696,	-- Translations...
					["coord"] = { 54.4, 54.4, BLOODMYST_ISLE },
					["maps"] = { THE_EXODAR },
					["cost"] = { { "i", 24323, 1 } },	-- Translated Sunhawk Missive
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(14, 14, 1),
				}),
				-- #if BEFORE CATA
				-- This quest was moved from Azuremyst Isle after Cataclysm.
				q(9603, {	-- Beds, Bandages, and Beyond
					["qg"] = 17553,	-- Caregiver Topher Loaal
					["coord"] = { 55.8, 59.8, BLOODMYST_ISLE },
					["cost"] = { { "i", 23902, 1 } },	-- Topher's List
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				-- #endif
				q(9694, {	-- Blood Watch
					["qg"] = 17684,	-- Vindicator Boros
					["sourceQuest"] = 9693,	-- What Argus Means to Me
					["coord"] = { 55.4, 55.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- 0/10 Sunhawk Spy slain
							["provider"] = { "n", 17604 },	-- Sunhawk Spy
						}),
						i(26054),	-- Blade of Argus
						i(26050),	-- Fist of Argus
						i(27640),	-- Hand of Argus Crossfire
					},
				}),
				q(9500, {	-- Call of Water (1/6) (Azuremyst Isle)
					["qg"] = 17212,	-- Tuluun <Shaman Trainer>
					["coord"] = { 48.0, 50.6, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(10490, {	-- Call of Water (1/6) (Stormwind City)
					["qg"] = 20407,	-- Farseer Umbrua <Shaman Trainer>
					["coord"] = { 61.8, 83.8, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(9502, {	-- Call of Water (1/6) (The Exodar)
					["qg"] = 17219,	-- Sulaa <Shaman Trainer>
					["coord"] = { 32.6, 24.2, THE_EXODAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(9501, {	-- Call of Water (2/6)
					["qg"] = 17204,	-- Farseer Nobundo <Shaman Trainer>
					["sourceQuests"] = {
						9500,	-- Call of Water (1/6) (Azuremyst Isle)
						10490,	-- Call of Water (1/6) (Stormwind City)
						9502,	-- Call of Water (1/6) (The Exodar)
					},
					["coord"] = { 30.0, 32.4, THE_EXODAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["lvl"] = 20,
					["groups"] = {
						i(23871),	-- Potion of Water Breathing
					},
				}),
				q(9503, {	-- Call of Water (3/6)
					["qg"] = 17275,	-- Aqueous
					["sourceQuest"] = 9501,	-- Call of Water (2/6)
					["coord"] = { 32.4, 16.2, BLOODMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/6 Foul Essence
							["provider"] = { "i", 23744 },	-- Foul Essence
							["cr"] = 17358,	-- Fouled Water Spirit
						}),
					},
				}),
				q(9504, {	-- Call of Water (4/6)
					["qg"] = 17275,	-- Aqueous
					["sourceQuest"] = 9503,	-- Call of Water (3/6)
					["coord"] = { 32.4, 16.2, BLOODMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Bota Bag
							["provider"] = { "i", 23750 },	-- Filled Bota Bag
							["cost"] = { { "i", 23749, 1 } },	-- Empty Bota Bag
							["coord"] = { 33, 37, ASHENVALE },
						}),
					},
				}),
				q(9508, {	-- Call of Water (5/6)
					["qg"] = 17275,	-- Aqueous
					["sourceQuest"] = 9504,	-- Call of Water (4/6)
					["coord"] = { 32.4, 16.2, BLOODMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Head of Tel'athion
							["provider"] = { "i", 23997 },	-- Head of Tel'athion
							["coord"] = { 25.8, 40.8, BLOODMYST_ISLE },
							["cost"] = { { "i", 23751, 1 } },	-- Skin of Purest Water
							["cr"] = 17359,	-- Tel'athion the Impure
						}),
					},
				}),
				q(9509, {	-- Call of Water (6/6)
					["providers"] = {
						{ "n", 17275 },	-- Aqueous
						{ "i", 23752 },	-- Flask of Purest Water
					},
					["sourceQuest"] = 9508,	-- Call of Water (5/6)
					["coord"] = { 32.4, 16.2, BLOODMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { SHAMAN },
					["races"] = { DRAENEI },
					["lvl"] = 20,
					["groups"] = {
						recipe(5394),	-- Healing Stream Totem
						i(5177, {	-- Water Totem
							["description"] = "You must keep this in your bags forever.",
						}),
					},
				}),
				q(9629, {	-- Catch and Release
					["qg"] = 17434,	-- Morae
					["coord"] = { 53.2, 57.7, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Blacksilt Scouts Tagged
							["provider"] = { "i", 23995 },	-- Murloc Tagger
							["coord"] = { 42.7, 95.8, BLOODMYST_ISLE },
							["cr"] = 17326,	-- Blacksilt Scout
						}),
						-- #if AFTER LEGION
						i(131265),	-- Analyst's Gloves
						i(120951),	-- Protective Field Grips
						-- #endif
						i(26034, {	-- Protective Field Gloves
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(26022),	-- Researcher's Gloves
						i(26008),	-- Scholar's Gloves
					},
				}),
				q(9761, {	-- Clearing the Way
					["qg"] = 17986,	-- Vindicator Corin
					["sourceQuest"] = 9760,	-- Vindicator's Rest
					["coord"] = { 30.7, 46.8, BLOODMYST_ISLE },
					-- #if BEFORE CATA
					["races"] = { DRAENEI },
					-- #else
					["races"] = ALLIANCE_ONLY,
					-- #endif
					["lvl"] = lvlsquish(18, 18, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Sunhawk Agent slain
							["provider"] = { "n", 17610 },	-- Sunhawk Agent
						}),
						objective(2, {	-- 0/8 Sunhawk Saboteur slain
							["provider"] = { "n", 17609 },	-- Sunhawk Saboteur
						}),
						i(26035),	-- Corin's Handguards
						i(26009),	-- Flutter Silk Handwraps
						i(26023),	-- Ravager Hide Gloves
						-- #if AFTER LEGION
						i(131273),	-- Ravager Scale Grips
						-- #endif
					},
				}),
				q(9643, {	-- Constrictor Vines
					["qg"] = 17642,	-- Tracker Lyceon
					["coord"] = { 55.8, 56.9, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(14, 14, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Thorny Constrictor Vine
							["provider"] = { "i", 23994 },	-- Thorny Constrictor Vine
							["cr"] = 17344,	-- Mutated Constrictor
						}),
					},
				}),
				q(9569, {	-- Containing the Threat
					["qg"] = 17433,	-- Vindicator Aalesia
					["sourceQuest"] = 9567,	-- Know Thine Enemy
					["coord"] = { 55.0, 57.9, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(13, 13, 1),
					["groups"] = {
						objective(1, {	-- Zevrax slain
							["provider"] = { "n", 17494 },	-- Zevrax
							["coord"] = { 41.8, 29.6, BLOODMYST_ISLE },
						}),
						objective(2, {	-- 0/5 Axxarien Shadowstalker
							["provider"] = { "n", 17340 },	-- Axxarien Shadowstalker
						}),
						objective(3, {	-- 0/5 Axxarien Hellcaller
							["provider"] = { "n", 17342 },	-- Axxarien Hellcaller
						}),
						objective(4, {	-- 0/5 Corrupted Crystal
							["provider"] = { "i", 23863 },	-- Corrupted Crystal
						}),
						i(27402),	-- Huntsman's Crossbow
						i(27404),	-- Lightspark
					},
				}),
				q(9741, {	-- Critters of the Void
					["qg"] = 17926,	-- Scout Loryi
					["coord"] = { 30.2, 45.8, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(16, 16, 1),
					["groups"] = {
						objective(1, {	-- 0/12 Void Critter slain
							["provider"] = { "n", 17887 },	-- Void Critter
							["coord"] = { 19.3, 62.2, BLOODMYST_ISLE },
						}),
					},
				}),
				q(9576, {	-- Cruelfin's Necklace
					["provider"] = { "i", 23870 },	-- Red Crystal Pendant
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(9, 9, 1),
				}),
				q(9647, {	-- Culling the Flutterers
					["qg"] = 17642,	-- Tracker Lyceon
					["sourceQuest"] = 9643,	-- Constrictor Vines
					["coord"] = { 55.8, 57.0, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(14, 14, 1),
					["groups"] = {
						objective(1, {	-- 0/10 Royal Blue Flutterer slain
							["provider"] = { "n", 17350 },	-- Royal Blue Flutterer
						}),
						i(26013),	-- Cincture of Woven Reeds
						i(26026),	-- Ornately Tooled Belt
						i(26038),	-- Segmented Girdle
						-- #if AFTER LEGION
						i(131266),	-- Ornate Wire Cinch
						-- #endif
					},
				}),
				q(10065, {	-- Cutting a Path
					["qg"] = 17927,	-- Scout Jorli
					-- #if BEFORE CATA
					["sourceQuest"] = 10064,	-- Talk to the Hand [TODO: Confirm if this is required or not, it might not be.]
					-- #endif
					["coord"] = { 30.2, 45.9, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(16, 16, 1),
					["groups"] = {
						objective(1, {	-- 0/10 Enraged Ravager slain
							["provider"] = { "n", 17527 },	-- Enraged Ravager
						}),
					},
				}),
				q(9557, {	-- Deciphering the Book
					["providers"] = {
						{ "o", 181756 },	-- Battered Ancient Book
						{ "i",  23851 },	-- Battered Journal
					},
					["sourceQuest"] = 9550,	-- A Map to Where?
					["coord"] = { 61.1, 41.8, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(13, 13, 1),
				}),
				q(9666, {	-- Declaration of Power
					["qg"] = 17649,	-- Kessel
					["sourceQuest"] = 9663,	-- The Kessel Run
					["coord"] = { 62.9, 87.5, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- Declaration of Power
							["provider"] = { "i", 24084 },	-- Draenei Banner
							["coord"] = { 68.8, 68.2, BLOODMYST_ISLE },
							["cr"] = 17701,	-- Lord Xiz
						}),
						i(26012),	-- Kessel's Cinch Wrap
						-- #if AFTER LEGION
						i(131269),	-- Kessel's Elekk Leading Chain
						-- #endif
						i(26039),	-- Kessel's Sturdy Riding Handle
						i(26027),	-- Kessel's Sweat Stained Elekk Leash
					},
				}),
				q(9748, {	-- Don't Drink the Water
					["qg"] = 17844,	-- Vindicator Aesom
					["sourceQuest"] = 9703,	-- The Cryo-Core
					["coord"] = { 55.5, 55.3, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(16, 16, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Bloodmyst Water Sample
							["provider"] = { "i", 24317 },	-- Bloodmyst Water Sample
							["cost"] = { { "i", 24318, 1 } },	-- Water Sample Flask
							["coord"] = { 34.0, 33.0, BLOODMYST_ISLE },
						}),
					},
				}),
				q(9625, {	-- Elekks Are Serious Business
					["qg"] = 17584,	-- Torallius the Pack Handler
					["sourceQuest"] = 9623,	-- Coming of Age
					-- #if AFTER CATA
					["altQuests"] = { 28559 },	-- Hero's Call: Bloodmyst Isle!
					["coord"] = { 81.5, 51.5, THE_EXODAR },
					-- #else
					["coord"] = { 35.3, 43.1, AZUREMYST_ISLE },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,	-- TODO: Double check this is actually a breadcrumb. If you finish Alien Predators, does this diappear? [Not required for Alien Predators, Discord 2023-07-29]
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(9683, {	-- Ending the Bloodcurse
					["qg"] = 17712,	-- Captain Edward Hanes
					["sourceQuest"] = 9682,	-- The Hopeless Ones...
					["coord"] = { 79.1, 22.6, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 1),
					["groups"] = {
						objective(1, {	-- Atoph the Bloodcursed slain
							["providers"] = {
								{ "n",  17715 },	-- Atoph the Bloodcursed
								{ "o", 181964 },	-- Statue of Queen Azshara
							},
							["coord"] = { 86, 54.8, BLOODMYST_ISLE },
						}),
						i(24334),	-- Wheel of the Lost Hope
					},
				}),
				q(9759, {	-- Ending Their World
					["qg"] = 17982,	-- Demolitionist Legoso
					["coord"] = { 30.8, 46.6, BLOODMYST_ISLE },
					-- #if BEFORE CATA
					["sourceQuest"] = 9761,	-- Clearing the Way
					["races"] = { DRAENEI },
					-- #else
					["sourceQuest"] = 9760,	-- Vindicator's Rest
					["races"] = ALLIANCE_ONLY,
					-- #endif
					["lvl"] = lvlsquish(18, 18, 1),
					["groups"] = {
						objective(1, {	-- Vector Coil Destroyed and Sironas Slain
							["provider"] = { "n", 17678 },	-- Sironas
							["coord"] = { 15, 55.5, BLOODMYST_ISLE },
						}),
						i(24352),	-- Blade of the Hand
						i(24353),	-- Crossbow of the Hand
						i(24351),	-- Mace of the Hand
						i(24354),	-- Staff of the Hand
					},
				}),
				q(10063, {	-- Explorers' League, Is That Something for Gnomes?
					["qg"] = 18804,	-- Prospector Nachlan
					["coord"] = { 56.3, 54.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(13, 13, 1),
				}),
				q(10067, {	-- Fouled Water Spiritsm
					-- #if AFTER WRATH
					["qgs"] = {
						17986,	-- Vindicator Corin
						18020,	-- Defender Adrielle
						18024,	-- Defender Sorli
					},
					["coords"] = {
						{ 30.7, 46.8, BLOODMYST_ISLE },
						{ 51.7, 52.1, BLOODMYST_ISLE },
						{ 55.6, 52.3, BLOODMYST_ISLE },
					},
					-- #else
					["qg"] = 17986,	-- Vindicator Corin
					["coord"] = { 30.7, 46.8, BLOODMYST_ISLE },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(16, 16, 1),
					["groups"] = {
						objective(1, {	-- 0/6 Fouled Water Spirit slain
							["provider"] = { "n", 17358 },	-- Fouled Water Spirit
						}),
					},
				}),
				q(9579, {	-- Galaen's Fate
					["qg"] = 17508,	-- Galaen's Corpse
					["sourceQuest"] = 9578,	-- Searching for Galaen
					["coord"] = { 37.4, 61.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Galaen's Amulet
							["provider"] = { "i", 23873 },	-- Galaen's Amulet
							["cr"] = 17606,	-- Sunhawk Reclaimer
						}),
						-- #if AFTER LEGION
						i(131261),	-- Articifer's Boots
						-- #endif
						i(26011),	-- Cryo-Core Attendant's Boots
						i(26037),	-- Lightweight Plate Boots
						i(26025),	-- Technician's Boots
					},
				}),
				q(9706, {	-- Galaen's Journal - The Fate of Vindicator Saruan
					["providers"] = {
						{ "o", 182032 },	-- Galaen's Journal
						{ "i",  24237 },	-- Galaen's Journal
					},
					-- #if BEFORE CATA
					["sourceQuest"] = 9694,	-- Blood Watch
					-- #else
					["sourceQuest"] = 9779,	-- Intercepting the Message
					-- #endif
					["coord"] = { 37.5, 61.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 1),
				}),
				heroscall(q(28559, {	-- Hero's Call: Bloodmyst Isle
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { THE_EXODAR },	-- Only found in The Exodar in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 9. (Confirmed by Hurieve, Crieve's Level 9 Hunter.)
					-- Cataclysm: Maximum is level 18 (TODO: Test max level between 16 and 25)
					["lvl"] = { 9, 18 },
					-- #endif
				})),
				q(9700, {	-- I Shoot Magic Into the Darkness
					["qg"] = 17684,	-- Vindicator Boros
					["sourceQuest"] = 9699,	-- Truth or Fiction
					["coord"] = { 55.4, 55.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(14, 14, 1),
					["groups"] = {
						objective(1, {	-- Sun Portal Site Confirmed
							["provider"] = { "n", 17550 },	-- Void Anomaly
							["coord"] = { 51.6, 19.6, BLOODMYST_ISLE },
						}),
						-- #if AFTER LEGION
						i(131271),	-- Vindicator's Chain Boots
						-- #endif
						i(26024),	-- Vindicator's Leather Moccasins
						i(26010),	-- Vindicator's Soft Sole Slippers
						i(26036),	-- Vindicator's Stompers
					},
				}),
				q(9779, {	-- Intercepting the Message
					["qg"] = 17684,	-- Vindicator Boros
					["sourceQuest"] = 9694,	-- Blood Watch
					["coord"] = { 55.4, 55.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(14, 14, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Sunhawk Missive
							["provider"] = { "i", 24399 },	-- Sunhawk Missive
							["crs"] = {
								17607,	-- Sunhawk Defender
								17608,	-- Sunhawk Pyromancer
								17606,	-- Sunhawk Reclaimer
								17609,	-- Sunhawk Saboteur
								17604,	-- Sunhawk Spy
							},
						}),
					},
				}),
				q(9688, {	-- Into the Dream
					["qg"] = 17674,	-- Prince Toreth
					["sourceQuest"] = 9687,	-- Restoring Sanctity
					["coord"] = { 74.0, 34.7, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(16, 16, 1),
					["groups"] = {
						objective(1, {	-- 0/5 Veridian Whelp slain
							["provider"] = { "n", 17588 },	-- Veridian Whelp
						}),
						objective(2, {	-- 0/5 Veridian Broodling slain
							["provider"] = { "n", 17589 },	-- Veridian Broodling
						}),
					},
				}),
				q(9641, {	-- Irradiated Crystal Shards
					["qg"] = 17684,	-- Vindicator Boros
					["coord"] = { 55.4, 55.2, BLOODMYST_ISLE },
					["cost"] = { { "i", 23984, 10 } },	-- Irradiated Crystal Shard
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(13, 13, 1),
					["groups"] = {
						i(23985),	-- Crystal of Vitality
						i(23986),	-- Crystal of Insight
						i(23989),	-- Crystal of Ferocity
					},
				}),
				q(9567, {	-- Know Thine Enemy
					["qg"] = 17433,	-- Vindicator Aalesia
					["coord"] = { 55.0, 57.9, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(13, 13, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Nazzivus Monument Glyph
							["providers"] = {
								{ "i",  23859 },	-- Nazzivus Monument Glyph
								{ "o", 182532 },	-- Nazzivus Monument Glyphs
							},
							["coord"] = { 36.5, 71.2, BLOODMYST_ISLE },
						}),
					},
				}),
				q(9581, {	-- Learning from the Crystals
					["qg"] = 17423,	-- Harbinger Mikolaas
					["coord"] = { 52.5, 53.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Impact Site Crystal Sample
							["providers"] = {
								{ "i",  23878 },	-- Impact Site Crystal Sample
								{ "o", 181779 },	-- Impact Site Crystal
							},
							["coord"] = { 58, 83, BLOODMYST_ISLE },
							["cost"] = { { "i", 23875, 1 } },	-- Crystal Mining Pick
						}),
						i(26006),	-- Crystal-Flecked Pants
						i(26032),	-- Crystal-Studded Legguards
						i(26020),	-- Shard-Covered Leggings
						-- #if AFTER LEGION
						i(131262),	-- Shard-Linked Greaves
						-- #endif
					},
				}),
				q(9746, {	-- Limits of Physical Exhaustion
					["qg"] = 17844,	-- Vindicator Aesom
					["sourceQuest"] = 9748,	-- Don't Drink the Water
					["coord"] = { 55.5, 55.4, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(16, 16, 1),
					["groups"] = {
						objective(1, {	-- 0/10 Sunhawk Pyromancer slain
							["provider"] = { "n", 17608 },	-- Sunhawk Pyromancer
						}),
						objective(2, {	-- 0/10 Sunhawk Defender slain
							["provider"] = { "n", 17607 },	-- Sunhawk Defender
						}),
					},
				}),
				q(9648, {	-- Maatparm Mushroom Menagerie
					["qg"] = 17663,	-- Maatparm
					["coord"] = { 56.4, 56.8, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Aquatic Stinkhorn
							["providers"] = {
								{ "i",  24041 },	-- Aquatic Stinkhorn
								{ "o", 181892 },	-- Aquatic Stinkhorn
							},
							["cr"] = 17673,	-- Stinkhorn Striker
						}),
						objective(2, {	-- 0/1 Blood Mushroom
							["providers"] = {
								{ "i",  24040 },	-- Blood Mushroom
								{ "o", 181891 },	-- Blood Mushroom
							},
							["coord"] = { 62.8, 59.2, BLOODMYST_ISLE },
						}),
						objective(3, {	-- 0/1 Ruinous Polyspore
							["providers"] = {
								{ "i",  24042 },	-- Ruinous Polyspore
								{ "o", 181893 },	-- Ruinous Polyspore
							},
							["coords"] = {
								{ 61.8, 48.7, BLOODMYST_ISLE },
								{ 67.8, 66.9, BLOODMYST_ISLE },
							},
						}),
						objective(4, {	-- 0/1 Fel Cone Fungus
							["providers"] = {
								{ "i",  24043 },	-- Fel Cone Fungus
								{ "o", 181894 },	-- Fel Cone Fungus
							},
							["coord"] = { 43.5, 81.7, BLOODMYST_ISLE },
						}),
						i(26028),	-- Maatparm's Fungus Lined Bands
						-- #if AFTER LEGION
						i(131267),	-- Maatparm's Fungus Lined Bindings
						-- #endif
						i(26040),	-- Maatparm's Fungus Lined Bracers
						i(26014),	-- Maatparm's Fungus Lined Cuffs
					},
				}),
				q(9711, {	-- Matis the Cruel
					["qg"] = 17843,	-- Vindicator Kuros
					["sourceQuest"] = 9706,	-- Galaen's Journal - The Fate of Vindicator Saruan
					["coord"] = { 55.6, 55.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 1),
					["groups"] = {
						objective(1, {	-- Matis the Cruel captured
							["provider"] = { "n", 17664 },	-- Matis the Cruel
							["cost"] = { { "i", 24278, 1 } },	-- Flare Gun
							["coord"] = { 27.4, 51.4, BLOODMYST_ISLE },
						}),
						-- #if AFTER LEGION
						i(131272),	-- Vindicator's Chain Leggings
						-- #endif
						i(26033),	-- Vindicator's Iron Legguards
						i(26021),	-- Vindicator's Leather Chaps
						i(26007),	-- Vindicator's Woolies
					},
				}),
				q(9642, {	-- More Irradiated Crystal Shards
					["qg"] = 17684,    -- Vindicator Boros
					["sourceQuest"] = 9641,	-- Irradiated Crystal Shards
					["coord"] = { 55.4, 55.2, BLOODMYST_ISLE },
					["cost"] = { { "i", 23984, 10 } },	-- Irradiated Crystal Shard
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = lvlsquish(13, 13, 1),
					["groups"] = {
						i(23985),	-- Crystal of Vitality
						i(23986),	-- Crystal of Insight
						i(23989),	-- Crystal of Ferocity
					},
				}),
				q(9632, {	-- Newfound Allies
					["qg"] = 17424,	-- Anchorite Paetheus
					["coord"] = { 54.6, 53.9, BLOODMYST_ISLE },
					["maps"] = { AZUREMYST_ISLE },
					["cost"] = { { "i", 23937, 1 } },	-- Letter of Introduction
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 1),
				}),
				q(9561, {	-- Nolkai's Words
					["qg"] = 17424,	-- Anchorite Paetheus
					["sourceQuest"] = 9557,	-- Deciphering the Book
					["coord"] = { 54.6, 53.9, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(13, 13, 1),
					["groups"] = {
						i(23846, {	-- Nolkai's Box
							i(23844),	-- Nolkai's Lantern
							i(23852),	-- Nolkai's Bag
						}),
					},
				}),
				q(10066, {	-- Oh, the Tangled Webs They Weave
					-- #if AFTER WRATH
					["qgs"] = {
						17986,	-- Vindicator Corin
						18020,	-- Defender Adrielle
						18024,	-- Defender Sorli
					},
					["coords"] = {
						{ 30.7, 46.8, BLOODMYST_ISLE },
						{ 51.7, 52.1, BLOODMYST_ISLE },
						{ 55.6, 52.3, BLOODMYST_ISLE },
					},
					-- #else
					["qg"] = 17986,	-- Vindicator Corin
					["coord"] = { 30.7, 46.8, BLOODMYST_ISLE },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(16, 16, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Mutated Tangler slain
							["provider"] = { "n", 17346 },	-- Mutated Tangler
						}),
					},
				}),
				-- #if BEFORE CATA
				-- This quest was moved from Azuremyst Isle after Cataclysm.
				q(9604, {	-- On the Wings of a Hippogryph
					["qg"] = 17554,	-- Laando
					["sourceQuest"] = 9603,	-- Beds, Bandages, and Beyond
					["coord"] = { 57.7, 53.9, BLOODMYST_ISLE },
					["cost"] = { { "i", 23902, 1 } },	-- Topher's List
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				-- #endif
				q(9548, {	-- Pilfered Equipment
					["qg"] = 17421,	-- Clopper Wizbang
					["sourceQuest"] = 10063,	-- Explorers' League, Is That Something for Gnomes?
					["coord"] = { 42.1, 21.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(13, 13, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Clopper's Equipment
							["provider"] = { "i", 23830 },	-- Clopper's Equipment
							["coords"] = {
								{ 38.5, 22.5, BLOODMYST_ISLE },
								{ 40.6, 20.1, BLOODMYST_ISLE },
								{ 44.0, 22.5, BLOODMYST_ISLE },
								{ 46.5, 20.5, BLOODMYST_ISLE },
							},
						}),
					},
				}),
				q(9689, {	-- Razormaw
					["qg"] = 17674,	-- Prince Toreth
					["sourceQuest"] = 9688,	-- Into the Dream
					["coord"] = { 74.0, 34.7, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(19, 19, 1),
					["groups"] = {
						objective(1, {	-- Razormaw slain
							["provider"] = { "n", 17592 },	-- Razormaw
							["coord"] = { 72.8, 20.8, BLOODMYST_ISLE },
							["cost"] = { { "i", 24221, 1 } },	-- Bundle of Dragon Bones
						}),
						i(24348),	-- Breastplate of the Dragon Slayer
						-- #if AFTER LEGION
						i(131270),	-- Chainmail of the Dragon Slayer
						-- #endif
						i(24346),	-- Robe of the Dragon Slayer
						i(24347),	-- Vest of the Dragon Slayer
					},
				}),
				q(9668, {	-- Report to Exarch Admetius
					["qg"] = 17649,	-- Kessel
					["sourceQuest"] = 9666,	-- Declaration of Power
					["coord"] = { 62.9, 87.5, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(9687, {	-- Restoring Sanctity
					["qg"] = 17674,	-- Prince Toreth
					["coord"] = { 74.0, 34.7, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Dragon Bone
							["providers"] = {
								{ "i",  24185 },	-- Dragon Bone
								{ "o", 181981 },	-- Dragon Bone
							},
						}),
					},
				}),
				q(9628, {	-- Salvaging the Data
					["qg"] = 17600,	-- Draenei Cartographer
					["sourceQuest"] = 9620,	-- The Missing Survey Team
					["coord"] = { 61.2, 48.3, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Survey Data Crystal
							["provider"] = { "i", 23932 },	-- Survey Data Crystal
							["crs"] = {
								17334,	-- Wrathscale Marauder
								17336,	-- Wrathscale Sorceress
							},
						}),
						i(26016),	-- Surveyor's Mantle
					},
				}),
				q(9667, {	-- Saving Princess Stillpine
					["qg"] = 17682,	-- Princess Stillpine
					-- #if AFTER CATA
					["sourceQuest"] = 9559,	-- Stillpine Hold
					-- #else
					["sourceQuest"] = 9538,	-- Learning the Language
					-- #endif
					["coord"] = { 68.2, 81.0, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- Princess Stillpine Saved
							["provider"] = { "n", 17682 },	-- Princess Stillpine
							["coord"] = { 64.2, 76.7, BLOODMYST_ISLE },
							["cost"] = { { "i", 24099, 1 } },	-- The High Chief's Key
							["cr"] = 17702,	-- High Chief Bristlelimb
						}),
						-- #if AFTER LEGION
						i(156994),	-- Stillpine Family Letter Opener
						-- #endif
						i(24342),	-- Stillpine Shocker
						i(24343),	-- The Thumper
					},
				}),
				q(9578, {	-- Searching for Galaen
					["qg"] = 17434,	-- Morae
					["coord"] = { 53.2, 57.7, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 1),
				}),
				q(9594, {	-- Signs of the Legion
					["provider"] = { "i", 23900 },	-- Tzerak's Armor Plate
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Nazzivus Satyr slain
							["provider"] = { "n", 17337 },	-- Nazzivus Satyr
						}),
						objective(2, {	-- 0/8 Nazzivus Felsworn slain
							["provider"] = { "n", 17339 },	-- Nazzivus Felsworn
						}),
					},
				}),
				q(10064, {	-- Talk to the Hand
					["qg"] = 17423,	-- Harbinger Mikolaas
					["coord"] = { 52.5, 53.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(16, 16, 1),
				}),
				q(9580, {	-- The Bear Necessities
					["qg"] = 17642,	-- Tracker Lyceon
					["coord"] = { 55.8, 56.9, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(14, 14, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Elder Brown Bear Flank
							["provider"] = { "i", 24026 },	-- Elder Brown Bear Flank
							["cr"] = 17348,	-- Elder Brown Bear
						}),
					},
				}),
				q(9672, {	-- The Bloodcurse Legacy [Mailbox]
					["provider"] = { "i", 24132 },	-- A Letter from the Admiral
					["sourceQuest"] = 9671,	-- Urgent Delivery
					["altQuests"] = { 9751 },	-- The Bloodcurse Legacy [Abandoned Other Quest]
					["description"] = "The letter is mailed to you when you complete the |cFFFFD700Urgent Delivery|r quest. If you abandon it, you can get it at |cFFFFD700Odesyus' Landing|r in |cFFFFD700Azuremyst Isle|r.",
					["maps"] = { AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 1),
				}),
				q(9751, {	-- The Bloodcurse Legacy [Abandoned Other Quest]
					["qg"] = 17240,	-- Admiral Odesyus
					["sourceQuest"] = 9671,	-- Urgent Delivery
					["altQuests"] = { 9672 },	-- The Bloodcurse Legacy [Mailbox]
					["description"] = "This quest is offered to you if you don't receive the 'A Letter from the Admiral' in the mail or you destroy it and abandon the quest.",
					["coord"] = { 47.0, 70.2, AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 1),
				}),
				q(9674, {	-- The Bloodcursed Naga
					["qg"] = 17712,	-- Captain Edward Hanes
					["sourceQuests"] = {
						9751,	-- The Bloodcurse Legacy [Abandoned Other Quest]
						9672,	-- The Bloodcurse Legacy [Mailbox]
					},
					["coord"] = { 79.1, 22.6, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 1),
					["groups"] = {
						objective(1, {	-- 0/10 Bloodcursed Naga slain
							["provider"] = { "n", 17713 },	-- Bloodcursed Naga
						}),
					},
				}),
				q(9703, {	-- The Cryo-Core
					["qg"] = 17843,	-- Vindicator Kuros
					["sourceQuest"] = 9700,	-- I Shoot Magic Into the Darkness
					["coord"] = { 55.4, 55.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 1),
					["groups"] = {
						objective(1, {	-- 0/12 Medical Supplies
							["provider"] = { "i", 24236 },	-- Medical Supplies
							["cr"] = 17606,	-- Sunhawk Reclaimer
						}),
						i(27390),	-- Vindicator's Letter Opener
						i(26052),	-- Vindicator's Smasher
						i(27641),	-- Vindicator's Walking Stick
					},
				}),
				q(9585, {	-- The Final Sample
					["qg"] = 17423,	-- Harbinger Mikolaas
					["sourceQuest"] = 9584,	-- The Second Sample
					["coord"] = { 52.5, 53.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Axxarien Crystal Sample
							["provider"] = { "i", 23880 },	-- Axxarien Crystal Sample
							["cost"] = { { "i", 23877, 1 } },	-- Crystal Mining Pick
							["coord"] = { 41, 29, BLOODMYST_ISLE },
						}),
					},
				}),
				q(9682, {	-- The Hopeless Ones...
					["qg"] = 17712,	-- Captain Edward Hanes
					["sourceQuest"] = 9674,	-- The Bloodcursed Naga
					["coord"] = { 79.1, 22.6, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 1),
					["groups"] = {
						objective(1, {	-- 0/4 Bloodcursed Soul
							["provider"] = { "i", 24153 },	-- Bloodcursed Soul
							["cr"] = 17714,	-- Bloodcursed Voyager
						}),
					},
				}),
				q(9663, {	-- The Kessel Run
					["qg"] = 17649,	-- Kessel
					["coord"] = { 62.9, 87.5, BLOODMYST_ISLE },
					["maps"] = { AZUREMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(9, 9, 1),
					["groups"] = {
						objective(1, {	-- High Chief Stillpine Warned
							["provider"] = { "n", 17440 },	-- High Chief Stillpine
							["coord"] = { 46.7, 20.6, AZUREMYST_ISLE },
						}),
						objective(2, {	-- Exarch Menelaous Warned
							["provider"] = { "n", 17116 },	-- Exarch Menelaous
							["coord"] = { 47.1, 50.6, AZUREMYST_ISLE },
						}),
						objective(3, {	-- Admiral Odesyus Warned
							["provider"] = { "n", 17240 },	-- Admiral Odesyus <Alliance Naval Command>
							["coord"] = { 47.0, 70.2, AZUREMYST_ISLE },
						}),
					},
				}),
				q(9669, {	-- The Missing Expedition
					["qg"] = 17676,	-- Achelus
					["coord"] = { 53.2, 57.0, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(17, 17, 1),
					["groups"] = {
						objective(1, {	-- 0/8 Myst Leecher slain
							["provider"] = { "n", 17523 },	-- Myst Leecher
						}),
						objective(2, {	-- 0/8 Myst Spinner slain
							["provider"] = { "n", 17522 },	-- Myst Spinner
						}),
						objective(3, {	-- 0/1 Zarakh slain
							["provider"] = { "n", 17683 },	-- Zarakh
							["coord"] = { 18.2, 37.9, BLOODMYST_ISLE },
						}),
					},
				}),
				q(9620, {	-- The Missing Survey Team
					["qg"] = 17423,	-- Harbinger Mikolaas
					["sourceQuest"] = 9581,	-- Learning from the Crystals
					["coord"] = { 52.5, 53.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(9584, {	-- The Second Sample
					["qg"] = 17423,	-- Harbinger Mikolaas
					["sourceQuest"] = 9628,	-- Salvaging the Data
					["coord"] = { 52.5, 53.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Altered Crystal Sample
							["providers"] = {
								{ "i",  23879 },	-- Altered Crystal Sample
								{ "o", 181780 },	-- Altered Bloodmyst Crystal
							},
							["cost"] = { { "i", 23876, 1 } },	-- Crystal Mining Pick
							["coord"] = { 45, 47, BLOODMYST_ISLE },
						}),
					},
				}),
				q(9740, {	-- The Sun Gate
					["qg"] = 17844,	-- Vindicator Aesom
					["sourceQuest"] = 9746,	-- Limits of Physical Exhaustion
					["coord"] = { 55.5, 55.4, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(16, 16, 1),
					["groups"] = {
						objective(1, {	-- The Sun Gate Destroyed
							["coord"] = { 18.7, 64.0, BLOODMYST_ISLE },
						}),
					},
				}),
				q(9762, {	-- The Unwritten Prophecy
					["qg"] = 17468,	-- Prophet Velen
					["sourceQuest"] = 9759,	-- Ending Their World
					["coords"] = {
						{ 54.0, 55.4, BLOODMYST_ISLE },
						{ 32.6, 54.2, THE_EXODAR },
					},
					["races"] = { DRAENEI },
					["lvl"] = lvlsquish(18, 18, 1),
					["groups"] = {
						i(24344),	-- Tabard of the Hand
						i(24349),	-- Signet Ring of the Hand
						i(24350),	-- Signet Ring of the Hand
					},
				}),
				q(9633, {	-- The Way to Auberdine
					["qg"] = 17614,	-- Huntress Kella Nightbow
					["sourceQuest"] = 9632,	-- Newfound Allies
					["coord"] = { 54.6, 53.9, AZUREMYST_ISLE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DARKSHORE },
					["cost"] = { { "i", 23937, 1 } },	-- Letter of Introduction
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 1),
				}),
				q(9670, {	-- They're Alive! Maybe...
					["qg"] = 17686,	-- Researcher Cornelius
					["altQuests"] = { 9749 },	-- They're Alive! Maybe... (duplicate, never went live)
					["coord"] = { 24.8, 34.3, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(16, 16, 1),
					["groups"] = {
						objective(1, {	-- 0/5 Expedition Researcher Freed
							["provider"] = { "n", 17681 },	-- Expedition Researcher
							["cr"] = 17680,	-- Webbed Creature
						}),
						i(26017),	-- Venomous Silk Cover
					},
				}),
				q(9696, {	-- Translations...
					["qg"] = 17684,	-- Vindicator Boros
					["sourceQuest"] = 9779,	-- Intercepting the Message
					["coord"] = { 55.4, 55.2, BLOODMYST_ISLE },
					["cost"] = { { "i", 24399, 1 } },	-- Sunhawk Missive
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(14, 14, 1),
				}),
				q(9699, {	-- Truth or Fiction
					["qg"] = 17468,	-- Prophet Velen
					["sourceQuest"] = 9698,	-- Audience with the Prophet
					["coord"] = { 32.6, 54.2, THE_EXODAR },
					["cost"] = { { "i", 24230, 1 } },	-- Velen's Orders
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(14, 14, 1),
				}),
				q(9671, {	-- Urgent Delivery
					["qg"] = 17703,	-- Messenger Hermesius
					-- #if BEFORE CATA
					["sourceQuest"] = 9602,	-- Deliver Them From Evil...
					-- #endif
					["altQuests"] = { 9750 },	-- UNUSED Urgent Delivery
					["coord"] = { 54.9, 54.6, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(18, 18, 1),
				}),
				q(9574, {	-- Victims of Corruption
					["qg"] = 17434,	-- Morae
					["sourceQuest"] = 9629,	-- Catch and Release
					["coord"] = { 53.2, 57.7, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
					["groups"] = {
						objective(1, {	-- 0/10 Crystallized Bark
							["provider"] = { "i", 23869 },	-- Crystallized Bark
							["cr"] = 17352,	-- Corrupted Treant
						}),
					},
				}),
				q(9760, {	-- Vindicator's Rest
					["qg"] = 17658,	-- Exarch Admetius
					["sourceQuest"] = 9756,	-- What We Don't Know...
					["coord"] = { 52.6, 53.2, BLOODMYST_ISLE },
					-- #if BEFORE CATA
					["races"] = { DRAENEI },
					-- #else
					["races"] = ALLIANCE_ONLY,
					-- #endif
					["lvl"] = lvlsquish(18, 18, 1),
				}),
				q(9646, {	-- WANTED: Deathclaw
					["provider"] = { "o", 181889 },	-- Wanted Poster
					["coord"] = { 55.2, 59.1, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(9, 9, 1),
					["groups"] = {
						objective(1, {	-- 0/1 Deathclaw's Paw
							["provider"] = { "n", 24025 },	-- Deathclaw's Paw
							["coord"] = { 37.2, 29.9, BLOODMYST_ISLE },
							["cr"] = 17661,	-- Deathclaw
						}),
						i(27398),	-- Carved Crystalline Orb
						i(27400),	-- Peacekeeper's Buckler
					},
				}),
				q(9693, {	-- What Argus Means to Me
					["qg"] = 17658,	-- Exarch Admetius
					["coord"] = { 52.6, 53.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(10, 10, 1),
				}),
				q(9756, {	-- What We Don't Know...
					["qg"] = 17658,	-- Exarch Admetius
					["sourceQuest"] = 9753,	-- What We Know...
					["coord"] = { 52.6, 53.2, BLOODMYST_ISLE },
					-- #if BEFORE CATA
					["races"] = { DRAENEI },
					-- #else
					["races"] = ALLIANCE_ONLY,
					-- #endif
					["lvl"] = lvlsquish(18, 18, 1),
				}),
				q(9753, {	-- What We Know...
					["qg"] = 17844,	-- Vindicator Aesom
					-- #if BEFORE CATA
					["sourceQuest"] = 9740,	-- The Sun Gate
					-- #endif
					["coord"] = { 55.5, 55.4, BLOODMYST_ISLE },
					-- #if BEFORE CATA
					["races"] = { DRAENEI },
					-- #else
					["races"] = ALLIANCE_ONLY,
					-- #endif
					["lvl"] = lvlsquish(18, 18, 1),
				}),
				q(9649, {	-- Ysera's Tears
					["qg"] = 17663,	-- Maatparm
					["sourceQuest"] = 9648,	-- Eredath Mushroom Menagerie
					["coord"] = { 56.4, 56.8, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 1),
					["groups"] = {
						objective(1, {	-- 0/2 Ysera's Tear
							["providers"] = {
								{ "i",  24049 },	-- Ysera's Tear
								{ "o", 181897 },	-- Ysera's Tear
							},
							["coord"] = { 70.0, 26.3, BLOODMYST_ISLE },
						}),
						-- #if AFTER LEGION
						i(131268),	-- Maatparm's Fungus Lined Chainmail
						-- #endif
						i(26030),	-- Maatparm's Fungus Lined Hauberk
						i(26005),	-- Maatparm's Fungus Lined Tunic
						i(26019),	-- Maatparm's Fungus Lined Vest
					},
				}),
			}),
			n(RARES, {
				n(22060, {	-- Fenissa the Assassin
					["coords"] = {
						{ 15.6, 49.2, BLOODMYST_ISLE },	-- vector coil, top
						{ 14.4, 54.6, BLOODMYST_ISLE },	-- vector coil, bottom
						{ 25.6, 50.8, BLOODMYST_ISLE },	-- top camp
						{ 24.3, 56.5, BLOODMYST_ISLE },	-- middle camp
						{ 21.1, 60.9, BLOODMYST_ISLE },	-- bottom camp
						{ 36.3, 62.7, BLOODMYST_ISLE },	-- cryo-core, left
						{ 37.8, 58.4, BLOODMYST_ISLE },	-- cryo-core, mid
						{ 40.1, 61.2, BLOODMYST_ISLE },	-- cryo-core, right
					},
					["groups"] = {
						i(31264),	-- Silvermoon Robes
						i(31263),	-- Silvermoon Tunic
						i(31256),	-- Silvermoon Armor
					},
				}),
			}),
			n(VENDORS, {
				n(18427, {	-- Fazu <Tradesman>
					["coord"] = { 53.4, 56.6, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(22647),	-- Recipe: Crunchy Spider Surprise (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(23984),	-- Irradiated Crystal Shard
				i(23870, {	-- Red Crystal Pendant
					["cr"] = 17496,	-- Cruelfin
					["coord"] = { 49.0, 94.2, BLOODMYST_ISLE },
					["races"] = ALLIANCE_ONLY,
				}),
				i(23900, {	-- Tzerak's Armor Plate
					["description"] = "Tzerak spawns at 38.5, 82.3, on the demon seal, then walks through Nazzivian to get to the monument at 36.6, 72.5.",
					["cr"] = 17528,	-- Tzerak
					["coords"] = {
						{ 38.5, 82.3, BLOODMYST_ISLE },
						{ 36.6, 72.5, BLOODMYST_ISLE },
					},
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TBC, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {
	m(KALIMDOR, {
		m(BLOODMYST_ISLE, {
			q(9750),	-- UNUSED Urgent Delivery
		}),
	}),
})));
