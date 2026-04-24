-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(67, {	-- Stables (rank 1: 65, rank 2: 66, rank 3: 67)
					n(ACHIEVEMENTS, {	-- Achievements
						-- TODO: add sourceQuests to the criteria, or use _quests ?
						a(ach(9539, {	-- Advanced Husbandry (Alliance)
							i(116668),		-- Armored Frostboar (MOUNT!)
							crit(26068),		-- Maimclaw Killed
							crit(26072),		-- Maimclaw Killed
							crit(26071),		-- Maimclaw Killed
							crit(26070),		-- Maimclaw Killed
							crit(26069),		-- Maimclaw Killed
							crit(26073),		-- Maimclaw Killed
							crit(26080),		-- Beast-Lasher Killed
							crit(26081),		-- Beast-Lasher Killed
							crit(26082),		-- Beast-Lasher Killed
							crit(26083),		-- Beast-Lasher Killed
							crit(26084),		-- Beast-Lasher Killed
							crit(26085),		-- Beast-Lasher Killed
							crit(26086),		-- Moth of Wrath Killed
							crit(26087),		-- Moth of Wrath Killed
							crit(26088),		-- Moth of Wrath Killed
							crit(26089),		-- Moth of Wrath Killed
							crit(26090),		-- Moth of Wrath Killed
							crit(26091),		-- Moth of Wrath Killed
							crit(26092),		-- Thundercall Killed
							crit(26093),		-- Thundercall Killed
							crit(26094),		-- Thundercall Killed
							crit(26095),		-- Thundercall Killed
							crit(26096),		-- Thundercall Killed
							crit(26097),		-- Thundercall Killed
							crit(26098),		-- Ironbore Killed
							crit(26099),		-- Ironbore Killed
							crit(26100),		-- Ironbore Killed
							crit(26101),		-- Ironbore Killed
							crit(26102),		-- Ironbore Killed
							crit(26103),		-- Ironbore Killed
							crit(26074),		-- Karak Killed
							crit(26075),		-- Karak Killed
							crit(26076),		-- Karak Killed
							crit(26077),		-- Karak Killed
							crit(26078),		-- Karak Killed
							crit(26079),		-- Karak Killed
						})),
						h(ach(9705, {	-- Advanced Husbandry (Horde)
							i(116668),		-- Armored Frostboar (MOUNT!)
							crit(26068),		-- Maimclaw Killed
							crit(26072),		-- Maimclaw Killed
							crit(26071),		-- Maimclaw Killed
							crit(26070),		-- Maimclaw Killed
							crit(26069),		-- Maimclaw Killed
							crit(26073),		-- Maimclaw Killed
							crit(26080),		-- Beast-Lasher Killed
							crit(26081),		-- Beast-Lasher Killed
							crit(26082),		-- Beast-Lasher Killed
							crit(26083),		-- Beast-Lasher Killed
							crit(26084),		-- Beast-Lasher Killed
							crit(26085),		-- Beast-Lasher Killed
							crit(26086),		-- Moth of Wrath Killed
							crit(26087),		-- Moth of Wrath Killed
							crit(26088),		-- Moth of Wrath Killed
							crit(26089),		-- Moth of Wrath Killed
							crit(26090),		-- Moth of Wrath Killed
							crit(26091),		-- Moth of Wrath Killed
							crit(26092),		-- Thundercall Killed
							crit(26093),		-- Thundercall Killed
							crit(26094),		-- Thundercall Killed
							crit(26095),		-- Thundercall Killed
							crit(26096),		-- Thundercall Killed
							crit(26097),		-- Thundercall Killed
							crit(26098),		-- Ironbore Killed
							crit(26099),		-- Ironbore Killed
							crit(26100),		-- Ironbore Killed
							crit(26101),		-- Ironbore Killed
							crit(26102),		-- Ironbore Killed
							crit(26103),		-- Ironbore Killed
							crit(26074),		-- Karak Killed
							crit(26075),		-- Karak Killed
							crit(26076),		-- Karak Killed
							crit(26077),		-- Karak Killed
							crit(26078),		-- Karak Killed
							crit(26079),		-- Karak Killed
						})),
						ach(9538, {		-- Intro to Husbandry
							crit(26051, { ["races"] = ALLIANCE_ONLY }),		-- Wrangling a Wolf
							crit(26047, { ["races"] = HORDE_ONLY }),		-- Wrangling a Wolf
							crit(26046, { ["races"] = ALLIANCE_ONLY }),		-- Taming a Talbuk
							crit(26052, { ["races"] = HORDE_ONLY }),		-- Taming a Talbuk
							crit(26043, { ["races"] = ALLIANCE_ONLY }),		-- Capturing a Clefthoof
							crit(26049, { ["races"] = HORDE_ONLY }),		-- Capturing a Clefthoof
							crit(26042, { ["races"] = ALLIANCE_ONLY }),		-- Besting a Boar
							crit(26048, { ["races"] = HORDE_ONLY }),		-- Besting a Boar
							crit(26045, { ["races"] = ALLIANCE_ONLY }),		-- Requisition a Riverbeast
							crit(26053, { ["races"] = HORDE_ONLY }),		-- Requisition a Riverbeast
							crit(26044, { ["races"] = ALLIANCE_ONLY }),		-- Entangling an Elekk
							crit(26050, { ["races"] = HORDE_ONLY }),		-- Entangling an Elekk
						}),
						ach(9526, {	-- Master of Mounts
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = {
								i(112003),		-- Stables, Level 3 [Blueprints]
								crit(26064, { ["races"] = ALLIANCE_ONLY }),		-- Wolf Trained
								crit(26065, { ["races"] = HORDE_ONLY }),		-- Wolf Trained
								crit(26062, { ["races"] = ALLIANCE_ONLY }),		-- Talbuk Trained
								crit(26063, { ["races"] = HORDE_ONLY }),		-- Talbuk Trained
								crit(26061, { ["races"] = ALLIANCE_ONLY }),		-- Clefthoof Trained
								crit(26060, { ["races"] = HORDE_ONLY }),		-- Clefthoof Trained
								crit(26058, { ["races"] = ALLIANCE_ONLY }),		-- Boar Trained
								crit(26059, { ["races"] = HORDE_ONLY }),		-- Boar Trained
								crit(26057, { ["races"] = ALLIANCE_ONLY }),		-- Riverbeast Trained
								crit(26056, { ["races"] = HORDE_ONLY }),		-- Riverbeast Trained
								crit(26055, { ["races"] = ALLIANCE_ONLY }),		-- Elekk Trained
								crit(26054, { ["races"] = HORDE_ONLY }),		-- Elekk Trained
							},
						}),
						a(ach(9540, {	-- The Stable Master (Alliance)
							i(116781),		-- Armored Frostwolf (MOUNT!)
							title(277),		-- Stable Master
							crit(26104),		-- Maimclaw Killed
							crit(26105),		-- Maimclaw Killed
							crit(26106),		-- Maimclaw Killed
							crit(26107),		-- Maimclaw Killed
							crit(26108),		-- Maimclaw Killed
							crit(26109),		-- Maimclaw Killed
							crit(26110),		-- Beast-Lasher Killed
							crit(26111),		-- Beast-Lasher Killed
							crit(26112),		-- Beast-Lasher Killed
							crit(26113),		-- Beast-Lasher Killed
							crit(26114),		-- Beast-Lasher Killed
							crit(26115),		-- Beast-Lasher Killed
							crit(26116),		-- Moth of Wrath Killed
							crit(26117),		-- Moth of Wrath Killed
							crit(26118),		-- Moth of Wrath Killed
							crit(26119),		-- Moth of Wrath Killed
							crit(26120),		-- Moth of Wrath Killed
							crit(26121),		-- Moth of Wrath Killed
							crit(26122),		-- Thundercall Killed
							crit(26123),		-- Thundercall Killed
							crit(26124),		-- Thundercall Killed
							crit(26125),		-- Thundercall Killed
							crit(26126),		-- Thundercall Killed
							crit(26127),		-- Thundercall Killed
							crit(26128),		-- Ironbore Killed
							crit(26129),		-- Ironbore Killed
							crit(26130),		-- Ironbore Killed
							crit(26131),		-- Ironbore Killed
							crit(26132),		-- Ironbore Killed
							crit(26133),		-- Ironbore Killed
							crit(26134),		-- Karak Killed
							crit(26135),		-- Karak Killed
							crit(26136),		-- Karak Killed
							crit(26137),		-- Karak Killed
							crit(26138),		-- Karak Killed
							crit(26139),		-- Karak Killed
						})),
						h(ach(9706, {	-- The Stable Master (Horde)
							i(116781),		-- Armored Frostwolf (MOUNT!)
							title(277),		-- Stable Master
							crit(26104),		-- Maimclaw Killed
							crit(26105),		-- Maimclaw Killed
							crit(26106),		-- Maimclaw Killed
							crit(26107),		-- Maimclaw Killed
							crit(26108),		-- Maimclaw Killed
							crit(26109),		-- Maimclaw Killed
							crit(26110),		-- Beast-Lasher Killed
							crit(26111),		-- Beast-Lasher Killed
							crit(26112),		-- Beast-Lasher Killed
							crit(26113),		-- Beast-Lasher Killed
							crit(26114),		-- Beast-Lasher Killed
							crit(26115),		-- Beast-Lasher Killed
							crit(26116),		-- Moth of Wrath Killed
							crit(26117),		-- Moth of Wrath Killed
							crit(26118),		-- Moth of Wrath Killed
							crit(26119),		-- Moth of Wrath Killed
							crit(26120),		-- Moth of Wrath Killed
							crit(26121),		-- Moth of Wrath Killed
							crit(26122),		-- Thundercall Killed
							crit(26123),		-- Thundercall Killed
							crit(26124),		-- Thundercall Killed
							crit(26125),		-- Thundercall Killed
							crit(26126),		-- Thundercall Killed
							crit(26127),		-- Thundercall Killed
							crit(26128),		-- Ironbore Killed
							crit(26129),		-- Ironbore Killed
							crit(26130),		-- Ironbore Killed
							crit(26131),		-- Ironbore Killed
							crit(26132),		-- Ironbore Killed
							crit(26133),		-- Ironbore Killed
							crit(26134),		-- Karak Killed
							crit(26135),		-- Karak Killed
							crit(26136),		-- Karak Killed
							crit(26137),		-- Karak Killed
							crit(26138),		-- Karak Killed
							crit(26139),		-- Karak Killed
						})),
					}),
					n(QUESTS, sharedData({ ["_drop"] = { "isDaily" } },{
						-- Alliance
						q(36913, {	-- Besting a Boar
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36997, {	-- Boar Training: Bulbapore
							["sourceQuest"] = 36996,	-- Boar Training: Gezz'ran
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36998, {	-- Boar Training: Cruel Ogres
							["sourceQuest"] = 36997,	-- Boar Training: Bulbapore
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36999, {	-- Boar Training: Darkwing Roc
							["sourceQuest"] = 36998,	-- Boar Training: Cruel Ogres
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36996, {	-- Boar Training: Gezz'ran
							["sourceQuest"] = 36995,	-- Boar Training: Riplash
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37002, {	-- Boar Training: Ironbore
							["sourceQuest"] = 37001,	-- Boar Training: Thundercall
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37000, {	-- Boar Training: Moth of Wrath
							["sourceQuest"] = 36999,	-- Boar Training: Darkwing Roc
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37003, {	-- Boar Training: Orc Hunters
							["sourceQuest"] = 37002,	-- Boar Training: Ironbore
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36995, {	-- Boar Training: Riplash
							["sourceQuest"] = 36913,	-- Besting a Boar
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37004, {	-- Boar Training: The Garn
							["sourceQuest"] = 37003,	-- Boar Training: Orc Hunters
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
							["groups"] = { i(116675) },	-- Trained Rocktusk (MOUNT!)
						}),
						q(37001, {	-- Boar Training: Thundercall
							["sourceQuest"] = 37000,	-- Boar Training: Moth of Wrath
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36916, {	-- Capturing a Clefthoof
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36987, {	-- Clefthoof Training: Bulbapore
							["sourceQuest"] = 36986,	-- Clefthoof Training: Gezz'ran
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36988, {	-- Clefthoof Training: Cruel Ogres
							["sourceQuest"] = 36987,	-- Clefthoof Training: Bulbapore
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36989, {	-- Clefthoof Training: Darkwing Roc
							["sourceQuest"] = 36988,	-- Clefthoof Training: Cruel Ogres
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36986, {	-- Clefthoof Training: Gezz'ran
							["sourceQuest"] = 36985,	-- Clefthoof Training: Riplash
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36983, {	-- Clefthoof Training: Great-Tusk
							["sourceQuest"] = 36916,	-- Capturing a Clefthoof
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36992, {	-- Clefthoof Training: Ironbore
							["sourceQuest"] = 36991,	-- Clefthoof Training: Thundercall
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36990, {	-- Clefthoof Training: Moth of Wrath
							["sourceQuest"] = 36989,	-- Clefthoof Training: Darkwing Roc
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36993, {	-- Clefthoof Training: Orc Hunters
							["sourceQuest"] = 36992,	-- Clefthoof Training: Ironbore
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36984, {	-- Clefthoof Training: Rakkiri
							["sourceQuest"] = 36983,	-- Clefthoof Training: Great-Tusk
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36985, {	-- Clefthoof Training: Riplash
							["sourceQuest"] = 36984,	-- Clefthoof Training: Rakkiri
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36994, {	-- Clefthoof Training: The Garn
							["sourceQuest"] = 36993,	-- Clefthoof Training: Orc Hunters
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
							["groups"] = { i(116656) },	-- Trained Icehoof (MOUNT!)
						}),
						q(36991, {	-- Clefthoof Training: Thundercall
							["sourceQuest"] = 36990,	-- Clefthoof Training: Moth of Wrath
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37015, {	-- Elekk Training: Cruel Ogres
							["sourceQuest"] = 36915,	-- Entangling an Elekk
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37016, {	-- Elekk Training: Darkwing Roc
							["sourceQuest"] = 37015,	-- Elekk Training: Cruel Ogres
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37019, {	-- Elekk Training: Ironbore
							["sourceQuest"] = 37018,	-- Elekk Training: Thundercall
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37017, {	-- Elekk Training: Moth of Wrath
							["sourceQuest"] = 37016,	-- Elekk Training: Darkwing Roc
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37020, {	-- Elekk Training: Orc Hunters
							["sourceQuest"] = 37019,	-- Elekk Training: Ironbore
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37021, {	-- Elekk Training: The Garn
							["sourceQuest"] = 37020,	-- Elekk Training: Orc Hunters
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
							["groups"] = { i(116662) },	-- Trained Meadowstomper (MOUNT!)
						}),
						q(37018, {	-- Elekk Training: Thundercall
							["sourceQuest"] = 37017,	-- Elekk Training: Moth of Wrath
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36915, {	-- Entangling an Elekk
							["qg"] = 86973,	-- Keegan Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36918, {	-- Requisition a Riverbeast
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37006, {	-- Riverbeast Training: Bulbapore
							["sourceQuest"] = 37005,	-- Riverbeast Training: Gezz'ran
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37007, {	-- Riverbeast Training: Cruel Ogres
							["sourceQuest"] = 37006,	-- Riverbeast Training: Bulbapore
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37008, {	-- Riverbeast Training: Darkwing Roc
							["sourceQuest"] = 37007,	-- Riverbeast Training: Cruel Ogres
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37005, {	-- Riverbeast Training: Gezz'ran
							["sourceQuest"] = 36918,	-- Requisition a Riverbeast
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37011, {	-- Riverbeast Training: Ironbore
							["sourceQuest"] = 37010,	-- Riverbeast Training: Thundercall
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37009, {	-- Riverbeast Training: Moth of Wrath
							["sourceQuest"] = 37008,	-- Riverbeast Training: Darkwing Roc
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37012, {	-- Riverbeast Training: Orc Hunters
							["sourceQuest"] = 37011,	-- Riverbeast Training: Ironbore
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37013, {	-- Riverbeast Training: The Garn
							["sourceQuest"] = 37012,	-- Riverbeast Training: Orc Hunters
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
							["groups"] = { i(116676) },	-- Trained Riverwallow (MOUNT!)
						}),
						q(37010, {	-- Riverbeast Training: Thundercall
							["sourceQuest"] = 37009,	-- Riverbeast Training: Moth of Wrath
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36975, {	-- Talbuk Training: Bulbapore
							["sourceQuest"] = 36974,	-- Talbuk Training: Gezz'ran
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36976, {	-- Talbuk Training: Cruel Ogres
							["sourceQuest"] = 36975,	-- Talbuk Training: Bulbapore
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36977, {	-- Talbuk Training: Darkwing Roc
							["sourceQuest"] = 36976,	-- Talbuk Training: Cruel Ogres
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36974, {	-- Talbuk Training: Gezz'ran
							["sourceQuest"] = 36973,	-- Talbuk Training: Riplash
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36971, {	-- Talbuk Training: Great-Tusk
							["sourceQuest"] = 36911,	-- Taming a Talbuk
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36980, {	-- Talbuk Training: Ironbore
							["sourceQuest"] = 36979,	-- Talbuk Training: Thundercall
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36978, {	-- Talbuk Training: Moth of Wrath
							["sourceQuest"] = 36977,	-- Talbuk Training: Darkwing Roc
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36981, {	-- Talbuk Training: Orc Hunters
							["sourceQuest"] = 36980,	-- Talbuk Training: Ironbore
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36972, {	-- Talbuk Training: Rakkiri
							["sourceQuest"] = 36971,	-- Talbuk Training: Great-Tusk
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36973, {	-- Talbuk Training: Riplash
							["sourceQuest"] = 36972,	-- Talbuk Training: Rakkiri
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36982, {	-- Talbuk Training: The Garn
							["sourceQuest"] = 36981,	-- Talbuk Training: Orc Hunters
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
							["groups"] = { i(116774) },	-- Trained Silverpelt (MOUNT!)
						}),
						q(36979, {	-- Talbuk Training: Thundercall
							["sourceQuest"] = 36978,	-- Talbuk Training: Moth of Wrath
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36911, {	-- Taming a Talbuk
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37122, {	-- Teeth of a Predator
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37121, {	-- The Black Claw
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37022, {	-- Wolf Training: Cruel Ogres
							["sourceQuest"] = 36914,	-- Wrangling a Wolf
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37023, {	-- Wolf Training: Darkwing Roc
							["sourceQuest"] = 37022,	-- Wolf Training: Cruel Ogres
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37026, {	-- Wolf Training: Ironbore
							["sourceQuest"] = 37025,	-- Wolf Training: Thundercall
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37024, {	-- Wolf Training: Moth of Wrath
							["sourceQuest"] = 37023,	-- Wolf Training: Darkwing Roc
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37027, {	-- Wolf Training: Orc Hunters
							["sourceQuest"] = 37026,	-- Wolf Training: Ironbore
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(37028, {	-- Wolf Training: The Garn
							["sourceQuest"] = 37027,	-- Wolf Training: Orc Hunters
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
							["groups"] = { i(116784) },	-- Trained Snarler (MOUNT!)
						}),
						q(37025, {	-- Wolf Training: Thundercall
							["sourceQuest"] = 37024,	-- Wolf Training: Moth of Wrath
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),
						q(36914, {	-- Wrangling a Wolf
							["qg"] = 86974,	-- Fanny Firebeard
							["races"] = ALLIANCE_ONLY,
						}),

						-- Horde
						q(36944, {	-- Besting a Boar
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37034, {	-- Boar Training: Bulbapore
							["sourceQuest"] = 37033,	-- Boar Training: Gezz'ran
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37035, {	-- Boar Training: Cruel Ogres
							["sourceQuest"] = 37034,	-- Boar Training: Bulbapore
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37036, {	-- Boar Training: Darkwing Roc
							["sourceQuest"] = 37035,	-- Boar Training: Cruel Ogres
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37033, {	-- Boar Training: Gezz'ran
							["sourceQuest"] = 37032,	-- Boar Training: Riplash
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37039, {	-- Boar Training: Ironbore
							["sourceQuest"] = 37038,	-- Boar Training: Thundercall
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37037, {	-- Boar Training: Moth of Wrath
							["sourceQuest"] = 37036,	-- Boar Training: Darkwing Roc
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37040, {	-- Boar Training: Orc Hunters
							["sourceQuest"] = 37039,	-- Boar Training: Ironbore
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37032, {	-- Boar Training: Riplash
							["sourceQuest"] = 36944,	-- Besting a Boar
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37041, {	-- Boar Training: The Garn
							["sourceQuest"] = 37040,	-- Boar Training: Orc Hunters
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
							["groups"] = { i(116675) },	-- Trained Rocktusk (MOUNT!)
						}),
						q(37038, {	-- Boar Training: Thundercall
							["sourceQuest"] = 37037,	-- Boar Training: Moth of Wrath
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(36912, {	-- Capturing a Clefthoof
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37052, {	-- Clefthoof Training: Bulbapore
							["sourceQuest"] = 37051,	-- Clefthoof Training: Gezz'ran
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37053, {	-- Clefthoof Training: Cruel Ogres
							["sourceQuest"] = 37052,	-- Clefthoof Training: Bulbapore
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37054, {	-- Clefthoof Training: Darkwing Roc
							["sourceQuest"] = 37053,	-- Clefthoof Training: Cruel Ogres
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37051, {	-- Clefthoof Training: Gezz'ran
							["sourceQuest"] = 37050,	-- Clefthoof Training: Riplash
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37048, {	-- Clefthoof Training: Great-Tusk
							["sourceQuest"] = 36912,	-- Capturing a Clefthoof
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37057, {	-- Clefthoof Training: Ironbore
							["sourceQuest"] = 37056,	-- Clefthoof Training: Thundercall
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37055, {	-- Clefthoof Training: Moth of Wrath
							["sourceQuest"] = 37054,	-- Clefthoof Training: Darkwing Roc
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37058, {	-- Clefthoof Training: Orc Hunters
							["sourceQuest"] = 37057,	-- Clefthoof Training: Ironbore
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37049, {	-- Clefthoof Training: Rakkiri
							["sourceQuest"] = 37123,	-- The Black Claw
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37050, {	-- Clefthoof Training: Riplash
							["sourceQuest"] = 37049,	-- Clefthoof Training: Rakkiri
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37059, {	-- Clefthoof Training: The Garn
							["sourceQuest"] = 37058,	-- Clefthoof Training: Orc Hunters
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
							["groups"] = { i(116656) },	-- Trained Icehoof (MOUNT!)
						}),
						q(37056, {	-- Clefthoof Training: Thundercall
							["sourceQuest"] = 37055,	-- Clefthoof Training: Moth of Wrath
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37063, {	-- Elekk Training: Cruel Ogres
							["sourceQuest"] = 36946,	-- Entangling an Elekk
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37064, {	-- Elekk Training: Darkwing Roc
							["sourceQuest"] = 37063,	-- Elekk Training: Cruel Ogres
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37067, {	-- Elekk Training: Ironbore
							["sourceQuest"] = 37066,	-- Elekk Training: Thundercall
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37065, {	-- Elekk Training: Moth of Wrath
							["sourceQuest"] = 37064,	-- Elekk Training: Darkwing Roc
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37068, {	-- Elekk Training: Orc Hunters
							["sourceQuest"] = 37067,	-- Elekk Training: Ironbore
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(37069, {	-- Elekk Training: The Garn
							["sourceQuest"] = 37068,	-- Elekk Training: Orc Hunters
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
							["groups"] = { i(116662) },	-- Trained Meadowstomper (MOUNT!)
						}),
						q(37066, {	-- Elekk Training: Thundercall
							["sourceQuest"] = 37065,	-- Elekk Training: Moth of Wrath
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(36946, {	-- Entangling an Elekk
							["qg"] = 86979,	-- Tormak the Scarred
							["races"] = HORDE_ONLY,
						}),
						q(36945, {	-- Requisition a Riverbeast
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37072, {	-- Riverbeast Training: Bulbapore
							["sourceQuest"] = 37071,	-- Riverbeast Training: Gezz'ran
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37073, {	-- Riverbeast Training: Cruel Ogres
							["sourceQuest"] = 37072,	-- Riverbeast Training: Bulbapore
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37074, {	-- Riverbeast Training: Darkwing Roc
							["sourceQuest"] = 37073,	-- Riverbeast Training: Cruel Ogres
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37071, {	-- Riverbeast Training: Gezz'ran
							["sourceQuest"] = 36945,	-- Requisition a Riverbeast
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37077, {	-- Riverbeast Training: Ironbore
							["sourceQuest"] = 37076,	-- Riverbeast Training: Thundercall
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37075, {	-- Riverbeast Training: Moth of Wrath
							["sourceQuest"] = 37074,	-- Riverbeast Training: Darkwing Roc
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37078, {	-- Riverbeast Training: Orc Hunters
							["sourceQuest"] = 37077,	-- Riverbeast Training: Ironbore
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37079, {	-- Riverbeast Training: The Garn
							["sourceQuest"] = 37078,	-- Riverbeast Training: Orc Hunters
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
							["groups"] = { i(116676) },	-- Trained Riverwallow (MOUNT!)
						}),
						q(37076, {	-- Riverbeast Training: Thundercall
							["sourceQuest"] = 37075,	-- Riverbeast Training: Moth of Wrath
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37097, {	-- Talbuk Training: Bulbapore
							["sourceQuest"] = 37096,	-- Talbuk Training: Gezz'ran
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37098, {	-- Talbuk Training: Cruel Ogres
							["sourceQuest"] = 37097,	-- Talbuk Training: Bulbapore
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37099, {	-- Talbuk Training: Darkwing Roc
							["sourceQuest"] = 37098,	-- Talbuk Training: Cruel Ogres
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37096, {	-- Talbuk Training: Gezz'ran
							["sourceQuest"] = 37095,	-- Talbuk Training: Riplash
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37093, {	-- Talbuk Training: Great-Tusk
							["sourceQuest"] = 36917,	-- Taming a Talbuk
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37102, {	-- Talbuk Training: Ironbore
							["sourceQuest"] = 37101,	-- Talbuk Training: Thundercall
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37100, {	-- Talbuk Training: Moth of Wrath
							["sourceQuest"] = 37099,	-- Talbuk Training: Darkwing Roc
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37103, {	-- Talbuk Training: Orc Hunters
							["sourceQuest"] = 37102,	-- Talbuk Training: Ironbore
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37094, {	-- Talbuk Training: Rakkiri
							["sourceQuest"] = 37093,	-- Talbuk Training: Great-Tusk
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37095, {	-- Talbuk Training: Riplash
							["sourceQuest"] = 37094,	-- Talbuk Training: Rakkiri
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37104, {	-- Talbuk Training: The Garn
							["sourceQuest"] = 37103,	-- Talbuk Training: Orc Hunters
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
							["groups"] = { i(116774) },	-- Trained Silverpelt (MOUNT!)
						}),
						q(37101, {	-- Talbuk Training: Thundercall
							["sourceQuest"] = 37100,	-- Talbuk Training: Moth of Wrath
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(36917, {	-- Taming a Talbuk
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37124, {	-- Teeth of a Predator
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37123, {	-- The Black Claw
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37105, {	-- Wolf Training: Cruel Ogres
							["sourceQuest"] = 36950,	-- Wrangling a Wolf
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37106, {	-- Wolf Training: Darkwing Roc
							["sourceQuest"] = 37105,	-- Wolf Training: Cruel Ogres
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37109, {	-- Wolf Training: Ironbore
							["sourceQuest"] = 37108,	-- Wolf Training: Thundercall
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37107, {	-- Wolf Training: Moth of Wrath
							["sourceQuest"] = 37106,	-- Wolf Training: Darkwing Roc
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37110, {	-- Wolf Training: Orc Hunters
							["sourceQuest"] = 37109,	-- Wolf Training: Ironbore
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(37111, {	-- Wolf Training: The Garn
							["sourceQuest"] = 37110,	-- Wolf Training: Orc Hunters
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
							["groups"] = { i(116784) },	-- Trained Snarler (MOUNT!)
						}),
						q(37108, {	-- Wolf Training: Thundercall
							["sourceQuest"] = 37107,	-- Wolf Training: Moth of Wrath
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
						q(36950, {	-- Wrangling a Wolf
							["qg"] = 87242,	-- Sage Paluna
							["races"] = HORDE_ONLY,
						}),
					})),
				}),
			}),
		})),
	})
);
