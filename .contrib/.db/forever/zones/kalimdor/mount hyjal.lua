---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.KALIMDOR, MAP.MOUNT_HYJAL, {
	lore = "Threats both old and new stalk the slopes of the mountain, eager to claim its power and destroy anyone daring enough to get in their way.",
	timeline = { TIMELINE.ADDED_1_60_1 },
	icon = 409547,
	groups = {
		n(ACHIEVEMENTS, {
			ach(62356),	-- Explore Mount Hyjal
		}),
		explorationHeader({
			exploration(17145),	-- Cradle of Tranquility
			exploration(16866),	-- Dae'gun
			exploration(16848),	-- Elderwild
			exploration(17050),	-- Felblood Scar
			exploration(17144),	-- Malorne's Retreat
			exploration(16868),	-- Mourning's Rest
			exploration(16867),	-- Shrine of Aviana
			exploration(16849),	-- Summit of Eternity
			exploration(16853),	-- Tainted Foothills
		}),
		n(FLIGHT_PATHS, {
			fp(559, {	-- Summit of Eternity, Mount Hyjal
				cr = 41861,	-- Fayran Elthas <Flight Master>
				coord = { 68.6, 44.0, MAP.MOUNT_HYJAL },
			}),
			fp(3242, {	-- Tainted Foothills, Mount Hyjal
				cr = 260626,	-- Bluebell <Flight Mistress>
				coord = { 55.0, 82.8, MAP.MOUNT_HYJAL },
				races = ALLIANCE_ONLY,
			}),
		}),
		n(QUESTS, {
			q(92500, {	-- A Bit of the Sky
				sourceQuest = 92171,	-- Taking to New Heights
				qg = 254131,	-- Skylord Omnuron
				coord = { 54.2, 63.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 The Jewel of the Horizon
						provider = { "i", 272974 },	-- The Jewel of the Horizon
					}),
				},
			}),
			q(96964, {	-- A Clever Creature
				qg = 267158,	-- Jereman
				coord = { 41.4, 45.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(95320, {	-- A Curious Question
				qg = 257753,	-- Curious Crow
				coord = { 48.2, 85.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(96435, {	-- A Fitting End
				qg = 263757,	-- Felflick
				qi = 273296,	-- Bag of Ashen Warlock Bones (PQI!)
				coord = { 49.4, 77.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Warlock Bones Thrown on Slime Altar
				},
			}),
			q(95380, {	-- A Prolific Source
				qg = 257753,	-- Curious Crow
				coord = { 48.2, 85.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/8 Fel-Slime Ooze
						provider = { "i", 273008 },	-- Fel-Slime Ooze
					}),
				},
			}),
			q(96622, {	-- A Rest Without Pain
				qg = 244512,	-- Ortak Lomgok
				coord = { 13.0, 52.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Poultice Delivered to Enho
					objective(2),	-- 0/1 Poultice Delivered to Maruke
					i(255729),	-- Manual: Major Healing Potion
				},
			}),
			q(96322, {	-- A Revenge Now Bitter
				sourceQuest = 96255,	-- Amalgamated Marrow
				qg = 263757,	-- Felflick
				coord = { 49.4, 77.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Decide What to do with Felflick
					i(275837),	-- Felflick's Fire Flicker
					i(275838),	-- Dirtwalker Pendant
				},
			}),
			q(95379, {	-- A Revenge So Sweet
				qg = 263757,	-- Felflick
				qi = 274414,	-- Pristine Fel-Slime Crystal (PQI!)
				coord = { 49.4, 77.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Brashann Grimdark slain
						provider = { "n", 260440 },	-- Brashann Grimdark
					}),
				},
			}),
			q(96529, {	-- A Shaw Deal
				sourceQuest = 96494,	-- Gathering Storm
				qg = 249234,	-- Johun \"Punchy\" Dillas
				qi = 274725,	-- Blackthorne Documents (PQI!)
				coord = { 43.8, 37.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
			}),
			q(93407, {	-- A Thorn in the Paw
				qg = 40833,	-- Tiala Whitemane
				coord = { 68.8, 50.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 57,
				groups = {
					objective(1, {	-- 0/18 Thorn Seed
						provider = { "i", 263227 },	-- Thorn Seed
					}),
				},
			}),
			q(93547, {	-- A Thorny Solution
				sourceQuest = 93407,	-- A Thorn in the Paw
				qg = 40833,	-- Tiala Whitemane
				qi = 259268,	-- Bag of Thorn Seeds (PQI!)
				coord = { 68.8, 50.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 57,
				groups = {
					objective(1),	-- 0/1 Thorn seed planted near inn
					objective(2),	-- 0/1 Thorn seed planted near storage tower
					objective(3),	-- 0/1 Thorn seed planted near group of trees
					i(275649),	-- Bramblebark Barrier
				},
			}),
			q(92612, {	-- Aid from Moonglade
				sourceQuest = 96131,	-- An Oldstone But An Old Friend
				qg = 256222,	-- Ketharas
				qi = 272925,	-- Ketharas' Note (PQI!)
				coord = { 73.2, 81.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(96255, {	-- Amalgamated Marrow
				sourceQuest = 96435,	-- A Fitting End
				provider = { "o", 652449 },	-- Bone Pile
				coord = { 40.7, 80.3, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Awakened Fel Ash Slime slain
						provider = { "n", 264306 },	-- Awakened Fel Ash Slime
					}),
				},
			}),
			q(96131, {	-- An Oldstone But An Old Friend
				sourceQuest = 96321,	-- The Dying God
				qg = 257753,	-- Curious Crow
				qi = 273845,	-- Faintly Glowing Staff (PQI!)
				coord = { 48.2, 85.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(90487, {	-- Ancient Allies
				qg = 256222,	-- Ketharas
				coord = { 73.2, 81.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(92100, {	-- Anywhere But Here
				qg = 255009,	-- Veteran of the Third War
				coord = { 19.8, 62.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(96302, {	-- Arch Absolution
				qg = 264795,	-- Marn Euhorn
				qi = 273801,	-- Marn's Warding Incense (PQI!)
				coord = { 68.4, 46.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					objective(1),	-- 0/1 Warding Ritual performed
				},
			}),
			q(92015, {	-- Area Denial Skunks
				qg = 249234,	-- Johun \"Punchy\" Dillas
				coord = { 43.8, 37.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					objective(1),	-- 0/6 Skunks repelled
				},
			}),
			q(96025, {	-- As the Crow Flies
				qg = 263406,	-- Elaena Moonwhisper
				coord = { 43.8, 32.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(92335, {	-- Ashes of the Legion Ascent
				sourceQuest = 96931,	-- Heading Up the Mountain
				qg = 259695,	-- Renalard
				coord = { 60.0, 49.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Azgalor's Ashes
						provider = { "i", 253239 },	-- Azgalor's Ashes
					}),
				},
			}),
			q(92593, {	-- Avalanche of Corruption
				sourceQuest = 96992,	-- Resupply
				qg = 249234,	-- Johun \"Punchy\" Dillas
				coord = { 43.8, 37.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
			}),
			q(92189, {	-- Back to the Grind
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/2 Dense Sharpening Stone
						provider = { "i", 12404 },	-- Dense Sharpening Stone
					}),
					objective(2, {	-- 0/2 Dense Grinding Stone
						provider = { "i", 12644 },	-- Dense Grinding Stone
					}),
					i(274718),	-- Lost Veteran's Sabatons
					i(251468),	-- Plans: Bold Dirk
				},
			}),
			q(93444, {	-- Bait the Beast
				qg = 41861,	-- Fayran Elthas
				coord = { 68.6, 44.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					objective(1),	-- 0/1 Ghansurok baited with Nightsaber meat
					objective(2, {	-- 0/1 Venom-dripping Heart
						provider = { "i", 274162 },	-- Venom-dripping Heart
					}),
					objective(3, {	-- 0/1 Tender Nightsaber Haunch
						provider = { "i", 274151 },	-- Tender Nightsaber Haunch
					}),
					i(275708),	-- Ghansurok Hide Tunic
					i(275711),	-- Chimaera Wing Cape
				},
			}),
			q(93952, {	-- Balance Through Strength
				qg = 256978,	-- Brerufa
				coord = { 20.6, 71.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/9 Deadwood Den Guardian slain
						provider = { "n", 252063 },	-- Deadwood Den Guardian
					}),
				},
			}),
			q(91770, {	-- Bark Bite
				qg = 248367,	-- Hyacinth
				qi = 247963,	-- Herbal Soil Poultice (PQI!)
				coord = { 54.0, 84.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Fraxinus soothed
					i(14530),	-- Heavy Runecloth Bandage
				},
			}),
			q(93825, {	-- Barkbound Blessings
				qg = 260661,	-- Suma Mossmane
				coord = { 20.8, 79.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/12 Moonveil Moss
						provider = { "i", 262802 },	-- Moonveil Moss
					}),
				},
			}),
			q(94504, {	-- Barkskin Beginnings
				qg = 256627,	-- Elder Mistpaw
				coord = { 21.6, 79.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(91698, {	-- Barkskin Breakout
				qg = 244425,	-- Barkskin Matriarch
				coord = { 29.0, 58.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Deadwood Key
						provider = { "i", 272936 },	-- Deadwood Key
					}),
				},
			}),
			q(96550, {	-- Battle Recall
				provider = { "o", 654121 },	-- Embroidered Scabbard
				qi = 274795,	-- Embroidered Scabbard (PQI!)
				coord = { 8.8, 46.5, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 War Veteran's story told
				},
			}),
			q(94832, {	-- Belle's Ring
				qg = 244517,	-- Sefira Everbright
				qi = 273798,	-- Ring of the Fallen Soldier (PQI!)
				coord = { 15.6, 54.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
			}),
			q(96077, {	-- Belle's Ring
				qg = 264521,	-- Daythor Brellan
				qi = 273800,	-- Thomas's Ring (PQI!)
				coord = { 15.4, 52.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					i(273800),	-- Thomas's Ring
				},
			}),
			q(93422, {	-- Blackthorne Blackout
				qg = 255151,	-- Rhylin Stonethorn
				coord = { 70.6, 51.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Blackthorne Courier slain
						provider = { "n", 264508 },	-- Blackthorne Courier
					}),
					objective(2, {	-- 0/1 Blackthorne Intelligence
						provider = { "i", 273772 },	-- Blackthorne Intelligence
					}),
				},
			}),
			q(96959, {	-- Blademaster's Bonfires
				qg = 267121,	-- Yashiro
				coord = { 49.3, 32.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					objective(1),	-- 0/1 South Bonfire lit
					objective(2),	-- 0/1 Southeast Bonfire lit
				},
			}),
			q(92449, {	-- Blight No More [A]
				qg = 244517,	-- Sefira Everbright
				coord = { 15.6, 54.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/3 Forgotten Soldier slain
						provider = { "n", 249247 },	-- Forgotten Soldier
					}),
					objective(2, {	-- 0/12 Fleshflay Ravener slain
						provider = { "n", 249228 },	-- Fleshflay Ravener
					}),
					i(275438),	-- Greaves of Mourning
				},
			}),
			q(95026, {	-- Blight No More [H]
				qg = 244511,	-- Zet'gan
				coord = { 14.0, 54.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/3 Forgotten Soldier slain
						provider = { "n", 249247 },	-- Forgotten Soldier
					}),
					objective(2, {	-- 0/12 Fleshflay Ravener slain
						provider = { "n", 249228 },	-- Fleshflay Ravener
					}),
					i(276341),	-- Plaguecrusher Greaves
				},
			}),
			q(97010, {	-- Blind Vengeance
				sourceQuest = 97009,	-- Maerion's Misery
				qg = 267097,	-- Maerion Thaelemaches
				qi = 276145,	-- Explosive Runeshard (PQI!)
				coord = { 53.4, 33.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					objective(1),	-- 0/1 Explosive Runeshards detonated
					i(276337),	-- Thaelemaches' Talisman
				},
			}),
			q(96957, {	-- Bone Sweet Bone
				qg = 267113,	-- Marrosis
				coord = { 27.0, 50.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/20 Sun-Bleached Bone
						provider = { "i", 275927 },	-- Sun-Bleached Bone
					}),
				},
			}),
			q(92702, {	-- Branch Out
				sourceQuest = 92094,	-- Rocket Gnomes
				qg = 249549,	-- Fenwick Togglespring
				coord = { 25.2, 76.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Sturdy Tree Branch
						provider = { "i", 274617 },	-- Sturdy Tree Branch
					}),
				},
			}),
			q(93834, {	-- Burrow Beetles
				qg = 256629,	-- Dala Fairmaw
				coord = { 21.0, 78.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/6 Burrow Beetle Bits
						provider = { "i", 262803 },	-- Burrow Beetle Bits
					}),
					i(18253),	-- Major Rejuvenation Potion
				},
			}),
			q(96666, {	-- Burrow Bonding
				qg = 256650,	-- Elder Pinespeaker
				coord = { 21.6, 79.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(91923, {	-- Celastrus the Bitter
				qg = 265586,	-- Thylaen
				coord = { 55.8, 84.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Broken Frond of Celastrus
						provider = { "i", 282028 },	-- Broken Frond of Celastrus
					}),
					i(274265),	-- Brush Cutter
					i(274270),	-- Weed Whacker
					i(274271),	-- Deadhead Blade
				},
			}),
			q(93521, {	-- Challenger of the Gods
				provider = { "o", 710894 },	-- Bookshelf
				qi = 270301,	-- Ve'han's Research Notes (PQI!)
				coord = { 76.9, 35.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 57,
			}),
			q(92017, {	-- Cleansing Winds
				qg = 264795,	-- Marn Euhorn
				coord = { 68.4, 46.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					objective(1, {	-- 0/5 Grand Hippogryph Feather
						provider = { "i", 274287 },	-- Grand Hippogryph Feather
					}),
					objective(2, {	-- 0/3 Oily Chimaera Hair
						provider = { "i", 274288 },	-- Oily Chimaera Hair
					}),
				},
			}),
			q(93383, {	-- Contents Under Pressure
				sourceQuest = 96559,	-- Supply Drop
				qg = 254644,	-- Personal Survival Pack
				coord = { 25.4, 74.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Personal Survival Pack safely discharged
					objective(2),	-- 0/1 Security Countdown Elapsed
					i(275715),	-- Rocket Pilot Gloves
					i(275721),	-- Rocketeer Leggings
					i(275729),	-- Rusty Propeller Blade
				},
			}),
			q(92009, {	-- Crate Expectations
				sourceQuest = 92008,	-- Premiere Parts
				qg = 228216,	-- Nami
				qi = 250725,	-- Crate of Exotic Parts (PQI!)
				coord = { 61.2, 37.0, MAP.WINTERSPRING },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(95319, {	-- Crystalline Collection
				sourceQuest = 95318,	-- Taste of Ash
				qg = 263757,	-- Felflick
				coord = { 49.4, 77.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/8 Fel-Slime Crystal
						provider = { "i", 274412 },	-- Fel-Slime Crystal
					}),
					objective(2, {	-- 0/1 Pristine Fel-Slime Crystal
						provider = { "i", 268990 },	-- Pristine Fel-Slime Crystal
					}),
				},
			}),
			q(93584, {	-- Cult Closure
				qg = 254915,	-- Thisalee Crow
				coord = { 69.0, 49.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					objective(1, {	-- 0/10 Blackthorne Cultist slain
						provider = { "n", 249551 },	-- Blackthorne Cultist
					}),
					objective(2, {	-- 0/10 Blackthorne Adept slain
						provider = { "n", 264570 },	-- Blackthorne Adept
					}),
				},
			}),
			q(93826, {	-- Deal Dread to Deadwood
				qg = 256627,	-- Elder Mistpaw
				coord = { 21.6, 79.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/8 Deadwood Totemic slain
						provider = { "n", 252116 },	-- Deadwood Totemic
					}),
					objective(2, {	-- 0/8 Deadwood Fel-Tender slain
						provider = { "n", 252096 },	-- Deadwood Fel-Tender
					}),
				},
			}),
			q(95107, {	-- Deeproar Down
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Chieftain Deeproar slain
						provider = { "n", 259875 },	-- Chieftain Deeproar
					}),
					objective(2, {	-- 0/1 Broken Staff
						provider = { "i", 268507 },	-- Broken Staff
					}),
					i(275291),	-- Staff of the Deeproar
					i(275293),	-- Barkskin Scepter
					i(275296),	-- Deadwood Boomstick
				},
			}),
			q(90702, {	-- Disturbed Grave
				provider = { "o", 651262 },	-- Unmarked Grave
				coord = { 22.5, 48.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Ring of the Fallen Soldier
						provider = { "i", 273642 },	-- Ring of the Fallen Soldier
					}),
				},
			}),
			q(96003, {	-- Drawing Down the Malevolent
				sourceQuest = 92960,	-- Siphoned Ephemeral Essence
				qg = 263406,	-- Elaena Moonwhisper
				qi = 271879,	-- Eye of Endless Influence (PQI!)
				coord = { 43.8, 32.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Bethra'zel slain
					objective(2),	-- 0/1 Mazzogore slain
					i(275630),	-- Depleted Eye of Influence
				},
			}),
			q(92329, {	-- Drum Up Trouble
				sourceQuest = 92328,	-- Siegecraft
				qg = 249235,	-- Kaylaena Springwhisper
				coord = { 60.2, 61.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Ghansurok drawn towards the Glaive Thrower
					i(275701),	-- Copper Plated Pipe
					i(275700),	-- Glaive Thrower Muffler
					i(275698),	-- Yaely's Mending Tool
				},
			}),
			q(93567, {	-- Ends Meet
				sourceQuest = 92102,	-- Praise
				qg = 265375,	-- Veteran of the Third War
				qi = 274795,	-- Embroidered Scabbard (PQI!)
				coord = { 27.6, 50.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					objective(1),	-- 0/1 Veteran's story told
				},
			}),
			q(96674, {	-- Ewe Wandered Off
				qg = 248419,	-- Mirt
				coord = { 15.8, 52.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					objective(1),	-- 0/6 Escaped Sheep
					i(275827),	-- Wool-Stitched Waistband
				},
			}),
			q(90865, {	-- Eyes of the Watchers
				qg = 264089,	-- Eluneth
				coord = { 18.8, 61.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/8 Watcher's Eye
						provider = { "i", 273322 },	-- Watcher's Eye
					}),
				},
			}),
			q(96830, {	-- Farsight Guided
				qg = 266802,	-- Thark Gorax
				coord = { 80.0, 70.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(95027, {	-- Feathers in Flight [A]
				qg = 249968,	-- Hnaz Blunderflame
				coord = { 15.6, 50.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/9 Hyjal Owl Feather
						provider = { "i", 253341 },	-- Hyjal Owl Feather
					}),
					i(275439),	-- Blunderflame Bone Bow
				},
			}),
			q(92609, {	-- Feathers in Flight [H]
				qg = 244511,	-- Zet'gan
				coord = { 14.0, 54.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/9 Hyjal Owl Feather
						provider = { "i", 253341 },	-- Hyjal Owl Feather
					}),
					i(275441),	-- Cremation Longbow
				},
			}),
			q(96296, {	-- Fetid Corruption
				provider = { "o", 651409 },	-- Corrupted Growth
				coord = { 48.5, 56.3, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 55,
				groups = {
					objective(1),	-- 0/6 Corrupted Growth
				},
			}),
			q(92591, {	-- Final Death [A]
				qg = 244517,	-- Sefira Everbright
				qi = 274411,	-- Survivor's Torch (PQI!)
				coord = { 15.6, 54.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 57,
				groups = {
					objective(1, {	-- 0/1 Reanimator's Amulet
						provider = { "i", 268573 },	-- Reanimator's Amulet
					}),
					i(275347),	-- Lichbane
				},
			}),
			q(92592, {	-- Final Death [H]
				qg = 244511,	-- Zet'gan
				qi = 274411,	-- Survivor's Torch (PQI!)
				coord = { 14.0, 54.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 57,
				groups = {
					objective(1, {	-- 0/1 Reanimator's Amulet
						provider = { "i", 268573 },	-- Reanimator's Amulet
					}),
					i(275347),	-- Lichbane
				},
			}),
			q(95766, {	-- Fine Feathered Friend
				qg = 248366,	-- Fraxinus
				coord = { 53.6, 84.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(91794, {	-- Flags of Our Forebears
				qg = 265788,	-- Kal'tinzan
				coord = { 13.6, 53.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Horde Flag
						provider = { "i", 253249 },	-- Horde Flag
					}),
					objective(2, {	-- 0/3 Scrap of Horde Heraldry
						provider = { "i", 274949 },	-- Scrap of Horde Heraldry
					}),
					i(275742),	-- Demonbane Blade
					i(287077),	-- Demonbane Knife
				},
			}),
			q(92014, {	-- Fox Hole
				sourceQuest = 92015,	-- Area Denial Skunks
				qg = 249234,	-- Johun \"Punchy\" Dillas
				coord = { 43.8, 37.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/9 Rustleaf Fox Tail
						provider = { "i", 274586 },	-- Rustleaf Fox Tail
					}),
					i(275633),	-- Foxtail Ward
				},
			}),
			q(96494, {	-- Gathering Storm
				sourceQuest = 92593,	-- Avalanche of Corruption
				qg = 249234,	-- Johun \"Punchy\" Dillas
				coord = { 43.8, 37.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
			}),
			q(97000, {	-- Grain of Memory
				qg = 4604,	-- Abigail Sawyer
				coord = { 54.8, 38.0, MAP.UNDERCITY },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
			}),
			q(97490, {	-- Halt the Hail
				qg = 11757,	-- Umaron Stragarelm
				coord = { 61.8, 38.2, MAP.WINTERSPRING },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					objective(1, {	-- 0/1 Hailspite Frostmoss
						provider = { "i", 278091 },	-- Hailspite Frostmoss
					}),
					i(281279),	-- Hailgiant's Fists
					i(281280),	-- Mountain Climbers
					i(281281),	-- Frost's Whisper Pendant
				},
			}),
			q(92446, {	-- Head Scratcher
				qg = 244511,	-- Zet'gan
				qi = 251780,	-- Rabbit Carcass (PQI!)
				coord = { 14.0, 54.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Head Scratcher's Scratchers
						provider = { "i", 251781 },	-- Head Scratcher's Scratchers
					}),
					i(281586),	-- Elderwild Construction Hammer
					i(281587),	-- Greatflank Flayer
					i(281588),	-- Nature's Cull
				},
			}),
			q(96931, {	-- Heading Up the Mountain
				sourceQuest = 96930,	-- The Capricious Corvid
				qg = 257753,	-- Curious Crow
				coord = { 48.2, 85.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(96616, {	-- Herbs for the Bruised and Weary
				qg = 244512,	-- Ortak Lomgok
				coord = { 13.0, 52.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/12 Hyjal Silphium
						provider = { "i", 274979 },	-- Hyjal Silphium
					}),
				},
			}),
			q(93828, {	-- Herbs of the Hollow
				qg = 256626,	-- Fennar Mossmane
				coord = { 20.2, 78.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/10 Dried Hanging Herbs
				},
			}),
			q(92147, {	-- Highfeather Helper
				qg = 260825,	-- Phoebe Highfeather
				coord = { 54.4, 63.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/18 Wormwing Pinfeather
						provider = { "i", 268997 },	-- Wormwing Pinfeather
					}),
				},
			}),
			q(95569, {	-- Hope for Hatchlings
				qg = 256222,	-- Ketharas
				coord = { 73.2, 81.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/12 Hyjal Owl Egg
						provider = { "i", 269920 },	-- Hyjal Owl Egg
					}),
				},
			}),
			q(91564, {	-- Itching for a Fixing
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/2 Mithril Casing
						provider = { "i", 10561 },	-- Mithril Casing
					}),
					objective(2, {	-- 0/1 Mechanical Repair Kit
						provider = { "i", 11590 },	-- Mechanical Repair Kit
					}),
					i(15993),	-- Thorium Grenade
					i(264233),	-- Schematic: Dimensional Transporter: Mt. Hyjal
				},
			}),
			q(92594, {	-- Kindling, Kinda
				qg = 249235,	-- Kaylaena Springwhisper
				coord = { 60.2, 61.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/15 Tainted Shrubbery slain
						provider = { "n", 248395 },	-- Tainted Shrubbery
					}),
				},
			}),
			q(93615, {	-- Kits and Cats
				qg = 255683,	-- Shalla'kal
				coord = { 31.4, 50.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Solstice found
					objective(2),	-- 0/1 Whisperfur found
					objective(3),	-- 0/1 Brie found
					i(276338),	-- Claw of Shalla'kal
				},
			}),
			q(96561, {	-- Last Wishes
				-- TODO: Wowhead doesn't list the quest giver yet.
				qi = 274795,	-- Embroidered Scabbard (PQI!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					objective(1, {	-- 0/1 Fishing Trip
						provider = { "i", 274800 },	-- Fishing Trip
					}),
				},
			}),
			q(90854, {	-- Leather for Inclement Weather
				qg = 244511,	-- Zet'gan
				coord = { 14.0, 54.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/2 Rugged Armor Kit
						provider = { "i", 15564 },	-- Rugged Armor Kit
					}),
					objective(2, {	-- 0/1 Cured Rugged Hide
						provider = { "i", 15407 },	-- Cured Rugged Hide
					}),
					i(252877),	-- Pattern: Tooled Leather Armor
					i(252933),	-- Pattern: Supple Scorpid Vest
					i(274719),	-- Forgotten Trompers
					i(274720),	-- Abandoned Boots
				},
			}),
			q(91755, {	-- Leaves to Ligatures
				qg = 248367,	-- Hyacinth
				coord = { 54.0, 84.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/12 Verdant Leaves
						provider = { "i", 247892 },	-- Verdant Leaves
					}),
				},
			}),
			q(92101, {	-- Lifted by Legacy
				qg = 255038,	-- Veteran of the Third War
				qi = 274795,	-- Embroidered Scabbard (PQI!)
				coord = { 8.8, 46.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(97009, {	-- Maerion's Misery
				qg = 267097,	-- Maerion Thaelemaches
				coord = { 53.4, 33.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					objective(1, {	-- 0/12 Felhound Spike
						provider = { "i", 276100 },	-- Felhound Spike
					}),
				},
			}),
			q(91697, {	-- Meet the Elders
				qg = 256646,	-- Osi Mistpaw
				coord = { 21.0, 80.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Elder Pinespeaker met
					objective(2),	-- 0/1 Elder Mistpaw met
				},
			}),
			q(96303, {	-- Memory Mist
				qg = 254915,	-- Thisalee Crow
				qi = 273857,	-- Enchanted Branch (PQI!)
				coord = { 69.0, 49.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/5 Wisp released
				},
			}),
			q(93197, {	-- Mending Communications
				qg = 243815,	-- Sebelia
				qi = 257808,	-- Parcel of Mail (PQI!)
				coord = { 70.8, 51.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
			}),
			q(95218, {	-- More of the Same
				qg = 264521,	-- Daythor Brellan
				coord = { 15.4, 52.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
			}),
			q(90750, {	-- More Work?
				qg = 244517,	-- Sefira Everbright
				coord = { 15.6, 54.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Speak with the worker
				},
			}),
			q(95108, {	-- Mystic Mix
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/2 Deadwood Death Mystic slain
						provider = { "n", 259876 },	-- Deadwood Death Mystic
					}),
					objective(2),	-- 0/1 First Cauldron Destroyed
					objective(3),	-- 0/1 Second Cauldron Destroyed
				},
			}),
			q(97006, {	-- Notarized Claim
				qg = 4604,	-- Abigail Sawyer
				qi = 276099,	-- Sawyer Family Ledger (PQI!)
				coord = { 54.8, 38.0, MAP.UNDERCITY },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
			}),
			q(95317, {	-- Notation, Notation, Notation
				qg = 257753,	-- Curious Crow
				coord = { 48.2, 85.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/12 Fel Ash Experimentation Notes
						provider = { "i", 274396 },	-- Fel Ash Experimentation Notes
					}),
				},
			}),
			q(92433, {	-- Now We're Cooking [A]
				qg = 249968,	-- Hnaz Blunderflame
				coord = { 15.6, 50.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/6 Savory Stag Sliders
						provider = { "i", 250065 },	-- Savory Stag Sliders
					}),
					i(250179),	-- Recipe: Steaming Stag Steak
					i(250071),	-- Steaming Stag Steak
				},
			}),
			q(97119, {	-- Now We're Cooking [H]
				qg = 244512,	-- Ortak Lomgok
				coord = { 13.0, 52.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/6 Savory Stag Sliders
						provider = { "i", 250065 },	-- Savory Stag Sliders
					}),
					i(250179),	-- Recipe: Steaming Stag Steak
					i(250071),	-- Steaming Stag Steak
				},
			}),
			q(92111, {	-- Of Friend and Fur
				qg = 256978,	-- Brerufa
				coord = { 20.6, 71.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(94479, {	-- One Person's Trash
				provider = { "o", 650234 },	-- Loose Cog
				qi = 272977,	-- Spare Part (PQI!)
				coord = { 75.3, 77.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(91696, {	-- Open Season
				qg = 244425,	-- Barkskin Matriarch
				coord = { 29.0, 58.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Escort the Furbolg family out of Deadwood Den
					i(269741),	-- Scented Runewood Brooch
				},
			}),
			q(96145, {	-- Past Wing and Claw
				qg = 268168,	-- Lisbael Highfeather
				coord = { 42.0, 52.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 55,
			}),
			q(92169, {	-- Paying Back the Pact
				sourceQuest = 90647,	-- The Staff of the Mountain
				qg = 40833,	-- Tiala Whitemane
				qi = 267079,	-- Staff of the Mountain (PQI!)
				coord = { 68.8, 50.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/10 Slay Blackthorne Pact Members
					objective(2),	-- 0/1 Test the Staff of the Mountain
				},
			}),
			q(96301, {	-- Power Wash
				qg = 264795,	-- Marn Euhorn
				qi = 274162,	-- Venom-dripping Heart (PQI!)
				coord = { 68.4, 46.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Vacant Heart
						provider = { "i", 274163 },	-- Vacant Heart
					}),
				},
			}),
			q(92102, {	-- Praise
				qg = 255191,	-- Veteran of the Third War
				qi = 274795,	-- Embroidered Scabbard (PQI!)
				coord = { 31.8, 24.4, MAP.THOUSAND_NEEDLES },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Veteran of the Third War met in Mount Hyjal
				},
			}),
			q(93551, {	-- Praise
				qg = 255305,	-- Veteran of the Third War
				qi = 274795,	-- Embroidered Scabbard (PQI!)
				coord = { 30.4, 56.8, MAP.REDRIDGE_MOUNTAINS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Veteran of the Third War met in Mount Hyjal
				},
			}),
			q(92008, {	-- Premiere Parts
				sourceQuest = 96796,	-- Woods Workshop
				qg = 249235,	-- Kaylaena Springwhisper
				coord = { 60.2, 61.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(93617, {	-- Prey and Predator
				qg = 255693,	-- Kala'th
				coord = { 28.6, 43.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/6 Predatory Hyjal Stag slain
						provider = { "n", 256809 },	-- Predatory Hyjal Stag
					}),
					i(276339),	-- Cured Staghide Leggings
				},
			}),
			q(96262, {	-- Prickly Pinecones
				qg = 257753,	-- Curious Crow
				coord = { 48.2, 85.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/10 Prickly Pinecone
						provider = { "i", 273304 },	-- Prickly Pinecone
					}),
				},
			}),
			q(96992, {	-- Resupply
				sourceQuest = 92014,	-- Fox Hole
				qg = 249234,	-- Johun \"Punchy\" Dillas
				coord = { 43.8, 37.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/30 Nail
						provider = { "i", 276087 },	-- Nail
					}),
					objective(2, {	-- 0/6 Metal Bracket
						provider = { "i", 276088 },	-- Metal Bracket
					}),
				},
			}),
			q(99670, {	-- Return to Jereman
				qg = 40833,	-- Tiala Whitemane
				coord = { 68.8, 50.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					i(275738),	-- Jereman Band
				},
			}),
			q(95611, {	-- Rites of Respect
				qg = 256222,	-- Ketharas
				qi = 269998,	-- Sacred Stag Bundle (PQI!)
				coord = { 73.2, 81.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Remains buried
					i(274035),	-- Staghide Drape
				},
			}),
			q(92094, {	-- Rocket Gnomes
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 52,
			}),
			q(92016, {	-- Rootwork
				qg = 264795,	-- Marn Euhorn
				coord = { 68.4, 46.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
			}),
			q(91754, {	-- Rub Some Dirt In It
				qg = 248367,	-- Hyacinth
				coord = { 54.0, 84.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/6 Untainted Soil
						provider = { "i", 247889 },	-- Untainted Soil
					}),
				},
			}),
			q(92011, {	-- Rubble Rummage
				sourceQuest = 92009,	-- Crate Expectations
				qg = 249235,	-- Kaylaena Springwhisper
				coord = { 60.2, 61.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/5 Frayed Wire
						provider = { "i", 250775 },	-- Frayed Wire
					}),
					objective(2, {	-- 0/5 Calcified Excrement
						provider = { "i", 269244 },	-- Calcified Excrement
					}),
					objective(3, {	-- 0/5 Warped Metal Scrap
						provider = { "i", 269246 },	-- Warped Metal Scrap
					}),
					i(275688),	-- Power Recycler
				},
			}),
			q(96979, {	-- Sacred Refreshment
				qg = 267109,	-- Galvinquam Leafsyre
				qi = 275991,	-- Galvinquam's Drinking Gourd (PQI!)
				coord = { 32.8, 54.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					objective(1),	-- 0/1 Galvinquam's Drinking Gourd refilled
				},
			}),
			q(97001, {	-- Sawyer's Legacy
				provider = { "o", 656815 },	-- Old Wardrobe
				qi = 276099,	-- Sawyer Family Ledger (PQI!)
				coord = { 33.3, 41.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
			}),
			q(95568, {	-- Seeds for a New Season
				qg = 256222,	-- Ketharas
				coord = { 73.2, 81.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/10 Untainted Seed
						provider = { "i", 260176 },	-- Untainted Seed
					}),
				},
			}),
			q(93832, {	-- Shatter the Stonewatchers
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/6 Eternal Sentry slain
						provider = { "n", 249237 },	-- Eternal Sentry
					}),
				},
			}),
			q(92328, {	-- Siegecraft
				sourceQuest = 92011,	-- Rubble Rummage
				qg = 249235,	-- Kaylaena Springwhisper
				coord = { 60.2, 61.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Battery cables connected
					objective(2),	-- 0/1 Left and right gears adjusted
				},
			}),
			q(92960, {	-- Siphoned Ephemeral Essence
				qg = 263406,	-- Elaena Moonwhisper
				coord = { 43.8, 32.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/6 Ephemeral Essence
						provider = { "i", 271220 },	-- Ephemeral Essence
					}),
				},
			}),
			q(91883, {	-- Spear of the Skylord
				qg = 254131,	-- Skylord Omnuron
				coord = { 54.2, 63.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/1 Omnuron's Spear
						provider = { "i", 268998 },	-- Omnuron's Spear
					}),
				},
			}),
			q(95793, {	-- Stemming the Demon Tide
				qg = 249052,	-- Witherbeard
				coord = { 43.8, 32.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/12 Felguard Sentinel slain
						provider = { "n", 249229 },	-- Felguard Sentinel
					}),
				},
			}),
			q(92317, {	-- Stolen Life
				sourceQuest = 96939,	-- The Balance of Life and Death
				qg = 267113,	-- Marrosis
				coord = { 27.0, 50.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Drop of Stolen Life
						provider = { "i", 272973 },	-- Drop of Stolen Life
					}),
				},
			}),
			q(93127, {	-- Summit Sentries
				qg = 40833,	-- Tiala Whitemane
				coord = { 68.8, 50.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Northern Sentinel Stone empowered
					objective(2),	-- 0/1 Western Sentinel Stone empowered
					objective(3),	-- 0/1 Southern Sentinel Stone empowered
					i(275666),	-- Whitemane's Plateau
					i(275668),	-- Summit Drape
				},
			}),
			q(96559, {	-- Supply Drop
				sourceQuest = 92064,	-- Tree Free
				qg = 249549,	-- Fenwick Togglespring
				coord = { 25.2, 76.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
			}),
			q(93831, {	-- Sweetpaw Jam
				sourceQuest = 92111,	-- Of Friend and Fur
				qg = 256646,	-- Osi Mistpaw
				coord = { 21.0, 80.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/30 Bear Berries
						provider = { "i", 262818 },	-- Bear Berries
					}),
					i(267341),	-- Sweetpaw Jam
				},
			}),
			q(92171, {	-- Taking to New Heights
				qg = 256222,	-- Ketharas
				coord = { 73.2, 81.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(96252, {	-- Tarnished Treasures
				qg = 260825,	-- Phoebe Highfeather
				coord = { 54.4, 63.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 55,
				groups = {
					objective(1, {	-- 0/8 Tarnished Highfeather Bangle
						provider = { "i", 273164 },	-- Tarnished Highfeather Bangle
					}),
					i(275831),	-- Highfeather Bangle
				},
			}),
			q(95318, {	-- Taste of Ash
				qg = 263757,	-- Felflick
				coord = { 49.4, 77.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/12 Ashen Acolyte slain
						provider = { "n", 260422 },	-- Ashen Acolyte
					}),
					i(275836),	-- Acolyte Blade
				},
			}),
			q(96939, {	-- The Balance of Life and Death
				qg = 267158,	-- Jereman
				coord = { 41.4, 45.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(93759, {	-- The Bounty of Nature
				qg = 256222,	-- Ketharas
				coord = { 73.2, 81.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/2 Hyjal Venison Cut
						provider = { "i", 251641 },	-- Hyjal Venison Cut
					}),
					objective(2, {	-- 0/6 Scarlet Dart Tuber
						provider = { "i", 267289 },	-- Scarlet Dart Tuber
					}),
					i(262433),	-- Ketharas' Hyjal Stew
				},
			}),
			q(96930, {	-- The Capricious Corvid
				sourceQuest = 93773,	-- The Pact
				qg = 256222,	-- Ketharas
				coord = { 73.2, 81.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(92521, {	-- The Demon Tower
				-- Not yet available in game. Spy on Hnaz's imp at the tower with the captive satyr.
				timeline = { TIMELINE.CREATED_1_60_1 },
			}),
			q(92959, {	-- The Dying Ancients
				qg = 248366,	-- Fraxinus
				qi = 248975,	-- Seed of the Ancients (PQI!)
				coord = { 53.6, 84.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 55,
				groups = {
					objective(1),	-- 0/1 Seed planted in Sunderbark's remains
					i(276754),	-- Sunderbark Vigil
				},
			}),
			q(96321, {	-- The Dying God
				qg = 278305,	-- Velician
				qi = 273845,	-- Faintly Glowing Staff (PQI!)
				coord = { 36.6, 78.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(95316, {	-- The Experimental Method
				qg = 257753,	-- Curious Crow
				qi = 273323,	-- Slimy Pinecone (PQI!)
				coord = { 48.2, 85.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Vessel Workstation disrupted
					objective(2),	-- 0/1 Disease Workstation disrupted
					objective(3),	-- 0/1 Alchemy Workstation disrupted
					objective(4),	-- 0/1 Slime Workstation disrupted
					i(275832),	-- Crowfeather Tunic
					i(275833),	-- Bristlecone Cloak
				},
			}),
			q(95378, {	-- The Hydra's Head
				qg = 263757,	-- Felflick
				coord = { 49.4, 77.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Bones of Tyaeha Darkoath
						provider = { "i", 273291 },	-- Bones of Tyaeha Darkoath
					}),
					objective(2, {	-- 0/1 Bones of Dazka Shadowsleep
						provider = { "i", 273292 },	-- Bones of Dazka Shadowsleep
					}),
					objective(3, {	-- 0/1 Bones of Frezzlie Popwhiz
						provider = { "i", 273290 },	-- Bones of Frezzlie Popwhiz
					}),
				},
			}),
			q(93773, {	-- The Pact
				sourceQuest = 95006,	-- Stolen Power
				qg = 11802,	-- Dendrite Starblaze
				coord = { 56.2, 30.4, MAP.MOONGLADE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(90647, {	-- The Staff of the Mountain
				qg = 256222,	-- Ketharas
				qi = 267079,	-- Staff of the Mountain (PQI!)
				coord = { 73.2, 81.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(91881, {	-- The Western Post [A]
				qg = 257753,	-- Curious Crow
				coord = { 48.2, 85.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
			}),
			q(94782, {	-- The Western Post [H]
				qg = 257753,	-- Curious Crow
				coord = { 48.2, 85.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
			}),
			q(95769, {	-- Threading a Solution
				-- TODO: Wowhead doesn't list the quest giver yet.
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
				groups = {
					objective(1, {	-- 0/6 Bolt of Runecloth
						provider = { "i", 14048 },	-- Bolt of Runecloth
					}),
					i(274721),	-- Tattered Sandals
					i(254124),	-- Pattern: Runecloth Cuffs
				},
			}),
			q(96971, {	-- To Outfox a Demon
				qg = 259695,	-- Renalard
				qi = 275957,	-- Tuft of Fox Fur (PQI!)
				coord = { 60.0, 49.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/8 Abandoned Supplies
						provider = { "i", 275958 },	-- Abandoned Supplies
					}),
				},
			}),
			q(91688, {	-- To the Summit of Eternity [A]
				qg = 244517,	-- Sefira Everbright
				coord = { 15.6, 54.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
			}),
			q(95248, {	-- To the Summit of Eternity [H]
				qg = 244511,	-- Zet'gan
				coord = { 14.0, 54.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
			}),
			q(93269, {	-- Top of the Post
				sourceQuest = 93406,	-- Unfrozen Deliveries
				qg = 11118,	-- Innkeeper Vizzie
				qi = 257809,	-- Parcel of Mail (PQI!)
				coord = { 61.2, 38.8, MAP.WINTERSPRING },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					i(260307),	-- Hyjal Postal Satchel
					i(260308),	-- Hyjal Postal Clasp
				},
			}),
			q(96991, {	-- Trail Assist
				qg = 267109,	-- Galvinquam Leafsyre
				qi = 275998,	-- Galvinquam's Belongings (PQI!)
				coord = { 32.8, 54.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
			}),
			q(92064, {	-- Tree Free
				sourceQuest = 92702,	-- Branch Out
				qg = 249549,	-- Fenwick Togglespring
				coord = { 25.2, 76.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Tree Branch destroyed
				},
			}),
			q(96998, {	-- Tribal Colors
				provider = { "o", 656786 },	-- Troll Remains
				qi = 276064,	-- War Paint Wrap (PQI!)
				coord = { 61.5, 41.5, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
			}),
			q(92533, {	-- Twisted Tools
				qg = 243855,	-- Toron Rockhoof
				coord = { 69.0, 47.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					objective(1, {	-- 0/1 Wicked Ritualist's Kris
						provider = { "i", 273832 },	-- Wicked Ritualist's Kris
					}),
					objective(2, {	-- 0/1 Recoiling Gnarlybark Staff
						provider = { "i", 273828 },	-- Recoiling Gnarlybark Staff
					}),
					i(275645),	-- Reforged Spear
					i(275647),	-- Cleansed Ritual Kris
					i(275648),	-- Purified Gnarlybark Staff
				},
			}),
			q(93406, {	-- Unfrozen Deliveries
				sourceQuest = 93197,	-- Mending Communications
				qg = 11118,	-- Innkeeper Vizzie
				coord = { 61.2, 38.8, MAP.WINTERSPRING },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					objective(1, {	-- 0/4 Missing Mail
						provider = { "i", 258323 },	-- Missing Mail
					}),
				},
			}),
			q(96676, {	-- Unsealing Blackthorne Pact
				sourceQuest = 96529,	-- A Shaw Deal
				qg = 332,	-- Master Mathias Shaw
				qi = 275646,	-- Alliance Equipment (PQI!)
				coord = { 75.8, 59.8, MAP.STORMWIND_CITY },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = ALLIANCE_ONLY,
				lvl = 54,
				groups = {
					i(275671),	-- Field Agent Beverage
					i(275669),	-- Punchy's Punchers
					i(275685),	-- Stormwind Intelligence Seal
				},
			}),
			q(92833, {	-- Ve'han's Fall
				sourceQuest = 92169,	-- Paying Back the Pact
				qg = 40833,	-- Tiala Whitemane
				qi = 267079,	-- Staff of the Mountain (PQI!)
				coord = { 68.8, 50.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Ve'han Talongrasp slain
						provider = { "n", 260674 },	-- Ve'han Talongrasp
					}),
				},
			}),
			q(96833, {	-- Venom Maws
				qg = 266803,	-- Quintus Wainworth
				coord = { 79.8, 70.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(93747, {	-- Violence Into Verdure
				qg = 256222,	-- Ketharas
				qi = 269944,	-- Bag of Enchanted Seeds (PQI!)
				coord = { 73.2, 81.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Ruined Ballista reclaimed
					objective(2),	-- 0/1 Ruined Catapult reclaimed
					objective(3),	-- 0/1 Ruined Flying Machine reclaimed
				},
			}),
			q(96978, {	-- Violent Venison
				qg = 267158,	-- Jereman
				coord = { 41.4, 45.0, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(93510, {	-- Wake Memories
				qg = 255038,	-- Veteran of the Third War
				qi = 274795,	-- Embroidered Scabbard (PQI!)
				coord = { 8.8, 46.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(93830, {	-- Water of Hyjal
				qg = 256626,	-- Fennar Mossmane
				qi = 263029,	-- Empty Waterskin (PQI!)
				coord = { 20.2, 78.2, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/1 Filled Hyjal Waterskin
						provider = { "i", 263030 },	-- Filled Hyjal Waterskin
					}),
				},
			}),
			q(95273, {	-- Water of Hyjal
				-- TODO: Wowhead doesn't list the quest giver yet.
				qi = 274373,	-- Barkskin Purification Tonic (PQI!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1),	-- 0/1 Secrets of the depths discovered
					i(275390),	-- Shallow Bindings
					i(275434),	-- Murkborn Girdle
				},
			}),
			q(93833, {	-- Wicked Wisdom
				qg = 256650,	-- Elder Pinespeaker
				coord = { 21.6, 79.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/5 Intact Owl Body
						provider = { "i", 262816 },	-- Intact Owl Body
					}),
				},
			}),
			q(93827, {	-- Windswept Wards
				qg = 256660,	-- Thobon Sapclaw
				coord = { 20.6, 78.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					objective(1, {	-- 0/16 Enchanted Harpy Amulet
						provider = { "i", 263028 },	-- Enchanted Harpy Amulet
					}),
				},
			}),
			q(97007, {	-- Wood Remains
				-- TODO: Wowhead doesn't list the quest giver yet.
				qi = 276099,	-- Sawyer Family Ledger (PQI!)
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
				groups = {
					i(276332),	-- Abigail's Hope
					i(276333),	-- Sawyer Family Seal
					i(276334),	-- Hand-Hewn Buckler
				},
			}),
			q(96796, {	-- Woods Workshop
				sourceQuest = 94479,	-- One Person's Trash
				qg = 256222,	-- Ketharas
				qi = 272977,	-- Spare Part (PQI!)
				coord = { 73.2, 81.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
			}),
			q(93848, {	-- Work Well Done
				sourceQuest = 92833,	-- Ve'han's Fall
				qg = 40833,	-- Tiala Whitemane
				coord = { 68.8, 50.4, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 54,
				groups = {
					i(275739),	-- Wild Wristguards
					i(275740),	-- Ring of Nature's Cycles
					i(275741),	-- Ketharas' Linked Belt
					i(275736),	-- Horn of Ve'ho
					i(275737),	-- Horned Pauldron
				},
			}),
			q(96999, {	-- Wrap Return
				sourceQuest = 96998,	-- Tribal Colors
				qg = 244511,	-- Zet'gan
				qi = 276064,	-- War Paint Wrap (PQI!)
				coord = { 14.0, 54.8, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				races = HORDE_ONLY,
				lvl = 54,
				groups = {
					i(277215),	-- Nimble Gloves
					i(277222),	-- Feathered Cuffs
				},
			}),
			q(96983, {	-- Yashiro's Windwalk
				sourceQuest = 96959,	-- Blademaster's Bonfires
				qg = 267121,	-- Yashiro
				coord = { 49.3, 32.6, MAP.MOUNT_HYJAL },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 56,
				groups = {
					objective(1, {	-- 0/1 Doomguard Xarkul slain
						provider = { "n", 267439 },	-- Doomguard Xarkul
					}),
					i(276335),	-- Polished Doomguard Edge
					i(276336),	-- Yashiro's Spirit Bead
				},
			}),
		}),
		n(VENDORS, {
			n(264797, {	-- Aisarra Nightmeadow <Keeper of Knowledge>
				coord = { 71.0, 51.2, MAP.MOUNT_HYJAL },
				groups = {	-- Need to add cost//Braghe
					-- Paladin
					i(273976),	-- Plans: Justice Leggings (RECIPE!)
					i(273977),	-- Plans: Justice Gauntlets (RECIPE!)
					i(273978),	-- Plans: Justice Spaulders (RECIPE!)
					i(273979),	-- Plans: Justice Greaves (RECIPE!)
					i(273980),	-- Plans: Justice Legplates (RECIPE!)
					i(273981),	-- Plans: Justice Gloves (RECIPE!)
					i(273982),	-- Plans: Justice Epaulets (RECIPE!)
					i(273983),	-- Plans: Justice Treads (RECIPE!)
					i(273984),	-- Plans: Justice Legguards (RECIPE!)
					i(273985),	-- Plans: Justice Handguards (RECIPE!)
					i(273986),	-- Plans: Justice Pauldrons (RECIPE!)
					i(273987),	-- Plans: Justice Sabatons (RECIPE!)

					-- Warrior
					i(274012),	-- Plans: Legplates of Glory (RECIPE!)
					i(274013),	-- Plans: Gauntlets of Glory (RECIPE!)
					i(274014),	-- Plans: Shoulders of Glory (RECIPE!)
					i(274015),	-- Plans: Greaves of Glory (RECIPE!)
					i(274016),	-- Plans: Legguards of Glory (RECIPE!)
					i(274017),	-- Plans: Handguards of Glory (RECIPE!)
					i(274018),	-- Plans: Pauldrons of Glory (RECIPE!)
					i(274019),	-- Plans: Sabatons of Glory (RECIPE!)

					-- Rogue
					i(273999),	-- Pattern: Grimstitch Boots
					i(273997),	-- Pattern: Grimstitch Gloves
					i(273996),	-- Pattern: Grimstitch Pants
					i(273998),	-- Pattern: Grimstitch Spaulders

					-- Druid
					i(273963),	-- Pattern: Grovekeeper Boots
					i(273965),	-- Pattern: Grovekeeper Gauntlets
					i(273953),	-- Pattern: Grovekeeper Grips
					i(273961),	-- Pattern: Grovekeeper Handguards
					i(273956),	-- Pattern: Grovekeeper Kilt
					i(273964),	-- Pattern: Grovekeeper Leggings
					i(273960),	-- Pattern: Grovekeeper Legguards
					i(273958),	-- Pattern: Grovekeeper Mantle
					i(273957),	-- Pattern: Grovekeeper Mitts
					i(273962),	-- Pattern: Grovekeeper Pauldrons
					i(273959),	-- Pattern: Grovekeeper Sandals
					i(273954),	-- Pattern: Grovekeeper Shoulderpads
					i(273966),	-- Pattern: Grovekeeper Spaulders
					i(273955),	-- Pattern: Grovekeeper Stompers
					i(273967),	-- Pattern: Grovekeeper Treads
					i(273952),	-- Pattern: Grovekeeper Trousers

					-- Shaman
					i(276545, {	-- Pattern: Spiritcaller Boots
						cost = { { "i", 274030, 6 } },	-- 6x Malleable Essence of Nature
					}),
					i(274006),	-- Pattern: Spiritcaller Epaulets
					i(274005),	-- Pattern: Spiritcaller Gauntlets
					i(276543, {	-- Pattern: Spiritcaller Gloves
						cost = { { "i", 274030, 6 } },	-- 6x Malleable Essence of Nature
					}),
					i(274007),	-- Pattern: Spiritcaller Greaves
					i(274001),	-- Pattern: Spiritcaller Grips
					i(276542, {	-- Pattern: Spiritcaller Kilt
						cost = { { "i", 274030, 8 } },	-- 8x Malleable Essence of Nature
					}),
					i(274000),	-- Pattern: Spiritcaller Leggings
					i(276544, {	-- Pattern: Spiritcaller Mantle
						cost = { { "i", 274030, 6 } },	-- 6x Malleable Essence of Nature
					}),
					i(274004),	-- Pattern: Spiritcaller Pants
					i(274002),	-- Pattern: Spiritcaller Spaulders
					i(274003),	-- Pattern: Spiritcaller Treads

					-- Hunter
					i(273969),	-- Pattern: Wildstalker's Gauntlets
					i(273971),	-- Pattern: Wildstalker's Greaves
					i(273968),	-- Pattern: Wildstalker's Legguards
					i(273970),	-- Pattern: Wildstalker's Spaulders

					-- Warlock
					i(273972),	-- Pattern: Manaflare Pants
					i(273973),	-- Pattern: Manaflare Gloves
					i(273974),	-- Pattern: Manaflare Mantle
					i(273975),	-- Pattern: Manaflare Boots

					-- Priest
					i(273988),	-- Pattern: Pants of Conviction
					i(273989),	-- Pattern: Gloves of Conviction
					i(273990),	-- Pattern: Mantle of Conviction
					i(273991),	-- Pattern: Treads of Conviction
					i(273992),	-- Pattern: Leggings of Conviction
					i(273993),	-- Pattern: Handguards of Conviction
					i(273994),	-- Pattern: Pauldrons of Conviction
					i(273995),	-- Pattern: Boots of Conviction

					-- Warlock
					i(274008),	-- Pattern: Demonheart Leggings
					i(274009),	-- Pattern: Demonheart Gloves
					i(274010),	-- Pattern: Demonheart Spaulders
					i(274011),	-- Pattern: Demonheart Boots
				},
			}),
			n(256629, {	-- Dala Fairmaw <Quartermaster>
				coord = { 21.0, 78.6, MAP.MOUNT_HYJAL },
				groups = {
					i(274417, {	-- Barkskin Baubles
						minReputation = { 2747, REVERED },	-- Barkskin Burrow, Revered.
						cost = { { "i", 263439, 10 } },	-- 10x Deadwood Tribal Beads
					}),
					i(262801, {	-- Barkskin Satchel
						minReputation = { 2747, HONORED },	-- Barkskin Burrow, Honored.
						cost = { { "i", 263439, 15 } },	-- 15x Deadwood Tribal Beads
					}),
					i(274419, {	-- Bear Poking Stick
						minReputation = { 2747, REVERED },	-- Barkskin Burrow, Revered.
						cost = { { "i", 263439, 20 } },	-- 20x Deadwood Tribal Beads
					}),
					i(274418, {	-- Burrow Barricade
						minReputation = { 2747, REVERED },	-- Barkskin Burrow, Revered.
						cost = { { "i", 263439, 10 } },	-- 10x Deadwood Tribal Beads
					}),
					i(268873, {	-- Defender of the Barkskin
						minReputation = { 2747, EXALTED },	-- Barkskin Burrow, Exalted.
						cost = { { "i", 263439, 25 } },	-- 25x Deadwood Tribal Beads
					}),
					i(274424, {	-- Formula: Enchant Gloves - Lotus Claw (RECIPE!)
						minReputation = { 2747, HONORED },	-- Barkskin Burrow, Honored.
						cost = { { "i", 263439, 10 } },	-- 10x Deadwood Tribal Beads
					}),
					i(256036),	-- Handful of Dirt
					i(254134, {	-- Pattern: Mooncloth Reagent Bag (RECIPE!)
						minReputation = { 2747, HONORED },	-- Barkskin Burrow, Honored.
						cost = { { "i", 263439, 10 } },	-- 10x Deadwood Tribal Beads
					}),
					i(274415, {	-- Recipe: Sweetpaw Jam (RECIPE!)
						minReputation = { 2747, FRIENDLY },	-- Barkskin Burrow, Friendly.
						cost = { { "i", 263439, 5 } },	-- 5x Deadwood Tribal Beads
					}),
					i(274420, {	-- Wisepaw Totem
						minReputation = { 2747, REVERED },	-- Barkskin Burrow, Revered.
						cost = { { "i", 263439, 20 } },	-- 20x Deadwood Tribal Beads
					}),
				},
			}),
			n(266901, {	-- Pexmit <Someone's Minion>
				coord = { 58.8, 41.8, MAP.MOUNT_HYJAL },
				groups = {
					i(255729),	-- Manual: Major Healing Potion (RECIPE!)
					i(254124),	-- Pattern: Runecloth Cuffs (RECIPE!)
					i(252933),	-- Pattern: Supple Scorpid Vest (RECIPE!)
					i(252877),	-- Pattern: Tooled Leather Armor (RECIPE!)
					i(251468),	-- Plans: Bold Dirk (RECIPE!)
					i(264233),	-- Schematic: Dimensional Transporter: Mt. Hyjal (RECIPE!)
				},
			}),
			n(255151, {	-- Rhylin Stonethorn
				coord = { 70.6, 51.2, MAP.MOUNT_HYJAL },
				groups = {
					i(274025),	-- Guardians of Hyjal Tabard
					i(274379, {	-- Rousing Seed Pod
						minReputation = { 2765, REVERED },	-- Guardians of Hyjal, Revered.
					}),
				},
			}),
		}),
	},
});
