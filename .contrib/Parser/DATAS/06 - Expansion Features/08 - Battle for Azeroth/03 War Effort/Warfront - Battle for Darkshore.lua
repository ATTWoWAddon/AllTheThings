-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.BFA, {
		n(WAR_EFFORT, {
			m(DARKSHORE, {	-- Outdoor Warfront-Phased Content
				-- This redirects the mini list to use this header instead when this quest is NOT active and the original mapID is the map that is currently active
				["zone-artIDs"] = { 1176 },	-- Alliance during a Horde Controlled day
				["icon"] = 236739,
				["timeline"] = { ADDED_8_1_0 },
				["crs"] = { 141489 },	-- Zidormi
				["groups"] = {
					n(WORLD_BOSSES, {
						["isRaid"] = true,
						["modID"] = 3,
						["groups"] = {
							e(2345, {	-- Ivus the Decayed [Alliance Only]
								["creatureID"] = 148295,	-- Ivus the Decayed
								["questID"] = 54895,	-- Ivus the Decayed (WQ)
								["coord"] = { 41.47, 35.97, DARKSHORE },
								["races"] = ALLIANCE_ONLY,
								["isRaid"] = true,
								["isWeekly"] = true,
								["isWorldQuest"] = true,
								["groups"] = {
									i(166695),	-- Petrified Ironbark Crown
									i(166687),	-- Warring Ancient's Mask
									i(166691),	-- Forest Protector's Shoulderguards
									i(166683),	-- Garments of the Forest Lord
									i(166694),	-- Gnarled Bough Gauntlets
									i(166686),	-- Ivus' Tanglemoss Waistcord
									i(166690),	-- Protector's Tangleroot Belt
									i(166698),	-- Stoneroot Stompers
									i(161417),	-- Ancient Knot of Wisdom
									i(161415),	-- Forest Lord's Razorleaf
									i(161413),	-- Knot of Ancient Fury
								},
							}),
							e(2329, {	-- Ivus the Forest Lord [Horde Only]
								["creatureID"] = 144946,	-- Ivus the Forest Lord
								["questID"] = 54896,	-- Ivus the Forest Lord (WQ)
								["coord"] = { 41.4, 35.9, DARKSHORE },
								["races"] = HORDE_ONLY,
								["isRaid"] = true,
								["isWeekly"] = true,
								["isWorldQuest"] = true,
								["groups"] = {
									i(166696),	-- Petrified Ironbark Crown
									i(166688),	-- Warring Ancient's Crown
									i(166692),	-- Forest Protector's Shoulderguards
									i(166684),	-- Garments of the Forest Lord
									i(166693),	-- Gnarled Bough Gauntlets
									i(166685),	-- Ivus' Tanglemoss Waistcord
									i(166689),	-- Protector's Tangleroot Belt
									i(166697),	-- Stoneroot Stompers
									i(166793),	-- Ancient Knot of Wisdom
									i(166794),	-- Forest Lord's Razorleaf
									i(166795),	-- Knot of Ancient Fury
								},
							}),
						},
					}),
					n(COMMON_BOSS_DROPS, bubbleDown({
						["modID"] = 3,
					},{
						["crs"] = {
							149652,	-- Agathe Wyrmwood
							148787,	-- Alashanir
							147966,	-- Aman
							147744,	-- Amberclaw
							148037,	-- Athil Dewfire
							147708,	-- Athrikus Narassin
							149660,	-- Blackpaw
							148497,	-- Burninator Mark V
							149141,	-- Burninator Mark V
							147845,	-- Commander Drald
							148025,	-- Commander Ralesh
							147260,	-- Conflagros
							149661,	-- Croz Bloodrage
							149655,	-- Croz Bloodrage
							147241,	-- Cyclarus
							149654,	-- Glimmerspine
							147746,	-- Glrglrr
							147261,	-- Granokk
							148031,	-- Gren Tornfur
							149662,	-- Grimhorn
							147240,	-- Hydrath
							149657,	-- Madfeather
							147701,	-- Moxo The Beheader
							147970,	-- Mrggrmarr
							147758,	-- Onu
							149664,	-- Orwell Stevenson
							149659,	-- Orwell Stevenson
							148103,	-- Sapper Odette
							149665,	-- Scalefiend
							149663,	-- Shadowclaw
							147751,	-- Shattershard
							147897,	-- Soggoth The Slitherer
							147332,	-- Stonebinder Ssravess
							147435,	-- Thelar Moonstrike
							147942,	-- Twilight Prophet Graeme
							147664,	-- Zimkaga
						},
						["groups"] = {
							n(WEAPONS, {
								["description"] = "Appearances from:\nDarkshore Rares/Treasures\nNormal Warfront Completion\nNormal Warfront Quest\nHeroic Warfront Quest",
								["groups"] = {
									-- Alliance
									i(164966, { ["timeline"] = { CREATED_8_1_0 }}),	-- Glade Warden's Glaive
									i(166898),	-- Sentinel's Blade
									i(165628),	-- Sentinel's Branch
									i(165637),	-- Sentinel's Bulwark
									i(165624),	-- Sentinel's Crescent
									i(165636),	-- Sentinel's Gavel
									i(165632),	-- Sentinel's Greatblade
									i(165627),	-- Sentinel's Halberd
									i(165635);	-- Sentinel's Moonglaive
									i(165623),	-- Sentinel's Recurve
									i(165629),	-- Sentinel's Spellblade
									i(166483),	-- Sentinel's Tomahawk
									i(165625),	-- Sentinel's Warhammer
									-- Horde
									i(165614),	-- Apothecary Spellstaff
									i(165608),	-- Blightspreader's Crescent
									i(165622),	-- Deathguard's Blade
									i(166897),	-- Deathguard's Gavel
									i(163528),	-- Deathguard's Gladius
									i(166482),	-- Deathguard's Greatsword
									i(165620),	-- Deathguard's Warshield
									i(165611),	-- Deathstalker's Headcracker
									i(165619),	-- Deathstalker's Warglaive
									i(165621),	-- Deadshot Handcannon
									i(165610),	-- Plaguebringer's Dirk
									i(165613),	-- Plaguebringer's Halberd
									i(166802),	-- Plaguebringer's Spellblade
								},
							}),
							n(BACK, {
								["description"] = "Appearances from:\nDarkshore Rares/Treasures",
								["groups"] = {
									-- Alliance
									i(166758),	-- Moonpriest's Cloak
									i(166759),	-- Darkwood Sentinel's Drape
									i(166760),	-- Kaldorei Archer's Greatcloak
									i(166761),	-- Wardenguard's Drape
									-- Horde
									i(166762),	-- Plaguebringer's Drape
									i(166763),	-- Deathstalker's Cloak
									i(166764),	-- Blightguard's Cloak
									i(166765),	-- Deathguard's Greatcloak
								},
							}),
							n(ARMOR, {
								["description"] = "Appearances from:\nDarkshore Rares/Treasures",
								["groups"] = {
									-- Alliance
									i(166572),	-- Moonpriest's Visor
									i(165435),	-- Moonpriest's Coronet
									i(166558),	-- Moonpriest's Epaulets
									i(165437),	-- Moonpriest's Mantle
									i(166577),	-- Moonpriest's Garments
									i(165460),	-- Moonpriest's Vestments
									i(165439),	-- Moonpriest's Cuffs
									i(165434),	-- Moonpriest's Handwraps
									i(165438),	-- Moonpriest's Sash
									i(165436),	-- Moonpriest's Legwraps
									i(165433),	-- Moonpriest's Sandals
									i(166571),	-- Darkwood Sentinel's Guise
									i(165443),	-- Darkwood Sentinel's Cowl
									i(166557),	-- Darkwood Sentinel's Shoulderpads
									i(165445),	-- Darkwood Sentinel's Monnions
									i(165440),	-- Darkwood Sentinel's Tunic
									i(166580),	-- Darkwood Sentinel's Jerkin
									i(165447),	-- Darkwood Sentinel's Armguards
									i(165442),	-- Darkwood Sentinel's Grips
									i(165446),	-- Darkwood Sentinel's Cinch
									i(165444),	-- Darkwood Sentinel's Breeches
									i(165441),	-- Darkwood Sentinel's Footpads
									i(166566),	-- Kaldorei Archer's Coif
									i(165451),	-- Kaldorei Archer's Hood
									i(165453),	-- Kaldorei Archer's Shoulderguards
									i(166556),	-- Kaldorei Archer's Spaulders
									i(166579),	-- Kaldorei Archer's Hauberk
									i(165448),	-- Kaldorei Archer's Chainmail
									i(165455),	-- Kaldorei Archer's Vambraces
									i(165450),	-- Kaldorei Archer's Gauntlets
									i(165454),	-- Kaldorei Archer's Belt
									i(165452),	-- Kaldorei Archer's Legguards
									i(165449),	-- Kaldorei Archer's Greaves
									i(166565),	-- Wardenguard's Faceguard
									i(165459),	-- Wardenguard's Greathelm
									i(165462),	-- Wardenguard's Pauldrons
									i(166555),	-- Wardenguard's Shoulderplates
									i(165456),	-- Wardenguard's Chestplate
									i(166578),	-- Wardenguard's Breastplate
									i(165464),	-- Wardenguard's Wristguards
									i(165458),	-- Wardenguard's Battlegloves
									i(165463),	-- Wardenguard's Chain
									i(165461),	-- Wardenguard's Legplates
									i(165457),	-- Wardenguard's Warboots
									-- Horde
									i(165467),	-- Plaguebringer's Cowl
									i(166564),	-- Plaguebringer's Skullcap
									i(166554),	-- Plaguebringer's Mantle
									i(165469),	-- Plaguebringer's Shoulderguards
									i(166573),	-- Plaguebringer's Vestments
									i(165492),	-- Plaguebringer's Robe
									i(165471),	-- Plaguebringer's Armwraps
									i(165466),	-- Plaguebringer's Gloves
									i(165470),	-- Plaguebringer's Cord
									i(165468),	-- Plaguebringer's Legwraps
									i(165465),	-- Plaguebringer's Boots
									i(165475),	-- Deathstalker's Collar
									i(166563),	-- Deathstalker's Mask
									i(166553),	-- Deathstalker's Shoulderpads
									i(165477),	-- Deathstalker's Shoulderguards
									i(166576),	-- Deathstalker's Jerkin
									i(165472),	-- Deathstalker's Chestpiece
									i(165479),	-- Deathstalker's Bindings
									i(165474),	-- Deathstalker's Grips
									i(165478),	-- Deathstalker's Belt
									i(165476),	-- Deathstalker's Leggings
									i(165473),	-- Deathstalker's Treads
									i(166562),	-- Blightguard's Casque
									i(165483),	-- Blightguard's Helmet
									i(166552),	-- Blightguard's Spaulders
									i(165485),	-- Blightguard's Shoulderguards
									i(166575),	-- Blightguard's Chainmail
									i(165480),	-- Blightguard's Harness
									i(165487),	-- Blightguard's Bracers
									i(165486),	-- Blightguard's Girdle
									i(165482),	-- Blightguard's Grasps
									i(165484),	-- Blightguard's Legguards
									i(165481),	-- Blightguard's Footguards
									i(166561),	-- Deathguard's Casque
									i(165491),	-- Deathguard's Helm
									i(165494),	-- Deathguard's Pauldrons
									i(166551),	-- Deathguard's Shoulderplates
									i(166574),	-- Deathguard's Breastplate
									i(165488),	-- Deathguard's Chestplate
									i(165496),	-- Deathguard's Vambraces
									i(165490),	-- Deathguard's Gauntlets
									i(165495),	-- Deathguard's Waistplate
									i(165493),	-- Deathguard's Greaves
									i(165489),	-- Deathguard's Sabatons
								},
							}),
							n(DECOR, sharedDataSelf({
								["timeline"] = { ADDED_11_2_7 },
							},{
								i(245462),	-- Banshee Queen's Banner
								i(245627),	-- Elven Temple Brazier
								i(246110),	-- Filigree Moon Sconce
								i(241066),	-- Forsaken Spiked Brazier
							})),
						},
					})),
					n(RARES, {
						n(149652, {	-- Agathe Wyrmwood [A Only]
							-- ["questID"] = 54889,	-- Agathe Wyrmwood [Alliance]
							["races"] = ALLIANCE_ONLY,
							["questID"] = 54883,
							["isWeekly"] = true,
							["coord"] = { 49.5, 25.1, DARKSHORE },
							["description"] = "Only shows up when Alliance Controlled.",
							["groups"] = {
								i(166438),	-- Caged Bear (MOUNT!)
							},
						}),
						n(148787, {	-- Alash'anir
							["allianceQuestID"] = 54695,	-- Alash'anir [Alliance]
							["hordeQuestID"] = 54696,		-- Alash'anir [Horde]
							["isWeekly"] = true,
							["coord"] = { 56.48, 30.73, DARKSHORE },
							["groups"] = {
								i(166432),	-- Ashenvale Chimaera (MOUNT!)
							},
						}),
						n(147966, {	-- Aman
							["allianceQuestID"] = 54405,	-- Aman [Alliance]
							["hordeQuestID"] = 54406,		-- Aman [Horde]
							["isWeekly"] = true,
							["coord"] = { 37.85, 84.74, DARKSHORE },
						}),
						n(147744, {	-- Amberclaw
							["allianceQuestID"] = 54285,	-- Amberclaw [Alliance]
							["hordeQuestID"] = 54286,		-- Amberclaw [Horde]
							["isWeekly"] = true,
							["coord"] = { 57.38, 15.67, DARKSHORE },
							["cr"] = 147746,	-- Glrglrr
						}),
						n(148037, {	-- Athil Dewfire [H Only]
							["questID"] = 54431,	-- Athil Dewfire [Horde]
							["races"] = HORDE_ONLY,
							["isWeekly"] = true,
							["coord"] = { 40.69, 73.23, DARKSHORE },
							["description"] = "Only shows up when Horde Controlled.",
							["groups"] = {
								i(166449),	-- Darkshore Sentinel (PET!)
								i(166803),	-- Umber Nightsaber (MOUNT!)
							},
						}),
						n(147708, {	-- Athrikus Narassin
							["allianceQuestID"] = 54278,	-- Athrikus Narassin [Alliance]
							["hordeQuestID"] = 54279,		-- Athrikus Narassin [Horde]
							["isWeekly"] = true,
							["coord"] = { 58.5, 24.2, DARKSHORE },
							["groups"] = {
								i(166784),	-- Narassin's Soul Gem (TOY!)
							},
						}),
						n(149660, {	-- Blackpaw [H Only]
							["questID"] = 54890,	-- Blackpaw [Horde]
							["races"] = HORDE_ONLY,
							["isWeekly"] = true,
							["coord"] = { 49.68, 24.94, DARKSHORE },
							["description"] = "Only shows up when Horde Controlled.",
							["groups"] = {
								i(166428),	-- Blackpaw (MOUNT!)
							},
						}),
						n(149141, {	-- Burninator Mark V [A Only]
							["races"] = ALLIANCE_ONLY,
							["cr"] = 148497,	-- When he spawns as a WQ
							["questID"] = 54768,
							["isWeekly"] = true,
							["coord"] = { 41.5, 76.4, DARKSHORE },
							["description"] = "Only shows up when Alliance Controlled.",
							["groups"] = {
								i(166449),	-- Darkshore Sentinel (PET!)
								i(166788),	-- Twiddle Twirler: Shredder Blade (TOY!)
							},
						}),
						n(147845, {	-- Commander Drald [A Only]
							-- ["questID"] = 54251,	-- Commander Drald [Alliance]
							["races"] = ALLIANCE_ONLY,
							["questID"] = 54309,
							["isWeekly"] = true,
							["coord"] = { 46.51, 86.14, DARKSHORE },
							["description"] = "Only shows up when Alliance Controlled.",
							["groups"] = {
								i(166790),	-- Highborne Memento (TOY!)
							},
						}),
						n(148025, {	-- Commander Ralesh
							["allianceQuestID"] = 54426,	-- Commander Ralesh [Alliance]
							["hordeQuestID"] = 54427,		-- Commander Ralesh [Horde]
							["isWeekly"] = true,
							["coord"] = { 37.96, 76.23, DARKSHORE },
							["groups"] = {
								i(166787),	-- Twiddle Twirler: Sentinel's Glaive (TOY!)
							},
						}),
						n(147260, {	-- Conflagros
							["allianceQuestID"] = 54232,	-- Conflagros [Alliance]
							["hordeQuestID"] = 54233,		-- Conflagros [Horde]
							["isWeekly"] = true,
							["coord"] = { 39.07, 61.98, DARKSHORE },
							["groups"] = {
								i(166451),	-- Detective Ray (PET!)
							},
						}),
						n(149655, {	-- Croz Bloodrage [A Only]
							-- ["questID"] = 54891,	-- Croz Bloodrage [Alliance]
							["crs"] = {
								149661,	-- Croz Bloodrage (2 Versions?)
							},
							["races"] = ALLIANCE_ONLY,
							["questID"] = 54886,
							["isWeekly"] = true,
							["coord"] = { 50.79, 32.22, DARKSHORE },
							["description"] = "Only shows up when Alliance Controlled.",
							["groups"] = {
								i(166437),	-- Captured Kaldorei Nightsaber (MOUNT!)
							},
						}),
						n(147241, {	-- Cyclarus
							["allianceQuestID"] = 54229,	-- Cyclarus [Alliance]
							["hordeQuestID"] = 54230,		-- Cyclarus [Horde]
							["isWeekly"] = true,
							["coord"] = { 43.79, 53.75, DARKSHORE },
							["groups"] = {
								i(166448),	-- Gust of Cyclarus (PET!)
							},
						}),
						n(148790, {	-- Frightened Kodo
							["description"] = "This npc roams around. Once you spot it, you will then need to click it to obtain the mount.",
							["coords"] = {
								{ 37.01, 65.01, DARKSHORE },
								{ 38.01, 66.01, DARKSHORE },
								{ 41.01, 54.01, DARKSHORE },
								{ 41.23, 64.99, DARKSHORE },
								{ 41.31, 65.48, DARKSHORE },
								{ 43.81, 67.51, DARKSHORE },
								{ 44.01, 54.01, DARKSHORE },
								{ 44.04, 67.56, DARKSHORE },
								{ 45.01, 51.31, DARKSHORE },
								{ 45.01, 67.01, DARKSHORE },
							},
							["groups"] = {
								i(166433),	-- Frightened Kodo (MOUNT!)
							},
						}),
						n(149654, {	-- Glimmerspine
							["allianceQuestID"] = 54884,	-- Glimmerspine [Alliance]
							["hordeQuestID"] = 54885,		-- Glimmerspine [Horde]
							["isWeekly"] = true,
							["coord"] = { 43.51, 19.63, DARKSHORE },
						}),
						n(147261, {	-- Granokk
							["allianceQuestID"] = 54234,	-- Granokk [Alliance]
							["hordeQuestID"] = 54235,		-- Granokk [Horde]
							["isWeekly"] = true,
							["coord"] = { 48.35, 55.56, DARKSHORE },
						}),
						n(148031, {	-- Gren Tornfur
							["allianceQuestID"] = 54428,	-- Gren Tornfur [Alliance]
							["hordeQuestID"] = 54429,		-- Gren Tornfur [Horde]
							["isWeekly"] = true,
							["coord"] = { 40.92, 56.43, DARKSHORE },
							["groups"] = {
								i(166785),	-- Detoxified Blight Grenade (TOY!)
							},
						}),
						n(149662, {	-- Grimhorn [H Only]
							["questID"] = 54891,	-- Grimhorn [Horde]
							["races"] = HORDE_ONLY,
							["isWeekly"] = true,
							["coord"] = { 50.72, 32.32, DARKSHORE },
							["description"] = "Only shows up when Horde Controlled.",
							["groups"] = {
								i(166525, {	-- Nightwreathed Egg
									i(166528),	-- Nightwreathed Watcher (PET!)
								}),
							},
						}),
						n(147240, {	-- Hydrath
							["allianceQuestID"] = 54227,	-- Hydrath [Alliance]
							["hordeQuestID"] = 54228,		-- Hydrath [Horde]
							["isWeekly"] = true,
							["coord"] = { 52.51, 32.11, DARKSHORE },
							["groups"] = {
								i(166452),	-- Hydrath Droplet (PET!)
							},
						}),
						n(149657, {	-- Madfeather
							["allianceQuestID"] = 54887,	-- Madfeather [Alliance]
							["hordeQuestID"] = 54888,		-- Madfeather [Horde]
							["isWeekly"] = true,
							["coord"] = { 44.03, 48.21, DARKSHORE },
						}),
						n(147701, {	-- Moxo The Beheader [A Only]
							-- ["questID"] = 54430,	-- Moxo The Beheader [Alliance]
							["races"] = ALLIANCE_ONLY,
							["questID"] = 54277,
							["isWeekly"] = true,
							["coords"] = {
								{ 63.45, 20.01, DARKSHORE },
								{ 66.68, 19.09, DARKSHORE },
								{ 65.54, 19.98, DARKSHORE },
								{ 64.39, 20.09, DARKSHORE },
							},
							["description"] = "Only shows up when Alliance Controlled.",
							["groups"] = {
								i(166434),	-- Captured Umber Nightsaber (MOUNT!)
							},
						}),
						n(147970, {	-- Mrggrmarr
							["allianceQuestID"] = 54408,	-- Mrggrmarr [Alliance]
							["hordeQuestID"] = 54409,		-- Mrggrmarr [Horde]
							["isWeekly"] = true,
							["coord"] = { 35.85, 81.75, DARKSHORE },
						}),
						n(147758, {	-- Onu [H Only]
							["questID"] = 54291,	-- Onu [Horde]
							["races"] = HORDE_ONLY,
							["isWeekly"] = true,
							["coord"] = { 45.17, 74.99, DARKSHORE },
							["description"] = "Only shows up when Horde Controlled.",
							["groups"] = {
								i(166453),	-- Everburning Treant (PET!)
							},
						}),
						n(149659, {	-- Orwell Stevenson [A Only]
							-- ["questID"] = 54890,	-- Orwell Stevenson [Alliance]
							["races"] = ALLIANCE_ONLY,
							["questID"] = 54889,
							["isWeekly"] = true,
							["coord"] = { 39.79, 32.94, DARKSHORE },
							["description"] = "Only shows up when Alliance Controlled.",
							["groups"] = {
								i(166525, {	-- Nightwreathed Egg
									i(166528),	-- Nightwreathed Watcher (PET!)
								}),
							},
						}),
						n(148103, {	-- Sapper Odette [H Only]
							["questID"] = 54452,	-- Sapper Odette [Horde]
							["races"] = HORDE_ONLY,
							["isWeekly"] = true,
							["coord"] = { 32.98, 83.94, DARKSHORE },
							["description"] = "Only shows up when Horde Controlled.",
							["groups"] = {
								i(166788),	-- Twiddle Twirler: Shredder Blade (TOY!)
							},
						}),
						n(149665, {	-- Scalefiend
							["allianceQuestID"] = 54893,	-- Scalefiend [Alliance]
							["hordeQuestID"] = 54894,		-- Scalefiend [Horde]
							["isWeekly"] = true,
							["coord"] = { 47.64, 44.55, DARKSHORE },
						}),
						n(149663, {	-- Shadowclaw [H Only]
							["questID"] = 54892,	-- Shadowclaw [Horde]
							["races"] = HORDE_ONLY,
							["isWeekly"] = true,
							["coord"] = { 39.79, 32.94, DARKSHORE },
							["description"] = "Only shows up when Horde Controlled.",
							["groups"] = {
								-- i(166437),	-- Captured Kaldorei Nightsaber (MOUNT!) -- Possible it's a drop here; will need data
								i(166435),	-- Kaldorei Nightsaber (MOUNT!)
							},
						}),
						n(147751, {	-- Shattershard
							["allianceQuestID"] = 54289,	-- Shattershard [Alliance] 54884
							["hordeQuestID"] = 54290,		-- Shattershard [Horde]
							["isWeekly"] = true,
							["coord"] = { 43.48, 29.38, DARKSHORE },
						}),
						n(147897, {	-- Soggoth The Slitherer
							["allianceQuestID"] = 54320,	-- Soggoth The Slitherer [Alliance]
							["hordeQuestID"] = 54321,		-- Soggoth The Slitherer [Horde]
							["isWeekly"] = true,
							["coord"] = { 40.57, 85.09, DARKSHORE },
							["groups"] = {
								i(166454),	-- Void Jelly (PET!)
							},
						}),
						n(147332, {	-- Stonebinder Ssravess
							["allianceQuestID"] = 54247,	-- Stonebinder Ssravess [Alliance]
							["hordeQuestID"] = 54248,		-- Stonebinder Ssravess [Horde]
							["isWeekly"] = true,
							["coord"] = { 45.51, 58.96, DARKSHORE },
						}),
						n(147435, {	-- Thelar Moonstrike [H Only]
							["questID"] = 54252,	-- Thelar Moonstrike [Horde]
							["races"] = HORDE_ONLY,
							["isWeekly"] = true,
							["coord"] = { 62.12, 16.49, DARKSHORE },
							["description"] = "Only shows up when Horde Controlled.",
							["groups"] = {
								i(166790),	-- Highborne Memento (TOY!)
							},
						}),
						n(147942, {	-- Twilight Prophet Graeme
							["allianceQuestID"] = 54397,	-- Twilight Prophet Graeme [Alliance]
							["hordeQuestID"] = 54398,		-- Twilight Prophet Graeme [Horde]
							["isWeekly"] = true,
							["coord"] = { 40.62, 82.72, DARKSHORE },
							["groups"] = {
								i(166455),	-- Zur'aj the Depleted (PET!)
							},
						}),
						n(147664, {	-- Zim'kaga [A Only]
							["races"] = ALLIANCE_ONLY,
							["questID"] = 54274,
							["isWeekly"] = true,
							["coord"] = { 62.38, 9.84, DARKSHORE },
							["groups"] = {
								i(166453),	-- Everburning Treant (PET!)
							},
						}),
					}),
					n(TREASURES, sharedData({["isDaily"] = true},{
						o(319222, {	-- Darkshore Cache
							["questID"] = 54880,
							["coord"] = { 44.3, 53.4, DARKSHORE },
						}),
						o(320514, {	-- Darkshore Cache
							["questID"] = 54908,
							["coords"] = {
								{ 55.1, 15.7, DARKSHORE },
								{ 56.7, 9.4, DARKSHORE },
								{ 57.8, 23.9, DARKSHORE },
								{ 58.4, 10.0, DARKSHORE },
								{ 58.5, 9.9, DARKSHORE },
								{ 58.9, 25.2, DARKSHORE },
								{ 60.8, 22.3, DARKSHORE },
								{ 61.2, 20.1, DARKSHORE },
								{ 61.7, 19.4, DARKSHORE },
								{ 62.6, 18.2, DARKSHORE },
								{ 62.8, 14.5, DARKSHORE },
							},
						}),
						o(320515, {	-- Darkshore Cache
							["questID"] = 54909,
							["coord"] = { 50.5, 22.8, DARKSHORE },
						}),
						o(320516, {	-- Darkshore Cache
							["questID"] = 54910,
							["coords"] = {
								{ 38.4, 43.4, DARKSHORE },
								{ 38.4, 43.5, DARKSHORE },
								{ 39.2, 37.8, DARKSHORE },
								{ 39.4, 43.3, DARKSHORE },
								{ 39.9, 40.9, DARKSHORE },
								{ 40.8, 43.4, DARKSHORE },
								{ 41.1, 38.0, DARKSHORE },
								{ 41.1, 41.7, DARKSHORE },
								{ 41.7, 42.7, DARKSHORE },
								{ 42.4, 38.5, DARKSHORE },
								{ 42.5, 43.3, DARKSHORE },
							},
						}),
						o(320517, {	-- Darkshore Cache
							["questID"] = 54911,
							["coords"] = {
								{ 36.8, 51.9, DARKSHORE },
								{ 39.9, 50.4, DARKSHORE },
								{ 40.0, 50.6, DARKSHORE },
								{ 41.3, 48.2, DARKSHORE },
								{ 42.5, 45.5, DARKSHORE },
								{ 44.3, 53.4, DARKSHORE },
								{ 44.7, 47.4, DARKSHORE },
								{ 44.8, 44.5, DARKSHORE },
								{ 45.5, 48.4, DARKSHORE },
								{ 45.8, 44.2, DARKSHORE },
								{ 46.8, 55.6, DARKSHORE },
							},
						}),
						o(320518, {	-- Darkshore Cache
							["questID"] = 54912,
							["coords"] = {
								{ 31.5, 85.5, DARKSHORE },
								{ 37.3, 76.9, DARKSHORE },
								{ 37.8, 61.7, DARKSHORE },
								{ 37.9, 84.1, DARKSHORE },
								{ 38.5, 60.4, DARKSHORE },
								{ 39.4, 62.2, DARKSHORE },
								{ 40.2, 73.7, DARKSHORE },
								{ 41.8, 84.4, DARKSHORE },
								{ 43.4, 81.4, DARKSHORE },
								{ 44.2, 60.0, DARKSHORE },
							},
						}),
						o(319211, {	-- Darkshore Cache
							["coords"] = {
								{ 39.9, 26.9, DARKSHORE },
								{ 42.6, 35.0, DARKSHORE },
								{ 48.2, 27.4, DARKSHORE },
								{ 49.2, 25.4, DARKSHORE },
								{ 49.9, 18.2, DARKSHORE },
								{ 50.6, 22.7, DARKSHORE },
								{ 51.2, 28.0, DARKSHORE },
								{ 51.7, 21.8, DARKSHORE },
								{ 52.3, 18.1, DARKSHORE },
							},
						}),
					})),
					n(WORLD_QUESTS, sharedData({	-- Alliance
						["races"] = ALLIANCE_ONLY,
						["isWorldQuest"] = true,
					},{
						q(54669),	-- A Dangerous Combination(A)
						q(54840),	-- Agathe Wyrmwood
						q(54825),	-- Alash'anir (A)
						q(54823),	-- Aman (A)
						q(54678, {	-- Anything We Can Salvage (A)
							["groups"] = {
								o_repeated({
									i(166287),	-- Silver Dawning Salvage (QI!)
									o(313446),	-- Silver Dawning Salvage
									o(313447),	-- Silver Dawning Salvage
									o(313448),	-- Silver Dawning Salvage
								}),
							},
						}),
						q(54821),	-- Athrikus Narassin (A)
						q(54677),	-- Back to the Depths (A)
						q(54856, {	-- Bilgewater Bandits (A)
							["groups"] = {
								o(316792, {	-- Pilfered Iron Ore
									i(166475),	-- Pilfered Iron Ore (QI!)
								}),
							},
						}),
						q(54784),	-- Blackwood Liberation (A)
						q(54837),	-- Burninator Mark V
						q(54836),	-- Commander Drald (A)
						q(54834),	-- Commander Ral'esh (A)
						q(54818),	-- Conflagros (A)
						q(54838),	-- Croz Bloodrage (A)
						q(54817),	-- Cyclarus (A)
						q(54679),	-- Fueling the Flames (A)
						q(54858),	-- Glaive Consequences (A)
						q(54831),	-- Glimmerspine (A)
						q(54832),	-- Glrglrr (A)
						q(54819),	-- Granokk (A)
						q(54827),	-- Gren Tornfur (A)
						q(54675),	-- Hunting Season (A)
						q(54816),	-- Hydrath (A)
						q(54667),	-- Legacy in Ruins (A)
						q(54826),	-- Madfeather (A)
						q(54835),	-- Moxo the Beheader (A)
						q(54830),	-- Mrggr'marr (A)
						q(54841),	-- Orwell Stevenson (A)
						q(54668),	-- Out of Their Mine (A)
						q(54674, {	-- Prisoners of the Darkscale (A)
							["groups"] = {
								i(166273),	-- Darkscale Key (QI!)
							},
						}),
						q(54672),	-- Rituals of Twilight (A)
						q(54833),	-- Scalefiend (A)
						q(54676),	-- Shards of Narassin (A)
						q(54698),	-- Shattering Spears (A)
						q(54824),	-- Shattershard (A)
						q(54822),	-- Soggoth the Slitherer (A)
						q(54829),	-- Stonebinder Ssra'vess (A)
						q(54673),	-- Tip of the Trident (A)
						q(54857),	-- Turning the Tides (A)
						q(54828),	-- Twilight Prophet Graeme (A)
						q(54820),	-- Zim'kaga (A)
					})),
					n(WORLD_QUESTS, sharedData({	-- Horde
						["races"] = HORDE_ONLY,
						["isWorldQuest"] = true,
					},{
						q(54497),	-- A Dangerous Combination (H)
						q(54797),	-- Alash'anir (H)
						q(54795),	-- Aman (H)
						q(54531, {	-- Anything We Can Salvage (H)
							["groups"] = {
								i(166287),	-- Silver Dawning Salvage (QI!)
							},
						}),
						q(54809),	-- Athil Dewfire (H)
						q(54793),	-- Athrikus Narassin (H)
						q(54528),	-- Back to the Depths (H)
						q(54811),	-- Blackpaw (H)
						q(54612),	-- Blood and Ashes (H)
						q(54806),	-- Commander Ral'esh (H)
						q(54790),	-- Conflagros (H)
						q(54789),	-- Cyclarus (H)
						q(54724),	-- Ending the Blackwood (H)
						q(54536),	-- Fueling the Flames (H)
						q(54803),	-- Glimmerspine (H)
						q(54804),	-- Glrglrr (H)
						q(54791),	-- Granokk (H)
						q(54799),	-- Gren Tornfur (H)
						q(54810),	-- Grimhorn (H)
						q(54788),	-- Hydrath (H)
						q(54648),	-- Kaldorei Resurgence (H)
						q(54467),	-- Legacy in Ruins (H)
						q(54798),	-- Madfeather (H)
						q(54802),	-- Mrggr'marr (H)
						q(54792),	-- Onu (H)
						q(54514, {	-- Prisoners of the Darkscale (H)
							["groups"] = {
								i(166273),	-- Darkscale Key (QI!)
							},
						}),
						q(54499),	-- Rituals of Twilight (H)
						q(54807),	-- Sapper Odette (H)
						q(54805),	-- Scalefiend (H)
						q(54496),	-- Scurvy Dogs! (H)
						q(54812),	-- Shadowclaw (H)
						q(54796),	-- Shattershard (H)
						q(54520),	-- Singed Saplings (H)
						q(54794),	-- Soggoth the Slitherer (H)
						q(54521),	-- Stolen Sorcery (H)
						q(54801),	-- Stonebinder Ssra'vess (H)
						q(54808),	-- Thelar Moonstrike (H)
						q(54509),	-- Tip of the Trident (H)
						q(54722),	-- Turning the Tides (H)
						q(54800),	-- Twilight Prophet Graeme (H)
						q(54719),	-- Worgen in the Ore Mine (H)
					})),
					n(WARFRONT_BATTLE_FOR_DARKSHORE, {	-- Completely separate, distinct Warfont scenario
						["lore"] = "The Battle for Darkshore is the second warfront in Battle for Azeroth where the Forsaken and the Night Elves struggle for control of a staging area near the former Night Elven capital region of Teldrassil.",
						["maps"] = {
							1333,	-- Horde Intro Quest Map
							1203,	-- ???
							-- 1309,	-- 8.2+ Darkshore ?
							1338,	-- Actual Scenario [Alliance]
							1332,	-- Actual Scenario [Horde]
						},
						["crs"] = {
							140552,	-- War Table (Alliance)
							131752,	-- War Table (Horde)
						},
						["lvl"] = {
							-- #if AFTER SL
							50,
							-- #else
							120,
							-- #endif
						},
						["groups"] = {
							n(ACHIEVEMENTS, {	-- Achievements
								ach(13310, {	-- By Nature's Call (A)
									["races"] = ALLIANCE_ONLY,
									["groups"] = {
										crit(43919),	-- Dryad
										crit(43920),	-- Faerie Dragon
										crit(43921),	-- Keeper of the Grove
									},
								}),
								ach(13309, {	-- Deforester
									["races"] = HORDE_ONLY,
									["groups"] = {
										crit(43924),	-- Banshee
										crit(43923),	-- AzerMEK Prototype
										crit(43922),	-- Abomination
									},
								}),
								ach(14150, {	-- Heroic: War for the Shore (A)
									["races"] = ALLIANCE_ONLY,
								}),
								ach(14149, {	-- Heroic: War for the Shore (H)
									["races"] = HORDE_ONLY,
								}),
								achpart(13302, 13305, {	-- Under Cover of Darkness (A)
									["races"] = ALLIANCE_ONLY,
								}),
								ach(13305, {	-- Night Moves (A)
									["races"] = ALLIANCE_ONLY,
									["groups"] = {
										crit(43889),	-- Bashal'Aran
										crit(43896),	-- Gloomtide Strand
										crit(43902),	-- Cinderfall Grove
										crit(43898),	-- Lornesta Mine
										crit(43897),	-- Forlorn Crossing
										crit(43901),	-- Ashwood Depot
										crit(43900),	-- Lor'danel Landing
									},
								}),
								achpart(13301, 13306, {	-- Under Cover of Darkness
									["races"] = HORDE_ONLY,
								}),
								ach(13306, {	-- Night Moves (H)
									["races"] = HORDE_ONLY,
									["groups"] = {
										crit(43889),	-- Bashal'Aran
										crit(43890),	-- Gloomtide Strand
										crit(43891),	-- Cinderfall Grove
										crit(43892),	-- Lornesta Mine
										crit(43894),	-- Forlorn Crossing
										crit(43893),	-- Ashwood Depot
										crit(43895),	-- Lor'danel Landing
									},
								}),
								ach(13308, {	-- Recruitment Officer (A)
									["races"] = ALLIANCE_ONLY,
									["groups"] = {
										crit(43911),	-- Kaldorei Archer
										crit(43913),	-- Druid of the Branch
										crit(43915),	-- Kaldorei Hunter
										crit(43917),	-- Kaldorei Sentinel
										crit(43327),	-- Glaive Thrower
									},
								}),
								ach(13307, {	-- Recruitment Officer (H)
									["races"] = HORDE_ONLY,
									["groups"] = {
										crit(43903),	-- Forsaken Alchemist
										crit(43905),	-- Forsaken Lancer
										crit(43907),	-- Forsaken Deathguard
										crit(43909),	-- Forsaken Deadshot
										crit(43465),	-- Catapult
									},
								}),
								ach(13433),	-- Tall, Dark, and Sinister
								ach(13297, {	-- War for the Shore (A)
									["races"] = ALLIANCE_ONLY,
								}),
								ach(13296, {	-- War for the Shore (H)
									["races"] = HORDE_ONLY,
								}),
							}),
							n(QUESTS, {	-- Questlines
								q(54050, {	-- Aftermath
									["sourceQuest"] = 54049,	-- The Dead of Night
									["provider"] = { "n", 146601 },	-- Sira Moonwarden
									["coord"] = { 54.6, 20.8, 1333 },
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(166678),	-- Brynja's Beacon (TOY!)
									},
								}),
								q(54006, {	-- A New Hope (A)
									["sourceQuest"] = 54871,	-- We Are Coming
									["provider"] = { "n", 149418 },	-- Maiev Shadowsong
									["races"] = ALLIANCE_ONLY,
									["groups"] = {
										i(166525),	-- Nightwreathed Egg
									},
								}),
								q(54044, {	-- Black Moon Rising
									["sourceQuest"] = 54042,	-- Trouble in Darkshore
									["provider"] = { "n", 146323 },	-- Nathanos Blightcaller
									["coord"] = { 53.6, 20.4, 1333 },
									["races"] = HORDE_ONLY,
								}),
								q(54878, {	-- Buzzkill (A)
									["provider"] = { "n", 149631 },	-- Wizbang Cranktoggle
									["coord"] = { 46.3, 35.1, DARKSHORE },
									["races"] = ALLIANCE_ONLY,
								}),
								q(54845, {	-- Bullkill (H)
									["provider"] = { "n", 149412 },	-- Zarvik Blastwix
									["coord"] = { 46.4, 35.0, DARKSHORE },
									["races"] = HORDE_ONLY,
								}),
								q(54043, {	-- Dark Ranger Round-Up
									["sourceQuest"] = 54042,	-- Trouble in Darkshore
									["provider"] = { "n", 146323 },	-- Nathanos Blightcaller
									["coord"] = { 53.6, 20.4, 1333 },
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(166544),	-- Dark Ranger's Spare Cowl (TOY!)
									},
								}),
								q(54045, {	-- Quit Vining!
									["sourceQuest"] = 54042,	-- Trouble in Darkshore
									["provider"] = { "n", 146325 },	-- Shredmaster Blix
									["coord"] = { 54.6, 21.9, 1333 },
									["races"] = HORDE_ONLY,
								}),
								q(54875, {	-- Remaining Threats (Alliance)
									["provider"] = { "n", 149623 },	-- Commander Lorna Crowley
									["coord"] = { 46.8, 35.4, DARKSHORE },
									["races"] = ALLIANCE_ONLY,
									["isWeekly"] = true,
								}),
								q(54843, {	-- Remaining Threats (Horde)
									["provider"] = { "n", 149410 },	-- Deathstalker Commander Belmont
									["coord"] = { 46.9, 35.5, DARKSHORE },
									["races"] = HORDE_ONLY,
									["isWeekly"] = true,
								}),
								q(54876, {	-- Tapping the Breach (A)
									["provider"] = { "n", 149624 },	-- Thisalee Crow
									["coord"] = { 46.4, 36.6, DARKSHORE },
									["races"] = ALLIANCE_ONLY,
								}),
								q(54844, {	-- Tapping the Breach (H)
									["provider"] = { "n", 149411 },	-- Dark Ranger Velonara
									["coord"] = { 47.8, 36.2, DARKSHORE },
									["races"] = HORDE_ONLY,
								}),
								q(54049, {	-- The Dead of Night
									["sourceQuest"] = 54047,	-- Where Hope Dies
									["qgs"] = {
										147187,	-- Nathanos Blightcaller
										149143,	-- Nathanos Blightcaller
									},
									["coord"] = { 47.8, 21.2, 1333 },
									["races"] = HORDE_ONLY,
								}),
								q(54059, {	-- The Night Warrior
									["sourceQuest"] = 54046,	-- We're Not Out of the Woods Yet
									["provider"] = { "n", 146323 },	-- Nathanos Blightcaller
									["coord"] = { 53.6, 20.4, 1333 },
									["races"] = HORDE_ONLY,
								}),
								q(54416, {	-- Warfront Preparations
									["sourceQuest"] = 54050,	-- Aftermath
									["provider"] = { "n", 146323 },	-- Nathanos Blightcaller
									["coord"] = { 51.7, 21.6, 1333 },
									["races"] = HORDE_ONLY,
								}),
								q(54046, {	-- We're Not Out of the Woods Yet
									["sourceQuest"] = 54044,	-- Black Moon Rising
									["provider"] = { "n", 146536 },	-- Lost Wisp
									["races"] = HORDE_ONLY,
								}),
								q(54047, {	-- Where Hope Dies
									["sourceQuest"] = 54059,	-- The Night Warrior
									["provider"] = { "n", 146323 },	-- Nathanos Blightcaller
									["coord"] = { 53.6, 20.4, 1333 },
									["races"] = HORDE_ONLY,
								}),

								-- Alliance Quests
								q(53977, {	-- The War Chest (A)
									["provider"] = { "n", 145770 },	-- Thisalee Crow
									["coord"] = { 51.0, 56.8, 1203 },
									["races"] = ALLIANCE_ONLY,
									["lvl"] = 120,
								}),
								q(53976, {	-- Iron in Hand
									["sourceQuest"] = 53977,	-- The War Chest (A)
									["provider"] = { "n", 145770 },	-- Thisalee Crow
									["coord"] = { 51.0, 56.8, 1203 },
									["races"] = ALLIANCE_ONLY,
									["lvl"] = 120,
									["groups"] = {
										o(310736, {	-- Ore Crate
											["coord"] = { 57.2, 66.1, 1203 },
											["groups"] = {
												i(165659),	-- Freshly-Dug Ore (QI!)
											},
										}),
									},
								}),
								q(54436, {	-- Wisp'd Into Shape
									["sourceQuest"] = 53977,	-- The War Chest (A)
									["provider"] = { "n", 145770 },	-- Thisalee Crow
									["coord"] = { 51.0, 56.8, 1203 },
									["races"] = ALLIANCE_ONLY,
									["lvl"] = 120,
								}),
								q(53957, {	-- Darkshore Recruits (A)
									["sourceQuests"] = {
										53976,	-- Iron in Hand
										54436,	-- Wisp'd Into Shape
									},
									["provider"] = { "n", 145770 },	-- Thisalee Crow
									["coord"] = { 51.0, 56.8, 1203 },
									["races"] = ALLIANCE_ONLY,
									["lvl"] = 120,
								}),
								q(53959, {	-- Armor for Armies
									["sourceQuest"] = 53957,	-- Darkshore Recruits (A)
									["provider"] = { "n", 145783 },	-- Lorna Crowley
									["coord"] = { 51.0, 57.6, 1203 },
									["races"] = ALLIANCE_ONLY,
									["lvl"] = 120,
								}),
								q(53960, {	-- The Altar of Elders
									["sourceQuest"] = 53959,	-- Armor for Armies
									["provider"] = { "n", 145783 },	-- Lorna Crowley
									["coord"] = { 51.0, 57.6, 1203 },
									["races"] = ALLIANCE_ONLY,
									["lvl"] = 120,
								}),
								q(53974, {	-- Druids of Gloomtide
									["sourceQuest"] = 53957,	-- Darkshore Recuits (A)
									["provider"] = { "n", 145779 },	-- Celestine of the Harvest
									["coord"] = { 51.8, 55.4, 1203 },
									["races"] = ALLIANCE_ONLY,
									["lvl"] = 120,
								}),
								q(53961, {	-- Glaiveworks For Me
									["sourceQuests"] = {
										53960,	-- The Altar of Elders
										53974,	-- Druids of Gloomtide
									},
									["provider"] = { "n", 145784 },	-- Princess Tess Greymane
									["coord"] = { 51.0, 57.4, 1203 },
									["races"] = ALLIANCE_ONLY,
									["lvl"] = 120,
								}),
								q(53975, {	-- Flying at Night
									["sourceQuest"] = 53957,	-- Darkshore Recruits (A)
									["provider"] = { "n", 144786 },	-- Archmage Mordent Evenshade
									["coord"] = { 49.4, 34.6, 1203 },
									["races"] = ALLIANCE_ONLY,
									["lvl"] = 120,
									["groups"] = {
										spell(281872),	-- Flight Master's Whistle Upgrade: Warfronts
									},
								}),
								-- Horde Quests
								q(54652, {	-- The War Chest (H)
									["provider"] = { "n", 148479 },	-- Dark Ranger Velonara
									["coord"] = { 51.4, 56.2, 1332 },
									["races"] = HORDE_ONLY,
									["lvl"] = 120,
								}),
								q(54654, {	-- An Explosive Situation
									["sourceQuest"] = 54652,	-- The War Chest (H)
									["provider"] = { "n", 148479 },	-- Dark Ranger Velonara
									["coord"] = { 51.4, 56.2, 1332 },
									["races"] = HORDE_ONLY,
									["lvl"] = 120,
									["groups"] = {
										o(317402, {	-- Goblin Explosives
											["coord"] = { 52.6, 56.4, 1332 },
											["groups"] = { i(166773) },	-- Goblin Explosives (QI!)
										}),
									},
								}),
								q(54655, {	-- Lumbering Along
									["sourceQuest"] = 54652,	-- The War Chest (H)
									["provider"] = { "n", 148479 },	-- Dark Ranger Velonara
									["coord"] = { 51.4, 56.2, 1332 },
									["races"] = HORDE_ONLY,
									["lvl"] = 50,
									["groups"] = {
										i(166387),	-- Freshly-Harvested Wood (QI!)
										i(166713),	-- Sturdy Axe (QI!)
									},
								}),
								q(54656, {	-- Darkshore Recruits (H)
									["sourceQuests"] = {
										54654,	-- An Explosive Situation
										54655,	-- Lumbering Along
									},
									["provider"] = { "n", 148479 },	-- Dark Ranger Velonara
									["coord"] = { 51.4, 56.2, 1332 },
									["races"] = HORDE_ONLY,
									["lvl"] = 120,
								}),
								q(54657, {	-- Arms and Armor
									["sourceQuest"] = 54656,	-- Darkshore Recruits (H)
									["provider"] = { "n", 148482 },	-- Apothecary Keever
									["coord"] = { 51.8, 58.0, 1332 },
									["races"] = HORDE_ONLY,
									["lvl"] = 120,
								}),
								q(54658, {	-- The Altar of Storms
									["sourceQuest"] = 54657,	-- Arms and Armor (H)
									["provider"] = { "n", 148482 },	-- Apothecary Keever
									["coord"] = { 51.8, 58.0, 1332 },
									["races"] = HORDE_ONLY,
									["lvl"] = 120,
								}),
								q(54659, {	-- An Alchemist for Everything
									["sourceQuest"] = 54656,	-- Darkshore Recruits (H)
									["provider"] = { "n", 148478 },	-- Apothecary Zinge
									["coord"] = { 52.0, 59.0, 1332 },
									["races"] = HORDE_ONLY,
									["lvl"] = 120,
								}),
								q(54660, {	-- Throwing Blight
									["sourceQuests"] = {
										54658,	-- The Altar of Storms
										54659,	-- An Alchemist for Everything
									},
									["provider"] = { "n", 146590 },	-- Master Apothecary Faranell
									["coord"] = { 51.7, 58.0, 1332 },
									["races"] = HORDE_ONLY,
									["lvl"] = 120,
								}),
								q(54661, {	-- Echolocation
									-- ["sourceQuest"] = 54660,	-- Throwing Blight
									["provider"] = { "n", 145554 },	-- Base Cap'n Crankshot
									["coord"] = { 49.6, 35.0, 1203 },
									["races"] = HORDE_ONLY,
									["lvl"] = 120,
									["groups"] = {
										spell(281872),	-- Flight Master's Whistle Upgrade: Warfronts
										i(166389),	-- Crankshot's Note (QI!)
									},
								}),
							}),
							-- Weeklies (A)
							n(QUESTS, sharedData({
								["isWeekly"] = true,
								["races"] = ALLIANCE_ONLY,
							},{
								q(54387, {	-- Darkshore Donations: Blood-Stained Bone
									["provider"] = { "n", 142995 },	-- Charlane
									["coord"] = { 67.2, 29.2, BORALUS },
								}),
								q(54379, {	-- Darkshore Donations: Contract: 7th Legion
									["provider"] = { "n", 143005 },	-- Liao
									["coord"] = { 67.5, 23.8, BORALUS },
								}),
								q(54377, {	-- Darkshore Donations: Crimson Ink
									["provider"] = { "n", 143005 },	-- Liao
									["coord"] = { 67.5, 23.8, BORALUS },
								}),
								q(54386, {	-- Darkshore Donations: Deep Sea Bandage
									["provider"] = { "n", 142998 },	-- Faella
									["coord"] = { 67.1, 27.9, BORALUS },
								}),
								q(54382, {	-- Darkshore Donations: Deep Sea Satin
									["provider"] = { "n", 142998 },	-- Faella
									["coord"] = { 67.1, 27.9, BORALUS },
								}),
								q(54369, {	-- Darkshore Donations: Electroshock Mount Motivator
									["provider"] = { "n", 143008 },	-- Norber Togglesprocket
									["coord"] = { 66.3, 25.5, BORALUS },
								}),
								q(54373, {	-- Darkshore Donations: Enchant Ring - Seal of Haste
									["provider"] = { "n", 143007 },	-- Mae Wagglewand
									["coord"] = { 66.3, 25.1, BORALUS },
								}),
								q(54375, {	-- Darkshore Donations: Enchant Ring - Seal of Mastery
									["provider"] = { "n", 143007 },	-- Mae Wagglewand
									["coord"] = { 66.3, 25.1, BORALUS },
								}),
								q(54380, {	-- Darkshore Donations: Gold
									["provider"] = { "n", 142685 },	-- Paymaster Vauldren
									["coord"] = { 66.2, 27.6, BORALUS },
								}),
								q(54390, {	-- Darkshore Donations: Masterful Kubiline
									["provider"] = { "n", 143004 },	-- Larold Kyne
									["coord"] = { 67.6, 24.1, BORALUS },
								}),
								q(54389, {	-- Darkshore Donations: Mistscale
									["provider"] = { "n", 142995 },	-- Charlane
									["coord"] = { 67.2, 29.2, BORALUS },
								}),
								q(54367, {	-- Darkshore Donations: Platinum Ore
									["provider"] = { "n", 142994 },	-- Brandal Darkbeard
									["coord"] = { 66.0, 28.5, BORALUS },
								}),
								q(54378, {	-- Darkshore Donations: Potion of Bursting Blood
									["provider"] = { "n", 142993 },	-- Chelsea Strand
									["coord"] = { 66.7, 23.5, BORALUS },
								}),
								q(54376, {	-- Darkshore Donations: Potion of Replenishment
									["provider"] = { "n", 142993 },	-- Chelsea Strand
									["coord"] = { 66.7, 23.5, BORALUS },
								}),
								q(54374, {	-- Darkshore Donations: Potion of Rising Death
									["provider"] = { "n", 142993 },	-- Chelsea Strand
									["coord"] = { 66.7, 23.5, BORALUS },
								}),
								q(54391, {	-- Darkshore Donations: Quick Golden Beryl
									["provider"] = { "n", 143004 },	-- Larold Kyne
									["coord"] = { 67.6, 24.1, BORALUS },
								}),
								q(54392, {	-- Darkshore Donations: Sand Shifter
									["provider"] = { "n", 142997 },	-- Senedras
									["coord"] = { 67.0, 27.2, BORALUS },
								}),
								q(54393, {	-- Darkshore Donations: Scarlet Diamond
									["provider"] = { "n", 143004 },	-- Larold Kyne
									["coord"] = { 67.6, 24.1, BORALUS },
								}),
								q(54395, {	-- Darkshore Donations: Seasoned Steak and Potatoes
									["provider"] = { "n", 142997 },	-- Senedras
									["coord"] = { 67.0, 27.2, BORALUS },
								}),
								q(54388, {	-- Darkshore Donations: Shimmerscale Diving Helmet
									["provider"] = { "n", 142995 },	-- Charlane
									["coord"] = { 67.2, 29.2, BORALUS },
								}),
								q(54383, {	-- Darkshore Donations: Shimmerscale Diving Suit
									["provider"] = { "n", 142995 },	-- Charlane
									["coord"] = { 67.2, 29.2, BORALUS },
								}),
								q(54364, {	-- Darkshore Donations: Star Moss
									["provider"] = { "n", 142993 },	-- Chelsea Strand
									["coord"] = { 66.7, 23.5, BORALUS },
								}),
								q(54365, {	-- Darkshore Donations: Storm Silver Ore
									["provider"] = { "n", 142994 },	-- Brandal Darkbeard
									["coord"] = { 66.0, 28.5, BORALUS },
								}),
								q(54394, {	-- Darkshore Donations: Stringy Loins
									["provider"] = { "n", 142997 },	-- Senedras
									["coord"] = { 67.0, 27.2, BORALUS },
								}),
								q(54371, {	-- Darkshore Donations: Thermo-Accelerated Plague Spreader
									["provider"] = { "n", 143008 },	-- Norber Togglesprocket
									["coord"] = { 66.3, 25.5, BORALUS },
								}),
								q(54385, {	-- Darkshore Donations: Tidespray Linen Bandage
									["provider"] = { "n", 142998 },	-- Faella
									["coord"] = { 67.1, 27.9, BORALUS },
								}),
								q(54384, {	-- Darkshore Donations: Tidespray Linen Net
									["provider"] = { "n", 142998 },	-- Faella
									["coord"] = { 67.1, 27.9, BORALUS },
								}),
								q(54381, {	-- Darkshore Donations: Ultramarine Ink
									["provider"] = { "n", 143005 },	-- Liao
									["coord"] = { 67.5, 23.8, BORALUS },
								}),
								q(54372, {	-- Darkshore Donations: Umbra Shard
									["provider"] = { "n", 143007 },	-- Mae Wagglewand
									["coord"] = { 66.3, 25.1, BORALUS },
								}),
								q(54368, {	-- Darkshore Donations: Unstable Temporal Time Shifter
									["provider"] = { "n", 143008 },	-- Norber Togglesprocket
									["coord"] = { 66.3, 25.5, BORALUS },
								}),
								q(54363, {	-- Darkshore Donations: War Resources
									["provider"] = { "n", 142700 },	-- Quartermaster Peregrin
									["coord"] = { 66.1, 27.2, BORALUS },
								}),
								q(54396, {	-- Darkshore Donations: Wild Berry Bread
									["provider"] = { "n", 142997 },	-- Senedras
									["coord"] = { 67.0, 27.2, BORALUS },
								}),
								q(54366, {	-- Darkshore Donations: Winter's Kiss
									["provider"] = { "n", 142993 },	-- Chelsea Strand
									["coord"] = { 66.7, 23.5, BORALUS },
								}),
								q(54370, {	-- Darkshore Donations: XA-1000 Surface Skimmer
									["provider"] = { "n", 143008 },	-- Norber Togglesprocket
									["coord"] = { 66.3, 25.5, BORALUS },
								}),
								q(57960, {	-- Heroic Warfront: The Battle for Darkshore
									["provider"] = { "n", 142721 },	-- Ralston Karn <Recruitment Officer>
									["coord"] = { 66.0, 26.0, BORALUS },
									["_drop"] = { "g" },	-- bad API data
									["groups"] = {
										i(166370, {	-- Sentinel Equipment Cache
											["groups"] = bubbleDown({ ["modID"] = 23 }, {
												un(NEVER_IMPLEMENTED, i(164966)),	-- Glade Warden's Glaive
												i(166898),	-- Sentinel's Blade
												i(165628),	-- Sentinel's Branch
												i(165637),	-- Sentinel's Bulwark
												i(165624),	-- Sentinel's Crescent
												i(165636),	-- Sentinel's Gavel
												i(165632),	-- Sentinel's Greatblade
												i(165627),	-- Sentinel's Halberd
												i(165623),	-- Sentinel's Recurve
												i(165629),	-- Sentinel's Spellblade
												i(166483),	-- Sentinel's Tomahawk
												i(165625),	-- Sentinel's Warhammer
												i(166758),	-- Moonpriest's Cloak
												i(166759),	-- Darkwood Sentinel's Drape
												i(166760, {	-- Kaldorei Archer's Greatcloak
													["description"] = "This might be only available as Mail class.",
												}),
												i(166761),	-- Wardenguard's Drape
												i(166572),	-- Moonpriest's Visor
												i(165435),	-- Moonpriest's Coronet
												i(166558),	-- Moonpriest's Epaulets
												i(165437),	-- Moonpriest's Mantle
												i(166577),	-- Moonpriest's Garments
												i(165460),	-- Moonpriest's Vestments
												i(165439),	-- Moonpriest's Cuffs
												i(165434),	-- Moonpriest's Handwraps
												i(165438),	-- Moonpriest's Sash
												i(165436),	-- Moonpriest's Legwraps
												i(165433),	-- Moonpriest's Sandals
												i(166571),	-- Darkwood Sentinel's Guise
												i(165443),	-- Darkwood Sentinel's Cowl
												i(166557),	-- Darkwood Sentinel's Shoulderpads
												i(165445),	-- Darkwood Sentinel's Monnions
												i(165440),	-- Darkwood Sentinel's Tunic
												i(166580),	-- Darkwood Sentinel's Jerkin
												i(165447),	-- Darkwood Sentinel's Armguards
												i(165442),	-- Darkwood Sentinel's Grips
												i(165446),	-- Darkwood Sentinel's Cinch
												i(165444),	-- Darkwood Sentinel's Breeches
												i(165441),	-- Darkwood Sentinel's Footpads
												i(166566),	-- Kaldorei Archer's Coif
												i(165451),	-- Kaldorei Archer's Hood
												i(165453),	-- Kaldorei Archer's Shoulderguards
												i(166556),	-- Kaldorei Archer's Spaulders
												i(166579),	-- Kaldorei Archer's Hauberk
												i(165448),	-- Kaldorei Archer's Chainmail
												i(165455),	-- Kaldorei Archer's Vambraces
												i(165450),	-- Kaldorei Archer's Gauntlets
												i(165454),	-- Kaldorei Archer's Belt
												i(165452),	-- Kaldorei Archer's Legguards
												i(165449),	-- Kaldorei Archer's Greaves
												i(166565),	-- Wardenguard's Faceguard
												i(165459),	-- Wardenguard's Greathelm
												i(165462),	-- Wardenguard's Pauldrons
												i(166555),	-- Wardenguard's Shoulderplates
												i(165456),	-- Wardenguard's Chestplate
												i(166578),	-- Wardenguard's Breastplate
												i(165464),	-- Wardenguard's Wristguards
												i(165458),	-- Wardenguard's Battlegloves
												i(165463),	-- Wardenguard's Chain
												i(165461),	-- Wardenguard's Legplates
												i(165457),	-- Wardenguard's Warboots
											}),
										}),
									},
								}),
								q(53992, {	-- Warfront: The Battle for Darkshore [Tier 3]
									["provider"] = { "n", 142721 },	-- Ralston Karn <Recruitment Officer>
									["coord"] = { 66.0, 26.0, BORALUS },
									["_drop"] = { "g" },	-- bad API data
									["groups"] = {
										i(166370, {	-- Sentinel Equipment Cache
											["groups"] = bubbleDown({["modID"] = 6}, {
												-- ALLIANCE SET --
												un(NEVER_IMPLEMENTED, i(164966)),	-- Glade Warden's Glaive
												i(166898),	-- Sentinel's Blade
												i(165628),	-- Sentinel's Branch
												i(165637),	-- Sentinel's Bulwark
												i(165624),	-- Sentinel's Crescent
												i(165636),	-- Sentinel's Gavel
												i(165632),	-- Sentinel's Greatblade
												i(165627),	-- Sentinel's Halberd
												i(165623),	-- Sentinel's Recurve
												i(165629),	-- Sentinel's Spellblade
												i(166483),	-- Sentinel's Tomahawk
												i(165625),	-- Sentinel's Warhammer
												i(166758),	-- Moonpriest's Cloak
												i(166759, {	-- Darkwood Sentinel's Drape
													["description"] = "This might be only available as Leather class.",
												}),
												i(166760, {	-- Kaldorei Archer's Greatcloak
													["description"] = "This might be only available as Mail class.",
												}),
												i(166761, {	-- Wardenguard's Drape
													["description"] = "This might be only available as Plate class.",
												}),
												i(166572),	-- Moonpriest's Visor
												i(165435),	-- Moonpriest's Coronet
												i(166558),	-- Moonpriest's Epaulets
												i(165437),	-- Moonpriest's Mantle
												i(166577),	-- Moonpriest's Garments
												i(165460),	-- Moonpriest's Vestments
												i(165439),	-- Moonpriest's Cuffs
												i(165434),	-- Moonpriest's Handwraps
												i(165438),	-- Moonpriest's Sash
												i(165436),	-- Moonpriest's Legwraps
												i(165433),	-- Moonpriest's Sandals
												i(166571),	-- Darkwood Sentinel's Guise
												i(165443),	-- Darkwood Sentinel's Cowl
												i(166557),	-- Darkwood Sentinel's Shoulderpads
												i(165445),	-- Darkwood Sentinel's Monnions
												i(165440),	-- Darkwood Sentinel's Tunic
												i(166580),	-- Darkwood Sentinel's Jerkin
												i(165447),	-- Darkwood Sentinel's Armguards
												i(165442),	-- Darkwood Sentinel's Grips
												i(165446),	-- Darkwood Sentinel's Cinch
												i(165444),	-- Darkwood Sentinel's Breeches
												i(165441),	-- Darkwood Sentinel's Footpads
												i(166566),	-- Kaldorei Archer's Coif
												i(165451),	-- Kaldorei Archer's Hood
												i(165453),	-- Kaldorei Archer's Shoulderguards
												i(166556),	-- Kaldorei Archer's Spaulders
												i(166579),	-- Kaldorei Archer's Hauberk
												i(165448),	-- Kaldorei Archer's Chainmail
												i(165455),	-- Kaldorei Archer's Vambraces
												i(165450),	-- Kaldorei Archer's Gauntlets
												i(165454),	-- Kaldorei Archer's Belt
												i(165452),	-- Kaldorei Archer's Legguards
												i(165449),	-- Kaldorei Archer's Greaves
												i(166565),	-- Wardenguard's Faceguard
												i(165459),	-- Wardenguard's Greathelm
												i(165462),	-- Wardenguard's Pauldrons
												i(166555),	-- Wardenguard's Shoulderplates
												i(165456),	-- Wardenguard's Chestplate
												i(166578),	-- Wardenguard's Breastplate
												i(165464),	-- Wardenguard's Wristguards
												i(165458),	-- Wardenguard's Battlegloves
												i(165463),	-- Wardenguard's Chain
												i(165461),	-- Wardenguard's Legplates
												i(165457),	-- Wardenguard's Warboots
											}),
										}),
									},
								}),
							})),
							-- Weeklies (H)
							n(QUESTS, sharedData({
								["isWeekly"] = true,
								["races"] = HORDE_ONLY,
							},{
								q(54353, {	-- Darkshore Donations: Blood-Stained Bone
									["provider"] = { "n", 142970 },	-- Kuma Longhoof
									["coord"] = { 53.4, 92.6, DAZARALOR },
								}),
								q(54345, {	-- Darkshore Donations: Contract: The Honorbound
									["provider"] = { "n", 142981 },	-- Merill Redgrave
									["coord"] = { 53.6, 92.1, DAZARALOR },
								}),
								q(54344, {	-- Darkshore Donations: Crimson Ink
									["provider"] = { "n", 142981 },	-- Merill Redgrave
									["coord"] = { 53.6, 92.1, DAZARALOR },
								}),
								q(54351, {	-- Darkshore Donations: Deep Sea Bandage
									["provider"] = { "n", 142975 },	-- Seamstress Vessa
									["coord"] = { 52.5, 93.3, DAZARALOR },
								}),
								q(54348, {	-- Darkshore Donations: Deep Sea Satin
									["provider"] = { "n", 142975 },	-- Seamstress Vessa
									["coord"] = { 52.5, 93.3, DAZARALOR },
								}),
								q(54334, {	-- Darkshore Donations: Electroshock Mount Motivator
									["provider"] = { "n", 142983 },	-- Swizzle Fizzcrank
									["coord"] = { 53.0, 94.8, DAZARALOR },
								}),
								q(54340, {	-- Darkshore Donations: Enchant Ring - Seal of Haste
									["provider"] = { "n", 142992 },	-- Uma'wi
									["coord"] = { 52.7, 93.3, DAZARALOR },
								}),
								q(54341, {	-- Darkshore Donations: Enchant Ring - Seal of Mastery
									["provider"] = { "n", 142992 },	-- Uma'wi
									["coord"] = { 52.7, 93.3, DAZARALOR },
								}),
								q(54346, {	-- Darkshore Donations: Gold
									["provider"] = { "n", 142157 },	-- Paymaster Grintooth
									["coord"] = { 51.7, 95.4, DAZARALOR },
								}),
								q(54357, {	-- Darkshore Donations: Masterful Kubiline
									["provider"] = { "n", 142977 },	-- Meredith Swane
									["coord"] = { 51.9, 93.1, DAZARALOR },
								}),
								q(54355, {	-- Darkshore Donations: Mistscale
									["provider"] = { "n", 142970 },	-- Kuma Longhoof
									["coord"] = { 53.4, 92.6, DAZARALOR },
								}),
								q(54330, {	-- Darkshore Donations: Platinum Ore
									["provider"] = { "n", 142969 },	-- Logarr
									["coord"] = { 52.6, 94.8, DAZARALOR },
								}),
								q(54342, {	-- Darkshore Donations: Potion of Bursting Blood
									["provider"] = { "n", 142159 },	-- Zen'kin
									["coord"] = { 51.2, 95.5, DAZARALOR },
								}),
								q(54343, {	-- Darkshore Donations: Potion of Replenishment
									["provider"] = { "n", 142159 },	-- Zen'kin
									["coord"] = { 51.2, 95.5, DAZARALOR },
								}),
								q(54339, {	-- Darkshore Donations: Potion of Rising Death
									["provider"] = { "n", 142159 },	-- Zen'kin
									["coord"] = { 51.2, 95.5, DAZARALOR },
								}),
								q(54356, {	-- Darkshore Donations: Quick Golden Beryl
									["provider"] = { "n", 142977 },	-- Meredith Swane
									["coord"] = { 51.9, 93.1, DAZARALOR },
								}),
								q(54359, {	-- Darkshore Donations: Sand Shifter
									["provider"] = { "n", 142973 },	-- Mai-Lu
									["coord"] = { 53.8, 94.4, DAZARALOR },
								}),
								q(54358, {	-- Darkshore Donations: Scarlet Diamond
									["provider"] = { "n", 142977 },	-- Meredith Swane
									["coord"] = { 51.9, 93.1, DAZARALOR },
								}),
								q(54362, {	-- Darkshore Donations: Seasoned Steak and Potatoes
									["provider"] = { "n", 142973 },	-- Mai-Lu
									["coord"] = { 53.8, 94.4, DAZARALOR },
								}),
								q(54354, {	-- Darkshore Donations: Shimmerscale Diving Helmet
									["provider"] = { "n", 142970 },	-- Kuma Longhoof
									["coord"] = { 53.4, 92.6, DAZARALOR },
								}),
								q(54352, {	-- Darkshore Donations: Shimmerscale Diving Suit
									["provider"] = { "n", 142970 },	-- Kuma Longhoof
									["coord"] = { 53.4, 92.6, DAZARALOR },
								}),
								q(54332, {	-- Darkshore Donations: Star Moss
									["provider"] = { "n", 142159 },	-- Zen'kin
									["coord"] = { 51.2, 95.5, DAZARALOR },
								}),
								q(54333, {	-- Darkshore Donations: Storm Silver Ore
									["provider"] = { "n", 142969 },	-- Logarr
									["coord"] = { 52.6, 94.8, DAZARALOR },
								}),
								q(54360, {	-- Darkshore Donations: Stringy Loins
									["provider"] = { "n", 142973 },	-- Mai-Lu
									["coord"] = { 53.8, 94.4, DAZARALOR },
								}),
								q(54338, {	-- Darkshore Donations: Thermo-Accelerated Plague Spreader
									["provider"] = { "n", 142983 },	-- Swizzle Fizzcrank
									["coord"] = { 53.0, 94.8, DAZARALOR },
								}),
								q(54350, {	-- Darkshore Donations: Tidespray Linen Net
									["provider"] = { "n", 142975 },	-- Seamstress Vessa
									["coord"] = { 52.5, 93.3, DAZARALOR },
								}),
								q(54347, {	-- Darkshore Donations: Ultramarine Ink
									["provider"] = { "n", 142981 },	-- Merill Redgrave
									["coord"] = { 53.6, 92.1, DAZARALOR },
								}),
								q(54337, {	-- Darkshore Donations: Umbra Shard
									["provider"] = { "n", 142992 },	-- Uma'wi
									["coord"] = { 52.7, 93.3, DAZARALOR },
								}),
								q(54335, {	-- Darkshore Donations: Unstable Temporal Time Shifter
									["provider"] = { "n", 142983 },	-- Swizzle Fizzcrank
									["coord"] = { 53.0, 94.8, DAZARALOR },
								}),
								q(54329, {	-- Darkshore Donations: War Resources
									["provider"] = { "n", 142158 },	-- Quartermaster Rauka
									["coord"] = { 51.7, 95.1, DAZARALOR },
								}),
								q(54361, {	-- Darkshore Donations: Wild Berry Bread
									["provider"] = { "n", 142973 },	-- Mai-Lu
									["coord"] = { 53.8, 94.4, DAZARALOR },
								}),
								q(54331, {	-- Darkshore Donations: Winter's Kiss
									["provider"] = { "n", 142159 },	-- Zen'kin
									["coord"] = { 51.2, 95.5, DAZARALOR },
								}),
								q(54336, {	-- Darkshore Donations: XA-1000 Surface Skimmer
									["provider"] = { "n", 142983 },	-- Swizzle Fizzcrank
									["coord"] = { 53.0, 94.8, DAZARALOR },
								}),
								q(57959, {	-- Heroic Warfront: The Battle for Darkshore
									["provider"] = { "n", 138949 },	-- Throk <Recruitment Officer>
									["coord"] = { 52.9, 94.3, DAZARALOR },
									["groups"] = {
										i(166369, {	-- Deathguard Equipment Cache
											["groups"] = bubbleDown({ ["modID"] = 23 }, {
												i(165614),	-- Apothecary Spellstaff
												i(165608),	-- Blightspreader's Crescent
												i(165622),	-- Deathguard's Blade
												i(166897),	-- Deathguard's Gavel
												i(163528),	-- Deathguard's Gladius
												i(166482),	-- Deathguard's Greatsword
												i(165620),	-- Deathguard's Warshield
												i(165611),	-- Deathstalker's Headcracker
												i(165619),	-- Deathstalker's Warglaive
												i(165621),	-- Deadshot Handcannon
												i(165610),	-- Plaguebringer's Dirk
												i(165613),	-- Plaguebringer's Halberd
												i(166802),	-- Plaguebringer's Spellblade
												i(166762, {	-- Plaguebringer's Drape
													-- ["classes"] = { MAGE, PRIEST, WARLOCK },
													["description"] = "This might be only available as Cloth class.",
												}),
												i(166763, {	-- Deathstalker's Cloak
													["description"] = "This might be only available as Leather class.",
												}),
												i(166764, {	-- Blightguard's Cloak
													["description"] = "This might be only available as Mail class.",
												}),
												i(166765, {	-- Deathguard's Greatcloak
													["description"] = "This might be only available as Plate class.",
												}),
												i(165467),	-- Plaguebringer's Cowl
												i(166564),	-- Plaguebringer's Skullcap
												i(166554),	-- Plaguebringer's Mantle
												i(165469),	-- Plaguebringer's Shoulderguards
												i(166573),	-- Plaguebringer's Vestments
												i(165492),	-- Plaguebringer's Robe
												i(165471),	-- Plaguebringer's Armwraps
												i(165466),	-- Plaguebringer's Gloves
												i(165470),	-- Plaguebringer's Cord
												i(165468),	-- Plaguebringer's Legwraps
												i(165465),	-- Plaguebringer's Boots
												i(165475),	-- Deathstalker's Collar
												i(166563),	-- Deathstalker's Mask
												i(166553),	-- Deathstalker's Shoulderpads
												i(165477),	-- Deathstalker's Shoulderguards
												i(166576),	-- Deathstalker's Jerkin
												i(165472),	-- Deathstalker's Chestpiece
												i(165479),	-- Deathstalker's Bindings
												i(165474),	-- Deathstalker's Grips
												i(165478),	-- Deathstalker's Belt
												i(165476),	-- Deathstalker's Leggings
												i(165473),	-- Deathstalker's Treads
												i(166562),	-- Blightguard's Casque
												i(165483),	-- Blightguard's Helmet
												i(166552),	-- Blightguard's Spaulders
												i(165485),	-- Blightguard's Shoulderguards
												i(166575),	-- Blightguard's Chainmail
												i(165480),	-- Blightguard's Harness
												i(165487),	-- Blightguard's Bracers
												i(165486),	-- Blightguard's Girdle
												i(165482),	-- Blightguard's Grasps
												i(165484),	-- Blightguard's Legguards
												i(165481),	-- Blightguard's Footguards
												i(166561),	-- Deathguard's Casque
												i(165491),	-- Deathguard's Helm
												i(165494),	-- Deathguard's Pauldrons
												i(166551),	-- Deathguard's Shoulderplates
												i(166574),	-- Deathguard's Breastplate
												i(165488),	-- Deathguard's Chestplate
												i(165496),	-- Deathguard's Vambraces
												i(165490),	-- Deathguard's Gauntlets
												i(165495),	-- Deathguard's Waistplate
												i(165493),	-- Deathguard's Greaves
												i(165489),	-- Deathguard's Sabatons
											}),
										}),
									},
								}),
								q(53955, {	-- Warfront: The Battle for Darkshore [Tier 3]
									["provider"] = { "n", 138949 },	-- Throk <Recruitment Officer>
									["coord"] = { 52.97, 94.35, DAZARALOR },
									["groups"] = {
										i(166369, {	-- Deathguard Equipment Cache
											["groups"] = bubbleDown({["modID"] = 6}, {
															-- HORDE SET --
												i(165614),	-- Apothecary Spellstaff
												i(165608),	-- Blightspreader's Crescent
												i(165622),	-- Deathguard's Blade
												i(166897),	-- Deathguard's Gavel
												i(163528),	-- Deathguard's Gladius
												i(166482),	-- Deathguard's Greatsword
												i(165620),	-- Deathguard's Warshield
												i(165611),	-- Deathstalker's Headcracker
												i(165619),	-- Deathstalker's Warglaive
												i(165621),	-- Deadshot Handcannon
												i(165610),	-- Plaguebringer's Dirk
												i(165613),	-- Plaguebringer's Halberd
												i(166802),	-- Plaguebringer's Spellblade
												i(166762, {	-- Plaguebringer's Drape
													-- ["classes"] = { MAGE, PRIEST, WARLOCK },
													["description"] = "This might be only available as Cloth class.",
												}),
												i(166763, {	-- Deathstalker's Cloak
													["description"] = "This might be only available as Leather class.",
												}),
												i(166764, {	-- Blightguard's Cloak
													["description"] = "This might be only available as Mail class.",
												}),
												i(166765, {	-- Deathguard's Greatcloak
													["description"] = "This might be only available as Plate class.",
												}),
												i(165467),	-- Plaguebringer's Cowl
												i(166564),	-- Plaguebringer's Skullcap
												i(166554),	-- Plaguebringer's Mantle
												i(165469),	-- Plaguebringer's Shoulderguards
												i(166573),	-- Plaguebringer's Vestments
												i(165492),	-- Plaguebringer's Robe
												i(165471),	-- Plaguebringer's Armwraps
												i(165466),	-- Plaguebringer's Gloves
												i(165470),	-- Plaguebringer's Cord
												i(165468),	-- Plaguebringer's Legwraps
												i(165465),	-- Plaguebringer's Boots
												i(165475),	-- Deathstalker's Collar
												i(166563),	-- Deathstalker's Mask
												i(166553),	-- Deathstalker's Shoulderpads
												i(165477),	-- Deathstalker's Shoulderguards
												i(166576),	-- Deathstalker's Jerkin
												i(165472),	-- Deathstalker's Chestpiece
												i(165479),	-- Deathstalker's Bindings
												i(165474),	-- Deathstalker's Grips
												i(165478),	-- Deathstalker's Belt
												i(165476),	-- Deathstalker's Leggings
												i(165473),	-- Deathstalker's Treads
												i(166562),	-- Blightguard's Casque
												i(165483),	-- Blightguard's Helmet
												i(166552),	-- Blightguard's Spaulders
												i(165485),	-- Blightguard's Shoulderguards
												i(166575),	-- Blightguard's Chainmail
												i(165480),	-- Blightguard's Harness
												i(165487),	-- Blightguard's Bracers
												i(165486),	-- Blightguard's Girdle
												i(165482),	-- Blightguard's Grasps
												i(165484),	-- Blightguard's Legguards
												i(165481),	-- Blightguard's Footguards
												i(166561),	-- Deathguard's Casque
												i(165491),	-- Deathguard's Helm
												i(165494),	-- Deathguard's Pauldrons
												i(166551),	-- Deathguard's Shoulderplates
												i(166574),	-- Deathguard's Breastplate
												i(165488),	-- Deathguard's Chestplate
												i(165496),	-- Deathguard's Vambraces
												i(165490),	-- Deathguard's Gauntlets
												i(165495),	-- Deathguard's Waistplate
												i(165493),	-- Deathguard's Greaves
												i(165489),	-- Deathguard's Sabatons
											}),
										}),
									},
								}),
							})),
							n(SCENARIO_COMPLETION, {
								-- 1 SourceIDs: Weapons (3/5/6/23)
								-- 2 SourceIDs: Cloaks/Armor (3/5) (6/23)
								-- 1 VisualIDs: Cloaks (3/5/6/23)
								-- 2 VisualIDs: Armor (3/5) (6/23)

								-- Sources (Confirmed:[x])
								-- [ ] Normal Warfront Victory (3)
								-- [x] Rares/Treasures (3)
								-- [ ] Normal Quest (6)
								-- [ ] Heroic Quest (23)

								-- Ideal Sources:
								-- [ ] Rares/Treasures (3) [Cloaks/Armor/Weapons]
								-- [ ] Normal Quest (6) [Cloaks/Armor]

								-- Symlink/Additional Sources:
								-- [ ] Normal Warfront Victory (3) [Cloaks/Armor/Weapons]
								-- [ ] Normal Quest (6) [Weapons]
								-- [ ] Heroic Quest (23) [Cloaks/Armor/Weapons]

								["description"] = "These are obtained by winning the warfront and can be awarded multiple times a week.",
								["groups"] = bubbleDown({["modID"] = 3}, {
									-- ALLIANCE SET --
									un(NEVER_IMPLEMENTED, i(164966)),	-- Glade Warden's Glaive
									i(166898),	-- Sentinel's Blade
									i(165628),	-- Sentinel's Branch
									i(165637),	-- Sentinel's Bulwark
									i(165624),	-- Sentinel's Crescent
									i(165636),	-- Sentinel's Gavel
									i(165632),	-- Sentinel's Greatblade
									i(165627),	-- Sentinel's Halberd
									i(165635);	-- Sentinel's Moonglaive
									i(165623),	-- Sentinel's Recurve
									i(165629),	-- Sentinel's Spellblade
									i(166483),	-- Sentinel's Tomahawk
									i(165625),	-- Sentinel's Warhammer
									i(166758),	-- Moonpriest's Cloak
									i(166759),	-- Darkwood Sentinel's Drape
									i(166760),	-- Kaldorei Archer's Greatcloak
									i(166761),	-- Wardenguard's Drape
									i(166572),	-- Moonpriest's Visor
									i(165435),	-- Moonpriest's Coronet
									i(166558),	-- Moonpriest's Epaulets
									i(165437),	-- Moonpriest's Mantle
									i(166577),	-- Moonpriest's Garments
									i(165460),	-- Moonpriest's Vestments
									i(165439),	-- Moonpriest's Cuffs
									i(165434),	-- Moonpriest's Handwraps
									i(165438),	-- Moonpriest's Sash
									i(165436),	-- Moonpriest's Legwraps
									i(165433),	-- Moonpriest's Sandals
									i(166571),	-- Darkwood Sentinel's Guise
									i(165443),	-- Darkwood Sentinel's Cowl
									i(166557),	-- Darkwood Sentinel's Shoulderpads
									i(165445),	-- Darkwood Sentinel's Monnions
									i(165440),	-- Darkwood Sentinel's Tunic
									i(166580),	-- Darkwood Sentinel's Jerkin
									i(165447),	-- Darkwood Sentinel's Armguards
									i(165442),	-- Darkwood Sentinel's Grips
									i(165446),	-- Darkwood Sentinel's Cinch
									i(165444),	-- Darkwood Sentinel's Breeches
									i(165441),	-- Darkwood Sentinel's Footpads
									i(166566),	-- Kaldorei Archer's Coif
									i(165451),	-- Kaldorei Archer's Hood
									i(165453),	-- Kaldorei Archer's Shoulderguards
									i(166556),	-- Kaldorei Archer's Spaulders
									i(166579),	-- Kaldorei Archer's Hauberk
									i(165448),	-- Kaldorei Archer's Chainmail
									i(165455),	-- Kaldorei Archer's Vambraces
									i(165450),	-- Kaldorei Archer's Gauntlets
									i(165454),	-- Kaldorei Archer's Belt
									i(165452),	-- Kaldorei Archer's Legguards
									i(165449),	-- Kaldorei Archer's Greaves
									i(166565),	-- Wardenguard's Faceguard
									i(165459),	-- Wardenguard's Greathelm
									i(165462),	-- Wardenguard's Pauldrons
									i(166555),	-- Wardenguard's Shoulderplates
									i(165456),	-- Wardenguard's Chestplate
									i(166578),	-- Wardenguard's Breastplate
									i(165464),	-- Wardenguard's Wristguards
									i(165458),	-- Wardenguard's Battlegloves
									i(165463),	-- Wardenguard's Chain
									i(165461),	-- Wardenguard's Legplates
									i(165457),	-- Wardenguard's Warboots
									-- HORDE SET --
									i(165614),	-- Apothecary Spellstaff
									i(165608),	-- Blightspreader's Crescent
									i(165622),	-- Deathguard's Blade
									i(166897),	-- Deathguard's Gavel
									i(163528),	-- Deathguard's Gladius
									i(166482),	-- Deathguard's Greatsword
									i(165620),	-- Deathguard's Warshield
									i(165611),	-- Deathstalker's Headcracker
									i(165619),	-- Deathstalker's Warglaive
									i(165621),	-- Deadshot Handcannon
									i(165610),	-- Plaguebringer's Dirk
									i(165613),	-- Plaguebringer's Halberd
									i(166802),	-- Plaguebringer's Spellblade
									i(166762),	-- Plaguebringer's Drape
									i(166763),	-- Deathstalker's Cloak
									i(166764),	-- Blightguard's Cloak
									i(166765),	-- Deathguard's Greatcloak
									i(165467),	-- Plaguebringer's Cowl
									i(166564),	-- Plaguebringer's Skullcap
									i(166554),	-- Plaguebringer's Mantle
									i(165469),	-- Plaguebringer's Shoulderguards
									i(166573),	-- Plaguebringer's Vestments
									i(165492),	-- Plaguebringer's Robe
									i(165471),	-- Plaguebringer's Armwraps
									i(165466),	-- Plaguebringer's Gloves
									i(165470),	-- Plaguebringer's Cord
									i(165468),	-- Plaguebringer's Legwraps
									i(165465),	-- Plaguebringer's Boots
									i(165475),	-- Deathstalker's Collar
									i(166563),	-- Deathstalker's Mask
									i(166553),	-- Deathstalker's Shoulderpads
									i(165477),	-- Deathstalker's Shoulderguards
									i(166576),	-- Deathstalker's Jerkin
									i(165472),	-- Deathstalker's Chestpiece
									i(165479),	-- Deathstalker's Bindings
									i(165474),	-- Deathstalker's Grips
									i(165478),	-- Deathstalker's Belt
									i(165476),	-- Deathstalker's Leggings
									i(165473),	-- Deathstalker's Treads
									i(166562),	-- Blightguard's Casque
									i(165483),	-- Blightguard's Helmet
									i(166552),	-- Blightguard's Spaulders
									i(165485),	-- Blightguard's Shoulderguards
									i(166575),	-- Blightguard's Chainmail
									i(165480),	-- Blightguard's Harness
									i(165487),	-- Blightguard's Bracers
									i(165486),	-- Blightguard's Girdle
									i(165482),	-- Blightguard's Grasps
									i(165484),	-- Blightguard's Legguards
									i(165481),	-- Blightguard's Footguards
									i(166561),	-- Deathguard's Casque
									i(165491),	-- Deathguard's Helm
									i(165494),	-- Deathguard's Pauldrons
									i(166551),	-- Deathguard's Shoulderplates
									i(166574),	-- Deathguard's Breastplate
									i(165488),	-- Deathguard's Chestplate
									i(165496),	-- Deathguard's Vambraces
									i(165490),	-- Deathguard's Gauntlets
									i(165495),	-- Deathguard's Waistplate
									i(165493),	-- Deathguard's Greaves
									i(165489),	-- Deathguard's Sabatons
								}),
							}),
						},
					}),
				},
			}),
		}),
	})
);

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {
	n(WAR_EFFORT, {
		n(WARFRONT_BATTLE_FOR_DARKSHORE, {
			q(53801),	-- The Battle for Darkshore (Heroic, Horde)
			q(53800),	-- Battle for Darkshore — triggered after defeating Sira Moonwarden in Darkshore warfront
		}),
	}),
})));
