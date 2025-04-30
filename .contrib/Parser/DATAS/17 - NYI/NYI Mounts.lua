---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, filter(MOUNTS, {
	expansion(EXPANSION.CLASSIC, {
		-- 1.x.x
		n(P1xx, {
			mount(25863, {	-- Black Qiraji Battle Tank (MOUNT!)
				["displayID"] = 15676
			}),
			mount(26655, {	-- Black Qiraji Battle Tank (MOUNT!)
				["displayID"] = 15676
			}),
			mount(15780, {	-- Green Mechanostrider (MOUNT!)
				["displayID"] = 9475,
			}),
			mount(15781, {	-- Steel Mechanostrider (MOUNT!)
				["displayID"] = 9476,
			}),
			-- With MountID Attached
			i(8627, {		-- Black Nightsaber[WRATH+] / Panther (MOUNT!)
				["displayID"] = 9991
			}),
			i(5874, {		-- Black Ram (MOUNT!)
				["displayID"] = 2784
			}),
			i(1041, {		-- Black Wolf (MOUNT!)
				["displayID"] = 207
			}),
			i(5875, {		-- Blue Ram (MOUNT!)
				["displayID"] = 2787
			}),
			i(20221, {		-- Chromatic Mount [Item: Foror's Fabled Steed] (MOUNT!)
				["displayID"] = 18164,
			}),
			-- #if NOT SEASON_OF_DISCOVERY
			i(13325, {		-- Fluorescent Green Mechanostrider (MOUNT!)
				["displayID"] = 9475,
			}),
			-- #endif
			i(12327, {		-- Golden Sabercat (MOUNT!)
				["displayID"] = 9714,
			}),
			i(1134, {		-- Gray Wolf (MOUNT!)
				["displayID"] = 2320,
			}),
			i(8589, {		-- Ivory Raptor (MOUNT!)
				["displayID"] = 6471,
			}),
			i(8633, {		-- Leopard (MOUNT!)
				["displayID"] = 4805,
			}),
			i(23193, {		-- Naxxramas Deathcharger[WRATH+] / Skeletal Steed (MOUNT!)
				["displayID"] = 10718
			}),
			i(21736, {		-- Nether Drake[TBC+] / Summon Riding Gryphon (MOUNT!)
				["displayID"] = 16314,	-- During Vanilla: 15293
			}),
			i(8590, {		-- Obsidian Raptor (MOUNT!)
				["displayID"] = 6468,
			}),
			i(2413, {		-- Palamino Stallion [Item: Palomino] (MOUNT!)
				["displayID"] = 2408,
			}),
			i(12325, {		-- Primal Leopard (MOUNT!)
				["displayID"] = 4805,
			}),
			i(13323, {		-- Purple Mechanostrider (MOUNT!)
				["displayID"] = 10662,
			}),
			i(13324, {		-- Red and Blue Mechanostrider (MOUNT!)
				["displayID"] = 10664,
			}),
			i(14062, {		-- Riding Kodo [Item: Kodo Mount] (MOUNT!)
				["displayID"] = 11641,
			}),
			i(5663, {		-- Red Wolf (MOUNT!)
				["displayID"] = 2326,
			}),
			i(8583, {		-- Skeletal Horse (MOUNT!)
				["displayID"] = 5228,
			}),
			i(8628, {		-- Spotted Panther (MOUNT!)
				["displayID"] = 6447,
			}),
			i(18768, {		-- Swift Dawnsaber (MOUNT!)
				["displayID"] = 14329,
			}),
			i(12326, {		-- Tawny Sabercat (MOUNT!)
				["displayID"] = 6442,
			}),
			i(8630, {		-- Tiger [Item: Reins of the Bengal Tiger] (MOUNT!)
				["displayID"] = 6443,
			}),
			i(901, {		-- White Stallion [Item: Deptecated White Stallion Summoning (Mount)] (MOUNT!)
				["displayID"] = 2410,
			}),
			i(2415, {		-- White Stallion [Item: White Stallion] (MOUNT!)
				["displayID"] = 2410,
			}),
			i(1133, {		-- Winter Wolf (MOUNT!)
				["displayID"] = 1166,
			}),
			-- Without MountID Attached
			i(875, {		-- Brown Horse Summoning (MOUNT!)
				["displayID"] = 2404,
			}),
			i(16338, {		-- Knight-Lieutenant's Steed (MOUNT!)
				["displayID"] = 2404,
			}),
			i(16343, {		-- Blood Guard's Mount (MOUNT!)
				["displayID"] = 2328,
			}),
			i(16339, {		-- Commander's Steed (MOUNT!)
				["displayID"] = 2408,
			}),
			i(16344, {		-- zzUNUSEDLieutenant General's Mount (MOUNT!)
				["displayID"] = 1166
			}),
		}),
	}),
	expansion(EXPANSION.TBC, {
		-- 2.0.1
		expansion(EXPANSION.TBC, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_2_0_1 } }, {
			mount(33630, {	-- Blue Mechanostrider (MOUNT!)
				["displayID"] = 6569.
			}),
			mount(28828, {	-- Nether Drake (MOUNT!)
				["displayID"] = 16314,
			}),
			-- #if ANYCLASSIC
			i(33183, {	-- Old Magic Broom (MOUNT!)
				["timeline"] = { DELETED_4_2_2 },
			}),
			i(33182, {	-- Swift Flying Broom (MOUNT!)
				["timeline"] = { DELETED_4_2_2 },
			}),
			i(33184, {	-- Swift Magic Broom (MOUNT!)
				["timeline"] = { DELETED_4_2_2 },
			}),
			-- #endif
		})),

		-- 2.0.5
		expansion(EXPANSION.TBC, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_2_0_5 } }, {
			-- With MountID Attached
			i(25664, {	-- Old Crappy McWeakSauce [Item: Crappy's Bell] (MOUNT!)
				["displayID"] = 17701,
			}),
		})),

		-- 2.0.8
		expansion(EXPANSION.TBC, patch(0,8), bubbleDownSelf({ ["timeline"] = { CREATED_2_0_8 } }, {
			-- Without MountID Attached
			i(29225, {	-- zzoldSwift Warstrider (MOUNT!)
				["displayID"] = 20359,
			}),
		})),

		-- 2.1.0
		expansion(EXPANSION.TBC, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_2_1_0 } }, {
			mount(40212, {	-- Dragonmaw Nether Drake (MOUNT!)
				["displayID"] = 16314,
			}),
		})),

		-- 2.1.2
		expansion(EXPANSION.TBC, patch(1,2), bubbleDownSelf({ ["timeline"] = { CREATED_2_1_2 } }, {
			mount(39949, {	-- Mount (Test Anim) (MOUNT!)
				["displayID"] = 2404,
			}),
			mount(39910, {	-- Riding Clefthoof (MOUNT!)
				["displayID"] = 21075,
			}),
			mount(39450, {	-- Tallstrider (MOUNT!)
				["displayID"] = 6477,
			}),
		})),

		-- #if ANYCLASSIC
		-- 2.2.2
		expansion(EXPANSION.TBC, patch(2,2), bubbleDownSelf({ ["timeline"] = { CREATED_2_2_2 } }, {
			i(33176, {	-- Flying Broom (MOUNT!)
				["timeline"] = { DELETED_4_2_2 },
			}),
		})),
		-- #endif

		-- 2.2.3
		expansion(EXPANSION.TBC, patch(2,3), bubbleDownSelf({ ["timeline"] = { CREATED_2_2_3 } }, {
			-- With MountID Attached
			i(28482, {	-- Great Elite Elekk (MOUNT!)
				["displayID"] = 17906,
			}),
		})),

		-- 2.3.0
		expansion(EXPANSION.TBC, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_2_3_0 } }, {
			mount(42929, {	-- [DNT] Test Mount (MOUNT!)
				["displayID"] = 21268,
			}),
			-- With MountID Attached
			i(25596, {	-- Peep the Phoenix Mount (MOUNT!)
				["displayID"] = 17890,
			}),
		})),

		-- 2.4.0
		expansion(EXPANSION.TBC, patch(4,0), bubbleDownSelf({ ["timeline"] = { CREATED_2_4_0 } }, {
			mount(47037, {	-- Swift War Elekk (MOUNT!)
				["displayID"] = 23928,
			}),
		})),

		-- 2.4.1
		expansion(EXPANSION.TBC, patch(4,1), bubbleDownSelf({ ["timeline"] = { CREATED_2_4_1 } }, {
			-- With MountID Attached
			i(37827, {	-- Brewfest Riding Kodo (MOUNT!)
				["displayID"] = 24758,
			}),
		})),

		-- 2.4.3
		expansion(EXPANSION.TBC, patch(4,3), bubbleDownSelf({ ["timeline"] = { CREATED_2_4_3 } }, {
			mount(55164, {	-- Swift Spectral Gryphon (MOUNT!)
				["displayID"] = 26691,
			}),
			-- With MountID Attached
			i(37598, {	-- Swift Zhevra [Item: Swift Zhevra OLD] (MOUNT!)
				["displayID"] = 24693,
			}),
		})),

		-- 2.x.x
		n(P2xx, {
			mount(44317, {	-- Merciless Nether Drake (MOUNT!)
				["displayID"] = 20344,
			}),
			-- With MountID Attached
			i(28025, {	-- Video Mount (MOUNT!)
				["displayID"] = 6569,
			}),
			-- Without MountID Attached
			i(27819, {	-- Crazy Raptor 75 (MOUNT!)
				["displayID"] = 15289,
			}),
			i(27853, {	-- Crazy Raptor 150 (MOUNT!)
				["displayID"] = 15289,
			}),
		}),
	}),
	expansion(EXPANSION.WRATH, {
		-- 3.0.2
		expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
			mount(55293, {	-- Amani War Bear (MOUNT!)
				["displayID"] = 22464,
			}),
			mount(50869, {	-- Brewfest Kodo (MOUNT!)
				["displayID"] = 24757,
			}),
			mount(50870, {	-- Brewfest Ram (MOUNT!)
				["displayID"] = 22350,
			}),
			mount(43810, {	-- Frost Wyrm (MOUNT!)
				["displayID"] = 17255,
			}),
			mount(60136, {	-- Grand Caravan Mammoth [A] (MOUNT!)
				["displayID"] = 27237,
			}),
			mount(60140, {	-- Grand Caravan Mammoth [H] (MOUNT!)
				["displayID"] = 27238,
			}),
			mount(59804, {	-- Grand Ice Mammoth [A] (MOUNT!)
				["displayID"] = 27242,
			}),
			mount(59802, {	-- Grand Ice Mammoth [H] (MOUNT!)
				["displayID"] = 27239,
			}),
			mount(46980, {	-- Northrend Nerubian Mount (Test) (MOUNT!)
				["displayID"] = 23952,
			}),
			-- With MountID Attached
			i(43964, {	-- Black Polar Bear (MOUNT!)
				["displayID"] = 27659,
			}),
			i(38265, {	-- Black Warp Stalker (MOUNT!)
				["displayID"] = 19996,
			}),
			i(43963, {	-- Brown Polar Bear (MOUNT!)
				["displayID"] = 27660,
			}),
			i(38690, {	-- Frost Wyrm Mount (MOUNT!)
				["displayID"] = 25511,
			}),
			mount(58819, {	-- Swift Brown Steed (MOUNT!)
				["displayID"] = 14583,
			}),
			i(44555, {	-- Swift Mooncloth Carpet (MOUNT!)
				["displayID"] = 44555,
			}),
			i(44557, {	-- Swift Shadoweave Carpet (MOUNT!)
				["displayID"] = 44557,
			}),
			i(44556, {	-- Swift Spellfire Carpet (MOUNT!)
				["displayID"] = 44556,
			}),
		})),

		-- 3.0.8
		expansion(EXPANSION.WRATH, patch(0,8), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_8 } }, {
			mount(61983, {	-- Dan's Test Mount (MOUNT!)
				["displayID"] = 27659,
			}),
		})),

		-- 3.1.0
		expansion(EXPANSION.WRATH, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_1_0 } }, {
			mount(64992, {	-- Big Blizzard Bear [PH] (MOUNT!)
				["displayID"] = 27567,
			}),
			mount(64993, {	-- Big Blizzard Bear [PH] (MOUNT!)
				["displayID"] = 27567,
			}),
			-- With MountID Attached
			i(46101, {	-- Blue Skeletal Warhorse (MOUNT!)
				["displayID"] = 10718,
			}),
		})),

		-- 3.2.0
		expansion(EXPANSION.WRATH, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_2_0 } }, {
			mount(66907, {	-- Argent Warhorse (MOUNT!)
				["displayID"] = 28918,
			}),
			mount(66122, {	-- Magic Rooster (MOUNT!)
				["displayID"] = 29344,
			}),
			mount(66123, {	-- Magic Rooster (MOUNT!)
				["displayID"] = 29378,
			}),
			mount(66124, {	-- Magic Rooster (MOUNT!)
				["displayID"] = 29379,
			}),
		})),

		-- 3.3.3
		expansion(EXPANSION.WRATH, patch(3,3), bubbleDownSelf({ ["timeline"] = { CREATED_3_3_3 } }, {
			mount(75387, {	-- Tiny Mooncloth Carpet (MOUNT!)
				["displayID"] = 31837,
			}),
		})),

		-- #if ANYCLASSIC
		-- 3.4.0
		expansion(EXPANSION.WRATH, patch(4,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_4_0 } }, {
			mount(388516, {	-- Hao-Yue, River Foreseer (MOUNT!)
				-- ["displayID"] = ,
			}),
			i(198632, {	-- Big Battle Bear (MOUNT!)
				["displayID"] = 25335,
			}),
			i(198630, {	-- Blazing Hippogryph (MOUNT!)
				["displayID"] = 31803,
			}),
			i(198631, {	-- Magic Rooster (MOUNT!)
				["displayID"] = 29344,
			}),
			i(198633, {	-- Wooly White Rhino (MOUNT!)
				["displayID"] = 31721,
			}),
			i(198629, {	-- X-51 Nether-Rocket (MOUNT!)
				["displayID"] = 23656,
			}),
			i(198628, {	-- X-51 Nether-Rocket X-TREME (MOUNT!)
				["displayID"] = 23647,
			}),
		})),
		-- #endif
	}),
	expansion(EXPANSION.CATA, {
		-- 4.0.3
		expansion(EXPANSION.CATA, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_3 } }, {
			mount(68930, {	-- Brood of Onyxia (MOUNT!)
				["displayID"] = 30175,
			}),
			mount(89520, {	-- Goblin Mini Hotrod (MOUNT!)
				["displayID"] = 31988,
			}),
			mount(86579, {	-- Wooden Raft (MOUNT!)
				["displayID"] = 27818,
			}),
			i(57859, {	-- Twilight Phoenix [Item: Essence of the Underworld (DEPRECATED)] (MOUNT!)
				-- ["displayID"] = ,
			}),
		})),

		-- 4.3.2
		expansion(EXPANSION.CATA, patch(3,2), bubbleDownSelf({ ["timeline"] = { CREATED_4_3_2 } }, {
			mount(121805, {	-- RAF Mount III (MOUNT!)
				["displayID"] = 38260,
			}),
		})),
	}),
	expansion(EXPANSION.MOP, {
		-- 5.0.4
		expansion(EXPANSION.MOP, patch(0,4), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
			mount(128859, {	-- zzOldDepleted-Kyparium Rocket (MOUNT!)
				-- ["displayID"] = ,
			}),
			-- With MountID Attached
			i(87785, {	-- Albino Riding Crane (MOUNT!)
				["displayID"] = 43708,
			}),
			i(84728, {	-- Crimson Riding Crane (MOUNT!)
				["displayID"] = 42837,
			}),
			i(87794, {	-- Golden Water Strider (MOUNT!)
				["displayID"] = 43716,
			}),
			i(87793, {	-- Jade Water Strider (MOUNT!)
				["displayID"] = 43714,
			}),
			i(87792, {	-- Orange Water Strider (MOUNT!)
				["displayID"] = 43715,
			}),
			-- Without MountID Attached
			i(91016, {	-- Reins of the Great Red Dragon Turtle (MOUNT!)
				["displayID"] = 42352,
			}),
		})),

		-- 5.1.0
		expansion(EXPANSION.MOP, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_1_0 } }, {
			mount(134854, {	-- Cloud Mount (MOUNT!)
				["displayID"] = 46799,
			}),
		})),

		-- 5.4.0
		expansion(EXPANSION.MOP, patch(4,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_4_0 } }, {
			-- With MountID Attached
			i(104011, {	-- Stormcrow (MOUNT!)
				["displayID"] = 51323,
			}),
		})),

		-- #if ANYCLASSIC
		-- 5.5.0
		expansion(EXPANSION.MOP, patch(5,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_5_0 } }, {
			mount(1224647, {	-- Meeksi Brewrobber (MOUNT!)
				["displayID"] = 124513,
			}),
			mount(1224643, {	-- Meeksi Gentlepaw (MOUNT!)
				["displayID"] = 124510,
			}),
			mount(1224645, {	-- Meeksi Rufflemane (MOUNT!)
				["displayID"] = 124509,
			}),
			mount(1224596, {	-- Meeksi Teapuff (MOUNT!)
				["displayID"] = 124512,
			}),
			mount(1224646, {	-- Meeksi Wanderpaw (MOUNT!)
				["displayID"] = 124511,
			}),
		})),
		-- #endif
	}),
	expansion(EXPANSION.WOD, {
		-- 6.0.2
		expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
			mount(150926, {	-- Draenor Chimera (MOUNT!)
				["displayID"] = 52405,
			}),
			-- With MountID Attached
			i(116657, {	-- Ancient Leatherhide (MOUNT!)
				["displayID"] = 52373,
			}),
		})),

		-- 6.2.0
		expansion(EXPANSION.WOD, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_6_2_0 } }, {
			-- Without MountID Attached
			i(128480, {	-- Bristling Hellboar (MOUNT!)
				["displayID"] = 64726,
			}),
		})),

		-- 6.2.1
		expansion(EXPANSION.WOD, patch(2,1), bubbleDownSelf({ ["timeline"] = { CREATED_6_2_2 } }, {
			mount(194046, {	-- Swift Spectral Rylak (MOUNT!)
				["displayID"] = 65845,
			}),
		})),
	}),
	expansion(EXPANSION.LEGION, {
		-- 7.0.3
		expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
			-- With MountID Attached
			i(137615, {	-- Flarecore Infernal (MOUNT!)
				["displayID"] = 70127,
			}),
			-- Without MountID Attached
			i(138386, {	-- Fel Bat (Test) (MOUNT!)
				["displayID"] = 68250,
			}),
			i(129744, {	-- Iron Warhorse (MOUNT!)
				["displayID"] = 48946,
			}),
		})),

		-- 7.2.0
		expansion(EXPANSION.LEGION, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_2_0 } }, {
			mount(239363, {	-- Swift Spectral Hippogryph (MOUNT!)
				["displayID"] = 75637,
			}),
			-- Without MountID Attached
			i(143638),	-- Archdruid's Lunarwing Form (MOUNT!) [Item Never Available]
			i(142225),	-- Ban-lu, Grandmaster's Companion (MOUNT!) [Item Never Available]
			i(142232),	-- Battlelord's Bloodthirsty War Wyrm (MOUNT!) [Item Never Available]
			i(142231),	-- Deathlord's Vilebrood Vanquisher (MOUNT!) [Item Never Available]
			i(143489),	-- Farseer's Raging Tempest (MOUNT!) [Item Never Available]
			i(142224),	-- High Priest's Lightsworn Seeker (MOUNT!) [Item Never Available]
			i(143502),	-- Highlord's Golden Charger (MOUNT!) [Item Never Available]
			i(142227),	-- Huntmaster's Loyal Wolfhawk (MOUNT!) [Item Never Available]
			i(143752, {	-- Mag'har Direwolf (MOUNT!)
				["displayID"] = 84468,
			}),
			i(143493),	-- Shadowblade's Murderous Omen (MOUNT!) [Item Never Available]
		})),
	}),
	expansion(EXPANSION.BFA, {
		-- 8.0.1
		expansion(EXPANSION.BFA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_8_0_1 } }, {
			mount(261963, {		-- Ebon Krolusk (MOUNT!)
				["displayID"] = 75600,
			}),
			mount(237285, {		-- Hyena Mount White (PH) (MOUNT!)
				["displayID"] = 75325,
			}),
			mount(260176, {		-- Kul Tiras Horse (PH) (MOUNT!)
				["displayID"] = 82150,
			}),
			mount(256121, {		-- PH Goblin Hovercraft (Blue) (MOUNT!)
				["displayID"] = 80510,
			}),
			mount(256125, {		-- PH Goblin Hovercraft (Green) (MOUNT!)
				["displayID"] = 80511,
			}),
			mount(256124, {		-- PH Goblin Hovercraft (Red) (MOUNT!)
				["displayID"] = 80512,
			}),
			-- With MountID Attached
			i(156885, {	-- Gold Gladiator's Proto-Drake (MOUNT!)
				["displayID"] = 82805,
			}),
			i(156883, {	-- Green Gladiator's Proto-Drake (MOUNT!)
				["displayID"] = 82806,
			}),
			i(156882, {	-- Pale Gladiator's Proto-Drake (MOUNT!)
				["displayID"] = 82807,
			}),
			i(163063, {	-- Spectral Phoenix (MOUNT!)
				["displayID"] = 87701,
			}),
			-- Without MountID Attached
			i(163188, {	-- Surf Jelly (MOUNT!)
				-- ["displayID"] = ,
			}),
		})),

		-- 8.1.0
		expansion(EXPANSION.BFA, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_1_0 } }, {
			-- Without MountID Attached
			i(166417, {	-- Reins of the Onyx War Hyena (MOUNT!)
				-- ["displayID"] = ,
			}),
		})),

		-- 8.2.0
		expansion(EXPANSION.BFA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_8_2_0 } }, {
			mount(301841, {	-- Kua'fon (MOUNT!)
				["displayID"] = 89375,
			}),
			mount(302796, {	-- Swift Spectral Armored Gryphon (MOUNT!)
				["displayID"] = 92403,
			}),
			mount(302794, {	-- Swift Spectral Fathom Ray (MOUNT!)
				["displayID"] = 92401,
			}),
			mount(302795, {	-- Swift Spectral Magnetocraft (MOUNT!)
				["displayID"] = 92732,
			}),
			mount(302797, {	-- Swift Spectral Pterrordax (MOUNT!)
				["displayID"] = 92078,
			}),
			-- Without MountID Attached
			i(168673, {	-- Keys to the Silver Mono-Wheel (No mount in yet) (MOUNT!)
				-- ["displayID"] = ,
			}),
		})),
	}),
	expansion(EXPANSION.SL, {
		-- 9.0.1
		expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
			mount(312772, {	-- Gilded Prowler (MOUNT!)
				["displayID"] = 93771,
			}),
			mount(332257, {	-- Gorm (Yellow) (MOUNT!)
				["displayID"] = 94349,
			}),
			mount(332908, {	-- PH Devourer Mite (Green) (MOUNT!)
				["displayID"] = 94354,
			}),
			mount(312758, {	-- PH Epic Phalynx (MOUNT!)
				["displayID"] = 94338,
			}),
			mount(312756, {	-- PH Phalynx (MOUNT!)
				["displayID"] = 94334,
			}),
			-- With MountID Attached
			i(182083, {	-- Bonecleaver's Skullboar (MOUNT!)
				["displayID"] = 96454,
			}),
			i(181817, {	-- Deathbringer's Flayedwing (MOUNT!)
				["displayID"] = 95142,
			}),
			-- Without MountID Attached
			i(184035, {	-- Silessa's Harness (MOUNT!)
				-- ["displayID"] = ,
			}),
		})),

		-- 9.0.5
		expansion(EXPANSION.SL, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_5 } }, {
			mount(347813, {	-- Fireplume Phoenix (MOUNT!)
				["displayID"] = 100428,
			}),
		})),

		-- 9.1.0
		expansion(EXPANSION.SL, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_0 } }, {
			-- With MountID Attached
			i(186639, {	-- Pilfered Gearglider (MOUNT!)
				["displayID"] = 100052,
			}),
			i(186640, {	-- Silver Gearglider (MOUNT!)
				["displayID"] = 100053,
			}),
			i(186491, {	-- Spring Wilderling (MOUNT!)
				["displayID"] = 101004,
			}),
			-- Without MountID Attached
			i(187412, {	-- Shardhide Ka-Sha (MOUNT!)
				-- ["displayID"] = ,
			}),
		})),

		-- 9.1.5
		expansion(EXPANSION.SL, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_9_1_5 } }, {
			mount(350529, {	-- NAK's Test Mount [DNT] (MOUNT!)
				["displayID"] = 102040,
			}),
		})),

		-- 9.2.0
		expansion(EXPANSION.SL, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_9_2_0 } }, {
			mount(356802, {	-- Holy Lightstrider (MOUNT!)
				["displayID"] = 101577,
			}),
		})),

		-- 9.2.5
		expansion(EXPANSION.SL, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_9_2_5 } }, {
			mount(367190, {	-- [DND] Test Mount JZB (MOUNT!)
				["displayID"] = 88719,
			}),
		})),
	}),
	expansion(EXPANSION.DF, {
		-- 10.0.0
		expansion(EXPANSION.DF, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
			mount(371571, {	-- Dragon Isles Drake Model Test (MOUNT!)
				["displayID"] = 102924,
			}),
			mount(376909, {	-- [PH] Blue Armored River Otter (MOUNT!)
				["displayID"] = 102079,
			}),
			mount(374181, {	-- [PH] Mammoth V2 Blue (MOUNT!)
				["displayID"] = 100961,
			}),
			mount(387948, {	-- [PH] Wind Proto-Drake (MOUNT!)
				["displayID"] = 109120,
			}),
			mount(351404, {	-- PH Mammoth V2 Lava (MOUNT!)
				["displayID"] = 100964,
			}),
			mount(385767, {	-- PH White Slyvern (MOUNT!)
				["displayID"] = 102150,
			}),
			mount(385771, {	-- PH Yellow Slyvern (MOUNT!)
				["displayID"] = 102151,
			}),
			mount(372995, {	-- Swift Spectral Drake (MOUNT!)
				["displayID"] = 107207,
			}),
			-- With MountID Attached
			i(194722, {	-- Carrier Yeti (MOUNT!)
				["displayID"] = 107944,
			}),
			i(192804, {	-- Restless Hornstrider (MOUNT!)
				["displayID"] = 101161,
			}),
			i(198821, {	-- Divine Kiss of Ohn'ahra (MOUNT!)
				["displayID"] = 110505,
			}),
			i(198823, {	-- [PH] Brown Wind Eagle (MOUNT!)
				["displayID"] = 108742,
			}),
			i(192787, {	-- [PH] Mammoth V2 Dark (MOUNT!)
				["displayID"] = 100957,
			}),
			i(192771, {	-- [PH] Water Salamander Blue (MOUNT!)
				["displayID"] = 101173,
			}),
			i(192773, {	-- [PH] Water Salamander Orange (MOUNT!)
				["displayID"] = 101166,
			}),
			i(192748, {	-- PH Moose Bull Brown (MOUNT!)
				["displayID"] = 100691,
			}),
			i(192781, {	-- PH Lava Slug Blue (MOUNT!)
				["displayID"] = 108841,
			}),
			i(192778, {	-- PH Lava Slug Orange (MOUNT!)
				["displayID"] = 108836,
			}),
			i(192780, {	-- PH Lava Slug Orange [Item: [PH] Lava Snail Orange] (MOUNT!)
				["displayID"] = 108836,
			}),
			i(192782, {	-- PH Lava Slug Yellow (MOUNT!)
				["displayID"] = 108840,
			}),
			i(192802, {	-- PH Primal Tallstrider Black (MOUNT!)
				["displayID"] = 101159,
			}),
			i(192803, {	-- PH Primal Tallstrider Red (MOUNT!)
				["displayID"] = 101162,
			}),
			i(192801, {	-- PH Primal Tallstrider White (MOUNT!)
				["displayID"] = 101163,
			}),
			i(192793, {	-- PH Thunder Lizard Black (MOUNT!)
				["displayID"] = 100969,
			}),
			i(192794, {	-- PH Thunder Lizard Blue (MOUNT!)
				["displayID"] = 100968,
			}),
			-- Without MountID Attached
			i(194106, {	-- Highland Drake (MOUNT!)
				--["displayID"] = ,
			}),
			i(192770, {	-- Noble Elderhorn (MOUNT!)
				--["displayID"] = ,
			}),
			i(192789, {	-- [PH] Mammoth V2 Gray (MOUNT!)
				["displayID"] = 100959,
			}),
		})),

		-- 10.0.5
		expansion(EXPANSION.DF, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_5 } }, {
			mount(369480, {	-- Cerulean Marsh Hopper
				["displayID"] = 105766,
			}),
			i(203226, {	-- Stormfused Salamanther (MOUNT!)
				-- ["displayID"] =
			}),
		})),

		-- 10.2.0
		expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_0 } }, {
			-- With MountID Attached
			i(210143, {	-- [PH] White-Furred Bakar (MOUNT!)
				["displayID"] = 111729,
			}),
			i(210144, {	-- [PH] Yellow-Furred Spiky Bakar (MOUNT!)
				["displayID"] = 111730,
			}),
			i(210145, {	-- [PH] YellowBlack-Furred Bakar (MOUNT!)
				["displayID"] = 111731,
			}),
			i(211075, {	-- Deathbringer's Shadowcycle (MOUNT!)
				["displayID"] = 114788,
			}),
			i(211086, {	-- Jeweled Jade Scarab (MOUNT!)
				["displayID"] = 114744,
			}),
			i(211085, {	-- Jeweled Sapphire Scarab (MOUNT!)
				["displayID"] = 114737,
			}),
			-- Without MountID Attached
			i(210140, {	-- [PH] Black-Furred Bakar (MOUNT!)
				-- ["displayID"] = ,
			}),
		})),

		-- 10.2.5
		expansion(EXPANSION.DF, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_5 } }, {
			i(212632, {	-- Starry Twilight Peafowl (MOUNT!)
				-- ["displayID"] = ,
			}),
			-- Without MountID Attached
			i(211486, {	-- Winding Slitherdrake (MOUNT!)
				-- ["displayID"] = ,
			}),
		})),

		-- 10.2.7
		expansion(EXPANSION.DF, patch(2,7), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_7 } }, {
			-- With MountID Attached
			i(223470, {	-- [PH] Alliance Wolf Mount Red (MOUNT!)
				["displayID"] = 119662,
			}),
			i(223282, {	-- [PH] Blue Old God Fish Mount (MOUNT!)
				["displayID"] = 119505,
			}),
			i(221270, {	-- [PH] Goblin Surfboard (MOUNT!)
				["displayID"] = 119192,
			}),
			i(223460, {	-- [PH] Nightsaber Horde Mount White (MOUNT!)
				["displayID"] = 119658,
			}),
			i(223284, {	-- Underlight Shorestalker (MOUNT!)
				["displayID"] = 119506,
			}),
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.0
		expansion(EXPANSION.TWW, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
			mount(405623, {	-- Armadillo Roller
				["displayID"] = 91633,
			}),
			-- With MountID attached
			i(223570, {	-- Ebonhide Ramolith (MOUNT!)
				["displayID"] = 117966,
			}),
			i(226044, {	-- Plunderlord's Weathered Crocolisk (MOUNT!) [Trading Post?]
				["displayID"] = 121171,
			}),
			i(223321, {	-- [PH] ArathiLynxMount (Black Fur, Black Armor) (MOUNT!)
				["displayID"] = 119550,
			}),
			i(223319, {	-- [PH] ArathiLynxMount (Gold Fur, Yellow Armor) (MOUNT!)
				["displayID"] = 119546,
			}),
			i(223320, {	-- [PH] ArathiLynxMount (White Fur, Purple Armor) (MOUNT!)
				["displayID"] = 119547,
			}),
			i(223272, {	-- [PH] CaveBorerWormMount (Blue Skin, Purple Saddle) (MOUNT!)
				["displayID"] = 119473,
			}),
			i(223273, {	-- [PH] CaveBorerWormMount (Forest Skin, Blue Saddle) (MOUNT!)
				["displayID"] = 119474,
			}),
			i(223275, {	-- [PH] CaveBorerWormMount (Nocturne Skin, Red Saddle) (MOUNT!)
				["displayID"] = 119477,
			}),
			i(223159, {	-- [PH] Firebee Mount (Blue Variant) (MOUNT!)
				["displayID"] = 119395,
			}),
			i(223152, {	-- [PH] Firebee Mount (Grey Skin, Silver Saddle) (MOUNT!)
				["displayID"] = 119266,
			}),
			i(223154, {	-- [PH] Firebee Mount (White Skin, White Saddle) (MOUNT!)
				["displayID"] = 119264,
			}),
			i(222988, {	-- [PH] Firefly2Mount (Green) (MOUNT!)
				["displayID"] = 119387,
			}),
			i(222991, {	-- [PH] Firefly2Mount (Purple) (MOUNT!)
				["displayID"] = 119388,
			}),
			i(221778, {	-- [PH] Firefly2Mount (Yellow) (MOUNT!)
				["displayID"] = 119267,
			}),
			i(224413, {	-- [PH] Goliathus (Blue) (MOUNT!)
				["displayID"] = 119273,
			}),
			i(224414, {	-- [PH] Goliathus (Green) (MOUNT!)
				["displayID"] = 120167,
			}),
			i(224416, {	-- [PH] Goliathus (Purple) (MOUNT!)
				["displayID"] = 120169,
			}),
			i(223271, {	-- [PH] Gryphon_Air_Mount (White Skin, Gold Saddle) (MOUNT!)
				["displayID"] = 119484,
			}),
			i(223500, {	-- [PH] MoleMount (Gray Skin, Purple Saddle, Teeth Tusks, Nose Base) (MOUNT!)
				["displayID"] = 119684,
			}),
			i(221852, {	-- [PH] MoleMount (Pink Skin, Blue Saddle, Teeth Rodent, Nose Large Pointed) (MOUNT!)
				["displayID"] = 119287,
			}),
			i(223503, {	-- [PH] MoleMountBasic (Blue Skin, Purple Saddle, Teeth Tusks, Nose Base) (MOUNT!)
				["displayID"] = 119688,
			}),
			i(223504, {	-- [PH] MoleMountBasic (Green Skin, Black Saddle, Teeth Tusks, Nose Star) (MOUNT!)
				["displayID"] = 119686,
			}),
			i(223506, {	-- [PH] MoleMountBasic (Yellow Skin, Blue Saddle, Teeth Rodent, Nose Large Pointed) (MOUNT!)
				["displayID"] = 119692,
			}),
			i(222898, {	-- [PH] Mount - Unicorn Moose (Blue) (Gold Saddle) (Player Mount) (MOUNT!)
				["displayID"] = 119335,
			}),
			i(222901, {	-- [PH] Mount - Shalehorn (Brown) (Copper Saddle) (Player Mount) / Item: [PH] Mount - Unicorn Moose (Brown) (Copper Saddle) (Player Mount) (MOUNT!)
				["displayID"] = 119339,
			}),
			i(222902, {	-- [PH] Mount - Shalehorn (Crimson) (Dark Saddle) (Player Mount)  / Item: [PH] Mount - Unicorn Moose (Crimson) (Dark Saddle) (Player Mount) (MOUNT!)
				["displayID"] = 119340,
			}),
			i(222903, {	-- [PH] Mount - Shalehorn (Ivory) (Silver Saddle) (Player Mount)  / Item: [PH] Mount - Unicorn Moose (Ivory) (Silver Saddle) (Player Mount) (MOUNT!)
				["displayID"] = 119341,
			}),
			i(222904, {	-- [PH] Mount - Shalehorn (Yellow) (White Saddle) (Player Mount)  / Item: [PH] Mount - Unicorn Moose (Yellow) (White Saddle) (Player Mount) (MOUNT!)
				["displayID"] = 119342,
			}),
			i(224148, {	-- [PH] NerubianWarbeastMount (Cyan) (MOUNT!)
				["displayID"] = 119982,
			}),
			i(224149, {	-- [PH] NerubianWarbeastMount (Orange) (MOUNT!)
				["displayID"] = 119983,
			}),
			i(223573, {	-- [PH] Proto Ram Earthen (Sand Skin, Grand Horns, Dark Saddle) (MOUNT!)
				["displayID"] = 117969,
			}),
			i(223574, {	-- [PH] Proto Ram Earthen (White Skin, Grand Horns, White Saddle) (MOUNT!)
				["displayID"] = 117968,
			}),
			i(223587, {	-- [PH] Silver Armored Fel Bat Gladiator Mount (MOUNT!)
				["displayID"] = 119718,
			}),
			i(223277, {	-- [PH] SpiderUnderground (Green) (MOUNT!)
				["displayID"] = 119465,
			}),
			-- Without mountID attached
			i(220786, {	-- Delver's Dirigible (MOUNT!)
				--["displayID"] = ,
			}),
			i(207104, {	-- Morsel Sniffer Reins (MOUNT!)
				--["displayID"] = ,
			}),
			i(219012, {	-- Placeholder Delve Exclusive Mount (MOUNT!)
				--["displayID"] = ,
			}),
			i(223268, {	-- [PH] DwarvenMechBoss (Gold)
				["displayID"] = 119383,
			}),
			i(223502, {	-- [PH] MoleMount (Brown Skin, Red Saddle, Teeth Tusks, Nose Pointed) (MOUNT!)
				["displayID"] = 119685,
			}),
		})),

		-- 11.1.0
		expansion(EXPANSION.TWW, patch(0,01), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
			-- With MountID attached
			i(232523, {	-- G-99 Breakneck
				--["displayID"] = ,
			}),
		})),
	}),
}));