---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.EVERSONG_WOODS, {
		n(QUESTS, {
			header(HEADERS.Achievement, 41802, {	-- Eversong Woods
				header(HEADERS.AchCriteria, 41802.01, {	-- Whispers in the Twillight
					q(86737, {	-- Fair Breeze, Light Bloom
						["sourceQuests"] = { 86735 },	-- Paved in Ash
						["provider"] = { "n", 235787 },	-- Lor'themar Theron
						["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							i(248044),	-- Reluctant Diplomat's Bracers
							i(248042),	-- Reluctant Diplomat's Cuffs
							i(248043),	-- Reluctant Diplomat's Vambraces
							i(248045),	-- Reluctant Diplomat's Wraps
						},
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
							i(248041),	-- Girdle of Herbicide
							i(248039),	-- Sash of Herbicide
							i(248040),	-- Waistguard of Herbicide
						},
					}),
					q(86745, {	-- Silvermoon Must Know
						["sourceQuests"] = { 86744 },	-- Seeking Truth
						["provider"] = { "n", 236716 },	-- Arator
						["coord"] = { 47.3, 55.4, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
						},
					}),
				}),
				header(HEADERS.AchCriteria, 41802.02, {	-- Shadowfall
					q(86621, {	-- The Wayward Magister
						["sourceQuests"] = { 86745 },	-- Silvermoon Must Know
						["provider"] = { "n", 236716 },	-- Arator
						["coord"] = { 47.3, 55.4, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(528310, {	-- Mysterious Corpse
								i(239496),	-- Despoiled Notes (QI!)
							}),
						},
					}),
					------ Stay awhile and listen ------
					hqt(91078, {	-- Stay awhile and listen: Orweyna
						["name"] = "Stay awhile and listen: Orweyna",
						["description"] = "Dialogue becomes available during 'The Wayward Magister' (86621).",
						["sourceQuests"] = { 86745 },	-- Silvermoon Must Know
						["provider"] = { "n", 236903 },	-- Orweyna
						["coord"] = { 47.4, 55.3, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86623, {	-- Appeal to the Void
						["sourceQuests"] = { 86621 },	-- The Wayward Magister
						["provider"] = { "n", 236087 },	-- Magister Umbric
						["coord"] = { 47.7, 69.8, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(251883),	-- Umbric's Channeling Focus
						},
					}),
					q(86624, {	-- Rational Explanation
						["sourceQuests"] = { 86621 },	-- The Wayward Magister
						["provider"] = { "n", 236100 },	-- Arator
						["coord"] = { 47.7, 69.7, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
						},
					}),
					q(90907, {	-- The First to Know
						["sourceQuests"] = {
							86623,	-- Appeal to the Void
							86624,	-- Rational Explanation
						},
						["provider"] = { "n", 236087 },	-- Magister Umbric
						["coord"] = { 47.7, 69.8, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
						},
					}),
					q(86622, {	-- Chance Meeting
						["sourceQuests"] = { 90907 },	-- The First to Know
						["provider"] = { "n", 245004 },	-- Lord Antenorian
						["coord"] = { 47.2, 68.2, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(248049),	-- Eversong Chain
							i(243221),	-- Suspicious Missive (QI!)
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
					}),
					q(90509, {	-- The Traitors of Tranquillien
						["sourceQuests"] = { 86626 },	-- The Ransacked Lab
						["provider"] = { "n", 236686 },	-- Arator
						["coord"] = { 47.7, 69.7, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(248064),	-- Fallen Matron's Mace
							i(248065),	-- Gavel of the Unjust
							i(248066),	--
							i(248069),	-- Traitorous Acolyte's Blade
							i(248072),	--
							i(248074),	--
							i(248077),	--
							i(248084),	--
							i(250355),	-- Twilight Agitator's Stave
							i(250356),	--
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
							i(248051),	-- Corrupted Twilight Cowl
							i(243468),	-- Jeweled Key (QI!)
							i(248052),	-- Shroud of Treachery
							i(243478),	-- Spare Pamphlets TODO: into uncollectible?
							o(542854, {	-- Ominous Lockbox ->
								i(239134),	-- Plans of Infiltration (QI!)
							}),
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
						["coord"] = { 44.7, 85.2, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(253153),	-- Stolen Knowledge (QI!)
							i(248036),	-- Twilight Tamer's Mantle
							i(248035),	-- Twilight Tamer's Pauldrons
							i(248034),	-- Twilight Tamer's Shoulderpads
							i(248037),	-- Twilight Tamer's Spaulders
						},
					}),
				}),
				header(HEADERS.AchCriteria, 41802.03, {	-- Ripple Effects
					q(86637, {	-- Anything but Reprieve
						["sourceQuests"] = { 86636 },	-- Void Walk With Me
						["provider"] = { "n", 242433 },	-- Arator
						["coord"] = { 44.6, 85.3, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86638, {	-- Choking Tendrils
						["sourceQuests"] = { 86637 },	-- Anything but Reprieve
						["provider"] = { "n", 236132 },	-- Arator
						["coord"] = { 52.6, 61.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86639, {	-- What's Left
						["sourceQuests"] = { 86637 },	-- Anything but Reprieve
						["provider"] = { "n", 236099 },	-- Lady Liadrin
						["coord"] = { 52.7, 61.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(248057),	-- Bloomtrimmer's Wrap]
							i(248058),	-- Suncrown Savior's Drape
						},
					}),
					q(86640, {	-- Premonition
						["sourceQuests"] = {
							86638,	-- Choking Tendrils
							86639,	-- What's Left
						},
						["provider"] = { "n", 236572 },	-- Lor'themar Theron
						["coord"] = { 53.5, 54.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(86642, {	-- A Foe Unseen
						["sourceQuests"] = { 86640 },	-- Premonition
						["provider"] = { "n", 236567 },	-- Arator
						["coord"] = { 59.1, 51.0, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(525307, {	-- Shipment Crate
								i(244469),	-- Lightbloom Axe (QI!)
							}),
						},
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
						["coord"] = { 54.8, 65.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(244144),	-- Bloodvein Clot (QI!)
							i(244143),	-- Bonecarapace Fangs (QI!)
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
						["provider"] = { "n", 240062 },	-- Arator (mobileNPC)
						["groups"] = {
							i(248080),	--
							i(250470),	--
							i(250471),	-- Enchanted Crypt Battlestaff
							i(250472),	-- Enchanted Crypt Stave
							i(250473),	--
							i(250474),	--
							i(250475),	-- Enchanted Crypt Sword
							i(250476),	--
							i(250477),	--
							i(250478),	-- Enchanted Crypt Hatchet
							i(250479),	-- Enchanted Crypt Cleaver
							i(250480),	-- Enchanted Crypt Fetish
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
						["groups"] = {
						},
					}),
					q(86650, {	-- Fractured
						["sourceQuests"] = { 86649 },	-- Past Redemption
						["provider"] = { "n", 237433 },	-- Lor'themar Theron
						["coord"] = { 60.6, 81.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							--spell(1251016),	-- Silvermoon Wartable (not really NYI but seems to be lead only in 1 quest chain atm)
						},
					}),
				}),
			}),
			--TODO: Sojourner of Eversong Woods missing (or not visible to client side) in 63534 build
			--header(HEADERS.Achievement, xx, {	-- Sojourner of Eversong Woods
				--header(HEADERS.AchiCriteria, xx.xx, {	-- ?
					-- Are silvermoon stuff consider as Eversongwood?
					q(91386, {	-- Mad to Measure
						--["sourceQuests"] = { xx },	-- TODO: intro quest, when swapping Isle map?
						["provider"] = { "n", 247645 },	-- Solwin Brightstitch
						["coord"] = { 48.4, 54.5, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(92408, {	-- Material Gains
						["sourceQuests"] = { 91386 },	-- Mad to Measure
						["provider"] = { "n", 247645 },	-- Solwin Brightstitch
						["coord"] = { 48.9, 55.0, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(91388, {	-- Uncommon Threads
						["sourceQuests"] = { 92408 },	-- Material Gains
						["provider"] = { "n", 250888 },	-- Solwin Brightstitch
						["coord"] = { 46.9, 35.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(250919),	-- Empty Manasilk Bobbin (QI!)
							i(251521),	-- Full Bobbin of Manasilk (QI!)
						},
					}),
					q(91389, {	-- Clothes Make the Man
						["sourceQuests"] = { 91388 },	-- Uncommon Threads
						["provider"] = { "n", 250888 },	-- Solwin Brightstitch
						["coord"] = { 46.9, 35.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(258127),	-- Pattern: Blood Elf Drapery (RECIPE!)
						},
					}),
					---
					---TODO: move to delve in future?
					q(93384, {	-- Delver's Call: Collegiate Calamity
						--["sourceQuests"] = { xx },	-- xx
						--["provider"] = { "o", XX },	-- Agitated Tome
						["coord"] = { 41.7, 61.4, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(90669, {	-- Gold is Gold
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 243290 },	-- Sarvi
						["coord"] = { 54.5, 61.5, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(89199, {	-- A Small Task
						["sourceQuests"] = { 90669 },	-- Gold is Gold
						["provider"] = { "n", 241393 },	-- Magister Aradis
						["coord"] = { 54.0, 34.1, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							o(527218, {	--
								i(239511),	-- Depleted Wardbreaker (QI!)
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
						--["provider"] = { "n", XX },	-- XX
						["coord"] = { 37.4, 74.3, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							o(527240, {	--
								i(239608),	-- Incriminating Documents (QI!)
							}),
						},
					}),
					q(89202, {	-- Stir the Nest
						["sourceQuests"] = { 89201 },	-- Outschemed
						["provider"] = { "n", 241398 },	-- Magister Dawnblaze
						["coord"] = { 38.8, 75.6, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							i(259992),	-- Duplicate Documents (QI!)
						},
					}),
					q(89203, {	-- Mutual Benefit
						["sourceQuests"] = { 89202 },	-- Stir the Nest
						["provider"] = { "n", 241399 },	-- Jaeth
						["coord"] = { 51.9, 63.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(89204, {	-- Five Finger Discount
						["sourceQuests"] = { 89203 },	-- Mutual Benefit
						["provider"] = { "n", 241399 },	-- Jaeth
						["coord"] = { 51.9, 63.8, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							o(527364, {	--
								i(241205),	-- Thrumming Amulet (QI!)
							}),
							o(527363, {	--
								i(241208),	-- Basket of Spell Reagents (QI!)
							}),
							o(527365, {	--
								i(241207),	-- Arcane Sword (QI!)
							}),
						},
					}),
					q(89205, {	-- Cutting a Key
						["sourceQuests"] = { 89204 },	-- Five Finger Discount
						["provider"] = { "n", 241401 },	-- Jaeth
						["coord"] = { 50.8, 61.1, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							o(531508, {	--
								i(242253),	-- Recharged Wardbreaker (QI!)
							}),
						},
					}),
					q(89206, {	-- Break and Enter
						["sourceQuests"] = { 89205 },	-- Cutting a Key
						["provider"] = { "n", 241402 },	-- Jaeth
						["coord"] = { 54.2, 33.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(89207, {	-- Rats Can Bite
						["sourceQuests"] = { 89206 },	-- Break and Enter
						["provider"] = { "n", 241403 },	-- Jaeth
						["coord"] = { 54.3, 33.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(89208, {	-- What We're Owed
						["sourceQuests"] = { 89207 },	-- Rats Can Bite
						["provider"] = { "n", 241404 },	-- Jaeth
						["coord"] = { 53.0, 33.2, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					---
					q(90835, {	-- Rumors Abound
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 244493 },	-- Avara
						["coord"] = { 56.0, 63.6, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
						},
					}),
					q(90818, {	-- Loose Lips
						["sourceQuests"] = { 90835 },	-- Rumors Abound
						["provider"] = { "n", 245418 },	-- Belath Dawnblade
						["coord"] = { 51.7, 64.2, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(90837, {	-- Traces of Fel
						["sourceQuests"] = { 90835 },	-- Rumors Abound
						["provider"] = { "n", 245418 },	-- Belath Dawnblade
						["coord"] = { 51.7, 64.2, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							o(539775, {	--
								i(243240),	-- Drained Wyrm Core (QI!)
							}),
							o(539772, {	--
								i(243237),	-- Bottled Fel Dust (QI!)
							}),
							o(539770, {	--
								i(243236),	-- Stained Worker's Shirt (QI!)
							}),
							o(539773, {	--
								i(243238),	-- Blackened Metal Fragment (QI!)
							}),
							o(539774, {	--
								i(243239),	-- Handwritten List (QI!)
							}),
						},
					}),
					q(90819, {	-- Acting the Part
						["sourceQuests"] = {
							90818,	-- Loose Lips
							90837,	-- Traces of Fel
						},
						["provider"] = { "n", 244443 },	-- Belath Dawnblade
						["coord"] = { 56.1, 56.7, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							i(244407),	-- Cracked Wyrm Core (QI!)
							i(253212),	-- Rogue's Signet (QI!)
							o(539728, {	--
								i(245566),	-- Fel Splinter (TODO: into uncollectible?)
								i(244528),	-- Shipping Manifest (QI!)
							}),
						},
					}),
					q(90821, {	-- Harbored Secrets
						["sourceQuests"] = { 90819 },	-- Acting the Part
						["provider"] = { "n", 244454 },	-- Belath Dawnblade
						["coord"] = { 54.5, 54.8, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							i(244547),	-- Folded Receipt (QI!)
						},
					}),
					q(90822, {	-- Murder Row: One Fel Swoop (TODO: dungeon quest)
						["sourceQuests"] = { 90821 },	-- Harbored Secrets
						["provider"] = { "n", 245297 },	-- Belath Dawnblade
						["coord"] = { 32.2, 26.0, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					---
					q(87455, {	-- Trials and Tabulations
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 238730 },	-- Tarenar Sunstrike
						["coord"] = { 57.6, 68.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(87456, {	-- Souvenirs Scattered
						["sourceQuests"] = { 87455 },	-- Trials and Tabulations
						["provider"] = { "n", 238732 },	-- Gidwin Goldbraids
						["coord"] = { 33.4, 89.4, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							o(519235, {
								i(237164),	-- Art and Architecture of Silvermoon: Vol. 3 (QI!)
							}),
							o(519240, {
								i(237166),	-- Nondescript Bottle of Water (QI!)
							}),
							o(519237, {
								i(237165),	-- Satchel of Herbs (QI!)
							}),
						},
					}),
					q(87457, {	-- What We Do Best
						["sourceQuests"] = { 87455 },	-- Trials and Tabulations
						["provider"] = { "n", 238732 },	-- Gidwin Goldbraids
						["coord"] = { 33.4, 89.4, MAP.MIDNIGHT.SILVERMOON_CITY },
						["groups"] = {
							i(237167),	-- Antique Necklace (QI!)
						},
					}),
					q(87458, {	-- Debts Paid
						["sourceQuests"] = {
							87456,	-- Souvenirs Scattered
							87457,	-- What We Do Best
						},
						["provider"] = { "n", 238748 },	-- Gidwin Goldbraids
						["coord"] = { 33.3, 90.4, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					---
					q(86997, {	-- Spellbook Scuffle
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 237873 },	-- Tytalor Goldenblade
						["coord"] = { 39.4, 17.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(516363, {	--
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
					}),
					---
					q(91284, {	-- A Path Not Yet Chosen
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 245192 },	-- Kyltus Bloodburn
						["coord"] = { 42.6, 14.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(246166),	-- Farstrider Recommendation (QI!)
							i(246167),	-- Blood Knight Recommendation (QI!)
							i(246168),	-- Magister Recommendation (QI!)
						},
					}),
					-- next 3 quest probably worth nesting into "groups" from quest above, since they are up only during it?
					q(91288, {	-- A Test of the Hunt
						--["sourceQuests"] = { 91284 },	-- A Path Not Yet Chosen (TODO: ??)
						["provider"] = { "n", 245202 },	-- Ranger Hannovia
						["coord"] = { 42.2, 13.3, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(246153),	-- Invasive Lynx Pelt (QI!)
						},
					}),
					q(91291, {	-- A Test of Blood
						--["sourceQuests"] = { 91284 },	-- A Path Not Yet Chosen (TODO: ??)
						["provider"] = { "n", 245200 },	-- Jesthenis Sunstriker
						["coord"] = { 43.0, 13.8, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(91292, {	-- A Test of the Arcane
						--["sourceQuests"] = { 91284 },	-- A Path Not Yet Chosen (TODO: ??)
						["provider"] = { "n", 245201 },	-- Magister Jaronis
						["coord"] = { 43.2, 14.7, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(244539),	-- Arcane Transfer Staff (QI!)
						},
					}),
					q(91301, {	-- How to Train Your Protege
						["sourceQuests"] = { 91284 },	-- A Path Not Yet Chosen
						["provider"] = { "n", 246557 },	-- Kyltus Bloodburn
						["coord"] = { 42.6, 14.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					---
					q(88977, {	-- Reenact the Crime
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 240403 },	-- Magister Meledor
						["coord"] = { 41.1, 38.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(238730),	-- Arcane Timepiece (QI!)
							i(240962),	-- Chewed-Up Letter of Devotion (QI!)
							i(240946),	-- Digested Object (QI!)
							i(240965),	-- Half Eaten Diplomatic Letter (QI!)
							i(240964),	-- Mangled Scroll of Elven Etiquette (QI!)
							i(240961),	-- Partially Digested Lor'themar Portrait Necklace (QI!)
							i(240963),	-- Soggy Copy of 'Magic and You: An Arcane Awakening" (QI!)
						},
					}),
					q(88978, {	-- Tracking the Trail
						--["sourceQuests"] = { xx },	-- xx
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
							o(526810, {
								i(241192),	-- Chewed-Up Journal (QI!)
							}),
						},
					}),
					q(90544, {	-- Thief at Bark
						["sourceQuests"] = { 88979 },	-- Caught Red Handed
						["provider"] = { "n", 242688 },	-- Luma
						["coord"] = { 39.9, 39.3, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					---
					q(87392, {	-- Cargo Conspiracy
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 238490 },	-- Lyssara Duskmourne
						["coord"] = { 46.9, 45.2, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(517146, {	--
								i(237722),	-- Abandoned Note (QI!)
							}),
						},
					}),
					q(87394, {	-- Supplier Surveillance
						["sourceQuests"] = { 87392 },	-- Cargo Conspiracy
						["provider"] = { "n", 238490 },	-- Lyssara Duskmourne
						["coord"] = { 46.9, 45.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(87393, {	-- Warranted Search
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
						["coord"] = { 39.5, 44.9, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(239022),	-- Elixir of the Sea's Bounty (QI!)
							o(520354, {	--
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
					}),
					---
					q(91493, {	-- Not What I Ordered
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 247503 },	-- Hathvelion Sungaze
						["coord"] = { 39.0, 61.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(556761, {	--
								i(246914),	-- Perfectly Fine Grain (QI!)
							}),
							o(556758, {	--
								i(246910),	-- Vintage Vintage (QI!)
							}),
							o(556760, {	--
								i(246912),	-- Unstable Arcana (QI!)
							}),
							o(556762, {	--
								i(246911),	-- Discarded Wand (QI!)
							}),
							o(556759, {	--
								i(246913),	-- Magical Mango (QI!)
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
						["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(247593),	-- Borrowed Wand (QI!)
						},
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
						["provider"] = { "n", 250388 },	-- Hathvelion Sungaze
						["coord"] = { 39.0, 61.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(247753),	-- Empowered Wand (QI!)
							i(250317),	-- Pile of Ash (TODO: into uncollectible?)
						},
					}),
					---
					q(92022, {	-- A Venomous Vocation
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 249337 },	-- Talandra Dawnsprite
						["coord"] = { 37.5, 72.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(253869),	-- Potent Mournbat Venom (QI!)
						},
					}),
					q(92021, {	-- Graveblossom Gardening
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 249337 },	-- Talandra Dawnsprite
						["coord"] = { 37.5, 72.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(568332, {
								i(249471),	-- Pristine Graveblossom (QI!)
							}),
						},
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
					}),
					---
					q(91271, {	-- A Fish!
						--Required fishing to complete it, but not to accept it.
						--["sourceQuests"] = { xx },	-- xx
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
							o(555383, {
								i(246364),	-- Belanise Blossom (QI!)
							}),
							o(555381, {
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
					}),
					---
					q(87399, {	-- Facing the Sun
						--["sourceQuests"] = { xx },	-- xx
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
						["groups"] = {
							i(238677),	-- Humming Core (QI!)
						},
					}),
					q(87402, {	-- The Light Provides
						["sourceQuests"] = {
							87401,	-- Gardener Mishap
							87400,	-- Scattered in Sunbeams
						},
						["provider"] = { "n", 238084 },	-- Harris Lightsbreath
						["coord"] = { 50.5, 78.1, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(246441),	-- Humming Core (QI!)
						},
					}),
					---
					q(91452, {	-- Range of Knowledge
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 246806 },	-- Arcanist Taemin
						["coord"] = { 57.4, 40.0, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(555830, {
 								i(254557),	-- Index of Ranger Corps Recipes vol. VII (QI!)
							}),
							o(555823, {
 								i(254558),	-- Herbalist's Handbook: Eversong Medicinals (QI!)
							}),
							o(555832, {
 								i(254559),	-- Songs for the Silver Streams (QI!)
							}),
						},
					}),
					q(91342, {	-- If You Want It Done Right
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 246806 },	-- Arcanist Taemin
						["coord"] = { 57.4, 40.0, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(91462, {	-- To the Central Tower
						["sourceQuests"] = {
							91342,	-- If You Want It Done Right
							91452,	-- Range of Knowledge
						},
						["provider"] = { "n", 246866 },	-- Captain Dawnrunner
						["coord"] = { 56.7, 40.8, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(91345, {	-- To the North Tower
						["sourceQuests"] = {
							91342,	-- If You Want It Done Right
							91452,	-- Range of Knowledge
						},
						["provider"] = { "n", 246866 },	-- Captain Dawnrunner
						["coord"] = { 56.7, 40.8, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					--North Tower
					q(91347, {	-- Strider Stampede
						["sourceQuests"] = { 91345 },	-- To the North Tower
						["provider"] = { "n", 247394 },	-- Ranger Valsarin
						["coord"] = { 49.7, 48.3, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(568505 , {	--
								i(249491),	-- Mysterious Bloom (QI!)
							}),
						},
					}),
					--TODO: there possible should be quest if north tower was last in chain?
					--Central Tower
					q(91348, {	-- See a Mana 'bout a Wyrm
						["sourceQuests"] = { 91462 },	-- To the Central Tower
						["provider"] = { "n", 247395 },	-- Ranger Asterae
						["coord"] = { 48.6, 57.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(568439, {
								i(249490),	-- Mysterious Bloom (QI!)
							}),
						},
					}),
					q(91463, {	-- To the South Tower
						["sourceQuests"] = {
							91347,	-- Strider Stampede
							91348,	-- See a Mana 'bout a Wyrm
						},
						["provider"] = { "n", 247395 },	-- Ranger Asterae
						["coord"] = { 48.6, 57.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						--TODO: this quest either up on both spot or specific when central was last?
					}),
					q(91349, {	-- The Dark Part of the Woods
						["sourceQuests"] = { 91463 },	-- To the South Tower
						["provider"] = { "n", 247500 },	-- Arcanist Taemin
						["coord"] = { 43.9, 75.5, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(248244),	-- Corruption Resonator (QI!)
							o(568515, {
								i(249492),	-- Mysterious Bloom (QI!)
							}),
						},
					}),
					q(91350, {	-- A Real Assignment
						["sourceQuests"] = { 91349 },	-- The Dark Part of the Woods
						["provider"] = { "n", 247500 },	-- Arcanist Taemin
						["coord"] = { 43.9, 75.5, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(91384, {	-- Recovery Mission
						["sourceQuests"] = { 91350 },	-- A Real Assignment
						["provider"] = { "n", 247593 },	-- Captain Dawnrunner
						["coord"] = { 59.4, 68.8, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(568254, {	--
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
					}),
					---
					q(89383, {	-- One Adventurous Hatchling
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 241553 },	-- Vaelith Sunplume
						["coord"] = { 56.8, 35.6, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(89384, {	-- A Hungry Flock
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 241553 },	-- Vaelith Sunplume
						["coord"] = { 56.8, 35.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(244214),	-- Juicy Frog Leg (QI!)
						},
					}),
					q(89386, {	-- A Roost-ed Development
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 241553 },	-- Vaelith Sunplume
						["coord"] = { 56.8, 35.6, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							o(547829, {	--
								i(245531),	-- Golden Sunleaf (QI!)
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
							i(244339),	-- Hawkstrider Egg (PET!)
						},
					}),
					---Runestone Rumbles
					q(92396, {	-- Calling in the Cavalry
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 250791 },	-- Terel Bloodfate
						["coord"] = { 50.1, 34.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(92397, {	-- And Then They Came
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 250798 },	-- Alesil Dawnblood
						["coord"] = { 61.7, 62.9, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					---Scootin' Through Silvermoon
					q(92729, {	-- Hounded and Hassled
						--["sourceQuests"] = { xx },	-- xx
						["provider"] = { "n", 252500 },	-- Ranger Telenus
						["coord"] = { 35.7, 69.0, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(92728, {	-- Dogged Disturbances
						["sourceQuests"] = { 92729 },	-- Hounded and Hassled
						["provider"] = { "n", 253015 },	-- Magistrix Zaedana
						["coord"] = { 35.4, 57.7, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(92868, {	-- He Went Thataway
						["sourceQuests"] = { 92728 },	-- Dogged Disturbances
						["provider"] = { "n", 253015 },	-- Magistrix Zaedana
						["coord"] = { 35.4, 57.7, MAP.MIDNIGHT.SILVERMOON_CITY },
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
				--}),
			--}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.EVERSONG_WOODS, {
			n(QUESTS, {
			}),
		}),
	}),
}));
