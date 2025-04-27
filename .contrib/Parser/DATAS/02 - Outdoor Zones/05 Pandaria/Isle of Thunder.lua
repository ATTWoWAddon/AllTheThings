---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(PANDARIA, {
		applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, m(ISLE_OF_THUNDER, {
			["lore"] = "The Isle of Thunder is an island found northwest of Kun-Lai Summit and Townlong Steppes. Members of the newly-formed Kirin Tor Offensive and the Sunreaver Onslaught are facing off to lay claim to the isle before the other faction does. Members of the Shado-Pan Assault are united in their singular drive to take down Lei Shen at his seat of power, the Throne of Thunder, once and for all.",
			["timeline"] = { ADDED_5_2_0 },
			["icon"] = 136014,
			["maps"] = {
				505,	-- Lightning Vein Mine
				506,	-- The Swollen Vault
				516,	-- Scenario [Phase 1]
				517,	-- Lightning Vein Mine
			},
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(8121, {	-- Stormbreaker
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							8112,	-- Blue Response
							8118,	-- Boop
							8120,	-- Direhorn in a China Shop
							8117,	-- For the Ward!
							8099,	-- Isle of Thunder
							8101,	-- It Was Worth Every Ritual Stone
							8119,	-- Our Powers Combined
							8114,	-- Platform Hero
							8107,	-- Ready for RAAAAIIIIDDD?!?ing
							8115,	-- Speed Metal
							8110,	-- These Mogu Have Gotta Go-gu
							8111,	-- This Isn't Even My Final Form
							8104,	-- Thunder Plunder
							8108,	-- When in Ihgaluk, Do as the Skumblade Do
							8116,	-- You Made Me Bleed My Own Blood
						}},
						["groups"] = {
							title(221),		-- the Stormbreaker
						},
					}),
					ach(8112),	-- Blue Response
					ach(8118),	-- Boop
					ach(8103, {	-- Champions of Lei Shen (Isle of Thunder)
						crit(22820),	-- Haywire Sunreaver Construct
						crit(22821),	-- Mumta
						crit(22822),	-- Ku'lai the Skyclaw
						crit(22823),	-- Progenitus
						crit(22824),	-- Goda
						crit(22825),	-- God-Hulk Ramuk
						crit(22826),	-- Al'tabim the All-Seeing
						crit(22827),	-- Backbreaker Uru
						crit(22828),	-- Lu-Ban
						crit(22829),	-- Molthor
					}),
					ach(8120),	-- Direhorn in a China Shop
					ach(8117),	-- For the Ward!
					ach(8051),	-- Gods and Monsters (automated)
					ach(8099, {		-- Isle of Thunder
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(8101, {	-- It Was Worth Every Ritual Stone
						crit(22814),	-- Spirit of Warlord Teng
						crit(22815),	-- Kor'dok and Tinzo the Emberkeeper
						crit(22812),	-- Echo of Kros
						crit(23205),	-- Electromancer Ju'le
						crit(22763),	-- Qi'nor
						crit(22817),	-- Ancient Mogu Guardian
						crit(22759),	-- Windweaver Akil'amon
						crit(22813),	-- Cera
						crit(23206),	-- Incomplete Drakkari Colossus
					}),
					ach(8119, {	-- Our Powers Combined
						crit(22844),	-- All four blessings active
						crit(22845),	-- No blessings active
					}),
					ach(8100),	-- Pay to Slay
					ach(8114),	-- Platform Hero
					ach(8107),	-- Ready for RAAAAIIIIDDD?!?ing
					ach(8050),	-- Rumbles of Thunder (automated)
					ach(8115),	-- Speed Metal
					ach(8049),	-- The Zandalari Prophecy (automated)
					ach(8110, {	-- These Mogu Have Gotta Go-gu
						ach(8109),	-- The Mogu Below-gu
						crit(22836, {	-- Haqin of the Hundred Spears slain
							["_npcs"] = { 69800 },
						}),
						crit(22837, {	-- Forgemaster Deng slain
							["_npcs"] = { 69809 },
						}),
						crit(22838, {	-- Sparkmancer Vu slain
							["_npcs"] = { 69961 },
						}),
					}),
					ach(8111, {	-- This Isn't Even My Final Form
						["description"] = "Kill Drakkari God-Hulk patrolling on foot path near coord, then drink a Zandalari Potion nearby.",
						["coord"] = { 36.6, 70.2, ISLE_OF_THUNDER },
						["providers"] = {
							{ "n", 69200 },	-- Drakkari God-Hulk
							{ "o", 218059 },	-- Zandalari Potion
						}
					}),
					ach(8104),	-- Thunder Plunder
					ach(8108, {	-- When in Ihgaluk, Do as the Skumblade Do
						crit(22832),	-- Kroshik Egg
						crit(22833),	-- Baby Kroshik
						crit(22834),	-- Adult Kroshik
						crit(22835),	-- Sacrificed Kroshik
					}),
					ach(8116, {	-- You Made Me Bleed My Own Blood
						["provider"] = { "n", 69435 },	-- Fleshcrafter Hoku
					}),
					ach(8212, {	-- Zandalari Library Card
						["sym"] = {{ "achievement_criteria" }},
					}),
				}),
				petbattle(filter(BATTLE_PETS, {
					pet(1181),	-- Elder Python (PET!)
					pet(1179),	-- Electrified Razortooth (PET!)
					pet(1182),	-- Swamp Croaker (PET!)
					pet(1175),	-- Thundertail Flapper (PET!)
				})),
				n(FACTIONS, {
					faction(FACTION_KIRIN_TOR_OFFENSIVE, {	-- Kirin Tor Offensive
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							n(ACHIEVEMENTS, {
								ach(8208, {		-- Kirin Tor Offensive
									["races"] = ALLIANCE_ONLY,
								}),
							}),
							n(68000, {	-- Hiren Loresong <Kirin Tor Offensive Quartermaster>
								["coord"] = { 64.6, 74.6, ISLE_OF_THUNDER },
								["races"] = ALLIANCE_ONLY,
								["g"] = bubbleDownClassicRep(FACTION_KIRIN_TOR_OFFENSIVE, {
									{		-- Neutral
										i(97191),	-- Ancient Overlord's Onyx Band
										i(97189),	-- Ancient Primalist's Seal
										i(80433),	-- Blood Spirit
										i(97207),	-- Cloak of the Immortal Guardian
										i(95490, {	-- Greater Kirin Tor Offensive Insignia
											["cost"] = {{"i",95491,10}},	-- Tattered Historical Parchments
										}),
										i(95567),	-- Kirin Tor Beacon (TOY!)
										i(95489, {	-- Kirin Tor Offensive Insignia
											["cost"] = {{"i",95491,1}},	-- Tattered Historical Parchments
										}),
										i(97187),	-- Refurbished Band of Jin
										i(97190),	-- Refurbished Seal of Jin
										i(97188),	-- Restored Hexxer's Signet
										i(97205),	-- Shan'ze Gravetender Cloak
										i(97206),	-- Shan'ze Partisan's Greatcloak
										i(97204),	-- Static-Collecting Cloak
										i(97203),	-- Thunder-Chaser Cloak
									}, {	-- Friendly
										i(95054),	-- Potion of Light Steps
									}, {	-- Honored
										i(95053),	-- A Common Rock
										i(95532),	-- Belt of Loa Charms
										i(95530),	-- Cinch of the Dead Forest's Vigil
										i(95529),	-- Girdle of Shan'ze Glory
										i(95527),	-- Pain-Binder Girdle
										i(95531),	-- Rotting Bog Cinch
										i(95526),	-- Shan'ze Scholar's Girdle
										i(95534),	-- Skumblade Ritualist Links
										i(95528),	-- Skumblade-Tooth Girdle
										i(95093),	-- Sleep Dust
										i(95533),	-- Thunder Caressed Waistguard
									}, {	-- Revered
										i(95052),	-- Arcane Propellant
										i(95055),	-- Frost Rune Trap
										i(95545),	-- Grand Commendation of the Kirin Tor Offensive
									}, {	-- Exalted
										i(98560),	-- Arcane Trove
										i(98558),	-- Empty Supply Crate
										i(95591),	-- Kirin Tor Offensive Tabard
										i(95056),	-- Polymorphic Key
										i(95564, {	-- Reins of the Golden Primal Direhorn (MOUNT!)
											["cost"] = 30000000,	-- 3,000g
										}),
									},
								}),
							}),
							n(QUESTS, sharedData({
								["races"] = ALLIANCE_ONLY,
							},{
								q(32655),	-- A Bold Idea
								q(32706, {	-- Allies in the Shadows
									["sourceQuest"] = 32681,	-- The Storm Gathers
									["providers"] = {
										{ "n", 67992 },	-- Lady Jaina Proudmoore <Leader of the Kirin Tor>
										{ "n", 70370 },	-- Lady Jaina Proudmoore <Leader of the Kirin Tor>
									},
									["coord"] = { 34.7, 89.5, ISLE_OF_THUNDER },
								}),
								q(32599, {    -- Securing A Future
									["provider"] = { "n", 67992 },    -- Lady Jaina Proudmoore
									["minReputation"] = { FACTION_KIRIN_TOR_OFFENSIVE, EXALTED },    -- Kirin Tor Offensive
									["g"] = {
										i(95589),	-- Glorious Standard of the Kirin Tor Offensive (TOY!)
									},
								}),
								q(32549, {	-- Skin of the Saurok (A)
									["provider"] = { "n", 69678 },	-- Image of Archmage Vargoth
									["coord"] = { 55.6, 74.4, ISLE_OF_THUNDER },
								}),
								q(32654, {	-- Tear Down This Wall! (A)
									["provider"] = { "n", 67992 },	-- Lady Jaina Proudmoore
									["coord"] = { 63.3, 72.3, ISLE_OF_THUNDER },
								}),
								q(32644, {	-- The Assault on Shaol'mara
									["provider"] = { "n", 67992 },	-- Lady Jaina Proudmoore
									["coord"] = { 34.7, 89.5, ISLE_OF_THUNDER },
								}),
								q(32656),	-- The Fall of Shan Bu (A)
								q(32652),	-- To the Skies! (A)
							})),
							-- Weekly
							n(QUESTS, sharedData({
								["isWeekly"] = true,
								["races"] = ALLIANCE_ONLY,
							},{
								q(32640),	-- Champions of the Thunder King (A)
							})),
							-- Daily
							n(QUESTS, sharedData({
								["isDaily"] = true,
								["races"] = ALLIANCE_ONLY,
							},{
								q(32571),	-- A Wing to Fly On (A)
								q(32558),	-- All In the Family
								q(32578),	-- Among the Bones (A)
								q(32525),	-- Ashes of the Enemy (A)
								q(32485),	-- Bolstering the Defenses (A)
								q(32634),	-- Breaking Down the Defenses (A)
								q(32636),	-- Captive Audience (A)
								q(32555),	-- Centuries in Sentries
								q(32627),	-- Charged Moganite (A)
								q(32576),	-- Competing Magic (A)
								q(32579),	-- Competing Magic (A)
								q(32551),	-- Compy Stomp	(A)
								q(32543),	-- Dangers of Za'Tual (A)
								q(32539),	-- Dark Offerings (A)
								q(32537),	-- De-Constructed (A)
								q(32639),	-- Deconstruction (A)
								q(32554),	-- Dino Might (A)
								q(32553),	-- Direhorn vs Devilsaur (A)
								q(32580),	-- Encroaching Force (A)
								q(32584),	-- Encroaching Force (A)
								q(32585),	-- Encroaching Force (A)
								q(32573),	-- Enemies Beneath the Tower (A)
								q(32635),	-- Enough with the Bombs!
								q(32559),	-- Even Giants Fall
								q(32607),	-- Extended Shore Leave (A)
								q(32724, {	-- Forge Ahead! (A)
									["classes"] = { PALADIN, WARLOCK },
									["races"] = { DRAENEI, WORGEN },
								}),
								q(32587, {	-- Forge Ahead! (A)
								--	possibly races other than Draenei / Worgen and classes other than Paladin and Warlock?
									["groups"] = {
										i(93731),	-- Mogu Codex Fragment (QI!)
									},
								}),
								q(32527),	-- Grave Circumstances (A)
								q(32540),	-- Harbingers of the Loa (A)
								q(32538),	-- Heinous Sacrifice (A)
								q(32631),	-- High Recognition (A)
								q(32732),	-- Ihgaluk Crag (A)
								q(32577),	-- Imposing Threat (A)
								q(32581),	-- Imposing Threat (A)
								q(32528),	-- Into the Crypts (A)
								q(32546),	-- Just Some Light Clean-Up Work (A)
								q(32560),	-- Keep It Secret (A)
								q(32548),	-- Left To Rot (A)
								q(32552),	-- Loa-saur (A)
								q(32632),	-- Made for War (A)
								q(32638),	-- Mana Scavengers (A)
								q(32536),	-- Manipulating the Saurok (A)
								q(32586),	-- Maximum Capacitor (A)
								q(32568),	-- No Time To Rest (A)
								q(32301),	-- Old Enemies (A)
								q(32588, {	-- On Her Magic-ey Secret Service (A)
									["groups"] = {
										i(93761),	-- Arcane Emancipator (QI!)
									},
								}),
								q(32557, {	-- Out of Enemy Hands (A)
									["groups"] = {
										o_repeated({
											i(93736),	-- Loa-Infused Blade (QI!)
											o(218055),	-- Loa-Infused Blade
											o(218056),	-- Loa-Infused Blade
										}),
									},
								}),
								q(32637),	-- Overpowered (A)
								q(32541),	-- Preventing a Future Threat (A)
								q(32544),	-- Pterrible Ptorment (A)
								q(32608, {	-- Raiding the Vault (A)
									["groups"] = {
										i(95374),	-- Hoard-Keeper's Key (QI!)
										o(218853, {	-- Stormy Chest
											i(95372),	-- Choker of Storms (QI!)
										}),
									},
								}),
								q(32582),	-- Raining Bones (A)
								q(32532),	-- Rise No More! (A)
								q(32550),	-- Saur Loser (A)
								q(32526),	-- Soul Surrender (A)
								q(32633),	-- Spellbound (A)
								q(32533),	-- Stone Cold (A)
								q(32606),	-- Subtle Encouragement (A)
								q(32542),	-- Surgical Strike
								q(32628),	-- Tactical Mana Bombs (A)
								q(32567),	-- The Beast Pens (A)
								q(32530),	-- The Bloodletter (A)
								q(32529),	-- The Call of Thunder (A)
								q(32531),	-- The Conquest of Stone (A)
								q(32731),	-- The Court of Bones (A)
								q(32547),	-- The Creeping Carpet of Ihgaluk (A)
								q(32556),	-- The More You Know
								q(32545),	-- The Residents of Ihgaluk (A)
								q(32574),	-- The Shuddering Moor (A)
								q(32535),	-- The Skumblade Threat (A)
								q(32572),	-- The Sleepless Legion (A)
								q(32575),	-- The Zandalari Colossus (A)
								q(32733),	-- Za'Tual (A)
								q(32583),	-- Zandalari on the Rise (A) -- not implemented?
							})),
						},
					}),
					faction(FACTION_SUNREAVER_ONSLAUGHT, {	-- Sunreaver Onslaught
						["races"] = HORDE_ONLY,
						["g"] = {
							n(ACHIEVEMENTS, {
								ach(8209, {		-- Sunreaver Onslaught
									["races"] = HORDE_ONLY,
								}),
							}),
							n(67672, {	-- Vasarin Redmorn <Sunreaver Onslaught Quartermaster>
								["coord"] = { 33.4, 32.4, ISLE_OF_THUNDER },
								["races"] = HORDE_ONLY,
								["g"] = bubbleDownClassicRep(FACTION_SUNREAVER_ONSLAUGHT, {
									{		-- Neutral
										i(97196),	-- Ancient Overlord's Onyx Band
										i(97194),	-- Ancient Primalist's Seal
										i(80433),	-- Blood Spirit
										i(97212),	-- Cloak of the Immortal Guardian
										i(95488, {	-- Greater Sunreaver Onslaught Insignia
											["cost"] = {{"i",95491,10}},	-- Tattered Historical Patchments
										}),
										i(97192),	-- Refurbished Band of Jin
										i(97195),	-- Refurbished Seal of Jin
										i(97193),	-- Restored Hexxer's Signet
										i(97210),	-- Shan'ze Gravetender Cloak
										i(97211),	-- Shan'ze Partisan's Greatcloak
										i(97209),	-- Static-Collecting Cloak
										i(95568),	-- Sunreaver Beacon (TOY!)
										i(95487, {	-- Sunreaver Onslaught Insignia
											["cost"] = {{"i",95491,1}},	-- Tattered Historical Patchments
										}),
										i(97208),	-- Thunder-Chaser Cloak
									}, {	-- Friendly
										i(97157),	-- Potion of Light Steps
									}, {	-- Honored
										i(97158),	-- A Common Rock
										i(95523),	-- Belt of Loa Charms
										i(95521),	-- Cinch of the Dead Forest's Vigil
										i(95520),	-- Girdle of Shan'ze Glory
										i(95518),	-- Pain-Binder Girdle
										i(95522),	-- Rotting Bog Cinch
										i(95517),	-- Shan'ze Scholar's Girdle
										i(95525),	-- Skumblade Ritualist Links
										i(95519),	-- Skumblade-Tooth Girdle
										i(97154),	-- Sleep Dust
										i(95524),	-- Thunder Caressed Waistguard
									}, {	-- Revered
										i(97159),	-- Arcane Propellant
										i(97156),	-- Frost Rune Trap
										i(95548),	-- Grand Commendation of the Sunreaver Onslaught
									}, {	-- Exalted
										i(98559),	-- Empty Supply Crate
										i(97155),	-- Polymorphic Key
										i(95565, {	-- Reins of the Crimson Primal Direhorn (MOUNT!)
											["cost"] = 30000000,	-- 3,000g
										}),
										i(98562),	-- Sunreaver Bounty
										i(95592),	-- Sunreaver Onslaught Tabard
									},
								}),
							}),
							n(QUESTS, sharedData({
								["races"] = HORDE_ONLY,
							},{
								q(32709, {	-- Allies in the Shadows
									["sourceQuest"] = 32680,	-- The Storm Gathers
									["providers"] = {
										{ "n", 67990 },	-- Lor'themar Theron <Regent Lord of Quel'Thalas>
										{ "n", 70371 },	-- Lor'themar Theron <Regent Lord of Quel'Thalas>
									},
								}),
								q(32589, {	-- Life Blood (H)
									["provider"] = { "n", 67990 },	-- Lor'themar Theron
									["coord"] = { 32.6, 35.5, ISLE_OF_THUNDER },
									["minReputation"] = { FACTION_SUNREAVER_ONSLAUGHT, EXALTED },	-- Sunreaver Onslaught
									["g"] = {
										i(95590),	-- Glorious Standard of the Sunreaver Onslaught (TOY!)
									},
								}),
								q(32507, {	-- Skin of the Saurok (H)
									["provider"] = { "n", 69433 },	-- Magistrix Saia
									["coord"] = { 46.9, 66.8, ISLE_OF_THUNDER },
								}),
								q(32276, {	-- Tear Down This Wall! (H)
									["groups"] = {
										objective(1, {	-- Obtain Heavy Explosives
											["providers"] = {
												{ "o", 218196 },	-- Heavy Explosives
												{ "i", 93962 },	-- Heavy Explosives
											},
											["coord"] = { 48.4, 51, ISLE_OF_THUNDER },
										}),
									},
								}),
								q(32212),	-- The Assault on Zeb'tula (H)
								q(32277),	-- To the Skies! (H)
								q(32278, {	-- Decisive Action (H)
									["sourceQuest"] = 32277,	-- To the Skies (H)
									["provider"] = { "n", 70297},	-- Taoshi
									["coord"] = { 32.8, 32.6, ISLE_OF_THUNDER },
									["groups"] = {
										i(94918),	-- Gatekeeper's Orb (QI!)
									},
								}),
								q(32279, {	-- The Fall of Shan Bu (H)
									["sourceQuest"] = 32278,	-- Decisive Action (H)
									["provider"] = { "n", 67990},	-- Lor'themar Theron
									["coord"] = { 32.5, 35.5, ISLE_OF_THUNDER },
								}),
							})),
							-- Weekly
							n(QUESTS, sharedData({
								["isWeekly"] = true,
								["races"] = HORDE_ONLY,
							},{
								q(32641),	-- Champions of the Thunder King (H)
							})),
							-- Daily
							n(QUESTS, sharedData({
								["isDaily"] = true,
								["races"] = HORDE_ONLY,
							},{
								-- TODO: anyone care to fill out more information on these? haha.
								q(32506),	-- A Wing to Fly On (H)
								q(32293),	-- Among the Bones (H)
								q(32218),	-- Ashes of the Enemy (H)
								q(32288),	-- Bolstering the Defenses (H)
								q(32269),	-- Breaking Down the Defenses (H)
								q(32262),	-- Captive Audience (H)
								q(32265),	-- Charged Moganite (H)
								q(32520),	-- Competing Magic (H)
								q(32561),	-- Competing Magic (H)
								q(32282),	-- Compy Stomp (H)
								q(32200),	-- Dangers of Za'Tual (H)
								q(32217),	-- Dark Offerings (H)
								q(32255, {	-- De-Constructed (H)
									["provider"] = { "n", 67660 },	-- Archmage Aethas Sunreaver
									["coord"] = { 46.8, 66.9, ISLE_OF_THUNDER },
								}),
								q(32302),	-- Deconstruction (H)
								q(32298),	-- Dino Might (H)
								q(32297),	-- Direhorn or Devilsaur (H)
								q(32300),	-- Disarming Irony
								q(32521),	-- Encroaching Force (H)
								q(32563),	-- Encroaching Force (H)
								q(32565),	-- Encroaching Force (H)
								q(32287),	-- Enemies Beneath the Tower (H)
								q(32676),	-- Extended Shore Leave (H)
								q(32722, {	-- Forge Ahead! (H)
									["races"] = { BLOODELF, ORC, UNDEAD },
								}),
								q(32292, {	-- Forge Ahead! (H)
								--	possibly Horde races other than Blood Elf, Orc, and Undead? Vupera
									["sourceQuests"] = {
										32208,	-- Maximum Capacitor
										32209,	-- Save Our Scouts! (H)
									},
									["sourceQuestNumRequired"] = 1,
									["groups"] = {
										i(93731),	-- Mogu Codex Fragment (QI!)
									},
								}),
								q(32201),	-- Grave Circumstances (H)
								q(32252),	-- Harbingers of the Loa (H)
								q(32215),	-- Heinous Sacrifice (H)
								q(32304),	-- High Recognition (H)
								q(32730, {	-- Ihgaluk Crag (H)
									["provider"] = { "n", 67663 },	-- Magister Hathorel
									["coord"] = { 32.4, 35.2, ISLE_OF_THUNDER },
								}),
								q(32562),	-- Imposing Threat (H)
								q(32522),	-- Imposing Threat (H)
								q(32226),	-- Into the Crypts (H)
								q(32299),	-- Just Some Light Clean-Up Work (H)
								q(32234),	-- Knowledge Is Power (H)
								q(32491, {	-- Left To Rot (H)
									["provider"] = { "n", 69371 },	-- Amalia Penshire
									["coord"] = { 47.0, 66.7, ISLE_OF_THUNDER },
								}),
								q(32283),	-- Loa-saur (H)
								q(32303),	-- Made for War (H)
								q(32266),	-- Mana Manifestations (H)
								q(32254),	-- Manipulating the Saurok (H)
								q(32208),	-- Maximum Capacitor (H)
								q(32213),	-- Old Enemies (H)
								q(32305),	-- Overpowered (H)
								q(32494, {	-- Power Play (H)
									["groups"] = {
										i(93733),	-- Mask of the Spirit-Caller (QI!)
										i(93734),	-- Mask of the Dark Mystic (QI!)
									},
								}),
								q(32227),	-- Preventing a Future Threat (H)
								q(32216),	-- Pterrible Ptorment (H)
								q(32677, {	-- Raiding the Vault (H)
									["sourceQuest"] = 32292,	-- Forge Ahead (H)
									["groups"] = {
										i(95374),	-- Hoard-Keeper's Key (QI!)
										o(218853, {	-- Stormy Chest
											i(95372),	-- Choker of Storms (QI!)
										}),
									},
								}),
								q(32294),	-- Raining Bones (H)
								q(32224),	-- Rise No More! (H)
								q(32207),	-- Saur Loser (H)
								q(32209, {	-- Save Our Scouts! (H)
									["provider"] = { "n", 67986 },	-- Magister Edien Sunhollow
									["groups"] = {
										i(93761),	-- Arcane Emancipator (QI!)
									},
								}),
								q(32220),	-- Soul Surrender (H)
								q(32264),	-- Spellbound (H)
								q(32219),	-- Stone Cold (H)
								q(32605),	-- Subtle Encouragement (H)
								q(32275),	-- Surgical Death
								q(32268),	-- Tactical Mana Bombs (H)
								q(32523),	-- The Beast Pens (H)
								q(32524),	-- The Beating of Troll Drums
								q(32495),	-- The Bloodletter (H)
								q(32225),	-- The Call of Thunder (H)
								q(32517),	-- The Conquest of Stone (H)
								q(32728),	-- The Court of Bones (H)
								q(32489),	-- The Creeping Carpet of Ihgaluk (H)
								q(32274, {	-- The Residents of Ihgaluk (H)
									["provider"] = { "n", 69425 },	-- Sunwalker Dezco
									["coord"] = { 46.7, 66.7, ISLE_OF_THUNDER },
								}),
								q(32228, {	-- The Shuddering Moor (H)
									["provider"] = { "n", 67673 },	-- Girana the Blooded
									["coord"] = { 32.4, 35.2, ISLE_OF_THUNDER },
								}),
								q(32204, {	-- The Skumblade Threat (H)
									["provider"] = { "n", 67660 },	-- Archmage Aethas Sunreaver
									["coord"] = { 46.8, 66.9, ISLE_OF_THUNDER },
								}),
								q(32285),	-- The Sleepless Legion (H)
								q(32230),	-- The Zandalari Colossus (H)
								q(32493),	-- They All Fall Down
								q(32206),	-- This Just Won't Do
								q(32233, {	-- Very Disarming
									["groups"] = {
										o_repeated({
											i(93736),	-- Loa-Infused Blade (QI!)
											o(218055),	-- Loa-Infused Blade
											o(218056),	-- Loa-Infused Blade
										}),
									},
								}),
								q(32232),	-- What's Inside Counts
								q(32729),	-- Za'Tual (H)
								q(32564),	-- Zandalari on the Rise (H) -- not implemented?
							})),
						},
					}),
				}),
				n(QUESTS, {
					q(32505, {	-- The Crumbled Chamberlain
						["isWeekly"] = true,
						["g"] = {
							ach(8105),	-- The Crumble Bundle
						},
					}),
					q(32708, {	-- Setting the Trap
						["coord"] = { 51.4, 46.0, ISLE_OF_THUNDER },
						["qg"] = 70160,	-- Taran Zhu <Lord of the Shado-Pan>
					}),
					q(32707, {	-- Secrets in the Isle of Thunder
						["coord"] = { 51.4, 46.0, ISLE_OF_THUNDER },
						["provider"] = { "n", 70160 },	-- Taran Zhu <Lord of the Shado-Pan>
						["sourceQuests"] = {
							32709,	-- Allies in the Shadows [Horde]
							32706,	-- Allies in the Shadows [Alliance]
						},
					}),
					q(32296, {	-- Treasures of the Thunder King
						["isWeekly"] = true,
						["cost"] = { { "i", 94222, 1} },	-- 1x Key to the Palace of Lei Shen
						["qg"] = 70316,	-- Taoshi
						["_drop"] = { "g" },	-- unnecessary API data
						["g"] = {
							m(518, {	-- Thunder King's Citadel
								ach(8106, {				-- In the Hall of the Thunder King
									["groups"] = {
										crit(22910),			-- Obtain a Handful of Stolen Gems from the Treasure Saurok
										crit(23207),			-- Loot 10 Golden Treasure Chests in one run
										crit(22981),			-- Slay God-Hulk Gulkan
										crit(22980),			-- Reach Tenwu of the Red Smoke
									},
									-- removed 'classes' since I've found no evidence this is restricted to Rogues...
								}),
								i(95497, {	-- Burial Trove Key
									["description"] = "Used to open the Lei Shen's Burial Troves at the rest area after completing the scenario. These chests have a chance to contain  Tome of Otherworldly Venoms, which unlocks the hidden appearance!",
									["g"] = {
										i(139571, {	-- Tome of Otherwordly Venoms
											artifact(891),	-- Fangs of the Devourer [Main Hand]
											-- artifact(891),	-- Fangs of the Devourer [Off-Hand]
										}),
									},
								}),
								i(95496),	-- Shado-Pan Assault Insignia
								i(95491, {	-- Tattered Historical Parchments
									["description"] = "These parchments are inside chests in the solo scenario, which is accessible after getting a Key to the Palace of Lei Shen.",
								}),
							}),
						},
					}),
				}),
				n(RARES, {
					-- Specific Rare Drops
					n(COMMON_BOSS_DROPS, {
						i(94566, {	-- Fortuitous Coffer
							["crs"] = {
								69809,	-- Forgemaster Deng
								69800,	-- Haqin of the Hundred Spears
								69961,	-- Sparkmancer Vu
							},
							["sym"] = {{"select","itemID",
								95409,	-- Iron-Bound Zandalari Journal
								95410,	-- Blood-Spattered Zandalari Journal
								95411,	-- Torn Zandalari Journal
								95412,	-- Frayed Zandalari Journal
								95408,	-- Waterlogged Zandalari Journal
							}},
							["g"] = {
								currency(697),	-- Elder Charm of Good Fortune
							},
						}),
					}),
					-- Rare Drops
					n(COMMON_BOSS_DROPS, sharedData({
						["crs"] = {
							70000,	-- Al'tabim the All-Seeing
							70001,	-- Backbreaker Uru
							69999,	-- God-Hulk Ramuk
							69998,	-- Goda
							50358,	-- Haywire Sunreaver Construct
							69996,	-- Ku'lai the Skyclaw
							70002,	-- Lu-Ban
							70003,	-- Molthor
							69664,	-- Mumta
							69997,	-- Progenitus
						},
					},{
						i(94233),	-- Incantation of Deng
						i(94130),	-- Incantation of Haqin
						i(95350),	-- Incantation of Vu
						i(94221, {	-- Shan'ze Ritual Stone
							["description"] = "You will need 3 stones to summon special rares at their specific spawn points.",
						}),
						i(97268, {	-- Tome of Valor
							["timeline"] = { ADDED_5_2_0, REMOVED_5_3_0 },
						}),
						-- TODO: maybe make it more clear this is a 'looted' trigger via built-in handling?
						header(HEADERS.Item, 94221, {	-- Shan'ze Ritual Stone [looted]
							["description"] = "Whether this will be lootable from Rares.",
							["questID"] = 32610,
						}),
					})),
					n(70000, {	-- Al'tabim the All-Seeing
						["isWeekly"] = true,
						["coord"] = { 44.7, 29.8, ISLE_OF_THUNDER },
						["g"] = {
							crit(22826, {	-- Al'tabim the All-Seeing
								["achievementID"] = 8103,	-- Champions of Lei Shen
							}),
						},
					}),
					n(70001, {	-- Backbreaker Uru
						["isWeekly"] = true,
						["coords"] = {
							{ 48.0, 25.5, ISLE_OF_THUNDER },
							{ 42.9, 36.3, 505 },
						},
						["g"] = {
							crit(22827, {	-- Backbreaker Uru
								["achievementID"] = 8103,	-- Champions of Lei Shen
							}),
						},
					}),
					n(69809, {	-- Forgemaster Deng
						["provider"] = {"i",94233},	-- Incantation of Deng
					}),
					n(69999, {	-- God-Hulk Ramuk
						["isWeekly"] = true,
						["coord"] = { 61.4, 49.5, ISLE_OF_THUNDER },
						["g"] = {
							crit(22825, {	-- God-Hulk Ramuk
								["achievementID"] = 8103,	-- Champions of Lei Shen
							}),
						},
					}),
					n(69998, {	-- Goda
						["isWeekly"] = true,
						["coord"] = { 53.7, 53.1, ISLE_OF_THUNDER },
						["g"] = {
							crit(22824, {	-- Goda
								["achievementID"] = 8103,	-- Champions of Lei Shen
							}),
						},
					}),
					n(69800, {	-- Haqin of the Hundred Spears
						["provider"] = {"i",94130},	-- Incantation of Haqin
					}),
					n(50358, {	-- Haywire Sunreaver Construct
						["isWeekly"] = true,
						["coords"] = {
							{ 48.4, 86.4, ISLE_OF_THUNDER },
							{ 50.2, 90.8, ISLE_OF_THUNDER },
							},
							["g"] = {
							crit(22820, {	-- Haywire Sunreaver Construct
								["achievementID"] = 8103,	-- Champions of Lei Shen
							}),
							i(94124),	-- Sunreaver Micro-Sentry (PET!)
						},
					}),
					n(69461, {	-- Itoka <Master of the Forge>
						-- ["questID"] = ,
						["coord"] = { 57.6, 33.8, ISLE_OF_THUNDER },
						["g"] = {
							i(94721),	-- Strange Metal Ingot
						},
					}),
					n(69996, {	-- Ku'lai the Skyclaw
						["isWeekly"] = true,
						["coords"] = {
							{ 33.0, 81.0, ISLE_OF_THUNDER },
							{ 37.6, 82.6, ISLE_OF_THUNDER },
						},
						["g"] = {
							crit(22822, {	-- Ku'lai the Skyclaw
								["achievementID"] = 8103,	-- Champions of Lei Shen
							}),
						},
					}),
					n(70002, {	-- Lu-Ban
						["isWeekly"] = true,
						["coord"] = { 54.3, 35.4, ISLE_OF_THUNDER },
						["g"] = {
							crit(22825, {	-- Lu-Ban
								["achievementID"] = 8103,	-- Champions of Lei Shen
							}),
						},
					}),
					n(70003, {	-- Molthor
						["isWeekly"] = true,
						["coords"] = {
							{ 63.5, 49.2, ISLE_OF_THUNDER },
							{ 39.0, 37.2, 506 },
						},
						["g"] = {
							crit(22829, {	-- Molthor
								["achievementID"] = 8103,	-- Champions of Lei Shen
							}),
						},
					}),
					n(69664, {	-- Mumta
						["isWeekly"] = true,
						["coord"] = { 35.10, 62.45, ISLE_OF_THUNDER },
						["g"] = {
							crit(22821, {	-- Mumta
								["achievementID"] = 8103,	-- Champions of Lei Shen
							}),
						},
					}),
					n(69997, {	-- Progenitus
						["isWeekly"] = true,
						["coords"] = {
							{ 51.31, 71.19, ISLE_OF_THUNDER },	-- Spawn
							{ 50.49, 74.96, ISLE_OF_THUNDER },	-- Path Start
						},
						["g"] = {
							crit(22823, {	-- Progenitus
								["achievementID"] = 8103,	-- Champions of Lei Shen
							}),
						},
					}),
					n(70530, {	-- Ra'sha
						["coord"] = { 39.41, 81.60, ISLE_OF_THUNDER },
						["g"] = {
							i(95566),	-- Ra'sha's Sacrificial Dagger
							i(94158),	-- Big Bag of Zandalari Supplies
							i(94159),	-- Small Bag of Zandalari Supplies
						},
					}),
					n(69961, {	-- Sparkmancer Vu
						["provider"] = {"i",95350},	-- Incantation of Vu
					}),
				}),
				n(RARES, sharedData({
					["cost"] = {{"i",94221,3}},	-- Shan'ze Ritual Stone
				},{
					n(69767, {	-- Ancient Mogu Guardian
						["coord"] = { 53.13, 47.07, ISLE_OF_THUNDER },
						["crs"] = { 70197 },	-- Lightning Ritual Stone
						["g"] = {
							i(94826),	-- Mogu Sportsman's Bow
						},
					}),
					n(69396, {	-- Cera
						["coords"] = {
							{ 33.18, 45.58, ISLE_OF_THUNDER },
							{ 57.84, 79.17, ISLE_OF_THUNDER },
						},
						["crs"] = {
							70614,	-- Primal Ritual Stone
							70199,	-- Primal Ritual Stone
						},
						["g"] = {
							i(94706),	-- Cera's Impalers
						},
					}),
					n(69341, {	-- Echo of Kros
						["coord"] = { 55.1, 87.7, ISLE_OF_THUNDER },
						["crs"] = { 70203 },	-- Spirit Ritual Stone
						["g"] = {
							i(94708),	-- Saurok Ritualist's Sacrificial Dagger
						},
					}),
					n(69339, {	-- Electromancer Ju'le
						["crs"] = { 69770 },	-- Lightning Ritual Stone
						["coord"] = { 44.4, 61.0, ISLE_OF_THUNDER },
						["g"] = {
							i(94825),	-- Lightning Snare
						},
					}),
					n(69347, {	-- Incomplete Drakkari Colossus
						["coord"] = { 49.9, 20.6, ISLE_OF_THUNDER },
						["crs"] = { 70200 },	--- Primal Ritual Stone
						["g"] = {
							i(94823),	-- Drakkari Decapitator
						},
					}),
					n(69633, {	-- Kor'dok
						["coord"] = { 30.71, 58.56, ISLE_OF_THUNDER },
						["crs"] = {
							69644,	-- Tinzo the Emberkeeper
							70204,	-- Spiritual Ritual Stone
						},
						["g"] = {
							i(94720),	-- Vengeance of Kor'dok
						},
					}),
					n(69749, {	-- Qi'nor
						["coord"] = { 48.0, 25.9, ISLE_OF_THUNDER },
						["crs"] = { 70196 },	-- Lightning Ritual Stone
						["g"] = {
							i(94824),	-- Gaze of Qi'nor
						},
					}),
					n(69471, {	-- Spirit of Warlord Teng
						["description"] = "Located underneath the building.",
						["coord"] = { 35.6, 63.8, ISLE_OF_THUNDER },
						["crs"] = { 70201 },	-- Spiritual Ritual Stone
						["g"] = {
							i(94707),	-- Teng's Reach
						},
					}),
					n(70080, {	-- Windweaver Akil'amon
						["coord"] = { 68.9, 39.2, ISLE_OF_THUNDER },
						["crs"] = { 70198 },	-- Primal Ritual Stone
						["g"] = {
							i(94709),	-- Talonblade of Akil'amon
						},
					}),
				})),
				n(TREASURES, {
					o(218438, {	-- Age of a Hundred Kings
						["coord"] = { 62.5, 37.8, ISLE_OF_THUNDER },
					}),
					o(218435, {	-- Agents of Order
						["coord"] = { 35.8, 54.7, ISLE_OF_THUNDER },
					}),
					o(218427, {	-- Coming of Age
						["coord"] = { 35.4, 70.2, ISLE_OF_THUNDER },
					}),
					o(218428, {	-- For Council and King
						["coord"] = { 66.0, 44.7, ISLE_OF_THUNDER },
					}),
					o(218431, {	-- Lei Shen
						["coord"] = { 40.2, 40.7, ISLE_OF_THUNDER },
					}),
					o(218429, {	-- Shadows of the Loa
						["coord"] = { 36.3, 70.1, ISLE_OF_THUNDER },
					}),
					o(218436, {	-- Shadow, Storm, and Stone
						["coord"] = { 59.3, 26.3, ISLE_OF_THUNDER },
					}),
					o(218437, {	-- The Curse and the Silence
						["coord"] = { 49.9, 20.4, ISLE_OF_THUNDER },
					}),
					o(218430, {	-- The Dark Prophet Zul
						["coord"] = { 52.6, 41.4, ISLE_OF_THUNDER },
					}),
					o(218434, {	-- The Pandaren Problem
						["coord"] = { 60.7, 68.8, ISLE_OF_THUNDER },
					}),
					o(218432, {	-- The Sacred Mount
						["coord"] = { 47.1, 59.9, ISLE_OF_THUNDER },
					}),
					o(218433, {	-- Unity at a Price
						["coord"] = { 34.9, 65.6, ISLE_OF_THUNDER },
					}),
				}),
				n(VENDORS, {
					n(70535, {	-- Teng of the Flying Daggers <Shado-Pan Assault Quartermaster>
						["coord"] = { 51.6, 46.6, ISLE_OF_THUNDER },
						["sym"] = {{"sub","common_vendor",70346}},	-- Ao Pye <Shado-Pan Assault Quartermaster>
					}),
				}),
				n(ZONE_DROPS, {
					["maps"] = {
						-- Throne of Thunder Maps
						508,	-- Overgrown Statuary
						509,	-- Royal Amphitheater
						510,	-- Forgotten Depths
						511,	-- Roost of Ji-Kun
						512,	-- Halls of Flesh-Shaping
						513,	-- Hall of Kings
						514,	-- Pinnacle of Storms
						515,	-- Hidden Cell
						ISLE_OF_GIANTS,
					},
					["g"] = {
						i(94056),	-- Battered Saurscale Belt
						i(94057),	-- Battered Saurscale Boots
						i(94055),	-- Battered Saurscale Bracers
						i(94052),	-- Battered Saurscale Chestpiece
						i(94054),	-- Battered Saurscale Gloves
						i(94053),	-- Battered Saurscale Leggings
						i(94213),	-- Bloodtusk Shoulderpads
						i(94079),	-- Brittle Flamereaver Belt
						i(94084),	-- Brittle Flamereaver Bracers
						i(94083),	-- Brittle Flamereaver Gloves
						i(94081),	-- Brittle Flamereaver Hauberk
						i(94082),	-- Brittle Flamereaver Leggings
						i(94077),	-- Brittle Flamereaver Mask
						i(94080),	-- Brittle Flamereaver Pauldrons
						i(94078),	-- Brittle Flamereaver Treads
						i(94102),	-- Chiseled Fangs
						i(94099),	-- Corroded Hacker
						i(94261),	-- Deathbog Hauberk
						i(94097),	-- Defective Soulgem Staff
						i(94096),	-- Discarded Strikeblade
						i(94045),	-- Discarded Swampstalker Belt
						i(94049),	-- Discarded Swampstalker Boots
						i(94044),	-- Discarded Swampstalker Gloves
						i(94046),	-- Discarded Swampstalker Headband
						i(94047),	-- Discarded Swampstalker Leggings
						i(94048),	-- Discarded Swampstalker Shoulders
						i(94050),	-- Discarded Swampstalker Tunic
						i(94051),	-- Discarded Swampstalker Wrists
						i(94098),	-- Dull Hawktalons
						i(94063),	-- Exiled Dabbler's Bracer
						i(94059),	-- Exiled Dabbler's Cinch
						i(94062),	-- Exiled Dabbler's Gloves
						i(94061),	-- Exiled Dabbler's Leggings
						i(94060),	-- Exiled Dabbler's Mantle
						i(94058),	-- Exiled Dabbler's Robe
						i(94262),	-- Faded Spirit-Wrencher Cage
						i(94065),	-- Faded Spirit-Wrencher Robe
						i(94029),	-- Faded Spirit-Wrencher Shoulders
						i(94041),	-- Forgotten Peacekeeper Armguards
						i(94040),	-- Forgotten Peacekeeper Belt
						i(94037),	-- Forgotten Peacekeeper Boots
						i(94039),	-- Forgotten Peacekeeper Breastplate
						i(94038),	-- Forgotten Peacekeeper Gauntlets
						i(94036),	-- Forgotten Peacekeeper Leggings
						i(94042),	-- Forgotten Peacekeeper Shoulders
						i(94066),	-- Forlorn Loa-Binder Cage
						i(94064),	-- Forlorn Loa-Binder Robe
						i(94067),	-- Forlorn Loa-Binder Shoulders
						i(94212),	-- Hex-Caster Gavel
						i(94094),	-- Hexbelcher Rifle
						i(94216),	-- Lifestep Treads
						i(94214),	-- Loa-Binder Disc
						i(94035),	-- Primordial Bloodsoaked Belt
						i(94034),	-- Primordial Bloodsoaked Breastplate
						i(94032),	-- Primordial Bloodsoaked Gauntlets
						i(94033),	-- Primordial Bloodsoaked Greaves
						i(94030),	-- Primordial Bloodsoaked Legplates
						i(94031),	-- Primordial Bloodsoaked Pauldrons
						i(94043),	-- Primordial Bloodsoaked Vambraces
						i(94101),	-- Restrung Voodoo Bow
						i(94103),	-- Ritual Headcleaver Halberd
						i(94092),	-- Rustic Voodoo Wand
						i(94093),	-- Saur-Singer Spellblade
						i(94215),	-- Saurjaw Dagger
						i(94104),	-- Sky-Shaper Staff
						i(94218),	-- Skyking Bulwark
						i(94217),	-- Stubby Talonblade
						i(94085),	-- Tarnished Fanatic's Battlevest
						i(94089),	-- Tarnished Fanatic's Deathgrips
						i(94087),	-- Tarnished Fanatic's Girdle
						i(94211),	-- Tarnished Fanatic's Headcover
						i(94091),	-- Tarnished Fanatic's Pauldrons
						i(94090),	-- Tarnished Fanatic's Shackles
						i(94086),	-- Tarnished Fanatic's Warboots
						i(94088),	-- Tarnished Fanatic's Wargreaves
						i(94095),	-- Thunder Eagle Staff
						i(94075),	-- Timeworn Shadowtooth Belt
						i(94070),	-- Timeworn Shadowtooth Boots
						i(94072),	-- Timeworn Shadowtooth Cuirass
						i(102348),	-- Timeworn Shadowtooth Faceguard
						i(94071),	-- Timeworn Shadowtooth Grips
						i(94076),	-- Timeworn Shadowtooth Shoulderpads
						i(94074),	-- Timeworn Shadowtooth Trousers
						i(94073),	-- Timeworn Shadowtooth Wristwraps
						i(94100),	-- Weighty Stone Axe
						i(94028),	-- Zandalari Head-Cleaver
					},
				}),
				n(ZONE_DROPS, {
					i(95409),	-- Iron-Bound Zandalari Journal
					i(95410),	-- Blood-Spattered Zandalari Journal
					i(95411),	-- Torn Zandalari Journal
					i(95412),	-- Frayed Zandalari Journal
					i(95408),	-- Waterlogged Zandalari Journal
					i(97961, {	-- Filthling (PET!)
						["crs"] = { 69251 },	-- Quivering Filth
						["timeline"] = { ADDED_5_3_0 },
					}),
				}),
			},
		})),
	}),
});
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {
	m(PANDARIA, {
		m(ISLE_OF_THUNDER, {
			n(FACTIONS, {
				header(HEADERS.Faction, FACTION_KIRIN_TOR_OFFENSIVE, {
					n(QUESTS, {
						q(32721),	-- Choose Your Assignment
						q(32260),	-- Alliance Quest Choice: PvE
						q(32261),	-- Alliance Quest Choice: PvP
						q(32701),	-- Quest Reward Summary: PvE Stage 0-2
						q(32700),	-- Quest Reward Summary: PvP Stage 1-5
						q(32702),	-- Quest Reward Summary: PvE Stage 2
						q(32703),	-- Quest Reward Summary: PvE Stage 3
						q(32704),	-- Quest Reward Summary: PvE Stage 4-5
						q(32705),	-- Quest Reward Summary: PvE Stage 5
					}),
				}),
				header(HEADERS.Faction, FACTION_SUNREAVER_ONSLAUGHT, {
					n(QUESTS, {
						q(32720),	-- Choose Your Assignment
						q(32259),	-- Horde Quest Choice: PvE
						q(32258),	-- Horde Quest Choice: PvP
						q(32695),	-- Quest Reward Summary: PvE Stage 0-2
						q(32694),	-- Quest Reward Summary: PvP Stage 1-5
						q(32696),	-- Quest Reward Summary: PvE Stage 2
						q(32697),	-- Quest Reward Summary: PvE Stage 3
						q(32698),	-- Quest Reward Summary: PvE Stage 4-5
						q(32699),	-- Quest Reward Summary: PvE Stage 5
					}),
				}),
			}),
			n(QUESTS, {
				q(32289),	-- Loot plans, kill boat captain
				q(32723),	-- reuse me
				q(32825),	-- Re-Use Me - triggers with HQT 'Choose Your Assignment' (questID 32720 & 32721)
				q(32826),	-- Re-Use Me - triggers with 'Breaking Down the Defenses' (questID 32628 & 32268)
				q(32827),	-- Re-Use Me - triggers with 'Tactical Mana Bombs' (questID 32634 & 32269)
				q(32629),	-- Thunderwing Captured Tracking Quest
			}),
			n(TREASURES, {
				q(32609),	-- Rare Chest Tracking Quest — triggers after looting "Trove of the Thunder King"
			}),
			n(ZONE_DROPS, {
				q(32626),	-- Loot Room Key Tracking Quest — triggers when looting "Key to the Palace of Lei Shen"
				q(32611),	-- Rare Drop Tracking Quest — tracks whether you have looted an Incantation for this week
			}),
		}),
	}),
})));