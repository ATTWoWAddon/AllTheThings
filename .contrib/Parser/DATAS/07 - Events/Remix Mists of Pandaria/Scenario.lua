-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

local MAPS = {
	447,
	487,
	480,
	451,
	524,
	452,
	523,
	481,
	488,
	498,
	520,
	448,
	522,
	483,
	450,
}

local mapped = function(t)
	t.maps = MAPS
	return t
end

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_MOP, n(REMIX_MOP, bubbleDown({ ["timeline"] = { ADDED_10_2_7, REMOVED_MOP_REMIX_END } }, {
	n(SCENARIOS, {
		n(ACHIEVEMENTS, {
			ach(19881, {	-- Escalation
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					19934,	-- Battle on the High Seas [A]
					19936,	-- Battle on the High Seas [H]
					19938,	-- Theramore's Fall [A]
					19939,	-- Theramore's Fall [H]
					19940,	-- Blood in the Snow
					19942,	-- Dark Heart of Pandaria
					19944,	-- Secrets of Ragefire
					19958,	-- Raid Finder: Siege of Orgrimmar
				}},
				["groups"] = {
					i(208554),	-- Timerunner's Beacon
				},
			}),
			ach(20004, {	-- Heroic: Pandaria Scenarios
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					19945,	-- Heroic: Secrets of Ragefire
					19943,	-- Heroic: Dark Heart of Pandaria
					19941,	-- Heroic: Blood in the Snow
					19929,	-- Heroic: Crypt of Forgotten Kings
					19924,	-- Heroic: A Brewing Storm
					19937,	-- Heroic: Battle on the High Seas [H]
					19935,	-- Heroic: Battle on the High Seas [A]
				}},
				["groups"] = {
					i(208487),	-- Timerunner's Ring
				},
			}),
		}),
		mapped(n(ARMOR, {
			filter(CLOTH, {
				i(213657),	-- Brewmoon Crown
				i(213655),	-- Brewmoon Mantle
				i(213658),	-- Brewmoon Mitts
				i(213654),	-- Brewmoon Sash
				i(213659),	-- Brewmoon Slippers
				i(213656),	-- Brewmoon Trousers
				i(213660),	-- Brewmoon Vestment
				i(213653),	-- Brewmoon Wristwraps
			}),
			filter(LEATHER, {
				i(214053),	-- Brushstalker Belt
				i(214058),	-- Brushstalker Boots
				i(214052),	-- Brushstalker Bracers
				i(214057),	-- Brushstalker Gloves
				i(214056),	-- Brushstalker Helm
				i(214055),	-- Brushstalker Leggings
				i(214054),	-- Brushstalker Shoulderpads
				i(214059),	-- Brushstalker Tunic
				i(214047),	-- Tidesplitter Cap
				i(214050),	-- Tidesplitter Cinch
				i(214046),	-- Tidesplitter Handguards
				i(214044),	-- Tidesplitter Jerkin
				i(214049),	-- Tidesplitter Mantle
				i(214048),	-- Tidesplitter Pants
				i(214045),	-- Tidesplitter Treads
				i(214051),	-- Tidesplitter Wraps
			}),
			filter(MAIL, {
				i(214420),	-- Waterburst Breastplate
				i(214421),	-- Waterburst Footguards
				i(214424),	-- Waterburst Girdle
				i(214423),	-- Waterburst Grips
				i(214422),	-- Waterburst Helmet
				i(214426),	-- Waterburst Legwraps
				i(214425),	-- Waterburst Mantle
				i(214419),	-- Waterburst Wristguards
			}),
			filter(PLATE, {
				i(214759),	-- Swarmbreaker's Armguards
				i(214760),	-- Swarmbreaker's Chestguard
				i(214756),	-- Swarmbreaker's Grasp
				i(214758),	-- Swarmbreaker's Greatboots
				i(214753),	-- Swarmbreaker's Greaves
				i(214754),	-- Swarmbreaker's Shoulderguards
				i(214755),	-- Swarmbreaker's Waistguard
				i(214757),	-- Swarmbreaker's Warhelm
			}),
		})),
		mapped(d(DIFFICULTY.SCENARIO.NORMAL, bubbleDown({ ["modID"] = 0 }, {
			n(WEAPONS, {
				i(215492),	-- Axe of Iron Might
				i(215752),	-- Ced's Basher
				i(215607),	-- Ceremonial Spike (reported by Sanctuari)
				i(215880),	-- Darkstaff of Ruin
				i(215537),	-- Dawnwatcher's Warbow
				i(216007),	-- Deathspeaker Channel
				i(215610),	-- Dreadpriest's Dagger (wowhead)
				i(215785),	-- Fangcracker Maul
				i(215884),	-- Firedancer's Staff
				i(215606),	-- Firescribe Slicer (wowhead)
				i(215647),	-- Ka'eng, Fang of Shadow
				i(215706),	-- Klaxxi Ambershot
				i(215685),	-- Klaxxi Channeling Fork
				i(215614),	-- Klaxxi Slicer
				i(215756),	-- Klaxxi Smasher
				i(215876),	-- Mistdancer's Rod
				i(215985),	-- Satay's Greatsword
				i(216579),	-- Shield of the Devourer (wowhead)
				i(216583),	-- Shield of the Protectorate
				i(215953),	-- Siege Captain's Blade
				i(215808),	-- Yak-Herder's Longspear
			}),
		}))),
		mapped(d(DIFFICULTY.SCENARIO.HEROIC, bubbleDown({ ["modID"] = 0 }, {
			n(WEAPONS, {
				i(215615),	-- Amber Blade
				i(216584),	-- Barrier of the Protectorate
				i(215986),	-- Blade of Broken Chains
				i(215757),	-- Carapace Crusher
				i(215607),	-- Ceremonial Spike
				i(215877),	-- Cloudscorcher Staff (wowhead)
				i(215753),	-- Gao's Kegbreaker
				i(215881),	-- Gustspinner's Staff
				i(215786),	-- Lerah's Maul
				i(215611),	-- Lightdrinker Dagger
				i(216008),	-- Necromantic Channel (wowhead)
				i(215648),	-- Ner'onok's Katar
				i(215956),	-- Ook's Hozen Cutter
				i(215493),	-- Scalebreaker Battleaxe
				i(216580),	-- Skyrider's Shield
				i(215885),	-- Teachings of Shaohao
				i(215538),	-- Tempestuous Shortbow
				i(215707),	-- Yan-Zhu's Rifle
				i(215809),	-- Yaungol Warspear
			}),
		}))),
		-- Scenario Maps
		m(447, {	-- A Brewing Storm
			n(ACHIEVEMENTS, {
				ach(19893),	-- A Brewing Storm
				ach(19924),	-- Heroic: A Brewing Storm
			}),
		}),
		m(487, {	-- A Little Patience
			n(ACHIEVEMENTS, {
				ach(19931),	-- A Little Patience
			}),
		}),
		m(480, {	-- Arena of Annihilation
			n(ACHIEVEMENTS, {
				ach(19927),		-- Arena of Annihilation
			}),
		}),
		m(451, {	-- Assault on Zan'vess
			n(ACHIEVEMENTS, {
				ach(19930),	-- Assault on Zan'vess
			}),
		}),
		m(524, {	-- Battle on the High Seas
			n(ACHIEVEMENTS, {
				ach(19934, {	-- Battle on the High Seas [A]
					["races"] = ALLIANCE_ONLY,
				}),
				ach(19936, {	-- Battle on the High Seas [H]
					["races"] = HORDE_ONLY,
				}),
				ach(19935, {	-- Heroic: Battle on the High Seas [A]
					["races"] = ALLIANCE_ONLY,
				}),
				ach(19937, {	-- Heroic: Battle on the High Seas [H]
					["races"] = HORDE_ONLY,
				}),
			}),
		}),
		m(452, {	-- Brewmoon Festival
			n(ACHIEVEMENTS, {
				ach(19926),		-- Brewmoon Festival
			}),
		}),
		m(523, {	-- Blood in the Snow
			n(ACHIEVEMENTS, {
				ach(19940),	-- Blood in the Snow
				ach(19941),	-- Heroic: Blood in the Snow
			}),
		}),
		m(481, {	-- Crypt of Forgotten Kings
			["maps"] = { 482 },	-- Crypt of Forgotten Kings
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(19928),	-- Crypt of Forgotten Kings
					ach(19929),	-- Heroic: Crypt of Forgotten Kings
				}),
			},
		}),
		m(488, {	-- Dagger in the Dark
			["maps"] = { 489 },	-- Dagger in the Dark
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(19933),	-- Dagger in the Dark
				}),
			},
		}),
		m(498, {	-- Domination Point / Lion's Landing
			["maps"] = { 486 },	-- Lion's Landing
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(19932, {	-- Domination Point
						["races"] = HORDE_ONLY,
					}),
					ach(20500, {	-- Lion's Landing
						["races"] = ALLIANCE_ONLY,
					}),
				}),
			},
		}),
		m(520, {	-- Dark Heart of Pandaria
			["maps"] = { 521 },	-- Dark Heart of Pandaria
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(19942),	-- Dark Heart of Pandaria
					ach(19943),	-- Heroic: Dark Heart of Pandaria
				}),
			},
		}),
		m(448, {	-- Greenstone Village
			n(ACHIEVEMENTS, {
				ach(19923),	-- Greenstone Village
			}),
		}),
		m(522, {	-- The Secrets of Ragefire
			n(ACHIEVEMENTS, {
				ach(19944),	-- Secrets of Ragefire
				ach(19945),	-- Heroic: Secrets of Ragefire
			}),
		}),
		m(483, {	-- Theramore's Fall
			n(ACHIEVEMENTS, {
				ach(19938, {	-- Theramore's Fall [A]
					["races"] = ALLIANCE_ONLY,
				}),
				ach(19939, {	-- Theramore's Fall [H]
					["races"] = HORDE_ONLY,
				}),
			}),
			i(89196, {	-- Theramore Tabard
				["races"] = ALLIANCE_ONLY,
				["description"] = "Buyable from the Toy Vendor at any Infinite Bazar Location or granted to Alliance players on completion of the Theramore's Fall scenario at |cffFF0000exactly level 35|R. You can unequip your cloak if your experience bonus is too great."	-- Fixed on 3-June-2024
			}),
			i(89205, {	-- Mini Mana Bomb Toy (TOY!)
				["races"] = HORDE_ONLY,
				["description"] = "Buyable from the Toy Vendor at any Infinite Bazar Location or granted to Horde players on completion of the Theramore's Fall scenario at |cffFF0000exactly level 35|R. You can unequip your cloak if your experience bonus is too great."	-- Fixed on 3-June-2024
			}),
		}),
		m(450, {	-- Unga Ingoo
			n(ACHIEVEMENTS, {
				ach(19925),	-- Unga Ingoo
			}),
		}),
	}),
}))));
