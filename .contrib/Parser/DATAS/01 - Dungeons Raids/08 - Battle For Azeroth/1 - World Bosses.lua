-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.BFA, {
	n(WORLD_BOSSES, {
		["isRaid"] = true,
		["modID"] = 14,
		["groups"] = {
			e(2199, {	-- Azurethos, The Winged Typhoon
				["isWeekly"] = true,
				["questID"] = 52163,	-- The Matriarch (WQ)
				["isRaid"] = true,
				["coord"] = { 62.0, 24.0, TIRAGARDE_SOUND },
				["maps"] = {	-- all Tiragarde Sound maps
					1171,	-- Gol Thovas (lower)
					1172,	-- Gol Thovas (upper)
					1184,	-- Winterchill Mine (lower)
					1185,	-- Winterchill Mine (upper)
				},
				["creatureID"] = 136385,	-- Azurethos, The Winged Typhoon
				["groups"] = bubbleDown({["modID"] = 3}, {
					i(161356),	-- Feathered Galeforce Crest
					i(161352),	-- Chestguard of Dire Winds
					i(161369),	-- Bindings of the Winged Typhoon
					i(161398),	-- Talonscored Azure Vambraces
					i(161350),	-- Windcaller's Down Handwraps
					i(161360),	-- Roost-Defender's Legguards
					i(161365),	-- Footpads of the Encircling Storm
					i(161363),	-- Sandals of Rustling Rage
					i(161377),	-- Azurethos' Singed Plumage
					i(161379),	-- Galecaller's Beak
					i(161378),	-- Plume of the Seaborne Avian
					i(168140, {	-- Ancient Blood Pigment
						["sourceQuest"] = 49882,	-- A Test of Quills (might require actually learning Recipe 256301)
					}),
				}),
			}),
			e(2210, {	-- Dunegorger Kraulok
				["isWeekly"] = true,
				["isWorldQuest"] = true,
				["questID"] = 52196,	-- Sandswept Bones (WQ)
				["isRaid"] = true,
				["coord"] = { 44.3, 55.5, VOLDUN },
				["lvl"] = { 50 },
				["maps"] = {	-- all Vol'dun maps
					1009,	-- Atul'Aman: The Blood Font
				},
				["creatureID"] = 138794,	-- Dunegorger Kraulok
				["groups"] = bubbleDown({["modID"] = 3}, {
					i(174842),	-- Mollie (MOUNT!)
					i(161404),	-- Hood of the Sinuous Devilsaur
					i(164385),	-- Desert Nomad's Wrap
					i(161400),	-- Raider's Shrouding Thobe
					i(161406),	-- Shrouded Sandscale Bracers
					i(161405),	-- Dunegorger's Grips
					i(161402),	-- Gloves of the Desert Assassin
					i(161399),	-- Cord of Flowing Sands
					i(161408),	-- Sandswept Legionnaire's Legplates
					i(161419),	-- Kraulok's Claw
					i(168140, {	-- Ancient Blood Pigment
						["sourceQuest"] = 49882,	-- A Test of Quills (might require actually learning Recipe 256301)
					}),
				}),
			}),
			e(2197, {	-- Hailstone Construct
				["isWeekly"] = true,
				["questID"] = 52157,	-- A Chilling Encounter (WQ)
				["isRaid"] = true,
				["coords"] = {
					{ 62.4, 69.1, DRUSTVAR },	-- east road
					{ 31.8, 66.9, DRUSTVAR },	-- west road
					{ 49.2, 74.6, DRUSTVAR },	-- actual boss
				},
				["creatureID"] = 140252,	-- Hailstone Construct
				["groups"] = bubbleDown({["modID"] = 3}, {
					i(161372),	-- Ice-Carved Shoulderplates
					i(161367),	-- Hailstone Hauberk
					i(161364),	-- Chill's End Wristguards
					i(161370),	-- Glacial Spike Gauntlets
					i(161368),	-- Freezing Tempest Waistguard
					i(164386),	-- Girdle of Biting Winds
					i(161362),	-- Frostbreath Leggings
					i(161366),	-- Ice Stalker Boots
					i(161361),	-- Ice-Rimed Slippers
					i(161380),	-- Drust-Runed Icicle
					i(161381),	-- Permafrost-Encrusted Heart
				}),
			}),
			e(2141, {	-- Ji'arak
				["isWeekly"] = true,
				["isWorldQuest"] = true,
				["questID"] = 52169,	-- The Matriarch (WQ)
				["isRaid"] = true,
				["coord"] = { 69.0, 31.0, ZULDAZAR },
				["lvl"] = { 50 },
				["maps"] = {	-- all Zuldazar maps
					ZANCHUL_COUNCIL_CHAMBERS,
					ZANCHUL_HALL_OF_THE_HIGH_PRIESTS,
					1176,	-- Breath of Pa'ku, middle level
					1177,	-- Breath Of Pa'ku,	bottom level
				},
				["creatureID"] = 132253,	-- Ji'arak
				["groups"] = bubbleDown({["modID"] = 3}, {
					i(161401),	-- Matriarch's Shadowveil
					i(164384),	-- Windswept Dinorider's Cape
					i(161409),	-- Stormcrash Chestguard
					i(161388),	-- Gloves of Enveloping Winds
					i(161403),	-- Avian Clutch Belt
					i(161394),	-- Hurricane Cinch
					i(161390),	-- Savage Terrorwing Leggings
					i(161407),	-- Windshear Leggings
					i(161371),	-- Galebreaker's Sabatons
					i(168140, {	-- Ancient Blood Pigment
						["sourceQuest"] = 49882,	-- A Test of Quills (might require actually learning Recipe 256301)
					}),
				}),
			}),
			e(2139, {	-- T'zane <The Soul Terror>
				["isWeekly"] = true,
				["isWorldQuest"] = true,
				["questID"] = 52181,	-- Smoke and Shadow (WQ)
				["isRaid"] = true,
				["coord"] = { 35.6, 33.6, NAZMIR },
				["lvl"] = { 50 },
				["creatureID"] = 132701,	-- T'zane <Tehe Soul Terror>
				["groups"] = bubbleDown({["modID"] = 3}, {
					i(161396),	-- Petrified Mask of the Afterlife
					i(161391),	-- Deathshambler's Shoulderpads
					i(161392),	-- Bindings of Eternal Fears
					i(161397),	-- Soulplank Vambraces
					i(161389),	-- Cinch of All-Consuming Death
					i(164383),	-- Death Devouring Girdle
					i(161393),	-- Legguards of the Barkbound Dead
					i(161387),	-- Wailing Terror Leggings
					i(161395),	-- Swampwalker's Soul-Treads
					i(161412),	-- Spiritbound Voodoo Burl
					i(161411),	-- T'zane's Barkspines
					i(168140, {	-- Ancient Blood Pigment
						["sourceQuest"] = 49882,	-- A Test of Quills (might require actually learning Recipe 256301)
					}),
				}),
			}),
			e(2362, {	-- Ulmath, the Soulbinder
				["isWeekly"] = true,
				["questID"] = 56057,
				["isRaid"] = true,
				["coord"] = { 84.2, 35.9, 1355 },
				["maps"] = {	-- all Nazjatar maps
					1499,	--
					1500,	-- Chitterspine Grotto
					1524,	-- Deepsea Slave Pen
					1528,	-- The Eternal Palace
				},
				["crs"] = {
					152736,	-- Guardian Tannin
					152729,	-- Moon Princess Liara
					152697,	-- Ulmath
				},
				["groups"] = bubbleDown({["modID"] = 3 }, {
					i(170089),	-- Liara's Spire
					i(170093),	-- Tyr'mar's Greatsword
					i(170091),	-- Willbinder's Halberd
					i(170090),	-- Merciless Pincher
					i(170095),	-- Moon Priestess' Baton
					i(170092),	-- Netherdancer's Knife
					i(170094),	-- Temple Guardian's Saber
					i(170088),	-- Ulmath's Soulseeker
					i(168603),	-- Cloak of Restless Spirits
					i(169317),	-- Enthraller's Bindstone
				}),
			}),
			e(2198, {	-- Warbringer Yenajz
				["isWeekly"] = true,
				["isWorldQuest"] = true,
				["questID"] = 52166,	-- The Faceless Herald (WQ)
				["isRaid"] = true,
				["coord"] = { 83.2, 49.6, STORMSONG_VALLEY },
				["lvl"] = { 50 },
				["maps"] = {	-- all Stormsong Valley maps
					1179,	-- Abyssal Melody
					1182,	-- Saltstone Mine
					1183,	-- Thornheart
				},
				["creatureID"] = 140163,	-- Warbringeer Yenajz
				["groups"] = bubbleDown({["modID"] = 3}, {
					i(161349),	-- Amice of the Rending Abyss
					i(161357),	-- Spaulders of the Enveloping Maw
					i(161351),	-- Wristwraps of Warped Reality
					i(161358),	-- Existence-Shattering Gauntlets
					i(161353),	-- Shadow-Wreathed Gloves
					i(161354),	-- Leggings of the Endless Void
					i(161355),	-- Yenajz's Chitinous Stompers
					i(161359),	-- Band of Intense Gravitation
					i(161376),	-- Prism of Dark Intensity
				}),
			}),
			e(2363, {	-- Wekemara
				["isWeekly"] = true,
				["questID"] = 56056,
				["isRaid"] = true,
				["coord"] = { 42.8, 77.9, 1355 },
				["maps"] = {	-- all Nazjatar maps
					1499,	--
					1500,	-- Chitterspine Grotto
					1524,	-- Deepsea Slave Pen
					1528,	-- The Eternal Palace
				},
				["creatureID"] = 152671,	-- Wekemara
				["groups"] = bubbleDown({["modID"] = 3}, {
					i(168340),	-- Naga Ritualist's Mantle
					i(168366),	-- Tidal Lurker's Greathelm
					i(168351),	-- Spitcharged Shoulderguards
					i(168358),	-- Chestguard of the Submerged
					i(169926),	-- Belt of Rising Guardians
					i(169927),	-- Deepcaller's Clasp
					i(169925),	-- Serpentskin Splashers
					i(169928),	-- Wekemara's Warboots
					i(169318),	-- Shockbiter's Fang
				}),
			}),
			ach(12587, {	-- Unbound Monstrosities
				crit(40529, {	-- Warbringer Yenajz
					["_quests"] = { 52166 },
				}),
				crit(40530, {	-- Hailstone Construct
					["_quests"] = { 52157 },
				}),
				crit(40531, {	-- T'zane
					["_quests"] = { 52181 },
				}),
				crit(40532, {	-- Ji'arak
					["_quests"] = { 52169 },
				}),
				crit(40533, {	-- Dunegorger Kraulok
					["_quests"] = { 52196 },
				}),
				crit(40534, {	-- Azurethos
					["_quests"] = { 52163 },
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	m(EASTERN_KINGDOMS, {
		m(ARATHI_HIGHLANDS, {
			n(WORLD_BOSSES, {
				q(53002),	-- Doom's Howl Kill ID
				q(52273),	-- Doom's Howl Bonus Roll
				q(53001),	-- The Lion's Roar Kill ID
				q(52274),	-- The Lion's Roar Bonus Roll
			}),
		}),
	}),
	m(KALIMDOR, {
		m(DARKSHORE, {
			n(WORLD_BOSSES, {
				q(54862),	-- Ivus the Decayed Kill ID
				q(54864),	-- Ivus the Decayed Bonus Roll
				q(54861),	-- Ivus the Forest Lord Kill ID
				q(54865),	-- Ivus the Forest Lord Bonus Roll
			}),
		}),
	}),
	m(KUL_TIRAS, {
		m(DRUSTVAR, {
			n(WORLD_BOSSES, {
				q(52999),	-- Hailstone Construct Kill ID
				q(52268),	-- Hailstone Construct Bonus Roll
			}),
		}),
		m(STORMSONG_VALLEY, {
			n(WORLD_BOSSES, {
				q(52995),	-- Warbringer Yenajz Kill ID
				q(52266),	-- Warbringer Yenajz Bonus Roll
			}),
		}),
		m(TIRAGARDE_SOUND, {
			n(WORLD_BOSSES, {
				q(52997),	-- Azurethos, The Winged Typhoon Kill ID
				q(52267),	-- Azurethos, The Winged Typhoon Bonus Roll
			}),
		}),
	m(NAZJATAR, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
		n(WORLD_BOSSES, {
			q(56058),	-- Ulmath, the Soulbinder Kill ID
			q(56900),	-- Ulmath, the Soulbinder Bonus Roll
			q(56055),	-- Wekemara Kill ID
			q(56899),	-- Wekemara Bonus Roll
		}),
	})),
	m(NZOTH_ASSAULT_ULDUM, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0 } }, {
		n(WORLD_BOSSES, {
			q(58510),	-- Vuk'laz the Earthbreaker first kill??
			q(58514),	-- Vuk'laz the Earthbreaker bonus roll
		}),
	}));
	m(NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0 } }, {
		n(WORLD_BOSSES, {
			q(58508),	-- Grand Empress Shek'zara first kill??
			q(58512),	-- Grand Empress Shek'zara bonus roll
			--q(58770),	-- Grand Empress Shek'zara bonus roll
		}),
	}));
	m(ZANDALAR, {
		m(NAZMIR, {
			n(WORLD_BOSSES, {
				q(52996),	-- T'zane Kill ID
				q(52263),	-- T'zane Bonus Roll
			}),
		}),
		m(VOLDUN, {
			n(WORLD_BOSSES, {
				q(53000),	-- Dunegorger Kraulok Kill ID
				q(52265),	-- Dunegorger Kraulok Bonus Roll
			}),
		}),
		m(ZULDAZAR, {
			n(WORLD_BOSSES, {
				q(52998),	-- Ji'arak Kill ID
				q(52264),	-- Ji'arak Bonus Roll
			})
		}),
	}),
	}),
})));
