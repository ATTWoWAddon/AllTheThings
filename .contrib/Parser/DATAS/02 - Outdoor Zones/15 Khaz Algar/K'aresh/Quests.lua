---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(QUESTS, {
			header(HEADERS.Achievement, 41970, {	-- The Knife's Edge
				header(HEADERS.AchCriteria, 41970.01, {	-- Chapter 1: A Shadowy Invitation
					q(84956, {	-- A Shadowy Invitation
						--["sourceQuests"] = { xx },	-- TODO: does it exist?
						["provider"] = { "n", 227758 },	-- Alleria Windrunner
						["coord"] = { 42.4, 26.9, DORNOGAL },
					}),
					q(84957, {	-- Return to the Veiled Market
						["sourceQuests"] = { 84956 },	-- A Shadowy Invitation
						["provider"] = { "n", 233603 },	-- Locus-Walker
						["coord"] = { 42.1, 26.9, DORNOGAL },
					}),
					q(85003, {	-- Restoring Operational Efficiency
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["provider"] = { "n", 230604 },	-- Om'en
						["coord"] = { 59.5, 83.1, KARESH_TAZAVESH },
					}),
					------ Stay awhile and listen ------
					--hqt(???, {	-- Stay awhile and listen: Locus-Walker
					--	["name"] = "Stay awhile and listen: Locus-Walker",
					--	["description"] = "Dialogue becomes available after you accept 'Restoring Operational Efficiency' (85003).",
					--	["sourceQuests"] = { 84957 },	-- Return to the Veiled Market
					--	["provider"] = { "n", 233706 },	-- Locus-Walker
					--	["coord"] = { 59.7, 83.4, KARESH_TAZAVESH },
					--}),
					--
					q(84958, {	-- Beasts Unbound
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["provider"] = { "n", 230954 },	-- Ta'ka
						["coord"] = { 56.8, 73.0, KARESH_TAZAVESH },
					}),
					q(85039, {	-- Compromised Containment
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["provider"] = { "n", 231564 },	-- Xy'bin
						["coord"] = { 56.6, 72.9, KARESH_TAZAVESH },
						["g"] = {
							i(237891),	-- Menagerie's Lost Relic
							i(237894),	-- Pendant of Arcane Havoc
						},
					}),
					q(84959, {	-- Lost Lines of Defense
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["provider"] = { "n", 230955 },	-- Ba'ver
						["coord"] = { 53.1, 64.4, KARESH_TAZAVESH },
						["g"] = {
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
						["provider"] = { "n", 233706 },	-- Locus-Walker
						["coord"] = { 59.7, 83.4, KARESH_TAZAVESH },
						["g"] = {
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
					--	["provider"] = { "n", 230609 },	-- Alleria Windrunner
					--	["coord"] = { 54.7, 66.9, KARESH_TAZAVESH },
					--}),
					--
					q(84963, {	-- Sealing the Shadows
						["sourceQuests"] = { 84960 },	-- The Darkness Among Us
						["provider"] = { "n", 234601 },	-- Om'en
						["coord"] = { 54.1, 63.7, KARESH_TAZAVESH },
						["g"] = {
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
						["provider"] = { "n", 234596 },	-- Locus-Walker
						["coord"] = { 54.2, 63.1, KARESH_TAZAVESH },
						["g"] = {
							o(502525, {	-- Barrier Projector
								["coords"] = {
									{ 41.3, 49.1, KARESH_TAZAVESH },
									{ 46.0, 51.2, KARESH_TAZAVESH },
									{ 49.8, 57.9, KARESH_TAZAVESH },
									{ 52.5, 46.8, KARESH_TAZAVESH },
									{ 51.3, 41.2, KARESH_TAZAVESH },
									{ 44.4, 36.3, KARESH_TAZAVESH },
									{ 39.5, 42.0, KARESH_TAZAVESH },
									{ 58.4, 32.8, KARESH_TAZAVESH },
								},
							}),
						},
					}),
					q(84964, {	-- Heroes Among Shadow
						["sourceQuests"] = { 84960 },	-- The Darkness Among Us
						["provider"] = { "n", 234602 },	-- Alleria Windrunner
						["coord"] = { 53.7, 63.2, KARESH_TAZAVESH },
						["g"] = {
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
						["provider"] = { "n", 234483 },	-- Alleria Windrunner (mobileNPC)
						-- She is following you around. Coordinates depend on where you turned in previous cluster of quests
					}),
					q(86835, {	-- Regroup!
						["sourceQuests"] = { 84965 },	-- Core Contributions
						["provider"] = { "n", 234483 },	-- Alleria Windrunner (mobileNPC)
						-- She is following you around. Coordinates depend on where you turned in previous quest
					}),
					q(84967, {	-- The Shadowguard Shattered
						["sourceQuests"] = { 86835 },	-- Regroup!
						["provider"] = { "n", 234620 },	-- Locus-Walker
						["coord"] = { 40.5, 67.8, KARESH_TAZAVESH },
					}),
				}),
				header(HEADERS.AchCriteria, 41970.02, {	-- Chapter 2: Void Alliance
					q(85032, {	-- What Is Left of Home
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "n", 231128 },	-- Locus-Walker
						["coord"] = { 37.7, 74.8, KARESH_TAZAVESH },
					}),
					------ Stay awhile and listen ------
					hqt(90600, {	-- Stay awhile and listen: Xal'atath
						["name"] = "Stay awhile and listen: Xal'atath",
						["description"] = "Dialogue becomes available after you accept 'What Is Left of Home' (85032).",
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "n", 235448 },	-- Xal'atath
						["coord"] = { 37.5, 74.7, KARESH_TAZAVESH },
					}),
					hqt(90732, {	-- Stay awhile and listen: Alleria Windrunner
						["name"] = "Stay awhile and listen: Alleria Windrunner",
						["description"] = "Dialogue becomes available after you accept 'What Is Left of Home' (85032).",
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "n", 240293 },	-- Alleria Windrunner
						["coord"] = { 34.2, 10.6, KARESH_TAZAVESH },
					}),
					--
					q(85961, {	-- Moving the Pawns
						["sourceQuests"] = { 85032 },	-- What Is Left of Home
						["provider"] = { "n", 230700 },	-- Locus-Walker
						["coord"] = { 34.0, 10.9, KARESH_TAZAVESH },
					}),
					q(84855, {	-- Dead Silence
						["sourceQuests"] = { 85032 },	-- What Is Left of Home
						["provider"] = { "n", 230806 },	-- Locus-Walker
						["coord"] = { 48.2, 36.7, KARESH },
						["g"] = {
							i(237861),	-- Cowl of the Lost Trust
							i(237873),	-- Coif of the Lost Trust
							i(237878),	-- Helm of the Lost Trust
							i(237892),	-- Hood of the Lost Trust
						},
					}),
					q(86495, {	-- The Reshii Ribbon
						["sourceQuests"] = { 84855 },	-- Dead Silence
						["provider"] = { "n", 234106 },	-- Locus-Walker
						["coord"] = { 48.2, 36.6, KARESH },
					}),
					------ Stay awhile and listen ------
					--hqt(???, {	-- Stay awhile and listen: Alleria Windrunner
					--	["name"] = "Stay awhile and listen: Alleria Windrunner",
					--	["description"] = "Dialogue becomes available after you accept 'The Reshii Ribbon' (86495).",
					--	["sourceQuests"] = { 84855 },	-- Dead Silence
					--	["provider"] = { "n", 233945 },	-- Alleria Windrunner
					--	["coord"] = { 48.3, 36.6, KARESH },
					--}),
					--
					q(84856, {	-- Where the Void Gathers
						["sourceQuests"] = { 86495 },	-- The Reshii Ribbon
						["provider"] = { "n", 233946 },	-- Xal'atath
						["coord"] = { 48.1, 36.6, KARESH },
						["g"] = {
							i(248955),	-- Ethereal Seam Ripper
							i(235499),	-- Reshii Wraps
						},
					}),
					q(84857, {	-- Eco-Dome: Primus
						["sourceQuests"] = { 84856 },	-- Where the Void Gathers
						["provider"] = { "n", 234106 },	-- Locus-Walker
						["coord"] = { 48.1, 36.5, KARESH },
					}),
					q(84858, {	-- System Restart
						["sourceQuests"] = { 84857 },	-- Eco-Dome: Primus
						["provider"] = { "n", 230814 },	-- Ve'nari
						["coord"] = { 47.1, 54.5, KARESH },
						["g"] = {
							o(500813, {	-- Rod of analysis
								["coord"] = { 47.2, 58.6, KARESH },
								["g"] = { i(233068), },	-- Rod of Analysis (QI!)
							}),
						},
					}),
					------ Stay awhile and listen ------
					--hqt(???, {	-- Stay awhile and listen: Xal'atath / 61476 - no questID
					--	["name"] = "Stay awhile and listen: Xal'atath",
					--	["description"] = "Dialogue becomes available after you accept 'System Restart' (84858).",
					--	["sourceQuests"] = { 84857 },	-- Eco-Dome: Primus
					--	["provider"] = { "n", 230825 },	-- Xal'atath
					--	["coord"] = { 47.1, 54.6, KARESH },
					--}),
					--
					q(84859, {	-- Damage Report 101
						["sourceQuests"] = { 84858 },	-- System Restart
						["provider"] = { "n", 230814 },	-- Ve'nari
						["coord"] = { 47.1, 54.5, KARESH },
						["g"] = {
							i(233187),	-- Botanical Report (QI!)
							i(233189),	-- Shield Technician Report (QI!)
						},
					}),
					q(84860, {	-- Eco-Stabilizing
						["sourceQuests"] = { 84858 },	-- System Restart
						["provider"] = { "n", 230814 },	-- Ve'nari
						["coord"] = { 47.1, 54.5, KARESH },
						["g"] = {
							o(502907, {	-- Rod of Activation
								["coord"] = { 48.8, 59.0, KARESH },
								["g"] = { i(233326), },	-- Rod of Activation (QI!)
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
						["provider"] = { "n", 230814 },	-- Ve'nari
						["coord"] = { 47.1, 54.5, KARESH },
						["g"] = {
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
						["provider"] = { "n", 230825 },	-- Xal'atath
						["coord"] = { 47.1, 54.6, KARESH },
					}),
					q(84863, {	-- Counter Measures
						["sourceQuests"] = {
							84861,	-- This Is Our Dome!
							84862,	-- Void Alliance
						},
						["provider"] = { "n", 230814 },	-- Ve'nari
						["coord"] = { 47.1, 54.5, KARESH },
					}),
					q(84865, {	-- Divide and Conquer
						["sourceQuests"] = {
							84861,	-- This Is Our Dome!
							84862,	-- Void Alliance
						},
						["provider"] = { "n", 230825 },	-- Xal'atath
						["coord"] = { 47.0, 54.5, KARESH },
						["g"] = { i(233222), },	-- Nullbomb (PQI!)
					}),
					q(84864, {	-- Her Dark Side
						["sourceQuests"] = {
							84861,	-- This Is Our Dome!
							84862,	-- Void Alliance
						},
						["provider"] = { "n", 230825 },	-- Xal'atath
						["coord"] = { 47.0, 54.5, KARESH },
					}),
					q(84866, {	-- To Purchase Safety
						["sourceQuests"] = {
							84863,	-- Counter Measures
							84865,	-- Divide and Conquer
							84864,	-- Her Dark Side
						},
						["provider"] = { "n", 232642 },	-- Alleria Windrunner (mobileNPC)
						-- She is following you around. Coordinates depend on where you turned in previous cluster of quests
						["g"] = {
							i(238386),	-- Void-Touched Fragment
						},
					}),
					q(86946, {	-- Unwrapped and Unraveled
						["sourceQuests"] = { 84866 },	-- To Purchase Safety
						["provider"] = { "n", 237705 },	-- Xal'atath
						["coord"] = { 54.3, 45.5, KARESH },
					}),
					q(90517, {	-- My Part of the Deal
						["sourceQuests"] = { 86946 },	-- Unwrapped and Unraveled
						["provider"] = { "n", 242538 },	-- Ve'nari
						["coord"] = { 47.1, 54.5, KARESH },
					}),
					------ Stay awhile and listen ------
					hqt(90572, {	-- Stay awhile and listen: Locus-Walker
						["name"] = "Stay awhile and listen: Locus-Walker",
						["description"] = "Dialogue becomes available after you accept 'My Part of the Deal' (90517).",
						["sourceQuests"] = { 86946 },	-- Unwrapped and Unraveled
						["provider"] = { "n", 230811 },	-- Locus-Walker
						["coord"] = { 47.1, 54.5, KARESH },
					}),
					--
				}),
				header(HEADERS.AchCriteria, 41970.03, {	-- Chapter 3: Desert Power
					q(84826, {	-- Eco-Dome: Rhovan
						["sourceQuests"] = { 90517 },	-- My Part of the Deal
						["provider"] = { "n", 230811 },	-- Locus-Walker
						["coord"] = { 47.1, 54.5, KARESH },
					}),
					q(84827, {	-- The Shattered Dome
						["sourceQuests"] = { 84826 },	-- Eco-Dome: Rhovan
						["provider"] = { "n", 230288 },	-- Locus-Walker
						["coord"] = { 70.9, 58.1, KARESH },
						["g"] = {
							o(466983, {	-- Curved Dagger
								["coord"] = { 70.0, 53.1, KARESH },
								["g"] = { i(229060), },	-- Curved Dagger (QI!)
							}),
							o(466978, {	-- Om'bera's Clipboard
								["coord"] = { 70.9, 54.4, KARESH },
								["g"] = { i(229058), },	-- Supply Crates Manifest (QI!)
							}),
						},
					}),
					q(84831, {	-- The Rhovan Infestation
						["sourceQuests"] = { 84826 },	-- Eco-Dome: Rhovan
						["provider"] = { "n", 230294 },	-- Om'resh
						["coord"] = { 71.0, 58.0, KARESH },
					}),
					q(85730, {	-- Salvaging What's Left
						["sourceQuests"] = {
							84827,	-- The Shattered Dome
							84831,	-- The Rhovan Infestation
						},
						["provider"] = { "n", 230294 },	-- Om'resh
						["coord"] = { 71.0, 58.0, KARESH },
						["g"] = {
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
						["provider"] = { "n", 230602 },	-- Xal'atath
						["coord"] = { 68.4, 51.9, KARESH },
					}),
					------ Stay awhile and listen ------
					hqt(85774, {	-- Stay awhile and listen: Xal'atath
						["name"] = "Stay awhile and listen: Xal'atath",
						["description"] = "Dialogue becomes available after you accept 'The Tempest Fields' (86327).",
						["sourceQuests"] = { 85730 },	-- Salvaging What's Left
						["provider"] = { "n", 230602 },	-- Xal'atath
						["coord"] = { 68.4, 51.9, KARESH },
					}),
					--
					q(84834, {	-- Tempest Clefts
						["sourceQuests"] = { 86327 },	-- The Tempest Fields
						["provider"] = { "n", 233878 },	-- Xal'atath
						["coord"] = { 64.1, 47.0, KARESH },
						["g"] = {
							i(233018),	-- Essence Collector (PQI!)
							--
							o(466810, {	-- Void Cleft
								i(229994),	-- Void Cleft Essence (QI!)
							}),
						},
					}),
					q(84869, {	-- Hunting on Glass
						["sourceQuests"] = { 86327 },	-- The Tempest Fields
						["provider"] = { "n", 233878 },	-- Xal'atath
						["coord"] = { 64.1, 47.0, KARESH },
					}),
					q(84838, {	-- Enemies of Enemies
						["sourceQuests"] = {
							84834,	-- Tempest Clefts
							84869,	-- Hunting on Glass
						},
						["provider"] = { "n", 233878 },	-- Xal'atath
						["coord"] = { 64.1, 47.0, KARESH },
						["g"] = { i(230772), },	-- Coalesced Void Energy (PQI!)
					}),
					q(84848, {	-- Before the Void
						["sourceQuests"] = { 84838 },	-- Enemies of Enemies
						["provider"] = { "n", 230634 },	-- Xal'atath
						["coord"] = { 64.3, 39.3, KARESH },
						["g"] = {
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
						["provider"] = { "n", 230658 },	-- Xal'atath
						["coord"] = { 63.1, 39.0, KARESH },
						["g"] = {
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
						["provider"] = { "n", 230658 },	-- Xal'atath
						["coord"] = { 63.1, 39.0, KARESH },
					}),
					--
					q(86332, {	-- Distribution of Power
						["description"] = "Quest becomes available after you talk to Narathe during 'Stalking Stalkers' (84867).",
						["sourceQuests"] = { 84848 },	-- Before the Void
						["provider"] = { "n", 234190 },	-- Narathe
						["coord"] = { 61.0, 39.9, KARESH },
						["g"] = { i(235051), },	-- Harvested Energy (QI!)
					}),
					q(84876, {	-- The Oasis
						["sourceQuests"] = {
							84867,	-- Stalking Stalkers
							86332,	-- Distribution of Power
						},
						["provider"] = { "n", 230658 },	-- Xal'atath
						["coord"] = { 63.1, 39.0, KARESH },
					}),
					q(84879, {	-- Restoring Hope
						["sourceQuests"] = { 84876 },	-- The Oasis
						["provider"] = { "n", 230738 },	-- Xal'atath
						["coord"] = { 75.9, 34.2, KARESH },
						["g"] = {
							i(237885),	-- Armplates of the Riftsealer
							i(237869),	-- Bindings of the Riftsealer
							i(237877),	-- Bracers of the Riftsealer
							i(237864),	-- Cuffs of the Riftsealer
						},
					}),
					q(84883, {	-- K'aresh That Was
						["sourceQuests"] = { 84876 },	-- The Oasis
						["provider"] = { "n", 230739 },	-- Soul-Scribe
						["coord"] = { 75.8, 34.3, KARESH },
						["g"] = {
							o(475872, {	-- Rippling Wellspring
								["coord"] = { 76.8, 30.1, KARESH },
								["g"] = { i(230938), },	-- Heartspring Water (QI!)
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
						["provider"] = { "n", 230739 },	-- Soul-Scribe
						["coord"] = { 75.8, 34.3, KARESH },
					}),
				}),
				header(HEADERS.AchCriteria, 41970.04, {	-- Chapter 4: Shadows En Garde
					q(84896, {	-- The Next Dimension
						["sourceQuests"] = { 84910 },	-- The Tabiqa
						["provider"] = { "n", 230786 },	-- Soul-Scribe
						["coord"] = { 74.4, 30.4, KARESH },
					}),
					q(84897, {	-- The Calm Before we Storm
						["sourceQuests"] = { 84896 },	-- The Next Dimension
						["provider"] = { "n", 230818 },	-- Soul-Scribe
						["coord"] = { 60.2, 29.2, KARESH },
					}),
					------ Stay awhile and listen ------
					--hqt(???, {	-- Stay awhile and listen: Alleria Windrunner - no questID
					--	["name"] = "Stay awhile and listen: Alleria Windrunner",
					--	["description"] = "Dialogue becomes available after you accept 'The Calm Before we Storm' (84897).",
					--	["sourceQuests"] = { 84896 },	-- The Next Dimension
					--	["provider"] = { "n", 230817 },	-- Alleria Windrunner
					--	["coord"] = { 60.7, 27.9, KARESH },
					--}),
					--
					q(84899, {	-- Shadowguard Diffusion
						["sourceQuests"] = { 84897 },	-- The Calm Before we Storm
						["provider"] = { "n", 230817 },	-- Alleria Windrunner
						["coord"] = { 60.7, 27.9, KARESH },
						["g"] = { i(238390), },	-- Soulbreaker's Sigil
					}),
					q(84898, {	-- The Sands of K'aresh
						["sourceQuests"] = { 84896 },	-- The Next Dimension
						["provider"] = { "n", 231443 },	-- Soul-Scribe
						["coord"] = { 60.7, 28.0, KARESH },
						["g"] = {
							i(237136),	-- Wastes Scanner (PQI!)
							--
							o(502375, {	-- Sand Pile
								["coord"] = { 59.1, 28.5, KARESH },
								["g"] = { i(233192), },	-- Shadowguard Weapon (QI!)
							}),
							o(502376, {	-- Sand Pile
								["coord"] = { 58.7, 29.5, KARESH },
								["g"] = { i(233193), },	-- Shadowguard Weapon (QI!)
							}),
							o(502377, {	-- Sand Pile
								["coord"] = { 58.3, 26.3, KARESH },
								["g"] = { i(233194), },	-- Shadowguard Weapon (QI!)
							}),
						},
					}),
					q(84900, {	-- Like a Knife Through Aether
						["sourceQuests"] = {
							84899,	-- Shadowguard Diffusion
							84898,	-- The Sands of K'aresh
						},
						["provider"] = { "n", 231445 },	-- Xal'atath
						["coord"] = { 55.1, 30.4, KARESH },
						["g"] = { i(233333), },	-- Forgecaster Wraps (QI!)
					}),
					q(84902, {	-- Adverse Instantiation
						["sourceQuests"] = { 84900 },	-- Like a Knife Through Aether
						["provider"] = { "n", 231487 },	-- Locus-Walker
						["coord"] = { 48.6, 26.7, KARESH },
					}),
					q(84904, {	-- And We Will Answer
						["sourceQuests"] = { 84900 },	-- Like a Knife Through Aether
						["provider"] = { "n", 231486 },	-- Soul-Scribe
						["coord"] = { 48.6, 26.8, KARESH },
						["g"] = { i(233334), },	-- Beacon of the Wastes (PQI!)
					}),
					q(84903, {	-- Until the Sands Bleed Void
						["sourceQuests"] = { 84900 },	-- Like a Knife Through Aether
						["provider"] = { "n", 231488 },	-- Alleria Windrunner
						["coord"] = { 48.6, 26.6, KARESH },
						["g"] = {
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
						["provider"] = { "n", 231492 },	-- Locus-Walker
						["coord"] = { 48.2, 19.4, KARESH },
					}),
					q(84906, {	-- Nexus Regicide
						["sourceQuests"] = { 84905 },	-- To Walk Among Shadow
						["provider"] = { "n", 231505 },	-- Alleria Windrunner
						["coord"] = { 48.2, 19.1, KARESH },
						["g"] = {
							i(237936),	-- Fallen Prince's Crown
							i(237938),	-- Fallen Prince's Headplate
							i(237937),	-- Fallen Prince's Helm
							i(237939),	-- Fallen Prince's Mask
						},
					}),
					q(85037, {	-- That's a Wrap
						["sourceQuests"] = { 84906 },	-- Nexus Regicide
						["provider"] = { "n", 231520 },	-- Xal'atath
						["coord"] = { 44.2, 18.5, KARESH },
					}),
					------ Stay awhile and listen ------
					hqt(90614, {	-- Stay awhile and listen: Locus-Walker - no questID
						["name"] = "Stay awhile and listen: Locus-Walker",
						["description"] = "Dialogue becomes available after you accept 'That's a Wrap' (85037).",
						["sourceQuests"] = { 84906 },	-- Nexus Regicide
						["provider"] = { "n", 231524 },	-- Locus-Walker
						["coord"] = { 42.9, 21.6, KARESH },
					}),
					--
					-- Speculation
					--q(86820, {	-- Manaforge Omega: Dimensius Looms
					--	["sourceQuests"] = { 85037 },	-- That's a Wrap
					--	["g"] = {
					--		i(236954),	-- Void-Touched Valorstone
					--	},
					--}),
				}),
				header(HEADERS.AchCriteria, 41970.05, {	-- Chapter 5: The Light of K'aresh
					q(86458),	--
				}),
			}),
			header(HEADERS.Achievement, 41808, {	-- Otherworldly Ecologist
				q(87290, {	-- The Oasis
					["sourceQuests"] = { 85037 },	-- That's a Wrap
					["provider"] = { "n", 238212 },	-- Om'talad
					["coord"] = { 39.4, 24.2, KARESH_TAZAVESH },
				}),
				q(87337, {	-- Custodian Duties
					["sourceQuests"] = { 87290 },	-- The Oasis
					["provider"] = { "n", 238209 },	-- Cartel Om Custodian
					["coord"] = { 75.9, 34.3, KARESH },
					["g"] = {
						o(516700, {	-- Oasis Animal Leavings
							i(236416),	-- Oasis Animal Leavings (QI!)
						}),
					},
				}),
				q(87338, {	-- Day One Orientation
					["sourceQuests"] = { 87337 },	-- Custodian Duties
					["provider"] = { "n", 231820 },	-- Ve'nari
					["coord"] = { 75.9, 34.2, KARESH },
				}),
				q(87339, {	-- Ongoing Activities
					["sourceQuests"] = { 87337 },	-- Custodian Duties
					["provider"] = { "n", 231820 },	-- Ve'nari
					["coord"] = { 75.9, 34.2, KARESH },
					["g"] = {
						o(516792, {	-- Watering Jug
							["coord"] = { 73.0, 33.0, KARESH },
							["g"] = { i(236641), },	-- Watering Jug (QI!)
						}),
					},
				}),
				q(87340, {	-- Junk Mail
					["sourceQuests"] = {
						87338,	-- Day One Orientation
						87339,	-- Ongoing Activities
					},
					["provider"] = { "n", 231820 },	-- Ve'nari
					["coord"] = { 75.9, 34.2, KARESH },
				}),
				header(HEADERS.AchCriteria, 41808.01, {	-- The Bees Knees
					q(85075, {	-- To Stormsong
						["sourceQuests"] = { 87340 },	-- Junk Mail
						["provider"] = { "n", 231820 },	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["g"] = { i(230030), },	-- Cartel Ve Communicator (PQI!)
					}),
					q(85076, {	-- Don't Bee Crazy
						["sourceQuests"] = { 85075 },	-- To Stormsong
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["coord"] = { 72.4, 69.9, STORMSONG_VALLEY },
					}),
					q(85077, {	-- Sticky Fingers
						["sourceQuests"] = { 85075 },	-- To Stormsong
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["coord"] = { 72.4, 69.9, STORMSONG_VALLEY },
						["g"] = { i(230053), },	-- Honey Globule (QI!)
					}),
					q(85078, {	-- Bee in the Bonnet
						["sourceQuests"] = {
							85076,	-- Don't Bee Crazy
							85077,	-- Sticky Fingers
						},
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["coord"] = { 72.4, 69.9, STORMSONG_VALLEY },
					}),
					q(85079, {	-- Such a Sleebee-head
						["sourceQuests"] = {
							85076,	-- Don't Bee Crazy
							85077,	-- Sticky Fingers
						},
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["coord"] = { 72.4, 69.9, STORMSONG_VALLEY },
						["g"] = {
							o(475164, {	-- Ve'nari's Package
								["coord"] = { 72.5, 69.8, STORMSONG_VALLEY },
								["g"] = { i(230210), },	-- Tranquilizing Dart (PQI!)
							}),
						},
					}),
					q(85080, {	-- An Un-Bee-lievable Solution
						["sourceQuests"] = {
							85078,	-- Bee in the Bonnet
							85079,	-- Such a Sleebee-head
						},
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["coord"] = { 72.6, 65.8, STORMSONG_VALLEY },
						["g"] = {
							o(475213, {	-- Ve'nari's Package
								["coord"] = { 72.7, 65.8, STORMSONG_VALLEY },
								["g"] = { i(229424), },	-- Anima Vacuum (PQI!)
							}),
						},
					}),
					q(85081, {	-- Beehemian Rhapsody
						["sourceQuests"] = {
							85078,	-- Bee in the Bonnet
							85079,	-- Such a Sleebee-head
						},
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["coord"] = { 72.6, 65.8, STORMSONG_VALLEY },
						["g"] = {
							o(475207, {	-- Honey Pot
								["coord"] = { 72.6, 66.0, STORMSONG_VALLEY },
								["g"] = { i(230549), },	-- Queen Bee in a Jar (QI!)
							}),
						},
					}),
					q(85082, {	-- To K'aresh
						["sourceQuests"] = {
							85080,	-- An Un-Bee-lievable Solution
							85081,	-- Beehemian Rhapsody
						},
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["coord"] = { 72.6, 65.8, STORMSONG_VALLEY },
					}),
					q(85249, {	-- A Bee Test
						["sourceQuests"] = { 85082 },	-- To K'aresh
						["provider"] = { "n", 231820 },	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(85084, {	-- Bee Strong
						["sourceQuests"] = { 85249 },	-- A Bee Test
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["coord"] = { 48.4, 61.2, KARESH },
						["g"] = {
							o(475250, {	-- Honey Pot
								["coord"] = { 48.4, 61.2, KARESH },
								["g"] = { i(230732), },	-- Honey (PQI!)
							}),
						},
					}),
					q(85083, {	-- Photogra-Bee
						["sourceQuests"] = { 85249 },	-- A Bee Test
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["coord"] = { 48.4, 61.2, KARESH },
						["g"] = { i(230729), },	-- Appropriated Azerothian Camera (PQI!)
					}),
					q(85257, {	-- Primus Buzzness
						["sourceQuests"] = {
							85084,	-- Bee Strong
							85083,	-- Photogra-Bee
						},
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["coord"] = { 48.4, 61.2, KARESH },
					}),
					q(85255, {	-- Tranquila-Bee
						["sourceQuests"] = { 85257 },	-- Primus Buzzness
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["coord"] = { 49.0, 57.2, KARESH },
						["g"] = { i(230210), },	-- Tranquilizing Dart (PQI!)
					}),
					q(85256, {	-- Botany, Finally
						["sourceQuests"] = { 85257 },	-- Primus Buzzness
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["coord"] = { 49.0, 57.2, KARESH },
						["g"] = {
							i(230809, {	-- K'aresh Flora Cutting (QI!)
								["providers"] = {
									{ "o", 475321 },	-- Crystalbloom
									{ "o", 475324 },	-- Firebud
									{ "o", 475317 },	-- K'aresh Bellflower
									{ "o", 475314 },	-- Pricklebloom
								},
							}),
						},
					}),
					q(89348, {	-- Let There Bee Love
						["sourceQuests"] = {
							85255,	-- Tranquila-Bee
							85256,	-- Botany, Finally
						},
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["coord"] = { 49.0, 57.2, KARESH },
					}),
					q(85258, {	-- Oh Honey Honey
						["sourceQuests"] = { 89348 },	-- Let There Bee Love
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
						["g"] = {
							i(230907, {	-- Honeycomb (QI!)
								["providers"] = {
									{ "o", 475391 },	-- Honeycomb
									{ "o", 475392 },	-- Honeycomb
									{ "o", 475393 },	-- Honeycomb
								},
							}),
						},
					}),
					------ Stay awhile and listen ------
					hqt(89305, {	-- Stay awhile and listen: Botanist Alaenra
						["name"] = "Stay awhile and listen: Botanist Alaenra",
						["description"] = "Dialogue becomes available after you accept 'Oh Honey Honey' (85258).",
						["sourceQuests"] = { 89348 },	-- Let There Bee Love
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
					}),
					--
					q(85259, {	-- Waggle Dance
						-- Note: Drawing circles is so obnoxious... Definitelly going to be either a daily or a WQ	-Exo 22.06.2025.
						-- Note2: I GOD DAMN KNEW IT! Daily "Shake your Bee-hind" -Exo 24.06.2025.
						["sourceQuests"] = { 85258 },	-- Oh Honey Honey
						["provider"] = { "n", 230736 },	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
					}),
					q(85260, {	-- Hiving a Hard Day
						["sourceQuests"] = { 85259 },	-- Waggle Dance
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
					}),
					q(85261, {	-- Bee Roll
						["sourceQuests"] = { 85260 },	-- Hiving a Hard Day
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
						["g"] = { i(231163), },	-- Appropriated Azerothian Camera (PQI!)
					}),
					q(85262, {	-- The Royal Procession
						["sourceQuests"] = { 85261 },	-- Bee Roll
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
					}),
				}),
			}),
			header(HEADERS.Achievement, 41809, {	-- Ecological Variety (Daily Quests)
				header(HEADERS.AchCriteria, 41809.01, {	-- Honey Bees
					q(90545, {	-- A Reel Problem
						["description"] = "Requires Fishing profession.",
						["sourceQuests"] = { 85262 },	-- The Royal Procession
						["provider"] = { "n", 230736 },	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["isDaily"] = true,
						["g"] = { i(241352), },	-- Hydrobite (QI!)
					}),
					q(85459, {	-- Anima Reclamation Program
						["sourceQuests"] = { 85262 },	-- The Royal Procession
						["provider"] = { "n", 231820 },	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["isDaily"] = true,
						["g"] = { i(229412), },	-- Devourer Anima (QI!)
					}),
					q(89209, {	-- Bu-zzz
						["sourceQuests"] = { 85262 },	-- The Royal Procession
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
						["isDaily"] = true,
					}),
					q(85461, {	-- Food Run
						["sourceQuests"] = { 85262 },	-- The Royal Procession
						["provider"] = { "n", 231820 },	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["isDaily"] = true,
						["g"] = { i(231508), },	-- Stolen Food Shipment (QI!)
					}),
					q(89194, {	-- Shake your Bee-hind
						["sourceQuests"] = { 85262 },	-- The Royal Procession
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
						["isDaily"] = true,
					}),
					q(89195),	--
					q(89210),	--
				}),
				header(HEADERS.AchCriteria, 41809.02, {	-- Slatebacks
					q(85462),	--
					q(88980),	--
					q(85481),	--
					q(85710),	--
				}),
				header(HEADERS.AchCriteria, 41809.03, {	-- Fox-strut
					q(89212),	--
					q(85465),	--
					q(85721),	--
					q(89057),	--
					q(89240),	--
				}),
				header(HEADERS.AchCriteria, 41809.04, {	-- Lil' Lapbugs
					q(89254),	--
					q(89221),	--
					q(89297),	--
					q(85470),	--
				}),
				header(HEADERS.AchCriteria, 41809.05, {	-- Rays of Sunshine
					q(89197),	--
					q(89065),	--
					q(89056),	--
					q(89242),	--
				}),
				header(HEADERS.AchCriteria, 41809.06, {	-- Hard K'arroc
					q(89238),	--
					q(89192),	--
					q(89213),	--
					q(86342),	--
					q(89198),	--
				}),
				header(HEADERS.AchCriteria, 41809.07, {	-- A Slither of Snakes
					q(88659),	--
					q(88981),	--
					q(88975),	--
				}),
			}),
			header(HEADERS.Achievement, 42731, {	-- Become a Hero. Become a Phasediver!
				q(90938, {	-- A Skip Through the Void
					--["sourceQuests"] = { ??? },	-- Popped up on an alt as soon as I got zoned into Tazavesh for the first time -Exo
					["provider"] = { "n", 241588 },	-- Hashim
					["coord"] = { 50.3, 36.3, KARESH },
				}),
				q(89380, {	-- Another World
					--["sourceQuests"] = { ??? },	-- According to playthrough, this unlocks after HQT 91812 is Triggered
					["provider"] = { "n", 241601 },	-- Shad'anis
					["coord"] = { 75.9, 33.0, KARESH },	-- Alex: 74.9, 31.1 as of 20/07
				}),
				q(89561, {	-- Wrapped Up
					--["sourceQuests"] = { ??? },	-- According to playthrough, this unlocks after HQT 91812 is Triggered
					["provider"] = { "n", 241588 },	-- Hashim
					["coord"] = { 50.3, 36.3, KARESH },
					["g"] = {
						i(238039),	-- Chronomatic Fiber
						i(238041),	-- Dexterous Fiber
						i(238037),	-- Energizing Fiber
						i(238040),	-- Precise Fiber
					},
				}),
				q(89343, {	-- The Untethered Void
					["sourceQuests"] = { 89380 },	-- Another World
					["provider"] = { "n", 241624 },	-- Shad'anis
					["coord"] = { 50.4, 36.3, KARESH },
				}),
				q(89344, {	-- What Doesn't See You
					["sourceQuests"] = { 89343 },	-- The Untethered Void
					["provider"] = { "n", 241624 },	-- Shad'anis
					["coord"] = { 50.4, 36.3, KARESH },
					["g"] = {
						o(543787, {	-- Phase Energy
							["coord"] = { 49.1, 37.8, KARESH },
							["g"] = { i(244042), },	-- Phase Energy (QI!)
						}),
					},
				}),
				q(89345, {	-- The Untethered Horror
					["sourceQuests"] = { 89344 },	-- What Doesn't See You
					["provider"] = { "n", 241624 },	-- Shad'anis
					["coord"] = { 50.4, 36.3, KARESH },
				}),
			}),
			header(HEADERS.Achievement, 42739, {	-- Sojourner of K'aresh
				header(HEADERS.AchCriteria, 42739.01, {	-- Of Boughs and Bonds
					q(84740, {	-- Bridge to Nowhere
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "n", 230159 },	-- Om'fennad
						["coord"] = { 54.4, 63.7, KARESH },
						["g"] = { i(229423), },	-- Echo Surveyor (PQI!)
					}),
					q(84915, {	-- Clearing the Dunes
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "n", 230159 },	-- Om'fennad
						["coord"] = { 54.4, 63.7, KARESH },
					}),
					q(84741, {	-- Signs in the Sands
						["sourceQuests"] = {
							84740,	-- Bridge to Nowhere
							84915,	-- Clearing the Dunes
						},
						["provider"] = { "n", 230159 },	-- Om'fennad
						["coord"] = { 54.4, 63.7, KARESH },
						["g"] = {
							o(469681, {	-- Footprints
								["coord"] = { 57.6, 54.0, KARESH },
							}),
						},
					}),
					q(84759, {	-- Ill-met in Starlight
						["sourceQuests"] = { 84741 },	-- Signs in the Sands
						["provider"] = { "n", 230789 },	-- Shahata
						["coord"] = { 60.8, 54.3, KARESH },
					}),
					q(84761, {	-- Toil and Trespass
						["sourceQuests"] = { 84759 },	-- Ill-met in Starlight
						["provider"] = { "n", 230233 },	-- Shahata
						["coord"] = { 76.4, 55.3, KARESH },
						["g"] = {
							o(477249, {	-- Stolen Supplies
								i(237038),	-- Shahata's Supplies (QI!)
							}),
						},
					}),
					q(84760, {	-- A Friendly Warning
						["sourceQuests"] = { 84759 },	-- Ill-met in Starlight
						["provider"] = { "n", 230233 },	-- Shahata
						["coord"] = { 76.4, 55.3, KARESH },
					}),
					q(84762, {	-- We Are Our Words
						["sourceQuests"] = {
							84761,	-- Toil and Trespass
							84760,	-- A Friendly Warning
						},
						["provider"] = { "n", 230233 },	-- Shahata
						["coord"] = { 76.3, 55.3, KARESH },
						["g"] = {
							o(469724, {	-- Damaged Echo Surveyor
								["coord"] = { 76.4, 55.2, KARESH },
								["g"] = { i(237127), },	-- Damaged Echo Surveyor (QI!)
							}),
							o(509461),	-- Sealed Chest
						},
					}),
					q(84820, {	-- By Oath and Blood
						["sourceQuests"] = { 84762 },	-- We Are Our Words
						["provider"] = { "n", 230233 },	-- Shahata
						["coord"] = { 76.4, 55.2, KARESH },
					}),
					q(84765, {	-- Of Bonds and Boughs
						["sourceQuests"] = { 84820 },	-- By Oath and Blood
						["provider"] = { "n", 230159 },	-- Om'fennad
						["coord"] = { 73.8, 53.3, KARESH },
						["g"] = {
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
						["provider"] = { "n", 232498 },	-- Associate Xy'nell
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
					}),
					q(85430, {	-- Mandatory Time Off
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "n", 232498 },	-- Associate Xy'nell
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
					}),
					q(85431, {	-- Drain Their Resources
						["sourceQuests"] = {
							85429,	-- Overwhelm Them
							85430,	-- Mandatory Time Off
						},
						["provider"] = { "n", 232498 },	-- Associate Xy'nell
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
						["g"] = { i(232609), },	-- Overflowing Anima Core (QI!)
					}),
					q(85432, {	-- Confuse Their Contacts
						["sourceQuests"] = {
							85429,	-- Overwhelm Them
							85430,	-- Mandatory Time Off
						},
						["provider"] = { "n", 232498 },	-- Associate Xy'nell
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
						["g"] = { i(232644), },	-- Broker Disguise Pin (PQI!)
					}),
					q(85433, {	-- Eyes on Us
						["sourceQuests"] = {
							85431,	-- Drain Their Resources
							85432,	-- Confuse Their Contacts
						},
						["provider"] = { "n", 232498 },	-- Associate Xy'nell
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
					}),
					q(85434, {	-- On a Technicality
						["sourceQuests"] = { 85433 },	-- Eyes on Us
						["provider"] = { "n", 232498 },	-- Associate Xy'nell
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
						["g"] = {
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
						["provider"] = { "n", 248153 },	-- Magister Umbric
						["coord"] = { 60.9, 27.7, KARESH },
					}),
					q(86786, {	-- The Void Hunter
						["sourceQuests"] = { 90972 },	-- A Common Cause
						["provider"] = { "n", 240842 },	-- Leona Darkstrider
						["coord"] = { 59.3, 24.2, KARESH },
						["g"] = { i(239074), },	-- Void Lure (PQI!)
					}),
					q(89323, {	-- Wasted Lands
						["sourceQuests"] = { 86786 },	-- The Void Hunter
						["provider"] = { "n", 236907 },	-- Adarus Duskblaze
						["coord"] = { 60.1, 29.7, KARESH },
					}),
					q(89324, {	-- A Piece of Something Greater
						["sourceQuests"] = { 89323 },	-- Wasted Lands
						["provider"] = { "n", 242179 },	-- Adarus Duskblaze
						["coord"] = { 79.0, 53.4, KARESH },
						["g"] = {
							i(239155),	-- Key of the Dark Sun (QI!)
							i(239153),	-- Key of the Eternal Night (QI!)
							i(239154),	-- Key of the Waning Moon (QI!)
						},
					}),
					q(89325, {	-- The Void Confluence
						["sourceQuests"] = { 89324 },	-- A Piece of Something Greater
						["provider"] = { "n", 242179 },	-- Adarus Duskblaze
						["coord"] = { 79.0, 53.4, KARESH },
					}),
					q(89326, {	-- Distilled Darkness
						["sourceQuests"] = { 89325 },	-- The Void Confluence
						["provider"] = { "n", 240842 },	-- Leona Darkstrider
						["coords"] = {
							{ 56.8, 24.1, KARESH },	-- Voidscar Cavern Entrance
							{ 61.9, 53.0, 2477 },	-- Voidscar Cavern
						},
					}),
					q(89327, {	-- Chaos
						["sourceQuests"] = { 89326 },	-- Distilled Darkness
						["provider"] = { "n", 240842 },	-- Leona Darkstrider
						["coords"] = {
							{ 62.0, 53.0, 2477 },	-- Voidscar Cavern
						},
					}),
					q(91044, {	-- Hunger of the Void
						["sourceQuests"] = { 89327 },	-- Chaos
						["provider"] = { "n", 240842 },	-- Leona Darkstrider
						["coords"] = {
							{ 62.0, 53.1, 2477 },	-- Voidscar Cavern
						},
						["g"] = {
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
						["provider"] = { "n", 246601 },	-- Researcher Essarae
						["coord"] = { 59.9, 29.1, KARESH },
						["g"] = { i(246244), },	-- Phase-Altered Essence (QI!)
					}),
					q(91454, {	-- Phase-Lost Adventurer
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "i", 246589 },	-- Half-Digested Journal (QS!)
						["cr"] = 246608,	-- Phase-Lost Creeper
						["coord"] = { 56.8, 24.1, KARESH },
					}),
				}),
				header(HEADERS.AchCriteria, 42739.05, {	-- Chasing Echoes
					q(85006, {	-- Those We Have Lost
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "n", 231314 },	-- Om'dalan
						["coord"] = { 51.9, 64.8, KARESH },
						["g"] = { i(229969), },	-- Flickering Essence (QI!)
					}),
					q(85007, {	-- Extended Reach
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "n", 231314 },	-- Om'dalan
						["coord"] = { 51.9, 64.8, KARESH },
						["g"] = {
							o(504074, {	-- Nether Reader
								["coords"] = {
									{ 49.9, 64.8, KARESH },
									{ 52.0, 63.2, KARESH },
									{ 52.2, 69.5, KARESH },
								}
							}),
						},
					}),
					q(85008, {	-- Machinations of Memory
						["sourceQuests"] = {
							85006,	-- Those We Have Lost
							85007,	-- Extended Reach
						},
						["provider"] = { "n", 231314 },	-- Om'dalan
						["coord"] = { 51.0, 68.3, KARESH },
						["g"] = {
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
						["provider"] = { "n", 231314 },	-- Om'dalan
						["coord"] = { 51.0, 68.3, KARESH },
						["g"] = {
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
						["provider"] = { "n", 231162 },	-- Driruj
						["coord"] = { 76.7, 34.3, KARESH },
						["g"] = {
							o(469901, {	-- Void Glass Node
								i(229892),	-- Void Glass Sample (QI!)
							}),
						},
					}),
					q(84973, {	-- Of Motes and Husks
						["sourceQuests"] = { 84972 },	-- Chipping the Void
						["provider"] = { "n", 231162 },	-- Driruj
						["coord"] = { 76.7, 34.3, KARESH },
						["g"] = {
							i(229901),	-- Krolusk Husk (QI!)
							i(229900),	-- Softly Swirling Mote (QI!)
						},
					}),
					q(84974, {	-- Shards of Hope
						["sourceQuests"] = { 84973 },	-- Of Motes and Husks
						["provider"] = { "n", 231162 },	-- Driruj
						["coord"] = { 76.7, 34.3, KARESH },
						["g"] = {
							i(236411),	-- Mana Matrix (PQI!)
							--
							o(473920, {	-- Void-infused Shard
								i(229959),	-- Void-Infused Shard (QI!)
							}),
						},
					}),
					q(85018, {	-- Packets of Promises
						["sourceQuests"] = { 84974 },	-- Shards of Hope
						["provider"] = { "n", 231162 },	-- Driruj
						["coord"] = { 76.7, 34.3, KARESH },
						["g"] = {
							o(470057, {	-- Satchel of Seeds
								["coord"] = { 79.0, 32.5, KARESH },
								["g"] = { i(229905), },	-- Satchel of Seeds (QI!)
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
					-- According to quest data, this quest should start somewhere around The Oasis or Shan'dorah but I can't find the [qg] anywhere	-Exo
					-- "The ruined town of Sufaad to the southeast of here was where I resided as a Wastelander."
					q(85019, {	-- An Outcast's Request
						--["sourceQuests"] = { ??? },
						["provider"] = { "n", 231422 },	-- Outcast Hizfran
						["coord"] = { 77.7, 39.8, KARESH },
						["g"] = {
							i(229902),	-- K'areshi Priest's Bowl (QI!)
							i(229895),	-- Scepter of Priesthood (QI!)
							i(229893),	-- Ways of the Priesthood (QI!)
						},
					}),
					q(85020, {	-- The Blood of K'aresh
						["sourceQuests"] = { 85019 },	-- An Outcast's Request
						--["provider"] = { "n", 231699 or 231422 },	-- Outcast Hizfran
						--["coord"] = { x, y, KARESH },
						["g"] = {
							i(229970),	-- Blood of K'aresh Deposit (QI!)
						},
					}),
					q(85021, {	-- Cleansing the Void
						["sourceQuests"] = { 85020 },	-- The Blood of K'aresh
						--["provider"] = { "n", 231699 or 231422 },	-- Outcast Hizfran
						--["coord"] = { x, y, KARESH },
					}),
					q(85022, {	-- Priest of the Old Ways
						["sourceQuests"] = { 85021 },	-- Cleansing the Void
						--["provider"] = { "n", 231699 or 231422 },	-- Outcast Hizfran
						--["coord"] = { x, y, KARESH },
					}),
				}),
				header(HEADERS.AchCriteria, 42739.08, {	-- That Tazavesh Taste
					q(85383, {	-- Applied Mixology
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "n", 232351 },	-- Trader Ba'kril
						["coord"] = { 43.8, 52.3, KARESH_TAZAVESH },
					}),
					q(85384, {	-- Market Research
						["sourceQuests"] = { 85383 },	-- Applied Mixology
						["provider"] = { "n", 232351 },	-- Trader Ba'kril
						["coord"] = { 43.8, 52.3, KARESH_TAZAVESH },
					}),
					q(85394, {	-- An Eye for Trouble
						["sourceQuests"] = { 85384 },	-- Market Research
						["provider"] = { "n", 232351 },	-- Trader Ba'kril
						["coord"] = { 43.8, 52.3, KARESH_TAZAVESH },
						["g"] = {
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
						["provider"] = { "n", 231674 },	-- Vaultkeeper Xy'vez
						["coord"] = { 48.1, 24.6, KARESH_TAZAVESH },
					}),
					q(85053, {	-- Obtaining Permits
						["sourceQuests"] = { 85052 },	-- A Lucrative Opportunity
						["provider"] = { "n", 232008 },	-- Cartel Boss Xy'eolm
						["coord"] = { 50.2, 19.3, KARESH_TAZAVESH },
					}),
					q(85054, {	-- Articles of Acquisition
						["sourceQuests"] = { 85053 },	-- Obtaining Permits
						["provider"] = { "n", 232008 },	-- Cartel Boss Xy'eolm
						["coord"] = { 50.2, 19.3, KARESH_TAZAVESH },
						["g"] = { i(244847), },	-- Aftermarket Ledger (PQI!)
					}),
					q(85055, {	-- Expired Goods
						["sourceQuests"] = { 85054 },	-- Articles of Acquisition
						["provider"] = { "n", 232057 },	-- Vaultkeeper Xy'vez
						["coord"] = { 44.8, 35.7, KARESH_TAZAVESH },
						["g"] = {
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
						["provider"] = { "n", 234216 },	-- Assistant Engineer Om'vek
						["coord"] = { 49.9, 57.5, KARESH },
						["g"] = {
							o(500591, {	-- Firebud
								i(233009),	-- Firebud Pollen (QI!)
							}),
						},
					}),
					q(86200, {	-- Give me Fire
						["sourceQuests"] = { 86196 },	-- Give me Fuel
						["provider"] = { "n", 234216 },	-- Assistant Engineer Om'vek
						["coord"] = { 49.9, 57.5, KARESH },
					}),
					q(86201, {	-- Watch me Make These Bugs Expire
						["sourceQuests"] = { 86200 },	-- Give me Fire
						["provider"] = { "n", 234216 },	-- Assistant Engineer Om'vek
						["coord"] = { 49.9, 57.5, KARESH },
						["g"] = {
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
						["provider"] = { "n", 233500 },	-- Om'taha
						["coord"] = { 57.0, 57.3, KARESH },
					}),
					q(85239, {	-- A New Devouring
						["sourceQuests"] = { 85238 },	-- Stranger on the Steps
						["provider"] = { "n", 233500 },	-- Om'taha
						["coord"] = { 57.0, 57.3, KARESH },
					}),
					q(85240, {	-- Only Hunger Remains
						["sourceQuests"] = { 85238 },	-- Stranger on the Steps
						["provider"] = { "n", 233500 },	-- Om'taha
						["coord"] = { 57.0, 57.3, KARESH },
					}),
					q(85241, {	-- A Once-Proud Priest
						["sourceQuests"] = {
							85239,	-- A New Devouring
							85240,	-- Only Hunger Remains
						},
						["provider"] = { "n", 233500 },	-- Om'taha
						["coord"] = { 59.5, 60.5, KARESH },
					}),
					q(86193, {	-- Life for Life
						["sourceQuests"] = { 85241 },	-- A Once-Proud Priest
						["provider"] = { "n", 233500 },	-- Om'taha
						["coord"] = { 59.5, 60.5, KARESH },
						["g"] = {
							i(245737),	-- Ritualbreaker's Band
							i(245738),	-- Seal of the Shattered Dome
						},
					}),
				}),
			}),
			header(HEADERS.Achievement, 42737, {	-- Capstoned
				q(89294, {	-- Special Assignment: Alligned Views
					["coord"] = { 74.7, 51.1, KARESH },	-- could be a bit inaccurate
					["g"] = {
						i(244842),	-- Fabled Veteran's Cache
					},
				}),
				q(89293, {	-- Special Assignment: Overshadowed
					["coord"] = { 56.3, 27.3, KARESH },
					["g"] = {
						i(244842),	-- Fabled Veteran's Cache
					},
				}),
			}),
			header(HEADERS.Achievement, 41811, {	-- Ecological Stability
				q(84744),	-- A Slither of Snakes
				q(84742),	-- Fox-strut
				q(86793),	-- Hard K'arroc
				q(84745),	-- Honey Bees
				q(85520),	-- Lil' Lapbugs
				q(89306),	-- Rays of Sunshine
				q(84992),	-- Slatebacks
			}),
			header(HEADERS.Achievement, 41980, {	-- Vigiliante
				q(87344, {	-- A Key Threat
					["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
					["provider"] = { "n", 238255 },	-- Constable Zo'ardaz
					["coord"] = { 48.6, 57.8, KARESH_TAZAVESH },
				}),
				header(HEADERS.Quest, 87345, {	-- Warrant: Xy'vox the Twisted
					q(87345, {	-- Warrant: Xy'vox the Twisted
						["description"] = "This quest can be obtained only during 'A Key Threat'.",
						["provider"] = { "n", 238271 },	-- Warrant: Xy'Vox the Twisted
						["coord"] = { 48.5, 58.4, KARESH_TAZAVESH },
						["cost"] = {
							{ "i", 236783, 1 },	-- Ethereal Seal (QI!)
							{ "i", 236762, 1 },	-- Tazavesh Facade (QI!)
							{ "i", 236858, 1 },	-- Zo'kita Fruit (QI!)
						},
						["g"] = { i(236753), },	-- Xy'vox Refuge Dampener (QS!)
					}),
					q(87376, {	-- Ethereal Seal
						["description"] = "This quest is available during 'Warrant: Xy'vox the Twisted'.",
						["provider"] = { "n", 238486 },	-- Citizen Om'sto
						["coord"] = { 46.6, 50.3, KARESH_TAZAVESH },
						["repeatable"] = true,
						["g"] = {
							i(236781, {	-- Discarded Shadow Writ (QI!)
								["providers"] = {
									{ "o", 516994 },	-- Tazavesh Trash
									{ "o", 517000 },	-- Tazavesh Trash
								},
							}),
							--
							i(236783),	-- Ethereal Seal (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87363, {	-- Tazavesh Facade
						["description"] = "This quest is available during 'Warrant: Xy'vox the Twisted'.",
						["provider"] = { "n", 238387 },	-- Deputy Zo'mi
						["coord"] = { 46.9, 57.5, KARESH_TAZAVESH },
						["repeatable"] = true,
						["g"] = {
							i(236766),	-- Essence Scanner (PQI!)
							--
							i(236762),	-- Tazavesh Facade (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87380, {	-- Zo'kita Fruit
						["description"] = "This quest is available during 'Warrant: Xy'vox the Twisted'.",
						["provider"] = { "n", 238474 },	-- Zo'kita
						["coord"] = { 52.4, 57.8, KARESH_TAZAVESH },
						["repeatable"] = true,
						["g"] = {
							i(236859),	-- Untethered Hide (QI!)
							--
							i(236858),	-- Zo'kita Fruit (QI!) (Reward, required for the Warrant)
						},
					}),
					q(90122, {	-- Eliminate Xy'vox the Twisted
						["provider"] = { "i", 236753 },	-- Xy'vox Refuge Dampener (QS!)
						["repeatable"] = true,
					}),
				}),
				q(90123),	--
				q(90124),	--
				q(90125),	--
				q(90126),	--
				q(90127),	--
			}),
			n(BONUS_OBJECTIVES, {
				q(84966, {	-- Break the Assault
					["sourceQuests"] = { 84960 },	-- The Darkness Among Us
					["coord"] = { 54.1, 63.7, KARESH_TAZAVESH },
				}),
				q(86447, {	-- Devourer Attack: Eco-dome: Primus
					["isWeekly"] = true,
					["g"] = {
						i(246240),	-- Devoured Energy-Pod
						i(238663),	-- Crystallized Anima (QS!)
					},
				}),
				q(86465, {	-- Devourer Attack: Tazavesh
					["isWeekly"] = true,
					["g"] = {
						i(246240),	-- Devoured Energy-Pod
						i(238665),	-- Crystallized Anima (QS!)
					},
				}),
				q(86464, {	-- Devourer Attack: The Atrium
					["isWeekly"] = true,
					["g"] = {
						i(246240),	-- Devoured Energy-Pod
						i(238664),	-- Crystallized Anima (QS!)
					},
				}),
				q(84993, {	-- Devourer Attack: The Oasis
					["isWeekly"] = true,
					["g"] = {
						i(246240),	-- Devoured Energy-Pod
						i(232467),	-- Crystallized Anima (QS!)
					},
				}),
			}),
			-- Quest (item) obtained during Devourer Attack
			q(85722, {	-- Making a Deposit
				["sourceQuests"] = { 84993 },	-- Devourer Attack: The Oasis
				["provider"] = { "i", 232467 },	-- Crystallized Anima (QS!)
				["cr"] = 231229,	-- Korgoth the Hungerer
				["isWeekly"] = true,
			}),
			q(89062, {	-- Making a Deposit
				["sourceQuests"] = { 86464 },	-- Devourer Attack: The Atrium
				["provider"] = { "i", 238664 },	-- Crystallized Anima (QS!)
				["cr"] = 235087,	-- The Harvester
				["isWeekly"] = true,
			}),
			q(89063, {	-- Making a Deposit
				["sourceQuests"] = { 86465 },	-- Devourer Attack: Tazavesh
				["provider"] = { "i", 238665 },	-- Crystallized Anima (QS!)
				["cr"] = 235104,	-- The Wallbreaker
				["isWeekly"] = true,
			}),
			q(89061, {	-- Making a Deposit
				["sourceQuests"] = { 86447 },	-- Devourer Attack: Eco-dome: Primus
				["provider"] = { "i", 238663 },	-- Crystallized Anima (QS!)
				["cr"] = 234970,	-- Miasmawrath
				["isWeekly"] = true,
			}),
			-- Temp placement.
			q(91093, {	-- More Than Just a Phase
				["qgs"] = {
					238255,	-- Constable Zo'ardaz
					241624,	-- Shad'anis
				},
				["coords"] = {
					{ 48.6, 57.8, KARESH_TAZAVESH },	-- Constable Zo'ardaz
					{ 50.4, 36.3, KARESH },	-- Shad'anis
				},
				["repeatable"] = true,
			}),
			-- Unsorted
			q(86191),	--
			q(86195),	--
			q(86359),	--
			q(86392),	--
			--q(86492),	-- TODO: Alex - ach(42736),	-- Ixthar's Legacy
			q(86607),	--
			q(87294),	--
			q(87415),	--
			q(88672),	--
			--q(90954),	--	TODO: Alex - ach(42742) Power of the Reshii / Regalia of the Reshii upgrade, should probably be automated in future?
			n(REWARDS, {
				currency(3278),	-- Ethereal Strands
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KHAZ_ALGAR, {
		m(KARESH, {
			n(QUESTS, {
				-- During main story
				q(84901),	-- [DNT] CH04Q05p - Triggered after completing 'Like a Knife Through Aether' (84900)
				q(85111),	-- [DNT] K'aresh Trust Renown Unlock (spellID 466720)
				q(91812),	-- Triggered after unlocking Renown 2 of The K'aresh Trust right after completing 'The Tabiqa' (84910)
				-- ??
				q(90812),	-- pop randomly at start/intro quest chain (spellID - 1234922 / Warrant)
				q(90807),	-- Triggered at the completion of 'Warrant: Xy'vox the Twisted' (87345)
				-- Devourer Attacks
				-- Alex: they are probably fired cause boss in the end of event counted as 'rare' and you get one for loot lockout and 2nd for rep?
				q(91286),	-- Triggered at the completion of 'Devourer Attack: The Oasis' (84993)
				q(91289),	-- Triggered at the completion of 'Devourer Attack: The Atrium' (86464)
				q(91290),	-- Triggered at the completion of 'Devourer Attack: Tazavesh' (86465)
				q(91309),	-- Triggered at the completion of 'Devourer Attack: The Oasis' (84993)
				q(91310),	-- Triggered at the completion of 'Devourer Attack: Eco-dome: Primus' (86447)
				q(91311),	-- Triggered at the completion of 'Devourer Attack: The Atrium' (86464)
				q(91312),	-- Triggered at the completion of 'Devourer Attack: Tazavesh' (86465)
				q(91433),	-- Triggered at the completion of 'Devourer Attack: The Oasis' (84993)
				q(91434),	-- Triggered at the completion of 'Devourer Attack: Eco-dome: Primus' (86447)
				q(91435),	-- Triggered at the completion of 'Devourer Attack: The Atrium' (86464)
				q(91436),	-- Triggered at the completion of 'Devourer Attack: Tazavesh' (86465)

				q(90955, name(HEADERS.Spell,1249651)),	-- Boon of the Reshii (Reshii Wraps 1st upgrade)
			}),
		}),
	}),
})));
