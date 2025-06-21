---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(QUESTS, {
			--header(HEADERS.Achievement, 41970, {	-- The Knife's Edge
				--header(HEADERS.AchCriteria, 41970.01, {	-- Chapter 1:
					q(84956, {	-- A Shadowy Invitation
						--["sourceQuests"] = { xx },	-- TODO: does it exist?
						["provider"] = { "n", 227758 },	-- Alleria Windrunner
						["coord"] = { 42.3, 26.8, DORNOGAL },
					}),
					q(84957, {	-- Return to the Veiled Market
						["sourceQuests"] = { 84956 },	-- A Shadowy Invitation
						["provider"] = { "n", 233603 },	-- Locus-Walker
						["coord"] = { 42.1, 26.9, DORNOGAL },
					}),
					q(85003, {	-- Restoring Operational Efficiency
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["provider"] = { "n", 230604 },	-- Om'en
						["coord"] = { 59.4, 83.1, 2472 },
					}),
					q(84958, {	-- Beasts Unbound
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["provider"] = { "n", 230954 },	-- Ta'ka
						["coord"] = { 56.8, 73.0, 2472 },
					}),
					q(85039, {	-- Compromised Containment
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["provider"] = { "n", 231564 },	-- Xy'bin
						["coord"] = { 56.6, 72.8, 2472 },
						["g"] = {
							i(237891),	-- Menagerie's Lost Relic
							i(237894),	-- Pendant of Arcane Havoc
						},
					}),
					q(84959, {	-- Lost Lines of Defense
						["sourceQuests"] = { 84957 },	-- Return to the Veiled Market TODO: 85111 if skip will be to this place?
						["provider"] = { "n", 230955 },	-- Ba'ver
						["coord"] = { 53.1, 64.4, 2472 },
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
						["coord"] = { 59.7, 83.4, 2472 },
						["g"] = {
							i(237890),	-- Band of the Unseen Hand
							i(237893),	-- Ring of Lingering Shadows
						},
					}),
					q(84963, {	-- Sealing the Shadows
						["sourceQuests"] = { 84960 },	-- The Darkness Among Us
						["provider"] = { "n", 234601 },	-- Om'en
						["coord"] = { 54.1, 63.7, 2472 },
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
						["coord"] = { 54.1, 63.1, 2472 },
						["g"] = {
							o(502525, {	-- Barrier Projector
								["coords"] = {
									{ 41.3, 49.1, 2472 },
									{ 46.0, 51.2, 2472 },
									{ 49.8, 57.9, 2472 },
									{ 52.5, 46.8, 2472 },
									{ 51.3, 41.2, 2472 },
									{ 44.4, 36.3, 2472 },
									{ 39.5, 42.0, 2472 },
									{ 58.4, 32.8, 2472 },
								},
							}),
						},
					}),
					q(84964, {	-- Heroes Among Shadow
						["sourceQuests"] = { 84960 },	-- The Darkness Among Us
						["provider"] = { "n", 234602 },	-- Alleria Windrunner
						["coord"] = { 53.7, 63.2, 2472 },
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
						["provider"] = { "n", 234483 },	-- Alleria Windrunner
						--["coord"] = { 53.7, 63.2, 2472 }, mobileNPC
					}),
					q(86835, {	-- Regroup!
						["sourceQuests"] = { 84965 },	-- Core Contributions
						["provider"] = { "n", 234483 },	-- Alleria Windrunner
						--["coord"] = { 53.7, 63.2, 2472 }, mobileNPC
					}),
					q(84967, {	-- The Shadowguard Shattered
						["sourceQuests"] = { 86835 },	-- Regroup!
						["provider"] = { "n", 234620 },	-- Locus-Walker
						["coord"] = { 40.5, 67.7, 2472 },
					}),
				--}),
				--header(HEADERS.AchCriteria, 41970.02, {	-- Chapter 2: Void Alliance
					q(85032, {	-- What Is Left of Home
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "n", 231128 },	-- Locus-Walker
						["coord"] = { 37.6, 74.7, 2472 },
					}),
					q(85961, {	-- Moving the Pawns
						["sourceQuests"] = { 85032 },	-- What Is Left of Home
						["provider"] = { "n", 230700 },	-- Locus-Walker
						["coord"] = { 34.0, 10.9, 2472 },
					}),
					q(84855, {	-- Dead Silence
						["sourceQuests"] = { 85032 },	-- What Is Left of Home
						["provider"] = { "n", 230806 },	-- Locus-Walker
						["coord"] = { 48.2, 36.6, KARESH },
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
						["coord"] = { 48.1, 36.5, KARESH },
					}),
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
								i(233068),	-- Rod of Analysis
							}),
						},
					}),
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
								["g"] = {
									i(233326),	-- Rod of Activation (QI!)
								},
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
						["coord"] = { 47.0, 54.5, KARESH },
						["g"] = {
							i(237867),	-- Oathsworn Defender's Breeches
							i(237874),	-- Oathsworn Defender's Greaves
							i(237862),	-- Oathsworn Defender's Leggings
							i(237882),	-- Oathsworn Defender's Legguards
						},
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
						["g"] = {
							i(233222),	-- Nullbomb (QI!)
						},
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
						["provider"] = { "n", 232642 },	-- Alleria Windrunner
						--["coord"] = { 47.0, 54.5, KARESH }, mobileNPC
						["g"] = {
							i(238386),	-- Void-Touched Fragment
						},
					}),
					q(86946, {	-- Unwrapped and Unraveled
						["sourceQuests"] = { 84866 },	-- To Purchase Safety
						["provider"] = { "n", 237705 },	-- Xal'atath	TODO: unsure
						--["coord"] = { X, Y, KARESH },	TODO: questID missing accepted part of it
					}),
					q(90517, {	-- My Part of the Deal
						["sourceQuests"] = { 86946 },	-- Unwrapped and Unraveled
						["provider"] = { "n", 242538 },	-- Ve'nari
						["coord"] = { 47.1, 54.5, KARESH },
					}),
				--}),
				--header(HEADERS.AchCriteria, 41970.03, {	-- Chapter 3: 

				--}),

					------ Bonus Objective ------
					q(84966, {	-- Break the Assault
						["sourceQuests"] = { 84960 },	-- The Darkness Among Us
						["coord"] = { 54.0, 63.7, 2472 },
					}),
					------ Stay awhile and listen ------
					--hqt(???, {	-- Stay awhile and listen: Locus-Walker / 61476 - no questID
					--	["name"] = "Stay awhile and listen: Locus-Walker",
					--	["sourceQuests"] = { 84957 },	-- Return to the Veiled Market
					--	["provider"] = { "n", 233706 },	-- Locus-Walker
					--	["coord"] = { 59.7, 83.4, 2472 },
					--}),
					---hqt(???, {	-- Stay awhile and listen: Alleria Windrunner / 61476 - no questID
					---	["name"] = "Stay awhile and listen: Alleria Windrunner",
					---	["sourceQuests"] = { 84960 },	-- The Darkness Among Us
					---	["provider"] = { "n", 230609 },	-- Alleria Windrunner
					---	["coord"] = { 54.7, 66.9, 2472 },
					---}),
					hqt(90600, {	-- Stay awhile and listen: Xal'atath
						["name"] = "Stay awhile and listen: Xal'atath",
						["sourceQuests"] = { 84967 },	-- The Shadowguard Shattered
						["provider"] = { "n", 235448 },	-- Xal'atath
						["coord"] = { 37.4, 74.7, 2472 },
					}),
					hqt(90732, {	-- Stay awhile and listen: Alleria Windrunner
						["name"] = "Stay awhile and listen: Alleria Windrunner",
						["sourceQuests"] = { 85032 },	-- What Is Left of Home
						["provider"] = { "n", 240293 },	-- Alleria Windrunner
						["coord"] = { 34.1, 10.6, 2472 },
					}),
					---hqt(???, {	-- Stay awhile and listen: Alleria Windrunner / 61476 - no questID
					---	["name"] = "Stay awhile and listen: Alleria Windrunner",
					---	["sourceQuests"] = { 84855 },	-- Dead Silence
					---	["provider"] = { "n", 233945 },	-- Alleria Windrunner
					---	["coord"] = { 48.3, 36.6, KARESH },
					---}),
					---hqt(???, {	-- Stay awhile and listen: Xal'atath / 61476 - no questID
					---	["name"] = "Stay awhile and listen: Xal'atath",
					---	["sourceQuests"] = { 84857 },	-- Eco-Dome: Primus
					---	["provider"] = { "n", 230825 },	-- Xal'atath
					---	["coord"] = { 47.1, 54.6, KARESH },
					---}),
					hqt(90572, {	-- Stay awhile and listen: Locus-Walker
						["name"] = "Stay awhile and listen: Locus-Walker",
						["sourceQuests"] = { 86946 },	-- Unwrapped and Unraveled
						["provider"] = { "n", 230811 },	-- Locus-Walker
						["coord"] = { 47.0, 54.5, KARESH },
					}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KHAZ_ALGAR, {
		m(KARESH, {
			n(QUESTS, {
				-- During main story
				q(85111),	-- [DNT] K'aresh Trust Renown Unlock (spellID 466720)
				-- ??
				--q(90812),	-- pop randomly at start/intro quest chain (spellID - 1234922 / Warrant)
			}),
		}),
	}),
})));