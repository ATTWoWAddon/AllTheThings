-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
--[[root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, bubbleDown({ ["timeline"] = { ADDED_11_2_5, REMOVED_LEGION_REMIX_END } }, {
	m(BROKEN_SHORE, {
		["icon"] = 294481,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(20001),		-- Elusive Foes: Timeless Isle (automated)
				ach(19922),		-- Emperor Shaohao
				ach(19982, {	-- Hidden Treasures: Timeless Isle
					crit(65819, {	-- Flameheart Shawl
						["provider"] = { "o", 223537 },
					}),
					crit(65820, {	-- Riverspeaker's Trident
						["provider"] = { "o", 223538 },
					}),
					crit(65821, {	-- Cloudstrike Family Helm
						["provider"] = { "o", 222796 },
					}),
					crit(65822, {	-- Snowdrift Tiger Talons
						["provider"] = { "o", 223539 },
					}),
					crit(65823, {	-- Gleaming Treasure Chest
						["provider"] = { "o", 220901 },
					}),
					crit(65824, {	-- Rope-Bound Treasure Chest
						["provider"] = { "o", 220902 },
					}),
					crit(65825, {	-- Mist-Covered Treasure Chest
						["provider"] = { "o", 220908 },
					}),
					crit(65826, {	-- Sunken Treasure
						["provider"] = { "o", 220832 },
					}),
					crit(65827, {	-- Blackguard's Jetsam
						["provider"] = { "o", 220986 },
					}),
					crit(65828, {	-- Gleaming Treasure Satchel
						["provider"] = { "o", 221036 },
					}),
				}),
				ach(20016, {	-- Looking For Group: Timeless Isle
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20021,	-- Chi-ji, the Red Crane
						20022,	-- Yu'lon, the Jade Serpent
						20023,	-- Niuzao, the Black Ox
						20024,	-- Xuen, the White Tiger
						20025,	-- Ordos
					}},
				}),
				ach(20002),		-- Powerful Enemies: Timeless Isle (automated)
				ach(20003, {	-- Timeless Isle
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20016,	-- Looking For Group: Timeless Isle
						19970,	-- Tour Timeless Isle
						19922,	-- Emperor Shaohao
					}},
					["groups"] = {
						i(221818),	-- Astral Emperor's Serpentling (PET!)
					},
				}),
				ach(19970, {	-- Tour Timeless Isle
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						20001,	-- Elusive Foes: Timeless Isle
						19982,	-- Hidden Treasures: Timeless Isle
						20002,	-- Powerful Enemies: Timeless Isle
					}},
				}),
			}),
			n(QUESTS, {
				q(79432, {	-- It's About Time
					["provider"] = { "n", 216591 },	-- Eternus
					["coord"] = { 24.5, 52.2, TIMELESS_ISLE },
					["groups"] = {
						i(213631),	-- Empty Spool of Temporal Threads (QI!)
					},
				}),
				q(79433, {	-- Seeking Expert Advice
					["sourceQuests"] = { 79432 },	-- It's About Time
					["provider"] = { "n", 216591 },	-- Eternus
					["coord"] = { 24.5, 52.2, TIMELESS_ISLE },
				}),
				q(79434, {	-- Weave It To Me
					["sourceQuests"] = { 79433 },	-- Seeking Expert Advice
					["provider"] = { "n", 216594 },	-- Moratari
					["coord"] = { 25.7, 51.6, TIMELESS_ISLE },
					["groups"] = {
						i(213571),	-- Thread of Time (QI!)
					},
				}),
				q(79437, {	-- Knot My Problem
					["sourceQuests"] = { 79433 },	-- Seeking Expert Advice
					["provider"] = { "n", 216594 },	-- Moratari
					["coord"] = { 25.7, 51.6, TIMELESS_ISLE },
					["groups"] = {
						i(215110),	-- Chronostablizer (QI!)
					},
				}),
				q(79435, {	-- What's Hours Is yours
					["sourceQuests"] = {
						79437,	-- Knot My Problem
						79434,	-- Weave It To Me
					},
					["provider"] = { "n", 216594 },	-- Moratari
					["coord"] = { 25.7, 51.6, TIMELESS_ISLE },
					["groups"] = {
						i(210333, {	-- Cloak of Infinite Potential
							["bonusID"] = 10972,
						}),
						i(215438),	-- Chronobadge (QI!)
						i(215442),	-- Cloak of Infinite Potential (QI!)
					},
				}),
				q(80380, {	-- Cloak and Needle
					["sourceQuests"] = { 79435 },	-- What's Hours Is yours
					["provider"] = { "n", 216594 },	-- Moratari
					["coord"] = { 25.7, 51.6, TIMELESS_ISLE },
				}),
				q(79438, {	-- Goodbyes Are Hard When You Live Forever
					["sourceQuests"] = { 80380 },	-- Cloak and Needle
					["provider"] = { "n", 216594 },	-- Moratari
					["coord"] = { 25.7, 51.6, TIMELESS_ISLE },
				}),
				q(79440, {	-- Recalling the War
					["sourceQuests"] = { 79438 },	-- Goodbyes Are Hard When You Live Forever
					["provider"] = { "n", 218129 },	-- Moratari
					["coord"] = { 26.4, 54.3, TIMELESS_ISLE },
				}),
			}),
			n(VENDORS, {
				n(73306, {	-- Mistweaver Ku <Lost Treasures of Shaohao>
					["coord"] = { 42.6, 54.6, TIMELESS_ISLE },
					["groups"] = {
						i(219222, {	-- Time-Lost Artifact
							["cost"] = { { "c", 777, 7500 } },	-- 7,500x Timeless Coin
						}),
					},
				}),
			}),
			n(ZONE_REWARDS, {
				filter(CLOTH, {
					i(214000),	-- Amaranthine Amice
					i(214001),	-- Amaranthine Belt
					i(213998),	-- Amaranthine Cowl
					i(214002),	-- Amaranthine Cuffs
					i(213997),	-- Amaranthine Handwraps
					i(213999),	-- Amaranthine Pants
					i(213995),	-- Amaranthine Raiment
					i(213996),	-- Amaranthine Treads
					i(214007),	-- Crown of the Dynast
					i(214008),	-- Gloves of the Dynast
					i(214006),	-- Leggings of the Dynast
					i(214005),	-- Mantle of the Dynast
					i(214004),	-- Sash of the Dynastr
					i(214009),	-- Slippers of the Dynast
					-- i(220980),	-- Vest of the Dynast (does this drop? Gold 27.05.2024). Remove -- if it can drop
					i(214010),	-- Vestment of the Dynast
					i(214003),	-- Wristwraps of the Dynast
				}),
				filter(LEATHER, {
					i(214387),	-- Snowdrift Bindings
					i(214390),	-- Snowdrift Cover
					i(214389),	-- Snowdrift Footguards
					i(214391),	-- Snowdrift Grips
					i(214394),	-- Snowdrift Legguards
					i(214393),	-- Snowdrift Spaulders
					i(214388),	-- Snowdrift Vest
					i(214392),	-- Snowdrift Waistband
					i(214120),	-- Swampthresher Cap
					i(214118),	-- Swampthresher Cinch
					i(214119),	-- Swampthresher Handguards
					i(214122),	-- Swampthresher Jerkin
					i(214117),	-- Swampthresher Mantle
					i(214116),	-- Swampthresher Pants
					i(214121),	-- Swampthresher Treads
					i(214123),	-- Swampthresher Wraps
					i(214399),	-- Wildblood Cap
					i(214397),	-- Wildblood Cinch
					i(214398),	-- Wildblood Handguards
					i(214401),	-- Wildblood Jerkin
					i(214396),	-- Wildblood Mantle
					i(214395),	-- Wildblood Pants
					i(214400),	-- Wildblood Treads
					i(214402),	-- Wildblood Wraps
				}),
				filter(MAIL, {
					i(214714),	-- Stonefang Breastplate
					i(214715),	-- Stonefang Footguards
					i(214718),	-- Stonefang Girdle
					i(214717),	-- Stonefang Grips
					i(214716),	-- Stonefang Helmet
					i(214720),	-- Stonefang Legwraps
					i(214719),	-- Stonefang Mantle
					i(214713),	-- Stonefang Wristguards
					i(214723),	-- Crimsonscale Belt
					i(214726),	-- Crimsonscale Boots
					i(214728),	-- Crimsonscale Bracers
					i(214724),	-- Crimsonscale Gauntlets
					i(214727),	-- Crimsonscale Hauberk
					i(214725),	-- Crimsonscale Helm
					i(214721),	-- Crimsonscale Leggings
					i(214722),	-- Crimsonscale Spaulders
				}),
				filter(PLATE, {
					i(215055),	-- Everbright Bracers
					i(215052),	-- Everbright Breastplate
					i(215049),	-- Everbright Girdle
					i(215051),	-- Everbright Grasp
					i(215053),	-- Everbright Helm
					i(215054),	-- Everbright Legguards
					i(215050),	-- Everbright Pauldrons
					i(215056),	-- Everbright Sabatons
					i(215060),	-- Gatecrasher Battleplate
					i(215059),	-- Gatecrasher Gauntlets
					i(215057),	-- Gatecrasher Greatbelt
					i(215061),	-- Gatecrasher Greathelm
					i(215062),	-- Gatecrasher Legplates
					i(215058),	-- Gatecrasher Spaulders
					i(215063),	-- Gatecrasher Vambraces
					i(215064),	-- Gatecrasher Warboots
					i(214810),	-- Wallwatcher Bracers
					i(214809),	-- Wallwatcher Breastplate
					i(214813),	-- Wallwatcher Gauntlets
					i(214814),	-- Wallwatcher Girdle
					i(214812),	-- Wallwatcher Helm
					i(214816),	-- Wallwatcher Legguards
					i(214815),	-- Wallwatcher Pauldrons
					i(214811),	-- Wallwatcher Sabatons
				}),
				n(WEAPONS, {
					i(215644),	-- Amber Claw (wowhead)
					i(215873),	-- Amberweaver's Staff (wowhead)
					i(215746),	-- Bearheart's Basher (wowhead)
					i(216004),	-- Blazecaster's Wand (wowhead)
					i(215741),	-- Bloodseeker's Bonebreaker (wowhead)
					i(215793),	-- Bo-Ris, Spear of Night (wowhead)
					i(216595),	-- Bulwark of Twinned Despair (wowhead)
					i(215681),	-- Crane's Beak Effigy (wowhead)
					i(215948),	-- Darkhide Sword (wowhead)
					i(216569),	-- Deflector of Orbiss (wowhead)
					i(215908),	-- Do-tharak, the Foebreaker (wowhead)
					i(215862),	-- Engraved Spire (wowhead)
					i(216600),	-- Eyes of the Doomed (wowhead)
					i(216601),	-- Eyes of the Doomed (wowhead)
					i(215952),	-- Fear's Bite (wowhead)
					i(211151),	-- Fran's Repeater (wowhead)
					i(215970),	-- Greatsword of the Iron Legion (wowhead)
					i(215678),	-- Grummle Lantern (wowhead)
					i(215940),	-- Halcyon Blade (wowhead)
					i(215944),	-- Harmonious Scimitar (wowhead)
					i(215623),	-- Imperial Shortblade (wowhead)
					i(215861),	-- Instructor's Spire (wowhead)
					i(216535),	-- Ironwood Bulwark (wowhead)
					i(215511),	-- Jadestone Greataxe (wowhead)
					i(215772),	-- Jerthud, Hand of the Savior (wowhead)
					i(215897),	-- Jinyu Staff (wowhead)
					i(215486),	-- Jinyu Waraxe (wowhead)
					i(215982),	-- Marista Greatsword (wowhead)
					i(215549),	-- Miracoran, the Dissonant Chord (wowhead)
					i(215550),	-- Miracoran, the Dissonant Chord (wowhead)
					i(216540),	-- Mogu Lord's Shield (wowhead)
					i(215488),	-- Mountainscaler Hatchet (wowhead)
					i(215597),	-- Mushan Slicer (wowhead)
					i(215703),	-- Pandaren Rifle (wowhead)
					i(215619),	-- Pandaren Sai (wowhead)
					i(215893),	-- Pilgrim's Staff (wowhead)
					i(216530),	-- Protection of the Emperor (wowhead)
					i(215761),	-- Saurok Smasher (wowhead)
					i(215805),	-- Serpentguard Spear (wowhead)
					i(215603),	-- Sha-Warped Slicer (wowhead)
					i(210335),	-- Shado-Pan Dagger (wowhead)
					i(215534),	-- Shado-Pan Longbow (wowhead)
					i(215889),	-- Soulwood Spire (wowhead)
					i(215960),	-- Tian Monastery Scimitar (wowhead)
					i(215515),	-- Wallwatcher's Greataxe (wowhead)
					i(215745),	-- Wasteland Basher (wowhead)
					i(216576),	-- Wasteland Deflector (wowhead)
					i(215869),	-- Waterweaver's Staff (wowhead)
					i(215776),	-- Zeeg's Ancient Kegbreaker (wowhead)
				}),
			}),
		},
	}),
}))));--]]
