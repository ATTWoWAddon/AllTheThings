---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		n(QUESTS, {
			header(HEADERS.Achievement, 41802, {	-- Eversong In Reprise
				header(HEADERS.AchCriteria, 41802.01, {	-- Whispers in the Twillight
					q(86737, {	-- Fair Breeze, Light Bloom
						["sourceQuests"] = { 86735 },	-- Paved in Ash
						["provider"] = { "n", 235787 },	-- Lor'themar Theron
						["coord"] = { 45.4, 70.4, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(94871, {	-- Eversong
						["description"] = "Adventure Mode Exclusive Quest from the Scouting Map as you pick to quest in Eversong Woods.",
						["sourceQuests"] = { 86735 },	-- Paved in Ash
					}),
					------ Stay awhile and listen ------
					--hqt(XXXXX, {	-- Stay awhile and listen: Lady Liadrin
					--	["name"] = "Stay awhile and listen: Lady Liadrin",
					--	["description"] = "Dialogue becomes available after accepting 'Fair Breeze, Light Bloom' (86737).",
					--	["sourceQuests"] = { 86737 },	-- Fair Breeze, Light Bloom
					--	["provider"] = { "n", 252822 },	-- Lady Liadrin
					--	["coord"] = { 45.5, 70.2, MAP.MIDNIGHT.SILVERMOON_CITY },
					--}),
					--
					q(86740, {	-- Displaced Denizens
						["sourceQuests"] = { 86737 },	-- Fair Breeze, Light Bloom
						["provider"] = { "n", 236743 },	-- Orweyna
						["coord"] = { 46.7, 45.7, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86739, {	-- Fairbreeze Favors
						["sourceQuests"] = { 86737 },	-- Fair Breeze, Light Bloom
						["provider"] = { "n", 236739 },	-- Magistrix Landra Dawnstrider
						["coord"] = { 46.7, 45.7, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(264248) },	-- Sin'dorei Storage Jar (DECOR!)
					}),
					q(86738, {	-- Sharpmaw
						["sourceQuests"] = { 86737 },	-- Fair Breeze, Light Bloom
						["provider"] = { "n", 236739 },	-- Magistrix Landra Dawnstrider
						["coord"] = { 46.7, 45.7, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(248023),	-- Lynxslayer's Leather Gloves
							i(248024),	-- Lynxslayer's Reinforced Gauntlets
							i(248026),	-- Lynxslayer's Scale Grips
							i(248025),	-- Lynxslayer's Stitched Mitts
						},
					}),
					q(86741, {	-- Lightbloom Looming
						["sourceQuests"] = {
							86740,	-- Displaced Denizens
							86739,	-- Fairbreeze Favors
							86738,	-- Sharpmaw
						},
						["provider"] = { "n", 236743 },	-- Orweyna
						["coord"] = { 46.7, 45.7, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(248055),	-- Lightstalker's Boots
							i(248018),	-- Lightstalker's Greaves
							i(248054),	-- Lightstalker's Slippers
							i(248056),	-- Lightstalker's Treads
							i(245992),	-- Ornate Silvermoon Candelabra (DECOR!)
						},
					}),
					q(86743, {	-- Trimming the Lightbloom
						["sourceQuests"] = { 86741 },	-- Lightbloom Looming
						["qgs"] = {
							236903,	-- Orweyna
							240663,	-- Orweyna (mobileNPC)
						},
						["coord"] = { 39.7, 51.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
						},
					}),
					q(86742, {	-- Curious Cultivation
						["sourceQuests"] = { 86741 },	-- Lightbloom Looming
						["provider"] = { "n", 236903 },	-- Orweyna
						["coord"] = { 39.7, 51.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(248047),	-- Lightbloom Band
							i(248048),	-- Ring of Overgrowth
							o(577805, {	-- Strange Seed
								i(253386),	-- Light-pulsing Seed (QI!)
							}),
						},
					}),
					q(86744, {	-- Seeking Truth
						["sourceQuests"] = {
							86742,	-- Curious Cultivation
							86743,	-- Trimming the Lightbloom
						},
						["provider"] = { "n", 236903 },	-- Orweyna
						["coord"] = { 45.9, 55.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(248041),	-- Belt of Herbicide
							i(248038),	-- Girdle of Herbicide
							i(248039),	-- Sash of Herbicide
							i(248040),	-- Waistguard of Herbicide
						},
					}),
					q(86745, {	-- Silvermoon Must Know
						["sourceQuests"] = { 86744 },	-- Seeking Truth
						["provider"] = { "n", 236716 },	-- Arator
						["coord"] = { 47.3, 55.4, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
				}),
				header(HEADERS.AchCriteria, 41802.02, {	-- Shadowfall
					q(86621, {	-- The Wayward Magister
						["sourceQuests"] = { 86745 },	-- Silvermoon Must Know
						["provider"] = { "n", 236716 },	-- Arator
						["coord"] = { 47.3, 55.4, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(528310, {	-- Mysterious Corpse
								["coord"] = { 49.2, 58.9, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(239496) },	-- Despoiled Notes (QI!)
							}),
						},
					}),
					------ Stay awhile and listen ------
					-- Exo Note: "Stay awhile" content is still present, it just does not trigger the HQT
					--hqt(91078, {	-- Stay awhile and listen: Orweyna
					--	["name"] = "Stay awhile and listen: Orweyna",
					--	["description"] = "Dialogue becomes available during 'The Wayward Magister' (86621).",
					--	["sourceQuests"] = { 86745 },	-- Silvermoon Must Know
					--	["provider"] = { "n", 236903 },	-- Orweyna
					--	["coord"] = { 47.4, 55.3, MAP.MIDNIGHT.EVERSONG_WOODS },
					--}),
					q(86623, {	-- Appeal to the Void
						["sourceQuests"] = { 86621 },	-- The Wayward Magister
						["provider"] = { "n", 236087 },	-- Magister Umbric
						["coord"] = { 47.7, 69.8, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(251883) },	-- Umbric's Channeling Focus
					}),
					q(86624, {	-- Rational Explanation
						["sourceQuests"] = { 86621 },	-- The Wayward Magister
						["provider"] = { "n", 236100 },	-- Arator
						["coord"] = { 47.7, 69.7, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(90907, {	-- The First to Know
						["sourceQuests"] = {
							86623,	-- Appeal to the Void
							86624,	-- Rational Explanation
						},
						["provider"] = { "n", 236087 },	-- Magister Umbric
						["coord"] = { 47.7, 69.8, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(244783) },	-- Majestic Lightwood Table (DECOR!)
					}),
					q(86622, {	-- Chance Meeting
						["sourceQuests"] = { 90907 },	-- The First to Know
						["provider"] = { "n", 245004 },	-- Lord Antenorian
						["coord"] = { 47.2, 68.2, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(243221),	-- Suspicious Missive (QI!)
							--
							i(248049),	-- Eversong Chain
							i(248050),	-- Tranquillien Choker
						},
					}),
					q(86626, {	-- The Ransacked Lab
						["sourceQuests"] = { 86622 },	-- Chance Meeting
						["provider"] = { "n", 242143 },	-- Magister Umbric
						["coord"] = { 47.7, 69.8, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86632, {	-- The Battle for Tranquillien
						["sourceQuests"] = { 86626 },	-- The Ransacked Lab
						["provider"] = { "n", 236687 },	-- Magister Umbric
						["coord"] = { 47.7, 69.8, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(90493, {	-- The Heart of Tranquillien
						["sourceQuests"] = { 86626 },	-- The Ransacked Lab
						["provider"] = { "n", 236686 },	-- Arator
						["coord"] = { 47.7, 69.7, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(253485),	-- Sin'dorei Honor Stone (DECOR!)
							i(253488),	-- Diamond Honor Stone (DECOR!)
						},
					}),
					q(90509, {	-- The Traitors of Tranquillien
						["sourceQuests"] = { 86626 },	-- The Ransacked Lab
						["provider"] = { "n", 236686 },	-- Arator
						["coord"] = { 47.7, 69.7, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(248084),	-- Backstabber's Back Stabber
							i(248072),	-- Cultist's Pillaged Glaive
							i(248064),	-- Fallen Matron's Mace
							i(248065),	-- Gavel of the Unjust
							i(248066),	-- Malicious Skullcracker
							i(248077),	-- Protector's Discarded Shield
							i(248074),	-- Traitor Captain's Executioner
							i(248069),	-- Traitorous Acolyte's Blade
							i(250356),	-- Treasonous Ranger's Longbow
							i(250355),	-- Twilight Agitator's Stave
						},
					}),
					q(90494, {	-- The Missing Magister
						["sourceQuests"] = {
							86632,	-- The Battle for Tranquillien
							90493,	-- The Heart of Tranquillien
							90509,	-- The Traitors of Tranquillien
						},
						["provider"] = { "n", 243984 },	-- Arator
						["coord"] = { 49.0, 68.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(243468),	-- Jeweled Key (QI!)
							o(542854, {	-- Ominous Lockbox
								["coord"] = { 47.1, 68.4, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(239134) },	-- Plans of Infiltration (QI!)
							}),
							--
							i(248051),	-- Corrupted Twilight Cowl
							i(248052),	-- Shroud of Treachery
						},
					}),
					q(86781, {	-- Face the Past
						["sourceQuests"] = { 90494 },	-- The Missing Magister
						["provider"] = { "n", 242143 },	-- Magister Umbric
						["coord"] = { 47.7, 69.8, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86634, {	-- The Past Keeps Watch
						["sourceQuests"] = { 86781 },	-- Face the Past
						["provider"] = { "n", 236391 },	-- Arator
						["coord"] = { 37.0, 74.1, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(248032),	-- Twilight Spy's Breeches
							i(248030),	-- Twilight Spy's Legguards
							i(248031),	-- Twilight Spy's Pants
							i(248033),	-- Twilight Spy's Tights
						},
					}),
					q(86633, {	-- Comprehend the Void
						["sourceQuests"] = { 86634 },	-- The Past Keeps Watch
						["provider"] = { "n", 236363 },	-- Magister Umbric
						["coord"] = { 37.0, 74.0, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(250361),	-- Depleted Voidshard Ring
							i(248046),	-- Voidtainted Ritual Band
						},
					}),
					------ Stay awhile and listen ------
					--hqt(, {	-- Stay awhile and listen: Arator
					--	["name"] = "Stay awhile and listen: Arator
					--	["description"] = "Dialogue becomes available during 'Comprehend the Void' (86633).",
					--	["sourceQuests"] = { 86634 },	-- The Past Keeps Watch
					--	["provider"] = { "n", 236391 },	-- Arator
					--	["coord"] = { 37.0, 74.1, MAP.MIDNIGHT.EVERSONG_WOODS },
					--}),
					q(86635, {	-- To Deatholme
						["sourceQuests"] = { 86633 },	-- Comprehend the Void
						["provider"] = { "n", 237240 },	-- Magister Umbric
						["coord"] = { 37.3, 74.7, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86636, {	-- Void Walk With Me
						["sourceQuests"] = { 86635 },	-- To Deatholme
						["provider"] = { "n", 236730 },	-- Magister Umbric
						["coord"] = { 44.3, 84.7, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(253153),	-- Stolen Knowledge (QI!)
							--
							i(249646),	-- Elder Mossclogs
							i(249650),	-- Elder Mossvein Greatleaves
							i(249638),	-- Osseoclad Bonecrushers
							i(249642),	-- Osseoclad Razorspaulders
							i(249654),	-- Rampant Thistlestompers
							i(249658),	-- Rampant Thornmantles
							i(249634),	-- Sprawling Fibershells
							i(249630),	-- Sprawling Rootpads
						},
					}),
				}),
				header(HEADERS.AchCriteria, 41802.03, {	-- Ripple Effects
					q(86637, {	-- Anything but Reprieve
						["sourceQuests"] = { 86636 },	-- Void Walk With Me
						["provider"] = { "n", 242433 },	-- Arator
						["coord"] = { 44.6, 85.3, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86639, {	-- What's Left
						["sourceQuests"] = { 86637 },	-- Anything but Reprieve
						["provider"] = { "n", 236099 },	-- Lady Liadrin
						["coord"] = { 52.7, 61.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(248057),	-- Bloomtrimmer's Wrap
							i(248058),	-- Suncrown Savior's Drape
						},
					}),
					q(86638, {	-- Choking Tendrils
						["sourceQuests"] = { 86637 },	-- Anything but Reprieve
						["provider"] = { "n", 236132 },	-- Arator
						["coord"] = { 52.6, 61.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86640, {	-- Premonition
						["sourceQuests"] = {
							86638,	-- Choking Tendrils
							86639,	-- What's Left
						},
						["provider"] = { "n", 236572 },	-- Lor'themar Theron
						["coord"] = { 53.5, 54.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86641, {	-- Old Scars
						["sourceQuests"] = { 86640 },	-- Premonition
						["provider"] = { "n", 241206 },	-- Lor'themar Theron
						["coord"] = { 59.2, 51.0, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(248020),	-- Burnt Watha'nan Breastplate
							i(248021),	-- Burnt Watha'nan Chainmail
							i(248022),	-- Burnt Watha'nan Jerkin
							i(248019),	-- Burnt Watha'nan Robes
						},
					}),
					q(86642, {	-- A Foe Unseen
						["sourceQuests"] = { 86640 },	-- Premonition
						["provider"] = { "n", 236567 },	-- Arator
						["coord"] = { 59.1, 51.0, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(525307, {	-- Shipment Crate
								["coord"] = { 60.6, 52.4, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(244469) },	-- Lightbloom Axe (QI!)
							}),
						},
					}),
					q(86643, {	-- Following the Root
						["sourceQuests"] = {
							86642,	-- A Foe Unseen
							86641,	-- Old Scars
						},
						["provider"] = { "n", 241205 },	-- Arator
						["coord"] = { 64.5, 48.7, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					------ Stay awhile and listen ------
					--hqt(, {	-- Stay awhile and listen: Halduron Brightwing
					--	["name"] = "Stay awhile and listen: Halduron Brightwing
					--	["description"] = "Dialogue becomes available during 'Following the Root' (86643).",
					--	["sourceQuests"] = {
					--		86642,	-- A Foe Unseen
					--		86641,	-- Old Scars
					--	},
					--	["provider"] = { "n", 241176 },	-- Halduron Brightwing
					--	["coord"] = { 64.5, 48.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					--}),
					q(86644, {	-- Gods Before Us
						["sourceQuests"] = { 86643 },	-- Following the Root
						["provider"] = { "n", 236610 },	-- Arator
						["coord"] = { 43.7, 30.1, 2579 }, -- Wartha'nan Crypts
						["groups"] = {
							i(244144),	-- Bloodvein Clot (QI!)
							i(244143),	-- Bonecarapace Fangs (QI!)
							--
							i(252677),	-- Puzzling Crypt Relic
						},
					}),
					------ Stay awhile and listen ------
					--hqt(, {	-- Stay awhile and listen: Arator
					--	["name"] = "Stay awhile and listen: Arator
					--	["description"] = "Dialogue becomes available during 'Gods Before Us' (86644).",
					--	["sourceQuests"] = { 86643 },	-- Following the Root
					--	["provider"] = { "n", 240662 },	-- Arator
					--	["coord"] = { 53.7, 66.0, MAP.MIDNIGHT.EVERSONG_WOODS },
					--}),
					q(86646, {	-- An Impasse
						["sourceQuests"] = { 86644 },	-- Gods Before Us
						["provider"] = { "n", 240662 },	-- Arator (mobileNPC)
						["coord"] = { 17.1, 36.5, 2579 },	-- Wartha'nan Crypts
						["groups"] = {
							i(250471),	-- Enchanted Crypt Battlestaff
							i(250470),	-- Enchanted Crypt Bow
							i(250473),	-- Enchanted Crypt Claymore
							i(250479),	-- Enchanted Crypt Cleaver
							i(250476),	-- Enchanted Crypt Falchion
							i(248080),	-- Enchanted Crypt Fetish
							i(250474),	-- Enchanted Crypt Greatsword
							i(250477),	-- Enchanted Crypt Hacker
							i(250478),	-- Enchanted Crypt Hatchet
							i(250480),	-- Enchanted Crypt Shiv
							i(250472),	-- Enchanted Crypt Stave
							i(250475),	-- Enchanted Crypt Sword
						},
					}),
					q(86647, {	-- Beat of Blood
						["sourceQuests"] = { 86646 },	-- An Impasse
						["provider"] = { "n", 236737 },	-- Arator
						["coord"] = { 54.7, 68.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86648, {	-- Light Guide Us
						["sourceQuests"] = { 86647 },	-- Beat of Blood
						["provider"] = { "n", 236612 },	-- Lor'Themar Theron
						["coord"] = { 55.1, 81.4, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(248027),	-- Eversong Defender's Crown
							i(248053),	-- Eversong Defender's Helm
							i(248028),	-- Eversong Defender's Helmet
							i(248029),	-- Eversong Defender's Hood
						},
					}),
					q(86649, {	-- Past Redemption
						["sourceQuests"] = { 86648 },	-- Light Guide Us
						["provider"] = { "n", 241654 },	-- High-Exarch Turalyon
						["coord"] = { 60.2, 81.5, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86650, {	-- Fractured
						["sourceQuests"] = { 86649 },	-- Past Redemption
						["provider"] = { "n", 237433 },	-- Lor'themar Theron
						["coord"] = { 60.6, 81.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(244538) },	-- Silvermoon Sundial (DECOR!)
					}),
				}),
			}),
			header(HEADERS.Achievement, 61957, {	-- Sojourner of Eversong Woods
				header(HEADERS.AchCriteria, 61957.01, {	-- Fear and Fel
					q(90835, {	-- Murder Row: Rumors Abound
						["sourceQuests"] = { 86735 },	-- Paved in Ash
						["provider"] = { "n", 244493 },	-- Avara
						["coord"] = { 56.0, 63.6, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(90818, {	-- Murder Row: Loose Lips
						["sourceQuests"] = { 90835 },	-- Murder Row: Rumors Abound
						["provider"] = { "n", 245418 },	-- Belath Dawnblade
						["coord"] = { 51.7, 64.2, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(90837, {	-- Murder Row: Traces of Fel
						["sourceQuests"] = { 90835 },	-- Murder Row: Rumors Abound
						["provider"] = { "n", 245418 },	-- Belath Dawnblade
						["coord"] = { 51.7, 64.2, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							o(539775, {	-- Mislaid Bag
								["coord"] = { 50.6, 58.1, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = { i(243240) },	-- Drained Wyrm Core (QI!)
							}),
							o(539772, {	-- "Empty" Wine Bottle"
								["coord"] = { 52.1, 56.1, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = { i(243237) },	-- Bottled Fel Dust (QI!)
							}),
							o(539770, {	-- Strewn Rags
								["coord"] = { 54.8, 61.3, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = { i(243236) },	-- Stained Worker's Shirt (QI!)
							}),
							o(539773, {	-- Concealed Crate
								["coord"] = { 51.9, 60.6, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = { i(243238) },	-- Blackened Metal Fragment (QI!)
							}),
							o(539774, {	-- Inconspicuous Ledger
								["coord"] = { 51.0, 56.3, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = { i(243239) },	-- Handwritten List (QI!)
							}),
						},
					}),
					q(90819, {	-- Murder Row: Acting the Part
						["sourceQuests"] = {
							90818,	-- Murder Row: Loose Lips
							90837,	-- Murder Row: Traces of Fel
						},
						["provider"] = { "n", 244443 },	-- Belath Dawnblade
						["coord"] = { 56.1, 56.7, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							i(244407),	-- Cracked Wyrm Core (QI!)
							i(253212),	-- Rogue's Signet (QI!)
							i(253211),	-- Smuggler's Signet (QI!)
							o(539728, {	-- Crate of Fel Artifacts
								["coord"] = { 59.0, 52.0, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = {
									i(245566),	-- Fel Splinter
									i(244528),	-- Shipping Manifest (QI!)
								},
							}),
						},
					}),
					q(90821, {	-- Murder Row: Harbored Secrets
						["sourceQuests"] = { 90819 },	-- Murder Row: Acting the Part
						["provider"] = { "n", 244454 },	-- Belath Dawnblade
						["coord"] = { 54.5, 54.8, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = { i(244547) },	-- Folded Receipt (QI!)
					}),
				}),
				header(HEADERS.AchCriteria, 61957.02, {	-- Flowers for Amalthea
					q(92021, {	-- Graveblossom Gardening
						["sourceQuests"] = { 90494 },	-- The Missing Magister
						["provider"] = { "n", 249337 },	-- Talandra Dawnsprite
						["coord"] = { 37.5, 72.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(568332, {	-- Blooming Graveblossom
								["coords"] = {
									{ 37.9, 76.3, MAP.MIDNIGHT.EVERSONG_WOODS },
									{ 38.1, 77.1, MAP.MIDNIGHT.EVERSONG_WOODS },
									{ 38.3, 72.5, MAP.MIDNIGHT.EVERSONG_WOODS },
									{ 38.5, 74.0, MAP.MIDNIGHT.EVERSONG_WOODS },
									{ 38.9, 76.4, MAP.MIDNIGHT.EVERSONG_WOODS },
									{ 39.1, 77.0, MAP.MIDNIGHT.EVERSONG_WOODS },
									{ 39.4, 72.9, MAP.MIDNIGHT.EVERSONG_WOODS },
									{ 39.5, 74.8, MAP.MIDNIGHT.EVERSONG_WOODS },
									{ 39.5, 76.6, MAP.MIDNIGHT.EVERSONG_WOODS },
									{ 40.0, 74.3, MAP.MIDNIGHT.EVERSONG_WOODS },
									{ 40.4, 73.1, MAP.MIDNIGHT.EVERSONG_WOODS },
								},
								["groups"] = { i(249471) },	-- Pristine Graveblossom (QI!)
							}),
						},
					}),
					q(92022, {	-- A Venomous Vocation
						["sourceQuests"] = { 90494 },	-- The Missing Magister
						["provider"] = { "n", 249337 },	-- Talandra Dawnsprite
						["coord"] = { 37.5, 72.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(253869) },	-- Potent Mournbat Venom (QI!)
					}),
					q(92023, {	-- Suspicious Sundries
						["sourceQuests"] = {
							92022,	-- A Venomous Vocation
							92021,	-- Graveblossom Gardening
						},
						["provider"] = { "n", 249337 },	-- Talandra Dawnsprite
						["coord"] = { 37.5, 72.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(254280),	-- Vial of Quicksilver (QI!)
							i(254281),	-- Flask of Dragon's Blood (QI!)
							i(254282),	-- Bottle of Magister's Reserve (QI!)
						},
					}),
					q(92024, {	-- House Call
						["sourceQuests"] = { 92023 },	-- Suspicious Sundries
						["provider"] = { "n", 249426 },	-- Limien Bountcask
						["coord"] = { 40.7, 60.1, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(92025, {	-- Flowers for Amalthea
						["sourceQuests"] = { 92024 },	-- House Call
						["provider"] = { "n", 253058 },	-- Well-Loved Tome
						["coord"] = { 37.4, 72.1, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(257418) },	-- Ornate Sin'dorei Sconce (DECOR!)
					}),
				}),
				header(HEADERS.AchCriteria, 61957.03, {	-- Sunbath, Take Me Away
					q(91271, {	-- A Fish!
						--Required fishing to complete it, but not to accept it.
						["sourceQuests"] = { 86745 },	--	Silvermoon Must Know
						["provider"] = { "n", 245745 },	-- Valdekar Solaar
						["coord"] = { 48.8, 76.7, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(246379),	-- Absolutely Adequate Fish (QI!)
							i(246382),	-- Fabulous Fish (QI!)
							i(246380),	-- Fairly Fine Fish (QI!)
							i(246381),	-- Pretty Plump Fish (QI!)
						},
					}),
					q(91328, {	-- Secret Ingredients
						["sourceQuests"] = { 91271 },	-- A Fish!
						["provider"] = { "n", 245745 },	-- Valdekar Solaar
						["coord"] = { 48.8, 76.7, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o_repeated({
								i(246364),	-- Belanise Blossom (QI!)
								o(555383),	-- Belanise Cluster
								o(626980),	-- Belanise Cluster
							}),
							o(555381, {	-- Sinara Vine
								i(246363),	-- Sinara Berry (QI!)
							}),
						},
					}),
					q(91090, {	-- Pesky Pests
						["sourceQuests"] = { 91271 },	-- A Fish!
						["provider"] = { "n", 245748 },	-- Kaliel Solaar
						["coord"] = { 48.8, 76.7, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(91137, {	-- Lost In Light
						["sourceQuests"] = {
							91328,	-- Secret Ingredients
							91090,	-- Pesky Pests
						},
						["provider"] = { "n", 245748 },	-- Kaliel Solaar
						["coord"] = { 48.8, 76.7, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(263198) },	-- Valdekar's Special (TOY!)
					}),
				}),
				header(HEADERS.AchCriteria, 61957.04, {	-- Port Detective
					q(87392, {	-- Cargo Conspiracy
						["sourceQuests"] = { 86735 },	-- Paved in Ash
						["provider"] = { "n", 238490 },	-- Lyssara Duskmourne
						["coord"] = { 46.9, 45.2, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(517146, {	-- Dropped Note
								["coord"] = { 47.1, 46.3, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(237722) },	-- Abandoned Note (QI!)
							}),
						},
					}),
					q(87393, {	-- Warranted Search
						["sourceQuests"] = { 87392 },	-- Cargo Conspiracy
						["provider"] = { "n", 238490 },	-- Lyssara Duskmourne
						["coord"] = { 46.9, 45.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(87394, {	-- Supplier Surveillance
						["sourceQuests"] = { 87392 },	-- Cargo Conspiracy
						["provider"] = { "n", 238490 },	-- Lyssara Duskmourne
						["coord"] = { 46.9, 45.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(87395, {	-- Below the Brine
						["sourceQuests"] = {
							87394,	-- Supplier Surveillance
							87393,	-- Warranted Search
						},
						["provider"] = { "n", 238505 },	-- Lyssara Duskmourne
						["coord"] = { 39.5, 45.0, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(239022),	-- Elixir of the Sea's Bounty (PQI!)
							o(520354, {	-- Submerged Cargo
								i(242552),	-- Unstable Arcana (QI!)
							}),
						},
					}),
					q(87397, {	-- Cargo Collateral
						["sourceQuests"] = { 87395 },	-- Below the Brine
						["provider"] = { "n", 239368 },	-- Lyssara Duskmourne
						["coord"] = { 35.8, 43.8, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(87396, {	-- Dead to Rights
						["sourceQuests"] = { 87395 },	-- Below the Brine
						["provider"] = { "n", 239368 },	-- Lyssara Duskmourne
						["coord"] = { 35.8, 43.8, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(87398, {	-- Smuggler Showdown
						["sourceQuests"] = {
							87397,	-- Cargo Collateral
							87396,	-- Dead to Rights
						},
						["provider"] = { "n", 239368 },	-- Lyssara Duskmourne
						["coord"] = { 35.8, 43.8, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(263485),	-- Eversong Battleaxe
							i(263484),	-- Eversong Blade
							i(263447),	-- Eversong Chopper
							i(263486),	-- Eversong Hacker
							i(263481),	-- Eversong Protector
							i(263480),	-- Eversong Rod
							i(263482),	-- Eversong Stabber
							i(263487),	-- Eversong Training Staff
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61957.05, {	-- Lesser Evil
					q(90669, {	-- Gold is Gold
						["sourceQuests"] = { 86735 },	-- Paved in Ash
						["provider"] = { "n", 243290 },	-- Sarvi
						["coord"] = { 54.5, 61.5, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(89199, {	-- A Small Task
						["sourceQuests"] = { 90669 },	-- Gold is Gold
						["provider"] = { "n", 241393 },	-- Magister Aradis
						["coord"] = { 54.0, 34.1, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							o(527218, {	-- Depleted Wardbreaker
								["coord"] = { 54.0, 33.9, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = { i(239511) },	-- Depleted Wardbreaker (QI!)
							}),
						},
					}),
					q(89200, {	-- Unraveling Wards
						["sourceQuests"] = { 89199 },	-- A Small Task
						["provider"] = { "n", 241405 },	-- Magister Aradis
						["coord"] = { 54.1, 33.9, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(89201, {	-- Outschemed
						["sourceQuests"] = { 89200 },	-- Unraveling Wards
						["provider"] = { "n", 241400 },	-- Magister Aradis
						["coord"] = { 37.4, 74.3, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							o(527240, {	-- Magister's Chest
								["coord"] = { 38.9, 75.5, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = { i(239608) },	-- Incriminating Documents (QI!)
							}),
						},
					}),
					q(89202, {	-- Stir the Nest
						["sourceQuests"] = { 89201 },	-- Outschemed
						["provider"] = { "n", 241398 },	-- Magister Dawnblaze
						["coord"] = { 38.8, 75.7, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = { i(259992) },	-- Duplicate Documents (QI!)
					}),
					q(89203, {	-- Mutual Benefit
						["sourceQuests"] = { 89202 },	-- Stir the Nest
						["provider"] = { "n", 241399 },	-- Jaeth
						["coord"] = { 51.8, 63.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(89204, {	-- Five Finger Discount
						["sourceQuests"] = { 89203 },	-- Mutual Benefit
						["provider"] = { "n", 241399 },	-- Jaeth
						["coord"] = { 51.8, 63.8, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							o(527364, {	-- Thrumming Amulet
								["coord"] = { 49.6, 62.3, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = { i(241205) },	-- Thrumming Amulet (QI!)
							}),
							o(527363, {	-- Basket of Spell Reagents
								["coord"] = { 35.7, 61.5, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = { i(241208) },	-- Basket of Spell Reagents (QI!)
							}),
							o(527365, {	-- Arcane Sword
								["coord"] = { 40.5, 52.6, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = { i(241207) },	-- Arcane Sword (QI!)
							}),
						},
					}),
					q(89205, {	-- Cutting a Key
						["sourceQuests"] = { 89204 },	-- Five Finger Discount
						["provider"] = { "n", 241401 },	-- Jaeth
						["coord"] = { 50.8, 61.1, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							o(531508, {	-- Recharged Wardbreaker
								["coord"] = { 51.0, 60.9, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = { i(242253) },	-- Recharged Wardbreaker (QI!)
							}),
						},
					}),
					q(89206, {	-- Break and Enter
						["sourceQuests"] = { 89205 },	-- Cutting a Key
						["provider"] = { "n", 241402 },	-- Jaeth
						["coord"] = { 54.3, 33.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(89207, {	-- Rats Can Bite
						["sourceQuests"] = { 89206 },	-- Break and Enter
						["provider"] = { "n", 241403 },	-- Jaeth
						["coord"] = { 54.3, 33.9, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							i(263358),	-- Row Rat's Chausses
							i(263359),	-- Row Rat's Links
							i(263362),	-- Row Rat's Trousers
							i(263364),	-- Row Rat's Leggings
						},
					}),
					q(89208, {	-- What We're Owed
						["sourceQuests"] = { 89207 },	-- Rats Can Bite
						["provider"] = { "n", 241404 },	-- Jaeth
						["coord"] = { 53.0, 33.2, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
				}),
				header(HEADERS.AchCriteria, 61957.06, {	-- One Adventurous Hatchling
					q(89383, {	-- One Adventurous Hatchling
						["sourceQuests"] = { 86650 },	-- Fractured
						["provider"] = { "n", 241553 },	-- Vaelith Sunplume
						["coord"] = { 56.8, 35.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(89384, {	-- A Hungry Flock
						["sourceQuests"] = { 86650 },	-- Fractured
						["provider"] = { "n", 241553 },	-- Vaelith Sunplume
						["coord"] = { 56.8, 35.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(244214) },	-- Juicy Frog Leg (QI!)
					}),
					q(89386, {	-- A Roost-ed Development
						["sourceQuests"] = { 86650 },	-- Fractured
						["provider"] = { "n", 241553 },	-- Vaelith Sunplume
						["coord"] = { 56.8, 35.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(547829, {	-- Golden Sunleaf
								["coord"] = { 53.3, 36.0, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(245531) },	-- Golden Sunleaf (QI!)
							}),
						},
					}),
					q(89385, {	-- First Step Into Parenthood
						["sourceQuests"] = {
							89384,	-- A Hungry Flock
							89386,	-- A Roost-ed Development
							89383,	-- One Adventurous Hatchling
						},
						["provider"] = { "n", 241553 },	-- Vaelith Sunplume
						["coord"] = { 56.8, 35.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(262510, {	-- Hawkstrider Egg
								i(244339),	-- Hawkstrider Hatchling (PET!)
							}),
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61957.07, {	-- Far Striding
					q(94371, {	-- A Ranger's Dream
						["sourceQuests"] = { 86735 },	-- Paved in Ash
						["qg"] = 257384,	-- Despondent Magistrix
						["coord"] = { 45.2, 45.8, MAP.MIDNIGHT.EVERSONG_WOODS },
						["isBreadcrumb"] = true,	-- I think
					}),
					q(91342, {	-- If You Want It Done Right
						["sourceQuests"] = { 94371 },	-- A Ranger's Dream
						["provider"] = { "n", 246806 },	-- Arcanist Taemin
						["coord"] = { 57.4, 39.9, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(91452, {	-- Range of Knowledge
						["sourceQuests"] = { 94371 },	-- A Ranger's Dream
						["provider"] = { "n", 246806 },	-- Arcanist Taemin
						["coord"] = { 57.4, 39.9, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(555830, {	-- Index of Ranger Corps Recipes vol. VII
								["coord"] = { 56.5, 40.6, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(254557) },	-- Index of Ranger Corps Recipes vol. VII (QI!)
							}),
							o(555823, {	-- Herbalist's Handbook: Eversong Medicinals
								["coord"] = { 57.2, 42.1, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(254558) },	-- Herbalist's Handbook: Eversong Medicinals (QI!)
							}),
							o(555832, {	-- Songs for the Silver Streams
								["coord"] = { 56.9, 43.1, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(254559) },	-- Songs for the Silver Streams (QI!)
							}),
						},
					}),
					q(91345, {	-- To the North Tower
						["sourceQuests"] = {
							91342,	-- If You Want It Done Right
							91452,	-- Range of Knowledge
						},
						["provider"] = { "n", 246866 },	-- Captain Dawnrunner
						["coord"] = { 56.7, 40.8, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(91347, {	-- Strider Stampede
						["sourceQuests"] = { 91345 },	-- To the North Tower
						["provider"] = { "n", 247394 },	-- Ranger Valsarin
						["coord"] = { 49.7, 48.3, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(568505, {	-- Mysterious Bloom
								["coord"] = { 50.4, 48.6, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(249491) },	-- Mysterious Bloom (QI!)
							}),
						},
					}),
					q(91462, {	-- To the Central Tower
						["sourceQuests"] = {
							91342,	-- If You Want It Done Right
							91452,	-- Range of Knowledge
						},
						["provider"] = { "n", 246866 },	-- Captain Dawnrunner
						["coord"] = { 56.7, 40.8, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(91348, {	-- See a Mana 'bout a Wyrm
						["sourceQuests"] = { 91462 },	-- To the Central Tower
						["provider"] = { "n", 247395 },	-- Ranger Asterae
						["coord"] = { 48.6, 57.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(568439, {	-- Mysterious Bloom
								["coord"] = { 48.6, 57.6, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(249490) },	-- Mysterious Bloom (QI!)
							}),
						},
					}),
					q(91463, {	-- To the South Tower
						["sourceQuests"] = {
							91347,	-- Strider Stampede
							91348,	-- See a Mana 'bout a Wyrm
						},
						["providers"] = {
							{ "n", 247395 },	-- Ranger Asterae
							{ "n", 248307 },	-- Ranger Valsarin
						},
						["coords"] = {
							{ 48.6, 57.6, MAP.MIDNIGHT.EVERSONG_WOODS },	-- Ranger Asterae
							{ 50.4, 48.5, MAP.MIDNIGHT.EVERSONG_WOODS },	-- Ranger Valsarin
						},
					}),
					q(91349, {	-- The Dark Part of the Woods
						["sourceQuests"] = { 91463 },	-- To the South Tower
						["provider"] = { "n", 247500 },	-- Arcanist Taemin
						["coord"] = { 43.9, 75.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(248244),	-- Corruption Resonator (PQI!)
							o(568515, {	-- Mysterious Bloom
								["coord"] = { 42.8, 79.2, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(249492) },	-- Mysterious Bloom (QI!)
							}),
						},
					}),
					q(91350, {	-- A Real Assignment
						["sourceQuests"] = { 91349 },	-- The Dark Part of the Woods
						["provider"] = { "n", 247500 },	-- Arcanist Taemin
						["coord"] = { 43.5, 75.0, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(91384, {	-- Recovery Mission
						["sourceQuests"] = { 91350 },	-- A Real Assignment
						["provider"] = { "n", 247593 },	-- Captain Dawnrunner
						["coord"] = { 59.4, 68.8, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(568254, {	-- Scattered Supplies
								i(249272),	-- Scattered Supplies (QI!)
							}),
						},
					}),
					q(91383, {	-- Tidy Up
						["sourceQuests"] = { 91350 },	-- A Real Assignment
						["provider"] = { "n", 247596 },	-- Arcanist Taemin
						["coord"] = { 59.4, 68.9, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(91385, {	-- A Ranger's Spirit
						["sourceQuests"] = {
							91384,	-- Recovery Mission
							91383,	-- Tidy Up
						},
						["provider"] = { "n", 247593 },	-- Captain Dawnrunner
						["coord"] = { 59.4, 68.8, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(263429),	-- Eversong Hoofcovers
							i(263427),	-- Eversong Naturalist's Boots
							i(263419),	-- Farstrider Recruit's Footwear
							i(263416),	-- Librarian's Woven Shoes
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61957.08, {	-- Tailor Troubles
					q(91386, {	-- Mad to Measure
						["sourceQuests"] = { 86735 },	-- Paved in Ash
						["provider"] = { "n", 247645 },	-- Solwin Brightstitch
						["coord"] = { 48.4, 54.5, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(92408, {	-- Material Gains
						["sourceQuests"] = { 91386 },	-- Mad to Measure
						["provider"] = { "n", 247645 },	-- Solwin Brightstitch
						["coord"] = { 48.8, 55.0, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(91388, {	-- Uncommon Threads
						["sourceQuests"] = { 92408 },	-- Material Gains
						["provider"] = { "n", 250888 },	-- Solwin Brightstitch
						["coord"] = { 46.9, 35.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(250919),	-- Empty Manasilk Bobbin (PQI!)
							i(251521),	-- Full Bobbin of Manasilk (QI!)
						},
					}),
					q(91389, {	-- Clothes Make the Man
						["sourceQuests"] = { 91388 },	-- Uncommon Threads
						["provider"] = { "n", 250888 },	-- Solwin Brightstitch
						["coord"] = { 46.9, 35.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(258127) },	-- Pattern: Silvermoon Curtains (RECIPE!)
					}),
				}),
				header(HEADERS.AchCriteria, 61957.09, {	-- Blinding Sun
					q(87399, {	-- Facing the Sun
						["sourceQuests"] = { 86745 },	--	Silvermoon Must Know
						["provider"] = { "n", 238083 },	-- Farstrider Sedina
						["coord"] = { 50.5, 78.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(87400, {	-- Scattered in Sunbeams
						["sourceQuests"] = { 87399 },	-- Facing the Sun
						["provider"] = { "n", 238083 },	-- Farstrider Sedina
						["coord"] = { 50.5, 78.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(87401, {	-- Gardener Mishap
						["sourceQuests"] = { 87399 },	-- Facing the Sun
						["provider"] = { "n", 238084 },	-- Harris Lightsbreath
						["coord"] = { 50.5, 78.1, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(238677) },	-- Humming Core (QI!)
					}),
					q(87402, {	-- The Light Provides
						["sourceQuests"] = {
							87401,	-- Gardener Mishap
							87400,	-- Scattered in Sunbeams
						},
						["provider"] = { "n", 238084 },	-- Harris Lightsbreath
						["coord"] = { 50.5, 78.1, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(246441),	-- Humming Core (PQI!)
							--
							i(263331),	-- Lignified Helmet
							i(263326),	-- Mirveda's Sunhat
							i(263328),	-- Sanctum Keeper's Hood
							i(263327),	-- Spore-Laden Covering
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61957.10, {	-- Runestone Rumbles
					q(92396, {	-- Calling in the Cavalry
						["sourceQuests"] = { 86735 },	-- Paved in Ash
						["provider"] = { "n", 250791 },	-- Terel Bloodfate
						["coord"] = { 50.1, 34.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(92397, {	-- Dawnstar Defense
						["sourceQuests"] = { 92396 },	-- Calling in the Cavalry
						["provider"] = { "n", 250798 },	-- Alesil Dawnblood
						["coord"] = { 61.7, 62.9, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(92398, {	-- And Then They Came
						["sourceQuests"] = { 92397 },	-- Dawnstar Defense
						["provider"] = { "n", 250798 },	-- Alesil Dawnblood
						["coord"] = { 61.7, 62.9, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
				}),
				header(HEADERS.AchCriteria, 61957.11, {	-- Paladin Rescue
					q(90546, {	-- Missing Paladins
						["provider"] = { "n", 242803 },	-- Taelia Fordragon
						["coord"] = { 53.2, 69.6, MAP.MIDNIGHT.SILVERMOON_CITY },
						["races"] = ALLIANCE_ONLY,
						["lvl"] = 90,
					}),
					q(90547, {	-- Missing Paladins
						["provider"] = { "n", 242802 },	-- Salandria
						["coord"] = { 53.2, 69.7, MAP.MIDNIGHT.SILVERMOON_CITY },
						["races"] = HORDE_ONLY,
						["lvl"] = 90,
					}),
					q(90548, {	-- Twilight Missive
						["sourceQuests"] = {
							90546,	-- Missing Paladins
							90547,	-- Missing Paladins
						},
						["provider"] = { "n", 242890 },	-- Salandria
						["coord"] = { 44.1, 67.0, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(244844), }	-- Twilight's Blade Missive (QI!)
					}),
					q(90549, {	-- Signs of the Struggle
						["sourceQuests"] = {
							90546,	-- Missing Paladins
							90547,	-- Missing Paladins
						},
						["provider"] = { "n", 242889 },	-- Taelia Fordragon
						["coord"] = { 44.0, 67.0, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(90550, {	-- A Somber Sun
						["sourceQuests"] = {
							90546,	-- Missing Paladins
							90547,	-- Missing Paladins
						},
						["provider"] = { "n", 242811 },	-- Crusader Sombersun
						["coord"] = { 43.3, 69.8, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(90551, {	-- Captured Information
						["sourceQuests"] = {
							90548,	-- Twilight Missive
							90549,	-- Signs of the Struggle
							90550,	-- A Somber Sun
						},
						["provider"] = { "n", 242890 },	-- Salandria
						["coord"] = { 44.1, 67.0, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(90552, {	-- Interrogation
						["sourceQuests"] = { 90551 },	-- Captured Information
						["provider"] = { "n", 242893 },	-- Salandria
						["coord"] = { 41.6, 72.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(90570, {	-- To the Ruins of Deatholme
						["sourceQuests"] = { 90552 },	-- Interrogation
						["provider"] = { "n", 242894 },	-- Taelia Fordragon
						["coord"] = { 41.6, 72.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(90555, {	-- Blessing of Freedom
						["sourceQuests"] = { 90570 },	-- To the Ruins of Deatholme
						["provider"] = { "n", 242898 },	-- Taelia Fordragon
						["coord"] = { 44.4, 81.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(90553, {	-- Executing the Blades
						["sourceQuests"] = { 90570 },	-- To the Ruins of Deatholme
						["provider"] = { "n", 242897 },	-- Salandria
						["coord"] = { 44.4, 81.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(90554, {	-- Leave Ashes in Your Wake
						["sourceQuests"] = { 90570 },	-- To the Ruins of Deatholme
						["provider"] = { "n", 242897 },	-- Salandria
						["coord"] = { 44.4, 81.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(90556, {	-- Cutting off the Head
						["sourceQuests"] = {
							90553,	-- Executing the Blades
							90554,	-- Leave Ashes in Your Wake
							90555,	-- Blessing of Freedom
						},
						["provider"] = { "n", 245944 },	-- Salandria (mobileNPC)
						["coord"] = { 44.4, 81.2, MAP.MIDNIGHT.EVERSONG_WOODS },	-- Vignette location
						["groups"] = {
							i(263374),	-- Archivist's Epaulets
							i(263375),	-- Cultist's Shoulderpads
							i(263378),	-- Dawnheart Pauldrons
							i(263376),	-- Flaresong's Shoulderguards
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61957.12, {	-- How to Train Your Progege
					q(94393, {	-- Career Counseling
						["sourceQuests"] = { 86735 },	-- Paved in Ash
						["provider"] = { "n", 245285 },	-- Instructor Thalendir
						["coord"] = { 33.2, 74.1, MAP.MIDNIGHT.SILVERMOON_CITY },
						["isBreadcrumb"] = true,
					}),
					q(91284, {	-- A Path Not Yet Chosen
						["sourceQuests"] = { 94393 },	-- Career Counseling
						["provider"] = { "n", 245192 },	-- Kyltus Bloodburn
						["coord"] = { 42.6, 14.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(91288, {	-- A Test of the Hunt
						["sourceQuests"] = { 91284 },	-- A Path Not Yet Chosen (TODO: ??)
						["provider"] = { "n", 245202 },	-- Ranger Hannovia
						["coord"] = { 42.2, 13.3, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(246166),	-- Farstrider Recommendation (QI!)
							i(246153),	-- Invasive Lynx Pelt (QI!)
						},
					}),
					q(91291, {	-- A Test of Blood
						["sourceQuests"] = { 91284 },	-- A Path Not Yet Chosen (TODO: ??)
						["provider"] = { "n", 245200 },	-- Jesthenis Sunstriker
						["coord"] = { 43.0, 13.8, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(246167) },	-- Blood Knight Recommendation (QI!)
					}),
					q(91292, {	-- A Test of the Arcane
						["sourceQuests"] = { 91284 },	-- A Path Not Yet Chosen (TODO: ??)
						["provider"] = { "n", 245201 },	-- Magister Jaronis
						["coord"] = { 43.2, 14.7, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(244539),	-- Arcane Transfer Staff (QI!)
							i(246168),	-- Magister Recommendation (QI!)
						},
					}),
					q(91301, {	-- How to Train Your Protege
						["sourceQuests"] = { 91284 },	-- A Path Not Yet Chosen
						["provider"] = { "n", 246557 },	-- Kyltus Bloodburn
						["coord"] = { 42.6, 14.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(263353),	-- Blood Knight's Cover
							i(263352),	-- Cowl of the Farstriders
							i(263349),	-- Magister's Shawl
							i(263351),	-- Trainee's Cape
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61957.13, {	-- Scootin' Through Silvermoon
					q(92729, {	-- Hounded and Hassled
						["sourceQuests"] = { 86735 },	-- Paved in Ash
						["provider"] = { "n", 252500 },	-- Ranger Telenus
						["coord"] = { 35.7, 69.0, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(92728, {	-- Dogged Disturbances
						["sourceQuests"] = { 92729 },	-- Hounded and Hassled
						["provider"] = { "n", 253015 },	-- Magistrix Zaedana
						["coord"] = { 35.4, 57.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(92868, {	-- He Went Thataway
						["sourceQuests"] = { 92728 },	-- Dogged Disturbances
						["provider"] = { "n", 253015 },	-- Magistrix Zaedana
						["coord"] = { 35.4, 57.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(92869, {	-- Fishy Dis-pondencies
						["sourceQuests"] = { 92868 },	-- He Went Thataway
						["provider"] = { "n", 253468 },	-- Drathen
						["coord"] = { 44.8, 60.4, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(92870, {	-- Scoot Along Now
						["sourceQuests"] = { 92869 },	-- Fishy Dis-pondencies
						["provider"] = { "n", 253468 },	-- Drathen
						["coord"] = { 44.8, 60.4, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = { i(267456) },	-- Lil' Scoots' Pillow (TOY!)
					}),
				}),
				header(HEADERS.AchCriteria, 61957.14, {	-- Aspiring Academic
					q(94396, {	-- Down a Peg
						["sourceQuests"] = { 86735 },	-- Paved in Ash
						["provider"] = { "n", 245285 },	-- Instructor Thalendir
						["coord"] = { 33.2, 74.1, MAP.MIDNIGHT.SILVERMOON_CITY },
						["isBreadcrumb"] = true,
					}),
					q(86997, {	-- Spellbook Scuffle
						["sourceQuests"] = { 94396 },	-- Down a Peg
						["provider"] = { "n", 237873 },	-- Tytalor Goldenblade
						["coord"] = { 39.4, 17.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(516363, {	-- Sedated Spellbook
								i(235808),	-- Torn Spellbook Page (QI!)
							}),
						},
					}),
					q(86998, {	-- Training Arc
						["sourceQuests"] = { 86997 },	-- Spellbook Scuffle
						["provider"] = { "n", 237904 },	-- Tytalor Goldenblade
						["coord"] = { 37.4, 18.7, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(87002, {	-- Academic Aspirations
						["sourceQuests"] = { 86998 },	-- Training Arc
						["provider"] = { "n", 237905 },	-- Tytalor Goldenblade
						["coord"] = { 38.5, 18.7, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(263324),	-- Tytalor's Discarded Chain
							i(263325),	-- Tytalor's Least Favorite Necklace
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61957.15, {	-- The Drinking Debt
					q(87455, {	-- Trials and Tabulations
						["sourceQuests"] = { 86735 },	-- Paved in Ash
						["provider"] = { "n", 238730 },	-- Tarenar Sunstrike
						["coord"] = { 57.6, 68.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(87456, {	-- Souvenirs Scattered
						["sourceQuests"] = { 87455 },	-- Trials and Tabulations
						["provider"] = { "n", 238732 },	-- Gidwin Goldbraids
						["coord"] = { 33.4, 89.4, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							o(519235, {	-- Art and Architecture of Silvermoon: Vol. 3
								["coord"] = { 33.7, 90.2, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = { i(237164) },	-- Art and Architecture of Silvermoon: Vol. 3 (QI!)
							}),
							o(519240, {	-- Nondescript Bottle of Water
								["coord"] = { 33.6, 89.7, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = { i(237166) },	-- Nondescript Bottle of Water (QI!)
							}),
							o(519237, {	-- Satchel of Herbs
								["coord"] = { 33.0, 89.2, MAP.MIDNIGHT.SILVERMOON_CITY },
								["groups"] = { i(237165) },	-- Satchel of Herbs (QI!)
							}),
						},
					}),
					q(87457, {	-- What We Do Best
						["sourceQuests"] = { 87455 },	-- Trials and Tabulations
						["provider"] = { "n", 238732 },	-- Gidwin Goldbraids
						["coord"] = { 33.4, 89.4, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = { i(237167) },	-- Antique Necklace (QI!)
					}),
					q(87458, {	-- Debts Paid
						["sourceQuests"] = {
							87456,	-- Souvenirs Scattered
							87457,	-- What We Do Best
						},
						["provider"] = { "n", 238748 },	-- Gidwin Goldbraids
						["coord"] = { 33.3, 90.4, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							i(263437),	-- Gidwin's Tarnished Ring
							i(263438),	-- Tarenar's Dusty Loop
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61957.16, {	-- Theft Tracking
					q(94388, {	-- Second Time's a Choice
						["sourceQuests"] = { 86735 },	-- Paved in Ash
						["provider"] = { "n", 257426 },	-- Instructor Antheol
						["coord"] = { 44.5, 45.4, MAP.MIDNIGHT.EVERSONG_WOODS },
						["isBreadcrumb"] = true,
					}),
					q(88977, {	-- Reenact the Crime
						["sourceQuests"] = { 94388 },	-- Second Time's a Choice
						["provider"] = { "n", 240403 },	-- Magister Meledor
						["coord"] = { 41.1, 38.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(238730),	-- Arcane Timepiece (PQI!)
							i(240962),	-- Chewed-Up Letter of Devotion (QI!)
							i(240946),	-- Digested Object (QI!)
							i(240965),	-- Half Eaten Diplomatic Letter (QI!)
							i(240964),	-- Mangled Scroll of Elven Etiquette (QI!)
							i(240961),	-- Partially Digested Lor'themar Portrait Necklace (QI!)
							i(240963),	-- Soggy Copy of 'Magic and You: An Arcane Awakening" (QI!)
						},
					}),
					q(88978, {	-- Tracking the Trail
						["sourceQuests"] = { 94388 },	-- Second Time's a Choice
						["provider"] = { "n", 240408 },	-- Ranger Vardis
						["coord"] = { 41.1, 38.5, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(88979, {	-- Caught Red Handed
						["sourceQuests"] = {
							88977,	-- Reenact the Crime
							88978,	-- Tracking the Trail
						},
						["provider"] = { "n", 240422 },	-- Magister Meledor
						["coord"] = { 38.5, 39.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(526810, {	-- Missing Journal
								["coord"] = { 38.1, 39.2, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(241192) },	-- Chewed-Up Journal (QI!)
							}),
						},
					}),
					q(90544, {	-- Thief at Bark
						["sourceQuests"] = { 88979 },	-- Caught Red Handed
						["provider"] = { "n", 242688 },	-- Luma
						["coord"] = { 39.9, 39.3, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(262999) },	-- Luma (PET!)
					}),
				}),
				header(HEADERS.AchCriteria, 61957.17, {	-- Daggerspine Landing
					q(94370, {	-- Slithering Closer
						["sourceQuests"] = { 90494 },	-- The Missing Magister
						["provider"] = { "n", 257393 },	-- Fern Shadestar
						["coord"] = { 37.3, 73.9, MAP.MIDNIGHT.EVERSONG_WOODS },
						["isBreadcrumb"] = true,
					}),
					q(91493, {	-- Not What I Ordered
						["sourceQuests"] = { 94370 },	-- Slithering Closer
						["provider"] = { "n", 247503 },	-- Hathvelion Sungaze
						["coord"] = { 39.0, 61.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(556758, {	-- Intercepted Shipment
								["coord"] = { 38.9, 61.4, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(246910) },	-- Vintage Vintage (QI!)
							}),
							o(556759, {	-- Intercepted Shipment
								["coord"] = { 38.9, 61.5, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(246913) },	-- Magical Mango (QI!)
							}),
							o(556760, {	-- Intercepted Shipment
								["coord"] = { 38.9, 61.4, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(246912) },	-- Unstable Arcana (QI!)
							}),
							o(556761, {	-- Intercepted Shipment
								["coord"] = { 38.9, 61.5, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(246914) },	-- Perfectly Fine Grain (QI!)
							}),
							o(556762, {	-- Intercepted Shipment
								["coord"] = { 38.9, 61.4, MAP.MIDNIGHT.EVERSONG_WOODS },
								["groups"] = { i(246911) },	-- Discarded Wand (QI!)
							}),
						},
					}),
					q(91505, {	-- Daggers in My Spine
						["sourceQuests"] = { 91493 },	-- Not What I Ordered
						["provider"] = { "n", 247503 },	-- Hathvelion Sungaze
						["coord"] = { 39.0, 61.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(91494, {	-- One Elf's Trash, Another Elf's Treasure
						["sourceQuests"] = { 91493 },	-- Not What I Ordered
						["provider"] = { "n", 250298 },	-- Numia Golden
						["coord"] = { 39.0, 61.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = { i(247593) },	-- Borrowed Wand (PQI!)
					}),
					q(91495, {	-- Familiar Faces In Peril
						["sourceQuests"] = { 91493 },	-- Not What I Ordered
						["provider"] = { "n", 250291 },	-- Ranger Krenn'an
						["coord"] = { 39.0, 61.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(91504, {	-- Arcane Amassing
						["sourceQuests"] = {
							91505,	-- Daggers in My Spine
							91495,	-- Familiar Faces In Peril
							91494,	-- One Elf's Trash, Another Elf's Treasure
						},
						["providers"] = {
							{ "n", 247503 },	-- Hathvelion Sungaze
							{ "n", 250388 },	-- Hathvelion Sungaze
						},
						["coord"] = { 39.0, 61.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(247753),	-- Empowered Wand (PQI!)
							--
							i(263344),	-- Eversong Farstrider's Ring Mail
							i(263345),	-- Goldenmist Defender's Chestplate
							i(263334),	-- Goldenmist Noble's Robes
							i(263343),	-- Snapdragon Tunic
						},
					}),
				}),
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.EVERSONG_WOODS, {
			n(QUESTS, {
				q(93818),	-- After turning in The Line Must be Drawn Here (86710)
			}),
		}),
	}),
}));
