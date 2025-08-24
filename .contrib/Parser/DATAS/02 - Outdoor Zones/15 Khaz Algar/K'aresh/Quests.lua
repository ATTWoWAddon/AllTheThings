---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(KARESH, {
		n(QUESTS, {
			header(HEADERS.Achievement, 41970, {	-- The Knife's Edge
				header(HEADERS.AchCriteria, 41970.01, {	-- Chapter 1: A Shadowy Invitation
					q(84956, {	-- A Shadowy Invitation
						--["sourceQuests"] = { xx },	-- TODO: does it exist?
						["qg"] = 227758,	-- Alleria Windrunner
						["coord"] = { 42.4, 26.9, DORNOGAL },
					}),
					q(84957, {	-- Return to the Veiled Market
						["sourceQuests"] = { 84956 },	-- A Shadowy Invitation
						["qg"] = 233603,	-- Locus-Walker
						["coord"] = { 42.1, 26.9, DORNOGAL },
					}),
					q(85003, {	-- Restoring Operational Efficiency
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["qg"] = 230604,	-- Om'en
						["coord"] = { 59.5, 83.2, KARESH_TAZAVESH },
					}),
					------ Stay awhile and listen ------
					--hqt(???, {	-- Stay awhile and listen: Locus-Walker
					--	["name"] = "Stay awhile and listen: Locus-Walker",
					--	["description"] = "Dialogue becomes available after you accept 'Restoring Operational Efficiency' (85003).",
					--	["sourceQuests"] = { 84957 },	-- Return to the Veiled Market
					--	["qg"] = 233706,	-- Locus-Walker
					--	["coord"] = { 59.7, 83.4, KARESH_TAZAVESH },
					--}),
					--
					q(84958, {	-- Beasts Unbound
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["qg"] = 230954,	-- Ta'ka
						["coord"] = { 56.9, 73.0, KARESH_TAZAVESH },
					}),
					q(85039, {	-- Compromised Containment
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["qg"] = 231564,	-- Xy'bin
						["coord"] = { 56.6, 72.9, KARESH_TAZAVESH },
						["groups"] = {
							i(237891),	-- Menagerie's Lost Relic
							i(237894),	-- Pendant of Arcane Havoc
						},
					}),
					q(84959, {	-- Lost Lines of Defense
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["qg"] = 230955,	-- Ba'ver
						["coord"] = { 53.1, 64.5, KARESH_TAZAVESH },
						["groups"] = {
							o(469475, {	-- Stolen Barrier Projector
								i(235366),	-- Stolen Barrier Projector (QI!)
							}),
							--
							i(237887),	-- Tazavesh Guardian's Epaulets
							i(237883),	-- Tazavesh Guardian's Mantle
							i(237875),	-- Tazavesh Guardian's Shoulderguards
							i(237888),	-- Tazavesh Guardian's Shoulderpads
						},
					}),
					q(84960, {	-- The Darkness Among Us
						["sourceQuests"] = { 85003 },	-- Restoring Operational Efficiency TODO: There is no point to list all quests, I guess?
						["qg"] = 233706,	-- Locus-Walker
						["coord"] = { 59.7, 83.3, KARESH_TAZAVESH },
						["groups"] = {
							o(502448, {	-- Void Presence
								["coord"] = { 54.8, 66.3, KARESH_TAZAVESH },
							}),
							--
							i(237890),	-- Band of the Unseen Hand
							i(237893),	-- Ring of Lingering Shadows
						},
					}),
					------ Stay awhile and listen ------
					--hqt(???, {	-- Stay awhile and listen: Alleria Windrunner
					--	["name"] = "Stay awhile and listen: Alleria Windrunner",
					--	["description"] = "Dialogue becomes available after you accept 'The Darkness Among Us' (84960).",
					--	["sourceQuests"] = { 84960 },	-- The Darkness Among Us
					--	["qg"] = 230609,	-- Alleria Windrunner
					--	["coord"] = { 54.7, 66.9, KARESH_TAZAVESH },
					--}),
					--
					q(84963, {	-- Sealing the Shadows
						["sourceQuests"] = { 84960 },	-- The Darkness Among Us
						["qg"] = 234601,	-- Om'en
						["coord"] = { 54.1, 63.7, KARESH_TAZAVESH },
						["groups"] = {
							i(233199),	-- Saturated Entropic Core (QI!)
							--
							i(238055),	-- Entropic-Shadow Dagger
							i(238059),	-- Entropic-Shadow Gavel
							i(238060),	-- Entropic-Shadow Greatsword
							i(238058),	-- Entropic-Shadow Handaxe
							i(238061),	-- Entropic-Shadow Javelin
							i(238262),	-- Entropic-Shadow Mace
							i(238054),	-- Entropic-Shadow Saber
							i(238062),	-- Entropic-Shadow Sharpshooter
							i(238056),	-- Entropic-Shadow Staff
							i(238066),	-- Entropic-Shadow Sword
							i(238192),	-- Entropic-Shadow Warglaive
						},
					}),
					q(84961, {	-- Barriers to Entry
						["sourceQuests"] = { 84960 },	-- The Darkness Among Us
						["qg"] = 234596,	-- Locus-Walker
						["coord"] = { 54.2, 63.1, KARESH_TAZAVESH },
						["groups"] = {
							o(502525, {	-- Barrier Projector
								["coords"] = {
									{ 41.4, 49.0, KARESH_TAZAVESH },
									{ 46.0, 51.4, KARESH_TAZAVESH },
									{ 49.9, 57.9, KARESH_TAZAVESH },
									{ 52.5, 46.8, KARESH_TAZAVESH },
									{ 51.4, 41.1, KARESH_TAZAVESH },
									{ 44.4, 36.2, KARESH_TAZAVESH },
									{ 39.4, 41.9, KARESH_TAZAVESH },
									{ 58.3, 32.7, KARESH_TAZAVESH },
								},
							}),
						},
					}),
					q(84964, {	-- Heroes Among Shadow
						["sourceQuests"] = { 84960 },	-- The Darkness Among Us
						["qg"] = 234602,	-- Alleria Windrunner
						["coord"] = { 53.8, 63.3, KARESH_TAZAVESH },
						["groups"] = {
							i(238193),	-- Blade of Unyielding Will
							i(238194),	-- Blaster of Unyielding Will
							i(238186),	-- Cudgel of Unyielding Will
							i(238189),	-- Dagger of Unyielding Will
							i(238188),	-- Greatsword of Unyielding Will
							i(238187),	-- Mace of Unyielding Will
							i(238191),	-- Relic of Unyielding Will
							i(238190),	-- Shield of Unyielding Will
							i(238184),	-- Stave of Unyielding Will
							i(238185),	-- Wand of Unyielding Will
						},
					}),
					q(84965, {	-- Core Contributions
						["sourceQuests"] = {
							84961,	-- Barriers to Entry
							84964,	-- Heroes Among Shadow
							84963,	-- Sealing the Shadows
						},
						["qg"] = 234483,	-- Alleria Windrunner (mobileNPC)
						["maps"] = { KARESH_TAZAVESH },
						-- She is following you around. Coordinates depend on where you turned in previous cluster of quests
					}),
					q(86835, {	-- Regroup!
						["sourceQuests"] = { 84965 },	-- Core Contributions
						["qg"] = 234483,	-- Alleria Windrunner (mobileNPC)
						["maps"] = { KARESH_TAZAVESH },
						-- She is following you around. Coordinates depend on where you turned in previous quest
					}),
					q(84967, {	-- The Shadowguard Shattered
						["sourceQuests"] = { 86835 },	-- Regroup!
						["qg"] = 234620,	-- Locus-Walker
						["coord"] = { 40.5, 67.8, KARESH_TAZAVESH },
					}),
				}),
				header(HEADERS.AchCriteria, 41970.02, {	-- Chapter 2: Void Alliance
					q(85032, {	-- What Is Left of Home
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 231128,	-- Locus-Walker
						["coord"] = { 37.7, 74.8, KARESH_TAZAVESH },
					}),
					------ Stay awhile and listen ------
					hqt(90600, {	-- Stay awhile and listen: Xal'atath
						["name"] = "Stay awhile and listen: Xal'atath",
						["description"] = "Dialogue becomes available after you accept 'What Is Left of Home' (85032).",
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 235448,	-- Xal'atath
						["coord"] = { 37.5, 74.7, KARESH_TAZAVESH },
					}),
					hqt(90732, {	-- Stay awhile and listen: Alleria Windrunner
						["name"] = "Stay awhile and listen: Alleria Windrunner",
						["description"] = "Dialogue becomes available after you accept 'What Is Left of Home' (85032).",
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 240293,	-- Alleria Windrunner
						["coord"] = { 34.2, 10.6, KARESH_TAZAVESH },
					}),
					--
					q(85961, {	-- Moving the Pawns
						["sourceQuests"] = { 85032 },	-- What Is Left of Home
						["qg"] = 230700,	-- Locus-Walker
						["coord"] = { 34.0, 10.9, KARESH_TAZAVESH },
					}),
					q(84855, {	-- Dead Silence
						["sourceQuests"] = { 85032 },	-- What Is Left of Home
						["qg"] = 230806,	-- Locus-Walker
						["coord"] = { 48.2, 36.7, KARESH },
						["groups"] = {
							i(237861),	-- Cowl of the Lost Trust
							i(237873),	-- Coif of the Lost Trust
							i(237878),	-- Helm of the Lost Trust
							i(237892),	-- Hood of the Lost Trust
						},
					}),
					q(86495, {	-- The Reshii Ribbon
						["sourceQuests"] = { 84855 },	-- Dead Silence
						["qg"] = 234106,	-- Locus-Walker
						["coord"] = { 48.2, 36.6, KARESH },
					}),
					------ Stay awhile and listen ------
					--hqt(???, {	-- Stay awhile and listen: Alleria Windrunner
					--	["name"] = "Stay awhile and listen: Alleria Windrunner",
					--	["description"] = "Dialogue becomes available after you accept 'The Reshii Ribbon' (86495).",
					--	["sourceQuests"] = { 84855 },	-- Dead Silence
					--	["qg"] = 233945,	-- Alleria Windrunner
					--	["coord"] = { 48.3, 36.6, KARESH },
					--}),
					--
					q(84856, {	-- Where the Void Gathers
						["sourceQuests"] = { 86495 },	-- The Reshii Ribbon
						["qg"] = 233946,	-- Xal'atath
						["coord"] = { 48.2, 36.7, KARESH },
					}),
					q(84857, {	-- Eco-Dome: Primus
						["sourceQuests"] = { 84856 },	-- Where the Void Gathers
						["qg"] = 234106,	-- Locus-Walker
						["coord"] = { 48.2, 36.6, KARESH },
					}),
					q(84858, {	-- System Restart
						["sourceQuests"] = { 84857 },	-- Eco-Dome: Primus
						["qg"] = 230814,	-- Ve'nari
						["coord"] = { 47.1, 54.6, KARESH },
						["groups"] = {
							o(500813, {	-- Rod of analysis
								["coord"] = { 47.2, 58.6, KARESH },
								["groups"] = { i(233068) },	-- Rod of Analysis (QI!)
							}),
						},
					}),
					------ Stay awhile and listen ------
					--hqt(???, {	-- Stay awhile and listen: Xal'atath / 61476 - no questID
					--	["name"] = "Stay awhile and listen: Xal'atath",
					--	["description"] = "Dialogue becomes available after you accept 'System Restart' (84858).",
					--	["sourceQuests"] = { 84857 },	-- Eco-Dome: Primus
					--	["qg"] = 230825,	-- Xal'atath
					--	["coord"] = { 47.1, 54.6, KARESH },
					--}),
					--
					q(84859, {	-- Damage Report 101
						["sourceQuests"] = { 84858 },	-- System Restart
						["qg"] = 230814,	-- Ve'nari
						["coord"] = { 47.1, 54.6, KARESH },
						["groups"] = {
							i(233187),	-- Botanical Report (QI!)
							i(233189),	-- Shield Technician Report (QI!)
						},
					}),
					q(84860, {	-- Eco-Stabilizing
						["sourceQuests"] = { 84858 },	-- System Restart
						["qg"] = 230814,	-- Ve'nari
						["coord"] = { 47.1, 54.6, KARESH },
						["groups"] = {
							o(502907, {	-- Rod of Activation
								["coord"] = { 48.8, 59.0, KARESH },
								["groups"] = { i(233326) },	-- Rod of Activation (QI!)
							}),
							--
							i(237876),	-- Eco-Stabilizer's Cinch
							i(237863),	-- Eco-Stabilizer's Cord
							i(237884),	-- Eco-Stabilizer's Girdle
							i(237868),	-- Eco-Stabilizer's Sash
						},
					}),
					q(84861, {	-- This Is Our Dome!
						["sourceQuests"] = {
							84859,	-- Damage Report 101
							84860,	-- Eco-Stabilizing
						},
						["qg"] = 230814,	-- Ve'nari
						["coord"] = { 47.1, 54.6, KARESH },
						["groups"] = {
							i(237867),	-- Oathsworn Defender's Breeches
							i(237874),	-- Oathsworn Defender's Greaves
							i(237862),	-- Oathsworn Defender's Leggings
							i(237882),	-- Oathsworn Defender's Legguards
						},
					}),
					q(84862, {	-- Void Alliance
						["sourceQuests"] = {
							84859,	-- Damage Report 101
							84860,	-- Eco-Stabilizing
						},
						["qg"] = 230825,	-- Xal'atath
						["coord"] = { 47.1, 54.6, KARESH },
					}),
					q(84863, {	-- Counter Measures
						["sourceQuests"] = {
							84861,	-- This Is Our Dome!
							84862,	-- Void Alliance
						},
						["qgs"] = {
							230814,	-- Ve'nari
							232642,	-- Void Elf Riftwalker
						},
						["coord"] = { 47.1, 54.6, KARESH },
					}),
					q(84865, {	-- Divide and Conquer
						["sourceQuests"] = {
							84861,	-- This Is Our Dome!
							84862,	-- Void Alliance
						},
						["qg"] = 230825,	-- Xal'atath
						["coord"] = { 47.1, 54.6, KARESH },
						["groups"] = { i(233222) },	-- Nullbomb (PQI!)
					}),
					q(84864, {	-- Her Dark Side
						["sourceQuests"] = {
							84861,	-- This Is Our Dome!
							84862,	-- Void Alliance
						},
						["qg"] = 230825,	-- Xal'atath
						["coord"] = { 47.1, 54.6, KARESH },
					}),
					q(84866, {	-- To Purchase Safety
						["sourceQuests"] = {
							84863,	-- Counter Measures
							84865,	-- Divide and Conquer
							84864,	-- Her Dark Side
						},
						["qg"] = 232642,	-- Alleria Windrunner (mobileNPC)
						["maps"] = { KARESH },
						-- She is following you around. Coordinates depend on where you turned in previous cluster of quests
						["groups"] = {
							i(238386),	-- Void-Touched Fragment
						},
					}),
					q(86946, {	-- Unwrapped and Unraveled
						["sourceQuests"] = { 84866 },	-- To Purchase Safety
						["qg"] = 237705,	-- Xal'atath
						["coord"] = { 54.3, 45.5, KARESH },
					}),
					q(90517, {	-- My Part of the Deal
						["sourceQuests"] = { 86946 },	-- Unwrapped and Unraveled
						["qg"] = 242538,	-- Ve'nari
						["coord"] = { 47.1, 54.5, KARESH },
					}),
					------ Stay awhile and listen ------
					hqt(90572, {	-- Stay awhile and listen: Locus-Walker
						["name"] = "Stay awhile and listen: Locus-Walker",
						["description"] = "Dialogue becomes available after you accept 'My Part of the Deal' (90517).",
						["sourceQuests"] = { 86946 },	-- Unwrapped and Unraveled
						["qg"] = 230811,	-- Locus-Walker
						["coord"] = { 47.1, 54.5, KARESH },
					}),
					--
				}),
				header(HEADERS.AchCriteria, 41970.03, {	-- Chapter 3: Desert Power
					q(84826, {	-- Eco-Dome: Rhovan
						["sourceQuests"] = { 90517 },	-- My Part of the Deal
						["qg"] = 230811,	-- Locus-Walker
						["coord"] = { 47.1, 54.5, KARESH },
					}),
					q(84827, {	-- The Shattered Dome
						["sourceQuests"] = { 84826 },	-- Eco-Dome: Rhovan
						["qg"] = 230288,	-- Locus-Walker
						["coord"] = { 70.9, 58.1, KARESH },
						["groups"] = {
							o(466983, {	-- Curved Dagger
								["coord"] = { 70.0, 53.1, KARESH },
								["groups"] = { i(229060) },	-- Curved Dagger (QI!)
							}),
							o(466978, {	-- Om'bera's Clipboard
								["coord"] = { 70.9, 54.4, KARESH },
								["groups"] = { i(229058) },	-- Supply Crates Manifest (QI!)
							}),
						},
					}),
					q(84831, {	-- The Rhovan Infestation
						["sourceQuests"] = { 84826 },	-- Eco-Dome: Rhovan
						["qg"] = 230294,	-- Om'resh
						["coord"] = { 71.0, 58.0, KARESH },
					}),
					q(85730, {	-- Salvaging What's Left
						["sourceQuests"] = {
							84827,	-- The Shattered Dome
							84831,	-- The Rhovan Infestation
						},
						["qg"] = 230294,	-- Om'resh
						["coord"] = { 71.0, 58.0, KARESH },
						["groups"] = {
							o(499949, {	-- Stolen Research Crate
								i(232876),	-- Stolen Research Crate (QI!)
							}),
							--
							i(237879),	-- Encroaching Void Breastplate
							i(237870),	-- Encroaching Void Chainmail
							i(237886),	-- Encroaching Void Vest
							i(237858),	-- Encroaching Void Vestment
						},
					}),
					q(86327, {	-- The Tempest Fields
						["sourceQuests"] = { 85730 },	-- Salvaging What's Left
						["qg"] = 230602,	-- Xal'atath
						["coord"] = { 68.4, 51.9, KARESH },
					}),
					------ Stay awhile and listen ------
					hqt(85774, {	-- Stay awhile and listen: Xal'atath
						["name"] = "Stay awhile and listen: Xal'atath",
						["description"] = "Dialogue becomes available after you accept 'The Tempest Fields' (86327).",
						["sourceQuests"] = { 85730 },	-- Salvaging What's Left
						["qg"] = 230602,	-- Xal'atath
						["coord"] = { 68.4, 51.9, KARESH },
					}),
					--
					q(84834, {	-- Tempest Clefts
						["sourceQuests"] = { 86327 },	-- The Tempest Fields
						["qg"] = 233878,	-- Xal'atath
						["coord"] = { 64.1, 47.0, KARESH },
						["groups"] = {
							i(233018),	-- Essence Collector (PQI!)
							--
							o(466810, {	-- Void Cleft
								i(229994),	-- Void Cleft Essence (QI!)
							}),
						},
					}),
					q(84869, {	-- Hunting on Glass
						["sourceQuests"] = { 86327 },	-- The Tempest Fields
						["qg"] = 233878,	-- Xal'atath
						["coord"] = { 64.1, 47.0, KARESH },
					}),
					q(84838, {	-- Enemies of Enemies
						["sourceQuests"] = {
							84834,	-- Tempest Clefts
							84869,	-- Hunting on Glass
						},
						["qg"] = 233878,	-- Xal'atath
						["coord"] = { 64.1, 47.0, KARESH },
						["groups"] = { i(230772) },	-- Coalesced Void Energy (PQI!)
					}),
					q(84848, {	-- Before the Void
						["sourceQuests"] = { 84838 },	-- Enemies of Enemies
						["qg"] = 230634,	-- Xal'atath
						["coord"] = { 61.3, 39.3, KARESH },
						["groups"] = {
							i(232599),	-- Tabiqa Dagger (PQI!)
							--
							i(237881),	-- Wastelander's Worn Gauntlets
							i(237866),	-- Wastelander's Worn Gloves
							i(237872),	-- Wastelander's Worn Grips
							i(237860),	-- Wastelander's Worn Handwraps
						},
					}),
					q(84867, {	-- Stalking Stalkers
						["sourceQuests"] = { 84848 },	-- Before the Void
						["qg"] = 230658,	-- Xal'atath
						["coord"] = { 63.1, 39.0, KARESH },
						["groups"] = {
							i(237880),	-- Silent Huntsman's Sabatons
							i(237859),	-- Silent Huntsman's Sandals
							i(237871),	-- Silent Huntsman's Striders
							i(237865),	-- Silent Huntsman's Waders
						},
					}),
					------ Stay awhile and listen ------
					hqt(86815, {	-- Stay awhile and listen: Xal'atath
						["name"] = "Stay awhile and listen: Xal'atath",
						["description"] = "Dialogue becomes available after you accept 'Stalking Stalkers' (84867).",
						["sourceQuests"] = { 84848 },	-- Before the Void
						["qg"] = 230658,	-- Xal'atath
						["coord"] = { 63.1, 39.0, KARESH },
					}),
					--
					q(86332, {	-- Distribution of Power
						["description"] = "Quest becomes available after you talk to Narathe during 'Stalking Stalkers' (84867).",
						["sourceQuests"] = { 84848 },	-- Before the Void
						["qg"] = 234190,	-- Narathe
						["coord"] = { 61.0, 39.9, KARESH },
						["groups"] = { i(235051) },	-- Harvested Energy (QI!)
					}),
					q(84876, {	-- The Oasis
						["sourceQuests"] = {
							84867,	-- Stalking Stalkers
							86332,	-- Distribution of Power
						},
						["qg"] = 230658,	-- Xal'atath
						["coord"] = { 63.1, 39.0, KARESH },
					}),
					q(84879, {	-- Restoring Hope
						["sourceQuests"] = { 84876 },	-- The Oasis
						["qg"] = 230738,	-- Xal'atath
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = {
							i(237885),	-- Armplates of the Riftsealer
							i(237869),	-- Bindings of the Riftsealer
							i(237877),	-- Bracers of the Riftsealer
							i(237864),	-- Cuffs of the Riftsealer
						},
					}),
					q(84883, {	-- K'aresh That Was
						["sourceQuests"] = { 84876 },	-- The Oasis
						["qg"] = 230739,	-- Soul-Scribe
						["coord"] = { 75.8, 34.3, KARESH },
						["groups"] = {
							o(475872, {	-- Rippling Wellspring
								["coord"] = { 76.8, 30.1, KARESH },
								["groups"] = { i(230938) },	-- Heartspring Water (QI!)
							}),
							o(467435, {	-- Zaranit Bud
								i(229363),	-- Zaranit Bud (QI!)
							}),
						},
					}),
					q(84910, {	-- The Tabiqa
						["sourceQuests"] = {
							84879,	-- Restoring Hope
							84883,	-- K'aresh That Was
						},
						["qg"] = 230739,	-- Soul-Scribe
						["coord"] = { 75.8, 34.3, KARESH },
						["groups"] = {
							i(238039),	-- Chronomatic Fiber
							i(238041),	-- Dexterous Fiber
							i(238037),	-- Energizing Fiber
							i(238040),	-- Precise Fiber
							i(235499),	-- Reshii Wraps
						},
					}),
				}),
				header(HEADERS.AchCriteria, 41970.04, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART } }, {	-- Chapter 4: Shadows En Garde
					q(84896, {	-- The Next Dimension
						["sourceQuests"] = { 84910 },	-- The Tabiqa
						["qg"] = 230786,	-- Soul-Scribe
						["coord"] = { 74.4, 30.4, KARESH },
					}),
					q(84897, {	-- The Calm Before we Storm
						["sourceQuests"] = { 84896 },	-- The Next Dimension
						["qg"] = 230818,	-- Soul-Scribe
						["coord"] = { 60.2, 29.2, KARESH },
					}),
					------ Stay awhile and listen ------
					--hqt(???, {	-- Stay awhile and listen: Alleria Windrunner - no questID
					--	["name"] = "Stay awhile and listen: Alleria Windrunner",
					--	["description"] = "Dialogue becomes available after you accept 'The Calm Before we Storm' (84897).",
					--	["sourceQuests"] = { 84896 },	-- The Next Dimension
					--	["qg"] = 230817,	-- Alleria Windrunner
					--	["coord"] = { 60.7, 27.9, KARESH },
					--}),
					--
					q(84899, {	-- Shadowguard Diffusion
						["sourceQuests"] = { 84897 },	-- The Calm Before we Storm
						["qg"] = 230817,	-- Alleria Windrunner
						["coord"] = { 60.7, 27.9, KARESH },
						["groups"] = { i(238390) },	-- Soulbreaker's Sigil
					}),
					q(84898, {	-- The Sands of K'aresh
						["sourceQuests"] = { 84896 },	-- The Next Dimension
						["qg"] = 231443,	-- Soul-Scribe
						["coord"] = { 60.7, 28.0, KARESH },
						["groups"] = {
							i(237136),	-- Wastes Scanner (PQI!)
							--
							o(502375, {	-- Sand Pile
								["coord"] = { 59.1, 28.5, KARESH },
								["groups"] = { i(233192) },	-- Shadowguard Weapon (QI!)
							}),
							o(502376, {	-- Sand Pile
								["coord"] = { 58.7, 29.5, KARESH },
								["groups"] = { i(233193) },	-- Shadowguard Weapon (QI!)
							}),
							o(502377, {	-- Sand Pile
								["coord"] = { 58.3, 26.3, KARESH },
								["groups"] = { i(233194) },	-- Shadowguard Weapon (QI!)
							}),
						},
					}),
					q(84900, {	-- Like a Knife Through Aether
						["sourceQuests"] = {
							84899,	-- Shadowguard Diffusion
							84898,	-- The Sands of K'aresh
						},
						["qg"] = 231445,	-- Xal'atath
						["coord"] = { 55.1, 30.4, KARESH },
						["groups"] = { i(233333) },	-- Forgecaster Wraps (QI!)
					}),
					q(84902, {	-- Adverse Instantiation
						["sourceQuests"] = { 84900 },	-- Like a Knife Through Aether
						["qg"] = 231487,	-- Locus-Walker
						["coord"] = { 48.6, 26.7, KARESH },
					}),
					q(84904, {	-- And We Will Answer
						["sourceQuests"] = { 84900 },	-- Like a Knife Through Aether
						["qg"] = 231486,	-- Soul-Scribe
						["coord"] = { 48.6, 26.8, KARESH },
						["groups"] = { i(233334) },	-- Beacon of the Wastes (PQI!)
					}),
					q(84903, {	-- Until the Sands Bleed Void
						["sourceQuests"] = { 84900 },	-- Like a Knife Through Aether
						["qg"] = 231488,	-- Alleria Windrunner
						["coord"] = { 48.6, 26.6, KARESH },
						["groups"] = {
							i(237934),	-- Locket of the Final Purge
							i(237935),	-- Void-Reckoning Necklace
						},
					}),
					q(84905, {	-- To Walk Among Shadow
						["sourceQuests"] = {
							84902,	-- Adverse Instantiation
							84904,	-- And We Will Answer
							84903,	-- Until the Sands Bleed Void
						},
						["qg"] = 231492,	-- Locus-Walker
						["coord"] = { 48.2, 19.4, KARESH },
					}),
					q(84906, {	-- Nexus Regicide
						["sourceQuests"] = { 84905 },	-- To Walk Among Shadow
						["qg"] = 231505,	-- Alleria Windrunner
						["coord"] = { 48.2, 19.1, KARESH },
						["groups"] = {
							i(237936),	-- Fallen Prince's Crown
							i(237938),	-- Fallen Prince's Headplate
							i(237937),	-- Fallen Prince's Helm
							i(237939),	-- Fallen Prince's Mask
						},
					}),
					q(85037, {	-- That's a Wrap
						["sourceQuests"] = { 84906 },	-- Nexus Regicide
						["qg"] = 231520,	-- Xal'atath
						["coord"] = { 44.2, 18.5, KARESH },
					}),
					------ Stay awhile and listen ------
					hqt(90614, {	-- Stay awhile and listen: Locus-Walker
						["name"] = "Stay awhile and listen: Locus-Walker",
						["description"] = "Dialogue becomes available after you accept 'That's a Wrap' (85037).",
						["sourceQuests"] = { 84906 },	-- Nexus Regicide
						["qg"] = 231524,	-- Locus-Walker
						["coord"] = { 42.9, 21.6, KARESH },
					}),
				})),
				header(HEADERS.AchCriteria, 41970.05, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART } }, {	-- Chapter 5: The Light of K'aresh
					q(86820, {	-- Manaforge Omega: Dimensius Looms
						["sourceQuests"] = { 85037 },	-- That's a Wrap
						["qg"] = 231522,	-- Alleria Windrunner
						["coord"] = { 42.9, 21.5, KARESH },
						["groups"] = {
							i(231769),	-- Enchanted Runed Ethereal Crest
							i(236954),	-- Void-Touched Valorstone
						},
					}),
					q(86456, {	-- An Elegy for a Silent World
						["provider"] = { "i", 234273 },	-- A Dimmed Crystal
					}),
					------ Stay awhile and listen ------
					hqt(90753, {	-- Stay awhile and listen: Alleria Windrunner
						["name"] = "Stay awhile and listen: Alleria Windrunner",
						["description"] = "Dialogue becomes available after you accept 'An Elegy for a Silent World' (86456).",
						["sourceQuest"] = 86456,	-- An Elegy for a Silent World
						["qg"] = 243653,	-- Alleria Windrunner
						["coord"] = { 75.4, 33.7, KARESH },
					}),
					q(86457, {	-- A Lullaby of Hope
						["sourceQuest"] = 86456,	-- An Elegy for a Silent World
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(86458, {	-- A Song for Our Future
						["sourceQuest"] = 86457,	-- A Lullaby of Hope
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { campsite(119) },	-- The Fate of the Devoured (CS!)
					}),
					------ Stay awhile and listen ------
					hqt(90708, {	-- Stay awhile and listen: Ve'nari
						["name"] = "Stay awhile and listen: Ve'nari",
						["sourceQuest"] = 86458,	-- A Song for Our Future
						["qg"] = 235155,	-- Ve'nari
						["maps"] = { 2449 },	-- Eco-Dome Al'dani
					}),
				})),
				n(REWARDS, {
					currency(3278),	-- Ethereal Strands
				}),
			}),
			header(HEADERS.Achievement, 41808, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART } }, {	-- Otherworldly Ecologist
				q(87290, {	-- The Oasis
					["sourceQuests"] = { 85037 },	-- That's a Wrap
					["qg"] = 238212,	-- Om'talad
					["coord"] = { 39.4, 24.2, KARESH_TAZAVESH },
				}),
				q(87337, {	-- Custodian Duties
					["sourceQuests"] = { 87290 },	-- The Oasis
					["qg"] = 238209,	-- Cartel Om Custodian
					["coord"] = { 75.9, 34.3, KARESH },
					["groups"] = {
						o(516700, {	-- Oasis Animal Leavings
							i(236416),	-- Oasis Animal Leavings (QI!)
						}),
					},
				}),
				q(87338, {	-- Day One Orientation
					["sourceQuests"] = { 87337 },	-- Custodian Duties
					["qg"] = 231820,	-- Ve'nari
					["coord"] = { 75.9, 34.2, KARESH },
				}),
				q(87339, {	-- Ongoing Activities
					["sourceQuests"] = { 87337 },	-- Custodian Duties
					["qg"] = 231820,	-- Ve'nari
					["coord"] = { 75.9, 34.2, KARESH },
					["groups"] = {
						o(516792, {	-- Watering Jug
							["coord"] = { 73.0, 33.0, KARESH },
							["groups"] = { i(236641) },	-- Watering Jug (QI!)
						}),
					},
				}),
				q(87340, {	-- Junk Mail
					["sourceQuests"] = {
						87338,	-- Day One Orientation
						87339,	-- Ongoing Activities
					},
					["qg"] = 231820,	-- Ve'nari
					["coord"] = { 75.9, 34.2, KARESH },
				}),
				-- Following headers are placed in order of completion
				header(HEADERS.AchCriteria, 41808.01, {	-- The Bees Knees
					q(85075, {	-- To Stormsong
						["sourceQuests"] = { 87340 },	-- Junk Mail
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(230030) },	-- Cartel Ve Communicator (PQI!)
					}),
					q(85076, {	-- Don't Bee Crazy
						["sourceQuests"] = { 85075 },	-- To Stormsong
						["qg"] = 231919,	-- Botanist Alaenra
						["coord"] = { 72.4, 69.9, STORMSONG_VALLEY },
					}),
					q(85077, {	-- Sticky Fingers
						["sourceQuests"] = { 85075 },	-- To Stormsong
						["qg"] = 231919,	-- Botanist Alaenra
						["coord"] = { 72.4, 69.9, STORMSONG_VALLEY },
						["groups"] = { i(230053) },	-- Honey Globule (QI!)
					}),
					q(85078, {	-- Bee in the Bonnet
						["sourceQuests"] = {
							85076,	-- Don't Bee Crazy
							85077,	-- Sticky Fingers
						},
						["qg"] = 231919,	-- Botanist Alaenra
						["coord"] = { 72.4, 69.9, STORMSONG_VALLEY },
					}),
					q(85079, {	-- Such a Sleebee-head
						["sourceQuests"] = {
							85076,	-- Don't Bee Crazy
							85077,	-- Sticky Fingers
						},
						["qg"] = 231919,	-- Botanist Alaenra
						["coord"] = { 72.4, 69.9, STORMSONG_VALLEY },
						["groups"] = {
							o(475164, {	-- Ve'nari's Package
								["coord"] = { 72.5, 69.8, STORMSONG_VALLEY },
								["groups"] = { i(230210) },	-- Tranquilizing Dart (PQI!)
							}),
						},
					}),
					q(85080, {	-- An Un-Bee-lievable Solution
						["sourceQuests"] = {
							85078,	-- Bee in the Bonnet
							85079,	-- Such a Sleebee-head
						},
						["qg"] = 231919,	-- Botanist Alaenra
						["coord"] = { 72.6, 65.8, STORMSONG_VALLEY },
						["groups"] = {
							o(475213, {	-- Ve'nari's Package
								["coord"] = { 72.7, 65.8, STORMSONG_VALLEY },
								["groups"] = { i(229424) },	-- Anima Vacuum (PQI!)
							}),
						},
					}),
					q(85081, {	-- Beehemian Rhapsody
						["sourceQuests"] = {
							85078,	-- Bee in the Bonnet
							85079,	-- Such a Sleebee-head
						},
						["qg"] = 231919,	-- Botanist Alaenra
						["coord"] = { 72.6, 65.8, STORMSONG_VALLEY },
						["groups"] = {
							o(475207, {	-- Honey Pot
								["coord"] = { 72.6, 66.0, STORMSONG_VALLEY },
								["groups"] = { i(230549) },	-- Queen Bee in a Jar (QI!)
							}),
						},
					}),
					q(85082, {	-- To K'aresh
						["sourceQuests"] = {
							85080,	-- An Un-Bee-lievable Solution
							85081,	-- Beehemian Rhapsody
						},
						["qg"] = 231919,	-- Botanist Alaenra
						["coord"] = { 72.6, 65.8, STORMSONG_VALLEY },
					}),
					q(85249, {	-- A Bee Test
						["sourceQuests"] = { 85082 },	-- To K'aresh
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(85084, {	-- Bee Strong
						["sourceQuests"] = { 85249 },	-- A Bee Test
						["qg"] = 231919,	-- Botanist Alaenra
						["coord"] = { 48.4, 61.2, KARESH },
						["groups"] = {
							o(475250, {	-- Honey Pot
								["coord"] = { 48.4, 61.2, KARESH },
								["groups"] = { i(230732) },	-- Honey (PQI!)
							}),
						},
					}),
					q(85083, {	-- Photogra-Bee
						["sourceQuests"] = { 85249 },	-- A Bee Test
						["qg"] = 231919,	-- Botanist Alaenra
						["coord"] = { 48.4, 61.2, KARESH },
						["groups"] = { i(230729) },	-- Appropriated Azerothian Camera (PQI!)
					}),
					q(85257, {	-- Primus Buzzness
						["sourceQuests"] = {
							85084,	-- Bee Strong
							85083,	-- Photogra-Bee
						},
						["qg"] = 231919,	-- Botanist Alaenra
						["coord"] = { 48.4, 61.2, KARESH },
					}),
					q(85255, {	-- Tranquila-Bee
						["sourceQuests"] = { 85257 },	-- Primus Buzzness
						["qg"] = 231919,	-- Botanist Alaenra
						["coord"] = { 49.0, 57.2, KARESH },
						["groups"] = { i(230210) },	-- Tranquilizing Dart (PQI!)
					}),
					q(85256, {	-- Botany, Finally
						["sourceQuests"] = { 85257 },	-- Primus Buzzness
						["qg"] = 231919,	-- Botanist Alaenra
						["coord"] = { 49.0, 57.2, KARESH },
						["groups"] = {
							o_repeated({
								i(230809),	-- K'aresh Flora Cutting (QI!)
								o(475321),	-- Crystalbloom
								o(475324),	-- Firebud
								o(475317),	-- K'aresh Bellflower
								o(475314),	-- Pricklebloom
							}),
						},
					}),
					q(89348, {	-- Let There Bee Love
						["sourceQuests"] = {
							85255,	-- Tranquila-Bee
							85256,	-- Botany, Finally
						},
						["qg"] = 231919,	-- Botanist Alaenra
						["coord"] = { 49.0, 57.2, KARESH },
					}),
					q(85258, {	-- Oh Honey Honey
						["sourceQuests"] = { 89348 },	-- Let There Bee Love
						["qg"] = 232385,	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
						["groups"] = {
							o_repeated({	-- Honeycomb
								["coords"] = {
									{ 75.3, 29.0, KARESH },
									{ 76.1, 29.4, KARESH },
									{ 76.3, 30.4, KARESH },
								},
								["groups"] = {
									i(230907),	-- Honeycomb (QI!)
									o(475391),	-- Honeycomb
									o(475392),	-- Honeycomb
									o(475393),	-- Honeycomb
								},
							}),
						},
					}),
					------ Stay awhile and listen ------
					hqt(89305, {	-- Stay awhile and listen: Botanist Alaenra
						["name"] = "Stay awhile and listen: Botanist Alaenra",
						["description"] = "Dialogue becomes available after you accept 'Oh Honey Honey' (85258).",
						["sourceQuests"] = { 89348 },	-- Let There Bee Love
						["qg"] = 232385,	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
					}),
					--
					q(85259, {	-- Waggle Dance
						["sourceQuests"] = { 85258 },	-- Oh Honey Honey
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
					}),
					q(85260, {	-- Hiving a Hard Day
						["sourceQuests"] = { 85259 },	-- Waggle Dance
						["qg"] = 232385,	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
					}),
					q(85261, {	-- Bee Roll
						["sourceQuests"] = { 85260 },	-- Hiving a Hard Day
						["qg"] = 232385,	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
						["groups"] = { i(231163) },	-- Appropriated Azerothian Camera (PQI!)
					}),
					q(85262, {	-- The Royal Procession
						["sourceQuests"] = { 85261 },	-- Bee Roll
						["qg"] = 232385,	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
					}),
				}),
				header(HEADERS.AchCriteria, 41808.06, {	-- Nesingwary Necessities
					q(86352, {	-- Hunting for a Good Author
						["sourceQuests"] = { 85262 },	-- The Royal Procession
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(86353, {	-- Protecting the Young
						["sourceQuests"] = { 86352 },	-- Hunting for a Good Author
						["qg"] = 234745,	-- Hemet Nesingwary
						["coord"] = { 18.8, 39.9, THE_AZURE_SPAN },
					}),
					q(86354, {	-- A Percussive Antidote
						["sourceQuests"] = { 86352 },	-- Hunting for a Good Author
						["qg"] = 234745,	-- Hemet Nesingwary
						["coord"] = { 18.8, 39.9, THE_AZURE_SPAN },
					}),
					q(84822, {	-- To Iskaara
						["sourceQuests"] = {
							86353,	-- Protecting the Young
							86354,	-- A Percussive Antidote
						},
						["qg"] = 234745,	-- Hemet Nesingwary
						["coord"] = { 18.8, 39.9, THE_AZURE_SPAN },
					}),
					q(86356, {	-- Sustainable Harvesting
						["sourceQuests"] = { 84822 },	-- To Iskaara
						["qg"] = 235290,	-- Hemet Nesingwary
						["coord"] = { 13.6, 49.1, THE_AZURE_SPAN },
						["groups"] = {
							o(504181, {	-- Fallen Log
								i(234452),	-- Chopped Wood (QI!)
							}),
						},
					}),
					q(86355, {	-- Using the Whole Animal
						["sourceQuests"] = { 84822 },	-- To Iskaara
						["qg"] = 235290,	-- Hemet Nesingwary
						["coord"] = { 13.6, 49.1, THE_AZURE_SPAN },
						["groups"] = {
							i(234457),	-- Butcher's Knife (PQI!)
							--
							i(234036),	-- Bruffalon Meat (QI!)
						},
					}),
					q(86357, {	-- Time for Noms
						["sourceQuests"] = {
							86356,	-- Sustainable Harvesting
							86355,	-- Using the Whole Animal
						},
						["qg"] = 235290,	-- Hemet Nesingwary
						["coord"] = { 13.6, 49.1, THE_AZURE_SPAN },
						["groups"] = {
							o(504191, {	-- Pile of Meat
								["coord"] = { 14.8, 48.3, THE_AZURE_SPAN },
							}),
						},
					}),
					q(86358, {	-- Any Old Excuse
						["sourceQuests"] = {
							86356,	-- Sustainable Harvesting
							86355,	-- Using the Whole Animal
						},
						["qg"] = 235290,	-- Hemet Nesingwary
						["coord"] = { 13.6, 49.1, THE_AZURE_SPAN },
					}),
					q(86359, {	-- Return to K'aresh
						["sourceQuests"] = {
							86357,	-- Time for Noms
							86358,	-- Any Old Excuse
						},
						["qg"] = 235290,	-- Hemet Nesingwary
						["coord"] = { 13.6, 49.1, THE_AZURE_SPAN },
					}),
				}),
				header(HEADERS.AchCriteria, 41808.02, {	-- Roaming Free
					q(86182, {	-- Ghost Buster
						["sourceQuests"] = { 86359 },	-- Return to K'aresh
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(229395) },	-- Slateback Essence (QI!)
					}),
					------ Stay awhile and listen ------
					hqt(89330, {	-- Stay awhile and listen: Hemet Nesingwary
						["name"] = "Stay awhile and listen: Hemet Nesingwary",
						["description"] = "Dialogue becomes available after you accept 'Ghost Buster' (86182).",
						["sourceQuests"] = { 86359 },	-- Return to K'aresh
						["qg"] = 235353,	-- Hemet Nesingwary
						["coord"] = { 75.8, 34.0, KARESH },
					}),
					--
					q(86183, {	-- The Power of Gods
						["sourceQuests"] = { 86182 },	-- Ghost Buster
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(86184, {	-- Diminishing Returns
						["sourceQuests"] = { 86183 },	-- The Power of Gods
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(232432) },	-- Condenser Disc (PQI!)
					}),
					q(86185, {	-- Running Free
						["sourceQuests"] = { 86184 },	-- Diminishing Returns
						["qg"] = 235353,	-- Hemet Nesingwary
						["coord"] = { 75.8, 34.0, KARESH },
					}),
					q(86186, {	-- The Super Sniffer
						["sourceQuests"] = { 86185 },	-- Running Free
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(86187, {	-- The Smallest Possible Effort
						["sourceQuests"] = { 86186 },	-- The Super Sniffer
						["qg"] = 234272,	-- Rhubarn
						["coord"] = { 77.6, 61.8, AZJ_KAHET },
						["groups"] = {
							i(232992, {	-- Large Bug Bits (QI!)
								i(232990),	-- Bug Bits (QI!)
							}),
						},
					}),
					q(86188, {	-- More-shrooms
						["sourceQuests"] = { 86186 },	-- The Super Sniffer
						["qg"] = 234272,	-- Rhubarn
						["coord"] = { 77.6, 61.8, AZJ_KAHET },
						["groups"] = {
							o(500744, {	-- Rak-ush Mushroom
								i(233010),	-- Rak-ush Mushroom (QI!)
							}),
						},
					}),
					q(86189, {	-- Fungal Invasion
						["sourceQuests"] = {
							86187,	-- The Smallest Possible Effort
							86188,	-- More-shrooms
						},
						["qg"] = 234272,	-- Rhubarn
						["coord"] = { 77.6, 61.8, AZJ_KAHET },
					}),
					q(86190, {	-- One Mushroom to Rule Them All
						["sourceQuests"] = {
							86187,	-- The Smallest Possible Effort
							86188,	-- More-shrooms
						},
						["qg"] = 234272,	-- Rhubarn
						["coord"] = { 77.6, 61.8, AZJ_KAHET },
						["groups"] = {
							o(500779, {	-- Voshshroom
								["coord"] = { 54.1, 16.5, AZJ_KAHET },
								["groups"] = {
									i(233011),	-- Voshshroom (QI!)
								},
							}),
						},
					}),
					q(86191, {	-- Smell Ya Later
						["sourceQuests"] = {
							86189,	-- Fungal Invasion
							86190,	-- One Mushroom to Rule Them All
						},
						["qg"] = 234272,	-- Rhubarn
						["coord"] = { 77.6, 61.8, AZJ_KAHET },
					}),
					q(86194, {	-- The Scent of Love
						["sourceQuests"] = { 86191 },	-- Smell Ya Later
						["qg"] = 234316,	-- Rhubarn
						["coord"] = { 75.9, 34.6, KARESH },
						["groups"] = { i(233195) },	-- Pheromone Disperser (PQI!)
					}),
					q(86192, {	-- On a Bed of Bones They Lie
						["sourceQuests"] = { 86194 },	-- The Scent of Love
						["qg"] = 234316,	-- Rhubarn
						["coord"] = { 75.9, 34.6, KARESH },
						["groups"] = {
							i(233016),	-- Creature Bones (QI!)
							o(502399, {	-- Pile of Bones
								["coord"] = { 73.1, 32.5, KARESH },
							}),
						},
					}),
					q(86195, {	-- Slateback Soccer
						["sourceQuests"] = { 86192 },	-- On a Bed of Bones They Lie
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["groups"] = { i(229420) },	-- Anima Orb (PQI!)
					}),
					------ Stay awhile and listen ------
					hqt(89292, {	-- Stay awhile and listen: Rhubarn
						["name"] = "Stay awhile and listen: Rhubarn",
						["description"] = "Dialogue becomes available after you accept 'Slateback Soccer' (86195).",
						["sourceQuests"] = { 86192 },	-- On a Bed of Bones They Lie
						["qg"] = 234316,	-- Rhubarn
						["coord"] = { 75.9, 34.6, KARESH },
					}),
					--
				}),
				header(HEADERS.AchCriteria, 41808.03, {	-- Fox-strut
					q(86348, {	-- Fox Bane
						["sourceQuests"] = { 86195 },	-- Slateback Soccer
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(237896) },	-- Thorntail Essence (QI!)
					}),
					q(86350, {	-- Eau de Foxy
						["sourceQuests"] = { 86348 },	-- Fox Bane
						["qg"] = 234316,	-- Rhubarn
						["coord"] = { 75.9, 34.6, KARESH },
						["groups"] = { i(233487) },	-- Pheromone Disperser (PQI!)
					}),
					q(86362, {	-- What Does the Fox Dream?
						["sourceQuests"] = { 86350 },	-- Eau de Foxy
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["groups"] = { i(233552) },	-- Tranquilizing Dart (PQI!)
					}),
					q(86351, {	-- Strike a Pose
						["sourceQuests"] = { 86362 },	-- What Does the Fox Dream?
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["groups"] = { i(233488) },	-- Appropriated Azerothian Camera (PQI!)
					}),
					q(86360, {	-- Fantastic Ms. Fox
						["sourceQuests"] = { 86351 },	-- Strike a Pose
						["qg"] = 235353,	-- Hemet Nesingwary
						["coord"] = { 75.8, 34.0, KARESH },
					}),
					q(86361, {	-- Are You Kitting Me?
						["sourceQuests"] = { 86360 },	-- Fantastic Ms. Fox
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["groups"] = { i(229420) },	-- Anima Orb (PQI!)
					}),
					q(86392, {	-- Foxy Footwork
						["sourceQuests"] = { 86361 },	-- Are You Kitting Me?
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
					}),
				}),
				header(HEADERS.AchCriteria, 41808.04, {	-- Lil' Lapbugs
					q(86349, {	-- Lapbug Essence Hunter
						["sourceQuests"] = { 86195 },	-- Slateback Soccer
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(229393) },	-- Lapbug Essence (QI!)
					}),
					q(87292, {	-- Rooting for Trouble
						["sourceQuests"] = { 86349 },	-- Lapbug Essence Hunter
						["qg"] = 232385,	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
					}),
					q(87291, {	-- Salad Bar
						["sourceQuests"] = {
							87292,	-- Rooting for Trouble
							86351,	-- Strike a Pose
						},
						["qg"] = 232385,	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
						["groups"] = {
							o_repeated({
								i(235914),	-- Chopped Oasis Plants (QI!)
								o(516304),	-- Lustrous Conker
								o(516302),	-- Pricklebloom
							}),
							-- Exo Note: Objective 2 is "Plant Platter placed". They don't trigger reports (currently?) so I don't know which is which.
							-- Plant Platter ObjectID: 516306, 523779, 523780. Coords: 73.0, 31.5 / 72.0, 33.5 / 72.9, 34.4
						},
					}),
					q(87293, {	-- Shameless Hawking
						["sourceQuests"] = { 87291 },	-- Salad Bar
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(87294, {	-- A Truth Universally Acknowledged
						["sourceQuests"] = { 87293 },	-- Shameless Hawking
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(236406) },	-- Appropriated S.E.L.F.I.E. Camera (PQI!)
					}),
				}),
				header(HEADERS.AchCriteria, 41808.05, {	-- Rays of Sunshine
					q(86587, {	-- To Maldraxxus
						["sourceQuests"] = {
							86392,	-- Foxy Footwork
							87294,	-- A Truth Universally Acknowledged
						},
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(86589, {	-- A Plague a Day Keeps the Doctor Away
						["sourceQuests"] = { 86587 },	-- To Maldraxxus
						["qg"] = 235860,	-- Plague Deviser Marileth
						["coord"] = { 69.0, 48.5, MALDRAXXUS },
						["groups"] = {
							o(505258, {	-- Pestilential Necroray
								i(234815),	-- Plague Sample (QI!)
							}),
						},
					}),
					q(86590, {	-- I Don't Even Work Here
						["sourceQuests"] = { 86587 },	-- To Maldraxxus
						["qg"] = 235860,	-- Plague Deviser Marileth
						["coord"] = { 69.0, 48.5, MALDRAXXUS },
						["groups"] = { i(234944) },	-- Rancor Essence (QI!)
					}),
					q(86588, {	-- Ritualistic Murder
						["sourceQuests"] = { 86587 },	-- To Maldraxxus
						["qg"] = 235860,	-- Plague Deviser Marileth
						["coord"] = { 69.0, 48.5, MALDRAXXUS },
					}),
					q(86591, {	-- A Poor Imitation
						["sourceQuests"] = {
							86589,	-- A Plague a Day Keeps the Doctor Away
							86590,	-- I Don't Even Work Here
							86588,	-- Ritualistic Murder
						},
						["qg"] = 235860,	-- Plague Deviser Marileth
						["coord"] = { 69.0, 48.5, MALDRAXXUS },
					}),
					q(86592, {	-- Get Your Jabs
						["sourceQuests"] = { 86591 },	-- A Poor Imitation
						["qg"] = 235860,	-- Plague Deviser Marileth
						["coord"] = { 69.0, 48.5, MALDRAXXUS },
					}),
					q(86593, {	-- To the Oasis
						["sourceQuests"] = { 86592 },	-- Get Your Jabs
						["qg"] = 235860,	-- Plague Deviser Marileth
						["coord"] = { 69.0, 48.5, MALDRAXXUS },
					}),
					q(86782, {	-- Atrium Hospital
						["sourceQuests"] = { 86593 },	-- To the Oasis
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(86594, {	-- A Cultured Palette
						["sourceQuests"] = { 86782 },	-- Atrium Hospital
						["qg"] = 236846,	-- Hemet Nesingwary
						["coord"] = { 48.5, 61.1, KARESH },
						["groups"] = {
							o(507176, {	-- Crate of Food
								["coord"] = { 48.5, 61.3, KARESH },
								["groups"] = { i(235370) },	-- Crate of Food (QI!)
							}),
							o(507178, {	-- Bowl of Succulents
								["coord"] = { 47.6, 61.6, KARESH },
							}),
							o(507220, {	-- Chopped Plants
								["coord"] = { 48.5, 62.5, KARESH },
							}),
							o(507219, {	-- Slab of Meat
								["coord"] = { 48.0, 63.3, KARESH },
							}),
						},
					}),
					q(86595, {	-- Custodial Duties
						["sourceQuests"] = { 86782 },	-- Atrium Hospital
						["qg"] = 236846,	-- Hemet Nesingwary
						["coord"] = { 48.5, 61.1, KARESH },
						["groups"] = { i(235384) },	-- Anima Vacuum (PQI!)
					}),
					q(86783, {	-- Rays of Sunshine
						["sourceQuests"] = {
							86594,	-- A Cultured Palette
							86595,	-- Custodial Duties
						},
						["qg"] = 236846,	-- Hemet Nesingwary
						["coord"] = { 48.5, 61.1, KARESH },
					}),
					q(86602, {	-- Medical Checkup
						["sourceQuests"] = { 86783 },	-- Rays of Sunshine
						["qg"] = 236890,	-- Hemet Nesingwary
						["coord"] = { 49.0, 57.0, KARESH },
						["groups"] = {
							i(235410),	-- Lapbug Molting (QI!)
							i(235408),	-- Slateback Fur (QI!)
							i(235409),	-- Thorntail Fur (QI!)
						},
					}),
					q(86601, {	-- Triple Twenty
						["sourceQuests"] = { 86783 },	-- Rays of Sunshine
						["qg"] = 236890,	-- Hemet Nesingwary
						["coord"] = { 49.0, 57.0, KARESH },
						["groups"] = { i(235411) },	-- Tagging Dart (PQI!)
					}),
					q(86603, {	-- Ray-ket Ball
						["sourceQuests"] = {
							86602,	-- Medical Checkup
							86601,	-- Triple Twenty
						},
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["groups"] = { i(229420) },	-- Anima Orb (PQI!)
					}),
					q(86604, {	-- Dubious Intent
						["sourceQuests"] = { 86603 },	-- Ray-ket Ball
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = {
							i(235500),	-- Tranquilizing Dart (PQI!)
							i(235501),	-- Necroray Gunk (QI!)
						},
					}),
					q(86605, {	-- Booster Shots
						["sourceQuests"] = { 86604 },	-- Dubious Intent
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["groups"] = { i(235851) },	-- Lasso (PQI!)
					}),
					q(86606, {	-- The Golden Ooze
						["sourceQuests"] = { 86605 },	-- Booster Shots
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(235384) },	-- Anima Vacuum (PQI!)
					}),
					q(86607, {	-- The Freedom of Ray-cing
						["sourceQuests"] = { 86606 },	-- The Golden Ooze
						["qg"] = 235353,	-- Hemet Nesingwary
						["coord"] = { 75.8, 34.0, KARESH },
					}),
				}),
				header(HEADERS.AchCriteria, 41808.07, {	-- Hard K'arroc
					q(87408, {	-- Being Spiritual
						["sourceQuests"] = { 86607 },	-- The Freedom of Ray-cing
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(229396) },	-- Flyer Essence (QI!)
					}),
					q(87409, {	-- From Death, Life
						["sourceQuests"] = { 87408 },	-- Being Spiritual
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(87410, {	-- Percussive Negotiation
						["sourceQuests"] = { 87409 },	-- From Death, Life
						["qg"] = 235353,	-- Hemet Nesingwary
						["coord"] = { 75.8, 34.0, KARESH },
						["groups"] = { i(237010) },	-- Void Shielding Part (QI!)
					}),
					q(87411, {	-- Making Stuff to Look Tough
						["sourceQuests"] = { 87410 },	-- Percussive Negotiation
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = {
							o(517446, {	-- Void Shield
								["coord"] = { 79.9, 32.4, KARESH },
								["groups"] = { i(237021) },	-- Void Shield (QI!)
							}),
						},
					}),
					q(87412, {	-- K'arrocing Photos
						["sourceQuests"] = { 87411 },	-- Making Stuff to Look Tough
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["groups"] = { i(237012) },	-- Appropriated Azerothian Camera (PQI!)
					}),
					q(87413, {	-- Bird Bath
						["sourceQuests"] = { 87412 },	-- K'arrocing Photos
						["qg"] = 234316,	-- Rhubarn
						["coord"] = { 75.9, 34.6, KARESH },
						["groups"] = { i(237013) },	-- Anima Vacuum (PQI!)
					}),
					q(87414, {	-- Medical Maneuvers
						["sourceQuests"] = { 87413 },	-- Bird Bath
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["groups"] = { i(237030) },	-- Condenser Disc (PQI!)
					}),
					q(87415, {	-- The Skies of K'aresh
						["sourceQuests"] = { 87414 },	-- Medical Maneuvers
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
					}),
				}),
				header(HEADERS.AchCriteria, 41808.08, {	-- A Slither of Snakes
					q(88655, {	-- Outbound for Outland
						["sourceQuests"] = { 87415 },	-- The Skies of K'aresh
						["qg"] = 235353,	-- Hemet Nesingwary
						["coord"] = { 75.8, 34.0, KARESH },
					}),
					q(88656, {	-- Comfort Stones
						["sourceQuests"] = { 88655 },	-- Outbound for Outland
						["qg"] = 18180,	-- Hemet Nesingwary
						["coord"] = { 71.5, 40.8, NAGRAND },
						["groups"] = { i(237572) },	-- Smooth Stone (QI!)
					}),
					q(88658, {	-- Sneks and Things
						["sourceQuests"] = { 88655 },	-- Outbound for Outland
						["qg"] = 18180,	-- Hemet Nesingwary
						["coord"] = { 71.5, 40.8, NAGRAND },
						["groups"] = {
							o(523415, {	-- Fragrant Dreaming Glory
								i(237604),	-- Fragrant Dreaming Glory (QI!)
							}),
							o(523414, {	-- Snake Nest
								i(237601),	-- Nagrand Snake (QI!)
							}),
						},
					}),
					q(88657, {	-- Zangarmoss
						["sourceQuests"] = {
							88656,	-- Comfort Stones
							88658,	-- Sneks and Things
						},
						["qg"] = 18180,	-- Hemet Nesingwary
						["coord"] = { 71.5, 40.8, NAGRAND },
						["groups"] = {
							o(523494, {	-- Marsh Moss
								i(237757),	-- Marsh Moss (QI!)
							}),
						},
					}),
					q(88660, {	-- Snakes on a Plane
						["sourceQuests"] = { 88657 },	-- Zangarmoss
						["qg"] = 18180,	-- Hemet Nesingwary
						["coord"] = { 71.5, 40.8, NAGRAND },
					}),
					q(88661, {	-- To the Atrium
						["sourceQuests"] = { 88660 },	-- Snakes on a Plane
						["qg"] = 18180,	-- Hemet Nesingwary
						["coord"] = { 71.5, 40.8, NAGRAND },
					}),
					q(88662, {	-- What's in a Name?
						["sourceQuests"] = { 88661 },	-- To the Atrium
						["qg"] = 236846,	-- Hemet Nesingwary
						["coord"] = { 48.5, 61.1, KARESH },
					}),
					q(88663, {	-- Scales and Measures
						["sourceQuests"] = { 88662 },	-- What's in a Name?
						["qg"] = 236846,	-- Hemet Nesingwary
						["coord"] = { 48.5, 61.1, KARESH },
					}),
					q(88664, {	-- Nagrandification
						["sourceQuests"] = { 88662 },	-- What's in a Name?
						["qg"] = 236846,	-- Hemet Nesingwary
						["coord"] = { 48.5, 61.1, KARESH },
					}),
					q(88665, {	-- Follow Your Tongue
						["sourceQuests"] = {
							88663,	-- Scales and Measures
							88664,	-- Nagrandification
						},
						["qg"] = 236846,	-- Hemet Nesingwary
						["coord"] = { 48.5, 61.1, KARESH },
					}),
					q(88666, {	-- Mossy Beds
						["sourceQuests"] = { 88665 },	-- Follow Your Tongue
						["qg"] = 236890,	-- Hemet Nesingwary
						["coord"] = { 49.0, 57.0, KARESH },
						["groups"] = { o(523689) },	-- Mossy Snake Bed
					}),
					q(88667, {	-- Water Snakes
						["sourceQuests"] = { 88665 },	-- Follow Your Tongue
						["qg"] = 236890,	-- Hemet Nesingwary
						["coord"] = { 49.0, 57.0, KARESH },
						["groups"] = { i(237898) },	-- Hemet's Waterin' Can (PQI!)
					}),
					q(88668, {	-- Ophidian Portation
						["sourceQuests"] = {
							88666,	-- Mossy Beds
							88667,	-- Water Snakes
						},
						["qg"] = 236890,	-- Hemet Nesingwary
						["coord"] = { 49.0, 57.0, KARESH },
					}),
					q(88669, {	-- Nesting Time
						["sourceQuests"] = { 88668 },	-- Ophidian Portation
						["qg"] = 235353,	-- Hemet Nesingwary
						["coord"] = { 75.8, 34.0, KARESH },
						["groups"] = {
							o(523827, {	-- Comfy Snake Bed
								["coord"] = { 74.5, 31.2, KARESH },
							}),
						},
					}),
					q(88670, {	-- Soothing Serpents
						["sourceQuests"] = { 88668 },	-- Ophidian Portation
						["qg"] = 235353,	-- Hemet Nesingwary
						["coord"] = { 75.8, 34.0, KARESH },
						["groups"] = { i(238216) },	-- Hemet's Soothin' Flute (PQI!)
					}),
					q(88671, {	-- Eggstra Eggs
						["sourceQuests"] = {
							88669,	-- Nesting Time
							88670,	-- Soothing Serpents
						},
						["qg"] = 235353,	-- Hemet Nesingwary
						["coord"] = { 75.8, 34.0, KARESH },
						["groups"] = {
							o(524223, {	-- K'arroc Egg
								i(238242),	-- K'arroc Egg (QI!)
							}),
						},
					}),
					q(88672, {	-- Snakelets!
						["sourceQuests"] = { 88671 },	-- Eggstra Eggs
						["qg"] = 235353,	-- Hemet Nesingwary
						["coord"] = { 75.8, 34.0, KARESH },
					}),
				}),
				q(88974, {	-- Eco-Stability
					["qg"] = 231820,	-- Ve'nari
					["coord"] = { 75.9, 34.2, KARESH },
				}),
			})),
			header(HEADERS.Achievement, 41811, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART } }, {	-- Ecological Stability
				-- Exo Note: These are Achievement criteria. They don't appear as quests when you do /att q: in-game
				-- @Myrhial, This is a job for you, Mistress...
				q(84744),	-- A Slither of Snakes
				q(84742),	-- Fox-strut
				q(86793),	-- Hard K'arroc
				q(84745),	-- Honey Bees (Move to HQT? Triggered when "Honey Bees" criteria for the ach is fulfilled)
				q(85520),	-- Lil' Lapbugs
				q(89306),	-- Rays of Sunshine
				q(84992),	-- Slatebacks
			})),
			header(HEADERS.Achievement, 41809, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0_SEASONSTART } }, {	-- Ecological Variety (Daily Quests) Exo note: These are probably weekly quests, not daily.
				header(HEADERS.AchCriteria, 41809.01, {	-- Honey Bees
					q(90545, {	-- A Reel Problem
						["description"] = "Requires Fishing profession.",
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(241352) },	-- Hydrobite (QI!)
					}),
					q(85459, {	-- Anima Reclamation Program
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(229412) },	-- Devourer Anima (QI!)
					}),
					q(89209, {	-- Bu-zzz
						["qg"] = 232385,	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
						["isDaily"] = true,
					}),
					q(85461, {	-- Food Run
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(231508) },	-- Stolen Food Shipment (QI!)
					}),
					q(89195, {	-- Funny Buzzness
						["qg"] = 232385,	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238904) },	-- Anima Vacuum (PQI!)
					}),
					q(89194, {	-- Shake your Bee-hind
						["qg"] = 232385,	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
						["isDaily"] = true,
					}),
					q(89210, {	-- Photography is the Bee's Knees
						["qg"] = 232385,	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238903) },	-- Appropriated Azerothian Camera (PQI!)
					}),
				}),
				header(HEADERS.AchCriteria, 41809.02, {	-- Slatebacks
					q(85462, {	-- A Challenge for Dominance
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["isDaily"] = true,
					}),
					q(85481, {	-- Ridge Racer
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["isDaily"] = true,
					}),
					q(85710, {	-- Sizing Them Up
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238905) },	-- Condenser Disc (PQI!)
					}),
					q(88980, {	-- Who You Gonna Call?
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(229395) },	-- Slateback Essence (QI!)
					}),
				}),
				header(HEADERS.AchCriteria, 41809.03, {	-- Fox-strut
					q(89240, {	--  Dream-Dream-Dream-Dream-Dreameringeding!
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238912) },	-- Tranquilizing Dart (PQI!)
					}),
					q(89057, {	-- Pee-Yew de Foxy
						["qg"] = 234316,	-- Rhubarn
						["coord"] = { 75.9, 34.6, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238911) },	-- Pheromone Disperser (PQI!)
					}),
					q(89212, {	-- Royal Photographer
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238906) },	-- Appropriated Azerothian Camera (PQI!)
					}),
					q(85465, {	-- Play Ball
						["isDaily"] = true,
					}),
					q(85721, {	--
						["isDaily"] = true,
					}),
				}),
				header(HEADERS.AchCriteria, 41809.04, {	-- Lil' Lapbugs
					q(89221, {	--  Leafing Things on the Ground
						["qg"] = 232385,	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
						["isDaily"] = true,
						["groups"] = {
							o_repeated({
								i(235914),	-- Chopped Oasis Plants (QI!)
								o(516304),	-- Lustrous Conker
								o(516302),	-- Pricklebloom
							}),
							-- Exo Note: Objective 2 is "Plant Platter placed". They don't trigger reports (currently?) so I don't know which is which.
							-- Plant Platter ObjectID: 516306, 523779, 523780. Coords: 73.0, 31.5 / 72.0, 33.5 / 72.9, 34.4
						},
					}),
					q(89297, {	-- Not as Cute When They Are Bigger and Angrier
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(229393) },	-- Lapbug Essence (QI!)
					}),
					q(85470, {	-- Root Redux
						["isDaily"] = true,
					}),
					q(89254, {	-- Shutterbug
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238933) },	-- Appropriated S.E.L.F.I.E. Camera (PQI!)
					}),
				}),
				header(HEADERS.AchCriteria, 41809.05, {	-- Rays of Sunshine
					q(89242, {	--  I Want a Golden Ooze!
						["qg"] = 231820,	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238916) },	-- Anima Vacuum (PQI!)
					}),
					q(89065, {	--  Ray-cing for the Future
						["qg"] = 235353,	-- Hemet Nesingwary
						["coord"] = { 75.8, 34.0, KARESH },
						["isDaily"] = true,
					}),
					q(89056, {	--  Ray-ket Ball, Redux
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238915) },	-- Anima Orb (PQI!)
					}),
					q(89197, {	--
						["isDaily"] = true,
					}),
				}),
				header(HEADERS.AchCriteria, 41809.06, {	-- Hard K'arroc
					q(89198, {	-- Dry Cleaning
						["qg"] = 234316,	-- Rhubarn
						["coord"] = { 75.9, 34.6, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238909) },	-- Anima Vacuum (PQI!)
					}),
					q(89213, {	--  Flights of Fancy
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238908) },	-- Appropriated Azerothian Camera (PQI!)
					}),
					q(89238, {	-- Follow-up Appointment
						["qg"] = 230736,	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238913) },	-- Condenser Disc (PQI!)
					}),
					q(86342, {	--
						["isDaily"] = true,
					}),
					q(89192, {	--
						["isDaily"] = true,
					}),
				}),
				header(HEADERS.AchCriteria, 41809.07, {	-- A Slither of Snakes
					q(88659, {	-- More Cozy Beds
						["isDaily"] = true,
					}),
					q(88981, {	-- Nesting Upkeep
						["qg"] = 235353,	-- Hemet Nesingwary
						["coord"] = { 75.8, 34.0, KARESH },
						["isDaily"] = true,
					}),
					q(88975, {	--
						["isDaily"] = true,
					}),
				}),
			})),
			header(HEADERS.Achievement, 42731, {	-- Become a Hero. Become a Phasediver!
				q(90938, {	-- A Skip Through the Void
					["sourceQuests"] = { 84957 },	-- Return to the Veiled Market
					["qg"] = 241588,	-- Hashim
					["coord"] = { 50.3, 36.3, KARESH },
					["lockCriteria"] = { 1, "questID", 85003 },	-- Restoring Operational Efficiency (completing this quest will prevent using the 'skip' option, and thus locking from this skip quest)
					["DisablePartySync"] = true,
				}),
				q(89380, {	-- Another World
					--["sourceQuests"] = { ??? },	-- According to playthrough, this unlocks after HQT 91812 is Triggered
					["qg"] = 241601,	-- Shad'anis
					["coord"] = { 74.9, 31.1, KARESH },
				}),
				q(89561, {	-- Wrapped Up
					--["sourceQuests"] = { ??? },	-- According to playthrough, this unlocks after HQT 91812 is Triggered
					["qg"] = 241588,	-- Hashim
					["coord"] = { 50.3, 36.3, KARESH },
				}),
				q(89343, {	-- The Untethered Void
					["sourceQuests"] = { 89380 },	-- Another World
					["qg"] = 241624,	-- Shad'anis
					["coord"] = { 50.4, 36.3, KARESH },
				}),
				q(89344, {	-- What Doesn't See You
					["sourceQuests"] = { 89343 },	-- The Untethered Void
					["qg"] = 241624,	-- Shad'anis
					["coord"] = { 50.4, 36.3, KARESH },
					["groups"] = {
						o(543787, {	-- Phase Energy
							["coord"] = { 49.1, 37.8, KARESH },
							["groups"] = { i(244042) },	-- Phase Energy (QI!)
						}),
					},
				}),
				q(89345, {	-- The Untethered Horror
					["sourceQuests"] = { 89344 },	-- What Doesn't See You
					["qg"] = 241624,	-- Shad'anis
					["coord"] = { 50.4, 36.3, KARESH },
				}),
				q(91093, {	-- More Than Just a Phase
					["qgs"] = {
						238255,	-- Constable Zo'ardaz
						241624,	-- Shad'anis
					},
					["coords"] = {
						{ 48.6, 57.8, KARESH_TAZAVESH },	-- Constable Zo'ardaz
						{ 50.4, 36.3, KARESH },	-- Shad'anis
					},
					["isWeekly"] = true,
					["groups"] = {
						-- The only observed source of this currency is this repeatable quest
						currency(3303),	-- Untethered Coin
					},
				}),
			}),
			header(HEADERS.Achievement, 42739, {	-- Sojourner of K'aresh
				header(HEADERS.AchCriteria, 42739.01, {	-- Of Boughs and Bonds
					q(84740, {	-- Bridge to Nowhere
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 230159,	-- Om'fennad
						["coord"] = { 54.4, 63.7, KARESH },
						["groups"] = { i(229423) },	-- Echo Surveyor (PQI!)
					}),
					q(84915, {	-- Clearing the Dunes
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 230159,	-- Om'fennad
						["coord"] = { 54.4, 63.7, KARESH },
					}),
					q(84741, {	-- Signs in the Sands
						["sourceQuests"] = {
							84740,	-- Bridge to Nowhere
							84915,	-- Clearing the Dunes
						},
						["qg"] = 230159,	-- Om'fennad
						["coord"] = { 54.4, 63.7, KARESH },
						["groups"] = {
							o(469681, {	-- Footprints
								["coord"] = { 57.6, 54.0, KARESH },
							}),
						},
					}),
					q(84759, {	-- Ill-met in Starlight
						["sourceQuests"] = { 84741 },	-- Signs in the Sands
						["qg"] = 230789,	-- Shahata
						["coord"] = { 60.8, 54.3, KARESH },
					}),
					q(84761, {	-- Toil and Trespass
						["sourceQuests"] = { 84759 },	-- Ill-met in Starlight
						["qg"] = 230233,	-- Shahata
						["coord"] = { 76.4, 55.3, KARESH },
						["groups"] = {
							o(477249, {	-- Stolen Supplies
								i(237038),	-- Shahata's Supplies (QI!)
							}),
						},
					}),
					q(84760, {	-- A Friendly Warning
						["sourceQuests"] = { 84759 },	-- Ill-met in Starlight
						["qg"] = 230233,	-- Shahata
						["coord"] = { 76.4, 55.3, KARESH },
					}),
					q(84762, {	-- We Are Our Words
						["sourceQuests"] = {
							84761,	-- Toil and Trespass
							84760,	-- A Friendly Warning
						},
						["qg"] = 230233,	-- Shahata
						["coord"] = { 76.3, 55.3, KARESH },
						["groups"] = {
							o(469724, {	-- Damaged Echo Surveyor
								["coord"] = { 76.4, 55.2, KARESH },
								["groups"] = { i(237127) },	-- Damaged Echo Surveyor (QI!)
							}),
						},
					}),
					q(84820, {	-- By Oath and Blood
						["sourceQuests"] = { 84762 },	-- We Are Our Words
						["qg"] = 230233,	-- Shahata
						["coord"] = { 76.4, 55.2, KARESH },
					}),
					q(84765, {	-- Of Bonds and Boughs
						["sourceQuests"] = { 84820 },	-- By Oath and Blood
						["qg"] = 230159,	-- Om'fennad
						["coord"] = { 73.8, 53.3, KARESH },
						["groups"] = {
							i(245715),	-- Cinch of the First Oath
							i(245713),	-- Cord of the First Oath
							i(245716),	-- Girdle of the First Oath
							i(245714),	-- Sash of the First Oath
						},
					}),
				}),
				header(HEADERS.AchCriteria, 42739.02, {	-- On a Technicality
					q(85429, {	-- Overwhelm Them
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 232498,	-- Associate Xy'nell
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
					}),
					q(85430, {	-- Mandatory Time Off
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 232498,	-- Associate Xy'nell
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
					}),
					q(85431, {	-- Drain Their Resources
						["sourceQuests"] = {
							85429,	-- Overwhelm Them
							85430,	-- Mandatory Time Off
						},
						["qg"] = 232498,	-- Associate Xy'nell
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
						["groups"] = { i(232609) },	-- Overflowing Anima Core (QI!)
					}),
					q(85432, {	-- Confuse Their Contacts
						["sourceQuests"] = {
							85429,	-- Overwhelm Them
							85430,	-- Mandatory Time Off
						},
						["qg"] = 232498,	-- Associate Xy'nell
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
						["groups"] = { i(232644) },	-- Broker Disguise Pin (PQI!)
					}),
					q(85433, {	-- Eyes on Us
						["sourceQuests"] = {
							85431,	-- Drain Their Resources
							85432,	-- Confuse Their Contacts
						},
						["qg"] = 232498,	-- Associate Xy'nell
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
					}),
					q(85434, {	-- On a Technicality
						["sourceQuests"] = { 85433 },	-- Eyes on Us
						["qg"] = 232498,	-- Associate Xy'nell
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
						["groups"] = {
							i(245718),	-- Breeches of the Auditbreaker
							i(245719),	-- Greaves of the Auditbreaker
							i(245720),	-- Legguards of the Auditbreaker
							i(245717),	-- Legwraps of the Auditbreaker
						},
					}),
				}),
				header(HEADERS.AchCriteria, 42739.03, {	-- In Search of Darkness
					q(90972, {	-- A Common Cause
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 248153,	-- Magister Umbric
						["coord"] = { 60.9, 27.7, KARESH },
					}),
					q(86786, {	-- The Void Hunter
						["sourceQuests"] = { 90972 },	-- A Common Cause
						["qg"] = 240842,	-- Leona Darkstrider
						["coord"] = { 59.3, 24.2, KARESH },
						["groups"] = { i(239074) },	-- Void Lure (PQI!)
					}),
					q(89323, {	-- Wasted Lands
						["sourceQuests"] = { 86786 },	-- The Void Hunter
						["qg"] = 236907,	-- Adarus Duskblaze
						["coord"] = { 60.1, 29.7, KARESH },
					}),
					q(89324, {	-- A Piece of Something Greater
						["sourceQuests"] = { 89323 },	-- Wasted Lands
						["qg"] = 242179,	-- Adarus Duskblaze
						["coord"] = { 79.0, 53.4, KARESH },
						["groups"] = {
							i(239155),	-- Key of the Dark Sun (QI!)
							i(239153),	-- Key of the Eternal Night (QI!)
							i(239154),	-- Key of the Waning Moon (QI!)
						},
					}),
					q(89325, {	-- The Void Confluence
						["sourceQuests"] = { 89324 },	-- A Piece of Something Greater
						["qg"] = 242179,	-- Adarus Duskblaze
						["coord"] = { 79.0, 53.4, KARESH },
					}),
					q(89326, {	-- Distilled Darkness
						["sourceQuests"] = { 89325 },	-- The Void Confluence
						["qg"] = 240842,	-- Leona Darkstrider
						["coords"] = {
							{ 56.8, 24.1, KARESH },	-- Voidscar Cavern Entrance
							{ 61.9, 53.0, 2477 },	-- Voidscar Cavern
						},
					}),
					q(89327, {	-- Chaos
						["sourceQuests"] = { 89326 },	-- Distilled Darkness
						["qg"] = 240842,	-- Leona Darkstrider
						["coords"] = {
							{ 62.0, 53.0, 2477 },	-- Voidscar Cavern
						},
					}),
					q(91044, {	-- Hunger of the Void
						["sourceQuests"] = { 89327 },	-- Chaos
						["qg"] = 240842,	-- Leona Darkstrider
						["coords"] = {
							{ 62.0, 53.1, 2477 },	-- Voidscar Cavern
						},
						["groups"] = {
							i(245732),	-- Sabatons of the Endless Hunger
							i(245729),	-- Sandals of the Endless Hunger
							i(245731),	-- Striders of the Endless Hunger
							i(245730),	-- Waders of the Endless Hunger
						},
					}),
				}),
				header(HEADERS.AchCriteria, 42739.04, {	-- Untethered Potential
					q(91314, {	-- Untethered Potential
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 246601,	-- Researcher Essarae
						["coord"] = { 59.9, 29.1, KARESH },
						["groups"] = { i(246244) },	-- Phase-Altered Essence (QI!)
					}),
					q(91454, {	-- Phase-Lost Adventurer
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "i", 246589 },	-- Half-Digested Journal (QS!)
					}),
				}),
				header(HEADERS.AchCriteria, 42739.05, {	-- Chasing Echoes
					q(85006, {	-- Those We Have Lost
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 231314,	-- Om'dalan
						["coord"] = { 51.9, 64.8, KARESH },
						["groups"] = { i(229969) },	-- Flickering Essence (QI!)
					}),
					q(85007, {	-- Extended Reach
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 231314,	-- Om'dalan
						["coord"] = { 51.9, 64.8, KARESH },
						["groups"] = {
							o(467522, {	-- Nether Reader
								["coord"] = { 52.2, 69.5, KARESH },
							}),
							o(504074, {	-- Nether Reader
								["coord"] = { 52.0, 63.2, KARESH },
							}),
							o(504075, {	-- Nether Reader
								["coord"] = { 49.9, 64.8, KARESH },
							}),
						},
					}),
					q(85008, {	-- Machinations of Memory
						["sourceQuests"] = {
							85006,	-- Those We Have Lost
							85007,	-- Extended Reach
						},
						["qg"] = 231314,	-- Om'dalan
						["coord"] = { 51.0, 68.3, KARESH },
						["groups"] = {
							o(469871, {	-- Console Battery
								["coords"] = {
									{ 50.5, 68.9, KARESH },
									{ 50.7, 68.4, KARESH },
									{ 50.8, 69.2, KARESH },
									{ 51.0, 68.8, KARESH },
								}
							}),
						},
					}),
					q(85009, {	-- Those We Have Yet to Save
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 231314,	-- Om'dalan
						["coord"] = { 51.0, 68.3, KARESH },
						["groups"] = {
							i(230730),	-- Nether Tuner (PQI!)
							--
							i(245705),	-- Amulet of Final Charge
							i(245706),	-- Echo Pendant of K'aresh
						},
					}),
				}),
				header(HEADERS.AchCriteria, 42739.06, {	-- Avoiding the Void
					q(84972, {	-- Chipping the Void
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 231162,	-- Driruj
						["coord"] = { 76.7, 34.3, KARESH },
						["groups"] = {
							o(469901, {	-- Void Glass Node
								i(229892),	-- Void Glass Sample (QI!)
							}),
						},
					}),
					q(84973, {	-- Of Motes and Husks
						["sourceQuests"] = { 84972 },	-- Chipping the Void
						["qg"] = 231162,	-- Driruj
						["coord"] = { 76.7, 34.3, KARESH },
						["groups"] = {
							i(229901),	-- Krolusk Husk (QI!)
							i(229900),	-- Softly Swirling Mote (QI!)
						},
					}),
					q(84974, {	-- Shards of Hope
						["sourceQuests"] = { 84973 },	-- Of Motes and Husks
						["qg"] = 231162,	-- Driruj
						["coord"] = { 76.7, 34.3, KARESH },
						["groups"] = {
							i(236411),	-- Mana Matrix (PQI!)
							--
							o(473920, {	-- Void-infused Shard
								i(229959),	-- Void-Infused Shard (QI!)
							}),
						},
					}),
					q(85018, {	-- Packets of Promises
						["sourceQuests"] = { 84974 },	-- Shards of Hope
						["qg"] = 231162,	-- Driruj
						["coord"] = { 76.7, 34.3, KARESH },
						["groups"] = {
							o(470057, {	-- Satchel of Seeds
								["coord"] = { 79.0, 32.5, KARESH },
								["groups"] = { i(229905) },	-- Satchel of Seeds (QI!)
							}),
							--
							i(245722),	-- Iridescent Huskjerkin
							i(245724),	-- Iridescent Huskplate
							i(245723),	-- Iridescent Husktunic
							i(245721),	-- Iridescent Huskwrap
						},
					}),
				}),
				header(HEADERS.AchCriteria, 42739.07, {	-- Priest of the Old Ways
					q(85019, {	-- An Outcast's Request
						--["sourceQuests"] = { ??? },	-- Vignette never appeared on the map. Don't know which quest unlocks this. It is unlocked at some point during or at the end of Chapter 4.
						["qg"] = 231422,	-- Outcast Hizfran
						["coord"] = { 77.7, 39.8, KARESH },
						["groups"] = {
							o(469979, {	-- K'areshi Priest's Bowl
								["coord"] = { 80.0, 47.6, KARESH },
								["groups"] = { i(229902) },	-- K'areshi Priest's Bowl (QI!)
							}),
							i(229895, {	-- Scepter of Priesthood (QI!)
								["coord"] = { 79.6, 48.0, KARESH },
								["cr"] = 234847, -- Oathspeaker Al'joul
							}),
							o(469911, {	-- Ways of the Priesthood
								["coord"] = { 81.0, 49.9, KARESH },
								["groups"] = { i(229893) },	-- Ways of the Priesthood (QI!)
							}),
						},
					}),
					q(85020, {	-- The Blood of K'aresh
						["sourceQuests"] = { 85019 },	-- An Outcast's Request
						["qg"] = 231422,	-- Outcast Hizfran
						["coord"] = { 77.7, 39.8, KARESH },
						["groups"] = {
							o(473973, {	-- Blood of K'aresh
								["coords"] = {
									{ 72.0, 41.7, KARESH },
									{ 73.7, 42.6, KARESH },
									{ 74.1, 41.0, KARESH },
									{ 74.3, 44.1, KARESH },
									{ 75.2, 44.7, KARESH },
									{ 75.5, 39.6, KARESH },
									{ 76.1, 43.6, KARESH },
									{ 76.6, 41.7, KARESH },
								},
								["groups"] = {
									i(229970, {	-- Blood of K'aresh Deposit (QI!)
										["cr"] = 234858,	-- Sand Strider
									}),
								},
							}),
						},
					}),
					q(85021, {	-- Cleansing the Void
						["sourceQuests"] = { 85020 },	-- The Blood of K'aresh
						["qg"] = 231422,	-- Outcast Hizfran
						["coord"] = { 77.7, 39.8, KARESH },
					}),
					q(85022, {	-- Priest of the Old Ways
						["sourceQuests"] = { 85021 },	-- Cleansing the Void
						["qg"] = 231699,	-- Outcast Hizfran
						["coord"] = { 77.9, 39.3, KARESH },
						["groups"] = {
							i(245708),	-- Epaulets of the Exiled Vow
							i(245710),	-- Mantle of the Exiled Vow
							i(245709),	-- Shoulderguards of the Exiled Vow
							i(245707),	-- Shoulderpads of the Exiled Vow
						},
					}),
				}),
				header(HEADERS.AchCriteria, 42739.08, {	-- That Tazavesh Taste
					q(85383, {	-- Applied Mixology
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 232351,	-- Trader Ba'kril
						["coord"] = { 43.8, 52.3, KARESH_TAZAVESH },
					}),
					q(85384, {	-- Market Research
						["sourceQuests"] = { 85383 },	-- Applied Mixology
						["qg"] = 232351,	-- Trader Ba'kril
						["coord"] = { 43.8, 52.3, KARESH_TAZAVESH },
					}),
					q(85394, {	-- An Eye for Trouble
						["sourceQuests"] = { 85384 },	-- Market Research
						["qg"] = 232351,	-- Trader Ba'kril
						["coord"] = { 43.8, 52.3, KARESH_TAZAVESH },
						["groups"] = {
							i(245736),	-- Unstable Sample Armplates
							i(245734),	-- Unstable Sample Bindings
							i(245735),	-- Unstable Sample Bracers
							i(245733),	-- Unstable Sample Straps
						},
					}),
				}),
				header(HEADERS.AchCriteria, 42739.09, {	-- Lost and Found Storage
					q(85052, {	-- A Lucrative Opportunity
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 231674,	-- Vaultkeeper Xy'vez
						["coord"] = { 48.1, 24.6, KARESH_TAZAVESH },
					}),
					q(85053, {	-- Obtaining Permits
						["sourceQuests"] = { 85052 },	-- A Lucrative Opportunity
						["qg"] = 232008,	-- Cartel Boss Xy'eolm
						["coord"] = { 50.2, 19.3, KARESH_TAZAVESH },
					}),
					q(85054, {	-- Articles of Acquisition
						["sourceQuests"] = { 85053 },	-- Obtaining Permits
						["qg"] = 232008,	-- Cartel Boss Xy'eolm
						["coord"] = { 50.2, 19.3, KARESH_TAZAVESH },
						["groups"] = { i(244847) },	-- Aftermarket Ledger (PQI!)
					}),
					q(85055, {	-- Expired Goods
						["sourceQuests"] = { 85054 },	-- Articles of Acquisition
						["qg"] = 232057,	-- Vaultkeeper Xy'vez
						["coord"] = { 44.8, 35.7, KARESH_TAZAVESH },
						["groups"] = {
							i(245728),	-- Voidmarket Negotiator's Gauntlets
							i(245726),	-- Voidmarket Negotiator's Gloves
							i(245727),	-- Voidmarket Negotiator's Grips
							i(245725),	-- Voidmarket Negotiator's Handwraps
						},
					}),
				}),
				header(HEADERS.AchCriteria, 42739.10, {	-- Anyway, Here's Firewall
					q(86196, {	-- Give me Fuel
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 234216,	-- Assistant Engineer Om'vek
						["coord"] = { 49.9, 57.5, KARESH },
						["groups"] = {
							o(500591, {	-- Firebud
								i(233009),	-- Firebud Pollen (QI!)
							}),
						},
					}),
					q(86200, {	-- Give me Fire
						["sourceQuests"] = { 86196 },	-- Give me Fuel
						["qg"] = 234216,	-- Assistant Engineer Om'vek
						["coord"] = { 49.9, 57.5, KARESH },
					}),
					q(86201, {	-- Watch me Make These Bugs Expire
						["sourceQuests"] = { 86200 },	-- Give me Fire
						["qg"] = 234216,	-- Assistant Engineer Om'vek
						["coord"] = { 49.9, 57.5, KARESH },
						["groups"] = {
							i(233028),	-- Flamethrower (PQI!)
							--
							i(245711),	-- Ring of Blooming Flame
							i(245712),	-- Terraformer's Seal
						},
					}),
				}),
				header(HEADERS.AchCriteria, 42739.11, {	-- A Stranger's Gift
					q(85238, {	-- Stranger on the Steps
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["qg"] = 233500,	-- Om'taha
						["coord"] = { 57.0, 57.3, KARESH },
					}),
					q(85239, {	-- A New Devouring
						["sourceQuests"] = { 85238 },	-- Stranger on the Steps
						["qg"] = 233500,	-- Om'taha
						["coord"] = { 57.0, 57.3, KARESH },
					}),
					q(85240, {	-- Only Hunger Remains
						["sourceQuests"] = { 85238 },	-- Stranger on the Steps
						["qg"] = 233500,	-- Om'taha
						["coord"] = { 57.0, 57.3, KARESH },
					}),
					q(85241, {	-- A Once-Proud Priest
						["sourceQuests"] = {
							85239,	-- A New Devouring
							85240,	-- Only Hunger Remains
						},
						["qg"] = 233500,	-- Om'taha
						["coord"] = { 59.5, 60.5, KARESH },
					}),
					q(86193, {	-- Life for Life
						["sourceQuests"] = { 85241 },	-- A Once-Proud Priest
						["qg"] = 233500,	-- Om'taha
						["coord"] = { 59.5, 60.5, KARESH },
						["groups"] = {
							i(245737),	-- Ritualbreaker's Band
							i(245738),	-- Seal of the Shattered Dome
						},
					}),
				}),
			}),
			header(HEADERS.Achievement, 41980, {	-- Vigiliante
				q(87344, {	-- A Key Threat
					["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
					["qg"] = 238255,	-- Constable Zo'ardaz
					["coord"] = { 48.6, 57.8, KARESH_TAZAVESH },
				}),
				header(HEADERS.Quest, 89490, {	-- Warrant: Arcana-Monger So'zer
					q(89490, {	-- Warrant: Arcana-Monger So'zer
						["qg"] = 241951,	-- Warrant: Arcana-Monger So'zer
						["coord"] = { 48.4, 59.0, KARESH_TAZAVESH },
						["groups"] = { i(239314) },	-- Arcane Lure (QS!)
					}),
					q(90081, {	-- Arcane Runed Sigil
						["description"] = "This quest is available during 'Warrant: Arcana-Monger So'zer'.",
						--["provider"] = { "n", ?? },
						--["coord"] = { x, y, z },
						["repeatable"] = true,
						["groups"] = {
							i(245740),	-- Etched Fragment (QI!)
							--
							i(239564),	-- Arcane Runed Sigil (QI!) (Reward, required for the Warrant)
						},
					}),
					q(89501, {	-- Charged Crystal
						["description"] = "This quest is available during 'Warrant: Arcana-Monger So'zer'.",
						--["provider"] = { "n", ?? },
						--["coord"] = { x, y, z },
						["repeatable"] = true,
						["groups"] = {
							i(239446),	-- Uncharged Cyrstal (QI!)
							--
							i(239607),	-- Charged Cyrstal (QI!) (Reward, required for the Warrant)
						},
					}),
					q(89505, {	-- Smuggler's Mark
						["description"] = "This quest is available during 'Warrant: Arcana-Monger So'zer'.",
						--["provider"] = { "n", ?? },
						--["coord"] = { x, y, z },
						["repeatable"] = true,
						["groups"] = {
							i(239497),	-- Hidden Tokens (QI!)
							i(239510),	-- Misplaced Shipment (QI!)
							i(239495),	-- Missing Voidband (QI!)
							i(239501),	-- Shadowed Scrolls (QI!)
							i(239500),	-- Stolen Apparel (QI!)
							--
							i(239484),	-- Smuggler's Mark (QI!) (Reward, required for the Warrant)
						},
					}),
					q(90127, {	-- Eliminate Arcana-Monger So'zer
						["provider"] = { "i", 239314 },	-- Arcane Lure (QS!)
						["isWeekly"] = true,
					}),
				}),
				header(HEADERS.Quest, 87405, {	-- Warrant: Grubber
					q(87405, {	-- Warrant: Grubber
						["qg"] = 238548,	-- Warrant: Grubber
						["coord"] = { 48.5, 58.8, KARESH_TAZAVESH },
						["groups"] = { i(236967) },	-- Grubber Lure (QS!)
					}),
					q(87548, {	-- A Dozen Veilshards
						["description"] = "This quest is available during 'Warrant: Grubber'.\nFind and prod a Thieving Scurrier so it will lead you to the stash of Stolen Veilshards.",
						["qg"] = 238486,	-- Citizen Om'sto
						["coord"] = { 46.6, 50.3, KARESH_TAZAVESH },
						["repeatable"] = true,
						["cr"] = 239005,	-- Thieving Scurrier
						["groups"] = {
							o(519856, {	-- Stolen Veilshard
								i(237266),	-- Stolen Veilshard (QI!)
							}),
							--
							i(237352),	-- A Dozen Veilshards (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87420, {	-- Basket of Zo'kita Fruit
						["description"] = "This quest is available during 'Warrant: Grubber'.",
						["qg"] = 238474,	-- Zo'kita
						["coord"] = { 52.4, 57.8, KARESH_TAZAVESH },
						["repeatable"] = true,
						["groups"] = {
							i(237009),	-- Zo'kita Safety Gear (PQI!)
							o(517389, {	-- Zo'kita Fruit
								i(236972),	-- Freshly Picked Zo'kita (QI!)
							}),
							--
							i(236962),	-- Basket of Zo'kita Fruit (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87426, {	-- Flavorful Scraps
						["description"] = "This quest is available during 'Warrant: Grubber'.",
						["qg"] = 238591,	-- Zo'nog
						["coord"] = { 68.6, 42.5, KARESH_TAZAVESH },
						["repeatable"] = true,
						["groups"] = {
							o_repeated({	-- Tazavesh Trash
								i(237022),	-- Discarded Items (QI!)
								o(517405),	-- Tazavesh Trash
								o(517407),	-- Tazavesh Trash
								o(517410),	-- Tazavesh Trash
								o(517000),	-- Tazavesh Trash
							}),
							i(236966),	-- Flavorful Scraps (QI!) (Reward, required for the Warrant)
						},
					}),
					q(90126, {	-- Eliminate Grubber
						["provider"] = { "i", 236967 },	-- Grubber Lure (QS!)
						["isWeekly"] = true,
					}),
				}),
				header(HEADERS.Quest, 87343, {	-- Warrant: Hollowbane
					q(87343, {	-- Warrant: Hollowbane
						["qg"] = 238269,	-- Warrant: Hollowbane
						["coord"] = { 48.5, 58.1, KARESH_TAZAVESH },
						["groups"] = { i(236957) },	-- Hollowbane Portal Key (QS!)
					}),
					q(87597, {	-- A Bag of Veilshards
						["description"] = "This quest is available during 'Warrant: Hollowbane'.\nFind and prod a Thieving Scurrier so it will lead you to the stash of Stolen Veilshards.",
						["qg"] = 238486,	-- Citizen Om'sto
						["coord"] = { 46.6, 50.3, KARESH_TAZAVESH },
						["repeatable"] = true,
						["groups"] = {
							o(519856, {	-- Stolen Veilshard
								i(237353),	-- Om'sto's Veilshards (QI!)
							}),
							i(237356),	-- Vermin Attuned Optic-Visualizer (PQI!)
							--
							i(237354),	-- A Bag of Veilshards (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87324, {	-- Pile of Voidbane Gems
						["description"] = "This quest is available during 'Warrant: Hollowbane'.",
						["qg"] = 238181,	-- Acquisitioner Xy'gui
						["coord"] = { 53.9, 26.9, KARESH },
						["repeatable"] = true,
						["groups"] = {
							i(236632, {	-- Pouch of Voidbane Gems
								["description"] = "|cFFE50D12WARNING:|r Do not buy unless you are on a Warrant Quest.\nContains nothing but a fraction of spent gold otherwise.",
								["coord"] = { 50.6, 19.3, KARESH },
								["cr"] = 238291,	-- Associate Xy'got
								["groups"] = {
									i(236407),	-- Voidbane Gem (QI!)
								},
							}),
							--
							i(235917),	-- Pile of Voidbane Gems (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87358, {	-- Umbral Facade
						["description"] = "This quest is available during 'Warrant: Hollowbane'.",
						["qg"] = 238181,	-- Acquisitioner Xy'gui
						["coord"] = { 53.9, 26.9, KARESH },
						["repeatable"] = true,
						["groups"] = {
							i(236679),	-- Essence Scanner (PQI!)
							--
							i(236688),	-- Umbral Facade (QI!) (Reward, required for the Warrant)
						},
					}),
					q(90123, {	-- Eliminate Hollowbane
						["provider"] = { "i", 236957 },	-- Hollowbane Portal Key (QS!)
						["isWeekly"] = true,
					}),
				}),
				header(HEADERS.Quest, 87546, {	-- Warrant: Purple Peat
					q(87546, {	-- Warrant: Purple Peat
						["qg"] = 238919,	-- Warrant: Purple Peat
						["coord"] = { 48.5, 58.3, KARESH_TAZAVESH },
						["groups"] = { i(239276) },	-- Purple Peat Cell Key (QS!)
					}),
					q(87404, {	-- Energy Encapsulation
						["description"] = "This quest is available during 'Warrant: Purple Peat'.",
						["qg"] = 238057,	-- Engineer Om'loof
						["coord"] = { 47.9, 57.4, KARESH },
						["repeatable"] = true,
						["groups"] = {
							i(235051),	-- Harvested Energy (QI!)
							--
							i(236937),	-- Energy Encapsulation (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87425, {	-- Large Sticky Voidmass
						["description"] = "This quest is available during 'Warrant: Purple Peat'.",
						["qg"] = 238069,	-- Botanist Mo'chee
						["coord"] = { 49.4, 54.3, KARESH },
						["repeatable"] = true,
						["groups"] = {
							i(237019),	-- Corrupted Sap (QI!)
							--
							i(236964),	-- Large Sticky Voidmass (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87301, {	-- Untethered Battery
						["description"] = "This quest is available during 'Warrant: Purple Peat'.",
						["qg"] = 238057,	-- Engineer Om'loof
						["coord"] = { 47.9, 57.4, KARESH },
						["repeatable"] = true,
						["groups"] = {
							i(239249),	-- Untethered Battery (QI!) (Reward, required for the Warrant)
						},
					}),
					q(90125, {	-- Eliminate Purple Peat
						["provider"] = { "i", 239276 },	-- Purple Peat Cell Key (QS!)
						["isWeekly"] = true,
					}),
				}),
				header(HEADERS.Quest, 87001, {	-- Warrant: Shatterpulse
					q(87001, {	-- Warrant: Shatterpulse
						["qg"] = 238265,	-- Warrant: Shatterpulse
						["coord"] = { 48.5, 58.6, KARESH_TAZAVESH },
						["groups"] = { i(236353) },	-- Shatterpulse Cell Key (QS!)
					}),
					q(87010, {	-- Calculation Container
						["description"] = "This quest is available during 'Warrant: Shatterpulse'.",
						["qg"] = 238057,	-- Engineer Om'loof
						["coord"] = { 47.9, 57.4, KARESH },
						["repeatable"] = true,
						["groups"] = {
							i(235866),	-- Calculation Container (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87285, {	-- Marking Matrix
						["description"] = "This quest is available during 'Warrant: Shatterpulse'.",
						["qg"] = 238057,	-- Engineer Om'loof
						["coord"] = { 47.9, 57.4, KARESH },
						["repeatable"] = true,
						["groups"] = {
							i(235898),	-- Containment Trap (PQI!)
							--
							i(235913),	-- Marking Matrix (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87298, {	-- Void Fused Resin
						["description"] = "This quest is available during 'Warrant: Shatterpulse'.",
						["qg"] = 238069,	-- Botanist Mo'chee
						["coord"] = { 49.4, 54.3, KARESH },
						["repeatable"] = true,
						["groups"] = {
							i(235918),	-- Corrupted Granules (QI!)
							--
							i(235982),	-- Void Fused Resin (QI!) (Reward, required for the Warrant)
						},
					}),
					q(90124, {	-- Eliminate Shatterpulse
						["provider"] = { "i", 236353 },	-- Shatterpulse Cell Key (QS!)
						["isWeekly"] = true,
					}),
				}),
				header(HEADERS.Quest, 87345, {	-- Warrant: Xy'vox the Twisted
					q(87345, {	-- Warrant: Xy'vox the Twisted
						["qg"] = 238271,	-- Warrant: Xy'Vox the Twisted
						["coord"] = { 48.5, 58.4, KARESH_TAZAVESH },
						["groups"] = { i(236753) },	-- Xy'vox Refuge Dampener (QS!)
					}),
					q(87376, {	-- Ethereal Seal
						["description"] = "This quest is available during 'Warrant: Xy'vox the Twisted'.",
						["qg"] = 238486,	-- Citizen Om'sto
						["coord"] = { 46.6, 50.3, KARESH_TAZAVESH },
						["repeatable"] = true,
						["groups"] = {
							o_repeated({	-- Tazavesh Trash
								i(236781),	-- Discarded Shadow Writ (QI!)
								o(516994),	-- Tazavesh Trash
								o(517000),	-- Tazavesh Trash
							}),
							--
							i(236783),	-- Ethereal Seal (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87363, {	-- Tazavesh Facade
						["description"] = "This quest is available during 'Warrant: Xy'vox the Twisted'.",
						["qg"] = 238387,	-- Deputy Zo'mi
						["coord"] = { 46.9, 57.5, KARESH_TAZAVESH },
						["repeatable"] = true,
						["groups"] = {
							i(236766),	-- Essence Scanner (PQI!)
							--
							i(236762),	-- Tazavesh Facade (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87380, {	-- Zo'kita Fruit
						["description"] = "This quest is available during 'Warrant: Xy'vox the Twisted'.",
						["qg"] = 238474,	-- Zo'kita
						["coord"] = { 52.4, 57.8, KARESH_TAZAVESH },
						["repeatable"] = true,
						["groups"] = {
							i(236859),	-- Untethered Hide (QI!)
							--
							i(236858),	-- Zo'kita Fruit (QI!) (Reward, required for the Warrant)
						},
					}),
					q(90122, {	-- Eliminate Xy'vox the Twisted
						["provider"] = { "i", 236753 },	-- Xy'vox Refuge Dampener (QS!)
						["isWeekly"] = true,
					}),
				}),
			}),
			n(BONUS_OBJECTIVES, {
				q(84966, {	-- Break the Assault
					["sourceQuests"] = { 84960 },	-- The Darkness Among Us
					["coord"] = { 54.1, 63.7, KARESH_TAZAVESH },
				}),
				q(86447, {	-- Devourer Attack: Eco-dome: Primus
					["repeatable"] = true,
				}),
				q(86465, {	-- Devourer Attack: Tazavesh
					["repeatable"] = true,
				}),
				q(86464, {	-- Devourer Attack: The Atrium
					["repeatable"] = true,
				}),
				q(84993, {	-- Devourer Attack: The Oasis
					["repeatable"] = true,
				}),
			}),
			-- Quest (item) obtained during Devourer Attack
			-- These source quests aren't 'really' required since the item can be looted and quest started at a later time
			-- Maybe somehow they should link to the respective rares? probably not important enough
			q(85722, {	-- Making a Deposit
				["description"] = "|cFFE50D12SUGGESTION:|r Do not turn in this quest unless you have 'Ecological Succession' world quest active. Contributes 20% towards World Quest completion.",
				-- ["sourceQuests"] = { 84993 },	-- Devourer Attack: The Oasis
				["provider"] = { "i", 232467 },	-- Crystallized Anima (QS!)
				["isWeekly"] = true,
			}),
			q(89061, {	-- Making a Deposit
				["description"] = "|cFFE50D12SUGGESTION:|r Do not turn in this quest unless you have 'Ecological Succession' world quest active. Contributes 20% towards World Quest completion.",
				-- ["sourceQuests"] = { 86447 },	-- Devourer Attack: Eco-dome: Primus
				["provider"] = { "i", 238663 },	-- Crystallized Anima (QS!)
				["isWeekly"] = true,
			}),
			q(89062, {	-- Making a Deposit
				["description"] = "|cFFE50D12SUGGESTION:|r Do not turn in this quest unless you have 'Ecological Succession' world quest active. Contributes 20% towards World Quest completion.",
				-- ["sourceQuests"] = { 86464 },	-- Devourer Attack: The Atrium
				["provider"] = { "i", 238664 },	-- Crystallized Anima (QS!)
				["isWeekly"] = true,
			}),
			q(89063, {	-- Making a Deposit
				["description"] = "|cFFE50D12SUGGESTION:|r Do not turn in this quest unless you have 'Ecological Succession' world quest active. Contributes 20% towards World Quest completion.",
				-- ["sourceQuests"] = { 86465 },	-- Devourer Attack: Tazavesh
				["provider"] = { "i", 238665 },	-- Crystallized Anima (QS!)
				["isWeekly"] = true,
			}),
			-- Unsorted
			--q(86492),	-- TODO: Alex - ach(42736),	-- Ixthar's Legacy
			--q(90954),	-- TODO: Alex - ach(42742) Power of the Reshii / Regalia of the Reshii upgrade, should probably be automated in future?
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	m(KHAZ_ALGAR, {
		m(KARESH, {
			n(QUESTS, {
				-- During main story
				q(84901),	-- [DNT] CH04Q05p - Triggered after completing 'Like a Knife Through Aether' (84900)
				q(85111),	-- [DNT] K'aresh Trust Renown Unlock (spellID 466720)
				q(91812),	-- Triggered after unlocking Renown 2 of The K'aresh Trust right after completing 'The Tabiqa' (84910)
				q(92627, {	-- Triggered after unlocking Renown 3 of The K'aresh Trust, unlocks Warrants
					["name"] = "An Arrested Development",
				}),
				q(92629),	-- Triggered after completing 'That's a Wrap' (85037)
				-- ??
				q(90812),	-- pop randomly at start/intro quest chain (spellID - 1234922 / Warrant)
				q(90807, { ["repeatable"] = true, } ),	-- Triggered at the completion of a main Warrant quest and obtaining the (QS!) item that starts "Eliminate" quest
				q(91286, { ["repeatable"] = true, } ),	-- Devoured Energy-Pod (QS!) loot lockout after the completion of 'Devourer Attack: The Oasis' (84993)
				q(91287, { ["repeatable"] = true, } ),	-- Devoured Energy-Pod (QS!) loot lockout after the completion of 'Devourer Attack: Eco-dome: Primus' (86447)
				q(91289, { ["repeatable"] = true, } ),	-- Devoured Energy-Pod (QS!) loot lockout after the completion of 'Devourer Attack: The Atrium' (86464)
				q(91290, { ["repeatable"] = true, } ),	-- Devoured Energy-Pod (QS!) loot lockout after the completion of 'Devourer Attack: Tazavesh' (86465)

				q(87348, name(HEADERS.Item,236632)),	-- Triggered when 'Puch of Voidbane Gems' is bought from the vendor

				q(90955, name(HEADERS.Spell,1249651)),	-- Boon of the Reshii (Reshii Wraps 1st upgrade)
			}),
		}),
	}),
}));
