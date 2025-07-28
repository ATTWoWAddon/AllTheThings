---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(QUESTS, {
			header(HEADERS.Achievement, 41970, {	-- The Knife's Edge
				header(HEADERS.AchCriteria, 41970.01, {	-- Chapter 1: A Shadowy Invitation
					q(84956, {	-- A Shadowy Invitation
						["provider"] = { "n", 227758 },	-- Alleria Windrunner
						--["sourceQuests"] = { xx },	-- TODO: does it exist?
						["coord"] = { 42.4, 26.9, DORNOGAL },
					}),
					q(84957, {	-- Return to the Veiled Market
						["provider"] = { "n", 233603 },	-- Locus-Walker
						["sourceQuests"] = { 84956 },	-- A Shadowy Invitation
						["coord"] = { 42.1, 26.9, DORNOGAL },
					}),
					q(85003, {	-- Restoring Operational Efficiency
						["provider"] = { "n", 230604 },	-- Om'en
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
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
						["provider"] = { "n", 230954 },	-- Ta'ka
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["coord"] = { 56.8, 73.0, KARESH_TAZAVESH },
					}),
					q(85039, {	-- Compromised Containment
						["provider"] = { "n", 231564 },	-- Xy'bin
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["coord"] = { 56.6, 72.9, KARESH_TAZAVESH },
						["groups"] = {
							i(237891),	-- Menagerie's Lost Relic
							i(237894),	-- Pendant of Arcane Havoc
						},
					}),
					q(84959, {	-- Lost Lines of Defense
						["provider"] = { "n", 230955 },	-- Ba'ver
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["coord"] = { 53.1, 64.4, KARESH_TAZAVESH },
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
						["provider"] = { "n", 233706 },	-- Locus-Walker
						["sourceQuests"] = { 85003 },	-- Restoring Operational Efficiency TODO: There is no point to list all quests, I guess?
						["coord"] = { 59.7, 83.4, KARESH_TAZAVESH },
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
					--	["provider"] = { "n", 230609 },	-- Alleria Windrunner
					--	["coord"] = { 54.7, 66.9, KARESH_TAZAVESH },
					--}),
					--
					q(84963, {	-- Sealing the Shadows
						["provider"] = { "n", 234601 },	-- Om'en
						["sourceQuests"] = { 84960 },	-- The Darkness Among Us
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
						["provider"] = { "n", 234596 },	-- Locus-Walker
						["sourceQuests"] = { 84960 },	-- The Darkness Among Us
						["coord"] = { 54.2, 63.1, KARESH_TAZAVESH },
						["groups"] = {
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
						["provider"] = { "n", 234602 },	-- Alleria Windrunner
						["sourceQuests"] = { 84960 },	-- The Darkness Among Us
						["coord"] = { 53.7, 63.2, KARESH_TAZAVESH },
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
						["provider"] = { "n", 234483 },	-- Alleria Windrunner (mobileNPC)
						["sourceQuests"] = {
							84961,	-- Barriers to Entry
							84964,	-- Heroes Among Shadow
							84963,	-- Sealing the Shadows
						},
						-- She is following you around. Coordinates depend on where you turned in previous cluster of quests
					}),
					q(86835, {	-- Regroup!
						["provider"] = { "n", 234483 },	-- Alleria Windrunner (mobileNPC)
						["sourceQuests"] = { 84965 },	-- Core Contributions
						-- She is following you around. Coordinates depend on where you turned in previous quest
					}),
					q(84967, {	-- The Shadowguard Shattered
						["provider"] = { "n", 234620 },	-- Locus-Walker
						["sourceQuests"] = { 86835 },	-- Regroup!
						["coord"] = { 40.5, 67.8, KARESH_TAZAVESH },
					}),
				}),
				header(HEADERS.AchCriteria, 41970.02, {	-- Chapter 2: Void Alliance
					q(85032, {	-- What Is Left of Home
						["provider"] = { "n", 231128 },	-- Locus-Walker
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
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
						["provider"] = { "n", 230700 },	-- Locus-Walker
						["sourceQuests"] = { 85032 },	-- What Is Left of Home
						["coord"] = { 34.0, 10.9, KARESH_TAZAVESH },
					}),
					q(84855, {	-- Dead Silence
						["provider"] = { "n", 230806 },	-- Locus-Walker
						["sourceQuests"] = { 85032 },	-- What Is Left of Home
						["coord"] = { 48.2, 36.7, KARESH },
						["groups"] = {
							i(237861),	-- Cowl of the Lost Trust
							i(237873),	-- Coif of the Lost Trust
							i(237878),	-- Helm of the Lost Trust
							i(237892),	-- Hood of the Lost Trust
						},
					}),
					q(86495, {	-- The Reshii Ribbon
						["provider"] = { "n", 234106 },	-- Locus-Walker
						["sourceQuests"] = { 84855 },	-- Dead Silence
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
						["provider"] = { "n", 233946 },	-- Xal'atath
						["sourceQuests"] = { 86495 },	-- The Reshii Ribbon
						["coord"] = { 48.1, 36.6, KARESH },
						["groups"] = {
							i(248955),	-- Ethereal Seam Ripper
							i(235499),	-- Reshii Wraps
						},
					}),
					q(84857, {	-- Eco-Dome: Primus
						["provider"] = { "n", 234106 },	-- Locus-Walker
						["sourceQuests"] = { 84856 },	-- Where the Void Gathers
						["coord"] = { 48.1, 36.5, KARESH },
					}),
					q(84858, {	-- System Restart
						["provider"] = { "n", 230814 },	-- Ve'nari
						["sourceQuests"] = { 84857 },	-- Eco-Dome: Primus
						["coord"] = { 47.1, 54.5, KARESH },
						["groups"] = {
							o(500813, {	-- Rod of analysis
								["coord"] = { 47.2, 58.6, KARESH },
								["groups"] = { i(233068), },	-- Rod of Analysis (QI!)
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
						["provider"] = { "n", 230814 },	-- Ve'nari
						["sourceQuests"] = { 84858 },	-- System Restart
						["coord"] = { 47.1, 54.5, KARESH },
						["groups"] = {
							i(233187),	-- Botanical Report (QI!)
							i(233189),	-- Shield Technician Report (QI!)
						},
					}),
					q(84860, {	-- Eco-Stabilizing
						["provider"] = { "n", 230814 },	-- Ve'nari
						["sourceQuests"] = { 84858 },	-- System Restart
						["coord"] = { 47.1, 54.5, KARESH },
						["groups"] = {
							o(502907, {	-- Rod of Activation
								["coord"] = { 48.8, 59.0, KARESH },
								["groups"] = { i(233326), },	-- Rod of Activation (QI!)
							}),
							--
							i(237876),	-- Eco-Stabilizer's Cinch
							i(237863),	-- Eco-Stabilizer's Cord
							i(237884),	-- Eco-Stabilizer's Girdle
							i(237868),	-- Eco-Stabilizer's Sash
						},
					}),
					q(84861, {	-- This Is Our Dome!
						["provider"] = { "n", 230814 },	-- Ve'nari
						["sourceQuests"] = {
							84859,	-- Damage Report 101
							84860,	-- Eco-Stabilizing
						},
						["coord"] = { 47.1, 54.5, KARESH },
						["groups"] = {
							i(237867),	-- Oathsworn Defender's Breeches
							i(237874),	-- Oathsworn Defender's Greaves
							i(237862),	-- Oathsworn Defender's Leggings
							i(237882),	-- Oathsworn Defender's Legguards
						},
					}),
					q(84862, {	-- Void Alliance
						["provider"] = { "n", 230825 },	-- Xal'atath
						["sourceQuests"] = {
							84859,	-- Damage Report 101
							84860,	-- Eco-Stabilizing
						},
						["coord"] = { 47.1, 54.6, KARESH },
					}),
					q(84863, {	-- Counter Measures
						["provider"] = { "n", 230814 },	-- Ve'nari
						["sourceQuests"] = {
							84861,	-- This Is Our Dome!
							84862,	-- Void Alliance
						},
						["coord"] = { 47.1, 54.5, KARESH },
					}),
					q(84865, {	-- Divide and Conquer
						["provider"] = { "n", 230825 },	-- Xal'atath
						["sourceQuests"] = {
							84861,	-- This Is Our Dome!
							84862,	-- Void Alliance
						},
						["coord"] = { 47.0, 54.5, KARESH },
						["groups"] = { i(233222), },	-- Nullbomb (PQI!)
					}),
					q(84864, {	-- Her Dark Side
						["provider"] = { "n", 230825 },	-- Xal'atath
						["sourceQuests"] = {
							84861,	-- This Is Our Dome!
							84862,	-- Void Alliance
						},
						["coord"] = { 47.0, 54.5, KARESH },
					}),
					q(84866, {	-- To Purchase Safety
						["provider"] = { "n", 232642 },	-- Alleria Windrunner (mobileNPC)
						["sourceQuests"] = {
							84863,	-- Counter Measures
							84865,	-- Divide and Conquer
							84864,	-- Her Dark Side
						},
						-- She is following you around. Coordinates depend on where you turned in previous cluster of quests
						["groups"] = {
							i(238386),	-- Void-Touched Fragment
						},
					}),
					q(86946, {	-- Unwrapped and Unraveled
						["provider"] = { "n", 237705 },	-- Xal'atath
						["sourceQuests"] = { 84866 },	-- To Purchase Safety
						["coord"] = { 54.3, 45.5, KARESH },
					}),
					q(90517, {	-- My Part of the Deal
						["provider"] = { "n", 242538 },	-- Ve'nari
						["sourceQuests"] = { 86946 },	-- Unwrapped and Unraveled
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
						["provider"] = { "n", 230811 },	-- Locus-Walker
						["sourceQuests"] = { 90517 },	-- My Part of the Deal
						["coord"] = { 47.1, 54.5, KARESH },
					}),
					q(84827, {	-- The Shattered Dome
						["provider"] = { "n", 230288 },	-- Locus-Walker
						["sourceQuests"] = { 84826 },	-- Eco-Dome: Rhovan
						["coord"] = { 70.9, 58.1, KARESH },
						["groups"] = {
							o(466983, {	-- Curved Dagger
								["coord"] = { 70.0, 53.1, KARESH },
								["groups"] = { i(229060), },	-- Curved Dagger (QI!)
							}),
							o(466978, {	-- Om'bera's Clipboard
								["coord"] = { 70.9, 54.4, KARESH },
								["groups"] = { i(229058), },	-- Supply Crates Manifest (QI!)
							}),
						},
					}),
					q(84831, {	-- The Rhovan Infestation
						["provider"] = { "n", 230294 },	-- Om'resh
						["sourceQuests"] = { 84826 },	-- Eco-Dome: Rhovan
						["coord"] = { 71.0, 58.0, KARESH },
					}),
					q(85730, {	-- Salvaging What's Left
						["provider"] = { "n", 230294 },	-- Om'resh
						["sourceQuests"] = {
							84827,	-- The Shattered Dome
							84831,	-- The Rhovan Infestation
						},
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
						["provider"] = { "n", 230602 },	-- Xal'atath
						["sourceQuests"] = { 85730 },	-- Salvaging What's Left
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
						["provider"] = { "n", 233878 },	-- Xal'atath
						["sourceQuests"] = { 86327 },	-- The Tempest Fields
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
						["provider"] = { "n", 233878 },	-- Xal'atath
						["sourceQuests"] = { 86327 },	-- The Tempest Fields
						["coord"] = { 64.1, 47.0, KARESH },
					}),
					q(84838, {	-- Enemies of Enemies
						["provider"] = { "n", 233878 },	-- Xal'atath
						["sourceQuests"] = {
							84834,	-- Tempest Clefts
							84869,	-- Hunting on Glass
						},
						["coord"] = { 64.1, 47.0, KARESH },
						["groups"] = { i(230772), },	-- Coalesced Void Energy (PQI!)
					}),
					q(84848, {	-- Before the Void
						["provider"] = { "n", 230634 },	-- Xal'atath
						["sourceQuests"] = { 84838 },	-- Enemies of Enemies
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
						["provider"] = { "n", 230658 },	-- Xal'atath
						["sourceQuests"] = { 84848 },	-- Before the Void
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
						["provider"] = { "n", 230658 },	-- Xal'atath
						["coord"] = { 63.1, 39.0, KARESH },
					}),
					--
					q(86332, {	-- Distribution of Power
						["provider"] = { "n", 234190 },	-- Narathe
						["sourceQuests"] = { 84848 },	-- Before the Void
						["coord"] = { 61.0, 39.9, KARESH },
						["description"] = "Quest becomes available after you talk to Narathe during 'Stalking Stalkers' (84867).",
						["groups"] = { i(235051), },	-- Harvested Energy (QI!)
					}),
					q(84876, {	-- The Oasis
						["provider"] = { "n", 230658 },	-- Xal'atath
						["sourceQuests"] = {
							84867,	-- Stalking Stalkers
							86332,	-- Distribution of Power
						},
						["coord"] = { 63.1, 39.0, KARESH },
					}),
					q(84879, {	-- Restoring Hope
						["provider"] = { "n", 230738 },	-- Xal'atath
						["sourceQuests"] = { 84876 },	-- The Oasis
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = {
							i(237885),	-- Armplates of the Riftsealer
							i(237869),	-- Bindings of the Riftsealer
							i(237877),	-- Bracers of the Riftsealer
							i(237864),	-- Cuffs of the Riftsealer
						},
					}),
					q(84883, {	-- K'aresh That Was
						["provider"] = { "n", 230739 },	-- Soul-Scribe
						["sourceQuests"] = { 84876 },	-- The Oasis
						["coord"] = { 75.8, 34.3, KARESH },
						["groups"] = {
							o(475872, {	-- Rippling Wellspring
								["coord"] = { 76.8, 30.1, KARESH },
								["groups"] = { i(230938), },	-- Heartspring Water (QI!)
							}),
							o(467435, {	-- Zaranit Bud
								i(229363),	-- Zaranit Bud (QI!)
							}),
						},
					}),
					q(84910, {	-- The Tabiqa
						["provider"] = { "n", 230739 },	-- Soul-Scribe
						["sourceQuests"] = {
							84879,	-- Restoring Hope
							84883,	-- K'aresh That Was
						},
						["coord"] = { 75.8, 34.3, KARESH },
					}),
				}),
				header(HEADERS.AchCriteria, 41970.04, {	-- Chapter 4: Shadows En Garde
					q(84896, {	-- The Next Dimension
						["provider"] = { "n", 230786 },	-- Soul-Scribe
						["sourceQuests"] = { 84910 },	-- The Tabiqa
						["coord"] = { 74.4, 30.4, KARESH },
					}),
					q(84897, {	-- The Calm Before we Storm
						["provider"] = { "n", 230818 },	-- Soul-Scribe
						["sourceQuests"] = { 84896 },	-- The Next Dimension
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
						["provider"] = { "n", 230817 },	-- Alleria Windrunner
						["sourceQuests"] = { 84897 },	-- The Calm Before we Storm
						["coord"] = { 60.7, 27.9, KARESH },
						["groups"] = { i(238390), },	-- Soulbreaker's Sigil
					}),
					q(84898, {	-- The Sands of K'aresh
						["provider"] = { "n", 231443 },	-- Soul-Scribe
						["sourceQuests"] = { 84896 },	-- The Next Dimension
						["coord"] = { 60.7, 28.0, KARESH },
						["groups"] = {
							i(237136),	-- Wastes Scanner (PQI!)
							--
							o(502375, {	-- Sand Pile
								["coord"] = { 59.1, 28.5, KARESH },
								["groups"] = { i(233192), },	-- Shadowguard Weapon (QI!)
							}),
							o(502376, {	-- Sand Pile
								["coord"] = { 58.7, 29.5, KARESH },
								["groups"] = { i(233193), },	-- Shadowguard Weapon (QI!)
							}),
							o(502377, {	-- Sand Pile
								["coord"] = { 58.3, 26.3, KARESH },
								["groups"] = { i(233194), },	-- Shadowguard Weapon (QI!)
							}),
						},
					}),
					q(84900, {	-- Like a Knife Through Aether
						["provider"] = { "n", 231445 },	-- Xal'atath
						["sourceQuests"] = {
							84899,	-- Shadowguard Diffusion
							84898,	-- The Sands of K'aresh
						},
						["coord"] = { 55.1, 30.4, KARESH },
						["groups"] = { i(233333), },	-- Forgecaster Wraps (QI!)
					}),
					q(84902, {	-- Adverse Instantiation
						["provider"] = { "n", 231487 },	-- Locus-Walker
						["sourceQuests"] = { 84900 },	-- Like a Knife Through Aether
						["coord"] = { 48.6, 26.7, KARESH },
					}),
					q(84904, {	-- And We Will Answer
						["provider"] = { "n", 231486 },	-- Soul-Scribe
						["sourceQuests"] = { 84900 },	-- Like a Knife Through Aether
						["coord"] = { 48.6, 26.8, KARESH },
						["groups"] = { i(233334), },	-- Beacon of the Wastes (PQI!)
					}),
					q(84903, {	-- Until the Sands Bleed Void
						["provider"] = { "n", 231488 },	-- Alleria Windrunner
						["sourceQuests"] = { 84900 },	-- Like a Knife Through Aether
						["coord"] = { 48.6, 26.6, KARESH },
						["groups"] = {
							i(237934),	-- Locket of the Final Purge
							i(237935),	-- Void-Reckoning Necklace
						},
					}),
					q(84905, {	-- To Walk Among Shadow
						["provider"] = { "n", 231492 },	-- Locus-Walker
						["sourceQuests"] = {
							84902,	-- Adverse Instantiation
							84904,	-- And We Will Answer
							84903,	-- Until the Sands Bleed Void
						},
						["coord"] = { 48.2, 19.4, KARESH },
					}),
					q(84906, {	-- Nexus Regicide
						["provider"] = { "n", 231505 },	-- Alleria Windrunner
						["sourceQuests"] = { 84905 },	-- To Walk Among Shadow
						["coord"] = { 48.2, 19.1, KARESH },
						["groups"] = {
							i(237936),	-- Fallen Prince's Crown
							i(237938),	-- Fallen Prince's Headplate
							i(237937),	-- Fallen Prince's Helm
							i(237939),	-- Fallen Prince's Mask
						},
					}),
					q(85037, {	-- That's a Wrap
						["provider"] = { "n", 231520 },	-- Xal'atath
						["sourceQuests"] = { 84906 },	-- Nexus Regicide
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
				}),
				header(HEADERS.AchCriteria, 41970.05, {	-- Chapter 5: The Light of K'aresh
					q(86820, {	-- Manaforge Omega: Dimensius Looms
						["provider"] = { "n", 231522 },	-- Alleria Windrunner
						["sourceQuests"] = { 85037 },	-- That's a Wrap
						["coord"] = { 42.9, 21.5, KARESH },
						["groups"] = {
							i(231769),	-- Enchanted Runed Ethereal Crest
							i(236954),	-- Void-Touched Valorstone
						},
					}),
					q(86458),	--
				}),
			}),
			header(HEADERS.Achievement, 41808, {	-- Otherworldly Ecologist
				q(87290, {	-- The Oasis
					["provider"] = { "n", 238212 },	-- Om'talad
					["sourceQuests"] = { 85037 },	-- That's a Wrap
					["coord"] = { 39.4, 24.2, KARESH_TAZAVESH },
				}),
				q(87337, {	-- Custodian Duties
					["provider"] = { "n", 238209 },	-- Cartel Om Custodian
					["sourceQuests"] = { 87290 },	-- The Oasis
					["coord"] = { 75.9, 34.3, KARESH },
					["groups"] = {
						o(516700, {	-- Oasis Animal Leavings
							i(236416),	-- Oasis Animal Leavings (QI!)
						}),
					},
				}),
				q(87338, {	-- Day One Orientation
					["provider"] = { "n", 231820 },	-- Ve'nari
					["sourceQuests"] = { 87337 },	-- Custodian Duties
					["coord"] = { 75.9, 34.2, KARESH },
				}),
				q(87339, {	-- Ongoing Activities
					["provider"] = { "n", 231820 },	-- Ve'nari
					["sourceQuests"] = { 87337 },	-- Custodian Duties
					["coord"] = { 75.9, 34.2, KARESH },
					["groups"] = {
						o(516792, {	-- Watering Jug
							["coord"] = { 73.0, 33.0, KARESH },
							["groups"] = { i(236641), },	-- Watering Jug (QI!)
						}),
					},
				}),
				q(87340, {	-- Junk Mail
					["provider"] = { "n", 231820 },	-- Ve'nari
					["sourceQuests"] = {
						87338,	-- Day One Orientation
						87339,	-- Ongoing Activities
					},
					["coord"] = { 75.9, 34.2, KARESH },
				}),
				-- Following headers are placed in order of completion
				header(HEADERS.AchCriteria, 41808.01, {	-- The Bees Knees
					q(85075, {	-- To Stormsong
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 87340 },	-- Junk Mail
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(230030), },	-- Cartel Ve Communicator (PQI!)
					}),
					q(85076, {	-- Don't Bee Crazy
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["sourceQuests"] = { 85075 },	-- To Stormsong
						["coord"] = { 72.4, 69.9, STORMSONG_VALLEY },
					}),
					q(85077, {	-- Sticky Fingers
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["sourceQuests"] = { 85075 },	-- To Stormsong
						["coord"] = { 72.4, 69.9, STORMSONG_VALLEY },
						["groups"] = { i(230053), },	-- Honey Globule (QI!)
					}),
					q(85078, {	-- Bee in the Bonnet
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["sourceQuests"] = {
							85076,	-- Don't Bee Crazy
							85077,	-- Sticky Fingers
						},
						["coord"] = { 72.4, 69.9, STORMSONG_VALLEY },
					}),
					q(85079, {	-- Such a Sleebee-head
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["sourceQuests"] = {
							85076,	-- Don't Bee Crazy
							85077,	-- Sticky Fingers
						},
						["coord"] = { 72.4, 69.9, STORMSONG_VALLEY },
						["groups"] = {
							o(475164, {	-- Ve'nari's Package
								["coord"] = { 72.5, 69.8, STORMSONG_VALLEY },
								["groups"] = { i(230210), },	-- Tranquilizing Dart (PQI!)
							}),
						},
					}),
					q(85080, {	-- An Un-Bee-lievable Solution
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["sourceQuests"] = {
							85078,	-- Bee in the Bonnet
							85079,	-- Such a Sleebee-head
						},
						["coord"] = { 72.6, 65.8, STORMSONG_VALLEY },
						["groups"] = {
							o(475213, {	-- Ve'nari's Package
								["coord"] = { 72.7, 65.8, STORMSONG_VALLEY },
								["groups"] = { i(229424), },	-- Anima Vacuum (PQI!)
							}),
						},
					}),
					q(85081, {	-- Beehemian Rhapsody
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["sourceQuests"] = {
							85078,	-- Bee in the Bonnet
							85079,	-- Such a Sleebee-head
						},
						["coord"] = { 72.6, 65.8, STORMSONG_VALLEY },
						["groups"] = {
							o(475207, {	-- Honey Pot
								["coord"] = { 72.6, 66.0, STORMSONG_VALLEY },
								["groups"] = { i(230549), },	-- Queen Bee in a Jar (QI!)
							}),
						},
					}),
					q(85082, {	-- To K'aresh
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["sourceQuests"] = {
							85080,	-- An Un-Bee-lievable Solution
							85081,	-- Beehemian Rhapsody
						},
						["coord"] = { 72.6, 65.8, STORMSONG_VALLEY },
					}),
					q(85249, {	-- A Bee Test
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 85082 },	-- To K'aresh
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(85084, {	-- Bee Strong
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["sourceQuests"] = { 85249 },	-- A Bee Test
						["coord"] = { 48.4, 61.2, KARESH },
						["groups"] = {
							o(475250, {	-- Honey Pot
								["coord"] = { 48.4, 61.2, KARESH },
								["groups"] = { i(230732), },	-- Honey (PQI!)
							}),
						},
					}),
					q(85083, {	-- Photogra-Bee
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["sourceQuests"] = { 85249 },	-- A Bee Test
						["coord"] = { 48.4, 61.2, KARESH },
						["groups"] = { i(230729), },	-- Appropriated Azerothian Camera (PQI!)
					}),
					q(85257, {	-- Primus Buzzness
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["sourceQuests"] = {
							85084,	-- Bee Strong
							85083,	-- Photogra-Bee
						},
						["coord"] = { 48.4, 61.2, KARESH },
					}),
					q(85255, {	-- Tranquila-Bee
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["sourceQuests"] = { 85257 },	-- Primus Buzzness
						["coord"] = { 49.0, 57.2, KARESH },
						["groups"] = { i(230210), },	-- Tranquilizing Dart (PQI!)
					}),
					q(85256, {	-- Botany, Finally
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["sourceQuests"] = { 85257 },	-- Primus Buzzness
						["coord"] = { 49.0, 57.2, KARESH },
						["groups"] = {
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
						["provider"] = { "n", 231919 },	-- Botanist Alaenra
						["sourceQuests"] = {
							85255,	-- Tranquila-Bee
							85256,	-- Botany, Finally
						},
						["coord"] = { 49.0, 57.2, KARESH },
					}),
					q(85258, {	-- Oh Honey Honey
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["sourceQuests"] = { 89348 },	-- Let There Bee Love
						["coord"] = { 75.8, 33.9, KARESH },
						["groups"] = {
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
						["provider"] = { "n", 230736 },	-- Om'talad
						["sourceQuests"] = { 85258 },	-- Oh Honey Honey
						["coord"] = { 75.8, 34.2, KARESH },
					}),
					q(85260, {	-- Hiving a Hard Day
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["sourceQuests"] = { 85259 },	-- Waggle Dance
						["coord"] = { 75.8, 33.9, KARESH },
					}),
					q(85261, {	-- Bee Roll
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["sourceQuests"] = { 85260 },	-- Hiving a Hard Day
						["coord"] = { 75.8, 33.9, KARESH },
						["groups"] = { i(231163), },	-- Appropriated Azerothian Camera (PQI!)
					}),
					q(85262, {	-- The Royal Procession
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["sourceQuests"] = { 85261 },	-- Bee Roll
						["coord"] = { 75.8, 33.9, KARESH },
					}),
				}),
				header(HEADERS.AchCriteria, 41808.06, {	-- Nesingwary Necessities
					q(86352, {	-- Hunting for a Good Author
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 85262 },	-- The Royal Procession
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(86353, {	-- Protecting the Young
						["provider"] = { "n", 234745 },	-- Hemet Nesingwary
						["sourceQuests"] = { 86352 },	-- Hunting for a Good Author
						["coord"] = { 18.8, 39.9, THE_AZURE_SPAN },
					}),
					q(86354, {	-- A Percussive Antidote
						["provider"] = { "n", 234745 },	-- Hemet Nesingwary
						["sourceQuests"] = { 86352 },	-- Hunting for a Good Author
						["coord"] = { 18.8, 39.9, THE_AZURE_SPAN },
					}),
					q(84822, {	-- To Iskaara
						["provider"] = { "n", 234745 },	-- Hemet Nesingwary
						["sourceQuests"] = {
							86353,	-- Protecting the Young
							86354,	-- A Percussive Antidote
						},
						["coord"] = { 18.8, 39.9, THE_AZURE_SPAN },
					}),
					q(86356, {	-- Sustainable Harvesting
						["provider"] = { "n", 235290 },	-- Hemet Nesingwary
						["sourceQuests"] = { 84822 },	-- To Iskaara
						["coord"] = { 13.6, 49.1, THE_AZURE_SPAN },
						["groups"] = {
							o(504181, {	-- Fallen Log
								i(234452),	-- Chopped Wood (QI!)
							}),
						},
					}),
					q(86355, {	-- Using the Whole Animal
						["provider"] = { "n", 235290 },	-- Hemet Nesingwary
						["sourceQuests"] = { 84822 },	-- To Iskaara
						["coord"] = { 13.6, 49.1, THE_AZURE_SPAN },
						["groups"] = {
							i(234457),	-- Butcher's Knife (PQI!)
							--
							i(234036),	-- Bruffalon Meat (QI!)
						},
					}),
					q(86357, {	-- Time for Noms
						["provider"] = { "n", 235290 },	-- Hemet Nesingwary
						["sourceQuests"] = {
							86356,	-- Sustainable Harvesting
							86355,	-- Using the Whole Animal
						},
						["coord"] = { 13.6, 49.1, THE_AZURE_SPAN },
						["groups"] = {
							o(504191, {	-- Pile of Meat
								["coord"] = { 14.8, 48.3, THE_AZURE_SPAN },
							}),
						},
					}),
					q(86358, {	-- Any Old Excuse
						["provider"] = { "n", 235290 },	-- Hemet Nesingwary
						["sourceQuests"] = {
							86356,	-- Sustainable Harvesting
							86355,	-- Using the Whole Animal
						},
						["coord"] = { 13.6, 49.1, THE_AZURE_SPAN },
					}),
					q(86359, {	-- Return to K'aresh
						["provider"] = { "n", 235290 },	-- Hemet Nesingwary
						["sourceQuests"] = {
							86357,	-- Time for Noms
							86358,	-- Any Old Excuse
						},
						["coord"] = { 13.6, 49.1, THE_AZURE_SPAN },
					}),
				}),
				header(HEADERS.AchCriteria, 41808.02, {	-- Roaming Free
					q(86182, {	-- Ghost Buster
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 86359 },	-- Return to K'aresh
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(229395), },	-- Slateback Essence (QI!)
					}),
					------ Stay awhile and listen ------
					hqt(89330, {	-- Stay awhile and listen: Hemet Nesingwary
						["name"] = "Stay awhile and listen: Hemet Nesingwary",
						["description"] = "Dialogue becomes available after you accept 'Ghost Buster' (86182).",
						["sourceQuests"] = { 86359 },	-- Return to K'aresh
						["provider"] = { "n", 235353 },	-- Hemet Nesingwary
						["coord"] = { 75.8, 34.0, KARESH },
					}),
					--
					q(86183, {	-- The Power of Gods
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 86182 },	-- Ghost Buster
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(86184, {	-- Diminishing Returns
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 86183 },	-- The Power of Gods
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(232432), },	-- Condenser Disc (PQI!)
					}),
					q(86185, {	-- Running Free
						["provider"] = { "n", 235353 },	-- Hemet Nesingwary
						["sourceQuests"] = { 86184 },	-- Diminishing Returns
						["coord"] = { 75.8, 34.0, KARESH },
					}),
					q(86186, {	-- The Super Sniffer
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 86185 },	-- Running Free
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(86187, {	-- The Smallest Possible Effort
						["provider"] = { "n", 234272 },	-- Rhubarn
						["sourceQuests"] = { 86186 },	-- The Super Sniffer
						["coord"] = { 77.6, 61.8, AZJ_KAHET },
						["groups"] = {
							i(232992, {	-- Large Bug Bits (QI!)
								i(232990),	-- Bug Bits (QI!)
							}),
						},
					}),
					q(86188, {	-- More-shrooms
						["provider"] = { "n", 234272 },	-- Rhubarn
						["sourceQuests"] = { 86186 },	-- The Super Sniffer
						["coord"] = { 77.6, 61.8, AZJ_KAHET },
						["groups"] = {
							o(500744, {	-- Rak-ush Mushroom
								i(233010),	-- Rak-ush Mushroom (QI!)
							}),
						},
					}),
					q(86189, {	-- Fungal Invasion
						["provider"] = { "n", 234272 },	-- Rhubarn
						["sourceQuests"] = {
							86187,	-- The Smallest Possible Effort
							86188,	-- More-shrooms
						},
						["coord"] = { 77.6, 61.8, AZJ_KAHET },
					}),
					q(86190, {	-- One Mushroom to Rule Them All
						["provider"] = { "n", 234272 },	-- Rhubarn
						["sourceQuests"] = {
							86187,	-- The Smallest Possible Effort
							86188,	-- More-shrooms
						},
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
						["provider"] = { "n", 234272 },	-- Rhubarn
						["sourceQuests"] = {
							86189,	-- Fungal Invasion
							86190,	-- One Mushroom to Rule Them All
						},
						["coord"] = { 77.6, 61.8, AZJ_KAHET },
					}),
					q(86194, {	-- The Scent of Love
						["provider"] = { "n", 234316 },	-- Rhubarn
						["sourceQuests"] = { 86191 },	-- Smell Ya Later
						["coord"] = { 75.9, 34.6, KARESH },
						["groups"] = { i(233195), },	-- Pheromone Disperser (PQI!)
					}),
					q(86192, {	-- On a Bed of Bones They Lie
						["provider"] = { "n", 234316 },	-- Rhubarn
						["sourceQuests"] = { 86194 },	-- The Scent of Love
						["coord"] = { 75.9, 34.6, KARESH },
						["groups"] = {
							i(233016),	-- Creature Bones (QI!)
							o(502399, {	-- Pile of Bones
								["coord"] = { 73.1, 32.5, KARESH },
							}),
						},
					}),
					q(86195, {	-- Slateback Soccer
						["provider"] = { "n", 230736 },	-- Om'talad
						["sourceQuests"] = { 86192 },	-- On a Bed of Bones They Lie
						["coord"] = { 75.8, 34.2, KARESH },
						["groups"] = { i(229420), },	-- Anima Orb (PQI!)
					}),
					------ Stay awhile and listen ------
					hqt(89292, {	-- Stay awhile and listen: Rhubarn
						["name"] = "Stay awhile and listen: Rhubarn",
						["description"] = "Dialogue becomes available after you accept 'Slateback Soccer' (86195).",
						["sourceQuests"] = { 86192 },	-- On a Bed of Bones They Lie
						["provider"] = { "n", 234316 },	-- Rhubarn
						["coord"] = { 75.9, 34.6, KARESH },
					}),
					--
				}),
				header(HEADERS.AchCriteria, 41808.03, {	-- Fox-strut
					q(86348, {	-- Fox Bane
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 86195 },	-- Slateback Soccer
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(237896), },	-- Thorntail Essence (QI!)
					}),
					q(86350, {	-- Eau de Foxy
						["provider"] = { "n", 234316 },	-- Rhubarn
						["sourceQuests"] = { 86348 },	-- Fox Bane
						["coord"] = { 75.9, 34.6, KARESH },
						["groups"] = { i(233487), },	-- Pheromone Disperser (PQI!)
					}),
					q(86362, {	-- What Does the Fox Dream?
						["provider"] = { "n", 230736 },	-- Om'talad
						["sourceQuests"] = { 86350 },	-- Eau de Foxy
						["coord"] = { 75.8, 34.2, KARESH },
						["groups"] = { i(233552), },	-- Tranquilizing Dart (PQI!)
					}),
					q(86351, {	-- Strike a Pose
						["provider"] = { "n", 230736 },	-- Om'talad
						["sourceQuests"] = { 86362 },	-- What Does the Fox Dream?
						["coord"] = { 75.8, 34.2, KARESH },
						["groups"] = { i(233488), },	-- Appropriated Azerothian Camera (PQI!)
					}),
					q(86360, {	-- Fantastic Ms. Fox
						["provider"] = { "n", 235353 },	-- Hemet Nesingwary
						["sourceQuests"] = { 86351 },	-- Strike a Pose
						["coord"] = { 75.8, 34.0, KARESH },
					}),
					q(86361, {	-- Are You Kitting Me?
						["provider"] = { "n", 230736 },	-- Om'talad
						["sourceQuests"] = { 86360 },	-- Fantastic Ms. Fox
						["coord"] = { 75.8, 34.2, KARESH },
						["groups"] = { i(229420), },	-- Anima Orb (PQI!)
					}),
					q(86392, {	-- Foxy Footwork
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 86361 },	-- Are You Kitting Me?
						["coord"] = { 75.9, 34.2, KARESH },
					}),
				}),
				header(HEADERS.AchCriteria, 41808.04, {	-- Lil' Lapbugs
					q(86349, {	-- Lapbug Essence Hunter
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 86195 },	-- Slateback Soccer
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(229393), },	-- Lapbug Essence (QI!)
					}),
					q(87292, {	-- Rooting for Trouble
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["sourceQuests"] = { 86349 },	-- Lapbug Essence Hunter
						["coord"] = { 75.8, 33.9, KARESH },
					}),
					q(87291, {	-- Salad Bar
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["sourceQuests"] = { 87292 },	-- Rooting for Trouble
						["coord"] = { 75.8, 33.9, KARESH },
						["groups"] = {
							i(235914, {	-- Chopped Oasis Plants (QI!)
								["providers"] = {
									{ "o", 516304 },	-- Lustrous Conker
									{ "o", 516302 },	-- Pricklebloom
								},
							}),
							-- Exo Note: Objective 2 is "Plant Platter placed". They don't trigger reports (currently?) so I don't know which is which.
							-- Plant Platter ObjectID: 516306, 523779, 523780. Coords: 73.0, 31.5 / 72.0, 33.5 / 72.9, 34.4
						},
					}),
					q(87293, {	-- Shameless Hawking
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 87291 },	-- Salad Bar
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(87294, {	-- A Truth Universally Acknowledged
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 87293 },	-- Shameless Hawking
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(236406), },	-- Appropriated S.E.L.F.I.E. Camera (PQI!)
					}),
				}),
				header(HEADERS.AchCriteria, 41808.05, {	-- Rays of Sunshine
					q(86587, {	-- To Maldraxxus
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = {
							86392,	-- Foxy Footwork
							87294,	-- A Truth Universally Acknowledged
						},
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(86589, {	-- A Plague a Day Keeps the Doctor Away
						["provider"] = { "n", 235860 },	-- Plague Deviser Marileth
						["sourceQuests"] = { 86587 },	-- To Maldraxxus
						["coord"] = { 69.0, 48.5, MALDRAXXUS },
						["groups"] = {
							o(505258, {	-- Pestilential Necroray
								i(234815),	-- Plague Sample (QI!)
							}),
						},
					}),
					q(86590, {	-- I Don't Even Work Here
						["provider"] = { "n", 235860 },	-- Plague Deviser Marileth
						["sourceQuests"] = { 86587 },	-- To Maldraxxus
						["coord"] = { 69.0, 48.5, MALDRAXXUS },
						["groups"] = { i(234944), },	-- Rancor Essence (QI!)
					}),
					q(86588, {	-- Ritualistic Murder
						["provider"] = { "n", 235860 },	-- Plague Deviser Marileth
						["sourceQuests"] = { 86587 },	-- To Maldraxxus
						["coord"] = { 69.0, 48.5, MALDRAXXUS },
					}),
					q(86591, {	-- A Poor Imitation
						["provider"] = { "n", 235860 },	-- Plague Deviser Marileth
						["sourceQuests"] = {
							86589,	-- A Plague a Day Keeps the Doctor Away
							86590,	-- I Don't Even Work Here
							86588,	-- Ritualistic Murder
						},
						["coord"] = { 69.0, 48.5, MALDRAXXUS },
					}),
					q(86592, {	-- Get Your Jabs
						["provider"] = { "n", 235860 },	-- Plague Deviser Marileth
						["sourceQuests"] = { 86591 },	-- A Poor Imitation
						["coord"] = { 69.0, 48.5, MALDRAXXUS },
					}),
					q(86593, {	-- To the Oasis
						["provider"] = { "n", 235860 },	-- Plague Deviser Marileth
						["sourceQuests"] = { 86592 },	-- Get Your Jabs
						["coord"] = { 69.0, 48.5, MALDRAXXUS },
					}),
					q(86782, {	-- Atrium Hospital
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 86593 },	-- To the Oasis
						["coord"] = { 75.9, 34.2, KARESH },
					}),
					q(86594, {	-- A Cultured Palette
						["provider"] = { "n", 236846 },	-- Hemet Nesingwary
						["sourceQuests"] = { 86782 },	-- Atrium Hospital
						["coord"] = { 48.5, 61.1, KARESH },
						["groups"] = {
							o(507176, {	-- Crate of Food
								["coord"] = { 48.5, 61.3, KARESH },
								["groups"] = { i(235370), },	-- Crate of Food (QI!)
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
						["provider"] = { "n", 236846 },	-- Hemet Nesingwary
						["sourceQuests"] = { 86782 },	-- Atrium Hospital
						["coord"] = { 48.5, 61.1, KARESH },
						["groups"] = { i(235384), },	-- Anima Vacuum (PQI!)
					}),
					q(86783, {	-- Rays of Sunshine
						["provider"] = { "n", 236846 },	-- Hemet Nesingwary
						["sourceQuests"] = {
							86594,	-- A Cultured Palette
							86595,	-- Custodial Duties
						},
						["coord"] = { 48.5, 61.1, KARESH },
					}),
					q(86602, {	-- Medical Checkup
						["provider"] = { "n", 236890 },	-- Hemet Nesingwary
						["sourceQuests"] = { 86783 },	-- Rays of Sunshine
						["coord"] = { 49.0, 57.0, KARESH },
						["groups"] = {
							i(235410),	-- Lapbug Molting (QI!)
							i(235408),	-- Slateback Fur (QI!)
							i(235409),	-- Thorntail Fur (QI!)
						},
					}),
					q(86601, {	-- Triple Twenty
						["provider"] = { "n", 236890 },	-- Hemet Nesingwary
						["sourceQuests"] = { 86783 },	-- Rays of Sunshine
						["coord"] = { 49.0, 57.0, KARESH },
						["groups"] = { i(235411), },	-- Tagging Dart (PQI!)
					}),
					q(86603, {	-- Ray-ket Ball
						["provider"] = { "n", 230736 },	-- Om'talad
						["sourceQuests"] = {
							86602,	-- Medical Checkup
							86601,	-- Triple Twenty
						},
						["coord"] = { 75.8, 34.2, KARESH },
						["groups"] = { i(229420), },	-- Anima Orb (PQI!)
					}),
					q(86604, {	-- Dubious Intent
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 86603 },	-- Ray-ket Ball
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = {
							i(235500),	-- Tranquilizing Dart (PQI!)
							i(235501),	-- Necroray Gunk (QI!)
						},
					}),
					q(86605, {	-- Booster Shots
						["provider"] = { "n", 230736 },	-- Om'talad
						["sourceQuests"] = { 86604 },	-- Dubious Intent
						["coord"] = { 75.8, 34.2, KARESH },
						["groups"] = { i(235851), },	-- Lasso (PQI!)
					}),
					q(86606, {	-- The Golden Ooze
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 86605 },	-- Booster Shots
						["coord"] = { 75.9, 34.2, KARESH },
						["groups"] = { i(235384), },	-- Anima Vacuum (PQI!)
					}),
					q(86607, {	-- The Freedom of Ray-cing
						["provider"] = { "n", 235353 },	-- Hemet Nesingwary
						["sourceQuests"] = { 86606 },	-- The Golden Ooze
						["coord"] = { 75.8, 34.0, KARESH },
					}),
				}),
			}),
			header(HEADERS.Achievement, 41811, {	-- Ecological Stability
				-- Exo Note: These are Achievement criteria. They don't appear as quests when you do /att q: in-game
				-- @Myrhial, This is a job for you, Mistress...
				q(84744),	-- A Slither of Snakes
				q(84742),	-- Fox-strut
				q(86793),	-- Hard K'arroc
				q(84745),	-- Honey Bees (Move to HQT? Triggered when "Honey Bees" criteria for the ach is fulfilled)
				q(85520),	-- Lil' Lapbugs
				q(89306),	-- Rays of Sunshine
				q(84992),	-- Slatebacks
			}),
			header(HEADERS.Achievement, 41809, {	-- Ecological Variety (Daily Quests)
				header(HEADERS.AchCriteria, 41809.01, {	-- Honey Bees
					q(90545, {	-- A Reel Problem
						["provider"] = { "n", 230736 },	-- Om'talad
						["sourceQuests"] = { 85262 },	-- The Royal Procession
						["coord"] = { 75.8, 34.2, KARESH },
						["description"] = "Requires Fishing profession.",
						["isDaily"] = true,
						["groups"] = { i(241352), },	-- Hydrobite (QI!)
					}),
					q(85459, {	-- Anima Reclamation Program
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 85262 },	-- The Royal Procession
						["coord"] = { 75.9, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(229412), },	-- Devourer Anima (QI!)
					}),
					q(89209, {	-- Bu-zzz
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["sourceQuests"] = { 85262 },	-- The Royal Procession
						["coord"] = { 75.8, 33.9, KARESH },
						["isDaily"] = true,
					}),
					q(85461, {	-- Food Run
						["provider"] = { "n", 231820 },	-- Ve'nari
						["sourceQuests"] = { 85262 },	-- The Royal Procession
						["coord"] = { 75.9, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(231508), },	-- Stolen Food Shipment (QI!)
					}),
					q(89195, {	-- Funny Buzzness
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["sourceQuests"] = { 85262 },	-- The Royal Procession
						["coord"] = { 75.8, 33.9, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238904), },	-- Anima Vacuum (PQI!)
					}),
					q(89194, {	-- Shake your Bee-hind
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["sourceQuests"] = { 85262 },	-- The Royal Procession
						["coord"] = { 75.8, 33.9, KARESH },
						["isDaily"] = true,
					}),
					q(89210),	--
				}),
				header(HEADERS.AchCriteria, 41809.02, {	-- Slatebacks
					q(88980, {	-- Who You Gonna Call?
						["provider"] = { "n", 231820 },	-- Ve'nari
						["coord"] = { 75.9, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(229395), },	-- Slateback Essence (QI!)
					}),
					q(85462),	--
					q(85481),	--
					q(85710),	--
				}),
				header(HEADERS.AchCriteria, 41809.03, {	-- Fox-strut
					q(89240, {	--  Dream-Dream-Dream-Dream-Dreameringeding!
						["provider"] = { "n", 230736 },	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238912), },	-- Tranquilizing Dart (PQI!)
					}),
					q(89212),	--
					q(85465),	--
					q(85721),	--
					q(89057),	--
				}),
				header(HEADERS.AchCriteria, 41809.04, {	-- Lil' Lapbugs
					q(89221, {	--  Leafing Things on the Ground
						["provider"] = { "n", 232385 },	-- Botanist Alaenra
						["coord"] = { 75.8, 33.9, KARESH },
						["isDaily"] = true,
						["groups"] = {
							i(235914, {	-- Chopped Oasis Plants (QI!)
								["providers"] = {
									{ "o", 516304 },	-- Lustrous Conker
									{ "o", 516302 },	-- Pricklebloom
								},
							}),
							-- Exo Note: Objective 2 is "Plant Platter placed". They don't trigger reports (currently?) so I don't know which is which.
							-- Plant Platter ObjectID: 516306, 523779, 523780. Coords: 73.0, 31.5 / 72.0, 33.5 / 72.9, 34.4
						},
					}),
					q(89254),	--
					q(89297),	--
					q(85470),	--
				}),
				header(HEADERS.AchCriteria, 41809.05, {	-- Rays of Sunshine
					q(89056, {	--  Ray-ket Ball, Redux
						["provider"] = { "n", 230736 },	-- Om'talad
						["coord"] = { 75.8, 34.2, KARESH },
						["isDaily"] = true,
						["groups"] = { i(238915), },	-- Anima Orb (PQI!)
					}),
					q(89197),	--
					q(89065),	--
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
					["provider"] = { "n", 241588 },	-- Hashim
					--["sourceQuests"] = { ??? },	-- Popped up on an alt as soon as I got zoned into Tazavesh for the first time -Exo
					["coord"] = { 50.3, 36.3, KARESH },
				}),
				q(89380, {	-- Another World
					["provider"] = { "n", 241601 },	-- Shad'anis
					--["sourceQuests"] = { ??? },	-- According to playthrough, this unlocks after HQT 91812 is Triggered
					["coord"] = { 74.9, 31.1, KARESH },
				}),
				q(89561, {	-- Wrapped Up
					["provider"] = { "n", 241588 },	-- Hashim
					--["sourceQuests"] = { ??? },	-- According to playthrough, this unlocks after HQT 91812 is Triggered
					["coord"] = { 50.3, 36.3, KARESH },
					["groups"] = {
						i(238039),	-- Chronomatic Fiber
						i(238041),	-- Dexterous Fiber
						i(238037),	-- Energizing Fiber
						i(238040),	-- Precise Fiber
					},
				}),
				q(89343, {	-- The Untethered Void
					["provider"] = { "n", 241624 },	-- Shad'anis
					["sourceQuests"] = { 89380 },	-- Another World
					["coord"] = { 50.4, 36.3, KARESH },
				}),
				q(89344, {	-- What Doesn't See You
					["provider"] = { "n", 241624 },	-- Shad'anis
					["sourceQuests"] = { 89343 },	-- The Untethered Void
					["coord"] = { 50.4, 36.3, KARESH },
					["groups"] = {
						o(543787, {	-- Phase Energy
							["coord"] = { 49.1, 37.8, KARESH },
							["groups"] = { i(244042), },	-- Phase Energy (QI!)
						}),
					},
				}),
				q(89345, {	-- The Untethered Horror
					["provider"] = { "n", 241624 },	-- Shad'anis
					["sourceQuests"] = { 89344 },	-- What Doesn't See You
					["coord"] = { 50.4, 36.3, KARESH },
				}),
			}),
			header(HEADERS.Achievement, 42739, {	-- Sojourner of K'aresh
				header(HEADERS.AchCriteria, 42739.01, {	-- Of Boughs and Bonds
					q(84740, {	-- Bridge to Nowhere
						["provider"] = { "n", 230159 },	-- Om'fennad
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["coord"] = { 54.4, 63.7, KARESH },
						["groups"] = { i(229423), },	-- Echo Surveyor (PQI!)
					}),
					q(84915, {	-- Clearing the Dunes
						["provider"] = { "n", 230159 },	-- Om'fennad
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["coord"] = { 54.4, 63.7, KARESH },
					}),
					q(84741, {	-- Signs in the Sands
						["provider"] = { "n", 230159 },	-- Om'fennad
						["sourceQuests"] = {
							84740,	-- Bridge to Nowhere
							84915,	-- Clearing the Dunes
						},
						["coord"] = { 54.4, 63.7, KARESH },
						["groups"] = {
							o(469681, {	-- Footprints
								["coord"] = { 57.6, 54.0, KARESH },
							}),
						},
					}),
					q(84759, {	-- Ill-met in Starlight
						["provider"] = { "n", 230789 },	-- Shahata
						["sourceQuests"] = { 84741 },	-- Signs in the Sands
						["coord"] = { 60.8, 54.3, KARESH },
					}),
					q(84761, {	-- Toil and Trespass
						["provider"] = { "n", 230233 },	-- Shahata
						["sourceQuests"] = { 84759 },	-- Ill-met in Starlight
						["coord"] = { 76.4, 55.3, KARESH },
						["groups"] = {
							o(477249, {	-- Stolen Supplies
								i(237038),	-- Shahata's Supplies (QI!)
							}),
						},
					}),
					q(84760, {	-- A Friendly Warning
						["provider"] = { "n", 230233 },	-- Shahata
						["sourceQuests"] = { 84759 },	-- Ill-met in Starlight
						["coord"] = { 76.4, 55.3, KARESH },
					}),
					q(84762, {	-- We Are Our Words
						["provider"] = { "n", 230233 },	-- Shahata
						["sourceQuests"] = {
							84761,	-- Toil and Trespass
							84760,	-- A Friendly Warning
						},
						["coord"] = { 76.3, 55.3, KARESH },
						["groups"] = {
							o(469724, {	-- Damaged Echo Surveyor
								["coord"] = { 76.4, 55.2, KARESH },
								["groups"] = { i(237127), },	-- Damaged Echo Surveyor (QI!)
							}),
							o(509461),	-- Sealed Chest
						},
					}),
					q(84820, {	-- By Oath and Blood
						["provider"] = { "n", 230233 },	-- Shahata
						["sourceQuests"] = { 84762 },	-- We Are Our Words
						["coord"] = { 76.4, 55.2, KARESH },
					}),
					q(84765, {	-- Of Bonds and Boughs
						["provider"] = { "n", 230159 },	-- Om'fennad
						["sourceQuests"] = { 84820 },	-- By Oath and Blood
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
						["provider"] = { "n", 232498 },	-- Associate Xy'nell
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
					}),
					q(85430, {	-- Mandatory Time Off
						["provider"] = { "n", 232498 },	-- Associate Xy'nell
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
					}),
					q(85431, {	-- Drain Their Resources
						["provider"] = { "n", 232498 },	-- Associate Xy'nell
						["sourceQuests"] = {
							85429,	-- Overwhelm Them
							85430,	-- Mandatory Time Off
						},
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
						["groups"] = { i(232609), },	-- Overflowing Anima Core (QI!)
					}),
					q(85432, {	-- Confuse Their Contacts
						["provider"] = { "n", 232498 },	-- Associate Xy'nell
						["sourceQuests"] = {
							85429,	-- Overwhelm Them
							85430,	-- Mandatory Time Off
						},
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
						["groups"] = { i(232644), },	-- Broker Disguise Pin (PQI!)
					}),
					q(85433, {	-- Eyes on Us
						["provider"] = { "n", 232498 },	-- Associate Xy'nell
						["sourceQuests"] = {
							85431,	-- Drain Their Resources
							85432,	-- Confuse Their Contacts
						},
						["coord"] = { 50.5, 38.8, KARESH_TAZAVESH },
					}),
					q(85434, {	-- On a Technicality
						["provider"] = { "n", 232498 },	-- Associate Xy'nell
						["sourceQuests"] = { 85433 },	-- Eyes on Us
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
						["provider"] = { "n", 248153 },	-- Magister Umbric
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["coord"] = { 60.9, 27.7, KARESH },
					}),
					q(86786, {	-- The Void Hunter
						["provider"] = { "n", 240842 },	-- Leona Darkstrider
						["sourceQuests"] = { 90972 },	-- A Common Cause
						["coord"] = { 59.3, 24.2, KARESH },
						["groups"] = { i(239074), },	-- Void Lure (PQI!)
					}),
					q(89323, {	-- Wasted Lands
						["provider"] = { "n", 236907 },	-- Adarus Duskblaze
						["sourceQuests"] = { 86786 },	-- The Void Hunter
						["coord"] = { 60.1, 29.7, KARESH },
					}),
					q(89324, {	-- A Piece of Something Greater
						["provider"] = { "n", 242179 },	-- Adarus Duskblaze
						["sourceQuests"] = { 89323 },	-- Wasted Lands
						["coord"] = { 79.0, 53.4, KARESH },
						["groups"] = {
							i(239155),	-- Key of the Dark Sun (QI!)
							i(239153),	-- Key of the Eternal Night (QI!)
							i(239154),	-- Key of the Waning Moon (QI!)
						},
					}),
					q(89325, {	-- The Void Confluence
						["provider"] = { "n", 242179 },	-- Adarus Duskblaze
						["sourceQuests"] = { 89324 },	-- A Piece of Something Greater
						["coord"] = { 79.0, 53.4, KARESH },
					}),
					q(89326, {	-- Distilled Darkness
						["provider"] = { "n", 240842 },	-- Leona Darkstrider
						["sourceQuests"] = { 89325 },	-- The Void Confluence
						["coords"] = {
							{ 56.8, 24.1, KARESH },	-- Voidscar Cavern Entrance
							{ 61.9, 53.0, 2477 },	-- Voidscar Cavern
						},
					}),
					q(89327, {	-- Chaos
						["provider"] = { "n", 240842 },	-- Leona Darkstrider
						["sourceQuests"] = { 89326 },	-- Distilled Darkness
						["coords"] = {
							{ 62.0, 53.0, 2477 },	-- Voidscar Cavern
						},
					}),
					q(91044, {	-- Hunger of the Void
						["provider"] = { "n", 240842 },	-- Leona Darkstrider
						["sourceQuests"] = { 89327 },	-- Chaos
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
						["provider"] = { "n", 246601 },	-- Researcher Essarae
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["coord"] = { 59.9, 29.1, KARESH },
						["groups"] = { i(246244), },	-- Phase-Altered Essence (QI!)
					}),
					q(91454, {	-- Phase-Lost Adventurer
						["provider"] = { "i", 246589 },	-- Half-Digested Journal (QS!)
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["coord"] = { 56.8, 24.1, KARESH },
						["cr"] = 246608,	-- Phase-Lost Creeper
					}),
				}),
				header(HEADERS.AchCriteria, 42739.05, {	-- Chasing Echoes
					q(85006, {	-- Those We Have Lost
						["provider"] = { "n", 231314 },	-- Om'dalan
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["coord"] = { 51.9, 64.8, KARESH },
						["groups"] = { i(229969), },	-- Flickering Essence (QI!)
					}),
					q(85007, {	-- Extended Reach
						["provider"] = { "n", 231314 },	-- Om'dalan
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
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
						["provider"] = { "n", 231314 },	-- Om'dalan
						["sourceQuests"] = {
							85006,	-- Those We Have Lost
							85007,	-- Extended Reach
						},
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
						["provider"] = { "n", 231314 },	-- Om'dalan
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
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
						["provider"] = { "n", 231162 },	-- Driruj
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["coord"] = { 76.7, 34.3, KARESH },
						["groups"] = {
							o(469901, {	-- Void Glass Node
								i(229892),	-- Void Glass Sample (QI!)
							}),
						},
					}),
					q(84973, {	-- Of Motes and Husks
						["provider"] = { "n", 231162 },	-- Driruj
						["sourceQuests"] = { 84972 },	-- Chipping the Void
						["coord"] = { 76.7, 34.3, KARESH },
						["groups"] = {
							i(229901),	-- Krolusk Husk (QI!)
							i(229900),	-- Softly Swirling Mote (QI!)
						},
					}),
					q(84974, {	-- Shards of Hope
						["provider"] = { "n", 231162 },	-- Driruj
						["sourceQuests"] = { 84973 },	-- Of Motes and Husks
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
						["provider"] = { "n", 231162 },	-- Driruj
						["sourceQuests"] = { 84974 },	-- Shards of Hope
						["coord"] = { 76.7, 34.3, KARESH },
						["groups"] = {
							o(470057, {	-- Satchel of Seeds
								["coord"] = { 79.0, 32.5, KARESH },
								["groups"] = { i(229905), },	-- Satchel of Seeds (QI!)
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
						["provider"] = { "n", 231422 },	-- Outcast Hizfran
						--["sourceQuests"] = { ??? },	-- Vignette never appeared on the map. Don't know which quest unlocks this. It is unlocked at some point during or at the end of Chapter 4.
						["coord"] = { 77.7, 39.8, KARESH },
						["groups"] = {
							o(469979, {	-- K'areshi Priest's Bowl
								["coord"] = { 80.0, 47.6, KARESH },
								["groups"] = { i(229902), },	-- K'areshi Priest's Bowl (QI!)
							}),
							i(229895, {	-- Scepter of Priesthood (QI!)
								["coord"] = { 79.6, 48.0, KARESH },
								["cr"] = 234847, -- Oathspeaker Al'joul
							}),
							o(469911, {	-- Ways of the Priesthood
								["coord"] = { 81.0, 49.9, KARESH },
								["groups"] = { i(229893), },	-- Ways of the Priesthood (QI!)
							}),
						},
					}),
					q(85020, {	-- The Blood of K'aresh
						["provider"] = { "n", 231422 },	-- Outcast Hizfran
						["sourceQuests"] = { 85019 },	-- An Outcast's Request
						["coord"] = { 77.7, 39.8, KARESH },
						["groups"] = {
							i(229970, {	-- Blood of K'aresh Deposit (QI!)
								["providers"] = {
									{ "n", 234858 },	-- Sand Strider
									{ "o", 473973 },	-- Blood of K'aresh
								},
							}),
						},
					}),
					q(85021, {	-- Cleansing the Void
						["provider"] = { "n", 231422 },	-- Outcast Hizfran
						["sourceQuests"] = { 85020 },	-- The Blood of K'aresh
						["coord"] = { 77.7, 39.8, KARESH },
					}),
					q(85022, {	-- Priest of the Old Ways
						["provider"] = { "n", 231699 },	-- Outcast Hizfran
						["sourceQuests"] = { 85021 },	-- Cleansing the Void
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
						["provider"] = { "n", 232351 },	-- Trader Ba'kril
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["coord"] = { 43.8, 52.3, KARESH_TAZAVESH },
					}),
					q(85384, {	-- Market Research
						["provider"] = { "n", 232351 },	-- Trader Ba'kril
						["sourceQuests"] = { 85383 },	-- Applied Mixology
						["coord"] = { 43.8, 52.3, KARESH_TAZAVESH },
					}),
					q(85394, {	-- An Eye for Trouble
						["provider"] = { "n", 232351 },	-- Trader Ba'kril
						["sourceQuests"] = { 85384 },	-- Market Research
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
						["provider"] = { "n", 231674 },	-- Vaultkeeper Xy'vez
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["coord"] = { 48.1, 24.6, KARESH_TAZAVESH },
					}),
					q(85053, {	-- Obtaining Permits
						["provider"] = { "n", 232008 },	-- Cartel Boss Xy'eolm
						["sourceQuests"] = { 85052 },	-- A Lucrative Opportunity
						["coord"] = { 50.2, 19.3, KARESH_TAZAVESH },
					}),
					q(85054, {	-- Articles of Acquisition
						["provider"] = { "n", 232008 },	-- Cartel Boss Xy'eolm
						["sourceQuests"] = { 85053 },	-- Obtaining Permits
						["coord"] = { 50.2, 19.3, KARESH_TAZAVESH },
						["groups"] = { i(244847), },	-- Aftermarket Ledger (PQI!)
					}),
					q(85055, {	-- Expired Goods
						["provider"] = { "n", 232057 },	-- Vaultkeeper Xy'vez
						["sourceQuests"] = { 85054 },	-- Articles of Acquisition
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
						["provider"] = { "n", 234216 },	-- Assistant Engineer Om'vek
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["coord"] = { 49.9, 57.5, KARESH },
						["groups"] = {
							o(500591, {	-- Firebud
								i(233009),	-- Firebud Pollen (QI!)
							}),
						},
					}),
					q(86200, {	-- Give me Fire
						["provider"] = { "n", 234216 },	-- Assistant Engineer Om'vek
						["sourceQuests"] = { 86196 },	-- Give me Fuel
						["coord"] = { 49.9, 57.5, KARESH },
					}),
					q(86201, {	-- Watch me Make These Bugs Expire
						["provider"] = { "n", 234216 },	-- Assistant Engineer Om'vek
						["sourceQuests"] = { 86200 },	-- Give me Fire
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
						["provider"] = { "n", 233500 },	-- Om'taha
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["coord"] = { 57.0, 57.3, KARESH },
					}),
					q(85239, {	-- A New Devouring
						["provider"] = { "n", 233500 },	-- Om'taha
						["sourceQuests"] = { 85238 },	-- Stranger on the Steps
						["coord"] = { 57.0, 57.3, KARESH },
					}),
					q(85240, {	-- Only Hunger Remains
						["provider"] = { "n", 233500 },	-- Om'taha
						["sourceQuests"] = { 85238 },	-- Stranger on the Steps
						["coord"] = { 57.0, 57.3, KARESH },
					}),
					q(85241, {	-- A Once-Proud Priest
						["provider"] = { "n", 233500 },	-- Om'taha
						["sourceQuests"] = {
							85239,	-- A New Devouring
							85240,	-- Only Hunger Remains
						},
						["coord"] = { 59.5, 60.5, KARESH },
					}),
					q(86193, {	-- Life for Life
						["provider"] = { "n", 233500 },	-- Om'taha
						["sourceQuests"] = { 85241 },	-- A Once-Proud Priest
						["coord"] = { 59.5, 60.5, KARESH },
						["groups"] = {
							i(245737),	-- Ritualbreaker's Band
							i(245738),	-- Seal of the Shattered Dome
						},
					}),
				}),
			}),
			header(HEADERS.Achievement, 42737, {	-- Capstoned
				q(89294, {	-- Special Assignment: Aligned Views
					["coord"] = { 77.2, 48.9, KARESH },
					["groups"] = {
						i(244842),	-- Fabled Veteran's Cache
					},
				}),
				q(89293, {	-- Special Assignment: Overshadowed
					["coord"] = { 56.3, 27.3, KARESH },
					["groups"] = {
						i(244842),	-- Fabled Veteran's Cache
					},
				}),
			}),
			header(HEADERS.Achievement, 41980, {	-- Vigiliante
				q(87344, {	-- A Key Threat
					["provider"] = { "n", 238255 },	-- Constable Zo'ardaz
					["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
					["coord"] = { 48.6, 57.8, KARESH_TAZAVESH },
				}),
				header(HEADERS.Quest, 87546, {	-- Warrant: Purple Peat
					q(87546, {	-- Warrant: Purple Peat
						["provider"] = { "n", 238919 },	-- Warrant: Purple Peat
						["coord"] = { 48.5, 58.3, KARESH_TAZAVESH },
						["cost"] = {
							{ "i", 236937, 1 },	-- Energy Encapsulation (QI!)
							{ "i", 236964, 1 },	-- Large Sticky Voidmass (QI!)
							{ "i", 239249, 1 },	-- Untethered Battery (QI!)
						},
						["groups"] = { i(239276), },	-- Purple Peat Cell Key (QS!)
					}),
					q(87404, {	-- Energy Encapsulation
						["provider"] = { "n", 238057 },	-- Engineer Om'loof
						["coord"] = { 47.9, 57.4, KARESH },
						["description"] = "This quest is available during 'Warrant: Purple Peat'.",
						["repeatable"] = true,
						["groups"] = {
							i(235051),	-- Harvested Energy (QI!)
							--
							i(236937),	-- Energy Encapsulation (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87425, {	-- Large Sticky Voidmass
						["provider"] = { "n", 238069 },	-- Botanist Mo'chee
						["coord"] = { 49.4, 54.3, KARESH },
						["description"] = "This quest is available during 'Warrant: Purple Peat'.",
						["repeatable"] = true,
						["groups"] = {
							i(237019),	-- Corrupted Sap (QI!)
							--
							i(236964),	-- Large Sticky Voidmass (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87301, {	-- Untethered Battery
						["provider"] = { "n", 238057 },	-- Engineer Om'loof
						["coord"] = { 47.9, 57.4, KARESH },
						["description"] = "This quest is available during 'Warrant: Purple Peat'.",
						["repeatable"] = true,
						["groups"] = {
							i(239249),	-- Untethered Battery (QI!) (Reward, required for the Warrant)
						},
					}),
					q(90125, {	-- Eliminate Purple Peat
						["provider"] = { "i", 239276 },	-- Purple Peat Cell Key (QS!)
						["repeatable"] = true,
					}),
				}),
				header(HEADERS.Quest, 87345, {	-- Warrant: Xy'vox the Twisted
					q(87345, {	-- Warrant: Xy'vox the Twisted
						["provider"] = { "n", 238271 },	-- Warrant: Xy'Vox the Twisted
						["coord"] = { 48.5, 58.4, KARESH_TAZAVESH },
						["cost"] = {
							{ "i", 236783, 1 },	-- Ethereal Seal (QI!)
							{ "i", 236762, 1 },	-- Tazavesh Facade (QI!)
							{ "i", 236858, 1 },	-- Zo'kita Fruit (QI!)
						},
						["groups"] = { i(236753), },	-- Xy'vox Refuge Dampener (QS!)
					}),
					q(87376, {	-- Ethereal Seal
						["provider"] = { "n", 238486 },	-- Citizen Om'sto
						["coord"] = { 46.6, 50.3, KARESH_TAZAVESH },
						["description"] = "This quest is available during 'Warrant: Xy'vox the Twisted'.",
						["repeatable"] = true,
						["groups"] = {
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
						["provider"] = { "n", 238387 },	-- Deputy Zo'mi
						["coord"] = { 46.9, 57.5, KARESH_TAZAVESH },
						["description"] = "This quest is available during 'Warrant: Xy'vox the Twisted'.",
						["repeatable"] = true,
						["groups"] = {
							i(236766),	-- Essence Scanner (PQI!)
							--
							i(236762),	-- Tazavesh Facade (QI!) (Reward, required for the Warrant)
						},
					}),
					q(87380, {	-- Zo'kita Fruit
						["provider"] = { "n", 238474 },	-- Zo'kita
						["coord"] = { 52.4, 57.8, KARESH_TAZAVESH },
						["description"] = "This quest is available during 'Warrant: Xy'vox the Twisted'.",
						["repeatable"] = true,
						["groups"] = {
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
				q(90126),	--
				q(90127),	--
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
			q(85722, {	-- Making a Deposit
				["provider"] = { "i", 232467 },	-- Crystallized Anima (QS!)
				["sourceQuests"] = { 84993 },	-- Devourer Attack: The Oasis
				["isWeekly"] = true,
			}),
			q(89062, {	-- Making a Deposit
				["provider"] = { "i", 238664 },	-- Crystallized Anima (QS!)
				["sourceQuests"] = { 86464 },	-- Devourer Attack: The Atrium
				["isWeekly"] = true,
			}),
			q(89063, {	-- Making a Deposit
				["provider"] = { "i", 238665 },	-- Crystallized Anima (QS!)
				["sourceQuests"] = { 86465 },	-- Devourer Attack: Tazavesh
				["isWeekly"] = true,
			}),
			q(89061, {	-- Making a Deposit
				["provider"] = { "i", 238663 },	-- Crystallized Anima (QS!)
				["sourceQuests"] = { 86447 },	-- Devourer Attack: Eco-dome: Primus
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
			--q(86492),	-- TODO: Alex - ach(42736),	-- Ixthar's Legacy
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
				q(90807, { ["repeatable"] = true, } ),	-- Triggered at the completion of a main Warrant quest and obtaining the (QS!) item that starts "Eliminate" quest
				q(91286, { ["repeatable"] = true, } ),	-- Devoured Energy-Pod (QS!) loot lockout after the completion of 'Devourer Attack: The Oasis' (84993)
				q(91287, { ["repeatable"] = true, } ),	-- Devoured Energy-Pod (QS!) loot lockout after the completion of 'Devourer Attack: Eco-dome: Primus' (86447)
				q(91289, { ["repeatable"] = true, } ),	-- Devoured Energy-Pod (QS!) loot lockout after the completion of 'Devourer Attack: The Atrium' (86464)
				q(91290, { ["repeatable"] = true, } ),	-- Devoured Energy-Pod (QS!) loot lockout after the completion of 'Devourer Attack: Tazavesh' (86465)

				q(90955, name(HEADERS.Spell,1249651)),	-- Boon of the Reshii (Reshii Wraps 1st upgrade)
			}),
		}),
	}),
})));
