---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
NIGHTFALL = createHeader({
	readable = "Nightfall",
	icon = 6694197,
	text = {
		en = "Nightfall",
	},
});

local RADIANT_EMBLEM = 238920;
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_1_5 } }, {
	m(HALLOWFALL, {
		n(NIGHTFALL, {
			["g"] = {
				n(ACHIEVEMENTS, {
					ach(41999),	-- Fighter of the Nightman
					ach(41996),	-- I'm Doing My Part
					ach(41997),	-- Owner of a Radiant Heart
					ach(41998),	-- Turning the Venom Tide
				}),
				n(QUESTS, {
					q(85005, {	-- A Radiant Call
						--["sourceQuests"] = { xxx },	-- ??
						["provider"] = { "n", 242126 },	-- Flame's Radiance Recruiter
						["coord"] = { 45.9, 49.3, DORNOGAL },
						["isBreadcrumb"] = true,	-- TODO: unsure
					}),
					q(89332, {	-- Boot Camp
						["sourceQuests"] = { 85005 },	-- A Radiant Call (TODO: unsure)
						["provider"] = { "n", 234774 },	-- Mylton Wyldbraun
						["coord"] = { 28.3, 56.1, HALLOWFALL },
					}),
					q(89331, {	-- Flame Fortification
						["sourceQuests"] = { 85005 },	-- A Radiant Call (TODO: unsure)
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
								-- TODO: seems like also share vendor stuff
								i(241126),	-- Sovereign Sureki Emblem (COSMETIC!)
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
				})),
				n(RARES, {
					n(241227),	-- Dissenter Glaivefur
					n(241228, {	-- Dissenter Oathland
						["coord"] = { 62.5, 27.2, AZJ_KAHET },
					}),
					n(241229, {	-- Dissenter Fervormyt
						["coords"] = {
							{ 50.2, 65.1, HALLOWFALL },
							{ 49.9, 70.4, HALLOWFALL },
						},
					}),
					n(241230, {	-- Dissenter Tailtrek
						["coord"] = { 63.1, 11.2, AZJ_KAHET },
					}),
					n(241231),	-- Dissenter Fortfervor
					n(241232),	-- Dissenter Troosilver
					n(241234),	-- Whisperer Batalsworn
					n(241235),	-- Whisperer Hillhelm
					n(241236),	-- Whisperer Bravefort
					n(241237),	-- Whisperer Warsididel
					n(241238),	-- Whisperer Siegesage
					n(241239, {	-- Whisperer Warhavuk
						["coord"] = { 65.7, 53.9, AZJ_KAHET },
					}),
				}),
				n(REWARDS, {
					-- Caches from progress bar
					i(237743, {	-- Arathi Soldier's Coffer (uncommon)
						i(241007),	-- Mereldar Blacksmithing Hammer (COSMETIC!)
					}),
					i(237759),	-- Arathi Cleric's Chest (rare)
					i(237760),	-- Arathi Champion's Spoils (epic)
					-- Crafting reagent?
					i(238407),	-- Black Blood Residue
					-- Bosses, they share vendor stuff but with veteran rank
					--n(240968),	-- Ahn'tak
					--n(240969),	-- Anub'Ranax
					--n(234440),	-- Azj-Tak the Behemoth
					-- Nighfall pieces that was previously in vendor
					i(237435),	-- Nightfall Darkcaster's Cloak
					i(237436),	-- Nightfall Darkcaster's Vestment
					i(237437),	-- Nightfall Darkcaster's Sandals
					i(237438),	-- Nightfall Darkcaster's Handwraps
					i(237439),	-- Nightfall Darkcaster's Cowl
					i(237440),	-- Nightfall Darkcaster's Leggings
					i(237441),	-- Nightfall Darkcaster's Mantle
					i(237442),	-- Nightfall Darkcaster's Cord
					i(237443),	-- Nightfall Darkcaster's Cuffs
					i(237444),	-- Nightfall Curseblade's Cape
					i(237445),	-- Nightfall Curseblade's Vest
					i(237446),	-- Nightfall Curseblade's Waders
					i(237447),	-- Nightfall Curseblade's Grips
					i(237470),	-- Nightfall Curseblade's Cape
					i(237448),	-- Nightfall Curseblade's Breeches
					i(237449),	-- Nightfall Curseblade's Shoulderpads
					i(237450),	-- Nightfall Curseblade's Sash
					i(237451),	-- Nightfall Curseblade's Bindings
					i(237452),	-- Nightfall Shadowalker's Shawl
					i(237453),	-- Nightfall Shadowalker's Chainmail
					i(237454),	-- Nightfall Shadowalker's Striders
					i(237455),	-- Nightfall Shadowalker's Grips
					i(237456),	-- Nightfall Shadowalker's Coif
					i(237457),	-- Nightfall Shadowalker's Greaves
					i(237458),	-- Nightfall Shadowalker's Shoulderguards
					i(237459),	-- Nightfall Shadowalker's Cinch
					i(237460),	-- Nightfall Shadowalker's Bracers
					i(237461),	-- Nightfall Executioner's Drape
					i(237462),	-- Nightfall Executioner's Breastplate
					i(237463),	-- Nightfall Executioner's Sabatons
					i(237464),	-- Nightfall Executioner's Gauntlets
					i(237465),	-- Nightfall Executioner's Helm
					i(237466),	-- Nightfall Executioner's Legguards
					i(237467),	-- Nightfall Executioner's Mantle
					i(237468),	-- Nightfall Executioner's Girdle
					i(237469),	-- Nightfall Executioner's Armplates
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
						["g"] = sharedData({ ["cost"] = {{"i", RADIANT_EMBLEM, 1}} }, {
							-- 1
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
							-- 2
							i(237777),	-- Nightfall Shadowalker's Bulwark
							i(237784),	-- Nightfall Shadowalker's Rod
							i(237783),	-- Nightfall Darkcaster's Greatstaff
							i(237778),	-- Nightfall Executioner's Greatsword
							i(237790),	-- Nightfall Darkcaster's Wand
							i(237789),	-- Nightfall Curseblade's Warglaive
							i(237495),	-- Excerpt on Dark Summons
							i(225693),	-- Shadowed Essence (Hallowfall zone treasure)
							i(237471),	-- Band of the Voidmancer
							i(237472),	-- Seal of Cosmic Embrace
							i(237473),	-- Dark Bargainer's Chain
							-- 3
							i(237474),	-- Cult Former's Charm
							-- All Nightfall gear (beside weapons, are now missing from vendor)
							-- and seems like reward from end boss?
						}),
					}),
					n(227797, {	-- Raen Dawncavalyr
						["coord"] = { 28.3, 56.0, HALLOWFALL },
						["g"] = sharedData({ ["cost"] = {{"i", RADIANT_EMBLEM, 1}} }, {
							-- 1
							i(237791),	-- Arathi Zealot's Cleaver
							i(237797),	-- Arathi Zealot's Dagger
							i(237798),	-- Arathi Zealot's Knife
							i(237803),	-- Arathi Abbot's Kris
							i(237802),	-- Arathi Cleric's Blunderbuss
							i(237804),	-- Arathi Zealot's Shotgun
							i(237795),	-- Arathi Abbot's Gavel
							i(237796),	-- Arathi Zealot's Cudgel
							i(237801),	-- Arathi Abbot's Implement
							i(237792),	-- Arathi Crusader's Halberd
							-- 2
							i(237793),	-- Arathi Crusader's Bulwark
							i(237800),	-- Arathi Cleric's Rod
							i(237799),	-- Arathi Abbot's Greatstaff
							i(237794),	-- Arathi Crusader's Greatsword
							i(237806),	-- Arathi Abbot's Wand
							i(237805),	-- Arathi Zealot's Warglaive
							i(225647),	-- Shining Arathor Insignia (TWW zone reward)
							i(238391),	-- Arathi Minister's Receptacle
							i(237494),	-- Hallowed Tome of the Abbot
							i(237430),	-- Consecrated Seal
							-- 3
							i(237431),	-- Divine Loop of the Crusader
							i(237432),	-- Clergyman's Anointed Pendant
							i(237394),	-- Arathi Abbot's Cloak
							i(237395),	-- Arathi Abbot's Vestment
							i(237396),	-- Arathi Abbot's Sandals
							i(237397),	-- Arathi Abbot's Handwraps
							i(237398),	-- Arathi Abbot's Cowl
							i(237399),	-- Arathi Abbot's Leggings
							i(237400),	-- Arathi Abbot's Mantle
							i(237401),	-- Arathi Abbot's Cord
							-- 4
							i(237402),	-- Arathi Abbot's Cuffs
							i(237403),	-- Arathi Zealot's Cape
							i(237404),	-- Arathi Zealot's Vest
							i(237405),	-- Arathi Zealot's Waders
							i(237406),	-- Arathi Zealot's Grips
							i(237429),	-- Arathi Zealot's Cape
							i(237407),	-- Arathi Zealot's Breeches
							i(237408),	-- Arathi Zealot's Shoulderpads
							i(237409),	-- Arathi Zealot's Sash
							i(237410),	-- Arathi Zealot's Bindings
							-- 5
							i(237411),	-- Arathi Cleric's Shawl
							i(237412),	-- Arathi Cleric's Chainmail
							i(237413),	-- Arathi Cleric's Striders
							i(237414),	-- Arathi Cleric's Grips
							i(237415),	-- Arathi Cleric's Coif
							i(237416),	-- Arathi Cleric's Greaves
							i(237417),	-- Arathi Cleric's Shoulderguards
							i(237418),	-- Arathi Cleric's Cinch
							i(237419),	-- Arathi Cleric's Bracers
							i(237420),	-- Arathi Crusader's Drape
							-- 6
							i(237421),	-- Arathi Crusader's Breastplate
							i(237422),	-- Arathi Crusader's Sabatons
							i(237423),	-- Arathi Crusader's Gauntlets
							i(237424),	-- Arathi Crusader's Helm
							i(237425),	-- Arathi Crusader's Legguards
							i(237426),	-- Arathi Crusader's Mantle
							i(237427),	-- Arathi Crusader's Girdle
							i(237428),	-- Arathi Crusader's Armplates
						}),
					}),
				}),
			},
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_5 } }, {
	m(KHAZ_ALGAR, {
		m(HALLOWFALL, {
			n(NIGHTFALL, {
				q(90105, {["isDaily"]=true}),	-- Bonus reputaion per day for 1st event when you filled progress bar
				-- after opening Arathi Champion's Spoils (237760) per slot as was for Siren Islands?
				-- seems like one per Arathi XX set and one per Nightfall XX set?
				q(88686),	-- 2H weapon (agi/str weapon) / Arathi Crusader's Halberd (itemID 237792)
				--q(??),	-- 2H weapon (agi/str weapon) / Nightfall Darkcaster's Halberd (itemID ??)
				q(88685),	-- 1H weapon (caster/off spec) / Arathi Abbot's Kris (itemID 237803)
				q(88895),	-- 1H weapon (caster/off spec) / Nightfall Darkcaster's Kris (itemID 237787)
				q(88684),	-- OH weapon (caster/off spec) / Arathi Abbot's Implement (itemID 237801)
				q(88896),	-- OH weapon (caster/off spec) / Nightfall Darkcaster's Implement (itemID 237785) (it was looted from boss during nightfall event)
				q(88687),	-- Cape / Arathi Abbot's Cloak (itemID 237394)
				--q(??),	-- Cape / Nightfall Curseblade Cape (itemID 237444)
				q(88692),	-- Chest / Arathi Zealot's Vest (itemID 237404)
				q(88888),	-- Chest / Nightfall Curseblade's Vest
				q(88691),	-- Feet / Arathi Zealot's Waders (itemID 237405)
				--q(??),	-- Feet / Nightfall Curseblade's Waders (itemID 237446)
				q(88690),	-- Hands / Arathi Zealot's Grips (itemID 237406)
				q(88890),	-- Hands / Nightfall Curseblade's Grips (itemID 237447) (it was looted from Dissenter Fervormyt?)
				q(88693),	-- Legs / Arathi Zealot's Breeches (itemID 237407)
				--q(??),	-- Legs / Nightfall Curseblade's Breeches (itemID 237448)
				q(88683),	-- Neck / Clergyman's Anointed Pendant (itemID 237432)
				q(88682),	-- Ring / Divine Loop of the Crusader (itemID 237431)
				q(88694),	-- Shoulder / Arathi Zealot's Shoulderpads (itemID 237408)
				--q(??),	-- Shoulder / Nightfall Curseblade's Shoulderpads (itemID 237449)
				q(88681),	-- Trinket 1 / Shining Arathor Insignia (itemID 225947)
				q(88680),	-- Trinket 2 / Hallowed Tome of the Cleric (itemID 237494)
				q(88688),	-- Wrists / Arathi Zealot's Bindings (itemID 237410)
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
				q(88900),	-- 
				q(88886),	-- 
				q(88892),	-- 
				q(88897),	-- 
				q(88899),	-- 
				q(88887),	-- 
				--q(),	-- 
				--q(),	-- 
				--q(),	-- 
				--q(),	-- 
			}),
		}),
	}),
})));