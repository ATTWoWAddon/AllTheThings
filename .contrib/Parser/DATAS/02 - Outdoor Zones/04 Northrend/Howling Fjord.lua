---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(NORTHREND, applyclassicphase(WRATH_PHASE_ONE, {
		m(HOWLING_FJORD, {
			["lore"] = "Howling Fjord is the eastern-most zone in Northrend, with breathtaking mountains, cliffs, and fortresses. Like Borean Tundra, it is intended for fresh level 10-30 players and introduces them to a variety of factions and lore plots. However, it is considered more challenging to level in this zone because of the steep mountains and windy paths between quest objectives compared to the flat plains of Borean Tundra. Alliance players learn about the reawakened vrykul, the prototype for humans, while Horde players assist the Forsaken in developing a new plague (perhaps with ethical qualms) to defeat the Lich King. Both sides also assist the Tuskarr in putting the spirits of their ancestors to rest, as well as aiding a group of humorous pirates.",
			["icon"] = 236781,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(1263),	-- Explore Howling Fjord
					ach(1254, {	-- Friend or Fowl?
						["coords"] = {
							{ 69.6, 65.8, HOWLING_FJORD },
							{ 59.4, 63.6, HOWLING_FJORD },
							{ 31.6, 41.4, HOWLING_FJORD },
						},
						["crs"] = {
							23801,	-- Turkey
							24746,	-- Fjord Turkey
							29594,	-- Angry Turkey
						},
					}),
					ach(34, {	-- I've Toured the Fjord (A)
						["races"] = ALLIANCE_ONLY,
						-- #if AFTER 7.3.5
						["_doautomation"] = true,
						-- #else
						["sourceQuests"] = {
							11291,	-- To Westguard Keep!
							-- TODO:  confirm the quest below
							11436,	-- Let's Go Surfing Now
							11344,	-- Anguish of Nifflevar
							11501,	-- News From the East
							11572,	-- Return to Atuik
							11471,	-- The Jig is Up
							11467,	-- Dead Man's Debt
							11332,	-- Mission: Plague This!
							11250,	-- All Hail the Conqueror of Skorn!
							11239,	-- In Service of the Light
							11236,	-- Necro Overlord Mezhen
							11432,	-- Sleeping Giants
							11452,	-- The Slumbering King
							11238,	-- The Frost Wyrm and its Master
							11428,	-- Keeper Witherleaf
							11359,	-- Demolishing Megalith
							11348,	-- The Rune of Command
							11326,	-- Alpha Worg
						},
						-- #endif
					}),
					ach(1356, {	-- I've Toured the Fjord (H)
						["races"] = HORDE_ONLY,
						-- #if AFTER 7.3.5
						["_doautomation"] = true,
						-- #else
						["sourceQuests"] = {
							11234,	-- Report to Anselm
							12481,	-- Adding Injury to Insult
							11307,	-- Field Test
							11572,	-- Return to Atuik
							11471,	-- The Jig is Up
							11467,	-- Dead Man's Debt
							11310,	-- Warning: Some Assembly Required
							11428,	-- Keeper Witherleaf
							11367,	-- Demolishing Megalith
							11352,	-- The Rune of Command
							11261,	-- The Conqueror of Skorn!
							11264,	-- Necro Overlord Mezhen
							11433,	-- Sleeping Giants
							11267,	-- The Frost Wyrm and its Master
							11453,	-- The Slumbering King
							11268,	-- The Walking Dead
							11324,	-- Alpha Worg
						},
						-- #endif
					}),
				}),
				battlepets({
					["sym"] = {{"select","speciesID",
						646,	-- Chicken (PET!)
						647,	-- Grizzly Squirrel (PET!)
						450,	-- Maggot (PET!)
						378,	-- Rabbit (PET!)
						417,	-- Rat (PET!)
						424,	-- Roach (PET!)
						388,	-- Shore Crab (PET!)
						397,	-- Skunk (PET!)
						387,	-- Snake (PET!)
						412,	-- Spider (PET!)
						379,	-- Squirrel (PET!)
					}},
					["groups"] = {
						pet(523, {	-- Devouring Maggot (PET!)
							["description"] = "Can be found in the Utgarde Catacombs at the very bottom of the zombie pit, as well as occaasionally as a secondary pet.",
							["coord"] = { 56.5, 51.0, HOWLING_FJORD },
						}),
						pet(644, {	-- Fjord Rat (PET!)
							["description"] = "Found in Wyrmskull Village outside Utgarde Keep as well as occasionally as a secondary pet.",
							["coord"] = { 58.0, 52.0, HOWLING_FJORD },
						}),
						pet(529, {	-- Fjord Worg Pup (PET!)
							["description"] = "Found around Kamagua, on The Isle of Spears.",
							["coord"] = { 30.0, 62.0, HOWLING_FJORD },
						}),
						pet(525, {	-- Turkey (PET!)
							["description"] = "Found inside the Alliance settlements Valgarde and Westguard Keep, as well as occasionally as secondary pet.",
							["coords"] = {
								{ 32.2, 42.4, HOWLING_FJORD },
								{ 60.6, 62.8, HOWLING_FJORD },
							},
						}),
					},
				}),
				explorationHeader({
					exploration(4062),	-- Apothecary Camp
					exploration(3996),	-- Baelgun's Excavation Site
					visit_exploration(4001,{coord={64.9,41.6,HOWLING_FJORD}}),	-- Baleheim
					exploration(4403),	-- Balejar Watch
					visit_exploration(4060,{coord={75.8,35.9,HOWLING_FJORD}}),	-- Bleeding Vale
					visit_exploration(4055,{coord={63.4,18.3,HOWLING_FJORD}}),	-- Caldemere Lake
					exploration(4018),	-- Camp Winterhoof
					exploration(4059),	-- Cauldros Isle
					exploration(4070),	-- Chillmere Coast
					exploration(3980),	-- Daggercap Bay
					exploration(4050),	-- Derelict Strand
					exploration(4048),	-- Ember Clutch
					exploration(4063),	-- Ember Spear Tower
					exploration(3997),	-- Explorers' League Outpost
					visit_exploration(3985,{coord={61.1,46.0,HOWLING_FJORD}}),	-- Falls of Ymiron
					visit_exploration(4003,{coord={59.5,14.5,HOWLING_FJORD}}),	-- Fort Wildervar
					visit_exploration(4066,{coord={69.2,11.5,HOWLING_FJORD}}),	-- Frostblade Peak
					exploration(3989),	-- Garvan's Reef
					exploration(4261),	-- Ghostblade Post
					exploration(4061),	-- Giants' Run
					exploration(4006),	-- Gjalerbron
					exploration(4065),	-- Gjalerhorn
					exploration(3994),	-- Halgrind
					visit_exploration(4226,{coord={34.5,61.8,HOWLING_FJORD}}),	-- Iskaal
					exploration(4005),	-- Ivald's Ruin
					exploration(3988),	-- Kamagua
					exploration(4058),	-- Lake Cauldros
					exploration(4263),	-- Lydell's Ambush
					exploration(3991),	-- New Agamand
					exploration(3984),	-- Nifflevar
					exploration(4054),	-- Rivenwood
					exploration(3990),	-- Scalawag Point
					exploration(4057),	-- Shield Hill
					visit_exploration(4002,{coord={46.8,30.5,HOWLING_FJORD}}),	-- Skorn
					exploration(4077),	-- Sorlof's Strand
					exploration(3999),	-- Steel Gate
					exploration(3992),	-- The Ancient Lift
					exploration(4051),	-- The Frozen Glade
					exploration(3987),	-- The Isle of Spears
					visit_exploration(4053,{coord={54.4,18.9,HOWLING_FJORD}}),	-- The Twisted Glade
					visit_exploration(4052,{coord={51.1,27.2,HOWLING_FJORD}}),	-- The Vibrant Glade
					exploration(4260),	-- Thorvald's Camp
					visit_exploration(4474,{coord={32.4,73.3,HOWLING_FJORD}}),	-- Twin Shores
					exploration(3983),	-- Utgarde Keep
					exploration(3981),	-- Valgarde
					exploration(4000),	-- Vengeance Landing
					exploration(4402),	-- Vengeance Lift
					exploration(3998),	-- Westguard Keep
					exploration(4071),	-- Whisper Gulch
					exploration(4479),	-- Winter's Breath Lake
					exploration(3982),	-- Wyrmskull Village
				}),
				n(FACTIONS, {
					faction(FACTION_EXPLORERS_LEAGUE, {	-- Explorer's League
						["maps"] = { THE_STORM_PEAKS },
						["races"] = ALLIANCE_ONLY,
					}),
					faction(FACTION_THE_HAND_OF_VENGENCE, {	-- The Hand of Vengeance
						["maps"] = { DRAGONBLIGHT },
						["races"] = HORDE_ONLY,
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(248, {	-- Apothecary Camp
						["cr"] = 26844,	-- Lilleth Radescu <Bat Handler>
						["coord"] = { 26.0, 25.0, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					fp(192, {	-- Camp Winterhoof
						["cr"] = 24032,	-- Celea Frozenmane <Wind Rider Master>
						["coord"] = { 49.4, 11.6, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					fp(184, {	-- Fort Wildervar
						["cr"] = 24061,	-- James Ormsby <Gryphon Master>
						["coord"] = { 60.0, 16.0, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(295, {	-- Kamagua
						["cr"] = 28197,	-- Kip Trawlskip <Flight Master>
						["coord"] = { 24.6, 57.8, HOWLING_FJORD },
					}),
					fp(190, {	-- New Agamand
						["cr"] = 24155,	-- Tobias Sarkhoff <Bat Handler>
						["coord"] = { 52.0, 67.4, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					fp(183, {	-- Valgarde Port
						["cr"] = 23736,	-- Pricilla Winterwind <Gryphon Master>
						["coord"] = { 59.8, 63.2, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(191, {	-- Vengeance Landing
						["cr"] = 27344,	-- Adeline Chambers <Bat Handler>
						["coord"] = { 79.0, 29.6, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					fp(185, {	-- Westguard Keep
						["cr"] = 23859,	-- Greer Orehammer <Gryphon Master>
						["coord"] = { 31.2, 44.0, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
				}),
				petbattles({
					n(66635, {	-- Beegle Blastfuse <Master Pet Tamer>
						["coord"] = { 28.6, 33.8, HOWLING_FJORD },
						["description"] = "Beegle's pets are level 25 of the following consecutive pet classes:\n1. Flying - use Magic (powerful) or Dragonkin (tanky) pet.\n2. Flying - see above.\n3. Aquatic - use Flying (powerful) or Magic (tanky) pet.\n\nFor credit towards 'An Awfully Big Adventure', battle with a composition of Elekk Plushie and two strong pets such as Ageless Bronze Drake (Tail Sweap/Ancient Blessing/Rewind Time) and Abyssius (Crush/Flamethrower/Metero Strike).",
						["timeline"] = { ADDED_5_0_4 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(31931, {	-- Beegle Blastfuse
								["sourceAchievement"] = 6605,	-- Taming Northrend
								["timeline"] = { ADDED_5_0_4 },
								["isDaily"] = true,
							}),
						},
					}),
				}),
				n(QUESTS, {
					q(11476, {	-- A Carver and a Croaker
						["sourceQuest"] = 11459,	-- Zeh'gehn Sez
						["qg"] = 24537,	-- Handsome Terry
						["coord"] = { 35.6, 80.2, HOWLING_FJORD },
					}),
					q(11282, {	-- A Lesson in Fear
						["sourceQuest"] = 11295,	-- The Offensive Begins
						["qg"] = 24027,	-- Sergeant Gorth
						["coord"] = { 71.1, 39.0, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(35868),	-- Grounded Pants
							i(35869),	-- Hex-Linked Stronghelm
							i(35867),	-- Nimblefinger Band
							i(35870),	-- Stoneground Cleaver
							--
							i(33563),	-- Forsaken Banner (QI!)
						},
					}),
					q(11568, {	-- A Return to Resting
						["sourceQuests"] = {
							11511,	-- The Staff of Storm's Fury
							11512,	-- The Frozen Heart of Isuldof
							11530,	-- The Shield of the Aesirites
							11567,	-- The Ancient Armor of the Kvaldir
						},
						["qg"] = 23804,	-- Orfus of Kamagua
						["coord"] = { 40.2, 60.2, HOWLING_FJORD },
					}),
					q(11305, {	-- A Tailor-Made Formula
						["sourceQuest"] = 11304,	-- New Agamand
						["qg"] = 24251,	-- Chief Plaguebringer Harris
						["coord"] = { 53.5, 66.3, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Dragonflayer Patriarch's Blood
								["provider"] = { "i", 38098 },	-- Dragonflayer Patriarch's Blood
								["cr"] = 27926,	-- Thorvald
							}),
							i(35851),	-- Acid-Etched Knuckles
							i(35849),	-- Featherweight Claymore
							i(35852),	-- Fullered Coldsteel Dagger
							i(35856),	-- Hair-Trigger Blunderbuss
						},
					}),
					q(11473, {	-- A Traitor Among Us
						["sourceQuest"] = 11455,	-- The Fragrance of Money
						["qg"] = 24537,	-- Handsome Terry
						["coord"] = { 35.6, 80.2, HOWLING_FJORD },
					}),
					q(11330, {	-- Absholutely... Thish Will Work!
						["sourceQuest"] = 11328,	-- Mission: Forsaken Intel
						["qg"] = 24283,	-- Peppy Wrongnozzle
						["coord"] = { 30.7, 41.6, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12481, {	-- Adding Injury to Insult
						["sourceQuest"] = 11303,	-- The Ambush
						["qg"] = 24458,	-- Lydell
						["coord"] = { 65.8, 36.7, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(35889),	-- Bone-Inlaid Bracers
							i(35888),	-- Embossed Ermine Girdle
							i(35890),	-- Magdun Spaulders
							i(35891),	-- Runeplate Helm
							--
							i(33581),	-- Vrykul Insult (QI!)
						},
					}),
					q(12482, {	-- Against Nifflevar
						["qg"] = 27922,	-- Ranger Captain Areiel
						["coord"] = { 67.4, 60.5, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Dragonflayer Warrior slain
								["provider"] = { "n", 23654 },	-- Dragonflayer Warrior
							}),
							objective(2, {	-- 0/4 Dragonflayer Rune-Seer slain
								["provider"] = { "n", 23656 },	-- Dragonflayer Rune-Seer
							}),
							objective(3, {	-- 0/4 Dragonflayer Hunting Hound slain
								["provider"] = { "n", 23994 },	-- Dragonflayer Hunting Hound
							}),
						},
					}),
					q(11250, {	-- All Hail the Conqueror of Skorn!
						["sourceQuests"] = {
							11245,	-- Towers of Certain Doom
							11246,	-- Gruesome, But Necessary
							11247,	-- Burn Skorn, Burn!
						},
						["coord"] = { 44.8, 31.4, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(35909),	-- Sun-Fired Striders
							i(35910),	-- Shaleground Bracers
							i(35904),	-- Puissance-Infused Pendant
							i(35905),	-- Vinewoven Tunic
						},
					}),
					q(11326, {	-- Alpha Worg (A)
						["sourceQuest"] = 11416,	-- Eyes of the Eagle
						["qg"] = 24261,	-- Ulfang
						["coord"] = { 29.6, 5.6, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(35913),	-- Gholamweave Leggings
							i(35915),	-- Darksteel Ringmail Greaves
							i(35916),	-- Worgblood Berserker's Hauberk
							i(35914),	-- Proto-Drake Tooth Spaulders
						},
					}),
					q(11324, {	-- Alpha Worg (H)
						["sourceQuest"] = 11417,	-- Eyes of the Eagle
						["qg"] = 24261,	-- Ulfang
						["coord"] = { 29.6, 5.6, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(35913),	-- Gholamweave Leggings
							i(35915),	-- Darksteel Ringmail Greaves
							i(35916),	-- Worgblood Berserker's Hauberk
							i(35914),	-- Proto-Drake Tooth Spaulders
						},
					}),
					q(11230, {	-- Ambushed!
						["sourceQuest"] = 11229,	-- The Windrunner Fleet
						["qg"] = 24037,	-- Captain Harker
						["coord"] = { 84.6, 36.4, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 North Fleet Marine slain
								["provider"] = { "n", 23983 },	-- North Fleet Marine
							}),
							i(35815),	-- Bone-Threaded Harness
							i(35814),	-- Benevolent Hood
							i(35817),	-- Nerubian Inner Husk
						},
					}),
					q(11276, {	-- And Then There Were Two...
						["sourceQuest"] = 11274,	-- Zedd's Probably Dead
						["qg"] = 24145,	-- Zedd
						["coord"] = { 56.6, 52.3, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11394, {	-- And You Thought Murlocs Smelled Bad! (A)
						["sourceQuest"] = 11393,	-- Where is Explorer Jaren?
						["qg"] = 23833,	-- Explorer Jaren
						["coord"] = { 24.2, 32.4, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 Chillmere Coast Scourge Killed
								["providers"] = {
									{ "n", 23645},	-- Mur'ghoul Corrupter
									{ "n", 23643},	-- Unstable Mur'ghoul
									{ "n", 23644},	-- Mur'ghoul Flesheater
									{ "n", 24485},	-- Servitor Shade
									{ "n", 24540},	-- Necrotech
									{ "n", 24546},	-- Rotgill
								},
							}),
						},
					}),
					q(11397, {	-- And You Thought Murlocs Smelled Bad! (H)
						["qg"] = 24359,	-- Apothecary Anastasia
						["coord"] = { 26.2, 24.6, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 Chillmere Coast Scourge Killed
								["providers"] = {
									{ "n", 23645},	-- Mur'ghoul Corrupter
									{ "n", 23643},	-- Unstable Mur'ghoul
									{ "n", 23644},	-- Mur'ghoul Flesheater
									{ "n", 24485},	-- Servitor Shade
									{ "n", 24540},	-- Necrotech
									{ "n", 24546},	-- Rotgill
								},
							}),
						},
					}),
					q(11344, {	-- Anguish of Nifflevar
						["sourceQuest"] = 11343,	-- The Echo of Ymiron
						["qg"] = 23975,	-- Thoralius the Wise
						["coord"] = { 59.8, 61.4, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(35832),	-- Blauvelt's Special Occasion Gloves
							i(35834),	-- Nimblefinger Scaled Gloves
							i(35835),	-- Antique Reinforced Legguards
							i(35833),	-- Imperious Worghide Cap
						},
					}),
					q(11306, {	-- Apply Heat and Stir
						["sourceQuest"] = 11305,	-- A Tailor-Made Formula
						["qg"] = 24251,	-- Chief Plaguebringer Harris
						["coord"] = { 53.5, 66.3, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(33617),	-- Balanced Concoction (QI!)
							i(34023),	-- Empty Apothecary's Flask (QI!)
							i(34024),	-- Flask of Vrykul Blood (QI!)
						}
					}),
					q(11457, {	-- Arming Kamagua
						["sourceQuest"] = 11456,	-- Feeding the Survivors
						["qg"] = 24755,	-- Elder Atuik
						["coord"] = { 25.0, 56.9, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/3 Chimaera Horn
								["provider"] = { "i", 34101 },	-- Chimaera Horn
								["cr"] = 24673,	-- Frostwing Chimaera
							}),
						},
					}),
					q(11458, {	-- Avenge Iskaal
						["sourceQuest"] = 11457,	-- Arming Kamagua
						["qg"] = 24755,	-- Elder Atuik
						["coord"] = { 25.0, 56.9, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/8 Crazed Northsea Slaver slain
								["provider"] = { "n", 24676 },	-- Crazed Northsea Slaver
							}),
						},
					}),
					q(11283, {	-- Baleheim Bodycount
						["sourceQuest"] = 11282,	-- A Lesson in Fear
						["qg"] = 24027,	-- Sergeant Gorth
						["coord"] = { 71.1, 39.0, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/16 Baleheim Bodycount
								["providers"] = {
									{ "n", 24231},	-- Baleheim Bodycount
									{ "n", 23653},	-- Winterskorn Spearman
									{ "n", 23655},	-- Winterskorn Bonegrinder
									{ "n", 23657},	-- Winterskorn Skald
									{ "n", 27260},	-- Dragonflayer Huscarl
									{ "n", 27377},	-- Thane Torvald Eriksson
								},
							}),
							i(35820),	-- Deacon's Wraps
							i(35818),	-- Stretch-Hide Spaulders
							i(35821),	-- Streamlined Stompers
							i(35822),	-- Scavenged Tirasian Plate
						},
					}),
					q(11285, {	-- Baleheim Must Burn!
						["sourceQuest"] = 11282,	-- A Lesson in Fear
						["qg"] = 24027,	-- Sergeant Gorth
						["coord"] = { 71.1, 39.0, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = { i(33472) },	-- Gorth's Torch (QI!)
					}),
					q(11301, {	-- Brains! Brains! Brains!
						["qg"] = 24218,	-- Apothecary Grick
						["coord"] = { 25.9, 24.4, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(35865),	-- Arcanum Shield
							i(35863),	-- Earth-Infused Leggings
							i(35864),	-- Fizznik's Patented Earwarmer
							i(35866),	-- Master Artilleryman Boots
							--
							i(33558),	-- Deranged Explorer Brain (QI!)
							i(33554),	-- Grick's Bonesaw (QI!)
						},
					}),
					q(11153, {	-- Break the Blockade
						["qg"] = 23895,	-- Bombardier Petrov
						["coord"] = { 28.9, 41.9, HOWLING_FJORD },
						["maxReputation"] = { FACTION_VALIANCE_EXPEDITION, EXALTED },	-- Valiance Expedition, Exalted.
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/25 Blockade Pirate slain
								["providers"] = {
									{ "n", 23755},	-- Blockade Pirate
									{ "n", 23767},	-- Blockade Captain
								},
							}),
							objective(2, {	-- 0/10 Blockade Cannons destroyed
								["provider"] = { "n", 23771 },	-- Blockade Cannon
							}),
						},
					}),
					q(11396, {	-- Bring Down Those Shields (A)
						["sourceQuest"] = 11395,	-- It's a Scourge Device
						["qg"] = 23833,	-- Explorer Jaren
						["coord"] = { 24.2, 32.4, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/3 Scourging Crystals Destroyed
								["provider"] = { "n", 24464 },	-- Scourging Crystal
							}),
							i(35932),	-- Earthbinder's Regenerating Band
							i(35934),	-- Ghoul-Crushing Stompers
							i(35935),	-- Infused Coldstone Rune
							i(35933),	-- Ramshorn Greathelm
							--
							i(33960),	-- Scourging Crystal Controller (QI!)
						},
					}),
					q(11399, {	-- Bring Down Those Shields (H)
						["sourceQuest"] = 11398,	-- It's a Scourge Device
						["qg"] = 24359,	-- Apothecary Anastasia
						["coord"] = { 26.2, 24.6, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/3 Scourging Crystals Destroyed
								["provider"] = { "n", 24464 },	-- Scourging Crystal
							}),
							i(35932),	-- Earthbinder's Regenerating Band
							i(35934),	-- Ghoul-Crushing Stompers
							i(35935),	-- Infused Coldstone Rune
							i(35933),	-- Ramshorn Greathelm
							--
							i(33960),	-- Scourging Crystal Controller (QI!)
						},
					}),
					q(11414, {	-- Brother Betrayers (A)
						["sourceQuest"] = 11325,	-- In Worg's Clothing
						["qg"] = 24261,	-- Ulfang
						["coord"] = { 29.6, 5.6, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Bjomolf slain
								["provider"] = { "n", 24516 },	-- Bjomolf
							}),
							objective(2, {	-- 0/1 Varg slain
								["provider"] = { "n", 24517 },	-- Varg
							}),
						},
					}),
					q(11415, {	-- Brother Betrayers (H)
						["sourceQuest"] = 11323,	-- In Worg's Clothing
						["qg"] = 24261,	-- Ulfang
						["coord"] = { 29.6, 5.6, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Bjomolf slain
								["provider"] = { "n", 24516 },	-- Bjomolf
							}),
							objective(2, {	-- 0/1 Varg slain
								["provider"] = { "n", 24517 },	-- Varg
							}),
						},
					}),
					q(11247, {	-- Burn Skorn, Burn! (A)
						["sourceQuest"] = 11248,	-- Operation: Skornful Wrath
						["qg"] = 24060,	-- Westguard Sergeant
						["coord"] = { 44.8, 31.4, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11258, {	-- Burn Skorn, Burn! (H)
						["sourceQuest"] = 11256,	-- Skorn Must Fall!
						["qg"] = 24130,	-- Winterhoof Brave
						["coord"] = { 44.7, 29.9, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(11411, {	-- Camp Winterhoof
						["sourceQuest"] = 11309,	-- Parts for the Job
						["qg"] = 24125,	-- Cormath the Courier
						["coord"] = { 53.0, 66.0, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["lockCriteria"] = {1, "questID", 12566},	-- Help for Camp Winterhoof
					}),
					q(13268, {	-- Cloth Scavenging (A)
						["qg"] = 26914,	-- Benjamin Clegg
						["coord"] = { 58.6, 62.6, HOWLING_FJORD },
						["requireSkill"] = TAILORING,
						["races"] = ALLIANCE_ONLY,
						["lockCriteria"] = { 1,
							"questID", 13272,	-- Cloth Scavenging (N, Dalaran)
							-- "questID", 13268,	-- Cloth Scavenging (A, Howling Fjord)
							"questID", 13269,	-- Cloth Scavenging (H, Howling Fjord)
							"questID", 13265,	-- Cloth Scavenging (A, Borean Tundra)
							"questID", 13270,	-- Cloth Scavenging (H, Borean Tundra)
							"spellID", 59390,	-- Cloth Scavenging
							"spellID", 343634,	-- Shadowlands Cloth Scavenging
							"spellID", 392396,	-- Dragon Isles Cloth Scavenging
						},
					}),
					q(13269, {	-- Cloth Scavenging (H)
						["qg"] = 26964,	-- Alexandra McQueen
						["coord"] = { 79.4, 30.8, HOWLING_FJORD },
						["requireSkill"] = TAILORING,
						["races"] = HORDE_ONLY,
						["lockCriteria"] = { 1,
							"questID", 13272,	-- Cloth Scavenging (N, Dalaran)
							"questID", 13268,	-- Cloth Scavenging (A, Howling Fjord)
							-- "questID", 13269,	-- Cloth Scavenging (H, Howling Fjord)
							"questID", 13265,	-- Cloth Scavenging (A, Borean Tundra)
							"questID", 13270,	-- Cloth Scavenging (H, Borean Tundra)
							"spellID", 59390,	-- Cloth Scavenging
							"spellID", 343634,	-- Shadowlands Cloth Scavenging
							"spellID", 392396,	-- Dragon Isles Cloth Scavenging
						},
					}),
					q(11479, {	-- "Crowleg" Dan
						["sourceQuest"] = 11476,	-- A Carver and a Croaker
						["qg"] = 24525,	-- Zeh'gehn
						["coord"] = { 35.5, 80.6, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/1 "Crowleg" Dan slain
								["provider"] = { "n", 24713 },	-- "Crowleg" Dan
							}),
						},
					}),
					q(11443, {	-- Daggercap Divin'
						["qg"] = 23730,	-- Harold Lagras
						["coord"] = { 62.6, 58.3, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Valgarde Supply Crate
								["providers"] = {
									{ "i", 34081 },	-- Valgarde Supply Crate
									{ "o", 186912 },	-- Valgarde Supply Crate
								},
							}),
						},
					}),
					q(11218, {	-- Danger! Explosives!
						["sourceQuest"] = 11188,	-- Two Wrongs...
						["qg"] = 23976,	-- Sapper Steelring
						["coord"] = { 29.1, 41.7, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Whisper Gulch Ore Fragment
								["providers"] = {
									{ "i", 33188 },	-- Whisper Gulch Ore Fragment
									{ "o", 186468 },	-- Whisper Gulch Ore Fragment
								},
							}),
							objective(2, {	-- 0/18 Whisper Gulch Gem
								["providers"] = {
									{ "i", 33187 },	-- Whisper Gulch Gem
									{ "o", 186404 },	-- Whisper Gulch Gem
									{ "o", 186466 },	-- Whisper Gulch Gem
									{ "o", 186467 },	-- Whisper Gulch Gem
								},
							}),
						},
					}),
					q(11467, {	-- Dead Man's Debt
						["sourceQuest"] = 11466,	-- Jack Likes His Drink
						["qg"] = 24541,	-- Taruk
						["coord"] = { 36.3, 80.4, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/1 Black Conrad's Treasure
								["provider"] = { "i", 34118 },	-- Black Conrad's Treasure
								["cr"] = 24790,	-- Black Conrad's Ghost
							}),
						},
					}),
					q(11235, {	-- Dealing With Gjalerbron (A)
						["sourceQuest"] = 11250,	-- All Hail the Conqueror of Skorn!
						["qg"] = 23749,	-- Captain Adams
						["coord"] = { 28.8, 44.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 Gjalerbron Warrior slain
								["provider"] = { "n", 23991 },	-- Gjalerbron Warrior
							}),
							objective(2, {	-- 0/8 Gjalerbron Rune-Caster slain
								["provider"] = { "n", 23990 },	-- Gjalerbron Rune-Caster
							}),
							objective(3, {	-- 0/8 Gjalerbron Sleep-Watcher slain
								["provider"] = { "n", 23989 },	-- Gjalerbron Sleep-Watcher
							}),
						},
					}),
					q(11263, {	-- Dealing With Gjalerbron (H)
						["sourceQuest"] = 11261,	-- The Conqueror of Skorn!
						["qg"] = 24129,	-- Chieftain Ashtotem
						["coord"] = { 48.0, 10.7, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 Gjalerbron Warrior slain
								["provider"] = { "n", 23991 },	-- Gjalerbron Warrior
							}),
							objective(2, {	-- 0/8 Gjalerbron Rune-Caster slain
								["provider"] = { "n", 23990 },	-- Gjalerbron Rune-Caster
							}),
							objective(3, {	-- 0/8 Gjalerbron Sleep-Watcher slain
								["provider"] = { "n", 23989 },	-- Gjalerbron Sleep-Watcher
							}),
						},
					}),
					q(11359, {	-- Demolishing Megalith (A)
						["sourceQuest"] = 11358,	-- The Lodestone
						["qg"] = 24376,	-- Researcher Aderan
						["coord"] = { 62.5, 16.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Megalith slain
								["provider"] = { "n", 24371 },	-- Megalith
							}),
						},
					}),
					q(11367, {	-- Demolishing Megalith (H)
						["sourceQuest"] = 11366,	-- The Lodestone
						["qg"] = 24390,	-- Sage Edan
						["coord"] = { 48.0, 10.4, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Megalith slain
								["provider"] = { "n", 24371 },	-- Megalith
							}),
						},
					}),
					q(11269, {	-- Down to the Wire
						["qg"] = 24139,	-- Gil Grisert
						["coord"] = { 62.5, 16.8, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Spotted Hippogryph Down
								["providers"] = {
									{ "i", 33348 },	-- Spotted Hippogryph Down
									{ "o", 186591 },	-- Spotted Hippogryph Down
								},
							}),
							i(35926),	-- Artfully Tooled Leggings
							i(35928),	-- Cold-Forged Bronze Legplates
							i(35925),	-- Shimmering Cold Iron Band
							i(35927),	-- Songscale Breastplate
						},
					}),
					q(11280, {	-- Draconis Gastritis
						["sourceQuest"] = 11279,	-- Green Eggs and Whelps
						["qg"] = 24157,	-- Plaguebringer Tillinghast
						["coord"] = { 53.0, 66.9, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(35875),	-- Beneficent Skullcap
							i(35871),	-- Indigo Robe of Replenishment
							i(35873),	-- Interlinked Chain Girdle
							i(35872),	-- Iron-Studded Leggings
							--
							i(33441),	-- Tillinghast's Plagued Meat (QI!)
						},
					}),
					q(11290, {	-- Dragonflayer Battle Plans
						["sourceQuest"] = 11255,	-- Prisoners of Wyrmskull
						["qg"] = 23546,	-- Vice Admiral Kellar
						["coord"] = { 60.4, 61.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Dragonflayer Battle Plans
								["providers"] = {
									{ "i", 33488 },	-- Dragonflayer Battle Plans
									{ "o", 186618 },	-- Dragonflayer Battle Plans
								},
							}),
							i(35814),	-- Benevolent Hood
							i(35816),	-- Blood-Stained Chain Leggings
							i(35815),	-- Bone-Threaded Harness
							i(35817),	-- Nerubian Inner Husk
						},
					}),
					q(11429, {	-- Drop It then Rock It!
						["sourceQuest"] = 11427,	-- Meet Lieutenant Icehammer...
						["qg"] = 24634,	-- Lieutenant Icehammer
						["coord"] = { 64.4, 46.9, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11507, {	-- Elder Atuik and Kamagua
						["sourceQuest"] = 11504,	-- The Dead Rise!
						["qg"] = 23804,	-- Orfus of Kamagua
						["coord"] = { 40.2, 60.2, HOWLING_FJORD },
					}),
					q(11406, {	-- Everything Must Be Ready
						["sourceQuest"] = 11332,	-- Mission: Plague This!
						["qg"] = 24494,	-- Quartermaster Brevin
						["coord"] = { 30.6, 42.7, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11416, {	-- Eyes of the Eagle (A)
						["sourceQuest"] = 11414,	-- Brother Betrayers
						["qg"] = 24261,	-- Ulfang
						["coord"] = { 29.6, 5.6, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Eyes of the Eagle
								["provider"] = { "i", 34027 },	-- Eyes of the Eagle
								["cr"] = 24518,	-- Talonshrike
							}),
						},
					}),
					q(11417, {	-- Eyes of the Eagle (H)
						["sourceQuest"] = 11415,	-- Brother Betrayers
						["qg"] = 24261,	-- Ulfang
						["coord"] = { 29.6, 5.6, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Eyes of the Eagle
								["provider"] = { "i", 34027 },	-- Eyes of the Eagle
								["cr"] = 24518,	-- Talonshrike
							}),
						},
					}),
					q(11468, {	-- Falcon Versus Hawk
						["sourceQuest"] = 11465,	-- The Ransacked Caravan
						["qg"] = 24750,	-- Hidalgo the Master Falconer
						["coord"] = { 75.2, 64.9, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11456, {	-- Feeding the Survivors
						["qg"] = 24755,	-- Elder Atuik
						["coord"] = { 25.0, 56.9, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/6 Island Shoveltusk Meat
								["provider"] = { "i", 36776 },	-- Island Shoveltusk Meat
								["cr"] = 24681,	-- Island Shoveltusk
							}),
						},
					}),
					q(11307, {	-- Field Test
						["sourceQuest"] = 11306,	-- Apply Heat and Stir
						["qg"] = 24251,	-- Chief Plaguebringer Harris
						["coord"] = { 53.5, 66.3, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(35857),	-- Munificent Bulwark
							i(35858),	-- Tome of Alacrity
							--
							i(33621),	-- Plague Spray (QI!)
						},
					}),
					q(11287, {	-- Find Sage Mistwalker
						["sourceQuest"] = 11261,	-- The Conqueror of Skorn!
						["qg"] = 24135,	-- Greatmother Ankha
						["coord"] = { 48.2, 10.7, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11434, {	-- Forgotten Treasure
						["sourceQuest"] = 11509,	-- Street "Cred"
						["qg"] = 24537,	-- Handsome Terry
						["coord"] = { 35.6, 80.2, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/1 Amani Vase
								["providers"] = {
									{ "i", 34069 },	-- Amani Vase
									{ "o", 186885 },	-- Amani Vase
								},
							}),
							objective(2, {	-- 0/1 Eagle Figurine
								["providers"] = {
									{ "i", 34070 },	-- Eagle Figurine
									{ "o", 186886 },	-- Eagle Figurine
								},
							}),
						},
					}),
					q(11464, {	-- Gambling Debt
						["sourceQuest"] = 11434,	-- Forgotten Treasure
						["qg"] = 24541,	-- Taruk
						["coord"] = { 36.3, 80.4, HOWLING_FJORD },
					}),
					q(12918, {	-- Gem Perfection (A)
						["qg"] = 26915,	-- Ounhulo
						["coord"] = { 59.8, 63.8, HOWLING_FJORD },
						["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 },
						["cost"] = {
							{ "i", 36929, 2 },	-- Huge Citrine
							{ "i", 36932, 2 },	-- Dark Jade
							{ "i", 36926, 2 },	-- Shadow Crystal
						},
						["requireSkill"] = JEWELCRAFTING,
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(41888, {	-- Small Velvet Bag
								["description"] = "Contains a 'perfect' gem.",
							}),
							r(55534, {	-- Gem Perfection
								["requireSkill"] = JEWELCRAFTING,
							}),
						},
					}),
					q(12952, {	-- Gem Perfection (H)
						["qg"] = 26960,	-- Carter Tiffens
						["coord"] = { 79.2, 28.8, HOWLING_FJORD },
						["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 },
						["cost"] = {
							{ "i", 36929, 2 },	-- Huge Citrine
							{ "i", 36932, 2 },	-- Dark Jade
							{ "i", 36926, 2 },	-- Shadow Crystal
						},
						["requireSkill"] = JEWELCRAFTING,
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(41888, {	-- Small Velvet Bag
								["description"] = "Contains a 'perfect' gem.",
							}),
							r(55534, {	-- Gem Perfection
								["requireSkill"] = JEWELCRAFTING,
							}),
						},
					}),
					q(12181, {	-- Give it a Name
						["qg"] = 24251,	-- Chief Plaguebringer Harris
						["coord"] = { 53.5, 66.3, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["groups"] = { i(37027) },	-- Blight Specimen (QI!)
					}),
					q(11237, {	-- Gjalerbron Attack Plans (A) -- TODO: Verify if this drops all the time
						["provider"] = { "i", 33289 },	-- Gjalerbron Attack Plans
						["races"] = ALLIANCE_ONLY,
						["crs"] = {
							23990,	-- Gjalerbron Rune-Caster
							23989,	-- Gjalerbron Sleep-Watcher
							23991,	-- Gjalerbron Warrior
							24014,	-- Necrolord
						},
					}),
					q(11266, {	-- Gjalerbron Attack Plans (H) -- TODO: Verify if this drops all the time
						["provider"] = { "i", 33347 },	-- Gjalerbron Attack Plans
						["races"] = HORDE_ONLY,
						["crs"] = {
							23990,	-- Gjalerbron Rune-Caster
							23989,	-- Gjalerbron Sleep-Watcher
							23991,	-- Gjalerbron Warrior
							24014,	-- Necrolord
						},
					}),
					q(11279, {	-- Green Eggs and Whelps
						["qg"] = 24157,	-- Plaguebringer Tillinghast
						["coord"] = { 53.0, 66.9, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Plagued Proto-Whelp Specimen
								["provider"] = { "i", 33420 },	-- Plagued Proto-Whelp Specimen
								["cr"] = 24160,	-- Plagued Proto-Whelp
							}),
							i(33418),	-- Tillinghast's Plague Canister (QI!)
						},
					}),
					q(11508, {	-- Grezzix Spindlesnap
						["sourceQuest"] = 11507,	-- Elder Atuik and Kamagua
						["qg"] = 24755,	-- Elder Atuik
						["coord"] = { 25.0, 56.9, HOWLING_FJORD },
					}),
					q(11246, {	-- Gruesome, But Necessary (A)
						["sourceQuest"] = 11248,	-- Operation: Skornful Wrath
						["qg"] = 24060,	-- Westguard Sergeant
						["coord"] = { 44.8, 31.4, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11257, {	-- Gruesome, But Necessary (H)
						["sourceQuest"] = 11256,	-- Skorn Must Fall!
						["qg"] = 24130,	-- Winterhoof Brave
						["coord"] = { 44.7, 29.9, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(11232, {	-- Guide Our Sights
						["sourceQuest"] = 11230,	-- Ambushed!
						["qg"] = 24037,	-- Captain Harker
						["coord"] = { 84.6, 36.4, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(11289, {	-- Guided by Honor
						["description"] = "Inside the |cFFFFD700Utgarde Catacombs|r.",
						["sourceQuest"] = 11288,	-- The Shining Light
						["qg"] = 24189,	-- Ares the Oathbound
						["coords"] = {
							{ 56.6, 49.5, HOWLING_FJORD },	-- Catacombs entrance
							{ 59.3, 55.4, HOWLING_FJORD },	-- NPC
						},
						["races"] = ALLIANCE_ONLY,
					}),
					q(11430, {	-- Harpoon Master Yavus
						["sourceQuest"] = 11429,	-- Drop it then Rock It!
						["qg"] = 24634,	-- Lieutenant Icehammer
						["coord"] = { 64.4, 46.9, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Harpoon Master Yavus slain
								["provider"] = { "n", 24644 },	-- Harpoon Master Yavus
							}),
						},
					}),
					q(11271, {	-- Hasty Preparations
						["qg"] = 24127,	-- Ahota Whitefrost
						["coord"] = { 48.3, 11.0, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Spotted Hippogryph Down
								["providers"] = {
									{ "i", 33348 },	-- Spotted Hippogryph Down
									{ "o", 186591 },	-- Spotted Hippogryph Down
								},
							}),
							i(35926),	-- Artfully Tooled Leggings
							i(35927),	-- Songscale Breastplate
							i(35928),	-- Cold-Forged Bronze Legplates
							i(35925),	-- Shimmering Cold Iron Band
						},
					}),
					q(11228, {	-- Hell Has Frozen Over...
						-- #if AFTER 7.3.5
						["sourceQuest"] = 49551,	-- Hero's Call: Howling Fjord!
						-- #endif
						["qg"] = 23547,	-- Macalroy
						["coord"] = { 60.7, 62.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(12566, {	-- Help for Camp Winterhoof
						["qg"] = 28314,	-- Longrunner Nanik
						["coord"] = { 71.4, 39.2, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["lockCriteria"] = {1, "questID", 11411},	-- Camp Winterhoof
					}),
					heroscall(q(49551, {	-- Hero's Call: Howling Fjord!
						["timeline"] = { ADDED_7_3_5 },
						["isBreadcrumb"] = true,
						["lvl"] = 58,
					})),
					q(12298, {	-- High Commander Halford Wyrmbane
						["sourceQuest"] = 12297,	-- Of Traitors and Treason
						["qg"] = 23859,	-- Greer Orehammer
						["coord"] = { 31.2, 43.9, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11329, {	-- I'll Try Anything!
						["qg"] = 24056,	-- Christopher Sloan
						["coord"] = { 60.2, 18.6, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Northern Barbfish
								["provider"] = { "i", 33628 },	-- Northern Barbfish
								["cr"] = 24285,	-- Northern Barbfish
							}),
						},
					}),
					q(11390, {	-- I've Got a Flying Machine!
						["sourceQuest"] = 11176,	-- See to the Operations
						["qg"] = 24399,	-- Steel Gate Chief Archaeologist
						["coord"] = { 30.8, 28.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(35912),	-- Crackling Cloak
							i(35911),	-- Unsparing Band
							i(35936),	-- Worg Tooth Talisman
						},
					}),
					q(11243, {	-- If Valgarde Falls...
						["sourceQuest"] = 11228,	-- Hell Has Frozen Over...
						["qg"] = 23546,	-- Vice Admiral Keller
						["coord"] = { 60.4, 61.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/12 Dragonflayer Invader slain
								["providers"] = {
									{ "n", 24051},	-- Dragonflayer Invader
									{ "n", 24063},	-- Dragonflayer Worg
									{ "n", 24113},	-- Dragonflayer Worg Corpse
									{ "n", 24128},	-- Wild Worg
									{ "n", 30164},	-- Cavedweller Worg
									{ "n", 30167},	-- Gimorak
									{ "n", 30177},	-- Ravaged Cavedweller Worg
									{ "n", 31885},	-- Rhukah
									{ "n", 31886},	-- Nargut
								},
							}),
						},
					}),
					q(11239, {	-- In Service to the Light
						["sourceQuest"] = 11231,	-- Of Keys and Cages
						["qg"] = 24038,	-- Father Levariol
						["coord"] = { 28.8, 43.9, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Deathless Watcher slain
								["provider"] = { "n", 24013 },	-- Deathless Watcher
							}),
							objective(2, {	-- 0/4 Fearsome Horror slain
								["provider"] = { "n", 24073 },	-- Fearsome Horror
							}),
							objective(3, {	-- 0/2 Putrid Wight slain
								["provider"] = { "n", 23992 },	-- Putrid Wight
							}),
							i(35884),	-- Regal Pantaloons
							i(35887),	-- Loam-Stained Greaves
							i(35885),	-- Tribal Chestguard
							i(35886),	-- Worgtooth Pendant
						},
					}),
					q(11325, {	-- In Worg's Clothing (A)
						["sourceQuest"] = 11322,	-- The Cleansing
						["qg"] = 24273,	-- Watcher Moonleaf
						["coord"] = { 30.0, 28.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11323, {	-- In Worg's Clothing (H)
						["sourceQuest"] = 11317,	-- The Cleansing
						["qg"] = 24186,	-- Sage Mistwalker
						["coord"] = { 31.1, 24.5, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(11333, {	-- Into the World of Spirits
						["sourceQuest"] = 11244,	-- Rescuing the Rescuers
						["qg"] = 23975,	-- Thoralius the Wise
						["coord"] = { 59.8, 61.4, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Reagent Pouch
								["providers"] = {
									{ "i", 33635 },	-- Reagent Pouch
									{ "o", 186662 },	-- Reagent Pouch
								},
							}),
						},
					}),
					q(11489, {	-- Iron Rune Constructs and You: Collecting Data
						["sourceQuest"] = 11485,	-- Iron Rune Constructs and You: Rocket Jumping
						["qg"] = 24807,	-- Walt
						["coord"] = { 75.0, 65.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11485, {	-- Iron Rune Constructs and You: Rocket Jumping
						["sourceQuests"] = {
							11483,	-- We Can Rebuild It
							11484,	-- We Have the Technology
						},
						["qg"] = 24807,	-- Walt
						["coord"] = { 75.0, 65.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11491, {	-- Iron Rune Constructs and You: The Bluff
						["sourceQuest"] = 11489,	-- Iron Rune Constructs and You: Collecting Data
						["qg"] = 24807,	-- Walt
						["coord"] = { 75.0, 65.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11421, {	-- It Goes to 11...
						["sourceQuest"] = 11430,	-- Harpoon Master Yavus
						["qg"] = 24634,	-- Lieutenant Icehammer
						["coord"] = { 64.4, 46.9, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(35841),	-- Frost-Trimmed Gauntlets
							i(35842),	-- Azure Chain Hauberk
							i(35843),	-- Ramshorn-Inlaid Shoulders
							i(35839),	-- Runed Clamshell Choker
						},
					}),
					q(11395, {	-- It's a Scourge Device (A)
						["provider"] = { "i", 33961 },	-- Scourge Device
						["races"] = ALLIANCE_ONLY,
						["crs"] = {
							23645,	-- Mur'ghoul Corrupter
							23644,	-- Mur'ghoul Flesheater
							24540,	-- Necrotech
							24485,	-- Servitor Shade
							23643,	-- Unstable Mur'ghoul
						},
					}),
					q(11398, {	-- It's a Scourge Device (H)
						["provider"] = { "i", 33962 },	-- Scourge Device
						["races"] = HORDE_ONLY,
						["crs"] = {
							23645,	-- Mur'ghoul Corrupter
							23644,	-- Mur'ghoul Flesheater
							24540,	-- Necrotech
							24485,	-- Servitor Shade
							23643,	-- Unstable Mur'ghoul
						},
					}),
					q(11466, {	-- Jack Likes His Drink
						["sourceQuest"] = 11464,	-- Gambling Debt
						["qg"] = 24541,	-- Taruk
						["coord"] = { 36.3, 80.4, HOWLING_FJORD },
					}),
					q(11428, {	-- Keeper Witherleaf
						["sourceQuests"] = {
							11316,	-- Spawn of the Twisted Glade
							11319,	-- Seeds of the Blacksouled Keepers
						},
						["qg"] = 24117,	-- Lurielle
						["coord"] = { 61.4, 22.8, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/1 Keeper Witherleaf slain
								["provider"] = { "n", 24638 },	-- Keeper Witherleaf
							}),
						},
					}),
					q(11297, {	-- Keeping Watch on the Interlopers
						["sourceQuest"] = 11275,	-- Making the Horn
						["qg"] = 24234,	-- Junat the Wanderer
						["coord"] = { 48.4, 10.4, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11233, {	-- Land the Killing Blow
						["sourceQuest"] = 11232,	-- Guide Our Sights
						["qg"] = 23778,	-- Dark Ranger Lyana
						["coord"] = { 78.6, 37.1, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Captain Olster slain
								["provider"] = { "n", 23962 },	-- Captain Olster
							}),
							objective(2, {	-- 0/1 Lieutenant Celeyne slain
								["provider"] = { "n", 23964 },	-- Lieutenant Celeyne
							}),
							objective(3, {	-- 0/1 Sergeant Lorric slain
								["provider"] = { "n", 23963 },	-- Sergeant Lorric
							}),
							i(35807),	-- Bramblethorn Greatstaff
							i(35808),	-- Coldstone Cutlass
							i(35812),	-- Cragthumper
							i(35809),	-- Earthspike
							i(35811),	-- Elekk-Horn Crossbow
							i(35810),	-- Pacifying Pummeler
						},
					}),
					q(11240, {	-- Leader of the Deranged
						["sourceQuest"] = 11218,	-- Danger! Explosives!
						["qg"] = 23976,	-- Sapper Steelring
						["coord"] = { 29.1, 41.7, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Squeeg Idolhunter slain
								["provider"] = { "n", 24048 },	-- Squeeg Idolhunter
							}),
							i(35917),	-- Wrathwrought Shoulderpads
							i(35919),	-- Whispersteel Handguards
							i(35920),	-- Feather-Lined Shoulderpads
							i(35918),	-- Spiked Skullguard
						},
					}),
					q(11227, {	-- Let Them Eat Crow
						["qg"] = 23938,	-- Pontius
						["coord"] = { 79.1, 31.2, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(33238),	-- Crow Meat (QI!)
							i(33221),	-- Plaguehound Cage (QI!)
						},
					}),
					q(11436, {	-- Let's Go Surfing Now
						["sourceQuest"] = 11421,	-- It Goes to 11...
						["qg"] = 24634,	-- Lieutenant Icehammer
						["coord"] = { 64.4, 46.9, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(34078)	-- Icehammer's Harpoon Controller
						},
					}),
					q(11494, {	-- Lightning Infused Relics
						["sourceQuest"] = 11491,	-- Iron Rune Constructs and You: The Bluff
						["qg"] = 24807,	-- Walt
						["coord"] = { 75.0, 65.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(35844),	-- Shock-Resistant Hood
							i(35846),	-- Banded Chain Gloves
							i(35848),	-- Munificent Legguards
							i(35845, {	-- Crystalline Star
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					q(11426, {	-- Locating the Mechanism
						["sourceQuest"] = 11420,	-- The Path to Payback
						["qg"] = 23728,	-- Guard Captain Zorek
						["coord"] = { 60.1, 62.4, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Harpoon Control Mechanism
								["provider"] = { "i", 34032 },	-- Harpoon Control Mechanism
								["cr"] = 24635,	-- Dragonflayer Harpooner
							}),
						},
					}),
					q(11187, {	-- Mage-Lieutenant Malister
						["sourceQuest"] = 11157,	-- The Clutches of Evil
						["qg"] = 23749,	-- Captain Adams
						["coord"] = { 28.8, 44.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11275, {	-- Making the Horn
						["qg"] = 24123,	-- Nokoma Snowseer
						["coord"] = { 49.3, 11.9, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Undamaged Ram Horn
								["provider"] = { "i", 33351 },	-- Undamaged Ram Horn
								["cr"] = 23740,	-- Frosthorn Ram
							}),
						},
					}),
					q(11355, {	-- March of the Giants (A)
						["sourceQuest"] = 11329,	-- I'll Try Anything!
						["qg"] = 24376,	-- Researcher Aderan
						["coord"] = { 62.5, 16.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = { i(33806) },	-- Runeseeking Pick (QI!)
					}),
					q(11365, {	-- March of the Giants (H)
						["sourceQuest"] = 11275,	-- Making the Horn
						["qg"] = 24390,	-- Sage Edan
						["coord"] = { 48.0, 10.4, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = { i(33806) },	-- Runeseeking Pick (QI!)
					}),
					q(11349, {	-- Mastering the Runes (A)
						["sourceQuest"] = 11346,	-- The Book of Runes
						["qg"] = 24328,	-- Prospector Belvar
						["coord"] = { 62.2, 17.2, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Iron Rune Carving Tools
								["providers"] = {
									{ "i", 33794 },	-- Iron Rune Carving Tools
									{ "o", 186684 },	-- Iron Rune Carving Tools
								},
							}),
						},
					}),
					q(11351, {	-- Mastering the Runes (H)
						["sourceQuest"] = 11350,	-- The Book of Runes
						["qg"] = 24362,	-- Longrunner Pembe
						["coord"] = { 49.2, 12.2, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Iron Rune Carving Tools
								["providers"] = {
									{ "i", 33794 },	-- Iron Rune Carving Tools
									{ "o", 186684 },	-- Iron Rune Carving Tools
								},
							}),
						},
					}),
					q(11427, {	-- Meet Lieutenant Icehammer...
						["sourceQuest"] = 11426,	-- Locating the Mechanism
						["qg"] = 23728,	-- Guard Captain Zorek
						["coord"] = { 60.1, 62.4, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11480, {	-- Meet Number Two
						["sourceQuest"] = 11479,	-- "Crowleg" Dan
						["qg"] = 24537,	-- Handsome Terry
						["coord"] = { 35.6, 80.2, HOWLING_FJORD },
					}),
					q(11281, {	-- Mimicking Nature's Call
						["sourceQuest"] = 11275,	-- Making the Horn
						["qg"] = 24123,	-- Nokoma Snowseer
						["coord"] = { 49.3, 11.9, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(35931),	-- Appointed Scalemail Leggings
							i(35937),	-- Braxley's Backyard Moonshine
							i(35929),	-- Gholamcloth Wrap
							i(35930),	-- Inscribed Worghide Treads
							--
							i(33450),	-- Carved Horn (QI!)
						},
					}),
					q(11202, {	-- Mission: Eternal Flame
						["sourceQuest"] = 11199,	-- Report to Scout Knowles
						["coord"] = { 44.4, 57.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(35889),	-- Bone-Inlaid Bracers
							i(35888),	-- Embossed Ermine Girdle
							i(35890),	-- Magdun Spaulders
							i(35891),	-- Runeplate Helm
						},
					}),
					q(11328, {	-- Mission: Forsaken Intel
						["sourceQuest"] = 11327,	-- Mission: Package Retrieval
						["qg"] = 23906,	-- Scout Knowles
						["coord"] = { 44.4, 57.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11327, {	-- Mission: Package Retrieval
						["sourceQuest"] = 11202,	-- Mission: Eternal Flame
						["qg"] = 23906,	-- Scout Knowles
						["coord"] = { 44.4, 57.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Apothecary's Package
								["providers"] = {
									{ "i", 33620 },	-- Apothecary's Package
									{ "o", 186679 },	-- Apothecary's Package
								},
							}),
						},
					}),
					q(11332, {	-- Mission: Plague This!
						["sourceQuest"] = 11331,	-- You Tell Him ...Hic!
						["coord"] = { 28.8, 44.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(35893),	-- Coldstone-Inlaid Waistguard
							i(35892),	-- Flamebinder Handwraps
							i(35894),	-- Purestrike Bracers
							i(35895),	-- Emeraldscale Pauldrons
						},
					}),
					q(11527, {	-- Mutiny on the Mercy
						["sourceQuest"] = 11519,	-- The Lost Shield of the Aesirites
						["qg"] = 24910,	-- Captain Ellis
						["coords"] = {
							{ 39.7, 74.4, HOWLING_FJORD },
							{ 38.9, 72.1, HOWLING_FJORD },
							{ 38.4, 69.2, HOWLING_FJORD },
							{ 37.0, 67.1, HOWLING_FJORD },
							{ 33.8, 70.1, HOWLING_FJORD },
							{ 35.3, 74.7, HOWLING_FJORD },
							{ 37.2, 74.8, HOWLING_FJORD },
							{ 38.0, 77.5, HOWLING_FJORD },
							{ 40.8, 81.2, HOWLING_FJORD },
							{ 43.6, 83.3, HOWLING_FJORD },
							{ 45.9, 80.1, HOWLING_FJORD },
							{ 43.2, 77.7, HOWLING_FJORD },
							{ 41.1, 76.2, HOWLING_FJORD },
						},
						["groups"] = {
							objective(1, {	-- 0/5 Barrel of Blasting Powder
								["provider"] = { "i", 34387 },	-- Barrel of Blasting Powder
								["cr"] = 25026,	-- Mutinous Sea Dog
							}),
						},
					}),
					q(11175, {	-- My Daughter
						["sourceQuests"] = {
							11240,	-- Leader of the Deranged
							11224,	-- Send Them Packing
						},
						["qg"] = 23831,	-- Old Man Stonemantle
						["coord"] = { 31.6, 42.0, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11236, {	-- Necro Overlord Mezhen (A)
						["sourceQuest"] = 11235,	-- Dealing With Gjalerbron
						["qg"] = 23749,	-- Captain Adams
						["coord"] = { 28.8, 44.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Necro Overlord Mezhen slain
								["provider"] = { "n", 24018 },	-- Necro Overlord Mezhen
							}),
							i(35938),	-- Drape of Munificence
							i(35878),	-- Dusk-Linked Leggings
							i(35879),	-- Gold-Plated Coldsteel Girdle
							i(35877),	-- Worgskin Shoulders
						},
					}),
					q(11264, {	-- Necro Overlord Mezhen (H)
						["sourceQuest"] = 11263,	-- Dealing With Gjalerbron
						["qg"] = 24129,	-- Chieftain Ashtotem
						["coord"] = { 48.0, 10.7, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Necro Overlord Mezhen slain
								["provider"] = { "n", 24018 },	-- Necro Overlord Mezhen
							}),
							i(35938),	-- Drape of Munificence
							i(35878),	-- Dusk-Linked Leggings
							i(35879),	-- Gold-Plated Coldsteel Girdle
							i(35877),	-- Worgskin Shoulders
						},
					}),
					q(11304, {	-- New Agamand
						["sourceQuest"] = 11170,	-- Test at Sea
						["qg"] = 24126,	-- Apothecary Lysander
						["coord"] = { 78.5, 28.9, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = { i(33619) },	-- Lysander's Strain (QI!)
					}),
					q(11501, {	-- News From the East
						["sourceQuests"] = {
							11494,	-- Lightning Infused Relics
							11495,	-- The Delicate Sound of Thunder
						},
						["qg"] = 24807,	-- Walt
						["coord"] = { 75.0, 65.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(35857),	-- Munificent Bulwark
							i(35858),	-- Tome of Alacrity
						},
					}),
					q(13087, {	-- Northern Cooking (A)
						["description"] = "Requires |cFFFFD700Northrend Cooking|r.",
						["qg"] = 26905,	-- Brom Brewbaster
						["coord"] = { 58.2, 62.0, HOWLING_FJORD },
						["requireSkill"] = COOKING,
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							recipe(57421),	-- Northern Stew
						},
					}),
					q(13089, {	-- Northern Cooking (H)
						["description"] = "Requires |cFFFFD700Northrend Cooking|r.",
						["qg"] = 26953,	-- Thomas Kolichio
						["coord"] = { 78.6, 29.4, HOWLING_FJORD },
						["requireSkill"] = COOKING,
						["races"] = HORDE_ONLY,
						["groups"] = {
							recipe(57421),	-- Northern Stew
						},
					}),
					q(11231, {	-- Of Keys and Cages (A)
						["sourceQuest"] = 11250,	-- All Hail the Conqueror of Skorn!
						["qg"] = 24038,	-- Father Levariol
						["coord"] = { 28.8, 43.9, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11265, {	-- Of Keys and Cages (H)
						["sourceQuest"] = 11261,	-- The Conqueror of Skorn!
						["qg"] = 24135,	-- Greatmother Ankha
						["coord"] = { 48.1, 10.6, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(12297, {	-- Of Traitors and Treason
						["sourceQuest"] = 11250,	-- All Hail the Conqueror of Skorn!
						["qg"] = 23749,	-- Captain Adams
						["coord"] = { 28.8, 44.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11190, {	-- One Size Does Not Fit All
						["qg"] = 23770,	-- Cannoneer Ely
						["coord"] = { 33.9, 43.7, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Westguard Cannonball
								["providers"] = {
									{ "i", 33123 },	-- Westguard Cannonball
									{ "o", 186427 },	-- Westguard Cannonball
								},
							}),
						},
					}),
					q(11248, {	-- Operation: Skornful Wrath
						["sourceQuest"] = 11332,	-- Mission: Plague This!
						["qg"] = 23749,	-- Captain Adams
						["coord"] = { 28.8, 44.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11573, {	-- Orfus of Kamagua
						["qg"] = 25233,	-- Lunk-tusk
						["coord"] = { 32.2, 46.7, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11477, {	-- Out of My Element?
						["qg"] = 24811,	-- Donny
						["coord"] = { 78.8, 48.8, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Iron Rune Destroyer slain
								["provider"] = { "n", 23676 },	-- Iron Rune Destroyer
							}),
							objective(2, {	-- 0/5 Iron Rune Laborer slain
								["provider"] = { "n", 23711 },	-- Iron Rune Laborer
							}),
							objective(3, {	-- 0/2 Iron Rune Sage slain
								["provider"] = { "n", 23674 },	-- Iron Rune Sage
							}),
						},
					}),
					q(11478, {	-- Outpost Over Yonder...
						["qg"] = 24811,	-- Donny
						["coord"] = { 78.8, 48.8, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11309, {	-- Parts for the Job
						["sourceQuest"] = 11308,	-- Time for Cleanup
						["qg"] = 24252,	-- "Hacksaw" Jenny
						["coord"] = { 53.6, 65.2, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Shoveltusk Ligament
								["provider"] = { "i", 33611 },	-- Shoveltusk Ligament
								["crs"] = {
									23690,	-- Shoveltusk
									23691,	-- Shoveltusk Stag
									24791,	-- Shoveltusk Calf
								},
							}),
							objective(2, {	-- 0/1 Fresh Pound of Flesh
								["provider"] = { "i", 33612 },	-- Fresh Pound of Flesh
								["cr"] = 24291,	-- Anton
							}),
							i(35844),	-- Shock-Resistant Hood
							i(35846),	-- Banded Chain Gloves
							i(35848),	-- Munificent Legguards
							i(35845, {	-- Crystalline Star
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					q(11292, {	-- Preying Upon the Weak
						["qg"] = 24131,	-- Trapper Jethan
						["coord"] = { 62.6, 16.7, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Trapped Prey
								["providers"] = {
									{ "i", 33487 },	-- Trapped Prey
									{ "o", 186619 },	-- Sprung Trap
								},
								["cr"] = 24206,	-- Prowling Worg
							}),
							i(35864),	-- Fizznik's Patented Earwarmer
							i(35863),	-- Earth-Infused Leggings
							i(35866),	-- Master Artilleryman Boots
							i(35865),	-- Arcanum Shield
						},
					}),
					q(11255, {	-- Prisoners of Wyrmskull
						["sourceQuest"] = 11244,	-- Rescuing the Rescuers
						["qg"] = 23546,	-- Vice Admiral Keller
						["coord"] = { 60.4, 61.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11474, {	-- Problems on the High Bluff
						["sourceQuest"] = 11448,	-- The Explorers' League Outpost
						["qg"] = 24717,	-- Stanwad
						["coord"] = { 74.8, 65.4, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11234, {	-- Report to Anselm
						["sourceQuest"] = 11233,	-- Landing the Killing Blow
						["qg"] = 23778,	-- Dark Ranger Lyana
						["coord"] = { 78.6, 37.1, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(11199, {	-- Report to Scout Knowles
						["sourceQuest"] = 11188,	-- Two Wrongs...
						["qg"] = 23749,	-- Captain Adams
						["coord"] = { 28.8, 44.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11221, {	-- Reports from the Field
						["sourceQuest"] = 11270,	-- War is Hell
						["qg"] = 23780,	-- High Executor Anselm
						["coord"] = { 78.6, 31.2, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Listen to Razael's Report
								["provider"] = { "n", 23998 },	-- Deathstalker Razael
							}),
							objective(2, {	-- 0/1 Listen to Lyana's Report
								["provider"] = { "n", 23778 },	-- Dark Ranger Lyana
							}),
						},
					}),
					q(11244, {	-- Rescuing the Rescuers
						["sourceQuest"] = 11243,	-- If Valgarde Falls...
						["qg"] = 23546,	-- Vice Admiral Keller
						["coord"] = { 60.4, 61.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(35809),	-- Earthspike
							i(35811),	-- Elekk-Horn Crossbow
							i(35810),	-- Pacifying Pummeler
							i(35807),	-- Bramblethorn Greatstaff
							i(35808),	-- Coldstone Cutlass
							i(35812),	-- Cragthumper
						},
					}),
					q(11572, {	-- Return to Atuik
						["sourceQuest"] = 11568,	-- A Return to Resting
						["qg"] = 23804,	-- Orfus of Kamagua
						["coord"] = { 40.2, 60.2, HOWLING_FJORD },
						["groups"] = {
							i(36871),	-- Fury of the Encroaching Storm
							i(36874),	-- Horn of the Herald
							i(36872),	-- Mender of the Oncoming Dawn
						},
					}),
					q(11278, {	-- Return to Valgarde
						["sourceQuest"] = 11300,	-- Stunning Defeat at the Ring
						["qg"] = 24150,	-- Glorenfeld
						["coords"] = {
							{ 56.6, 49.5, HOWLING_FJORD },	-- Catacombs entrance
							{ 56.9, 53.7, HOWLING_FJORD },	-- NPC
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(35820),	-- Deacon's Wraps
							i(35818),	-- Stretch-Hide Spaulders
							i(35821),	-- Streamlined Stompers
							i(35822),	-- Scavenged Tirasian Plate
						},
					}),
					q(11296, {	-- Rivenwood Captives
						["qg"] = 24209,	-- Longrunner Skycloud
						["coord"] = { 31.2, 24.3, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(35896),	-- Icestriker Bands
							i(35898),	-- Reinforced Tuskhide Hauberk
							i(35899),	-- Bloodbinder's Girdle
							i(35897),	-- Ice-Crusted Cape
						},
					}),
					q(11182, {	-- Root Causes
						["qg"] = 23870,	-- Ember Clutch Ancient
						["coord"] = { 41.2, 49.4, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/5 Dragonflayer Handler slain
								["provider"] = { "n", 23871 },	-- Dragonflayer Handler
							}),
							objective(2, {	-- 0/1 Skeld Drakeson slain
								["provider"] = { "n", 23940 },	-- Skeld Drakeson
							}),
							i(35921),	-- Flint-Reinforced Spaulders
							i(35922),	-- Dark Iron Signet
							i(35923),	-- Cold-Iron Armbands
							i(35924),	-- Arcanum-Bound Bracers
						},
					}),
					q(11154, {	-- Scare the Guano Out of Them!
						["qg"] = 24227,	-- Engineer Feknut
						["coord"] = { 30.1, 28.8, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Darkclaw Guano
								["providers"] = {
									{ "i", 33084 },	-- Darkclaw Guano
									{ "o", 186325 },	-- Darkclaw Guano
								},
							}),
							i(35896),	-- Icestriker Bands
							i(35898),	-- Reinforced Tuskhide Hauberk
							i(35899),	-- Bloodbinder's Girdle
							i(35897),	-- Ice-Crusted Cape
						},
					}),
					q(11510, {	-- "Scoodles"
						["sourceQuest"] = 11509,	-- Street "Cred"
						["qg"] = 24539,	-- "Silvermoon" Harry
						["coord"] = { 35.0, 80.9, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/1 Sin'dorei Scrying Crystal
								["provider"] = { "i", 34235 },	-- Sin'dorei Scrying Crystal
								["cr"] = 24899,	-- "Scoodles"
							}),
						},
					}),
					q(11176, {	-- See to the Operations
						["sourceQuest"] = 11175,	-- My Daughter
						["qg"] = 23891,	-- Overseer Irena Stonemantle
						["coord"] = { 30.2, 28.6, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11319, {	-- Seeds of the Blacksouled Keepers
						["sourceQuests"] = {
							11314,	-- The Fallen Sisters
							11315,	-- Wild Vines
						},
						["qg"] = 24117,	-- Lurielle
						["coord"] = { 61.4, 22.8, HOWLING_FJORD },
						["groups"] = {
							i(39074),	-- Drape of Distilled Hatred
							i(39072),	-- Blacksoul Protector's Hauberk
							i(39073),	-- Root of the Everlasting
						},
					}),
					q(11224, {	-- Send Them Packing
						["sourceQuest"] = 11188,	-- Two Wrongs...
						["qg"] = 23978,	-- Explorer Abigail
						["coord"] = { 31.6, 41.4, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11424, {	-- Shield Hill
						["qg"] = 24252,	-- "Hacksaw" Jenny
						["coord"] = { 53.6, 65.2, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(35893),	-- Coldstone-Inlaid Waistguard
							i(35895),	-- Emeraldscale Pauldrons
							i(35892),	-- Flamebinder Handwraps
							i(35894),	-- Purestrike Bracers
							--
							i(34043),	-- Ancient Vrykul Bone (QI!)
						},
					}),
					q(11155, {	-- Shoveltusk Soup Again?
						["qg"] = 23773,	-- Chef Kettleblack
						["coord"] = { 31.1, 40.8, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/6 Shoveltusk Meat
								["provider"] = { "i", 33120 },	-- Shoveltusk Meat
								["crs"] = {
									23690,	-- Shoveltusk
									23691,	-- Shoveltusk Stag
									24791,	-- Shoveltusk Calf
								},
							}),
							i(34125),	-- Shoveltusk Soup
						},
					}),
					q(11256, {	-- Skorn Must Fall!
						["sourceQuest"] = 11281,	-- Mimicking Nature's Call -- TODO:  verify
						["qg"] = 24129,	-- Chieftain Ashtotem
						["coord"] = { 48.0, 10.7, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = { i(33340) },	-- Winterhoof Emblem (QI!)
					}),
					q(11432, {	-- Sleeping Giants (A)
						["sourceQuest"] = 11231,	-- Of Keys and Cages
						["qg"] = 23888,	-- Mage-Lieutenant Malister
						["coord"] = { 28.9, 44.2, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Dormant Vrykul slain
								["provider"] = { "n", 24669 },	-- Dormant Vrykul
							}),
						},
					}),
					q(11433, {	-- Sleeping Giants (H)
						["sourceQuest"] = 11265,	-- Of Keys and Cages
						["qg"] = 24127,	-- Ahota Whitefrost
						["coord"] = { 48.3, 11.0, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Dormant Vrykul slain
								["provider"] = { "n", 24669 },	-- Dormant Vrykul
							}),
						},
					}),
					q(11253, {	-- Sniff Out the Enemy
						["sourceQuest"] = 11227,	-- Let Them Eat Crow
						["qg"] = 23938,	-- Pontius
						["coord"] = { 79.1, 31.2, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(11529, {	-- Sorlof's Booty
						["sourceQuest"] = 11527,	-- Mutiny on the Mercy
						["qg"] = 24910,	-- Captain Ellis
						["coords"] = {
							{ 39.7, 74.4, HOWLING_FJORD },
							{ 38.9, 72.1, HOWLING_FJORD },
							{ 38.4, 69.2, HOWLING_FJORD },
							{ 37.0, 67.1, HOWLING_FJORD },
							{ 33.8, 70.1, HOWLING_FJORD },
							{ 35.3, 74.7, HOWLING_FJORD },
							{ 37.2, 74.8, HOWLING_FJORD },
							{ 38.0, 77.5, HOWLING_FJORD },
							{ 40.8, 81.2, HOWLING_FJORD },
							{ 43.6, 83.3, HOWLING_FJORD },
							{ 45.9, 80.1, HOWLING_FJORD },
							{ 43.2, 77.7, HOWLING_FJORD },
							{ 41.1, 76.2, HOWLING_FJORD },
						},
						["groups"] = {
							objective(1, {	-- 0/1 Sorlof's Booty
								["providers"] = {
									{ "i", 34468 },	-- Sorlof's Booty
									{ "o", 187238 },	-- Sorlof's Booty
								},
							}),
						},
					}),
					q(11316, {	-- Spawn of the Twisted Glade
						["sourceQuests"] = {
							11314,	-- The Fallen Sisters
							11315,	-- Wild Vines
						},
						["qg"] = 24117,	-- Lurielle
						["coord"] = { 61.4, 22.8, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/10 Thornvine Creeper slain
								["provider"] = { "n", 23874 },	-- Thornvine Creeper
							}),
						},
					}),
					q(11168, {	-- Spiking the Mix
						["sourceQuest"] = 11167,	-- The New Plague
						["qg"] = 24126,	-- Apothecary Lysander
						["coord"] = { 78.5, 28.9, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/3 Giant Toxin Gland
								["provider"] = { "i", 33337 },	-- Giant Toxin Gland
								["cr"] = 23929,	-- Giant Tidecrawler
							}),
						},
					}),
					q(11313, {	-- Spirits of the Ice
						["sourceQuests"] = {
							11302,	-- The Enigmatic Frost Nymphs (A)
							11312,	-- The Frozen Glade (H)
						},
						["qg"] = 24117,	-- Lurielle
						["coord"] = { 61.4, 22.8, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/15 Icy Core
								["provider"] = { "i", 33605 },	-- Icy Core
								["cr"] = 23919,	-- Ice Elemental
							}),
						},
					}),
					q(11391, {	-- Steel Gate Patrol
						["sourceQuest"] = 11390,	-- I've Got a Flying Machine!
						["qg"] = 24399,	-- Steel Gate Chief Archaeologist
						["coord"] = { 30.8, 28.5, HOWLING_FJORD },
						["maxReputation"] = { FACTION_EXPLORERS_LEAGUE, EXALTED },	-- Explorer's League, Exalted.
						["races"] = ALLIANCE_ONLY,
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/8 Gjalerbron Gargoyle slain
								["provider"] = { "n", 24440 },	-- Gjalerbron Gargoyle
							}),
						},
					}),
					q(11249, {	-- Stop the Ascension! (A) -- TODO: Verify if this drops all the time
						["provider"] = { "i", 33314 },	-- Vrykul Scroll of Ascension
						["races"] = ALLIANCE_ONLY,
						["crs"] = {
							23662,	-- Winterskorn Woodsman
							23661,	-- Winterskorn Tribesman
							23664,	-- Winterskorn Warrior
							23663,	-- Winterskorn Shield-Maiden
							23665,	-- Winterskorn Raider
							23666,	-- Winterskorn Berserker
							23670,	-- Winterskorn Elder
							23667,	-- Winterskorn Rune-Seer
							23668,	-- Winterskorn Rune-Caster
							23669,	-- Winterskorn Oracle
						},
						["groups"] = {
							objective(1, {	-- 0/1 Halfdan the Ice-Hearted slain
								["provider"] = { "n", 23671 },	-- Halfdan the Ice-Hearted
							}),
							i(35900),	-- Supple Doeskin Moccasins
							i(35902),	-- Shock-Bound Spaulders
							i(35903),	-- Onyx Grips
							i(35901),	-- Rejuvenating Cord
						},
					}),
					q(11260, {	-- Stop the Ascension! (H) -- TODO: Verify if this drops all the time
						["provider"] = { "i", 33345 },	-- Vrykul Scroll of Ascension
						["races"] = HORDE_ONLY,
						["crs"] = {
							23662,	-- Winterskorn Woodsman
							23661,	-- Winterskorn Tribesman
							23664,	-- Winterskorn Warrior
							23663,	-- Winterskorn Shield-Maiden
							23665,	-- Winterskorn Raider
							23666,	-- Winterskorn Berserker
							23670,	-- Winterskorn Elder
							23667,	-- Winterskorn Rune-Seer
							23668,	-- Winterskorn Rune-Caster
							23669,	-- Winterskorn Oracle
						},
						["groups"] = {
							objective(1, {	-- 0/1 Halfdan the Ice-Hearted slain
								["provider"] = { "n", 23671 },	-- Halfdan the Ice-Hearted
							}),
							i(35900),	-- Supple Doeskin Moccasins
							i(35902),	-- Shock-Bound Spaulders
							i(35903),	-- Onyx Grips
							i(35901),	-- Rejuvenating Cord
						},
					}),
					q(11509, {	-- Street "Cred"
						["sourceQuest"] = 11508,	-- Grezzix Spindlesnap
						["qg"] = 24643,	-- Grezzix Spindlesnap
						["coord"] = { 23.0, 62.6, HOWLING_FJORD },
					}),
					q(11300, {	-- Stunning Defeat at the Ring
						["sourceQuest"] = 11299,	-- The Ring of Judgment
						["qg"] = 24151,	-- Daegarn
						["coords"] = {
							{ 56.6, 49.5, HOWLING_FJORD },	-- Catacombs entrance
							{ 55.6, 57.3, HOWLING_FJORD },	-- NPC
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Ancient Cipher
								["providers"] = {
									{ "i", 33545 },	-- Ancient Cipher
									{ "o", 186640 },	-- Ancient Cipher
								},
							}),
						},
					}),
					q(11311, {	-- Suppressing the Elements
						["qg"] = 24256,	-- Wind Tamer Kagan
						["coord"] = { 48.9, 11.9, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/8 Mountain Elementals slain
								["providers"] = {
									{ "n", 24228},	-- Iceshard Elemental
									{ "n", 24229},	-- Howling Cyclone
								},
							}),
						},
					}),
					q(11469, {	-- Swabbin' Soap
						["sourceQuest"] = 11509,	-- Street "Cred" -- TODO:  verify
						["qg"] = 24784,	-- Scuttle Frostprow
						["coord"] = { 37.7, 79.5, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/1 Big Roy's Blubber
								["provider"] = { "i", 34122 },	-- Big Roy's Blubber
								["cr"] = 24785,	-- Big Roy
							}),
						},
					}),
					q(11170, {	-- Test at Sea
						["sourceQuest"] = 11168,	-- Spiking the Mix
						["qg"] = 24126,	-- Apothecary Lysander
						["coord"] = { 78.5, 28.9, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(35842),	-- Azure Chain Hauberk
							i(35841),	-- Frost-Trimmed Gauntlets
							i(35843),	-- Ramshorn-Inlaid Shoulders
							i(35839),	-- Runed Clamshell Choker
							--
							i(33349),	-- Plague Vials (QI!)
						},
					}),
					q(11303, {	-- The Ambush
						["sourceQuests"] = {
							11283,	-- Baleheim Bodycount
							11285,	-- Baleheim Must Burn!
						},
						["qg"] = 24027,	-- Sergeant Gorth
						["coord"] = { 71.1, 39.0, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(11567, {	-- The Ancient Armor of the Kvaldir
						["sourceQuest"] = 11510,	-- "Scoodles"
						["qg"] = 24539,	-- "Silvermoon" Harry
						["coord"] = { 35.0, 80.9, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/1 The Ancient Armor of the Kvaldir
								["providers"] = {
									{ "i", 34239 },	-- The Ancient Armor of the Kvaldir
									{ "o", 187381 },	-- The Ancient Armor of the Kvaldir
								},
							}),
						},
					}),
					q(11286, {	-- The Artifacts of Steel Gate
						["sourceQuest"] = 11287,	-- Find Sage Mistwalker
						["qg"] = 24186,	-- Sage Mistwalker
						["coord"] = { 31.1, 24.5, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Steel Gate Artifact
								["providers"] = {
									{ "i", 33109 },	-- Steel Gate Artifact
									{ "o", 186397 },	-- Steel Gate Artifact
								},
								["cr"] = 24074,	-- Surveyor
							}),
							i(35912),	-- Crackling Cloak
							i(35911),	-- Unsparing Band
							i(35936),	-- Worg Tooth Talisman
						},
					}),
					q(11346, {	-- The Book of Runes (A)
						["sourceQuest"] = 11329,	-- I'll Try Anything!
						["qg"] = 24328,	-- Prospector Belvar
						["coord"] = { 62.2, 17.2, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11350, {	-- The Book of Runes (H)
						["sourceQuest"] = 11275,	-- Making the Horn
						["qg"] = 24362,	-- Longrunner Pembe
						["coord"] = { 49.2, 12.2, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(11322, {	-- The Cleansing (A)
						["qg"] = 24273,	-- Watcher Moonleaf
						["coord"] = { 30.0, 28.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11317, {	-- The Cleansing (H)
						["sourceQuest"] = 11286,	-- The Artifacts of Steel Gate
						["qg"] = 24186,	-- Sage Mistwalker
						["coord"] = { 31.1, 24.5, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(11157, {	-- The Clutches of Evil
						["qg"] = 23749,	-- Captain Adams
						["coord"] = { 28.8, 44.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/15 Proto-Drake Egg destroyed
								["provider"] = { "n", 23777 },	-- Proto-Drake Egg
							}),
							objective(2, {	-- 0/15 Proto-Whelp slain
								["provider"] = { "n", 23688 },	-- Proto-Whelp
							}),
						},
					}),
					q(11261, {	-- The Conqueror of Skorn!
						["sourceQuests"] = {
							11258,	-- Burn Skorn, Burn!
							11257,	-- Gruesome, But Necessary
							11259,	-- Towers of Certain Doom
						},
						["qg"] = 24130,	-- Winterhoof Brave
						["coord"] = { 44.7, 29.9, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(35909),	-- Sun-Fired Striders
							i(35910),	-- Shaleground Bracers
							i(35904),	-- Puissance-Infused Pendant
							i(35905),	-- Vinewoven Tunic
						},
					}),
					q(11504, {	-- The Dead Rise!
						["sourceQuest"] = 11573,	-- Orfus of Kamagua
						["qg"] = 23804,	-- Orfus of Kamagua
						["coord"] = { 40.2, 60.2, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/1 Fengir's Clue
								["providers"] = {
									{ "i", 34222 },	-- Fengir's Clue
									{ "o", 187022 },	-- Mound of Debris
								},
							}),
							objective(2, {	-- 0/1 Rodin's Clue
								["providers"] = {
									{ "i", 34223 },	-- Rodin's Clue
									{ "o", 187023 },	-- Unlocked Chest
								},
							}),
							objective(3, {	-- 0/1 Isuldof's Clue
								["providers"] = {
									{ "i", 34224 },	-- Isuldof's Clue
									{ "o", 187026 },	-- Long Tail Feather
								},
							}),
							objective(4, {	-- 0/1 Windan's Clue
								["providers"] = {
									{ "i", 34225 },	-- Windan's Clue
									{ "o", 187027 },	-- Cannonball
								},
							}),
						},
					}),
					q(11495, {	-- The Delicate Sound of Thunder
						["sourceQuest"] = 11491,	-- Iron Rune Constructs and You: The Bluff
						["qg"] = 24807,	-- Walt
						["coord"] = { 75.0, 65.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(35851),	-- Acid-Etched Knuckles
							i(35849),	-- Featherweight Claymore
							i(35852),	-- Fullered Coldsteel Dagger
							i(35856),	-- Hair-Trigger Blunderbuss
						},
					}),
					q(11277, {	-- The Depths of Depravity
						["description"] = "Inside the |cFFFFD700Utgarde Catacombs|r.",
						["sourceQuest"] = 11276,	-- And Then There Were Two...
						["qg"] = 24150,	-- Glorenfeld
						["coords"] = {
							{ 56.6, 49.5, HOWLING_FJORD },	-- Catacombs entrance
							{ 56.9, 53.7, HOWLING_FJORD },	-- NPC
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Wyrmskull Tablet
								["providers"] = {
									{ "i", 33355 },	-- Wyrmskull Tablet
									{ "o", 186587 },	-- Wyrmskull Tablet
									{ "o", 186595 },	-- Wyrmskull Tablet
								},
							}),
						},
					}),
					q(11254, {	-- The Dragonskin Map
						["sourceQuest"] = 11253,	-- Sniff Out the Enemy
						["provider"] = { "o", 186585 },	-- Dragonskin Scroll
						["coord"] = { 75.9, 19.7, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = { i(33411) },	-- Dragonskin Map (QI!)
					}),
					q(11343, {	-- The Echo of Ymiron
						["sourceQuest"] = 11333,	-- Into the World of Spirits
						["qg"] = 23975,	-- Thoralius the Wise
						["coord"] = { 59.8, 61.4, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11423, {	-- The Enemy's Legacy
						["qg"] = 24548,	-- Scribe Seguine
						["coord"] = { 67.3, 60.3, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Saga of the Twins
								["providers"] = {
									{ "i", 34040 },	-- Saga of the Twins
									{ "o", 186831 },	-- Saga of the Twins
								},
							}),
							objective(2, {	-- 0/1 Saga of the Val'kyr
								["providers"] = {
									{ "i", 34042 },	-- Saga of the Val'kyr
									{ "o", 186830 },	-- Saga of the Val'kyr
								},
							}),
							objective(3, {	-- 0/1 Saga of the Winter Curse
								["providers"] = {
									{ "i", 34041 },	-- Saga of the Winter Curse
									{ "o", 186832 },	-- Saga of the Winter Curse
								},
							}),
						},
					}),
					q(11302, {	-- The Enigmatic Frost Nymphs
						["sourceQuest"] = 11329,	-- I'll Try Anything!
						["qg"] = 24282,	-- Lieutenant Maeve
						["coord"] = { 61.8, 17.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11448, {	-- The Explorers' League Outpost
						["sourceQuests"] = {
							11278,	-- Return to Valgarde
							11478,	-- Outpost Over Yonder...
						},
						["qg"] = 23548,	-- Beltrand McSorf
						["coord"] = { 60.1, 61.0, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11314, {	-- The Fallen Sisters
						["sourceQuest"] = 11313,	-- Spirits of the Ice
						["qg"] = 24117,	-- Lurielle
						["coord"] = { 61.4, 22.8, HOWLING_FJORD },
						["groups"] = { i(33606) },	-- Lurielle's Pendant (QI!)
					}),
					q(11455, {	-- The Fragrance of Money
						["sourceQuest"] = 11434,	-- Forgotten Treasure
						["qg"] = 24537,	-- Handsome Terry
						["coord"] = { 35.6, 80.2, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/4 Bear Musk
								["provider"] = { "i", 34084 },	-- Bear Musk
								["cr"] = 24633,	-- Rabid Brown Bear
							}),
						},
					}),
					q(11238, {	-- The Frost Wyrm and its Master (A)
						["sourceQuest"] = 11237,	-- Gjalerbron Attack Plans
						["qg"] = 23888,	-- Mage-Lieutenant Malister
						["coord"] = { 28.9, 44.2, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Wyrmcaller Vile slain
								["provider"] = { "n", 24029 },	-- Wyrmcaller Vile
							}),
							objective(2, {	-- 0/1 Glacion slain
								["provider"] = { "n", 24019 },	-- Glacion
							}),
							objective(3, {	-- 0/1 Wyrmcaller's Horn
								["provider"] = { "i", 33282 },	-- Wyrmcaller's Horn
								["cr"] = 24029,	-- Wyrmcaller Vile
							}),
							i(35880),	-- Earthwell Footwraps
							i(35882),	-- Magispike Helm
							i(35883),	-- Silversteel Gauntlets
							i(35881),	-- Lost Vrykul Signet
						},
					}),
					q(11267, {	-- The Frost Wyrm and its Master (H)
						["sourceQuest"] = 11266,	-- Gjalerbron Attack Plans
						["qg"] = 24032,	-- Celea Frozenmane
						["coord"] = { 49.5, 11.5, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Wyrmcaller Vile slain
								["provider"] = { "n", 24029 },	-- Wyrmcaller Vile
							}),
							objective(2, {	-- 0/1 Glacion slain
								["provider"] = { "n", 24019 },	-- Glacion
							}),
							objective(3, {	-- 0/1 Wyrmcaller's Horn
								["provider"] = { "i", 33282 },	-- Wyrmcaller's Horn
								["cr"] = 24029,	-- Wyrmcaller Vile
							}),
							i(35880),	-- Earthwell Footwraps
							i(35882),	-- Magispike Helm
							i(35883),	-- Silversteel Gauntlets
							i(35881),	-- Lost Vrykul Signet
						},
					}),
					q(11312, {	-- The Frozen Glade
						["sourceQuest"] = 11275,	-- Making the Horn
						["qg"] = 24123,	-- Nokoma Snowseer
						["coord"] = { 49.3, 12.0, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11512, {	-- The Frozen Heart of Isuldof
						["sourceQuest"] = 11510,	-- "Scoodles"
						["qg"] = 24539,	-- "Silvermoon" Harry
						["coord"] = { 35.0, 80.9, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/1 The Frozen Heart of Isuldof
								["providers"] = {
									{ "i", 34237 },	-- The Frozen Heart of Isuldof
									{ "o", 187032 },	-- The Frozen Heart of Isuldof
								},
							}),
						},
					}),
					q(11273, {	-- The Human League
						["sourceQuest"] = 11244,	-- Rescuing the Rescuers
						["qg"] = 23548,	-- Beltrand McSorf
						["coord"] = { 60.1, 61.0, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11471, {	-- The Jig is Up
						["sourceQuest"] = 11480,	-- Meet Number Two
						["qg"] = 24741,	-- Annie Bonn
						["coord"] = { 35.4, 79.4, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/1 Jonah Sterling's Spyglass
								["provider"] = { "i", 34128 },	-- Jonah Sterling's Spyglass
								["cr"] = 24547,	-- Hozzer
							}),
							i(38257),	-- Strike of the Seas
							i(38258),	-- Sailor's Knotted Charm
							i(38259),	-- First Mate's Pocketwatch
						},
					}),
					q(11358, {	-- The Lodestone (A)
						["sourceQuest"] = 11355,	-- March of the Giants
						["qg"] = 24376,	-- Researcher Aderan
						["coord"] = { 62.5, 16.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11366, {	-- The Lodestone (H)
						["sourceQuest"] = 11365,	-- March of the Giants
						["qg"] = 24390,	-- Sage Edan
						["coord"] = { 48.0, 10.4, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(11519, {	-- The Lost Shield of the Aesirites
						["sourceQuest"] = 11510,	-- "Scoodles"
						["qg"] = 24539,	-- "Silvermoon" Harry
						["coord"] = { 35.0, 80.9, HOWLING_FJORD },
					}),
					q(11167, {	-- The New Plague
						-- #if AFTER 7.3.5
						["sourceQuest"] = 49533,	-- Warchief's Command: Howling Fjord!
						-- #endif
						["qg"] = 24126,	-- Apothecary Lysander
						["coord"] = { 78.5, 28.9, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Intact Plague Container
								["providers"] = {
									{ "i", 33099 },	-- Intact Plague Container
									{ "o", 186390 },	-- Plague Container
								},
							}),
							i(35832),	-- Blauvelt's Special Occasion Gloves
							i(35834),	-- Nimblefinger Scaled Gloves
							i(35835),	-- Antique Reinforced Legguards
							i(35833),	-- Imperious Worghide Cap
						},
					}),
					q(11295, {	-- The Offensive Begins
						["sourceQuest"] = 11254,	-- The Dragonskin Map
						["qg"] = 23780,	-- High Executor Anselm
						["coord"] = { 78.6, 31.2, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(11410, {	-- The One That Got Away
						["sourceQuest"] = 11329,	-- I'll Try Anything!
						["qg"] = 24056,	-- Christopher Sloan
						["coord"] = { 60.2, 18.6, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Frostfin slain
								["provider"] = { "n", 24500 },	-- Frostfin
							}),
						},
					}),
					q(11420, {	-- The Path to Payback
						["sourceQuest"] = 11244,	-- Rescuing the Rescuers
						["qg"] = 23728,	-- Guard Captain Zorek
						["coord"] = { 60.1, 62.4, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Harpoon Operation Manual
								["providers"] = {
									{ "i", 34031 },	-- Harpoon Operation Manual
									{ "o", 186828 },	-- Harpoon Operation Manual
								},
							}),
						},
					}),
					q(11465, {	-- The Ransacked Caravan
						["sourceQuest"] = 11460,	-- Trust is Earned
						["qg"] = 24750,	-- Hidalgo the Master Falconer
						["coord"] = { 75.2, 64.9, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11299, {	-- The Ring of Judgment
						["description"] = "Inside the |cFFFFD700Utgarde Catacombs|r.",
						["sourceQuest"] = 11277,	-- The Depths of Depravity
						["qg"] = 24150,	-- Glorenfeld
						["coords"] = {
							{ 56.6, 49.5, HOWLING_FJORD },	-- Catacombs entrance
							{ 56.9, 53.7, HOWLING_FJORD },	-- NPC
						},
						["races"] = ALLIANCE_ONLY,
					}),
					q(11348, {	-- The Rune of Command (A)
						["sourceQuest"] = 11349,	-- Mastering the Runes
						["qg"] = 24328,	-- Prospector Belvar
						["coord"] = { 62.2, 17.2, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11352, {	-- The Rune of Command (H)
						["sourceQuest"] = 11351,	-- Mastering the Runes
						["qg"] = 24362,	-- Longrunner Pembe
						["coord"] = { 49.2, 12.2, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(11530, {	-- The Shield of the Aesirites
						["sourceQuest"] = 11529,	-- Sorlof's Booty
						["qg"] = 24910,	-- Captain Ellis
						["coords"] = {
							{ 39.7, 74.4, HOWLING_FJORD },
							{ 38.9, 72.1, HOWLING_FJORD },
							{ 38.4, 69.2, HOWLING_FJORD },
							{ 37.0, 67.1, HOWLING_FJORD },
							{ 33.8, 70.1, HOWLING_FJORD },
							{ 35.3, 74.7, HOWLING_FJORD },
							{ 37.2, 74.8, HOWLING_FJORD },
							{ 38.0, 77.5, HOWLING_FJORD },
							{ 40.8, 81.2, HOWLING_FJORD },
							{ 43.6, 83.3, HOWLING_FJORD },
							{ 45.9, 80.1, HOWLING_FJORD },
							{ 43.2, 77.7, HOWLING_FJORD },
							{ 41.1, 76.2, HOWLING_FJORD },
						},
					}),
					q(11288, {	-- The Shining Light
						["description"] = "Inside the |cFFFFD700Utgarde Catacombs|r. You need to pick up |cFFFFD700The Path to Payback|r first to see this quest.",
						["sourceQuest"] = 11244,	-- Rescuing the Rescuers
						["qg"] = 24189,	-- Ares the Oathbound
						["coords"] = {
							{ 56.6, 49.5, HOWLING_FJORD },	-- Catacombs entrance
							{ 59.3, 55.4, HOWLING_FJORD },	-- NPC
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Sacred Artifact
								["providers"] = {
									{ "i", 33485 },	-- Sacred Artifact
									{ "o", 186607 },	-- Sacred Artifact
								},
							}),
							i(35829),	-- Coldspike Longbow
							i(35823),	-- Ice-Rimed Dagger
							i(35827),	-- Regal Sceptre
							i(35824),	-- Stoneblade Slicer
							i(35826),	-- Whelpling-Skull Zapper
							i(35830),	-- Worn Vrykul Smasher
						},
					}),
					q(11452, {	-- The Slumbering King (A)
						["provider"] = { "i", 34090 },	-- Mezhen's Writings
						["races"] = ALLIANCE_ONLY,
						["crs"] = { 24018 },	-- Necro Overlord Mezhen
						["groups"] = {
							objective(1, {	-- 0/1 Queen Angerboda slain
								["provider"] = { "n", 24023 },	-- Queen Angerboda
							}),
						},
					}),
					q(11453, {	-- The Slumbering King (H)
						["provider"] = { "i", 34083 },	-- Awakening Rod
						["races"] = HORDE_ONLY,
						["crs"] = { 24018 },	-- Necro Overlord Mezhen
						["groups"] = {
							objective(1, {	-- 0/1 Queen Angerboda slain
								["provider"] = { "n", 24023 },	-- Queen Angerboda
							}),
						},
					}),
					q(11511, {	-- The Staff of Storm's Fury
						["sourceQuest"] = 11510,	-- "Scoodles"
						["qg"] = 24539,	-- "Silvermoon" Harry
						["coord"] = { 35.0, 80.9, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/1 The Staff of Storm's Fury
								["providers"] = {
									{ "i", 34236 },	-- The Staff of Storm's Fury
									{ "o", 187033 },	-- The Staff of Storm's Fury
								},
							}),
						},
					}),
					q(11268, {	-- The Walking Dead
						["sourceQuest"] = 11265,	-- Of Keys and Cages
						["qg"] = 24135,	-- Greatmother Ankha
						["coord"] = { 48.1, 10.6, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/10 Deathless Watcher slain
								["provider"] = { "n", 24013 },	-- Deathless Watcher
							}),
							objective(2, {	-- 0/4 Fearsome Horror slain
								["provider"] = { "n", 24073 },	-- Fearsome Horror
							}),
							objective(3, {	-- 0/2 Putrid Wight slain
								["provider"] = { "n", 23992 },	-- Putrid Wight
							}),
							i(35884),	-- Regal Pantaloons
							i(35887),	-- Loam-Stained Greaves
							i(35885),	-- Tribal Chestguard
							i(35886),	-- Worgtooth Pendant
						},
					}),
					q(11472, {	-- The Way to His Heart...
						["sourceQuest"] = 11469,	-- Swabbin' Soap
						["qg"] = 24810,	-- Anuniaq
						["coord"] = { 24.6, 58.8, HOWLING_FJORD },
						["maxReputation"] = { FACTION_THE_KALUAK, EXALTED },	-- The Kalu'ak, Exalted.
						["isDaily"] = true,
					}),
					q(11229, {	-- The Windrunner Fleet
						["sourceQuest"] = 11221,	-- Reports from the Field
						["qg"] = 23780,	-- High Executor Anselm
						["coord"] = { 78.6, 31.2, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(11284, {	-- The Yeti Next Door
						["qg"] = 24176,	-- Foreman Colbey
						["coord"] = { 60.1, 15.6, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Shatterhorn slain
								["provider"] = { "n", 24178 },	-- Shatterhorn
							}),
							i(35937),	-- Braxley's Backyard Moonshine
							i(35929),	-- Gholamcloth Wrap
							i(35931),	-- Appointed Scalemail Leggings
							i(35930),	-- Inscribed Worghide Treads
						},
					}),
					q(11470, {	-- There Exists No Honor Among Birds
						["sourceQuest"] = 11468,	-- Falcon Versus Hawk
						["qg"] = 24750,	-- Hidalgo the Master Falconer
						["coord"] = { 75.2, 64.9, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(35860),	-- Flexible Leather Footwraps
							i(35859),	-- Fire-Purifying Tunic
							i(35861),	-- Inescapable Girdle
							i(35862),	-- Light-Bound Chestguard
						},
					}),
					q(11308, {	-- Time for Cleanup
						["sourceQuest"] = 11307,	-- Field Test
						["qg"] = 24251,	-- Chief Plaguebringer Harris
						["coord"] = { 53.5, 66.3, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(12182, {	-- To Venomspite!
						["sourceQuest"] = 12181,	-- Give it a Name
						["qg"] = 24155,	-- Tobias Sarkhoff
						["coord"] = { 52.0, 67.3, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["groups"] = { i(37027) },	-- Blight Specimen (QI!)
					}),
					q(11291, {	-- To Westguard Keep!
						["sourceQuest"] = 11290,	-- Dragonflayer Battle Plans
						["qg"] = 23546,	-- Vice Admiral Keller
						["coord"] = { 60.4, 61.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11475, {	-- Tools to Get the Job Done
						["sourceQuest"] = 11474,	-- Problems on the High Bluff
						["qg"] = 24807,	-- Walt
						["coord"] = { 75.0, 65.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Building Tools
								["providers"] = {
									{ "i", 34131 },	-- Building Tools
									{ "o", 186950 },	-- Building Tools
								},
							}),
						},
					}),
					q(11245, {	-- Towers of Certain Doom (A)
						["sourceQuest"] = 11248,	-- Operation: Skornful Wrath
						["qg"] = 24060,	-- Westguard Sergeant
						["coord"] = { 44.8, 31.4, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11259, {	-- Towers of Certain Doom (H)
						["sourceQuest"] = 11256,	-- Skorn Must Fall!
						["qg"] = 24130,	-- Winterhoof Brave
						["coord"] = { 44.7, 29.9, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
					}),
					q(11241, {	-- Trail of Fire
						["sourceQuest"] = 11232,	-- Guide Our Sights
						["qg"] = 23784,	-- Apothecary Hanes
						["coord"] = { 83.2, 43.1, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(35829),	-- Coldspike Longbow
							i(35823),	-- Ice-Rimed Dagger
							i(35827),	-- Regal Sceptre
							i(35824),	-- Stoneblade Slicer
							i(35826),	-- Whelpling-Skull Zapper
							i(35830),	-- Worn Vrykul Smasher
							--
							i(33335),	-- Cannoneer's Smoke Flare (QI!)
						},
					}),
					q(12118, {	-- Travel to Moa'ki Harbor
						["sourceQuest"] = 11458,	-- Avenge Iskaal
						["qg"] = 24810,	-- Anuniaq
						["coord"] = { 24.6, 58.8, HOWLING_FJORD },
						["isBreadcrumb"] = true,
						["groups"] = {
							i(37283),	-- Wandering Healer's Kilt
							i(37566),	-- Durable Worghide Cape
							i(37546),	-- Choker of the Northern Wind
							i(37319),	-- Grips of the Windswept Plains
						},
					}),
					q(11422, {	-- Trident of the Son
						["qg"] = 24544,	-- Old Icefin
						["coord"] = { 19.7, 22.2, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/1 Rotgill's Trident
								["provider"] = { "i", 34035 },	-- Rotgill's Trident
								["cr"] = 24546,	-- Rotgill
							}),
						},
					}),
					q(11460, {	-- Trust is Earned
						["qg"] = 24750,	-- Hidalgo the Master Falconer
						["coord"] = { 75.2, 64.9, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11188, {	-- Two Wrongs...
						["sourceQuest"] = 11187,	-- Mage-Lieutenant Malister
						["qg"] = 23888,	-- Mage-Lieutenant Malister
						["coord"] = { 28.9, 44.1, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/3 Proto-Drake slain
								["provider"] = { "n", 23689 },	-- Proto-Drake
							}),
							i(35871),	-- Indigo Robe of Replenishment
							i(35873),	-- Interlinked Chain Girdle
							i(35875),	-- Beneficent Skullcap
							i(35872),	-- Iron-Studded Leggings
						},
					}),
					q(11270, {	-- War is Hell
						["qg"] = 23780,	-- High Executor Anselm
						["coord"] = { 78.6, 31.2, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = { i(33278) },	-- Burning Torch (QI!)
					}),
					warchiefscommand(q(49533, {	-- Warchief's Command: Howling Fjord!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					})),
					q(11310, {	-- Warning: Some Assembly Required
						["sourceQuest"] = 11309,	-- Parts for the Job
						["qg"] = 24252,	-- "Hacksaw" Jenny
						["coord"] = { 53.6, 65.2, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(35860),	-- Flexible Leather Footwraps
							i(35859),	-- Fire-Purifying Tunic
							i(35861),	-- Inescapable Girdle
							i(35862),	-- Light-Bound Chestguard
							--
							i(33613),	-- Abomination Assembly Kit (QI!)
						},
					}),
					q(11418, {	-- We Call Him Steelfeather
						["sourceQuest"] = 11269,	-- Down to the Wire
						["qg"] = 24139,	-- Gil Grisert
						["coord"] = { 62.5, 16.8, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11483, {	-- We Can Rebuild It
						["sourceQuest"] = 11475,	-- Tools to Get the Job Done
						["qg"] = 24807,	-- Walt
						["coord"] = { 75.0, 65.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Large Barrel
								["providers"] = {
									{ "i", 34133 },	-- Large Barrel
									{ "o", 186954 },	-- Large Barrel
								},
							}),
							objective(2, {	-- 0/1 Industrial Strength Rope
								["providers"] = {
									{ "i", 34134 },	-- Industrial Strength Rope
									{ "o", 186955 },	-- Industrial Strength Rope
								},
							}),
						},
					}),
					q(11484, {	-- We Have the Technology
						["sourceQuest"] = 11475,	-- Tools to Get the Job Done
						["qg"] = 24807,	-- Walt
						["coord"] = { 75.0, 65.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/1 Pristine Shoveltusk Hide
								["provider"] = { "i", 34136 },	-- Pristine Shoveltusk Hide
								["crs"] = {
									23690,	-- Shoveltusk
									23691,	-- Shoveltusk Stag
									24791,	-- Shoveltusk Calf
								},
							}),
							objective(2, {	-- 0/1 Steel Ribbing
								["provider"] = { "i", 34137 },	-- Steel Ribbing
								["crs"] = {
									23653,	-- Winterskorn Spearman
									23654,	-- Dragonflayer Warrior
									23655,	-- Winterskorn Bonegrinder
									23656,	-- Dragonflayer Rune-Seer
									23657,	-- Winterskorn Skald
									24644,	-- Harpoon Master Yavus
								},
							}),
						},
					}),
					q(11298, {	-- What's in That Brew?
						["sourceQuest"] = 11297,	-- Keeping Watch on the Interlopers
						["qg"] = 24152,	-- Apothecary Malthus
						["coord"] = { 26.4, 24.5, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							objective(1, {	-- 0/5 Dwarven Keg
								["providers"] = {
									{ "i", 33541 },	-- Dwarven Keg
									{ "o", 186632 },	-- Dwarven Keg
								},
							}),
						},
					}),
					q(11393, {	-- Where is Explorer Jaren?
						["qg"] = 23891,	-- Overseer Irena Stonemantle
						["coord"] = { 30.2, 28.6, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(11315, {	-- Wild Vines
						["sourceQuest"] = 11313,	-- Spirits of the Ice
						["qg"] = 24117,	-- Lurielle
						["coord"] = { 61.4, 22.8, HOWLING_FJORD },
						["groups"] = {
							objective(1, {	-- 0/8 Scarlet Ivy slain
								["provider"] = { "n", 23763 },	-- Scarlet Ivy
							}),
						},
					}),
					q(11331, {	-- You Tell Him ...Hic!
						["sourceQuest"] = 11330,	-- Absholutely... Thish Will Work!
						["qg"] = 24283,	-- Peppy Wrongnozzle
						["coord"] = { 30.7, 41.6, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11274, {	-- Zedd's Probably Dead
						["sourceQuest"] = 11273,	-- The Human League
						["qg"] = 24122,	-- Pulroy the Archaeologist
						["coord"] = { 59.1, 54.5, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
					}),
					q(11459, {	-- Zeh'gehn Sez
						["sourceQuest"] = 11473,	-- A Traitor Among Us
						["qg"] = 24525,	-- Zeh'gehn
						["coord"] = { 35.5, 80.6, HOWLING_FJORD },
					}),
				}),
				n(RARES, {
					n(32398, {	-- King Ping
						["coords"] = {
							{ 31.2, 56.8, HOWLING_FJORD },
							{ 26.0, 64.0, HOWLING_FJORD },
							{ 30.8, 71.2, HOWLING_FJORD },
							{ 32.0, 75.8, HOWLING_FJORD },
							{ 33.2, 80.2, HOWLING_FJORD },
						},
						["groups"] = {
							i(120139, {	-- Tome of Polymorph: Penguin (CI!)
								["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
							}),
							i(44668),	-- Egg-Warming Blanket
						},
					}),
					n(32377, {	-- Perobas the Bloodthirster
						["coords"] = {
							{ 50.8, 4.0, HOWLING_FJORD },
							{ 53.5, 12.4, HOWLING_FJORD },
							{ 60.8, 20.2, HOWLING_FJORD },
							{ 68.6, 16.8, HOWLING_FJORD },
							{ 71.6, 13.6, HOWLING_FJORD },
						},
						["groups"] = {
							i(44669),	-- Worgen-Scored Shackles
						},
					}),
					n(32386, {	-- Vigdis the War Maiden
						["coords"] = {
							{ 73.4, 39.8, HOWLING_FJORD },
							{ 75.4, 42.2, HOWLING_FJORD },
							{ 75.2, 49.8, HOWLING_FJORD },
							{ 74.6, 54.2, HOWLING_FJORD },
							{ 74.8, 58.8, HOWLING_FJORD },
							{ 74.4, 60.6, HOWLING_FJORD },
							{ 72.8, 61.8, HOWLING_FJORD },
							{ 72.0, 43.6, HOWLING_FJORD },
							{ 72.8, 51.4, HOWLING_FJORD },
							{ 68.6, 48.4, HOWLING_FJORD },
							{ 70.4, 51.0, HOWLING_FJORD },
							{ 71.4, 54.0, HOWLING_FJORD },
							{ 70.6, 56.8, HOWLING_FJORD },
							{ 69.4, 58.2, HOWLING_FJORD },
						},
						["groups"] = {
							i(44670),	-- Soul-Sealed Belt
						},
					}),
				}),
				n(VENDORS, {
					n(24539, {	-- "Silvermoon" Harry
						["coord"] = { 35.0, 80.8, HOWLING_FJORD },
						["groups"] = {
							i(20983),	-- Acolyte's Dagger
							i(6097),	-- Acolyte's Shirt
							i(20978),	-- Apprentice's Staff
							i(20986),	-- Light Cloth Pants
							i(20918),	-- Unadorned Chain Leggings
						},
					}),
					n(24347, {	-- Alexis Walker
						["coord"] = { 79.2, 28.8, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(30777),	-- Aldor Heavy Belt
							i(30771),	-- Heavy Draenic Bracers
							i(30765),	-- Heavy Draenic Breastplate
							i(30775),	-- Layered Bone Shield
							i(30781),	-- Mag'hari Chain Vest
							i(30784),	-- Worn Mag'hari Gauntlets
							-- These 6 items could be symlinked to 6 more vendors
						},
					}),
					n(24341, {	-- Barnabas Frye <Trade Goods>
						["coord"] = { 79.5, 30.47, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["sym"] = {
							{ "select","itemID",
								38426,	-- Eternium Thread
							},
						},
					}),
					n(23735, {	-- Bartleby Armorfist
						["coord"] = { 59.6, 63.6, HOWLING_FJORD },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(30777),	-- Aldor Heavy Belt
							i(30771),	-- Heavy Draenic Bracers
							i(30765),	-- Heavy Draenic Breastplate
							i(30775),	-- Layered Bone Shield
							i(30781),	-- Mag'hari Chain Vest
							i(30784),	-- Worn Mag'hari Gauntlets
							-- These 6 items could be symlinked to 6 more vendors
						},
					}),
					n(27151, {	-- Deniigi <Spearcrafter>
						["coord"] = { 25.6, 57.6, HOWLING_FJORD },
						["groups"] = {
							i(39987),	-- Tuskarr Fishing Spear
							i(39995, {	-- Tuskarr Javelin
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					n(32773, bubbleDownSelf({ ["races"] = ALLIANCE_ONLY, }, {	-- Logistics Officer Brighton <Alliance Vanguard Quartermaster>
						["coord"] = { 59.6, 63.8, HOWLING_FJORD },
						["sym"] = {{"sub","common_vendor",32564}},	-- Logistics Officer Silverstone <Alliance Vanguard Quartermaster>
					})),
					n(24330, {	-- Orson Locke <Sharp Blades>
						["coord"] = { 53.8, 66.8, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(40005),	-- Forsaken Blade
							i(40004),	-- Forsaken Greatsword
							i(40006),	-- Forsaken Sword
							i(40007, {	-- Forsaken Throwing Knife
								["timeline"] = { REMOVED_5_0_4 },
							}),
						},
					}),
					n(32774, bubbleDownSelf({ ["races"] = HORDE_ONLY, }, {	-- Sebastian Crane <Horde Expedition Quartermaster>
						["coord"] = { 79.6, 30.6, HOWLING_FJORD },
						["sym"] = {{"sub","common_vendor",32565}},	-- Gara Skullcrush <Horde Expedition Quartermaster>
					})),
					n(24028, {	-- Talu Frosthoof <Bowyer>
						["coord"] = { 48.2, 11.0, HOWLING_FJORD },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(11307, {	-- Massive Longbow
								["isLimited"] = true,
							}),
							i(11308, {	-- Sylvan Shortbow
								["isLimited"] = true,
							}),
						},
					}),
					n(31916, {	-- Tanaika <Kalu'ak Quartermaster>
						["coord"] = { 25.4, 58.6, HOWLING_FJORD },
						["sym"] = {{"sub","common_vendor",32763}},	-- Sairuk <Kalu'ak Quartermaster>
					}),
					n(23802, {	-- Wink Sprinklesprankle <General Goods & Trade Supplies>
						["coord"] = { 58.4, 62.75, HOWLING_FJORD },
						["description"] = "Walks in a circle inside Valgarde Inn.",
						["races"] = ALLIANCE_ONLY,
						["sym"] = {
							{ "select","itemID",
								38426,	-- Eternium Thread
							},
						},
					}),
				}),
				n(ZONE_DROPS, {
					applyclassicphase(WRATH_PHASE_TWO, i(45003, {	-- Winter's Edge
						["coord"] = { 42.2, 19.6, HOWLING_FJORD },
						["cost"] = {{ "i", 45005, 1 }},	-- Everburning Ember
						["cr"] = 33303,	-- Maiden of Winter's Breath Lake
					})),
				}),
			},
		}),
	})),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WRATH, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_3 } }, {
	m(NORTHREND, {
		m(HOWLING_FJORD, {
			n(QUESTS, {
				q(12485),	-- Howling Fjord - triggers during "The Echo of Ymiron" when you see the RP between two vrykul in Wyrmskull Village
			}),
		}),
	}),
})));
