-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
FYRAKK_ASSAULTS = createHeader({
	readable = "Fyrakk Assaults",
	icon = 4914672,
	text = {
		en = "Fyrakk Assaults",
		es = "Asaltos de Fyrakk",
		de = "Angriffe von Fyrakk",
		fr = "Assauts de Fyrakk",
		it = "Assalti di Fyrakk",
		pt = "Ofensivas de Fyrakk",
		ru = "Налеты Фиракка",
		ko = "피락의 습격",
		cn = "菲莱克突袭",
	},
});
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	n(FYRAKK_ASSAULTS, {
		["questID"] = 75467,	-- completion of the assault via killing the respective 'Disciple' dragon
		["isWeekly"] = true,
		["maps"] = {
			OHNAHRAN_PLAINS,
			THE_AZURE_SPAN,
		},
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(17506),	-- Still Standing in the Fire
				ach(17735),	-- We Didn't Start the Fire
			}),
			n(COMMON_BOSS_DROPS, {
				["crs"] = {
					201673,	-- Kretchenwrath
					203411,	-- Shadeisethal
				},
				["g"] = {
					filter(BATTLE_PETS, {
						i(205003),	-- Ambre (PET!)
						i(205002),	-- Blaise (PET!)
					}),
					n(DRAKEWATCHER_MANUSCRIPTS, {
						i(197348),	-- Renewed Proto-Drake: Black and Red Armor (MM!) [Discord]
						i(202277),	-- Renewed Proto-Drake: Bruiser Horns (MM!) [Mount Discord/Runaway]
					}),
					i(203710),	-- Everburning Key
					i(206043),	-- Fyrakk's Frenzy (TOY!)
				},
			}),
			n(QUESTS, sharedData({ ["isWeekly"] = true, ["_drop"] = { "g" } }, {
				q(75887, {	-- Fyrakk's Forces
					["provider"] = { "n", 205647 },	-- Kalecgos
					["coords"] = {
						{ 49.2, 55.8, VALDRAKKEN },
						{ 55.6, 55.0, ZARALEK_CAVERN },
					},
					["isWeekly"] = IGNORED_VALUE,
					["isBreadcrumb"] = true,
				}),
				q(75888, {	-- Suffusion Camp
					["sourceQuest"] = 75887,	-- Fyrakk's Forces
					["providers"] = {
						{ "n", 201648 },	-- Somnikus
						{ "n", 203520 },	-- Stellagosa
					},
					["coords"] = {
						{ 75.2, 69.2, OHNAHRAN_PLAINS },
						{ 58.0, 34.6, THE_AZURE_SPAN },
					},
					["g"] = {
						ach(18867, {	-- Through the Ashes and Flames
							["timeline"] = { ADDED_10_1_7 },
						}),
					},
				}),
					-- Ohn'haran Plains --
				q(74573, {	-- Aerial Support
					["provider"] = { "n", 201648 },	-- Somnikus
					["coord"] = { 75.2, 69.2, OHNAHRAN_PLAINS },
				}),
				q(74570, {	-- Aid Our Wounded
					["provider"] = { "n", 201861 },	-- Tigari Khan
					["coord"] = { 75.6, 69.1, OHNAHRAN_PLAINS },
					["g"] = {
						i(203731),	-- Enchanted Bandage
					},
				}),
				q(75168, {	-- Air Control
					["provider"] = { "n", 201090 },	-- Mayla Highmountain
					["coord"] = { 74.9, 69.6, OHNAHRAN_PLAINS },
				}),
				q(74571, {	-- Clear a Path
					["provider"] = { "n", 201876 },	-- Baine Bloodhoof
					["coord"] = { 75.1, 69.6, OHNAHRAN_PLAINS },
				}),
				q(74569, {	-- Deny Them Resources
					["provider"] = { "n", 201860 },	-- Khanam Matra Sarest
					["coord"] = { 75.6, 69.9, OHNAHRAN_PLAINS },
					["g"] = {
						i(204699),	-- Suffused Ingots (QI!)
					},
				}),
				q(74775, {	-- Disciple of Fyrakk: Kretchenwrath
					["provider"] = { "i", 204071 },	-- Head of Kretchenwrath
					-- ["maps"] = { OHNAHRAN_PLAINS },
					["isWeekly"] = IGNORED_VALUE,	-- One-Time
					["_drop"] = { "g" },	-- Drop Crest
					["groups"] = {
						i(201923, {	-- Maruuk Centaur Insignia [Epic 500]
						}),
					},
				}),
				q(75182, {	-- Grand Theft Mammoth
					["provider"] = { "n", 201860 },	-- Khanam Matra Sarest
					["coord"] = { 75.6, 69.9, OHNAHRAN_PLAINS },
				}),
				q(74572, {	-- Make it Rain
					["provider"] = { "n", 201861 },	-- Tigari Khan
					["coord"] = { 75.6, 69.1, OHNAHRAN_PLAINS },
				}),
				q(74568, {	-- They Who Would Burn Us
					["provider"] = { "n", 201090 },	-- Mayla Highmountain
					["coord"] = { 74.9, 69.6, OHNAHRAN_PLAINS },
				}),
				q(75181, {	-- Volunteer Fire Fighters
					["provider"] = { "n", 201861 },	-- Tigari Khan
					["coord"] = { 75.6, 69.1, OHNAHRAN_PLAINS },
				}),
					-- Azure Span --
				q(75375, {	-- Burning Ice
					["provider"] = { "n", 203603 },	-- Brena
					["coord"] = { 58.6, 34.3, THE_AZURE_SPAN },
				}),
				q(75373, {	-- Charge of the Ottuk Brigade
					["provider"] = { "n", 203601 },	-- Blubberwall
					["coord"] = { 57.7, 34.4, THE_AZURE_SPAN },
				}),
				q(75239, {	-- Disciple of Fyrakk: Shadeisethal
					["provider"] = { "i", 204683 },	-- Head of Shadeisethal
					-- ["maps"] = { THE_AZURE_SPAN },
					["isWeekly"] = IGNORED_VALUE,	-- One-Time
					["_drop"] = { "g" },	-- Drop Crest
					["group"] = {
						i(201922, {	-- Iskaara Tuskarr Insignia [Epic 500]
						}),
					},
				}),
				q(75372, {	-- Drive Them Before Us
					["provider"] = { "n", 203601 },	-- Blubberwall
					["coord"] = { 57.7, 34.4, THE_AZURE_SPAN },
				}),
				q(75383, {	-- Hideaway No More
					["provider"] = { "n", 203604 },	-- Old Grimtusk
					["coord"] = { 58.4, 33.4, THE_AZURE_SPAN },
				}),
				q(75377, {	-- Maintaining the Barricade
					["provider"] = { "n", 203522 },	-- Archmage Khadgar
					["coord"] = { 58.4, 34.4, THE_AZURE_SPAN },
				}),
				q(75384, {	-- Payback's a Mammoth
					["provider"] = { "n", 203604 },	-- Old Grimtusk
					["coord"] = { 58.4, 33.4, THE_AZURE_SPAN },
				}),
				q(75382, {	-- Portal Combat
					["provider"] = { "n", 203520 },	-- Stellagosa
					["coord"] = { 57.9, 34.5, THE_AZURE_SPAN },
				}),
				q(75376, {	-- Suffuse, Reuse, Recycle
					["provider"] = { "n", 203522 },	-- Archmage Khadgar
					["coord"] = { 58.4, 34.5, THE_AZURE_SPAN },
				}),
				q(75374, {	-- To Defend the Span
					["provider"] = { "n", 203603 },	-- Brena
					["coord"] = { 58.6, 34.3, THE_AZURE_SPAN },
				}),
			})),
			n(RARES, sharedData({ ["isWeekly"] = true }, {
				n(201673, {	-- Kretchenwrath
					["g"] = {
						i(204071),	-- Head of Kretchenwrath
					},
				}),
				n(203411, {	-- Shadeisethal
					["g"] = {
						i(204683),	-- Head of Shadeisethal
					},
				}),
				i(203683),	-- Ward of Fyrakk
			})),
			n(EVENT_COMPLETION, {
				["crs"] = {
					201673,	-- Kretchenwrath
					203411,	-- Shadeisethal
				},
				["groups"] = {
					i(205258),	-- Everburning Shadowflame
					i(200453),	-- Iskaara Tuskarr Insignia [Rare]
					i(200454),	-- Maruuk Centaur Insignia [Rare]
					i(204076, {	-- Drake's Shadowflame Crest Fragments
						["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
					}),
					n(BACK, {
						i(204897),	-- Suffused Cloak
						i(204898),	-- Suffused Drape
						i(204896),	-- Suffused Greatcloak
						i(204733),	-- Suffused Shawl
					}),
					filter(CLOTH, {
						i(204784),	-- Suffused Cord
						i(204786),	-- Suffused Cowl
						i(204783),	-- Suffused Cuffs
						i(204787),	-- Suffused Handwraps
						i(204785),	-- Suffused Leggings
						i(204788),	-- Suffused Sandals
						i(204758),	-- Suffused Shoulderpads
						i(204789),	-- Suffused Vestment
					}),
					filter(FINGER_F, {
						i(204735),	-- Suffused Band
						i(204746),	-- Suffused Loop
						i(204745),	-- Suffused Signet
					}),
					filter(LEATHER, {
						i(204777),	-- Suffused Bindings
						i(204779),	-- Suffused Breeches
						i(204759),	-- Suffused Epaulets
						i(204781),	-- Suffused Grips
						i(204780),	-- Suffused Helm
						i(204778),	-- Suffused Sash
						i(204760),	-- Suffused Vest
						i(204782),	-- Suffused Waders
					}),
					filter(MAIL, {
						i(204769),	-- Suffused Bracers
						i(204776),	-- Suffused Chainmail
						i(204770),	-- Suffused Cinch
						i(204773),	-- Suffused Coif
						i(204772),	-- Suffused Greaves
						i(204774),	-- Suffused Grips
						i(204771),	-- Suffused Shoulderguards
						i(204775),	-- Suffused Striders
					}),
					filter(NECK_F, {
						i(204732),	-- Suffused Choker
					}),
					filter(PLATE, {
						i(204761),	-- Suffused Armplates
						i(204767),	-- Suffused Breastplate
						i(204762),	-- Suffused Girdle
						i(204765),	-- Suffused Gauntlets
						i(204768),	-- Suffused Helm
						i(204764),	-- Suffused Legguards
						i(204763),	-- Suffused Mantle
						i(204766),	-- Suffused Sabatons
					}),
					filter(TRINKET_F, {
						i(204901),	-- Firecaller's Focus
						i(204736),	-- Heatbound Medallion
					}),
					n(WEAPONS, {
						i(204757),	-- Suffused Barrier
						i(204748),	-- Suffused Blade
						i(204742),	-- Suffused Censer
						i(204743),	-- Suffused Cleaver
						i(204740),	-- Suffused Cudgel
						i(204747),	-- Suffused Greatsword
						i(204744),	-- Suffused Hacker
						i(204739),	-- Suffused Halberd
						i(204750),	-- Suffused Kris
						i(204741),	-- Suffused Mallet
						i(204754),	-- Suffused Polearm
						i(204753),	-- Suffused Rifle
						i(204756),	-- Suffused Scepter
						i(204751),	-- Suffused Shank
						i(204752),	-- Suffused Spellblade
						i(204738),	-- Suffused Staff
						i(204749),	-- Suffused Sword
						i(204755),	-- Suffused Wand
						i(204737),	-- Suffused Warglaive
					}),
				},
			}),
			n(TREASURES, {
				o_repeated({	-- Secured Shipment
					["cost"] = { { "i", 203710, 3 } },	-- 3x Everburning Key
					["sym"] = {{"select","headerID",FYRAKK_ASSAULTS},{"pop"},{"where","headerID",EVENT_COMPLETION},{"pop"}},	-- add Fyrakk Assault Rewards
					["g"] = {
						-- Rewards
						filter(BATTLE_PETS, {
							i(205003),	-- Ambre (PET!)
							i(205002),	-- Blaise (PET!)
						}),
						i(196965),	-- Cliffside Wylderdrake: Bronze and Teal Armor (MM!) [Wowhead]
						i(197156),	-- Highland Drake: Bronze and Green Armor (MM!) [Wowhead]
						i(197353),	-- Renewed Proto-Drake: Bronze and Pink Armor (MM!) [Wowhead]
						i(197577),	-- Windborne Velocidrake: Bronze and Green Armor (MM!) [Wowhead]
						i(203299),	-- Winding Slitherdrake: Green and Bronze Armor (MM!) [Wowhead]
						-- Objects
						o(398815, {	-- Secured Shipment
							["coord"] = { 73.8, 72.5, OHNAHRAN_PLAINS },
							["questID"] = 75525,
							["isWeekly"] = true,
						}),
						o(386559, {	-- Secured Shipment
							["coord"] = { 53.8, 33.8, THE_AZURE_SPAN },
							["questID"] = 74526,
							["isWeekly"] = true,
						}),
					},
				}),
				o(386547, {	-- Suffusion Mold
					["cost"] = { { "i", 203683, 5 } },	-- 5x Ward of Fyrakk
					["coords"] = {
						{ 74.3, 72.2, OHNAHRAN_PLAINS },
						{ 55.4, 35.2, THE_AZURE_SPAN },
					},
					["g"] = {
						n(203709, {	-- Forgemaster Algrin
							i(203710),	-- Everburning Key
						}),
						n(201625, {	-- Forgemaster Kraglin
							i(203710),	-- Everburning Key
						}),
					},
				}),
			}),
			n(WORLD_QUESTS, sharedData({ ["isWorldQuest"] = true }, {
				q(74501, {	-- Suffusion Camp: Cinderwind
					["coord"] = { 75.1, 69.3, OHNAHRAN_PLAINS },
				}),
				q(75280, {	-- Suffusion Camp: Frostburn
					["coord"] = { 56.2, 27.3, THE_AZURE_SPAN },
				}),
			})),
			n(ZONE_DROPS, {
				i(203683, {	-- Ward of Fyrakk
					["cost"] = { { "i", 203430, 5 } },	-- 5x Ward of Igira
				}),
				i(203430),	-- Ward of Igira
			}),
		},
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	n(FYRAKK_ASSAULTS, {
		q(75448),	-- Ward of Ingira Elite
		q(75447),	-- Ward of Fyrakk Elite / Forgemaster 1st kill
		q(75157),	-- Completes with 'Suffusion Camp' (questID 75888) (spellID 411135)
	}),
})));