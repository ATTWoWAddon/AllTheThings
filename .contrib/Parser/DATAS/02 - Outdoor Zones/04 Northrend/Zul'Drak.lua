---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(NORTHREND, applyclassicphase(WRATH_PHASE_ONE, {
		m(ZULDRAK, {
			["lore"] = "Zul'Drak is a zone in central Northrend, intended for level 20+ players leveling. It is the home of the Drakkari ice trolls, who have gone insane after sacrificing their loa gods to fight off the Scourge. The Argent Dawn and the Zandalari tribe have tried to restore order to the zone, after its decimation and betrayal by Drakkuru. The zone is covered in Scourge blight and abandoned ziggurats, with Gundrak at its pinnacle.",
			["icon"] = 236858,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(1267),	-- Explore Zul'Drak
					ach(1596),	-- Guru of Drakuru (automated)
					ach(36, {	-- The Empire of Zul'Drak
						-- #if AFTER 7.3.5
						["_doautomation"] = true,
						-- #else
						["sourceQuests"] = {
							12516,	-- Too Much of a Good Thing
							12685,	-- You Reap What You Sow
							12730,	-- Convocation at Zol'Heb
							12948,	-- The Champion of Anguish
							12861,	-- Trolls Is Gone Crazy!
							-- TODO: verify below:
							12902,	-- In Search of Answers
							12859,	-- This Just In: Fire Still Hot!
							12904,	-- Light Won't Grant Me Vengeance
							12919,	-- The Storm King's Crusade
							-- TODO: verify below:
							12901,	-- Making Something Out Of Nothing
							12903,	-- That's What Friends Are For...
							12713,	-- Betrayal
							12584,	-- Pure Evil
							12506,	-- Trouble at the Altar of Sseratus
							-- TODO: confirm the following:
							12555,	-- A Tangled Skein
							12504,	-- Argent Crusade, We Are Leaving!
							12606,	-- Cocooned!
							12512,	-- Leave No One Behind
							12554,	-- Malas the Corrupter
							12508,	-- Mopping Up
						},
						-- #endif
					}),
				}),
				battlepets({
					["sym"] = {{"select","speciesID",
						641,	-- Arctic Hare (PET!)
						387,	-- Snake (PET!)
						412,	-- Spider (PET!)
					}},
					["groups"] = {
						pet(535, {	-- Water Waveling (PET!)
							["coord"] = { 43.0, 77.6,ZULDRAK },
							["description"] = "Spawns in the farms south of The Argent Stand.",
						}),
					},
				}),
				explorationHeader({
					exploration(4322),	-- Altar of Har'koa
					exploration(4329),	-- Altar of Mam'toth
					exploration(4325),	-- Altar of Quetz'lun
					exploration(4321),	-- Altar of Rhunok
					exploration(4276),	-- Altar of Sseratus
					exploration(4320),	-- Amphitheater of Anguish
					exploration(4469),	-- Dargath's Demise
					visit_exploration(4280,{coord={46.4,63.3,ZULDRAK}}),	-- Drak'Agal
					exploration(4327),	-- Drak'Mabwa
					exploration(4279),	-- Drak'Sotra
					exploration(4278),	-- Drak'Sotra Fields
					visit_exploration(4309,{coord={26.5,86.8,ZULDRAK}}),	-- Drak'Tharon Keep
					visit_exploration(4579,{coord={70.8,23.4,ZULDRAK}}),	-- Dubra'Jin
					exploration(4312),	-- Ebon Watch
					visit_exploration(4390,{coord={33.3,39.9,ZULDRAK}}),	-- Frigid Breach
					exploration(4375),	-- Gundrak
					visit_exploration(4326,{coord={64.2,53.7,ZULDRAK}}),	-- Heb'Drakkar
					exploration(4294),	-- Heb'Valok
					visit_exploration(4194,{coord={14.9,89.2,ZULDRAK}}),	-- Jintha'kalar
					exploration(4299),	-- Kolramas
					exploration(4317),	-- Light's Breach
					exploration(4371),	-- Mam'toth Crater
					exploration(4324),	-- Pools of Jin'Alai
					exploration(4318),	-- Pools of Zha'Jin
					exploration(4316),	-- Rageclaw Den
					exploration(4374),	-- Rageclaw Lake
					exploration(4311),	-- Reliquary of Agony
					exploration(4315),	-- Reliquary of Pain
					exploration(4275),	-- The Argent Stand
					exploration(4468),	-- The Dead Fields
					exploration(4313),	-- Thrym's End
					exploration(4314),	-- Voltarus
					exploration(4310),	-- Zeramas
					exploration(4319),	-- Zim'Abwa
					exploration(4328),	-- Zim'Rhuk
					visit_exploration(4323,{coord={59.0,54.8,ZULDRAK}}),	-- Zim'Torga
					visit_exploration(4373,{coord={79.8,37.2,ZULDRAK}}),	-- Zol'Heb
					exploration(4372),	-- Zol'Maz Stronghold
				}),
				n(FLIGHT_PATHS, {
					fp(305, {	-- Ebon Watch
						["cr"] = 28615,	-- Baneflight <Flight Master>
						["coord"] = { 14.0, 73.6, ZULDRAK },
					}),
					fp(331, {	-- Gundrak
						["cr"] = 30569,	-- Rafae <Flight Master>
						["coord"] = { 70.4, 23.2, ZULDRAK },
					}),
					fp(306, {	-- Light's Breach
						["cr"] = 28618,	-- Danica Saint <Flight Master>
						["coord"] = { 32.2, 74.4, ZULDRAK },
					}),
					fp(304, {	-- The Argent Stand
						["cr"] = 28623,	-- Gurric <Flight Master>
						["coord"] = { 41.4, 64.4, ZULDRAK },
					}),
					fp(307, {	-- Zim'Torga
						["cr"] = 28624,	-- Maaka <Flight Master>
						["coord"] = { 60.0, 56.8, ZULDRAK },
					}),
				}),
				petbattles({
					n(66639, {	-- Gutretch <Master Pet Tamer>
						["coord"] = { 13.2, 66.8, ZULDRAK },
						["description"] = "Gutretch's pets are level 25 of the following consecutive pet classes:\n1. Beast - use Mechanical (powerful) or Flying (tanky) pet.\n2. Beast - see above.\n3. Critter - use Beast (powerful) or Humanoid (tanky) pet.\n\nFor credit towards 'An Awfully Big Adventure', battle with a composition of Elekk Plushie and two strong pets such as Anodized Robo Cub (Demolish/Maul) and Anubisath Idol (Demolish/Sandstorm/Deflection).",
						["timeline"] = { ADDED_5_0_4 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(31934, {	-- Gutretch
								["sourceAchievement"] = 6605,	-- Taming Northrend
								["timeline"] = { ADDED_5_0_4 },
								["isDaily"] = true,
							}),
						},
					}),
				}),
				n(QUESTS, {
					q(12912, {	-- A Great Storm Approaches
						["sourceQuest"] = 12894,	-- Crusader Forward Camp
						["qg"] = 29647,	-- Gymer
						["coord"] = { 19.7, 56.3, ZULDRAK },
					}),
					q(12555, {	-- A Tangled Skein
						["sourceQuest"] = 12583,	-- Crashed Sprayer
						["qg"] = 28284,	-- Specialist Cogwheel
						["coord"] = { 58.2, 72.0, ZULDRAK },
						["groups"] = {
							i(39806),	-- Blade of Diligence
							i(39822),	-- Knife of the Dutybound
							i(39824),	-- Cleaver of Diligence
							i(39784),	-- Staff of the Dutybound
							i(39823),	-- Dutybound Mace of Purity
							i(39808),	-- Staff of Diligence
						},
					}),
					q(12647, {	-- An End to the Suffering
						["sourceQuest"] = 12646,	-- My Prophet, My Enemy
						["qg"] = 28561,	-- Spirit of Rhunok
						["coord"] = { 53.4, 39.0, ZULDRAK },
						["groups"] = {
							i(39789),	-- Bloodbinder's Shoulderpads
							i(39858),	-- Drape of the Bloodletter
							i(39825),	-- Belt of the Bloodbinder
							i(39893),	-- Ancestral Chestplates
						},
					}),
					q(12631, {	-- An Invitation, of Sorts...
						["altQuests"] = { 12633 },	-- Darkness Calling
						["provider"] = { "i", 38660 },	-- Unliving Choker
					}),
					q(12504, {	-- Argent Crusade, We Are Leaving!
						["sourceQuest"] = 12505,	-- New Orders for Sergeant Stackhammer
						["qg"] = 28056,	-- Sergeant Stackhammer
						["coord"] = { 40.4, 48.1, ZULDRAK },
						["groups"] = {
							i(39771),	-- Embattled Legwraps
							i(39834),	-- Embattled Jerkin
							i(39780),	-- Valiant Belt of Battle
							i(39782),	-- Thick Bracers of Battle
						},
					}),
					q(12653, {	-- Back to Har'koa
						["sourceQuest"] = 12647,	-- An End to the Suffering
						["qg"] = 28561,	-- Spirit of Rhunok
						["coord"] = { 53.4, 39.0, ZULDRAK },
					}),
					q(12713, {	-- Betrayal
						["description"] = "WARNING: Once you complete this quest, the quest |cFFFFD700Feedin' Da Goolz|r will become unavailable forever!",
						["sourceQuests"] = {
							12652,	-- Feedin' Da Goolz
							12676,	-- Sabotage
						},
						["qg"] = 28518,	-- Stefan Vadu
						["coords"] = {
							{ 28.4, 44.9, ZULDRAK },
							{ 14.0, 73.8, ZULDRAK },
							{ 27.6, 53.8, ZULDRAK },
						},
						["groups"] = {
							i(39655),	-- Betrayer's Choker
							i(39653),	-- Choker of Betrayal
							i(39652),	-- Choker of the Betrayer
						},
					}),
					q(12567, {	-- Blessing of Zim'Abwa
						["sourceQuest"] = 12565,	-- The Blessing of Zim'Abwa
						["provider"] = { "o", 190535 },	-- Zim'Abwa
						["coord"] = { 36.7, 72.6, ZULDRAK },
						["repeatable"] = true,
					}),
					q(12656, {	-- Blessing of Zim'Rhuk
						["sourceQuest"] = 12655,	-- The Blessing of Zim'Rhuk
						["provider"] = { "o", 190657 },	-- Zim'Rhuk
						["coord"] = { 59.2, 44.7, ZULDRAK },
						["repeatable"] = true,
					}),
					q(12618, {	-- Blessing of Zim'Torga
						["sourceQuest"] = 12615,	-- The Blessing of Zim'Torga
						["provider"] = { "o", 190602 },	-- Zim'Torga
						["coord"] = { 59.4, 57.2, ZULDRAK },
						["repeatable"] = true,
					}),
					q(12684, {	-- Blood of a Dead God
						["sourceQuest"] = 12675,	-- One Last Thing
						["qg"] = 28401,	-- Har'koa
						["coord"] = { 63.6, 70.3, ZULDRAK },
					}),
					q(12627, {	-- Breaking Through Jin'Alai
						["sourceQuest"] = 12623,	-- To the Witch Doctor
						["qg"] = 28479,	-- Witch Doctor Khufu
						["coord"] = { 59.5, 58.0, ZULDRAK },
					}),
					q(12662, {	-- Bringing Down Heb'Jin
						["sourceQuest"] = 12640,	-- Sealing the Rifts
						["qg"] = 28480,	-- Element-Tamer Dagoda
						["coord"] = { 59.3, 56.4, ZULDRAK },
						["groups"] = {
							i(39777),	-- Band of Misty Mojo
							i(39836),	-- Supple Mantle of the Bloodletter
							i(39788),	-- Leggings of the Ritual
							i(39790),	-- Gauntlets of the Altar
						},
					}),
					q(12632, {	-- But First My Offspring
						["sourceQuest"] = 12628,	-- To Speak With Har'koa
						["qg"] = 28401,	-- Har'koa
						["coord"] = { 63.6, 70.3, ZULDRAK },
						["groups"] = {
							i(39787),	-- Soothsayer's Handwraps
							i(39856),	-- Bloodletter's Pants
							i(39821),	-- Spiritist's Focus
							i(39891),	-- Brazen Offender's Helm
						},
					}),
					q(12610, {	-- Clipping Their Wings
						["sourceQuest"] = 12799,	-- Siphoning the Spirits
						["qg"] = 28045,	-- Captain Arnath
						["coord"] = { 35.6, 52.2, ZULDRAK },
						["groups"] = {
							i(39804),	-- Braided Bat Sinew
							i(39867),	-- Bat Fur Mitts
							i(39854),	-- Huntsman's Jerkin
							i(39855),	-- Gauntlets of the Gatherer
						},
					}),
					q(12638, {	-- Close Call
						["sourceQuest"] = 12633,	-- Darkness Calling
						["altQuests"] = { 12637 },	-- Near Miss
						["qg"] = 28518,	-- Stefan Vadu
						["coord"] = { 14.0, 73.8, ZULDRAK },
					}),
					q(12606, {	-- Cocooned!
						["sourceQuest"] = 12598,	-- Throwing Down
						["qg"] = 28044,	-- Captain Rupert
						["coord"] = { 58.0, 72.4, ZULDRAK },
					}),
					q(12604, {	-- Congratulations!
						["qg"] = 28039,	-- Commander Kunz
						["coord"] = { 40.2, 66.6, ZULDRAK },
						["maxReputation"] = { FACTION_ARGENT_CRUSADE, EXALTED },	-- Argent Crusade, Exalted.
						-- #if NOT ANYCLASSIC
						-- TODO: Investigate if this is necessary, we have maxReputation already for this since it's a repeatable quest.
						["lockCriteria"] = { 1, "factionID", 1106.8 },	-- Argent Crusade, Exalted
						-- #endif
						["isDaily"] = true,
						-- TODO: based on speed completion of "Troll Patrol" daily. Determine condition and add as description
						["groups"] = {
							i(43556, {	-- Patroller's Pack
								["description"] = "Small chance to contain listed items.",
								["groups"] = {
									i(36335),	-- Grizzlemaw Helm
									i(36003),	-- Icemist Sash
									i(36128),	-- Muradin Pants
									i(43555),	-- Deputy Pa'trolla Badge
								},
							}),
						},
					}),
					q(12730, {	-- Convocation at Zol'Heb
						["sourceQuest"] = 12729,	-- The Gods Have Spoken
						["qg"] = 28401,	-- Har'koa
						["coord"] = { 60.2, 57.7, ZULDRAK },
						["groups"] = {
							i(41890),	-- Robe of the Conquered Prophet
							i(41891),	-- Intricate Zandalari Tunic
							i(41905),	-- Chestguard of Rampaging Fury
							i(41932),	-- Links of the Terrified Deity
						},
					}),
					q(12583, {	-- Crashed Sprayer
						["sourceQuest"] = 12553,	-- Skimmer Spinnerets
						["qg"] = 28284,	-- Specialist Cogwheel
						["coord"] = { 58.2, 72.0, ZULDRAK },
					}),
					q(12599, {	-- Creature Comforts
						["description"] = "Must be on |cFFFFD700Pa'Troll|r to see this quest.",
						["sourceQuest"] = 12740,	-- Parachutes for the Argent Crusade
						["qg"] = 28043,	-- Captain Grondel
						["coord"] = { 48.1, 63.8, ZULDRAK },
					}),
					q(12894, {	-- Crusader Forward Camp
						["sourceQuest"] = 12883,	-- Orders From Drakuru
						["qg"] = 29687,	-- Crusader Lord Lantinga
						["coord"] = { 32.1, 75.1, ZULDRAK },
					}),
					q(12664, {	-- Dark Horizon
						["description"] = "Must be on |cFFFFD700Infiltrating Voltarus|r to see this quest.",
						["sourceQuest"] = 12648,	-- Dressing Down
						["altQuests"] = { 12663 },	-- Reunited
						["qg"] = 28503,	-- Overlord Drakuru
						["coord"] = { 27.0, 46.1, ZULDRAK },
					}),
					q(12633, {	-- Darkness Calling
						["altQuests"] = { 12631 },	-- An Invitation, of Sorts...
						["provider"] = { "i", 38673 },	-- Writhing Choker
					}),
					q(12552, {	-- Death to the Necromagi
						["sourceQuest"] = 12598,	-- Throwing Down
						["qg"] = 28283,	-- Sergeant Moonshard
						["coord"] = { 58.0, 72.0, ZULDRAK },
					}),
					q(12503, {	-- Defend the Stand -- aa
						["sourceQuest"] = 12795,	-- Taking a Stand
						["qg"] = 28059,	-- Commander Falstaav
						["coord"] = { 39.4, 66.9, ZULDRAK },
					}),
					q(12710, {	-- Disclosure
						["sourceQuest"] = 12690,	-- Fuel for the Fire
						["qg"] = 28503,	-- Overlord Drakuru
						["coord"] = { 27.0, 46.1, ZULDRAK },
					}),
					q(12648, {	-- Dressing Down
						["sourceQuest"] = 12629,	-- You Can Run, But You Can't Hide
						["altQuests"] = { 12649 },	-- Suit Up!
						["qg"] = 28518,	-- Stefan Vadu
						["coord"] = { 14.0, 73.8, ZULDRAK },
					}),
					q(13556, {	-- Eggs for Dubra'Jin -- aa
						["qg"] = 33025,	-- Ha'wana
						["coord"] = { 69.9, 20.9, ZULDRAK },
					}),
					q(12708, {	-- Enchanted Tiki Warriors
						["sourceQuest"] = 12685,	-- You Reap What You Sow
						["qg"] = 28480,	-- Element-Tamer Dagoda
						["coord"] = { 59.3, 56.4, ZULDRAK },
					}),
					q(12652, {	-- Feedin' Da Goolz
						["description"] = "Must be on |cFFFFD700Suit Up!|r or |cFFFFD700Dressing Down|r to see this quest.\n\nWARNING: Once you complete |cFFFFD700Betrayal|r this quest will become unavailable forever!",
						["sourceQuest"] = 12649,	-- Suit Up!
						["altQuests"] = { 12713 },	-- Betrayal
						["qg"] = 28589,	-- Gristlegut
						["coord"] = { 19.8, 75.4, ZULDRAK },
						["groups"] = {
							i(39812),	-- Soiled Trousers
							i(39876),	-- Aged Abomination Tripe
							i(39880),	-- Redigested Mail Scraps
							i(39882),	-- Carved Bone Helm
							i(39831),	-- Petrified Ghoul Finger
						},
					}),
					q(12792, {	-- First Things First
						["qg"] = 28039,	-- Commander Kunz
						["coord"] = { 40.2, 66.6, ZULDRAK },
					}),
					q(12668, {	-- Foundation for Revenge
						["sourceQuest"] = 12672,	-- Setting the Stage
						["qg"] = 28030,	-- Quetz'lun's Spirit
						["coord"] = { 75.3, 58.6, ZULDRAK },
					}),
					q(12690, {	-- Fuel for the Fire
						["description"] = "Must be on |cFFFFD700Sabotage|r to see this quest.",
						["sourceQuest"] = 12677,	-- Hazardous Materials
						["qg"] = 28503,	-- Overlord Drakuru
						["coord"] = { 27.0, 46.1, ZULDRAK },
					}),
					q(12527, {	-- Gluttonous Lurkers
						["sourceQuest"] = 12510,	-- Precious Elemental Fluids
						["qg"] = 28204,	-- Apprentice Pestlepot
						["coord"] = { 41.3, 65.1, ZULDRAK },
					}),
					q(12914, {	-- Gymer's Salvation
						["sourceQuest"] = 12912,	-- A Great Storm Approaches
						["qg"] = 29688,	-- Engineer Reed
						["coord"] = { 25.2, 63.8, ZULDRAK },
					}),
					q(12677, {	-- Hazardous Materials
						["sourceQuest"] = 12669,	-- So Far, So Bad
						["qg"] = 28518,	-- Stefan Vadu
						["coords"] = {
							{ 28.4, 44.9, ZULDRAK },
							{ 14.0, 73.8, ZULDRAK },
							{ 27.6, 53.8, ZULDRAK },
						},
					}),
					q(12674, {	-- Hell Hath a Fury
						["sourceQuest"] = 12668,	-- Foundation for Revenge
						["qg"] = 28030,	-- Quetz'lun's Spirit
						["coord"] = { 75.3, 58.6, ZULDRAK },
						["groups"] = {
							i(39791),	-- Soothsayer's Wristwraps
							i(39859),	-- Bloodletter's Skullcap
							i(39839),	-- Ritualistic Shoulderguards
							i(39841),	-- Ancestral Girdle
						},
					}),
					heroscall(q(49552, {	-- Hero's Call: Zul'Drak!
						["timeline"] = { ADDED_7_3_5 },
						["isBreadcrumb"] = true,
						["lvl"] = 64,
					})),
					q(12709, {	-- Hexed Caches
						["sourceQuest"] = 12685,	-- You Reap What You Sow
						["qg"] = 28527,	-- Chronicler To'kini
						["coord"] = { 59.9, 57.9, ZULDRAK },
						["groups"] = {
							i(39797),	-- Bloodbinder's Hood
							i(39863),	-- Supple Vest of the Bloodbinder
							i(39848),	-- Neckcharm of the Bloodletter
							i(39849),	-- Belt of Divine Ancestry
						},
					}),
					q(12665, {	-- I Sense a Disturbance
						["sourceQuest"] = 12653,	-- Back to Har'koa
						["qg"] = 28401,	-- Har'koa
						["coord"] = { 63.6, 70.3, ZULDRAK },
					}),
					q(12902, {	-- In Search Of Answers
						-- #if AFTER 7.3.5.25600
						["sourceQuests"] = {
							49534,	-- Warchief's Command: Zul'Drak!
							49552,	-- Hero's Call: Zul'Drak!
						},
						-- #endif
						["qg"] = 29687,	-- Crusader Lord Lantinga
						["coord"] = { 32.1, 75.7, ZULDRAK },
					}),
					q(12661, {	-- Infiltrating Voltarus
						["sourceQuests"] = {
							12648,	-- Dressing Down
							12649,	-- Suit Up!
						},
						["qg"] = 28518,	-- Stefan Vadu
						["coord"] = { 14.0, 73.7, ZULDRAK },
						["groups"] = {
							i(39809),	-- Sandals of Spying
							i(39869),	-- Double-Agent's Wristwraps
							i(39866),	-- Gauntlets of the Secret Agent
							i(39870),	-- Drape of Duplicity
							i(39830),	-- Fist of Subtlety
						},
					}),
					q(12673, {	-- It Rolls Downhill
						["description"] = "Must be on |cFFFFD700So Far, So Bad|r to see this quest.",
						["sourceQuest"] = 12661,	-- Infiltrating Voltarus
						["qg"] = 28503,	-- Overlord Drakuru
						["coord"] = { 27.0, 46.1, ZULDRAK },
					}),
					q(13099, {	-- Just Checkin'
						["qg"] = 28527,	-- Chronicler To'kini
						["timeline"] = { ADDED_3_3_0, REMOVED_4_3_0 },
						["isBreadcrumb"] = true,
					}),
					q(29836, {	-- Just Checkin'
						["qg"] = 28527,	-- Chronicler To'kini
						["coord"] = { 59.9, 57.9, ZULDRAK },
						["timeline"] = { ADDED_4_3_0 },
					}),
					q(12630, {	-- Kickin' Nass and Takin' Manes
						["sourceQuest"] = 12884,	-- The Ebon Watch
						["qg"] = 28518,	-- Stefan Vadu
						["coord"] = { 14.0, 73.8, ZULDRAK },
					}),
					q(12557, {	-- Lab Work
						["description"] = "Must be on |cFFFFD700Pa'Troll|r to see this quest.",
						["sourceQuest"] = 12740,	-- Parachutes for the Argent Crusade
						["qg"] = 28205,	-- Alchemist Finklestein
						["coord"] = { 35.0, 52.1, ZULDRAK },
					}),
					q(12512, {	-- Leave No One Behind -- aa
						["qg"] = 28125,	-- Dr. Rogers
						["coord"] = { 58.6, 72.4, ZULDRAK },
						["groups"] = {
							i(39807),	-- Rescuer's Cloak
							i(39868),	-- Ravager's Skullcap
							i(39857),	-- Rescuer's Binding
							i(39860),	-- Vindicator's Bracers of Sacrifice
						},
					}),
					q(12904, {	-- Light Won't Grant Me Vengeance
						["sourceQuest"] = 12894,	-- Crusader Forward Camp
						["qg"] = 29455,	-- Gerk
						["coord"] = { 17.6, 57.5, ZULDRAK },
					}),
					q(12901, {	-- Making Something Out Of Nothing
						["sourceQuest"] = 12894,	-- Crusader Forward Camp
						["qg"] = 29688,	-- Engineer Reed
						["coord"] = { 25.2, 63.8, ZULDRAK },
					}),
					q(12554, {	-- Malas the Corrupter
						["sourceQuest"] = 12552,	-- Death to the Necromagi
						["qg"] = 28283,	-- Sergeant Moonshard
						["coord"] = { 58.0, 72.0, ZULDRAK },
						["groups"] = {
							i(43160),	-- Leggings of Fastidious Decapitation
							i(43161),	-- Legguards of Solemn Revenge
							i(43162),	-- Ceremonial Pike Leggings
							i(43163),	-- Legplates of the Vengeful Mendicant
						},
					}),
					q(12508, {	-- Mopping Up
						["sourceQuest"] = 12505,	-- New Orders for Sergeant Stackhammer
						["qg"] = 28099,	-- Corporal Maga
						["coord"] = { 40.3, 48.2, ZULDRAK },
					}),
					q(12514, {	-- Mushroom Mixer
						["sourceQuest"] = 12510,	-- Precious Elemental Fluids
						["qg"] = 28062,	-- Hexxer Ubungo
						["coord"] = { 40.5, 65.6, ZULDRAK },
					}),
					q(12646, {	-- My Prophet, My Enemy
						["sourceQuest"] = 12642,	-- Spirit of Rhunok
						["qg"] = 28561,	-- Spirit of Rhunok
						["coord"] = { 53.4, 39.0, ZULDRAK },
					}),
					q(12637, {	-- Near Miss
						["sourceQuest"] = 12631,	-- An Invitation, of Sorts...
						["altQuests"] = { 12638 },	-- Close Call
						["qg"] = 28518,	-- Stefan Vadu
						["coord"] = { 14.0, 73.8, ZULDRAK },
					}),
					q(12505, {	-- New Orders for Sergeant Stackhammer
						["sourceQuest"] = 12740,	-- Parachutes for the Argent Crusade
						["qg"] = 28039,	-- Commander Kunz
						["coord"] = { 40.2, 66.6, ZULDRAK },
					}),
					q(12675, {	-- One Last Thing
						["sourceQuest"] = 12674,	-- Hell Hath a Fury
						["qg"] = 28030,	-- Quetz'lun's Spirit
						["coord"] = { 75.3, 58.6, ZULDRAK },
					}),
					q(12883, {	-- Orders From Drakuru
						["sourceQuest"] = 12902,	-- In Search Of Answers
						["provider"] = { "o", 191766 },	-- Orders From Drakuru
						["coord"] = { 34.9, 83.9, ZULDRAK },
					}),
					q(12916, {	-- Our Only Hope
						["sourceQuest"] = 12914,	-- Gymer's Salvation
						["qg"] = 29688,	-- Engineer Reed
						["coord"] = { 25.2, 63.8, ZULDRAK },
					}),
					q(12596, {	-- Pa'Troll
						["sourceQuest"] = 12740,	-- Parachutes for the Argent Crusade
						["qg"] = 28039,	-- Commander Kunz
						["coord"] = { 40.2, 66.6, ZULDRAK },
						["groups"] = {
							i(39800),	-- Pantaloons of the Dutybound
							i(39864),	-- Belt of Service
							i(39850),	-- Wristguards of Service
							i(39851),	-- Ribbed Helm of Servitude
							i(39827),	-- Vile Tome of Tenets
						},
					}),
					q(12740, {	-- Parachutes for the Argent Crusade -- aa
						["qg"] = 28059,	-- Commander Falstaav
						["coord"] = { 39.4, 66.9, ZULDRAK },
						["groups"] = {
							i(39779),	-- Crusader's Ripcord
							i(39840),	-- Rescuer's Ripcord
							i(39799),	-- Rescuer's Chestguard
							i(39801),	-- Boots of the Rescuer
							i(39820),	-- Blade of Valorous Service
						},
					}),
					q(12650, {	-- Plundering Their Own
						["sourceQuest"] = 12635,	-- Relics of the Snow Leopard Goddess
						["qg"] = 28527,	-- Chronicler To'kini
						["coord"] = { 59.9, 57.9, ZULDRAK },
					}),
					q(12510, {	-- Precious Elemental Fluids
						["sourceQuest"] = 12507,	-- Strange Mojo
						["qg"] = 28062,	-- Hexxer Ubungo
						["coord"] = { 40.5, 65.6, ZULDRAK },
						["groups"] = {
							i(39781),	-- Bloodbinder's Raiment
							i(39842),	-- Bloodletter's Boots
							i(39803),	-- Gauntlets of the Great Sacrifice
							i(39805),	-- Chestplate of the Altar
						},
					}),
					q(12666, {	-- Preparations for the Underworld
						["sourceQuest"] = 12665,	-- I Sense a Disturbance
						["qg"] = 28401,	-- Har'koa
						["coord"] = { 63.6, 70.3, ZULDRAK },
					}),
					q(12584, {	-- Pure Evil
						["sourceQuest"] = 12552,	-- Death to the Necromagi
						["qg"] = 28044,	-- Captain Rupert
						["coord"] = { 58.0, 72.4, ZULDRAK },
						["groups"] = {
							i(39773),	-- Soothsayer's Shoulderpads
							i(39837),	-- Gloves of Swift Death
							i(39795),	-- Boots of the Altar
							i(39792),	-- Ritualistic Band of Light
						},
					}),
					q(12721, {	-- Rampage
						["sourceQuest"] = 12712,	-- The Key of Warlord Zol'Maz
						["qg"] = 28401,	-- Har'koa
						["coord"] = { 60.2, 57.7, ZULDRAK },
						["groups"] = {
							i(39794),	-- Bloodbinder's Gloves
							i(39862),	-- Supple Vest of the Bloodletter
							i(39846),	-- Bloodletter's Headgear
							i(39847),	-- Ancestral War Boots
						},
					}),
					q(12635, {	-- Relics of the Snow Leopard Goddess
						["sourceQuest"] = 12627,	-- Breaking Through Jin'Alai
						["qg"] = 28527,	-- Chronicler To'kini
						["coord"] = { 59.9, 57.9, ZULDRAK },
					}),
					q(12663, {	-- Reunited
						["description"] = "Must be on |cFFFFD700Infiltrating Voltarus|r to see this quest.",
						["sourceQuest"] = 12649,	-- Suit Up!
						["altQuests"] = { 12664 },	-- Dark Horizon
						["qg"] = 28503,	-- Overlord Drakuru
						["coord"] = { 27.0, 46.1, ZULDRAK },
					}),
					q(12676, {	-- Sabotage
						["sourceQuest"] = 12677,	-- Hazardous Materials
						["qg"] = 28518,	-- Stefan Vadu
						["coords"] = {
							{ 28.4, 44.9, ZULDRAK },
							{ 14.0, 73.8, ZULDRAK },
							{ 27.6, 53.8, ZULDRAK },
						},
						["groups"] = {
							i(39811),	-- Badge of the Infiltrator
							i(39873),	-- Skins of Subterfuge
							i(39875),	-- Shoulderguards of Subterfuge
							i(39877),	-- Belt of the Betrayer
						},
					}),
					q(12659, {	-- Scalps!
						["sourceQuests"] = {
							12640,	-- Sealing the Rifts
							12639,	-- The Frozen Earth
						},
						["qg"] = 28484,	-- Scalper Ahunae
						["coord"] = { 59.1, 56.2, ZULDRAK },
					}),
					q(12640, {	-- Sealing the Rifts
						["sourceQuest"] = 12622,	-- The Leaders at Jin'Alai
						["qg"] = 28484,	-- Scalper Ahunae
						["coord"] = { 59.1, 56.2, ZULDRAK },
					}),
					q(12667, {	-- Seek the Wind Serpent Goddess
						["sourceQuest"] = 12666,	-- Preparations for the Underworld
						["qg"] = 28401,	-- Har'koa
						["coord"] = { 63.6, 70.3, ZULDRAK },
					}),
					q(12672, {	-- Setting the Stage
						["sourceQuest"] = 12667,	-- Seek the Wind Serpent Goddess
						["qg"] = 28030,	-- Quetz'lun's Spirit
						["coord"] = { 75.3, 58.6, ZULDRAK },
					}),
					q(12643, {	-- Silver Lining
						["sourceQuest"] = 12638,	-- Close Call
						["altQuests"] = { 12629 },	-- You Can Run, But You Can't Hide (Available if you DO NOT complete "Cleansing Drak'Tharon")
						["qg"] = 28518,	-- Stefan Vadu
						["coord"] = { 14.0, 73.7, ZULDRAK },
					}),
					q(12799, {	-- Siphoning the Spirits -- aa
						["qg"] = 28045,	-- Captain Arnath
						["coord"] = { 35.6, 52.2, ZULDRAK },
					}),
					q(12553, {	-- Skimmer Spinnerets
						["sourceQuest"] = 12598,	-- Throwing Down
						["qg"] = 28284,	-- Specialist Cogwheel
						["coord"] = { 58.2, 72.0, ZULDRAK },
					}),
					q(12793, {	-- Smoke on the Horizon -- completes along with 12763, 12770, 12789, 12792 (probably a breadcrumb)
					}),
					q(12669, {	-- So Far, So Bad
						["coords"] = {
							{ 28.4, 44.9, ZULDRAK },
							{ 14.0, 73.8, ZULDRAK },
							{ 27.6, 53.8, ZULDRAK },
						},
						["qg"] = 28518,	-- Stefan Vadu
						["sourceQuest"] = 12661,	-- Infiltrating Voltarus
						["groups"] = {
							i(39810),	-- Cords of Duplicity
							i(39871),	-- Subtle Boots of the Infiltrator
							i(39872),	-- Helm of Subtle Whispers
							i(39874),	-- Infiltrator's Shield
						},
					}),
					q(12597, {	-- Something for the Pain
						["description"] = "Must be on |cFFFFD700Pa'Troll|r to see this quest.",
						["sourceQuest"] = 12740,	-- Parachutes for the Argent Crusade
						["qg"] = 28042,	-- Captain Brandon
						["coord"] = { 48.7, 78.8, ZULDRAK },
					}),
					q(12642, {	-- Spirit of Rhunok
						["sourceQuest"] = 12632,	-- But First My Offspring
						["qg"] = 28401,	-- Har'koa
						["coord"] = { 63.6, 70.3, ZULDRAK },
					}),
					q(12609, {	-- Stocking the Shelves
						["sourceQuest"] = 12799,	-- Siphoning the Spirits
						["qg"] = 28045,	-- Captain Arnath
						["coord"] = { 35.6, 52.2, ZULDRAK },
						["groups"] = {
							i(39865),	-- Knuckle of Victory
							i(39852),	-- Victorious Spellblade
							i(39853),	-- Thorny Bough of the Light
							i(39802),	-- Crusader's Greatblade
							i(39829),	-- High-Strung Bow
						},
					}),
					q(12507, {	-- Strange Mojo
						["provider"] = { "i", 38321 },	-- Strange Mojo
						["crs"] = {
							28036,	-- Champion of Sseratus
							28034,	-- Drakkari Snake Handler
							28035,	-- Priest of Sseratus
						},
					}),
					q(12649, {	-- Suit Up!
						["sourceQuest"] = 12643,	-- Silver Lining
						["altQuests"] = { 12648 },	-- Dressing Down
						["qg"] = 28518,	-- Stefan Vadu
						["coord"] = { 14.0, 73.7, ZULDRAK },
					}),
					q(13549, {	-- Tails Up
						["sourceQuest"] = 12635,	-- Relics of the Snow Leopard Goddess
						["qg"] = 28527,	-- Chronicler To'kini
						["coord"] = { 59.9, 57.9, ZULDRAK },
					}),
					q(12795, {	-- Taking a Stand
						["sourceQuest"] = 12630,	-- Kickin' Nass and Takin' Manes
						["qg"] = 28532,	-- Bloodrose Datura
						["coord"] = { 14.2, 74.0, ZULDRAK },
						["isBreadcrumb"] = true,
					}),
					q(12903, {	-- That's What Friends Are For...
						["sourceQuest"] = 12894,	-- Crusader Forward Camp
						["qg"] = 29689,	-- Crusader MacKellar
						["coord"] = { 25.2, 63.9, ZULDRAK },
						["groups"] = {
							i(39886),	-- Greenhealer's Gauntlets
							i(39816),	-- Medic's Hood
							i(39890),	-- Purifier's Pantaloons
							i(39889),	-- Horn of Argent Fury
						},
					}),
					q(12934, {	-- The Amphitheater of Anguish: From Beyond!
						["sourceQuest"] = 12933,	-- The Amphitheater of Anguish: Magnataur!
						["qg"] = 30007,	-- Gurgthock
						["coord"] = { 48.4, 56.3, ZULDRAK },
					}),
					q(12936, {	-- The Amphitheater of Anguish: Korrak the Bloodrager!
						["sourceQuest"] = 12935,	-- The Amphitheater of Anguish: Tuskarrmageddon!
						["qg"] = 30007,	-- Gurgthock
						["coord"] = { 48.4, 56.3, ZULDRAK },
					}),
					q(12933, {	-- The Amphitheater of Anguish: Magnataur!
						["sourceQuest"] = 12932,	-- The Amphitheater of Anguish: Yggdras!
						["qg"] = 30007,	-- Gurgthock
						["coord"] = { 48.4, 56.3, ZULDRAK },
					}),
					q(12935, {	-- The Amphitheater of Anguish: Tuskarrmageddon!
						["sourceQuest"] = 12934,	-- The Amphitheater of Anguish: From Beyond!
						["qg"] = 30007,	-- Gurgthock
						["coord"] = { 48.4, 56.3, ZULDRAK },
					}),
					q(12932, {	-- The Amphitheater of Anguish: Yggdras!
						["sourceQuest"] = 12974,	-- The Champion's Call
						["qg"] = 30007,	-- Gurgthock
						["coord"] = { 48.4, 56.3, ZULDRAK },
					}),
					q(12954, {	-- The Amphitheater of Anguish: Yggdras!
						["description"] = "You will get this version if you did |cFFFFD700The Ring of Blood|r questline in Nagrand before.",
						["sourceQuest"] = 12974,	-- The Champion's Call
						["qg"] = 30007,	-- Gurgthock
						["coord"] = { 48.4, 56.3, ZULDRAK },
					}),
					q(12565, {	-- The Blessing of Zim'Abwa -- aa
						["qg"] = 28062,	-- Hexer Ubungo
						["coord"] = { 40.5, 65.6, ZULDRAK },
					}),
					q(12655, {	-- The Blessing of Zim'Rhuk
						["sourceQuest"] = 12632,	-- But First My Offspring -- TODO: verify
						["qg"] = 28479,	-- Witch Doctor Khufu
						["coord"] = { 59.5, 58.0, ZULDRAK },
					}),
					q(12615, {	-- The Blessing of Zim'Torga
						["sourceQuest"] = 12516,	-- Too Much of a Good Thing
						["qg"] = 28479,	-- Witch Doctor Khufu
						["coord"] = { 59.5, 58.0, ZULDRAK },
					}),
					q(12948, {	-- The Champion of Anguish
						["sourceQuest"] = 12936,	-- The Amphitheater of Anguish: Korrak the Bloodrager!
						["qg"] = 30007,	-- Gurgthock
						["coord"] = { 48.4, 56.3, ZULDRAK },
						["groups"] = {
							i(41815),	-- Icier Barbed Spear
							i(41821),	-- Chilly Slobberknocker
							i(41825),	-- Wodin's Second-Best Shanker
							i(41816),	-- De-Raged Waraxe
							i(41822),	-- Screw-Sprung Fixer-Upper
							i(41824),	-- Crimson Cranium Crusher
						},
					}),
					q(12974, {	-- The Champion's Call!
						["qg"] = 30137,	-- Shifty Vickers
						["coord"] = { 55.4, 49.4, NORTHREND_THE_UNDERBELLY },
						["maps"] = { NORTHREND_DALARAN },
						["isBreadcrumb"] = true,
					}),
					q(12562, {	-- The Drakkari Do Not Need Water Elementals!
						["sourceQuest"] = 12507,	-- Strange Mojo
						["qg"] = 28309,	-- Sub-Lieutenant Jax
						["coord"] = { 40.1, 68.9, ZULDRAK },
					}),
					q(12884, {	-- The Ebon Watch
						["sourceQuest"] = 12883,	-- Orders From Drakuru
						["qg"] = 29687,	-- Crusader Lord Lantinga
						["coord"] = { 32.1, 75.1, ZULDRAK },
					}),
					q(12639, {	-- The Frozen Earth
						["sourceQuest"] = 12622,	-- The Leaders at Jin'Alai
						["qg"] = 28480,	-- Element-Tamer Dagoda
						["coord"] = { 59.3, 56.4, ZULDRAK },
						["groups"] = {
							i(39772),	-- Bloodbinder's Wrist Wraps
							i(39835),	-- Supple Bloodbinder's Helm
							i(39783),	-- Bloodbinder's Gauntlets
							i(39786),	-- Band of the Bloodletter
						},
					}),
					q(12729, {	-- The Gods Have Spoken
						["sourceQuest"] = 12721,	-- Rampage
						["qg"] = 28479,	-- Witch Doctor Khufu
						["coord"] = { 59.5, 58.0, ZULDRAK },
					}),
					q(12712, {	-- The Key of Warlord Zol'Maz
						["sourceQuest"] = 12685,	-- You Reap What You Sow
						["qg"] = 28401,	-- Har'koa
						["coord"] = { 60.2, 57.7, ZULDRAK },
					}),
					q(12622, {	-- The Leaders at Jin'Alai
						["sourceQuest"] = 12623,	-- To the Witch Doctor
						["qg"] = 28484,	-- Scalper Ahunae
						["coord"] = { 59.1, 56.2, ZULDRAK },
						["groups"] = {
							i(39775),	-- Soothsayer's Sandals
							i(39838),	-- Supple Belt of the Bloodletter
							i(39796),	-- Boots of the Great Sacrifice
							i(39798),	-- Ring of Ancestral Protectors
							i(20390),	-- Candy Bar
						},
					}),
					q(12919, {	-- The Storm King's Vengeance
						["sourceQuest"] = 12916,	-- Our Only Hope
						["qg"] = 29647,	-- Gymer
						["coord"] = { 19.7, 56.3, ZULDRAK },
						["groups"] = {
							i(41826),	-- Grips of the Giant-Rider
							i(41829),	-- Horns of Electrified Terror
							i(41844),	-- Bracers of Vengeful Flight
							i(41845),	-- Life-Light Pauldrons
							i(41846),	-- Clutch of the Storm Giant
						},
					}),
					q(12859, {	-- This Just In: Fire Still Hot! -- aa
						["qg"] = 29733,	-- Elder Shaman Moky
						["coord"] = { 32.0, 75.5, ZULDRAK },
						["groups"] = {
							i(41755),	-- The Fire Extinguisher
						},
					}),
					q(12598, {	-- Throwing Down
						["description"] = "Must be on |cFFFFD700Pa'Troll|r to see this quest.",
						["sourceQuest"] = 12740,	-- Parachutes for the Argent Crusade
						["qg"] = 28044,	-- Captain Rupert
						["coord"] = { 58.0, 72.4, ZULDRAK },
					}),
					q(12628, {	-- To Speak With Har'koa
						["sourceQuest"] = 12627,	-- Breaking Through Jin'Alai
						["qg"] = 28479,	-- Witch Doctor Khufu
						["coord"] = { 59.5, 58.0, ZULDRAK },
					}),
					q(12623, {	-- To the Witch Doctor
						["sourceQuest"] = 12516,	-- Too Much of a Good Thing
						["qg"] = 28062,	-- Hexxer Ubungo
						["coord"] = { 40.5, 65.6, ZULDRAK },
					}),
					q(12516, {	-- Too Much of a Good Thing
						["sourceQuest"] = 12514,	-- Mushroom Mixer
						["qg"] = 28062,	-- Hexxer Ubungo
						["coord"] = { 40.5, 65.6, ZULDRAK },
						["groups"] = {
							i(39785),	-- Soothsayer's Garb
							i(39843),	-- Supple Wristguards
							i(39815),	-- Bloodbinder's Links
							i(39817),	-- Brazen Offender's Shoulderplates
						},
					}),
					q(12501, {	-- Troll Patrol
						["sourceQuest"] = 12596,	-- Pa'Troll
						["qg"] = 28039,	-- Commander Kunz
						["coord"] = { 40.2, 66.6, ZULDRAK },
						["maxReputation"] = { FACTION_ARGENT_CRUSADE, EXALTED },	-- Argent Crusade, Exalted.
						["isDaily"] = true,
						-- confirmed available 14.October.2019 by Pr3vention
					}),
					q(12563, {	-- Troll Patrol
						["sourceQuest"] = 12596,	-- Pa'Troll
						["qg"] = 28039,	-- Commander Kunz
						["coord"] = { 40.2, 66.6, ZULDRAK },
						["maxReputation"] = { FACTION_ARGENT_CRUSADE, EXALTED },	-- Argent Crusade, Exalted.
						["isDaily"] = true,
						-- confirmed available 26.June.2021 by Darkal
					}),
					q(12587, {	-- Troll Patrol
						["sourceQuest"] = 12596,	-- Pa'Troll
						["qg"] = 28039,	-- Commander Kunz
						["coord"] = { 40.2, 66.6, ZULDRAK },
						["maxReputation"] = { FACTION_ARGENT_CRUSADE, EXALTED },	-- Argent Crusade, Exalted.
						["isDaily"] = true,
						-- almost certainly the removed version, will check in Wrath Classic
						-- confirmed available 2023-7-30 [70/Human/Paladin/Revered]
					}),
					q(12588, {	-- Troll Patrol: Can You Dig It?
						["sourceQuest"] = 12596,	-- Pa'Troll
						["qg"] = 28042,	-- Captain Brandon
						["coord"] = { 48.7, 78.8, ZULDRAK },
						["isDaily"] = true,
					}),
					q(12594, {	-- Troll Patrol: Couldn't Care Less
						["sourceQuest"] = 12596,	-- Pa'Troll
						["qg"] = 28043,	-- Captain Grondel
						["coord"] = { 48.1, 63.8, ZULDRAK },
						["isDaily"] = true,
					}),
					q(12585, {	-- Troll Patrol: Creature Comforts
						["sourceQuest"] = 12596,	-- Pa'Troll
						["qg"] = 28043,	-- Captain Grondel
						["coord"] = { 48.1, 63.8, ZULDRAK },
						["isDaily"] = true,
					}),
					q(12568, {	-- Troll Patrol: Done to Death
						["sourceQuest"] = 12596,	-- Pa'Troll
						["qg"] = 28044,	-- Captain Rupert
						["coord"] = { 58.0, 72.4, ZULDRAK },
						["isDaily"] = true,
					}),
					q(12502, {	-- Troll Patrol: High Standards
						["sourceQuest"] = 12596,	-- Pa'Troll
						["qg"] = 28042,	-- Captain Brandon
						["coord"] = { 48.7, 78.8, ZULDRAK },
						["isDaily"] = true,
					}),
					q(12509, {	-- Troll Patrol: Intestinal Fortitude
						["sourceQuest"] = 12596,	-- Pa'Troll
						["qg"] = 28044,	-- Captain Rupert
						["coord"] = { 58.0, 72.4, ZULDRAK },
						["isDaily"] = true,
					}),
					q(12564, {	-- Troll Patrol: Something for the Pain
						["sourceQuest"] = 12596,	-- Pa'Troll
						["qg"] = 28042,	-- Captain Brandon
						["coord"] = { 48.7, 78.8, ZULDRAK },
						["isDaily"] = true,
					}),
					q(12541, {	-- Troll Patrol: The Alchemist's Apprentice
						["sourceQuest"] = 12596,	-- Pa'Troll
						["qg"] = 28205,	-- Alchemist Finklestein
						["coord"] = { 35.0, 52.1, ZULDRAK },
						["isDaily"] = true,
					}),
					q(12591, {	-- Troll Patrol: Throwing Down
						["sourceQuest"] = 12596,	-- Pa'Troll
						["qg"] = 28044,	-- Captain Rupert
						["coord"] = { 58.0, 72.4, ZULDRAK },
						["isDaily"] = true,
					}),
					q(12519, {	-- Troll Patrol: Whatdya Want, a Medal?
						["sourceQuest"] = 12596,	-- Pa'Troll
						["qg"] = 28043,	-- Captain Grondel
						["coord"] = { 48.1, 63.8, ZULDRAK },
						["isDaily"] = true,
					}),
					q(12861, {	-- Trolls Is Gone Crazy! -- aa
						["qg"] = 29690,	-- Chief Rageclaw
						["coord"] = { 32.1, 75.6, ZULDRAK },
						["groups"] = {
							i(41760),	-- Emancipator's Robes
							i(41761),	-- Wristguard of Healing Fingers
							i(41762),	-- Freedom-Path Treads
							i(41763),	-- Leggings of the Canny Chief
						},
					}),
					q(12506, {	-- Trouble at the Altar of Sseratus
						["sourceQuest"] = 12740,	-- Parachutes for the Argent Crusade
						["qg"] = 28062,	-- Hexer Ubungo
						["coord"] = { 40.5, 65.6, ZULDRAK },
					}),
					q(13097, {	-- Unfinished Business
						["sourceQuest"] = 12730,	-- Convocation at Zol'Heb
						["qg"] = 28401,	-- Har'koa
						["coord"] = { 60.2, 57.7, ZULDRAK },
						["timeline"] = { REMOVED_4_3_0 },
					}),
					q(29833, {	-- Unfinished Business
						["sourceQuest"] = 12730,	-- Convocation at Zol'Heb
						["qg"] = 28401,	-- Har'koa
						["coord"] = { 60.2, 57.7, ZULDRAK },
						["timeline"] = { ADDED_4_3_0 },
					}),
					q(12857, {	-- Wanted: Ragemane's Flipper
						["provider"] = { "o", 191728 },	-- Wanted!
						["coord"] = { 32.2, 75.6, ZULDRAK },
						["groups"] = {
							i(41987),	-- Staff of the Sorrowful Chieftain
							i(44734),	-- Hammer of Quiet Mourning
							i(44735),	-- Crescent of Brooding Fury
							i(44736),	-- Sword of Heartwrenching Slaughter
						},
					}),
					warchiefscommand(q(49534, {	-- Warchief's Command: Zul'Drak!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					})),
					q(12707, {	-- Wooly Justice
						["sourceQuest"] = 12685,	-- You Reap What You Sow
						["qg"] = 28484,	-- Scalper Ahunae
						["coord"] = { 59.1, 56.2, ZULDRAK },
						["groups"] = {
							i(39770),	-- Soothsayer's Hood
							i(39833),	-- Supple Bloodbinder's Boots
							i(39776),	-- Bloodbinder's Shoulderguards
							i(39778),	-- Bloodletter's Legplates
							i(39818),	-- Frigid Crossbow
						},
					}),
					q(12629, {	-- You Can Run, But You Can't Hide
						["sourceQuest"] = 12637,	-- Near Miss
						["altQuests"] = { 12643 },	-- Silver Lining
						["qg"] = 28518,	-- Stefan Vadu
						["coord"] = { 14.0, 73.8, ZULDRAK },
					}),
					q(12685, {	-- You Reap What You Sow
						["sourceQuest"] = 12684,	-- Blood of a Dead God
						["qg"] = 28401,	-- Har'koa
						["coord"] = { 63.6, 70.3, ZULDRAK },
						["groups"] = {
							i(39844),	-- Ritualistic Shield
							i(39861),	-- Supple Bloodbinder's Leggings
							i(39793),	-- Neckcharm of Mighty Mojo
							i(39845),	-- Ancestral Gauntlets
							i(39826),	-- Bloodletter's Blade
						},
					}),
					q(12686, {	-- Zero Tolerance
						["description"] = "Must be on |cFFFFD700Hazardous Materials|r to see this quest.",
						["sourceQuest"] = 12669,	-- So Far, So Bad
						["qg"] = 28503,	-- Overlord Drakuru
						["coord"] = { 27.0, 46.1, ZULDRAK },
					}),
					q(39208, {	-- Zul'Drak
						["timeline"] = { ADDED_6_2_0, REMOVED_7_3_5 },	-- old quest from the adventure guide. Pretty sure this was removed (CRIEVE NOTE: Not sure what patch it was removed.)
						["isBreadcrumb"] = true,
					}),
				}),
				n(RARES, {
					n(33776, {	-- Gondria
						["description"] = "This is a very sought-after Hunter Pet. If you see this mob, be a kind soul and announce to General chat instead of killing it.",
						["coords"] = {
							{ 63.0, 43.0, ZULDRAK },
							{ 69.6, 48.2, ZULDRAK },
							{ 61.6, 62.6, ZULDRAK },
							{ 77.6, 70.0, ZULDRAK },
							{ 67.8, 78.8, ZULDRAK },
						},
						["groups"] = {
							i(46324),	-- Gondria's Spectral Claw
						},
					}),
					n(32471, {	-- Griegen
						["coords"] = {
							{ 14.6, 56.8, ZULDRAK },
							{ 26.8, 55.6, ZULDRAK },
							{ 23.2, 61.6, ZULDRAK },
							{ 22.0, 70.6, ZULDRAK },
							{ 18.0, 70.6, ZULDRAK },
							{ 26.6, 71.2, ZULDRAK },
							{ 24.8, 76.8, ZULDRAK },
							{ 21.2, 79.8, ZULDRAK },
						},
						["groups"] = {
							i(44686),	-- Ethereal Terror Handwraps
						},
					}),
					n(32475, {	-- Terror Spinner
						["coords"] = {
							{ 53.2, 31.6, ZULDRAK },
							{ 61.2, 36.6, ZULDRAK },
							{ 74.6, 66.0, ZULDRAK },
							{ 77.2, 42.8, ZULDRAK },
							{ 72.0, 28.4, ZULDRAK },
							{ 71.8, 23.8, ZULDRAK },
							{ 82.0, 35.0, ZULDRAK },
						},
						["groups"] = {
							i(44685),	-- Calcified Web Spaulders
						},
					}),
					n(32447, {	-- Zul'drak Sentinel
						["coords"] = {
							{ 51.2, 84.4, ZULDRAK },
							{ 48.0, 79.6, ZULDRAK },
							{ 45.8, 75.8, ZULDRAK },
							{ 43.6, 72.8, ZULDRAK },
							{ 42.4, 70.6, ZULDRAK },
							{ 40.4, 64.2, ZULDRAK },
							{ 40.4, 61.4, ZULDRAK },
							{ 40.4, 58.0, ZULDRAK },
							{ 40.4, 55.2, ZULDRAK },
							{ 40.4, 52.4, ZULDRAK },
							{ 43.2, 54.8, ZULDRAK },
							{ 44.6, 56.2, ZULDRAK },
							{ 45.6, 60.2, ZULDRAK },
							{ 47.0, 62.0, ZULDRAK },
							{ 47.2, 63.8, ZULDRAK },
							{ 46.0, 66.0, ZULDRAK },
							{ 45.0, 67.2, ZULDRAK },
							{ 29.0, 72.2, ZULDRAK },
							{ 29.0, 78.2, ZULDRAK },
							{ 29.0, 81.2, ZULDRAK },
							{ 29.0, 82.6, ZULDRAK },
							{ 24.6, 82.6, ZULDRAK },
							{ 21.2, 82.6, ZULDRAK },
						},
						["groups"] = {
							i(44677),	-- Eternal Observer's Legplates
						},
					}),
				}),
				n(ZONE_DROPS, {
					i(48116, {	-- Gundrak Hatchling (PET!)
						["coords"] = {
							{ 72.6, 27.8, ZULDRAK },
							{ 78.2, 16.6, ZULDRAK },
							{ 87.0, 26.6, ZULDRAK },
							{ 81.6, 31.6, ZULDRAK },
							{ 75.2, 38.6, ZULDRAK },
						},
						["cr"] = 29334,	-- Gundrak Raptor
						["timeline"] = { ADDED_3_2_0 },
					}),
					i(41120, {	-- Plans: Reinforced Cobalt Legplates (RECIPE!)
						["coords"] = {
							{ 78.8, 20.2, ZULDRAK },
							{ 81.6, 24.8, ZULDRAK },
							{ 78.6, 33.0, ZULDRAK },
							{ 78.0, 27.0, ZULDRAK },
							{ 73.6, 23.8, ZULDRAK },
						},
						["cr"] = 29235,	-- Gundrak Savage
					}),
					i(38660, {	-- Unliving Choker
						["description"] = "This Item will drop instead of |cffffffffWrithing Choker|r until |cffffd700Cleansing Drak'Tharon|r has been completed.",
						["cr"] = 28519,	-- Withered Troll
						["coords"] = {
							{ 14.0, 69.0, ZULDRAK },
							{ 16.2, 75.6, ZULDRAK },
							{ 17.6, 70.8, ZULDRAK },
							{ 22.4, 71.6, ZULDRAK },
						},
					}),
					i(38673, {	-- Writhing Choker
						["description"] = "This Item will drop instead of |cffffffffUnliving Choker|r once |cffffd700Cleansing Drak'Tharon|r has been completed.",
						["sourceQuests"] = {
							-- #if AFTER 4.3.0.14890
							30120,	-- Cleansing Drak'Tharon
							-- #else
							12238,	-- Cleansing Drak'Tharon
							-- #endif
						},
						["cr"] = 28519,	-- Withered Troll
						["coords"] = {
							{ 14.0, 69.0, ZULDRAK },
							{ 16.2, 75.6, ZULDRAK },
							{ 17.6, 70.8, ZULDRAK },
							{ 22.4, 71.6, ZULDRAK },
						},
					}),
				}),
			},
		}),
	})),
});
