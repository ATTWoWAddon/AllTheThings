---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(DRUSTVAR, {
		n(ACHIEVEMENTS, {
			ach(12941, {	-- Adventurer of Drustvar
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(13083, {	-- Better, Faster, Stronger
				["description"] = "Collect and have active Witch's Boons: Excellence, Extra Pep, Rage, and Fortitude which are on a 5 minute timer and the debuff Witch's Curse: Newt. Debuffs can remove one of your buffs. Coords are possible brew spawn points.",
				["coords"] = {
					{ 25.00, 53.35, DRUSTVAR },
					{ 22.64, 54.18, DRUSTVAR },
					{ 25.36, 55.57, DRUSTVAR },
					{ 24.73, 59.22, DRUSTVAR },
					{ 21.93, 59.37, DRUSTVAR },
					{ 22.98, 49.57, DRUSTVAR },
					{ 23.04, 55.62, DRUSTVAR },
					{ 20.43, 55.32, DRUSTVAR },
					{ 27.30, 53.21, DRUSTVAR },
					{ 26.10, 54.56, DRUSTVAR },
					{ 21.94, 59.36, DRUSTVAR },
					{ 21.17, 57.45, DRUSTVAR },
					{ 19.98, 55.15, DRUSTVAR },
					{ 19.97, 54.62, DRUSTVAR },
					{ 27.13, 58.16, DRUSTVAR },
					{ 18.83, 56.81, DRUSTVAR },
					{ 24.56, 49.35, DRUSTVAR },
					{ 25.78, 50.19, DRUSTVAR },
					{ 18.98, 53.61, DRUSTVAR },
					{ 19.19, 54.19, DRUSTVAR },
					{ 23.76, 60.86, DRUSTVAR },
					{ 19.00, 58.29, DRUSTVAR },
				},
			}),
			ach(13094, {	-- Cursed Game Hunter
				crit(41794, {	-- Goats
					["crs"] = { 143929 },	-- Hexed Craghopper
					["coord"] = { 54.4, 21.8, DRUSTVAR },
				}),
				crit(42143, {	-- Deer
					["crs"] = {
						129764,	-- Hexcrazed Doe
					},
					["coord"] = { 55.8, 44.0, DRUSTVAR },
				}),
				crit(42144, {	-- Deer
					["crs"] = {
						128361,	-- Hexcrazed Greatstag
					},
					["coord"] = { 55.8, 44.0, DRUSTVAR },
				}),
				crit(42145, {	-- Deer
					["crs"] = {
						129835,	-- Gorehorn
					},
					["coord"] = { 55.8, 44.0, DRUSTVAR },
				}),
				crit(41783, {	-- Pigs
					["crs"] = {
						124170,	-- Fallhaven Pig
					},
					["coord"] = { 58.8, 34.6, DRUSTVAR },
				}),
				crit(41784, {	-- Pigs
					["crs"] = {
						124548,	-- Betsy
					},
					["coord"] = { 58.8, 34.6, DRUSTVAR },
				}),
				crit(42265, {	-- Thornclaws
					["crs"] = {
						142278,	-- Hexed Thornclaw
					},
					["coord"] = { 33.0, 63.0, DRUSTVAR },
				}),
				crit(42266, {	-- Thornclaws
					["crs"] = {
						135868,	-- Greenstalker
					},
					["coord"] = { 33.0, 63.0, DRUSTVAR },
				}),
				crit(42267, {	-- Thornclaws
					["crs"] = {
						135869,	-- Greenstalker
					},
					["coord"] = { 33.0, 63.0, DRUSTVAR },
				}),
				crit(41779, {	-- Wolves
					["crs"] = {
						132195,	-- Hexenwolf Tracker
					},
					["coord"] = { 24.6, 65.6, DRUSTVAR },
				}),
				crit(41780, {	-- Wolves
					["crs"] = {
						132194,	-- Hexenwolf Alpha
					},
					["coord"] = { 24.6, 65.6, DRUSTVAR },
				}),
				crit(41781, {	-- Wolves
					["crs"] = {
						124885,	-- Bewitched Darkmaw
					},
					["coord"] = { 24.6, 65.6, DRUSTVAR },
				}),
				crit(42146, {	-- Ravens
					["crs"] = {
						124890,	-- Ensorcelled Bonepicker
					},
					["coord"] = { 58.0, 26.8, DRUSTVAR },
				}),
				crit(42147, {	-- Ravens
					["crs"] = {
						124382,	-- Bonepicker Raven
					},
					["coord"] = { 58.0, 26.8, DRUSTVAR },
				}),
				crit(41790, {	-- Rabbits
					["crs"] = {
						129877,	-- Ensorcelled Hare
					},
					["coord"] = { 55.6, 45.2, DRUSTVAR },
				}),
				crit(41791, {	-- Rabbits
					["crs"] = {
						129899,	-- Frenzied Cottontail
					},
					["coord"] = { 55.6, 45.2, DRUSTVAR },
				}),
				crit(41792, {	-- Rabbits
					["crs"] = {
						129904,	-- Cottontail Matron
					},
					["coord"] = { 55.6, 45.2, DRUSTVAR },
				}),
				crit(41785, {	-- Falcons
					["crs"] = {
						131518,	-- Cursed Falcon
					},
					["coord"] = { 31.6, 25.0, DRUSTVAR },
				}),
				crit(41786, {	-- Falcons
					["crs"] = {
						132240,	-- Cursed Falcon
					},
					["coord"] = { 31.6, 25.0, DRUSTVAR },
				}),
				crit(41788, {	-- Falcons
					["crs"] = {
						133988,	-- Cursed Gyrfalcon
					},
					["coord"] = { 31.6, 25.0, DRUSTVAR },
				}),
				crit(41789, {	-- Falcons
					["crs"] = {
						122961,	-- Cursed Game-hawk
					},
					["coord"] = { 31.6, 25.0, DRUSTVAR },
				}),
				crit(42153, {	-- Bramblebacks
					["crs"] = {
						134753,	-- Cursed Brambleback
					},
					["coords"] = {
						{ 17.6, 57.0, DRUSTVAR },
						{ 24.6, 47.8, DRUSTVAR },
					},
				}),
				crit(42154, {	-- Bramblebacks
					["crs"] = {
						133501,	-- Hexed Brambleback
					},
					["coords"] = {
						{ 17.6, 57.0, DRUSTVAR },
						{ 24.6, 47.8, DRUSTVAR },
					},
				}),
				crit(42148, {	-- Sea Lions
					["crs"] = { 143953 },	-- Bewitched Seal
					["coord"] = { 21.8, 22.6, DRUSTVAR },
				}),
				crit(42149, {	-- Horses
					["crs"] = {
						131534,	-- Hexthralled Guardsman
					},
					["coord"] = { 32.0, 21.6, DRUSTVAR },
				}),
				crit(42150, {	-- Horses
					["crs"] = {
						134307,	-- Hexthralled Courser
					},
					["coord"] = { 32.0, 21.6, DRUSTVAR },
				}),
				crit(42151, {	-- Sharks
					["crs"] = { 143951 },	-- Hexed Dreadmaw
					["coord"] = { 22.6, 70.6, DRUSTVAR },
				}),
				crit(42152, {	-- Crabs
					["crs"] = { 143928 },	-- Cursed Snapclaw
					["coord"] = { 76.21, 65.22, DRUSTVAR },
				}),
			}),
			ach(12497, {	-- Drust Do It.
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					title(378),	-- Inquisitor <Name>
					crit(40168),	-- The Final Effigy
					crit(40169),	-- The Burden of Proof
					crit(40170),	-- An Airtight Alibi
					crit(40171),	-- The Order of Embers
					crit(40172),	-- A New Order
					crit(40173),	-- Break on Through
					crit(40174),	-- Storming the Manor
					crit(40175),	-- Clear Victory
					crit(40176),	-- Fighting With Fire
					crit(40177),	-- Stick It To 'Em!
				},
			}),
			ach(13064),		-- Drust the Facts, Ma'am (automated)
			ach(12557),	-- Explore Drustvar
			ach(13082, {	-- Everything Old Is New Again
				["races"] = ALLIANCE_ONLY,
				["description"] = "Turn in all items at 44.90, 27.41.",
				["coord"] = { 44.90, 27.41, DRUSTVAR },
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(12952, {	-- Order of Embers
				["races"] = ALLIANCE_ONLY,
			}),
			ach(13087, {	-- Sausage Sampler
				["description"] = "Can be completed as Horde by purchasing items on the AH.",
				["groups"] = {
					-- TODO: use provider instead for crits
					i(163110, {	-- Fried Boar Sausage
						["coord"] = { 26.7, 72.5, DRUSTVAR },
						["criteriaID"] = 41649,
						["crs"] = {
							136655,	-- Alisha Darkwater
						},
					}),
					i(155812, {	-- Goldshire Farms Smoked Sausage
						["coord"] = { 55.6, 34.8, DRUSTVAR },
						["criteriaID"] = 41648,
						["crs"] = {
							128467,	-- Elijah Eggleton <Sausages>
						},
					}),
					i(163781, {	-- Heartsbane Hexenwurst
						["description"] = "Recipe for cooks is dropped by Raal the Gluttonous in Waycrest Manor or buy the sausage off the AH.",
						["criteriaID"] = 41650,
					}),
					i(155811, {	-- Roland's Famous Frankfurter
						["coord"] = { 55.6, 34.8, DRUSTVAR },
						["criteriaID"] = 41651,
						["crs"] = {
							128467,	-- Elijah Eggleton <Sausages>
						},
					}),
					i(155813, {	-- Rosco Fryer's Mostly-Meat Brat
						["coord"] = { 55.6, 34.8, DRUSTVAR },
						["criteriaID"] = 41652,
						["crs"] = {
							128467,	-- Elijah Eggleton <Sausages>
						},
					}),
					i(155814, {	-- Timmy Gene Sunrise Pork
						["coord"] = { 55.6, 34.8, DRUSTVAR },
						["criteriaID"] = 41653,
						["crs"] = {
							128467,	-- Elijah Eggleton <Sausages>
						},
					}),
				},
			}),
			pvp(ach(12579)),	-- Tour of Duty: Drustvar
			ach(12995, {	-- Treasures of Drustvar
				-- TODO: move the objects to /Treasures.lua
				-- put the criteria with _objects or _quests
				-- crit(1, {	-- Web-Covered Chest
				-- 	["_quests"] = { QUESTID },
				-- }),
				-- crit(2, {	-- Merchant's Chest
				-- 	["_quests"] = { QUESTID },
				-- }),
				-- crit(3, {	-- Runebound Cache
				-- 	["_quests"] = { QUESTID },
				-- }),
				-- crit(4, {	-- Runebound Chest
				-- 	["_quests"] = { QUESTID },
				-- }),
				-- crit(5, {	-- Runebound Coffer
				-- 	["_quests"] = { QUESTID },
				-- }),
				-- crit(6, {	-- Hexed Chest
				-- 	["_quests"] = { QUESTID },
				-- }),
				-- crit(7, {	-- Bespelled Chest
				-- 	["_quests"] = { QUESTID },
				-- }),
				-- crit(8, {	-- Ensorcelled Chest
				-- 	["_quests"] = { QUESTID },
				-- }),
				-- crit(9, {	-- Enchanted Chest
				-- 	["_quests"] = { QUESTID },
				-- }),
				-- crit(10, {	-- Stolen Thornspeaker Cache
				-- 	["_quests"] = { QUESTID },
				-- }),
				o(297879, {	-- Bespelled Chest
					["description"] = "Click the inactive torches.",
					["questID"] = 53472,
					["icon"] = 1001977,
					["coord"] = { 55.60, 51.80, DRUSTVAR },
					["groups"] = {
						i(163790),	-- Spooky Incantation
					},
				}),
				o(297881, {	-- Enchanted Chest
					["description"] = "Click the inactive torches.",
					["questID"] = 53474,
					["icon"] = 1001977,
					["coord"] = { 25.50, 24.20, DRUSTVAR },
					["groups"] = {
						i(163796),	-- Wolf Pup Spine
					},
				}),
				o(297880, {	-- Ensorcelled Chest
					["questID"] = 53473,
					["icon"] = 1001977,
					["coord"] = { 67.70, 73.70, DRUSTVAR },
					["groups"] = {
						i(163791),	-- Miniature Stag Skull
					},
				}),
				o(297878, {	-- Hexed Chest
					["description"] = "Click the inactive torches.",
					["questID"] = 53471,
					["icon"] = 1001977,
					["coord"] = { 18.50, 51.30, DRUSTVAR },
					["groups"] = {
						i(163789),	-- Bundle of Wicker Stick
					},
				}),
				o(297828, {	-- Merchant's Chest
					["questID"] = 53357,
					["coord"] = { 25.69, 20.03, DRUSTVAR },
					["icon"] = 1001977,
					["description"] = "Look for the Gorging Raven flying above with the 'Holding Keys' buff, and kill it to get the key to open this chest.",
					["groups"] = {
						n(137468, {	-- Gorging Raven
							i(163710),	-- Merchant's Key
						}),
					},
					["sym"] = {{"select","itemID",
						POLISHED_PET_CHARM,
					}},
				}),
				o(297891, {	-- Runebound Cache
					["questID"] = 53385,
					["coord"] = { 63.3, 65.8, DRUSTVAR },
					["icon"] = 1001977,
					["description"] = "Left. Down. Up. Right.",
					["groups"] = {
						i(163743),	-- Drust Soulcatcher
					},
				}),
				o(297892, {	-- Runebound Chest
					["questID"] = 53386,
					["coord"] = { 44.2, 27.8, DRUSTVAR },
					["icon"] = 1001977,
					["description"] = "Left. Right. Down. Up.",
					["groups"] = {
						i(163742),	-- Heartsbane Grimoire (TOY!)
					},
				}),
				o(297893, {	-- Runebound Coffer
					["questID"] = 53387,
					["coord"] = { 33.68, 71.74, DRUSTVAR },
					["icon"] = 1001977,
					["description"] = "Right. Up. Left. Down.",
					["groups"] = {
						i(163740),	-- Drust Ritual Knife (TOY!)
					},
				}),
				o(298920, {	-- Stolen Thornspeaker Cache
					["questID"] = 53475,
					["coord"] = { 24.3, 48.5, DRUSTVAR },
					["icon"] = 1001977,
					["description"] = "Enter the cave at 24.70, 48.95.",
					["sym"] = {{"select","itemID",
						POLISHED_PET_CHARM,
					}},
				}),
				o(297825, {	-- Web-Covered Chest
					["questID"] = 53356,
					["coord"] = { 33.7, 30.1, DRUSTVAR },
					["icon"] = 1001977,
					["groups"] = {
						i(160053),	-- Battle-Scarred Augment Rune
					},
				}),
			}),
			ach(41207, {	-- When the Drust Settles
				["timeline"] = { ADDED_11_0_7 },
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					12941,	-- Adventurer of Drustvar
					13083,	-- Better, Faster, Stronger
					13094,	-- Cursed Game Hunter
					13064,	-- Drust the Facts, Ma'am
					13082,	-- Everything Old Is New Again
					12995,	-- Treasures of Drustvar
					13087,	-- Sausage Sampler
				}},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(KUL_TIRAS, {
		m(DRUSTVAR, {
			n(ACHIEVEMENTS, {
				q(53448),	-- Spooky Bundle of Sticks Crafting [Wicker Pup]
			}),
		}),
	}),
})));
