-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_MOP, n(REMIX_MOP, bubbleDown({ ["timeline"] = { ADDED_10_2_7, REMOVED_MOP_REMIX_END } }, {
	m(KRASARANG_WILDS, {
		["icon"] = 623769,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(19885),	-- Campaign: Krasarang Wilds [A] (automated)
				ach(19886),	-- Campaign: Krasarang Wilds [H] (automated)
				ach(19891),	-- Campaign: Landfall (automated)
				ach(19918, {	-- Dominance Offensive [H]
					["races"] = HORDE_ONLY,
				}),
				ach(19995),		-- Elusive Foes: Krasarang Wilds
				ach(19999),		-- Elusive Foes: Landfall
				ach(20028),		-- Explore Krasarang Wilds (automated)
				ach(19979, {		-- Hidden Treasures: Krasarang Wilds
					crit(65483, {	-- Saurok Stone Tablet
						["_quests"] = { 31408 },
					}),
				}),
				ach(19874, {	-- Krasarang Wilds
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19885,	-- Campaign: Krasarang Wilds [A]
						19886,	-- Campaign: Krasarang Wilds [H]
						19964,	-- Tour Krasarang Wilds
					}},
					["groups"] = {
						i(210334),	-- Chen Stormstout's Keg
					},
				}),
				ach(19879, {	-- Landfall
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19891,	-- Campaign: Landfall
						19918,	-- Dominance Offensive [H]
						19999,	-- Elusive Foes: Landfall
						19917,	-- Operation: Shieldwall [A]
					}},
					["groups"] = {
						cl(DEATHKNIGHT, {
							iensemble(217837, {	-- Ensemble: Webbed Soulforged Exoskeleton
								["classes"] = DEATHKNIGHT,
							}),
						}),
						cl(DEMONHUNTER, {
							iensemble(217842, {	-- Ensemble: Aldrachi Blasphemer's Flames
								["classes"] = DEMONHUNTER,
							}),
						}),
						cl(DRUID, {
							iensemble(217843, {	-- Ensemble: Ela'lothen's Vestment of Rebirth
								["classes"] = DRUID,
							}),
						}),
						cl(EVOKER, {
							iensemble(217835, {	-- Ensemble: Scales of the Gold Hoarder
								["classes"] = EVOKER,
							}),
						}),
						cl(HUNTER, {
							iensemble(217834, {	-- Ensemble: Dreadsquall Hunter's Camouflage
								["classes"] = HUNTER,
							}),
						}),
						cl(MAGE, {
							iensemble(217836, {	-- Ensemble: Sin'dorei Magister's Regalia
								["classes"] = MAGE,
							}),
						}),
						cl(MONK, {
							iensemble(217841, {	-- Ensemble: Shado-Pan Watcher Guise
								["classes"] = MONK,
							}),
						}),
						cl(PALADIN, {
							iensemble(217846, {	-- Ensemble: Plate of the Holy Avenger
								["classes"] = PALADIN,
							}),
						}),
						cl(PRIEST, {
							iensemble(217845, {	-- Ensemble: Silks of the Abyssal Cult
								["classes"] = PRIEST,
							}),
						}),
						cl(ROGUE, {
							iensemble(217844, {	-- Ensemble: Igneous Onyx Uniform
								["classes"] = ROGUE,
							}),
						}),
						cl(SHAMAN, {
							iensemble(217833, {	-- Ensemble: Imminence of Krag'wa's Disciple
								["classes"] = SHAMAN,
							}),
						}),
						cl(WARLOCK, {
							iensemble(217839, {	-- Ensemble: Jewels of Temptation's Call
								["classes"] = WARLOCK,
							}),
						}),
						cl(WARRIOR, {
							iensemble(217838, {	-- Ensemble: Fanatical Champion's Trophies
								["classes"] = WARRIOR,
							}),
						}),
					},
				}),
				ach(19917, {	-- Operation: Shieldwall [A]
					["races"] = ALLIANCE_ONLY,
				}),
				ach(19964, {	-- Tour Krasarang Wilds
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						19995,	-- Elusive Foes: Krasarang Wilds
						20028,	-- Explore Krasarang Wilds
						19979,	-- Hidden Treasures: Krasarang Wilds
					}},
				}),
			}),
			n(QUESTS, {
				q(80438, {	-- Aid the Horde [H]
					["sourceQuest"] = 32108,	-- Domination Point [H]
					["provider"] = { "n", 67939 },	-- General Nazgrim
					["coord"] = { 10.3, 53.7, KRASARANG_WILDS },
					["cost"] = { { "c", 738, 10 } },	-- 10x Lesser Charm of Good Fortune
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
				}),
				q(80439, {	-- Aid the Alliance [A]
					["sourceQuest"] = 32109,	-- Lion's Landing [A]
					["provider"] = { "n", 67940 },	-- Admiral Taylor
					["coord"] = { 89.5, 32.5, KRASARANG_WILDS },
					["cost"] = { { "c", 738, 10 } },	-- 10x Lesser Charm of Good Fortune
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
				}),
				q(80433, {	-- Aid the August Celestials
					["provider"] = { "n", 60506 },	-- Thelonius
					["coord"] = { 31.2, 63.4, KRASARANG_WILDS },
					["cost"] = { { "c", 738, 10 } },	-- 10x Lesser Charm of Good Fortune
					["repeatable"] = true,
				}),
				q(80444, {	-- Aid the Anglers
					["provider"] = { "n", 63721 },	-- Nat Pagle
					["coord"] = { 68.4, 43.4, KRASARANG_WILDS },
					["cost"] = { { "c", 738, 10 } },	-- 10x Lesser Charm of Good Fortune
					["repeatable"] = true,
				}),
			}),
			n(ZONE_REWARDS, {
				filter(CLOTH, {
					i(213680),	-- Scrollkeeper Crown
					i(213682),	-- Scrollkeeper Mantle
					i(213679),	-- Scrollkeeper Mitts
					i(213683),	-- Scrollkeeper Sash
					i(213678),	-- Scrollkeeper Slippers
					i(213681),	-- Scrollkeeper Trousers
					i(213677),	-- Scrollkeeper Vestment
					i(213684),	-- Scrollkeeper Wristwraps
				}),
				filter(LEATHER, {
					i(214069),	-- Thunderpaw Belt
					i(214074),	-- Thunderpaw Boots
					i(214068),	-- Thunderpaw Bracers
					i(214073),	-- Thunderpaw Gloves
					i(214072),	-- Thunderpaw Helm
					i(214071),	-- Thunderpaw Leggings
					i(214070),	-- Thunderpaw Shoulderpads
					i(214075),	-- Thunderpaw Tunic
				}),
				filter(MAIL, {
					i(214480),	-- Peakscaler Breastplate
					i(214481),	-- Peakscaler Footguards
					i(214484),	-- Peakscaler Girdle
					i(214483),	-- Peakscaler Grips
					i(214482),	-- Peakscaler Helmet
					i(214486),	-- Peakscaler Legwraps
					i(214485),	-- Peakscaler Mantle
					i(214479),	-- Peakscaler Wristguards
				}),
				filter(PLATE, {
					i(214778),	-- Steel Sentinel's Armguards
					i(214777),	-- Steel Sentinel's Chestguard
					i(214781),	-- Steel Sentinel's Grasp
					i(214779),	-- Steel Sentinel's Greatboots
					i(214784),	-- Steel Sentinel's Greaves
					i(214783),	-- Steel Sentinel's Shoulderguards
					i(214782),	-- Steel Sentinel's Waistguard
					i(214780),	-- Steel Sentinel's Warhelm
				}),
				n(WEAPONS, {
					i(215872),	-- Amberweaver's Spire (wowhead)
					i(215640),	-- Barbs of the Rikkitun (wowhead)
					i(215484),	-- Boggeo's Ceremonial Axe (wowhead)
					i(215858),	-- Diviner's Staff (wowhead)
					i(215742),	-- Faded Forest Crusher (wowhead)
					i(215560),	-- Faded Forest Launcher (wowhead)
					i(215865),	-- Fogspeaker Conduit (wowhead)
					i(215680),	-- Hope's Effigy (wowhead)
					i(215702),	-- Howling Rifle (wowhead)
					i(216417),	-- Hozen Shanker (wowhead)
					i(215937),	-- Imperial Wind Blade (wowhead)
					i(215947),	-- Inkgill Sword (wowhead)
					i(215740),	-- Jinyu Bonebreaker (wowhead)
					i(215677),	-- Jinyu's Light (wowhead)
					i(215643),	-- Klaxxi Pincers (wowhead)
					i(215532),	-- Mogu Warbow (wowhead)
					i(215868),	-- Monastic Staff (wowhead)
					i(215599),	-- Mountainscaler Slicer (wowhead)
					i(215749),	-- Ordo Basher (wowhead)
					i(216541),	-- Pandaren Barrier (wowhead)
					i(216439),	-- Pandaren Book (wowhead)
					i(216481),	-- Pandaren Greatsword (wowhead)
					i(216023),	-- Pandaren Hacker (wowhead)
					i(216444),	-- Pandaren Ritual Fan (wowhead)
					i(216422),	-- Pandaren Smasher (wowhead)
					i(215981),	-- Red Crane Greatsword (wowhead)
					i(215951),	-- Sha-Blighted Sword (wowhead)
					i(216613),	-- Seawatch Repeater (wowhead)
					i(210634),	-- Shield of the Wakener (wowhead)
					i(215802),	-- Spear of Feral Rage (wowhead)
					i(215602),	-- Spiritbound Stabber (wowhead)
					i(216573),	-- Spiritsage's Barrier (wowhead)
					i(216474),	-- Temple Trainee's Sword (wowhead)
					i(216571),	-- Tian Deflector (wowhead)
					i(216470),	-- Tian Monastery Spire (wowhead)
					i(215594),	-- Warbringer's Blade (wowhead)
					i(215510),	-- Warbringer's Chopper (wowhead)
					i(215489),	-- Wasteland Hacker (wowhead)
					i(215782),	-- Wasteland Maul (wowhead)
					i(215943),	-- Wasteland Scimitar (wowhead)
					i(216003),	-- Waterweaver's Wand (wowhead)
				}),
			}),
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_7, REMOVED_MOP_REMIX_END } }, {
	applyevent(EVENTS.REMIX_MOP, n(REMIX_MOP, {
		q(81666),	-- Triggered on first completion of questID 80444 Aid the Anglers
	})),
})));
