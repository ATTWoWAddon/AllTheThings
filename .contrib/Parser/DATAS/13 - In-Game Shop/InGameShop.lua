-------------------------------------
--     I N - G A M E   S H O P     --
-------------------------------------
-- #if AFTER 2.0.1
root(ROOTS.InGameShop, bubbleDown({ ["u"] = REAL_MONEY }, {
	-- #if AFTER 5.0.1.15662
	n(ACHIEVEMENTS, {
		ach(8917, {	-- Collector's Edition: Dread Hatchling
			["provider"] = { "i", 109014 },	-- Dread Hatchling
			["timeline"] = { ADDED_5_4_7, REMOVED_8_3_0, ADDED_10_1_0 },
		}),
		ach(8916, {	-- Collector's Edition: Dread Raven
			["provider"] = { "i", 109013 },	-- Dread Raven
			["timeline"] = { ADDED_5_4_7, REMOVED_8_3_0, ADDED_10_1_0 },
		}),
		ach(12230, {	-- Collector's Edition: Gilded Ravasaur
			["provider"] = { "i", 153540 },	-- Gilded Ravasaur
			["timeline"] = { ADDED_7_3_5, REMOVED_10_1_0 },	-- Removed 17th April 2023
			["races"] = HORDE_ONLY,
		}),
		ach(10320, {	-- Collector's Edition: Illidari Felstalker
			["provider"] = { "i", 128425 },	-- Illidari Felstalker
			["timeline"] = { ADDED_6_2_2, REMOVED_10_1_7 },	-- Removed Oct 31, 2023
		}),
		ach(6849, {	-- Collector's Edition: Imperial Quilen
			["provider"] = { "i", 85870 },	-- Imperial Quilen
			["timeline"] = { ADDED_5_0_4, REMOVED_5_4_7, ADDED_8_3_0 },
		}),
		ach(6848, {	-- Collector's Edition: Lucky Quilen Cub
			["provider"] = { "i", 85871 },	-- Lucky Quilen Cub
			["timeline"] = { ADDED_5_0_4, REMOVED_5_4_7, ADDED_8_3_0 },
		}),
		ach(10321, {	-- Collector's Edition: Nibbles
			["provider"] = { "i", 128426 },	-- Nibbles
			["timeline"] = { ADDED_6_2_2, REMOVED_10_1_7 },	-- Removed Oct 31, 2023
		}),
		ach(12229, {	-- Collector's Edition: Seabraid Stallion
			["provider"] = { "i", 153539 },	-- Seabraid Stallion
			["timeline"] = { ADDED_7_3_5, REMOVED_10_1_0 },	-- Removed 17th April 2023
			["races"] = ALLIANCE_ONLY,
		}),
		ach(12232, {	-- Collector's Edition: Tottle
			["provider"] = { "i", 153541 },	-- Tottle
			["timeline"] = { ADDED_7_3_5, REMOVED_10_1_7 },	-- Removed Sep 17th, 2023
		}),
		ach(14283, {	-- Heroic Edition: Ensorcelled Everwyrm
			["timeline"] = { ADDED_10_2_0 },
		}),
		ach(17314,	{	-- Heroic Edition: Tangled Dreamweaver
			["timeline"] = { ADDED_10_2_0 },
		}),
		ach(19029, {	-- Lil' Maggz
			["timeline"] = { ADDED_10_1_7, REMOVED_10_1_7 },	-- Removed Oct 31, 2023
		}),
	}),
	-- #endif
	filter(MOUNTS, {	-- AVAILABLE --
		i(238994, {	-- Archmage's Great Raven (MOUNT!)
			["timeline"] = { ADDED_11_1_5 },
		}),
		i(190636, {	-- Armored Siege Kodo (MOUNT!)
			["timeline"] = { ADDED_10_1_5 },
		}),
		-- #if ANYCLASSIC
		mount(440915, {	-- Auspicious Arborwyrm (MOUNT!)
			["timeline"] = { ADDED_3_4_3 },
		}),
		-- #else
		mount(418286, {	-- Auspicious Arborwyrm (MOUNT!)
			["timeline"] = { ADDED_10_2_0 },
		}),
		-- #endif
		i(219450, {	-- Charming Courier (MOUNT!)
			["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
		}),
		i(109013, {	-- Dread Raven (MOUNT!)
			["timeline"] = { ADDED_5_4_7, REMOVED_8_3_0, ADDED_10_1_0 },
		}),
		i(97989, {	-- Enchanted Fey Dragon (MOUNT!)
			["timeline"] = { ADDED_5_3_0 },
		}),
		mount(307932, {	-- Ensorcelled Everwyrm (MOUNT!)
			["timeline"] = { ADDED_10_2_0 },
		}),
		mount(457485, {	-- Grizzly Hills Packmaster (MOUNT!)
			["timeline"] = { ADDED_11_0_2 },
		}),
		-- #if NOT ANYCLASSIC
		i(78924, {	-- Heart of the Aspects (MOUNT!)
			["timeline"] = { ADDED_4_3_0 },
		}),
		-- #endif
		i(166774, {	-- Hogrus, Swine of Good Fortune (MOUNT!)
			["timeline"] = { ADDED_8_1_0 },
		}),
		i(85870, {	-- Imperial Quilen (MOUNT!)
			["timeline"] = { ADDED_8_3_0 },
		}),
		mount(369451, {	-- Jade, Bright Foreseer (MOUNT!)
			["timeline"] = { ADDED_10_0_2 },
		}),
		-- #if ANYCLASSIC
		i(192455, {	-- Kalu'ak Whalebone Glider (MOUNT!)
			["timeline"] = { ADDED_2_5_4_A },
		}),
		-- #endif
		mount(308087, {	-- Lucky Yun (MOUNT!)
			["timeline"] = { ADDED_9_0_2 },
		}),
		i(147901, {	-- Luminous Starseeker (MOUNT!)
			["timeline"] = { ADDED_7_3_0 },
		}),
		i(233285, {	-- Meeksi Teatuft (MOUNT!)
			["timeline"] = { ADDED_11_1_0 },
		}),
		i(122469, {	-- Mystic Runesaber (MOUNT!)
			["timeline"] = { ADDED_6_1_0 },
		}),
		i(190581, {	-- Nether-Gorged Greatwyrm (MOUNT!)
			["timeline"] = { ADDED_9_2_5 },
		}),
		i(238943, {	-- Prophet's Great Raven (MOUNT!)
			["timeline"] = { ADDED_11_1_5 },
		}),
		-- #if ANYCLASSIC
		i(184865, {	-- Reawakened Phase-Hunter (MOUNT!)
			["timeline"] = { ADDED_2_5_1 },
		}),
		-- #endif
		mount(347812, {	-- Sapphire Skyblazer (MOUNT!)
			["timeline"] = { ADDED_9_0_5 },
		}),
		i(156564, {	-- Shu-zen, the Divine Sentinel (MOUNT!)
			["timeline"] = { ADDED_8_0_1 },
		}),
		mount(308078, {	-- Squeakers, the Trickster (MOUNT!)
			["timeline"] = { ADDED_8_3_0 },
		}),
		mount(326390, {	-- Steamscale Incinerator (MOUNT!)
			["timeline"] = { ADDED_8_3_7 },
		}),
		mount(317177, {	-- Sunwarmed Furline (MOUNT!)
			["timeline"] = { ADDED_9_1_0 },
		}),
		i(166776, {	-- Sylverian Dreamer (MOUNT!)
			["timeline"] = { ADDED_8_2_0 },
		}),
		mount(359843, {	-- Tangled Dreamweaver (MOUNT!)
			["timeline"] = { ADDED_10_2_0 },
		}),
		mount(346136, {	-- Viridian Phase-Hunter (MOUNT!)
			["timeline"] = { ADDED_10_0_2 },	-- Not sure when exactly it got added to the shop.
		}),
		i(166775, {	-- Vulpine Familiar (MOUNT!)
			["timeline"] = { ADDED_8_1_0 },
		}),
		mount(359317, {	-- Wen Lo, the River's Edge (MOUNT!)
			["timeline"] = { ADDED_9_1_5 },
		}),
		i(206167, {	-- Wonderous Wavewhisker (MOUNT!)
			["timeline"] = { ADDED_10_1_0 },
		}),
	}),
	filter(MOUNTS, bubbleDown({ ["u"] = REMOVED_FROM_GAME, }, {	-- REMOVED --
		i(207964, {	-- Alabaster Stormtalon (MOUNT!)
			["timeline"] = { ADDED_8_2_5, REMOVED_10_1_0 },	-- Removed 17th April 2023
			["races"] = ALLIANCE_ONLY,
		}),
		i(207963, {	-- Alabaster Thunderwing (MOUNT!)
			["timeline"] = { ADDED_8_2_5, REMOVED_10_1_0 },	-- Removed 17th April 2023
			["races"] = HORDE_ONLY,
		}),
		i(95341, {	-- Armored Bloodwing (MOUNT!)
			["timeline"] = { ADDED_5_2_0, REMOVED_8_3_0 },
		}),
		i(190231, {	-- Ash'adar, Harbinger of Dawn (MOUNT!)
			["timeline"] = { ADDED_10_2_5, REMOVED_10_2_6 },	-- 1st March 2024 until 1st April 2024
		}),
		i(54811, {	-- Celestial Steed (MOUNT!)
			["timeline"] = { ADDED_3_3_3, REMOVED_10_0_2_LAUNCH },	-- Removed from shop on Jan 2 2023, will be offered sometimes in Trading Post
		}),
		-- #if ANYCLASSIC
		mount(466948, {	-- Chaos-Born Dreadwing (MOUNT!)
			["timeline"] = { ADDED_4_4_1, REMOVED_4_4_2 },
		}),
		-- #endif
		i(230200, {	-- Chaos-Forged Dreadwing (MOUNT!)
			["timeline"] = { ADDED_11_0_5, "removed 11.0.7.58238" },	-- Available through January 6, 2025
		}),
		-- #if ANYCLASSIC
		mount(466983, {	-- Chaos-Born Gryphon (MOUNT!)
			["timeline"] = { ADDED_4_4_1, REMOVED_4_4_2 },
		}),
		-- #endif
		i(230184, {	-- Chaos-Forged Gryphon (MOUNT!)
			["timeline"] = { ADDED_11_0_5, "removed 11.0.7.58238" },	-- Available through January 6, 2025
		}),
		-- #if ANYCLASSIC
		mount(466980, {	-- Chaos-Born Hippogryph (MOUNT!)
			["timeline"] = { ADDED_4_4_1, REMOVED_4_4_2 },
		}),
		-- #endif
		i(230185, {	-- Chaos-Forged Hippogryph (MOUNT!)
			["timeline"] = { ADDED_11_0_5, "removed 11.0.7.58238" },	-- Available through January 6, 2025
		}),
		-- #if ANYCLASSIC
		mount(466977, {	-- Chaos-Born Wind Rider (MOUNT!)
			["timeline"] = { ADDED_4_4_1, REMOVED_4_4_2 },
		}),
		-- #endif
		i(230201, {	-- Chaos-Forged Wind Rider (MOUNT!)
			["timeline"] = { ADDED_11_0_5, "removed 11.0.7.58238" },	-- Available through January 6, 2025
		}),
		i(208598, {	-- Eve's Ghastly Rider (MOUNT!)
			["timeline"] = { ADDED_11_0_2, REMOVED_11_0_5 },	-- 1st October 2024 until 5th November 2024
		}),
		i(112327, {	-- Grinning Reaver (MOUNT!)
			["timeline"] = { ADDED_6_0_2, REMOVED_8_3_0 },
		}),
		i(153540, {	-- Gilded Ravasaur (MOUNT!)
			["timeline"] = { ADDED_7_3_5, REMOVED_10_1_0 },	-- Removed 17th April 2023
			["races"] = HORDE_ONLY,
		}),
		i(107951, {	-- Iron Skyreaver (MOUNT!)
			["timeline"] = { ADDED_5_4_2, REMOVED_10_1_7 },	-- Removed Oct 31, 2023
		}),
		i(128425, {	-- Illidari Felstalker (MOUNT!)
			["timeline"] = { ADDED_6_2_2, REMOVED_10_1_7 },	-- Removed Oct 31, 2023
		}),
		i(233286, {	-- Meeksi Brewthief (MOUNT!)
			["timeline"] = { ADDED_11_1_0, "removed 11.1.5.60568" },	-- Removed April 28, 2025
		}),
		i(233284, {	-- Meeksi Rollingpaw (MOUNT!)
			["timeline"] = { ADDED_11_1_0, "removed 11.1.5.60568" },	-- Removed April 28, 2025
		}),
		i(233282, {	-- Meeksi Rufflefur (MOUNT!)
			["timeline"] = { ADDED_11_1_0, "removed 11.1.5.60568" },	-- Removed April 28, 2025
		}),
		i(233283, {	-- Meeksi Softpaw (MOUNT!)
			["timeline"] = { ADDED_11_1_0, "removed 11.1.5.60568" },	-- Removed April 28, 2025
		}),
		i(92724, {	-- Swift Windsteed (MOUNT!)
			["timeline"] = { ADDED_5_1_0, REMOVED_8_1_0 },
		}),
		i(153539, {	-- Seabraid Stallion (MOUNT!)
			["timeline"] = { ADDED_7_3_5, REMOVED_10_1_0 },	-- Removed 17th April 2023
			["races"] = ALLIANCE_ONLY,
		}),
		i(233019, {	-- Sky Witch's Sweeper (MOUNT!)
			["timeline"] = { ADDED_11_0_7, "removed 11.1.0.60037" },	-- Removed March 31, 2025
		}),
		i(212228, {	-- Soaring Sky Fox (MOUNT!)
			["timeline"] = { ADDED_11_0_5, "removed 11.1.0.60037" },	-- Removed March 31, 2025
		}),
		i(229418, {	-- Trader's Gilded Brutosaur (MOUNT!)
			["timeline"] = { ADDED_11_0_5, "removed 11.0.7.58238" },	-- Removed January 6, 2025
		}),
		i(160589, {	-- The Dreadwake (MOUNT!)
			["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_10_1_7 },	-- Removed Sep 17th, 2023
		}),
		i(212229, {	-- Twilight Sky Prowler (MOUNT!)
			["timeline"] = { ADDED_10_2_5, REMOVED_10_2_5 },	-- Removed Feb 29th, 2024
		}),
		i(233020, {	-- Twilight Witch's Sweeper (MOUNT!)
			["timeline"] = { ADDED_11_0_7, "removed 11.1.0.60037" },	-- Removed March 31, 2025
		}),
		i(76755, {	-- Tyrael's Charger (MOUNT!)
			["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_0_2_LAUNCH },	-- removed from the store again on Jan 2 2023
		}),
		i(112326,	-- Warforged Nightmare (MOUNT!)
			bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2, REMOVED_10_1_7 } }, {	-- Removed Oct 31, 2023
				i(112324),	-- Nightmarish Hitching Post (TOY!)
		})),
		i(69846, {	-- Winged Guardian (MOUNT!)
			["timeline"] = { ADDED_4_1_0, REMOVED_10_0_2_LAUNCH },	-- Removed Jan 2 2023
		}),
	})),
	filter(BATTLE_PETS, {	-- AVAILABLE --
		i(106240, {	-- Alterac Brew-Pup (PET!)
			["timeline"] = { ADDED_5_4_2 },
		}),
		pet(2779, {	-- Anima Wyrmling (PET!)
			["timeline"] = { ADDED_10_2_0 },
		}),
		i(118516, {	-- Argi (PET!)
			["timeline"] = { ADDED_6_0_2 },
		}),
		i(188837, {	-- Blinky (PET!)
			["timeline"] = { ADDED_9_1_5 },
		}),
		i(98550, {	-- Blossoming Ancient (PET!)
			["timeline"] = { ADDED_5_3_0 },
		}),
		i(128424, {	-- Brightpaw (PET!)
			["timeline"] = { ADDED_6_2_3 },
		}),
		--i(229366),	-- Brrrgl (PET!)	-- Under TWW Promos
		i(92707, {	-- Cinder Kitten (PET!)
			["timeline"] = { ADDED_5_1_0 },
		}),
		i(190608, {	-- Crushhoof
			["timeline"] = { ADDED_10_1_5 },
		}),
		pet(2780, {	-- Daisy (PET!)
			["timeline"] = { ADDED_9_0_5 },
		}),
		i(109014, {	-- Dread Hatchling (PET!)
			["timeline"] = { ADDED_5_4_7, REMOVED_8_3_0, ADDED_10_1_0 },
		}),
		i(208446, {	-- Fyrn (PET!)
			["timeline"] = { ADDED_11_1_5 },
		}),
		--i(229368),	-- Gill'el (PET!)	-- Under TWW Promos
		i(68385, {	-- Lil' Ragnaros (PET!)
			["timeline"] = { ADDED_4_0_3 },
		}),
		i(190586, {	-- Lil' Ursoc (PET!)
			["timeline"] = { ADDED_9_2_5 },
		}),
		i(85871, {	-- Lucky Quilen Cub (PET!)
			["timeline"] = { ADDED_8_3_0 },
		}),
		pet(3175, {	-- Murkastrasza (PET!)
			["timeline"] = { ADDED_10_2_0 },
		}),
		i(151234, {	-- Shadow (PET!)
			["timeline"] = { ADDED_7_3_0 },
		}),
		-- #if NOT ANYCLASSIC
		i(78916, {	-- Soul of the Aspects (PET!)
			["timeline"] = { ADDED_4_3_0 },
		}),
		-- #endif
		i(231310, {	-- Timbered Sky Snakelet (PET!)
			["timeline"] = { ADDED_11_0_7 },
		}),
		i(147900, {	-- Twilight (PET!)
			["timeline"] = { ADDED_7_3_0 },
		}),
		i(160587, {	-- Whomper (PET!)
			["timeline"] = { ADDED_8_0_1_LAUNCH },
		}),
		i(223498, {	-- Whoopy (PET!)
			["timeline"] = { ADDED_11_1_5 },
		}),
		cnONLY(i(233190, {	-- Wanderer Liu/Xiao Liu
			["timeline"] = { ADDED_11_0_7 },
		})),
	}),
	filter(BATTLE_PETS, bubbleDown({ ["u"] = REMOVED_FROM_GAME, }, {	-- REMOVED --
		pet(156, {	-- Bananas (PET!)
			["timeline"] = { ADDED_9_0_5, REMOVED_9_1_5 },
		}),
		i(160588, {	-- Cap'n Crackers (PET!)
			["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_10_1_7 },	-- Removed Sep 17th, 2023
		}),
		i(70099, {	-- Cenarion Hatchling (PET!)
			["timeline"] = { ADDED_4_1_0, REMOVED_8_3_0 },
		}),
		pet(2623, {	-- Dottie (PET!)
			["timeline"] = { ADDED_8_3_0, REMOVED_10_1_7 },	-- Removed Sep 17th, 2023
		}),
		i(69847, {	-- Guardian Cub (Original Version which was bound for 24h)
			["timeline"] = { ADDED_4_1_0, REMOVED_4_2_0 },
		}),
		i(72068, {	-- Guardian Cub (PET!)
			["timeline"] = { ADDED_4_2_0, REMOVED_5_4_7 },
		}),
		i(49662, {	-- Gryphon Hatchling (PET!)
			["description"] = "This item is available only if you purchase the Plush Toy and redeem the code.",
			["timeline"] = { ADDED_3_3_2, REMOVED_8_3_0 },
		}),
		i(213556, {	-- Hoplet (PET!)
			["timeline"] = { ADDED_10_2_5, REMOVED_10_2_5 },	-- Removed Feb 29th, 2024
		}),
		i(49693, {	-- Lil' K.T.
			["timeline"] = { ADDED_3_2_2, REMOVED_10_0_2_LAUNCH },	-- Removed Jan 2 2023
		}),
		i(208850, {	-- Lil' Maggz (PET!)
			["timeline"] = { ADDED_10_1_7, REMOVED_10_1_7 },	-- Removed Oct 31, 2023
		}),
		i(54847, {	-- Lil' XT (PET!)
			["timeline"] = { ADDED_3_3_3, REMOVED_8_3_0 },
		}),
		i(141893, {	-- Mischief (PET!)
			["timeline"] = { ADDED_7_1_0, REMOVED_10_1_7 },	-- Removed Oct 31, 2023
		}),
		i(68384, {	-- Moonkin Egg (You had to open the Egg on both faction sides before 6.0.1 to receive your Moonkin Pet). You get both now automatically
			["timeline"] = { ADDED_4_0_3, REMOVED_8_3_0 },
		}),
		i(68618, {	-- Moonkin Hatchling [A] (PET!)
			["timeline"] = { ADDED_4_0_3, REMOVED_8_3_0 },
			["races"] = ALLIANCE_ONLY,
		}),
		i(68619, {	-- Moonkin Hatchling [H] (PET!)
			["timeline"] = { ADDED_4_0_3, REMOVED_8_3_0 },
			["races"] = HORDE_ONLY,
		}),
		i(128426, {	-- Nibbles (PET!)
			["timeline"] = { ADDED_6_2_2, REMOVED_10_1_7 },	-- Removed Oct 31, 2023
		}),
		i(49665, {	-- Pandaren Monk
			["timeline"] = { ADDED_3_2_2, REMOVED_10_0_2_LAUNCH },	-- Removed Jan 2 2023
		}),
		i(231294, {	-- Reven (PET!)
			["timeline"] = { ADDED_11_0_5, "removed 11.0.7.58238" },	-- Removed January 7, 2025
		}),
		i(190601, {	-- Sunny
			["timeline"] = { ADDED_10_1_5, REMOVED_10_1_7 },	-- Removed Aug 29th, 2023
		}),
		i(153541, {	-- Tottle (PET!)
			["timeline"] = { ADDED_7_3_5,  REMOVED_10_1_7 },	-- Removed Sep 17th, 2023
		}),
		i(49663, {	-- Wind Rider Cub (PET!)
			["timeline"] = { ADDED_3_3_2, REMOVED_8_3_0 },
			["description"] = "This item is available only if you purchase the Plush Toy and redeem the code.",
		}),
	})),
	-- #if AFTER 5.4.0.17227
	filter(COSMETIC, {	-- AVAILABLE --
		------ Cosmic Weapons Set ------
		iensemble(208943, {	-- Arsenal: Cosmic Weapons Cache
			["timeline"] = { ADDED_11_0_0 },
		}),

		------ Celestial Observer Set ------
		i(184832, {	-- Celestial Observer's Astral Walkers
			["timeline"] = { ADDED_9_1_5 },
		}),
		i(184833, {	-- Celestial Observer's Buckle
			["timeline"] = { ADDED_9_1_5 },
		}),
		i(184829, {	-- Celestial Observer's Constellations
			["timeline"] = { ADDED_9_1_5 },
		}),
		i(184835, {	-- Celestial Observer's Gloves
			["timeline"] = { ADDED_9_1_5 },
		}),
		i(184836, {	-- Celestial Observer's Leggings
			["timeline"] = { ADDED_9_1_5 },
		}),
		i(184830, {	-- Celestial Observer's Robe
			["timeline"] = { ADDED_9_1_5 },
		}),
		i(184831, {	-- Celestial Observer's Skygazer
			["timeline"] = { ADDED_9_1_5 },
		}),
		i(184837, {	-- Celestial Observer's Starshroud
			["timeline"] = { ADDED_9_1_5 },
		}),
		i(184834, {	-- Celestial Observer's Wristwrap
			["timeline"] = { ADDED_9_1_5 },
		}),

		------ Dreadlord's Shadowsbane Set ------
		iensemble(212218, {	-- Ensemble: Dreadlord's Shadowsbane Regalia
			["timeline"] = { ADDED_10_2_5 },
		}),

		------ Dreadlord's Venombane Set ------
		iensemble(212219, {	-- Ensemble: Dreadlord's Venombane Regalia
			["timeline"] = { ADDED_10_2_5 },
		}),

		------ Feathered Archmage Set ------
		i(238998, {	-- Feathered Cowl of the Archmage
			["timeline"] = { ADDED_11_1_5 },
		}),
		i(238996, {	-- Feathered Drape of the Archmage
			["timeline"] = { ADDED_11_1_5 },
		}),
		i(239002, {	-- Feathered Mantle of the Archmage
			["timeline"] = { ADDED_11_1_5 },
		}),
		i(238999, {	-- Standard of the Archmage
			["timeline"] = { ADDED_11_1_5 },
		}),
		------ Feathered Prophet Set ------
		i(238997, {	-- Feathered Cowl of the Prophet
			["timeline"] = { ADDED_11_1_5 },
		}),
		i(238995, {	-- Feathered Drape of the Prophet
			["timeline"] = { ADDED_11_1_5 },
		}),
		i(239001, {	-- Feathered Mantle of the Prophet
			["timeline"] = { ADDED_11_1_5 },
		}),
		i(239000, {	-- Standard of the Prophet
			["timeline"] = { ADDED_11_1_5 },
		}),

		------ Fireplume Set ------
		i(191616, {	-- Fireplume Crest
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		i(191617, {	-- Fireplume Vestments
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		i(191618, {	-- Fireplume Coverts
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		i(191619, {	-- Fireplume Flarewraps
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		i(191620, {	-- Fireplume Plumage
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		i(191621, {	-- Fireplume Insignia
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		i(191622, {	-- Fireplume Talons
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		i(191627, {	-- Fireplume Blouse
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		i(191628, {	-- Fireplume Tailwinds
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		i(191774, {	-- Fireplume Claws
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		i(191775, {	-- Fireplume Shorts and Stockings
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		i(191776, {	-- Fireplume Coverts
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),
		i(191779, {	-- Fireplume Halter
			["timeline"] = { ADDED_10_0_2_LAUNCH },
		}),

		------ Green Snugglefin Murloc Romper Set ------
		iensemble(223485, {	-- Ensemble: Green Snugglefin Murloc Romper
			["timeline"] = { ADDED_10_2_7 },
		}),
		------ Murloc Shells Set ------
		i(188135, {	-- Frrgl's Shaking Shell
			["timeline"] = { ADDED_9_1_5 },
		}),
		i(184828, {	-- Grrgl's Spotted Shell
			["timeline"] = { ADDED_9_1_5 },
		}),
		i(188136, {	-- Mrrgl's Shiny Shell
			["timeline"] = { ADDED_9_1_5 },
		}),

		------ Sprite Darter Set ------
		i(172378, {	-- Sprite Darter's Bangle
			["timeline"] = { ADDED_8_3_0 },
		}),
		i(172373, {	-- Sprite Darter's Flutterers
			["timeline"] = { ADDED_8_3_0 },
		}),
		i(172376, {	-- Sprite Darter's Galoshes
			["timeline"] = { ADDED_8_3_0 },
		}),
		i(172379, {	-- Sprite Darter's Glovelettes
			["timeline"] = { ADDED_8_3_0 },
		}),
		i(172375, {	-- Sprite Darter's Mask
			["timeline"] = { ADDED_8_3_0 },
		}),
		i(172377, {	-- Sprite Darter's Sash
			["timeline"] = { ADDED_8_3_0 },
		}),
		i(172374, {	-- Sprite Darter's Shawl
			["timeline"] = { ADDED_8_3_0 },
		}),
		i(172380, {	-- Sprite Darter's Trousers
			["timeline"] = { ADDED_8_3_0 },
		}),

		------ Vestments of the Heavens Sets ------
		iensemble(233052, {	-- Ensemble: Radiant Vestments of the Heavens
			["timeline"] = { ADDED_11_1_0 },
		}),
		iensemble(233050, {	-- Ensemble: Shining Vestments of the Heavens
			["timeline"] = { ADDED_11_1_0 },
		}),

		------ Waveborne Diplomat's Regalia Set ------
		iensemble(204888, {	-- Ensemble: Waveborne Diplomat's Regalia
			["timeline"] = { ADDED_10_0_7 },
		}),

		------ Single Pieces ------
		i(188257, {	-- Azure Wings of Awakening
			["timeline"] = { ADDED_10_2_0 },
		}),
		i(188258, {	-- Bronze Wings of Awakening
			["timeline"] = { ADDED_10_2_0 },
		}),
		i(193610, {	-- Diadem of the Spell-Keeper
			["timeline"] = { ADDED_10_2_0 },
		}),
		i(188259, {	-- Emerald Wings of Awakening
			["timeline"] = { ADDED_10_2_0 },
		}),
		i(188260, {	-- Ruby Wings of Awakening
			["timeline"] = { ADDED_10_2_0 },
		}),
		i(188256, {	-- Obsidian Wings of Awakening
			["timeline"] = { ADDED_10_2_0 },
		}),
		filter(COSMETIC, bubbleDown({ ["u"] = REMOVED_FROM_GAME, }, {	-- REMOVED --
			------ Gladiator's Ragged Armor Set ------
			iensemble(217029, {	-- Ensemble: Gladiator's Ragged Armor
				["timeline"] = { ADDED_10_2_6, REMOVED_10_2_6 },
			}),
			------ Guardian Set ------
			i(190216, {	-- Feathered Cowl of the Guardian
				["timeline"] = { ADDED_10_1_0, REMOVED_10_1_0 },	-- Removed May 31, 2023
			}),
			i(190200, {	-- Feathered Drape of the Guardian
				["timeline"] = { ADDED_10_1_0, REMOVED_10_1_0 },	-- Removed May 31, 2023
			}),
			i(190220, {	-- Standard of the Guardian
				["timeline"] = { ADDED_10_1_0, REMOVED_10_1_0 },	-- Removed May 31, 2023
			}),

			------ High Scholar's Arcana Set ------
			iensemble(208412, {	-- High Scholar's Arcana
				["timeline"] = { ADDED_10_1_5, REMOVED_10_1_7 },	-- Removed Oct 31st, 2023
			}),

			------ Sky Witch's Attire Set ------
			iensemble(212221, {	-- Ensemble: Sky Witch's Attire
				["timeline"] = { ADDED_11_0_5, "removed 11.1.0.60037" },	-- Removed March 31, 2025
			}),

			------ Sky-Captain's Masquerade Attire Set ------
			iensemble(210079, {	-- Sky-Captain's Masquerade Attire
				["timeline"] = { ADDED_10_2_0, REMOVED_10_2_0 },	-- Removed Jan 1st, 2024
			}),

			------ Sprite Darter Set ------
			iensemble(200925, {	-- Ensemble: Solemn Watchman's Garb
				["timeline"] = { ADDED_10_1_5, REMOVED_10_1_7 },
			}),

			------ Twilight Witch's Attire Set ------
			iensemble(212222, {	-- Ensemble: Twilight Witch's Attire
				["timeline"] = { ADDED_10_2_5, REMOVED_10_2_5 },	-- Removed Feb 29th, 2024
			}),

			------ Single Pieces ------
			i(97213, {	-- Hood of Hungering Darkness
				["timeline"] = { ADDED_5_4_0, REMOVED_8_3_0 },
			}),
			i(95474, {	-- Jewel of the Firelord
				["timeline"] = { ADDED_5_4_0, REMOVED_8_3_0 },
			}),
			i(95475, {	-- Crown of Eternal Winter
				["timeline"] = { ADDED_5_4_0, REMOVED_8_3_0 },
			}),
			i(231290, {	-- Reven's Comfy Carrier
				["timeline"] = { ADDED_11_0_5, "removed 11.0.7.58238" },	-- Removed January 7, 2025
			}),
		})),
	}),
	-- #endif
	-- #if AFTER 8.1.5.29737
	filter(TOYS, {
		i(172179, {	-- Eternal Traveler's Hearthstone (TOY!)
			["timeline"] = { ADDED_10_2_0 },
		}),
		i(166778, {	-- Horde's Might Firework (TOY!)
			["timeline"] = { ADDED_8_1_5, REMOVED_10_1_0 },	-- Removed 17th April 2023
		}),
		i(166777, {	-- Lion's Pride Firework (TOY!)
			["timeline"] = { ADDED_8_1_5, REMOVED_10_1_0 },	-- Removed 17th April 2023
		}),
		i(210467, {	-- Magical Murkmorpher (TOY!)
			["timeline"] = { ADDED_10_2_5 }
		}),
		i(193588, {	-- Timewalker's Hearthstone (TOY!)
			["timeline"] = { ADDED_10_2_0 },
		}),
		i(166779, {	-- Transmorpher Beacon (TOY!)
			["timeline"] = { ADDED_8_1_5 },
		}),
	}),
	-- #endif
	-- #if AFTER 5.4.0.17153
	filter(CONSUMABLES, {
		-- #if BEFORE 6.0.2
		["description"] = "Only available in the Asian In-Game Shop.",
		-- #endif
		["groups"] = {
			i(103557, {	-- Enduring Elixir of Wisdom
				["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
			}),
			i(105911, {	-- Pouch of Enduring Wisdom
				["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
			}),
			i(105912, {	-- Pouch of Enduring Wisdom (5)
				["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 },
			}),
		},
	}),
	-- #endif
}));
-- #endif
