---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
NIGHTFALL = createHeader({
	readable = "Nightfall",
	icon = 6694197,
	text = {
		en = "Nightfall",
		cn = "夜幕激斗",
	},
});

local RADIANT_EMBLEM = 238920;
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(HALLOWFALL, {
		n(NIGHTFALL, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_5 } }, {
			["g"] = {
				n(ACHIEVEMENTS, {
					ach(41999),	-- Fighter of the Nightman
					ach(41996),	-- I'm Doing My Part
					ach(41998),	-- Turning the Venom Tide
				}),
				n(QUESTS, {
					q(85005, {	-- A Radiant Call
						["provider"] = { "n", 242126 },	-- Flame's Radiance Recruiter
						["coord"] = { 45.9, 49.3, DORNOGAL },
					}),
					q(89332, {	-- Boot Camp
						["provider"] = { "n", 234774 },	-- Mylton Wyldbraun
						["coord"] = { 28.3, 56.1, HALLOWFALL },
					}),
					q(89331, {	-- Flame Fortification
						["provider"] = { "n", 234774 },	-- Mylton Wyldbraun
						["coord"] = { 28.3, 56.1, HALLOWFALL },
					}),
				}),
				n(QUESTS, sharedData({
						["provider"] = { "n", 234774 },	-- Mylton Wyldbraun
						["coord"] = { 28.3, 56.1, HALLOWFALL },
						["isWeekly"] = true,
						["g"] = {
							i(239546, {	-- Confiscated Cultist's Bag
								["sym"] = {{"fill"}},
							}),
						},
				}, {
					q(88945),	-- Radiant Incursion: Rak-Zakaz
					q(88916),	-- Radiant Incursion: Sureki's End
					q(88711, {	-- Radiant Incursion: Toxins and Pheromones
						["g"] = {
							o(529289, {	-- Spore Sample
								i(240215),	-- Fungal Sample (QI!)
							}),
							i(239546, {	-- Confiscated Cultist's Bag
								["sym"] = {{"fill"}},
							}),
						},
					}),
					q(87475),	-- Sureki Incursion: Hold the Wall
					q(87477),	-- Sureki Incursion: Southern Swarm
					q(87480),	-- Sureki Incursion: The Eastern Assault
					--
					q(89295, {	-- The Flame Burns Eternal
						["g"] = {
							i(239004, {	-- Radiant Service Satchel
								i(RADIANT_EMBLEM),
							}),
						},
					}),
					q(91173, {	-- The Flame Burns Eternal
						["g"] = {
							i(239004, {	-- Radiant Service Satchel
								i(RADIANT_EMBLEM),
							}),
						},
					}),
				})),
				n(RARES, {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							241227, -- Dissenter Glaivefur
							241228, -- Dissenter Oathland
							241229, -- Dissenter Fervormyt
							241230, -- Dissenter Tailtrek
							241231, -- Dissenter Fortfervor
							241232, -- Dissenter Troosilver
							241234, -- Whisperer Batalsworn
							241235, -- Whisperer Hillhelm
							241236, -- Whisperer Bravefort
							241237, -- Whisperer Warsididel
							241238, -- Whisperer Siegesage
							241239, -- Whisperer Warhavuk
						},
						["sym"] = {{"select","itemID",
							237471, -- Band of the Voidmancer
							237474, -- Cult Former's Charm
							237473, -- Dark Bargainer's Chain
							237495, -- Excerpt on Dark Summons
							237435, -- Nightfall Darkcaster's Cloak
							237436, -- Nightfall Darkcaster's Vestment
							237437, -- Nightfall Darkcaster's Sandals
							237438, -- Nightfall Darkcaster's Handwraps
							237439, -- Nightfall Darkcaster's Cowl
							237440, -- Nightfall Darkcaster's Leggings
							237441, -- Nightfall Darkcaster's Mantle
							237442, -- Nightfall Darkcaster's Cord
							237443, -- Nightfall Darkcaster's Cuffs
							237444, -- Nightfall Curseblade's Cape
							237445, -- Nightfall Curseblade's Vest
							237446, -- Nightfall Curseblade's Waders
							237447, -- Nightfall Curseblade's Grips
							237448, -- Nightfall Curseblade's Breeches
							237449, -- Nightfall Curseblade's Shoulderpads
							237450, -- Nightfall Curseblade's Sash
							237451, -- Nightfall Curseblade's Bindings
							237452, -- Nightfall Shadowstalker's Shawl
							237453, -- Nightfall Shadowstalker's Chainmail
							237454, -- Nightfall Shadowstalker's Striders
							237455, -- Nightfall Shadowstalker's Grips
							237456, -- Nightfall Shadowstalker's Coif
							237457, -- Nightfall Shadowstalker's Greaves
							237458, -- Nightfall Shadowstalker's Shoulderguards
							237459, -- Nightfall Shadowstalker's Cinch
							237460, -- Nightfall Shadowstalker's Bracers
							237461, -- Nightfall Executioner's Drape
							237462, -- Nightfall Executioner's Breastplate
							237463, -- Nightfall Executioner's Sabatons
							237464, -- Nightfall Executioner's Gauntlets
							237465, -- Nightfall Executioner's Helm
							237466, -- Nightfall Executioner's Legguards
							237467, -- Nightfall Executioner's Mantle
							237468, -- Nightfall Executioner's Girdle
							237469, -- Nightfall Executioner's Armplates
							237470, -- Nightfall Curseblade's Cape
							237775, -- Nightfall Curseblade's Cleaver
							237776, -- Nightfall Executioner's Halberd
							237777, -- Nightfall Shadowalker's Bulwark
							237778, -- Nightfall Executioner's Greatsword
							237779, -- Nightfall Darkcaster's Gavel
							237780, -- Nightfall Curseblade's Cudgel
							237781, -- Nightfall Shadowalker's Dagger
							237782, -- Nightfall Curseblade's Knife
							237783, -- Nightfall Darkcaster's Greatstaff
							237784, -- Nightfall Shadowalker's Rod
							237785, -- Nightfall Darkcaster's Implement
							237786, -- Nightfall Curseblade's Blunderbuss
							237787, -- Nightfall Darkcaster's Kris
							237788, -- Nightfall Shadowalker's Shotgun
							237789, -- Nightfall Curseblade's Warglaive
							237790, -- Nightfall Darkcaster's Wand
							237472, -- Seal of Cosmic Embrace
							225693, -- Shadowed Essence (Hallowfall zone treasure)
						}},
					}),
					-- AZJ'KAHET
					-- Rak-Zakaz
					o(527416, {	-- Suspicious Document (Dissenter Oathland/Whisperer Warsididel)
						["description"] = "Spawns Dissenter Oathland/Whisperer Warsididel.",
						["coords"] = {
							{ 61.9, 30.1, AZJ_KAHET },
							{ 62.6, 26.7, AZJ_KAHET },
							{ 64.1, 30.1, AZJ_KAHET },
							{ 67.4, 27.6, AZJ_KAHET },
						},
					}),
					n(241228, {	-- Dissenter Oathland
						["description"] = "Within the Rak-Zakaz assault.",
						["provider"] = { "o", 527416 },	-- Suspicious Document
						["maps"] = { AZJ_KAHET },
						["questID"] = 91150,
						["isDaily"] = true,
					}),
					n(241237, {	-- Whisperer Warsididel
						["description"] = "Within the Rak-Zakaz assault.",
						["provider"] = { "o", 527416 },	-- Suspicious Document
						["maps"] = { AZJ_KAHET },
					}),
					-- Sureki's End
					o(527415, {	-- Suspicious Document (Dissenter Tailtrek/Whisperer Hillhelm)
						["coords"] = {
							{ 63.7, 6.8, AZJ_KAHET },
							{ 64.8, 6.6, AZJ_KAHET },
							{ 64.8, 13.3, AZJ_KAHET },
							{ 65.3, 9.4, AZJ_KAHET },
						},
					}),
					n(241230, {	-- Dissenter Tailtrek
						["description"] = "Within the Sureki's End assault.",
						["provider"] = { "o", 527415 },	-- Suspicious Document
						["maps"] = { AZJ_KAHET },
						["questID"] = 91154,
						["isDaily"] = true,
					}),
					n(241235, {	-- Whisperer Hillhelm
						["description"] = "Within the Sureki's End assault.",
						["provider"] = { "o", 527415 },	-- Suspicious Document
						["maps"] = { AZJ_KAHET },
						["questID"] = 91152,
						["isDaily"] = true,
					}),
					-- Toxins and Pheromones
					o(527413, {	-- Suspicious Document (Dissenter Glaivefur/Whisperer Warhavuk)
						["coords"] = {
							{ 66.5, 53.7, AZJ_KAHET },
							{ 66.7, 50.7, AZJ_KAHET },
							{ 68.4, 54.6, AZJ_KAHET },
							{ 69.5, 54.5, AZJ_KAHET },
						},
					}),
					n(241227, {	-- Dissenter Glaivefur
						["description"] = "Within the Toxins and Pheromones assault.",
						["provider"] = { "o", 527413 },	-- Suspicious Document
						["maps"] = { AZJ_KAHET },
						["questID"] = 89273,
						["isDaily"] = true,
					}),
					n(241239, {	-- Whisperer Warhavuk
						["description"] = "Within the Toxins and Pheromones assault.",
						["provider"] = { "o", 527413 },	-- Suspicious Document
						["maps"] = { AZJ_KAHET },
						["questID"] = 91160,
						["isDaily"] = true,
					}),
					-- HALLOWFALL
					-- Hold the Wall --
					o(527398, {	-- Suspicious Document (Dissenter Fortfervor/Whisperer Batalsworn)
						["coords"] = {
							{ 40.1, 58.5, HALLOWFALL },
							{ 40.3, 59.6, HALLOWFALL },
							{ 40.3, 60.8, HALLOWFALL },
							{ 41.0, 62.1, HALLOWFALL },
							{ 41.3, 59.6, HALLOWFALL },
							{ 41.5, 61.7, HALLOWFALL },
						},
					}),
					n(241231, {	-- Dissenter Fortfervor
						["description"] = "Within the Hold the Wall assault.",
						["provider"] = { "o", 527398 },	-- Suspicious Document
						["questID"] = 91157,
						["isDaily"] = true,
					}),
					n(241234, {	-- Whisperer Batalsworn
						["description"] = "Within the Hold the Wall assault.",
						["provider"] = { "o", 527398 },	-- Suspicious Document
						["questID"] = 91151,
						["isDaily"] = true,
					}),
					-- Southern Swarm --
					o(527409, {	-- Suspicious Document (Dissenter Fervormyt/Whisperer Siegesage)
						["coords"] = {
							{ 49.8, 65.0, HALLOWFALL },
							{ 49.8, 70.4, HALLOWFALL },
							{ 50.6, 66.2, HALLOWFALL },
							{ 51.4, 68.7, HALLOWFALL },
							{ 51.5, 70.0, HALLOWFALL },
						},
					}),
					n(241229, {	-- Dissenter Fervormyt
						["description"] = "Within the Southern Swarm assault.",
						["provider"] = { "o", 527409 },	-- Suspicious Document
						["questID"] = 91153,
						["isDaily"] = true,
					}),
					n(241238, {	-- Whisperer Siegesage
						["description"] = "Within the Southern Swarm assault.",
						["provider"] = { "o", 527409 },	-- Suspicious Document
						["questID"] = 91159,
						["isDaily"] = true,
					}),
					-- The Eastern Assault
					o(527411, {	-- Suspicious Document (Dissenter Troosilver/Whisperer Bravefort)
						["coord"] = { 72.7, 41.5, HALLOWFALL },
					}),
					n(241232, {	-- Dissenter Troosilver
						["description"] = "Within The Eastern Assault.",
						["provider"] = { "o", 527411 },	-- Suspicious Document
						["questID"] = 91158,
						["isDaily"] = true,
					}),
					n(241236, {	-- Whisperer Bravefort
						["description"] = "Within The Eastern Assault.",
						["provider"] = { "o", 527411 },	-- Suspicious Document
						["questID"] = 91155,
						["isDaily"] = true,
					}),
				}),
				n(REWARDS, {
					-- Special Single List Item:
					i(239546, {	-- Confiscated Cultist's Bag
						["description"] = "Rewarded by completing Radiant Incursion or Sureki Incursion Dailies.",
						["g"] = {
							i(239563),	-- Shadowbound Leash (MOUNT!)
							i(241126),	-- Sovereign Sureki Emblem (COSMETIC!)
							filter(CLOTH, {
								i(237436),	-- Nightfall Darkcaster's Vestment
								i(237437),	-- Nightfall Darkcaster's Sandals
								i(237438),	-- Nightfall Darkcaster's Handwraps
								i(237439),	-- Nightfall Darkcaster's Cowl
								i(237440),	-- Nightfall Darkcaster's Leggings
								i(237441),	-- Nightfall Darkcaster's Mantle
								i(237442),	-- Nightfall Darkcaster's Cord
								i(237443),	-- Nightfall Darkcaster's Cuffs
							}),
							filter(CLOAKS, {
								i(237435),	-- Nightfall Darkcaster's Cloak
								i(237444),	-- Nightfall Curseblade's Cape
								i(237452),	-- Nightfall Shadowstalker's Shawl
								i(237461),	-- Nightfall Executioner's Drape
							}),
							filter(FINGER_F, {
								i(237471),	-- Band of the Voidmancer
								i(237472),	-- Seal of Cosmic Embrace
							}),
							filter(LEATHER, {
								i(237445),	-- Nightfall Curseblade's Vest
								i(237446),	-- Nightfall Curseblade's Waders
								i(237447),	-- Nightfall Curseblade's Grips
								i(237470),	-- Nightfall Curseblade's Cape
								i(237448),	-- Nightfall Curseblade's Breeches
								i(237449),	-- Nightfall Curseblade's Shoulderpads
								i(237450),	-- Nightfall Curseblade's Sash
								i(237451),	-- Nightfall Curseblade's Bindings
							}),
							filter(MAIL, {
								i(237453),	-- Nightfall Shadowstalker's Chainmail
								i(237454),	-- Nightfall Shadowstalker's Striders
								i(237455),	-- Nightfall Shadowstalker's Grips
								i(237456),	-- Nightfall Shadowstalker's Coif
								i(237457),	-- Nightfall Shadowstalker's Greaves
								i(237458),	-- Nightfall Shadowstalker's Shoulderguards
								i(237459),	-- Nightfall Shadowstalker's Cinch
								i(237460),	-- Nightfall Shadowstalker's Bracers
							}),
							filter(NECK_F, {
								i(237473),	-- Dark Bargainer's Chain
								i(237474),	-- Cult Former's Charm
							}),
							filter(PLATE, {
								i(237462),	-- Nightfall Executioner's Breastplate
								i(237463),	-- Nightfall Executioner's Sabatons
								i(237464),	-- Nightfall Executioner's Gauntlets
								i(237465),	-- Nightfall Executioner's Helm
								i(237466),	-- Nightfall Executioner's Legguards
								i(237467),	-- Nightfall Executioner's Mantle
								i(237468),	-- Nightfall Executioner's Girdle
								i(237469),	-- Nightfall Executioner's Armplates
							}),
							n(WEAPONS, {
								i(237775),	-- Nightfall Curseblade's Cleaver
								i(237781),	-- Nightfall Shadowalker's Dagger
								i(237782),	-- Nightfall Curseblade's Knife
								i(237787),	-- Nightfall Darkcaster's Kris
								i(237786),	-- Nightfall Curseblade's Blunderbuss
								i(237788),	-- Nightfall Shadowalker's Shotgun
								i(237779),	-- Nightfall Darkcaster's Gavel
								i(237780),	-- Nightfall Curseblade's Cudgel
								i(237785),	-- Nightfall Darkcaster's Implement
								i(237776),	-- Nightfall Executioner's Halberd
								i(237777),	-- Nightfall Shadowalker's Bulwark
								i(237784),	-- Nightfall Shadowalker's Rod
								i(237783),	-- Nightfall Darkcaster's Greatstaff
								i(237778),	-- Nightfall Executioner's Greatsword
								i(237790),	-- Nightfall Darkcaster's Wand
								i(237789),	-- Nightfall Curseblade's Warglaive
							}),
							filter(TRINKET_F, {
								i(237495),	-- Excerpt on Dark Summons
								i(225693),	-- Shadowed Essence (Hallowfall zone treasure)
							}),
						},
					}),
					i(237743, {	-- Arathi Soldier's Coffer (Uncommon) Only Green Cosmetics
						["description"] = "Granted for achieving 33% during the Nightfall event.\nThe bar is increased by killing Sureki mobs and completing objectives in Nightfall.\n\nThe event always starts on the hour.\n\nThe Boss itself gives 41%.",
						["groups"] = {
							i(241019),	-- Arathi Camper's Knife (COSMETIC!)
							i(241016),	-- Arathi Lancer's Polearm (COSMETIC!)
							i(241007),	-- Mereldar Blacksmithing Hammer (COSMETIC!)
						},
					}),
					i(237759, {	-- Arathi Cleric's Chest (Rare) Only Weapons
						["description"] = "Granted for achieving 66% during the Nightfall event.\nThe bar is increased by killing Sureki mobs and completing objectives in Nightfall.\n\nThe event always starts on the hour.\n\nThe Boss itself gives 41%.",
						["groups"] = {
							n(WEAPONS, {
								i(237795), -- Arathi Abbot's Gavel
								i(237799), -- Arathi Abbot's Greatstaff
								i(237801), -- Arathi Abbot's Implement
								i(237803), -- Arathi Abbot's Kris
								i(237806), -- Arathi Abbot's Wand
								i(241036), -- Arathi Anointer's Wand
								i(237800), -- Arathi Cleric's Rod
								i(237802), -- Arathi Cleric's Blunderbuss
								i(237792), -- Arathi Crusader's Halberd
								i(237793), -- Arathi Crusader's Bulwark
								i(237794), -- Arathi Crusader's Greatsword
								i(241035), -- Arathi Soldier's Morningstar
								i(241033), -- Arathi Templar's Claymore
								i(237791), -- Arathi Zealot's Cleaver
								i(237796), -- Arathi Zealot's Cudgel
								i(237797), -- Arathi Zealot's Dagger
								i(237798), -- Arathi Zealot's Knife
								i(237804), -- Arathi Zealot's Shotgun
								i(237805), -- Arathi Zealot's Warglaive
							}),
						},
					}),
					i(237760, {	-- Arathi Champion's Spoils (Epic)
						["description"] = "Granted for achieving 100% during the Nightfall event.\nThe bar is increased by killing Sureki mobs and completing objectives in Nightfall.\n\nThe event always starts on the hour.\n\nThe Boss itself gives 41%.",
						["sym"] = {	-- Arathi Cleric's Chest (Rare)
							{"select","itemID",237759},{"pop"},
							{"where","headerID",WEAPONS},
						},
						["groups"] = {
							filter(CLOAKS, {
								i(237394),	-- Arathi Abbot's Cloak
								i(237403),	-- Arathi Zealot's Cape
								i(237411),	-- Arathi Cleric's Shawl
								i(237420),	-- Arathi Crusader's Drape
							}),
							filter(CLOTH, {
								i(237395),	-- Arathi Abbot's Vestment
								i(237396),	-- Arathi Abbot's Sandals
								i(237397),	-- Arathi Abbot's Handwraps
								i(237398),	-- Arathi Abbot's Cowl
								i(237399),	-- Arathi Abbot's Leggings
								i(237400),	-- Arathi Abbot's Mantle
								i(237401),	-- Arathi Abbot's Cord
								i(237402),	-- Arathi Abbot's Cuffs
							}),
							filter(FINGER_F, {
								i(237431),	-- Divine Loop of the Crusader
								i(237430),	-- Consecrated Seal
							}),
							filter(LEATHER, {
								i(237404),	-- Arathi Zealot's Vest
								i(237405),	-- Arathi Zealot's Waders
								i(237406),	-- Arathi Zealot's Grips
								i(237429),	-- Arathi Zealot's Cape
								i(237407),	-- Arathi Zealot's Breeches
								i(237408),	-- Arathi Zealot's Shoulderpads
								i(237409),	-- Arathi Zealot's Sash
								i(237410),	-- Arathi Zealot's Bindings
							}),
							filter(MAIL, {
								i(237412),	-- Arathi Cleric's Chainmail
								i(237413),	-- Arathi Cleric's Striders
								i(237414),	-- Arathi Cleric's Grips
								i(237415),	-- Arathi Cleric's Coif
								i(237416),	-- Arathi Cleric's Greaves
								i(237417),	-- Arathi Cleric's Shoulderguards
								i(237418),	-- Arathi Cleric's Cinch
								i(237419),	-- Arathi Cleric's Bracers
							}),
							filter(NECK_F, {
								i(237432),	-- Clergyman's Anointed Pendant
							}),
							filter(PLATE, {
								i(237421),	-- Arathi Crusader's Breastplate
								i(237422),	-- Arathi Crusader's Sabatons
								i(237423),	-- Arathi Crusader's Gauntlets
								i(237424),	-- Arathi Crusader's Helm
								i(237425),	-- Arathi Crusader's Legguards
								i(237426),	-- Arathi Crusader's Mantle
								i(237427),	-- Arathi Crusader's Girdle
								i(237428),	-- Arathi Crusader's Armplates
							}),
							filter(TRINKET_F, {
								i(225647),	-- Shining Arathor Insignia (TWW zone reward)
								i(238391),	-- Arathi Minister's Receptacle
								i(237494),	-- Hallowed Tome of the Abbot
							}),
							n(WEAPONS, {
							}),
						},
					}),
					-- Crafting reagent?
					i(238407),	-- Black Blood Residue
					n(EVENT_COMPLETION, {
						["description"] = "The Boss spawns at the end of the Nightfall Event.\nThe Event always starts on the hour.",
						["coord"] = { 25.2, 55.6, HALLOWFALL },
						["crs"] = {
							240968, 	--	Ahn'tak
							240969, 	--	Anub'Ranax
							234440, 	--	Azj-Tak the Behemoth
						},
						["sym"] = {{"select","itemID",
							237471, -- Band of the Voidmancer
							237474, -- Cult Former's Charm
							237473, -- Dark Bargainer's Chain
							237495, -- Excerpt on Dark Summons
							237435, -- Nightfall Darkcaster's Cloak
							237436, -- Nightfall Darkcaster's Vestment
							237437, -- Nightfall Darkcaster's Sandals
							237438, -- Nightfall Darkcaster's Handwraps
							237439, -- Nightfall Darkcaster's Cowl
							237440, -- Nightfall Darkcaster's Leggings
							237441, -- Nightfall Darkcaster's Mantle
							237442, -- Nightfall Darkcaster's Cord
							237443, -- Nightfall Darkcaster's Cuffs
							237444, -- Nightfall Curseblade's Cape
							237445, -- Nightfall Curseblade's Vest
							237446, -- Nightfall Curseblade's Waders
							237447, -- Nightfall Curseblade's Grips
							237448, -- Nightfall Curseblade's Breeches
							237449, -- Nightfall Curseblade's Shoulderpads
							237450, -- Nightfall Curseblade's Sash
							237451, -- Nightfall Curseblade's Bindings
							237452, -- Nightfall Shadowstalker's Shawl
							237453, -- Nightfall Shadowstalker's Chainmail
							237454, -- Nightfall Shadowstalker's Striders
							237455, -- Nightfall Shadowstalker's Grips
							237456, -- Nightfall Shadowstalker's Coif
							237457, -- Nightfall Shadowstalker's Greaves
							237458, -- Nightfall Shadowstalker's Shoulderguards
							237459, -- Nightfall Shadowstalker's Cinch
							237460, -- Nightfall Shadowstalker's Bracers
							237461, -- Nightfall Executioner's Drape
							237462, -- Nightfall Executioner's Breastplate
							237463, -- Nightfall Executioner's Sabatons
							237464, -- Nightfall Executioner's Gauntlets
							237465, -- Nightfall Executioner's Helm
							237466, -- Nightfall Executioner's Legguards
							237467, -- Nightfall Executioner's Mantle
							237468, -- Nightfall Executioner's Girdle
							237469, -- Nightfall Executioner's Armplates
							237470, -- Nightfall Curseblade's Cape
							237775, -- Nightfall Curseblade's Cleaver
							237776, -- Nightfall Executioner's Halberd
							237777, -- Nightfall Shadowalker's Bulwark
							237778, -- Nightfall Executioner's Greatsword
							237779, -- Nightfall Darkcaster's Gavel
							237780, -- Nightfall Curseblade's Cudgel
							237781, -- Nightfall Shadowalker's Dagger
							237782, -- Nightfall Curseblade's Knife
							237783, -- Nightfall Darkcaster's Greatstaff
							237784, -- Nightfall Shadowalker's Rod
							237785, -- Nightfall Darkcaster's Implement
							237786, -- Nightfall Curseblade's Blunderbuss
							237787, -- Nightfall Darkcaster's Kris
							237788, -- Nightfall Shadowalker's Shotgun
							237789, -- Nightfall Curseblade's Warglaive
							237790, -- Nightfall Darkcaster's Wand
							237472, -- Seal of Cosmic Embrace
							225693, -- Shadowed Essence (Hallowfall zone treasure)
						}},
					}),
				}),
				n(VENDORS, {
					n(243253, {	-- Layne Pontelle
						["coord"] = { 28.3, 56.1, HALLOWFALL },
						["g"] = sharedData({ ["cost"] = {{"c", RESONANCE_CRYSTALS, 500}} }, {
							i(241278),	-- Stalwart's Waistcoat
							i(241269),	-- Aeroknight's Undercoat
							i(241268),	-- Sentry's Padded Doublet
							i(241267),	-- Sacredite's Research Tunic
						}),
					}),
					n(240979, {	-- Vesper Churnmoat
						["coord"] = { 28.2, 56.0, HALLOWFALL },
						["g"] = bubbleDownFiltered({ ["cost"] = {{"i", RADIANT_EMBLEM, 1}} },FILTERFUNC_itemID,{
							filter(FINGER_F, {
								i(237471),	-- Band of the Voidmancer
								i(237472),	-- Seal of Cosmic Embrace
							}),
							filter(NECK_F, {
								i(237473),	-- Dark Bargainer's Chain
								i(237474),	-- Cult Former's Charm
							}),
							filter(TRINKET_F, {
								i(237495),	-- Excerpt on Dark Summons
								i(225693),	-- Shadowed Essence (Hallowfall zone treasure)
							}),
							n(WEAPONS, {
								i(237775),	-- Nightfall Curseblade's Cleaver
								i(237781),	-- Nightfall Shadowalker's Dagger
								i(237782),	-- Nightfall Curseblade's Knife
								i(237787),	-- Nightfall Darkcaster's Kris
								i(237786),	-- Nightfall Curseblade's Blunderbuss
								i(237788),	-- Nightfall Shadowalker's Shotgun
								i(237779),	-- Nightfall Darkcaster's Gavel
								i(237780),	-- Nightfall Curseblade's Cudgel
								i(237785),	-- Nightfall Darkcaster's Implement
								i(237776),	-- Nightfall Executioner's Halberd
								i(237777),	-- Nightfall Shadowalker's Bulwark
								i(237784),	-- Nightfall Shadowalker's Rod
								i(237783),	-- Nightfall Darkcaster's Greatstaff
								i(237778),	-- Nightfall Executioner's Greatsword
								i(237790),	-- Nightfall Darkcaster's Wand
								i(237789),	-- Nightfall Curseblade's Warglaive
							}),
						}),
					}),
					n(227797, {	-- Raen Dawncavalyr
						["coord"] = { 28.3, 56.0, HALLOWFALL },
						["g"] = bubbleDownFiltered({ ["cost"] = {{"i", RADIANT_EMBLEM, 1}} },FILTERFUNC_itemID,{
							filter(CLOAKS, {
								i(237394),	-- Arathi Abbot's Cloak
								i(237403),	-- Arathi Zealot's Cape
								i(237411),	-- Arathi Cleric's Shawl
								i(237420),	-- Arathi Crusader's Drape
							}),
							filter(CLOTH, {
								i(237395),	-- Arathi Abbot's Vestment
								i(237396),	-- Arathi Abbot's Sandals
								i(237397),	-- Arathi Abbot's Handwraps
								i(237398),	-- Arathi Abbot's Cowl
								i(237399),	-- Arathi Abbot's Leggings
								i(237400),	-- Arathi Abbot's Mantle
								i(237401),	-- Arathi Abbot's Cord
								i(237402),	-- Arathi Abbot's Cuffs
							}),
							filter(FINGER_F, {
								i(237431),	-- Divine Loop of the Crusader
								i(237430),	-- Consecrated Seal
							}),
							filter(LEATHER, {
								i(237404),	-- Arathi Zealot's Vest
								i(237405),	-- Arathi Zealot's Waders
								i(237406),	-- Arathi Zealot's Grips
								i(237429),	-- Arathi Zealot's Cape
								i(237407),	-- Arathi Zealot's Breeches
								i(237408),	-- Arathi Zealot's Shoulderpads
								i(237409),	-- Arathi Zealot's Sash
								i(237410),	-- Arathi Zealot's Bindings
							}),
							filter(MAIL, {
								i(237412),	-- Arathi Cleric's Chainmail
								i(237413),	-- Arathi Cleric's Striders
								i(237414),	-- Arathi Cleric's Grips
								i(237415),	-- Arathi Cleric's Coif
								i(237416),	-- Arathi Cleric's Greaves
								i(237417),	-- Arathi Cleric's Shoulderguards
								i(237418),	-- Arathi Cleric's Cinch
								i(237419),	-- Arathi Cleric's Bracers
							}),
							filter(NECK_F, {
								i(237432),	-- Clergyman's Anointed Pendant
							}),
							filter(PLATE, {
								i(237421),	-- Arathi Crusader's Breastplate
								i(237422),	-- Arathi Crusader's Sabatons
								i(237423),	-- Arathi Crusader's Gauntlets
								i(237424),	-- Arathi Crusader's Helm
								i(237425),	-- Arathi Crusader's Legguards
								i(237426),	-- Arathi Crusader's Mantle
								i(237427),	-- Arathi Crusader's Girdle
								i(237428),	-- Arathi Crusader's Armplates
							}),
							filter(TRINKET_F, {
								i(225647),	-- Shining Arathor Insignia (TWW zone reward)
								i(238391),	-- Arathi Minister's Receptacle
								i(237494),	-- Hallowed Tome of the Abbot
							}),
							n(WEAPONS, {
								i(237795),	-- Arathi Abbot's Gavel
								i(237799),	-- Arathi Abbot's Greatstaff
								i(237801),	-- Arathi Abbot's Implement
								i(237803),	-- Arathi Abbot's Kris
								i(237806),	-- Arathi Abbot's Wand
								i(237802),	-- Arathi Cleric's Blunderbuss
								i(237800),	-- Arathi Cleric's Rod
								i(237793),	-- Arathi Crusader's Bulwark
								i(237794),	-- Arathi Crusader's Greatsword
								i(237792),	-- Arathi Crusader's Halberd
								i(237791),	-- Arathi Zealot's Cleaver
								i(237796),	-- Arathi Zealot's Cudgel
								i(237797),	-- Arathi Zealot's Dagger
								i(237798),	-- Arathi Zealot's Knife
								i(237804),	-- Arathi Zealot's Shotgun
								i(237805),	-- Arathi Zealot's Warglaive
							}),
						}),
					}),
				}),
			},
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(KHAZ_ALGAR, {
		m(HALLOWFALL, {
			n(NIGHTFALL, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_5 } }, {
				q(90105, {["isDaily"]=true}),	-- Bonus reputation per day for 1st event when you filled progress bar
				-- after opening Arathi Champion's Spoils (237760) per slot as was for Siren Islands?
				-- seems like one per Arathi XX set and one per Nightfall XX set?
				q(88686),	-- 2H weapon (agi/str weapon) / Arathi Crusader's Halberd (itemID 237792)
				--q(??),	-- 2H weapon (agi/str weapon) / Nightfall Darkcaster's Halberd (itemID ??)
				q(88685),	-- 1H weapon (caster/off spec) / Arathi Abbot's Kris (itemID 237803)
				q(88895),	-- 1H weapon (caster/off spec) / Nightfall Darkcaster's Kris (itemID 237787)
				q(88684),	-- OH weapon (caster/off spec) / Arathi Abbot's Implement (itemID 237801)
				q(88896),	-- OH weapon (caster/off spec) / Nightfall Darkcaster's Implement (itemID 237785) (it was looted from boss during nightfall event)
				q(88687, {	-- Arathi Crusader Set Cape Unlock
				--	["name"] = "Unlocked Cape Slot for the Arathi Set. RELOG to get them automatically for every Armor Type!",
				}),
				q(88692, {	-- Arathi Crusader Set Chest Unlock
					["name"] = "Unlocked Chest Slot for the Arathi Set. RELOG to get them automatically for every Armor Type!",
				}),
				q(88689, {	-- Arathi Crusader Set Belt Unlock
					["name"] = "Unlocked Belt Slot for the Arathi Set. RELOG to get them automatically for every Armor Type!",
				}),
				q(88691, {	-- Arathi Crusader Set Feet Unlock
					["name"] = "Unlocked Feet Slot for the Arathi Set. RELOG to get them automatically for every Armor Type!",
				}),
				q(88690, {	-- Arathi Crusader Set Hands Unlock
					["name"] = "Unlocked Hands Slot for the Arathi Set. RELOG to get them automatically for every Armor Type!",
				}),
				q(88695, {	-- Arathi Crusader Set Head Unlock
					["name"] = "Unlocked Head Slot for the Arathi Set. RELOG to get them automatically for every Armor Type!",
				}),
				q(88693, {	-- Arathi Crusader Set Legs Unlock
					["name"] = "Unlocked Legs Slot for the Arathi Set. RELOG to get them automatically for every Armor Type!",
				}),
				q(88694, {	-- Arathi Crusader Set Shoulder Unlock
					["name"] = "Unlocked Shoulder Slot for the Arathi Set. RELOG to get them automatically for every Armor Type!",
				}),
				q(88688, {	-- Arathi Crusader Set Wrists Unlock
					["name"] = "Unlocked Wrist Slot for the Arathi Set. RELOG to get them automatically for every Armor Type!",
				}),
				--q(??),	-- Cape / Nightfall Curseblade Cape (itemID 237444)
				q(88888),	-- Chest / Nightfall Curseblade's Vest
				--q(??),	-- Feet / Nightfall Curseblade's Waders (itemID 237446)
				q(88890),	-- Hands / Nightfall Curseblade's Grips (itemID 237447) (it was looted from Dissenter Fervormyt?)
				--q(??),	-- Legs / Nightfall Curseblade's Breeches (itemID 237448)
				q(88683),	-- Neck / Clergyman's Anointed Pendant (itemID 237432)
				q(88682),	-- Ring / Divine Loop of the Crusader (itemID 237431)
				--q(??),	-- Shoulder / Nightfall Curseblade's Shoulderpads (itemID 237449)
				q(88681),	-- Trinket 1 / Shining Arathor Insignia (itemID 225947)
				q(88680),	-- Trinket 2 / Hallowed Tome of the Cleric (itemID 237494)
				--q(??),	-- Wrists / Nightfall Curseblade's Bindings (itemID 237451)
				-- after turn in weekly?
				q(88898),	-- after turn in Radiant Incursion: Rak-Zakaz (88945)
				q(88893),	-- after turn in Radiant Incursion: Sureki's End (88916)
				q(88891),	-- after turn in Radiant Incursion: Toxins and Pheromones (88711)
				q(88894),	-- after turn in Sureki Incursion: Hold the Wall (87475)
				q(88889),	-- after turn in Sureki Incursion: Southern Swarm (87477)
				q(88885),	-- after turn in Sureki Incursion: The Eastern Assault (87480)
				-- ^ could be NYI on live cause now it seems like counter for achievementID 41998 (Turning the Venom Tide)
				-- there new one now or it somehow reset (but flag still return as complete for above?)
				q(88900),	-- Baleful Excerpt on Prophetic Death
				q(88886),	--
				q(88892),	--
				q(88897),	--
				q(88899),	--
				q(88887),	--
				q(91161),	-- Daily Rep Flame Radiance for killing Deepcrawler Tx'kesh (Ajz Kahet)
				q(91162),	-- Daily Rep Flame Radiance for killing Kaheti Silk Hauler (Ajz Kahet)
				q(91163),	-- Daily Rep Flame Radiance for killing Skrimisher Sa'zryk (Ajz Kahet)
				q(91164),	-- Daily Rep Flame Radiance for killing Umbraclaw Matta (Ajz Kahet)
				q(91165),	-- Daily Rep Flame Radiance for killing Webspeaker Grik Ik (Ajz Kahet)
				q(81608),	-- Enter Azj'Kahet post-patch? [DNT] Vizier - Level 4 Unlock / 443686 [DNT] Dummy - Pact Backup / 1231879
			})),
		}),
	}),
})));